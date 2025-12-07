void pw_split_csc_pw(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x400uLL);
  if (*(a1 + 12) == 1 && (*(a1 + 8) & 0xFFFE) == 4 && a2 != 0)
  {
    v5 = 1;
    v6 = a2;
    do
    {
      v7 = v5;
      v8 = strchr(v6, 46);
      if (v8)
      {
        v6 = v8 + 1;
      }

      else
      {
        v6 = 0;
      }

      if (!v8)
      {
        break;
      }

      v5 = 0;
    }

    while ((v7 & 1) != 0);
    if (v8)
    {
      __strncpy_chk();
      __strcat_chk();
      __strcat_chk();
      strcpy(a2, __src);
    }
  }
}

uint64_t checkAttachedPunc(const char *a1)
{
  v2 = strlen(a1);
  v5 = 0;
  v3 = v2;
  if (v2)
  {
    if (memchr(",:;.?!|_~'<>{}#()[]^\\=@/&$*#", a1[v2 - 1], 0x1EuLL))
    {
      return 1;
    }

    else
    {
      if (v3 != 3)
      {
        return 0;
      }

      v3 = 1;
      utf8_Utf8ToUtf32_Tolerant(a1, 3u, &v5 + 4, 1u, &v5);
      if (HIDWORD(v5) != 8230)
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t pw_check_if_glue_forbidden(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  *a7 = 0;
  result = pw_check_if_word_in_prompt(a1, a2, a3, a5, a7);
  if ((result & 0x80000000) == 0 && !*a7)
  {
    result = pw_check_if_word_in_prompt(a1, a2, a3, a6, a7);
    if ((result & 0x80000000) == 0 && !*a7)
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      result = (*(a1 + 176))(a2, a3, a4, 1, &v23, &v24);
      if ((result & 0x80000000) == 0)
      {
        (*(a1 + 168))(a2, a3, a5, 1, 1, &v25 + 2, &v24 + 2);
        result = (*(a1 + 168))(a2, a3, a6, 2, 1, &v25, &v24 + 2);
        if ((result & 0x80000000) == 0)
        {
          if (v24)
          {
            v15 = 0;
            v16 = (v23 + 12);
            while (1)
            {
              v17 = *v16;
              v16 += 8;
              if (v17 - *(v23 + 12) > HIWORD(v25))
              {
                break;
              }

              if (v24 == ++v15)
              {
                goto LABEL_24;
              }
            }

            v18 = v15;
          }

          else
          {
            v18 = 0;
          }

          if (v18 < v24)
          {
            v19 = v24 - v18;
            v20 = (v23 + 32 * v18);
            while (v20[3] - *(v23 + 12) < v25)
            {
              if (*v20 <= 0x39u && ((1 << *v20) & 0x3C0010124001140) != 0)
              {
                v22 = 1;
                goto LABEL_25;
              }

              v20 += 8;
              if (!--v19)
              {
                break;
              }
            }
          }

LABEL_24:
          v22 = 0;
LABEL_25:
          *a7 = v22;
        }
      }
    }
  }

  return result;
}

char *checkremoveNormalSym(char *a1, unsigned __int16 *a2, unsigned __int8 a3)
{
  v5 = a3;
  result = strchr(a1, a3);
  if (result)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = a1[v8];
        if (v10 != v5)
        {
          if (v8 != v9)
          {
            a1[v9] = v10;
            v7 = *a2;
          }

          ++v9;
        }

        ++v8;
      }

      while (v8 < v7);
    }

    else
    {
      v9 = 0;
    }

    a1[v9] = 0;
    *a2 = v9;
  }

  return result;
}

uint64_t pw_copy_pw(uint64_t a1, uint64_t a2, uint64_t a3)
{
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Copying PW ... ");
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pPWIn and pPWOut is: ");
  v6 = pw_show_pw(a1, a2);
  if ((v6 & 0x80000000) == 0)
  {
    *(a3 + 8) = *(a2 + 8);
    *a3 = *a2;
    *(a3 + 12) = *(a2 + 12);
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Copy PW done!");
  }

  return v6;
}

uint64_t pw_show_pw(uint64_t a1, uint64_t a2)
{
  v4 = heap_Calloc(*(a1 + 8), 1, 1000);
  if (!v4)
  {
    return 2315264010;
  }

  v5 = v4;
  LODWORD(v6) = *(a2 + 8);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      sprintf(&v5[v8], "%d-", *(*a2 + 2 * v7));
      v8 = strlen(v5);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "\tPW [tids:%s, ntok:%d]", v5, v6);
  heap_Free(*(a1 + 8), v5);
  return 0;
}

uint64_t hlp_getKeyIdx(uint64_t a1, unsigned int a2, char *__s2, size_t __n)
{
  if (a2)
  {
    v6 = 0;
    v7 = __n;
    v8 = a2;
    do
    {
      v9 = *(a1 + 8 * v6);
      if (!v9)
      {
        break;
      }

      if (!strncmp(v9, __s2, v7))
      {
        return v6;
      }

      ++v6;
    }

    while (v8 != v6);
  }

  LOWORD(v6) = -1;
  return v6;
}

uint64_t hlp_checkValExist(uint64_t result, unsigned int a2, const char *a3, unsigned int a4)
{
  if (result)
  {
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = " ";
    }

    if (a2)
    {
      v5 = result;
      if (a3)
      {
        v6 = a4;
      }

      else
      {
        v6 = 1;
      }

      v7 = a2;
      while (*v5)
      {
        if (strlen(*v5) == v6 && !strncmp(*v5, v4, v6))
        {
          return 1;
        }

        ++v5;
        if (!--v7)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t pw_check_if_word_in_prompt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v10 = 0;
  *a5 = 0;
  result = (*(a1 + 168))(a2, a3, a4, 1, 1, &v10, &v10 + 2);
  if ((result & 0x80000000) == 0)
  {
    return (*(a1 + 312))(a2, a3, v10, a5);
  }

  return result;
}

uint64_t getphraseCfg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, char **a6, char **a7)
{
  v19 = 0;
  v18 = -1;
  v17 = 0;
  result = (*(a2 + 96))(a3, a4, "fecfg", "fephrase_slience", &v19, &v18, &v17);
  if ((result & 0x80000000) == 0)
  {
    if (v19)
    {
      v15 = v18 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = 300;
    }

    else
    {
      v16 = LH_atou(*v19);
    }

    *a5 = v16;
    result = getPunc(a1, a2, a3, a4, a6, "fephrase_strongphrasepunc");
    if ((result & 0x80000000) == 0)
    {
      return getPunc(a1, a2, a3, a4, a7, "fephrase_weakphrasepunc");
    }
  }

  return result;
}

uint64_t getPunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6)
{
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v8 = (*(a2 + 96))(a3, a4, "fecfg", a6, &v18, &v17, &v16);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = 2315264010;
  if (v18)
  {
    v10 = v17 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = heap_Alloc(*(a1 + 8), 10);
    if (v11)
    {
      strcpy(v11, ",;:.?!_~|");
      v12 = v11 + 9;
LABEL_11:
      *v12 = 0;
      *a5 = v11;
      return v8;
    }
  }

  else
  {
    v13 = strlen(*v18);
    v14 = heap_Alloc(*(a1 + 8), v13 + 1);
    if (v14)
    {
      v11 = strcpy(v14, *v18);
      v12 = &v11[v13 - 1];
      goto LABEL_11;
    }
  }

  return v9;
}

uint64_t ruleNNInit(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8)
{
  v66 = *MEMORY[0x1E69E9840];
  memset(v59, 0, sizeof(v59));
  v56 = 0;
  v54 = 0;
  v55 = 0;
  *__c = 0;
  v53 = 0;
  v51 = 0;
  v49 = 0;
  *v50 = 0;
  if ((com_mosynt_GetCfgParamVal(a5, a6, a4, "fephrase_max_rule", "1024", &v49) & 0x80000000) != 0)
  {
    v12 = 1024;
  }

  else
  {
    v12 = atoi(v49);
  }

  v13 = heap_Calloc(*(a3 + 8), 1, v12);
  v44 = a8;
  if (v13)
  {
    v57 = 0;
    *v58 = 0;
    memset(v65, 0, sizeof(v65));
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v58);
    if (Str < 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v57), Str < 0) || (v60 = 0x73656C75727073, __strcat_chk(), __strcat_chk(), __strcat_chk(), __strcat_chk(), Str = brokeraux_ComposeBrokerString(a3, &v60, 1, 1, *v58, 0, 0, v59, 0x100uLL), Str < 0))
    {
      v30 = Str;
      log_OutText(*(a3 + 32), "FE_PHRASING", 0, 0, "Could not assemble broker string for SP rules %s", "sprules");
      v18 = v30 | 0x8A002000;
    }

    else
    {
      log_OutText(*(a3 + 32), "FE_PHRASING", 5, 0, "looking for SP rules %s at %s", "sprules", v59);
      v15 = ssftriff_reader_ObjOpen(a1, a2, 2, v59, "SPDT", 1031, v50);
      if (v15 < 0)
      {
        v18 = v15;
        log_OutText(*(a3 + 32), "FE_PHRASING", 0, 0, "no sp rules");
        *(a7 + 10) = 0;
        *a7 = 0;
      }

      else
      {
        while (1)
        {
          v16 = ssftriff_reader_OpenChunk(*v50, &v55, &v54, &v53);
          if (v16 < 0)
          {
            break;
          }

          v17 = a3;
          if (!(v55 ^ 0x52545344 | v56))
          {
            ChunkData = ssftriff_reader_GetChunkData(*v50, v54, __c);
            if (ChunkData < 0)
            {
              goto LABEL_76;
            }

            v51 = 0;
            ssftriff_reader_ReadStringZ(*v50, *__c, v54, 0, 0, &v51);
            ssftriff_reader_ReadStringZ(*v50, *__c, v54, 0, v13, &v51);
            v20 = strchr(v13, 10);
            if (v20)
            {
              *v20 = 0;
            }

            v21 = strchr(v13, 58);
            if (v21)
            {
              v22 = atoi(v21 + 2);
            }

            else
            {
              v22 = 0;
            }

            v23 = v51;
            inited = initPhrasingRuleStruct(a3, a7, v22);
            if (inited < 0)
            {
              v18 = inited;
              goto LABEL_77;
            }

            if (v22)
            {
              v25 = 0;
              while (1)
              {
                do
                {
                  v51 = 0;
                  ssftriff_reader_ReadStringZ(*v50, *__c, v54, v23, 0, &v51);
                  ssftriff_reader_ReadStringZ(*v50, *__c, v54, v23, v13, &v51);
                  v23 += v51;
                  v26 = v13 + 1;
                  for (i = v13; ; ++i)
                  {
                    v28 = *i;
                    if (v28 > 0x23)
                    {
                      goto LABEL_29;
                    }

                    if (((1 << v28) & 0x100000200) == 0)
                    {
                      break;
                    }

                    ++v26;
                  }
                }

                while (((1 << v28) & 0x800002401) != 0);
LABEL_29:
                while (v28)
                {
                  if (v28 == 35)
                  {
                    *(v26 - 1) = 0;
                    break;
                  }

                  v29 = *v26++;
                  LOBYTE(v28) = v29;
                }

                ChunkData = addPhrasingRuleNN(v17, a7, v13);
                if (ChunkData < 0)
                {
                  break;
                }

                if (++v25 >= v22)
                {
                  goto LABEL_11;
                }
              }

LABEL_76:
              v18 = ChunkData;
              a3 = v17;
LABEL_77:
              a8 = v44;
              goto LABEL_37;
            }
          }

LABEL_11:
          v18 = ssftriff_reader_CloseChunk(*v50);
          a3 = v17;
          a8 = v44;
          if (v18 < 0)
          {
            goto LABEL_37;
          }
        }

        if ((v16 & 0x1FFF) == 0x14)
        {
          v18 = 0;
        }

        else
        {
          v18 = v16;
        }
      }
    }
  }

  else
  {
    log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0);
    v18 = -1979703286;
  }

LABEL_37:
  if (*v50)
  {
    v31 = ssftriff_reader_ObjClose(*v50);
    if (v31 < 0 && v18 > -1)
    {
      v18 = v31;
    }
  }

  if (v13)
  {
    heap_Free(*(a3 + 8), v13);
  }

  if (a7 && v18 < 0)
  {
    releasePhrasingRuleStructNN(a3, a7);
  }

  v33 = 0;
  v57 = 0;
  *v58 = 0;
  LOWORD(v53) = -1;
  LOBYTE(__c[0]) = 0;
  *(a8 + 1) = 0u;
  *(a8 + 9) = 0u;
  *(a8 + 17) = 0u;
  *(a8 + 25) = 0u;
  *(a8 + 33) = 0u;
  v60 = "JOY_KEYS";
  *&v61 = "DID_KEYS";
  *(&v61 + 1) = "NEU_KEYS";
  *&v62 = "COM_KEYS";
  while (1)
  {
    strcpy(v59, "statbnd_");
    __strcat_chk();
    LOWORD(v53) = 0;
    if (((*(a4 + 96))(a5, a6, "fecfg", v59, v58, &v53, __c) & 0x80000000) != 0 || !v53)
    {
      break;
    }

    v34 = **v58;
    v35 = strchr(**v58, LOBYTE(__c[0]));
    if (v35)
    {
      *v35 = 0;
      v34 = **v58;
    }

    v36 = *v34;
    if (*v34)
    {
      v37 = 0;
      do
      {
        for (j = 0; v36; v36 = v34[++j])
        {
          if (v36 == 44)
          {
            break;
          }
        }

        strcpy(v59, "statbnd_");
        __strncat_chk();
        LOWORD(v53) = 0;
        (*(a4 + 96))(a5, a6, "fecfg", v59, &v57, &v53, __c);
        if (v53)
        {
          v39 = *v57;
          v40 = strchr(*v57, LOBYTE(__c[0]));
          if (v40)
          {
            *v40 = 0;
            v39 = *v57;
          }

          v41 = atoi(v39);
          v42 = a8 + 1;
          if (v33)
          {
            v42 = a8 + 11;
            if (v33 != 1)
            {
              v42 = a8 + 31;
            }

            if (v33 == 2)
            {
              v42 = a8 + 21;
            }
          }

          v42[v37] = v41;
        }

        if (v34[j] == 44)
        {
          v34 += j + 1;
        }

        else
        {
          v34 += j;
        }

        ++v37;
        v36 = *v34;
      }

      while (*v34);
    }

    else
    {
      v37 = 0;
    }

    if (++v33 == 4)
    {
      *v44 = v37;
      return 0;
    }
  }

  return 0;
}

uint64_t doesNNCustermizedFE(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v6 = *(result + 8);
    v23 = *(a2 + 1088);
    v7 = strlen(v23);
    v8 = heap_Alloc(v6, v7 + 2);
    if (v8)
    {
      v9 = v8;
      if (*(a2 + 1072))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(a2 + 1064) + 184 * v10;
          v13 = *(v12 + 36);
          v14 = v13 > 0xA;
          v15 = (1 << v13) & 0x610;
          if (!v14 && v15 != 0)
          {
            v17 = *(v12 + 16);
            v18 = *(v12 + 18);
            if (v17 != v18)
            {
              v19 = v18 - v17;
              memcpy(v9, &v23[v17], v18 - v17);
              *(v9 + v19) = 0;
              v20 = strlen(v9);
              v21 = Utf8_LengthInUtf8chars(v9, v20);
              if (v21)
              {
                v22 = 0;
                do
                {
                  utf8_getUTF8Char(v9, v22, &v24);
                  if (!(v24 ^ 0xA7C2 | v25))
                  {
                    ++v11;
                  }

                  v22 += utf8_determineUTF8CharLength(v24);
                  --v21;
                }

                while (v21);
              }
            }
          }

          ++v10;
        }

        while (v10 < *(a2 + 1072));
        if (v11 >= 3u)
        {
          *a3 = 1;
        }
      }

      heap_Free(*(v5 + 8), v9);
      return 0;
    }

    else
    {
      return 2315264010;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t addTokenNN(uint64_t a1, unsigned __int16 *a2, char *__s, uint64_t a4)
{
  v7 = *(a4 + 1072);
  v8 = *a2;
  if (*(a4 + 1072))
  {
    v9 = 0;
    v10 = v7 + 1;
    v11 = a2[1];
    v12 = (*(a4 + 1064) + 18);
    while (1)
    {
      v13 = *(v12 - 1);
      if (v8 == v13)
      {
        v10 = v9;
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

      v12 += 92;
      ++v9;
      v8 = *a2;
      if (v7 == v9)
      {
        goto LABEL_12;
      }
    }

    if (v7 + 1 != v10)
    {
      v19 = *(a1 + 8);
      v20 = strlen(__s);
      v21 = heap_Calloc(v19, 1, (v20 - 1));
      *(*(a4 + 1064) + 184 * v10 + 128) = v21;
      if (v21)
      {
        v22 = v21;
        v23 = strlen(__s + 1);
        strncpy(v22, __s + 1, v23 - 1);
        return 0;
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }
    }
  }

  else
  {
LABEL_12:
    v11 = a2[1];
  }

  v16 = 2315264000;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", __s, v8, v11);
  if (*(a4 + 1072))
  {
    v17 = 0;
    v18 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "word[%d] %d,%d", v18++, *(*(a4 + 1064) + v17 + 16), *(*(a4 + 1064) + v17 + 18));
      v17 += 184;
    }

    while (v18 < *(a4 + 1072));
  }

  return v16;
}

uint64_t insert_NLU_infoNN(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a2;
  if (a2 == a3)
  {
    if (a2 + 1 == *(a5 + 1072))
    {
      v7 = a2 + 1;
    }

    else
    {
      v7 = a2;
    }
  }

  if (a2 >= v7)
  {
    return 0;
  }

  v10 = 184 * a2 + 88;
  v11 = a2 + 1;
  while (1)
  {
    v12 = *(a4 + 8);
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = *(*(a5 + 1064) + v10);
    if (v13)
    {
      heap_Free(*(a1 + 8), v13);
      *(*(a5 + 1064) + v10) = 0;
      v12 = *(a4 + 8);
    }

    v14 = strlen(v12);
    v15 = heap_Calloc(*(a1 + 8), 1, (v14 + 1));
    *(*(a5 + 1064) + v10) = v15;
    if (!v15)
    {
      break;
    }

    strcpy(v15, *(a4 + 8));
    *(*(a5 + 1064) + v10 + 8) = v8;
LABEL_12:
    v16 = *(a4 + 56);
    if (v16)
    {
      v17 = *(*(a5 + 1064) + v10 + 32);
      if (v17)
      {
        heap_Free(*(a1 + 8), v17);
        *(*(a5 + 1064) + v10 + 32) = 0;
        v16 = *(a4 + 56);
      }

      v18 = strlen(v16);
      v19 = heap_Calloc(*(a1 + 8), 1, (v18 + 1));
      *(*(a5 + 1064) + v10 + 32) = v19;
      if (!v19)
      {
        break;
      }

      strcpy(v19, *(a4 + 56));
    }

    v20 = *(a4 + 40);
    if (v20)
    {
      v21 = strlen(v20);
      v22 = heap_Realloc(*(a1 + 8), *(*(a5 + 1064) + v10 + 56), (v21 + 32) & 0xFFFFFFE0);
      if (!v22)
      {
        break;
      }

      *(*(a5 + 1064) + v10 + 56) = strcpy(v22, *(a4 + 40));
    }

    v23 = *(a4 + 72);
    if (v23)
    {
      *(*(a5 + 1064) + v10 + 64) = v23;
      v24 = *(a4 + 64);
      if (v24)
      {
        v25 = strlen(v24);
        v26 = heap_Alloc(*(a1 + 8), v25 + 1);
        *(*(a5 + 1064) + v10 + 72) = v26;
        if (!v26)
        {
          break;
        }

        strcpy(v26, *(a4 + 64));
      }
    }

    v10 += 184;
    if (v7 == v11++)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t addMarkerTypeNN(uint64_t a1, char *__s2, const char *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 + 74);
  if (v12 <= *(a5 + 72))
  {
    v13 = *(a5 + 72);
  }

  else
  {
    v13 = *(a5 + 74);
  }

  v14 = 8 * v12;
  v15 = v13 - v12;
  do
  {
    if (!v15 || (v16 = *(a5 + 528)) == 0)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Ignoring marker :%s, as not in DEFMAPPING list", __s2);
      return 0;
    }

    v17 = strcmp((v16 + *(*(a5 + 536) + 4 * *(*(a5 + 64) + v14))), __s2);
    v14 += 8;
    --v15;
  }

  while (v17);
  if (v14 != 8)
  {
    return 0;
  }

  v18 = strlen(a3);
  v19 = heap_Calloc(*(a1 + 8), 1, (v18 + 1));
  *(*(a6 + 1064) + 184 * a4 + 128) = v19;
  if (v19)
  {
    strcpy(v19, a3);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t getNNSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = 0;
  v98 = 0;
  v5 = *(a5 + 1088);
  if (!v5)
  {
    return 0;
  }

  v6 = a5;
  v7 = *(a5 + 1096);
  v100 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  if (!*v5)
  {
    return 0;
  }

  v11 = strlen(v5);
  v12 = heap_Calloc(*(a1 + 8), 1, (v11 + 2));
  if (!v12)
  {
    inserted = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return inserted;
  }

  v13 = v12;
  v78 = v7;
  v76 = a3;
  v77 = a4;
  if (!*(v6 + 1072))
  {
LABEL_100:
    v61 = a2;
    v62 = (*(a2 + 104))(v76, v77, 2, v78, &v100);
    if ((v62 & 0x80000000) != 0)
    {
LABEL_112:
      inserted = v62;
    }

    else
    {
      while (v100)
      {
        v62 = (*(v61 + 168))(v76, v77);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_112;
        }

        if (v96 == 6)
        {
          v62 = (*(a2 + 168))(v76, v77, v100, 1, 1, &v94, &v97);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_112;
          }

          v62 = (*(a2 + 168))(v76, v77, v100, 2, 1, &v94 + 2, &v97);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_112;
          }

          if (v94 > HIWORD(v94))
          {
            inserted = 2315271857;
            goto LABEL_113;
          }

          v62 = (*(a2 + 176))(v76, v77, v100, 4, &v95, &v97);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_112;
          }

          v63 = v95;
          if (strcmp(v95, "_PR_"))
          {
            v64 = addTokenNN(a1, &v94, v63, v6);
            if ((v64 & 0x80000000) != 0)
            {
              inserted = v64;
              if (v64 != -1979703296)
              {
                goto LABEL_113;
              }
            }
          }
        }

        v61 = a2;
        v62 = (*(a2 + 120))(v76, v77, v100, &v100);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_112;
        }
      }

      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Added words information", 0);
      inserted = (*(v61 + 176))(v76, v77, v78, 1, &v99, &v98);
      if ((inserted & 0x80000000) == 0)
      {
        LOWORD(v66) = v98;
        if (v98)
        {
          v67 = 0;
          v68 = 0;
          do
          {
            v69 = v99 + 32 * v68;
            if (*v69 == 21)
            {
              DomainFromPausingDefs = getDomainFromPausingDefs(v6 + 1104, *(v69 + 24), &v93);
              v66 = v98;
              if (DomainFromPausingDefs == 1)
              {
                v71 = v68 + 1;
                if (v98 > (v68 + 1))
                {
                  v72 = a1;
                  v73 = v99;
                  v74 = v99 + 32 * v68;
                  while (1)
                  {
                    v75 = v73 + 32 * v71;
                    if (*v75 == 21)
                    {
                      if (strcmp(*(v74 + 24), *(v75 + 24)))
                      {
                        break;
                      }
                    }

                    if (v66 <= ++v71)
                    {
                      goto LABEL_129;
                    }
                  }

                  v68 = v71 - (v71 + 1 != v67);
LABEL_129:
                  a1 = v72;
                }
              }
            }

            v67 = ++v68;
          }

          while (v68 < v66);
        }
      }
    }

    goto LABEL_113;
  }

  v14 = 0;
  v81 = a1;
  v79 = v5;
  v80 = v12;
  v89 = v6;
  while (1)
  {
    v15 = *(v6 + 1064) + 184 * v14;
    *(v15 + 80) = 0;
    *(v15 + 88) = 0;
    *(v15 + 120) = 0;
    *(v15 + 128) = 0;
    *(v15 + 144) = 0u;
    *(v15 + 160) = 0u;
    v94 = *(v15 + 16);
    v16 = v94;
    v17 = v94 >> 16;
    strncpy(v13, &v5[v16], (v16 >> 16) - v16);
    v13[v17 - v94] = 0;
    if (v17 == v16)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v16, v16);
      goto LABEL_96;
    }

    v18 = doesWordEndInComma(v13);
    v19 = *(v6 + 1064);
    if (v18)
    {
      *(v19 + 184 * *(v6 + 1072) - 84) = 1;
    }

    v20 = *(v19 + 184 * v14 + 40);
    if (v20)
    {
      break;
    }

LABEL_96:
    if (++v14 >= *(v6 + 1072))
    {
      goto LABEL_100;
    }
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v101 = 0u;
  v21 = strlen(v20);
  v22 = heap_Calloc(*(a1 + 8), 1, (v21 + 1));
  if (!v22)
  {
LABEL_116:
    inserted = 2315264010;
    a1 = v81;
    log_OutPublic(*(v81 + 32), "FE_PHRASING", 37000, 0);
    v13 = v80;
    goto LABEL_113;
  }

  v23 = v22;
  v82 = v20;
  v24 = strcpy(v22, v20);
  for (i = &v23[strlen(v24) - 1]; i >= v23; --i)
  {
    v26 = *i;
    v27 = v26 > 0x3B;
    v28 = (1 << v26) & 0x800000100002600;
    if (v27 || v28 == 0)
    {
      break;
    }

    *i = 0;
  }

  v30 = 0;
  v92 = 0;
  v90 = 0;
  v91 = 0uLL;
  v88 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v31 = 0;
  v32 = v23;
  do
  {
    v33 = strchr(v32, 59);
    v34 = v33;
    if (v33)
    {
      *v33 = 0;
    }

    v35 = strchr(v32, 58);
    v36 = v35;
    if (v35)
    {
      *v35 = 0;
      v37 = v35 + 1;
    }

    else
    {
      v37 = "null";
    }

    if (!strcmp(v32, "POS"))
    {
      inserted = 0;
      v31 = v37;
      goto LABEL_45;
    }

    if (!strcmp(v32, "PHR"))
    {
      inserted = 0;
      v30 = v37;
      goto LABEL_45;
    }

    if (!strcmp(v32, "BND"))
    {
      inserted = 0;
      v92 = v37;
      goto LABEL_45;
    }

    if (!strcmp(v32, "BNDSHAPE"))
    {
      inserted = 0;
      v90 = v37;
      goto LABEL_45;
    }

    if (!strcmp(v32, "S_POI"))
    {
      inserted = 0;
      v40 = "B";
LABEL_44:
      *(&v91 + 1) = v40;
      *&v91 = v37;
      goto LABEL_45;
    }

    if (!strcmp(v32, "I_POI"))
    {
      inserted = 0;
      v40 = "I";
      goto LABEL_44;
    }

    if (!strcmp(v32, "E_POI"))
    {
      inserted = 0;
      v40 = "S";
      if (!*(&v91 + 1))
      {
        v40 = "E";
      }

      goto LABEL_44;
    }

    if (!strcmp(v32, "PRM"))
    {
      inserted = 0;
      v88 = v37;
      goto LABEL_45;
    }

    v38 = *(v89 + 1760);
    if (v38 == 1)
    {
      if (!strcmp(v32 + 1, "_COMP"))
      {
        v41 = strlen(v37);
        v42 = heap_Calloc(*(v81 + 8), 1, (v41 + 3));
        if (!v42)
        {
          goto LABEL_116;
        }

        v43 = v42;
        v44 = strcmp(v32, "S_COMP");
        v45 = "I-";
        if (!v44)
        {
          v45 = "B-";
        }

        *v43 = *v45;
        v43[2] = v45[2];
        strcat(v43, v37);
        v46 = v43;
        inserted = 0;
        v85 = v46;
        v86 = v46;
        goto LABEL_45;
      }
    }

    else if (!v38 && !strcmp(v32, "COMP"))
    {
      inserted = 0;
      v86 = v37;
      goto LABEL_45;
    }

    if (!v36 || v36 <= v32 + 1)
    {
      goto LABEL_54;
    }

    if (!strcmp(v32 + 1, "_CLASS"))
    {
      inserted = 0;
      v83 = v37;
      goto LABEL_45;
    }

    if (!strcmp(v32 + 1, "_PUNC"))
    {
      v47 = v84;
      if (!v84)
      {
        v48 = strlen(v82);
        v47 = heap_Calloc(*(v81 + 8), 1, (v48 + 1));
        if (!v47)
        {
          inserted = 2315264010;
          a1 = v81;
          log_OutPublic(*(v81 + 32), "FE_PHRASING", 37000, 0);
          v51 = v23;
          v13 = v80;
          v60 = v85;
LABEL_92:
          heap_Free(*(a1 + 8), v51);
          goto LABEL_93;
        }

        *v47 = 0;
      }

      *v36 = 58;
      v84 = v47;
      hlp_NLUStrJoin(v47, v32);
      inserted = 0;
    }

    else
    {
LABEL_54:
      inserted = addMarkerTypeNN(v81, v32, v37, v14, v89 + 1104, v89);
    }

LABEL_45:
    if (!v34)
    {
      break;
    }

    v32 = v34 + 1;
  }

  while ((inserted & 0x80000000) == 0);
  v49 = v86;
  v50 = v83;
  v51 = v84;
  *&v104 = v84;
  *(&v104 + 1) = v86;
  v52 = v88;
  *&v103 = v88;
  *(&v103 + 1) = v83;
  v53 = v90;
  v55 = v91;
  v54 = v92;
  v105 = v91;
  *&v102 = v92;
  *(&v102 + 1) = v90;
  *&v101 = v31;
  *(&v101 + 1) = v30;
  v56 = "(null)";
  if (v31)
  {
    v57 = v31;
  }

  else
  {
    v57 = "(null)";
  }

  if (v30)
  {
    v58 = v30;
  }

  else
  {
    v58 = "(null)";
  }

  if (!v92)
  {
    v54 = "(null)";
  }

  if (!v90)
  {
    v53 = "(null)";
  }

  if (!v88)
  {
    v52 = "(null)";
  }

  if (!v83)
  {
    v50 = "(null)";
  }

  if (v84)
  {
    v59 = v84;
  }

  else
  {
    v59 = "(null)";
  }

  if (!v86)
  {
    v49 = "(null)";
  }

  if (!v91)
  {
    v55 = "(null)";
  }

  if (*(&v91 + 1))
  {
    v56 = *(&v91 + 1);
  }

  a1 = v81;
  log_OutText(*(v81 + 32), "FE_PHRASING", 5, 0, "parsed NLU %s[%d,%d] -> POS=%s, PHR=%s, BND=%s, BNDSHAPE=%s, PRM=%s, CLASS=%s, PUNC=%s, COMP=%s, POIClass=%s, POIPosi=%s", v82, v14, v14 + 1, v57, v58, v54, v53, v52, v50, v59, v49, v55, v56);
  v13 = v80;
  v60 = v85;
  if ((inserted & 0x80000000) == 0)
  {
    if (!v31)
    {
      log_OutText(*(v81 + 32), "FE_PHRASING", 5, 0, "missing POS in NLU string: arg=%s", v23);
    }

    inserted = insert_NLU_infoNN(v81, v14, (v14 + 1), &v101, v89);
  }

  heap_Free(*(v81 + 8), v23);
  if (v84)
  {
    goto LABEL_92;
  }

LABEL_93:
  v5 = v79;
  if (v60)
  {
    heap_Free(*(a1 + 8), v60);
  }

  v6 = v89;
  if ((inserted & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

LABEL_113:
  heap_Free(*(a1 + 8), v13);
  return inserted;
}

uint64_t getDocumentClassNN(uint64_t a1)
{
  v1 = *(a1 + 1072);
  if (!*(a1 + 1072))
  {
    return 0;
  }

  v2 = 0;
  v3 = *(a1 + 1064);
  while (1)
  {
    v4 = v3 + 184 * v2;
    v5 = *(v4 + 144);
    if (v5)
    {
      if (strstr(*(v4 + 144), "joyfulstyle"))
      {
        return 1;
      }

      if (strstr(v5, "didacticstyle"))
      {
        return 2;
      }

      if (strstr(v5, "neutralstyle"))
      {
        break;
      }
    }

    if (v1 <= ++v2)
    {
      return 0;
    }
  }

  return 3;
}

uint64_t nnpuncPhrasing(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, const char *a6, char *__s)
{
  v7 = __s;
  if (strchr(__s, 44))
  {
  }

  DocumentClassNN = getDocumentClassNN(a2);
  v13 = *(a5 + *&aF_4[8 * DocumentClassNN]);
  if (!*(a5 + *&aF_4[8 * DocumentClassNN]))
  {
    v13 = 9;
  }

  v30 = v13;
  if (!*(a2 + 1088))
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "%s\n", "input parameter: sent is NULL");
    return 0;
  }

  v29 = a1;
  if (*(a2 + 1072))
  {
    v14 = 0;
    v15 = 176;
    v16 = *(a2 + 1064);
    v17 = -1;
    while (1)
    {
      v18 = doesWordEndInCommaNN(*(v16 + v15 - 112), a6);
      v16 = *(a2 + 1064);
      if ((v18 || *(v16 + v15 - 76) == 1 && *(v16 + v15 - 72)) && *(v16 + v15 - 68) && *(a2 + 1072))
      {
        *(v16 + v15 - 100) = 4;
      }

      v19 = v16 + v15;
      if (*(v16 + v15 - 76) == 1)
      {
        v20 = *(v19 - 72);
        v21 = strchr(v7, v20);
        if (v20)
        {
          v22 = v21 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (!v22 && !*(v16 + v15 - 68))
        {
          *(v16 + v15 - 100) = 3;
        }
      }

      v23 = *(v19 - 24);
      if (!v23)
      {
        goto LABEL_31;
      }

      v24 = *v23;
      if (v24 == 83)
      {
        break;
      }

      if (v24 == 69)
      {
        if (v23[1] || *(v16 + v15) < v30)
        {
          goto LABEL_31;
        }

        v25 = (v16 + v15 - 100);
LABEL_28:
        *v25 = 4;
        goto LABEL_31;
      }

      if (v24 == 66)
      {
        break;
      }

LABEL_31:
      ++v14;
      v15 += 184;
      ++v17;
      if (v14 >= *(a2 + 1072))
      {
        goto LABEL_34;
      }
    }

    if (v23[1] || v15 == 176)
    {
      goto LABEL_31;
    }

    v25 = (v16 + 184 * v17 + 76);
    goto LABEL_28;
  }

LABEL_34:
  printPhrasesNN(v29, a2);
  v26 = heap_Calloc(*(v29 + 8), 1024, 2);
  if (v26)
  {
    v27 = v26;
    printPhrasesNN(v29, a2);
    heap_Free(*(v29 + 8), v27);
    return 0;
  }

  log_OutPublic(*(v29 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t doesWordEndInCommaNN(uint64_t result, const char *a2)
{
  *__s2 = 0;
  if (result)
  {
    v2 = result;
    if (*result)
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
          if ((utf8_getUTF8Char(a2, v5, __s2) & 0x80000000) != 0)
          {
            break;
          }

          if (strstr(v2, __s2))
          {
            return 1;
          }

          v5 = v8 + strlen(__s2);
          ++v6;
        }

        while (v6 < v7);
      }
    }

    return 0;
  }

  return result;
}

uint64_t printPhrasesNN(uint64_t result, uint64_t a2)
{
  if (*(a2 + 1072))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = log_OutText(*(v3 + 32), "FE_PHRASING", 5, 0, "%s\t\t%c\n", *(*(a2 + 1064) + v4 + 56), *(*(a2 + 1064) + v4 + 76));
      ++v5;
      v4 += 184;
    }

    while (v5 < *(a2 + 1072));
  }

  return result;
}

uint64_t updateLingdbNNPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, const char *a7, int a8)
{
  v105 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  v16 = heap_Calloc(*(a1 + 8), 32, 1);
  if (v16)
  {
    v17 = v16;
    v18 = a5;
    v19 = a1;
    v98 = 0;
    v97 = 0;
    v96 = 0;
    v95 = 0;
    v93 = 0;
    v94 = 0;
    v92 = 0;
    v91 = 0;
    v20 = a4;
    v21 = *(v18 + 1096);
    v87 = v18;
    v86 = *(v18 + 1088);
    v22 = (*(a2 + 176))(a3, v20, v21, 1, &v92, &v91);
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }

    else
    {
      __s[0] = 0;
      v84 = a2;
      v89 = a3;
      v88 = v20;
      v23 = (*(a2 + 104))(a3, v20, 2, v21, &v98 + 2);
      if ((v23 & 0x80000000) != 0)
      {
        v25 = v19;
        v31 = v17;
        goto LABEL_138;
      }

      v24 = HIWORD(v98);
      v25 = v19;
      if (HIWORD(v98))
      {
        v79 = a7;
        v26 = 0;
        v85 = 0;
        v27 = a6;
        v28 = v88;
        v29 = a3;
        v30 = a8;
        v31 = v17;
        v80 = v27;
        v81 = a8;
        while (1)
        {
          v23 = (*(v84 + 168))(v29, v28, v24, 0, 1, &v96, &v97 + 2);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_138;
          }

          if (v96 <= 0xA && ((1 << v96) & 0x610) != 0)
          {
            break;
          }

LABEL_120:
          v23 = (*(v84 + 120))(v29, v28, HIWORD(v98), &v98 + 2);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_138;
          }

          v24 = HIWORD(v98);
          if (!HIWORD(v98))
          {
            goto LABEL_130;
          }
        }

        v33 = *(v87 + 1064);
        v94 = *(v33 + 184 * v26 + 16);
        if (v94 == HIWORD(v94))
        {
          v25 = v19;
LABEL_119:
          if (*(v87 + 1072) <= ++v26)
          {
            goto LABEL_130;
          }

          goto LABEL_120;
        }

        HIWORD(v93) = 0;
        if (v26 | v85 && v85 >= v26)
        {
          __s[0] = 0;
          goto LABEL_46;
        }

        v34 = *(v87 + 1072);
        LOWORD(v35) = v26;
        if (v34 > v26)
        {
          v36 = (v33 + 184 * v26 + 112);
          v35 = v26;
          while (*(v36 - 36) - 3 >= 2 && !*v36)
          {
            ++v35;
            v36 += 46;
            if (v34 == v35)
            {
              goto LABEL_23;
            }
          }
        }

        if (v34 == v35)
        {
LABEL_23:
          v95 = *(v33 + 184 * *(v87 + 1072) - 166);
          if (*(v87 + 1768))
          {
            __strcpy_chk();
          }

          else
          {
            strcpy(__s, "T");
          }

          goto LABEL_33;
        }

        v95 = *(v33 + 184 * v35 + 18);
        if (v35 + 1 == v34)
        {
          if (*(v87 + 1768))
          {
            __strcpy_chk();
LABEL_32:
            LOWORD(v34) = v35;
LABEL_33:
            v85 = v34;
            if (v26)
            {
              if (*(*(v87 + 1064) + 184 * (v26 - 1) + 76) == 3)
              {
                v38 = 2;
              }

              else
              {
                v38 = 1;
              }
            }

            else
            {
              v38 = 0;
            }

            HIWORD(v93) = v38;
            if (__s[0])
            {
              LOWORD(v93) = 0;
              v39 = (*(v84 + 88))(v89, v28, HIWORD(v98), &v98);
              if ((v39 & 0x80000000) != 0 || (v96 = 15, v39 = (*(v84 + 160))(v89, v28, v98, 0, 1, &v96, &v97), (v39 & 0x80000000) != 0) || (v39 = (*(v84 + 160))(v89, v28, v98, 1, 1, &v94, &v97), (v39 & 0x80000000) != 0) || (v39 = (*(v84 + 160))(v89, v28, v98, 2, 1, &v95, &v97), (v39 & 0x80000000) != 0) || (v40 = strlen(__s), v39 = (*(v84 + 160))(v89, v28, v98, 4, (v40 + 1), __s, &v97), (v39 & 0x80000000) != 0) || (v39 = (*(v84 + 160))(v89, v28, v98, 7, 1, &v93 + 2, &v97), (v39 & 0x80000000) != 0) || (v39 = (*(v84 + 160))(v89, v28, v98, 8, 1, &v93, &v97), (v39 & 0x80000000) != 0))
              {
LABEL_136:
                v23 = v39;
LABEL_137:
                v25 = v19;
                goto LABEL_138;
              }
            }

LABEL_46:
            LOWORD(v93) = 0;
            v41 = *(v87 + 1064) + 184 * v26;
            if (*(v41 + 76) != 4 || *(v87 + 1072) - 1 == v26 || ((v42 = *(v41 + 56), v43 = strlen(v42), LOWORD(v93) = 100, !doesWordEndInCommaNN(v42, v79)) && (v44 = *(v87 + 1064) + 184 * v26, !*(v44 + 100)) && *(*(v44 + 56) + (v43 - 1)) != 46 ? (v45 = v93) : (v45 = v80, LOWORD(v93) = v80), v28 = v88, !v45))
            {
              if (*(*(v87 + 1064) + 184 * v26 + 112))
              {
                LOWORD(v93) = v80;
              }
            }

            v46 = HIWORD(v98);
            v101 = 0;
            v100 = 0;
            v99 = 0;
            v47 = (*(v84 + 184))(v89, v28, HIWORD(v98), 18, &v101);
            v23 = v47;
            if ((v47 & 0x80000000) != 0 || !v101)
            {
              v48 = v89;
              if ((v47 & 0x80000000) != 0)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v39 = (*(v84 + 176))(v89, v28, v46, 18, &v100, &v99);
              if ((v39 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }

              v48 = v89;
              if (!strcmp(v100, "external"))
              {
                goto LABEL_62;
              }
            }

            v39 = (*(v84 + 160))(v48, v28, HIWORD(v98), 8, 1, &v93, &v97);
            if ((v39 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

LABEL_62:
            v39 = (*(v84 + 176))(v48, v28, HIWORD(v98), 9, &__s1, &v97 + 2);
            if ((v39 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v49 = __s1;
            if (!strcmp(__s1, "normal"))
            {
              v52 = 0;
              v51 = *(v87 + 1064);
            }

            else
            {
              v50 = strcmp(v49, "mnx");
              v51 = *(v87 + 1064);
              if (v50)
              {
                v52 = *(v51 + 184 * v26 + 77);
              }

              else
              {
                v52 = 0;
              }
            }

            v53 = v51 + 184 * v26;
            v54 = *(v53 + 128);
            if (v54)
            {
              v55 = strlen(*(v53 + 128)) + 1;
              if (v55 >= 0x21)
              {
                v56 = heap_Realloc(*(v19 + 8), v31, v55);
                if (!v56)
                {
                  goto LABEL_140;
                }

                v54 = *(*(v87 + 1064) + 184 * v26 + 128);
                v31 = v56;
              }

              if (*v54 == 79 && !*(v54 + 1) || !strcmp(v54, "O-P"))
              {
                strcpy(v31, v54);
              }

              else
              {
                strcpy(v31, "B-");
                strcat(v31, *(*(v87 + 1064) + 184 * v26 + 128));
              }

              v57 = strlen(v31);
              if (v57 >= 2)
              {
                v58 = &v31[v57];
                if (v31[v57 - 2] == 45 && *(v58 - 1) == 80 && !*v58)
                {
                  v31[v57 - 2] = 0;
                }
              }
            }

            else if (*v31 && (*v31 != 79 || v31[1]))
            {
              *v31 = 73;
            }

            v59 = *(v87 + 1064) + 184 * v26;
            v60 = *(v59 + 80);
            if (v60)
            {
              v61 = strlen(v60);
              v62 = heap_Alloc(*(v19 + 8), v61 + 1);
              if (!v62)
              {
                goto LABEL_140;
              }

              v63 = v62;
              strcpy(v62, *(*(v87 + 1064) + 184 * v26 + 80));
            }

            else
            {
              v64 = *(v59 + 48);
              if (v64)
              {
                v65 = hlp_NLUStrValueLen(v64);
                v66 = heap_Alloc(*(v19 + 8), v65 + 1);
                if (!v66)
                {
LABEL_140:
                  v23 = 2315264010;
                  v25 = v19;
                  log_OutPublic(*(v19 + 32), "FE_PHRASING", 37000, 0);
                  goto LABEL_138;
                }

                v63 = v66;
                strncpy(v66, *(*(v87 + 1064) + 184 * v26 + 48), v65)[v65] = 0;
              }

              else
              {
                v63 = 0;
              }
            }

            v67 = *(v87 + 1064) + 184 * v26;
            v68 = *(v67 + 168);
            v69 = *(v67 + 40);
            v83 = v52;
            v82 = HIWORD(v98);
            if (v30)
            {
              if (!v69)
              {
                if (!*v31)
                {
LABEL_116:
                  v25 = v19;
                  if (v63)
                  {
                    heap_Free(*(v19 + 8), v63);
                  }

                  log_OutText(*(v19 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", HIWORD(v98), v26, v93, v78);
                  LH_itoa(v83, v102, 0xAu);
                  strlen(v102);
                  v29 = v89;
                  v28 = v88;
                  v23 = (*(v84 + 160))();
                  if ((v23 & 0x80000000) != 0)
                  {
                    goto LABEL_138;
                  }

                  goto LABEL_119;
                }

                v69 = 0;
                v70 = 1;
                v71 = 1;
                if (!v63)
                {
LABEL_101:
                  v72 = v71 + strlen(v31) + 5;
                  if (v68)
                  {
                    v72 += strlen(v68) + 10;
                  }

                  v73 = heap_Alloc(*(v19 + 8), v72);
                  if (!v73)
                  {
                    v23 = 2315264010;
                    goto LABEL_137;
                  }

                  v74 = v73;
                  LOWORD(v100) = 0;
                  if (v70)
                  {
                    *v73 = 0;
                    if (!v63)
                    {
                      goto LABEL_110;
                    }
                  }

                  else
                  {
                    strcpy(v73, v69);
                    if (!v63)
                    {
                      goto LABEL_110;
                    }
                  }

                  if (*v63)
                  {
                    hlp_NLUStrSet(v74, "POS", v63);
                  }

LABEL_110:
                  if (*v31)
                  {
                    hlp_NLUStrSet(v74, "PHR", v31);
                  }

                  if (v68 && *v68)
                  {
                    hlp_NLUStrSet(v74, "BNDSHAPE", v68);
                  }

                  log_OutText(*(v19 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", v82, v26, v69, v74);
                  v75 = strlen(v74);
                  v23 = (*(v84 + 160))(v89, v88, v82, 14, (v75 + 1), v74, &v100);
                  heap_Free(*(v19 + 8), v74);
                  v30 = v81;
                  if ((v23 & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  goto LABEL_116;
                }

LABEL_100:
                v71 += strlen(v63) + 5;
                goto LABEL_101;
              }
            }

            else if (!v69)
            {
              v71 = 1;
              v70 = 1;
              if (!v63)
              {
                goto LABEL_101;
              }

              goto LABEL_100;
            }

            v70 = 0;
            v71 = strlen(v69) + 1;
            if (!v63)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v37 = 84;
        }

        else
        {
          v37 = 80;
        }

        *__s = v37;
        goto LABEL_32;
      }

      v31 = v17;
LABEL_130:
      if (*__s == 87 || !(*__s ^ 0x4641 | v104))
      {
        v76 = strrchr(v86, 63);
        if (v76 && v76 != v86 && *(v76 - 1) != 32)
        {
          *v76 = 46;
        }
      }

LABEL_138:
      heap_Free(*(v25 + 8), v31);
    }
  }

  else
  {
    v23 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  }

  return v23;
}

void *freePwInObjClose(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = 0;
      do
      {
        v7 = *(*(a2 + 1) + 8 * v6);
        if (v7)
        {
          heap_Free(*(a1 + 8), v7);
          *(*(a2 + 1) + 8 * v6) = 0;
          v5 = *a2;
        }

        ++v6;
      }

      while (v6 < v5);
      v4 = *(a2 + 1);
    }

    heap_Free(*(a1 + 8), v4);
    *(a2 + 1) = 0;
    *a2 = 0;
  }

  v8 = *(a2 + 3);
  if (v8)
  {
    v9 = a2[16];
    if (a2[16])
    {
      v10 = 0;
      do
      {
        v11 = *(*(a2 + 3) + 8 * v10);
        if (v11)
        {
          heap_Free(*(a1 + 8), v11);
          *(*(a2 + 3) + 8 * v10) = 0;
          v9 = a2[16];
        }

        ++v10;
      }

      while (v10 < v9);
      v8 = *(a2 + 3);
    }

    heap_Free(*(a1 + 8), v8);
    *(a2 + 3) = 0;
    a2[16] = 0;
  }

  freePandPRules(a2 + 138);
  v12 = *(a1 + 8);

  return heap_Free(v12, a2);
}

void *freeSPPunc(void *result, uint64_t a2)
{
  if (a2)
  {
    return heap_Free(result[1], a2);
  }

  return result;
}

void *freeSentenceDataNN(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 1768);
  if (v4)
  {
    result = heap_Free(result[1], v4);
    *(a2 + 1768) = 0;
  }

  v5 = *(a2 + 1080);
  if (v5)
  {
    result = heap_Free(v3[1], v5);
    *(a2 + 1080) = 0;
  }

  v6 = *(a2 + 1064);
  if (v6)
  {
    if (*(a2 + 1072))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (*(v6 + v7 + 40))
        {
          heap_Free(v3[1], *(v6 + v7 + 40));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 40) = 0;
        }

        if (*(v6 + v7 + 24))
        {
          heap_Free(v3[1], *(v6 + v7 + 24));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 24) = 0;
        }

        if (*(v6 + v7 + 128))
        {
          heap_Free(v3[1], *(v6 + v7 + 128));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 128) = 0;
        }

        if (*(v6 + v7 + 144))
        {
          heap_Free(v3[1], *(v6 + v7 + 144));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 144) = 0;
        }

        if (*(v6 + v7 + 160))
        {
          heap_Free(v3[1], *(v6 + v7 + 160));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 160) = 0;
        }

        if (*(v6 + v7 + 168))
        {
          heap_Free(v3[1], *(v6 + v7 + 168));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 168) = 0;
        }

        if (*(v6 + v7))
        {
          heap_Free(v3[1], *(v6 + v7));
          v6 = *(a2 + 1064);
          *(v6 + v7) = 0;
        }

        ++v8;
        v7 += 184;
      }

      while (v8 < *(a2 + 1072));
    }

    result = heap_Free(v3[1], v6);
    *(a2 + 1064) = 0;
  }

  *(a2 + 1072) = 0;
  *(a2 + 1096) = 0;
  return result;
}

uint64_t nn_model_getBrokerString(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  *v10 = 0;
  memset(v11, 0, sizeof(v11));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v10);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v9);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v8 = brokeraux_ComposeBrokerString(a1, v11, 1, 1, *v10, 0, 0, a2, a4);
      return v8 & (v8 >> 31);
    }
  }

  return result;
}

uint64_t initFiModel(uint64_t a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, void *a10)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  memset(v27, 0, sizeof(v27));
  v25 = -1;
  BrokerString = (*(a8 + 96))(a6, a7, "fecfg", "statbnd_phrase_nn_type_joint", &v26, &v25, &v24);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v16 = 2315264010;
  if (v25)
  {
    (*v26)[strlen(*v26) - 1] = 0;
    if (!strcmp(*v26, "yes"))
    {
      *a9 = 1;
      v17 = *(a1 + 8);
      v18 = 8;
    }

    else
    {
      *a9 = 0;
      v17 = *(a1 + 8);
      v18 = 16;
    }

    v19 = heap_Alloc(v17, v18);
    if (!v19)
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      return v16;
    }

    v20 = v19;
    BrokerString = nn_model_getBrokerString(a1, v27, "nnphrase_", 0x100uLL);
    if ((BrokerString & 0x80000000) == 0)
    {
      v16 = fi_init(a2, a3, a4, a5, &v23, 0, v27, "FINN", 1031, 0);
      if ((v16 & 0x80000000) != 0)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "load FI model failed");
        return v16;
      }

      *v20 = v23;
      if (*a9)
      {
LABEL_11:
        *a10 = v20;
        return v16;
      }

      BrokerString = nn_model_getBrokerString(a1, v27, "nnword_", 0x100uLL);
      if ((BrokerString & 0x80000000) == 0)
      {
        v16 = fi_init(a2, a3, a4, a5, &v22, 0, v27, "FINN", 1031, 0);
        if ((v16 & 0x80000000) != 0)
        {
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "load FI pw model failed");
          return v16;
        }

        v20[1] = v22;
        goto LABEL_11;
      }
    }

    return BrokerString;
  }

  return 2315264020;
}

uint64_t loadEmbedding(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, _BOOL4 *a9)
{
  v25 = 0;
  v26 = 0;
  __lasts = 0;
  v23 = -1;
  v22 = 0;
  result = (*(a8 + 96))(a6, a7, "fecfg", "statbnd_embed_type", &v25, &v23, &v22);
  if ((result & 0x80000000) == 0)
  {
    result = 2315264020;
    if (v23)
    {
      if (v25)
      {
        (*v25)[strlen(*v25) - 1] = 0;
        v15 = strtok_r(*v25, "|", &__lasts);
        v16 = !strcmp(v15, "joint_char") && !strcmp(__lasts, "joint_word");
        *a9 = v16;
        result = nn_word_lkp_GetInterface(1u, &v26);
        if ((result & 0x80000000) == 0)
        {
          *a5 = safeh_GetNullHandle();
          a5[1] = v17;
          a5[2] = safeh_GetNullHandle();
          a5[3] = v18;
          v19 = *(v26 + 16);
          v20 = *a4;
          v21 = a4[1];
          if (*a9)
          {
            result = v19(v20, v21, "joint_char", a1, a2, a5);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(v26 + 16))(*a4, a4[1], "joint_word", a1, a2, a5 + 2);
          }

          else
          {
            result = v19(v20, v21, "albert", a1, a2, a5);
          }

          if ((result & 0x80000000) == 0)
          {
            *a3 = v26;
          }
        }
      }
    }
  }

  return result;
}

void *freeSpRules(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
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
                if (*(v8 + v9 + 24))
                {
                  heap_Free(v4[1], *(v8 + v9 + 24));
                  v3 = *a2;
                  v8 = *(*a2 + 16 * v6);
                  *(v8 + v9 + 24) = 0;
                }

                if (*(v8 + v9 + 16))
                {
                  heap_Free(v4[1], *(v8 + v9 + 16));
                  v3 = *a2;
                  v8 = *(*a2 + 16 * v6);
                  *(v8 + v9 + 16) = 0;
                }

                ++v10;
                v9 += 40;
              }

              while (v10 < *(v3 + 16 * v6 + 8));
            }

            heap_Free(v4[1], v8);
            v3 = *a2;
            v11 = *a2 + 16 * v6;
            *v11 = 0;
            *(v11 + 8) = 0;
            v5 = *(a2 + 10);
          }

          ++v6;
        }

        while (v6 < v5);
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
      *(a2 + 10) = 0;
    }
  }

  return result;
}

uint64_t nnEmbeddingReLoad(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, _BOOL4 *a9)
{
  if (*a3)
  {
    result = (*(*a3 + 24))(*a5, a5[1]);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (*a9)
    {
      result = (*(*a3 + 24))(a5[2], a5[3]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    *a3 = 0;
  }

  *a4 = safeh_GetNullHandle();
  a4[1] = v18;
  *a9 = 1;

  return loadEmbedding(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t nnModelReload(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t **a11)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  memset(v31, 0, sizeof(v31));
  v17 = *a11;
  v29 = -1;
  (*(a9 + 96))(a7, a8, "fecfg", "statbnd_phrase_nn_type_joint", &v30, &v29, &v28);
  (*v30)[strlen(*v30) - 1] = 0;
  v18 = strcmp(*v30, "yes");
  BrokerString = nn_model_getBrokerString(a1, v31, "nnphrase_", 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v20 = fi_init(a2, a3, a5, a6, &v27, 0, v31, "FINN", 1031, 0);
  if ((v20 & 0x80000000) != 0)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "load FI model failed");
    return v20;
  }

  if (!v17)
  {
    v21 = *(a1 + 8);
    if (v18)
    {
      v22 = heap_Alloc(v21, 16);
      if (v22)
      {
        v17 = v22;
        *v22 = v27;
LABEL_13:
        BrokerString = nn_model_getBrokerString(a1, v31, "nnword_", 0x100uLL);
        if ((BrokerString & 0x80000000) == 0)
        {
          v20 = fi_init(a2, a3, a5, a6, &v26, 0, v31, "FINN", 1031, 0);
          if ((v20 & 0x80000000) != 0)
          {
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "load FI pw model failed");
            return v20;
          }

          v17[1] = v26;
          goto LABEL_22;
        }

        return BrokerString;
      }
    }

    else
    {
      v24 = heap_Alloc(v21, 8);
      if (v24)
      {
        v17 = v24;
        *v24 = v27;
LABEL_22:
        *a10 = v18 == 0;
        *a11 = v17;
        return v20;
      }
    }

    v20 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return v20;
  }

  if (!*v17 || (v20 = fi_deinit(a1, a4, *v17), (v20 & 0x80000000) == 0))
  {
    if (*a10 || (v23 = v17[1]) == 0 || (v20 = fi_deinit(a1, a4, v23), (v20 & 0x80000000) == 0))
    {
      *v17 = v27;
      if (!v18)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }
  }

  return v20;
}

uint64_t releaseEmbedding(uint64_t a1, uint64_t *a2, void *a3, _DWORD *a4)
{
  if (!*a1)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = (*(*a1 + 24))(*a3, a3[1]);
  if ((v8 & 0x80000000) == 0)
  {
    if (!*a4 || (v8 = (*(*a1 + 24))(a3[2], a3[3]), (v8 & 0x80000000) == 0))
    {
      *a1 = 0;
LABEL_7:
      *a2 = safeh_GetNullHandle();
      a2[1] = v9;
      *a4 = 1;
    }
  }

  return v8;
}

uint64_t releaseFIModel(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v5 = *a4;
  if (!*a4)
  {
    v8 = 0;
    goto LABEL_10;
  }

  if (!*v5)
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_10:
    heap_Free(*(a1 + 8), v5);
    return v8;
  }

  v8 = fi_deinit(a1, a2, *v5);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (a3)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = *(v5 + 8);
  if (!v9)
  {
    goto LABEL_10;
  }

  v8 = fi_deinit(a1, a2, v9);
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  return v8;
}

void *setbndfromTN(void *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    if (*a2)
    {
      v5 = *(a3 + 1072);
      if (*(a3 + 1072))
      {
        v6 = 0;
        v7 = 0;
        v8 = *(a2 + 4);
        v9 = *(a3 + 1064);
        v10 = (v9 + 112);
        v11 = -1;
        do
        {
          if (v7 < v8 && *(*(a2 + 8) + 4 * v7) == *(v10 - 48))
          {
            if (v6)
            {
              v12 = *(*(a2 + 16) + 2 * v7);
              *(v9 + 184 * v11 + 112) = v12 > 2;
              if (v12 == 4)
              {
                *(v9 + 184 * v11 + 100) = 1;
              }
            }

            ++v7;
          }

          else
          {
            *v10 = 0;
          }

          ++v6;
          v10 += 46;
          ++v11;
        }

        while (v5 != v6);
      }

      v13 = *(a2 + 8);
      if (v13)
      {
        heap_Free(v4[1], v13);
      }

      v14 = *(a2 + 16);
      if (v14)
      {
        heap_Free(v4[1], v14);
      }
    }

    v15 = v4[1];

    return heap_Free(v15, a2);
  }

  return result;
}

uint64_t last_POS(uint64_t result, void *a2, unsigned int a3, const char **a4, unsigned int a5)
{
  if (!result)
  {
    return result;
  }

  v6 = 0;
  for (i = *(*(*a2 + 224 * a3 + 16) + 8) + 1; *(i - 1) == 45; ++i)
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
    v8 = *(*(*a2 + 224 * a3 + 16) + 8);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a5;
  while (strcmp(*a4, v8))
  {
    ++a4;
    if (!--v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t first_POS(uint64_t a1, void *a2, unsigned int a3, const char **a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = *(a1 + 8);
  v11 = strlen(*(*(*a2 + 224 * a3 + 16) + 8));
  v12 = heap_Alloc(v10, (v11 + 1));
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  for (i = *(*(*a2 + 224 * a3 + 16) + 8); ; ++i)
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
    while (strcmp(v13, *a4))
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

uint64_t has_POS(uint64_t a1, void *a2, unsigned int a3, const char **a4, unsigned int a5)
{
  result = 0;
  if (a1 && a5)
  {
    v8 = *(*(*a2 + 224 * a3 + 16) + 8);
    v9 = a5;
    while (!strstr(v8, *a4))
    {
      ++a4;
      if (!--v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t first_character(uint64_t result, void *a2, unsigned int a3, const char **a4, int a5)
{
  if (result)
  {
    LODWORD(v5) = a5;
    utf8_getUTF8Char(**(*a2 + 224 * a3 + 16), 0, __s2);
    if (v5)
    {
      v5 = v5;
      while (strcmp(*a4, __s2))
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

uint64_t last_character(uint64_t result, void *a2, unsigned int a3, const char **a4, int a5)
{
  v15 = 0;
  *__s2 = 0;
  if (result)
  {
    LODWORD(v5) = a5;
    v7 = **(*a2 + 224 * a3 + 16);
    v8 = strlen(v7);
    v9 = v8 - utf8_GetCurrentUtf8Offset(v7, v8 - 1);
    v10 = strlen(v7);
    CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v7, v10 - 1);
    if (v9 >= Utf8_LengthInBytes(&v7[CurrentUtf8Offset], 1))
    {
      v12 = strlen(v7);
      v13 = utf8_GetCurrentUtf8Offset(v7, v12 - 1);
      utf8_getUTF8Char(v7, v13, __s2);
    }

    if (v5)
    {
      v5 = v5;
      while (strcmp(*a4, __s2))
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

uint64_t initPhrasingRuleStruct(uint64_t a1, uint64_t a2, unsigned int a3)
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

uint64_t addPhrasingRule(uint64_t a1, uint64_t a2, const char *a3)
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
  result = parseOneRule(a1, v8, v6, a3);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t parseOneRule(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
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
    v10 = a4 - 1;
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
    *(v15 + 8) = atoi(v10);
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
    if (!strcmp(v13, "last-pos"))
    {
      *v15 = last_POS;
    }

    if (!strcmp(v13, "first-pos"))
    {
      *v15 = first_POS;
    }

    if (!strcmp(v13, "has-pos"))
    {
      *v15 = has_POS;
    }

    if (!strcmp(v13, "first-character"))
    {
      *v15 = first_character;
    }

    if (!strcmp(v13, "last-character"))
    {
      *v15 = last_character;
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
      strcpy(v25, v18);
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

uint64_t releasePhrasingRuleStruct(uint64_t a1, uint64_t a2)
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
        v7 = *a2;
        v8 = *a2 + 16 * v6;
        v9 = *v8;
        if (*v8)
        {
          if (*(v8 + 8))
          {
            v10 = 0;
            v11 = 0;
            do
            {
              v12 = *(*v8 + v10 + 16);
              if (v12)
              {
                heap_Free(*(a1 + 8), v12);
                v7 = *a2;
              }

              v13 = *(*(v7 + 16 * v6) + v10 + 24);
              if (v13)
              {
                heap_Free(*(a1 + 8), v13);
                v7 = *a2;
              }

              ++v11;
              v8 = v7 + 16 * v6;
              v10 += 40;
            }

            while (v11 < *(v8 + 8));
            v9 = *v8;
          }

          heap_Free(*(a1 + 8), v9);
          v5 = *(a2 + 10);
        }

        ++v6;
      }

      while (v6 < v5);
      v3 = *a2;
    }

    heap_Free(*(a1 + 8), v3);
  }

  *(a2 + 10) = 0;
  *a2 = 0;
  return 0;
}

uint64_t applyRules(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
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
      v13 = *(a2 + 8);
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

uint64_t setPhraseProminences(uint64_t a1)
{
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setPhraseProminences()", 0);
  v19 = (a1 + 736);
  if (((*(a1 + 744) - 1) & 0x8000) != 0)
  {
LABEL_20:
    v16 = *(a1 + 1108);
    v17 = *(a1 + 1096);

    return printLevel(v16, (a1 + 1088), v17, (a1 + 1104), (a1 + 672), (a1 + 8), v19, "AFTER SET PHRASE PROMINENCE");
  }

  else
  {
    v2 = (*(a1 + 744) - 1);
    while (1)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing (phrase) node %d", v2);
      result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), (*(a1 + 736) + 32 * v2), v2);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v4 = *v19;
      v18 = v2;
      v5 = (*v19 + 32 * v2);
      v6 = (v5[1] - 1);
      if (v6 >= *v5)
      {
        v7 = 0;
        v8 = *(a1 + 304);
        do
        {
          v9 = v6;
          if (v8)
          {
            for (i = 0; i < v8; ++i)
            {
              v11 = *(a1 + 672) + 224 * v9;
              v12 = *(v11 + 16);
              if (!strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 296) + 4 * i))), *(v12 + 8 * *(a1 + 26))))
              {
                v13 = v7 == 0;
                v7 = 1;
                if (v13)
                {
                  v14 = 2;
                }

                else
                {
                  v14 = 1;
                }

                if (v13)
                {
                  v15 = "set word[%d] %s to _MAINACCENT";
                }

                else
                {
                  v15 = "set word[%d] %s to _ACCENTED";
                }

                *(v11 + 72) = v14;
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, v15, v9, *(v12 + 8 * *(a1 + 24)));
              }

              v8 = *(a1 + 304);
            }

            v4 = *v19;
          }

          v6 = (v9 - 1);
        }

        while (v6 >= *(v4 + 32 * v18));
      }

      v2 = v18 - 1;
      if (v18 < 1)
      {
        goto LABEL_20;
      }
    }
  }

  return result;
}

uint64_t setCompoundProminences(uint64_t a1)
{
  v35 = 0;
  v34 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setCompoundProminences()", 0);
  if (((*(a1 + 744) - 1) & 0x8000) == 0)
  {
    v2 = (a1 + 672);
    v3 = (*(a1 + 744) - 1);
    memset(v33, 0, sizeof(v33));
    v32 = 0;
    while (1)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing (phrase) node %d", v3);
      matched = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), (*(a1 + 736) + 32 * v3), v3);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      v5 = (*(a1 + 736) + 32 * v3);
      v6 = (v5[1] - 1);
      v7 = *v5;
      if (v6 >= v7)
      {
        break;
      }

LABEL_5:
      v17 = v3-- < 1;
      if (v17)
      {
        return matched;
      }
    }

    while (1)
    {
      v8 = *(*v2 + 224 * v6 + 56);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = v8 + 32 * v9;
        if (*(v10 + 4) == 1)
        {
          v11 = *(v10 + 8);
          if (v11 >= v7)
          {
            v12 = *(*(*v2 + 224 * *(v10 + 8) + 56) + 32 * v9 + 16);
            if (*v12 == 78 && v12[1] == 80 && !v12[2])
            {
              break;
            }
          }
        }
      }

LABEL_16:
      v6 = (v6 - 1);
      v7 = *(*(a1 + 736) + 32 * v3);
      if (v6 < v7)
      {
        goto LABEL_5;
      }
    }

    v13 = v6;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  processing (NP phrase) node %d,%d", *(v10 + 8), v6);
    v35 = 0;
    v34 = 0;
    if (v6 < v11)
    {
LABEL_15:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    no rules fire", 0);
      goto LABEL_16;
    }

    v14 = v6;
    while (1)
    {
      v15 = *v2 + 224 * v14;
      v16 = v14 - 1;
      v17 = *(v15 + 72) != 2 || v14 < 1;
      if (!v17 && v13 > v11)
      {
        v19 = *v2 + 224 * (v14 - 1);
        if (*(v19 + 72) == 1)
        {
          v29 = (v14 - 1);
          v30 = v14;
          v31 = v14 - 1;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    found PRM pattern word[%d]=%s PRM=%d word[%d]=%s PRM=%d : apply rules", v29, *(*(v19 + 16) + 8 * *(a1 + 24)), 1, v14, *(*(v15 + 16) + 8 * *(a1 + 24)), 2);
          *&v33[4] = v14;
          *v33 = 1;
          *&v33[6] = 0;
          if (*(a1 + 320))
          {
            v20 = 0;
            v21 = 0;
            while (1)
            {
              v22 = *(a1 + 312);
              v23 = v21;
              v24 = *(v22 + 24 * v21);
              if (v24)
              {
                matched = matchPANDPCONTEXT_TRule("LEFT", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v24, v33, &v35 + 1, &v32, 1);
                if ((matched & 0x80000000) != 0)
                {
                  return matched;
                }

                if (HIDWORD(v35) != 1)
                {
                  goto LABEL_46;
                }

                v22 = *(a1 + 312);
              }

              else
              {
                HIDWORD(v35) = 1;
              }

              v25 = *(v22 + 24 * v23 + 8);
              if (v25)
              {
                matched = matchPANDPCONTEXT_TRule("CUR", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v25, v33, &v35, &v32, 0);
                if ((matched & 0x80000000) != 0)
                {
                  return matched;
                }

                if (v35 != 1)
                {
                  goto LABEL_46;
                }

                v22 = *(a1 + 312);
              }

              else
              {
                LODWORD(v35) = 1;
              }

              v26 = *(v22 + 24 * v23 + 16);
              if (!v26)
              {
                v34 = 1;
LABEL_46:
                v16 = v31;
                goto LABEL_47;
              }

              matched = matchPANDPCONTEXT_TRule("RIGHT", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v26, v33, &v34, &v32, 2);
              v16 = v31;
              if ((matched & 0x80000000) != 0)
              {
                return matched;
              }

LABEL_47:
              if (v35 == 0x100000001 && v34 == 1)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  stress shift rule %d FIRED", v20);
                v27 = *(a1 + 672);
                *(v27 + 224 * v30 + 72) = 1;
                *(v27 + 224 * v29 + 72) = 2;
                goto LABEL_16;
              }

              v21 = v23 + 1;
              v20 = (v23 + 1);
              if (v20 >= *(a1 + 320))
              {
                goto LABEL_27;
              }
            }
          }

          v16 = v14 - 1;
        }
      }

LABEL_27:
      v13 = v16;
      v14 = v16;
      if (v16 < v11)
      {
        goto LABEL_15;
      }
    }
  }

  return 0;
}

uint64_t getProminence(uint64_t a1)
{
  result = setPhraseProminences(a1);
  if ((result & 0x80000000) == 0)
  {
    result = setCompoundProminences(a1);
    if ((result & 0x80000000) == 0)
    {
      v3 = *(a1 + 1108);
      v4 = *(a1 + 1096);

      return printAsString(v3, (a1 + 1088), v4, (a1 + 1104), (a1 + 672), (a1 + 8), (a1 + 736), "FEPHRRES: ");
    }
  }

  return result;
}

uint64_t logPANDPRULE_TRule(uint64_t result, char **a2, _WORD *a3, char *__s, uint64_t *a5, uint64_t **a6)
{
  if (result)
  {
    if (!*a6 || (result = logPANDPCONTEXT_TRule(a2, a3, __s, a5, *a6), (result & 0x80000000) == 0))
    {
      *__s = 2121504;
      result = add2Str(*a5, a2, a3, __s);
      if ((result & 0x80000000) == 0)
      {
        v11 = a6[1];
        if (!v11 || (result = logPANDPCONTEXT_TRule(a2, a3, __s, a5, v11), (result & 0x80000000) == 0))
        {
          *__s = 2121504;
          result = add2Str(*a5, a2, a3, __s);
          if ((result & 0x80000000) == 0)
          {
            v12 = a6[2];
            if (v12)
            {

              return logPANDPCONTEXT_TRule(a2, a3, __s, a5, v12);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t logPANDPCONTEXT_TRule(char **a1, _WORD *a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  if (*(a5 + 4))
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *a5;
      v13 = (*a5 + v10);
      if (*(v13 + 4))
      {
        break;
      }

LABEL_17:
      result = add2Str(*a4, a1, a2, "[");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(*a4, a1, a2, (a4[66] + *(a4[67] + 4 * *(a4[8] + 8 * *v13 + 4))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      sprintf(__s, " %d(", *(v12 + v10 + 2));
      result = add2Str(*a4, a1, a2, __s);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(*a4, a1, a2, (a4[61] + *(a4[62] + 4 * *(v12 + v10 + 2))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(*a4, a1, a2, ")] ");
LABEL_22:
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

    if (v13[2])
    {
      *__s = 33;
    }

    else
    {
      if ((v13[2] & 2) != 0)
      {
        v14 = 0;
        strcpy(__s, "HASCOMMA ");
        goto LABEL_15;
      }

      if ((v13[2] & 4) != 0)
      {
        v14 = 0;
        strcpy(__s, "DIRECTIVE_MOVE2NEXT ");
        goto LABEL_15;
      }

      if ((v13[2] & 8) != 0)
      {
        v14 = 0;
        strcpy(__s, "ISLASTINPHR ");
        goto LABEL_15;
      }

      if ((v13[2] & 0x10) != 0)
      {
        v14 = 0;
        strcpy(__s, "ISFIRSTINPHR ");
LABEL_15:
        result = add2Str(*a4, a1, a2, __s);
        if (!v14 || (result & 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }
    }

    v14 = 1;
    goto LABEL_15;
  }

  return 0;
}

void *freePANDPRULE_TRule(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    if (*(v4 + 8))
    {
      heap_Free(result[1], *v4);
      *v4 = 0;
      v4 = *a2;
    }

    result = heap_Free(v3[1], v4);
    *a2 = 0;
  }

  v5 = a2[1];
  if (v5)
  {
    if (*(v5 + 8))
    {
      heap_Free(v3[1], *v5);
      *v5 = 0;
      v5 = a2[1];
    }

    result = heap_Free(v3[1], v5);
    a2[1] = 0;
  }

  v6 = a2[2];
  if (v6)
  {
    if (*(v6 + 8))
    {
      heap_Free(v3[1], *v6);
      *v6 = 0;
      v6 = a2[2];
    }

    result = heap_Free(v3[1], v6);
    a2[2] = 0;
  }

  return result;
}

uint64_t freePandPRules(void *a1)
{
  v2 = *a1;
  v3 = a1[62];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[62] = 0;
  }

  v4 = a1[64];
  if (v4)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[64] = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[67];
  if (v6)
  {
    heap_Free(*(v2 + 8), v6);
    a1[67] = 0;
  }

  v7 = a1[69];
  if (v7)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v7);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[69] = 0;
  }

  v8 = a1[57];
  if (v8)
  {
    heap_Free(*(v2 + 8), v8);
    a1[57] = 0;
  }

  v9 = a1[59];
  if (v9)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v9);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[59] = 0;
  }

  v10 = a1[8];
  if (v10)
  {
    heap_Free(*(v2 + 8), v10);
    a1[8] = 0;
    *(a1 + 36) = 0;
  }

  if (*(a1 + 44))
  {
    v11 = 0;
    v12 = 8;
    do
    {
      freePANDPRULE_TRule(v2, (a1[10] + v12));
      ++v11;
      v12 += 32;
    }

    while (v11 < *(a1 + 44));
  }

  v13 = a1[10];
  if (v13)
  {
    heap_Free(*(v2 + 8), v13);
    a1[10] = 0;
  }

  *(a1 + 44) = 0;
  if (*(a1 + 52))
  {
    v14 = 0;
    v15 = 8;
    do
    {
      freePANDPRULE_TRule(v2, (a1[12] + v15));
      ++v14;
      v15 += 32;
    }

    while (v14 < *(a1 + 52));
  }

  v16 = a1[12];
  if (v16)
  {
    heap_Free(*(v2 + 8), v16);
    a1[12] = 0;
  }

  *(a1 + 52) = 0;
  if (*(a1 + 60))
  {
    v17 = 0;
    v18 = 8;
    do
    {
      freePANDPRULE_TRule(v2, (a1[14] + v18));
      ++v17;
      v18 += 32;
    }

    while (v17 < *(a1 + 60));
  }

  v19 = a1[14];
  if (v19)
  {
    heap_Free(*(v2 + 8), v19);
    a1[14] = 0;
  }

  *(a1 + 60) = 0;
  if (*(a1 + 72))
  {
    v20 = 0;
    do
    {
      heap_Free(*(v2 + 8), *(a1[16] + 8 * v20));
      *(a1[16] + 8 * v20++) = 0;
    }

    while (v20 < *(a1 + 72));
  }

  *(a1 + 72) = 0;
  v21 = a1[17];
  if (v21)
  {
    heap_Free(*(v2 + 8), v21);
    a1[17] = 0;
  }

  v22 = a1[16];
  if (v22)
  {
    heap_Free(*(v2 + 8), v22);
    a1[16] = 0;
  }

  if (*(a1 + 80))
  {
    v23 = 0;
    v24 = 8;
    do
    {
      freePANDPRULE_TRule(v2, (a1[19] + v24));
      ++v23;
      v24 += 32;
    }

    while (v23 < *(a1 + 80));
  }

  v25 = a1[19];
  if (v25)
  {
    heap_Free(*(v2 + 8), v25);
    a1[19] = 0;
  }

  *(a1 + 80) = 0;
  if (*(a1 + 92))
  {
    v26 = 0;
    v27 = a1[22];
    do
    {
      freePANDPRULE_TRule(v2, *(v27 + 40 * v26));
      v28 = a1[22];
      v29 = *(v28 + 40 * v26);
      if (v29)
      {
        heap_Free(*(v2 + 8), v29);
        v28 = a1[22];
        *(v28 + 40 * v26) = 0;
      }

      if (*(v28 + 40 * v26 + 16))
      {
        v30 = 0;
        v31 = 8;
        do
        {
          freePANDPRULE_TRule(v2, (*(v28 + 40 * v26 + 8) + v31));
          ++v30;
          v28 = a1[22];
          v31 += 32;
        }

        while (v30 < *(v28 + 40 * v26 + 16));
      }

      freePANDPRULE_TRule(v2, (*(v28 + 40 * v26 + 8) + 8));
      v27 = a1[22];
      if (*(v27 + 40 * v26 + 8))
      {
        heap_Free(*(v2 + 8), *(v27 + 40 * v26 + 8));
        v27 = a1[22];
        *(v27 + 40 * v26 + 8) = 0;
      }

      v32 = v27 + 40 * v26;
      *(v32 + 16) = 0;
      if (*(v32 + 32))
      {
        v33 = 0;
        v34 = 0;
        do
        {
          freePANDPRULE_TRule(v2, (*(v27 + 40 * v26 + 24) + v33));
          ++v34;
          v27 = a1[22];
          v33 += 32;
        }

        while (v34 < *(v27 + 40 * v26 + 32));
      }

      if (*(v27 + 40 * v26 + 24))
      {
        heap_Free(*(v2 + 8), *(v27 + 40 * v26 + 24));
        v27 = a1[22];
        *(v27 + 40 * v26 + 24) = 0;
      }

      *(v27 + 40 * v26++ + 32) = 0;
    }

    while (v26 < *(a1 + 92));
  }

  else
  {
    v27 = a1[22];
    if (!v27)
    {
      goto LABEL_64;
    }
  }

  heap_Free(*(v2 + 8), v27);
  a1[22] = 0;
LABEL_64:
  *(a1 + 92) = 0;
  v35 = a1[25];
  if (v35)
  {
    heap_Free(*(v2 + 8), v35);
    a1[25] = 0;
  }

  *(a1 + 104) = 0;
  v36 = a1[28];
  if (v36)
  {
    heap_Free(*(v2 + 8), v36);
    a1[28] = 0;
  }

  *(a1 + 116) = 0;
  v37 = a1[30];
  if (v37)
  {
    heap_Free(*(v2 + 8), v37);
    a1[30] = 0;
  }

  *(a1 + 124) = 0;
  if (*(a1 + 132))
  {
    v38 = 0;
    v39 = 8;
    do
    {
      freePANDPRULE_TRule(v2, (a1[32] + v39));
      ++v38;
      v39 += 32;
    }

    while (v38 < *(a1 + 132));
  }

  *(a1 + 132) = 0;
  v40 = a1[32];
  if (v40)
  {
    heap_Free(*(v2 + 8), v40);
    a1[32] = 0;
  }

  v41 = a1[34];
  if (v41)
  {
    heap_Free(*(v2 + 8), v41);
    a1[34] = 0;
  }

  *(a1 + 140) = 0;
  v42 = a1[4];
  if (v42)
  {
    heap_Free(*(v2 + 8), v42);
    a1[4] = 0;
  }

  *(a1 + 20) = 0;
  v43 = a1[6];
  if (v43)
  {
    heap_Free(*(v2 + 8), v43);
    a1[6] = 0;
  }

  *(a1 + 28) = 0;
  v44 = a1[36];
  if (v44)
  {
    heap_Free(*(v2 + 8), v44);
    a1[36] = 0;
  }

  v45 = a1[38];
  if (v45)
  {
    if (*(a1 + 156))
    {
      v46 = 0;
      v47 = 0;
      do
      {
        freePANDPRULE_TRule(v2, (a1[38] + v46));
        ++v47;
        v46 += 24;
      }

      while (v47 < *(a1 + 156));
      v45 = a1[38];
    }

    *(a1 + 156) = 0;
    heap_Free(*(v2 + 8), v45);
    a1[38] = 0;
  }

  if (*(a1 + 160))
  {
    v48 = 0;
    v49 = a1[42];
    do
    {
      v50 = (v49 + 16 * v48);
      if (*v50)
      {
        v51 = 0;
        v52 = 0;
        do
        {
          freePANDPRULE_TRule(v2, (*(v49 + 16 * v48 + 8) + v51));
          ++v52;
          v49 = a1[42];
          v51 += 24;
        }

        while (v52 < *(v49 + 16 * v48));
        v50 = (v49 + 16 * v48);
      }

      *v50 = 0;
      heap_Free(*(v2 + 8), *(v49 + 16 * v48 + 8));
      v49 = a1[42];
      *(v49 + 16 * v48++ + 8) = 0;
    }

    while (v48 < *(a1 + 160));
    goto LABEL_98;
  }

  v49 = a1[42];
  if (v49)
  {
LABEL_98:
    heap_Free(*(v2 + 8), v49);
    a1[42] = 0;
  }

  v53 = a1[41];
  if (v53)
  {
    heap_Free(*(v2 + 8), v53);
    a1[41] = 0;
  }

  *(a1 + 160) = 0;
  if (*(a1 + 292))
  {
    v54 = 0;
    do
    {
      heap_Free(*(v2 + 8), *(a1[71] + 8 * v54));
      *(a1[71] + 8 * v54++) = 0;
    }

    while (v54 < *(a1 + 292));
  }

  v55 = a1[72];
  if (v55)
  {
    heap_Free(*(v2 + 8), v55);
    a1[72] = 0;
  }

  v56 = a1[71];
  if (v56)
  {
    heap_Free(*(v2 + 8), v56);
    a1[71] = 0;
  }

  *(a1 + 292) = 0;
  if (*(a1 + 304))
  {
    v57 = 0;
    do
    {
      heap_Free(*(v2 + 8), *(a1[74] + 8 * v57));
      *(a1[74] + 8 * v57++) = 0;
    }

    while (v57 < *(a1 + 304));
  }

  v58 = a1[75];
  if (v58)
  {
    heap_Free(*(v2 + 8), v58);
    a1[75] = 0;
  }

  v59 = a1[74];
  if (v59)
  {
    heap_Free(*(v2 + 8), v59);
    a1[74] = 0;
  }

  *(a1 + 304) = 0;
  if (*(a1 + 316))
  {
    v60 = 0;
    do
    {
      heap_Free(*(v2 + 8), *(a1[77] + 8 * v60));
      *(a1[77] + 8 * v60++) = 0;
    }

    while (v60 < *(a1 + 316));
  }

  v61 = a1[78];
  if (v61)
  {
    heap_Free(*(v2 + 8), v61);
    a1[78] = 0;
  }

  v62 = a1[77];
  if (v62)
  {
    heap_Free(*(v2 + 8), v62);
    a1[77] = 0;
  }

  *(a1 + 316) = 0;
  if (*(a1 + 180))
  {
    v63 = 0;
    do
    {
      heap_Free(*(v2 + 8), *(a1[43] + 8 * v63));
      *(a1[43] + 8 * v63++) = 0;
    }

    while (v63 < *(a1 + 180));
  }

  v64 = a1[44];
  if (v64)
  {
    heap_Free(*(v2 + 8), v64);
    a1[44] = 0;
  }

  v65 = a1[43];
  if (v65)
  {
    heap_Free(*(v2 + 8), v65);
    a1[43] = 0;
  }

  *(a1 + 180) = 0;
  v66 = a1[81];
  if (v66)
  {
    heap_Free(*(v2 + 8), v66);
    a1[81] = 0;
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(a1[53], a1[54], NullHandle, v68))
  {
    nuance_pcre_DeInit(a1[53], a1[54]);
    nuance_pcre_ObjClose(a1[53], a1[54]);
  }

  bzero(a1, 0x298uLL);
  return v5;
}

uint64_t do_pcre_exec(void *a1, unsigned int a2, char *a3, _DWORD *a4, uint64_t a5, _DWORD *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a3 || (v7 = a6, a6 = a4, a5 >= a4))
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "invalid arg for regex", a6, 0);
    return 2315264007;
  }

  *v7 = 0;
  v8 = nuance_pcre_exec(a1[53], a1[54], a1[56] + *(a1[57] + 4 * a2), 0, a3, a4, a5, 0, v14, 30);
  if ((v8 & 0x80000000) == 0)
  {
    if (v8)
    {
      v9 = 0;
      *v7 = 1;
      return v9;
    }

    return 0;
  }

  v10 = nuance_pcre_ErrorToLhError(v8);
  v9 = v10;
  if (v10 >> 20 != 2213)
  {
    return v9;
  }

  if ((v10 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  if ((v10 & 0x1FFF) == 0xA)
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 11002, 0, v12, v13);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 11027, "%s%x");
  }

  return v9;
}

uint64_t getCompoundAccent(void *a1, char *__s, _DWORD *a3, _WORD *a4, _WORD *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 2315264007;
  }

  *a3 = 0;
  v10 = a1[81];
  v11 = strlen(__s);
  v12 = nuance_pcre_exec(a1[53], a1[54], v10, 0, __s, v11, 0, 0, &v18, 30);
  if ((v12 & 0x80000000) == 0)
  {
    if (v12)
    {
      v13 = 0;
      *a3 = 1;
      *a4 = v18 + 1;
      *a5 = v19 - 1;
      return v13;
    }

    return 0;
  }

  v14 = nuance_pcre_ErrorToLhError(v12);
  v13 = v14;
  if (v14 >> 20 != 2213)
  {
    return v13;
  }

  if ((v14 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  if ((v14 & 0x1FFF) == 0xA)
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 11002, 0, v16, v17);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 11027, "%s%x");
  }

  return v13;
}

uint64_t matchPANDPCONTEXT_TRule(const char *a1, char **a2, _WORD *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, int *a9, _WORD *a10, int a11)
{
  v22 = 1;
  *a9 = 0;
  *(a8 + 6) = 0;
  if (*(a5 + 8))
  {
    matched = logPANDPCONTEXT_TRule(a2, a3, __s, a5, a7);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "         %s %s", a1, *a2);
    **a2 = 0;
  }

  else
  {
    matched = 0;
  }

  if (*(a7 + 8))
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      matched = matchREGEX_TRule(a5, a6, (*a7 + v18), a8, &v22, a10, a11);
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
      if (v19 >= *(a7 + 8))
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
    *a9 = v20;
  }

  return matched;
}

uint64_t matchREGEX_TRule(unsigned __int16 *a1, uint64_t a2, unsigned __int16 *a3, unsigned int *a4, int *a5, _WORD *a6, uint64_t a7)
{
  v7 = a7;
  v9 = a5;
  v36 = 0;
  v14 = *(a4 + 2);
  v35 = *(a4 + 2);
  *a5 = 0;
  if (a1[4])
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           regex %d", a3[1]);
  }

  v15 = *(a3 + 4);
  if (*(a3 + 4))
  {
    if ((v15 & 4) != 0)
    {
      if (v7 == 2)
      {
        ++*(a4 + 4);
      }

      else if (v7 == 1)
      {
        ++*(a4 + 3);
      }

      if (a1[4])
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           DIRECTIVE_MOVE2NEXT - window increased (ruleDef->left_window=%d ruleDef->right_window=%d)", *(a4 + 3), *(a4 + 4));
      }

      v21 = 0;
      goto LABEL_29;
    }

    v34 = v9;
    v16 = a6;
    v17 = (v15 >> 1) & 1;
    v18 = (v15 >> 3) & 1;
    v19 = (v15 >> 4) & 1;
    v33 = v15 & 1;
    v15 = v33;
  }

  else
  {
    v34 = v9;
    v16 = a6;
    v33 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  if (a1[4] >= 2u)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d bHasComma=%d", DOMAIN2STRING[*a4], *a4, *(a4 + 2), *(a4 + 3), *(a4 + 4), (*(a1 + 66) + *(*(a1 + 67) + 4 * *(*(a1 + 8) + 8 * *a3 + 4))), *a3, v15, v17);
  }

  if (v17)
  {
    v20 = *(a4 + 2);
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bHasComma = %d", *(a4 + 2), *(*a2 + 224 * *(a4 + 2) + 28));
      v20 = *(a4 + 2);
    }

    v9 = v34;
    v21 = 0;
    v22 = *(*a2 + 224 * v20 + 28);
LABEL_24:
    v25 = v33 ^ (v22 == 1);
LABEL_30:
    *v9 = v25;
    return v21;
  }

  if (v18)
  {
    v23 = *(a4 + 2);
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bIsLastInPhr = %d", *(a4 + 2), *(*a2 + 224 * *(a4 + 2) + 40));
      v23 = *(a4 + 2);
    }

    v9 = v34;
    v21 = 0;
    v22 = *(*a2 + 224 * v23 + 40);
    goto LABEL_24;
  }

  if (v19)
  {
    v24 = *(a4 + 2);
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bIsFirstInPhr = %d", *(a4 + 2), *(*a2 + 224 * *(a4 + 2) + 44));
      v24 = *(a4 + 2);
    }

    v9 = v34;
    v21 = 0;
    v22 = *(*a2 + 224 * v24 + 44);
    goto LABEL_24;
  }

  v27 = *a4;
  v28 = v16;
  if (*a4 - 1 <= 2)
  {
    v9 = v34;
    switch(v7)
    {
      case 0:
        goto LABEL_39;
      case 2:
        v14 += *(a4 + 4) + 1;
        if (v14 < *(a2 + 8))
        {
LABEL_37:
          v35 = v14;
          goto LABEL_39;
        }

        break;
      case 1:
        v14 += ~*(a4 + 3);
        if (v14 >= 0)
        {
          goto LABEL_37;
        }

        break;
    }

    v25 = a1[4];
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           context not found. rule not applicable. RETURN LH_FALSE", 0);
      v25 = 0;
    }

    goto LABEL_61;
  }

  v9 = v34;
LABEL_39:
  if (v27 <= 2)
  {
    if (v27 == 1)
    {
      v29 = *(*(*a2 + 224 * v14 + 16) + 8 * *a3);
      goto LABEL_64;
    }

    if (v27 == 2)
    {
      v29 = *(*(*a2 + 224 * v14 + 56) + 32 * *a3 + 16);
      goto LABEL_64;
    }

    goto LABEL_57;
  }

  if (v27 == 3)
  {
    if (*a3 == a1[9])
    {
      v29 = (*(a2 + 16) + *(*(a2 + 24) + 2 * v14));
    }

    else
    {
      v29 = *(*(*a2 + 224 * v14 + 16) + 8 * *a3);
    }

LABEL_64:
    v31 = a1[4];
    if (v29)
    {
      goto LABEL_65;
    }

LABEL_69:
    *v9 = 0;
    if (!v31)
    {
      v21 = 0;
LABEL_80:
      if (!v33)
      {
        v25 = a1[4];
        if (!a1[4])
        {
          goto LABEL_30;
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           return LH_FALSE", 0);
        goto LABEL_85;
      }

      *v28 = a3[1];
      if (a1[4])
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           negate match - return LH_TRUE", 0);
      }

LABEL_29:
      v25 = 1;
      goto LABEL_30;
    }

    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           NULL STR FOUND - no match", 0);
    v21 = 0;
    goto LABEL_71;
  }

  if (v27 != 4)
  {
    if (v27 == 5)
    {
      if (*a3 == a1[9])
      {
        v29 = *(a2 + 16);
      }

      else
      {
        v29 = *(a2 + 32);
      }

      goto LABEL_64;
    }

LABEL_57:
    v31 = a1[4];
    goto LABEL_69;
  }

  v30 = adjustWordIdxByWindow(a1, a2, a4, v7, &v36, &v35);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v25 = v36;
  if (!v36)
  {
LABEL_61:
    v21 = 0;
    goto LABEL_30;
  }

  v29 = *(*(*a2 + 224 * v35 + 64) + 8 * *a3);
  v31 = a1[4];
  if (!v29)
  {
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           NULL STR FOUND - no match", 0);
      v31 = a1[4];
    }

    v21 = 0;
    *v9 = 0;
LABEL_77:
    if (v31)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           REGEX FAILED", 0);
    }

    goto LABEL_80;
  }

LABEL_65:
  if (v31)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           STR=%s", v29);
  }

  v32 = strlen(v29);
  v21 = do_pcre_exec(a1, a3[1], v29, v32, 0, v9);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_71:
    v31 = a1[4];
    if (*v9 == 1)
    {
      if (a1[4])
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           REGEX FIRED", 0);
      }

      if (v33)
      {
        v25 = a1[4];
        if (!a1[4])
        {
          goto LABEL_30;
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           negate match - return LH_FALSE", 0);
LABEL_85:
        v25 = 0;
        goto LABEL_30;
      }

      *v28 = a3[1];
      if (a1[4])
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           return LH_TRUE", 0);
      }

      goto LABEL_29;
    }

    goto LABEL_77;
  }

  return v21;
}

uint64_t matchPANDPRULE_TRule(uint64_t a1, char **a2, _WORD *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t **a7, unsigned int *a8, int *a9)
{
  v22 = 1;
  if (*(a5 + 8))
  {
    matched = logPANDPRULE_TRule(a1, a2, a3, __s, a5, a7);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "       <%s>", *a2);
    **a2 = 0;
  }

  else
  {
    matched = 0;
  }

  *a9 = 0;
  if (*a7)
  {
    matched = matchPANDPCONTEXT_TRule("LEFT", a2, a3, __s, a5, a6, *a7, a8, &v22, &v21, 1);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v17 = v22;
    if (v22 != 1)
    {
      goto LABEL_15;
    }
  }

  v18 = a7[1];
  if (v18)
  {
    v22 = 0;
    matched = matchPANDPCONTEXT_TRule("CUR", a2, a3, __s, a5, a6, v18, a8, &v22, &v21, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v17 = v22;
    if (v22 != 1)
    {
LABEL_15:
      *a9 = v17;
      return matched;
    }
  }

  v19 = a7[2];
  if (!v19)
  {
    v17 = 1;
    goto LABEL_15;
  }

  v22 = 0;
  matched = matchPANDPCONTEXT_TRule("RIGHT", a2, a3, __s, a5, a6, v19, a8, &v22, &v21, 2);
  if ((matched & 0x80000000) == 0)
  {
    v17 = v22;
    goto LABEL_15;
  }

  return matched;
}

uint64_t matchMAPSTRSTR_TRule(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, _DWORD *a5)
{
  *a5 = 0;
  if (*(a1 + 8))
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           compare %s %s", (*(a1 + 528) + *(*(a1 + 536) + 4 * *a3)), *(*(*a2 + 224 * *(a4 + 4) + 16) + 8 * *(a1 + 16)));
  }

  if (!strcmp((*(a1 + 528) + *(*(a1 + 536) + 4 * *a3)), *(*(*a2 + 224 * *(a4 + 4) + 16) + 8 * *(a1 + 16))))
  {
    if (*(a1 + 8))
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           FOUND", 0);
    }

    *a5 = 1;
  }

  return 0;
}

uint64_t matchMMAPREGEX2NUM_TRule(unsigned __int16 *a1, uint64_t a2, unsigned __int16 *a3, unsigned int *a4, int *a5, unsigned __int16 *a6)
{
  *a5 = 0;
  matched = matchREGEX_TRule(a1, a2, a3, a4, a5, &v11, 0);
  if ((matched & 0x80000000) == 0 && *a5 == 1)
  {
    FLOATSUR_PLUS(a6, a6, a3 + 3);
  }

  return matched;
}

uint64_t matchMAPRULE2NUMANDOPERATOR_TRule(uint64_t a1, char **a2, _WORD *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int *a8, int *a9, unsigned __int16 *a10)
{
  *a9 = 0;
  matched = matchPANDPRULE_TRule(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if ((matched & 0x80000000) == 0 && *a9 == 1)
  {
    getVal(a10, a7 + 6, a7 + 14);
  }

  return matched;
}

unsigned __int16 *getVal(unsigned __int16 *result, int *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  if (*a2 > 1)
  {
    if (v3 == 2)
    {
      return FLOATSUR_MINUS_INT(result, result, 1u, 0);
    }

    else if (v3 == 3)
    {
      return FLOATSUR_MINUS(result, result, a3);
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      return FLOATSUR_PLUS(result, result, a3);
    }
  }

  else
  {
    return FLOATSUR_PLUS_INT(result, result, 1u, 0);
  }

  return result;
}

uint64_t matchMAPRULE2NUM_TRule(uint64_t a1, char **a2, _WORD *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, int *a9, _DWORD *a10)
{
  *a9 = 0;
  result = matchPANDPRULE_TRule(a1, a2, a3, a4, a5, a6, (a7 + 8), a8, a9);
  if ((result & 0x80000000) == 0 && *a9 == 1)
  {
    *a10 = *a7;
  }

  return result;
}

unsigned __int16 *matchMAPNUMNUM_TRule(unsigned __int16 *a1, unsigned __int16 *a2, _DWORD *a3)
{
  *a3 = 0;
  result = FLOATSUR_EQUAL(a1 + 2, a2);
  if (result)
  {
    *a3 = 1;

    return getVal(a2, a1, a1 + 4);
  }

  return result;
}

uint64_t setParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  __s1 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "pandpdetailtrace", &v18) & 0x80000000) == 0)
  {
    *(a5 + 8) = v18;
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdweakbnd", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 368), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdbndvalweak", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 372), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdbndvalstrong", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 376), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdweakfrag", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 380), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpprevfactor", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 384), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpnextfactor", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 388), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpbndfactor", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 392), v18, 0);
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "pandpphrasesize", &__s1) & 0x80000000) == 0)
  {
    v10 = __s1;
    if (!strcmp(__s1, "min"))
    {
      FLOATSUR_SET_INT((a5 + 372), 0, 0);
      FLOATSUR_SET_INT((a5 + 380), 0, 0);
    }

    else if (!strcmp(v10, "default"))
    {
      FLOATSUR_SET((a5 + 368), (a5 + 396));
      FLOATSUR_SET((a5 + 372), (a5 + 400));
      FLOATSUR_SET((a5 + 376), (a5 + 404));
      FLOATSUR_SET((a5 + 380), (a5 + 408));
      FLOATSUR_SET((a5 + 384), (a5 + 412));
      FLOATSUR_SET((a5 + 388), (a5 + 416));
      FLOATSUR_SET((a5 + 392), (a5 + 420));
    }
  }

  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v11 = (*(a4 + 96))(a2, a3, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v11 & 0x80000000) == 0)
  {
    if (*&__c[1] != 1 || !*&__c[3])
    {
      goto LABEL_29;
    }

    v12 = **&__c[3];
    v13 = strchr(**&__c[3], __c[0]);
    if (v13)
    {
      *v13 = 0;
      v12 = **&__c[3];
    }

    if (!strcmp("yes", v12) || !strcmp("YES", v12))
    {
      if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v18) & 0x80000000) != 0)
      {
        *(a5 + 656) = 1;
        v14 = *(a1 + 40);
        v15 = 1;
        goto LABEL_36;
      }
    }

    else
    {
LABEL_29:
      if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v18) & 0x80000000) != 0)
      {
        *(a5 + 656) = 0;
        v14 = *(a1 + 40);
        v15 = 0;
LABEL_36:
        paramc_ParamSetInt(v14, "statcompwidescope", v15);
        return v11;
      }
    }

    if (v18)
    {
      *(a5 + 656) = 1;
    }

    else
    {
      *(a5 + 656) = 0;
    }
  }

  return v11;
}

uint64_t readPandPRules(_WORD *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v120 = *MEMORY[0x1E69E9840];
  v118 = 0;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  memset(v119, 0, sizeof(v119));
  __s1 = 0;
  *a4 = a3;
  if ((paramc_ParamGetStr(*(a3 + 40), "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
  {
    goto LABEL_171;
  }

  log_OutText(*(a3 + 32), "FE_PHRASING", 5, 0, "trying to load voice-dependent PandP rules", 0);
  BrokerString = getBrokerString(a3, 1, v119);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  if ((brk_DataOpenEx(*(a3 + 24), v119, 1, &v113) & 0x80000000) != 0)
  {
    log_OutText(*(a3 + 32), "FE_PHRASING", 5, 0, "trying to load legacy voice-dependent PandP MS rules", 0);
    BrokerString = getLegacyBrokerString(a3, v119);
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }

    if ((brk_DataOpenEx(*(a3 + 24), v119, 1, &v113) & 0x80000000) != 0)
    {
LABEL_171:
      log_OutText(*(a3 + 32), "FE_PHRASING", 5, 0, "trying to load voice-independent PandP rules", 0);
      BrokerString = getBrokerString(a3, 0, v119);
      if ((BrokerString & 0x80000000) != 0)
      {
        return BrokerString;
      }

      BrokerString = brk_DataOpenEx(*(a3 + 24), v119, 1, &v113);
      if ((BrokerString & 0x80000000) != 0)
      {
        return BrokerString;
      }
    }
  }

  BrokerString = brk_DataClose(*(a3 + 24), v113);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 0, v119, "PANP", 1031, &v118);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  do
  {
    LODWORD(v9) = ssftriff_reader_OpenChunk(v118, &v116, &v115, &v114);
    if ((v9 & 0x80000000) != 0)
    {
      break;
    }

    if (v116 ^ 0x47494643 | v117)
    {
      if (!(v116 ^ 0x45535453 | v117))
      {
        v12 = v114;
        v13 = *v114;
        *(a4 + 20) = v13;
        v14 = heap_Calloc(*(*a4 + 8), 1, (8 * v13) | 1);
        a4[4] = v14;
        if (!v14)
        {
          goto LABEL_163;
        }

        if (*(a4 + 20))
        {
          v15 = 0;
          v16 = 0;
          v17 = 2;
          do
          {
            *(a4[4] + v15) = *(v12 + v17);
            v18 = v17 + 4;
            *(a4[4] + v15 + 4) = *(v12 + v18);
            v17 = v18 + 4;
            ++v16;
            v15 += 8;
          }

          while (v16 < *(a4 + 20));
        }

        goto LABEL_65;
      }

      if (!(v116 ^ 0x44554150 | v117))
      {
        v19 = v114;
        v20 = *v114;
        *(a4 + 28) = v20;
        v21 = heap_Calloc(*(*a4 + 8), 1, (8 * v20) | 1);
        a4[6] = v21;
        if (!v21)
        {
          goto LABEL_163;
        }

        if (*(a4 + 28))
        {
          v22 = 0;
          v23 = 0;
          v24 = v19 + 4;
          do
          {
            v25 = a4[6] + v22;
            *v25 = *(v24 - 3);
            v26 = *(v24 - 1);
            v27 = *v24;
            v24 += 4;
            FLOATSUR_SET_INT((v25 + 4), v26, v27);
            ++v23;
            v22 += 8;
          }

          while (v23 < *(a4 + 28));
        }

        goto LABEL_65;
      }

      if (!(v116 ^ 0x4D464544 | v117))
      {
        v28 = v114;
        v29 = *v114;
        *(a4 + 36) = v29;
        *(a4 + 37) = v28[1];
        v30 = heap_Calloc(*(*a4 + 8), 1, (8 * v29) | 1);
        a4[8] = v30;
        if (!v30)
        {
          goto LABEL_163;
        }

        if (*(a4 + 37))
        {
          v31 = 0;
          v32 = 4;
          v33 = 2;
          do
          {
            *(a4[8] + v32) = *&v28[v33];
            v33 += 2;
            ++v31;
            v32 += 8;
          }

          while (v31 < *(a4 + 37));
          v34 = *(a4 + 37);
        }

        else
        {
          v34 = 0;
          v33 = 2;
        }

        if (v34 < *(a4 + 36))
        {
          v47 = v34;
          v48 = &v28[v33 + 2];
          v49 = 8 * v34;
          do
          {
            *(a4[8] + v49) = *(v48 - 1);
            v50 = *v48;
            v48 += 2;
            *(a4[8] + v49 + 4) = v50;
            ++v47;
            v49 += 8;
          }

          while (v47 < *(a4 + 36));
        }

        goto LABEL_65;
      }

      if (!(v116 ^ 0x47415452 | v117))
      {
        v35 = v114;
        v36 = *v114;
        *(a4 + 44) = v36;
        LODWORD(v111) = 2;
        v37 = heap_Calloc(*(*a4 + 8), 1, (32 * v36) | 1);
        a4[10] = v37;
        if (!v37)
        {
          goto LABEL_163;
        }

        if (*(a4 + 44))
        {
          v38 = 0;
          v39 = 0;
          while (1)
          {
            v40 = v111;
            *(a4[10] + v38) = *(v35 + v111);
            LODWORD(v111) = v40 + 4;
            BrokerString = readRULE(*a4, v35, &v111, (a4[10] + v38 + 8));
            if ((BrokerString & 0x80000000) != 0)
            {
              return BrokerString;
            }

            ++v39;
            v38 += 32;
            if (v39 >= *(a4 + 44))
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

      if (!(v116 ^ 0x47415453 | v117))
      {
        v41 = v114;
        v42 = *v114;
        *(a4 + 52) = v42;
        LODWORD(v111) = 2;
        v43 = heap_Calloc(*(*a4 + 8), 1, (32 * v42) | 1);
        a4[12] = v43;
        if (!v43)
        {
          goto LABEL_163;
        }

        if (*(a4 + 52))
        {
          v44 = 0;
          v45 = 0;
          while (1)
          {
            v46 = v111;
            *(a4[12] + v44) = *(v41 + v111);
            LODWORD(v111) = v46 + 4;
            BrokerString = readRULE(*a4, v41, &v111, (a4[12] + v44 + 8));
            if ((BrokerString & 0x80000000) != 0)
            {
              return BrokerString;
            }

            ++v45;
            v44 += 32;
            if (v45 >= *(a4 + 52))
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

      if (!(v116 ^ 0x534F5054 | v117))
      {
        v52 = v114;
        v53 = *v114;
        *(a4 + 60) = v53;
        LODWORD(v111) = 2;
        v54 = heap_Calloc(*(*a4 + 8), 1, (32 * v53) | 1);
        a4[14] = v54;
        if (!v54)
        {
          goto LABEL_163;
        }

        if (*(a4 + 60))
        {
          v55 = 0;
          v56 = 0;
          while (1)
          {
            v57 = v111;
            *(a4[14] + v55) = *(v52 + v111);
            LODWORD(v111) = v57 + 4;
            BrokerString = readRULE(*a4, v52, &v111, (a4[14] + v55 + 8));
            if ((BrokerString & 0x80000000) != 0)
            {
              return BrokerString;
            }

            ++v56;
            v55 += 32;
            if (v56 >= *(a4 + 60))
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

      if (!(v116 ^ 0x46454454 | v117))
      {
        v58 = v114;
        v59 = *v114;
        *(a4 + 72) = v59;
        v60 = heap_Calloc(*(*a4 + 8), 1, (4 * v59) | 1);
        a4[17] = v60;
        if (!v60)
        {
          goto LABEL_163;
        }

        v61 = *(a4 + 72);
        if (*(a4 + 72))
        {
          v62 = *(a4 + 72);
          v63 = 2;
          do
          {
            v64 = *(v58 + v63);
            v63 += 2;
            *v60++ = v64;
            --v62;
          }

          while (v62);
          v65 = (8 * v61) | 1;
        }

        else
        {
          LODWORD(v63) = 2;
          v65 = 1;
        }

        v66 = heap_Calloc(*(*a4 + 8), 1, v65);
        a4[16] = v66;
        if (!v66)
        {
LABEL_163:
          v9 = 2315264010;
          log_OutPublic(*(*a4 + 32), "FE_PHRASING", 37000, 0);
          return v9;
        }

        if (*(a4 + 72))
        {
          v67 = 0;
          do
          {
            v68 = *(*a4 + 8);
            if (*(a4[17] + 4 * v67) == 1)
            {
              *(a4[16] + 8 * v67) = heap_Calloc(v68, 1, 13);
              v69 = *(a4[16] + 8 * v67);
              if (!v69)
              {
                goto LABEL_163;
              }

              *v69 = *(v58 + v63);
              *(v69 + 2) = *(v58 + (v63 + 2));
              v70 = v63 + 6;
              *(v69 + 4) = *(v58 + (v63 + 4));
              v71 = 8;
            }

            else
            {
              *(a4[16] + 8 * v67) = heap_Calloc(v68, 1, 9);
              v72 = *(a4[16] + 8 * v67);
              if (!v72)
              {
                goto LABEL_163;
              }

              *v72 = *(v58 + v63);
              v70 = v63 + 4;
              v71 = 4;
            }

            LODWORD(v9) = 0;
            *(*(a4[16] + 8 * v67) + v71) = *(v58 + v70);
            LODWORD(v63) = v70 + 4;
            ++v67;
          }

          while (v67 < *(a4 + 72));
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      if (!(v116 ^ 0x524E4547 | v117))
      {
        BrokerString = readGeneralRulesCHUNK(v114, a4);
        if ((BrokerString & 0x80000000) != 0)
        {
          return BrokerString;
        }

LABEL_65:
        LODWORD(v9) = 0;
        goto LABEL_66;
      }

      if (!(v116 ^ 0x524B4F54 | v117))
      {
        TokenRulesCHUNK = readTokenRulesCHUNK(v114, a4);
        goto LABEL_104;
      }

      if (!(v116 ^ 0x54475750 | v117))
      {
        TokenRulesCHUNK = readPhraseWeightsCHUNK(v114, a4);
        goto LABEL_104;
      }

      if (!(v116 ^ 0x534D554E | v117))
      {
        TokenRulesCHUNK = readNumSettingsCHUNK(v114, a4);
        goto LABEL_104;
      }

      if (!(v116 ^ 0x4D4F5250 | v117))
      {
        TokenRulesCHUNK = readProminenceCHUNK(v114, a4);
        goto LABEL_104;
      }

      if (!(v116 ^ 0x58474552 | v117))
      {
        TokenRulesCHUNK = readRegexCHUNK(v118, v114, a4);
        goto LABEL_104;
      }

      if (!(v116 ^ 0x53525453 | v117))
      {
        TokenRulesCHUNK = readStringCHUNK(v118, v114, a4);
        goto LABEL_104;
      }

      if (!(v116 ^ 0x54534552 | v117))
      {
        TokenRulesCHUNK = readRegexStringCHUNK(v118, v114, a4);
        goto LABEL_104;
      }

      if (!(v116 ^ 0x4644534D | v117))
      {
        BrokerString = readMSCHUNK(v114, a4);
        if ((BrokerString & 0x80000000) != 0)
        {
          return BrokerString;
        }

        goto LABEL_65;
      }

      if (!(v116 ^ 0x54524850 | v117))
      {
        TokenRulesCHUNK = readPhraseTypeCHUNK(v114, a4);
LABEL_104:
        v9 = TokenRulesCHUNK;
        if ((TokenRulesCHUNK & 0x80000000) != 0)
        {
          return v9;
        }

        goto LABEL_66;
      }

      if (!(v116 ^ 0x44504D43 | v117))
      {
        TokenRulesCHUNK = readMSCOMPOUNDDEFCHUNK(v114, a4);
        goto LABEL_104;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v11 = v114;
      *(a4 + 5) = *v114;
      *(a4 + 6) = v11[1];
      *(a4 + 7) = v11[2];
    }

LABEL_66:
    v51 = ssftriff_reader_CloseChunk(v118);
    if (v51 < 0)
    {
      LODWORD(v9) = v51;
    }
  }

  while ((v9 & 0x80000000) == 0);
  if ((v9 & 0x1FFF) == 0x14)
  {
    LODWORD(v9) = 0;
  }

  if ((v9 & 0x1FFF) == 0xA)
  {
    return 2315264010;
  }

  v74 = ssftriff_reader_ObjClose(v118);
  v118 = 0;
  if (v74 >= 0 || v9 <= -1)
  {
    v9 = v9;
  }

  else
  {
    v9 = v74;
  }

  v76 = *(a4 + 37);
  if (*(a4 + 37))
  {
    v77 = 0;
    v78 = a4[66];
    v79 = (a4[8] + 4);
    v80 = a4[67];
    do
    {
      v81 = *v79;
      v79 += 2;
      v82 = *(v80 + 4 * v81);
      if (!strcmp("ORT", (v78 + v82)))
      {
        *(a4 + 8) = v77;
      }

      else if (!strcmp("POS", (v78 + v82)))
      {
        *(a4 + 9) = v77;
      }

      else if (!strcmp("TOK", (v78 + v82)))
      {
        *(a4 + 10) = v77;
      }

      else if (!strcmp("TOKT", (v78 + v82)))
      {
        *(a4 + 11) = v77;
      }

      else if (!strcmp("PHR", (v78 + v82)))
      {
        *(a4 + 12) = v77;
      }

      ++v77;
    }

    while (v76 != v77);
  }

  FLOATSUR_SET_INT(a4 + 184, 0, 0);
  FLOATSUR_SET_INT(a4 + 186, 0, 0);
  FLOATSUR_SET_INT(a4 + 188, 0, 0);
  FLOATSUR_SET_INT(a4 + 190, 0, 0);
  FLOATSUR_SET_INT(a4 + 192, 0, 0);
  FLOATSUR_SET_INT(a4 + 194, 0, 0);
  FLOATSUR_SET_INT(a4 + 196, 0, 0);
  if (!*(a4 + 140))
  {
    goto LABEL_164;
  }

  v83 = 0;
  v84 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v85 = 0;
  do
  {
    v86 = a4[66];
    v87 = a4[34];
    v88 = *(a4[67] + 4 * *(v87 + v83));
    if (!strcmp((v86 + v88), "threshold_weak_bnd"))
    {
      v89 = *(v87 + v83 + 4);
      *(a4 + 92) = v89;
      *(a4 + 99) = v89;
      v85 = 1;
    }

    else if (!strcmp((v86 + v88), "threshold_bnd_val_weak"))
    {
      v90 = *(v87 + v83 + 4);
      *(a4 + 93) = v90;
      *(a4 + 100) = v90;
      v109 = 1;
    }

    else if (!strcmp((v86 + v88), "threshold_bnd_val_strong"))
    {
      v91 = *(v87 + v83 + 4);
      *(a4 + 94) = v91;
      *(a4 + 101) = v91;
      HIDWORD(v108) = 1;
    }

    else if (!strcmp((v86 + v88), "threshold_weak_frag"))
    {
      v92 = *(v87 + v83 + 4);
      *(a4 + 95) = v92;
      *(a4 + 102) = v92;
      LODWORD(v108) = 1;
    }

    else if (!strcmp((v86 + v88), "prevFactor"))
    {
      v93 = *(v87 + v83 + 4);
      *(a4 + 96) = v93;
      *(a4 + 103) = v93;
      HIDWORD(v107) = 1;
    }

    else if (!strcmp((v86 + v88), "nextFactor"))
    {
      v94 = *(v87 + v83 + 4);
      *(a4 + 97) = v94;
      *(a4 + 104) = v94;
      LODWORD(v107) = 1;
    }

    else if (!strcmp((v86 + v88), "bndFactor"))
    {
      v95 = *(v87 + v83 + 4);
      *(a4 + 98) = v95;
      *(a4 + 105) = v95;
      v106 = 1;
    }

    else if (!strcmp((v86 + v88), "mapfromBIO") && !FLOATSUR_EQUAL_INT((v87 + v83 + 4), 0, 0))
    {
      log_OutText(*(a3 + 32), "FE_PHRASING", 1, 0, "mapfromBIO PandP setting is no longer honored");
    }

    ++v84;
    v83 += 8;
  }

  while (v84 < *(a4 + 140));
  if (!v85 || !v109 || !HIDWORD(v108) || !v108 || !HIDWORD(v107) || !v107 || !v106)
  {
LABEL_164:
    v103 = *(a3 + 32);
    v104 = 62004;
LABEL_166:
    log_OutPublic(v103, "FE_PHRASING", v104, 0, v105);
    return 2315264000;
  }

  v111 = 0;
  v110 = 0;
  StrSetting = getStrSetting(a4, "COMPOUND_FEATURE_STR");
  if (!StrSetting || (v97 = StrSetting, v98 = getStrSetting(a4, "COMPOUND_START_TAG"), (a4[80] = v98) == 0))
  {
    v103 = *(a3 + 32);
    v104 = 62000;
    goto LABEL_166;
  }

  v99 = strlen(v97);
  v100 = heap_Calloc(*(a3 + 8), 1, v99 + 3);
  if (!v100)
  {
    log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  v101 = v100;
  *v100 = 44;
  v102 = strcat(v100, v97);
  *&v101[strlen(v102)] = 44;
  a4[81] = nuance_pcre_compile(a4[53], a4[54], v101, 0, &v111, &v110, 0);
  heap_Free(*(a3 + 8), v101);
  if (!a4[81])
  {
    log_OutPublic(*(a3 + 32), "FE_PHRASING", 11006, "%s%s%s%s%s%d", "regularExpression", ",A[0-9]+,");
    return 2315264000;
  }

  return v9;
}

uint64_t getBrokerString(uint64_t a1, int a2, char *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  __s = 0;
  memset(v15, 0, sizeof(v15));
  *__s2 = 0;
  *a3 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((result & 0x80000000) == 0)
  {
    v7 = __s;
    if (*__s)
    {
      v8 = 0;
      do
      {
        v9 = v8;
        __s2[v8] = __tolower(v7[v8]);
        ++v8;
        v7 = __s;
        v10 = strlen(__s);
      }

      while (v9 <= 1 && v8 < v10);
    }

    else
    {
      v8 = 0;
    }

    __s2[v8] = 0;
    if (strcmp(v7, __s2))
    {
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __s = __s2;
    }

    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    if (a2 == 1)
    {
      result = paramc_ParamGetStr(*(a1 + 40), "voice", &v13);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __strcat_chk();
      __strcat_chk();
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }

    return brokeraux_ComposeBrokerString(a1, v15, 0, 1, __s, v11, 0, a3, 0x80uLL);
  }

  return result;
}

uint64_t getLegacyBrokerString(uint64_t a1, char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  __s = 0;
  memset(v12, 0, sizeof(v12));
  *__s2 = 0;
  *a2 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((result & 0x80000000) == 0)
  {
    v5 = __s;
    if (*__s)
    {
      v6 = 0;
      do
      {
        v7 = v6;
        __s2[v6] = __tolower(v5[v6]);
        ++v6;
        v5 = __s;
        v8 = strlen(__s);
      }

      while (v7 <= 1 && v6 < v8);
    }

    else
    {
      v6 = 0;
    }

    __s2[v6] = 0;
    if (strcmp(v5, __s2))
    {
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __s = __s2;
    }

    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v10);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      return brokeraux_ComposeBrokerString(a1, v12, 1, 1, __s, v10, 0, a2, 0x80uLL);
    }
  }

  return result;
}

uint64_t readGeneralRulesCHUNK(unsigned __int16 *a1, void *a2)
{
  v4 = *a1;
  *(a2 + 80) = v4;
  v12 = 2;
  v5 = heap_Calloc(*(*a2 + 8), 1, (32 * v4) | 1);
  a2[19] = v5;
  if (v5)
  {
    if (*(a2 + 80))
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        result = readRULE(*a2, a1, &v12, (a2[19] + v6 + 8));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v9 = *(a1 + v12);
        v10 = a2[19];
        v11 = *(a1 + v12 + 2);
        v12 += 4;
        FLOATSUR_SET_INT((v10 + v6), v9, v11);
        ++v7;
        v6 += 32;
        if (v7 >= *(a2 + 80))
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return result;
}

uint64_t readTokenRulesCHUNK(_WORD *a1, void *a2)
{
  *(a2 + 84) = *a1;
  v4 = a1[1];
  *(a2 + 92) = v4;
  v28 = 4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (40 * v4) | 1);
  a2[22] = v5;
  if (!v5)
  {
LABEL_18:
    v8 = *a2;
LABEL_19:
    log_OutPublic(*(v8 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  if (*(a2 + 92))
  {
    v6 = 0;
    while (1)
    {
      v7 = heap_Calloc(*(*a2 + 8), 1, 25);
      *(a2[22] + 40 * v6) = v7;
      v8 = *a2;
      if (!v7)
      {
        goto LABEL_19;
      }

      result = readRULE(v8, a1, &v28, v7);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v10 = v28;
      *(a2[22] + 40 * v6 + 16) = *(a1 + v28);
      v11 = v10 + 2;
      v28 = v10 + 2;
      v12 = heap_Calloc(*(*a2 + 8), 1, (32 * *(a2[22] + 40 * v6 + 16)) | 1);
      v13 = a2[22];
      *(v13 + 40 * v6 + 8) = v12;
      if (!v12)
      {
        goto LABEL_18;
      }

      if (*(v13 + 40 * v6 + 16))
      {
        v14 = 0;
        v15 = 0;
        do
        {
          result = readRULE(*a2, a1, &v28, (*(v13 + 40 * v6 + 8) + v14 + 8));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v16 = *(a1 + v28);
          v17 = *(a2[22] + 40 * v6 + 8);
          v18 = *(a1 + v28 + 2);
          v11 = v28 + 4;
          v28 += 4;
          FLOATSUR_SET_INT((v17 + v14), v16, v18);
          ++v15;
          v13 = a2[22];
          v14 += 32;
        }

        while (v15 < *(v13 + 40 * v6 + 16));
      }

      *(v13 + 40 * v6 + 32) = *(a1 + v11);
      v28 = v11 + 2;
      v19 = heap_Calloc(*(*a2 + 8), 1, (32 * *(a2[22] + 40 * v6 + 32)) | 1);
      v20 = a2[22];
      *(v20 + 40 * v6 + 24) = v19;
      if (!v19)
      {
        goto LABEL_18;
      }

      if (*(v20 + 40 * v6 + 32))
      {
        v21 = 0;
        v22 = 0;
        do
        {
          result = readRULE(*a2, a1, &v28, (*(v20 + 40 * v6 + 24) + v21));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v23 = v28;
          v24 = v28 + 2;
          v25 = *(a2[22] + 40 * v6 + 24) + v21;
          *(v25 + 24) = *(a1 + v28);
          v26 = *(a1 + v24);
          v27 = *(a1 + v23 + 4);
          v28 = v23 + 6;
          FLOATSUR_SET_INT((v25 + 28), v26, v27);
          ++v22;
          v20 = a2[22];
          v21 += 32;
        }

        while (v22 < *(v20 + 40 * v6 + 32));
      }

      result = 0;
      if (++v6 >= *(a2 + 92))
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t readPhraseWeightsCHUNK(unsigned __int16 *a1, void *a2)
{
  v4 = *a1;
  *(a2 + 124) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (12 * v4) | 1);
  a2[30] = v5;
  if (!v5)
  {
    goto LABEL_23;
  }

  if (*(a2 + 124))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      *(a2[30] + v6 * 2) = *&a1[v6 + 1];
      FLOATSUR_SET_INT((a2[30] + v6 * 2 + 4), a1[v6 + 3], a1[v6 + 4]);
      *(a2[30] + v6 * 2 + 8) = a1[v6 + 5];
      *(a2[30] + v6 * 2 + 10) = a1[v6 + 6];
      ++v7;
      v6 += 6;
    }

    while (v7 < *(a2 + 124));
    v8 = v6 * 2 + 2;
  }

  else
  {
    v8 = 2;
  }

  v9 = *(a1 + v8);
  *(a2 + 132) = v9;
  v10 = v8 + 2;
  v30 = v8 + 2;
  v11 = heap_Calloc(*(*a2 + 8), 1, (32 * v9) | 1);
  a2[32] = v11;
  if (!v11)
  {
    goto LABEL_23;
  }

  if (!*(a2 + 132))
  {
LABEL_12:
    FLOATSUR_SET_INT(a2 + 96, *(a1 + v10), *(a1 + v10 + 2));
    v18 = *(a1 + v10 + 4);
    *(a2 + 104) = v18;
    v19 = heap_Calloc(*(*a2 + 8), 1, (10 * v18) | 1);
    a2[25] = v19;
    if (v19)
    {
      if (*(a2 + 104))
      {
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = a2[25] + v20;
          *v22 = *(a1 + v10 + v20 + 6);
          *(v22 + 2) = *(a1 + v10 + v20 + 8);
          *(v22 + 4) = *(a1 + v10 + v20 + 10);
          FLOATSUR_SET_INT((a2[25] + v20 + 6), *(a1 + v10 + v20 + 12), *(a1 + v10 + v20 + 14));
          ++v21;
          v20 += 10;
        }

        while (v21 < *(a2 + 104));
        v23 = v10 + v20 + 6;
      }

      else
      {
        v23 = v10 + 6;
      }

      FLOATSUR_SET_INT(a2 + 108, *(a1 + v23), *(a1 + v23 + 2));
      v24 = *(a1 + v23 + 4);
      *(a2 + 116) = v24;
      v25 = heap_Calloc(*(*a2 + 8), 1, (12 * v24) | 1);
      a2[28] = v25;
      if (v25)
      {
        if (*(a2 + 116))
        {
          v26 = 0;
          v27 = 0;
          v28 = v23 + 14;
          do
          {
            v29 = a2[28] + v26;
            FLOATSUR_SET_INT((v29 + 4), *(a1 + v28 - 8), *(a1 + v28 - 6));
            FLOATSUR_SET_INT((v29 + 8), *(a1 + v28 - 4), *(a1 + v28 - 2));
            *v29 = *(a1 + v28);
            ++v27;
            v26 += 12;
            v28 += 10;
          }

          while (v27 < *(a2 + 116));
        }

        return 0;
      }
    }

LABEL_23:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    result = readRULE(*a2, a1, &v30, (a2[32] + v12 + 8));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v15 = *(a1 + v30);
    v16 = a2[32];
    v17 = *(a1 + v30 + 2);
    v10 = v30 + 4;
    v30 += 4;
    FLOATSUR_SET_INT((v16 + v12), v15, v17);
    ++v13;
    v12 += 32;
    if (v13 >= *(a2 + 132))
    {
      goto LABEL_12;
    }
  }
}

uint64_t readNumSettingsCHUNK(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 280) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (8 * v4) | 1);
  *(a2 + 272) = v5;
  if (v5)
  {
    if (*(a2 + 280))
    {
      v6 = 0;
      v7 = 0;
      v8 = (a1 + 4);
      do
      {
        v9 = *(a2 + 272) + v6;
        *v9 = *(v8 - 3);
        v10 = *(v8 - 1);
        v11 = *v8;
        v8 += 4;
        FLOATSUR_SET_INT((v9 + 4), v10, v11);
        ++v7;
        v6 += 8;
      }

      while (v7 < *(a2 + 280));
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t readProminenceCHUNK(unsigned __int16 *a1, void *a2)
{
  v4 = *a1;
  *(a2 + 148) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (4 * v4) | 1);
  a2[36] = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  if (*(a2 + 148))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      *(a2[36] + 4 * v6) = *&a1[2 * v6 + 1];
      v7 += 2;
      ++v6;
    }

    while (v6 < *(a2 + 148));
  }

  else
  {
    v7 = 1;
  }

  v8 = a1[v7];
  *(a2 + 156) = v8;
  v13 = v7 * 2 + 2;
  v9 = heap_Calloc(*(*a2 + 8), 1, (24 * v8) | 1);
  a2[38] = v9;
  if (v9)
  {
    if (*(a2 + 156))
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        result = readRULE(*a2, a1, &v13, (a2[38] + v10));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        ++v11;
        v10 += 24;
        if (v11 >= *(a2 + 156))
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_13:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return result;
}

uint64_t readRegexCHUNK(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v14 = a2;
  v6 = *a2;
  *(a3 + 440) = *a2;
  if (v6)
  {
    v7 = (a2[1] + 8);
    *(a3 + 448) = a2 + v7;
    v8 = (v7 + v6);
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  *(a3 + 464) = v9;
  v10 = heap_Calloc(*(*a3 + 8), 1, (4 * v9) | 1);
  *(a3 + 456) = v10;
  if (v10)
  {
    if (*(a3 + 464))
    {
      v11 = 0;
      v12 = v8 + 2;
      do
      {
        *(*(a3 + 456) + 4 * v11) = *(a2 + v12);
        v12 += 4;
        ++v11;
      }

      while (v11 < *(a3 + 464));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 472), &v14);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t readStringCHUNK(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v14 = a2;
  v6 = *a2;
  *(a3 + 520) = *a2;
  if (v6)
  {
    v7 = (a2[1] + 8);
    *(a3 + 528) = a2 + v7;
    v8 = (v7 + v6);
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  *(a3 + 544) = v9;
  v10 = heap_Calloc(*(*a3 + 8), 1, (4 * v9) | 1);
  *(a3 + 536) = v10;
  if (v10)
  {
    if (*(a3 + 544))
    {
      v11 = 0;
      v12 = v8 + 2;
      do
      {
        *(*(a3 + 536) + 4 * v11) = *(a2 + v12);
        v12 += 4;
        ++v11;
      }

      while (v11 < *(a3 + 544));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 552), &v14);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t readRegexStringCHUNK(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v14 = a2;
  v6 = *a2;
  *(a3 + 480) = *a2;
  if (v6)
  {
    v7 = (a2[1] + 8);
    *(a3 + 488) = a2 + v7;
    v8 = (v7 + v6);
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  *(a3 + 504) = v9;
  v10 = heap_Calloc(*(*a3 + 8), 1, (4 * v9) | 1);
  *(a3 + 496) = v10;
  if (v10)
  {
    if (*(a3 + 504))
    {
      v11 = 0;
      v12 = v8 + 2;
      do
      {
        *(*(a3 + 496) + 4 * v11) = *(a2 + v12);
        v12 += 4;
        ++v11;
      }

      while (v11 < *(a3 + 504));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 512), &v14);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t readMSCHUNK(unsigned __int16 *a1, uint64_t a2)
{
  *(a2 + 560) = *a1;
  v4 = a1[1];
  *(a2 + 584) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (4 * v4) | 1);
  *(a2 + 576) = v5;
  if (!v5)
  {
    goto LABEL_47;
  }

  v6 = *(a2 + 584);
  if (*(a2 + 584))
  {
    v7 = 4;
    v8 = *(a2 + 584);
    do
    {
      v9 = *(a1 + v7);
      v7 += 2;
      *v5++ = v9;
      --v8;
    }

    while (v8);
    v10 = (8 * v6) | 1;
  }

  else
  {
    LODWORD(v7) = 4;
    v10 = 1;
  }

  v11 = heap_Calloc(*(*a2 + 8), 1, v10);
  *(a2 + 568) = v11;
  if (!v11)
  {
    goto LABEL_47;
  }

  if (*(a2 + 584))
  {
    v12 = 0;
    do
    {
      v13 = *(*a2 + 8);
      if (*(*(a2 + 576) + 4 * v12) == 1)
      {
        *(*(a2 + 568) + 8 * v12) = heap_Calloc(v13, 1, 13);
        v14 = *(*(a2 + 568) + 8 * v12);
        if (!v14)
        {
          goto LABEL_47;
        }

        *v14 = *(a1 + v7);
        *(v14 + 2) = *(a1 + (v7 + 2));
        v15 = v7 + 6;
        *(v14 + 4) = *(a1 + (v7 + 4));
        v16 = 8;
      }

      else
      {
        *(*(a2 + 568) + 8 * v12) = heap_Calloc(v13, 1, 9);
        v17 = *(*(a2 + 568) + 8 * v12);
        if (!v17)
        {
          goto LABEL_47;
        }

        *v17 = *(a1 + v7);
        v15 = v7 + 4;
        v16 = 4;
      }

      *(*(*(a2 + 568) + 8 * v12) + v16) = *(a1 + v15);
      LODWORD(v7) = v15 + 4;
      ++v12;
    }

    while (v12 < *(a2 + 584));
  }

  v18 = *(a1 + v7);
  *(a2 + 608) = v18;
  v19 = heap_Calloc(*(*a2 + 8), 1, (4 * v18) | 1);
  *(a2 + 600) = v19;
  if (!v19)
  {
    goto LABEL_47;
  }

  v20 = *(a2 + 608);
  v21 = v7 + 2;
  if (*(a2 + 608))
  {
    v22 = *(a2 + 608);
    do
    {
      *v19++ = *(a1 + v21);
      v21 += 2;
      --v22;
    }

    while (v22);
    v23 = (8 * v20) | 1;
  }

  else
  {
    v23 = 1;
  }

  v24 = heap_Calloc(*(*a2 + 8), 1, v23);
  *(a2 + 592) = v24;
  if (!v24)
  {
    goto LABEL_47;
  }

  if (*(a2 + 608))
  {
    v25 = 0;
    do
    {
      v26 = *(*a2 + 8);
      if (*(*(a2 + 600) + 4 * v25) == 1)
      {
        *(*(a2 + 592) + 8 * v25) = heap_Calloc(v26, 1, 13);
        v27 = *(*(a2 + 592) + 8 * v25);
        if (!v27)
        {
          goto LABEL_47;
        }

        *v27 = *(a1 + v21);
        *(v27 + 2) = *(a1 + v21 + 2);
        v28 = v21 + 6;
        *(v27 + 4) = *(a1 + v21 + 4);
        v29 = 8;
      }

      else
      {
        *(*(a2 + 592) + 8 * v25) = heap_Calloc(v26, 1, 9);
        v30 = *(*(a2 + 592) + 8 * v25);
        if (!v30)
        {
          goto LABEL_47;
        }

        *v30 = *(a1 + v21);
        v28 = v21 + 4;
        v29 = 4;
      }

      *(*(*(a2 + 592) + 8 * v25) + v29) = *(a1 + v28);
      v21 = v28 + 4;
      ++v25;
    }

    while (v25 < *(a2 + 608));
  }

  v31 = *(a1 + v21);
  *(a2 + 632) = v31;
  v32 = heap_Calloc(*(*a2 + 8), 1, (4 * v31) | 1);
  *(a2 + 624) = v32;
  if (!v32)
  {
    goto LABEL_47;
  }

  v33 = *(a2 + 632);
  v34 = v21 + 2;
  if (*(a2 + 632))
  {
    v35 = *(a2 + 632);
    do
    {
      *v32++ = *(a1 + v34);
      v34 += 2;
      --v35;
    }

    while (v35);
    v36 = (8 * v33) | 1;
  }

  else
  {
    v36 = 1;
  }

  v37 = heap_Calloc(*(*a2 + 8), 1, v36);
  *(a2 + 616) = v37;
  if (v37)
  {
    if (*(a2 + 632))
    {
      v38 = 0;
      do
      {
        v39 = *(*a2 + 8);
        if (*(*(a2 + 624) + 4 * v38) == 1)
        {
          *(*(a2 + 616) + 8 * v38) = heap_Calloc(v39, 1, 13);
          v40 = *(*(a2 + 616) + 8 * v38);
          if (!v40)
          {
            goto LABEL_47;
          }

          *v40 = *(a1 + v34);
          *(v40 + 2) = *(a1 + v34 + 2);
          v41 = v34 + 6;
          *(v40 + 4) = *(a1 + v34 + 4);
          v42 = 8;
        }

        else
        {
          *(*(a2 + 616) + 8 * v38) = heap_Calloc(v39, 1, 9);
          v43 = *(*(a2 + 616) + 8 * v38);
          if (!v43)
          {
            goto LABEL_47;
          }

          *v43 = *(a1 + v34);
          v41 = v34 + 4;
          v42 = 4;
        }

        result = 0;
        *(*(*(a2 + 616) + 8 * v38) + v42) = *(a1 + v41);
        v34 = v41 + 4;
        ++v38;
      }

      while (v38 < *(a2 + 632));
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_47:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return result;
}

uint64_t readPhraseTypeCHUNK(unsigned __int16 *a1, void *a2)
{
  v4 = *a1;
  *(a2 + 160) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (16 * v4) | 1);
  a2[42] = v5;
  v6 = *a2;
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = heap_Calloc(*(v6 + 8), 1, (4 * *(a2 + 160)) | 1);
  a2[41] = v7;
  if (!v7)
  {
LABEL_15:
    v6 = *a2;
LABEL_16:
    log_OutPublic(*(v6 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  if (*(a2 + 160))
  {
    v8 = 0;
    v9 = 2;
    do
    {
      *(a2[41] + 4 * v8) = *&a1[2 * v8 + 1];
      v9 += 4;
      ++v8;
      v10 = *(a2 + 160);
    }

    while (v8 < v10);
    v18 = v9;
    if (v10)
    {
      v11 = 0;
      v12 = a2[42];
      while (1)
      {
        v13 = v18;
        *(v12 + 16 * v11) = *(a1 + v18);
        v18 = v13 + 2;
        v14 = heap_Calloc(*(*a2 + 8), 1, (24 * *(a2[42] + 16 * v11)) | 1);
        v12 = a2[42];
        *(v12 + 16 * v11 + 8) = v14;
        if (!v14)
        {
          goto LABEL_15;
        }

        if (*(v12 + 16 * v11))
        {
          v15 = 0;
          v16 = 0;
          do
          {
            result = readRULE(*a2, a1, &v18, (*(v12 + 16 * v11 + 8) + v15));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            ++v16;
            v12 = a2[42];
            v15 += 24;
          }

          while (v16 < *(v12 + 16 * v11));
        }

        result = 0;
        if (++v11 >= *(a2 + 160))
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t readMSCOMPOUNDDEFCHUNK(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 360) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (4 * v4) | 1);
  *(a2 + 352) = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(a2 + 360);
  if (*(a2 + 360))
  {
    v7 = 2;
    v8 = *(a2 + 360);
    do
    {
      v9 = *(a1 + v7);
      v7 += 2;
      *v5++ = v9;
      --v8;
    }

    while (v8);
    v10 = (8 * v6) | 1;
  }

  else
  {
    LODWORD(v7) = 2;
    v10 = 1;
  }

  v11 = heap_Calloc(*(*a2 + 8), 1, v10);
  *(a2 + 344) = v11;
  if (v11)
  {
    if (*(a2 + 360))
    {
      v12 = 0;
      do
      {
        v13 = *(*a2 + 8);
        if (*(*(a2 + 352) + 4 * v12) == 1)
        {
          *(*(a2 + 344) + 8 * v12) = heap_Calloc(v13, 1, 13);
          v14 = *(*(a2 + 344) + 8 * v12);
          if (!v14)
          {
            goto LABEL_17;
          }

          *v14 = *(a1 + v7);
          *(v14 + 2) = *(a1 + (v7 + 2));
          v15 = v7 + 6;
          *(v14 + 4) = *(a1 + (v7 + 4));
          v16 = 8;
        }

        else
        {
          *(*(a2 + 344) + 8 * v12) = heap_Calloc(v13, 1, 9);
          v17 = *(*(a2 + 344) + 8 * v12);
          if (!v17)
          {
            goto LABEL_17;
          }

          *v17 = *(a1 + v7);
          v15 = v7 + 4;
          v16 = 4;
        }

        *(*(*(a2 + 344) + 8 * v12) + v16) = *(a1 + v15);
        LODWORD(v7) = v15 + 4;
        ++v12;
      }

      while (v12 < *(a2 + 360));
    }

    return 0;
  }

  else
  {
LABEL_17:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t getStrSetting(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = *(a1 + 528);
  v5 = *(a1 + 536);
  for (i = (*(a1 + 32) + 4); strcmp(__s1, (v4 + *(v5 + 4 * *(i - 1)))); i += 2)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return v4 + *(v5 + 4 * *i);
}

uint64_t usePandP(uint64_t *a1, _DWORD *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  v13 = 0;
  memset(v14, 0, sizeof(v14));
  *a2 = 0;
  v4 = 0;
  if ((paramc_ParamGetStr(a1[5], "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1)
  {
    if (!strcmp(__s1, "yes"))
    {
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "<%s> disables voice-dependent pandp rules", "basicclcprosody");
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  result = getBrokerString(a1, 1, v14);
  if ((result & 0x80000000) == 0)
  {
    v6 = brk_DataOpenEx(a1[3], v14, 1, &v13);
    if (v6 < 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_23;
    }

    v8 = v6;
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "Voice-dependent PandP rules not found or disabled", 0);
    if ((v8 & 0x80000000) == 0)
    {
      result = brk_DataClose(a1[3], v13);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    result = getLegacyBrokerString(a1, v14);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v9 = brk_DataOpenEx(a1[3], v14, 1, &v13);
    v10 = v9 < 0 ? 1 : v4;
    if ((v10 & 1) == 0)
    {
LABEL_23:
      *a2 = 1;
      goto LABEL_24;
    }

    v11 = v9;
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "Voice-dependent legacy PandP MS rules not found or disabled", 0);
    if (v11 < 0 || (result = brk_DataClose(a1[3], v13), (result & 0x80000000) == 0))
    {
      result = getBrokerString(a1, 0, v14);
      if ((result & 0x80000000) == 0)
      {
        if ((brk_DataOpenEx(a1[3], v14, 1, &v13) & 0x80000000) != 0)
        {
          log_OutText(a1[4], "FE_PHRASING", 5, 0, "Voice-independent PandP rules not found", 0);
          return 0;
        }

        *a2 = 1;
LABEL_24:
        result = brk_DataClose(a1[3], v13);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t doMapStr(uint64_t a1, char **a2, char *__s)
{
  v6 = strlen(__s);
  v7 = *a2;
  if (v6 <= strlen(*a2))
  {
    goto LABEL_4;
  }

  v8 = heap_Realloc(*(a1 + 8), v7, (v6 + 1));
  if (v8)
  {
    v7 = v8;
    *a2 = v8;
LABEL_4:
    strcpy(v7, __s);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t doRetagging(uint64_t a1, char **a2, _WORD *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *&v26[2] = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "applying %d retagging rules", *(a6 + 88));
  if (!*(a7 + 4))
  {
    return 0;
  }

  v14 = 0;
  result = 0;
  while (!*(a6 + 88))
  {
LABEL_13:
    if (++v14 >= *(a7 + 4))
    {
      return result;
    }
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v25 = v14;
    v24 = 3;
    *v26 = 0;
    v18 = *(a6 + 80);
    v27 = 0;
    result = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, a7, (v18 + v16 + 8), &v24, &v27);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_13;
      }

      v19 = *(*a7 + 224 * v14 + 16);
      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "FIRED RETAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v17, *(v19 + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 80) + v16))), v14, *(v19 + 8 * *(a6 + 16)));
      v20 = 224 * v14;
      result = doMapStr(a5, (*(*a7 + 224 * v14 + 16) + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 80) + v16))));
      if ((result & 0x80000000) == 0)
      {
        v21 = strlen(*(*(*a7 + v20 + 16) + 8 * *(a6 + 18)));
        v22 = heap_Calloc(*(a5 + 8), 1, v21 + 1);
        v23 = *a7;
        *(*a7 + v20 + 88) = v22;
        if (v22)
        {
          strcpy(v22, *(*(v23 + 224 * v14 + 16) + 8 * *(a6 + 18)));
          result = 0;
          goto LABEL_13;
        }

        log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }

      return result;
    }

    ++v17;
    v16 += 32;
    if (v17 >= *(a6 + 88))
    {
      goto LABEL_13;
    }
  }
}

uint64_t doSubtagging(uint64_t a1, char **a2, _WORD *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *&v28[2] = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "applying %d subtagging rules", *(a6 + 104));
  if (!*(a7 + 4))
  {
    return 0;
  }

  v25 = a5;
  v14 = 0;
  result = 0;
  while (!*(a6 + 104))
  {
LABEL_15:
    if (++v14 >= *(a7 + 4))
    {
      return result;
    }
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v27 = v14;
    v26 = 3;
    *v28 = 0;
    v18 = *(a6 + 96);
    v29 = 0;
    result = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, a7, (v18 + v16 + 8), &v26, &v29);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v29)
    {
      if (v29 != 1)
      {
        goto LABEL_15;
      }

      v19 = *(*a7 + 224 * v14 + 16);
      log_OutText(*(v25 + 32), "FE_PHRASING", 5, 0, "FIRED SUBTAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v17, *(v19 + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 96) + v16))), v14, *(v19 + 8 * *(a6 + 16)));
      v20 = *a7;
      v21 = *a7 + 224 * v14;
      if (!*(v21 + 88))
      {
        v22 = strlen(*(*(v21 + 16) + 8 * *(a6 + 18)));
        v23 = heap_Calloc(*(v25 + 8), 1, v22 + 1);
        v24 = *a7;
        *(*a7 + 224 * v14 + 88) = v23;
        if (!v23)
        {
          log_OutPublic(*(v25 + 32), "FE_PHRASING", 37000, 0);
          return 2315264010;
        }

        strcpy(v23, *(*(v24 + 224 * v14 + 16) + 8 * *(a6 + 18)));
        v20 = *a7;
      }

      result = doMapStr(v25, (*(v20 + 224 * v14 + 16) + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 96) + v16))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = 0;
      goto LABEL_15;
    }

    ++v17;
    v16 += 32;
    if (v17 >= *(a6 + 104))
    {
      goto LABEL_15;
    }
  }
}

uint64_t setPhraseType(uint64_t a1, char **a2, _WORD *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{
  *(a7 + 32) = a8;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  Using ORT %s", a8);
  v25 = a7;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  Using POS %s", *(a7 + 16));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  applying %d phrase type rules", *(a6 + 320));
  if (!*(a6 + 320))
  {
    return 0;
  }

  v15 = 0;
  matched = 0;
  v27 = 0;
  while (1)
  {
    v26 = 5;
    LOWORD(v27) = 0;
    v28 = 1;
    v17 = *(a6 + 336);
    LODWORD(v18) = *(v17 + 16 * v15);
    if (*(v17 + 16 * v15))
    {
      break;
    }

    v21 = 0;
LABEL_10:
    if (v18 == v21)
    {
      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "ALL %d RULES FIRE -> SET Phrase type %s", v18, (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 328) + 4 * v15))));
      v23 = strlen((*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 328) + 4 * v15))));
      v24 = heap_Calloc(*(a5 + 8), 1, (v23 + 1));
      *(v25 + 40) = v24;
      if (v24)
      {
        strcpy(v24, (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 328) + 4 * v15))));
      }

      else
      {
        log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }

      return matched;
    }

LABEL_12:
    if (++v15 >= *(a6 + 320))
    {
      return matched;
    }
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    matched = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, v25, (*(v17 + 16 * v15 + 8) + v19), &v26, &v28);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    if (v28 != 1)
    {
      goto LABEL_12;
    }

    ++v20;
    v17 = *(a6 + 336);
    v18 = *(v17 + 16 * v15);
    v19 += 24;
    if (v20 >= v18)
    {
      v21 = v20;
      goto LABEL_10;
    }
  }
}

uint64_t getDomainFromPausingDefs(uint64_t a1, char *__s1, _WORD *a3)
{
  v3 = *(a1 + 56);
  if (!*(a1 + 56))
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 528);
  v8 = *(a1 + 536);
  v9 = *(a1 + 48);
  while (1)
  {
    v10 = *v9;
    v9 += 2;
    if (!strcmp(__s1, (v7 + *(v8 + 4 * v10))))
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  *a3 = v6;
  return 1;
}

uint64_t createLists(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a3 + 4);
  if (!v3)
  {
    return 0;
  }

  v5 = a2;
  v6 = 0;
  v7 = *(a2 + 24);
  v8 = *a3;
  v9 = 32 * v7;
  while (1)
  {
    v10 = v6;
    v11 = *(v8 + 224 * v6 + 56);
    if (v11)
    {
      if (*(v11 + v9) == 1)
      {
        break;
      }
    }

LABEL_33:
    if (++v6 >= v3)
    {
      return 0;
    }
  }

  v12 = heap_Calloc(*(a1 + 8), 1, (8 * *(v5 + 72)) | 1);
  v8 = *a3;
  *(*a3 + 224 * v10 + 64) = v12;
  if (v12)
  {
    if (*(v5 + 72))
    {
      v13 = 0;
      do
      {
        v14 = *(v8 + 224 * v10 + 56) + 32 * v7;
        v15 = *(v14 + 8);
        v16 = *(v14 + 10);
        if (v15 > v16)
        {
          goto LABEL_30;
        }

        v17 = v5;
        v18 = 0;
        do
        {
          v19 = v15;
          v20 = *(v8 + 224 * v15 + 16);
          if (v20)
          {
            v21 = *(v20 + 8 * v13);
            if (v21)
            {
              v18 += strlen(v21) + 1;
            }
          }

          v22 = *(v8 + 224 * v19 + 56);
          if (v22)
          {
            v23 = v22 + 32 * v13;
            v24 = *(v23 + 16);
            if (v24)
            {
              if (*v23 == 1)
              {
                v18 += strlen(v24) + 1;
              }
            }
          }

          LOWORD(v15) = v19 + 1;
        }

        while (v16 >= (v19 + 1));
        v5 = v17;
        if (v18)
        {
          v25 = heap_Calloc(*(a1 + 8), 1, v18 + 2);
          *(*(*a3 + 224 * v10 + 64) + 8 * v13) = v25;
          if (!v25)
          {
            goto LABEL_35;
          }

          *v25 = 0;
          v8 = *a3;
          v26 = *(*a3 + 224 * v10 + 56) + 32 * v7;
          v27 = *(v26 + 8);
          if (v27 <= *(v26 + 10))
          {
            do
            {
              v28 = v27;
              v29 = *(v8 + 224 * v27 + 16);
              if (v29)
              {
                v30 = *(v29 + 8 * v13);
                if (v30)
                {
                  strcat(*(*(v8 + 224 * v10 + 64) + 8 * v13), v30);
                  *(*(*(*a3 + 224 * v10 + 64) + 8 * v13) + strlen(*(*(*a3 + 224 * v10 + 64) + 8 * v13))) = 32;
                  v8 = *a3;
                }
              }

              v31 = *(v8 + 224 * v28 + 56);
              if (v31)
              {
                v32 = v31 + 32 * v13;
                v33 = *(v32 + 16);
                if (v33)
                {
                  if (*v32 == 1)
                  {
                    strcat(*(*(v8 + 224 * v10 + 64) + 8 * v13), v33);
                    *(*(*(*a3 + 224 * v10 + 64) + 8 * v13) + strlen(*(*(*a3 + 224 * v10 + 64) + 8 * v13))) = 32;
                    v8 = *a3;
                  }
                }
              }

              LOWORD(v27) = v28 + 1;
            }

            while (*(*(v8 + 224 * v10 + 56) + 32 * v7 + 10) >= (v28 + 1));
          }
        }

        else
        {
LABEL_30:
          *(*(v8 + 224 * v10 + 64) + 8 * v13) = 0;
        }

        ++v13;
      }

      while (v13 < *(v5 + 72));
    }

    v6 = *(*(v8 + 224 * v10 + 56) + 32 * v7 + 10);
    v3 = *(a3 + 4);
    v9 = 32 * v7;
    goto LABEL_33;
  }

LABEL_35:
  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, 32 * v7);
  return 2315264010;
}

BOOL isStrSetting(uint64_t a1, char *__s1, const char *a3)
{
  v3 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    return 0;
  }

  v6 = *(a1 + 528);
  v7 = *(a1 + 536);
  for (i = (*(a1 + 32) + 4); strcmp(__s1, (v6 + *(v7 + 4 * *(i - 1)))); i += 2)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return strcmp(a3, (v6 + *(v7 + 4 * *i))) == 0;
}

uint64_t adjustWordIdxByWindow(unsigned __int16 *a1, uint64_t *a2, unsigned __int16 *a3, int a4, _DWORD *a5, unsigned __int16 *a6)
{
  *a5 = 1;
  v6 = *a2;
  v7 = a3[2];
  v8 = *(*a2 + 224 * a3[2] + 56);
  if (!v8 || (v9 = a1[12], !*(v8 + 32 * v9)))
  {
    result = 0;
    *a5 = 0;
    return result;
  }

  if (a4 == 2)
  {
    v15 = *(a2 + 4);
    if (v7 + 1 == v15)
    {
      *a5 = 0;
      if (a1[4] >= 2u)
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           [1] _RIGHT doesnt exist, return LH_FALSE", 0);
LABEL_37:
        LOWORD(v7) = a3[2];
      }
    }

    else
    {
      v16 = a3[4] + 1;
      v17 = a3[2];
      if ((v16 & 0x10000) != 0)
      {
LABEL_21:
        if (v15 > v17)
        {
          *a6 = v17;
          if (a1[4] >= 2u)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           [3] _RIGHT wordIdx=%d");
          }

          return 0;
        }
      }

      else
      {
        v17 = a3[2];
        while (v15 > v17)
        {
          v17 = *(*(v6 + 224 * v17 + 56) + 32 * v9 + 10) + 1;
          if (!--v16)
          {
            goto LABEL_21;
          }
        }
      }

      *a5 = 0;
      if (a1[4] >= 2u)
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           [2] _RIGHT doesnt exist, return LH_FALSE", 0);
        goto LABEL_37;
      }
    }

LABEL_38:
    result = 0;
    *a6 = v7;
    return result;
  }

  if (a4 != 1)
  {
    if (a4 || a1[4] < 2u)
    {
      goto LABEL_38;
    }

    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           _CUR wordIdx=%d");
    goto LABEL_37;
  }

  if (a3[2])
  {
    v13 = a3[3] + 1;
    if ((v13 & 0x10000) == 0)
    {
      v14 = a3[2];
      do
      {
        v18 = v14 - 1;
        v19 = *(v6 + 224 * v18 + 56) + 32 * v9;
        if (!*(v19 + 4))
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "wordindex=%d does not end previous phrase", v18);
          return 2315264000;
        }

        v14 = *(v19 + 8);
        --v13;
      }

      while (v13 && *(v19 + 8));
      if (!v13)
      {
        goto LABEL_12;
      }

      *a5 = 0;
      if (a1[4] >= 2u)
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           [2] _LEFT doesnt exist, return LH_FALSE", 0);
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v14 = a3[2];
LABEL_12:
    *a6 = v14;
    if (a1[4] >= 2u)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           [3] _LEFT wordIdx=%d");
    }

    return 0;
  }

  *a5 = 0;
  if (a1[4] >= 2u)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           [1] _LEFT doesnt exist, return LH_FALSE", 0);
    LOWORD(v7) = a3[2];
  }

  result = 0;
  *a6 = v7;
  return result;
}

uint64_t readRULE(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  result = readCONTEXT(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    result = readCONTEXT(a1, a2, a3, a4 + 1);
    if ((result & 0x80000000) == 0)
    {

      return readCONTEXT(a1, a2, a3, a4 + 2);
    }
  }

  return result;
}

uint64_t readCONTEXT(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *(a2 + v4);
  *a3 = v4 + 2;
  if (!v5)
  {
    return 0;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, 17);
  if (v10 && (v11 = v10, *(v10 + 8) = v5, v12 = heap_Calloc(*(a1 + 8), 1, (6 * v5) | 1), (*v11 = v12) != 0))
  {
    if (*(v11 + 8))
    {
      v13 = 0;
      v14 = 0;
      v15 = *a3;
      do
      {
        *(v12 + v13) = *(a2 + v15);
        v16 = *a3 + 2;
        *a3 = v16;
        *(*v11 + v13 + 2) = *(a2 + v16);
        v17 = *a3;
        v18 = *a3 + 2;
        *a3 = v18;
        LOBYTE(v18) = *(a2 + v18);
        v15 = v17 + 4;
        *a3 = v15;
        v12 = *v11;
        *(*v11 + v13 + 4) = v18;
        ++v14;
        v13 += 6;
      }

      while (v14 < *(v11 + 8));
    }

    v19 = 0;
    *a4 = v11;
  }

  else
  {
    v19 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  }

  return v19;
}

uint64_t nn_phrasing_checkIfActive(_WORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v12 = 0;
  v13 = 0;
  *a4 = 0;
  BrokerString = nn_phrasing_getBrokerString(a3, &v13);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v9 = v13;
  if ((ssftriff_reader_ObjOpen(a1, a2, 2, v13, "FINN", 1, &v12) & 0x80000000) != 0)
  {
    v10 = 0;
    if (!v9)
    {
      return v10;
    }

LABEL_9:
    heap_Free(*(a3 + 8), v9);
    return v10;
  }

  v10 = ssftriff_reader_ObjClose(v12);
  if ((v10 & 0x80000000) == 0)
  {
    *a4 = 1;
  }

  if (v9)
  {
    goto LABEL_9;
  }

  return v10;
}

uint64_t nn_phrasing_getBrokerString(uint64_t a1, char **a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = "";
  *v7 = 0;
  memset(v8, 0, sizeof(v8));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v7);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v6);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v5 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a2 = v5;
      if (v5)
      {
        return brokeraux_ComposeBrokerString(a1, v8, 1, 1, *v7, 0, 0, v5, 0x400uLL);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }
    }
  }

  return result;
}

uint64_t nn_phrasing_Load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9)
{
  v77[4] = *MEMORY[0x1E69E9840];
  v66 = 0;
  *(a9 + 7) = 0u;
  *(a9 + 8) = 0u;
  *(a9 + 5) = 0u;
  *(a9 + 6) = 0u;
  *(a9 + 3) = 0u;
  *(a9 + 4) = 0u;
  *(a9 + 1) = 0u;
  *(a9 + 2) = 0u;
  *a9 = 0u;
  v75 = 0;
  v74 = -1;
  v73 = 0;
  v71 = 0;
  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_puncpause", a9);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_resppause", a9 + 1);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_numadditionalfields", a9 + 2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_maxwordsinsent", a9 + 3);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_thresholdpercent", a9 + 4);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_numfeats", a9 + 5);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_dolenverification", a9 + 8);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_dophrverification", a9 + 7);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_docompverification", a9 + 6);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_usedynamicstep", a9 + 9);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  v65 = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_puncpause %d", *a9);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_resppause %d", a9[1]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_numadditionalfields %d", a9[2]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_maxwordsinsent %d", a9[3]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_thresholdpercent %d", a9[4]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_numfeats %d", a9[5]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_dolenverification %d", a9[8]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_dophrverification %d", a9[7]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_docompverification %d", a9[6]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_usedynamicstep %d", a9[9]);
  if (a9[5])
  {
    v18 = heap_Calloc(*(a5 + 8), 1, 32 * a9[5]);
    *(a9 + 4) = v18;
    if (!v18)
    {
      v39 = 2315264010;
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0);
      return v39;
    }

    if (a9[5])
    {
      v19 = 0;
      v20 = 0;
      v61 = 0;
      strcpy(&v56, "ng_feat");
      v57 = *"nnpausing_feat";
      *v62 = a5;
      while (1)
      {
        v63 = v20;
        v64 = v19;
        memset(&v77[1] + 7, 0, 17);
        v77[0] = v57;
        *(v77 + 7) = v56;
        LH_itoa(v20, v72, 0xAu);
        __strcat_chk();
        v74 = -1;
        NumericFeatureValue = (*(a6 + 96))(a7, a8, "fecfg", v77, &v75, &v74, &v73);
        if ((NumericFeatureValue & 0x80000000) != 0)
        {
          return NumericFeatureValue;
        }

        if (v74)
        {
          break;
        }

        v26 = v64;
LABEL_34:
        v20 = v63 + 1;
        v19 = v26 + 32;
        if (v63 + 1 >= a9[5])
        {
          goto LABEL_35;
        }
      }

      v21 = *v75;
      v22 = strchr(*v75, 124);
      if (v22)
      {
        *v22 = 0;
        __s1 = v22 + 1;
        v23 = strchr(v22 + 1, 124);
        if (v23)
        {
          *v23 = 0;
          __s = v23 + 1;
          v24 = strchr(v23 + 1, 124);
          if (v24)
          {
            *v24 = 0;
            v58 = v24 + 1;
            v25 = strchr(v24 + 1, v73);
            if (v25)
            {
              *v25 = 0;
            }

LABEL_26:
            NumericFeatureValue = setStr(a5, (*(a9 + 4) + v64), v21);
            if ((NumericFeatureValue & 0x80000000) != 0)
            {
              return NumericFeatureValue;
            }

            if (__s1)
            {
              v27 = strcmp(__s1, "NUMERIC");
              v28 = *(a9 + 4);
              if (!v27)
              {
                v29 = v64;
                *(v28 + v64 + 8) = 1;
LABEL_32:
                NumericFeatureValue = setStr(*v62, (v28 + v29 + 16), __s);
                if ((NumericFeatureValue & 0x80000000) != 0)
                {
                  return NumericFeatureValue;
                }

                v30 = atoi(v58);
                v31 = *(a9 + 4) + v29;
                *(v31 + 26) = v30;
                *(v31 + 28) = v61;
                v61 += v30;
                v26 = v29;
                a5 = *v62;
                goto LABEL_34;
              }
            }

            else
            {
              v28 = *(a9 + 4);
            }

            v29 = v64;
            goto LABEL_32;
          }

LABEL_25:
          v58 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        __s1 = 0;
      }

      __s = 0;
      goto LABEL_25;
    }

LABEL_35:
    v32 = *(a5 + 8);
    *&v67 = ssftmap_ElemCopyString;
    *(&v67 + 1) = ssftmap_ElemFreeString;
    v68 = ssftmap_ElemCompareKeysString;
    v69 = ssftmap_ElemCopyString;
    v70 = ssftmap_ElemFreeString;
    NumericFeatureValue = ssftmap_ObjOpen(v32, 0, &v67, a9 + 3);
    if ((NumericFeatureValue & 0x80000000) != 0)
    {
      return NumericFeatureValue;
    }

    v74 = -1;
    NumericFeatureValue = (*(a6 + 96))(a7, a8, "fecfg", "nnpausing_cols", &v75, &v74, &v73);
    if ((NumericFeatureValue & 0x80000000) != 0)
    {
      return NumericFeatureValue;
    }

    if (v74)
    {
      v33 = *v75;
      v34 = strchr(*v75, v73);
      if (v34)
      {
        *v34 = 0;
        v33 = *v75;
      }

      v35 = strchr(v33, 124);
      if (v35)
      {
        v36 = v35;
        v37 = 0;
        while (1)
        {
          *v36 = 0;
          LH_itoa(v37, v76, 0xAu);
          log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "Feature to index mappings %s -> %s", v33, v76);
          NumericFeatureValue = ssftmap_Insert(*(a9 + 3), v33, v76);
          if ((NumericFeatureValue & 0x80000000) != 0)
          {
            return NumericFeatureValue;
          }

          ++v37;
          v33 = v36 + 1;
          v36 = strchr(v36 + 1, 124);
          if (!v36)
          {
            v38 = v37;
            goto LABEL_48;
          }
        }
      }

      if (v33)
      {
        v38 = 0;
LABEL_48:
        LH_itoa(v38, v76, 0xAu);
        NumericFeatureValue = ssftmap_Insert(*(a9 + 3), v33, v76);
        if ((NumericFeatureValue & 0x80000000) != 0)
        {
          return NumericFeatureValue;
        }
      }
    }

    if (a9[5])
    {
      v40 = 0;
      v41 = 0;
      v42 = *(a9 + 4);
      do
      {
        ReadOnly = ssftmap_FindReadOnly(*(a9 + 3), *(v42 + v40 + 16), &v71);
        if ((ReadOnly & 0x1FFF) == 0x14)
        {
          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37005, "%s%s", "expected default value for", *(*(a9 + 4) + v40 + 16));
          return 2315264000;
        }

        v39 = ReadOnly;
        v44 = atoi(v71);
        v42 = *(a9 + 4);
        *(v42 + v40 + 24) = v44;
        ++v41;
        v40 += 32;
      }

      while (v41 < a9[5]);
      if ((v39 & 0x80000000) != 0)
      {
        return v39;
      }
    }
  }

  NumericFeatureValue = nn_word_lkp_GetInterface(1u, a9 + 9);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  *(a9 + 10) = safeh_GetNullHandle();
  *(a9 + 11) = v45;
  *(a9 + 12) = safeh_GetNullHandle();
  *(a9 + 13) = v46;
  NumericFeatureValue = (*(*(a9 + 9) + 16))(*(a9 + 10), *(a9 + 11), "word", a1, a2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = (*(*(a9 + 9) + 40))(*(a9 + 12), *(a9 + 13), a9 + 56);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "word2vec length %d", *(a9 + 28));
  v47 = heap_Alloc(*(a5 + 8), 4 * *(a9 + 28));
  *(a9 + 15) = v47;
  if (v47)
  {
    BrokerString = nn_phrasing_getBrokerString(a5, &v66);
    v49 = v66;
    if ((BrokerString & 0x80000000) != 0)
    {
      v39 = BrokerString;
    }

    else
    {
      v50 = fi_init(a1, a2, a3, a4, &v65, 0, v66, "FINN", 1, 0);
      if ((v50 & 0x80000000) != 0)
      {
        log_OutPublic(*(a5 + 32), "FE_PHRASING", 37006, 0);
        v39 = 2315264000;
      }

      else
      {
        v39 = v50;
        v51 = *v65;
        v52 = *(*v65 + 52);
        if (a9[9])
        {
          if (v52 == 2 && *(v51 + 60) == *(a9 + 28) + a9[2])
          {
            v53 = a9[3];
            goto LABEL_64;
          }

          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37003, "%s%d%s%d");
        }

        else
        {
          v53 = a9[3];
          if (v52 == 2 && *(v51 + 56) == v53 && *(v51 + 60) == *(a9 + 28) + a9[2])
          {
LABEL_64:
            *(a9 + 6) = v65;
            v54 = heap_Calloc(*(a5 + 8), 1, (12 * v53) | 1);
            *(a9 + 16) = v54;
            if (!v54)
            {
              v39 = 2315264010;
              log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0);
            }

            goto LABEL_79;
          }

          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37003, "%s%d%d%s%d%d", "expected");
        }

        v39 = 2315264025;
      }
    }
  }

  else
  {
    v39 = 2315264010;
    log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0);
    v49 = v66;
  }

LABEL_79:
  if (v49)
  {
    heap_Free(*(a5 + 8), v49);
  }

  return v39;
}

uint64_t nn_phrasing_UnLoad(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ssftmap_ObjClose(*(a3 + 24));
  v6 = *(a3 + 32);
  if (v6)
  {
    if (*(a3 + 10))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (*(v6 + v7))
        {
          heap_Free(*(a1 + 8), *(v6 + v7));
          v6 = *(a3 + 32);
          *(v6 + v7) = 0;
        }

        if (*(v6 + v7 + 16))
        {
          heap_Free(*(a1 + 8), *(v6 + v7 + 16));
          v6 = *(a3 + 32);
          *(v6 + v7 + 16) = 0;
        }

        ++v8;
        v7 += 32;
      }

      while (v8 < *(a3 + 10));
    }

    heap_Free(*(a1 + 8), v6);
    *(a3 + 32) = 0;
  }

  v9 = *(a3 + 120);
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    *(a3 + 120) = 0;
  }

  v10 = *(a3 + 72);
  if (v10)
  {
    (*(v10 + 24))(*(a3 + 96), *(a3 + 104));
    *(a3 + 72) = 0;
  }

  v11 = fi_deinit(a1, a2, *(a3 + 48));
  v12 = *(a3 + 128);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
  }

  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return v11;
}

uint64_t NNPausing_cleanLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  if (!*(a5 + 136))
  {
    return 0;
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v20);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a2 + 184))(a3, a4, v20, 0, &v20 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v20) == 1)
    {
      result = (*(a2 + 176))(a3, a4, v20, 0, &v14, &v19);
      if ((result & 0x80000000) == 0 && v19 >= 2u)
      {
        result = (*(a2 + 104))(a3, a4, 2, v20, &v19 + 2);
        if ((result & 0x80000000) == 0)
        {
          v11 = HIWORD(v19);
          if (HIWORD(v19))
          {
            v12 = 0;
            while (1)
            {
              result = (*(a2 + 168))(a3, a4, v11, 0, 1, &v17, &v19);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v17 <= 0xA && ((1 << v17) & 0x610) != 0)
              {
                result = (*(a2 + 168))(a3, a4, HIWORD(v19), 1, 1, &v16, &v19);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a2 + 168))(a3, a4, HIWORD(v19), 2, 1, &v16 + 2, &v19);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v16 != HIWORD(v16))
                {
                  if (v12 + 1 >= *(a5 + 6))
                  {
                    return result;
                  }

                  result = getWordIdx(a1, *(a5 + 128), *(a5 + 136), v16, HIWORD(v16), &v15);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v12 = v15;
                  if (*(*(a5 + 128) + 12 * v15) == 1)
                  {
                    result = (*(a2 + 160))(a3, a4, HIWORD(v19), 18, 1, "", &v18);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : remove temp external label from  WordRecord[%d] word[%d] by setting to ", HIWORD(v19), v12);
                  }
                }
              }

              result = (*(a2 + 120))(a3, a4, HIWORD(v19), &v19 + 2);
              if ((result & 0x80000000) == 0)
              {
                v11 = HIWORD(v19);
                if (HIWORD(v19))
                {
                  continue;
                }
              }

              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getWordIdx(uint64_t a1, uint64_t a2, int a3, int a4, int a5, _WORD *a6)
{
  if (a3)
  {
    v6 = 0;
    v7 = (a2 + 8);
    while (*(v7 - 1) != a4 || *v7 != a5)
    {
      ++v6;
      v7 += 3;
      if (a3 == v6)
      {
        goto LABEL_6;
      }
    }

    result = 0;
    *a6 = v6;
  }

  else
  {
LABEL_6:
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "cant align lingdb word : no word found with at %d,%d", a4, a5);
    return 2315264000;
  }

  return result;
}

uint64_t NNPausing_UpdateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v26);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a2 + 184))(a3, a4, v26, 0, &v26 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v26) == 1)
    {
      result = (*(a2 + 176))(a3, a4, v26, 0, &v20, &v25);
      if ((result & 0x80000000) == 0 && v25 >= 2u)
      {
        result = (*(a2 + 104))(a3, a4, 2, v26, &v25 + 2);
        if ((result & 0x80000000) == 0)
        {
          v13 = HIWORD(v25);
          if (HIWORD(v25))
          {
            v14 = 0;
            while (1)
            {
              result = (*(a2 + 168))(a3, a4, v13, 0, 1, &v23, &v25);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v23 <= 0xA && ((1 << v23) & 0x610) != 0)
              {
                result = (*(a2 + 168))(a3, a4, HIWORD(v25), 1, 1, &v22, &v25);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a2 + 168))(a3, a4, HIWORD(v25), 2, 1, &v22 + 2, &v25);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v22 != HIWORD(v22))
                {
                  if (v14 + 1 >= *(a5 + 6))
                  {
                    return result;
                  }

                  result = getWordIdx(a1, *(a5 + 128), *(a5 + 136), v22, HIWORD(v22), &v21);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v18 = 0;
                  v14 = v21;
                  v16 = *(*a6 + 224 * v21 + 216);
                  v17 = a5;
                  if (v16 != 1)
                  {
                    if (v16 != 2)
                    {
                      goto LABEL_29;
                    }

                    v17 = (a5 + 2);
                  }

                  v18 = *v17;
                  if (v18)
                  {
                    result = checkForExternalSildur(a2, a3, a4, HIWORD(v25), &v19);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    if (v19)
                    {
                      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : clash with WordRecord[%d] word[%d] external pause has priority", HIWORD(v25), v14);
                    }

                    else
                    {
                      result = (*(a2 + 160))(a3, a4, HIWORD(v25), 8, 1, &v18, &v24);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a2 + 160))(a3, a4, HIWORD(v25), 18, 9, "external", &v24);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : updating WordRecord[%d] word[%d] set as ext pause with duration=%d", HIWORD(v25), v14, v18);
                      *(*(a5 + 128) + 12 * v14) = 1;
                    }
                  }
                }
              }

LABEL_29:
              result = (*(a2 + 120))(a3, a4, HIWORD(v25), &v25 + 2);
              if ((result & 0x80000000) == 0)
              {
                v13 = HIWORD(v25);
                if (HIWORD(v25))
                {
                  continue;
                }
              }

              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t nn_phrasing_ProcessSent(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v10 = a9;
  v132 = 0;
  v11 = *(a5 + 8);
  v131 = 0;
  v128 = 0;
  __s2 = 0;
  v126 = 0;
  *(a7 + 136) = 0;
  *a9 = 1;
  if (!v11)
  {
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "skip NN pausing, no words found", a6, 0);
    Str = 0;
    goto LABEL_33;
  }

  v12 = a8;
  v129 = 0;
  v18 = (*(a2 + 104))(a3, a4, 1, 0, &v129 + 2);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = (*(a2 + 176))(a3, a4, HIWORD(v129), 1, &v128, &v129);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  Str = paramc_ParamGetStr(a1[5], "langcode", &__s2);
  if ((Str & 0x80000000) == 0)
  {
    v124 = v12;
    v121 = a3;
    v122 = a2;
    if (v129)
    {
      v20 = 0;
      v21 = 24;
      while (1)
      {
        if (*(v128 + v21 - 24) == 36)
        {
          v22 = *(v128 + v21);
          if (strcmp(v22, __s2))
          {
            MarkerArgStr = marker_getMarkerArgStr(1u);
            if (strcmp(v22, MarkerArgStr))
            {
              v24 = *(v128 + v21);
              v25 = marker_getMarkerArgStr(9u);
              if (strcmp(v24, v25))
              {
                v26 = *(v128 + v21);
                v27 = marker_getMarkerArgStr(2u);
                if (strcmp(v26, v27))
                {
                  break;
                }
              }
            }
          }
        }

        ++v20;
        v21 += 32;
        if (v20 >= v129)
        {
          goto LABEL_13;
        }
      }

      log_OutText(a1[4], "FE_PHRASING", 5, 0, "skip NN pausing, as language tag %s found");
      goto LABEL_33;
    }

LABEL_13:
    if (v124 == -1)
    {
      v28 = *(a7 + 16);
    }

    else
    {
      v28 = v124;
    }

    v29 = v28;
    if (v28)
    {
      LODWORD(v30) = *(a5 + 8);
      if (*(a5 + 8))
      {
        v119 = a4;
        v31 = 0;
        v32 = -1;
        v33 = 208;
        while (1)
        {
          if (**(*a5 + v33) == 88 && v31 + 1 != v30)
          {
            goto LABEL_28;
          }

          if (!v31)
          {
            log_OutText(a1[4], "FE_PHRASING", 5, 0, "skip 1 word phrase at word %d", 0);
            v32 = 0;
            goto LABEL_28;
          }

          v35 = a1[4];
          if (v31 - v32 >= v29)
          {
            break;
          }

          log_OutText(v35, "FE_PHRASING", 5, 0, "skip %d word phrase ending at word %d", v31 - v32, v31);
          v32 = v31;
LABEL_28:
          ++v31;
          v30 = *(a5 + 8);
          v33 += 224;
          if (v31 >= v30)
          {
            v10 = a9;
            goto LABEL_30;
          }
        }

        log_OutText(v35, "FE_PHRASING", 5, 0, "found valid predictive range of length %d (minimum setting is %d) ending on word %d - continue with NN pausing", v31 - v32, v29, v31);
        if (*(a5 + 8) <= *(a7 + 6))
        {
          v37 = v11;
        }

        else
        {
          v37 = *(a7 + 6);
        }

        if (*(a7 + 18))
        {
          v38 = v37;
        }

        else
        {
          v38 = *(a7 + 6);
        }

        v39 = (*(a7 + 112) + *(a7 + 4)) * v38;
        *(a7 + 56) = v39;
        v40 = heap_Alloc(a1[1], 4 * v39);
        v130 = v40;
        if (!v40)
        {
          Str = 2315264010;
          log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
          return Str;
        }

        v118 = v37;
        v41 = v37;
        v42 = *(a7 + 56);
        if (v42)
        {
          v43 = 0;
          do
          {
            v40[v43++] = -1.0;
          }

          while (v42 > v43);
        }

        log_OutText(a1[4], "FE_PHRASING", 5, 0, "Dimensions:\nmaxWordsInSent=%d\nword2vecVecLength=%dnumAdditionalFields=%d", *(a7 + 6), *(a7 + 112), *(a7 + 4));
        v45 = a9;
        v46 = v122;
        v47 = v124;
        v114 = v41;
        if (v41)
        {
          v48 = 0;
          v123 = 0;
          v117 = 0;
          v49 = 0;
          while (1)
          {
            v50 = *(a7 + 112) + *(a7 + 4);
            if (v50)
            {
              v51 = 0;
              v52 = v130;
              v53 = v48 * v50;
              do
              {
                v52[v53] = 0.0;
                ++v51;
                ++v53;
              }

              while (v50 > v51);
            }

            v54 = (*a5 + 224 * v123);
            v55 = *(v54[2] + 8 * *(a6 + 16));
            v56 = v54[21];
            v57 = v54[26];
            v58 = strlen(v55);
            v59 = (v58 & 0xFFC0) != 0 ? v58 : 64;
            if (!v49)
            {
              break;
            }

            if (v59 > v117)
            {
              v60 = heap_Realloc(a1[1], v49, v59 + 1);
              if (!v60)
              {
                goto LABEL_153;
              }

              v49 = v60;
LABEL_58:
              v117 = v59;
            }

            if (v56 && (*v56 != 45 || *(v56 + 1)))
            {
              strcpy(v49, v56);
            }

            else
            {
              if (*v57 == 88 && !v57[1])
              {
                v63 = v117;
              }

              else
              {
                v133[0] = 0;
                StartOfOrthPunc = getStartOfOrthPunc(v55, v133);
                v62 = v117;
                if (StartOfOrthPunc < v117)
                {
                  v62 = StartOfOrthPunc;
                }

                if (v133[0] == 1)
                {
                  v63 = v62;
                }

                else
                {
                  v63 = v117;
                }
              }

              v64 = v63;
              strncpy(v49, v55, v63);
              v49[v64] = 0;
            }

            log_OutText(a1[4], "FE_PHRASING", 5, 0, "word [%d] %s lookup %s", v48, *(*(*a5 + 224 * v123 + 16) + 8 * *(a6 + 16)), v49);
            v65 = (*(*(a7 + 72) + 56))(*(a7 + 96), *(a7 + 104), v49, *(a7 + 120));
            v47 = v124;
            v66 = "POS";
            if ((v65 & 0x1FFF) == 0x14)
            {
              if (((*(*(a7 + 72) + 56))(*(a7 + 96), *(a7 + 104), "$MEANW2V$", *(a7 + 120)) & 0x1FFF) == 0x14)
              {
                log_OutPublic(a1[4], "FE_PHRASING", 37004, "%s%s", "expected", "$MEANW2V$");
                Str = 2315264000;
                goto LABEL_149;
              }
            }

            else
            {
              Str = v65;
              if ((v65 & 0x80000000) != 0)
              {
                goto LABEL_149;
              }
            }

            v115 = v48;
            v116 = v49;
            v120 = v50 * v48;
            memcpy(&v130[v50 * v48], *(a7 + 120), 4 * *(a7 + 112));
            if (*(a7 + 10))
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              while (1)
              {
                v71 = *(*(a7 + 32) + v67);
                if (!strcmp(v71, "POS"))
                {
                  break;
                }

                v66 = "PHR";
                if (!strcmp(v71, "PHR"))
                {
                  v72 = *(*a5 + 224 * v123 + 80);
                  goto LABEL_93;
                }

                v66 = "TOK";
                if (!strcmp(v71, "TOK"))
                {
                  v72 = *(*a5 + 224 * v123 + 168);
                  goto LABEL_93;
                }

                v66 = "COMP";
                if (!strcmp(v71, "COMP"))
                {
                  v72 = *(*a5 + 224 * v123 + 176);
                  goto LABEL_93;
                }

                v66 = "SPUNC";
                if (!strcmp(v71, "SPUNC"))
                {
                  v72 = *(*a5 + 224 * v123 + 184);
                  goto LABEL_93;
                }

                v66 = "EPUNC";
                if (!strcmp(v71, "EPUNC"))
                {
                  v72 = *(*a5 + 224 * v123 + 192);
                  goto LABEL_93;
                }

                v66 = "PUNC";
                if (!strcmp(v71, "PUNC"))
                {
                  v72 = *(*a5 + 224 * v123 + 200);
                  goto LABEL_93;
                }

                if (strcmp(v71, "ORTHPUNC"))
                {
                  goto LABEL_95;
                }

                v72 = *(*a5 + 224 * v123 + 208);
                v73 = v68;
                v74 = a1;
                v75 = a7;
                v76 = "ORTHPUNC";
LABEL_94:
                IndexValue = getIndexValue(v74, v75, v73, v76, v72, &v132);
                if ((IndexValue & 0x80000000) != 0)
                {
                  Str = IndexValue;
                  v49 = v116;
                  goto LABEL_149;
                }

LABEL_95:
                v132 -= v69;
                v78 = v132;
                log_OutText(a1[4], "FE_PHRASING", 5, 0, "translated thisFeatureIdx=%d", v132);
                if (*(*(a7 + 32) + v67 + 8))
                {
                  v79 = v78 + 1.0;
                  v80 = *(a7 + 112);
                  v130[v120 + v70 + v80] = v79;
                  log_OutText(a1[4], "FE_PHRASING", 5, 0, "NUMERIC SET [%d] (%d + %d + %d) = %3.1lf + 1.0", v120 + v70 + v80, v120, v80, v70, v78);
                  v81 = *(a7 + 32);
                  v82 = 1;
                }

                else
                {
                  v83 = *(a7 + 112);
                  v130[v120 + v70 + v78 + v83] = 1.0;
                  log_OutText(a1[4], "FE_PHRASING", 5, 0, "ONEHOT SET [%d] (%d + %d + %d + %d) = 1.0", v120 + v70 + v78 + v83, v120, v83, v78, v70);
                  v81 = *(a7 + 32);
                  v82 = *(v81 + v67 + 26);
                }

                v47 = v124;
                v70 += v82;
                v84 = v81 + v67;
                v69 += *(v84 + 26);
                log_OutText(a1[4], "FE_PHRASING", 5, 0, "increase featureValOffset by %s %d", *v84, *(v84 + 26));
                ++v68;
                v67 += 32;
                v66 = "POS";
                if (v68 >= *(a7 + 10))
                {
                  goto LABEL_99;
                }
              }

              v72 = *(*(*a5 + 224 * v123 + 16) + 8 * *(a6 + 18));
LABEL_93:
              v73 = v68;
              v74 = a1;
              v75 = a7;
              v76 = v66;
              goto LABEL_94;
            }

LABEL_99:
            v46 = v122;
            v49 = v116;
            v48 = v115 + 1;
            ++v123;
            v45 = a9;
            if (v123 == v118)
            {
              goto LABEL_106;
            }
          }

          v49 = heap_Calloc(a1[1], 1, v59 + 1);
          if (!v49)
          {
LABEL_153:
            Str = 2315264010;
            v112 = a1[4];
            v113 = 37000;
LABEL_148:
            log_OutPublic(v112, "FE_PHRASING", v113, 0);
            goto LABEL_149;
          }

          goto LABEL_58;
        }

        v49 = 0;
LABEL_106:
        LOWORD(v44) = *(a7 + 8);
        *(**(a7 + 48) + 196) = v44 / 100.0;
        if ((paramc_ParamGetInt(a1[5], "nnpausingthresholdpercent", &v126) & 0x80000000) == 0)
        {
          v85 = v126 / 100.0;
          *(**(a7 + 48) + 196) = v85;
          log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN pausing threshold set to %f", v85);
        }

        v86 = v114;
        if (!*(a7 + 18))
        {
          v86 = *(a7 + 6);
        }

        Str = fi_predict(*(a7 + 48), &v130, v86, &v131);
        if ((Str & 0x80000000) != 0)
        {
          v112 = a1[4];
          v113 = 37002;
          goto LABEL_148;
        }

        v87 = *(a5 + 8);
        *(a7 + 136) = v87;
        if (*(a7 + 6))
        {
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = v118;
          do
          {
            v92 = *(a7 + 128);
            *(v92 + v88) = 0;
            if (v90 < v91)
            {
              v93 = (*a5 + v89);
              v94 = v92 + v88;
              v95 = v93[1];
              v96 = *(v131 + 8 * v90);
              *(v94 + 4) = *v93;
              *(v94 + 8) = v95;
              v97 = a1[4];
              if (v96)
              {
                log_OutText(v97, "FE_PHRASING", 5, 0, "Prediction [%d,%s]: %s");
              }

              else
              {
                log_OutText(v97, "FE_PHRASING", 5, 0, "Prediction via thresholding [%d,%s]: 0");
              }

              v98 = *(v131 + 8 * v90);
              if (v98 && *v98 == 49 && !v98[1])
              {
                v99 = *a5 + v89;
                if (**(v99 + 208) == 88)
                {
                  *(v99 + 216) = 2;
                  log_OutText(a1[4], "FE_PHRASING", 5, 0, "_RESPPAUSE", 0);
                }

                else
                {
                  *(v99 + 216) = 1;
                  log_OutText(a1[4], "FE_PHRASING", 5, 0, "_PUNCPAUSE", 0);
                }
              }

              else
              {
                *(*a5 + v89 + 216) = 0;
              }

              v91 = v118;
            }

            ++v90;
            v89 += 224;
            v88 += 12;
          }

          while (v90 < *(a7 + 6));
          v87 = *(a5 + 8);
          v45 = a9;
          v46 = v122;
          v47 = v124;
        }

        if (v118 < v87)
        {
          v100 = 0;
          v101 = v87 - v118;
          v102 = vdupq_n_s64(v101 - 1);
          v103 = (*a5 + 224 * v118);
          do
          {
            v104 = vdupq_n_s64(v100);
            v105 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, xmmword_1C378AF00)));
            if (vuzp1_s16(v105, *v102.i8).u8[0])
            {
              v103[54] = 0;
            }

            if (vuzp1_s16(v105, *&v102).i8[2])
            {
              v103[110] = 0;
            }

            if (vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, xmmword_1C378AEF0)))).i32[1])
            {
              v103[166] = 0;
              v103[222] = 0;
            }

            v100 += 4;
            v103 += 224;
          }

          while (((v101 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v100);
        }

        validatePauseLocations(a1, a7, a5, a6, v47);
        *v45 = 0;
        if (*(a5 + 8))
        {
          v106 = 0;
          v107 = 0;
          v108 = -*(a5 + 8);
          v109 = *a5 + 216;
LABEL_138:
          v110 = (v109 + 224 * v107++);
          do
          {
            v111 = *v110;
            v110 += 56;
            if (v111)
            {
              v106 = 1;
              *v45 = 1;
              if (v108 + v107)
              {
                goto LABEL_138;
              }

              goto LABEL_145;
            }

            ++v107;
          }

          while (v108 + v107 != 1);
          if ((v106 & 1) == 0)
          {
            goto LABEL_146;
          }

LABEL_145:
          log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN_PAUSING has prediction(s)", 0);
          Str = NNPausing_UpdateLingdb(a1, v46, v121, v119, a7, a5);
        }

        else
        {
LABEL_146:
          log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN_PAUSING has no prediction(s)", 0);
        }

LABEL_149:
        if (v130)
        {
          heap_Free(a1[1], v130);
          v130 = 0;
        }

        if (v49)
        {
          heap_Free(a1[1], v49);
        }

        return Str;
      }
    }

LABEL_30:
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "skip NN pausing, no valid predictive range found (doLenVerification setting is %d, minWordSpan parameter is %d)");
LABEL_33:
    *v10 = 0;
  }

  return Str;
}

uint64_t getIndexValue(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4, const char *a5, unsigned __int16 *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  __strcpy_chk();
  __strncat_chk();
  ReadOnly = ssftmap_FindReadOnly(*(a2 + 24), v21, &v20);
  if ((ReadOnly & 0x1FFF) == 0x14)
  {
    v13 = *(a2 + 32) + 32 * a3;
    v14 = *(v13 + 24);
    *a6 = v14;
    if (*(v13 + 8))
    {
      v15 = "NUMERIC";
    }

    else
    {
      v15 = "ONEHOT";
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s [%s] (default) convert %s to vector col %d", v15, a4, a5, v14);
    return 0;
  }

  else
  {
    v16 = ReadOnly;
    v17 = atoi(v20);
    *a6 = v17;
    if (*(*(a2 + 32) + 32 * a3 + 8))
    {
      v18 = "NUMERIC";
    }

    else
    {
      v18 = "ONEHOT";
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s [%s] convert %s to vector col %d", v18, a4, a5, v17);
  }

  return v16;
}

uint64_t validatePauseLocations(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (a5 == -1)
  {
    v7 = a2[8];
  }

  else
  {
    v7 = a5;
  }

  result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "validatePauseLocations doCompVerification=%d doPHRVerification=%d doLenVerification=%d minWordSpan=%d", a2[6], a2[7], a2[8], a5);
  LODWORD(v9) = *(a3 + 4);
  if (!*(a3 + 4))
  {
    return result;
  }

  v38 = v7;
  v10 = 0;
  v11 = 0;
  v12 = 208;
  v13 = *a3;
  do
  {
    v14 = v10 + 1;
    if (v10 + 1 >= v9 || (v15 = *(v13 + v12 + 96)) == 0)
    {
LABEL_13:
      v18 = 0;
      v17 = 1;
      goto LABEL_14;
    }

    v16 = *v15;
    if (v16 == 79)
    {
      if (v15[1])
      {
        goto LABEL_13;
      }
    }

    else if (v16 != 66 || v15[1] != 45)
    {
      goto LABEL_13;
    }

    v17 = 0;
    v18 = 1;
LABEL_14:
    v19 = v13 + v12;
    v20 = *(v13 + v12 - 32);
    if (v20 && !strcmp(v20, "[COMP"))
    {
      v11 = 1;
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "[%d] %s bInCompoundWord=%d bPHRBnd=%d pause=%d orthPunc=%s    (%s %s)", v10, *(*(v19 - 192) + 8 * *(a4 + 16)), v11, v18, *(v19 + 8), *v19, *(v19 - 128), v20);
    v13 = *a3;
    if (*(*a3 + v12 + 8))
    {
      if (v11 == 1 && a2[6] == 1 && strcmp(*(v13 + v12 - 32), "COMP]"))
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside compound word");
LABEL_46:
        v13 = *a3;
        *(*a3 + v12 + 8) = 0;
        goto LABEL_47;
      }

      v21 = v17 ^ 1;
      if (a2[7] != 1)
      {
        v21 = 1;
      }

      if ((v21 & 1) == 0)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside PHR");
        goto LABEL_46;
      }

      v22 = *(v13 + v12 - 40);
      v23 = *v22;
      if ((v23 != 45 || v22[1]) && v14 < *(a3 + 4))
      {
        v24 = *(v13 + v12 + 184);
        v25 = *v24;
        if ((v25 != 45 || v24[1]) && (v23 == 73 || v23 == 66) && v25 == 73)
        {
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside TOK");
          goto LABEL_46;
        }
      }

      v26 = *(a4 + 16);
      v27 = *(*(v13 + v12 - 192) + 8 * v26);
      if (*v27 == 194 && v27[1] == 167)
      {
        v28 = *(a3 + 4);
        if (!v27[2] && v14 < v28)
        {
          v29 = *(*(v13 + v12 + 32) + 8 * v26);
          if (*v29 == 194 && v29[1] == 167 && !v29[2])
          {
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside DUMMYWORD sequence");
            goto LABEL_46;
          }
        }
      }

      else
      {
        v28 = *(a3 + 4);
      }

      if (v10 + 3 > v28)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block on last 2 words");
        goto LABEL_46;
      }
    }

LABEL_47:
    result = *(v13 + v12 - 32);
    if (result)
    {
      result = strcmp(result, "COMP]");
      if (!result)
      {
        v11 = 0;
      }
    }

    v9 = *(a3 + 4);
    v12 += 224;
    ++v10;
  }

  while (v14 < v9);
  if (v38 && *(a3 + 4))
  {
    v30 = 0;
    v31 = 0;
    v32 = *a3;
    v33 = -1;
    do
    {
      if (**(v32 + 224 * v30 + 208) != 88 || v31 + 1 == v9)
      {
        if (v30)
        {
          if (v31 - v33 >= v38)
          {
            goto LABEL_69;
          }

          if (v33 == 0xFFFF)
          {
            v33 = 0;
          }

          if (v30 <= v33)
          {
LABEL_69:
            v33 = v30;
          }

          else
          {
            v35 = v33;
            v36 = v33;
            v37 = 224 * v33;
            do
            {
              if (*(v32 + v37 + 216) == 2)
              {
                result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : blocked via len constraints, span word %d to word %d < %d", v35, *(*(v32 + v37 + 16) + 8 * *(a4 + 16)), v36, v31, v38);
                v32 = *a3;
                *(*a3 + v37 + 216) = 0;
              }

              ++v35;
              v37 += 224;
            }

            while (v30 != v35);
            LODWORD(v9) = *(a3 + 4);
            v33 = v30;
          }
        }

        else
        {
          v33 = 0;
        }
      }

      v31 = ++v30;
    }

    while (v30 < v9);
  }

  return result;
}