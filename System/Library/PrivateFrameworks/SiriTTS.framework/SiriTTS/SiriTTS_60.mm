uint64_t doDictionaryLookupLoop(uint64_t a1, int *a2, _DWORD *a3, int a4)
{
  *a2 = 0;
  result = doDictionaryLookup(a1, "tnlab", 1u, 0, 0, 2u, a2, 1, a4);
  if ((result & 0x80000000) == 0 && *a2 != 1)
  {
    strcpy(*(a1 + 592), *(a1 + 576));
    result = doDictionaryLookup(a1, "tn", 2u, 1, 1u, 3u, a2, *(a1 + 609), a4);
    if ((result & 0x80000000) == 0)
    {
      if (*a2 == 1)
      {
        *a3 = 1;
      }

      else
      {
        strcpy(*(a1 + 592), *(a1 + 576));
        return doDictionaryLookup(a1, "g2p", 2u, 0, 0, 3u, a2, *(a1 + 608), a4);
      }
    }
  }

  return result;
}

uint64_t tokenizer_CheckToken(uint64_t a1, _DWORD *a2, int a3)
{
  v16 = 0;
  v14 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_ISTOKEN( %d, %s) = ", *(*(a1 + 328) + 40), **(a1 + 328));
  }

  v15 = 0;
  *a2 = 0;
  if (!validateMatchAndGetKey(a1, &v15))
  {
    goto LABEL_18;
  }

  if (v15 == -1 && HIWORD(v15) == 0xFFFF)
  {
    if (*(a1 + 548) == 1)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH");
    }

    goto LABEL_21;
  }

  if ((resetStrRes(a1, a1 + 576) & 0x80000000) != 0 || (resetStrRes(a1, a1 + 592) & 0x80000000) != 0)
  {
    return TOKENTNERROR(8);
  }

  v7 = add2StringV4(a1, a1 + 592, v15, SHIWORD(v15));
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v7 = add2StringV4(a1, a1 + 576, v15, SHIWORD(v15));
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (*(a1 + 548) == 1)
  {
    v8 = *(*(a1 + 328) + 32);
    if (!v8)
    {
      v8 = "";
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "search word %s, domain=%s", *(a1 + 592), v8);
  }

  *(a1 + 570) = 0;
  **(a1 + 560) = 0;
  v7 = doDictionaryLookupLoop(a1, &v16, &v14, a3);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (v16 == 1)
  {
    if (v14 != 1)
    {
      goto LABEL_21;
    }

    v13 = 0;
    v7 = addExpandedOrthography2Match(a1, &v13);
    if ((v7 & 0x80000000) == 0)
    {
      if (v13 != 1)
      {
        if (*(a1 + 548) == 1)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "ERROR : problem adding expanded orthography for word %s", *(a1 + 592));
        }

        goto LABEL_18;
      }

LABEL_21:
      v9 = *(*(a1 + 328) + 8);
      v10 = "TRUE";
      goto LABEL_22;
    }

    return v7;
  }

LABEL_18:
  v9 = *(*(a1 + 328) + 8);
  v10 = "FALSE";
LABEL_22:
  v11 = add2StringV2(a1, v9, v10);
  if ((v11 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v11;
}

uint64_t tokenizer_CheckEqualTo(uint64_t a1, _DWORD *a2)
{
  v10 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_EQUALTO( %d, %s) = ", *(*(a1 + 328) + 40), **(a1 + 328));
  }

  v9 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v9))
  {
    v4 = v9 == -1 && HIWORD(v9) == 0xFFFF;
    if (v4)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH");
      }

      v6 = *(*(a1 + 328) + 8);
      v5 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v9, &v10))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v10 + 1);
      v4 = v10 == HIWORD(v10);
      *a2 = v4;
      if (v4)
      {
        v5 = "TRUE";
      }

      else
      {
        v5 = "FALSE";
      }

      v6 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v6 = *(*(a1 + 328) + 8);
    v5 = "FALSE";
  }

  v7 = add2StringV2(a1, v6, v5);
  if ((v7 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v7;
}

uint64_t tokenizer_CheckAND(uint64_t a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_AND( %s) = ", **(a1 + 328));
  }

  *a2 = 0;
  if (parseIntoBinaryArgs(a1, &v10, &v8) && !(v10 ^ 0x45555254 | v11))
  {
    v7 = v8 ^ 0x45555254 | v9;
    *a2 = v7 == 0;
    if (!v7)
    {
      v4 = "TRUE";
      goto LABEL_7;
    }
  }

  else
  {
    *a2 = 0;
  }

  v4 = "FALSE";
LABEL_7:
  v5 = add2StringV2(a1, *(*(a1 + 328) + 8), v4);
  if ((v5 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v5;
}

uint64_t getValFromSentence(uint64_t a1, __int16 *a2, _WORD *a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (v4 == -1 && v5 == 0xFFFF)
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24005, 0);
  }

  else
  {
    v8 = (v5 - v4);
    strncpy(*(a1 + 552), (*(a1 + 304) + v4), v8);
    *(*(a1 + 552) + v8) = 0;
    v9 = *(a1 + 552);
    if (v5 == v4)
    {
LABEL_12:
      *a3 = atoi(v9);
      return 1;
    }

    v10 = 0;
    while (1)
    {
      v11 = v9[v10];
      if (v11 != 32 && (v11 - 48) >= 0xA)
      {
        break;
      }

      if (v8 == ++v10)
      {
        goto LABEL_12;
      }
    }

    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24006, "%s%s");
  }

  return 0;
}

uint64_t getValFromArgString(uint64_t a1, _WORD *a2)
{
  v4 = **(a1 + 328);
  v5 = strlen(v4);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = v4[v6];
      if (v7 != 32 && (v7 - 48) >= 0xA)
      {
        break;
      }

      if (++v6 >= v5)
      {
        goto LABEL_8;
      }
    }

    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24006, "%s%s", "string", v4);
    return 0;
  }

  else
  {
LABEL_8:
    *a2 = atoi(v4);
    return 1;
  }
}

uint64_t parseIntoBinaryArgs(uint64_t a1, char *a2, char *a3)
{
  v6 = **(a1 + 328);
  v7 = strlen(v6);
  v8 = v7;
  v9 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  if (*v6 == 32)
  {
    LOWORD(v10) = 0;
  }

  else
  {
    LOWORD(v10) = 0;
    do
    {
      v10 = v10 + 1;
    }

    while (v10 < v7 && v6[v10] != 32);
  }

  if (v10 != v7)
  {
    strncpy(a2, v6, v10);
    a2[v10] = 0;
    v11 = v10;
    do
    {
      v12 = ++v11;
    }

    while (v11 < v8 && *(**(a1 + 328) + v11) == 32);
    if (v9 != v11)
    {
      v13 = v9 - v11;
      if (v9 > v11)
      {
        v14 = **(a1 + 328);
        if (*(v14 + v11) != 32)
        {
          LOWORD(v15) = v11;
          do
          {
            v15 = v15 + 1;
            v12 = v15;
          }

          while (v15 < v8 && *(v14 + v15) != 32);
        }
      }

      if (v9 == v12)
      {
        strncpy(a3, (**(a1 + 328) + v11), v13);
        a3[v13] = 0;
        return 1;
      }
    }

    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24008, "%s%s");
  }

  else
  {
LABEL_8:
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24007, "%s%s");
  }

  return 0;
}

uint64_t validateMatchAndGetKey(uint64_t *a1, _WORD *a2)
{
  v2 = a1[41];
  v3 = *(v2 + 40);
  if (*(v2 + 40))
  {
    v4 = *(v2 + 24);
    if (v3 > *(v4 + 82))
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24008, "%s%d", "index", v3);
      return 0;
    }

    v6 = v4 + 42;
    *a2 = *(v6 + 4 * (v3 - 1));
    a2[1] = *(v6 + 4 * v3 - 2);
  }

  else
  {
    *a2 = **(v2 + 16);
  }

  return 1;
}

uint64_t tokenizer_CheckOR(uint64_t a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_OR( %s) = ", **(a1 + 328));
  }

  *a2 = 0;
  if (parseIntoBinaryArgs(a1, &v10, &v8))
  {
    if (!(v10 ^ 0x45555254 | v11))
    {
      *a2 = 1;
LABEL_10:
      v5 = "TRUE";
      goto LABEL_11;
    }

    v4 = v8 ^ 0x45555254 | v9;
    *a2 = v4 == 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *a2 = 0;
  }

  v5 = "FALSE";
LABEL_11:
  v6 = add2StringV2(a1, *(*(a1 + 328) + 8), v5);
  if ((v6 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v6;
}

uint64_t resolveTokensUsingPriorityList(unsigned __int16 *a1, uint64_t a2)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  DomainDefBlockInfo = resetSolutionList(a2, *(a2 + 386));
  if ((DomainDefBlockInfo & 0x80000000) == 0)
  {
    if (*(a2 + 386))
    {
      v5 = 0;
      v6 = 0;
      v7 = 4;
      while (1)
      {
        DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a2, *(*(*(a2 + 376) + 8 * v5) + 104), &v38);
        if ((DomainDefBlockInfo & 0x80000000) != 0)
        {
          break;
        }

        v8 = *(v38 + 8);
        *(*(a2 + 360) + v7) = v8;
        if (v8 > v6)
        {
          v6 = v8;
        }

        ++v5;
        v9 = *(a2 + 386);
        v7 += 12;
        if (v5 >= v9)
        {
          if (!*(a2 + 386))
          {
            goto LABEL_35;
          }

          v10 = 0;
          v11 = 0;
          v12 = (*(a2 + 360) + 4);
          v13 = 999;
          do
          {
            v14 = *v12;
            v12 += 3;
            if (v14 == v6)
            {
              ++v11;
              v13 = v10;
            }

            ++v10;
          }

          while (v9 != v10);
          if (v11 == 1)
          {
            *a1 = v13;
            log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "priority list resolution by domain type : match %d", v13);
            return 0;
          }

          v37 = a1;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 999;
          do
          {
            *(*(a2 + 360) + 12 * v15) = 999;
            v19 = *(*(a2 + 376) + 8 * v15);
            FEData_blockData_newGetDomainEntry(a2, *(v19 + 104), *(v19 + 106), &v40);
            if (*(v40 + 8) == 1)
            {
              FEData_blockData_newGetPriorityList(a2, *(*(*(a2 + 376) + 8 * v15) + 104), *(v40 + 12), &v39);
              if (!v39 || v39 == v17)
              {
                v17 = v39;
              }

              else
              {
                log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "using priority list from match %d, to resolve", v16);
                v17 = v39;
                if (*(a2 + 386))
                {
                  v20 = 0;
                  v21 = 0;
                  v22 = v39[4];
                  do
                  {
                    if (v39[4])
                    {
                      v23 = 0;
                      v24 = *(*(*(a2 + 376) + 8 * v20) + 88);
                      v25 = (*v39 + 4);
                      while (*(v24 + 2) != *(v25 - 1) || *(v24 + 4) != *v25)
                      {
                        ++v23;
                        v25 += 6;
                        if (v39[4] == v23)
                        {
                          goto LABEL_29;
                        }
                      }

                      log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "token [%d] priority = %d", v21, v23);
                      if (v22 > v23)
                      {
                        v22 = v23;
                        v18 = v20;
                        *(*(a2 + 360) + 12 * v15) = v20;
                      }
                    }

LABEL_29:
                    v21 = ++v20;
                  }

                  while (v20 < *(a2 + 386));
                  v17 = v39;
                }
              }
            }

            ++v15;
            v26 = *(a2 + 386);
            v16 = v15;
          }

          while (v15 < v26);
          if (v18 == 999)
          {
            a1 = v37;
            goto LABEL_35;
          }

          if (*(a2 + 386))
          {
            v28 = 0;
            v29 = 0;
LABEL_39:
            v30 = (*(a2 + 360) + 12 * v28);
            do
            {
              v32 = *v30;
              v30 += 6;
              v31 = v32;
              if (v32 != 999 && v31 != v18)
              {
                log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "priority lists conflict in resolution : solution %d and %d", v31, v18);
                ++v28;
                v29 = 1;
                v26 = *(a2 + 386);
                if (v28 >= v26)
                {
                  *v37 = v18;
                  goto LABEL_50;
                }

                goto LABEL_39;
              }

              ++v28;
            }

            while (v28 < v26);
            *v37 = v18;
            if ((v29 & 1) == 0)
            {
              goto LABEL_52;
            }

LABEL_50:
            v34 = *(*a2 + 32);
            v35 = *(a2 + 184);
            v36 = "priority list resolution : conflict found, so choosing match %d";
          }

          else
          {
            *v37 = v18;
LABEL_52:
            v34 = *(*a2 + 32);
            v35 = *(a2 + 184);
            v36 = "priority list resolution : match %d";
          }

          log_OutText(v34, v35, 5, 0, v36, v18);
          return DomainDefBlockInfo;
        }
      }
    }

    else
    {
LABEL_35:
      *a1 = 0;
      log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "no priority list resolution : return default match %d");
    }
  }

  return DomainDefBlockInfo;
}

uint64_t tokenizer_ResolveMatches(uint64_t a1)
{
  v17 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  if (!a1)
  {
    goto LABEL_28;
  }

  if (!*(a1 + 304))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);
LABEL_28:

    return TOKENTNERROR(7);
  }

  if (*(a1 + 548) == 1 && FERuntimeData_GetNumMatches(a1))
  {
    FERuntimeData_DumpMatches(a1, "Dump at start of ResolveMatches", 0);
  }

  v15 = 0;
  if (*(a1 + 312))
  {
    v2 = 0;
    v3 = 0;
    matched = 0;
    while (1)
    {
      FERuntimeData_GetKeyAtPos(a1, v3, &v16, &v14);
      if (v16 && v2 == *v16)
      {
        FERuntimeData_FindLongestMatch(a1, v16, &v17);
        LOWORD(v15) = *v16;
        HIWORD(v15) = v17;
        FERuntimeData_DeleteSubsumedkeys(a1, v16, v17);
        AllMatchesAtKey = FERuntimeData_GetAllMatchesAtKey(a1, &v15);
        if ((AllMatchesAtKey & 0x80000000) != 0)
        {
          return AllMatchesAtKey;
        }

        v6 = *(a1 + 386);
        if (v6 >= 2)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "applying token priority lists to resolve %d token clashes at position %d,%d", v6, v15, SHIWORD(v15));
          if (*(a1 + 548) == 1 && *(a1 + 386))
          {
            v7 = 0;
            do
            {
              FEData_blockData_getTokenData(a1, *(*(*(a1 + 376) + 8 * v7) + 88), &v13);
              log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "[%d] = token %s", v7++, v13);
            }

            while (v7 < *(a1 + 386));
          }

          AllMatchesAtKey = resolveTokensUsingPriorityList(&v12, a1);
          if ((AllMatchesAtKey & 0x80000000) != 0)
          {
            return AllMatchesAtKey;
          }

          v8 = *(a1 + 386);
          if (v8)
          {
            v9 = 0;
            v10 = v12;
            do
            {
              if (v10 != v9)
              {
                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "deleting match %d", v9);
                FERuntimeData_DeleteMatch(a1, &v15, *(*(a1 + 376) + 8 * v9));
                v8 = *(a1 + 386);
              }

              ++v9;
            }

            while (v9 < v8);
          }
        }

        matched = resetMatchList(a1, 0);
        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }

        v3 = v17;
      }

      else
      {
        ++v3;
      }

      v16 = 0;
      v2 = v3;
      if (v3 >= *(a1 + 312))
      {
        goto LABEL_32;
      }
    }
  }

  matched = 0;
LABEL_32:
  if (*(a1 + 548) == 1)
  {
    if (FERuntimeData_GetNumMatches(a1))
    {
      FERuntimeData_DumpMatches(a1, "Dump at end of ResolveMatches", 0);
    }
  }

  return matched;
}

uint64_t addBTokMatchToList(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 634);
  if (*(a1 + 634))
  {
    v5 = *(a1 + 624);
    if (v4 != *(a1 + 632))
    {
LABEL_8:
      v9 = *(a1 + 634);
      *(v5 + 4 * v9) = *a2;
      *(a1 + 634) = v9 + 1;
      return 0;
    }

    v6 = heap_Realloc(*(*a1 + 8), v5, 4 * v4 + 128);
    if (*(a1 + 624))
    {
      v5 = v6;
      *(a1 + 624) = v6;
      v7 = *(a1 + 632) + 32;
LABEL_7:
      *(a1 + 632) = v7;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = heap_Calloc(*(*a1 + 8), 1, 128);
    *(a1 + 624) = v8;
    if (v8)
    {
      v5 = v8;
      v7 = 32;
      goto LABEL_7;
    }
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

  return TOKENTNERROR(10);
}

uint64_t tokenizer_apply_regex_LongestMatch(uint64_t *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 44);
  while (!*(*(a2 + 8) + 48))
  {
    v5 = nuance_pcre_exec2(a1[17], a1[18], *(a2 + 32), *a2, a1[38], *(a2 + 42), v4, *(a2 + 64), v16, 100, CALLOUTCHECK);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = nuance_pcre_ErrorToLhError(v5);
      v7 = v6;
      if (v6 >> 20 != 2213)
      {
        goto LABEL_9;
      }

      if ((v6 & 0x1FFF) != 0x14)
      {
        if ((v6 & 0x1FFF) == 0xA)
        {
          log_OutPublic(*(*a1 + 32), a1[23], 11002, "%s%x%s%s");
        }

        else
        {
          log_OutPublic(*(*a1 + 32), a1[23], 11027, "%s%x%s%s");
        }

        return v7;
      }

      break;
    }
  }

  v7 = 0;
LABEL_9:
  v8 = *(a2 + 8);
  if ((*(v8 + 48) & 0x80000000) != 0)
  {
    return *(v8 + 48);
  }

  v9 = *(v8 + 8);
  if (*v9 || v9[1])
  {
    v15 = 1;
    if (*(v8 + 44) == 1)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s already validated", *(a2 + 24));
      v15 = 1;
    }

    else
    {
      v7 = validateCurrentMatch(a1, *v8, v9, a1[38], *(v8 + 24), *(a2 + 48), &v15);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      if (v15 != 1)
      {
        *(**(a2 + 8) + 40) = 0;
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s invalidated.", *(a2 + 24));
        return v7;
      }
    }

    v10 = *(a2 + 8);
    v12 = *v10;
    v11 = v10[1];
    *(v12 + 88) = *(a2 + 48);
    v7 = FERuntimeData_AddMatch(a1, v11, v12);
    if ((v7 & 0x80000000) == 0)
    {
      v13 = *(a2 + 8);
      if (*(*(*v13 + 11) + 8) == 1)
      {
        return addBTokMatchToList(a1, v13[1]);
      }
    }
  }

  return v7;
}

uint64_t CALLOUTCHECK(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((v1[6] & 0x80000000) != 0)
  {
    return 1;
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 20);
  if (*(v1 + 20))
  {
    v6 = v5 + 1;
    *(a1 + 36) = v5 + 1;
  }

  else
  {
    v6 = *(a1 + 36);
  }

  log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT top=%d: (numsubmatches=%d) (match=%d,%d) token=%s", v6, v5, *(a1 + 28), *(a1 + 32), v1[3]);
  if (!*v4)
  {
    goto LABEL_15;
  }

  if (*(a1 + 28) < v4[1])
  {
    log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT Match invalidated as start position %d is <= key to position %d");
    return 1;
  }

  v7 = *(*v1 + 88);
  LODWORD(v36) = 0;
  log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT non-overlapping longestMatch found...validating...");
  v8 = validateCurrentMatch(v1[4], *v1, v1[1], v1[2], v1[3], v7, &v36);
  if (v8 < 0)
  {
    goto LABEL_28;
  }

  v9 = v1[4];
  if (v36 == 1)
  {
    v8 = FERuntimeData_AddMatch(v9, v1[1], *v1);
    if (v8 < 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    log_OutText(*(*v9 + 32), v9[23], 6, 0, "CALLOUT token invalidated");
  }

  *v1[1] = 0;
  *(v1 + 11) = 0;
  *(*v1 + 40) = 0;
  if (!*v4 || v4[1] - *v4 < *(a1 + 32) - *(a1 + 28))
  {
LABEL_15:
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    memset(v38, 0, sizeof(v38));
    v36 = 0u;
    v34 = 1;
    log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - Longest Match Found %d,%d (num submatches=%d)...validating...", *(a1 + 28), *(a1 + 32), *(a1 + 36) - 1);
    v10 = *(a1 + 28);
    v11 = *(a1 + 32);
    v35[0] = v10;
    v35[1] = v11;
    if (*(v1 + 26) > v10 || *(v1 + 27) < v11)
    {
      log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - this match is out of domain...", v32, v33);
      return 1;
    }

    v12 = v1[4];
    if (*(v12 + 960) == 1 && blockedByBtok(v12, v10, v11) == 1)
    {
      log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - blocked by prior btok...", v32, v33);
      return 1;
    }

    v13 = *(a1 + 36);
    v14 = v13 - 1;
    v15 = *v1;
    v16 = *(*v1 + 88);
    *(&v39 + 1) = v16;
    DWORD2(v40) = *(v15 + 104);
    BYTE2(v39) = v13 - 1;
    WORD4(v38[0]) = 0;
    if (v13 != 1 && v13 >= 2)
    {
      v17 = 0;
      v18 = 2 * v13;
      v19 = *(a1 + 8);
      v20 = 2;
      do
      {
        v21 = (v19 + 4 * v20);
        v22 = v38 + 2 * v17 + 5;
        *v22 = *v21;
        v22[1] = v21[1];
        ++v17;
        v20 += 2;
      }

      while (v18 > v20);
    }

    v8 = validateCurrentMatch(v1[4], &v36, v35, v1[2], v1[3], v16, &v34);
    if ((v8 & 0x80000000) == 0)
    {
      if (v34 == 1)
      {
        *(v3 + 40) = WORD4(v38[0]);
        v23 = *&v38[0];
        v24 = v37;
        *v3 = v36;
        *(v3 + 16) = v24;
        *(v3 + 32) = v23;
LABEL_34:
        log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - VALIDATING longest match. saving...");
        *v4 = *(a1 + 28);
        v4[1] = *(a1 + 32);
        *(v1 + 11) = 1;
        if (v14)
        {
          *(v3 + 82) = v14;
          if (*(a1 + 36) >= 2)
          {
            v26 = 0;
            v27 = v3 + 42;
            v28 = 2;
            do
            {
              v29 = (*(a1 + 8) + 4 * v28);
              v30 = *v29;
              v31 = (v27 + 4 * v26);
              *v31 = v30;
              LOWORD(v29) = v29[1];
              v31[1] = v29;
              log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - setting longest match submatch[%d] = %d,%d", v26++, v30, v29);
              v28 += 2;
            }

            while (2 * *(a1 + 36) > v28);
          }
        }

        return 1;
      }

      if (v34 || !WORD4(v38[0]))
      {
        if (v34)
        {
          goto LABEL_34;
        }
      }

      else
      {
        WORD4(v38[0]) = 0;
      }

      log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - INVALIDATING this longest match...");
      *v1[1] = 0;
      *(v1 + 11) = 0;
      *(*v1 + 40) = 0;
      return 1;
    }

LABEL_28:
    *(v1 + 12) = v8;
  }

  return 1;
}

uint64_t tokenizer_CheckGreaterThan(uint64_t a1, _DWORD *a2)
{
  v11 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_GREATERTHAN( %d, %s) = ", *(*(a1 + 328) + 40), **(a1 + 328));
  }

  v10 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v10))
  {
    if (v10 == -1 && HIWORD(v10) == 0xFFFF)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH");
      }

      v7 = *(*(a1 + 328) + 8);
      v6 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v10, &v11))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v11 + 1);
      v5 = v11 > HIWORD(v11);
      *a2 = v5;
      if (v5)
      {
        v6 = "TRUE";
      }

      else
      {
        v6 = "FALSE";
      }

      v7 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v7 = *(*(a1 + 328) + 8);
    v6 = "FALSE";
  }

  v8 = add2StringV2(a1, v7, v6);
  if ((v8 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v8;
}

uint64_t tokenizer_ObjOpen(uint64_t *a1)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjOpen Begin");
  v2 = heap_Calloc(*(*a1 + 8), 1, 8);
  if (v2)
  {
    v3 = v2;
    a1[21] = v2;
    v4 = heap_Calloc(*(*a1 + 8), 1, 80);
    *v3 = v4;
    v5 = *a1;
    if (v4)
    {
      v6 = heap_Calloc(*(v5 + 8), 1, 40);
      **v3 = v6;
      v5 = *a1;
      if (v6)
      {
        v7 = heap_Calloc(*(v5 + 8), 1, 56);
        *(*v3 + 8) = v7;
        v5 = *a1;
        if (v7)
        {
          v8 = heap_Calloc(*(v5 + 8), 1, 4);
          *(*(*v3 + 8) + 8) = v8;
          if (v8)
          {
            *v8 = 0;
            v9 = heap_Calloc(*(*a1 + 8), 1, 112);
            v10 = *v3;
            v11 = *(*v3 + 8);
            *v11 = v9;
            if (v9)
            {
              *(v9 + 88) = 0;
              *(v11 + 40) = 0;
              *(v11 + 48) = 0;
              *(v11 + 16) = 0;
              *(v11 + 24) = 0;
              v12 = *v10;
              *v12 |= 4uLL;
              v12[3] = v11;
              v19 = 0;
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : InitCheckFunctions Begin");
              Map = FEFunctionMap_GetMap(a1, &v19);
              if ((Map & 0x80000000) != 0)
              {
                v17 = Map;
              }

              else
              {
                v14 = &off_1F42D38A0;
                v15 = 8;
                do
                {
                  v16 = ssftmap_Insert(v19, *(v14 - 1), *v14);
                  if ((v16 & 0x80000000) != 0)
                  {
                    v17 = v16;
                    log_OutPublic(*(*a1 + 32), a1[23], 21011, 0);
                    goto LABEL_22;
                  }

                  v14 += 2;
                  --v15;
                }

                while (v15);
                v17 = FEFunctionMap_AddFunctionMap(a1, 0, v19);
                if ((v17 & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }
              }

LABEL_22:
              ssftmap_ObjClose(v19);
LABEL_23:
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : InitCheckFunctions End (%x)", v17);
              if ((v17 & 0x80000000) == 0)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          v5 = *a1;
        }
      }
    }

    log_OutPublic(*(v5 + 32), a1[23], 24048, 0);
    v17 = TOKENTNERROR(10);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_19:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjOpen End (%x)", v17);
      return v17;
    }

LABEL_18:
    tokenizer_loc_ObjClose_0(a1);
    goto LABEL_19;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

  return TOKENTNERROR(10);
}

uint64_t tokenizer_loc_ObjClose_0(void *a1)
{
  v2 = a1[21];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : loc ObjClose Begin");
  v3 = *v2;
  if (*v2)
  {
    v4 = v3[1];
    if (v4)
    {
      if (v4[1])
      {
        heap_Free(*(*a1 + 8), v4[1]);
        v4 = *(*v2 + 8);
        v4[1] = 0;
      }

      if (*v4)
      {
        heap_Free(*(*a1 + 8), *v4);
        v4 = *(*v2 + 8);
        *v4 = 0;
      }

      heap_Free(*(*a1 + 8), v4);
      v3 = *v2;
      *(*v2 + 8) = 0;
    }

    if (*v3)
    {
      heap_Free(*(*a1 + 8), *v3);
      v3 = *v2;
      **v2 = 0;
    }

    heap_Free(*(*a1 + 8), v3);
    *v2 = 0;
  }

  heap_Free(*(*a1 + 8), v2);
  a1[21] = 0;
  return log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : loc ObjClose End (%x)", 0);
}

uint64_t tokenizer_ObjClose(uint64_t *a1)
{
  if (a1[21])
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjClose Begin");
    tokenizer_loc_ObjClose_0(a1);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjOpen End (%x)", 0);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

uint64_t textnormalizer_DoDepes(uint64_t *a1, const char *a2, unsigned int a3, int a4, _DWORD *a5, const char **a6)
{
  v7 = a5;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v74 = 0;
  *a5 = 0;
  if (*(a1 + 137) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "_%s(%s)", a2, *a1[40]);
  }

  v12 = a1[40];
  v13 = *v12;
  if (!*v12 || !strcmp(*v12, "NULL") || !*v13)
  {
    v22 = add2StringV2(a1, *(v12 + 8), "");
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }

    goto LABEL_94;
  }

  v72 = a4;
  if (*(a1 + 137) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "DEPES IN (%s)(running len=%d)", v13, *(v12 + 32));
    v13 = *a1[40];
  }

  v14 = strlen(v13);
  v15 = Utf8_LengthInUtf8chars(v13, v14);
  v16 = (*(a1[14] + 120))(a1[15], a1[16], 0, *a1[40], v14);
  if ((v16 & 0x80000000) != 0)
  {
    v22 = v16;
    v23 = *(*a1 + 32);
    v24 = a1[23];
    v25 = 24010;
  }

  else
  {
    v17 = growStrRes(a1, (a1 + 61), v14);
    if ((v17 & 0x80000000) != 0)
    {
      v22 = v17;
      goto LABEL_94;
    }

    v71 = a6;
    v18 = *a1[40];
    v19 = a1[61];
    if (v14)
    {
      bzero(a1[61], v14);
    }

    v68 = v15;
    v70 = v7;
    v67 = a3;
    if (utf8_strchr(g_szSpace_2, v18))
    {
      v20 = 0;
      i = 0;
    }

    else
    {
      i = 1;
      *v19 = 1;
      v20 = utf8_determineUTF8CharLength(*v18);
      v26 = v20;
      if (v20 < v14)
      {
        v27 = &v18[v20];
        for (i = 1; !utf8_strchr(g_szSpace_2, v27); v27 = &v18[v26])
        {
          v28 = utf8_determineUTF8CharLength(*v27);
          v20 = v28 + v26;
          ++i;
          v26 = (v28 + v26);
          if (v26 >= v14)
          {
            break;
          }
        }
      }
    }

    if (v20 < v14)
    {
      while (1)
      {
        v29 = &v18[v20];
        if (!utf8_strchr(g_szSpace_2, v29))
        {
          break;
        }

        v20 += utf8_determineUTF8CharLength(*v29);
        ++i;
        v30 = v20;
        if (v20 >= v14)
        {
LABEL_29:
          v31 = v30;
          while (v31 < v14 && !utf8_strchr(g_szSpace_2, &v18[v30]))
          {
            v30 += utf8_determineUTF8CharLength(v18[v30]);
            v31 = v30;
            ++i;
          }

          v20 = v30;
          if (v30 >= v14)
          {
            goto LABEL_34;
          }
        }
      }

      v19[i] = 1;
      v30 = v20 + utf8_determineUTF8CharLength(*v29);
      ++i;
      goto LABEL_29;
    }

LABEL_34:
    v32 = (*(a1[14] + 88))(a1[15], a1[16], a1[61], v68);
    if ((v32 & 0x80000000) != 0)
    {
      v22 = v32;
      log_OutPublic(*(*a1 + 32), a1[23], 24011, 0);
      v7 = v70;
      a6 = v71;
      goto LABEL_94;
    }

    v33 = (*(a1[14] + 80))(a1[15], a1[16], a2 + 1);
    v7 = v70;
    a6 = v71;
    if ((v33 & 0x80000000) != 0)
    {
      v22 = v33;
      log_OutPublic(*(*a1 + 32), a1[23], 24012, "%s%s");
      goto LABEL_94;
    }

    v34 = (*(a1[14] + 96))(a1[15], a1[16], &v74, &v78);
    if ((v34 & 0x80000000) != 0)
    {
      v22 = v34;
      v23 = *(*a1 + 32);
      v24 = a1[23];
      v25 = 24013;
    }

    else
    {
      v35 = (*(a1[14] + 128))(a1[15], a1[16], 0, &v77, &v76);
      if ((v35 & 0x80000000) != 0)
      {
        v22 = v35;
        v23 = *(*a1 + 32);
        v24 = a1[23];
        v25 = 24014;
      }

      else
      {
        v77[v76] = 0;
        v36 = Utf8_LengthInUtf8chars(v77, v76);
        if (*(a1 + 137) == 1)
        {
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "DEPES Layer 0 OUT strsize(%d bytes, %d chars) -> (%s)", v76, v36, v77);
        }

        v37 = (*(a1[14] + 128))(a1[15], a1[16], 1, &__n[1], __n);
        if ((v37 & 0x80000000) == 0)
        {
          *(*&__n[1] + __n[0]) = 0;
          if (*(a1 + 137) == 1)
          {
            log_OutText(*(*a1 + 32), a1[23], 5, 0, "DEPES layer 1 OUT strsize(%d bytes) -> (%s)", __n[0], *&__n[1]);
          }

          v38 = __n[0];
          v39 = (__n[0] - v36);
          if (__n[0] < v36)
          {
            v39 = 0;
          }

          v40 = v76;
          if (__n[0] <= v76)
          {
            v38 = v39;
          }

          else
          {
            v40 = v39;
          }

          v41 = heap_Alloc(*(*a1 + 8), (v40 + v38 + 1));
          if (!v41)
          {
            return 2383421450;
          }

          v42 = v41;
          v43 = strncpy(v41, *&__n[1], __n[0]);
          v43[__n[0]] = 0;
          v44 = v76;
          if (v76 != __n[0])
          {
            if (v76)
            {
              v45 = 0;
              v46 = 0;
              v47 = v42 + 1;
              do
              {
                v48 = utf8_determineUTF8CharLength(v77[v46]);
                if (v48 >= 2u)
                {
                  __n[0] = strlen(v42);
                  memmove(&v42[v48 + v45], &v47[v45], __n[0] - v45);
                  memset(&v47[v45], 126, v48 - 1);
                }

                v46 += v48;
                v45 = v46;
              }

              while (v46 < v76);
            }

            __n[0] = strlen(v42);
            log_OutText(*(*a1 + 32), a1[23], 5, 0, "(adjusted) DEPES layer 1 OUT strsize(%d bytes) -> (%s)", __n[0], v42);
            v44 = __n[0];
          }

          v49 = v67;
          if (v44)
          {
            v50 = 0;
            v51 = 0;
            while (1)
            {
              v52 = &v42[v51];
              if (*v52 == 126)
              {
                *v52 = 32;
              }

              if (utf8_strchr(g_szSpace_2, &v42[v51]))
              {
                goto LABEL_61;
              }

              v53 = *v52;
              if ((v53 | 2) != 0x4E)
              {
                break;
              }

LABEL_63:
              if ((v53 | 2) == 0x4E)
              {
                if (v51)
                {
                  v54 = 0;
                  do
                  {
                    v55 = v54;
                    v54 += utf8_determineUTF8CharLength(v77[v54]);
                  }

                  while (v54 < v51);
                  if (utf8_strchr(g_szSpace_2, &v77[v55]))
                  {
                    v49 = v67;
                  }

                  else
                  {
                    while (1)
                    {
                      v56 = utf8_strchr(g_szSpace_2, &v77[v54]);
                      if (v56)
                      {
                        break;
                      }

                      if (v54 != 1)
                      {
                        v73 = (v54 - 1);
                        utf8_GetPreviousValidUtf8Offset(v77, &v73);
                        v54 = v73;
                        if (v73)
                        {
                          continue;
                        }
                      }

                      v54 = 0;
                      break;
                    }

                    v69 = v54;
                    v57 = utf8_determineUTF8CharLength(v77[v54]);
                    if (utf8_strchr(g_szSpace_2, &v77[v54]))
                    {
                      v66 = v57 + v54;
                      if (v66 < v76 && !utf8_strchr(g_szSpace_2, &v77[v54 + v57]))
                      {
                        if (utf8_strchr(g_szSpace_2, &v42[v54 + v57]))
                        {
                          v42[v66] = *v52;
                          v51 = v54;
                        }

                        else
                        {
                          log_OutText(*(*a1 + 32), a1[23], 5, 0, "DEPES language layer problem, trying to overwrite [%d] %c when aligning with [%d] %c; ignore", v66, v42[v66], v50, *v52);
                        }

                        v49 = v67;
LABEL_91:
                        *v52 = 32;
                        goto LABEL_85;
                      }
                    }

                    if (!v56)
                    {
                      v49 = v67;
                      if (v57 >= v76 || utf8_strchr(g_szSpace_2, &v77[v69 + v57]))
                      {
                        goto LABEL_85;
                      }

                      if (utf8_strchr(g_szSpace_2, &v42[v69]))
                      {
                        v42[v69] = *v52;
                      }

                      else
                      {
                        log_OutText(*(*a1 + 32), a1[23], 5, 0, "DEPES language layer problem, trying to overwrite [%d] %c when aligning with [%d] %c; ignore", 0, v42[v69], v50, *v52);
                      }

                      goto LABEL_91;
                    }

                    v49 = v67;
                  }
                }

                else
                {
                  v51 = 0;
                }
              }

LABEL_85:
              v51 += utf8_determineUTF8CharLength(v42[v51]);
              v50 = v51;
              if (v51 >= __n[0])
              {
                goto LABEL_101;
              }
            }

            v58 = utf8_determineUTF8CharLength(v53);
            if (v58)
            {
              memset(&v42[v50], 32, v58);
            }

LABEL_61:
            v53 = *v52;
            goto LABEL_63;
          }

LABEL_101:
          v60 = add2StringV2(a1, *(a1[40] + 8), v77);
          if ((v60 & 0x80000000) != 0)
          {
            v22 = v60;
          }

          else
          {
            a6 = v71;
            v22 = add2StringV2(a1, v71, v42);
            if ((v22 & 0x80000000) == 0)
            {
              v7 = v70;
              if (v72 == 1)
              {
                LOWORD(v73) = v49;
                textnormalizer_markercountlayer_GetWordBegPos(v74, v78, v77, a1[65], &v73, *(a1 + 272));
                if (v73 > v49)
                {
                  v61 = a1[40];
                  v62 = (a1[65] + 2 * v49);
                  v63 = v73 - v49;
                  do
                  {
                    *v62++ += *(v61 + 32);
                    --v63;
                  }

                  while (v63);
                }
              }

              heap_Free(*(*a1 + 8), v42);
              goto LABEL_94;
            }
          }

          heap_Free(*(*a1 + 8), v42);
          return v22;
        }

        v22 = v37;
        v23 = *(*a1 + 32);
        v24 = a1[23];
        v25 = 24058;
      }
    }
  }

  log_OutPublic(v23, v24, v25, 0, v64, v65);
LABEL_94:
  if (*(a1 + 137) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "TOKEN _%s_, MAP _%s_", **(a1[40] + 8), *a6);
  }

  *v7 = 1;
  return v22;
}

uint64_t textnormalizer_markercountlayer_GetWordBegPos(_BYTE *a1, int a2, const char *a3, uint64_t a4, _WORD *a5, unsigned int a6)
{
  LODWORD(v10) = a2;
  result = TOK_COUNT_SP_WORDS(a3);
  if (v10)
  {
    v13 = result;
    v14 = 0;
    v15 = 0;
    v10 = v10;
    do
    {
      if (*a5 >= a6 || v14 >= v13)
      {
        break;
      }

      if (*a1)
      {
        *(a4 + 2 * (*a5)++) = v15;
        ++v14;
      }

      result = utf8_determineUTF8CharLength(a3[v15]);
      v15 += result;
      ++a1;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t blockedByBtok(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 634);
  if (!*(a1 + 634))
  {
    return 0;
  }

  for (i = (*(a1 + 624) + 2); ; i += 2)
  {
    v5 = *(i - 1);
    if (v5 <= a2)
    {
      v6 = *i;
      if (v6 >= a3)
      {
        break;
      }
    }

    if (v5 <= a3)
    {
      v6 = *i;
      if (v6 >= a3)
      {
        break;
      }
    }

    if (v5 <= a2)
    {
      v6 = *i;
      if (v6 >= a2)
      {
        break;
      }
    }

    if (!--v3)
    {
      return 0;
    }
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "match %d,%d blocked by btok %d,%d", a2, a3, v5, v6);
  return 1;
}

uint64_t clearBTokMatchList(uint64_t a1)
{
  if (*(a1 + 634))
  {
    heap_Free(*(*a1 + 8), *(a1 + 624));
    *(a1 + 632) = 0;
  }

  return 0;
}

uint64_t textnormalizer_DoExpansionActions(uint64_t *a1, unsigned __int16 *a2)
{
  v102 = 0;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  v98 = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : DoExpansions Begin");
  if (!a1[38])
  {

    return TOKENTNERROR(7);
  }

  if (*(a1 + 137) == 1)
  {
    dumpTokenRecordsInLingDB(a1, "At Start of DoExpansions", 0);
  }

  if (!*(a1 + 156))
  {
    v4 = 0;
    goto LABEL_198;
  }

  v3 = 0;
  v4 = 0;
  LOWORD(v5) = 0;
  v6 = 0;
  while (1)
  {
    FERuntimeData_GetKeyAtPos(a1, v6, &v101, &v100);
    if (!v101 || v3 != *v101)
    {
      ++v6;
      goto LABEL_183;
    }

    FEData_blockData_getTokenAndExpansionData(a1, *(v100 + 88), &v102, &v98, &v99);
    v7 = *v101;
    v8 = v101[1];
    if (v7 >= v8)
    {
      v9 = *v101;
    }

    else
    {
      while (*(a1[38] + v7) == 32)
      {
        v9 = ++v7;
        if (v7 >= v8)
        {
          goto LABEL_15;
        }
      }

      v9 = v7;
    }

LABEL_15:
    if (v9 >= v8)
    {
      v11 = 1;
    }

    else
    {
      v10 = a1[38];
      v11 = 1;
      do
      {
        if (*(v10 + v7) == 32)
        {
          ++v11;
          do
          {
            v12 = ++v7;
          }

          while (v7 < v8 && *(v10 + v7) == 32);
        }

        else
        {
          v12 = ++v7;
        }
      }

      while (v12 < v8);
    }

    resetAlignmentData(a1);
    v13 = v101;
    v14 = *v101;
    v15 = v101[1];
    if (v14 >= v15)
    {
      v16 = *v101;
    }

    else
    {
      while (*(a1[38] + v14) == 32)
      {
        v16 = ++v14;
        if (v14 >= v15)
        {
          goto LABEL_32;
        }
      }

      v16 = v14;
    }

LABEL_32:
    v17 = a1[67];
    *(v17 + 2 * *(a1 + 272)) = v14;
    v18 = *(a1 + 272) + 1;
    *(a1 + 272) = v18;
    v19 = v13[1];
    if (v16 < v19)
    {
      v20 = v13[1];
      v21 = a1[38];
      do
      {
        if (*(v21 + v14) == 32)
        {
          while (v19 > v14 && *(v21 + v14) == 32)
          {
            ++v14;
          }

          *(v17 + 2 * v18) = v14;
          v18 = *(a1 + 272) + 1;
          *(a1 + 272) = v18;
          v20 = v13[1];
        }

        ++v14;
        v19 = v20;
      }

      while (v20 > v14);
    }

    if (!v99)
    {
      v30 = *(*a1 + 32);
      v31 = a1[23];
      v94 = 24015;
      goto LABEL_196;
    }

    if (*(*(v100 + 88) + 8) == 1)
    {
      v22 = addBTokMatchToList(a1, v13);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_197;
      }
    }

    if (*(a1 + 137) == 1)
    {
      strncpy(a1[69], (a1[38] + *v101), (v101[1] - *v101));
      *(a1[69] - *v101 + v101[1]) = 0;
      v23 = *(*a1 + 32);
      v24 = a1[23];
      if (*(*(v100 + 88) + 8) == 1)
      {
        log_OutText(v23, v24, 5, 0, "DoExpansions : applying method %s with arg %s for btok %3d,%3d %-15s %s (%d input words)", v99[6], v99[5], *v101, v101[1]);
      }

      else
      {
        log_OutText(v23, v24, 5, 0, "DoExpansions : applying expansion for token %3d,%3d %-15s %s (%d input words)", *v101, v101[1]);
      }
    }

    if (*(a1 + 272))
    {
      v25 = 0;
      v26 = a1[65];
      do
      {
        *(v26 + 2 * v25++) = 9999;
      }

      while (v25 < *(a1 + 272));
    }

    *(a1 + 201) = 0;
    *a1[49] = 0;
    *(a1 + 209) = 0;
    *a1[51] = 0;
    *(a1 + 217) = 0;
    *a1[53] = 0;
    *(a1 + 225) = 0;
    *a1[55] = 0;
    *(a1 + 233) = 0;
    *a1[57] = 0;
    *(a1 + 241) = 0;
    *a1[59] = 0;
    v28 = v100;
    v27 = v101;
    v29 = a1[40];
    *(v29 + 16) = v101;
    *(v29 + 24) = v28;
    *(v29 + 32) = 0;
    if (*(*(v28 + 88) + 8) == 1)
    {
      v22 = tn_nn_predictBTok(a1, v99, (a1 + 49), (a1 + 51), (a1 + 53), (a1 + 55), (a1 + 57), a1 + 59, *v27, HIWORD(*v27), a1[38]);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_197;
      }

      goto LABEL_164;
    }

    v22 = applyExpansion(a1, v99, (a1 + 49), (a1 + 51), (a1 + 55), a1[38]);
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_197;
    }

    v30 = *(*a1 + 32);
    v31 = a1[23];
    if (!*(a1 + 201))
    {
      break;
    }

    log_OutText(v30, v31, 5, 0, "DoExpansions : expansion -> %s", a1[49]);
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "               langmap   -> %s", a1[51]);
    v32 = strlen(a1[49]);
    v33 = TOK_COUNT_SP_WORDS(a1[49]);
    v34 = v33;
    if (v33 == v11)
    {
      v35 = v11;
      v36 = v11 > 1u;
      if (v35 >= 2)
      {
        if (*(a1 + 272))
        {
          v95 = v33;
          v37 = 0;
          do
          {
            if (*(a1[65] + 2 * v37) == 9999)
            {
              v38 = 0;
              if (v32)
              {
                do
                {
                  if (!utf8_strchr(g_szSpace_3, (a1[49] + v38)))
                  {
                    break;
                  }

                  v38 += utf8_determineUTF8CharLength(*(a1[49] + v38));
                }

                while (v38 < v32);
              }

              v39 = 0;
              if (v37 && v32 > v38)
              {
                v40 = 0;
                do
                {
                  if (utf8_strchr(g_szSpace_3, (a1[49] + v38)))
                  {
                    if (v37 == ++v40)
                    {
                      break;
                    }

                    for (i = *(a1[49] + v38); ; i = *(a1[49] + v38))
                    {
                      v38 += utf8_determineUTF8CharLength(i);
                      if (v101[1] <= v38 || !utf8_strchr(g_szSpace_3, (a1[49] + v38)))
                      {
                        break;
                      }
                    }
                  }

                  else
                  {
                    v38 += utf8_determineUTF8CharLength(*(a1[49] + v38));
                  }
                }

                while (v32 > v38);
                v39 = v40;
              }

              v42 = a1[65];
              if (v39 != v37)
              {
                *(v42 + 2 * v37) = 9999;
                log_OutPublic(*(*a1 + 32), a1[23], 24017, "%s%d", "position", v37);
                v36 = 1;
                v43 = 1;
                v34 = v95;
                goto LABEL_82;
              }

              *(v42 + 2 * v37) = v38;
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "guessing alignment position for word %d to be %d", v37, v38);
            }

            ++v37;
          }

          while (v37 < *(a1 + 272));
          v43 = 0;
          v36 = 1;
          v34 = v95;
          if (*(a1 + 272))
          {
            goto LABEL_83;
          }
        }

        else
        {
          v43 = 0;
          v36 = 1;
        }

        goto LABEL_98;
      }

      v43 = 0;
    }

    else
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "mismatch in number of words; in:%d out: %d", v11, v33);
      v36 = v11 > 1u;
      v43 = 1;
    }

LABEL_82:
    if (*(a1 + 272))
    {
LABEL_83:
      v44 = 0;
      v45 = a1[65];
      do
      {
        v46 = *(v45 + 2 * v44);
        v47 = v46 != 9999 && v32 >= v46;
        if (!v47 || v44 && ((v48 = *(v45 + 2 * (v44 - 1)), v48 != 9999) ? (v49 = v46 >= v48) : (v49 = 1), !v49))
        {
          *(v45 + 2 * v44) = 9999;
          v43 = 1;
        }

        ++v44;
        v50 = *(a1 + 272);
      }

      while (v44 < v50);
      v51 = v50 == 0;
      goto LABEL_99;
    }

LABEL_98:
    v51 = 1;
LABEL_99:
    if (v43 == 1)
    {
      if (v34 < 2)
      {
        if (!v51)
        {
          v59 = 0;
          v60 = a1[65];
          do
          {
            *(v60 + 2 * v59++) = 0;
          }

          while (v59 < *(a1 + 272));
        }
      }

      else if (!v51)
      {
        v52 = a1[65];
        *v52 = 0;
        v53 = *(a1 + 272);
        if (v53 >= 2)
        {
          v54 = v52 + 1;
          for (j = 1; j < v53; ++j)
          {
            if (*v54 == 9999)
            {
              *v54 = *(v54 - 1);
              v53 = *(a1 + 272);
            }

            ++v54;
          }

          if (v53 >= 2)
          {
            v56 = a1[65];
            v57 = (v56 + 2);
            v58 = v53 - 1;
            while (*(v57 - 1) <= *v57)
            {
              ++v57;
              if (!--v58)
              {
                goto LABEL_115;
              }
            }

            v92 = 0;
            do
            {
              *(v56 + 2 * v92++) = 0;
            }

            while (v92 < *(a1 + 272));
          }
        }
      }
    }

LABEL_115:
    v61 = a1[49];
    v62 = strlen(v61);
    if (v62)
    {
      CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v61, v62 - 1);
      v61 = a1[49];
    }

    else
    {
      CurrentUtf8Offset = v62;
    }

    if (utf8_strchr(g_szSpace_3, v61))
    {
      v64 = 0;
      v5 = 0;
      do
      {
        v5 += utf8_determineUTF8CharLength(*(a1[49] + v64));
        v64 = v5;
      }

      while (utf8_strchr(g_szSpace_3, (a1[49] + v5)));
    }

    else
    {
      LOWORD(v5) = 0;
    }

    for (; v5 < CurrentUtf8Offset; CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(a1[49], CurrentUtf8Offset - 1))
    {
      if (!utf8_strchr(g_szSpace_3, (a1[49] + CurrentUtf8Offset)))
      {
        break;
      }

      *(a1[49] + CurrentUtf8Offset) = 0;
      if (*(a1 + 209) > CurrentUtf8Offset)
      {
        *(a1[51] + CurrentUtf8Offset) = 0;
      }
    }

    v96 = v36;
    if (v36 && *(a1 + 272))
    {
      v65 = 0;
      do
      {
        v66 = a1[65];
        for (k = *(v66 + 2 * v65); k < CurrentUtf8Offset; k = *(v66 + 2 * v65))
        {
          if (!utf8_strchr(g_szSpace_3, (a1[49] + k)))
          {
            break;
          }

          *(v66 + 2 * v65) += utf8_determineUTF8CharLength(*(a1[49] + *(v66 + 2 * v65)));
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "alignment position for word %d adjusted to %d", v65, *(a1[65] + 2 * v65));
        }

        ++v65;
      }

      while (v65 < *(a1 + 272));
    }

    if (v5)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "DoExpansions : adjusted expansion -> %s", a1[49]);
      if (v96)
      {
        if (*(a1 + 272))
        {
          v68 = 0;
          do
          {
            v69 = a1[65];
            if (*(v69 + 2 * v68))
            {
              v70 = *(v69 + 2 * v68) - v5;
              *(v69 + 2 * v68) = v70;
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "alignment position for word %d adjusted (by +%d) to %d", v68, v5, v70);
            }

            ++v68;
          }

          while (v68 < *(a1 + 272));
        }
      }
    }

    v71 = *(a1 + 201);
    if (v71 != *(a1 + 209))
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "mismatch in langmap and expansion string (length is different: %d vs %d)", *(a1 + 209), v71);
      *(a1 + 209) = 0;
      *a1[51] = 0;
    }

    v72 = strlen(a1[51]);
    if (!v72)
    {
      goto LABEL_157;
    }

    v73 = 0;
    v74 = 0;
    v75 = 32;
    do
    {
      v76 = v74;
      v77 = (a1[51] + v74);
      v78 = *v77;
      if (v78 == v75 && (v79 = utf8_strchr(g_szSpace_3, v77), v78 = *(a1[51] + v76), !v79))
      {
        v80 = utf8_determineUTF8CharLength(v78);
        v81 = v80;
        if (v80)
        {
          v82 = v73;
          do
          {
            *(a1[51] + v82++) = 32;
            --v81;
          }

          while (v81);
        }
      }

      else if ((v78 | 2) == 0x4E)
      {
        v75 = v78;
      }

      v74 = v76 + utf8_determineUTF8CharLength(*(a1[51] + v76));
      v73 = v74;
    }

    while (v72 > v74);
    if (v75 == 32)
    {
LABEL_157:
      *(a1 + 209) = 0;
      *a1[51] = 0;
    }

    if (*(a1 + 209))
    {
      v83 = a1[51];
    }

    else
    {
      v83 = "(empty)";
    }

    log_OutText(*(*a1 + 32), a1[23], 4, 0, "sanitized langMap=%s", v83);
    if (*(a1 + 209))
    {
      v84 = strlen(a1[51]);
      if (v84 != strlen(a1[49]))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24061, "%s%s%s%s", "langmap:", a1[51], " is not same length as token:", a1[49]);
        *(a1 + 209) = 0;
        *a1[51] = 0;
      }
    }

LABEL_164:
    v85 = a1[49];
    if (*(*(v100 + 88) + 8) == 1)
    {
      if (*(a1 + 225))
      {
        v86 = a1[55];
      }

      else
      {
        v86 = 0;
      }

      if (*(a1 + 233))
      {
        v88 = a1[57];
      }

      else
      {
        v88 = 0;
      }

      v4 = saveExpansionInLDO(a1, a1[53], v85, v86, v88, a1[59], v5, v101);
      *(a1 + 217) = 0;
      *a1[53] = 0;
      *(a1 + 225) = 0;
      *a1[55] = 0;
      *(a1 + 233) = 0;
      *a1[57] = 0;
      *(a1 + 241) = 0;
      *a1[59] = 0;
    }

    else
    {
      if (*(a1 + 225))
      {
        v87 = a1[55];
      }

      else
      {
        v87 = 0;
      }

      if (*(a1 + 233))
      {
        v89 = a1[57];
      }

      else
      {
        v89 = 0;
      }

      v4 = saveExpansionInLDO(a1, v102, v85, v87, v89, 0, v5, v101);
    }

    v90 = *(*a1 + 32);
    v91 = a1[23];
    if ((v4 & 0x80000000) != 0)
    {
      log_OutPublic(v90, v91, 24019, 0);
      goto LABEL_198;
    }

    log_OutText(v90, v91, 5, 0, "DoExpansions : created new LDO Label from %d to %d", *v101, v101[1]);
    if (*(a1 + 137) == 1)
    {
      dumpTokenRecordsInLingDB(a1, "After saving expanded token as Label in LDO", 0);
    }

    v6 = v101[1];
    *a2 = v6;
LABEL_183:
    v101 = 0;
    v3 = v6;
    if (v6 >= *(a1 + 156))
    {
      goto LABEL_198;
    }
  }

  v94 = 24016;
LABEL_196:
  log_OutPublic(v30, v31, v94, 0);
  v22 = TOKENTNERROR(266);
LABEL_197:
  v4 = v22;
LABEL_198:
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : DoExpansions End (%x)", v4);
  return v4;
}

uint64_t applyExpansion(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  __b = 0;
  __len = 0;
  v52 = 0;
  v53 = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : applyExpansion Begin");
  if (*(a1 + 153) == 1)
  {
    v12 = a2[5];
    if (v12)
    {
      v13 = a1[88];
      v14 = strstr(v12, v13);
      if (a6)
      {
        if (v14)
        {
          if ((v14[strlen(v13)] | 0x20) == 0x20)
          {
            v15 = a1[22];
            if (*(v15 + 16))
            {
              v16 = *(v15 + 8);
              if (v16)
              {
                v50 = a3;
                do
                {
                  v17 = a4;
                  v18 = *(v16 + 106);
                  if (v18)
                  {
                    v19 = 0;
                    do
                    {
                      v20 = v16 + 2 * v19 + 33;
                      v21 = *v20;
                      v22 = v20[1];
                      if (v21 == -1 && v22 == 0xFFFF)
                      {
                        ++v19;
                      }

                      else
                      {
                        strncpy(a1[69], (a6 + v21), (v22 - v21));
                        *(a1[69] - *v20 + v20[1]) = 0;
                        v24 = add2StringV2(a1, a5, a1[69]);
                        if ((v24 & 0x80000000) != 0)
                        {
                          goto LABEL_92;
                        }

                        if (++v19 == *(v16 + 106))
                        {
                          v18 = *(v16 + 106);
                        }

                        else
                        {
                          v24 = add2StringV2(a1, a5, a1[87]);
                          if ((v24 & 0x80000000) != 0)
                          {
                            goto LABEL_92;
                          }

                          v18 = *(v16 + 106);
                        }
                      }
                    }

                    while (v19 < v18);
                  }

                  v16 = *v16;
                  a4 = v17;
                  a3 = v50;
                }

                while (v16);
              }
            }
          }
        }
      }
    }
  }

  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  __b = 0;
  __len = 0;
  v52 = 0;
  v53 = 0;
  inited = initStrRes(a1, &v62);
  if ((inited & 0x80000000) == 0)
  {
    v24 = initStrRes(a1, &v60);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_92;
    }

    v24 = initStrRes(a1, &v52);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_92;
    }

    v24 = initStrRes(a1, &v56);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_92;
    }

    v24 = initStrRes(a1, &v58);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_92;
    }

    if (*(a2 + 24))
    {
      v26 = 0;
      do
      {
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing subexpansion %d ...", v26);
        v24 = applyExpansion(a1, *&a2[2][2 * v26], &v62, &v60, 0, 0);
        if ((v24 & 0x80000000) != 0)
        {
          goto LABEL_92;
        }

        if (WORD1(v63))
        {
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "after subexpansion %d str=%s, langmap=%s", v26, v62, v60);
          if (WORD1(v63))
          {
            if (!**a2)
            {
              *(a1[40] + 32) += strlen(v62);
            }

            v24 = add2StringV3(a1, &v56, &v62);
            if ((v24 & 0x80000000) != 0)
            {
              goto LABEL_92;
            }

            v24 = add2StringV3(a1, &v58, &v60);
            if ((v24 & 0x80000000) != 0)
            {
              goto LABEL_92;
            }

            WORD1(v63) = 0;
            *v62 = 0;
            WORD1(v61) = 0;
            *v60 = 0;
          }
        }
      }

      while (++v26 < *(a2 + 24));
    }

    clearStrRes(*a1, &v62);
    clearStrRes(*a1, &v60);
    clearStrRes(*a1, &v52);
    if (WORD1(v57) && (**a2 - 1) <= 2)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "CALL function on expanded string (%s)", v56);
    }

    v27 = initStrRes(a1, &__b);
    if ((v27 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    v28 = *a2;
    v29 = **a2;
    if ((v29 - 1) < 2)
    {
      v51 = 0;
      FEFunctionMap_GetFunction(a1, 1u, v28, &v64);
      v30 = a1[40];
      *v30 = a2[5];
      *(v30 + 8) = &__b;
      *(v30 + 34) = *(a2 + 4);
      v27 = v64(a1, &v51);
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_93;
      }

      if (!v51)
      {
        goto LABEL_90;
      }

      v24 = add2StringV3(a1, a3, &__b);
      if ((v24 & 0x80000000) == 0)
      {
        memset(__b, 32, WORD1(__len));
        p_b = &__b;
        goto LABEL_89;
      }

      goto LABEL_92;
    }

    if (v29 != 3)
    {
      goto LABEL_90;
    }

    v32 = *(a2 + 24);
    if (*(a2 + 24))
    {
      v33 = 0;
      v34 = 9999;
      while (1)
      {
        v35 = *&a2[2][2 * v33];
        if (**v35 == 2)
        {
          v36 = *(v35 + 8);
          v37 = a1[40];
          v38 = *(v37 + 24);
          if (v36 > *(v38 + 82))
          {
            log_OutPublic(*(*a1 + 32), a1[23], 24008, "%s%d", "intVal", v36);
            TOKENTNERROR(0);
            v38 = *(a1[40] + 24);
            v32 = *(a2 + 24);
LABEL_56:
            v39 = *(v38 + 4 * (v36 - 1) + 42);
            if (v39 < v34 && ~v39 != 0)
            {
              v34 = v39;
            }

            goto LABEL_61;
          }

          if (v36)
          {
            goto LABEL_56;
          }

          v34 = **(v37 + 16);
        }

LABEL_61:
        if (++v33 >= v32)
        {
          goto LABEL_65;
        }
      }
    }

    v34 = 9999;
LABEL_65:
    v41 = *(a1 + 272);
    if (*(a1 + 272))
    {
      v42 = 0;
      v43 = a1[67];
      do
      {
        v44 = *v43++;
        if (v44 == v34)
        {
          v42 = 1;
        }

        --v41;
      }

      while (v41);
      if (v42 == 1)
      {
        v45 = **(a1[40] + 16);
        if (v45 < v34)
        {
          do
          {
            if (!utf8_strchr(g_szSpace_3, (a1[38] + v45)))
            {
              break;
            }

            v45 += utf8_determineUTF8CharLength(*(a1[38] + v45));
          }

          while (v45 < v34);
        }

        if (v45 < v34)
        {
          v46 = 0;
          do
          {
            v47 = v45;
            if (utf8_strchr(g_szSpace_3, (a1[38] + v45)))
            {
              ++v46;
              if (v45 < v34)
              {
                while (1)
                {
                  v47 = v45;
                  if (!utf8_strchr(g_szSpace_3, (a1[38] + v45)))
                  {
                    break;
                  }

                  v45 += utf8_determineUTF8CharLength(*(a1[38] + v45));
                  if (v45 >= v34)
                  {
                    v47 = v45;
                    break;
                  }
                }
              }
            }

            v45 += utf8_determineUTF8CharLength(*(a1[38] + v47));
          }

          while (v45 < v34);
LABEL_85:
          v48 = a1[40];
          *v48 = v56;
          v48[1] = &__b;
          v51 = 0;
          v27 = textnormalizer_DoDepes(a1, a2[6], v46, v42, &v51, &v52);
          if ((v27 & 0x80000000) != 0)
          {
            goto LABEL_93;
          }

          if (!v51)
          {
            goto LABEL_90;
          }

          v24 = add2StringV3(a1, a3, &__b);
          if ((v24 & 0x80000000) == 0)
          {
            p_b = &v52;
LABEL_89:
            v27 = add2StringV3(a1, a4, p_b);
            if ((v27 & 0x80000000) == 0)
            {
LABEL_90:
              clearStrRes(*a1, &__b);
              if (!**a2)
              {
                add2StringV3(a1, a3, &v56);
                add2StringV3(a1, a4, &v58);
              }
            }

LABEL_93:
            clearStrRes(*a1, &v52);
            clearStrRes(*a1, &__b);
            clearStrRes(*a1, &v56);
            clearStrRes(*a1, &v58);
            clearStrRes(*a1, &v62);
            clearStrRes(*a1, &v60);
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : applyExpansion End");
            return v27;
          }

LABEL_92:
          v27 = v24;
          goto LABEL_93;
        }
      }
    }

    else
    {
      v42 = 0;
    }

    v46 = 0;
    goto LABEL_85;
  }

  return inited;
}

uint64_t textnormalizer_ObjOpen(uint64_t *a1)
{
  v9 = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjOpen Begin");
  Map = FEFunctionMap_GetMap(a1, &v9);
  if ((Map & 0x80000000) != 0)
  {
LABEL_6:
    v7 = Map;
  }

  else
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v4;
      v6 = ssftmap_Insert(v9, *(&off_1F42D3918 + 2 * v3), *(&off_1F42D3918 + 2 * v3 + 1));
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      v4 = 0;
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        Map = FEFunctionMap_AddFunctionMap(a1, 1u, v9);
        goto LABEL_6;
      }
    }

    v7 = v6;
    log_OutPublic(*(*a1 + 32), a1[23], 24010, 0);
    ssftmap_ObjClose(v9);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjOpen End (%x)", v7);
  return v7;
}

uint64_t textnormalizer_ObjClose(uint64_t *a1)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjClose Begin");
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjClose End (%x)", 0);
  return 0;
}

uint64_t textnormalizer_DoMatch(uint64_t a1, int *a2)
{
  v2 = a2;
  *a2 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_MATCH( %d) = ", *(*(a1 + 320) + 34));
  }

  v4 = *(a1 + 320);
  v5 = *(v4 + 34);
  if (!*(v4 + 34))
  {
    v9 = *(v4 + 24);
    if (v9[20])
    {
      if (!*v9)
      {
        v11 = 0;
LABEL_19:
        v17 = *(v4 + 8);
        v18 = (*(a1 + 504) + v9[2 * v11 + 1]);
        goto LABEL_68;
      }

      v10 = 0;
      while (v9[20] > ++v10)
      {
        v11 = v10;
        if (!v9[2 * v10])
        {
          goto LABEL_19;
        }
      }
    }

    v16 = add2StringV4(a1, *(v4 + 8), **(v4 + 16), *(*(v4 + 16) + 2));
    goto LABEL_69;
  }

  v6 = *(v4 + 24);
  if (*(v6 + 82) < (v5 - 1))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24008, "%s%d", "intVal", (v5 - 1));
    v7 = 0;
    v8 = 0;
LABEL_73:
    *v2 = v7;
    return v8;
  }

  v12 = &v6[2 * (v5 - 1)];
  v14 = v12[21];
  v13 = v12 + 21;
  if (v14 == -1 && v13[1] == -1)
  {
    v17 = *(v4 + 8);
    v18 = "";
LABEL_68:
    v16 = add2StringV2(a1, v17, v18);
LABEL_69:
    v8 = v16;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    return v8;
  }

  if (v6[20])
  {
    if (*v6 == v5)
    {
      v15 = 0;
LABEL_23:
      v8 = add2StringV2(a1, *(v4 + 8), (*(a1 + 504) + v6[2 * v15 + 1]));
      if ((v8 & 0x80000000) == 0)
      {
        v32 = v2;
        v20 = (*(a1 + 504) + *(*(*(a1 + 320) + 24) + 4 * v15 + 2));
LABEL_27:
        v21 = strlen(v20);
        if (v21)
        {
          v22 = 0;
          while (v22)
          {
            if (utf8_strchr(g_szSpace_4, &v20[v22]))
            {
              if (v21 > v22)
              {
                v23 = v22;
                do
                {
                  v24 = &v20[v22];
                  if (utf8_strchr(g_szSpace_4, v24))
                  {
                    v25 = v23 + 1 >= v21;
                  }

                  else
                  {
                    v25 = 1;
                  }

                  if (v25)
                  {
                    break;
                  }

                  if (!utf8_strchr(g_szSpace_4, v24 + 1))
                  {
                    break;
                  }

                  v22 += utf8_determineUTF8CharLength(*v24);
                  v23 = v22;
                }

                while (v21 > v22);
              }

              goto LABEL_41;
            }

LABEL_65:
            v22 += utf8_determineUTF8CharLength(v20[v22]);
            if (v22 >= v21)
            {
              goto LABEL_66;
            }
          }

          v22 = 0;
LABEL_41:
          v26 = *v13 + v22;
          if (*(a1 + 544))
          {
            v27 = 0;
            while (*(*(a1 + 536) + v27) != v26)
            {
              v27 += 2;
              if (2 * *(a1 + 544) == v27)
              {
                goto LABEL_47;
              }
            }

            *(*(a1 + 520) + v27) = *(*(a1 + 320) + 32) + v22;
          }

LABEL_47:
          if (v26 && *(a1 + 312) > v26 && TOK_IS_ALPHANUM((*(a1 + 304) + v26)) && TOK_IS_PUNCT((*(a1 + 304) + v26 - 1)))
          {
            PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(*(a1 + 304), v26);
            v29 = PreviousUtf8Offset;
            if (PreviousUtf8Offset)
            {
              do
              {
                if (!TOK_IS_PUNCT((*(a1 + 304) + v29)))
                {
                  break;
                }

                if (!TOK_IS_PUNCT((*(a1 + 304) + v29 - 1)))
                {
                  break;
                }

                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(*(a1 + 304), v29);
                v29 = PreviousUtf8Offset;
              }

              while (PreviousUtf8Offset);
              v29 = v29;
            }

            else
            {
              v29 = 0;
            }

            if (utf8_strchr(g_szSpace_4, (*(a1 + 304) + v29)))
            {
              PreviousUtf8Offset += utf8_determineUTF8CharLength(*(*(a1 + 304) + v29));
            }

            if (*(a1 + 544))
            {
              v30 = 0;
              while (*(*(a1 + 536) + v30) != PreviousUtf8Offset)
              {
                v30 += 2;
                if (2 * *(a1 + 544) == v30)
                {
                  goto LABEL_65;
                }
              }

              *(*(a1 + 520) + v30) = *(*(a1 + 320) + 32) + v22;
            }
          }

          goto LABEL_65;
        }

LABEL_66:
        v2 = v32;
LABEL_70:
        if (*(a1 + 548) == 1)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 320) + 8));
        }

        v7 = 1;
        goto LABEL_73;
      }

      return v8;
    }

    v19 = 0;
    while (v6[20] > ++v19)
    {
      v15 = v19;
      if (v6[2 * v19] == v5)
      {
        goto LABEL_23;
      }
    }
  }

  strncpy(*(a1 + 552), (*(a1 + 304) + **(v4 + 16)), (*(*(v4 + 16) + 2) - **(v4 + 16)));
  *(*(a1 + 552) - **(*(a1 + 320) + 16) + *(*(*(a1 + 320) + 16) + 2)) = 0;
  v20 = *(a1 + 552);
  v8 = add2StringV4(a1, *(*(a1 + 320) + 8), *v13, v13[1]);
  if ((v8 & 0x80000000) == 0)
  {
    v32 = v2;
    goto LABEL_27;
  }

  return v8;
}

uint64_t textnormalizer_DoString(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_STRING_TTS( %s) = ", **(a1 + 320));
  }

  v4 = add2StringV2(a1, *(*(a1 + 320) + 8), **(a1 + 320));
  if ((v4 & 0x80000000) == 0)
  {
    if (*(a1 + 548) == 1)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 320) + 8));
    }

    *a2 = 1;
  }

  return v4;
}

uint64_t getDctStr(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 82);
  if (*(a2 + 82))
  {
    v7 = 0;
    v8 = 0;
    result = 0;
    v10 = a2 + 42;
    v11 = (a2 + 2);
    while (1)
    {
      v12 = (v10 + 4 * v7);
      if (*v12 != -1 || v12[1] != -1)
      {
        v13 = *(a2 + 40);
        if (v13)
        {
          v14 = 0;
          v15 = v11;
          do
          {
            if (*(v15 - 1) - 1 == v8)
            {
              result = add2StringV2(a1, a3, (a1[63] + *v15));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v13 = *(a2 + 40);
            }

            ++v14;
            v15 += 2;
          }

          while (v14 < v13);
          v3 = *(a2 + 82);
        }
      }

      if (v8 + 1 != v3)
      {
        if (a1[87])
        {
          v16 = a1[87];
        }

        else
        {
          v16 = "|";
        }

        result = add2StringV2(a1, a3, v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v3 = *(a2 + 82);
      }

      v8 = ++v7;
      if (v7 >= v3)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t getRegexStr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 82);
  if (*(a2 + 82))
  {
    v9 = 0;
    result = 0;
    for (i = (a2 + 44); ; i += 2)
    {
      v12 = *(i - 1);
      v13 = *i;
      if (v12 == -1 && v13 == 0xFFFF)
      {
        goto LABEL_15;
      }

      strncpy(*(a1 + 552), (a4 + v12), (v13 - v12));
      *(*(a1 + 552) - *(i - 1) + *i) = 0;
      result = add2StringV2(a1, a3, *(a1 + 552));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v15 = *(a1 + 960);
      v4 = *(a2 + 82);
      if (v15 == 1)
      {
        break;
      }

LABEL_16:
      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v9 + 1 == v4;
      }

      if (!v17)
      {
        if (*(a1 + 696))
        {
          v18 = *(a1 + 696);
        }

        else
        {
          v18 = "|";
        }

        result = add2StringV2(a1, a3, v18);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v4 = *(a2 + 82);
      }

      if (++v9 >= v4)
      {
        return result;
      }
    }

    if (v9 + 1 != v4)
    {
      if (*(a1 + 696))
      {
        v16 = *(a1 + 696);
      }

      else
      {
        v16 = "|";
      }

      result = add2StringV2(a1, a3, v16);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v4 = *(a2 + 82);
    }

LABEL_15:
    v15 = *(a1 + 960);
    goto LABEL_16;
  }

  return 0;
}

uint64_t tn_nn_predictBTok(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char **a8, unsigned __int16 a9, unsigned __int16 a10, char *a11)
{
  *v35 = 0;
  v36 = 0;
  v18 = a1[22];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : predictBTokAndApplyExpansion Begin");
  v19 = *(a2 + 48);
  if (!strcmp(v19, "_NN"))
  {
    v21 = *(a2 + 40);
    v22 = strlen(v21);
    v23 = 0;
    if (v22)
    {
      while (v21[v23] == 32)
      {
        if (v22 == ++v23)
        {
          v23 = v22;
          break;
        }
      }
    }

    v24 = add2StringV2(a1, a8, &v21[v23]);
    if ((v24 & 0x80000000) != 0)
    {
      return v24;
    }

    v25 = *a8;
    v26 = strchr(*a8, 32);
    if (v26)
    {
      *v26 = 0;
      v25 = *a8;
    }

    Only = ssftmap_FindReadOnly(a1[85], v25, v35);
    if ((Only & 0x80000000) != 0)
    {
      RegexStr = Only;
      log_OutPublic(*(*a1 + 32), a1[23], 24069, "%s%s", "pattern", *a8);
      return RegexStr;
    }

    if (*(a1 + 365) >= *(a1 + 364))
    {
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "exceeded max NN calls per sentence %d, fallback to default prediction %s", *(a1 + 364), *(*v35 + 16));
      v28 = *(*v35 + 16);
    }

    else
    {
      v24 = nn_tn_process(*a1, a1[23], (a1 + 80), *a8, *v35, a9, a10, a11, &v36);
      ++*(a1 + 365);
      if ((v24 & 0x80000000) != 0)
      {
        return v24;
      }

      v28 = v36;
    }
  }

  else
  {
    if (strcmp(v19, "_UNAMBIG"))
    {
      return 2304778240;
    }

    v28 = *(a2 + 40);
  }

  v24 = add2StringV2(a1, a5, v28);
  if ((v24 & 0x80000000) != 0)
  {
    return v24;
  }

  if (a1[88])
  {
    v29 = a1[88];
  }

  else
  {
    v29 = "LUA";
  }

  if ((add2StringV2(a1, a3, v29) & 0x80000000) != 0)
  {
    return 2304778240;
  }

  RegexStr = add2StringV2(a1, a4, "");
  if ((RegexStr & 0x80000000) == 0)
  {
    memset(*a4, 32, *(a4 + 10));
    if (*(v18 + 16) && (v30 = *(v18 + 8)) != 0)
    {
      while (1)
      {
        RegexStr = getRegexStr(a1, (v30 + 3), a6, a11);
        if ((RegexStr & 0x80000000) != 0)
        {
          break;
        }

        if (!*(a1 + 240))
        {
          RegexStr = getDctStr(a1, (v30 + 3), a7);
          if ((RegexStr & 0x80000000) != 0)
          {
            break;
          }
        }

        v30 = *v30;
        if (!v30)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
LABEL_33:
      v32 = *(*a1 + 32);
      v33 = a1[23];
      if (*(a1 + 240) == 1)
      {
        log_OutText(v32, v33, 4, 0, "textnormalizer : predictBTokAndApplyExpansion End expansionFunction=%s regexStr=%s");
      }

      else
      {
        log_OutText(v32, v33, 4, 0, "textnormalizer : predictBTokAndApplyExpansion End expansionFunction=%s regexStr=%s dctmatchStr=%s");
      }
    }
  }

  return RegexStr;
}

uint64_t nn_tn_checkIfActive(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v13 = 0;
  v14 = 0;
  *a5 = 0;
  BrokerString = nn_tn_getBrokerString(a3, a4, &v14);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v10 = v14;
  if ((ssftriff_reader_ObjOpen(a1, a2, 2, v14, "FINN", 1, &v13) & 0x80000000) != 0)
  {
    v11 = 0;
    if (!v10)
    {
      return v11;
    }

LABEL_9:
    heap_Free(*(a3 + 8), v10);
    return v11;
  }

  v11 = ssftriff_reader_ObjClose(v13);
  if ((v11 & 0x80000000) == 0)
  {
    *a5 = 1;
  }

  if (v10)
  {
    goto LABEL_9;
  }

  return v11;
}

uint64_t nn_tn_getBrokerString(uint64_t a1, uint64_t a2, char **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = "";
  *v9 = 0;
  memset(v10, 0, sizeof(v10));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v9);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v8);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v7 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a3 = v7;
      if (v7)
      {
        return brokeraux_ComposeBrokerString(a1, v10, 1, 1, *v9, 0, 0, v7, 0x400uLL);
      }

      else
      {
        log_OutPublic(*(a1 + 32), a2, 24048, 0);
        return 2304778250;
      }
    }
  }

  return result;
}

uint64_t nn_tn_Load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a11 = 0;
  NumericFeatureValue = (*(a7 + 96))(a9, a10, "fecfg", "nn_tn_modelType", &__c[3], &__c[1], __c, a8);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v18 = **&__c[3];
    v19 = strchr(**&__c[3], __c[0]);
    if (v19)
    {
      *v19 = 0;
      v18 = **&__c[3];
    }

    if (!strcmp(v18, "char"))
    {
      v20 = 0;
    }

    else
    {
      if (strcmp(v18, "word_and_char"))
      {
        goto LABEL_11;
      }

      v20 = 2;
    }

    *a11 = v20;
  }

LABEL_11:
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *(a11 + 12) = 0;
  *(a11 + 24) = 0;
  if (*a11 == 1)
  {
    NumericFeatureValue = (*(a7 + 96))(a9, a10, "fecfg", "nn_tn_wordFocusPatternProcessing", &__c[3], &__c[1], __c);
  }

  else
  {
    if (*a11)
    {
      goto LABEL_22;
    }

    NumericFeatureValue = (*(a7 + 96))(a9, a10, "fecfg", "nn_tn_charFocusPatternProcessing", &__c[3], &__c[1], __c);
  }

  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v21 = **&__c[3];
    v22 = strchr(**&__c[3], __c[0]);
    if (v22)
    {
      *v22 = 0;
      v21 = **&__c[3];
    }

    if (!strcmp(v21, "Markup"))
    {
      if (*a11 == 1)
      {
        *(a11 + 24) = 1;
      }

      else if (!*a11)
      {
        *(a11 + 12) = 1;
      }
    }

    if (!strcmp(v21, "Embedded"))
    {
      if (*a11 == 1)
      {
        *(a11 + 24) = 2;
      }

      else if (!*a11)
      {
        *(a11 + 12) = 2;
      }
    }
  }

LABEL_22:
  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_maxNNCallsPerSent", (a11 + 88));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_charContextWindow", (a11 + 4));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_wordContextWindow", (a11 + 6));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_charEmbeddingDimension", (a11 + 8));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_wordEmbeddingDimension", (a11 + 10));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_max_x_len", (a11 + 28));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_Y_dict_size", (a11 + 30));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_addPatternAsFeature", &v43);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getStringFeatureValue(a5, a6, a7, a9, a10, "nn_tn_contextPaddingChar", (a11 + 16));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (v43 == 1)
  {
    *(a11 + 32) = 1;
  }

  NumericFeatureValue = getStringFeatureValue(a5, a6, a7, a9, a10, "nn_tn_regexSubmatchSeparator", (a11 + 56));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getStringFeatureValue(a5, a6, a7, a9, a10, "nn_tn_expansionProxyString", (a11 + 64));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = setModelPredictions(a5, a6, a7, a9, a10, a11);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  v23 = a5;
  log_OutText(*(a5 + 32), a6, 5, 0, "modelType %d", *a11);
  log_OutText(*(a5 + 32), a6, 5, 0, "charContextWindow %d", *(a11 + 4));
  log_OutText(*(a5 + 32), a6, 5, 0, "wordContextWindow %d", *(a11 + 6));
  log_OutText(*(a5 + 32), a6, 5, 0, "charEmbeddingDimension %d", *(a11 + 8));
  log_OutText(*(a5 + 32), a6, 5, 0, "wordEmbeddingDimension %d", *(a11 + 10));
  log_OutText(*(a5 + 32), a6, 5, 0, "charFocusType %d", *(a11 + 12));
  log_OutText(*(a5 + 32), a6, 5, 0, "wordFocusType %d", *(a11 + 24));
  log_OutText(*(a5 + 32), a6, 5, 0, "addPatternAsFeature %d", *(a11 + 32));
  log_OutText(*(a5 + 32), a6, 5, 0, "max_x_len %d", *(a11 + 28));
  log_OutText(*(a5 + 32), a6, 5, 0, "expansionProxyString %s", *(a11 + 64));
  log_OutText(*(a5 + 32), a6, 5, 0, "regexSubmatchSeparator %s", *(a11 + 56));
  v24 = *(a11 + 32);
  *(a11 + 36) = v24 == 1;
  if (*a11 == 1)
  {
    v25 = *(a11 + 24);
  }

  else
  {
    if (*a11)
    {
      goto LABEL_53;
    }

    v25 = *(a11 + 12);
  }

  if (v25 == 2)
  {
    if (v24 == 1)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    *(a11 + 36) = v26;
  }

LABEL_53:
  NumericFeatureValue = nn_word_lkp_GetInterface(1u, (a11 + 128));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  *(a11 + 136) = safeh_GetNullHandle();
  *(a11 + 144) = v27;
  *(a11 + 152) = safeh_GetNullHandle();
  *(a11 + 160) = v28;
  NumericFeatureValue = (*(*(a11 + 128) + 16))(*(a11 + 136), *(a11 + 144), "char", a1, a2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = (*(*(a11 + 128) + 40))(*(a11 + 152), *(a11 + 160), a11 + 168);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  log_OutText(*(a5 + 32), a6, 5, 0, "word2vec length %d", *(a11 + 168));
  v29 = heap_Alloc(*(a5 + 8), 4 * *(a11 + 168));
  *(a11 + 176) = v29;
  if (!v29)
  {
    log_OutPublic(*(a5 + 32), a6, 24048, 0);
    return 2304778250;
  }

  BrokerString = nn_tn_getBrokerString(a5, a6, &v42);
  v31 = v42;
  if ((BrokerString & 0x80000000) != 0)
  {
    v38 = BrokerString;
  }

  else
  {
    v32 = fi_init(a1, a2, a3, a4, &v41, 0, v42, "FINN", 1, 0);
    if ((v32 & 0x80000000) != 0)
    {
      v38 = 2304778240;
      log_OutPublic(*(a5 + 32), a6, 24063, 0);
    }

    else
    {
      v33 = *v41;
      v34 = *(*v41 + 56);
      if (*(*v41 + 52) == 2)
      {
        v35 = *(a11 + 168);
        v36 = *(a11 + 36);
        if (v34 == *(a11 + 28))
        {
          v37 = *(v33 + 60);
          if (v37 == v35 + v36)
          {
            v38 = v32;
            *(a11 + 104) = v41;
            *(a11 + 112) = v37 * v34;
            *(a11 + 184) = 0;
            *(a11 + 192) = 0;
            v23 = a5;
            goto LABEL_70;
          }
        }
      }

      else
      {
        v35 = *(a11 + 168);
        v36 = *(a11 + 36);
      }

      v23 = a5;
      log_OutPublic(*(a5 + 32), a6, 24067, "%s%d%d%s%d%d", "expected", v34, *(v33 + 60), "got", *(a11 + 28), v35 + v36);
      v38 = 2304778265;
    }
  }

LABEL_70:
  if (v31)
  {
    heap_Free(*(v23 + 8), v31);
  }

  return v38;
}

uint64_t nn_tn_UnLoad(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 176);
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    *(a3 + 176) = 0;
  }

  v7 = *(a3 + 128);
  if (v7)
  {
    (*(v7 + 24))(*(a3 + 152), *(a3 + 160));
    *(a3 + 128) = 0;
  }

  v8 = *(a3 + 48);
  if (v8)
  {
    ssftmap_ObjClose(v8);
  }

  v9 = *(a3 + 40);
  if (v9)
  {
    ssftmap_ObjClose(v9);
  }

  v10 = *(a3 + 56);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a3 + 56) = 0;
  }

  v11 = *(a3 + 64);
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    *(a3 + 64) = 0;
  }

  v12 = *(a3 + 16);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a3 + 16) = 0;
  }

  v13 = *(a3 + 80);
  if (v13)
  {
    if (*(a3 + 72))
    {
      v14 = 0;
      do
      {
        heap_Free(*(a1 + 8), *(*(a3 + 80) + 8 * v14));
        *(*(a3 + 80) + 8 * v14++) = 0;
      }

      while (v14 < *(a3 + 72));
      v13 = *(a3 + 80);
    }

    *(a3 + 72) = 0;
    heap_Free(*(a1 + 8), v13);
    *(a3 + 80) = 0;
  }

  v15 = *(a3 + 104);
  if (!v15)
  {
    return 0;
  }

  return fi_deinit(a1, a2, v15);
}

uint64_t nn_tn_freeSentData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 184);
  if (v3)
  {
    if (*(a2 + 192))
    {
      v5 = 0;
      do
      {
        heap_Free(*(a1 + 8), *(*(a2 + 184) + 8 * v5));
        *(*(a2 + 184) + 8 * v5++) = 0;
      }

      while (v5 < *(a2 + 192));
      v3 = *(a2 + 184);
    }

    heap_Free(*(a1 + 8), v3);
    *(a2 + 184) = 0;
  }

  return 0;
}

uint64_t nn_tn_getCharContextString(uint64_t a1, uint64_t a2, char *__s, unsigned int a4, int a5, uint64_t *a6, unsigned __int16 *a7, unsigned int a8, int a9, const char *a10, __int16 a11, unsigned __int16 *a12, _WORD *a13, _WORD *a14)
{
  v69 = strlen(__s);
  *a12 = 0;
  v20 = heap_Calloc(*(a1 + 8), 1, (8 * a11) | 1);
  if (!v20)
  {
    v32 = 2304778250;
    log_OutPublic(*(a1 + 32), a2, 24048, 0);
    return v32;
  }

  v21 = v20;
  v67 = a6;
  *a7 = a11;
  if (!a11)
  {
LABEL_6:
    v25 = a13;
    if ((a5 - a4) >= (a11 - 2 * a8 - 2))
    {
      v26 = a11 - 2 * a8 - 2;
    }

    else
    {
      v26 = a5 - a4;
    }

    PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, a4);
    v28 = 0;
    if (a8)
    {
      v29 = a10;
      if ((PreviousUtf8Offset & 0x80000000) == 0)
      {
        v28 = 0;
        v30 = PreviousUtf8Offset;
        do
        {
          Utf8_LengthInBytes(&__s[v30], 1);
          ++v28;
          if (!v30)
          {
            break;
          }

          v31 = utf8_GetPreviousUtf8Offset(__s, v30);
          if ((v31 & 0x8000) != 0)
          {
            break;
          }

          v30 = v31;
        }

        while (a8 > v28);
      }
    }

    else
    {
      v29 = a10;
    }

    v35 = a9;
    LOWORD(v36) = v28;
    if (v29)
    {
      v37 = a8 >= a11 ? a11 : a8;
      LOWORD(v36) = a8;
      if (v37)
      {
        v38 = v21;
        do
        {
          v39 = *v38++;
          strcpy(v39, v29);
          --v37;
        }

        while (v37);
        LOWORD(v36) = a8;
        v35 = a9;
        v25 = a13;
      }
    }

    v40 = a14;
    v41 = v26 + a4;
    *v25 = v36;
    if (v35 == 1)
    {
      **(v21 + 8 * v36) = -61;
      LOWORD(v36) = v36 + 1;
    }

    v42 = (v26 + a4);
    if (v41 <= a4 || a11 <= v36)
    {
      v43 = a4;
    }

    else
    {
      v66 = v35;
      v36 = v36;
      v43 = a4;
      do
      {
        v44 = Utf8_LengthInBytes(&__s[v43], 1);
        v45 = strncmp(&__s[v43], " ", v44);
        v46 = *(v21 + 8 * v36);
        if (v45)
        {
          strncpy(v46, &__s[v43], v44);
        }

        else
        {
          strcpy(v46, "<sp>");
        }

        ++v36;
        v43 += v44;
      }

      while (v42 > v43 && v36 < a11);
      v29 = a10;
      v35 = v66;
      v40 = a14;
    }

    *v40 = v36;
    if (v35 == 1)
    {
      **(v21 + 8 * v36) = -60;
      LOWORD(v36) = v36 + 1;
    }

    if (a11 <= v36)
    {
      v47 = 0;
    }

    else
    {
      v47 = 0;
      v36 = v36;
      while (v69 > v43 && a8 > v47)
      {
        v48 = Utf8_LengthInBytes(&__s[v43], 1);
        v49 = strncmp(&__s[v43], " ", v48);
        v50 = *(v21 + 8 * v36);
        if (v49)
        {
          strncpy(v50, &__s[v43], v48);
        }

        else
        {
          strcpy(v50, "<sp>");
        }

        ++v36;
        v43 += v48;
        ++v47;
        v29 = a10;
        if (a11 == v36)
        {
          v51 = v67;
          *a12 = a11;
          v52 = a8;
          goto LABEL_64;
        }
      }
    }

    v51 = v67;
    if (v29 && a8 > v47 && a11 > v36)
    {
      v36 = v36;
      do
      {
        v53 = *(v21 + 8 * v36++);
        strcpy(v53, v29);
        if (v36 >= a11)
        {
          break;
        }

        ++v47;
      }

      while (a8 > v47);
    }

    *a12 = v36;
    v52 = a8;
    if (a11 > v36)
    {
      v54 = (v21 + 8 * v36);
      v55 = a11 - v36;
      do
      {
        v56 = *v54++;
        *v56 = 11;
        --v55;
      }

      while (v55);
    }

LABEL_64:
    *v51 = v21;
    v57 = utf8_GetPreviousUtf8Offset(__s, a4);
    v32 = 0;
    if (v29)
    {
      v58 = v52;
    }

    else
    {
      v58 = v28;
    }

    if ((v57 & 0x8000) != 0)
    {
      return v32;
    }

    if (!v52)
    {
      return v32;
    }

    v59 = v58 - 1;
    if (a11 <= (v58 - 1))
    {
      return v32;
    }

    v60 = 0;
    v61 = v57;
    while (1)
    {
      v62 = Utf8_LengthInBytes(&__s[v61], 1);
      v63 = strncmp(&__s[v61], " ", v62);
      v64 = *(v21 + 8 * v59);
      if (v63)
      {
        strncpy(v64, &__s[v61], v62);
        if (v61)
        {
          goto LABEL_73;
        }
      }

      else
      {
        strcpy(v64, "<sp>");
        if (v61)
        {
LABEL_73:
          v61 = utf8_GetPreviousUtf8Offset(__s, v61);
          goto LABEL_76;
        }
      }

      v61 = 0xFFFFLL;
LABEL_76:
      v32 = 0;
      if ((v61 & 0x8000) == 0 && v52 > ++v60 && a11 > --v59)
      {
        continue;
      }

      return v32;
    }
  }

  v22 = 0;
  v23 = 8 * a11;
  while (1)
  {
    v24 = heap_Calloc(*(a1 + 8), 1, 5);
    *(v21 + v22) = v24;
    if (!v24)
    {
      break;
    }

    v22 += 8;
    if (v23 == v22)
    {
      goto LABEL_6;
    }
  }

  log_OutPublic(*(a1 + 32), a2, 24048, 0);
  v33 = 0;
  do
  {
    v34 = *(v21 + v33);
    if (v34)
    {
      heap_Free(*(a1 + 8), v34);
    }

    v33 += 8;
  }

  while (v23 != v33);
  v32 = 2304778250;
  heap_Free(*(a1 + 8), v21);
  *v67 = 0;
  return v32;
}

uint64_t nn_tn_process(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, float *a5, unsigned int a6, int a7, char *__s, void *a9)
{
  v11 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  if (*a3)
  {
    goto LABEL_2;
  }

  CharContextString = nn_tn_getCharContextString(a1, a2, __s, a6, a7, (a3 + 184), (a3 + 192), *(a3 + 4), *(a3 + 12), *(a3 + 16), *(a3 + 28), &v67, &v65 + 1, &v65);
  if ((CharContextString & 0x80000000) != 0)
  {
    v11 = CharContextString;
    goto LABEL_2;
  }

  v63 = a5;
  log_OutText(*(a1 + 32), a2, 5, 0, "char context:", 0);
  if (*(a3 + 28))
  {
    v17 = 0;
    v18 = HIWORD(v65);
    v19 = v65;
    do
    {
      if (v17 < v19 && v17 >= v18)
      {
        v21 = " (FOCUS)";
      }

      else
      {
        v21 = "";
      }

      log_OutText(*(a1 + 32), a2, 5, 0, "[%d] %s%s", v17, *(*(a3 + 184) + 8 * v17), v21);
      ++v17;
    }

    while (v17 < *(a3 + 28));
  }

  v22 = heap_Alloc(*(a1 + 8), 4 * *(a3 + 112));
  v68 = v22;
  if (v22)
  {
    v23 = v22;
    v62 = a4;
    v24 = *(a3 + 112);
    if (v24)
    {
      v25 = 0;
      do
      {
        v22[v25++] = 0;
      }

      while (v24 > v25);
    }

    v26 = v67;
    if (v67)
    {
      v27 = 0;
      v61 = HIWORD(v65);
      v60 = v65;
      do
      {
        v28 = *(a3 + 168) + *(a3 + 36);
        v29 = *(*(a3 + 184) + 8 * v27);
        v30 = *v29;
        if (v30 == 195)
        {
          if (v28)
          {
            v33 = 0;
            v34 = v27 * v28;
            do
            {
              v23[v34] = -1082130432;
              ++v33;
              ++v34;
            }

            while (v28 > v33);
          }
        }

        else if (v30 == 196)
        {
          if (v28)
          {
            v31 = 0;
            v32 = v27 * v28;
            do
            {
              v23[v32] = -1073741824;
              ++v31;
              ++v32;
            }

            while (v28 > v31);
          }
        }

        else
        {
          v35 = *(a3 + 16);
          if (v35 && !strcmp(*(*(a3 + 184) + 8 * v27), v35))
          {
            if (v28)
            {
              v41 = 0;
              v42 = v27 * v28;
              do
              {
                v23[v42] = -1082130432;
                ++v41;
                ++v42;
              }

              while (v28 > v41);
            }
          }

          else
          {
            if (v28)
            {
              v36 = 0;
              v37 = v27 * v28;
              do
              {
                v23[v37] = 0;
                ++v36;
                ++v37;
              }

              while (v28 > v36);
            }

            v38 = (*(*(a3 + 128) + 56))(*(a3 + 152), *(a3 + 160), v29, *(a3 + 176));
            if ((v38 & 0x1FFF) == 0x14)
            {
              if (((*(*(a3 + 128) + 56))(*(a3 + 152), *(a3 + 160), "$MEANW2V$", *(a3 + 176)) & 0x1FFF) == 0x14)
              {
                v11 = 2304778240;
                log_OutPublic(*(a1 + 32), a2, 24066, "%s%s");
                goto LABEL_2;
              }
            }

            else
            {
              v11 = v38;
              if ((v38 & 0x80000000) != 0)
              {
                v48 = *(a1 + 32);
                v49 = a2;
                v50 = 24068;
                goto LABEL_60;
              }
            }

            v39 = v28 * v27;
            memcpy(&v23[v39], *(a3 + 176), 4 * *(a3 + 168));
            if (*(a3 + 32) == 1)
            {
              LOWORD(v40) = *(v63 + 12);
              *&v23[*(a3 + 168) + v39] = v40;
            }

            if (*(a3 + 12) == 2 && v27 >= v61 && v27 < v60)
            {
              v23[v39 + *(a3 + 168) + 1] = 1065353216;
            }
          }
        }

        ++v27;
      }

      while (v27 != v26);
    }

    v11 = fi_predict(*(a3 + 104), &v68, *(a3 + 28), &v66);
    if ((v11 & 0x80000000) != 0)
    {
      v48 = *(a1 + 32);
      v49 = a2;
      v50 = 24065;
LABEL_60:
      log_OutPublic(v48, v49, v50, 0, *v58, v59);
      goto LABEL_2;
    }

    if (*(a3 + 30))
    {
      v43 = 0;
      v44 = 0;
      v45 = 0.0;
      v46 = v63;
      do
      {
        if (v45 < *(v66 + 4 * v43))
        {
          v45 = *(v66 + 4 * v43);
          v44 = v43;
        }

        ++v43;
      }

      while (*(a3 + 30) != v43);
      v47 = v44;
    }

    else
    {
      v47 = 0;
      v45 = 0.0;
      v46 = v63;
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "results (threshold=%1.5lf)", *v46);
    if (*(a3 + 30))
    {
      v51 = 0;
      do
      {
        if (v47 == v51)
        {
          v52 = "<-- selected";
        }

        else
        {
          v52 = "";
        }

        log_OutText(*(a1 + 32), a2, 5, 0, "[%3d] %1.5lf : %s %s", v51, *(v66 + 4 * v51), *(*(a3 + 80) + 8 * v51), v52);
        ++v51;
      }

      while (v51 < *(a3 + 30));
    }

    v53 = v63;
    if (*(v63 + 2) >= 2u)
    {
      v54 = 0;
      do
      {
        v55 = v54;
        v56 = *(*(v53 + 1) + 8 * v54);
        if (!strcmp(*(*(a3 + 80) + 8 * v47), v56))
        {
          ReadOnly = ssftmap_FindReadOnly(*(a3 + 48), v56, &v64);
          if ((ReadOnly & 0x80000000) != 0 || v45 >= *v64)
          {
            v53 = v63;
            if (v45 >= *v63)
            {
              *a9 = *(*(v63 + 1) + 8 * v55);
              log_OutText(*(a1 + 32), a2, 5, 0, "validated prediction for pattern %s", v62);
              v11 = 0;
              goto LABEL_2;
            }

            log_OutText(*(a1 + 32), a2, 5, 0, "blocked selected prediction %s; value %1.5lf below pattern threshold %1.5lf", v62, v45, *v63);
            v11 = 0;
          }

          else
          {
            v11 = ReadOnly;
            v53 = v63;
            log_OutText(*(a1 + 32), a2, 5, 0, "blocked selected prediction %s; value %1.5lf below individual threshold for %s (%1.5f)", v62, v45, *(*(v63 + 1) + 8 * v55), *v64);
          }
        }

        v54 = v55 + 1;
      }

      while (*(v53 + 2) - 1 > (v55 + 1));
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "invalid or blocked prediction for pattern %s, set to default %s", v62, *(v53 + 2));
    *a9 = *(v53 + 2);
LABEL_2:
    nn_tn_freeSentData(a1, a3);
    if (v68)
    {
      heap_Free(*(a1 + 8), v68);
    }
  }

  else
  {
    log_OutPublic(*(a1 + 32), a2, 24048, 0);
    return 2304778250;
  }

  return v11;
}

uint64_t getStringFeatureValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a7 = 0;
  v10 = (*(a3 + 96))(a4, a5, "fecfg", a6, &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v12 = **&__c[3];
    v13 = strchr(**&__c[3], __c[0]);
    if (v13)
    {
      *v13 = 0;
      v12 = **&__c[3];
    }

    v14 = strlen(v12);
    v15 = heap_Calloc(*(a1 + 8), 1, (v14 + 1));
    *a7 = v15;
    if (v15)
    {
      strcpy(v15, **&__c[3]);
    }

    else
    {
      log_OutPublic(*(a1 + 32), a2, 37000, 0);
      return 2304778250;
    }
  }

  return v10;
}

uint64_t setModelPredictions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v94 = *MEMORY[0x1E69E9840];
  __c_3 = 0;
  __c_1 = -1;
  __c = 0;
  v83 = 0;
  NumericFeatureValue = getNumericFeatureValue(a3, a4, a5, "nn_tn_numPatterns", &v83);
  if ((NumericFeatureValue & 0x80000000) == 0 && v83)
  {
    v84 = 0u;
    v85 = 0u;
    v13 = getNumericFeatureValue(a3, a4, a5, "nn_tn_numAllPredictions", (a6 + 72));
    if ((v13 & 0x80000000) == 0)
    {
      v14 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 72));
      *(a6 + 80) = v14;
      if (!v14 || (**(a6 + 80) = heap_Calloc(*(a1 + 8), 1, 8), (v15 = **(a6 + 80)) == 0))
      {
LABEL_76:
        NumericFeatureValue = 2304778250;
        log_OutPublic(*(a1 + 32), a2, 24048, 0);
        return NumericFeatureValue;
      }

      v82 = 1;
      *v15 = 0x544C5541464544;
      v16 = *(a1 + 8);
      *&v90 = ssftmap_ElemCopyString;
      *(&v90 + 1) = ssftmap_ElemFreeString;
      v91 = ssftmap_ElemCompareKeysString;
      v92 = patternMap_CopyData;
      v93 = patternMap_FreeData;
      v13 = ssftmap_ObjOpen(v16, 0, &v90, (a6 + 40));
      if ((v13 & 0x80000000) == 0)
      {
        v17 = *(a1 + 8);
        *&v90 = ssftmap_ElemCopyString;
        *(&v90 + 1) = ssftmap_ElemFreeString;
        v91 = ssftmap_ElemCompareKeysString;
        v92 = floatThreshold_CopyData;
        v93 = floatThreshold_FreeData;
        v13 = ssftmap_ObjOpen(v17, 0, &v90, (a6 + 48));
        if ((v13 & 0x80000000) == 0)
        {
          v18 = 0;
          v81 = a2;
          while (1)
          {
            setDictKeyString(&v90, "nn_tn_patternName", ++v18);
            __c_1 = -1;
            v13 = (*(a3 + 96))(a4, a5, "fecfg", &v90, &__c_3, &__c_1, &__c);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

            if (__c_1)
            {
              v19 = *__c_3;
              v20 = strchr(*__c_3, __c);
              if (v20)
              {
                *v20 = 0;
              }

              v21 = strlen(v19);
              v22 = heap_Calloc(*(a1 + 8), 1, v21 + 1);
              if (!v22)
              {
                goto LABEL_76;
              }

              v23 = v22;
              strcpy(v22, v19);
            }

            else
            {
              v23 = 0;
            }

            setDictKeyString(&v90, "nn_tn_patternThreshold", v18);
            *&v89[3] = 0;
            *&v89[1] = -1;
            v89[0] = 0;
            LODWORD(v84) = 0;
            v24 = (*(a3 + 96))(a4, a5, "fecfg", &v90, &v89[3], &v89[1], v89);
            if ((v24 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            if (*&v89[1] == 1 && *&v89[3])
            {
              v25 = **&v89[3];
              v26 = strchr(**&v89[3], v89[0]);
              if (v26)
              {
                *v26 = 0;
                v25 = **&v89[3];
              }

              v27 = atof(v25);
              *&v84 = v27;
            }

            setDictKeyString(&v90, "nn_tn_numPredictions", v18);
            v24 = getNumericFeatureValue(a3, a4, a5, &v90, &v84 + 2);
            if ((v24 & 0x80000000) != 0)
            {
LABEL_80:
              NumericFeatureValue = v24;
              goto LABEL_95;
            }

            *(&v84 + 1) = heap_Calloc(*(a1 + 8), 1, 8 * WORD2(v84));
            if (!*(&v84 + 1))
            {
              goto LABEL_94;
            }

            setDictKeyString(&v90, "nn_tn_predictions", v18);
            v78 = *(a6 + 80);
            v79 = *(&v84 + 1);
            *&v89[3] = 0;
            *&v89[1] = -1;
            v89[0] = 0;
            NumericFeatureValue = (*(a3 + 96))(a4, a5, "fecfg", &v90, &v89[3], &v89[1], v89);
            v76 = v18;
            if ((NumericFeatureValue & 0x80000000) != 0 || !*&v89[1])
            {
              goto LABEL_38;
            }

            v77 = v23;
            v28 = **&v89[3];
            v29 = strchr(**&v89[3], v89[0]);
            if (v29)
            {
              *v29 = 0;
            }

            v30 = strchr(v28, 59);
            if (v30)
            {
              v31 = v30;
              LOWORD(v32) = 0;
              while (1)
              {
                *v31 = 0;
                v33 = strlen(v28) + 1;
                a2 = v81;
                v34 = heap_Calloc(*(a1 + 8), 1, v33);
                *(v79 + 8 * v32) = v34;
                if (!v34)
                {
                  break;
                }

                strcpy(v34, v28);
                v35 = addToAllPredictions(a1, v81, v28, v78, &v82);
                if ((v35 & 0x80000000) != 0)
                {
                  NumericFeatureValue = v35;
                  goto LABEL_84;
                }

                LOWORD(v32) = v32 + 1;
                v28 = v31 + 1;
                v31 = strchr(v31 + 1, 59);
                if (!v31)
                {
                  v32 = v32;
                  goto LABEL_36;
                }
              }

LABEL_78:
              NumericFeatureValue = 2304778250;
              v72 = *(a1 + 32);
              v73 = a2;
LABEL_83:
              log_OutPublic(v72, v73, 24048, 0);
              goto LABEL_84;
            }

            if (v28)
            {
              break;
            }

LABEL_39:
            setDictKeyString(&v90, "nn_tn_predictionsThresholds", v18);
            v80 = *(a6 + 48);
            *&v89[3] = 0;
            *&v89[1] = -1;
            v89[0] = 0;
            v38 = (*(a3 + 96))(a4, a5, "fecfg", &v90, &v89[3], &v89[1], v89);
            NumericFeatureValue = v38;
            if ((v38 & 0x80000000) != 0 || !*&v89[1])
            {
              if ((v38 & 0x80000000) != 0)
              {
                goto LABEL_95;
              }
            }

            else
            {
              v77 = v23;
              v39 = **&v89[3];
              v40 = strchr(**&v89[3], v89[0]);
              if (v40)
              {
                *v40 = 0;
              }

              v41 = strchr(v39, 59);
              if (v41)
              {
                v42 = v41;
                while (1)
                {
                  *v42 = 0;
                  v43 = strchr(v39, 44);
                  if (!v43)
                  {
                    break;
                  }

                  v44 = v43;
                  v45 = strlen(v39);
                  v46 = heap_Calloc(*(a1 + 8), 1, v45 + 1);
                  if (!v46)
                  {
                    goto LABEL_82;
                  }

                  v47 = v46;
                  v48 = strlen(v46);
                  bzero(v47, v48);
                  strncpy(v47, v39, (v44 - v39));
                  v49 = strlen(v39);
                  v50 = heap_Calloc(*(a1 + 8), 1, v49 + 1);
                  if (!v50)
                  {
                    goto LABEL_85;
                  }

                  v51 = v50;
                  v52 = strlen(v39);
                  bzero(v51, v52 + 1);
                  strcpy(v51, v44 + 1);
                  v53 = heap_Calloc(*(a1 + 8), 1, 4);
                  if (!v53)
                  {
                    goto LABEL_86;
                  }

                  v54 = v53;
                  *v53 = 0.0;
                  v55 = atof(v51);
                  *v54 = v55;
                  log_OutText(*(a1 + 32), v81, 5, 0, "Adding individual threshold %s : %1.5lf", v47, v55);
                  v56 = ssftmap_Insert(v80, v47, v54);
                  if ((v56 & 0x80000000) != 0)
                  {
                    goto LABEL_87;
                  }

                  v39 = v42 + 1;
                  v42 = strchr(v42 + 1, 59);
                  heap_Free(*(a1 + 8), v47);
                  heap_Free(*(a1 + 8), v51);
                  heap_Free(*(a1 + 8), v54);
                  a2 = v81;
                  if (!v42)
                  {
                    goto LABEL_55;
                  }
                }

LABEL_81:
                log_OutPublic(*(a1 + 32), a2, 24048, 0);
                NumericFeatureValue = 2304778246;
LABEL_84:
                v23 = v77;
                goto LABEL_95;
              }

              if (v39)
              {
LABEL_55:
                v57 = strchr(v39, 44);
                if (!v57)
                {
                  goto LABEL_81;
                }

                v58 = v57;
                v59 = strlen(v39);
                v60 = heap_Calloc(*(a1 + 8), 1, v59 + 1);
                if (!v60)
                {
LABEL_82:
                  NumericFeatureValue = 2304778250;
                  v72 = *(a1 + 32);
                  v73 = v81;
                  goto LABEL_83;
                }

                v47 = v60;
                v61 = strlen(v39);
                bzero(v47, v61);
                strncpy(v47, v39, (v58 - v39));
                v62 = strlen(v39);
                v63 = heap_Calloc(*(a1 + 8), 1, v62 + 1);
                if (!v63)
                {
LABEL_85:
                  v23 = v77;
                  NumericFeatureValue = 2304778250;
                  log_OutPublic(*(a1 + 32), v81, 24048, 0);
                  v74 = *(a1 + 8);
                  v75 = v47;
                  goto LABEL_90;
                }

                v51 = v63;
                v64 = strlen(v39);
                bzero(v51, v64 + 1);
                strcpy(v51, v58 + 1);
                v65 = heap_Calloc(*(a1 + 8), 1, 4);
                if (!v65)
                {
LABEL_86:
                  NumericFeatureValue = 2304778250;
                  log_OutPublic(*(a1 + 32), v81, 24048, 0);
                  v54 = 0;
LABEL_88:
                  v23 = v77;
                  heap_Free(*(a1 + 8), v47);
                  heap_Free(*(a1 + 8), v51);
                  if (v54)
                  {
                    v74 = *(a1 + 8);
                    v75 = v54;
LABEL_90:
                    heap_Free(v74, v75);
                  }

LABEL_95:
                  if (v23)
                  {
                    heap_Free(*(a1 + 8), v23);
                  }

                  return NumericFeatureValue;
                }

                v54 = v65;
                *v65 = 0.0;
                v66 = atof(v51);
                *v54 = v66;
                log_OutText(*(a1 + 32), v81, 5, 0, "Adding individual threshold %s : %1.5lf", v47, v66);
                v56 = ssftmap_Insert(v80, v47, v54);
                if ((v56 & 0x80000000) != 0)
                {
LABEL_87:
                  NumericFeatureValue = v56;
                  goto LABEL_88;
                }

                heap_Free(*(a1 + 8), v47);
                heap_Free(*(a1 + 8), v51);
                heap_Free(*(a1 + 8), v54);
                a2 = v81;
                v18 = v76;
              }

              v23 = v77;
            }

            setDictKeyString(&v90, "nn_tn_defaultPrediction", v18);
            __c_1 = -1;
            v24 = (*(a3 + 96))(a4, a5, "fecfg", &v90, &__c_3, &__c_1, &__c);
            if ((v24 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            if (__c_1)
            {
              v67 = *__c_3;
              v68 = strchr(*__c_3, __c);
              if (v68)
              {
                *v68 = 0;
              }

              v69 = strlen(v67);
              v70 = heap_Calloc(*(a1 + 8), 1, v69 + 1);
              *&v85 = v70;
              if (!v70)
              {
LABEL_94:
                NumericFeatureValue = 2304778250;
                log_OutPublic(*(a1 + 32), a2, 24048, 0);
                goto LABEL_95;
              }

              strcpy(v70, v67);
              v18 = v76;
            }

            setDictKeyString(&v90, "nn_tn_patternIndex", v18);
            v24 = getNumericFeatureValue(a3, a4, a5, &v90, &v85 + 4);
            if ((v24 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            NumericFeatureValue = ssftmap_Insert(*(a6 + 40), v23, &v84);
            if ((NumericFeatureValue & 0x80000000) != 0)
            {
              goto LABEL_95;
            }

            v84 = 0u;
            v85 = 0u;
            if (v23)
            {
              heap_Free(*(a1 + 8), v23);
            }

            if (v83 <= v18)
            {
              if (v82 != *(a6 + 72))
              {
                log_OutPublic(*(a1 + 32), a2, 24071, 0);
                return 2304778240;
              }

              return NumericFeatureValue;
            }
          }

          v32 = 0;
LABEL_36:
          v36 = strlen(v28);
          v37 = heap_Calloc(*(a1 + 8), 1, v36 + 1);
          *(v79 + 8 * v32) = v37;
          if (!v37)
          {
            goto LABEL_78;
          }

          strcpy(v37, v28);
          NumericFeatureValue = addToAllPredictions(a1, a2, v28, v78, &v82);
          v23 = v77;
          v18 = v76;
LABEL_38:
          if ((NumericFeatureValue & 0x80000000) != 0)
          {
            goto LABEL_95;
          }

          goto LABEL_39;
        }
      }
    }

    return v13;
  }

  return NumericFeatureValue;
}

uint64_t patternMap_CopyData(_OWORD *a1, void *a2, void *a3)
{
  v3 = 2304778247;
  if (a1 && a2 && a3)
  {
    v6 = heap_Calloc(a2, 1, 32);
    if (v6)
    {
      v3 = 0;
      v7 = a1[1];
      *v6 = *a1;
      v6[1] = v7;
      *a3 = v6;
    }

    else
    {
      return 2304778250;
    }
  }

  return v3;
}

void *patternMap_FreeData(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      if (*(result + 2))
      {
        v5 = 0;
        do
        {
          heap_Free(a2, *(v3[1] + 8 * v5));
          *(v3[1] + 8 * v5++) = 0;
        }

        while (v5 < *(v3 + 2));
        v4 = v3[1];
      }

      *(v3 + 2) = 0;
      heap_Free(a2, v4);
      v3[1] = 0;
    }

    v6 = v3[2];
    if (v6)
    {
      heap_Free(a2, v6);
      v3[2] = 0;
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t floatThreshold_CopyData(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = 2304778247;
  if (a1 && a2 && a3)
  {
    v6 = heap_Alloc(a2, 4);
    if (v6)
    {
      v3 = 0;
      *v6 = *a1;
      *a3 = v6;
    }

    else
    {
      return 2304778250;
    }
  }

  return v3;
}

void *floatThreshold_FreeData(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

char *setDictKeyString(uint64_t a1, const char *a2, unsigned int a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  strcpy(a1, a2);
  v5 = LH_itoa(a3, v7, 0xAu);
  return strcat(a1, v5);
}

uint64_t addToAllPredictions(uint64_t a1, uint64_t a2, char *__s, const char **a4, _WORD *a5)
{
  v10 = *a5;
  if (*a5)
  {
    v11 = a4;
    while (1)
    {
      result = strcmp(__s, *v11);
      if (!result)
      {
        break;
      }

      ++v11;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = strlen(__s);
    v14 = heap_Calloc(*(a1 + 8), 1, v13 + 1);
    v15 = *a5;
    a4[v15] = v14;
    if (v14)
    {
      *a5 = v15 + 1;
      strcpy(v14, __s);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), a2, 24048, 0);
      return 2304778250;
    }
  }

  return result;
}

uint64_t fe_udwl_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (!a5)
  {
    return 2323652615;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(*(v24 + 48), "SYNTHSTREAM", &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(*(v24 + 48), "FE_DEPES", &v22);
  v10 = *(v24 + 48);
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v10, "SYNTHSTREAM");
  }

  else
  {
    objc_GetObject(v10, "DCTEG", &v21);
    v11 = heap_Calloc(*(v24 + 8), 1, 976);
    if (v11)
    {
      v12 = v11;
      *v11 = a3;
      *(v11 + 8) = a4;
      v14 = v23;
      v13 = v24;
      *(v11 + 16) = v24;
      v15 = *(v14 + 8);
      v16 = v22;
      *(v11 + 40) = *(v22 + 8);
      *(v11 + 48) = v15;
      *(v11 + 24) = *(v16 + 16);
      v17 = v21;
      if (v21)
      {
        v18 = *(v21 + 8);
        if (v18)
        {
          *(v11 + 944) = v18;
          *(v11 + 952) = *(v17 + 16);
        }
      }

      *(v11 + 968) = 512;
      if ((paramc_ParamGetUInt(*(v13 + 40), "udctmaxlookuplen", &v20) & 0x80000000) == 0)
      {
        *(v12 + 968) = v20;
      }

      *a5 = v12;
      *(a5 + 8) = 62346;
    }

    else
    {
      log_OutPublic(*(v24 + 32), "FE_UDWL", 40000, 0);
      objc_ReleaseObject(*(v24 + 48), "SYNTHSTREAM");
      objc_ReleaseObject(*(v24 + 48), "FE_DEPES");
      if (v21)
      {
        objc_ReleaseObject(*(v24 + 48), "DCTEG");
      }

      return 2323652618;
    }
  }

  return Object;
}

uint64_t fe_udwl_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((result & 0x80000000) != 0)
  {
    return 2323652616;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DEPES");
    if (*(a1 + 944))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "DCTEG");
    }

    heap_Free(*(*(a1 + 16) + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_udwl_ObjReopen(uint64_t a1, int a2)
{
  v6 = 0;
  v3 = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((v3 & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v4 = v3;
  if (a1)
  {
    *(a1 + 968) = 512;
    if ((paramc_ParamGetUInt(*(*(a1 + 16) + 40), "udctmaxlookuplen", &v6) & 0x80000000) == 0)
    {
      *(a1 + 968) = v6;
    }
  }

  return v4;
}

uint64_t fe_udwl_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  synstrmaux_InitStreamOpener(a1 + 56, *(*(a1 + 16) + 32), "FE_UDWL");
  synstrmaux_RegisterInStream((a1 + 56), "text/plain;charset=utf-8", 0, a1 + 880);
  synstrmaux_RegisterInStream((a1 + 56), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 896);
  synstrmaux_RegisterOutStream((a1 + 56), "text/plain;charset=utf-8", a1 + 912);
  synstrmaux_RegisterOutStream((a1 + 56), "application/x-realspeak-markers-pp;version=4.0", a1 + 928);
  v7 = synstrmaux_OpenStreams((a1 + 56), *(a1 + 48), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 56), *(a1 + 48));
  }

  return v7;
}

BOOL sameLanguage(const char *a1, char *__s1, const char *a3)
{
  if (!strcmp(__s1, "normal"))
  {
    return strcmp(a3, a1) == 0;
  }

  else
  {
    return strstr(__s1, a3) != 0;
  }
}

uint64_t fe_udwl_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  __src[1] = *MEMORY[0x1E69E9840];
  v321 = 0uLL;
  v8 = 2323652618;
  v317 = 0;
  v318 = 0;
  v316 = 0;
  v314 = 0;
  v313 = 0;
  v311 = 0;
  v310 = 0;
  v309 = 15;
  v308 = 0;
  v307 = 0;
  *__s = 0;
  v306 = 0;
  v303 = 0;
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v320 = 0;
  v319 = 0;
  v315 = 0;
  *a5 = 1;
  if (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "numberoutputtranscriptions", &v303) < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v303;
  }

  if (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "udctmaxdictretlen", &v303) < 0)
  {
    v10 = 512;
  }

  else
  {
    v10 = v303;
  }

  v11 = (*(*(a1 + 48) + 144))(*(a1 + 880), *(a1 + 888), &v321 + 12, &v321 + 4);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v17 = (*(*(a1 + 48) + 144))(*(a1 + 896), *(a1 + 904), &v321 + 8, &v321 + 4);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s", v12, v13, v14, v15, v16, "BEG");
  if (HIDWORD(v321))
  {
    v11 = (*(*(a1 + 48) + 144))(*(a1 + 880), *(a1 + 888), &v321 + 12, &v321 + 4);
    if ((v11 & 0x80000000) == 0)
    {
      v18 = heap_Calloc(*(*(a1 + 16) + 8), 1, (HIDWORD(v321) + 1));
      if (!v18)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
        v39 = 0;
        v26 = 0;
        v23 = 0;
        v300 = 0;
        v27 = 0;
        v40 = 0;
        v41 = 0;
        v301 = 0;
LABEL_55:
        log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s %s%u", v34, v35, v36, v37, v38, "END");
        if (v39 && v18)
        {
          v43 = v41 + v310;
          if (v43 < 2)
          {
            goto LABEL_65;
          }

          v44 = 1;
          do
          {
            v45 = v44;
            if (*&v18[4 * v44])
            {
              v46 = *(v39 + 8 * v44);
              if (*v46 != 7)
              {
                heap_Free(*(*(a1 + 16) + 8), *(v46 + 24));
                v46 = *(v39 + 8 * v45);
              }

              heap_Free(*(*(a1 + 16) + 8), v46);
            }

            v44 = v45 + 1;
          }

          while (v43 > (v45 + 1));
        }

        if (!v39)
        {
LABEL_66:
          if (v18)
          {
            heap_Free(*(*(a1 + 16) + 8), v18);
            v308 = 0;
          }

          if (v27)
          {
            heap_Free(*(*(a1 + 16) + 8), v27);
          }

          if (v300)
          {
            heap_Free(*(*(a1 + 16) + 8), v300);
          }

          if (v23)
          {
            heap_Free(*(*(a1 + 16) + 8), v23);
          }

          if (v26)
          {
            heap_Free(*(*(a1 + 16) + 8), v26);
          }

          if (v40)
          {
            heap_Free(*(*(a1 + 16) + 8), v40);
          }

          if (v301)
          {
            heap_Free(*(*(a1 + 16) + 8), v301);
          }

          return v8;
        }

LABEL_65:
        heap_Free(*(*(a1 + 16) + 8), v39);
        v311 = 0;
        goto LABEL_66;
      }

      v11 = (*(*(a1 + 48) + 80))(*(a1 + 880), *(a1 + 888), v18, HIDWORD(v321), &v321);
      if ((v11 & 0x80000000) == 0)
      {
        v18[HIDWORD(v321)] = 0;
        log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "text/plain;charset=utf-8", v18, v321);
        MainLangLC = (*(*(a1 + 48) + 88))(*(a1 + 896), *(a1 + 904), &v320, &v319);
        if ((MainLangLC & 0x80000000) != 0)
        {
          v26 = 0;
          v23 = 0;
          v300 = 0;
          v27 = 0;
          v40 = 0;
          LOWORD(v21) = 0;
        }

        else
        {
          v20 = v319;
          v21 = v319 >> 5;
          if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
          {
            log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "application/x-realspeak-markers-pp;version=4.0", v320, v20 & 0x1FFFE0);
          }

          v22 = *(a1 + 944);
          if (!v22 || !(*(v22 + 80))(*(a1 + 952), *(a1 + 960)))
          {
            v42 = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v18, v321);
            if ((v42 & 0x80000000) == 0)
            {
              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v18, v321);
              v42 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v320, v319);
              if ((v42 & 0x80000000) == 0)
              {
                if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                {
                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "application/x-realspeak-markers-pp;version=4.0", v320, v20 & 0x1FFFE0);
                }

                v42 = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v319);
              }
            }

            v8 = v42;
            v26 = 0;
            v23 = 0;
LABEL_51:
            v300 = 0;
            v27 = 0;
            v40 = 0;
            v301 = 0;
LABEL_54:
            heap_Free(*(*(a1 + 16) + 8), v18);
            v41 = v21;
            v39 = v311;
            v18 = v308;
            goto LABEL_55;
          }

          *v312 = 10994208;
          v306 = "normal";
          v313 = "normal";
          MainLangLC = hlp_GetMainLangLC(*(*(a1 + 16) + 40), v304);
          if ((MainLangLC & 0x80000000) == 0)
          {
            v23 = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 968) + 1, 1);
            if (v23)
            {
              v24 = v321;
              if (v321 < v10)
              {
                v24 = v10;
              }

              __dst = heap_Calloc(*(*(a1 + 16) + 8), v9 + v9 * v24 + 1, 1);
              if (__dst)
              {
                v25 = v9 + v9 * v10;
                if (v25 > 0xFFFE)
                {
                  v26 = 0;
                  v300 = 0;
                  v27 = 0;
                  v301 = 0;
                  v8 = 2323652623;
LABEL_148:
                  v40 = __dst;
                  goto LABEL_54;
                }

                v267 = v25 + 1;
                v26 = heap_Calloc(*(*(a1 + 16) + 8), v267, 1);
                v47 = *(a1 + 16);
                if (v26)
                {
                  v48 = heap_Alloc(*(v47 + 8), v319);
                  if (v48)
                  {
                    v301 = v48;
                    memcpy(v48, v320, v319);
                    log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Markers IN");
                    v263 = v25;
                    v298 = (v20 >> 5);
                    v258 = v20;
                    if ((v20 >> 5))
                    {
                      v264 = v20 >> 5;
                      v49 = v301 + 2;
                      v50 = (v20 >> 5);
                      do
                      {
                        v51 = *(*(a1 + 16) + 32);
                        v52 = *(v49 - 2);
                        if (v52 == 0x4000)
                        {
                          log_OutText(v51, "FE_UDWL", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", *(v49 - 1));
                        }

                        else
                        {
                          log_OutText(v51, "FE_UDWL", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v52);
                        }

                        v49 += 8;
                        --v50;
                      }

                      while (v50);
                      v53 = v301 + 4;
                      v54 = v298;
                      LOWORD(v21) = v264;
                      do
                      {
                        if (*(v53 - 4) == 1)
                        {
                          *v53 = 0;
                        }

                        v53 += 8;
                        --v54;
                      }

                      while (v54);
                    }

                    v55 = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), &v314, 0);
                    if ((v55 & 0x80000000) != 0)
                    {
                      v300 = 0;
                      v27 = 0;
                      v8 = v55;
                      goto LABEL_148;
                    }

                    MultiWordEntry = v55;
                    v311 = heap_Calloc(*(*(a1 + 16) + 8), v298, 8);
                    v56 = *(a1 + 16);
                    v288 = v311;
                    if (!v311 || (v308 = heap_Calloc(*(v56 + 8), v298, 4), v56 = *(a1 + 16), (v284 = v308) == 0) || (v57 = heap_Calloc(*(v56 + 8), (v321 + 1), 2), v56 = *(a1 + 16), (v250 = v57) == 0))
                    {
                      log_OutPublic(*(v56 + 32), "FE_UDWL", 40000, 0);
                      v300 = 0;
                      v27 = 0;
                      goto LABEL_148;
                    }

                    v265 = v21;
                    v300 = heap_Calloc(*(v56 + 8), (v321 + 1), 2);
                    if (!v300)
                    {
                      log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
                      v300 = 0;
                      goto LABEL_458;
                    }

                    v266 = v301 + 3;
                    v297 = v301[3];
                    if (!v298)
                    {
                      v279 = 0;
                      goto LABEL_151;
                    }

                    v58 = 0;
                    do
                    {
                      v59 = &v301[8 * v58];
                      if (v59[3] != v297)
                      {
                        break;
                      }

                      hlp_KeepTrackBeforeMovingOn(&v301[8 * v58], &v309 + 1, &v313, &v306, &v309);
                      *(v288 + 8 * v58) = v59;
                      *&v284[4 * v58] = 0;
                      v58 = (v58 + 1);
                    }

                    while (v58 < v21);
                    v279 = v58;
                    v60 = 0;
                    v261 = v306;
                    v269 = v313;
                    v61 = 0xFFFFLL;
                    v62 = v301;
                    v63 = v298;
                    while (1)
                    {
                      v64 = v61;
                      v65 = &v62[8 * v60];
                      v66 = *v65;
                      if (*v65 == 7 || v66 == 21)
                      {
                        v61 = 0xFFFFLL;
                        if (v64 != 0xFFFF)
                        {
                          goto LABEL_123;
                        }
                      }

                      else
                      {
                        if (v66 == 32)
                        {
                          v68 = v65[6];
                          if (!v68)
                          {
                            v272 = v64;
                            v285 = v64;
                            if (v64 == 0xFFFF)
                            {
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword end tag at position %u - start position missing (or ignored)");
                            }

                            else
                            {
                              v289 = v65[3] - v297;
                              v70 = (*(v65 + 6) - v297);
                              if (v70 == v321 && utf8_BelongsToSet(3u, v18, v70 - 1, v70))
                              {
                                if (v289 == 1)
                                {
                                  LOWORD(v289) = 1;
                                }

                                else
                                {
                                  v71 = (v289 - 1);
                                  if (utf8_BelongsToSet(3u, v18, v71, v321))
                                  {
                                    v72 = v289 - 1;
                                    do
                                    {
                                      LOWORD(v289) = v72;
                                      PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(v18, v71, v321);
                                      if (!PreviousUtf8OffsetLimit)
                                      {
                                        break;
                                      }

                                      v71 = PreviousUtf8OffsetLimit;
                                      v72 = PreviousUtf8OffsetLimit;
                                    }

                                    while (utf8_BelongsToSet(3u, v18, PreviousUtf8OffsetLimit, v321));
                                  }
                                }
                              }

                              LOWORD(v318) = v263;
                              if (v289 - v285 >= *(a1 + 968))
                              {
                                log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "MW lookup len %u  exceeds maxLookupLen %u - skipping");
                              }

                              else
                              {
                                *(v250 + 2 * v272) = v289;
                                *(&v239 + 1) = &__s[4];
                                *&v239 = &v318;
                                if (hlp_ValidateMultiWordMarker(a1, a2, v18, v272, v289, v23, v261, v269, v26, v239, __s, v316))
                                {
                                  *(v300 + 2 * v272) = v289;
                                }
                              }
                            }

                            v61 = 0xFFFFLL;
                            goto LABEL_140;
                          }

                          if (v68 == 1)
                          {
                            if (v64 != 0xFFFF)
                            {
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword start tag at position %u - nested tag found at position %u, using this as start position", v64, (v65[3] - v297));
                            }

                            v61 = (v65[3] - v297);
LABEL_140:
                            v62 = v301;
                            v63 = v298;
                            goto LABEL_141;
                          }
                        }

                        else if (v66 == 34 && ~v64 != 0)
                        {
LABEL_123:
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword tag at position %u - contains internal tags (tn, phon)", v64);
                          v63 = v298;
                          v62 = v301;
                          v61 = 0xFFFFLL;
                          goto LABEL_141;
                        }

                        v61 = v64;
                      }

LABEL_141:
                      if (++v60 == v63)
                      {
                        if (v61 != 0xFFFF)
                        {
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword tag at position %u - no closing tag", v61);
                        }

LABEL_151:
                        v259 = strlen(v18);
                        if (v259)
                        {
                          v74 = 0;
                          v255 = 0;
                          v257 = 0;
                          v75 = 0;
                          v270 = v279;
                          v76 = v259;
                          while (1)
                          {
                            v317 = 0;
                            v77 = v75;
                            v286 = v75;
                            NextUtf8OffsetLimit = v75;
                            if (v75 < v76)
                            {
                              NextUtf8OffsetLimit = v75;
                              if (utf8_BelongsToSet(3u, v18, v75, v76))
                              {
                                do
                                {
                                  NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v18, v77, v76);
                                  v77 = NextUtf8OffsetLimit;
                                }

                                while (NextUtf8OffsetLimit < v76 && utf8_BelongsToSet(3u, v18, NextUtf8OffsetLimit, v76));
                              }
                            }

                            if (v255)
                            {
                              v260 = 0;
                              v78 = v286;
                              v79 = NextUtf8OffsetLimit;
                            }

                            else
                            {
                              v80 = HIWORD(v307);
                              v81 = v307;
                              if (v286 <= NextUtf8OffsetLimit)
                              {
                                v82 = v286;
                                do
                                {
                                  v83 = *(v250 + 2 * v82);
                                  if (*(v250 + 2 * v82))
                                  {
                                    v81 = *(v250 + 2 * v82);
                                    v80 = v82;
                                  }

                                  ++v82;
                                }

                                while (v82 <= NextUtf8OffsetLimit && !v83);
                                v260 = v83 != 0;
                              }

                              else
                              {
                                v260 = 0;
                              }

                              HIWORD(v307) = v80;
                              LOWORD(v307) = v81;
                              v79 = NextUtf8OffsetLimit;
                              if (v286 == NextUtf8OffsetLimit)
                              {
                                v78 = v286;
                                v84 = *(v250 + 2 * v286);
                                if (v84)
                                {
                                  HIWORD(v307) = v286;
                                  LOWORD(v307) = v84;
                                  v260 = 1;
                                }
                              }

                              else
                              {
                                v78 = v286;
                              }
                            }

                            v85 = v79;
                            if (v79 > v78)
                            {
                              if (v79 >= HIWORD(v307))
                              {
                                v85 = HIWORD(v307);
                              }

                              if (v260 && v79 < v307)
                              {
                                v79 = v85;
                              }

                              else
                              {
                                v79 = v79;
                              }

                              v291 = v79;
                              v86 = v79 - v74;
                              if (v86 >= 1)
                              {
                                v87 = &v18[v78];
                                MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v87, v86);
                                if ((MultiWordEntry & 0x80000000) != 0)
                                {
                                  goto LABEL_420;
                                }

                                log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v87, v86);
                              }

                              v79 = v291;
                              v78 = v291;
                            }

                            v292 = v79;
                            v88 = v270;
                            if (v298 > v270)
                            {
                              v89 = v78;
                              v273 = v308;
                              v280 = v311;
                              v90 = v270 + v310;
                              do
                              {
                                v91 = &v301[8 * v88];
                                v92 = v91[3];
                                if (v89 < (v92 - v297))
                                {
                                  break;
                                }

                                v91[3] = v92 + v257;
                                *(v280 + 8 * v90) = v91;
                                *&v273[4 * v90] = 0;
                                hlp_KeepTrackBeforeMovingOn(v91, &v309 + 1, &v313, &v306, &v309);
                                v88 = (v88 + 1);
                                ++v90;
                              }

                              while (v298 > v88);
                            }

                            v270 = v88;
                            LOWORD(v318) = v263;
                            if (v260)
                            {
                              v293 = v307;
                              v93 = HIWORD(v307);
                              v94 = v307 - HIWORD(v307);
                              HIWORD(v318) = v307 - HIWORD(v307);
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "SET MW %u %u", HIWORD(v307), v307);
                              strncpy(v23, &v18[v93], v94);
                              v252 = 0;
                              v23[v94] = 0;
                              v262 = v94;
                              v95 = v293;
                              goto LABEL_190;
                            }

                            v302 = 0;
                            MultiWordEntry = hlp_FindMultiWordEntry(a1, a2, v18, v259, v301, (v258 >> 5), v300, v292, v306, v313, &v307 + 1, &v307, v23, &v318 + 1, v263, &__s[4], __s, &v302);
                            if ((MultiWordEntry & 0x80000000) != 0)
                            {
                              goto LABEL_420;
                            }

                            if (v302)
                            {
                              break;
                            }

                            bzero(v23, *(a1 + 968) + 1);
                            if (v292 >= v259)
                            {
                              v262 = 0;
                              v287 = v292;
                              LODWORD(v119) = v292;
LABEL_265:
                              v120 = v259;
                            }

                            else
                            {
                              v262 = 0;
                              v119 = v292;
                              v287 = v292;
                              v120 = v259;
                              while (!utf8_BelongsToSet(3u, v18, v119, v120))
                              {
                                Utf8Symbol = utf8_GetUtf8Symbol(v18, v119, v120, __src);
                                if (Utf8Symbol + v262 >= *(a1 + 968))
                                {
                                  LODWORD(v119) = v287;
                                  goto LABEL_265;
                                }

                                v122 = Utf8Symbol;
                                strcpy(&v23[v262], __src);
                                v262 += v122;
                                v120 = v259;
                                v287 = utf8_GetNextUtf8OffsetLimit(v18, v119, v259);
                                v119 = v287;
                                if (v287 >= v259)
                                {
                                  break;
                                }
                              }
                            }

                            HIWORD(v318) = v262;
                            if (v119 >= v120 || utf8_BelongsToSet(3u, v18, v119, v259))
                            {
                              if (v262)
                              {
                                v254 = 0;
                                v252 = 0;
                                v98 = v298;
                                v99 = v270;
                                v95 = v287;
                                LOWORD(v93) = v292;
                                goto LABEL_191;
                              }
                            }

                            else
                            {
                              for (i = v287; v287 < v259; i = v287)
                              {
                                if (utf8_BelongsToSet(3u, v18, i, v259))
                                {
                                  break;
                                }

                                v287 = utf8_GetNextUtf8OffsetLimit(v18, i, v259);
                              }

                              v133 = i - v292;
                              if (v133 >= 1)
                              {
                                MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v18[v292], v133);
                                if ((MultiWordEntry & 0x80000000) != 0)
                                {
                                  goto LABEL_420;
                                }

                                log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v18[v292], v133);
                              }
                            }

LABEL_405:
                            v75 = v287;
LABEL_406:
                            v74 = v75;
                            v76 = v259;
                            if (v75 >= v259)
                            {
                              v214 = v310;
                              v215 = v257;
                              LODWORD(v279) = v270;
                              goto LABEL_422;
                            }
                          }

                          v93 = HIWORD(v307);
                          v96 = v307;
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "SET UMW %u %u", HIWORD(v307), v307);
                          v97 = HIWORD(v318);
                          strncpy(v23, &v18[v93], HIWORD(v318));
                          v23[v97] = 0;
                          v252 = 1;
                          v262 = v97;
                          v95 = v96;
LABEL_190:
                          v254 = !v260;
                          v98 = v298;
                          v99 = v270;
LABEL_191:
                          v315 = 1;
                          v100 = v99;
                          v287 = v95;
                          v294 = v93;
                          if (v98 <= v99)
                          {
                            v247 = v99;
                          }

                          else
                          {
                            v101 = v93;
                            v274 = v311;
                            v271 = v310;
                            v102 = v308;
                            while (1)
                            {
                              v103 = &v301[8 * v100];
                              v104 = v103[3];
                              if (v101 < (v104 - v297))
                              {
                                break;
                              }

                              v103[3] = v104 + v257;
                              v105 = v271 + v100;
                              *(v274 + 8 * v105) = v103;
                              *&v102[4 * v105] = 0;
                              hlp_KeepTrackBeforeMovingOn(v103, &v309 + 1, &v313, &v306, &v309);
                              v100 = (v100 + 1);
                              if (v298 <= v100)
                              {
                                v270 = v100;
                                v247 = v100;
                                goto LABEL_198;
                              }
                            }

                            v247 = v100;
                            v270 = v100;
                          }

LABEL_198:
                          LOWORD(v318) = v263;
                          __s[4] = 0;
                          v106 = v313;
                          v107 = strcmp(v313, "spell") && HIDWORD(v309) == 0;
                          v108 = v263;
                          LODWORD(v256) = v263;
                          if (v107)
                          {
                            strncpy(__dst, &v18[v294], v262);
                            __dst[v262] = 0;
                            log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "lookup = %s", __dst);
                            bzero(v26, v267);
                            *(&v238 + 1) = &__s[4];
                            *&v238 = &v318;
                            MultiWordEntry = fe_udwl_MatchUDctWord(a1, a2, 1, v23, v306, v106, &v315, v26, v238, __s, &v316, &v317 + 1, &v317);
                            if ((MultiWordEntry & 0x80000000) == 0)
                            {
                              v109 = strlen(v26);
                              log_OutEvent(*(*(a1 + 16) + 32), 32, "%s%s%s", "TEXT", v23, v26);
                              v108 = v318;
                              LODWORD(v256) = v109;
                              goto LABEL_205;
                            }

                            LODWORD(v256) = v263;
                          }

                          else
                          {
LABEL_205:
                            if ((MultiWordEntry & 0x80000000) == 0 && v108 && v263 > v108)
                            {
                              log_OutEvent(*(*(a1 + 16) + 32), 19, "%s%s", "URI", v316);
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "return string = %s", v26);
                              v251 = v297 + v294 + v257;
                              v246 = sameLanguage(v304, v306, &__s[4]);
                              if (!v246)
                              {
                                inserted = hlp_InsertLangMarker(a1, &__s[4], v251, v251, &v311, &v308, (v258 >> 5), v270, &v310);
                                if ((inserted & 0x80000000) != 0)
                                {
                                  goto LABEL_449;
                                }

                                MultiWordEntry = 0;
                              }

                              if (v315 == 4)
                              {
                                if (v318 >= 4u && *v26 == 12049 && v26[2] == 60)
                                {
                                  v124 = &v26[v256 - 3];
                                  v125 = *v124;
                                  v126 = *(v124 + 2);
                                  if (v125 == 12049 && v126 == 60)
                                  {
                                    memmove(v26, v26 + 3, v256 - 6);
                                    v256 = v256 - 6;
                                    v26[v256] = 0;
                                    LOWORD(v318) = v318 - 6;
                                    log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "transformed lookup = %s", v26);
                                    v277 = v310;
                                    v146 = v298 + v310;
                                    v147 = heap_Realloc(*(*(a1 + 16) + 8), v311, (8 * v146 + 16));
                                    if (!v147)
                                    {
                                      goto LABEL_457;
                                    }

                                    v148 = v147;
                                    v311 = v147;
                                    v149 = heap_Realloc(*(*(a1 + 16) + 8), v308, (4 * v146 + 8));
                                    if (!v149)
                                    {
                                      goto LABEL_457;
                                    }

                                    v150 = v149;
                                    v308 = v149;
                                    *&v149[4 * v146] = 0;
                                    v151 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                    if (!v151)
                                    {
                                      goto LABEL_457;
                                    }

                                    v151[6] = 60;
                                    *v151 = 7;
                                    v151[1] = v251;
                                    v151[2] = 0;
                                    v151[3] = v251;
                                    v151[4] = 0;
                                    v152 = (v148 + 8 * (v247 + v277));
                                    *v152 = v151;
                                    v153 = &v150[4 * (v247 + v277)];
                                    *v153 = 1;
                                    v154 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                    if (!v154)
                                    {
                                      v310 = v277 + 1;
                                      goto LABEL_457;
                                    }

                                    LOWORD(v281) = 0;
                                    v154[6] = v309;
                                    v155 = v251 + v256;
                                    *v154 = 7;
                                    v154[1] = v155;
                                    v154[2] = 0;
                                    v154[3] = v155;
                                    v154[4] = 0;
                                    v152[1] = v154;
                                    *(v153 + 1) = 1;
                                    v310 = v277 + 2;
                                    goto LABEL_351;
                                  }
                                }
                              }

                              else if (v315 == 1)
                              {
                                v275 = v310;
                                v111 = v298 + v310;
                                v245 = heap_Realloc(*(*(a1 + 16) + 8), v311, (8 * v111 + 16));
                                if (!v245)
                                {
                                  goto LABEL_457;
                                }

                                v311 = v245;
                                v244 = heap_Realloc(*(*(a1 + 16) + 8), v308, (4 * v111 + 8));
                                if (!v244)
                                {
                                  goto LABEL_457;
                                }

                                v308 = v244;
                                *&v244[4 * v111] = 0;
                                v242 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                if (!v242)
                                {
                                  goto LABEL_457;
                                }

                                v112 = strlen(v26);
                                if (strlen(__s) == 3)
                                {
                                  v113 = 14;
                                }

                                else
                                {
                                  v113 = 10;
                                }

                                v249 = heap_Calloc(*(*(a1 + 16) + 8), (v113 + v112), 1);
                                if (!v249)
                                {
                                  log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
                                  v236 = *(*(a1 + 16) + 8);
                                  v237 = v242;
                                  goto LABEL_451;
                                }

                                strcpy(v249, v26);
                                if (v260 || v254)
                                {
                                  v114 = strlen(v23);
                                  if (v262)
                                  {
                                    v115 = v114;
                                    if (!utf8_BelongsToSet(3u, v23, 0, v114))
                                    {
                                      v118 = 0;
                                      goto LABEL_278;
                                    }

                                    v116 = 0;
                                    while (1)
                                    {
                                      NextUtf8Offset = utf8_GetNextUtf8Offset(v23, v116);
                                      v118 = NextUtf8Offset;
                                      if (v262 <= NextUtf8Offset)
                                      {
                                        break;
                                      }

                                      v116 = NextUtf8Offset;
                                      if (!utf8_BelongsToSet(3u, v23, NextUtf8Offset, v115))
                                      {
                                        goto LABEL_278;
                                      }
                                    }

                                    if (v262)
                                    {
LABEL_278:
                                      PreviousUtf8Offset = v262;
                                      while (1)
                                      {
                                        v135 = PreviousUtf8Offset;
                                        if (!utf8_BelongsToSet(3u, v23, PreviousUtf8Offset, v115))
                                        {
                                          break;
                                        }

                                        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v23, v135);
                                        if (!PreviousUtf8Offset)
                                        {
                                          goto LABEL_292;
                                        }
                                      }

                                      v240 = v135;
                                      if (v135 > v118)
                                      {
                                        v282 = 1;
                                        do
                                        {
                                          if (!v23[v118])
                                          {
                                            break;
                                          }

                                          v136 = v118;
                                          if (utf8_BelongsToSet(3u, v23, v118, v115))
                                          {
                                            ++v282;
                                            if (v118 < v262)
                                            {
                                              while (1)
                                              {
                                                v136 = v118;
                                                if (!utf8_BelongsToSet(3u, v23, v118, v115))
                                                {
                                                  break;
                                                }

                                                v137 = utf8_GetNextUtf8Offset(v23, v118);
                                                v118 = v137;
                                                if (v262 <= v137)
                                                {
                                                  v136 = v137;
                                                  break;
                                                }
                                              }
                                            }
                                          }

                                          v118 = utf8_GetNextUtf8Offset(v23, v136);
                                        }

                                        while (v240 >= v118);
LABEL_293:
                                        LOWORD(__src[0]) = 0;
                                        LOWORD(v302) = 0;
                                        v138 = v318;
                                        v139 = strchr(v249, 18);
                                        v140 = v139 - v249;
                                        if (!v139)
                                        {
                                          v140 = v138;
                                        }

                                        v141 = utf8_countNbrOfPhonWords(v249, v140, __src, &v302);
                                        v142 = v282;
                                        v143 = v282 - v141;
                                        if (v282 < v141)
                                        {
                                          v281 = v141 - v282;
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE1 modification : insert %u dummy words (%u orthographic words, %u phonetic words)", (v141 - v142), v142 + 1, v141 + 1);
                                          goto LABEL_330;
                                        }

                                        if (v282 > v141)
                                        {
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE2 modification : hyphenate words (%u orthographic words, %u phonetic words)", v282, v141);
                                          v144 = v262;
                                          strncpy(__dst, &v18[v294], v262)[v262] = 0;
                                          v145 = v262;
                                          while (--v145)
                                          {
                                            if (__dst[v145] != 32)
                                            {
                                              while (__dst[v145] != 32)
                                              {
                                                if (!--v145)
                                                {
                                                  goto LABEL_318;
                                                }
                                              }

                                              while (v143)
                                              {
                                                while (__dst[v145] == 32)
                                                {
                                                  __dst[v145--] = 45;
                                                  if (!v145)
                                                  {
                                                    goto LABEL_318;
                                                  }
                                                }

                                                --v143;
                                                while (__dst[v145] != 32)
                                                {
                                                  if (!--v145)
                                                  {
                                                    goto LABEL_318;
                                                  }
                                                }
                                              }

                                              break;
                                            }
                                          }

LABEL_318:
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE2 modification : now %s", __dst);
                                          if (v262)
                                          {
                                            v156 = &v18[v294];
                                            v157 = __dst;
                                            do
                                            {
                                              v158 = *v157++;
                                              *v156++ = v158;
                                              --v144;
                                            }

                                            while (v144);
                                          }

                                          if (v298)
                                          {
                                            v159 = 0;
                                            v241 = v297 + (v294 + v257);
                                            v160 = v301 + 3;
                                            do
                                            {
                                              v161 = *v160 - *v266;
                                              if (v161 > v294 && v161 < v294 + v262)
                                              {
                                                log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "realign Markers in midword postions to start of word Mrk[%u].posCur from %u to %u", v159, *v160, v241);
                                                *v160 = v241;
                                              }

                                              ++v159;
                                              v160 += 8;
                                            }

                                            while (v298 != v159);
                                          }
                                        }

LABEL_329:
                                        v281 = 0;
                                        goto LABEL_330;
                                      }
                                    }
                                  }

LABEL_292:
                                  v282 = 0;
                                  goto LABEL_293;
                                }

                                if (v318 < 3u)
                                {
                                  goto LABEL_329;
                                }

                                v281 = 0;
                                v128 = 1;
                                do
                                {
                                  v129 = &v249[v128];
                                  v130 = *v129;
                                  if (v130 == 35 || v130 == 95)
                                  {
                                    if (v129[1] == 18)
                                    {
                                      v131 = v281;
                                    }

                                    else
                                    {
                                      v131 = v281 + 1;
                                    }

                                    v281 = v131;
                                  }

                                  else if (v130 == 18)
                                  {
                                    break;
                                  }

                                  ++v128;
                                }

                                while ((v318 - 1) > v128);
LABEL_330:
                                if (v262)
                                {
                                  v163 = v262;
                                  v164 = &v18[v294];
                                  do
                                  {
                                    if (*v164 == 95)
                                    {
                                      *v164 = 45;
                                    }

                                    ++v164;
                                    --v163;
                                  }

                                  while (v163);
                                }

                                *&v249[strlen(v249)] = 20;
                                strcat(v249, "EXTDCT");
                                if (strlen(__s) == 3)
                                {
                                  *&v249[strlen(v249)] = 20;
                                  strcat(v249, __s);
                                }

                                *(v242 + 3) = v249;
                                *v242 = 34;
                                *(v242 + 1) = v251;
                                v165 = v247 + v275;
                                v166 = v270;
                                *(v242 + 2) = 0;
                                *(v242 + 3) = v251;
                                *(v242 + 4) = 0;
                                *(v245 + 8 * v165) = v242;
                                *&v244[4 * v165] = 1;
                                if (v298 > v270)
                                {
                                  while (1)
                                  {
                                    v167 = &v301[8 * v166];
                                    v168 = v167[3];
                                    if (v287 < (v168 - v297))
                                    {
                                      break;
                                    }

                                    v169 = v168 + v257;
                                    if (*v167 == 36)
                                    {
                                      v169 = v297 + v257 + v287 + 3 * v281;
                                    }

                                    if (*v167 == 21)
                                    {
                                      v169 = v297 + v257 + v287 + 3 * v281;
                                    }

                                    v167[3] = v169;
                                    v170 = v275 + v166;
                                    *(v245 + 8 + 8 * v170) = v167;
                                    *&v244[4 * v170 + 4] = 0;
                                    hlp_KeepTrackBeforeMovingOn(v167, &v309 + 1, &v313, &v306, &v309);
                                    v166 = (v166 + 1);
                                    if (v298 <= v166)
                                    {
                                      v270 = v166;
                                      LODWORD(v166) = v166;
                                      goto LABEL_346;
                                    }
                                  }

                                  v270 = v166;
                                }

LABEL_346:
                                if (v287 < v259)
                                {
                                  v171 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                  v172 = *(a1 + 16);
                                  if (!v171)
                                  {
                                    log_OutPublic(*(v172 + 32), "FE_UDWL", 40000, 0);
LABEL_455:
                                    v310 = v275 + 1;
                                    goto LABEL_458;
                                  }

                                  v173 = v171;
                                  v248 = *(v172 + 8);
                                  v243 = v313;
                                  v174 = strlen(v313);
                                  v175 = heap_Alloc(v248, (v174 + 1));
                                  if (!v175)
                                  {
                                    log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
                                    heap_Free(*(*(a1 + 16) + 8), v173);
                                    goto LABEL_455;
                                  }

                                  *(v173 + 24) = strcpy(v175, v243);
                                  v176 = v297 + v257 + v287 + 3 * v281;
                                  *v173 = 21;
                                  *(v173 + 4) = v176;
                                  *(v173 + 8) = 0;
                                  *(v173 + 12) = v176;
                                  *(v173 + 16) = 0;
                                  *(v245 + 8 * (v166 + v275) + 8) = v173;
                                  *&v244[4 * (v166 + v275) + 4] = 1;
                                  LOWORD(v275) = v275 + 1;
                                }

                                v257 += 3 * v281;
                                v310 = v275 + 1;
LABEL_351:
                                if (v246)
                                {
                                  v276 = (v252 | v260) == 0;
                                  goto LABEL_353;
                                }

                                if (v315 == 1)
                                {
                                  v179 = v287;
                                }

                                else
                                {
                                  v179 = v256;
                                }

                                v180 = v297;
                                if (v315 != 1)
                                {
                                  v180 = v297 + v294;
                                }

                                inserted = hlp_InsertLangMarker(a1, v306, v180 + v179 + v257, v180 + v179 + v257, &v311, &v308, (v258 >> 5), v270, &v310);
                                if ((inserted & 0x80000000) != 0)
                                {
                                  goto LABEL_449;
                                }

                                v178 = 0;
                                v276 = (v252 | v260) == 0;
                                v177 = v294;
LABEL_361:
                                v181 = v287 - v177;
                                if (v181 < 1)
                                {
                                  goto LABEL_367;
                                }

                                if (v318 >= v10)
                                {
                                  v178 = 1;
                                }

                                if (v315 == 1 || !v318 || v178)
                                {
                                  v208 = v317;
                                  if (v181 <= v317)
                                  {
                                    v208 = 0;
                                    LOWORD(v317) = 0;
                                  }

                                  MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v18[v294], (v181 - v208));
                                  if ((MultiWordEntry & 0x80000000) != 0)
                                  {
                                    goto LABEL_420;
                                  }

                                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v18[v294], v181 - v317);
                                  v184 = v317;
                                  v253 = v181 - v317;
                                  if (v281)
                                  {
                                    v209 = 0;
                                    v210 = v253;
                                    while (1)
                                    {
                                      v211 = strlen(v312);
                                      MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v312, v211);
                                      if ((MultiWordEntry & 0x80000000) != 0)
                                      {
                                        break;
                                      }

                                      v212 = strlen(v312);
                                      log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v312, v212);
                                      v210 += strlen(v312);
                                      if (++v209 >= v281)
                                      {
                                        v184 = v317;
                                        goto LABEL_416;
                                      }
                                    }

LABEL_420:
                                    v8 = MultiWordEntry;
                                    goto LABEL_458;
                                  }

LABEL_416:
                                  if (v184)
                                  {
                                    v213 = &v18[v287];
                                    MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v213[-v184]);
                                    if ((MultiWordEntry & 0x80000000) != 0)
                                    {
                                      goto LABEL_420;
                                    }

                                    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v213[-v317], v317);
                                  }
                                }

                                else
                                {
LABEL_367:
                                  MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v26, v256);
                                  if ((MultiWordEntry & 0x80000000) != 0)
                                  {
                                    goto LABEL_420;
                                  }

                                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v26, v256);
                                  v182 = strlen(v23);
                                  if (v182)
                                  {
                                    for (j = 0; j < v182; j = utf8_GetNextUtf8Offset(v23, j))
                                    {
                                      if (utf8_BelongsToSet(3u, v23, j, v182))
                                      {
                                        while (j < v182 && utf8_BelongsToSet(3u, v23, j, v182))
                                        {
                                          j = utf8_GetNextUtf8Offset(v23, j);
                                        }
                                      }
                                    }
                                  }

                                  v189 = strlen(v26);
                                  if (v189)
                                  {
                                    for (k = 0; k < v189; k = utf8_GetNextUtf8Offset(v26, k))
                                    {
                                      if (utf8_BelongsToSet(3u, v26, k, v189))
                                      {
                                        while (k < v189 && utf8_BelongsToSet(3u, v26, k, v189))
                                        {
                                          k = utf8_GetNextUtf8Offset(v26, k);
                                        }
                                      }
                                    }
                                  }

                                  v191 = v276;
                                  if (!v298)
                                  {
                                    v191 = 1;
                                  }

                                  v192 = v298;
                                  if ((v191 & 1) == 0)
                                  {
                                    v193 = 0;
                                    v194 = HIWORD(v307);
                                    v195 = v307;
                                    v283 = v297 + HIWORD(v307);
                                    v196 = v301 + 3;
                                    v295 = v307;
                                    v278 = HIWORD(v307);
                                    do
                                    {
                                      v197 = *v196 - *v266;
                                      if (v197 > v194 && v197 < v195)
                                      {
                                        log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "realign Markers in midword postions to start of word Mrk[%u].posCur from %u to %u", v193, *v196, v283);
                                        v195 = v295;
                                        v194 = v278;
                                        v192 = v298;
                                        *v196 = v283;
                                      }

                                      ++v193;
                                      v196 += 8;
                                    }

                                    while (v192 != v193);
                                  }

                                  v257 += v256 - v262;
                                }

                                if (v251 != -1)
                                {
                                  log_OutTraceTuningData(*(*(a1 + 16) + 32), 109, "%s%d %s%d %s%s", v184, v185, v186, v187, v188, "POSREF");
                                }

                                if (v260 || v254)
                                {
                                  v287 = v307;
                                  if (v298 > v270)
                                  {
                                    v199 = v270;
                                    v296 = v311;
                                    v200 = v308;
                                    v201 = v270 + v310;
                                    while (1)
                                    {
                                      v202 = &v301[8 * v199];
                                      v203 = v202[3];
                                      v75 = v287;
                                      if (v287 <= (v203 - v297))
                                      {
                                        break;
                                      }

                                      v204 = (v296 + 8 * v201);
                                      v205 = *(v204 - 1);
                                      v206 = &v200[4 * v201];
                                      if (v203 >= v205[3])
                                      {
                                        *v204 = v202;
                                      }

                                      else
                                      {
                                        *v204 = v205;
                                        v207 = *(v206 - 1);
                                        v206 -= 4;
                                        *&v200[4 * v201] = v207;
                                        *(v204 - 1) = v202;
                                      }

                                      *v206 = 0;
                                      hlp_KeepTrackBeforeMovingOn(v202, &v309 + 1, &v313, &v306, &v309);
                                      v199 = (v199 + 1);
                                      ++v201;
                                      if (v298 <= v199)
                                      {
                                        v255 = 0;
                                        v270 = v199;
                                        goto LABEL_405;
                                      }
                                    }

                                    v255 = 0;
                                    v270 = v199;
                                    goto LABEL_406;
                                  }
                                }

                                v255 = 0;
                                goto LABEL_405;
                              }

                              LOWORD(v281) = 0;
                              goto LABEL_351;
                            }
                          }

                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Found user dictionary entries are ignored as return buffer too small; consider increasing value with parameter SSFT_PARAMC_UDCTMAXDICTRETLEN");
                          LOWORD(v281) = 0;
                          v251 = -1;
                          v276 = (v252 | v260) == 0;
                          if (v252 | v260 && (MultiWordEntry & 0x80000000) != 0)
                          {
                            if (v260 || v254)
                            {
                              v75 = HIWORD(v307);
                            }

                            else
                            {
                              v75 = v287;
                            }

                            v255 = 1;
                            goto LABEL_406;
                          }

LABEL_353:
                          v177 = v294;
                          v178 = MultiWordEntry >> 31;
                          goto LABEL_361;
                        }

                        v214 = 0;
                        v215 = 0;
LABEL_422:
                        if (v298 > v279)
                        {
                          v216 = (v311 + 8 * (v214 + v279));
                          v217 = v279;
                          do
                          {
                            v218 = &v301[8 * v217];
                            v218[3] += v215;
                            *v216++ = v218;
                            ++v217;
                          }

                          while (v298 > v217);
                        }

                        v301[4] += v215;
                        v219 = v298 + v214;
                        v220 = heap_Calloc(*(*(a1 + 16) + 8), (v298 + v214), 32);
                        if (v220)
                        {
                          v221 = v220;
                          if (!v219)
                          {
                            goto LABEL_434;
                          }

                          v222 = 0;
                          v223 = v311;
                          do
                          {
                            v224 = (v220 + 32 * v222);
                            v225 = *(v223 + 8 * v222);
                            v226 = v225[1];
                            *v224 = *v225;
                            v224[1] = v226;
                            ++v222;
                          }

                          while (v219 > v222);
                          if (*(v220 + 12) == v297)
                          {
                            v227 = 0;
                            do
                            {
                              v228 = ++v227;
                            }

                            while (v219 > v227 && *(v220 + 32 * v227 + 12) == v297);
                          }

                          else
                          {
LABEL_434:
                            v228 = 0;
                          }

                          stableArraySort(v220, v228, v219 - v228);
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "New Markers OUT");
                          v229 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v221, 32 * v219);
                          v230 = *(a1 + 16);
                          if ((v229 & 0x80000000) != 0)
                          {
                            v8 = v229;
                            v236 = *(v230 + 8);
                            v237 = v221;
LABEL_451:
                            heap_Free(v236, v237);
                          }

                          else
                          {
                            if (log_GetLogLevel(*(v230 + 32)) >= 5 && v219 != 0)
                            {
                              v232 = 0;
                              do
                              {
                                v233 = (v221 + 32 * v232);
                                v234 = *(*(a1 + 16) + 32);
                                v235 = *v233;
                                if (v235 == 0x4000)
                                {
                                  log_OutText(v234, "FE_UDWL", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", v233[1]);
                                }

                                else
                                {
                                  log_OutText(v234, "FE_UDWL", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v235);
                                }

                                ++v232;
                              }

                              while (v219 > v232);
                            }

                            heap_Free(*(*(a1 + 16) + 8), v221);
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "PTRARRAY", "application/x-realspeak-markers-pp;version=4.0", v311, 8 * v219);
                            }

                            inserted = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v319);
                            if ((inserted & 0x80000000) == 0)
                            {
                              v314 += v215;
                              inserted = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32));
                            }

LABEL_449:
                            v8 = inserted;
                          }
                        }

                        else
                        {
LABEL_457:
                          log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
                        }

LABEL_458:
                        LOWORD(v21) = v265;
                        v40 = __dst;
                        v27 = v250;
                        goto LABEL_54;
                      }
                    }
                  }

                  v47 = *(a1 + 16);
                }

                log_OutPublic(*(v47 + 32), "FE_UDWL", 40000, 0);
                v300 = 0;
                v27 = 0;
                v301 = 0;
                goto LABEL_148;
              }
            }

            log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
            v26 = 0;
            goto LABEL_51;
          }

          v26 = 0;
          v23 = 0;
          v300 = 0;
          v27 = 0;
          v40 = 0;
        }

        v301 = 0;
        v8 = MainLangLC;
        goto LABEL_54;
      }
    }

    return v11;
  }

  if (!*(&v321 + 4))
  {
    __src[0] = 0;
    if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "clcpppipelinemode", __src) & 0x80000000) != 0 || !__src[0] || !*__src[0])
    {
      *a5 = 0;
    }

    goto LABEL_41;
  }

  if (!DWORD2(v321))
  {
    goto LABEL_34;
  }

  v11 = (*(*(a1 + 48) + 88))(*(a1 + 896), *(a1 + 904), &v320, &v319);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v11 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v320, v319);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
  {
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "application/x-realspeak-markers-pp;version=4.0", v320, v319);
  }

  v17 = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v319);
  v8 = v17;
  if ((v17 & 0x80000000) == 0)
  {
LABEL_34:
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "text/plain;charset=utf-8", "", 0);
    if (DWORD1(v321))
    {
      v17 = synstrmaux_CloseOutStreamsOnly((a1 + 56), *(a1 + 48));
    }

LABEL_41:
    log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s", v28, v29, v30, v31, v32, "END");
    return v17;
  }

  return v8;
}

uint64_t hlp_GetMainLangLC(uint64_t a1, char *a2)
{
  __s = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(a1, "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v4 = 2323652608;
  if (__s && strlen(__s) == 3)
  {
    strcpy(a2, __s);
    if (*a2)
    {
      v5 = 0;
      do
      {
        a2[v5] = __tolower(a2[v5]);
        ++v5;
      }

      while (v5 < strlen(a2));
    }

    return Str;
  }

  return v4;
}

int *hlp_KeepTrackBeforeMovingOn(int *result, int *a2, void *a3, void *a4, _DWORD *a5)
{
  v5 = *a2;
  v6 = *result;
  if (*a2)
  {
    if (v6 == 34)
    {
      goto LABEL_15;
    }

    if (v6 == 21)
    {
      goto LABEL_17;
    }

    if (v6 != 7)
    {
      goto LABEL_20;
    }

LABEL_10:
    if (result[6] != 43)
    {
LABEL_17:
      if (v5 == 1)
      {
        *a2 = 0;
      }

      goto LABEL_20;
    }

LABEL_15:
    if (!v5)
    {
      *a2 = 1;
      goto LABEL_20;
    }

    if (v6 != 7)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v6 > 33)
  {
    if (v6 == 34)
    {
      goto LABEL_15;
    }

    if (v6 == 36)
    {
      *a4 = *(result + 3);
    }
  }

  else
  {
    if (v6 == 7)
    {
      goto LABEL_10;
    }

    if (v6 == 21)
    {
      *a3 = *(result + 3);
    }
  }

LABEL_20:
  if (*result == 7)
  {
    *a5 = result[6];
  }

  return result;
}

BOOL hlp_ValidateMultiWordMarker(void *a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, char *__dst, uint64_t a7, uint64_t a8, _BYTE *a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v16 = a5 - a4;
  strncpy(__dst, (a3 + a4), v16);
  __dst[v16] = 0;
  v19 = 1;
  *&v18 = &v19;
  *(&v18 + 1) = a9;
  return (udwl_MatchUdctWord(a1[2], a1[118], a1[119], a1[120], 1, __dst, a7, a8, v18, a10, a11, &a12, 0, 0, 0) & 0x80000000) == 0 && *a9 != 0;
}

uint64_t hlp_FindMultiWordEntry(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, _DWORD *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _WORD *a11, _WORD *a12, char *a13, _WORD *a14, unsigned __int16 a15, uint64_t a16, uint64_t a17, _DWORD *a18)
{
  v18 = a8;
  v23 = a1;
  v84 = *MEMORY[0x1E69E9840];
  v79 = 1;
  v78 = 1;
  v77 = 0;
  v76 = a15;
  *a18 = 0;
  v24 = heap_Calloc(*(*(a1 + 16) + 8), a15 + 1, 1);
  v25 = *(v23 + 16);
  if (v24)
  {
    v26 = v24;
    v74 = heap_Calloc(*(v25 + 8), a15 + 1, 1);
    if (!v74)
    {
      v40 = 2323652618;
      log_OutPublic(*(*(v23 + 16) + 32), "FE_UDWL", 40000, 0);
LABEL_76:
      heap_Free(*(*(v23 + 16) + 8), v26);
      return v40;
    }

    v71 = a5;
    v82 = a15;
    *__s2 = 1;
    v27 = heap_Calloc(*(*(v23 + 16) + 8), *(v23 + 968) + 1, 1);
    if (v27)
    {
      v28 = v27;
      v75 = v23;
      v29 = a4;
      v81 = v18;
      do
      {
        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a3, v29);
        v29 = PreviousUtf8Offset;
      }

      while (PreviousUtf8Offset > v18 && utf8_BelongsToSet(0, a3, PreviousUtf8Offset, a4));
      v31 = a7;
      hlp_Skip(1, 1, a3, &v81, v18, a4);
      v32 = v81;
      v80 = v81;
      if (v79)
      {
        v33 = 0;
        v72 = 0;
        v34 = v29;
        v35 = v75;
        while (v80 <= v34)
        {
          hlp_Skip(1, 1, a3, &v80, v32, a4);
          if (hlp_Skip(2, 1, a3, &v80, v32, a4))
          {
            if (v33)
            {
              ++v33;
            }

            else
            {
              if (*(v35 + 968) <= (v80 - v32))
              {
                *v28 = 0;
              }

              else
              {
                v36 = (v80 - v32);
                strncpy(v28, &a3[v32], v36);
                v28[v36] = 0;
                v35 = v75;
                *__s2 = 1;
                v37 = udwl_LookupMultiWordLengths(*(v75 + 16), *(v75 + 944), *(v75 + 952), *(v75 + 960), v28, __s2, v74, &v82, &v79);
                v38 = 0;
                if ((v37 & 0x1FFF) != 0x14)
                {
                  if ((v37 & 0x80000000) != 0)
                  {
                    v33 = 1;
                    v72 = v37;
                    break;
                  }

                  v38 = v37;
                }

                v72 = v38;
                v39 = *(*(v75 + 16) + 32);
                if (v79 < 2u)
                {
                  log_OutText(v39, "FE_UDWL", 5, 0, "lookup UMW: start word '%s': not found");
                }

                else
                {
                  log_OutText(v39, "FE_UDWL", 5, 0, "lookup UMW: start word '%s': found");
                }
              }

              v33 = 1;
            }
          }

          if (v33 >= v79)
          {
            break;
          }
        }
      }

      else
      {
        v33 = 0;
        v72 = 0;
        v35 = v23;
      }

      heap_Free(*(*(v35 + 16) + 8), v28);
      v41 = *a18 == 0;
      if (*a18)
      {
        v42 = 0;
      }

      else
      {
        v42 = v33 >= 2;
      }

      if (v42)
      {
        v70 = (v31 + 2 * v32);
        while (1)
        {
          v43 = v80;
          v44 = v80 - v32;
          if (v44 >= 1 && v44 <= *(v75 + 968))
          {
            strcpy(__s2, " ");
            LH_itoa(v33, &__s2[1], 0xAu);
            __strcat_chk();
            if (strstr(v74, __s2))
            {
              if (a6)
              {
                v45 = v71;
                v46 = 1;
                while (1)
                {
                  if (*v45 > 0x22u || ((1 << *v45) & 0x400200080) == 0)
                  {
                    v50 = 1;
                  }

                  else
                  {
                    v48 = v45[3] - v71[3];
                    v50 = v48 <= v32 || v48 >= v43;
                    if (!v50)
                    {
                      goto LABEL_57;
                    }
                  }

                  v45 += 8;
                  v42 = v46++ >= a6;
                  if (v42)
                  {
                    goto LABEL_57;
                  }
                }
              }

              v50 = 1;
LABEL_57:
              if (v43 > v32)
              {
                v52 = v32 + 1;
                v51 = v70;
                if (v50)
                {
                  do
                  {
                    v54 = *v51++;
                    v53 = v54;
                    if (v54)
                    {
                      v55 = 1;
                    }

                    else
                    {
                      v55 = v52 >= v43;
                    }

                    ++v52;
                  }

                  while (!v55);
                  v50 = v53 == 0;
                }
              }

              if (v50)
              {
                strncpy(a13, &a3[v32], (v43 - v32));
                a13[(v43 - v32)] = 0;
                v76 = a15;
                v78 = 1;
                log_OutTraceTuningData(*(*(v75 + 16) + 32), 110, "%s%s %s%s %s%s", v56, v57, v58, v59, v60, "BEG");
                *(&v69 + 1) = a16;
                *&v69 = &v76;
                *&v68 = &v78;
                *(&v68 + 1) = v26;
                matched = udwl_MatchUdctWord(*(v75 + 16), *(v75 + 944), *(v75 + 952), *(v75 + 960), 1, a13, a9, a10, v68, v69, a17, &v77, 2, 0, 0);
                v72 = 0;
                if ((matched & 0x1FFF) != 0x14)
                {
                  v40 = matched;
                  if ((matched & 0x80000000) != 0)
                  {
                    v23 = v75;
                    goto LABEL_75;
                  }

                  log_OutTraceTuningData(*(*(v75 + 16) + 32), 110, "%s%s %s%u %s%d %s%s %s%s", v62, v63, v64, v65, v66, "END");
                  *a18 = 1;
                  *a11 = v32;
                  *a12 = v43;
                  v72 = v40;
                  *a14 = v43 - v32;
                }
              }
            }
          }

          hlp_Skip(2, -1, a3, &v80, v32, a4);
          hlp_Skip(1, -1, a3, &v80, v32, a4);
          v41 = *a18 == 0;
          if (!*a18 && (--v33 & 0xFFFE) != 0)
          {
            continue;
          }

          break;
        }
      }

      v40 = v72;
      v23 = v75;
      if (v41)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v40 = 2323652618;
      log_OutPublic(*(*(v23 + 16) + 32), "FE_UDWL", 40000, 0);
      if (!*a18)
      {
LABEL_72:
        if (v79 >= 2u)
        {
          log_OutText(*(*(v23 + 16) + 32), "FE_UDWL", 5, 0, "lookup UMW: no UMW found", a13);
        }

        *a13 = 0;
LABEL_75:
        heap_Free(*(*(v23 + 16) + 8), v74);
        goto LABEL_76;
      }
    }

    log_OutText(*(*(v23 + 16) + 32), "FE_UDWL", 5, 0, "lookup UMW: '%s': found", a13);
    goto LABEL_75;
  }

  v40 = 2323652618;
  log_OutPublic(*(v25 + 32), "FE_UDWL", 40000, 0);
  return v40;
}

uint64_t fe_udwl_MatchUDctWord(void *a1, int a2, int a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, _WORD *a12, _WORD *a13)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  log_OutTraceTuningData(*(a1[2] + 32), 107, "%s%s %s%s %s%s", v20, v21, v22, v23, v24, "BEG");
  *&v33 = a7;
  *(&v33 + 1) = a8;
  matched = udwl_MatchUdctWord(a1[2], a1[118], a1[119], a1[120], a3, a4, a5, a6, v33, a9, a10, a11, 1, a12, a13);
  v31 = *(a1[2] + 32);
  if ((matched & 0x80000000) != 0)
  {
    log_OutTraceTuningData(v31, 107, "%s%s %s%u", v25, v26, v27, v28, v29, "END");
  }

  else
  {
    log_OutTraceTuningData(v31, 107, "%s%s %s%u %s%d %s%s %s%s", v25, v26, v27, v28, v29, "END");
  }

  return matched;
}

uint64_t hlp_InsertLangMarker(uint64_t a1, const char *a2, int a3, int a4, uint64_t *a5, uint64_t *a6, int a7, unsigned int a8, _WORD *a9)
{
  v17 = heap_Realloc(*(*(a1 + 16) + 8), *a5, 8 * (*a9 + a7) + 8);
  if (!v17 || (*a5 = v17, (v18 = heap_Realloc(*(*(a1 + 16) + 8), *a6, 4 * (*a9 + a7) + 4)) == 0))
  {
    v26 = 2323652618;
    v20 = *(a1 + 16);
LABEL_7:
    log_OutPublic(*(v20 + 32), "FE_UDWL", 40000, 0);
    return v26;
  }

  *a6 = v18;
  *(v18 + 4 * (*a9 + a7)) = 0;
  v19 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
  v20 = *(a1 + 16);
  if (!v19)
  {
    v26 = 2323652618;
    goto LABEL_7;
  }

  v21 = v19;
  v22 = *(v20 + 8);
  v23 = strlen(a2);
  v24 = heap_Calloc(v22, (v23 + 1), 1);
  if (v24)
  {
    v25 = strcpy(v24, a2);
    v26 = 0;
    *(v21 + 24) = v25;
    *v21 = 36;
    *(v21 + 4) = a3;
    *(v21 + 8) = 0;
    *(v21 + 12) = a4;
    v27 = *a9;
    v28 = v27 + a8;
    *(*a5 + 8 * v28) = v21;
    *(v21 + 16) = 0;
    *(*a6 + 4 * v28) = 1;
    *a9 = v27 + 1;
  }

  else
  {
    v26 = 2323652618;
    log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
    heap_Free(*(*(a1 + 16) + 8), v21);
  }

  return v26;
}

uint64_t stableArraySort(uint64_t result, int a2, int a3)
{
  if (a2 < a3)
  {
    v3 = result + 32 * a2 + 32;
    v4 = a2;
    do
    {
      v5 = v4++;
      if (v5 >= a2)
      {
        v6 = v3;
        v7 = v4;
        do
        {
          if (*(v6 + 12) >= *(v6 - 20))
          {
            break;
          }

          v9 = *v6;
          v8 = *(v6 + 16);
          v10 = *(v6 - 16);
          *v6 = *(v6 - 32);
          *(v6 + 16) = v10;
          *(v6 - 32) = v9;
          *(v6 - 16) = v8;
          v6 -= 32;
          --v7;
        }

        while (v7 > a2);
      }

      v3 += 32;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t fe_udwl_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v3 = *(a1 + 48);

  return synstrmaux_CloseStreams((a1 + 56), v3);
}

uint64_t fe_udwl_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  result = 0;
  *a3 = fe_udwl_ResourceTypes_SZ_FE_UDWL_CONTENT_TYPES_DCTEG;
  return result;
}

uint64_t fe_udwl_ResourceUnload(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v7 = a1[118];
  if (!v7)
  {
    return 2323652616;
  }

  v8 = *(v7 + 64);
  v9 = a1[119];
  v10 = a1[120];

  return v8(v9, v10, a3, a4);
}

uint64_t fe_udwl_IsUDictAvailable(void *a1, int a2, _DWORD *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((v5 & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v6 = v5;
  *a3 = 1;
  v7 = a1[118];
  if (!v7 || !(*(v7 + 80))(a1[119], a1[120]))
  {
    *a3 = 0;
  }

  return v6;
}

uint64_t fe_udwl_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2323652609;
  }

  result = 0;
  *a2 = &IFeUdwl;
  return result;
}

BOOL hlp_Skip(int a1, int a2, _BYTE *a3, unsigned __int16 *a4, unsigned int a5, uint64_t a6)
{
  v10 = *a4;
  if (a1 == 1)
  {
    if (a2 == 1)
    {
      if (v10 < a6)
      {
        v15 = *a4;
        do
        {
          if (!utf8_BelongsToSet(0, a3, v15, a6))
          {
            break;
          }

          NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(a3, *a4, a6);
          v15 = NextUtf8OffsetLimit;
          *a4 = NextUtf8OffsetLimit;
        }

        while (NextUtf8OffsetLimit < a6);
      }
    }

    else if (a2 == -1)
    {
      do
      {
        v11 = *a4;
        PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(a3, *a4, a6);
        *a4 = PreviousUtf8OffsetLimit;
      }

      while (PreviousUtf8OffsetLimit > a5 && utf8_BelongsToSet(0, a3, PreviousUtf8OffsetLimit, a6));
LABEL_22:
      *a4 = v11;
    }
  }

  else if (a2 == -1)
  {
    if (v10 > a5)
    {
      do
      {
        v11 = *a4;
        v17 = utf8_GetPreviousUtf8OffsetLimit(a3, *a4, a6);
        *a4 = v17;
      }

      while (v17 > a5 && !utf8_BelongsToSet(0, a3, v17, a6));
      goto LABEL_22;
    }
  }

  else if (a2 == 1 && v10 < a6)
  {
    v13 = *a4;
    do
    {
      if (utf8_BelongsToSet(0, a3, v13, a6))
      {
        break;
      }

      v14 = utf8_GetNextUtf8OffsetLimit(a3, *a4, a6);
      v13 = v14;
      *a4 = v14;
    }

    while (v14 < a6);
  }

  return v10 != *a4;
}

uint64_t fe_udwl_ResourceLoad(uint64_t *a1, int a2, char *a3, const char *a4, uint64_t a5, int a6, uint64_t a7)
{
  v45 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  v37 = 0;
  v38 = 0;
  v14 = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((v14 & 0x80000000) != 0)
  {
    return 2323652616;
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  if (!a3)
  {
    goto LABEL_38;
  }

  v20 = v14;
  if (a4)
  {
    v21 = a6 != 0;
    if (a5 || !a6)
    {
      goto LABEL_11;
    }

LABEL_38:
    log_OutPublic(*(a1[2] + 32), "FE_UDWL", 40001, 0);
    return 2323652615;
  }

  if (!a5 || !a6)
  {
    goto LABEL_38;
  }

  v21 = 1;
LABEL_11:
  v42 = 0;
  v43 = a3;
  if (a5 != 0 && v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = a4;
  }

  *v39 = 0;
  v40[0] = v22;
  v40[1] = a4;
  v41 = a5;
  LODWORD(v42) = a6;
  log_OutTraceTuningData(*(a1[2] + 32), 101, "%s%s %s%s %s%s", v15, v16, v17, v18, v19, "BEG");
  if (v21 || !strstr(a3, ";loader=broker"))
  {
    goto LABEL_30;
  }

  v28 = brk_DataOpenEx(*(a1[2] + 24), a4, 1, &v38);
  v29 = v28;
  if (a4 && v28 < 0)
  {
    Str = paramc_ParamGetStr(*(a1[2] + 40), "langcode", v39);
    if ((Str & 0x80000000) != 0)
    {
LABEL_32:
      v20 = Str;
      goto LABEL_33;
    }

    if ((brokeraux_ComposeBrokerString(a1[2], a4, 0, 1, *v39, 0, 0, __s, 0x400uLL) & 0x80000000) != 0)
    {
LABEL_40:
      v20 = 0;
      goto LABEL_33;
    }

    v29 = brk_DataOpenEx(*(a1[2] + 24), __s, 1, &v38);
  }

  if (v29 < 0)
  {
    goto LABEL_40;
  }

  v20 = brk_DataMapEx(*(a1[2] + 24), v38, 0, &v42, &v37);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  v40[0] = 0;
  __s[0] = 0;
  __strcat_chk();
  v31 = strchr(__s, 59);
  if (v31)
  {
    *v31 = 0;
  }

  v32 = strstr(a3, "mode=");
  if (v32)
  {
    v33 = v32;
    if (!strchr(v32, 59))
    {
      strlen(v33);
    }

    __strcat_chk();
    __strncat_chk();
  }

  v43 = __s;
  v41 = v37;
LABEL_30:
  v34 = a1[118];
  if (v34)
  {
    Str = (*(v34 + 56))(a1[119], a1[120], v40, a7);
    goto LABEL_32;
  }

LABEL_33:
  v35 = v38;
  if (v37)
  {
    brk_DataUnmap(*(a1[2] + 24), v38, v37);
    v37 = 0;
    v35 = v38;
  }

  if (v35)
  {
    brk_DataClose(*(a1[2] + 24), v35);
    v38 = 0;
  }

  log_OutTraceTuningData(*(a1[2] + 32), 101, "%s%s %s%u", v23, v24, v25, v26, v27, "END");
  return v20;
}

uint64_t hlp_udwl_Lookup(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *__s, uint64_t a8, uint64_t a9, _DWORD *a10, char *a11, unsigned __int16 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, _WORD *a18, _WORD *a19)
{
  v86[1] = *MEMORY[0x1E69E9840];
  v61 = 0;
  v85 = 0;
  v86[0] = 0;
  __s1 = __s;
  v63[0] = udwl_nbs_TakeAsIs;
  v63[1] = &__s1;
  v63[2] = &__s1;
  v64 = 0;
  v65 = udwl_nbs_TrimBlanksAndMatchingQuotes;
  p_s1 = &__s1;
  v67 = &v85;
  v68 = 0;
  v69 = udwl_nbs_TrimHeadAndTail;
  v70 = &v85;
  v71 = v86;
  v72 = 0;
  v73 = udwl_nbs_TrimTrailingDots;
  v74 = v86;
  v75 = &v85;
  v76 = 0;
  v77 = udwl_nbs_ToLower;
  v78 = v86;
  v79 = &v85;
  v81 = udwl_nbs_TrimTrailingDots;
  v82 = &v85;
  v83 = v86;
  v80 = 0;
  v84 = 0;
  if (!__s)
  {
    return 2323652615;
  }

  v20 = 2323652628;
  if (a3 && a4)
  {
    v27 = strlen(__s) + 1;
    v28 = heap_Alloc(*(a2 + 8), v27);
    v85 = v28;
    if (v28 && (bzero(v28, v27), v29 = heap_Alloc(*(a2 + 8), v27), (v86[0] = v29) != 0))
    {
      v59 = a1;
      v58 = a5;
      v60 = a6;
      bzero(v29, v27);
      v30 = 0;
      v56 = *a12;
      v57 = v27;
      while (1)
      {
        v31 = &v63[4 * v30];
        v20 = (*v31)(*v31[1], *v31[2], v27, &v61, v31 + 3);
        if ((v20 & 0x80001FFF) == 0x80000009)
        {
          v32 = 0;
          while (v32 < 3)
          {
            v27 = 2 * v27 + 10;
            v33 = heap_Realloc(*(a2 + 8), v85, v27 & 0xFFFE);
            v85 = v33;
            if (!v33)
            {
              return 2323652618;
            }

            bzero(v33, v27 & 0xFFFE);
            v34 = heap_Realloc(*(a2 + 8), v86[0], v27 & 0xFFFE);
            v86[0] = v34;
            if (!v34)
            {
              return 2323652618;
            }

            ++v32;
            bzero(v34, v27 & 0xFFFE);
            v20 = (*v31)(*v31[1], *v31[2], v27, &v61, v31 + 3);
            if ((v20 & 0x80001FFF) != 0x80000009)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_36;
        }

LABEL_13:
        if (v61)
        {
          v35 = *v31[2];
          v36 = v59 ? (*(a3 + 120))(a4, v58, v35, a12, a11, a16) : (*(a3 + 112))(a4, v58, v35, a8, a9, a12, a11, a10, a13, a14, a15, a17);
          v20 = v36;
          if ((v36 & 0x1FFF) != 0x14 && (v36 & 0x1FFF) != 0x404 && v36 < 1)
          {
            break;
          }
        }

        v38 = 0;
        v39 = v30 + 1;
        if (v60)
        {
          if (v30++ < 5)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      if ((v36 & 0x80000000) == 0)
      {
        LODWORD(v20) = 0;
        v38 = 1;
        if (a18 && a19)
        {
          v42 = __s1;
          *a18 = 0;
          v43 = &v63[4 * v30];
          v44 = *v43[1];
          v20 = *v43[2];
          v45 = strstr(v44, v20);
          if (v45)
          {
            v46 = v45 - v44;
            *a18 = v45 - v44;
            if (v30)
            {
              v46 += v68;
              *a18 = v46;
              if (v30 != 1)
              {
                v46 += v72;
                *a18 = v46;
              }
            }
          }

          else
          {
            v46 = 0;
          }

          v47 = strlen(v42);
          v48 = strlen(v20);
          LODWORD(v20) = 0;
          *a19 = v47 - v46 - v48;
        }

        v39 = v30;
LABEL_43:
        if (*a10 == 4)
        {
          if (v39 == 4 && v61)
          {
            v49 = __s1;
            v50 = *v79;
            v51 = *v78;
            v52 = v57;
            v53 = a11;
            v54 = a12;
            v55 = v56;
            goto LABEL_49;
          }

          if (v38)
          {
            v49 = __s1;
            v50 = *v63[4 * v39 + 2];
            v52 = v57;
            v53 = a11;
            v54 = a12;
            v55 = v56;
            v51 = 0;
LABEL_49:
            LODWORD(v20) = udwl_RestoreHeadAndTail(v53, v54, v55, v49, v52, v50, v51);
          }
        }

        if (v85)
        {
          heap_Free(*(a2 + 8), v85);
        }

        if (v86[0])
        {
          heap_Free(*(a2 + 8), v86[0]);
        }

        if (v38)
        {
          return v20;
        }

        else
        {
          return 2323652628;
        }
      }

LABEL_36:
      if (v85)
      {
        heap_Free(*(a2 + 8), v85);
      }

      if (v86[0])
      {
        heap_Free(*(a2 + 8), v86[0]);
      }
    }

    else
    {
      return 2323652618;
    }
  }

  return v20;
}

uint64_t udwl_nbs_TakeAsIs(char *__s, char *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v9 = 2323652615;
  if (__s && a2)
  {
    if (__s == a2)
    {
      if (a4)
      {
        *a4 = 1;
      }

      if (!a5)
      {
        return 0;
      }
    }

    else
    {
      if (strlen(__s) >= a3)
      {
        return 2323652617;
      }

      strcpy(a2, __s);
      if (a4)
      {
        *a4 = 1;
      }

      if (!a5)
      {
        return 0;
      }
    }

    v9 = 0;
    *a5 = 0;
  }

  return v9;
}

uint64_t udwl_nbs_TrimBlanksAndMatchingQuotes(char *__s, char *a2, uint64_t a3, _DWORD *a4, unsigned int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  result = 2323652615;
  if (__s && a2 && *__s)
  {
    NextUtf8Offset = 0;
    v11 = strlen(__s);
    if (!v11)
    {
      goto LABEL_12;
    }

    while (utf8_BelongsToSet(0, __s, NextUtf8Offset, v11))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
      if (NextUtf8Offset >= v11)
      {
        goto LABEL_12;
      }
    }

    if (utf8_BelongsToSet(7u, __s, NextUtf8Offset, v11))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
      v12 = 0;
    }

    else
    {
LABEL_12:
      v12 = 1;
    }

    if (NextUtf8Offset >= v11)
    {
      return 2323652628;
    }

    else
    {
      while (utf8_BelongsToSet(0, __s, NextUtf8Offset, v11))
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
        if (NextUtf8Offset >= v11)
        {
          return 2323652628;
        }
      }

      if (a5)
      {
        *a5 = NextUtf8Offset;
      }

      PreviousUtf8Offset = v11;
      do
      {
        v14 = PreviousUtf8Offset;
        if (PreviousUtf8Offset <= NextUtf8Offset)
        {
          v17 = 1;
          goto LABEL_25;
        }

        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, PreviousUtf8Offset);
      }

      while (utf8_BelongsToSet(0, __s, PreviousUtf8Offset, v11));
      v15 = utf8_GetPreviousUtf8Offset(__s, v14);
      v16 = utf8_BelongsToSet(7u, __s, v15, v11);
      v17 = v16 == 0;
      if (v16)
      {
        v14 = v15;
      }

      do
      {
LABEL_25:
        v18 = v14 - NextUtf8Offset;
        if (v14 <= NextUtf8Offset)
        {
          break;
        }

        v14 = utf8_GetPreviousUtf8Offset(__s, v14);
      }

      while (utf8_BelongsToSet(0, __s, v14, v11));
      if (v18 == v11)
      {
        strcpy(a2, __s);
      }

      else
      {
        strncpy(a2, &__s[NextUtf8Offset], v18);
        a2[v18] = 0;
        if (a4)
        {
          *a4 = 1;
        }
      }

      if (v12 | v17)
      {
        return 2323652628;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t udwl_nbs_TrimHeadAndTail(char *__s, char *a2, unsigned int a3, _DWORD *a4, unsigned int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = strlen(__s);
    if (!v11)
    {
      return 2323652628;
    }

    v12 = 0;
    while (1)
    {
      WCharFromUtf8 = utf8_GetWCharFromUtf8(__s, v12, v11);
      if (WCharFromUtf8 <= 129)
      {
        if (((WCharFromUtf8 - 60) > 0x3F || ((1 << (WCharFromUtf8 - 60)) & 0x8000000180000001) == 0) && (WCharFromUtf8 - 39) >= 2)
        {
LABEL_20:
          if (a5)
          {
            *a5 = v12;
          }

          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v11);
          NextUtf8Offset = v11;
          if (v12 < v11)
          {
            v17 = v11;
            do
            {
              NextUtf8Offset = v17;
              v17 = PreviousUtf8Offset;
              v18 = utf8_GetWCharFromUtf8(__s, PreviousUtf8Offset, v11);
              if (((v18 - 33) > 0x3C || ((1 << (v18 - 33)) & 0x1800000066000947) == 0) && ((v18 - 125) > 0x3E || ((1 << (v18 - 125)) & 0x4080000000A000A1) == 0) && ((v18 - 8217) > 0x21 || ((1 << (v18 - 25)) & 0x200000055) == 0) && utf8_GetWCharFromUtf8(__s, v17, v11) != 46)
              {
                break;
              }

              PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v17);
              NextUtf8Offset = v17;
            }

            while (v17 > v12);
          }

          if (utf8_GetWCharFromUtf8(__s, NextUtf8Offset, v11) == 46)
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
          }

          v19 = NextUtf8Offset - v12;
          if (a4 && v19 != v11)
          {
            *a4 = 1;
          }

          v10 = 2323652617;
          if (NextUtf8Offset != v12 && v19 < a3)
          {
            v10 = 0;
            strncpy(a2, &__s[v12], NextUtf8Offset - v12)[v19] = 0;
          }

          return v10;
        }
      }

      else if (((WCharFromUtf8 - 130) > 0x3D || ((1 << (WCharFromUtf8 + 126)) & 0x2004020080028005) == 0) && ((WCharFromUtf8 - 8216) > 0x21 || ((1 << (WCharFromUtf8 - 24)) & 0x200000055) == 0))
      {
        goto LABEL_20;
      }

      v12 = utf8_GetNextUtf8Offset(__s, v12);
      if (v12 >= v11)
      {
        return 2323652628;
      }
    }
  }

  return v10;
}

uint64_t udwl_nbs_TrimTrailingDots(char *__s, char *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = strlen(__s);
    v12 = v11;
    if (a5)
    {
      *a5 = 0;
    }

    PreviousUtf8Offset = v11;
    do
    {
      v14 = PreviousUtf8Offset;
      if (!PreviousUtf8Offset)
      {
        break;
      }

      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, PreviousUtf8Offset);
    }

    while (utf8_GetWCharFromUtf8(__s, PreviousUtf8Offset, v12) == 46);
    if (a4 && v14 != v12)
    {
      *a4 = 1;
    }

    if (v14 >= a3)
    {
      return 2323652617;
    }

    else
    {
      strncpy(a2, __s, v14);
      v10 = 0;
      a2[v14] = 0;
    }
  }

  return v10;
}

uint64_t udwl_nbs_ToLower(char *__s, char *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = strlen(__s);
    v12 = v11;
    if (a5)
    {
      *a5 = 0;
    }

    *a2 = 0;
    if (v11)
    {
      NextUtf8Offset = 0;
      v14 = a3;
      while (1)
      {
        v15 = utf8_ToLower(__s, NextUtf8Offset, __sa);
        if (a4 && v15)
        {
          *a4 = 1;
        }

        v16 = strlen(__sa);
        if (strlen(a2) + v16 >= v14)
        {
          break;
        }

        strcat(a2, __sa);
        NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
        if (NextUtf8Offset >= v12)
        {
          return 0;
        }
      }

      return 2323652617;
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

uint64_t udwl_RestoreHeadAndTail(char *a1, _WORD *a2, signed int a3, char *__s1, __int16 a5, char *__s2, const char *a7)
{
  v14 = strstr(__s1, __s2);
  if (v14)
  {
    v15 = (v14 - __s1);
  }

  else if (a7)
  {
    v16 = strstr(__s1, a7);
    if (v16)
    {
      v15 = (v16 - __s1);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = 2323652615;
  if (a1 && a2 && __s1 && __s2)
  {
    v18 = a5 - 1;
    v19 = strlen(__s2);
    v20 = v19;
    v21 = *a2;
    if ((v21 + v18 - v19) <= a3)
    {
      v22 = v19;
      v23 = &a1[v15];
      if (v15)
      {
        memmove(&a1[v15], a1, v21);
        memmove(a1, __s1, v15);
        LODWORD(v21) = *a2;
      }

      v24 = v18 - v22;
      if ((v24 - v15) >= 1)
      {
        memmove(&v23[v21], &__s1[v15 + v20], v24 - v15);
        LOWORD(v21) = *a2;
      }

      v17 = 0;
      *a2 = v21 + v24;
    }

    else
    {
      return 2323652617;
    }
  }

  return v17;
}

uint64_t unixlit_replace_utf8char(unsigned __int8 *a1, char *a2)
{
  v3 = a1;
  v4 = utf8_determineUTF8CharLength(*a1);
  result = utf8_determineUTF8CharLength(*a2);
  v6 = result;
  if (v6 != v4)
  {
    v7 = &v3[v4];
    v8 = strlen(v7);
    result = memmove(&v3[v6], v7, v8 + 1);
  }

  if (v6 >= 1)
  {
    do
    {
      v9 = *a2++;
      *v3++ = v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t fe_unixlit_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t *a5)
{
  v23 = 0;
  v24 = 0;
  v5 = 2321555463;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 2) = 0;
  inited = InitRsrcFunction(a3, a4, &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v24[6], "SYNTHSTREAM", &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v24[6], "FE_DEPES", &v21);
  v9 = v24[6];
  if ((Object & 0x80000000) != 0)
  {
    v16 = "SYNTHSTREAM";
LABEL_29:
    objc_ReleaseObject(v9, v16);
    return Object;
  }

  v10 = objc_GetObject(v9, "FE_DCTLKP", &v22);
  if ((v10 & 0x80000000) != 0)
  {
    Object = v10;
    objc_ReleaseObject(v24[6], "SYNTHSTREAM");
    v9 = v24[6];
    v16 = "FE_DEPES";
    goto LABEL_29;
  }

  v11 = heap_Alloc(v24[1], 984);
  if (v11)
  {
    v12 = v11;
    *v11 = v24;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 56) = *(v23 + 8);
    v13 = v21;
    v14 = v22;
    v15 = *(v22 + 8);
    *(v11 + 24) = v15;
    *(v11 + 8) = *(v14 + 16);
    *(v11 + 48) = *(v13 + 8);
    *(v11 + 32) = *(v13 + 16);
    *(v11 + 952) = 0;
    *(v11 + 960) = 0;
    *(v11 + 968) = 0;
    *(v11 + 976) = 0;
    if (((*(v15 + 96))(*(v11 + 8), *(v11 + 16), "fecfg", "uselatin", &v20, &v19, &v18) & 0x80000000) != 0)
    {
      fe_unixlit_ObjClose(*a5, a5[1]);
      *a5 = 0;
      *(a5 + 2) = 0;
    }

    if (v19 == 1 && v20 && **v20 == 49)
    {
      *(v12 + 952) = 1;
    }

    v19 = 0;
    if (((*(*(v12 + 24) + 96))(*(v12 + 8), *(v12 + 16), "fecfg", "unixlitlatinsp", &v20, &v19, &v18) & 0x80000000) != 0)
    {
      fe_unixlit_ObjClose(*a5, a5[1]);
      *a5 = 0;
      *(a5 + 2) = 0;
    }

    if (v19 == 1 && v20 && **v20 == 49)
    {
      *(v12 + 956) = 1;
    }

    v19 = 0;
    v5 = (*(*(v12 + 24) + 96))(*(v12 + 8), *(v12 + 16), "fecfg", "lookupa2z", &v20, &v19, &v18);
    if ((v5 & 0x80000000) != 0)
    {
      fe_unixlit_ObjClose(*a5, a5[1]);
      *a5 = 0;
      *(a5 + 2) = 0;
    }

    if (v19 == 1 && v20 && **v20 == 49)
    {
      *(v12 + 960) = 1;
    }

    *a5 = v12;
    *(a5 + 2) = 62345;
    synstrmaux_InitStreamOpener(v12 + 64, *(*v12 + 32), "FE_UNIXLIT");
  }

  else
  {
    log_OutPublic(v24[4], "FE_UNIXLIT", 39000, 0);
    objc_ReleaseObject(v24[6], "SYNTHSTREAM");
    objc_ReleaseObject(v24[6], "FE_DEPES");
    objc_ReleaseObject(v24[6], "FE_DCTLKP");
    return 2321555466;
  }

  return v5;
}

uint64_t fe_unixlit_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62345, 984);
  if ((result & 0x80000000) != 0)
  {
    return 2321555464;
  }

  if (a1)
  {
    v4 = *(a1 + 968);
    if (v4)
    {
      if (*(a1 + 976))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          heap_Free(*(*a1 + 8), *(v4 + v5));
          v7 = (*(a1 + 968) + v5);
          *v7 = 0;
          heap_Free(*(*a1 + 8), v7[1]);
          v4 = *(a1 + 968);
          *(v4 + v5 + 8) = 0;
          ++v6;
          v5 += 16;
        }

        while (v6 < *(a1 + 976));
      }

      heap_Free(*(*a1 + 8), v4);
      *(a1 + 968) = 0;
    }

    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_unixlit_ObjReopen(uint64_t a1, int a2)
{
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_UNIXLIT");
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  result = (*(*(a1 + 24) + 96))(*(a1 + 8), *(a1 + 16), "fecfg", "uselatin", &v6, &v5, &v4);
  if ((result & 0x80000000) == 0)
  {
    if (v5 == 1 && v6 && **v6 == 49)
    {
      *(a1 + 952) = 1;
    }

    v5 = 0;
    result = (*(*(a1 + 24) + 96))(*(a1 + 8), *(a1 + 16), "fecfg", "unixlitlatinsp", &v6, &v5, &v4);
    if ((result & 0x80000000) == 0)
    {
      if (v5 == 1 && v6 && **v6 == 49)
      {
        *(a1 + 956) = 1;
      }

      v5 = 0;
      result = (*(*(a1 + 24) + 96))(*(a1 + 8), *(a1 + 16), "fecfg", "lookupa2z", &v6, &v5, &v4);
      if ((result & 0x80000000) == 0 && v5 == 1 && v6 && **v6 == 49)
      {
        *(a1 + 960) = 1;
      }
    }
  }

  return result;
}

uint64_t fe_unixlit_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_UNIXLIT");
  synstrmaux_RegisterInStream((a1 + 64), "text/plain;charset=utf-8", 0, a1 + 888);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 904);
  synstrmaux_RegisterOutStream((a1 + 64), "text/plain;charset=utf-8", a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 936);
  v7 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 56), a3, a4);
  if ((v7 & 0x80000000) != 0 || (v7 = (*(*(a1 + 48) + 104))(*(a1 + 32), *(a1 + 40), 0, 1), (v7 & 0x80000000) != 0))
  {
    v8 = v7;
LABEL_7:
    synstrmaux_CloseStreams((a1 + 64), *(a1 + 56));
    return v8;
  }

  v8 = (*(*(a1 + 48) + 104))(*(a1 + 32), *(a1 + 40), 0, 0);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t unixlit_growMapCharStr(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  v5 = a5 + a4;
  v6 = *a3;
  if (a5 + a4 < v6)
  {
    return 0;
  }

  v12 = v6 + 32;
  if (v5 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v5 + 32;
  }

  v14 = heap_Realloc(*(*a1 + 8), *a2, 8 * v13);
  if (v14)
  {
    *a2 = v14;
    if (a4 < v13)
    {
      v15 = (v14 + 8 * a4 + 4);
      v16 = v13 - a4;
      do
      {
        *(v15 - 2) = 9999;
        *v15 = 0;
        v15 += 2;
        --v16;
      }

      while (v16);
    }

    result = 0;
    *a3 = v13;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0);
    return 2321555466;
  }

  return result;
}

uint64_t unixlit_addLangStrs(uint64_t *a1, uint64_t *a2, unsigned __int16 *a3, char *__s2, unsigned __int16 *a5)
{
  v10 = *a3;
  if (*a3)
  {
    v11 = 0;
    v12 = *a2;
    v13 = *a2;
    do
    {
      if (!strcmp(*v13, __s2))
      {
        v23 = 0;
        *a5 = v11;
        return v23;
      }

      ++v11;
      v13 += 2;
    }

    while (v10 != v11);
    v14 = heap_Realloc(*(*a1 + 8), v12, 16 * v10 + 17);
    if (v14)
    {
      v15 = v14;
      *a2 = v14;
      v16 = strlen(__s2);
      v17 = heap_Calloc(*(*a1 + 8), 1, v16 + 1);
      *(v15 + 16 * *a3) = v17;
      v18 = *a1;
      if (!v17)
      {
        goto LABEL_14;
      }

      v19 = *(v18 + 8);
      v20 = strlen(__s2);
      v21 = heap_Calloc(v19, 1, (v20 + 1));
      v22 = *a3;
      *(v15 + 16 * v22 + 8) = v21;
      if (!v21)
      {
        v23 = 2321555466;
        log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0);
        v24 = *(*a1 + 8);
        v25 = *(v15 + 16 * *a3);
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v23 = 2321555466;
    v18 = *a1;
LABEL_16:
    log_OutPublic(*(v18 + 32), "FE_UNIXLIT", 40000, 0);
    return v23;
  }

  v26 = heap_Calloc(*(*a1 + 8), 1, 17);
  v18 = *a1;
  if (!v26)
  {
LABEL_14:
    v23 = 2321555466;
    goto LABEL_16;
  }

  v15 = v26;
  v27 = *(v18 + 8);
  v28 = strlen(__s2);
  v29 = heap_Calloc(v27, 1, v28 + 1);
  *(v15 + 16 * *a3) = v29;
  v30 = *a1;
  if (v29)
  {
    v31 = *(v30 + 8);
    v32 = strlen(__s2);
    v33 = heap_Calloc(v31, 1, (v32 + 1));
    v22 = *a3;
    *(v15 + 16 * v22 + 8) = v33;
    if (v33)
    {
LABEL_12:
      strcpy(*(v15 + 16 * v22), __s2);
      strcpy(*(v15 + 16 * *a3 + 8), __s2);
      v23 = 0;
      v34 = *a3;
      *a5 = *a3;
      *a3 = v34 + 1;
      *a2 = v15;
      return v23;
    }

    v23 = 2321555466;
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0);
    heap_Free(*(*a1 + 8), *(v15 + 16 * *a3));
  }

  else
  {
    v23 = 2321555466;
    log_OutPublic(*(v30 + 32), "FE_UNIXLIT", 40000, 0);
  }

  v24 = *(*a1 + 8);
  v25 = v15;
LABEL_20:
  heap_Free(v24, v25);
  return v23;
}

uint64_t unixlit_lookup(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  if (*a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      LH_itoa(a3[v12], v15, 0x10u);
      __strcat_chk();
      v12 = ++v13;
    }

    while (strlen(a3) > v13);
  }

  return (*(a1[3] + 96))(a1[1], a1[2], a2, v16, a4, a5, a6);
}

uint64_t fe_unixlit_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v382 = *MEMORY[0x1E69E9840];
  v7 = 2321555466;
  memset(v379, 0, sizeof(v379));
  v372 = 0;
  v370 = 0;
  v369 = 0;
  v368 = 9999;
  v367[3] = 9999;
  strcpy(v367, "latin");
  strcpy(v366, "normal");
  v365 = 0;
  strcpy(v371, "spell");
  strcpy(__s2, "normal");
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  v378 = 0;
  v377 = 0;
  v376 = 0;
  v375 = 0;
  v373 = 0;
  *a5 = 1;
  v8 = (*(a1[7] + 144))(a1[111], a1[112], &v379[8], v379);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a1[7] + 144))(a1[113], a1[114], &v379[4], v379);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (!*&v379[8])
  {
    v43 = *v379;
    if (!*v379)
    {
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v365) & 0x80000000) != 0 || !v365 || !*v365)
      {
        *a5 = 0;
      }

      return v9;
    }

    if (*&v379[4])
    {
      v8 = (*(a1[7] + 88))(a1[113], a1[114], &v377, &v376);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v8 = (*(a1[7] + 104))(a1[117], a1[118], v377, v376);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v9 = (*(a1[7] + 96))(a1[113], a1[114], v376);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }

      v43 = *v379;
    }

    if (!v43)
    {
      return v9;
    }

    return synstrmaux_CloseOutStreamsOnly(a1 + 32, a1[7]);
  }

  v8 = (*(a1[6] + 112))(a1[4], a1[5], &v372 + 4, 1);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = (*(a1[6] + 112))(a1[4], a1[5], &v372, 0);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = (*(a1[7] + 88))(a1[111], a1[112], &v375, &v378);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v10 = v378;
  v8 = (*(a1[7] + 88))(a1[113], a1[114], &v377, &v376);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v11 = v376;
  v12 = v376 >> 5;
  v13 = v12;
  v14 = heap_Calloc(*(*a1 + 8), 1, (32 * v12) | 1);
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0);
    v18 = 0;
    v9 = 2321555466;
    goto LABEL_598;
  }

  v361 = v14;
  memcpy(v14, v377, v376);
  if (v12)
  {
    v15 = (v361 + 16);
    v16 = (v11 >> 5);
    do
    {
      if (*(v15 - 4) == 1)
      {
        *v15 = 0;
      }

      v15 += 8;
      --v16;
    }

    while (v16);
  }

  v17 = heap_Alloc(*(*a1 + 8), 8 * v12);
  if (!v17)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0);
LABEL_65:
    heap_Free(*(*a1 + 8), v361);
    return 2321555466;
  }

  v18 = v17;
  if (v12)
  {
    bzero(v17, 8 * v12);
  }

  v19 = v361;
  v352 = *(v361 + 12);
  if (!v352)
  {
    HIDWORD(v372) = 0;
    v20 = (*(a1[6] + 104))(a1[4], a1[5], 0, 1);
    if ((v20 & 0x80000000) != 0)
    {
      v7 = v20;
      goto LABEL_597;
    }
  }

  v369 = v10 + 32;
  v21 = heap_Calloc(*(*a1 + 8), 1, (8 * (v10 + 32)) | 1);
  v370 = v21;
  if (!v21)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0);
    heap_Free(*(*a1 + 8), v18);
    goto LABEL_65;
  }

  v22 = (v10 + 32);
  if (v10 != 0xFFE0)
  {
    v23 = (v22 + 7) & 0x1FFF8;
    v24 = vdupq_n_s64(v22 - 1);
    v25 = xmmword_1C37BDD80;
    v26 = xmmword_1C37BDD90;
    v27 = xmmword_1C378AEF0;
    v28 = xmmword_1C378AF00;
    v29 = (v21 + 32);
    v30 = vdupq_n_s64(8uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v24, v28));
      if (vuzp1_s8(vuzp1_s16(v31, *v24.i8), *v24.i8).u8[0])
      {
        *(v29 - 16) = 9999;
      }

      if (vuzp1_s8(vuzp1_s16(v31, *&v24), *&v24).i8[1])
      {
        *(v29 - 12) = 9999;
      }

      if (vuzp1_s8(vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, *&v27))), *&v24).i8[2])
      {
        *(v29 - 8) = 9999;
        *(v29 - 4) = 9999;
      }

      v32 = vmovn_s64(vcgeq_u64(v24, v26));
      if (vuzp1_s8(*&v24, vuzp1_s16(v32, *&v24)).i32[1])
      {
        *v29 = 9999;
      }

      if (vuzp1_s8(*&v24, vuzp1_s16(v32, *&v24)).i8[5])
      {
        v29[4] = 9999;
      }

      if (vuzp1_s8(*&v24, vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, *&v25)))).i8[6])
      {
        v29[8] = 9999;
        v29[12] = 9999;
      }

      v26 = vaddq_s64(v26, v30);
      v27 = vaddq_s64(v27, v30);
      v28 = vaddq_s64(v28, v30);
      v29 += 32;
      v25 = vaddq_s64(v25, v30);
      v23 -= 8;
    }

    while (v23);
  }

  log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, " ");
  do
  {
    v33 = v10;
    v34 = v10;
  }

  while (!*(v375 - 1 + v10--));
  v323 = (32 * (v11 >> 5)) | 1;
  if (v33)
  {
    v36 = 0;
    while (1)
    {
      v37 = *(v375 + v36);
      v38 = v37 > 0x20;
      v39 = (1 << v37) & 0x100002600;
      v40 = v38 || v39 == 0;
      if (v40)
      {
        break;
      }

      if (v33 == ++v36)
      {
        LOBYTE(v36) = v33;
LABEL_46:
        LOWORD(v41) = v33;
        v42 = v33;
        goto LABEL_78;
      }
    }
  }

  else
  {
    LOWORD(v36) = 0;
  }

  if (v36 >= v33)
  {
    LOWORD(v41) = v36;
    v42 = v36;
  }

  else
  {
    v41 = v36;
    while (1)
    {
      v45 = *(v375 + v41);
      v38 = v45 > 0x20;
      v46 = (1 << v45) & 0x100002600;
      if (!v38 && v46 != 0)
      {
        break;
      }

      if (++v41 >= v34)
      {
        goto LABEL_46;
      }
    }

    v42 = v41;
  }

LABEL_78:
  v48 = v36;
  v350 = v33;
  v351 = (v11 >> 5);
  if (v36 >= v33 || v36 + utf8_determineUTF8CharLength(*(v375 + v36)) != v41)
  {
    goto LABEL_90;
  }

  if (v41 < v350)
  {
    v41 = v41;
    while (1)
    {
      v49 = *(v375 + v41);
      v38 = v49 > 0x20;
      v50 = (1 << v49) & 0x100002600;
      if (v38 || v50 == 0)
      {
        break;
      }

      if (++v41 >= v34)
      {
        goto LABEL_89;
      }
    }
  }

  if (v41 == v350)
  {
LABEL_89:
    v321 = (v350 - v42);
    v52 = 1;
  }

  else
  {
LABEL_90:
    v52 = 0;
    v321 = 0;
  }

  if (paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v365))
  {
    v53 = 1;
  }

  else
  {
    v53 = v365 == 0;
  }

  if (!v53 && !strcmp(v365, "internal"))
  {
    v52 = 0;
  }

  v322 = v48;
  v320 = v42;
  v324 = v11;
  v335 = v18;
  log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "Markers IN");
  v54 = (v11 >> 5);
  if ((v11 >> 5))
  {
    v55 = v361;
    v56 = v52;
    while (1)
    {
      v57 = *(*a1 + 32);
      v58 = *v55;
      if (v58 == 0x4000)
      {
        log_OutText(v57, "FE_UNIXLIT", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", v55[1]);
      }

      else
      {
        log_OutText(v57, "FE_UNIXLIT", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v58);
      }

      v59 = *v55;
      if (*v55 > 33)
      {
        if (v59 != 34 && v59 != 40)
        {
          goto LABEL_110;
        }
      }

      else if (v59 != 7 && (v59 != 21 || !strcmp(*(v55 + 3), __s2)))
      {
        goto LABEL_110;
      }

      v56 = 0;
LABEL_110:
      v55 += 8;
      if (!--v54)
      {
        goto LABEL_113;
      }
    }
  }

  v56 = v52;
LABEL_113:
  v60 = unixlit_addLangStrs(a1, a1 + 121, a1 + 488, v367, &v368);
  if ((v60 & 0x80000000) != 0)
  {
    v7 = v60;
    v18 = v335;
    v19 = v361;
    v13 = v351;
    goto LABEL_597;
  }

  v61 = unixlit_addLangStrs(a1, a1 + 121, a1 + 488, v366, &v368);
  v19 = v361;
  v13 = v351;
  if ((v61 & 0x80000000) != 0)
  {
    goto LABEL_596;
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v343 = 0;
  v329 = 0;
  v66 = 0;
  v327 = 0;
  v67 = 0;
  v68 = v350;
  v319 = a1 + 121;
  __s = __s2;
  v325 = 2;
  v336 = 1;
  v337 = 0;
  v342 = v56;
  while (1)
  {
    v364 = 0;
    v363 = 0;
    v362 = 0;
    v69 = v352;
    if (v13 > v67)
    {
      break;
    }

    v96 = v64;
    v97 = v63;
LABEL_305:
    v341 = v97;
    v153 = v62;
    if (v62 >= v68)
    {
      goto LABEL_534;
    }

    v368 = 9999;
    v357 = v65;
    v359 = v374;
    UTF8Char = utf8_getUTF8Char(v375, v62, v374);
    if (v337)
    {
      v339 = v153;
      v346 = 0;
      v155 = 2;
      v327 = v374;
      goto LABEL_308;
    }

    v162 = (v375 + v153);
    v163 = *v162;
    if (v163 == 32 && v336 != 0)
    {
      v327 = 0;
LABEL_382:
      v19 = v361;
      goto LABEL_490;
    }

    v271 = UTF8Char;
    v165 = *(a1 + 240);
    v169 = v343 == 1 || v329 || v165 != 1 || v56 == 1;
    if (v165 && v169)
    {
      if (v163 == 32 && v165 == 1 && v56 == 1)
      {
        goto LABEL_427;
      }
    }

    else
    {
      v199 = v163 - 48 >= 0xA && (v163 & 0xFFFFFFDF) - 65 >= 0x1A;
      if (!v199 || v163 == 32)
      {
LABEL_427:
        v339 = v153;
        if (*(a1 + 238) == 1 && (v163 > 0x60 || v163 - 65 <= 0x19))
        {
          v73 = unixlit_addLangStrs(a1, v319, a1 + 488, v367, &v368);
          if ((v73 & 0x80000000) != 0)
          {
            goto LABEL_531;
          }

          v346 = 0;
          v327 = v374;
          v155 = 1;
        }

        else
        {
LABEL_430:
          v346 = 0;
          v327 = v374;
          v155 = 2;
        }

        v359 = v374;
LABEL_308:
        v19 = v361;
LABEL_309:
        if (*v359 != 32)
        {
          v156 = v96 + 1;
          goto LABEL_318;
        }

        if (v359[1] || v339 + v66 || v56)
        {
          v156 = 0;
          if (!HIDWORD(v343) || !v96)
          {
            v341 = 0;
            goto LABEL_318;
          }

          v40 = v96 == v341;
          v341 = 0;
          if (v40)
          {
            (*(a1[7] + 104))(a1[115], a1[116], "§", 2);
            v73 = unixlit_growMapCharStr(a1, &v370, &v369, v357, 2);
            if ((v73 & 0x80000000) != 0)
            {
              goto LABEL_531;
            }

            v157 = 0;
            v341 = 0;
            v156 = 0;
            v336 = 0;
            v158 = v367[3];
            v159 = v370;
            *(v370 + 8 * v357) = v367[3];
            *(v159 + 8 * (v357 + 1)) = v158;
            LODWORD(v66) = v66 + 2;
            v19 = v361;
            v160 = (v357 + 2);
LABEL_320:
            v161 = v359;
          }

          else
          {
LABEL_318:
            if (HIDWORD(v343))
            {
              v157 = 0;
              v160 = v357;
              goto LABEL_320;
            }

            v161 = v359;
            if (v325 == 1 && !v155 || (v157 = 1, !v325) && v155 == 1)
            {
              v332 = v155;
              v172 = v156;
              v73 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
              if ((v73 & 0x80000000) != 0)
              {
                goto LABEL_531;
              }

              v73 = unixlit_growMapCharStr(a1, &v370, &v369, v357, 1);
              if ((v73 & 0x80000000) != 0)
              {
                goto LABEL_531;
              }

              v157 = 1;
              *(v370 + 8 * v357 + 4) = 1;
              LODWORD(v66) = v66 + 1;
              v160 = (v357 + 1);
              v156 = v172;
              v161 = v359;
              v19 = v361;
              v155 = v332;
LABEL_360:
              v325 = v155;
LABEL_361:
              v357 = v160;
              v333 = v156;
              if (v337 || !(v343 | v56) || !v343 && *(v375 + v339) <= 0x20u)
              {
                if ((v157 & 1) != 0 || strlen(v161) == 1 || !strchr(v161, 32) && !strchr(v161, 95))
                {
                  goto LABEL_375;
                }

                if (*v161)
                {
                  v173 = 0;
                  v174 = 0;
                  do
                  {
                    v175 = v161[v173];
                    if (v175 == 95 || v175 == 32)
                    {
                      v161[v173] = 45;
                    }

                    v173 = ++v174;
                  }

                  while (strlen(v161) > v174);
LABEL_375:
                  if (*v161)
                  {
                    v176 = strlen(v161);
                    v177 = (*(a1[7] + 104))(a1[115], a1[116], v161, v176);
                    v271 = v177;
                    v178 = *v161;
                    if (v178 == 21)
                    {
                      if (v161[1])
                      {
                        goto LABEL_388;
                      }

                      v215 = strlen(v161);
                      v73 = unixlit_growMapCharStr(a1, &v370, &v369, v357, v215);
                      if ((v73 & 0x80000000) != 0)
                      {
                        goto LABEL_531;
                      }

                      if (v367[3] == 9999)
                      {
                        v216 = v370;
                        if (v357)
                        {
                          v217 = v357;
                          *(v370 + 8 * v357) = *(v370 + 8 * (v357 - 1));
                        }

                        else
                        {
                          v217 = 0;
                        }

                        v336 = 0;
                        v357 = (v357 + 1);
                        *(v216 + 8 * v217 + 4) = 1;
                        v13 = v351;
                        v153 = v339;
                        goto LABEL_525;
                      }

                      v336 = 0;
                      *(v370 + 8 * v357) = v367[3];
                      v357 = (v357 + 1);
                    }

                    else
                    {
                      if (v178 == 32 && !v161[1])
                      {
                        v179 = strlen(v161);
                        v73 = unixlit_growMapCharStr(a1, &v370, &v369, v357, v179);
                        if ((v73 & 0x80000000) != 0)
                        {
                          goto LABEL_531;
                        }

                        v180 = v370;
                        if (v357)
                        {
                          v181 = v357;
                          *(v370 + 8 * v357) = *(v370 + 8 * (v357 - 1));
                        }

                        else
                        {
                          v181 = 0;
                        }

                        v153 = v339;
                        v336 = 0;
                        v357 = (v357 + 1);
                        *(v180 + 8 * v181 + 4) = 1;
                        goto LABEL_526;
                      }

LABEL_388:
                      v182 = v368;
                      v183 = v367[3];
                      if (!v346 && v368 == 9999 && v367[3] == 9999)
                      {
                        v161 = v359;
                        v184 = strlen(v359);
                        v73 = unixlit_growMapCharStr(a1, &v370, &v369, v357, v184);
                        v153 = v339;
                        if ((v73 & 0x80000000) != 0)
                        {
                          goto LABEL_531;
                        }

                        v185 = v184;
                        v40 = v184 == 0;
                        v56 = v342;
                        if (v40)
                        {
                          v336 = 0;
                        }

                        else
                        {
                          v186 = v370;
                          v187 = v359;
                          LODWORD(v188) = v357;
                          do
                          {
                            v189 = *v187++;
                            if (v189 == 32)
                            {
                              *(v186 + 8 * v188 + 4) = 1;
                            }

                            v188 = (v188 + 1);
                            --v185;
                          }

                          while (v185);
                          v336 = 0;
                          v357 = v188;
                        }

                        goto LABEL_526;
                      }

                      v153 = v339;
                      if (v368 == 9999 && v367[3] == 9999)
                      {
                        v56 = v342;
                        if ((v177 & 0x80000000) != 0)
                        {
                          goto LABEL_532;
                        }

                        v336 = 0;
LABEL_525:
                        v161 = v359;
LABEL_526:
                        v233 = strlen(v161);
                        v66 = v66 + v233 - utf8_determineUTF8CharLength(*(v375 + v153));
                        v19 = v361;
                        goto LABEL_527;
                      }

                      v209 = strlen(v359);
                      v73 = unixlit_growMapCharStr(a1, &v370, &v369, v357, v209);
                      if ((v73 & 0x80000000) != 0)
                      {
                        goto LABEL_531;
                      }

                      if (!*v359)
                      {
                        v336 = 0;
                        v56 = v342;
                        goto LABEL_525;
                      }

                      v348 = v66;
                      v210 = 0;
                      v211 = 0;
                      v212 = v370;
                      if (v183 == 9999)
                      {
                        v213 = v182;
                      }

                      else
                      {
                        v213 = v183;
                      }

                      LOWORD(v214) = v357;
                      v161 = v359;
                      do
                      {
                        *(v212 + 8 * v214) = v213;
                        if (v161[v210] == 32)
                        {
                          *(v212 + 8 * v214 + 4) = 1;
                        }

                        v214 = v214 + 1;
                        v210 = ++v211;
                        v161 = v359;
                      }

                      while (strlen(v359) > v211);
                      v336 = 0;
                      v357 = v214;
                      v56 = v342;
                      LODWORD(v66) = v348;
                      v13 = v351;
                    }
                  }
                }

                v153 = v339;
                goto LABEL_526;
              }

              v153 = v339;
              if (!v329 || (v190 = *(v375 + v339), v191 = *(v375 + v339), v190 <= 122) && (v190 - 91) >= 6u && (v190 - 58) >= 7u && v191 >= 0xE && (v190 & 0xFFFFFFF0) != 0x20)
              {
                v192 = v327;
                v193 = strlen(v327);
                if (Utf8_LengthInUtf8chars(v327, v193) < 2)
                {
                  v198 = v357;
                }

                else
                {
                  v380 = 9668;
                  utf8_Utf16ToUtf8(&v380, 1u, 0, v374, 5u, &v373, 0);
                  v73 = (*(a1[7] + 104))(a1[115], a1[116], v374, v373);
                  if ((v73 & 0x80000000) != 0)
                  {
                    goto LABEL_531;
                  }

                  v73 = unixlit_growMapCharStr(a1, &v370, &v369, v357, v373);
                  if ((v73 & 0x80000000) != 0)
                  {
                    goto LABEL_531;
                  }

                  v194 = v373;
                  if (v373)
                  {
                    v195 = 0;
                    v196 = v370;
                    LODWORD(v197) = v357;
                    do
                    {
                      if (v374[v195] == 32)
                      {
                        *(v196 + 8 * v197 + 4) = 1;
                        v194 = v373;
                      }

                      v197 = (v197 + 1);
                      ++v195;
                    }

                    while (v194 > v195);
                    v198 = v197;
                    v192 = v327;
                  }

                  else
                  {
                    v192 = v327;
                    v198 = v357;
                  }

                  LODWORD(v66) = v66 + v194;
                }

                v221 = strlen(v192);
                v73 = (*(a1[7] + 104))(a1[115], a1[116], v192, v221);
                if ((v73 & 0x80000000) != 0)
                {
                  goto LABEL_531;
                }

                v222 = strlen(v192);
                v73 = unixlit_growMapCharStr(a1, &v370, &v369, v198, v222);
                if ((v73 & 0x80000000) != 0)
                {
                  goto LABEL_531;
                }

                v223 = v222;
                if (v222)
                {
                  v224 = v370;
                  v225 = v327;
                  v226 = v327;
                  do
                  {
                    v227 = *v226++;
                    if (v227 == 32)
                    {
                      *(v224 + 8 * v198 + 4) = 1;
                    }

                    v198 = (v198 + 1);
                    --v223;
                  }

                  while (v223);
                }

                else
                {
                  v225 = v327;
                }

                v228 = strlen(v225);
                v66 = v66 + v228 - utf8_determineUTF8CharLength(*(v375 + v339));
                v229 = strlen(v225);
                if (Utf8_LengthInUtf8chars(v225, v229) >= 2)
                {
                  v380 = 9668;
                  utf8_Utf16ToUtf8(&v380, 1u, 0, v374, 5u, &v373, 0);
                  v73 = (*(a1[7] + 104))(a1[115], a1[116], v374, v373);
                  if ((v73 & 0x80000000) != 0)
                  {
                    goto LABEL_531;
                  }

                  v73 = unixlit_growMapCharStr(a1, &v370, &v369, v198, v373);
                  if ((v73 & 0x80000000) != 0)
                  {
                    goto LABEL_531;
                  }

                  v230 = v373;
                  if (v373)
                  {
                    v231 = 0;
                    v232 = v370;
                    do
                    {
                      if (v374[v231] == 32)
                      {
                        *(v232 + 8 * v198 + 4) = 1;
                        v230 = v373;
                      }

                      v198 = (v198 + 1);
                      ++v231;
                    }

                    while (v230 > v231);
                  }

                  v19 = v361;
                  v153 = v339;
                  v336 = 0;
                  v66 = v66 + v230;
                  v357 = v198;
                  goto LABEL_527;
                }

                v336 = 0;
                v357 = v198;
                goto LABEL_522;
              }

              v66 = v66 - utf8_determineUTF8CharLength(v191);
              goto LABEL_527;
            }

            v160 = v357;
          }

          if (v155 < 2u || !*(a1 + 239) || *v161 == 32)
          {
            goto LABEL_360;
          }

          goto LABEL_361;
        }

        goto LABEL_489;
      }
    }

    if (HIDWORD(v343) && v163 == 194 && v162[1] == 167)
    {
      v339 = v153;
      goto LABEL_430;
    }

    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_532;
    }

    v363 = -1;
    v73 = unixlit_lookup(a1, "utfunixlit", v374, &v364, &v363, &v362);
    if ((v73 & 0x80000000) != 0)
    {
LABEL_531:
      v271 = v73;
      goto LABEL_532;
    }

    if (!v363)
    {
      goto LABEL_382;
    }

    v200 = v66;
    v201 = " ";
    if (HIDWORD(v343))
    {
      v201 = "-";
    }

    v347 = v201;
    v202 = *v364;
    if (**v364 == 226 && v202[1] == 150 && v202[2] == 145 && strcmp(__s, v371))
    {
      unixlit_replace_utf8char(v202, v347);
    }

    v339 = v153;
    v203 = strchr(v202, v362);
    v359 = v202;
    if (!v203)
    {
      goto LABEL_477;
    }

    v204 = v203;
    if (v203 != v202)
    {
      v205 = &v203[-utf8_determineUTF8CharLength(0xE2u)];
      if (v205 >= v359 && *v205 == 226 && v205[1] == 150 && v205[2] == 145 && strcmp(__s, v371))
      {
        unixlit_replace_utf8char(v205, v347);
        v204 += -utf8_determineUTF8CharLength(0xE2u) + 1;
      }
    }

    *v204 = 0;
    v327 = v204 + 1;
    v206 = strchr(v204 + 1, v362);
    if (!v206)
    {
      goto LABEL_477;
    }

    *v206 = 0;
    if (!*v359)
    {
      goto LABEL_488;
    }

    v207 = v206 + 1;
    if (v206[1])
    {
      v118 = unixlit_addLangStrs(a1, v319, a1 + 488, v207, &v368);
      if ((v118 & 0x80000000) != 0)
      {
        goto LABEL_607;
      }

      if (!strcmp(v207, "normal"))
      {
        v208 = 0;
      }

      else if (!strcmp(v207, "latin"))
      {
        v208 = 1;
      }

      else
      {
        v208 = 2;
      }
    }

    else
    {
LABEL_477:
      v207 = 0;
      v208 = 2;
    }

    if (*v359)
    {
      v346 = v207;
      if (!v327 || !*v327)
      {
        v327 = v359;
      }

      v19 = v361;
      LODWORD(v66) = v200;
      v13 = v351;
      v155 = v208;
      goto LABEL_309;
    }

LABEL_488:
    v19 = v361;
    LODWORD(v66) = v200;
    v13 = v351;
LABEL_489:
    v153 = v339;
LABEL_490:
    v66 = v66 - utf8_determineUTF8CharLength(*(v375 + v153));
    if (*(v375 + v153) == 32)
    {
      if (HIDWORD(v343) && v96 && v96 == v341)
      {
        v339 = v153;
        (*(a1[7] + 104))(a1[115], a1[116], "§", 2);
        v73 = unixlit_growMapCharStr(a1, &v370, &v369, v357, 2);
        if ((v73 & 0x80000000) != 0)
        {
          goto LABEL_531;
        }

        v218 = v367[3];
        v219 = v370;
        *(v370 + 8 * v357) = v367[3];
        *(v219 + 8 * (v357 + 1)) = v218;
        (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
        v73 = unixlit_growMapCharStr(a1, &v370, &v369, (v357 + 2), 1);
        if ((v73 & 0x80000000) != 0)
        {
          goto LABEL_531;
        }

        v336 = 0;
        v333 = 0;
        v341 = 0;
        v220 = v370 + 8 * (v357 + 2);
        *v220 = v218;
        *(v220 + 4) = 1;
        v357 = (v357 + 3);
        v66 = (v66 + 3);
LABEL_522:
        v19 = v361;
        v153 = v339;
        goto LABEL_527;
      }

      v333 = 0;
      v341 = 0;
    }

    else
    {
      v333 = v96 + 1;
      ++v341;
    }

LABEL_527:
    v234 = utf8_determineUTF8CharLength(*(v375 + v153));
    v62 = (v153 + v234);
    v68 = v350;
    v63 = v341;
    v65 = v357;
    v64 = v333;
    if ((v153 + v234) > v350)
    {
LABEL_534:
      for (i = v65; v13 > v67; ++v67)
      {
        *(v19 + 32 * v67 + 12) = (*(v19 + 32 * v67 + 12) + v66 + HIDWORD(v372)) & ~((*(v19 + 32 * v67 + 12) + v66 + HIDWORD(v372)) >> 31);
      }

      v61 = (*(a1[7] + 104))(a1[115], a1[116], "", 1);
      if ((v61 & 0x80000000) == 0)
      {
        v61 = unixlit_growMapCharStr(a1, &v370, &v369, i, 1);
        if ((v61 & 0x80000000) == 0)
        {
          v61 = (*(a1[7] + 96))(a1[111], a1[112], v378);
          if ((v61 & 0x80000000) == 0)
          {
            v236 = i + 1;
            v349 = v66;
            *(v19 + 16) += v66;
            if (!v236)
            {
              goto LABEL_653;
            }

            v237 = 0;
            v238 = v370;
            do
            {
              v239 = v237;
              v240 = v237;
              v241 = (v237 + 1);
              v242 = v236;
              if (v241 > v236)
              {
                v242 = v241;
              }

              v243 = 8 * v240;
              v244 = (v238 + 4 + 8 * v239);
              v245 = v240;
              while (1)
              {
                v246 = *v244;
                v244 += 2;
                if (v246 == 1)
                {
                  break;
                }

                if (++v245 >= v236)
                {
                  goto LABEL_548;
                }
              }

              v242 = v245;
LABEL_548:
              v247 = v236;
              if ((v242 + 1) > v236)
              {
                v247 = v242 + 1;
              }

              v237 = v242;
              while (++v237 < v236)
              {
                if (*(v238 + 8 * v237 + 4) != 1)
                {
                  goto LABEL_555;
                }
              }

              v237 = v247;
LABEL_555:
              if (v240 < v242 && v240 < v236)
              {
                v248 = (v238 + v243);
                v249 = v240 + 1;
                do
                {
                  v251 = *v248;
                  v248 += 4;
                  v250 = v251;
                  if (v251)
                  {
                    v252 = v249 >= v242;
                  }

                  else
                  {
                    v252 = 1;
                  }
                }

                while (!v252 && v249++ < v236);
                if (!v250 && v240 < v237)
                {
                  v254 = 0;
                  v255 = v237 - v240;
                  v256 = vdupq_n_s64(v255 - 1);
                  v257 = (v238 + 32 + v243);
                  do
                  {
                    v258 = vdupq_n_s64(v254);
                    v259 = vmovn_s64(vcgeq_u64(v256, vorrq_s8(v258, xmmword_1C378AF00)));
                    if (vuzp1_s8(vuzp1_s16(v259, 6), 6).u8[0])
                    {
                      *(v257 - 16) = 0;
                    }

                    if (vuzp1_s8(vuzp1_s16(v259, 6), 6).i8[1])
                    {
                      *(v257 - 12) = 0;
                    }

                    if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v256, vorrq_s8(v258, xmmword_1C378AEF0)))), 6).i8[2])
                    {
                      *(v257 - 8) = 0;
                      *(v257 - 4) = 0;
                    }

                    v260 = vmovn_s64(vcgeq_u64(v256, vorrq_s8(v258, xmmword_1C37BDD90)));
                    if (vuzp1_s8(6, vuzp1_s16(v260, 6)).i32[1])
                    {
                      *v257 = 0;
                    }

                    if (vuzp1_s8(6, vuzp1_s16(v260, 6)).i8[5])
                    {
                      v257[4] = 0;
                    }

                    if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v256, vorrq_s8(v258, xmmword_1C37BDD80))))).i8[6])
                    {
                      v257[8] = 0;
                      v257[12] = 0;
                    }

                    v254 += 8;
                    v257 += 32;
                  }

                  while (((v255 + 7) & 0xFFFFFFFFFFFFFFF8) != v254);
                }
              }
            }

            while (v237 < v236);
            v261 = v370;
            v262 = v236;
            do
            {
              if (*v261 == 9999)
              {
                *v261 = 1;
              }

              v261 += 4;
              --v262;
            }

            while (v262);
            LOWORD(v263) = 0;
            v264 = 0;
            while (1)
            {
              v263 = v263;
              v265 = *(v370 + 8 * v263);
              if (v265 != 9999)
              {
                break;
              }

              v266 = v263 == 0;
              LOWORD(v263) = v263 + 1;
LABEL_594:
              v264 += v266;
              if (v263 >= v236)
              {
                goto LABEL_612;
              }
            }

            v267 = (v370 + 8 + 8 * v263);
            while (++v263 < v236)
            {
              v268 = *v267;
              v267 += 4;
              if (v265 != v268)
              {
                v266 = 1;
                goto LABEL_594;
              }
            }

            ++v264;
LABEL_612:
            v360 = v264;
            if (v264)
            {
              v272 = 0;
              v273 = (v370 + 4);
              do
              {
                if (*v273 == 1)
                {
                  v274 = "sp";
                }

                else
                {
                  v274 = "  ";
                }

                log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "LANGMAP[%u] = %s [%s]", v272++, v274, *(a1[121] + 16 * *(v273 - 2)));
                v273 += 2;
              }

              while (v236 != v272);
              v275 = v351 + v360;
              v276 = heap_Realloc(*(*a1 + 8), v361, (32 * (v351 + v360)) | 1u);
              if (!v276)
              {
                log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0);
                goto LABEL_680;
              }

              v277 = v276;
              bzero((v276 + v323), ((32 * v275) | 1) - v323);
              v278 = 0;
              v279 = 0;
              v280 = 0;
              v281 = 0;
              v282 = 0;
              v283 = v370;
              do
              {
                v284 = (v283 + 8 * v280);
                v285 = (v280 + 1);
                if (v285 <= v236)
                {
                  LOWORD(v285) = v236;
                }

                while (++v280 < v236)
                {
                  if (*v284 != *(v283 + 8 * v280))
                  {
                    goto LABEL_626;
                  }
                }

                v280 = v285;
LABEL_626:
                v286 = v282;
                if (v351 > v282)
                {
                  v287 = (v277 + 32 * (v282 + v281));
                  while (v287[3] <= (*(v277 + 12) + v278))
                  {
                    if (*v287 == 34)
                    {
                      v279 = v287;
                    }

                    if (*v287 == 21)
                    {
                      v279 = 0;
                    }

                    ++v286;
                    v287 += 8;
                    if (v351 <= v286)
                    {
                      v282 = v286;
                      v286 = v286;
                      goto LABEL_636;
                    }
                  }

                  v282 = v286;
                }

LABEL_636:
                if (v351 != v286 && v282 != (v324 >> 5))
                {
                  v288 = v286 + v281 + ((v324 >> 5) - v282);
                  v289 = ((v324 >> 5) - v282) - 1;
                  do
                  {
                    v290 = (v277 + 32 * v288);
                    v291 = *(v290 - 1);
                    *v290 = *(v290 - 2);
                    v290[1] = v291;
                    --v288;
                    LODWORD(v290) = v289--;
                  }

                  while (v290);
                }

                v292 = v277 + 32 * (v286 + v281);
                v293 = *v284;
                if (v293 == 9999)
                {
                  v294 = (*v319 + 24);
                }

                else
                {
                  v294 = (*v319 + 16 * v293 + 8);
                }

                *(v292 + 24) = *v294;
                *v292 = 36;
                v295 = *(v277 + 12) + v278;
                *(v292 + 8) = 0;
                *(v292 + 12) = v295;
                if (v279)
                {
                  v296 = v279[3];
                  v297 = *(v277 + 12);
                  v298 = (v297 + v278);
                  v299 = -v297;
                  v300 = -1;
                  do
                  {
                    ++v300;
                    if (*(v283 + 8 * (v296 + v299++) + 4))
                    {
                      v302 = v300 + v296 >= v298;
                    }

                    else
                    {
                      v302 = 1;
                    }
                  }

                  while (!v302);
                  v279[3] = v296 + v300;
                }

                *(v292 + 16) = 0;
                ++v281;
                v278 = v280;
              }

              while (v280 < v236);
              v361 = v277;
            }

            else
            {
LABEL_653:
              v275 = v351;
            }

            marker_sort(v361 + 32, (v275 - 1));
            v303 = (*(a1[7] + 104))(a1[117], a1[118], v361, 32 * v275);
            if ((v303 & 0x80000000) != 0)
            {
              goto LABEL_679;
            }

            log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "Markers OUT");
            if (v275)
            {
              v304 = 0;
              v305 = v370;
              do
              {
                v306 = (v361 + 32 * v304);
                v307 = *v306;
                v308 = *(*a1 + 32);
                if (v307 == 36)
                {
                  v309 = *(v305 + 8 * (v306[3] - *(v361 + 12)));
                  if (v309 == 9999)
                  {
                    v310 = (*v319 + 16);
                  }

                  else
                  {
                    v310 = (*v319 + 16 * v309);
                  }

                  log_OutText(v308, "FE_UNIXLIT", 5, 0, "Marker [type=SET_LANG(%s)] Ref (%u,%u) Cur(%u,%u)", *v310);
                }

                else if (v307 == 0x4000)
                {
                  log_OutText(v308, "FE_UNIXLIT", 5, 0, "Marker[type=SYNC] Ref (%u,%u) Cur(%u,%u)", v306[1]);
                }

                else
                {
                  log_OutText(v308, "FE_UNIXLIT", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v307);
                }

                ++v304;
              }

              while (v275 > v304);
            }

            v303 = (*(a1[7] + 96))(a1[113], a1[114], v376);
            if ((v303 & 0x80000000) != 0)
            {
LABEL_679:
              v7 = v303;
LABEL_680:
              v13 = v351;
              goto LABEL_533;
            }

            v377 = 0;
            if (paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v365))
            {
              v311 = 1;
            }

            else
            {
              v311 = v365 == 0;
            }

            if (!v311 && !strcmp(v365, "internal") || !v342 || !*(v361 + 16))
            {
LABEL_678:
              LODWORD(v372) = v372 + v349;
              v303 = (*(a1[6] + 104))(a1[4], a1[5]);
              goto LABEL_679;
            }

            v312 = heap_Calloc(*(*a1 + 8), 1, 32);
            if (!v312)
            {
              goto LABEL_682;
            }

            v313 = v312;
            *v312 = 21;
            *(v312 + 24) = v371;
            v314 = HIDWORD(v372) + v352;
            *(v312 + 4) = (HIDWORD(v372) + v352 + v322);
            *(v312 + 12) = v314 & ~(v314 >> 31);
            *(v312 + 16) = 0;
            v315 = (*(a1[7] + 104))(a1[117], a1[118], v312, 32);
            heap_Free(*(*a1 + 8), v313);
            if ((v315 & 0x80000000) != 0)
            {
              v7 = v315;
              goto LABEL_684;
            }

            v316 = heap_Calloc(*(*a1 + 8), 1, 32);
            if (v316)
            {
              v317 = v316;
              *v316 = 21;
              *(v316 + 24) = __s2;
              v318 = v321 + v320 + v352 + HIDWORD(v372);
              *(v316 + 4) = v318;
              *(v316 + 8) = 0;
              *(v316 + 12) = (v318 + v349) & ~((v318 + v349) >> 31);
              v7 = (*(a1[7] + 104))(a1[117], a1[118], v316, 32);
              heap_Free(*(*a1 + 8), v317);
              if ((v7 & 0x80000000) == 0)
              {
                goto LABEL_678;
              }
            }

            else
            {
LABEL_682:
              log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0);
            }

LABEL_684:
            v13 = v351;
            v18 = v335;
            v19 = v361;
            goto LABEL_597;
          }
        }
      }

LABEL_596:
      v7 = v61;
      v18 = v335;
      goto LABEL_597;
    }
  }

  while (1)
  {
    v70 = v19 + 32 * v67;
    v71 = *(v70 + 12);
    v340 = v62;
    if (v62 != (v71 - v69))
    {
      v96 = v64;
      v97 = v63;
      v56 = v342;
      goto LABEL_305;
    }

    v358 = v62;
    v338 = v67;
    if (HIDWORD(v343) && v64 && v64 == v63)
    {
      v72 = v65;
      (*(a1[7] + 104))(a1[115], a1[116], "§", 2);
      v73 = unixlit_growMapCharStr(a1, &v370, &v369, v72, 2);
      if ((v73 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      v336 = 0;
      v74 = v367[3];
      v75 = v370;
      *(v370 + 8 * v72) = v367[3];
      *(v75 + 8 * (v72 + 1)) = v74;
      v66 = (v66 + 2);
      v71 = *(v70 + 12);
      v62 = v358;
      v19 = v361;
      v69 = v352;
      v68 = v350;
      v65 = (v72 + 2);
    }

    *(v70 + 12) = (v71 + v66 + HIDWORD(v372)) & ~((v71 + v66 + HIDWORD(v372)) >> 31);
    v76 = *v70;
    if (*v70 != 36)
    {
      if (v76 != 21)
      {
        if (v76 != 8 || v343 != 0 || v62 == 0)
        {
          goto LABEL_148;
        }

        goto LABEL_144;
      }

      v77 = *(v70 + 24);
      __s = v77;
      if (v343 == 1)
      {
        v344 = v66;
        v78 = v65;
        v79 = !strcmp(v77, v371) || !strncmp(v77, "spell:", 6uLL) || !strcmp(v77, "alphanumeric") || !strcmp(v77, "digits") || strcmp(v77, "characters") == 0;
        LODWORD(v343) = v79;
        v69 = v352;
        v68 = v350;
        v65 = v78;
        v66 = v344;
        v62 = v358;
      }

      else
      {
        LODWORD(v343) = 0;
      }
    }

    if (!v62)
    {
      goto LABEL_148;
    }

LABEL_144:
    if (*(v375 + v62 - 1) != 32)
    {
      v82 = v65;
      v73 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v73 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      v73 = unixlit_growMapCharStr(a1, &v370, &v369, v82, 1);
      if ((v73 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      *(v370 + 8 * v82 + 4) = 1;
      ++*(v70 + 12);
      v66 = (v66 + 1);
      v76 = *v70;
      v62 = v358;
      v19 = v361;
      v69 = v352;
      v68 = v350;
      v65 = (v82 + 1);
    }

LABEL_148:
    if (v76 > 33)
    {
      v353 = v65;
      if (v76 == 34)
      {
        v93 = strstr(*(v70 + 24), "\x14EXTCLC");
        v62 = v358;
        v68 = v350;
        v94 = v337;
        if (v93)
        {
          v94 = 1;
        }

        v337 = v94;
        HIDWORD(v343) = 1;
      }

      else if (v76 == 36)
      {
        v86 = v66;
        v87 = strlen(*(v70 + 24));
        v88 = heap_Alloc(*(*a1 + 8), (v87 + 1));
        if (!v88)
        {
          log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 30000, 0);
          v271 = 2321555466;
          goto LABEL_532;
        }

        v89 = v88;
        v90 = **(v70 + 24);
        if (v90)
        {
          v91 = 0;
          v92 = 0;
          do
          {
            v89[v91] = ssft_tolower(v90);
            v91 = ++v92;
            v90 = *(*(v70 + 24) + v92);
          }

          while (v90);
        }

        else
        {
          v91 = 0;
        }

        v89[v91] = 0;
        if (!strcmp(v89, "normal"))
        {
          v367[3] = 9999;
        }

        else
        {
          v95 = unixlit_addLangStrs(a1, v319, a1 + 488, v89, &v367[3]);
          if ((v95 & 0x80000000) != 0)
          {
            v271 = v95;
            heap_Free(*(*a1 + 8), v89);
            goto LABEL_532;
          }
        }

        heap_Free(*(*a1 + 8), v89);
        *v70 = 0x4000;
        *(v70 + 16) = 0;
        *(v70 + 8) = 0;
        v62 = v358;
        v19 = v361;
        v69 = v352;
        v56 = v342;
        v66 = v86;
        v68 = v350;
LABEL_188:
        v65 = v353;
        goto LABEL_189;
      }

      v69 = v352;
      v56 = v342;
      goto LABEL_188;
    }

    if (v76 != 7)
    {
      if (v76 != 21)
      {
        goto LABEL_170;
      }

      v83 = v65;
      v84 = *(v70 + 24);
      if (!strcmp(v84, v371) || !strncmp(v84, "spell:", 6uLL) || !strcmp(v84, "alphanumeric") || !strcmp(v84, "digits") || !strcmp(v84, "characters"))
      {
        v56 = v342;
        if (!strcmp(v84, "spell:alphanumeric") || !strcmp(v84, "alphanumeric") || !strcmp(v84, "digits"))
        {
          HIDWORD(v343) = 0;
          v337 = 0;
          v329 = 1;
        }

        else
        {
          HIDWORD(v343) = 0;
          v337 = 0;
          v329 = strcmp(v84, "characters") == 0;
        }

        LODWORD(v343) = 1;
      }

      else
      {
        v337 = 0;
        v56 = v342;
        v85 = v329;
        if (v343)
        {
          v85 = 0;
        }

        v329 = v85;
        v343 = 0;
      }

      v19 = v361;
      v69 = v352;
      v68 = v350;
      v65 = v83;
      v62 = v358;
      goto LABEL_189;
    }

    if (*(v70 + 24) != 43)
    {
LABEL_170:
      v56 = v342;
      goto LABEL_189;
    }

    if (v62 && *(v375 + v62 - 1) != 32)
    {
      v98 = v65;
      v73 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v73 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      v73 = unixlit_growMapCharStr(a1, &v370, &v369, v98, 1);
      if ((v73 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      *(v370 + 8 * v98 + 4) = 1;
      ++*(v70 + 12);
      v345 = v66 + 1;
      v62 = v358;
      v19 = v361;
      v69 = v352;
      v68 = v350;
      v65 = (v98 + 1);
    }

    else
    {
      v345 = v66;
    }

    v99 = 0;
    v100 = 0;
    ++v67;
    v101 = 1;
    v328 = v367[3];
    v102 = v62;
LABEL_195:
    v103 = v102;
    v104 = v102;
    v326 = v102 < v68;
    while (1)
    {
      if (v13 <= v67)
      {
        v40 = v13 == v67;
        v111 = v40;
        if (!v40 || v102 >= v68)
        {
          goto LABEL_252;
        }

        v13 = v351;
        goto LABEL_215;
      }

      v105 = v19 + 32 * v67;
      if (*v105 == 7 && v103 >= (*(v105 + 12) - v69))
      {
        break;
      }

      v106 = (v19 + 32 * v67);
      v107 = v106 + 3;
      for (j = v106[3]; v102 == (j - v69); j = v106[3])
      {
        v109 = *v106;
        if (*v106 == 21 || v109 == 36)
        {
          *v106 = 0x4000;
          v106[4] = 0;
          v106[2] = 0;
        }

        else if (v109 == 7)
        {
          break;
        }

        *v107 = (j + v345 + HIDWORD(v372)) & ~((j + v345 + HIDWORD(v372)) >> 31);
        if (v13 <= ++v67)
        {
          break;
        }

        v110 = v19 + 32 * v67;
        if (v102 == (*(v110 + 12) - v69) && *v110 == 7)
        {
          v100 = 1;
        }

        v106 = (v19 + 32 * v67);
        v107 = v106 + 3;
      }

LABEL_215:
      v112 = v375 + v104;
      v113 = *(v375 + v104);
      if (v100)
      {
        v114 = 1;
      }

      else
      {
        v114 = v113 == 32;
      }

      if (!v114)
      {
        v99 = 0;
      }

      if ((v113 == 95 || v113 == 35) && v102 != v62)
      {
        v115 = *(v112 - 1);
        v116 = (v115 - 32) > 0x3F || ((1 << (v115 - 32)) & 0x8000000000000009) == 0;
        if (v116 && (v102 < 4u || v115 != 92 || (*(v112 - 3) | 0x20) != 0x74 || *(v375 + v102 - 4) != 92))
        {
          if (v113 == 35)
          {
            v99 = 1;
          }

          if (v101)
          {
            v354 = v65;
          }

          else
          {
            v117 = v65;
            v118 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
            if ((v118 & 0x80000000) != 0)
            {
              goto LABEL_607;
            }

            v118 = unixlit_growMapCharStr(a1, &v370, &v369, v117, 1);
            if ((v118 & 0x80000000) != 0)
            {
              goto LABEL_607;
            }

            v119 = v370 + 8 * v117;
            *v119 = v328;
            *(v119 + 4) = 1;
            v354 = (v117 + 1);
            ++v345;
            v13 = v351;
          }

          v380 = 167;
          utf8_Utf16ToUtf8(&v380, 1u, 0, v374, 5u, &v373, 0);
          v73 = (*(a1[7] + 104))(a1[115], a1[116], v374, v373);
          if ((v73 & 0x80000000) != 0)
          {
            goto LABEL_531;
          }

          v73 = unixlit_growMapCharStr(a1, &v370, &v369, v354, v373);
          if ((v73 & 0x80000000) != 0)
          {
            goto LABEL_531;
          }

          v120 = v373;
          if (v373)
          {
            v121 = 0;
            v122 = v370;
            v62 = v358;
            v19 = v361;
            v69 = v352;
            v68 = v350;
            LOWORD(v65) = v354;
            v103 = v102;
            do
            {
              *(v122 + 8 * v65) = v328;
              if (v374[v121] == 32)
              {
                *(v122 + 8 * v65 + 4) = 1;
                v120 = v373;
              }

              v65 = v65 + 1;
              ++v121;
            }

            while (v120 > v121);
          }

          else
          {
            v62 = v358;
            v19 = v361;
            v69 = v352;
            v68 = v350;
            v65 = v354;
            v103 = v102;
          }

          v336 = 0;
          v101 = 0;
          v345 += v120;
          v104 = v102;
        }
      }

      if (!v100)
      {
        v123 = v104;
        v355 = v65;
        v330 = v101;
        v345 -= utf8_determineUTF8CharLength(*(v375 + v104));
        v124 = utf8_determineUTF8CharLength(*(v375 + v123));
        v101 = v330;
        v65 = v355;
        v62 = v358;
        v68 = v350;
        v13 = v351;
        v69 = v352;
        v102 = (v102 + v124);
        goto LABEL_195;
      }
    }

    v111 = v13 == v67;
    v326 = v102 < v68;
LABEL_252:
    v125 = v102 == v68 && v111;
    if (v351 <= v67 && !v125)
    {
      v13 = v351;
      v56 = v342;
      v66 = v345;
      goto LABEL_189;
    }

    v331 = v101;
    v356 = v65;
    v126 = v102 - v340;
    v127 = heap_Alloc(*(*a1 + 8), v126 + 1);
    if (!v127)
    {
      goto LABEL_609;
    }

    v128 = v127;
    memcpy(v127, (v375 + v358), v126);
    v128[v126] = 0;
    *v70 = 34;
    *(v70 + 24) = v128;
    *(v335 + 8 * v338) = v128;
    if (v99)
    {
      v19 = v361;
      v56 = v342;
      v68 = v350;
      v129 = v350;
      v65 = v356;
      goto LABEL_276;
    }

    v56 = v342;
    if (!v331)
    {
      v118 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v118 & 0x80000000) == 0)
      {
        v118 = unixlit_growMapCharStr(a1, &v370, &v369, v356, 1);
        if ((v118 & 0x80000000) == 0)
        {
          v131 = v370 + 8 * v356;
          *v131 = v328;
          *(v131 + 4) = 1;
          v130 = (v356 + 1);
          ++v345;
          v56 = v342;
          goto LABEL_266;
        }
      }

LABEL_607:
      v271 = v118;
      goto LABEL_610;
    }

    v130 = v356;
LABEL_266:
    v380 = 167;
    utf8_Utf16ToUtf8(&v380, 1u, 0, v374, 5u, &v373, 0);
    v118 = (*(a1[7] + 104))(a1[115], a1[116], v374, v373);
    if ((v118 & 0x80000000) != 0)
    {
      goto LABEL_607;
    }

    v118 = unixlit_growMapCharStr(a1, &v370, &v369, v130, v373);
    if ((v118 & 0x80000000) != 0)
    {
      goto LABEL_607;
    }

    v132 = v373;
    v68 = v350;
    v129 = v350;
    if (v373)
    {
      v133 = 0;
      v134 = v370;
      v19 = v361;
      do
      {
        *(v134 + 8 * v130) = v328;
        if (v374[v133] == 32)
        {
          *(v134 + 8 * v130 + 4) = 1;
          v132 = v373;
        }

        v130 = v130 + 1;
        ++v133;
      }

      while (v132 > v133);
    }

    else
    {
      v19 = v361;
    }

    v336 = 0;
    v345 += v132;
    v65 = v130;
LABEL_276:
    if (!v111)
    {
      break;
    }

LABEL_279:
    if (v326)
    {
      v141 = v102;
      v142 = *(v375 + v102) != 32;
      v13 = v351;
      while (*(v375 + v141) == 32)
      {
        if (v129 == ++v141)
        {
          v143 = v68;
          goto LABEL_286;
        }
      }

      v143 = v141;
LABEL_286:
      v144 = v143;
    }

    else
    {
      v142 = 1;
      v143 = v102;
      v13 = v351;
      v144 = v102;
    }

    v145 = (v144 + 1);
    if (v145 != *(v19 + 16) || ((v146 = *(v375 + v143), v38 = v146 > 0x3F, v147 = (1 << v146) & 0x8800400200000000, !v38) ? (v148 = v147 == 0) : (v148 = 1), v148))
    {
      if (v142)
      {
        v152 = v65;
        v73 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
        if ((v73 & 0x80000000) != 0)
        {
          goto LABEL_531;
        }

        v73 = unixlit_growMapCharStr(a1, &v370, &v369, v152, 1);
        if ((v73 & 0x80000000) != 0)
        {
          goto LABEL_531;
        }

        *(v370 + 8 * v152 + 4) = 1;
        v62 = v102;
        v66 = v345 + 1;
        v19 = v361;
        v69 = v352;
        v68 = v350;
        v65 = (v152 + 1);
      }

      else
      {
        v62 = v102;
        v69 = v352;
        v66 = v345;
      }
    }

    else
    {
      v149 = v65;
      utf8_getUTF8Char(v375, v144, v374);
      v73 = (*(a1[7] + 104))(a1[115], a1[116], v374, 1);
      if ((v73 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      v73 = unixlit_growMapCharStr(a1, &v370, &v369, v149, 1);
      v66 = v345;
      if ((v73 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      v69 = v352;
      v68 = v350;
      v62 = v145;
      if (v374[0] == 32)
      {
        *(v370 + 8 * v149 + 4) = 1;
      }

      v65 = (v149 + 1);
      v19 = v361;
      v150 = v361 + 32 * v67;
      v151 = *(v150 + 12) + 1;
      for (*(v150 + 12) = v151; v13 > v67; ++v67)
      {
        *(v361 + 32 * v67 + 12) = v151;
      }
    }

LABEL_189:
    v63 = 0;
    v64 = 0;
    v96 = 0;
    v97 = 0;
    if (v13 <= ++v67)
    {
      goto LABEL_305;
    }
  }

  v135 = v65;
  v136 = strlen(__s);
  v137 = heap_Alloc(*(*a1 + 8), (v136 + 1));
  if (v137)
  {
    v138 = strcpy(v137, __s);
    v19 = v361;
    v139 = v361 + 32 * v67;
    *v139 = 21;
    *(v139 + 24) = v138;
    *(v335 + 8 * v67) = v138;
    v140 = *(v139 + 12) + v345 + HIDWORD(v372);
    *(v139 + 12) = v140 & ~(v140 >> 31);
    v68 = v350;
    v129 = v350;
    v65 = v135;
    goto LABEL_279;
  }

LABEL_609:
  log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0);
  v271 = 2321555466;
LABEL_610:
  v13 = v351;
LABEL_532:
  v7 = v271;
LABEL_533:
  v18 = v335;
  v19 = v361;
LABEL_597:
  heap_Free(*(*a1 + 8), v19);
  v9 = v7;
LABEL_598:
  if (v370)
  {
    heap_Free(*(*a1 + 8), v370);
  }

  if (v18)
  {
    if (v13 >= 2)
    {
      v269 = (v18 + 8);
      v270 = v13 - 1;
      do
      {
        if (*v269)
        {
          heap_Free(*(*a1 + 8), *v269);
        }

        ++v269;
        --v270;
      }

      while (v270);
    }

    heap_Free(*(*a1 + 8), v18);
  }

  return v9;
}