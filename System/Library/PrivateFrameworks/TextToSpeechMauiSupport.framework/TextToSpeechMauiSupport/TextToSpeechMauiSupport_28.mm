uint64_t stress_addWord(uint64_t a1, char *__s, __int16 a3, int a4, int a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 10);
  if (!*(a9 + 10))
  {
    v20 = heap_Calloc(*(a1 + 8), 1, 3201);
    *a9 = v20;
    if (v20)
    {
      v18 = v20;
      v130 = a3;
      v131 = a5;
      v19 = a8;
      *(a9 + 10) = 50;
      goto LABEL_8;
    }

LABEL_67:
    v51 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return v51;
  }

  v18 = *a9;
  if (*(a9 + 8) >= v17)
  {
    v21 = heap_Realloc(*(a1 + 8), *a9, (v17 << 6) + 1280);
    if (v21)
    {
      v130 = a3;
      v131 = a5;
      v19 = a8;
      *a9 = v21;
      cstdlib_memset((v21 + (*(a9 + 8) << 6)), 0, 0x500uLL);
      *(a9 + 10) += 20;
      v18 = *a9;
      goto LABEL_8;
    }

    goto LABEL_67;
  }

  v130 = a3;
  v131 = a5;
  v19 = a8;
LABEL_8:
  v22 = v18 + (*(a9 + 8) << 6);
  v23 = *(a1 + 8);
  v24 = cstdlib_strlen(__s);
  v25 = heap_Calloc(v23, 1, (v24 + 4));
  *v22 = v25;
  if (v25)
  {
    cstdlib_strcpy(v25, __s);
    v26 = *(a1 + 8);
    v27 = cstdlib_strlen(a6);
    v28 = heap_Calloc(v26, 1, (v27 + 1));
    *(v22 + 16) = v28;
    if (v28)
    {
      cstdlib_strcpy(v28, a6);
      v29 = *(a1 + 8);
      v30 = v19;
      v31 = cstdlib_strlen(v19);
      v32 = heap_Calloc(v29, 1, (v31 + 1));
      *(v22 + 24) = v32;
      if (v32)
      {
        cstdlib_strcpy(v32, v19);
        v33 = *(a7 + 8);
        *(v22 + 54) = v33;
        v34 = heap_Calloc(*(a1 + 8), v33, 32);
        *(v22 + 56) = v34;
        if (v34)
        {
          v123 = a4;
          if (!*(a7 + 8))
          {
LABEL_69:
            v135 = 0;
            *v134 = 0;
            v133 = 0;
            *v132 = 0;
            v63 = heap_Calloc(*(a1 + 8), 5, 40);
            *(v22 + 40) = v63;
            if (v63)
            {
              v64 = Utf8_Utf8NbrOfSymbols(*v22);
              v65 = 0;
              LOWORD(v66) = 0;
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v128 = v64 - 1;
              v71 = (v64 - 1);
              v121 = 5;
              v122 = v71;
              do
              {
                v72 = v66;
                UTF8Char = utf8_getUTF8Char(*v22, v66, v134);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_128;
                }

                if (v71 == v65 || v134[0] == 45)
                {
                  v74 = heap_Calloc(*(a1 + 8), 1, (v72 - v67 + 1));
                  v126 = v70;
                  *(*(v22 + 40) + 40 * v70) = v74;
                  if (!v74)
                  {
                    goto LABEL_129;
                  }

                  v124 = v67;
                  cstdlib_strncpy(v74, (*v22 + v67), (v72 - v67));
                  *(*(*(v22 + 40) + 40 * v70) + (v72 - v67)) = 0;
                  v75 = *(v22 + 40) + 40 * v70;
                  v137 = 0;
                  *__sa = 0;
                  v76 = Utf8_Utf8NbrOfSymbols(*v75);
                  v77 = v76 - 1;
                  v125 = v69;
                  if (v76 != 1)
                  {
                    v120 = v68;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    while (1)
                    {
                      v81 = v78;
                      UTF8Char = utf8_getUTF8Char(*v75, v78, __sa);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_128;
                      }

                      IsChineseLetter = utf8_IsChineseLetter(__sa);
                      v83 = isPunc(__sa);
                      if (!v79 && !IsChineseLetter && !v83)
                      {
                        v77 = 1;
LABEL_85:
                        v84 = v77 - v80;
                        v68 = v120;
                        goto LABEL_86;
                      }

                      v80 += v83;
                      v78 = v81 + cstdlib_strlen(__sa);
                      if (++v79 >= v77)
                      {
                        goto LABEL_85;
                      }
                    }
                  }

                  v84 = 0;
LABEL_86:
                  *(v75 + 32) = v84;
                  v85 = *(v22 + 40) + 40 * v70;
                  v86 = *(v85 + 32);
                  v87 = *v85;
                  v71 = v122;
                  v89 = 0;
                  if (*v85)
                  {
                    if (cstdlib_strlen(*v85))
                    {
                      v88 = cstdlib_strlen(v87);
                      if (cstdlib_strstr("',.:?!;()<>[]#$+-=^_|", &v87[v88 - 1]) || cstdlib_strstr("',.:?!;()<>[]#$+-=^_|", v87))
                      {
                        v89 = 1;
                      }
                    }
                  }

                  v90 = *(v22 + 40) + 40 * v70;
                  *(v90 + 16) = v89;
                  v91 = *(a1 + 8);
                  v92 = cstdlib_strlen(*v90);
                  v93 = heap_Calloc(v91, 1, (v92 + 4));
                  *(*(v22 + 40) + 40 * v70 + 24) = v93;
                  if (!v93)
                  {
                    goto LABEL_129;
                  }

                  *v93 = 0;
                  v94 = *(v22 + 40) + 40 * v70;
                  if (*(v94 + 16) == 1)
                  {
                    v95 = v68;
                    v137 = 0;
                    *__sa = 0;
                    v96 = Utf8_Utf8NbrOfSymbols(*v94);
                    if (v96 != 1)
                    {
                      v97 = 0;
                      v98 = 0;
                      v99 = (v96 - 1);
                      while (1)
                      {
                        v100 = v97;
                        UTF8Char = utf8_getUTF8Char(*v94, v97, __sa);
                        if ((UTF8Char & 0x80000000) != 0)
                        {
                          break;
                        }

                        v101 = isPunc(__sa);
                        v102 = utf8_IsChineseLetter(__sa);
                        if (!v98 && !v102 && !v101)
                        {
                          v103 = *(v94 + 24);
                          v104 = *v94;
                          v105 = cstdlib_strlen(*v94);
                          cstdlib_strncpy(v103, v104, (v105 - 1));
                          goto LABEL_106;
                        }

                        if (!v101)
                        {
                          cstdlib_strcat(*(v94 + 24), __sa);
                        }

                        v97 = v100 + cstdlib_strlen(__sa);
                        if (++v98 >= v99)
                        {
                          goto LABEL_106;
                        }
                      }

LABEL_128:
                      v51 = UTF8Char;
                      goto LABEL_130;
                    }

LABEL_106:
                    v68 = v95;
                    v71 = v122;
                  }

                  else
                  {
                    cstdlib_strcpy(*(v94 + 24), *v94);
                  }

                  v69 = v86 + v125;
                  v67 = v124;
                  v70 = v126;
                  if (v134[0] == 45)
                  {
                    v70 = (v126 + 1);
                    if (v121 <= (v126 + 1))
                    {
                      v121 += 3;
                      v106 = heap_Realloc(*(a1 + 8), *(v22 + 40), 40 * v121);
                      if (!v106)
                      {
                        goto LABEL_129;
                      }

                      *(v22 + 40) = v106;
                      cstdlib_memset((v106 + 40 * (v126 + 1)), 0, 0x78uLL);
                    }
                  }
                }

                v66 = v72 + cstdlib_strlen(v134);
                if (v134[0] == 45)
                {
                  v67 = v66;
                }

                v65 = ++v68;
              }

              while (v68 <= v128);
              *(v22 + 50) = v121;
              *(v22 + 48) = v70 + 1;
              *(v22 + 52) = v69;
              v107 = Utf8_Utf8NbrOfSymbols(*(v22 + 16));
              v108 = 0;
              LOWORD(v109) = 0;
              v110 = 0;
              v111 = 0;
              v112 = 0;
              v129 = v107 - 1;
              v113 = (v107 - 1);
              while (1)
              {
                v114 = v109;
                v51 = utf8_getUTF8Char(*(v22 + 16), v109, v132);
                if ((v51 & 0x80000000) != 0)
                {
                  break;
                }

                if (v113 == v108 || v132[0] == 45)
                {
                  v115 = heap_Calloc(*(a1 + 8), 1, (v114 - v110 + 1));
                  *(*(v22 + 40) + 40 * v112 + 8) = v115;
                  if (!v115)
                  {
                    goto LABEL_129;
                  }

                  cstdlib_strncpy(v115, (*(v22 + 16) + v110), (v114 - v110));
                  *(*(*(v22 + 40) + 40 * v112 + 8) + (v114 - v110)) = 0;
                  if (v132[0] == 45)
                  {
                    ++v112;
                  }
                }

                v109 = v114 + cstdlib_strlen(v132);
                if (v132[0] == 45)
                {
                  v110 = v109;
                }

                v108 = ++v111;
                if (v111 > v129)
                {
                  if (!cstdlib_strcmp(*(v22 + 24), "normal") || !cstdlib_strcmp(*(v22 + 24), "mnx"))
                  {
                    *(a9 + 12) += *(v22 + 52);
                  }

                  *(v22 + 8) = v130;
                  *(v22 + 10) = v123;
                  *(v22 + 32) = v123 == v131;
                  ++*(a9 + 8);
                  return v51;
                }
              }
            }

            else
            {
LABEL_129:
              v51 = 2315264010;
              log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
            }

LABEL_130:
            v116 = *(v22 + 40);
            if (v116)
            {
              if (*(v22 + 50))
              {
                v117 = 0;
                v118 = 0;
                v119 = *(v22 + 40);
                do
                {
                  if (v119)
                  {
                    if (*(v119 + v117))
                    {
                      heap_Free(*(a1 + 8), *(v119 + v117));
                      v116 = *(v22 + 40);
                      *(v116 + v117) = 0;
                    }

                    if (*(v116 + v117 + 8))
                    {
                      heap_Free(*(a1 + 8), *(v116 + v117 + 8));
                      v116 = *(v22 + 40);
                      *(v116 + v117 + 8) = 0;
                    }

                    v119 = v116;
                    if (*(v116 + v117 + 24))
                    {
                      heap_Free(*(a1 + 8), *(v116 + v117 + 24));
                      v116 = *(v22 + 40);
                      *(v116 + v117 + 24) = 0;
                      v119 = v116;
                    }
                  }

                  ++v118;
                  v117 += 40;
                }

                while (v118 < *(v22 + 50));
              }

              heap_Free(*(a1 + 8), v116);
              *(v22 + 40) = 0;
            }

            goto LABEL_37;
          }

          v35 = 0;
          v127 = v19;
          while (1)
          {
            v36 = *(a1 + 8);
            v37 = cstdlib_strlen(*(*a7 + 16 * v35));
            v38 = heap_Calloc(v36, 1, (v37 + 1));
            *(*(v22 + 56) + 32 * v35) = v38;
            if (!v38)
            {
              break;
            }

            cstdlib_strcpy(v38, *(*a7 + 16 * v35));
            v39 = *(a1 + 8);
            v40 = cstdlib_strlen(v30);
            v41 = heap_Calloc(v39, 1, (v40 + 1));
            *(*(v22 + 56) + 32 * v35 + 16) = v41;
            if (!v41)
            {
              break;
            }

            cstdlib_strcpy(v41, v30);
            v42 = heap_Calloc(*(a1 + 8), 1, 4);
            v43 = *(v22 + 56) + 32 * v35;
            *(v43 + 8) = v42;
            if (!v42)
            {
              break;
            }

            if (cstdlib_strcmp(*(v43 + 16), "normal") && cstdlib_strcmp(*(*(v22 + 56) + 32 * v35 + 16), "mnx"))
            {
              cstdlib_strcpy(*(*(v22 + 56) + 32 * v35 + 8), "=");
            }

            else
            {
              v44 = *(v22 + 56) + 32 * v35;
              v137 = 0;
              *__sa = 0;
              if (!cstdlib_strlen(*(v44 + 8)))
              {
                v45 = Utf8_Utf8NbrOfSymbols(*v44);
                if (v45 != 1)
                {
                  v46 = 0;
                  v47 = 0;
                  v48 = (v45 - 1);
                  while (1)
                  {
                    v49 = v46;
                    v50 = utf8_getUTF8Char(*v44, v46, __sa);
                    if ((v50 & 0x80000000) != 0)
                    {
                      break;
                    }

                    if (__sa[0] != 46)
                    {
                      if (cstdlib_strlen(__sa) <= 1 && __sa[0] - 54 >= 0xFFFFFFFA && cstdlib_strlen(*(v44 + 8)) <= 2)
                      {
                        cstdlib_strcat(*(v44 + 8), __sa);
                      }

                      v46 = v49 + cstdlib_strlen(__sa);
                      if (++v47 < v48)
                      {
                        continue;
                      }
                    }

                    goto LABEL_21;
                  }

                  v51 = v50;
                  if (v18)
                  {
                    goto LABEL_37;
                  }

                  return v51;
                }
              }

LABEL_21:
              if (!cstdlib_strlen(*(v44 + 8)))
              {
                cstdlib_strcpy(*(v44 + 8), "=");
              }

              v30 = v127;
            }

            *(*(v22 + 56) + 32 * v35++ + 24) = 0;
            if (v35 >= *(a7 + 8))
            {
              goto LABEL_69;
            }
          }
        }
      }
    }
  }

  v51 = 2315264010;
  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
LABEL_37:
  if (*v22)
  {
    heap_Free(*(a1 + 8), *v22);
    *v22 = 0;
  }

  v52 = *(v22 + 16);
  if (v52)
  {
    heap_Free(*(a1 + 8), v52);
    *(v22 + 16) = 0;
  }

  v53 = *(v22 + 24);
  if (v53)
  {
    heap_Free(*(a1 + 8), v53);
    *(v22 + 24) = 0;
  }

  v54 = *(v22 + 56);
  if (v54)
  {
    if (*(v22 + 54))
    {
      v55 = 0;
      v56 = 0;
      v57 = *(v22 + 56);
      do
      {
        if (v57)
        {
          if (*(v57 + v55))
          {
            heap_Free(*(a1 + 8), *(v57 + v55));
            v54 = *(v22 + 56);
            *(v54 + v55) = 0;
          }

          if (*(v54 + v55 + 16))
          {
            heap_Free(*(a1 + 8), *(v54 + v55 + 16));
            v54 = *(v22 + 56);
            *(v54 + v55 + 16) = 0;
          }

          v57 = v54;
          if (*(v54 + v55 + 8))
          {
            heap_Free(*(a1 + 8), *(v54 + v55 + 8));
            v54 = *(v22 + 56);
            *(v54 + v55 + 8) = 0;
            v57 = v54;
          }
        }

        ++v56;
        v55 += 32;
      }

      while (v56 < *(v22 + 54));
    }

    heap_Free(*(a1 + 8), v54);
    *(v22 + 56) = 0;
  }

  v58 = *(v22 + 40);
  if (v58)
  {
    if (*(v22 + 50))
    {
      v59 = 0;
      v60 = 0;
      v61 = *(v22 + 40);
      do
      {
        if (v61)
        {
          if (*(v61 + v59))
          {
            heap_Free(*(a1 + 8), *(v61 + v59));
            v58 = *(v22 + 40);
            *(v58 + v59) = 0;
          }

          if (*(v58 + v59 + 8))
          {
            heap_Free(*(a1 + 8), *(v58 + v59 + 8));
            v58 = *(v22 + 40);
            *(v58 + v59 + 8) = 0;
          }

          v61 = v58;
          if (*(v58 + v59 + 24))
          {
            heap_Free(*(a1 + 8), *(v58 + v59 + 24));
            v58 = *(v22 + 40);
            *(v58 + v59 + 24) = 0;
            v61 = v58;
          }
        }

        ++v60;
        v59 += 40;
      }

      while (v60 < *(v22 + 50));
    }

    heap_Free(*(a1 + 8), v58);
    *(v22 + 40) = 0;
  }

  return v51;
}

void *stat_stress_freeCandidatePhons(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v4 = result;
    v5 = *(a2 + 8);
    if (*(a2 + 8))
    {
      v6 = 0;
      v7 = 0;
      v8 = v3;
      do
      {
        if (v8)
        {
          if (*(v8 + v6))
          {
            heap_Free(v4[1], *(v8 + v6));
            v3 = *a2;
            *(v3 + v6) = 0;
            v5 = *(a2 + 8);
            v8 = v3;
          }
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < v5);
    }

    result = heap_Free(v4[1], v3);
    *a2 = 0;
  }

  return result;
}

BOOL isPunc(const char *a1)
{
  if (cstdlib_strlen(a1) > 1)
  {
    return 0;
  }

  v3 = *a1;
  result = 1;
  if ((v3 - 33) > 0x3E || ((1 << (v3 - 33)) & 0x740000007E003FCFLL) == 0)
  {
    return v3 == 124;
  }

  return result;
}

BOOL isERphon(unsigned __int8 *a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  v5 = v4;
  if (v4 < 2 || (v4 < 5 || cstdlib_strcmp(&__s[v4 - 5], "%~r")) && cstdlib_strcmp(&__s[v5 - 2], "%r"))
  {
    v6 = 0;
  }

  else
  {
    v7 = *__s;
    v6 = v7 != 97 && v7 != 36;
  }

  v10 = 0;
  utf8_Utf8CharTo16bit(a1, &v10);
  return v10 != 20799 && v6;
}

uint64_t fe_stress_igtr_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_1[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t fe_stress_feat_character(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, char *a7)
{
  v11 = a3;
  v43 = a4;
  v12 = cstdlib_strlen(*(*(*a2 + (a3 << 6) + 40) + 40 * a4));
  if (!a3)
  {
    v14 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v13 = 0;
  v14 = 0;
  v15 = *a2;
  do
  {
    if (*(v15 + (v13 << 6) + 48))
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v14 += cstdlib_strlen(*(*(v15 + (v13 << 6) + 40) + v16));
        ++v17;
        v15 = *a2;
        v16 += 40;
      }

      while (v17 < *(*a2 + (v13 << 6) + 48));
    }

    ++v13;
  }

  while (v13 != v11);
  if (a4)
  {
LABEL_10:
    v18 = 0;
    do
    {
      v14 += cstdlib_strlen(*(*(*a2 + (v11 << 6) + 40) + v18));
      v18 += 40;
    }

    while (40 * v43 != v18);
  }

LABEL_12:
  v19 = a3 + 1;
  v20 = *(a2 + 4);
  v21 = *a2;
  if (v20 <= (a3 + 1))
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = v19;
    do
    {
      if (*(v21 + (v23 << 6) + 48))
      {
        v24 = 0;
        v25 = 0;
        do
        {
          v22 += cstdlib_strlen(*(*(v21 + (v23 << 6) + 40) + v24));
          ++v25;
          v21 = *a2;
          v24 += 40;
        }

        while (v25 < *(*a2 + (v23 << 6) + 48));
        LOWORD(v20) = *(a2 + 4);
      }

      ++v23;
    }

    while (v23 < v20);
  }

  if (*(v21 + (v11 << 6) + 48) > (a4 + 1))
  {
    v26 = (a4 + 1);
    v27 = 40 * v26;
    do
    {
      v22 += cstdlib_strlen(*(*(v21 + (v11 << 6) + 40) + v27));
      ++v26;
      v21 = *a2;
      v27 += 40;
    }

    while (v26 < *(*a2 + (v11 << 6) + 48));
  }

  v28 = heap_Calloc(*(a1 + 8), 1, (v12 + v14 + v22 + 1));
  if (!v28)
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  v29 = v28;
  v30 = *(a2 + 4);
  v31 = *a2;
  if (*(a2 + 4))
  {
    v32 = 0;
    do
    {
      if (*(v31 + (v32 << 6) + 48))
      {
        v33 = 0;
        v34 = 0;
        do
        {
          cstdlib_strcat(v29, *(*(v31 + (v32 << 6) + 40) + v33));
          ++v34;
          v31 = *a2;
          v33 += 40;
        }

        while (v34 < *(*a2 + (v32 << 6) + 48));
        v30 = *(a2 + 4);
      }

      ++v32;
    }

    while (v32 < v30);
  }

  v35 = v31 + (v11 << 6);
  if (*(v35 + 48) <= a4 || cstdlib_strlen(*(*(v35 + 40) + 40 * v43)) <= a5)
  {
    goto LABEL_45;
  }

  NextUtf8Offset = v14 + a5;
  if (a6 < 0)
  {
    if (!NextUtf8Offset)
    {
      goto LABEL_45;
    }

    do
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v29, NextUtf8Offset);
      NextUtf8Offset = PreviousUtf8Offset;
      v40 = ~a6 == 0;
      LOWORD(a6) = a6 + 1;
    }

    while (!v40 && PreviousUtf8Offset);
    if (a6)
    {
      goto LABEL_45;
    }
  }

  else if (a6)
  {
    while (NextUtf8Offset != cstdlib_strlen(v29))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(v29, NextUtf8Offset);
      v37 = a6--;
      if (v37 <= 1)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_45;
  }

LABEL_44:
  if ((utf8_getUTF8Char(v29, NextUtf8Offset, a7) & 0x80000000) != 0)
  {
LABEL_45:
    cstdlib_strcpy(a7, "=");
  }

  heap_Free(*(a1 + 8), v29);
  return 0;
}

uint64_t fe_stress_igtr_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, char *a6)
{
  v13 = -1;
  if (!fe_stress_igtr_isFeatureRequired(a2, a3, a4, &v13))
  {
    return 0;
  }

  if (!cstdlib_strcmp(a6, ""))
  {
    cstdlib_strcpy(*(a5 + 8 * v13), "=");
    return 0;
  }

  v9 = cstdlib_strlen(a6);
  v10 = v13;
  if (v9 < 0x41)
  {
    v11 = 0;
  }

  else
  {
    v11 = hlp_resizeFeature(a1, (a5 + 8 * v13), a6);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }
  }

  cstdlib_strcpy(*(a5 + 8 * v10), a6);
  return v11;
}

const char *fe_stress_feat_phon(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 54);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 54);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 10);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 54))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 56) + 32 * v5);
  }
}

const char *fe_stress_feat_tone(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 54);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 54);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 10);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 54))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 56) + 32 * v5 + 8);
  }
}

const char *fe_stress_feat_word(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 48);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 48);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 16);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 48))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 40) + 40 * v5 + 24);
  }
}

const char *fe_stress_feat_pos(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 48);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 48);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 16);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  result = "=";
  if (v5 < *(v9 + 48))
  {
    v11 = *(*(v9 + 40) + 40 * v5 + 8);
    if (v11)
    {
      return v11;
    }
  }

  return result;
}

uint64_t heapAdjustDownNN(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (2 * a2) | 1;
  if (v3 < a3)
  {
    v4 = *(result + 8 * a2);
    v5 = 2 * a2;
    v6 = a2;
    do
    {
      if (v3 < a3 - 1)
      {
        v7 = v5 + 2;
        if (*(*(result + 8 * v3) + 2) < *(*(result + 8 * v7) + 2))
        {
          v3 = v7;
        }
      }

      v8 = *(result + 8 * v3);
      if (*(*(result + 8 * v6) + 2) >= *(v8 + 2))
      {
        break;
      }

      *(result + 8 * v6) = v8;
      *(result + 8 * v3) = v4;
      v6 = v3;
      v5 = 2 * v3;
      v3 = v5 | 1;
    }

    while ((v5 | 1u) < a3);
  }

  return result;
}

uint64_t heapPopNN(uint64_t **a1)
{
  v1 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    return 0;
  }

  if (v1 == 2)
  {
    result = **a1;
    **a1 = (*a1)[1];
    *(a1 + 4) = 1;
  }

  else if (v1 == 1)
  {
    *(a1 + 4) = 0;
    return **a1;
  }

  else
  {
    v4 = **a1;
    **a1 = (*a1)[(v1 - 1)];
    (*a1)[v1 - 1] = v4;
    heapAdjustDownNN(*a1, 0, (v1 - 1));
    v5 = *(a1 + 4) - 1;
    *(a1 + 4) = v5;
    return (*a1)[v5];
  }

  return result;
}

uint64_t heapAddNN(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(*result + 8 * *(result + 8)) = a2;
  *(result + 8) = v2 + 1;
  if (v2)
  {
    v3 = v2 == 0xFFFF;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = result;
    v5 = (v2 + 1) >> 1;
    do
    {
      v6 = v5--;
      result = heapAdjustDownNN(*v4, v5, *(v4 + 8));
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t astar_searchNN(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unsigned __int16 *a5, uint64_t *a6)
{
  v8 = a4;
  v12 = *(a1 + 8);
  v13 = a5[1] + 2;
  if (a5[1] == 0xFFFE)
  {
    v18 = 16;
  }

  else
  {
    v14 = 2;
    v15 = 1;
    do
    {
      v16 = v13;
      if (v13)
      {
        v17 = v14;
      }

      else
      {
        v17 = 1;
      }

      v15 *= v17;
      v13 >>= 1;
      v14 *= v14;
    }

    while (v16 > 1);
    v18 = 16 * v15;
  }

  v19 = 2315264010;
  v20 = heap_Alloc(v12, v18);
  if (v20)
  {
    v21 = v20;
    v22 = a5[1] + 2;
    if (a5[1] == 0xFFFE)
    {
      v27 = 8;
    }

    else
    {
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = v22;
        if (v22)
        {
          v26 = v23;
        }

        else
        {
          v26 = 1;
        }

        v24 *= v26;
        v22 >>= 1;
        v23 *= v23;
      }

      while (v25 > 1);
      v27 = 8 * v24;
    }

    v28 = heap_Alloc(*(a1 + 8), v27);
    v41 = v28;
    if (!v28)
    {
      goto LABEL_36;
    }

    v29 = 0;
    v42 = 0;
    *v21 = 0xFFFF;
    *(v21 + 4) = a3 - 1;
    *(v21 + 6) = 0;
    *(v21 + 12) = 0;
    *(v21 + 14) = *a5;
    *(v21 + 8) = 0;
    *v28 = v21;
    v30 = 1;
    LOWORD(v42) = 1;
    do
    {
      v31 = heapPopNN(&v41);
      v32 = v31;
      if (*(v31 + 4) == v8 && (!v29 || *(v31 + 2) > *(v29 + 2)))
      {
        v29 = v31;
      }

      v33 = 0;
      v34 = 1;
      do
      {
        v35 = v34;
        if (generateNewStateNN(a1, v32, v21 + 16 * v30, v33, a2, v8, a5, a6))
        {
          *(v21 + 16 * v30 + 6) = v30;
          heapAddNN(&v41, v21 + 16 * v30++);
        }

        v34 = 0;
        v33 = 1;
      }

      while ((v35 & 1) != 0);
    }

    while (v42);
    if (v29 && *(v29 + 6) >= 1)
    {
      v36 = *(v29 + 6);
      do
      {
        v37 = (v21 + 16 * v36);
        if (!*(v37 + 2))
        {
          *(*(a2 + 1064) + 184 * v37[2] + 76) = 4;
        }

        v38 = *v37;
        v36 = *v37;
      }

      while (v38 > 0);
    }

    v39 = v41;
    heap_Free(*(a1 + 8), v21);
    v19 = 0;
    v21 = v39;
    if (v39)
    {
LABEL_36:
      heap_Free(*(a1 + 8), v21);
    }
  }

  return v19;
}

uint64_t ipowNN(__int16 a1, unsigned int a2)
{
  v2 = 1;
  if (a2)
  {
    do
    {
      if (a2)
      {
        v3 = a1;
      }

      else
      {
        v3 = 1;
      }

      v2 *= v3;
      a1 *= a1;
      v4 = a2 > 1;
      a2 >>= 1;
    }

    while (v4);
  }

  return v2;
}

_WORD *generateNewStateNN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int16 *a7, uint64_t *a8)
{
  *a3 = *(a2 + 6);
  *(a3 + 8) = a4;
  v8 = *(a2 + 4) + 1;
  *(a3 + 4) = v8;
  if (a6 >= v8)
  {
    v13 = a4;
    v9 = a3;
    v16 = 0;
    v17 = *(a5 + 1064);
    do
    {
      v18 = *(v17 + 184 * v8 + 56);
      v19 = cstdlib_strlen(v18);
      v16 += Utf8_LengthInUtf8chars(v18, v19);
      v17 = *(a5 + 1064);
      v20 = v9[2];
      if (*(v17 + 184 * v9[2] + 76) == 3)
      {
        break;
      }

      v8 = v20 + 1;
      v9[2] = v20 + 1;
      v20 = (v20 + 1);
    }

    while (v20 <= a6);
    if (v20 > a6)
    {
      v9[2] = a6;
    }

    v9[7] = *(a2 + 14) - v16;
    v21 = *(a2 + 2);
    v9[1] = calculateScoreNN(a1, v13, v9, (*(a2 + 12) + v16), *a7, *(a2 + 8), a8, a5) + v21;
    if (v13)
    {
      if (v13 != 1)
      {
        return v9;
      }

      v22 = *(a2 + 12) + v16;
    }

    else
    {
      v22 = 0;
    }

    v9[6] = v22;
    return v9;
  }

  return 0;
}

uint64_t calculateScoreNN(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, uint64_t *a7, uint64_t a8)
{
  if (a2 == 1 && a4 < 6)
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  if (a2 == 0 && a4 > 7)
  {
    v10 += 5;
  }

  v11 = *(a3 + 14);
  if (a2 == 1 && v11 < 6)
  {
    v10 += 10;
  }

  if (a2 == 0 && 1000 * v11 / a5 - 400 < 0xC9)
  {
    v12 = v10 + 5;
  }

  else
  {
    v12 = v10;
  }

  if (a2 == 1 && applyRulesNN(a1, a8, *(a3 + 4), a7) == 1)
  {
    v12 += 20;
  }

  if (a6 | a2)
  {
    return v12;
  }

  else
  {
    return (v12 - 10);
  }
}

uint64_t matchPANDPCONTEXT_TRuleNN(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, int *a5, _WORD *a6, int a7)
{
  v7 = a5;
  *a5 = 0;
  *(a4 + 6) = 0;
  if (!*(a3 + 4))
  {
    v29 = 1;
    goto LABEL_50;
  }

  v9 = a3;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *v9;
    v14 = *(a4 + 2);
    if (*(a1 + 8))
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           regex %d", *(v13 + v11 + 2));
    }

    v15 = *(v13 + v11 + 4);
    if (*(v13 + v11 + 4))
    {
      if ((v15 & 4) != 0)
      {
        if (a7 == 2)
        {
          ++*(a4 + 4);
        }

        else if (a7 == 1)
        {
          ++*(a4 + 3);
        }

        if (*(a1 + 8))
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           DIRECTIVE_MOVE2NEXT - window increased (ruleDef->left_window=%d ruleDef->right_window=%d)");
        }

        goto LABEL_39;
      }

      v16 = (v15 >> 1) & 1;
      v17 = v15 & 1;
      v18 = (v15 >> 3) & 1;
      v19 = (v15 >> 4) & 1;
      v15 = v17;
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v18 = 0;
      v19 = 0;
    }

    if (*(a1 + 8) >= 2u)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d bHasComma=%d", DOMAIN2STRING_0[*a4], *a4, *(a4 + 2), *(a4 + 3), *(a4 + 4), (*(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 64) + 8 * *(v13 + v11) + 4))), *(v13 + v11), v15, v16);
    }

    if (v16)
    {
      v20 = *(a4 + 2);
      v21 = *(a2 + 1064);
      if (*(a1 + 8))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bHasComma = %d", *(a4 + 2), *(v21 + 184 * *(a4 + 2) + 100));
        v20 = *(a4 + 2);
        v21 = *(a2 + 1064);
      }

      v24 = v17 == (*(v21 + 184 * v20 + 100) == 1);
      v9 = a3;
      if (v24)
      {
LABEL_48:
        v29 = 0;
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v18)
    {
      v22 = *(a4 + 2);
      v23 = *(a2 + 1064);
      if (*(a1 + 8))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bIsLastInPhr = %d", *(a4 + 2), *(v23 + 184 * *(a4 + 2) + 140));
        v22 = *(a4 + 2);
        v23 = *(a2 + 1064);
      }

      v27 = *(v23 + 184 * v22 + 140);
      goto LABEL_38;
    }

    if (v19)
    {
      v25 = *(a4 + 2);
      v26 = *(a2 + 1064);
      if (*(a1 + 8))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bIsFirstInPhr = %d", *(a4 + 2), *(v26 + 184 * *(a4 + 2) + 136));
        v25 = *(a4 + 2);
        v26 = *(a2 + 1064);
      }

      v27 = *(v26 + 184 * v25 + 136);
LABEL_38:
      v28 = v17 ^ (v27 == 1);
      v9 = a3;
      if ((v28 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (*a4 - 1 <= 2 && a7)
    {
      if (a7 == 2)
      {
        if (v14 + *(a4 + 4) + 1 >= *(a2 + 1072))
        {
          goto LABEL_53;
        }
      }

      else if (a7 != 1 || *(a4 + 3) >= v14)
      {
LABEL_53:
        v29 = *(a1 + 8);
        if (*(a1 + 8))
        {
          v7 = a5;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           context not found. rule not applicable. RETURN LH_FALSE", 0);
LABEL_55:
          v29 = 0;
          goto LABEL_50;
        }

LABEL_49:
        v7 = a5;
        goto LABEL_50;
      }
    }

    if (*(a1 + 8))
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           REGEX FAILED", 0);
    }

    if (!v17)
    {
      break;
    }

    *a6 = *(v13 + v11 + 2);
    v9 = a3;
    if (*(a1 + 8))
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           negate match - return LH_TRUE");
    }

LABEL_39:
    ++v12;
    v11 += 6;
    if (v12 >= *(v9 + 4))
    {
      v29 = 1;
      goto LABEL_49;
    }
  }

  v29 = *(a1 + 8);
  v7 = a5;
  if (*(a1 + 8))
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           return LH_FALSE", 0);
    goto LABEL_55;
  }

LABEL_50:
  *v7 = v29;
  return 0;
}

uint64_t matchPANDPRULE_TRuleNN(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t **a7, unsigned int *a8, int *a9)
{
  v20 = 1;
  if (*(a5 + 8))
  {
    matched = logPANDPRULE_TRule(a1, a2, a3, a4, a5, a7);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "       <%s>", *a2);
    cstdlib_strcpy(*a2, "");
  }

  else
  {
    matched = 0;
  }

  *a9 = 0;
  if (!*a7 || (matched = matchPANDPCONTEXT_TRuleNN(a5, a6, *a7, a8, &v20, &v19, 1), v15 = v20, v20 == 1))
  {
    v16 = a7[1];
    if (!v16 || (v20 = 0, matched = matchPANDPCONTEXT_TRuleNN(a5, a6, v16, a8, &v20, &v19, 0), v15 = v20, v20 == 1))
    {
      v17 = a7[2];
      if (v17)
      {
        v20 = 0;
        matched = matchPANDPCONTEXT_TRuleNN(a5, a6, v17, a8, &v20, &v19, 2);
        v15 = v20;
      }

      else
      {
        v15 = 1;
      }
    }
  }

  *a9 = v15;
  return matched;
}

uint64_t last_POSNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, unsigned int a5)
{
  if (!result)
  {
    return result;
  }

  v6 = 0;
  for (i = *(*(a2 + 1064) + 184 * a3 + 48) + 1; *(i - 1) == 45; ++i)
  {
    v6 = i;
LABEL_7:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(*(a2 + 1064) + 184 * a3 + 48);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a5;
  while (cstdlib_strcmp(*a4, v8))
  {
    ++a4;
    if (!--v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t first_POSNN(uint64_t a1, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = *(a1 + 8);
  v11 = cstdlib_strlen(*(*(a2 + 1064) + 184 * a3 + 48));
  v12 = heap_Alloc(v10, (v11 + 1));
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  for (i = *(*(a2 + 1064) + 184 * a3 + 48); ; ++i)
  {
    v16 = *i;
    if (!*i || v16 == 45)
    {
      break;
    }

    v17 = v14++;
    *(v12 + v17) = v16;
  }

  *(v12 + v14) = 0;
  if (v5)
  {
    v5 = v5;
    while (cstdlib_strcmp(v13, *a4))
    {
      ++a4;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_10:
    v18 = 0;
  }

  heap_Free(*(a1 + 8), v13);
  return v18;
}

uint64_t has_POSNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, unsigned int a5)
{
  if (result)
  {
    if (a5)
    {
      v8 = a5;
      while (!cstdlib_strstr(*(*(a2 + 1064) + 184 * a3 + 48), *a4))
      {
        ++a4;
        if (!--v8)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t first_characterNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  if (result)
  {
    LODWORD(v5) = a5;
    utf8_getUTF8Char(*(*(a2 + 1064) + 184 * a3 + 48), 0, __s2);
    if (v5)
    {
      v5 = v5;
      while (cstdlib_strcmp(*a4, __s2))
      {
        ++a4;
        if (!--v5)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t last_characterNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  v16 = 0;
  *__s2 = 0;
  if (result)
  {
    LODWORD(v5) = a5;
    v7 = *(*(a2 + 1064) + 184 * a3 + 48);
    v8 = cstdlib_strlen(v7);
    v9 = cstdlib_strlen(v7);
    v10 = v8 - utf8_GetCurrentUtf8Offset(v7, v9 - 1);
    v11 = cstdlib_strlen(v7);
    CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v7, v11 - 1);
    if (v10 >= Utf8_LengthInBytes(&v7[CurrentUtf8Offset], 1))
    {
      v13 = cstdlib_strlen(v7);
      v14 = utf8_GetCurrentUtf8Offset(v7, v13 - 1);
      utf8_getUTF8Char(v7, v14, __s2);
    }

    if (v5)
    {
      v5 = v5;
      while (cstdlib_strcmp(*a4, __s2))
      {
        ++a4;
        if (!--v5)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t initPhrasingRuleStructNN(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 10) = a3;
  v4 = heap_Calloc(*(a1 + 8), a3, 16);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 2315264010;
  }
}

uint64_t addPhrasingRuleNN(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = 1;
  for (i = a3; *i == 94; ++i)
  {
    ++v6;
LABEL_6:
    ;
  }

  if (*i)
  {
    goto LABEL_6;
  }

  v8 = heap_Calloc(*(a1 + 8), v6, 40);
  v9 = *a2 + 16 * *(a2 + 8);
  *v9 = v8;
  if (!v8)
  {
    return 2315264010;
  }

  *(v9 + 8) = v6;
  result = parseOneRuleNN(a1, v8, v6, a3);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t parseOneRuleNN(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  for (i = 0; ; ++i)
  {
    v7 = &a4[i];
    if (__PAIR64__(*(v7 + 1), *v7) == 0x2D0000002DLL && v7[2] == 62)
    {
      break;
    }
  }

  *v7 = 0;
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v9 = a3;
  while (2)
  {
    v10 = (a4 - 1);
    do
    {
      v12 = *++v10;
      v11 = v12;
    }

    while (v12 == 32);
    v13 = v10;
    while (v11 != 95)
    {
      v14 = *++v13;
      v11 = v14;
    }

    *v13 = 0;
    v15 = a2 + 40 * v8;
    *(v15 + 8) = cstdlib_atoi(v10);
    do
    {
      v17 = *++v13;
      v16 = v17;
    }

    while (v17 == 32);
    v18 = v13;
    while (v16 != 40)
    {
      v19 = *++v18;
      v16 = v19;
    }

    *v18 = 0;
    if (!cstdlib_strcmp(v13, "last-pos"))
    {
      *v15 = last_POSNN;
    }

    if (!cstdlib_strcmp(v13, "first-pos"))
    {
      *v15 = first_POSNN;
    }

    if (!cstdlib_strcmp(v13, "has-pos"))
    {
      *v15 = has_POSNN;
    }

    if (!cstdlib_strcmp(v13, "first-character"))
    {
      *v15 = first_characterNN;
    }

    if (!cstdlib_strcmp(v13, "last-character"))
    {
      *v15 = last_characterNN;
    }

    *(v15 + 32) = 1;
    do
    {
      v21 = *++v18;
      v20 = v21;
    }

    while (v21 == 32);
    v22 = 0;
    v23 = 1;
    while (v20 == 124)
    {
      *(v15 + 32) = ++v23;
LABEL_34:
      v20 = v18[++v22];
    }

    if (v20 != 41)
    {
      goto LABEL_34;
    }

    v18[v22] = 0;
    v24 = &v18[v22 + 1];
    v25 = heap_Alloc(*(a1 + 8), (v22 + 2));
    *(v15 + 16) = v25;
    if (v25)
    {
      cstdlib_strcpy(v25, v18);
      v26 = heap_Alloc(*(a1 + 8), 8 * *(v15 + 32));
      *(v15 + 24) = v26;
      if (v26)
      {
        *v26 = *(v15 + 16);
        if (*(v15 + 32) >= 2u)
        {
          v27 = 1;
          do
          {
            v28 = (*(v15 + 24) + 8 * v27);
            for (j = *(v28 - 1); ; j = v30 + 1)
            {
              *v28 = j;
              v28 = (*(v15 + 24) + 8 * v27);
              v30 = *v28;
              if (**v28 == 124)
              {
                break;
              }
            }

            *v28 = v30 + 1;
            *v30 = 0;
            ++v27;
          }

          while (v27 < *(v15 + 32));
        }

        while (1)
        {
          v31 = *v24;
          if (!*v24 || v31 == 94)
          {
            break;
          }

          ++v24;
        }

        if (v31 == 94)
        {
          a4 = v24 + 1;
        }

        else
        {
          a4 = v24;
        }

        if (++v8 == v9)
        {
          return 0;
        }

        continue;
      }
    }

    return 2315264010;
  }
}

uint64_t releasePhrasingRuleStructNN(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v5 = *(a2 + 10);
    if (*(a2 + 10))
    {
      v6 = 0;
      do
      {
        v7 = v3 + 16 * v6;
        v8 = *v7;
        if (*v7)
        {
          if (*(v7 + 8))
          {
            v9 = 0;
            v10 = 0;
            do
            {
              if (*(*v7 + v9 + 16))
              {
                heap_Free(*(a1 + 8), *(*v7 + v9 + 16));
                v3 = *a2;
              }

              if (*(*(v3 + 16 * v6) + v9 + 24))
              {
                heap_Free(*(a1 + 8), *(*(v3 + 16 * v6) + v9 + 24));
                v3 = *a2;
              }

              ++v10;
              v7 = v3 + 16 * v6;
              v9 += 40;
            }

            while (v10 < *(v7 + 8));
            v8 = *v7;
          }

          heap_Free(*(a1 + 8), v8);
          v3 = *a2;
          *(*a2 + 16 * v6) = 0;
          v5 = *(a2 + 10);
        }

        ++v6;
      }

      while (v6 < v5);
    }

    heap_Free(*(a1 + 8), v3);
  }

  *(a2 + 10) = 0;
  *a2 = 0;
  return 0;
}

uint64_t applyRulesNN(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (!*(a4 + 5))
  {
    return 0;
  }

  v8 = 0;
  v9 = *a4;
  while (1)
  {
    v10 = v9 + 16 * v8;
    if (!*(v10 + 8))
    {
      return 1;
    }

    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(a2 + 1072);
      v14 = *v10 + 40 * v11;
      v15 = *(v14 + 8) + a3;
      if (v15 >= v13)
      {
        v16 = v9 + 16 * v8;
        v17 = 40 * v11;
        while (++v11 < *(v16 + 8))
        {
          v15 = *(*v16 + v17 + 48) + a3;
          v17 += 40;
          if (v15 < v13)
          {
            v12 = 0;
            v14 = *v16 + v17;
            goto LABEL_10;
          }
        }

        goto LABEL_14;
      }

LABEL_10:
      if ((*v14)(a1, a2, v15, *(v14 + 24), *(v14 + 32)) != 1)
      {
        v12 = 0;
      }

      v9 = *a4;
      ++v11;
      v10 = *a4 + 16 * v8;
    }

    while (v11 < *(v10 + 8));
    if (v12 == 1)
    {
      return 1;
    }

LABEL_14:
    if (++v8 >= *(a4 + 5))
    {
      return 0;
    }
  }
}

uint64_t com_crf_GetCfgParamVal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char **a6)
{
  *a6 = a5;
  *(__c + 1) = -1;
  LOBYTE(__c[0]) = 0;
  v10 = 0;
  v7 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v10, __c + 1, __c);
  if ((v7 & 0x80000000) == 0 && *(__c + 1))
  {
    v8 = cstdlib_strchr(*v10, LOBYTE(__c[0]));
    if (v8)
    {
      *v8 = 0;
    }

    *a6 = *v10;
  }

  return v7;
}

uint64_t com_IncludeCRF(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  __s1 = 0;
  CfgParamVal = com_crf_GetCfgParamVal(a1, a2, a3, "statbnd_include", "NO", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = __s1;
    if (cstdlib_strcmp(__s1, "CRF"))
    {
      v7 = cstdlib_strcmp(v6, "crf") == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  *a4 = v7;
  return CfgParamVal;
}

uint64_t pandpCrfInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v86[4] = *MEMORY[0x277D85DE8];
  *(a11 + 224) = 0;
  v17 = (a11 + 224);
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  *__dst = 0u;
  v71 = 0u;
  v18 = hlp_BrokerString(a5, __dst, "crfphrase");
  if (v18 < 0)
  {
    v24 = v18;
    v20 = a5;
    log_OutText(*(a5 + 32), "FE_PHRASING", 0, 0, "Could not assemble broker string for CRF phrasing model %s");
    goto LABEL_7;
  }

  v19 = a1;
  v20 = a5;
  v21 = v19;
  Only_ReferenceCnt = crf_Init_ReadOnly_ReferenceCnt(v19, a2, a3, a4, v17, 2, __dst, "CRPH", 1031, 0, 0);
  if (Only_ReferenceCnt < 0)
  {
    v24 = Only_ReferenceCnt;
    log_OutText(*(v20 + 32), "FE_PHRASING", 5, 0, "no CRF Phrasing model found");
LABEL_7:
    v25 = v24 | 0x8A002000;
    if (*v17)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(v20, a6, *v17);
      *v17 = 0;
    }

    return v25;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  *__dst = 0u;
  v71 = 0u;
  v67 = 0;
  *__s1 = 0;
  v64 = 0;
  *v65 = 0;
  v86[0] = 0;
  v68 = 0;
  v69 = 0;
  if ((com_crf_GetCfgParamVal(a9, a10, a7, "fephrase_max_rule", "1024", &v64) & 0x80000000) != 0)
  {
    v23 = 1024;
  }

  else
  {
    v23 = cstdlib_atoi(v64);
  }

  v26 = a11;
  v27 = heap_Calloc(*(v20 + 8), 1, v23);
  if (v27)
  {
    v28 = v27;
    v29 = hlp_BrokerString(v20, __dst, "sprules");
    v30 = *(v20 + 32);
    if (v29 < 0)
    {
      log_OutText(v30, "FE_PHRASING", 0, 0, "Could not assemble broker string for SP rules %s", "sprules");
      v45 = v29 | 0x8A002000;
    }

    else
    {
      log_OutText(v30, "FE_PHRASING", 5, 0, "looking for SP rules %s at %s", "sprules", __dst);
      v31 = ssftriff_reader_ObjOpen(v21, a2, 2, __dst, "SPDT", 1031, &v68);
      if (v31 < 0)
      {
        v45 = v31;
        log_OutText(*(v20 + 32), "FE_PHRASING", 0, 0, "no sp rules");
        *(a11 + 242) = 0;
        *(a11 + 232) = 0;
      }

      else
      {
        while (1)
        {
          v32 = ssftriff_reader_OpenChunk(v68, __s1, &v65[1], v86);
          if (v32 < 0)
          {
            break;
          }

          if (!cstdlib_strcmp(__s1, "DSTR"))
          {
            ssftriff_reader_GetChunkData(v68, v65[1], &v69, v33);
            if (inited < 0)
            {
              goto LABEL_41;
            }

            v65[0] = 0;
            ssftriff_reader_ReadStringZ(v68, v69, v65[1], 0, 0, v65);
            ssftriff_reader_ReadStringZ(v68, v69, v65[1], 0, v28, v65);
            v35 = cstdlib_strchr(v28, 10);
            if (v35)
            {
              *v35 = 0;
            }

            v36 = cstdlib_strchr(v28, 58);
            v37 = v36 ? cstdlib_atoi(v36 + 2) : 0;
            v38 = v65[0];
            inited = initPhrasingRuleStruct(v20, a11 + 232, v37);
            if (inited < 0)
            {
              goto LABEL_41;
            }

            if (v37)
            {
              v39 = v37;
              v40 = 0;
              while (1)
              {
                do
                {
                  v65[0] = 0;
                  ssftriff_reader_ReadStringZ(v68, v69, v65[1], v38, 0, v65);
                  ssftriff_reader_ReadStringZ(v68, v69, v65[1], v38, v28, v65);
                  v38 += v65[0];
                  v41 = v28 + 1;
                  for (i = v28; ; ++i)
                  {
                    v43 = *i;
                    if (v43 > 0x23)
                    {
                      goto LABEL_33;
                    }

                    if (((1 << v43) & 0x100000200) == 0)
                    {
                      break;
                    }

                    ++v41;
                  }
                }

                while (((1 << v43) & 0x800002401) != 0);
LABEL_33:
                while (v43)
                {
                  if (v43 == 35)
                  {
                    *(v41 - 1) = 0;
                    break;
                  }

                  v44 = *v41++;
                  LOBYTE(v43) = v44;
                }

                inited = addPhrasingRule(v20, a11 + 232, v28);
                if (inited < 0)
                {
                  break;
                }

                if (++v40 >= v39)
                {
                  goto LABEL_15;
                }
              }

LABEL_41:
              v45 = inited;
              goto LABEL_42;
            }
          }

LABEL_15:
          inited = ssftriff_reader_CloseChunk(v68);
          if (inited < 0)
          {
            goto LABEL_41;
          }
        }

        if ((v32 & 0x1FFF) == 0x14)
        {
          v45 = 0;
        }

        else
        {
          v45 = v32;
        }

LABEL_42:
        v26 = a11;
      }
    }

    if (v68)
    {
      v46 = ssftriff_reader_ObjClose(v68);
      if (v46 < 0 && v45 > -1)
      {
        v45 = v46;
      }
    }

    heap_Free(*(v20 + 8), v28);
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    log_OutPublic(*(v20 + 32), "FE_PHRASING", 37000, 0);
  }

  releasePhrasingRuleStruct(v20, v26 + 232);
LABEL_52:
  v48 = 0;
  v68 = 0;
  v69 = 0;
  LOWORD(v64) = -1;
  __s1[0] = 0;
  *(v26 + 250) = 0u;
  v49 = (v26 + 250);
  v62 = v26 + 270;
  v50 = v26 + 290;
  v51 = v26 + 310;
  v49[1] = 0u;
  v49[2] = 0u;
  v86[0] = "JOY_KEYS";
  v86[1] = "DID_KEYS";
  v86[2] = "NEU_KEYS";
  v86[3] = "COM_KEYS";
  v49[3] = 0u;
  v49[4] = 0u;
  while (1)
  {
    cstdlib_strcpy(__dst, "statbnd_");
    cstdlib_strcat(__dst, v86[v48]);
    LOWORD(v64) = 0;
    if (((*(a7 + 96))(a9, a10, "fecfg", __dst, &v69, &v64, __s1) & 0x80000000) != 0 || !v64)
    {
      return 0;
    }

    v52 = cstdlib_strchr(*v69, __s1[0]);
    if (v52)
    {
      *v52 = 0;
    }

    v53 = *v69;
    v54 = **v69;
    if (**v69)
    {
      break;
    }

    v55 = 0;
LABEL_78:
    if (++v48 == 4)
    {
      *(a11 + 248) = v55;
      return 0;
    }
  }

  v55 = 0;
  while (1)
  {
    for (j = 0; v54; v54 = v53[++j])
    {
      if (v54 == 44)
      {
        break;
      }
    }

    cstdlib_strcpy(__dst, "statbnd_");
    cstdlib_strncat(__dst, v53, j);
    LOWORD(v64) = 0;
    v57 = (*(a7 + 96))(a9, a10, "fecfg", __dst, &v68, &v64, __s1);
    if ((v57 & 0x80000000) != 0)
    {
      return v57;
    }

    if (v64)
    {
      v58 = cstdlib_strchr(*v68, __s1[0]);
      if (v58)
      {
        *v58 = 0;
      }

      v59 = cstdlib_atoi(*v68);
      v60 = v49;
      if (v48)
      {
        v60 = v62;
        if (v48 != 1)
        {
          v60 = v51;
        }

        if (v48 == 2)
        {
          v60 = v50;
        }
      }

      *(v60 + v55) = v59;
    }

    if (v53[j] == 44)
    {
      v53 += j + 1;
    }

    else
    {
      v53 += j;
    }

    ++v55;
    v54 = *v53;
    if (!*v53)
    {
      goto LABEL_78;
    }
  }
}

uint64_t pandpCrfDeinit(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(a3 + 224);
    if (v5)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(result, a2, v5);
      *(a3 + 224) = 0;
    }

    return releasePhrasingRuleStruct(v4, a3 + 232);
  }

  return result;
}

uint64_t crfWeakPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  v163 = 0;
  v162 = 0;
  v161 = 0;
  if ((com_crf_GetCfgParamVal(a2, a3, a1, "fephrase_max_char", "6", &v161) & 0x80000000) != 0)
  {
    v15 = 6;
  }

  else
  {
    v15 = cstdlib_atoi(v161);
  }

  if ((com_crf_GetCfgParamVal(a2, a3, a1, "fephrase_max_pos", "6", &v161) & 0x80000000) != 0)
  {
    v16 = 6;
  }

  else
  {
    v16 = cstdlib_atoi(v161);
  }

  v148 = a6;
  v149 = a5;
  v155 = a7;
  if ((com_crf_GetCfgParamVal(a2, a3, a1, "fephrase_max_obs", "1024", &v161) & 0x80000000) != 0)
  {
    v17 = 1024;
  }

  else
  {
    v17 = cstdlib_atoi(v161);
  }

  v147 = v17;
  v18 = heap_Calloc(*(a4 + 8), 1, v15);
  v19 = heap_Calloc(*(a4 + 8), 1, v15);
  v20 = heap_Calloc(*(a4 + 8), 2, v15);
  v21 = heap_Calloc(*(a4 + 8), 1, v15);
  v22 = heap_Calloc(*(a4 + 8), 1, v15);
  v23 = heap_Calloc(*(a4 + 8), 2, v15);
  v24 = heap_Calloc(*(a4 + 8), 1, v16);
  v25 = v16;
  v26 = v19;
  v27 = heap_Calloc(*(a4 + 8), 1, v25);
  v28 = v27;
  v153 = v22;
  v154 = v18;
  v151 = v20;
  v152 = v21;
  if (!v18 || !v19 || !v20 || !v21 || !v22 || !v23 || !v24 || !v27)
  {
    goto LABEL_138;
  }

  v146 = v24;
  *v18 = 0;
  *v19 = 0;
  *v20 = 0;
  *v21 = 0;
  *v22 = 0;
  *v23 = 0;
  if (v149 | v155)
  {
    log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Parameter errors: %s %s\n", "level0", "rules");
  }

  v29 = heap_Calloc(*(a4 + 8), v148[4], 8);
  if (!v29)
  {
LABEL_138:
    v112 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
    goto LABEL_196;
  }

  v30 = v29;
  __s2 = v19;
  v156 = v28;
  v31 = heap_Calloc(*(a4 + 8), v148[4], 8);
  if (!v31)
  {
    v112 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
    v32 = 0;
    goto LABEL_176;
  }

  v32 = heap_Calloc(*(a4 + 8), v148[4], 4);
  if (!v32)
  {
    v112 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
    goto LABEL_176;
  }

  v141 = v23;
  v138 = v30;
  if (!v148[4])
  {
    v150 = 0;
    v74 = 0;
    LODWORD(v108) = 0;
LABEL_142:
    v112 = crf_Process_Constrained(*(a8 + 224), v30, v108, &v163, &v162, v31, v32);
    if ((v112 & 0x80000000) == 0 && v148[4])
    {
      v113 = v74;
      v114 = 0;
      v115 = 73;
      while (1)
      {
        log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "returned labels: %s\n", *(v163 + 8 * v114));
        v116 = 1;
        if (cstdlib_strncmp("B", *(v163 + 8 * v114), 1uLL))
        {
          v116 = 1;
          if (cstdlib_strncmp("M", *(v163 + 8 * v114), 1uLL))
          {
            if (cstdlib_strncmp("E", *(v163 + 8 * v114), 1uLL) && cstdlib_strncmp("S", *(v163 + 8 * v114), 1uLL))
            {
              goto LABEL_151;
            }

            v116 = 3;
          }
        }

        *(*v148 + v115) = v116;
LABEL_151:
        ++v114;
        v115 += 224;
        if (v114 >= v148[4])
        {
          v117 = 0;
          v23 = v141;
          v30 = v138;
          v74 = v113;
          goto LABEL_170;
        }
      }
    }

LABEL_155:
    v117 = 0;
    goto LABEL_170;
  }

  v159 = 0;
  v160 = 0;
  v158 = 0;
  v33 = *(a4 + 8);
  v34 = cstdlib_strlen(*(*v148 + 8));
  v35 = heap_Alloc(v33, (v34 + 2));
  if (!v35)
  {
    v109 = 0;
    v36 = 0;
LABEL_154:
    v150 = v36;
    v112 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
    v74 = v109;
    goto LABEL_155;
  }

  v144 = v35;
  v36 = 0;
  v130 = 0;
  v37 = 0;
  while (1)
  {
    v38 = *(*v148 + 224 * v37 + 8);
    if (v38)
    {
      v39 = v144;
      *v144 = 0;
      v40 = *v38;
      if (*v38)
      {
        do
        {
          v41 = v38 + 1;
          if ((v40 - 48) - 1 <= 8)
          {
            v42 = *v41;
            if (v42 == 125)
            {
              v41 = v38 + 2;
            }

            else
            {
              __s1[0] = v40;
              if (v42)
              {
                v43 = 0;
                v44 = 1;
                while (1)
                {
                  if ((v42 - 48) - 1 > 4)
                  {
                    v44 = (v43 + 1);
                    v41 = &v38[v43 + 1];
                    goto LABEL_41;
                  }

                  v45 = &v38[v43];
                  __s1[v43 + 1] = v42;
                  if (v43 == 1)
                  {
                    break;
                  }

                  ++v44;
                  LOWORD(v42) = v45[2];
                  ++v43;
                  if (!v45[2])
                  {
                    goto LABEL_40;
                  }
                }

                v44 = 3;
LABEL_40:
                v41 = v45 + 2;
              }

              else
              {
                v44 = 1;
              }

LABEL_41:
              __s1[v44] = 0;
              if (!cstdlib_strcmp(__s1, "55"))
              {
                v46 = v144;
                v47 = "1-";
LABEL_58:
                cstdlib_strcat(v46, v47);
                goto LABEL_59;
              }

              if (!cstdlib_strcmp(__s1, "35"))
              {
                v46 = v144;
                v47 = "2-";
                goto LABEL_58;
              }

              if (!cstdlib_strcmp(__s1, "214") || !cstdlib_strcmp(__s1, "33"))
              {
                v46 = v144;
                v47 = "3-";
                goto LABEL_58;
              }

              if (!cstdlib_strcmp(__s1, "51") || !cstdlib_strcmp(__s1, "21"))
              {
                v46 = v144;
                v47 = "4-";
                goto LABEL_58;
              }

              if (!cstdlib_strcmp(__s1, "11") || !cstdlib_strcmp(__s1, "13"))
              {
                v46 = v144;
                v47 = "5-";
                goto LABEL_58;
              }

              if (!cstdlib_strcmp(__s1, "34") || !cstdlib_strcmp(__s1, "22"))
              {
                v46 = v144;
                v47 = "6-";
                goto LABEL_58;
              }

              log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "invalid input prone: %s\n", __s1);
            }
          }

LABEL_59:
          v40 = *v41;
          v38 = v41;
        }

        while (*v41);
      }

      v48 = cstdlib_strlen(v144);
      if (v48)
      {
        v144[v48 - 1] = 0;
      }

      else
      {
        cstdlib_strcpy(v144, "0");
      }

      v49 = v147;
    }

    else
    {
      log_OutText(*(a4 + 32), "FE_PHRASING", 0, 0, "invalid input parameter: %s\n", "szSourcePron");
      v49 = v147;
      v39 = v144;
    }

    v50 = cstdlib_strlen(v39);
    if (v50)
    {
      v135 = v39[v50 - 1];
      v136 = *v39;
    }

    else
    {
      v135 = 48;
      v136 = 48;
    }

    if (!cstdlib_strcmp(*(*(*v148 + 224 * v37 + 16) + 8), "{T:comma}"))
    {
      cstdlib_strcpy(*(*(*v148 + 224 * v37 + 16) + 8), "g");
    }

    __s = heap_Alloc(*(a4 + 8), v49);
    if (!__s)
    {
      goto LABEL_169;
    }

    v36 = heap_Alloc(*(a4 + 8), v49);
    if (!v36)
    {
      goto LABEL_169;
    }

    v143 = v37;
    v145 = v39;
    if (cstdlib_strcmp(**(*v148 + 224 * v37 + 16), "-"))
    {
      break;
    }

    if (*(*(a8 + 224) + 32))
    {
      v66 = v39;
      v67 = v23;
      sprintf(__s, "%s %d %s %s %s %s %s %s %s %s %s %s %s %s %d %d %s %s %d", "-", 1, *(*(*v148 + 224 * v37 + 16) + 8), v66, "-", "-", "-", "-", "NULL", "NULL", "-", "-", *(*(*v148 + 224 * v37 + 16) + 8), *(*(*v148 + 224 * v37 + 16) + 8), 1, 1, v66, v66, 1);
      v68 = extstdlib_strtok_r(__s, " ", &v158);
      *v36 = 0;
      if (v68)
      {
        v69 = v68;
        v70 = 0;
        do
        {
          v71 = *(*(*(a8 + 224) + 32) + 8);
          if (v71[v70] == 49)
          {
            v72 = cstdlib_strlen(v71) - 1;
            cstdlib_strcat(v36, " ");
            cstdlib_strcat(v36, v69);
            v73 = v72 == v70;
            v37 = v143;
            v67 = v141;
            if (!v73)
            {
              cstdlib_strcat(v36, " ");
            }
          }

          ++v70;
          v69 = extstdlib_strtok_r(0, " ", &v158);
        }

        while (v69);
      }

      v74 = __s;
      cstdlib_strcpy(__s, v36);
      v30 = v138;
      v23 = v67;
    }

    else
    {
      v74 = __s;
      cstdlib_strcpy(__s, "- 1 ");
      cstdlib_strcat(__s, *(*(*v148 + 224 * v37 + 16) + 8));
      cstdlib_strcat(__s, " ");
      cstdlib_strcat(__s, v39);
      cstdlib_strcat(__s, " 1 - - NULL NULL");
    }

    v86 = *(a4 + 8);
    v87 = cstdlib_strlen(v74);
    v88 = heap_Alloc(v86, (v87 + 1));
    v30[v37] = v88;
    if (!v88)
    {
      v39 = v145;
LABEL_169:
      v150 = v36;
      v112 = 2315264010;
      log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
      heap_Free(*(a4 + 8), v39);
      v117 = 0;
      v74 = __s;
      goto LABEL_170;
    }

    cstdlib_strcpy(v88, v74);
    v89 = v145;
LABEL_135:
    heap_Free(*(a4 + 8), v89);
    ++v37;
    v108 = v148[4];
    if (v37 >= v108)
    {
      v150 = v36;
      goto LABEL_142;
    }

    v109 = v74;
    v159 = 0;
    v160 = 0;
    v158 = 0;
    v110 = *(a4 + 8);
    v111 = cstdlib_strlen(*(*v148 + 224 * v37 + 8));
    v144 = heap_Alloc(v110, (v111 + 2));
    if (!v144)
    {
      goto LABEL_154;
    }
  }

  v150 = v36;
  v51 = heap_Alloc(*(a4 + 8), v49);
  if (!v51)
  {
    goto LABEL_169;
  }

  v52 = v51;
  v53 = *(a4 + 8);
  v54 = cstdlib_strlen(*(*(*v148 + 224 * v37 + 16) + 8));
  v55 = heap_Alloc(v53, (v54 + 2));
  v137 = v55;
  if (v55)
  {
    *v52 = 0;
    cstdlib_strcpy(v55, *(*(*v148 + 224 * v37 + 16) + 8));
    v56 = extstdlib_strtok_r(**(*v148 + 224 * v37 + 16), "-", &v160);
    v57 = extstdlib_strtok_r(*(*(*v148 + 224 * v37 + 16) + 8), "-", &v159);
    v58 = *(a4 + 8);
    v59 = cstdlib_strlen(v56);
    __dst = heap_Alloc(v58, (v59 + 2));
    if (!__dst)
    {
      __dst = 0;
LABEL_161:
      v23 = v141;
      goto LABEL_162;
    }

    v60 = heap_Alloc(*(a4 + 8), v147);
    if (!v60)
    {
      goto LABEL_161;
    }

    v61 = v60;
    cstdlib_strcpy(__dst, v56);
    if (v57)
    {
      v62 = v57;
    }

    else
    {
      v62 = "NULL";
    }

    cstdlib_strcpy(v146, v62);
    v63 = cstdlib_strlen(__dst);
    v133 = Utf8_LengthInUtf8chars(__dst, v63);
    if (v56)
    {
      v64 = 0;
      do
      {
        cstdlib_strcat(v52, v56);
        cstdlib_strcpy(v61, v56);
        v56 = extstdlib_strtok_r(0, "-", &v160);
        if (v57)
        {
          v65 = v57;
        }

        else
        {
          v65 = "NULL";
        }

        cstdlib_strcpy(v156, v65);
        if (v159)
        {
          v57 = extstdlib_strtok_r(0, "-", &v159);
        }

        ++v64;
      }

      while (v56);
      v134 = v64;
    }

    else
    {
      v134 = 0;
    }

    v75 = cstdlib_strlen(v61);
    v132 = Utf8_LengthInUtf8chars(v61, v75);
    cstdlib_strcpy(**(*v148 + 224 * v37 + 16), v52);
    v76 = cstdlib_strlen(v52);
    v77 = Utf8_LengthInUtf8chars(v52, v76);
    utf8_getUTF8Char(v52, 0, v154);
    v78 = cstdlib_strlen(v52);
    CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v52, v78 - 1);
    utf8_getUTF8Char(v52, CurrentUtf8Offset, v152);
    v80 = v77;
    if (v77 < 3u)
    {
      if (v77 == 2)
      {
        cstdlib_strcpy(v20, v52);
        v23 = v141;
        v84 = v141;
        v85 = v52;
      }

      else
      {
        cstdlib_strcpy(v20, "NULL");
        v23 = v141;
        v84 = v141;
        v85 = "NULL";
      }

      cstdlib_strcpy(v84, v85);
    }

    else
    {
      v81 = cstdlib_strlen(v154);
      utf8_getUTF8Char(v52, v81, __s2);
      v82 = cstdlib_strlen(v52);
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v52, v82 - 1);
      utf8_getUTF8Char(v52, PreviousUtf8Offset, v153);
      cstdlib_strcpy(v20, v154);
      cstdlib_strcat(v20, __s2);
      v23 = v141;
      cstdlib_strcpy(v141, v153);
      cstdlib_strcat(v141, v152);
    }

    v39 = v145;
    v90 = __s;
    v131 = v80;
    if (*(*(a8 + 224) + 32))
    {
      sprintf(__s, "%s %d %s %s %s %s %s %s %s %s %s %s %s %s %d %d %c %c %d", v52, v80, v137, v145, v154, v152, __s2, v153, v20, v23, __dst, v61, v146, v156, v133, v132, v136, v135, v134);
      v91 = extstdlib_strtok_r(__s, " ", &v158);
      *v150 = 0;
      if (v91)
      {
        v92 = v91;
        v93 = 0;
        do
        {
          v94 = *(*(*(a8 + 224) + 32) + 8);
          if (v94[v93] == 49)
          {
            v95 = cstdlib_strlen(v94) - 1;
            cstdlib_strcat(v150, " ");
            cstdlib_strcat(v150, v92);
            if (v95 != v93)
            {
              cstdlib_strcat(v150, " ");
            }
          }

          ++v93;
          v92 = extstdlib_strtok_r(0, " ", &v158);
        }

        while (v92);
      }

      v90 = __s;
      cstdlib_strcpy(__s, v150);
      v23 = v141;
      v39 = v145;
    }

    else
    {
      sprintf(__s, "%s %d %s %s %d %s %s %s %s", v52, v80, v137, v145, v134, v154, v152, v20, v23);
    }

    log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Crf Phrasing Obversation: %s", v90);
    v96 = *(a4 + 8);
    v97 = cstdlib_strlen(__s) + 1;
    v98 = v96;
    v74 = __s;
    v99 = heap_Alloc(v98, v97);
    v37 = v143;
    v138[v143] = v99;
    if (!v99)
    {
LABEL_156:
      log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
      goto LABEL_163;
    }

    cstdlib_strcpy(v99, __s);
    v100 = *(*v148 + 224 * v143 + 136);
    if (!v100)
    {
      *(v32 + 4 * v143) = 0;
      *(v31 + 8 * v143) = 0;
LABEL_134:
      heap_Free(*(a4 + 8), v39);
      heap_Free(*(a4 + 8), v52);
      heap_Free(*(a4 + 8), __dst);
      heap_Free(*(a4 + 8), v61);
      heap_Free(*(a4 + 8), __s);
      heap_Free(*(a4 + 8), v150);
      v36 = 0;
      v74 = 0;
      v89 = v137;
      v30 = v138;
      goto LABEL_135;
    }

    if (cstdlib_strcmp(v100, "B"))
    {
      if (!cstdlib_strcmp(*(*v148 + 224 * v143 + 136), "E"))
      {
        *(v32 + 4 * v143) = 1;
        v105 = heap_Calloc(*(a4 + 8), 1, 8);
        *(v31 + 8 * v143) = v105;
        if (!v105)
        {
          goto LABEL_156;
        }

        **(v31 + 8 * v143) = heap_Calloc(*(a4 + 8), 2, 1);
        v106 = **(v31 + 8 * v143);
        if (!v106)
        {
          goto LABEL_156;
        }

        v101 = v131 + v130;
        *v106 = 69;
        goto LABEL_133;
      }

      if (cstdlib_strcmp(*(*v148 + 224 * v143 + 136), "S"))
      {
        v101 = v131 + v130;
        *(v32 + 4 * v143) = 0;
        *(v31 + 8 * v143) = 0;
LABEL_133:
        *(*v148 + 224 * v143 + 144) = v101;
        v130 = v101;
        goto LABEL_134;
      }

      *(v32 + 4 * v143) = 1;
      v107 = heap_Calloc(*(a4 + 8), 1, 8);
      *(v31 + 8 * v143) = v107;
      if (!v107)
      {
        goto LABEL_156;
      }

      **(v31 + 8 * v143) = heap_Calloc(*(a4 + 8), 2, 1);
      v103 = **(v31 + 8 * v143);
      if (!v103)
      {
        goto LABEL_156;
      }

      v104 = 83;
    }

    else
    {
      *(v32 + 4 * v143) = 1;
      v102 = heap_Calloc(*(a4 + 8), 1, 8);
      *(v31 + 8 * v143) = v102;
      if (!v102)
      {
        goto LABEL_156;
      }

      **(v31 + 8 * v143) = heap_Calloc(*(a4 + 8), 2, 1);
      v103 = **(v31 + 8 * v143);
      if (!v103)
      {
        goto LABEL_156;
      }

      v104 = 66;
    }

    *v103 = v104;
    v101 = v131;
    goto LABEL_133;
  }

  __dst = 0;
LABEL_162:
  log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
  v61 = 0;
  v74 = __s;
LABEL_163:
  heap_Free(*(a4 + 8), v39);
  heap_Free(*(a4 + 8), v52);
  if (__dst)
  {
    heap_Free(*(a4 + 8), __dst);
  }

  v112 = 2315264010;
  v117 = v137;
  if (v61)
  {
    heap_Free(*(a4 + 8), v61);
  }

  v30 = v138;
LABEL_170:
  if (v74)
  {
    heap_Free(*(a4 + 8), v74);
  }

  if (v150)
  {
    heap_Free(*(a4 + 8), v150);
  }

  if (v117)
  {
    heap_Free(*(a4 + 8), v117);
  }

LABEL_176:
  v118 = v148[4];
  if (v148[4])
  {
    v119 = 0;
    do
    {
      v120 = v30[v119];
      if (v120)
      {
        heap_Free(*(a4 + 8), v120);
        v118 = v148[4];
      }

      ++v119;
    }

    while (v119 < v118);
  }

  heap_Free(*(a4 + 8), v30);
  v24 = v146;
  if (v31)
  {
    v121 = v148[4];
    if (v148[4])
    {
      v122 = 0;
      do
      {
        v123 = *(v31 + 8 * v122);
        if (v123)
        {
          if (v32 && *(v32 + 4 * v122))
          {
            v124 = 0;
            do
            {
              heap_Free(*(a4 + 8), *(*(v31 + 8 * v122) + 8 * v124++));
            }

            while (*(v32 + 4 * v122) > v124);
            v123 = *(v31 + 8 * v122);
          }

          heap_Free(*(a4 + 8), v123);
          v121 = v148[4];
        }

        ++v122;
      }

      while (v122 < v121);
    }

    heap_Free(*(a4 + 8), v31);
  }

  if (v32)
  {
    heap_Free(*(a4 + 8), v32);
  }

  v28 = v156;
  v26 = __s2;
LABEL_196:
  v125 = v163;
  if (v163)
  {
    v126 = v162;
    if (v162)
    {
      v127 = 0;
      do
      {
        v128 = *(v163 + 8 * v127);
        if (v128)
        {
          heap_Free(*(a4 + 8), v128);
          v126 = v162;
        }

        ++v127;
      }

      while (v126 > v127);
      v125 = v163;
    }

    heap_Free(*(a4 + 8), v125);
  }

  if (v154)
  {
    heap_Free(*(a4 + 8), v154);
  }

  if (v26)
  {
    heap_Free(*(a4 + 8), v26);
  }

  if (v151)
  {
    heap_Free(*(a4 + 8), v151);
  }

  if (v152)
  {
    heap_Free(*(a4 + 8), v152);
  }

  if (v153)
  {
    heap_Free(*(a4 + 8), v153);
  }

  if (v23)
  {
    heap_Free(*(a4 + 8), v23);
  }

  if (v24)
  {
    heap_Free(*(a4 + 8), v24);
  }

  if (v28)
  {
    heap_Free(*(a4 + 8), v28);
  }

  return v112;
}

uint64_t recursiveFindSplit(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, _WORD *a6, signed int a7)
{
  v11 = result;
  if (a2 <= a3)
  {
    v12 = 0;
    v13 = a2;
    do
    {
      v12 += *(result + 2 * v13);
      if (a4 >> 1 <= v12)
      {
        break;
      }

      ++v13;
    }

    while (a3 >= v13);
  }

  else
  {
    v12 = 0;
    v13 = a2;
  }

  if (a7 <= v12)
  {
    v14 = a4 - v12;
    if (v14 >= a7)
    {
      recursiveFindSplit(result, a2, v13, v12, a5, a6, a7);
      result = recursiveFindSplit(v11, (v13 + 1), a3, v14, a5, a6, a7);
      *(a5 + 2 * (*a6)++) = v13;
    }
  }

  return result;
}

uint64_t getDocumentClass(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = v2;
    v4 = *(*a1 + 224 * v2 + 152);
    if (v4)
    {
      if (cstdlib_strstr(v4, "joyfulstyle"))
      {
        return 1;
      }

      v5 = *(*a1 + 224 * v3 + 152);
      if (v5)
      {
        if (cstdlib_strstr(v5, "didacticstyle"))
        {
          return 2;
        }

        v6 = *(*a1 + 224 * v3 + 152);
        if (v6)
        {
          if (cstdlib_strstr(v6, "neutralstyle"))
          {
            break;
          }
        }
      }
    }

    v2 = v3 + 1;
    if (*(a1 + 8) <= (v3 + 1))
    {
      return 0;
    }
  }

  return 3;
}

uint64_t puncPhrasing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (!a2)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "%s\n", "input parameter: sent is NULL");
    return v3;
  }

  if (!a3)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s\n", "input parameter: rules is NULL, but it is ok");
    return 0;
  }

  v6 = (a3 + 270);
  v103 = *(a3 + 242);
  DocumentClass = getDocumentClass(a2);
  v109 = a1;
  if (DocumentClass > 1)
  {
    if (DocumentClass == 2)
    {
      v100 = vbsl_s8(vceqz_s16(*v6), 0x6001400030009, *v6);
      v53 = *(a3 + 278);
      if (!*(a3 + 278))
      {
        v53 = 9;
      }

      v105 = v53;
      v54 = *(a3 + 280);
      if (!*(a3 + 280))
      {
        v54 = 21;
      }

      v101 = v54;
      v55 = *(a3 + 282);
      if (!*(a3 + 282))
      {
        v55 = 6;
      }

      v104 = v55;
      v11 = *(a3 + 284);
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v100 = vbsl_s8(vceqz_s16(*(a3 + 290)), 0x6001400030009, *(a3 + 290));
      v89 = *(a3 + 298);
      if (!*(a3 + 298))
      {
        v89 = 9;
      }

      v105 = v89;
      v90 = *(a3 + 300);
      if (!*(a3 + 300))
      {
        v90 = 21;
      }

      v101 = v90;
      v91 = *(a3 + 302);
      if (!*(a3 + 302))
      {
        v91 = 6;
      }

      v104 = v91;
      v11 = *(a3 + 304);
      if (!v11)
      {
        goto LABEL_13;
      }
    }
  }

  else if (DocumentClass)
  {
    v100 = vbsl_s8(vceqz_s16(*(a3 + 250)), 0x6001400030009, *(a3 + 250));
    v86 = *(a3 + 258);
    if (!*(a3 + 258))
    {
      v86 = 9;
    }

    v105 = v86;
    v87 = *(a3 + 260);
    if (!*(a3 + 260))
    {
      v87 = 21;
    }

    v101 = v87;
    v88 = *(a3 + 262);
    if (!*(a3 + 262))
    {
      v88 = 6;
    }

    v104 = v88;
    v11 = *(a3 + 264);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v100 = vbsl_s8(vceqz_s16(*(a3 + 310)), 0x6001400030009, *(a3 + 310));
    v8 = *(a3 + 318);
    if (!*(a3 + 318))
    {
      v8 = 9;
    }

    v105 = v8;
    v9 = *(a3 + 320);
    if (!*(a3 + 320))
    {
      v9 = 21;
    }

    v101 = v9;
    v10 = *(a3 + 322);
    if (!*(a3 + 322))
    {
      v10 = 6;
    }

    v104 = v10;
    v11 = *(a3 + 324);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  *(a3 + 242) = v11;
LABEL_13:
  v108 = a3;
  v113 = 0;
  v112 = 0;
  if (*(v3 + 8))
  {
    v12 = 0;
    v13 = 73;
    while (1)
    {
      if (doesWordEndInCommaCrf(**(*v3 + v13 - 57)))
      {
        v14 = *v3;
        if (v12 + 1 < *(v3 + 8))
        {
          *(v14 + v13) = 4;
        }
      }

      else
      {
        v14 = *v3;
      }

      v15 = *(v14 + v13 + 63);
      if (!v15)
      {
        goto LABEL_28;
      }

      if (cstdlib_strcmp(v15, "B") && cstdlib_strcmp(*(*v3 + v13 + 63), "S"))
      {
        break;
      }

      if (v13 != 73)
      {
        v16 = *v3 + 224 * v12 - 151;
LABEL_27:
        *v16 = 4;
      }

LABEL_28:
      ++v12;
      v13 += 224;
      if (v12 >= *(v3 + 8))
      {
        goto LABEL_29;
      }
    }

    if (cstdlib_strcmp(*(*v3 + v13 + 63), "E"))
    {
      goto LABEL_28;
    }

    v16 = *v3 + v13;
    if (*(v16 + 71) < v105)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_29:
  v17 = a1;
  printPhrases(a1, v3);
  v18 = heap_Calloc(*(a1 + 8), 1024, 2);
  if (!v18)
  {
    v3 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    v85 = v108;
    goto LABEL_183;
  }

  v111 = v18;
  if (!*(v3 + 8))
  {
LABEL_97:
    printPhrases(v17, v3);
    v56 = *(v3 + 8);
    if (*(v3 + 8))
    {
      v57 = 0;
      do
      {
        v58 = *v3;
        if (*(*v3 + 224 * v57 + 73) != 3)
        {
          goto LABEL_136;
        }

        v59 = v57 + 1;
        if ((v57 + 1) < v56)
        {
          v60 = 1;
          LODWORD(v61) = v57 + 1;
          while (1)
          {
            v62 = *(v58 + 224 * v61 + 73);
            if (v62 == 3)
            {
              ++v60;
            }

            else if (v62 == 4)
            {
              goto LABEL_108;
            }

            LODWORD(v61) = v61 + 1;
            if (v61 >= v56)
            {
              LODWORD(v61) = v56;
LABEL_108:
              if (v60 == 1)
              {
                v59 = v61;
                break;
              }

              v63 = v57 + 1;
              if ((v57 & 0x8000) == 0)
              {
                do
                {
                  if (*(v58 + 224 * v57 + 73) == 4)
                  {
                    goto LABEL_114;
                  }

                  v64 = v57;
                  LOWORD(v57) = v57 - 1;
                }

                while (v64 > 0);
                LOWORD(v57) = -1;
LABEL_114:
                v63 = v57 + 1;
              }

              if (v60 < 9u)
              {
                v65 = v60;
              }

              else
              {
                LODWORD(v61) = v59;
                v65 = 8;
              }

              if (v60 < 9u || v59 >= v56)
              {
                goto LABEL_129;
              }

              v66 = 0;
              v61 = v59;
              v67 = (v58 + 224 * v59 + 73);
              while (1)
              {
                v68 = *v67;
                if (v68 == 3)
                {
                  if (++v66 >= 8u)
                  {
                    *v67 = 4;
LABEL_128:
                    v65 = 8;
LABEL_129:
                    v69 = v61 == v56;
                    v57 = v61 - v69;
                    if (v63 <= (v61 - v69))
                    {
                      v70 = 0;
                      v71 = v63;
                      do
                      {
                        v72 = v71;
                        if (!cstdlib_strstr(**(*v3 + 224 * v71 + 16), "comma"))
                        {
                          v73 = **(*v3 + 224 * v72 + 16);
                          v74 = cstdlib_strlen(v73);
                          v70 += Utf8_LengthInUtf8chars(v73, v74);
                        }

                        v71 = v72 + 1;
                      }

                      while ((v72 + 1) <= v57);
                      if (v101 <= v70)
                      {
                        LOWORD(v112) = v70;
                        HIWORD(v112) = v65;
                        astar_search(v109, v3, v63, v57, &v112, (v108 + 232));
                      }
                    }

LABEL_136:
                    v59 = v57 + 1;
                    v56 = *(v3 + 8);
                    goto LABEL_137;
                  }
                }

                else if (v68 == 4)
                {
                  goto LABEL_128;
                }

                ++v61;
                v67 += 224;
                if (v56 == v61)
                {
                  v65 = 8;
                  LODWORD(v61) = v56;
                  goto LABEL_129;
                }
              }
            }
          }
        }

LABEL_137:
        v57 = v59;
      }

      while (v59 < v56);
    }

    v17 = v109;
    printPhrases(v109, v3);
    v75 = *(v3 + 8);
    v76 = v75 - 2;
    v77 = v75 + 1;
    while (1)
    {
      v78 = v76;
      v79 = (v77 - 2);
      if (v79 < 1)
      {
        break;
      }

      v80 = *v3;
      v81 = *v3 + 224 * ((v77 - 2) & 0x7FFF);
      --v76;
      --v77;
      if (*(v81 + 136))
      {
        *(v81 + 73) = 4;
        if (((v77 - 2) & 0x8000) == 0)
        {
          v82 = v78;
          while (1)
          {
            v83 = v80 + 224 * v82;
            if (*(v83 + 136))
            {
              if (*(v83 + 73) == 4)
              {
                break;
              }
            }

            v84 = v82--;
            if (v84 <= 0)
            {
              goto LABEL_167;
            }
          }

          if ((v79 - v82) <= v100.u16[1])
          {
            *(v83 + 73) = 3;
          }
        }

        break;
      }
    }

LABEL_167:
    printPhrases(v109, v3);
    if (*(v3 + 8))
    {
      v92 = 0;
      do
      {
        v93 = v92;
        v94 = *v3 + 224 * v92;
        if (*(v94 + 73) == 4 && !doesWordEndInCommaCrf(**(v94 + 16)))
        {
          v95 = 0;
          do
          {
            if (*(v3 + 8) <= ++v92)
            {
              break;
            }

            v96 = 224 * v92;
            v97 = **(*v3 + v96 + 16);
            v98 = cstdlib_strlen(v97);
            v95 += Utf8_LengthInUtf8chars(v97, v98);
          }

          while (*(*v3 + v96 + 73) != 4);
          if (v104 > v95)
          {
            *(*v3 + 224 * v93 + 73) = 3;
          }

          v17 = v109;
        }

        else
        {
          ++v92;
        }
      }

      while (*(v3 + 8) > v92);
    }

    printPhrases(v17, v3);
    v3 = 0;
    goto LABEL_181;
  }

  v19 = 0;
  v110 = 0;
  v20 = 0;
  v106 = 0;
  v107 = 1024;
  v102 = 0;
  while (1)
  {
    v21 = *(*v3 + 224 * v20 + 73);
    if (v21 == 4)
    {
      goto LABEL_82;
    }

    if (v21 == 3)
    {
      break;
    }

LABEL_83:
    v19 = ++v20;
    if (v20 >= *(v3 + 8))
    {
      goto LABEL_97;
    }
  }

  if (cstdlib_strstr(**(*v3 + 224 * v110 + 16), "comma"))
  {
    v22 = 0;
  }

  else
  {
    v23 = **(*v3 + 224 * v110 + 16);
    v24 = cstdlib_strlen(v23);
    v22 = Utf8_LengthInUtf8chars(v23, v24);
  }

  v25 = v110 + 1;
  if ((v110 + 1) <= v20)
  {
    v26 = v110 + 1;
    do
    {
      v27 = v26;
      if (!cstdlib_strstr(**(*v3 + 224 * v26 + 16), "comma"))
      {
        v28 = **(*v3 + 224 * v27 + 16);
        v29 = cstdlib_strlen(v28);
        v22 += Utf8_LengthInUtf8chars(v28, v29);
      }

      v26 = v27 + 1;
    }

    while ((v27 + 1) <= v20);
  }

  v30 = heap_Alloc(*(v109 + 8), (4 * v22) | 2);
  if (!v30)
  {
    v3 = 2315264010;
    v85 = v108;
    v17 = v109;
    goto LABEL_182;
  }

  v31 = v30;
  if (cstdlib_strstr(**(*v3 + 224 * v110 + 16), "comma"))
  {
    v32 = 0;
    *v31 = 0;
  }

  else
  {
    v33 = **(*v3 + 224 * v110 + 16);
    v34 = cstdlib_strlen(v33);
    *v111 = Utf8_LengthInUtf8chars(v33, v34);
    cstdlib_strcpy(v31, **(*v3 + 224 * v110 + 16));
    v32 = 1;
  }

  if (v19 - v110 + v32 > v107)
  {
    v35 = 2 * (v19 - v110 + v32);
    if (v35 > 0x1000)
    {
      v17 = v109;
      log_OutText(*(v109 + 32), "FE_PHRASING", 0, 0, "Memory exceeds upper boundary: %d/%d", 2 * (v19 - v110 + v32), 4096);
      v3 = 2315264015;
    }

    else
    {
      v36 = heap_Realloc(*(v109 + 8), v111, v35);
      if (v36)
      {
        v107 = (v19 - v110 + v32);
        v111 = v36;
        goto LABEL_53;
      }

      v3 = 2315264010;
      v17 = v109;
    }

    heap_Free(*(v17 + 8), v31);
    goto LABEL_181;
  }

LABEL_53:
  while (v25 <= v20)
  {
    if (!cstdlib_strstr(**(*v3 + 224 * v25 + 16), "comma"))
    {
      cstdlib_strcat(v31, **(*v3 + 224 * v25 + 16));
      v37 = **(*v3 + 224 * v25 + 16);
      v38 = cstdlib_strlen(v37);
      v111[v32] = Utf8_LengthInUtf8chars(v37, v38);
      LOWORD(v32) = v32 + 1;
    }

    ++v25;
  }

  v39 = cstdlib_strlen(v31);
  v40 = Utf8_LengthInUtf8chars(v31, v39);
  v17 = v109;
  log_OutText(*(v109 + 32), "FE_PHRASING", 5, 0, "WEAK PHRASE:%s %d\n", v31, v40);
  v41 = cstdlib_strlen(v31);
  CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v31, v41 - 1);
  utf8_getUTF8Char(v31, CurrentUtf8Offset, v114);
  heap_Free(*(v109 + 8), v31);
  if (v40 && applyRules(v109, v3, v20, (v108 + 232)) == 1)
  {
    v106 += v40;
    v102 = v20;
    goto LABEL_83;
  }

  if (v40 < v100.u16[0])
  {
LABEL_82:
    v110 = v20 + 1;
    goto LABEL_83;
  }

  if (v40 - v106 <= v100.u16[3] && v106)
  {
    v106 = 0;
    v102 = 0;
    goto LABEL_61;
  }

  if (v106)
  {
    v106 = 0;
    v20 = v102 + 1;
    v110 = v102 + 1;
    v102 = 0;
    goto LABEL_83;
  }

  if (v40 < v100.u16[2] && applyRules(v109, v3, v20, (v108 + 232)) != 1)
  {
LABEL_61:
    *(*v3 + 224 * v20 + 73) = 4;
    goto LABEL_82;
  }

  if (v32 < 0x801u)
  {
    v43 = heap_Calloc(*(v109 + 8), 1, 2 * v32);
    if (!v43)
    {
      v3 = 2315264010;
      log_OutPublic(*(v109 + 32), "FE_PHRASING", 37000, 0);
      goto LABEL_181;
    }

    v44 = v43;
    v113 = 0;
    recursiveFindSplit(v111, 0, v32, v40, v43, &v113, v105);
    if (v110 <= v20)
    {
      v45 = 0;
      v46 = v110;
      do
      {
        v47 = v46;
        v48 = v46;
        if (cstdlib_strstr(**(*v3 + 224 * v46 + 16), "comma"))
        {
          v49 = 1;
        }

        else
        {
          v49 = v48 == v110;
        }

        if (!v49)
        {
          ++v45;
        }

        v50 = v113;
        v51 = v44;
        if (v113)
        {
          while (1)
          {
            v52 = *v51++;
            if (v52 == v45)
            {
              break;
            }

            if (!--v50)
            {
              goto LABEL_80;
            }
          }

          if (applyRules(v109, v3, v47, (v108 + 232)) != 1)
          {
            *(*v3 + 224 * v47 + 73) = 4;
          }
        }

LABEL_80:
        v46 = v47 + 1;
      }

      while ((v47 + 1) <= v20);
    }

    heap_Free(*(v109 + 8), v44);
    goto LABEL_82;
  }

  log_OutText(*(v109 + 32), "FE_PHRASING", 0, 0, "Memory exceeds upper boundary: %d/%d", 2 * v32, 4096);
  v3 = 2315264015;
LABEL_181:
  v85 = v108;
LABEL_182:
  heap_Free(*(v17 + 8), v111);
LABEL_183:
  *(v85 + 242) = v103;
  return v3;
}

uint64_t printPhrases(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = log_OutText(*(v3 + 32), "FE_PHRASING", 5, 0, "%s\t\t%s\n", **(*a2 + v4 + 16), (&off_279DACB60)[*(*a2 + v4 + 73)]);
      ++v5;
      v4 += 224;
    }

    while (v5 < *(a2 + 8));
  }

  return result;
}

uint64_t hlp_BrokerString(uint64_t a1, _BYTE *a2, const char *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = 0;
  __s2 = 0;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__dst = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcpy(__dst, a3);
      cstdlib_strcat(__dst, "_");
      cstdlib_strcat(__dst, __s2);
      cstdlib_strcat(__dst, "_");
      cstdlib_strcat(__dst, v7);
      return brokeraux_ComposeBrokerString(a1, __dst, 1, 1, __s2, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t getTokenRuleset(uint64_t a1, __int16 a2, _DWORD *a3, _WORD *a4)
{
  v15 = 0;
  *a3 = 0;
  v12 = a2;
  v10 = 0;
  v11 = 2;
  v13 = 0;
  v14 = 0;
  if (!*(a1 + 192))
  {
    return 0;
  }

  v7 = 0;
  for (i = 0; i < *(a1 + 192); ++i)
  {
    result = matchPANDPRULE_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(*(a1 + 184) + v7), &v11, &v10);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        *a3 = 1;
        *a4 = i;
      }

      return result;
    }

    v7 += 40;
  }

  return result;
}

uint64_t handleTokenWord(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned int a6)
{
  *&v29[2] = 0;
  v25 = 0;
  v24 = 0;
  FLOATSUR_SET_INT(&v25 + 2, 0, 0);
  FLOATSUR_SET_INT(&v25, *(*(a1 + 672) + 224 * a2 + 24), 0);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    [1] apply word weight rules", 0);
  v22 = a2;
  v28 = a2;
  v26 = 0;
  v27 = 1;
  *v29 = 0;
  v11 = a6;
  v12 = *(a1 + 184);
  v23 = a6;
  if (*(v12 + 40 * a6 + 32))
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      matched = matchMAPRULE2NUMANDOPERATOR_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, (*(v12 + 40 * v11 + 24) + v13), &v27, &v26, &v25 + 2);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v16 = v26;
      if (v26 == 1)
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    wordwweight : rulset %d, idx %d FIRED wordWeight=%d.%d", v23, v14, WORD2(v25), HIWORD(v25));
        v16 = v26;
      }

      if (!v16)
      {
        ++v14;
        v12 = *(a1 + 184);
        v13 += 32;
        if (v14 < *(v12 + 40 * v11 + 32))
        {
          continue;
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    matched = 0;
LABEL_10:
    FLOATSUR_PLUS(&v24, &v25 + 2, &v25);
    FLOATSUR_PLUS(a4, a4, &v24);
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    runningPhraseWeight=%d.%d (wordWeight=%d.%d pronWeight=%d.%d)", *a4, a4[1], WORD2(v25), HIWORD(v25), v25, WORD1(v25));
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    [2] apply token rules", 0);
    v28 = v22;
    v26 = 0;
    v27 = 1;
    *v29 = 0;
    v17 = *(a1 + 184);
    if (*(v17 + 40 * v11 + 16))
    {
      v18 = 0;
      v19 = 8;
      while (1)
      {
        matched = matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(v17 + 40 * v11 + 8) + v19 - 8, &v27, &v26, a5);
        if ((matched & 0x80000000) != 0)
        {
          break;
        }

        if (v26 == 1)
        {
          matched = logPANDPRULE_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), (a1 + 8), (*(*(a1 + 184) + 40 * v11 + 8) + v19));
          if ((matched & 0x80000000) == 0)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    FIRED : ruleset %d, idx %d <%s> bndWeight=%d.%d", v23, v18, *(a1 + 1088), *a5, a5[1]);
            cstdlib_strcpy(*(a1 + 1088), "");
          }

          return matched;
        }

        ++v18;
        v17 = *(a1 + 184);
        v19 += 32;
        if (v18 >= *(v17 + 40 * v11 + 16))
        {
          if (v26)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    no token rules fire.", 0);
LABEL_17:
      if (v22 + 1 == a3)
      {
        FLOATSUR_SET_INT(a5, *(a1 + 176), 0);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    END token word; set TOKENENDWORDBNDWEIGHT bndWeight=%d.%d", *a5, a5[1]);
      }

      else
      {
        FLOATSUR_SET_INT(a5, 0, 0);
      }
    }
  }

  return matched;
}

uint64_t getPhrasingForToken(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v6 = *(a1[84] + 224 * a3 + 56) + 32 * *(a1 + 15);
  v7 = *(v6 + 16);
  v8 = *(v6 + 10);
  FLOATSUR_SET_INT(&v21 + 2, 0, 0);
  FLOATSUR_SET_INT(&v21, 0, 0);
  TokenRuleset = getTokenRuleset(a1, v3, &v20, &v19);
  if ((TokenRuleset & 0x80000000) != 0)
  {
    return TokenRuleset;
  }

  v10 = *(*a1 + 32);
  if (v20 == 1)
  {
    v11 = v8 + 1;
    v12 = v19;
    log_OutText(v10, "FE_PHRASING", 5, 0, "  using token rule set %d (for %s)", v19, v7);
    v13 = v11 - v3;
    v14 = v3;
    do
    {
      v15 = v3;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  doing token word[%d]=%s", v3, *(*(a1[84] + 224 * v3 + 16) + 8 * *(a1 + 12)));
      v16 = handleTokenWord(a1, v3, v11, &v21 + 2, &v21, v12);
      if ((v16 & 0x80000000) != 0)
      {
        break;
      }

      if (FLOATSUR_GT_INT(&v21, 0, 0))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add token node %d,%d", v14, v3 + 1);
        v16 = addNode(*a1, a2, v14, v3 + 1, 2, v13);
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }

        *(*a2 + 32 * *(a2 + 8) - 24) = HIDWORD(v21);
        v17 = *a2 + 32 * *(a2 + 8);
        *(v17 - 12) = 1;
        *(v17 - 20) = v21;
        FLOATSUR_SET_INT(&v21 + 2, 0, 0);
        FLOATSUR_SET_INT(&v21, 0, 0);
        v14 = v3 + 1;
      }

      ++v3;
    }

    while ((v15 + 1) < v11);
  }

  else
  {
    log_OutText(v10, "FE_PHRASING", 5, 0, "  no rules match for token type =%s", v7);
    return 2315264000;
  }

  return v16;
}

uint64_t assignTokenPOS(uint64_t a1)
{
  v22 = 0;
  v1 = *(a1 + 680);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  matched = 0;
  memset(v21, 0, sizeof(v21));
  v5 = *(a1 + 672);
  while (1)
  {
    v6 = v3;
    v7 = *(v5 + 224 * v3 + 56);
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 30);
    if (*(v7 + 32 * v8) != 1)
    {
      goto LABEL_7;
    }

    v9 = *(*(v5 + 224 * v3 + 56) + 32 * v8 + 10);
    if (v9 >= v3)
    {
      break;
    }

LABEL_6:
    v3 = v9;
LABEL_7:
    if (++v3 >= v1)
    {
      return matched;
    }
  }

  while (1)
  {
    v22 = 0;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get token POS for %s", *(*(v5 + 224 * v3 + 16) + 8 * *(a1 + 24)));
    if (!v22)
    {
      if (*(a1 + 128))
      {
        break;
      }
    }

LABEL_10:
    ++v3;
    v5 = *(a1 + 672);
    v9 = *(*(v5 + 224 * v6 + 56) + 32 * *(a1 + 30) + 10);
    if (v9 < v3)
    {
      v1 = *(a1 + 680);
      goto LABEL_6;
    }
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    *&v21[4] = v3;
    *v21 = 1;
    *&v21[6] = 0;
    matched = matchMAPRULE2STR_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(a1 + 120) + v10, v21, &v22);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v12 = v22;
    if (v22 == 1)
    {
      v13 = 224 * v3;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "POS tagging rule %d FIRED (word %d) %s -> %s", v11, v3, *(*(*(a1 + 672) + v13 + 16) + 8 * *(a1 + 26)), (*(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 120) + v10))));
      v14 = *(a1 + 672);
      if (!*(v14 + v13 + 88))
      {
        v15 = cstdlib_strcmp("UNK", (*(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 120) + v10))));
        v14 = *(a1 + 672);
        if (!v15)
        {
          v16 = *(*a1 + 8);
          v17 = cstdlib_strlen(*(*(v14 + v13 + 16) + 8 * *(a1 + 26)));
          v18 = heap_Calloc(v16, 1, v17 + 1);
          v19 = *(a1 + 672);
          *(v19 + v13 + 88) = v18;
          if (!v18)
          {
            log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
            return 2315264010;
          }

          cstdlib_strcpy(v18, *(*(v19 + 224 * v3 + 16) + 8 * *(a1 + 26)));
          v14 = *(a1 + 672);
        }
      }

      matched = doMapStr(*a1, (*(v14 + 224 * v3 + 16) + 8 * *(a1 + 26)), (*(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 120) + v10))));
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      v12 = v22;
    }

    if (!v12)
    {
      ++v11;
      v10 += 32;
      if (v11 < *(a1 + 128))
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

uint64_t assignTokenTags(uint64_t *a1)
{
  v21 = 0;
  v20 = 0;
  v1 = *(a1 + 340);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  memset(v19, 0, 12);
  v5 = a1[84];
  while (1)
  {
    v6 = v3;
    v7 = *(v5 + 224 * v3 + 56);
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 15);
    if (*(v7 + 32 * v8) != 1)
    {
      goto LABEL_7;
    }

    v9 = *(*(v5 + 224 * v3 + 56) + 32 * v8 + 10);
    if (v9 >= v3)
    {
      break;
    }

LABEL_6:
    v3 = v9;
LABEL_7:
    if (++v3 >= v1)
    {
      return v4;
    }
  }

  while (1)
  {
    v21 = 0;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get token tag for word %d %s", v3, *(*(v5 + 224 * v3 + 16) + 8 * *(a1 + 12)));
    if (!v21)
    {
      v10 = 0;
      while (v10 < *(a1 + 76))
      {
        if (*(a1[18] + 4 * v10) == 1)
        {
          WORD2(v19[0]) = v3;
          LODWORD(v19[0]) = 1;
          *(v19 + 6) = 0;
          matched = matchMMAPREGEX2STR_TRule(a1 + 4, (a1 + 84), *(a1[17] + 8 * v10), v19, &v21, &v20);
        }

        else
        {
          matched = matchMAPSTRSTR_TRule((a1 + 1), a1 + 84, *(a1[17] + 8 * v10), v19, &v21);
        }

        v4 = matched;
        if ((matched & 0x80000000) != 0)
        {
          return v4;
        }

        v12 = v21;
        if (v21 == 1)
        {
          v13 = *(*a1 + 32);
          if (*(a1[18] + 4 * v10) == 1)
          {
            log_OutText(v13, "FE_PHRASING", 5, 0, "regex rule %d FIRED %s -> %s", v20, *(*(a1[84] + 224 * v3 + 16) + 8 * *(a1 + 12)), (a1[67] + *(a1[68] + 4 * *(*(a1[17] + 8 * v10) + 8))));
            v14 = *a1;
            v15 = a1[67];
            v16 = a1[68];
            v17 = *(*(a1[17] + 8 * v10) + 8);
          }

          else
          {
            log_OutText(v13, "FE_PHRASING", 5, 0, "normal rule FIRED %s -> %s", *(*(a1[84] + 224 * v3 + 16) + 8 * *(a1 + 12)), (a1[67] + *(a1[68] + 4 * *(*(a1[17] + 8 * v10) + 4))));
            v14 = *a1;
            v15 = a1[67];
            v16 = a1[68];
            v17 = *(*(a1[17] + 8 * v10) + 4);
          }

          v4 = addTokenTag(v14, v3, (v15 + *(v16 + 4 * v17)), (a1 + 1), a1 + 84);
          if ((v4 & 0x80000000) != 0)
          {
            return v4;
          }

          v12 = v21;
        }

        ++v10;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "no matches found");
      v4 = addTokenTag(*a1, v3, "UNK", (a1 + 1), a1 + 84);
      if ((v4 & 0x80000000) != 0)
      {
        return v4;
      }
    }

LABEL_10:
    ++v3;
    v5 = a1[84];
    v9 = *(*(v5 + 224 * v6 + 56) + 32 * *(a1 + 15) + 10);
    if (v9 < v3)
    {
      v1 = *(a1 + 340);
      goto LABEL_6;
    }
  }
}

uint64_t extendPHRContainingTokenTags(uint64_t a1)
{
  if (!*(a1 + 680))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 0;
  v8 = *(a1 + 672);
  while (1)
  {
    v9 = *(v8 + 224 * v2 + 56);
    if (!v9)
    {
      goto LABEL_47;
    }

    v10 = v9 + 32 * *(a1 + 32);
    if (*v10 == 1)
    {
      v6 = *(v10 + 10);
      v11 = *(v10 + 8);
      v7 = v2;
      if (v11 >= v6)
      {
        v5 = 0;
      }

      else
      {
        v5 = 0;
        v12 = (v8 + 224 * v11 + 56);
        v13 = v6 - v11;
        do
        {
          if (*v12 && *(*v12 + 32 * *(a1 + 30)) == 1)
          {
            ++v5;
          }

          v12 += 28;
          --v13;
        }

        while (v13);
      }

      v4 = 0;
    }

    v14 = *(a1 + 30);
    v15 = v9 + 32 * v14;
    if (!*(v15 + 16))
    {
      goto LABEL_47;
    }

    v16 = v4 + 1;
    v17 = v4 || v2 == v7;
    v18 = !v17;
    v19 = *(v15 + 10);
    v20 = *(v8 + 224 * *(v15 + 10) + 56);
    if (!v20)
    {
      break;
    }

    v22 = *(v20 + 32 * v14 + 4) != 1 || v16 != v5 || v19 >= v6;
    v23 = !v22;
    if (!v22 && v18)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Left and Right", v3);
      v25 = *(a1 + 672);
      v26 = *(a1 + 30);
      v27 = *(v25 + 224 * v2 + 56) + 32 * v26;
      *v27 = 0;
      *(*(v25 + 224 * v19 + 56) + 32 * v26 + 4) = 0;
      v28 = *(v25 + 224 * v7 + 56) + 32 * v26;
      *v28 = 1;
      *(v28 + 8) = v7;
      *(v28 + 10) = v6;
      *(v28 + 24) = 1;
      v29 = *(*a1 + 8);
      v30 = cstdlib_strlen(*(v27 + 16));
      v31 = heap_Calloc(v29, 1, (v30 + 1));
      v32 = *(a1 + 672);
      v33 = *(a1 + 30);
      *(*(v32 + 224 * v7 + 56) + 32 * v33 + 16) = v31;
      if (!v31)
      {
        goto LABEL_50;
      }

      cstdlib_strcpy(v31, *(*(v32 + 224 * v2 + 56) + 32 * v33 + 16));
      heap_Free(*(*a1 + 8), *(*(*(a1 + 672) + 224 * v2 + 56) + 32 * *(a1 + 30) + 16));
      v8 = *(a1 + 672);
      v34 = *(a1 + 30);
      *(*(v8 + 224 * v2 + 56) + 32 * v34 + 16) = 0;
      v35 = *(v8 + 224 * v6 + 56) + 32 * v34;
      v4 = 1;
      *(v35 + 4) = 1;
      *(v35 + 8) = v7;
    }

    else
    {
      if (v18)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
LABEL_46:
        v4 = v16;
        goto LABEL_47;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Right", v3);
      v8 = *(a1 + 672);
      v46 = *(a1 + 30);
      *(*(v8 + 224 * v19 + 56) + 32 * v46 + 4) = 0;
      v47 = *(v8 + 224 * v2 + 56) + 32 * v46;
      *(v47 + 10) = v6;
      *(v47 + 24) = 1;
      v48 = *(v8 + 224 * v6 + 56) + 32 * v46;
      *(v48 + 4) = 1;
      *(v48 + 8) = *(v47 + 8);
      v4 = v5;
    }

LABEL_47:
    v3 = ++v2;
    if (v2 >= *(a1 + 680))
    {
      return 0;
    }
  }

  if (!v18)
  {
    goto LABEL_46;
  }

LABEL_40:
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Left", v3);
  v8 = *(a1 + 672);
  v36 = *(v8 + 224 * v2 + 56);
  v37 = *(a1 + 30);
  *(v36 + 32 * v37) = 0;
  v38 = *(v8 + 224 * v7 + 56);
  if (!v38)
  {
LABEL_43:
    *(*(v8 + 224 * *(v36 + 32 * v37 + 10) + 56) + 32 * v37 + 8) = v7;
    v4 = 1;
    goto LABEL_47;
  }

  v39 = v38 + 32 * v37;
  *v39 = 1;
  *(v39 + 8) = v7;
  v40 = v36 + 32 * v37;
  *(v39 + 10) = *(v40 + 10);
  *(v39 + 24) = 1;
  v41 = *(*a1 + 8);
  v42 = cstdlib_strlen(*(v40 + 16));
  v43 = heap_Calloc(v41, 1, (v42 + 1));
  v44 = *(a1 + 672);
  v45 = *(a1 + 30);
  *(*(v44 + 224 * v7 + 56) + 32 * v45 + 16) = v43;
  if (v43)
  {
    cstdlib_strcpy(v43, *(*(v44 + 224 * v2 + 56) + 32 * v45 + 16));
    heap_Free(*(*a1 + 8), *(*(*(a1 + 672) + 224 * v2 + 56) + 32 * *(a1 + 30) + 16));
    v8 = *(a1 + 672);
    v36 = *(v8 + 224 * v2 + 56);
    v37 = *(a1 + 30);
    *(v36 + 32 * v37 + 16) = 0;
    goto LABEL_43;
  }

LABEL_50:
  log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t annotateTokenTypeOnEachWord(uint64_t a1)
{
  v1 = *(a1 + 680);
  if (*(a1 + 680))
  {
    v2 = 0;
    v3 = (*(a1 + 672) + 104);
    do
    {
      v4 = *(v3 - 6);
      if (v4)
      {
        v5 = v4 + 32 * *(a1 + 30);
        if (*v5 == 1)
        {
          v2 = *(v5 + 16);
        }

        *v3 = v2;
        if (*(v5 + 4) == 1)
        {
          v2 = 0;
        }
      }

      else
      {
        *v3 = v2;
      }

      v3 += 28;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t load_pw_igtree_cfg(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  v9 = -1;
  v8 = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "statbnd_pw_igtree", &v10, &v9, &v8);
  if ((v5 & 0x80000000) == 0 && v9 == 1)
  {
    v6 = *v10;
    v6[cstdlib_strlen(*v10) - 1] = 0;
    if (!cstdlib_strcmp(*v10, "yes"))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t load_pw_igtree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  *v14 = 0;
  *a4 = 0;
  BrokerString = nn_model_getBrokerString(a3, v15, "pwigtree_", 0x100uLL);
  if ((BrokerString & 0x80000000) != 0 || (BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v15, "IGTR", 1031, v14), (BrokerString & 0x80000000) != 0))
  {
    v10 = BrokerString;
  }

  else
  {
    v9 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v9;
    if (v9)
    {
      v10 = igtree_Init(a1, a2, *v14, v9);
      ssftriff_reader_CloseChunk(*v14);
      if ((v10 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v14);
        v10 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0);
      v10 = 2315264010;
    }
  }

  if (*v14)
  {
    v11 = ssftriff_reader_ObjClose(*v14);
    if (v11 >= 0 || v10 <= -1)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return v10;
}

uint64_t hlp_igtree_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 65);
    *a2 = v6;
    if (!v6)
    {
      break;
    }

    cstdlib_strcpy(v6, "=");
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t hlp_igtree_freeFeatureVector(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      if (*a2)
      {
        heap_Free(*(a1 + 8), *a2);
        *a2 = 0;
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t hlp_resizeFeature(uint64_t a1, uint64_t *a2, char *__s)
{
  v5 = cstdlib_strlen(__s);
  v6 = heap_Realloc(*(a1 + 8), *a2, (v5 + 1));
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a2 = v7;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return result;
}

uint64_t hlp_igtree_setFeature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v14 = -1;
  result = hlp_igtree_isFeatureRequired(a2, a3, a4, &v14);
  if (result)
  {
    if (!cstdlib_strcmp(a6, ""))
    {
      v12 = *(a5 + 8 * v14);
      v13 = "=";
      goto LABEL_7;
    }

    v10 = cstdlib_strlen(a6);
    v11 = v14;
    if (v10 < 0x41 || (result = hlp_resizeFeature(a1, (a5 + 8 * v14), a6), (result & 0x80000000) == 0))
    {
      v12 = *(a5 + 8 * v11);
      v13 = a6;
LABEL_7:
      cstdlib_strcpy(v12, v13);
      return 0;
    }
  }

  return result;
}

uint64_t hlp_igtree_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_2[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

char *feat_wordlength(uint64_t a1, unsigned int a2, int a3, int a4, char *__src, char *a6)
{
  *a6 = 0;
  if (a4 + a3 < a2)
  {
    return sprintf(a6, "%d", *(a1 + 40 * (a4 + a3) + 26));
  }

  return cstdlib_strcpy(a6, __src);
}

uint64_t hlp_igtree_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v73 = 0;
  v14 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v14)
  {
    v15 = v14;
    v72 = a7;
    if (a4 < 2)
    {
      goto LABEL_101;
    }

    v16 = 0;
    v17 = (a4 - 1);
    while (cstdlib_strcmp(*(a3 + 8 * v16), "word"))
    {
      if (v17 == ++v16)
      {
        goto LABEL_12;
      }
    }

    v73 = v16;
    if (v72 >= a6)
    {
      v19 = "=";
    }

    else
    {
      v19 = *(a5 + 40 * v72);
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 0, a2, v19);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_12:
    v21 = 0;
    v22 = v17 <= 1 ? 1 : (a4 - 1);
    while (cstdlib_strcmp(*(a3 + 8 * v21), "lword"))
    {
      if (v22 == ++v21)
      {
        goto LABEL_22;
      }
    }

    v73 = v21;
    if (v72 - 1 >= a6)
    {
      v23 = "=";
    }

    else
    {
      v23 = *(a5 + 40 * (v72 - 1));
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 1, a2, v23);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_22:
    v24 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v24), "llword"))
    {
      if (v22 == ++v24)
      {
        goto LABEL_30;
      }
    }

    v73 = v24;
    if (v72 - 2 >= a6)
    {
      v25 = "=";
    }

    else
    {
      v25 = *(a5 + 40 * (v72 - 2));
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 2, a2, v25);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_30:
    v26 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v26), "rword"))
    {
      if (v22 == ++v26)
      {
        goto LABEL_38;
      }
    }

    v73 = v26;
    if (v72 + 1 >= a6)
    {
      v27 = "=";
    }

    else
    {
      v27 = *(a5 + 40 * (v72 + 1));
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 3, a2, v27);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_38:
    v28 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v28), "rrword"))
    {
      if (v22 == ++v28)
      {
        goto LABEL_46;
      }
    }

    v73 = v28;
    if (v72 + 2 >= a6)
    {
      v29 = "=";
    }

    else
    {
      v29 = *(a5 + 40 * (v72 + 2));
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 4, a2, v29);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_46:
    v30 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v30), "wordlen"))
    {
      if (v22 == ++v30)
      {
        goto LABEL_51;
      }
    }

    v73 = v30;
    feat_wordlength(a5, a6, v72, 0, "=", v15);
    v20 = hlp_igtree_setFeature(a1, a3, a4, 5, a2, v15);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_51:
    v31 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v31), "lwordlen"))
    {
      if (v22 == ++v31)
      {
        goto LABEL_56;
      }
    }

    v73 = v31;
    feat_wordlength(a5, a6, v72, -1, "=", v15);
    v20 = hlp_igtree_setFeature(a1, a3, a4, 6, a2, v15);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_56:
    v32 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v32), "rwordlen"))
    {
      if (v22 == ++v32)
      {
        goto LABEL_61;
      }
    }

    v73 = v32;
    feat_wordlength(a5, a6, v72, 1, "=", v15);
    v20 = hlp_igtree_setFeature(a1, a3, a4, 7, a2, v15);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_61:
    v33 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v33), "pos"))
    {
      if (v22 == ++v33)
      {
        goto LABEL_69;
      }
    }

    v73 = v33;
    if (v72 >= a6)
    {
      v34 = "=";
    }

    else
    {
      v34 = *(a5 + 40 * v72 + 8);
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 8, a2, v34);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_69:
    v35 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v35), "lpos"))
    {
      if (v22 == ++v35)
      {
        goto LABEL_77;
      }
    }

    v73 = v35;
    if (v72 - 1 >= a6)
    {
      v36 = "=";
    }

    else
    {
      v36 = *(a5 + 40 * (v72 - 1) + 8);
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 9, a2, v36);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_77:
    v37 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v37), "llpos"))
    {
      if (v22 == ++v37)
      {
        goto LABEL_85;
      }
    }

    v73 = v37;
    if (v72 - 2 >= a6)
    {
      v38 = "=";
    }

    else
    {
      v38 = *(a5 + 40 * (v72 - 2) + 8);
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 10, a2, v38);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_85:
    v39 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v39), "rpos"))
    {
      if (v22 == ++v39)
      {
        goto LABEL_93;
      }
    }

    v73 = v39;
    if (v72 + 1 >= a6)
    {
      v40 = "=";
    }

    else
    {
      v40 = *(a5 + 40 * (v72 + 1) + 8);
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 11, a2, v40);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_93:
    v41 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v41), "rrpos"))
    {
      if (v22 == ++v41)
      {
        goto LABEL_101;
      }
    }

    v73 = v41;
    v42 = v72 + 2 >= a6 ? "=" : *(a5 + 40 * (v72 + 2) + 8);
    v20 = hlp_igtree_setFeature(a1, a3, a4, 12, a2, v42);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_101:
      v43 = v72;
      if (!hlp_igtree_isFeatureRequired(a3, a4, 13, &v73) || (v44 = feat_char(a5, v72, 0, v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 13, a2, v44), (v20 & 0x80000000) == 0))
      {
        if (!hlp_igtree_isFeatureRequired(a3, a4, 15, &v73) || (v45 = feat_char(a5, v72, 1, v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 15, a2, v45), (v20 & 0x80000000) == 0))
        {
          if (!hlp_igtree_isFeatureRequired(a3, a4, 14, &v73) || (v46 = feat_char(a5, v72, -1, v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 14, a2, v46), (v20 & 0x80000000) == 0))
          {
            if (!hlp_igtree_isFeatureRequired(a3, a4, 16, &v73) || (v47 = feat_char(a5, v72, -2, v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 16, a2, v47), (v20 & 0x80000000) == 0))
            {
              if (!hlp_igtree_isFeatureRequired(a3, a4, 17, &v73) || (v48 = feat_matchprevpos_0(a5, v72, "n"), v20 = hlp_igtree_setFeature(a1, a3, a4, 17, a2, v48), (v20 & 0x80000000) == 0))
              {
                if (!hlp_igtree_isFeatureRequired(a3, a4, 18, &v73) || (v49 = feat_matchprevpos_0(a5, v72, "v"), v20 = hlp_igtree_setFeature(a1, a3, a4, 18, a2, v49), (v20 & 0x80000000) == 0))
                {
                  v71 = a2;
                  if (!hlp_igtree_isFeatureRequired(a3, a4, 19, &v73))
                  {
                    goto LABEL_184;
                  }

                  v50 = v72;
                  while (a6 > ++v50)
                  {
                    v51 = a5 + 40 * v50;
                    if (!cstdlib_strncmp(*(v51 + 8), "n", 1uLL))
                    {
                      v52 = *v51;
                      goto LABEL_119;
                    }
                  }

                  v52 = "=";
LABEL_119:
                  a2 = v71;
                  v20 = hlp_igtree_setFeature(a1, a3, a4, 19, v71, v52);
                  v43 = v72;
                  if ((v20 & 0x80000000) == 0)
                  {
LABEL_184:
                    if (!hlp_igtree_isFeatureRequired(a3, a4, 19, &v73))
                    {
                      goto LABEL_183;
                    }

                    v53 = v43;
                    while (a6 > ++v53)
                    {
                      v54 = a5 + 40 * v53;
                      if (!cstdlib_strncmp(*(v54 + 8), "v", 1uLL))
                      {
                        v55 = *v54;
                        goto LABEL_126;
                      }
                    }

                    v55 = "=";
LABEL_126:
                    a2 = v71;
                    v20 = hlp_igtree_setFeature(a1, a3, a4, 20, v71, v55);
                    v43 = v72;
                    if ((v20 & 0x80000000) == 0)
                    {
LABEL_183:
                      if (!hlp_igtree_isFeatureRequired(a3, a4, 21, &v73) || (v43 >= a6 ? (v57 = "=") : ((v15[1] = 0, *(a5 + 40 * v43 + 26) > 5u) ? (v56 = 48) : (v56 = 49), *v15 = v56, v57 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 21, a2, v57), (v20 & 0x80000000) == 0))
                      {
                        if (!hlp_igtree_isFeatureRequired(a3, a4, 22, &v73) || (v43 >= a6 ? (v59 = "=") : ((v15[1] = 0, *(a5 + 40 * v43 + 26) < 2u) ? (v58 = 48) : (v58 = 49), *v15 = v58, v59 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 22, a2, v59), (v20 & 0x80000000) == 0))
                        {
                          if (!hlp_igtree_isFeatureRequired(a3, a4, 23, &v73) || (v43 - 1 >= a6 ? (v61 = "=") : ((v15[1] = 0, *(a5 + 40 * (v43 - 1) + 26) > 5u) ? (v60 = 48) : (v60 = 49), *v15 = v60, v61 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 23, a2, v61), (v20 & 0x80000000) == 0))
                          {
                            if (!hlp_igtree_isFeatureRequired(a3, a4, 24, &v73) || (v43 - 1 >= a6 ? (v63 = "=") : ((v15[1] = 0, *(a5 + 40 * (v43 - 1) + 26) < 2u) ? (v62 = 48) : (v62 = 49), *v15 = v62, v63 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 24, a2, v63), (v20 & 0x80000000) == 0))
                            {
                              if (!hlp_igtree_isFeatureRequired(a3, a4, 25, &v73) || (v43 + 1 >= a6 ? (v65 = "=") : ((v15[1] = 0, *(a5 + 40 * (v43 + 1) + 26) > 5u) ? (v64 = 48) : (v64 = 49), *v15 = v64, v65 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 25, a2, v65), (v20 & 0x80000000) == 0))
                              {
                                if (!hlp_igtree_isFeatureRequired(a3, a4, 26, &v73) || (v43 + 1 >= a6 ? (v67 = "=") : ((v15[1] = 0, *(a5 + 40 * (v43 + 1) + 26) < 2u) ? (v66 = 48) : (v66 = 49), *v15 = v66, v67 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 26, a2, v67), (v20 & 0x80000000) == 0))
                                {
                                  v68 = 0;
                                  v69 = v73;
                                  do
                                  {
                                    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "igtree feature %s", *(a2 + 8 * v68));
                                    v18 = 0;
                                    ++v68;
                                  }

                                  while (v69 >= v68);
                                  goto LABEL_179;
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

LABEL_178:
    v18 = v20;
LABEL_179:
    heap_Free(*(a1 + 8), v15);
    return v18;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

char *feat_char(uint64_t a1, unsigned int a2, int a3, char *a4)
{
  v5 = a3;
  v6 = *(a1 + 40 * a2 + 26);
  if (a3 < 0)
  {
    if (((v6 + a3) & 0x8000) != 0)
    {
      return "=";
    }

    v5 = (v6 + a3);
  }

  if (v6 <= v5)
  {
    return "=";
  }

  v7 = 0;
  v8 = (a1 + 40 * a2);
  do
  {
    utf8_getUTF8Char(*v8, v7, a4);
    v7 += cstdlib_strlen(a4);
  }

  while (v5-- != 0);
  return a4;
}

const char *feat_matchprevpos_0(uint64_t a1, unsigned int a2, char *__s2)
{
  if (!a2)
  {
    return "=";
  }

  v5 = a2 - 2;
  v6 = a2 - 1;
  v7 = "=";
  while (v6)
  {
    v8 = (a1 + 40 * v5--);
    --v6;
    if (!cstdlib_strncmp(v8[1], __s2, 1uLL))
    {
      return *v8;
    }
  }

  return v7;
}

uint64_t pandpIgtreeInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v14 = IgtreeContextInit(a1, a2, a3, a4, a5, a6, a7 + 7, "igtree2ps");
  if (v14 < 0)
  {
    goto LABEL_5;
  }

  if (a7[8])
  {
    v14 = IgtreeContextInit(a1, a2, a3, a4, a5, a6, a7 + 14, "igtree2pw");
    if ((v14 & 0x80000000) == 0)
    {
      v15 = "igtreexsh";
      v16 = a7 + 21;
      v17 = a1;
      v18 = a2;
      v19 = a3;
      v20 = a4;
      v21 = a5;
      v22 = a6;
      goto LABEL_7;
    }

LABEL_5:
    v23 = v14;
    pandpIgtreeDeinit(a5, a6, a7);
    return v23 | 0x8A002000;
  }

  v15 = "igtree1p";
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v16 = a7;
LABEL_7:
  v24 = IgtreeContextInit(v17, v18, v19, v20, v21, v22, v16, v15);
  if ((v24 & 0x80000000) != 0)
  {
    pandpIgtreeDeinit(a5, a6, a7);
    return v24 | 0x8A002000;
  }

  return v24;
}

uint64_t IgtreeContextInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *__s1)
{
  __s1a = 0;
  *a7 = __s1;
  a7[3] = 0;
  a7[5] = 0;
  a7[6] = 0;
  if (cstdlib_strcmp(__s1, "igtree2ps"))
  {
    v16 = 1;
  }

  else
  {
    v16 = 1;
    if ((paramc_ParamGetStr(*(a5 + 40), "compatstrongbnd", &__s1a) & 0x80000000) == 0 && __s1a && !cstdlib_strcmp(__s1a, "yes"))
    {
      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "<%s> disables voice-dependent strong BND model", "compatstrongbnd");
      v16 = 0;
    }
  }

  if ((paramc_ParamGetStr(*(a5 + 40), "basicclcprosody", &__s1a) & 0x80000000) != 0 || !__s1a || cstdlib_strcmp(__s1a, "yes"))
  {
    if (v16)
    {
      v17 = tryLoadingIgtreeModel(a1, a2, a3, a4, a5, a7, __s1, 1);
      if (v17 < 0)
      {
        return v17 | 0x8A002000;
      }
    }
  }

  else
  {
    log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "<%s> disables voice-dependent %s", "basicclcprosody", __s1);
  }

  v18 = a7[1];
  if (v18)
  {
    goto LABEL_15;
  }

  v17 = tryLoadingIgtreeModel(a1, a2, a3, a4, a5, a7, __s1, 0);
  if (v17 < 0)
  {
    return v17 | 0x8A002000;
  }

  v18 = a7[1];
  if (v18)
  {
LABEL_15:
    a7[2] = 0;
    v19 = *(v18 + 1312);
    v20 = *(v18 + 1296);
    v21 = v20 - 1;
    v22 = heap_Calloc(*(a5 + 8), (v20 - 1), 8);
    a7[2] = v22;
    if (v22)
    {
      v37 = a6;
      if (!v21)
      {
LABEL_25:
        a7[3] = "";
        *(a7 + 8) = 1;
        v28 = a7[1];
        if (v28 && *(v28 + 1328) && *(v28 + 1336))
        {
          v29 = 0;
          do
          {
            v30 = v29;
            v31 = 16 * v29;
            v32 = cstdlib_strcmp("orth_top200", *(*(v28 + 1328) + v31));
            v33 = *(a7[1] + 1328);
            if (v32)
            {
              if (!cstdlib_strcmp("bnd1_dist_min", *(v33 + v31)))
              {
                v34 = cstdlib_strtol(*(*(a7[1] + 1328) + 16 * v30 + 8), 0, 10);
                if (v34 < 1)
                {
                  log_OutText(*(a5 + 32), "FE_PHRASING", 1, 0, "readIgtreeParams: ignore invalid bnd1_dist_min value %s", *(*(a7[1] + 1328) + 16 * v30 + 8));
                }

                else
                {
                  *(a7 + 8) = v34;
                }
              }
            }

            else
            {
              a7[3] = *(v33 + 16 * v30 + 8);
            }

            v29 = v30 + 1;
            v28 = a7[1];
          }

          while (*(v28 + 1336) > (v30 + 1));
        }

        return 0;
      }

      v23 = 0;
      while (1)
      {
        *(v22 + 8 * v23) = 0;
        v24 = &off_287EEC160;
        v25 = "pos_current";
        v26 = v23;
        while (cstdlib_strcmp(v25, *(v19 + 8 * v26)))
        {
          v27 = *v24;
          v24 += 2;
          v25 = v27;
          if (!v27)
          {
            goto LABEL_23;
          }
        }

        log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "traceFeatureMap %s [%d] => %s", *a7, v26, v25);
        *(a7[2] + 8 * v26) = *(v24 - 1);
LABEL_23:
        v22 = a7[2];
        if (!*(v22 + 8 * v26))
        {
          break;
        }

        v23 = (v26 + 1);
        if (v23 >= v21)
        {
          goto LABEL_25;
        }
      }

      log_OutText(*(a5 + 32), "FE_PHRASING", 0, 0, "no implementation for feature[%d] => %s", v26, *(v19 + 8 * v26));
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37001, "%s%s", "unimplemented feature", *(v19 + 8 * v26));
      heap_Free(*(a5 + 8), a7[2]);
      a7[2] = 0;
      v35 = 2315264025;
      a6 = v37;
    }

    else
    {
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0);
      v35 = 2315264010;
    }

    IgtreeContextDeinit(a5, a6, a7);
    return v35;
  }

  return 0;
}

void *pandpIgtreeDeinit(void *a1, uint64_t a2, void *a3)
{
  IgtreeContextDeinit(a1, a2, a3);
  IgtreeContextDeinit(a1, a2, a3 + 7);
  IgtreeContextDeinit(a1, a2, a3 + 14);

  return IgtreeContextDeinit(a1, a2, a3 + 21);
}

void *IgtreeContextDeinit(void *result, uint64_t a2, void *a3)
{
  v4 = result;
  *a3 = 0;
  a3[3] = 0;
  v5 = a3[1];
  if (v5)
  {
    result = igtree_Deinit_ReadOnly_DereferenceCnt(result, a2, v5);
    a3[1] = 0;
  }

  v6 = a3[2];
  if (v6)
  {
    result = heap_Free(v4[1], v6);
    a3[2] = 0;
  }

  a3[3] = 0;
  a3[5] = 0;
  a3[6] = 0;
  return result;
}

uint64_t singlePassIgtreePhrasing(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v23 = 0;
  v5 = *(a5[1] + 1296);
  v24 = 0;
  if (*(a2 + 8) < 2u)
  {
    return 0;
  }

  v25 = 0;
  v21 = v5 - 1;
  v11 = allocateFeatureVector(a1, (v5 - 1), &v25, &v24);
  if (v11 < 0)
  {
    return v11 | 0x8A002000;
  }

  a5[5] = a3;
  a5[6] = a4;
  v12 = v25;
  if (*(a2 + 8) >= 2u)
  {
    v6 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *a2 + 32 * v13;
      if (*(v14 + 4) == 2 && *(v14 + 36) == 2)
      {
        goto LABEL_23;
      }

      v15 = *(v14 + 2) - 1;
      if (v21)
      {
        v16 = 0;
        do
        {
          (*(a5[2] + v16 * 8))(a5, v15, v12[v16], 128);
          ++v16;
        }

        while (v21 != v16);
      }

      v6 = igtree_Process(a5[1], v12, &v23);
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      v17 = "?";
      if ((*(*a3 + 224 * v15 + 75) - 1) <= 3u)
      {
        v17 = off_279DACC60[(*(*a3 + 224 * v15 + 75) - 1)];
      }

      v18 = v23;
      traceFeatureVector(a1, a5, v15, v12, v23, v17);
      if (!*(*a3 + 224 * v15 + 75))
      {
        v17 = v18;
      }

      if (!cstdlib_strcmp("1", v17))
      {
        break;
      }

      if (!cstdlib_strcmp("2", v17))
      {
        v19 = 3;
        goto LABEL_22;
      }

      if (!cstdlib_strcmp(".", v17))
      {
        v19 = 2;
LABEL_22:
        *(*a3 + 224 * v15 + 73) = v19;
      }

LABEL_23:
      if (*(a2 + 8) - 1 <= ++v13)
      {
        goto LABEL_27;
      }
    }

    v19 = 4;
    goto LABEL_22;
  }

  v6 = 0;
LABEL_27:
  heap_Free(*(a1 + 8), v12);
  heap_Free(*(a1 + 8), v24);
  return v6;
}

uint64_t allocateFeatureVector(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a2;
  v9 = heap_Calloc(*(a1 + 8), a2, 128);
  *a4 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = heap_Calloc(*(a1 + 8), v8, 8);
  *a3 = v10;
  if (!v10)
  {
    heap_Free(*(a1 + 8), *a4);
    *a4 = 0;
LABEL_8:
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  if (a2)
  {
    v11 = 0;
    do
    {
      *(*a3 + 8 * v11) = *a4 + (v11 << 7);
      ++v11;
    }

    while (v11 != v8);
  }

  return 0;
}

uint64_t traceFeatureVector(uint64_t a1, uint64_t a2, unsigned int a3, char **a4, const char *a5, const char *a6)
{
  v12 = (*(*(a2 + 8) + 1296) - 1);
  if (v12 >= 2)
  {
    v13 = 8 * v12;
    v14 = 8;
    do
    {
      cstdlib_strcat(*a4, " ");
      cstdlib_strcat(*a4, a4[v14 / 8]);
      v14 += 8;
    }

    while (v13 != v14);
  }

  return log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "traceFeatureVector %s [%02d] %-16s | %-44s | %s %s", *a2, a3, *(*(**(a2 + 40) + 224 * a3 + 16) + 8 * *(*(a2 + 48) + 16)), *a4, a6, a5);
}

uint64_t twoPassIgtreePhrasing(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v46 = 0;
  v47 = 0;
  if (*(a2 + 8) >= 2u)
  {
    v10 = *(a5[8] + 1296) - 1;
    v11 = a5[15];
    if (v11)
    {
      v12 = *(v11 + 1296) - 1;
      if (v12 > v10)
      {
        v10 = v12;
      }
    }

    v48 = 0;
    v13 = allocateFeatureVector(a1, v10, &v48, &v47);
    if (v13 < 0)
    {
      return v13 | 0x8A002000;
    }

    v14 = *(a5[8] + 1296);
    a5[12] = a3;
    a5[13] = a4;
    if (*(a2 + 8) < 2u)
    {
      v5 = 0;
      if (a5[15])
      {
        a5[19] = a3;
        a5[20] = a4;
      }
    }

    else
    {
      v41 = a4;
      v42 = a3;
      v5 = 0;
      v15 = 0;
      v16 = v48;
      v43 = (v14 - 1);
      do
      {
        v17 = *a2 + 32 * v15;
        if (*(v17 + 4) != 2 || *(v17 + 36) != 2)
        {
          v18 = *(v17 + 2) - 1;
          if (v43)
          {
            for (i = 0; i != v43; ++i)
            {
              (*(a5[9] + i * 8))(a5 + 7, v18, v16[i], 128);
            }
          }

          v5 = igtree_Process(a5[8], v16, &v46);
          if ((v5 & 0x80000000) == 0)
          {
            v20 = *(*a3 + 224 * v18 + 75) - 1;
            v21 = "?";
            if (v20 <= 3u)
            {
              v21 = off_279DACC80[v20];
            }

            v22 = v46;
            traceFeatureVector(a1, (a5 + 7), v18, v16, v46, v21);
            v23 = 224 * v18;
            if (*(*v42 + v23 + 75))
            {
              v24 = v21;
            }

            else
            {
              v24 = v22;
            }

            a3 = v42;
            if (cstdlib_strcmp("+", v24))
            {
              v25 = 2;
            }

            else
            {
              v25 = 4;
            }

            *(*v42 + v23 + 73) = v25;
          }
        }

        ++v15;
        v26 = *(a2 + 8);
      }

      while ((v26 - 1) > v15);
      v27 = a5[15];
      if (v27)
      {
        v28 = *(v27 + 1296);
        a5[19] = a3;
        a5[20] = v41;
        v29 = v48;
        if (v26 >= 2)
        {
          v30 = 0;
          v44 = (v28 - 1);
          do
          {
            v31 = *a2 + 32 * v30;
            if (*(v31 + 4) != 2 || *(v31 + 36) != 2)
            {
              v32 = (*(v31 + 2) - 1);
              v33 = *a3 + 224 * v32;
              if (*(v33 + 73) != 4 || *(v33 + 75) != 4)
              {
                if (v44)
                {
                  for (j = 0; j != v44; ++j)
                  {
                    (*(a5[16] + j * 8))(a5 + 14, v32, v29[j], 128);
                  }
                }

                v5 = igtree_Process(a5[15], v29, &v46);
                if ((v5 & 0x80000000) == 0)
                {
                  v35 = "?";
                  if ((*(*a3 + 224 * v32 + 75) - 1) <= 3u)
                  {
                    v35 = off_279DACCA0[(*(*a3 + 224 * v32 + 75) - 1)];
                  }

                  v36 = v46;
                  traceFeatureVector(a1, (a5 + 14), v32, v29, v46, v35);
                  a3 = v42;
                  if (*(*v42 + 224 * v32 + 73) != 4)
                  {
                    v37 = 224 * v32;
                    if (*(*v42 + v37 + 75))
                    {
                      v38 = v35;
                    }

                    else
                    {
                      v38 = v36;
                    }

                    if (cstdlib_strcmp("+", v38))
                    {
                      v39 = 2;
                    }

                    else
                    {
                      v39 = 3;
                    }

                    *(*v42 + v37 + 73) = v39;
                  }
                }
              }
            }

            ++v30;
          }

          while (*(a2 + 8) - 1 > v30);
        }

        goto LABEL_52;
      }
    }

    v29 = v48;
LABEL_52:
    heap_Free(*(a1 + 8), v29);
    heap_Free(*(a1 + 8), v47);
    return v5;
  }

  return 0;
}

uint64_t threePassIgtreePhrasing(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v32 = 0;
  v33 = 0;
  v10 = twoPassIgtreePhrasing(a1, a2, a3, a4, a5);
  if (v10 < 0)
  {
    return v10 | 0x8A002000;
  }

  v34 = 0;
  v10 = allocateFeatureVector(a1, (*(a5[22] + 1296) - 1), &v34, &v33);
  if (v10 < 0)
  {
    return v10 | 0x8A002000;
  }

  v29 = a1;
  v11 = *(a5[22] + 1296);
  a5[26] = a3;
  a5[27] = a4;
  LODWORD(v12) = *(v8 + 8);
  v13 = v34;
  if (*(v8 + 8))
  {
    v14 = 0;
    v15 = 0;
    v31 = 0;
    v30 = (v11 - 1);
    v28 = v8;
    while (1)
    {
      v16 = *a3;
      v17 = (*(*v8 + 32 * v14 + 2) - 1);
      v18 = *a3 + 224 * v17;
      if (*(v18 + 216) == 2)
      {
        *(v18 + 73) = 4;
      }

      if (v12 - 1 == v15 || *(v16 + 224 * v17 + 73) - 3 <= 1)
      {
        if (v30)
        {
          for (i = 0; i != v30; ++i)
          {
            (*(a5[23] + i * 8))(a5 + 21, v17, v13[i], 128);
          }
        }

        v31 = igtree_Process(a5[22], v13, &v32);
        if ((v31 & 0x80000000) == 0)
        {
          v20 = v32;
          if (*(*a3 + 224 * v17 + 120))
          {
            v21 = *(*a3 + 224 * v17 + 120);
          }

          else
          {
            v21 = "?";
          }

          traceFeatureVector(v29, (a5 + 21), v17, v13, v32, v21);
          v22 = *a3 + 224 * v17;
          v23 = *(v22 + 112);
          if (*(v22 + 120))
          {
            v20 = v21;
          }

          v24 = *(v29 + 8);
          v25 = cstdlib_strlen(v20);
          v26 = heap_Realloc(v24, v23, (v25 + 1));
          if (!v26)
          {
            log_OutPublic(*(v29 + 32), "FE_PHRASING", 37000, 0);
            return 2315264010;
          }

          *(*a3 + 224 * v17 + 112) = v26;
          cstdlib_strcpy(v26, v20);
          v8 = v28;
        }
      }

      ++v14;
      v12 = *(v8 + 8);
      v15 = v14;
      if (v14 >= v12)
      {
        goto LABEL_24;
      }
    }
  }

  v31 = 0;
LABEL_24:
  heap_Free(*(v29 + 8), v13);
  heap_Free(*(v29 + 8), v33);
  return v31;
}

uint64_t simplifiedTokenPhrasing(uint64_t a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  if (*(a2 + 4) >= 2u)
  {
    v23 = v4;
    v24 = v5;
    v10 = 0;
    v11 = 0;
    v12 = *a2;
    do
    {
      v22 = 0;
      v13 = v12 + 32 * v11;
      if (*(v13 + 4) == 2)
      {
        v14 = v12 + v10;
        if (*(v12 + v10 + 36) == 2)
        {
          v21 = 0;
          v19 = 0;
          v20 = 0;
          FLOATSUR_PLUS(&v21, a4 + 194, a4 + 196);
          FLOATSUR_PLUS(&v19, a4 + 192, &v21);
          FLOATSUR_TIMES(&v21, (v13 + 8), a4 + 192);
          FLOATSUR_TIMES(&v20 + 2, (v14 + 40), a4 + 194);
          FLOATSUR_TIMES(&v20, (v13 + 12), a4 + 196);
          FLOATSUR_PLUS(&v19 + 2, &v21, &v20 + 2);
          FLOATSUR_PLUS(&v19 + 2, &v19 + 2, &v20);
          FLOATSUR_DIV(&v21, &v19 + 2, &v19);
          FLOATSUR_TIMES_INT(&v22, &v21, 0xAu, 0);
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "bndVal[%d] = %d.%d (thisphraseWeight=%d.%d thisBndWeight=%d.%d nextphraseWeight=%d.%d)", v11, v22, HIWORD(v22), *(v13 + 8), *(v13 + 10), *(v13 + 12), *(v13 + 14), *(v14 + 40), *(v14 + 42));
          if (FLOATSUR_LT(&v22, a4 + 186))
          {
            v12 = *a2;
            v15 = *a3 + 224 * *(*a2 + 32 * v11 + 2);
            v16 = 2;
          }

          else
          {
            v17 = FLOATSUR_LT(&v22, a4 + 188);
            v12 = *a2;
            v15 = *a3 + 224 * *(*a2 + 32 * v11 + 2);
            if (v17)
            {
              v16 = 3;
            }

            else
            {
              v16 = 4;
            }
          }

          *(v15 - 151) = v16;
        }
      }

      ++v11;
      v10 += 32;
    }

    while (*(a2 + 4) - 1 > v11);
  }

  return 0;
}

uint64_t tryLoadingIgtreeModel(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8)
{
  v33 = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  *(a6 + 8) = 0;
  v22 = 0;
  __s2 = 0;
  v20 = 0;
  v21 = "";
  memset(v32, 0, sizeof(v32));
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  Str = paramc_ParamGetStr(*(a5 + 40), "langcode", &__s2);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  Str = paramc_ParamGetStr(*(a5 + 40), "fecfg", &v21);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  __s1 = 0;
  cstdlib_strcat(&__s1, "igtree/bnd/");
  cstdlib_strcat(&__s1, __s2);
  cstdlib_strcat(&__s1, "/");
  if (a8 == 1)
  {
    Str = paramc_ParamGetStr(*(a5 + 40), "voice", &v22);
    if (Str < 0)
    {
LABEL_11:
      v18 = Str;
      log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "Could not assemble broker string for IGtree phrasing model %s", a7);
      return v18 | 0x8A002000;
    }

    if (cstdlib_strstr(v22, "uni"))
    {
      v22 = 0;
    }

    else
    {
      cstdlib_strcat(&__s1, v22);
      cstdlib_strcat(&__s1, "/");
    }
  }

  cstdlib_strcat(&__s1, v21);
  cstdlib_strcat(&__s1, "/");
  cstdlib_strcat(&__s1, a7);
  Str = brokeraux_ComposeBrokerString(a5, &__s1, 1, 1, __s2, v22, 0, v24, 0x80uLL);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  if ((igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, &v20, 2, v24, "IGTR", 1031, 0) & 0x80000000) != 0)
  {
    log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "failed to read IGtree phrasing model data - going on without");
    v17 = 0;
  }

  else
  {
    v17 = v20;
  }

  result = 0;
  *(a6 + 8) = v17;
  return result;
}

char *BND_pos_current(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  LODWORD(v4) = a4;
  *__s1 = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 8) <= a2)
  {
    v4 = a4;
    v10 = a4 - 1;
    v11 = "%";
LABEL_8:
    result = cstdlib_strncat(__s1, v11, v10);
    goto LABEL_9;
  }

  v7 = *v6 + 224 * a2;
  if (!*(v7 + 104))
  {
    v11 = *(v7 + 88);
    if (!v11)
    {
      v11 = *(*(v7 + 16) + 8 * *(*(a1 + 48) + 18));
    }

    v4 = a4;
    v10 = a4 - 1;
    goto LABEL_8;
  }

  cstdlib_strncat(__s1, "_", (a4 - 1));
  cstdlib_strncat(__s1, *(v7 + 104), v4 - 2);
  v8 = cstdlib_strlen(*(v7 + 104));
  result = cstdlib_strncat(__s1, "_", v4 - 2 - v8);
  v4 = v4;
LABEL_9:
  __s1[v4 - 1] = 0;
  return result;
}

char *BND_pos_prev(uint64_t a1, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v4 = *(**(a1 + 40) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(a1 + 48) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_pos_current(a1, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v7 = v6 - 1;
  return BND_pos_current(a1, v7, a3, a4);
}

size_t BND_syn_boundary_current(uint64_t a1, unsigned int a2, char *__dst, unsigned int a4)
{
  v6 = *(*(a1 + 48) + 24);
  *__dst = 0;
  v7 = *(a1 + 40);
  if (*(v7 + 4) <= a2)
  {

    return cstdlib_strncat(__dst, "%", a4 - 1);
  }

  v9 = *v7;
  for (i = a2; ; --i)
  {
    v11 = *(v9 + 224 * i + 56);
    if (!v11)
    {
LABEL_9:
      if (!i)
      {
        goto LABEL_23;
      }

      continue;
    }

    v12 = v11 + 32 * v6;
    if (*v12 == 1)
    {
      break;
    }

    if (a2 <= i)
    {
      goto LABEL_9;
    }

    if (!i || *(v12 + 4) == 1)
    {
      goto LABEL_23;
    }
  }

  v14 = *(v12 + 16);
  if (!cstdlib_strcmp(v14, "O"))
  {
LABEL_23:

    return cstdlib_strcpy(__dst, "O");
  }

  if (a2 == i)
  {
    v15 = 66;
  }

  else
  {
    v15 = 73;
  }

  *__dst = v15;
  *(__dst + 1) = 45;
  cstdlib_strncat(__dst, v14, a4 - 3);
  __dst[a4 - 1] = 0;
  result = cstdlib_strlen(__dst);
  if (result >= 5)
  {
    v16 = &__dst[result];
    if (__dst[result - 2] == 45 && *(v16 - 1) == 80)
    {
      *(v16 - 2) = 0;
    }
  }

  return result;
}

char *BND_syn_boundary_prev(uint64_t a1, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v4 = *(**(a1 + 40) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(a1 + 48) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_syn_boundary_current(a1, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v7 = v6 - 1;
  return BND_syn_boundary_current(a1, v7, a3, a4);
}

char *BND_orth_uni200(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  *__s1 = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 8) <= a2)
  {
    v9 = a4 - 1;
    v10 = "%";
LABEL_5:
    v11 = __s1;
LABEL_6:
    result = cstdlib_strncat(v11, v10, v9);
    goto LABEL_7;
  }

  v7 = *v6 + 224 * a2;
  if (*(v7 + 104))
  {
    cstdlib_strncat(__s1, "_", (a4 - 1));
    cstdlib_strncat(__s1, *(v7 + 104), (a4 - 3));
    result = cstdlib_strcat(__s1, "_");
    goto LABEL_7;
  }

  v13 = *(v7 + 16);
  v14 = *(*(a1 + 48) + 16);
  v15 = *(v13 + 8 * v14);
  if (!v15)
  {
    v9 = a4 - 1;
    v10 = "?";
    goto LABEL_5;
  }

  v16 = cstdlib_strlen(*(v13 + 8 * v14));
  cstdlib_strncat(__s1, " ", (a4 - 1));
  cstdlib_strncat(__s1, v15, (a4 - 3));
  cstdlib_strcat(__s1, " ");
  if (v16 >= 2)
  {
    v17 = __s1[1];
    if (v17 != 32)
    {
      v18 = __s1 + 2;
      do
      {
        if ((v17 - 91) >= 0xFFFFFFE6)
        {
          *(v18 - 1) = v17 | 0x60;
        }

        v19 = *v18++;
        v17 = v19;
      }

      while (v19 != 32);
    }
  }

  result = cstdlib_strstr(*(a1 + 24), __s1);
  if (!result)
  {
    *__s1 = 0;
    v10 = "?";
    v11 = __s1;
    v9 = (a4 - 1);
    goto LABEL_6;
  }

  if (v16)
  {
    v20 = 0;
    v21 = __s1 + 1;
    do
    {
      *(v21 - 1) = *v21;
      ++v20;
      ++v21;
    }

    while (v16 > v20);
  }

  __s1[v16] = 0;
LABEL_7:
  __s1[a4 - 1] = 0;
  return result;
}

char *BND_punct_current(char *result, unsigned int a2, char *__s1, unsigned int a4)
{
  v4 = a4;
  v12 = *MEMORY[0x277D85DE8];
  v6 = *(*(**(result + 5) + 224 * a2 + 16) + 8 * *(*(result + 6) + 16));
  *__s1 = 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        result = cstdlib_strchr(__s, v7);
        if (result)
        {
          v9 = 1;
          result = cstdlib_strncat(__s1, v6, 1uLL);
          --v4;
        }

        else
        {
          if (v9 == 1 || !v8)
          {
            result = cstdlib_strncat(__s1, "_", --v4);
          }

          v9 = 0;
        }

        v10 = *++v6;
        v7 = v10;
        --v8;
      }

      while (v10);
    }
  }

  else
  {

    return cstdlib_strncat(__s1, "?", a4 - 1);
  }

  return result;
}

uint64_t BND_phr1_dist(uint64_t result, uint64_t a2, _WORD *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    result = bnd_dist(result, a2, 4);
    if (result >= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | 0x30;
  }

  return result;
}

uint64_t BND_phr1_dist3(uint64_t result, uint64_t a2, _WORD *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    result = bnd_dist(result, a2, 4);
    if (result >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | 0x30;
  }

  return result;
}

uint64_t BND_phr1_dist3_fwd(uint64_t result, unsigned int a2, char *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v4 = *(result + 40);
    v5 = *(v4 + 4);
    if (v5 <= a2)
    {
      v14 = 48;
    }

    else
    {
      v6 = 0;
      v7 = *v4;
      while (1)
      {
        v8 = v7 + 224 * a2;
        v9 = *(v8 + 56);
        if (v9)
        {
          v10 = v9 + 32 * *(*(result + 48) + 22);
          if (*v10 == 1)
          {
            LOWORD(a2) = *(v10 + 10);
            v8 = v7 + 224 * a2;
          }
        }

        if (*(v8 + 73) == 4 || v5 - 1 == a2)
        {
          break;
        }

        v12 = v6 + 1;
        LOWORD(a2) = a2 + 1;
        if (v5 > a2 && v6++ < 2)
        {
          continue;
        }

        goto LABEL_17;
      }

      v12 = v6;
LABEL_17:
      v14 = v12 + 48;
    }

    *a3 = v14;
    a3[1] = 0;
  }

  return result;
}

uint64_t BND_phr2_dist(uint64_t result, uint64_t a2, _WORD *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    result = bnd_dist(result, a2, 3);
    if (result >= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | 0x30;
  }

  return result;
}

uint64_t BND_bnd1_dist_min_passed(uint64_t result, uint64_t a2, char *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v5 = result;
    result = bnd_dist(result, a2, 4);
    if (*(v5 + 32) >= result)
    {
      v6 = 45;
    }

    else
    {
      v6 = 43;
    }

    *a3 = v6;
    a3[1] = 0;
  }

  return result;
}

char *BND_trailpunct(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *(*(**(a1 + 40) + 224 * a2 + 16) + 8 * *(*(a1 + 48) + 16));
  *__s1 = 0;
  if (v6 && (v7 = cstdlib_strlen(v6), *v6))
  {
    v8 = &v6[v7 - 1];
    cstdlib_strncat(__s1, "_", 1uLL);
    result = cstdlib_strchr(__s, *v8);
    if (result)
    {
      return cstdlib_strncat(__s1, v8, 1uLL);
    }
  }

  else
  {

    return cstdlib_strncat(__s1, "?", a4 - 1);
  }

  return result;
}

char *BND_doc_class(char *result, unsigned int a2, char *__s1, unsigned int a4)
{
  v4 = **(result + 5);
  *__s1 = 0;
  if (a4 >= 2)
  {
    v5 = *(v4 + 224 * a2 + 152);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = "%";
    }

    return cstdlib_strncat(__s1, v6, a4 - 1);
  }

  return result;
}

char *BND_doc_punc(char *result, int a2, char *__dst, unsigned int a4)
{
  if (a4 >= 2)
  {
    if (*(*(result + 5) + 8) <= a2)
    {

      return cstdlib_strcpy(__dst, "%");
    }

    else
    {
      memset(__n, 0, sizeof(__n));
      *__dst = 0;
      v6 = *(result + 5);
      v7 = *v6 + 224 * a2;
      if (*(v6 + 8) - 1 > a2 && hlp_NLUStrFind(*(v7 + 384), "S_PUNC", &__n[1], __n))
      {
        v8 = 0;
        do
        {
          if (v8)
          {
            v9 = cstdlib_strlen(";");
            v10 = v8 + v9;
            if (v10 < a4)
            {
              cstdlib_strncat(__dst, ";", v9);
              v8 = v10;
            }
          }

          v11 = cstdlib_strlen("S_PUNC:");
          v12 = v8 + v11;
          if (v12 < a4)
          {
            cstdlib_strncat(__dst, "S_PUNC:", v11);
            v8 = v12;
          }

          v13 = __n[0];
          v14 = v8 + __n[0];
          if (v14 < a4)
          {
            cstdlib_strncat(__dst, *&__n[1], __n[0]);
            v8 = v14;
            v13 = __n[0];
          }
        }

        while (hlp_NLUStrFind((*&__n[1] + v13), "S_PUNC", &__n[1], __n));
      }

      else
      {
        v8 = 0;
      }

      if (hlp_NLUStrFind(*(v7 + 160), "I_PUNC", &__n[1], __n))
      {
        do
        {
          if (v8)
          {
            v15 = cstdlib_strlen(";");
            v16 = v8 + v15;
            if (v16 < a4)
            {
              cstdlib_strncat(__dst, ";", v15);
              v8 = v16;
            }
          }

          v17 = cstdlib_strlen("I_PUNC:");
          v18 = v8 + v17;
          if (v18 < a4)
          {
            cstdlib_strncat(__dst, "I_PUNC:", v17);
            v8 = v18;
          }

          v19 = __n[0];
          v20 = v8 + __n[0];
          if (v20 < a4)
          {
            cstdlib_strncat(__dst, *&__n[1], __n[0]);
            v8 = v20;
            v19 = __n[0];
          }
        }

        while (hlp_NLUStrFind((*&__n[1] + v19), "I_PUNC", &__n[1], __n));
      }

      if (hlp_NLUStrFind(*(v7 + 160), "S_PUNC", &__n[1], __n))
      {
        do
        {
          if (v8)
          {
            v21 = cstdlib_strlen(";");
            v22 = v8 + v21;
            if (v22 < a4)
            {
              cstdlib_strncat(__dst, ";", v21);
              v8 = v22;
            }
          }

          v23 = cstdlib_strlen("I_PUNC:");
          v24 = v8 + v23;
          if (v24 < a4)
          {
            cstdlib_strncat(__dst, "I_PUNC:", v23);
            v8 = v24;
          }

          v25 = __n[0];
          v26 = v8 + __n[0];
          if (v26 < a4)
          {
            cstdlib_strncat(__dst, *&__n[1], __n[0]);
            v8 = v26;
            v25 = __n[0];
          }
        }

        while (hlp_NLUStrFind((*&__n[1] + v25), "S_PUNC", &__n[1], __n));
      }

      for (result = hlp_NLUStrFind(*(v7 + 160), "E_PUNC", &__n[1], __n); result; result = hlp_NLUStrFind((*&__n[1] + v31), "E_PUNC", &__n[1], __n))
      {
        if (v8)
        {
          v27 = cstdlib_strlen(";");
          v28 = v8 + v27;
          if (v28 < a4)
          {
            cstdlib_strncat(__dst, ";", v27);
            v8 = v28;
          }
        }

        v29 = cstdlib_strlen("E_PUNC:");
        v30 = v8 + v29;
        if (v30 < a4)
        {
          cstdlib_strncat(__dst, "E_PUNC:", v29);
          v8 = v30;
        }

        v31 = __n[0];
        v32 = v8 + __n[0];
        if (v32 < a4)
        {
          cstdlib_strncat(__dst, *&__n[1], __n[0]);
          v8 = v32;
          v31 = __n[0];
        }
      }

      if (!v8)
      {
        return cstdlib_strcat(__dst, "%");
      }
    }
  }

  return result;
}

char *BND_orth(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  *__s1 = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 8) <= a2)
  {
    v10 = a4;
    v11 = a4 - 1;
    v12 = "%";
LABEL_5:
    v13 = __s1;
LABEL_6:
    result = cstdlib_strncat(v13, v12, v11);
    goto LABEL_7;
  }

  v7 = *v6 + 224 * a2;
  if (*(v7 + 104))
  {
    cstdlib_strncat(__s1, "_", (a4 - 1));
    cstdlib_strncat(__s1, *(v7 + 104), (a4 - 2));
    v8 = cstdlib_strlen(*(v7 + 104));
    result = cstdlib_strncat(__s1, "_", (a4 - 2) - v8);
    v10 = a4;
    goto LABEL_7;
  }

  v15 = *(v7 + 16);
  v16 = *(*(a1 + 48) + 16);
  v17 = *(v15 + 8 * v16);
  if (!v17)
  {
    v10 = a4;
    v11 = a4 - 1;
    v12 = "?";
    goto LABEL_5;
  }

  v18 = cstdlib_strlen(*(v15 + 8 * v16));
  v10 = a4;
  v19 = a4 - 1;
  cstdlib_strncat(__s1, " ", v19);
  if (v18 >= 1)
  {
    v20 = &v17[v18];
    do
    {
      v21 = Utf8_LengthInBytes(v17, 1);
      if (!utf8_BelongsToSet(10, v17, 0, v21))
      {
        if (utf8_ToLower(v17, 0, v28))
        {
          v22 = v19 - cstdlib_strlen(__s1);
          v23 = v28;
          v24 = __s1;
LABEL_16:
          cstdlib_strncat(v24, v23, v22);
          goto LABEL_17;
        }

        if (v10 - cstdlib_strlen(__s1) > v21)
        {
          v22 = v21;
          v24 = __s1;
          v23 = v17;
          goto LABEL_16;
        }
      }

LABEL_17:
      v17 += v21;
    }

    while (v17 < v20);
  }

  v25 = cstdlib_strlen(__s1);
  cstdlib_strncat(__s1, " ", v19 - v25);
  result = cstdlib_strstr(*(a1 + 24), __s1);
  if (!result)
  {
    *__s1 = 0;
    v12 = "?";
    v13 = __s1;
    v11 = v19;
    goto LABEL_6;
  }

  if (v18)
  {
    v26 = 0;
    v27 = __s1 + 1;
    do
    {
      *(v27 - 1) = *v27;
      ++v26;
      ++v27;
    }

    while (v18 > v26);
  }

  __s1[v18] = 0;
LABEL_7:
  __s1[v10 - 1] = 0;
  return result;
}

uint64_t BND_bnd_type(uint64_t result, unsigned int a2, _BYTE *a3)
{
  v3 = *(result + 40);
  if (*(v3 + 8) <= a2)
  {
    LOBYTE(v5) = 37;
  }

  else
  {
    v4 = *(*v3 + 224 * a2 + 73);
    if (v4 > 4)
    {
      LOBYTE(v5) = 63;
    }

    else
    {
      v5 = 0x53574E3F3FuLL >> (8 * v4);
    }
  }

  *a3 = v5;
  a3[1] = 0;
  return result;
}

char *BND_phrase_type(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  *__s1 = 0;
  v4 = *(a1 + 40);
  if (*(v4 + 8) > a2 && (v5 = *(v4 + 40)) != 0 && *v5)
  {
    return cstdlib_strncat(__s1, v5, a4 - 1);
  }

  else
  {
    return cstdlib_strcat(__s1, "%");
  }
}

char *BND_tn(char *result, unsigned int a2, char *__s1, unsigned int a4)
{
  if (a4 >= 2)
  {
    if (*(*(result + 5) + 8) <= a2)
    {
      return cstdlib_strcpy(__s1, "%");
    }

    else
    {
      v4 = 0;
      v5 = 0;
      *__s1 = 0;
      do
      {
        v6 = *(**(result + 5) + 224 * v5 + 56);
        if (v6)
        {
          v7 = v6 + 32 * *(*(result + 6) + 22);
          if (*(v7 + 16))
          {
            if (*v7 == 1 && *(v7 + 10) >= a2 && *(v7 + 8) <= a2)
            {
              v5 = a2;
              v4 = *(v7 + 16);
            }
          }
        }

        ++v5;
      }

      while (a2 >= v5);
      if (v4)
      {
        return cstdlib_strncat(__s1, v4, a4 - 1);
      }

      else
      {
        return cstdlib_strcat(__s1, "%");
      }
    }
  }

  return result;
}

char *BND_doc_punc_prev(uint64_t a1, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v4 = *(**(a1 + 40) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(a1 + 48) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_doc_punc(a1, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v7 = v6 - 1;
  return BND_doc_punc(a1, v7, a3, a4);
}

uint64_t bnd_dist(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = 1;
    do
    {
      LOWORD(a2) = a2 - 1;
      v4 = **(a1 + 40) + 224 * a2;
      if (*(v4 + 73) == a3)
      {
        break;
      }

      v5 = *(v4 + 56);
      if (v5)
      {
        v6 = v5 + 32 * *(*(a1 + 48) + 22);
        if (*(v6 + 4) == 1)
        {
          LOWORD(a2) = *(v6 + 8);
        }
      }

      ++v3;
    }

    while (a2);
  }

  else
  {
    return 1;
  }

  return v3;
}

uint64_t checkForExternalSildur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v14 = 0;
  __s1 = 0;
  v12 = 0;
  *a5 = 0;
  v10 = (*(a1 + 184))(a2, a3, a4, 18, &v14);
  if ((v10 & 0x80000000) == 0)
  {
    if (v14)
    {
      v10 = (*(a1 + 176))(a2, a3, a4, 18, &__s1, &v12);
      if ((v10 & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "external"))
      {
        *a5 = 1;
      }
    }
  }

  return v10;
}

uint64_t addWord(uint64_t a1, const char *a2, _DWORD *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 10))
  {
    v14 = heap_Calloc(*(a1 + 8), 1, 11200);
    *a6 = v14;
    if (v14)
    {
      v12 = v14;
      *(a6 + 10) = 50;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v12 = *a6;
  if (*(a6 + 8) >= *(a6 + 10))
  {
    v13 = heap_Realloc(*(a1 + 8), v12, 224 * *(a6 + 10) + 11200);
    if (v13)
    {
      *a6 = v13;
      cstdlib_memset((v13 + 224 * *(a6 + 8)), 0, 0x2BC0uLL);
      *(a6 + 10) += 50;
      v12 = *a6;
      goto LABEL_7;
    }

LABEL_11:
    v22 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return v22;
  }

LABEL_7:
  *(v12 + 224 * *(a6 + 8)) = *a3;
  v15 = heap_Calloc(*(a1 + 8), 1, (8 * *(a5 + 72)) | 1);
  *(*a6 + 224 * *(a6 + 8) + 16) = v15;
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = *(a1 + 8);
  v17 = cstdlib_strlen(a2);
  v18 = heap_Calloc(v16, 1, (v17 + 1));
  *(*(*a6 + 224 * *(a6 + 8) + 16) + 8 * *(a5 + 16)) = v18;
  if (!v18)
  {
    goto LABEL_11;
  }

  cstdlib_strcpy(v18, a2);
  v19 = *(a1 + 8);
  v20 = cstdlib_strlen(a4);
  v21 = heap_Calloc(v19, 1, (v20 + 1));
  *(*a6 + 224 * *(a6 + 8) + 8) = v21;
  if (!v21)
  {
    goto LABEL_11;
  }

  cstdlib_strcpy(v21, a4);
  v22 = 0;
  ++*(a6 + 8);
  return v22;
}

uint64_t addToken(uint64_t a1, unsigned __int16 *a2, const char *a3, uint64_t a4, uint64_t *a5, int a6)
{
  v9 = *(a5 + 4);
  v10 = *a2;
  if (*(a5 + 4))
  {
    v13 = 0;
    v14 = 0;
    v15 = v9 + 1;
    v16 = *a5;
    v17 = a2[1];
    while (1)
    {
      v18 = *(v16 + v13);
      if (v10 == v18)
      {
        v15 = v14;
      }

      v19 = *(v16 + v13 + 2);
      if (v17 == v19)
      {
        break;
      }

      if (v17 >= v18 && v17 < v19)
      {
        break;
      }

      ++v14;
      v10 = *a2;
      v13 += 224;
      if (224 * v9 == v13)
      {
        goto LABEL_12;
      }
    }

    if (v9 + 1 == v15)
    {
      goto LABEL_14;
    }

    v24 = checkSpan(a1, a4, (v16 + 224 * v15 + 56));
    if ((v24 & 0x80000000) != 0)
    {
      return v24;
    }

    v24 = checkSpan(a1, a4, (*a5 + v13 + 56));
    if ((v24 & 0x80000000) != 0)
    {
      return v24;
    }

    v25 = *a5;
    v26 = 224 * v15;
    v27 = *(a4 + 22);
    v28 = *(*a5 + v26 + 56) + 32 * v27;
    *v28 = 1;
    *(v28 + 8) = v15;
    *(v28 + 10) = v14;
    v29 = *(v25 + v13 + 56) + 32 * v27;
    *(v29 + 4) = 1;
    *(v29 + 8) = v15;
    v30 = *(a1 + 8);
    v31 = cstdlib_strlen(a3);
    v32 = heap_Calloc(v30, 1, (v31 - 1));
    v33 = *a5 + v26;
    v34 = v15;
    *(*(v33 + 56) + 32 * *(a4 + 22) + 16) = v32;
    if (v32)
    {
      v35 = v32;
      v36 = cstdlib_strlen(a3 + 1);
      cstdlib_strncpy(v35, a3 + 1, v36 - 1);
      if (a6 != 1)
      {
        return 0;
      }

      v37 = *(*a5 + 224 * v15 + 168);
      if (v37)
      {
        heap_Free(*(a1 + 8), v37);
      }

      v38 = *(a1 + 8);
      v39 = cstdlib_strlen(a3);
      v40 = heap_Calloc(v38, 1, (v39 + 1));
      *(*a5 + 224 * v15 + 168) = v40;
      if (v40)
      {
        cstdlib_strcpy(v40, "B-");
        v41 = *(*a5 + 224 * v15 + 168);
        v42 = cstdlib_strlen(a3 + 1);
        cstdlib_strncpy((v41 + 2), a3 + 1, v42 - 1);
        v43 = v15 + 1;
        if (v43 > v14)
        {
          return 0;
        }

        while (1)
        {
          v44 = *(a1 + 8);
          v45 = cstdlib_strlen(*(*a5 + 224 * v34 + 168));
          v46 = heap_Calloc(v44, 1, (v45 + 1));
          v47 = *a5;
          v48 = v43;
          *(*a5 + 224 * v43 + 168) = v46;
          if (!v46)
          {
            break;
          }

          cstdlib_strcpy(v46, *(v47 + 224 * v34 + 168));
          v21 = 0;
          **(*a5 + 224 * v43++ + 168) = 73;
          if ((v48 + 1) > v14)
          {
            return v21;
          }
        }
      }
    }

    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

LABEL_12:
  v17 = a2[1];
LABEL_14:
  v21 = 2315264000;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a3, v10, v17);
  if (*(a5 + 4))
  {
    v22 = 0;
    v23 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "word[%d] %d,%d", v23++, *(*a5 + v22), *(*a5 + v22 + 2));
      v22 += 224;
    }

    while (v23 < *(a5 + 4));
  }

  return v21;
}

uint64_t checkSpan(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    return 0;
  }

  v6 = heap_Calloc(*(a1 + 8), 1, (32 * *(a2 + 72)) | 1);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a3 = v7;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return result;
}

uint64_t addTokenTag(uint64_t a1, unsigned int a2, char *__s, uint64_t a4, uint64_t *a5)
{
  v9 = a2;
  if (!*(*a5 + 224 * a2 + 88) && !cstdlib_strcmp("UNK", __s))
  {
    v10 = *(a1 + 8);
    v11 = cstdlib_strlen(*(*(*a5 + 224 * v9 + 16) + 8 * *(a4 + 18)));
    v12 = heap_Calloc(v10, 1, v11 + 1);
    v13 = *a5;
    *(*a5 + 224 * v9 + 88) = v12;
    if (!v12)
    {
LABEL_7:
      v17 = 2315264010;
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      return v17;
    }

    cstdlib_strcpy(v12, *(*(v13 + 224 * v9 + 16) + 8 * *(a4 + 18)));
  }

  v14 = *(a1 + 8);
  v15 = cstdlib_strlen(__s);
  v16 = heap_Calloc(v14, 1, (v15 + 1));
  *(*(*a5 + 224 * v9 + 16) + 8 * *(a4 + 20)) = v16;
  if (!v16)
  {
    goto LABEL_7;
  }

  cstdlib_strcpy(v16, __s);
  return 0;
}

uint64_t addSynChunk(uint64_t a1, const char *a2, const char *a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  if (a4 > a5 || *(a7 + 4) <= a5)
  {
    v25 = 2315264000;
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "syntactic chunks out of order : fromWordIdx=%d toWordIdx=%d numWords=%d", a4, a5, *(a7 + 4));
  }

  else
  {
    v14 = checkSpan(a1, a6, (*a7 + 224 * a4 + 56));
    if ((v14 & 0x80000000) == 0)
    {
      v14 = checkSpan(a1, a6, (*a7 + 224 * a5 + 56));
      if ((v14 & 0x80000000) == 0)
      {
        v15 = a4;
        v16 = *a7;
        v17 = *(a6 + 24);
        v18 = *(*a7 + 224 * a4 + 56) + 32 * v17;
        *v18 = 1;
        *(v18 + 8) = a4;
        *(v18 + 10) = a5;
        v19 = *(v16 + 224 * a5 + 56) + 32 * v17;
        *(v19 + 4) = 1;
        *(v19 + 8) = a4;
        v20 = *(a1 + 8);
        v21 = cstdlib_strlen(a2);
        v22 = v21;
        if (a3)
        {
          v23 = cstdlib_strlen(a3);
          v24 = heap_Calloc(v20, 1, (v22 + v23 + 1));
          *(*(*a7 + 224 * v15 + 56) + 32 * *(a6 + 24) + 16) = v24;
          if (v24)
          {
            cstdlib_strcpy(v24, a2);
            cstdlib_strcat(*(*(*a7 + 224 * v15 + 56) + 32 * *(a6 + 24) + 16), a3);
            return 0;
          }
        }

        else
        {
          v26 = heap_Calloc(v20, 1, (v21 + 1));
          *(*(*a7 + 224 * v15 + 56) + 32 * *(a6 + 24) + 16) = v26;
          if (v26)
          {
            cstdlib_strcpy(v26, a2);
            return 0;
          }
        }

        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }
    }

    return v14;
  }

  return v25;
}

uint64_t addPHRRange(uint64_t a1, unsigned int a2, unsigned int a3, char *__s, void *a5)
{
  if (a2 > a3)
  {
    return 0;
  }

  v11 = a2;
  while (1)
  {
    v12 = *(a1 + 8);
    v13 = cstdlib_strlen(__s);
    v14 = heap_Calloc(v12, 1, (v13 + 3));
    v15 = v11;
    *(*a5 + 224 * v11 + 80) = v14;
    if (!v14)
    {
      break;
    }

    if (cstdlib_strcmp(__s, "O"))
    {
      if (v11 == a2)
      {
        v16 = "B-";
      }

      else
      {
        v16 = "I-";
      }

      cstdlib_strcpy(*(*a5 + 224 * v11 + 80), v16);
      cstdlib_strcat(*(*a5 + 224 * v11 + 80), __s);
    }

    else
    {
      cstdlib_strcpy(*(*a5 + 224 * v11 + 80), __s);
    }

    *(*a5 + 224 * v11++ + 4) = a2;
    if (a3 < (v15 + 1))
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t addMSPOS(uint64_t a1, unsigned int a2, char *__s, uint64_t a4, void *a5)
{
  v10 = *(a1 + 8);
  v11 = cstdlib_strlen(__s);
  v12 = heap_Calloc(v10, 1, (v11 + 1));
  *(*(*a5 + 224 * a2 + 16) + 8 * *(a4 + 18)) = v12;
  if (v12)
  {
    cstdlib_strcpy(v12, __s);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t expandAndValidateCompounds(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a2 + 4))
  {
    for (i = 0; i < *(a2 + 4); ++i)
    {
      v7 = *(*a2 + 224 * i + 96);
      if (v7)
      {
        v8 = *(a3 + 656);
        if (!v8)
        {
          if (!cstdlib_strncmp(v7, "B-", 2uLL) || !cstdlib_strncmp(*(*a2 + 224 * i + 96), "I-", 2uLL))
          {
            continue;
          }

          v8 = *(a3 + 656);
        }

        if (v8 != 1)
        {
          v9 = *(*a2 + 224 * i + 96);
          v10 = *(a3 + 640);
          v11 = cstdlib_strlen(v10);
          if (!cstdlib_strncmp(v9, v10, v11))
          {
            v16 = *(*a2 + 224 * i + 96);
            v17 = *(a3 + 640);
            v18 = cstdlib_strlen(v17);
            if (cstdlib_strncmp(v16, v17, v18))
            {
              continue;
            }

            v19 = i + 1;
            v20 = *(a2 + 4);
            if (i + 1 != v20)
            {
              if (i + 1 >= v20)
              {
                continue;
              }

              v28 = *(*a2 + 224 * v19 + 96);
              if (v28)
              {
                v29 = *(a3 + 640);
                v30 = cstdlib_strlen(v29);
                if (cstdlib_strncmp(v28, v29, v30))
                {
                  if (*(*a2 + 224 * v19 + 96))
                  {
                    continue;
                  }
                }
              }
            }

            v21 = 224 * i;
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "single word cannot be a compound word : word index=%d compound tag=%s");
            goto LABEL_27;
          }

          if (i)
          {
            LOWORD(v12) = i;
            while (1)
            {
              v13 = *(*a2 + 224 * v12 + 96);
              if (!v13)
              {
                break;
              }

              v14 = *(a3 + 640);
              v15 = cstdlib_strlen(v14);
              if (!cstdlib_strncmp(v13, v14, v15))
              {
                break;
              }

              LOWORD(v12) = v12 - 1;
              if (!v12)
              {
                LOWORD(v12) = 0;
                break;
              }
            }

            v12 = v12;
          }

          else
          {
            v12 = 0;
          }

          v22 = *(*a2 + 224 * v12 + 96);
          if (!v22)
          {
LABEL_26:
            v21 = 224 * i;
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no start word for internal compound word : word index=%d compound tag=%s");
            goto LABEL_27;
          }

          v23 = *(a3 + 640);
          v24 = cstdlib_strlen(v23);
          v25 = cstdlib_strncmp(v22, v23, v24);
          v26 = *a2;
          if (v25)
          {
            v21 = 224 * i;
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "compound word has no beginning tag : word index=%d compound tag=%s");
LABEL_27:
            heap_Free(*(a1 + 8), *(*a2 + v21 + 96));
            *(*a2 + v21 + 96) = 0;
            continue;
          }

          v27 = *(v26 + 224 * v12 + 96);
          if (!v27)
          {
            goto LABEL_26;
          }

          cstdlib_strcat(*(v26 + 224 * i + 96), (v27 + 1));
        }
      }
    }
  }

  return 0;
}

uint64_t checkMSPOSForCompound(uint64_t a1, unsigned int a2, char *__s2, uint64_t a4, void *a5)
{
  v10 = 0;
  CompoundAccent = 0;
  v32 = 0;
  v33 = 0;
  do
  {
    v12 = v10;
    if (v10 >= *(a4 + 360))
    {
      return CompoundAccent;
    }

    if (*(*(a4 + 352) + 4 * v10) == 1)
    {
      v13 = *(*(*(a4 + 344) + 8 * v10) + 2);
      v14 = cstdlib_strlen(__s2);
      CompoundAccent = do_pcre_exec(a4, v13, __s2, v14, 0, &v33);
      if ((CompoundAccent & 0x80000000) != 0)
      {
        return CompoundAccent;
      }
    }

    else if (!cstdlib_strcmp((*(a4 + 528) + *(*(a4 + 536) + 4 * **(*(a4 + 344) + 8 * v10))), __s2))
    {
      v33 = 1;
    }

    v10 = v12 + 1;
    v15 = v12;
  }

  while (!v33);
  if (v33 != 1)
  {
    return CompoundAccent;
  }

  v16 = *(*(a4 + 352) + 4 * v12);
  v17 = *(a4 + 528);
  v18 = v16 == 1;
  v19 = 4;
  if (v18)
  {
    v19 = 8;
  }

  v20 = *(*(a4 + 536) + 4 * *(*(*(a4 + 344) + 8 * v15) + v19));
  if (cstdlib_strcmp((v17 + v20), *(a4 + 640)))
  {
    v21 = a2;
    v22 = *(*a5 + 224 * a2 + 96);
    if (v22)
    {
      heap_Free(*(a1 + 8), v22);
      *(*a5 + 224 * a2 + 96) = 0;
    }

    v23 = *(a1 + 8);
    v24 = cstdlib_strlen((v17 + v20));
    v25 = heap_Calloc(v23, 1, (v24 + 52));
    *(*a5 + 224 * v21 + 96) = v25;
    if (v25)
    {
      cstdlib_strcpy(v25, (v17 + v20));
      goto LABEL_17;
    }

LABEL_24:
    CompoundAccent = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return CompoundAccent;
  }

  v32 = 0;
  v33 = 0;
  CompoundAccent = getCompoundAccent(a4, __s2, &v33, &v32 + 1, &v32);
  if ((CompoundAccent & 0x80000000) != 0)
  {
    return CompoundAccent;
  }

  if (v33)
  {
    v27 = *(a1 + 8);
    v28 = cstdlib_strlen((v17 + v20));
    v29 = heap_Calloc(v27, 1, v28 + v32 - HIWORD(v32) + 2);
    *(*a5 + 224 * a2 + 96) = v29;
    if (!v29)
    {
      goto LABEL_24;
    }

    v21 = a2;
    cstdlib_strcpy(v29, (v17 + v20));
    cstdlib_strcat(*(*a5 + 224 * a2 + 96), "-");
    cstdlib_strncat(*(*a5 + 224 * a2 + 96), &__s2[HIWORD(v32)], v32 - HIWORD(v32));
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no stress information on first word of compound word : word index=%d pos=%s", a2, __s2);
    v21 = a2;
    v31 = 224 * a2;
    heap_Free(*(a1 + 8), *(*a5 + v31 + 96));
    *(*a5 + v31 + 96) = 0;
  }

LABEL_17:
  if (*(*a5 + 224 * v21 + 96))
  {
    v26 = *(a1 + 32);
    if (*(*(a4 + 352) + 4 * v15) == 1)
    {
      log_OutText(v26, "FE_PHRASING", 5, 0, "COMPOUND regex rule %d FIRED : SET %s -> %s");
    }

    else
    {
      log_OutText(v26, "FE_PHRASING", 5, 0, "COMPOUND normal rule FIRED : SET %s -> %s");
    }
  }

  return CompoundAccent;
}

uint64_t insert_NLU_info(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2;
  if (a2 == a3)
  {
    if (a2 + 1 == *(a6 + 8))
    {
      LOWORD(a3) = a2 + 1;
    }

    else
    {
      LOWORD(a3) = a2;
    }
  }

  if (a2 >= a3)
  {
    return 0;
  }

  v90 = a3 - 1;
  v13 = v90 - a2;
  v14 = (224 * a2) | 4;
  v15 = a2 + 1;
  v89 = a3;
  while (1)
  {
    v91 = v15;
    v16 = *a4;
    if (!*a4)
    {
      goto LABEL_12;
    }

    v17 = *(*(*a6 + v14 + 12) + 8 * *(a5 + 18));
    if (v17)
    {
      heap_Free(*(a1 + 8), v17);
      *(*(*a6 + v14 + 12) + 8 * *(a5 + 18)) = 0;
      v16 = *a4;
    }

    v18 = *(a1 + 8);
    v19 = cstdlib_strlen(v16);
    v20 = heap_Calloc(v18, 1, (v19 + 1));
    *(*(*a6 + v14 + 12) + 8 * *(a5 + 18)) = v20;
    if (!v20)
    {
      break;
    }

    cstdlib_strcpy(v20, *a4);
LABEL_12:
    v21 = *(a4 + 8);
    if (v21)
    {
      v22 = *(*a6 + v14 + 76);
      if (v22)
      {
        heap_Free(*(a1 + 8), v22);
        *(*a6 + v14 + 76) = 0;
        v21 = *(a4 + 8);
      }

      v23 = *(a1 + 8);
      v24 = cstdlib_strlen(v21);
      v25 = heap_Calloc(v23, 1, (v24 + 1));
      *(*a6 + v14 + 76) = v25;
      if (!v25)
      {
        break;
      }

      cstdlib_strcpy(v25, *(a4 + 8));
      *(*a6 + v14) = v11;
    }

    v26 = *(a4 + 16);
    if (v26)
    {
      v27 = v13 == 0;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      if (cstdlib_strcmp(v26, "W"))
      {
        if (cstdlib_strcmp(*(a4 + 16), "S"))
        {
          if (cstdlib_strcmp(*(a4 + 16), "N"))
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }

          *(*a6 + 224 * v90 + 75) = v28;
          goto LABEL_31;
        }

        v29 = *a6 + 224 * v90;
        v30 = 4;
      }

      else
      {
        v29 = *a6 + 224 * v90;
        v30 = 3;
      }

      *(v29 + 75) = v30;
    }

LABEL_31:
    v31 = *(a4 + 32);
    if (!v31)
    {
      goto LABEL_40;
    }

    if (!cstdlib_strcmp(v31, "0"))
    {
      v33 = *a6 + v14;
LABEL_37:
      *(v33 + 70) = 0;
      goto LABEL_40;
    }

    if (cstdlib_strcmp(*(a4 + 32), "1"))
    {
      v32 = cstdlib_strcmp(*(a4 + 32), "2");
      v33 = *a6 + v14;
      if (v32)
      {
        goto LABEL_37;
      }

      v34 = 2;
    }

    else
    {
      v33 = *a6 + v14;
      v34 = 1;
    }

    *(v33 + 70) = v34;
LABEL_40:
    v35 = *(a4 + 56);
    if (v35)
    {
      v36 = *(*a6 + v14 + 92);
      if (v36)
      {
        heap_Free(*(a1 + 8), v36);
        *(*a6 + v14 + 92) = 0;
        v35 = *(a4 + 56);
      }

      v37 = *(a1 + 8);
      v38 = cstdlib_strlen(v35);
      v39 = heap_Calloc(v37, 1, (v38 + 1));
      *(*a6 + v14 + 92) = v39;
      if (!v39)
      {
        break;
      }

      cstdlib_strcpy(v39, *(a4 + 56));
      v40 = *(a1 + 8);
      v41 = cstdlib_strlen("[COMP");
      v42 = heap_Calloc(v40, 1, (v41 + 1));
      *(*a6 + v14 + 172) = v42;
      if (!v42)
      {
        break;
      }

      if (cstdlib_strncmp(*(a4 + 56), "B-", 2uLL))
      {
        v43 = "COMP]";
      }

      else
      {
        v43 = "[COMP";
      }

      cstdlib_strcpy(*(*a6 + v14 + 172), v43);
    }

    v44 = *(a4 + 24);
    if (v44 && !v13)
    {
      v45 = *(a1 + 8);
      v46 = *(*a6 + 224 * v90 + 120);
      v47 = cstdlib_strlen(v44);
      v48 = heap_Realloc(v45, v46, (v47 + 1));
      if (!v48)
      {
        break;
      }

      *(*a6 + 224 * v90 + 120) = v48;
      cstdlib_strcpy(v48, *(a4 + 24));
    }

    v49 = *(a4 + 40);
    if (v49)
    {
      v50 = cstdlib_strlen(v49);
      v51 = heap_Realloc(*(a1 + 8), *(*a6 + v14 + 148), (v50 + 32) & 0xFFFFFFE0);
      if (!v51)
      {
        break;
      }

      v52 = v51;
      cstdlib_strcpy(v51, *(a4 + 40));
      *(*a6 + v14 + 148) = v52;
    }

    v53 = *(a4 + 48);
    if (v53)
    {
      v54 = cstdlib_strlen(v53);
      v55 = heap_Realloc(*(a1 + 8), *(*a6 + v14 + 156), (v54 + 32) & 0xFFFFFFE0);
      if (!v55)
      {
        break;
      }

      v56 = v55;
      cstdlib_strcpy(v55, *(a4 + 48));
      *(*a6 + v14 + 156) = v56;
      if (v14 != 4 && cstdlib_strstr(v56, "S_PUNC"))
      {
        *(*a6 + v14 - 200) = 1;
      }

      if (cstdlib_strstr(v56, "E_PUNC"))
      {
        *(*a6 + v14 + 24) = 1;
      }

      if (a7 == 1)
      {
        v57 = cstdlib_strstr(*(a4 + 48), "S_PUNC:");
        if (v57)
        {
          v58 = &v57[cstdlib_strlen("S_PUNC:")];
          v59 = cstdlib_strstr(v58, ";");
          if (v59)
          {
            v60 = v59 - v58;
          }

          else
          {
            v60 = cstdlib_strlen(v58);
          }

          v61 = v60;
          v62 = heap_Calloc(*(a1 + 8), 1, v60 + 1);
          *(*a6 + v14 + 180) = v62;
          if (!v62)
          {
            break;
          }

          cstdlib_strncpy(v62, v58, v61);
        }

        v63 = cstdlib_strstr(*(a4 + 48), "E_PUNC:");
        if (v63)
        {
          v64 = v63;
          v65 = cstdlib_strlen("E_PUNC:");
          v88 = a5;
          v66 = a7;
          v67 = *(a1 + 8);
          v68 = cstdlib_strlen(&v64[v65]) + 1;
          v69 = v67;
          a7 = v66;
          a5 = v88;
          v70 = heap_Calloc(v69, 1, v68);
          *(*a6 + v14 + 188) = v70;
          if (!v70)
          {
            break;
          }

          cstdlib_strcpy(v70, &v64[v65]);
        }

        v71 = cstdlib_strstr(*(a4 + 48), "X_PUNC:");
        if (v71)
        {
          v72 = v71;
          v73 = cstdlib_strlen("X_PUNC:");
          v88 = v13;
          v74 = v11;
          v75 = a1;
          v76 = a5;
          v77 = a7;
          v78 = *(v75 + 8);
          v79 = cstdlib_strlen(&v72[v73]) + 1;
          v80 = v78;
          a7 = v77;
          a5 = v76;
          a1 = v75;
          v11 = v74;
          v13 = v88;
          v81 = heap_Calloc(v80, 1, v79);
          *(*a6 + v14 + 196) = v81;
          if (!v81)
          {
            break;
          }

          cstdlib_strcpy(v81, &v72[v73]);
        }
      }
    }

    v82 = *(a4 + 72);
    if (v82)
    {
      *(*a6 + v14 + 132) = v82;
      v83 = *(a4 + 64);
      if (v83)
      {
        v84 = *(a1 + 8);
        v85 = cstdlib_strlen(v83);
        v86 = heap_Alloc(v84, v85 + 1);
        *(*a6 + v14 + 124) = v86;
        if (!v86)
        {
          break;
        }

        cstdlib_strcpy(v86, *(a4 + 64));
      }
    }

    --v13;
    v14 += 224;
    v15 = v91 + 1;
    if (v89 == v91)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v88);
  return 2315264010;
}

uint64_t resolvePHR(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  v76 = *MEMORY[0x277D85DE8];
  if (a4[4])
  {
    v10 = 0;
    v11 = -208;
    while (1)
    {
      if (v11 == -208)
      {
        goto LABEL_24;
      }

      v12 = *a4 + v11;
      if (*(v12 + 288))
      {
        goto LABEL_24;
      }

      v13 = *a4 + v11;
      v14 = *(v13 + 64);
      if (v14)
      {
        v15 = *(v12 + 208);
        if (v15 >= 2 && *(a1 + (v15 - 1)) == 95)
        {
          break;
        }
      }

      v26 = *(v13 + 64);
      if (v26)
      {
        v27 = *v26;
        if (v27 == 66)
        {
          v34 = *(a2 + 8);
          v35 = cstdlib_strlen(v26);
          v36 = heap_Calloc(v34, 1, (v35 + 3));
          v37 = *a4 + v11;
          *(v37 + 288) = v36;
          if (!v36)
          {
            goto LABEL_83;
          }

          cstdlib_strcpy(v36, *(v37 + 64));
          **(*a4 + v11 + 288) = 73;
          v38 = *(a2 + 8);
          v39 = cstdlib_strlen(*(*(*a4 + v11) + 8 * *(a3 + 18)));
          v22 = heap_Calloc(v38, 1, (v39 + 3));
          v23 = *a4;
          v24 = *(a3 + 18);
          *(*(*a4 + v11 + 224) + 8 * v24) = v22;
          if (!v22)
          {
            goto LABEL_83;
          }

          v25 = "[3] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        else
        {
          if (v27 != 79 && v27 != 73)
          {
            goto LABEL_24;
          }

          v28 = *(a2 + 8);
          v29 = cstdlib_strlen(v26);
          v30 = heap_Calloc(v28, 1, (v29 + 3));
          v31 = *a4 + v11;
          *(v31 + 288) = v30;
          if (!v30)
          {
            goto LABEL_83;
          }

          cstdlib_strcpy(v30, *(v31 + 64));
          v32 = *(a2 + 8);
          v33 = cstdlib_strlen(*(*(*a4 + v11) + 8 * *(a3 + 18)));
          v22 = heap_Calloc(v32, 1, (v33 + 3));
          v23 = *a4;
          v24 = *(a3 + 18);
          *(*(*a4 + v11 + 224) + 8 * v24) = v22;
          if (!v22)
          {
            goto LABEL_83;
          }

          v25 = "[2] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        goto LABEL_23;
      }

LABEL_24:
      ++v10;
      v40 = a4[4];
      v11 += 224;
      if (v10 >= v40)
      {
        if (a4[4])
        {
          v41 = 0;
          v42 = 80;
          do
          {
            if (!*(*a4 + v42))
            {
              if ((insert_NLU_info(a2, v41, (v41 + 1), &unk_279DACCC0, a3, a4, a5) & 0x80000000) != 0)
              {
                log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Failed to fill out PHR=B-NIL on word : word index=%d");
                return 2315264000;
              }

              LODWORD(v40) = a4[4];
            }

            ++v41;
            v42 += 224;
          }

          while (v41 < v40);
          if (v40)
          {
            v43 = 0;
            v44 = (*a4 + 80);
            do
            {
              if (!*v44)
              {
                log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "could not work out PHR on word : word index=%d");
                return 2315264000;
              }

              ++v43;
              v44 += 28;
            }

            while (v40 != v43);
            v45 = 0;
            v46 = 80;
            do
            {
              if (!cstdlib_strncmp(*(*a4 + v46), "I-", 2uLL))
              {
                v47 = *a4;
                if (v46 == 80)
                {
                  **(v47 + 80) = 66;
                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", 0, *(*a4 + 80));
                }

                else if (cstdlib_strcmp(*(v47 + v46 - 224), *(v47 + v46)))
                {
                  cstdlib_strcpy(__dst, *(*a4 + v46));
                  __dst[0] = 66;
                  if (cstdlib_strcmp(*(*a4 + v46 - 224), __dst))
                  {
                    **(*a4 + v46) = 66;
                    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v45, *(*a4 + v46));
                  }
                }
              }

              v48 = *(*a4 + v46 + 96);
              if (v48)
              {
                v49 = cstdlib_strcmp(v48, "COMP]");
                if (v46 != 80 && !v49)
                {
                  v50 = *(*a4 + v46 - 128);
                  if (v50)
                  {
                    if (!cstdlib_strcmp(v50, "COMP]"))
                    {
                      heap_Free(*(a2 + 8), *(*a4 + v46 - 128));
                      *(*a4 + v46 - 128) = 0;
                    }
                  }
                }
              }

              ++v45;
              v46 += 224;
            }

            while (v45 < a4[4]);
            if (a4[4])
            {
              v51 = 0;
              v52 = 0;
              v53 = *a4;
              do
              {
                v74 = v51;
                cstdlib_strcpy(__dst, *(v53 + 224 * v52 + 80));
                if (!cstdlib_strncmp(__dst, "B-", 2uLL))
                {
                  cstdlib_strcpy(__dst, (*(*a4 + 224 * v52 + 80) + 2));
                }

                LODWORD(v54) = v52;
                if (a4[4] > v52)
                {
                  v55 = 224 * v52 + 80;
                  v54 = v52;
                  do
                  {
                    v56 = *(*a4 + v55);
                    if (!v56 || cstdlib_strcmp(v56, __dst) && (cstdlib_strlen(*(*a4 + v55)) < 3 || cstdlib_strcmp((*(*a4 + v55) + 2), __dst) || cstdlib_strncmp(*(*a4 + v55), "I-", 2uLL)) && *(*a4 + v55 - 76) != *(*a4 + 224 * v52 + 4))
                    {
                      break;
                    }

                    ++v54;
                    v55 += 224;
                  }

                  while (v54 < a4[4]);
                }

                v57 = v54 - 1;
                if (v57 <= v52)
                {
LABEL_72:
                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[3] add syn chunk %s from %d to %d", __dst, v74, v54 - 1);
                  v64 = (v54 - 1);
                  v65 = a2;
                  v66 = 0;
                  v67 = v52;
                }

                else
                {
                  v58 = 1;
                  v59 = v52;
                  v60 = v52;
                  while (1)
                  {
                    v61 = v60;
                    v62 = v60;
                    if (*(*a4 + 224 * v60 + 28) != 1)
                    {
                      break;
                    }

LABEL_68:
                    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[1] add syn chunk %s%s from %d to %d", __dst, "-P", v60, v59);
                    v63 = addSynChunk(a2, __dst, "-P", v60, v61, a3, a4);
                    if ((v63 & 0x80000000) != 0)
                    {
                      return v63;
                    }

                    v58 = 0;
                    v60 = v61 + 1;
                    v59 = (v61 + 1);
                    if (v57 <= v59)
                    {
                      goto LABEL_81;
                    }
                  }

                  while (v57 > ++v62)
                  {
                    if (*(*a4 + 224 * v62 + 28) == 1)
                    {
                      v59 = v62;
                      v61 = v62;
                      goto LABEL_68;
                    }
                  }

                  if (v58)
                  {
                    goto LABEL_72;
                  }

LABEL_81:
                  if (v54 <= v60)
                  {
                    goto LABEL_74;
                  }

                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[2] add syn chunk %s%s from %d to %d", __dst, "-P", v60, v54 - 1);
                  v67 = v60;
                  v64 = (v54 - 1);
                  v65 = a2;
                  v66 = "-P";
                }

                v63 = addSynChunk(v65, __dst, v66, v67, v64, a3, a4);
                if ((v63 & 0x80000000) != 0)
                {
                  return v63;
                }

LABEL_74:
                v53 = *a4;
                *(*a4 + 224 * v52 + 44) = 1;
                v68 = v53 + 224 * v57;
                *(v68 + 40) = 1;
                if (*(v68 + 28) == 1)
                {
                  *(v53 + 224 * v52 + 32) = 1;
                }

                if (v52 == v54)
                {
                  v52 = v54 + 1;
                }

                else
                {
                  v52 = v54;
                }

                v51 = v52;
              }

              while (v52 < a4[4]);
              if (a4[4])
              {
                v70 = 0;
                v71 = *a4;
                v72 = 80;
                do
                {
                  heap_Free(*(a2 + 8), *(v71 + v72));
                  v69 = 0;
                  v71 = *a4;
                  *(*a4 + v72) = 0;
                  ++v70;
                  v72 += 224;
                }

                while (v70 < a4[4]);
                return v69;
              }
            }
          }
        }

        return 0;
      }
    }

    v16 = *(a2 + 8);
    v17 = cstdlib_strlen(v14);
    v18 = heap_Calloc(v16, 1, (v17 + 3));
    v19 = *a4 + v11;
    *(v19 + 288) = v18;
    if (!v18)
    {
      goto LABEL_83;
    }

    cstdlib_strcpy(v18, *(v19 + 64));
    if (cstdlib_strcmp(*(*a4 + v11 + 288), "O"))
    {
      **(*a4 + v11 + 288) = 73;
    }

    v20 = *(a2 + 8);
    v21 = cstdlib_strlen(*(*(*a4 + v11) + 8 * *(a3 + 18)));
    v22 = heap_Calloc(v20, 1, (v21 + 3));
    v23 = *a4;
    v24 = *(a3 + 18);
    *(*(*a4 + v11 + 224) + 8 * v24) = v22;
    if (!v22)
    {
LABEL_83:
      v69 = 2315264010;
      log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0);
      return v69;
    }

    v25 = "[1] set missing PHR on word : word index=%d to %s (also copy POS %s)";
LABEL_23:
    cstdlib_strcpy(v22, *(*(v23 + v11) + 8 * v24));
    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, v25, v10, *(*a4 + v11 + 288), *(*(*a4 + v11 + 224) + 8 * *(a3 + 18)));
    goto LABEL_24;
  }

  return 0;
}

uint64_t addMarkerType(uint64_t a1, const char *a2, const char *a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  result = checkSpan(a1, a6, (*a7 + 224 * a4 + 56));
  if ((result & 0x80000000) == 0)
  {
    result = checkSpan(a1, a6, (*a7 + 224 * a5 + 56));
    if ((result & 0x80000000) == 0)
    {
      v15 = a4;
      v16 = *(a6 + 74);
      v17 = 8 * v16;
      do
      {
        if (v16 >= *(a6 + 72) || (v18 = *(a6 + 528)) == 0)
        {
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Ignoring marker :%s, as not in DEFMAPPING list", a2);
          return 0;
        }

        v19 = cstdlib_strcmp((v18 + *(*(a6 + 536) + 4 * *(*(a6 + 64) + v17))), a2);
        ++v16;
        v17 += 8;
      }

      while (v19);
      v20 = *a7;
      v21 = (v16 - 1);
      v22 = *(*a7 + 224 * a4 + 56) + 32 * v21;
      *v22 = 1;
      *(v22 + 8) = a4;
      *(v22 + 10) = a5;
      v23 = *(v20 + 224 * a5 + 56) + 32 * v21;
      *(v23 + 4) = 1;
      *(v23 + 8) = a4;
      v24 = *(a1 + 8);
      v25 = cstdlib_strlen(a3);
      v26 = heap_Calloc(v24, 1, (v25 + 1));
      *(*(*a7 + 224 * v15 + 56) + 32 * v21 + 16) = v26;
      if (v26)
      {
        cstdlib_strcpy(v26, a3);
        return 0;
      }

      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      return 2315264010;
    }
  }

  return result;
}

uint64_t createPOSString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, (2 * *(a3 + 8)) | 1);
  *(a3 + 24) = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  if (*(a3 + 8))
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      v8 += cstdlib_strlen(*(*(*a3 + v9) + 8 * *(a2 + 18))) + 1;
      ++v7;
      v9 += 224;
    }

    while (v7 < *(a3 + 8));
    v10 = v8 + 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = heap_Calloc(*(a1 + 8), 1, v10);
  *(a3 + 16) = v11;
  if (v11)
  {
    if (*(a3 + 8))
    {
      v12 = 0;
      v13 = 0;
      v14 = 16;
      do
      {
        v15 = *(a3 + 16);
        *(*(a3 + 24) + 2 * v12) = v13;
        v16 = (v15 + v13);
        v17 = *(*(*a3 + v14) + 8 * *(a2 + 18));
        v18 = cstdlib_strlen(v17);
        cstdlib_memcpy(v16, v17, v18);
        v19 = v13 + cstdlib_strlen(*(*(*a3 + v14) + 8 * *(a2 + 18)));
        v20 = *(a3 + 8);
        if (v12 + 1 < v20)
        {
          cstdlib_strcat((*(a3 + 16) + v19), " ");
          v20 = *(a3 + 8);
        }

        v13 = v19 + 1;
        ++v12;
        v14 += 224;
      }

      while (v12 < v20);
    }

    return 0;
  }

  else
  {
LABEL_14:
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t getSyllCount(const char *a1)
{
  if (a1)
  {
    v1 = a1;
    if (cstdlib_strlen(a1) && cstdlib_strcmp(v1, "."))
    {
      v2 = cstdlib_strlen(v1);
      v3 = 1;
      v4 = v2;
      if (v2)
      {
        do
        {
          v5 = *v1++;
          if (v5 == 46)
          {
            ++v3;
          }

          --v4;
        }

        while (v4);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t getPhonWeights(uint64_t *a1)
{
  if (*(a1 + 4))
  {
    v2 = 0;
    v3 = 0;
    v4 = *a1;
    do
    {
      SyllCount = getSyllCount(*(v4 + v2 + 8));
      v4 = *a1;
      *(*a1 + v2 + 24) = SyllCount;
      ++v3;
      v2 += 224;
    }

    while (v3 < *(a1 + 4));
  }

  return 0;
}

uint64_t add2Str(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s)
{
  v8 = cstdlib_strlen(__s);
  v9 = *a3;
  if (v8 >= v9 - cstdlib_strlen(*a2))
  {
    v11 = cstdlib_strlen(__s);
    v12 = *a3;
    v13 = (v11 - v12 + cstdlib_strlen(*a2));
    if (v13 <= 0x80)
    {
      v14 = 128;
    }

    else
    {
      v14 = v13;
    }

    v10 = heap_Realloc(*(a1 + 8), *a2, *a3 + v14 + 1);
    if (!v10)
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      return 2315264010;
    }

    *a2 = v10;
    *a3 += v14;
  }

  else
  {
    v10 = *a2;
  }

  v15 = cstdlib_strlen(v10);
  v16 = *a2;
  if (v15)
  {
    cstdlib_strcat(v16, __s);
  }

  else
  {
    cstdlib_strcpy(v16, __s);
  }

  return 0;
}

unsigned __int16 **setDomainOnWord(unsigned __int16 **result, unsigned int a2, unsigned int a3, int a4)
{
  if (*(result + 4))
  {
    v4 = *result;
    v5 = *(result + 4) - 1;
    do
    {
      v6 = *v4;
      if (v6 >= a2 && v4[1] <= a3)
      {
        *(v4 + 13) = a4;
      }

      v7 = v6 > a3 || v5-- == 0;
      v4 += 112;
    }

    while (!v7);
  }

  return result;
}

unsigned __int16 **setPhoneticRange(unsigned __int16 **result, unsigned int a2, unsigned int a3)
{
  if (*(result + 4))
  {
    v3 = *result;
    v4 = *(result + 4) - 1;
    do
    {
      v5 = *v3;
      if (v5 >= a2 && v3[1] <= a3)
      {
        *(v3 + 12) = 1;
      }

      v6 = v5 > a3 || v4-- == 0;
      v3 += 112;
    }

    while (!v6);
  }

  return result;
}

uint64_t printAsChunks(uint64_t result, const char **a2, unsigned __int16 *a3, uint64_t a4, uint64_t *a5)
{
  if (result)
  {
    log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "CHUNKS", 0);
    if (*(a5 + 4))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *a5;
        v12 = *(*a5 + v9 + 56);
        if (v12 && *(v12 + 32 * *(a4 + 24)) == 1)
        {
          result = add2Str(*a4, a2, a3, "[");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = add2Str(*a4, a2, a3, *(*(*a5 + v9 + 56) + 32 * *(a4 + 24) + 16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = add2Str(*a4, a2, a3, " ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v11 = *a5;
        }

        result = add2Str(*a4, a2, a3, *(*(v11 + v9 + 16) + 8 * *(a4 + 16)));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = add2Str(*a4, a2, a3, "_");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = add2Str(*a4, a2, a3, *(*(*a5 + v9 + 16) + 8 * *(a4 + 18)));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = add2Str(*a4, a2, a3, " ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v13 = *(*a5 + v9 + 56);
        if (v13 && *(v13 + 32 * *(a4 + 24) + 4) == 1)
        {
          result = add2Str(*a4, a2, a3, "] ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "%s", *a2);
          cstdlib_strcpy(*a2, "");
        }

        ++v10;
        v9 += 224;
      }

      while (v10 < *(a5 + 4));
    }

    log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "%s", *a2);
    cstdlib_strcpy(*a2, "");
    return 0;
  }

  return result;
}

uint64_t printSent(uint64_t a1, int a2, const char **a3, char *a4, unsigned __int16 *a5, uint64_t a6, uint64_t *a7, const char *a8, int a9)
{
  if (!a2)
  {
    return 0;
  }

  v14 = a1;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Sentence :%s", a8);
  if (*(a7 + 4))
  {
    v15 = 0;
    v16 = "tmphr=%4s ";
    if (a9 == 1)
    {
      v16 = "%4s ";
    }

    v40 = v16;
    while (1)
    {
      sprintf(a4, "[%2d] ", v15);
      result = add2Str(v14, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v18 = 224 * v15;
      cstdlib_strncpy(a4, *(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 16)), 0x14uLL);
      v19 = cstdlib_strlen(*(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 16)));
      if (v19 <= 0x13)
      {
        do
        {
          cstdlib_strcat(a4, " ");
          v20 = v19++ >= 0x13;
        }

        while (!v20);
      }

      result = add2Str(v14, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(v14, a3, a5, " ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v21 = *(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 18));
      if (!v21)
      {
        v21 = " ";
      }

      sprintf(a4, "%6s ", v21);
      result = add2Str(v14, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v22 = *a7;
      if (*(*a7 + 224 * v15 + 80))
      {
        sprintf(a4, v40, *(*a7 + 224 * v15 + 80));
        result = add2Str(v14, a3, a5, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a7;
      }

      if (*(v22 + 224 * v15 + 88))
      {
        sprintf(a4, "retag=%4s ", *(v22 + 224 * v15 + 88));
        result = add2Str(v14, a3, a5, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a7;
      }

      v23 = *(*(v22 + 224 * v15 + 16) + 8 * *(a6 + 20));
      if (!v23)
      {
        v23 = " ";
      }

      sprintf(a4, "%6s ", v23);
      result = add2Str(v14, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_strncpy(a4, *(*a7 + v18 + 8), 0x14uLL);
      v24 = cstdlib_strlen(*(*a7 + v18 + 8));
      if (v24 <= 0x13)
      {
        do
        {
          cstdlib_strcat(a4, " ");
          v20 = v24++ >= 0x13;
        }

        while (!v20);
      }

      result = add2Str(v14, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (*(*a7 + 224 * v15 + 24))
      {
        sprintf(a4, "(nsyll=%d) ", *(*a7 + 224 * v15 + 24));
        result = add2Str(v14, a3, a5, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (a9 == 1)
      {
        v25 = *a7;
        if (*(*a7 + 224 * v15 + 184))
        {
          sprintf(a4, "startDocPunc=%s ", *(*a7 + 224 * v15 + 184));
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = *a7;
        }

        if (*(v25 + 224 * v15 + 192))
        {
          sprintf(a4, "endDocPunc=%s ", *(v25 + 224 * v15 + 192));
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = *a7;
        }

        if (*(v25 + 224 * v15 + 200))
        {
          sprintf(a4, "singleDocPunc=%s ", *(v25 + 224 * v15 + 200));
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = *a7;
        }

        if (*(v25 + 224 * v15 + 208))
        {
          sprintf(a4, "orthPunc=%s ", *(v25 + 224 * v15 + 208));
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = *a7;
        }

        if (*(v25 + 224 * v15 + 168))
        {
          sprintf(a4, "tokTag=%s ", *(v25 + 224 * v15 + 168));
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = *a7;
        }

        if (*(v25 + 224 * v15 + 176))
        {
          sprintf(a4, "compoundInfo=%s ");
          goto LABEL_72;
        }
      }

      else if (!a9)
      {
        v26 = *a7;
        if (*(*a7 + 224 * v15 + 220))
        {
          result = add2Str(v14, a3, a5, "DUMMYWORD ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 28))
        {
          result = add2Str(v14, a3, a5, "_HASCOMMA ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 36))
        {
          result = add2Str(v14, a3, a5, "_HASBNDBEFORESET ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 44))
        {
          result = add2Str(v14, a3, a5, "_ISFIRSTINPHR ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 40))
        {
          result = add2Str(v14, a3, a5, "_ISLASTINPHR ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 32))
        {
          result = add2Str(v14, a3, a5, "_PHRENDSINCOMMA ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 96))
        {
          sprintf(a4, "compoundTag=%s ", *(v26 + 224 * v15 + 96));
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 52))
        {
          sprintf(a4, "domain=%s ");
LABEL_72:
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      if (!*(*a7 + 224 * v15 + 48) || (result = add2Str(v14, a3, a5, " bPHONETIC "), (result & 0x80000000) == 0))
      {
        if (a9 == 1 && *(a6 + 72))
        {
          v41 = v14;
          v27 = a3;
          v28 = a5;
          v29 = 0;
          v30 = 4;
          v31 = 16;
          do
          {
            v32 = *a7;
            v33 = *(*a7 + 224 * v15 + 56);
            if (v33)
            {
              if (*(v33 + v31 - 16) != 1)
              {
                goto LABEL_85;
              }

              if (*(v33 + v31 + 8) == 1)
              {
                sprintf(a4, "<%s_%s_ext ");
              }

              else
              {
                sprintf(a4, "<%s_%s ");
              }

              result = add2Str(v41, v27, v28, a4);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v32 = *a7;
              v33 = *(*a7 + 224 * v15 + 56);
              if (v33)
              {
LABEL_85:
                v34 = v33 + v31;
                if (*(v34 - 12) == 1)
                {
                  if (*(*(v32 + 224 * *(v34 - 8) + 56) + v31 + 8) == 1)
                  {
                    sprintf(a4, "%s_ext_%s> ");
                  }

                  else
                  {
                    sprintf(a4, "%s_%s> ");
                  }

                  result = add2Str(v41, v27, v28, a4);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }
              }
            }

            ++v29;
            v35 = *(a6 + 72);
            v31 += 32;
            v30 += 8;
          }

          while (v29 < v35);
          if (*(*a7 + 224 * v15 + 64))
          {
            v36 = v35 == 0;
          }

          else
          {
            v36 = 1;
          }

          a5 = v28;
          a3 = v27;
          v14 = v41;
          if (!v36)
          {
            v37 = 0;
            v38 = 4;
            do
            {
              v39 = *(*(*a7 + 224 * v15 + 64) + 8 * v37);
              if (v39)
              {
                snprintf(a4, 0x400uLL, "[%s %s] ", (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 64) + v38))), v39);
                result = add2Str(v41, a3, a5, a4);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                LOWORD(v35) = *(a6 + 72);
              }

              ++v37;
              v38 += 8;
            }

            while (v37 < v35);
          }
        }

        log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "%s", *a3);
        cstdlib_strcpy(*a3, "");
        result = 0;
        if (++v15 < *(a7 + 4))
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}