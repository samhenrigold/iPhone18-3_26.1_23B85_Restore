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
  v17 = *MEMORY[0x277D85DE8];
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
    v11 = *(v10 + 8);
    v12[11] = *(a2 + 48);
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
  if (*v4)
  {
    if (*(a1 + 28) < v4[1])
    {
      log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT Match invalidated as start position %d is <= key to position %d");
      return 1;
    }

    v7 = *(*v1 + 88);
    LODWORD(__src[0]) = 0;
    log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT non-overlapping longestMatch found...validating...");
    v8 = validateCurrentMatch(v1[4], *v1, v1[1], v1[2], v1[3], v7, __src);
    if (v8 < 0)
    {
LABEL_31:
      *(v1 + 12) = v8;
      return 1;
    }

    v9 = v1[4];
    if (LODWORD(__src[0]) == 1)
    {
      v8 = FERuntimeData_AddMatch(v9, v1[1], *v1);
      if (v8 < 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      log_OutText(*(*v9 + 32), v9[23], 6, 0, "CALLOUT token invalidated");
    }

    *v1[1] = 0;
    *(v1 + 11) = 0;
    *(*v1 + 40) = 0;
    if (*v4 && v4[1] - *v4 >= *(a1 + 32) - *(a1 + 28))
    {
      return 1;
    }
  }

  v35 = 0u;
  v36 = 0u;
  memset(__src, 0, sizeof(__src));
  v32 = 1;
  log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - Longest Match Found %d,%d (num submatches=%d)...validating...", *(a1 + 28), *(a1 + 32), *(a1 + 36) - 1);
  v10 = *(a1 + 28);
  v11 = *(a1 + 32);
  v33[0] = v10;
  v33[1] = v11;
  if (*(v1 + 26) > v10 || *(v1 + 27) < v11)
  {
    log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - this match is out of domain...", v30, v31);
    return 1;
  }

  v12 = v1[4];
  if (*(v12 + 960) == 1 && blockedByBtok(v12, v10, v11) == 1)
  {
    log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - blocked by prior btok...", v30, v31);
    return 1;
  }

  v13 = *(a1 + 36);
  v14 = v13 - 1;
  v15 = *v1;
  v16 = *(*v1 + 88);
  *(&v35 + 1) = v16;
  DWORD2(v36) = *(v15 + 104);
  BYTE2(v35) = v13 - 1;
  WORD4(__src[2]) = 0;
  if (v13 != 1 && v13 >= 2)
  {
    v17 = 0;
    v18 = 2 * v13;
    v19 = *(a1 + 8);
    v20 = 2;
    do
    {
      v21 = (v19 + 4 * v20);
      v22 = &__src[2] + 2 * v17 + 5;
      *v22 = *v21;
      v22[1] = v21[1];
      ++v17;
      v20 += 2;
    }

    while (v18 > v20);
  }

  v8 = validateCurrentMatch(v1[4], __src, v33, v1[2], v1[3], v16, &v32);
  if (v8 < 0)
  {
    goto LABEL_31;
  }

  v23 = v32;
  if (v32 == 1)
  {
    *(v3 + 40) = WORD4(__src[2]);
    cstdlib_memcpy(v3, __src, 0x28uLL);
    v23 = v32;
  }

  if (!v23 && WORD4(__src[2]))
  {
    WORD4(__src[2]) = 0;
LABEL_39:
    log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - INVALIDATING this longest match...");
    *v1[1] = 0;
    *(v1 + 11) = 0;
    *(*v1 + 40) = 0;
    return 1;
  }

  if (!v23)
  {
    goto LABEL_39;
  }

  log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - VALIDATING longest match. saving...");
  *v4 = *(a1 + 28);
  v4[1] = *(a1 + 32);
  *(v1 + 11) = 1;
  if (v14)
  {
    *(v3 + 82) = v14;
    if (*(a1 + 36) >= 2)
    {
      v25 = 0;
      v26 = 2;
      do
      {
        v27 = (*(a1 + 8) + 4 * v26);
        v28 = *v27;
        v29 = (v3 + 42 + 4 * v25);
        *v29 = v28;
        LOWORD(v27) = v27[1];
        v29[1] = v27;
        log_OutText(*(*v1[4] + 32), *(v1[4] + 184), 6, 0, "CALLOUT - setting longest match submatch[%d] = %d,%d", v25++, v28, v27);
        v26 += 2;
      }

      while (2 * *(a1 + 36) > v26);
    }
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
                v14 = &off_287EECB60;
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

uint64_t textnormalizer_DoDepes(uint64_t a1, const char *a2, unsigned int a3, int a4, _DWORD *a5, const char **a6)
{
  v7 = a5;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v71 = 0;
  *a5 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_%s(%s)", a2, **(a1 + 320));
  }

  v12 = *(a1 + 320);
  if (!*v12 || (v13 = cstdlib_strcmp(*v12, "NULL"), v12 = *(a1 + 320), !v13))
  {
LABEL_15:
    v22 = add2StringV2(a1, *(v12 + 8), "");
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }

    goto LABEL_92;
  }

  if (!cstdlib_strcmp(*v12, ""))
  {
    v12 = *(a1 + 320);
    goto LABEL_15;
  }

  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES IN (%s)(running len=%d)", **(a1 + 320), *(*(a1 + 320) + 32));
  }

  v14 = cstdlib_strlen(**(a1 + 320));
  v15 = Utf8_LengthInUtf8chars(**(a1 + 320), v14);
  v16 = (*(*(a1 + 112) + 120))(*(a1 + 120), *(a1 + 128), 0, **(a1 + 320), v14);
  if ((v16 & 0x80000000) != 0)
  {
    v22 = v16;
    v23 = *(*a1 + 32);
    v24 = *(a1 + 184);
    v25 = 24010;
  }

  else
  {
    v17 = growStrRes(a1, a1 + 488, v14);
    if ((v17 & 0x80000000) != 0)
    {
      v22 = v17;
      goto LABEL_92;
    }

    v67 = v15;
    v18 = **(a1 + 320);
    v19 = *(a1 + 488);
    if (v14)
    {
      bzero(*(a1 + 488), v14);
    }

    v65 = a3;
    v66 = a4;
    v68 = v7;
    v69 = a6;
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
LABEL_30:
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
            goto LABEL_35;
          }
        }
      }

      v19[i] = 1;
      v30 = v20 + utf8_determineUTF8CharLength(*v29);
      ++i;
      goto LABEL_30;
    }

LABEL_35:
    v32 = (*(*(a1 + 112) + 88))(*(a1 + 120), *(a1 + 128), *(a1 + 488), v67);
    if ((v32 & 0x80000000) != 0)
    {
      v22 = v32;
      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24011, 0);
      v7 = v68;
      a6 = v69;
      goto LABEL_92;
    }

    v33 = (*(*(a1 + 112) + 80))(*(a1 + 120), *(a1 + 128), a2 + 1);
    v7 = v68;
    a6 = v69;
    if ((v33 & 0x80000000) != 0)
    {
      v22 = v33;
      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24012, "%s%s");
      goto LABEL_92;
    }

    v34 = (*(*(a1 + 112) + 96))(*(a1 + 120), *(a1 + 128), &v71, &v75);
    if ((v34 & 0x80000000) != 0)
    {
      v22 = v34;
      v23 = *(*a1 + 32);
      v24 = *(a1 + 184);
      v25 = 24013;
    }

    else
    {
      v35 = (*(*(a1 + 112) + 128))(*(a1 + 120), *(a1 + 128), 0, &v74, &v73);
      if ((v35 & 0x80000000) != 0)
      {
        v22 = v35;
        v23 = *(*a1 + 32);
        v24 = *(a1 + 184);
        v25 = 24014;
      }

      else
      {
        v74[v73] = 0;
        v36 = Utf8_LengthInUtf8chars(v74, v73);
        if (*(a1 + 548) == 1)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES Layer 0 OUT strsize(%d bytes, %d chars) -> (%s)", v73, v36, v74);
        }

        v37 = (*(*(a1 + 112) + 128))(*(a1 + 120), *(a1 + 128), 1, &__n[1], __n);
        if ((v37 & 0x80000000) == 0)
        {
          *(*&__n[1] + __n[0]) = 0;
          if (*(a1 + 548) == 1)
          {
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES layer 1 OUT strsize(%d bytes) -> (%s)", __n[0], *&__n[1]);
          }

          v38 = __n[0];
          v39 = (__n[0] - v36);
          if (__n[0] < v36)
          {
            v39 = 0;
          }

          v40 = v73;
          if (__n[0] <= v73)
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
          cstdlib_strncpy(v41, *&__n[1], __n[0]);
          v42[__n[0]] = 0;
          v43 = v73;
          if (v73 != __n[0])
          {
            if (v73)
            {
              v44 = 0;
              v45 = 0;
              v46 = v42 + 1;
              do
              {
                v47 = utf8_determineUTF8CharLength(v74[v45]);
                if (v47 >= 2u)
                {
                  __n[0] = cstdlib_strlen(v42);
                  cstdlib_memmove(&v42[v47 + v44], &v46[v44], __n[0] - v44);
                  cstdlib_memset(&v46[v44], 126, v47 - 1);
                }

                v45 += v47;
                v44 = v45;
              }

              while (v45 < v73);
            }

            __n[0] = cstdlib_strlen(v42);
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "(adjusted) DEPES layer 1 OUT strsize(%d bytes) -> (%s)", __n[0], v42);
            v43 = __n[0];
          }

          if (v43)
          {
            v48 = 0;
            v49 = 0;
            while (1)
            {
              v50 = &v42[v49];
              if (*v50 == 126)
              {
                *v50 = 32;
              }

              if (utf8_strchr(g_szSpace_2, &v42[v49]))
              {
                goto LABEL_62;
              }

              v51 = *v50;
              if ((v51 | 2) != 0x4E)
              {
                break;
              }

LABEL_64:
              if ((v51 | 2) == 0x4E)
              {
                if (v49)
                {
                  v52 = 0;
                  do
                  {
                    v53 = v52;
                    v52 += utf8_determineUTF8CharLength(v74[v52]);
                  }

                  while (v52 < v49);
                  if (utf8_strchr(g_szSpace_2, &v74[v53]))
                  {
                    goto LABEL_84;
                  }

                  while (1)
                  {
                    v54 = utf8_strchr(g_szSpace_2, &v74[v52]);
                    if (v54)
                    {
                      break;
                    }

                    if (v52 != 1)
                    {
                      v70 = (v52 - 1);
                      utf8_GetPreviousValidUtf8Offset(v74, &v70);
                      v52 = v70;
                      if (v70)
                      {
                        continue;
                      }
                    }

                    v52 = 0;
                    break;
                  }

                  v55 = utf8_determineUTF8CharLength(v74[v52]);
                  if (utf8_strchr(g_szSpace_2, &v74[v52]) && (v64 = v55 + v52, v64 < v73) && !utf8_strchr(g_szSpace_2, &v74[v52 + v55]))
                  {
                    if (utf8_strchr(g_szSpace_2, &v42[v52 + v55]))
                    {
                      v42[v64] = *v50;
                      v49 = v52;
                    }

                    else
                    {
                      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES language layer problem, trying to overwrite [%d] %c when aligning with [%d] %c; ignore", v64, v42[v64], v48, *v50);
                    }
                  }

                  else
                  {
                    if (v54 || v55 >= v73 || utf8_strchr(g_szSpace_2, &v74[v52 + v55]))
                    {
                      goto LABEL_84;
                    }

                    if (utf8_strchr(g_szSpace_2, &v42[v52]))
                    {
                      v42[v52] = *v50;
                    }

                    else
                    {
                      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES language layer problem, trying to overwrite [%d] %c when aligning with [%d] %c; ignore", 0, v42[v52], v48, *v50);
                    }
                  }

                  *v50 = 32;
                }

                else
                {
                  v49 = 0;
                }
              }

LABEL_84:
              v49 += utf8_determineUTF8CharLength(v42[v49]);
              v48 = v49;
              if (v49 >= __n[0])
              {
                goto LABEL_99;
              }
            }

            v56 = utf8_determineUTF8CharLength(v51);
            if (v56)
            {
              memset(&v42[v48], 32, v56);
            }

LABEL_62:
            v51 = *v50;
            goto LABEL_64;
          }

LABEL_99:
          v58 = add2StringV2(a1, *(*(a1 + 320) + 8), v74);
          if ((v58 & 0x80000000) != 0)
          {
            v22 = v58;
          }

          else
          {
            a6 = v69;
            v22 = add2StringV2(a1, v69, v42);
            if ((v22 & 0x80000000) == 0)
            {
              v7 = v68;
              if (v66 == 1)
              {
                LOWORD(v70) = v65;
                textnormalizer_markercountlayer_GetWordBegPos(v71, v75, v74, *(a1 + 520), &v70, *(a1 + 544));
                if (v70 > v65)
                {
                  v59 = *(a1 + 320);
                  v60 = (*(a1 + 520) + 2 * v65);
                  v61 = v70 - v65;
                  do
                  {
                    *v60++ += *(v59 + 32);
                    --v61;
                  }

                  while (v61);
                }
              }

              heap_Free(*(*a1 + 8), v42);
              goto LABEL_92;
            }
          }

          heap_Free(*(*a1 + 8), v42);
          return v22;
        }

        v22 = v37;
        v23 = *(*a1 + 32);
        v24 = *(a1 + 184);
        v25 = 24058;
      }
    }
  }

  log_OutPublic(v23, v24, v25, 0, v62, v63);
LABEL_92:
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "TOKEN _%s_, MAP _%s_", **(*(a1 + 320) + 8), *a6);
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
    v5 = 0;
    goto LABEL_197;
  }

  v4 = 0;
  v5 = 0;
  LOWORD(v6) = 0;
  v7 = 0;
  v95 = a2;
  while (1)
  {
    FERuntimeData_GetKeyAtPos(a1, v7, &v101, &v100);
    if (!v101 || v4 != *v101)
    {
      ++v7;
      goto LABEL_182;
    }

    FEData_blockData_getTokenAndExpansionData(a1, *(v100 + 88), &v102, &v98, &v99);
    v8 = *v101;
    v9 = v101[1];
    if (v8 >= v9)
    {
      v10 = *v101;
    }

    else
    {
      while (*(a1[38] + v8) == 32)
      {
        v10 = ++v8;
        if (v8 >= v9)
        {
          goto LABEL_15;
        }
      }

      v10 = v8;
    }

LABEL_15:
    if (v10 >= v9)
    {
      v12 = 1;
    }

    else
    {
      v11 = a1[38];
      v12 = 1;
      do
      {
        if (*(v11 + v8) == 32)
        {
          ++v12;
          do
          {
            v13 = ++v8;
          }

          while (v8 < v9 && *(v11 + v8) == 32);
        }

        else
        {
          v13 = ++v8;
        }
      }

      while (v13 < v9);
    }

    resetAlignmentData(a1);
    v14 = v101;
    v15 = *v101;
    v16 = v101[1];
    if (v15 >= v16)
    {
      v17 = *v101;
    }

    else
    {
      while (*(a1[38] + v15) == 32)
      {
        v17 = ++v15;
        if (v15 >= v16)
        {
          goto LABEL_32;
        }
      }

      v17 = v15;
    }

LABEL_32:
    v18 = a1[67];
    *(v18 + 2 * *(a1 + 272)) = v15;
    v19 = *(a1 + 272) + 1;
    *(a1 + 272) = v19;
    v20 = v14[1];
    if (v17 < v20)
    {
      v21 = v14[1];
      v22 = a1[38];
      do
      {
        if (*(v22 + v15) == 32)
        {
          while (v20 > v15 && *(v22 + v15) == 32)
          {
            ++v15;
          }

          *(v18 + 2 * v19) = v15;
          v19 = *(a1 + 272) + 1;
          *(a1 + 272) = v19;
          v21 = v14[1];
        }

        ++v15;
        v20 = v21;
      }

      while (v21 > v15);
    }

    if (!v99)
    {
      v31 = *(*a1 + 32);
      v32 = a1[23];
      v94 = 24015;
      goto LABEL_195;
    }

    if (*(*(v100 + 88) + 8) == 1)
    {
      v23 = addBTokMatchToList(a1, v14);
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_196;
      }
    }

    if (*(a1 + 137) == 1)
    {
      cstdlib_strncpy(a1[69], (a1[38] + *v101), (v101[1] - *v101));
      *(a1[69] - *v101 + v101[1]) = 0;
      v24 = *(*a1 + 32);
      v25 = a1[23];
      if (*(*(v100 + 88) + 8) == 1)
      {
        log_OutText(v24, v25, 5, 0, "DoExpansions : applying method %s with arg %s for btok %3d,%3d %-15s %s (%d input words)", v99[6], v99[5], *v101, v101[1]);
      }

      else
      {
        log_OutText(v24, v25, 5, 0, "DoExpansions : applying expansion for token %3d,%3d %-15s %s (%d input words)", *v101, v101[1]);
      }
    }

    if (*(a1 + 272))
    {
      v26 = 0;
      v27 = a1[65];
      do
      {
        *(v27 + 2 * v26++) = 9999;
      }

      while (v26 < *(a1 + 272));
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
    v29 = v100;
    v28 = v101;
    v30 = a1[40];
    *(v30 + 16) = v101;
    *(v30 + 24) = v29;
    *(v30 + 32) = 0;
    if (*(*(v29 + 88) + 8) == 1)
    {
      v23 = tn_nn_predictBTok(a1, v99, (a1 + 49), (a1 + 51), (a1 + 53), (a1 + 55), (a1 + 57), a1 + 59, *v28, HIWORD(*v28), a1[38]);
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_196;
      }

      goto LABEL_163;
    }

    v23 = applyExpansion(a1, v99, (a1 + 49), (a1 + 51), (a1 + 55), a1[38]);
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_196;
    }

    v31 = *(*a1 + 32);
    v32 = a1[23];
    if (!*(a1 + 201))
    {
      break;
    }

    log_OutText(v31, v32, 5, 0, "DoExpansions : expansion -> %s", a1[49]);
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "               langmap   -> %s", a1[51]);
    v33 = cstdlib_strlen(a1[49]);
    v34 = TOK_COUNT_SP_WORDS(a1[49]);
    v35 = v34;
    if (v34 == v12)
    {
      v36 = v12;
      v37 = v12 > 1u;
      if (v36 >= 2)
      {
        if (*(a1 + 272))
        {
          v96 = v34;
          v38 = 0;
          do
          {
            if (*(a1[65] + 2 * v38) == 9999)
            {
              v39 = 0;
              if (v33)
              {
                do
                {
                  if (!utf8_strchr(g_szSpace_3, (a1[49] + v39)))
                  {
                    break;
                  }

                  v39 += utf8_determineUTF8CharLength(*(a1[49] + v39));
                }

                while (v39 < v33);
              }

              v40 = 0;
              if (v38 && v33 > v39)
              {
                v41 = 0;
                do
                {
                  if (utf8_strchr(g_szSpace_3, (a1[49] + v39)))
                  {
                    if (v38 == ++v41)
                    {
                      break;
                    }

                    for (i = *(a1[49] + v39); ; i = *(a1[49] + v39))
                    {
                      v39 += utf8_determineUTF8CharLength(i);
                      if (v101[1] <= v39 || !utf8_strchr(g_szSpace_3, (a1[49] + v39)))
                      {
                        break;
                      }
                    }
                  }

                  else
                  {
                    v39 += utf8_determineUTF8CharLength(*(a1[49] + v39));
                  }
                }

                while (v33 > v39);
                v40 = v41;
              }

              v43 = a1[65];
              if (v40 != v38)
              {
                *(v43 + 2 * v38) = 9999;
                log_OutPublic(*(*a1 + 32), a1[23], 24017, "%s%d", "position", v38);
                v37 = 1;
                v44 = 1;
                v35 = v96;
                goto LABEL_82;
              }

              *(v43 + 2 * v38) = v39;
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "guessing alignment position for word %d to be %d", v38, v39);
            }

            ++v38;
          }

          while (v38 < *(a1 + 272));
          v44 = 0;
          v37 = 1;
          v35 = v96;
          if (*(a1 + 272))
          {
            goto LABEL_83;
          }
        }

        else
        {
          v44 = 0;
          v37 = 1;
        }

        goto LABEL_98;
      }

      v44 = 0;
    }

    else
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "mismatch in number of words; in:%d out: %d", v12, v34);
      v37 = v12 > 1u;
      v44 = 1;
    }

LABEL_82:
    if (*(a1 + 272))
    {
LABEL_83:
      v45 = 0;
      v46 = a1[65];
      do
      {
        v47 = *(v46 + 2 * v45);
        v48 = v47 != 9999 && v33 >= v47;
        if (!v48 || v45 && ((v49 = *(v46 + 2 * (v45 - 1)), v49 != 9999) ? (v50 = v47 >= v49) : (v50 = 1), !v50))
        {
          *(v46 + 2 * v45) = 9999;
          v44 = 1;
        }

        ++v45;
        v51 = *(a1 + 272);
      }

      while (v45 < v51);
      v52 = v51 == 0;
      goto LABEL_99;
    }

LABEL_98:
    v52 = 1;
LABEL_99:
    if (v44 == 1)
    {
      if (v35 < 2)
      {
        if (!v52)
        {
          v60 = 0;
          v61 = a1[65];
          do
          {
            *(v61 + 2 * v60++) = 0;
          }

          while (v60 < *(a1 + 272));
        }
      }

      else if (!v52)
      {
        v53 = a1[65];
        *v53 = 0;
        v54 = *(a1 + 272);
        if (v54 >= 2)
        {
          v55 = v53 + 1;
          for (j = 1; j < v54; ++j)
          {
            if (*v55 == 9999)
            {
              *v55 = *(v55 - 1);
              v54 = *(a1 + 272);
            }

            ++v55;
          }

          if (v54 >= 2)
          {
            v57 = a1[65];
            v58 = (v57 + 2);
            v59 = v54 - 1;
            while (*(v58 - 1) <= *v58)
            {
              ++v58;
              if (!--v59)
              {
                goto LABEL_115;
              }
            }

            v92 = 0;
            do
            {
              *(v57 + 2 * v92++) = 0;
            }

            while (v92 < *(a1 + 272));
          }
        }
      }
    }

LABEL_115:
    v62 = cstdlib_strlen(a1[49]);
    CurrentUtf8Offset = v62;
    if (v62)
    {
      CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(a1[49], v62 - 1);
    }

    if (utf8_strchr(g_szSpace_3, a1[49]))
    {
      v64 = 0;
      v6 = 0;
      do
      {
        v6 += utf8_determineUTF8CharLength(*(a1[49] + v64));
        v64 = v6;
      }

      while (utf8_strchr(g_szSpace_3, (a1[49] + v6)));
    }

    else
    {
      LOWORD(v6) = 0;
    }

    for (; v6 < CurrentUtf8Offset; CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(a1[49], CurrentUtf8Offset - 1))
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

    v97 = v37;
    if (v37 && *(a1 + 272))
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

    if (v6)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "DoExpansions : adjusted expansion -> %s", a1[49]);
      if (v97)
      {
        if (*(a1 + 272))
        {
          v68 = 0;
          do
          {
            v69 = a1[65];
            if (*(v69 + 2 * v68))
            {
              v70 = *(v69 + 2 * v68) - v6;
              *(v69 + 2 * v68) = v70;
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "alignment position for word %d adjusted (by +%d) to %d", v68, v6, v70);
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

    v72 = cstdlib_strlen(a1[51]);
    if (!v72)
    {
      goto LABEL_156;
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
LABEL_156:
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

    a2 = v95;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "sanitized langMap=%s", v83);
    if (*(a1 + 209))
    {
      v84 = cstdlib_strlen(a1[51]);
      if (v84 != cstdlib_strlen(a1[49]))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24061, "%s%s%s%s", "langmap:", a1[51], " is not same length as token:", a1[49]);
        *(a1 + 209) = 0;
        *a1[51] = 0;
      }
    }

LABEL_163:
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

      v5 = saveExpansionInLDO(a1, a1[53], v85, v86, v88, a1[59], v6, v101);
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

      v5 = saveExpansionInLDO(a1, v102, v85, v87, v89, 0, v6, v101);
    }

    v90 = *(*a1 + 32);
    v91 = a1[23];
    if ((v5 & 0x80000000) != 0)
    {
      log_OutPublic(v90, v91, 24019, 0);
      goto LABEL_197;
    }

    log_OutText(v90, v91, 5, 0, "DoExpansions : created new LDO Label from %d to %d", *v101, v101[1]);
    if (*(a1 + 137) == 1)
    {
      dumpTokenRecordsInLingDB(a1, "After saving expanded token as Label in LDO", 0);
    }

    v7 = v101[1];
    *a2 = v7;
LABEL_182:
    v101 = 0;
    v4 = v7;
    if (v7 >= *(a1 + 156))
    {
      goto LABEL_197;
    }
  }

  v94 = 24016;
LABEL_195:
  log_OutPublic(v31, v32, v94, 0);
  v23 = TOKENTNERROR(266);
LABEL_196:
  v5 = v23;
LABEL_197:
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : DoExpansions End (%x)", v5);
  return v5;
}

uint64_t applyExpansion(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v58[0] = 0;
  v58[1] = 0;
  v56 = 0;
  v57 = 0;
  __b = 0;
  __len = 0;
  v53[0] = 0;
  v53[1] = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : applyExpansion Begin");
  if (*(a1 + 153) == 1)
  {
    v12 = a2[5];
    if (v12)
    {
      v13 = cstdlib_strstr(v12, a1[88]);
      if (a6)
      {
        v14 = v13;
        if (v13)
        {
          if (!v13[cstdlib_strlen(a1[88])] || v14[cstdlib_strlen(a1[88])] == 32)
          {
            v15 = a1[22];
            if (*(v15 + 16))
            {
              v16 = *(v15 + 8);
              if (v16)
              {
                v51 = a3;
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
                        cstdlib_strncpy(a1[69], (a6 + v21), (v22 - v21));
                        *(a1[69] - *v20 + v20[1]) = 0;
                        v24 = add2StringV2(a1, a5, a1[69]);
                        if ((v24 & 0x80000000) != 0)
                        {
                          goto LABEL_93;
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
                            goto LABEL_93;
                          }

                          v18 = *(v16 + 106);
                        }
                      }
                    }

                    while (v19 < v18);
                  }

                  v16 = *v16;
                  a4 = v17;
                  a3 = v51;
                }

                while (v16);
              }
            }
          }
        }
      }
    }
  }

  cstdlib_memset(&__b, 0, 0x10uLL);
  cstdlib_memset(&v59, 0, 0x10uLL);
  cstdlib_memset(v58, 0, 0x10uLL);
  cstdlib_memset(&v56, 0, 0x10uLL);
  cstdlib_memset(&__b, 0, 0x10uLL);
  cstdlib_memset(v53, 0, 0x10uLL);
  inited = initStrRes(a1, &v61);
  if ((inited & 0x80000000) == 0)
  {
    v24 = initStrRes(a1, &v59);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    v24 = initStrRes(a1, v53);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    v24 = initStrRes(a1, &v56);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    v24 = initStrRes(a1, v58);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    if (*(a2 + 24))
    {
      v26 = 0;
      do
      {
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing subexpansion %d ...", v26);
        v24 = applyExpansion(a1, *&a2[2][2 * v26], &v61, &v59, 0, 0);
        if ((v24 & 0x80000000) != 0)
        {
          goto LABEL_93;
        }

        if (WORD1(v62))
        {
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "after subexpansion %d str=%s, langmap=%s", v26, v61, v59);
          if (WORD1(v62))
          {
            if (!**a2)
            {
              v27 = *(a1[40] + 32);
              *(a1[40] + 32) = v27 + cstdlib_strlen(v61);
            }

            v24 = add2StringV3(a1, &v56, &v61);
            if ((v24 & 0x80000000) != 0)
            {
              goto LABEL_93;
            }

            v24 = add2StringV3(a1, v58, &v59);
            if ((v24 & 0x80000000) != 0)
            {
              goto LABEL_93;
            }

            WORD1(v62) = 0;
            *v61 = 0;
            WORD1(v60) = 0;
            *v59 = 0;
          }
        }
      }

      while (++v26 < *(a2 + 24));
    }

    clearStrRes(*a1, &v61);
    clearStrRes(*a1, &v59);
    clearStrRes(*a1, v53);
    if (WORD1(v57) && (**a2 - 1) <= 2)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "CALL function on expanded string (%s)", v56);
    }

    v28 = initStrRes(a1, &__b);
    if ((v28 & 0x80000000) != 0)
    {
      goto LABEL_94;
    }

    v29 = *a2;
    v30 = **a2;
    if ((v30 - 1) < 2)
    {
      v52 = 0;
      FEFunctionMap_GetFunction(a1, 1u, v29, &v63);
      v31 = a1[40];
      *v31 = a2[5];
      *(v31 + 8) = &__b;
      *(v31 + 34) = *(a2 + 4);
      v28 = v63(a1, &v52);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_94;
      }

      if (!v52)
      {
        goto LABEL_91;
      }

      v24 = add2StringV3(a1, a3, &__b);
      if ((v24 & 0x80000000) == 0)
      {
        cstdlib_memset(__b, 32, WORD1(__len));
        p_b = &__b;
        goto LABEL_90;
      }

      goto LABEL_93;
    }

    if (v30 != 3)
    {
      goto LABEL_91;
    }

    v33 = *(a2 + 24);
    if (*(a2 + 24))
    {
      v34 = 0;
      v35 = 9999;
      while (1)
      {
        v36 = *&a2[2][2 * v34];
        if (**v36 == 2)
        {
          v37 = *(v36 + 8);
          v38 = a1[40];
          v39 = *(v38 + 24);
          if (v37 > *(v39 + 82))
          {
            log_OutPublic(*(*a1 + 32), a1[23], 24008, "%s%d", "intVal", v37);
            TOKENTNERROR(0);
            v39 = *(a1[40] + 24);
            v33 = *(a2 + 24);
LABEL_57:
            v40 = *(v39 + 4 * (v37 - 1) + 42);
            if (v40 < v35 && ~v40 != 0)
            {
              v35 = v40;
            }

            goto LABEL_62;
          }

          if (v37)
          {
            goto LABEL_57;
          }

          v35 = **(v38 + 16);
        }

LABEL_62:
        if (++v34 >= v33)
        {
          goto LABEL_66;
        }
      }
    }

    v35 = 9999;
LABEL_66:
    v42 = *(a1 + 272);
    if (*(a1 + 272))
    {
      v43 = 0;
      v44 = a1[67];
      do
      {
        v45 = *v44++;
        if (v45 == v35)
        {
          v43 = 1;
        }

        --v42;
      }

      while (v42);
      if (v43 == 1)
      {
        v46 = **(a1[40] + 16);
        if (v46 < v35)
        {
          do
          {
            if (!utf8_strchr(g_szSpace_3, (a1[38] + v46)))
            {
              break;
            }

            v46 += utf8_determineUTF8CharLength(*(a1[38] + v46));
          }

          while (v46 < v35);
        }

        if (v46 < v35)
        {
          v47 = 0;
          do
          {
            v48 = v46;
            if (utf8_strchr(g_szSpace_3, (a1[38] + v46)))
            {
              ++v47;
              if (v46 < v35)
              {
                while (1)
                {
                  v48 = v46;
                  if (!utf8_strchr(g_szSpace_3, (a1[38] + v46)))
                  {
                    break;
                  }

                  v46 += utf8_determineUTF8CharLength(*(a1[38] + v46));
                  if (v46 >= v35)
                  {
                    v48 = v46;
                    break;
                  }
                }
              }
            }

            v46 += utf8_determineUTF8CharLength(*(a1[38] + v48));
          }

          while (v46 < v35);
LABEL_86:
          v49 = a1[40];
          *v49 = v56;
          v49[1] = &__b;
          v52 = 0;
          v28 = textnormalizer_DoDepes(a1, a2[6], v47, v43, &v52, v53);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_94;
          }

          if (!v52)
          {
            goto LABEL_91;
          }

          v24 = add2StringV3(a1, a3, &__b);
          if ((v24 & 0x80000000) == 0)
          {
            p_b = v53;
LABEL_90:
            v28 = add2StringV3(a1, a4, p_b);
            if ((v28 & 0x80000000) == 0)
            {
LABEL_91:
              clearStrRes(*a1, &__b);
              if (!**a2)
              {
                add2StringV3(a1, a3, &v56);
                add2StringV3(a1, a4, v58);
              }
            }

LABEL_94:
            clearStrRes(*a1, v53);
            clearStrRes(*a1, &__b);
            clearStrRes(*a1, &v56);
            clearStrRes(*a1, v58);
            clearStrRes(*a1, &v61);
            clearStrRes(*a1, &v59);
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : applyExpansion End");
            return v28;
          }

LABEL_93:
          v28 = v24;
          goto LABEL_94;
        }
      }
    }

    else
    {
      v43 = 0;
    }

    v47 = 0;
    goto LABEL_86;
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
      v6 = ssftmap_Insert(v9, *(&off_287EECBD8 + 2 * v3), *(&off_287EECBD8 + 2 * v3 + 1));
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
        v21 = cstdlib_strlen(v20);
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

  cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + **(v4 + 16)), (*(*(v4 + 16) + 2) - **(v4 + 16)));
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

      cstdlib_strncpy(*(a1 + 552), (a4 + v12), (v13 - v12));
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
  *v33 = 0;
  v34 = 0;
  v19 = a1[22];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : predictBTokAndApplyExpansion Begin");
  if (cstdlib_strcmp(*(a2 + 48), "_NN"))
  {
    if (cstdlib_strcmp(*(a2 + 48), "_UNAMBIG"))
    {
      return 2304778240;
    }

    v27 = *(a2 + 40);
  }

  else
  {
    v21 = *(a2 + 40);
    v22 = cstdlib_strlen(v21);
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

    v25 = cstdlib_strchr(*a8, 32);
    if (v25)
    {
      *v25 = 0;
    }

    v26 = ssftmap_Find(a1[85], *a8, v33);
    if ((v26 & 0x80000000) != 0)
    {
      RegexStr = v26;
      log_OutPublic(*(*a1 + 32), a1[23], 24069, "%s%s", "pattern", *a8);
      return RegexStr;
    }

    if (*(a1 + 365) >= *(a1 + 364))
    {
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "exceeded max NN calls per sentence %d, fallback to default prediction %s", *(a1 + 364), *(*v33 + 16));
      v27 = *(*v33 + 16);
    }

    else
    {
      v24 = nn_tn_process(*a1, a1[23], (a1 + 80), *a8, *v33, a9, a10, a11, &v34);
      ++*(a1 + 365);
      if ((v24 & 0x80000000) != 0)
      {
        return v24;
      }

      v27 = v34;
    }
  }

  v24 = add2StringV2(a1, a5, v27);
  if ((v24 & 0x80000000) != 0)
  {
    return v24;
  }

  if (a1[88])
  {
    v28 = a1[88];
  }

  else
  {
    v28 = "LUA";
  }

  if ((add2StringV2(a1, a3, v28) & 0x80000000) != 0)
  {
    return 2304778240;
  }

  RegexStr = add2StringV2(a1, a4, "");
  if ((RegexStr & 0x80000000) == 0)
  {
    cstdlib_memset(*a4, 32, *(a4 + 10));
    if (*(v19 + 16) && (v29 = *(v19 + 8)) != 0)
    {
      while (1)
      {
        RegexStr = getRegexStr(a1, (v29 + 3), a6, a11);
        if ((RegexStr & 0x80000000) != 0)
        {
          break;
        }

        if (!*(a1 + 240))
        {
          RegexStr = getDctStr(a1, (v29 + 3), a7);
          if ((RegexStr & 0x80000000) != 0)
          {
            break;
          }
        }

        v29 = *v29;
        if (!v29)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_30:
      v30 = *(*a1 + 32);
      v31 = a1[23];
      if (*(a1 + 240) == 1)
      {
        log_OutText(v30, v31, 4, 0, "textnormalizer : predictBTokAndApplyExpansion End expansionFunction=%s regexStr=%s");
      }

      else
      {
        log_OutText(v30, v31, 4, 0, "textnormalizer : predictBTokAndApplyExpansion End expansionFunction=%s regexStr=%s dctmatchStr=%s");
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

uint64_t nn_tn_getBrokerString(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = "";
  __s2 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__s1 = 0u;
  v11 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v8);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "nn_tn_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v8);
      v7 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a3 = v7;
      if (v7)
      {
        return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, v7, 0x400uLL);
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
  v39 = 0;
  v40 = 0;
  v41 = 0;
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
    v18 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v18)
    {
      *v18 = 0;
    }

    if (cstdlib_strcmp(**&__c[3], "char"))
    {
      if (cstdlib_strcmp(**&__c[3], "char"))
      {
        if (cstdlib_strcmp(**&__c[3], "word_and_char"))
        {
          goto LABEL_13;
        }

        v19 = 2;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 0;
    }

    *a11 = v19;
  }

LABEL_13:
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
      goto LABEL_24;
    }

    NumericFeatureValue = (*(a7 + 96))(a9, a10, "fecfg", "nn_tn_charFocusPatternProcessing", &__c[3], &__c[1], __c);
  }

  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v20 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v20)
    {
      *v20 = 0;
    }

    if (!cstdlib_strcmp(**&__c[3], "Markup"))
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

    if (!cstdlib_strcmp(**&__c[3], "Embedded"))
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

LABEL_24:
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

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_addPatternAsFeature", &v41);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getStringFeatureValue(a5, a6, a7, a9, a10, "nn_tn_contextPaddingChar", (a11 + 16));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (v41 == 1)
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

  v21 = a5;
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
  v22 = *(a11 + 32);
  *(a11 + 36) = v22 == 1;
  if (*a11 == 1)
  {
    v23 = *(a11 + 24);
  }

  else
  {
    if (*a11)
    {
      goto LABEL_55;
    }

    v23 = *(a11 + 12);
  }

  if (v23 == 2)
  {
    if (v22 == 1)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    *(a11 + 36) = v24;
  }

LABEL_55:
  NumericFeatureValue = nn_word_lkp_GetInterface(1u, (a11 + 128));
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  *(a11 + 136) = safeh_GetNullHandle();
  *(a11 + 144) = v25;
  *(a11 + 152) = safeh_GetNullHandle();
  *(a11 + 160) = v26;
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
  v27 = heap_Alloc(*(a5 + 8), 4 * *(a11 + 168));
  *(a11 + 176) = v27;
  if (!v27)
  {
    log_OutPublic(*(a5 + 32), a6, 24048, 0);
    return 2304778250;
  }

  BrokerString = nn_tn_getBrokerString(a5, a6, &v40);
  v29 = v40;
  if ((BrokerString & 0x80000000) != 0)
  {
    v36 = BrokerString;
  }

  else
  {
    v30 = fi_init(a1, a2, a3, a4, &v39, 0, v40, "FINN", 1, 0);
    if ((v30 & 0x80000000) != 0)
    {
      v36 = 2304778240;
      log_OutPublic(*(a5 + 32), a6, 24063, 0);
    }

    else
    {
      v31 = *v39;
      v32 = *(*v39 + 56);
      if (*(*v39 + 52) == 2)
      {
        v33 = *(a11 + 168);
        v34 = *(a11 + 36);
        if (v32 == *(a11 + 28))
        {
          v35 = *(v31 + 60);
          if (v35 == v33 + v34)
          {
            v36 = v30;
            *(a11 + 104) = v39;
            *(a11 + 112) = v35 * v32;
            *(a11 + 184) = 0;
            *(a11 + 192) = 0;
            v21 = a5;
            goto LABEL_72;
          }
        }
      }

      else
      {
        v33 = *(a11 + 168);
        v34 = *(a11 + 36);
      }

      v21 = a5;
      log_OutPublic(*(a5 + 32), a6, 24067, "%s%d%d%s%d%d", "expected", v32, *(v31 + 60), "got", *(a11 + 28), v33 + v34);
      v36 = 2304778265;
    }
  }

LABEL_72:
  if (v29)
  {
    heap_Free(*(v21 + 8), v29);
  }

  return v36;
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
  v69 = cstdlib_strlen(__s);
  *a12 = 0;
  v21 = heap_Calloc(*(a1 + 8), 1, (8 * a11) | 1);
  if (!v21)
  {
    v45 = 2304778250;
    log_OutPublic(*(a1 + 32), a2, 24048, 0);
    return v45;
  }

  v22 = v21;
  v67 = a6;
  *a7 = a11;
  v23 = a8;
  if (!a11)
  {
LABEL_6:
    v27 = a13;
    v28 = a4;
    if ((a5 - a4) >= (a11 - 2 * a8 - 2))
    {
      v29 = a11 - 2 * a8 - 2;
    }

    else
    {
      v29 = a5 - a4;
    }

    v68 = v28;
    PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v28);
    v31 = 0;
    if (a8 && (PreviousUtf8Offset & 0x80000000) == 0)
    {
      v31 = 0;
      v32 = PreviousUtf8Offset;
      do
      {
        Utf8_LengthInBytes(&__s[v32], 1);
        ++v31;
        if (!v32)
        {
          break;
        }

        v33 = utf8_GetPreviousUtf8Offset(__s, v32);
        if ((v33 & 0x8000) != 0)
        {
          break;
        }

        v32 = v33;
      }

      while (a8 > v31);
    }

    v34 = a9;
    LOWORD(v35) = v31;
    if (a10)
    {
      v36 = a8 >= a11 ? a11 : a8;
      LOWORD(v35) = a8;
      if (v36)
      {
        v37 = v22;
        do
        {
          v38 = *v37++;
          cstdlib_strcpy(v38, a10);
          --v36;
        }

        while (v36);
        LOWORD(v35) = a8;
        v34 = a9;
        v27 = a13;
      }
    }

    v39 = a14;
    *v27 = v35;
    if (v34 == 1)
    {
      **(v22 + 8 * v35) = -61;
      LOWORD(v35) = v35 + 1;
    }

    v40 = (v29 + v68);
    if (v40 <= v68 || a11 <= v35)
    {
      v41 = v68;
    }

    else
    {
      v66 = v34;
      v35 = v35;
      v41 = v68;
      do
      {
        v42 = Utf8_LengthInBytes(&__s[v41], 1);
        v43 = cstdlib_strncmp(&__s[v41], " ", v42);
        v44 = *(v22 + 8 * v35);
        if (v43)
        {
          cstdlib_strncpy(v44, &__s[v41], v42);
        }

        else
        {
          cstdlib_strcpy(v44, "<sp>");
        }

        ++v35;
        v41 += v42;
      }

      while (v40 > v41 && v35 < a11);
      v23 = a8;
      v34 = v66;
      v39 = a14;
    }

    *v39 = v35;
    if (v34 == 1)
    {
      **(v22 + 8 * v35) = -60;
      LOWORD(v35) = v35 + 1;
    }

    if (a11 <= v35)
    {
      v46 = 0;
    }

    else
    {
      v46 = 0;
      v35 = v35;
      while (v69 > v41 && v23 > v46)
      {
        v47 = Utf8_LengthInBytes(&__s[v41], 1);
        v48 = cstdlib_strncmp(&__s[v41], " ", v47);
        v49 = *(v22 + 8 * v35);
        if (v48)
        {
          cstdlib_strncpy(v49, &__s[v41], v47);
        }

        else
        {
          cstdlib_strcpy(v49, "<sp>");
        }

        ++v35;
        v41 += v47;
        ++v46;
        v23 = a8;
        if (a11 == v35)
        {
          *a12 = a11;
          goto LABEL_63;
        }
      }
    }

    if (a10 && v23 > v46 && a11 > v35)
    {
      v35 = v35;
      do
      {
        v52 = *(v22 + 8 * v35++);
        cstdlib_strcpy(v52, a10);
        if (v35 >= a11)
        {
          break;
        }

        ++v46;
      }

      while (v23 > v46);
    }

    *a12 = v35;
    if (a11 > v35)
    {
      v53 = (v22 + 8 * v35);
      v54 = v35 + 1;
      do
      {
        v55 = *v53++;
        cstdlib_strcpy(v55, "\v");
      }

      while (a11 != v54++);
    }

LABEL_63:
    *v67 = v22;
    v57 = utf8_GetPreviousUtf8Offset(__s, v68);
    v45 = 0;
    if (a10)
    {
      v58 = v23;
    }

    else
    {
      v58 = v31;
    }

    if ((v57 & 0x8000) != 0)
    {
      return v45;
    }

    if (!v23)
    {
      return v45;
    }

    v59 = v58 - 1;
    if (a11 <= (v58 - 1))
    {
      return v45;
    }

    v60 = 0;
    v61 = v57;
    while (1)
    {
      v62 = Utf8_LengthInBytes(&__s[v61], 1);
      v63 = cstdlib_strncmp(&__s[v61], " ", v62);
      v64 = *(v22 + 8 * v59);
      if (v63)
      {
        cstdlib_strncpy(v64, &__s[v61], v62);
        if (v61)
        {
          goto LABEL_72;
        }
      }

      else
      {
        cstdlib_strcpy(v64, "<sp>");
        if (v61)
        {
LABEL_72:
          v61 = utf8_GetPreviousUtf8Offset(__s, v61);
          goto LABEL_75;
        }
      }

      v61 = 0xFFFFLL;
LABEL_75:
      v45 = 0;
      if ((v61 & 0x8000) == 0 && a8 > ++v60 && a11 > --v59)
      {
        continue;
      }

      return v45;
    }
  }

  v24 = 0;
  v25 = 8 * a11;
  while (1)
  {
    v26 = heap_Calloc(*(a1 + 8), 1, 5);
    *(v22 + v24) = v26;
    if (!v26)
    {
      break;
    }

    v24 += 8;
    if (v25 == v24)
    {
      goto LABEL_6;
    }
  }

  log_OutPublic(*(a1 + 32), a2, 24048, 0);
  v50 = 0;
  do
  {
    v51 = *(v22 + v50);
    if (v51)
    {
      heap_Free(*(a1 + 8), v51);
    }

    v50 += 8;
  }

  while (v25 != v50);
  v45 = 2304778250;
  heap_Free(*(a1 + 8), v22);
  *v67 = 0;
  return v45;
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

  v63 = a4;
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
    v61 = a5;
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
      v62 = HIWORD(v65);
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
          v36 = *(a3 + 168) + *(a3 + 36);
          if (v35 && (v37 = cstdlib_strcmp(v29, v35), v36 = *(a3 + 168) + *(a3 + 36), !v37))
          {
            if (v36)
            {
              v43 = 0;
              v44 = v27 * v28;
              do
              {
                v23[v44] = -1082130432;
                ++v43;
                ++v44;
              }

              while (v36 > v43);
            }
          }

          else
          {
            if (v36)
            {
              v38 = 0;
              v39 = v27 * v28;
              do
              {
                v23[v39] = 0;
                ++v38;
                ++v39;
              }

              while (v36 > v38);
            }

            v40 = (*(*(a3 + 128) + 56))(*(a3 + 152), *(a3 + 160), *(*(a3 + 184) + 8 * v27), *(a3 + 176));
            if ((v40 & 0x1FFF) == 0x14)
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
              v11 = v40;
              if ((v40 & 0x80000000) != 0)
              {
                v50 = *(a1 + 32);
                v51 = a2;
                v52 = 24068;
                goto LABEL_60;
              }
            }

            v41 = v28 * v27;
            cstdlib_memcpy(&v23[v41], *(a3 + 176), 4 * *(a3 + 168));
            if (*(a3 + 32) == 1)
            {
              LOWORD(v42) = *(v61 + 12);
              *&v23[*(a3 + 168) + v41] = v42;
            }

            if (*(a3 + 12) == 2 && v27 >= v62 && v27 < v60)
            {
              v23[v41 + *(a3 + 168) + 1] = 1065353216;
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
      v50 = *(a1 + 32);
      v51 = a2;
      v52 = 24065;
LABEL_60:
      log_OutPublic(v50, v51, v52, 0, *v58, v59);
      goto LABEL_2;
    }

    if (*(a3 + 30))
    {
      v45 = 0;
      v46 = 0;
      v47 = 0.0;
      v48 = v61;
      do
      {
        if (v47 < *(v66 + 4 * v45))
        {
          v47 = *(v66 + 4 * v45);
          v46 = v45;
        }

        ++v45;
      }

      while (*(a3 + 30) != v45);
      v49 = v46;
    }

    else
    {
      v49 = 0;
      v47 = 0.0;
      v48 = v61;
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "results (threshold=%1.5lf)", *v48);
    if (*(a3 + 30))
    {
      v53 = 0;
      do
      {
        if (v49 == v53)
        {
          v54 = "<-- selected";
        }

        else
        {
          v54 = "";
        }

        log_OutText(*(a1 + 32), a2, 5, 0, "[%3d] %1.5lf : %s %s", v53, *(v66 + 4 * v53), *(*(a3 + 80) + 8 * v53), v54);
        ++v53;
      }

      while (v53 < *(a3 + 30));
    }

    if (*(v61 + 2) >= 2u)
    {
      v55 = 0;
      do
      {
        v56 = v55;
        if (!cstdlib_strcmp(*(*(a3 + 80) + 8 * v49), *(*(v61 + 1) + 8 * v55)))
        {
          v57 = ssftmap_Find(*(a3 + 48), *(*(v61 + 1) + 8 * v56), &v64);
          if ((v57 & 0x80000000) != 0 || v47 >= *v64)
          {
            if (v47 >= *v61)
            {
              *a9 = *(*(v61 + 1) + 8 * v56);
              log_OutText(*(a1 + 32), a2, 5, 0, "validated prediction for pattern %s", v63);
              v11 = 0;
              goto LABEL_2;
            }

            log_OutText(*(a1 + 32), a2, 5, 0, "blocked selected prediction %s; value %1.5lf below pattern threshold %1.5lf", v63, v47, *v61);
            v11 = 0;
          }

          else
          {
            v11 = v57;
            log_OutText(*(a1 + 32), a2, 5, 0, "blocked selected prediction %s; value %1.5lf below individual threshold for %s (%1.5f)", v63, v47, *(*(v61 + 1) + 8 * v56), *v64);
          }
        }

        v55 = v56 + 1;
      }

      while (*(v61 + 2) - 1 > (v56 + 1));
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "invalid or blocked prediction for pattern %s, set to default %s", v63, *(v61 + 2));
    *a9 = *(v61 + 2);
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
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    v13 = *(a1 + 8);
    v14 = cstdlib_strlen(**&__c[3]);
    v15 = heap_Calloc(v13, 1, (v14 + 1));
    *a7 = v15;
    if (v15)
    {
      cstdlib_strcpy(v15, **&__c[3]);
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
  v112 = *MEMORY[0x277D85DE8];
  v105 = 0;
  v104 = -1;
  v103 = 0;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  __b = 0u;
  v99 = 0u;
  v97 = 0;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  NumericFeatureValue = getNumericFeatureValue(a3, a4, a5, "nn_tn_numPatterns", &v97);
  if ((NumericFeatureValue & 0x80000000) == 0 && v97)
  {
    cstdlib_memset(&__b, 0, 0x20uLL);
    v13 = getNumericFeatureValue(a3, a4, a5, "nn_tn_numAllPredictions", (a6 + 72));
    if ((v13 & 0x80000000) == 0)
    {
      v14 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 72));
      *(a6 + 80) = v14;
      if (!v14 || (v15 = *(a1 + 8), v16 = cstdlib_strlen("DEFAULT"), **(a6 + 80) = heap_Calloc(v15, 1, v16 + 1), (v17 = **(a6 + 80)) == 0))
      {
LABEL_76:
        NumericFeatureValue = 2304778250;
        log_OutPublic(*(a1 + 32), a2, 24048, 0);
        return NumericFeatureValue;
      }

      v96 = 1;
      cstdlib_strcpy(v17, "DEFAULT");
      cstdlib_memset(&v100, 0, 0x28uLL);
      *&v100 = ssftmap_ElemCopyString;
      *(&v101 + 1) = patternMap_CopyData;
      *(&v100 + 1) = ssftmap_ElemFreeString;
      v102 = patternMap_FreeData;
      *&v101 = ssftmap_ElemCompareKeysString;
      v18 = *(a1 + 8);
      v109 = v100;
      v110 = v101;
      v111 = patternMap_FreeData;
      v13 = ssftmap_ObjOpen(v18, 0, &v109, (a6 + 40));
      if ((v13 & 0x80000000) == 0)
      {
        cstdlib_memset(&v93, 0, 0x28uLL);
        *&v93 = ssftmap_ElemCopyString;
        *(&v94 + 1) = floatThreshold_CopyData;
        *(&v93 + 1) = ssftmap_ElemFreeString;
        v95 = floatThreshold_FreeData;
        *&v94 = ssftmap_ElemCompareKeysString;
        v19 = *(a1 + 8);
        v109 = v93;
        v110 = v94;
        v111 = floatThreshold_FreeData;
        v13 = ssftmap_ObjOpen(v19, 0, &v109, (a6 + 48));
        if ((v13 & 0x80000000) == 0)
        {
          v20 = 0;
          v92 = a2;
          while (1)
          {
            setDictKeyString(&v109, "nn_tn_patternName", ++v20);
            v104 = -1;
            v13 = (*(a3 + 96))(a4, a5, "fecfg", &v109, &v105, &v104, &v103);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

            v88 = v20;
            if (v104)
            {
              v21 = *v105;
              v22 = cstdlib_strchr(*v105, v103);
              if (v22)
              {
                *v22 = 0;
              }

              v23 = *(a1 + 8);
              v24 = cstdlib_strlen(v21);
              v25 = heap_Calloc(v23, 1, v24 + 1);
              if (!v25)
              {
                goto LABEL_76;
              }

              v26 = v25;
              cstdlib_strcpy(v25, v21);
              v20 = v88;
            }

            else
            {
              v26 = 0;
            }

            setDictKeyString(&v109, "nn_tn_patternThreshold", v20);
            v108 = 0;
            v107 = -1;
            v106 = 0;
            LODWORD(__b) = 0;
            v27 = (*(a3 + 96))(a4, a5, "fecfg", &v109, &v108, &v107, &v106);
            if ((v27 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            if (v107 == 1 && v108)
            {
              v28 = cstdlib_strchr(*v108, v106);
              if (v28)
              {
                *v28 = 0;
              }

              cstdlib_atof(*v108);
              *&v29 = v29;
              LODWORD(__b) = LODWORD(v29);
            }

            setDictKeyString(&v109, "nn_tn_numPredictions", v20);
            v27 = getNumericFeatureValue(a3, a4, a5, &v109, &__b + 2);
            if ((v27 & 0x80000000) != 0)
            {
LABEL_80:
              NumericFeatureValue = v27;
              goto LABEL_95;
            }

            *(&__b + 1) = heap_Calloc(*(a1 + 8), 1, 8 * WORD2(__b));
            if (!*(&__b + 1))
            {
              NumericFeatureValue = 2304778250;
              log_OutPublic(*(a1 + 32), a2, 24048, 0);
              goto LABEL_95;
            }

            setDictKeyString(&v109, "nn_tn_predictions", v20);
            v89 = *(a6 + 80);
            v90 = *(&__b + 1);
            v108 = 0;
            v107 = -1;
            v106 = 0;
            NumericFeatureValue = (*(a3 + 96))(a4, a5, "fecfg", &v109, &v108, &v107, &v106);
            if ((NumericFeatureValue & 0x80000000) == 0 && v107)
            {
              v87 = v26;
              v30 = *v108;
              v31 = cstdlib_strchr(*v108, v106);
              if (v31)
              {
                *v31 = 0;
              }

              cstdlib_strlen(v30);
              v32 = cstdlib_strchr(v30, 59);
              if (v32)
              {
                v33 = v32;
                LOWORD(v34) = 0;
                while (1)
                {
                  *v33 = 0;
                  v35 = *(a1 + 8);
                  v36 = cstdlib_strlen(v30) + 1;
                  v37 = v35;
                  a2 = v92;
                  v38 = heap_Calloc(v37, 1, v36);
                  *(v90 + 8 * v34) = v38;
                  if (!v38)
                  {
                    break;
                  }

                  cstdlib_strcpy(v38, v30);
                  v39 = addToAllPredictions(a1, v92, v30, v89, &v96);
                  if ((v39 & 0x80000000) != 0)
                  {
                    NumericFeatureValue = v39;
                    goto LABEL_84;
                  }

                  LOWORD(v34) = v34 + 1;
                  v30 = v33 + 1;
                  v33 = cstdlib_strchr(v33 + 1, 59);
                  if (!v33)
                  {
                    v34 = v34;
                    goto LABEL_36;
                  }
                }

LABEL_78:
                NumericFeatureValue = 2304778250;
                v83 = *(a1 + 32);
                v84 = a2;
LABEL_83:
                log_OutPublic(v83, v84, 24048, 0);
                goto LABEL_84;
              }

              if (!v30)
              {
                v20 = v88;
                goto LABEL_39;
              }

              v34 = 0;
LABEL_36:
              v40 = *(a1 + 8);
              v41 = cstdlib_strlen(v30);
              v42 = heap_Calloc(v40, 1, v41 + 1);
              *(v90 + 8 * v34) = v42;
              if (!v42)
              {
                goto LABEL_78;
              }

              cstdlib_strcpy(v42, v30);
              NumericFeatureValue = addToAllPredictions(a1, a2, v30, v89, &v96);
              v26 = v87;
              v20 = v88;
            }

            if ((NumericFeatureValue & 0x80000000) != 0)
            {
              goto LABEL_95;
            }

LABEL_39:
            setDictKeyString(&v109, "nn_tn_predictionsThresholds", v20);
            v91 = *(a6 + 48);
            v108 = 0;
            v107 = -1;
            v106 = 0;
            v43 = (*(a3 + 96))(a4, a5, "fecfg", &v109, &v108, &v107, &v106);
            NumericFeatureValue = v43;
            if ((v43 & 0x80000000) != 0 || !v107)
            {
              if ((v43 & 0x80000000) != 0)
              {
                goto LABEL_95;
              }
            }

            else
            {
              v87 = v26;
              v44 = *v108;
              v45 = cstdlib_strchr(*v108, v106);
              if (v45)
              {
                *v45 = 0;
              }

              cstdlib_strlen(v44);
              v46 = cstdlib_strchr(v44, 59);
              if (v46)
              {
                v47 = v46;
                while (1)
                {
                  *v47 = 0;
                  v48 = cstdlib_strchr(v44, 44);
                  if (!v48)
                  {
                    break;
                  }

                  v49 = v48;
                  v50 = *(a1 + 8);
                  v51 = cstdlib_strlen(v44);
                  v52 = heap_Calloc(v50, 1, v51 + 1);
                  if (!v52)
                  {
                    goto LABEL_82;
                  }

                  v53 = v52;
                  v54 = cstdlib_strlen(v52);
                  cstdlib_memset(v53, 0, v54);
                  cstdlib_strncpy(v53, v44, (v49 - v44));
                  v55 = *(a1 + 8);
                  v56 = cstdlib_strlen(v44);
                  v57 = heap_Calloc(v55, 1, v56 + 1);
                  if (!v57)
                  {
                    goto LABEL_85;
                  }

                  v58 = v57;
                  v59 = cstdlib_strlen(v44);
                  cstdlib_memset(v58, 0, v59 + 1);
                  cstdlib_strcpy(v58, v49 + 1);
                  v60 = heap_Calloc(*(a1 + 8), 1, 4);
                  if (!v60)
                  {
                    goto LABEL_86;
                  }

                  v61 = v60;
                  cstdlib_memset(v60, 0, 4uLL);
                  cstdlib_atof(v58);
                  *&v62 = v62;
                  *v61 = LODWORD(v62);
                  log_OutText(*(a1 + 32), v92, 5, 0, "Adding individual threshold %s : %1.5lf", v53, *&v62);
                  v63 = ssftmap_Insert(v91, v53, v61);
                  if ((v63 & 0x80000000) != 0)
                  {
                    goto LABEL_87;
                  }

                  v44 = v47 + 1;
                  v47 = cstdlib_strchr(v47 + 1, 59);
                  heap_Free(*(a1 + 8), v53);
                  heap_Free(*(a1 + 8), v58);
                  heap_Free(*(a1 + 8), v61);
                  a2 = v92;
                  if (!v47)
                  {
                    goto LABEL_55;
                  }
                }

LABEL_81:
                log_OutPublic(*(a1 + 32), a2, 24048, 0);
                NumericFeatureValue = 2304778246;
LABEL_84:
                v26 = v87;
                goto LABEL_95;
              }

              if (v44)
              {
LABEL_55:
                v64 = cstdlib_strchr(v44, 44);
                if (!v64)
                {
                  goto LABEL_81;
                }

                v65 = v64;
                v66 = *(a1 + 8);
                v67 = cstdlib_strlen(v44);
                v68 = heap_Calloc(v66, 1, v67 + 1);
                if (!v68)
                {
LABEL_82:
                  NumericFeatureValue = 2304778250;
                  v83 = *(a1 + 32);
                  v84 = v92;
                  goto LABEL_83;
                }

                v53 = v68;
                v69 = cstdlib_strlen(v44);
                cstdlib_memset(v53, 0, v69);
                cstdlib_strncpy(v53, v44, (v65 - v44));
                v70 = *(a1 + 8);
                v71 = cstdlib_strlen(v44);
                v72 = heap_Calloc(v70, 1, v71 + 1);
                if (!v72)
                {
LABEL_85:
                  v26 = v87;
                  NumericFeatureValue = 2304778250;
                  log_OutPublic(*(a1 + 32), v92, 24048, 0);
                  v85 = *(a1 + 8);
                  v86 = v53;
                  goto LABEL_90;
                }

                v58 = v72;
                v73 = cstdlib_strlen(v44);
                cstdlib_memset(v58, 0, v73 + 1);
                cstdlib_strcpy(v58, v65 + 1);
                v74 = heap_Calloc(*(a1 + 8), 1, 4);
                if (!v74)
                {
LABEL_86:
                  NumericFeatureValue = 2304778250;
                  log_OutPublic(*(a1 + 32), v92, 24048, 0);
                  v61 = 0;
LABEL_88:
                  v26 = v87;
                  heap_Free(*(a1 + 8), v53);
                  heap_Free(*(a1 + 8), v58);
                  if (v61)
                  {
                    v85 = *(a1 + 8);
                    v86 = v61;
LABEL_90:
                    heap_Free(v85, v86);
                  }

LABEL_95:
                  if (v26)
                  {
                    heap_Free(*(a1 + 8), v26);
                  }

                  return NumericFeatureValue;
                }

                v61 = v74;
                cstdlib_memset(v74, 0, 4uLL);
                cstdlib_atof(v58);
                *&v75 = v75;
                *v61 = LODWORD(v75);
                log_OutText(*(a1 + 32), v92, 5, 0, "Adding individual threshold %s : %1.5lf", v53, *&v75);
                v63 = ssftmap_Insert(v91, v53, v61);
                if ((v63 & 0x80000000) != 0)
                {
LABEL_87:
                  NumericFeatureValue = v63;
                  goto LABEL_88;
                }

                heap_Free(*(a1 + 8), v53);
                heap_Free(*(a1 + 8), v58);
                heap_Free(*(a1 + 8), v61);
                a2 = v92;
              }

              v26 = v87;
              v20 = v88;
            }

            setDictKeyString(&v109, "nn_tn_defaultPrediction", v20);
            v104 = -1;
            v27 = (*(a3 + 96))(a4, a5, "fecfg", &v109, &v105, &v104, &v103);
            if ((v27 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            if (v104)
            {
              v76 = v26;
              v77 = *v105;
              v78 = cstdlib_strchr(*v105, v103);
              if (v78)
              {
                *v78 = 0;
              }

              v79 = *(a1 + 8);
              v80 = cstdlib_strlen(v77);
              v81 = heap_Calloc(v79, 1, v80 + 1);
              *&v99 = v81;
              if (!v81)
              {
                NumericFeatureValue = 2304778250;
                log_OutPublic(*(a1 + 32), a2, 24048, 0);
                v26 = v76;
                goto LABEL_95;
              }

              cstdlib_strcpy(v81, v77);
              v26 = v76;
              v20 = v88;
            }

            setDictKeyString(&v109, "nn_tn_patternIndex", v20);
            v27 = getNumericFeatureValue(a3, a4, a5, &v109, &v99 + 4);
            if ((v27 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            NumericFeatureValue = ssftmap_Insert(*(a6 + 40), v26, &__b);
            if ((NumericFeatureValue & 0x80000000) != 0)
            {
              goto LABEL_95;
            }

            cstdlib_memset(&__b, 0, 0x20uLL);
            if (v26)
            {
              heap_Free(*(a1 + 8), v26);
            }

            if (v97 <= v20)
            {
              if (v96 != *(a6 + 72))
              {
                log_OutPublic(*(a1 + 32), a2, 24071, 0);
                return 2304778240;
              }

              return NumericFeatureValue;
            }
          }
        }
      }
    }

    return v13;
  }

  return NumericFeatureValue;
}

uint64_t patternMap_CopyData(const void *a1, void *a2, void *a3)
{
  v3 = 2304778247;
  if (a1 && a2 && a3)
  {
    v6 = heap_Calloc(a2, 1, 32);
    if (v6)
    {
      v7 = v6;
      cstdlib_memcpy(v6, a1, 0x20uLL);
      v3 = 0;
      *a3 = v7;
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

uint64_t floatThreshold_CopyData(const void *a1, uint64_t a2, void *a3)
{
  v3 = 2304778247;
  if (a1 && a2 && a3)
  {
    v6 = heap_Alloc(a2, 4);
    if (v6)
    {
      v7 = v6;
      cstdlib_memcpy(v6, a1, 4uLL);
      v3 = 0;
      *a3 = v7;
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

char *setDictKeyString(void *a1, const char *a2, unsigned int a3)
{
  cstdlib_memset(a1, 0, 0x20uLL);
  cstdlib_strcpy(a1, a2);
  v6 = LH_itoa(a3, v8, 0xAu);
  return cstdlib_strcat(a1, v6);
}

uint64_t addToAllPredictions(uint64_t a1, uint64_t a2, char *__s, uint64_t a4, _WORD *a5)
{
  if (*a5)
  {
    v10 = 0;
    while (1)
    {
      result = cstdlib_strcmp(__s, *(a4 + 8 * v10));
      if (!result)
      {
        break;
      }

      if (++v10 >= *a5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = *(a1 + 8);
    v13 = cstdlib_strlen(__s);
    v14 = heap_Calloc(v12, 1, v13 + 1);
    v15 = *a5;
    *(a4 + 8 * v15) = v14;
    if (v14)
    {
      *a5 = v15 + 1;
      cstdlib_strcpy(v14, __s);
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

uint64_t fe_luann_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2713722881;
  }

  result = 0;
  *a2 = &IFeLuaNN;
  return result;
}

uint64_t fe_luann_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2713722887;
  v16 = 0;
  v17 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v17);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v10 = heap_Alloc(v17[1], 968);
      if (!v10)
      {
        log_OutPublic(v17[4], "FE_LUANN", 83000, 0);
        return 2713722890;
      }

      v11 = v10;
      Object = objc_GetObject(v17[6], "SYNTHSTREAM", &v16);
      if ((Object & 0x80000000) != 0 || (*v11 = a3, v11[1] = a4, v13 = v16, v11[2] = v17, v11[3] = 0, v11[9] = *(v13 + 8), Allocator = ooc_utils_createAllocator((v11 + 4), a3, a4), Object = LH_ERROR_to_VERROR(Allocator), (Object & 0x80000000) != 0))
      {
        v5 = Object;
LABEL_10:
        fe_luann_ObjClose(*a5, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
        return v5;
      }

      *a5 = v11;
      *(a5 + 8) = 1081;
      v5 = fe_luann_ObjReopen(v11, *(a5 + 8));
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  return v5;
}

uint64_t fe_luann_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1081, 968);
  if ((v3 & 0x80000000) != 0)
  {
    return 2713722888;
  }

  v4 = v3;
  if (a1)
  {
    objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    if (*(a1 + 24))
    {
      luavmldoutil_destroy_lua_vm(a1 + 32, (a1 + 24));
    }

    OOCAllocator_Des();
    heap_Free(*(*(a1 + 16) + 8), a1);
  }

  return v4;
}

uint64_t fe_luann_ObjReopen(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1081, 968);
  if ((result & 0x80000000) != 0)
  {
    return 2713722888;
  }

  if (a1)
  {
    if (a1[3])
    {
      luavmldoutil_destroy_lua_vm((a1 + 4), a1 + 3);
    }

    LODWORD(result) = luavmldoutil_initialize_lua_vm(*a1, a1[1], (a1 + 4), "runTNIdentification", "FE_LUANN", a1 + 3, 0);
    if ((result & 0x80000000) != 0)
    {
      return 2713723392;
    }

    else if (a1[3])
    {
      return result;
    }

    else
    {
      return 2713723392;
    }
  }

  return result;
}

uint64_t fe_luann_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = safeh_HandleCheck(a1, a2, 1081, 968);
  if ((v7 & 0x80000000) != 0)
  {
    return 2713722888;
  }

  if (!a1)
  {
    return v7;
  }

  synstrmaux_InitStreamOpener(a1 + 80, *(*(a1 + 16) + 32), "FE_LUANN");
  synstrmaux_RegisterInStream((a1 + 80), "text/plain;charset=utf-8", 0, a1 + 904);
  synstrmaux_RegisterInStream((a1 + 80), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 80), "text/plain;charset=utf-8", a1 + 936);
  synstrmaux_RegisterOutStream((a1 + 80), "application/x-realspeak-markers-pp;version=4.0", a1 + 952);
  v8 = synstrmaux_OpenStreams((a1 + 80), *(a1 + 72), a3, a4);
  if ((v8 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 80), *(a1 + 72));
  }

  return v8;
}

uint64_t fe_luann_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  memset(v35, 0, sizeof(v35));
  __src = 0;
  v34 = 0;
  *v31 = 0;
  __n = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  if ((safeh_HandleCheck(a1, a2, 1081, 968) & 0x80000000) != 0)
  {
    return 2713722888;
  }

  *a5 = 1;
  v7 = (*(*(a1 + 72) + 144))(*(a1 + 904), *(a1 + 912), &v35[8], v35);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = (*(*(a1 + 72) + 144))(*(a1 + 920), *(a1 + 928), &v35[4], v35);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (*&v35[8])
  {
    v9 = (*(*(a1 + 72) + 88))(*(a1 + 904), *(a1 + 912), &__src, &__n + 4);
    if ((v9 & 0x80000000) != 0)
    {
      v8 = v9;
      v19 = 0;
      v15 = 0;
      v11 = 0;
    }

    else
    {
      v10 = heap_Alloc(*(*(a1 + 16) + 8), (HIDWORD(__n) + 1));
      v11 = v10;
      if (v10)
      {
        cstdlib_memcpy(v10, __src, HIDWORD(__n));
        *(v11 + HIDWORD(__n)) = 0;
        v12 = (*(*(a1 + 72) + 88))(*(a1 + 920), *(a1 + 928), v31, &__n);
        if ((v12 & 0x80000000) != 0)
        {
          v8 = v12;
          v19 = 0;
          v15 = 0;
        }

        else
        {
          v13 = __n;
          v14 = fe_luann_processLuaFunction(a1, "runTNIdentification", v11, *v31, (__n >> 5), &v30, &v28 + 1, &v26, &v27 + 1);
          v15 = v30;
          if ((v14 & 0x80000000) != 0)
          {
            v8 = v14;
            v19 = 0;
          }

          else
          {
            if (v30)
            {
              v16 = v30;
            }

            else
            {
              v16 = *v31;
            }

            if (v30)
            {
              v17 = HIWORD(v28);
            }

            else
            {
              v17 = v13 >> 5;
            }

            v18 = fe_luann_processLuaFunction(a1, "runHomographDisambiguation", v11, v16, v17, &v29, &v28, &v25, &v27);
            v19 = v29;
            if ((v18 & 0x80000000) == 0)
            {
              v20 = v28;
              v18 = (*(*(a1 + 72) + 104))(*(a1 + 936), *(a1 + 944), __src, HIDWORD(__n));
              if ((v18 & 0x80000000) == 0)
              {
                v21 = v19 ? v20 : v17;
                v22 = v19 ? v19 : v16;
                v18 = (*(*(a1 + 72) + 104))(*(a1 + 952), *(a1 + 960), v22, 32 * v21);
                if ((v18 & 0x80000000) == 0)
                {
                  v18 = (*(*(a1 + 72) + 96))(*(a1 + 904), *(a1 + 912), HIDWORD(__n));
                  if ((v18 & 0x80000000) == 0)
                  {
                    v18 = (*(*(a1 + 72) + 96))(*(a1 + 920), *(a1 + 928), __n);
                  }
                }
              }
            }

            v8 = v18;
          }
        }
      }

      else
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LUANN", 83000, 0);
        v19 = 0;
        v15 = 0;
        v8 = 2713722890;
      }
    }

    fe_luann_FreeMarkersMem(*(a1 + 16), v15, v26, HIWORD(v27));
    fe_luann_FreeMarkersMem(*(a1 + 16), v19, v25, v27);
    if (v11)
    {
      heap_Free(*(*(a1 + 16) + 8), v11);
    }

    return v8;
  }

  v23 = *v35;
  if (*v35)
  {
    if (*&v35[4])
    {
      v7 = (*(*(a1 + 72) + 88))(*(a1 + 920), *(a1 + 928), v31, &__n);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v7 = (*(*(a1 + 72) + 104))(*(a1 + 952), *(a1 + 960), *v31, __n);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v8 = (*(*(a1 + 72) + 96))(*(a1 + 920), *(a1 + 928), __n);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v23 = *v35;
    }

    if (!v23)
    {
      return v8;
    }

    return synstrmaux_CloseOutStreamsOnly((a1 + 80), *(a1 + 72));
  }

  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "clcpppipelinemode", &v34) & 0x80000000) != 0 || !v34 || !*v34)
  {
    *a5 = 0;
  }

  return v8;
}

uint64_t fe_luann_ProcessEnd(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1081, 968);
  if ((result & 0x80000000) != 0)
  {
    return 2713722888;
  }

  if (a1)
  {
    v4 = *(a1 + 72);

    return synstrmaux_CloseStreams((a1 + 80), v4);
  }

  return result;
}

uint64_t fe_luann_processLuaFunction(uint64_t a1, char *__s1, uint64_t a3, unsigned int *a4, unsigned int a5, uint64_t *a6, _WORD *a7, uint64_t **a8, _WORD *a9)
{
  v53 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v16 = cstdlib_strcmp(__s1, "runTNIdentification");
  *a6 = 0;
  *a7 = 0;
  v17 = PNEW_LDOObject_Con(a1 + 32, a1 + 32, &v51);
  v18 = LH_ERROR_to_VERROR(v17);
  if ((v18 & 0x80000000) != 0)
  {
    v20 = v18;
  }

  else
  {
    v19 = LuaVMLDO_RunFunctionWithStringAndMarkerArgumentsReturningTableWithNewMarkersInfo(*(a1 + 24), __s1, a3, a4, a5, v51);
    v20 = LH_ERROR_to_VERROR(v19);
    if ((v20 & 0x80000000) == 0)
    {
      v48 = v16;
      v21 = *(v51 + 32);
      v49 = *(v51 + 40);
      if (((v49 - v21) >> 5))
      {
        v22 = heap_Calloc(*(*(a1 + 16) + 8), ((v49 - v21) >> 5) + a5, 32);
        *a6 = v22;
        if (v22)
        {
          cstdlib_memcpy(v22, a4, 32 * a5);
          *a7 = a5;
          v23 = heap_Calloc(*(*(a1 + 16) + 8), ((v49 - v21) >> 5), 8);
          *a8 = v23;
          if (v23)
          {
            while (1)
            {
              if (v21 >= v49)
              {
                goto LABEL_40;
              }

              v24 = v21[3];
              v25 = LHString_BorrowCPtr(*v21);
              v26 = cstdlib_atoi(v25);
              v27 = LHString_BorrowCPtr(v24);
              v28 = cstdlib_strchr(v27, 20);
              if (!v28 || (v29 = v28, v30 = (v28 - v27), v30 > 0x1D))
              {
                v20 = 2713722880;
                goto LABEL_40;
              }

              cstdlib_strncpy(__dst, v27, v30);
              __dst[v30] = 0;
              v31 = LH_atoi(__dst);
              v32 = *a6;
              v33 = *a9;
              v34 = &(*a8)[v33];
              v35 = *a7;
              if (v48)
              {
                if (!*a7)
                {
                  goto LABEL_35;
                }

                v36 = 0;
                v37 = 12;
                while (*(v32 + v37) <= v26)
                {
                  ++v36;
                  v37 += 32;
                  if (v35 == v36)
                  {
                    goto LABEL_23;
                  }
                }

                LOWORD(v35) = v36;
LABEL_23:
                inserted = auxInsertMarker(a1, v32, a7, v35, v26, v31, 34, v29 + 1, v34);
                goto LABEL_33;
              }

              if (!*a7)
              {
                goto LABEL_35;
              }

              v38 = cstdlib_strcmp(v29 + 1, "normal");
              v39 = *a7;
              if (v38)
              {
                if (v39 >= 2)
                {
                  v40 = (v32 + 44);
                  v41 = 1;
                  while (1)
                  {
                    v42 = *v40;
                    v40 += 8;
                    if (v42 > v26)
                    {
                      break;
                    }

                    if (v39 == ++v41)
                    {
                      goto LABEL_30;
                    }
                  }

                  LOWORD(v39) = v41;
LABEL_30:
                  if (v39 != 1)
                  {
                    LOWORD(v39) = v39 - (*(v32 + 32 * v39 + 12) == v26);
                    goto LABEL_32;
                  }
                }
              }

              else if (v39 >= 2)
              {
                v44 = (v32 + 44);
                v45 = 1;
                while (1)
                {
                  v46 = *v44;
                  v44 += 8;
                  if (v46 >= v26)
                  {
                    break;
                  }

                  if (v39 == ++v45)
                  {
                    goto LABEL_32;
                  }
                }

                LOWORD(v39) = v45;
                goto LABEL_32;
              }

              LOWORD(v39) = 1;
LABEL_32:
              inserted = auxInsertMarker(a1, v32, a7, v39, v26, v31, 21, v29 + 1, v34);
LABEL_33:
              v20 = inserted;
              if ((inserted & 0x80000000) != 0)
              {
                goto LABEL_40;
              }

              LOWORD(v33) = *a9;
LABEL_35:
              v20 = 0;
              *a9 = v33 + 1;
              v21 += 4;
            }
          }
        }

        log_OutPublic(*(*(a1 + 16) + 32), "FE_LUANN", 83000, 0);
        v20 = 2713722890;
      }
    }
  }

LABEL_40:
  if (v51)
  {
    OOC_PlacementDeleteObject(a1 + 32, v51);
  }

  if ((v20 & 0x80000000) != 0)
  {
    fe_luann_FreeMarkersMem(*(a1 + 16), *a6, *a8, *a9);
    *a6 = 0;
    *a7 = 0;
    *a8 = 0;
    *a9 = 0;
  }

  return v20;
}

void *fe_luann_FreeMarkersMem(void *result, uint64_t a2, uint64_t *a3, int a4)
{
  LODWORD(v4) = a4;
  v6 = result;
  if (a2)
  {
    result = heap_Free(result[1], a2);
  }

  if (a3)
  {
    if (v4)
    {
      v4 = v4;
      v7 = a3;
      do
      {
        if (*v7)
        {
          heap_Free(v6[1], *v7);
        }

        ++v7;
        --v4;
      }

      while (v4);
    }

    v8 = v6[1];

    return heap_Free(v8, a3);
  }

  return result;
}

uint64_t auxInsertMarker(uint64_t a1, uint64_t a2, _WORD *a3, int a4, int a5, int a6, int a7, char *__s, char **a9)
{
  if (*a3 - 1 <= a4)
  {
    v17 = a4;
    goto LABEL_6;
  }

  if (a4)
  {
    v17 = a4;
    if (*(a2 + 32 * a4 - 28) < *(a2 + 32 * a4 + 4))
    {
      goto LABEL_8;
    }

LABEL_6:
    v18 = (a2 + 32 * v17 - 28);
    goto LABEL_9;
  }

  v17 = 0;
LABEL_8:
  v18 = (a2 + 32 * v17 + 4);
LABEL_9:
  v19 = *v18;
  v20 = *(*(a1 + 16) + 8);
  v21 = cstdlib_strlen(__s);
  v22 = heap_Alloc(v20, v21 + 1);
  if (v22)
  {
    v23 = v22;
    cstdlib_strcpy(v22, __s);
    v24 = *a3 - a4;
    if (v24)
    {
      cstdlib_memmove((a2 + 32 * a4 + 32), (a2 + 32 * a4), 32 * v24);
    }

    result = 0;
    v26 = a2 + 32 * a4;
    *(v26 + 24) = v23;
    *(v26 + 12) = a5;
    *(v26 + 16) = a6;
    *v26 = a7;
    *(v26 + 4) = v19;
    *(v26 + 8) = 0;
    *a9 = v23;
    ++*a3;
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LUANN", 83000, 0);
    return 2713722890;
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
  if (cstdlib_strcmp(__s1, "normal"))
  {
    return cstdlib_strstr(__s1, a3) != 0;
  }

  else
  {
    return cstdlib_strcmp(a3, a1) == 0;
  }
}

uint64_t fe_udwl_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  __src[1] = *MEMORY[0x277D85DE8];
  v330 = 0uLL;
  v8 = 2323652618;
  v326 = 0;
  v327 = 0;
  v325 = 0;
  v323 = 0;
  v322 = 0;
  v320 = 0;
  v319 = 0;
  v318 = 15;
  v317 = 0;
  v316 = 0;
  *__s1 = 0;
  v315 = 0;
  v312 = 0;
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v329 = 0;
  v328 = 0;
  v324 = 0;
  *a5 = 1;
  if (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "numberoutputtranscriptions", &v312) < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v312;
  }

  if (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "udctmaxdictretlen", &v312) < 0)
  {
    v10 = 512;
  }

  else
  {
    v10 = v312;
  }

  v11 = (*(*(a1 + 48) + 144))(*(a1 + 880), *(a1 + 888), &v330 + 12, &v330 + 4);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v17 = (*(*(a1 + 48) + 144))(*(a1 + 896), *(a1 + 904), &v330 + 8, &v330 + 4);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s", v12, v13, v14, v15, v16, "BEG");
  if (HIDWORD(v330))
  {
    v11 = (*(*(a1 + 48) + 144))(*(a1 + 880), *(a1 + 888), &v330 + 12, &v330 + 4);
    if ((v11 & 0x80000000) == 0)
    {
      v18 = heap_Calloc(*(*(a1 + 16) + 8), 1, (HIDWORD(v330) + 1));
      if (!v18)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
        v39 = 0;
        v26 = 0;
        v23 = 0;
        v309 = 0;
        v27 = 0;
        v40 = 0;
        v41 = 0;
        v310 = 0;
LABEL_55:
        log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s %s%u", v34, v35, v36, v37, v38, "END");
        if (v39 && v18)
        {
          v43 = v41 + v319;
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
            v317 = 0;
          }

          if (v27)
          {
            heap_Free(*(*(a1 + 16) + 8), v27);
          }

          if (v309)
          {
            heap_Free(*(*(a1 + 16) + 8), v309);
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

          if (v310)
          {
            heap_Free(*(*(a1 + 16) + 8), v310);
          }

          return v8;
        }

LABEL_65:
        heap_Free(*(*(a1 + 16) + 8), v39);
        v320 = 0;
        goto LABEL_66;
      }

      v11 = (*(*(a1 + 48) + 80))(*(a1 + 880), *(a1 + 888), v18, HIDWORD(v330), &v330);
      if ((v11 & 0x80000000) == 0)
      {
        v18[HIDWORD(v330)] = 0;
        log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "text/plain;charset=utf-8", v18, v330);
        MainLangLC = (*(*(a1 + 48) + 88))(*(a1 + 896), *(a1 + 904), &v329, &v328);
        if ((MainLangLC & 0x80000000) != 0)
        {
          v26 = 0;
          v23 = 0;
          v309 = 0;
          v27 = 0;
          v40 = 0;
          LOWORD(v21) = 0;
        }

        else
        {
          v20 = v328;
          v21 = v328 >> 5;
          if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
          {
            log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "application/x-realspeak-markers-pp;version=4.0", v329, v20 & 0x1FFFE0);
          }

          v22 = *(a1 + 944);
          if (!v22 || !(*(v22 + 80))(*(a1 + 952), *(a1 + 960)))
          {
            v42 = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v18, v330);
            if ((v42 & 0x80000000) == 0)
            {
              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v18, v330);
              v42 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v329, v328);
              if ((v42 & 0x80000000) == 0)
              {
                if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                {
                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "application/x-realspeak-markers-pp;version=4.0", v329, v20 & 0x1FFFE0);
                }

                v42 = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v328);
              }
            }

            v8 = v42;
            v26 = 0;
            v23 = 0;
LABEL_51:
            v309 = 0;
            v27 = 0;
            v40 = 0;
            v310 = 0;
LABEL_54:
            heap_Free(*(*(a1 + 16) + 8), v18);
            v41 = v21;
            v39 = v320;
            v18 = v317;
            goto LABEL_55;
          }

          cstdlib_strcpy(__dst, " §");
          v315 = "normal";
          v322 = "normal";
          MainLangLC = hlp_GetMainLangLC(*(*(a1 + 16) + 40), v313);
          if ((MainLangLC & 0x80000000) == 0)
          {
            v23 = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 968) + 1, 1);
            if (v23)
            {
              v24 = v330;
              if (v330 < v10)
              {
                v24 = v10;
              }

              v308 = heap_Calloc(*(*(a1 + 16) + 8), v9 + v9 * v24 + 1, 1);
              if (v308)
              {
                v25 = v9 + v9 * v10;
                if (v25 > 0xFFFE)
                {
                  v26 = 0;
                  v309 = 0;
                  v27 = 0;
                  v310 = 0;
                  v8 = 2323652623;
LABEL_148:
                  v40 = v308;
                  goto LABEL_54;
                }

                __len = v25 + 1;
                v26 = heap_Calloc(*(*(a1 + 16) + 8), __len, 1);
                v47 = *(a1 + 16);
                if (v26)
                {
                  v48 = heap_Alloc(*(v47 + 8), v328);
                  if (v48)
                  {
                    v310 = v48;
                    cstdlib_memcpy(v48, v329, v328);
                    log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Markers IN");
                    v271 = v25;
                    v307 = (v20 >> 5);
                    v266 = v20;
                    if ((v20 >> 5))
                    {
                      v272 = v20 >> 5;
                      v49 = v310 + 2;
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
                      v53 = v310 + 4;
                      v54 = v307;
                      LOWORD(v21) = v272;
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

                    v55 = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), &v323, 0);
                    if ((v55 & 0x80000000) != 0)
                    {
                      v309 = 0;
                      v27 = 0;
                      v8 = v55;
                      goto LABEL_148;
                    }

                    MultiWordEntry = v55;
                    v320 = heap_Calloc(*(*(a1 + 16) + 8), v307, 8);
                    v56 = *(a1 + 16);
                    v297 = v320;
                    if (!v320 || (v317 = heap_Calloc(*(v56 + 8), v307, 4), v56 = *(a1 + 16), (v293 = v317) == 0) || (v57 = heap_Calloc(*(v56 + 8), (v330 + 1), 2), v56 = *(a1 + 16), (v258 = v57) == 0))
                    {
                      log_OutPublic(*(v56 + 32), "FE_UDWL", 40000, 0);
                      v309 = 0;
                      v27 = 0;
                      goto LABEL_148;
                    }

                    v273 = v21;
                    v309 = heap_Calloc(*(v56 + 8), (v330 + 1), 2);
                    if (!v309)
                    {
                      log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
                      v309 = 0;
                      goto LABEL_460;
                    }

                    v274 = v310 + 3;
                    v306 = v310[3];
                    if (!v307)
                    {
                      v287 = 0;
                      goto LABEL_151;
                    }

                    v58 = 0;
                    do
                    {
                      v59 = &v310[8 * v58];
                      if (v59[3] != v306)
                      {
                        break;
                      }

                      hlp_KeepTrackBeforeMovingOn(&v310[8 * v58], &v318 + 1, &v322, &v315, &v318);
                      *(v297 + 8 * v58) = v59;
                      *&v293[4 * v58] = 0;
                      v58 = (v58 + 1);
                    }

                    while (v58 < v21);
                    v287 = v58;
                    v60 = 0;
                    v269 = v315;
                    v277 = v322;
                    v61 = 0xFFFFLL;
                    v62 = v310;
                    v63 = v307;
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
                            v280 = v64;
                            v294 = v64;
                            if (v64 == 0xFFFF)
                            {
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword end tag at position %u - start position missing (or ignored)");
                            }

                            else
                            {
                              v298 = v65[3] - v306;
                              v70 = (*(v65 + 6) - v306);
                              if (v70 == v330 && utf8_BelongsToSet(3, v18, v70 - 1, v70))
                              {
                                if (v298 == 1)
                                {
                                  LOWORD(v298) = 1;
                                }

                                else
                                {
                                  v71 = (v298 - 1);
                                  if (utf8_BelongsToSet(3, v18, v71, v330))
                                  {
                                    v72 = v298 - 1;
                                    do
                                    {
                                      LOWORD(v298) = v72;
                                      PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(v18, v71, v330);
                                      if (!PreviousUtf8OffsetLimit)
                                      {
                                        break;
                                      }

                                      v71 = PreviousUtf8OffsetLimit;
                                      v72 = PreviousUtf8OffsetLimit;
                                    }

                                    while (utf8_BelongsToSet(3, v18, PreviousUtf8OffsetLimit, v330));
                                  }
                                }
                              }

                              LOWORD(v327) = v271;
                              if (v298 - v294 >= *(a1 + 968))
                              {
                                log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "MW lookup len %u  exceeds maxLookupLen %u - skipping");
                              }

                              else
                              {
                                *(v258 + 2 * v280) = v298;
                                *(&v247 + 1) = &__s1[4];
                                *&v247 = &v327;
                                if (hlp_ValidateMultiWordMarker(a1, a2, v18, v280, v298, v23, v269, v277, v26, v247, __s1, v325))
                                {
                                  *(v309 + 2 * v280) = v298;
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
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword start tag at position %u - nested tag found at position %u, using this as start position", v64, (v65[3] - v306));
                            }

                            v61 = (v65[3] - v306);
LABEL_140:
                            v62 = v310;
                            v63 = v307;
                            goto LABEL_141;
                          }
                        }

                        else if (v66 == 34 && ~v64 != 0)
                        {
LABEL_123:
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword tag at position %u - contains internal tags (tn, phon)", v64);
                          v63 = v307;
                          v62 = v310;
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
                        v267 = cstdlib_strlen(v18);
                        if (v267)
                        {
                          v74 = 0;
                          v263 = 0;
                          v265 = 0;
                          v75 = 0;
                          v278 = v287;
                          v76 = v267;
                          while (1)
                          {
                            v326 = 0;
                            v77 = v75;
                            v295 = v75;
                            NextUtf8OffsetLimit = v75;
                            if (v75 < v76)
                            {
                              NextUtf8OffsetLimit = v75;
                              if (utf8_BelongsToSet(3, v18, v75, v76))
                              {
                                do
                                {
                                  NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v18, v77, v76);
                                  v77 = NextUtf8OffsetLimit;
                                }

                                while (NextUtf8OffsetLimit < v76 && utf8_BelongsToSet(3, v18, NextUtf8OffsetLimit, v76));
                              }
                            }

                            if (v263)
                            {
                              v268 = 0;
                              v78 = v295;
                              v79 = NextUtf8OffsetLimit;
                            }

                            else
                            {
                              v80 = HIWORD(v316);
                              v81 = v316;
                              if (v295 <= NextUtf8OffsetLimit)
                              {
                                v82 = v295;
                                do
                                {
                                  v83 = *(v258 + 2 * v82);
                                  if (*(v258 + 2 * v82))
                                  {
                                    v81 = *(v258 + 2 * v82);
                                    v80 = v82;
                                  }

                                  ++v82;
                                }

                                while (v82 <= NextUtf8OffsetLimit && !v83);
                                v268 = v83 != 0;
                              }

                              else
                              {
                                v268 = 0;
                              }

                              HIWORD(v316) = v80;
                              LOWORD(v316) = v81;
                              v79 = NextUtf8OffsetLimit;
                              if (v295 == NextUtf8OffsetLimit)
                              {
                                v78 = v295;
                                v84 = *(v258 + 2 * v295);
                                if (v84)
                                {
                                  HIWORD(v316) = v295;
                                  LOWORD(v316) = v84;
                                  v268 = 1;
                                }
                              }

                              else
                              {
                                v78 = v295;
                              }
                            }

                            v85 = v79;
                            if (v79 > v78)
                            {
                              if (v79 >= HIWORD(v316))
                              {
                                v85 = HIWORD(v316);
                              }

                              if (v268 && v79 < v316)
                              {
                                v79 = v85;
                              }

                              else
                              {
                                v79 = v79;
                              }

                              v300 = v79;
                              v86 = v79 - v74;
                              if (v86 >= 1)
                              {
                                v87 = &v18[v78];
                                MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v87, v86);
                                if ((MultiWordEntry & 0x80000000) != 0)
                                {
                                  goto LABEL_422;
                                }

                                log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v87, v86);
                              }

                              v79 = v300;
                              v78 = v300;
                            }

                            v301 = v79;
                            v88 = v278;
                            if (v307 > v278)
                            {
                              v89 = v78;
                              v281 = v317;
                              v288 = v320;
                              v90 = v278 + v319;
                              do
                              {
                                v91 = &v310[8 * v88];
                                v92 = v91[3];
                                if (v89 < (v92 - v306))
                                {
                                  break;
                                }

                                v91[3] = v92 + v265;
                                *(v288 + 8 * v90) = v91;
                                *&v281[4 * v90] = 0;
                                hlp_KeepTrackBeforeMovingOn(v91, &v318 + 1, &v322, &v315, &v318);
                                v88 = (v88 + 1);
                                ++v90;
                              }

                              while (v307 > v88);
                            }

                            v278 = v88;
                            LOWORD(v327) = v271;
                            if (v268)
                            {
                              v302 = v316;
                              v93 = HIWORD(v316);
                              v94 = v316 - HIWORD(v316);
                              HIWORD(v327) = v316 - HIWORD(v316);
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "SET MW %u %u", HIWORD(v316), v316);
                              cstdlib_strncpy(v23, &v18[v93], v94);
                              v260 = 0;
                              v23[v94] = 0;
                              v270 = v94;
                              v95 = v302;
                              goto LABEL_190;
                            }

                            v311 = 0;
                            MultiWordEntry = hlp_FindMultiWordEntry(a1, a2, v18, v267, v310, (v266 >> 5), v309, v301, v315, v322, &v316 + 1, &v316, v23, &v327 + 1, v271, &__s1[4], __s1, &v311);
                            if ((MultiWordEntry & 0x80000000) != 0)
                            {
                              goto LABEL_422;
                            }

                            if (v311)
                            {
                              break;
                            }

                            cstdlib_memset(v23, 0, *(a1 + 968) + 1);
                            v270 = 0;
                            if (v301 >= v267)
                            {
                              v296 = v301;
                              LODWORD(v120) = v301;
LABEL_266:
                              v121 = v267;
                            }

                            else
                            {
                              v270 = 0;
                              v120 = v301;
                              v296 = v301;
                              v121 = v267;
                              while (!utf8_BelongsToSet(3, v18, v120, v121))
                              {
                                Utf8Symbol = utf8_GetUtf8Symbol(v18, v120, v121, __src);
                                if (Utf8Symbol + v270 >= *(a1 + 968))
                                {
                                  LODWORD(v120) = v296;
                                  goto LABEL_266;
                                }

                                v123 = Utf8Symbol;
                                cstdlib_strcpy(&v23[v270], __src);
                                v270 += v123;
                                v121 = v267;
                                v296 = utf8_GetNextUtf8OffsetLimit(v18, v120, v267);
                                v120 = v296;
                                if (v296 >= v267)
                                {
                                  break;
                                }
                              }
                            }

                            HIWORD(v327) = v270;
                            if (v120 >= v121 || utf8_BelongsToSet(3, v18, v120, v267))
                            {
                              if (v270)
                              {
                                v262 = 0;
                                v260 = 0;
                                v98 = v307;
                                v99 = v278;
                                v95 = v296;
                                LOWORD(v93) = v301;
                                goto LABEL_191;
                              }
                            }

                            else
                            {
                              for (i = v296; v296 < v267; i = v296)
                              {
                                if (utf8_BelongsToSet(3, v18, i, v267))
                                {
                                  break;
                                }

                                v296 = utf8_GetNextUtf8OffsetLimit(v18, i, v267);
                              }

                              v138 = i - v301;
                              if (v138 >= 1)
                              {
                                MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v18[v301], v138);
                                if ((MultiWordEntry & 0x80000000) != 0)
                                {
                                  goto LABEL_422;
                                }

                                log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v18[v301], v138);
                              }
                            }

LABEL_407:
                            v75 = v296;
LABEL_408:
                            v74 = v75;
                            v76 = v267;
                            if (v75 >= v267)
                            {
                              v222 = v319;
                              v223 = v265;
                              LODWORD(v287) = v278;
                              goto LABEL_424;
                            }
                          }

                          v93 = HIWORD(v316);
                          v96 = v316;
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "SET UMW %u %u", HIWORD(v316), v316);
                          v97 = HIWORD(v327);
                          cstdlib_strncpy(v23, &v18[v93], HIWORD(v327));
                          v23[v97] = 0;
                          v260 = 1;
                          v270 = v97;
                          v95 = v96;
LABEL_190:
                          v262 = !v268;
                          v98 = v307;
                          v99 = v278;
LABEL_191:
                          v324 = 1;
                          v100 = v99;
                          v296 = v95;
                          v303 = v93;
                          if (v98 <= v99)
                          {
                            v255 = v99;
                          }

                          else
                          {
                            v101 = v93;
                            v282 = v320;
                            v279 = v319;
                            v102 = v317;
                            while (1)
                            {
                              v103 = &v310[8 * v100];
                              v104 = v103[3];
                              if (v101 < (v104 - v306))
                              {
                                break;
                              }

                              v103[3] = v104 + v265;
                              v105 = v279 + v100;
                              *(v282 + 8 * v105) = v103;
                              *&v102[4 * v105] = 0;
                              hlp_KeepTrackBeforeMovingOn(v103, &v318 + 1, &v322, &v315, &v318);
                              v100 = (v100 + 1);
                              if (v307 <= v100)
                              {
                                v278 = v100;
                                v255 = v100;
                                goto LABEL_198;
                              }
                            }

                            v255 = v100;
                            v278 = v100;
                          }

LABEL_198:
                          LOWORD(v327) = v271;
                          __s1[4] = 0;
                          v106 = v322;
                          if (cstdlib_strcmp(v322, "spell"))
                          {
                            v112 = HIDWORD(v318) == 0;
                          }

                          else
                          {
                            v112 = 0;
                          }

                          LODWORD(v264) = v271;
                          if (v112)
                          {
                            cstdlib_strncpy(v308, &v18[v303], v270);
                            v308[v270] = 0;
                            log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "lookup = %s", v308);
                            cstdlib_memset(v26, 0, __len);
                            *(&v246 + 1) = &__s1[4];
                            *&v246 = &v327;
                            MultiWordEntry = fe_udwl_MatchUDctWord(a1, a2, 1, v23, v315, v106, &v324, v26, v246, __s1, &v325, &v326 + 1, &v326);
                            if ((MultiWordEntry & 0x80000000) == 0)
                            {
                              v113 = cstdlib_strlen(v26);
                              log_OutEvent(*(*(a1 + 16) + 32), 32, "%s%s%s%s", v114, v115, v116, v117, v118, "TEXT");
                              LODWORD(v264) = v113;
                              goto LABEL_205;
                            }

                            LODWORD(v264) = v271;
                          }

                          else
                          {
LABEL_205:
                            if ((MultiWordEntry & 0x80000000) == 0 && v327 && v271 > v327)
                            {
                              log_OutEvent(*(*(a1 + 16) + 32), 19, "%s%s", v107, v108, v109, v110, v111, "URI");
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "return string = %s", v26);
                              v259 = v306 + v303 + v265;
                              v254 = sameLanguage(v313, v315, &__s1[4]);
                              if (!v254)
                              {
                                if ((cstdlib_strncmp(&__s1[4], "he", 2uLL) || cstdlib_strncmp(v313, "he", 2uLL)) && (cstdlib_strncmp(&__s1[4], "ar", 2uLL) || cstdlib_strncmp(v313, "ar", 2uLL)) && (cstdlib_strncmp(&__s1[4], "fa", 2uLL) || cstdlib_strncmp(v313, "fa", 2uLL)))
                                {
                                  v119 = &__s1[4];
                                }

                                else
                                {
                                  v119 = "normal";
                                }

                                inserted = hlp_InsertLangMarker(a1, v119, v259, v259, &v320, &v317, (v266 >> 5), v278, &v319);
                                if ((inserted & 0x80000000) != 0)
                                {
                                  goto LABEL_451;
                                }

                                MultiWordEntry = 0;
                              }

                              if (v324 == 4)
                              {
                                if (v327 >= 4u && !cstdlib_memcmp("\x11/<", v26, 3uLL) && !cstdlib_memcmp("\x11/<", &v26[v264 - 3], 3uLL))
                                {
                                  cstdlib_memmove(v26, v26 + 3, v264 - 6);
                                  v264 = v264 - 6;
                                  v26[v264] = 0;
                                  LOWORD(v327) = v327 - 6;
                                  log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "transformed lookup = %s", v26);
                                  v285 = v319;
                                  v151 = v307 + v319;
                                  v152 = heap_Realloc(*(*(a1 + 16) + 8), v320, (8 * v151 + 16));
                                  if (!v152)
                                  {
                                    goto LABEL_459;
                                  }

                                  v153 = v152;
                                  v320 = v152;
                                  v154 = heap_Realloc(*(*(a1 + 16) + 8), v317, (4 * v151 + 8));
                                  if (!v154)
                                  {
                                    goto LABEL_459;
                                  }

                                  v155 = v154;
                                  v317 = v154;
                                  *&v154[4 * v151] = 0;
                                  v156 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                  if (!v156)
                                  {
                                    goto LABEL_459;
                                  }

                                  v156[6] = 60;
                                  *v156 = 7;
                                  v156[1] = v259;
                                  v156[2] = 0;
                                  v156[3] = v259;
                                  v156[4] = 0;
                                  v157 = (v153 + 8 * (v255 + v285));
                                  *v157 = v156;
                                  v158 = &v155[4 * (v255 + v285)];
                                  *v158 = 1;
                                  v159 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                  if (!v159)
                                  {
                                    v319 = v285 + 1;
                                    goto LABEL_459;
                                  }

                                  LOWORD(v289) = 0;
                                  v159[6] = v318;
                                  v160 = v259 + v264;
                                  *v159 = 7;
                                  v159[1] = v160;
                                  v159[2] = 0;
                                  v159[3] = v160;
                                  v159[4] = 0;
                                  v157[1] = v159;
                                  *(v158 + 1) = 1;
                                  v319 = v285 + 2;
                                  goto LABEL_353;
                                }
                              }

                              else if (v324 == 1)
                              {
                                v284 = v319;
                                v125 = v307 + v319;
                                v253 = heap_Realloc(*(*(a1 + 16) + 8), v320, (8 * v125 + 16));
                                if (!v253)
                                {
                                  goto LABEL_459;
                                }

                                v320 = v253;
                                v252 = heap_Realloc(*(*(a1 + 16) + 8), v317, (4 * v125 + 8));
                                if (!v252)
                                {
                                  goto LABEL_459;
                                }

                                v317 = v252;
                                *&v252[4 * v125] = 0;
                                v250 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                if (!v250)
                                {
                                  goto LABEL_459;
                                }

                                v126 = cstdlib_strlen(v26);
                                if (cstdlib_strlen(__s1) == 3)
                                {
                                  v127 = 14;
                                }

                                else
                                {
                                  v127 = 10;
                                }

                                __s = heap_Calloc(*(*(a1 + 16) + 8), (v127 + v126), 1);
                                if (!__s)
                                {
                                  log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
                                  v244 = *(*(a1 + 16) + 8);
                                  v245 = v250;
                                  goto LABEL_453;
                                }

                                cstdlib_strcpy(__s, v26);
                                if (v268 || v262)
                                {
                                  v128 = cstdlib_strlen(v23);
                                  if (v270)
                                  {
                                    v129 = v128;
                                    if (!utf8_BelongsToSet(3, v23, 0, v128))
                                    {
                                      v132 = 0;
                                      goto LABEL_279;
                                    }

                                    v130 = 0;
                                    while (1)
                                    {
                                      NextUtf8Offset = utf8_GetNextUtf8Offset(v23, v130);
                                      v132 = NextUtf8Offset;
                                      if (v270 <= NextUtf8Offset)
                                      {
                                        break;
                                      }

                                      v130 = NextUtf8Offset;
                                      if (!utf8_BelongsToSet(3, v23, NextUtf8Offset, v129))
                                      {
                                        goto LABEL_279;
                                      }
                                    }

                                    if (v270)
                                    {
LABEL_279:
                                      PreviousUtf8Offset = v270;
                                      while (1)
                                      {
                                        v140 = PreviousUtf8Offset;
                                        if (!utf8_BelongsToSet(3, v23, PreviousUtf8Offset, v129))
                                        {
                                          break;
                                        }

                                        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v23, v140);
                                        if (!PreviousUtf8Offset)
                                        {
                                          goto LABEL_293;
                                        }
                                      }

                                      v248 = v140;
                                      if (v140 > v132)
                                      {
                                        v290 = 1;
                                        do
                                        {
                                          if (!v23[v132])
                                          {
                                            break;
                                          }

                                          v141 = v132;
                                          if (utf8_BelongsToSet(3, v23, v132, v129))
                                          {
                                            ++v290;
                                            if (v132 < v270)
                                            {
                                              while (1)
                                              {
                                                v141 = v132;
                                                if (!utf8_BelongsToSet(3, v23, v132, v129))
                                                {
                                                  break;
                                                }

                                                v142 = utf8_GetNextUtf8Offset(v23, v132);
                                                v132 = v142;
                                                if (v270 <= v142)
                                                {
                                                  v141 = v142;
                                                  break;
                                                }
                                              }
                                            }
                                          }

                                          v132 = utf8_GetNextUtf8Offset(v23, v141);
                                        }

                                        while (v248 >= v132);
LABEL_294:
                                        LOWORD(__src[0]) = 0;
                                        LOWORD(v311) = 0;
                                        v143 = v327;
                                        v144 = cstdlib_strchr(__s, 18);
                                        v145 = v144 - __s;
                                        if (!v144)
                                        {
                                          v145 = v143;
                                        }

                                        v146 = utf8_countNbrOfPhonWords(__s, v145, __src, &v311);
                                        v147 = v290;
                                        v167 = v290 >= v146;
                                        v148 = v290 > v146;
                                        v291 = v290 - v146;
                                        if (!v167)
                                        {
                                          v289 = v146 - v147;
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE1 modification : insert %u dummy words (%u orthographic words, %u phonetic words)", (v146 - v147), v147 + 1, v146 + 1);
                                          goto LABEL_332;
                                        }

                                        if (v148)
                                        {
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE2 modification : hyphenate words (%u orthographic words, %u phonetic words)", v147, v146);
                                          v149 = v270;
                                          cstdlib_strncpy(v308, &v18[v303], v270);
                                          v308[v270] = 0;
                                          v150 = v270;
                                          while (--v150)
                                          {
                                            if (v308[v150] != 32)
                                            {
                                              while (v308[v150] != 32)
                                              {
                                                if (!--v150)
                                                {
                                                  goto LABEL_320;
                                                }
                                              }

                                              while (v291)
                                              {
                                                while (v308[v150] == 32)
                                                {
                                                  v308[v150--] = 45;
                                                  if (!v150)
                                                  {
                                                    goto LABEL_320;
                                                  }
                                                }

                                                --v291;
                                                while (v308[v150] != 32)
                                                {
                                                  if (!--v150)
                                                  {
                                                    goto LABEL_320;
                                                  }
                                                }
                                              }

                                              break;
                                            }
                                          }

LABEL_320:
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE2 modification : now %s", v308);
                                          if (v270)
                                          {
                                            v161 = &v18[v303];
                                            v162 = v308;
                                            do
                                            {
                                              v163 = *v162++;
                                              *v161++ = v163;
                                              --v149;
                                            }

                                            while (v149);
                                          }

                                          if (v307)
                                          {
                                            v164 = 0;
                                            v249 = v306 + (v303 + v265);
                                            v165 = v310 + 3;
                                            do
                                            {
                                              v166 = *v165 - *v274;
                                              v167 = v166 <= v303 || v166 >= v303 + v270;
                                              if (!v167)
                                              {
                                                log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "realign Markers in midword postions to start of word Mrk[%u].posCur from %u to %u", v164, *v165, v249);
                                                *v165 = v249;
                                              }

                                              ++v164;
                                              v165 += 8;
                                            }

                                            while (v307 != v164);
                                          }
                                        }

LABEL_331:
                                        v289 = 0;
                                        goto LABEL_332;
                                      }
                                    }
                                  }

LABEL_293:
                                  v290 = 0;
                                  goto LABEL_294;
                                }

                                if (v327 < 3u)
                                {
                                  goto LABEL_331;
                                }

                                v289 = 0;
                                v133 = 1;
                                do
                                {
                                  v134 = &__s[v133];
                                  v135 = *v134;
                                  if (v135 == 35 || v135 == 95)
                                  {
                                    if (v134[1] == 18)
                                    {
                                      v136 = v289;
                                    }

                                    else
                                    {
                                      v136 = v289 + 1;
                                    }

                                    v289 = v136;
                                  }

                                  else if (v135 == 18)
                                  {
                                    break;
                                  }

                                  ++v133;
                                }

                                while ((v327 - 1) > v133);
LABEL_332:
                                if (v270)
                                {
                                  v168 = v270;
                                  v169 = &v18[v303];
                                  do
                                  {
                                    if (*v169 == 95)
                                    {
                                      *v169 = 45;
                                    }

                                    ++v169;
                                    --v168;
                                  }

                                  while (v168);
                                }

                                cstdlib_strcat(__s, "\x14");
                                cstdlib_strcat(__s, "EXTDCT");
                                if (cstdlib_strlen(__s1) == 3)
                                {
                                  cstdlib_strcat(__s, "\x14");
                                  cstdlib_strcat(__s, __s1);
                                }

                                *(v250 + 3) = __s;
                                *v250 = 34;
                                *(v250 + 1) = v259;
                                v170 = v255 + v284;
                                v171 = v278;
                                *(v250 + 2) = 0;
                                *(v250 + 3) = v259;
                                *(v250 + 4) = 0;
                                *(v253 + 8 * v170) = v250;
                                *&v252[4 * v170] = 1;
                                if (v307 > v278)
                                {
                                  while (1)
                                  {
                                    v172 = &v310[8 * v171];
                                    v173 = v172[3];
                                    if (v296 < (v173 - v306))
                                    {
                                      break;
                                    }

                                    v174 = v173 + v265;
                                    if (*v172 == 36)
                                    {
                                      v174 = v306 + v265 + v296 + 3 * v289;
                                    }

                                    if (*v172 == 21)
                                    {
                                      v174 = v306 + v265 + v296 + 3 * v289;
                                    }

                                    v172[3] = v174;
                                    v175 = v284 + v171;
                                    *(v253 + 8 + 8 * v175) = v172;
                                    *&v252[4 * v175 + 4] = 0;
                                    hlp_KeepTrackBeforeMovingOn(v172, &v318 + 1, &v322, &v315, &v318);
                                    v171 = (v171 + 1);
                                    if (v307 <= v171)
                                    {
                                      v278 = v171;
                                      LODWORD(v171) = v171;
                                      goto LABEL_348;
                                    }
                                  }

                                  v278 = v171;
                                }

LABEL_348:
                                if (v296 < v267)
                                {
                                  v176 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                  v177 = *(a1 + 16);
                                  v256 = v176;
                                  if (!v176)
                                  {
                                    log_OutPublic(*(v177 + 32), "FE_UDWL", 40000, 0);
LABEL_457:
                                    v319 = v284 + 1;
                                    goto LABEL_460;
                                  }

                                  v178 = *(v177 + 8);
                                  v251 = v322;
                                  v179 = cstdlib_strlen(v322);
                                  v180 = heap_Alloc(v178, (v179 + 1));
                                  if (!v180)
                                  {
                                    log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
                                    heap_Free(*(*(a1 + 16) + 8), v256);
                                    goto LABEL_457;
                                  }

                                  v181 = v180;
                                  cstdlib_strcpy(v180, v251);
                                  *(v256 + 24) = v181;
                                  v182 = v306 + v265 + v296 + 3 * v289;
                                  *v256 = 21;
                                  *(v256 + 4) = v182;
                                  *(v256 + 8) = 0;
                                  *(v256 + 12) = v182;
                                  *(v256 + 16) = 0;
                                  *(v253 + 8 * (v171 + v284) + 8) = v256;
                                  *&v252[4 * (v171 + v284) + 4] = 1;
                                  LOWORD(v284) = v284 + 1;
                                }

                                v265 += 3 * v289;
                                v319 = v284 + 1;
LABEL_353:
                                if (v254)
                                {
                                  v283 = (v260 | v268) == 0;
                                  goto LABEL_355;
                                }

                                if (v324 == 1)
                                {
                                  v185 = v296;
                                }

                                else
                                {
                                  v185 = v264;
                                }

                                v186 = v306;
                                if (v324 != 1)
                                {
                                  v186 = v306 + v303;
                                }

                                inserted = hlp_InsertLangMarker(a1, v315, v186 + v185 + v265, v186 + v185 + v265, &v320, &v317, (v266 >> 5), v278, &v319);
                                if ((inserted & 0x80000000) != 0)
                                {
                                  goto LABEL_451;
                                }

                                v184 = 0;
                                v283 = (v260 | v268) == 0;
                                v183 = v303;
LABEL_363:
                                v187 = v296 - v183;
                                if (v187 < 1)
                                {
                                  goto LABEL_369;
                                }

                                if (v327 >= v10)
                                {
                                  v184 = 1;
                                }

                                if (v324 == 1 || !v327 || v184)
                                {
                                  v214 = v326;
                                  if (v187 <= v326)
                                  {
                                    v214 = 0;
                                    LOWORD(v326) = 0;
                                  }

                                  MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v18[v303], (v187 - v214));
                                  if ((MultiWordEntry & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v18[v303], v187 - v326);
                                  v190 = v326;
                                  v261 = v187 - v326;
                                  if (v289)
                                  {
                                    v215 = 0;
                                    v216 = v261;
                                    while (1)
                                    {
                                      v217 = *(*(a1 + 48) + 104);
                                      v218 = cstdlib_strlen(__dst);
                                      MultiWordEntry = v217(*(a1 + 912), *(a1 + 920), __dst, v218);
                                      if ((MultiWordEntry & 0x80000000) != 0)
                                      {
                                        break;
                                      }

                                      v219 = *(*(a1 + 16) + 32);
                                      v220 = cstdlib_strlen(__dst);
                                      log_OutTraceTuningDataBinary(v219, 106, "", "text/plain;charset=utf-8", __dst, v220);
                                      v216 += cstdlib_strlen(__dst);
                                      if (++v215 >= v289)
                                      {
                                        v190 = v326;
                                        goto LABEL_418;
                                      }
                                    }

LABEL_422:
                                    v8 = MultiWordEntry;
                                    goto LABEL_460;
                                  }

LABEL_418:
                                  if (v190)
                                  {
                                    v221 = &v18[v296];
                                    MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v221[-v190]);
                                    if ((MultiWordEntry & 0x80000000) != 0)
                                    {
                                      goto LABEL_422;
                                    }

                                    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v221[-v326], v326);
                                  }
                                }

                                else
                                {
LABEL_369:
                                  MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v26, v264);
                                  if ((MultiWordEntry & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v26, v264);
                                  v188 = cstdlib_strlen(v23);
                                  if (v188)
                                  {
                                    for (j = 0; j < v188; j = utf8_GetNextUtf8Offset(v23, j))
                                    {
                                      if (utf8_BelongsToSet(3, v23, j, v188))
                                      {
                                        while (j < v188 && utf8_BelongsToSet(3, v23, j, v188))
                                        {
                                          j = utf8_GetNextUtf8Offset(v23, j);
                                        }
                                      }
                                    }
                                  }

                                  v195 = cstdlib_strlen(v26);
                                  if (v195)
                                  {
                                    for (k = 0; k < v195; k = utf8_GetNextUtf8Offset(v26, k))
                                    {
                                      if (utf8_BelongsToSet(3, v26, k, v195))
                                      {
                                        while (k < v195 && utf8_BelongsToSet(3, v26, k, v195))
                                        {
                                          k = utf8_GetNextUtf8Offset(v26, k);
                                        }
                                      }
                                    }
                                  }

                                  v197 = v283;
                                  if (!v307)
                                  {
                                    v197 = 1;
                                  }

                                  v198 = v307;
                                  if ((v197 & 1) == 0)
                                  {
                                    v199 = 0;
                                    v200 = HIWORD(v316);
                                    v201 = v316;
                                    v292 = v306 + HIWORD(v316);
                                    v202 = v310 + 3;
                                    v304 = v316;
                                    v286 = HIWORD(v316);
                                    do
                                    {
                                      v203 = *v202 - *v274;
                                      if (v203 > v200 && v203 < v201)
                                      {
                                        log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "realign Markers in midword postions to start of word Mrk[%u].posCur from %u to %u", v199, *v202, v292);
                                        v201 = v304;
                                        v200 = v286;
                                        v198 = v307;
                                        *v202 = v292;
                                      }

                                      ++v199;
                                      v202 += 8;
                                    }

                                    while (v198 != v199);
                                  }

                                  v265 += v264 - v270;
                                }

                                if (v259 != -1)
                                {
                                  log_OutTraceTuningData(*(*(a1 + 16) + 32), 109, "%s%d %s%d %s%s", v190, v191, v192, v193, v194, "POSREF");
                                }

                                if (v268 || v262)
                                {
                                  v296 = v316;
                                  if (v307 > v278)
                                  {
                                    v205 = v278;
                                    v305 = v320;
                                    v206 = v317;
                                    v207 = v278 + v319;
                                    while (1)
                                    {
                                      v208 = &v310[8 * v205];
                                      v209 = v208[3];
                                      v75 = v296;
                                      if (v296 <= (v209 - v306))
                                      {
                                        break;
                                      }

                                      v210 = (v305 + 8 * v207);
                                      v211 = *(v210 - 1);
                                      v212 = &v206[4 * v207];
                                      if (v209 >= v211[3])
                                      {
                                        *v210 = v208;
                                      }

                                      else
                                      {
                                        *v210 = v211;
                                        v213 = *(v212 - 1);
                                        v212 -= 4;
                                        *&v206[4 * v207] = v213;
                                        *(v210 - 1) = v208;
                                      }

                                      *v212 = 0;
                                      hlp_KeepTrackBeforeMovingOn(v208, &v318 + 1, &v322, &v315, &v318);
                                      v205 = (v205 + 1);
                                      ++v207;
                                      if (v307 <= v205)
                                      {
                                        v263 = 0;
                                        v278 = v205;
                                        goto LABEL_407;
                                      }
                                    }

                                    v263 = 0;
                                    v278 = v205;
                                    goto LABEL_408;
                                  }
                                }

                                v263 = 0;
                                goto LABEL_407;
                              }

                              LOWORD(v289) = 0;
                              goto LABEL_353;
                            }
                          }

                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Found user dictionary entries are ignored as return buffer too small; consider increasing value with parameter SSFT_PARAMC_UDCTMAXDICTRETLEN");
                          LOWORD(v289) = 0;
                          v259 = -1;
                          v283 = (v260 | v268) == 0;
                          if (v260 | v268 && (MultiWordEntry & 0x80000000) != 0)
                          {
                            if (v268 || v262)
                            {
                              v75 = HIWORD(v316);
                            }

                            else
                            {
                              v75 = v296;
                            }

                            v263 = 1;
                            goto LABEL_408;
                          }

LABEL_355:
                          v183 = v303;
                          v184 = MultiWordEntry >> 31;
                          goto LABEL_363;
                        }

                        v222 = 0;
                        v223 = 0;
LABEL_424:
                        if (v307 > v287)
                        {
                          v224 = (v320 + 8 * (v222 + v287));
                          v225 = v287;
                          do
                          {
                            v226 = &v310[8 * v225];
                            v226[3] += v223;
                            *v224++ = v226;
                            ++v225;
                          }

                          while (v307 > v225);
                        }

                        v310[4] += v223;
                        v227 = v307 + v222;
                        v228 = heap_Calloc(*(*(a1 + 16) + 8), (v307 + v222), 32);
                        if (v228)
                        {
                          v229 = v228;
                          if (!v227)
                          {
                            goto LABEL_436;
                          }

                          v230 = 0;
                          v231 = v320;
                          do
                          {
                            v232 = (v228 + 32 * v230);
                            v233 = *(v231 + 8 * v230);
                            v234 = v233[1];
                            *v232 = *v233;
                            v232[1] = v234;
                            ++v230;
                          }

                          while (v227 > v230);
                          if (*(v228 + 12) == v306)
                          {
                            v235 = 0;
                            do
                            {
                              v236 = ++v235;
                            }

                            while (v227 > v235 && *(v228 + 32 * v235 + 12) == v306);
                          }

                          else
                          {
LABEL_436:
                            v236 = 0;
                          }

                          stableArraySort(v228, v236, v227 - v236);
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "New Markers OUT");
                          v237 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v229, 32 * v227);
                          v238 = *(a1 + 16);
                          if ((v237 & 0x80000000) != 0)
                          {
                            v8 = v237;
                            v244 = *(v238 + 8);
                            v245 = v229;
LABEL_453:
                            heap_Free(v244, v245);
                          }

                          else
                          {
                            if (log_GetLogLevel(*(v238 + 32)) >= 5 && v227 != 0)
                            {
                              v240 = 0;
                              do
                              {
                                v241 = (v229 + 32 * v240);
                                v242 = *(*(a1 + 16) + 32);
                                v243 = *v241;
                                if (v243 == 0x4000)
                                {
                                  log_OutText(v242, "FE_UDWL", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", v241[1]);
                                }

                                else
                                {
                                  log_OutText(v242, "FE_UDWL", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v243);
                                }

                                ++v240;
                              }

                              while (v227 > v240);
                            }

                            heap_Free(*(*(a1 + 16) + 8), v229);
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "PTRARRAY", "application/x-realspeak-markers-pp;version=4.0", v320, 8 * v227);
                            }

                            inserted = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v328);
                            if ((inserted & 0x80000000) == 0)
                            {
                              v323 += v223;
                              inserted = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32));
                            }

LABEL_451:
                            v8 = inserted;
                          }
                        }

                        else
                        {
LABEL_459:
                          log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
                        }

LABEL_460:
                        LOWORD(v21) = v273;
                        v40 = v308;
                        v27 = v258;
                        goto LABEL_54;
                      }
                    }
                  }

                  v47 = *(a1 + 16);
                }

                log_OutPublic(*(v47 + 32), "FE_UDWL", 40000, 0);
                v309 = 0;
                v27 = 0;
                v310 = 0;
                goto LABEL_148;
              }
            }

            log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0);
            v26 = 0;
            goto LABEL_51;
          }

          v26 = 0;
          v23 = 0;
          v309 = 0;
          v27 = 0;
          v40 = 0;
        }

        v310 = 0;
        v8 = MainLangLC;
        goto LABEL_54;
      }
    }

    return v11;
  }

  if (!*(&v330 + 4))
  {
    __src[0] = 0;
    if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "clcpppipelinemode", __src) & 0x80000000) != 0 || !__src[0] || !*__src[0])
    {
      *a5 = 0;
    }

    goto LABEL_41;
  }

  if (!DWORD2(v330))
  {
    goto LABEL_34;
  }

  v11 = (*(*(a1 + 48) + 88))(*(a1 + 896), *(a1 + 904), &v329, &v328);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v11 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v329, v328);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
  {
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "application/x-realspeak-markers-pp;version=4.0", v329, v328);
  }

  v17 = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v328);
  v8 = v17;
  if ((v17 & 0x80000000) == 0)
  {
LABEL_34:
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "text/plain;charset=utf-8", "", 0);
    if (DWORD1(v330))
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
  if (__s && cstdlib_strlen(__s) == 3)
  {
    cstdlib_strcpy(a2, __s);
    if (cstdlib_strlen(a2))
    {
      v5 = 0;
      do
      {
        a2[v5] = cstdlib_tolower(a2[v5]);
        ++v5;
      }

      while (v5 < cstdlib_strlen(a2));
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
  cstdlib_strncpy(__dst, (a3 + a4), v16);
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
  v84 = *MEMORY[0x277D85DE8];
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
    *__dst = 1;
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
                cstdlib_strncpy(v28, &a3[v32], v36);
                v28[v36] = 0;
                v35 = v75;
                *__dst = 1;
                v37 = udwl_LookupMultiWordLengths(*(v75 + 16), *(v75 + 944), *(v75 + 952), *(v75 + 960), v28, __dst, v74, &v82, &v79);
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
            cstdlib_strcpy(__dst, " ");
            LH_itoa(v33, &__dst[1], 0xAu);
            cstdlib_strcat(__dst, " ");
            if (cstdlib_strstr(v74, __dst))
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
                cstdlib_strncpy(a13, &a3[v32], (v43 - v32));
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
  v23 = cstdlib_strlen(a2);
  v24 = heap_Calloc(v22, (v23 + 1), 1);
  if (v24)
  {
    v25 = v24;
    cstdlib_strcpy(v24, a2);
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
  v46 = *MEMORY[0x277D85DE8];
  bzero(__s1, 0x400uLL);
  v39 = 0;
  v40 = 0;
  v14 = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((v14 & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v44 = 0;
  __b = 0u;
  v43 = 0u;
  *a7 = 0;
  *(a7 + 8) = 0;
  if (!a3)
  {
    goto LABEL_38;
  }

  v15 = v14;
  if (a4)
  {
    v16 = a6 != 0;
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

  v16 = 1;
LABEL_11:
  v41 = 0;
  cstdlib_memset(&__b, 0, 0x28uLL);
  v44 = a3;
  if (a5 != 0 && v16)
  {
    v22 = 0;
  }

  else
  {
    v22 = a4;
  }

  *&__b = v22;
  *(&__b + 1) = a4;
  *&v43 = a5;
  DWORD2(v43) = a6;
  log_OutTraceTuningData(*(a1[2] + 32), 101, "%s%s %s%s %s%s", v17, v18, v19, v20, v21, "BEG");
  if (v16 || !cstdlib_strstr(a3, ";loader=broker"))
  {
    goto LABEL_30;
  }

  v28 = brk_DataOpenEx(*(a1[2] + 24), a4, 1, &v40);
  v29 = v28;
  if (a4 && v28 < 0)
  {
    Str = paramc_ParamGetStr(*(a1[2] + 40), "langcode", &v41);
    if ((Str & 0x80000000) != 0)
    {
LABEL_32:
      v15 = Str;
      goto LABEL_33;
    }

    if ((brokeraux_ComposeBrokerString(a1[2], a4, 0, 1, v41, 0, 0, __s1, 0x400uLL) & 0x80000000) != 0)
    {
LABEL_40:
      v15 = 0;
      goto LABEL_33;
    }

    v29 = brk_DataOpenEx(*(a1[2] + 24), __s1, 1, &v40);
  }

  if (v29 < 0)
  {
    goto LABEL_40;
  }

  v15 = brk_DataMapEx(*(a1[2] + 24), v40, 0, &v43 + 8, &v39);
  if ((v15 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  *&__b = 0;
  __s1[0] = 0;
  cstdlib_strcat(__s1, a3);
  v31 = cstdlib_strchr(__s1, 59);
  if (v31)
  {
    *v31 = 0;
  }

  v32 = cstdlib_strstr(a3, "mode=");
  if (v32)
  {
    v33 = v32;
    v34 = cstdlib_strchr(v32, 59);
    LOWORD(v35) = v34;
    if (!v34)
    {
      v35 = (v33 + cstdlib_strlen(v33));
    }

    cstdlib_strcat(__s1, ";");
    cstdlib_strncat(__s1, v33, (v35 - v33));
  }

  v44 = __s1;
  *&v43 = v39;
LABEL_30:
  v36 = a1[118];
  if (v36)
  {
    Str = (*(v36 + 56))(a1[119], a1[120], &__b, a7);
    goto LABEL_32;
  }

LABEL_33:
  v37 = v40;
  if (v39)
  {
    brk_DataUnmap(*(a1[2] + 24), v40, v39);
    v39 = 0;
    v37 = v40;
  }

  if (v37)
  {
    brk_DataClose(*(a1[2] + 24), v37);
    v40 = 0;
  }

  log_OutTraceTuningData(*(a1[2] + 32), 101, "%s%s %s%u", v23, v24, v25, v26, v27, "END");
  return v15;
}

uint64_t hlp_udwl_Lookup(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *__s, uint64_t a8, uint64_t a9, _DWORD *a10, char *a11, unsigned __int16 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, _WORD *a18, _WORD *a19)
{
  v81[1] = *MEMORY[0x277D85DE8];
  __s1 = __s;
  v56 = 0;
  v80 = 0;
  v81[0] = 0;
  if (!__s)
  {
    return 2323652615;
  }

  v20 = 2323652628;
  if (a3 && a4)
  {
    v27 = cstdlib_strlen(__s) + 1;
    v58[0] = udwl_nbs_TakeAsIs;
    v58[1] = &__s1;
    v58[2] = &__s1;
    v59 = 0;
    if (a1)
    {
      v28 = &v71;
      v60 = udwl_nbs_TrimLeftBlanksAndQuotes;
      p_s1 = &__s1;
      v62 = &v80;
      v63 = 0;
      v64 = udwl_nbs_TrimHead;
      v65 = &v80;
      v66 = v81;
      v67 = 0;
      v68 = udwl_nbs_ToLower;
      v29 = 4;
    }

    else
    {
      v60 = udwl_nbs_TrimBlanksAndMatchingQuotes;
      p_s1 = &__s1;
      v62 = &v80;
      v63 = 0;
      v64 = udwl_nbs_TrimHeadAndTail;
      v65 = &v80;
      v66 = v81;
      v67 = 0;
      v68 = udwl_nbs_TrimTrailingDots;
      v71 = 0;
      v72 = udwl_nbs_ToLower;
      v73 = v81;
      v74 = &v80;
      v75 = 0;
      v76 = udwl_nbs_TrimTrailingDots;
      v77 = &v80;
      v78 = v81;
      v28 = &v79;
      v29 = 6;
    }

    v69 = v81;
    v70 = &v80;
    *v28 = 0;
    v30 = heap_Alloc(*(a2 + 8), v27);
    v80 = v30;
    if (v30 && (cstdlib_memset(v30, 0, v27), v31 = heap_Alloc(*(a2 + 8), v27), (v81[0] = v31) != 0))
    {
      v54 = a6;
      v55 = a1;
      v53 = v29;
      v52 = a5;
      v51 = a8;
      cstdlib_memset(v31, 0, v27);
      v32 = 0;
      v49 = *a12;
      v50 = v27;
      while (1)
      {
        v33 = &v58[4 * v32];
        v20 = (*v33)(*v33[1], *v33[2], v27, &v56, v33 + 3);
        if ((v20 & 0x80001FFF) == 0x80000009)
        {
          v34 = 0;
          v35 = v55;
          while (v34 < 3)
          {
            LOWORD(v27) = 2 * v27 + 10;
            v36 = heap_Realloc(*(a2 + 8), v80, v27 & 0xFFFE);
            v80 = v36;
            if (!v36)
            {
              return 2323652618;
            }

            cstdlib_memset(v36, 0, v27 & 0xFFFE);
            v37 = heap_Realloc(*(a2 + 8), v81[0], v27 & 0xFFFE);
            v81[0] = v37;
            if (!v37)
            {
              return 2323652618;
            }

            ++v34;
            cstdlib_memset(v37, 0, v27 & 0xFFFE);
            v20 = (*v33)(*v33[1], *v33[2], v27, &v56, v33 + 3);
            if ((v20 & 0x80001FFF) != 0x80000009)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_53;
        }

        v35 = v55;
LABEL_19:
        if (v56)
        {
          v38 = *v33[2];
          v39 = v35 ? (*(a3 + 120))(a4, v52, v38, a12, a11, a16) : (*(a3 + 112))(a4, v52, v38, v51, a9, a12, a11, a10, a13, a14, a15, a17);
          v20 = v39;
          if ((v39 & 0x1FFF) != 0x14 && (v39 & 0x1FFF) != 0x404 && v39 < 1)
          {
            break;
          }
        }

        v41 = 0;
        ++v32;
        if (!v54 || v53 <= v32)
        {
          goto LABEL_30;
        }
      }

      if ((v39 & 0x80000000) == 0)
      {
        LODWORD(v20) = 0;
        v41 = 1;
        if (a18 && a19)
        {
          v43 = __s1;
          *a18 = 0;
          v44 = &v58[4 * v32];
          v45 = cstdlib_strstr(*v44[1], *v44[2]);
          if (v45)
          {
            v46 = &v45[-*v44[1]];
            *a18 = v46;
            if (v32)
            {
              v47 = v63 + v46;
              *a18 = v47;
              if (v32 != 1)
              {
                *a18 = v67 + v47;
              }
            }
          }

          v48 = cstdlib_strlen(v43);
          LODWORD(v20) = 0;
          *a19 = v48 - *a18 - cstdlib_strlen(*v44[2]);
          v41 = 1;
        }

LABEL_30:
        if (*a10 == 4)
        {
          if (v32 == 4 && v56)
          {
            LODWORD(v20) = udwl_RestoreHeadAndTail(a11, a12, v49, __s1, v50, *v74, *v73);
          }

          else if (v41)
          {
            LODWORD(v20) = udwl_RestoreHeadAndTail(a11, a12, v49, __s1, v50, *v58[4 * v32 + 2], 0);
          }
        }

        if (v80)
        {
          heap_Free(*(a2 + 8), v80);
        }

        if (v81[0])
        {
          heap_Free(*(a2 + 8), v81[0]);
        }

        if (v41)
        {
          return v20;
        }

        else
        {
          return 2323652628;
        }
      }

LABEL_53:
      if (v80)
      {
        heap_Free(*(a2 + 8), v80);
      }

      if (v81[0])
      {
        heap_Free(*(a2 + 8), v81[0]);
      }
    }

    else
    {
      return 2323652618;
    }
  }

  return v20;
}

uint64_t udwl_RestoreHeadAndTail(char *a1, _WORD *a2, int a3, char *__s1, __int16 a5, char *__s2, const char *a7)
{
  v14 = cstdlib_strstr(__s1, __s2);
  if (v14)
  {
    v15 = (v14 - __s1);
  }

  else if (a7)
  {
    v16 = cstdlib_strstr(__s1, a7);
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
  v18 = cstdlib_strlen(__s2);
  if (a1 && a2 && __s1 && __s2)
  {
    v19 = v18;
    v20 = *a2;
    v21 = (a5 - 1) - v18;
    if (v21 + v20 <= a3)
    {
      if (v15)
      {
        cstdlib_memmove(&a1[v15], a1, v20);
        cstdlib_memmove(a1, __s1, v15);
        LODWORD(v20) = *a2;
      }

      if ((v21 - v15) >= 1)
      {
        cstdlib_memmove(&a1[v15 + v20], &__s1[v15 + v19], v21 - v15);
        LOWORD(v20) = *a2;
      }

      v17 = 0;
      *a2 = v20 + v21;
    }

    else
    {
      return 2323652617;
    }
  }

  return v17;
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
      if (cstdlib_strlen(__s) >= a3)
      {
        return 2323652617;
      }

      cstdlib_strcpy(a2, __s);
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
    v11 = cstdlib_strlen(__s);
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

    if (utf8_BelongsToSet(7, __s, NextUtf8Offset, v11))
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
      v16 = utf8_BelongsToSet(7, __s, v15, v11);
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
        cstdlib_strcpy(a2, __s);
      }

      else
      {
        cstdlib_strncpy(a2, &__s[NextUtf8Offset], v18);
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
    v11 = cstdlib_strlen(__s);
    if (v11)
    {
      NextUtf8Offset = 0;
      while (IsHeadPunctuationMark(__s, NextUtf8Offset, v11))
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

      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v11);
      v15 = v11;
      if (NextUtf8Offset < v11)
      {
        v16 = v11;
        do
        {
          v15 = v16;
          v16 = PreviousUtf8Offset;
          WCharFromUtf8 = utf8_GetWCharFromUtf8(__s, PreviousUtf8Offset, v11);
          if (((WCharFromUtf8 - 33) > 0x3C || ((1 << (WCharFromUtf8 - 33)) & 0x1800000066000947) == 0) && ((WCharFromUtf8 - 125) > 0x3E || ((1 << (WCharFromUtf8 - 125)) & 0x4080000000A000A1) == 0) && ((WCharFromUtf8 - 8217) > 0x21 || ((1 << (WCharFromUtf8 - 25)) & 0x200000055) == 0) && utf8_GetWCharFromUtf8(__s, v16, v11) != 46)
          {
            break;
          }

          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v16);
          v15 = v16;
        }

        while (v16 > NextUtf8Offset);
      }

      if (utf8_GetWCharFromUtf8(__s, v15, v11) == 46)
      {
        v15 = utf8_GetNextUtf8Offset(__s, v15);
      }

      v18 = v15 - NextUtf8Offset;
      if (a4 && v18 != v11)
      {
        *a4 = 1;
      }

      v10 = 2323652617;
      if (v15 != NextUtf8Offset && v18 < a3)
      {
        cstdlib_strncpy(a2, &__s[NextUtf8Offset], v15 - NextUtf8Offset);
        v10 = 0;
        a2[v18] = 0;
      }
    }

    else
    {
      return 2323652628;
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
    v11 = cstdlib_strlen(__s);
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
      cstdlib_strncpy(a2, __s, v14);
      v10 = 0;
      a2[v14] = 0;
    }
  }

  return v10;
}

uint64_t udwl_nbs_ToLower(char *__s, char *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = cstdlib_strlen(__s);
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

        v16 = cstdlib_strlen(__sa);
        if (cstdlib_strlen(a2) + v16 >= v14)
        {
          break;
        }

        cstdlib_strcat(a2, __sa);
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

uint64_t udwl_nbs_TrimLeftBlanksAndQuotes(char *__s, char *a2, uint64_t a3, _DWORD *a4, unsigned int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v9 = 2323652615;
  if (__s && a2 && *__s)
  {
    NextUtf8Offset = 0;
    v11 = cstdlib_strlen(__s);
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

    if (utf8_BelongsToSet(7, __s, NextUtf8Offset, v11))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
      v9 = 0;
    }

    else
    {
LABEL_12:
      v9 = 2323652628;
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

      if (NextUtf8Offset)
      {
        cstdlib_strncpy(a2, &__s[NextUtf8Offset], v11 - NextUtf8Offset);
        a2[v11 - NextUtf8Offset] = 0;
        if (a4)
        {
          *a4 = 1;
        }
      }

      else
      {
        cstdlib_strcpy(a2, __s);
      }
    }
  }

  return v9;
}

uint64_t udwl_nbs_TrimHead(char *__s, char *a2, unsigned int a3, _DWORD *a4, unsigned int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = cstdlib_strlen(__s);
    if (v11)
    {
      NextUtf8Offset = 0;
      while (IsHeadPunctuationMark(__s, NextUtf8Offset, v11))
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

      v14 = v11 - NextUtf8Offset;
      if (a4 && NextUtf8Offset)
      {
        *a4 = 1;
      }

      if (v14 >= a3)
      {
        return 2323652617;
      }

      else
      {
        cstdlib_strncpy(a2, &__s[NextUtf8Offset], v11 - NextUtf8Offset);
        v10 = 0;
        a2[v14] = 0;
      }
    }

    else
    {
      return 2323652628;
    }
  }

  return v10;
}

uint64_t IsHeadPunctuationMark(uint64_t a1, unsigned int a2, unsigned int a3)
{
  WCharFromUtf8 = utf8_GetWCharFromUtf8(a1, a2, a3);
  result = 1;
  if (WCharFromUtf8 <= 129)
  {
    if (((WCharFromUtf8 - 60) > 0x3F || ((1 << (WCharFromUtf8 - 60)) & 0x8000000180000001) == 0) && (WCharFromUtf8 - 39) >= 2)
    {
      return 0;
    }
  }

  else if ((WCharFromUtf8 - 130) > 0x3D || ((1 << (WCharFromUtf8 + 126)) & 0x2004020080028005) == 0)
  {
    v5 = WCharFromUtf8 - 8216;
    if (v5 > 0x21 || ((1 << v5) & 0x200000055) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t unixlit_spec_depes_ascii_to_utf8_mapping(int a1, uint64_t a2, unsigned int *a3)
{
  v4 = a1;
  if (a1)
  {
    v4 = CharMappings[a1];
  }

  return utf8_Utf16ToUtf8(&v4, 1u, 0, a2, 5u, a3, 0);
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
    v8 = cstdlib_strlen(v7);
    result = cstdlib_memmove(&v3[v6], v7, v8 + 1);
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
  if (*a3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (!cstdlib_strcmp(*(*a2 + v10), __s2))
      {
        v23 = 0;
        *a5 = v11;
        return v23;
      }

      ++v11;
      v12 = *a3;
      v10 += 16;
    }

    while (v11 < v12);
    v13 = heap_Realloc(*(*a1 + 8), *a2, 16 * v12 + 17);
    if (v13)
    {
      v14 = v13;
      *a2 = v13;
      v15 = *(*a1 + 8);
      v16 = cstdlib_strlen(__s2);
      v17 = heap_Calloc(v15, 1, v16 + 1);
      *(v14 + 16 * *a3) = v17;
      v18 = *a1;
      if (!v17)
      {
        goto LABEL_14;
      }

      v19 = *(v18 + 8);
      v20 = cstdlib_strlen(__s2);
      v21 = heap_Calloc(v19, 1, (v20 + 1));
      v22 = *a3;
      *(v14 + 16 * v22 + 8) = v21;
      if (!v21)
      {
        v23 = 2321555466;
        log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0);
        v24 = *(*a1 + 8);
        v25 = *(v14 + 16 * *a3);
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

  v14 = v26;
  v27 = *(v18 + 8);
  v28 = cstdlib_strlen(__s2);
  v29 = heap_Calloc(v27, 1, v28 + 1);
  *(v14 + 16 * *a3) = v29;
  v30 = *a1;
  if (v29)
  {
    v31 = *(v30 + 8);
    v32 = cstdlib_strlen(__s2);
    v33 = heap_Calloc(v31, 1, (v32 + 1));
    v22 = *a3;
    *(v14 + 16 * v22 + 8) = v33;
    if (v33)
    {
LABEL_12:
      cstdlib_strcpy(*(v14 + 16 * v22), __s2);
      cstdlib_strcpy(*(v14 + 16 * *a3 + 8), __s2);
      v23 = 0;
      v34 = *a3;
      *a5 = *a3;
      *a3 = v34 + 1;
      *a2 = v14;
      return v23;
    }

    v23 = 2321555466;
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0);
    heap_Free(*(*a1 + 8), *(v14 + 16 * *a3));
  }

  else
  {
    v23 = 2321555466;
    log_OutPublic(*(v30 + 32), "FE_UNIXLIT", 40000, 0);
  }

  v24 = *(*a1 + 8);
  v25 = v14;
LABEL_20:
  heap_Free(v24, v25);
  return v23;
}

uint64_t unixlit_lookup(void *a1, uint64_t a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x277D85DE8];
  __s1[0] = 0;
  if (cstdlib_strlen(__s))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      LH_itoa(__s[v12], v15, 0x10u);
      cstdlib_strcat(__s1, v15);
      v12 = ++v13;
    }

    while (cstdlib_strlen(__s) > v13);
  }

  return (*(a1[3] + 96))(a1[1], a1[2], a2, __s1, a4, a5, a6);
}

uint64_t fe_unixlit_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v406 = *MEMORY[0x277D85DE8];
  v400 = 0uLL;
  v399 = 0;
  v398 = 0;
  v397 = 0;
  v395 = 0;
  v394 = 0;
  v390 = 0;
  v389 = 0;
  v388 = 9999;
  v387[3] = 9999;
  strcpy(v387, "latin");
  strcpy(v386, "normal");
  __s1 = 0;
  cstdlib_strcpy(__dst, "spell");
  cstdlib_strcpy(v392, "spell:");
  cstdlib_strcpy(v404, "spell:alphanumeric");
  cstdlib_strcpy(v403, "alphanumeric");
  cstdlib_strcpy(v391, "digits");
  cstdlib_strcpy(v402, "characters");
  cstdlib_strcpy(__s2, "normal");
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  *a5 = 1;
  v8 = (*(a1[7] + 144))(a1[111], a1[112], &v400 + 12, &v400 + 4);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a1[7] + 144))(a1[113], a1[114], &v400 + 8, &v400 + 4);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (!HIDWORD(v400))
  {
    v42 = DWORD1(v400);
    if (!*(&v400 + 4))
    {
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1)
      {
        *a5 = 0;
      }

      return v9;
    }

    if (DWORD2(v400))
    {
      v8 = (*(a1[7] + 88))(a1[113], a1[114], &v399, &v398);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v8 = (*(a1[7] + 104))(a1[117], a1[118], v399, v398);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v9 = (*(a1[7] + 96))(a1[113], a1[114], v398);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }

      v42 = DWORD1(v400);
    }

    if (!v42)
    {
      return v9;
    }

    return synstrmaux_CloseOutStreamsOnly(a1 + 32, a1[7]);
  }

  v8 = (*(a1[6] + 112))(a1[4], a1[5], &v395, 1);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = (*(a1[6] + 112))(a1[4], a1[5], &v394, 0);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = (*(a1[7] + 88))(a1[111], a1[112], &v397, &v400);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v10 = v400;
  v8 = (*(a1[7] + 88))(a1[113], a1[114], &v399, &v398);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v11 = v398;
  v12 = v398 >> 5;
  v13 = heap_Calloc(*(*a1 + 8), 1, (32 * v12) | 1);
  v381 = (v11 >> 5);
  if (!v13)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0);
    v17 = 0;
    v9 = 2321555466;
    goto LABEL_709;
  }

  v382 = v13;
  cstdlib_memcpy(v13, v399, v398);
  if ((v11 >> 5))
  {
    v14 = (v382 + 16);
    v15 = v12;
    do
    {
      if (*(v14 - 4) == 1)
      {
        *v14 = 0;
      }

      v14 += 8;
      --v15;
    }

    while (v15);
  }

  v16 = heap_Alloc(*(*a1 + 8), 8 * v12);
  if (!v16)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0);
LABEL_65:
    heap_Free(*(*a1 + 8), v382);
    return 2321555466;
  }

  v17 = v16;
  if (v12)
  {
    bzero(v16, 8 * v12);
  }

  v18 = *(v382 + 12);
  if (!v18)
  {
    LODWORD(v395) = 0;
    v19 = (*(a1[6] + 104))(a1[4], a1[5], 0, 1);
    if ((v19 & 0x80000000) != 0)
    {
      v9 = v19;
      goto LABEL_77;
    }
  }

  v372 = v18;
  v389 = v10 + 32;
  v20 = heap_Calloc(*(*a1 + 8), 1, (8 * (v10 + 32)) | 1);
  v390 = v20;
  if (!v20)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0);
    heap_Free(*(*a1 + 8), v17);
    goto LABEL_65;
  }

  v21 = (v10 + 32);
  if (v10 != 0xFFE0)
  {
    v22 = (v21 + 7) & 0x1FFF8;
    v23 = vdupq_n_s64(v21 - 1);
    v24 = xmmword_26ECDB2A0;
    v25 = xmmword_26ECDB2B0;
    v26 = xmmword_26ECCE810;
    v27 = xmmword_26ECC7980;
    v28 = (v20 + 32);
    v29 = vdupq_n_s64(8uLL);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v23, v27));
      if (vuzp1_s8(vuzp1_s16(v30, *v23.i8), *v23.i8).u8[0])
      {
        *(v28 - 16) = 9999;
      }

      if (vuzp1_s8(vuzp1_s16(v30, *&v23), *&v23).i8[1])
      {
        *(v28 - 12) = 9999;
      }

      if (vuzp1_s8(vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v26))), *&v23).i8[2])
      {
        *(v28 - 8) = 9999;
        *(v28 - 4) = 9999;
      }

      v31 = vmovn_s64(vcgeq_u64(v23, v25));
      if (vuzp1_s8(*&v23, vuzp1_s16(v31, *&v23)).i32[1])
      {
        *v28 = 9999;
      }

      if (vuzp1_s8(*&v23, vuzp1_s16(v31, *&v23)).i8[5])
      {
        v28[4] = 9999;
      }

      if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v24)))).i8[6])
      {
        v28[8] = 9999;
        v28[12] = 9999;
      }

      v25 = vaddq_s64(v25, v29);
      v26 = vaddq_s64(v26, v29);
      v27 = vaddq_s64(v27, v29);
      v28 += 32;
      v24 = vaddq_s64(v24, v29);
      v22 -= 8;
    }

    while (v22);
  }

  log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, " ");
  do
  {
    v32 = v10;
    v33 = v10;
  }

  while (!v397[v10-- - 1]);
  v348 = (32 * (v11 >> 5)) | 1;
  if (v32)
  {
    v35 = 0;
    while (1)
    {
      v36 = v397[v35];
      v37 = v36 > 0x20;
      v38 = (1 << v36) & 0x100002600;
      if (v37 || v38 == 0)
      {
        break;
      }

      if (v32 == ++v35)
      {
        LOBYTE(v35) = v32;
LABEL_46:
        LOWORD(v40) = v32;
        v41 = v32;
        goto LABEL_79;
      }
    }
  }

  else
  {
    LOWORD(v35) = 0;
  }

  if (v35 >= v32)
  {
    LOWORD(v40) = v35;
    v41 = v35;
  }

  else
  {
    v40 = v35;
    while (1)
    {
      v44 = v397[v40];
      v37 = v44 > 0x20;
      v45 = (1 << v44) & 0x100002600;
      if (!v37 && v45 != 0)
      {
        break;
      }

      if (++v40 >= v33)
      {
        goto LABEL_46;
      }
    }

    v41 = v40;
  }

LABEL_79:
  v48 = v35;
  v371 = v32;
  if (v35 >= v32 || v35 + utf8_determineUTF8CharLength(v397[v35]) != v40)
  {
    goto LABEL_91;
  }

  if (v40 < v371)
  {
    v40 = v40;
    while (1)
    {
      v49 = v397[v40];
      v37 = v49 > 0x20;
      v50 = (1 << v49) & 0x100002600;
      if (v37 || v50 == 0)
      {
        break;
      }

      if (++v40 >= v33)
      {
        goto LABEL_90;
      }
    }
  }

  if (v40 == v371)
  {
LABEL_90:
    v346 = (v371 - v41);
    v52 = 1;
  }

  else
  {
LABEL_91:
    v52 = 0;
    v346 = 0;
  }

  if (paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &__s1))
  {
    v53 = 1;
  }

  else
  {
    v53 = __s1 == 0;
  }

  v349 = v11;
  if (!v53 && !cstdlib_strcmp(__s1, "internal"))
  {
    v52 = 0;
  }

  v383 = v52;
  v347 = v48;
  v345 = v41;
  v358 = v17;
  log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "Markers IN");
  v54 = (v11 >> 5);
  if (v381)
  {
    v55 = v382;
    while (1)
    {
      v56 = *(*a1 + 32);
      v57 = *v55;
      if (v57 == 0x4000)
      {
        log_OutText(v56, "FE_UNIXLIT", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", v55[1]);
      }

      else
      {
        log_OutText(v56, "FE_UNIXLIT", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v57);
      }

      v58 = *v55;
      if (*v55 <= 33)
      {
        break;
      }

      if (v58 == 34 || v58 == 40)
      {
        goto LABEL_110;
      }

LABEL_112:
      if (v58 == 26)
      {
        v59 = v397;
        v60 = *v397;
        v37 = v60 > 0x3F;
        v61 = (1 << v60) & 0x8C00700200000000;
        if (!v37 && v61 != 0)
        {
          goto LABEL_117;
        }

        if (cstdlib_strlen(v397) < 3)
        {
          goto LABEL_118;
        }

        v63 = *v59;
        if (v63 == 239)
        {
          if (v59[1] != 188 || v59[2] - 129 > 0x1E)
          {
            goto LABEL_118;
          }

          v64 = 1 << (v59[2] + 127);
          v65 = 1174407169;
LABEL_133:
          if ((v64 & v65) == 0)
          {
            goto LABEL_118;
          }
        }

        else
        {
          if (v63 != 227)
          {
            if (v63 != 226 || v59[1] != 128 || v59[2] - 147 > 0x13)
            {
              goto LABEL_118;
            }

            v64 = 1 << (v59[2] + 109);
            v65 = 524291;
            goto LABEL_133;
          }

          if (v59[1] != 128 || v59[2] - 129 >= 2)
          {
            goto LABEL_118;
          }
        }

        *v59 = 8224;
        v59 += 2;
LABEL_117:
        v383 = 0;
        *v59 = 32;
      }

LABEL_118:
      v55 += 8;
      if (!--v54)
      {
        goto LABEL_135;
      }
    }

    if (v58 == 7)
    {
      goto LABEL_110;
    }

    if (v58 != 21)
    {
      goto LABEL_112;
    }

    if (cstdlib_strcmp(*(v55 + 3), __s2))
    {
LABEL_110:
      v383 = 0;
    }

    v58 = *v55;
    goto LABEL_112;
  }

LABEL_135:
  v66 = unixlit_addLangStrs(a1, a1 + 121, a1 + 488, v387, &v388);
  if ((v66 & 0x80000000) != 0)
  {
    goto LABEL_706;
  }

  v66 = unixlit_addLangStrs(a1, a1 + 121, a1 + 488, v386, &v388);
  if ((v66 & 0x80000000) != 0)
  {
    goto LABEL_706;
  }

  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v354 = 0;
  v72 = 0;
  v73 = 0;
  v350 = 0;
  v74 = 0;
  v75 = v371;
  v343 = a1 + 121;
  __s = __s2;
  v344 = 2;
  v369 = 0;
  v370 = 1;
  v76 = v381;
  v77 = v382;
  j = v372;
  while (1)
  {
    memset(__c, 0, sizeof(__c));
    if (v76 > v74)
    {
      break;
    }

LABEL_332:
    v106 = v69;
    v107 = v68;
    LOWORD(v105) = v67;
LABEL_333:
    v105 = v105;
    if (v105 >= v75)
    {
      LOWORD(v69) = v106;
LABEL_562:
      if (!v71 || !v69)
      {
        goto LABEL_574;
      }

      if (v69 != v107)
      {
        goto LABEL_573;
      }

      v251 = cstdlib_strlen("§");
      v252 = *(a1[7] + 104);
      v253 = cstdlib_strlen("§");
      v252(a1[115], a1[116], "§", v253);
      v66 = unixlit_growMapCharStr(a1, &v390, &v389, v70, v251);
      if ((v66 & 0x80000000) != 0)
      {
        goto LABEL_706;
      }

      if (v251)
      {
        v254 = 0;
        v255 = v387[3];
        v256 = v390;
        do
        {
          *(v256 + 8 * v70) = v255;
          LOWORD(v70) = v70 + 1;
          ++v254;
        }

        while (v251 > v254);
      }

      v73 += cstdlib_strlen("§");
LABEL_573:
      v76 = v381;
      v77 = v382;
LABEL_574:
      while (v76 > v74)
      {
        *(v77 + 32 * v74 + 12) = (*(v77 + 32 * v74 + 12) + v73 + v395) & ~((*(v77 + 32 * v74 + 12) + v73 + v395) >> 31);
        ++v74;
      }

      v66 = (*(a1[7] + 104))(a1[115], a1[116], "", 1);
      if ((v66 & 0x80000000) != 0)
      {
        goto LABEL_706;
      }

      v380 = v73;
      v66 = unixlit_growMapCharStr(a1, &v390, &v389, v70, 1);
      if ((v66 & 0x80000000) != 0)
      {
        goto LABEL_706;
      }

      v66 = (*(a1[7] + 96))(a1[111], a1[112], v400);
      if ((v66 & 0x80000000) != 0)
      {
        goto LABEL_706;
      }

      v257 = v70 + 1;
      *(v382 + 16) += v380;
      if (v70 == 0xFFFF)
      {
        goto LABEL_680;
      }

      v258 = 0;
      v259 = v390;
      v260 = (v70 + 1);
      do
      {
        v261 = v258;
        v262 = v258;
        v263 = (v258 + 1);
        v264 = v70 + 1;
        if (v263 > v257)
        {
          v264 = v263;
        }

        v265 = 8 * v262;
        v266 = (v259 + 4 + 8 * v261);
        v267 = v262;
        while (1)
        {
          v268 = *v266;
          v266 += 2;
          if (v268 == 1)
          {
            break;
          }

          if (++v267 >= v260)
          {
            goto LABEL_588;
          }
        }

        v264 = v267;
LABEL_588:
        if ((v264 + 1) <= v257)
        {
          v269 = v70 + 1;
        }

        else
        {
          v269 = v264 + 1;
        }

        v258 = v264;
        while (++v258 < v257)
        {
          if (*(v259 + 8 * v258 + 4) != 1)
          {
            goto LABEL_596;
          }
        }

        v258 = v269;
LABEL_596:
        if (v262 < v264 && v262 < v257)
        {
          v270 = (v259 + v265);
          v271 = v262 + 1;
          do
          {
            v273 = *v270;
            v270 += 4;
            v272 = v273;
            if (v273)
            {
              v274 = v271 >= v264;
            }

            else
            {
              v274 = 1;
            }
          }

          while (!v274 && v271++ < v260);
          if (!v272 && v262 < v258)
          {
            v276 = 0;
            v277 = v258 - v262;
            v278 = vdupq_n_s64(v277 - 1);
            v279 = (v259 + 32 + v265);
            do
            {
              v280 = vdupq_n_s64(v276);
              v281 = vmovn_s64(vcgeq_u64(v278, vorrq_s8(v280, xmmword_26ECC7980)));
              if (vuzp1_s8(vuzp1_s16(v281, 6), 6).u8[0])
              {
                *(v279 - 16) = 0;
              }

              if (vuzp1_s8(vuzp1_s16(v281, 6), 6).i8[1])
              {
                *(v279 - 12) = 0;
              }

              if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v278, vorrq_s8(v280, xmmword_26ECCE810)))), 6).i8[2])
              {
                *(v279 - 8) = 0;
                *(v279 - 4) = 0;
              }

              v282 = vmovn_s64(vcgeq_u64(v278, vorrq_s8(v280, xmmword_26ECDB2B0)));
              if (vuzp1_s8(6, vuzp1_s16(v282, 6)).i32[1])
              {
                *v279 = 0;
              }

              if (vuzp1_s8(6, vuzp1_s16(v282, 6)).i8[5])
              {
                v279[4] = 0;
              }

              if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v278, vorrq_s8(v280, xmmword_26ECDB2A0))))).i8[6])
              {
                v279[8] = 0;
                v279[12] = 0;
              }

              v276 += 8;
              v279 += 32;
            }

            while (((v277 + 7) & 0xFFFFFFFFFFFFFFF8) != v276);
          }
        }
      }

      while (v258 < v257);
      v283 = v390;
      v284 = (v70 + 1);
      do
      {
        if (*v283 == 9999)
        {
          *v283 = 1;
        }

        v283 += 4;
        --v284;
      }

      while (v284);
      LOWORD(v285) = 0;
      v286 = 0;
      while (1)
      {
        v285 = v285;
        v287 = *(v390 + 8 * v285);
        if (v287 != 9999)
        {
          break;
        }

        v288 = v285 == 0;
        LOWORD(v285) = v285 + 1;
LABEL_635:
        v286 += v288;
        if (v285 >= v257)
        {
          goto LABEL_638;
        }
      }

      v289 = (v390 + 8 + 8 * v285);
      while (++v285 < v260)
      {
        v290 = *v289;
        v289 += 4;
        if (v287 != v290)
        {
          v288 = 1;
          goto LABEL_635;
        }
      }

      ++v286;
LABEL_638:
      v291 = v286;
      if (!v286)
      {
LABEL_680:
        v295 = v381;
        goto LABEL_681;
      }

      v292 = 0;
      v293 = (v390 + 4);
      do
      {
        if (*v293 == 1)
        {
          v294 = "sp";
        }

        else
        {
          v294 = "  ";
        }

        log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "LANGMAP[%u] = %s [%s]", v292++, v294, *(a1[121] + 16 * *(v293 - 2)));
        v293 += 2;
      }

      while (v260 != v292);
      v295 = v381 + v291;
      v296 = heap_Realloc(*(*a1 + 8), v382, (32 * (v381 + v291)) | 1u);
      if (v296)
      {
        v297 = v296;
        cstdlib_memset((v296 + v348), 0, ((32 * v295) | 1) - v348);
        v298 = 0;
        v299 = 0;
        v300 = 0;
        v301 = 0;
        v302 = 0;
        v303 = v390;
        do
        {
          v304 = (v303 + 8 * v300);
          v305 = (v300 + 1);
          if (v305 <= v257)
          {
            LOWORD(v305) = v70 + 1;
          }

          v306 = v381;
          while (++v300 < v257)
          {
            v306 = v381;
            if (*v304 != *(v303 + 8 * v300))
            {
              goto LABEL_653;
            }
          }

          v300 = v305;
LABEL_653:
          v307 = v302;
          if (v306 > v302)
          {
            v308 = (v297 + 32 * (v302 + v301));
            while (v308[3] <= (*(v297 + 12) + v298))
            {
              if (*v308 == 34)
              {
                v299 = v308;
              }

              if (*v308 == 21)
              {
                v299 = 0;
              }

              ++v307;
              v308 += 8;
              v306 = v381;
              if (v381 <= v307)
              {
                v302 = v307;
                v307 = v307;
                goto LABEL_663;
              }
            }

            v302 = v307;
            v306 = v381;
          }

LABEL_663:
          if (v306 != v307 && v302 != (v349 >> 5))
          {
            v309 = v307 + v301 + ((v349 >> 5) - v302);
            v310 = ((v349 >> 5) - v302) - 1;
            do
            {
              v311 = (v297 + 32 * v309);
              v312 = *(v311 - 1);
              *v311 = *(v311 - 2);
              v311[1] = v312;
              --v309;
              LODWORD(v311) = v310--;
            }

            while (v311);
          }

          v313 = v297 + 32 * (v307 + v301);
          v314 = *v304;
          if (v314 == 9999)
          {
            v315 = (*v343 + 24);
          }

          else
          {
            v315 = (*v343 + 16 * v314 + 8);
          }

          *(v313 + 24) = *v315;
          *v313 = 36;
          v316 = *(v297 + 12) + v298;
          *(v313 + 8) = 0;
          *(v313 + 12) = v316;
          if (v299)
          {
            v317 = v299[3];
            v318 = *(v297 + 12);
            v319 = (v318 + v298);
            v320 = -v318;
            v321 = -1;
            do
            {
              ++v321;
              if (*(v303 + 8 * (v317 + v320++) + 4))
              {
                v323 = v321 + v317 >= v319;
              }

              else
              {
                v323 = 1;
              }
            }

            while (!v323);
            v299[3] = v317 + v321;
          }

          *(v313 + 16) = 0;
          ++v301;
          v298 = v300;
        }

        while (v300 < v257);
        v382 = v297;
LABEL_681:
        marker_sort(v382 + 32, (v295 - 1));
        v66 = (*(a1[7] + 104))(a1[117], a1[118], v382, 32 * v295);
        if ((v66 & 0x80000000) == 0)
        {
          log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "Markers OUT");
          v324 = v382;
          if (v295)
          {
            v325 = 0;
            v326 = v390;
            do
            {
              v327 = (v324 + 32 * v325);
              v328 = *v327;
              v329 = *(*a1 + 32);
              if (v328 == 36)
              {
                v330 = *(v326 + 8 * (v327[3] - *(v382 + 12)));
                if (v330 == 9999)
                {
                  v331 = (*v343 + 16);
                }

                else
                {
                  v331 = (*v343 + 16 * v330);
                }

                log_OutText(v329, "FE_UNIXLIT", 5, 0, "Marker [type=SET_LANG(%s)] Ref (%u,%u) Cur(%u,%u)", *v331);
              }

              else if (v328 == 0x4000)
              {
                log_OutText(v329, "FE_UNIXLIT", 5, 0, "Marker[type=SYNC] Ref (%u,%u) Cur(%u,%u)", v327[1]);
              }

              else
              {
                log_OutText(v329, "FE_UNIXLIT", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v328);
              }

              ++v325;
              v324 = v382;
            }

            while (v295 > v325);
          }

          v66 = (*(a1[7] + 96))(a1[113], a1[114], v398);
          if ((v66 & 0x80000000) == 0)
          {
            v399 = 0;
            if (paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &__s1))
            {
              v332 = 1;
            }

            else
            {
              v332 = __s1 == 0;
            }

            if ((v332 || cstdlib_strcmp(__s1, "internal")) && v383 && *(v382 + 16))
            {
              v333 = heap_Calloc(*(*a1 + 8), 1, 32);
              if (!v333)
              {
                goto LABEL_719;
              }

              v334 = v333;
              *v333 = 21;
              *(v333 + 24) = __dst;
              v335 = v395 + v372;
              *(v333 + 4) = (v395 + v372 + v347);
              *(v333 + 12) = v335 & ~(v335 >> 31);
              *(v333 + 16) = 0;
              v336 = (*(a1[7] + 104))(a1[117], a1[118], v333, 32);
              heap_Free(*(*a1 + 8), v334);
              if ((v336 & 0x80000000) != 0)
              {
                v9 = v336;
                goto LABEL_722;
              }

              v337 = heap_Calloc(*(*a1 + 8), 1, 32);
              if (v337)
              {
                v338 = v337;
                *v337 = 21;
                *(v337 + 24) = __s2;
                v339 = v346 + v345 + v372 + v395;
                *(v337 + 4) = v339;
                *(v337 + 8) = 0;
                *(v337 + 12) = (v339 + v380) & ~((v339 + v380) >> 31);
                v340 = (*(a1[7] + 104))(a1[117], a1[118], v337, 32);
                heap_Free(*(*a1 + 8), v338);
                if ((v340 & 0x80000000) == 0)
                {
                  goto LABEL_705;
                }

                v9 = v340;
LABEL_722:
                v17 = v358;
              }

              else
              {
LABEL_719:
                log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0);
                v17 = v358;
                v9 = 2321555466;
              }

LABEL_77:
              v47 = v382;
              goto LABEL_708;
            }

LABEL_705:
            v394 += v380;
            v66 = (*(a1[6] + 104))(a1[4], a1[5]);
          }
        }

LABEL_706:
        v9 = v66;
        v17 = v358;
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0);
        v17 = v358;
        v9 = 2321555466;
      }

      v47 = v382;
      goto LABEL_708;
    }

    v374 = v107;
    v388 = 9999;
    v159 = v396;
    UTF8Char = utf8_getUTF8Char(v397, v105, v396);
    if (v369)
    {
      v363 = v71;
      v365 = 0;
      v161 = 2;
      v350 = v396;
LABEL_336:
      j = v372;
      goto LABEL_337;
    }

    v367 = v105;
    v169 = &v397[v105];
    v170 = *v169;
    if (v170 == 32 && v370 != 0)
    {
      v350 = 0;
      j = v372;
LABEL_379:
      v105 = v367;
      goto LABEL_380;
    }

    v9 = UTF8Char;
    v172 = *(a1 + 240);
    v176 = v72 || v354 || v172 != 1 || v383 == 1;
    if (v172 && v176)
    {
      if (v170 == 32 && v172 == 1 && v383 == 1)
      {
        goto LABEL_423;
      }
    }

    else
    {
      v187 = v170 - 48 >= 0xA && (v170 & 0xFFFFFFDF) - 65 >= 0x1A;
      if (!v187 || v170 == 32)
      {
LABEL_423:
        v363 = v71;
        if (*(a1 + 238) != 1)
        {
          v365 = 0;
          v350 = v396;
          v161 = 2;
LABEL_523:
          j = v372;
          v105 = v367;
          goto LABEL_337;
        }

        v105 = v367;
        if (v170 > 0x60 || v170 - 65 <= 0x19)
        {
          v85 = unixlit_addLangStrs(a1, v343, a1 + 488, v387, &v388);
          if ((v85 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          v365 = 0;
          v350 = v396;
          v161 = 1;
        }

        else
        {
          v365 = 0;
          v350 = v396;
          v161 = 2;
        }

        goto LABEL_336;
      }
    }

    if (v71)
    {
      v188 = cstdlib_strlen("§");
      if (!cstdlib_strncmp(v169, "§", v188))
      {
        v363 = v71;
        v365 = 0;
        v350 = v396;
        v161 = 2;
        v159 = v396;
        goto LABEL_523;
      }
    }

    v47 = v382;
    v105 = v367;
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_559;
    }

    *&__c[1] = -1;
    v85 = unixlit_lookup(a1, "utfunixlit", v396, &__c[3], &__c[1], __c);
    if ((v85 & 0x80000000) != 0)
    {
      goto LABEL_557;
    }

    if (!*&__c[1])
    {
      j = v372;
LABEL_380:
      v73 -= utf8_determineUTF8CharLength(v397[v105]);
      if (v397[v105] == 32)
      {
        if (v71 && v106 && v106 == v374)
        {
          v368 = v105;
          v180 = cstdlib_strlen("§");
          v181 = *(a1[7] + 104);
          v182 = cstdlib_strlen("§");
          v181(a1[115], a1[116], "§", v182);
          v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, v180);
          if ((v85 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          if (v180)
          {
            v183 = 0;
            v184 = v387[3];
            v185 = v390;
            do
            {
              *(v185 + 8 * v70++) = v184;
              ++v183;
            }

            while (v180 > v183);
          }

          v227 = cstdlib_strlen("§");
          (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
          v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, 1);
          if ((v85 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          v370 = 0;
          v378 = 0;
          v186 = 0;
          v228 = v390 + 8 * v70;
          *v228 = v387[3];
          *(v228 + 4) = 1;
          ++v70;
          v73 += v227 + 1;
          j = v372;
          goto LABEL_536;
        }

        v378 = 0;
        v186 = 0;
      }

      else
      {
        v378 = v106 + 1;
        v186 = v374 + 1;
      }

      goto LABEL_552;
    }

    if (v71)
    {
      v189 = "-";
    }

    else
    {
      v189 = " ";
    }

    v190 = **&__c[3];
    if (cstdlib_strstr(**&__c[3], "░") == v190 && cstdlib_strcmp(__s, __dst))
    {
      unixlit_replace_utf8char(v190, v189);
    }

    v363 = v71;
    v191 = v190;
    v192 = cstdlib_strchr(v190, __c[0]);
    v379 = v73;
    if (!v192)
    {
      v194 = __s;
LABEL_538:
      v365 = 0;
LABEL_539:
      v198 = 2;
LABEL_540:
      v361 = v198;
      goto LABEL_541;
    }

    v193 = v192;
    v194 = __s;
    if (v192 != v191)
    {
      v195 = utf8_determineUTF8CharLength(0xE2u);
      if (&v193[-v195] >= v191)
      {
        v196 = &v193[-v195];
        if (cstdlib_strstr(v196, "░") == v196)
        {
          if (cstdlib_strcmp(__s, __dst))
          {
            unixlit_replace_utf8char(v196, v189);
            v193 += -utf8_determineUTF8CharLength(0xE2u) + 1;
          }
        }
      }
    }

    *v193 = 0;
    v350 = v193 + 1;
    v197 = cstdlib_strchr(v193 + 1, __c[0]);
    if (!v197)
    {
      goto LABEL_538;
    }

    v365 = v197;
    *v197 = 0;
    if (!cstdlib_strcmp(v191, ""))
    {
      goto LABEL_539;
    }

    if (!cstdlib_strcmp(++v365, ""))
    {
      goto LABEL_538;
    }

    v85 = unixlit_addLangStrs(a1, v343, a1 + 488, v365, &v388);
    if ((v85 & 0x80000000) != 0)
    {
      goto LABEL_557;
    }

    if (cstdlib_strcmp(v365, "normal"))
    {
      if (cstdlib_strcmp(v365, "latin"))
      {
        v198 = 2;
      }

      else
      {
        v198 = 1;
      }

      goto LABEL_540;
    }

    v361 = 0;
LABEL_541:
    __s = v194;
    if (!v191 || !cstdlib_strcmp(v191, ""))
    {
      j = v372;
      v73 = v379;
      v71 = v363;
      goto LABEL_379;
    }

    if (v350 && cstdlib_strcmp(v350, ""))
    {
      j = v372;
      v73 = v379;
      v105 = v367;
      v159 = v191;
    }

    else
    {
      v350 = v191;
      j = v372;
      v73 = v379;
      v159 = v191;
      v105 = v367;
    }

    v161 = v361;
LABEL_337:
    if (!cstdlib_strcmp(v159, " ") && !(v105 + v73) && !v383)
    {
      v71 = v363;
      goto LABEL_380;
    }

    if (*v159 == 32)
    {
      v162 = 0;
      if (v363 && v106 && v106 == v374)
      {
        v375 = v159;
        v163 = cstdlib_strlen("§");
        v164 = *(a1[7] + 104);
        v165 = cstdlib_strlen("§");
        v164(a1[115], a1[116], "§", v165);
        v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, v163);
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        if (v163)
        {
          v166 = 0;
          v167 = v387[3];
          v168 = v390;
          j = v372;
          do
          {
            *(v168 + 8 * v70++) = v167;
            ++v166;
          }

          while (v163 > v166);
        }

        else
        {
          j = v372;
        }

        v199 = cstdlib_strlen("§");
        v370 = 0;
        v162 = 0;
        v179 = 0;
        v73 += v199;
        v159 = v375;
      }

      else
      {
        v179 = 0;
      }
    }

    else
    {
      v162 = v106 + 1;
      v179 = v374;
    }

    if (v363 || (v344 != 1 || v161) && (v344 || v161 != 1))
    {
      if (v161 >= 2u && *(a1 + 239) && *v159 != 32)
      {
        goto LABEL_442;
      }
    }

    else
    {
      v352 = v72;
      v200 = v161;
      v201 = v162;
      v202 = v179;
      v85 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, 1);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      *(v390 + 8 * v70++ + 4) = 1;
      ++v73;
      j = v372;
      v179 = v202;
      v162 = v201;
      v161 = v200;
      v72 = v352;
    }

    v344 = v161;
LABEL_442:
    v376 = v179;
    v378 = v162;
    if (v369 || !(v72 | v383) || !v72 && v397[v105] <= 0x20u)
    {
      v71 = v363;
      if (v363 && cstdlib_strlen(v159) != 1 && (cstdlib_strchr(v159, 32) || cstdlib_strchr(v159, 95)) && cstdlib_strlen(v159))
      {
        v203 = 0;
        v204 = 0;
        do
        {
          v205 = v159[v203];
          if (v205 == 95 || v205 == 32)
          {
            v159[v203] = 45;
          }

          v203 = ++v204;
        }

        while (cstdlib_strlen(v159) > v204);
      }

      if (!cstdlib_strcmp(v159, ""))
      {
        goto LABEL_551;
      }

      v206 = *(a1[7] + 104);
      v207 = cstdlib_strlen(v159);
      v9 = v206(a1[115], a1[116], v159, v207);
      if (!cstdlib_strcmp(v159, " "))
      {
        v214 = cstdlib_strlen(v159);
        v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, v214);
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v215 = v390;
        if (v70)
        {
          v216 = v70;
          *(v390 + 8 * v70) = *(v390 + 8 * (v70 - 1));
        }

        else
        {
          v216 = 0;
        }

        v370 = 0;
        ++v70;
        *(v215 + 8 * v216 + 4) = 1;
        goto LABEL_551;
      }

      if (!cstdlib_strcmp(v159, "\x15"))
      {
        v224 = cstdlib_strlen(v159);
        v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, v224);
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        if (v387[3] == 9999)
        {
          v225 = v390;
          if (v70)
          {
            v226 = v70;
            *(v390 + 8 * v70) = *(v390 + 8 * (v70 - 1));
          }

          else
          {
            v226 = 0;
          }

          v370 = 0;
          ++v70;
          *(v225 + 8 * v226 + 4) = 1;
        }

        else
        {
          v370 = 0;
          *(v390 + 8 * v70++) = v387[3];
        }

        goto LABEL_551;
      }

      v208 = v388;
      if (!v365 && v388 == 9999 && v387[3] == 9999)
      {
        v209 = cstdlib_strlen(v159);
        v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, v209);
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v210 = v209;
        if (v209)
        {
          v211 = v390;
          v212 = v159;
          do
          {
            v213 = *v212++;
            if (v213 == 32)
            {
              *(v211 + 8 * v70 + 4) = 1;
            }

            ++v70;
            --v210;
          }

          while (v210);
          v370 = 0;
          goto LABEL_551;
        }
      }

      else
      {
        if (v388 != 9999 || v387[3] != 9999)
        {
          v353 = v72;
          v237 = v73;
          v238 = cstdlib_strlen(v159);
          v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, v238);
          if ((v85 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          if (cstdlib_strlen(v159))
          {
            v239 = 0;
            v240 = 0;
            v241 = v390;
            if (v387[3] != 9999)
            {
              v208 = v387[3];
            }

            do
            {
              *(v241 + 8 * v70) = v208;
              if (v159[v239] == 32)
              {
                *(v241 + 8 * v70 + 4) = 1;
              }

              v70 = v70 + 1;
              v239 = ++v240;
            }

            while (cstdlib_strlen(v159) > v240);
            v370 = 0;
          }

          else
          {
            v370 = 0;
          }

          v73 = v237;
          v71 = v363;
          v72 = v353;
          goto LABEL_551;
        }

        v47 = v382;
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_559;
        }
      }

      v370 = 0;
LABEL_551:
      v247 = cstdlib_strlen(v159);
      v73 += v247 - utf8_determineUTF8CharLength(v397[v105]);
      j = v372;
      v186 = v376;
      goto LABEL_552;
    }

    v71 = v363;
    if (!v354 || (v217 = v397[v105], v218 = v397[v105], v217 <= 122) && (v217 - 91) >= 6u && (v217 - 58) >= 7u && v218 >= 0xE && (v217 & 0xFFFFFFF0) != 0x20)
    {
      v368 = v105;
      v219 = cstdlib_strlen(v350);
      if (Utf8_LengthInUtf8chars(v350, v219) < 2)
      {
        v220 = __s;
      }

      else
      {
        v220 = __s;
        v401 = 9668;
        utf8_Utf16ToUtf8(&v401, 1u, 0, v396, 5u, &v395 + 1, 0);
        v85 = (*(a1[7] + 104))(a1[115], a1[116], v396, HIDWORD(v395));
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, WORD2(v395));
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v221 = HIDWORD(v395);
        if (HIDWORD(v395))
        {
          v222 = 0;
          v223 = v390;
          do
          {
            if (v396[v222] == 32)
            {
              *(v223 + 8 * v70 + 4) = 1;
              v221 = HIDWORD(v395);
            }

            ++v70;
            ++v222;
          }

          while (v221 > v222);
        }

        v73 += v221;
      }

      v229 = *(a1[7] + 104);
      v230 = cstdlib_strlen(v350);
      v85 = v229(a1[115], a1[116], v350, v230);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v231 = cstdlib_strlen(v350);
      v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, v231);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v232 = v231;
      if (v231)
      {
        v233 = v390;
        v234 = v350;
        v235 = v350;
        do
        {
          v236 = *v235++;
          if (v236 == 32)
          {
            *(v233 + 8 * v70 + 4) = 1;
          }

          ++v70;
          --v232;
        }

        while (v232);
      }

      else
      {
        v234 = v350;
      }

      v242 = cstdlib_strlen(v234);
      v73 += v242 - utf8_determineUTF8CharLength(v397[v368]);
      v243 = cstdlib_strlen(v234);
      v369 = 0;
      __s = v220;
      if (Utf8_LengthInUtf8chars(v234, v243) < 2)
      {
        v370 = 0;
      }

      else
      {
        v401 = 9668;
        utf8_Utf16ToUtf8(&v401, 1u, 0, v396, 5u, &v395 + 1, 0);
        v85 = (*(a1[7] + 104))(a1[115], a1[116], v396, HIDWORD(v395));
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, WORD2(v395));
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v244 = HIDWORD(v395);
        if (HIDWORD(v395))
        {
          v245 = 0;
          v246 = v390;
          do
          {
            if (v396[v245] == 32)
            {
              *(v246 + 8 * v70 + 4) = 1;
              v244 = HIDWORD(v395);
            }

            ++v70;
            ++v245;
          }

          while (v244 > v245);
        }

        v370 = 0;
        v73 += v244;
      }

      j = v372;
      v186 = v376;
LABEL_536:
      v105 = v368;
      goto LABEL_552;
    }

    v73 -= utf8_determineUTF8CharLength(v218);
    v186 = v376;
LABEL_552:
    v248 = utf8_determineUTF8CharLength(v397[v105]);
    v67 = (v105 + v248);
    v75 = v371;
    v68 = v186;
    v76 = v381;
    v77 = v382;
    LOWORD(v107) = v186;
    v69 = v378;
    if ((v105 + v248) > v371)
    {
      goto LABEL_562;
    }
  }

  while (1)
  {
    v364 = v74;
    v79 = v77 + 32 * v74;
    v80 = *(v79 + 12);
    v366 = v67;
    if (v67 != (v80 - j))
    {
      goto LABEL_332;
    }

    v373 = v67;
    if (v71 && v69 && v69 == v68)
    {
      v81 = v77 + 32 * v74;
      v82 = cstdlib_strlen("§");
      v83 = *(a1[7] + 104);
      v84 = cstdlib_strlen("§");
      v83(a1[115], a1[116], "§", v84);
      v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, v82);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      if (v82)
      {
        v86 = 0;
        v87 = v387[3];
        v88 = v390;
        j = v372;
        do
        {
          *(v88 + 8 * v70++) = v87;
          ++v86;
        }

        while (v82 > v86);
      }

      else
      {
        j = v372;
      }

      v370 = 0;
      v73 += cstdlib_strlen("§");
      v79 = v81;
      v80 = *(v81 + 12);
      v67 = v373;
    }

    *(v79 + 12) = (v80 + v73 + v395) & ~((v80 + v73 + v395) >> 31);
    v89 = *v79;
    if (*v79 == 21)
    {
      if (v72)
      {
        v72 = !cstdlib_strcmp(*(v79 + 24), __dst) || !cstdlib_strncmp(*(v79 + 24), v392, 6uLL) || !cstdlib_strcmp(*(v79 + 24), v403) || !cstdlib_strcmp(*(v79 + 24), v391) || cstdlib_strcmp(*(v79 + 24), v402) == 0;
        v67 = v373;
      }

      else
      {
        v72 = 0;
      }

      __s = *(v79 + 24);
      v89 = *v79;
    }

    if (v89 == 21 || v89 == 36)
    {
      if (!v67)
      {
        goto LABEL_176;
      }
    }

    else if (v89 != 8 || (v72 | v71) != 0 || v67 == 0)
    {
      goto LABEL_176;
    }

    if (v397[v67 - 1] != 32)
    {
      v85 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, 1);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      *(v390 + 8 * v70++ + 4) = 1;
      ++*(v79 + 12);
      ++v73;
      v89 = *v79;
      j = v372;
      v67 = v373;
    }

LABEL_176:
    if (v89 == 21)
    {
      v369 = 0;
      v71 = 0;
LABEL_189:
      if (cstdlib_strcmp(*(v79 + 24), __dst) && cstdlib_strncmp(*(v79 + 24), v392, 6uLL) && cstdlib_strcmp(*(v79 + 24), v403) && cstdlib_strcmp(*(v79 + 24), v391) && cstdlib_strcmp(*(v79 + 24), v402))
      {
        v101 = *v79 != 21 && v72;
        v102 = v72 && *v79 == 21;
        v103 = v354;
        if (v102)
        {
          v103 = 0;
        }

        v354 = v103;
        v72 = v101;
      }

      else if (cstdlib_strcmp(*(v79 + 24), v404) && cstdlib_strcmp(*(v79 + 24), v403) && cstdlib_strcmp(*(v79 + 24), v391))
      {
        v354 = cstdlib_strcmp(*(v79 + 24), v402) == 0;
        v72 = 1;
      }

      else
      {
        v72 = 1;
        v354 = 1;
      }

LABEL_208:
      v76 = v381;
      v77 = v382;
      v75 = v371;
      goto LABEL_216;
    }

    if (v89 == 34)
    {
      v99 = cstdlib_strstr(*(v79 + 24), "\x14EXTCLC");
      v100 = v369;
      if (v99)
      {
        v100 = 1;
      }

      v369 = v100;
      v71 = 1;
      if (*v79 != 21)
      {
        goto LABEL_208;
      }

      goto LABEL_189;
    }

    if (v89 != 36)
    {
      v76 = v381;
      v77 = v382;
      v75 = v371;
      goto LABEL_217;
    }

    v92 = *(*a1 + 8);
    v93 = cstdlib_strlen(*(v79 + 24));
    v94 = heap_Alloc(v92, (v93 + 1));
    if (!v94)
    {
      v249 = *(*a1 + 32);
      v250 = 30000;
LABEL_571:
      log_OutPublic(v249, "FE_UNIXLIT", v250, 0);
      v9 = 2321555466;
      goto LABEL_558;
    }

    v95 = v94;
    v359 = v79;
    v96 = **(v79 + 24);
    if (v96)
    {
      v97 = 0;
      v98 = 0;
      do
      {
        v95[v97] = ssft_tolower(v96);
        v97 = ++v98;
        v96 = *(*(v359 + 24) + v98);
      }

      while (v96);
    }

    else
    {
      v97 = 0;
    }

    v95[v97] = 0;
    if (cstdlib_strcmp(v95, "normal"))
    {
      v104 = unixlit_addLangStrs(a1, v343, a1 + 488, v95, &v387[3]);
      if ((v104 & 0x80000000) != 0)
      {
        v9 = v104;
        heap_Free(*(*a1 + 8), v95);
        goto LABEL_558;
      }
    }

    else
    {
      v387[3] = 9999;
    }

    heap_Free(*(*a1 + 8), v95);
    v79 = v359;
    *v359 = 0x4000;
    *(v359 + 16) = 0;
    *(v359 + 8) = 0;
    v76 = v381;
    v77 = v382;
    j = v372;
    v75 = v371;
LABEL_216:
    v67 = v373;
LABEL_217:
    if (*v79 != 7 || *(v79 + 24) != 43)
    {
      v105 = v67;
      goto LABEL_223;
    }

    v362 = v71;
    v351 = v72;
    v360 = v79;
    if (v67 && v397[v67 - 1] != 32)
    {
      v85 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, 1);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      *(v390 + 8 * v70++ + 4) = 1;
      ++*(v79 + 12);
      v377 = v73 + 1;
      v76 = v381;
      v77 = v382;
      j = v372;
      v75 = v371;
      v67 = v373;
    }

    else
    {
      v377 = v73;
    }

    v108 = 0;
    v109 = 0;
    ++v74;
    v110 = 1;
    v357 = v387[3];
    v105 = v67;
LABEL_229:
    v111 = v105;
    v355 = v105 < v75;
    while (1)
    {
      if (v76 <= v74)
      {
        v118 = v76 == v74;
        if (v76 != v74 || v105 >= v75)
        {
          goto LABEL_283;
        }

        goto LABEL_247;
      }

      v112 = v77 + 32 * v74;
      if (*v112 == 7 && v111 >= (*(v112 + 12) - j))
      {
        break;
      }

      v113 = (v77 + 32 * v74);
      v114 = v113 + 3;
      for (i = v113[3]; v105 == (i - j); i = v113[3])
      {
        v116 = *v113;
        if (*v113 == 21 || v116 == 36)
        {
          *v113 = 0x4000;
          v113[4] = 0;
          v113[2] = 0;
        }

        else if (v116 == 7)
        {
          break;
        }

        *v114 = (i + v377 + v395) & ~((i + v377 + v395) >> 31);
        if (v76 <= ++v74)
        {
          break;
        }

        v117 = v77 + 32 * v74;
        if (v105 == (*(v117 + 12) - j) && *v117 == 7)
        {
          v109 = 1;
        }

        v113 = (v77 + 32 * v74);
        v114 = v113 + 3;
      }

LABEL_247:
      v119 = &v397[v105];
      v120 = *v119;
      if (v109)
      {
        v121 = 1;
      }

      else
      {
        v121 = v120 == 32;
      }

      if (!v121)
      {
        v108 = 0;
      }

      if ((v120 == 95 || v120 == 35) && v105 != v67)
      {
        v122 = *(v119 - 1);
        v123 = (v122 - 32) > 0x3F || ((1 << (v122 - 32)) & 0x8000000000000009) == 0;
        if (v123 && (v105 < 4u || v122 != 92 || (*(v119 - 3) | 0x20) != 0x74 || v397[v105 - 4] != 92))
        {
          if (v120 == 35)
          {
            v108 = 1;
          }

          v124 = v111;
          if (!v110)
          {
            v85 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
            if ((v85 & 0x80000000) != 0)
            {
              goto LABEL_557;
            }

            v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, 1);
            if ((v85 & 0x80000000) != 0)
            {
              goto LABEL_557;
            }

            v125 = v390 + 8 * v70;
            *v125 = v357;
            *(v125 + 4) = 1;
            ++v70;
            ++v377;
          }

          v401 = 167;
          utf8_Utf16ToUtf8(&v401, 1u, 0, v396, 5u, &v395 + 1, 0);
          v85 = (*(a1[7] + 104))(a1[115], a1[116], v396, HIDWORD(v395));
          if ((v85 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, WORD2(v395));
          if ((v85 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          v126 = HIDWORD(v395);
          v76 = v381;
          v77 = v382;
          if (HIDWORD(v395))
          {
            v127 = 0;
            v128 = v390;
            j = v372;
            v75 = v371;
            v67 = v373;
            do
            {
              *(v128 + 8 * v70) = v357;
              if (v396[v127] == 32)
              {
                *(v128 + 8 * v70 + 4) = 1;
                v126 = HIDWORD(v395);
              }

              v70 = v70 + 1;
              ++v127;
            }

            while (v126 > v127);
          }

          else
          {
            j = v372;
            v75 = v371;
            v67 = v373;
          }

          v370 = 0;
          v110 = 0;
          v377 += v126;
          v111 = v124;
        }
      }

      if (!v109)
      {
        v129 = v110;
        v377 -= utf8_determineUTF8CharLength(v397[v105]);
        v130 = utf8_determineUTF8CharLength(v397[v105]);
        v110 = v129;
        v67 = v373;
        v75 = v371;
        v105 = (v105 + v130);
        v76 = v381;
        v77 = v382;
        goto LABEL_229;
      }
    }

    v118 = v76 == v74;
    v355 = v105 < v75;
LABEL_283:
    v131 = v105 == v75 && v118;
    if (v76 <= v74 && !v131)
    {
      v105 = v67;
      v73 = v377;
      v71 = v362;
      goto LABEL_223;
    }

    v132 = v110;
    v133 = v105 - v366;
    v134 = heap_Alloc(*(*a1 + 8), v133 + 1);
    if (!v134)
    {
LABEL_570:
      v249 = *(*a1 + 32);
      v250 = 39000;
      goto LABEL_571;
    }

    v135 = v134;
    cstdlib_memcpy(v134, &v397[v373], v133);
    v135[v133] = 0;
    *v360 = 34;
    *(v360 + 24) = v135;
    *(v358 + 8 * v364) = v135;
    if (v108)
    {
      v136 = v382;
      v73 = v377;
      v75 = v371;
      v71 = v362;
      v137 = v371;
      v72 = v351;
      v138 = v105;
      goto LABEL_304;
    }

    v139 = v377;
    if (!v132)
    {
      break;
    }

LABEL_296:
    v401 = 167;
    utf8_Utf16ToUtf8(&v401, 1u, 0, v396, 5u, &v395 + 1, 0);
    v85 = (*(a1[7] + 104))(a1[115], a1[116], v396, HIDWORD(v395));
    v72 = v351;
    if ((v85 & 0x80000000) != 0)
    {
      goto LABEL_557;
    }

    v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, WORD2(v395));
    v71 = v362;
    if ((v85 & 0x80000000) != 0)
    {
      goto LABEL_557;
    }

    v141 = HIDWORD(v395);
    v136 = v382;
    v75 = v371;
    v137 = v371;
    v138 = v105;
    if (HIDWORD(v395))
    {
      v142 = 0;
      v143 = v390;
      do
      {
        *(v143 + 8 * v70) = v357;
        if (v396[v142] == 32)
        {
          *(v143 + 8 * v70 + 4) = 1;
          v141 = HIDWORD(v395);
        }

        v70 = v70 + 1;
        ++v142;
      }

      while (v141 > v142);
    }

    v370 = 0;
    v73 = v139 + v141;
LABEL_304:
    if (!v118)
    {
      v144 = *(*a1 + 8);
      v145 = cstdlib_strlen(__s);
      v146 = heap_Alloc(v144, (v145 + 1));
      if (!v146)
      {
        goto LABEL_570;
      }

      v147 = v146;
      cstdlib_strcpy(v146, __s);
      v136 = v382;
      v148 = v382 + 32 * v74;
      *v148 = 21;
      *(v148 + 24) = v147;
      *(v358 + 8 * v74) = v147;
      v149 = *(v148 + 12) + v73 + v395;
      *(v148 + 12) = v149 & ~(v149 >> 31);
      v75 = v371;
      v137 = v371;
      v138 = v105;
    }

    if (v355)
    {
      v150 = v105;
      v151 = v397[v105] != 32;
      while (v397[v150] == 32)
      {
        if (v137 == ++v150)
        {
          v152 = v75;
          goto LABEL_314;
        }
      }

      v152 = v150;
LABEL_314:
      v138 = v152;
    }

    else
    {
      v151 = 1;
      v152 = v105;
    }

    v153 = v138 + 1;
    if (v153 != *(v136 + 16) || ((v154 = v397[v152], v37 = v154 > 0x3F, v155 = (1 << v154) & 0x8800400200000000, !v37) ? (v156 = v155 == 0) : (v156 = 1), v156))
    {
      if (v151)
      {
        v85 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, 1);
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        *(v390 + 8 * v70++ + 4) = 1;
        ++v73;
        v76 = v381;
        v77 = v382;
        j = v372;
        v75 = v371;
      }

      else
      {
        v76 = v381;
        v77 = v382;
        j = v372;
      }
    }

    else
    {
      utf8_getUTF8Char(v397, v138, v396);
      v85 = (*(a1[7] + 104))(a1[115], a1[116], v396, 1);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, 1);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v76 = v381;
      v77 = v382;
      v75 = v371;
      if (v396[0] == 32)
      {
        *(v390 + 8 * v70 + 4) = 1;
      }

      ++v70;
      v157 = v382 + 32 * v74;
      v158 = *(v157 + 12) + 1;
      *(v157 + 12) = v158;
      for (j = v372; v381 > v74; ++v74)
      {
        *(v382 + 32 * v74 + 12) = v158;
      }

      v105 = v153;
    }

LABEL_223:
    v68 = 0;
    v69 = 0;
    v106 = 0;
    v107 = 0;
    ++v74;
    v67 = v105;
    if (v76 <= v74)
    {
      goto LABEL_333;
    }
  }

  v85 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
  if ((v85 & 0x80000000) == 0)
  {
    v85 = unixlit_growMapCharStr(a1, &v390, &v389, v70, 1);
    if ((v85 & 0x80000000) == 0)
    {
      v140 = v390 + 8 * v70;
      *v140 = v357;
      *(v140 + 4) = 1;
      ++v70;
      v139 = v377 + 1;
      goto LABEL_296;
    }
  }

LABEL_557:
  v9 = v85;
LABEL_558:
  v47 = v382;
LABEL_559:
  v17 = v358;
LABEL_708:
  heap_Free(*(*a1 + 8), v47);
LABEL_709:
  if (v390)
  {
    heap_Free(*(*a1 + 8), v390);
  }

  if (v17)
  {
    if (v381 >= 2)
    {
      v341 = (v17 + 8);
      v342 = v381 - 1;
      do
      {
        if (*v341)
        {
          heap_Free(*(*a1 + 8), *v341);
        }

        ++v341;
        --v342;
      }

      while (v342);
    }

    heap_Free(*(*a1 + 8), v17);
  }

  return v9;
}