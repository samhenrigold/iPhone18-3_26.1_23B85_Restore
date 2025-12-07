uint64_t fe_phrasing_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62343, 1728);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2315264008;
  }
}

size_t doesWordEndWithComma(size_t result, const char *a2)
{
  *__s = 0;
  if (result)
  {
    v3 = result;
    result = cstdlib_strlen(result);
    if (result)
    {
      v4 = Utf8_Utf8NbrOfSymbols(a2);
      if (v4 != 1)
      {
        v5 = 0;
        v6 = 0;
        v7 = (v4 - 1);
        do
        {
          v8 = v5;
          if ((utf8_getUTF8Char(a2, v5, __s) & 0x80000000) != 0)
          {
            break;
          }

          v9 = cstdlib_strlen(__s);
          if (cstdlib_strstr(v3, __s))
          {
            return 1;
          }

          v5 = v8 + v9;
          ++v6;
        }

        while (v6 < v7);
      }

      return 0;
    }
  }

  return result;
}

uint64_t fe_phrasing_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2315264001;
  }

  result = 0;
  *a2 = &IFePhrasing;
  return result;
}

uint64_t hlp_ReadSildur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, _DWORD *a6)
{
  *a5 = 0;
  *a6 = 0;
  if (!a4)
  {
    return 0;
  }

  v17 = 0;
  __s1 = 0;
  v15 = 0;
  v12 = (*(*(a1 + 56) + 184))(a2, a3, a4, 8, &v17);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (v17)
  {
    v12 = (*(*(a1 + 56) + 168))(a2, a3, a4, 8, 1, a5, &v15);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }
  }

  v13 = (*(*(a1 + 56) + 184))(a2, a3, a4, 18, &v17);
  if ((v13 & 0x80000000) == 0)
  {
    if (v17)
    {
      v13 = (*(*(a1 + 56) + 176))(a2, a3, a4, 18, &__s1, &v15);
      if ((v13 & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "external"))
      {
        *a6 = 1;
      }
    }
  }

  return v13;
}

uint64_t hlp_CopyWordRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  v19 = 0;
  __s = 0;
  v17 = 0;
  v16 = 0;
  while (1)
  {
    result = (*(*(a1 + 56) + 184))(a2, a3, a4, v11, &v19 + 2);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (HIWORD(v19))
    {
      if (v11 <= 0x11u && ((1 << v11) & 0x20186) != 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, a4, v11, 1, &v19, &v17 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v11 == 8 && *(a1 + 112) && v19)
        {
          v16 = 0;
          v10 = 1;
          (*(*(a1 + 56) + 160))(a2, a3, a4, 8, 1, &v16, &v17);
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, a5, v11, 1, &v19, &v17);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = (*(*(a1 + 56) + 176))(a2, a3, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v14 = *(*(a1 + 56) + 160);
        v15 = cstdlib_strlen(__s);
        result = v14(a2, a3, a5, v11, (v15 + 1), __s, &v17);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    v13 = v11++;
    if (v13 >= 0x15)
    {
      if (v10 == 1)
      {
        result = (*(*(a1 + 56) + 184))(a2, a3, a4, 7, &v19 + 2);
        if ((result & 0x80000000) == 0)
        {
          v16 = 3;
          return (*(*(a1 + 56) + 160))(a2, a3, a4, 7, 1, &v16, &v17);
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t hlp_splitNLURangeTags(uint64_t *a1, char *__s, char **a3, char **a4)
{
  v4 = 2315264010;
  if (!__s)
  {
    return 2315264007;
  }

  v8 = *a1;
  v9 = *(*a1 + 8);
  v10 = cstdlib_strlen(__s);
  v11 = heap_Calloc(v9, 1, v10 + 1);
  if (v11)
  {
    v12 = v11;
    cstdlib_strcpy(v11, __s);
    v13 = *(v8 + 8);
    v14 = cstdlib_strlen(__s);
    v15 = heap_Calloc(v13, 1, v14 + 1);
    if (!v15)
    {
      v114 = *(v8 + 8);
      v115 = v12;
      goto LABEL_233;
    }

    v127 = a4;
    v136 = v15;
    cstdlib_strcpy(v15, __s);
    v16 = 0;
    v17 = __s;
    do
    {
      if (hlp_NLUStrKeyLen(v17) >= 3)
      {
        v18 = *v17 - 69;
        v19 = v18 > 0xE;
        v20 = (1 << v18) & 0x4011;
        v21 = v19 || v20 == 0;
        if (!v21 && v17[1] == 95)
        {
          ++v16;
        }
      }

      v17 = hlp_NLUStrNext(v17);
    }

    while (v17);
    v22 = v136;
    if (!v16)
    {
      goto LABEL_234;
    }

    v23 = heap_Calloc(*(v8 + 8), 8, v16);
    if (!v23)
    {
      goto LABEL_232;
    }

    v24 = v23;
    v134 = __s;
    v135 = 0;
    v25 = __s;
    v128 = a3;
    v131 = v12;
LABEL_16:
    v26 = hlp_NLUStrKeyLen(v25);
    if (v26 < 3)
    {
      goto LABEL_33;
    }

    v27 = *v25 - 69;
    v19 = v27 > 0xE;
    v28 = (1 << v27) & 0x4011;
    v29 = v19 || v28 == 0;
    if (v29 || v25[1] != 95)
    {
      goto LABEL_33;
    }

    v30 = v26;
    v31 = heap_Calloc(*(v8 + 8), 1, v26 - 1);
    if (!v31)
    {
      v137 = v24;
      v22 = v136;
      goto LABEL_226;
    }

    v32 = v31;
    cstdlib_strncpy(v31, v25 + 2, v30 - 2);
    v33 = v135;
    if (v135)
    {
      v34 = v135;
      v35 = v24;
      v36 = v135;
      while (*v35)
      {
        if (!cstdlib_strcmp(*v35, v32))
        {
          heap_Free(*(v8 + 8), v32);
          a3 = v128;
          v12 = v131;
LABEL_32:
          v22 = v136;
LABEL_33:
          v25 = hlp_NLUStrNext(v25);
          if (!v25)
          {
            v37 = *(v8 + 8);
            if (!v135)
            {
              heap_Free(v37, v24);
              goto LABEL_234;
            }

            v137 = heap_Realloc(v37, v24, 8 * v135);
            if (v137)
            {
              v38 = heap_Calloc(*(v8 + 8), 2, v135);
              if (v38)
              {
                v126 = v38;
                v39 = v134;
                while (1)
                {
                  v40 = hlp_NLUStrKeyLen(v39);
                  if (v40 >= 3)
                  {
                    v41 = *v39 - 69;
                    v19 = v41 > 0xE;
                    v42 = (1 << v41) & 0x4011;
                    v43 = v19 || v42 == 0;
                    if (!v43 && v39[1] == 95)
                    {
                      v44 = 0;
                      v45 = v40 - 2;
                      while (1)
                      {
                        v46 = *(v137 + 8 * v44);
                        if (!v46)
                        {
                          goto LABEL_51;
                        }

                        if (!cstdlib_strncmp(v46, v39 + 2, v45))
                        {
                          break;
                        }

                        if (v135 == ++v44)
                        {
                          goto LABEL_51;
                        }
                      }

                      if ((v44 & 0x8000) == 0)
                      {
                        ++*(v126 + 2 * (v44 & 0x7FFF));
                      }
                    }
                  }

LABEL_51:
                  v39 = hlp_NLUStrNext(v39);
                  if (!v39)
                  {
                    v47 = heap_Calloc(*(v8 + 8), 8, v135);
                    if (!v47)
                    {
                      a3 = v128;
                      v22 = v136;
                      v50 = v126;
                      goto LABEL_225;
                    }

                    v48 = v47;
                    v49 = 0;
                    v22 = v136;
                    v50 = v126;
                    do
                    {
                      v51 = heap_Calloc(*(v8 + 8), 8, *(v126 + 2 * v49));
                      *(v48 + 8 * v49) = v51;
                      if (!v51)
                      {
                        goto LABEL_209;
                      }

                      ++v49;
                    }

                    while (v135 != v49);
                    v52 = heap_Calloc(*(v8 + 8), 2, v135);
                    if (v52)
                    {
                      v132 = v52;
                      v53 = v134;
                      while (1)
                      {
                        v54 = hlp_NLUStrKeyLen(v53);
                        if (v54 >= 3)
                        {
                          v55 = *v53 - 69;
                          v19 = v55 > 0xE;
                          v56 = (1 << v55) & 0x4011;
                          if (!v19 && v56 != 0 && v53[1] == 95)
                          {
                            KeyIdx = hlp_getKeyIdx(v137, v135, v53 + 2, (v54 - 2));
                            if ((KeyIdx & 0x80000000) == 0)
                            {
                              v59 = KeyIdx;
                              v60 = *(v48 + 8 * KeyIdx);
                              v61 = hlp_NLUStrKeyValue(v53);
                              v62 = v61;
                              v63 = v61 ? hlp_NLUStrLength(v61) : 0;
                              if (!hlp_checkValExist(v60, *(v132 + 2 * v59), v62, v63))
                              {
                                v64 = heap_Calloc(*(v8 + 8), 1, v63 + 1);
                                if (!v64)
                                {
                                  v12 = v131;
                                  v68 = v132;
                                  v22 = v136;
LABEL_202:
                                  v50 = v126;
LABEL_210:
                                  v117 = 0;
                                  do
                                  {
                                    v118 = *(v48 + 8 * v117);
                                    if (v118)
                                    {
                                      if (v68)
                                      {
                                        v119 = *(v68 + 2 * v117);
                                        if (v119)
                                        {
                                          for (i = 0; i < v119; ++i)
                                          {
                                            v121 = *(*(v48 + 8 * v117) + 8 * i);
                                            if (v121)
                                            {
                                              heap_Free(*(v8 + 8), v121);
                                              v119 = *(v68 + 2 * v117);
                                            }
                                          }

                                          v118 = *(v48 + 8 * v117);
                                        }
                                      }

                                      heap_Free(*(v8 + 8), v118);
                                    }

                                    ++v117;
                                  }

                                  while (v117 != v135);
                                  heap_Free(*(v8 + 8), v48);
                                  if (v68)
                                  {
                                    heap_Free(*(v8 + 8), v68);
                                  }

                                  a3 = v128;
LABEL_225:
                                  heap_Free(*(v8 + 8), v50);
LABEL_226:
                                  v116 = v135;
                                  if (v135)
                                  {
LABEL_227:
                                    v122 = 0;
                                    v123 = v116;
                                    do
                                    {
                                      v124 = *(v137 + 8 * v122);
                                      if (v124)
                                      {
                                        heap_Free(*(v8 + 8), v124);
                                      }

                                      ++v122;
                                    }

                                    while (v123 != v122);
                                  }

                                  heap_Free(*(v8 + 8), v137);
                                  if (v4)
                                  {
LABEL_232:
                                    heap_Free(*(v8 + 8), v12);
                                    v114 = *(v8 + 8);
                                    v115 = v22;
LABEL_233:
                                    heap_Free(v114, v115);
                                    return v4;
                                  }

LABEL_234:
                                  v4 = 0;
                                  *a3 = v12;
                                  *v127 = v22;
                                  return v4;
                                }

                                v65 = v64;
                                if (v62)
                                {
                                  cstdlib_strncpy(v64, v62, v63);
                                }

                                v66 = *(v132 + 2 * v59);
                                *&v60[8 * v66] = v65;
                                *(v132 + 2 * v59) = v66 + 1;
                                v12 = v131;
                              }
                            }
                          }
                        }

                        v53 = hlp_NLUStrNext(v53);
                        if (!v53)
                        {
                          v22 = v136;
                          v67 = v134;
                          v50 = v126;
                          v68 = v132;
                          do
                          {
                            v69 = heap_Realloc(*(v8 + 8), *(v48 + 8 * v53), 8 * *(v132 + 2 * v53));
                            if (!v69)
                            {
                              goto LABEL_210;
                            }

                            *(v48 + 8 * v53++) = v69;
                          }

                          while (v135 != v53);
                          v70 = 0;
                          v129 = v12 - 1;
                          while (!*(v68 + 2 * v70))
                          {
LABEL_200:
                            if (++v70 == v135)
                            {
                              v4 = 0;
                              goto LABEL_202;
                            }
                          }

                          v71 = 0;
                          v133 = v70;
                          while (2)
                          {
                            v72 = *(v137 + 8 * v70);
                            v73 = *(*(v48 + 8 * v70) + 8 * v71);
                            v139 = 0;
                            v138 = 0;
                            if (v73)
                            {
                              v74 = cstdlib_strlen(v73);
                            }

                            else
                            {
                              v74 = 0;
                            }

                            v75 = *(v8 + 8);
                            v76 = cstdlib_strlen(v72);
                            v77 = heap_Calloc(v75, 1, v76 + 3);
                            if (!v77)
                            {
                              v92 = 0;
                              v96 = 0;
                              v22 = v136;
                              goto LABEL_158;
                            }

                            v78 = v77;
                            cstdlib_strcpy(v77, "S_");
                            cstdlib_strcat(v78, v72);
                            v79 = *(v8 + 8);
                            v80 = cstdlib_strlen(v72);
                            v81 = heap_Calloc(v79, 1, v80 + 3);
                            v82 = v81;
                            if (!v81)
                            {
                              v92 = 0;
                              v96 = 0;
LABEL_123:
                              v86 = 0;
                              goto LABEL_153;
                            }

                            v130 = v74;
                            cstdlib_strcpy(v81, "I_");
                            cstdlib_strcat(v82, v72);
                            v83 = *(v8 + 8);
                            v84 = cstdlib_strlen(v72);
                            v85 = heap_Calloc(v83, 1, v84 + 3);
                            v86 = v85;
                            if (!v85)
                            {
                              v92 = 0;
                              v96 = 0;
                              goto LABEL_153;
                            }

                            cstdlib_strcpy(v85, "E_");
                            cstdlib_strcat(v86, v72);
                            if (hlp_NLUStrFind(v67, v78, &v138, &v139))
                            {
                              v87 = v139;
                              if (v73 && !v139)
                              {
                                if (cstdlib_strcmp(v73, " "))
                                {
                                  v87 = v139;
                                  goto LABEL_91;
                                }

LABEL_95:
                                if (hlp_NLUStrFind(v67, v82, &v138, &v139))
                                {
                                  v88 = v139;
                                  if (v73 && !v139)
                                  {
                                    if (cstdlib_strcmp(v73, " "))
                                    {
                                      v88 = v139;
                                      goto LABEL_100;
                                    }

LABEL_104:
                                    if (hlp_NLUStrFind(v67, v86, &v138, &v139))
                                    {
                                      v89 = v139;
                                      if (v73 && !v139)
                                      {
                                        if (cstdlib_strcmp(v73, " "))
                                        {
                                          v89 = v139;
                                          goto LABEL_109;
                                        }

LABEL_113:
                                        v90 = *(v8 + 8);
                                        v91 = cstdlib_strlen(v67);
                                        v92 = heap_Calloc(v90, 1, v91 + 1);
                                        if (v92)
                                        {
                                          v93 = v67;
                                          v94 = *(v8 + 8);
                                          v95 = cstdlib_strlen(v93);
                                          v96 = heap_Calloc(v94, 1, v95 + 1);
                                          if (v96)
                                          {
                                            if (v78 && !v82 && !v86)
                                            {
                                              cstdlib_strcpy(v92, "S_");
                                              cstdlib_strcat(v92, v72);
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v97 = v96;
                                                  v98 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  v97 = v96;
                                                  v98 = ":";
                                                }
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "I_");
                                                v97 = v96;
                                                v98 = v72;
                                              }

                                              cstdlib_strcat(v97, v98);
                                              v86 = 0;
                                              v82 = 0;
                                              goto LABEL_153;
                                            }

                                            if (v78)
                                            {
                                              v99 = 1;
                                            }

                                            else
                                            {
                                              v99 = v82 == 0;
                                            }

                                            v100 = !v99;
                                            if (!v99 && !v86)
                                            {
                                              cstdlib_strcpy(v92, "I_");
                                              cstdlib_strcat(v92, v72);
                                              v22 = v136;
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v101 = v96;
                                                  v102 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  v101 = v96;
                                                  v102 = ":";
                                                }
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "I_");
                                                v101 = v96;
                                                v102 = v72;
                                              }

                                              cstdlib_strcat(v101, v102);
                                              v86 = 0;
                                              goto LABEL_155;
                                            }

                                            if (!v78 && !v82 && v86)
                                            {
                                              cstdlib_strcpy(v92, "I_");
                                              cstdlib_strcat(v92, v72);
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                v12 = v131;
                                                v22 = v136;
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v103 = v96;
                                                  v104 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  v103 = v96;
                                                  v104 = ":";
                                                }

                                                cstdlib_strcat(v103, v104);
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "E_");
                                                cstdlib_strcat(v96, v72);
                                                v12 = v131;
                                                v22 = v136;
                                              }

LABEL_157:
                                              heap_Free(*(v8 + 8), v86);
LABEL_158:
                                              if (v73 && !cstdlib_strcmp(v73, " "))
                                              {
                                                v73 = 0;
                                              }

                                              hlp_NLUStrRemoveRangeKey(v12, v72, v73);
                                              hlp_NLUStrRemoveRangeKey(v22, v72, v73);
                                              v107 = cstdlib_strlen(v12);
                                              if (v107 && v129[v107] != 59)
                                              {
                                                cstdlib_strcat(v12, ";");
                                              }

                                              cstdlib_strcat(v12, v92);
                                              v108 = cstdlib_strlen(v22);
                                              v68 = v132;
                                              if (v108 && v136[v108 - 1] != 59)
                                              {
                                                cstdlib_strcat(v22, ";");
                                              }

                                              cstdlib_strcat(v22, v96);
                                              if (v92)
                                              {
                                                heap_Free(*(v8 + 8), v92);
                                              }

                                              if (v96)
                                              {
                                                heap_Free(*(v8 + 8), v96);
                                              }

                                              ++v71;
                                              v70 = v133;
                                              v67 = v134;
                                              if (v71 >= *(v132 + 2 * v133))
                                              {
                                                goto LABEL_200;
                                              }

                                              continue;
                                            }

                                            if (v78 && v86)
                                            {
                                              cstdlib_strcpy(v92, "S_");
                                              cstdlib_strcat(v92, v72);
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v105 = v96;
                                                  v106 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  v105 = v96;
                                                  v106 = ":";
                                                }
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "E_");
                                                v105 = v96;
                                                v106 = v72;
                                              }

                                              cstdlib_strcat(v105, v106);
LABEL_153:
                                              heap_Free(*(v8 + 8), v78);
                                              goto LABEL_154;
                                            }

                                            if (v78 && v82 && !v86)
                                            {
                                              cstdlib_strcpy(v92, "S_");
                                              cstdlib_strcat(v92, v72);
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v109 = v96;
                                                  v110 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  v109 = v96;
                                                  v110 = ":";
                                                }
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "I_");
                                                v109 = v96;
                                                v110 = v72;
                                              }

                                              cstdlib_strcat(v109, v110);
                                              goto LABEL_123;
                                            }

                                            v111 = v100 ^ 1;
                                            if (!v86)
                                            {
                                              v111 = 1;
                                            }

                                            if ((v111 & 1) == 0)
                                            {
                                              cstdlib_strcpy(v92, "I_");
                                              cstdlib_strcat(v92, v72);
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                v22 = v136;
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v112 = v96;
                                                  v113 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  v112 = v96;
                                                  v113 = ":";
                                                }

                                                cstdlib_strcat(v112, v113);
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "E_");
                                                cstdlib_strcat(v96, v72);
                                                v22 = v136;
                                              }

LABEL_155:
                                              heap_Free(*(v8 + 8), v82);
                                              goto LABEL_156;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v96 = 0;
                                        }

                                        if (v78)
                                        {
                                          goto LABEL_153;
                                        }

LABEL_154:
                                        v22 = v136;
                                        if (v82)
                                        {
                                          goto LABEL_155;
                                        }

LABEL_156:
                                        v12 = v131;
                                        if (v86)
                                        {
                                          goto LABEL_157;
                                        }

                                        goto LABEL_158;
                                      }

LABEL_109:
                                      if (v73 && v130 == v89 && !cstdlib_strncmp(v73, v138, v89))
                                      {
                                        goto LABEL_113;
                                      }
                                    }

                                    heap_Free(*(v8 + 8), v86);
                                    v86 = 0;
                                    goto LABEL_113;
                                  }

LABEL_100:
                                  if (v73 && v130 == v88 && !cstdlib_strncmp(v73, v138, v88))
                                  {
                                    goto LABEL_104;
                                  }
                                }

                                heap_Free(*(v8 + 8), v82);
                                v82 = 0;
                                goto LABEL_104;
                              }

LABEL_91:
                              if (v73 && v130 == v87 && !cstdlib_strncmp(v73, v138, v87))
                              {
                                goto LABEL_95;
                              }
                            }

                            break;
                          }

                          heap_Free(*(v8 + 8), v78);
                          v78 = 0;
                          goto LABEL_95;
                        }
                      }
                    }

LABEL_209:
                    v68 = 0;
                    goto LABEL_210;
                  }
                }
              }
            }

            else
            {
              v137 = v24;
            }

            v116 = v135;
            goto LABEL_227;
          }

          goto LABEL_16;
        }

        ++v35;
        if (!--v36)
        {
          break;
        }
      }

      a3 = v128;
      v12 = v131;
      v33 = v135;
    }

    else
    {
      v34 = 0;
    }

    *(v24 + 8 * v34) = v32;
    v135 = v33 + 1;
    goto LABEL_32;
  }

  return v4;
}

uint64_t hlp_GetSubPosForSEPX(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5, unsigned int a6, int a7, char **a8)
{
  v15 = heap_Calloc(*(*a1 + 8), 1, a6 + 1);
  *a8 = v15;
  if (!v15)
  {
    return 2315264010;
  }

  if (a2 >= a3)
  {
    v18 = 1;
    if (a7)
    {
      goto LABEL_8;
    }

LABEL_17:
    LOWORD(v22) = 0;
    if (a6 && v18)
    {
      v22 = 0;
      while (a5[v22] != 45 || --v18)
      {
        if (++v22 >= a6)
        {
          goto LABEL_27;
        }
      }

      v18 = 0;
    }

LABEL_27:
    if ((a6 - 1 == v22) == v18)
    {
      v23 = v22;
LABEL_30:
      v24 = a5;
      goto LABEL_31;
    }

LABEL_29:
    v23 = a6;
    goto LABEL_30;
  }

  v16 = (a4 + a2);
  v17 = a3 - a2;
  v18 = 1;
  do
  {
    v19 = *v16++;
    if (v19 == 45)
    {
      ++v18;
    }

    --v17;
  }

  while (v17);
  if (!a7)
  {
    goto LABEL_17;
  }

LABEL_8:
  LOWORD(v20) = a6 - 1;
  if (a6 != 1 && v18)
  {
    v20 = (a6 - 1);
    while (a5[v20] != 45 || --v18)
    {
      if (!--v20)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  if (v18)
  {
    goto LABEL_29;
  }

LABEL_25:
  v23 = ((~v20 | 0xFFFF0000) + a6);
  v24 = &a5[v20 + 1];
LABEL_31:
  cstdlib_strncpy(v15, v24, v23);
  return 0;
}

uint64_t hlp_UpdateDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned int a6, unsigned int a7, unsigned __int16 *a8, char *a9)
{
  v13 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  __src = 0;
  *a8 = 0;
  v17 = *a5;
  if (*a5)
  {
    v24 = a4;
    v30 = *a5;
    v27 = 0;
    v26 = 0;
    goto LABEL_3;
  }

  v21 = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v30);
  if ((v21 & 0x80000000) == 0)
  {
    v24 = v13;
    v17 = v30;
    v27 = 0;
    v26 = 0;
    if (v30)
    {
      do
      {
LABEL_3:
        v18 = (*(*(a1 + 56) + 168))(a2, a3, v17, 0, 1, &v29, &v28);
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        v19 = v30;
        if (v29 == 5)
        {
          *a5 = v30;
          v18 = (*(*(a1 + 56) + 168))(a2, a3);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v18 = (*(*(a1 + 56) + 168))(a2, a3, v30, 2, 1, &v26, &v28);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v20 = 0;
          v19 = v30;
          if (v27 <= a6 && v26 >= a7)
          {
            *a8 = v30;
            v20 = 1;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = (*(*(a1 + 56) + 120))(a2, a3, v19, &v30);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        v17 = v30;
        if (v30)
        {
          v22 = v20;
        }

        else
        {
          v22 = 1;
        }
      }

      while ((v22 & 1) == 0 && v27 <= a6);
      if ((v20 & 1) == 0)
      {
        goto LABEL_24;
      }

      v21 = (*(*(a1 + 56) + 176))(a2, a3, *a8, 4, &__src, &v28);
      if ((v21 & 0x80000000) == 0)
      {
        cstdlib_strncpy(a9, __src, 0x100uLL);
        a9[256] = 0;
        if (!cstdlib_strcmp(a9, "phon"))
        {
          return hlp_GetLastTnMarkerUpToPos(a1, a2, a3, v24, v27, a9);
        }
      }
    }

    else
    {
LABEL_24:
      cstdlib_strncpy(a9, "normal", 0x100uLL);
      a9[256] = 0;
    }
  }

  return v21;
}

size_t hlp_GetDomainPauseDur(uint64_t a1, char *a2, int *a3, _DWORD *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  *a3 = 0;
  *a4 = 0;
  cstdlib_strcpy(__dst, "tnpausedur");
  v8 = cstdlib_strlen(a2);
  result = cstdlib_strlen(__dst);
  if (v8 < 255 - result)
  {
    cstdlib_strcat(__dst, a2);
    result = paramc_ParamGetUInt(*(*a1 + 40), __dst, &v11);
    if ((result & 0x80000000) != 0 || !v11)
    {
      result = cstdlib_strstr(a2, "spell");
      if (result)
      {
        v10 = 100;
      }

      else
      {
        v10 = 200;
      }

      *a3 = v10;
    }

    else
    {
      *a3 = v11;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t hlp_GetLastTnMarkerUpToPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char *a6)
{
  v13 = 0;
  v12 = 0;
  result = (*(*(a1 + 56) + 176))(a2, a3, a4, 1, &v13, &v12);
  if ((result & 0x80000000) == 0)
  {
    v9 = *(v13 + 12);
    cstdlib_strncpy(a6, "normal", 0xFFuLL);
    a6[255] = 0;
    v10 = v12;
    if (v12)
    {
      v11 = v13 + 12;
      do
      {
        if (a5 < (*v11 - v9))
        {
          break;
        }

        if (*(v11 - 12) == 21)
        {
          cstdlib_strncpy(a6, *(v11 + 12), 0xFFuLL);
          a6[255] = 0;
        }

        v11 += 32;
        --v10;
      }

      while (v10);
    }

    return 0;
  }

  return result;
}

uint64_t hlp_Remap(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, _WORD *a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = a5;
  v30 = 0;
  v29 = 0;
  __s1 = 0;
  v27 = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v25 = 0;
  v24 = -1;
  cstdlib_strcpy(__dst, "");
  v14 = (*(a1[7] + 120))(a2, a3, a5, &v31);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = v31;
    if (v31)
    {
      while (1)
      {
        LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v15, 0, 1, &v29, &v30);
        if ((LastTnMarkerUpToPos & 0x80000000) != 0)
        {
          return LastTnMarkerUpToPos;
        }

        if (v29 == 5)
        {
          break;
        }

LABEL_38:
        v14 = (*(a1[7] + 120))(a2, a3, v31, &v31);
        if ((v14 & 0x80000000) == 0)
        {
          v15 = v31;
          if (v31)
          {
            continue;
          }
        }

        return v14;
      }

      LastTnMarkerUpToPos = (*(a1[7] + 176))(a2, a3, v31, 4, &__s1, &v30);
      if ((LastTnMarkerUpToPos & 0x80000000) != 0)
      {
        return LastTnMarkerUpToPos;
      }

      if (!cstdlib_strcmp(__s1, "phon"))
      {
        LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v31, 1, 1, &v27 + 2, &v30);
        if ((LastTnMarkerUpToPos & 0x80000000) != 0)
        {
          return LastTnMarkerUpToPos;
        }

        LastTnMarkerUpToPos = hlp_GetLastTnMarkerUpToPos(a1, a2, a3, a4, SHIWORD(v27), v32);
        if ((LastTnMarkerUpToPos & 0x80000000) != 0)
        {
          return LastTnMarkerUpToPos;
        }

        __s1 = v32;
      }

      cstdlib_strcpy(__dst, "phrasing_");
      if (cstdlib_strlen(__s1) + 11 > 0xFF)
      {
        v17 = "normal";
      }

      else
      {
        v17 = __s1;
      }

      cstdlib_strcat(__dst, v17);
      LastTnMarkerUpToPos = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", __dst, &__c[3], &__c[1], __c);
      if ((LastTnMarkerUpToPos & 0x80000000) != 0)
      {
        return LastTnMarkerUpToPos;
      }

      cstdlib_strcpy(__dst, "phrasing_");
      if (cstdlib_strlen(a6) + 11 > 0xFF)
      {
        v18 = "normal";
      }

      else
      {
        v18 = a6;
      }

      cstdlib_strcat(__dst, v18);
      v14 = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", __dst, &v25, &v24, __c);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      if (*&__c[1])
      {
        v19 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v19)
        {
          *v19 = 0;
        }
      }

      if (v24)
      {
        v20 = cstdlib_strchr(*v25, __c[0]);
        if (v20)
        {
          *v20 = 0;
        }
      }

      if (cstdlib_strcmp(a6, __s1))
      {
        v21 = *&__c[1];
        v22 = v24;
        if (*&__c[1] == 1 && !v24)
        {
          if (!cstdlib_strcmp(a6, **&__c[3]))
          {
            goto LABEL_36;
          }

          v22 = v24;
          v21 = *&__c[1];
        }

        if (v22 != 1 || v21)
        {
LABEL_33:
          if (v21 != 1 || v22 != 1 || cstdlib_strcmp(**&__c[3], *v25))
          {
            return v14;
          }

          goto LABEL_36;
        }

        if (cstdlib_strcmp(__s1, *v25))
        {
          v21 = *&__c[1];
          v22 = v24;
          goto LABEL_33;
        }
      }

LABEL_36:
      LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v31, 2, 1, &v27, &v30);
      if ((LastTnMarkerUpToPos & 0x80000000) != 0)
      {
        return LastTnMarkerUpToPos;
      }

      *a7 = v27;
      goto LABEL_38;
    }
  }

  return v14;
}

uint64_t hlp_Phrasing(uint64_t a1, char *a2, unsigned int a3, const char *a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8, _WORD *a9, unsigned __int16 *a10, __int16 a11, int a12, unsigned __int16 *a13, unsigned __int16 a14)
{
  v102 = *MEMORY[0x277D85DE8];
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v95 = 0;
  __s2 = 0;
  __s = 0;
  v94 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = *a7;
  v21 = v88;
  cstdlib_strcpy(__dst, "phrasing");
  v85 = cstdlib_strlen(__dst);
  cstdlib_strcpy(*(a1 + 136), "");
  cstdlib_strcpy(*(a1 + 144), "");
  cstdlib_strcpy(*(a1 + 152), "");
  v22 = (*(*(a1 + 56) + 168))(a5, a6, v88, 1, 1, &v98 + 2, &v99 + 2);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v84 = a8;
  v86 = HIWORD(v98);
  if (v88 && HIWORD(v98) < a3)
  {
    v23 = 1;
    do
    {
      v22 = (*(*(a1 + 56) + 168))(a5, a6, v21, 0, 1, &v97, &v99 + 2);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      if (v97 <= 0xA && ((1 << v97) & 0x610) != 0)
      {
        v22 = (*(*(a1 + 56) + 168))(a5, a6, v88, 2, 1, &v98, &v99 + 2);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        v22 = (*(*(a1 + 56) + 176))(a5, a6, v88, 5, &__s2, &v99 + 2);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        v22 = (*(*(a1 + 56) + 176))(a5, a6, v88, 9, &v95, &v99 + 2);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        if (!v23)
        {
          v25 = HIWORD(v98);
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, HIWORD(v98));
          cstdlib_strncat(*(a1 + 136), &a2[HIWORD(v98) - (v25 - PreviousUtf8Offset)], (v25 - PreviousUtf8Offset));
          cstdlib_strcat(*(a1 + 144), " ");
          cstdlib_strcat(*(a1 + 152), " ");
        }

        if (HIWORD(v98) > v98)
        {
          return 2315271857;
        }

        cstdlib_strncat(*(a1 + 136), &a2[HIWORD(v98)], v98 - HIWORD(v98));
        cstdlib_strcat(*(a1 + 144), __s2);
        cstdlib_strncat(*(a1 + 152), v95, 1uLL);
        v27 = cstdlib_strlen(__s2);
        v28 = (v98 - HIWORD(v98));
        v29 = cstdlib_strlen(__s2);
        if (v28 >= v27)
        {
          if (v28 > v29)
          {
            v33 = Utf8_LengthInUtf8chars(&a2[HIWORD(v98)], v98 - HIWORD(v98));
            v34 = v33 - cstdlib_strlen(__s2);
            if (v34 >= 1)
            {
              v35 = v34;
              if (v34)
              {
                do
                {
                  cstdlib_strcat(*(a1 + 144), "~");
                  --v35;
                }

                while (v35);
              }
            }

            v36 = Utf8_LengthInUtf8chars(&a2[HIWORD(v98)], v98 - HIWORD(v98));
            if (v36 > 1)
            {
              v37 = (v36 - 1);
              if (v36 != 1)
              {
                do
                {
                  cstdlib_strncat(*(a1 + 152), v95, 1uLL);
                  --v37;
                }

                while (v37);
              }
            }
          }
        }

        else
        {
          if (v29 - v98 + HIWORD(v98))
          {
            v30 = 0;
            do
            {
              cstdlib_strcat(*(a1 + 136), "~");
              ++v30;
              v31 = cstdlib_strlen(__s2);
            }

            while (v31 - v98 + HIWORD(v98) > v30);
          }

          if (cstdlib_strlen(__s2) != 1)
          {
            v32 = 0;
            do
            {
              cstdlib_strncat(*(a1 + 152), v95, 1uLL);
              ++v32;
            }

            while (cstdlib_strlen(__s2) - 1 > v32);
          }
        }

        v23 = 0;
      }

      v22 = (*(*(a1 + 56) + 120))(a5, a6, v88, &v88);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      if (!v88)
      {
        break;
      }

      v22 = (*(*(a1 + 56) + 168))(a5, a6);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v21 = v88;
      if (!v88)
      {
        break;
      }
    }

    while (HIWORD(v98) < a3);
  }

  v22 = (*(*(a1 + 104) + 104))(*(a1 + 88), *(a1 + 96), a4, *(a1 + 136), a14);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L1: %s", __dst, *(a1 + 136));
  v38 = *(*(a1 + 80) + 120);
  v39 = *(a1 + 136);
  v40 = cstdlib_strlen(v39);
  v22 = v38(*(a1 + 64), *(a1 + 72), 0, v39, v40);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L2: %s", __dst, *(a1 + 144));
  v41 = *(*(a1 + 80) + 120);
  v42 = *(a1 + 144);
  v43 = cstdlib_strlen(v42);
  v22 = v41(*(a1 + 64), *(a1 + 72), 1, v42, v43);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L5: %s", __dst, *(a1 + 152));
  v44 = *(*(a1 + 80) + 120);
  v45 = *(a1 + 152);
  v46 = cstdlib_strlen(v45);
  v22 = v44(*(a1 + 64), *(a1 + 72), 4, v45, v46);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  if (cstdlib_strcmp(a4, "normal") && cstdlib_strlen(a4) + v85 + 2 <= 0xFF)
  {
    cstdlib_strcat(__dst, "_");
    cstdlib_strcat(__dst, a4);
  }

  if (((*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), __dst) & 0x80000000) != 0)
  {
    __dst[v85] = 0;
    (*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), __dst);
  }

  v22 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 0, &v94, &v92 + 2);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v94[HIWORD(v92)] = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s O1: %s", __dst, v94);
  v22 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 2, &__s, &v92 + 2);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  __s[HIWORD(v92)] = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s O3: %s", __dst, __s);
  if (!v86)
  {
    if (cstdlib_strchr(__s, 87))
    {
      v55 = cstdlib_strrchr(a2, 63);
      if (v55)
      {
        if (v55 != a2 && *(v55 - 1) != 32)
        {
          *v55 = 46;
        }
      }
    }
  }

  v22 = (*(*(a1 + 56) + 168))(a5, a6, *a7, 1, 1, &v98 + 2, &v99 + 2);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v47 = (*(*(a1 + 56) + 136))(a5, a6, *a7, &v89);
  if ((v47 & 0x80000000) == 0)
  {
    if (!v89)
    {
      goto LABEL_63;
    }

    v47 = (*(*(a1 + 56) + 168))(a5, a6);
    if ((v47 & 0x80000000) != 0)
    {
      return v47;
    }

    v48 = v89;
    if (v89)
    {
      while (v97 > 0xA || ((1 << v97) & 0x610) == 0)
      {
        v47 = (*(*(a1 + 56) + 136))(a5, a6, v48, &v89);
        if ((v47 & 0x80000000) != 0)
        {
          return v47;
        }

        if (v89)
        {
          v47 = (*(*(a1 + 56) + 168))(a5, a6);
          if ((v47 & 0x80000000) != 0)
          {
            return v47;
          }

          v48 = v89;
          if (v89)
          {
            continue;
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
LABEL_63:
      v48 = 0;
    }

    v50 = v94;
    if (*v94 == 35)
    {
      memset(v100, 0, 11);
      LOWORD(v92) = 200;
      ++v94;
      if (v50[1] == 91)
      {
        v94 = v50 + 2;
        v51 = *(v50 + 2);
        if (v50[2])
        {
          v52 = 0;
          LOWORD(v53) = 0;
          v54 = v50 + 3;
          while (v51 != 93 && v52 <= 9)
          {
            *(v100 + v52) = v51;
            v94 = &v54[v52];
            v51 = v54[v52++];
            LOWORD(v53) = v53 + 1;
            if (!v51)
            {
              goto LABEL_80;
            }
          }

          LOWORD(v53) = v52;
LABEL_80:
          v53 = v53;
        }

        else
        {
          v53 = 0;
        }

        *(v100 + v53) = 0;
      }

      v56 = a12;
      if (!a12)
      {
        v56 = cstdlib_atoi(v100);
        v48 = v89;
      }

      LOWORD(v92) = v56;
      if (v48)
      {
        v47 = hlp_ReadSildur(a1, a5, a6, v48, &v91, &v90);
        if ((v47 & 0x80000000) != 0)
        {
          return v47;
        }

        if (!v90)
        {
          v47 = (*(*(a1 + 56) + 160))(a5, a6, v89, 8, 1, &v92, &v99);
          if ((v47 & 0x80000000) != 0)
          {
            return v47;
          }
        }
      }
    }

    v57 = *a7;
    if (*a7)
    {
      v58 = HIWORD(v98) >= a3;
    }

    else
    {
      v58 = 1;
    }

    if (!v58)
    {
      do
      {
        v22 = (*(*(a1 + 56) + 168))(a5, a6, v57, 0, 1, &v97, &v99 + 2);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        if (v97 <= 0xA && ((1 << v97) & 0x610) != 0)
        {
          v22 = (*(*(a1 + 56) + 168))(a5, a6, *a7, 1, 1, &v98 + 2, &v99 + 2);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          v22 = (*(*(a1 + 56) + 168))(a5, a6, *a7, 2, 1, &v98, &v99 + 2);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          v60 = v94 + 1;
          for (i = v94 + 3; ; ++i)
          {
            v62 = *(v60 - 1);
            if (v62 <= 0x22)
            {
              if (!*(v60 - 1) || v62 == 32)
              {
LABEL_110:
                LOWORD(v100[0]) = 0;
                LOWORD(v92) = 0;
                if (((*(*(a1 + 56) + 184))(a5, a6, *a7, 8, v100) & 0x80000000) == 0 && LOWORD(v100[0]) == 1)
                {
                  v22 = (*(*(a1 + 56) + 168))(a5, a6, *a7, 8, 1, &v92, &v99 + 2);
                  if ((v22 & 0x80000000) != 0)
                  {
                    return v22;
                  }
                }

                if (!v92)
                {
LABEL_114:
                  v22 = (*(*(a1 + 56) + 160))(a5, a6, *a7, 8, 1, &v92, &v99);
                  if ((v22 & 0x80000000) != 0)
                  {
                    return v22;
                  }
                }

LABEL_131:
                v70 = v94;
                v71 = *v94;
                v72 = a9;
                while (1)
                {
                  v73 = v70;
                  if (((v71 - 93) > 0x21 || ((1 << (v71 - 93)) & 0x200000005) == 0) && v71 != 32)
                  {
                    break;
                  }

                  ++v70;
                  v94 = v73 + 1;
                  v71 = *(v73 + 1);
                  if (v71 == 35)
                  {
                    v74 = v73 + 2;
                    do
                    {
                      if (v71 == 32)
                      {
                        break;
                      }

                      if (v71 == 95)
                      {
                        break;
                      }

                      v94 = v74;
                      v75 = *v74++;
                      v71 = v75;
                    }

                    while (v75);
                    v70 = v74 - 1;
                  }
                }

                if ((v98 - HIWORD(v98)) <= 1)
                {
                  v76 = 0;
                }

                else
                {
                  v76 = -1;
                }

                LOWORD(v92) = 0;
                v77 = *a9;
                if (v77 < *a10)
                {
                  do
                  {
                    v78 = v84 + 32 * v77;
                    if ((*(v78 + 12) - a11) >= (v98 + v76))
                    {
                      break;
                    }

                    if (*v78 == 8 && v89 != 0)
                    {
                      LOWORD(v92) = v92 + *(v78 + 24);
                      v22 = (*(*(a1 + 56) + 160))(a5, a6);
                      if ((v22 & 0x80000000) != 0)
                      {
                        return v22;
                      }

                      v80 = *(*(a1 + 56) + 160);
                      v81 = v89;
                      v82 = cstdlib_strlen("external");
                      v22 = v80(a5, a6, v81, 18, (v82 + 1), "external", &v99);
                      if ((v22 & 0x80000000) != 0)
                      {
                        return v22;
                      }

                      v72 = a9;
                      LOWORD(v77) = *a9;
                    }

                    LOWORD(v77) = v77 + 1;
                    *v72 = v77;
                  }

                  while (*a10 > v77);
                }

                v63 = a7;
                v64 = *a7;
                v89 = *a7;
                goto LABEL_155;
              }
            }

            else
            {
              if (v62 == 35)
              {
                memset(v100, 0, 11);
                LOWORD(v92) = 200;
                v94 = v60;
                if (*v60 == 91)
                {
                  v94 = v60 + 1;
                  v65 = *(v60 + 1);
                  if (v60[1])
                  {
                    v66 = 0;
                    v67 = 0;
                    while (v65 != 93 && v66 <= 9)
                    {
                      *(v100 + v66++) = v65;
                      ++v67;
                      v94 = i;
                      v68 = *i++;
                      v65 = v68;
                      if (!v68)
                      {
                        goto LABEL_126;
                      }
                    }

                    v67 = v66;
                  }

                  else
                  {
                    v67 = 0;
                  }

LABEL_126:
                  *(v100 + v67) = 0;
                }

                v69 = a12;
                if (!a12)
                {
                  v69 = cstdlib_atoi(v100);
                }

                LOWORD(v92) = v69;
                v22 = hlp_ReadSildur(a1, a5, a6, *a7, &v91, &v90);
                if ((v22 & 0x80000000) == 0)
                {
                  if (!v90)
                  {
                    goto LABEL_114;
                  }

                  goto LABEL_131;
                }

                return v22;
              }

              if (v62 == 95 || v62 == 126)
              {
                goto LABEL_110;
              }
            }

            v94 = v60++;
          }
        }

        v63 = a7;
        v64 = *a7;
LABEL_155:
        v47 = (*(*(a1 + 56) + 120))(a5, a6, v64, v63);
        if ((v47 & 0x80000000) != 0)
        {
          return v47;
        }

        if (!*v63)
        {
          break;
        }

        v47 = (*(*(a1 + 56) + 168))(a5, a6);
        if ((v47 & 0x80000000) != 0)
        {
          return v47;
        }

        v57 = *a7;
        if (!*a7)
        {
          break;
        }
      }

      while (HIWORD(v98) < a3);
    }

    *a13 = v89;
  }

  return v47;
}

uint64_t hlp_InsertWordPhrase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8, unsigned __int16 *a9)
{
  v21 = a5;
  v20 = a6;
  v19 = a7;
  v18 = a8;
  v17 = 15;
  result = (*(*(a1 + 56) + 88))(a2, a3, a4, a9);
  if ((result & 0x80000000) == 0)
  {
    v16 = 0;
    result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 0, 1, &v17, &v16);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 1, 1, &v21, &v16);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 2, 1, &v20, &v16);
        if ((result & 0x80000000) == 0)
        {
          v13 = *(*(a1 + 56) + 160);
          v14 = *a9;
          v15 = cstdlib_strlen("P");
          result = v13(a2, a3, v14, 4, (v15 + 1), "P", &v16);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 7, 1, &v19, &v16);
            if ((result & 0x80000000) == 0)
            {
              return (*(*(a1 + 56) + 160))(a2, a3, *a9, 8, 1, &v18, &v16);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_3[a3];
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

uint64_t fe_phrasing_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v15 = -1;
  result = fe_phrasing_isFeatureRequired(a2, a3, a4, &v15);
  if (result)
  {
    if (cstdlib_strcmp(a6, ""))
    {
      v10 = cstdlib_strlen(a6);
      v11 = v15;
      if (v10 <= 0x40)
      {
        v13 = *(a5 + 8 * v15);
      }

      else
      {
        v12 = cstdlib_strlen(a6);
        v13 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v11), v12 + 1);
        if (!v13)
        {
          log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
          return 2315264010;
        }

        *(a5 + 8 * v11) = v13;
      }

      v14 = a6;
    }

    else
    {
      v13 = *(a5 + 8 * v15);
      v14 = "=";
    }

    cstdlib_strcpy(v13, v14);
    return 0;
  }

  return result;
}

const char *fe_phrasing_feat_word(uint64_t a1, int a2, int a3)
{
  v3 = a3 + a2;
  if (a3 + a2 < 0 || v3 >= *(a1 + 1072))
  {
    return "=";
  }

  v4 = *(*(a1 + 1064) + 184 * v3 + 56);
  v5 = cstdlib_strlen(v4);
  if (v5)
  {
    {
      v6 = &v4[v5];
      {
        *(v6 - 1) = 0;
      }
    }
  }

  return v4;
}

char *fe_phrasing_feat_wordlen(uint64_t a1, int a2, int a3, char *__dst)
{
  *__dst = 0;
  v5 = a3 + a2;
  if (a3 + a2 < 0 || v5 >= *(a1 + 1072))
  {

    return cstdlib_strcpy(__dst, "=");
  }

  else
  {
    v6 = Utf8_Utf8NbrOfSymbols(*(*(a1 + 1064) + 184 * v5 + 56)) - 1;

    return LH_itoa(v6, __dst, 0xAu);
  }
}

char *fe_phrasing_feat_character(uint64_t a1, int a2, int a3, int a4, void *__b)
{
  cstdlib_memset(__b, 0, 0x800uLL);
  v10 = fe_phrasing_feat_word(a1, a2, a4);
  if (!cstdlib_strcmp(v10, "=") || (v11 = cstdlib_strlen(v10)) == 0)
  {
LABEL_5:

    return cstdlib_strcpy(__b, "=");
  }

  if (a3)
  {
    PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v10, v11);
    if (PreviousUtf8Offset > v11)
    {
      goto LABEL_5;
    }

    v16 = &v10[PreviousUtf8Offset];
    NextUtf8Offset = (v11 - PreviousUtf8Offset);
    v15 = __b;
  }

  else
  {
    NextUtf8Offset = utf8_GetNextUtf8Offset(v10, 0);
    v15 = __b;
    v16 = v10;
  }

  return cstdlib_strncpy(v15, v16, NextUtf8Offset);
}

uint64_t fe_phrasing_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2315264007;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t statcomp_isDctFeature(char *__s1, _WORD *a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v6 = 0;
  while (cstdlib_strcmp(__s1, *(*a3 + 8 * v6)))
  {
    if (++v6 >= *(a3 + 8))
    {
      return 0;
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t statcomp_isDctMappedFeature(char *__s1, _WORD *a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v6 = 0;
  for (i = 8; cstdlib_strcmp(__s1, *(*a3 + i)); i += 16)
  {
    if (++v6 >= *(a3 + 8))
    {
      return 0;
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t statcomp_isDynamicFeature(char *__s, _WORD *a2)
{
  v4 = 0;
  while (1)
  {
    v5 = cstdlib_strlen(__s);
    v6 = g_statcomp_FeatureNames[v4];
    v7 = cstdlib_strlen(v6);
    if (!cstdlib_strcmp(__s, v6) || v5 > v7 && !cstdlib_strcmp(&__s[v5 - v7], v6))
    {
      break;
    }

    if (++v4 == 7)
    {
      return 0;
    }
  }

  *a2 = v4;
  return 1;
}

uint64_t statcomp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char *__s)
{
  if (cstdlib_strlen(__s) <= 0x20)
  {
    v11 = *(a4 + 8 * a3);
  }

  else
  {
    v10 = cstdlib_strlen(__s);
    v11 = heap_Realloc(*(a2 + 8), *(a4 + 8 * a3), v10 + 1);
    if (!v11)
    {
      log_OutPublic(*(a2 + 32), "FE_POS", 35000, 0);
      return 2313166858;
    }

    *(a4 + 8 * a3) = v11;
  }

  cstdlib_strcpy(v11, __s);
  v12 = *(a4 + 8 * a3);
  v13 = cstdlib_strlen(*(*(a1 + 1312) + 8 * a3));
  if (*(a1 + 1336))
  {
    v14 = v13;
    v15 = 0;
    while (1)
    {
      v16 = v15;
      if (!cstdlib_strncmp(*(*(a1 + 1328) + 16 * v15), *(*(a1 + 1312) + 8 * a3), v14))
      {
        break;
      }

      v15 = v16 + 1;
      if (*(a1 + 1336) <= (v16 + 1))
      {
        return 0;
      }
    }

    v17 = cstdlib_strlen(*(*(a1 + 1328) + 16 * v16 + 8));
    v18 = cstdlib_strlen(v12);
    v19 = *(*(a1 + 1328) + 16 * v16 + 8);
    v20 = cstdlib_strstr(v19, v12);
    if (v20)
    {
      v21 = v17;
      v22 = &v19[v17];
      while (v20 != v19 || v21 != v18 && (v21 <= v18 + 1 || v20[v18] != 32))
      {
        if (v20 > v19)
        {
          v23 = &v20[v18];
          if (v22 > (v23 + 1) && *v23 == 32)
          {
            if (*(v20 - 1) == 32)
            {
              return 0;
            }
          }

          else if (v22 == v23)
          {
            return 0;
          }
        }

        v20 = cstdlib_strstr(&v20[v18], v12);
        if (!v20)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      cstdlib_strcpy(v12, "=");
    }
  }

  return 0;
}

uint64_t statcomp_setDynamicFeature(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, const char **a6, const char **a7, int a8, unsigned __int16 a9)
{
  LODWORD(v9) = a8;
  v35 = *MEMORY[0x277D85DE8];
  v16 = g_statcomp_FeatureNames[a3];
  if (cstdlib_strcmp(v16, "CW_SYLLABLE_LEN") && cstdlib_strcmp(v16, "SYLLABLE_LEN_AS_FRACTION"))
  {
    if (cstdlib_strcmp(v16, "CW_ORTH_LEN"))
    {
      if (cstdlib_strcmp(v16, "ORTH_LEN_AS_FRACTION"))
      {
        v17 = 1;
      }

      else
      {
        v17 = v9 == 0;
      }

      if (!v17)
      {
        goto LABEL_15;
      }
    }

    else if (v9)
    {
LABEL_15:
      v21 = 0;
      v9 = v9;
      v22 = a6;
      do
      {
        v23 = *v22++;
        v21 += cstdlib_strlen(v23);
        --v9;
      }

      while (v9);
      goto LABEL_19;
    }

LABEL_18:
    LOWORD(v21) = 0;
LABEL_19:
    LOWORD(v18) = 0;
    goto LABEL_20;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v18 = 0;
  v9 = v9;
  v19 = a7;
  do
  {
    v20 = *v19++;
    v18 += cstdlib_strlen(v20);
    --v9;
  }

  while (v9);
  LOWORD(v21) = 0;
LABEL_20:
  v24 = cstdlib_strcmp(v16, "CW_SYLLABLE_LEN");
  v25 = v18;
  if (!v24 || (v26 = cstdlib_strcmp(v16, "CW_ORTH_LEN"), v25 = v21, !v26))
  {
    LH_itoa(v25, __dst, 0xAu);
  }

  if (!cstdlib_strcmp(v16, "SYLLABLE_LEN"))
  {
    v30 = a7[a9];
LABEL_34:
    v32 = cstdlib_strlen(v30);
    goto LABEL_35;
  }

  if (!cstdlib_strcmp(v16, "SYLLABLE_LEN_AS_FRACTION"))
  {
    v31 = cstdlib_strlen(a7[a9]);
    if (v18)
    {
      v28 = v31;
      v29 = v18;
      goto LABEL_32;
    }

LABEL_39:
    v32 = 0;
    goto LABEL_35;
  }

  if (!cstdlib_strcmp(v16, "ORTH_LEN"))
  {
    v30 = a6[a9];
    goto LABEL_34;
  }

  if (cstdlib_strcmp(v16, "ORTH_LEN_AS_FRACTION"))
  {
    goto LABEL_36;
  }

  v27 = cstdlib_strlen(a6[a9]);
  if (!v21)
  {
    goto LABEL_39;
  }

  v28 = v27;
  v29 = v21;
LABEL_32:
  v32 = v28 / v29;
LABEL_35:
  LH_itoa(v32, __dst, 0xAu);
LABEL_36:
  if (!cstdlib_strcmp(v16, "ORTH"))
  {
    cstdlib_strcpy(__dst, a6[a9]);
  }

  return statcomp_setFeature(a2, a1, a4, a5, __dst);
}

uint64_t statcomp_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 33);
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

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

void *statcomp_freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      if (*a2)
      {
        result = heap_Free(v4[1], *a2);
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t statcomp_dumpFeatureVectorAndResult(uint64_t a1, int a2, const char **a3, unsigned __int16 *a4, char *__s, char *a6, uint64_t a7, uint64_t a8, char *__sa)
{
  if (!a2)
  {
    return 0;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __s);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, a6);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  if (*(a7 + 1296) >= 2u)
  {
    v16 = 0;
    do
    {
      v15 = statcomp_add2Str(a1, a3, a4, *(*(a7 + 1312) + 8 * v16));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, "=");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, *(a8 + 8 * v16));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, " ");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }
    }

    while (*(a7 + 1296) - 1 > ++v16);
  }

  v15 = statcomp_add2Str(a1, a3, a4, "PRED=");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __sa);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", *a3);
  cstdlib_strcpy(*a3, "");
  if (*(a7 + 1296) >= 2u)
  {
    v17 = 0;
    do
    {
      v15 = statcomp_add2Str(a1, a3, a4, *(a8 + 8 * v17));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, " ");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }
    }

    while (*(a7 + 1296) - 1 > ++v17);
  }

  v15 = statcomp_add2Str(a1, a3, a4, "PRED=");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __sa);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v18 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) == 0)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", *a3);
    cstdlib_strcpy(*a3, "");
  }

  return v18;
}

uint64_t statpos_checkIfActive(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, _DWORD *a7, _DWORD *a8, int *a9, _DWORD *a10, _DWORD *a11)
{
  v34 = *MEMORY[0x277D85DE8];
  v30 = 0;
  memset(v33, 0, sizeof(v33));
  v29 = 0;
  v27 = 0;
  v28 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  v17 = a7 + 354;
  *(a7 + 354) = 0u;
  a7[358] = 0;
  result = paramc_ParamGetUInt(*(a6 + 40), "statpos_do_corpus_alignment", &v29);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v29 == 1)
    {
      *v17 = 1;
    }
  }

  result = paramc_ParamGetUInt(*(a6 + 40), "nluactive", &v29);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v29 == 1)
    {
      a7[358] = 1;
    }
  }

  result = statpos_igtrees_getBrkStrs(a6, v32, v31, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    result = ssftriff_reader_ObjOpen(a4, a5, 2, v32, "IGTR", 1031, &v27);
    if ((result & 0x80000000) != 0)
    {
      if ((result & 0x1FFF) == 0xA)
      {
        return result;
      }

      log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s tree not found", v32);
    }

    else
    {
      result = ssftriff_reader_ObjClose(v27);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      a7[356] = 1;
    }

    result = ssftriff_reader_ObjOpen(a4, a5, 2, v31, "IGTR", 1031, &v27);
    if ((result & 0x80000000) != 0)
    {
      if ((result & 0x1FFF) == 0xA)
      {
        return result;
      }

      log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s tree not found", v31);
    }

    else
    {
      result = ssftriff_reader_ObjClose(v27);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      a7[356] = 1;
    }

    result = statpos_get_broker_string(a6, &v28);
    if ((result & 0x80000000) == 0)
    {
      v19 = ssftriff_reader_ObjOpen(a4, a5, 2, v28, "CRPH", 1031, &v27);
      if ((v19 & 0x80000000) != 0)
      {
        v21 = v19;
        if ((v19 & 0x1FFF) == 0xA)
        {
LABEL_47:
          if (v28)
          {
            heap_Free(*(a6 + 8), v28);
          }

          if ((v21 & 0x1FFF) == 0xA)
          {
            return v21;
          }

          else
          {
            return 0;
          }
        }

        log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s CRF not found", v28);
      }

      else
      {
        info_from_dct = ssftriff_reader_ObjClose(v27);
        if ((info_from_dct & 0x80000000) != 0)
        {
LABEL_46:
          v21 = info_from_dct;
          goto LABEL_47;
        }

        a7[357] = 1;
      }

      if (!a7[356] && !a7[357] && !*v17)
      {
        v21 = 0;
        goto LABEL_47;
      }

      info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "mdesegpos_morpheme_processing", 0, a9, "BOOL");
      if ((info_from_dct & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "statphr_kok_force_igtree", 0, a10, "BOOL");
      if ((info_from_dct & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      if (*a10 == 1)
      {
        log_OutText(*(a6 + 32), "FE_POS", 5, 0, "Key statphr_kok_force_igtree is set, use statphr IGTree data instead of hardcoded values", 0);
      }

      info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "statphr_kok_remove_unaligned_phrase_boundaries", 0, a11, "BOOL");
      if ((info_from_dct & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      if (*a11 == 1)
      {
        log_OutText(*(a6 + 32), "FE_POS", 5, 0, "Key statphr_kok_remove_unaligned_phrase_boundaries is set, IGTree prediction overridden if phrase boundary is inside eojeol", 0);
      }

      if (*v17 == 1)
      {
        v22 = a7[356];
        if (v22 != 1)
        {
          v22 = a7[357] == 1;
        }
      }

      else if (a7[357] != 1 || (v22 = *a9, *a9 != 1))
      {
LABEL_42:
        info_from_dct = getBrokerString_0(a6, v33, 0x80uLL);
        if ((info_from_dct & 0x80000000) == 0)
        {
          v23 = brk_DataOpenEx(*(a6 + 24), v33, 1, &v30);
          if ((v23 & 0x80000000) != 0)
          {
            v21 = v23;
            v24 = *(a6 + 32);
            if (a7[358] == 1)
            {
              log_OutText(v24, "FE_POS", 5, 0, "openNLP statPOS rules not found", 0);
            }

            else
            {
              log_OutText(v24, "FE_POS", 5, 0, "MS statPOS rules not found", 0);
            }
          }

          else
          {
            a7[355] = 1;
            v21 = brk_DataClose(*(a6 + 24), v30);
            if ((v21 & 0x80000000) == 0)
            {
              *a8 = 1;
            }
          }

          goto LABEL_47;
        }

        goto LABEL_46;
      }

      *a8 = v22;
      goto LABEL_42;
    }
  }

  return result;
}

uint64_t statpos_load_resources(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, _WORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, int a13, _DWORD *a14, int a15)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = 0;
  *a12 = a8;
  *(a12 + 1448) = a10;
  *(a12 + 1464) = a11;
  *(a12 + 1472) = a1;
  *(a12 + 1480) = a2;
  *(a12 + 1488) = a3;
  if (!a13)
  {
    *(a12 + 200) = 0;
    *(a12 + 208) = 0;
    inited = nuance_pcre_ObjOpen(a4, a5, a12 + 200);
    if ((inited & 0x80000000) == 0)
    {
      AddRefCountedObject = nuance_pcre_Init(*(a12 + 200), *(a12 + 208), 0x1Eu, 50);
      if ((AddRefCountedObject & 0x80000000) != 0)
      {
        return AddRefCountedObject;
      }

      if (*(a12 + 1424) == 1)
      {
        v27 = 0;
        inited = InitRsrcFunction(a6, a7, &v27);
        if ((inited & 0x80000000) != 0)
        {
          return inited;
        }

        inited = statpos_igtrees_getBrkStrs(a8, __src, __s2, 0x100uLL);
        if ((inited & 0x80000000) != 0)
        {
          return inited;
        }

        cstdlib_strcpy(__dst, __src);
        cstdlib_strcat(__dst, __s2);
        ObjcForThisApi = getObjcForThisApi(a8, v27);
        AddRefCountedObject = objc_GetAddRefCountedObject(ObjcForThisApi, __dst, statpos_igtrees_ObjcLoad, statpos_igtrees_ObjcClose, a8, &v28);
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          return AddRefCountedObject;
        }

        memcpy((a12 + 784), *(v28 + 32), 0x218uLL);
      }

      if (*(a12 + 1428) == 1)
      {
        AddRefCountedObject = statpos_crf_load(a4, a5, a6, a7, a8, a9, *(a12 + 1448), *(a12 + 1456), *(a12 + 1464), (a12 + 1320), a12 + 8, (a12 + 1384), a15);
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          return AddRefCountedObject;
        }
      }

      if (a15)
      {
        *(a12 + 8) = a8;
        *(a12 + 384) = 5;
      }

      else
      {
        AddRefCountedObject = statpos_rules_load(a4, a5, a8, *(a12 + 1448), *(a12 + 1456), *(a12 + 1464), (a12 + 8));
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          return AddRefCountedObject;
        }
      }

      if (*(a12 + 1424) == 1 && *(a12 + 800) != *(a12 + 160))
      {
        *a14 = 0;
        log_OutText(*(a8 + 32), "FE_POS", 5, 0, "set UseStatPOS to FALSE; OOV model differs in igtrees(%d) versus rules(%d)", *(a12 + 800), *(a12 + 160));
      }

      return AddRefCountedObject;
    }

    return inited;
  }

  if (*(a12 + 1420) != 1)
  {
    AddRefCountedObject = 0;
    goto LABEL_21;
  }

  *(a12 + 200) = 0;
  *(a12 + 208) = 0;
  inited = nuance_pcre_ObjOpen(a4, a5, a12 + 200);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  AddRefCountedObject = nuance_pcre_Init(*(a12 + 200), *(a12 + 208), 0x1Eu, 50);
  if ((AddRefCountedObject & 0x80000000) != 0)
  {
    return AddRefCountedObject;
  }

  if (a15)
  {
LABEL_21:
    *(a12 + 8) = a8;
    *(a12 + 384) = 5;
    return AddRefCountedObject;
  }

  v20 = *(a12 + 1464);
  v21 = *(a12 + 1448);
  v22 = *(a12 + 1456);

  return statpos_rules_load(a4, a5, a8, v21, v22, v20, (a12 + 8));
}

uint64_t statpos_unload_resources(_WORD *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v16 = 0;
  if (a5)
  {
    if (*(a4 + 1420) == 1)
    {
      statpos_rules_unload((a4 + 8));
      NullHandle = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(a4 + 200), *(a4 + 208), NullHandle, v8))
      {
        nuance_pcre_DeInit(*(a4 + 200), *(a4 + 208));
        nuance_pcre_ObjClose(*(a4 + 200), *(a4 + 208));
      }
    }

    return 0;
  }

  else
  {
    v11 = a6;
    inited = InitRsrcFunction(a1, a2, &v16);
    if ((inited & 0x80000000) == 0)
    {
      statpos_crf_unload(a3, v16, a4 + 1320, a4 + 8, (a4 + 1384), v11);
      if (*(a4 + 1424))
      {
        ObjcForThisApi = getObjcForThisApi(a3, v16);
        objc_ReleaseObject(ObjcForThisApi, a4 + 808);
      }

      statpos_rules_unload((a4 + 8));
      v14 = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(a4 + 200), *(a4 + 208), v14, v15))
      {
        nuance_pcre_DeInit(*(a4 + 200), *(a4 + 208));
        nuance_pcre_ObjClose(*(a4 + 200), *(a4 + 208));
      }
    }
  }

  return inited;
}

uint64_t statpos_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  v23 = a12 == 1 && (*(a10 + 1436) | a13) == 0 && a14 == 1;
  *(a10 + 752) = a7;
  *(a10 + 760) = a8;
  *(a10 + 768) = a9;
  SentenceData = statpos_getSentenceData(a6, a4, a5, a10, a15);
  if ((SentenceData & 0x80000000) == 0 && *(a10 + 656))
  {
    if (a11 || (updated = statpos_disambiguatePOSTags(a10), (updated & 0x80000000) == 0))
    {
      if (*(a10 + 1416) == 1)
      {
        updated = statpos_updateNLULingdbField(a6, a4, a5, a10);
      }

      else if (a15 != 1 || (updated = statpos_setMorphemePRON(a1, a2, a3, a10), (updated & 0x80000000) == 0))
      {
        updated = statpos_alignDisambiguatedPOSToLingdb(a10, a15);
        if ((updated & 0x80000000) == 0)
        {
          updated = statpos_updatePOSLingdbWithDisambiguatedPOS(a6, a4, a5, a10, v23, a15);
        }
      }
    }

    SentenceData = updated;
  }

  statpos_freeSentenceData(a10);
  return SentenceData;
}

uint64_t statPOS_call_one_word(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5, const char **a6, char **a7)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v36 = 0;
  __s = 0;
  cstdlib_strcpy(__dst, "one_word");
  cstdlib_strlen(__dst);
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s L1: %s", __dst, *a5);
  v14 = *(a4 + 120);
  v15 = *a5;
  v16 = cstdlib_strlen(v15);
  v17 = v14(a2, a3, 0, v15, v16);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s L2: %s", __dst, *a6);
  v18 = *(a4 + 120);
  v19 = *a6;
  v20 = cstdlib_strlen(*a6);
  v17 = v18(a2, a3, 1, v19, v20);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v17 = (*(a4 + 80))(a2, a3, __dst);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v17 = (*(a4 + 128))(a2, a3, 0, &__s, &v38);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  __s[v38] = 0;
  v21 = (*(a4 + 128))(a2, a3, 0, &v36, &v38);
  if ((v21 & 0x80000000) == 0)
  {
    v36[v38] = 0;
    if (cstdlib_strlen(__s))
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = __s;
        v25 = &__s[v22];
        if (__s[v22] == 126)
        {
          v26 = cstdlib_strlen(v25 + 2);
          cstdlib_memmove(v25 + 1, v25 + 2, v26 + 1);
          __s[v22] = 126;
          v24 = __s;
        }

        v22 = ++v23;
      }

      while (cstdlib_strlen(v24) > v23);
    }

    v27 = *(a1 + 8);
    v28 = cstdlib_strlen(__s);
    v29 = heap_Calloc(v27, 1, v28 + 1);
    *a7 = v29;
    if (v29)
    {
      cstdlib_strcpy(v29, __s);
      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s O1 (phonetics) : %s", __dst, __s);
      if (cstdlib_strlen(v36))
      {
        v30 = 0;
        v31 = 0;
        do
        {
          v32 = v36;
          v33 = &v36[v30];
          if (v36[v30] == 126)
          {
            v34 = cstdlib_strlen(v33 + 2);
            cstdlib_memmove(v33 + 1, v33 + 2, v34 + 1);
            v36[v30] = 126;
            v32 = v36;
          }

          v30 = ++v31;
        }

        while (cstdlib_strlen(v32) > v31);
      }

      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s O3 (POS code): %s (ignored)", __dst, v36);
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
      return 2313166858;
    }
  }

  return v21;
}

uint64_t statphr_getFeature(char *__s1, uint64_t a2)
{
  v4 = 0;
  while (cstdlib_strcmp(__s1, g_statphr_FeatureNames[v4]))
  {
    if (++v4 == 8)
    {
      return 0;
    }
  }

  return *(a2 + v4 * 8);
}

uint64_t statphr_setFeature(uint64_t a1, char *__s1, char **a3, const char *a4)
{
  v8 = 0;
  while (cstdlib_strcmp(__s1, g_statphr_FeatureNames[v8]))
  {
    ++a3;
    if (++v8 == 8)
    {
      return 0;
    }
  }

  if (!cstdlib_strcmp(a4, ""))
  {
    v11 = *a3;
    v12 = "_";
    goto LABEL_10;
  }

  if (cstdlib_strlen(a4) < 0x41 || (v9 = cstdlib_strlen(a4), result = resizeNFeature(a1, a3, (v9 + 1)), (result & 0x80000000) == 0))
  {
    v11 = *a3;
    v12 = a4;
LABEL_10:
    cstdlib_strcpy(v11, v12);
    return 0;
  }

  return result;
}

uint64_t statphr_setNFeature(uint64_t a1, char *__s1, char **a3, const char *a4, unsigned int a5)
{
  v10 = 0;
  while (cstdlib_strcmp(__s1, g_statphr_FeatureNames[v10]))
  {
    ++a3;
    if (++v10 == 8)
    {
      return 0;
    }
  }

  v11 = cstdlib_strcmp(a4, "");
  if (a5 && !v11)
  {
    cstdlib_strcpy(*a3, "_");
    return 0;
  }

  if (a5 < 0x41 || (result = resizeNFeature(a1, a3, (a5 + 1)), (result & 0x80000000) == 0))
  {
    cstdlib_strncpy(*a3, a4, a5);
    result = 0;
    (*a3)[a5] = 0;
  }

  return result;
}

uint64_t resizeNFeature(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = heap_Realloc(*(a1 + 8), *a2, a3);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *a2 = v6;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  return result;
}

uint64_t statphr_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 8 * a3 - 8;
  while (1)
  {
    v7 = heap_Calloc(*(a1 + 8), 1, 65);
    a2[v5 / 8] = v7;
    if (!v7)
    {
      break;
    }

    result = statphr_setFeature(a1, g_statphr_FeatureNames[v5 / 8], a2, "_");
    if ((result & 0x80000000) == 0)
    {
      v9 = v6 == v5;
      v5 += 8;
      if (!v9)
      {
        continue;
      }
    }

    return result;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

void *statphr_freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      if (*a2)
      {
        result = heap_Free(v4[1], *a2);
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t statphr_dumpFeatureVectorAndResult(uint64_t a1, uint64_t a2, char *__src)
{
  v9 = *MEMORY[0x277D85DE8];
  cstdlib_strncpy(__dst, __src, 0x100uLL);
  v5 = 0;
  __dst[255] = 0;
  do
  {
    v6 = cstdlib_strlen(*(a2 + v5));
    if (v6 + cstdlib_strlen(__dst) + 2 > 0xFF)
    {
      break;
    }

    cstdlib_strcat(__dst, " ");
    cstdlib_strcat(__dst, *(a2 + v5));
    v5 += 8;
  }

  while (v5 != 64);
  return log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", __dst);
}

uint64_t statphr_getIgtreeBrkStr(uint64_t a1, _BYTE *a2, size_t a3)
{
  v7 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v7);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "statphr_igtree", 1, 1, v7, 0, 0, a2, a3);
  }

  return result;
}

uint64_t statphr_readIGTree(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7)
{
  v15 = *MEMORY[0x277D85DE8];
  *a7 = 0;
  result = statphr_getIgtreeBrkStr(a5, v14, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    result = igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, a6, 2, v14, "IGTR", 1031, 0);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      *a6 = 0;
    }

    else
    {
      *a7 = 1;
    }
  }

  return result;
}

uint64_t statphr_searchInIGTreeParamDefs(uint64_t a1, char *__s2, const char *a3)
{
  if (!*(a1 + 1336))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (!cstdlib_strcmp(*(*(a1 + 1328) + 16 * v6), __s2))
    {
      v8 = cstdlib_strstr(*(*(a1 + 1328) + 16 * v7 + 8), a3);
      if (v8)
      {
        break;
      }
    }

LABEL_4:
    v6 = v7 + 1;
    if (*(a1 + 1336) <= (v7 + 1))
    {
      return 0;
    }
  }

  v9 = v8;
  while (*(v9 - 1) != 32 || v9[cstdlib_strlen(a3)] != 32)
  {
    v9 = cstdlib_strstr(v9 + 1, a3);
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

uint64_t statphr_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v179 = *MEMORY[0x277D85DE8];
  v176 = 0;
  v177 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  __s1 = 0;
  v171 = 0;
  memset(v178, 0, sizeof(v178));
  v170 = 0;
  v169 = -1;
  __s = 0;
  v166 = 0;
  v165 = 0;
  v15 = paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v165) >= 0 && v165 == 0;
  v16 = (*(a2 + 104))(a3, a4, 1, 0, &v177);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = (*(a2 + 184))(a3, a4, v177, 0, &v177 + 2);
  if ((v17 & 0x80000000) == 0 && HIWORD(v177) == 1)
  {
    v17 = (*(a2 + 176))(a3, a4, v177, 0, &v173, &v176);
    if ((v17 & 0x80000000) == 0 && v176 >= 2u)
    {
      v18 = heap_Calloc(*(a1 + 8), 1, 32);
      if (!v18)
      {
        v17 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
        return v17;
      }

      v19 = v18;
      v161 = v15;
      cstdlib_strcpy(v18, "");
      v20 = *(a1 + 8);
      v21 = cstdlib_strlen(v173);
      v22 = heap_Calloc(v20, 1, v21 + 1);
      v23 = v22;
      if (v22)
      {
        cstdlib_strcpy(v22, v173);
        v24 = (*(a2 + 104))(a3, a4, 2, v177, &v176 + 2);
        if ((v24 & 0x80000000) == 0)
        {
          v155 = a6;
          v159 = v23;
          v160 = v19;
          v162 = 0;
          v25 = -1;
          while (HIWORD(v176))
          {
            v26 = (*(a2 + 168))(a3, a4);
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_27;
            }

            if (v174 <= 0xA && ((1 << v174) & 0x610) != 0)
            {
              v26 = (*(a2 + 168))(a3, a4, HIWORD(v176), 1, 1, &v171 + 2, &v176);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_27;
              }

              v28 = v162;
              if (HIWORD(v171) != v25)
              {
                v28 = v162 + 1;
              }

              v162 = v28;
              v25 = HIWORD(v171);
            }

            v26 = (*(a2 + 120))(a3, a4, HIWORD(v176), &v176 + 2);
            if ((v26 & 0x80000000) != 0)
            {
LABEL_27:
              v17 = v26;
              v29 = 0;
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = 0;
LABEL_28:
              v23 = v159;
              v34 = v162;
              goto LABEL_36;
            }
          }

          v154 = a7;
          v34 = v162;
          v30 = heap_Calloc(*(a1 + 8), 1, v162 << 6);
          if (!v30)
          {
            v17 = 2313166858;
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
            v29 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            goto LABEL_36;
          }

          if (v162)
          {
            v40 = 0;
            do
            {
              inited = statphr_initFeatureVector(a1, (v30 + 8 * v40), 8u);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_130;
              }

              v40 += 8;
            }

            while (8 * v162 > v40);
          }

          inited = (*(a2 + 104))(a3, a4, 2, v177, &v176 + 2);
          if ((inited & 0x80000000) != 0)
          {
LABEL_130:
            v17 = inited;
            v29 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            goto LABEL_28;
          }

          v143 = 8 * v162;
          v152 = 0;
          v42 = 0;
          v156 = 0;
          v43 = -1;
          while (HIWORD(v176))
          {
            v44 = (*(a2 + 168))(a3, a4);
            if ((v44 & 0x80000000) != 0)
            {
              goto LABEL_126;
            }

            if (v174 - 9 < 2)
            {
              goto LABEL_67;
            }

            if (v174 != 6)
            {
              if (v174 != 4)
              {
                goto LABEL_125;
              }

LABEL_67:
              v44 = (*(a2 + 168))(a3, a4, HIWORD(v176), 1, 1, &v171 + 2, &v176);
              if ((v44 & 0x80000000) != 0)
              {
                goto LABEL_126;
              }

              if (HIWORD(v171) != v43)
              {
                v164 = 0;
                v163 = 0;
                HIWORD(v177) = 0;
                v17 = (*(a2 + 184))(a3, a4, HIWORD(v176), 14, &v177 + 2);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_132;
                }

                if (HIWORD(v177) != 1)
                {
                  goto LABEL_132;
                }

                v17 = (*(a2 + 176))(a3, a4, HIWORD(v176), 14, &__s1, &v176);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_132;
                }

                if (!hlp_NLUStrFind(__s1, "POS", &v164, &v163))
                {
                  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "statPHR: internal ERROR - found a WordRecord %d without POS (NLU=%s), bailing out", HIWORD(v176), __s1);
LABEL_132:
                  v23 = v159;
                  v34 = v162;
                  v31 = v152;
LABEL_133:
                  v29 = 0;
LABEL_35:
                  v32 = 0;
                  v33 = 0;
                  goto LABEL_36;
                }

                if (v42 && !v156)
                {
                  v45 = 0;
                  v144 = (v30 + 8 * v42 - 64);
                  while (cstdlib_strcmp("pos", g_statphr_FeatureNames[v45]))
                  {
                    if (++v45 == 8)
                    {
                      v46 = 0;
                      goto LABEL_85;
                    }
                  }

                  v46 = *&v144[v45 * 8];
LABEL_85:
                  v47 = cstdlib_strstr(v46, "_BVB");
                  if (v47)
                  {
                    *v47 = 0;
                  }

                  v48 = statphr_setFeature(a1, "Lpos", (v30 + 8 * v42), v46);
                  if ((v48 & 0x80000000) != 0)
                  {
                    goto LABEL_131;
                  }

                  v48 = statphr_setNFeature(a1, "Rpos", v144, v164, v163);
                  if ((v48 & 0x80000000) != 0)
                  {
                    goto LABEL_131;
                  }
                }

                if (v42 >= 9u && !v156)
                {
                  v48 = statphr_setNFeature(a1, "RRpos", (v30 - 128 + 8 * v42), v164, v163);
                  if ((v48 & 0x80000000) != 0)
                  {
                    goto LABEL_131;
                  }
                }

                v49 = (v30 + 8 * v42);
                v48 = statphr_setNFeature(a1, "pos", v49, v164, v163);
                if ((v48 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                v147 = v42;
                if (HIWORD(v171) > v169 && __s)
                {
                  v50 = (v30 + 8 * v42);
                  v51 = __s[3];
                  __s[3] = 0;
                  statphr_setFeature(a1, "Lpos", v50, __s + 1);
                  v48 = statphr_setFeature(a1, "Lchunk", v50, __s + 1);
                  if ((v48 & 0x80000000) != 0)
                  {
                    goto LABEL_131;
                  }

                  __s[3] = v51;
                  if (v42 >= 9u)
                  {
                    v52 = __s[3];
                    __s[3] = 0;
                    v48 = statphr_setFeature(a1, "Rpos", v50 - 16, __s + 1);
                    if ((v48 & 0x80000000) != 0)
                    {
                      goto LABEL_131;
                    }

                    __s[3] = v52;
                    if (v42 >= 0x11u)
                    {
                      v53 = __s[3];
                      __s[3] = 0;
                      v48 = statphr_setFeature(a1, "RRpos", v50 - 24, __s + 1);
                      if ((v48 & 0x80000000) != 0)
                      {
                        goto LABEL_131;
                      }

                      __s[3] = v53;
                    }
                  }

                  v169 = -1;
                  __s = 0;
                  v49 = (v30 + 8 * v42);
                }

                v48 = (*(a2 + 168))(a3, a4, HIWORD(v176), 2, 1, &v171, &v176);
                if ((v48 & 0x80000000) != 0 || (v48 = statphr_set_WBND_feature(a1, v49, v173, HIWORD(v171), 1), (v48 & 0x80000000) != 0) || (v145 = v49, v48 = statphr_set_WBND_feature(a1, v49, v173, v171, 0), (v48 & 0x80000000) != 0))
                {
LABEL_131:
                  v17 = v48;
                  goto LABEL_132;
                }

                v54 = v171 - HIWORD(v171);
                v55 = heap_Realloc(*(a1 + 8), v152, (v171 - HIWORD(v171)) + 1);
                if (!v55)
                {
                  v31 = v152;
LABEL_305:
                  v17 = 2313166858;
                  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
                  v23 = v159;
                  v34 = v162;
                  goto LABEL_133;
                }

                v56 = HIWORD(v171);
                if (HIWORD(v171) >= v171)
                {
                  v63 = 0;
                  v156 = 0;
                  v64 = v55;
                  v65 = v145;
                }

                else
                {
                  v140 = a5;
                  v31 = v55;
                  v156 = 0;
                  v57 = 0;
                  v153 = v54;
                  do
                  {
                    v58 = v56;
                    if (cstdlib_strchr(",:;.?!'", v173[v56]))
                    {
                      v59 = cstdlib_strchr(",:;.?!", v173[v58]);
                      v60 = v156;
                      if (v59)
                      {
                        v60 = 1;
                      }

                      v156 = v60;
                      NextUtf8Offset = 1;
                    }

                    else
                    {
                      NextUtf8Offset = utf8_GetNextUtf8Offset(&v173[v58], 0);
                      if (utf8_ToLower(v173, v58, __src))
                      {
                        if (cstdlib_strlen(__src) <= NextUtf8Offset)
                        {
                          cstdlib_strcpy(&v31[v57], __src);
                          v57 = cstdlib_strlen(v31);
                          v19 = v160;
                        }

                        else
                        {
                          v153 += 5;
                          v62 = heap_Realloc(*(a1 + 8), v31, v153 + 1);
                          v19 = v160;
                          if (!v62)
                          {
                            goto LABEL_305;
                          }

                          v31 = v62;
                        }
                      }

                      else
                      {
                        cstdlib_strncpy(&v31[v57], &v173[v58], NextUtf8Offset);
                        v57 += NextUtf8Offset;
                      }
                    }

                    v56 = v58 + NextUtf8Offset;
                  }

                  while (v171 > (v58 + NextUtf8Offset));
                  v63 = v57;
                  v64 = v31;
                  v65 = v145;
                  a5 = v140;
                }

                v64[v63] = 0;
                if (*v64)
                {
                  v66 = v64;
                  v67 = statphr_searchInIGTreeParamDefs(a5, "orthtokeep", v64);
                  v64 = v66;
                  if (v67)
                  {
                    v68 = statphr_setFeature(a1, "orth", v65, v66);
                    v64 = v66;
                    if ((v68 & 0x80000000) != 0)
                    {
                      v17 = v68;
                      v23 = v159;
                      v34 = v162;
                      v31 = v64;
                      goto LABEL_133;
                    }
                  }
                }

                v152 = v64;
                v42 = v147 + 8;
                v43 = HIWORD(v171);
              }

              goto LABEL_125;
            }

            v44 = (*(a2 + 168))(a3, a4, HIWORD(v176), 2, 1, &v169, &v176);
            if ((v44 & 0x80000000) != 0 || (v44 = (*(a2 + 176))(a3, a4, HIWORD(v176), 4, &__s, &v176), (v44 & 0x80000000) != 0))
            {
LABEL_126:
              v17 = v44;
              v29 = 0;
              v32 = 0;
              v33 = 0;
              goto LABEL_127;
            }

            if (cstdlib_strlen(__s) < 4 || !cstdlib_strcmp(__s, "_PR_"))
            {
              __s = 0;
              v169 = -1;
            }

LABEL_125:
            v44 = (*(a2 + 120))(a3, a4, HIWORD(v176), &v176 + 2);
            if ((v44 & 0x80000000) != 0)
            {
              goto LABEL_126;
            }
          }

          log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Predicting PHR with IGtree");
          v17 = (*(a2 + 104))(a3, a4, 2, v177, &v176 + 2);
          if ((v17 & 0x80000000) != 0)
          {
            v29 = 0;
            v32 = 0;
            v33 = 0;
LABEL_127:
            v23 = v159;
          }

          else
          {
            v69 = HIWORD(v176);
            v23 = v159;
            if (HIWORD(v176))
            {
              v146 = 0;
              v141 = 0;
              v142 = 0;
              v138 = 0;
              v139 = 0;
              v148 = 0;
              __s2 = 0;
              v137 = 0;
              v157 = -1;
              while (1)
              {
                v70 = (*(a2 + 168))(a3, a4, v69, 0, 1, &v174, &v176);
                if ((v70 & 0x80000000) != 0)
                {
LABEL_306:
                  v17 = v70;
                  goto LABEL_314;
                }

                if (v174 > 0xA || ((1 << v174) & 0x610) == 0)
                {
                  goto LABEL_298;
                }

                v70 = (*(a2 + 168))(a3, a4, HIWORD(v176), 1, 1, &v171 + 2, &v176);
                if ((v70 & 0x80000000) != 0)
                {
                  goto LABEL_306;
                }

                v70 = (*(a2 + 168))(a3, a4, HIWORD(v176), 2, 1, &v171, &v176);
                if ((v70 & 0x80000000) != 0)
                {
                  goto LABEL_306;
                }

                cstdlib_strncpy(v23, &v173[HIWORD(v171)], v171 - HIWORD(v171));
                v23[v171 - HIWORD(v171)] = 0;
                if (HIWORD(v171) != v157)
                {
                  break;
                }

LABEL_282:
                if (!v170)
                {
                  goto LABEL_298;
                }

                v90 = (*(a2 + 176))(a3, a4, HIWORD(v176), 14, &__s1, &v176);
                if ((v90 & 0x80000000) != 0)
                {
                  goto LABEL_308;
                }

                v120 = *(a1 + 8);
                if (v148)
                {
                  v121 = cstdlib_strlen(v19);
                  v122 = v121 + cstdlib_strlen(__s1) + 8;
                  v123 = v146;
                  v124 = heap_Realloc(v120, v146, v122);
                  if (!v124)
                  {
                    goto LABEL_316;
                  }

                  v125 = v124;
                  cstdlib_strcpy(v124, __s1);
                  v126 = v125;
                  v127 = v19;
                }

                else
                {
                  v128 = cstdlib_strlen(v170);
                  v129 = v128 + cstdlib_strlen(__s1) + 8;
                  v123 = v146;
                  v130 = heap_Realloc(v120, v146, v129);
                  if (!v130)
                  {
LABEL_316:
                    v33 = v123;
                    v17 = 2313166858;
                    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
                    v23 = v159;
                    v34 = v162;
                    v31 = v152;
                    v29 = v137;
                    v32 = v142;
                    goto LABEL_36;
                  }

                  v125 = v130;
                  cstdlib_strcpy(v130, __s1);
                  v127 = v170;
                  v126 = v125;
                }

                v131 = hlp_NLUStrSet(v126, "PHR", v127);
                v146 = v125;
                if (HIDWORD(v139))
                {
                  v132 = 66;
LABEL_293:
                  v131[4] = v132;
                  goto LABEL_294;
                }

                if (v139)
                {
                  v132 = 73;
                  goto LABEL_293;
                }

LABEL_294:
                if (!v148)
                {
                  cstdlib_strcpy(v19, v170);
                }

                log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : word=%s NLU=%s", v159, v125);
                v133 = *(a2 + 160);
                v134 = HIWORD(v176);
                v135 = cstdlib_strlen(v146);
                v90 = v133(a3, a4, v134, 14, (v135 + 1), v146, &v175);
                if ((v90 & 0x80000000) != 0)
                {
LABEL_308:
                  v17 = v90;
                  goto LABEL_313;
                }

                v23 = v159;
LABEL_298:
                v17 = (*(a2 + 120))(a3, a4, HIWORD(v176), &v176 + 2);
                if ((v17 & 0x80000000) == 0)
                {
                  v69 = HIWORD(v176);
                  if (HIWORD(v176))
                  {
                    continue;
                  }
                }

                goto LABEL_314;
              }

              v72 = 0;
              v158 = (v30 + 8 * v141);
              while (cstdlib_strcmp("pos", g_statphr_FeatureNames[v72]))
              {
                if (++v72 == 8)
                {
                  v73 = 0;
                  goto LABEL_150;
                }
              }

              v73 = v158[v72];
LABEL_150:
              if (statphr_searchInIGTreeParamDefs(a5, "preppos", v73))
              {
                v74 = v141 + 8;
                v75 = v141 + 40;
                if (v75 > (v141 + 8) && v143 > (v141 + 8))
                {
                  if (v75 >= v143)
                  {
                    v75 = 8 * v162;
                  }

                  v149 = v75;
                  do
                  {
                    v76 = 0;
                    v77 = v30 + 8 * v74;
                    while (cstdlib_strcmp("Lpos", g_statphr_FeatureNames[v76]))
                    {
                      if (++v76 == 8)
                      {
                        v78 = 0;
                        goto LABEL_161;
                      }
                    }

                    v78 = *(v77 + v76 * 8);
LABEL_161:
                    if (cstdlib_strcmp(v78, "_"))
                    {
                      v79 = 0;
                      while (cstdlib_strcmp("pos", g_statphr_FeatureNames[v79]))
                      {
                        if (++v79 == 8)
                        {
                          v80 = 0;
                          goto LABEL_168;
                        }
                      }

                      v80 = *(v77 + v79 * 8);
LABEL_168:
                      v19 = v160;
                      if (statphr_searchInIGTreeParamDefs(a5, "verbpos", v80))
                      {
                        v81 = *(a1 + 8);
                        v82 = cstdlib_strlen(v73);
                        v83 = heap_Realloc(v81, v142, (v82 + 5));
                        if (!v83)
                        {
                          v17 = 2313166858;
                          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
                          goto LABEL_313;
                        }

                        v84 = v83;
                        cstdlib_strcpy(v83, v73);
                        cstdlib_strcat(v84, "_BVB");
                        v85 = statphr_setFeature(a1, "pos", v158, v84);
                        if ((v85 & 0x80000000) != 0)
                        {
                          v17 = v85;
                          v32 = v84;
                          v23 = v159;
                          v34 = v162;
                          v31 = v152;
                          v29 = v137;
                          goto LABEL_315;
                        }

                        v142 = v84;
                        v74 = 8 * v162;
                      }

                      else
                      {
                        v74 += 8;
                      }
                    }

                    else
                    {
                      v74 = 8 * v162;
                      v19 = v160;
                    }
                  }

                  while (v149 > v74);
                }
              }

              if (v170)
              {
                v86 = 0;
                while (cstdlib_strcmp("Lchunk", g_statphr_FeatureNames[v86]))
                {
                  if (++v86 == 8)
                  {
                    v87 = 0;
                    goto LABEL_180;
                  }
                }

                v87 = v158[v86];
LABEL_180:
                if (!cstdlib_strcmp(v87, "_"))
                {
                  v88 = 0;
                  while (cstdlib_strcmp("Lpos", g_statphr_FeatureNames[v88]))
                  {
                    if (++v88 == 8)
                    {
                      v89 = 0;
                      goto LABEL_186;
                    }
                  }

                  v89 = v158[v88];
LABEL_186:
                  v19 = v160;
                  if (cstdlib_strcmp(v89, "_"))
                  {
                    statphr_setFeature(a1, "Lchunk", v158, v170);
                  }
                }
              }

              if (v155 == 1)
              {
                v90 = (*(a2 + 176))(a3, a4, HIWORD(v176), 14, &__s1, &v176);
                if ((v90 & 0x80000000) != 0)
                {
                  goto LABEL_308;
                }

                if (__s1)
                {
                  v91 = v161;
                }

                else
                {
                  v91 = 0;
                }

                if (v91)
                {
                  v92 = cstdlib_strstr(__s1, "COMP:");
                  if (v92)
                  {
                    v93 = HIDWORD(v138);
                    if (v92[5] == 66)
                    {
                      v93 = 1;
                    }

                    LODWORD(v138) = v92[5] == 66;
                    HIDWORD(v138) = v93;
                    v150 = 1;
                    goto LABEL_200;
                  }
                }

                if (!v161)
                {
                  if (__s1)
                  {
                    v110 = cstdlib_strstr(__s1, "S_COMP:");
                    v150 = v110 != 0;
                    if (v110)
                    {
                      v111 = 1;
                    }

                    else
                    {
                      v111 = HIDWORD(v138);
                    }

                    v112 = v138;
                    if (v110)
                    {
                      v112 = 1;
                    }

                    v138 = __PAIR64__(v111, v112);
                    if (__s1)
                    {
                      v113 = cstdlib_strstr(__s1, "I_COMP:");
                      if (v113)
                      {
                        v114 = 1;
                      }

                      else
                      {
                        v114 = HIDWORD(v138);
                      }

                      v115 = v138;
                      if (v113)
                      {
                        v115 = 0;
                      }

                      v138 = __PAIR64__(v114, v115);
                      v116 = v150;
                      if (v113)
                      {
                        v116 = 1;
                      }

                      v150 = v116;
                      if (__s1)
                      {
                        v117 = cstdlib_strstr(__s1, "E_COMP:");
                        v118 = v138;
                        if (v117)
                        {
                          v118 = 0;
                        }

                        LODWORD(v138) = v118;
                        v119 = v150;
                        if (v117)
                        {
                          v119 = 1;
                        }

                        v150 = v119;
                      }
                    }
                  }

                  else
                  {
                    v150 = 0;
                  }

LABEL_200:
                  if (*(a5 + 1296) >= 2u)
                  {
                    v94 = 0;
                    do
                    {
                      v95 = 0;
                      v96 = *(*(a5 + 1312) + 8 * v94);
                      while (cstdlib_strcmp(v96, g_statphr_FeatureNames[v95]))
                      {
                        if (++v95 == 8)
                        {
                          v97 = 0;
                          goto LABEL_207;
                        }
                      }

                      v97 = v158[v95];
LABEL_207:
                      *(v178 + v94) = v97;
                      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Feature %s is %s", *(*(a5 + 1312) + 8 * v94++), v97);
                    }

                    while (*(a5 + 1296) - 1 > v94);
                  }

                  v98 = igtree_Process(a5, v178, &v170);
                  if ((v98 & 0x80000000) != 0)
                  {
LABEL_311:
                    v17 = v98;
                    goto LABEL_312;
                  }

                  statphr_dumpFeatureVectorAndResult(a1, v158, v170);
                  v99 = *v170;
                  if (v146)
                  {
                    if (v99 != 73 || cstdlib_strstr(v146, v170 + 1))
                    {
                      goto LABEL_212;
                    }
                  }

                  else if (v99 != 73)
                  {
LABEL_212:
                    HIDWORD(v139) = 0;
                    v100 = 1;
                    goto LABEL_215;
                  }

                  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Forcing consistency of IOB tags");
                  v100 = 0;
                  HIDWORD(v139) = 1;
LABEL_215:
                  if (!v155)
                  {
                    v151 = v100;
                    v98 = (*(a2 + 176))(a3, a4, HIWORD(v176), 5, &v166, &v176);
                    if ((v98 & 0x80000000) != 0)
                    {
                      goto LABEL_311;
                    }

                    LODWORD(v139) = 0;
                    if (v146 && __s2)
                    {
                      if (cstdlib_strstr(v166, __s2) && *v170 != 73 && (v103 = cstdlib_strstr(v146, "PHR:"), (v170 = v103) != 0))
                      {
                        v170 = v103 + 4;
                        v104 = v103[4];
                        v105 = *(a1 + 8);
                        v106 = cstdlib_strlen(v103 + 4);
                        v107 = heap_Realloc(v105, v137, (v106 + 1));
                        if (!v107)
                        {
                          v17 = 2313166858;
                          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
LABEL_312:
                          v19 = v160;
LABEL_313:
                          v23 = v159;
LABEL_314:
                          v34 = v162;
                          v31 = v152;
                          v29 = v137;
                          v32 = v142;
LABEL_315:
                          v33 = v146;
LABEL_36:
                          heap_Free(*(a1 + 8), v19);
                          if (v23)
                          {
                            heap_Free(*(a1 + 8), v23);
                          }

                          if (v29)
                          {
                            heap_Free(*(a1 + 8), v29);
                          }

                          if (v33)
                          {
                            heap_Free(*(a1 + 8), v33);
                          }

                          if (v32)
                          {
                            heap_Free(*(a1 + 8), v32);
                          }

                          if (v31)
                          {
                            heap_Free(*(a1 + 8), v31);
                          }

                          if (v30)
                          {
                            if (v34)
                            {
                              v36 = 0;
                              v37 = 8 * v34;
                              do
                              {
                                for (i = 0; i != 64; i += 8)
                                {
                                  v39 = *(v30 + 8 * v36 + i);
                                  if (v39)
                                  {
                                    heap_Free(*(a1 + 8), v39);
                                  }
                                }

                                v36 += 8;
                              }

                              while (v37 > v36);
                            }

                            heap_Free(*(a1 + 8), v30);
                          }

                          return v17;
                        }

                        v108 = v107;
                        LODWORD(v139) = v104 == 66;
                        cstdlib_strcpy(v107, v170);
                        v170 = v108;
                        v137 = v108;
                      }

                      else
                      {
                        LODWORD(v139) = 0;
                      }
                    }

                    __s2 = cstdlib_strstr(v166, ",COMP");
                    v23 = v159;
                    v19 = v160;
                    v109 = v154;
                    v100 = v151;
                    goto LABEL_258;
                  }

                  if (!v150)
                  {
                    LODWORD(v139) = 0;
                    v138 = 0;
                    v23 = v159;
                    v19 = v160;
                    v109 = v154;
LABEL_258:
                    if (!v109)
                    {
                      goto LABEL_266;
                    }

                    if (!v100)
                    {
                      HIDWORD(v139) = 1;
                      goto LABEL_265;
                    }

                    v101 = v170;
                    goto LABEL_261;
                  }

                  v101 = v170;
                  v102 = *v170;
                  if (v102 == 66)
                  {
                    if (HIDWORD(v138) != 1)
                    {
                      HIDWORD(v138) = 0;
                      LODWORD(v139) = 0;
LABEL_255:
                      v23 = v159;
                      v19 = v160;
                      v109 = v154;
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    if (!HIDWORD(v139))
                    {
                      v139 = 0;
                      v148 = 0;
                      v23 = v159;
                      v19 = v160;
                      if (!v154)
                      {
                        goto LABEL_281;
                      }

LABEL_261:
                      if (!v101)
                      {
                        v148 = 0;
                        HIDWORD(v139) = 0;
                        goto LABEL_281;
                      }

                      HIDWORD(v139) = 0;
                      v148 = 0;
                      if (*v101 != 66)
                      {
                        goto LABEL_281;
                      }

LABEL_265:
                      if (!statphr_isWBND(v158))
                      {
                        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : Force PHR from %s to I-* as it bisects eojeol", v170);
                        v148 = 0;
                        v139 = 1;
                        goto LABEL_281;
                      }

LABEL_266:
                      v148 = 0;
LABEL_281:
                      v141 += 8;
                      v157 = HIWORD(v171);
                      goto LABEL_282;
                    }

                    if (v102 != 73 || HIDWORD(v138) != 1)
                    {
                      v148 = 0;
                      v139 = 0x100000000;
                      v23 = v159;
                      v19 = v160;
                      if (!v154)
                      {
                        goto LABEL_281;
                      }

                      goto LABEL_265;
                    }
                  }

                  if (v138)
                  {
                    LODWORD(v139) = 0;
                  }

                  else
                  {
                    if (cstdlib_strcmp("O", v160))
                    {
                      *v160 = 73;
                      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : Force PHR to %s as bisects compound", v160);
                      LODWORD(v138) = 0;
                      if (HIDWORD(v139))
                      {
                        LODWORD(v139) = 0;
                        HIDWORD(v139) = *v170 != 73;
                      }

                      else
                      {
                        v139 = 0;
                      }

                      HIDWORD(v138) = 1;
                      v148 = 1;
                      v23 = v159;
                      v19 = v160;
                      goto LABEL_281;
                    }

                    LODWORD(v139) = 0;
                    LODWORD(v138) = 0;
                  }

                  HIDWORD(v138) = 1;
                  goto LABEL_255;
                }
              }

              v150 = 0;
              goto LABEL_200;
            }

            v29 = 0;
            v32 = 0;
            v33 = 0;
          }

          v34 = v162;
          v31 = v152;
          goto LABEL_36;
        }

        v17 = v24;
      }

      else
      {
        v17 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
      }

      v29 = 0;
      v34 = 0;
      v30 = 0;
      v31 = 0;
      goto LABEL_35;
    }
  }

  return v17;
}

uint64_t statphr_set_WBND_feature(uint64_t a1, char **a2, char *__s, unsigned int a4, int a5)
{
  if (a4)
  {
    v8 = a5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (a4 && (v10 = a4, cstdlib_strlen(__s) > a4) && __s[(v10 - v9)] != 32)
  {
    v12 = "0";
  }

  else
  {
    v12 = "1";
  }

  if (a5)
  {
    v13 = "Lwbnd";
  }

  else
  {
    v13 = "Rwbnd";
  }

  return statphr_setFeature(a1, v13, a2, v12);
}

BOOL statphr_isWBND(uint64_t a1)
{
  v2 = 0;
  while (cstdlib_strcmp("Lwbnd", g_statphr_FeatureNames[v2]))
  {
    if (++v2 == 8)
    {
      return 0;
    }
  }

  v3 = *(a1 + v2 * 8);
  return v3 && !cstdlib_strcmp(v3, "1");
}

uint64_t statphr_MorphemeProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  __s = 0;
  v25 = 0;
  v8 = (*(a2 + 104))(a3, a4, 1, 0, &v29);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a2 + 184))(a3, a4, v29, 0, &v29 + 2);
  if ((v9 & 0x80000000) == 0 && HIWORD(v29) == 1)
  {
    v9 = (*(a2 + 176))(a3, a4, v29, 0, &v25, &v28);
    if ((v9 & 0x80000000) == 0 && v28 >= 2u)
    {
      v9 = (*(a2 + 104))(a3, a4, 2, v29, &v28 + 2);
      if ((v9 & 0x80000000) == 0)
      {
        v10 = HIWORD(v28);
        if (HIWORD(v28))
        {
          v11 = 0;
          while (1)
          {
            v12 = (*(a2 + 168))(a3, a4, v10, 0, 1, &v26, &v28);
            if ((v12 & 0x80000000) != 0)
            {
LABEL_31:
              v9 = v12;
              goto LABEL_34;
            }

            if (v26 <= 0xA && ((1 << v26) & 0x610) != 0)
            {
              v9 = (*(a2 + 184))(a3, a4, HIWORD(v28), 14, &v29 + 2);
              if ((v9 & 0x80000000) != 0 || HIWORD(v29) != 1)
              {
                goto LABEL_34;
              }

              v12 = (*(a2 + 176))(a3, a4, HIWORD(v28), 14, &__s, &v28);
              if ((v12 & 0x80000000) != 0)
              {
                goto LABEL_31;
              }

              v14 = *(a1 + 8);
              v15 = cstdlib_strlen(__s);
              v16 = heap_Realloc(v14, v11, v15 + 10);
              if (!v16)
              {
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
                v9 = 2313166858;
LABEL_34:
                v17 = v11;
                if (!v11)
                {
                  return v9;
                }

LABEL_35:
                heap_Free(*(a1 + 8), v17);
                return v9;
              }

              v17 = v16;
              cstdlib_strcpy(v16, __s);
              v18 = (*(a2 + 168))(a3, a4, HIWORD(v28), 1, 1, &v27, &v28);
              if ((v18 & 0x80000000) != 0 || (!v27 ? (v19 = "PHR:B-WP") : *(v25 + v27 - 1) != 95 ? (v19 = "PHR:B-WP") : (v19 = "PHR:I-WP"), hlp_NLUStrJoin(v17, v19), v20 = *(a2 + 160), v21 = HIWORD(v28), v22 = cstdlib_strlen(v17), v18 = v20(a3, a4, v21, 14, (v22 + 1), v17, &v27 + 2), (v18 & 0x80000000) != 0))
              {
                v9 = v18;
                goto LABEL_35;
              }

              v11 = v17;
            }

            v9 = (*(a2 + 120))(a3, a4, HIWORD(v28), &v28 + 2);
            if ((v9 & 0x80000000) == 0)
            {
              v10 = HIWORD(v28);
              if (HIWORD(v28))
              {
                continue;
              }
            }

            goto LABEL_34;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t statcomp_setParams(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "statcompdetailtrace", &v5) & 0x80000000) == 0)
  {
    *(a2 + 8) = v5;
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "statcompsrctrace", &v5) & 0x80000000) == 0)
  {
    *(a2 + 10) = v5;
  }

  *(a2 + 12) = 1;
  if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v5) & 0x80000000) == 0 && !v5)
  {
    *(a2 + 12) = 0;
  }

  return 0;
}

uint64_t statcomp_rules_unload(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[34];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[34] = 0;
  }

  v4 = a1[36];
  if (v4)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[36] = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[39];
  if (v6)
  {
    heap_Free(*(v2 + 8), v6);
    a1[39] = 0;
  }

  v7 = a1[41];
  if (v7)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v7);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[41] = 0;
  }

  v8 = a1[29];
  if (v8)
  {
    heap_Free(*(v2 + 8), v8);
    a1[29] = 0;
  }

  v9 = a1[31];
  if (v9)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v9);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[31] = 0;
  }

  if (*(a1 + 36))
  {
    v10 = 0;
    v11 = 104;
    do
    {
      v12 = a1[8];
      if (v12)
      {
        heap_Free(*(v2 + 8), *(v12 + v11 - 96));
        v13 = a1[8] + v11;
        *(v13 - 96) = 0;
        freeRULEREGEXES(v2, v13 - 80);
        freeRULEREGEXES(v2, a1[8] + v11 - 64);
        v14 = a1[8];
        v15 = *(v14 + v11 - 48);
        if (v15 && *(v14 + v11 - 40))
        {
          heap_Free(*(v2 + 8), v15);
          v14 = a1[8];
          *(v14 + v11 - 48) = 0;
        }

        freeRULEREGEXES(v2, v14 + v11 - 32);
        heap_Free(*(v2 + 8), *(a1[8] + v11 - 16));
        v16 = (a1[8] + v11);
        *(v16 - 2) = 0;
        heap_Free(*(v2 + 8), *v16);
        *(a1[8] + v11) = 0;
      }

      if (*(a1 + 44))
      {
        heap_Free(*(v2 + 8), a1[10]);
        a1[10] = 0;
        *(a1 + 44) = 0;
      }

      if (*(a1 + 52))
      {
        heap_Free(*(v2 + 8), a1[12]);
        a1[12] = 0;
        *(a1 + 52) = 0;
      }

      ++v10;
      v11 += 120;
    }

    while (v10 < *(a1 + 36));
    if (*(a1 + 36))
    {
      heap_Free(*(v2 + 8), a1[8]);
      a1[8] = 0;
      *(a1 + 36) = 0;
    }
  }

  v17 = a1[4];
  if (v17)
  {
    heap_Free(*(v2 + 8), v17);
    a1[4] = 0;
  }

  *(a1 + 20) = 0;
  v18 = a1[6];
  if (v18)
  {
    if (*(a1 + 28))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        heap_Free(*(v2 + 8), *(v18 + v19));
        v18 = a1[6];
        v21 = v18 + v19;
        *v21 = 0;
        *(v21 + 8) = 0;
        ++v20;
        v19 += 16;
      }

      while (v20 < *(a1 + 28));
    }

    heap_Free(*(v2 + 8), v18);
    a1[6] = 0;
  }

  *(a1 + 28) = 0;
  v22 = *(a1 + 170);
  if (*(a1 + 170))
  {
    v23 = 0;
    do
    {
      v24 = a1[43];
      if (v24)
      {
        heap_Free(*(v2 + 8), *(v24 + 8 * v23));
        *(a1[43] + 8 * v23) = 0;
        v22 = *(a1 + 170);
      }

      ++v23;
    }

    while (v23 < v22);
    heap_Free(*(v2 + 8), a1[43]);
    a1[43] = 0;
    *(a1 + 170) = 0;
  }

  v25 = a1[44];
  if (v25)
  {
    heap_Free(*(v2 + 8), v25);
    a1[44] = 0;
  }

  v26 = a1[45];
  if (v26)
  {
    heap_Free(*(v2 + 8), v26);
    a1[45] = 0;
  }

  if (*(a1 + 68))
  {
    v27 = 0;
    do
    {
      v28 = a1[19];
      if (v28)
      {
        heap_Free(*(v2 + 8), *(v28 + 8 * v27));
        *(a1[19] + 8 * v27) = 0;
      }

      v29 = a1[20];
      if (v29)
      {
        v30 = *(v29 + 8 * v27);
        if (v30)
        {
          v5 = igtree_Deinit(v2, v30);
          if ((v5 & 0x80000000) != 0)
          {
            return v5;
          }

          heap_Free(*(v2 + 8), *(a1[20] + 8 * v27));
          *(a1[20] + 8 * v27) = 0;
        }
      }

      v31 = a1[21];
      if (v31)
      {
        v32 = *(v31 + 8 * v27);
        if (v32)
        {
          if (*(v32 + 8))
          {
            v33 = 0;
            do
            {
              v34 = *v32;
              if (v34)
              {
                heap_Free(*(v2 + 8), *(v34 + 8 * v33));
                *(**(a1[21] + 8 * v27) + 8 * v33) = 0;
                v31 = a1[21];
              }

              ++v33;
              v32 = *(v31 + 8 * v27);
            }

            while (v33 < *(v32 + 8));
          }

          heap_Free(*(v2 + 8), *v32);
          v35 = a1[21];
          **(v35 + 8 * v27) = 0;
          heap_Free(*(v2 + 8), *(v35 + 8 * v27));
          *(a1[21] + 8 * v27) = 0;
        }
      }

      v36 = a1[22];
      if (v36)
      {
        v37 = *(v36 + 8 * v27);
        if (v37)
        {
          heap_Free(*(v2 + 8), v37);
          *(a1[22] + 8 * v27) = 0;
        }
      }

      v38 = a1[23];
      if (v38)
      {
        v39 = *(v38 + 8 * v27);
        if (v39)
        {
          heap_Free(*(v2 + 8), *v39);
          v40 = a1[23];
          **(v40 + 8 * v27) = 0;
          heap_Free(*(v2 + 8), *(v40 + 8 * v27));
          *(a1[23] + 8 * v27) = 0;
        }
      }

      ++v27;
    }

    while (v27 < *(a1 + 68));
    heap_Free(*(v2 + 8), a1[18]);
    a1[18] = 0;
    heap_Free(*(v2 + 8), a1[19]);
    a1[19] = 0;
    heap_Free(*(v2 + 8), a1[20]);
    a1[20] = 0;
    heap_Free(*(v2 + 8), a1[21]);
    a1[21] = 0;
    heap_Free(*(v2 + 8), a1[22]);
    a1[22] = 0;
    heap_Free(*(v2 + 8), a1[23]);
    a1[23] = 0;
    *(a1 + 68) = 0;
  }

  v41 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v42 = 0;
    v43 = 0;
    v44 = a1[15];
    v45 = v44;
    do
    {
      if (v45)
      {
        heap_Free(*(v2 + 8), *(v45 + v42));
        v46 = (a1[15] + v42);
        *v46 = 0;
        heap_Free(*(v2 + 8), v46[1]);
        v44 = a1[15];
        *(v44 + v42 + 8) = 0;
        v41 = *(a1 + 64);
        v45 = v44;
      }

      ++v43;
      v42 += 16;
    }

    while (v43 < v41);
    *(a1 + 64) = 0;
    heap_Free(*(v2 + 8), v44);
    a1[15] = 0;
  }

  return v5;
}

void *freeRULEREGEXES(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      if (*(a2 + 8))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = *a2;
          v8 = *(*a2 + v5);
          if (v8)
          {
            if (*(v8 + 8))
            {
              heap_Free(v4[1], *v8);
              *v8 = 0;
              v8 = *(v7 + v5);
            }

            heap_Free(v4[1], v8);
            *(v7 + v5) = 0;
          }

          v9 = v7 + v5;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v10 + 8))
            {
              heap_Free(v4[1], *v10);
              *v10 = 0;
              v10 = *(v9 + 8);
            }

            heap_Free(v4[1], v10);
            *(v9 + 8) = 0;
          }

          v11 = *(v9 + 16);
          if (v11)
          {
            if (*(v11 + 8))
            {
              heap_Free(v4[1], *v11);
              *v11 = 0;
              v11 = *(v9 + 16);
            }

            heap_Free(v4[1], v11);
            *(v9 + 16) = 0;
          }

          ++v6;
          v5 += 24;
        }

        while (v6 < *(a2 + 8));
        v3 = *a2;
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t statcomp_rules_load(_WORD *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v211 = *MEMORY[0x277D85DE8];
  v206 = 0;
  v205 = 0;
  v203 = 0;
  *v204 = 0;
  v201 = 0;
  __src = 0;
  memset(v209, 0, sizeof(v209));
  *a4 = a3;
  a4[169] = 5;
  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "loading StatCOMP rules", 0);
  __s = 0;
  memset(__dst, 0, sizeof(__dst));
  *__s2 = 0;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v197 = a6;
  v198 = a7;
  v15 = 0;
  if (cstdlib_strlen(__s))
  {
    do
    {
      v16 = v15;
      __s2[v15] = cstdlib_tolower(__s[v15]);
      ++v15;
      v17 = cstdlib_strlen(__s);
    }

    while (v16 <= 1 && v15 < v17);
  }

  v199 = a1;
  v200 = a2;
  v196 = a5;
  __s2[v15] = 0;
  if (cstdlib_strcmp(__s, __s2))
  {
    v18 = __s2;
    Str = paramc_ParamSetStr(*(a3 + 40), "langcode", __s2);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    __s = __s2;
  }

  else
  {
    v18 = __s;
  }

  cstdlib_strcpy(__dst, v18);
  cstdlib_strcat(__dst, "/");
  cstdlib_strcat(__dst, "statcomp");
  Str = brokeraux_ComposeBrokerString(a3, __dst, 0, 1, __s, 0, 0, v209, 0x80uLL);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = brk_DataOpenEx(*(a3 + 24), v209, 1, &v201);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = brk_DataClose(*(a3 + 24), v201);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = ssftriff_reader_ObjOpen(v199, a2, 0, v209, "SCMP", 1031, &v206);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v194 = a4 + 128;
  v195 = a4 + 148;
  v19 = "CFIG";
  do
  {
    LODWORD(v20) = ssftriff_reader_OpenChunk(v206, v204, &v203, &__src);
    if ((v20 & 0x80000000) != 0)
    {
      break;
    }

    if (!cstdlib_strcmp(v19, v204))
    {
      v32 = __src;
      cstdlib_memcpy(a4 + 8, __src, 2uLL);
      cstdlib_memcpy(a4 + 9, v32 + 2, 2uLL);
      cstdlib_memcpy(a4 + 10, v32 + 4, 2uLL);
LABEL_30:
      LODWORD(v20) = 0;
      goto LABEL_92;
    }

    if (!cstdlib_strcmp("SSET", v204))
    {
      v33 = __src;
      cstdlib_memcpy(a4 + 20, __src, 2uLL);
      v34 = heap_Calloc(*(*a4 + 8), 1, (8 * a4[20]) | 1);
      *(a4 + 4) = v34;
      if (!v34)
      {
        goto LABEL_121;
      }

      if (a4[20])
      {
        v35 = v19;
        v36 = 0;
        v37 = 4;
        v38 = 2;
        do
        {
          cstdlib_memcpy((*(a4 + 4) + v37 - 4), &v33[v38], 4uLL);
          v39 = v38 + 4;
          cstdlib_memcpy((*(a4 + 4) + v37), &v33[v39], 4uLL);
          v38 = v39 + 4;
          ++v36;
          v37 += 8;
        }

        while (v36 < a4[20]);
        LODWORD(v20) = 0;
        v19 = v35;
        goto LABEL_92;
      }

      goto LABEL_30;
    }

    if (cstdlib_strcmp("SMAP", v204))
    {
      if (cstdlib_strcmp("CRUL", v204))
      {
        if (!cstdlib_strcmp("REGX", v204))
        {
          v26 = v19;
          v21 = v206;
          v75 = __src;
          *&__dst[0] = __src;
          LODWORD(__s) = 0;
          cstdlib_memcpy(a4 + 108, __src, 4uLL);
          v76 = 4;
          if (*(a4 + 54))
          {
            cstdlib_memcpy(&__s, v75 + 4, 4uLL);
            v77 = (__s + 8);
            *(a4 + 28) = &v75[v77];
            v76 = (*(a4 + 54) + v77);
          }

          cstdlib_memcpy(a4 + 120, &v75[v76], 2uLL);
          v78 = heap_Calloc(*(*a4 + 8), 1, (4 * a4[120]) | 1);
          *(a4 + 29) = v78;
          if (!v78)
          {
            goto LABEL_121;
          }

          if (a4[120])
          {
            v79 = 0;
            v80 = 0;
            v81 = v76 + 2;
            do
            {
              v82 = v81;
              cstdlib_memcpy((*(a4 + 29) + v79), &v75[v81], 4uLL);
              v81 = v82 + 4;
              ++v80;
              v79 += 4;
            }

            while (v80 < a4[120]);
          }

          v31 = a4 + 124;
          goto LABEL_91;
        }

        if (!cstdlib_strcmp("STRS", v204))
        {
          v21 = v206;
          v83 = __src;
          *&__dst[0] = __src;
          LODWORD(__s) = 0;
          cstdlib_memcpy(v195, __src, 4uLL);
          v84 = 4;
          if (*v195)
          {
            cstdlib_memcpy(&__s, v83 + 4, 4uLL);
            v85 = (__s + 8);
            *(a4 + 38) = &v83[v85];
            v84 = (*(a4 + 74) + v85);
          }

          cstdlib_memcpy(a4 + 160, &v83[v84], 2uLL);
          v86 = heap_Calloc(*(*a4 + 8), 1, (4 * a4[160]) | 1);
          *(a4 + 39) = v86;
          if (!v86)
          {
            goto LABEL_121;
          }

          v26 = v19;
          if (a4[160])
          {
            v87 = 0;
            v88 = 0;
            v89 = v84 + 2;
            do
            {
              v90 = v89;
              cstdlib_memcpy((*(a4 + 39) + v87), &v83[v89], 4uLL);
              v89 = v90 + 4;
              ++v88;
              v87 += 4;
            }

            while (v88 < a4[160]);
          }

          v31 = a4 + 164;
          goto LABEL_91;
        }

        if (!cstdlib_strcmp("REST", v204))
        {
          v21 = v206;
          v22 = __src;
          *&__dst[0] = __src;
          LODWORD(__s) = 0;
          cstdlib_memcpy(v194, __src, 4uLL);
          v23 = 4;
          if (*v194)
          {
            cstdlib_memcpy(&__s, v22 + 4, 4uLL);
            v24 = (__s + 8);
            *(a4 + 33) = &v22[v24];
            v23 = (*(a4 + 64) + v24);
          }

          cstdlib_memcpy(a4 + 140, &v22[v23], 2uLL);
          v25 = heap_Calloc(*(*a4 + 8), 1, (4 * a4[140]) | 1);
          *(a4 + 34) = v25;
          if (!v25)
          {
            goto LABEL_121;
          }

          v26 = v19;
          if (a4[140])
          {
            v27 = 0;
            v28 = 0;
            v29 = v23 + 2;
            do
            {
              v30 = v29;
              cstdlib_memcpy((*(a4 + 34) + v27), &v22[v29], 4uLL);
              v29 = v30 + 4;
              ++v28;
              v27 += 4;
            }

            while (v28 < a4[140]);
          }

          v31 = a4 + 144;
LABEL_91:
          v20 = ssftriff_reader_DetachChunkData(v21, v31, __dst);
          v19 = v26;
          if ((v20 & 0x80000000) != 0)
          {
            return v20;
          }
        }
      }

      else
      {
        v49 = __src;
        cstdlib_memcpy(a4 + 36, __src, 2uLL);
        LODWORD(__dst[0]) = 2;
        v50 = heap_Calloc(*(*a4 + 8), 1, (120 * a4[36]) | 1);
        *(a4 + 8) = v50;
        if (!v50)
        {
          goto LABEL_121;
        }

        if (a4[36])
        {
          v51 = 0;
          LOWORD(__s) = 0;
          v52 = 2;
          do
          {
            v53 = 120 * v51;
            cstdlib_memcpy((v50 + 120 * v51), &v49[v52], 4uLL);
            cstdlib_memcpy((*(a4 + 8) + 120 * v51 + 4), &v49[v52 + 4], 4uLL);
            cstdlib_memcpy((*(a4 + 8) + 120 * v51 + 16), &v49[v52 + 8], 2uLL);
            v54 = heap_Calloc(*(*a4 + 8), 1, (4 * *(*(a4 + 8) + 120 * v51 + 16)) | 1);
            v55 = *(a4 + 8);
            *(v55 + 120 * v51 + 8) = v54;
            if (!v54)
            {
              goto LABEL_121;
            }

            v56 = v52 + 10;
            if (*(v55 + 120 * v51 + 16))
            {
              v57 = 0;
              do
              {
                cstdlib_memcpy(&__s, &v49[v56], 2uLL);
                v56 += 2;
                v55 = *(a4 + 8);
                v58 = v55 + 120 * v51;
                *(*(v58 + 8) + 4 * v57++) = __s;
              }

              while (v57 < *(v58 + 16));
            }

            LODWORD(__dst[0]) = v56;
            Str = readRULEREGEXES(*a4, v49, __dst, (v55 + 120 * v51 + 24));
            if ((Str & 0x80000000) != 0)
            {
              return Str;
            }

            Str = readRULEREGEXES(*a4, v49, __dst, (*(a4 + 8) + 120 * v51 + 40));
            if ((Str & 0x80000000) != 0)
            {
              return Str;
            }

            v59 = __dst[0];
            cstdlib_memcpy((*(a4 + 8) + v53 + 64), &v49[LODWORD(__dst[0])], 2uLL);
            v60 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 8) + v53 + 64)) | 1);
            v61 = *(a4 + 8);
            *(v61 + v53 + 56) = v60;
            if (!v60)
            {
              goto LABEL_121;
            }

            if (*(v61 + 120 * v51 + 64))
            {
              v62 = 0;
              v63 = 4;
              do
              {
                cstdlib_memcpy((*(v61 + v53 + 56) + v63 - 4), &v49[(v59 + v63 - 2)], 4uLL);
                cstdlib_memcpy((*(*(a4 + 8) + v53 + 56) + v63), &v49[(v59 + v63 + 2)], 4uLL);
                ++v62;
                v61 = *(a4 + 8);
                v63 += 8;
              }

              while (v62 < *(v61 + v53 + 64));
              v64 = v59 + v63 - 2;
            }

            else
            {
              v64 = v59 + 2;
            }

            LODWORD(__dst[0]) = v64;
            Str = readRULEREGEXES(*a4, v49, __dst, (v61 + 120 * v51 + 72));
            if ((Str & 0x80000000) != 0)
            {
              return Str;
            }

            v65 = __dst[0];
            cstdlib_memcpy((*(a4 + 8) + v53 + 96), &v49[LODWORD(__dst[0])], 2uLL);
            v66 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 8) + v53 + 96)) | 1);
            v67 = *(a4 + 8);
            *(v67 + v53 + 88) = v66;
            if (!v66)
            {
              goto LABEL_121;
            }

            if (*(v67 + 120 * v51 + 96))
            {
              v68 = 0;
              v69 = 4;
              do
              {
                cstdlib_memcpy((*(v67 + v53 + 88) + v69 - 4), &v49[(v65 + v69 - 2)], 4uLL);
                cstdlib_memcpy((*(*(a4 + 8) + v53 + 88) + v69), &v49[(v65 + v69 + 2)], 4uLL);
                ++v68;
                v67 = *(a4 + 8);
                v69 += 8;
              }

              while (v68 < *(v67 + v53 + 96));
              v70 = v65 + v69 - 2;
            }

            else
            {
              v70 = v65 + 2;
            }

            LODWORD(__dst[0]) = v70;
            cstdlib_memcpy((v67 + v53 + 112), &v49[v70], 2uLL);
            v71 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 8) + v53 + 112)) | 1);
            v50 = *(a4 + 8);
            *(v50 + v53 + 104) = v71;
            v72 = (v50 + v53 + 104);
            if (!v71)
            {
              goto LABEL_121;
            }

            if (*(v50 + v53 + 112))
            {
              v73 = 0;
              v74 = 4;
              do
              {
                cstdlib_memcpy((*v72 + v74 - 4), &v49[(v70 + v74 - 2)], 4uLL);
                cstdlib_memcpy((*(*(a4 + 8) + v53 + 104) + v74), &v49[(v70 + v74 + 2)], 4uLL);
                ++v73;
                v50 = *(a4 + 8);
                v72 = (v50 + v53 + 104);
                v74 += 8;
              }

              while (v73 < *(v50 + v53 + 112));
              v52 = v70 + v74 - 2;
            }

            else
            {
              v52 = v70 + 2;
            }

            LODWORD(__dst[0]) = v52;
          }

          while (++v51 < a4[36]);
        }

        LODWORD(v20) = 0;
        v19 = "CFIG";
      }
    }

    else
    {
      v40 = v19;
      v41 = __src;
      cstdlib_memcpy(a4 + 28, __src, 2uLL);
      v42 = heap_Calloc(*(*a4 + 8), 1, (16 * a4[28]) | 1);
      *(a4 + 6) = v42;
      if (!v42)
      {
        goto LABEL_121;
      }

      if (a4[28])
      {
        v43 = 0;
        v44 = 2;
        while (1)
        {
          cstdlib_memcpy((v42 + 16 * v43 + 8), &v41[v44], 2uLL);
          v45 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 6) + 16 * v43 + 8)) | 1);
          v42 = *(a4 + 6);
          v46 = v42 + 16 * v43;
          *v46 = v45;
          if (!v45)
          {
            break;
          }

          if (*(v46 + 8))
          {
            v47 = 0;
            v48 = 4;
            do
            {
              cstdlib_memcpy((*v46 + v48 - 4), &v41[v44 - 2 + v48], 4uLL);
              cstdlib_memcpy((*(*(a4 + 6) + 16 * v43) + v48), &v41[v44 + 2 + v48], 4uLL);
              ++v47;
              v42 = *(a4 + 6);
              v46 = v42 + 16 * v43;
              v48 += 8;
            }

            while (v47 < *(v46 + 8));
            v44 = v44 + v48 - 2;
          }

          else
          {
            v44 += 2;
          }

          if (++v43 >= a4[28])
          {
            goto LABEL_46;
          }
        }

LABEL_121:
        v20 = 2313166858;
LABEL_122:
        v112 = *a4;
LABEL_123:
        v113 = *(v112 + 32);
LABEL_124:
        log_OutPublic(v113, "FE_POS", 35000, 0);
        return v20;
      }

LABEL_46:
      LODWORD(v20) = 0;
      v19 = v40;
    }

LABEL_92:
    v91 = ssftriff_reader_CloseChunk(v206);
    if (v91 < 0)
    {
      LODWORD(v20) = v91;
    }
  }

  while ((v20 & 0x80000000) == 0);
  v92 = v20 & 0x1FFF;
  v20 = 2313166858;
  if (v92 == 10)
  {
    return v20;
  }

  ssftriff_reader_ObjClose(v206);
  v206 = 0;
  a4[44] = 0;
  v93 = a4 + 44;
  *(a4 + 11) = 0x10000;
  a4[13] = 2;
  a4[168] = 0;
  a4[52] = 0;
  v94 = a4 + 52;
  v95 = a4[36];
  if (a4[36])
  {
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v99 = *(a4 + 8);
    do
    {
      if (cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(v99 + v96 + 4)))) > v98)
      {
        v98 = cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(a4 + 8) + v96 + 4))));
      }

      if (cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(a4 + 8) + v96)))) >= 7 && (v100 = cstdlib_strncmp((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(a4 + 8) + v96))), "HYPHEN", 6uLL), v101 = a4 + 44, !v100) || cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(a4 + 8) + v96)))) >= 9 && (v102 = cstdlib_strncmp((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(a4 + 8) + v96))), "COMPOUND", 8uLL), v101 = a4 + 52, !v102))
      {
        ++*v101;
      }

      v99 = *(a4 + 8);
      v103 = *(v99 + v96 + 16);
      if (v103 > a4[168])
      {
        a4[168] = v103;
        if (v103 >= 0x11)
        {
          log_OutPublic(*(*a4 + 32), "FE_POS", 35007, "%s%s", "maximum words", "16");
          return 2313166848;
        }
      }

      ++v97;
      v96 += 120;
    }

    while (v97 < a4[36]);
    if (*v93)
    {
      v104 = heap_Calloc(*(*a4 + 8), 1, (2 * *v93) | 1);
      *(a4 + 10) = v104;
      if (!v104)
      {
        goto LABEL_122;
      }
    }

    if (*v94)
    {
      v105 = heap_Calloc(*(*a4 + 8), 1, (2 * *v94) | 1);
      *(a4 + 12) = v105;
      if (!v105)
      {
        goto LABEL_122;
      }
    }

    v95 = a4[36];
    *v93 = 0;
    *v94 = 0;
    if (v95)
    {
      v106 = 0;
      v107 = 0;
      do
      {
        if (cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(a4 + 8) + v106)))) >= 7 && (v108 = cstdlib_strncmp((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(a4 + 8) + v106))), "HYPHEN", 6uLL), v109 = a4 + 40, v110 = a4 + 44, !v108) || cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(a4 + 8) + v106)))) >= 9 && (v111 = cstdlib_strncmp((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(a4 + 8) + v106))), "COMPOUND", 8uLL), v109 = a4 + 48, v110 = a4 + 52, !v111))
        {
          *(*v109 + 2 * (*v110)++) = v107;
        }

        ++v107;
        v106 += 120;
      }

      while (v107 < a4[36]);
      v95 = *v94;
    }
  }

  else
  {
    v98 = 0;
  }

  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "%d OPEN RULES", v95);
  if (a4[52])
  {
    v114 = 0;
    do
    {
      v115 = (*(a4 + 8) + 120 * *(*(a4 + 12) + 2 * v114));
      log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "label=%s (%d words)", (*(a4 + 38) + *(*(a4 + 39) + 4 * *v115)), *(v115 + 16));
      ++v114;
    }

    while (v114 < a4[52]);
  }

  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "%d HYPHENATED RULES", a4[44]);
  if (a4[44])
  {
    v116 = 0;
    do
    {
      v117 = (*(a4 + 8) + 120 * *(*(a4 + 10) + 2 * v116));
      log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "label=%s (%d words)", (*(a4 + 38) + *(*(a4 + 39) + 4 * *v117)), *(v117 + 16));
      ++v116;
    }

    while (v116 < a4[44]);
  }

  *&__dst[0] = 0;
  LOWORD(__s) = -1;
  __s2[0] = 0;
  Str = (*(v198 + 96))(v196, v197, "fecfg", "compoundabbrendingstrip", __dst, &__s, __s2);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  a4[170] = 0;
  *(a4 + 43) = 0;
  if (__s == 1 && *&__dst[0])
  {
    for (i = **&__dst[0]; ; i = v119 + 1)
    {
      v119 = cstdlib_strchr(i, 44);
      if (!v119)
      {
        break;
      }

      ++a4[170];
    }

    v120 = a4[170] + 1;
    a4[170] = v120;
    v121 = heap_Calloc(*(*a4 + 8), 1, (8 * v120) | 1);
    *(a4 + 43) = v121;
    if (!v121)
    {
      goto LABEL_122;
    }

    a4[170] = 0;
    v122 = cstdlib_strchr(**&__dst[0], __s2[0]);
    if (v122)
    {
      *v122 = 0;
    }

    v123 = **&__dst[0];
    if (**&__dst[0])
    {
      v124 = cstdlib_strchr(**&__dst[0], 44);
      if (v124)
      {
        v125 = v124;
        do
        {
          *v125 = 0;
          v126 = *(*a4 + 8);
          v127 = cstdlib_strlen(v123);
          v128 = heap_Calloc(v126, 1, (v127 + 1));
          v129 = a4[170];
          *(*(a4 + 43) + 8 * v129) = v128;
          v130 = *(*(a4 + 43) + 8 * v129);
          if (!v130)
          {
            goto LABEL_122;
          }

          cstdlib_strcpy(v130, v123);
          v123 = v125 + 1;
          ++a4[170];
          v125 = cstdlib_strchr(v125 + 1, 44);
        }

        while (v125);
      }

      v131 = *(*a4 + 8);
      v132 = cstdlib_strlen(v123);
      v133 = heap_Calloc(v131, 1, (v132 + 1));
      v134 = a4[170];
      *(*(a4 + 43) + 8 * v134) = v133;
      v135 = *(*(a4 + 43) + 8 * v134);
      if (!v135)
      {
        goto LABEL_122;
      }

      cstdlib_strcpy(v135, v123);
      ++a4[170];
    }
  }

  if (v98)
  {
    v136 = heap_Calloc(*(*a4 + 8), 1, v98 + 11);
    *(a4 + 44) = v136;
    v112 = *a4;
    if (!v136)
    {
      goto LABEL_123;
    }

    v137 = heap_Calloc(*(v112 + 8), 1, v98 + 11);
    *(a4 + 45) = v137;
    if (!v137)
    {
      goto LABEL_122;
    }
  }

  a4[68] = 0;
  *(a4 + 92) = 0;
  if (!a4[36])
  {
    return 0;
  }

  v138 = 0;
  v139 = 0;
  v140 = *(a4 + 8);
  do
  {
    v141 = v140 + 120 * v138;
    if (*(v141 + 64))
    {
      v142 = 0;
      v143 = 0;
      v144 = (v141 + 56);
      do
      {
        if (!cstdlib_strcmp((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*v144 + v142))), "IGTREE"))
        {
          ++a4[68];
          if (cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(*(a4 + 8) + 120 * v138 + 56) + v142 + 4)))) > v139)
          {
            v139 = cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(*(a4 + 8) + 120 * v138 + 56) + v142 + 4))));
          }
        }

        ++v143;
        v140 = *(a4 + 8);
        v145 = v140 + 120 * v138;
        v144 = (v145 + 56);
        v142 += 8;
      }

      while (v143 < *(v145 + 64));
    }

    v146 = v140 + 120 * v138;
    if (*(v146 + 96))
    {
      v147 = 0;
      v148 = 0;
      v149 = (v146 + 88);
      do
      {
        if (!cstdlib_strcmp((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*v149 + v147))), "IGTREE"))
        {
          ++a4[68];
          if (cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(*(a4 + 8) + 120 * v138 + 88) + v147 + 4)))) > v139)
          {
            v139 = cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(*(a4 + 8) + 120 * v138 + 88) + v147 + 4))));
          }
        }

        ++v148;
        v140 = *(a4 + 8);
        v150 = v140 + 120 * v138;
        v149 = (v150 + 88);
        v147 += 8;
      }

      while (v148 < *(v150 + 96));
    }

    v151 = v140 + 120 * v138;
    if (*(v151 + 112))
    {
      v152 = 0;
      v153 = 0;
      v154 = (v151 + 104);
      do
      {
        if (!cstdlib_strcmp((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*v154 + v152))), "IGTREE"))
        {
          ++a4[68];
          if (cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(*(a4 + 8) + 120 * v138 + 104) + v152 + 4)))) > v139)
          {
            v139 = cstdlib_strlen((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(*(a4 + 8) + 120 * v138 + 104) + v152 + 4))));
          }
        }

        ++v153;
        v140 = *(a4 + 8);
        v155 = v140 + 120 * v138;
        v154 = (v155 + 104);
        v152 += 8;
      }

      while (v153 < *(v155 + 112));
    }

    ++v138;
  }

  while (v138 < a4[36]);
  if (!a4[68])
  {
    return 0;
  }

  *(a4 + 29) = 0;
  *(a4 + 28) = 0;
  Str = (*(v198 + 72))(v196, v197, "compounds_feature_map");
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = (*(v198 + 72))(v196, v197, "compounds_feature_key", a4 + 56);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  DctIgtreeMappings = getDctIgtreeMappings(a4, v196, v197, v198, (a4 + 60));
  if ((DctIgtreeMappings & 0x80000000) == 0)
  {
    v157 = heap_Calloc(*(a3 + 8), 1, 20 * a4[68]);
    *(a4 + 18) = v157;
    if (!v157 || (v158 = heap_Calloc(*(a3 + 8), 1, 8 * a4[68]), (*(a4 + 19) = v158) == 0))
    {
LABEL_234:
      v113 = *(a3 + 32);
      goto LABEL_124;
    }

    if (a4[68])
    {
      v159 = 0;
      while (1)
      {
        *(*(a4 + 19) + 8 * v159) = heap_Calloc(*(a3 + 8), 1, v139 + 1);
        if (!*(*(a4 + 19) + 8 * v159))
        {
          goto LABEL_234;
        }

        ++v159;
        v160 = a4[68];
        if (v159 >= v160)
        {
          v161 = 8 * v160;
          goto LABEL_188;
        }
      }
    }

    v161 = 0;
LABEL_188:
    v163 = heap_Calloc(*(a3 + 8), 1, v161);
    *(a4 + 20) = v163;
    if (!v163)
    {
      goto LABEL_234;
    }

    if (a4[68])
    {
      v164 = 0;
      while (1)
      {
        *(*(a4 + 20) + 8 * v164) = heap_Calloc(*(a3 + 8), 1, 1600);
        if (!*(*(a4 + 20) + 8 * v164))
        {
          goto LABEL_234;
        }

        ++v164;
        v165 = a4[68];
        if (v164 >= v165)
        {
          v166 = 8 * v165;
          goto LABEL_195;
        }
      }
    }

    v166 = 0;
LABEL_195:
    v167 = heap_Calloc(*(a3 + 8), 1, v166);
    *(a4 + 21) = v167;
    if (!v167)
    {
      goto LABEL_234;
    }

    if (a4[68])
    {
      v168 = 0;
      while (1)
      {
        *(*(a4 + 21) + 8 * v168) = heap_Calloc(*(a3 + 8), 1, 16);
        if (!*(*(a4 + 21) + 8 * v168))
        {
          goto LABEL_234;
        }

        ++v168;
        v169 = a4[68];
        if (v168 >= v169)
        {
          v170 = 8 * v169;
          goto LABEL_202;
        }
      }
    }

    v170 = 0;
LABEL_202:
    v171 = heap_Calloc(*(a3 + 8), 1, v170);
    *(a4 + 22) = v171;
    if (!v171)
    {
      goto LABEL_234;
    }

    v172 = heap_Calloc(*(a3 + 8), 1, 8 * a4[68]);
    *(a4 + 23) = v172;
    if (!v172)
    {
      goto LABEL_234;
    }

    LODWORD(v173) = a4[68];
    if (a4[68])
    {
      v174 = 0;
      do
      {
        *(*(a4 + 23) + 8 * v174) = heap_Calloc(*(a3 + 8), 1, 8);
        if (!*(*(a4 + 23) + 8 * v174))
        {
          goto LABEL_234;
        }

        ++v174;
        v173 = a4[68];
      }

      while (v174 < v173);
    }

    if (a4[36])
    {
      v175 = 0;
      v176 = 0;
      v177 = *(a4 + 8);
      do
      {
        v178 = v177 + 120 * v175;
        if (*(v178 + 64))
        {
          v179 = 0;
          v180 = 0;
          v181 = (v178 + 56);
          do
          {
            if (!cstdlib_strcmp((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*v181 + v179))), "IGTREE"))
            {
              DctIgtreeMappings = setIGTreeInfo(v199, v200, a4, v176, (*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(*(a4 + 8) + 120 * v175 + 56) + v179 + 4))), v196, v197, v198);
              if ((DctIgtreeMappings & 0x80000000) != 0)
              {
                return DctIgtreeMappings;
              }

              ++v176;
            }

            ++v180;
            v177 = *(a4 + 8);
            v182 = v177 + 120 * v175;
            v181 = (v182 + 56);
            v179 += 8;
          }

          while (v180 < *(v182 + 64));
        }

        v183 = v177 + 120 * v175;
        if (*(v183 + 96))
        {
          v184 = 0;
          v185 = 0;
          v186 = (v183 + 88);
          do
          {
            if (!cstdlib_strcmp((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*v186 + v184))), "IGTREE"))
            {
              DctIgtreeMappings = setIGTreeInfo(v199, v200, a4, v176, (*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(*(a4 + 8) + 120 * v175 + 88) + v184 + 4))), v196, v197, v198);
              if ((DctIgtreeMappings & 0x80000000) != 0)
              {
                return DctIgtreeMappings;
              }

              ++v176;
            }

            ++v185;
            v177 = *(a4 + 8);
            v187 = v177 + 120 * v175;
            v186 = (v187 + 88);
            v184 += 8;
          }

          while (v185 < *(v187 + 96));
        }

        v188 = v177 + 120 * v175;
        if (*(v188 + 112))
        {
          v189 = 0;
          v190 = 0;
          v191 = (v188 + 104);
          do
          {
            if (!cstdlib_strcmp((*(a4 + 38) + *(*(a4 + 39) + 4 * *(*v191 + v189))), "IGTREE"))
            {
              DctIgtreeMappings = setIGTreeInfo(v199, v200, a4, v176, (*(a4 + 38) + *(*(a4 + 39) + 4 * *(*(*(a4 + 8) + 120 * v175 + 104) + v189 + 4))), v196, v197, v198);
              if ((DctIgtreeMappings & 0x80000000) != 0)
              {
                return DctIgtreeMappings;
              }

              ++v176;
            }

            ++v190;
            v177 = *(a4 + 8);
            v192 = v177 + 120 * v175;
            v191 = (v192 + 104);
            v189 += 8;
          }

          while (v190 < *(v192 + 112));
        }

        ++v175;
      }

      while (v175 < a4[36]);
      LODWORD(v173) = a4[68];
    }

    if (v173)
    {
      v193 = 0;
      do
      {
        setIGTreeWord2Nindex(a4, v193++);
      }

      while (a4[68] > v193);
    }
  }

  return DctIgtreeMappings;
}

uint64_t getDctIgtreeMappings(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = 0;
  v30 = -1;
  if (a1[92] == 1 || !a1[29])
  {
    return 0;
  }

  v29 = 0;
  v10 = (*(a4 + 96))(a2, a3, "compounds_feature_map", "numMappings", &v31, &v30, &v29);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v30 != 1 || v31 == 0)
  {
    v14 = *(a5 + 8);
  }

  else
  {
    v14 = cstdlib_atoi(*v31);
    *(a5 + 8) = v14;
  }

  v15 = heap_Calloc(*(*a1 + 8), 1, (16 * v14) | 1);
  *a5 = v15;
  if (!v15)
  {
LABEL_26:
    v12 = 2313166858;
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0);
    return v12;
  }

  if (*(a5 + 8))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      LH_itoa(v17, v28, 0xAu);
      v30 = -1;
      v10 = (*(a4 + 96))(a2, a3, "compounds_feature_map", v28, &v31, &v30, &v29);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v18 = v30 != 1 || v31 == 0;
      if (v18 || (v19 = *v31, (v20 = cstdlib_strchr(*v31, 43)) == 0))
      {
        log_OutPublic(*(*a1 + 32), "FE_POS", 35005, 0);
        return 2313166848;
      }

      v21 = v20;
      *v20 = 0;
      v22 = *(*a1 + 8);
      v23 = cstdlib_strlen(v19);
      v24 = heap_Calloc(v22, 1, (v23 + 1));
      *(*a5 + v16 + 8) = v24;
      if (!v24)
      {
        goto LABEL_26;
      }

      cstdlib_strcpy(v24, v19);
      v25 = *(*a1 + 8);
      v26 = cstdlib_strlen(v21 + 1);
      v27 = heap_Calloc(v25, 1, (v26 + 1));
      *(*a5 + v16) = v27;
      if (!v27)
      {
        goto LABEL_26;
      }

      cstdlib_strcpy(v27, v21 + 1);
      ++v17;
      v16 += 16;
    }

    while (v17 < *(a5 + 8));
  }

  v12 = 0;
  a1[92] = 1;
  return v12;
}

uint64_t setIGTreeInfo(_WORD *a1, uint64_t a2, uint64_t *a3, unsigned int a4, char *__src, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = 2313166855;
  memset(&__c[1], 0, 256);
  if (a3)
  {
    v10 = a3[19];
    if (v10)
    {
      *v36 = 0;
      v12 = *(v10 + 8 * a4);
      if (v12)
      {
        cstdlib_strcpy(v12, __src);
        v18 = *a3;
        v37 = 0;
        memset(__s1, 0, sizeof(__s1));
        Str = paramc_ParamGetStr(*(v18 + 40), "langcode", &v37);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        cstdlib_strcat(__s1, __src);
        cstdlib_strcat(__s1, "_igtree");
        Str = brokeraux_ComposeBrokerString(v18, __s1, 1, 1, v37, 0, 0, &__c[1], 0x100uLL);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        if ((ssftriff_reader_ObjOpen(a1, a2, 2, &__c[1], "IGTR", 1031, v36) & 0x80000000) != 0)
        {
          log_OutPublic(*(*a3 + 32), "FE_POS", 35004, 0);
          return 2313166848;
        }

        Str = igtree_Init(a1, a2, *v36, *(a3[20] + 8 * a4));
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        Str = ssftriff_reader_ObjClose(*v36);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        v20 = *(a3[21] + 8 * a4);
        *&__s1[0] = 0;
        LOWORD(v37) = -1;
        if (*(a3 + 28))
        {
          __c[0] = 0;
          Str = (*(a8 + 96))(a6, a7, "compounds_feature_key", __src, __s1, &v37, __c);
          if ((Str & 0x80000000) != 0)
          {
            return Str;
          }

          if (v37 == 1 && *&__s1[0])
          {
            v21 = **&__s1[0];
            v22 = cstdlib_strchr(**&__s1[0], __c[0]);
            v23 = v22;
            if (v22)
            {
              *v22 = 0;
            }

            v24 = cstdlib_atoi(v21);
            *(v20 + 8) = v24;
            v25 = heap_Calloc(*(*a3 + 8), 1, (8 * v24) | 1u);
            *v20 = v25;
            if (!v25)
            {
LABEL_33:
              log_OutPublic(*(*a3 + 32), "FE_POS", 35000, 0);
              return 2313166858;
            }

            if (*(v20 + 8))
            {
              v26 = 0;
              if (v23)
              {
                v21 = (v23 + 1);
              }

              do
              {
                v27 = cstdlib_strchr(v21, __c[0]);
                v28 = v27;
                if (v27)
                {
                  *v27 = 0;
                }

                v29 = *(*a3 + 8);
                v30 = cstdlib_strlen(v21);
                *(*v20 + 8 * v26) = heap_Calloc(v29, 1, (v30 + 1));
                v31 = *(*v20 + 8 * v26);
                if (!v31)
                {
                  goto LABEL_33;
                }

                cstdlib_strcpy(v31, v21);
                ++v26;
                v32 = *(v20 + 8);
                if (v26 != v32 && v28 != 0)
                {
                  v21 = (v28 + 1);
                }
              }

              while (v26 < v32);
            }
          }
        }

        *(a3[22] + 8 * a4) = heap_Calloc(*(*a3 + 8), 1, (2 * *(*(a3[21] + 8 * a4) + 8)) | 1);
        if (!*(a3[22] + 8 * a4))
        {
          return 2313166858;
        }

        return setIgtreeFVLookups(a3, *(a3[23] + 8 * a4), a4);
      }
    }
  }

  return v8;
}

uint64_t setIGTreeWord2Nindex(uint64_t result, unsigned int a2)
{
  if (*(result + 40))
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    v5 = a2;
    while (1)
    {
      result = cstdlib_strncmp((*(v2 + 304) + *(*(v2 + 312) + 4 * *(*(v2 + 32) + v3))), "IGTREE_", 7uLL);
      if (!result)
      {
        result = cstdlib_strcmp((*(v2 + 304) + *(*(v2 + 312) + 4 * *(*(v2 + 32) + v3)) + 7), *(*(v2 + 152) + 8 * v5));
        if (!result)
        {
          break;
        }
      }

      ++v4;
      v3 += 8;
      if (v4 >= *(v2 + 40))
      {
        return result;
      }
    }

    v6 = (*(v2 + 304) + *(*(v2 + 312) + 4 * *(*(v2 + 32) + v3 + 4)));
    result = cstdlib_strchr(v6, 95);
    v7 = result;
    if (result)
    {
      v8 = 0;
      do
      {
        *v7 = 0;
        v9 = v8 + 1;
        *(*(v2 + 144) + 20 * v5 + 2 * v8) = cstdlib_atoi(v6);
        v6 = (v7 + 1);
        result = cstdlib_strchr((v7 + 1), 95);
        v7 = result;
        ++v8;
      }

      while (result);
      v7 = v9;
    }

    if (*v6)
    {
      result = cstdlib_atoi(v6);
      *(*(v2 + 144) + 20 * v5 + 2 * v7) = result;
    }
  }

  return result;
}

uint64_t statcomp_add2Str(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s)
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
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
      return 2313166858;
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

uint64_t matchSTATCOMPCONTEXT_TRule(const char *a1, const char **a2, unsigned __int16 *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int *a8, int *a9, _WORD *a10, int a11)
{
  v11 = a7;
  v14 = a9;
  v47 = *MEMORY[0x277D85DE8];
  *a9 = 0;
  *(a8 + 6) = 0;
  if (*(a5 + 8))
  {
    v17 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, a7);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "         %s %s", a1, *a2);
    cstdlib_strcpy(*a2, "");
  }

  else
  {
    v17 = 0;
  }

  if (!*(v11 + 4))
  {
    v38 = 1;
    goto LABEL_75;
  }

  v18 = 0;
  v19 = 0;
  v20 = a11;
  v21 = a8;
  v43 = a6;
  v44 = v11;
  while (1)
  {
    v22 = *v11;
    v23 = *(v21 + 2);
    if (*(a5 + 8))
    {
      v24 = a6;
      v25 = v20;
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           regex %d", *(v22 + v18 + 2));
      v26 = *(v22 + v18 + 4) & 1;
      if (*(a5 + 8) >= 2u)
      {
        v27 = *(v22 + v18 + 4) & 1;
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d", STATCOMPDOMAIN2STRING[*a8], *a8, *(a8 + 2), *(a8 + 3), *(a8 + 4), (*(a5 + 304) + *(*(a5 + 312) + 4 * *(v22 + v18))), *(v22 + v18), v26);
        v26 = v27;
      }

      v20 = v25;
      a6 = v24;
      v21 = a8;
    }

    else
    {
      v26 = *(v22 + v18 + 4) & 1;
    }

    if (*v21 == 2)
    {
      v28 = *(v22 + v18);
      if (v28 == 2)
      {
        v29 = v26;
        v30 = *(a6 + 40);
        if (!v30)
        {
          log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           ERROR : no TOK string to match", 0);
          goto LABEL_37;
        }
      }

      else if (v28 == 1)
      {
        v29 = v26;
        v30 = *(a6 + 32);
        if (!v30)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (*(v22 + v18))
        {
LABEL_25:
          if (!*(a5 + 8))
          {
            v17 = 0;
            if (!v26)
            {
              goto LABEL_66;
            }

            goto LABEL_42;
          }

          v29 = v26;
          log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           NULL STR FOUND - no match", 0);
          goto LABEL_37;
        }

        v29 = v26;
        v30 = *(a6 + 24);
        if (!v30)
        {
          log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           ERROR : no ORT string to match", 0);
          goto LABEL_37;
        }
      }
    }

    else
    {
      if (*v21 != 1)
      {
        goto LABEL_25;
      }

      if (v20)
      {
        if (v20 == 2)
        {
          if (v23 + *(v21 + 4) + 1 >= *(a6 + 8))
          {
            goto LABEL_67;
          }
        }

        else if (v20 != 1 || *(v21 + 3) >= v23)
        {
LABEL_67:
          v17 = 0;
          if (!*(a5 + 8))
          {
            goto LABEL_73;
          }

          v39 = "           context not found. rule not applicable. RETURN LH_FALSE";
          goto LABEL_72;
        }
      }

      v30 = *(*a6 + 96 * *(v21 + 2) + 32);
      if (!v30)
      {
        v29 = v26;
LABEL_35:
        v31 = "           ERROR : no POS string to match";
LABEL_36:
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v31, 0);
LABEL_37:
        v17 = 0;
        goto LABEL_38;
      }

      v29 = v26;
      v31 = "           ERROR : expected POS(idx) rule";
      if (*(v22 + v18) != *(a5 + 24))
      {
        goto LABEL_36;
      }
    }

    v33 = v20;
    if (*(a5 + 8))
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           STR=%s", v30);
    }

    v34 = *(v22 + v18 + 2);
    v35 = cstdlib_strlen(v30);
    if (!v35)
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "invalid arg for regex", 0);
      return 2313166855;
    }

    v36 = nuance_pcre_exec(*(a5 + 200), *(a5 + 208), *(a5 + 224) + *(*(a5 + 232) + 4 * v34), 0, v30, v35, 0, 0, v46, 30);
    if ((v36 & 0x80000000) == 0)
    {
      break;
    }

    v37 = nuance_pcre_ErrorToLhError(v36);
    v17 = v37;
    v20 = v33;
    if (v37 >> 20 == 2213)
    {
      if ((v37 & 0x1FFF) != 0x14)
      {
        if ((v37 & 0x1FFF) == 0xA)
        {
          log_OutPublic(*(*a5 + 32), "FE_POS", 11002, 0, v41, v42);
        }

        else
        {
          log_OutPublic(*(*a5 + 32), "FE_POS", 11027, "%s%x");
        }

        return v17;
      }

      goto LABEL_59;
    }

    a6 = v43;
    v11 = v44;
    if ((v37 & 0x80000000) != 0)
    {
      return v17;
    }

LABEL_38:
    if (*(a5 + 8))
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           REGEX FAILED", 0);
      if (!v29)
      {
        v38 = *(a5 + 8);
        if (!*(a5 + 8))
        {
          goto LABEL_74;
        }

        v39 = "           return LH_FALSE";
LABEL_72:
        v14 = a9;
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v39, 0);
        v38 = 0;
        goto LABEL_75;
      }
    }

    else if (!v29)
    {
LABEL_66:
      v38 = 0;
      goto LABEL_74;
    }

LABEL_42:
    *a10 = *(v22 + v18 + 2);
    v32 = "           negate match - return LH_TRUE";
    if (*(a5 + 8))
    {
      goto LABEL_43;
    }

LABEL_44:
    ++v19;
    v18 += 6;
    if (v19 >= *(v11 + 4))
    {
      v38 = 1;
      goto LABEL_74;
    }
  }

  v20 = v33;
  if (!v36)
  {
LABEL_59:
    v17 = 0;
    a6 = v43;
    v11 = v44;
    goto LABEL_38;
  }

  if (*(a5 + 8))
  {
    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           REGEX FIRED", 0);
  }

  v11 = v44;
  v17 = 0;
  if (!v29)
  {
    *a10 = *(v22 + v18 + 2);
    v32 = "           return LH_TRUE";
    a6 = v43;
    if (!*(a5 + 8))
    {
      goto LABEL_44;
    }

LABEL_43:
    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v32, 0);
    goto LABEL_44;
  }

  if (*(a5 + 8))
  {
    v39 = "           negate match - return LH_FALSE";
    goto LABEL_72;
  }

LABEL_73:
  v38 = 0;
LABEL_74:
  v14 = a9;
LABEL_75:
  *v14 = v38;
  return v17;
}

uint64_t logSTATCOMPCONTEXT_TRule(const char **a1, unsigned __int16 *a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  if (!*(a5 + 4))
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *a5;
    v13 = (*a5 + v10);
    if (*(v13 + 4))
    {
      if (v13[2])
      {
        cstdlib_strcpy(__s, "!");
      }

      result = statcomp_add2Str(*a4, a1, a2, __s);
      if ((result & 0x80000000) != 0)
      {
        break;
      }
    }

    result = statcomp_add2Str(*a4, a1, a2, "[");
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, (a4[38] + *(a4[39] + 4 * *v13)));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    sprintf(__s, " %d(", *(v12 + v10 + 2));
    result = statcomp_add2Str(*a4, a1, a2, __s);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, (a4[33] + *(a4[34] + 4 * *(v12 + v10 + 2))));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, ")] ");
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v11;
    v10 += 6;
    if (v11 >= *(a5 + 4))
    {
      return 0;
    }
  }

  return result;
}

uint64_t statcomp_matchRule(int a1, const char **a2, unsigned __int16 *a3, char *__s, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t **a8, int *a9)
{
  v25 = 1;
  if (*(a5 + 8))
  {
    if (!a1)
    {
      goto LABEL_14;
    }

    if (*a8)
    {
      v16 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, *a8);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }
    }

    *__s = 2121504;
    v16 = statcomp_add2Str(*a5, a2, a3, __s);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v17 = a8[1];
    if (v17)
    {
      v16 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, v17);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }
    }

    *__s = 2121504;
    v16 = statcomp_add2Str(*a5, a2, a3, __s);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v18 = a8[2];
    if (v18)
    {
      matched = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, v18);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }
    }

    else
    {
LABEL_14:
      matched = 0;
    }

    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "       <%s>", *a2);
    cstdlib_strcpy(*a2, "");
  }

  else
  {
    matched = 0;
  }

  *a9 = 0;
  if (*a8)
  {
    matched = matchSTATCOMPCONTEXT_TRule("LEFT", a2, a3, __s, a5, a6, *a8, a7, &v25, &v24, 1);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
      goto LABEL_26;
    }
  }

  v21 = a8[1];
  if (v21)
  {
    v25 = 0;
    matched = matchSTATCOMPCONTEXT_TRule("CUR", a2, a3, __s, a5, a6, v21, a7, &v25, &v24, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
LABEL_26:
      *a9 = v20;
      return matched;
    }
  }

  v22 = a8[2];
  if (!v22)
  {
    v20 = 1;
    goto LABEL_26;
  }

  v25 = 0;
  matched = matchSTATCOMPCONTEXT_TRule("RIGHT", a2, a3, __s, a5, a6, v22, a7, &v25, &v24, 2);
  if ((matched & 0x80000000) == 0)
  {
    v20 = v25;
    goto LABEL_26;
  }

  return matched;
}

uint64_t readRULEREGEXES(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  cstdlib_memcpy(a4 + 1, (a2 + *a3), 2uLL);
  *a3 += 2;
  v8 = heap_Calloc(*(a1 + 8), 1, (24 * *(a4 + 4)) | 1);
  *a4 = v8;
  if (v8)
  {
    v9 = -1;
    v10 = 16;
    while (++v9 < *(a4 + 4))
    {
      v11 = *a4;
      v12 = *a4 + v10;
      result = readCONTEXT_0(a1, a2, a3, (v12 - 16));
      if ((result & 0x80000000) == 0)
      {
        result = readCONTEXT_0(a1, a2, a3, (v12 - 8));
        if ((result & 0x80000000) == 0)
        {
          result = readCONTEXT_0(a1, a2, a3, (v11 + v10));
          v10 += 24;
          if ((result & 0x80000000) == 0)
          {
            continue;
          }
        }
      }

      return result;
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }
}

uint64_t readCONTEXT_0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  __dst = 0;
  cstdlib_memcpy(&__dst, (a2 + *a3), 2uLL);
  *a3 += 2;
  if (!__dst)
  {
    return 0;
  }

  v8 = heap_Calloc(*(a1 + 8), 1, 17);
  if (!v8)
  {
    v17 = 2313166858;
LABEL_11:
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v17;
  }

  v9 = v8;
  v10 = __dst;
  *(v8 + 8) = __dst;
  v11 = heap_Calloc(*(a1 + 8), 1, (6 * v10) | 1);
  *v9 = v11;
  if (!v11)
  {
    v17 = 2313166858;
    heap_Free(*(a1 + 8), v9);
    goto LABEL_11;
  }

  if (*(v9 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = *a3;
    do
    {
      cstdlib_memcpy((v11 + v12), (a2 + v14), 2uLL);
      v15 = *a3 + 2;
      *a3 = v15;
      cstdlib_memcpy((*v9 + v12 + 2), (a2 + v15), 2uLL);
      v16 = *a3 + 2;
      *a3 = v16;
      cstdlib_memcpy(&__dst + 2, (a2 + v16), 2uLL);
      v14 = *a3 + 2;
      *a3 = v14;
      v11 = *v9;
      *(*v9 + v12 + 4) = BYTE2(__dst);
      ++v13;
      v12 += 6;
    }

    while (v13 < *(v9 + 8));
  }

  v17 = 0;
  *a4 = v9;
  return v17;
}

uint64_t setIgtreeFVLookups(void *a1, uint64_t *a2, unsigned int a3)
{
  v6 = *(a1[20] + 8 * a3);
  v7 = heap_Calloc(*(*a1 + 8), 1, 12 * *(v6 + 1296) - 11);
  *a2 = v7;
  if (!v7)
  {
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  if (*(v6 + 1296) < 2u)
  {
    return 0;
  }

  v8 = 0;
  v16 = 0;
  while (1)
  {
    if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v8), "N1_", 3uLL))
    {
      if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v8), "N2_", 3uLL))
      {
        v9 = 3;
        if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v8), "N3_", 3uLL))
        {
          if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v8), "N4_", 3uLL))
          {
            if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v8), "N5_", 3uLL))
            {
              if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v8), "N6_", 3uLL))
              {
                if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v8), "N7_", 3uLL))
                {
                  if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v8), "N8_", 3uLL))
                  {
                    if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v8), "N9_", 3uLL))
                    {
                      if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v8), "N10_", 4uLL))
                      {
                        goto LABEL_24;
                      }

                      v9 = 10;
                    }

                    else
                    {
                      v9 = 9;
                    }
                  }

                  else
                  {
                    v9 = 8;
                  }
                }

                else
                {
                  v9 = 7;
                }
              }

              else
              {
                v9 = 6;
              }
            }

            else
            {
              v9 = 5;
            }
          }

          else
          {
            v9 = 4;
          }
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }

    *(*a2 + 12 * v8) = v9;
LABEL_24:
    if (statcomp_isDynamicFeature(*(*(v6 + 1312) + 8 * v8), &v16 + 1) != 1)
    {
      break;
    }

    v10 = *a2;
    *(*a2 + 12 * v8 + 4) = 0;
LABEL_31:
    *(v10 + 12 * v8++ + 8) = HIWORD(v16);
    if (*(v6 + 1296) - 1 <= v8)
    {
      return 0;
    }
  }

  if (statcomp_isDctFeature(*(*(v6 + 1312) + 8 * v8), &v16 + 1, *(a1[21] + 8 * a3)) == 1)
  {
    v10 = *a2;
    *(*a2 + 12 * v8 + 4) = 1;
    goto LABEL_31;
  }

  if (statcomp_isDctMappedFeature(*(*(v6 + 1312) + 8 * v8), &v16, (a1 + 15)) != 1)
  {
    v11 = 2313166848;
    v12 = *(*a1 + 32);
    v13 = *(*(v6 + 1312) + 8 * v8);
    v14 = "featurename";
    goto LABEL_36;
  }

  *(*a2 + 12 * v8 + 4) = 2;
  if (statcomp_isDctFeature(*(a1[15] + 16 * v16), &v16 + 1, *(a1[21] + 8 * a3)) == 1)
  {
    v10 = *a2;
    goto LABEL_31;
  }

  v11 = 2313166848;
  v12 = *(*a1 + 32);
  v13 = *(*(v6 + 1312) + 8 * v8);
  v14 = "featurename (mapped)";
LABEL_36:
  log_OutPublic(v12, "FE_POS", 35006, "%s%s", v14, v13);
  return v11;
}

uint64_t statpos_igtrees_getBrkStrs(uint64_t a1, _BYTE *a2, _BYTE *a3, size_t a4)
{
  v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v9);
  if ((result & 0x80000000) == 0)
  {
    result = brokeraux_ComposeBrokerString(a1, "OOVigtree", 1, 1, v9, 0, 0, a2, a4);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "KNOWNigtree", 1, 1, v9, 0, 0, a3, a4);
    }
  }

  return result;
}

uint64_t statpos_igtrees_load(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  *v18 = 0;
  BrkStrs = statpos_igtrees_getBrkStrs(a3, v20, v19, 0x100uLL);
  if ((BrkStrs & 0x80000000) == 0)
  {
    *a5 = 0;
    v11 = heap_Calloc(*(a3 + 8), 1, 536);
    v12 = v11;
    if (!v11)
    {
      v15 = 2313166858;
      log_OutPublic(*(a3 + 32), "FE_POS", 35000, 0);
LABEL_22:
      *a5 = v12;
      return v15;
    }

    cstdlib_strcpy((v11 + 24), a4);
    if ((ssftriff_reader_ObjOpen(a1, a2, 2, v19, "IGTR", 1031, v18) & 0x80000000) != 0)
    {
      *(v12 + 8) = 0;
      log_OutPublic(*(a3 + 32), "FE_POS", 63000, "%s%x", "treename:", v19);
      v15 = 2313166848;
    }

    else
    {
      v13 = heap_Calloc(*(a3 + 8), 1, 1600);
      *(v12 + 8) = v13;
      if (v13)
      {
        v14 = igtree_Init(a1, a2, *v18, v13);
        if ((v14 & 0x80000000) != 0 || (v14 = ssftriff_reader_ObjClose(*v18), (v14 & 0x80000000) != 0))
        {
LABEL_16:
          v15 = v14;
          goto LABEL_17;
        }

        if ((ssftriff_reader_ObjOpen(a1, a2, 2, v20, "IGTR", 1031, v18) & 0x80000000) != 0)
        {
          v15 = 0;
          *v12 = 0;
          *(v12 + 16) = 1;
          goto LABEL_25;
        }

        v13 = heap_Calloc(*(a3 + 8), 1, 1600);
        *v12 = v13;
        if (v13)
        {
          v14 = igtree_Init(a1, a2, *v18, v13);
          if ((v14 & 0x80000000) == 0)
          {
            v15 = ssftriff_reader_ObjClose(*v18);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_17;
            }

LABEL_25:
            if (*(v12 + 8) || *v12)
            {
              *(v12 + 20) = 1;
            }

            goto LABEL_22;
          }

          goto LABEL_16;
        }
      }

      v15 = 2313166858;
      log_OutPublic(*(a3 + 32), "FE_POS", 35000, v13);
    }

LABEL_17:
    v16 = *(v12 + 8);
    if (v16)
    {
      heap_Free(*(a3 + 8), v16);
    }

    if (*v12)
    {
      heap_Free(*(a3 + 8), *v12);
    }

    heap_Free(*(a3 + 8), v12);
    v12 = 0;
    goto LABEL_22;
  }

  return BrkStrs;
}

uint64_t statpos_igtrees_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    return statpos_igtrees_unload(v5, *(a3 + 32));
  }

  return result;
}

uint64_t statpos_igtrees_unload(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (v4)
  {
    v5 = igtree_Deinit(a1, v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = a2[1];
  if (!v6)
  {
LABEL_8:
    heap_Free(*(a1 + 8), a2);
    return v5;
  }

  v5 = igtree_Deinit(a1, v6);
  if ((v5 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a2[1]);
    a2[1] = 0;
    goto LABEL_8;
  }

  return v5;
}

uint64_t statpos_igtrees_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  result = InitRsrcFunction(a1, a2, &v36);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_memcpy(v11, v36, 0x1A0uLL);
    v12 = *(a5 + 32);
    return statpos_igtrees_load(a1, a2, v11, a3, (a4 + 32));
  }

  return result;
}

uint64_t statpos_igtrees_label(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v32 = 0;
  v33 = 0;
  __s = 0;
  v8 = *(a4[1] + 1296) - 1;
  if (!*(a4 + 4) && *(*a4 + 1296) - 1 > v8)
  {
    v8 = *(*a4 + 1296) - 1;
  }

  HIDWORD(v33) = 0;
  v9 = statpos_fv_new(a1, v8, &v32);
  if ((v9 & 0x80000000) != 0)
  {
    inited = v9;
LABEL_44:
    statpos_fv_dealloc(a1, &v32);
    return inited;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, 8 * v8);
  if (!v10)
  {
    inited = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    goto LABEL_44;
  }

  v11 = v10;
  inited = initFeatureVector(a1, v10, v8);
  if ((inited & 0x80000000) == 0 && *(a3 + 4))
  {
    v13 = 0;
    v14 = 72;
    do
    {
      if (*(a2 + 188) == 1)
      {
        if (*(a4 + 4) == 1 || !*(*a3 + v14 - 64))
        {
          features = statpos_get_features(a1, a3, a2, v13, *(a4[1] + 1312), (*(a4[1] + 1296) - 1), &v32, a4[1]);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          features = statpos_get_features_for_igtree(a1, v11, &v32);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v16 = a4[1];
        }

        else
        {
          features = statpos_get_features(a1, a3, a2, v13, *(*a4 + 1312), (*(*a4 + 1296) - 1), &v32, *a4);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          features = statpos_get_features_for_igtree(a1, v11, &v32);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v16 = *a4;
        }

        inited = igtree_Process(v16, v11, &__s);
        if ((inited & 0x80000000) != 0)
        {
          break;
        }

        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate OOV Word[%d] %s %s -> %s", v13, **(*a3 + v14 - 24), *(*a3 + v14 + 8), __s);
        v24 = cstdlib_strlen(__s);
        v25 = heap_Calloc(*(a1 + 8), 1, v24 + 1);
        *(*a3 + v14 + 16) = v25;
        if (!v25)
        {
LABEL_46:
          inited = 2313166858;
          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
          break;
        }

        cstdlib_strcpy(v25, __s);
      }

      else
      {
        v17 = *a3;
        v18 = *(*a3 + v14 - 64);
        if (v18 == 1)
        {
          if (*(a4 + 4))
          {
LABEL_28:
            features = statpos_get_features(a1, a3, a2, v13, *(a4[1] + 1312), (*(a4[1] + 1296) - 1), &v32, a4[1]);
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            features = statpos_get_features_for_igtree(a1, v11, &v32);
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            features = igtree_Process(a4[1], v11, &__s);
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate Word[%d] %s %s -> %s", v13, **(*a3 + v14 - 24), *(*a3 + v14 + 8), __s);
            v26 = checkPOSIsLegal(__s, v13, a3, a2);
            features = statpos_dumpFeatureVectorAndResult(a1, *(a3 + 25), a3 + 10, a3 + 48, "KNOWNWORD", **(*a3 + v14 - 24), a4[1], &v32, __s, v26, *(*(*a3 + v14 - 24) + 24), *(*a3 + v14 + 40));
          }

          else
          {
            features = statpos_get_features(a1, a3, a2, v13, *(*a4 + 1312), (*(*a4 + 1296) - 1), &v32, *a4);
            if ((features & 0x80000000) != 0 || (features = statpos_get_features_for_igtree(a1, v11, &v32), (features & 0x80000000) != 0) || (features = igtree_Process(*a4, v11, &__s), (features & 0x80000000) != 0))
            {
LABEL_45:
              inited = features;
              break;
            }

            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate OOV Word[%d] %s %s -> %s", v13, **(*a3 + v14 - 24), *(*a3 + v14 + 8), __s);
            v29 = checkPOSIsLegal(__s, v13, a3, a2);
            features = statpos_dumpFeatureVectorAndResult(a1, *(a3 + 25), a3 + 10, a3 + 48, "OOVWORD", **(*a3 + v14 - 24), *a4, &v32, __s, v29, *(*(*a3 + v14 - 24) + 24), *(*a3 + v14 + 40));
          }

          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v27 = cstdlib_strlen(__s);
          v28 = heap_Calloc(*(a1 + 8), 1, v27 + 1);
          *(*a3 + v14 + 16) = v28;
          if (!v28)
          {
            goto LABEL_46;
          }

          cstdlib_strcpy(v28, __s);
          inited = statpos_fv_clear(&v32);
          if ((inited & 0x80000000) != 0)
          {
            break;
          }

          clearFeatureVector(v11, v8);
          goto LABEL_36;
        }

        if (v18 || *(v17 + v14) > 1u)
        {
          goto LABEL_28;
        }

        v19 = v17 + v14;
        v20 = *(v19 + 8);
        if (!v20)
        {
          log_OutPublic(*(a1 + 32), "FE_POS", 35008, "%s%s", "word=", **(v19 - 24));
          inited = 2313166848;
          break;
        }

        v21 = cstdlib_strlen(v20);
        v22 = heap_Calloc(*(a1 + 8), 1, v21 + 1);
        v23 = *a3 + v14;
        *(v23 + 16) = v22;
        if (!v22)
        {
          goto LABEL_46;
        }

        cstdlib_strcpy(v22, *(v23 + 8));
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Skip disambiguation on Word[%d] %s %s", v13, **(*a3 + v14 - 24), *(*a3 + v14 + 8));
      }

LABEL_36:
      ++v13;
      v14 += 160;
    }

    while (v13 < *(a3 + 4));
  }

  statpos_fv_dealloc(a1, &v32);
  freeFeatureVector(a1, v11, v8);
  heap_Free(*(a1 + 8), v11);
  return inited;
}

uint64_t checkPOSIsLegal(char *__s1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  if (!*(*a3 + 160 * a2 + 72))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (cstdlib_strcmp(__s1, (*(a4 + 296) + *(*(a4 + 304) + 4 * *(*(v4 + 160 * a2 + 64) + v8)))))
  {
    ++v9;
    v4 = *a3;
    v8 += 24;
    if (v9 >= *(*a3 + 160 * a2 + 72))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t com_useStatHmogrphMosyntOff(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4, const char *a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "stathmogrph_fepos_mosyntoff", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v11 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v11)
      {
        *v11 = 0;
      }

      a5 = **&__c[3];
    }

    if (cstdlib_strcmp(a5, "yes"))
    {
      v12 = cstdlib_strcmp(a5, "YES") == 0;
    }

    else
    {
      v12 = 1;
    }

    *a4 = v12;
    *&__c[1] = -1;
    v13 = (*(a1 + 96))(a2, a3, "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c);
    result = 0;
    if ((v13 & 0x80000000) == 0 && *&__c[1] == 1)
    {
      result = 0;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t checkUsePKUPOS(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "mosynt_usepkupos", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    v6 = *&__c[1];
    if (*&__c[1])
    {
      v7 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v7)
      {
        *v7 = 0;
      }

      v8 = **&__c[3];
      if (cstdlib_strcmp(**&__c[3], "yes"))
      {
        v6 = cstdlib_strcmp(v8, "YES") == 0;
      }

      else
      {
        v6 = 1;
      }
    }

    result = 0;
    *a4 = v6;
  }

  return result;
}

uint64_t checkReplaceAsterisk(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "statpos_replaceasterisk", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    v6 = *&__c[1];
    if (*&__c[1])
    {
      v7 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v7)
      {
        *v7 = 0;
      }

      v6 = cstdlib_strcmp(**&__c[3], "1") == 0;
    }

    result = 0;
    *a4 = v6;
  }

  return result;
}

uint64_t fe_Process_UserCOMPMarkup(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  if (*(a1 + 1764) == 1)
  {
    v10 = *(a1 + 56);

    return statcomp_processUserMarkup(v10, a3, a4, a1 + 1744);
  }

  return result;
}

uint64_t fe_pos_Process_StatCOMP(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v11 = 0;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  SentenceData = statcomp_getSentenceData(*(a1 + 56), a3, a4, (a1 + 1744));
  if ((SentenceData & 0x80000000) == 0)
  {
    if (*(a1 + 2184))
    {
      v11 = 0;
      SentenceData = statcomp_processCompounds((a1 + 1744), &v11);
      if ((SentenceData & 0x80000000) == 0 && v11 == 1)
      {
        SentenceData = statcomp_saveCompoundsToLingdb(*(a1 + 56), a3, a4, a1 + 1744);
      }
    }
  }

  statcomp_freeSentenceData(a1 + 1744);
  return SentenceData;
}

uint64_t fe_pos_Process_Mosynt(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v27 = 0;
  v9 = 2313166858;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  v37 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  memset(v25, 0, sizeof(v25));
  *a5 = 1;
  v10 = heap_Alloc(*(*a1 + 8), 5000);
  if (v10)
  {
    v11 = v10;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v28 = 0;
    v26 = 0;
    v12 = heap_Alloc(*(*a1 + 8), 20000);
    if (v12)
    {
      v9 = (*(a1[7] + 104))(a3, a4, 1, 0, &v36 + 2);
      if ((v9 & 0x80000000) == 0 && ((*(a1[7] + 184))(a3, a4, HIWORD(v36), 0, &v27) & 0x80000000) == 0 && v27 == 1)
      {
        v9 = (*(a1[7] + 176))(a3, a4, HIWORD(v36), 0, &v37, &v35);
        if ((v9 & 0x80000000) == 0 && v35 >= 2u)
        {
          started = mosynt_StartSentenceAnalysis(a1[6], a1[14], a1[15], a1[16], a1[19], a1[20], v25);
          if ((started & 0x80000000) == 0)
          {
            started = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v36), &v36);
            if ((started & 0x80000000) == 0)
            {
              while (v36)
              {
                started = (*(a1[7] + 168))(a3, a4);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_51;
                }

                if (v32 <= 0xA && ((1 << v32) & 0x610) != 0)
                {
                  started = (*(a1[7] + 168))(a3, a4, v36, 1, 1, &v34, &v35);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 168))(a3, a4, v36, 2, 1, &v33, &v35);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v36, 3, &v29, &v35);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v36, 5, &v31, &v35);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v36, 6, &v30, &v35);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 168))(a3, a4, v36, 7, 1, &v28, &v35);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  mosynt_InsertTerminals(a1[6], v25, v34, (v33 + 1), v31, v28, v36, v37, v29);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }
                }

                v9 = (*(a1[7] + 120))(a3, a4, v36, &v36);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_29;
                }
              }

              mosynt_ParseSentence(a1[6], v25);
              if ((started & 0x80000000) == 0)
              {
                started = (*(a1[7] + 104))(a3, a4, 1, 0, &v36 + 2);
                if ((started & 0x80000000) == 0)
                {
                  started = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v36), &v36);
                  if ((started & 0x80000000) == 0)
                  {
                    v16 = v36;
                    if (v36)
                    {
                      while (1)
                      {
                        started = (*(a1[7] + 120))(a3, a4, v16, &v35 + 2);
                        if ((started & 0x80000000) != 0)
                        {
                          break;
                        }

                        started = (*(a1[7] + 168))(a3, a4, v36, 0, 1, &v32, &v35);
                        if ((started & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v32 <= 0xA && ((1 << v32) & 0x610) != 0)
                        {
                          started = mosynt_GetTerminalInfoById(a1[6], v25, v36, &v26, v11, 5000);
                          if ((started & 0x80000000) != 0)
                          {
                            break;
                          }

                          v18 = a1[7];
                          v19 = v36;
                          if (v26)
                          {
                            v20 = *(v18 + 160);
                            v21 = cstdlib_strlen(v11);
                            v20(a3, a4, v19, 5, (v21 + 1), v11, &v34 + 2);
                            started = (*(a1[7] + 176))(a3, a4, v36, 3, &v29, &v35);
                            if ((started & 0x80000000) != 0)
                            {
                              break;
                            }

                            log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "(sgram) keep lingdb record %d : POS=%s PHON=%s", v36, v11, v29);
                          }

                          else
                          {
                            started = (*(v18 + 192))(a3, a4, v36);
                            if ((started & 0x80000000) != 0)
                            {
                              break;
                            }
                          }
                        }

                        v16 = HIWORD(v35);
                        LOWORD(v36) = HIWORD(v35);
                        if (!HIWORD(v35))
                        {
                          goto LABEL_48;
                        }
                      }
                    }

                    else
                    {
LABEL_48:
                      started = mosynt_SyntTreeToString(a1[6], v25, v12, 20000);
                      if ((started & 0x80000000) == 0)
                      {
                        v22 = *(a1[7] + 160);
                        v23 = HIWORD(v36);
                        v24 = cstdlib_strlen(v12);
                        started = v22(a3, a4, v23, 2, (v24 + 1), v12, &v34 + 2);
                        if ((started & 0x80000000) == 0)
                        {
                          started = mosynt_FinishSentenceAnalysis(a1[6], v25);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_51:
          v9 = started;
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0);
    }

LABEL_29:
    heap_Free(*(*a1 + 8), v11);
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0);
  }

  return v9;
}

uint64_t fe_pos_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2313166849;
  }

  result = 0;
  *a2 = &IFePos;
  return result;
}

uint64_t fe_pos_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2313166855;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t fe_pos_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Str = 2313166855;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  __s1 = "";
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v30);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(*(v30 + 8), 1, 2240);
      v13 = v12;
      v14 = v30;
      if (v12)
      {
        *v12 = v30;
        v12[1] = a3;
        v12[4] = a1;
        v12[5] = a2;
        v12[2] = a4;
        v12[3] = a1;
        v15 = heap_Calloc(*(v14 + 8), 1, 1040);
        *(v13 + 48) = v15;
        if (v15)
        {
          *v15 = a3;
          v15[1] = a4;
          Object = objc_GetObject(*(v30 + 48), "LINGDB", &v29);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          *(v13 + 56) = *(v29 + 8);
          Object = objc_GetObject(*(v30 + 48), "FE_DEPES", &v28);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v17 = v28;
          *(v13 + 80) = *(v28 + 8);
          *(v13 + 64) = *(v17 + 16);
          Object = objc_GetObject(*(v30 + 48), "FE_DCTLKP", &v27);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v18 = v27;
          v19 = *(v27 + 8);
          *(v13 + 128) = v19;
          *(v13 + 112) = *(v18 + 16);
          *(v13 + 180) = 0;
          Object = statpos_checkIfActive(*(v13 + 112), *(v13 + 120), v19, a3, a4, v30, (v13 + 200), (v13 + 176), (v13 + 192), (v13 + 2232), (v13 + 2236));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          Object = com_useStatHmogrphMosyntOff(*(v13 + 128), *(v13 + 112), *(v13 + 120), (v13 + 188), "no");
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v20 = *(v13 + 176);
          if (*(v13 + 1616) == 1)
          {
            if (!v20)
            {
              *(v13 + 176) = 0x100000001;
            }
          }

          else if (!v20)
          {
LABEL_19:
            Object = statphr_readIGTree(a3, a4, *(v13 + 32), *(v13 + 40), v30, (v13 + 1728), (v13 + 1720));
            if ((Object & 0x80000000) == 0)
            {
              v22 = (v13 + 1736);
              *(v13 + 1736) = 0;
              Object = statcomp_useStatCOMP(*(v13 + 112), *(v13 + 120), *(v13 + 128), (v13 + 1736));
              if ((Object & 0x80000000) == 0)
              {
                if (*v22 != 1 || (*(v13 + 1744) = v30, *(v13 + 2128) = *(v13 + 112), *(v13 + 2144) = *(v13 + 128), *(v13 + 1952) = 0, *(v13 + 1960) = 0, Object = nuance_pcre_ObjOpen(a3, a4, v13 + 1952), (Object & 0x80000000) == 0) && (Object = nuance_pcre_Init(*(v13 + 1952), *(v13 + 1960), 0x1Eu, 50), (Object & 0x80000000) == 0) && (Object = statcomp_rules_load(a3, a4, v30, (v13 + 1752), *(v13 + 112), *(v13 + 120), *(v13 + 128)), (Object & 0x80000000) == 0))
                {
                  Object = checkUsePKUPOS(*(v13 + 128), *(v13 + 112), *(v13 + 120), (v13 + 184));
                  if ((Object & 0x80000000) == 0)
                  {
                    *(v13 + 136) = 0;
                    v23 = (v13 + 136);
                    *(v13 + 144) = 0;
                    Str = paramc_ParamGetStr(*(v30 + 40), "fecfg", &__s1);
                    if ((Str & 0x80000000) != 0)
                    {
                      goto LABEL_41;
                    }

                    if (!cstdlib_strcmp(__s1, "cfg4"))
                    {
                      *(v13 + 148) = 1;
                    }

                    if (*v22 || *(v13 + 184))
                    {
                      goto LABEL_31;
                    }

                    Object = wgram_CheckIfExists(a3, a4, *(v13 + 32), *(v13 + 40), (v13 + 144));
                    if ((Object & 0x80000000) == 0)
                    {
                      Str = sgram_CheckIfExists(a3, a4, (v13 + 140));
                      if ((Str & 0x80000000) != 0)
                      {
                        goto LABEL_41;
                      }

                      if (!*(v13 + 140))
                      {
                        *v23 = 0;
LABEL_34:
                        *(v13 + 88) = 0;
                        *(v13 + 96) = 0;
                        v24 = 62341;
                        *(v13 + 104) = 0;
LABEL_42:
                        *a5 = v13;
                        *(a5 + 8) = v24;
                        return Str;
                      }

                      Str = com_mosynt_UseMosynt(*(v13 + 112), *(v13 + 120), *(v13 + 128), (v13 + 136));
                      if ((Str & 0x80000000) != 0)
                      {
LABEL_41:
                        *a5 = v13;
                        *(a5 + 8) = 62341;
                        fe_pos_ObjClose(v13, *(a5 + 8));
                        v13 = 0;
                        v24 = 0;
                        goto LABEL_42;
                      }

LABEL_31:
                      if (!*v23)
                      {
                        goto LABEL_34;
                      }

                      if (*(v13 + 188))
                      {
                        goto LABEL_34;
                      }

                      Str = fe_pos_LoadMosyntData(a3, a4, v13);
                      if ((Str & 0x80000000) == 0)
                      {
                        goto LABEL_34;
                      }

                      goto LABEL_41;
                    }
                  }
                }
              }
            }

LABEL_40:
            Str = Object;
            goto LABEL_41;
          }

          v21 = *(v13 + 192);
          *(v13 + 1636) = *(v13 + 188);
          Object = statpos_load_resources(*(v13 + 64), *(v13 + 72), *(v13 + 80), *(v13 + 8), *(v13 + 16), *(v13 + 32), *(v13 + 40), v30, *(v13 + 24), *(v13 + 112), *(v13 + 128), v13 + 200, *(v13 + 180), (v13 + 176), v21);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          Object = checkReplaceAsterisk(*(v13 + 128), *(v13 + 112), *(v13 + 120), (v13 + 1640));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          goto LABEL_19;
        }

        v14 = v30;
      }

      log_OutPublic(*(v14 + 32), "FE_POS", 35000, 0);
      Str = 2313166858;
      goto LABEL_41;
    }

    return inited;
  }

  return Str;
}

uint64_t fe_pos_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (a1)
  {
    if (*(a1 + 176))
    {
      statpos_unload_resources(*(a1 + 32), *(a1 + 40), *a1, a1 + 200, *(a1 + 180), *(a1 + 192));
    }

    if (*(a1 + 1736))
    {
      statcomp_rules_unload((a1 + 1752));
      NullHandle = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(a1 + 1952), *(a1 + 1960), NullHandle, v5))
      {
        nuance_pcre_DeInit(*(a1 + 1952), *(a1 + 1960));
        nuance_pcre_ObjClose(*(a1 + 1952), *(a1 + 1960));
      }
    }

    if (*(a1 + 1720))
    {
      statphr_freeIGTree(*a1);
    }

    fe_pos_UnloadMosyntData(a1);
    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (*(a1 + 80))
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (*(a1 + 128))
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_pos_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2313166854;
  v14 = "";
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (a1)
  {
    if (*(a1 + 176) == 1)
    {
      IGTree = statpos_unload_resources(*(a1 + 32), *(a1 + 40), *a1, a1 + 200, *(a1 + 180), *(a1 + 192));
      if ((IGTree & 0x80000000) != 0)
      {
        return IGTree;
      }
    }

    *(a1 + 180) = 0;
    IGTree = statpos_checkIfActive(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 8), *(a1 + 16), *a1, (a1 + 200), (a1 + 176), (a1 + 192), (a1 + 2232), (a1 + 2236));
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    IGTree = com_useStatHmogrphMosyntOff(*(a1 + 128), *(a1 + 112), *(a1 + 120), (a1 + 188), "no");
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    v5 = *(a1 + 176);
    if (*(a1 + 1616) != 1 || v5)
    {
      if (v5 != 1)
      {
LABEL_15:
        if (*(a1 + 1736) == 1)
        {
          IGTree = statcomp_rules_unload((a1 + 1752));
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          NullHandle = safeh_GetNullHandle();
          if (!safeh_HandlesEqual(*(a1 + 1952), *(a1 + 1960), NullHandle, v9))
          {
            nuance_pcre_DeInit(*(a1 + 1952), *(a1 + 1960));
            nuance_pcre_ObjClose(*(a1 + 1952), *(a1 + 1960));
          }
        }

        v10 = (a1 + 1736);
        *(a1 + 1736) = 0;
        IGTree = statcomp_useStatCOMP(*(a1 + 112), *(a1 + 120), *(a1 + 128), (a1 + 1736));
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (*v10 == 1)
        {
          v11 = *(a1 + 8);
          *(a1 + 1744) = *a1;
          *(a1 + 2128) = *(a1 + 112);
          *(a1 + 2144) = *(a1 + 128);
          *(a1 + 1952) = 0;
          *(a1 + 1960) = 0;
          IGTree = nuance_pcre_ObjOpen(v11, *(a1 + 16), a1 + 1952);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          IGTree = nuance_pcre_Init(*(a1 + 1952), *(a1 + 1960), 0x1Eu, 50);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          IGTree = statcomp_rules_load(*(a1 + 8), *(a1 + 16), *a1, (a1 + 1752), *(a1 + 112), *(a1 + 120), *(a1 + 128));
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }
        }

        if (*(a1 + 1720) == 1)
        {
          statphr_freeIGTree(*a1);
        }

        *(a1 + 1720) = 0;
        IGTree = statphr_readIGTree(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), *a1, (a1 + 1728), (a1 + 1720));
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        IGTree = fe_pos_UnloadMosyntData(a1);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        *(a1 + 136) = 0;
        v12 = (a1 + 136);
        *(a1 + 144) = 0;
        IGTree = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v14);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (!cstdlib_strcmp(v14, "cfg4"))
        {
          *(a1 + 148) = 1;
        }

        IGTree = checkUsePKUPOS(*(a1 + 128), *(a1 + 112), *(a1 + 120), (a1 + 184));
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (*v10 || *(a1 + 184))
        {
          v3 = 0;
        }

        else
        {
          IGTree = wgram_CheckIfExists(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (a1 + 144));
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          v3 = sgram_CheckIfExists(*(a1 + 8), *(a1 + 16), (a1 + 140));
          if ((v3 & 0x80000000) != 0)
          {
            return v3;
          }

          if (!*(a1 + 140))
          {
            *v12 = 0;
            return v3;
          }

          v3 = com_mosynt_UseMosynt(*(a1 + 112), *(a1 + 120), *(a1 + 128), (a1 + 136));
          if ((v3 & 0x80000000) != 0)
          {
            return v3;
          }
        }

        if (*v12)
        {
          return fe_pos_LoadMosyntData(*(a1 + 8), *(a1 + 16), a1);
        }

        return v3;
      }

      v6 = *(a1 + 180);
    }

    else
    {
      *(a1 + 176) = 0x100000001;
      v6 = 1;
    }

    v7 = *(a1 + 192);
    *(a1 + 1636) = *(a1 + 188);
    IGTree = statpos_load_resources(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), *a1, *(a1 + 24), *(a1 + 112), *(a1 + 128), a1 + 200, v6, (a1 + 176), v7);
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    IGTree = checkReplaceAsterisk(*(a1 + 128), *(a1 + 112), *(a1 + 120), (a1 + 1640));
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    goto LABEL_15;
  }

  return v3;
}

uint64_t fe_pos_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (*(a1 + 176))
  {
    result = statpos_setParams(*a1, a1 + 208);
  }

  if (*(a1 + 1736))
  {
    v4 = *a1;

    return statcomp_setParams(v4, a1 + 1752);
  }

  return result;
}

uint64_t fe_pos_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v155 = *MEMORY[0x277D85DE8];
  v140 = 0;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  if (*(a1 + 176))
  {
    v10 = statpos_process(*(a1 + 64), *(a1 + 72), *(a1 + 80), a3, a4, *(a1 + 56), *(a1 + 112), *(a1 + 120), *(a1 + 128), a1 + 200, *(a1 + 180), *(a1 + 144), *(a1 + 140), *(a1 + 148), *(a1 + 192));
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }
  }

  if (*(a1 + 136) && !*(a1 + 188))
  {
    fe_pos_Process_Mosynt(a1, a2, a3, a4, a5);
  }

  v11 = fe_Process_UserCOMPMarkup(a1, a2, a3, a4, a5);
  if ((v11 & 0x80000000) == 0)
  {
    if (!*(a1 + 1736) || *(a1 + 1616) || (v11 = fe_pos_Process_StatCOMP(a1, a2, a3, a4, a5), (v11 & 0x80000000) == 0))
    {
      __s = 0;
      __src = 0;
      __s1 = 0;
      v142 = 0;
      v143 = 0;
      if (!*(a1 + 176) || *(a1 + 1720) && !*(a1 + 1616) && (*(a1 + 192) && !*(a1 + 2232) ? (v12 = statphr_MorphemeProcess(*a1, *(a1 + 56), a3, a4)) : (v12 = statphr_Process(*a1, *(a1 + 56), a3, a4, *(a1 + 1728), *(a1 + 1736), *(a1 + 2236))), (v11 = v12, (v12 & 0x80000000) == 0) && !*(a1 + 176)))
      {
        if (!*(a1 + 136))
        {
          v149 = 0;
          v150 = 0;
          v147 = 0;
          v148 = 0;
          v144 = 0;
          v141 = 0;
          cstdlib_strcpy(__dst, "partofspeech");
          *a5 = 1;
          v11 = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v150 + 2);
          if ((v11 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a3, a4, HIWORD(v150), 0, &v140) & 0x80000000) == 0 && v140 == 1)
          {
            v11 = (*(*(a1 + 56) + 176))(a3, a4, HIWORD(v150), 0, &__s, &v149 + 2);
            if ((v11 & 0x80000000) == 0 && HIWORD(v149) >= 2u)
            {
              memset(v152, 0, sizeof(v152));
              v14 = *(*a1 + 8);
              v15 = cstdlib_strlen(__s);
              v16 = heap_Alloc(v14, (v15 + 257));
              *(a1 + 88) = v16;
              if (!v16 || (cstdlib_strcpy(v16, ""), v17 = *(*a1 + 8), v18 = cstdlib_strlen(__s), v19 = heap_Alloc(v17, (v18 + 257)), *(a1 + 96) = v19, v20 = (a1 + 96), !v19) || (cstdlib_strcpy(v19, ""), v21 = *(*a1 + 8), v22 = cstdlib_strlen(__s), v23 = heap_Alloc(v21, (v22 + 257)), (*(a1 + 104) = v23) == 0))
              {
LABEL_154:
                log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0);
                v79 = 8202;
                goto LABEL_155;
              }

              v138 = (a1 + 104);
              cstdlib_strcpy(v23, "");
              v24 = cstdlib_strlen(__s);
              v25 = (*(*(a1 + 56) + 104))(a3, a4, 2, HIWORD(v150), &v150);
              if ((v25 & 0x80000000) == 0)
              {
                v26 = 0;
                v135 = 0;
                v136 = 0;
                v137 = (a1 + 96);
                v27 = 0;
                v133 = 0;
                v134 = (v24 + 1);
                v28 = 1;
                v29 = 1;
                while (v150)
                {
                  v25 = (*(*(a1 + 56) + 168))(a3, a4);
                  if ((v25 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  if (v147 > 0xA || ((1 << v147) & 0x610) == 0)
                  {
                    goto LABEL_122;
                  }

                  v25 = (*(*(a1 + 56) + 168))(a3, a4, v150, 1, 1, &v148 + 2, &v149 + 2);
                  if ((v25 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  v25 = (*(*(a1 + 56) + 168))(a3, a4, v150, 2, 1, &v148, &v149 + 2);
                  if ((v25 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  v25 = (*(*(a1 + 56) + 176))(a3, a4, v150, 5, &__s1, &v149 + 2);
                  if ((v25 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  v25 = (*(*(a1 + 56) + 176))(a3, a4, v150, 6, &__src, &v149 + 2);
                  if ((v25 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  v25 = (*(*(a1 + 56) + 168))(a3, a4, v150, 7, 1, &v144, &v149 + 2);
                  if ((v25 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  if (v28 == 1 || HIWORD(v148) != v26)
                  {
                    v131 = v28;
                    if (!v28)
                    {
                      ssft_qsort(__s2, v136, 82, compare_1);
                      if (v136)
                      {
                        v31 = 0;
                        v32 = (a1 + 104);
                        do
                        {
                          if (v31)
                          {
                            if (cstdlib_strcmp(&__s2[v31], ""))
                            {
                              if (cstdlib_strcmp(*v20, ""))
                              {
                                v33 = *v137;
                                v34 = &v33[cstdlib_strlen(*v137)];
                                v20 = (a1 + 96);
                                if (*(v34 - 1) != 32)
                                {
                                  cstdlib_strcat(*v137, "\"");
                                }
                              }
                            }

                            cstdlib_strcat(*v20, &__s2[v31]);
                            v32 = (a1 + 104);
                            if (!cstdlib_strcmp(&__s2[v31 + 40], ""))
                            {
                              goto LABEL_61;
                            }

                            if (!cstdlib_strcmp(*v138, ""))
                            {
                              goto LABEL_61;
                            }

                            v35 = *v138;
                            v36 = cstdlib_strlen(*v138);
                            v32 = (a1 + 104);
                            v37 = (a1 + 104);
                            v38 = "\"";
                            if (v35[v36 - 1] == 32)
                            {
                              goto LABEL_61;
                            }
                          }

                          else
                          {
                            v38 = __s2;
                            v37 = v20;
                          }

                          cstdlib_strcat(*v37, v38);
LABEL_61:
                          cstdlib_strcat(*v32, &__s2[v31 + 40]);
                          v31 += 82;
                        }

                        while (82 * v136 != v31);
                      }

                      v136 = 0;
                    }

                    if (v135 <= v133 && WORD2(v133) <= v133)
                    {
                      if (v133 - v135 >= 1)
                      {
                        v48 = 0;
                        do
                        {
                          cstdlib_strcat(*v20, "~");
                          ++v48;
                        }

                        while (v133 - v135 > v48);
                      }

                      if (v133 - WORD2(v133) >= 1)
                      {
                        v49 = 0;
                        do
                        {
                          cstdlib_strcat(*v138, "~");
                          ++v49;
                        }

                        while (v133 - WORD2(v133) > v49);
                      }
                    }

                    else
                    {
                      if (v135 <= WORD2(v133))
                      {
                        v39 = WORD2(v133);
                      }

                      else
                      {
                        v39 = v135;
                      }

                      v40 = v39 - v133;
                      if (v40 >= 1)
                      {
                        for (i = 0; v40 > i; ++i)
                        {
                          if (v29 << 8 == v27)
                          {
                            v29 = (v29 + 1);
                            v42 = v134 + (v29 << 8);
                            v43 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v42);
                            if (!v43)
                            {
                              goto LABEL_154;
                            }

                            *(a1 + 88) = v43;
                            v44 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v42);
                            if (!v44)
                            {
                              goto LABEL_154;
                            }

                            *(a1 + 96) = v44;
                            v45 = heap_Realloc(*(*a1 + 8), *(a1 + 104), v42);
                            if (!v45)
                            {
                              goto LABEL_154;
                            }

                            *v138 = v45;
                          }

                          cstdlib_strcat(*(a1 + 88), "~");
                          ++v27;
                        }
                      }

                      if (WORD2(v133) <= v135)
                      {
                        v50 = v135 - WORD2(v133);
                        v20 = (a1 + 96);
                        if (v50 >= 1)
                        {
                          v51 = 0;
                          do
                          {
                            cstdlib_strcat(*v138, "~");
                            ++v51;
                          }

                          while (v50 > v51);
                        }
                      }

                      else
                      {
                        v46 = WORD2(v133) - v135;
                        v20 = (a1 + 96);
                        if (v46 >= 1)
                        {
                          v47 = 0;
                          do
                          {
                            cstdlib_strcat(*v137, "~");
                            ++v47;
                          }

                          while (v46 > v47);
                        }
                      }
                    }

                    if (HIWORD(v148) > v148)
                    {
                      v79 = 16049;
LABEL_155:
                      v11 = v79 | 0x89E00000;
LABEL_156:
                      v80 = *(a1 + 88);
                      if (v80)
                      {
                        heap_Free(*(*a1 + 8), v80);
                      }

                      *(a1 + 88) = 0;
                      v81 = *(a1 + 96);
                      if (v81)
                      {
                        heap_Free(*(*a1 + 8), v81);
                      }

                      *(a1 + 96) = 0;
                      v82 = *(a1 + 104);
                      if (v82)
                      {
                        heap_Free(*(*a1 + 8), v82);
                      }

                      *(a1 + 104) = 0;
                      return v11;
                    }

                    LOWORD(v133) = Utf8_LengthInUtf8chars(&__s[HIWORD(v148)], v148 - HIWORD(v148));
                    if (!v131)
                    {
                      v52 = HIWORD(v148);
                      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, HIWORD(v148));
                      cstdlib_strncat(*(a1 + 88), &__s[HIWORD(v148) - (v52 - PreviousUtf8Offset)], (v52 - PreviousUtf8Offset));
                      cstdlib_strcat(*(a1 + 96), " ");
                      cstdlib_strcat(*(a1 + 104), " ");
                      cstdlib_strlen(*(a1 + 96));
                    }

                    cstdlib_strncat(*(a1 + 88), &__s[HIWORD(v148)], v148 - HIWORD(v148));
                    v135 = 0;
                    HIDWORD(v133) = 0;
                  }

                  v54 = v136;
                  if (!v136)
                  {
                    v132 = v29;
                    v59 = 1;
                    goto LABEL_112;
                  }

                  v55 = 0;
                  v56 = 0;
                  v57 = __s2;
                  v58 = v136;
                  do
                  {
                    if (!cstdlib_strcmp(__s1, v57))
                    {
                      v56 = 1;
                    }

                    if (!cstdlib_strcmp(__src, v57 + 40))
                    {
                      v55 = 1;
                    }

                    v57 += 82;
                    --v58;
                  }

                  while (v58);
                  v59 = v55 == 0;
                  if (v56)
                  {
                    v60 = v55 == 0;
                  }

                  else
                  {
                    v60 = 1;
                  }

                  if (v60)
                  {
                    v20 = (a1 + 96);
                    v132 = v29;
                    if (v56)
                    {
                      cstdlib_strcpy(&__s2[82 * v136], "");
                      v61 = v136;
                      if (v55)
                      {
                        goto LABEL_109;
                      }

LABEL_116:
                      v62 = v61;
                      cstdlib_strcpy(&__s2[82 * v61 + 40], __src);
                      if (WORD2(v133))
                      {
                        v64 = HIDWORD(v133) + 1;
                      }

                      else
                      {
                        v64 = 0;
                      }

                      HIDWORD(v133) = v64 + cstdlib_strlen(__src);
                    }

                    else
                    {
                      v54 = v136;
LABEL_112:
                      v61 = v54;
                      cstdlib_strcpy(&__s2[82 * v54], __s1);
                      if (v135)
                      {
                        v63 = v135 + 1;
                      }

                      else
                      {
                        v63 = 0;
                      }

                      v135 = v63 + cstdlib_strlen(__s1);
                      if (v59)
                      {
                        goto LABEL_116;
                      }

LABEL_109:
                      v62 = v61;
                      cstdlib_strcpy(&__s2[82 * v61 + 40], "");
                    }

                    v136 = v61 + 1;
                    *&__s2[82 * v62 + 80] = v144;
                    v29 = v132;
                    goto LABEL_121;
                  }

                  v20 = (a1 + 96);
LABEL_121:
                  v28 = 0;
                  v26 = HIWORD(v148);
LABEL_122:
                  v11 = (*(*(a1 + 56) + 120))(a3, a4, v150, &v150);
                  if ((v11 & 0x80000000) != 0)
                  {
                    goto LABEL_156;
                  }
                }

                if (!v28)
                {
                  ssft_qsort(__s2, v136, 82, compare_1);
                  if (v136)
                  {
                    for (j = 0; 82 * v136 != j; j += 82)
                    {
                      if (j)
                      {
                        v66 = &__s2[j];
                        if (cstdlib_strcmp(&__s2[j], ""))
                        {
                          cstdlib_strcat(*v137, "\"");
                        }

                        cstdlib_strcat(*v137, v66);
                        if (!cstdlib_strcmp(v66 + 40, ""))
                        {
                          goto LABEL_135;
                        }

                        v67 = cstdlib_strcmp(*v138, "");
                        v68 = (a1 + 104);
                        v69 = "\"";
                        if (!v67)
                        {
                          goto LABEL_135;
                        }
                      }

                      else
                      {
                        v69 = __s2;
                        v68 = (a1 + 96);
                      }

                      cstdlib_strcat(*v68, v69);
LABEL_135:
                      cstdlib_strcat(*v138, &__s2[j + 40]);
                    }
                  }
                }

                if (v135 <= v133 && WORD2(v133) <= v133)
                {
                  if (v133 - v135 >= 1)
                  {
                    v83 = 0;
                    do
                    {
                      cstdlib_strcat(*v137, "~");
                      ++v83;
                    }

                    while (v133 - v135 > v83);
                  }

                  if (v133 - WORD2(v133) >= 1)
                  {
                    v84 = 0;
                    do
                    {
                      cstdlib_strcat(*v138, "~");
                      ++v84;
                    }

                    while (v133 - WORD2(v133) > v84);
                  }
                }

                else
                {
                  if (v135 <= WORD2(v133))
                  {
                    v70 = WORD2(v133);
                  }

                  else
                  {
                    v70 = v135;
                  }

                  v71 = v70 - v133;
                  if (v71 >= 1)
                  {
                    v72 = 0;
                    v73 = v29;
                    do
                    {
                      if (v73 << 8 == v27)
                      {
                        v74 = v134 + (++v73 << 8);
                        v75 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v74);
                        if (!v75)
                        {
                          goto LABEL_154;
                        }

                        *(a1 + 88) = v75;
                        v76 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v74);
                        if (!v76)
                        {
                          goto LABEL_154;
                        }

                        *(a1 + 96) = v76;
                        v77 = heap_Realloc(*(*a1 + 8), *(a1 + 104), v74);
                        if (!v77)
                        {
                          goto LABEL_154;
                        }

                        *v138 = v77;
                      }

                      cstdlib_strcat(*(a1 + 88), "~");
                      ++v72;
                      ++v27;
                    }

                    while (v71 > v72);
                  }

                  if (WORD2(v133) <= v135)
                  {
                    if (v135 - WORD2(v133) >= 1)
                    {
                      v85 = 0;
                      do
                      {
                        cstdlib_strcat(*v138, "~");
                        ++v85;
                      }

                      while (v135 - WORD2(v133) > v85);
                    }
                  }

                  else if (WORD2(v133) - v135 >= 1)
                  {
                    v78 = 0;
                    do
                    {
                      cstdlib_strcat(*v137, "~");
                      ++v78;
                    }

                    while (WORD2(v133) - v135 > v78);
                  }
                }

                log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L1: %s", __dst, *(a1 + 88));
                v86 = *(a1 + 88);
                v87 = *(*(a1 + 80) + 120);
                v88 = cstdlib_strlen(v86);
                v25 = v87(*(a1 + 64), *(a1 + 72), 0, v86, v88);
                if ((v25 & 0x80000000) == 0)
                {
                  log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L2: %s", __dst, *(a1 + 96));
                  v89 = *(*(a1 + 80) + 120);
                  v90 = *(a1 + 96);
                  v91 = cstdlib_strlen(v90);
                  v25 = v89(*(a1 + 64), *(a1 + 72), 1, v90, v91);
                  if ((v25 & 0x80000000) == 0)
                  {
                    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L3: %s", __dst, *(a1 + 104));
                    v92 = *(*(a1 + 80) + 120);
                    v93 = *(a1 + 104);
                    v94 = cstdlib_strlen(v93);
                    v25 = v92(*(a1 + 64), *(a1 + 72), 2, v93, v94);
                    if ((v25 & 0x80000000) == 0)
                    {
                      v25 = (*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), __dst);
                      if ((v25 & 0x80000000) == 0)
                      {
                        v25 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 1, &v143, &v141);
                        if ((v25 & 0x80000000) == 0)
                        {
                          v143[v141] = 0;
                          log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s O2: %s", __dst, v143);
                          v25 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 2, &v142, &v141);
                          if ((v25 & 0x80000000) == 0)
                          {
                            v142[v141] = 0;
                            log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s O3: %s", __dst, v142);
                            v11 = (*(*(a1 + 56) + 104))(a3, a4, 2, HIWORD(v150), &v150);
                            if ((v11 & 0x80000000) != 0)
                            {
                              goto LABEL_156;
                            }

                            v95 = v150;
                            if (!v150)
                            {
                              goto LABEL_156;
                            }

                            LOBYTE(v96) = 0;
                            v97 = 0;
                            v98 = 0;
                            v99 = 0;
                            v100 = 0;
                            v101 = 1;
                            while (1)
                            {
                              v25 = (*(*(a1 + 56) + 168))(a3, a4, v95, 0, 1, &v147, &v149 + 2);
                              if ((v25 & 0x80000000) != 0)
                              {
                                break;
                              }

                              if (v147 <= 0xA && ((1 << v147) & 0x610) != 0)
                              {
                                v25 = (*(*(a1 + 56) + 168))(a3, a4, v150, 1, 1, &v148 + 2, &v149 + 2);
                                if ((v25 & 0x80000000) != 0)
                                {
                                  break;
                                }

                                v25 = (*(*(a1 + 56) + 176))(a3, a4, v150, 5, &__s1, &v149 + 2);
                                if ((v25 & 0x80000000) != 0)
                                {
                                  break;
                                }

                                if (v101 == 1 || v100 != HIWORD(v148))
                                {
                                  v99 = v143;
                                  for (k = v143 + 1; ; ++k)
                                  {
                                    v104 = *v99;
                                    if (v104 != 32 && v104 != 126)
                                    {
                                      break;
                                    }

                                    v143 = ++v99;
                                  }

                                  while (v104)
                                  {
                                    if (v104 == 32 || v104 == 126)
                                    {
                                      v143 = k;
                                      *(k - 1) = 0;
                                      break;
                                    }

                                    v143 = k;
                                    v105 = *k++;
                                    LOBYTE(v104) = v105;
                                  }

                                  v98 = v142;
                                  for (m = v142 + 1; ; ++m)
                                  {
                                    v107 = *v98;
                                    if (v107 != 32 && v107 != 126)
                                    {
                                      break;
                                    }

                                    v142 = ++v98;
                                  }

                                  while (v107)
                                  {
                                    if (v107 == 32 || v107 == 126)
                                    {
                                      v142 = m;
                                      *(m - 1) = 0;
                                      break;
                                    }

                                    v142 = m;
                                    v108 = *m++;
                                    LOBYTE(v107) = v108;
                                  }
                                }

                                if (v100 != HIWORD(v148))
                                {
                                  if (v97 == 1)
                                  {
                                    if (v96)
                                    {
                                      v96 = v96;
                                      v114 = v152;
                                      while (1)
                                      {
                                        v115 = *v114++;
                                        v25 = (*(*(a1 + 56) + 192))(a3, a4, v115);
                                        if ((v25 & 0x80000000) != 0)
                                        {
                                          goto LABEL_256;
                                        }

                                        if (!--v96)
                                        {
LABEL_225:
                                          v97 = 0;
                                          goto LABEL_227;
                                        }
                                      }
                                    }
                                  }

                                  else if (v96)
                                  {
                                    v96 = v96;
                                    v109 = v152;
                                    while (1)
                                    {
                                      v139 = 0;
                                      v111 = *v109++;
                                      v110 = v111;
                                      v25 = (*(*(a1 + 56) + 176))(a3, a4, v111, 5, &v139, &v149 + 2);
                                      if ((v25 & 0x80000000) != 0)
                                      {
                                        goto LABEL_256;
                                      }

                                      v112 = cstdlib_strchr(v139, 92);
                                      if (v112)
                                      {
                                        *v112 = 0;
                                      }

                                      v25 = (*(*(a1 + 56) + 176))(a3, a4, v110, 6, &__src, &v149 + 2);
                                      if ((v25 & 0x80000000) != 0)
                                      {
                                        goto LABEL_256;
                                      }

                                      v113 = cstdlib_strchr(__src, 92);
                                      if (v113)
                                      {
                                        *v113 = 0;
                                      }

                                      if (!--v96)
                                      {
                                        goto LABEL_225;
                                      }
                                    }
                                  }

                                  v97 = 0;
                                  LOBYTE(v96) = 0;
                                }

LABEL_227:
                                if (v99 && v98 && (cstdlib_strstr(__s1, v99) || !cstdlib_strcmp(v99, "*") || !cstdlib_strcmp(__s1, "*")))
                                {
                                  v116 = *(*(a1 + 56) + 160);
                                  v117 = v150;
                                  v118 = cstdlib_strlen(v99);
                                  v25 = v116(a3, a4, v117, 5, (v118 + 1), v99, &v149);
                                  if ((v25 & 0x80000000) != 0)
                                  {
                                    break;
                                  }

                                  v119 = *(*(a1 + 56) + 160);
                                  v120 = v150;
                                  v121 = cstdlib_strlen(v98);
                                  v25 = v119(a3, a4, v120, 6, (v121 + 1), v98, &v149);
                                  if ((v25 & 0x80000000) != 0)
                                  {
                                    break;
                                  }

                                  v97 = 1;
                                }

                                else
                                {
                                  *(v152 + v96) = v150;
                                  LOBYTE(v96) = v96 + 1;
                                }

                                v101 = 0;
                                v100 = HIWORD(v148);
                              }

                              v11 = (*(*(a1 + 56) + 120))(a3, a4, v150, &v150);
                              if ((v11 & 0x80000000) != 0)
                              {
                                goto LABEL_156;
                              }

                              v95 = v150;
                              if (!v150)
                              {
                                if (v97 == 1)
                                {
                                  if (v96)
                                  {
                                    v122 = v96 - 1;
                                    v123 = v152;
                                    do
                                    {
                                      v124 = v122;
                                      v125 = *v123++;
                                      v11 = (*(*(a1 + 56) + 192))(a3, a4, v125);
                                      if ((v11 & 0x80000000) != 0)
                                      {
                                        break;
                                      }

                                      v122 = v124 - 1;
                                    }

                                    while (v124);
                                  }

                                  goto LABEL_156;
                                }

                                if (!v96)
                                {
                                  goto LABEL_156;
                                }

                                v96 = v96;
                                v126 = v152;
                                while (1)
                                {
                                  v128 = *v126++;
                                  v127 = v128;
                                  v25 = (*(*(a1 + 56) + 176))(a3, a4, v128, 5, &__s1, &v149 + 2);
                                  if ((v25 & 0x80000000) != 0)
                                  {
                                    goto LABEL_256;
                                  }

                                  v129 = cstdlib_strchr(__s1, 92);
                                  if (v129)
                                  {
                                    *v129 = 0;
                                  }

                                  v11 = (*(*(a1 + 56) + 176))(a3, a4, v127, 6, &__src, &v149 + 2);
                                  if ((v11 & 0x80000000) == 0)
                                  {
                                    v130 = cstdlib_strchr(__src, 92);
                                    if (v130)
                                    {
                                      *v130 = 0;
                                    }

                                    if (--v96)
                                    {
                                      continue;
                                    }
                                  }

                                  goto LABEL_156;
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

LABEL_256:
              v11 = v25;
              goto LABEL_156;
            }
          }
        }
      }
    }
  }

  return v11;
}