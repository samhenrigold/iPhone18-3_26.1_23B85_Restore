uint64_t fe_pos_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62341, 2240);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2313166856;
  }
}

uint64_t fe_pos_LoadMosyntData(_WORD *a1, uint64_t a2, uint64_t a3)
{
  __s1 = 0;
  result = com_mosynt_GetCfgParamVal(*(a3 + 112), *(a3 + 120), *(a3 + 128), "mosynt_enablegraphsymcache", "yes", &__s1);
  if ((result & 0x80000000) == 0)
  {
    v7 = cstdlib_strcmp(__s1, "yes") == 0;
    result = kbsymtab_LoadData(a1, a2, *(a3 + 32), *(a3 + 40), (a3 + 152), v7);
    if ((result & 0x80000000) == 0)
    {
      result = fst_LoadData(a1, a2, (a3 + 168));
      if ((result & 0x80000000) == 0)
      {
        return sgram_LoadData(a1, a2, (a3 + 160));
      }
    }
  }

  return result;
}

uint64_t fe_pos_UnloadMosyntData(uint64_t a1)
{
  if (*(a1 + 152))
  {
    v2 = kbsymtab_UnloadData(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (a1 + 152));
    *(a1 + 152) = 0;
    v3 = v2 & (v2 >> 31);
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 160))
  {
    v4 = sgram_UnloadData(*(a1 + 8), *(a1 + 16), (a1 + 160));
    *(a1 + 160) = 0;
    if (v4 >= 0 || v3 <= -1)
    {
      v3 = v3;
    }

    else
    {
      v3 = v4;
    }
  }

  if (*(a1 + 168))
  {
    v6 = fst_UnloadData(*(a1 + 8), *(a1 + 16), (a1 + 168));
    *(a1 + 168) = 0;
    if (v6 >= 0 || v3 <= -1)
    {
      return v3;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

uint64_t statcomp_getDctInfo(void *a1, const char *a2, uint64_t a3, void *a4, unsigned __int8 *a5, _DWORD *a6)
{
  v16 = 0;
  v15 = 0;
  *a6 = 0;
  v10 = (*(a1[50] + 96))(a1[48], a1[49], "compounds_feature_info", a3, &v16, &v15, a5);
  if ((v10 & 0x80000000) == 0 && v15)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(v16 + 8 * v11);
      v13 = cstdlib_strchr(v12, *a5);
      if (v13)
      {
        if (!cstdlib_strncmp(v12, a2, (v13 - v12)))
        {
          break;
        }
      }

      if (++v11 >= v15)
      {
        return v10;
      }
    }

    *a4 = *(v16 + 8 * v11);
    *a6 = 1;
  }

  return v10;
}

uint64_t statcomp_getSyllCount(const char *a1)
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

uint64_t setStatCOMPFeatureVector(unsigned int a1, uint64_t *a2, unsigned int a3, __int16 a4, uint64_t a5)
{
  v9 = a2[22];
  v10 = a2[23];
  v52 = *(a2[24] + 8 * a1);
  v53 = *(a2[21] + 8 * a1);
  v11 = a2[19];
  v12 = a2[20];
  v56 = 0;
  v51 = *(v10 + 8 * a1);
  __s = 0;
  v54 = 0;
  v13 = (a4 - a3 + 1);
  v14 = heap_Calloc(*(*a2 + 8), 1, 8 * v13 + 8);
  v15 = *a2;
  if (!v14)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v49 = v11;
  v16 = heap_Calloc(*(v15 + 8), 1, 8 * v13 + 8);
  if (!v16)
  {
LABEL_11:
    v15 = *a2;
LABEL_13:
    log_OutPublic(*(v15 + 32), "FE_POS", 35000, 0);
    DctInfo = 2313166858;
    goto LABEL_14;
  }

  if (v13)
  {
    v46 = v9;
    v47 = v12;
    v17 = 0;
    v48 = a1;
    v18 = 96 * a3;
    v19 = v13 - 1;
    while (1)
    {
      v20 = heap_Calloc(*(*a2 + 8), 1, (*(a2[54] + v18 + 2) - *(a2[54] + v18)) + 1);
      v14[v17] = v20;
      if (!v20)
      {
        goto LABEL_11;
      }

      cstdlib_strncpy(v20, (a2[60] + *(a2[54] + v18)), *(a2[54] + v18 + 2) - *(a2[54] + v18));
      v14[v17][*(a2[54] + v18 + 2) - *(a2[54] + v18)] = 0;
      v21 = cstdlib_strlen(*(a2[54] + v18 + 56));
      v22 = heap_Calloc(*(*a2 + 8), 1, v21 + 1);
      v16[v17] = v22;
      if (!v22)
      {
        goto LABEL_11;
      }

      cstdlib_strcpy(v22, *(a2[54] + v18 + 56));
      if (v19 == v17)
      {
        v23 = (*(a2[50] + 144))(a2[48], a2[49], "normal", v14[v17], 128);
        if ((v23 & 0x80000000) != 0)
        {
          DctInfo = v23;
          goto LABEL_14;
        }

        if (v19 == v17)
        {
          v26 = 0;
          v44 = v13;
          v45 = v49 + 20 * a1;
          v43 = a5;
          while (1)
          {
            v27 = *(v45 + 2 * v26);
            DctInfo = statcomp_getDctInfo(a2, *(v47 + 8 * v48), v14[v26], &__s, &v56, &v54);
            if ((DctInfo & 0x80000000) != 0)
            {
              goto LABEL_14;
            }

            v50 = v26;
            if (v54 == 1)
            {
              v28 = __s;
              v29 = v56;
              v30 = *(*(v46 + 8 * v48) + 8);
              v31 = cstdlib_strchr(__s, v56);
              v32 = v28;
              if (v31)
              {
                *v31 = 0;
                v32 = v31 + 1;
              }

              if (v30)
              {
                v33 = v51;
                do
                {
                  v34 = cstdlib_strchr(v32, v29);
                  if (v34)
                  {
                    *v34++ = 0;
                  }

                  *v33++ = v32 - v28;
                  v32 = v34;
                  --v30;
                }

                while (v30);
              }
            }

            if (*(v53 + 1296) >= 2u)
            {
              break;
            }

            v13 = v44;
LABEL_42:
            v26 = v50 + 1;
            if (v50 + 1 == v13)
            {
              goto LABEL_14;
            }
          }

          v35 = 0;
          v36 = v54;
          v37 = __s;
          v13 = v44;
          while (2)
          {
            v38 = v35;
            if (cstdlib_strcmp(*(v43 + 8 * v35), "=") || (v39 = (*v52 + 12 * v38), *v39 != v27) || *(v39 + 1))
            {
              if (v36 == 1)
              {
                v40 = (*v52 + 12 * v38);
                if (*v40 == v27)
                {
                  v41 = *(v40 + 1);
                  if (v41 == 2 || v41 == 1)
                  {
                    v42 = statcomp_setFeature(v53, *a2, v38, v43, &v37[v51[v40[4]]]);
LABEL_38:
                    DctInfo = v42;
                    if ((v42 & 0x80000000) != 0)
                    {
                      goto LABEL_14;
                    }
                  }
                }
              }

              v35 = v38 + 1;
              if (*(v53 + 1296) - 1 <= (v38 + 1))
              {
                goto LABEL_42;
              }

              continue;
            }

            break;
          }

          v42 = statcomp_setDynamicFeature(*a2, v53, v39[4], v38, v43, v14, v16, v44, v50);
          goto LABEL_38;
        }
      }

      v18 += 96;
      ++v17;
    }
  }

  DctInfo = 0;
LABEL_14:
  freeWordList(*(*a2 + 8), v13, v14);
  freeWordList(*(*a2 + 8), v13, v16);
  return DctInfo;
}

void *freeWordList(void *result, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v6;
      v8 = *(a3 + 8 * v6);
      if (v8)
      {
        heap_Free(v5, v8);
        *(a3 + 8 * v7) = 0;
      }

      v6 = v7 + 1;
    }

    while (a2 >= (v7 + 1));

    return heap_Free(v5, a3);
  }

  return result;
}

uint64_t statcomp_useStatCOMP(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  result = (*(a3 + 96))(a1, a2, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    if (*&__c[1] != 1 || *&__c[3] == 0)
    {
      return 0;
    }

    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (cstdlib_strcmp(**&__c[3], "YES") && cstdlib_strcmp(**&__c[3], "yes"))
    {
      return 0;
    }

    else
    {
      result = 0;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t statcomp_processUserMarkup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v8 = (*(a1 + 104))(a2, a3, 1, 0, &v53 + 2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v53), 0, &v52 + 2);
  if ((v9 & 0x80000000) == 0 && HIWORD(v52) == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, HIWORD(v53), 0, &v48, &v52);
    if ((v9 & 0x80000000) == 0 && v52 >= 2u)
    {
      *(a4 + 424) = 0;
      v9 = (*(a1 + 104))(a2, a3, 2, HIWORD(v53), &v53);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_64;
      }

      v10 = v53;
      if (!v53)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v11 = (*(a1 + 168))(a2, a3, v10, 0, 1, &v50, &v52);
        if ((v11 & 0x80000000) != 0)
        {
LABEL_63:
          v9 = v11;
          goto LABEL_64;
        }

        if (v50 <= 0xA && ((1 << v50) & 0x610) != 0)
        {
          v11 = (*(a1 + 168))(a2, a3, v53, 1, 1, &v49, &v52);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          v11 = (*(a1 + 168))(a2, a3, v53, 2, 1, &v49 + 2, &v52);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          if (v49 > HIWORD(v49))
          {
            v44 = 16049;
            goto LABEL_68;
          }

          v11 = (*(a1 + 184))(a2, a3, v53, 14, &v52 + 2);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          if (HIWORD(v52) == 1)
          {
            v11 = (*(a1 + 176))(a2, a3, v53, 14, &v47, &v52);
            if ((v11 & 0x80000000) != 0)
            {
              goto LABEL_63;
            }

            if (hlp_NLUStrFind(v47, "S_COMP", &v46, &v45))
            {
              if (!*(a4 + 424))
              {
                v13 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v13;
                if (!v13)
                {
                  goto LABEL_67;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v47);
              if ((v8 & 0x80000000) != 0)
              {
                return v8;
              }

              v14 = v45;
              if (v45)
              {
                v15 = v46 + 1;
                v16 = v45 - 1;
                v17 = __s;
                v18 = &v53 + 3;
                while (1)
                {
                  v19 = *(v15 - 1);
                  if (v19 == 43)
                  {
                    break;
                  }

                  *v17++ = v19;
                  ++v15;
                  --v18;
                  if (--v16 == -1)
                  {
                    goto LABEL_28;
                  }
                }

                *v17 = 0;
                cstdlib_strncpy(__dst, v15, v16);
                v18[v45] = 0;
                hlp_NLUStrSet(*(a4 + 408), "S_COMPPOS", __dst);
              }

              else
              {
LABEL_28:
                __s[v14] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "S_COMP", __s);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v47);
              v20 = *(a1 + 160);
              v21 = v53;
              v22 = cstdlib_strlen(*(a4 + 408));
              v11 = v20(a2, a3, v21, 14, (v22 + 1), *(a4 + 408), &v51);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              cstdlib_strcpy(*(a4 + 408), "");
            }

            if (hlp_NLUStrFind(v47, "E_COMP", &v46, &v45))
            {
              if (!*(a4 + 424))
              {
                v23 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v23;
                if (!v23)
                {
                  goto LABEL_67;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v47);
              if ((v8 & 0x80000000) != 0)
              {
                return v8;
              }

              v24 = v45;
              if (v45)
              {
                v25 = v46 + 1;
                v26 = v45 - 1;
                v27 = __s;
                v28 = &v53 + 3;
                while (1)
                {
                  v29 = *(v25 - 1);
                  if (v29 == 43)
                  {
                    break;
                  }

                  *v27++ = v29;
                  ++v25;
                  --v28;
                  if (--v26 == -1)
                  {
                    goto LABEL_41;
                  }
                }

                *v27 = 0;
                cstdlib_strncpy(__dst, v25, v26);
                v28[v45] = 0;
                hlp_NLUStrSet(*(a4 + 408), "E_COMPPOS", __dst);
              }

              else
              {
LABEL_41:
                __s[v24] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "E_COMP", __s);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v47);
              v30 = *(a1 + 160);
              v31 = v53;
              v32 = cstdlib_strlen(*(a4 + 408));
              v11 = v30(a2, a3, v31, 14, (v32 + 1), *(a4 + 408), &v51);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              cstdlib_strcpy(*(a4 + 408), "");
            }

            if (hlp_NLUStrFind(v47, "I_COMP", &v46, &v45))
            {
              if (!*(a4 + 424))
              {
                v33 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v33;
                if (!v33)
                {
LABEL_67:
                  log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0);
                  v44 = 8202;
LABEL_68:
                  v9 = v44 | 0x89E00000;
LABEL_64:
                  if (*(a4 + 424))
                  {
                    heap_Free(*(*a4 + 8), *(a4 + 408));
                    *(a4 + 408) = 0;
                    *(a4 + 424) = 0;
                  }

                  return v9;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v47);
              if ((v8 & 0x80000000) != 0)
              {
                return v8;
              }

              v34 = v45;
              if (v45)
              {
                v35 = v46 + 1;
                v36 = v45 - 1;
                v37 = __s;
                v38 = &v53 + 3;
                while (1)
                {
                  v39 = *(v35 - 1);
                  if (v39 == 43)
                  {
                    break;
                  }

                  *v37++ = v39;
                  ++v35;
                  --v38;
                  if (--v36 == -1)
                  {
                    goto LABEL_54;
                  }
                }

                *v37 = 0;
                cstdlib_strncpy(__dst, v35, v36);
                v38[v45] = 0;
                hlp_NLUStrSet(*(a4 + 408), "I_COMPPOS", __dst);
              }

              else
              {
LABEL_54:
                __s[v34] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "I_COMP", __s);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v47);
              v40 = *(a1 + 160);
              v41 = v53;
              v42 = cstdlib_strlen(*(a4 + 408));
              v11 = v40(a2, a3, v41, 14, (v42 + 1), *(a4 + 408), &v51);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              cstdlib_strcpy(*(a4 + 408), "");
            }
          }
        }

        v9 = (*(a1 + 120))(a2, a3, v53, &v53);
        if ((v9 & 0x80000000) == 0)
        {
          v10 = v53;
          if (v53)
          {
            continue;
          }
        }

        goto LABEL_64;
      }
    }
  }

  return v9;
}

uint64_t statcomp_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  __s = 0;
  v58 = 0;
  v57 = 0;
  *(a4 + 107) = log_GetLogLevel(*(*a4 + 32)) > 4;
  v8 = (*(a1 + 104))(a2, a3, 1, 0, &v66);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a1 + 184))(a2, a3, v66, 0, &v65);
  if ((v9 & 0x80000000) == 0 && v65 == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, v66, 0, &__s, &v64);
    if ((v9 & 0x80000000) == 0 && v64 >= 2u)
    {
      v10 = cstdlib_strlen(__s);
      v11 = heap_Calloc(*(*a4 + 8), 1, v10 + 1);
      a4[60] = v11;
      if (v11)
      {
        cstdlib_strcpy(v11, __s);
        log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "statCOMP : start processing=%s", a4[60]);
        v12 = heap_Calloc(*(*a4 + 8), 1, 1024);
        a4[51] = v12;
        if (v12)
        {
          *(a4 + 212) = 1024;
          v13 = heap_Calloc(*(*a4 + 8), 1, 1024);
          a4[52] = v13;
          if (v13)
          {
            v8 = (*(a1 + 104))(a2, a3, 2, v66, &v65 + 2);
            if ((v8 & 0x80000000) == 0)
            {
              while (HIWORD(v65))
              {
                v8 = (*(a1 + 168))(a2, a3);
                if ((v8 & 0x80000000) != 0)
                {
                  return v8;
                }

                if (v63 <= 0xA && ((1 << v63) & 0x610) != 0)
                {
                  v8 = (*(a1 + 168))(a2, a3, HIWORD(v65), 1, 1, &v58, &v64);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  v8 = (*(a1 + 168))(a2, a3, HIWORD(v65), 2, 1, &v58 + 2, &v64);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v58 > HIWORD(v58))
                  {
                    return 2313174705;
                  }

                  v8 = (*(a1 + 184))(a2, a3, HIWORD(v65), 17, &v65);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v65 == 1)
                  {
                    v8 = (*(a1 + 168))(a2, a3, HIWORD(v65), 17, 1, &v57, &v64);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }
                  }

                  else
                  {
                    v57 = v63 - 9 <= 1;
                  }

                  v8 = (*(a1 + 176))(a2, a3, HIWORD(v65), 3, &v59, &v64);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (HIWORD(v58) == v58)
                  {
                    log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", HIWORD(v58), HIWORD(v58));
                  }

                  else
                  {
                    v8 = (*(a1 + 176))(a2, a3, HIWORD(v65), 14, &v62, &v64);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v15 = v62;
                    v16 = v57;
                    v17 = v59;
                    v70 = 0;
                    v69 = 0;
                    __src = 0;
                    v67 = 0;
                    v18 = *(*a4 + 8);
                    v19 = cstdlib_strlen(v62);
                    v20 = heap_Calloc(v18, 1, (v19 + 1));
                    if (!v20)
                    {
                      goto LABEL_70;
                    }

                    v21 = v20;
                    cstdlib_strcpy(v20, v15);
                    v22 = *(a4 + 220);
                    if (*(a4 + 220))
                    {
                      v23 = 0;
                      v24 = (a4[54] + 2);
                      while (1)
                      {
                        v25 = *(v24 - 1);
                        if (__PAIR64__(*v24, v25) == __PAIR64__(HIWORD(v58), v58))
                        {
                          break;
                        }

                        if (v58 >= v25 && HIWORD(v58) <= *v24)
                        {
                          log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING : skip subsumed word %d,%d (subsumed by word %d)", v58, HIWORD(v58), v23);
                          break;
                        }

                        ++v23;
                        v24 += 48;
                        if (v22 == v23)
                        {
                          goto LABEL_35;
                        }
                      }
                    }

                    else
                    {
LABEL_35:
                      if (*(a4 + 221))
                      {
                        v26 = a4[54];
                        if (v22 + 2 > *(a4 + 221))
                        {
                          v27 = heap_Realloc(*(*a4 + 8), v26, 96 * *(a4 + 221) + 2016);
                          if (!v27)
                          {
                            goto LABEL_84;
                          }

                          a4[54] = v27;
                          cstdlib_memset((v27 + 96 * *(a4 + 220)), 0, 0x780uLL);
                          *(a4 + 221) += 20;
                          v26 = a4[54];
                        }
                      }

                      else
                      {
                        v28 = heap_Calloc(*(*a4 + 8), 1, 4801);
                        a4[54] = v28;
                        if (!v28)
                        {
                          goto LABEL_84;
                        }

                        v26 = v28;
                        *(a4 + 221) = 50;
                      }

                      v29 = (v26 + 96 * *(a4 + 220));
                      *v29 = v58;
                      v29[1] = v16 == 1;
                      if (hlp_NLUStrFind(v21, "POS", &v70, &v69))
                      {
                        v30 = *(*a4 + 8);
                        v31 = cstdlib_strlen(v70);
                        v32 = heap_Calloc(v30, 1, (v31 + 1));
                        *(a4[54] + 96 * *(a4 + 220) + 32) = v32;
                        if (!v32)
                        {
                          goto LABEL_84;
                        }

                        cstdlib_strcpy(v32, v70);
                        *(*(a4[54] + 96 * *(a4 + 220) + 32) + v69) = 0;
                      }

                      if (hlp_NLUStrFind(v21, "S_COMP", &__src, &v67))
                      {
                        v33 = *(*a4 + 8);
                        v34 = cstdlib_strlen(__src);
                        v35 = heap_Calloc(v33, 1, (v34 + 1));
                        *(a4[54] + 96 * *(a4 + 220) + 40) = v35;
                        if (!v35)
                        {
                          goto LABEL_84;
                        }

                        cstdlib_strcpy(v35, __src);
                        *(*(a4[54] + 96 * *(a4 + 220) + 40) + v67) = 0;
                      }

                      if (hlp_NLUStrFind(v21, "E_COMP", &__src, &v67))
                      {
                        v36 = *(*a4 + 8);
                        v37 = cstdlib_strlen(__src);
                        v38 = heap_Calloc(v36, 1, (v37 + 1));
                        *(a4[54] + 96 * *(a4 + 220) + 48) = v38;
                        if (!v38)
                        {
                          goto LABEL_84;
                        }

                        cstdlib_strcpy(v38, __src);
                        *(*(a4[54] + 96 * *(a4 + 220) + 48) + v67) = 0;
                      }

                      v39 = a4[54] + 96 * *(a4 + 220);
                      *(v39 + 12) = 0;
                      *(v39 + 20) = 0;
                      v40 = HIWORD(v58);
                      if (cstdlib_strlen(a4[60]) > v40 && *(a4[60] + HIWORD(v58)) == 95)
                      {
                        *(a4[54] + 96 * *(a4 + 220) + 12) = 1;
                      }

                      if (v58)
                      {
                        v41 = a4[54];
                        v42 = *(a4 + 220);
                        if (*(a4[60] + v58 - 1) == 95)
                        {
                          *(v41 + 96 * *(a4 + 220) + 20) = 1;
                        }
                      }

                      else
                      {
                        v41 = a4[54];
                        v42 = *(a4 + 220);
                      }

                      v43 = v41 + 96 * v42;
                      if (*(v43 + 12) == 1 && *(v43 + 20) == 1)
                      {
                        *(v43 + 12) = 0;
                        *(v41 + 96 * v42 + 20) = 0;
                      }

                      v44 = *(a4[60] + HIWORD(v58) - 1);
                      v45 = v44 <= 0x3B && ((1 << v44) & 0xC00100000000000) != 0;
                      *(v41 + 96 * v42 + 24) = v45;
                      v46 = *(*a4 + 8);
                      v47 = cstdlib_strlen(v17);
                      v48 = heap_Calloc(v46, 1, (v47 + 1));
                      *(a4[54] + 96 * *(a4 + 220) + 56) = v48;
                      if (!v48)
                      {
LABEL_84:
                        v9 = 2313166858;
                        log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0);
                        heap_Free(*(*a4 + 8), v21);
                        return v9;
                      }

                      cstdlib_strcpy(v48, v17);
                      ++*(a4 + 220);
                    }

                    heap_Free(*(*a4 + 8), v21);
                  }
                }

                v9 = (*(a1 + 120))(a2, a3, HIWORD(v65), &v65 + 2);
                if ((v9 & 0x80000000) != 0)
                {
                  return v9;
                }
              }

              v8 = (*(a1 + 104))(a2, a3, 2, v66, &v65 + 2);
              if ((v8 & 0x80000000) == 0)
              {
                while (HIWORD(v65))
                {
                  v8 = (*(a1 + 168))(a2, a3);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v63 == 6)
                  {
                    v8 = (*(a1 + 168))(a2, a3, HIWORD(v65), 1, 1, &v58, &v64);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v8 = (*(a1 + 168))(a2, a3, HIWORD(v65), 2, 1, &v58 + 2, &v64);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    if (v58 > HIWORD(v58))
                    {
                      return 2313174705;
                    }

                    v8 = (*(a1 + 176))(a2, a3, HIWORD(v65), 4, &v61, &v64);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v49 = addStatCOMPToken(*a4, &v58, v61, a4 + 216);
                    if ((v49 & 0x80000000) != 0)
                    {
                      v9 = v49;
                      if (v49 != -1981800448)
                      {
                        return v9;
                      }
                    }
                  }

                  v9 = (*(a1 + 120))(a2, a3, HIWORD(v65), &v65 + 2);
                  if ((v9 & 0x80000000) != 0)
                  {
                    return v9;
                  }
                }

                v8 = validateUserCompoundWords(a4);
                if ((v8 & 0x80000000) == 0)
                {
                  if (v10)
                  {
                    for (i = 0; i != v10; ++i)
                    {
                      v51 = a4[60];
                      if (*(v51 + i) == 95)
                      {
                        *(v51 + i) = 32;
                      }
                    }
                  }

                  v52 = *(a4 + 220);
                  if (*(a4 + 220))
                  {
                    v53 = 0;
                    v54 = (a4[54] + 20);
                    do
                    {
                      if (*(v54 - 2) == 1)
                      {
                        v53 = 1;
                      }

                      *(v54 - 1) = v53;
                      v55 = *v54;
                      v54 += 24;
                      if (v55 == 1)
                      {
                        v53 = 0;
                      }

                      --v52;
                    }

                    while (v52);
                  }

                  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "statCOMP : internal processing=%s", a4[60]);
                  return printstatCOMPSent(*a4, *(a4 + 107), a4 + 51, a4[52], a4 + 212, a4 + 54, a4[60], "after statcomp_getSentenceData()", 0);
                }
              }
            }

            return v8;
          }
        }
      }

LABEL_70:
      v9 = 2313166858;
      log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0);
    }
  }

  return v9;
}

uint64_t addStatCOMPToken(uint64_t a1, unsigned __int16 *a2, const char *a3, unsigned __int16 *a4)
{
  v6 = a4[4];
  v7 = *a2;
  if (!a4[4])
  {
LABEL_12:
    v11 = a2[1];
LABEL_14:
    v16 = 2313166848;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a3, v7, v11);
    if (a4[4])
    {
      v17 = 0;
      v18 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "word[%d] %d,%d", v18++, *(*a4 + v17), *(*a4 + v17 + 2));
        v17 += 96;
      }

      while (v18 < a4[4]);
    }

    return v16;
  }

  v8 = 0;
  v9 = v6 + 1;
  v10 = *a4;
  v11 = a2[1];
  v12 = (*a4 + 2);
  while (1)
  {
    v13 = *(v12 - 1);
    if (v7 == v13)
    {
      v9 = v8;
    }

    v14 = *v12;
    if (v11 == v14)
    {
      break;
    }

    if (v11 >= v13 && v11 < v14)
    {
      break;
    }

    v12 += 48;
    ++v8;
    v7 = *a2;
    if (v6 == v8)
    {
      goto LABEL_12;
    }
  }

  if (v6 + 1 == v9)
  {
    goto LABEL_14;
  }

  if (v8 >= v9)
  {
    v19 = 0;
    v20 = (v8 - v9);
    v21 = vdupq_n_s32(v20);
    v22 = (v20 + 4) & 0x1FFFC;
    do
    {
      v23 = v9 + v19;
      v24 = vmovn_s32(vcgeq_u32(v21, vorrq_s8(vdupq_n_s32(v19), xmmword_26ECCEBC0)));
      if (v24.i8[0])
      {
        *(v10 + 96 * (v9 + v19) + 8) = 1;
      }

      if (v24.i8[2])
      {
        *(v10 + 96 * (v23 + 1) + 8) = 1;
      }

      if (v24.i8[4])
      {
        *(v10 + 96 * (v23 + 2) + 8) = 1;
      }

      if (v24.i8[6])
      {
        *(v10 + 96 * (v23 + 3) + 8) = 1;
      }

      v19 += 4;
    }

    while (v22 != v19);
  }

  return 0;
}

uint64_t validateUserCompoundWords(uint64_t *a1)
{
  v16 = 0u;
  v17 = 0u;
  if (*(a1 + 220))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = "WARNING : skip user compound word as E_COMP(%s) found without starting S_COMP";
    while (1)
    {
      v7 = a1[54];
      if (*(v7 + v2 + 40))
      {
        if (v5 == 1)
        {
          log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : found consecutive S_COMP, assume %s on word %d is incorrect, try to continue...", *(v7 + 96 * v4 + 40), v4);
          v7 = a1[54];
        }

        v5 = 1;
        v4 = v3;
      }

      v8 = *(v7 + v2 + 48);
      if (!v8)
      {
        goto LABEL_13;
      }

      if (v5 != 1)
      {
        break;
      }

      if (cstdlib_strcmp(*(v7 + 96 * v4 + 40), v8))
      {
        log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : skip user compound word as S_COMP(%s) and E_COMP(%s) fields differ");
LABEL_12:
        v5 = 0;
        goto LABEL_13;
      }

      v9 = v6;
      v10 = *(a1[54] + 96 * v4 + 40);
      v11 = cstdlib_strstr(v10, "+");
      if (v11)
      {
        *v11 = 0;
        v12 = v11 + 1;
        log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "VALID USER COMPOUND WORD ADD from %d to %d", v4, v3);
        v13 = a1[54];
        *(v13 + 96 * v4 + 88) = 1;
        *(v13 + v2 + 89) = 1;
        result = setCOMPValues(a1, v4, v3, &v16, v12, v10, 0, "MARKUP", "USER");
        v5 = 0;
        v6 = v9;
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : skip user compound word as invalid fields in %s", *(a1[54] + 96 * v4 + 40));
        v5 = 0;
      }

LABEL_13:
      ++v3;
      v2 += 96;
      if (v3 >= *(a1 + 220))
      {
        return 0;
      }
    }

    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, v6, *(v7 + v2 + 48), v15, v16, v17);
    goto LABEL_12;
  }

  return 0;
}

uint64_t printstatCOMPSent(uint64_t a1, int a2, const char **a3, char *a4, unsigned __int16 *a5, uint64_t *a6, uint64_t a7, const char *a8, int a9)
{
  if (!a2)
  {
    return 0;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Sentence :%s", a8);
  if (!*(a6 + 4))
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  if (a9 != 1)
  {
    v17 = "[%2d] ";
    goto LABEL_6;
  }

  v17 = "statCOMP [%2d] ";
  sprintf(a4, "statCOMP [%2d] ");
  while (1)
  {
    v18 = statcomp_add2Str(a1, a3, a5, a4);
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    cstdlib_strncpy(a4, (a7 + *(*a6 + v15)), *(*a6 + v15 + 2) - *(*a6 + v15));
    a4[*(*a6 + v15 + 2) - *(*a6 + v15)] = 0;
    v18 = statcomp_add2Str(a1, a3, a5, a4);
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    v18 = statcomp_add2Str(a1, a3, a5, " ");
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    v19 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 32));
    if ((v19 & 0x80000000) != 0)
    {
      return v19;
    }

    v20 = *a6;
    if (*(*a6 + v15 + 12) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " <HYPHEN");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 20) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " HYPHEN>");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 24) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " ENDINPUNC");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 8) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " TOK");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 88) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " <CW");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 72))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " POS:");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v19 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 72));
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 80))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " PROM:");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v19 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 80));
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 89) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " CW>");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 56))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " PRON:");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v19 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 56));
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 64))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " PRON(new):");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v19 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 64));
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }
    }

    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", *a3);
    cstdlib_strcpy(*a3, "");
    ++v16;
    v15 += 96;
    if (v16 >= *(a6 + 4))
    {
      return v19;
    }

LABEL_6:
    sprintf(a4, v17, v16);
  }

  return v18;
}

void *statcomp_freeSentenceData(uint64_t a1)
{
  v2 = *(a1 + 408);
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    *(a1 + 408) = 0;
    *(a1 + 424) = 0;
  }

  v3 = *(a1 + 416);
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
    *(a1 + 416) = 0;
  }

  v4 = *(a1 + 432);
  if (*(a1 + 440))
  {
    v5 = 0;
    v6 = 80;
    do
    {
      if (*(v4 + v6 - 48))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 48));
        v4 = *(a1 + 432);
        *(v4 + v6 - 48) = 0;
      }

      if (*(v4 + v6 - 8))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 8));
        v4 = *(a1 + 432);
        *(v4 + v6 - 8) = 0;
      }

      if (*(v4 + v6))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6));
        v4 = *(a1 + 432);
        *(v4 + v6) = 0;
      }

      if (*(v4 + v6 - 24))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 24));
        v4 = *(a1 + 432);
        *(v4 + v6 - 24) = 0;
      }

      if (*(v4 + v6 - 16))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 16));
        v4 = *(a1 + 432);
        *(v4 + v6 - 16) = 0;
      }

      if (*(v4 + v6 - 40))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 40));
        v4 = *(a1 + 432);
        *(v4 + v6 - 40) = 0;
      }

      if (*(v4 + v6 - 32))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 32));
        v4 = *(a1 + 432);
        *(v4 + v6 - 32) = 0;
      }

      ++v5;
      v6 += 96;
    }

    while (v5 < *(a1 + 440));
  }

  else if (!v4)
  {
    goto LABEL_25;
  }

  heap_Free(*(*a1 + 8), v4);
  *(a1 + 432) = 0;
LABEL_25:
  v7 = *(a1 + 480);
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
    *(a1 + 480) = 0;
  }

  return cstdlib_memset((a1 + 432), 0, 0x30uLL);
}

uint64_t statcomp_processCompounds(void **a1, _DWORD *a2)
{
  v260 = *MEMORY[0x277D85DE8];
  v4 = a1[9];
  v5 = a1[39];
  v6 = a1[40];
  v7 = a1[45];
  __dst = a1[46];
  v253 = 0;
  v249 = 0;
  v250 = 0;
  v247 = 0;
  *a2 = 0;
  v248 = 0;
  v251 = 0;
  v252 = 0;
  log_OutText((*a1)[4], "FE_POS", 5, 0, "Compound Processing : with multi-word window=%d", *(a1 + 172));
  v8 = a1[60];
  a1[56] = v8;
  v9 = (*a1)[1];
  v10 = cstdlib_strlen(v8);
  v11 = heap_Calloc(v9, 1, (v10 + 1));
  a1[57] = v11;
  if (!v11)
  {
    goto LABEL_343;
  }

  if (*(a1 + 220))
  {
    v12 = 0;
    v13 = 0;
    v14 = 4;
    do
    {
      v13 += cstdlib_strlen(a1[54][v14]) + 1;
      ++v12;
      v14 += 12;
    }

    while (v12 < *(a1 + 220));
    v15 = v13 + 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = heap_Calloc((*a1)[1], 1, v15);
  a1[58] = v16;
  if (!v16)
  {
LABEL_343:
    v76 = 2313166858;
    log_OutPublic((*a1)[4], "FE_POS", 35000, 0);
    return v76;
  }

  v213 = a2;
  v222 = v7;
  v223 = v6;
  v224 = v5;
  v225 = v4;
  v17 = *(a1 + 220);
  if (!*(a1 + 220))
  {
LABEL_344:
    v76 = printstatCOMPSent(*a1, *(a1 + 107), a1 + 51, a1[52], a1 + 212, a1 + 54, a1[60], "after statcomp_processCompounds()", 1);
    if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_354;
    }

    return v76;
  }

  v18 = 0;
  v206 = 0;
  v19 = 0;
  while (1)
  {
    v245 = v18;
    v20 = a1[54];
    v21 = v19;
    v22 = &v20[12 * v19];
    if (*(v22 + 2) == 1)
    {
      LODWORD(v23) = v19;
      if (v19 < v17)
      {
        v24 = &v20[12 * v19 + 1];
        v23 = v19;
        while (1)
        {
          v25 = *v24;
          v24 += 24;
          if (v25 != 1)
          {
            break;
          }

          if (v17 == ++v23)
          {
            LODWORD(v23) = v17;
            break;
          }
        }
      }

      if (v19 != v23)
      {
        LODWORD(v21) = (v23 - (LODWORD(v20[12 * v23 + 1]) == 0));
        v19 = (__PAIR64__(v23, v20[12 * v23 + 1]) - 1) >> 32;
      }

      v26 = WORD1(v20[12 * v21]);
      v27 = *v22;
      v28 = v26 - v27;
      v29 = v19;
      if ((v28 & 0xFF00) != 0)
      {
        v30 = 256;
      }

      else
      {
        v30 = v28;
      }

      cstdlib_strncpy(a1[52], a1[60] + v27, v30);
      *(a1[52] + v30) = 0;
      v19 = v29;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "skip TOK word %s from word %d to %d", a1[52], v245, v29);
      goto LABEL_65;
    }

    if (*(v22 + 88) == 1)
    {
      if (v19 >= v17)
      {
        v33 = v19;
      }

      else
      {
        v31 = &v20[12 * v19 + 11] + 1;
        while (1)
        {
          v32 = *v31;
          v31 += 96;
          if (v32)
          {
            break;
          }

          if (v17 == ++v21)
          {
            LODWORD(v21) = v17;
            v33 = v17;
            goto LABEL_61;
          }
        }

        v33 = v21;
        LODWORD(v21) = v21;
      }

LABEL_61:
      v44 = WORD1(v20[12 * v21]);
      v45 = *v22;
      v46 = v44 - v45;
      if ((v46 & 0xFF00) != 0)
      {
        v47 = 256;
      }

      else
      {
        v47 = v46;
      }

      cstdlib_strncpy(a1[52], a1[60] + v45, v47);
      *(a1[52] + v47) = 0;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "skip user marked compound word %s from word %d to %d", a1[52], v245, v33);
      v19 = v33;
      goto LABEL_65;
    }

    v233 = v19;
    cstdlib_strcpy(a1[58], "");
    cstdlib_strcpy(a1[57], "");
    v254 = 0;
    v34 = *(a1 + 220);
    v35 = v34 + 1;
    v36 = a1[54];
    if (v34 <= v19)
    {
      v38 = v19;
      v39 = v245;
    }

    else
    {
      v37 = 0;
      v38 = v19;
      v39 = v245;
      while (1)
      {
        v40 = &v36[12 * v38];
        if (*(v40 + 6) == 1 || *(v40 + 88) == 1 || v38 - v245 + 1 >= *(a1 + 172))
        {
          break;
        }

        if (*(v40 + 3) == 1)
        {
          v37 = 1;
          v35 = v38;
        }

        if (HIDWORD(v36[12 * v38 + 2]) == 1)
        {
          v37 = 0;
        }

        if (v34 <= ++v38)
        {
          v38 = *(a1 + 220);
          break;
        }
      }

      if (v38 > v19)
      {
        v38 -= LOBYTE(v36[12 * v38 + 11]) == 1;
      }

      if (v38 > v19)
      {
        v38 -= HIDWORD(v36[12 * v38 + 1]) == 1;
      }

      if (v37 == 1 && !HIDWORD(v36[12 * v38 + 2]))
      {
        v38 = v19;
      }
    }

    v41 = v38 - (v34 == v38);
    if (HIDWORD(v36[12 * v41 + 2]) == 1 && v34 + 1 == v35)
    {
      goto LABEL_65;
    }

    if (v19 <= v41)
    {
      v42 = 0;
      v43 = v19;
      do
      {
        if (HIDWORD(v36[12 * v43 + 1]) == 1)
        {
          v42 = 1;
        }

        ++v43;
      }

      while (v43 <= v41);
      if (v19 <= v41)
      {
        break;
      }
    }

LABEL_57:
    if (v248 == 1)
    {
      v248 = 0;
      heap_Free((*a1)[1], v251);
      v251 = 0;
      if (v252)
      {
        heap_Free((*a1)[1], v252);
        v252 = 0;
      }
    }

LABEL_65:
    v18 = ++v19;
    v17 = *(a1 + 220);
    if (v19 >= v17)
    {
      goto LABEL_344;
    }
  }

  v48 = 0;
  v214 = v39;
  v215 = 0;
  v49 = v41;
  v243 = v19;
  do
  {
    v50 = v49 != v19 && v48 == 0;
    if (!v50)
    {
      break;
    }

    v217 = v49;
    v51 = 3 * v49;
    v244 = v49;
    cstdlib_strncpy(a1[52], a1[60] + LOWORD(a1[54][12 * v233]), WORD1(a1[54][12 * v49]) - LOWORD(a1[54][12 * v233]));
    *(a1[52] + WORD1(a1[54][4 * v51]) - LOWORD(a1[54][12 * v233])) = 0;
    if (v19 <= v244)
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = v19;
      do
      {
        v56 = &a1[54][12 * v55];
        if (*(v56 + 3) == 1)
        {
          v54 = 1;
          v53 = 1;
          ++v52;
        }

        v57 = v54 == 0;
        if (*(v56 + 5) == 1)
        {
          v54 = 0;
          v53 = v57;
        }

        ++v55;
      }

      while (v55 <= v244);
      if (v53 == 1 || v52 >= 2u)
      {
        log_OutText((*a1)[4], "FE_POS", 5, 0, "skip bisected %s", a1[52]);
        LODWORD(v49) = v244;
        goto LABEL_86;
      }
    }

    v247 = 0;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "processing [%d] %s", v245, a1[52]);
    LOWORD(v49) = v244;
    while (1)
    {
LABEL_90:
      if (v42 == 1)
      {
        v59 = isCompoundWordMember(a1, 1, v19, v49, &v254, &v253, &v247);
        v60 = "HYPHEN";
        if ((v59 & 0x80000000) != 0)
        {
          goto LABEL_347;
        }
      }

      else
      {
        v59 = isCompoundWordMember(a1, 0, v19, v49, &v254, &v253, &v247);
        v60 = "OPEN";
        if ((v59 & 0x80000000) != 0)
        {
          goto LABEL_347;
        }
      }

      ++v247;
      if (v254 == 1)
      {
        break;
      }

      v49 = v244;
      if (!v254)
      {
        v167 = a1[54];
        v215 = v60;
        if (HIDWORD(v167[12 * v217 + 2]) == 1)
        {
          if (v19 <= v244)
          {
            do
            {
              if (HIDWORD(v167[12 * v49 + 1]))
              {
                break;
              }

              v49 = (v49 - 1);
            }

            while (v49 >= v19);
          }

          v48 = 0;
          goto LABEL_87;
        }

LABEL_86:
        v48 = 0;
        v49 = (v49 - 1);
        goto LABEL_87;
      }
    }

    v215 = v60;
    v61 = v253;
    v62 = 15 * v253;
    cstdlib_strcpy(v222, &v224[*(v223 + HIDWORD(v225[v62]))]);
    cstdlib_strcat(v222, "_firstword");
    cstdlib_strcpy(__dst, &v224[*(v223 + HIDWORD(v225[v62]))]);
    cstdlib_strcat(__dst, "_lastword");
    v63 = a1[9];
    v64 = a1[40];
    v241 = a1[39];
    v254 = 0;
    cstdlib_strncpy(a1[52], a1[60] + LOWORD(a1[54][12 * v233]), WORD1(a1[54][12 * v217]) - LOWORD(a1[54][12 * v233]));
    *(a1[52] + WORD1(a1[54][12 * v217]) - LOWORD(a1[54][12 * v233])) = 0;
    v216 = v61;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "  [FILTER] Checking Compound Word Membership Filter for [%d] word %s compound rule %d", v214, a1[52], v61);
    v235 = &v63[v62];
    if (!LOWORD(v63[v62 + 8]))
    {
      v76 = 0;
      v19 = v243;
LABEL_278:
      v165 = 0;
      v254 = 0;
      v166 = "  [FILTER] FAIL";
LABEL_279:
      log_OutText((*a1)[4], "FE_POS", 5, 0, v166, 0);
      goto LABEL_280;
    }

    v234 = v64;
    v238 = 0;
    v65 = 0;
    v66 = 0;
    v205 = 0;
    v207 = 0;
    v242 = 0;
    v19 = v243;
    v67 = v241;
    v68 = v235;
    do
    {
      v69 = 8 * v66;
      v70 = v66;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "  check filter %s", &v67[*(v234 + *(v68[7] + 8 * v66))]);
      v236 = v70;
      if (!cstdlib_strcmp("ALGO_INLEXICON", &v67[*(v234 + *(v68[7] + v69))]))
      {
        v226 = v69;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_INLEXICON with ARG %s", &v67[*(v234 + *(v68[7] + 8 * v70 + 4))]);
        v71 = *(v234 + *(v68[7] + 8 * v70 + 4));
        v72 = a1[9];
        v74 = a1[39];
        v73 = a1[40];
        v257 = 0;
        v255 = 0;
        v254 = 0;
        cstdlib_strncpy(a1[57], a1[60] + LOWORD(a1[54][12 * v233]), WORD1(a1[54][12 * v217]) - LOWORD(a1[54][12 * v233]));
        *(a1[57] + WORD1(a1[54][12 * v217]) - LOWORD(a1[54][12 * v233])) = 0;
        cstdlib_strncpy(__s1, a1[57], 0x7FuLL);
        v259 = 0;
        v59 = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
        if ((v59 & 0x80000000) != 0)
        {
LABEL_347:
          v76 = v59;
          goto LABEL_354;
        }

        v256 = -1;
        v75 = (a1[50][12])(a1[48], a1[49], v74 + *(v73 + HIDWORD(v72[15 * v216])), __s1, &v257, &v256, &v255);
        v76 = v75;
        if ((v75 & 0x80000000) != 0)
        {
          goto LABEL_354;
        }

        v242 = v75;
        if (v256 != 1 || !v257)
        {
          v238 = 0;
          v65 = 0;
          v254 = 0;
          v19 = v243;
          v67 = v241;
          v68 = v235;
          v84 = v226;
          goto LABEL_260;
        }

        v77 = cstdlib_strchr(*v257, v255);
        if (v77)
        {
          v78 = v77;
          *v77 = 0;
          v79 = cstdlib_strcmp(*v257, &v241[v71]);
          v80 = 0;
          if (!v79)
          {
            v80 = 1;
            v254 = 1;
          }

          v81 = cstdlib_strchr(v78 + 1, v255);
          if (v81)
          {
            v82 = v81;
            *v81 = 0;
            if (v79)
            {
              v83 = cstdlib_strchr(v81 + 1, v255);
              v238 = v80;
              if (v83)
              {
                *v83 = 0;
              }

              v65 = v80;
              v19 = v243;
              v67 = v241;
              goto LABEL_118;
            }

            v139 = (*a1)[1];
            v140 = cstdlib_strlen(v78 + 1);
            v141 = heap_Calloc(v139, 1, (v140 + 1));
            v251 = v141;
            if (v141)
            {
              cstdlib_strcpy(v141, v78 + 1);
              v248 = 1;
              v142 = cstdlib_strchr(v82 + 1, v255);
              v19 = v243;
              if (v142)
              {
                *v142 = 0;
                v68 = v235;
                if (cstdlib_strlen(v82 + 1))
                {
                  v143 = (*a1)[1];
                  v144 = cstdlib_strlen(v82 + 1);
                  v145 = heap_Calloc(v143, 1, (v144 + 1));
                  v252 = v145;
                  if (!v145)
                  {
                    goto LABEL_351;
                  }

                  cstdlib_strcpy(v145, v82 + 1);
                  v248 = 1;
                  v19 = v243;
                }
              }

              else
              {
                v68 = v235;
              }

              v84 = v226;
              v155 = *(v68[7] + v226);
              LODWORD(v250) = *v68;
              v249 = v155;
              v238 = 1;
              v65 = 1;
LABEL_233:
              v67 = v241;
              goto LABEL_260;
            }

LABEL_351:
            v200 = 35000;
            v76 = 2313166858;
            goto LABEL_352;
          }

LABEL_349:
          v200 = 35003;
        }

        else
        {
LABEL_348:
          v200 = 35002;
        }

        v76 = 2313166848;
        goto LABEL_352;
      }

      if (!cstdlib_strcmp("ALGO_EXTENDEDLEXMATCH", &v67[*(v234 + *(v68[7] + v69))]))
      {
        v226 = v69;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_EXTENDEDLEXMATCH with ARG %s", &v67[*(v234 + *(v68[7] + 8 * v70 + 4))]);
        v239 = 0;
        v208 = 0;
        v218 = 0;
        v85 = 0;
        v228 = 0;
        v86 = 0;
        v231 = 0;
        v229 = *(v234 + *(v68[7] + 8 * v70 + 4));
        v221 = a1[45];
        __s2 = 0;
        v220 = a1[46];
        v257 = 0;
        v255 = 0;
        v254 = 0;
        v87 = 1;
        while (1)
        {
          v88 = v85;
          v89 = v87;
          v256 = -1;
          v90 = a1[57];
          v91 = a1[60];
          v92 = a1[54];
          if (v89)
          {
            cstdlib_strncpy(v90, &v91[LOWORD(v92[12 * v233])], WORD1(v92[12 * v233]) - LOWORD(v92[12 * v233]));
            *(a1[57] + WORD1(a1[54][12 * v233]) - LOWORD(a1[54][12 * v233])) = 0;
            v242 = (a1[50][12])(a1[48], a1[49], v221, a1[57], &v257, &v256, &v255);
            if ((v242 & 0x80000000) != 0)
            {
              goto LABEL_346;
            }

            if (v256 != 1 || (v93 = "MATCH ON FIRST WORD", !v257))
            {
              v94 = v88;
              goto LABEL_155;
            }
          }

          else
          {
            cstdlib_strncpy(v90, &v91[LOWORD(v92[12 * v217])], WORD1(v92[12 * v217]) - LOWORD(v92[12 * v217]));
            *(a1[57] + WORD1(a1[54][12 * v217]) - LOWORD(a1[54][12 * v217])) = 0;
            cstdlib_strncpy(__s1, a1[57], 0x7FuLL);
            v259 = 0;
            v59 = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
            if ((v59 & 0x80000000) != 0)
            {
              goto LABEL_347;
            }

            v242 = (a1[50][12])(a1[48], a1[49], v220, __s1, &v257, &v256, &v255);
            if ((v242 & 0x80000000) != 0)
            {
LABEL_346:
              v76 = v242;
              goto LABEL_354;
            }

            if (v256 != 1 || (v93 = "MATCH ON LAST WORD", !v257))
            {
              v94 = v88;
LABEL_227:
              v111 = 0;
              v152 = v231 == 1;
              if (v231 != 1)
              {
                v88 = v94;
                v94 = __s2;
                goto LABEL_240;
              }

              v153 = v226;
              if (!v86)
              {
                v254 = 1;
                v251 = v94;
                v154 = v228;
                goto LABEL_244;
              }

              v88 = v94;
              v94 = __s2;
LABEL_241:
              if (!v231 && v86 == 1)
              {
                v254 = 1;
                v251 = v94;
                v154 = v218;
LABEL_244:
                v248 = v154;
LABEL_245:
                v19 = v243;
LABEL_246:
                v68 = v235;
                v84 = v226;
                v156 = *(v235[7] + v226);
                LODWORD(v250) = *v235;
                v249 = v156;
                v238 = 1;
                v65 = 1;
                goto LABEL_260;
              }

              if (v86 != 1)
              {
                v152 = 0;
              }

              if (v152)
              {
                v254 = 1;
                if (!cstdlib_strcmp(v88, v94))
                {
                  v254 = 1;
                  v251 = v88;
                  v248 = v228;
                  heap_Free((*a1)[1], v94);
                  goto LABEL_273;
                }

                if (v208 > v111)
                {
                  v254 = 1;
                  v251 = v88;
                  v248 = v228;
                  heap_Free((*a1)[1], v94);
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH in FIRST and LAST word PRM; chose FIRST on frequency (%d > %d) set PRM=%s");
                  goto LABEL_273;
                }

                if (v111 > v208)
                {
                  v254 = 1;
                  v251 = v94;
                  v248 = v218;
                  heap_Free((*a1)[1], v88);
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH in FIRST and LAST word PRM; chose LAST on frequency (%d > %d) set PRM=%s");
LABEL_273:
                  v65 = v254;
                  v19 = v243;
                  if (v254 == 1)
                  {
                    goto LABEL_246;
                  }

                  v238 = v254;
LABEL_118:
                  v68 = v235;
                  v84 = v226;
                  goto LABEL_260;
                }

                heap_Free((*a1)[1], v88);
                heap_Free((*a1)[1], v94);
                v161 = (*a1)[1];
                v162 = cstdlib_strlen("LS");
                v163 = heap_Calloc(v161, 1, (v162 + 1));
                v251 = v163;
                if (v163)
                {
                  v164 = v163;
                  cstdlib_strcpy(v163, "LS");
                  v248 = 1;
                  v254 = 1;
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MISMATCH in FIRST and LAST word PRM; set default=%s", v164);
                  goto LABEL_245;
                }

                goto LABEL_351;
              }

              v238 = 0;
              v65 = 0;
              v254 = 0;
              v19 = v243;
              v84 = v153;
LABEL_205:
              v68 = v235;
              goto LABEL_260;
            }
          }

          log_OutText((*a1)[4], "FE_POS", 5, 0, v93, 0);
          v95 = cstdlib_strchr(*v257, v255);
          if (!v95)
          {
            goto LABEL_348;
          }

          *v95 = 0;
          v96 = v95 + 1;
          v97 = cstdlib_strcmp(*v257, &v67[v229]);
          v98 = cstdlib_strchr(v96, v255);
          if (!v98)
          {
            goto LABEL_349;
          }

          v99 = v98;
          *v98 = 0;
          if (!v97 || v239 == 1)
          {
            v100 = (*a1)[1];
            v101 = cstdlib_strlen(v96);
            v102 = heap_Calloc(v100, 1, (v101 + 1));
            if (!v102)
            {
              goto LABEL_351;
            }

            v94 = v102;
            v103 = __s2;
            if ((v89 & 1) == 0)
            {
              v103 = v102;
            }

            v212 = v103;
            v104 = v218;
            if ((v89 & 1) == 0)
            {
              v104 = 1;
            }

            v211 = v104;
            if (v89)
            {
              v105 = v102;
            }

            else
            {
              v105 = v88;
            }

            v210 = v105;
            v106 = v228;
            if (v89)
            {
              v106 = 1;
            }

            v209 = v106;
            if (v89)
            {
              v107 = v86;
            }

            else
            {
              v107 = 1;
            }

            if (v89)
            {
              v108 = 1;
            }

            else
            {
              v108 = v231;
            }

            cstdlib_strcpy(v102, v96);
            v109 = cstdlib_strchr(v99 + 1, v255);
            if (v109)
            {
              *v109 = 0;
              v110 = LH_atoi(v99 + 1);
              v111 = v110;
              if ((v89 & 1) == 0)
              {
                v152 = v231 == 1;
                v86 = 1;
                v218 = 1;
                v67 = v241;
LABEL_240:
                v153 = v226;
                goto LABEL_241;
              }

              v239 = 1;
              v231 = 1;
              v228 = 1;
              v208 = v110;
            }

            else
            {
              v239 = 1;
              v231 = v108;
              v86 = v107;
              v228 = v209;
              v94 = v210;
              v218 = v211;
              __s2 = v212;
            }
          }

          else
          {
            v94 = v88;
          }

          v67 = v241;
LABEL_155:
          v87 = 0;
          v85 = v94;
          if ((v89 & 1) == 0)
          {
            goto LABEL_227;
          }
        }
      }

      if (!cstdlib_strcmp("ALGO_EXTENDEDFIRSTWORDLEXMATCH", &v67[*(v234 + *(v68[7] + v69))]))
      {
        v84 = v69;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_EXTENDEDFIRSTWORDLEXMATCH with ARG %s", &v67[*(v234 + *(v68[7] + 8 * v70 + 4))]);
        v112 = *(v234 + *(v68[7] + 8 * v70 + 4));
        v113 = a1[45];
        *__s1 = 0;
        LOBYTE(v256) = 0;
        v254 = 0;
        LOWORD(v257) = -1;
        cstdlib_strncpy(a1[57], a1[60] + LOWORD(a1[54][12 * v233]), WORD1(a1[54][12 * v233]) - LOWORD(a1[54][12 * v233]));
        *(a1[57] + WORD1(a1[54][12 * v233]) - LOWORD(a1[54][12 * v233])) = 0;
        v114 = (a1[50][12])(a1[48], a1[49], v113, a1[57], __s1, &v257, &v256);
        v76 = v114;
        if ((v114 & 0x80000000) != 0)
        {
          goto LABEL_354;
        }

        v242 = v114;
        if (v257 != 1 || !*__s1)
        {
          v118 = 0;
          v254 = 0;
          goto LABEL_204;
        }

        log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH ON FIRST WORD", 0);
        v115 = cstdlib_strchr(**__s1, v256);
        if (v115)
        {
          v116 = v115;
          *v115 = 0;
          v117 = cstdlib_strcmp(**__s1, &v241[v112]);
          v118 = 0;
          if (!v117)
          {
            v118 = 1;
            v254 = 1;
          }

          v119 = cstdlib_strchr(v116 + 1, v256);
          if (v119)
          {
            *v119 = 0;
            if (!v117)
            {
              v120 = (*a1)[1];
              v121 = cstdlib_strlen(v116 + 1);
              v122 = heap_Calloc(v120, 1, (v121 + 1));
              v251 = v122;
              v68 = v235;
              if (!v122)
              {
                goto LABEL_351;
              }

              cstdlib_strcpy(v122, v116 + 1);
              LODWORD(v250) = *v235;
              v123 = *(v235[7] + v84);
              v238 = 1;
              v248 = 1;
              v249 = v123;
              v65 = 1;
              v19 = v243;
              goto LABEL_233;
            }

LABEL_204:
            v238 = v118;
            v65 = v118;
            v19 = v243;
            v67 = v241;
            goto LABEL_205;
          }

          v200 = 35003;
        }

        else
        {
          v200 = 35002;
        }

        v76 = 2313166848;
LABEL_352:
        v201 = (*a1)[4];
LABEL_353:
        log_OutPublic(v201, "FE_POS", v200, 0);
        goto LABEL_354;
      }

      if (cstdlib_strcmp("FILTER_NO_TOKEN_NO_ABBREVIATION", &v67[*(v234 + *(v68[7] + v69))]))
      {
        if (cstdlib_strcmp("FILTER_BLOCK_ACROSS_TOKEN_BOUNDARIES", &v67[*(v234 + *(v68[7] + v69))]))
        {
          if (cstdlib_strcmp("ELSE_IGNORE", &v67[*(v234 + *(v68[7] + v69))]))
          {
            log_OutText((*a1)[4], "FE_POS", 5, 0, "    UNIMPLEMENTED filter %s - skip", &v67[*(v234 + *(v68[7] + v69))]);
          }

          else
          {
            v205 = 1;
          }

          v84 = v69;
        }

        else
        {
          v84 = v69;
          log_OutText((*a1)[4], "FE_POS", 5, 0, "    call FILTER_BLOCK_ACROSS_TOKEN_BOUNDARIES", 0);
          v254 = 1;
          v146 = a1[54];
          v147 = v19;
          while (1)
          {
            v148 = v147;
            v149 = 3 * v147;
            log_OutText((*a1)[4], "FE_POS", 5, 0, "    word %d token=%d", v147, LODWORD(v146[12 * v147 + 1]));
            v146 = a1[54];
            v150 = &v146[4 * v149];
            v19 = v243;
            if (*(v150 + 2) == 1 && (v148 != v243 && !LODWORD(v146[12 * v148 - 11]) || v148 != v244 && !LODWORD(v146[12 * v148 + 13])))
            {
              break;
            }

            v147 = v148 + 1;
            if ((v148 + 1) > v244)
            {
              v242 = 0;
              v238 = 1;
              v65 = 1;
              v207 = 1;
              goto LABEL_235;
            }
          }

          v238 = 0;
          v65 = 0;
          v242 = 0;
          v254 = 0;
LABEL_235:
          v67 = v241;
        }

        goto LABEL_260;
      }

      v227 = v69;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "    call FILTER_NO_TOKEN_NO_ABBREVIATION", 0);
      v124 = v19;
      v125 = 0;
      v240 = 0;
      v126 = 0;
      v242 = 0;
      v232 = *(a1 + 174);
      v230 = a1[44];
      v254 = 1;
      do
      {
        v127 = v124;
        v128 = 3 * v124;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    word %d token=%d singleChar=%d hyphen=%d", v124, LODWORD(a1[54][4 * v128 + 1]), LOWORD(a1[54][4 * v128]) + 1 == WORD1(a1[54][4 * v128]), LODWORD(a1[54][4 * v128 + 2]));
        v129 = a1[54];
        v130 = &v129[4 * v128];
        if (*(v130 + 2) == 1)
        {
          v151 = 0;
          v238 = 0;
          v254 = 0;
LABEL_223:
          v19 = v243;
          goto LABEL_256;
        }

        if (*(v130 + 4) == 1)
        {
          v131 = v240 + 1;
        }

        else
        {
          v131 = v240;
        }

        v240 = v131;
        v132 = v244;
        if (v127 == v244)
        {
          cstdlib_strncpy(a1[52], a1[60] + *v130, v130[1] - *v130);
          v133 = &a1[54][12 * v127];
          *(a1[52] + v133[1] - *v133) = 0;
          cstdlib_strncpy(__s1, a1[52], 0x7FuLL);
          v259 = 0;
          v242 = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
          if ((v242 & 0x80000000) != 0)
          {
            goto LABEL_346;
          }

          log_OutText((*a1)[4], "FE_POS", 5, 0, "    check canonical form %s for last word (in case abbreviation)", __s1);
          v134 = v232;
          if (v232)
          {
            v135 = 0;
            v136 = v230;
            do
            {
              v137 = cstdlib_strstr(__s1, *v136);
              if (v137)
              {
                v138 = v137 - __s1 == 1;
              }

              else
              {
                v138 = 0;
              }

              if (v138)
              {
                *v137 = 0;
                if (LODWORD(a1[54][12 * v127 + 2]) == 1)
                {
                  ++v125;
                }

                v126 = v126;
                v135 = 1;
              }

              ++v136;
              --v134;
            }

            while (v134);
            if (!v135)
            {
              v126 = 0;
            }

            v67 = v241;
          }

          else
          {
            v126 = 0;
          }

          v129 = a1[54];
          if (LOWORD(v129[12 * v127]) + 1 != WORD1(v129[12 * v127]))
          {
            if (cstdlib_strlen(__s1) != 1)
            {
              v132 = v244;
              goto LABEL_200;
            }

            v129 = a1[54];
          }

          v132 = v244;
        }

        else if (*v130 + 1 != v130[1])
        {
          goto LABEL_200;
        }

        if (LODWORD(v129[12 * v127 + 2]) == 1)
        {
          ++v125;
        }

        if (v127 == v243)
        {
          v126 = 1;
        }

LABEL_200:
        v124 = v127 + 1;
      }

      while ((v127 + 1) <= v132);
      if (v126)
      {
        v254 = 0;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    found abbreviation", 0);
        v151 = 0;
        v238 = 0;
        goto LABEL_223;
      }

      if (v125 == v240)
      {
        v254 = 0;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    found abbreviation (countHyphenSingleChar=%d,countHyphen=%d)", v240, v240);
        v151 = 0;
        v238 = 0;
      }

      else
      {
        v151 = 1;
        v238 = 1;
      }

      v19 = v243;
LABEL_256:
      v68 = v235;
      v84 = v227;
      v76 = v242;
      if ((v242 & 0x80000000) != 0)
      {
        goto LABEL_354;
      }

      v50 = v151 == 0;
      v157 = v207;
      if (!v50)
      {
        v157 = 1;
      }

      v207 = v157;
      v65 = v238;
LABEL_260:
      if (cstdlib_strncmp(&v67[*(v234 + *(v68[7] + v84))], "FILTER_", 7uLL))
      {
        v158 = 0;
      }

      else
      {
        v158 = v65 == 1;
      }

      if (v158)
      {
        v65 = 1;
        goto LABEL_268;
      }

      v159 = cstdlib_strncmp(&v67[*(v234 + *(v68[7] + v84))], "FILTER_", 7uLL);
      v160 = v238;
      if (!(v159 | v238))
      {
        v166 = "  [FILTER] FAIL";
LABEL_288:
        v165 = v160 == 1;
        v76 = v242;
        goto LABEL_279;
      }

      v65 = v238;
      if (v238 == 1)
      {
        v166 = "  [FILTER] SUCCESS";
        v160 = 1;
        goto LABEL_288;
      }

LABEL_268:
      v68 = v235;
      v66 = v236 + 1;
    }

    while (v236 + 1 < *(v235 + 32));
    if (v207 != 1)
    {
      v76 = v242;
      goto LABEL_278;
    }

    v76 = v242;
    if (v205 == 1)
    {
      v165 = 0;
      v254 = 0;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "  [FILTER] SUCCESS but ELSE_IGNORE set so FAIL", 0);
LABEL_280:
      v49 = v244;
      if ((v76 & 0x80000000) != 0)
      {
        goto LABEL_354;
      }

      if (v165)
      {
        v48 = 1;
        v206 = v244;
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    v48 = 1;
    v254 = 1;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "  [FILTER] SUCCESS", 0);
    v49 = v244;
    v206 = v244;
    if ((v242 & 0x80000000) != 0)
    {
      goto LABEL_354;
    }

LABEL_87:
    v39 = v245;
  }

  while (v49 >= v19);
  if (v48 != 1)
  {
    goto LABEL_57;
  }

  log_OutText((*a1)[4], "FE_POS", 5, 0, "COMPOUND WORD SUCCESSFULLY PROCESSED %d to %d", v39, v206);
  v168 = v253;
  v169 = &a1[9][15 * v253];
  if (*(v169 + 48))
  {
    v170 = 0;
    v171 = 0;
    v172 = a1[39];
    v173 = a1[40];
    while (cstdlib_strcmp("SETDEFAULT", &v172[*(v173 + *(v169[11] + v170))]))
    {
      log_OutText((*a1)[4], "FE_POS", 5, 0, "UNIMPLEMENTED POS rule %s %s - skip", &v172[*(v173 + *(v169[11] + v170))], &v172[*(v173 + *(v169[11] + v170 + 4))]);
      ++v171;
      v170 += 8;
      if (v171 >= *(v169 + 48))
      {
        goto LABEL_301;
      }
    }

    v174 = &v172[*(v173 + *(v169[11] + v170 + 4))];
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET SETDEFAULT POS = %s");
  }

  else
  {
LABEL_301:
    v174 = &szStatCOMPDEFAULTPOS;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET HARDCODED DEFAULT POS %s");
  }

  v175 = &a1[9][15 * v168];
  if (!*(v175 + 56))
  {
LABEL_321:
    v189 = "LS";
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET HARDCODED DEFAULT PROM %s");
LABEL_322:
    v190 = 0;
    v191 = "DEFAULT";
LABEL_323:
    v184 = a1[54];
    LOBYTE(v184[12 * v233 + 11]) = 1;
    v19 = v206;
    BYTE1(v184[12 * v206 + 11]) = 1;
    v59 = setCOMPValues(a1, v243, v206, &v248, v174, v189, v190, v191, v215);
    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_347;
    }

    *v213 = 1;
    goto LABEL_57;
  }

  v176 = 0;
  v177 = 0;
  v246 = a1[20];
  v178 = a1[39];
  v179 = a1[40];
  v180 = v248;
  v181 = v249;
  while (2)
  {
    if (!cstdlib_strcmp("MATCHED_ALGO_INLEXICON", &v178[*(v179 + *(v175[13] + v176))]))
    {
      if (v180 == 1 && !cstdlib_strcmp("ALGO_INLEXICON", &v178[*(v179 + v181)]))
      {
        v189 = v251;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_INLEXICON : CACHED(ALGO_INLEXICON) PROM = %s", v251);
        v190 = v252;
        v191 = &szStatCOMPSRCLEX;
        goto LABEL_323;
      }

LABEL_320:
      ++v177;
      v176 += 8;
      if (v177 >= *(v175 + 56))
      {
        goto LABEL_321;
      }

      continue;
    }

    break;
  }

  if (!cstdlib_strcmp("MATCHED_ALGO_EXTENDEDLEXMATCH", &v178[*(v179 + *(v175[13] + v176))]))
  {
    if (v180 == 1 && !cstdlib_strcmp("ALGO_EXTENDEDLEXMATCH", &v178[*(v179 + v181)]))
    {
      v189 = v251;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_EXTENDEDLEXMATCH : CACHED(ALGO_EXTENDEDLEXMATCH) PROM = %s", v251);
      v190 = 0;
      v191 = "EXTENDEDLEX";
      goto LABEL_323;
    }

    goto LABEL_320;
  }

  if (!cstdlib_strcmp("MATCHED_ALGO_EXTENDEDFIRSTWORDLEXMATCH", &v178[*(v179 + *(v175[13] + v176))]))
  {
    if (v180 == 1 && !cstdlib_strcmp("ALGO_EXTENDEDFIRSTWORDLEXMATCH", &v178[*(v179 + v181)]))
    {
      v189 = v251;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_EXTENDEDFIRSTWORDLEXMATCH : CACHED(ALGO_EXTENDEDFIRSTWORDLEXMATCH) PROM = %s", v251);
      v190 = 0;
      v191 = "EXTENDEDFIRSTWORDLEX";
      goto LABEL_323;
    }

    goto LABEL_320;
  }

  v182 = cstdlib_strcmp("IGTREE", &v178[*(v179 + *(v175[13] + v176))]);
  v183 = v175[13];
  if (v182)
  {
    if (!cstdlib_strcmp("SETDEFAULT", &v178[*(v179 + *(v183 + v176))]))
    {
      v189 = &v178[*(v179 + *(v175[13] + v176 + 4))];
      log_OutText((*a1)[4], "FE_POS", 5, 0, "SET SETDEFAULT PROM = %s");
      goto LABEL_322;
    }

    log_OutText((*a1)[4], "FE_POS", 5, 0, "UNIMPLEMENTED PROM rule %s - skip", &v178[*(v179 + *(v175[13] + v176))]);
    goto LABEL_320;
  }

  v185 = *(a1 + 72);
  if (*(a1 + 72))
  {
    v186 = 0;
    v187 = *(v179 + *(v183 + v176 + 4));
    v188 = a1[20];
    while (cstdlib_strcmp(v188[v186], &v178[v187]))
    {
      if (v185 == ++v186)
      {
        goto LABEL_329;
      }
    }
  }

  else
  {
LABEL_329:
    LOWORD(v186) = 0;
  }

  v192 = a1[20];
  v193 = a1[21][v186];
  v194 = heap_Calloc((*a1)[1], 1, 8 * *(v193 + 1296) - 8);
  if (!v194)
  {
    v76 = 2313166858;
    v201 = (*a1)[4];
    v200 = 35000;
    goto LABEL_353;
  }

  v195 = v194;
  *__s1 = 0;
  inited = statcomp_initFeatureVector(*a1, v194, (*(v193 + 1296) - 1));
  if ((inited & 0x80000000) != 0 || (inited = setStatCOMPFeatureVector(v186, a1, v243, v206, v195), (inited & 0x80000000) != 0) || (inited = igtree_Process(v193, v195, __s1), (inited & 0x80000000) != 0))
  {
    v197 = inited;
    v189 = 0;
  }

  else
  {
    v189 = *__s1;
    v197 = statcomp_dumpFeatureVectorAndResult(*a1, *(a1 + 107), a1 + 51, a1 + 212, "IGTREE RESULT=", v192[v186], v193, v195, *__s1);
  }

  statcomp_freeFeatureVector(*a1, v195, (*(v193 + 1296) - 1));
  heap_Free((*a1)[1], v195);
  v76 = v197;
  if ((v197 & 0x80000000) == 0)
  {
    v191 = v246[v186];
    v198 = cstdlib_strcmp(v189, "=");
    v199 = (*a1)[4];
    if (v198)
    {
      log_OutText(v199, "FE_POS", 5, 0, "SET IGTREE %s PROM = %s");
    }

    else
    {
      v189 = "LS";
      log_OutText(v199, "FE_POS", 5, 0, "OVERRIDE IGTEE NULL VALUE : SET DEFAULT PROM %s");
    }

    v190 = 0;
    goto LABEL_323;
  }

LABEL_354:
  if (v251)
  {
    heap_Free((*a1)[1], v251);
    if (v252)
    {
      heap_Free((*a1)[1], v252);
    }
  }

  v202 = a1[57];
  if (v202)
  {
    heap_Free((*a1)[1], v202);
    a1[57] = 0;
  }

  v203 = a1[58];
  if (v203)
  {
    heap_Free((*a1)[1], v203);
    a1[58] = 0;
  }

  return v76;
}

uint64_t isCompoundWordMember(uint64_t a1, int a2, uint64_t a3, unsigned int a4, _DWORD *a5, _WORD *a6, unsigned __int16 *a7)
{
  memcpy(__dst, (a1 + 8), 0x178uLL);
  v13 = a4 - a3 + 1;
  v52 = 0uLL;
  *a5 = 0;
  v14 = 96 * a3;
  v48 = a4;
  v15 = 3 * a4;
  cstdlib_strncpy(*(a1 + 416), (*(a1 + 480) + *(*(a1 + 432) + v14)), *(*(a1 + 432) + 32 * v15 + 2) - *(*(a1 + 432) + v14));
  *(*(a1 + 416) - *(*(a1 + 432) + v14) + *(*(a1 + 432) + 32 * v15 + 2)) = 0;
  v49 = a3;
  log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] Check word[%d] %s %d words", a3, *(a1 + 416), v13);
  matched = 0;
  v17 = &__dst[12];
  v18 = &__dst[13];
  if (a2)
  {
    v17 = &__dst[10];
    v18 = &__dst[11];
  }

  v46 = a7;
  v19 = *a7;
  v51 = *v18;
  if (v19 >= v51)
  {
    goto LABEL_51;
  }

  matched = 0;
  v20 = v13;
  v50 = *v17;
  v44 = a5;
  while (1)
  {
    v21 = *(v50 + 2 * v19);
    v22 = (__dst[8] + 120 * v21);
    if (v20 != *(v22 + 16))
    {
      goto LABEL_50;
    }

    v47 = v19;
    log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    TRYING RULE label=%s (%d words) compound word rule idx=%d", (__dst[38] + *(__dst[39] + 4 * *v22)), v20, v21);
    if (!v20)
    {
      break;
    }

    v23 = 0;
    v24 = 0;
    v25 = *(a1 + 432);
    v26 = 96 * v49;
    v27 = v49;
    do
    {
      if (*(v25 + v26 + 12) == 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v24;
      }

      if (a2)
      {
        v29 = *(*(__dst[8] + 120 * v21 + 8) + 4 * v23);
        v30 = v29 == 1 && v28 == 0;
        v31 = "      Membership fails on wordType. Word %d is not hyphenated";
        if (v30 || (!v29 ? (v32 = v28 == 1) : (v32 = 0), v31 = "      Membership fails on wordType. Word %d should not be hyphenated)", v32))
        {
LABEL_21:
          log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, v31, v27);
          v33 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        v31 = "      Membership fails on wordType. Word %d is hyphenated";
        if (v28 == 1)
        {
          goto LABEL_21;
        }
      }

      v33 = 1;
LABEL_24:
      v25 = *(a1 + 432);
      if (*(v25 + v26 + 20) == 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = v28;
      }

      if (!v33)
      {
        break;
      }

      ++v23;
      v27 = (v27 + 1);
      v26 += 96;
    }

    while (v23 < v20);
    if (v33)
    {
      break;
    }

LABEL_49:
    a5 = v44;
    v19 = v47;
LABEL_50:
    if (++v19 == v51)
    {
LABEL_51:
      log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] FAIL", 0);
      *a5 = 0;
      return matched;
    }
  }

  if (*(__dst[8] + 120 * v21 + 32))
  {
    v34 = 0;
    v35 = 0;
    v36 = 96 * v49 + 32;
    while (1)
    {
      cstdlib_strncpy(*(a1 + 456), (*(a1 + 480) + *(*(a1 + 432) + v36 - 32)), *(*(a1 + 432) + v36 - 30) - *(*(a1 + 432) + v36 - 32));
      *(*(a1 + 456) - *(*(a1 + 432) + v36 - 32) + *(*(a1 + 432) + v36 - 30)) = 0;
      cstdlib_strcpy(*(a1 + 464), *(*(a1 + 432) + v36));
      v37 = " ";
      if (*(*(a1 + 432) + v36 - 24) == 1)
      {
        v37 = &szStatCOMPHASTOK;
      }

      *(a1 + 472) = v37;
      WORD2(v52) = v49 + v35;
      LODWORD(v52) = 2;
      *(&v52 + 6) = 0;
      HIDWORD(v52) = 0;
      matched = statcomp_matchRule(*(a1 + 428), (a1 + 408), (a1 + 424), *(a1 + 416), __dst, a1 + 432, &v52, (*(__dst[8] + 120 * v21 + 24) + v34), &v52 + 3);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v38 = *(__dst[0] + 32);
      if (HIDWORD(v52) != 1)
      {
        log_OutText(v38, "FE_POS", 5, 0, "      Membership rule %d FAILS", v35);
        log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    Membership FAIL on WORDN criteria - try extra rules...", 0);
        if (!*(__dst[8] + 120 * v21 + 48))
        {
          log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "      no extra membership rules - FAIL", 0);
          log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] FAIL", 0);
          goto LABEL_49;
        }

        cstdlib_strncpy(*(a1 + 456), (*(a1 + 480) + *(*(a1 + 432) + 96 * v49)), *(*(a1 + 432) + 96 * v48 + 2) - *(*(a1 + 432) + 96 * v49));
        *(*(a1 + 456) - *(*(a1 + 432) + 96 * v49) + *(*(a1 + 432) + 96 * v48 + 2)) = 0;
        cstdlib_strcpy(*(a1 + 464), *(*(a1 + 432) + 96 * v49 + 32));
        if (v48 >= (v49 + 1))
        {
          v39 = v49 + 1;
          do
          {
            cstdlib_strcat(*(a1 + 464), " ");
            cstdlib_strcat(*(a1 + 464), *(*(a1 + 432) + 96 * v39++ + 32));
          }

          while (v48 >= v39);
        }

        log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "      apply %d extra membership rules on ORT %s and POS %s", *(__dst[8] + 120 * v21 + 48), *(a1 + 456), *(a1 + 464));
        v40 = __dst[8];
        v19 = v47;
        a5 = v44;
        if (*(__dst[8] + 120 * v21 + 48))
        {
          v41 = 0;
          v42 = 0;
          while (1)
          {
            WORD2(v52) = v49;
            LODWORD(v52) = 2;
            *(&v52 + 6) = 0;
            HIDWORD(v52) = 0;
            matched = statcomp_matchRule(*(a1 + 428), (a1 + 408), (a1 + 424), *(a1 + 416), __dst, a1 + 432, &v52, (*(v40 + 120 * v21 + 40) + v41), &v52 + 3);
            if ((matched & 0x80000000) != 0)
            {
              return matched;
            }

            if (HIDWORD(v52) == 1)
            {
              log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "        membership extra rule %d SUCCEEDS. Membership SUCCEEDS", v42);
              *v44 = 1;
              *a6 = v21;
              *v46 = v47;
              goto LABEL_53;
            }

            log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "        membership extra rule %d FAIL", v42++);
            v40 = __dst[8];
            v41 += 24;
            if (v42 >= *(__dst[8] + 120 * v21 + 48))
            {
              goto LABEL_50;
            }
          }
        }

        goto LABEL_50;
      }

      log_OutText(v38, "FE_POS", 5, 0, "      Membership rule %d SUCCEEDS", v35++);
      v34 += 24;
      v36 += 96;
      if (v35 >= *(__dst[8] + 120 * v21 + 32))
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
LABEL_52:
    log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    Membership SUCCESS on WORDN criteria", 0);
    *v44 = 1;
    *a6 = v21;
    *v46 = v47;
LABEL_53:
    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] SUCCESS", 0);
  }

  return matched;
}

uint64_t setCOMPValues(uint64_t *a1, unsigned int a2, unsigned int a3, _DWORD *a4, const char *a5, const char *a6, char *a7, const char *a8, const char *a9)
{
  if (a2 > a3)
  {
    return 0;
  }

  if (a8)
  {
    v13 = a9 == 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = !v13 && *(a1 + 9) == 1;
  v34 = a1[40];
  v35 = a1[39];
  v16 = a2;
  while (1)
  {
    if (v15)
    {
      v17 = cstdlib_strlen(a8);
      v18 = v17 + cstdlib_strlen(a9);
      if (*a4 == 1)
      {
        v18 += 2 + cstdlib_strlen((v35 + *(v34 + 4 * a4[2])));
      }

      v19 = v18 + 4;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(*a1 + 8);
    v21 = cstdlib_strlen(a6);
    v22 = heap_Calloc(v20, 1, v21 + v19 + 3);
    *(a1[54] + 96 * v16 + 80) = v22;
    v23 = *a1;
    if (!v22)
    {
      break;
    }

    v24 = *(v23 + 8);
    v25 = cstdlib_strlen(a5);
    v26 = heap_Calloc(v24, 1, (v25 + 3));
    *(a1[54] + 96 * v16 + 72) = v26;
    if (!v26)
    {
      goto LABEL_33;
    }

    if (a7)
    {
      v27 = cstdlib_strchr(a7, 32);
      v28 = v27;
      if (v27)
      {
        *v27 = 0;
      }

      v29 = *(*a1 + 8);
      v30 = cstdlib_strlen(a7);
      v31 = heap_Calloc(v29, 1, (v30 + 1));
      *(a1[54] + 96 * v16 + 64) = v31;
      if (!v31)
      {
LABEL_33:
        v23 = *a1;
        break;
      }

      cstdlib_strcpy(v31, a7);
      if (v28)
      {
        a7 = v28 + 1;
      }
    }

    if (a2 == v16)
    {
      v32 = "B-";
    }

    else
    {
      v32 = "I-";
    }

    cstdlib_strcpy(*(a1[54] + 96 * v16 + 80), v32);
    cstdlib_strcpy(*(a1[54] + 96 * v16 + 72), v32);
    cstdlib_strcat(*(a1[54] + 96 * v16 + 80), a6);
    if (v15)
    {
      cstdlib_strcat(*(a1[54] + 96 * v16 + 80), "+");
      cstdlib_strcat(*(a1[54] + 96 * v16 + 80), a9);
      cstdlib_strcat(*(a1[54] + 96 * v16 + 80), "+");
      cstdlib_strcat(*(a1[54] + 96 * v16 + 80), a8);
      if (*a4 == 1)
      {
        cstdlib_strcat(*(a1[54] + 96 * v16 + 80), "+");
        cstdlib_strcat(*(a1[54] + 96 * v16 + 80), (v35 + *(v34 + 4 * a4[2])));
      }
    }

    cstdlib_strcat(*(a1[54] + 96 * v16++ + 72), a5);
    if (a3 < v16)
    {
      return 0;
    }
  }

  log_OutPublic(*(v23 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t statcomp_saveCompoundsToLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  __s = 0;
  v54 = 0;
  v8 = *(a4 + 20);
  result = (*(a1 + 104))(a2, a3, 1, 0, &v59 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 104))(a2, a3, 2, HIWORD(v59), &v59);
    if ((result & 0x80000000) == 0)
    {
      v10 = v59;
      if (v59)
      {
        while (1)
        {
          result = (*(a1 + 168))(a2, a3, v10, 0, 1, &v57 + 4, &v58);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIDWORD(v57) <= 0xA && ((1 << SBYTE4(v57)) & 0x610) != 0)
          {
            result = (*(a1 + 168))(a2, a3, v59, 1, 1, &v57, &v58);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(a1 + 168))(a2, a3, v59, 2, 1, &v57 + 2, &v58);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (*(a4 + 440))
            {
              break;
            }
          }

LABEL_16:
          result = (*(a1 + 120))(a2, a3, v59, &v59);
          if ((result & 0x80000000) == 0)
          {
            v10 = v59;
            if (v59)
            {
              continue;
            }
          }

          return result;
        }

        v12 = 0;
        v13 = 0;
        v14 = WORD1(v57);
        v15 = *(a4 + 432);
        v16 = 1;
        while (*(v15 + v12) != v57 || !*(v15 + v12 + 80))
        {
          ++v13;
          v12 += 96;
          ++v16;
          if (96 * *(a4 + 440) == v12)
          {
            goto LABEL_16;
          }
        }

        v17 = 0;
        v18 = (v15 + 48);
        do
        {
          if (*(v18 - 1))
          {
            v19 = 1;
          }

          else
          {
            v19 = v17;
          }

          if (*v18)
          {
            v17 = 0;
          }

          else
          {
            v17 = v19;
          }

          v18 += 12;
          --v16;
        }

        while (v16);
        if (v57 > v14)
        {
          return 2313174705;
        }

        if (v14 == v57)
        {
          log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v57, WORD1(v57));
          goto LABEL_16;
        }

        result = (*(a1 + 184))(a2, a3, v59, 14, &v56);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v56 == 1)
        {
          result = (*(a1 + 176))(a2, a3, v59, 14, &__s, &v58);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v20 = *(a4 + 432) + v12;
          if (*(v20 + 40) || *(v20 + 48) || v17 == 1)
          {
            goto LABEL_64;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), __s);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), ";");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v8 == 1)
          {
            v21 = *(a4 + 432);
            v22 = **(v21 + v12 + 80);
            if (v22 == 73)
            {
              v52 = *(a4 + 440);
              if (96 * v52 - 96 != v12 && (v13 + 1 >= v52 || (v53 = *(v21 + v12 + 176)) != 0 && *v53 == 73))
              {
                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "I_COMP:");
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v12 + 80) + 2));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v23 = *a4;
                v24 = (a4 + 408);
                v25 = (a4 + 424);
                v26 = ";I_COMPPOS:";
              }

              else
              {
                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "E_COMP:");
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v12 + 80) + 2));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v23 = *a4;
                v24 = (a4 + 408);
                v25 = (a4 + 424);
                v26 = ";E_COMPPOS:";
              }
            }

            else
            {
              if (v22 != 66)
              {
LABEL_88:
                log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing Word[%d] (appended) NLU=%s");
                goto LABEL_62;
              }

              result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "S_COMP:");
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v12 + 80) + 2));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v23 = *a4;
              v24 = (a4 + 408);
              v25 = (a4 + 424);
              v26 = ";S_COMPPOS:";
            }

            result = statcomp_add2Str(v23, v24, v25, v26);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v47 = *a4;
            v49 = (a4 + 408);
            v50 = (a4 + 424);
            v48 = (*(*(a4 + 432) + v12 + 72) + 2);
          }

          else
          {
            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "COMP:");
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), *(*(a4 + 432) + v12 + 80));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), ";COMPPOS:");
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v47 = *a4;
            v48 = *(*(a4 + 432) + v12 + 72);
            v49 = (a4 + 408);
            v50 = (a4 + 424);
          }

          result = statcomp_add2Str(v47, v49, v50, v48);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_88;
        }

        if (v8 != 1)
        {
          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "COMP:");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), *(*(a4 + 432) + v12 + 80));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), ";COMPPOS:");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v33 = *a4;
          v34 = *(*(a4 + 432) + v12 + 72);
          v35 = (a4 + 408);
          v36 = (a4 + 424);
          goto LABEL_60;
        }

        v27 = *(a4 + 432);
        v28 = **(v27 + v12 + 80);
        if (v28 == 73)
        {
          v37 = *(a4 + 440);
          if (96 * v37 - 96 == v12 || v13 + 1 < v37 && ((v51 = *(v27 + v12 + 176)) == 0 || *v51 != 73))
          {
            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "E_COMP:");
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v12 + 80) + 2));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v29 = *a4;
            v30 = (a4 + 408);
            v31 = (a4 + 424);
            v32 = ";E_COMPPOS:";
            goto LABEL_58;
          }
        }

        else if (v28 == 66)
        {
          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "S_COMP:");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v12 + 80) + 2));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a4;
          v30 = (a4 + 408);
          v31 = (a4 + 424);
          v32 = ";S_COMPPOS:";
LABEL_58:
          result = statcomp_add2Str(v29, v30, v31, v32);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v33 = *a4;
          v35 = (a4 + 408);
          v36 = (a4 + 424);
          v34 = (*(*(a4 + 432) + v12 + 72) + 2);
LABEL_60:
          result = statcomp_add2Str(v33, v35, v36, v34);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing Word[%d] NLU=%s");
LABEL_62:
        v38 = *(a1 + 160);
        v39 = v59;
        v40 = cstdlib_strlen(*(a4 + 408));
        result = v38(a2, a3, v39, 14, (v40 + 1), *(a4 + 408), &v54);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        cstdlib_strcpy(*(a4 + 408), "");
LABEL_64:
        v41 = *(a4 + 432) + 96 * v13;
        v42 = *(v41 + 64);
        if (v42)
        {
          log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "updating Word[%d] compound word pronunciation from %s to %s", v13, *(v41 + 56), v42);
          v43 = *(a1 + 160);
          v44 = v59;
          v45 = 3 * v13;
          v46 = cstdlib_strlen(*(*(a4 + 432) + 32 * v45 + 64));
          result = v43(a2, a3, v44, 3, (v46 + 1), *(*(a4 + 432) + 32 * v45 + 64), &v58);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t statpos_get_info_from_dct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, char **a7, _DWORD *a8, const char *a9)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v14 = (*(a4 + 96))(a2, a3, a5, a6, &__c[3], &__c[1], __c);
  if ((v14 & 0x80001FFF) == 0x8000000A)
  {
    goto LABEL_2;
  }

  v15 = v14;
  if ((v14 & 0x80000000) != 0)
  {
    return 0;
  }

  if (*&__c[1])
  {
    v16 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v16)
    {
      *v16 = 0;
    }

    if (cstdlib_strcmp(a9, "STR"))
    {
      if (!cstdlib_strcmp(a9, "BOOL"))
      {
        *a8 = 0;
        if (!cstdlib_strcmp(**&__c[3], "1"))
        {
          *a8 = 1;
        }
      }
    }

    else
    {
      v18 = *(a1 + 8);
      v19 = cstdlib_strlen(**&__c[3]);
      v20 = heap_Calloc(v18, 1, (v19 + 1));
      *a7 = v20;
      if (!v20)
      {
LABEL_2:
        v15 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 34000, 0);
        return v15;
      }

      cstdlib_strcpy(v20, **&__c[3]);
      if (!cstdlib_strcmp("fecfg", a5))
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "set mde seg param %s = %s", a6, *a7);
      }
    }
  }

  return v15;
}

uint64_t _crfpos_concat_strings(uint64_t a1, uint64_t a2, char **a3)
{
  if (*(a2 + 8))
  {
    v6 = 0;
    LODWORD(v7) = 0;
    do
    {
      v7 = v7 + cstdlib_strlen(*(*a2 + 16 * v6++)) + 2;
    }

    while (*(a2 + 8) > v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = heap_Calloc(*(a1 + 8), 1, v7);
  *a3 = v8;
  if (v8)
  {
    if (*(a2 + 8))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        cstdlib_strcat(*a3, *(*a2 + 16 * v10));
        v11 = *(a2 + 8);
        if (v11 - 1 > v9)
        {
          cstdlib_strcat(*a3, " ");
          v11 = *(a2 + 8);
        }

        v9 = ++v10;
      }

      while (v11 > v10);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }
}

uint64_t statpos_get_broker_string(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = "";
  __s2 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__s1 = 0u;
  v9 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v6);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "crfpos_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v6);
      v5 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a2 = v5;
      if (v5)
      {
        return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, v5, 0x400uLL);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
        return 2313166858;
      }
    }
  }

  return result;
}

uint64_t _crfpos_parse_params(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!*(v2 + 40))
  {
    return 0;
  }

  v5 = 0;
  while (cstdlib_strcmp(*(*(v2 + 32) + 16 * v5), "features"))
  {
LABEL_26:
    ++v5;
    v2 = *(a2 + 8);
    if (v5 >= *(v2 + 40))
    {
      return 0;
    }
  }

  v6 = *(*(*(a2 + 8) + 32) + 16 * v5 + 8);
  v7 = cstdlib_strlen(v6);
  v8 = v7;
  *(a2 + 32) = 0;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7;
    v12 = v6;
    do
    {
      v13 = *v12++;
      v14 = v13 == 32;
      if (v10)
      {
        v10 = !v14;
      }

      else if (v14)
      {
        v10 = 0;
      }

      else
      {
        *(a2 + 32) = ++v9;
        v10 = 1;
      }

      --v11;
    }

    while (v11);
    v15 = 8 * v9 + 8;
  }

  else
  {
    v15 = 8;
  }

  v16 = heap_Calloc(*(a1 + 8), 1, v15);
  *(a2 + 24) = v16;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = v20;
      v22 = v6[v20];
      if (v22 == 32)
      {
        LOBYTE(v22) = 0;
        v23 = 0;
        v17 = 0;
        v24 = *(*(a2 + 24) + 8 * v19++);
      }

      else
      {
        if (v17)
        {
          v24 = *(*(a2 + 24) + 8 * v19);
        }

        else
        {
          *(*(a2 + 24) + 8 * v19) = heap_Alloc(*(a1 + 8), 64);
          v24 = *(*(a2 + 24) + 8 * v19);
          if (!v24)
          {
            goto LABEL_28;
          }

          LOBYTE(v22) = v6[v21];
        }

        v23 = v18 + 1;
        v17 = 1;
      }

      *(v24 + v18) = v22;
      v20 = v21 + 1;
      v18 = v23;
    }

    while (v21 + 1 <= v8);
    goto LABEL_26;
  }

LABEL_28:
  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t statpos_crf_load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t *a12, int a13)
{
  broker_string = statpos_get_broker_string(a5, a10);
  if ((broker_string & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  broker_string = crf_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, a10 + 1, 2, *a10, "CRPH", 1031, 0, 0);
  if ((broker_string & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  info_from_dct = _crfpos_parse_params(a5, a10);
  if ((info_from_dct & 0x80000000) == 0)
  {
    *(a10 + 4) = 1;
    if (a13 == 1)
    {
      v23 = heap_Calloc(*(a5 + 8), 1, 512);
      *(a11 + 296) = v23;
      if (!v23 || (*(a11 + 316) = 512, v24 = heap_Calloc(*(a5 + 8), 1, 128), (*(a11 + 304) = v24) == 0))
      {
LABEL_20:
        info_from_dct = 2313166858;
        log_OutPublic(*(a5 + 32), "FE_POS", 35000, 0);
        goto LABEL_13;
      }

      *(a11 + 320) = 32;
      *(a11 + 312) = 0;
      *(a11 + 324) = 0;
      broker_string = statpos_get_info_from_dct(a5, a7, a8, a9, "fecfg", "mdesegpos_nonfinalpunc", (a11 + 168), 0, "STR");
      if ((broker_string & 0x80000000) == 0)
      {
        info_from_dct = statpos_get_info_from_dct(a5, a7, a8, a9, "fecfg", "mdesegpos_finalpunc", (a11 + 176), 0, "STR");
        if ((info_from_dct & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v25 = heap_Calloc(*(a5 + 8), 1, 128);
        *a12 = v25;
        if (v25)
        {
          a12[2] = 128;
          v26 = heap_Calloc(*(a5 + 8), 1, 128);
          a12[1] = v26;
          if (v26)
          {
            a12[3] = 128;
            goto LABEL_13;
          }
        }

        goto LABEL_20;
      }

LABEL_12:
      info_from_dct = broker_string;
    }
  }

LABEL_13:
  if (*a10)
  {
    heap_Free(*(a5 + 8), *a10);
    *a10 = 0;
  }

  if ((info_from_dct & 0x80000000) != 0)
  {
    v27 = a10[1];
    if (v27)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(a5, a6, v27);
    }

    a10[1] = 0;
  }

  return info_from_dct;
}

uint64_t statpos_crf_unload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6)
{
  if (*a3)
  {
    heap_Free(*(a1 + 8), *a3);
    *a3 = 0;
  }

  if (*(a3 + 16) == 1)
  {
    v12 = *(a3 + 8);
    if (v12)
    {
      Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(a1, a2, v12);
      if ((Only_DereferenceCnt & 0x80000000) != 0)
      {
        return Only_DereferenceCnt;
      }

      *(a3 + 8) = 0;
    }

    else
    {
      Only_DereferenceCnt = 0;
    }

    *(a3 + 16) = 0;
  }

  else
  {
    Only_DereferenceCnt = 0;
  }

  v14 = *(a3 + 24);
  if (v14)
  {
    v15 = *(a3 + 32);
    if (v15 != 255)
    {
      v16 = 0;
      do
      {
        v17 = *(*(a3 + 24) + 8 * v16);
        if (v17)
        {
          heap_Free(*(a1 + 8), v17);
          LOBYTE(v15) = *(a3 + 32);
        }

        ++v16;
      }

      while (v16 < (v15 + 1));
      v14 = *(a3 + 24);
    }

    heap_Free(*(a1 + 8), v14);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  if (a6 == 1)
  {
    v18 = *(a4 + 296);
    if (v18)
    {
      heap_Free(*(a1 + 8), v18);
      *(a4 + 296) = 0;
      *(a4 + 316) = 0;
    }

    v19 = *(a4 + 304);
    if (v19)
    {
      heap_Free(*(a1 + 8), v19);
      *(a4 + 304) = 0;
      *(a4 + 320) = 0;
    }

    *(a4 + 312) = 0;
    *(a4 + 324) = 0;
    v20 = *(a4 + 168);
    if (v20)
    {
      heap_Free(*(a1 + 8), v20);
      *(a4 + 168) = 0;
    }

    v21 = *(a4 + 176);
    if (v21)
    {
      heap_Free(*(a1 + 8), v21);
      *(a4 + 176) = 0;
    }

    if (*a5)
    {
      heap_Free(*(a1 + 8), *a5);
      *a5 = 0;
    }

    v22 = a5[1];
    if (v22)
    {
      heap_Free(*(a1 + 8), v22);
      a5[1] = 0;
    }
  }

  return Only_DereferenceCnt;
}

uint64_t statpos_crf_label(uint64_t a1, uint64_t a2, unsigned __int16 *a3, void *a4, int a5)
{
  v69 = *MEMORY[0x277D85DE8];
  v67[0] = 0;
  v67[1] = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v10 = heap_Calloc(*(a1 + 8), 1, 8 * a3[4]);
  if (!v10)
  {
    v18 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v18;
  }

  v11 = v10;
  features = statpos_fv_new(a1, *(a2 + 32), v67);
  if ((features & 0x80000000) != 0)
  {
LABEL_14:
    v18 = features;
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "FEATURE VECTOR", 0);
  if (*(a2 + 32))
  {
    v13 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", *(*(a2 + 24) + 8 * v13++));
    }

    while (v13 < *(a2 + 32));
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "FEATURE VECTOR ENTRIES", 0);
  if (!a3[4])
  {
    goto LABEL_41;
  }

  v14 = 0;
  do
  {
    features = statpos_get_features(a1, a3, a4, v14, *(a2 + 24), *(a2 + 32), v67, 0);
    if ((features & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    features = _crfpos_concat_strings(a1, v67, &v66);
    if ((features & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    v15 = v66;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "features: %s", v66);
    v11[v14] = v15;
    v66 = 0;
    ++v14;
    v16 = a3[4];
  }

  while (v14 < v16);
  if (!a3[4])
  {
LABEL_41:
    v20 = 0;
    v19 = 0;
    goto LABEL_42;
  }

  if (*(*a3 + 72))
  {
    v17 = 0;
  }

  else
  {
    v42 = (*a3 + 232);
    v43 = 1;
    do
    {
      v44 = v43;
      if (v16 == v43)
      {
        break;
      }

      v45 = *v42;
      v42 += 80;
      ++v43;
    }

    while (!v45);
    v17 = v44 >= v16;
  }

  v20 = 0;
  v19 = 0;
  if (!a5 || v17)
  {
LABEL_42:
    if (v20 != 0 && v19 != 0)
    {
      v32 = "ON";
    }

    else
    {
      v32 = "OFF";
    }

    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Existing tags on words (ConstrainedDecoding:Keyword=%d:Actual=%s)", a5, v32);
    LODWORD(v33) = a3[4];
    if (v20 != 0 && v19 != 0 && a3[4])
    {
      v34 = 0;
      do
      {
        __s1[0] = 0;
        if (*(v19 + 4 * v34))
        {
          v35 = 0;
          do
          {
            cstdlib_strcat(__s1, *(*(v20 + 8 * v34) + 8 * v35));
            cstdlib_strcat(__s1, "  ");
            ++v35;
          }

          while (v35 < *(v19 + 4 * v34));
        }

        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", __s1);
        ++v34;
        v33 = a3[4];
      }

      while (v34 < v33);
    }

    v18 = crf_Process_Constrained(*(a2 + 8), v11, v33, &v65, &v64, v20, v19);
    if ((v18 & 0x80000000) == 0 && v64)
    {
      v36 = 0;
      v37 = 88;
      while (1)
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "predicted label: %s on word %d", *(v65 + 8 * v36), v36);
        v38 = cstdlib_strchr(*(v65 + 8 * v36), 32);
        if (v38)
        {
          *v38 = 0;
        }

        v39 = *(a1 + 8);
        v40 = cstdlib_strlen(*(v65 + 8 * v36));
        v41 = heap_Calloc(v39, 1, (v40 + 100));
        *(*a3 + v37) = v41;
        if (!v41)
        {
          break;
        }

        cstdlib_strcpy(v41, *(v65 + 8 * v36++));
        v37 += 160;
        if (v36 >= v64)
        {
          goto LABEL_17;
        }
      }

      v18 = 2313166858;
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    }

    goto LABEL_17;
  }

  v20 = heap_Calloc(*(a1 + 8), 1, 8 * v16);
  if (!v20)
  {
    v18 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    v19 = 0;
    goto LABEL_17;
  }

  v63 = a5;
  v19 = heap_Calloc(*(a1 + 8), 1, 4 * a3[4]);
  if (v19)
  {
    if (a3[4])
    {
      v46 = 0;
      while (1)
      {
        v47 = *a3 + 160 * v46;
        if (*(v47 + 128) && (v48 = *(v47 + 136)) != 0 && cstdlib_strcmp(v48, "") && ((v49 = a4[42]) != 0 && (v50 = "ns", cstdlib_strstr(v49, *(*a3 + 160 * v46 + 136))) || (v51 = a4[43]) != 0 && (v50 = "nt", cstdlib_strstr(v51, *(*a3 + 160 * v46 + 136))) || (v52 = a4[44]) != 0 && (v50 = "nz", cstdlib_strstr(v52, *(*a3 + 160 * v46 + 136))) || (v53 = a4[45]) != 0 && (v50 = "nx", cstdlib_strstr(v53, *(*a3 + 160 * v46 + 136))) || (v54 = a4[46]) != 0 && (v50 = "nr", cstdlib_strstr(v54, *(*a3 + 160 * v46 + 136)))))
        {
          *(v19 + 4 * v46) = 1;
          v55 = heap_Calloc(*(a1 + 8), 1, 8);
          *(v20 + 8 * v46) = v55;
          if (!v55)
          {
            goto LABEL_97;
          }

          *v55 = v50;
        }

        else
        {
          v56 = *(*a3 + 160 * v46 + 72);
          *(v19 + 4 * v46) = v56;
          if (v56)
          {
            v57 = heap_Calloc(*(a1 + 8), 1, 8 * v56);
            *(v20 + 8 * v46) = v57;
            if (!v57)
            {
              goto LABEL_97;
            }

            v58 = *(v19 + 4 * v46);
            a5 = v63;
            if (v58)
            {
              v59 = 0;
              do
              {
                *(*(v20 + 8 * v46) + 8 * v59) = a4[37] + *(a4[38] + 4 * *(*(*a3 + 160 * v46 + 64) + 24 * v59));
                ++v59;
              }

              while (v58 > v59);
            }

            goto LABEL_94;
          }

          *(v20 + 8 * v46) = 0;
        }

        a5 = v63;
LABEL_94:
        if (++v46 >= a3[4])
        {
          goto LABEL_42;
        }
      }
    }

    goto LABEL_42;
  }

LABEL_97:
  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  v60 = a3[4];
  if (a3[4])
  {
    v61 = 0;
    do
    {
      v62 = *(v20 + 8 * v61);
      if (v62)
      {
        heap_Free(*(a1 + 8), v62);
        v60 = a3[4];
      }

      ++v61;
    }

    while (v61 < v60);
  }

  v18 = 2313166858;
  heap_Free(*(a1 + 8), v20);
  if (v19)
  {
    heap_Free(*(a1 + 8), v19);
    goto LABEL_15;
  }

LABEL_16:
  v20 = 0;
LABEL_17:
  statpos_fv_dealloc(a1, v67);
  v21 = a3[4];
  if (a3[4])
  {
    v22 = 0;
    do
    {
      v23 = v11[v22];
      if (v23)
      {
        heap_Free(*(a1 + 8), v23);
        v21 = a3[4];
      }

      ++v22;
    }

    while (v22 < v21);
  }

  heap_Free(*(a1 + 8), v11);
  v24 = v65;
  if (v65)
  {
    v25 = v64;
    if (v64)
    {
      v26 = 0;
      do
      {
        v27 = *(v65 + 8 * v26);
        if (v27)
        {
          heap_Free(*(a1 + 8), v27);
          v25 = v64;
        }

        ++v26;
      }

      while (v26 < v25);
      v24 = v65;
    }

    heap_Free(*(a1 + 8), v24);
  }

  if (v20)
  {
    v28 = a3[4];
    if (a3[4])
    {
      v29 = 0;
      do
      {
        v30 = *(v20 + 8 * v29);
        if (v30)
        {
          heap_Free(*(a1 + 8), v30);
          v28 = a3[4];
        }

        *(v20 + 8 * v29++) = 0;
      }

      while (v29 < v28);
    }

    heap_Free(*(a1 + 8), v20);
  }

  if (v19)
  {
    heap_Free(*(a1 + 8), v19);
  }

  return v18;
}

uint64_t statPOS_add2Str(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s)
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

uint64_t statpos_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a5;
  v78 = 0;
  v77 = 0;
  v75 = 0;
  __s = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  __s1 = 0;
  v68 = 0;
  v69 = 0;
  v10 = *a4;
  *(a4 + 187) = log_GetLogLevel(*(*a4 + 32)) > 4;
  v11 = (*(a1 + 104))(a2, a3, 1, 0, &v78 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v12 = (*(a1 + 184))(a2, a3, HIWORD(v78), 0, &v77);
  if ((v12 & 0x80000000) == 0 && v77 == 1)
  {
    v12 = (*(a1 + 176))(a2, a3, HIWORD(v78), 0, &__s, &v74);
    if ((v12 & 0x80000000) == 0 && v74 >= 2u)
    {
      v13 = a4 + 81;
      log_OutText(*(v10 + 32), "FE_POS", 5, 0, "new POS : processing=%s", __s);
      v14 = heap_Calloc(*(v10 + 8), 1, 128);
      if (v14)
      {
        v15 = v14;
        for (i = 0; i != 128; i += 8)
        {
          v17 = heap_Calloc(*(v10 + 8), 1, 16);
          *(v15 + i) = v17;
          if (!v17)
          {
            goto LABEL_52;
          }
        }

        v18 = heap_Calloc(*(v10 + 8), 1, 1024);
        a4[91] = v18;
        if (!v18 || (*(a4 + 372) = 1024, v19 = heap_Calloc(*(v10 + 8), 1, 1024), (a4[92] = v19) == 0))
        {
LABEL_52:
          v12 = 2313166858;
          log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0);
          v21 = 0;
          goto LABEL_53;
        }

        v20 = cstdlib_strlen(__s);
        v21 = heap_Calloc(*(v10 + 8), 1, (v20 + 1));
        if (v21)
        {
          statpos_initCache((a4 + 81));
          AddPOI = (*(a1 + 104))(a2, a3, 2, HIWORD(v78), &v78);
          if ((AddPOI & 0x80000000) == 0)
          {
            v12 = 2313174705;
            v66 = v21;
            while (v78)
            {
              AddPOI = (*(a1 + 168))(a2, a3);
              if ((AddPOI & 0x80000000) != 0)
              {
                goto LABEL_135;
              }

              if (v73 <= 0xA && ((1 << v73) & 0x610) != 0)
              {
                AddPOI = (*(a1 + 168))(a2, a3, v78, 1, 1, &v69, &v74);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_135;
                }

                AddPOI = (*(a1 + 168))(a2, a3, v78, 2, 1, &v69 + 2, &v74);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_135;
                }

                if (v69 > HIWORD(v69))
                {
                  goto LABEL_53;
                }

                AddPOI = (*(a1 + 184))(a2, a3, v78, 17, &v77);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_135;
                }

                if (v77 == 1)
                {
                  AddPOI = (*(a1 + 168))(a2, a3, v78, 17, 1, &v68 + 2, &v74);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }
                }

                else
                {
                  HIWORD(v68) = v73 - 9 <= 1;
                }

                cstdlib_strncpy(v21, &__s[v69], HIWORD(v69) - v69);
                v21[HIWORD(v69) - v69] = 0;
                if (HIWORD(v69) == v69)
                {
                  log_OutText(*(v10 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", HIWORD(v69), HIWORD(v69));
                }

                else
                {
                  AddPOI = addWord_0(v10, (a4 + 1), (a4 + 81), v21, &v69, HIWORD(v68), &v68);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }

                  v24 = doesWordEndInComma_0(v21);
                  v25 = a4[81];
                  v26 = *(a4 + 328);
                  if (v24)
                  {
                    *(v25 + 160 * *(a4 + 328) - 148) = 1;
                  }

                  v27 = v25 + 160 * v26;
                  *(v27 - 136) = 0;
                  *(v27 - 136) = v73 == 4;
                  AddPOI = (*(a1 + 176))(a2, a3, v78, 3, &__s1, &v74);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }

                  v28 = cstdlib_strcmp(__s1, "");
                  v29 = a4[81];
                  v30 = *(a4 + 328);
                  if (v28)
                  {
                    *(v29 + 160 * *(a4 + 328) - 136) = 1;
                  }

                  v31 = __s;
                  v32 = HIWORD(v69);
                  *(v29 + 160 * v30 - 144) = __s[HIWORD(v69)] == 95;
                  *(a4[81] + 160 * *(a4 + 328) - 140) = isFollowedbySpace((a4 + 1), v31, v32);
                  v33 = (*(a1 + 176))(a2, a3, v78, 5, &v71, &v74);
                  if ((v33 & 0x80000000) != 0)
                  {
                    v12 = v33;
                    v21 = v66;
                    goto LABEL_53;
                  }

                  AddPOI = addPOS_0(v10, (a4 + 1), (a4 + 81), (*(a4 + 328) - 1), v71, v78, v15, &v68, v5);
                  v21 = v66;
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }

                  AddPOI = readAddPOI(a1, a2, a3, v10, a4 + 81, (*(a4 + 328) - 1), v78);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }

                  if (*(a4 + 354) == 1)
                  {
                    *v67 = 0;
                    AddPOI = (*(a1 + 184))(a2, a3, v78, 14, &v77);
                    if ((AddPOI & 0x80000000) != 0)
                    {
                      goto LABEL_135;
                    }

                    if (v77)
                    {
                      AddPOI = (*(a1 + 176))(a2, a3, v78, 14, v67, &v74);
                      if ((AddPOI & 0x80000000) != 0)
                      {
                        goto LABEL_135;
                      }

                      if (v74 >= 2u)
                      {
                        AddPOI = readPOSandPHRfromNLU(v10, (a4 + 1), a4 + 81, *v67, (*(a4 + 328) - 1));
                        if ((AddPOI & 0x80000000) != 0)
                        {
                          goto LABEL_135;
                        }
                      }
                    }

                    else
                    {
                      v65 = v65 & 0xFFFFFFFF00000000 | v69;
                      AddPOI = readPOSandPHRfromNLUMarkers(v10, (a4 + 1), a4 + 81, a2, a3, a1, HIWORD(v78), __s, v65, *(a4 + 328) - 1);
                      if ((AddPOI & 0x80000000) != 0)
                      {
                        goto LABEL_135;
                      }
                    }
                  }
                }
              }

              AddPOI = (*(a1 + 120))(a2, a3, v78, &v78);
              if ((AddPOI & 0x80000000) != 0)
              {
                goto LABEL_135;
              }
            }

            AddPOI = (*(a1 + 104))(a2, a3, 2, HIWORD(v78), &v78);
            if ((AddPOI & 0x80000000) == 0)
            {
              while (v78)
              {
                AddPOI = (*(a1 + 168))(a2, a3);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_135;
                }

                if (v73 != 6)
                {
                  goto LABEL_138;
                }

                AddPOI = (*(a1 + 168))(a2, a3, v78, 1, 1, &v69, &v74);
                if ((AddPOI & 0x80000000) == 0)
                {
                  AddPOI = (*(a1 + 168))(a2, a3, v78, 2, 1, &v69 + 2, &v74);
                  if ((AddPOI & 0x80000000) == 0)
                  {
                    if (v69 > HIWORD(v69))
                    {
                      goto LABEL_53;
                    }

                    AddPOI = (*(a1 + 176))(a2, a3, v78, 4, &v72, &v74);
                    if ((AddPOI & 0x80000000) == 0)
                    {
                      AddPOI = addToken_0(v10, a4 + 81, (a4 + 1), &v69, v72);
                      if ((AddPOI & 0x80000000) == 0 || AddPOI == -1981800448)
                      {
LABEL_138:
                        AddPOI = (*(a1 + 120))(a2, a3, v78, &v78);
                        if ((AddPOI & 0x80000000) == 0)
                        {
                          continue;
                        }
                      }
                    }
                  }
                }

                goto LABEL_135;
              }

              AddPOI = (*(a1 + 176))(a2, a3, HIWORD(v78), 1, &v75, &v74 + 2);
              if ((AddPOI & 0x80000000) == 0)
              {
                v38 = HIWORD(v74);
                if (HIWORD(v74))
                {
                  v39 = 0;
                  v40 = v75;
                  do
                  {
                    v41 = v39;
                    if (*(v40 + 32 * v39) == 34)
                    {
                      if (v38 <= ++v39)
                      {
                        goto LABEL_139;
                      }

                      do
                      {
                        v42 = *(v40 + 32 * v39);
                        if (v42 != 21)
                        {
                          ++v39;
                        }
                      }

                      while (v38 > v39 && v42 != 21);
                      if (v42 == 21)
                      {
                        if (*(a4 + 328))
                        {
                          v50 = *(v40 + 12);
                          v51 = (*(v40 + 32 * v41 + 12) - v50);
                          v52 = (*(v40 + 32 * v39 + 12) - v50);
                          v53 = *v13;
                          v54 = *(a4 + 328) - 1;
                          do
                          {
                            v55 = *v53;
                            if (v55 >= v51 && v53[1] <= v52)
                            {
                              *(v53 + 10) = 1;
                            }

                            v56 = v55 > v52 || v54-- == 0;
                            v53 += 80;
                          }

                          while (!v56);
                        }
                      }

                      else
                      {
LABEL_139:
                        if (*(a4 + 328))
                        {
                          v44 = (*(v40 + 32 * v41 + 12) - *(v40 + 12));
                          v45 = *(v40 + 16);
                          v46 = *v13;
                          v47 = *(a4 + 328) - 1;
                          do
                          {
                            v48 = *v46;
                            if (v48 >= v44 && v46[1] <= v45)
                            {
                              *(v46 + 10) = 1;
                            }

                            v49 = v48 > v45 || v47-- == 0;
                            v46 += 80;
                          }

                          while (!v49);
                        }
                      }
                    }

                    ++v39;
                  }

                  while (v38 > v39);
                }

                AddPOI = markPhoneticRegions(v10, (a4 + 81));
                if ((AddPOI & 0x80000000) == 0)
                {
                  if (*(a4 + 354) != 1)
                  {
                    goto LABEL_133;
                  }

                  v57 = *(a4 + 328);
                  if (*(a4 + 328))
                  {
                    v58 = 0;
                    do
                    {
                      if (!HIWORD(v74))
                      {
                        goto LABEL_129;
                      }

                      v59 = 0;
                      do
                      {
                        while (1)
                        {
                          v60 = (v75 + 32 * v59);
                          if (*v60 == 1)
                          {
                            break;
                          }

                          if (++v59 >= HIWORD(v74))
                          {
                            goto LABEL_129;
                          }
                        }

                        v61 = v60[3] - *(v75 + 12);
                        v62 = *(*v13 + 160 * v58);
                        ++v59;
                      }

                      while (v61 != v62 && v59 < HIWORD(v74));
                      if (v61 != v62)
                      {
LABEL_129:
                        v64 = *(*v13 + 160 * v58 + 104);
                        if (v64)
                        {
                          heap_Free(*(v10 + 8), v64);
                          *(a4[81] + 160 * v58 + 104) = 0;
                          v57 = *(a4 + 328);
                        }
                      }

                      ++v58;
                    }

                    while (v58 < v57);
                  }

                  AddPOI = resolvePHR_0(__s, v10, (a4 + 1), a4 + 324);
                  if ((AddPOI & 0x80000000) == 0)
                  {
LABEL_133:
                    AddPOI = setPotentialPOSTags(v10, (a4 + 1), a4 + 81);
                    if ((AddPOI & 0x80000000) == 0)
                    {
                      AddPOI = printSent_0(v10, (a4 + 1), a4 + 81, "Initialized data", *(a4 + 354), v5);
                    }
                  }
                }
              }
            }
          }

LABEL_135:
          v12 = AddPOI;
        }

        else
        {
          v12 = 2313166858;
          log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0);
        }

LABEL_53:
        for (j = 0; j != 128; j += 8)
        {
          v36 = *(v15 + j);
          if (v36)
          {
            heap_Free(*(v10 + 8), v36);
            *(v15 + j) = 0;
          }
        }

        heap_Free(*(v10 + 8), v15);
        statpos_freeCache(v10, (a4 + 81));
        if (v21)
        {
          heap_Free(*(v10 + 8), v21);
        }
      }

      else
      {
        v12 = 2313166858;
        log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0);
        statpos_freeCache(v10, (a4 + 81));
      }

      if (*v13)
      {
        if (*(a4 + 328))
        {
          v37 = *(*(*v13 + 160 * (*(a4 + 328) - 1) + 48) + 24);
          if (v37)
          {
            heap_Free(*(v10 + 8), v37);
            *(*(a4[81] + 160 * *(a4 + 328) - 112) + 24) = 0;
          }
        }
      }
    }
  }

  return v12;
}

uint64_t addWord_0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, unsigned __int16 *a5, int a6, _WORD *a7)
{
  v7 = a7;
  v8 = a6;
  v10 = a4;
  v12 = a2;
  v42 = *MEMORY[0x277D85DE8];
  v14 = *(a3 + 8);
  if (*(a3 + 8))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*a3 + v17);
      v21 = *a5;
      if (__PAIR64__(*(*a3 + v17 + 2), v20) == __PAIR64__(a5[1], v21))
      {
        return 0;
      }

      if (v21 >= v20 && a5[1] <= *(*a3 + v17 + 2))
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "WARNING : skip subsumed word %d,%d (subsumed by word %d)", v21, a5[1], v18);
        v14 = *(a3 + 8);
        v19 = 1;
      }

      ++v18;
      v17 += 160;
    }

    while (v18 < v14);
    v22 = v14 + 2;
    v7 = a7;
    v8 = a6;
    v12 = a2;
    v10 = a4;
  }

  else
  {
    v19 = 0;
    v22 = 2;
  }

  if (*(a3 + 10))
  {
    v23 = *a3;
    if (v22 > *(a3 + 10))
    {
      v24 = heap_Realloc(*(a1 + 8), v23, 160 * *(a3 + 10) + 3360);
      if (!v24)
      {
        goto LABEL_28;
      }

      *a3 = v24;
      cstdlib_memset((v24 + 160 * *(a3 + 8)), 0, 0xC80uLL);
      *(a3 + 10) += 20;
      v23 = *a3;
    }
  }

  else
  {
    v25 = heap_Calloc(*(a1 + 8), 1, 8001);
    *a3 = v25;
    if (!v25)
    {
      goto LABEL_28;
    }

    v23 = v25;
    *(a3 + 10) = 50;
  }

  v26 = (v23 + 160 * *(a3 + 8));
  v26[11] = v19;
  *v26 = *a5;
  v27 = heap_Calloc(*(a1 + 8), 1, (8 * *(v12 + 376)) | 1);
  *(*a3 + 160 * *(a3 + 8) + 48) = v27;
  if (v27 && (v28 = *(a1 + 8), v29 = cstdlib_strlen(v10), v30 = heap_Calloc(v28, 1, (v29 + 1)), (**(*a3 + 160 * *(a3 + 8) + 48) = v30) != 0))
  {
    cstdlib_strcpy(v30, v10);
    cstdlib_strncpy(__dst, v10, 0x80uLL);
    __dst[127] = 0;
    v37 = (*(*(a3 + 120) + 144))(*(a3 + 104), *(a3 + 112), "normal", __dst, 128);
    if ((v37 & 0x80000000) == 0)
    {
      if (!cstdlib_strlen(__dst) || !cstdlib_strcmp(v10, __dst))
      {
        goto LABEL_24;
      }

      v31 = *(a1 + 8);
      v32 = cstdlib_strlen(__dst);
      v33 = heap_Calloc(v31, 1, (v32 + 1));
      *(*a3 + 160 * *(a3 + 8) + 120) = v33;
      if (v33)
      {
        cstdlib_strcpy(v33, __dst);
LABEL_24:
        v34 = *(a3 + 8);
        v35 = *a3 + 160 * v34;
        *(v35 + 72) = 0;
        *(v35 + 64) = 0;
        *(v35 + 8) = v8 == 1;
        *(a3 + 8) = v34 + 1;
        *v7 = 0;
        return v37;
      }

LABEL_28:
      v37 = 2313166858;
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    }
  }

  else
  {
    v37 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    v36 = *(*a3 + 160 * *(a3 + 8) + 48);
    if (v36 && *v36)
    {
      heap_Free(*(a1 + 8), *v36);
      **(*a3 + 160 * *(a3 + 8) + 48) = 0;
    }
  }

  return v37;
}

BOOL isFollowedbySpace(uint64_t a1, char *__s, unsigned int a3)
{
  v6 = cstdlib_strlen(__s);
  if (v6 > a3)
  {
    while (1)
    {
      v7 = &__s[a3];
      v8 = utf8_determineUTF8CharLength(*v7);
      if (_statpos_char_check(*(a1 + 168), v7, v8) != 1 && _statpos_char_check(*(a1 + 176), &__s[a3], v8) != 1)
      {
        break;
      }

      a3 += utf8_determineUTF8CharLength(*v7);
      if (v6 <= a3)
      {
        a3 = a3;
        return v6 == a3;
      }
    }

    return *v7 == 32;
  }

  return v6 == a3;
}

uint64_t addPOS_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, unsigned int a6, uint64_t a7, _WORD *a8, int a9)
{
  v11 = __s;
  v32 = -1;
  if (!cstdlib_strlen(__s))
  {
    v11 = "NULL";
  }

  v16 = *(a1 + 8);
  v17 = cstdlib_strlen(v11);
  v18 = heap_Calloc(v16, 1, (v17 + 1));
  if (v18)
  {
    v19 = v18;
    cstdlib_strcpy(v18, v11);
    v20 = cstdlib_strchr(v19, 92);
    __sa = v19;
    if (v20)
    {
      v21 = v20;
      while (1)
      {
        *v21 = 0;
        v22 = *v19 ? v19 : "*";
        if ((*(a3 + 48) = v22, *(a3 + 56) = v22, !a9) && !*(a2 + 104) || *(a2 + 184))
        {
          log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag POS %s", v22);
          UniqDynamicPOS = statpos_retagPOS(a1, a2, a3, a4, &v32, a8, a7);
          if ((UniqDynamicPOS & 0x80000000) != 0)
          {
            break;
          }
        }

        if (a9 == 1)
        {
          UniqDynamicPOS = statpos_getUniqDynamicPOS(a1, a2, *(a3 + 48), &v32);
          if ((UniqDynamicPOS & 0x80000000) != 0)
          {
            break;
          }
        }

        if (*(a2 + 104))
        {
          UniqDynamicPOS = statpos_getPOSOffset(a1, a2, *(a3 + 48), &v32);
          if ((UniqDynamicPOS & 0x80000000) != 0)
          {
            break;
          }
        }

        UniqDynamicPOS = statPOSAddUniqueTagOffset2Word(a1, a3, a4, v32, a6);
        if ((UniqDynamicPOS & 0x80000000) != 0)
        {
          break;
        }

        v19 = v21 + 1;
        v21 = cstdlib_strchr(v21 + 1, 92);
        if (!v21)
        {
          if (*v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = "*";
          }

          goto LABEL_26;
        }
      }
    }

    else
    {
      if (*v19)
      {
        v24 = v19;
      }

      else
      {
        v24 = "*";
      }

LABEL_26:
      *(a3 + 48) = v24;
      *(a3 + 56) = v24;
      if ((a9 || *(a2 + 104)) && !*(a2 + 184) || (log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag POS %s", v24), UniqDynamicPOS = statpos_retagPOS(a1, a2, a3, a4, &v32, a8, a7), (UniqDynamicPOS & 0x80000000) == 0))
      {
        if (a9 != 1 || (UniqDynamicPOS = statpos_getUniqDynamicPOS(a1, a2, *(a3 + 48), &v32), (UniqDynamicPOS & 0x80000000) == 0))
        {
          if (!*(a2 + 104) || (UniqDynamicPOS = statpos_getPOSOffset(a1, a2, *(a3 + 48), &v32), (UniqDynamicPOS & 0x80000000) == 0))
          {
            v25 = statPOSAddUniqueTagOffset2Word(a1, a3, a4, v32, a6);
            if ((v25 & 0x80000000) == 0 && !*(*(*a3 + 160 * a4 + 48) + 24))
            {
              v26 = *(a1 + 8);
              v27 = cstdlib_strlen(__sa);
              v28 = heap_Calloc(v26, 1, (v27 + 1));
              *(*(*a3 + 160 * a4 + 48) + 24) = v28;
              if (v28)
              {
                cstdlib_strcpy(v28, __sa);
              }

              else
              {
                v25 = 2313166858;
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
              }
            }

            goto LABEL_39;
          }
        }
      }
    }

    v25 = UniqDynamicPOS;
LABEL_39:
    heap_Free(*(a1 + 8), __sa);
    return v25;
  }

  v25 = 2313166858;
  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return v25;
}

uint64_t readAddPOI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, uint64_t a7)
{
  v30 = 0;
  *v29 = 0;
  v14 = (*(a1 + 184))(a2, a3, a7, 14, &v30 + 2);
  if ((v14 & 0x80000000) == 0)
  {
    if (HIWORD(v30))
    {
      v14 = (*(a1 + 176))(a2, a3, a7, 14, v29, &v30);
      if ((v14 & 0x80000000) == 0 && v30 >= 2u)
      {
        v28 = 0;
        v27 = 0;
        v15 = hlp_NLUStrFind(*v29, "S_POI", &v28, &v27);
        if (v15)
        {
          v16 = v28;
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = 66;
        }

        else
        {
          v17 = 0;
        }

        if (hlp_NLUStrFind(*v29, "I_POI", &v28, &v27))
        {
          v16 = v28;
          v17 = 73;
        }

        v18 = hlp_NLUStrFind(*v29, "E_POI", &v28, &v27);
        if (v17 == 66)
        {
          v19 = 83;
        }

        else
        {
          v19 = 69;
        }

        if (v18)
        {
          v16 = v28;
          v20 = v19;
        }

        else
        {
          v20 = v17;
        }

        v21 = *a5 + 160 * a6;
        *(v21 + 128) = v20;
        if (v16)
        {
          if (!*(v21 + 136))
          {
            v22 = a6;
            v23 = *(a4 + 8);
            v24 = cstdlib_strlen(v16);
            v25 = heap_Calloc(v23, 1, v24 + 3);
            *(*a5 + 160 * v22 + 136) = v25;
            if (v25)
            {
              cstdlib_strcpy(v25, ",");
              cstdlib_strcat(*(*a5 + 160 * v22 + 136), v16);
              cstdlib_strcat(*(*a5 + 160 * v22 + 136), ",");
            }

            else
            {
              log_OutPublic(*(a4 + 32), "FE_POS", 35000, 0);
              return 2313166858;
            }
          }
        }

        else
        {
          *(v21 + 136) = 0;
        }
      }
    }
  }

  return v14;
}

uint64_t readPOSandPHRfromNLU(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, unsigned int a5)
{
  v12 = 0uLL;
  v11 = 0;
  hlp_NLUStrFind(a4, "POS", &v12 + 1, &v11 + 1);
  hlp_NLUStrFind(a4, "PHR", &v12, &v11);
  if (v12 != 0)
  {
    return addPOSandPHR(a1, a2, a3, a5, a5, *(&v12 + 1), HIWORD(v11), v12, v11);
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "missing POS/PHR in NLU field: %s", a4);
  return 2313166848;
}

uint64_t readPOSandPHRfromNLUMarkers(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *__s, uint64_t a9, __int16 a10)
{
  v31 = 0;
  v30 = 0;
  v29 = 0uLL;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  cstdlib_strlen(__s);
  v17 = (*(a6 + 104))(a4, a5, 2, a7, &v26);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v25 = a1;
  v24 = a3;
  while (v26)
  {
    v17 = (*(a6 + 168))(a4, a5);
    if ((v17 & 0x80000000) == 0)
    {
      v17 = (*(a6 + 120))(a4, a5, v26, &v26);
      if ((v17 & 0x80000000) == 0)
      {
        continue;
      }
    }

    return v17;
  }

  v27 = a9;
  v17 = (*(a6 + 176))(a4, a5, a7, 1, &v31, &v30);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (v30)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      if (*(v31 + v18) == 51)
      {
        v20 = *(v31 + v18 + 12) - *(v31 + 12);
        if (v20 >= v27 && v20 < HIWORD(v27))
        {
          break;
        }
      }

      ++v19;
      v18 += 32;
      if (32 * v30 == v18)
      {
        goto LABEL_17;
      }
    }

    hlp_NLUStrFind(*(v31 + v18 + 24), "POS", &v29 + 1, &v28 + 1);
    hlp_NLUStrFind(*(v31 + v18 + 24), "PHR", &v29, &v28);
    if (v29 == 0)
    {
      v22 = 2313166848;
      log_OutText(*(v25 + 32), "FE_POS", 5, 0, "missing POS/PHR in (NLU) marker number: %d");
      return v22;
    }

    return addPOSandPHR(v25, a2, v24, a10, a10, *(&v29 + 1), HIWORD(v28), v29, v28);
  }

LABEL_17:
  v22 = 2313166848;
  log_OutText(*(v25 + 32), "FE_POS", 5, 0, "couldnt recover from missing NLU field on word record %d,%d");
  return v22;
}

uint64_t addToken_0(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4, const char *a5)
{
  v8 = *(a2 + 4);
  v9 = *a4;
  if (*(a2 + 4))
  {
    v11 = 0;
    v12 = 0;
    v13 = v8 + 1;
    v14 = *a2;
    v15 = a4[1];
    while (1)
    {
      v16 = *(v14 + v11);
      if (v9 == v16)
      {
        v13 = v12;
      }

      v17 = *(v14 + v11 + 2);
      if (v15 == v17)
      {
        break;
      }

      if (v15 >= v16 && v15 < v17)
      {
        break;
      }

      ++v12;
      v9 = *a4;
      v11 += 160;
      if (160 * v8 == v11)
      {
        goto LABEL_12;
      }
    }

    if (v8 + 1 != v13)
    {
      v22 = checkSpan_0(a1, a3, (v14 + 160 * v13 + 56));
      if ((v22 & 0x80000000) == 0)
      {
        v22 = checkSpan_0(a1, a3, (*a2 + v11 + 56));
        if ((v22 & 0x80000000) == 0)
        {
          v23 = *a2;
          v24 = *(*a2 + 160 * v13 + 56);
          *(v24 + 48) = 1;
          *(v24 + 56) = v13;
          *(v24 + 58) = v12;
          v25 = *(v23 + v11 + 56);
          *(v25 + 52) = 1;
          *(v25 + 56) = v13;
          v26 = *(a1 + 8);
          v27 = cstdlib_strlen(a5);
          v28 = heap_Calloc(v26, 1, (v27 - 1));
          *(*(*a2 + 160 * v13 + 56) + 64) = v28;
          if (!v28)
          {
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
            return 2313166858;
          }

          v29 = v28;
          v30 = cstdlib_strlen(a5 + 1);
          cstdlib_strncpy(v29, a5 + 1, v30 - 1);
          v31 = *(*a2 + 160 * v13 + 48);
          v32 = cstdlib_strlen(a5);
          v22 = checkAllocAndZero(a1, (v31 + 16), v32 + 1);
          if ((v22 & 0x80000000) == 0)
          {
            cstdlib_strcat(*(*(*a2 + 160 * v13 + 48) + 16), "B-");
            v33 = *(*(*a2 + 160 * v13 + 48) + 16);
            v34 = cstdlib_strlen(a5 + 1);
            cstdlib_strncpy((v33 + 2), a5 + 1, v34 - 1);
            v35 = v13 + 1;
            if ((v13 + 1) > v12)
            {
              return 0;
            }

            while (1)
            {
              v36 = v35;
              v37 = *(*a2 + 160 * v35 + 48);
              v38 = cstdlib_strlen(a5);
              v22 = checkAllocAndZero(a1, (v37 + 16), v38 + 1);
              if ((v22 & 0x80000000) != 0)
              {
                break;
              }

              cstdlib_strcat(*(*(*a2 + 160 * v36 + 48) + 16), "I-");
              v39 = *(*(*a2 + 160 * v36 + 48) + 16);
              v40 = cstdlib_strlen(a5 + 1);
              cstdlib_strncpy((v39 + 2), a5 + 1, v40 - 1);
              v19 = 0;
              v35 = v36 + 1;
              if ((v36 + 1) > v12)
              {
                return v19;
              }
            }
          }
        }
      }

      return v22;
    }
  }

  else
  {
LABEL_12:
    v15 = a4[1];
  }

  v19 = 2313166848;
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a5, v9, v15);
  if (*(a2 + 4))
  {
    v20 = 0;
    v21 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "word[%d] %d,%d", v21++, *(*a2 + v20), *(*a2 + v20 + 2));
      v20 += 160;
    }

    while (v21 < *(a2 + 4));
  }

  return v19;
}

uint64_t markPhoneticRegions(uint64_t a1, uint64_t a2)
{
  LOWORD(v2) = *(a2 + 8);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    if (*(*a2 + 160 * v5 + 40) == 1 && v5 < v2)
    {
      v6 = *a2 + 160 * v5;
      if (*(v6 + 40) == 1)
      {
        break;
      }
    }

    v8 = v5;
LABEL_18:
    v5 = v8 + 1;
    if ((v8 + 1) >= v2)
    {
      return 0;
    }
  }

  v7 = 160 * v5;
  v8 = v5;
  while (1)
  {
    v9 = *(*(v6 + 48) + 24);
    if (v9)
    {
      heap_Free(*(a1 + 8), v9);
      v10 = *a2 + v7;
      *(*(v10 + 48) + 24) = 0;
      heap_Free(*(a1 + 8), *(v10 + 104));
      *(*a2 + v7 + 104) = 0;
    }

    v11 = *(a1 + 8);
    v12 = cstdlib_strlen("B-PH");
    v13 = heap_Calloc(v11, 1, (v12 + 1));
    *(*a2 + v7 + 104) = v13;
    if (!v13)
    {
      break;
    }

    v14 = v8 == v5 ? "B-PH" : "I-PH";
    cstdlib_strcpy(v13, v14);
    v15 = *(a1 + 8);
    v16 = cstdlib_strlen("UNK");
    v17 = heap_Calloc(v15, 1, (v16 + 1));
    *(*(*a2 + v7 + 48) + 24) = v17;
    if (!v17)
    {
      break;
    }

    cstdlib_strcpy(v17, "UNK");
    ++v8;
    v2 = *(a2 + 8);
    if (v2 > v8)
    {
      v6 = *a2 + 160 * v8;
      v7 += 160;
      if (*(v6 + 40) == 1)
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t resolvePHR_0(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v67 = *MEMORY[0x277D85DE8];
  if (!a4[4])
  {
    return 0;
  }

  v8 = 0;
  v9 = 104;
  do
  {
    if (v9 != 104)
    {
      v10 = (*a4 + v9);
      if (!*v10)
      {
        v11 = *a4 + v9;
        v12 = *(v11 - 160);
        if (v12)
        {
          v13 = *(v10 - 52);
          if (v13 >= 2 && *(a1 + (v13 - 1)) == 95)
          {
            v14 = *(a2 + 8);
            v15 = cstdlib_strlen(v12);
            v16 = heap_Calloc(v14, 1, (v15 + 3));
            v17 = *a4;
            *(*a4 + v9) = v16;
            if (!v16)
            {
              goto LABEL_69;
            }

            cstdlib_strcpy(v16, *(v17 + v9 - 160));
            if (cstdlib_strcmp(*(*a4 + v9), "O"))
            {
              **(*a4 + v9) = 73;
            }

            v18 = *a4;
            v19 = *(*(*a4 + v9 - 56) + 24);
            if (v19)
            {
              heap_Free(*(a2 + 8), v19);
              v18 = *a4;
              *(*(*a4 + v9 - 56) + 24) = 0;
            }

            v20 = *(a2 + 8);
            v21 = cstdlib_strlen(*(*(v18 + v9 - 216) + 24));
            v22 = heap_Calloc(v20, 1, (v21 + 3));
            v23 = *a4;
            *(*(*a4 + v9 - 56) + 24) = v22;
            if (!v22)
            {
              goto LABEL_69;
            }

            v24 = "[1] set missing PHR on word : word index=%d to %s (also copy POS %s)";
LABEL_29:
            cstdlib_strcpy(v22, *(*(v23 + v9 - 216) + 24));
            log_OutText(*(a2 + 32), "FE_POS", 5, 0, v24, v8, *(*a4 + v9), *(*(*a4 + v9 - 56) + 24));
            goto LABEL_30;
          }
        }

        v25 = *(v11 - 160);
        if (!v25)
        {
          goto LABEL_30;
        }

        v26 = *v25;
        if (v26 == 66)
        {
          v35 = *(a2 + 8);
          v36 = cstdlib_strlen(v25);
          v37 = heap_Calloc(v35, 1, (v36 + 3));
          v38 = *a4;
          *(*a4 + v9) = v37;
          if (!v37)
          {
            goto LABEL_69;
          }

          cstdlib_strcpy(v37, *(v38 + v9 - 160));
          **(*a4 + v9) = 73;
          v39 = *a4;
          v40 = *(*(*a4 + v9 - 56) + 24);
          if (v40)
          {
            heap_Free(*(a2 + 8), v40);
            v39 = *a4;
            *(*(*a4 + v9 - 56) + 24) = 0;
          }

          v41 = *(a2 + 8);
          v42 = cstdlib_strlen(*(*(v39 + v9 - 216) + 24));
          v22 = heap_Calloc(v41, 1, (v42 + 3));
          v23 = *a4;
          *(*(*a4 + v9 - 56) + 24) = v22;
          if (!v22)
          {
LABEL_69:
            v64 = 2313166858;
            log_OutPublic(*(a2 + 32), "FE_POS", 35000, 0);
            return v64;
          }

          v24 = "[3] set missing PHR on word : word index=%d to %s (also copy POS %s)";
          goto LABEL_29;
        }

        if (v26 == 79 || v26 == 73)
        {
          v27 = *(a2 + 8);
          v28 = cstdlib_strlen(v25);
          v29 = heap_Calloc(v27, 1, (v28 + 3));
          v30 = *a4;
          *(*a4 + v9) = v29;
          if (!v29)
          {
            goto LABEL_69;
          }

          cstdlib_strcpy(v29, *(v30 + v9 - 160));
          v31 = *a4;
          v32 = *(*(*a4 + v9 - 56) + 24);
          if (v32)
          {
            heap_Free(*(a2 + 8), v32);
            v31 = *a4;
            *(*(*a4 + v9 - 56) + 24) = 0;
          }

          v33 = *(a2 + 8);
          v34 = cstdlib_strlen(*(*(v31 + v9 - 216) + 24));
          v22 = heap_Calloc(v33, 1, (v34 + 3));
          v23 = *a4;
          *(*(*a4 + v9 - 56) + 24) = v22;
          if (!v22)
          {
            goto LABEL_69;
          }

          v24 = "[2] set missing PHR on word : word index=%d to %s (also copy POS %s)";
          goto LABEL_29;
        }
      }
    }

LABEL_30:
    ++v8;
    v43 = a4[4];
    v9 += 160;
  }

  while (v8 < v43);
  if (!a4[4])
  {
    return 0;
  }

  v44 = 0;
  v45 = (*a4 + 104);
  do
  {
    if (!*v45)
    {
      log_OutText(*(a2 + 32), "FE_POS", 5, 0, "could not work out PHR on word : word index=%d");
      return 2313166848;
    }

    ++v44;
    v45 += 20;
  }

  while (v43 != v44);
  v46 = 0;
  v47 = 104;
  do
  {
    if (!cstdlib_strncmp(*(*a4 + v47), "I-", 2uLL))
    {
      v48 = *a4;
      if (v47 == 104)
      {
        **(v48 + 104) = 66;
        log_OutText(*(a2 + 32), "FE_POS", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", 0, *(*a4 + 104));
      }

      else if (cstdlib_strcmp(*(v48 + v47 - 160), *(v48 + v47)))
      {
        cstdlib_strcpy(__dst, *(*a4 + v47));
        __dst[0] = 66;
        if (cstdlib_strcmp(*(*a4 + v47 - 160), __dst))
        {
          **(*a4 + v47) = 66;
          log_OutText(*(a2 + 32), "FE_POS", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v46, *(*a4 + v47));
        }
      }
    }

    ++v46;
    v47 += 160;
  }

  while (v46 < a4[4]);
  if (!a4[4])
  {
    return 0;
  }

  v49 = 0;
  v50 = 0;
  do
  {
    cstdlib_strcpy(__dst, *(*a4 + 160 * v50 + 104));
    if (!cstdlib_strncmp(__dst, "B-", 2uLL))
    {
      cstdlib_strcpy(__dst, (*(*a4 + 160 * v50 + 104) + 2));
    }

    v51 = v50;
    if (a4[4] > v50)
    {
      v51 = v50;
      do
      {
        v52 = *(*a4 + 160 * v51 + 104);
        if (!v52 || (cstdlib_strlen(v52) < 3 || cstdlib_strcmp((*(*a4 + 160 * v51 + 104) + 2), __dst) || cstdlib_strncmp(*(*a4 + 160 * v51 + 104), "I-", 2uLL)) && *(*a4 + 160 * v51 + 4) != *(*a4 + 160 * v50 + 4))
        {
          break;
        }

        ++v51;
      }

      while (a4[4] > v51);
    }

    v53 = v51 - 1;
    log_OutText(*(a2 + 32), "FE_POS", 5, 0, "[3] add syn chunk %s from %d to %d", __dst, v49, v51 - 1);
    if (v50 > (v51 - 1) || a4[4] <= v53)
    {
      log_OutText(*(a2 + 32), "FE_POS", 5, 0, "syntactic chunks out of order: fromWordIdx=%d toWordIdx=%d numWords=%d");
      return 2313166848;
    }

    v54 = checkSpan_0(a2, a3, (*a4 + 160 * v50 + 56));
    if ((v54 & 0x80000000) != 0)
    {
      return v54;
    }

    v54 = checkSpan_0(a2, a3, (*a4 + 160 * (v51 - 1) + 56));
    if ((v54 & 0x80000000) != 0)
    {
      return v54;
    }

    v55 = *a4;
    v56 = *(*a4 + 160 * v50 + 56);
    *(v56 + 96) = 1;
    *(v56 + 104) = v50;
    *(v56 + 106) = v53;
    v57 = *(v55 + 160 * (v51 - 1) + 56);
    *(v57 + 100) = 1;
    *(v57 + 104) = v50;
    v58 = *(a2 + 8);
    v59 = cstdlib_strlen(__dst);
    v60 = heap_Calloc(v58, 1, (v59 + 1));
    *(*(*a4 + 160 * v50 + 56) + 112) = v60;
    if (!v60)
    {
      goto LABEL_69;
    }

    cstdlib_strcpy(v60, __dst);
    if (v50 == v51)
    {
      v50 = v51 + 1;
    }

    else
    {
      v50 = v51;
    }

    v49 = v50;
  }

  while (v50 < a4[4]);
  if (!a4[4])
  {
    return 0;
  }

  v61 = 0;
  v62 = *a4;
  v63 = 104;
  do
  {
    heap_Free(*(a2 + 8), *(v62 + v63));
    v64 = 0;
    v62 = *a4;
    *(*a4 + v63) = 0;
    ++v61;
    v63 += 160;
  }

  while (v61 < a4[4]);
  return v64;
}

uint64_t setPotentialPOSTags(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  __s2[0] = *(a2 + 120);
  __s2[1] = 0;
  if (*(a3 + 4))
  {
    v6 = 0;
    v7 = *a3;
    do
    {
      if (*(v7 + 160 * v6 + 72))
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        do
        {
          v10 += cstdlib_strlen((*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(v7 + 160 * v6 + 64) + v8))));
          ++v9;
          v7 = *a3;
          v11 = *(*a3 + 160 * v6 + 72);
          v8 += 24;
        }

        while (v9 < v11);
        *(v7 + 160 * v6 + 80) = 0;
        if (v10)
        {
          v12 = heap_Calloc(*(a1 + 8), 1, 2 * v11 + v10 + 1);
          v13 = *a3;
          *(*a3 + 160 * v6 + 80) = v12;
          if (!v12)
          {
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
            return 2313166858;
          }

          if (*(v13 + 160 * v6 + 72))
          {
            v14 = 0;
            v15 = 0;
            v16 = __dst;
            do
            {
              cstdlib_strcpy(v16, (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(v13 + 160 * v6 + 64) + v14))));
              ++v15;
              v13 = *a3;
              v17 = *(*a3 + 160 * v6 + 72);
              v16 += 16;
              v14 += 24;
            }

            while (v15 < v17);
          }

          else
          {
            v17 = 0;
          }

          ssft_qsort(__dst, v17, 16, string_cmp);
          cstdlib_strcpy(*(*a3 + 160 * v6 + 80), __dst);
          v7 = *a3;
          if (*(*a3 + 160 * v6 + 72) >= 2u)
          {
            v18 = &v22;
            v19 = 1;
            do
            {
              cstdlib_strcat(*(v7 + 160 * v6 + 80), __s2);
              cstdlib_strcat(*(*a3 + 160 * v6 + 80), v18);
              ++v19;
              v7 = *a3;
              v18 += 16;
            }

            while (v19 < *(*a3 + 160 * v6 + 72));
          }
        }
      }

      else
      {
        *(v7 + 160 * v6 + 80) = 0;
      }

      ++v6;
    }

    while (v6 < *(a3 + 4));
  }

  return 0;
}

uint64_t printSent_0(uint64_t a1, uint64_t a2, uint64_t *a3, const char *a4, int a5, int a6)
{
  if (!*(a3 + 25))
  {
    return 0;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Sentence :%s", a4);
  if (*(a3 + 4))
  {
    v11 = 0;
    while (1)
    {
      sprintf(a3[11], "[%2d] ", v11);
      result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = *a3;
      if (*(*a3 + 160 * v11 + 44) == 1)
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "*DUMMY* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v13 = *a3;
      }

      if (*(v13 + 160 * v11 + 8) == 1)
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "*OOV* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v13 = *a3;
      }

      if (*(v13 + 160 * v11 + 72) >= 2u)
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "*AMB* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v13 = *a3;
      }

      cstdlib_strncpy(a3[11], **(v13 + 160 * v11 + 48), 0x14uLL);
      v14 = cstdlib_strlen(**(*a3 + 160 * v11 + 48));
      if (v14 <= 0x13)
      {
        do
        {
          cstdlib_strcat(a3[11], " ");
        }

        while (v14++ < 0x13);
      }

      result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statPOS_add2Str(a1, a3 + 10, a3 + 48, " ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (*(*a3 + 160 * v11 + 120))
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "canon=");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v11 + 120));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, " ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (a6 == 1)
      {
        v16 = *a3;
        if (*(*a3 + 160 * v11 + 24) == 1)
        {
          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "DCTWORD ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v16 = *a3;
        }

        if (*(v16 + 160 * v11 + 16) == 1)
        {
          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "FollowedByUnderscore ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v16 = *a3;
        }

        if (*(v16 + 160 * v11 + 20) == 1)
        {
          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "FollowedBySpace ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      v17 = *a3 + 160 * v11;
      if (a5 == 1)
      {
        break;
      }

      if (*(v17 + 88))
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "PREDICTEDPOS=");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v19 = *(*a3 + 160 * v11 + 88);
LABEL_39:
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, v19);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      v20 = *a3;
      if (*(*a3 + 160 * v11 + 104))
      {
        sprintf(a3[11], "tmphr=%4s ", *(*a3 + 160 * v11 + 104));
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v20 = *a3;
      }

      if (*(v20 + 160 * v11 + 112))
      {
        sprintf(a3[11], "retag=%4s ", *(v20 + 160 * v11 + 112));
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v20 = *a3;
      }

      v21 = *(*(v20 + 160 * v11 + 48) + 16);
      if (!v21)
      {
        v21 = " ";
      }

      sprintf(a3[11], " %6s ", v21);
      result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v22 = *a3;
      if (*(*a3 + 160 * v11 + 12))
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "_HASCOMMA ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a3;
      }

      if (*(v22 + 160 * v11 + 40))
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, " bPHONETIC ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (*(a2 + 376))
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = *a3;
          v26 = *(*a3 + 160 * v11 + 56);
          if (v26)
          {
            if (*(v26 + v23) != 1)
            {
              goto LABEL_96;
            }

            sprintf(a3[11], "<%s ", *(v26 + v23 + 16));
            result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v25 = *a3;
            v26 = *(*a3 + 160 * v11 + 56);
            if (v26)
            {
LABEL_96:
              v27 = v26 + v23;
              if (*(v27 + 4) == 1)
              {
                sprintf(a3[11], "%s> ", *(*(v25 + 160 * *(v27 + 8) + 56) + v23 + 16));
                result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }
            }
          }

          ++v24;
          v23 += 24;
        }

        while (v24 < *(a2 + 376));
      }

      result = statPOS_add2Str(a1, a3 + 10, a3 + 48, " uniqueTagRecs:");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v28 = *a3;
      if (*(*a3 + 160 * v11 + 72))
      {
        v29 = 0;
        v36 = a6;
        v37 = a5;
        while (1)
        {
          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "<RETAG=");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(*a3 + 160 * v11 + 64) + 24 * v29))));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, ",");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v30 = *(*a3 + 160 * v11 + 64);
          if (*(v30 + 24 * v29 + 16))
          {
            v31 = 0;
            v32 = 0;
            do
            {
              v33 = (*(v30 + 24 * v29 + 8) + v31);
              v34 = "*KEEP*";
              if (*(v33 + 1) != 1)
              {
                v34 = "";
              }

              v35 = "*SPLIT*";
              if (*(v33 + 2) != 1)
              {
                v35 = "";
              }

              sprintf(a3[11], "[%s%s%d,", v34, v35, *v33);
              result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statPOS_add2Str(a1, a3 + 10, a3 + 48, *(*(*(*a3 + 160 * v11 + 64) + 24 * v29 + 8) + v31 + 16));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "]");
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              ++v32;
              v30 = *(*a3 + 160 * v11 + 64);
              v31 += 24;
            }

            while (v32 < *(v30 + 24 * v29 + 16));
          }

          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "> ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          ++v29;
          v28 = *a3;
          a6 = v36;
          a5 = v37;
          if (v29 >= *(*a3 + 160 * v11 + 72))
          {
            if (!*(*a3 + 160 * v11 + 72) || !*(v28 + 160 * v11 + 80))
            {
              break;
            }

            result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "<POTENTIALTAGS=");
            if ((result & 0x80000000) == 0)
            {
              result = statPOS_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v11 + 80));
              if ((result & 0x80000000) == 0)
              {
                result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "> ");
                if ((result & 0x80000000) == 0)
                {
                  v28 = *a3;
                  break;
                }
              }
            }

            return result;
          }
        }
      }

      if (!*(v28 + 160 * v11 + 88) || (result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "PREDICTEDPOS="), (result & 0x80000000) == 0) && (result = statPOS_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v11 + 88)), (result & 0x80000000) == 0))
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", a3[10]);
        cstdlib_strcpy(a3[10], "");
        result = 0;
        if (++v11 < *(a3 + 4))
        {
          continue;
        }
      }

      return result;
    }

    v18 = *(*(v17 + 48) + 24);
    if (!v18)
    {
      v18 = " ";
    }

    sprintf(a3[11], "%4s ", v18);
    v19 = a3[11];
    goto LABEL_39;
  }

  return 0;
}

void *statpos_freeSentenceData(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[91];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[91] = 0;
    *(a1 + 372) = 0;
  }

  v4 = a1[92];
  if (v4)
  {
    heap_Free(*(v2 + 8), v4);
    a1[92] = 0;
  }

  v5 = a1 + 81;
  v6 = a1[81];
  if (*(a1 + 328))
  {
    v7 = 0;
    do
    {
      if (*(v6 + 160 * v7 + 104))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 104));
        v6 = *v5;
        *(*v5 + 160 * v7 + 104) = 0;
      }

      if (*(v6 + 160 * v7 + 136))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 136));
        v6 = *v5;
        *(*v5 + 160 * v7 + 136) = 0;
      }

      if (*(v6 + 160 * v7 + 112))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 112));
        v6 = *v5;
        *(*v5 + 160 * v7 + 112) = 0;
      }

      v8 = *(v6 + 160 * v7 + 48);
      if (v8)
      {
        v9 = *(a1 + 192);
        if (v9)
        {
          for (i = 0; i < v9; ++i)
          {
            v8 = *(v6 + 160 * v7 + 48);
            if (*(v8 + 8 * i))
            {
              heap_Free(*(v2 + 8), *(v8 + 8 * i));
              v6 = a1[81];
              v8 = *(v6 + 160 * v7 + 48);
              *(v8 + 8 * i) = 0;
              v9 = *(a1 + 192);
            }
          }
        }

        heap_Free(*(v2 + 8), v8);
        v6 = *v5;
        *(*v5 + 160 * v7 + 48) = 0;
      }

      v11 = *(v6 + 160 * v7 + 56);
      if (v11)
      {
        v12 = *(a1 + 192);
        if (v12)
        {
          v13 = 0;
          v14 = 16;
          do
          {
            v11 = *(v6 + 160 * v7 + 56);
            if (*(v11 + v14))
            {
              heap_Free(*(v2 + 8), *(v11 + v14));
              v6 = a1[81];
              v11 = *(v6 + 160 * v7 + 56);
              *(v11 + v14) = 0;
              v12 = *(a1 + 192);
            }

            ++v13;
            v14 += 24;
          }

          while (v13 < v12);
        }

        heap_Free(*(v2 + 8), v11);
        v6 = *v5;
        *(*v5 + 160 * v7 + 56) = 0;
      }

      if (*(v6 + 160 * v7 + 72))
      {
        v15 = 0;
        do
        {
          v16 = *(v6 + 160 * v7 + 64);
          if (*(v16 + 24 * v15 + 16))
          {
            v17 = 0;
            v18 = 16;
            do
            {
              v19 = *(*(v16 + 24 * v15 + 8) + v18);
              if (v19)
              {
                heap_Free(*(v2 + 8), v19);
                v16 = *(*v5 + 160 * v7 + 64);
                *(*(v16 + 24 * v15 + 8) + v18) = 0;
              }

              ++v17;
              v18 += 24;
            }

            while (v17 < *(v16 + 24 * v15 + 16));
            heap_Free(*(v2 + 8), *(v16 + 24 * v15 + 8));
            v6 = *v5;
            v20 = *(*v5 + 160 * v7 + 64) + 24 * v15;
            *(v20 + 8) = 0;
            *(v20 + 16) = 0;
          }

          ++v15;
        }

        while (v15 < *(v6 + 160 * v7 + 72));
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 64));
        v6 = *v5;
        v21 = *v5 + 160 * v7;
        *(v21 + 64) = 0;
        *(v21 + 72) = 0;
      }

      if (*(v6 + 160 * v7 + 80))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 80));
        v6 = *v5;
        *(*v5 + 160 * v7 + 80) = 0;
      }

      if (*(v6 + 160 * v7 + 88))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 88));
        v6 = *v5;
        *(*v5 + 160 * v7 + 88) = 0;
      }

      if (*(v6 + 160 * v7 + 120))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 120));
        v6 = *v5;
        *(*v5 + 160 * v7 + 120) = 0;
      }

      if (*(v6 + 160 * v7 + 32))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 32));
        v6 = *v5;
        *(*v5 + 160 * v7 + 32) = 0;
      }

      ++v7;
    }

    while (v7 < *(a1 + 328));
  }

  else if (!v6)
  {
    goto LABEL_49;
  }

  heap_Free(*(v2 + 8), v6);
  *v5 = 0;
LABEL_49:

  return cstdlib_memset(a1 + 81, 0, 0x88uLL);
}

uint64_t statpos_updateNLULingdbField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v8 = (a4 + 81);
  v9 = *a4;
  v10 = *(a4 + 328);
  if (*(a4 + 328))
  {
    v11 = *v8;
    v12 = (v10 + 3) & 0x1FFFC;
    v13 = xmmword_26ECCE810;
    v14 = xmmword_26ECC7980;
    v15 = vdupq_n_s64(v10 - 1);
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, v14));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        v11[38] = 0;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        v11[78] = 0;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v15, *&v13))).i32[1])
      {
        v11[118] = 0;
        v11[158] = 0;
      }

      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v11 += 160;
      v12 -= 4;
    }

    while (v12);
  }

  v33 = 0;
  v34 = 0;
  v32 = 0;
  v35[0] = *(a4 + 128);
  v35[1] = 0;
  cstdlib_memset(__b, 0, 0x20uLL);
  WordIdx_0 = (*(a1 + 104))(a2, a3, 1, 0, &v34);
  if ((WordIdx_0 & 0x80000000) != 0)
  {
    return WordIdx_0;
  }

  updated = (*(a1 + 184))(a2, a3, v34, 0, &v34 + 2);
  if ((updated & 0x80000000) == 0 && HIWORD(v34) == 1)
  {
    updated = (*(a1 + 176))(a2, a3, v34, 0, &v28, &v32);
    if ((updated & 0x80000000) == 0 && v32 >= 2u)
    {
      updated = (*(a1 + 104))(a2, a3, 2, v34, &v33 + 2);
      if ((updated & 0x80000000) == 0)
      {
        v29 = 0;
        cstdlib_strcpy(a4[91], "");
        v20 = HIWORD(v33);
        if (!HIWORD(v33))
        {
LABEL_45:
          cstdlib_strcpy(a4[91], "");
          return updated;
        }

        while (1)
        {
          WordIdx_0 = (*(a1 + 120))(a2, a3, v20, &v33);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            return WordIdx_0;
          }

          updated = (*(a1 + 168))(a2, a3, HIWORD(v33), 0, 1, &v31, &v32);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v31 <= 0xA && ((1 << v31) & 0x610) != 0)
          {
            WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v33), 1, 1, &v30, &v32);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              return WordIdx_0;
            }

            updated = (*(a1 + 168))(a2, a3, HIWORD(v33), 2, 1, &v30 + 2, &v32);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if (v30 != HIWORD(v30))
            {
              WordIdx_0 = getWordIdx_0(v9, v8, v30, HIWORD(v30), &v29);
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                return WordIdx_0;
              }

              v22 = v29;
              v23 = *v8 + 160 * v29;
              if (*(v23 + 44) || *(v23 + 152))
              {
                updated = (*(a1 + 192))(a2, a3, HIWORD(v33));
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              else
              {
                v24 = *(v23 + 56);
                if (v24 && (v25 = *(v24 + 112)) != 0)
                {
                  if (cstdlib_strcmp(v25, "O"))
                  {
                    cstdlib_strcpy(__b, "B-");
                    cstdlib_strcat(__b, *(*(*v8 + 160 * v22 + 56) + 112));
                    v26 = cstdlib_strlen(__b);
                    if (!cstdlib_strcmp(&__b[v26 - 2], "-P"))
                    {
                      __b[cstdlib_strlen(__b) - 2] = 0;
                    }
                  }

                  else
                  {
                    cstdlib_strcpy(__b, *(*(*v8 + 160 * v22 + 56) + 112));
                  }
                }

                else if (__b[0] && cstdlib_strcmp(__b, "O"))
                {
                  __b[0] = 73;
                }

                updated = updateNLUField_0(v9, a1, a2, a3, HIWORD(v33), (a4 + 1), v8, v22, *(*(*v8 + 160 * v22 + 48) + 24), __b, v35, 1);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                *(*v8 + 160 * v22 + 152) = 1;
              }
            }
          }

          v20 = v33;
          HIWORD(v33) = v33;
          if (!v33)
          {
            goto LABEL_45;
          }
        }
      }
    }
  }

  return updated;
}

uint64_t getWordIdx_0(uint64_t a1, unsigned __int16 *a2, int a3, int a4, _WORD *a5)
{
  if (a2[4])
  {
    v5 = 0;
    v6 = (*a2 + 2);
    while (*(v6 - 1) != a3 || *v6 != a4)
    {
      ++v5;
      v6 += 80;
      if (a2[4] == v5)
      {
        goto LABEL_6;
      }
    }

    result = 0;
    *a5 = v5;
  }

  else
  {
LABEL_6:
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "cant align lingdb word : no word found with pos=%d,%d", a3, a4);
    return 2313166848;
  }

  return result;
}

uint64_t updateNLUField_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int a8, char *a9, char *a10, const char *a11, int a12)
{
  v16 = a4;
  v17 = a3;
  v18 = a2;
  v49 = 0;
  v48 = 0;
  __s = 0;
  result = (*(a2 + 184))(a3, a4, a5, 14, &v49 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (!HIWORD(v49))
    {
      goto LABEL_5;
    }

    result = (*(v18 + 176))(v17, v16, a5, 14, &__s, &v49);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v49 >= 2u)
    {
      v21 = __s;
    }

    else
    {
LABEL_5:
      v21 = "";
      __s = "";
    }

    v45 = a1;
    v22 = cstdlib_strlen(v21) + 1;
    if (a9)
    {
      v23 = cstdlib_strlen(";POS:");
      v22 += v23 + cstdlib_strlen(a9);
    }

    v46 = a8;
    if (a10)
    {
      v24 = cstdlib_strlen(";PHR:");
      v25 = cstdlib_strlen(a10);
      v26 = v24 + v22;
      a8 = v46;
      v22 = v26 + v25;
    }

    v43 = v18;
    v44 = v17;
    if (a11 && a12 == 1)
    {
      v42 = v16;
      v22 += cstdlib_strlen(";MAPTAGS:");
      v27 = a8;
      v28 = *a7;
      if (*(*a7 + 160 * a8 + 72))
      {
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = cstdlib_strlen((*(a6 + 296) + *(*(a6 + 304) + 4 * *(*(v28 + 160 * v27 + 64) + v29))));
          v22 += v31 + cstdlib_strlen(a11);
          ++v30;
          v28 = *a7;
          v29 += 24;
        }

        while (v30 < *(*a7 + 160 * v27 + 72));
      }

      if (*(v28 + 160 * v27 + 8) == 1)
      {
        v22 += cstdlib_strlen(";OOV:1");
        v28 = *a7;
      }

      v16 = v42;
      v18 = v43;
      if (*(v28 + 160 * v27 + 120))
      {
        v32 = cstdlib_strlen(";CANONICAL:");
        v22 += v32 + cstdlib_strlen(*(*a7 + 160 * v27 + 120));
      }

      v17 = v44;
      a8 = v46;
    }

    if (v22 <= *(a7 + 48))
    {
      v33 = a7[10];
    }

    else
    {
      v33 = heap_Realloc(*(v45 + 8), a7[10], v22);
      if (!v33)
      {
        log_OutPublic(*(v45 + 32), "FE_POS", 35000, 0);
        return 2313166858;
      }

      *(a7 + 48) = v22;
      a7[10] = v33;
    }

    cstdlib_strcpy(v33, __s);
    if (a9)
    {
      hlp_NLUStrSet(a7[10], "POS", a9);
    }

    if (a10)
    {
      hlp_NLUStrSet(a7[10], "PHR", a10);
    }

    if (a12 == 1)
    {
      v34 = a8;
      v35 = *a7;
      if (*(*a7 + 160 * a8 + 72))
      {
        v36 = v16;
        v37 = 0;
        v38 = 0;
        do
        {
          hlp_NLUStrAppend(a7[10], "MAPTAGS", (*(a6 + 296) + *(*(a6 + 304) + 4 * *(*(v35 + 160 * v34 + 64) + v37))), a11);
          ++v38;
          v35 = *a7;
          v37 += 24;
        }

        while (v38 < *(*a7 + 160 * v34 + 72));
      }

      else
      {
        v36 = v16;
      }

      v16 = v36;
      v18 = v43;
      v17 = v44;
      if (*(v35 + 160 * v34 + 8) == 1)
      {
        hlp_NLUStrSet(a7[10], "OOV", "1");
        v35 = *a7;
      }

      v39 = *(v35 + 160 * v34 + 120);
      a8 = v46;
      if (v39)
      {
        hlp_NLUStrSet(a7[10], "CANONICAL", v39);
      }
    }

    log_OutText(*(v45 + 32), "FE_POS", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", a5, a8, __s, a7[10]);
    v40 = *(v18 + 160);
    v41 = cstdlib_strlen(a7[10]);
    return v40(v17, v16, a5, 14, (v41 + 1), a7[10], &v48);
  }

  return result;
}

uint64_t checkWordRecPOS(uint64_t *a1, unsigned int a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  v4 = *a1;
  v5 = *(*a1 + 160 * a2 + 72);
  if (!*(*a1 + 160 * a2 + 72))
  {
    return 0;
  }

  v6 = 0;
  result = 0;
  v8 = *(v4 + 160 * a2 + 64);
  do
  {
    v9 = v8 + 24 * v6;
    v10 = *(v9 + 16);
    if (*(v9 + 16))
    {
      v11 = *(v9 + 8);
      do
      {
        if (*(v11 + 2) == 1 && *v11 == a3)
        {
          *a4 = 1;
        }

        if (*(v11 + 1) == 1)
        {
          if (*v11 == a3)
          {
            result = 1;
          }

          else
          {
            result = result;
          }
        }

        v11 += 12;
        --v10;
      }

      while (v10);
    }

    ++v6;
  }

  while (v6 != v5);
  return result;
}

uint64_t getNewPOS(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, char **a5)
{
  v9 = *a2;
  if (*(*a2 + 160 * a3 + 72))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(v9 + 160 * a3 + 64);
      if (*(v12 + 24 * v10 + 16))
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(v12 + 24 * v10 + 8);
          if (*(v15 + v13) == a4)
          {
            v16 = v15 + v13;
            if (*(v16 + 4) == 1)
            {
              if (v11)
              {
                v17 = v11 + 1;
              }

              else
              {
                v17 = 0;
              }

              v11 = v17 + cstdlib_strlen(*(v16 + 16));
              v9 = *a2;
            }
          }

          ++v14;
          v12 = *(v9 + 160 * a3 + 64);
          v13 += 24;
        }

        while (v14 < *(v12 + 24 * v10 + 16));
      }

      ++v10;
    }

    while (v10 < *(v9 + 160 * a3 + 72));
    v18 = v11 + 2;
  }

  else
  {
    v18 = 2;
  }

  v19 = heap_Calloc(*(a1 + 8), 1, v18);
  if (v19)
  {
    v20 = v19;
    v21 = *a2;
    if (*(*a2 + 160 * a3 + 72))
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(v21 + 160 * a3 + 64);
        if (*(v24 + 24 * v22 + 16))
        {
          v25 = 0;
          v26 = 0;
          do
          {
            v27 = *(v24 + 24 * v22 + 8);
            if (*(v27 + v25) == a4 && *(v27 + v25 + 4) == 1)
            {
              if (v23)
              {
                cstdlib_strcat(v20, "\"");
                cstdlib_strcat(v20, *(*(*(*a2 + 160 * a3 + 64) + 24 * v22 + 8) + v25 + 16));
              }

              else
              {
                cstdlib_strcpy(v20, *(v27 + v25 + 16));
              }

              ++v23;
              v21 = *a2;
            }

            ++v26;
            v24 = *(v21 + 160 * a3 + 64);
            v25 += 24;
          }

          while (v26 < *(v24 + 24 * v22 + 16));
        }

        ++v22;
      }

      while (v22 < *(v21 + 160 * a3 + 72));
    }

    result = 0;
    *a5 = v20;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  return result;
}

uint64_t wordRecSplit(void *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(*a1 + 160 * a2 + 72);
  if (!*(*a1 + 160 * a2 + 72))
  {
    return 0;
  }

  v5 = 0;
  v6 = *(*a1 + 160 * a2 + 64);
  while (1)
  {
    v7 = v6 + 24 * v5;
    v8 = *(v7 + 16);
    if (*(v7 + 16))
    {
      break;
    }

LABEL_10:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  v9 = 0;
  v10 = 24 * v8;
  while (1)
  {
    if (v5 != a3 || 24 * a4 != v9)
    {
      v11 = *(v6 + 24 * v5 + 8);
      if (*(v11 + v9) == *(*(v6 + 24 * a3 + 8) + 24 * a4) && !*(v11 + v9 + 4))
      {
        return 1;
      }
    }

    v9 += 24;
    if (v10 == v9)
    {
      goto LABEL_10;
    }
  }
}

uint64_t statpos_alignDisambiguatedPOSToLingdb(uint64_t a1, int a2)
{
  v3 = (a1 + 648);
  v68 = *a1;
  if (*(a1 + 656))
  {
    v4 = 0;
    v69 = 0;
    v5 = 0;
    v6 = *(a1 + 648);
    v70 = vdupq_n_s64(4uLL);
    v7 = a2;
    do
    {
      v8 = v6 + 160 * v4;
      if (*(v8 + 72))
      {
        v9 = 0;
        do
        {
          v10 = cstdlib_strcmp((*(a1 + 304) + *(*(a1 + 312) + 4 * *(*(v8 + 64) + 24 * v9))), *(v8 + 88));
          v6 = *(a1 + 648);
          if (!v10)
          {
            v11 = v6 + 160 * v4;
            *(v11 + 96) = 1;
            v12 = *(v11 + 64) + 24 * v9;
            v13 = *(v12 + 16);
            if (*(v12 + 16))
            {
              v14 = *(v12 + 8);
              v15 = (v13 + 3) & 0x1FFFC;
              v16 = vdupq_n_s64(v13 - 1);
              v17 = (v14 + 52);
              v18 = xmmword_26ECC7980;
              v19 = xmmword_26ECCE810;
              do
              {
                v20 = vmovn_s64(vcgeq_u64(v16, v18));
                if (vuzp1_s16(v20, *v16.i8).u8[0])
                {
                  *(v17 - 12) = 1;
                }

                if (vuzp1_s16(v20, *&v16).i8[2])
                {
                  *(v17 - 6) = 1;
                }

                if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v19))).i32[1])
                {
                  *v17 = 1;
                  v17[6] = 1;
                }

                v21 = vdupq_n_s64(4uLL);
                v19 = vaddq_s64(v19, v21);
                v18 = vaddq_s64(v18, v21);
                v17 += 24;
                v15 -= 4;
              }

              while (v15);
            }
          }

          ++v9;
          v8 = v6 + 160 * v4;
        }

        while (v9 < *(v8 + 72));
      }

      if (*(a1 + 144) == 1 && !*(v8 + 96))
      {
        v38 = cstdlib_strlen(*(v8 + 88));
        v6 = *v3;
        if (*(*v3 + 160 * v4 + 72))
        {
          v39 = 0;
          LOWORD(v40) = 0;
          v71 = v38;
          do
          {
            v41 = cstdlib_strlen((*(a1 + 304) + *(*(a1 + 312) + 4 * *(*(v6 + 160 * v4 + 64) + 24 * v39))));
            if (v71 >= v41)
            {
              v42 = v41;
            }

            else
            {
              v42 = v71;
            }

            v6 = *(a1 + 648);
            for (i = 0; v42 > i; ++i)
            {
              if (*(*(a1 + 304) + *(*(a1 + 312) + 4 * *(*(v6 + 160 * v4 + 64) + 24 * v39)) + i) != *(*(v6 + 160 * v4 + 88) + i))
              {
                break;
              }
            }

            v44 = i > v40;
            if (i <= v40)
            {
              v40 = v40;
            }

            else
            {
              v40 = i;
            }

            if (v44)
            {
              v5 = v39;
            }

            ++v39;
            v45 = v6 + 160 * v4;
          }

          while (v39 < *(v45 + 72));
          v7 = a2;
          if (v40)
          {
            log_OutText(*(v68 + 32), "FE_POS", 5, 0, "Word[%d] %s select word record with POS %s, (closest to predicted POS %s using longest match)", v69, **(v45 + 48), (*(a1 + 304) + *(*(a1 + 312) + 4 * *(*(v45 + 64) + 24 * v5))), *(v45 + 88));
            v6 = *(a1 + 648);
            v46 = v6 + 160 * v4;
            *(v46 + 96) = 1;
            v47 = *(v46 + 64) + 24 * v5;
            v48 = *(v47 + 16);
            if (*(v47 + 16))
            {
              v49 = *(v47 + 8);
              v50 = (v48 + 3) & 0x1FFFC;
              v51 = vdupq_n_s64(v48 - 1);
              v52 = (v49 + 52);
              v53 = xmmword_26ECC7980;
              v54 = xmmword_26ECCE810;
              do
              {
                v55 = vmovn_s64(vcgeq_u64(v51, v53));
                if (vuzp1_s16(v55, *v51.i8).u8[0])
                {
                  *(v52 - 12) = 1;
                }

                if (vuzp1_s16(v55, *&v51).i8[2])
                {
                  *(v52 - 6) = 1;
                }

                if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, *&v54))).i32[1])
                {
                  *v52 = 1;
                  v52[6] = 1;
                }

                v54 = vaddq_s64(v54, v70);
                v53 = vaddq_s64(v53, v70);
                v52 += 24;
                v50 -= 4;
              }

              while (v50);
            }
          }
        }
      }

      v22 = v6 + 160 * v4;
      if (!*(v22 + 96))
      {
        if (!v7)
        {
          log_OutText(*(v68 + 32), "FE_POS", 5, 0, "Warning : no matching tags for word[%d] %s (predicted=%s, lexicon=%s)", v69, **(v22 + 48), *(v22 + 88), *(v22 + 80));
          v6 = *v3;
        }

        v23 = v6 + 160 * v4;
        *(v23 + 96) = 1;
        v24 = *(v23 + 72);
        if (v24)
        {
          v25 = 0;
          v26 = *(v6 + 160 * v4 + 64);
          do
          {
            v27 = v26 + 24 * v25;
            v28 = *(v27 + 16);
            if (*(v27 + 16))
            {
              v29 = *(v27 + 8);
              v30 = (v28 + 3) & 0x1FFFC;
              v31 = vdupq_n_s64(v28 - 1);
              v32 = (v29 + 52);
              v33 = xmmword_26ECC7980;
              v34 = xmmword_26ECCE810;
              do
              {
                v35 = vmovn_s64(vcgeq_u64(v31, v33));
                if (vuzp1_s16(v35, *v31.i8).u8[0])
                {
                  *(v32 - 12) = 1;
                }

                if (vuzp1_s16(v35, *&v31).i8[2])
                {
                  *(v32 - 6) = 1;
                }

                if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v34))).i32[1])
                {
                  *v32 = 1;
                  v32[6] = 1;
                }

                v36 = vdupq_n_s64(4uLL);
                v34 = vaddq_s64(v34, v36);
                v33 = vaddq_s64(v33, v36);
                v32 += 24;
                v30 -= 4;
              }

              while (v30);
            }

            ++v25;
          }

          while (v25 != v24);
        }
      }

      ++v4;
      v37 = *(a1 + 656);
      v69 = v4;
    }

    while (v4 < v37);
    if (*(a1 + 656))
    {
      v56 = 0;
      v73 = *v3;
      do
      {
        v72 = v37;
        v57 = v73 + 160 * v56;
        v58 = *(v57 + 72);
        if (*(v57 + 72))
        {
          v59 = 0;
          v60 = *(v73 + 160 * v56 + 64);
          do
          {
            v61 = v60 + 24 * v59;
            v62 = *(v61 + 16);
            if (*(v61 + 16))
            {
              v63 = 0;
              v64 = (*(v61 + 8) + 8);
              do
              {
                if (*(v64 - 1) == 1 && wordRecSplit(v3, v56, v59, v63))
                {
                  *v64 = 1;
                }

                v64 += 6;
                ++v63;
              }

              while (v62 != v63);
            }

            ++v59;
          }

          while (v59 != v58);
        }

        ++v56;
        v37 = v72;
      }

      while (v56 != v72);
    }
  }

  v65 = *(a1 + 1416);

  return printSent_0(v68, a1 + 8, v3, "after statpos_alignDisambiguatedPOSToLingdb()", v65, a2);
}

uint64_t statpos_updatePOSLingdbWithDisambiguatedPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, int a6)
{
  v8 = a4;
  __b[32] = *MEMORY[0x277D85DE8];
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  __s1 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v13 = a4 + 1;
  v12 = *a4;
  v14 = (*(a1 + 104))(a2, a3, 1, 0, &v93);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v15 = (*(a1 + 184))(a2, a3, v93, 0, &v93 + 2);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  if (HIWORD(v93) != 1)
  {
    return v15;
  }

  v15 = (*(a1 + 176))(a2, a3, v93, 0, &v87, &v91 + 2);
  if ((v15 & 0x80000000) != 0 || HIWORD(v91) < 2u)
  {
    return v15;
  }

  v14 = (*(a1 + 104))(a2, a3, 2, v93, &v92 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v75 = a5;
  v81 = v12;
  v16 = (v8 + 81);
  v88 = 0;
  cstdlib_strcpy(v8[91], "");
  while (1)
  {
    if (!HIWORD(v92))
    {
      v15 = (*(a1 + 104))(a2, a3, 2, v93, &v92 + 2);
      v22 = v81;
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      v44 = HIWORD(v92);
      if (HIWORD(v92))
      {
        while (1)
        {
          updated = (*(a1 + 120))(a2, a3, v44, &v92);
          if ((updated & 0x80000000) != 0)
          {
            break;
          }

          v15 = (*(a1 + 168))(a2, a3, HIWORD(v92), 0, 1, &v90, &v91 + 2);
          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_46;
          }

          if (v90 <= 0xA && ((1 << v90) & 0x610) != 0)
          {
            updated = (*(a1 + 176))(a2, a3, HIWORD(v92), 5, &__s1, &v91 + 2);
            if ((updated & 0x80000000) != 0)
            {
              break;
            }

            v46 = __s1;
            v47 = cstdlib_strlen(__s1);
            v48 = *v46;
            v49 = v46;
            while (v48 == 92)
            {
              --v47;
              v50 = *++v49;
              v48 = v50;
            }

            cstdlib_memmove(v46, v49, (v47 + 1));
            v51 = cstdlib_strchr(v46, 92);
            if (v51)
            {
              *v51 = 0;
            }

            v52 = *(a1 + 160);
            v53 = HIWORD(v92);
            v54 = cstdlib_strlen(__s1);
            WordIdx_0 = v52(a2, a3, v53, 5, (v54 + 1), __s1, &v91);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            updated = (*(a1 + 184))(a2, a3, HIWORD(v92), 14, &v93 + 2);
            v22 = v81;
            if ((updated & 0x80000000) != 0)
            {
              break;
            }

            if (HIWORD(v93) != 1)
            {
              goto LABEL_146;
            }

            __b[0] = 0;
            v94[0] = 0;
            v82 = 0;
            v15 = (*(a1 + 176))(a2, a3, HIWORD(v92), 14, __b, &v91 + 2);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_46;
            }

            if (HIWORD(v91) < 2u || !hlp_NLUStrFind(__b[0], "POS", v94, &v82))
            {
LABEL_146:
              v15 = (*(a1 + 192))(a2, a3, HIWORD(v92));
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_46;
              }
            }
          }

          v44 = v92;
          HIWORD(v92) = v92;
          if (!v92)
          {
            goto LABEL_72;
          }
        }

LABEL_138:
        v15 = updated;
        goto LABEL_46;
      }

LABEL_72:
      if (v75 != 1)
      {
        goto LABEL_46;
      }

      v82 = 0;
      log_OutText(*(v22 + 32), "FE_POS", 5, 0, "No SGRAM : removing duplicate tags on lingdb words", 0);
      cstdlib_memset(__b, 0, 0x100uLL);
      cstdlib_memset(v94, 0, 0x100uLL);
      v88 = 0;
      WordIdx_0 = (*(a1 + 104))(a2, a3, 2, v93, &v92 + 2);
      if ((WordIdx_0 & 0x80000000) == 0)
      {
        v80 = v16;
        v55 = HIWORD(v92);
        if (HIWORD(v92))
        {
          LODWORD(v56) = 0;
          v57 = 0xFFFFLL;
          while (1)
          {
            WordIdx_0 = (*(a1 + 120))(a2, a3, v55, &v92);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v92), 0, 1, &v90, &v91 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            if (v90 > 0xA || ((1 << v90) & 0x610) == 0)
            {
              goto LABEL_85;
            }

            WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v92), 1, 1, &v89, &v91 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v92), 2, 1, &v89 + 2, &v91 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            if (v89 == HIWORD(v89))
            {
LABEL_85:
              v59 = v57;
            }

            else
            {
              WordIdx_0 = getWordIdx_0(*v8, v80, v89, HIWORD(v89), &v88);
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                goto LABEL_44;
              }

              v59 = v88;
              if (subsumedWordRec(v80, v88))
              {
                WordIdx_0 = (*(a1 + 192))(a2, a3, HIWORD(v92));
                if ((WordIdx_0 & 0x80000000) != 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_111;
              }

              WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v92), 5, &__s1, &v91 + 2);
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                goto LABEL_44;
              }

              WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v92), 3, &v85, &v91 + 2);
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                goto LABEL_44;
              }

              WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v92), 7, 1, &v82, &v91 + 2);
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                goto LABEL_44;
              }

              if (v57 == 0xFFFF || v59 == v57)
              {
                if (v56 > 0x7F)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                if (v56 >= 2)
                {
                  v60 = 0;
                  v61 = -1;
                  v62 = -1;
                  v56 = v56;
                  do
                  {
                    v63 = *(v94 + v60);
                    if (v63 <= v61)
                    {
                      v62 = v60;
                    }

                    if (v63 < v61)
                    {
                      v61 = *(v94 + v60);
                    }

                    ++v60;
                  }

                  while (v56 != v60);
                  v64 = v62;
                  v65 = __b;
                  while (1)
                  {
                    if (v64)
                    {
                      WordIdx_0 = (*(a1 + 192))(a2, a3, *v65);
                      if ((WordIdx_0 & 0x80000000) != 0)
                      {
                        goto LABEL_44;
                      }
                    }

                    v65 = (v65 + 2);
                    --v64;
                    if (!--v56)
                    {
                      goto LABEL_110;
                    }
                  }
                }

                LODWORD(v56) = 0;
              }

LABEL_110:
              *(__b + v56) = HIWORD(v92);
              *(v94 + v56) = v82;
              LODWORD(v56) = v56 + 1;
            }

LABEL_111:
            v55 = v92;
            HIWORD(v92) = v92;
            v57 = v59;
            if (!v92)
            {
              if (v56 < 2)
              {
                break;
              }

              v66 = 0;
              v67 = -1;
              v68 = -1;
              v56 = v56;
              do
              {
                v69 = *(v94 + v66);
                if (v69 <= v67)
                {
                  v68 = v66;
                }

                if (v69 < v67)
                {
                  v67 = *(v94 + v66);
                }

                ++v66;
              }

              while (v56 != v66);
              v70 = v68;
              v71 = __b;
              while (1)
              {
                if (v70)
                {
                  WordIdx_0 = (*(a1 + 192))(a2, a3, *v71);
                  if ((WordIdx_0 & 0x80000000) != 0)
                  {
                    goto LABEL_44;
                  }
                }

                v71 = (v71 + 2);
                --v70;
                if (!--v56)
                {
                  goto LABEL_123;
                }
              }
            }
          }
        }

LABEL_123:
        v15 = (*(a1 + 104))(a2, a3, 2, v93, &v92 + 2);
        if ((v15 & 0x80000000) != 0 || (v72 = HIWORD(v92)) == 0)
        {
LABEL_45:
          v22 = v81;
          goto LABEL_46;
        }

        v73 = 0;
        while (1)
        {
          WordIdx_0 = (*(a1 + 168))(a2, a3, v72, 0, 1, &v90, &v91 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            break;
          }

          if (v90 <= 0xA && ((1 << v90) & 0x610) != 0)
          {
            WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v92), 5, &__s1, &v91 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              break;
            }

            WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v92), 3, &v85, &v91 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              break;
            }

            if (v73 < *(v8 + 328))
            {
              log_OutText(*(v81 + 32), "FE_POS", 5, 0, "(no sgram) word %d %s POS=%s PHON=%s recId=%d", v73, **(*v80 + 160 * v73 + 48), __s1, v85, HIWORD(v92));
              ++v73;
            }
          }

          v15 = (*(a1 + 120))(a2, a3, HIWORD(v92), &v92);
          if ((v15 & 0x80000000) == 0)
          {
            v72 = v92;
            HIWORD(v92) = v92;
            if (v92)
            {
              continue;
            }
          }

          goto LABEL_45;
        }
      }

LABEL_44:
      v15 = WordIdx_0;
      goto LABEL_45;
    }

    WordIdx_0 = (*(a1 + 168))(a2, a3);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_44;
    }

    if (v90 <= 0xA && ((1 << v90) & 0x610) != 0)
    {
      WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v92), 1, 1, &v89, &v91 + 2);
      if ((WordIdx_0 & 0x80000000) != 0)
      {
        goto LABEL_44;
      }

      WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v92), 2, 1, &v89 + 2, &v91 + 2);
      if ((WordIdx_0 & 0x80000000) != 0)
      {
        goto LABEL_44;
      }

      if (v89 != HIWORD(v89))
      {
        WordIdx_0 = getWordIdx_0(*v8, v16, v89, HIWORD(v89), &v88);
        if ((WordIdx_0 & 0x80000000) != 0)
        {
          goto LABEL_44;
        }

        v19 = *(v8 + 359);
        v20 = v88;
        if (v19 || !subsumedWordRec(v16, v88))
        {
          v83 = 0;
          v21 = HIWORD(v92);
          if (checkWordRecPOS(v16, v20, HIWORD(v92), &v83) | v19)
          {
            WordIdx_0 = (*(a1 + 176))(a2, a3, v21, 5, &__s1, &v91 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            v22 = v81;
            if (a6 == 1 && v90 == 4)
            {
              updated = updateNLUField_0(v81, a1, a2, a3, HIWORD(v92), v13, v16, v20, __s1, 0, 0, 0);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_138;
              }

              v24 = v81;
              v25 = v16;
              log_OutText(*(v81 + 32), "FE_POS", 5, 0, "SET DCT WORD Word[%d] %s POS %s to NLU POS", v20, **(*v16 + 160 * v20 + 48), __s1);
              goto LABEL_37;
            }

            if (v83 == 1)
            {
              updated = getNewPOS(v81, v16, v20, HIWORD(v92), &v84);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_138;
              }

              log_OutText(*(v81 + 32), "FE_POS", 5, 0, "REPLACE Word[%d] %s POS %s", v20, **(*v16 + 160 * v20 + 48), __s1);
              v26 = v84;
              log_OutText(*(v81 + 32), "FE_POS", 5, 0, "\twith %s", v84);
              v76 = *(a1 + 160);
              v27 = HIWORD(v92);
              v28 = cstdlib_strlen(v26);
              v29 = v76(a2, a3, v27, 5, (v28 + 1), v26, &v91);
              if ((v29 & 0x80000000) != 0)
              {
                v15 = v29;
                v22 = v81;
                goto LABEL_46;
              }

              heap_Free(*(v81 + 8), v26);
              v84 = 0;
              v22 = v81;
            }

            else if (*(v8 + 360))
            {
              if (!cstdlib_strcmp(__s1, "*"))
              {
                log_OutText(*(v81 + 32), "FE_POS", 5, 0, "REPLACE Word[%d] %s POS %s", v20, **(*v16 + 160 * v20 + 48), __s1);
                log_OutText(*(v81 + 32), "FE_POS", 5, 0, "\twith %s", *(*v16 + 160 * v20 + 88));
                v77 = *(a1 + 160);
                v30 = HIWORD(v92);
                v31 = cstdlib_strlen(*(*v16 + 160 * v20 + 88));
                v32 = v30;
                v22 = v81;
                updated = v77(a2, a3, v32, 5, (v31 + 1), *(*v16 + 160 * v20 + 88), &v91);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_138;
                }
              }
            }

            updated = updateNLUField_0(v22, a1, a2, a3, HIWORD(v92), v13, v16, v20, *(*v16 + 160 * v20 + 88), 0, 0, 0);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_138;
            }

            if (a6 == 1)
            {
              break;
            }
          }
        }
      }
    }

LABEL_43:
    WordIdx_0 = (*(a1 + 120))(a2, a3, HIWORD(v92), &v92 + 2);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_44;
    }
  }

  log_OutText(*(v81 + 32), "FE_POS", 5, 0, "set Word[%d] POS to %s", v20, *(*v16 + 160 * v20 + 88));
  v78 = *(a1 + 160);
  v33 = HIWORD(v92);
  v34 = cstdlib_strlen(*(*v16 + 160 * v20 + 88));
  v35 = v33;
  v24 = v81;
  v25 = v16;
  v36 = v78(a2, a3, v35, 5, (v34 + 1), *(*v16 + 160 * v20 + 88), &v91);
  if ((v36 & 0x80000000) != 0)
  {
    v15 = v36;
    v22 = v81;
    goto LABEL_46;
  }

LABEL_37:
  v79 = v8;
  v37 = v25;
  if (*(*v25 + 160 * v20 + 24))
  {
    log_OutText(*(v24 + 32), "FE_POS", 5, 0, "keep Word[%d] PHON", v20);
    v16 = v25;
LABEL_42:
    v8 = v79;
    a6 = 1;
    goto LABEL_43;
  }

  v38 = (*(a1 + 176))(a2, a3, HIWORD(v92), 3, &v85, &v91 + 2);
  if ((v38 & 0x80000000) != 0)
  {
    v15 = v38;
    v22 = v24;
    goto LABEL_141;
  }

  v39 = *(a1 + 160);
  v40 = HIWORD(v92);
  v16 = v37;
  v41 = cstdlib_strlen(*(*v37 + 160 * v20 + 32));
  v42 = v39(a2, a3, v40, 3, (v41 + 1), *(*v37 + 160 * v20 + 32), &v91);
  if ((v42 & 0x80000000) == 0)
  {
    log_OutText(*(v81 + 32), "FE_POS", 5, 0, "set Word[%d] PHON to %s", v20, *(*v37 + 160 * v20 + 32));
    goto LABEL_42;
  }

  v15 = v42;
  v22 = v81;
LABEL_141:
  v8 = v79;
LABEL_46:
  cstdlib_strcpy(v8[91], "");
  if (v84)
  {
    heap_Free(*(v22 + 8), v84);
  }

  return v15;
}

uint64_t subsumedWordRec(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    if (160 * a2 != v2)
    {
      v3 = (*a1 + 160 * a2);
      if (*v3 >= *(*a1 + v2) && v3[1] <= *(*a1 + v2 + 2))
      {
        break;
      }
    }

    v2 += 160;
    if (160 * *(a1 + 8) == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t statpos_disambiguatePOSTags(uint64_t a1)
{
  v2 = *a1;
  v3 = heap_Calloc(*(*a1 + 8), 1, 1024);
  *(a1 + 776) = v3;
  if (!v3)
  {
    log_OutPublic(*(v2 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  if (*(a1 + 1336) == 1)
  {
    v4 = statpos_crf_label(v2, a1 + 1320, (a1 + 648), (a1 + 8), 1);
LABEL_7:
    v5 = v4;
    goto LABEL_9;
  }

  if (*(a1 + 804) == 1)
  {
    v4 = statpos_igtrees_label(v2, a1 + 8, (a1 + 648), (a1 + 784));
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:
  v6 = *(a1 + 776);
  if (v6)
  {
    heap_Free(*(v2 + 8), v6);
    *(a1 + 776) = 0;
  }

  return v5;
}

uint64_t statpos_setMorphemePRON(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 656))
  {
    v6 = 0;
    v7 = *a4;
    v8 = (a4 + 728);
    v9 = 120;
    while (1)
    {
      cstdlib_strcpy(*(a4 + 728), "");
      v10 = *(a4 + 648);
      v11 = *(v10 + v9);
      if (!v11)
      {
        v11 = **(v10 + v9 - 72);
      }

      v12 = statPOS_add2Str(v7, (a4 + 728), (a4 + 744), v11);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v13 = *(a4 + 648) + v9;
      if (*(v13 - 96) == 1)
      {
        break;
      }

      if (!*(v13 - 32))
      {
        goto LABEL_14;
      }

      v12 = statPOS_add2Str(v7, (a4 + 728), (a4 + 744), "/");
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v12 = statPOS_add2Str(v7, (a4 + 728), (a4 + 744), *(*(a4 + 648) + v9 - 32));
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      info_from_dct = statpos_get_info_from_dct(v7, *(a4 + 752), *(a4 + 760), *(a4 + 768), "morph_pos", *(a4 + 728), (*(a4 + 648) + v9 - 88), 0, "STR");
      if ((info_from_dct & 0x80000000) != 0)
      {
        return info_from_dct;
      }

      v15 = *(v7 + 32);
      if (*(*(a4 + 648) + v9 - 88))
      {
        log_OutText(v15, "FE_POS", 5, 0, "lookup %s ; transcription %s");
      }

      else
      {
        v16 = a3;
        log_OutText(v15, "FE_POS", 5, 0, "lookup %s ; FAILED", *(a4 + 728));
        v17 = cstdlib_strlen(v11);
        v18 = Utf8_LengthInUtf8chars(v11, v17);
        v19 = *(*(a4 + 648) + v9 - 32);
        v20 = cstdlib_strlen(v19);
        if (Utf8_LengthInUtf8chars(v19, v20) > v18)
        {
          v21 = *(*(a4 + 648) + v9 - 32);
          v22 = cstdlib_strlen(v21);
          v18 = Utf8_LengthInUtf8chars(v21, v22);
        }

        v12 = statpos_growAndSetLayer(v7, (a4 + 1384), (a4 + 1400), v11, v18);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v12 = statpos_growAndSetLayer(v7, (a4 + 1392), (a4 + 1408), *(*(a4 + 648) + v9 - 32), v18);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        a3 = v16;
        info_from_dct = statPOS_call_one_word(v7, a1, a2, v16, (a4 + 1384), (a4 + 1392), (*(a4 + 648) + v9 - 88));
        if ((info_from_dct & 0x80000000) != 0)
        {
          return info_from_dct;
        }

        log_OutText(*(v7 + 32), "FE_POS", 5, 0, "%s ; one_word transcription %s");
      }

LABEL_21:
      ++v6;
      v9 += 160;
      if (v6 >= *(a4 + 656))
      {
        goto LABEL_24;
      }
    }

    log_OutText(*(v7 + 32), "FE_POS", 5, 0, "SKIP DCT LOOKUP WORD %s", *v8);
LABEL_14:
    info_from_dct = 0;
    goto LABEL_21;
  }

  info_from_dct = 0;
LABEL_24:
  cstdlib_strcpy(*(a4 + 728), "");
  return info_from_dct;
}

uint64_t statpos_growAndSetLayer(uint64_t a1, char **a2, void *a3, char *__src, unsigned int a5)
{
  v8 = *a2;
  if (*a3 < a5)
  {
    v11 = heap_Realloc(*(a1 + 8), v8, a5 + 2);
    if (!v11)
    {
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
      return 2313166858;
    }

    v8 = v11;
    *a2 = v11;
    *a3 = a5 + 2;
  }

  cstdlib_strcpy(v8, __src);
  for (i = cstdlib_strlen(__src); i < a5; ++i)
  {
    cstdlib_strcat(*a2, "~");
  }

  return 0;
}

uint64_t statpos_getUniqDynamicPOS(uint64_t a1, uint64_t a2, char *__s, _DWORD *a4)
{
  *a4 = -1;
  if (!*(a2 + 312))
  {
LABEL_5:
    v9 = cstdlib_strlen(__s);
    v10 = v9;
    v11 = v9;
    v12 = *(a2 + 316);
    if (*(a2 + 324) + v9 >= v12)
    {
      if (v9 >= 0x80u)
      {
        v13 = (v9 + 32);
      }

      else
      {
        v13 = 128;
      }

      v14 = heap_Realloc(*(a1 + 8), *(a2 + 296), (v13 + v12));
      if (!v14)
      {
        goto LABEL_17;
      }

      *(a2 + 296) = v14;
      *(a2 + 316) += v13;
    }

    v15 = *(a2 + 320);
    if (*(a2 + 312) < v15)
    {
LABEL_14:
      v17 = *(a2 + 296);
      if (*(a2 + 324))
      {
        cstdlib_strcat(&v17[*(a2 + 324)], __s);
      }

      else
      {
        cstdlib_strcpy(v17, __s);
      }

      v18 = 0;
      *(*(a2 + 296) + v11 + *(a2 + 324) + 1) = 0;
      v19 = *(a2 + 324);
      v20 = *(a2 + 312);
      *(*(a2 + 304) + 4 * *(a2 + 312)) = v19;
      *(a2 + 324) = v10 + v19 + 1;
      *a4 = v20;
      *(a2 + 312) = v20 + 1;
      return v18;
    }

    v16 = heap_Realloc(*(a1 + 8), *(a2 + 304), 4 * (v15 + 16));
    if (v16)
    {
      *(a2 + 304) = v16;
      *(a2 + 320) += 16;
      goto LABEL_14;
    }

LABEL_17:
    v18 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v18;
  }

  v8 = 0;
  while (cstdlib_strcmp(__s, (*(a2 + 296) + *(*(a2 + 304) + 4 * v8))))
  {
    if (++v8 >= *(a2 + 312))
    {
      goto LABEL_5;
    }
  }

  v18 = 0;
  *a4 = v8;
  return v18;
}

uint64_t addPOSandPHR(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, int a5, const char *a6, unsigned int a7, const char *a8, unsigned __int16 a9)
{
  v11 = a4;
  if (a4 == a5)
  {
    if (a4 + 1 == *(a3 + 4))
    {
      LOWORD(a5) = a4 + 1;
    }

    else
    {
      LOWORD(a5) = a4;
    }
  }

  if (a4 >= a5)
  {
    return 0;
  }

  v14 = a7;
  v15 = a4;
  v24 = a5;
  v16 = *a3;
  for (i = 160 * a4 + 104; ; i += 160)
  {
    v18 = *(*(v16 + i - 56) + 24);
    if (v18)
    {
      heap_Free(*(a1 + 8), v18);
      v19 = (*a3 + i);
      *(*(v19 - 7) + 24) = 0;
      heap_Free(*(a1 + 8), *v19);
      *(*a3 + i) = 0;
    }

    v20 = heap_Calloc(*(a1 + 8), 1, v14 + 1);
    *(*(*a3 + i - 56) + 24) = v20;
    if (!v20)
    {
      break;
    }

    if (a6)
    {
      cstdlib_strncat(v20, a6, v14);
      v20 = *(*(*a3 + i - 56) + 24);
    }

    a3[6] = v20;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag REF POS %s", v20);
    v21 = statpos_retagREFPOS(a1, a2, a3, v15);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    v22 = heap_Calloc(*(a1 + 8), 1, a9 + 1);
    v16 = *a3;
    *(*a3 + i) = v22;
    if (!v22)
    {
      break;
    }

    if (a8)
    {
      cstdlib_strncat(v22, a8, a9);
      v16 = *a3;
    }

    *(v16 + i - 100) = v11;
    if (v24 == ++v15)
    {
      return v21;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t checkSpan_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    return 0;
  }

  v6 = heap_Calloc(*(a1 + 8), 1, (24 * *(a2 + 376)) | 1);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a3 = v7;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  return result;
}

uint64_t checkAllocAndZero(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = a3;
  if (v5)
  {
    v8 = heap_Realloc(v6, v5, a3);
    if (v8)
    {
      v9 = v8;
      cstdlib_memset(v8, 0, v7);
LABEL_5:
      result = 0;
      *a2 = v9;
      return result;
    }
  }

  else
  {
    v9 = heap_Calloc(v6, 1, a3);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t loc_CopyValue(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = 2313166855;
  if (a1 && a2 && a3)
  {
    v6 = heap_Alloc(a2, 5);
    if (v6)
    {
      v3 = 0;
      *v6 = *a1;
      *a3 = v6;
    }

    else
    {
      return 2313166858;
    }
  }

  return v3;
}

void *loc_FreeValue(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

uint64_t logSTATPOSRULE_TRule(uint64_t result, const char **a2, unsigned __int16 *a3, char *__s, uint64_t *a5, uint64_t **a6)
{
  if (result)
  {
    if (!*a6 || (result = logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, *a6), (result & 0x80000000) == 0))
    {
      *__s = 2121504;
      result = statPOS_add2Str(*a5, a2, a3, __s);
      if ((result & 0x80000000) == 0)
      {
        v11 = a6[1];
        if (!v11 || (result = logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, v11), (result & 0x80000000) == 0))
        {
          *__s = 2121504;
          result = statPOS_add2Str(*a5, a2, a3, __s);
          if ((result & 0x80000000) == 0)
          {
            v12 = a6[2];
            if (v12)
            {

              return logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, v12);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t logSTATPOSCONTEXT_TRule(const char **a1, unsigned __int16 *a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  if (*(a5 + 4))
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *a5;
      v13 = (*a5 + v10);
      if (!*(v13 + 4))
      {
        goto LABEL_13;
      }

      v14 = "!";
      if ((v13[2] & 1) != 0 || (v14 = "HASCOMMA ", (v13[2] & 2) != 0) || (v14 = "DIRECTIVE_MOVE2NEXT ", (v13[2] & 4) != 0) || (v14 = "ISLASTINPHR ", (v13[2] & 8) != 0) || (v14 = "ISFIRSTINPHR ", (v13[2] & 0x10) != 0))
      {
        v15 = v13[2] & 1;
        cstdlib_strcpy(__s, v14);
      }

      else
      {
        v15 = 1;
      }

      result = statPOS_add2Str(*a4, a1, a2, __s);
      if (v15)
      {
        if ((result & 0x80000000) == 0)
        {
LABEL_13:
          result = statPOS_add2Str(*a4, a1, a2, "[");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statPOS_add2Str(*a4, a1, a2, (a4[37] + *(a4[38] + 4 * *v13)));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          sprintf(__s, " %d(", *(v12 + v10 + 2));
          result = statPOS_add2Str(*a4, a1, a2, __s);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statPOS_add2Str(*a4, a1, a2, (a4[32] + *(a4[33] + 4 * *(v12 + v10 + 2))));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statPOS_add2Str(*a4, a1, a2, ")] ");
        }
      }

      if ((result & 0x80000000) == 0)
      {
        ++v11;
        v10 += 6;
        if (v11 < *(a5 + 4))
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

uint64_t statpos_rules_unload(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[33];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[33] = 0;
  }

  v4 = a1[35];
  if (v4)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[35] = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[38];
  if (v6)
  {
    heap_Free(*(v2 + 8), v6);
    a1[38] = 0;
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

  v8 = a1[28];
  if (v8)
  {
    heap_Free(*(v2 + 8), v8);
    a1[28] = 0;
  }

  v9 = a1[30];
  if (v9)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v9);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[30] = 0;
  }

  v10 = a1[42];
  if (v10)
  {
    heap_Free(*(v2 + 8), v10);
    a1[42] = 0;
  }

  v11 = a1[43];
  if (v11)
  {
    heap_Free(*(v2 + 8), v11);
    a1[43] = 0;
  }

  v12 = a1[44];
  if (v12)
  {
    heap_Free(*(v2 + 8), v12);
    a1[44] = 0;
  }

  v13 = a1[45];
  if (v13)
  {
    heap_Free(*(v2 + 8), v13);
    a1[45] = 0;
  }

  v14 = a1[46];
  if (v14)
  {
    heap_Free(*(v2 + 8), v14);
    a1[46] = 0;
  }

  v15 = a1[6];
  if (v15)
  {
    if (*(a1 + 28))
    {
      v16 = 0;
      v17 = 0;
      do
      {
        freeMAPRULE2STR_TRule_0(v2, (a1[6] + v16));
        ++v17;
        v16 += 32;
      }

      while (v17 < *(a1 + 28));
      v15 = a1[6];
    }

    heap_Free(*(v2 + 8), v15);
    a1[6] = 0;
  }

  *(a1 + 28) = 0;
  v18 = a1[8];
  if (v18)
  {
    if (*(a1 + 36))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        freeMAPRULE2STR_TRule_0(v2, (a1[8] + v19));
        ++v20;
        v19 += 32;
      }

      while (v20 < *(a1 + 36));
      v18 = a1[8];
    }

    heap_Free(*(v2 + 8), v18);
    a1[8] = 0;
  }

  *(a1 + 36) = 0;
  v21 = a1[10];
  if (v21)
  {
    v22 = *(a1 + 44);
    if (*(a1 + 44))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        if (*(v21 + v23 + 16))
        {
          heap_Free(*(v2 + 8), *(v21 + v23 + 8));
          v21 = a1[10];
          v25 = v21 + v23;
          *(v25 + 8) = 0;
          *(v25 + 16) = 0;
          v22 = *(a1 + 44);
        }

        ++v24;
        v23 += 24;
      }

      while (v24 < v22);
    }

    heap_Free(*(v2 + 8), v21);
    a1[10] = 0;
  }

  *(a1 + 44) = 0;
  if (*(a1 + 52))
  {
    heap_Free(*(v2 + 8), a1[12]);
    a1[12] = 0;
    *(a1 + 52) = 0;
    ssftmap_ObjClose(a1[14]);
  }

  if (a1[18])
  {
    v26 = 0;
    v27 = a1 + 48;
    do
    {
      heap_Free(*(v2 + 8), v27[v26]);
      v27[v26++] = 0;
    }

    while (v26 != 32);
    v28 = a1[18];
    if (v28)
    {
      ssftmap_ObjClose(v28);
      a1[18] = 0;
    }
  }

  v29 = a1[4];
  if (v29)
  {
    heap_Free(*(v2 + 8), v29);
    a1[4] = 0;
  }

  *(a1 + 20) = 0;
  return v5;
}

void *freeMAPRULE2STR_TRule_0(void *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  if (v4)
  {
    if (*(v4 + 8))
    {
      heap_Free(result[1], *v4);
      *v4 = 0;
      v4 = a2[1];
    }

    result = heap_Free(v3[1], v4);
    a2[1] = 0;
  }

  v5 = a2[2];
  if (v5)
  {
    if (*(v5 + 8))
    {
      heap_Free(v3[1], *v5);
      *v5 = 0;
      v5 = a2[2];
    }

    result = heap_Free(v3[1], v5);
    a2[2] = 0;
  }

  v6 = a2[3];
  if (v6)
  {
    if (*(v6 + 8))
    {
      heap_Free(v3[1], *v6);
      *v6 = 0;
      v6 = a2[3];
    }

    result = heap_Free(v3[1], v6);
    a2[3] = 0;
  }

  return result;
}

uint64_t matchSTATPOSCONTEXT_TRule(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int *a6, _WORD *a7, uint64_t a8)
{
  v8 = a8;
  v22 = 1;
  v15 = *a2;
  *a6 = 0;
  *(a5 + 6) = 0;
  if (*(a2 + 8))
  {
    matched = logSTATPOSCONTEXT_TRule((a3 + 80), (a3 + 96), *(a3 + 88), a2, a4);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "         %s %s", a1, *(a3 + 80));
    cstdlib_strcpy(*(a3 + 80), "");
  }

  else
  {
    matched = 0;
  }

  if (*(a4 + 8))
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      matched = matchREGEX_TRule_0(a2, a3, (*a4 + v18), a5, &v22, a7, v8);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v20 = v22;
      if (v22 != 1)
      {
        goto LABEL_11;
      }

      ++v19;
      v18 += 6;
      if (v19 >= *(a4 + 8))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v20 = 1;
LABEL_11:
    *a6 = v20;
  }

  return matched;
}

uint64_t matchREGEX_TRule_0(uint64_t *a1, uint64_t *a2, unsigned __int16 *a3, unsigned int *a4, int *a5, _WORD *a6, int a7)
{
  v50 = *MEMORY[0x277D85DE8];
  v14 = *(a4 + 2);
  v15 = *a1;
  *a5 = 0;
  if (*(a1 + 4))
  {
    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           regex %d", a3[1]);
  }

  v16 = *(a3 + 4);
  if (*(a3 + 4))
  {
    if ((v16 & 4) != 0)
    {
      if (a7 == 2)
      {
        ++*(a4 + 4);
      }

      else if (a7 == 1)
      {
        ++*(a4 + 3);
      }

      if (*(a1 + 4))
      {
        log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           DIRECTIVE_MOVE2NEXT - window increased (ruleDef->left_window=%d ruleDef->right_window=%d)", *(a4 + 3), *(a4 + 4));
      }

      v20 = 0;
      goto LABEL_33;
    }

    v48 = a6;
    v17 = (v16 >> 1) & 1;
    v18 = v16 & 1;
    v16 = v18;
  }

  else
  {
    v48 = a6;
    v18 = 0;
    v17 = 0;
  }

  if (*(a1 + 4) >= 2u)
  {
    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d bHasComma=%d", STATPOSDOMAIN2STRING[*a4], *a4, *(a4 + 2), *(a4 + 3), *(a4 + 4), (a1[37] + *(a1[38] + 4 * *a3)), *a3, v16, v17);
  }

  if (!v17)
  {
    v22 = *a4;
    if (*a4 - 1 <= 2 && a7 != 0)
    {
      if (a7 == 2)
      {
        v14 += *(a4 + 4) + 1;
        if (v14 >= *(a2 + 4))
        {
          goto LABEL_48;
        }
      }

      else if (a7 != 1 || (v14 += ~*(a4 + 3), v14 < 0))
      {
LABEL_48:
        if (*(a1 + 4))
        {
          log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           context not found. rule not applicable. RETURN LH_FALSE", v45);
        }

        goto LABEL_138;
      }
    }

    if (v22 <= 3)
    {
      switch(v22)
      {
        case 1:
          v25 = *(*(*a2 + 160 * v14 + 48) + 8 * *a3);
          break;
        case 2:
          v25 = *(*(*a2 + 160 * v14 + 56) + 24 * *a3 + 16);
          break;
        case 3:
          v24 = *a3;
          if (v24 == *(a1 + 9))
          {
            v25 = (a2[2] + *(a2[3] + 2 * v14));
            break;
          }

          goto LABEL_42;
        default:
          goto LABEL_70;
      }

LABEL_63:
      if (v25)
      {
        goto LABEL_64;
      }

LABEL_70:
      *a5 = 0;
      if (!*(a1 + 4))
      {
        v20 = 0;
LABEL_127:
        if (!v18)
        {
          if (*(a1 + 4))
          {
            log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           return LH_FALSE");
          }

          goto LABEL_139;
        }

        *v48 = a3[1];
        if (*(a1 + 4))
        {
          log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           negate match - return LH_TRUE");
        }

        goto LABEL_33;
      }

      log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           NULL STR FOUND - no match");
      goto LABEL_72;
    }

    if (v22 != 4)
    {
      if (v22 == 5)
      {
        if (*a3 == *(a1 + 9))
        {
          v25 = a2[2];
        }

        else
        {
          v25 = a2[4];
        }

        goto LABEL_63;
      }

      if (v22 != 6)
      {
        goto LABEL_70;
      }

      v25 = a2[6];
      if (v25)
      {
        v24 = *a3;
        if (v24 == *(a1 + 9))
        {
          goto LABEL_64;
        }

        if (v24 == *(a1 + 8))
        {
LABEL_42:
          v25 = *(*(*a2 + 160 * v14 + 48) + 8 * v24);
          goto LABEL_63;
        }

        log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           ERROR : unknown DEF index for POS/ORT rule");
      }

      else
      {
        log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           ERROR : no POS string to match");
      }

LABEL_124:
      v20 = 0;
      *a5 = 0;
LABEL_125:
      if (*(a1 + 4))
      {
        log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           REGEX FAILED");
      }

      goto LABEL_127;
    }

    v27 = *a2;
    v28 = *(a4 + 2);
    v29 = *(*a2 + 160 * *(a4 + 2) + 56);
    if (v29 && *(v29 + 24 * *(a1 + 12)))
    {
      v30 = *a1;
      if (a7 == 2)
      {
        v38 = *(a2 + 4);
        if (v28 + 1 != v38)
        {
          v41 = *(a4 + 4) + 1;
          if ((v41 & 0x10000) != 0)
          {
            v42 = *(a4 + 2);
LABEL_117:
            v44 = *(a1 + 4);
            if (v38 > v42)
            {
              if (v44 >= 2)
              {
                log_OutText(*(v30 + 32), "FE_POS", 5, 0, "           [3] _RIGHT wordIdx=%d", *(a4 + 2));
              }

              LOWORD(v28) = v42;
              goto LABEL_121;
            }
          }

          else
          {
            v42 = *(a4 + 2);
            while (v38 > v42)
            {
              v42 = *(*(v27 + 160 * v42 + 56) + 24 * *(a1 + 12) + 10) + 1;
              if (!--v41)
              {
                goto LABEL_117;
              }
            }

            v44 = *(a1 + 4);
          }

          if (v44 >= 2)
          {
            log_OutText(*(v30 + 32), "FE_POS", 5, 0, "           [2] _RIGHT doesnt exist, return LH_FALSE", v45);
          }

          goto LABEL_138;
        }

        if (*(a1 + 4) >= 2u)
        {
          v39 = *(v30 + 32);
          v40 = "           [1] _RIGHT doesnt exist, return LH_FALSE";
LABEL_113:
          log_OutText(v39, "FE_POS", 5, 0, v40, 0);
        }
      }

      else
      {
        if (a7 != 1)
        {
          if (!a7 && *(a1 + 4) >= 2u)
          {
            log_OutText(*(v30 + 32), "FE_POS", 5, 0, "           _CUR wordIdx=%d", *(a4 + 2));
            LOWORD(v28) = *(a4 + 2);
          }

LABEL_121:
          v25 = *(*(*a2 + 160 * v28 + 144) + 8 * *a3);
          if (v25)
          {
LABEL_64:
            if (*(a1 + 4))
            {
              log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           STR=%s", v25);
            }

            v31 = a3[1];
            v32 = cstdlib_strlen(v25);
            if (!v32)
            {
              log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "invalid arg for regex");
              return 2313166855;
            }

            *a5 = 0;
            v33 = nuance_pcre_exec(a1[24], a1[25], a1[27] + *(a1[28] + 4 * v31), 0, v25, v32, 0, 0, v49, 30);
            if ((v33 & 0x80000000) != 0)
            {
              v34 = nuance_pcre_ErrorToLhError(v33);
              v20 = v34;
              if ((v34 & 0xFFF00000) != 0x8A500000)
              {
                if ((v34 & 0x80000000) != 0)
                {
                  return v20;
                }

LABEL_73:
                if (*a5 == 1)
                {
                  if (*(a1 + 4))
                  {
                    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           REGEX FIRED");
                  }

                  if (v18)
                  {
                    if (*(a1 + 4))
                    {
                      log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           negate match - return LH_FALSE");
                    }

                    goto LABEL_139;
                  }

                  *v48 = a3[1];
                  if (*(a1 + 4))
                  {
                    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           return LH_TRUE");
                  }

LABEL_33:
                  v21 = 1;
                  goto LABEL_34;
                }

                goto LABEL_125;
              }

              if ((v34 & 0x1FFF) != 0x14)
              {
                if ((v34 & 0x1FFF) == 0xA)
                {
                  log_OutPublic(*(*a1 + 32), "FE_POS", 11002, 0, v46, v47);
                }

                else
                {
                  log_OutPublic(*(*a1 + 32), "FE_POS", 11027, "%s%x");
                }

                return v20;
              }
            }

            else if (v33)
            {
              *a5 = 1;
            }

LABEL_72:
            v20 = 0;
            goto LABEL_73;
          }

          if (*(a1 + 4))
          {
            log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           NULL STR FOUND - no match");
          }

          goto LABEL_124;
        }

        if (*(a4 + 2))
        {
          v35 = *(a4 + 3) + 1;
          if ((v35 & 0x10000) == 0)
          {
            v37 = *(a4 + 2);
            do
            {
              v43 = *(v27 + 160 * (v37 - 1) + 56) + 24 * *(a1 + 12);
              if (!*(v43 + 4))
              {
                v20 = 2313166848;
                log_OutText(*(v30 + 32), "FE_POS", 5, 0, "wordindex=%d does not end previous phrase", (v37 - 1));
                return v20;
              }

              v37 = *(v43 + 8);
              --v35;
            }

            while (v35 && *(v43 + 8));
            v36 = *(a1 + 4);
            if (!v35)
            {
              goto LABEL_96;
            }

            if (v36 >= 2)
            {
              v39 = *(v30 + 32);
              v40 = "           [2] _LEFT doesnt exist, return LH_FALSE";
              goto LABEL_113;
            }

            goto LABEL_138;
          }

          v36 = *(a1 + 4);
          v37 = *(a4 + 2);
LABEL_96:
          if (v36 >= 2)
          {
            log_OutText(*(v30 + 32), "FE_POS", 5, 0, "           [3] _LEFT wordIdx=%d", *(a4 + 2));
          }

          LOWORD(v28) = v37;
          goto LABEL_121;
        }

        if (*(a1 + 4) >= 2u)
        {
          v39 = *(v30 + 32);
          v40 = "           [1] _LEFT doesnt exist, return LH_FALSE";
          goto LABEL_113;
        }
      }
    }

LABEL_138:
    v20 = 0;
LABEL_139:
    *a5 = 0;
    return v20;
  }

  v19 = *(a4 + 2);
  if (*(a1 + 4))
  {
    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           pSent->words[%d].bHasComma = %d", *(a4 + 2), *(*a2 + 160 * *(a4 + 2) + 12));
    v19 = *(a4 + 2);
  }

  if (*(*a2 + 160 * v19 + 12) == 1)
  {
    v20 = 0;
    v21 = v18 ^ 1;
LABEL_34:
    *a5 = v21;
    return v20;
  }

  v20 = 0;
  *a5 = v18;
  return v20;
}