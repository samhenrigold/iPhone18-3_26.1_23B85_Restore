uint64_t checkStatCOMP(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t checkFeOneWordCLM(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_clm", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t checkParaDCT(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_parallel", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t hlp_setKeyword(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  memset(__c, 0, sizeof(__c));
  *a6 = 0;
  v8 = (*(a4 + 96))(a2, a3, "fecfg", a5, &__c[3], &__c[1], __c);
  result = 0;
  if ((v8 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v11 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v11)
    {
      *v11 = 0;
    }

    v12 = *(a1 + 8);
    v13 = cstdlib_strlen(**&__c[3]);
    v14 = heap_Calloc(v12, 1, v13 + 1);
    *a6 = v14;
    if (v14)
    {
      cstdlib_strcpy(v14, **&__c[3]);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
      return 2310021130;
    }
  }

  return result;
}

uint64_t hlp_GetParams(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  __s1 = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1[8], a1[9], a1[10], "mosynt_usesubmorphana", "yes", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    return CfgParamVal;
  }

  *a2 = cstdlib_strcmp(__s1, "yes") == 0;
  v7 = com_mosynt_GetCfgParamVal(a1[8], a1[9], a1[10], "mosynt_enablegraphsymcache", "yes", &__s1);
  if ((v7 & 0x80000000) == 0)
  {
    *a3 = cstdlib_strcmp(__s1, "yes") == 0;
  }

  return v7;
}

uint64_t hlp_GetPart(uint64_t a1)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nrpart_g2p", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) == 0 && *&__c[1])
  {
    v3 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v3)
    {
      *v3 = 0;
    }

    *(a1 + 556) = cstdlib_atoi(**&__c[3]);
  }

  return v2;
}

uint64_t hlp_common_ObjOpenReopen(uint64_t a1)
{
  *&v22[5] = -1;
  __s1 = 0;
  v17 = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  DTData = hlp_LoadDTData(a1);
  if ((DTData & 0x80000000) != 0)
  {
    return DTData;
  }

  v22[4] = 0;
  v18 = 0;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "esctn", &v18, &v22[5], &v22[4]);
  if ((v3 & 0x80000000) == 0)
  {
    if (!*&v22[5])
    {
      goto LABEL_7;
    }

    v4 = *(a1 + 1216);
    v5 = *(*a1 + 8);
    v6 = cstdlib_strlen(*v18) + 1;
    if (v4)
    {
      v7 = heap_Realloc(v5, v4, v6);
      if (v7)
      {
LABEL_6:
        *(a1 + 1216) = v7;
        cstdlib_strcpy(v7, *v18);
        v8 = *(a1 + 1216);
        *(v8 + cstdlib_strlen(*v18) - 1) = 124;
LABEL_7:
        *(a1 + 1224) = 1;
        cstdlib_memset(__b, 0, 7uLL);
        cstdlib_strcpy(__b, "g2p");
        if (*(a1 + 1224))
        {
          v9 = (a1 + 1327);
          v10 = -223;
          while (1)
          {
            LH_itoa(v10 + 256, __s, 0xAu);
            v11 = cstdlib_strlen(__s);
            cstdlib_memcpy(v22, __s, v11);
            *&v22[5] = -1;
            v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __b, &v18, &v22[5], &v22[4]);
            if ((v3 & 0x80000000) != 0)
            {
              break;
            }

            if (*&v22[5])
            {
              cstdlib_strcpy(v9, "");
              v12 = *v18;
              v13 = cstdlib_strlen(*v18);
              cstdlib_strncat(v9, v12, v13 - 1);
            }

            else
            {
              *(a1 + 1224) = 0;
            }

            if (!__CFADD__(v10++, 1))
            {
              v9 += 3;
              if (*(a1 + 1224))
              {
                continue;
              }
            }

            goto LABEL_15;
          }
        }

        else
        {
LABEL_15:
          *(a1 + 2272) = 0;
          if ((hlp_GetCfgParamVal(*(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_enable_POIenhancement", "no", &__s1) & 0x80000000) == 0)
          {
            *(a1 + 2272) = cstdlib_strcmp(__s1, "yes") == 0;
          }

          if ((paramc_ParamGetStr(*(*a1 + 40), "enablePOIenhancement", &v17) & 0x80000000) == 0)
          {
            if (cstdlib_strcmp(v17, "yes"))
            {
              v15 = cstdlib_strcmp(v17, "YES") == 0;
            }

            else
            {
              v15 = 1;
            }

            *(a1 + 2272) = v15;
          }

          *(a1 + 2276) = 1;
          if ((hlp_GetCfgParamVal(*(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_MW_replace_spaces_with_underscores", "yes", &__s1) & 0x80000000) == 0)
          {
            *(a1 + 2276) = cstdlib_strcmp(__s1, "yes") == 0;
          }
        }

        return v3;
      }
    }

    else
    {
      v7 = heap_Alloc(v5, v6);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

  return v3;
}

uint64_t fe_oneword_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (a1)
  {
    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    if (a1[13])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[19])
    {
      objc_ReleaseObject(*(*a1 + 48), "PHONMAP");
    }

    if (a1[16])
    {
      objc_ReleaseObject(*(*a1 + 48), "CLMOBJECT");
    }

    oneword_posparser_Close(a1, v4, v5);
    v6 = a1[272];
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
    }

    a1[272] = 0;
    v7 = a1[273];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    a1[273] = 0;
    if (*(a1 + 542) == 1)
    {
      crf_mde_seg_unload(*a1, a1[1], (a1 + 252));
      *(a1 + 542) = 0;
    }

    v8 = a1[20];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    a1[20] = 0;
    a1[24] = 0;
    v9 = a1[21];
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
    }

    a1[21] = 0;
    a1[25] = 0;
    v10 = a1[22];
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
    }

    a1[22] = 0;
    a1[26] = 0;
    v11 = a1[23];
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
    }

    a1[23] = 0;
    a1[27] = 0;
    v12 = a1[29];
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
    }

    a1[29] = 0;
    v13 = a1[30];
    if (v13)
    {
      heap_Free(*(*a1 + 8), v13);
    }

    a1[30] = 0;
    v14 = a1[31];
    if (v14)
    {
      heap_Free(*(*a1 + 8), v14);
    }

    a1[31] = 0;
    v15 = a1[32];
    if (v15)
    {
      heap_Free(*(*a1 + 8), v15);
    }

    a1[32] = 0;
    v16 = a1[33];
    if (v16)
    {
      heap_Free(*(*a1 + 8), v16);
    }

    a1[33] = 0;
    v17 = a1[152];
    if (v17)
    {
      heap_Free(*(*a1 + 8), v17);
    }

    a1[152] = 0;
    if (a1[71])
    {
      hlp_UnLoadDTData(a1);
      ssftmap_ObjClose(a1[71]);
    }

    if (a1[275])
    {
      kbsymtab_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 275);
    }

    if (a1[279])
    {
      wgram_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 279);
    }

    if (a1[280])
    {
      fst_UnloadData(a1[2], a1[3], a1 + 280);
    }

    v18 = a1[276];
    if (v18)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v18);
    }

    v19 = a1[277];
    if (v19)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v19);
    }

    v20 = a1[278];
    if (v20)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v20);
    }

    v21 = a1[6];
    if (v21)
    {
      heap_Free(*(*a1 + 8), v21);
    }

    v22 = a1[282];
    if (v22)
    {
      heap_Free(*(*a1 + 8), v22);
    }

    v23 = a1[283];
    if (v23)
    {
      heap_Free(*(*a1 + 8), v23);
    }

    v24 = a1[285];
    if (v24)
    {
      heap_Free(*(*a1 + 8), v24);
      a1[285] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t hlp_UnLoadDTData(uint64_t *a1)
{
  v15[100] = *MEMORY[0x277D85DE8];
  v14 = 0;
  bzero(v15, 0x320uLL);
  if ((ssftmap_IteratorOpen(a1[71], 0, 1, &v14) & 0x80000000) != 0)
  {
    return ssftmap_Clear(a1[71]);
  }

  v12 = 0;
  v13 = 0;
  if ((ssftmap_IteratorNext(v14, &v13, &v12) & 0x80000000) != 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  LOBYTE(v2) = 0;
  do
  {
    if (!v2)
    {
      v3 = 0;
LABEL_11:
      LOBYTE(v2) = v2 + 1;
      v15[v3] = v12;
      continue;
    }

    v3 = v2;
    v4 = v15;
    v5 = 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (v5 >= v2)
      {
        break;
      }

      ++v5;
    }

    while (v6 != v12);
    if (v6 != v12)
    {
      goto LABEL_11;
    }
  }

  while ((ssftmap_IteratorNext(v14, &v13, &v12) & 0x80000000) == 0);
  v2 = v2;
LABEL_16:
  ssftmap_IteratorClose(v14);
  result = ssftmap_Clear(a1[71]);
  if (v2)
  {
    v9 = v2;
    v10 = v15;
    do
    {
      v11 = *v10++;
      OOC_PlacementDeleteObject((a1 + 111), *(v11 + 16));
      ssftriff_reader_ReleaseChunkData(*v11);
      result = heap_Free(*(*a1 + 8), v11);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t fe_oneword_ObjReopen(void *a1, int a2)
{
  v21 = 0;
  v20 = 0;
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (!a1)
  {
    return result;
  }

  result = (*(a1[10] + 88))(a1[8], a1[9], &v21, &v20);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v4 = v20 == 1 && v21 == 1;
  v5 = v4;
  *(a1 + 140) = v5;
  *(a1 + 556) = 1;
  result = checkStatCOMP(a1[8], a1[9], a1[10], a1 + 500);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkSkipCrosstoken(a1[8], a1[9], a1[10], a1 + 234);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkFeOneWordCLM(a1[8], a1[9], a1[10], a1 + 235);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkParaDCT(a1[8], a1[9], a1[10], a1 + 499);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = oneword_posparser_Reopen(a1, v6, v7);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v8 = a1[272];
  if (v8)
  {
    heap_Free(*(*a1 + 8), v8);
  }

  a1[272] = 0;
  result = hlp_setKeyword(*a1, a1[8], a1[9], a1[10], "feoneword_latinPOStag", a1 + 272);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v9 = a1[273];
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
  }

  a1[273] = 0;
  result = hlp_setKeyword(*a1, a1[8], a1[9], a1[10], "feoneword_latin2enx", a1 + 273);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (*(a1 + 542) == 1)
  {
    crf_mde_seg_unload(*a1, a1[1], (a1 + 252));
  }

  *(a1 + 542) = 0;
  result = crf_mde_seg_load(a1[2], a1[3], a1[4], a1[5], *a1, a1[1], a1[8], a1[9], a1[10], (a1 + 252), a1 + 542);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v10 = (a1 + 274);
  v11 = *(a1 + 548);
  result = com_mosynt_UseMosynt(a1[8], a1[9], a1[10], a1 + 548);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v12 = *v10;
  if (v11 != 1)
  {
    if (v12 == 1)
    {
      v19 = 1;
      goto LABEL_57;
    }

    goto LABEL_64;
  }

  if (v12 != 1)
  {
    if (v12)
    {
      goto LABEL_64;
    }

    if (a1[275])
    {
      result = kbsymtab_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 275);
      a1[275] = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (a1[279])
    {
      result = wgram_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 279);
      a1[279] = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (a1[280])
    {
      result = fst_UnloadData(a1[2], a1[3], a1 + 280);
      a1[280] = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v13 = a1[276];
    if (v13)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v13);
      a1[276] = 0;
    }

    v14 = a1[277];
    if (v14)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v14);
      a1[277] = 0;
    }

    v15 = a1[278];
    if (v15)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v15);
      a1[278] = 0;
    }

    if (*v10 != 1)
    {
LABEL_64:
      cstdlib_strcpy(a1 + 300, "normal");
      result = oneword_GetMdeSettings(a1, "normal");
      if ((result & 0x80000000) == 0)
      {
        result = hlp_GetPart(a1);
        if ((result & 0x80000000) == 0)
        {
          hlp_UnLoadDTData(a1);
          return hlp_common_ObjOpenReopen(a1);
        }
      }

      return result;
    }
  }

  v19 = 1;
  if (!a1[275] || (result = kbsymtab_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 275), a1[275] = 0, (result & 0x80000000) == 0))
  {
    if (!a1[279] || (result = wgram_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 279), a1[279] = 0, (result & 0x80000000) == 0))
    {
      if (!a1[280] || (result = fst_UnloadData(a1[2], a1[3], a1 + 280), a1[280] = 0, (result & 0x80000000) == 0))
      {
        v16 = a1[276];
        if (v16)
        {
          kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v16);
          a1[276] = 0;
        }

        v17 = a1[277];
        if (v17)
        {
          kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v17);
          a1[277] = 0;
        }

        v18 = a1[278];
        if (v18)
        {
          kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v18);
          a1[278] = 0;
        }

LABEL_57:
        result = hlp_GetParams(a1, a1 + 562, &v19);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = wgram_LoadData(a1[2], a1[3], a1[4], a1[5], a1 + 279);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kbsymtab_LoadData(a1[2], a1[3], a1[4], a1[5], a1 + 275, v19);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = fst_LoadData(a1[2], a1[3], a1 + 280);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(a1[2], a1[3], a1[4], a1[5], a1 + 1228, a1[8], a1[9], a1[10], 0, a1 + 276);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(a1[2], a1[3], a1[4], a1[5], a1 + 1228, a1[8], a1[9], a1[10], 1u, a1 + 277);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(a1[2], a1[3], a1[4], a1[5], a1 + 1228, a1[8], a1[9], a1[10], 2u, a1 + 278);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_64;
      }
    }
  }

  return result;
}

uint64_t fe_oneword_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (*(a1 + 2004))
  {

    return oneword_posparser_Start(a1);
  }

  return result;
}

uint64_t fe_oneword_MosyntGetMosyntParamVal(void *a1, uint64_t a2, char *__src, char *__dst, int a5)
{
  *&v14[3] = 0;
  *&v14[1] = -1;
  v14[0] = 0;
  v12 = 0;
  cstdlib_strcpy(__dst, __src);
  TermSubstr = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", a2, &v14[3], &v14[1], v14);
  if ((TermSubstr & 0x80000000) == 0)
  {
    if (*&v14[1])
    {
      v13 = 0;
      TermSubstr = mosynt_GetTermSubstr(**&v14[3], &v13, v14[0], &v12, __dst, a5);
      if ((TermSubstr & 0x80000000) == 0 && !v12)
      {
        cstdlib_strcpy(__dst, __src);
      }
    }
  }

  return TermSubstr;
}

const char *hlp_FindWordSep(const char *a1, int a2, unsigned int a3)
{
  LODWORD(v4) = a2;
  v6 = cstdlib_strlen(a1);
  result = 0;
  if (v6 > v4 && v4 < a3)
  {
    v4 = v4;
    while (1)
    {
      v8 = a1[v4];
      if (v8 == 32 || v8 == 95)
      {
        break;
      }

      ++v4;
      v9 = cstdlib_strlen(a1);
      result = 0;
      if (v4 >= v9 || v4 >= a3)
      {
        return result;
      }
    }

    return &a1[v4];
  }

  return result;
}

uint64_t hlp_ShouldAddAsVariant(const char *a1, char *a2, char *__s2)
{
  result = cstdlib_strcmp(a1, __s2);
  if (result)
  {
    v6 = cstdlib_strstr(a2, __s2);
    if (v6)
    {
      v7 = v6;
      v8 = a2;
      while (v7 != a2 && *(v7 - 1) == 18 || v8[cstdlib_strlen(__s2)] && v8[cstdlib_strlen(__s2)] != 18)
      {
        v8 = &v7[cstdlib_strlen(__s2)];
        v7 = cstdlib_strstr(v8, __s2);
        if (!v7)
        {
          return 1;
        }
      }

      cstdlib_strlen(__s2);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t fe_oneword_SplitMW(void *a1, uint64_t a2, uint64_t a3)
{
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v78 = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v94 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v6 = (*(a1[7] + 176))(a2, a3, HIWORD(v94), 0, &v87, &v91 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v94), &v94);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v94;
    if (v94)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = (*(a1[7] + 168))(a2, a3, v8, 0, 1, &v92 + 4, &v91 + 2);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_119:
          v7 = v13;
LABEL_120:
          if (!v11)
          {
            goto LABEL_122;
          }

          goto LABEL_121;
        }

        if (HIDWORD(v92) == 4)
        {
          if (v11)
          {
            *v11 = 0;
          }

          if (v10)
          {
            *v10 = 0;
          }

          v13 = (*(a1[7] + 176))(a2, a3, v94, 3, &v90, &v91 + 2);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_119;
          }

          PhonWordSep = oneword_FindPhonWordSep(v90, &v83);
          if (PhonWordSep)
          {
            v15 = PhonWordSep;
            v13 = (*(a1[7] + 168))(a2, a3, v94, 1, 1, &v86 + 2, &v91 + 2);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_119;
            }

            v13 = (*(a1[7] + 168))(a2, a3, v94, 2, 1, &v85 + 2, &v91 + 2);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_119;
            }

            WordSep = hlp_FindWordSep(v87, HIWORD(v86), HIWORD(v85));
            if (WordSep)
            {
              break;
            }
          }
        }

LABEL_114:
        v7 = (*(a1[7] + 120))(a2, a3, v94, &v94);
        if ((v7 & 0x80000000) == 0)
        {
          v8 = v94;
          if (v94)
          {
            continue;
          }
        }

        goto LABEL_120;
      }

      __s = 0;
      LOWORD(v85) = HIWORD(v85);
      HIWORD(v85) = WordSep - v87;
      v13 = (*(a1[7] + 160))(a2, a3, v94, 2, 1, &v85 + 2, &v91);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_119;
      }

      v84 = HIWORD(v85) + 1;
      if (((*(a1[7] + 184))(a2, a3, v94, 11, &v78) & 0x80000000) != 0 || v78 != 1 || ((*(a1[7] + 176))(a2, a3, v94, 11, &__s, &v91 + 2) & 0x80000000) != 0)
      {
        __src = v11;
LABEL_67:
        v45 = v15;
        *v15 = 0;
        v46 = v83;
        WordDctBeforOrAfter = (*(a1[7] + 176))(a2, a3, v94, 5, &v88, &v91 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_127;
        }

        v75 = v10;
        v48 = cstdlib_strstr(v88, "\"");
        if (v48)
        {
          *v48 = 0;
          v49 = v48 + 1;
        }

        else
        {
          v49 = v88;
        }

        v50 = (*(a1[7] + 176))(a2, a3, v94, 6, &v89, &v91 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v50 = (*(a1[7] + 176))(a2, a3, v94, 9, &v81, &v91 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v50 = (*(a1[7] + 176))(a2, a3, v94, 4, &v80, &v91 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v50 = (*(a1[7] + 168))(a2, a3, v94, 7, 1, &v79 + 2, &v91 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v51 = (*(a1[7] + 184))(a2, a3, v94, 17, &v78) >= 0 && v78 == 1;
        v52 = v51;
        if (v51)
        {
          v50 = (*(a1[7] + 168))(a2, a3, v94, 17, 1, &v79, &v91 + 2);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_124;
          }
        }

        v73 = v9;
        v82 = 0;
        v53 = (*(a1[7] + 184))(a2, a3, v94, 12, &v78) >= 0 && v78 == 1;
        v54 = v53;
        if (v53)
        {
          v50 = (*(a1[7] + 176))(a2, a3, v94, 12, &v82, &v91 + 2);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_124;
          }
        }

        v55 = v94;
        v93 = v94;
        if (v94)
        {
          v56 = &v79;
          if (!v52)
          {
            v56 = 0;
          }

          __s2a = v56;
          while (1)
          {
            v12 = v55;
            v50 = (*(a1[7] + 168))(a2, a3, v55, 1, 1, &v86, &v91 + 2);
            if ((v50 & 0x80000000) != 0)
            {
              break;
            }

            v50 = (*(a1[7] + 168))(a2, a3, v93, 0, 1, &v92, &v91 + 2);
            if ((v50 & 0x80000000) != 0)
            {
              break;
            }

            if (HIWORD(v85) + 1 < v86 || v86 >= HIWORD(v85) && v92 == 16)
            {
              v59 = v82;
              if (!v54)
              {
                v59 = 0;
              }

              v62 = v49;
              v10 = v75;
              WordDctBeforOrAfter = hlp_CreateWordDctBeforOrAfter(a1, a2, a3, 1, v93, &v84, &v85, &v45[v46], v75, v62, v89, v81, v80, &v79 + 2, __s2a, v59);
              goto LABEL_112;
            }

            v50 = (*(a1[7] + 120))(a2, a3, v93, &v93);
            if ((v50 & 0x80000000) != 0)
            {
              break;
            }

            v55 = v93;
            if (!v93)
            {
              goto LABEL_104;
            }
          }

LABEL_124:
          v7 = v50;
          v10 = v75;
LABEL_125:
          v11 = __src;
          if (!__src)
          {
LABEL_122:
            if (v10)
            {
              heap_Free(*(*a1 + 8), v10);
            }

            return v7;
          }

LABEL_121:
          heap_Free(*(*a1 + 8), v11);
          goto LABEL_122;
        }

LABEL_104:
        v57 = &v79;
        if (!v52)
        {
          v57 = 0;
        }

        v58 = v82;
        if (!v54)
        {
          v58 = 0;
        }

        v61 = v49;
        v10 = v75;
        WordDctBeforOrAfter = hlp_CreateWordDctBeforOrAfter(a1, a2, a3, 0, v12, &v84, &v85, &v45[v46], v75, v61, v89, v81, v80, &v79 + 2, v57, v58);
LABEL_112:
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
LABEL_127:
          v7 = WordDctBeforOrAfter;
          goto LABEL_125;
        }

        v9 = v73;
        v11 = __src;
        goto LABEL_114;
      }

      if (v11 | v10)
      {
        if (cstdlib_strlen(__s) + 1 <= v9)
        {
          goto LABEL_27;
        }

        v22 = v11;
        v23 = v15;
        v24 = *(*a1 + 8);
        v25 = cstdlib_strlen(__s);
        v26 = heap_Realloc(v24, v22, v25 + 1);
        v27 = *(*a1 + 8);
        v28 = cstdlib_strlen(__s) + 1;
        v29 = v27;
        v15 = v23;
        v11 = v26;
        v21 = heap_Realloc(v29, v10, v28);
      }

      else
      {
        v17 = *(*a1 + 8);
        v18 = cstdlib_strlen(__s);
        v11 = heap_Alloc(v17, v18 + 1);
        v19 = *(*a1 + 8);
        v20 = cstdlib_strlen(__s);
        v21 = heap_Alloc(v19, v20 + 1);
      }

      v10 = v21;
      v9 = cstdlib_strlen(__s) + 1;
LABEL_27:
      v7 = 2310021130;
      if (!v11 || !v10)
      {
        goto LABEL_120;
      }

      __src = v11;
      v69 = v15;
      v30 = v90;
      if (v90 && (v31 = __s) != 0 && cstdlib_strlen(__s) + 1 <= v9)
      {
        v95[0] = 0;
        *__src = 0;
        *v10 = 0;
        v33 = cstdlib_strlen(v30);
        v34 = oneword_CountPhoneticWords(v30, &v30[v33]);
        v35 = oneword_FindPhonWordSep(v30, v95);
        v72 = v9;
        if (v35)
        {
          v65 = &v35[v95[0]];
        }

        else
        {
          v65 = 0;
          v35 = &v30[cstdlib_strlen(v30)];
        }

        v63 = *v35;
        v64 = v35;
        *v35 = 0;
        if (cstdlib_strlen(v31))
        {
          v37 = v34 == 2 && v65 != 0;
          v66 = v37;
          v67 = v34;
          v74 = v10;
          v68 = v12;
          do
          {
            v38 = cstdlib_strstr(v31, "\x12");
            if (!v38)
            {
              v38 = &v31[cstdlib_strlen(v31)];
            }

            v39 = oneword_CountPhoneticWords(v31, v38);
            v40 = *v38;
            if (v34 == v39)
            {
              *v38 = 0;
              v41 = oneword_FindPhonWordSep(v31, v95);
              if (v41)
              {
                v42 = v41;
                __s2 = &v41[v95[0]];
              }

              else
              {
                v95[0] = 0;
                __s2 = 0;
                v42 = &v31[cstdlib_strlen(v31)];
              }

              v43 = *v42;
              *v42 = 0;
              if (hlp_ShouldAddAsVariant(v30, __src, v31))
              {
                if (cstdlib_strlen(__src))
                {
                  cstdlib_strcat(__src, "\x12");
                }

                cstdlib_strcat(__src, v31);
              }

              *v42 = v43;
              v10 = v74;
              v12 = v68;
              if (cstdlib_strlen(&v42[v95[0]]))
              {
                v44 = v66;
                if (!__s2)
                {
                  v44 = 0;
                }

                if (!v44 || hlp_ShouldAddAsVariant(v65, v74, __s2))
                {
                  if (cstdlib_strlen(v74))
                  {
                    cstdlib_strcat(v74, "\x12");
                  }

                  cstdlib_strcat(v74, &v42[v95[0]]);
                }
              }

              *v38 = v40;
              v34 = v67;
            }

            if (!v40)
            {
              break;
            }

            v31 = v38 + 1;
          }

          while (cstdlib_strlen(v38 + 1));
        }

        *v64 = v63;
        v9 = v72;
        v32 = __src;
      }

      else
      {
        v32 = __src;
        *__src = 0;
        *v10 = 0;
      }

      cstdlib_strcpy(__s, v32);
      v15 = v69;
      goto LABEL_67;
    }
  }

  return v7;
}

uint64_t hlp_CreateWordDctBeforOrAfter(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, char *__s, char *a10, char *a11, char *a12, char *a13, uint64_t a14, uint64_t a15, const char *a16)
{
  v45 = 0;
  v22 = 88;
  if (!a4)
  {
    v22 = 80;
  }

  result = (*(*(a1 + 56) + v22))(a2, a3, a5, &v45);
  if ((result & 0x80000000) == 0)
  {
    v46 = 4;
    result = (*(*(a1 + 56) + 160))(a2, a3, v45, 0, 1, &v46, &v45 + 2);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 160))(a2, a3, v45, 1, 1, a6, &v45 + 2);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 160))(a2, a3, v45, 2, 1, a7, &v45 + 2);
        if ((result & 0x80000000) == 0)
        {
          v24 = *(*(a1 + 56) + 160);
          v25 = v45;
          v26 = cstdlib_strlen(a8);
          result = v24(a2, a3, v25, 3, (v26 + 1), a8, &v45 + 2);
          if ((result & 0x80000000) == 0)
          {
            if (!__s || !cstdlib_strlen(__s) || (v27 = *(*(a1 + 56) + 160), v28 = v45, v29 = cstdlib_strlen(__s), result = v27(a2, a3, v28, 11, (v29 + 1), __s, &v45 + 2), (result & 0x80000000) == 0))
            {
              v30 = *(*(a1 + 56) + 160);
              v31 = v45;
              v32 = cstdlib_strlen(a10);
              result = v30(a2, a3, v31, 5, (v32 + 1), a10, &v45 + 2);
              if ((result & 0x80000000) == 0)
              {
                v33 = *(*(a1 + 56) + 160);
                v34 = v45;
                v35 = cstdlib_strlen(a11);
                result = v33(a2, a3, v34, 6, (v35 + 1), a11, &v45 + 2);
                if ((result & 0x80000000) == 0)
                {
                  v36 = *(*(a1 + 56) + 160);
                  v37 = v45;
                  v38 = cstdlib_strlen(a12);
                  result = v36(a2, a3, v37, 9, (v38 + 1), a12, &v45 + 2);
                  if ((result & 0x80000000) == 0)
                  {
                    v39 = *(*(a1 + 56) + 160);
                    v40 = v45;
                    v41 = cstdlib_strlen(a13);
                    result = v39(a2, a3, v40, 4, (v41 + 1), a13, &v45 + 2);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(*(a1 + 56) + 160))(a2, a3, v45, 7, 1, a14, &v45 + 2);
                      if ((result & 0x80000000) == 0)
                      {
                        if (!a15)
                        {
                          if (!a16)
                          {
                            return result;
                          }

                          goto LABEL_19;
                        }

                        result = (*(*(a1 + 56) + 160))(a2, a3, v45, 17, 1, a15, &v45 + 2);
                        if (a16 && (result & 0x80000000) == 0)
                        {
LABEL_19:
                          v42 = *(*(a1 + 56) + 160);
                          v43 = v45;
                          v44 = cstdlib_strlen(a16);
                          return v42(a2, a3, v43, 12, (v44 + 1), a16, &v45 + 2);
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

  return result;
}

uint64_t fe_oneword_MosyntCleanup(void *a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0;
  __s = 0;
  v37 = 0;
  v38 = 0;
  __src = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &__src);
  if ((result & 0x80000000) == 0)
  {
    result = fe_oneword_MosyntGetMosyntParamVal(a1, "mosynt_defaultpos_stressed", "XN()", v48, 200);
    if ((result & 0x80000000) == 0)
    {
      result = fe_oneword_MosyntGetMosyntParamVal(a1, "mosynt_defaultpos_unstressed", "XX()", v47, 200);
      if ((result & 0x80000000) == 0)
      {
        result = fe_oneword_MosyntGetMosyntParamVal(a1, "mosynt_usepkupos", "no", __s1, 10);
        if ((result & 0x80000000) == 0)
        {
          v7 = cstdlib_strcmp(__s1, "yes");
          result = (*(a1[7] + 104))(a2, a3, 1, 0, &v45);
          if ((result & 0x80000000) == 0)
          {
            result = (*(a1[7] + 176))(a2, a3, v45, 0, &v33, &v42 + 2);
            if ((result & 0x80000000) == 0)
            {
              result = (*(a1[7] + 104))(a2, a3, 2, v45, &v44);
              if ((result & 0x80000000) == 0)
              {
                v8 = v44;
                if (v44)
                {
                  v30 = 0;
                  v31 = 0;
                  v9 = "¡";
                  while (1)
                  {
                    result = (*(a1[7] + 168))(a2, a3, v8, 0, 1, &v43, &v42 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    v10 = v43;
                    if (v43 == 8)
                    {
                      v43 = 9;
                      result = (*(a1[7] + 160))(a2, a3, v44, 0, 1, &v43, &v42);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v10 = v43;
                    }

                    v11 = v10 > 0xA;
                    v12 = (1 << v10) & 0x610;
                    if (v11 || v12 == 0)
                    {
                      v17 = 0;
                    }

                    else
                    {
                      result = (*(a1[7] + 176))(a2, a3, v44, 3, &__s, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = mosynt_SubstAllSubstrOcc(__s, v9, "~", v53, 5000);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = mosynt_SubstAllSubstrOcc(v53, "[SVOX]", "", __s, 5000);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v14 = *(a1[7] + 160);
                      v15 = v44;
                      v16 = cstdlib_strlen(__s);
                      result = v14(a2, a3, v15, 3, (v16 + 1), __s, &v42);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[7] + 168))(a2, a3, v44, 1, 1, &v35 + 2, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[7] + 168))(a2, a3, v44, 2, 1, &v35, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[7] + 176))(a2, a3, v44, 5, &v38, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[7] + 176))(a2, a3, v44, 6, &v39, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      if (v43 == 9)
                      {
                        if (cstdlib_strcmp(v39, "Y"))
                        {
                          if (v43 == 9 && cstdlib_strcmp(v39, "X") && (HIWORD(v35) < v31 || v35 < v30))
                          {
                            HIWORD(v35) = v31;
                            LOWORD(v35) = v30;
                          }
                        }

                        else
                        {
                          v30 = v35;
                          v31 = HIWORD(v35);
                        }
                      }

                      result = (*(a1[7] + 176))(a2, a3, v44, 9, &v37, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      if (!cstdlib_strcmp(v37, "normal"))
                      {
                        cstdlib_strcpy(__dst, __src);
                        v18 = *(a1[7] + 160);
                        v19 = v44;
                        v20 = cstdlib_strlen(__dst);
                        result = v18(a2, a3, v19, 9, (v20 + 1), __dst, &v42);
                        if ((result & 0x80000000) != 0)
                        {
                          return result;
                        }
                      }

                      result = (*(a1[7] + 160))(a2, a3, v44, 1, 1, &v35 + 2, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[7] + 160))(a2, a3, v44, 2, 1, &v35, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v41 = 0;
                      result = mosynt_GetTermSubstr(v39, &v41, 0x21u, &v32, v50, 5000);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = mosynt_GetTermSubstr(v39, &v41, 0x21u, &v32, v52, 5000);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v17 = cstdlib_strcmp(v39, "Y") == 0;
                      v34 = 0;
                      if (!cstdlib_strcmp(v52, ""))
                      {
                        v34 = 1;
                        if (cstdlib_strcmp(v38, "*"))
                        {
                          com_mosynt_GetBacktrans2POS(a1[8], a1[9], a1[10], v38, 0x1388u, v52);
                        }

                        if (!cstdlib_strcmp(v52, ""))
                        {
                          if (cstdlib_strstr(__s, "'") || cstdlib_strstr(__s, "'2"))
                          {
                            v21 = v48;
                          }

                          else
                          {
                            v21 = v47;
                          }

                          cstdlib_strcpy(v52, v21);
                        }
                      }

                      if (!cstdlib_strcmp(v50, ""))
                      {
                        cstdlib_strcpy(v50, "*");
                      }

                      if (v52[0] - 48 > 9)
                      {
                        cstdlib_strcpy(v51, v52);
                      }

                      else
                      {
                        result = mosynt_NumPOSListToPOSList(a1[6], a1[275], v52, v51, 5000);
                        if ((result & 0x80000000) != 0)
                        {
                          return result;
                        }
                      }

                      v22 = v9;
                      if (v7)
                      {
                        v23 = *(a1[7] + 160);
                        v24 = v44;
                        v25 = cstdlib_strlen(v51);
                        result = v23(a2, a3, v24, 5, (v25 + 1), v51, &v42);
                        if ((result & 0x80000000) != 0)
                        {
                          return result;
                        }
                      }

                      v26 = *(a1[7] + 160);
                      v27 = v44;
                      v28 = cstdlib_strlen(v50);
                      result = v26(a2, a3, v27, 6, (v28 + 1), v50, &v42);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[7] + 160))(a2, a3, v44, 17, 1, &v34, &v42 + 2);
                      v9 = v22;
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }
                    }

                    v29 = v44;
                    result = (*(a1[7] + 120))(a2, a3, v44, &v44);
                    if ((result & 0x80000000) == 0)
                    {
                      if (!v17 || (result = (*(a1[7] + 192))(a2, a3, v29), (result & 0x80000000) == 0))
                      {
                        v8 = v44;
                        if (v44)
                        {
                          continue;
                        }
                      }
                    }

                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_oneword_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v316 = *MEMORY[0x277D85DE8];
  v296 = 0;
  __s = 0;
  v9 = 2310021130;
  v294 = 0;
  v291 = 0;
  __src = 0;
  __s2 = 0;
  v286 = 0;
  v283 = 0;
  v281 = 0;
  v280 = 1601400688;
  *&__c[1] = -1;
  v277 = 0;
  v278 = 0;
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  v295 = 0;
  v293 = 0;
  v292 = 0;
  v290 = 0;
  v287 = 0;
  v285 = 0;
  v284 = 0;
  v282 = 0;
  *&__c[3] = 0;
  __c[0] = 0;
  v276 = 0;
  *a5 = 1;
  v10 = (paramc_ParamGet(*(*a1 + 40), "clmvariants", &v276, 0) & 0x80000000) == 0 && LH_stricmp(v276, "no") != 0;
  *(a1 + 844) = v10;
  v12 = (paramc_ParamGetStr(*(*a1 + 40), "clcmlextramaintrans", &v276) & 0x80000000) == 0 && LH_stricmp(v276, "no") && *(a1 + 852) != 0;
  *(a1 + 848) = v12;
  __s1[0] = 0;
  *__dst = 0;
  if (((*(*(a1 + 128) + 96))(*(a1 + 112), *(a1 + 120), __dst) & 0x80000000) != 0 || !*__dst)
  {
    Str = paramc_ParamGetStr(*(*a1 + 40), "clm", __s1);
    v15 = 1;
    if ((Str & 0x80000000) == 0 && __s1[0])
    {
      v15 = cstdlib_strcmp(__s1[0], "yes") == 0;
    }

    v13 = (!v15 || *(a1 + 1204) != 1) && *(a1 + 940) != 1;
  }

  else
  {
    v13 = 1;
  }

  if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v276) & 0x80000000) == 0 && v276 && *v276)
  {
    fe_oneword_ResetCarryOverSentenceParams(a1);
  }

  v16 = *(a1 + 1201);
  *(a1 + 1201) = 1;
  if ((paramc_ParamGet(*(*a1 + 40), "numberoutputtranscriptions", &v276, 0) & 0x80000000) == 0 && v276)
  {
    v17 = cstdlib_atoi(v276);
    if (v16 == v17)
    {
      *(a1 + 1201) = v16;
      v18 = *(a1 + 1200);
      if (v18 >= v17)
      {
        LOBYTE(v18) = v16;
      }
    }

    else
    {
      *(a1 + 1201) = v17;
      hlp_UnLoadDTData(a1);
      DTData = hlp_LoadDTData(a1);
      if ((DTData & 0x80000000) != 0)
      {
        return DTData;
      }

      v18 = *(a1 + 1200);
      if (v18 >= *(a1 + 1201))
      {
        LOBYTE(v18) = *(a1 + 1201);
      }
    }

    *(a1 + 1200) = v18;
  }

  v20 = (paramc_ParamGet(*(*a1 + 40), "norichtranscription", &v276, 0) & 0x80000000) == 0 && LH_stricmp(v276, "false") != 0;
  *(a1 + 840) = v20;
  v21 = paramc_ParamGet(*(*a1 + 40), "fecfg", &v276, 0);
  if (*(a1 + 840) && (v21 & 0x80000000) == 0 && LH_stricmp(v276, "mpthree") && LH_stricmp(v276, "mpthreeml") && LH_stricmp(v276, "vadvde"))
  {
    *(a1 + 840) = 0;
  }

  if (ssftmap_GetSize(*(a1 + 568)))
  {
    __s1[0] = 0;
    *__dst = 0;
    v298[0] = 0;
    v274 = 0;
    v275 = 0;
    v273 = 0;
    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreescorepruning", __s1) & 0x80000000) != 0)
    {
      __s1[0] = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreehistogrampruning", __dst) & 0x80000000) != 0)
    {
      *__dst = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreevariantpruning", v298) & 0x80000000) != 0)
    {
      v298[0] = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "numberoutputtranscriptions", &v275) & 0x80000000) != 0)
    {
      v275 = 0;
    }

    if ((ssftmap_IteratorOpen(*(a1 + 568), 0, 1, &v273) & 0x80000000) == 0)
    {
      v271 = 0;
      *v272 = 0;
      while ((ssftmap_IteratorNext(v273, v272, &v271) & 0x80000000) == 0)
      {
        if (!__s1[0] || (LODWORD(v274) = 1, HIDWORD(v274) = cstdlib_atoi(__s1[0]), v22 = LexDT_SetParamList(*(v271 + 16), &v274, 1u), v23 = LH_ERROR_to_VERROR(v22), (v23 & 0x80000000) == 0))
        {
          if (!*__dst || (LODWORD(v274) = 2, HIDWORD(v274) = cstdlib_atoi(*__dst), v24 = LexDT_SetParamList(*(v271 + 16), &v274, 1u), v23 = LH_ERROR_to_VERROR(v24), (v23 & 0x80000000) == 0))
          {
            if (!v298[0] || (LODWORD(v274) = 5, HIDWORD(v274) = cstdlib_atoi(v298[0]), v25 = LexDT_SetParamList(*(v271 + 16), &v274, 1u), v23 = LH_ERROR_to_VERROR(v25), (v23 & 0x80000000) == 0))
            {
              if (!v275)
              {
                continue;
              }

              LODWORD(v274) = 0;
              HIDWORD(v274) = cstdlib_atoi(v275);
              v26 = LexDT_SetParamList(*(v271 + 16), &v274, 1u);
              v23 = LH_ERROR_to_VERROR(v26);
              if ((v23 & 0x80000000) == 0)
              {
                continue;
              }
            }
          }
        }

        v11 = v23;
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0);
        return v11;
      }

      ssftmap_IteratorClose(v273);
    }
  }

  if (*(a1 + 2004))
  {
    DTData = oneword_posparser_Process(a1, a3, a4);
    if ((DTData & 0x80000000) != 0)
    {
      return DTData;
    }
  }

  v27 = (a1 + 56);
  v11 = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v295 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (((*(*v27 + 184))(a3, a4, HIWORD(v295), 0, &v283) & 0x80000000) != 0)
  {
    return v11;
  }

  if (v283 != 1)
  {
    return v11;
  }

  v11 = (*(*v27 + 176))(a3, a4, HIWORD(v295), 0, &__s, &v293);
  if ((v11 & 0x80000000) != 0 || v293 < 2u)
  {
    return v11;
  }

  v28 = *(*a1 + 8);
  v29 = cstdlib_strlen(__s);
  v30 = heap_Alloc(v28, (v29 + 1));
  v296 = v30;
  if (!v30)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

  cstdlib_strcpy(v30, __s);
  *__s1 = 0u;
  v301 = 0u;
  v302 = 0u;
  v303 = 0u;
  v304 = 0u;
  v305 = 0u;
  v306 = 0u;
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  v310 = 0u;
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v314 = 0u;
  v315 = 0u;
  HIWORD(v291) = 128;
  v31 = (*(*v27 + 176))(a3, a4, HIWORD(v295), 1, &v287, &v286 + 2);
  if ((v31 & 0x80000000) != 0)
  {
    goto LABEL_96;
  }

  HIWORD(v291) = 0;
  if (HIWORD(v286))
  {
    v32 = 0;
    do
    {
      v33 = v287 + 32 * v32;
      if (*v33 == 34)
      {
        v34 = cstdlib_strstr(*(v33 + 24), "\x14");
        if (v34)
        {
          *v34 = 0;
        }
      }

      v32 = HIWORD(v291) + 1;
      HIWORD(v291) = v32;
      v35 = HIWORD(v286);
    }

    while (HIWORD(v286) > v32);
    v36 = v287;
    v37 = *(v287 + 12);
    *(a1 + 224) = 0;
    v38 = (a1 + 224);
    if (v286 < v35)
    {
      v39 = (v36 + 32 * v286 + 12);
      v40 = v35 - v286;
      v41 = v286 + 1;
      do
      {
        v42 = *v39;
        v39 += 8;
        if (v42 != v37)
        {
          break;
        }

        LOWORD(v286) = v41++;
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    v37 = *(v287 + 12);
    *(a1 + 224) = 0;
    v38 = (a1 + 224);
  }

  v31 = (*(*(a1 + 104) + 112))(*(a1 + 88), *(a1 + 96), &v284, 0);
  if ((v31 & 0x80000000) != 0 || (*(a1 + 932) = 0, v31 = (*(*(a1 + 56) + 104))(a3, a4, 3, HIWORD(v295), &v295), (v31 & 0x80000000) != 0) || (*&__c[1] = -1, v31 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "normal", &__c[3], &__c[1], __c), (v31 & 0x80000000) != 0))
  {
LABEL_96:
    v46 = 0;
    v47 = 0;
    v9 = v31;
    goto LABEL_97;
  }

  cstdlib_strcpy(__dst, "normal");
  if (*&__c[1])
  {
    v43 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v43)
    {
      *v43 = 0;
    }

    cstdlib_strcpy(__dst, **&__c[3]);
  }

  if (*(a1 + 560) == 1)
  {
    v44 = heap_Calloc(*(*a1 + 8), 1, 352);
    if (!v44)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
      v46 = 0;
      v47 = 0;
      goto LABEL_97;
    }

    v261 = v38;
    v263 = v37;
    v45 = *(v287 + 12);
    *(v44 + 12) = v45;
    *v44 = 0x4000;
    *(v44 + 44) = v45;
    *(v44 + 32) = 36;
    *(v44 + 56) = "normal";
    v267 = 10;
    v270 = v44;
    v264 = 2;
  }

  else
  {
    v261 = v38;
    v263 = v37;
    v267 = 0;
    v270 = 0;
    v264 = 0;
  }

  v48 = 78;
  v49 = 1;
  while (v295)
  {
    v50 = (*(*v27 + 168))(a3, a4);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v51 = v285;
    if ((v285 - 5) <= 2)
    {
      v50 = (*(*v27 + 168))(a3, a4, v295, 1, 1, &v291, &v293);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 168))(a3, a4, v295, 2, 1, &v290, &v293);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 176))(a3, a4, v295, 4, &__s2, &v293);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      if (!cstdlib_strcmp(__s2, "phon"))
      {
        v50 = (*(*v27 + 176))(a3, a4, v295, 3, &__src, &v293);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }
      }

      v52 = v285;
      if (v285 == 5)
      {
        v283 = 0;
        v278 = 0;
        if (((*(*v27 + 184))(a3, a4, v295, 6, &v283) & 0x80000000) == 0 && v283 == 1)
        {
          v50 = (*(*v27 + 176))(a3, a4, v295, 6, &v278, &v293);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }

        v52 = v285;
      }

      if (v52 == 6)
      {
        v283 = 0;
        v277 = 0;
        if (((*(*v27 + 184))(a3, a4, v295, 7, &v283) & 0x80000000) == 0 && v283 == 1)
        {
          v50 = (*(*v27 + 176))(a3, a4, v295, 7, &v277, &v293);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }
      }

      v53 = *v27;
      if (v49)
      {
        v50 = (*(v53 + 72))(a3, a4, 2, HIWORD(v295), &v294);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }
      }

      else
      {
        v50 = (*(v53 + 80))(a3, a4, v294, &v294);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }
      }

      v50 = (*(*v27 + 160))(a3, a4, v294, 0, 1, &v285, &v292 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 160))(a3, a4, v294, 1, 1, &v291, &v292 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 160))(a3, a4, v294, 2, 1, &v290, &v292 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v54 = *(*v27 + 160);
      v55 = v294;
      v56 = cstdlib_strlen(__s2);
      v50 = v54(a3, a4, v55, 4, (v56 + 1), __s2, &v292 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      if (!cstdlib_strcmp(__s2, "phon"))
      {
        if (__src)
        {
          v57 = *(*v27 + 160);
          v58 = v294;
          v59 = cstdlib_strlen(__src);
          v50 = v57(a3, a4, v58, 3, (v59 + 1), __src, &v292 + 2);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }
      }

      v51 = v285;
      if (v285 == 5 && v278)
      {
        v60 = *(*v27 + 160);
        v61 = v294;
        v62 = cstdlib_strlen(v278);
        v50 = v60(a3, a4, v61, 9, (v62 + 1), v278, &v292 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        v51 = v285;
      }

      v49 = 0;
      if (v51 == 6 && v277)
      {
        v63 = *(*v27 + 160);
        v64 = v294;
        v65 = cstdlib_strlen(v277);
        v50 = v63(a3, a4, v64, 19, (v65 + 1), v277, &v292 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        v49 = 0;
        v51 = v285;
      }
    }

    if (*(a1 + 560) != 1 || v51 != 5 || __s2 == 0)
    {
      goto LABEL_167;
    }

    if (!cstdlib_strcmp(__s2, "phon") || !cstdlib_strcmp(__s2, "prompt") || !cstdlib_strcmp(__s2, "internal-nuance-system-norm"))
    {
LABEL_164:
      v71 = 78;
LABEL_165:
      v73 = v267;
      goto LABEL_166;
    }

    v68 = *(a1 + 1216);
    if (!v68)
    {
      v47 = 0;
      v46 = 0;
      v9 = 2310021126;
      goto LABEL_282;
    }

    v69 = cstdlib_strstr(v68, __s2);
    if (!cstdlib_strcmp(__s2, "latin"))
    {
      goto LABEL_180;
    }

    if (!cstdlib_strcmp(__s2, __dst))
    {
      goto LABEL_164;
    }

    if (!v69 || v69[cstdlib_strlen(__s2)] != 124)
    {
LABEL_180:
      v71 = 76;
      goto LABEL_165;
    }

    v70 = cstdlib_strlen(__s2);
    if (!v70)
    {
      goto LABEL_164;
    }

    LODWORD(v71) = 78;
    v72 = __s2;
    v73 = v267;
    do
    {
      v74 = *v72++;
      if (v74 == 95)
      {
        v71 = 76;
      }

      else
      {
        v71 = v71;
      }

      --v70;
    }

    while (v70);
LABEL_166:
    if (v48 != v71)
    {
      v76 = v291;
      if (v291)
      {
        v77 = v270;
        if (v264 >= v73)
        {
          v78 = v73;
          v79 = heap_Realloc(*(*a1 + 8), v270, 32 * v73 + 352);
          if (!v79)
          {
LABEL_497:
            v215 = *a1;
LABEL_498:
            log_OutPublic(*(v215 + 32), "FE_ONEWORD", 34000, 0);
            goto LABEL_499;
          }

          v267 = v78 + 10;
          v76 = v291;
          v77 = v79;
        }

        v270 = v77;
        v80 = v77 + 32 * v264;
        *v80 = 36;
        *(v80 + 12) = *(v287 + 12) + v76;
        v81 = "normal";
        if (v71 == 76)
        {
          v81 = "latin";
        }

        *(v80 + 24) = v81;
        ++v264;
      }

      else if (v71 == 76)
      {
        *(v270 + 56) = "latin";
        v71 = 76;
      }

      else
      {
        *(v270 + 56) = "normal";
      }

      goto LABEL_168;
    }

LABEL_167:
    v71 = v48;
LABEL_168:
    v75 = v295;
    v50 = (*(*v27 + 120))(a3, a4, v295, &v295);
    if ((v50 & 0x80000000) == 0)
    {
      v50 = (*(*v27 + 192))(a3, a4, v75);
      v48 = v71;
      if ((v50 & 0x80000000) == 0)
      {
        continue;
      }
    }

    goto LABEL_280;
  }

  if (*(a1 + 560) == 1)
  {
    v82 = *(a1 + 64);
    v83 = *(a1 + 72);
    v84 = v264;
    v85 = a3;
    v86 = a4;
    v87 = v270;
  }

  else
  {
    v87 = v287;
    v84 = HIWORD(v286);
    v82 = *(a1 + 64);
    v83 = *(a1 + 72);
    v85 = a3;
    v86 = a4;
  }

  v50 = (*(*(a1 + 80) + 56))(v82, v83, v85, v86, v87, v84);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v50 = (*(*v27 + 104))(a3, a4, 3, HIWORD(v295), &v295);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v50 = (*(*v27 + 104))(a3, a4, 2, HIWORD(v295), &v294);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v50 = (*(*v27 + 168))(a3, a4, v294, 1, 1, &v290 + 2, &v293);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  if (HIWORD(v290))
  {
    v50 = (*(*v27 + 88))(a3, a4, v294, &v294);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 168))(a3, a4, v295, 0, 1, &v285, &v293);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 168))(a3, a4, v295, 1, 1, &v291, &v293);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 168))(a3, a4, v295, 2, 1, &v290, &v293);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 160))(a3, a4, v294, 0, 1, &v285, &v292 + 2);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 160))(a3, a4, v294, 1, 1, &v291, &v292 + 2);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 160))(a3, a4, v294, 2, 1, &v290, &v292 + 2);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 120))(a3, a4, v295, &v295);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }
  }

  LOWORD(v291) = 0;
  while (1)
  {
    v88 = *v27;
    if (!v295)
    {
      break;
    }

    v50 = (*(v88 + 168))(a3, a4);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 168))(a3, a4, v295, 1, 1, &v291, &v293);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v89 = v294;
    v90 = v291;
    v91 = HIWORD(v290);
    if (v291 > HIWORD(v290) && v294 != 0)
    {
      while (1)
      {
        v93 = v89;
        v50 = (*(*v27 + 120))(a3, a4, v89, &v294);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        if (v294)
        {
          v50 = (*(*v27 + 168))(a3, a4);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }

          v91 = HIWORD(v290);
        }

        else
        {
          v94 = cstdlib_strlen(__s);
          v91 = v94;
          HIWORD(v290) = v94;
        }

        v90 = v291;
        v89 = v294;
        if (v291 <= v91 || v294 == 0)
        {
          v89 = v93;
          break;
        }
      }
    }

    if (v90 != v91)
    {
      v294 = v89;
    }

    v50 = (*(*v27 + 168))(a3, a4, v295, 2, 1, &v290, &v293);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 168))(a3, a4, v294, 0, 1, &v284 + 4, &v293);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    if (HIDWORD(v284) == 5 && v291 == HIWORD(v290))
    {
      v50 = (*(*v27 + 88))(a3, a4, v294, &v294);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 160))(a3, a4, v294, 0, 1, &v285, &v292 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 160))(a3, a4, v294, 1, 1, &v291, &v292 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 160))(a3, a4, v294, 2, 1, &v290, &v292 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 120))(a3, a4, v294, &v294);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }
    }

    else
    {
      v50 = (*(*v27 + 80))(a3, a4, v294, &v294);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 160))(a3, a4, v294, 0, 1, &v285, &v292 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 160))(a3, a4, v294, 1, 1, &v291, &v292 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v50 = (*(*v27 + 160))(a3, a4, v294, 2, 1, &v290, &v292 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }
    }

    v96 = v295;
    v50 = (*(*v27 + 120))(a3, a4, v295, &v295);
    if ((v50 & 0x80000000) == 0)
    {
      v50 = (*(*v27 + 192))(a3, a4, v96);
      if ((v50 & 0x80000000) == 0)
      {
        continue;
      }
    }

    goto LABEL_280;
  }

  v50 = (*(v88 + 104))(a3, a4, 2, HIWORD(v295), &v295);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v97 = v295;
  *(a1 + 280) = v295;
  LOWORD(v292) = v97;
  if (v97)
  {
    LOWORD(v98) = 0;
    while (1)
    {
      v50 = (*(*v27 + 168))(a3, a4, v97, 0, 1, &v284 + 4, &v293);
      if ((v50 & 0x80000000) != 0)
      {
        break;
      }

      v99 = *v27;
      v100 = v292;
      if (HIDWORD(v284) != 5)
      {
        goto LABEL_261;
      }

      v50 = (*(v99 + 168))(a3, a4, v292, 1, 1, &v291, &v293);
      if ((v50 & 0x80000000) != 0)
      {
        break;
      }

      v98 = v291 <= v98 ? v98 : v291;
      v50 = (*(*v27 + 168))(a3, a4, v292, 2, 1, &v290, &v293);
      if ((v50 & 0x80000000) != 0)
      {
        break;
      }

      v99 = *v27;
      v100 = v292;
      if (v98 < v290)
      {
        v50 = (*(v99 + 176))(a3, a4, v292, 4, &__s2, &v293);
        if ((v50 & 0x80000000) != 0)
        {
          break;
        }

        if (cstdlib_strcmp(__s2, "phon"))
        {
          v283 = 0;
          v102 = (*(*(a1 + 56) + 184))(a3, a4, v292, 9, &v283) >= 0 && v283 == 1;
          v50 = oneword_G2PLookup(a1, &v296, v98, &v290, __s2, a3, a4, &v295, v287, &v286, &v286 + 1, v263, v102);
          if (v290 > v98)
          {
            LOWORD(v98) = v290;
          }

          if ((v50 & 0x80000000) != 0)
          {
            break;
          }
        }

        else
        {
          v50 = (*(*v27 + 176))(a3, a4, v292, 3, &__src, &v293);
          if ((v50 & 0x80000000) != 0)
          {
            break;
          }

          v50 = oneword_ConvertPhon(a1, __s, __src, v291, v290, a3, a4, &v295, v287, &v286, &v286 + 1, v263);
          if ((v50 & 0x80000000) != 0)
          {
            break;
          }
        }

        LOWORD(v292) = v295;
      }

      else
      {
LABEL_261:
        v50 = (*(v99 + 120))(a3, a4, v100, &v292);
        if ((v50 & 0x80000000) != 0)
        {
          break;
        }
      }

      if (v295)
      {
        LOWORD(v97) = v292;
        if (v292)
        {
          continue;
        }
      }

      goto LABEL_268;
    }

LABEL_280:
    v47 = 0;
    v46 = 0;
LABEL_281:
    v9 = v50;
    goto LABEL_282;
  }

LABEL_268:
  v103 = *v261;
  if (*v261)
  {
    v104 = HIWORD(v286);
    if (v286 < HIWORD(v286))
    {
      v105 = (v287 + 32 * v286 + 12);
      v106 = HIWORD(v286) - v286;
      do
      {
        *v105 += v103;
        v105 += 8;
        --v106;
      }

      while (v106);
      LOWORD(v286) = v104;
    }

    LOWORD(v298[0]) = 0;
    LOWORD(v275) = 0;
    if (!*(a1 + 280))
    {
      v108 = 0;
      goto LABEL_285;
    }

LABEL_274:
    v107 = (*(*v27 + 168))(a3, a4);
    if ((v107 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    while (1)
    {
      v108 = LOWORD(v298[0]);
LABEL_285:
      if (v108 > cstdlib_strlen(__s) || !*(a1 + 280))
      {
        break;
      }

      v107 = (*(*v27 + 168))(a3, a4);
      if ((v107 & 0x80000000) != 0)
      {
        goto LABEL_277;
      }

      if ((HIDWORD(v284) & 0xFFFFFFFC) == 4 || (HIDWORD(v284) - 9) <= 1)
      {
        v107 = (*(*v27 + 168))(a3, a4, *(a1 + 280), 2, 1, &v275, &v293);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        v111 = *v261;
        LOWORD(v298[0]) += *v261;
        LOWORD(v275) = v275 + v111;
        v107 = (*(*v27 + 160))(a3, a4, *(a1 + 280), 1, 1, v298, &v292 + 2);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        v107 = (*(*v27 + 160))(a3, a4, *(a1 + 280), 2, 1, &v275, &v292 + 2);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }
      }

      v107 = (*(*v27 + 120))(a3, a4, *(a1 + 280), a1 + 280);
      if ((v107 & 0x80000000) != 0)
      {
        goto LABEL_277;
      }

      if (*(a1 + 280))
      {
        v107 = (*(*v27 + 168))(a3, a4);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        v112 = LOWORD(v298[0]);
        if (v112 > cstdlib_strlen(__s))
        {
          while (*(a1 + 280))
          {
            v107 = (*(*v27 + 168))(a3, a4);
            if ((v107 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (HIDWORD(v284) != 17)
            {
              break;
            }

            v107 = (*(*v27 + 120))(a3, a4, *(a1 + 280), a1 + 280);
            if ((v107 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }
          }

          goto LABEL_274;
        }
      }
    }

    v103 = *v261;
  }

  LODWORD(v284) = v284 + v103;
  v50 = (*(*(a1 + 104) + 104))(*(a1 + 88), *(a1 + 96));
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v113 = cstdlib_strlen(v296);
  *(v287 + 16) = v113;
  v114 = *(*v27 + 160);
  v115 = HIWORD(v295);
  v116 = cstdlib_strlen(v296);
  v50 = v114(a3, a4, v115, 0, (v116 + 1), v296, &v292 + 2);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v50 = (*(*v27 + 104))(a3, a4, 2, HIWORD(v295), &v295);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v117 = v295;
  if (v295)
  {
    v118 = 0;
    do
    {
      v50 = (*(*v27 + 168))(a3, a4, v117, 0, 1, &v284 + 4, &v293);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      if (HIDWORD(v284) > 3)
      {
        v119 = v295;
      }

      else
      {
        v50 = (*(*v27 + 192))(a3, a4, v295);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        LOWORD(v295) = v118;
        v119 = v118;
      }

      v120 = *v27;
      if (v119)
      {
        v50 = (*(v120 + 120))(a3, a4, v119, &v295);
        v118 = v119;
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }
      }

      else
      {
        v50 = (*(v120 + 104))(a3, a4, 2, HIWORD(v295), &v295);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }
      }

      v117 = v295;
    }

    while (v295);
  }

  LOWORD(v286) = 0;
  v121 = cstdlib_strlen(v296);
  v50 = (*(*v27 + 104))(a3, a4, 2, HIWORD(v295), &v295);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v260 = 0;
  v262 = 0;
  v268 = 0;
  v265 = v121;
  while (2)
  {
    if (!v295)
    {
      if (HIDWORD(v260) && v260 && v262)
      {
        v179 = v262;
        v180 = __s1;
        do
        {
          v181 = *v180;
          v180 = (v180 + 2);
          v50 = (*(*v27 + 192))(a3, a4, v181);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }

        while (--v179);
      }

      if (*(a1 + 1200))
      {
        v50 = (*(*v27 + 104))(a3, a4, 2, HIWORD(v295), &v295);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        while (v295)
        {
          v50 = (*(*v27 + 168))(a3, a4);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }

          if (HIDWORD(v284) == 9)
          {
            v283 = 0;
            if (((*(*v27 + 184))(a3, a4, v295, 11, &v283) & 0x80000000) != 0)
            {
              v283 = 0;
            }

            else if (v283)
            {
              goto LABEL_495;
            }

            v274 = 0;
            v275 = 0;
            LOWORD(v271) = 0;
            v273 = 0;
            v107 = (*(*v27 + 168))(a3, a4, v295, 1, 1, &v291, &v293);
            if ((v107 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v107 = (*(*v27 + 168))(a3, a4, v295, 2, 1, &v290, &v293);
            if ((v107 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v182 = v290;
            v183 = v291;
            v184 = v290 - v291;
            v185 = *(a1 + 160);
            if (v184 >= *(a1 + 192))
            {
              v186 = heap_Realloc(*(*a1 + 8), *(a1 + 160), (v184 + 1));
              if (!v186)
              {
                goto LABEL_497;
              }

              v185 = v186;
              *(a1 + 160) = v186;
              v182 = v290;
              v183 = v291;
              *(a1 + 192) = v290 - v291 + 1;
            }

            cstdlib_strncpy(v185, &v296[v183], v182 - v183);
            *(*(a1 + 160) - v291 + v290) = 0;
            v187 = *(*(a1 + 80) + 112);
            v188 = __s2;
            v189 = *(a1 + 160);
            v190 = cstdlib_strlen(v189);
            v187(*(a1 + 64), *(a1 + 72), v188, v189, (v190 + 1));
            v107 = (*(*(a1 + 56) + 176))(a3, a4, v295, 3, &__src, &v293);
            if ((v107 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v107 = (*(*v27 + 176))(a3, a4, v295, 9, &v273, &v293);
            if ((v107 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            cstdlib_strcpy(*(a1 + 168), "");
            if (*(a1 + 1200))
            {
              v269 = 0;
              v266 = 3;
              do
              {
                LH_itoa(++v269, v272, 0xAu);
                cstdlib_strcpy(v298, "multi_trans_");
                cstdlib_strcat(v298, v272);
                v191 = *(*(a1 + 104) + 120);
                v192 = __src;
                v193 = cstdlib_strlen(__src);
                v107 = v191(*(a1 + 88), *(a1 + 96), 0, v192, v193);
                if ((v107 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                v107 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v275, &v271);
                if ((v107 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                v275[v271] = 0;
                HIWORD(v291) = 0;
                if (cstdlib_strlen(v275))
                {
                  do
                  {
                    v194 = v275;
                    v195 = HIWORD(v291);
                    if (v275[HIWORD(v291)] == 126)
                    {
                      v196 = &v194[cstdlib_strlen("¡") - 1 + v195];
                      v197 = v275;
                      v198 = HIWORD(v291);
                      v199 = cstdlib_strlen(&v275[HIWORD(v291)]);
                      cstdlib_memmove(v196, &v197[v198], v199 + 1);
                      v200 = v275;
                      v195 = HIWORD(v291);
                      v201 = cstdlib_strlen("¡");
                      cstdlib_memcpy(&v200[v195], "¡", v201);
                      LOWORD(v195) = HIWORD(v291);
                      v194 = v275;
                    }

                    HIWORD(v291) = v195 + 1;
                  }

                  while (cstdlib_strlen(v194) > (v195 + 1));
                }

                if (*v273)
                {
                  v107 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 2, &v274, &v271);
                  if ((v107 & 0x80000000) != 0)
                  {
                    goto LABEL_277;
                  }

                  v274[v271] = 0;
                  HIWORD(v291) = 0;
                  if (v271)
                  {
                    v202 = 0;
                    do
                    {
                      v274[v202] = *v273;
                      v202 = HIWORD(v291) + 1;
                      HIWORD(v291) = v202;
                    }

                    while (v271 > v202);
                  }
                }

                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v298, v275);
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L2: %s", v298, *(a1 + 160));
                if (*v273)
                {
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v298, v274);
                }

                v203 = *(*(a1 + 104) + 120);
                v204 = *(a1 + 160);
                v205 = cstdlib_strlen(v204);
                v107 = v203(*(a1 + 88), *(a1 + 96), 1, v204, v205);
                if ((v107 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                v107 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v298);
                if ((v107 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                v107 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v275, &v271);
                if ((v107 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                v275[v271] = 0;
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v298, v275);
                if (cstdlib_strlen(v275))
                {
                  v206 = 0;
                  v207 = 0;
                  do
                  {
                    v208 = &v275[v206];
                    if (v275[v206] == 126)
                    {
                      v209 = cstdlib_strlen(v208 + 1);
                      cstdlib_memmove(v208, v208 + 1, v209 + 1);
                    }

                    else
                    {
                      v210 = cstdlib_strlen("¡");
                      if (!cstdlib_strncmp(v208, "¡", v210))
                      {
                        v211 = &v275[v206];
                        v212 = cstdlib_strlen(&v275[v206 + 2]);
                        cstdlib_memmove(v211 + 1, v211 + 2, v212 + 1);
                        v275[v206] = 126;
                      }
                    }

                    v206 = ++v207;
                  }

                  while (cstdlib_strlen(v275) > v207);
                }

                if (cstdlib_strcmp(__src, v275))
                {
                  v266 += cstdlib_strlen(v275) + 1;
                  if (*(a1 + 200) < v266)
                  {
                    v213 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v266);
                    if (!v213)
                    {
                      goto LABEL_497;
                    }

                    *(a1 + 168) = v213;
                    *(a1 + 200) = v266;
                  }

                  v214 = dynamic_strcat((a1 + 168), v275, (a1 + 200), *(*a1 + 8));
                  v215 = *a1;
                  if (!v214)
                  {
                    goto LABEL_498;
                  }

                  if (!dynamic_strcat((a1 + 168), "\x12", (a1 + 200), *(v215 + 8)))
                  {
                    goto LABEL_497;
                  }
                }
              }

              while (v269 < *(a1 + 1200));
            }

            v216 = *(a1 + 168);
            if (*v216)
            {
              v216[cstdlib_strlen(*(a1 + 168)) - 1] = 0;
              v217 = *(*v27 + 160);
              v218 = v295;
              v219 = cstdlib_strlen(*(a1 + 168));
              v107 = v217(a3, a4, v218, 11, (v219 + 1), *(a1 + 168), &v292 + 2);
              if ((v107 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }
            }
          }

LABEL_495:
          v50 = (*(*v27 + 120))(a3, a4, v295, &v295);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }
      }

      if (*(a1 + 1204) && *(a1 + 848) && *(a1 + 1201) >= 2u)
      {
        v50 = (*(*v27 + 104))(a3, a4, 2, HIWORD(v295), &v295);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        v220 = 0;
        v221 = 0;
        v222 = 0;
        v223 = 0;
        while (v295)
        {
          v50 = (*(*v27 + 168))(a3, a4);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }

          if (HIDWORD(v284) == 9 || HIDWORD(v284) == 4)
          {
            v298[0] = 0;
            v107 = (*(*v27 + 168))(a3, a4, v295, 1, 1, &v291, &v293);
            if ((v107 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v107 = (*(*v27 + 168))(a3, a4, v295, 2, 1, &v290, &v293);
            if ((v107 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v107 = (*(*v27 + 176))(a3, a4, v295, 9, v298, &v293);
            if ((v107 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (v291 != v221)
            {
              if (!v223)
              {
                if (v221 | v222)
                {
                  v107 = hlp_GenXtraMainVarMW(a1, a3, a4, v220, v221, v222, v296);
                  if ((v107 & 0x80000000) != 0)
                  {
                    goto LABEL_277;
                  }
                }
              }

              v223 = 0;
            }

            if (!LH_stricmp(v298[0], *(a1 + 1208)) || !cstdlib_strcmp(v298[0], "") || !cstdlib_strcmp(v298[0], "normal"))
            {
              v223 = 1;
            }

            v221 = v291;
            v222 = v290;
          }

          v220 = v295;
          v50 = (*(*v27 + 120))(a3, a4, v295, &v295);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }

        if (!v223)
        {
          if (v221 | v222)
          {
            v50 = hlp_GenXtraMainVarMW(a1, a3, a4, v220, v221, v222, v296);
            if ((v50 & 0x80000000) != 0)
            {
              goto LABEL_280;
            }
          }
        }
      }

      v225 = *(a1 + 2184);
      if (v225)
      {
        if (cstdlib_strlen(v225) == 3)
        {
          v226 = *(a1 + 2184);
          if (*v226 == 101 && v226[1] == 110)
          {
            v50 = (*(*v27 + 104))(a3, a4, 2, HIWORD(v295), &v295);
            if ((v50 & 0x80000000) != 0)
            {
              goto LABEL_280;
            }

            while (v295)
            {
              v50 = (*(*v27 + 168))(a3, a4);
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_280;
              }

              if (HIDWORD(v284) <= 0xA && ((1 << SBYTE4(v284)) & 0x610) != 0)
              {
                v298[0] = 0;
                v107 = (*(*v27 + 176))(a3, a4, v295, 9, v298, &v293);
                if ((v107 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                if (!cstdlib_strcmp(v298[0], "latin"))
                {
                  v228 = *(*(a1 + 56) + 160);
                  v229 = v295;
                  v230 = cstdlib_strlen(*(a1 + 2184));
                  v107 = v228(a3, a4, v229, 9, (v230 + 1), *(a1 + 2184), &v292 + 2);
                  if ((v107 & 0x80000000) != 0)
                  {
                    goto LABEL_277;
                  }
                }
              }

              v50 = (*(*v27 + 120))(a3, a4, v295, &v295);
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_280;
              }
            }
          }
        }
      }

      if (!v13)
      {
        v50 = (*(*v27 + 104))(a3, a4, 2, HIWORD(v295), &v295);
        if ((v50 & 0x80000000) == 0)
        {
          v47 = 0;
          v46 = 0;
          while (1)
          {
            if (!v295)
            {
              goto LABEL_548;
            }

            v50 = (*(*v27 + 168))(a3, a4);
            if ((v50 & 0x80000000) != 0)
            {
              goto LABEL_281;
            }

            if (HIDWORD(v284) <= 0xA && ((1 << SBYTE4(v284)) & 0x610) != 0)
            {
              v298[0] = 0;
              v50 = (*(*v27 + 176))(a3, a4, v295, 3, &__src, &v293);
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_281;
              }

              v50 = (*(*v27 + 176))(a3, a4, v295, 9, v298, &v293);
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_281;
              }

              v283 = 0;
              v50 = (*(*v27 + 184))(a3, a4, v295, 12, &v283);
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_281;
              }

              if (v283 != 1)
              {
                if (v298[0] && (!cstdlib_strlen(v298[0]) || cstdlib_strlen(v298[0]) == 3))
                {
                  v232 = *(*v27 + 160);
                  v233 = v295;
                  v234 = cstdlib_strlen(v298[0]) + 1;
                  v235 = v298[0];
                }

                else
                {
                  v232 = *(*(a1 + 56) + 160);
                  v233 = v295;
                  v234 = cstdlib_strlen(*(a1 + 1208)) + 1;
                  v235 = *(a1 + 1208);
                }

                v50 = v232(a3, a4, v233, 12, v234, v235, &v292 + 2);
                if ((v50 & 0x80000000) != 0)
                {
                  goto LABEL_281;
                }
              }

              if (LH_stricmp(v298[0], *(a1 + 1208)))
              {
                if (cstdlib_strcmp(v298[0], ""))
                {
                  if (cstdlib_strcmp(v298[0], "normal"))
                  {
                    if (cstdlib_strcmp(v298[0], "latin"))
                    {
                      v236 = hlp_checkDoClmForForeignLanguage(a1, v298[0]);
                      if (v236 || *(a1 + 844))
                      {
                        v237 = cstdlib_strlen(__src);
                        v238 = 0;
                        LOWORD(v274) = v295;
                        v239 = v298[0];
                        do
                        {
                          v240 = v239[v238];
                          if (v240 > 0x60)
                          {
                            LOBYTE(v240) = v240 - 32;
                          }

                          *(&v275 + v238++) = v240;
                        }

                        while (v238 != 3);
                        v241 = (4 * v237 + 4);
                        BYTE3(v275) = 0;
                        v242 = heap_Realloc(*(*a1 + 8), v47, v241);
                        v47 = v242;
                        if (!v242)
                        {
                          goto LABEL_622;
                        }

                        cstdlib_strcpy(v242, "");
                        if (!v236 && *(a1 + 844))
                        {
                          LOWORD(v273) = 1;
                          v243 = (*(*v27 + 80))(a3, a4, v295, &v274);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v243 = (*(*v27 + 168))(a3, a4, v295, 1, 1, &v291, &v293);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v243 = (*(*v27 + 168))(a3, a4, v295, 2, 1, &v290, &v293);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          HIDWORD(v284) = 16;
                          v243 = (*(*v27 + 160))(a3, a4, v274, 0, 1, &v284 + 4, &v292 + 2);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v243 = (*(*v27 + 160))(a3, a4, v274, 1, 1, &v291, &v292 + 2);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v243 = (*(*v27 + 160))(a3, a4, v274, 2, 1, &v290, &v292 + 2);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v243 = (*(*v27 + 160))(a3, a4, v274, 5, 1, "*", &v292 + 2);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v243 = (*(*v27 + 160))(a3, a4, v274, 6, 1, "*", &v292 + 2);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v243 = (*(*v27 + 160))(a3, a4, v274, 7, 1, &v273, &v292 + 2);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v50 = (*(*v27 + 160))(a3, a4, v274, 12, 4, "map", &v292 + 2);
                          if ((v50 & 0x80000000) != 0)
                          {
                            goto LABEL_281;
                          }
                        }

                        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon before %s CLM %s", &v275, __src);
                        if (((*(*(a1 + 128) + 64))(*(a1 + 112), *(a1 + 120), &v275, __src, v47, 0, 0, v241) & 0x80000000) != 0 && *(a1 + 940))
                        {
                          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "CLM failed for %s", __src);
                        }

                        else
                        {
                          v243 = (*(*v27 + 160))(a3, a4, v274, 9, 1, "", &v292 + 2);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }
                        }

                        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon after %s CLM %s", &v275, v47);
                        v244 = *(*(a1 + 56) + 160);
                        v245 = v274;
                        v246 = cstdlib_strlen(v47);
                        v243 = v244(a3, a4, v245, 3, (v246 + 1), v47, &v292 + 2);
                        if ((v243 & 0x80000000) != 0)
                        {
LABEL_621:
                          v9 = v243;
                          goto LABEL_623;
                        }

                        v283 = 0;
                        if (((*(*v27 + 184))(a3, a4, v295, 11, &v283) & 0x80000000) == 0 && v283 == 1)
                        {
                          v243 = (*(*v27 + 176))(a3, a4, v295, 11, &__src, &v293);
                          if ((v243 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          if (cstdlib_strcmp(__src, ""))
                          {
                            v247 = *(*a1 + 8);
                            v248 = cstdlib_strlen(__src);
                            v249 = heap_Realloc(v247, v46, (4 * v248 + 4));
                            v46 = v249;
                            if (!v249)
                            {
                              goto LABEL_622;
                            }

                            cstdlib_strcpy(v249, "");
                            v250 = __src;
                            if (__src)
                            {
                              while (1)
                              {
                                v251 = cstdlib_strchr(v250, 18);
                                v252 = v251;
                                if (v251)
                                {
                                  *v251 = 0;
                                }

                                if (*v46)
                                {
                                  cstdlib_strcat(v46, "\x12");
                                }

                                cstdlib_strcpy(v47, "_");
                                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon before %s CLM %s", &v275, __src);
                                if (4 * cstdlib_strlen(__src) + 4 > v241)
                                {
                                  v241 = 4 * cstdlib_strlen(__src) + 4;
                                  v47 = heap_Realloc(*(*a1 + 8), v47, v241);
                                  if (!v47)
                                  {
                                    break;
                                  }
                                }

                                if (((*(*(a1 + 128) + 64))(*(a1 + 112), *(a1 + 120), &v275, __src, v47, 0, 0, v241) & 0x80000000) != 0)
                                {
                                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "CLM failed for %s", __src);
                                }

                                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon after %s CLM %s", &v275, v47);
                                cstdlib_strcat(v46, v47);
                                if (!v252)
                                {
                                  __src = 0;
                                  goto LABEL_618;
                                }

                                *v252 = 18;
                                v250 = v252 + 1;
                                __src = v250;
                              }

LABEL_622:
                              log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
LABEL_623:
                              v50 = v9;
                              goto LABEL_281;
                            }

LABEL_618:
                            v253 = *(*v27 + 160);
                            v254 = v274;
                            v255 = cstdlib_strlen(v46);
                            v50 = v253(a3, a4, v254, 11, (v255 + 1), v46, &v292 + 2);
                            if ((v50 & 0x80000000) != 0)
                            {
                              goto LABEL_281;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v50 = (*(*v27 + 120))(a3, a4, v295, &v295);
            if ((v50 & 0x80000000) != 0)
            {
              goto LABEL_281;
            }
          }
        }

        goto LABEL_280;
      }

      v47 = 0;
      v46 = 0;
LABEL_548:
      v50 = fe_oneword_SplitMW(a1, a3, a4);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_281;
      }

      if (*(a1 + 2192))
      {
        v50 = fe_oneword_MosyntCleanup(a1, a3, a4);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_281;
        }
      }

      DTData = fe_oneword_TreatNLUMarkup(a1, a3, a4);
      if ((DTData & 0x80000000) == 0)
      {
        v9 = fe_oneword_ProcessPinyinMarkup(a1, a3, a4);
        v11 = v9;
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_282;
        }

        return v11;
      }

      return DTData;
    }

    v50 = (*(*v27 + 168))(a3, a4);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 168))(a3, a4, v295, 1, 1, &v291, &v293);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v50 = (*(*v27 + 168))(a3, a4, v295, 2, 1, &v290, &v293);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v122 = HIDWORD(v284);
    switch(HIDWORD(v284))
    {
      case 4:
LABEL_329:
        v298[0] = 0;
        v283 = 0;
        if (((*(*v27 + 184))(a3, a4, v295, 11, &v283) & 0x80000000) == 0 && v283 == 1)
        {
          v50 = (*(*v27 + 176))(a3, a4, v295, 11, v298, &v293);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }

          v123 = cstdlib_strstr(v298[0], "\x12;_");
          if (v123)
          {
            *v123 = 0;
          }

          v124 = cstdlib_strstr(v298[0], ";_");
          if (v124)
          {
            *v124 = 0;
          }
        }

LABEL_336:
        v125 = v291;
        if (v291 == v265)
        {
          HIDWORD(v260) = 1;
          v125 = v265;
          v126 = v262;
        }

        else
        {
          v126 = 0;
          if (HIDWORD(v260) && v260)
          {
            v260 = 0;
            v268 = 0;
            if (v262)
            {
              v134 = v262;
              v135 = __s1;
              while (1)
              {
                v136 = *v135;
                v135 = (v135 + 2);
                v50 = (*(*v27 + 192))(a3, a4, v136);
                if ((v50 & 0x80000000) != 0)
                {
                  goto LABEL_280;
                }

                if (!--v134)
                {
                  v126 = 0;
                  v260 = 0;
                  v268 = 0;
                  v125 = v291;
                  break;
                }
              }
            }
          }

          else
          {
            v260 = 0;
            v268 = 0;
          }
        }

        for (i = v286; HIWORD(v286) > i; LOWORD(v286) = i)
        {
          v128 = v287 + 32 * i;
          if ((*(v128 + 12) - v263) >= (v291 + 1))
          {
            break;
          }

          if (*v128 == 14)
          {
            v132 = *(v128 + 24);
            if (v132 != 64)
            {
              v281 = v132;
              *&__c[1] = -1;
              v50 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", &v280, &__c[3], &__c[1], __c);
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_280;
              }

              if (*&__c[1])
              {
                v133 = ***&__c[3];
              }

              else
              {
                v133 = v281;
              }

              v268 = v133;
            }
          }

          else if (*v128 == 37)
          {
            v129 = *(*v27 + 160);
            v130 = v295;
            v131 = cstdlib_strlen(*(v128 + 24));
            v50 = v129(a3, a4, v130, 10, (v131 + 1), *(v287 + 32 * v286 + 24), &v292 + 2);
            if ((v50 & 0x80000000) != 0)
            {
              goto LABEL_280;
            }
          }

          i = v286 + 1;
        }

        if (v268)
        {
          v50 = (*(*v27 + 176))(a3, a4, v295, 5, &v282, &v293);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }

          if (cstdlib_strchr(v282, v268))
          {
            LODWORD(v260) = 1;
          }

          else
          {
            *(__s1 + v126) = v295;
            v126 = (v126 + 1);
          }

          *v282 = v268;
          v282[1] = 0;
        }

        v262 = v126;
        if (((*(*v27 + 184))(a3, a4, v295, 21, &v283) & 0x80000000) != 0)
        {
          v283 = 0;
        }

        else if (v283)
        {
LABEL_369:
          v122 = HIDWORD(v284);
          v265 = v125;
          break;
        }

        v50 = (*(*v27 + 160))(a3, a4, v295, 21, 6, "OTHER", &v292 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        goto LABEL_369;
      case 0xA:
        goto LABEL_336;
      case 9:
        goto LABEL_329;
    }

    if (v122 != 9)
    {
      goto LABEL_436;
    }

    v298[0] = 0;
    LOWORD(v274) = 0;
    v275 = 0;
    LOWORD(v273) = 0;
    *v272 = 0;
    v107 = (*(*v27 + 176))(a3, a4, v295, 3, &__src, &v293);
    if ((v107 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    if (!cstdlib_strchr(__src, 32))
    {
LABEL_436:
      v50 = (*(*v27 + 120))(a3, a4, v295, &v295);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      continue;
    }

    break;
  }

  v107 = (*(*v27 + 168))(a3, a4, v295, 2, 1, &v290, &v293);
  if ((v107 & 0x80000000) != 0)
  {
    goto LABEL_277;
  }

  v107 = (*(*v27 + 168))(a3, a4, v295, 7, 1, &v274, &v293);
  if ((v107 & 0x80000000) != 0)
  {
    goto LABEL_277;
  }

  v107 = (*(*v27 + 176))(a3, a4, v295, 9, &v275, &v293);
  if ((v107 & 0x80000000) != 0)
  {
    goto LABEL_277;
  }

  v283 = 0;
  if (((*(*v27 + 184))(a3, a4, v295, 8, &v283) & 0x80000000) == 0 && v283 == 1)
  {
    v107 = (*(*v27 + 168))(a3, a4, v295, 8, 1, &v273, &v293);
    if ((v107 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }
  }

  v107 = (*(*v27 + 176))(a3, a4, v295, 5, &v282, &v293);
  if ((v107 & 0x80000000) != 0)
  {
    goto LABEL_277;
  }

  v107 = (*(*v27 + 176))(a3, a4, v295, 6, v298, &v293);
  if ((v107 & 0x80000000) != 0)
  {
    goto LABEL_277;
  }

  if (cstdlib_strlen(__src) - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v137 = *(*a1 + 8);
    v138 = *(a1 + 240);
    v139 = cstdlib_strlen(__src);
    v140 = heap_Realloc(v137, v138, (v139 + 1));
    if (!v140)
    {
      goto LABEL_497;
    }

    *(a1 + 240) = v140;
  }

  if (cstdlib_strlen(v282) - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v141 = *(*a1 + 8);
    v142 = *(a1 + 248);
    v143 = cstdlib_strlen(v282);
    v144 = heap_Realloc(v141, v142, (v143 + 1));
    if (!v144)
    {
      goto LABEL_497;
    }

    *(a1 + 248) = v144;
  }

  if (cstdlib_strlen(v298[0]) - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v145 = *(*a1 + 8);
    v146 = *(a1 + 256);
    v147 = cstdlib_strlen(v298[0]);
    v148 = heap_Realloc(v145, v146, (v147 + 1));
    if (!v148)
    {
      goto LABEL_497;
    }

    *(a1 + 256) = v148;
  }

  cstdlib_strcpy(*(a1 + 240), __src);
  cstdlib_strcpy(*(a1 + 248), v282);
  cstdlib_strcpy(*(a1 + 256), v298[0]);
  v149 = *(a1 + 240);
  v259 = *(a1 + 248);
  v150 = *(a1 + 256);
  v151 = cstdlib_strchr(v149, 32);
  v258 = cstdlib_strchr(*(a1 + 248), 32);
  v256 = v151;
  v257 = cstdlib_strchr(*(a1 + 256), 32);
  HIWORD(v291) = v291;
  if (!v151)
  {
LABEL_431:
    v107 = (*(*v27 + 160))(a3, a4, v295, 2, 1, &v290, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    v170 = *(*v27 + 160);
    v171 = v295;
    v172 = cstdlib_strlen(v149);
    v107 = v170(a3, a4, v171, 3, (v172 + 1), v149, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    v173 = *(*v27 + 160);
    v174 = v295;
    v175 = cstdlib_strlen(v259);
    v107 = v173(a3, a4, v174, 5, (v175 + 1), v259, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    v176 = *(*v27 + 160);
    v177 = v295;
    v178 = cstdlib_strlen(v150);
    v107 = v176(a3, a4, v177, 6, (v178 + 1), v150, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    *v272 = 0;
    v107 = (*(*v27 + 160))(a3, a4, v295, 8, 1, &v273, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    goto LABEL_436;
  }

  while (1)
  {
    for (j = HIWORD(v291); ; HIWORD(v291) = ++j)
    {
      v153 = v296[j];
      v154 = v153 > 0x20 || ((1 << v153) & 0x100002601) == 0;
      if (!v154 || v153 == 95)
      {
        break;
      }
    }

    v107 = (*(*v27 + 160))(a3, a4, v295, 2, 1, &v291 + 2, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      break;
    }

    ++HIWORD(v291);
    *v256 = 0;
    v155 = *(*v27 + 160);
    v156 = v295;
    v157 = cstdlib_strlen(v149);
    v107 = v155(a3, a4, v156, 3, (v157 + 1), v149, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      break;
    }

    if (v258)
    {
      *v258 = 0;
    }

    v158 = *(*v27 + 160);
    v159 = v295;
    v160 = cstdlib_strlen(v259);
    v107 = v158(a3, a4, v159, 5, (v160 + 1), v259, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      break;
    }

    v161 = v259;
    if (v258)
    {
      v161 = v258 + 1;
    }

    v259 = v161;
    if (v257)
    {
      *v257 = 0;
    }

    v162 = *(*v27 + 160);
    v163 = v295;
    v164 = cstdlib_strlen(v150);
    v107 = v162(a3, a4, v163, 6, (v164 + 1), v150, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      break;
    }

    if (v257)
    {
      v150 = v257 + 1;
    }

    *v272 = 0;
    v107 = (*(*v27 + 160))(a3, a4, v295, 8, 1, v272, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      break;
    }

    v165 = v295;
    if (v295 && HIWORD(v291) > v291)
    {
      while (1)
      {
        v166 = v165;
        v107 = (*(*v27 + 120))(a3, a4, v165, &v295);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        if (!v295)
        {
          goto LABEL_421;
        }

        v107 = (*(*v27 + 168))(a3, a4);
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        v165 = v295;
        if (!v295 || HIWORD(v291) <= v291)
        {
          goto LABEL_421;
        }
      }
    }

    v166 = v295;
LABEL_421:
    v107 = (*(*v27 + 80))(a3, a4, v166, &v295);
    if ((v107 & 0x80000000) != 0)
    {
      break;
    }

    v107 = (*(*v27 + 160))(a3, a4, v295, 1, 1, &v291 + 2, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      break;
    }

    v107 = (*(*v27 + 160))(a3, a4, v295, 0, 1, &v284 + 4, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      break;
    }

    v107 = (*(*v27 + 160))(a3, a4, v295, 7, 1, &v274, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      break;
    }

    v167 = *(*v27 + 160);
    v168 = v295;
    v169 = cstdlib_strlen(v275);
    v107 = v167(a3, a4, v168, 9, (v169 + 1), v275, &v292 + 2);
    if ((v107 & 0x80000000) != 0)
    {
      break;
    }

    v149 = v256 + 1;
    v256 = cstdlib_strchr(v256 + 1, 32);
    if (v259)
    {
      v258 = cstdlib_strchr(v259, 32);
    }

    if (v150)
    {
      v257 = cstdlib_strchr(v150, 32);
    }

    if (!v256)
    {
      goto LABEL_431;
    }
  }

LABEL_277:
  v9 = v107;
LABEL_499:
  v47 = 0;
  v46 = 0;
LABEL_282:
  if (v270)
  {
    heap_Free(*(*a1 + 8), v270);
  }

LABEL_97:
  if (v296)
  {
    heap_Free(*(*a1 + 8), v296);
  }

  if (v47)
  {
    heap_Free(*(*a1 + 8), v47);
  }

  if (v46)
  {
    heap_Free(*(*a1 + 8), v46);
  }

  return v9;
}

char *fe_oneword_ResetCarryOverSentenceParams(uint64_t a1)
{
  v2 = *(a1 + 2256);
  if (v2 && cstdlib_strlen(v2))
  {
    cstdlib_strcpy(*(a1 + 2256), "");
  }

  result = *(a1 + 2264);
  if (result)
  {
    result = cstdlib_strlen(result);
    if (result)
    {
      v4 = *(a1 + 2264);

      return cstdlib_strcpy(v4, "");
    }
  }

  return result;
}

uint64_t hlp_LoadDTData(uint64_t *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
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
  *__s1 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  *&__c[3] = 0;
  v30 = 0;
  __c[0] = 0;
  v27 = 0;
  __s2 = 0;
  __s = 0;
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "dtlhp2lhtts", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 144) = *&__c[1] != 0;
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "dtcharsetutf8", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v3 = *&__c[1] ? **&__c[3] : "";
  cstdlib_strcpy(a1 + 584, v3);
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "phonlhp2lhtts", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 145) = *&__c[1] == 0;
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "extramaintrans", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 213) = *&__c[1] || cstdlib_strstr("eng,ena,enu,dun,frc,frf,ged,iti,ptb,ptp,sws,spe,spm", a1[151]);
  *(a1 + 301) = (paramc_ParamGet(*(*a1 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && cstdlib_strlen(__s) >= 4 && (paramc_ParamGetStr(*(*a1 + 40), "extclccfg", &v30) & 0x80000000) != 0;
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "lidenx", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 232) = *&__c[1] != 0;
  *(a1 + 233) = 0;
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "lidenxchars", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (*&__c[1])
  {
    v4 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
    }

    v5 = **&__c[3];
  }

  else
  {
    v5 = "";
  }

  cstdlib_strcpy(a1 + 944, v5);
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "dpsmultitrans", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (*&__c[1])
  {
    v6 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v6)
    {
      *v6 = 0;
    }

    v7 = cstdlib_atoi(**&__c[3]);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 1200) = v7;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &__s2);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v27);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  __s1[0] = 0;
  cstdlib_strcat(__s1, "dt/");
  cstdlib_strcat(__s1, __s2);
  cstdlib_strcat(__s1, "/");
  cstdlib_strcat(__s1, v27);
  v8 = brokeraux_ComposeBrokerString(*a1, __s1, 0, 1, __s2, 0, 0, v32, 0x100uLL);
  if (v8 < 0)
  {
    return v8 | 0x89B02000;
  }

  if ((ssftriff_reader_ObjOpen(a1[2], a1[3], 2, v32, "DETR", 1031, &v23) & 0x80000000) != 0)
  {
    return 0;
  }

  while (2)
  {
    if ((ssftriff_reader_OpenChunk(v23, &v24, &v21, &v22) & 0x80000000) != 0)
    {
      return ssftriff_reader_ObjClose(v23);
    }

    v20 = 256;
    Str = ssftriff_reader_ReadStringZ(v23, v22, v21, 0, __dst, &v20);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v9 = heap_Alloc(*(*a1 + 8), 24);
    if (!v9)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
      return 2310021130;
    }

    v10 = v9;
    Str = ssftriff_reader_DetachChunkData(v23, v10, v10 + 1);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v11 = v20;
    if ((v20 & 3) != 0)
    {
      v11 = v20 - (v20 | 0xFFFFFFFC);
      v20 = v11;
    }

    PNEW_LexDT_Con((a1 + 111), (a1 + 111), 0, (v10[1] + v11), 0, v10 + 2);
    v13 = LH_ERROR_to_VERROR(v12);
    if ((v13 & 0x80000000) != 0)
    {
      v18 = v13;
      ssftriff_reader_ReleaseChunkData(*v10);
      heap_Free(*(*a1 + 8), v10);
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0);
    }

    else
    {
      v14 = __dst;
      do
      {
        v15 = cstdlib_strchr(v14, 44);
        v16 = v15;
        if (v15)
        {
          *v15 = 0;
        }

        v17 = ssftmap_Insert(a1[71], v14, v10);
        if ((v17 & 0x80000000) != 0)
        {
          v18 = v17;
          ssftriff_reader_ReleaseChunkData(*v10);
          heap_Free(*(*a1 + 8), v10);
          return v18;
        }

        v14 = v16 + 1;
      }

      while (v16);
      v18 = ssftriff_reader_CloseChunk(v23);
      if ((v18 & 0x80000000) == 0)
      {
        continue;
      }
    }

    break;
  }

  return v18;
}

uint64_t hlp_GenXtraMainVarMW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = a4;
  if (a5 >= a6)
  {
    return 0;
  }

  v7 = a6;
  v8 = a5;
  v9 = a6 - a5;
  if (a6 - a5 > 127)
  {
    return 0;
  }

  cstdlib_strncpy(__dst, (a7 + a5), (a6 - a5));
  v17 = &__dst[v9];
  *v17 = 0;
  if (oneword_CountOrthographicWords(__dst, v17, 35, 35) < 2)
  {
    return hlp_GenXtraMainVar(a1, a2, a3, a4, v8, v7, a7, &v18);
  }

  oneword_ReplaceAllCharactersInOrthography(__dst, v17, 35, 32);
  v10 = 0;
  v19 = 0;
  do
  {
    oneword_FindNextWord(__dst, 5, v9, &v19 + 1, &v19);
    if (HIDWORD(v19) < v9)
    {
      v10 = hlp_GenXtraMainVar(a1, a2, a3, v18, (WORD2(v19) + v8), (v19 + v8), a7, &v18);
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }
    }

    HIDWORD(v19) = v19;
  }

  while (v19 < v9);
  return v10;
}

BOOL hlp_checkDoClmForForeignLanguage(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  cstdlib_strcpy(__dst, "clm");
  cstdlib_strcat(__dst, a2);
  if ((paramc_ParamGetStr(*(*a1 + 40), __dst, &__s1) & 0x80000000) != 0 || (v4 = __s1) == 0)
  {
    __s1 = 0;
    Str = paramc_ParamGetStr(*(*a1 + 40), "noclmset", &__s1);
    v4 = __s1;
    if (Str < 0 || !__s1)
    {
      if (!__s1)
      {
        return 1;
      }
    }

    else
    {
      if (cstdlib_strstr(__s1, a2))
      {
        v4 = "no";
      }

      else
      {
        v4 = "yes";
      }

      __s1 = v4;
    }
  }

  return cstdlib_strcmp(v4, "yes") == 0;
}

uint64_t fe_oneword_TreatNLUMarkup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = 0;
  __n = 0;
  v138 = 0;
  __s = 0;
  v137 = 0;
  v135 = 0;
  v134 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v141 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v141), 0, &v134) & 0x80000000) == 0 && v134 == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v141), 0, &v137, &__n + 4);
    if ((v6 & 0x80000000) == 0 && WORD2(__n) >= 2u)
    {
      v7 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v141), 1, &v135, &v134 + 2);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v141), &v141);
      if ((v6 & 0x80000000) == 0)
      {
        v139 = 0;
        LOWORD(v8) = v141;
        if (!v141)
        {
          v22 = 0;
          v10 = 0;
          v129 = 0;
          LODWORD(v9) = 0;
LABEL_267:
          v119 = HIWORD(v134);
          if (v9 < HIWORD(v134))
          {
            v9 = v9;
            v120 = 32 * v9;
            do
            {
              v121 = v135;
              if (*(v135 + v120) == 51)
              {
                v122 = *(*a1 + 8);
                v123 = *(a1 + 2264);
                if (v123)
                {
                  v124 = cstdlib_strlen(*(a1 + 2264)) + 2;
                  v121 = v135;
                }

                else
                {
                  v124 = 2;
                }

                v125 = cstdlib_strlen(*(v121 + v120 + 24));
                v126 = heap_Realloc(v122, v123, (v125 + v124));
                if (!v126)
                {
                  goto LABEL_283;
                }

                *(a1 + 2264) = v126;
                hlp_NLUStrOverride(v126, *(v135 + v120 + 24), 0);
                v119 = HIWORD(v134);
              }

              ++v9;
              v120 += 32;
            }

            while (v9 < v119);
          }

          v11 = v22;
          goto LABEL_280;
        }

        v9 = 0;
        v129 = 0;
        v10 = 0;
        v11 = 0;
        while (1)
        {
          v12 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v138, &__n + 4);
          if ((v12 & 0x80000000) != 0)
          {
LABEL_279:
            v6 = v12;
            goto LABEL_280;
          }

          if ((v138 - 9) >= 6 && v138 != 4)
          {
            goto LABEL_82;
          }

          v12 = (*(*(a1 + 56) + 168))(a2, a3, v141, 1, 1, &v139 + 2, &__n + 4);
          if ((v12 & 0x80000000) != 0)
          {
            goto LABEL_279;
          }

          v12 = (*(*(a1 + 56) + 168))(a2, a3, v141, 2, 1, &v139, &__n + 4);
          if ((v12 & 0x80000000) != 0)
          {
            goto LABEL_279;
          }

          v130 = v11;
          if (v9 >= HIWORD(v134))
          {
LABEL_25:
            v17 = *(v135 + 16);
          }

          else
          {
            v14 = *(v135 + 12);
            v15 = (v135 + 32 * v9);
            v16 = HIWORD(v134) - v9;
            while (1)
            {
              v17 = v15[3] - v14;
              v18 = (*(v15 + 6) - v14);
              if (*v15 == 1 && v18 >= v139)
              {
                break;
              }

              v15 += 8;
              if (!--v16)
              {
                goto LABEL_25;
              }
            }

            v33 = *(v15 + 6) == v14 || v18 == *(v135 + 16);
            if (!v33 && *(v137 + v18) != 32)
            {
              v133[0] = v18 - 1;
              utf8_GetPreviousValidUtf8Offset(v137, v133);
              v34 = utf8_determineUTF8CharLength(*(v137 + v18));
              v35 = v133[0];
              v36 = *(v137 + v133[0]);
              if (v36 != 95 && v36 != 32)
              {
                v35 = v34 + v17;
              }

              v17 = v35;
            }
          }

          LOWORD(__n) = 0;
          v20 = *(a1 + 2264);
          if (v20 && *v20)
          {
            v21 = cstdlib_strlen(v20);
            LOWORD(__n) = v21 + __n + 1;
            v22 = v130;
            v23 = heap_Realloc(*(*a1 + 8), v130, __n);
            if (!v23)
            {
              goto LABEL_283;
            }

            v24 = v23;
            cstdlib_strcpy(v23, *(a1 + 2264));
            cstdlib_strcpy(*(a1 + 2264), "");
            v130 = v24;
          }

          else
          {
            v24 = 0;
          }

          v25 = HIWORD(v134);
          if (v9 < HIWORD(v134))
          {
            v128 = v10;
            v26 = 32 * v9;
            v27 = v9;
            while ((v17 << 16) > (*(v135 + v26 + 12) - *(v135 + 12)) << 16)
            {
              if (*(v135 + v26) == 51)
              {
                v28 = cstdlib_strlen(*(v135 + v26 + 24));
                LOWORD(__n) = v28 + __n + 1;
                v22 = v130;
                v29 = heap_Realloc(*(*a1 + 8), v130, __n);
                if (!v29)
                {
                  v56 = v128;
                  goto LABEL_284;
                }

                v30 = v29;
                if (v24)
                {
                  v31 = v135;
                  v32 = *(v135 + v26 + 12) + 1 == *(v135 + 16) + *(v135 + 12);
                }

                else
                {
                  cstdlib_strcpy(v29, "");
                  v32 = 0;
                  v31 = v135;
                }

                hlp_NLUStrOverride(v30, *(v31 + v26 + 24), v32);
                v25 = HIWORD(v134);
                v130 = v30;
                v24 = v30;
              }

              else
              {
                v30 = v24;
              }

              ++v27;
              v26 += 32;
              if (v27 >= v25)
              {
                goto LABEL_53;
              }
            }

            v30 = v24;
LABEL_53:
            v9 = v27;
            v24 = v30;
            v10 = v128;
          }

          if (!v24)
          {
            break;
          }

          LOWORD(__n) = 2 * cstdlib_strlen(v24) + 2;
          if (cstdlib_strcmp(*(a1 + 2256), ""))
          {
            v37 = cstdlib_strlen(*(a1 + 2256));
            v38 = v37 + __n + 1;
            LOWORD(__n) = v38;
          }

          else
          {
            v38 = __n;
          }

          v54 = heap_Realloc(*(*a1 + 8), v130, v38);
          if (!v54)
          {
            v22 = v130;
LABEL_283:
            v56 = v10;
LABEL_284:
            v99 = v129;
LABEL_285:
            v6 = 2310021130;
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v128);
            v11 = v22;
            v10 = v56;
            goto LABEL_286;
          }

          v22 = v54;
          v55 = heap_Realloc(*(*a1 + 8), v10, __n);
          if (!v55)
          {
            v6 = 2310021130;
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
            v99 = v129;
            goto LABEL_287;
          }

          v56 = v55;
          v128 = v9;
          v57 = v17;
          __s = v22;
          v58 = v22;
          do
          {
            if ((*v58 | 0x20) == 0x72 && v58[1] == 95)
            {
              cstdlib_strcpy(v56, *(a1 + 2256));
              LOWORD(__n) = hlp_NLUStrKeyLen(__s);
              if (v22 < __s)
              {
                v59 = v22;
                do
                {
                  v60 = __n;
                  if (v60 == hlp_NLUStrKeyLen(v59) && !cstdlib_strncmp(__s + 2, v59 + 2, __n - 2))
                  {
                    v61 = *v59;
                    if (v61 > 0x64)
                    {
                      if (v61 == 101)
                      {
LABEL_105:
                        if (v59[1] == 95)
                        {
                          hlp_NLUStrRemoveI(v56, v59);
                        }

                        goto LABEL_94;
                      }

                      if (v61 == 115)
                      {
LABEL_102:
                        if (v59[1] == 95)
                        {
                          hlp_NLUStrAddI(v56, v59);
                        }
                      }
                    }

                    else
                    {
                      if (v61 == 69)
                      {
                        goto LABEL_105;
                      }

                      if (v61 == 83)
                      {
                        goto LABEL_102;
                      }
                    }
                  }

LABEL_94:
                  v59 = hlp_NLUStrNext(v59);
                }

                while (v59 < __s);
              }

              v62 = v56;
              do
              {
                if (*v62)
                {
                  *v62 = 69;
                }

                v62 = hlp_NLUStrNext(v62);
              }

              while (v62);
              LOWORD(__n) = cstdlib_strlen(v56);
              v63 = __s;
              v64 = &__s[__n];
              v65 = cstdlib_strlen(__s);
              cstdlib_memmove(v64 + 1, v63, v65 + 1);
              cstdlib_strncpy(__s, v56, __n);
              cstdlib_strncpy(&__s[__n], ";", 1uLL);
              __s += __n + 1;
              v58 = hlp_NLUStrStrip(__s);
            }

            else
            {
              v58 = hlp_NLUStrNext(v58);
            }

            __s = v58;
          }

          while (v58);
          __s = v22;
          v66 = v22;
          while (2)
          {
            if ((*v66 | 0x20) == 0x65 && v66[1] == 95)
            {
              v67 = hlp_NLUStrNext(v66);
              LOWORD(__n) = hlp_NLUStrLength(__s);
              if (v67)
              {
                while (1)
                {
                  if ((*v67 | 0x20) == 0x73 && v67[1] == 95)
                  {
                    v68 = __n;
                    if (v68 == hlp_NLUStrLength(v67) && !cstdlib_strncmp(__s + 2, v67 + 2, __n - 2))
                    {
                      break;
                    }
                  }

                  v67 = hlp_NLUStrNext(v67);
                  if (!v67)
                  {
                    goto LABEL_123;
                  }
                }

                hlp_NLUStrStrip(v67);
                v66 = hlp_NLUStrStrip(__s);
                goto LABEL_125;
              }

LABEL_123:
              v66 = __s;
            }

            v66 = hlp_NLUStrNext(v66);
LABEL_125:
            __s = v66;
            if (v66)
            {
              continue;
            }

            break;
          }

          __s = v22;
          v69 = v22;
LABEL_128:
          while (2)
          {
            if ((*v69 | 0x20) != 0x73 || v69[1] != 95)
            {
              goto LABEL_145;
            }

            v70 = hlp_NLUStrNext(v69);
            LOWORD(__n) = hlp_NLUStrLength(__s);
            if (v70)
            {
              v71 = 0;
              do
              {
                if (v71)
                {
                  v72 = *v70;
                  if ((v72 | 0x20) != 0x65)
                  {
                    goto LABEL_138;
                  }

                  if (v70[1] == 95)
                  {
                    v73 = __n;
                    if (v73 == hlp_NLUStrLength(v70) && !cstdlib_strncmp(__s + 2, v70 + 2, __n - 2))
                    {
                      hlp_NLUStrStrip(v70);
                      hlp_NLUStrStrip(__s);
                      v69 = __s;
                      if (!__s)
                      {
                        goto LABEL_148;
                      }

                      goto LABEL_128;
                    }
                  }
                }

                v72 = *v70;
LABEL_138:
                if (v72)
                {
                  if (v70[1] == 95)
                  {
                    v74 = __n;
                    if (v74 == hlp_NLUStrLength(v70) && !cstdlib_strncmp(__s + 2, v70 + 2, __n - 2))
                    {
                      v71 = 1;
                    }
                  }
                }

                v70 = hlp_NLUStrNext(v70);
              }

              while (v70);
            }

            v69 = __s;
LABEL_145:
            v69 = hlp_NLUStrNext(v69);
            __s = v69;
            if (v69)
            {
              continue;
            }

            break;
          }

LABEL_148:
          __s = v22;
          v75 = v22;
          while (2)
          {
            if ((*v75 | 0x20) != 0x65 || v75[1] != 95 || (v76 = hlp_NLUStrSearchI(*(a1 + 2256), v75), v75 = __s, v76))
            {
              v77 = v75;
              goto LABEL_153;
            }

            LOWORD(__n) = hlp_NLUStrLength(__s);
            v77 = __s;
            if (v22 >= __s)
            {
              goto LABEL_165;
            }

            v79 = 0;
            v80 = v22;
            do
            {
              if ((*v80 | 0x20) == 0x73 && v80[1] == 95)
              {
                v81 = __n;
                if (v81 == hlp_NLUStrLength(v80) && !cstdlib_strncmp(__s + 2, v80 + 2, __n - 2))
                {
                  v79 = 1;
                }
              }

              v80 = hlp_NLUStrNext(v80);
              v77 = __s;
            }

            while (v80 < __s);
            if (v79)
            {
LABEL_153:
              v78 = hlp_NLUStrNext(v77);
            }

            else
            {
LABEL_165:
              v78 = hlp_NLUStrStrip(v77);
            }

            v75 = v78;
            __s = v78;
            if (v78)
            {
              continue;
            }

            break;
          }

          hlp_NLUStrJoin(v22, "");
          HIWORD(__n) = v141;
          v131 = HIWORD(v139);
          v82 = (*(*(a1 + 56) + 120))(a2, a3);
          v6 = v82;
          if ((v82 & 0x80000000) != 0)
          {
            goto LABEL_278;
          }

          if (HIWORD(__n))
          {
            v6 = (*(*(a1 + 56) + 168))(a2, a3);
            if ((v6 & 0x80000000) != 0)
            {
              goto LABEL_278;
            }

            v83 = HIWORD(__n);
            if (HIWORD(__n))
            {
              v84 = HIWORD(v139);
              v85 = v131;
              while (1)
              {
                if (v84 >= v57)
                {
                  goto LABEL_186;
                }

                v86 = (*(*(a1 + 56) + 168))(a2, a3, v83, 0, 1, &v138, &__n + 4);
                if ((v86 & 0x80000000) != 0)
                {
                  break;
                }

                if ((v138 - 9) < 6 || v138 == 4)
                {
                  v85 = HIWORD(v139);
                }

                v6 = (*(*(a1 + 56) + 120))(a2, a3, HIWORD(__n), &__n + 6);
                if ((v6 & 0x80000000) != 0)
                {
                  goto LABEL_278;
                }

                if (!HIWORD(__n))
                {
                  v83 = 0;
                  goto LABEL_186;
                }

                v6 = (*(*(a1 + 56) + 168))(a2, a3);
                if ((v6 & 0x80000000) != 0)
                {
                  goto LABEL_278;
                }

                v83 = HIWORD(__n);
                if (!HIWORD(__n))
                {
                  goto LABEL_186;
                }

                v84 = HIWORD(v139);
              }

LABEL_277:
              v6 = v86;
LABEL_278:
              v11 = v22;
              v10 = v56;
LABEL_280:
              v99 = v129;
LABEL_286:
              v22 = v11;
              if (v11)
              {
LABEL_287:
                heap_Free(*(*a1 + 8), v22);
              }

              if (v10)
              {
                heap_Free(*(*a1 + 8), v10);
              }

              if (v99)
              {
                heap_Free(*(*a1 + 8), v99);
              }

              return v6;
            }
          }

          else
          {
            v83 = 0;
          }

          v85 = v131;
LABEL_186:
          v8 = v141;
          if (v141 && v141 != v83)
          {
            v88 = 0;
            while (1)
            {
              v86 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v138, &__n + 4);
              if ((v86 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

              if ((v138 - 9) < 6 || v138 == 4)
              {
                break;
              }

LABEL_258:
              v6 = (*(*(a1 + 56) + 120))(a2, a3);
              if ((v6 & 0x80000000) != 0)
              {
                goto LABEL_278;
              }

              v8 = v141;
              if (!v141 || v141 == HIWORD(__n))
              {
                goto LABEL_261;
              }
            }

            if (v88)
            {
              v86 = (*(*(a1 + 56) + 168))(a2, a3, v88, 1, 1, &__n, &__n + 4);
              if ((v86 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }
            }

            v86 = (*(*(a1 + 56) + 168))(a2, a3, v141, 1, 1, &v139 + 2, &__n + 4);
            if ((v86 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v86 = (*(*(a1 + 56) + 168))(a2, a3, v141, 2, 1, &v139, &__n + 4);
            if ((v86 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (v88 && __n == HIWORD(v139))
            {
              v86 = (*(*(a1 + 56) + 176))(a2, a3, v88, 14, &__s, &__n + 4);
              if ((v86 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

              v90 = *(*(a1 + 56) + 160);
              v91 = v141;
              v92 = cstdlib_strlen(__s);
              v86 = v90(a2, a3, v91, 14, (v92 + 1), __s, &__n + 2);
              if ((v86 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

LABEL_257:
              v88 = v141;
              goto LABEL_258;
            }

            LOWORD(__n) = cstdlib_strlen(v22) + 1;
            if (cstdlib_strcmp(*(a1 + 2256), ""))
            {
              v93 = cstdlib_strlen(*(a1 + 2256));
              v94 = v93 + __n + 1;
              LOWORD(__n) = v94;
            }

            else
            {
              v94 = __n;
            }

            v95 = heap_Realloc(*(*a1 + 8), *(a1 + 2256), v94);
            if (!v95)
            {
              goto LABEL_284;
            }

            *(a1 + 2256) = v95;
            v96 = *(*a1 + 8);
            v97 = __n;
            v98 = v97 + cstdlib_strlen(v22) + 1;
            v99 = v129;
            v100 = heap_Realloc(v96, v129, v98);
            if (!v100)
            {
              goto LABEL_285;
            }

            v101 = v100;
            v102 = cstdlib_strcpy(v100, v22);
            if (v102)
            {
              v103 = v102;
              do
              {
                v104 = *v103;
                if (v104 > 0x64)
                {
                  if (v104 != 101)
                  {
                    if (v104 != 115)
                    {
                      goto LABEL_228;
                    }

LABEL_217:
                    if (v103[1] != 95)
                    {
                      goto LABEL_228;
                    }

                    v105 = hlp_NLUStrSearchI(*(a1 + 2256), v103);
                    if (HIWORD(v139) == v131)
                    {
                      hlp_NLUStrAddI(*(a1 + 2256), v103);
                    }

                    if (!v105)
                    {
                      goto LABEL_228;
                    }

                    goto LABEL_227;
                  }
                }

                else if (v104 != 69)
                {
                  if (v104 != 83)
                  {
                    goto LABEL_228;
                  }

                  goto LABEL_217;
                }

                if (v103[1] != 95)
                {
                  goto LABEL_228;
                }

                if (HIWORD(v139) == v85)
                {
                  hlp_NLUStrRemoveI(*(a1 + 2256), v103);
                }

                if (!hlp_NLUStrSearchI(*(a1 + 2256), v103))
                {
LABEL_228:
                  v106 = hlp_NLUStrNext(v103);
                  goto LABEL_229;
                }

LABEL_227:
                v106 = hlp_NLUStrStrip(v103);
LABEL_229:
                v103 = v106;
              }

              while (v106);
            }

            hlp_NLUStrJoin(v101, *(a1 + 2256));
            __s = v101;
            v107 = v101;
            do
            {
              if ((*v107 | 0x20) != 0x69)
              {
                goto LABEL_243;
              }

              if (v107[1] != 95)
              {
                goto LABEL_243;
              }

              LOWORD(__n) = hlp_NLUStrLength(v107);
              v107 = __s;
              if (v101 >= __s)
              {
                goto LABEL_243;
              }

              v108 = 0;
              v109 = v101;
              do
              {
                if (*v109)
                {
                  if (v109[1] == 95)
                  {
                    v110 = __n;
                    if (v110 == hlp_NLUStrLength(v109) && !cstdlib_strncmp(__s + 2, v109 + 2, __n - 2))
                    {
                      v108 = 1;
                    }
                  }
                }

                v109 = hlp_NLUStrNext(v109);
                v107 = __s;
              }

              while (v109 < __s);
              if (v108)
              {
                v107 = hlp_NLUStrStrip(__s);
              }

              else
              {
LABEL_243:
                v107 = hlp_NLUStrNext(v107);
              }

              __s = v107;
            }

            while (v107);
            hlp_NLUStrJoin(v101, "");
            if (HIWORD(v139) == v85)
            {
              *v133 = 0;
              v132 = 0;
              v111 = hlp_NLUStrFind(v101, "PUNC", v133, &v132);
              if (!v111)
              {
                goto LABEL_255;
              }

              v112 = v111;
              if (!cstdlib_strstr(v111, ":DASH"))
              {
                goto LABEL_255;
              }

LABEL_253:
              if (*(v137 + v139 - 1) != 44)
              {
LABEL_254:
                hlp_NLUStrStrip(v112);
              }

LABEL_255:
              v115 = *(*(a1 + 56) + 160);
              v116 = v141;
              v117 = cstdlib_strlen(v101);
              v118 = v115(a2, a3, v116, 14, (v117 + 1), v101, &__n + 2);
              if ((v118 & 0x80000000) != 0)
              {
                v6 = v118;
                v10 = v56;
                v99 = v101;
                v11 = v22;
                goto LABEL_286;
              }

              v129 = v101;
              goto LABEL_257;
            }

            *v133 = 0;
            v132 = 0;
            v113 = hlp_NLUStrFind(v101, "BND", v133, &v132);
            if (v113)
            {
              hlp_NLUStrStrip(v113);
            }

            v114 = hlp_NLUStrFind(v101, "PUNC", v133, &v132);
            if (!v114)
            {
              goto LABEL_255;
            }

            v112 = v114;
            if (cstdlib_strstr(v114, ":DASH"))
            {
              goto LABEL_253;
            }

            goto LABEL_254;
          }

LABEL_261:
          v10 = v56;
          v9 = v128;
LABEL_262:
          v11 = v22;
          if (!v8)
          {
            goto LABEL_267;
          }
        }

        v39 = (*(*(a1 + 56) + 168))(a2, a3, v141, 0, 1, &v138, &__n + 4);
        if ((v39 & 0x80000000) != 0)
        {
          v6 = v39;
          v99 = v129;
          v11 = v130;
          goto LABEL_286;
        }

        v40 = (v138 - 9) < 6 || v138 == 4;
        v11 = v130;
        if (v40 && cstdlib_strcmp(*(a1 + 2256), ""))
        {
          v41 = *(*a1 + 8);
          v42 = cstdlib_strlen(*(a1 + 2256)) + 1;
          v43 = heap_Realloc(v41, v129, v42);
          if (!v43)
          {
            v22 = v130;
            v56 = v10;
            v99 = v129;
            goto LABEL_285;
          }

          v44 = v43;
          v45 = v9;
          cstdlib_strcpy(v43, *(a1 + 2256));
          __s = v44;
          v46 = v44;
          do
          {
            if ((*v46 | 0x20) != 0x69)
            {
              goto LABEL_78;
            }

            if (v46[1] != 95)
            {
              goto LABEL_78;
            }

            LOWORD(__n) = hlp_NLUStrLength(v46);
            v46 = __s;
            if (v44 >= __s)
            {
              goto LABEL_78;
            }

            v47 = 0;
            v48 = v44;
            do
            {
              if (*v48)
              {
                if (v48[1] == 95)
                {
                  v49 = __n;
                  if (v49 == hlp_NLUStrLength(v48) && !cstdlib_strncmp(__s + 2, v48 + 2, __n - 2))
                  {
                    v47 = 1;
                  }
                }
              }

              v48 = hlp_NLUStrNext(v48);
              v46 = __s;
            }

            while (v48 < __s);
            if (v47)
            {
              v46 = hlp_NLUStrStrip(__s);
            }

            else
            {
LABEL_78:
              v46 = hlp_NLUStrNext(v46);
            }

            __s = v46;
          }

          while (v46);
          hlp_NLUStrJoin(v44, "");
          v50 = *(*(a1 + 56) + 160);
          v51 = v141;
          v52 = cstdlib_strlen(v44);
          v53 = v50(a2, a3, v51, 14, (v52 + 1), v44, &__n + 2);
          if ((v53 & 0x80000000) != 0)
          {
            v6 = v53;
            v99 = v44;
            v11 = v130;
            goto LABEL_286;
          }

          v129 = v44;
          v9 = v45;
          v11 = v130;
        }

LABEL_82:
        v6 = (*(*(a1 + 56) + 120))(a2, a3, v141, &v141);
        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        v8 = v141;
        v22 = v11;
        goto LABEL_262;
      }
    }
  }

  return v6;
}

uint64_t fe_oneword_ProcessPinyinMarkup(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v55 = 0;
  v54 = 0;
  __src = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v55 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = (*(a1[7] + 176))(a2, a3, HIWORD(v55), 1, &__src, &v54);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v54;
    if (v54)
    {
      v9 = 0;
      LOWORD(v10) = 0;
      v11 = 0;
      v12 = __src + 12;
      do
      {
        v13 = *(v12 - 3);
        if (v13 == 99)
        {
          *v12 -= v11;
          v9 = 1;
        }

        else if (v13 == 0x4000)
        {
          v11 = *v12;
          v10 = v12[1] + *v12;
        }

        v12 += 8;
        --v8;
      }

      while (v8);
      v14 = v9 == 0;
      v15 = v10;
    }

    else
    {
      v11 = 0;
      v15 = 0;
      v14 = 1;
    }

    if (cstdlib_strlen(a1[285]) || !v14)
    {
      v16 = heap_Calloc(*(*a1 + 8), 1, 32 * v54);
      if (v16)
      {
        v17 = v16;
        cstdlib_memcpy(v16, __src, 32 * v54);
        v18 = cstdlib_strlen(a1[285]);
        v19 = v54;
        if (v18)
        {
          ++v54;
          v20 = heap_Realloc(*(*a1 + 8), v17, 32 * (v19 + 1));
          if (!v20)
          {
            v7 = 2310021130;
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
            goto LABEL_82;
          }

          v21 = v20;
          v19 = v54;
          if (v54)
          {
            v22 = 0;
            v23 = 32 * v54;
            v24 = 1;
            while (1)
            {
              if (v22)
              {
                if (*(v20 + v22) == 1 && v24 < v54)
                {
                  break;
                }
              }

              ++v24;
              v22 += 32;
              if (v23 == v22)
              {
                goto LABEL_30;
              }
            }

            v26 = v20 + v22;
            cstdlib_memmove((v20 + v22 + 32), (v20 + v22), v23 - v22 - 32);
            *v26 = 99;
            *(v26 + 12) = (*(v26 + 44) - v11);
            v19 = v54;
          }

LABEL_30:
          v17 = v21;
        }

        if (*(a1 + 499))
        {
          v27 = HIWORD(v55);
          v62 = 0;
          v61 = 0;
          v59 = 0;
          v60 = 0;
          __s = 0;
          v58 = 0;
          v56 = 0;
          v28 = (*(a1[7] + 176))(a2, a3, HIWORD(v55), 0, &__s, &v62);
          if ((v28 & 0x80000000) != 0)
          {
            v7 = v28;
            v31 = 0;
          }

          else
          {
            v29 = *(*a1 + 8);
            v30 = cstdlib_strlen(__s);
            v31 = heap_Calloc(v29, 1, v30 + 1);
            v32 = *a1;
            if (v31)
            {
              v33 = ssftstring_ObjOpen(*(v32 + 8), &v56);
              if ((v33 & 0x80000000) == 0)
              {
                v33 = ssftstring_Reserve(v56, 30);
                if ((v33 & 0x80000000) == 0)
                {
                  if (v19)
                  {
                    v34 = 0;
                    do
                    {
                      v52 = v17 + 32 * v34;
                      if (*v52 == 99)
                      {
                        v33 = (*(a1[7] + 104))(a2, a3, 2, v27, &v62 + 2);
                        if ((v33 & 0x80000000) != 0)
                        {
                          goto LABEL_62;
                        }

                        v51 = v34;
                        while (HIWORD(v62))
                        {
                          v33 = (*(a1[7] + 168))(a2, a3);
                          if ((v33 & 0x80000000) == 0)
                          {
                            v33 = (*(a1[7] + 168))(a2, a3, HIWORD(v62), 1, 1, &v59, &v62);
                            if ((v33 & 0x80000000) == 0)
                            {
                              v33 = (*(a1[7] + 168))(a2, a3, HIWORD(v62), 2, 1, &v59 + 2, &v62);
                              if ((v33 & 0x80000000) == 0)
                              {
                                cstdlib_strncpy(v31, &__s[v59], HIWORD(v59) - v59);
                                v31[HIWORD(v59) - v59] = 0;
                                if (v60 != 9 && v60 != 4)
                                {
                                  goto LABEL_58;
                                }

                                if (!utf8_IsChineseLetter(v31))
                                {
                                  goto LABEL_58;
                                }

                                v35 = *(v52 + 12);
                                if (v35 >= HIWORD(v59) || v35 < v59)
                                {
                                  goto LABEL_58;
                                }

                                v33 = (*(a1[7] + 176))(a2, a3, HIWORD(v62), 3, &v58, &v62);
                                if ((v33 & 0x80000000) != 0)
                                {
                                  goto LABEL_62;
                                }

                                ChineseUTFCharNum = utf8_GetChineseUTFCharNum(__s, *(v52 + 12));
                                v37 = utf8_GetChineseUTFCharNum(__s, v59);
                                v38 = *(v52 + 24);
                                if (v38)
                                {
                                  v33 = hlpProcessWordPhon(a1, v58, (ChineseUTFCharNum - v37 + 1), v38, v56);
                                  v34 = v51;
                                  if ((v33 & 0x80000000) != 0)
                                  {
                                    goto LABEL_62;
                                  }
                                }

                                else
                                {
                                  v33 = hlpProcessWordPhon(a1, v58, (ChineseUTFCharNum - v37 + 1), a1[285], v56);
                                  if ((v33 & 0x80000000) != 0)
                                  {
                                    goto LABEL_62;
                                  }

                                  cstdlib_strcpy(a1[285], "");
                                  v34 = v51;
                                }

                                if (!ssftstring_Size(v56) || (v50 = *(a1[7] + 160), v49 = HIWORD(v62), v39 = ssftstring_Size(v56) + 1, v40 = ssftstring_CStr(v56), v33 = v50(a2, a3, v49, 3, v39, v40, &v61), (v33 & 0x80000000) == 0))
                                {
LABEL_58:
                                  v33 = (*(a1[7] + 120))(a2, a3, HIWORD(v62), &v62 + 2);
                                  if ((v33 & 0x80000000) == 0)
                                  {
                                    continue;
                                  }
                                }
                              }
                            }
                          }

                          goto LABEL_62;
                        }
                      }

                      ++v34;
                    }

                    while (v34 != v19);
                  }

                  v33 = (*(a1[7] + 160))(a2, a3, v27, 1, v19, v17, &v61);
                }
              }

LABEL_62:
              v7 = v33;
            }

            else
            {
              v7 = 2310021130;
              log_OutPublic(*(v32 + 32), "FE_ONEWORD", 34000, 0);
            }
          }

          if (v56)
          {
            ssftstring_ObjClose(v56);
          }

          if (v31)
          {
            heap_Free(*(*a1 + 8), v31);
          }

          if ((v7 & 0x80000000) != 0)
          {
            goto LABEL_82;
          }

          LODWORD(v19) = v54;
        }

        if (v19)
        {
          v41 = 0;
          v42 = 0;
          do
          {
            v43 = v17 + 32 * v42;
            if (*v43 == 99)
            {
              v44 = (v41 + 1);
              if (v19 > v44)
              {
                cstdlib_memmove((v17 + 32 * v42), (v17 + 32 * v44), 32 * (v19 - v44));
              }

              if (*(v43 + 12) >= v15)
              {
                v45 = a1[285];
                v46 = *(v43 + 24);
                v47 = cstdlib_strlen(v46);
                cstdlib_memcpy(v45, v46, v47 + 1);
              }

              LOWORD(v19) = --v54;
            }

            else
            {
              ++v42;
            }

            v41 = v42;
          }

          while (v42 < v19);
        }

        v7 = (*(a1[7] + 160))(a2, a3, HIWORD(v55), 1, v19, v17, &v55);
LABEL_82:
        heap_Free(*(*a1 + 8), v17);
        return v7;
      }

      v7 = 2310021130;
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    }
  }

  return v7;
}

uint64_t fe_oneword_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((v3 & 0x80000000) != 0)
  {
    return 2310021128;
  }

  v4 = v3;
  fe_oneword_ResetCarryOverSentenceParams(a1);
  if (!*(a1 + 2004))
  {
    return v4;
  }

  return oneword_posparser_End(a1);
}

uint64_t fe_oneword_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  result = 0;
  *a3 = &fe_oneword_ResourceTypes_SZ_CONTENT_TYPES;
  return result;
}

uint64_t fe_oneword_ResourceUnload(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  v7 = a1[9];
  v8 = *(a1[10] + 248);
  v9 = a1[8];

  return v8(v9, v7, a3, a4);
}

uint64_t fe_oneword_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2310021121;
  }

  result = 0;
  *a2 = &IFeOneword;
  return result;
}

uint64_t hlp_GetCfgParamVal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char **a6)
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

uint64_t hlpProcessWordPhon(void *a1, const char *a2, unsigned int a3, const char *a4, uint64_t a5)
{
  appended = ssftstring_Clear(a5);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  LOBYTE(__c[0]) = 0;
  v31 = 0;
  *(__c + 1) = -1;
  appended = (*(a1[10] + 96))(a1[8], a1[9], "parallel", a4, &v31, __c + 1, __c);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  if (!*(__c + 1))
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "[PINYIN] ERROR [lhp for tagpyt=%s not found]", a4);
    return 7;
  }

  v11 = *v31;
  while (1)
  {
    v12 = cstdlib_strchr(v11, LOBYTE(__c[0]));
    if (!v12)
    {
      break;
    }

    *v12 = 0;
  }

  if (a3 < 2)
  {
    v13 = 0;
    goto LABEL_26;
  }

  v13 = 0;
  v14 = 1;
  while (1)
  {
    v15 = cstdlib_strstr(&a2[v13], "{SEP");
    v16 = cstdlib_strchr(&a2[v13], 46);
    if (v15)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v19 = v15 + 6;
      goto LABEL_22;
    }

    v18 = v16;
    if (v15 || !v16)
    {
      break;
    }

    v19 = v16 + 1;
LABEL_22:
    v21 = cstdlib_strlen(a2);
    v13 = v21 - cstdlib_strlen(v19);
    if (++v14 >= a3)
    {
      goto LABEL_26;
    }
  }

  if (v15 && v16)
  {
    v20 = cstdlib_strlen(v15);
    if (v20 <= cstdlib_strlen(v18))
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = v15 + 6;
    }

    goto LABEL_22;
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "[PINYIN] ERROR [word phon (%s not found)]", a2);
LABEL_26:
  appended = ssftstring_AppendCStrN(a5, a2, v13);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v22 = ssftstring_AppendCStr(a5, v11);
  if ((v22 & 0x80000000) == 0)
  {
    v23 = &a2[v13];
    v24 = cstdlib_strstr(v23, "{SEP");
    v25 = cstdlib_strchr(v23, 46);
    v26 = v25;
    if (v24 && !v25)
    {
LABEL_30:
      v27 = a5;
      v28 = v24;
      return ssftstring_AppendCStr(v27, v28);
    }

    if (v24 || !v25)
    {
      if (v24 && v25)
      {
        v30 = cstdlib_strlen(v24);
        if (v30 > cstdlib_strlen(v26))
        {
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
LABEL_33:
      v27 = a5;
      v28 = v26;
      return ssftstring_AppendCStr(v27, v28);
    }
  }

  return v22;
}

uint64_t hlp_GenXtraMainVar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, _WORD *a8)
{
  v54 = *MEMORY[0x277D85DE8];
  v51 = a5;
  v50 = a6;
  v48 = 0;
  v46 = 32;
  if (a5 >= a6)
  {
    return 0;
  }

  v8 = a6 - a5;
  if ((a6 - a5) > 127)
  {
    return 0;
  }

  v49 = 0;
  cstdlib_strncpy(__dst, (a7 + a5), a6 - a5);
  v16 = &__dst[v8];
  *v16 = 0;
  oneword_ReplaceAllCharactersInOrthography(__dst, v16, 35, 45);
  v9 = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), "normal", __dst, 128);
  if ((v9 & 0x80000000) == 0)
  {
    cstdlib_strcpy(*(a1 + 240), "");
    cstdlib_strcpy(*(a1 + 248), "");
    cstdlib_strcpy(*(a1 + 256), "");
    cstdlib_strcpy(*(a1 + 264), "");
    if (cstdlib_strlen(__dst))
    {
      if (cstdlib_strlen(__dst) == 1)
      {
        appended = oneword_TranscribeAcronym(a1, "normal", __dst, &v46, v53);
      }

      else
      {
        v25 = mde_stemafx_Main(a1, "normal", __dst);
        if ((v25 & 0x80000000) != 0)
        {
          return v25;
        }

        cstdlib_strcpy(v53, "one_word");
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v53, *(a1 + 160));
        v35 = *(*(a1 + 104) + 120);
        v36 = *(a1 + 160);
        v37 = cstdlib_strlen(v36);
        v25 = v35(*(a1 + 88), *(a1 + 96), 0, v36, v37);
        if ((v25 & 0x80000000) != 0)
        {
          return v25;
        }

        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v53, *(a1 + 168));
        v38 = *(*(a1 + 104) + 120);
        v39 = *(a1 + 168);
        v40 = cstdlib_strlen(v39);
        v25 = v38(*(a1 + 88), *(a1 + 96), 2, v39, v40);
        if ((v25 & 0x80000000) != 0)
        {
          return v25;
        }

        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L4: %s", v53, *(a1 + 176));
        v41 = *(*(a1 + 104) + 120);
        v42 = *(a1 + 176);
        v43 = cstdlib_strlen(v42);
        v25 = v41(*(a1 + 88), *(a1 + 96), 3, v42, v43);
        if ((v25 & 0x80000000) != 0)
        {
          return v25;
        }

        if ((ssftmap_Find(*(a1 + 568), "normal", &v49) & 0x80000000) != 0)
        {
          v44 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v53);
          if ((v44 & 0x80000000) != 0)
          {
            v9 = v44;
            goto LABEL_32;
          }

          *v45 = 0;
          v47 = 0;
          appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, v45, &v47);
          if ((appended & 0x80000000) == 0)
          {
            *(*v45 + v47) = 0;
            appended = oneword_AppendPhon(a1, *v45, "", "", 0, 1);
          }
        }

        else
        {
          appended = dt_Main(a1, 0, a2, a3, *(v49 + 16), "normal");
          v9 = 0;
          if ((appended & 0x1FFF) == 0x10A)
          {
            goto LABEL_10;
          }
        }
      }

      v9 = appended;
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_32;
      }

LABEL_10:
      if (!cstdlib_strcmp(*(a1 + 240), ""))
      {
        goto LABEL_32;
      }

      v18 = *(a1 + 240);
      v19 = cstdlib_strlen(v18);
      v18[v19 - cstdlib_strlen("◄")] = 0;
      v20 = *(a1 + 240);
      v21 = cstdlib_strlen("◄");
      v22 = *(a1 + 240);
      v23 = cstdlib_strlen(v22);
      v24 = oneword_CountPhoneticWords((v20 + v21), &v22[v23]);
      if (v24 != 1)
      {
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mismatch between number of ortographic words (%d) and phonetic words (%d) in DT(%s)", 1, v24, __dst);
        goto LABEL_32;
      }

      v45[0] = 16;
      v25 = (*(*(a1 + 56) + 80))(a2, a3, a4, &v48 + 2);
      if ((v25 & 0x80000000) == 0)
      {
        v25 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v48), 0, 1, v45, &v48);
        if ((v25 & 0x80000000) == 0)
        {
          v25 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v48), 1, 1, &v51, &v48);
          if ((v25 & 0x80000000) == 0)
          {
            v25 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v48), 2, 1, &v50, &v48);
            if ((v25 & 0x80000000) == 0)
            {
              v26 = *(*(a1 + 56) + 160);
              v27 = HIWORD(v48);
              v28 = *(a1 + 240);
              v29 = cstdlib_strlen("◄");
              LOWORD(v28) = cstdlib_strlen((v28 + v29)) + 1;
              v30 = *(a1 + 240);
              v31 = cstdlib_strlen("◄");
              v25 = v26(a2, a3, v27, 3, v28, v30 + v31, &v48);
              if ((v25 & 0x80000000) == 0)
              {
                v25 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v48), 5, 2, "*", &v48);
                if ((v25 & 0x80000000) == 0)
                {
                  v25 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v48), 6, 2, "*", &v48);
                  if ((v25 & 0x80000000) == 0)
                  {
                    v47 = 1;
                    v25 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v48), 7, 1, &v47, &v48);
                    if ((v25 & 0x80000000) == 0)
                    {
                      v32 = *(*(a1 + 56) + 160);
                      v33 = HIWORD(v48);
                      v34 = cstdlib_strlen(*(a1 + 1208));
                      v9 = v32(a2, a3, v33, 9, (v34 + 1), *(a1 + 1208), &v48);
                      if ((v9 & 0x80000000) != 0)
                      {
                        return v9;
                      }

                      if (a8)
                      {
                        *a8 = HIWORD(v48);
                      }

LABEL_32:
                      if ((v9 & 0x1FFF) == 0x10A || (v9 & 0x1FFF) == 4)
                      {
                        return 0;
                      }

                      return v9;
                    }
                  }
                }
              }
            }
          }
        }
      }

      return v25;
    }
  }

  return v9;
}

uint64_t fe_oneword_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2310021127;
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

uint64_t fe_oneword_ResourceLoad(void *a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = 2310021127;
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    v14 = a6 != 0;
    if (a5 || !a6)
    {
      if (!a5)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_14:
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 40001, 0);
    return v13;
  }

  if (!a5 || !a6)
  {
    goto LABEL_14;
  }

  v14 = 1;
LABEL_12:
  if (v14)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    v23 = a5;
    v22 = a6;
LABEL_19:
    v20 = (*(a1[10] + 224))(a1[8], a1[9], a5, a6, v15, a7, a4);
    goto LABEL_20;
  }

LABEL_16:
  v18 = cstdlib_strstr(a3, ";loader=broker");
  v16 = v18 != 0;
  v19 = brk_DataOpenEx(*(*a1 + 24), a4, v16, &v24);
  if ((v19 & 0x80000000) != 0)
  {
    if (v18)
    {
      v13 = 0;
    }

    else
    {
      v13 = v19;
    }

    if ((v13 & 0x80000000) == 0)
    {
      return v13;
    }

    goto LABEL_21;
  }

  v20 = brk_DataMapEx(*(*a1 + 24), v24, 0, &v22, &v23);
  if ((v20 & 0x80000000) == 0)
  {
    a5 = v23;
    v15 = v24;
    a6 = v22;
    goto LABEL_19;
  }

LABEL_20:
  v13 = v20;
  if ((v20 & 0x80000000) == 0)
  {
    return v13;
  }

LABEL_21:
  if (v16)
  {
    v21 = v24;
    if (v24)
    {
      if (v23)
      {
        brk_DataUnmap(*(*a1 + 24), v24, v23);
        v23 = 0;
        v21 = v24;
      }

      brk_DataClose(*(*a1 + 24), v21);
    }
  }

  return v13;
}

uint64_t oneword_Lid(uint64_t a1, _DWORD *a2)
{
  v27 = 0;
  v26 = -1;
  v25 = 0;
  v4 = cstdlib_strlen(*(a1 + 160));
  v5 = v4;
  v6 = 0;
  v7 = v4;
  if (v4)
  {
    v8 = v4;
    do
    {
      v9 = *(*(a1 + 160) + v6);
      if (v9 >= 0x7B)
      {
        *a2 = 0;
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found diacritic");
        v6 = 0;
LABEL_35:
        *(a1 + 932) = 0;
        return v6;
      }

      if (cstdlib_strchr((a1 + 944), v9))
      {
        *a2 = 1;
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found ENX character");
        v6 = 0;
LABEL_20:
        *(a1 + 932) = 1;
        return v6;
      }

      LODWORD(v6) = v6 + 1;
    }

    while (v6 < v8);
    v10 = 0;
    v11 = v7 - 1;
    while (1)
    {
      v12 = *(a1 + 160);
      if (v10)
      {
        v13 = v10;
        v14 = *(v12 + v10 - 1);
      }

      else
      {
        v13 = 0;
        v14 = 95;
      }

      v28 = v14;
      v15 = (v12 + v13);
      v29 = *v15;
      v16 = v11 ? v15[1] : 95;
      v30 = v16;
      v31 = 0;
      v6 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "lidlng", &v28, &v27, &v26, &v25);
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      if (v26)
      {
        *a2 = 0;
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found LNG trigram");
        goto LABEL_35;
      }

      ++v10;
      --v11;
      if (v10 >= v8)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    if (*(a1 + 932))
    {
      *a2 = 1;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found ENX context");
    }

    else if (v7)
    {
      v17 = 0;
      v18 = v7 - 1;
      while (1)
      {
        v19 = *(a1 + 160);
        if (v17)
        {
          v20 = v17;
          v21 = *(v19 + v17 - 1);
        }

        else
        {
          v20 = 0;
          v21 = 95;
        }

        v28 = v21;
        v22 = (v19 + v20);
        v29 = *v22;
        v23 = v18 ? v22[1] : 95;
        v30 = v23;
        v31 = 0;
        v6 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "lidenx", &v28, &v27, &v26, &v25);
        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        if (v26)
        {
          *a2 = 1;
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found ENX trigram");
          goto LABEL_20;
        }

        ++v17;
        --v18;
        if (v17 >= v5)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
LABEL_32:
      *a2 = 0;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID default to LNG");
    }
  }

  return v6;
}

uint64_t oneword_NonDctDpsMde(void *a1, unsigned int a2, uint64_t a3, const char *a4, uint64_t a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  v11 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v38 = a5;
  v36 = 0;
  v37 = 0;
  __s = 0;
  v34 = 0;
  v33 = 0;
  cstdlib_strcpy(__dst, "nondctbased_mde");
  v16 = cstdlib_strlen(__dst);
  result = (*(a1[7] + 168))(a7, a8, v11, 0, 1, &v37, &v36);
  if ((result & 0x80000000) == 0)
  {
    if (v11)
    {
      v18 = v37;
      if (v37 != 3)
      {
        v31 = a2 + 128;
        v19 = a3 - a2;
        v29 = v16;
        v30 = v16 + 2;
        v20 = 1;
        while (1)
        {
          if (!v18)
          {
            result = (*(a1[7] + 168))(a7, a8, v11, 1, 1, &v34, &v36);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(a1[7] + 168))(a7, a8, v38, 2, 1, &v33, &v36);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v21 = v34;
            if (v34 + 1 < v33 && v31 > v33)
            {
              v22 = (v19 + v34);
              v23 = *(v19 + v33);
              *(v19 + v33) = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __dst, (v19 + v21));
              v24 = *(a1[13] + 120);
              v25 = cstdlib_strlen(v22);
              result = v24(a1[11], a1[12], 0, v22, v25);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              *(v19 + v33) = v23;
              if (cstdlib_strcmp(a4, "normal") && v30 + cstdlib_strlen(a4) <= 0x7F)
              {
                cstdlib_strcat(__dst, "_");
                cstdlib_strcat(__dst, a4);
              }

              if (((*(a1[13] + 80))(a1[11], a1[12], __dst) & 0x80000000) != 0)
              {
                __dst[v29] = 0;
                if (((*(a1[13] + 80))(a1[11], a1[12], __dst) & 0x80000000) != 0)
                {
                  return 0;
                }
              }

              result = (*(a1[13] + 128))(a1[11], a1[12], 0, &__s, &v34 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              __s[HIWORD(v34)] = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __dst, __s);
              v26 = cstdlib_strchr(__s, 43);
              if (v26)
              {
                break;
              }
            }
          }

LABEL_6:
          result = (*(a1[7] + 120))(a7, a8, v38, &v38);
          if ((result & 0x80000000) == 0)
          {
            if (v38)
            {
              result = (*(a1[7] + 168))(a7, a8);
              if ((result & 0x80000000) == 0)
              {
                LOWORD(v11) = v38;
                if (v38)
                {
                  v18 = v37;
                  if (v37 != 3)
                  {
                    continue;
                  }
                }
              }
            }
          }

          return result;
        }

        v27 = v26;
        v28 = v20 == 0;
        while (1)
        {
          v32 = v34 + v27 - __s;
          result = (*(a1[7] + 160))(a7, a8, v38, 2, 1, &v32, &v36 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 80))(a7, a8, v38, &v38);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v37 = 0;
          result = (*(a1[7] + 160))(a7, a8, v38, 0, 1, &v37, &v36 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 160))(a7, a8, v38, 1, 1, &v32, &v36 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 160))(a7, a8, v38, 2, 1, &v33, &v36 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          LOWORD(v34) = v32;
          if (!v28)
          {
            *a6 = v38;
          }

          __s = v27 + 1;
          v27 = cstdlib_strchr(v27 + 1, 43);
          v20 = 0;
          v28 = 1;
          if (!v27)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t oneword_DpsMde(void *a1, const char *a2, char *a3, uint64_t a4, char *a5, __int16 a6, unsigned __int16 a7, uint64_t a8, uint64_t a9, uint64_t a10, _WORD *a11)
{
  v114 = *MEMORY[0x277D85DE8];
  v108 = a6;
  v107 = a7;
  *&__c[3] = 0;
  *&__c[1] = 0;
  __c[0] = 0;
  v105 = 8;
  v104 = 0;
  v103 = 1;
  __s1 = 0;
  __s = 0;
  v100 = 0;
  cstdlib_strcpy(__dst, "dctbased_mde");
  v16 = cstdlib_strlen(__dst);
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __dst, a2);
  v17 = *(a1[13] + 120);
  v18 = cstdlib_strlen(a2);
  v19 = v17(a1[11], a1[12], 0, a2, v18);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L2: %s", __dst, a3);
  v20 = *(a1[13] + 120);
  v21 = cstdlib_strlen(a3);
  v19 = v20(a1[11], a1[12], 1, a3, v21);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  if (cstdlib_strcmp(a5, "normal") && cstdlib_strlen(a5) + v16 + 2 <= 0x7F)
  {
    cstdlib_strcat(__dst, "_");
    cstdlib_strcat(__dst, a5);
  }

  if (((*(a1[13] + 80))(a1[11], a1[12], __dst) & 0x80000000) != 0)
  {
    __dst[v16] = 0;
    if (((*(a1[13] + 80))(a1[11], a1[12], __dst) & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v19 = (*(a1[13] + 128))(a1[11], a1[12], 0, &__s, &v100);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  __s[v100] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __dst, __s);
  v22 = (*(a1[13] + 128))(a1[11], a1[12], 1, &__s1, &v100);
  if ((v22 & 0x80000000) == 0)
  {
    v98 = a3;
    __s2 = a5;
    memset(v112, 0, 80);
    memset(v110, 0, sizeof(v110));
    memset(v111, 0, sizeof(v111));
    memset(v109, 0, sizeof(v109));
    v23 = __s;
    if (*__s == 123)
    {
      *__s = 0;
      v112[0] = v23 + 1;
      v112[1] = "0";
      v111[0] = "0";
      v111[1] = v23 + 1;
      v24 = cstdlib_strchr(__s + 1, 125);
      if (v24)
      {
        *v24 = 0;
        v23 = v24 + 1;
        v25 = cstdlib_strchr(v24 + 1, 123);
        v96 = 2;
        if (!v25)
        {
          v26 = 0;
LABEL_21:
          v92 = 1;
LABEL_24:
          v99 = 0;
          v31 = v26;
          v94 = v26;
          while (!v31)
          {
LABEL_37:
            ++v99;
            v31 = v94;
            if (v96 <= v99)
            {
              return v22;
            }
          }

          v32 = v111[v99];
          v33 = v109;
          v34 = v110;
          while (1)
          {
            if (cstdlib_strcmp(v32, "0") || cstdlib_strcmp(*v33, "0"))
            {
              v35 = v112[v99];
              if (cstdlib_strcmp(v35, "0"))
              {
                cstdlib_strcpy(__s1, v35);
                cstdlib_strcat(__s1, v23);
              }

              else
              {
                cstdlib_strcpy(__s1, v23);
              }

              v36 = *v34;
              if (cstdlib_strcmp(*v34, "0"))
              {
                cstdlib_strcat(__s1, v36);
              }

              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", __s1);
              v22 = (*(a1[10] + 152))(a1[8], a1[9], a4, __s1, &__c[3], &__c[1], __c, *(a1 + 556));
              if ((v22 & 0x80000000) != 0)
              {
                return v22;
              }

              if (*&__c[1])
              {
                break;
              }
            }

            ++v33;
            ++v34;
            if (!--v31)
            {
              goto LABEL_37;
            }
          }

          v37 = 0;
          v91 = 0;
          v38 = a10;
          while (1)
          {
            v39 = *(*&__c[3] + 8 * v37);
            v40 = cstdlib_strchr(v39, __c[0]);
            if (!v40)
            {
              break;
            }

            *v40 = 0;
            v41 = cstdlib_strchr(v40 + 1, __c[0]);
            v42 = v41;
            if (!v41)
            {
              goto LABEL_50;
            }

            *v41 = 0;
            v42 = v41 + 1;
            v43 = cstdlib_strchr(v41 + 1, __c[0]);
            v44 = v43;
            if (!v43)
            {
              goto LABEL_51;
            }

            *v43 = 0;
            v44 = v43 + 1;
            v45 = cstdlib_strchr(v43 + 1, __c[0]);
            if (!v45)
            {
              goto LABEL_51;
            }

            *v45 = 0;
            v97 = v45 + 1;
            v46 = cstdlib_strchr(v45 + 1, __c[0]);
            if (!v46)
            {
              goto LABEL_52;
            }

            *v46 = 0;
            v95 = v46 + 1;
            v47 = cstdlib_strchr(v46 + 1, __c[0]);
            v48 = v47;
            if (v47)
            {
              *v47 = 0;
              v48 = v47 + 1;
              v49 = cstdlib_strchr(v47 + 1, __c[0]);
              if (v49)
              {
                *v49 = 0;
                v91 = v49 + 1;
                v50 = cstdlib_strchr(v49 + 1, __c[0]);
                if (v50)
                {
                  *v50 = 0;
                }
              }
            }

LABEL_53:
            v51 = *(*a1 + 32);
            if (!v39)
            {
              v22 = 2310021127;
              log_OutPublic(v51, "FE_ONEWORD", 34001, 0);
              return v22;
            }

            log_OutText(v51, "FE_ONEWORD", 5, 0, "G2P Validating %s", v39);
            if (v42 && cstdlib_strcmp(v42, "") && !cstdlib_strstr(v42, __s2))
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Domain validation not OK");
            }

            else if (v48 && !cstdlib_strcmp(v48, "0"))
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P MDE usage validation not OK");
            }

            else
            {
              v52 = v108;
              *a11 = v52 + cstdlib_strlen(v98);
              v19 = (*(a1[7] + 88))(a9, v38, v107, &v107);
              if ((v19 & 0x80000000) != 0)
              {
                return v19;
              }

              v19 = (*(a1[7] + 160))(a9, v38, v107, 0, 1, &v105, &v104);
              if ((v19 & 0x80000000) != 0)
              {
                return v19;
              }

              v19 = (*(a1[7] + 160))(a9, v38, v107, 1, 1, &v108, &v104);
              if ((v19 & 0x80000000) != 0)
              {
                return v19;
              }

              v19 = (*(a1[7] + 160))(a9, v38, v107, 2, 1, a11, &v104);
              if ((v19 & 0x80000000) != 0)
              {
                return v19;
              }

              if ((v92 & 1) == 0)
              {
                v53 = cstdlib_strlen(v39);
                if (v53 + cstdlib_strlen(v25) - 124 <= 0xFFFFFFFFFFFFFF7ELL)
                {
                  v54 = *(*a1 + 8);
                  v55 = a1[30];
                  v56 = cstdlib_strlen(v39);
                  v57 = cstdlib_strlen(v25);
                  v58 = heap_Realloc(v54, v55, (v56 + v57 + 5));
                  if (!v58)
                  {
                    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
                    return 2310021130;
                  }

                  a1[30] = v58;
                  v38 = a10;
                }
              }

              v59 = v111[v99];
              v60 = cstdlib_strcmp(v59, "0");
              v61 = a1[30];
              if (v60)
              {
                cstdlib_strcpy(v61, v59);
                cstdlib_strcat(a1[30], "◄");
              }

              else
              {
                cstdlib_strcpy(v61, "◄");
              }

              cstdlib_strcat(a1[30], v39);
              cstdlib_strcat(a1[30], "◄");
              v62 = *v33;
              if (cstdlib_strcmp(*v33, "0"))
              {
                cstdlib_strcat(a1[30], v62);
              }

              v63 = *(a1[7] + 160);
              v64 = v107;
              v65 = cstdlib_strlen(a1[30]);
              v19 = v63(a9, v38, v64, 3, (v65 + 1), a1[30], &v104);
              if ((v19 & 0x80000000) != 0)
              {
                return v19;
              }

              if (v44)
              {
                v66 = cstdlib_strcmp(v44, "");
                v67 = *(a1[7] + 160);
                v68 = v107;
                if (v66)
                {
                  v69 = (cstdlib_strlen(v44) + 1);
                  v70 = a9;
                  v71 = v38;
                  v72 = v68;
                  v73 = v44;
                }

                else
                {
                  v70 = a9;
                  v71 = v38;
                  v72 = v107;
                  v69 = 2;
                  v73 = "*";
                }

                v19 = v67(v70, v71, v72, 5, v69, v73, &v104);
                if ((v19 & 0x80000000) != 0)
                {
                  return v19;
                }
              }

              if (v97)
              {
                v74 = cstdlib_strcmp(v97, "");
                v75 = *(a1[7] + 160);
                v76 = v107;
                if (v74)
                {
                  v77 = (cstdlib_strlen(v97) + 1);
                  v78 = a9;
                  v79 = v38;
                  v80 = v76;
                  v81 = v97;
                }

                else
                {
                  v78 = a9;
                  v79 = v38;
                  v80 = v107;
                  v77 = 2;
                  v81 = "*";
                }

                v19 = v75(v78, v79, v80, 6, v77, v81, &v104);
                if ((v19 & 0x80000000) != 0)
                {
                  return v19;
                }
              }

              v82 = v95 ? LH_atou(v95) : 1;
              v103 = v82;
              v19 = (*(a1[7] + 160))(a9, v38, v107, 7, 1, &v103, &v104);
              if ((v19 & 0x80000000) != 0)
              {
                return v19;
              }

              v83 = *(a1[7] + 160);
              v84 = v107;
              if (v91)
              {
                v85 = (cstdlib_strlen(v91) + 1);
                v86 = a9;
                v87 = v38;
                v88 = v84;
                v89 = v91;
              }

              else
              {
                v86 = a9;
                v87 = v38;
                v88 = v107;
                v85 = 1;
                v89 = "";
              }

              v22 = v83(v86, v87, v88, 9, v85, v89, &v104);
              if ((v22 & 0x80000000) != 0)
              {
                return v22;
              }
            }

            if (++v37 >= *&__c[1])
            {
              return v22;
            }
          }

          v42 = 0;
LABEL_50:
          v44 = 0;
LABEL_51:
          v97 = 0;
LABEL_52:
          v95 = 0;
          v48 = 0;
          goto LABEL_53;
        }

LABEL_16:
        v26 = 0;
        while (*v25 != 125)
        {
          v28 = v26;
          v110[v26] = v25 + 1;
          *v25 = 0;
          v29 = cstdlib_strchr(v25 + 1, 43);
          if (!v29)
          {
            return v22;
          }

          ++v26;
          *v29 = 0;
          v30 = v29 + 1;
          *(v109 + v28) = v30;
          v25 = cstdlib_strchr(v30, 44);
          if (!v25)
          {
            v25 = cstdlib_strchr(*(v109 + v26 - 1), 125);
            if (!v25)
            {
              goto LABEL_21;
            }
          }
        }

        v92 = 0;
        *v25 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v112[0] = "0";
      v111[0] = "0";
      v27 = cstdlib_strchr(__s, 123);
      if (v27)
      {
        v25 = v27;
        v96 = 1;
        goto LABEL_16;
      }
    }
  }

  return v22;
}

uint64_t crf_mde_seg_get_broker_string(uint64_t a1, uint64_t *a2, char **a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = "";
  __s2 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__s1 = 0u;
  v16 = 0u;
  Str = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v13);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  cstdlib_strcat(__s1, "crf_mde_seg_");
  cstdlib_strcat(__s1, __s2);
  cstdlib_strcat(__s1, "_");
  cstdlib_strcat(__s1, v13);
  v7 = heap_Calloc(*(a1 + 8), 1, 1024);
  *a2 = v7;
  if (v7 && (v8 = brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, v7, 0x400uLL), v9 = *(a1 + 8), v10 = cstdlib_strlen(__s2), v11 = heap_Calloc(v9, 1, v10 + 1), (*a3 = v11) != 0))
  {
    cstdlib_strcpy(v11, __s2);
  }

  else
  {
    v8 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
  }

  return v8;
}

uint64_t getUmlautMap(uint64_t a1, char *__s1, uint64_t *a3, unsigned __int16 *a4)
{
  v6 = __s1;
  v8 = cstdlib_strstr(__s1, ",");
  for (i = 1; v8; v8 = cstdlib_strstr(v8 + 1, ","))
  {
    ++i;
  }

  v10 = 16 * i;
  v11 = heap_Calloc(*(a1 + 8), 1, v10);
  *a3 = v11;
  if (v11)
  {
    if (i)
    {
      for (j = 0; v10 != j; j += 16)
      {
        v13 = cstdlib_strchr(v6, 44);
        v14 = v13;
        if (v13)
        {
          *v13 = 0;
        }

        v15 = cstdlib_strchr(v6, 59);
        if (v15)
        {
          *v15 = 0;
          v16 = v15 + 1;
          v17 = *(a1 + 8);
          v18 = cstdlib_strlen(v6);
          *(*a3 + j) = heap_Calloc(v17, 1, v18 + 1);
          v19 = *(*a3 + j);
          if (!v19)
          {
            goto LABEL_18;
          }

          cstdlib_strcpy(v19, v6);
          v20 = *(a1 + 8);
          v21 = cstdlib_strlen(v16);
          *(*a3 + j + 8) = heap_Calloc(v20, 1, v21 + 1);
          v22 = *(*a3 + j + 8);
          if (!v22)
          {
            goto LABEL_18;
          }

          cstdlib_strcpy(v22, v16);
          if (v14)
          {
            v23 = v10 - 16 == j;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            v6 = v14 + 1;
          }
        }
      }
    }

    v24 = 0;
    *a4 = i;
  }

  else
  {
LABEL_18:
    v24 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
  }

  return v24;
}

uint64_t crf_mde_seg_load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  v35 = a6;
  v38 = 0;
  v37 = 0;
  __s1 = 0;
  *(a10 + 144) = log_GetLogLevel(*(a5 + 32)) > 4;
  *a11 = 0;
  broker_string = crf_mde_seg_get_broker_string(a5, (a10 + 32), &v38);
  if ((broker_string & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  if ((crf_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, (a10 + 40), 2, *(a10 + 32), "CRPH", 1031, 0, crf_set_nbest_callback) & 0x80000000) != 0)
  {
    log_OutText(*(a5 + 32), "FE_ONEWORD", 5, 0, "no CRF MDE model found", *(a10 + 32));
    v25 = 0;
    goto LABEL_18;
  }

  broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegsep", (a10 + 64), 0, "STR");
  if ((broker_string & 0x80000000) != 0 || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "orthtrigger", (a10 + 72), 0, "STR"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdemorphesep", (a10 + 80), 0, "STR"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegbypassonewordcrosstoken", 0, (a10 + 52), "BOOL"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegpostsegdictlookup", 0, (a10 + 56), "BOOL"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdeskipwordswiththischar", (a10 + 88), 0, "STR"), (broker_string & 0x80000000) != 0))
  {
LABEL_16:
    v25 = broker_string;
    goto LABEL_18;
  }

  fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegumlautmap", &__s1, 0, "STR");
  v20 = __s1;
  if ((fecfgparam_string & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

  if (!__s1 || (UmlautMap = getUmlautMap(a5, __s1, (a10 + 96), (a10 + 104)), (UmlautMap & 0x80000000) == 0))
  {
    fecfgparam_string = crf_mde_seg_parse_params(a5, *(a10 + 40), a10);
    if ((fecfgparam_string & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v22 = *(a10 + 12);
    v23 = *(a5 + 32);
    if (v22 == 1)
    {
      v24 = "SEG_Char";
    }

    else
    {
      if (v22 != 2)
      {
        v25 = 2310021127;
        goto LABEL_41;
      }

      v24 = "SEG_Morpheme";
    }

    log_OutText(v23, "FE_ONEWORD", 5, 0, "set mde param, type: %s", v24);
    v29 = *(a10 + 16);
    if (v29 == 1)
    {
      v30 = "ANN_BI";
LABEL_34:
      log_OutText(*(a5 + 32), "FE_ONEWORD", 5, 0, "set mde param, type: %s", v30);
      *(a10 + 48) = 1;
      *a11 = 1;
      fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_tag_mappings_dic", (a10 + 112), 0, "STR");
      if ((fecfgparam_string & 0x80000000) == 0)
      {
        v31 = *(a10 + 112);
        if (v31)
        {
          fecfgparam_string = (*(a9 + 72))(a7, a8, v31, &v37);
          if ((fecfgparam_string & 0x80000000) != 0)
          {
            goto LABEL_55;
          }

          if (*(a10 + 112) && !v37)
          {
            v25 = 2310021127;
            log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34009, "%s%s");
            goto LABEL_56;
          }
        }

        fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_morpheme_dic", (a10 + 120), 0, "STR");
        if ((fecfgparam_string & 0x80000000) == 0)
        {
          v32 = *(a10 + 120);
          if (v32)
          {
            fecfgparam_string = (*(a9 + 72))(a7, a8, v32, &v37);
            if ((fecfgparam_string & 0x80000000) != 0)
            {
              goto LABEL_55;
            }

            if (*(a10 + 120) && !v37)
            {
              v25 = 2310021127;
              log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34010, "%s%s");
              goto LABEL_56;
            }
          }

          fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_affix_dic", (a10 + 128), 0, "STR");
          if ((fecfgparam_string & 0x80000000) == 0)
          {
            v33 = *(a10 + 128);
            if (!v33)
            {
LABEL_58:
              v25 = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_seg_patterns_dic", (a10 + 136), 0, "STR");
              if ((v25 & 0x80000000) == 0)
              {
                v34 = *(a10 + 136);
                if (v34)
                {
                  v25 = (*(a9 + 72))(a7, a8, v34, &v37);
                  if ((v25 & 0x80000000) == 0 && *(a10 + 136) && !v37)
                  {
                    v25 = 2310021127;
                    log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34012, "%s%s");
                  }
                }
              }

LABEL_56:
              if (!v20)
              {
                goto LABEL_18;
              }

              goto LABEL_57;
            }

            fecfgparam_string = (*(a9 + 72))(a7, a8, v33, &v37);
            if ((fecfgparam_string & 0x80000000) == 0)
            {
              if (*(a10 + 128) && !v37)
              {
                v25 = 2310021127;
                log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34011, "%s%s");
                goto LABEL_56;
              }

              goto LABEL_58;
            }
          }
        }
      }

LABEL_55:
      v25 = fecfgparam_string;
      goto LABEL_56;
    }

    if (v29 == 2)
    {
      v30 = "ANN_BMES";
      goto LABEL_34;
    }

    v25 = 2310021127;
    v23 = *(a5 + 32);
LABEL_41:
    log_OutPublic(v23, "FE_ONEWORD", 34006, "%s%s");
    goto LABEL_56;
  }

  v25 = UmlautMap;
LABEL_57:
  heap_Free(*(a5 + 8), v20);
LABEL_18:
  v26 = *(a10 + 32);
  if (v26)
  {
    heap_Free(*(a5 + 8), v26);
    *(a10 + 32) = 0;
  }

  if (v38)
  {
    heap_Free(*(a5 + 8), v38);
  }

  if ((v25 & 0x80000000) != 0 && *(a10 + 48) == 1)
  {
    v27 = *(a10 + 40);
    if (v27)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(a5, v35, v27);
      *(a10 + 40) = 0;
    }
  }

  return v25;
}

uint64_t crf_set_nbest_callback(void *a1, uint64_t a2, _DWORD *a3)
{
  v7 = 0u;
  v8 = 0u;
  cstdlib_memset(&v7, 0, 0x20uLL);
  result = crf_mde_seg_parse_params(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = DWORD1(v8);
    }

    crf_free_conf(a1, &v7);
    return 0;
  }

  return result;
}

uint64_t crf_mde_seg_get_fecfgparam_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, char **a6, _DWORD *a7, char *__s1)
{
  *&__c[1] = -1;
  if (!cstdlib_strcmp(__s1, "BOOL"))
  {
    *a7 = 0;
  }

  if (!cstdlib_strcmp(__s1, "STR"))
  {
    *a6 = 0;
  }

  *&__c[3] = 0;
  __c[0] = 0;
  v16 = (*(a4 + 96))(a2, a3, "fecfg", a5, &__c[3], &__c[1], __c);
  if ((v16 & 0x80001FFF) == 0x8000000A)
  {
LABEL_6:
    v17 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    return v17;
  }

  v17 = v16;
  if ((v16 & 0x80000000) != 0)
  {
    return 0;
  }

  if (*&__c[1])
  {
    v18 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v18)
    {
      *v18 = 0;
    }

    if (!cstdlib_strcmp(__s1, "STR"))
    {
      v20 = *(a1 + 8);
      v21 = cstdlib_strlen(**&__c[3]);
      v22 = heap_Calloc(v20, 1, (v21 + 1));
      *a6 = v22;
      if (v22)
      {
        cstdlib_strcpy(v22, **&__c[3]);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde seg param %s = %s", a5, *a6);
        return v17;
      }

      goto LABEL_6;
    }

    if (!cstdlib_strcmp(__s1, "BOOL"))
    {
      *a7 = 0;
      if (!cstdlib_strcmp(**&__c[3], "1"))
      {
        *a7 = 1;
      }
    }
  }

  return v17;
}

uint64_t crf_mde_seg_parse_params(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 10) = 0;
  v3 = (a3 + 10);
  *(a3 + 12) = 0;
  v61 = (a3 + 12);
  *(a3 + 16) = 0;
  v60 = (a3 + 16);
  *(a3 + 20) = 1;
  v59 = (a3 + 20);
  if (!*(a2 + 40))
  {
    return 0;
  }

  v5 = a2;
  v7 = 0;
  while (1)
  {
    v8 = cstdlib_strcmp(*(*(v5 + 32) + 16 * v7), "features");
    v9 = *(v5 + 32);
    if (!v8)
    {
      break;
    }

    v10 = cstdlib_strcmp(*(v9 + 16 * v7), "settings");
    v11 = *(v5 + 32);
    if (v10)
    {
      if (!cstdlib_strcmp(*(v11 + 16 * v7), "featureparam"))
      {
        v12 = *(*(a2 + 32) + 16 * v7 + 8);
        v13 = cstdlib_strlen(v12);
        v14 = v13;
        if (v13)
        {
          v15 = v13;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
LABEL_8:
          v20 = 0;
          while (2)
          {
            v21 = !v20;
            v22 = v18;
            while (!v21)
            {
              if (v12[v22] != 32)
              {
                v20 = 1;
                goto LABEL_20;
              }

              v12[v22] = 0;
              if (!v17)
              {
                v18 = v22 + 1;
                v17 = 1;
                v16 = v19;
                if ((v22 + 1) < v15)
                {
                  goto LABEL_8;
                }

                goto LABEL_75;
              }

              result = crf_mde_seg_set_featureparam_value(a1, v12, v16, v19, (a3 + 24));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v17 = 0;
              ++v22;
              v21 = 1;
              if (v22 >= v14)
              {
                goto LABEL_76;
              }
            }

            v24 = v12[v22];
            v20 = v24 != 32;
            if (v24 != 32)
            {
              v19 = v22;
            }

LABEL_20:
            v18 = v22 + 1;
            if ((v22 + 1) < v15)
            {
              continue;
            }

            break;
          }

          if (v17 != 1)
          {
            goto LABEL_76;
          }

LABEL_75:
          result = crf_mde_seg_set_featureparam_value(a1, v12, v16, v19, (a3 + 24));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          do
          {
LABEL_76:
            if (!*v12)
            {
              *v12 = 32;
            }

            ++v12;
            --v14;
          }

          while (v14);
        }
      }
    }

    else
    {
      v35 = *(v11 + 16 * v7 + 8);
      v36 = cstdlib_strlen(v35);
      v37 = heap_Alloc(*(a1 + 8), v36 + 1);
      if (!v37)
      {
        goto LABEL_81;
      }

      v38 = v37;
      cstdlib_strcpy(v37, v35);
      if (v36)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = v36;
        v43 = -v36;
        v44 = 0;
LABEL_38:
        v45 = 0;
        while (2)
        {
          v46 = !v45;
          ++v39;
          while (1)
          {
            v47 = *(v38 + v39 - 1);
            if (v46)
            {
              break;
            }

            if (v47 != 32)
            {
              v45 = 1;
              goto LABEL_49;
            }

            *(v38 + v39 - 1) = 0;
            if (!v41)
            {
              v41 = 1;
              v40 = v44;
              if (v43 + v39)
              {
                goto LABEL_38;
              }

              goto LABEL_66;
            }

            crf_mde_seg_set_param_value(a1, v38, v40, v44, v3, v61, v60, v59);
            v41 = 0;
            ++v39;
            v46 = 1;
            if (v43 + v39 == 1)
            {
              goto LABEL_67;
            }
          }

          v45 = v47 != 32;
          if (v47 != 32)
          {
            v44 = v39 - 1;
          }

LABEL_49:
          if (v43 + v39)
          {
            continue;
          }

          break;
        }

        if (v41 == 1)
        {
LABEL_66:
          crf_mde_seg_set_param_value(a1, v38, v40, v44, v3, v61, v60, v59);
        }

LABEL_67:
        v57 = v38;
        do
        {
          if (!*v57)
          {
            *v57 = 32;
          }

          ++v57;
          --v42;
        }

        while (v42);
      }

      heap_Free(*(a1 + 8), v38);
    }

LABEL_72:
    ++v7;
    v5 = a2;
    if (v7 >= *(a2 + 40))
    {
      return 0;
    }
  }

  v25 = *(v9 + 16 * v7 + 8);
  v26 = cstdlib_strlen(v25);
  v27 = v26;
  *(a3 + 8) = 0;
  if (v26)
  {
    v28 = 0;
    v29 = 0;
    v30 = v26;
    v31 = v25;
    do
    {
      v32 = *v31++;
      v33 = v32 == 32;
      if (v29)
      {
        v29 = !v33;
      }

      else if (v33)
      {
        v29 = 0;
      }

      else
      {
        *(a3 + 8) = ++v28;
        v29 = 1;
      }

      --v30;
    }

    while (v30);
    v34 = 8 * v28 + 8;
  }

  else
  {
    v34 = 8;
  }

  v48 = heap_Calloc(*(a1 + 8), 1, v34);
  *a3 = v48;
  if (v48)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = v52;
      v54 = v25[v52];
      if (v54 == 32)
      {
        LOBYTE(v54) = 0;
        v55 = 0;
        v49 = 0;
        v56 = *(*a3 + 8 * v51++);
      }

      else
      {
        if (v49)
        {
          v56 = *(*a3 + 8 * v51);
        }

        else
        {
          *(*a3 + 8 * v51) = heap_Alloc(*(a1 + 8), 64);
          v56 = *(*a3 + 8 * v51);
          if (!v56)
          {
            goto LABEL_81;
          }

          LOBYTE(v54) = v25[v53];
        }

        v55 = v50 + 1;
        v49 = 1;
      }

      *(v56 + v50) = v54;
      v52 = v53 + 1;
      v50 = v55;
    }

    while (v53 + 1 <= v27);
    goto LABEL_72;
  }

LABEL_81:
  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, a2);
  return 2310021130;
}

uint64_t crf_mde_seg_unload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    *(a3 + 32) = 0;
  }

  if (*(a3 + 48) == 1 && (v7 = *(a3 + 40)) != 0)
  {
    Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(a1, a2, v7);
    if ((Only_DereferenceCnt & 0x80000000) != 0)
    {
      return Only_DereferenceCnt;
    }

    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
  }

  else
  {
    Only_DereferenceCnt = 0;
  }

  crf_free_conf(a1, a3);
  v9 = *(a3 + 64);
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    *(a3 + 64) = 0;
  }

  v10 = *(a3 + 72);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a3 + 72) = 0;
  }

  v11 = *(a3 + 80);
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    *(a3 + 80) = 0;
  }

  v12 = *(a3 + 88);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a3 + 88) = 0;
  }

  if (*(a3 + 104))
  {
    v13 = 0;
    v14 = 0;
    v15 = *(a3 + 96);
    do
    {
      heap_Free(*(a1 + 8), *(v15 + v13));
      v16 = (*(a3 + 96) + v13);
      *v16 = 0;
      heap_Free(*(a1 + 8), v16[1]);
      v15 = *(a3 + 96);
      *(v15 + v13 + 8) = 0;
      ++v14;
      v13 += 16;
    }

    while (v14 < *(a3 + 104));
    heap_Free(*(a1 + 8), v15);
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
  }

  v17 = *(a3 + 112);
  if (v17)
  {
    heap_Free(*(a1 + 8), v17);
    *(a3 + 112) = 0;
  }

  v18 = *(a3 + 120);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a3 + 120) = 0;
  }

  v19 = *(a3 + 128);
  if (v19)
  {
    heap_Free(*(a1 + 8), v19);
    *(a3 + 128) = 0;
  }

  v20 = *(a3 + 136);
  if (v20)
  {
    heap_Free(*(a1 + 8), v20);
    *(a3 + 136) = 0;
  }

  return Only_DereferenceCnt;
}

void *crf_free_conf(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 8))
    {
      v5 = 0;
      do
      {
        heap_Free(v3[1], *(*a2 + 8 * v5++));
      }

      while (v5 < *(a2 + 8));
      v4 = *a2;
    }

    result = heap_Free(v3[1], v4);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    result = heap_Free(v3[1], v6);
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t crf_mde_getStrForCrossToken(uint64_t a1, char *__s, char **a3, char *a4, const char *a5, const char *a6)
{
  v11 = cstdlib_strlen(__s);
  __s2 = a4;
  v12 = cstdlib_strlen(a4);
  if (a5)
  {
    v13 = cstdlib_strlen(a5);
    v31 = cstdlib_strlen(a6);
  }

  else
  {
    v13 = 0;
    v31 = 0;
  }

  v32 = a1;
  v33 = a6;
  v14 = v11;
  if (v11)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v11;
    v19 = __s;
    do
    {
      if (v12 + v15 < v14 && !cstdlib_strncmp(v19, __s2, v12))
      {
        cstdlib_strncat(a3[v17++], &__s[v16], v15 - v16);
        v16 = (v12 + v15);
      }

      ++v15;
      ++v19;
    }

    while (v18 != v15);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  cstdlib_strncat(a3[v17], &__s[v16], (v14 - v16));
  if (a5 && v17 != 0xFFFF)
  {
    v20 = (v17 + 1);
    v21 = 28;
    do
    {
      v22 = *a3;
      if (*(*(v32 + 8) + v21))
      {
        cstdlib_strcat(v22, a5);
        v23 = *a3;
        v24 = cstdlib_strlen(*a3);
        cstdlib_memmove(&v23[v13], v23, v24 + v13);
        v25 = *a3;
        v26 = a5;
        v27 = v13;
      }

      else
      {
        cstdlib_strcat(v22, v33);
        v28 = *a3;
        v29 = cstdlib_strlen(*a3);
        cstdlib_memmove(&v28[v31], v28, v29 + v31);
        v25 = *a3;
        v26 = v33;
        v27 = v31;
      }

      cstdlib_memcpy(v25, v26, v27);
      ++a3;
      v21 += 48;
      --v20;
    }

    while (v20);
  }

  return 0;
}

uint64_t crf_mde_seg_label(void *a1, char *__s, uint64_t a3, const char *a4, unsigned int a5, int a6, _WORD *a7, unsigned __int16 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char *a22, uint64_t *a23, uint64_t *a24, uint64_t *a25, char **a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t *a30, char *a31, char *a32, char *a33, char *a34, char *a35, int a36)
{
  v379 = *MEMORY[0x277D85DE8];
  v375[0] = 0;
  v375[1] = 0;
  v373 = 0;
  v374 = 0;
  v372 = 0;
  v362 = cstdlib_strlen(__s);
  v42 = cstdlib_strlen(a4);
  v357 = cstdlib_strlen(a4);
  v369 = 0;
  v370 = 0;
  v368 = 0;
  __s1[1] = 0;
  __s1[0] = 0;
  *&__c[3] = 0;
  __c[0] = 0;
  v371 = 0;
  *&__c[1] = -1;
  v43 = (*(a12 + 96))(a13, a14, "fecfg", "mde_morphweight", &__c[3], &__c[1], __c);
  if ((v43 & 0x80001FFF) == 0x8000000A)
  {
    goto LABEL_2;
  }

  v45 = 0;
  if (v43 < 0)
  {
    v46 = a3;
  }

  else
  {
    v46 = a3;
    if (*&__c[1])
    {
      v47 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v47)
      {
        *v47 = 0;
      }

      v45 = cstdlib_atoi(**&__c[3]);
    }
  }

  v342 = v45;
  v347 = a5;
  v48 = crf_mde_utils_dynstr_init(a1, __s1, (v42 + 16), 16);
  if ((v48 & 0x80000000) != 0)
  {
    v44 = v48;
    goto LABEL_15;
  }

  v44 = crf_mde_utils_dynstr_add(a1, __s1, a4, 2);
  if ((v44 & 0x80000000) != 0)
  {
LABEL_15:
    v348 = v42;
    v349 = 0;
    LOWORD(v50) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v344 = 0;
    v346 = 0;
    v55 = 0;
    v358 = 0;
    v352 = 0;
    v354 = 0;
    v56 = 0;
LABEL_16:
    v57 = "FAILED";
    goto LABEL_17;
  }

  log_OutText(a1[4], "FE_ONEWORD", 5, 0, "Doing CRF MDE segmentation for token %s", __s1[0]);
  v49 = *(v46 + 88);
  if (v49 && cstdlib_strstr(__s1[0], v49))
  {
    log_OutText(a1[4], "FE_ONEWORD", 5, 0, "found %s in token, skip CRF MDE segmentation", *(v46 + 88));
    return v44;
  }

  v339 = a6;
  v338 = a8;
  if (!*(v46 + 96) || (v365 = 0, v86 = Utf8_LengthInBytes(__s1[0], 1), !v42))
  {
    v51 = 0;
    LOWORD(v50) = 0;
    goto LABEL_107;
  }

  v87 = v86;
  v336 = a7;
  v50 = 0;
  v88 = 0;
  do
  {
    v50 += isUmlaut(&__s1[0][v88], v87, *(v46 + 96), *(v46 + 104), &v365);
    v88 += v87;
    v87 = Utf8_LengthInBytes(&__s1[0][v88], 1);
  }

  while (v88 < v42);
  if (v50)
  {
    v378 = 0;
    *v377 = 0;
    v89 = heap_Calloc(a1[1], 1, 4 * v50);
    if (!v89)
    {
      goto LABEL_2;
    }

    v51 = v89;
    v90 = crf_mde_utils_dynstr_init(a1, v377, (v42 + 16), 16);
    if ((v90 & 0x80000000) != 0)
    {
      v44 = v90;
      v348 = v42;
    }

    else
    {
      v340 = v51;
      v91 = Utf8_LengthInBytes(__s1[0], 1);
      v92 = 0;
      v93 = 0;
      do
      {
        if (isUmlaut(&__s1[0][v93], v91, *(v46 + 96), *(v46 + 104), &v365))
        {
          v94 = v365;
          cstdlib_strcpy(__dst, *(*(v46 + 96) + 16 * v365 + 8));
          v95 = crf_mde_utils_dynstr_add(a1, v377, __dst, 1);
          if ((v95 & 0x80000000) != 0)
          {
            return v95;
          }

          v96 = (v340 + 4 * v92);
          *v96 = v93;
          v96[1] = cstdlib_strlen(*(*(v46 + 96) + 16 * v94 + 8));
          ++v92;
        }

        else
        {
          cstdlib_strncpy(__dst, &__s1[0][v93], v91);
          __dst[v91] = 0;
          v95 = crf_mde_utils_dynstr_add(a1, v377, __dst, 1);
          if ((v95 & 0x80000000) != 0)
          {
            return v95;
          }
        }

        v93 += v91;
        v91 = Utf8_LengthInBytes(&__s1[0][v93], 1);
      }

      while (v93 < v42);
      crf_mde_utils_dynstr_free(a1, __s1);
      v42 = cstdlib_strlen(*v377);
      v97 = crf_mde_utils_dynstr_init(a1, __s1, (v42 + 16), 16);
      if ((v97 & 0x80000000) != 0)
      {
        v44 = v97;
        v348 = v42;
        LOWORD(v50) = v92;
      }

      else
      {
        v98 = crf_mde_utils_dynstr_add(a1, __s1, *v377, 2);
        LOWORD(v50) = v92;
        if ((v98 & 0x80000000) == 0)
        {
          log_OutText(a1[4], "FE_ONEWORD", 5, 0, "expanded umlaut token %s", __s1[0]);
          crf_mde_utils_dynstr_free(a1, v377);
          if (v92)
          {
            v99 = 0;
            v100 = (v340 + 2);
            do
            {
              v101 = *(v100 - 1);
              v102 = *v100;
              v100 += 2;
              log_OutText(a1[4], "FE_ONEWORD", 5, 0, "umlaut[%d] pos=%d len=%d", v99++, v101, v102);
            }

            while (v92 != v99);
          }

          v51 = v340;
          LOWORD(v50) = v92;
          goto LABEL_106;
        }

        v44 = v98;
        v348 = v42;
      }

      v51 = v340;
    }

    v349 = 0;
    v352 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v344 = 0;
    v346 = 0;
    v55 = 0;
    v358 = 0;
    v354 = 0;
    v56 = 0;
    goto LABEL_16;
  }

  v51 = 0;
  LOWORD(v50) = 0;
LABEL_106:
  a7 = v336;
LABEL_107:
  v103 = cstdlib_strlen(__s1[0]) + v347 == v362;
  v104 = heap_Calloc(a1[1], 1, 16 * *(v46 + 10) + 8 * v42);
  if (!v104)
  {
    goto LABEL_2;
  }

  v56 = v104;
  v44 = crf_mde_seg_fv_new(a1, *(v46 + 8), v375);
  v348 = v42;
  if ((v44 & 0x80000000) != 0)
  {
    v349 = 0;
    v352 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v344 = 0;
    v346 = 0;
    v55 = 0;
    v358 = 0;
    v354 = 0;
    goto LABEL_16;
  }

  v345 = v103;
  v337 = a7;
  v341 = v51;
  if (*(v46 + 144) == 1)
  {
    log_OutText(a1[4], "FE_ONEWORD", 5, 0, "szSent %s", __s);
    log_OutText(a1[4], "FE_ONEWORD", 5, 0, "word %s", __s1[0]);
    if (*(v46 + 8))
    {
      v105 = 0;
      do
      {
        log_OutText(a1[4], "FE_ONEWORD", 5, 0, "FEAT[%d] %s", v105, *(*v46 + 8 * v105));
        ++v105;
      }

      while (v105 < *(v46 + 8));
    }
  }

  if (v42)
  {
    v106 = v50;
    v107 = 0;
    v108 = 0;
    do
    {
      v109 = v108;
      v110 = Utf8_LengthInBytes(&__s1[0][v108], 1);
      v111 = v110;
      v112 = *(v46 + 12);
      if (v112 == 1 || v112 == 2 && ((v113 = *(v46 + 80)) != 0 && !cstdlib_strncmp(&__s1[0][v109], v113, v110) || (v114 = *(v46 + 64)) != 0 && !cstdlib_strncmp(&__s1[0][v109], v114, v111)))
      {
        ++v107;
      }

      v108 = v109 + v111;
    }

    while ((v109 + v111) < v42);
    v115 = v107 + 1;
    LOWORD(v50) = v106;
  }

  else
  {
    v115 = 1;
  }

  v350 = v115;
  v116 = v115;
  v117 = heap_Calloc(a1[1], 1, 8 * v115);
  if (!v117)
  {
    goto LABEL_2;
  }

  v118 = v117;
  if (*(v46 + 12) == 2)
  {
    v346 = heap_Calloc(a1[1], 1, 4 * v116);
    if (!v346)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v346 = 0;
    v350 = 0;
  }

  v330 = v339 + v347;
  v354 = v118;
  v331 = v339 + v347 + v357;
  if (!v42)
  {
    v352 = 0;
    v133 = 0;
    v132 = v346;
    goto LABEL_196;
  }

  v358 = 0;
  v119 = 0;
  v120 = 0;
  v353 = v42;
  while (1)
  {
    v121 = v120;
    v122 = Utf8_LengthInBytes(&__s1[0][v120], 1);
    v123 = v122;
    v124 = *(v46 + 12);
    if (v124 != 1)
    {
      break;
    }

    if (v122)
    {
      v129 = v122;
LABEL_149:
      v130 = heap_Calloc(a1[1], 1, v129 + 1);
      *(v354 + 8 * v358) = v130;
      if (!v130)
      {
        goto LABEL_2;
      }

      cstdlib_strncpy(v130, &__s1[0][v119], v129);
      if (*(v46 + 12) == 2)
      {
        *(v346 + 4 * v358) = 0;
      }

      ++v358;
      v119 = v121 + v123;
      v42 = v348;
    }

LABEL_153:
    v120 = v121 + v123;
    v131 = (v121 + v123);
    if (v131 >= v42)
    {
      if (v131 == v119)
      {
        v352 = 0;
        v118 = v354;
        v132 = v346;
        v133 = v358;
        goto LABEL_196;
      }

      v134 = (v120 - v119);
      v135 = heap_Calloc(a1[1], 1, v134 + 1);
      v118 = v354;
      *(v354 + 8 * v358) = v135;
      if (!v135)
      {
        goto LABEL_2;
      }

      cstdlib_strncpy(v135, &__s1[0][v119], v134);
      if (*(v46 + 12) == 2)
      {
        v136 = v50;
        v137 = v353 + v347;
        if (v353 + v347 < v362 && (v138 = &__s[v347 + v42], TOK_IS_PUNCT(v138)))
        {
          v139 = *(v46 + 72);
          v132 = v346;
          if (v139 && (v140 = cstdlib_strlen(*(v46 + 72)), !cstdlib_strncmp(v138, v139, v140)))
          {
            v147 = 0;
            v352 = 0;
          }

          else
          {
            v141 = v353 + v347;
            do
            {
              v142 = v141++;
            }

            while (v141 < v362 && TOK_IS_PUNCT(&__s[v141]));
            if (TOK_IS_PUNCT(&__s[v141]))
            {
              v143 = v141;
            }

            else
            {
              v143 = v142;
            }

            v144 = v143 - v137;
            v145 = heap_Calloc(a1[1], 1, v144 + 2);
            if (!v145)
            {
              goto LABEL_2;
            }

            v146 = v145;
            cstdlib_strncpy(v145, &__s[v137], v144 + 1);
            v352 = v146;
            v146[v144 + 1] = 0;
            v147 = 1;
          }
        }

        else
        {
          v147 = 0;
          v352 = 0;
          v132 = v346;
        }

        *(v132 + 4 * v358) = v147;
        LOWORD(v50) = v136;
        v118 = v354;
      }

      else
      {
        v352 = 0;
        v132 = v346;
      }

      v133 = v358 + 1;
LABEL_196:
      v358 = v133;
      v332 = v133;
      LODWORD(v160) = *(v46 + 10);
      if (*(v46 + 10))
      {
        v161 = 0;
        do
        {
          features = crf_mde_seg_set_padding_features(a1, v161, *(v46 + 8), v375, 1);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_226;
          }

          features = crf_mde_seg_concat_strings(a1, v375, &v374);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_226;
          }

          v56[v161] = v374;
          v374 = 0;
          ++v161;
          v160 = *(v46 + 10);
        }

        while (v161 < v160);
      }

      if (v358)
      {
        v163 = 0;
        do
        {
          features = crf_mde_seg_get_features(a1, v118, v358, v132, v350, v163, *(v46 + 24), *v46, *(v46 + 8), v375, v347 == 0, v345);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_226;
          }

          features = crf_mde_seg_concat_strings(a1, v375, &v374);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_226;
          }

          LODWORD(v160) = *(v46 + 10);
          v56[*(v46 + 10) + v163] = v374;
          v374 = 0;
        }

        while (v358 != ++v163);
      }

      if (v160)
      {
        v164 = 0;
        while (1)
        {
          features = crf_mde_seg_set_padding_features(a1, v164, *(v46 + 8), v375, 0);
          if ((features & 0x80000000) != 0)
          {
            break;
          }

          features = crf_mde_seg_concat_strings(a1, v375, &v374);
          if ((features & 0x80000000) != 0)
          {
            break;
          }

          v160 = *(v46 + 10);
          v56[v358 + v164 + v160] = v374;
          v374 = 0;
          if (++v164 >= v160)
          {
            goto LABEL_211;
          }
        }

LABEL_226:
        v44 = features;
        v349 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v344 = 0;
        v55 = 0;
LABEL_227:
        v358 = v332;
        v57 = "FAILED";
        v51 = v341;
        goto LABEL_17;
      }

LABEL_211:
      if (*(v46 + 144) == 1 && v358)
      {
        for (i = 0; i != v358; ++i)
        {
          v166 = *(v46 + 12);
          if (v166 == 1)
          {
            log_OutText(a1[4], "FE_ONEWORD", 5, 0, "token[%d] %s");
          }

          else if (v166 == 2)
          {
            log_OutText(a1[4], "FE_ONEWORD", 5, 0, "token[%d] %s punc = %d");
          }
        }

        LODWORD(v160) = *(v46 + 10);
      }

      v44 = crf_Process(*(v46 + 40), v56, v358 + 2 * v160, &v373, &v372);
      v51 = v341;
      if ((v44 & 0x80000000) == 0)
      {
        if (*(v46 + 144) == 1)
        {
          log_OutText(a1[4], "FE_ONEWORD", 5, 0, "results : %d best", *(v46 + 20));
          if (!v372)
          {
            goto LABEL_294;
          }

          v167 = 0;
          do
          {
            log_OutText(a1[4], "FE_ONEWORD", 5, 0, "%s ==> _%s_", v56[v167], *(v373 + 8 * v167));
            ++v167;
            v168 = v372;
          }

          while (v372 > v167);
          v51 = v341;
        }

        else
        {
          v168 = v372;
        }

        if (v168)
        {
          v169 = heap_Calloc(a1[1], 1, 8 * *(v46 + 20) * v358);
          if (v169)
          {
            v55 = v169;
            if (*(v46 + 20))
            {
              v170 = 0;
              do
              {
                v171 = heap_Calloc(a1[1], 1, 40 * v358);
                v55[v170] = v171;
                if (!v171)
                {
                  goto LABEL_2;
                }

                *(v55[v170] + 1) = heap_Calloc(a1[1], 1, 48 * v358);
                v172 = v55[v170];
                if (!*(v172 + 1))
                {
                  goto LABEL_2;
                }

                *v172 = 0;
                *(v172 + 8) = 0;
              }

              while (*(v46 + 20) > ++v170);
            }

            v44 = crf_mde_utils_dynstr_init(a1, &v370, 2 * (v348 & 0x7FFFu), 128);
            if ((v44 & 0x80000000) != 0)
            {
              v349 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v344 = 0;
              goto LABEL_227;
            }

            v173 = *(v46 + 20);
            v329 = v50;
            if (v173)
            {
              v174 = 0;
              v175 = v372;
              do
              {
                v176 = v55[v174];
                *v176 = 0;
                if (v175)
                {
                  v177 = 0;
                  v178 = 0;
                  v179 = *(v46 + 10);
                  v180 = v373;
                  do
                  {
                    if (v179 <= v177 && v179 + v358 > v177)
                    {
                      v181 = *(*(v180 + 8 * v177) + 2 * v174);
                      if (v181 == 83 || v181 == 66)
                      {
                        *v176 = ++v178;
                      }
                    }

                    ++v177;
                  }

                  while (v175 > v177);
                  v182 = v178 + 1;
                }

                else
                {
                  v182 = 1;
                }

                *v176 = v182;
                v183 = v174 + 1;
                v174 = (v174 + 1);
              }

              while (v173 > v183);
              v184 = 0;
              LOWORD(v185) = 0;
              while (1)
              {
                cstdlib_memset(v370, 0, v371);
                v185 = v185;
                *v55[v185] = 0;
                if (v372)
                {
                  break;
                }

LABEL_276:
                if (cstdlib_strlen(v370))
                {
                  v204 = v185;
                  v185 = a1[1];
                  v205 = cstdlib_strlen(v370) + 1;
                  v206 = v185;
                  LOWORD(v185) = v204;
                  *(*(v55[v204] + 1) + 48 * *v55[v204]) = heap_Calloc(v206, 1, v205);
                  v207 = *(*(v55[v204] + 1) + 48 * *v55[v204]);
                  if (!v207)
                  {
                    goto LABEL_2;
                  }

                  cstdlib_strcpy(v207, v370);
                  ++*v55[v204];
                }

                LOWORD(v185) = v185 + 1;
                v184 = v185;
                if (*(v46 + 20) <= v185)
                {
                  goto LABEL_280;
                }
              }

              v186 = 0;
              v351 = 0;
              v187 = 0;
              v333 = 2 * v184;
              v188 = v358;
              while (1)
              {
                v189 = *(v46 + 10);
                if (v189 <= v187 && v189 + v188 > v186)
                {
                  v191 = *(*(v373 + 8 * v187) + v333);
                  if ((v191 == 83 || v191 == 66) && cstdlib_strlen(v370))
                  {
                    v192 = v185;
                    v193 = a1[1];
                    v194 = cstdlib_strlen(v370) + 1;
                    v195 = v193;
                    v185 = v192;
                    *(*(v55[v192] + 1) + 48 * *v55[v192]) = heap_Calloc(v195, 1, v194);
                    v196 = *(*(v55[v185] + 1) + 48 * *v55[v185]);
                    if (!v196)
                    {
                      goto LABEL_2;
                    }

                    cstdlib_strcpy(v196, v370);
                    v197 = v55[v192];
                    v198 = *v197;
                    *(*(v197 + 1) + 48 * *v197 + 28) = 1;
                    *v197 = v198 + 1;
                    cstdlib_memset(v370, 0, v371);
                    v188 = v358;
                  }

                  if (cstdlib_strlen(v370))
                  {
                    v199 = a1;
                    v200 = 1;
                  }

                  else
                  {
                    v199 = a1;
                    v200 = 2;
                  }

                  v44 = crf_mde_utils_dynstr_add(v199, &v370, *(v354 + 8 * v351), v200);
                  if ((v44 & 0x80000000) != 0)
                  {
                    goto LABEL_300;
                  }

                  ++v351;
                  if (v186 + 1 < v372)
                  {
                    v201 = *(*(v373 + 8 * (v186 + 1)) + v333);
                    if (v201 != 66 && v201 != 83 && *(v46 + 80))
                    {
                      if (cstdlib_strlen(v370))
                      {
                        v202 = a1;
                        v203 = 1;
                      }

                      else
                      {
                        v202 = a1;
                        v203 = 2;
                      }

                      v44 = crf_mde_utils_dynstr_add(v202, &v370, *(v46 + 80), v203);
                      if ((v44 & 0x80000000) != 0)
                      {
                        goto LABEL_300;
                      }
                    }
                  }
                }

                v186 = ++v187;
                if (v372 <= v187)
                {
                  goto LABEL_276;
                }
              }
            }

LABEL_280:
            v369 = heap_Calloc(a1[1], 1, 1024);
            if (!v369)
            {
              v44 = 2310021130;
              log_OutPublic(a1[4], "FE_ONEWORD", 34000, 0);
LABEL_300:
              v349 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v344 = 0;
              v358 = v332;
              v57 = "FAILED";
              v51 = v341;
              goto LABEL_17;
            }

            HIWORD(v368) = 1024;
            if (*(v46 + 144) == 1)
            {
              log_OutText(a1[4], "FE_ONEWORD", 5, 0, "Segmentation results:", 0);
              v209 = *(a3 + 20);
              if (v209)
              {
                v210 = 0;
                v211 = 0;
                while (1)
                {
                  cstdlib_strcpy(v369, "");
                  __sprintf_chk(v377, 0, 0x40uLL, "nbest[%d] ", v210);
                  v44 = crf_mde_utils_add2Str(a1, &v369, &v368 + 1, v377);
                  if ((v44 & 0x80000000) != 0)
                  {
                    goto LABEL_392;
                  }

                  v212 = v55[v211];
                  if (*v212)
                  {
                    v213 = 0;
                    v214 = 0;
                    do
                    {
                      v44 = crf_mde_utils_add2Str(a1, &v369, &v368 + 1, *(*(v212 + 1) + v213));
                      if ((v44 & 0x80000000) != 0)
                      {
                        goto LABEL_392;
                      }

                      v212 = v55[v211];
                      v215 = *v212;
                      if (v214 + 1 < v215)
                      {
                        v44 = crf_mde_utils_add2Str(a1, &v369, &v368 + 1, " | ");
                        if ((v44 & 0x80000000) != 0)
                        {
                          goto LABEL_392;
                        }

                        v212 = v55[v211];
                        v215 = *v212;
                      }

                      ++v214;
                      v213 += 48;
                    }

                    while (v214 < v215);
                  }

                  log_OutText(a1[4], "FE_ONEWORD", 5, 0, "%s", v369);
                  v210 = ++v211;
                  v209 = *(a3 + 20);
                  if (v209 <= v211)
                  {
                    goto LABEL_302;
                  }
                }
              }
            }

            else
            {
              v209 = *(a3 + 20);
LABEL_302:
              if (v209)
              {
                v217 = 0;
                v334 = 0;
                v218 = 0;
                v219 = a3;
                do
                {
                  if (*(v219 + 96))
                  {
                    v220 = v218;
                    v221 = v55[v218];
                    if (*v221)
                    {
                      v326 = v218;
                      v222 = 0;
                      v223 = 0;
                      do
                      {
                        v224 = cstdlib_strlen(*(*(v221 + 1) + 48 * v222));
                        if (v329)
                        {
                          v225 = v224 + v223;
                          v226 = v329;
                          v227 = (v341 + 2);
                          do
                          {
                            v228 = *(v227 - 1);
                            if (v228 >= v223)
                            {
                              v229 = *v227 + v228;
                              if (v225 > v228 && v229 > v225)
                              {
                                *(v55[v220] + 8) = 5;
                                v217 = 1;
                              }

                              if (v229 < v225)
                              {
                                *(*(v55[v220] + 1) + 48 * v222 + 36) = 1;
                              }
                            }

                            v227 += 2;
                            --v226;
                          }

                          while (v226);
                        }

                        v223 += v224;
                        ++v222;
                        v221 = v55[v220];
                      }

                      while (v222 < *v221);
                      v219 = a3;
                      v209 = *(a3 + 20);
                      v218 = v326;
                    }
                  }

                  v231 = v218 + 1;
                  if (v209 > (v218 + 1))
                  {
                    v232 = v218;
                    v327 = v218 + 1;
                    v233 = v218 + 1;
                    do
                    {
                      v234 = v233;
                      if (*v55[v232] == *v55[v233])
                      {
                        v235 = v55[v232];
                        v236 = v55[v233];
                        if (*v235)
                        {
                          v237 = 0;
                          v238 = 0;
                          while (1)
                          {
                            v239 = *(v236 + 1);
                            if (*(v239 + v237 + 28) == 1)
                            {
                              if (cstdlib_strcmp(*(*(v235 + 1) + v237), *(v239 + v237)))
                              {
                                break;
                              }
                            }

                            v235 = v55[v232];
                            ++v238;
                            v236 = v55[v234];
                            v237 += 48;
                            if (v238 >= *v235)
                            {
                              goto LABEL_329;
                            }
                          }
                        }

                        else
                        {
LABEL_329:
                          *(v236 + 8) = 4;
                          v334 = 1;
                        }

                        v219 = a3;
                      }

                      v233 = v234 + 1;
                      v209 = *(v219 + 20);
                    }

                    while (v209 > (v234 + 1));
                    v231 = v327;
                  }

                  v218 = v231;
                }

                while (v209 > v231);
                if ((v334 == 1 || v217 == 1) && *(a3 + 144) == 1)
                {
                  log_OutText(a1[4], "FE_ONEWORD", 5, 0, "Segmentation results (remove duplicates):", 0);
                  v209 = *(a3 + 20);
                  if (v209)
                  {
                    v240 = 0;
                    v241 = 0;
                    do
                    {
                      cstdlib_strcpy(v369, "");
                      __sprintf_chk(v377, 0, 0x40uLL, "nbest[%d] ", v240);
                      v44 = crf_mde_utils_add2Str(a1, &v369, &v368 + 1, v377);
                      if ((v44 & 0x80000000) != 0)
                      {
                        goto LABEL_392;
                      }

                      v242 = v55[v241];
                      if (*v242)
                      {
                        v243 = 0;
                        v244 = 0;
                        do
                        {
                          v44 = crf_mde_utils_add2Str(a1, &v369, &v368 + 1, *(*(v242 + 1) + v243));
                          if ((v44 & 0x80000000) != 0)
                          {
                            goto LABEL_392;
                          }

                          v242 = v55[v241];
                          v245 = *v242;
                          if (v244 + 1 < v245)
                          {
                            v44 = crf_mde_utils_add2Str(a1, &v369, &v368 + 1, " | ");
                            if ((v44 & 0x80000000) != 0)
                            {
                              goto LABEL_392;
                            }

                            v242 = v55[v241];
                            v245 = *v242;
                          }

                          ++v244;
                          v243 += 48;
                        }

                        while (v244 < v245);
                      }

                      v246 = *(v242 + 8);
                      if (v246 == 4)
                      {
                        v44 = crf_mde_utils_add2Str(a1, &v369, &v368 + 1, " MDE_Duplicate");
                        if ((v44 & 0x80000000) != 0)
                        {
                          goto LABEL_392;
                        }

                        v246 = *(v55[v241] + 8);
                      }

                      if (v246 == 5)
                      {
                        v44 = crf_mde_utils_add2Str(a1, &v369, &v368 + 1, " MDE_UmlautSplit");
                        if ((v44 & 0x80000000) != 0)
                        {
                          goto LABEL_392;
                        }
                      }

                      log_OutText(a1[4], "FE_ONEWORD", 5, 0, "%s", v369);
                      v240 = ++v241;
                      v209 = *(a3 + 20);
                    }

                    while (v209 > v241);
                  }
                }
              }
            }

            v247 = *(a3 + 56);
            if (v247 == 1)
            {
              if (!*(a3 + 120))
              {
                goto LABEL_356;
              }
            }

            else if (v247 || *(a3 + 120))
            {
LABEL_356:
              if (a21 == 1)
              {
                v248 = cstdlib_strchr(a22, 95);
                if (v248)
                {
                  v249 = v248 + 1;
                }

                else
                {
                  v249 = a22;
                }

                v325 = v249;
                v324 = *v249;
                v209 = *(a3 + 20);
              }

              else
              {
                v325 = 0;
                v324 = 32;
              }

              v44 = crf_mde_utils_do_validation(a1, a12, a13, a14, a15, a16, a17, *(a3 + 112), *(a3 + 120), *(a3 + 128), *(a3 + 136), v55, v209, *(a3 + 144), *(a3 + 64), &v369, &v368 + 1);
              if ((v44 & 0x80000000) == 0)
              {
                v252 = *(a3 + 20);
                if (v252)
                {
                  v253 = 0;
                  for (j = 0; j < v252; ++j)
                  {
                    v255 = v55[j];
                    v256 = *(v255 + 8);
                    if (v256 < 2 || v256 == 3 && !*(a3 + 136))
                    {
                      v257 = *v255;
                      if (v257 > v253)
                      {
                        v253 = v257;
                      }
                    }
                  }

                  v349 = v253;
                  if (v253)
                  {
                    v258 = v253;
                    v344 = heap_Calloc(a1[1], 1, 2 * v253);
                    if (!v344)
                    {
                      v44 = 2310021130;
                      log_OutPublic(a1[4], "FE_ONEWORD", 34000, 0);
                      goto LABEL_393;
                    }

                    v54 = heap_Calloc(a1[1], 1, 8 * v258);
                    if (!v54)
                    {
                      v44 = 2310021130;
                      log_OutPublic(a1[4], "FE_ONEWORD", 34000, 0);
                      v52 = 0;
                      v53 = 0;
                      goto LABEL_394;
                    }

                    v53 = heap_Calloc(a1[1], 1, 8 * v258);
                    if (!v53)
                    {
                      v44 = 2310021130;
                      log_OutPublic(a1[4], "FE_ONEWORD", 34000, 0);
                      v52 = 0;
                      goto LABEL_394;
                    }

                    v52 = heap_Calloc(a1[1], 1, 8 * v258);
                    if (v52)
                    {
                      v259 = 0;
                      while (1)
                      {
                        v260 = heap_Calloc(a1[1], 1, 128);
                        v54[v259] = v260;
                        if (!v260)
                        {
                          break;
                        }

                        v261 = heap_Calloc(a1[1], 1, 128);
                        v53[v259] = v261;
                        if (!v261)
                        {
                          break;
                        }

                        v262 = heap_Calloc(a1[1], 1, 128);
                        v52[v259] = v262;
                        if (!v262)
                        {
                          break;
                        }

                        cstdlib_strcpy(v54[v259], "");
                        cstdlib_strcpy(v53[v259], "");
                        cstdlib_strcpy(v52[v259++], "");
                        if (v258 == v259)
                        {
                          v322 = 0;
                          goto LABEL_397;
                        }
                      }
                    }

                    v44 = 2310021130;
                    log_OutPublic(a1[4], "FE_ONEWORD", 34000, 0);
LABEL_471:
                    v57 = "FAILED";
                    v358 = v332;
                    goto LABEL_395;
                  }
                }

                v349 = 0;
                v344 = 0;
                v54 = 0;
                v53 = 0;
                v52 = 0;
                v322 = 1;
LABEL_397:
                v263 = v330 + cstdlib_strlen(__s1[0]);
                v264 = Utf8_LengthInBytes(&__s[v263], 1);
                v318 = v263;
                v319 = v362;
                if (v362 > v263 && (v265 = v264, v266 = &__s[v263], (*(a12 + 128))(a13, a14, v266)))
                {
                  LOWORD(v331) = v263;
                  do
                  {
                    if (!cstdlib_strncmp(v266, "_", v265))
                    {
                      break;
                    }

                    v267 = Utf8_LengthInBytes(&__s[(v331 + v265)], 1);
                    v318 = (v331 + v265);
                    LOWORD(v331) = v331 + v265;
                    if (v362 <= v331)
                    {
                      break;
                    }

                    v265 = v267;
                    v266 = &__s[v331];
                  }

                  while ((*(a12 + 128))(a13, a14, v266));
                }

                else
                {
                  LOWORD(v331) = v263;
                }

                if (*(a3 + 20))
                {
                  v328 = 0;
                  v343 = 0;
                  v335 = 0;
                  v268 = 0;
                  v321 = a36;
                  v320 = a35;
                  while (1)
                  {
                    v363 = v268;
                    v269 = *(v55[v268] + 8);
                    if (v269 < 2 || v269 == 3 && !*(a3 + 136))
                    {
                      cstdlib_strcpy(a31, "");
                      cstdlib_strcpy(a32, "");
                      cstdlib_strcpy(a33, "");
                      v270 = v55[v363];
                      if (*(v270 + 16))
                      {
                        v271 = 0;
                        v360 = 0;
                        v323 = v328 + 1;
                        while (1)
                        {
                          v355 = v271;
                          v272 = 5 * v271;
                          crf_mde_getStrForCrossToken(v270, *(*(v270 + 24) + 80 * v271), v53, *(a3 + 64), "◄", "◖");
                          v273 = v363;
                          crf_mde_getStrForCrossToken(v55[v363], *(*(v55[v363] + 3) + 16 * v272 + 48), v54, *(a3 + 64), 0, 0);
                          crf_mde_getStrForCrossToken(v55[v273], *(*(v55[v273] + 3) + 16 * v272 + 64), v52, *(a3 + 64), 0, 0);
                          if (*v55[v363])
                          {
                            v274 = 0;
                            do
                            {
                              v275 = v54[v274];
                              v276 = cstdlib_strlen(v275);
                              *(v344 + 2 * v274) = Utf8_LengthInUtf8chars(v275, v276);
                              v277 = v53[v274];
                              v278 = cstdlib_strlen(v277);
                              v279 = Utf8_LengthInUtf8chars(v277, v278);
                              v280 = v52[v274];
                              v281 = cstdlib_strlen(v280);
                              v282 = Utf8_LengthInUtf8chars(v280, v281);
                              v283 = *(v344 + 2 * v274);
                              if (v279 > v283)
                              {
                                *(v344 + 2 * v274) = v279;
                                v283 = v279;
                              }

                              if (v283 < v282)
                              {
                                *(v344 + 2 * v274) = v282;
                              }

                              ++v274;
                            }

                            while (v274 < *v55[v363]);
                            v273 = v363;
                            if (*v55[v363])
                            {
                              v284 = 0;
                              do
                              {
                                v285 = v54[v284];
                                v286 = cstdlib_strlen(v285);
                                v287 = Utf8_LengthInUtf8chars(v285, v286);
                                if (*(v344 + 2 * v284) > v287)
                                {
                                  v288 = v287;
                                  do
                                  {
                                    cstdlib_strcat(v54[v284], "~");
                                    ++v288;
                                  }

                                  while (v288 < *(v344 + 2 * v284));
                                }

                                v289 = v53[v284];
                                v290 = cstdlib_strlen(v289);
                                v291 = Utf8_LengthInUtf8chars(v289, v290);
                                if (*(v344 + 2 * v284) > v291)
                                {
                                  v292 = v291;
                                  do
                                  {
                                    cstdlib_strcat(v53[v284], "~");
                                    ++v292;
                                  }

                                  while (v292 < *(v344 + 2 * v284));
                                }

                                v293 = v52[v284];
                                v294 = cstdlib_strlen(v293);
                                v295 = Utf8_LengthInUtf8chars(v293, v294);
                                if (*(v344 + 2 * v284) > v295)
                                {
                                  v296 = v295;
                                  do
                                  {
                                    cstdlib_strcat(v52[v284], "~");
                                    ++v296;
                                  }

                                  while (v296 < *(v344 + 2 * v284));
                                }

                                ++v284;
                                v273 = v363;
                              }

                              while (v284 < *v55[v363]);
                            }
                          }

                          cstdlib_strcpy(a31, "");
                          cstdlib_strcpy(a32, "");
                          cstdlib_strcpy(a33, "");
                          v297 = v55[v273];
                          if (*v297)
                          {
                            v298 = 0;
                            do
                            {
                              cstdlib_strcat(a31, v53[v298]);
                              cstdlib_strcat(a32, v54[v298]);
                              cstdlib_strcat(a33, v52[v298++]);
                              v297 = v55[v363];
                            }

                            while (v298 < *v297);
                          }

                          v299 = (*(v297 + 3) + 80 * v355);
                          log_OutText(a1[4], "FE_ONEWORD", 5, 0, "crosstoken call nbest[%d] solution[%d] segpat:%s patPOS:%s pos:%s pron:%s feat:%s", v328, v360, v299[4], v299[6], v299[2], *v299, v299[8]);
                          log_OutText(a1[4], "FE_ONEWORD", 5, 0, "crosstoken call phon:%s", a31);
                          log_OutText(a1[4], "FE_ONEWORD", 5, 0, "crosstoken call pos :%s", a32);
                          log_OutText(a1[4], "FE_ONEWORD", 5, 0, "crosstoken call cgn :%s", a33);
                          cstdlib_strcpy(a34, "");
                          cstdlib_strcpy(__dst, "normal");
                          v300 = oneword_crosstoken(a1, a18, a19, a20, a21, a22, 0, v324, v325, __dst, 0, a23, a24, a25, a26, a27, a28, a29, a30, &a31, &a32, &a33, &a34);
                          if ((v300 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v301 = v55[v363];
                          if (*(v301 + 8) == 3 && !*(a3 + 136))
                          {
                            v302 = &a32;
                          }

                          else
                          {
                            v302 = (*(v301 + 3) + 80 * v355 + 16);
                          }

                          log_OutText(a1[4], "FE_ONEWORD", 5, 0, "write to lingdb nbest[%d] solution[%d] pos:%s pron:%s cgn:%s", v328, v360, *v302, a31, a33);
                          v303 = v55[v363];
                          v304 = *(v303 + 8);
                          if (v321)
                          {
                            if (v304 == 3 && !*(a3 + 136))
                            {
                              v305 = &a32;
                            }

                            else
                            {
                              v305 = (*(v303 + 3) + 80 * v355 + 16);
                            }

                            v306 = *v305;
                            v307 = a31;
                            v308 = a33;
                            v309 = v323 + v342 * *v303;
                            v310 = *(a3 + 52);
                          }

                          else
                          {
                            if (v304 == 3 && !*(a3 + 136))
                            {
                              v311 = &a32;
                            }

                            else
                            {
                              v311 = (*(v303 + 3) + 80 * v355 + 16);
                            }

                            v306 = *v311;
                            v307 = a31;
                            v308 = a33;
                            v309 = v323 + v342 * *v303;
                            v310 = 1;
                          }

                          LOWORD(v317) = v309;
                          v44 = hlp_Write2WordRec(a9, a10, a11, v338, v347, v331 - v339, v343, v306, v307, v308, v320, v317, v310);
                          if ((v44 & 0x80000000) != 0)
                          {
                            goto LABEL_465;
                          }

                          if ((v322 & 1) == 0)
                          {
                            v361 = v349;
                            v356 = v52;
                            v312 = v53;
                            v313 = v54;
                            do
                            {
                              v314 = *v313++;
                              cstdlib_strcpy(v314, "");
                              v315 = *v312++;
                              cstdlib_strcpy(v315, "");
                              v316 = *v356++;
                              cstdlib_strcpy(v316, "");
                              --v361;
                            }

                            while (v361);
                          }

                          ++v343;
                          v271 = v355 + 1;
                          v270 = v55[v363];
                          v360 = v355 + 1;
                          if (v355 + 1 >= *(v270 + 16))
                          {
                            goto LABEL_457;
                          }
                        }

                        v44 = v300;
                        goto LABEL_465;
                      }

LABEL_457:
                      v335 = 1;
                    }

                    v268 = v363 + 1;
                    v328 = (v363 + 1);
                    if (*(a3 + 20) <= v328)
                    {
                      goto LABEL_462;
                    }
                  }
                }

                v335 = 0;
LABEL_462:
                if (v319 != v318)
                {
                  v331 = v330 + cstdlib_strlen(__s1[0]);
                }

LABEL_465:
                if (v335 != 1)
                {
                  goto LABEL_471;
                }

                v51 = v341;
                LOWORD(v50) = v329;
                v46 = a3;
LABEL_467:
                v159 = v331;
                goto LABEL_185;
              }

              goto LABEL_392;
            }

            if (v209)
            {
              v335 = 0;
              v250 = 0;
              v46 = a3;
              do
              {
                v44 = crf_mde_utils_write_morphemes(a1, *(a3 + 56), *(a3 + 120), a12, a13, a14, a9, v208, a10, a11, v338, v347, v339, v55[v250], __s, &v368);
                if ((v44 & 0x80000000) != 0)
                {
                  v344 = 0;
                  v54 = 0;
                  v53 = 0;
                  v52 = 0;
                  v349 = 0;
                  goto LABEL_465;
                }

                if (v368 == v362)
                {
                  v251 = v362;
                }

                else
                {
                  v251 = v331;
                }

                v331 = v251;
                ++v250;
                v335 = 1;
              }

              while (*(a3 + 20) > v250);
              v349 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v344 = 0;
              v51 = v341;
              LOWORD(v50) = v329;
              goto LABEL_467;
            }

LABEL_392:
            v349 = 0;
LABEL_393:
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v344 = 0;
LABEL_394:
            v358 = v332;
            v57 = "FAILED";
LABEL_395:
            v51 = v341;
            LOWORD(v50) = v329;
            v46 = a3;
            goto LABEL_17;
          }

LABEL_2:
          v44 = 2310021130;
          log_OutPublic(a1[4], "FE_ONEWORD", 34000, 0);
          return v44;
        }
      }

LABEL_294:
      v349 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v344 = 0;
      v55 = 0;
      v216 = v332;
LABEL_295:
      v358 = v216;
      goto LABEL_16;
    }
  }

  if (v124 != 2)
  {
    goto LABEL_153;
  }

  v125 = *(v46 + 80);
  if (!v125 || cstdlib_strncmp(&__s1[0][v121], v125, v122))
  {
    v126 = *(v46 + 64);
    if (!v126 || cstdlib_strncmp(&__s1[0][v121], v126, v123))
    {
      goto LABEL_153;
    }
  }

  v127 = *(v46 + 64);
  if (!v127 || cstdlib_strncmp(&__s1[0][v121], v127, v123))
  {
    v128 = *(v46 + 80);
    if (v128)
    {
      cstdlib_strncmp(&__s1[0][v121], v128, v123);
    }
  }

  v129 = v121 - v119;
  if (v121 != v119 && cstdlib_strcmp(a22, "prompt") && cstdlib_strcmp(a22, "internal-nuance-system-norm"))
  {
    goto LABEL_149;
  }

  log_OutText(a1[4], "FE_ONEWORD", 5, 0, "Error Parsing For Morpheme - character=%d, word=%s", v121, __s1[0]);
  v148 = *(v46 + 56);
  if (!v148)
  {
    v51 = v341;
    v149 = v347;
    v150 = __s;
    if (!*(v46 + 120))
    {
      goto LABEL_176;
    }

LABEL_192:
    v349 = 0;
    v352 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v344 = 0;
    v55 = 0;
    goto LABEL_16;
  }

  v51 = v341;
  v149 = v347;
  v150 = __s;
  if (v148 != 1 || !*(v46 + 120))
  {
    goto LABEL_192;
  }

LABEL_176:
  v151 = heap_Calloc(a1[1], 1, 8 * *(v46 + 20));
  if (!v151)
  {
    goto LABEL_2;
  }

  v55 = v151;
  v152 = heap_Calloc(a1[1], 1, 40);
  *v55 = v152;
  if (!v152)
  {
    goto LABEL_2;
  }

  *(*v55 + 1) = heap_Calloc(a1[1], 1, 48);
  v153 = *v55;
  if (!*(*v55 + 1))
  {
    goto LABEL_2;
  }

  *v153 = 0;
  *(v153 + 8) = 0;
  v154 = a1[1];
  v155 = cstdlib_strlen(__s1[0]);
  *(*(*v55 + 1) + 48 * **v55) = heap_Calloc(v154, 1, v155 + 1);
  v156 = *(*(*v55 + 1) + 48 * **v55);
  if (!v156)
  {
    goto LABEL_2;
  }

  cstdlib_strcpy(v156, __s1[0]);
  v157 = *v55;
  *v157 = **v55 + 1;
  v44 = crf_mde_utils_write_morphemes(a1, 0, 0, a12, a13, a14, a9, v158, a10, a11, v338, v149, v339, v157, v150, &v368);
  if ((v44 & 0x80000000) != 0)
  {
    v349 = 0;
    v352 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v344 = 0;
    v216 = 1;
    goto LABEL_295;
  }

  v349 = 0;
  v352 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v344 = 0;
  if (v368 == v362)
  {
    v159 = v362;
  }

  else
  {
    v159 = v331;
  }

  v358 = 1;
LABEL_185:
  *v337 = v159 - v339;
  v57 = "SUCCEEDED";
LABEL_17:
  log_OutText(a1[4], "FE_ONEWORD", 5, 0, "CRF MDE segmentation for token %s : %s", __s1[0], v57);
  crf_mde_seg_fv_dealloc(a1, v375);
  if (v369)
  {
    heap_Free(a1[1], v369);
    v369 = 0;
  }

  if (v50)
  {
    heap_Free(a1[1], v51);
  }

  if (v349)
  {
    for (k = 0; k != v349; ++k)
    {
      if (v54)
      {
        v59 = v54[k];
        if (v59)
        {
          heap_Free(a1[1], v59);
          v54[k] = 0;
        }
      }

      if (v53)
      {
        v60 = v53[k];
        if (v60)
        {
          heap_Free(a1[1], v60);
          v53[k] = 0;
        }
      }

      if (v52)
      {
        v61 = v52[k];
        if (v61)
        {
          heap_Free(a1[1], v61);
          v52[k] = 0;
        }
      }
    }

    if (v344)
    {
      heap_Free(a1[1], v344);
    }

    if (v54)
    {
      heap_Free(a1[1], v54);
    }

    if (v53)
    {
      heap_Free(a1[1], v53);
    }

    if (v52)
    {
      heap_Free(a1[1], v52);
    }
  }

  crf_mde_utils_dynstr_free(a1, __s1);
  if (v370)
  {
    heap_Free(a1[1], v370);
    v370 = 0;
  }

  if (v352)
  {
    heap_Free(a1[1], v352);
  }

  if (v354)
  {
    if (v358)
    {
      v62 = v358;
      v63 = v354;
      do
      {
        if (*v63)
        {
          heap_Free(a1[1], *v63);
          *v63 = 0;
        }

        ++v63;
        --v62;
      }

      while (v62);
    }

    heap_Free(a1[1], v354);
    heap_Free(a1[1], v346);
  }

  if (v56)
  {
    v64 = *(v46 + 10);
    if (v348 | (2 * v64))
    {
      v65 = 0;
      do
      {
        v66 = v65;
        v67 = v56[v65];
        if (v67)
        {
          heap_Free(a1[1], v67);
          v56[v66] = 0;
          v64 = *(v46 + 10);
        }

        v65 = v66 + 1;
      }

      while (v348 + 2 * v64 > (v66 + 1));
    }

    heap_Free(a1[1], v56);
  }

  v68 = v373;
  if (v373)
  {
    v69 = v372;
    if (v372)
    {
      v70 = 0;
      do
      {
        v71 = v70;
        v72 = *(v373 + 8 * v70);
        if (v72)
        {
          heap_Free(a1[1], v72);
          *(v373 + 8 * v71) = 0;
          v69 = v372;
        }

        v70 = v71 + 1;
      }

      while (v69 > (v71 + 1));
      v68 = v373;
    }

    heap_Free(a1[1], v68);
    v373 = 0;
  }

  if (v55)
  {
    if (*(v46 + 20))
    {
      v73 = 0;
      do
      {
        v74 = v73;
        v75 = v55[v73];
        if (*v75)
        {
          v76 = 0;
          do
          {
            heap_Free(a1[1], *(*(v75 + 1) + 48 * v76));
            *(*(v55[v74] + 1) + 48 * v76) = 0;
            v77 = v55[v74];
            v78 = *(v77 + 1);
            if (*(v78 + 48 * v76 + 8))
            {
              v79 = 0;
              v80 = 0;
              do
              {
                v81 = *(*(v78 + 48 * v76 + 16) + v79 + 8);
                if (v81)
                {
                  heap_Free(a1[1], v81);
                  *(*(*(v55[v74] + 1) + 48 * v76 + 16) + v79 + 8) = 0;
                  v77 = v55[v74];
                }

                v78 = *(v77 + 1);
                v82 = *(v78 + 48 * v76 + 16);
                v83 = *(v82 + v79 + 16);
                if (v83)
                {
                  heap_Free(a1[1], v83);
                  *(*(*(v55[v74] + 1) + 48 * v76 + 16) + v79 + 16) = 0;
                  v77 = v55[v74];
                  v78 = *(v77 + 1);
                  v82 = *(v78 + 48 * v76 + 16);
                }

                v84 = *(v82 + v79 + 24);
                if (v84)
                {
                  heap_Free(a1[1], v84);
                  *(*(*(v55[v74] + 1) + 48 * v76 + 16) + v79 + 24) = 0;
                  v77 = v55[v74];
                  v78 = *(v77 + 1);
                }

                ++v80;
                v79 += 32;
              }

              while (v80 < *(v78 + 48 * v76 + 8));
            }

            heap_Free(a1[1], *(v78 + 48 * v76 + 16));
            *(*(v55[v74] + 1) + 48 * v76++ + 16) = 0;
            v75 = v55[v74];
          }

          while (v76 < *v75);
        }

        heap_Free(a1[1], *(v75 + 1));
        *(v55[v74] + 1) = 0;
        crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, v55[v74] + 3, v55[v74][8]);
        heap_Free(a1[1], v55[v74]);
        v55[v74] = 0;
        v73 = v74 + 1;
      }

      while (*(v46 + 20) > (v74 + 1));
    }

    heap_Free(a1[1], v55);
  }

  return v44;
}