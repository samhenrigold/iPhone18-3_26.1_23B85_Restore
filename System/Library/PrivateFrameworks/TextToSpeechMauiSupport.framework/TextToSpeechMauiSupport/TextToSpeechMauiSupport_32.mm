uint64_t matchSTATPOSRULE_TRule(uint64_t a1, uint64_t a2, uint64_t **a3, unsigned int *a4, int *a5)
{
  v17 = 1;
  if (*(a1 + 8))
  {
    v10 = *a1;
    matched = logSTATPOSRULE_TRule(*(a2 + 100), (a2 + 80), (a2 + 96), *(a2 + 88), a1, a3);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(v10 + 32), "FE_POS", 5, 0, "       <%s>", *(a2 + 80));
    cstdlib_strcpy(*(a2 + 80), "");
  }

  else
  {
    matched = 0;
  }

  *a5 = 0;
  if (*a3)
  {
    matched = matchSTATPOSCONTEXT_TRule("LEFT", a1, a2, *a3, a4, &v17, &v16, 1);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v12 = v17;
    if (v17 != 1)
    {
      goto LABEL_15;
    }
  }

  v13 = a3[1];
  if (v13)
  {
    v17 = 0;
    matched = matchSTATPOSCONTEXT_TRule("CUR", a1, a2, v13, a4, &v17, &v16, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v12 = v17;
    if (v17 != 1)
    {
LABEL_15:
      *a5 = v12;
      return matched;
    }
  }

  v14 = a3[2];
  if (!v14)
  {
    v12 = 1;
    goto LABEL_15;
  }

  v17 = 0;
  matched = matchSTATPOSCONTEXT_TRule("RIGHT", a1, a2, v14, a4, &v17, &v16, 2);
  if ((matched & 0x80000000) == 0)
  {
    v12 = v17;
    goto LABEL_15;
  }

  return matched;
}

uint64_t getBrokerString_0(uint64_t a1, _BYTE *a2, size_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  __s = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__dst = 0u;
  v14 = 0u;
  *__s2 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((result & 0x80000000) == 0)
  {
    v7 = 0;
    if (cstdlib_strlen(__s))
    {
      do
      {
        v8 = v7;
        __s2[v7] = cstdlib_tolower(__s[v7]);
        ++v7;
        v9 = cstdlib_strlen(__s);
      }

      while (v8 <= 1 && v7 < v9);
    }

    __s2[v7] = 0;
    if (cstdlib_strcmp(__s, __s2))
    {
      v10 = __s2;
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __s = __s2;
    }

    else
    {
      v10 = __s;
    }

    cstdlib_strcpy(__dst, v10);
    cstdlib_strcat(__dst, "/");
    cstdlib_strcat(__dst, "statpos");
    return brokeraux_ComposeBrokerString(a1, __dst, 0, 1, __s, 0, 0, a2, a3);
  }

  return result;
}

uint64_t statpos_setParams(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "statposdetailtrace", &v4) & 0x80000000) == 0)
  {
    *(a2 + 8) = v4;
  }

  return 0;
}

uint64_t statPOSAddUniqueTagOffset2Word(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4 == -1)
  {
    return 0;
  }

  v5 = a5;
  v7 = a3;
  v10 = *a2;
  v11 = *a2 + 160 * a3;
  v12 = *(v11 + 72);
  if (!*(v11 + 72))
  {
LABEL_6:
    v16 = a3;
    if (*(v11 + 74))
    {
      if (v12 + 2 <= *(v11 + 74))
      {
        goto LABEL_17;
      }

      v17 = heap_Realloc(*(a1 + 8), *(v11 + 64), 24 * *(v11 + 74) + 144);
      if (v17)
      {
        v18 = *a2 + 160 * v7;
        *(v18 + 64) = v17;
        cstdlib_memset((v17 + 24 * *(v18 + 74)), 0, 0x78uLL);
        v10 = *a2;
        v19 = *a2 + 160 * v7;
        v20 = *(v19 + 74) + 5;
LABEL_16:
        *(v19 + 74) = v20;
LABEL_17:
        v24 = v10 + 160 * v16;
        v25 = *(v24 + 72);
        *(*(v24 + 64) + 24 * *(v24 + 72)) = a4;
        v26 = statPOSAddWordRec(a1, a2, v7, v25, v5);
        if ((v26 & 0x80000000) != 0)
        {
          return v26;
        }

        v21 = 0;
        ++*(*a2 + 160 * v16 + 72);
        return v21;
      }
    }

    else
    {
      v23 = heap_Calloc(*(a1 + 8), 1, 241);
      v10 = *a2;
      *(*a2 + 160 * v16 + 64) = v23;
      if (v23)
      {
        v19 = v10 + 160 * v16;
        v20 = 10;
        goto LABEL_16;
      }
    }

    v21 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v21;
  }

  v13 = 0;
  v14 = *(v11 + 64);
  while (1)
  {
    v15 = *v14;
    v14 += 6;
    if (v15 == a4)
    {
      break;
    }

    if (v12 == ++v13)
    {
      goto LABEL_6;
    }
  }

  return statPOSAddWordRec(a1, a2, a3, v13, a5);
}

uint64_t statPOSAddWordRec(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, __int16 a5)
{
  v8 = a3;
  v9 = *(*a2 + 160 * a3 + 64);
  v10 = a4;
  v11 = v9 + 24 * a4;
  if (!*(v11 + 18))
  {
    v16 = heap_Calloc(*(a1 + 8), 1, 121);
    v9 = *(*a2 + 160 * v8 + 64);
    *(v9 + 24 * v10 + 8) = v16;
    if (v16)
    {
      v14 = v9 + 24 * v10;
      v15 = 5;
      goto LABEL_7;
    }

LABEL_10:
    v21 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v21;
  }

  if (*(v11 + 16) + 2 <= *(v11 + 18))
  {
    goto LABEL_8;
  }

  v12 = heap_Realloc(*(a1 + 8), *(v11 + 8), 24 * *(v11 + 18) + 144);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  *(v13 + 8) = v12;
  cstdlib_memset((v12 + 24 * *(v13 + 18)), 0, 0x78uLL);
  v9 = *(*a2 + 160 * v8 + 64);
  v14 = v9 + 24 * v10;
  v15 = *(v14 + 18) + 5;
LABEL_7:
  *(v14 + 18) = v15;
LABEL_8:
  *(*(v9 + 24 * v10 + 8) + 24 * *(v9 + 24 * v10 + 16)) = a5;
  v17 = *(a1 + 8);
  v18 = cstdlib_strlen(*(a2 + 56));
  v19 = heap_Calloc(v17, 1, (v18 + 1));
  v20 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  *(*(v20 + 8) + 24 * *(v20 + 16) + 16) = v19;
  if (!v19)
  {
    goto LABEL_10;
  }

  cstdlib_strcpy(v19, *(a2 + 56));
  v21 = 0;
  v22 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  ++*(v22 + 16);
  return v21;
}

uint64_t statpos_initCache(uint64_t result)
{
  *(result + 72) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t statpos_freeCache(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 64);
    do
    {
      heap_Free(*(a1 + 8), *(v6 + v4));
      v6 = *(a2 + 64);
      *(v6 + v4) = 0;
      ++v5;
      v4 += 16;
    }

    while (v5 < *(a2 + 72));
  }

  heap_Free(*(a1 + 8), *(a2 + 64));
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return 0;
}

uint64_t statpos_retagPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _WORD *a6, uint64_t a7)
{
  v67 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v8 = *(a2 + 80);
  if (!v8)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "missing statpos data => must be included in CLC to train a POS model");
    return 2313166848;
  }

  v10 = a4;
  memset(v63, 0, 12);
  v13 = *(v8 + 16);
  if (*(v8 + 16))
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *(*(v8 + 8) + v14);
      WORD2(v63[0]) = v10;
      LODWORD(v63[0]) = 6;
      *(v63 + 6) = 0;
      v17 = *(a2 + 64);
      v65 = 0;
      matched = matchSTATPOSRULE_TRule(a2, a3, (v17 + 32 * v16 + 8), v63, &v65);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      v13 = v65;
      if (v65 == 1)
      {
        break;
      }

      ++v15;
      v8 = *(a2 + 80);
      v14 += 8;
      if (v15 >= *(v8 + 16))
      {
        goto LABEL_7;
      }
    }

    if (*(*(*(a2 + 80) + 8) + v14 + 4) == 1)
    {
      v45 = "(CACHEABLE)";
    }

    else
    {
      v45 = "(NONCACHEABLE)";
    }

    v46 = 32 * v16;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v16, v45, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v16))), v10, *(*(*a3 + 160 * v10 + 48) + 8 * *(a2 + 16)));
    *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v16));
    v47 = a1;
LABEL_77:
    v36 = statpos_doFurtherRetagging(v47, a2, a3, v10, a5, v16, &v64);
    if ((v36 & 0x80000000) == 0 && v64 != 1)
    {
      *a5 = *(*(a2 + 64) + v46);
    }

    return v36;
  }

LABEL_7:
  v59 = a5;
  v60 = a1;
  if (!*(a2 + 88))
  {
LABEL_35:
    v34 = *(a2 + 90);
    WORD2(v63[0]) = v10;
    LODWORD(v63[0]) = 6;
    *(v63 + 6) = 0;
    v35 = *(a2 + 64);
    v65 = 0;
    v36 = matchSTATPOSRULE_TRule(a2, a3, (v35 + 32 * v34 + 8), v63, &v65);
    if ((v36 & 0x80000000) != 0)
    {
      return v36;
    }

    if (v65 != 1)
    {
      if (!*(a2 + 104))
      {
        log_OutText(*(v60 + 32), "FE_POS", 5, 0, "ERROR? NO MS1 RETAGGING OF %s", *(a3 + 48));
      }

      return v36;
    }

    v37 = 32 * v34;
    log_OutText(*(v60 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v34, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v34))), v10, *(*(*a3 + 160 * v10 + 48) + 8 * *(a2 + 16)));
    *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v34));
    v38 = v60;
    v39 = a2;
    v40 = a3;
    v41 = v10;
    v42 = v59;
    v43 = v59;
    v44 = v34;
LABEL_71:
    v36 = statpos_doFurtherRetagging(v38, v39, v40, v41, v43, v44, &v64);
    if ((v36 & 0x80000000) == 0 && v64 != 1)
    {
      *v42 = *(*(a2 + 64) + v37);
    }

    return v36;
  }

  v19 = 0;
  while (**(a3 + 48) != *(*(a2 + 80) + 24 * v19))
  {
LABEL_34:
    if (++v19 >= *(a2 + 88))
    {
      goto LABEL_35;
    }
  }

  if (v13)
  {
    v20 = 0;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    do
    {
      v22 = *(a2 + 80) + 24 * v19;
      if (v20 >= *(v22 + 16))
      {
        break;
      }

      v23 = *(v22 + 8);
      if (*(v23 + v21 + 4))
      {
        break;
      }

      v24 = *(v23 + v21);
      WORD2(v63[0]) = v10;
      LODWORD(v63[0]) = 6;
      *(v63 + 6) = 0;
      v25 = *(a2 + 64);
      v65 = 0;
      matched = matchSTATPOSRULE_TRule(a2, a3, (v25 + 32 * v24 + 8), v63, &v65);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      if (v65 == 1)
      {
        if (*(*(*(a2 + 80) + 24 * v19 + 8) + v21 + 4) == 1)
        {
          v57 = "(CACHEABLE)";
        }

        else
        {
          v57 = "(NONCACHEABLE)";
        }

        v37 = 32 * v24;
        log_OutText(*(v60 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v24, v57, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v24))), v10, *(*(*a3 + 160 * v10 + 48) + 8 * *(a2 + 16)));
        *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v24));
        v38 = v60;
        v39 = a2;
        v40 = a3;
        v41 = v10;
        v42 = v59;
        v43 = v59;
        v44 = v24;
        goto LABEL_71;
      }

      ++v20;
      v21 += 8;
    }

    while (!v65);
    v20 = v20;
  }

  v65 = 0;
  if (*(a3 + 72))
  {
    statpos_getBracketlessString(__s1, *(a3 + 48));
    if (*(a3 + 72))
    {
      v26 = 0;
      v27 = 0;
      while (cstdlib_strcmp(__s1, *(*(a3 + 64) + v26)))
      {
        ++v27;
        v26 += 16;
        if (v27 >= *(a3 + 72))
        {
          goto LABEL_24;
        }
      }

      v16 = *(*(a3 + 64) + v26 + 8);
      v46 = 32 * v16;
      log_OutText(*(v60 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE FROM CACHE %d RETAG POS %s to %s on word[%d]=%s", *(*(a3 + 64) + v26 + 8), *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v16))), v10, *(*(*a3 + 160 * v10 + 48) + 8 * *(a2 + 16)));
      v48 = *(*(*(a2 + 80) + 24 * v19 + 8) + 8 * v20 + 4);
      a5 = v59;
      if (v48 != 1 || *a6 > 0xEu)
      {
        goto LABEL_76;
      }

      statpos_getBracketlessString(__s1, *(a3 + 48));
      if (*a6)
      {
        v49 = 0;
        v50 = 0;
        do
        {
          if (!cstdlib_strcmp(__s1, *(a7 + 8 * v49)))
          {
            v50 = 1;
          }

          ++v49;
          v51 = *a6;
        }

        while (v49 < v51);
        if (v50)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v51 = 0;
      }

      cstdlib_strncpy(*(a7 + 8 * v51), __s1, 0x10uLL);
      ++*a6;
LABEL_76:
      *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v16));
      v47 = v60;
      goto LABEL_77;
    }
  }

LABEL_24:
  v28 = -1;
  v29 = 4;
  while (1)
  {
    v30 = *(a2 + 80) + 24 * v19;
    if (++v28 >= *(v30 + 16))
    {
      v13 = 0;
      goto LABEL_34;
    }

    v31 = (*(v30 + 8) + v29);
    if (*v31 == 1)
    {
      break;
    }

    v13 = 0;
LABEL_31:
    v29 += 8;
    if (v13)
    {
      goto LABEL_34;
    }
  }

  v32 = *(v31 - 2);
  WORD2(v63[0]) = v10;
  LODWORD(v63[0]) = 6;
  *(v63 + 6) = 0;
  v33 = *(a2 + 64);
  v65 = 0;
  matched = matchSTATPOSRULE_TRule(a2, a3, (v33 + 32 * v32 + 8), v63, &v65);
  if ((matched & 0x80000000) != 0)
  {
    return matched;
  }

  v13 = v65;
  if (v65 != 1)
  {
    goto LABEL_31;
  }

  if (*(*(*(a2 + 80) + 24 * v19 + 8) + v29) == 1)
  {
    v52 = "(CACHEABLE)";
  }

  else
  {
    v52 = "(NONCACHEABLE)";
  }

  log_OutText(*(v60 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v32, v52, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v32))), v10, *(*(*a3 + 160 * v10 + 48) + 8 * *(a2 + 16)));
  v53 = v59;
  if (*(*(*(a2 + 80) + 24 * v19 + 8) + v29) == 1)
  {
    statpos_addToCache(v60, a3, v32);
    if (*a6 <= 0xEu)
    {
      statpos_getBracketlessString(__s1, *(a3 + 48));
      if (!*a6)
      {
        v56 = 0;
        goto LABEL_82;
      }

      v54 = 0;
      v55 = 0;
      do
      {
        if (!cstdlib_strcmp(__s1, *(a7 + 8 * v54)))
        {
          v55 = 1;
        }

        ++v54;
        v56 = *a6;
      }

      while (v54 < v56);
      v53 = v59;
      if (!v55)
      {
LABEL_82:
        cstdlib_strncpy(*(a7 + 8 * v56), __s1, 0x10uLL);
        ++*a6;
      }
    }
  }

  *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v32));
  v36 = statpos_doFurtherRetagging(v60, a2, a3, v10, v53, v32, &v64);
  if ((v36 & 0x80000000) == 0 && v64 != 1)
  {
    *v53 = *(*(a2 + 64) + 32 * v32);
  }

  return v36;
}

uint64_t statpos_doFurtherRetagging(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5, unsigned int a6, int *a7)
{
  v9 = a4;
  *a7 = 0;
  v13 = *(*a3 + 160 * a4 + 8);
  if (v13)
  {
    if (v13 != 1)
    {
      return 0;
    }

    v14 = *(a2 + 124);
  }

  else
  {
    v14 = *(a2 + 128);
  }

  if (v14 != 1)
  {
    return 0;
  }

  *&v24[2] = 0;
  if (!*(a2 + 56))
  {
    return 0;
  }

  v15 = 0;
  for (i = 0; i < *(a2 + 56); ++i)
  {
    v23 = v9;
    v22 = 6;
    *v24 = 0;
    v17 = *(a2 + 48);
    *a7 = 0;
    matched = matchSTATPOSRULE_TRule(a2, a3, (v17 + v15 + 8), &v22, a7);
    if ((matched & 0x80000000) != 0)
    {
      break;
    }

    if (*a7)
    {
      if (*a7 == 1)
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "RETAGGING MS1 %s to %s", (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * a6))), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v15))));
        v20 = *(*(a2 + 48) + v15);
        a3[6] = *(a2 + 296) + *(*(a2 + 304) + 4 * v20);
        *a5 = v20;
      }

      return matched;
    }

    v15 += 32;
  }

  return matched;
}

char *statpos_getBracketlessString(char *a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  if (v4 <= 0x10uLL)
  {
    v5 = v4;
  }

  else
  {
    v5 = 16;
  }

  result = cstdlib_strncpy(a1, __s, v5);
  if (v5)
  {
    v7 = 0;
    do
    {
      if (a1[v7] == 40)
      {
        a1[v7] = 0;
        v7 = v5;
      }

      ++v7;
    }

    while (v7 < v5);
  }

  return result;
}

char *statpos_addToCache(uint64_t a1, uint64_t a2, __int16 a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 74);
  if (!*(a2 + 74))
  {
    v7 = heap_Calloc(*(a1 + 8), 1, 801);
    *(a2 + 64) = v7;
    if (!v7)
    {
      goto LABEL_9;
    }

    v6 = 50;
    *(a2 + 74) = 50;
  }

  if (*(a2 + 72) + 1 < v6)
  {
    goto LABEL_7;
  }

  v8 = heap_Realloc(*(a1 + 8), *(a2 + 64), 16 * v6 + 320);
  if (v8)
  {
    *(a2 + 64) = v8;
    *(a2 + 74) += 20;
LABEL_7:
    statpos_getBracketlessString(__s, *(a2 + 48));
    v9 = cstdlib_strlen(__s);
    v10 = heap_Calloc(*(a1 + 8), 1, v9 + 1);
    *(*(a2 + 64) + 16 * *(a2 + 72)) = v10;
    if (!v10)
    {
      return log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    }

    result = cstdlib_strcpy(v10, __s);
    v12 = *(a2 + 72);
    *(*(a2 + 64) + 16 * v12 + 8) = a3;
    *(a2 + 72) = v12 + 1;
    return result;
  }

LABEL_9:
  v13 = *(a1 + 32);

  return log_OutPublic(v13, "FE_POS", 35000, 0);
}

uint64_t statpos_retagREFPOS(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *&v18[2] = 0;
  if (!*(a2 + 56))
  {
    return 0;
  }

  v8 = 0;
  for (i = 0; i < *(a2 + 56); ++i)
  {
    v17 = a4;
    v16 = 6;
    *v18 = 0;
    v10 = *(a2 + 48);
    v19 = 0;
    matched = matchSTATPOSRULE_TRule(a2, a3, (v10 + v8 + 8), &v16, &v19);
    if ((matched & 0x80000000) != 0)
    {
      break;
    }

    if (v19)
    {
      if (v19 == 1)
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "REFRETAG : FIRED RETAGGING RULE %d RETAG REF POS %s to %s on word[%d]=%s", i, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8))), a4, *(*(*a3 + 160 * a4 + 48) + 8 * *(a2 + 16)));
        v12 = *(a1 + 8);
        v13 = cstdlib_strlen((*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8))));
        v14 = heap_Calloc(v12, 1, (v13 + 1));
        *(*a3 + 160 * a4 + 112) = v14;
        if (v14)
        {
          cstdlib_strcpy(v14, (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8))));
        }

        else
        {
          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
          return 2313166858;
        }
      }

      return matched;
    }

    v8 += 32;
  }

  return matched;
}

uint64_t statpos_getPOSOffset(uint64_t a1, uint64_t a2, const char *a3, _DWORD *a4)
{
  v8 = 0;
  *a4 = -1;
  if (!*(a2 + 104))
  {
    return 0;
  }

  result = ssftmap_Find(*(a2 + 112), a3, &v8);
  if ((result & 0x1FFF) == 0x14)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "ERROR? NO LISTOFPOS RETAGGING OF %s", a3);
    return 0;
  }

  *a4 = *v8;
  return result;
}

uint64_t statpos_getStrSetting(uint64_t a1, char *__s1)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (cstdlib_strcmp(__s1, (*(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + v4)))))
  {
    ++v5;
    v4 += 8;
    if (v5 >= *(a1 + 40))
    {
      return 0;
    }
  }

  return *(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + v4 + 4));
}

uint64_t statpos_charCheck(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const char *a5)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v7 = 0;
  v8 = (a2 + a3);
  v9 = a4;
  while (1)
  {
    if (!cstdlib_strcmp(a5, (*(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + 8 * v7)))))
    {
      v10 = (*(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + 8 * v7 + 4)));
      v11 = cstdlib_strlen(v10);
      v12 = Utf8_LengthInUtf8chars(v10, v11);
      if (v12)
      {
        break;
      }
    }

LABEL_4:
    if (++v7 >= *(a1 + 40))
    {
      return 0;
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = v12;
  while (1)
  {
    v16 = &v10[v13];
    if (utf8_determineUTF8CharLength(*v16) >= a4 && !cstdlib_strncmp(&v10[v13], v8, v9))
    {
      return 1;
    }

    v13 += utf8_determineUTF8CharLength(*v16);
    if (++v14 >= v15)
    {
      goto LABEL_4;
    }
  }
}

uint64_t statpos_splitMSMappingRulesIntoTables(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v4 = a2;
  v6 = heap_Calloc(*(*a2 + 8), 1, (24 * *(a3 + 8)) | 1);
  *(v4 + 80) = v6;
  if (!v6 || (*(v4 + 88) = 655294464, cstdlib_strcpy(v6, "!"), *(*(v4 + 80) + 16) = 0, v7 = heap_Calloc(*(*v4 + 8), 1, (8 * *(a3 + 8)) | 1), v8 = *(v4 + 80), (*(v8 + 8) = v7) == 0))
  {
LABEL_85:
    v68 = 2313166858;
    v69 = *(*v4 + 32);
LABEL_104:
    log_OutPublic(v69, "FE_POS", 35000, 0, v80);
    return v68;
  }

  *(v4 + 88) = 1;
  if (!*(a3 + 8))
  {
    LODWORD(v44) = 1;
    goto LABEL_88;
  }

  v80 = a1;
  v81 = v4;
  v9 = 0;
  do
  {
    v10 = *a3 + 32 * v9;
    v12 = *(v10 + 8);
    v11 = v10 + 8;
    if (!v12)
    {
      v13 = *(v11 + 8);
      if (v13)
      {
        __dst[0] = 0;
        if (*(v13 + 8))
        {
          v14 = 0;
          v83 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v82 = v9;
          do
          {
            v18 = (*v13 + 6 * v14);
            if (*v18 == 3)
            {
              v17 = 1;
            }

            else
            {
              v16 = 1;
            }

            if (v17 == 1 && __dst[0] == 0)
            {
              v20 = (*(v4 + 256) + *(*(v4 + 264) + 4 * v18[1]));
              if (cstdlib_strcmp(v20, "\\S"))
              {
                if (*v20 == 94)
                {
                  v21 = cstdlib_strlen(v20);
                  if (v21 >= 2u)
                  {
                    v22 = 1;
                    cstdlib_strncpy(__dst, v20 + 1, 1uLL);
                    __dst[1] = 0;
                    v23 = v21;
                    do
                    {
                      v25 = *v20++;
                      v24 = v25;
                      if (v22 < v21 && v24 == 40)
                      {
                        v15 = 1;
                      }

                      ++v22;
                      --v23;
                    }

                    while (v23);
                    v4 = v81;
                  }

                  v9 = v82;
                }
              }

              else
              {
                *(v4 + 90) = v9;
                v83 = 1;
              }
            }

            ++v14;
          }

          while (v14 < *(v13 + 8));
          v28 = v16 != 1 && v15 != 1;
          if (v17 == 1 && __dst[0] - 65 <= 0x19)
          {
            v35 = 0;
            v36 = -1;
            while (1)
            {
              ++v36;
              v37 = *(v4 + 80);
              if (v36 >= *(v4 + 88))
              {
                break;
              }

              v38 = cstdlib_strcmp((v37 + v35), __dst);
              v35 += 24;
              if (!v38)
              {
                v39 = *(v4 + 80);
                goto LABEL_51;
              }
            }

            cstdlib_strcpy((v37 + 24 * *(v4 + 88)), __dst);
            *(*(v4 + 80) + 24 * *(v4 + 88) + 16) = 0;
            v40 = heap_Calloc(*(*v4 + 8), 1, (8 * *(a3 + 8)) | 1);
            v39 = *(v4 + 80);
            v36 = *(v4 + 88);
            *(v39 + 24 * v36 + 8) = v40;
            if (!v40)
            {
              goto LABEL_85;
            }

            *(v4 + 88) = v36 + 1;
LABEL_51:
            v41 = v39 + 24 * v36;
            v42 = *(v41 + 16);
            v31 = (v41 + 16);
            v32 = v42;
            v43 = *(v31 - 1) + 8 * v42;
            *v43 = v9;
            *(v43 + 4) = v28;
            goto LABEL_52;
          }

          if (v83)
          {
            goto LABEL_53;
          }
        }

        v30 = *(v4 + 80);
        v33 = *(v30 + 16);
        v31 = (v30 + 16);
        v32 = v33;
        v34 = *(v31 - 1) + 8 * v33;
        *v34 = v9;
        *(v34 + 4) = 0;
LABEL_52:
        *v31 = v32 + 1;
      }
    }

LABEL_53:
    ++v9;
  }

  while (v9 < *(a3 + 8));
  v44 = *(v4 + 88);
  v8 = *(v4 + 80);
  if (v44 < 2)
  {
    a1 = v80;
  }

  else
  {
    v45 = 1;
    a1 = v80;
    do
    {
      v46 = *(v8 + 24 * v45 + 16);
      if (*(v8 + 24 * v45 + 16))
      {
        v47 = 0;
        do
        {
          v48 = 0;
          do
          {
            if (v47 != v48)
            {
              v49 = *(v8 + 24 * v45 + 8);
              v50 = *(*a3 + 32 * *(v49 + 8 * v47) + 16);
              v51 = *(v50 + 8);
              if (*(v50 + 8))
              {
                v52 = 0;
                v53 = *(*a3 + 32 * *(v49 + 8 * v48) + 16);
                v54 = *(v53 + 8);
                v55 = v49 + 8 * v47;
                v56 = v49 + 8 * v48;
                do
                {
                  if (v54)
                  {
                    v57 = (*v50 + 6 * v52);
                    v58 = *v57;
                    v59 = v54;
                    v60 = 2;
                    do
                    {
                      if (v58 == 3 && v57[1] == *(*v53 + v60))
                      {
                        if (*(v55 + 4) == 1)
                        {
                          *(v55 + 4) = 0;
                        }

                        if (*(v56 + 4) == 1)
                        {
                          *(v56 + 4) = 0;
                        }
                      }

                      v60 += 6;
                      --v59;
                    }

                    while (v59);
                  }

                  ++v52;
                }

                while (v52 != v51);
              }
            }

            ++v48;
          }

          while (v48 != v46);
          ++v47;
        }

        while (v47 != v46);
      }

      ++v45;
    }

    while (v45 != v44);
    v61 = 1;
    do
    {
      if (*(v8 + 24 * v61 + 16))
      {
        v62 = 0;
        v63 = 0;
        v64 = 0;
        do
        {
          if (v62)
          {
            v65 = *(v8 + 24 * v61 + 8);
            if (!*(v65 + v62 + 4))
            {
              v66 = *(v65 + v62);
              cstdlib_memmove((v65 + 8 * v64 + 8), (v65 + 8 * v64), v62 - 8 * v64);
              v8 = *(v4 + 80);
              v67 = *(v8 + 24 * v61 + 8) + 8 * v64;
              *(v67 + 4) = 0;
              *v67 = v66;
              ++v64;
            }
          }

          ++v63;
          v62 += 8;
        }

        while (v63 < *(v8 + 24 * v61 + 16));
        LODWORD(v44) = *(v4 + 88);
      }

      ++v61;
    }

    while (v61 < v44);
  }

LABEL_88:
  v70 = heap_Realloc(*(*v4 + 8), v8, (24 * v44) | 1);
  if (!v70)
  {
LABEL_103:
    v68 = 2313166858;
    v69 = *(a1 + 32);
    goto LABEL_104;
  }

  v71 = v70;
  *(v4 + 80) = v70;
  if (!*(v4 + 88))
  {
    if (*(v4 + 90) == 9999)
    {
      goto LABEL_106;
    }

    return 0;
  }

  v72 = 0;
  v73 = 0;
  do
  {
    v74 = v71 + v72;
    if (*(v71 + v72 + 16))
    {
      v75 = heap_Realloc(*(*v4 + 8), *(v74 + 8), (8 * *(v71 + v72 + 16)) | 1);
      if (!v75)
      {
        goto LABEL_103;
      }
    }

    else
    {
      heap_Free(*(a1 + 8), *(v74 + 8));
      v75 = 0;
    }

    v71 = *(v4 + 80);
    *(v71 + v72 + 8) = v75;
    ++v73;
    v76 = *(v4 + 88);
    v72 += 24;
  }

  while (v73 < v76);
  if (*(v4 + 90) != 9999)
  {
    return 0;
  }

  if (*(v4 + 88))
  {
    v77 = 0;
    v78 = 0;
    do
    {
      if (*(v71 + v77 + 16))
      {
        heap_Free(*(a1 + 8), *(v71 + v77 + 8));
        v71 = *(v4 + 80);
        v76 = v71 + v77;
        *(v76 + 8) = 0;
        *(v76 + 16) = 0;
        LOWORD(v76) = *(v4 + 88);
      }

      ++v78;
      v77 += 24;
    }

    while (v78 < v76);
  }

LABEL_106:
  heap_Free(*(a1 + 8), v71);
  v68 = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  return v68;
}

uint64_t statpos_rules_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v117 = *MEMORY[0x277D85DE8];
  v109 = 0;
  v108 = 0;
  v106 = 0;
  *__s2 = 0;
  v104 = 0;
  __src = 0;
  memset(v116, 0, 128);
  v103 = 0;
  *a7 = a3;
  *(a7 + 188) = 5;
  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "loading MS StatPOS rules");
  BrokerString_0 = getBrokerString_0(a3, v116, 0x80uLL);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  BrokerString_0 = brk_DataOpenEx(*(a3 + 24), v116, 1, &v104);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  BrokerString_0 = brk_DataClose(*(a3 + 24), v104);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  BrokerString_0 = ssftriff_reader_ObjOpen(a1, a2, 0, v116, "PANP", 1031, &v109);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  v98 = a7 + 36;
  v99 = a4;
  while (1)
  {
    LODWORD(info_from_dct) = ssftriff_reader_OpenChunk(v109, __s2, &v106, &__src);
    if ((info_from_dct & 0x80000000) != 0)
    {
LABEL_68:
      if ((info_from_dct & 0x1FFF) == 0xA)
      {
        return 2313166858;
      }

      ssftriff_reader_ObjClose(v109);
      v109 = 0;
      if (*(a7 + 52))
      {
        v70 = 0;
        v71 = 0;
        do
        {
          BrokerString_0 = ssftmap_Insert(a7[14], a7[37] + *(a7[38] + 4 * *(a7[12] + v70)), a7[12] + v70);
          if ((BrokerString_0 & 0x80000000) != 0)
          {
            return BrokerString_0;
          }

          ++v71;
          v70 += 4;
        }

        while (v71 < *(a7 + 52));
      }

      *(a7 + 44) = 0;
      v72 = statpos_splitMSMappingRulesIntoTables(a3, a7, (a7 + 8));
      if ((v72 & 0x1FFF) == 0xA)
      {
        return 2313166858;
      }

      info_from_dct = v72;
      a7[2] = 0x2000100030000;
      *(a7 + 12) = 4;
      StrSetting = statpos_getStrSetting(a7, "POSsep");
      if (StrSetting)
      {
        v75 = *StrSetting;
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning : POSsep not defined in data file, using default '/'");
        v75 = 47;
      }

      *(a7 + 120) = v75;
      v76 = statpos_getStrSetting(a7, "HYPHEN_CHAR");
      if (!v76)
      {
        log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning : HYPHEN_CHAR not defined in data file, using default '-'");
        v76 = "-";
      }

      a7[20] = v76;
      v77 = statpos_getStrSetting(a7, "PUNCT_CHAR");
      if (v77)
      {
        v78 = v77;
      }

      else
      {
        v78 = "";
      }

      a7[21] = v78;
      v79 = statpos_getStrSetting(a7, "TERMPUNCT_CHAR");
      if (v79)
      {
        v80 = v79;
      }

      else
      {
        v80 = "";
      }

      a7[22] = v80;
      *(a7 + 31) = statpos_getStrSettingAsNumber(a7, "ApplyRetaggingToOOV") == 1;
      *(a7 + 32) = statpos_getStrSettingAsNumber(a7, "ApplyRetaggingToKnownAmbiguous") == 1;
      *(a7 + 38) = statpos_getStrSettingAsNumber(a7, "NOOOVMODEL") == 1;
      *(a7 + 46) = statpos_getStrSettingAsNumber(a7, "DOMSMAPPINGBEFORELISTOFPOS") == 1;
      *(a7 + 47) = statpos_getStrSettingAsNumber(a7, "ReEstimateEachWord") == 1;
      v81 = statpos_getStrSetting(a7, "POITOPOS_ns");
      a7[42] = v81;
      if (v81)
      {
        v82 = statpos_format_POI_param(a3, v81, a7 + 42);
        if ((v82 & 0x80000000) != 0)
        {
          info_from_dct = v82;
          if ((v82 & 0x1FFF) == 0xA)
          {
            a7[42] = 0;
          }

          return info_from_dct;
        }

        info_from_dct = 0;
      }

      v83 = statpos_getStrSetting(a7, "POITOPOS_nt");
      a7[43] = v83;
      if (v83)
      {
        v84 = statpos_format_POI_param(a3, v83, a7 + 43);
        if ((v84 & 0x80000000) != 0)
        {
          info_from_dct = v84;
          if ((v84 & 0x1FFF) == 0xA)
          {
            a7[43] = 0;
          }

          return info_from_dct;
        }

        info_from_dct = 0;
      }

      v85 = statpos_getStrSetting(a7, "POITOPOS_nz");
      a7[44] = v85;
      if (v85)
      {
        v86 = statpos_format_POI_param(a3, v85, a7 + 44);
        if ((v86 & 0x80000000) != 0)
        {
          info_from_dct = v86;
          if ((v86 & 0x1FFF) == 0xA)
          {
            a7[44] = 0;
          }

          return info_from_dct;
        }

        info_from_dct = 0;
      }

      v87 = statpos_getStrSetting(a7, "POITOPOS_nx");
      a7[45] = v87;
      if (v87)
      {
        v88 = statpos_format_POI_param(a3, v87, a7 + 45);
        if ((v88 & 0x80000000) != 0)
        {
          info_from_dct = v88;
          if ((v88 & 0x1FFF) == 0xA)
          {
            a7[45] = 0;
          }

          return info_from_dct;
        }

        info_from_dct = 0;
      }

      v89 = statpos_getStrSetting(a7, "POITOPOS_nr");
      a7[46] = v89;
      if (v89)
      {
        v90 = statpos_format_POI_param(a3, v89, a7 + 46);
        if ((v90 & 0x80000000) != 0)
        {
          info_from_dct = v90;
          if ((v90 & 0x1FFF) == 0xA)
          {
            a7[46] = 0;
          }

          return info_from_dct;
        }

        info_from_dct = 0;
      }

      *(a7 + 34) = statpos_getStrSettingAsNumber(a7, "lexMismatchUseStringMatch") == 1;
      StrSettingAsNumber = statpos_getStrSettingAsNumber(a7, "mapTagsetFromDctMappingFile");
      *(a7 + 33) = StrSettingAsNumber == 1;
      if (StrSettingAsNumber == 1)
      {
        info_from_dct = statpos_get_info_from_dct(a3, a4, a5, a6, "fecfg", "mde_tag_mappings_dic", &v103, 0, "STR");
        if ((info_from_dct & 0x80000000) != 0)
        {
          return info_from_dct;
        }

        if (v103)
        {
          v102 = 0;
          info_from_dct = (*(a6 + 72))(a4, a5, v103, &v102);
          if ((info_from_dct & 0x80000000) != 0)
          {
            goto LABEL_137;
          }

          if (v102)
          {
            *&__c[1] = 0;
            __c[0] = 0;
            v115 = 0;
            v114 = 0u;
            __b = 0u;
            cstdlib_memset(&__b, 0, 0x28uLL);
            *&__b = ssftmap_ElemCopyString;
            *(&v114 + 1) = ssftmap_ElemCopyString;
            *(&__b + 1) = ssftmap_ElemFreeString;
            v115 = ssftmap_ElemFreeString;
            *&v114 = ssftmap_ElemCompareKeysString;
            v92 = *(*a7 + 8);
            __dst = __b;
            v111 = v114;
            v112 = ssftmap_ElemFreeString;
            info_from_dct = ssftmap_ObjOpen(v92, 0, &__dst, a7 + 18);
            if ((info_from_dct & 0x80000000) != 0)
            {
              goto LABEL_137;
            }

            if (*(a7 + 52))
            {
              v93 = 0;
              do
              {
                v101 = -1;
                info_from_dct = (*(a6 + 96))(v99, a5, v103, a7[37] + *(a7[38] + 4 * *(a7[12] + 4 * v93)), &__c[1], &v101, __c);
                if ((info_from_dct & 0x80000000) != 0)
                {
                  return info_from_dct;
                }

                if (v101 == 1)
                {
                  v94 = cstdlib_strchr(**&__c[1], __c[0]);
                  if (v94)
                  {
                    *v94 = 0;
                  }

                  info_from_dct = ssftmap_Insert(a7[18], a7[37] + *(a7[38] + 4 * *(a7[12] + 4 * v93)), **&__c[1]);
                  if ((info_from_dct & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "POS mapping %s->%s", (a7[37] + *(a7[38] + 4 * *(a7[12] + 4 * v93))), **&__c[1]);
                }
              }

              while (++v93 < *(a7 + 52));
            }
          }

          else
          {
            log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning: mde_tag_mappings dictionary %s does not exist");
          }
        }

        else
        {
          log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning: mde_tag_mappings dictionary does not exist");
        }
      }

      if (a7[18])
      {
        v95 = 0;
        while (1)
        {
          v96 = heap_Calloc(*(a3 + 8), 1, 32);
          a7[v95 + 48] = v96;
          if (!v96)
          {
            break;
          }

          if (++v95 == 32)
          {
            goto LABEL_136;
          }
        }

        log_OutPublic(*(a3 + 32), "FE_POS", 35000, 0);
        return 2313166858;
      }

LABEL_136:
      log_OutText(*(a3 + 32), "FE_POS", 5, 0, "statpos data file : ambigPOSSep=%c ApplyRetaggingToOOV=%d ApplyRetaggingToKnownAmbiguous=%d NOOOVMODEL=%d ReEstimateEachWord=%d, poi_ns=%s,poi_nt=%s,poi_nz=%s,poi_nx=%s,poi_nr=%s", *(a7 + 120), *(a7 + 31), *(a7 + 32), *(a7 + 38), *(a7 + 47), a7[42], a7[43], a7[44], a7[45], a7[46]);
LABEL_137:
      if (v103)
      {
        heap_Free(*(a3 + 8), v103);
      }

      return info_from_dct;
    }

    if (!cstdlib_strcmp("CFIG", __s2))
    {
      v27 = __src;
      cstdlib_memcpy(a7 + 10, __src, 2uLL);
      cstdlib_memcpy(a7 + 12, v27 + 2, 2uLL);
      cstdlib_memcpy(a7 + 14, v27 + 4, 2uLL);
LABEL_23:
      LODWORD(info_from_dct) = 0;
      goto LABEL_41;
    }

    if (!cstdlib_strcmp("STSE", __s2))
    {
      v28 = __src;
      cstdlib_memcpy(a7 + 5, __src, 2uLL);
      v29 = heap_Calloc(*(*a7 + 8), 1, (8 * *(a7 + 20)) | 1);
      a7[4] = v29;
      if (!v29)
      {
        goto LABEL_77;
      }

      if (*(a7 + 20))
      {
        v30 = 0;
        v31 = 4;
        v32 = 2;
        do
        {
          cstdlib_memcpy((a7[4] + v31 - 4), &v28[v32], 4uLL);
          v33 = v32 + 4;
          cstdlib_memcpy((a7[4] + v31), &v28[v33], 4uLL);
          v32 = v33 + 4;
          ++v30;
          v31 += 8;
        }

        while (v30 < *(a7 + 20));
LABEL_40:
        LODWORD(info_from_dct) = 0;
        a4 = v99;
        goto LABEL_41;
      }

      goto LABEL_23;
    }

    if (!cstdlib_strcmp("RTAG", __s2))
    {
      break;
    }

    if (!cstdlib_strcmp("MRTG", __s2))
    {
      v39 = __src;
      cstdlib_memcpy(a7 + 9, __src, 2uLL);
      LODWORD(__b) = 2;
      v40 = heap_Calloc(*(*a7 + 8), 1, (32 * *(a7 + 36)) | 1);
      a7[8] = v40;
      if (!v40)
      {
        goto LABEL_77;
      }

      if (*(a7 + 36))
      {
        v41 = 0;
        v42 = 8;
        while (1)
        {
          v43 = __b;
          cstdlib_memcpy((a7[8] + v42 - 8), &v39[__b], 4uLL);
          LODWORD(__b) = v43 + 4;
          BrokerString_0 = readRULE_0(*a7, v39, &__b, (a7[8] + v42));
          if ((BrokerString_0 & 0x80000000) != 0)
          {
            return BrokerString_0;
          }

          ++v41;
          v42 += 32;
          if (v41 >= *(a7 + 36))
          {
            goto LABEL_40;
          }
        }
      }

      goto LABEL_40;
    }

    if (cstdlib_strcmp("LISP", __s2))
    {
      if (!cstdlib_strcmp("REGX", __s2))
      {
        v16 = v109;
        v54 = __src;
        *&__b = __src;
        LODWORD(__dst) = 0;
        cstdlib_memcpy(a7 + 26, __src, 4uLL);
        v55 = 4;
        if (*(a7 + 52))
        {
          cstdlib_memcpy(&__dst, v54 + 4, 4uLL);
          v56 = (__dst + 8);
          a7[27] = &v54[v56];
          v55 = (*(a7 + 52) + v56);
        }

        cstdlib_memcpy(a7 + 29, &v54[v55], 2uLL);
        v57 = heap_Calloc(*(*a7 + 8), 1, (4 * *(a7 + 116)) | 1);
        a7[28] = v57;
        if (!v57)
        {
          goto LABEL_77;
        }

        v97 = a5;
        v21 = a6;
        if (*(a7 + 116))
        {
          v58 = 0;
          v59 = 0;
          v60 = v55 + 2;
          do
          {
            v61 = v60;
            cstdlib_memcpy((a7[28] + v58), &v54[v60], 4uLL);
            v60 = v61 + 4;
            ++v59;
            v58 += 4;
          }

          while (v59 < *(a7 + 116));
        }

        v26 = a7 + 30;
        goto LABEL_66;
      }

      if (!cstdlib_strcmp("STRS", __s2))
      {
        v16 = v109;
        v62 = __src;
        *&__b = __src;
        LODWORD(__dst) = 0;
        cstdlib_memcpy(v98, __src, 4uLL);
        v63 = 4;
        if (*v98)
        {
          cstdlib_memcpy(&__dst, v62 + 4, 4uLL);
          v64 = (__dst + 8);
          a7[37] = &v62[v64];
          v63 = (*(a7 + 72) + v64);
        }

        cstdlib_memcpy(a7 + 39, &v62[v63], 2uLL);
        v65 = heap_Calloc(*(*a7 + 8), 1, (4 * *(a7 + 156)) | 1);
        a7[38] = v65;
        if (!v65)
        {
          goto LABEL_77;
        }

        v97 = a5;
        v21 = a6;
        if (*(a7 + 156))
        {
          v66 = 0;
          v67 = 0;
          v68 = v63 + 2;
          do
          {
            v69 = v68;
            cstdlib_memcpy((a7[38] + v66), &v62[v68], 4uLL);
            v68 = v69 + 4;
            ++v67;
            v66 += 4;
          }

          while (v67 < *(a7 + 156));
        }

        v26 = a7 + 41;
        goto LABEL_66;
      }

      if (!cstdlib_strcmp("REST", __s2))
      {
        v16 = v109;
        v17 = __src;
        *&__b = __src;
        LODWORD(__dst) = 0;
        cstdlib_memcpy(a7 + 31, __src, 4uLL);
        v18 = 4;
        if (*(a7 + 62))
        {
          cstdlib_memcpy(&__dst, v17 + 4, 4uLL);
          v19 = (__dst + 8);
          a7[32] = &v17[v19];
          v18 = (*(a7 + 62) + v19);
        }

        cstdlib_memcpy(a7 + 34, &v17[v18], 2uLL);
        v20 = heap_Calloc(*(*a7 + 8), 1, (4 * *(a7 + 136)) | 1);
        a7[33] = v20;
        if (!v20)
        {
          goto LABEL_77;
        }

        v97 = a5;
        v21 = a6;
        if (*(a7 + 136))
        {
          v22 = 0;
          v23 = 0;
          v24 = v18 + 2;
          do
          {
            v25 = v24;
            cstdlib_memcpy((a7[33] + v22), &v17[v24], 4uLL);
            v24 = v25 + 4;
            ++v23;
            v22 += 4;
          }

          while (v23 < *(a7 + 136));
        }

        v26 = a7 + 35;
LABEL_66:
        info_from_dct = ssftriff_reader_DetachChunkData(v16, v26, &__b);
        a6 = v21;
        a5 = v97;
        a4 = v99;
        if ((info_from_dct & 0x80000000) != 0)
        {
          return info_from_dct;
        }
      }
    }

    else
    {
      v45 = __src;
      cstdlib_memcpy(a7 + 13, __src, 2uLL);
      if (!*(a7 + 52))
      {
        goto LABEL_23;
      }

      v115 = 0;
      v114 = 0u;
      __b = 0u;
      cstdlib_memset(&__b, 0, 0x28uLL);
      *&__b = ssftmap_ElemCopyString;
      *(&__b + 1) = ssftmap_ElemFreeString;
      *(&v114 + 1) = loc_CopyValue;
      v115 = loc_FreeValue;
      *&v114 = ssftmap_ElemCompareKeysString;
      v46 = *(*a7 + 8);
      __dst = __b;
      v111 = v114;
      v112 = loc_FreeValue;
      info_from_dct = ssftmap_ObjOpen(v46, 0, &__dst, a7 + 14);
      if ((info_from_dct & 0x80000000) != 0)
      {
        return info_from_dct;
      }

      v47 = heap_Calloc(*(*a7 + 8), 1, (4 * *(a7 + 52)) | 1);
      a7[12] = v47;
      if (!v47)
      {
LABEL_77:
        info_from_dct = 2313166858;
        log_OutPublic(*(*a7 + 32), "FE_POS", 35000, 0);
        return info_from_dct;
      }

      if (*(a7 + 52))
      {
        v48 = a5;
        v49 = a6;
        v50 = 0;
        v51 = 0;
        v52 = 2;
        do
        {
          v53 = v52;
          cstdlib_memcpy((a7[12] + v50), &v45[v52], 4uLL);
          v52 = v53 + 4;
          ++v51;
          v50 += 4;
        }

        while (v51 < *(a7 + 52));
        a6 = v49;
        a5 = v48;
        a4 = v99;
      }
    }

LABEL_41:
    v44 = ssftriff_reader_CloseChunk(v109);
    if (v44 < 0)
    {
      LODWORD(info_from_dct) = v44;
    }

    if ((info_from_dct & 0x80000000) != 0)
    {
      goto LABEL_68;
    }
  }

  v34 = __src;
  cstdlib_memcpy(a7 + 7, __src, 2uLL);
  LODWORD(__b) = 2;
  v35 = heap_Calloc(*(*a7 + 8), 1, (32 * *(a7 + 28)) | 1);
  a7[6] = v35;
  if (!v35)
  {
    goto LABEL_77;
  }

  if (!*(a7 + 28))
  {
    goto LABEL_40;
  }

  v36 = 0;
  v37 = 8;
  while (1)
  {
    v38 = __b;
    cstdlib_memcpy((a7[6] + v37 - 8), &v34[__b], 4uLL);
    LODWORD(__b) = v38 + 4;
    BrokerString_0 = readRULE_0(*a7, v34, &__b, (a7[6] + v37));
    if ((BrokerString_0 & 0x80000000) != 0)
    {
      return BrokerString_0;
    }

    ++v36;
    v37 += 32;
    if (v36 >= *(a7 + 28))
    {
      goto LABEL_40;
    }
  }
}

uint64_t statpos_getStrSettingAsNumber(uint64_t a1, char *__s1)
{
  if (*(a1 + 40))
  {
    v4 = 0;
    v5 = 0;
    while (cstdlib_strcmp(__s1, (*(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + v4)))))
    {
      ++v5;
      v4 += 8;
      if (v5 >= *(a1 + 40))
      {
        goto LABEL_5;
      }
    }

    v7 = (*(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + v4 + 4)));

    return cstdlib_atoi(v7);
  }

  else
  {
LABEL_5:
    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "Warning : key=%s not defined, setting to 0", __s1);
    return 0;
  }
}

uint64_t statpos_format_POI_param(uint64_t a1, char *__s, char **a3)
{
  v4 = __s;
  v6 = cstdlib_strlen(__s);
  v7 = *(a1 + 8);
  v8 = cstdlib_strlen(v4);
  v9 = heap_Calloc(v7, 1, v8 + 3);
  if (v9)
  {
    v10 = v9;
    if (v6)
    {
      cstdlib_strcpy(v9, ",");
      v11 = 1;
      v12 = 1;
      while (1)
      {
        if (v12)
        {
          v13 = v12;
          if (v10[v12 - 1] == 44 && *v4 == 44)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v13 = 0;
        }

        v10[v13] = *v4;
        ++v12;
LABEL_10:
        ++v4;
        if (v6 <= v11++)
        {
          v10[v12] = 0;
          cstdlib_strcat(v10, ",");
          goto LABEL_14;
        }
      }
    }

    *v9 = 0;
LABEL_14:
    result = 0;
    *a3 = v10;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  return result;
}

uint64_t readRULE_0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  result = readCONTEXT_1(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    result = readCONTEXT_1(a1, a2, a3, a4 + 1);
    if ((result & 0x80000000) == 0)
    {

      return readCONTEXT_1(a1, a2, a3, a4 + 2);
    }
  }

  return result;
}

uint64_t readCONTEXT_1(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  __dst = 0;
  cstdlib_memcpy(&__dst, (a2 + *a3), 2uLL);
  *a3 += 2;
  if (!__dst)
  {
    v17 = 0;
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v8 = heap_Calloc(*(a1 + 8), 1, 17);
  v9 = v8;
  if (!v8)
  {
    v17 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    goto LABEL_14;
  }

  v10 = __dst;
  *(v8 + 8) = __dst;
  v11 = heap_Calloc(*(a1 + 8), 1, (6 * v10) | 1);
  *v9 = v11;
  if (!v11)
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    if (*v9)
    {
      heap_Free(*(a1 + 8), *v9);
    }

    v17 = 2313166858;
    heap_Free(*(a1 + 8), v9);
    goto LABEL_13;
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
LABEL_14:
  *a4 = v9;
  return v17;
}

uint64_t _statpos_char_check(char *a1, const char *a2, unsigned int a3)
{
  v6 = cstdlib_strlen(a1);
  v7 = Utf8_LengthInUtf8chars(a1, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = v7;
  while (1)
  {
    v11 = &a1[v8];
    v12 = utf8_determineUTF8CharLength(*v11);
    if (v12 >= a3 && !cstdlib_strncmp(&a1[v8], a2, v12))
    {
      break;
    }

    v8 += utf8_determineUTF8CharLength(*v11);
    if (++v9 >= v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t statpos_fv_new(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 16 * a2);
  *a3 = v6;
  if (!v6)
  {
LABEL_7:
    v10 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v10;
  }

  *(a3 + 3) = a2;
  if (a2)
  {
    v7 = 0;
    do
    {
      v8 = heap_Calloc(*(a1 + 8), 1, 65);
      v9 = *a3;
      *(*a3 + v7) = v8;
      if (!v8)
      {
        goto LABEL_7;
      }

      *(v9 + v7 + 8) = 65;
      cstdlib_strcpy(v8, "=");
      v7 += 16;
    }

    while (16 * a2 != v7);
  }

  v10 = 0;
  *(a3 + 2) = a2;
  return v10;
}

void *statpos_fv_dealloc(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      v5 = *(a2 + 8);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          if (*(v3 + v6))
          {
            heap_Free(v4[1], *(v3 + v6));
            v3 = *a2;
            *(*a2 + v6) = 0;
            v5 = *(a2 + 8);
          }

          v6 += 16;
        }
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t statpos_fv_clear(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      cstdlib_strcpy(*(*a1 + v2), "=");
      ++v3;
      v2 += 16;
    }

    while (v3 < *(a1 + 8));
  }

  return 0;
}

uint64_t statpos_fv_add(uint64_t a1, void *a2, unsigned int a3, char *__s, char *a5, uint64_t a6)
{
  if (a6)
  {
    v11 = cstdlib_strlen(a5);
    if (*(a6 + 1336))
    {
      v12 = v11;
      v13 = 0;
      while (1)
      {
        v14 = v13;
        if (!cstdlib_strncmp(*(*(a6 + 1328) + 16 * v13), *(*(a6 + 1312) + 8 * a3), v12))
        {
          break;
        }

        v13 = v14 + 1;
        if (*(a6 + 1336) <= (v14 + 1))
        {
          goto LABEL_21;
        }
      }

      v15 = cstdlib_strlen(*(*(a6 + 1328) + 16 * v14 + 8));
      v16 = cstdlib_strlen(__s);
      v17 = *(*(a6 + 1328) + 16 * v14 + 8);
      v18 = cstdlib_strstr(v17, __s);
      if (v18)
      {
        v19 = v15;
        v20 = &v17[v15];
        while (v18 != v17 || v19 != v16 && (v19 <= v16 + 1 || v18[v16] != 32))
        {
          if (v18 > v17)
          {
            v21 = &v18[v16];
            if (v20 > (v21 + 1) && *v21 == 32)
            {
              if (*(v18 - 1) == 32)
              {
                break;
              }
            }

            else if (v20 == v21)
            {
              break;
            }
          }

          v18 = cstdlib_strstr(&v18[v16], __s);
          if (!v18)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        cstdlib_strcpy(__s, "=");
      }
    }
  }

LABEL_21:
  v22 = cstdlib_strlen(__s);
  v23 = *a2 + 16 * a3;
  if (*(v23 + 8) > v22)
  {
    v24 = *v23;
LABEL_25:
    cstdlib_strcpy(v24, __s);
    return 0;
  }

  v25 = v22 + 1;
  v24 = heap_Realloc(*(a1 + 8), *v23, v25);
  if (v24)
  {
    v26 = *a2 + 16 * a3;
    *v26 = v24;
    *(v26 + 8) = v25;
    goto LABEL_25;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t statpos_get_features(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8)
{
  if (a6)
  {
    v13 = 0;
    v14 = a6;
    while (2)
    {
      v15 = &byte_287EEC3F0;
      v16 = "PREVPOS";
      while (cstdlib_strcmp(*(a5 + 8 * v13), v16))
      {
        v16 = *(v15 + 1);
        v15 += 24;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      result = (*(v15 - 1))(a1, a2, a3, a4, *v15, *(a2 + 128));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statpos_fv_add(a1, a7, v13, *(a2 + 128), *(a5 + 8 * v13), a8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_9:
      if (++v13 != v14)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t statpos_dumpFeatureVectorAndResult(uint64_t a1, int a2, const char **a3, unsigned __int16 *a4, char *__s, char *a6, uint64_t a7, void *a8, char *a9, int a10, char *a11, char *__s1)
{
  if (!a2)
  {
    return 0;
  }

  v18 = statPOS_add2Str(a1, a3, a4, __s);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, a6);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  if (*(a7 + 1296) >= 2u)
  {
    v19 = 0;
    do
    {
      v18 = statPOS_add2Str(a1, a3, a4, *(*a8 + 16 * v19));
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v18 = statPOS_add2Str(a1, a3, a4, " ");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }
    }

    while (*(a7 + 1296) - 1 > ++v19);
  }

  if (!a11)
  {
    v18 = statPOS_add2Str(a1, a3, a4, "PRED=");
    if ((v18 & 0x80000000) == 0)
    {
      v18 = statPOS_add2Str(a1, a3, a4, a9);
      if ((v18 & 0x80000000) == 0)
      {
        v21 = " ";
LABEL_26:
        v20 = statPOS_add2Str(a1, a3, a4, v21);
        if ((v20 & 0x80000000) != 0)
        {
          return v20;
        }

        goto LABEL_27;
      }
    }

    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, "REF=");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, a11);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, "PRED=");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, a9);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v20 = statPOS_add2Str(a1, a3, a4, " ");
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  if (cstdlib_strcmp(a11, a9) && (!__s1 || cstdlib_strcmp(__s1, a9)))
  {
    v21 = "*TAGERROR ";
    goto LABEL_26;
  }

LABEL_27:
  if (a10 || (v20 = statPOS_add2Str(a1, a3, a4, "*BADTAG "), (v20 & 0x80000000) == 0))
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", *a3);
    cstdlib_strcpy(*a3, "");
  }

  return v20;
}

uint64_t initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
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

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

char *clearFeatureVector(char *result, unsigned int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2;
    do
    {
      v4 = *v2++;
      result = cstdlib_strcpy(v4, "=");
      --v3;
    }

    while (v3);
  }

  return result;
}

void *freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
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
        *a2 = 0;
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t statpos_get_features_for_igtree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6;
    v8 = 16 * v6;
    if (cstdlib_strlen(*(*a3 + v8)) <= 0x40)
    {
      v10 = *(a2 + 8 * v7);
      goto LABEL_7;
    }

    v9 = cstdlib_strlen(*(*a3 + v8));
    v10 = heap_Realloc(*(a1 + 8), *(a2 + 8 * v7), v9 + 1);
    if (!v10)
    {
      break;
    }

    *(a2 + 8 * v7) = v10;
LABEL_7:
    cstdlib_strcpy(v10, *(*a3 + v8));
    v6 = v7 + 1;
    if (*(a3 + 8) <= (v7 + 1))
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t statpos_fe_prdctd_pos(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 == -1)
  {
    v7 = "SB";
  }

  else if ((v6 & 0x80000000) != 0 || v6 >= *(a2 + 8))
  {
    v7 = "=";
  }

  else
  {
    v7 = *(*a2 + 160 * v6 + 88);
  }

  cstdlib_strcpy(__dst, v7);
  return 0;
}

uint64_t statpos_fe_pssbl_tags(int a1, uint64_t a2, uint64_t a3, int a4, int a5, char *__dst)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a5 + a4;
  if (a5 + a4 < 0 || (v9 = *(*a2 + 160 * v7 + 80)) == 0 || v7 >= *(a2 + 8))
  {
    v9 = "=";
    goto LABEL_14;
  }

  if (!*(a3 + 144))
  {
LABEL_14:
    cstdlib_strcpy(__dst, v9);
    return 0;
  }

  v24 = 0;
  v23 = 0;
  v11 = __dsta;
  cstdlib_strcpy(__dsta, v9);
  __s2[0] = *(a3 + 120);
  __s2[1] = 0;
  v12 = cstdlib_strchr(__dsta, 47);
  if (v12)
  {
    v13 = v12;
    v11 = __dsta;
    do
    {
      *v13 = 0;
      if ((ssftmap_Find(*(a3 + 144), v11, &v24) & 0x1FFF) == 0x14)
      {
        v14 = a3 + 384;
        v15 = v11;
      }

      else
      {
        v15 = v24;
        v14 = a3 + 384;
      }

      statpos_getPOSTags(v15, v14, &v23);
      v11 = v13 + 1;
      v13 = cstdlib_strchr(v13 + 1, 47);
    }

    while (v13);
  }

  if ((ssftmap_Find(*(a3 + 144), v11, &v24) & 0x1FFF) == 0x14)
  {
    v16 = a3 + 384;
    v17 = v11;
  }

  else
  {
    v17 = v24;
    v16 = a3 + 384;
  }

  statpos_getPOSTags(v17, v16, &v23);
  v19 = v23;
  ssft_qsort(a3 + 384, v23, 8, string_cmp_0);
  cstdlib_strcpy(__dst, *(a3 + 384));
  if (v19 >= 2)
  {
    v20 = v19 - 1;
    v21 = (a3 + 392);
    do
    {
      cstdlib_strcat(__dst, __s2);
      v22 = *v21++;
      cstdlib_strcat(__dst, v22);
      --v20;
    }

    while (v20);
  }

  return 0;
}

uint64_t statpos_fe_word(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v7 = "=";
  }

  else
  {
    v7 = **(*a2 + 160 * v6 + 48);
  }

  cstdlib_strcpy(__dst, v7);
  return 0;
}

uint64_t statpos_fe_cword(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v8 = "=";
  }

  else
  {
    v7 = *a2 + 160 * v6;
    v8 = *(v7 + 120);
    if (!v8)
    {
      v8 = **(v7 + 48);
    }
  }

  cstdlib_strcpy(__dst, v8);
  return 0;
}

uint64_t statpos_fe_token(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8) || (v7 = *(*(*a2 + 160 * v6 + 48) + 16)) == 0)
  {
    v7 = "=";
  }

  cstdlib_strcpy(__dst, v7);
  return 0;
}

uint64_t statpos_fe_ends_in_aposs(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v10 = "=";
  }

  else
  {
    v8 = **(*a2 + 160 * v7 + 48);
    v9 = cstdlib_strlen(v8);
    if (v9 < 3 || cstdlib_strcmp("'s", &v8[v9 - 2]))
    {
      v10 = "0";
    }

    else
    {
      v10 = "1";
    }
  }

  cstdlib_strcpy(a6, v10);
  return 0;
}

uint64_t statpos_fe_wrd_len(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    cstdlib_strcpy(__dst, "=");
  }

  else
  {
    v8 = Utf8_Utf8NbrOfSymbols(**(*a2 + 160 * v7 + 48));
    sprintf(__dst, "%d", v8 - 1);
  }

  return 0;
}

uint64_t statpos_fe_prefix(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v8 = *a2 + 160 * a4;
  v9 = *(v8 + 120);
  if (!v9)
  {
    v9 = **(v8 + 48);
  }

  if (a5 >= (Utf8_Utf8NbrOfSymbols(v9) - 1))
  {
    cstdlib_strcpy(a6, "=");
  }

  else
  {
    v10 = Utf8_LengthInBytes(v9, a5);
    cstdlib_strncpy(a6, v9, v10);
    a6[v10] = 0;
  }

  return 0;
}

uint64_t statpos_fe_suffix(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v8 = *a2 + 160 * a4;
  v9 = *(v8 + 120);
  if (!v9)
  {
    v9 = **(v8 + 48);
  }

  v10 = (Utf8_Utf8NbrOfSymbols(v9) - 1);
  if (v10 <= a5)
  {
    v11 = "=";
  }

  else
  {
    v11 = &v9[Utf8_LengthInBytes(v9, v10 - a5)];
  }

  cstdlib_strcpy(a6, v11);
  return 0;
}

uint64_t statpos_fe_fllw_by_punc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v15 = "=";
  }

  else
  {
    v9 = **(*a2 + 160 * v7 + 48);
    v10 = Utf8_Utf8NbrOfSymbols(v9);
    v11 = Utf8_LengthInBytes(v9, v10 - 2);
    if ((v10 - 3) <= 0xFFFFFFFD && (v12 = *(a3 + 168), v13 = &v9[v11], v14 = cstdlib_strlen(v13), _statpos_char_check(v12, v13, v14)))
    {
      v15 = "1";
    }

    else
    {
      v15 = "0";
    }
  }

  cstdlib_strcpy(a6, v15);
  return 0;
}

uint64_t statpos_fe_fllw_by_termpunc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v15 = "=";
  }

  else
  {
    v9 = **(*a2 + 160 * v7 + 48);
    v10 = Utf8_Utf8NbrOfSymbols(v9);
    v11 = Utf8_LengthInBytes(v9, v10 - 2);
    if ((v10 - 3) <= 0xFFFFFFFD && (v12 = *(a3 + 176), v13 = &v9[v11], v14 = cstdlib_strlen(v13), _statpos_char_check(v12, v13, v14)))
    {
      v15 = "1";
    }

    else
    {
      v15 = "0";
    }
  }

  cstdlib_strcpy(a6, v15);
  return 0;
}

uint64_t statpos_fe_has_hyphen(int a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *__dst)
{
  cstdlib_strcpy(__dst, "0");
  v11 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v12 = Utf8_Utf8NbrOfSymbols(v11) - 1;
  if (v12 >= 2)
  {
    v13 = 0;
    while (1)
    {
      v14 = utf8_determineUTF8CharLength(v11[v13]);
      if (_statpos_char_check(*(a3 + 160), &v11[v13], v14))
      {
        break;
      }

      v13 += v14;
      if (!--v12)
      {
        return 0;
      }
    }

    cstdlib_strcpy(__dst, "1");
  }

  return 0;
}

uint64_t statpos_fe_allupper(int a1, void *a2, int a3, unsigned int a4, int a5, char *__dst)
{
  cstdlib_strcpy(__dst, "1");
  v10 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v11 = Utf8_Utf8NbrOfSymbols(v10);
  v12 = v11 - 1;
  if (v11 != 1)
  {
    v13 = 0;
    while (1)
    {
      v14 = utf8_determineUTF8CharLength(v10[v13]);
      if (utf8_BelongsToSet(18, v10, v13, v14) != 1 && utf8_BelongsToSet(21, v10, v13, v14) != 1 && utf8_BelongsToSet(24, v10, v13, v14) != 1 && utf8_BelongsToSet(27, v10, v13, v14) != 1 && utf8_BelongsToSet(30, v10, v13, v14) != 1)
      {
        break;
      }

      v13 += v14;
      if (!--v12)
      {
        return 0;
      }
    }

    cstdlib_strcpy(__dst, "0");
  }

  return 0;
}

uint64_t statpos_fe_leadingcap(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, char *a6)
{
  v8 = *(*a2 + 160 * (a5 + a4) + 48);
  v9 = *v8;
  v10 = utf8_determineUTF8CharLength(**v8);
  if (a4 && ((v11 = v10, utf8_BelongsToSet(18, v9, 0, v10) == 1) || utf8_BelongsToSet(21, v9, 0, v11) == 1 || utf8_BelongsToSet(24, v9, 0, v11) == 1 || utf8_BelongsToSet(27, v9, 0, v11) == 1 || utf8_BelongsToSet(30, v9, 0, v11) == 1))
  {
    v12 = "1";
  }

  else
  {
    v12 = "0";
  }

  cstdlib_strcpy(a6, v12);
  return 0;
}

uint64_t statpos_fe_single_char(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  if (Utf8_Utf8NbrOfSymbols(**(*a2 + 160 * a4 + 160 * a5 + 48)) == 2)
  {
    v7 = "1";
  }

  else
  {
    v7 = "0";
  }

  cstdlib_strcpy(a6, v7);
  return 0;
}

uint64_t statpos_fe_contains_digit(int a1, void *a2, int a3, unsigned int a4, int a5, char *__dst)
{
  cstdlib_strcpy(__dst, "0");
  v10 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v11 = Utf8_Utf8NbrOfSymbols(v10);
  v12 = v11 - 1;
  if (v11 != 1)
  {
    v13 = 0;
    while (1)
    {
      v14 = utf8_determineUTF8CharLength(v10[v13]);
      if (utf8_BelongsToSet(6, v10, v13, v14) == 1)
      {
        break;
      }

      v13 += v14;
      if (!--v12)
      {
        return 0;
      }
    }

    cstdlib_strcpy(__dst, "1");
  }

  return 0;
}

uint64_t statpos_fe_hphn_wrd(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v9 = *a2 + 160 * a4;
  v10 = *(v9 + 120);
  if (!v10)
  {
    v10 = **(v9 + 48);
  }

  v11 = Utf8_Utf8NbrOfSymbols(v10);
  v12 = v11 - 1;
  if (v11 == 1)
  {
    goto LABEL_20;
  }

  v26 = a5;
  __dst = a6;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v11 - 1;
  do
  {
    v18 = utf8_determineUTF8CharLength(v10[v16]);
    if (v12 != 1)
    {
      v19 = _statpos_char_check(*(a3 + 160), &v10[v16], v18);
      v20 = v15 ? v15 : v16;
      if (v19)
      {
        v15 = v20;
        v14 = v18 + v16;
        v13 = 1;
      }
    }

    v16 += v18;
    --v17;
  }

  while (v17);
  a6 = __dst;
  if (v13 && v15)
  {
    if (v26 == -1)
    {
      v23 = cstdlib_strlen(v10);
      if (v23 - v14 > 0x10)
      {
        v23 = v14 + 16;
      }

      v24 = &v10[v14];
      v25 = v23 - v14;
      cstdlib_strncpy(__dst, v24, v23 - v14);
      __dst[v25] = 0;
    }

    else if (v26 == 1)
    {
      if (v15 >= 0x10)
      {
        v21 = 16;
      }

      else
      {
        v21 = v15;
      }

      cstdlib_strncpy(__dst, v10, v21);
      __dst[v21] = 0;
    }
  }

  else
  {
LABEL_20:
    cstdlib_strcpy(a6, "=");
  }

  return 0;
}

uint64_t statpos_fe_char(int a1, uint64_t a2, int a3, unsigned int a4, int a5, char *__dst)
{
  LOBYTE(v7) = a5;
  if (a5 <= 0)
  {
    v14 = -1;
    if (a5 && a4)
    {
      v15 = ~a4;
      v16 = 160 * (a4 - 1) + 48;
      do
      {
        LOBYTE(v7) = v7 + Utf8_Utf8NbrOfSymbols(**(*a2 + v16)) - 1;
        --v14;
        if ((v7 & 0x80) == 0)
        {
          break;
        }

        v16 -= 160;
      }

      while (v14 > v15);
    }

    v12 = v14 + ((v7 & 0x80) == 0);
  }

  else
  {
    v10 = 160 * a4 + 208;
    v11 = a4 + 1;
    v12 = 1;
    while (v11 < *(a2 + 8))
    {
      v13 = Utf8_Utf8NbrOfSymbols(**(*a2 + v10));
      v7 = (v7 - v13 + 1);
      ++v12;
      v10 += 160;
      ++v11;
      if (v7 <= 0)
      {
        --v12;
        LOBYTE(v7) = v13 + v7 - 2;
        break;
      }
    }
  }

  v17 = v12 + a4;
  if ((v12 + a4) < 0 || v17 >= *(a2 + 8))
  {
    cstdlib_strcpy(__dst, "=");
  }

  else
  {
    v18 = **(*a2 + 160 * v17 + 48);
    v19 = Utf8_LengthInBytes(v18, v7);
    v20 = cstdlib_strlen(v18) - v19;
    if (v20 >= Utf8_LengthInBytes(&v18[v19], 1))
    {
      utf8_getUTF8Char(v18, v19, __dst);
    }
  }

  return 0;
}

uint64_t statpos_fe_wrd_prfx1(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v7 = a5 + a4;
  if (a5 + a4 >= 0 && v7 < *(a2 + 8) && (v8 = **(*a2 + 160 * v7 + 48), ((Utf8_Utf8NbrOfSymbols(v8) - 1) & 0xFFFE) != 0))
  {
    utf8_getUTF8Char(v8, 0, __dst);
  }

  else
  {
    cstdlib_strcpy(__dst, "=");
  }

  return 0;
}

uint64_t statpos_fe_wrd_prfx2(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8) || (v8 = **(*a2 + 160 * v7 + 48), (Utf8_Utf8NbrOfSymbols(v8) - 1) < 3u))
  {
    cstdlib_strcpy(__dst, "=");
  }

  else
  {
    v9 = Utf8_LengthInBytes(v8, 2);
    cstdlib_strncpy(__dst, v8, v9);
    __dst[v9] = 0;
  }

  return 0;
}

uint64_t statpos_fe_wrd_sffx1(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v7 = a5 + a4;
  if (a5 + a4 >= 0 && v7 < *(a2 + 8) && (v8 = **(*a2 + 160 * v7 + 48), ((Utf8_Utf8NbrOfSymbols(v8) - 1) & 0xFFFE) != 0))
  {
    v9 = cstdlib_strlen(v8);
    utf8_GetUtf8Symbol(v8, v9 - 1, v9, __dst);
  }

  else
  {
    cstdlib_strcpy(__dst, "=");
  }

  return 0;
}

uint64_t statpos_fe_wrd_sffx2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8) || (v8 = **(*a2 + 160 * v7 + 48), v9 = (Utf8_Utf8NbrOfSymbols(v8) - 1), v9 < 3))
  {
    v10 = "=";
  }

  else
  {
    v10 = &v8[Utf8_LengthInBytes(v8, v9 - 2)];
  }

  cstdlib_strcpy(a6, v10);
  return 0;
}

uint64_t statpos_fe_startofword(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v8 = "=";
  }

  else
  {
    v8 = "1";
    if (v6 && *(*a2 + 160 * v6 - 140) != 1)
    {
      v8 = "0";
    }
  }

  cstdlib_strcpy(__dst, v8);
  return 0;
}

uint64_t statpos_fe_fllw_by_sp(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v7 = "=";
  }

  else if (*(*a2 + 160 * v6 + 20) == 1)
  {
    v7 = "1";
  }

  else
  {
    v7 = "0";
  }

  cstdlib_strcpy(__dst, v7);
  return 0;
}

uint64_t statpos_fe_fllw_by_anypunc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v19 = "=";
  }

  else
  {
    v11 = **(*a2 + 160 * v7 + 48);
    v12 = Utf8_Utf8NbrOfSymbols(v11);
    v13 = Utf8_LengthInBytes(v11, v12 - 2);
    if (a4 + 1 == *(a2 + 8) || (v12 - 3) <= 0xFFFFFFFD && ((v14 = *(a3 + 168), v15 = &v11[v13], v16 = cstdlib_strlen(v15), _statpos_char_check(v14, v15, v16)) || (v17 = *(a3 + 176), v18 = cstdlib_strlen(v15), _statpos_char_check(v17, v15, v18))))
    {
      v19 = "1";
    }

    else
    {
      v19 = "0";
    }
  }

  cstdlib_strcpy(a6, v19);
  return 0;
}

uint64_t statpos_fe_cword_ambig(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v8 = "=";
  }

  else
  {
    v7 = *a2 + 160 * v6;
    if (*(v7 + 72) == 1)
    {
      v8 = *(v7 + 80);
    }

    else
    {
      v8 = **(v7 + 48);
    }
  }

  cstdlib_strcpy(__dst, v8);
  return 0;
}

char *statpos_getPOSTags(char *a1, uint64_t a2, _WORD *a3)
{
  v5 = a1;
  result = cstdlib_strchr(a1, 92);
  if (result)
  {
    v7 = result;
    do
    {
      v8 = 0;
      while (1)
      {
        v9 = *a3;
        if (v8 >= v9)
        {
          break;
        }

        if (!cstdlib_strncmp(*(a2 + 8 * v8++), v5, v7 - v5))
        {
          goto LABEL_8;
        }
      }

      cstdlib_strncpy(*(a2 + 8 * v9), v5, v7 - v5);
      *(*(a2 + 8 * (*a3)++) + v7 - v5) = 0;
LABEL_8:
      v5 = v7 + 1;
      v7 = cstdlib_strchr(v7 + 1, 92);
    }

    while (v7);
  }

  else if (!v5)
  {
    return result;
  }

  v11 = 0;
  while (1)
  {
    v12 = *a3;
    if (v11 >= v12)
    {
      break;
    }

    result = cstdlib_strcmp(*(a2 + 8 * v11++), v5);
    if (!result)
    {
      return result;
    }
  }

  result = cstdlib_strcpy(*(a2 + 8 * v12), v5);
  ++*a3;
  return result;
}

uint64_t statpunc_getFeature(char *__s1, uint64_t a2)
{
  v4 = 0;
  while (cstdlib_strcmp(__s1, g_statpunc_FeatureNames[v4]))
  {
    if (++v4 == 9)
    {
      return 0;
    }
  }

  return *(a2 + v4 * 8);
}

uint64_t statpunc_setFeature(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4, const char *a5)
{
  if (*(a1 + 1296) < 2u)
  {
    return 0;
  }

  v10 = 0;
  while (cstdlib_strcmp(__s1, *(*(a1 + 1312) + 8 * v10)))
  {
    if (*(a1 + 1296) - 1 <= ++v10)
    {
      return 0;
    }
  }

  if (!cstdlib_strcmp(a5, ""))
  {
    v13 = *(a4 + 8 * v10);
    v14 = "_";
LABEL_14:
    cstdlib_strcpy(v13, v14);
    return 0;
  }

  if (cstdlib_strlen(a5) <= 0x40)
  {
    v13 = *(a4 + 8 * v10);
    goto LABEL_13;
  }

  v12 = cstdlib_strlen(a5);
  v13 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v10), v12 + 1);
  if (v13)
  {
    *(a4 + 8 * v10) = v13;
LABEL_13:
    v14 = a5;
    goto LABEL_14;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN", 33000, 0);
  return 2311069706;
}

uint64_t statpunc_initFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 8 * a4 - 8;
  while (1)
  {
    if (!*(a3 + v7))
    {
      v9 = heap_Calloc(*(a2 + 8), 1, 65);
      *(a3 + v7) = v9;
      if (!v9)
      {
        break;
      }
    }

    result = statpunc_setFeature(a1, a2, *(*(a1 + 1312) + v7), a3, "_");
    if ((result & 0x80000000) == 0)
    {
      v11 = v8 == v7;
      v7 += 8;
      if (!v11)
      {
        continue;
      }
    }

    return result;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN", 33000, 0);
  return 2311069706;
}

void *statpunc_freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
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

uint64_t statpunc_dumpFeatureVectorAndResult(uint64_t a1, uint64_t a2, uint64_t a3, char *__src)
{
  v11 = *MEMORY[0x277D85DE8];
  cstdlib_strncpy(__dst, __src, 0x100uLL);
  __dst[255] = 0;
  if (*(a1 + 1296) >= 2u)
  {
    v7 = 0;
    do
    {
      v8 = cstdlib_strlen(*(a3 + 8 * v7));
      if (v8 + cstdlib_strlen(__dst) + 2 > 0xFF)
      {
        break;
      }

      cstdlib_strcat(__dst, " ");
      cstdlib_strcat(__dst, *(a3 + 8 * v7++));
    }

    while (*(a1 + 1296) - 1 > v7);
  }

  return log_OutText(*(a2 + 32), "FE_PUNCSPTN", 5, 0, "traceFeatureVector %s", __dst);
}

uint64_t statpunc_getIgtreeBrkStr(uint64_t a1, const char *a2, _BYTE *a3, size_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v9);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_strcpy(__dst, "statpunc_");
    cstdlib_strcat(__dst, a2);
    LODWORD(result) = brokeraux_ComposeBrokerString(a1, __dst, 0, 1, v9, 0, 0, a3, a4);
    if (result >= 0)
    {
      return result;
    }

    else
    {
      return result | 0x89C02000;
    }
  }

  return result;
}

uint64_t statpunc_readIGTree(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  *v25 = 0;
  IgtreeBrkStr = statpunc_getIgtreeBrkStr(a3, a4, v26, 0x100uLL);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    return IgtreeBrkStr;
  }

  IgtreeBrkStr = ssftriff_reader_ObjOpen(a1, a2, 2, v26, "IGTR", 1031, v25);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    return IgtreeBrkStr;
  }

  v10 = heap_Calloc(*(a3 + 8), 1, 1600);
  *(a5 + 8) = v10;
  if (!v10)
  {
    log_OutPublic(*(a3 + 32), "FE_PUNCSPTN", 35000, 0);
    return 2311069706;
  }

  IgtreeBrkStr = igtree_Init(a1, a2, *v25, v10);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    return IgtreeBrkStr;
  }

  v11 = ssftriff_reader_ObjClose(*v25);
  if ((v11 & 0x80000000) == 0)
  {
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 393219;
    *(a5 + 40) = ":;.!?()[]{}#',-<>";
    v12 = *(a5 + 8);
    if (*(v12 + 1336))
    {
      v13 = 0;
      do
      {
        v14 = v13;
        v15 = 16 * v13;
        v16 = cstdlib_strcmp(*(*(v12 + 1328) + v15), "leftcollocation");
        v17 = *(*(a5 + 8) + 1328);
        if (v16)
        {
          v18 = cstdlib_strcmp(*(v17 + v15), "rightcollocation");
          v19 = *(*(a5 + 8) + 1328);
          if (v18)
          {
            v20 = cstdlib_strcmp(*(v19 + v15), "dist2endmaxshort");
            v21 = *(*(a5 + 8) + 1328);
            if (v20)
            {
              v22 = cstdlib_strcmp(*(v21 + v15), "dist2endminlong");
              v23 = *(*(a5 + 8) + 1328);
              if (v22)
              {
                if (!cstdlib_strcmp(*(v23 + v15), "punctuation"))
                {
                  *(a5 + 40) = *(*(*(a5 + 8) + 1328) + 16 * v14 + 8);
                }
              }

              else
              {
                *(a5 + 34) = cstdlib_atoi(*(v23 + 16 * v14 + 8));
              }
            }

            else
            {
              *(a5 + 32) = cstdlib_atoi(*(v21 + 16 * v14 + 8));
            }
          }

          else
          {
            *(a5 + 24) = *(v19 + 16 * v14 + 8);
          }
        }

        else
        {
          *(a5 + 16) = *(v17 + 16 * v14 + 8);
        }

        v13 = v14 + 1;
        v12 = *(a5 + 8);
      }

      while (*(v12 + 1336) > (v14 + 1));
    }
  }

  return v11;
}

uint64_t statpunc_freeIGTree(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = igtree_Deinit(a1, a2);
  if ((v4 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a2);
  }

  return v4;
}

BOOL bstartword(char *__s, char *a2, char *a3)
{
  if (a3 == a2)
  {
    return 1;
  }

  v3 = a3;
  do
  {
    v6 = *--v3;
    v7 = cstdlib_strchr(__s, v6);
  }

  while (v3 > a2 && v7);
  v8 = *v3;
  return v8 == 32 || v3 == a2 && cstdlib_strchr(__s, v8);
}

BOOL bendword(char *__s, uint64_t a2)
{
  v3 = (a2 + 1);
  while (1)
  {
    v4 = *v3;
    if (!*v3)
    {
      break;
    }

    ++v3;
    if (!cstdlib_strchr(__s, v4))
    {
      return (*(v3 - 1) & 0xDF) == 0;
    }
  }

  return 1;
}

BOOL bstartsent(char *__s, char *a2, char *a3)
{
  if (a3 == a2)
  {
    return 1;
  }

  v3 = a3;
  do
  {
    v6 = *--v3;
    v7 = cstdlib_strchr(__s, v6);
  }

  while (v3 > a2 && v7);
  return v3 == a2 && cstdlib_strchr(__s, *v3);
}

BOOL bendsent(char *__s, uint64_t a2)
{
  LOBYTE(v2) = *(a2 + 1);
  if (!v2)
  {
    return 1;
  }

  v4 = (a2 + 2);
  do
  {
    if (!cstdlib_strchr(__s, v2))
    {
      v2 = *(v4 - 1);
      if (v2 != 32)
      {
        break;
      }
    }

    v5 = *v4++;
    v2 = v5;
  }

  while (v5);
  return v2 == 0;
}

uint64_t countspaces(_BYTE *a1, unint64_t a2)
{
  if (a1 >= a2)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    do
    {
      if (*a1 == 32)
      {
        ++v2;
        do
        {
          v3 = *++a1;
        }

        while (v3 == 32);
      }

      ++a1;
    }

    while (a1 < a2);
  }

  return v2;
}

uint64_t statpunc_extractFeatures(uint64_t a1, uint64_t a2, char *a3, char *a4, const char *a5, uint64_t a6)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 && (v11 = cstdlib_strchr(*(a1 + 16), 124)) != 0)
  {
    v12 = v11;
    v13 = 0;
    do
    {
      *v12 = 0;
      v14 = cstdlib_strstr(a3, v10);
      if (v14 && v14 < a4)
      {
        v13 = statpunc_setFeature(v9, a2, "collocation", a6, "left");
      }

      *v12 = 124;
      v10 = v12 + 1;
      v12 = cstdlib_strchr(v12 + 1, 124);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = cstdlib_strchr(*(a1 + 24), 124);
    if (v16)
    {
      v17 = v16;
      do
      {
        *v17 = 0;
        if (cstdlib_strstr(a3, v15) > a4)
        {
          v13 = statpunc_setFeature(v9, a2, "collocation", a6, "right");
        }

        *v17 = 124;
        v15 = v17 + 1;
        v17 = cstdlib_strchr(v17 + 1, 124);
      }

      while (v17);
    }
  }

  v18 = a4;
  if (a4 > a3)
  {
    v18 = a4;
    while (*v18 != 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  if (v18 > a3)
  {
    while (*v18 == 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  if (cstdlib_strchr(*(a1 + 40), *v18))
  {
    v19 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", *v18))
    {
      goto LABEL_30;
    }

    v19 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "lwordendchar", a6, v19);
LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

    ;
  }

  do
  {
    v22 = *i++;
    v21 = v22;
  }

  while (v22 == 32);
  if (cstdlib_strchr(*(a1 + 40), v21))
  {
    v23 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", *(i - 1)))
    {
      goto LABEL_40;
    }

    v23 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "rwordbegchar", a6, v23);
LABEL_40:
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (a4 > a3)
  {
    if (cstdlib_strchr(*(a1 + 40), *(a4 - 1)))
    {
      v24 = "punc";
    }

    else
    {
      if (!cstdlib_strchr("0123456789", *(a4 - 1)))
      {
        goto LABEL_47;
      }

      v24 = "digit";
    }

    v13 = statpunc_setFeature(v9, a2, "lchar", a6, v24);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }
  }

LABEL_47:
  if (cstdlib_strchr(*(a1 + 40), a4[1]))
  {
    v25 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", a4[1]))
    {
      goto LABEL_52;
    }

    v25 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "rchar", a6, v25);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

LABEL_52:
  v26 = bstartsent(*(a1 + 40), a3, a4);
  v27 = bendsent(*(a1 + 40), a4);
  if (v26)
  {
    if (v27)
    {
      v28 = "isolated";
LABEL_55:
      v13 = statpunc_setFeature(v9, a2, "sentpos", a6, v28);
      goto LABEL_61;
    }

    if (!cstdlib_strcmp(a5, a1))
    {
      v13 = statpunc_setFeature(v9, a2, "sentpos", a6, "start");
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }
    }
  }

  else if (v27 && !cstdlib_strcmp(a5, (a1 + 4)))
  {
    v28 = "end";
    goto LABEL_55;
  }

LABEL_61:
  v29 = bstartword(*(a1 + 40), a3, a4);
  v30 = *(a1 + 40);
  if (v29)
  {
    v31 = a4 + 1;
    do
    {
      v32 = *v31;
      if (!*v31)
      {
        goto LABEL_78;
      }

      ++v31;
    }

    while (cstdlib_strchr(v30, v32));
    if ((*(v31 - 1) & 0xDF) == 0)
    {
LABEL_78:
      v37 = "pos";
      v38 = "isolated";
      goto LABEL_79;
    }

    if (!cstdlib_strcmp(a5, a1))
    {
      v13 = statpunc_setFeature(v9, a2, "pos", a6, "start");
      if ((v13 & 0x80000000) == 0)
      {
        v33 = cstdlib_strstr(a4 + 1, (a1 + 4));
        if (v33)
        {
          v34 = v33;
          if (!bstartword(*(a1 + 40), a3, v33) && bendword(*(a1 + 40), v34))
          {
            if (v34 <= a4)
            {
              v35 = 0;
            }

            else
            {
              v35 = 0;
              do
              {
                if (*a4 == 32)
                {
                  ++v35;
                  do
                  {
                    v36 = *++a4;
                  }

                  while (v36 == 32);
                }

                ++a4;
              }

              while (a4 < v34);
            }

            if (*(a1 + 32) <= v35)
            {
              v37 = "dist2end";
              if (*(a1 + 34) <= v35)
              {
                v38 = "long";
              }

              else
              {
                v38 = "medium";
              }
            }

            else
            {
              v37 = "dist2end";
              v38 = "short";
            }

            goto LABEL_79;
          }
        }
      }
    }

    return v13;
  }

  v40 = a4 + 1;
  while (1)
  {
    v41 = *v40;
    if (!*v40)
    {
      break;
    }

    ++v40;
    if (!cstdlib_strchr(v30, v41))
    {
      if ((*(v40 - 1) & 0xDF) != 0)
      {
        return v13;
      }

      break;
    }
  }

  if (cstdlib_strcmp(a5, (a1 + 4)))
  {
    return v13;
  }

  v37 = "pos";
  v38 = "end";
LABEL_79:

  return statpunc_setFeature(v9, a2, v37, a6, v38);
}

uint64_t statpunc_insertMarker(uint64_t a1, unsigned int a2, char *a3, uint64_t *a4, _WORD *a5, uint64_t *a6, _WORD *a7, char ***a8)
{
  v15 = a1;
  v16 = *(*a8 + 3);
  v17 = *a5;
  if ((((((-13107 * v17) & 0xFFFCu) >> 1) | (v17 << 15)) >> 1) < 0xCCDu)
  {
    v27 = heap_Realloc(*(a1 + 8), *a4, 8 * *a5 + 80);
    if (!v27 || (*a4 = v27, (v18 = heap_Realloc(*(v15 + 8), *a6, 20 * (*a5 / 0xAu + 1))) == 0))
    {
LABEL_36:
      v41 = 2311069706;
      v51 = *(v15 + 32);
LABEL_37:
      log_OutPublic(v51, "FE_PUNCSPTN", 33000, 0);
      return v41;
    }

    *a6 = v18;
    LOWORD(v17) = *a5;
  }

  else
  {
    v18 = *a6;
  }

  *(v18 + 2 * v17) = a2;
  v19 = *a7;
  v54 = a4;
  v55 = v15;
  if (!*a7)
  {
    v22 = 0;
    goto LABEL_34;
  }

  __s1 = a3;
  v20 = *a8;
  v21 = *(*a8 + 3);
  if (v21 - v16 <= a2)
  {
    v28 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v29 = 0;
    v30 = *a8;
    do
    {
      v31 = *v20;
      if (*v20 == 1)
      {
        v22 = v29;
      }

      if (v31 == 1)
      {
        v24 = v21;
      }

      if (v31 == 51)
      {
        v32 = cstdlib_strstr(v20[3], "PUNC");
        v30 = *a8;
        v26 = !v32 || v32 != v30[v28 + 3] && *(v32 - 1) == 95;
        v25 = HIDWORD(v30[v28 + 1]);
        LOWORD(v19) = *a7;
        v23 = v29;
      }

      else
      {
        v26 = 1;
      }

      if (++v29 >= v19)
      {
        break;
      }

      v20 = &v30[4 * v29];
      v21 = *(v20 + 3);
      v28 += 4;
    }

    while (v21 - v16 <= a2);
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
  }

  v19 = v19;
  if (!v23)
  {
    a3 = __s1;
    goto LABEL_34;
  }

  v33 = v24 == v25;
  a3 = __s1;
  if (!v33)
  {
LABEL_34:
    v42 = v22 + 1;
    cstdlib_memmove(&(*a8)[4 * v22 + 8], &(*a8)[4 * v42], 32 * (v19 + ~v22));
    v43 = *a8;
    v44 = &(*a8)[4 * v42];
    *v44 = 51;
    v45 = &v43[4 * v22];
    *(v44 + 4) = *(v45 + 4);
    *(v44 + 12) = *(v45 + 3);
    v15 = v55;
    v46 = *(v55 + 8);
    v47 = cstdlib_strlen(a3);
    (*a8)[4 * v42 + 3] = heap_Alloc(v46, (v47 + 1));
    v48 = (*a8)[4 * v42 + 3];
    if (v48)
    {
      v49 = *v54;
      v50 = *a5;
      *a5 = v50 + 1;
      *(v49 + 8 * v50) = v48;
      cstdlib_strcpy((*a8)[4 * v42 + 3], a3);
      v41 = 0;
      ++*a7;
      return v41;
    }

    goto LABEL_36;
  }

  if (!v26 && !cstdlib_strstr(__s1, "S_PUNC") && !cstdlib_strstr(__s1, "E_PUNC"))
  {
    return 0;
  }

  v34 = *(v55 + 8);
  v35 = cstdlib_strlen(__s1);
  v36 = cstdlib_strlen((*a8)[4 * v23 + 3]);
  v37 = heap_Alloc(v34, (v35 + v36 + 2));
  if (!v37)
  {
    v41 = 2311069706;
    v51 = *(v55 + 32);
    goto LABEL_37;
  }

  v38 = v37;
  v39 = *v54;
  v40 = *a5;
  *a5 = v40 + 1;
  *(v39 + 8 * v40) = v37;
  cstdlib_strcpy(v37, (*a8)[4 * v23 + 3]);
  cstdlib_strcat(v38, ";");
  cstdlib_strcat(v38, __s1);
  v41 = 0;
  (*a8)[4 * v23 + 3] = v38;
  return v41;
}

char *statpunc_Strpunc(char *a1, const char *a2, const char *a3, const char **a4)
{
  v8 = cstdlib_strstr(a1, a2);
  result = cstdlib_strstr(a1, a3);
  if (v8)
  {
    if (v8 <= result)
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    if (v8 <= result)
    {
      v11 = v8;
    }

    else
    {
      v11 = result;
    }

    if (result)
    {
      a3 = v10;
    }

    else
    {
      a3 = a2;
    }

    if (result)
    {
      result = v11;
    }

    else
    {
      result = v8;
    }
  }

  else if (!result)
  {
    return result;
  }

  *a4 = a3;
  return result;
}

uint64_t statpunc_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  LODWORD(v8) = a6;
  v11 = a2;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  __src = 0;
  v81 = 0;
  v79 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v13 = (*(a2 + 104))(a3, a4, 1, 0, &v85);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  v14 = 0;
  if (((*(v11 + 184))(a3, a4, v85, 0, &v85 + 2) & 0x80000000) != 0)
  {
    goto LABEL_62;
  }

  if (HIWORD(v85) != 1)
  {
    goto LABEL_62;
  }

  v13 = (*(v11 + 176))(a3, a4, v85, 0, &v83, &v84 + 2);
  v14 = 0;
  if ((v13 & 0x80000000) != 0 || HIWORD(v84) < 2u)
  {
    goto LABEL_62;
  }

  v13 = (*(v11 + 176))(a3, a4, v85, 1, &__src, &v78 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  v72 = *(__src + 3);
  v15 = statpunc_Strpunc(v83, a5, (a5 + 4), &v81);
  if (!v15)
  {
    goto LABEL_61;
  }

  v73 = a3;
  v16 = 0;
  do
  {
    ++v16;
    v15 = statpunc_Strpunc(v15 + 1, a5, (a5 + 4), &v81);
  }

  while (v15);
  if (!v16)
  {
LABEL_61:
    v14 = 0;
    goto LABEL_62;
  }

  v17 = heap_Calloc(*(a1 + 8), 1, 32 * (HIWORD(v78) + v16));
  v79 = v17;
  if (!v17)
  {
LABEL_60:
    v13 = 2311069706;
    log_OutPublic(*(a1 + 32), "FE_PUNCSPTN", 33000, 0);
    goto LABEL_61;
  }

  cstdlib_memcpy(v17, __src, 32 * HIWORD(v78));
  v18 = statpunc_Strpunc(v83, a5, (a5 + 4), &v81);
  v69 = a7;
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = v83;
      v87 = 0;
      v88[0] = 0;
      v86 = 0;
      v23 = (*(v11 + 104))(v73, a4, 3, v85, &v87 + 2);
      if ((v23 & 0x80000000) != 0)
      {
        break;
      }

      v24 = HIWORD(v87);
      if (HIWORD(v87))
      {
        v25 = 0;
        v26 = (v19 - v22);
        while (1)
        {
          v23 = (*(v11 + 168))(v73, a4, v24, 0, 1, v88, &v87);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          v23 = (*(v11 + 168))(v73, a4, HIWORD(v87), 1, 1, &v86 + 2, &v87);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          v23 = (*(v11 + 168))(v73, a4, HIWORD(v87), 2, 1, &v86, &v87);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          if (v86 > v26 && HIWORD(v86) <= v26 && (v88[0] & 0xFFFFFFFD) == 4)
          {
            v25 = 1;
          }

          v29 = (*(v11 + 120))(v73, a4, HIWORD(v87), &v87 + 2);
          v13 = v29;
          if ((v29 & 0x80000000) == 0)
          {
            v24 = HIWORD(v87);
            if (HIWORD(v87))
            {
              continue;
            }
          }

          a7 = v69;
          if ((v29 & 0x80000000) != 0)
          {
            goto LABEL_68;
          }

          if (v25)
          {
            goto LABEL_58;
          }

          break;
        }
      }

      if (!v21)
      {
        log_OutText(*(a1 + 32), "FE_PUNCSPTN", 5, 0, "traceFeatureVector %s", v83);
        v21 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(a5 + 8) + 1296) - 8);
        if (!v21)
        {
          goto LABEL_60;
        }
      }

      inited = statpunc_initFeatureVector(*(a5 + 8), a1, v21, (*(*(a5 + 8) + 1296) - 1));
      if ((inited & 0x80000000) != 0 || (inited = statpunc_extractFeatures(a5, a1, v83, v19, v81, v21), (inited & 0x80000000) != 0) || v20 && (inited = statpunc_setFeature(*(a5 + 8), a1, "startpred", v21, v20), (inited & 0x80000000) != 0) || (inited = igtree_Process(*(a5 + 8), v21, &v82), (inited & 0x80000000) != 0))
      {
        v13 = inited;
        v14 = 0;
        goto LABEL_100;
      }

      v31 = 0;
      while (cstdlib_strcmp("pos", g_statpunc_FeatureNames[v31]))
      {
        if (++v31 == 9)
        {
          v32 = 0;
          goto LABEL_45;
        }
      }

      v32 = *(v21 + v31 * 8);
LABEL_45:
      if (!cstdlib_strcmp(v32, "start"))
      {
        v20 = v82;
      }

      statpunc_dumpFeatureVectorAndResult(*(a5 + 8), a1, v21, v82);
      if (!cstdlib_strstr(v82, "IGNORE"))
      {
        v33 = v19 - v83;
        if (!cstdlib_strstr(v82, "S_PUNC") && v33)
        {
          v34 = v33 - 1;
          while (1)
          {
            v35 = v83[v34];
            if (v35 != 32 && !cstdlib_strchr(*(a5 + 40), v35))
            {
              break;
            }

            if (!v34--)
            {
              v33 = 0;
              goto LABEL_56;
            }
          }

          v33 = v34 + 1;
        }

LABEL_56:
        inserted = statpunc_insertMarker(a1, v33, v82, &v77, &v78, &v76, &v78 + 1, &v79);
        if ((inserted & 0x80000000) != 0)
        {
          v13 = inserted;
          v14 = 0;
          goto LABEL_100;
        }
      }

      a7 = v69;
LABEL_58:
      v19 = statpunc_Strpunc(v19 + 1, a5, (a5 + 4), &v81);
      if (!v19)
      {
        goto LABEL_70;
      }
    }

LABEL_67:
    v13 = v23;
LABEL_68:
    v14 = 0;
    goto LABEL_99;
  }

  v21 = 0;
LABEL_70:
  v39 = *(a1 + 8);
  v40 = cstdlib_strlen(v83);
  v41 = heap_Calloc(v39, 1, (v40 + 1));
  v14 = v41;
  if (!v41)
  {
    v13 = 2311069706;
    log_OutPublic(*(a1 + 32), "FE_PUNCSPTN", 33000, 0);
    goto LABEL_99;
  }

  cstdlib_strcpy(v41, v83);
  v65 = v21;
  if (v8 && v78)
  {
    v74 = 0;
    v71 = 0;
    v8 = v8;
    v67 = v11;
    v68 = a1;
    v66 = v8;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        v43 = (a7 + (i << 9));
        if (!cstdlib_strcmp(v77[v74], v43))
        {
          v44 = cstdlib_strlen(v43 + 256);
          v45 = *(a1 + 8);
          v46 = cstdlib_strlen(v14);
          v47 = heap_Realloc(v45, v14, v44 + v46 + 1);
          if (!v47)
          {
            v13 = 2311069706;
            log_OutPublic(*(a1 + 32), "FE_PUNCSPTN", 33000, 0);
            goto LABEL_98;
          }

          v48 = v47;
          v49 = v76;
          v50 = *(v76 + 2 * v74) + v71;
          v70 = v50 + v44;
          v51 = &v47[v50];
          v52 = cstdlib_strlen(v47);
          cstdlib_memmove(&v48[v70], v51 + 1, v52 - (*(v49 + 2 * v74) + v71));
          v11 = v67;
          cstdlib_memcpy(&v48[*(v49 + 2 * v74) + v71], v43 + 256, v44);
          v53 = HIWORD(v78);
          a7 = v69;
          if (HIWORD(v78))
          {
            v54 = *(v49 + 2 * v74) + v71;
            v55 = v79 + 3;
            do
            {
              if (v54 < (*v55 - v72))
              {
                *v55 += v44 - 1;
              }

              v55 += 8;
              --v53;
            }

            while (v53);
          }

          v71 = v71 + v44 - 1;
          v14 = v48;
          a1 = v68;
          v8 = v66;
        }
      }

      if (++v74 < v78)
      {
        continue;
      }

      break;
    }
  }

  v56 = (*(v11 + 160))(v73, a4, v85, 1, HIWORD(v78), v79, &v84);
  if ((v56 & 0x80000000) != 0)
  {
    v13 = v56;
    goto LABEL_98;
  }

  v57 = *(v11 + 160);
  v58 = v85;
  v59 = cstdlib_strlen(v14);
  v13 = v57(v73, a4, v58, 0, (v59 + 1), v14, &v84);
  if ((v13 & 0x80000000) != 0)
  {
LABEL_98:
    v21 = v65;
    goto LABEL_99;
  }

  v60 = v78;
  if (v78)
  {
    v61 = v77;
    do
    {
      v62 = *v61++;
      heap_Free(*(a1 + 8), v62);
      --v60;
    }

    while (v60);
  }

  if (v76)
  {
    heap_Free(*(a1 + 8), v76);
  }

  v21 = v65;
  if (v77)
  {
    heap_Free(*(a1 + 8), v77);
  }

LABEL_99:
  if (v21)
  {
LABEL_100:
    if (*(*(a5 + 8) + 1296) != 1)
    {
      v63 = (*(*(a5 + 8) + 1296) - 1);
      v64 = v21;
      do
      {
        if (*v64)
        {
          heap_Free(*(a1 + 8), *v64);
        }

        ++v64;
        --v63;
      }

      while (v63);
    }

    heap_Free(*(a1 + 8), v21);
  }

LABEL_62:
  if (v79)
  {
    heap_Free(*(a1 + 8), v79);
  }

  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
  }

  return v13;
}

uint64_t fe_puncsptn_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v20 = 0;
  v21 = 0;
  v5 = 2311069703;
  v18 = 0;
  v19 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v21);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v21[6], "LINGDB", &v20);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v21[6], "FE_DEPES", &v19);
  v11 = v21[6];
  if ((Object & 0x80000000) != 0)
  {
LABEL_11:
    objc_ReleaseObject(v11, "LINGDB");
    return Object;
  }

  v12 = objc_GetObject(v11, "FE_DCTLKP", &v18);
  if ((v12 & 0x80000000) != 0)
  {
    Object = v12;
    objc_ReleaseObject(v21[6], "FE_DEPES");
    v11 = v21[6];
    goto LABEL_11;
  }

  v13 = heap_Alloc(v21[1], 168);
  if (v13)
  {
    v14 = v13;
    cstdlib_memset(v13, 0, 0xA8uLL);
    *a5 = v14;
    *(a5 + 8) = 62339;
    *v14 = v21;
    *(v14 + 1) = a3;
    *(v14 + 2) = a4;
    *(v14 + 3) = *(v20 + 8);
    v15 = v18;
    v16 = v19;
    *(v14 + 6) = *(v19 + 8);
    *(v14 + 2) = *(v16 + 16);
    *(v14 + 9) = *(v15 + 8);
    *(v14 + 56) = *(v15 + 16);
    *(v14 + 56) = 0;
    *(v14 + 5) = 0u;
    *(v14 + 6) = 0u;
    v5 = hlp_open(v14);
    if ((v5 & 0x80000000) != 0)
    {
      fe_puncsptn_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }
  }

  else
  {
    log_OutPublic(v21[4], "FE_PUNCSPTN", 33000, 0);
    objc_ReleaseObject(v21[6], "LINGDB");
    objc_ReleaseObject(v21[6], "FE_DEPES");
    objc_ReleaseObject(v21[6], "FE_DCTLKP");
    return 2311069706;
  }

  return v5;
}

uint64_t hlp_open(void *a1)
{
  v1 = 2311069706;
  v37 = 0;
  v34 = -1;
  v33 = 0;
  if (!a1)
  {
    return 2311069702;
  }

  v35 = 0;
  v36 = 0;
  v3 = (*(a1[9] + 88))(a1[7], a1[8], &v37 + 4, &v37);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v5 = v37 == 1 && HIDWORD(v37) == 1;
  a1[15] = 0;
  *(a1 + 29) = v5;
  if ((paramc_ParamGet(*(*a1 + 40), "fecfg", &v36, 0) & 0x80000000) == 0 && (!LH_stricmp(v36, "mpthree") || !LH_stricmp(v36, "vadvde")))
  {
    *(a1 + 30) = 1;
  }

  v34 = -1;
  v3 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "puncsptneos", &v35, &v34, &v33);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  if (v34 == 1 && v35 && **v35 == 49)
  {
    *(a1 + 31) = 1;
  }

  LOBYTE(v40) = 0;
  LOWORD(__s1) = -1;
  v6 = a1[16];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  v41 = 0;
  a1[16] = 0;
  v7 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "esctn", &v41, &__s1, &v40);
  IGTree = v7;
  if ((v7 & 0x80000000) != 0 || !__s1)
  {
    if ((v7 & 0x80000000) != 0)
    {
      return IGTree;
    }
  }

  else
  {
    v9 = *(*a1 + 8);
    v10 = cstdlib_strlen(*v41);
    v11 = heap_Calloc(v9, 1, (v10 + 1));
    a1[16] = v11;
    if (!v11)
    {
      log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 34000, 0);
      return 2311069706;
    }

    cstdlib_strcpy(v11, *v41);
    v12 = a1[16];
    *(v12 + cstdlib_strlen(*v41) - 1) = 124;
  }

  v40 = 0;
  v41 = 0;
  v39 = 0;
  v13 = a1[17];
  if (*(a1 + 72))
  {
    v14 = 0;
    v15 = 8;
    do
    {
      statpunc_freeIGTree(*a1, *(v13 + v15));
      v13 = a1[17];
      *(v13 + v15) = 0;
      ++v14;
      v15 += 48;
    }

    while (v14 < *(a1 + 72));
  }

  else if (!v13)
  {
    goto LABEL_33;
  }

  heap_Free(*(*a1 + 8), v13);
LABEL_33:
  a1[17] = 0;
  *(a1 + 72) = 0;
  IGTree = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "statpunc", &v41, &v40, &v39);
  if ((IGTree & 0x80000000) == 0 && v40)
  {
    __s1 = 0;
    paramc_ParamGetStr(*(*a1 + 40), "fevoice", &__s1);
    v16 = heap_Alloc(*(*a1 + 8), 48 * v40);
    a1[17] = v16;
    if (!v16)
    {
      goto LABEL_61;
    }

    if (v40)
    {
      for (i = 0; i < v40; ++i)
      {
        if (__s1 && cstdlib_strstr(__s1, "uni") || !cstdlib_strstr(v41[i], "extended"))
        {
          v18 = v41[i];
          v19 = cstdlib_strchr(v18, 124);
          if (v19)
          {
            *v19 = 0;
            v20 = v19 + 1;
            cstdlib_strcpy((a1[17] + 48 * *(a1 + 72)), v18);
            v21 = cstdlib_strchr(v20, 124);
            if (v21)
            {
              *v21 = 0;
              v22 = v21 + 1;
              cstdlib_strcpy((a1[17] + 48 * *(a1 + 72) + 4), v20);
              v23 = cstdlib_strchr(v22, 124);
              if (v23)
              {
                *v23 = 0;
                IGTree = statpunc_readIGTree(a1[1], a1[2], *a1, v22, a1[17] + 48 * *(a1 + 72));
                if ((IGTree & 0x80000000) != 0)
                {
                  return IGTree;
                }

                ++*(a1 + 72);
              }
            }
          }
        }
      }
    }
  }

  if ((IGTree & 0x80000000) == 0)
  {
    LOBYTE(v40) = 0;
    LOWORD(__s1) = 0;
    v24 = a1[19];
    if (v24)
    {
      heap_Free(*(*a1 + 8), v24);
    }

    v41 = 0;
    a1[19] = 0;
    *(a1 + 80) = 0;
    v25 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "statpuncorthmap", &v41, &__s1, &v40);
    if ((v25 & 0x80000000) != 0 || !__s1)
    {
      return v25;
    }

    v26 = heap_Alloc(*(*a1 + 8), __s1 << 9);
    a1[19] = v26;
    if (v26)
    {
      if (__s1)
      {
        v27 = 0;
        do
        {
          v28 = v41[v27];
          v29 = cstdlib_strchr(v28, 124);
          if (v29)
          {
            *v29 = 0;
            v30 = v29 + 1;
            cstdlib_strcpy((a1[19] + (*(a1 + 80) << 9)), v28);
            v31 = cstdlib_strchr(v30, 124);
            if (v31)
            {
              *v31 = 0;
              cstdlib_strcpy((a1[19] + (*(a1 + 80) << 9) + 256), v30);
              ++*(a1 + 80);
            }
          }

          ++v27;
        }

        while (v27 < __s1);
      }

      return v25;
    }

LABEL_61:
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 34000, 0);
    return v1;
  }

  return IGTree;
}

uint64_t fe_puncsptn_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62339, 168);
  if ((result & 0x80000000) != 0)
  {
    return 2311069704;
  }

  if (!a1)
  {
    return result;
  }

  v4 = a1[13];
  if (v4)
  {
    heap_Free(*(*a1 + 8), v4);
  }

  a1[13] = 0;
  v5 = a1[10];
  if (v5)
  {
    heap_Free(*(*a1 + 8), v5);
  }

  a1[10] = 0;
  v6 = a1[11];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  a1[11] = 0;
  v7 = a1[12];
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
  }

  a1[12] = 0;
  v8 = a1[16];
  if (v8)
  {
    heap_Free(*(*a1 + 8), v8);
  }

  a1[16] = 0;
  v9 = a1[17];
  if (*(a1 + 72))
  {
    v10 = 0;
    v11 = 8;
    do
    {
      statpunc_freeIGTree(*a1, *(v9 + v11));
      v9 = a1[17];
      *(v9 + v11) = 0;
      ++v10;
      v11 += 48;
    }

    while (v10 < *(a1 + 72));
    goto LABEL_19;
  }

  if (v9)
  {
LABEL_19:
    heap_Free(*(*a1 + 8), v9);
    a1[17] = 0;
  }

  v12 = a1[19];
  if (v12)
  {
    heap_Free(*(*a1 + 8), v12);
    a1[19] = 0;
  }

  objc_ReleaseObject(*(*a1 + 48), "LINGDB");
  objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
  objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t fe_puncsptn_ObjReopen(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 168) & 0x80000000) != 0)
  {
    return 2311069704;
  }

  return hlp_open(a1);
}

uint64_t fe_puncsptn_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62339, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2311069704;
  }
}

uint64_t fe_puncsptn_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v96 = 0;
  v95 = 0;
  __s1 = 0;
  v91 = 0;
  v89 = 0;
  if ((safeh_HandleCheck(a1, a2, 62339, 168) & 0x80000000) != 0)
  {
    return 2311069704;
  }

  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v94 = 0;
  v92 = 0;
  v90 = 0;
  *a5 = 1;
  v9 = *(a1 + 24);
  LOWORD(v88) = 0;
  v103 = 0;
  v102 = 0;
  *__src = 0;
  updated = (*(v9 + 104))(a3, a4, 1, 0, &v103 + 2);
  if ((updated & 0x80000000) != 0)
  {
    return updated;
  }

  v11 = (*(v9 + 184))(a3, a4, HIWORD(v103), 0, &v102);
  if ((v11 & 0x80000000) == 0 && v102 == 1)
  {
    v11 = (*(v9 + 104))(a3, a4, 3, HIWORD(v103), &v103);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v103;
      if (v103)
      {
        v13 = 0;
        while (1)
        {
          updated = (*(v9 + 168))(a3, a4, v12, 0, 1, __src, &v88);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (*__src > 3u)
          {
            v14 = v103;
          }

          else
          {
            updated = (*(v9 + 192))(a3, a4, v103);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            LOWORD(v103) = v13;
            v14 = v13;
          }

          if (v14)
          {
            updated = (*(v9 + 120))(a3, a4, v14, &v103);
            v13 = v14;
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          else
          {
            updated = (*(v9 + 104))(a3, a4, 3, HIWORD(v103), &v103);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          v12 = v103;
          if (!v103)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

LABEL_21:
  if (*(a1 + 144))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      updated = statpunc_Process(*a1, *(a1 + 24), a3, a4, *(a1 + 136) + v15, *(a1 + 160), *(a1 + 152));
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      ++v16;
      v15 += 48;
    }

    while (v16 < *(a1 + 144));
  }

  v11 = (*(*(a1 + 24) + 104))(a3, a4, 1, 0, &v100 + 2);
  if ((v11 & 0x80000000) == 0 && ((*(*(a1 + 24) + 184))(a3, a4, HIWORD(v100), 0, &v89) & 0x80000000) == 0 && v89 == 1)
  {
    v11 = (*(*(a1 + 24) + 176))(a3, a4, HIWORD(v100), 0, &v101, &v99);
    if ((v11 & 0x80000000) == 0 && v99 >= 2u)
    {
      v17 = *(*a1 + 8);
      v18 = (a1 + 104);
      v19 = *(a1 + 104);
      v20 = cstdlib_strlen(v101);
      v21 = heap_Realloc(v17, v19, (v20 + 101));
      if (!v21)
      {
        log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
        return 2311069706;
      }

      *(a1 + 104) = v21;
      cstdlib_strcpy(v21, v101);
      updated = (*(*(a1 + 24) + 176))(a3, a4, HIWORD(v100), 1, &v92, &v91);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v22 = (v92 + 12);
      v23 = *(v92 + 12);
      *(a1 + 112) = 0;
      v24 = v91;
      if (v91)
      {
        v25 = 0;
        while (1)
        {
          v26 = *v22;
          v22 += 8;
          if (v26 != v23)
          {
            break;
          }

          if (v91 == ++v25)
          {
            goto LABEL_39;
          }
        }

        v24 = v25;
      }

LABEL_39:
      HIWORD(v103) = v24;
      updated = (*(*(a1 + 48) + 112))(*(a1 + 32), *(a1 + 40), &v90, 0);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      __src[0] = 0;
      updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v100), &v100);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v27 = v100;
      if (v100)
      {
        v28 = 0;
        v29 = 0;
        do
        {
          updated = (*(*(a1 + 24) + 168))(a3, a4, v27, 0, 1, &v94, &v99);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v100, 1, 1, &v96, &v99);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v100, 2, 1, &v95, &v99);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v94 == 5)
          {
            if (v96 <= v28 || (v30 = __src[0], v96 >= __src[0]))
            {
              v34 = 0;
              v29 = v100;
            }

            else
            {
              v31 = v29;
              v32 = v95;
              v86 = v31;
              v33 = (*(*(a1 + 24) + 160))(a3, a4, v31, 2, 1, __src, &v98);
              v11 = v33;
              if (v32 > v30)
              {
                if ((v33 & 0x80000000) != 0)
                {
                  return v11;
                }

                updated = (*(*(a1 + 24) + 160))(a3, a4, v100, 1, 1, __src, &v98);
                v29 = v86;
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

LABEL_56:
                v34 = 0;
                goto LABEL_57;
              }

              if ((v33 & 0x80000000) != 0)
              {
                return v11;
              }

              v34 = v100;
              v29 = v86;
            }
          }

          else
          {
            if ((v94 & 0xFFFFFFFD) != 4)
            {
              goto LABEL_56;
            }

            v34 = 0;
            v28 = v96;
            __src[0] = v95;
          }

LABEL_57:
          updated = (*(*(a1 + 24) + 120))(a3, a4, v100, &v100);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v34)
          {
            updated = (*(*(a1 + 24) + 192))(a3, a4, v34);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          v27 = v100;
        }

        while (v100);
      }

      updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v100), &v100);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v97 = v100;
      v35 = v100;
      if (!v100)
      {
        goto LABEL_81;
      }

      while (1)
      {
        updated = (*(*(a1 + 24) + 168))(a3, a4, v35, 0, 1, &v94, &v99);
        if ((updated & 0x80000000) != 0)
        {
          return updated;
        }

        v36 = *(a1 + 24);
        if (v94 == 5)
        {
          updated = (*(v36 + 168))(a3, a4, v97, 1, 1, &v96, &v99);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v97, 2, 1, &v95, &v99);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 176))(a3, a4, v97, 4, &__s1, &v99);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v95 >= v96)
          {
            updated = hlp_Normalize(a1, (a1 + 104), v101, v96, v95, __s1, a3, a4, &v100, v92, &v103 + 1, &v91, v23);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v97 = v100;
            goto LABEL_78;
          }

          updated = (*(*(a1 + 24) + 120))(a3, a4, v97, &v97);
        }

        else
        {
          updated = (*(v36 + 120))(a3, a4, v97, &v97);
        }

        if ((updated & 0x80000000) != 0)
        {
          return updated;
        }

LABEL_78:
        if (v100)
        {
          v35 = v97;
          if (v97)
          {
            continue;
          }
        }

        v24 = HIWORD(v103);
LABEL_81:
        v37 = cstdlib_strlen(*v18);
        v38 = v91;
        if (v24 < v91)
        {
          v39 = 0;
          v40 = v23 + v37;
          v41 = v91 - v24;
          v42 = vdupq_n_s64(v41 - 1);
          v43 = (v41 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v44 = (v92 + 32 * v24 + 76);
          do
          {
            v45 = vdupq_n_s64(v39);
            v46 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(v45, xmmword_26ECC7980)));
            if (vuzp1_s16(v46, *v42.i8).u8[0])
            {
              *(v44 - 16) = v40;
            }

            if (vuzp1_s16(v46, *&v42).i8[2])
            {
              *(v44 - 8) = v40;
            }

            if (vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, vorrq_s8(v45, xmmword_26ECCE810)))).i32[1])
            {
              *v44 = v40;
              v44[8] = v40;
            }

            v39 += 4;
            v44 += 32;
          }

          while (v43 != v39);
          LOWORD(v24) = v38;
        }

        HIWORD(v103) = v24;
        updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v100), &v100);
        if ((updated & 0x80000000) == 0)
        {
          for (i = v100; v100; i = v100)
          {
            updated = (*(*(a1 + 24) + 168))(a3, a4, i, 0, 1, &v94, &v99);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v48 = v100;
            if (v94 != 5)
            {
LABEL_133:
              v65 = 0;
              goto LABEL_134;
            }

            updated = (*(*(a1 + 24) + 168))(a3, a4, v100, 1, 1, &v96, &v99);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            updated = (*(*(a1 + 24) + 168))(a3, a4, v100, 2, 1, &v95, &v99);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v49 = v96;
            if (v96 && v49 < cstdlib_strlen(*v18))
            {
              do
              {
                v50 = *v18;
                v51 = (*v18)[v96 - 1];
                if (v51 == 32)
                {
                  break;
                }

                if (v51 == 95)
                {
                  break;
                }

                v52 = ++v96;
              }

              while (cstdlib_strlen(v50) > v52);
            }

            v53 = v95;
            if (v95)
            {
              if (v53 >= cstdlib_strlen(*v18) || (v54 = v95, v54 >= cstdlib_strlen(*v18)))
              {
LABEL_108:
                v56 = v95;
              }

              else
              {
                while (1)
                {
                  v55 = *v18;
                  v56 = v95;
                  v57 = (*v18)[v95 - 1];
                  if (v57 == 32 || v57 == 95)
                  {
                    break;
                  }

                  ++v95;
                  if (cstdlib_strlen(v55) <= (v56 + 1))
                  {
                    goto LABEL_108;
                  }
                }
              }

              if (v56 && v56 < cstdlib_strlen(*v18) && (*(*(a1 + 72) + 128))(*(a1 + 56), *(a1 + 64), *(a1 + 104) + v95))
              {
                v58 = v95;
                LOWORD(v103) = 0;
                v88 = 0;
                updated = (*(*(a1 + 24) + 120))(a3, a4, v100, &v103);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (!v103)
                {
                  v88 = 2;
LABEL_122:
                  v59 = *v18;
                  v60 = v95;
                  v61 = cstdlib_strlen(*v18);
                  Utf8Symbol = utf8_GetUtf8Symbol(v59, v60, v61, __src);
                  do
                  {
                    v63 = v58--;
                  }

                  while (v58 && (*v18)[v58] == 32);
                  if (v95 > v63)
                  {
                    v64 = Utf8Symbol;
                    cstdlib_memmove(&(*v18)[v63 + Utf8Symbol], &(*v18)[v63], v95 - v63);
                    cstdlib_strncpy(&(*v18)[v63], __src, v64);
                  }

                  goto LABEL_127;
                }

                updated = (*(*(a1 + 24) + 168))(a3, a4);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (v88 != 5)
                {
                  goto LABEL_122;
                }

                updated = (*(*(a1 + 24) + 176))(a3, a4, v103, 4, &__s1, &v99);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (v88 != 5 || !__s1 || cstdlib_strcmp(__s1, "phon"))
                {
                  goto LABEL_122;
                }
              }
            }

LABEL_127:
            updated = (*(*(a1 + 24) + 160))(a3, a4, v100, 1, 1, &v96, &v98);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            updated = (*(*(a1 + 24) + 160))(a3, a4, v100, 2, 1, &v95, &v98);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v48 = v100;
            if (v94 != 5)
            {
              goto LABEL_133;
            }

            if (v96 == v95)
            {
              v65 = v100;
            }

            else
            {
              v65 = 0;
            }

LABEL_134:
            updated = (*(*(a1 + 24) + 120))(a3, a4, v48, &v100);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if (v65)
            {
              updated = (*(*(a1 + 24) + 192))(a3, a4, v65);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }
            }
          }

          if (*(a1 + 116) != 1 || (updated = updateTokenDomainLanguageTags(a1, a3, a4, HIWORD(v100), *(a1 + 104)), (updated & 0x80000000) == 0))
          {
            hlp_AdjustMarkersToWordBoundaries(*(a1 + 104), v92, v91);
            hlp_AdjustUserTnToWordBoundaries(*(a1 + 104), a3, a4, *(a1 + 24));
            if (cstdlib_strlen(*(a1 + 104)))
            {
              v66 = 0;
              v67 = 1;
              v68 = 1;
              while (1)
              {
                v69 = *v18;
                v70 = v67 - 1;
                v71 = (*v18)[v70];
                if (v71 == 44)
                {
                  if (v69[v68] == 44)
                  {
                    v69[v68] = 32;
                    LOBYTE(v71) = (*v18)[v70];
                  }

                  else
                  {
                    LOBYTE(v71) = 44;
                  }
                }

                if (cstdlib_strchr(" _", v71) && (v68 == 1 || v68 == cstdlib_strlen(*v18) || cstdlib_strchr(" _", (*v18)[v68])))
                {
                  if (v68 != cstdlib_strlen(*v18))
                  {
                    v72 = *v18;
                    if ((*v18)[v70] == 32 && v72[v68] == 95)
                    {
                      v72[v68] = 32;
                      v72 = *v18;
                    }

                    v73 = &v72[v68];
                    v74 = cstdlib_strlen(v72);
                    cstdlib_memmove((v73 - 1), v73, v74 - v68);
                  }

                  v75 = *(a1 + 104);
                  v75[cstdlib_strlen(v75) - 1] = 0;
                  updated = hlp_UpdateLingDBTokensForDeletion(a3, a4, *(a1 + 24), v70);
                  if ((updated & 0x80000000) != 0)
                  {
                    return updated;
                  }

                  hlp_UpdateMarkersForDeletion(v92, v91, v70);
                  --v66;
                }

                else
                {
                  ++v68;
                }

                v67 = v68;
                if (v68 > cstdlib_strlen(*v18))
                {
                  goto LABEL_161;
                }
              }
            }

            v66 = 0;
LABEL_161:
            v76 = *(a1 + 112) + v66;
            *(a1 + 112) = v76;
            v90 += v76;
            updated = (*(*(a1 + 48) + 104))(*(a1 + 32), *(a1 + 40));
            if ((updated & 0x80000000) == 0)
            {
              v77 = cstdlib_strlen(*(a1 + 104));
              *(v92 + 16) = v77;
              log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Space normalization: |%s|", *(a1 + 104));
              hlp_AdjustPuncMarkers(*(a1 + 104), v92, v91);
              v78 = *(*(a1 + 24) + 160);
              v79 = HIWORD(v100);
              v80 = cstdlib_strlen(*(a1 + 104));
              v11 = v78(a3, a4, v79, 0, (v80 + 1), *(a1 + 104), &v98);
              if ((v11 & 0x80000000) == 0)
              {
                v89 = 0;
                if (((*(*(a1 + 24) + 152))(a3, a4, 3, HIWORD(v100), &v89) & 0x80000000) == 0)
                {
                  if (v89)
                  {
                    v11 = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v100), &v100);
                    if ((v11 & 0x80000000) == 0)
                    {
                      v81 = v100;
                      if (v100)
                      {
                        v82 = 0;
                        while (1)
                        {
                          updated = (*(*(a1 + 24) + 168))(a3, a4, v81, 0, 1, &v94, &v99);
                          if ((updated & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (v94 == 4)
                          {
                            updated = (*(*(a1 + 24) + 192))(a3, a4, v100);
                            if ((updated & 0x80000000) != 0)
                            {
                              return updated;
                            }

                            LOWORD(v100) = v82;
                            v83 = v82;
                          }

                          else
                          {
                            v83 = v100;
                          }

                          v84 = *(a1 + 24);
                          if (v83)
                          {
                            v11 = (*(v84 + 120))(a3, a4, v83, &v100);
                            v82 = v83;
                            if ((v11 & 0x80000000) != 0)
                            {
                              return v11;
                            }
                          }

                          else
                          {
                            v11 = (*(v84 + 104))(a3, a4, 3, HIWORD(v100), &v100);
                            if ((v11 & 0x80000000) != 0)
                            {
                              return v11;
                            }
                          }

                          v81 = v100;
                          if (!v100)
                          {
                            return v11;
                          }
                        }

                        return updated;
                      }
                    }
                  }
                }
              }

              return v11;
            }
          }
        }

        return updated;
      }
    }
  }

  return v11;
}

uint64_t hlp_Normalize(uint64_t a1, const char **a2, const char *a3, unsigned int a4, unsigned int a5, char *a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10, unsigned __int16 *a11, unsigned __int16 *a12, int a13)
{
  v16 = a4;
  v240 = *MEMORY[0x277D85DE8];
  v238 = 0;
  v237 = a4;
  v236 = a4;
  v235 = 0;
  v234 = 0;
  v232 = 0;
  v233 = 0;
  v231 = 0;
  v230 = 0;
  v229 = *a9;
  v228 = a4;
  __s = 0;
  v19 = cstdlib_strlen(*a2);
  v226 = 0;
  v20 = a5 - v16;
  v224 = 0;
  v225 = 0;
  v223 = 0;
  cstdlib_strcpy(__dst, "disambiguate_punctuation");
  v218 = cstdlib_strlen(__dst);
  v21 = (a5 - v16 + 129);
  v22 = heap_Realloc(*(*a1 + 8), *(a1 + 80), v21);
  if (!v22)
  {
    goto LABEL_111;
  }

  *(a1 + 80) = v22;
  cstdlib_strcpy(v22, "");
  v23 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v21);
  if (!v23)
  {
    goto LABEL_111;
  }

  *(a1 + 88) = v23;
  cstdlib_strcpy(v23, "");
  v24 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v21);
  if (!v24)
  {
    goto LABEL_111;
  }

  v214 = v19;
  __s1 = a6;
  v221 = a7;
  v216 = a2;
  v217 = a5;
  v25 = 0;
  *(a1 + 96) = v24;
  v26 = *a9;
  v27 = 128;
  if (!*a9)
  {
    v28 = v16;
    v29 = 0;
    v30 = 0;
    goto LABEL_53;
  }

  v28 = v16;
  v29 = 0;
  v30 = 0;
  if (v237 < v217)
  {
    v213 = 0;
    v25 = 0;
    v212 = 1;
    v28 = v16;
    v31 = v217;
    v32 = a8;
    while (1)
    {
      v33 = (*(*(a1 + 24) + 168))(v221, v32, v26, 0, 1, &v234, &v238);
      if ((v33 & 0x80000000) != 0)
      {
        return v33;
      }

      v30 = (*(*(a1 + 24) + 168))(v221, v32, *a9, 1, 1, &v237, &v238);
      if ((v30 & 0x80000000) != 0)
      {
        return v30;
      }

      v34 = v237;
      if (v237 >= v31 || (v234 & 0xFFFFFFFD) != 4)
      {
        goto LABEL_46;
      }

      (*(*(a1 + 24) + 168))(v221, v32, *a9, 2, 1, &v236, &v238);
      if (v234 == 6)
      {
        v33 = (*(*(a1 + 24) + 176))(v221, v32, *a9, 4, &v235, &v238);
        if ((v33 & 0x80000000) != 0)
        {
          return v33;
        }
      }

      else
      {
        v235 = "_DT_";
      }

      v30 = (*(*(a1 + 24) + 176))(v221, v32, *a9, 3, &__s, &v238);
      if ((v30 & 0x80000000) != 0)
      {
        return v30;
      }

      v35 = cstdlib_strlen(__s);
      v25 = v25 + v35 - v236 + v237;
      v36 = cstdlib_strstr(__s, "▲");
      if (v36)
      {
        v37 = v36;
        do
        {
          v39 = v37[3];
          v38 = v37 + 3;
          if (!v39)
          {
            goto LABEL_243;
          }

          v40 = v25 - 3;
          while (cstdlib_strncmp(v38, "▼", 3uLL))
          {
            v41 = *++v38;
            --v40;
            if (!v41)
            {
              goto LABEL_243;
            }
          }

          if (!*v38)
          {
            goto LABEL_243;
          }

          v25 = v40 - 3;
          __s = v38 + 3;
          v37 = cstdlib_strstr(v38 + 3, "▲");
        }

        while (v37);
        v28 = v228;
      }

      cstdlib_strncat(*(a1 + 80), &(*v216)[v28 + *(a1 + 112)], v236 - v28);
      if (v237 > v28)
      {
        for (i = Utf8_LengthInUtf8chars(&(*v216)[v28 + *(a1 + 112)], v237 - v28); i; --i)
        {
          cstdlib_strcat(*(a1 + 88), " ");
        }
      }

      v43 = Utf8_LengthInUtf8chars(&(*v216)[v237 + *(a1 + 112)], v236 - v237);
      if (v43 >= (2 * cstdlib_strlen(v235) - 2))
      {
        cstdlib_strcat(*(a1 + 88), "X");
        v46 = *(a1 + 88);
        v47 = v235;
        v48 = cstdlib_strlen(v235);
        cstdlib_strncat(v46, v47 + 1, v48 - 2);
        v49 = v43 + 2;
        if (v49 != 2 * cstdlib_strlen(v235))
        {
          v50 = 0;
          v31 = v217;
          do
          {
            cstdlib_strcat(*(a1 + 88), "~");
            ++v50;
          }

          while (v49 - 2 * cstdlib_strlen(v235) > v50);
          goto LABEL_45;
        }
      }

      else
      {
        v209 = -2 - v43;
        if (v209 + 2 * cstdlib_strlen(v235))
        {
          v51 = 0;
          v44 = v213;
          v45 = v212;
          while (1)
          {
            if (v45 << 7 == v44)
            {
              v52 = (v45 + 1);
              v53 = v20 + 1 + ((v45 + 1) << 7);
              v54 = heap_Realloc(*(*a1 + 8), *(a1 + 80), v53);
              if (!v54)
              {
                goto LABEL_111;
              }

              *(a1 + 80) = v54;
              v55 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v53);
              if (!v55)
              {
                goto LABEL_111;
              }

              *(a1 + 88) = v55;
              v56 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v53);
              if (!v56)
              {
                goto LABEL_111;
              }

              *(a1 + 96) = v56;
              v45 = v52;
            }

            cstdlib_strcat(*(a1 + 80), "~");
            ++v51;
            ++v44;
            if (v209 + 2 * cstdlib_strlen(v235) <= v51)
            {
              goto LABEL_43;
            }
          }
        }

        v44 = v213;
        v45 = v212;
LABEL_43:
        v212 = v45;
        v213 = v44;
        cstdlib_strcat(*(a1 + 88), "X");
        v57 = *(a1 + 88);
        v58 = v235;
        v59 = cstdlib_strlen(v235);
        cstdlib_strncat(v57, v58 + 1, v59 - 2);
      }

      v31 = v217;
LABEL_45:
      cstdlib_strcat(*(a1 + 88), "Y");
      v60 = *(a1 + 88);
      v61 = v235;
      v62 = cstdlib_strlen(v235);
      cstdlib_strncat(v60, v61 + 1, v62 - 2);
      v28 = v236;
      v228 = v236;
      v34 = v237;
      v32 = a8;
LABEL_46:
      if (v34 < v31)
      {
        v30 = (*(*(a1 + 24) + 120))(v221, v32, *a9, a9);
        if ((v30 & 0x80000000) != 0)
        {
          return v30;
        }

        v34 = v237;
      }

      v26 = *a9;
      if (!*a9 || v34 >= v31)
      {
        v29 = v213;
        v27 = v212 << 7;
        break;
      }
    }
  }

LABEL_53:
  v63 = v217 - v28;
  if (v217 > v28)
  {
    cstdlib_strncat(*(a1 + 80), &(*v216)[v28 + *(a1 + 112)], v63);
    for (j = Utf8_LengthInUtf8chars(&(*v216)[v28 + *(a1 + 112)], v63); j; --j)
    {
      cstdlib_strcat(*(a1 + 88), " ");
    }
  }

  if (cstdlib_strstr(__s1, "spell"))
  {
    v65 = cstdlib_strlen(*(a1 + 80));
    v66 = v216;
    if (v65)
    {
      do
      {
        v67 = *(a1 + 80);
        v68 = (v65 - 1);
        if (*(v67 + v68) != 32)
        {
          break;
        }

        *(v67 + v68) = 0;
        *(*(a1 + 88) + Utf8_LengthInUtf8chars(*(a1 + 80), v68)) = 0;
        --v25;
        v65 = v68;
      }

      while (v68);
    }
  }

  else
  {
    v66 = v216;
  }

  if (v27 < v29)
  {
    goto LABEL_63;
  }

  v71 = *(a1 + 80);
  v72 = cstdlib_strlen(v71);
  v73 = Utf8_LengthInUtf8chars(v71, v72);
  v74 = v73;
  if (v73)
  {
    v75 = 0;
    do
    {
      *(*(a1 + 96) + v75++) = 1;
    }

    while (v73 != v75);
  }

  if (cstdlib_strlen(*(a1 + 88)))
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
    do
    {
      v79 = *(a1 + 88);
      v80 = v79[v78];
      if (v80 == 88)
      {
        ++v77;
      }

      if (v80 == 89)
      {
        ++v76;
      }

      ++v78;
    }

    while (cstdlib_strlen(v79) > v78);
  }

  else
  {
    LOWORD(v78) = 0;
    v77 = 0;
    v76 = 0;
  }

  v228 = v78;
  if (*(a1 + 124))
  {
    if (!v16)
    {
      v81 = *(a1 + 88);
      if (*v81 == 32)
      {
        *v81 = 40;
      }
    }

    if (v217 == cstdlib_strlen(a3))
    {
      v82 = *(a1 + 88);
      if (v82[cstdlib_strlen(v82) - 1] == 32)
      {
        v83 = *(a1 + 88);
        v83[cstdlib_strlen(v83) - 1] = 41;
      }
    }
  }

  if (!cstdlib_strcmp(__s1, "internal-nuance-system-norm") || !cstdlib_strcmp(__s1, "phon"))
  {
    goto LABEL_89;
  }

  if (*(a1 + 120))
  {
    v84 = cstdlib_strcmp(__s1, "spell");
    v85 = *(a1 + 80);
    if (v84 && !ToNorm(*(a1 + 80)))
    {
LABEL_89:
      v86 = *(a1 + 80);
      v232 = *(a1 + 88);
      v233 = v86;
      v231 = *(a1 + 96);
      goto LABEL_90;
    }
  }

  else
  {
    v85 = *(a1 + 80);
  }

  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s L1: %s", __dst, v85);
  v184 = *(*(a1 + 48) + 120);
  v185 = *(a1 + 80);
  v186 = cstdlib_strlen(v185);
  v33 = v184(*(a1 + 32), *(a1 + 40), 0, v185, v186);
  if ((v33 & 0x80000000) != 0)
  {
    return v33;
  }

  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s L2: %s", __dst, *(a1 + 88));
  v187 = *(*(a1 + 48) + 120);
  v188 = *(a1 + 88);
  v189 = cstdlib_strlen(v188);
  v33 = v187(*(a1 + 32), *(a1 + 40), 1, v188, v189);
  if ((v33 & 0x80000000) != 0)
  {
    return v33;
  }

  v33 = (*(*(a1 + 48) + 88))(*(a1 + 32), *(a1 + 40), *(a1 + 96), v74);
  if ((v33 & 0x80000000) != 0)
  {
    return v33;
  }

  if (cstdlib_strcmp(__s1, "normal") && cstdlib_strlen(__s1) + v218 + 2 <= 0x7F)
  {
    cstdlib_strcat(__dst, "_");
    cstdlib_strcat(__dst, __s1);
  }

  if (((*(*(a1 + 48) + 80))(*(a1 + 32), *(a1 + 40), __dst) & 0x80000000) != 0)
  {
    __dst[v218] = 0;
    v33 = (*(*(a1 + 48) + 80))(*(a1 + 32), *(a1 + 40), __dst);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }
  }

  v33 = (*(*(a1 + 48) + 128))(*(a1 + 32), *(a1 + 40), 0, &v233, &v230);
  if ((v33 & 0x80000000) != 0)
  {
    return v33;
  }

  if (cstdlib_strstr(__s1, "spell"))
  {
    v190 = v230++;
    v233[v190] = 32;
  }

  v233[v230] = 0;
  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s O1: %s", __dst, v233);
  v33 = (*(*(a1 + 48) + 128))(*(a1 + 32), *(a1 + 40), 1, &v232, &v230);
  if ((v33 & 0x80000000) != 0)
  {
    return v33;
  }

  if (cstdlib_strstr(__s1, "spell"))
  {
    v191 = v230++;
    v232[v191] = 32;
  }

  v232[v230] = 0;
  v192 = v233;
  v193 = cstdlib_strlen(v233);
  LODWORD(v192) = Utf8_LengthInUtf8chars(v192, v193);
  v194 = v232;
  v195 = cstdlib_strlen(v232);
  v196 = Utf8_LengthInUtf8chars(v194, v195) ^ v192;
  v69 = *(*a1 + 32);
  if (v196)
  {
    v30 = 2311069696;
    goto LABEL_64;
  }

  log_OutText(v69, "FE_PUNCSPTN", 5, 0, "%s O2: %s", __dst, v232);
  if (cstdlib_strlen(v232))
  {
    v198 = 0;
    v199 = 0;
    do
    {
      if (v232[v199] == 88)
      {
        ++v198;
      }

      ++v199;
    }

    while (cstdlib_strlen(v232) > v199);
  }

  else
  {
    v198 = 0;
  }

  if (v198 != v77)
  {
    goto LABEL_63;
  }

  if (cstdlib_strlen(v232))
  {
    v200 = 0;
    v201 = 0;
    do
    {
      if (v232[v201] == 89)
      {
        ++v200;
      }

      ++v201;
    }

    while (cstdlib_strlen(v232) > v201);
  }

  else
  {
    LOWORD(v201) = 0;
    v200 = 0;
  }

  v228 = v201;
  if (v200 != v76)
  {
LABEL_63:
    v30 = 2311069696;
    v69 = *(*a1 + 32);
LABEL_64:
    v70 = 33002;
    goto LABEL_244;
  }

  v30 = (*(*(a1 + 48) + 96))(*(a1 + 32), *(a1 + 40), &v231, &v230);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  if (cstdlib_strstr(__s1, "spell"))
  {
    v202 = v230++;
    v231[v202] = 0;
  }

  v66 = v216;
LABEL_90:
  v87 = *(a1 + 80);
  LODWORD(v88) = v217;
  if (*v87 != 32)
  {
    v89 = 0;
    v90 = 0;
    while (v233[v89] == 32)
    {
      v89 = ++v90;
      if (v87[v90] == 32)
      {
        goto LABEL_96;
      }
    }

    LODWORD(v89) = v90;
LABEL_96:
    if (v89)
    {
      v91 = *a12;
      if (v91 >= 2)
      {
        v92 = *(a10 + 12) + v16 + *(a1 + 112);
        v93 = v92 + v89;
        v94 = (a10 + 44);
        v95 = v91 - 1;
        do
        {
          if (v92 <= *v94 && *v94 < v93)
          {
            *v94 = v93;
          }

          v94 += 8;
          --v95;
        }

        while (v95);
      }
    }
  }

  v97 = v25 + cstdlib_strlen(v233);
  v98 = (v97 - cstdlib_strlen(*(a1 + 80)));
  if (v98 <= 0)
  {
    if (v98 < 0)
    {
      for (k = *(a1 + 112) + v217; k <= cstdlib_strlen(*v66); ++k)
      {
        (*v66)[k + v98] = (*v66)[k];
      }
    }

    goto LABEL_114;
  }

  v99 = heap_Realloc(*(*a1 + 8), *v66, (v214 + v98 + 101));
  if (!v99)
  {
LABEL_111:
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
    return 2311069706;
  }

  *v66 = v99;
  cstdlib_memset((v99 + v214), 0, (v98 + 101));
  v100 = cstdlib_strlen(*v66);
  if ((*(a1 + 112) + v217) <= v100)
  {
    v101 = v100;
    do
    {
      (*v66)[v101 + v98] = (*v66)[v100--];
      v101 = v100;
    }

    while ((*(a1 + 112) + v217) <= v100);
  }

LABEL_114:
  v103 = 0;
  v104 = 0;
  v105 = a11;
  v237 = v16;
  v228 = 0;
  LOWORD(v223) = 0;
  v106 = *(a1 + 112) + v16;
  v107 = v229;
  if (!v229 || v217 <= v16)
  {
    v175 = 0;
    v176 = 0;
    goto LABEL_246;
  }

  v207 = *(a1 + 112) + v16;
  v210 = 0;
  v205 = 0;
  v204 = a10 + 12;
  v108 = a8;
  v109 = a12;
  while (1)
  {
    v33 = (*(*(a1 + 24) + 168))(v221, v108, v107, 0, 1, &v234, &v238);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }

    if (v234 != 7)
    {
      v33 = (*(*(a1 + 24) + 168))(v221, v108, v229, 1, 1, &v237, &v238);
      if ((v33 & 0x80000000) != 0)
      {
        return v33;
      }

      v33 = (*(*(a1 + 24) + 168))(v221, v108, v229, 2, 1, &v236, &v238);
      if ((v33 & 0x80000000) != 0)
      {
        return v33;
      }
    }

    if (v237 >= v88)
    {
      goto LABEL_239;
    }

    if ((v234 & 0xFFFFFFFD) == 4)
    {
      break;
    }

    if (v234 == 5)
    {
      v113 = *(a1 + 112);
      HIWORD(v225) = v113 + v237;
      v114 = v113 + v98 + v236;
LABEL_237:
      LOWORD(v225) = v114;
      v33 = (*(*(a1 + 24) + 160))(v221, v108, v229, 1, 1, &v225 + 2, &v224 + 2);
      if ((v33 & 0x80000000) != 0)
      {
        return v33;
      }

      v33 = (*(*(a1 + 24) + 160))(v221, v108, v229, 2, 1, &v225, &v224 + 2);
      if ((v33 & 0x80000000) != 0)
      {
        return v33;
      }
    }

LABEL_239:
    v30 = (*(*(a1 + 24) + 120))(v221, v108, v229, &v229);
    if ((v30 & 0x80000000) != 0)
    {
      return v30;
    }

    v107 = v229;
    if (!v229 || v237 >= v88)
    {
      v103 = v228;
      v104 = v223;
      v175 = v205;
      v106 = v207;
      v176 = v210;
LABEL_246:
      v211 = v176;
      do
      {
        v177 = v176;
      }

      while (v232[v176++]);
      hlp_updateBytePositions(v177, v233, v231, *(a1 + 80), &v228, &v223);
      if ((v228 - v103 + v106) <= v98 + v214 + 100)
      {
        cstdlib_memcpy(&(*v216)[v106], &v233[v103], v228 - v103);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Normalizing to: |%s|", *v216);
        v179 = *v105;
        if (v179 < *a12)
        {
          v180 = a13 + v16;
          do
          {
            v181 = a10 + 32 * v179;
            v183 = *(v181 + 12);
            v182 = (v181 + 12);
            if (v217 < (v183 - a13))
            {
              break;
            }

            hlp_updateMarkerPosition((*(a1 + 80) + v104), &v231[v211], &v233[v103], v180, (v177 - v211), v175 + *(a1 + 112), v182);
            LOWORD(v179) = *a11 + 1;
            *a11 = v179;
          }

          while (*a12 > v179);
        }

        *(a1 + 112) += v98;
        return v30;
      }

      goto LABEL_63;
    }
  }

  v110 = v228;
  v111 = v223;
    ;
  }

  hlp_updateBytePositions(m, v233, v231, *(a1 + 80), &v228, &v223);
  v115 = v228;
  cstdlib_memcpy(&(*v216)[v207], &v233[v110], v228 - v110);
  v116 = *v105;
  if (v116 < *v109)
  {
    do
    {
      v117 = a10 + 32 * v116;
      v119 = *(v117 + 12);
      v118 = (v117 + 12);
      if (v237 <= (v119 - a13))
      {
        break;
      }

      hlp_updateMarkerPosition((*(a1 + 80) + v111), &v231[v210], &v233[v110], a13 + v16, (m - v210), *(a1 + 112) + v205, v118);
      LOWORD(v116) = *a11 + 1;
      *a11 = v116;
    }

    while (*a12 > v116);
  }

  v120 = 0;
  v208 = v115 - v110 + v207;
  v206 = v16 + v205 + v115 - v110 - v237;
  v16 = v236;
  v121 = a8;
  v109 = a12;
  while (2)
  {
    v122 = v232[m];
    if (v122 == 88)
    {
      v120 = m;
LABEL_138:
      m = (m + 1);
      continue;
    }

    break;
  }

  if (v232[m] && v122 != 89)
  {
    goto LABEL_138;
  }

  v123 = 2 * m;
  if (v122 != 89)
  {
    v123 = 0;
  }

  v124 = v123 - v120;
  v88 = v217;
  do
  {
    if (v122 == 41 && *(a1 + 124))
    {
      break;
    }

    if (!v122)
    {
      break;
    }

    if (v122 == 32)
    {
      break;
    }

    if (v122 == 126)
    {
      break;
    }

    if (v124 == m)
    {
      break;
    }

    m = (m + 1);
    v122 = v232[m];
  }

  while (v122 != 88);
  v210 = m;
  hlp_updateBytePositions(m, v233, v231, *(a1 + 80), &v228, &v223);
  v33 = (*(*(a1 + 24) + 176))(v221, a8, v229, 3, &__s, &v238);
  if ((v33 & 0x80000000) != 0)
  {
    return v33;
  }

  LOWORD(v224) = 0;
  HIWORD(v223) = 0;
  if (v234 == 6 && ((*(*(a1 + 24) + 184))(v221, a8, v229, 5, &v224) & 0x80000000) == 0 && v224 == 1)
  {
    v33 = (*(*(a1 + 24) + 176))(v221, a8, v229, 5, &v226, &v223 + 2);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }
  }

  v125 = cstdlib_strstr(__s, "▲");
  if (!v125)
  {
LABEL_201:
    v33 = (*(*(a1 + 24) + 168))(v221, v121, v229, 0, 1, &v234, &v238);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }

    LOWORD(v224) = 0;
    if (v234 == 6 && ((*(*(a1 + 24) + 184))(v221, v121, v229, 5, &v224) & 0x80000000) == 0 && v224 == 1)
    {
      v33 = (*(*(a1 + 24) + 176))(v221, v121, v229, 5, &v226, &v238);
      v149 = v216;
      v105 = a11;
      if ((v33 & 0x80000000) != 0)
      {
        return v33;
      }

      v150 = cstdlib_strchr(&a3[v237], 32);
      v151 = 0;
      if (v150 && v238 >= 2u)
      {
        v151 = 0;
        do
        {
          v152 = *a11;
          if (v152 < *v109)
          {
            v153 = v226;
            v154 = a13 + v206 + v237;
            v155 = (v204 + 32 * v152);
            do
            {
              if (v150 - a3 <= (*v155 - a13))
              {
                break;
              }

              *v155 = v154 + *(a1 + 112) + *(v153 + 2 * v151);
              v155 += 16;
              *a11 = ++v152;
            }

            while (v152 < *v109);
          }

          v156 = v150 - 1;
          do
          {
            v157 = *++v156;
          }

          while (v157 == 32);
          v150 = cstdlib_strchr(v156, 32);
          ++v151;
        }

        while (v150 && v238 - 1 > v151);
      }

      v158 = *a11;
      if (v158 < *v109)
      {
        v159 = v236;
        v160 = v226;
        v161 = a13 + v206 + v237;
        v162 = (v204 + 32 * v158);
        do
        {
          if (v159 <= (*v162 - a13))
          {
            break;
          }

          *v162 = v161 + *(a1 + 112) + *(v160 + 2 * v151);
          v162 += 16;
          *a11 = ++v158;
        }

        while (v158 < *v109);
      }
    }

    else
    {
      v149 = v216;
      v105 = a11;
      if (cstdlib_strcmp(__s1, "prompt") && cstdlib_strcmp(__s1, "internal-nuance-system-norm"))
      {
        v163 = *a11;
        if (v163 < *v109)
        {
          v164 = v236;
          v165 = a13 + v206 + v237;
          v166 = (v204 + 32 * v163);
          do
          {
            if (v164 <= (*v166 - a13))
            {
              break;
            }

            *v166 = v165 + *(a1 + 112);
            v166 += 16;
            *a11 = ++v163;
          }

          while (v163 < *v109);
        }
      }

      else
      {
        v167 = *a11;
        if (v167 < *v109)
        {
          v168 = v236;
          v169 = (v204 + 32 * v167);
          do
          {
            if (v168 <= (*v169 - a13))
            {
              break;
            }

            *v169 += v206 + *(a1 + 112);
            v169 += 8;
            *a11 = ++v167;
          }

          while (v167 < *v109);
        }
      }
    }

    v170 = &(*v149)[v208];
    v171 = __s;
    v172 = cstdlib_strlen(__s);
    cstdlib_memcpy(v170, v171, v172);
    v173 = cstdlib_strlen(__s);
    if (v234 == 6)
    {
      HIWORD(v225) = v237 + v206 + *(a1 + 112);
    }

    v207 = v208 + v173;
    v174 = v206 + cstdlib_strlen(__s);
    v205 = v174 - v236 + v237;
    v108 = a8;
    if (v234 == 6)
    {
      v114 = v174 + v237 + *(a1 + 112);
      goto LABEL_237;
    }

    goto LABEL_239;
  }

  v126 = v125;
  v203 = 0;
  while (1)
  {
    v127 = v88;
    v222 = 0;
    cstdlib_memset(v126, 0, 3uLL);
    v128 = v126 + 3;
    if (!v126[3])
    {
      break;
    }

    v129 = -3 - v126;
    v130 = -6;
    v131 = v126 + 3;
    while (cstdlib_strncmp(v131, "▼", 3uLL))
    {
      v132 = *++v131;
      --v130;
      --v129;
      if (!v132)
      {
        goto LABEL_243;
      }
    }

    if (!*v131)
    {
      break;
    }

    cstdlib_memset(v131, 0, 3uLL);
    v133 = HIWORD(v223);
    if (HIWORD(v223))
    {
      v134 = 0;
      v135 = v226;
      v136 = -v129 - __s;
      do
      {
        if (v135)
        {
          v137 = *(v135 + 2 * v134);
          if (v136 < v137)
          {
            *(v135 + 2 * v134) = v137 + v130;
            v133 = HIWORD(v223);
          }
        }

        ++v134;
      }

      while (v134 < v133);
    }

    LOWORD(v222) = v229;
    v33 = (*(*(a1 + 24) + 168))(v221, a8);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }

    v138 = v222;
    if (HIWORD(v222) == v237 && v222 != 0)
    {
      while (1)
      {
        v140 = v138;
        v33 = (*(*(a1 + 24) + 120))(v221, a8, v138, &v222);
        if ((v33 & 0x80000000) != 0)
        {
          return v33;
        }

        if (!v222)
        {
          goto LABEL_175;
        }

        v33 = (*(*(a1 + 24) + 168))(v221, a8);
        if ((v33 & 0x80000000) != 0)
        {
          return v33;
        }

        v138 = v222;
        if (HIWORD(v222) != v237 || v222 == 0)
        {
          goto LABEL_175;
        }
      }
    }

    v140 = 0;
LABEL_175:
    LOWORD(v222) = v140;
    v141 = v140;
    if (v203)
    {
      v33 = (*(*(a1 + 24) + 120))(v221, a8, v140, &v222);
      if ((v33 & 0x80000000) != 0)
      {
        return v33;
      }

      v141 = v222;
    }

    if (v141)
    {
      v33 = (*(*(a1 + 24) + 168))(v221, a8, v141, 0, 1, &v234, &v238);
      if ((v33 & 0x80000000) != 0)
      {
        return v33;
      }

      while (v222 && v234 == 7)
      {
        v140 = v222;
        v33 = (*(*(a1 + 24) + 120))(v221, a8, v222, &v222);
        if ((v33 & 0x80000000) != 0)
        {
          return v33;
        }

        if (!v222)
        {
          break;
        }

        v33 = (*(*(a1 + 24) + 168))(v221, a8);
        if ((v33 & 0x80000000) != 0)
        {
          return v33;
        }
      }
    }

    LOWORD(v222) = v140;
    v33 = (*(*(a1 + 24) + 80))(v221, a8, v140, &v222);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }

    v234 = 7;
    v33 = (*(*(a1 + 24) + 160))(v221, a8, v222, 0, 1, &v234, &v224 + 2);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }

    HIWORD(v222) = v237 + v206 + *(a1 + 112) + v126 - __s;
    v33 = (*(*(a1 + 24) + 160))(v221, a8, v222, 1, 1, &v222 + 2, &v224 + 2);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }

    v33 = (*(*(a1 + 24) + 160))(v221, a8, v222, 2, 1, &v222 + 2, &v224 + 2);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }

    v143 = *(*(a1 + 24) + 160);
    v144 = v222;
    v145 = cstdlib_strlen(v128);
    v33 = v143(v221, a8, v144, 4, (v145 + 1), v128, &v224 + 2);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }

    v146 = __s;
    v147 = cstdlib_strlen(__s);
    v148 = cstdlib_strlen(v131 + 3);
    cstdlib_memmove(&v146[v147], v131 + 3, v148 + 1);
    v126 = cstdlib_strstr(__s, "▲");
    v203 = 1;
    v121 = a8;
    v109 = a12;
    v88 = v127;
    if (!v126)
    {
      goto LABEL_201;
    }
  }

LABEL_243:
  v30 = 2311069696;
  v69 = *(*a1 + 32);
  v70 = 33003;
LABEL_244:
  log_OutPublic(v69, "FE_PUNCSPTN", v70, 0);
  return v30;
}

uint64_t updateTokenDomainLanguageTags(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v248 = 0;
  v249[0] = 0;
  v247 = 0;
  v246 = 0;
  v245 = 0;
  LogLevel = log_GetLogLevel(*(*a1 + 32));
  v244 = 0;
  v243 = 0;
  v242 = -1;
  v241 = 0;
  v240 = 0;
  v11 = (*(a1[3] + 152))(a2, a3, 3, a4, &v240);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (!v240)
  {
    if (LogLevel >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "no tokens to process for langmaps");
    }

    return v11;
  }

  v11 = (*(a1[3] + 104))(a2, a3, 3, a4, v249 + 2);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_22:
    v19 = 0;
LABEL_23:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_24;
  }

  v12 = HIWORD(v249[0]);
  if (!HIWORD(v249[0]))
  {
    goto LABEL_37;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    if (v14)
    {
      v14 = 1;
    }

    else
    {
      v11 = (*(a1[3] + 168))(a2, a3, v12, 0, 1, &v244, v249);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_39;
      }

      v12 = HIWORD(v249[0]);
      if (v244 == 6)
      {
        v11 = (*(a1[3] + 184))(a2, a3, HIWORD(v249[0]), 6, &v248 + 2);
        if ((v11 & 0x80000000) != 0)
        {
LABEL_39:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v246 = v13;
          goto LABEL_24;
        }

        v14 = HIWORD(v248) == 1;
        v12 = HIWORD(v249[0]);
      }

      else
      {
        v14 = 0;
      }
    }

    ++v13;
    v15 = (*(a1[3] + 120))(a2, a3, v12, v249 + 2);
    v12 = HIWORD(v249[0]);
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = HIWORD(v249[0]) == 0;
    }
  }

  while (!v16);
  v246 = v13;
  if (!v14)
  {
LABEL_37:
    log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "No LangMaps to process");
    return v11;
  }

  v17 = cstdlib_strlen(a5);
  if (LogLevel < 5)
  {
    v19 = 0;
  }

  else
  {
    v18 = heap_Calloc(*(*a1 + 8), 1, v17 + 2);
    v19 = v18;
    if (!v18)
    {
      v11 = 2311069706;
      v28 = *a1;
      goto LABEL_56;
    }

    cstdlib_strcpy(v18, a5);
    dumpLingDB(a1, a2, a3, a4, a5, v19, "lingdb at start of langmap expansion");
  }

  __c = v17;
  v26 = v17 + 1;
  v27 = heap_Calloc(*(*a1 + 8), 1, v26);
  v28 = *a1;
  if (!v27)
  {
    v11 = 2311069706;
LABEL_56:
    log_OutPublic(*(v28 + 32), "FE_PUNCSPTN", 33000, 0);
    goto LABEL_23;
  }

  v237 = v27;
  v29 = heap_Calloc(*(v28 + 8), 1, 2 * v26);
  v30 = *a1;
  if (!v29)
  {
    v11 = 2311069706;
    log_OutPublic(*(v30 + 32), "FE_PUNCSPTN", 33000, 0);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_129;
  }

  v230 = v29;
  v31 = heap_Calloc(*(v30 + 8), 1, 4 * v26);
  v32 = *a1;
  v229 = v31;
  if (!v31 || (v33 = heap_Calloc(*(v32 + 8), 1, 28 * v13 + 28), v247 = v33, v32 = *a1, !v33))
  {
    v11 = 2311069706;
    log_OutPublic(*(v32 + 32), "FE_PUNCSPTN", 33000, 0);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_127;
  }

  v34 = v33;
  v217 = LogLevel;
  v22 = heap_Calloc(*(v32 + 8), 1, 48);
  v35 = *a1;
  if (!v22)
  {
    v11 = 2311069706;
    log_OutPublic(*(v35 + 32), "FE_PUNCSPTN", 33000, 0);
    v20 = 0;
    v21 = 0;
    goto LABEL_127;
  }

  __s = a5;
  v21 = heap_Calloc(*(v35 + 8), 1, 1024);
  if (!v21)
  {
    goto LABEL_125;
  }

  v242 = -1;
  v36 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "normal", &v243, &v242, &v241);
  if ((v36 & 0x80000000) != 0)
  {
    v11 = v36;
LABEL_126:
    v20 = 0;
    goto LABEL_127;
  }

  if (v242)
  {
    v37 = cstdlib_strchr(*v243, v241);
    if (v37)
    {
      *v37 = 0;
    }

    v38 = *v243;
  }

  else
  {
    v38 = "normal";
  }

  v39 = *(*a1 + 8);
  __src = v38;
  v40 = cstdlib_strlen(v38);
  v41 = heap_Calloc(v39, 1, (v40 + 1));
  if (!v41)
  {
LABEL_125:
    v11 = 2311069706;
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
    goto LABEL_126;
  }

  v42 = v41;
  cstdlib_strcpy(v41, __src);
  *v22 = v42;
  v43 = (*(a1[3] + 104))(a2, a3, 3, a4, v249 + 2);
  if ((v43 & 0x80000000) != 0)
  {
    v11 = v43;
    v20 = 1;
    goto LABEL_127;
  }

  v246 = 0;
  v44 = HIWORD(v249[0]);
  v45 = 0;
  if (!HIWORD(v249[0]))
  {
    LOWORD(v216) = 1;
LABEL_132:
    if (v217 < 5)
    {
      __srcc = v247;
      v87 = v45;
      v11 = modifyTokenLangMaps(a1, a2, a3, v247, v45, __s);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_345;
      }
    }

    else
    {
      v87 = v45;
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP before processing");
      v88 = v247;
      dumpTokDB(a1, a2, a3, v247, v87);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      v11 = modifyTokenLangMaps(a1, a2, a3, v88, v87, __s);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_345;
      }

      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP after langmap realign");
      __srcc = v88;
      dumpTokDB(a1, a2, a3, v88, v87);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v237);
    }

    v89 = v87;
    v220 = v87;
    if (v87)
    {
      v90 = 0;
      v91 = __srcc;
      while (1)
      {
        v92 = &v91[28 * v90];
        if (*(v92 + 3) != 3 && *(v92 + 2) == 6)
        {
          v211 = v90;
          v11 = (*(a1[3] + 184))(a2, a3, *v92, 6, &v248 + 2);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_345;
          }

          v89 = v220;
          v91 = __srcc;
          if (HIWORD(v248) == 1)
          {
            v11 = (*(a1[3] + 176))(a2, a3, *v92, 6, &v245, v249);
            if ((v11 & 0x80000000) != 0)
            {
              goto LABEL_345;
            }

            v93 = cstdlib_strlen(v245);
            v94 = heap_Calloc(*(*a1 + 8), 1, v93 + 1);
            if (!v94)
            {
LABEL_347:
              v11 = 2311069706;
              goto LABEL_350;
            }

            v95 = v94;
            cstdlib_strcpy(v94, v245);
            v96 = *&__srcc[28 * v211 + 2];
            v97 = *(v92 + 2);
            if (v96 < v97)
            {
              v98 = *v95;
              v99 = &v95[v96];
              do
              {
                if (v99[-*(v92 + 1)] != 32)
                {
                  v98 = v99[-*(v92 + 1)];
                }

                if (v98 != 32)
                {
                  v237[v96] = v98;
                  LOWORD(v97) = *(v92 + 2);
                }

                ++v99;
                ++v96;
              }

              while (v96 < v97);
            }

            v100 = *v92;
            heap_Free(*(*a1 + 8), v95);
            v89 = v220;
            v91 = __srcc;
            v90 = 0;
            while (*&__srcc[28 * v90] != v100)
            {
              if (++v90 >= v220)
              {
                v90 = v220;
                break;
              }
            }
          }
        }

        if (++v90 >= v89)
        {
          goto LABEL_158;
        }
      }
    }

    v91 = __srcc;
LABEL_158:
    if (v217 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP after inserting langMaps");
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v237);
      v89 = v220;
      v91 = __srcc;
    }

    if (v89)
    {
      v101 = 0;
      v102 = v89;
      v103 = v91 + 36;
      v104 = 2;
      v105 = __c;
      v212 = v89;
      do
      {
        v106 = &v91[28 * v101];
        if (*(v106 + 2) != 6 || *(v106 + 5))
        {
          goto LABEL_201;
        }

        v107 = v106[2];
        v108 = v107;
        v109 = v107;
        if (v105 > v107)
        {
          v109 = v106[2];
          do
          {
            if (__s[v109] == 32)
            {
              break;
            }

            ++v109;
          }

          while (v105 > v109);
          v108 = v109;
        }

        if (__s[v109] == 32 && v105 > v108)
        {
          do
          {
            if (__s[v109] != 32)
            {
              break;
            }

            ++v109;
          }

          while (v105 > v109);
          v108 = v109;
        }

        if (v105 < v108)
        {
          goto LABEL_201;
        }

        v201 = v104;
        v205 = v103;
        if (v107 != v109)
        {
          v195 = v108;
          v198 = &v91[28 * v101];
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting pTokDB[%d].to %d -> %d, as not end of word (u16SentLen=%d)", v101, v107, v108, __c);
          v108 = v195;
          v106 = v198;
          v102 = v212;
          v91 = __srcc;
        }

        if (v101 + 1 >= v102)
        {
          goto LABEL_194;
        }

        v111 = v201;
        for (i = v205; ; i += 28)
        {
          v113 = *(i - 3);
          v114 = v109 <= v113 || *i != 6 || *(i + 1) == 3 || v230[v109] == v230[v113];
          if (v111 >= v102)
          {
            if (!v114)
            {
              goto LABEL_199;
            }

            goto LABEL_194;
          }

          if (v109 <= *(i + 11))
          {
            break;
          }

          if (!v114)
          {
            goto LABEL_199;
          }

LABEL_191:
          ++v111;
        }

        if (*(i + 7) != 6 && v114)
        {
          goto LABEL_191;
        }

        if (!v114)
        {
LABEL_199:
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "block adjusting: bisects token rec %d -> %d,%d", *&v91[28 * v111], *&v91[28 * v111 + 2], *&v91[28 * v111 + 4]);
          v102 = v212;
          v91 = __srcc;
          v105 = __c;
          goto LABEL_200;
        }

LABEL_194:
        v115 = &v91[28 * v101];
        v116 = *(v115 + 2);
        if (v116 < v109)
        {
          v117 = &v237[v116];
          v118 = v109 - v116;
          do
          {
            *v117++ = v237[*&v91[28 * v101 + 2]];
            --v118;
          }

          while (v118);
        }

        *(v115 + 2) = v109;
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "adjusted rec %d -> %d,%d", *v106, v106[1], v108);
        v91 = __srcc;
        v105 = __c;
        v102 = v212;
LABEL_200:
        v104 = v201;
        v103 = v205;
LABEL_201:
        ++v101;
        v103 += 28;
        ++v104;
      }

      while (v101 != v102);
      v119 = 0;
      while (1)
      {
        v120 = &v91[28 * v119];
        if (*(v120 + 2) != 6)
        {
          goto LABEL_236;
        }

        v121 = *(v120 + 1);
        v122 = *(v120 + 1);
        if (v121 >= 1)
        {
          break;
        }

        if (v121 < 0)
        {
          goto LABEL_236;
        }

LABEL_210:
        if (*__s == 32)
        {
          v123 = 0;
          v124 = 0;
LABEL_212:
          if ((v123 + 1) != v121)
          {
            __ca = &v91[28 * v119];
            v206 = v123 + 1;
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting start pos %d -> %d", v122, (v123 + 1));
            v126 = v206;
            goto LABEL_219;
          }

          if (!v123)
          {
            goto LABEL_218;
          }

          goto LABEL_236;
        }

        if (*(v120 + 1))
        {
          v124 = 0;
LABEL_218:
          __ca = &v91[28 * v119];
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting start pos %d -> %d", v122, 0);
          v126 = 0;
LABEL_219:
          v127 = 0;
          v128 = &__srcc[28 * v119];
          v131 = *(v128 + 1);
          v129 = (v128 + 2);
          v130 = v131;
          do
          {
            v132 = &__srcc[28 * v127];
            v133 = v132[1];
            if (v133 > v130)
            {
              break;
            }

            if (v119 != v127)
            {
              v134 = *(v132 + 2);
              if (v133 <= v126 && v134 == 6)
              {
                if (v132[2] > v126)
                {
                  goto LABEL_238;
                }
              }

              else if (v134 == 5 && *(v132 + 3) != 3 && v230[v124] != v230[v133])
              {
LABEL_238:
                log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "block adjusting: bisects token rec %d -> %d,%d", *v132, v132[1], v132[2]);
                v91 = __srcc;
                v102 = v212;
                goto LABEL_236;
              }
            }

            ++v127;
          }

          while (v127 < v220);
          if (v130 > v126)
          {
            v136 = v237[v130];
            v137 = v126;
            do
            {
              v237[v137++] = v136;
            }

            while (v137 < *v129);
          }

          *v129 = v126;
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "adjusted rec %d -> %d,%d", *__ca, v126, __ca[2]);
          v91 = __srcc;
          v102 = v212;
        }

LABEL_236:
        if (++v119 == v102)
        {
          goto LABEL_239;
        }
      }

      v123 = *(v120 + 1);
      while (1)
      {
        v124 = v123;
        if (__s[v123] == 32)
        {
          goto LABEL_212;
        }

        v125 = v123--;
        if (v125 <= 1)
        {
          goto LABEL_210;
        }
      }
    }

LABEL_239:
    if (v217 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "After Adjusting End Check");
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v237);
    }

    v138 = cstdlib_strlen(__s);
    v139 = v138;
    v140 = v237;
    if (v138)
    {
      v141 = 0;
      v142 = 0;
      v143 = *v237;
      v199 = v138;
      v196 = v138;
      do
      {
        v144 = v140[v142];
        if (v144 == v143 || __s[v142] != 32)
        {
          ++v142;
          v143 = v144;
        }

        else
        {
          v145 = 0;
          v146 = v142;
          do
          {
            v147 = v146;
            v148 = v145;
            if (++v146 >= v138)
            {
              break;
            }

            if (v140[v146] != v144)
            {
              break;
            }

            ++v145;
          }

          while (__s[v146] == 32);
          if (v143 != 80)
          {
            __cb = v143;
            v213 = v147;
            v202 = v142;
            v207 = &v140[v142];
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Append region %d..%d to previous %c region", v141, v146, v143);
            v147 = v213;
            v143 = __cb;
            v139 = v196;
            v138 = v199;
            v140 = v237;
            if (v202 < v146)
            {
              memset(v207, __cb, v148 + 1);
              v147 = v213;
              v143 = __cb;
              v139 = v196;
              v138 = v199;
              v140 = v237;
            }
          }

          v142 = v147 + 2;
        }

        v141 = v142;
      }

      while (v139 > v142);
    }

    v149 = cstdlib_strlen(__s);
    v150 = v237;
    __cc = v149;
    v151 = v220;
    if (v149 >= 2u)
    {
      v152 = v149 - 1;
      v153 = v237 + 1;
      v154 = __s;
      do
      {
        v155 = *(v153 - 1);
        v156 = v155 == 80 || v155 == *v153;
        if (!v156 && *v154 != 32)
        {
          *v153 = v155;
        }

        ++v153;
        ++v154;
        --v152;
      }

      while (v152);
    }

    v214 = v149;
    if (v217 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "After Region Check");
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v237);
      v151 = v220;
      v150 = v237;
    }

    if (v151)
    {
      v157 = v151;
      v158 = (__srcc + 16);
      do
      {
        if (*(v158 - 2) == 5)
        {
          v159 = cstdlib_strcmp(v22[*v158], "phon");
          v150 = v237;
          if (v159)
          {
            *(v158 - 1) = 3;
          }
        }

        v158 += 14;
        --v157;
      }

      while (v157);
    }

    v160 = __cc;
    if (__cc)
    {
      v161 = 0;
      v162 = v230;
      v163 = *v230;
      v164 = *v150;
      v165 = v214;
      do
      {
        if (v160 <= v161)
        {
          v166 = v161;
        }

        else
        {
          v166 = v161;
          while (v150[v166] == v164 && v162[v166] == v163)
          {
            v166 = (v166 + 1);
            if (v160 <= v166)
            {
              v167 = 0;
              goto LABEL_282;
            }
          }

          v167 = 1;
LABEL_282:
          if (v166 != v161)
          {
            v239 = 0;
            v238 = 0;
            v168 = v150[v161];
            if (v168 != 80)
            {
              __srce = v167;
              v169 = v163;
              insertDomainAndLang(a1, &v247, &v246, v162[v161], v168, *(v229 + 4 * v161), v161, v166, v22, &v239 + 1, &v239, &v238);
              LOBYTE(v167) = __srce;
              v163 = v169;
              v160 = __cc;
              v150 = v237;
              v11 = v170;
              v165 = v214;
              v162 = v230;
            }

            if ((v167 & 1) == 0)
            {
              goto LABEL_294;
            }

LABEL_288:
            if (v162[v166] != v163 || v150[v166] != v164)
            {
              v164 = v150[v166];
            }

            v163 = v162[v166];
            goto LABEL_294;
          }

          if (v167)
          {
            goto LABEL_288;
          }
        }

LABEL_294:
        v161 = v166;
      }

      while (v166 < v165);
    }

    if (v217 <= 4)
    {
      v172 = v246;
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP before update lingdb");
      v172 = v246;
      dumpTokDB(a1, a2, a3, v247, v246);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v237);
    }

    if (!v172)
    {
LABEL_342:
      if (v217 >= 5)
      {
        dumpLingDB(a1, a2, a3, a4, __s, v19, "lingdb at end of langmap expansion");
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v237);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      }

      goto LABEL_345;
    }

    v173 = 0;
    __srcd = v172;
    v174 = v247;
    *__cd = v247;
    v208 = v172;
    while (1)
    {
      v175 = (v174 + 28 * v173);
      v176 = *(v175 + 3);
      if (v176 == 1)
      {
        break;
      }

      if (v176 == 3)
      {
        if (*v175)
        {
          v178 = (*(a1[3] + 192))(a2, a3);
          goto LABEL_313;
        }
      }

      else if (v176 == 2)
      {
        v177 = v173;
        v221 = v174 + 28 * v173;
        do
        {
          if (--v177 < 0)
          {
            for (j = v173 + 1; v172 > j; ++j)
            {
              v180 = v174 + 28 * j;
              if (*(v180 + 12) != 3 && *v180)
              {
                v48 = (*(a1[3] + 88))(a2, a3);
                goto LABEL_308;
              }
            }

            v48 = (*(a1[3] + 72))(a2, a3, 3, a4, v249 + 2);
            if ((v48 & 0x80000000) != 0)
            {
              goto LABEL_344;
            }

            goto LABEL_321;
          }
        }

        while (*(v174 + 28 * v177 + 12) == 3);
        if (!*(v174 + 28 * v177))
        {
          log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33004, 0);
          v11 = 2311069696;
          goto LABEL_345;
        }

        v48 = (*(a1[3] + 80))(a2, a3);
LABEL_308:
        if ((v48 & 0x80000000) != 0)
        {
          goto LABEL_344;
        }

LABEL_321:
        v48 = (*(a1[3] + 160))(a2, a3, HIWORD(v249[0]), 0, 1, *__cd + 28 * v173 + 8, &v248);
        if ((v48 & 0x80000000) != 0)
        {
          goto LABEL_344;
        }

        v215 = *__cd + 28 * v173;
        v48 = (*(a1[3] + 160))(a2, a3, HIWORD(v249[0]), 1, 1, v215 + 2, &v248);
        if ((v48 & 0x80000000) != 0)
        {
          goto LABEL_344;
        }

        v48 = (*(a1[3] + 160))(a2, a3, HIWORD(v249[0]), 2, 1, *__cd + 28 * v173 + 4, &v248);
        if ((v48 & 0x80000000) != 0)
        {
          goto LABEL_344;
        }

        *v221 = HIWORD(v249[0]);
        if (*(*__cd + 28 * v173 + 24))
        {
          v48 = (*(a1[3] + 160))(a2, a3);
          if ((v48 & 0x80000000) != 0)
          {
            goto LABEL_344;
          }
        }

        v181 = cstdlib_strlen(v22[v230[*(v215 + 2)]]);
        v182 = cstdlib_strlen("_latin");
        v183 = heap_Calloc(*(*a1 + 8), 1, (v181 + v182 + 1) + 1);
        if (!v183)
        {
          goto LABEL_347;
        }

        v184 = v183;
        if (v230[*(v221 + 2)])
        {
          cstdlib_strcpy(v183, v22[v230[*(v221 + 2)]]);
          v185 = v184;
          v186 = *__cd + 28 * v173;
          v188 = *(v186 + 18);
          v187 = (v186 + 18);
          if (v188 != 78)
          {
            cstdlib_strcat(v185, "_");
            v189 = *(v21 + 8 * *v187);
            if (!v189)
            {
              v189 = "latin";
            }

            cstdlib_strcat(v185, v189);
          }
        }

        else
        {
          v190 = *(v221 + 18);
          if (v190 == 78)
          {
            cstdlib_strcpy(v183, *v22);
            v185 = v184;
          }

          else
          {
            v191 = *(v21 + 8 * v190);
            v185 = v183;
            if (!v191)
            {
              v191 = "latin";
            }

            cstdlib_strcpy(v183, v191);
          }
        }

        v222 = *(a1[3] + 160);
        v192 = HIWORD(v249[0]);
        v193 = cstdlib_strlen(v185);
        v11 = v222(a2, a3, v192, 4, (v193 + 1), v185, &v248);
        heap_Free(*(*a1 + 8), v185);
        v172 = v208;
        v174 = *__cd;
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_345;
        }
      }

LABEL_341:
      if (++v173 == __srcd)
      {
        goto LABEL_342;
      }
    }

    v178 = (*(a1[3] + 160))(a2, a3, *v175, 2, 1, v175 + 2, &v248);
LABEL_313:
    v174 = *__cd;
    v11 = v178;
    if ((v178 & 0x80000000) != 0)
    {
      goto LABEL_345;
    }

    goto LABEL_341;
  }

  v11 = 2311069706;
  v197 = v17;
  v200 = 5;
  v216 = 1;
  while (1)
  {
    v46 = v45;
    v47 = v34 + 28 * v45;
    *v47 = v44;
    *(v47 + 12) = 0;
    *(v47 + 16) = 0;
    *(v47 + 18) = 32;
    v209 = (v47 + 18);
    *(v47 + 24) = 0;
    __srca = (v47 + 24);
    *(v47 + 20) = 0;
    v48 = (*(a1[3] + 168))(a2, a3, HIWORD(v249[0]), 1, 1, v47 + 2, v249);
    if ((v48 & 0x80000000) != 0 || (v48 = (*(a1[3] + 168))(a2, a3, HIWORD(v249[0]), 2, 1, v34 + 28 * v46 + 4, v249), (v48 & 0x80000000) != 0) || (v218 = v34, v49 = v34 + 28 * v46, v48 = (*(a1[3] + 168))(a2, a3, HIWORD(v249[0]), 0, 1, v49 + 8, v249), (v48 & 0x80000000) != 0))
    {
LABEL_344:
      v11 = v48;
      goto LABEL_345;
    }

    if (*(v49 + 8) == 5)
    {
      break;
    }

    LOWORD(v57) = v246;
LABEL_119:
    v84 = v57 + 1;
    v246 = v84;
    v85 = (*(a1[3] + 120))(a2, a3, HIWORD(v249[0]), v249 + 2);
    v45 = v84;
    v44 = HIWORD(v249[0]);
    if (v85)
    {
      v86 = 1;
    }

    else
    {
      v86 = HIWORD(v249[0]) == 0;
    }

    v34 = v218;
    if (v86)
    {
      goto LABEL_132;
    }
  }

  HIWORD(v239) = 0;
  if (((*(a1[3] + 184))(a2, a3, HIWORD(v249[0]), 6, &v239 + 2) & 0x80000000) == 0 && HIWORD(v239) == 1)
  {
    *__srca = 1;
  }

  v48 = (*(a1[3] + 176))(a2, a3, HIWORD(v249[0]), 4, &v245, v249);
  if ((v48 & 0x80000000) != 0)
  {
    goto LABEL_344;
  }

  v50 = a1[16];
  if (!v50)
  {
    goto LABEL_345;
  }

  v194 = cstdlib_strstr(v50, v245);
  v51 = cstdlib_strlen(v245);
  v52 = cstdlib_strlen(*v22);
  v53 = *(*a1 + 8);
  v203 = v51;
  if (v52 <= v51)
  {
    v56 = v51 + 1;
  }

  else
  {
    v54 = *(*a1 + 8);
    v55 = cstdlib_strlen(*v22);
    v53 = v54;
    v34 = v218;
    v56 = (v55 + 1);
  }

  __srcb = heap_Calloc(v53, 1, v56);
  if (!__srcb)
  {
    goto LABEL_350;
  }

  if (cstdlib_strcmp(v245, "phon") && cstdlib_strcmp(v245, "internal-nuance-system-norm") && cstdlib_strcmp(v245, "prompt") && (!cstdlib_strcmp(v245, "latin") || (!v194 || v194[cstdlib_strlen(v245)] != 124) && !cstdlib_strchr(v245, 95)))
  {
    cstdlib_strcpy(__srcb, *v22);
    v63 = cstdlib_toupper(*v245);
    *v209 = v63;
    *(v21 + 8 * v63) = v245;
    goto LABEL_94;
  }

  cstdlib_strcpy(__srcb, v245);
  *v209 = 78;
  v58 = v51;
  if (!v51)
  {
LABEL_94:
    v62 = v237;
    goto LABEL_95;
  }

  if (*v245 == 95)
  {
    LODWORD(v59) = 0;
    v60 = 0;
LABEL_91:
    v204 = v59 + 1;
    v219 = v58;
    v61 = cstdlib_toupper(v245[v204]);
    *v209 = v61;
    *(v21 + 8 * v61) = &v245[v204];
    cstdlib_memset(&__srcb[v60], 0, v219 - v59);
    v34 = v247;
    goto LABEL_94;
  }

  LODWORD(v59) = 0;
  while (1)
  {
    v59 = v59 + 1;
    if (v59 >= v203)
    {
      break;
    }

    v60 = v59;
    if (v245[v59] == 95)
    {
      goto LABEL_91;
    }
  }

  v62 = v237;
  v34 = v218;
LABEL_95:
  v210 = v246;
  v64 = v34 + 28 * v246;
  v65 = *(v64 + 4);
  if (v65 > v197)
  {
    log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 0, 0, "Conflicting depes rules in fe_puncsptn - possible FE data error");
    heap_Free(*(*a1 + 8), __srcb);
    v11 = 2311069962;
    goto LABEL_345;
  }

  v66 = *(v64 + 2);
  if (v66 < v65)
  {
    v67 = *(v64 + 18);
    do
    {
      v62[v66++] = v67;
    }

    while (v66 < *(v64 + 4));
  }

  if (v216)
  {
    v68 = 0;
    while (LH_stricmp(v22[v68], __srcb))
    {
      if (v216 == ++v68)
      {
        v70 = v229;
        v69 = v230;
        goto LABEL_107;
      }
    }

    *(v34 + 28 * v210 + 16) = v68;
    heap_Free(*(*a1 + 8), __srcb);
    __srcb = 0;
  }

  else
  {
    LOWORD(v68) = 0;
  }

  v70 = v229;
  v69 = v230;
  if (v68 != v216)
  {
    v73 = v247;
    v57 = v246;
LABEL_113:
    v218 = v73;
    v75 = (v73 + 28 * v57);
    v77 = v75 + 1;
    v76 = v75[1];
    if (v75[1] < v75[2])
    {
      v78 = v75[8];
      v79 = *(v218 + 28 * v57 + 24);
      do
      {
        v69[v76] = v78;
        *(v70 + 4 * v76++) = v79;
      }

      while (v76 < v75[2]);
    }

    if (!cstdlib_strcmp(v22[v75[8]], "phon"))
    {
      v80 = *v77;
      v81 = v218 + 28 * v57;
      v83 = *(v81 + 4);
      v82 = (v81 + 4);
      if (v80 < v83)
      {
        do
        {
          v237[v80++] = 80;
        }

        while (v80 < *v82);
      }
    }

    goto LABEL_119;
  }

LABEL_107:
  v71 = v216;
  v72 = v200;
  if (v216 < v200)
  {
    v22[v216] = __srcb;
    v73 = v247;
    *&v247[28 * v210 + 16] = v216;
LABEL_112:
    v200 = v72;
    v57 = v246;
    *(v73 + 28 * v246 + 16) = v71;
    v216 = v71 + 1;
    goto LABEL_113;
  }

  v74 = heap_Realloc(*(*a1 + 8), v22, 8 * v200 + 48);
  if (v74)
  {
    v72 = (v200 + 5);
    v71 = v216;
    v70 = v229;
    *(v74 + 8 * v216) = __srcb;
    v73 = v247;
    v22 = v74;
    v69 = v230;
    goto LABEL_112;
  }

  if (__srcb)
  {
    heap_Free(*(*a1 + 8), __srcb);
  }

LABEL_350:
  log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
LABEL_345:
  v20 = v216;
LABEL_127:
  heap_Free(*(*a1 + 8), v230);
  if (v229)
  {
    heap_Free(*(*a1 + 8), v229);
  }

LABEL_129:
  heap_Free(*(*a1 + 8), v237);
LABEL_24:
  if (v247)
  {
    heap_Free(*(*a1 + 8), v247);
    v247 = 0;
    v246 = 0;
  }

  if (v22)
  {
    if (v20)
    {
      v23 = v20;
      v24 = v22;
      do
      {
        heap_Free(*(*a1 + 8), *v24);
        *v24++ = 0;
        --v23;
      }

      while (v23);
    }

    heap_Free(*(*a1 + 8), v22);
  }

  if (v21)
  {
    heap_Free(*(*a1 + 8), v21);
  }

  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
  }

  return v11;
}

size_t hlp_AdjustMarkersToWordBoundaries(size_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = result;
    v4 = *(a2 + 12);
    v5 = (a2 + 44);
    v6 = a3 - 1;
    do
    {
      result = hlp_PositionToWordBoundary(v3, (*v5 - v4));
      *v5 = result + v4;
      v5 += 8;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t hlp_AdjustUserTnToWordBoundaries(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  result = (*(a4 + 104))(a2, a3, 1, 0, &v13 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a4 + 152))(a2, a3, 3, HIWORD(v13), &v9);
    if ((result & 0x80000000) == 0)
    {
      if (v9)
      {
        for (result = (*(a4 + 104))(a2, a3, 3, HIWORD(v13), &v13); (result & 0x80000000) == 0; result = (*(a4 + 120))(a2, a3, v13, &v13))
        {
          if (!v13)
          {
            break;
          }

          result = (*(a4 + 168))(a2, a3, v13, 0, 1, &v10, &v12 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v10 == 5)
          {
            result = (*(a4 + 168))(a2, a3, v13, 1, 1, &v12, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            LOWORD(v12) = hlp_PositionToWordBoundary(a1, v12);
            result = (*(a4 + 160))(a2, a3, v13, 1, 1, &v12, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a4 + 168))(a2, a3, v13, 2, 1, &v11, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v11 = hlp_PositionToWordBoundary(a1, v11);
            result = (*(a4 + 160))(a2, a3, v13, 2, 1, &v11, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_UpdateLingDBTokensForDeletion(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  result = (*(a3 + 104))(a1, a2, 1, 0, &v14 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a3 + 152))(a1, a2, 3, HIWORD(v14), &v12);
    if ((result & 0x80000000) == 0)
    {
      if (v12)
      {
        result = (*(a3 + 104))(a1, a2, 3, HIWORD(v14), &v14);
        if ((result & 0x80000000) == 0)
        {
          while (v14)
          {
            result = (*(a3 + 168))(a1, a2, v14, 1, 1, &v13, &v13 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (v13 > a4)
            {
              LOWORD(v13) = v13 - 1;
              result = (*(a3 + 160))(a1, a2, v14, 1, 1, &v13, &v13 + 2);
              if ((result & 0x80000000) != 0)
              {
                break;
              }
            }

            result = (*(a3 + 168))(a1, a2, v14, 2, 1, &v12 + 2, &v13 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v9 = HIWORD(v12);
            if (HIWORD(v12) > a4)
            {
              --HIWORD(v12);
              result = (*(a3 + 160))(a1, a2, v14, 2, 1, &v12 + 2, &v13 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v9 = HIWORD(v12);
            }

            if (v13 == v9)
            {
              v11 = 0;
              result = (*(a3 + 168))(a1, a2, v14, 0, 1, &v11, &v13 + 2);
              if (v11 == 5)
              {
                v10 = v14;
              }

              else
              {
                v10 = 0;
              }

              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            else
            {
              v10 = 0;
            }

            result = (*(a3 + 120))(a1, a2);
            if ((result & 0x80000000) == 0)
            {
              if (!v10)
              {
                continue;
              }

              result = (*(a3 + 192))(a1, a2, v10);
              if ((result & 0x80000000) == 0)
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

  return result;
}

uint64_t hlp_UpdateMarkersForDeletion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = (result + 16);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(result + 12);
      if (*v4)
      {
        v8 = v5 - v7;
        if (v5 >= v7 && v8 <= a3 && v5 + v6 > v7 && v5 + v6 - v7 > a3)
        {
          *v4 = v6 - 1;
        }
      }

      else
      {
        v8 = v5 - v7;
      }

      if (v5 > v7 && v8 > a3)
      {
        *(v4 - 1) = v5 - 1;
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

size_t hlp_AdjustPuncMarkers(const char *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = *(a2 + 12);
  result = cstdlib_strlen(a1);
  if (v3)
  {
    v8 = result;
    v3 = v3;
    v9 = (a2 + 12);
    do
    {
      v10 = *v9 - v6;
      if (*v9 != v6 && v10 < v8 && a1[v10 - 1] != 32)
      {
        result = a1[v10];
        if (result != 32)
        {
          result = utf8_determineUTF8CharLength(result);
          if (a1[result + v10] == 32 && *(v9 - 3) != 99)
          {
            *v9 += result;
          }
        }
      }

      v9 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t fe_puncsptn_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62339, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2311069704;
  }
}

uint64_t fe_puncsptn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2311069697;
  }

  result = 0;
  *a2 = &IFePuncsptn;
  return result;
}

uint64_t dumpLingDB(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, const char *a7)
{
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s", a7);
  result = (*(a1[3] + 104))(a2, a3, 3, a4, &v25 + 2);
  if ((result & 0x80000000) == 0)
  {
    for (i = HIWORD(v25); HIWORD(v25); i = HIWORD(v25))
    {
      result = (*(a1[3] + 168))(a2, a3, i, 1, 1, &v25, &v23);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = (*(a1[3] + 168))(a2, a3, HIWORD(v25), 2, 1, &v24, &v23);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = (*(a1[3] + 168))(a2, a3, HIWORD(v25), 0, 1, &v22, &v23);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (v22 - 5 <= 1)
      {
        result = (*(a1[3] + 176))(a2, a3, HIWORD(v25), 4, &v19, &v23);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v22 == 6)
        {
          result = (*(a1[3] + 176))(a2, a3, HIWORD(v25), 3, &v18, &v23);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (((*(a1[3] + 184))(a2, a3, HIWORD(v25), 6, &v21 + 2) & 0x80000000) == 0 && HIWORD(v21) == 1)
          {
            result = (*(a1[3] + 176))(a2, a3, HIWORD(v25), 6, &v20, &v21);
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }

      cstdlib_strncpy(a6, (a5 + v25), v24 - v25);
      v15 = v24;
      v16 = v25;
      a6[v24 - v25] = 0;
      if (v22 > 4)
      {
        if (v22 == 5)
        {
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d ESC(%-9s) %s", HIWORD(v25), v16);
        }

        else if (v22 == 6)
        {
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d %-15s %s %s", HIWORD(v25), v16, v15);
        }
      }

      else
      {
        v17 = 0;
        (*(a1[3] + 264))(a2, a3, v22, &v17);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d %-15s %s", HIWORD(v25), v25);
      }

      result = (*(a1[3] + 120))(a2, a3, HIWORD(v25), &v25 + 2);
      if (result)
      {
        break;
      }
    }
  }

  return result;
}

void *dumpTokDB(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v7 = result;
    v8 = 0;
    v9 = a5;
    v10 = a4 + 12;
    do
    {
      v13 = 0;
      (*(v7[3] + 264))(a2, a3, *(v10 - 4), &v13);
      v11 = *(*v7 + 32);
      v12 = *(v10 - 12);
      if (*(v10 - 4) == 5)
      {
        result = log_OutText(v11, "FE_PUNCSPTN", 5, 0, "%d : [%d] %d,%d %s %s %c %s", v8, v12, *(v10 - 10), *(v10 - 8), v13);
      }

      else
      {
        result = log_OutText(v11, "FE_PUNCSPTN", 5, 0, "%d : [%d] %d,%d %s", v8, v12);
      }

      ++v8;
      v10 += 28;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t modifyTokenLangMaps(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v35 = 0;
  __src = 0;
  __s = 0;
  v32 = 0;
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = a5;
    v31 = a5;
    while (1)
    {
      v14 = (a4 + 28 * v11);
      if (*(v14 + 2) == 6)
      {
        v12 = (*(a1[3] + 184))(a2, a3, *v14, 6, &v35);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        if (v35 == 1)
        {
          v15 = (*(a1[3] + 176))(a2, a3, *v14, 6, &__s, &v32);
          if ((v15 & 0x80000000) != 0)
          {
            return v15;
          }

          v12 = (*(a1[3] + 176))(a2, a3, *v14, 3, &__src, &v32);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          if (v11)
          {
            v16 = 0;
            while (1)
            {
              v17 = a4 + 28 * v16;
              if (*(v17 + 8) == 5 && v14[1] >= *(v17 + 2))
              {
                v18 = v14[2];
                v19 = *(v17 + 4);
                if (v18 < v19)
                {
                  v20 = v14[2];
                  while (*(a6 + v20) == 32)
                  {
                    if (v19 == ++v20)
                    {
                      LODWORD(v20) = *(v17 + 4);
                      goto LABEL_18;
                    }
                  }

                  LODWORD(v20) = v20;
LABEL_18:
                  if (v20 != v18 && v20 == v19)
                  {
                    break;
                  }
                }
              }

              if (++v16 == v11)
              {
                v13 = v31;
                goto LABEL_22;
              }
            }

            *(v14 + 5) = 1;
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "spaced region found...adjust token end from %d to %d", v18, v19);
            v21 = cstdlib_strlen(__s);
            v23 = *(v17 + 4);
            v22 = (v17 + 4);
            v29 = (v23 + v21 - v14[2]) + 1;
            v24 = heap_Calloc(*(*a1 + 8), 1, v29);
            if (!v24)
            {
              log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
              return 2311069706;
            }

            v25 = v24;
            cstdlib_strcpy(v24, __s);
            cstdlib_strncat(v25, (a6 + v14[2]), *v22 - v14[2]);
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "modify LD_T_LANGMAP field from %s to %s", __s, v25);
            __dst = v25;
            v26 = (*(a1[3] + 160))(a2, a3, *v14, 6, v29, v25, &v32);
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_34;
            }

            v12 = 2311069696;
            if (v32 != v29)
            {
              goto LABEL_35;
            }

            cstdlib_strcpy(__dst, __src);
            cstdlib_strncat(__dst, (a6 + v14[2]), *v22 - v14[2]);
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "modify LD_T_NORM field from %s to %s", __src, __dst);
            v26 = (*(a1[3] + 160))(a2, a3, *v14, 3, v29, __dst, &v32);
            if ((v26 & 0x80000000) != 0)
            {
LABEL_34:
              v12 = v26;
LABEL_35:
              v27 = __dst;
LABEL_36:
              heap_Free(*(*a1 + 8), v27);
              return v12;
            }

            v27 = __dst;
            if (v32 != v29)
            {
              goto LABEL_36;
            }

            heap_Free(*(*a1 + 8), __dst);
            v14[2] = *v22;
            v12 = (*(a1[3] + 160))(a2, a3, *v14, 2, 1, v22, &v32);
            v13 = v31;
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }
          }
        }
      }

LABEL_22:
      if (++v11 == v13)
      {
        return v12;
      }
    }
  }

  return 0;
}

double insertDomainAndLang(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4, uint64_t a5, int a6, unsigned int a7, int a8, uint64_t a9, __int16 *a10, __int16 *a11, _WORD *a12)
{
  v19 = *a2;
  v20 = *a3;
  if (*a3)
  {
    v21 = 0;
    v22 = (v19 + 40);
    while (1)
    {
      if (*(v22 - 7) != 3)
      {
        v23 = *(v22 - 19);
        if (v23 > a7)
        {
          goto LABEL_14;
        }

        if (v23 == a7)
        {
          break;
        }
      }

      ++v21;
      v22 += 7;
      if (v20 == v21)
      {
        v24 = 0;
        LOWORD(v21) = *a3;
        goto LABEL_16;
      }
    }

    if (v21 + 1 < v20)
    {
      while (*(v22 - 5) == a7 && *v22 != 3)
      {
        v24 = v21 + 1;
        v25 = v21 + 2;
        v22 += 7;
        LOWORD(v21) = v21 + 1;
        if (v25 >= v20)
        {
          LOWORD(v21) = v24;
          goto LABEL_16;
        }
      }

LABEL_14:
      v24 = v21;
      goto LABEL_16;
    }

    v24 = *a3;
  }

  else
  {
    LOWORD(v21) = 0;
    v24 = 0;
  }

LABEL_16:
  v26 = heap_Realloc(*(*a1 + 8), v19, 28 * *a3 + 56);
  if (v26)
  {
    v27 = v26;
    *a2 = v26;
    v28 = *(*a1 + 32);
    v29 = *(a9 + 8 * a4);
    if (*a3 == v21)
    {
      log_OutText(v28, "FE_PUNCSPTN", 5, 0, "insert %d,%d, [%s_%c] at end", a7, a8, v29, a5);
      v30 = a5;
      v31 = v21;
    }

    else
    {
      v33 = a5;
      v31 = v24;
      v41 = v33;
      v42 = a8;
      log_OutText(v28, "FE_PUNCSPTN", 5, 0, "insert %d,%d, [%s_%c] before rec %d", a7, a8, v29, v33, *(v27 + 28 * v24));
      if ((*a3 + 1) > v24)
      {
        v34 = (*a3 + 1) - 1;
        v35 = (v27 + 28 * (*a3 + 1));
        v36 = (*a3 + 1) - 1;
        do
        {
          cstdlib_memcpy(v35, (v27 + 28 * v34--), 0x1CuLL);
          v35 -= 28;
        }

        while (v24 < v36--);
      }

      cstdlib_memset((v27 + 28 * v24), 0, 0x1CuLL);
      v38 = *a10;
      if (v38 >= v24)
      {
        *a10 = v38 + 1;
      }

      v39 = *a11;
      if (v39 >= v24)
      {
        *a11 = v39 + 1;
      }

      LOWORD(v21) = v24;
      v30 = v41;
      LOWORD(a8) = v42;
    }

    v40 = v27 + 28 * v31;
    *v40 = 0;
    *(v40 + 2) = a7;
    *(v40 + 4) = a8;
    *(v40 + 16) = a4;
    *(v40 + 18) = v30;
    *&result = 0x200000005;
    *(v40 + 8) = 0x200000005;
    *(v40 + 24) = a6;
    *a12 = v21;
    ++*a3;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
  }

  return result;
}

uint64_t ToNorm(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *a1;
  if (v2 != 32 && v2 < 0x41 || (*a1 - 91) < 6u)
  {
    return 1;
  }

  if (v2 < 0x7B || ((result = 1, v7 = v1 - 130, v8 = v7 > 8, v9 = (1 << v7) & 0x149, !v8) ? (v10 = v9 == 0) : (v10 = 1), !v10))
  {
    v11 = a1[1];
    if (!v11)
    {
      return 0;
    }

    v12 = a1 + 2;
    result = 1;
    while (v11 > 0x40u || v11 == 32)
    {
      if ((v11 - 65) > 0x19u)
      {
        if ((v11 - 91) < 6u)
        {
          return 1;
        }

        if (v11 > 0x7Au)
        {
          v13 = v11 - 130;
          if (v13 > 8 || ((1 << v13) & 0x149) == 0)
          {
            return result;
          }
        }
      }

      else if (*(v12 - 2) != 32)
      {
        return 1;
      }

      v14 = *v12++;
      v11 = v14;
      if (!v14)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t hlp_updateBytePositions(int a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, _WORD *a5, _WORD *a6)
{
  *a5 = Utf8_LengthInBytes(a2, a1);
  if (a1)
  {
    v10 = 0;
    v11 = a1;
    do
    {
      v12 = *a3++;
      v10 += v12;
      --v11;
    }

    while (v11);
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  result = Utf8_LengthInBytes(a4, v13);
  *a6 = result;
  return result;
}

uint64_t hlp_updateMarkerPosition(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, int a4, int a5, int a6, _DWORD *a7)
{
  v13 = Utf8_LengthInUtf8chars(a1, *a7 - a4);
  if (a5)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v15 += *(a2 + v14);
      if (v13 < v15)
      {
        break;
      }

      if (a5 == ++v14)
      {
        goto LABEL_7;
      }
    }

    LOWORD(a5) = v14;
  }

LABEL_7:
  result = Utf8_LengthInBytes(a3, a5);
  *a7 = a6 + a4 + result;
  return result;
}

size_t hlp_PositionToWordBoundary(const char *a1, size_t a2)
{
  v4 = cstdlib_strlen(a1);
  if (v4 > a2)
  {
    a2 = a2;
    while (cstdlib_strchr(" _", a1[a2]))
    {
      if (v4 == ++a2)
      {
        a2 = v4;
        break;
      }
    }
  }

  if (a2)
  {
    a2 = a2;
    do
    {
      if (cstdlib_strchr(",.", a1[a2]))
      {
        break;
      }

      if (!cstdlib_strchr(" _", a1[a2]))
      {
        break;
      }

      --a2;
    }

    while (a2);
  }

  return a2;
}

uint64_t fe_puncsptn_v2_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v5 = 2702188551;
  v22 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v24);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = objc_GetObject(v24[6], "LINGDB", &v23);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    Object = objc_GetObject(v24[6], "FE_DCTLKP", &v22);
    if ((Object & 0x80000000) != 0)
    {
      v21 = Object;
      objc_ReleaseObject(v24[6], "LINGDB");
      return v21;
    }

    v11 = heap_Alloc(v24[1], 176);
    if (!v11)
    {
      log_OutPublic(v24[4], "FE_PUNCSPTN_V2", 76000, 0);
      objc_ReleaseObject(v24[6], "LINGDB");
      objc_ReleaseObject(v24[6], "FE_DCTLKP");
      return 2702188554;
    }

    v12 = v11;
    *v11 = v24;
    *(v11 + 8) = a3;
    *(v11 + 16) = a4;
    *(v11 + 24) = *(v23 + 8);
    v13 = v22;
    v14 = *(v22 + 8);
    *(v11 + 48) = v14;
    v15 = *(v13 + 16);
    *(v11 + 160) = 0;
    v16 = (v11 + 160);
    *(v11 + 32) = v15;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    *(v11 + 144) = 0;
    *(v11 + 168) = "FE_PUNCSPTN_V2";
    v25 = 0;
    v17 = (*(v14 + 88))(*(v11 + 32), *(v11 + 40), &v25 + 4, &v25);
    if ((v17 & 0x80000000) != 0 || (v17 = loc_reload_statpunc_data(v12), (v17 & 0x80000000) != 0))
    {
      v5 = v17;
    }

    else
    {
      v12[9] = heap_Alloc;
      v12[10] = heap_Calloc;
      v12[11] = heap_Realloc;
      v12[12] = heap_Free;
      v18 = OOCAllocator_Con((v12 + 13), v12 + 9, *(*v12 + 8));
      v19 = LH_ERROR_to_VERROR(v18);
      if ((v19 & 0x80000000) != 0)
      {
        v5 = v19;
        log_OutPublic(v24[4], "FE_PUNCSPTN_V2", 76002, 0);
      }

      else
      {
        v5 = puncsptn_v2_reload_lua_code(v12[1], v12[2], v12[21], (v12 + 13), v16, v12 + 38);
        if ((v5 & 0x80000000) == 0)
        {
          *a5 = v12;
          *(a5 + 8) = 73449;
          return v5;
        }
      }
    }

    loc_cleanup_on_close(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  return v5;
}

uint64_t loc_reload_statpunc_data(uint64_t *a1)
{
  v14 = 0;
  v12 = 0;
  loc_deallocate_statpunc_v2_data(a1);
  v13 = 0;
  IGTree = (*(a1[6] + 96))(a1[4], a1[5], "fecfg", "statpunc", &v12, &v13, &v14);
  if ((IGTree & 0x80000000) == 0 && v13)
  {
    v3 = heap_Alloc(*(*a1 + 8), 48 * v13);
    a1[7] = v3;
    if (v3)
    {
      if (v13)
      {
        for (i = 0; i < v13; ++i)
        {
          v5 = *(v12 + 8 * i);
          v6 = cstdlib_strchr(v5, 124);
          if (v6)
          {
            *v6 = 0;
            v7 = v6 + 1;
            cstdlib_strcpy((a1[7] + 48 * *(a1 + 32)), v5);
            v8 = cstdlib_strchr(v7, 124);
            if (v8)
            {
              *v8 = 0;
              v9 = v8 + 1;
              cstdlib_strcpy((a1[7] + 48 * *(a1 + 32) + 4), v7);
              v10 = cstdlib_strchr(v9, 124);
              if (v10)
              {
                *v10 = 0;
                IGTree = statpunc_v2_readIGTree(a1[1], a1[2], *a1, v9, a1[7] + 48 * *(a1 + 32));
                if ((IGTree & 0x80000000) != 0)
                {
                  return IGTree;
                }

                ++*(a1 + 32);
              }
            }
          }
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN_V2", 76000, 0);
      return 2702188554;
    }
  }

  return IGTree;
}