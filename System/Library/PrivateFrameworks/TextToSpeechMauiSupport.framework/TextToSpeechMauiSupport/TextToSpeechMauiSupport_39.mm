uint64_t posparser_Open(uint64_t a1, uint64_t *a2)
{
  v2 = 2687508487;
  if (a2)
  {
    v5 = heap_Calloc(*(a1 + 8), 264, 1);
    *a2 = v5;
    if (v5)
    {
      *v5 = a1;
      *(*a2 + 80) = 0;
      v6 = *a2;
      *(v6 + 97) = 1;
      *(v6 + 98) = 250;
      *(v6 + 88) = 0;
      v7 = *a2;
      *(v7 + 64) = 0;
      *(v7 + 68) = 1;
      *(v7 + 72) = 1;
      *(v7 + 112) = 0;
      *(*a2 + 104) = 0;
      *(*a2 + 120) = 0;
      *(*a2 + 128) = 0;
      *(*a2 + 136) = 0;
      *(*a2 + 144) = 0;
      cstdlib_strncpy((*a2 + 186), "arx", 3uLL);
      v2 = 0;
      *(*a2 + 189) = 0;
      v8 = *a2;
      *(v8 + 152) = 0x100000001;
      *(v8 + 160) = 0;
      v9 = *a2;
      *(v9 + 192) = 1;
      *(v9 + 168) = 0;
      *(v9 + 200) = 0;
      v10 = *a2;
      *(v10 + 208) = 0;
      *(v10 + 176) = 0;
      v11 = *a2;
      *(v11 + 184) = 0;
      *(v11 + 232) = 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0);
      return 2687508490;
    }
  }

  return v2;
}

void *posparser_Close(void *result)
{
  if (result)
  {
    return heap_Free(*(*result + 8), result);
  }

  return result;
}

uint64_t posparser_ExtractWords(_DWORD *a1, uint64_t a2, unsigned int a3, const char *a4, unsigned int a5, uint64_t *a6, unsigned __int16 *a7)
{
  v7 = a7;
  *a7 = 0;
  v14 = heap_Calloc(*(*a1 + 8), 1, 104 * a3 + 104);
  if (!v14)
  {
LABEL_143:
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
    return -1607458806;
  }

  v15 = v14;
  v83 = a6;
  v16 = a3;
  v87 = a3;
  v91 = a3;
  if (a5)
  {
    i = 0;
    if (a3 <= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = a3;
    }

    v85 = a3 - 1;
    v84 = v18 - 1;
    v86 = v7;
    do
    {
      if (a4[i] == 32)
      {
        ++i;
      }

      if (i < a5)
      {
        if (v91 < 2)
        {
          v24 = 0;
          v94 = 0;
          v90 = 9999;
          v92 = 9999;
        }

        else
        {
          v19 = 2;
          v20 = 9998;
          v21 = (a2 + 44);
          v22 = 1;
          while (1)
          {
            if (*(v21 - 3) == 34)
            {
              v23 = *v21;
              if (*v21 - *(a2 + 12) == i)
              {
                break;
              }
            }

            ++v22;
            v21 += 8;
            --v20;
            ++v19;
            if (v16 == v22)
            {
              v94 = 0;
              v88 = 1;
              v90 = 9999;
              v92 = 9999;
              goto LABEL_25;
            }
          }

          while (*(v21 - 3) != 21 || v23 >= *v21)
          {
            --v20;
            v25 = v91 == v19++;
            v21 += 8;
            if (v25)
            {
              v22 = v22;
LABEL_22:
              v88 = 0;
              v94 = 1;
              v92 = v22;
              v90 = v22;
              goto LABEL_25;
            }
          }

          v22 = v22;
          if (!v20)
          {
            goto LABEL_22;
          }

          v92 = v22;
          v88 = 0;
          v90 = (v19 - 1);
          v94 = 1;
LABEL_25:
          v24 = 0;
          v27 = (a2 + 56);
          v26 = v85;
          do
          {
            if (*(v27 - 6) == 36 && *(v27 - 3) - *(a2 + 12) <= i)
            {
              v24 = !cstdlib_strstr(*v27, "arw") && !cstdlib_strstr(*v27, "arg") && !cstdlib_strstr(*v27, "fai") && !cstdlib_strstr(*v27, "hei") && cstdlib_strcmp(*v27, "normal") != 0;
            }

            v27 += 4;
            --v26;
          }

          while (v26);
          v28 = v84;
          v29 = (a2 + 44);
          v7 = v86;
          do
          {
            if (*(v29 - 3) == 1 && *v29 - *(a2 + 12) == i)
            {
              v31 = *v86;
              v40 = *(v29 - 2);
              v30 = *(v29 - 1);
              *(v15 + 104 * *v86) = v40;
              v16 = v87;
              goto LABEL_42;
            }

            v29 += 8;
            --v28;
          }

          while (v28);
          v16 = v87;
          if (!v88)
          {
            goto LABEL_41;
          }
        }

        log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Could not resolve references pos (previously logged as Public 68004), thispos=%d", i);
LABEL_41:
        v30 = 0;
        v31 = *v7;
        *(v15 + 104 * *v7) = 0;
LABEL_42:
        v32 = v15 + 104 * v31;
        *(v32 + 4) = v30;
        *(v32 + 8) = i;
        *(v15 + 104 * *v7 + 74) = 0;
        *(v15 + 104 * *v7 + 76) = 0;
        *(v15 + 104 * *v7 + 72) = 9999;
        v33 = *v7;
        *(v15 + 104 * *v7 + 88) = v24;
        if (v94)
        {
          *(v15 + 104 * v33 + 74) = v92;
          *(v15 + 104 * *v7 + 76) = v90;
          v34 = (v15 + 104 * *v7);
          if (v34[37] == v34[38])
          {
            v34[5] = *(a2 + 16);
            i = a5;
          }

          else
          {
            for (i = *(a2 + 32 * v90 + 12) - *(a2 + 12); i; --i)
            {
              if (a4[i - 1] != 32)
              {
                goto LABEL_57;
              }
            }

            i = 0;
LABEL_57:
            *(v15 + 104 * *v7 + 10) = i;
          }
        }

        else
        {
          while (1)
          {
            v35 = a4[i];
            if ((v35 | 0x20) == 0x20)
            {
              break;
            }

            if (a5 < ++i)
            {
              v35 = a4[i];
              break;
            }
          }

          v36 = v35 ? i : i + 1;
          *(v15 + 104 * v33 + 10) = v36;
          i = v36 + 1;
        }

        if (*(v15 + 104 * *v7 + 8) != *(v15 + 104 * *v7 + 10))
        {
          v37 = *v7 + 1;
          *v7 = v37;
          if (v91 < v37)
          {
            v38 = heap_Realloc(*(*a1 + 8), v15, 104 * v37 + 104);
            if (!v38)
            {
              heap_Free(*(*a1 + 8), v15);
              goto LABEL_143;
            }

            v39 = v38;
            cstdlib_memset((v38 + 104 * *v7), 0, 0x68uLL);
            v15 = v39;
          }
        }
      }
    }

    while (a5 > i);
  }

  *v83 = v15;
  v41 = *v7;
  v42 = cstdlib_strlen(a4);
  v95 = v41;
  if (v41)
  {
    v43 = 0;
    v89 = 0;
    v93 = v42;
    while (1)
    {
      v44 = v15 + 104 * v43;
      *(v44 + 80) = 1;
      v45 = v42;
      if (v93 >= *(v44 + 10))
      {
        v46 = *(v44 + 10);
      }

      else
      {
        v46 = v42;
      }

      v47 = *(v44 + 8);
      if (v47 < v46)
      {
        do
        {
          if (*(v44 + 80) != 1)
          {
            break;
          }

          if (!cstdlib_isdigit(a4[v47]) && ((a4[v47] | 2) != 0x2E || v47 == *(v44 + 8)))
          {
            *(v44 + 80) = 0;
          }

          ++v47;
        }

        while (v46 != v47);
        LODWORD(v47) = *(v44 + 8);
      }

      *(v44 + 84) = 0;
      if (v47 < v46)
      {
        v48 = 0;
        v47 = v47;
        do
        {
          if (v48)
          {
            break;
          }

          if (isPuncClass(a1, &a4[v47]))
          {
            v49 = a1[39];
            if (v49 == 1 || !v49 && v47 == *(v44 + 8))
            {
              *(v44 + 84) = 1;
            }
          }

          ++v47;
          v48 = *(v44 + 84);
        }

        while (v46 != v47);
        if (v48 == 1 && a1[62] == 1 && v46 - *(v44 + 8) >= 2 && isPuncClass(a1, &a4[v46 - 1]))
        {
          *(v44 + 84) = 0;
          if (v46 - *(v44 + 8) <= 127)
          {
            v50 = heap_Calloc(*(*a1 + 8), 1, 128);
            *(v44 + 96) = v50;
            if (!v50)
            {
              goto LABEL_143;
            }

            cstdlib_strncpy(v50, &a4[*(v44 + 8)], v46 - *(v44 + 8));
            *(*(v44 + 96) + v46 - *(v44 + 8)) = 0;
            v89 = (*(*(a1 + 3) + 144))(*(a1 + 1), *(a1 + 2), "normal", *(v44 + 96), 128);
            if ((v89 & 0x80000000) != 0)
            {
              return v89;
            }
          }
        }
      }

      ++v43;
      v42 = v45;
      if (v43 == v95)
      {
        goto LABEL_97;
      }
    }
  }

  v89 = 0;
LABEL_97:
  if (v91)
  {
    v51 = 0;
    v52 = (a2 + 32);
    v53 = (v91 - 1) + 1;
    do
    {
      v54 = (a2 + 32 * v51);
      v55 = *v54;
      if (*v54 == 21)
      {
        v64 = *(v54 + 3);
        if (v64)
        {
          if (!LH_stricmp(v64, "spell"))
          {
            LOWORD(v74) = cstdlib_strlen(a4);
            v75 = v53;
            v76 = v52;
            while (--v75)
            {
              v77 = v76 + 8;
              v78 = *v76;
              v76 += 8;
              if (v78 == 21)
              {
                v74 = *(v77 - 5) - *(a2 + 12);
                break;
              }
            }

            if (v95)
            {
              v79 = v54[3] - *(a2 + 12);
              v80 = (v15 + 92);
              v81 = v95;
              do
              {
                if (v79 <= *(v80 - 42) && *(v80 - 41) <= v74)
                {
                  *v80 = 1;
                }

                v80 += 26;
                --v81;
              }

              while (v81);
            }

            goto LABEL_140;
          }

          v55 = *v54;
LABEL_116:
          if (v55 == 36)
          {
            v65 = *(v54 + 3);
            if (v65)
            {
              if (!LH_stricmp(v65, "latin"))
              {
                LOWORD(v66) = cstdlib_strlen(a4);
                v67 = v53;
                v68 = v52;
                while (--v67)
                {
                  v69 = v68 + 8;
                  v70 = *v68;
                  v68 += 8;
                  if (v70 == 36)
                  {
                    v66 = *(v69 - 5) - *(a2 + 12);
                    break;
                  }
                }

                if (v95)
                {
                  v71 = v54[3] - *(a2 + 12);
                  v72 = (v15 + 88);
                  v73 = v95;
                  do
                  {
                    if (v71 <= *(v72 - 40) && *(v72 - 39) <= v66)
                    {
                      *v72 = 1;
                    }

                    v72 += 26;
                    --v73;
                  }

                  while (v73);
                }
              }
            }
          }
        }
      }

      else
      {
        if (v55 != 7)
        {
          goto LABEL_116;
        }

        if (v54[6] == 60)
        {
          LOWORD(v56) = cstdlib_strlen(a4);
          v57 = v53;
          v58 = v52;
          while (--v57)
          {
            v59 = v58 + 8;
            v60 = *v58;
            v58 += 8;
            if (v60 == 7)
            {
              v56 = *(v59 - 5) - *(a2 + 12);
              break;
            }
          }

          if (v95)
          {
            v61 = v54[3] - *(a2 + 12);
            v62 = (v15 + 12);
            v63 = v95;
            do
            {
              if (v61 <= *(v62 - 2) && *(v62 - 1) <= v56)
              {
                *v62 = 1;
              }

              v62 += 26;
              --v63;
            }

            while (v63);
          }
        }
      }

LABEL_140:
      ++v51;
      v52 += 8;
      --v53;
    }

    while (v51 != v87);
  }

  return v89;
}

void *posparser_FreeWords(void *result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  if (a3)
  {
    v5 = 0;
    v6 = a3;
    do
    {
      v7 = a2 + 104 * v5;
      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = *(v7 + 24);
        do
        {
          if (v11)
          {
            heap_Free(*(*v4 + 8), *(v11 + v9));
            v12 = (*(v7 + 24) + v9);
            *v12 = 0;
            heap_Free(*(*v4 + 8), v12[1]);
            v11 = *(v7 + 24);
            *(v11 + v9 + 8) = 0;
            v8 = *(v7 + 32);
          }

          ++v10;
          v9 += 16;
        }

        while (v10 < v8);
        *(v7 + 32) = 0;
      }

      v13 = *(v7 + 24);
      if (v13)
      {
        heap_Free(*(*v4 + 8), v13);
        *(v7 + 24) = 0;
      }

      v14 = *(v7 + 16);
      if (v14)
      {
        heap_Free(*(*v4 + 8), v14);
        *(v7 + 16) = 0;
      }

      v15 = *(v7 + 64);
      if (v15)
      {
        heap_Free(*(*v4 + 8), v15);
        *(v7 + 64) = 0;
      }

      v16 = *(v7 + 96);
      if (v16)
      {
        heap_Free(*(*v4 + 8), v16);
        *(v7 + 96) = 0;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  else if (!a2)
  {
    return result;
  }

  v17 = *(*v4 + 8);

  return heap_Free(v17, a2);
}

uint64_t posparser_ProcessStart(char *a1)
{
  v59 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  __src = 0;
  DictCharString = paramc_ParamGet(*(*a1 + 40), "langcode", &__src, 0);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  cstdlib_strncpy(a1 + 186, __src, 3uLL);
  a1[186] = ssft_tolower(a1[186]);
  a1[187] = ssft_tolower(a1[187]);
  *(a1 + 94) = 120;
  a1[97] = 1;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsermwspan", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v3 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v3)
    {
      *v3 = 0;
    }

    v4 = cstdlib_atoi(**&__c[3]);
    v5 = v4 ? v4 : 1;
    a1[97] = v5;
  }

  else
  {
    v5 = a1[97];
  }

  *(a1 + 49) = 250 * v5;
  a1[96] = 0;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumdicts", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1] && *&__c[3])
  {
    v6 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v6)
    {
      *v6 = 0;
    }

    v7 = cstdlib_atoi(**&__c[3]);
    a1[96] = v7;
    v8 = heap_Calloc(*(*a1 + 8), 1, (8 * v7) | 1u);
    *(a1 + 11) = v8;
    v9 = *a1;
    if (!v8)
    {
      EmbeddedCharRule = 2687508490;
LABEL_135:
      log_OutPublic(*(v9 + 32), "POSPARSER", 68000, 0);
      return EmbeddedCharRule;
    }

    v10 = heap_Calloc(*(v9 + 8), 1, a1[96] + 1);
    *(a1 + 10) = v10;
    if (!v10)
    {
      goto LABEL_134;
    }

    if (a1[96])
    {
      v11 = 0;
      do
      {
        *(*(a1 + 10) + v11) = 0;
        *(*(a1 + 11) + 8 * v11++) = 0;
      }

      while (v11 < a1[96]);
    }

    *&__c[1] = -1;
    if (((*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparserdicname", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
    {
      goto LABEL_97;
    }

    if (*&__c[1] == 1 && *&__c[3])
    {
      v12 = **&__c[3];
      v13 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v13)
      {
        *v13 = 0;
      }

      if (v12)
      {
        v14 = 0;
        while (1)
        {
          v15 = cstdlib_strchr(v12, 43);
          v16 = v15;
          if (v15)
          {
            *v15 = 0;
          }

          v17 = *(*a1 + 8);
          v18 = cstdlib_strlen(v12);
          *(*(a1 + 11) + 8 * v14) = heap_Calloc(v17, 1, (v18 + 1));
          v19 = *(*(a1 + 11) + 8 * v14);
          if (!v19)
          {
            goto LABEL_134;
          }

          cstdlib_strcpy(v19, v12);
          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "using dict[%d] %s", v14, *(*(a1 + 11) + 8 * v14));
          ++v14;
          v12 = v16 + 1;
          if (!v16)
          {
            v20 = v14;
            goto LABEL_84;
          }
        }
      }

      v20 = 0;
LABEL_84:
      if (v20 != a1[96])
      {
        v39 = *(*a1 + 32);
LABEL_111:
        log_OutPublic(v39, "POSPARSER", 68003, "%s%d%s%d");
        return 2687508480;
      }
    }

    *&__c[1] = -1;
    if (((*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparserngramlevel", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
    {
LABEL_97:
      log_OutPublic(*(*a1 + 32), "POSPARSER", 68002, "%s%s");
      return 2687508480;
    }

    if (*&__c[1] == 1 && *&__c[3])
    {
      v33 = **&__c[3];
      v34 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v34)
      {
        *v34 = 0;
      }

      if (v33)
      {
        v35 = 0;
        do
        {
          v36 = cstdlib_strchr(v33, 43);
          v37 = v36;
          if (v36)
          {
            *v36 = 0;
          }

          *(*(a1 + 10) + v35) = cstdlib_atoi(v33);
          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "using ngram levels[%d] %d", v35, *(*(a1 + 10) + v35));
          ++v35;
          v33 = v37 + 1;
        }

        while (v37);
        v38 = v35;
      }

      else
      {
        v38 = 0;
      }

      if (v38 != a1[96])
      {
        v39 = *(*a1 + 32);
        goto LABEL_111;
      }
    }
  }

  else
  {
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    a1[96] = 0;
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "WARNING - No ngram dicts, continuing anyway");
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "araparsermode", &__src);
  if ((Str & 0x80000000) == 0 && (Str & 0x1FFF) != 0x14)
  {
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Araparser mode : %s", __src);
    *(a1 + 16) = 0;
    if (!LH_stricmp("dict_plus_ngrams", __src))
    {
      v22 = 0;
      goto LABEL_45;
    }

    if (!LH_stricmp("dict_only", __src))
    {
      v22 = 1;
      goto LABEL_45;
    }

    if (!LH_stricmp("ngrams_only", __src))
    {
      v22 = 2;
LABEL_45:
      *(a1 + 16) = v22;
    }
  }

  paramc_ParamRelease(*(*a1 + 40));
  __src = 0;
  DictCharString = posparser_loc_getDictCharString(a1, "araparserspacedout", a1 + 14);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparsersmspunc", a1 + 13);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass1", a1 + 16);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass2", a1 + 17);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass3", a1 + 18);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  *(a1 + 62) = 0;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "arwpospredictiononly", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v24 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v24)
    {
      *v24 = 0;
    }

    if (!cstdlib_strcmp(**&__c[3], "1"))
    {
      *(a1 + 62) = 1;
      *(a1 + 35) = 1;
      goto LABEL_101;
    }
  }

  v25 = *(a1 + 62);
  *(a1 + 35) = 1;
  if (v25 == 1)
  {
LABEL_101:
    *&__c[1] = -1;
    EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumposdicparts", &__c[3], &__c[1], __c);
    if ((EmbeddedCharRule & 0x80000000) == 0 && *&__c[1])
    {
      v40 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v40)
      {
        *v40 = 0;
      }

      *(a1 + 35) = cstdlib_atoi(**&__c[3]);
      if (a1[97])
      {
        a1[97] = 0;
      }

      *(a1 + 49) = 2048;
    }

    return EmbeddedCharRule;
  }

  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumparts", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) != 0 || !*&__c[1])
  {
    return EmbeddedCharRule;
  }

  v26 = cstdlib_strchr(**&__c[3], __c[0]);
  if (v26)
  {
    *v26 = 0;
  }

  a1[68] = cstdlib_atoi(**&__c[3]);
  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "nrpart_tn", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) != 0 || !*&__c[1])
  {
    return EmbeddedCharRule;
  }

  v27 = cstdlib_strchr(**&__c[3], __c[0]);
  if (v27)
  {
    *v27 = 0;
  }

  a1[72] = cstdlib_atoi(**&__c[3]);
  DictCharString = posparser_loc_getDictCharString(a1, "araparserdiacriticlist", a1 + 15);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsermapXBI2A", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v28 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v28)
    {
      *v28 = 0;
    }

    if (!cstdlib_atoi(**&__c[3]))
    {
      *(a1 + 38) = 0;
    }
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparseroldPuncClass", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v29 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v29)
    {
      *v29 = 0;
    }

    if (!cstdlib_atoi(**&__c[3]))
    {
      *(a1 + 39) = 0;
    }
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumpostcorrrules", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v30 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v30)
    {
      *v30 = 0;
    }

    v31 = cstdlib_atoi(**&__c[3]);
    v32 = v31;
    *(a1 + 84) = v31;
  }

  else
  {
    v32 = *(a1 + 84);
  }

  if (v32)
  {
    v41 = heap_Calloc(*(*a1 + 8), 1, (56 * v32) | 1);
    *(a1 + 20) = v41;
    if (!v41)
    {
      goto LABEL_134;
    }

    if (*(a1 + 84))
    {
      v42 = 0;
      v43 = 0;
      do
      {
        cstdlib_memset(__b, 0, 0x20uLL);
        cstdlib_strcpy(__b, "araparserpostcorr");
        v44 = LH_itoa(v43, v53, 0xAu);
        cstdlib_strcat(v57, v44);
        DictCharString = posparser_loc_getPostCorrRule(a1, __b, *(a1 + 20) + v42);
        if ((DictCharString & 0x80000000) != 0)
        {
          return DictCharString;
        }

        ++v43;
        v42 += 56;
      }

      while (v43 < *(a1 + 84));
    }
  }

  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumecharrewrite", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v45 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v45)
      {
        *v45 = 0;
      }

      v46 = cstdlib_atoi(**&__c[3]);
      v47 = v46;
      *(a1 + 92) = v46;
    }

    else
    {
      v47 = *(a1 + 92);
    }

    if (v47)
    {
      v49 = heap_Calloc(*(*a1 + 8), 1, (2 * v47) | 1);
      *(a1 + 22) = v49;
      if (v49)
      {
        if (*(a1 + 92))
        {
          v50 = 0;
          v51 = 0;
          do
          {
            cstdlib_memset(__b, 0, 0x20uLL);
            cstdlib_strcpy(__b, "araparserecharrewrite");
            v52 = LH_itoa(v51, v53, 0xAu);
            cstdlib_strcat(v58, v52);
            EmbeddedCharRule = posparser_loc_getEmbeddedCharRule(a1, __b, (*(a1 + 22) + v50));
            if ((EmbeddedCharRule & 0x80000000) != 0)
            {
              break;
            }

            ++v51;
            v50 += 2;
          }

          while (v51 < *(a1 + 92));
        }

        return EmbeddedCharRule;
      }

LABEL_134:
      EmbeddedCharRule = 2687508490;
      v9 = *a1;
      goto LABEL_135;
    }
  }

  return EmbeddedCharRule;
}

uint64_t posparser_Process(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, const char **a8, uint64_t *a9, _WORD *a10)
{
  v13 = a1;
  __b[8] = *MEMORY[0x277D85DE8];
  v14 = *a9;
  v15 = *a10;
  v16 = *a8;
  v546 = heap_Calloc(*(*a1 + 8), 1, a1[49] + 1);
  if (!v546)
  {
    v538 = -1607458806;
    log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0);
    *a10 = v15;
    *a8 = v16;
    *a9 = v14;
    return v538;
  }

  v511 = a8;
  v549 = v13[49];
  v544 = v13;
  __s = v16;
  v543 = v15;
  v532 = v14;
  if (a6 == 1)
  {
    __b[0] = 0;
    LOWORD(v551) = -1;
    LOBYTE(__c[0]) = 0;
    *__s2 = 0;
    *__src = 0;
  }

  else
  {
    if (*(v13 + 16) > 1u)
    {
      goto LABEL_271;
    }

    __b[0] = 0;
    LOWORD(v551) = -1;
    LOBYTE(__c[0]) = 0;
    if (!a6)
    {
      cstdlib_strcpy(__dst, "tn");
      v17 = *(v13 + 72);
      goto LABEL_8;
    }
  }

  cstdlib_strcpy(__dst, "isolatedword");
  v17 = 1;
LABEL_8:
  v526 = v17;
  v521 = a5;
  v18 = a4;
  if (!a5)
  {
    goto LABEL_84;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  POSAndDiacritics = 0;
  v23.i64[0] = 0x100000001;
  v23.i64[1] = 0x100000001;
  do
  {
    *__s1 = 0;
    v24 = *(v13 + 97);
    v25 = v21;
    v26 = v18 + 104 * v21;
    v539 = v21;
    v534 = v21;
    while (1)
    {
      v27 = v19 + v24;
      if (v27 >= a5)
      {
LABEL_29:
        v28 = 0;
LABEL_30:
        v43 = -1;
        goto LABEL_31;
      }

      if (v27 >= v25)
      {
        v29 = 0;
        v30 = 0uLL;
        v31 = v21;
        do
        {
          v32 = (v18 + 104 * v31);
          if (v32[4].i16[5])
          {
            v29 = 1;
          }

          v33 = vceqq_s32(v32[5], v23);
          v30 = vsubq_s32(vbicq_s8(v30, v33), v33);
          ++v31;
        }

        while (v27 >= v31);
        v34 = vmovn_s32(vtstq_s32(v30, v30));
        v34.i16[0] = vmaxv_u16(v34);
        v28 = (v29 == 0) & (v34.i32[0] ^ 1);
      }

      else
      {
        v28 = 1;
      }

      if (!*(v13 + 62))
      {
        if (v13[104])
        {
          v20 = 0;
          v46 = 0;
          do
          {
            if (v20)
            {
              break;
            }

            v47 = *(*(v13 + 25) + 6 * v46);
            if (v47 > *(v18 + 104 * v27 + 10))
            {
              break;
            }

            v48 = *(v26 + 8);
            v20 = v47 >= v48;
            if (v47 < v48)
            {
              ++v46;
            }
          }

          while (v13[104] > v46);
        }

        else
        {
          v20 = 0;
        }
      }

      if (!v28)
      {
        goto LABEL_30;
      }

      v35 = v18 + 104 * v27;
      v37 = *(v35 + 10);
      v36 = (v35 + 10);
      v38 = *(v26 + 8);
      v39 = v37 - v38;
      if (v39 >= v13[49])
      {
        goto LABEL_29;
      }

      cstdlib_strncpy(v546, &__s[v38], v39);
      v546[*v36 - *(v26 + 8)] = 0;
      if (v13[92])
      {
        posparser_undoEmbeddedRules(v13, v546);
      }

      if (*(v13 + 58) != 1)
      {
        break;
      }

      v40 = v13[35];
      if (v40 == 1)
      {
        LOWORD(v551) = -1;
        if (*(v13 + 62) == 1 && (v41 = *(v26 + 96)) != 0)
        {
          v42 = (*(*(v13 + 3) + 96))(*(v13 + 1), *(v13 + 2), v13 + 120, v41, __b, &v551, __c);
        }

        else
        {
          v42 = (*(*(v13 + 3) + 96))(*(v13 + 1), *(v13 + 2), v13 + 120, v546, __b, &v551, __c);
        }
      }

      else
      {
        LOWORD(v551) = 0;
        if (*(v13 + 62) == 1 && (v51 = *(v26 + 96)) != 0)
        {
          v42 = (*(*(v13 + 3) + 152))(*(v13 + 1), *(v13 + 2), v13 + 120, v51, __b, &v551, __c, v40);
        }

        else
        {
          v42 = (*(*(v13 + 3) + 152))(*(v13 + 1), *(v13 + 2), v13 + 120, v546, __b, &v551, __c, v40);
        }
      }

      POSAndDiacritics = v42;
      v23.i64[0] = 0x100000001;
      v23.i64[1] = 0x100000001;
      if ((v42 & 0x80000000) != 0)
      {
LABEL_79:
        v538 = POSAndDiacritics;
        goto LABEL_81;
      }

      v28 = v551;
      if (!v551)
      {
        v43 = -1;
        v18 = a4;
        v21 = v539;
        goto LABEL_64;
      }

      POSAndDiacritics = posparser_GetPOSAndDiacritics(v13, v20, __s, a4, v546, v539, v24, __b[0], v551, __c[0], __s1);
      if ((POSAndDiacritics & 0x80000000) != 0)
      {
        goto LABEL_79;
      }

      v28 = *__s1;
      if (*__s1)
      {
        v43 = 0;
      }

      else
      {
        v43 = -1;
      }

LABEL_63:
      v18 = a4;
      v21 = v539;
      v23.i64[0] = 0x100000001;
      v23.i64[1] = 0x100000001;
LABEL_64:
      v25 = v534;
LABEL_31:
      v44 = v43 + v24;
      v24 = (v43 + v24);
      v45 = v24 >= 0;
      if (v44 < 0 || v28)
      {
        v52 = v28 == 1;
        goto LABEL_67;
      }
    }

    LOWORD(v551) = 0;
    v49 = (*(*(v13 + 3) + 152))(*(v13 + 1), *(v13 + 2), __dst, v546, __b, &v551, __c, v526);
    POSAndDiacritics = v49;
    if ((v49 & 0x80000000) != 0)
    {
      v538 = v49;
      v13 = v544;
      goto LABEL_81;
    }

    v28 = v551;
    if (!v551)
    {
      v43 = -1;
      v13 = v544;
      goto LABEL_63;
    }

    posparser_GetHighestPriority(__b[0], &v551, LOBYTE(__c[0]));
    v50 = cstdlib_strchr(*&__b[0][8 * v551], LOBYTE(__c[0]));
    if (v50)
    {
      *v50 = 0;
    }

    *__s2 = 0;
    *__src = 0;
    if (!v20)
    {
      goto LABEL_76;
    }

    v13 = v544;
    log_OutText((*v544)[4], "POSPARSER", 5, 0, "FOUND %s in dict as %s - try reconcile", v546, *&__b[0][8 * v551]);
    POSAndDiacritics = posparser_isReconcilable(v544, __s, *&__b[0][8 * v551], *(v26 + 8), *v36, __s2, __src);
    if ((POSAndDiacritics & 0x80000000) != 0)
    {
      goto LABEL_79;
    }

    if (!*__s2)
    {
      log_OutText((*v544)[4], "POSPARSER", 5, 0, "FOUND in %s in dict, but couldnt reconcile with partial diacritics - FAIL", *&__b[0][8 * v551]);
      v28 = 0;
      v20 = 1;
      v43 = -1;
      a5 = v521;
      goto LABEL_63;
    }

    if (*__s2 == 1 && *__src)
    {
      posparser_PostProcess(v544, __src);
      v55 = (*v544)[1];
      v56 = *__src;
      v57 = cstdlib_strlen(*__src);
      v58 = heap_Calloc(v55, 1, (v57 + 1));
      *(v26 + 16) = v58;
      if (v58)
      {
        cstdlib_strcpy(v58, v56);
        heap_Free((*v544)[1], v56);
        *__src = 0;
        v20 = 1;
        goto LABEL_78;
      }

LABEL_179:
      v538 = -1607458806;
      log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0);
LABEL_81:
      *a10 = v543;
      v62 = v546;
      *v511 = __s;
      *a9 = v14;
      goto LABEL_854;
    }

LABEL_76:
    v13 = v544;
    v59 = (*v544)[1];
    v60 = cstdlib_strlen(*&__b[0][8 * v551]);
    v61 = heap_Calloc(v59, 1, (v60 + 1));
    *(v26 + 16) = v61;
    if (!v61)
    {
      goto LABEL_179;
    }

    cstdlib_strcpy(v61, *&__b[0][8 * v551]);
LABEL_78:
    *(v26 + 72) = v27;
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "FOUND in dict pWordDefs[%d]=%s", v19, *(v26 + 16));
    v52 = 1;
    *__s1 = 1;
    v45 = (v24 & 0x8000u) == 0;
    a5 = v521;
    v18 = a4;
    v21 = v539;
    v23.i64[0] = 0x100000001;
    v23.i64[1] = 0x100000001;
LABEL_67:
    if (v45 && v52)
    {
      v53 = v24;
    }

    else
    {
      v53 = 0;
    }

    v54 = v21 + v53;
    v21 = v54 + 1;
    v19 = (v54 + 1);
  }

  while (v19 < a5);
  v16 = __s;
  v15 = v543;
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    v538 = POSAndDiacritics;
    v81 = a9;
    v80 = v511;
    v82 = a10;
    goto LABEL_103;
  }

LABEL_84:
  if (*(v13 + 58) == 1)
  {
    v63 = posparser_doPatternMatching(v16, v546, v13, a4, a5);
    if ((v63 & 0x80000000) == 0)
    {
      *__dst = 0;
      __b[0] = 0;
      *__src = 0;
      log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "posparser_doPOSDisambiguation()", 0);
      v64 = a4;
      if (a5)
      {
        v65 = 0;
        v66 = 0;
        LOWORD(v67) = 0;
        do
        {
          v68 = v64 + 104 * v65;
          if (*(v68 + 32) <= v67)
          {
            v67 = v67;
          }

          else
          {
            v67 = *(v68 + 32);
          }

          if (*(v68 + 32))
          {
            v69 = 0;
            v70 = 0;
            do
            {
              v71 = cstdlib_strlen(*(*(v68 + 24) + v69));
              if (v71 > v66)
              {
                v66 = v71;
              }

              ++v70;
              v69 += 16;
            }

            while (v70 < *(v68 + 32));
          }

          ++v65;
          v64 = a4;
        }

        while (v65 != a5);
        v72 = (v66 + 1);
        if (v67)
        {
          v13 = v544;
          v73 = heap_Calloc((*v544)[1], 1, (v66 + 1) * v67);
          v64 = a4;
          v74 = v73;
          v15 = v543;
          if (!v73)
          {
            v75 = 0;
            v76 = 0;
            v77 = 17;
            v78 = 17;
            v14 = v532;
            goto LABEL_100;
          }
        }

        else
        {
          v74 = 0;
          v15 = v543;
          v13 = v544;
        }

        v83 = 0;
        while (1)
        {
          v84 = v64 + 104 * v83;
          v85 = heap_Calloc(*(*v13 + 8), 1, *(v84 + 10) - *(v84 + 8) + 1);
          *(v84 + 56) = v85;
          if (!v85)
          {
            break;
          }

          cstdlib_strncpy(v85, &__s[*(v84 + 8)], *(v84 + 10) - *(v84 + 8));
          *(*(v84 + 56) - *(v84 + 8) + *(v84 + 10)) = 0;
          if (*(v84 + 32))
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            do
            {
              v88 += cstdlib_strlen(*(*(v84 + 24) + v86)) + 2;
              ++v87;
              v89 = *(v84 + 32);
              v86 += 16;
            }

            while (v87 < v89);
            *(v84 + 48) = 0;
            v13 = v544;
            if (v88)
            {
              v90 = heap_Calloc((*v544)[1], 1, (v89 + v88 + 1));
              *(v84 + 48) = v90;
              v15 = v543;
              if (!v90)
              {
                break;
              }

              if (v74)
              {
                if (*(v84 + 32))
                {
                  v91 = 0;
                  v92 = 0;
                  v93 = v74;
                  do
                  {
                    cstdlib_strcpy(v93, *(*(v84 + 24) + v91));
                    ++v92;
                    v94 = *(v84 + 32);
                    v91 += 16;
                    v93 += v72;
                  }

                  while (v92 < v94);
                }

                else
                {
                  v94 = 0;
                }

                ssft_qsort(v74, v94, v72, string_cmp_1);
                cstdlib_strcpy(*(v84 + 48), v74);
                v13 = v544;
                if (*(v84 + 32) >= 2u)
                {
                  v95 = &v74[v72];
                  v96 = 1;
                  do
                  {
                    cstdlib_strcat(*(v84 + 48), "/");
                    cstdlib_strcat(*(v84 + 48), v95);
                    ++v96;
                    v95 += v72;
                  }

                  while (v96 < *(v84 + 32));
                }
              }
            }
          }

          else
          {
            *(v84 + 48) = 0;
          }

          ++v83;
          v15 = v543;
          v64 = a4;
          if (v83 == a5)
          {
            v97 = 0;
            v98 = 1;
            goto LABEL_125;
          }
        }

        v97 = -1607458806;
        log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0);
        v98 = 0;
LABEL_125:
        v16 = __s;
        v14 = v532;
        if (v74)
        {
          heap_Free(*(*v13 + 8), v74);
        }

        if (!v98)
        {
          v538 = v97;
          v535 = 0;
          v76 = 0;
          v77 = 17;
          v78 = 17;
          goto LABEL_229;
        }
      }

      if (*(v13 + 59))
      {
        v99 = v13;
        v77 = 17;
        v78 = 17;
      }

      else
      {
        v100 = *(v13 + 27);
        v99 = v13;
        v77 = *(*(v13 + 28) + 1296) - 1;
        v78 = *(v100 + 1296) - 1;
      }

      log_OutText(*(*v99 + 32), "POSPARSER", 5, 0, "FEATUREVECTOR:NEWSENT");
      v76 = heap_Calloc(*(*v99 + 8), 1, 8 * v77);
      v79 = *v99;
      if (!v76)
      {
        goto LABEL_175;
      }

      inited = posparser_initFeatureVector(v79, v76, v77);
      if ((inited & 0x80000000) != 0)
      {
        v538 = inited;
        v535 = 0;
        goto LABEL_229;
      }

      v102 = heap_Calloc((*v544)[1], 1, 8 * v78);
      v79 = *v544;
      if (v102)
      {
        v103 = posparser_initFeatureVector(v79, v102, v78);
        v104 = v103;
        v535 = v102;
        if ((v103 & 0x80000000) != 0)
        {
          v538 = v103;
          goto LABEL_229;
        }

        *__src = 128;
        v105 = heap_Calloc((*v544)[1], 1, 129);
        __b[0] = v105;
        if (v105)
        {
          v106 = v105;
          cstdlib_strcpy(v105, "");
          v538 = v104;
          if (!a5)
          {
            v142 = v544;
            goto LABEL_230;
          }

          v107 = 0;
          v108 = a4;
          do
          {
            v109 = *(a4 + 104 * v107 + 72);
            if (v109 != 9999 && v109 != v107)
            {
              if (v109 > v107)
              {
                v110 = v107 + 1;
                do
                {
                  *(a4 + 104 * v110++ + 40) = "MULTIWORD";
                }

                while (v109 >= v110);
              }

              v107 = v109;
            }

            ++v107;
          }

          while (a5 > v107);
          v519 = v76;
          v111 = 0;
          while (2)
          {
            v112 = v108 + 104 * v111;
            v113 = *(v112 + 8);
            v114 = *(v112 + 10) - v113;
            if (v114 > *(v544 + 49))
            {
              LOWORD(v114) = *(v544 + 49);
            }

            v115 = v114;
            cstdlib_strncpy(v546, &__s[v113], v114);
            v546[v115] = 0;
            if (!*(v112 + 32))
            {
              if (*(v112 + 80) == 1)
              {
                log_OutText((*v544)[4], "POSPARSER", 5, 0, "DIGITCLASS  :             : word[%2d] %10s", v111, v546);
                v116 = &szPOSDIGITCLASS;
              }

              else if (*(v112 + 84) == 1)
              {
                log_OutText((*v544)[4], "POSPARSER", 5, 0, "PUNCTCLASS  :             : word[%2d] %10s", v111, v546);
                v116 = "PUNCT";
              }

              else if (*(v112 + 12) == 1)
              {
                log_OutText((*v544)[4], "POSPARSER", 5, 0, "DIACRITIZED :             : word[%2d] %10s", v111, v546);
                v116 = "DIACRITIZED";
              }

              else if (*(v112 + 88) == 1)
              {
                log_OutText((*v544)[4], "POSPARSER", 5, 0, "LATIN       :             : word[%2d] %10s", v111, v546);
                v116 = "LATIN";
              }

              else if (*(v112 + 92) == 1)
              {
                log_OutText((*v544)[4], "POSPARSER", 5, 0, "SPELLMODE   :             : word[%2d] %10s", v111, v546);
                v116 = "SPELLMODE";
              }

              else if (*(v112 + 74))
              {
                log_OutText((*v544)[4], "POSPARSER", 5, 0, "PHONETIC    :             : word[%2d] %10s", v111, v546);
                v116 = "PHONETIC";
              }

              else
              {
                v119 = *(v112 + 40);
                if (v119 && !cstdlib_strcmp(v119, "MULTIWORD"))
                {
                  log_OutText((*v544)[4], "POSPARSER", 5, 0, "MULTIWORD   :             : word[%2d] %10s");
                  goto LABEL_172;
                }

                log_OutText((*v544)[4], "POSPARSER", 5, 0, "OOV         :             : word[%2d] %10s", v111, v546);
                v116 = "OOV";
              }

              *(v112 + 40) = v116;
              goto LABEL_172;
            }

            if (*(v112 + 32) == 1)
            {
              log_OutText((*v544)[4], "POSPARSER", 5, 0, "KNOWN       : UNAMBIGUOUS : word[%2d] %10s : POS=%s DIA=%s", v111);
            }

            else
            {
              log_OutText((*v544)[4], "POSPARSER", 5, 0, "KNOWN       : AMBIGUOUS   : word[%2d] %10s : ", v111, v546);
              if (*(v112 + 32))
              {
                v117 = 0;
                v118 = 0;
                do
                {
                  log_OutText((*v544)[4], "POSPARSER", 5, 0, "                                                  POS=%s DIA=%s", *(*(v112 + 24) + v117), *(*(v112 + 24) + v117 + 8));
                  ++v118;
                  v117 += 16;
                }

                while (v118 < *(v112 + 32));
              }
            }

LABEL_172:
            ++v111;
            v108 = a4;
            if (v111 != a5)
            {
              continue;
            }

            break;
          }

          v120 = 0;
          v121 = 0;
          while (2)
          {
            v122 = v108 + 104 * v121;
            if (*(v122 + 72) == 9999)
            {
              v123 = v121;
            }

            else
            {
              v123 = *(v122 + 72);
            }

            v124 = *(v122 + 8);
            v125 = *(v108 + 104 * v123 + 10) - v124;
            if (v125 > *(v544 + 49))
            {
              LOWORD(v125) = *(v544 + 49);
            }

            v126 = v125;
            cstdlib_strncpy(v546, &__s[v124], v125);
            v546[v126] = 0;
            log_OutText((*v544)[4], "POSPARSER", 5, 0, "Doing word[%2d] %10s", v120, v546);
            if (*(v122 + 32))
            {
              v76 = v519;
              if (*(v122 + 32) == 1)
              {
                if (*(v544 + 59) == 1)
                {
                  log_OutText((*v544)[4], "POSPARSER", 5, 0, "%d FEATUREVECTOR:UNAMBIGUOUS:0:%s %s", v120, v546, **(v122 + 24));
                }

                goto LABEL_209;
              }

              v127 = setPosparserFeatureVector(v544, v546, v544[28], v121, v519, a4, a5, v77);
              if ((v127 & 0x80000000) != 0)
              {
                v538 = v127;
                v16 = __s;
                v15 = v543;
                v14 = v532;
                goto LABEL_229;
              }

              v128 = *(v544 + 59);
              v14 = v532;
              if (v128)
              {
                v129 = "DUMMY";
                *__dst = "DUMMY";
              }

              else
              {
                v130 = igtree_Process(v544[28], v519, __dst);
                if ((v130 & 0x80000000) != 0)
                {
                  v538 = v130;
LABEL_228:
                  v16 = __s;
                  v15 = v543;
                  goto LABEL_229;
                }

                v129 = *__dst;
                v128 = *(v544 + 59);
              }

              v538 = posparser_DumpFeatureVectorAndResult(*v544, "KNOWN", v519, v129, __b, __src, v77, v128, v121, v546);
              if ((v538 & 0x80000000) != 0)
              {
                goto LABEL_228;
              }

              if (*(v122 + 32))
              {
                v131 = 0;
                v132 = 0;
                LOWORD(v133) = 0;
                do
                {
                  if (!cstdlib_strcmp(*__dst, *(*(v122 + 24) + v131)))
                  {
                    LOWORD(v133) = v132;
                  }

                  ++v132;
                  v131 += 16;
                }

                while (v132 < *(v122 + 32));
                v133 = v133;
              }

              else
              {
LABEL_209:
                v133 = 0;
              }

              v134 = (*v544)[1];
              v135 = cstdlib_strlen(*(*(v122 + 24) + 16 * v133 + 8));
              v136 = heap_Calloc(v134, 1, (v135 + 1));
              *(v122 + 16) = v136;
              if (!v136)
              {
                goto LABEL_225;
              }

              cstdlib_strcpy(v136, *(*(v122 + 24) + 16 * v133 + 8));
              *(v122 + 40) = *(*(v122 + 24) + 16 * v133);
LABEL_212:
              v108 = a4;
              v121 = v123 + 1;
              v120 = (v123 + 1);
              if (v120 >= a5)
              {
                v16 = __s;
                v15 = v543;
                goto LABEL_224;
              }

              continue;
            }

            break;
          }

          if (*(v122 + 80) || *(v122 + 84) || *(v122 + 12) || *(v122 + 88) || *(v122 + 92) || *(v122 + 74))
          {
            if (*(v544 + 59) == 1)
            {
              log_OutText((*v544)[4], "POSPARSER", 5, 0, "%d FEATUREVECTOR:DUMMY:0:%s %s", v120, v546, *(v122 + 40));
            }

            goto LABEL_212;
          }

          v538 = setPosparserFeatureVector(v544, v546, v544[27], v121, v535, a4, a5, v78);
          if ((v538 & 0x80000000) != 0)
          {
            goto LABEL_866;
          }

          v137 = *(v544 + 59);
          if (v137)
          {
            v138 = "DUMMY";
            *__dst = "DUMMY";
          }

          else
          {
            v538 = igtree_Process(v544[27], v535, __dst);
            if ((v538 & 0x80000000) != 0)
            {
              goto LABEL_866;
            }

            v138 = *__dst;
            v137 = *(v544 + 59);
          }

          v538 = posparser_DumpFeatureVectorAndResult(*v544, "OOV", v535, v138, __b, __src, v78, v137, v121, v546);
          if ((v538 & 0x80000000) == 0)
          {
            v139 = (*v544)[1];
            v140 = cstdlib_strlen(*__dst);
            v141 = heap_Calloc(v139, 1, (v140 + 1));
            *(v122 + 40) = v141;
            LODWORD(a5) = v521;
            if (v141)
            {
              cstdlib_strcpy(v141, *__dst);
              goto LABEL_212;
            }

LABEL_225:
            v538 = -1607458806;
            v13 = v544;
            log_OutPublic((*v544)[4], "POSPARSER", 68000, 0);
            v81 = a9;
            v80 = v511;
            v82 = a10;
            v16 = __s;
LABEL_103:
            v14 = v532;
LABEL_847:
            v62 = v546;
            goto LABEL_853;
          }

LABEL_866:
          v16 = __s;
          v15 = v543;
          LODWORD(a5) = v521;
LABEL_224:
          v14 = v532;
          v76 = v519;
LABEL_229:
          v106 = __b[0];
          v142 = v544;
          if (__b[0])
          {
LABEL_230:
            heap_Free((*v142)[1], v106);
            __b[0] = 0;
            *__src = 0;
          }

          log_OutText((*v142)[4], "POSPARSER", 5, 0, "POS Disambiguation results:", 0);
          if (a5)
          {
            v522 = v77;
            v143 = v76;
            v144 = 0;
            v145 = a5;
            v146 = a4 + 56;
            do
            {
              if (*(v146 - 24))
              {
                log_OutText((*v544)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : %s", v144);
              }

              else
              {
                v147 = *(v146 - 16);
                if (v147 && !cstdlib_strcmp(v147, "MULTIWORD"))
                {
                  log_OutText((*v544)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : ");
                }

                else if (*(v146 + 24) || *(v146 + 28) || *(v146 - 44) || *(v146 + 32) || *(v146 + 36) || *(v146 + 18) || *(v146 - 24))
                {
                  log_OutText((*v544)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : NON DICT WORD");
                }

                else
                {
                  log_OutText((*v544)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : OOV NON DICT WORD");
                }
              }

              ++v144;
              v146 += 104;
            }

            while (a5 != v144);
            v148 = a4 + 48;
            v14 = v532;
            v76 = v143;
            v77 = v522;
            while (1)
            {
              if (*(v148 + 32) || *(v148 + 36) || *(v148 - 36) || *(v148 + 40) || *(v148 + 44) || *(v148 + 26) || *(v148 - 16))
              {
                goto LABEL_261;
              }

              v149 = *(v148 - 8);
              if (!v149)
              {
                break;
              }

              if (cstdlib_strcmp(v149, "MULTIWORD"))
              {
                v150 = *(v148 - 8);
LABEL_260:
                heap_Free((*v544)[1], v150);
                *(v148 - 8) = 0;
              }

LABEL_261:
              v151 = *(v148 + 8);
              if (v151)
              {
                heap_Free((*v544)[1], v151);
                *(v148 + 8) = 0;
              }

              if (*v148)
              {
                heap_Free((*v544)[1], *v148);
                *v148 = 0;
              }

              v148 += 104;
              if (!--v145)
              {
                goto LABEL_266;
              }
            }

            v150 = 0;
            goto LABEL_260;
          }

LABEL_266:
          if (v535)
          {
            posparser_freeFeatureVector(*v544, v535, v78);
            heap_Free((*v544)[1], v535);
          }

          if (v76)
          {
            posparser_freeFeatureVector(*v544, v76, v77);
            heap_Free((*v544)[1], v76);
          }

          v13 = v544;
          if ((v538 & 0x80000000) == 0)
          {
            goto LABEL_271;
          }

LABEL_846:
          v81 = a9;
          v80 = v511;
          v82 = a10;
          goto LABEL_847;
        }

        v75 = v102;
LABEL_100:
        v79 = *v544;
      }

      else
      {
LABEL_175:
        v75 = 0;
      }

      v535 = v75;
      v538 = -1607458806;
      log_OutPublic(*(v79 + 32), "POSPARSER", 68000, 0);
      goto LABEL_229;
    }

    v538 = v63;
    goto LABEL_846;
  }

LABEL_271:
  if ((*(v13 + 16) | 2) != 2)
  {
    goto LABEL_671;
  }

  v552[2] = -1;
  LOBYTE(v552[0]) = 0;
  v552[1] = 0;
  *__c = v546;
  v152 = cstdlib_strlen(v16);
  v153 = *(v13 + 10);
  if (!v153)
  {
    goto LABEL_671;
  }

  v551 = 0;
  if (!*v153)
  {
    goto LABEL_671;
  }

  v154 = v152;
  cstdlib_memset(__dst, 0, 0x5A0uLL);
  cstdlib_memset(__b, 0, 0x39uLL);
  v504 = heap_Calloc(*(*v13 + 8), 1, 252);
  if (!v504)
  {
    v156 = -1607458806;
    log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0);
    v504 = 0;
LABEL_660:
    v493 = 0;
    goto LABEL_662;
  }

  v552[1] = 0;
  cstdlib_strcpy(v546, "");
  v520 = v154;
  if (!v154)
  {
    v493 = 0;
    v156 = 0;
    goto LABEL_662;
  }

  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v493 = 0;
  *v536 = 0;
  v495 = 0;
  v496 = 20;
  while (1)
  {
    v547 = v157;
    cstdlib_memset(__s1, 0, 0xAuLL);
    cstdlib_strcpy(__s1, "");
    v540 = v156;
    if (*(v13 + 48) != 1)
    {
      LOWORD(v160) = 0;
      v161 = 0;
      v159 = v547;
LABEL_309:
      log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c", v155, v16[v159]);
      v176 = 0;
      v523 = 0;
      v177 = v161 == 1;
      goto LABEL_310;
    }

    v159 = v547;
    v158 = 0;
    v160 = 0;
    v161 = 0;
    if (!v13[104])
    {
      goto LABEL_309;
    }

    v162 = 0;
    v498 = v155;
    v163 = v155 + 1;
    while (!v162)
    {
      v164 = (*(v13 + 25) + 6 * v158);
      v165 = *v164;
      if (v165 > v159)
      {
        break;
      }

      if (v165 == v159 && *(v13 + 38) == 1 && (v166 = isCharInStr(v164 + 2, "XBI"), v159 = v547, v166))
      {
        v167 = v158;
        v168 = v158 + 1;
        v162 = 1;
        if (v168 < v13[104] && v163 < v520 && (v169 = (*(v13 + 25) + 6 * v168), v163 == *v169))
        {
          if (*(v13 + 15))
          {
            v170 = *(v13 + 15);
          }

          else
          {
            v170 = "^FNKauioR";
          }

          if (isCharInStr(v169 + 2, v170))
          {
            v171 = 6 * v168 + 6;
            while (1)
            {
              cstdlib_strcat(__s1, (*(v13 + 25) + v171 - 4));
              v160 += cstdlib_strlen((*(v13 + 25) + v171 - 4));
              if (++v168 >= v13[104])
              {
                break;
              }

              v172 = *(v13 + 25);
              if (v163 != *(v172 + v171))
              {
                break;
              }

              v173 = v172 + v171;
              if (*(v13 + 15))
              {
                v174 = *(v13 + 15);
              }

              else
              {
                v174 = "^FNKauioR";
              }

              v162 = 1;
              v171 += 6;
              v14 = v532;
              if (!isCharInStr((v173 + 2), v174))
              {
                goto LABEL_305;
              }
            }

            v162 = 1;
LABEL_305:
            v161 = 1;
          }

          else
          {
            v162 = 1;
          }

          v158 = v167;
          v16 = __s;
          v159 = v547;
        }

        else
        {
          v158 = v167;
          v16 = __s;
        }
      }

      else
      {
        v162 = 0;
        ++v158;
      }

      v175 = v13[104];
      if (v158 >= v175)
      {
        goto LABEL_320;
      }
    }

    v175 = 1;
LABEL_320:
    v523 = v162 != 0;
    if (v162)
    {
      v183 = *(v13 + 25);
      if (v161 == 1)
      {
        v155 = v498;
LABEL_323:
        v176 = v162 == 0;
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c rewrite+vowel diacritic=%s%s", v155, v16[v159], (v183 + 6 * v158 + 2), __s1);
        v177 = 1;
        goto LABEL_310;
      }

      v155 = v498;
      log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c rewrite diacritic=%s", v498, v16[v159], (v183 + 6 * v158 + 2));
      v176 = 0;
      v177 = 0;
      v523 = 1;
      goto LABEL_310;
    }

    v158 = 0;
    if (!v175 || v163 >= v520)
    {
      v155 = v498;
      goto LABEL_309;
    }

    v158 = 0;
    v188 = 0;
    do
    {
      if (v188)
      {
        break;
      }

      v189 = (*(v13 + 25) + 6 * v158);
      v190 = *v189;
      if (v163 < v190)
      {
        break;
      }

      if (v163 == v190 && (*(v13 + 15) ? (v191 = *(v13 + 15)) : (v191 = "^FNKauioR"), v192 = isCharInStr(v189 + 2, v191), v159 = v547, v192))
      {
        if (v158 < v13[104] && (v193 = (*(v13 + 25) + 6 * v158), v163 == *v193))
        {
          v194 = *(v13 + 15) ? *(v13 + 15) : "^FNKauioR";
          if (isCharInStr(v193 + 2, v194))
          {
            v195 = 6 * v158 + 6;
            v196 = v158;
            while (1)
            {
              cstdlib_strcat(__s1, (*(v13 + 25) + v195 - 4));
              v160 += cstdlib_strlen((*(v13 + 25) + v195 - 4));
              if (++v158 >= v13[104])
              {
                break;
              }

              v197 = *(v13 + 25);
              if (v163 != *(v197 + v195))
              {
                break;
              }

              v198 = v197 + v195;
              if (*(v13 + 15))
              {
                v199 = *(v13 + 15);
              }

              else
              {
                v199 = "^FNKauioR";
              }

              v200 = isCharInStr((v198 + 2), v199);
              v188 = 1;
              v195 += 6;
              v15 = v543;
              if (!v200)
              {
                goto LABEL_361;
              }
            }

            v188 = 1;
LABEL_361:
            v14 = v532;
            v158 = v196;
            v16 = __s;
          }

          else
          {
            v188 = 0;
          }

          v159 = v547;
        }

        else
        {
          v188 = 0;
        }
      }

      else
      {
        v188 = 0;
        ++v158;
      }
    }

    while (v158 < v13[104]);
    v155 = v498;
    if (!v188)
    {
      goto LABEL_309;
    }

    if (v161 == 1)
    {
      v183 = *(v13 + 25);
      goto LABEL_323;
    }

    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c vowel diacritic=%s", v498, v16[v159], __s1);
    v177 = 0;
    v523 = 0;
    v176 = 1;
LABEL_310:
    v178 = *v536;
    if (a5 <= SLOWORD(v536[0]))
    {
      v180 = 0;
    }

    else
    {
      while (1)
      {
        v179 = a4 + 104 * v178;
        if (*(v179 + 8) <= v547 && *(v179 + 10) > v547)
        {
          break;
        }

        v178 = (v178 + 1);
        if (a5 <= v178)
        {
          v180 = 0;
          v178 = *v536;
          goto LABEL_325;
        }
      }

      v181 = v178;
      v182 = a4 + 104 * v178;
      if (*(v182 + 72) != 9999 && *(v182 + 8) == v547)
      {
        v536[0] = v178;
LABEL_328:
        v185 = (a4 + 104 * v181);
        v186 = v185 + 5;
        if (v185[36] != 9999)
        {
          v186 = (a4 + 104 * v185[36] + 10);
        }

        v187 = *v186;
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM SKIPPING %d-%d as dict word exists, is vowelled, is phonetic or pre-diacritized", v185[4], v187);
        *v536 = (v536[0] + 1);
        cstdlib_strcpy(*__c, "");
        goto LABEL_331;
      }

      v180 = 1;
    }

LABEL_325:
    *v536 = v178;
    v181 = v178;
    v184 = a4 + 104 * v178;
    if (*(v184 + 12) == 1 || *(v184 + 74) || *(v184 + 16))
    {
      goto LABEL_328;
    }

    if ((v180 & 1) == 0)
    {
      v203 = v547;
      goto LABEL_376;
    }

    if (*(v184 + 80) != 1 && *(v184 + 84) != 1 || *(v184 + 8) != v547)
    {
      break;
    }

    v201 = *(*v13 + 32);
    *v487 = v155;
    v488 = *(v184 + 10);
    v202 = "NGRAM SKIPPING %d-%d as digit/punctuation class";
LABEL_411:
    v222 = v184;
    log_OutText(v201, "POSPARSER", 5, 0, v202, *v487, v488);
    v187 = *(v222 + 10);
LABEL_331:
    v156 = v540;
    v157 = v187 + 1;
LABEL_332:
    v155 = v157;
    if (v520 <= v157)
    {
      goto LABEL_662;
    }
  }

  if (*(v184 + 88) == 1 && *(v184 + 8) == v547)
  {
    v201 = *(*v13 + 32);
    *v487 = v155;
    v488 = *(v184 + 10);
    v202 = "NGRAM SKIPPING %d-%d as latin";
    goto LABEL_411;
  }

  if (*(v184 + 92) == 1 && *(v184 + 8) == v547)
  {
    v201 = *(*v13 + 32);
    *v487 = v155;
    v488 = *(v184 + 10);
    v202 = "NGRAM SKIPPING %d-%d as in spell mode";
    goto LABEL_411;
  }

  v490 = a4 + 104 * v178;
  v211 = cstdlib_strlen("§");
  if (!cstdlib_strncmp(&v16[v547], "§", v211))
  {
    v184 = v490;
    v203 = v547;
    if (*(v490 + 8) != v547)
    {
      goto LABEL_376;
    }

    v201 = *(*v13 + 32);
    *v487 = v155;
    v488 = *(v490 + 10);
    v202 = "NGRAM SKIPPING %d-%d as phonetic";
    goto LABEL_411;
  }

  v184 = v490;
  v203 = v547;
LABEL_376:
  v494 = v203;
  v204 = v16[v203];
  if (v204 == 32)
  {
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM SKIPPING space");
    v156 = v540;
LABEL_657:
    v157 = v547 + Utf8_LengthInBytes(&v16[v494], 1);
    goto LABEL_332;
  }

  v489 = v184;
  v541 = v158;
  v499 = v155;
  log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM PROCESSING [%d] %c", v155, v204);
  v205 = v496;
  cstdlib_memset(v504, 0, 12 * v496 + 12);
  v552[1] = 0;
  if (v523 && v177)
  {
    cstdlib_strcpy(v504, (*(v13 + 25) + 6 * v541 + 2));
    if (v160)
    {
      v206 = v504 + 1;
      v207 = __s1;
      v208 = v160;
      do
      {
        v209 = *v207++;
        v206[12 * v552[1]] = v209;
        ++v206;
        --v208;
      }

      while (v208);
      v210 = v160 + 1;
    }

    else
    {
      v210 = 1;
    }

    v504[12 * v552[1] + v210] = 0;
    *&v504[12 * v552[1] + 10] = 20000;
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "(partial dia) ADD SOLUTION %s(%u)", &v504[12 * v552[1]], *&v504[12 * v552[1] + 10]);
    v491 = 0;
    v223 = ++v552[1];
LABEL_566:
    v496 = v205;
    if (v523)
    {
      if (v223)
      {
        v308 = 0;
        v501 = 0;
        v514 = 0;
        v516 = 0;
        v309 = v504;
        do
        {
          v529 = &v309[12 * v308];
          v310 = cstdlib_strlen(v529);
          v311 = cstdlib_strlen(v544[25] + 6 * v541 + 2);
          v524 = v310;
          v506 = v308;
          if (v310)
          {
            v312 = 0;
            v313 = 0;
            v314 = v311;
            do
            {
              v315 = Utf8_LengthInBytes(&v529[v313], 1);
              v316 = Utf8_LengthInBytes(v544[25] + 6 * v541 + v312 + 2, 1);
              if (v316 == v315 && v314 > v312)
              {
                v318 = v316;
                if (!cstdlib_strncmp(&v529[v313], v544[25] + 6 * v541 + v312 + 2, v315))
                {
                  v319 = *&v309[12 * v308 + 10];
                  if (v319 >= v514)
                  {
                    v320 = v308;
                  }

                  else
                  {
                    v320 = v516;
                  }

                  v516 = v320;
                  if (v319 <= v514)
                  {
                    LOWORD(v319) = v514;
                  }

                  v514 = v319;
                  v312 += v318;
                  v501 = 1;
                }
              }

              v313 += v315;
            }

            while (v313 < v524);
          }

          v309 = v504;
          ++v308;
        }

        while (v506 + 1 < v552[1]);
        v321 = v552[1] == 0;
        if (v501)
        {
          v13 = v544;
          v322 = v516;
          goto LABEL_640;
        }

        v13 = v544;
        v322 = v516;
        v337 = v514;
      }

      else
      {
        v337 = 0;
        v322 = 0;
        v321 = 1;
        v309 = v504;
      }

      log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NO SOLUTION CONTAINING DIACRITIC %s - see if solution with vowel", (*(v13 + 25) + 6 * v541 + 2));
      if (v321)
      {
        v338 = 0;
LABEL_614:
        if (*(v13 + 38) != 1 || cstdlib_strcmp((*(v13 + 25) + 6 * v541 + 2), "B") && cstdlib_strcmp((*(v13 + 25) + 6 * v541 + 2), "X"))
        {
          cstdlib_strcpy(&v309[12 * v338], (*(v13 + 25) + 6 * v541 + 2));
        }

        else
        {
          v309[12 * v338] = 65;
          v309[12 * v552[1] + 1] = 0;
        }

        v16 = __s;
        v14 = v532;
        *&v309[12 * v552[1] + 10] = 0;
        v327 = v552[1]++;
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "BACKUP NGRAM SOLUTION[%d] %s %d", v327, &v309[12 * v327], *&v309[12 * v327 + 10]);
        goto LABEL_645;
      }

      v339 = 0;
      v340 = 0;
      while (2)
      {
        v503 = v340;
        while (1)
        {
          v341 = &v309[12 * v339];
          v342 = cstdlib_strlen(v341);
          v343 = *(v13 + 15) ? *(v13 + 15) : "^FNKauioR";
          v530 = v343;
          v507 = cstdlib_strlen(v343);
          if (v507)
          {
            break;
          }

LABEL_631:
          ++v339;
          v338 = v552[1];
          v13 = v544;
          v309 = v504;
          if (v339 >= v552[1])
          {
            if ((v503 & 1) == 0)
            {
              goto LABEL_614;
            }

            goto LABEL_640;
          }
        }

        v344 = 0;
        while (1)
        {
          v345 = Utf8_LengthInBytes(&v530[v344], 1);
          if (v342)
          {
            break;
          }

LABEL_630:
          v344 += v345;
          if (v344 >= v507)
          {
            goto LABEL_631;
          }
        }

        v346 = 0;
        while (1)
        {
          v347 = Utf8_LengthInBytes(&v341[v346], 1);
          v348 = v347;
          if (v347 == v345 && !cstdlib_strncmp(&v530[v344], &v341[v346], v347))
          {
            break;
          }

          v346 += v348;
          if (v346 >= v342)
          {
            goto LABEL_630;
          }
        }

        v309 = v504;
        v349 = *&v504[12 * v339 + 10];
        if (v349 >= v337)
        {
          v322 = v339;
        }

        if (v349 > v337)
        {
          v337 = *&v504[12 * v339 + 10];
        }

        ++v339;
        v340 = 1;
        v13 = v544;
        if (v339 < v552[1])
        {
          continue;
        }

        break;
      }

LABEL_640:
      log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "FORCE NGRAM SOLUTION[%d] %s %d", v322, &v309[12 * v322], *&v309[12 * v322 + 10]);
      LOWORD(v327) = v322;
      v16 = __s;
LABEL_641:
      v14 = v532;
    }

    else if (v223)
    {
      v323 = 0;
      v324 = 0;
      v325 = 0;
      v326 = 0;
      LOWORD(v327) = 0;
LABEL_589:
      v328 = &v504[12 * v323];
      v329 = v323;
      do
      {
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM SOLUTION[%d] %s %d", v329, v328, *(v328 + 5));
        v330 = *(v328 + 5);
        if (v330 == 20000)
        {
          v323 = v329 + 1;
          v325 = 1;
          v324 = v329;
          if (v329 + 1 < v552[1])
          {
            goto LABEL_589;
          }

          goto LABEL_600;
        }

        v328 += 12;
        if (v330 >= v326)
        {
          LOWORD(v327) = v329;
        }

        if (v330 > v326)
        {
          v326 = v330;
        }

        ++v329;
      }

      while (v329 < v552[1]);
      LOWORD(v329) = v324;
      if ((v325 & 1) == 0)
      {
        goto LABEL_645;
      }

LABEL_600:
      v331 = cstdlib_strlen(&v504[12 * v329]);
      if (v552[1])
      {
        v332 = v331;
        v333 = 0;
        v334 = v504;
        v335 = 0;
        v336 = v331;
        do
        {
          if (!cstdlib_memcmp(v334, &v504[12 * v329], v332) && cstdlib_strlen(v334) > v336)
          {
            LOWORD(v327) = v333;
            v335 = 1;
          }

          ++v333;
          v334 += 12;
        }

        while (v333 < v552[1]);
        if (!v335)
        {
          LOWORD(v327) = v329;
        }

        v13 = v544;
        goto LABEL_641;
      }

      LOWORD(v327) = v329;
    }

    else
    {
      LOWORD(v327) = 0;
    }

LABEL_645:
    v350 = &v504[12 * v327];
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM SELECTED SOLUTION[%d] %s %d", v327, v350, *(v350 + 5));
    v351 = cstdlib_strlen(*__c);
    v352 = cstdlib_strlen(v350);
    v353 = posparserGrowStr(v13, __c, (v352 + v351 + 1), &v549, 0);
    if (v353 < 0)
    {
      v156 = v353;
      goto LABEL_863;
    }

    cstdlib_strcat(*__c, v350);
    v15 = v543;
    if (v499 + v491 + 1 == *(v489 + 10))
    {
      v354 = *__c;
      v355 = cstdlib_strlen(*__c);
      v356 = *(v489 + 8);
      if (*(v489 + 10) - v356 == v355 && !cstdlib_memcmp(v354, &v16[v356], v355))
      {
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "--> NGRAM WORD SOLUTION %s (unchanged)", v354);
        v156 = 0;
      }

      else
      {
        v357 = *(*v13 + 8);
        v358 = cstdlib_strlen(v354);
        v359 = heap_Calloc(v357, 1, (v358 + 1));
        *(v489 + 64) = v359;
        if (!v359)
        {
          goto LABEL_864;
        }

        v156 = posparser_PostProcess(v13, __c);
        if (v156 < 0)
        {
          goto LABEL_662;
        }

        v354 = *__c;
        cstdlib_strcpy(*(v489 + 64), *__c);
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "--> NGRAM WORD SOLUTION %s", *(v489 + 64));
      }

      *v536 = (v536[0] + 1);
      cstdlib_strcpy(v354, "");
    }

    else
    {
      v156 = 0;
    }

    v158 = v541;
    if (v16[v494] == 32 && *(a4 + 104 * LOWORD(v536[0]) + 8) > v547)
    {
      cstdlib_strcpy(*__c, "");
    }

    goto LABEL_657;
  }

  v212 = Utf8_LengthInBytes(&v16[v494], 1);
  v213 = v212;
  if (v176)
  {
    if ((v212 & 0xFFFE) != 0)
    {
      v214 = v212;
    }

    else
    {
      v214 = 1;
    }

    cstdlib_strncpy(v504, &v16[v494], v214);
    if (v160)
    {
      v215 = v160;
      v216 = v213;
      if ((v213 & 0xFFFE) == 0)
      {
        v216 = 1;
      }

      v217 = &v504[v216];
      v218 = __s1;
      do
      {
        v219 = *v218++;
        v217[12 * v552[1]] = v219;
        ++v217;
        --v215;
      }

      while (v215);
    }

    v504[12 * v552[1] + v214 + v160] = 0;
    *&v504[12 * v552[1] + 10] = 20000;
    v220 = *(*v13 + 32);
LABEL_408:
    log_OutText(v220, "POSPARSER", 5, 0, "(partial dia) ADD SOLUTION %s(%u)");
  }

  else
  {
    if (v212)
    {
      LOWORD(v214) = v212;
    }

    else
    {
      LOWORD(v214) = 1;
    }

    cstdlib_strncpy(v504, &v16[v494], v214);
    v504[12 * v552[1] + v214] = 0;
    v221 = &v504[12 * v552[1]];
    if (v523)
    {
      *(v221 + 5) = 20000;
      v220 = *(*v13 + 32);
      goto LABEL_408;
    }

    *(v221 + 5) = 0;
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "(dia) ADD SOLUTION %s(%u)");
  }

  v205 = v496;
  v224 = 0;
  v500 = v214 - 1;
  ++v552[1];
  while (1)
  {
LABEL_416:
    if (v224 >= *(v13 + 96))
    {
LABEL_565:
      v491 = v500;
      v223 = v552[1];
      goto LABEL_566;
    }

    v225 = *(*v13 + 32);
    if (v224)
    {
      log_OutText(v225, "POSPARSER", 5, 0, "!!BACKING OFF TO DICT %d=%s");
    }

    else
    {
      log_OutText(v225, "POSPARSER", 5, 0, "!!USING DICT %d=%s");
    }

    v226 = *(*(v13 + 10) + v224);
    if (*(*(v13 + 10) + v224))
    {
      break;
    }

    ++v224;
  }

  v492 = 0;
  v502 = v224;
  while (1)
  {
    v515 = v226;
    cstdlib_memset(__b, 0, 0x39uLL);
    cstdlib_memset(__b, 64, *(*(v13 + 10) + v224));
    LOWORD(v224) = v547;
    v497 = v205;
    if ((v547 & 0x8000) != 0)
    {
      v240 = 0;
      LOWORD(v527) = 0;
    }

    else
    {
      v527 = 0;
      v227 = 0;
      v228 = v515;
      v229 = v536[0];
      v230 = a4;
      do
      {
        v231 = v228--;
        v232 = v231 - 1;
        while ((v229 & 0x8000) == 0)
        {
          v233 = v229;
          v234 = (a4 + 10 + 104 * v229);
          while (*(v234 - 1) > v224 || *v234 <= v224)
          {
            v234 -= 52;
            v249 = v233-- <= 0;
            if (v249)
            {
              goto LABEL_440;
            }
          }

          v229 = v233;
          v235 = v230 + 104 * v233;
          if (*(v235 + 80) == 1)
          {
            if (*(v235 + 8) == v224)
            {
              PunctClassChar = "α";
LABEL_448:
              cstdlib_strcpy(__src, __b);
              insertString(__src, __b, PunctClassChar, v228);
              ++v527;
              goto LABEL_444;
            }
          }

          else
          {
            if (*(v235 + 84) != 1)
            {
              break;
            }

            if (*(v235 + 8) == v224)
            {
              PunctClassChar = getPunctClassChar(v544, __s[v224]);
              goto LABEL_448;
            }
          }

          LOWORD(v224) = v224 - 1;
          if ((v224 & 0x8000) != 0)
          {
            goto LABEL_450;
          }
        }

LABEL_440:
        LOWORD(v224) = utf8_GetCurrentUtf8Offset(__s, v224);
        v236 = &__s[v224];
        v237 = Utf8_LengthInBytes(v236, 1);
        if ((v237 & 0xFFFE) != 0)
        {
          v238 = v237;
          cstdlib_strcpy(__src, __b);
          cstdlib_strcpy(__b, __src);
          cstdlib_strncpy(__b + v228, v236, v238);
          cstdlib_strcpy(__b + v228 + v238, &__src[v228 + 1]);
          v527 = v527 + v238 - 1;
        }

        else
        {
          *(__b + v232) = *v236;
        }

        v14 = v532;
LABEL_444:
        ++v227;
        if (!v228)
        {
          break;
        }

        LODWORD(v224) = (v224 - 1);
        v230 = a4;
      }

      while ((v224 & 0x80000000) == 0);
LABEL_450:
      v240 = v227;
      v16 = __s;
    }

    v241 = 0;
    v224 = v502;
    do
    {
      if (*(__b + v241) != 64)
      {
        break;
      }

      ++v241;
    }

    while (v241 != 14);
    v242 = v241 + v240;
    v13 = v544;
    if (v242 == v515)
    {
      v243 = *(v544[10] + v502);
      v244 = v241 + 1;
      if (v242 != v243 && v244 < v243)
      {
        break;
      }
    }

    log_OutText((*v544)[4], "POSPARSER", 5, 0, "NGRAM IGNORING szUnVoweledNgramStr = %s", __b);
LABEL_563:
    v226 = v515 - 1;
    if (v515 == 1)
    {
      ++v224;
      if (!v492)
      {
        goto LABEL_416;
      }

      goto LABEL_565;
    }
  }

  v246 = Utf8_LengthInBytes(&v16[v494], 1);
  v247 = a4;
  v248 = v547 + v246;
  v249 = v243 == v515 || v520 <= (v547 + v246);
  if (v249)
  {
    goto LABEL_464;
  }

  v255 = 0;
  v256 = 0;
  v512 = v527 + v515;
  v505 = (v243 - v515);
  v257 = *v536;
  v528 = v515 + v527;
  while (v520 > v248)
  {
    v258 = v248;
    v259 = v512 + v255;
    while (2)
    {
      if (a5 <= v257)
      {
        goto LABEL_493;
      }

      v260 = v257;
      while (1)
      {
        v261 = v247 + 104 * v260;
        if (*(v261 + 8) <= v248 && *(v261 + 10) > v248)
        {
          break;
        }

        v260 = (v260 + 1);
        if (a5 <= v260)
        {
          goto LABEL_493;
        }
      }

      v262 = v247 + 104 * v260;
      if (*(v262 + 80) == 1)
      {
        if (v258 == *(v262 + 8))
        {
          cstdlib_strcpy(__src, __b);
          v263 = (v259 + v256);
          v264 = "α";
LABEL_500:
          insertString(__src, __b, v264, v263);
          ++v256;
          v257 = v260;
          goto LABEL_496;
        }

LABEL_490:
        v258 = ++v248;
        v257 = v260;
        if (v520 <= v248)
        {
          goto LABEL_464;
        }

        continue;
      }

      break;
    }

    if (*(v262 + 84) == 1)
    {
      if (v258 == *(v262 + 8))
      {
        v268 = getPunctClassChar(v544, __s[v248]);
        cstdlib_strcpy(__src, __b);
        v263 = (v259 + v256);
        v264 = v268;
        goto LABEL_500;
      }

      goto LABEL_490;
    }

    v257 = v260;
LABEL_493:
    v265 = &__s[v248];
    v266 = Utf8_LengthInBytes(v265, 1);
    if ((v266 & 0xFFFE) != 0)
    {
      v267 = v266;
      cstdlib_strcpy(__src, __b);
      cstdlib_strcpy(__b, __src);
      cstdlib_strncpy(__b + (v259 + v256), v265, v267);
      cstdlib_strcpy(__b + (v259 + v256) + v267, &__src[(v259 + v256) + 1]);
      v256 += v267 - 1;
      v248 += v267 - 1;
    }

    else
    {
      *(__b + v528 + v255 + v256) = *v265;
    }

LABEL_496:
    ++v255;
    v247 = a4;
    if (v255 < v505 && v520 > ++v248)
    {
      continue;
    }

    break;
  }

LABEL_464:
  v14 = v532;
  if (LOBYTE(__b[0]) == 32)
  {
    cstdlib_strcpy(__src, __b);
    insertString(__src, __b, "Φ", 0);
  }

  v15 = v543;
  v13 = v544;
  v224 = v502;
  if (*(__b + cstdlib_strlen(__b) - 1) == 32)
  {
    cstdlib_strcpy(__src, __b);
    v250 = cstdlib_strlen(__b);
    insertString(__src, __b, "Φ", (v250 - 1));
  }

  log_OutText((*v544)[4], "POSPARSER", 5, 0, "NGRAM useLetterNum = %d szUnVoweledNgramStr = %s", v515, __b);
  v16 = __s;
  if (!v495)
  {
LABEL_472:
    v552[2] = -1;
    v253 = (v544[3][19])(v544[1], v544[2], v544[11][v502], __b, &v551, &v552[2], v552, *(v544 + 68));
    if (v253 < 0)
    {
      v156 = v253;
      goto LABEL_662;
    }

    if (!v552[2])
    {
      v552[2] = 1;
      log_OutText((*v544)[4], "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s FAILS", __b);
      v254 = "FAIL_DICT_LOOKUP";
      goto LABEL_513;
    }

    v254 = *v551;
    log_OutText((*v544)[4], "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s SUCCEEDS %s", __b, *v551);
    v205 = v497;
    if (v254)
    {
      goto LABEL_513;
    }

    goto LABEL_563;
  }

  v251 = v495;
  while (1)
  {
    v252 = &__dst[72 * (v251 - 1)];
    if (!cstdlib_strcmp(v252, __b))
    {
      break;
    }

    if (!--v251)
    {
      goto LABEL_472;
    }
  }

  log_OutText((*v544)[4], "POSPARSER", 5, 0, "NGRAM FOUND %s in cache, cachedDictStr = %s", __b, *(v252 + 8));
  if (!cstdlib_strcmp(*(v252 + 8), "FAIL_DICT_LOOKUP"))
  {
    v552[2] = 0;
    log_OutText((*v544)[4], "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s FAILS (CACHED)", __b);
    v205 = v497;
    goto LABEL_563;
  }

  if (!v493)
  {
    v272 = (*v544)[1];
    v273 = cstdlib_strlen(*(v252 + 8));
    v274 = heap_Calloc(v272, 1, (v273 + 1));
    if (v274)
    {
      v254 = v274;
      v275 = *(v252 + 8);
      goto LABEL_512;
    }

    v156 = -1607458806;
    log_OutPublic((*v544)[4], "POSPARSER", 68000, 0);
    goto LABEL_660;
  }

  v269 = cstdlib_strlen(*(v252 + 8));
  if (v269 <= cstdlib_strlen(v493))
  {
    v254 = v493;
  }

  else
  {
    v270 = (*v544)[1];
    v271 = cstdlib_strlen(*(v252 + 8));
    v254 = heap_Realloc(v270, v493, (v271 + 1));
    if (!v254)
    {
LABEL_864:
      v156 = -1607458806;
      log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0);
      goto LABEL_662;
    }
  }

  v275 = *(v252 + 8);
  v274 = v254;
LABEL_512:
  cstdlib_strcpy(v274, v275);
  v493 = v254;
LABEL_513:
  v276 = cstdlib_strcmp(v254, "FAIL_DICT_LOOKUP");
  v277 = v492;
  if (v276)
  {
    v277 = 1;
  }

  v492 = v277;
  if (!v552[2])
  {
    v278 = v494;
    goto LABEL_525;
  }

  v278 = v494;
  v279 = v552[1];
  if (v495 < 0x14u || v552[1] > 4u)
  {
    v280 = v495;
  }

  else
  {
    heap_Free((*v544)[1], v557[0]);
    v557[0] = 0;
    cstdlib_memmove(__dst, &v557[1], 72 * (v495 - 1));
    v280 = (v495 - 1);
  }

  v495 = v280;
  if (v280 > 0x13u || v279 > 4)
  {
LABEL_525:
    if (v254 != "FAIL_DICT_LOOKUP")
    {
      v284 = cstdlib_strchr(v254, LOBYTE(v552[0]));
      if (v284)
      {
        v285 = v284;
        *v284 = 0;
        v513 = cstdlib_atoi(v254);
        while (1)
        {
          v286 = v285 + 1;
          if (v285[1] == LOBYTE(v552[0]))
          {
            v14 = v532;
            goto LABEL_562;
          }

          v287 = cstdlib_strchr(v285 + 1, LOBYTE(v552[0]));
          v288 = v287;
          if (v287)
          {
            *v287 = 0;
          }

          v289 = cstdlib_strlen(v285 + 1);
          v290 = 0;
          if (v515 != 1 && v289)
          {
            v291 = 1;
            v292 = v515 - 1;
            do
            {
              v292 -= v285[v291] == 59;
              v293 = v291 + 1;
              if (v292)
              {
                v294 = v291 >= v289;
              }

              else
              {
                v294 = 1;
              }

              ++v291;
            }

            while (!v294);
            v290 = v293 - 1;
          }

          v295 = &v286[v290];
          v296 = cstdlib_strchr(&v286[v290], 59);
          if (v296)
          {
            *v296 = 0;
          }

          cstdlib_memset(__s2, 0, 0xAuLL);
          LOWORD(v297) = Utf8_LengthInBytes(&__s[v278], 1);
          v298 = cstdlib_strlen("√");
          v14 = v532;
          if (cstdlib_strncmp(v295, "√", v298))
          {
            v297 = (v297 & 0xFFFE) != 0 ? v297 : 1;
            cstdlib_strncpy(__s2, &__s[v278], v297);
            v500 = v297 - 1;
            cstdlib_strcat(__s2, v295);
          }

          else
          {
            v299 = cstdlib_strlen("√");
            cstdlib_strcpy(__s2, &v295[v299]);
          }

          log_OutText((*v544)[4], "POSPARSER", 5, 0, "ADD SOLUTION %s(%u)", __s2, v513);
          if (v552[1])
          {
            break;
          }

          v302 = 0;
LABEL_556:
          cstdlib_strcpy(&v504[12 * v302], __s2);
          *&v504[12 * v552[1] + 10] = v513;
          v306 = 1;
          v307 = &v552[1];
LABEL_558:
          *v307 += v306;
          v285 = v288;
          if (!v288)
          {
            goto LABEL_562;
          }
        }

        v300 = 0;
        v301 = v504;
        do
        {
          if (!cstdlib_strcmp(v301, __s2))
          {
            v307 = v301 + 10;
            v306 = v513;
            goto LABEL_558;
          }

          ++v300;
          v302 = v552[1];
          v301 += 12;
        }

        while (v300 < v552[1]);
        v303 = v497;
        if (v552[1] <= v497)
        {
          goto LABEL_556;
        }

        v497 = (v497 + 10);
        v304 = v504;
        v305 = heap_Realloc((*v544)[1], v504, 12 * (v303 + 10) + 12);
        if (v305)
        {
          v302 = v552[1];
          v504 = v305;
          goto LABEL_556;
        }

        goto LABEL_862;
      }

      cstdlib_atoi(v254);
    }

LABEL_562:
    v205 = v497;
    v224 = v502;
    goto LABEL_563;
  }

  cstdlib_strcpy(&__dst[72 * v280], __b);
  v281 = (*v544)[1];
  v282 = cstdlib_strlen(v254);
  v283 = heap_Calloc(v281, 1, (v282 + 1));
  v557[9 * v495] = v283;
  if (v283)
  {
    cstdlib_strcpy(v283, v254);
    v495 = (v495 + 1);
    goto LABEL_525;
  }

  v304 = v504;
LABEL_862:
  v504 = v304;
  v156 = -1607458806;
  log_OutPublic((*v544)[4], "POSPARSER", 68000, 0);
LABEL_863:
  v15 = v543;
LABEL_662:
  for (i = 64; i != 1504; i += 72)
  {
    v361 = *&__dst[i];
    if (v361)
    {
      heap_Free(*(*v13 + 8), v361);
      *&__dst[i] = 0;
    }
  }

  if (v493)
  {
    heap_Free(*(*v13 + 8), v493);
  }

  if (v504)
  {
    heap_Free(*(*v13 + 8), v504);
  }

  v546 = *__c;
  if (v156 < 0)
  {
    v538 = v156;
    goto LABEL_846;
  }

LABEL_671:
  if (a5)
  {
    v362 = 0;
    do
    {
      v363 = a4 + 104 * v362;
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

      ++v362;
    }

    while (v362 != a5);
  }

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
          cstdlib_memmove(v374, (v14 + 32 * v375), 32 * (v15 - v375));
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

  v525 = a5;
  if (*(v13 + 62) == 1)
  {
    v376 = 32 * v15 + (a5 << 6) + 32;
  }

  else
  {
    v376 = 32 * (v15 + a5) + 32;
  }

  v377 = heap_Realloc(*(*v13 + 8), v14, v376);
  if (!v377)
  {
    LOWORD(v543) = v15;
    v538 = -1607458806;
    log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0);
    goto LABEL_846;
  }

  v378 = v377;
  __b[0] = v16;
  v379 = a5;
  v62 = v546;
  *__src = v546;
  *__dst = 0u;
  v556 = 0u;
  cstdlib_memset(__dst, 0, 0x20uLL);
  *__dst = 1;
  *__s2 = cstdlib_strlen(v16);
  *v537 = v378;
  if (!v379)
  {
    v543 = v15;
    v387 = v546;
    v453 = v16;
    goto LABEL_788;
  }

  v380 = 0;
  v381 = 0;
  v531 = 0;
  v533 = 0;
  v382 = a4;
  v518 = (v378 + 44);
  v517 = (v378 + 56);
  v383 = v379;
  while (2)
  {
    v543 = v15;
    *__dst = 1;
    v384 = v382 + 104 * v381;
    *&__dst[4] = *v384;
    v385 = *(v384 + 8);
    *&__dst[12] = *(v378 + 12) + v385;
    if (*(v384 + 12) != 1)
    {
      if (*(v384 + 72) == 9999)
      {
        v391 = *(v384 + 64);
        if (!v391)
        {
          v386 = posparserGrowStr(v13, __src, (*(v384 + 10) - v385), &v549, 0);
          v387 = *__src;
          if ((v386 & 0x80000000) == 0)
          {
            v388 = __b[0];
            cstdlib_strncpy(*__src, &__b[0][*(v384 + 8)], *(v384 + 10) - *(v384 + 8));
            v387[*(v384 + 10) - *(v384 + 8)] = 0;
            log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "PROCESSING word [%d] %d,%d %s", v380);
            goto LABEL_703;
          }

LABEL_843:
          v455 = v386;
          v81 = a9;
          v80 = v511;
          v82 = a10;
          goto LABEL_851;
        }

        v392 = cstdlib_strlen(v391);
        v386 = posparserGrowStr(v13, __src, v392, &v549, 0);
        v387 = *__src;
        if (v386 < 0)
        {
          goto LABEL_843;
        }

        cstdlib_strcpy(*__src, *(v384 + 64));
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "PROCESSING ngram word [%d] %d,%d %s", v380, *(v384 + 8), *(v384 + 10), v387);
        v389 = cstdlib_strlen(v387) - *(v384 + 10) + *(v384 + 8);
        posparser_undoEmbeddedRules(v13, v387);
        v390 = 1;
        v388 = __b[0];
        v393 = v381;
        v542 = v381;
      }

      else
      {
        v394 = cstdlib_strlen(*(v384 + 16));
        v386 = posparserGrowStr(v13, __src, v394, &v549, 0);
        v387 = *__src;
        if (v386 < 0)
        {
          goto LABEL_843;
        }

        cstdlib_strcpy(*__src, *(v384 + 16));
        v395 = *(a4 + 104 * *(v384 + 72) + 10);
        v388 = __b[0];
        if (cstdlib_strlen(__b[0]) < v395)
        {
          LODWORD(v395) = cstdlib_strlen(v388);
        }

        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "PROCESSING dict word [%d-%d] %d,%d %s", v380, *(v384 + 72), *(v384 + 8), v395, v387);
        v389 = cstdlib_strlen(v387) - v395 + *(v384 + 8);
        v393 = *(v384 + 72);
        v390 = 1;
        v542 = v393;
      }

      v531 = v381;
      v533 = v393;
      goto LABEL_713;
    }

    v386 = posparserGrowStr(v13, __src, (*(v384 + 10) - v385), &v549, 0);
    v387 = *__src;
    if (v386 < 0)
    {
      goto LABEL_843;
    }

    v388 = __b[0];
    cstdlib_strncpy(*__src, &__b[0][*(v384 + 8)], *(v384 + 10) - *(v384 + 8));
    v387[*(v384 + 10) - *(v384 + 8)] = 0;
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "PROCESSING VOWELLED word [%d] %d,%d %s", v380);
LABEL_703:
    v389 = 0;
    v390 = 0;
    v542 = v381;
LABEL_713:
    v396 = v13;
    v397 = v389 + cstdlib_strlen(v388);
    v398 = posparserGrowStr(v396, __b, v397, __s2, 64);
    v399 = v543;
    if (v398 < 0)
    {
      v455 = v398;
      v80 = v511;
      v13 = v544;
LABEL_850:
      v82 = a10;
      v81 = a9;
      goto LABEL_851;
    }

    if (v389 << 16)
    {
      v400 = a4 + 104 * v533;
      v403 = *(v400 + 10);
      v401 = (v400 + 10);
      v402 = v403;
      v404 = __b[0];
      v405 = cstdlib_strlen(__b[0]);
      v406 = *v401;
      if (v405 > v406)
      {
        cstdlib_memmove(&v404[*v401 + v389], &v404[*v401], v405 - v406);
      }

      v407 = a4 + 104 * v531;
      v409 = *(v407 + 8);
      v408 = (v407 + 8);
      v410 = cstdlib_strlen(v387);
      cstdlib_memcpy(&v404[v409], v387, v410);
      v404[v397] = 0;
      *v401 += v389;
      if (v383 > (v533 + 1))
      {
        v411 = (v533 + 1) + 1;
        v412 = (a4 + 10 + 104 * (v533 + 1));
        do
        {
          *(v412 - 1) += v389;
          *v412 += v389;
          v412 += 52;
        }

        while (v383 != v411++);
      }

      v399 = v543;
      v382 = a4;
      if (v543 >= 2u)
      {
        v414 = *(*v537 + 12);
        v415 = *v408;
        v416 = v543 - 1;
        v417 = v518;
        do
        {
          v418 = (*v417 - v414);
          if (v418 >= v415)
          {
            v419 = *v417 + v389;
            if (v418 < v402)
            {
              v419 = v414 + v415;
            }

            *v417 = v419;
          }

          v417 += 8;
          --v416;
        }

        while (v416);
      }
    }

    else
    {
      v382 = a4;
      if (v390)
      {
        v420 = __b[0];
        v421 = *(a4 + 104 * v531 + 8);
        v422 = cstdlib_strlen(v387);
        cstdlib_memcpy(&v420[v421], v387, v422);
        v382 = a4;
      }
    }

    LODWORD(v556) = 0;
    v423 = v382 + 104 * v542;
    v424 = *(v423 + 74);
    v378 = *v537;
    if (*(v423 + 74))
    {
      v425 = *v537 + 32 * v424;
      LODWORD(v424) = *(v425 + 12) - *&__dst[12];
      *(v425 + 12) = *&__dst[12];
    }

    if (*(v423 + 76))
    {
      v426 = *v537 + 32 * *(v423 + 76);
      *(v426 + 12) += v424;
    }

    if (*__dst != 1 || *&__dst[8])
    {
      if (v399 < 2u)
      {
        v428 = 0;
        LOWORD(v430) = 1;
      }

      else
      {
        v428 = 0;
        v429 = v517;
        v430 = 1;
        while (*&__dst[12] >= *(v429 - 3))
        {
          if (*(v429 - 6) == 21)
          {
            v428 = *v429;
          }

          ++v430;
          v429 += 4;
          if (v399 == v430)
          {
            LOWORD(v430) = v399;
            break;
          }
        }
      }

      v431 = (a4 + 76);
      v432 = v525;
      do
      {
        v433 = *(v431 - 1);
        if (v433 >= v430)
        {
          *(v431 - 1) = v433 + 1;
        }

        v434 = *v431;
        if (v434 >= v430)
        {
          *v431 = v434 + 1;
        }

        v431 += 52;
        --v432;
      }

      while (v432);
      cstdlib_memmove((*v537 + 32 * v430 + 32), (*v537 + 32 * v430), 32 * (v399 - v430));
      cstdlib_memcpy((*v537 + 32 * v430), __dst, 0x20uLL);
      v427 = (v399 + 1);
      v382 = a4;
      if (*__dst == 34)
      {
        v435 = v430 + 1;
        cstdlib_memmove((*v537 + 32 * v435 + 32), (*v537 + 32 * v435), 32 * ((v399 + 1) - v435));
        *__dst = 21;
        *&__dst[4] += 2;
        *&__dst[8] = 0;
        ++*&__dst[12];
        LODWORD(v556) = 0;
        v436 = "normal";
        if (v428)
        {
          v436 = v428;
        }

        *(&v556 + 1) = v436;
        cstdlib_memcpy((*v537 + 32 * v435), __dst, 0x20uLL);
        v437 = (a4 + 76);
        v438 = v525;
        do
        {
          v439 = *(v437 - 1);
          if (*(v437 - 1) && v439 >= v435)
          {
            *(v437 - 1) = v439 + 1;
          }

          v440 = *v437;
          if (*v437 && v440 >= v435)
          {
            *v437 = v440 + 1;
          }

          v437 += 52;
          --v438;
        }

        while (v438);
        v427 = (v399 + 2);
        v382 = a4;
      }
    }

    else
    {
      v427 = v399;
    }

    v13 = v544;
    if (*(v544 + 62) != 1)
    {
      v15 = v427;
      v16 = __s;
      goto LABEL_784;
    }

    v441 = *(v423 + 40);
    v16 = __s;
    if (!v441)
    {
      v15 = v427;
      goto LABEL_784;
    }

    *__dst = 58;
    *&__dst[4] = *v423;
    *&__dst[12] = *(*v537 + 12) + *(v423 + 8);
    v442 = (*v544)[1];
    v443 = cstdlib_strlen(v441);
    v444 = heap_Calloc(v442, 1, (v443 + 1));
    *(&v556 + 1) = v444;
    if (!v444)
    {
      v455 = -1607458806;
      log_OutPublic((*v544)[4], "POSPARSER", 68000, 0);
      LOWORD(v543) = v427;
      v80 = v511;
      goto LABEL_850;
    }

    cstdlib_strcpy(v444, *(v423 + 40));
    if (v427 <= 1u)
    {
      v445 = v427;
      LOWORD(v447) = 1;
    }

    else
    {
      v445 = v427;
      v446 = v518;
      v447 = 1;
      while (1)
      {
        v448 = *v446;
        v446 += 8;
        if (*&__dst[12] < v448)
        {
          break;
        }

        if (v427 == ++v447)
        {
          LOWORD(v447) = v427;
          break;
        }
      }
    }

    cstdlib_memmove((*v537 + 32 * v447 + 32), (*v537 + 32 * v447), 32 * (v445 - v447));
    cstdlib_memcpy((*v537 + 32 * v447), __dst, 0x20uLL);
    v449 = (a4 + 76);
    v450 = v525;
    v382 = a4;
    do
    {
      v451 = *(v449 - 1);
      if (v451 >= v447)
      {
        *(v449 - 1) = v451 + 1;
      }

      v452 = *v449;
      if (v452 >= v447)
      {
        *v449 = v452 + 1;
      }

      v449 += 52;
      --v450;
    }

    while (v450);
    v15 = (v427 + 1);
LABEL_784:
    v381 = v542 + 1;
    v380 = (v542 + 1);
    if (v380 < v383)
    {
      continue;
    }

    break;
  }

  v543 = v15;
  v453 = __b[0];
  v62 = v546;
LABEL_788:
  v454 = cstdlib_strlen(v453);
  v455 = 0;
  *(*v537 + 16) = v454;
  v81 = a9;
  v80 = v511;
  v82 = a10;
  if (*(v13 + 62) != 1 || v543 < 2u)
  {
LABEL_851:
    v16 = __b[0];
    v62 = v387;
    goto LABEL_852;
  }

  v456 = 0;
  v457 = (*v537 + 88);
  v458 = 2;
  v459 = 1;
  while (2)
  {
    v460 = (*v537 + 32 * v459);
    if (*v460 == 59 && v460[6] == 5)
    {
      if (v459 + 1 >= v543)
      {
        goto LABEL_803;
      }

      v461 = v457;
      v462 = v458;
      while (*(v461 - 6) != 59 || *v461 != 5)
      {
        ++v462;
        v461 += 8;
        if (v543 == v462)
        {
          goto LABEL_803;
        }
      }

      v463 = (*v537 + 32 * v462);
      if (*v463 != 59 || v463[6] != 5)
      {
LABEL_803:
        v465 = *(*v537 + 12) + v454;
        v464 = v460[3];
        goto LABEL_804;
      }

      v464 = v460[3];
      v465 = v463[3];
      if (v460[4] + v464 < v465)
      {
LABEL_804:
        v460[4] = v465 - v464;
      }

      v456 = 1;
    }

    ++v459;
    ++v458;
    v457 += 8;
    if (v459 != v543)
    {
      continue;
    }

    break;
  }

  v466 = v543 - 1;
  v467 = (*v537 + 44);
  do
  {
    if (*(v467 - 3) == 59)
    {
      *v467 -= *(*v537 + 12);
    }

    v467 += 8;
    --v466;
  }

  while (v466);
  if (v456 != 1)
  {
    v455 = 0;
    goto LABEL_851;
  }

  LOWORD(v551) = 0;
  LOWORD(__c[0]) = 0;
  memset(v552, 0, sizeof(v552));
  *__s1 = 0;
  v455 = (*(*(v13 + 4) + 104))(a2, a3, 3, a7, &v551);
  if (v455 < 0)
  {
    goto LABEL_852;
  }

  v468 = v551;
  if (!v551)
  {
LABEL_835:
    v481 = 1;
    v482 = 1;
    do
    {
      v483 = (*v537 + 32 * v482);
      if (*v483 == 59)
      {
        v484 = (v481 + 1);
        if (v543 > v484)
        {
          cstdlib_memmove(v483, (*v537 + 32 * v484), 32 * (v543 - v484));
        }

        v485 = (v543 - 1);
      }

      else
      {
        ++v482;
        v485 = v543;
      }

      v481 = v482;
      v543 = v485;
    }

    while (v482 < v485);
    goto LABEL_851;
  }

  LOWORD(v469) = 1;
  while (1)
  {
    v470 = (*(*(v13 + 4) + 168))(a2, a3, v468, 1, 1, __c, &v552[1]);
    if (v470 < 0 || (v470 = (*(*(v13 + 4) + 168))(a2, a3, v551, 2, 1, &v552[2], &v552[1]), v470 < 0))
    {
      v62 = v546;
LABEL_857:
      v455 = v470;
      goto LABEL_852;
    }

    v471 = (*(*(v13 + 4) + 168))(a2, a3, v551, 0, 1, __s1, &v552[1]);
    if (v471 < 0)
    {
      break;
    }

    v62 = v546;
    if (v469 >= v543)
    {
      v475 = a2;
      v474 = a3;
      v472 = *v537;
    }

    else
    {
      v469 = v469;
      v472 = *v537;
      v473 = (*v537 + 32 * v469);
      v475 = a2;
      v474 = a3;
      while (1)
      {
        v476 = *v473;
        v473 += 8;
        if (v476 == 59)
        {
          break;
        }

        if (v543 == ++v469)
        {
          LOWORD(v469) = v543;
          break;
        }
      }
    }

    v477 = (v472 + 32 * v469);
    if (*v477 == 59)
    {
      v478 = LOWORD(__c[0]);
      if (v477[1] == LOWORD(__c[0]))
      {
        v479 = v552[2];
        if (v477[2] == v552[2])
        {
          if (v477[3] != LOWORD(__c[0]))
          {
            LOWORD(__c[0]) = v477[3];
            v470 = (*(*(v13 + 4) + 160))(v475, v474, v551, 1, 1, __c, v552);
            if (v470 < 0)
            {
              goto LABEL_857;
            }

            v479 = v552[2];
            v478 = v477[3];
            v475 = a2;
            v474 = a3;
          }

          v480 = v477[4] + v478;
          if (v480 != v479)
          {
            v552[2] = v480;
            v470 = (*(*(v13 + 4) + 160))(v475, v474, v551, 2, 1, &v552[2], v552);
            v475 = a2;
            v474 = a3;
            if (v470 < 0)
            {
              goto LABEL_857;
            }
          }
        }
      }
    }

    v455 = (*(*(v13 + 4) + 120))(v475, v474, v551, &v551);
    if (v455 < 0)
    {
      goto LABEL_852;
    }

    LOWORD(v469) = v469 + 1;
    v468 = v551;
    if (!v551)
    {
      goto LABEL_835;
    }
  }

  v455 = v471;
  v62 = v546;
LABEL_852:
  v538 = v455;
  v14 = *v537;
LABEL_853:
  *v82 = v543;
  *v80 = v16;
  *v81 = v14;
  if (v62)
  {
LABEL_854:
    heap_Free(*(*v13 + 8), v62);
  }

  return v538;
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
    v25 = a2;
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
    v25 = a2;
    v17 = *a8;
  }

  v24 = v16;
  cstdlib_memmove((v15 + a5 + v16), (v15 + a5), (v17 - a5));
  if (v11 < a7)
  {
    v11 = v11;
    do
    {
      if (cstdlib_strlen((a1[25] + 6 * v11 + 2)))
      {
        v20 = 0;
        v21 = 0;
        do
        {
          *(v15 + a5++) = *(a1[25] + 6 * v11 + v20 + 2);
          v20 = ++v21;
        }

        while (cstdlib_strlen((a1[25] + 6 * v11 + 2)) > v21);
      }

      ++v11;
    }

    while (v11 != a7);
  }

  result = 0;
  v23 = *a8 + v24;
  *a8 = v23;
  *(v15 + v23) = 0;
  *v25 = v15;
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
  result = cstdlib_strlen(__s);
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
  cstdlib_strcpy(__dst, __src);
  v8 = &__dst[a4];
  v9 = cstdlib_strlen(a3);
  cstdlib_strncpy(v8, a3, v9);
  v10 = &v8[cstdlib_strlen(a3)];

  return cstdlib_strcpy(v10, &__src[a4 + 1]);
}

const char *getPunctClassChar(void *a1, int __c)
{
  v4 = a1[16];
  if (!v4)
  {
    v4 = ".!?";
  }

  if (cstdlib_strchr(v4, __c))
  {
    return "Γ";
  }

  v6 = a1[17];
  if (!v6)
  {
    v6 = ",:;";
  }

  if (cstdlib_strchr(v6, __c))
  {
    return "Θ";
  }

  if (a1[18])
  {
    v7 = a1[18];
  }

  else
  {
    v7 = &puncClass3;
  }

  cstdlib_strchr(v7, __c);
  return "Ω";
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

void *qrk_free(void *result, uint64_t a2, int a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = result;
    v6 = *a2;
    if (*a2 && *(a2 + 20))
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v46 = 0;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = 1;
      v14 = v6;
      do
      {
        v8 = v7 - 1;
        v9 = *(&v14 + v7 - 1);
        if (v9)
        {
          if (!a3)
          {
            v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
            heap_Free(v5[1], *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
            v11 = v5[1];
            v9 = v12;
            goto LABEL_10;
          }
        }

        else
        {
          v10 = *(v9 + 8);
          *(&v14 + v8) = *v9;
          v8 = v7 + 1;
          *(&v14 + v7) = v10;
          if (!a3)
          {
            v11 = v5[1];
LABEL_10:
            heap_Free(v11, v9);
          }
        }

        v7 = v8;
      }

      while (v8);
    }

    if (a3)
    {
      heap_Free(v5[1], *a2);
      heap_Free(v5[1], **(a2 + 8));
    }

    heap_Free(v5[1], *(a2 + 8));
    v13 = v5[1];

    return heap_Free(v13, a2);
  }

  return result;
}

uint64_t qrk_str2id(uint64_t a1, uint64_t *a2, char *__s, unsigned int *a4, unsigned int a5)
{
  if (!a5)
  {
    a5 = cstdlib_strlen(__s);
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
          cstdlib_memcpy(v28, __s, (v9 + 1));
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
        cstdlib_memcpy(v19, __s, (v9 + 1));
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
    *(v4 + 16) = xmmword_26ECDBC70;
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

uint64_t qp_id2str(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 20) <= a3)
  {
    wapiti_fatal(*(a1 + 32), "invalid identifier");
  }

  return *(*(*(a2 + 8) + 8 * a3) + 8);
}

uint64_t qp_lock(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  return v2;
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
    v5 = cstdlib_strlen(__s);
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
            cstdlib_memcpy(v30, __s, v5 + 1);
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

  v88 = v34;
  v35 = heap_Alloc(*(a1 + 8), v5 + 1);
  *(v33 + 8) = v35;
  if (!v35)
  {
    goto LABEL_41;
  }

  cstdlib_memcpy(v35, __s, v5 + 1);
  *(*(v33 + 8) + v5) = 0;
  v36 = *(a2 + 20);
  *(a2 + 20) = v36 + 1;
  *v33 = v36;
  *a4 = v36;
  v37 = *v33;
  if (*v33 != *(a2 + 24))
  {
    v39 = *(a2 + 8);
    v41 = v88;
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
  v41 = v88;
LABEL_44:
  *(v39 + 8 * v37) = v33;
  if (v40)
  {
    v44 = cstdlib_strlen(*(v19 + 8));
    v45 = __s[v21];
    if (v44 <= v21)
    {
      v47 = 1;
      v48 = 1 << (__s[v21] >> 4);
      v46 = *(*(v19 + 8) + v21);
    }

    else
    {
      v46 = *(*(v19 + 8) + v21);
      if ((v46 ^ v45) >= 0x10)
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }

      v48 = 1 << ((((v47 + 254) ^ 0xF) & v45) >> (8 - 4 * v47));
    }

    v41 = v88;
  }

  else
  {
    v46 = *(*(v19 + 8) + v21);
    v48 = 1;
    v47 = 1;
  }

  v49 = v33 | 1;
  *v41 = v33 | 1;
  v50 = *a2;
  v41[2] = 0;
  if (v50)
  {
    v87 = 0;
LABEL_76:
    v60 = 0;
    v41[1] = v50;
    v61 = 1;
    do
    {
      v62 = *(a1 + 8);
      if (v61)
      {
        v60 = heap_Calloc(v62, 1, 16);
        if (!v60)
        {
          return v26;
        }
      }

      else
      {
        heap_Free(v62, v60);
        v60 = 0;
      }

      v61 = v60 == 0;
    }

    while (!v60 || (v60 & 1) != 0);
    v63 = v88[2];
    v64 = 1 << ((((v47 + 254) ^ 0xF) & v46) >> (8 - 4 * v47));
    if (!v46)
    {
      v64 = 1;
    }

    v65 = ((v47 << 16) - 0x10000) | v48;
    *(v60 + 8) = v64 | v65;
    *(v60 + 12) = v21;
    v66 = v48 - 1;
    v67 = ((((v64 | v65) & v66) >> 1) & 0x5555) + ((v64 | v65) & v66 & 0x5555);
    v68 = (((((v67 >> 2) & 0x33333333) + (v67 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v67 >> 2) & 0x33333333) + (v67 & 0x33333333)) & 0xF0F0F0F);
    v69 = (v68 & 0xF) + (v68 >> 8) + 1;
    v70 = v64 - 1;
    v71 = (((v70 & v65) >> 1) & 0x5555) + (v70 & v65 & 0x5555);
    v72 = (((((v71 >> 2) & 0x33333333) + (v71 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v71 >> 2) & 0x33333333) + (v71 & 0x33333333)) & 0xF0F0F0F);
    v73 = (v72 & 0xF) + (v72 >> 8);
    if (v69 <= v73 + 1)
    {
      v74 = v73 + 1;
    }

    else
    {
      v74 = v69;
    }

    if (v74 <= 2)
    {
      v75 = 2;
    }

    else
    {
      v75 = v74;
    }

    v76 = heap_Calloc(*(a1 + 8), v75, 8);
    v43 = v88;
    *v60 = v76;
    if (v76)
    {
      v26 = 0;
      v77 = *(v60 + 8);
      v78 = (((v77 & v66) >> 1) & 0x5555) + (v77 & v66 & 0x5555);
      v79 = (((((v78 >> 2) & 0x33333333) + (v78 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v78 >> 2) & 0x33333333) + (v78 & 0x33333333)) & 0xF0F0F0F);
      *(v76 + 8 * ((v79 & 0xF) + (v79 >> 8))) = *v88;
      v80 = (((v77 & v70) >> 1) & 0x5555) + (v77 & v70 & 0x5555);
      v81 = (((((v80 >> 2) & 0x33333333) + (v80 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v80 >> 2) & 0x33333333) + (v80 & 0x33333333)) & 0xF0F0F0F);
      *(*v60 + 8 * ((v81 & 0xF) + (v81 >> 8))) = v88[1];
      v82 = (v63 + 8 * v87);
      if (!v63)
      {
        v82 = a2;
      }

      *v82 = v60;
    }

    goto LABEL_95;
  }

  v51 = 0;
  while (1)
  {
    v52 = *(v50 + 12);
    if (v52 >= v5)
    {
      v54 = 1;
    }

    else
    {
      v53 = (*(v50 + 10) & 1) != 0 ? 2 : 1;
      v54 = 1 << ((((v53 + 254) ^ 0xF) & __s[v52]) >> (8 - 4 * v53));
    }

    if (v52 == v21)
    {
      break;
    }

    if (v52 > v21)
    {
      goto LABEL_74;
    }

    v55 = *(v50 + 8);
LABEL_70:
    v57 = *v50;
    v41[2] = *v50;
    if ((v54 & v55) != 0)
    {
      v58 = (((v55 & (v54 - 1)) >> 1) & 0x5555) + (v55 & (v54 - 1) & 0x5555);
      v59 = (((((v58 >> 2) & 0x33333333) + (v58 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v58 >> 2) & 0x33333333) + (v58 & 0x33333333)) & 0xF0F0F0F);
      v51 = (v59 & 0xF) + (v59 >> 8);
    }

    else
    {
      v51 = 0;
    }

    v50 = *(v57 + 8 * v51);
    if (v50)
    {
LABEL_74:
      v87 = v51;
      goto LABEL_76;
    }
  }

  v55 = *(v50 + 8);
  if ((v55 & 0x10000) != 0)
  {
    v56 = 2;
  }

  else
  {
    v56 = 1;
  }

  if (v47 != v56)
  {
    if (v47 < v56)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

  v89 = 0;
  __src = v49;
  twigoffmax(&v89 + 1, &v89, v50, v48);
  v83 = v89;
  v84 = heap_Realloc(*(a1 + 8), *v50, 8 * (v89 + 1));
  if (v84)
  {
    v85 = v84;
    v86 = v84 + 8 * HIDWORD(v89);
    cstdlib_memmove((v86 + 8), v86, 8 * (v83 - HIDWORD(v89)));
    cstdlib_memmove(v86, &__src, 8uLL);
    v26 = 0;
    *v50 = v85;
    *(v50 + 8) |= v48;
  }

LABEL_42:
  v43 = v88;
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

void *rdr_free(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (*(a1 + 24))
    {
      v6 = 0;
      do
      {
        pat_free(v4, *(*(a1 + 32) + 8 * v6++));
      }

      while (v6 < *(a1 + 24));
      v5 = *(a1 + 32);
    }

    heap_Free(*(v4 + 8), v5);
  }

  qrk_free(v4, *(a1 + 40), a2);
  qrk_free(v4, *(a1 + 48), a2);
  wapiti_rules_unload(v4, *(a1 + 56));
  v7 = *(v4 + 8);

  return heap_Free(v7, a1);
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
  if (!v9)
  {
    goto LABEL_34;
  }

  v10 = heap_Calloc(*(v7 + 8), a3, 8);
  *(v9 + 8) = v10;
  if (!v10)
  {
    goto LABEL_33;
  }

  if (!a3)
  {
    v16 = v10;
    v4 = 0;
    goto LABEL_21;
  }

  v11 = 0;
  while (1)
  {
    v12 = a2[v11];
    if (!v12)
    {
      if (!v11)
      {
        v4 = 0;
        goto LABEL_27;
      }

LABEL_23:
      v17 = heap_Realloc(*(v7 + 8), *(v9 + 8), 8 * v11);
      *(v9 + 8) = v17;
      if (!v17)
      {
        goto LABEL_33;
      }

      v4 = 0;
      *v9 = v11;
      goto LABEL_34;
    }

    v13 = cstdlib_strlen(a2[v11]);
    if (v13)
    {
      break;
    }

LABEL_16:
    if (++v11 == a3)
    {
      v11 = a3;
      goto LABEL_23;
    }
  }

  v14 = v13;
  while (cstdlib_isspace(v12[v14 - 1]))
  {
    if (!--v14)
    {
      goto LABEL_16;
    }
  }

  *(*(v9 + 8) + 8 * v11) = heap_Calloc(*(v7 + 8), 1, (v14 + 1));
  v15 = *(*(v9 + 8) + 8 * v11);
  if (v15)
  {
    cstdlib_strncpy(v15, v12, v14);
    goto LABEL_16;
  }

  if (v11)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (!*(v9 + 8))
  {
    goto LABEL_33;
  }

  v18 = 0;
  do
  {
    v19 = *(*(v9 + 8) + 8 * v18);
    if (v19)
    {
      heap_Free(*(v7 + 8), v19);
    }

    ++v18;
  }

  while (a3 != v18);
  v16 = *(v9 + 8);
LABEL_21:
  heap_Free(*(v7 + 8), v16);
LABEL_33:
  heap_Free(*(v7 + 8), v9);
  v9 = 0;
LABEL_34:
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
  v8 = *a2;
  v9 = *a1;
  *a4 = 0;
  v10 = heap_Alloc(*(v9 + 8), 8 * v8 + 32);
  if (!v10)
  {
    v37 = 0;
    goto LABEL_131;
  }

  v11 = v10;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v12 = (v10 + 8);
  v13 = heap_Calloc(*(v9 + 8), v8, 4);
  v12[1] = v13;
  if (!v13)
  {
    v37 = 0;
    goto LABEL_128;
  }

  *v12 = 0;
  if (a3 == 1)
  {
    v14 = heap_Calloc(*(v9 + 8), v8, 8);
    *v12 = v14;
    if (!v14)
    {
LABEL_67:
      v37 = 0;
      goto LABEL_119;
    }
  }

  v86 = v5;
  v87 = v12;
  if (v8)
  {
    v15 = 0;
    while (1)
    {
      v16 = *(*(a2 + 1) + 8 * v15);
      if (!v16)
      {
        break;
      }

      v17 = (v16 - 1);
      do
      {
        v18 = *++v17;
      }

      while (cstdlib_isspace(v18));
      v19 = cstdlib_strlen(v17) + 1;
      v20 = heap_Alloc(*(v9 + 8), v19);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      cstdlib_memcpy(v20, v17, v19);
      v22 = *(v9 + 8);
      v23 = cstdlib_strlen(v21);
      v24 = heap_Alloc(v22, 8 * ((v23 >> 1) + 1));
      if (!v24)
      {
        break;
      }

      v25 = v24;
      if (*v21)
      {
        v26 = 0;
LABEL_15:
        v25[v26++] = v21;
        v27 = *v21;
        if (*v21)
        {
          while (!cstdlib_isspace(v27))
          {
            v28 = *++v21;
            v27 = v28;
            if (!v28)
            {
              goto LABEL_26;
            }
          }

          if (*v21)
          {
            *v21 = 0;
            while (1)
            {
              v30 = *++v21;
              v29 = v30;
              if (!v30)
              {
                break;
              }

              if (!cstdlib_isspace(v29))
              {
                if (*v21)
                {
                  goto LABEL_15;
                }

                break;
              }
            }
          }
        }
      }

      else
      {
        v26 = 0;
      }

LABEL_26:
      v31 = heap_Alloc(*(v9 + 8), 8 * v26);
      *&v11[2 * v15 + 6] = v31;
      if (!v31)
      {
        break;
      }

      *(*(v11 + 2) + 4 * v15) = v26;
      cstdlib_memcpy(v31, v25, 8 * v26);
      heap_Free(*(v9 + 8), v25);
      if (++v15 == v8)
      {
        goto LABEL_28;
      }
    }

LABEL_117:
    v37 = 0;
    goto LABEL_118;
  }

LABEL_28:
  *v11 = v8;
  v32 = a1;
  v33 = a1[7];
  if (v33)
  {
    v34 = wapiti_rules_apply(v9, v33, v11);
    v32 = a1;
    if ((v34 & 0x80000000) != 0)
    {
      v37 = 0;
LABEL_65:
      v4 = v34;
      goto LABEL_118;
    }
  }

  v35 = *v32;
  v36 = *v11;
  v85 = v36;
  if (!*(v32 + 6))
  {
    if (*(v32 + 2))
    {
      v59 = **(v11 + 2);
    }

    else if (v36)
    {
      v60 = 0;
      v59 = 0;
      v61 = *(v11 + 2);
      do
      {
        if (*(v61 + 4 * v60))
        {
          v62 = 0;
          do
          {
            v63 = **(*&v11[2 * v60 + 6] + 8 * v62);
            if (v63 == 42)
            {
              v59 += 2;
            }

            else if (v63 == 98 || v63 == 117)
            {
              ++v59;
            }

            else
            {
              wapiti_fatal(*(v35 + 32), "invalid feature: %s", *(*&v11[2 * v60 + 6] + 8 * v62));
              v61 = *(v11 + 2);
            }

            ++v62;
          }

          while (v62 < *(v61 + 4 * v60));
        }

        ++v60;
        v36 = v85;
      }

      while (v60 != v85);
    }

    else
    {
      v59 = 0;
    }

    v37 = heap_Alloc(*(v35 + 8), 32 * v36 + 56);
    if (v37)
    {
      v64 = heap_Alloc(*(v35 + 8), 4 * v59);
      *(v37 + 8) = v64;
      v12 = v87;
      if (!v64)
      {
        v37 = 0;
        goto LABEL_111;
      }

      *v37 = v36;
      *(v37 + 16) = 0;
      if (!v36)
      {
        v4 = 0;
        goto LABEL_111;
      }

      v65 = v64;
      v66 = 0;
      v4 = 0;
      v67 = v37 + 24;
      v84 = v11 + 6;
      v68 = *(v11 + 2);
      v69 = a1;
      do
      {
        v70 = v67 + 32 * v66;
        *v70 = 0xFFFFFFFFLL;
        *(v70 + 16) = v65;
        if (*(v68 + 4 * v66))
        {
          v71 = 0;
          do
          {
            LODWORD(__s) = 0;
            v72 = *(*&v84[2 * v66] + 8 * v71);
            if (*(v69 + 2) || *v72 != 98)
            {
              v4 = rdr_mapobs(v69, v72, &__s);
              if ((v4 & 0x80000000) != 0)
              {
                goto LABEL_117;
              }

              if (__s != -1)
              {
                *v65++ = __s;
                ++*(v70 + 4);
              }

              v69 = a1;
            }

            ++v71;
            v68 = *(v11 + 2);
          }

          while (v71 < *(v68 + 4 * v66));
          v12 = v87;
        }

        *(v70 + 8) = 0;
        if (!*(v69 + 2))
        {
          *(v70 + 24) = v65;
          if (*(v68 + 4 * v66))
          {
            v73 = 0;
            do
            {
              LODWORD(__s) = 0;
              v74 = *(*&v84[2 * v66] + 8 * v73);
              if (*v74 != 117)
              {
                v4 = rdr_mapobs(v69, v74, &__s);
                if ((v4 & 0x80000000) != 0)
                {
                  goto LABEL_117;
                }

                if (__s != -1)
                {
                  *v65++ = __s;
                  ++*(v70 + 8);
                }

                v69 = a1;
              }

              ++v73;
              v68 = *(v11 + 2);
            }

            while (v73 < *(v68 + 4 * v66));
            v12 = v87;
          }
        }

        ++v66;
        v67 = v37 + 24;
      }

      while (v66 != v85);
      if (!*v12)
      {
        goto LABEL_111;
      }

      v75 = 0;
      do
      {
        v76 = *(*v87 + v75);
        LODWORD(__s) = 0;
        v4 = qrk_str2id(v35, v69[5], v76, &__s, 0);
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_117;
        }

        *(v37 + 4 * v75 + 24) = __s;
        v75 += 8;
        v69 = a1;
      }

      while (8 * v85 != v75);
    }

LABEL_118:
    v5 = v86;
    v12 = v87;
    goto LABEL_119;
  }

  v37 = heap_Alloc(*(v35 + 8), 32 * v36 + 56);
  if (!v37)
  {
    goto LABEL_118;
  }

  v38 = heap_Alloc(*(v35 + 8), 4 * v36 * (*(a1 + 4) + *(a1 + 3)));
  *(v37 + 8) = v38;
  v5 = v86;
  if (!v38)
  {
    heap_Free(*(v35 + 8), v37);
    goto LABEL_67;
  }

  *v37 = v36;
  *(v37 + 16) = 0;
  if (!v36)
  {
    v4 = 0;
    goto LABEL_119;
  }

  v39 = v37 + 24;
  v40 = (v37 + 48);
  v41 = 4 * *(a1 + 3);
  v42 = v41 + 4 * *(a1 + 4);
  v43 = v36;
  do
  {
    *(v40 - 6) = -1;
    *(v40 - 1) = v38;
    *v40 = v38 + v41;
    v40 += 4;
    v38 += v42;
    --v43;
  }

  while (v43);
  v44 = 0;
  v4 = 0;
  v45 = a1;
  LODWORD(v46) = *(a1 + 6);
  do
  {
    v47 = v39 + 32 * v44;
    *(v47 + 4) = 0;
    *(v47 + 8) = 0;
    if (v46)
    {
      v48 = 0;
      while (1)
      {
        __s = 0;
        v89 = 0;
        v34 = pat_exec(v35, *(v45[4] + 8 * v48), v11, v44, &__s);
        if ((v34 & 0x80000000) != 0)
        {
          goto LABEL_65;
        }

        v4 = rdr_mapobs(v45, __s, &v89);
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_118;
        }

        v49 = v89;
        if (v89 != -1)
        {
          break;
        }

        v54 = *(v35 + 8);
        v50 = __s;
LABEL_51:
        heap_Free(v54, v50);
        ++v48;
        v45 = a1;
        v46 = *(a1 + 6);
        if (v48 >= v46)
        {
          v12 = v87;
          v39 = v37 + 24;
          goto LABEL_53;
        }
      }

      v50 = __s;
      v51 = *__s;
      switch(v51)
      {
        case '*':
          v55 = *(v47 + 16);
          v56 = *(v47 + 4);
          *(v47 + 4) = v56 + 1;
          *(v55 + 4 * v56) = v49;
          v49 = v89;
          break;
        case 'b':
          break;
        case 'u':
          v52 = *(v47 + 16);
          v53 = *(v47 + 4);
          *(v47 + 4) = v53 + 1;
LABEL_49:
          *(v52 + 4 * v53) = v49;
          goto LABEL_50;
        default:
LABEL_50:
          v54 = *(v35 + 8);
          goto LABEL_51;
      }

      v52 = *(v47 + 24);
      v53 = *(v47 + 8);
      *(v47 + 8) = v53 + 1;
      goto LABEL_49;
    }

LABEL_53:
    ++v44;
  }

  while (v44 != v85);
  if (*v12)
  {
    v57 = 0;
    do
    {
      v58 = *(*v87 + v57);
      LODWORD(__s) = 0;
      v4 = qrk_str2id(v35, v45[5], v58, &__s, 0);
      if ((v4 & 0x80000000) != 0)
      {
        break;
      }

      *(v37 + 4 * v57 + 24) = __s;
      v57 += 8;
      v45 = a1;
    }

    while (8 * v85 != v57);
    goto LABEL_118;
  }

LABEL_111:
  v5 = v86;
LABEL_119:
  v77 = *(v11 + 2);
  if (v77)
  {
    if (v8)
    {
      v78 = v12;
      v79 = v5;
      v80 = 0;
      v81 = v11 + 6;
      do
      {
        if (*(*(v11 + 2) + 4 * v80))
        {
          v82 = *&v81[2 * v80];
          if (v82)
          {
            heap_Free(*(v9 + 8), *v82);
            heap_Free(*(v9 + 8), *&v81[2 * v80]);
          }
        }

        ++v80;
      }

      while (v8 != v80);
      v77 = *(v11 + 2);
      v5 = v79;
      v12 = v78;
    }

    heap_Free(*(v9 + 8), v77);
  }

LABEL_128:
  if (*v12)
  {
    heap_Free(*(v9 + 8), *v12);
  }

  heap_Free(*(v9 + 8), v11);
LABEL_131:
  *v5 = v37;
  return v4;
}

uint64_t rdr_readraw_qp(uint64_t *a1, void *a2, unsigned int a3, uint64_t *a4)
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
  if (!v9)
  {
    goto LABEL_34;
  }

  v10 = heap_Calloc(*(v7 + 8), a3, 8);
  *(v9 + 8) = v10;
  if (!v10)
  {
    goto LABEL_33;
  }

  if (!a3)
  {
    v16 = v10;
    v4 = 0;
    goto LABEL_21;
  }

  v11 = 0;
  while (1)
  {
    v12 = a2[v11];
    if (!v12)
    {
      if (!v11)
      {
        v4 = 0;
        goto LABEL_27;
      }

LABEL_23:
      v17 = heap_Realloc(*(v7 + 8), *(v9 + 8), 8 * v11);
      *(v9 + 8) = v17;
      if (!v17)
      {
        goto LABEL_33;
      }

      v4 = 0;
      *v9 = v11;
      goto LABEL_34;
    }

    v13 = cstdlib_strlen(a2[v11]);
    if (v13)
    {
      break;
    }

LABEL_16:
    if (++v11 == a3)
    {
      v11 = a3;
      goto LABEL_23;
    }
  }

  v14 = v13;
  while (cstdlib_isspace(v12[v14 - 1]))
  {
    if (!--v14)
    {
      goto LABEL_16;
    }
  }

  *(*(v9 + 8) + 8 * v11) = heap_Calloc(*(v7 + 8), 1, (v14 + 1));
  v15 = *(*(v9 + 8) + 8 * v11);
  if (v15)
  {
    cstdlib_strncpy(v15, v12, v14);
    goto LABEL_16;
  }

  if (v11)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (!*(v9 + 8))
  {
    goto LABEL_33;
  }

  v18 = 0;
  do
  {
    v19 = *(*(v9 + 8) + 8 * v18);
    if (v19)
    {
      heap_Free(*(v7 + 8), v19);
    }

    ++v18;
  }

  while (a3 != v18);
  v16 = *(v9 + 8);
LABEL_21:
  heap_Free(*(v7 + 8), v16);
LABEL_33:
  heap_Free(*(v7 + 8), v9);
  v9 = 0;
LABEL_34:
  *a4 = v9;
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
    v38 = 0;
LABEL_118:
    *v5 = v38;
    return v4;
  }

  v12 = v11;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v13 = (v11 + 8);
  v14 = heap_Calloc(*(v10 + 8), v9, 4);
  v13[1] = v14;
  if (!v14)
  {
    v38 = 0;
LABEL_115:
    if (*v13)
    {
      heap_Free(*(v10 + 8), *v13);
    }

    heap_Free(*(v10 + 8), v12);
    goto LABEL_118;
  }

  *v13 = 0;
  v92 = v9;
  if (a3 == 1)
  {
    v15 = heap_Calloc(*(v10 + 8), v9, 8);
    *v13 = v15;
    if (!v15)
    {
      v38 = 0;
      goto LABEL_106;
    }
  }

  v89 = v13;
  if (v9)
  {
    v16 = 0;
    do
    {
      v17 = *(*(a2 + 1) + 8 * v16);
      if (!v17)
      {
        break;
      }

      v18 = (v17 - 1);
      do
      {
        v19 = *++v18;
      }

      while (cstdlib_isspace(v19));
      v20 = cstdlib_strlen(v18) + 1;
      v21 = heap_Alloc(*(v10 + 8), v20);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      cstdlib_memcpy(v21, v18, v20);
      v23 = *(v10 + 8);
      v24 = cstdlib_strlen(v22);
      v25 = heap_Alloc(v23, 8 * ((v24 >> 1) + 1));
      if (!v25)
      {
        break;
      }

      v26 = v25;
      if (*v22)
      {
        v27 = 0;
LABEL_15:
        v26[v27++] = v22;
        v28 = *v22;
        if (*v22)
        {
          while (!cstdlib_isspace(v28))
          {
            v29 = *++v22;
            v28 = v29;
            if (!v29)
            {
              goto LABEL_26;
            }
          }

          if (*v22)
          {
            *v22 = 0;
            while (1)
            {
              v31 = *++v22;
              v30 = v31;
              if (!v31)
              {
                break;
              }

              if (!cstdlib_isspace(v30))
              {
                if (*v22)
                {
                  goto LABEL_15;
                }

                break;
              }
            }
          }
        }
      }

      else
      {
        v27 = 0;
      }

LABEL_26:
      v32 = heap_Alloc(*(v10 + 8), 8 * v27);
      *&v12[2 * v16 + 6] = v32;
      if (!v32)
      {
        break;
      }

      *(*(v12 + 2) + 4 * v16) = v27;
      cstdlib_memcpy(v32, v26, 8 * v27);
      heap_Free(*(v10 + 8), v26);
      ++v16;
    }

    while (v16 != v92);
  }

  *v12 = v92;
  v33 = *(a1 + 56);
  if (v33)
  {
    v34 = wapiti_rules_apply(v10, v33, v12);
    if ((v34 & 0x80000000) != 0)
    {
      v38 = 0;
      v4 = v34;
LABEL_105:
      v13 = v89;
LABEL_106:
      v77 = *(v12 + 2);
      if (v77)
      {
        if (v92)
        {
          v78 = v5;
          v79 = 0;
          v80 = v12 + 6;
          do
          {
            if (*(*(v12 + 2) + 4 * v79))
            {
              v81 = *&v80[2 * v79];
              if (v81)
              {
                heap_Free(*(v10 + 8), *v81);
                heap_Free(*(v10 + 8), *&v80[2 * v79]);
              }
            }

            ++v79;
          }

          while (v92 != v79);
          v77 = *(v12 + 2);
          v5 = v78;
        }

        heap_Free(*(v10 + 8), v77);
      }

      goto LABEL_115;
    }
  }

  v35 = *a1;
  v36 = *v12;
  if (!*(a1 + 24))
  {
    v88 = v5;
    v91 = *v12;
    if (*(a1 + 8))
    {
      LODWORD(v36) = **(v12 + 2);
    }

    else if (v36)
    {
      v61 = 0;
      LODWORD(v36) = 0;
      v62 = *(v12 + 2);
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
              LODWORD(v36) = v36 + 2;
            }

            else if (v64 == 98 || v64 == 117)
            {
              LODWORD(v36) = v36 + 1;
            }

            else
            {
              wapiti_fatal(*(v35 + 32), "invalid feature: %s", *(*&v12[2 * v61 + 6] + 8 * v63));
              v62 = *(v12 + 2);
            }

            ++v63;
          }

          while (v63 < *(v62 + 4 * v61));
        }

        ++v61;
      }

      while (v61 != v91);
    }

    v65 = heap_Alloc(*(v35 + 8), 32 * v91 + 56);
    if (!v65)
    {
      return v4;
    }

    v38 = v65;
    v66 = heap_Alloc(*(v35 + 8), 4 * v36);
    *(v38 + 8) = v66;
    v5 = v88;
    v13 = v89;
    if (!v66)
    {
      return v4;
    }

    *v38 = v91;
    *(v38 + 16) = 0;
    if (v91)
    {
      v67 = v66;
      v68 = 0;
      v69 = v38 + 24;
      v70 = v12 + 6;
      v71 = *(v12 + 2);
      v86 = v38 + 24;
      v87 = v38;
      do
      {
        v72 = v69 + 32 * v68;
        *v72 = 0xFFFFFFFFLL;
        *(v72 + 16) = v67;
        if (*(v71 + 4 * v68))
        {
          v73 = 0;
          do
          {
            LODWORD(__s) = 0;
            v74 = *(*&v70[2 * v68] + 8 * v73);
            if (*(a1 + 8) || *v74 != 98)
            {
              v49 = rdr_mapobs_qp(a1, v74, &__s);
              if ((v49 & 0x80000000) != 0)
              {
                return v49;
              }

              if (__s != -1)
              {
                *v67++ = __s;
                ++*(v72 + 4);
              }
            }

            ++v73;
            v71 = *(v12 + 2);
          }

          while (v73 < *(v71 + 4 * v68));
          v5 = v88;
        }

        *(v72 + 8) = 0;
        if (!*(a1 + 8))
        {
          *(v72 + 24) = v67;
          if (*(v71 + 4 * v68))
          {
            v75 = 0;
            do
            {
              LODWORD(__s) = 0;
              v76 = *(*&v70[2 * v68] + 8 * v75);
              if (*v76 != 117)
              {
                v49 = rdr_mapobs_qp(a1, v76, &__s);
                if ((v49 & 0x80000000) != 0)
                {
                  return v49;
                }

                if (__s != -1)
                {
                  *v67++ = __s;
                  ++*(v72 + 8);
                }
              }

              ++v75;
              v71 = *(v12 + 2);
            }

            while (v75 < *(v71 + 4 * v68));
            v5 = v88;
          }
        }

        ++v68;
        v69 = v86;
      }

      while (v68 != v91);
      v13 = v89;
      if (*v89)
      {
        v58 = v5;
        v83 = 0;
        do
        {
          v84 = *(*v89 + v83);
          LODWORD(__s) = 0;
          v4 = qp_str2id(v35, *(a1 + 40), v84, &__s, 0);
          if ((v4 & 0x80000000) != 0)
          {
            return v4;
          }

          *(v87 + 4 * v83 + 24) = __s;
          v83 += 8;
        }

        while (8 * v91 != v83);
LABEL_125:
        v5 = v58;
      }

      else
      {
        v4 = 0;
      }

      v38 = v87;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_106;
  }

  v37 = heap_Alloc(*(v35 + 8), 32 * v36 + 56);
  if (!v37)
  {
    return v4;
  }

  v38 = v37;
  v39 = heap_Alloc(*(v35 + 8), 4 * v36 * (*(a1 + 16) + *(a1 + 12)));
  *(v38 + 8) = v39;
  if (!v39)
  {
    heap_Free(*(v35 + 8), v38);
    return v4;
  }

  *v38 = v36;
  *(v38 + 16) = 0;
  if (!v36)
  {
    v4 = 0;
    goto LABEL_105;
  }

  v40 = v38 + 24;
  v41 = (v38 + 48);
  v42 = 4 * *(a1 + 12);
  v43 = v42 + 4 * *(a1 + 16);
  v90 = v36;
  v44 = v36;
  v13 = v89;
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
  LODWORD(v46) = *(a1 + 24);
  v85 = v38 + 24;
  v87 = v38;
  do
  {
    v47 = v40 + 32 * v45;
    *(v47 + 4) = 0;
    *(v47 + 8) = 0;
    if (v46)
    {
      v48 = 0;
      while (1)
      {
        __s = 0;
        v93 = 0;
        v49 = pat_exec(v35, *(*(a1 + 32) + 8 * v48), v12, v45, &__s);
        if ((v49 & 0x80000000) != 0)
        {
          return v49;
        }

        v4 = rdr_mapobs_qp(a1, __s, &v93);
        if ((v4 & 0x80000000) != 0)
        {
          return v4;
        }

        v50 = v93;
        if (v93 != -1)
        {
          break;
        }

        v55 = *(v35 + 8);
        v51 = __s;
LABEL_51:
        heap_Free(v55, v51);
        ++v48;
        v46 = *(a1 + 24);
        if (v48 >= v46)
        {
          v40 = v85;
          v38 = v87;
          goto LABEL_53;
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
          v50 = v93;
          break;
        case 'b':
          break;
        case 'u':
          v53 = *(v47 + 16);
          v54 = *(v47 + 4);
          *(v47 + 4) = v54 + 1;
LABEL_49:
          *(v53 + 4 * v54) = v50;
          goto LABEL_50;
        default:
LABEL_50:
          v55 = *(v35 + 8);
          goto LABEL_51;
      }

      v53 = *(v47 + 24);
      v54 = *(v47 + 8);
      *(v47 + 8) = v54 + 1;
      goto LABEL_49;
    }

LABEL_53:
    ++v45;
  }

  while (v45 != v90);
  if (!*v89)
  {
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    goto LABEL_106;
  }

  v58 = v5;
  v59 = 0;
  while (1)
  {
    v60 = *(*v89 + v59);
    LODWORD(__s) = 0;
    v4 = qp_str2id(v35, *(a1 + 40), v60, &__s, 0);
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    *(v87 + 4 * v59 + 24) = __s;
    v59 += 8;
    if (8 * v90 == v59)
    {
      goto LABEL_125;
    }
  }
}

uint64_t rdr_mapobs(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = *a1;
  if (*(a1 + 8))
  {
    v7 = *(v6 + 8);
    v8 = cstdlib_strlen(__s);
    v9 = heap_Alloc(v7, (v8 + 2));
    if (!v9)
    {
      return 2585796618;
    }

    v10 = v9;
    v15 = 0;
    *v9 = 117;
    cstdlib_strcpy(v9 + 1, __s);
    v11 = qrk_str2id(v6, *(a1 + 48), v10, &v15, 0);
    if ((v11 & 0x80000000) == 0)
    {
      heap_Free(*(v6 + 8), v10);
      *a3 = v15;
    }

    return v11;
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = *a1;

    return qrk_str2id(v13, v12, __s, a3, 0);
  }
}

uint64_t rdr_mapobs_qp(uint64_t a1, char *__s, int *a3)
{
  v6 = *a1;
  if (*(a1 + 8))
  {
    v7 = *(v6 + 8);
    v8 = cstdlib_strlen(__s);
    v9 = heap_Alloc(v7, (v8 + 2));
    if (!v9)
    {
      return 2585796618;
    }

    v10 = v9;
    v15 = 0;
    *v9 = 117;
    cstdlib_strcpy(v9 + 1, __s);
    v11 = qp_str2id(v6, *(a1 + 48), v10, &v15, 0);
    if ((v11 & 0x80000000) == 0)
    {
      heap_Free(*(v6 + 8), v10);
      *a3 = v15;
    }

    return v11;
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = *a1;

    return qp_str2id(v13, v12, __s, a3, 0);
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

void *mdl_free(uint64_t *a1, int a2, int a3)
{
  v6 = *a1;
  heap_Free(*(*a1 + 8), a1[7]);
  heap_Free(*(v6 + 8), a1[8]);
  heap_Free(*(v6 + 8), a1[9]);
  v7 = a1[10];
  if (v7)
  {
    xvm_free(v6, v7);
  }

  v8 = a1[11];
  if (a3 == 1)
  {
    if (v8)
    {
      heap_Free(*(v6 + 8), v8);
    }
  }

  else if (v8)
  {
    xvm_free_sparse(v6, v8);
  }

  v9 = a1[12];
  if (v9)
  {
    rdr_freedat(v6, v9);
  }

  v10 = a1[13];
  if (v10)
  {
    rdr_freedat(v6, v10);
  }

  v11 = a1[14];
  if (v11)
  {
    rdr_free(v11, a2);
  }

  v12 = a1[15];
  if (v12)
  {
    heap_Free(*(v6 + 8), v12);
  }

  v13 = *(v6 + 8);

  return heap_Free(v13, a1);
}

uint64_t mdl_new_qp(uint64_t a1, void *a2)
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
  v3 = *(a1 + 36);
  v4 = *(*(a1 + 112) + 40);
  if (v3)
  {
    v5 = qp_count(v4);
    v6 = qp_count(*(*(a1 + 112) + 48));
  }

  else
  {
    v5 = qrk_count(v4);
    v6 = qrk_count(*(*(a1 + 112) + 48));
  }

  v7 = v6;
  v8 = *(a1 + 44);
  if (*(a1 + 44) == __PAIR64__(v6, v5))
  {
    return 0;
  }

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    wapiti_fatal(*(v2 + 32), "cannot synchronize an empty model");
    v8 = *(a1 + 44);
  }

  if (v8 == v5 || v8 == 0)
  {
    v12 = *(a1 + 48);
    v11 = *(a1 + 52);
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
    v13 = *(a1 + 80);
    if (v13)
    {
      xvm_free(v2, v13);
      v11 = 0;
      v12 = 0;
      *(a1 + 80) = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  *(a1 + 44) = v5;
  *(a1 + 48) = v7;
  v14 = heap_Realloc(*(v2 + 8), *(a1 + 56), v7);
  *(a1 + 56) = v14;
  v15 = heap_Realloc(*(v2 + 8), *(a1 + 64), 4 * v7);
  *(a1 + 64) = v15;
  v16 = heap_Realloc(*(v2 + 8), *(a1 + 72), 4 * v7);
  v17 = v16;
  *(a1 + 72) = v16;
  if (v14)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18 && v16 != 0)
  {
    v35 = v11;
    v22 = v7 - v12;
    if (v7 > v12)
    {
      v23 = v12;
      while (1)
      {
        v24 = *(*(a1 + 112) + 48);
        v25 = (*(a1 + 36) ? qp_id2str(v2, v24, v23) : qrk_id2str(v2, v24, v23));
        v26 = *v25;
        if (v26 == 42)
        {
          break;
        }

        if (v26 == 117)
        {
          v27 = 1;
LABEL_46:
          *(v14 + v23) = v27;
LABEL_47:
          *(v15 + 4 * v23) = v11;
          v11 += v5;
          v28 = *(v14 + v23);
          goto LABEL_48;
        }

        if (v26 == 98)
        {
          *(v14 + v23) = 2;
LABEL_49:
          *(v17 + 4 * v23) = v11;
          v11 += v5 * v5;
          goto LABEL_50;
        }

        v28 = *(v14 + v23);
        if (v28)
        {
          goto LABEL_47;
        }

LABEL_48:
        if ((v28 & 2) != 0)
        {
          goto LABEL_49;
        }

LABEL_50:
        ++v23;
        if (!--v22)
        {
          goto LABEL_54;
        }
      }

      v27 = 3;
      goto LABEL_46;
    }

LABEL_54:
    *(a1 + 52) = v11;
    v29 = xvm_new(v2, v11);
    v30 = v29;
    if (v35)
    {
      if (v29)
      {
        v31 = 0;
        v32 = *(a1 + 80);
        do
        {
          *(v29 + v31) = *(v32 + v31);
          v31 += 4;
        }

        while (4 * v35 != v31);
        xvm_free(v2, v32);
        *(a1 + 80) = v30;
        goto LABEL_60;
      }
    }

    else
    {
      *(a1 + 80) = v29;
      if (v29)
      {
LABEL_60:
        if (v35 < v11)
        {
          bzero((v30 + 4 * v35), 4 * (v11 + ~v35) + 4);
        }

        v33 = *(*(a1 + 112) + 40);
        if (*(a1 + 36))
        {
          qp_lock(v33, 1);
          qp_lock(*(*(a1 + 112) + 48), 1);
        }

        else
        {
          qrk_lock(v33, 1);
          qrk_lock(*(*(a1 + 112) + 48), 1);
        }

        return 0;
      }
    }

LABEL_64:
    heap_Free(*(v2 + 8), v14);
    *(a1 + 56) = 0;
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v14)
  {
    goto LABEL_64;
  }

  if (v15)
  {
LABEL_30:
    heap_Free(*(v2 + 8), v15);
    *(a1 + 64) = 0;
  }

LABEL_31:
  if (v17)
  {
    heap_Free(*(v2 + 8), v17);
    *(a1 + 72) = 0;
  }

  v20 = 2585796618;
  v21 = *(a1 + 80);
  if (v21)
  {
    xvm_free(v2, v21);
    *(a1 + 80) = 0;
  }

  return v20;
}

uint64_t mdl_sync_sparse(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 36);
  v4 = *(*(a1 + 112) + 40);
  if (v3)
  {
    v5 = qp_count(v4);
    v6 = qp_count(*(*(a1 + 112) + 48));
  }

  else
  {
    v5 = qrk_count(v4);
    v6 = qrk_count(*(*(a1 + 112) + 48));
  }

  v7 = v6;
  v8 = *(a1 + 44);
  if (*(a1 + 44) == __PAIR64__(v6, v5))
  {
    return 0;
  }

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    wapiti_fatal(*(v2 + 32), "cannot synchronize an empty model");
    v8 = *(a1 + 44);
  }

  if (v8 == v5 || v8 == 0)
  {
    v12 = *(a1 + 48);
    v11 = *(a1 + 52);
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
    v13 = *(a1 + 88);
    if (v13)
    {
      xvm_free_sparse(v2, v13);
      v11 = 0;
      v12 = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  *(a1 + 44) = v5;
  *(a1 + 48) = v7;
  v14 = heap_Realloc(*(v2 + 8), *(a1 + 56), v7);
  *(a1 + 56) = v14;
  v15 = heap_Realloc(*(v2 + 8), *(a1 + 64), 4 * v7);
  *(a1 + 64) = v15;
  v16 = heap_Realloc(*(v2 + 8), *(a1 + 72), 4 * v7);
  v17 = v16;
  *(a1 + 72) = v16;
  if (v14)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18 && v16 != 0)
  {
    v35 = v11;
    v22 = v7 - v12;
    if (v7 > v12)
    {
      v23 = v12;
      while (1)
      {
        v24 = *(*(a1 + 112) + 48);
        v25 = (*(a1 + 36) ? qp_id2str(v2, v24, v23) : qrk_id2str(v2, v24, v23));
        v26 = *v25;
        if (v26 == 42)
        {
          break;
        }

        if (v26 == 117)
        {
          v27 = 1;
LABEL_46:
          *(v14 + v23) = v27;
LABEL_47:
          *(v15 + 4 * v23) = v11;
          v11 += v5;
          v28 = *(v14 + v23);
          goto LABEL_48;
        }

        if (v26 == 98)
        {
          *(v14 + v23) = 2;
LABEL_49:
          *(v17 + 4 * v23) = v11;
          v11 += v5 * v5;
          goto LABEL_50;
        }

        v28 = *(v14 + v23);
        if (v28)
        {
          goto LABEL_47;
        }

LABEL_48:
        if ((v28 & 2) != 0)
        {
          goto LABEL_49;
        }

LABEL_50:
        ++v23;
        if (!--v22)
        {
          goto LABEL_54;
        }
      }

      v27 = 3;
      goto LABEL_46;
    }

LABEL_54:
    *(a1 + 52) = v11;
    v29 = sparray_init();
    v30 = v29;
    if (v35)
    {
      if (v29)
      {
        v31 = 0;
        do
        {
          v32 = sparray_get(*(a1 + 88), v31);
          sparray_set(v30, v31, v32);
          v31 = (v31 + 1);
        }

        while (v35 != v31);
        sparray_free(v2, *(a1 + 88));
        *(a1 + 88) = v30;
        goto LABEL_60;
      }
    }

    else
    {
      *(a1 + 88) = v29;
      if (v29)
      {
LABEL_60:
        v33 = *(*(a1 + 112) + 40);
        if (*(a1 + 36))
        {
          qp_lock(v33, 1);
          qp_lock(*(*(a1 + 112) + 48), 1);
        }

        else
        {
          qrk_lock(v33, 1);
          qrk_lock(*(*(a1 + 112) + 48), 1);
        }

        return 0;
      }
    }

LABEL_62:
    heap_Free(*(v2 + 8), v14);
    *(a1 + 56) = 0;
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v14)
  {
    goto LABEL_62;
  }

  if (v15)
  {
LABEL_30:
    heap_Free(*(v2 + 8), v15);
    *(a1 + 64) = 0;
  }

LABEL_31:
  if (v17)
  {
    heap_Free(*(v2 + 8), v17);
    *(a1 + 72) = 0;
  }

  v20 = 2585796618;
  v21 = *(a1 + 88);
  if (v21)
  {
    sparray_free(v2, v21);
    *(a1 + 88) = 0;
  }

  return v20;
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
      cstdlib_memcpy(v27, &a2[v13], v28);
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
  v18 = cstdlib_tolower(a2[(v13 + 1)]);
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
    cstdlib_memcpy(v35, &a2[v31], v34);
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
        v34 = a3 + 6;
        v35 = a3;
        LODWORD(v16) = 16;
        do
        {
          v17 = (a2 + 16 + 32 * v14);
          v37 = 0;
          v18 = *v17;
          if (v18 == 115)
          {
            v19 = *(v17 + 1);
            v20 = cstdlib_strlen(v19);
            v37 = v20;
          }

          else
          {
            v21 = *(v17 + 5);
            if (v21 >= 0)
            {
              v22 = -1;
            }

            else
            {
              v22 = v10;
            }

            v23 = a4;
            if (*(v17 + 4))
            {
              v23 = v22;
            }

            v24 = v23 + v21;
            if (v24 < 0)
            {
              if (v24 <= 0xFFFFFFFB)
              {
                v24 = -5;
              }

              v26 = &bval[~v24];
            }

            else if (v24 >= v10)
            {
              if (v24 - v10 >= 4)
              {
                v27 = 4;
              }

              else
              {
                v27 = v24 - v10;
              }

              v26 = &eval[v27];
            }

            else
            {
              v25 = *(v17 + 6);
              if (v25 >= *(*(v35 + 2) + 4 * v24))
              {
                wapiti_fatal(*(a1 + 32), "missing tokens, cannot apply pattern");
                heap_Free(*(a1 + 8), v12);
                return 2585796615;
              }

              v26 = (*&v34[2 * v24] + 8 * v25);
            }

            v19 = *v26;
            switch(v18)
            {
              case 'm':
                v28 = rex_match(a1, *(v17 + 1), *v26, &v37);
                if (v28 == -1)
                {
                  v20 = 0;
                  v37 = 0;
                }

                else
                {
                  v20 = v37;
                }

                v19 += v28;
                goto LABEL_35;
              case 't':
                if (rex_match(a1, *(v17 + 1), *v26, &v37) == -1)
                {
                  v19 = "false";
                }

                else
                {
                  v19 = "true";
                }

LABEL_30:
                v20 = cstdlib_strlen(v19);
                v37 = v20;
                goto LABEL_35;
              case 'x':
                goto LABEL_30;
            }

            v20 = 0;
          }

LABEL_35:
          if (v20 + v15 >= v16 - 1)
          {
            do
            {
              v16 = v16 + (v16 >> 1);
            }

            while (v20 + v15 >= v16 - 1);
            v29 = heap_Realloc(*(a1 + 8), v12, v16);
            if (!v29)
            {
              goto LABEL_47;
            }

            v30 = v29;
            v20 = v37;
            v12 = v30;
          }

          cstdlib_memcpy((v12 + v15), v19, v20);
          LODWORD(v13) = v37 + v15;
          if (*(v17 + 1) && v15 < v13)
          {
            v31 = v15;
            do
            {
              *(v12 + v31) = cstdlib_tolower(*(v12 + v31));
              ++v31;
              v13 = v37 + v15;
            }

            while (v31 < v13);
          }

          ++v14;
          v15 = v13;
        }

        while (v14 < *(a2 + 12));
      }

      *(v12 + v13) = 0;
      v32 = heap_Realloc(*(a1 + 8), v12, (v13 + 1));
      if (v32)
      {
        v5 = 0;
      }

      else
      {
LABEL_47:
        heap_Free(*(a1 + 8), v12);
        v32 = 0;
        v5 = 2585796618;
      }

      *a5 = v32;
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

uint64_t rex_matchme(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
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

uint64_t rex_matchit(unsigned __int8 *a1, unsigned __int8 *a2)
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
      if (v5 <= 79)
      {
        switch(v5)
        {
          case 'A':
            v6 = cstdlib_isalpha(*a2);
            return v6 == 0;
          case 'D':
            v6 = cstdlib_isdigit(*a2);
            return v6 == 0;
          case 'L':
            v6 = cstdlib_islower(*a2);
            return v6 == 0;
        }
      }

      else if (v5 > 84)
      {
        if (v5 == 85)
        {
          v6 = cstdlib_isupper(*a2);
          return v6 == 0;
        }

        if (v5 == 87)
        {
          v6 = cstdlib_isalnum(*a2);
          return v6 == 0;
        }
      }

      else
      {
        if (v5 == 80)
        {
          v6 = cstdlib_ispunct(*a2);
          return v6 == 0;
        }

        if (v5 == 83)
        {
          v6 = cstdlib_isspace(*a2);
          return v6 == 0;
        }
      }

      return v5 == *a2;
    }

    if (v5 <= 111)
    {
      switch(v5)
      {
        case 'a':

          return cstdlib_isalpha(result);
        case 'd':

          return cstdlib_isdigit(result);
        case 'l':

          return cstdlib_islower(result);
        default:
          return v5 == *a2;
      }
    }

    else if (v5 > 116)
    {
      if (v5 == 117)
      {

        return cstdlib_isupper(result);
      }

      else
      {
        if (v5 != 119)
        {
          return v5 == *a2;
        }

        return cstdlib_isalnum(result);
      }
    }

    else if (v5 == 112)
    {

      return cstdlib_ispunct(result);
    }

    else
    {
      if (v5 != 115)
      {
        return v5 == *a2;
      }

      return cstdlib_isspace(result);
    }
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

uint64_t wapiti_scanf_fmt_prefix_len(const char *a1, char *__s, _DWORD *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(a1);
  if (v9 <= v8)
  {
    return 0;
  }

  v10 = v9;
  cstdlib_memset(__b, 0, 0x64uLL);
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = a1[v11];
    if ((v13 - 48) >= 0xA && v13 != 45)
    {
      break;
    }

    __b[v11++] = v13;
    v12 = v11 < v10;
    if (v10 == v11)
    {
      v11 = v10;
      goto LABEL_9;
    }
  }

  if (!v11)
  {
    return 0;
  }

LABEL_9:
  v15 = cstdlib_atoi(__b);
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
  *a4 = v16 + v11;
  return 1;
}

uint64_t wapiti_isNum(int a1)
{
  if ((a1 - 45) > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_26ECDBCC4[(a1 - 45)];
  }
}

uint64_t wapiti_scanf_fmt_1(const char *a1, char *__s, _DWORD *a3)
{
  v4 = __s;
  v18 = *MEMORY[0x277D85DE8];
  v6 = cstdlib_strlen(__s);
  v7 = cstdlib_strlen(a1);
  v8 = v7 - v6;
  if (v7 <= v6)
  {
    return 0;
  }

  if (!v6)
  {
LABEL_6:
    cstdlib_memset(__b, 0, 0x64uLL);
    v14 = 0;
    while (1)
    {
      v15 = a1[v6 + v14];
      if ((v15 - 48) >= 0xA && v15 != 45)
      {
        break;
      }

      __b[v14++] = v15;
      if (v8 == v14)
      {
        if (!v8)
        {
          return 0;
        }

LABEL_12:
        *a3 = cstdlib_atoi(__b);
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

uint64_t wapiti_scanf_fmt_2(const char *a1, char *__s, _DWORD *a3, _DWORD *a4)
{
  v6 = __s;
  v24 = *MEMORY[0x277D85DE8];
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(a1);
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

  cstdlib_memset(__b, 0, 0x64uLL);
  v17 = 0;
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

    __b[v17++] = v18;
  }

  while (v10 != v17);
  v19 = v11;
  if (!v10)
  {
    return 0;
  }

LABEL_14:
  *a3 = cstdlib_atoi(__b);
  cstdlib_memset(__b, 0, 0x64uLL);
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

    __b[v21++] = v22;
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

  *a4 = cstdlib_atoi(__b);
  return 2;
}

uint64_t wapiti_scanf_fmt_3(const char *a1, char *__s, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v8 = __s;
  v29 = *MEMORY[0x277D85DE8];
  v10 = cstdlib_strlen(__s);
  v11 = cstdlib_strlen(a1);
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

  cstdlib_memset(__b, 0, 0x64uLL);
  v19 = 0;
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

    __b[v19++] = v20;
  }

  while (v12 != v19);
  v21 = v13;
  if (!v12)
  {
    return 0;
  }

LABEL_14:
  *a3 = cstdlib_atoi(__b);
  cstdlib_memset(__b, 0, 0x64uLL);
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

    __b[v23++] = v24;
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

  *a4 = cstdlib_atoi(__b);
  cstdlib_memset(__b, 0, 0x64uLL);
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

    __b[v26++] = v27;
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

  *a5 = cstdlib_atoi(__b);
  return 3;
}

uint64_t wapiti_scanf_fmt_pair(const char *a1, char *__s, _DWORD *a3, _DWORD *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(a1);
  if (v9 <= v8)
  {
    return 0;
  }

  v10 = v9;
  cstdlib_memset(__b, 0, 0x64uLL);
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = a1[v11];
    if ((v13 - 48) >= 0xA && v13 != 45)
    {
      break;
    }

    __b[v11++] = v13;
    v12 = v11 < v10;
    if (v10 == v11)
    {
      v11 = v10;
      goto LABEL_9;
    }
  }

  if (!v11)
  {
    return 0;
  }

LABEL_9:
  v15 = cstdlib_atoi(__b);
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
  cstdlib_memset(__b, 0, 0x64uLL);
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

    __b[v18++] = v19;
  }

  while (v17 + v18 < v10);
  if (!v18)
  {
    return 1;
  }

  *a4 = cstdlib_atoi(__b);
  return 2;
}

uint64_t wapiti_scanf_pat_len(const char *a1, char *__s, _DWORD *a3, _DWORD *a4, size_t *a5)
{
  v8 = __s;
  v26 = *MEMORY[0x277D85DE8];
  v10 = cstdlib_strlen(__s);
  v11 = cstdlib_strlen(a1);
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

  cstdlib_memset(__b, 0, 0x64uLL);
  v19 = 0;
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

    __b[v19++] = v20;
  }

  while (v12 != v19);
  v21 = v13;
  if (!v12)
  {
    return 0;
  }

LABEL_14:
  *a3 = cstdlib_atoi(__b);
  cstdlib_memset(__b, 0, 0x64uLL);
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

    __b[v23++] = v24;
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

  *a4 = cstdlib_atoi(__b);
  *a5 = v13;
  return 2;
}

uint64_t tag_label(uint64_t *a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(a1 + 6);
  v195 = 0;
  v196[0] = 0;
  v10 = 2585796618;
  v194 = 0;
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
  v186 = v9;
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
    v17 = rdr_readraw_qp(v16, a2, a3, v196);
    if ((v17 & 0x80000000) == 0)
    {
      if (v196[0])
      {
        v18 = rdr_raw2seq_qp(v16, v196[0], *(v15 + 3) | (*(v15[14] + 56) != 0), &v195);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_21:
        LODWORD(v26) = 0;
        v10 = v18;
        goto LABEL_245;
      }

      return 2585796615;
    }

    return v17;
  }

  v17 = rdr_readraw(v16, a2, a3, v196);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (!v196[0])
  {
    return 2585796615;
  }

  v18 = rdr_raw2seq(v16, v196[0], *(v15 + 3) | (*(v15[14] + 56) != 0), &v195);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  v172 = v11;
  v173 = *v195;
  v19 = v186;
  v20 = heap_Alloc(*(v8 + 8), 4 * v186 * v173);
  v21 = heap_Alloc(*(v8 + 8), 4 * v186 * v173);
  v22 = heap_Alloc(*(v8 + 8), 4 * v186);
  v23 = v22;
  v185 = v20;
  v179 = v21;
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
    v11 = v172;
    LODWORD(v26) = v173;
    goto LABEL_239;
  }

  v175 = v22;
  v164 = a5;
  v192 = v15;
  v193 = v8;
  if (a6 && a7)
  {
    v27 = *(v15 + 11);
    v28 = heap_Calloc(*(v8 + 8), 1, 4 * v27 * a3);
    *(v195 + 2) = v28;
    v11 = v172;
    if (!v28)
    {
      LODWORD(v26) = v173;
      v23 = v175;
      goto LABEL_240;
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
              qp_str2id(v193, *(*(v192 + 112) + 40), *(*(a6 + 8 * v30) + 8 * v33), &v194, 0);
              if (v194 != -1)
              {
                *(*(v195 + 2) + 4 * (v194 + v27 * v30)) = 1;
                ++v34;
              }

              ++v33;
            }

            while (v33 < *(a7 + 4 * v30));
            LOBYTE(v32) = v34 != 0;
            v15 = v192;
            v19 = v186;
          }

          if ((v32 & 1) == 0 && v27)
          {
            v35 = *(v195 + 2);
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
            qrk_str2id(v193, *(*(v192 + 112) + 40), *(*(a6 + 8 * v39) + 8 * v42), &v194, 0);
            if (v194 != -1)
            {
              *(*(v195 + 2) + 4 * (v194 + v27 * v39)) = 1;
              ++v43;
            }

            ++v42;
          }

          while (v42 < *(a7 + 4 * v39));
          LOBYTE(v41) = v43 != 0;
          v15 = v192;
          v19 = v186;
        }

        if ((v41 & 1) == 0 && v27)
        {
          v44 = *(v195 + 2);
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

  v47 = v195;
  v48 = *v15;
  v49 = *(v15 + 11);
  v50 = *v195;
  v51 = xvm_new(*v15, v49 * v49 * v50);
  v52 = *(v48 + 8);
  v174 = v50;
  if (v19 != 1)
  {
    v63 = heap_Alloc(v52, 4 * v186 * v49 * v50);
    v64 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v65 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v66 = v65;
    if (v51)
    {
      v67 = v63 == 0;
    }

    else
    {
      v67 = 1;
    }

    if (v67 || v64 == 0 || v65 == 0)
    {
      v70 = 0;
      v10 = 2585796618;
      v8 = v193;
      goto LABEL_199;
    }

    v191 = v65;
    v189 = *(v15 + 10);
    v182 = v47;
    if (v189 == 1)
    {
      tag_memmsc(v15, v47, v51);
      v71 = 1;
    }

    else
    {
      tag_expsc(v15, v47, v51);
      v71 = 0;
    }

    v8 = v193;
    v94 = v185;
    if (*(v15[14] + 56))
    {
      tag_forced(v15, v182, v51, v71);
    }

    v95 = v174;
    if (v49)
    {
      v96 = 0;
      v97 = 0;
      do
      {
        *(v64 + 4 * v97) = v51[v96];
        v98 = v97 + 1;
        if (v19)
        {
          v99 = v97 + v19;
          v100 = v19 - 1;
          do
          {
            *(v64 + 4 * v98++) = 0x80000000;
            --v100;
          }

          while (v100);
          v98 = v99;
        }

        ++v96;
        v97 = v98;
      }

      while (v96 != v49);
    }

    v101 = v179;
    if (v174 >= 2)
    {
      v102 = (v49 * v19);
      v168 = 4 * v102;
      v181 = vdupq_n_s64(v19 - 1);
      v166 = (v19 + 3) & 0x1FFFFFFFCLL;
      v163 = 1;
      v165 = vdupq_n_s64(4uLL);
      v162 = v49 * v19;
      v171 = v48;
      v167 = v102;
      while (1)
      {
        v103 = v64;
        v104 = v191;
        v105 = v102;
        v106 = v102;
        if (v102)
        {
          do
          {
            v107 = *v103++;
            *v104++ = v107;
            --v105;
          }

          while (v105);
        }

        if (v49)
        {
          break;
        }

LABEL_161:
        v162 += v106;
        v95 = v174;
        ++v163;
        v102 = v106;
        v15 = v192;
        v94 = v185;
        if (v163 == v174)
        {
          goto LABEL_162;
        }
      }

      v188 = 0;
      v169 = v163 * v49;
      v184 = v162;
      while (1)
      {
        v108 = heap_Alloc(*(v48 + 8), v168);
        if (!v108)
        {
          break;
        }

        v109 = v108;
        v110 = 0;
        v111 = 0;
        v112 = v49;
        v113 = (v63 + 8 + 4 * v184);
        do
        {
          v114 = v112;
          while (!v19)
          {
            if (!--v114)
            {
              v123 = 0;
              v124 = v63;
              v8 = v193;
              v101 = v179;
              v106 = v167;
              goto LABEL_149;
            }
          }

          v178 = v113;
          v177 = v111 + v19;
          v115 = v19;
          do
          {
            v116 = v191[v111];
            *(v109 + 4 * v111) = v116;
            v117 = v51[(v188 + (v169 + v110) * v49)];
            if (v189 == 1)
            {
              v118 = fix16_mul(v116, v117);
            }

            else
            {
              v118 = fix16_add(v116, v117);
            }

            *(v109 + 4 * v111++) = v118;
            --v115;
          }

          while (v115);
          ++v110;
          --v112;
          v111 = v177;
          v19 = v186;
          v48 = v171;
          v113 = v178;
        }

        while (v110 != v49);
        v119 = 0;
        v124 = (v63 + 4 * ((v169 + v188) * v186));
        v120 = xmmword_26ECC7980;
        v121 = xmmword_26ECCE810;
        v8 = v193;
        v101 = v179;
        v106 = v167;
        do
        {
          v122 = vmovn_s64(vcgeq_u64(v181, v120));
          if (vuzp1_s16(v122, *v120.i8).u8[0])
          {
            *(v113 - 2) = v119;
          }

          if (vuzp1_s16(v122, *&v120).i8[2])
          {
            *(v113 - 1) = v119 + 1;
          }

          if (vuzp1_s16(*&v120, vmovn_s64(vcgeq_u64(v181, *&v121))).i32[1])
          {
            *v113 = v119 + 2;
            v113[1] = v119 + 3;
          }

          v119 += 4;
          v121 = vaddq_s64(v121, v165);
          v120 = vaddq_s64(v120, v165);
          v113 += 4;
        }

        while (v166 != v119);
        v123 = v186 * v188;
LABEL_149:
        v125 = v19;
        if (v106 > v19)
        {
          do
          {
            v126 = 0;
            if (v19)
            {
              v127 = 1;
              do
              {
                if (*(v109 + 4 * v124[v127]) < *(v109 + 4 * v124[v126]))
                {
                  v126 = v127;
                }

                ++v127;
              }

              while (v19 != v127);
            }

            if (*(v109 + 4 * v125) > *(v109 + 4 * v124[v126]))
            {
              v124[v126] = v125;
            }

            ++v125;
          }

          while (v125 != v106);
        }

        v128 = v19;
        if (v19)
        {
          do
          {
            v129 = *v124++;
            *(v64 + 4 * v123++) = *(v109 + 4 * v129);
            --v128;
          }

          while (v128);
        }

        heap_Free(*(v48 + 8), v109);
        v184 += v19;
        if (++v188 == v49)
        {
          goto LABEL_161;
        }
      }

      v70 = 0;
      v10 = 2585796618;
      v15 = v192;
LABEL_198:
      v66 = v191;
LABEL_199:
      v11 = v172;
      if (v66)
      {
        heap_Free(*(v48 + 8), v66);
      }

      if (v64)
      {
        heap_Free(*(v48 + 8), v64);
      }

      if (v63)
      {
        heap_Free(*(v48 + 8), v63);
      }

      if (v51)
      {
        xvm_free(v48, v51);
      }

      v26 = v173;
      v23 = v175;
      if (!v70)
      {
        goto LABEL_239;
      }

      goto LABEL_208;
    }

LABEL_162:
    if (!v19)
    {
      goto LABEL_178;
    }

    v130 = 0;
    v131 = (v49 * v19);
LABEL_164:
    if (v131 < 2)
    {
      v132 = 0;
    }

    else
    {
      v132 = 0;
      for (i = 1; i != v131; ++i)
      {
        if (*(v64 + 4 * i) > *(v64 + 4 * v132))
        {
          v132 = i;
        }
      }
    }

    v175[v130] = *(v64 + 4 * v132);
    *(v64 + 4 * v132) = 0x80000000;
    for (j = v95; ; v132 = *(v63 + 4 * (v132 + j * v49 * v19)))
    {
      if (j == 1)
      {
        j = 0;
        v135 = 0;
      }

      else
      {
        if (!j)
        {
          if (++v130 == v19)
          {
LABEL_178:
            v10 = 0;
            v70 = 1;
            goto LABEL_198;
          }

          goto LABEL_164;
        }

        v135 = *(v63 + 4 * (v132 + --j * v131)) / v19;
      }

      v136 = v130 + j * v19;
      *(v94 + 4 * v136) = v132 / v19;
      *(v101 + 4 * v136) = v51[v132 / v19 + (v135 + j * v49) * v49];
    }
  }

  v53 = heap_Alloc(v52, 4 * v49 * v50);
  v54 = heap_Alloc(*(v48 + 8), 4 * v49);
  v55 = heap_Alloc(*(v48 + 8), 4 * v49);
  v56 = v55;
  if (v51)
  {
    v57 = v53 == 0;
  }

  else
  {
    v57 = 1;
  }

  v59 = v57 || v54 == 0 || v55 == 0;
  v60 = v59;
  v10 = 2585796618;
  if (v59)
  {
    goto LABEL_187;
  }

  v61 = *(v192 + 40);
  if (v61 == 1)
  {
    tag_memmsc(v192, v47, v51);
    v62 = 1;
  }

  else
  {
    tag_expsc(v192, v47, v51);
    v62 = 0;
  }

  if (*(*(v192 + 112) + 56))
  {
    tag_forced(v192, v47, v51, v62);
  }

  v176 = v60;
  v170 = v48;
  if (v49)
  {
    v72 = v51;
    v73 = v54;
    v74 = v49;
    do
    {
      v75 = *v72++;
      *v73++ = v75;
      --v74;
    }

    while (v74);
  }

  v76 = v174;
  if (v174 >= 2)
  {
    v183 = 1;
    v180 = v49 * v49;
    v187 = v54;
    v190 = v53;
    do
    {
      v77 = v54;
      v78 = v56;
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
        v82 = v180;
        do
        {
          v83 = 0;
          v84 = 0;
          v85 = 0x80000000;
          v86 = v82;
          do
          {
            v87 = *(v56 + 4 * v83);
            v88 = v51[v86];
            if (v61 == 1)
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
          v54 = v187;
          *(v190 + 4 * (v183 * v49 + v81)) = v84;
          v53 = v190;
          *(v187 + 4 * v81++) = v85;
          ++v82;
        }

        while (v81 != v49);
      }

      v180 += v49 * v49;
      v76 = v174;
      ++v183;
    }

    while (v183 != v174);
  }

  if (v49 < 2)
  {
    v90 = 0;
    v92 = v185;
    v19 = v186;
    v93 = v179;
    v48 = v170;
    v60 = v176;
  }

  else
  {
    v90 = 0;
    v91 = 1;
    v92 = v185;
    v19 = v186;
    v93 = v179;
    v48 = v170;
    v60 = v176;
    do
    {
      if (*(v54 + 4 * v91) > *(v54 + 4 * v90))
      {
        v90 = v91;
      }

      ++v91;
    }

    while (v49 != v91);
  }

  *v175 = *(v54 + 4 * v90);
  while (1)
  {
    v137 = v76 - 1;
    if (v76 != 1)
    {
      break;
    }

    v138 = 0;
    v76 = 0;
    v139 = 0;
LABEL_185:
    *(v92 + 4 * v76) = v90;
    *(v93 + 4 * v76) = v51[v90 + (v139 + v138) * v49];
    v90 = v139;
  }

  if (v76)
  {
    v138 = v137 * v49;
    v139 = *(v53 + 4 * (v137 * v49 + v90));
    v76 = (v76 - 1);
    goto LABEL_185;
  }

  v10 = v76;
LABEL_187:
  if (v56)
  {
    heap_Free(*(v48 + 8), v56);
  }

  v11 = v172;
  v8 = v193;
  if (v54)
  {
    heap_Free(*(v48 + 8), v54);
  }

  v15 = v192;
  if (v53)
  {
    heap_Free(*(v48 + 8), v53);
  }

  if (v51)
  {
    xvm_free(v48, v51);
  }

  v26 = v173;
  v23 = v175;
  if (v60)
  {
    goto LABEL_239;
  }

LABEL_208:
  v140 = heap_Calloc(*(v8 + 8), 8, v26);
  *v11 = v140;
  if (!v140)
  {
LABEL_236:
    v10 = 2585796618;
    goto LABEL_238;
  }

  v141 = v185;
  if (!v26)
  {
LABEL_235:
    v10 = 0;
    *v164 = v26;
    goto LABEL_238;
  }

  v142 = 0;
  v143 = (3 * v19 + 1);
  while (2)
  {
    v144 = heap_Alloc(*(v8 + 8), v143);
    if (!v144)
    {
      goto LABEL_236;
    }

    v145 = v144;
    *v144 = 0;
    if (*(v15 + 9))
    {
      if (v19)
      {
        for (k = 0; k != v19; ++k)
        {
          v147 = qp_id2str(v193, *(*(v192 + 112) + 40), *(v141 + 4 * (v19 * v142 + k)));
          v148 = cstdlib_strlen(v145);
          v149 = cstdlib_strlen(v147);
          v150 = 3 * v19 + 1;
          do
          {
            v151 = v150;
            v150 *= 2;
          }

          while (v151 < v148 + v149 + 2);
          if (v151 <= v143)
          {
            v152 = v145;
          }

          else
          {
            v152 = heap_Realloc(*(v193 + 8), v145, v151);
            if (!v152)
            {
              goto LABEL_237;
            }
          }

          cstdlib_strncat(v152, v147, v149);
          cstdlib_strcat(v152, " ");
          v145 = v152;
          v141 = v185;
        }

LABEL_234:
        *(*v11 + 8 * v142++) = v152;
        LODWORD(v26) = v173;
        v15 = v192;
        v8 = v193;
        if (v142 == v173)
        {
          goto LABEL_235;
        }

        continue;
      }

LABEL_233:
      v152 = v144;
      goto LABEL_234;
    }

    break;
  }

  if (!v19)
  {
    goto LABEL_233;
  }

  v153 = 0;
  while (2)
  {
    v154 = qrk_id2str(v193, *(*(v192 + 112) + 40), *(v141 + 4 * (v19 * v142 + v153)));
    v155 = cstdlib_strlen(v145);
    v156 = cstdlib_strlen(v154);
    v157 = 3 * v19 + 1;
    do
    {
      v158 = v157;
      v157 *= 2;
    }

    while (v158 < v155 + v156 + 2);
    if (v158 <= v143)
    {
      v152 = v145;
LABEL_231:
      cstdlib_strncat(v152, v154, v156);
      cstdlib_strcat(v152, " ");
      ++v153;
      v145 = v152;
      v141 = v185;
      if (v153 == v19)
      {
        goto LABEL_234;
      }

      continue;
    }

    break;
  }

  v152 = heap_Realloc(*(v193 + 8), v145, v158);
  if (v152)
  {
    goto LABEL_231;
  }

LABEL_237:
  v8 = v193;
  heap_Free(*(v193 + 8), v145);
  v10 = 2585796618;
  LODWORD(v26) = v173;
LABEL_238:
  v23 = v175;
LABEL_239:
  if (v23)
  {
LABEL_240:
    heap_Free(*(v8 + 8), v23);
  }

  if (v179)
  {
    heap_Free(*(v8 + 8), v179);
  }

  if (v185)
  {
    heap_Free(*(v8 + 8), v185);
  }

LABEL_245:
  if (v195)
  {
    rdr_freeseq(v8, v195);
  }

  if (v196[0])
  {
    rdr_freeraw(v8, v196[0]);
  }

  if ((v10 & 0x80000000) == 0)
  {
    return 0;
  }

  v159 = *v11;
  if (*v11)
  {
    if (v26)
    {
      v160 = 0;
      do
      {
        heap_Free(*(v8 + 8), *(*v11 + v160));
        v160 += 8;
      }

      while (8 * v26 != v160);
      v159 = *v11;
    }

    heap_Free(*(v8 + 8), v159);
    *v11 = 0;
  }

  return v10;
}