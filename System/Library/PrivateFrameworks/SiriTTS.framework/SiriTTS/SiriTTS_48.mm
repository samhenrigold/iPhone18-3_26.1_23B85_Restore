char *IsModelHomograph(const char *a1, char *a2)
{
  v4 = strlen(a1);
  result = strstr(a2, a1);
  if (result)
  {
    if (result == a2 || *(result - 1) == 124)
    {
      return (!result[v4] || result[v4] == 124);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *GetHomographPhon(const char *a1, char *__s)
{
  v2 = __s;
  for (i = __s; ; i = v8 + 1)
  {
    v5 = strchr(i, 61);
    v6 = v5;
    if (!v5)
    {
      break;
    }

    *v5 = 0;
    v6 = v5 + 1;
    v7 = strcmp(a1, v2);
    v8 = strchr(v6, 124);
    if (!v7)
    {
      if (v8)
      {
        *v8 = 0;
      }

      return v6;
    }

    if (!v8)
    {
      return 0;
    }

    v2 = v8 + 1;
  }

  return v6;
}

char *hlp_filterWordCandIfTnHas(char *result)
{
  v1 = *(result + 28);
  if (*(result + 28))
  {
    v2 = 0;
    v3 = *(result + 6);
    do
    {
      v4 = (v3 + 16 * v2);
      v5 = v4[4];
      if (v4[4])
      {
        v6 = (*v4 + 48);
        do
        {
          result = strstr(*(v6 - 1), "poi");
          if (result)
          {
            *v6 = 1;
          }

          v6 += 14;
          --v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t hlp_hasRcdWithGivenPOIClass(uint64_t a1, char *__s2)
{
  v2 = *(a1 + 56);
  if (!*(a1 + 56))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 48);
  while (1)
  {
    v6 = (v5 + 16 * v4);
    v7 = v6[4];
    if (v6[4])
    {
      break;
    }

LABEL_7:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v8 = (*v6 + 40);
  while (strcmp(*v8, __s2))
  {
    v8 += 7;
    if (!--v7)
    {
      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t hlp_filterWordCandIfTnIsNot(uint64_t result, char *__s2)
{
  v2 = *(result + 56);
  if (*(result + 56))
  {
    v4 = 0;
    v5 = *(result + 48);
    do
    {
      v6 = (v5 + 16 * v4);
      v7 = v6[4];
      if (v6[4])
      {
        v8 = (*v6 + 48);
        do
        {
          result = strcmp(*(v8 - 1), __s2);
          if (result)
          {
            *v8 = 1;
          }

          v8 += 14;
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return result;
}

uint64_t stat_hmogrph_hasSubWordWithGivenTn(uint64_t a1, unsigned int a2, char *__s2)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v5 = *a1;
  v6 = a2;
  v7 = *a1 + (a2 << 6);
  while (!v6 || *(v7 + 8) > *(v5 + 8) || *(v7 + 10) < *(v5 + 10) || !hlp_hasRcdWithGivenPOIClass(v5, __s2))
  {
    v5 += 64;
    --v6;
    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t nntn_AllInOneLoop(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : AllInOneLoop Begin");
  if ((paramc_ParamGetInt(*(*a1 + 40), "maxTNNNcallspersent", &v45) & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "set maxTNNNCallsPerSent to %d", v45);
  }

  if (v45)
  {
    *(a1 + 872) = v45;
  }

  v2 = *(a1 + 168);
  *(*(*v2 + 16) + 32) = a1;
  v3 = setDomainsOnSentence_NNTN(a1);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  DomainDefBlockInfo = mergeDomainsOnSentence_NNTN(a1);
  if ((DomainDefBlockInfo & 0x80000000) == 0)
  {
    v5 = *v2;
    *(*(*v2 + 16) + 16) = *(a1 + 304);
    *(v5 + 64) = 16;
    *(v5 + 42) = *(a1 + 312);
    v6 = *(*(a1 + 264) + 16);
    NumberChildren = LDOTreeNode_GetNumberChildren(v6);
    v8 = *(*a1 + 32);
    v9 = *(a1 + 184);
    if (!NumberChildren)
    {
      log_OutText(v8, v9, 5, 0, "no basic token records to process");
      return DomainDefBlockInfo;
    }

    log_OutText(v8, v9, 4, 0, "tokentn : start loop...");
    v10 = *(v6 + 80);
    v11 = *(v6 + 88);
    v46 = v10;
    v41 = v11;
    if (v10 >= v11)
    {
LABEL_59:
      if ((paramc_ParamGetStr(*(*a1 + 40), "spaceInPYT", &v47) & 0x80000000) != 0 || LH_stricmp(v47, "yes") || (DomainDefBlockInfo = nntn_write_LD_T_INPUTSPACETAG(a1), (DomainDefBlockInfo & 0x80000000) == 0))
      {
LABEL_65:
        FERuntimeData_FreeMatches(a1, 1);
        log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : AllInOneLoop End (%x)");
      }

      return DomainDefBlockInfo;
    }

    v12 = 0;
    while (1)
    {
      v43 = 0;
      __s1 = 0;
      v13 = *v10;
      v14 = LDOTreeNode_ComputeAbsoluteFrom(*v10, &v43 + 1);
      DomainRange = LH_ERROR_to_VERROR(v14);
      if ((DomainRange & 0x80000000) != 0 || (v16 = LDOTreeNode_ComputeAbsoluteTo(v13, &v43), DomainRange = LH_ERROR_to_VERROR(v16), (DomainRange & 0x80000000) != 0))
      {
LABEL_64:
        DomainDefBlockInfo = DomainRange;
        goto LABEL_65;
      }

      v17 = WORD2(v43);
      v18 = v43;
      Type = LDOObject_GetType(v13, &__s1);
      DomainDefBlockInfo = LH_ERROR_to_VERROR(Type);
      if ((DomainDefBlockInfo & 0x80000000) != 0)
      {
        goto LABEL_65;
      }

      *(*v2 + 72) = 0;
      v20 = __s1;
      if (!strcmp(__s1, "TOKEN_ALPHA"))
      {
        v21 = 0;
      }

      else
      {
        v21 = v12;
      }

      if (!strcmp(v20, "TOKEN_DIGIT"))
      {
        v21 = 1;
      }

      if (!strcmp(v20, "TOKEN_PUNCT"))
      {
        v21 = 2;
      }

      if (!strcmp(v20, "TOKEN_WSPACE"))
      {
        v21 = 3;
      }

      if (!strcmp(v20, "TOKEN_DCT"))
      {
        v21 = 4;
      }

      if (!strcmp(v20, "TOKEN_USER_TN"))
      {
        v21 = 5;
      }

      if (!strcmp(v20, "TOKEN_INT_TN"))
      {
        v21 = 6;
      }

      if (!strcmp(v20, "TOKEN_CASEGENDER"))
      {
        v12 = 7;
      }

      else
      {
        v12 = v21;
      }

      if (v12 <= 2)
      {
        HIWORD(v50) = 0;
        FERuntimeData_GetActiveDomains(a1, v53, &v50 + 1, v17, v18, 0);
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "START basic token %d,%d ... %d active domains", v17, v18, HIWORD(v50));
        if (HIWORD(v50))
        {
          v22 = 0;
          v23 = vceqq_s32(vdupq_n_s32(v12), xmmword_1C37BD790);
          v24 = vmovn_s32(v23);
          v24.i16[3] = vmovn_s32(vmvnq_s8(*&v23)).i16[3];
          v42 = v24;
          while (1)
          {
            LOWORD(v50) = 0;
            v52 = 0;
            v25 = *v2;
            *(v25 + 46) = 0;
            *(v25 + 44) = v17;
            *(v25 + 56) = 0;
            DomainRange = FERuntimeData_GetDomainRange(a1, v53[v22], &v51);
            if ((DomainRange & 0x80000000) != 0)
            {
              goto LABEL_64;
            }

            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Domain %d : range %d,%d", v22, *v51, v51[1]);
            *(*v2 + 46) = v51[1];
            DomainRange = FERuntimeData_GetDomainBlockIndex(a1, v53[v22], &v50, &v52);
            if ((DomainRange & 0x80000000) != 0)
            {
              goto LABEL_64;
            }

            DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v50, &v49);
            if ((DomainDefBlockInfo & 0x80000000) != 0)
            {
              goto LABEL_65;
            }

            v26 = *(v49 + 24);
            if (v52 > v26)
            {
              break;
            }

            v27 = (*(v49 + 16) + 72 * v52);
            v28 = *(v49 + 40) + 16 * v27[6];
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "doing domain %d, Domain[%s:%s] (applying %d rules)", v22, *v49, (*(v27 + 6) + *v27), *(v28 + 8));
            if (*(v28 + 8))
            {
              v29 = *v2;
              if (*(*v2 + 72) != 1)
              {
                v30 = 0;
                v31 = 0;
                while (1)
                {
                  v32 = *v28 + v30;
                  *(v29 + 40) = 0;
                  v33 = v29 + 40;
                  *(v33 + 16) = v32;
                  DomainDefBlockInfo = FEData_blockData_getTokenAndRegexData_NNTN(a1, v32, (v33 - 8), v33, (v33 - 16), &v48);
                  if ((DomainDefBlockInfo & 0x80000000) != 0)
                  {
                    goto LABEL_65;
                  }

                  if ((vmaxv_u16(vcltz_s16(vshl_n_s16(vand_s8(v42, vmovn_s32(vceqq_s32(vdupq_n_s32(v48), xmmword_1C37BD7A0))), 0xFuLL))) & 1) != 0 || !v48)
                  {
                    break;
                  }

                  if (v48 == 5)
                  {
                    if ((v12 & 1) == 0)
                    {
                      break;
                    }
                  }

                  else if (v48 == 6 && v12 - 1 < 2)
                  {
                    break;
                  }

                  log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "rule %s (token %s, %d,%d) blocked by triggerType %s", *(*v2 + 24), TOKENTSTR_0[v12], v17, v18, TRIGGERSTR[v48]);
LABEL_54:
                  if (++v31 < *(v28 + 8))
                  {
                    v30 += 24;
                    v29 = *v2;
                    if (*(*v2 + 72) != 1)
                    {
                      continue;
                    }
                  }

                  goto LABEL_56;
                }

                v35 = *v2;
                v36 = *(*v2 + 16);
                v37 = *(*v2 + 24);
                v38 = *v36;
                *(v38 + 82) = 0;
                *(v38 + 40) = 0;
                v36[2] = *(a1 + 304);
                v36[3] = v37;
                *(v38 + 96) = *(v35 + 56);
                *(v38 + 104) = v50;
                *(v38 + 106) = v52;
                *(v36 + 26) = *(v35 + 44);
                *(v36 + 27) = *(v35 + 46);
                *(v36 + 11) = 0;
                *(v36 + 12) = 0;
                DomainDefBlockInfo = tokenizer_apply_regex_NNTN(a1, v35, &v46);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_65;
                }

                v39 = *(*v2 + 16);
                **(v39 + 8) = 0;
                *(v39 + 44) = 0;
                goto LABEL_54;
              }
            }

LABEL_56:
            if (++v22 >= HIWORD(v50))
            {
              goto LABEL_57;
            }
          }

          log_OutPublic(*(*a1 + 32), *(a1 + 184), 24028, "%s%d%s%d", "domain", v52, "numDomains", v26);
          return NNTNERROR(0);
        }

LABEL_57:
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "END of loop for basic token %d,%d", v17, v18);
        FERuntimeData_FreeMatches(a1, 0);
      }

      v10 = v46 + 1;
      v46 = v10;
      if (v10 >= v41)
      {
        goto LABEL_59;
      }
    }
  }

  return DomainDefBlockInfo;
}

uint64_t nntn_write_LD_T_INPUTSPACETAG(uint64_t a1)
{
  v2 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v3 = *(*(a1 + 264) + 16);
  v4 = *(v3 + 80);
  if (v4 >= *(v3 + 88))
  {
LABEL_25:
    if (v22)
    {
      LDO_FreeLDOLabelVector(*(a1 + 264), &v21);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      __s1 = 0;
      if (v5)
      {
        Type = LDOObject_GetType(*v5, &__s1);
        v8 = LH_ERROR_to_VERROR(Type);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }
      }

      v9 = LDOTreeNode_ComputeAbsoluteFrom(*v4, &v24 + 1);
      v8 = LH_ERROR_to_VERROR(v9);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v10 = LDOTreeNode_ComputeAbsoluteTo(*v4, &v24);
      v2 = LH_ERROR_to_VERROR(v10);
      if ((v2 & 0x80000000) != 0)
      {
        return v2;
      }

      if (v5 && ((v11 = __s1, !strcmp(__s1, "TOKEN_PUNCT")) || !strcmp(v11, "TOKEN_WSPACE")))
      {
        v6 = 1;
      }

      else
      {
        v12 = LDO_ComputeOverlappingLabels(*(a1 + 264), &v24 + 1, &v24, 0, &v21);
        v2 = LH_ERROR_to_VERROR(v12);
        if ((v2 & 0x80000000) != 0)
        {
          return v2;
        }

        for (i = v22; i < v23; ++i)
        {
          v19 = 0;
          v18 = 0;
          StringAttribute = LDOObject_GetStringAttribute(*i, "TNTAG", &v18, &v19);
          v2 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          if (v18 && !strcmp(v19, "_PI1a_"))
          {
            if (v6 == 1)
            {
              v15 = "left";
            }

            else
            {
              v15 = "none";
            }

            v16 = LDOObject_SetStringAttribute(*v4, "INPUTSPACETAG", v15);
            v2 = LH_ERROR_to_VERROR(v16);
            if ((v2 & 0x80000000) != 0)
            {
              goto LABEL_25;
            }

            v6 = 0;
          }
        }

        LDO_FreeLDOLabelVector(*(a1 + 264), &v21);
        v5 = v4;
      }

      if (++v4 >= *(v3 + 88))
      {
        goto LABEL_25;
      }
    }
  }

  return v2;
}

BOOL isEnglishLetter(const char *a1)
{
  v2 = strlen(a1);
  WCharFromUtf8 = utf8_GetWCharFromUtf8(a1, 0, v2);
  if (*a1 & 0xDFu) - 65 < 0x1A || (WCharFromUtf8 - 192) < 0x17 || (WCharFromUtf8 - 216) < 7u || (WCharFromUtf8 - 223) < 0x18u || (WCharFromUtf8 & 0xFFF8) == 0xF8 || (WCharFromUtf8 - 256) <= 0x36 && (WCharFromUtf8 & 1) == 0 || (WCharFromUtf8 - 328) >= 0xFFF1u && (WCharFromUtf8 & 1) != 0 || (WCharFromUtf8 - 330) <= 0x2E && (WCharFromUtf8 & 1) == 0 || (WCharFromUtf8 - 382) >= 0xFFFBu && (WCharFromUtf8)
  {
    return 1;
  }

  v5 = (WCharFromUtf8 - 312) < 0x11;
  if (WCharFromUtf8)
  {
    v5 = (WCharFromUtf8 - 312) > 0xFFC8u;
  }

  if (v5 || (WCharFromUtf8 - 376) >= 0xFFD1u && (WCharFromUtf8 & 1) != 0)
  {
    return 1;
  }

  if ((WCharFromUtf8 - 378) <= 4)
  {
    return (WCharFromUtf8 & 1) == 0;
  }

  return WCharFromUtf8 == 383;
}

uint64_t updateLDOTreeNode_CHN(uint64_t *a1, _DWORD *a2)
{
  v90 = 0;
  v91 = 0;
  v88 = 0;
  __s1 = 0;
  v87 = 0;
  v4 = *(a1[33] + 16);
  NumberChildren = LDOTreeNode_GetNumberChildren(v4);
  *a2 = NumberChildren;
  if (!NumberChildren)
  {
    UTF8Char = 0;
    goto LABEL_123;
  }

  v6 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 156) + 1);
  v7 = *a1;
  if (!v6)
  {
    log_OutPublic(*(v7 + 32), "FE_NNTN", 37000, 0);
    UTF8Char = NNTNERROR(10);
    goto LABEL_123;
  }

  v8 = v6;
  v9 = heap_Calloc(*(v7 + 8), 1, *(a1 + 156) + 1);
  v10 = *a1;
  if (!v9)
  {
LABEL_106:
    log_OutPublic(*(v10 + 32), "FE_NNTN", 37000, 0);
    UTF8Char = NNTNERROR(10);
    v12 = 0;
    v72 = 0;
    goto LABEL_120;
  }

  v11 = heap_Calloc(*(v10 + 8), 1, 48 * *a2);
  if (!v11)
  {
    v10 = *a1;
    goto LABEL_106;
  }

  v12 = v11;
  v13 = *(v4 + 80);
  if (v13 >= *(v4 + 88))
  {
    UTF8Char = 0;
    goto LABEL_119;
  }

  v81 = 0;
  while (1)
  {
    if (!v13)
    {
      v78 = 6;
      goto LABEL_129;
    }

    v14 = LDOTreeNode_ComputeText(*v13, &v91);
    v15 = LH_ERROR_to_VERROR(v14);
    if ((v15 & 0x80000000) != 0 || (v16 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v91), v17 = LDOTreeNode_ComputeAbsoluteFrom(*v13, &v90 + 1), v15 = LH_ERROR_to_VERROR(v17), (v15 & 0x80000000) != 0) || (v18 = LDOTreeNode_ComputeAbsoluteTo(*v13, &v90), v15 = LH_ERROR_to_VERROR(v18), (v15 & 0x80000000) != 0))
    {
      UTF8Char = v15;
      goto LABEL_111;
    }

    __s = v16;
    v19 = v90;
    v20 = HIDWORD(v90);
    Type = LDOObject_GetType(*v13, &__s1);
    UTF8Char = LH_ERROR_to_VERROR(Type);
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_111;
    }

    if (!strcmp(__s1, "TOKEN_ALPHA"))
    {
      UTF8Char = utf8_getUTF8Char(__s, 0, v9);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_111;
      }

      v82 = v19 - v20;
      if (v19 - v20 > strlen(v9))
      {
        break;
      }
    }

LABEL_97:
    v67 = LDOString_BorrowAllocator(v91);
    OOC_PlacementDeleteObject(v67, v91);
    if (++v13 >= *(v4 + 88))
    {
      if (!v81)
      {
        goto LABEL_119;
      }

      v68 = v81 - 1;
      v69 = v12;
      do
      {
        v70 = v68;
        v71 = LDO_ReplaceNodes(a1[33], v69, v69 + 24);
        UTF8Char = LH_ERROR_to_VERROR(v71);
        if ((UTF8Char & 0x80000000) != 0)
        {
          break;
        }

        v68 = v70 - 1;
        v69 += 48;
      }

      while (v70);
LABEL_111:
      LOWORD(v73) = v81;
      goto LABEL_112;
    }
  }

  v23 = OOCAllocator_Realloc((a1 + 28), 0, 64, &v87);
  if (v87)
  {
    goto LABEL_111;
  }

  v24 = v12;
  NextUtf8Offset = 0;
  v26 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v27 = 0;
  *v23 = *v13;
  v80 = v24;
  v28 = (v24 + 48 * v81);
  *v28 = 8;
  v28[1] = v23;
  v28[2] = v23 + 1;
  v79 = v28;
  v29 = __s;
  do
  {
    UTF8Char = utf8_getUTF8Char(v29, NextUtf8Offset, v9);
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_110;
    }

    v30 = strlen(v9);
    v31 = isEnglishLetter(v9);
    if (!(v31 | v26))
    {
      v47 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v9, "TOKEN", "TOKEN_ALPHA", &v88);
      v33 = LH_ERROR_to_VERROR(v47);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      LDOObject_SetU32Attribute(v88, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v48);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v49 = v27 - v84;
      v50 = ((v27 - v84) >> 3) + 1;
      if (v50 > v85)
      {
        v51 = 2 * v85;
        if (2 * v85 >= v85 + 1000000)
        {
          v51 = v85 + 1000000;
        }

        if (v51 > v50)
        {
          v50 = v51;
        }

        if (v50 <= 8)
        {
          v50 = 8;
        }

        v85 = v50;
        v52 = OOCAllocator_Realloc((a1 + 28), v84, 8 * v50, &v87);
        if (v87)
        {
          goto LABEL_110;
        }

        v84 = v52;
        v27 = (v52 + (v49 & 0x7FFFFFFF8));
      }

      v26 = 0;
      *v27++ = v88;
      v46 = v83 + 1;
LABEL_58:
      v83 = v46;
      goto LABEL_59;
    }

    if (v26 == 1 && !v31)
    {
      v32 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v8, "TOKEN", "TOKEN_ALPHA", &v88);
      v33 = LH_ERROR_to_VERROR(v32);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      LDOObject_SetU32Attribute(v88, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v34);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v35 = ((v27 - v84) >> 3) + 1;
      if (v35 > v85)
      {
        v36 = 2 * v85;
        if (2 * v85 >= v85 + 1000000)
        {
          v36 = v85 + 1000000;
        }

        if (v36 > v35)
        {
          v35 = v36;
        }

        if (v35 <= 8)
        {
          v37 = 8;
        }

        else
        {
          v37 = v35;
        }

        v38 = OOCAllocator_Realloc((a1 + 28), v84, 8 * v37, &v87);
        if (v87)
        {
          goto LABEL_110;
        }

        v27 = (v38 + ((v27 - v84) & 0x7FFFFFFF8));
        v84 = v38;
        v85 = v37;
      }

      *v27 = v88;
      v39 = v27 + 1;
      v8[2] = 0;
      *v8 = 0;
      v40 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v9, "TOKEN", "TOKEN_ALPHA", &v88);
      v33 = LH_ERROR_to_VERROR(v40);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      LDOObject_SetU32Attribute(v88, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v41);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v42 = ((v39 - v84) >> 3) + 1;
      if (v42 > v85)
      {
        v43 = 2 * v85;
        if (2 * v85 >= v85 + 1000000)
        {
          v43 = v85 + 1000000;
        }

        if (v43 > v42)
        {
          v42 = v43;
        }

        if (v42 <= 8)
        {
          v44 = 8;
        }

        else
        {
          v44 = v42;
        }

        v45 = OOCAllocator_Realloc((a1 + 28), v84, 8 * v44, &v87);
        if (v87)
        {
          goto LABEL_110;
        }

        v39 = (v45 + ((v39 - v84) & 0x7FFFFFFF8));
        v84 = v45;
        v85 = v44;
      }

      v26 = 0;
      *v39 = v88;
      v27 = v39 + 1;
      v46 = v83 + 2;
      goto LABEL_58;
    }

    v53 = NextUtf8Offset + v30;
    v54 = !v31;
    if (v26 != 1)
    {
      v54 = 1;
    }

    if (v54)
    {
      if (!v26 && v31)
      {
        *v8 = 0;
        strcat(v8, v9);
        if (v53 == v82)
        {
          v61 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v8, "TOKEN", "TOKEN_ALPHA", &v88);
          v33 = LH_ERROR_to_VERROR(v61);
          if ((v33 & 0x80000000) != 0)
          {
LABEL_109:
            UTF8Char = v33;
LABEL_110:
            v12 = v80;
            goto LABEL_111;
          }

          LDOObject_SetU32Attribute(v88, "_TTYPE", 0);
          UTF8Char = LH_ERROR_to_VERROR(v62);
          if ((UTF8Char & 0x80000000) != 0)
          {
            goto LABEL_110;
          }

          v63 = ((v27 - v84) >> 3) + 1;
          if (v63 > v85)
          {
            v64 = 2 * v85;
            if (2 * v85 >= v85 + 1000000)
            {
              v64 = v85 + 1000000;
            }

            if (v64 > v63)
            {
              v63 = v64;
            }

            if (v63 <= 8)
            {
              v65 = 8;
            }

            else
            {
              v65 = v63;
            }

            v66 = OOCAllocator_Realloc((a1 + 28), v84, 8 * v65, &v87);
            if (v87)
            {
              goto LABEL_110;
            }

            v27 = (v66 + ((v27 - v84) & 0x7FFFFFFF8));
            v84 = v66;
            v85 = v65;
          }

          *v27++ = v88;
          ++v83;
          v8[2] = 0;
          *v8 = 0;
        }

LABEL_94:
        v26 = 1;
      }
    }

    else
    {
      strcat(v8, v9);
      if (v53 != v82)
      {
        goto LABEL_94;
      }

      v55 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v8, "TOKEN", "TOKEN_ALPHA", &v88);
      v33 = LH_ERROR_to_VERROR(v55);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      LDOObject_SetU32Attribute(v88, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v56);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v57 = ((v27 - v84) >> 3) + 1;
      if (v57 > v85)
      {
        v58 = 2 * v85;
        if (2 * v85 >= v85 + 1000000)
        {
          v58 = v85 + 1000000;
        }

        if (v58 > v57)
        {
          v57 = v58;
        }

        if (v57 <= 8)
        {
          v59 = 8;
        }

        else
        {
          v59 = v57;
        }

        v60 = OOCAllocator_Realloc((a1 + 28), v84, 8 * v59, &v87);
        if (v87)
        {
          goto LABEL_110;
        }

        v27 = (v60 + ((v27 - v84) & 0x7FFFFFFF8));
        v84 = v60;
        v85 = v59;
      }

      v26 = 0;
      *v27++ = v88;
      ++v83;
      v8[2] = 0;
      *v8 = 0;
    }

LABEL_59:
    v29 = __s;
    NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
  }

  while (NextUtf8Offset < v82);
  v79[3] = v85;
  v79[4] = v84;
  v79[5] = v27;
  if (((v27 - v84) >> 3) == v83)
  {
    v12 = v80;
    ++v81;
    goto LABEL_97;
  }

  v78 = 0;
  v12 = v80;
LABEL_129:
  LOWORD(v73) = v81;
  UTF8Char = NNTNERROR(v78);
LABEL_112:
  if (v73)
  {
    v73 = v73;
    v74 = v12 + 24;
    do
    {
      *(v74 - 24) = 0;
      v75 = *(v74 - 16);
      if (v75)
      {
        OOCAllocator_Free((a1 + 28), v75);
        *(v74 - 16) = 0;
      }

      *(v74 - 8) = 0;
      *v74 = 0;
      v76 = *(v74 + 8);
      if (v76)
      {
        OOCAllocator_Free((a1 + 28), v76);
        *(v74 + 8) = 0;
      }

      *(v74 + 16) = 0;
      v74 += 48;
      --v73;
    }

    while (v73);
  }

LABEL_119:
  v72 = 1;
LABEL_120:
  heap_Free(*(*a1 + 8), v8);
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
    if (v72)
    {
      goto LABEL_122;
    }
  }

  else if (v72)
  {
LABEL_122:
    heap_Free(*(*a1 + 8), v12);
  }

LABEL_123:
  if (v87)
  {
    return NNTNERROR(0);
  }

  return UTF8Char;
}

uint64_t applyIgtreeExpansion(uint64_t a1, __int16 *a2, const char *a3, char **a4, _DWORD *a5)
{
  v10 = heap_Alloc(*(*a1 + 8), 1024);
  if (v10)
  {
    v11 = v10;
    *v10 = 0;
    v12 = fe_nntn_IGTR(a1, a2, a3, v10, a5);
    if (*a5 == 1)
    {
      strcpy(*a4, v11);
    }

    heap_Free(*(*a1 + 8), v11);
    return v12;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0);

    return NNTNERROR(10);
  }
}

uint64_t applyNNExpansion(_DWORD *a1, __int16 *a2, char **a3)
{
  v6 = heap_Alloc(*(*a1 + 8), 1024);
  if (v6)
  {
    v7 = v6;
    *v6 = 0;
    v8 = *(*a1 + 32);
    if (a1[210])
    {
      log_OutText(v8, "FE_NNTN", 5, 0, "FI prediction enabled", 0);
      v9 = fe_mnc_nntn_Process(a1, a2, v7);
      if ((v9 & 0x80000000) != 0)
      {
        log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "FI prediction failed", 0);
      }

      else
      {
        strcpy(*a3, v7);
      }
    }

    else
    {
      log_OutText(v8, "FE_NNTN", 5, 0, "FI prediction is not enabled", 0);
      v9 = 0;
    }

    heap_Free(*(*a1 + 8), v7);
    return v9;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0);

    return NNTNERROR(10);
  }
}

uint64_t writeExpandFuncNameToLDO(uint64_t a1, char *a2, char **a3, unsigned __int16 *a4)
{
  v19 = 0;
  v7 = *a4;
  v17 = a4[1];
  v18 = v7;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : writeExpandFuncNameToLDO Begin (%s)", *a3);
  v8 = LDO_AddLabelOnSubstring(*(a1 + 264), "TOKEN", "TOKEN", &v18, &v17, &v19);
  v9 = LH_ERROR_to_VERROR(v8);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  LDOObject_SetU32Attribute(v19, "_TTYPE", 6);
  v9 = LH_ERROR_to_VERROR(v10);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v11 = LDOObject_SetStringAttribute(v19, "TNTAG", a2);
  v9 = LH_ERROR_to_VERROR(v11);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v12 = LDOObject_SetStringAttribute(v19, "TNFUNCTAG", *a3);
  v9 = LH_ERROR_to_VERROR(v12);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v13 = LDOObject_SetStringAttribute(v19, "NORM", "");
  v14 = LH_ERROR_to_VERROR(v13);
  if ((v14 & 0x80000000) == 0 && *(a1 + 418))
  {
    v15 = LDOObject_SetStringAttribute(v19, "LANGMAP", *(a1 + 408));
    v9 = LH_ERROR_to_VERROR(v15);
LABEL_8:
    v14 = v9;
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : writeExpandFuncNameToLDO End (%x) ", v14);
  return v14;
}

uint64_t sortExpansionNNTN(uint64_t *a1, uint64_t a2)
{
  v19 = 0;
  v4 = heap_Alloc(*(*a1 + 8), 256);
  *(*(a2 + 16) + 56) = v4;
  v5 = *a1;
  if (!v4)
  {
    log_OutPublic(*(v5 + 32), "FE_NNTN", 37000, 0);
    v16 = NNTNERROR(10);
    v7 = 0;
    goto LABEL_23;
  }

  v6 = heap_Calloc(*(v5 + 8), 1, 8);
  v7 = v6;
  if (!v6)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0);
    v15 = NNTNERROR(10);
    goto LABEL_22;
  }

  v8 = *(a2 + 16);
  v9 = *(v8 + 8);
  v10 = *(v8 + 56);
  *v6 = v10;
  v11 = *(a2 + 24);
  v12 = *(**(a2 + 16) + 96);
  v13 = **(v12 + 8);
  if (v13 == 3)
  {
    v15 = applyIgtreeExpansion(a1, v9, *(a2 + 24), v6, &v19);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    if (v19)
    {
      goto LABEL_21;
    }

    log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "IGtree found NOMATCH. Set user-defined func from domain def file.", 0);
LABEL_18:
    *v7 = *(v12 + 16);
    goto LABEL_21;
  }

  if (v13 == 2)
  {
    goto LABEL_18;
  }

  if (v13 != 1)
  {
    v16 = 0;
    goto LABEL_23;
  }

  if (*(a1 + 219) >= *(a1 + 218))
  {
    strcpy(v10, "DefaultFunc");
    goto LABEL_21;
  }

  v14 = *(v12 + 16);
  if (*v14 != 48 || v14[1])
  {
    v15 = applyIgtreeExpansion(a1, v9, *(a2 + 24), v6, &v19);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    if (v19)
    {
LABEL_21:
      v15 = writeExpandFuncNameToLDO(a1, v11, v7, v9);
      goto LABEL_22;
    }
  }

  v15 = applyNNExpansion(a1, v9, v7);
  if ((v15 & 0x80000000) == 0)
  {
    ++*(a1 + 219);
    goto LABEL_21;
  }

LABEL_22:
  v16 = v15;
LABEL_23:
  v17 = *(*(a2 + 16) + 56);
  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
    *(*(a2 + 16) + 56) = 0;
  }

  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "sortExpansionNNTN_new : DoExpansions End (%x)", v16);
  return v16;
}

uint64_t fe_nntn_tryLoading_NNTN_igModel(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v17, 0, 240);
  *v14 = 0;
  v15 = 0;
  *a4 = 0;
  *v16 = 0;
  memset(v18, 0, 128);
  v17[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v16);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v15), (Str & 0x80000000) != 0) || (__strcat_chk(), __strcat_chk(), __strcat_chk(), __strcat_chk(), Str = brokeraux_ComposeBrokerString(a3, v18, 1, 1, *v16, 0, 0, v17, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v17, "IGTR", 1031, v14), (Str & 0x80000000) != 0))
  {
    v10 = Str;
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
      log_OutPublic(*(a3 + 32), "FE_NNTN", 37000, 0);
      v10 = 2589990922;
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

uint64_t fe_nntn_IGTR(uint64_t a1, __int16 *a2, const char *a3, char *a4, _DWORD *a5)
{
  v5 = *(a1 + 936);
  __s1 = 0;
  v6 = *(a1 + 944);
  if (!v6)
  {
    log_OutText(*(v5 + 32), "FE_NNTN", 0, 0, "IGTree model for nntn does not exist");
    return 0;
  }

  v12 = 2589990922;
  v13 = heap_Calloc(*(v5 + 8), 1, 8 * *(v6 + 1296) - 8);
  if (v13)
  {
    v14 = v13;
    v15 = *(v6 + 1296);
    if (v15 != 1)
    {
      v47 = a2;
      v16 = v13;
      v17 = (v15 - 1);
      while (1)
      {
        v18 = heap_Calloc(*(v5 + 8), 1, 65);
        *v16 = v18;
        if (!v18)
        {
          break;
        }

        *v18 = 61;
        ++v16;
        if (!--v17)
        {
          v15 = *(v6 + 1296);
          v12 = 2589990922;
          a2 = v47;
          goto LABEL_8;
        }
      }

      log_OutPublic(*(v5 + 32), "FE_NNTN", 37000, 0);
      v12 = 2589990922;
      goto LABEL_67;
    }

LABEL_8:
    __s = *(a1 + 304);
    v46 = *(a1 + 312);
    v19 = *(v6 + 1312);
    v20 = heap_Calloc(*(v5 + 8), 1, 2048);
    if (v20)
    {
      v44 = v15;
      v21 = v15 != 0;
      v22 = v15 - 1;
      if (v22 != 0 && v21)
      {
        v42 = a5;
        __dst = v20;
        v48 = a2;
        v23 = 0;
        while (strcmp(*(v19 + v23), "token"))
        {
          v23 += 8;
          if (8 * v22 == v23)
          {
            v12 = 0;
            goto LABEL_29;
          }
        }

        v25 = *a2;
        if ((v25 & 0x8000000000000000) == 0 && ((v26 = a2[1], v26 > v25) ? (v27 = v26 <= v46) : (v27 = 0), v27))
        {
          strncpy(__dst, &__s[v25], (v26 - v25));
        }

        else
        {
          *__dst = 61;
        }

        v12 = fe_nntn_IGTR_setFeature(v5, v19, v44, 3, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
LABEL_66:
          heap_Free(*(v5 + 8), __dst);
          goto LABEL_67;
        }

LABEL_29:
        v28 = 0;
        if (v22 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v22;
        }

        v30 = 8 * v29;
        while (strcmp(*(v19 + v28), "lchar"))
        {
          v28 += 8;
          if (v30 == v28)
          {
            goto LABEL_37;
          }
        }

        nntn_feat_character(__s, v48, v46, -1, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v19, v44, 2, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_37:
        v31 = 0;
        while (strcmp(*(v19 + v31), "llchar"))
        {
          v31 += 8;
          if (v30 == v31)
          {
            goto LABEL_42;
          }
        }

        nntn_feat_character(__s, v48, v46, -2, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v19, v44, 1, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_42:
        v32 = 0;
        while (strcmp(*(v19 + v32), "l3char"))
        {
          v32 += 8;
          if (v30 == v32)
          {
            goto LABEL_47;
          }
        }

        nntn_feat_character(__s, v48, v46, -3, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v19, v44, 0, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_47:
        v33 = 0;
        while (strcmp(*(v19 + v33), "rchar"))
        {
          v33 += 8;
          if (v30 == v33)
          {
            goto LABEL_52;
          }
        }

        nntn_feat_character(__s, v48, v46, 1, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v19, v44, 4, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_52:
        v34 = 0;
        while (strcmp(*(v19 + v34), "rrchar"))
        {
          v34 += 8;
          if (v30 == v34)
          {
            goto LABEL_57;
          }
        }

        nntn_feat_character(__s, v48, v46, 2, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v19, v44, 5, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_57:
        v35 = 0;
        while (strcmp(*(v19 + v35), "r3char"))
        {
          v35 += 8;
          if (v30 == v35)
          {
            goto LABEL_62;
          }
        }

        nntn_feat_character(__s, v48, v46, 3, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v19, v44, 6, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_62:
        v36 = a4;
        v37 = 0;
        while (strcmp(*(v19 + v37), "tnpattern"))
        {
          v37 += 8;
          if (v30 == v37)
          {
            v38 = __dst;
            goto LABEL_75;
          }
        }

        v38 = __dst;
        strcpy(__dst, a3);
        v12 = fe_nntn_IGTR_setFeature(v5, v19, v44, 7, v14, __dst);
LABEL_75:
        heap_Free(*(v5 + 8), v38);
        a5 = v42;
        a4 = v36;
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        heap_Free(*(v5 + 8), v20);
        v12 = 0;
      }

      igtree_Process(v6, v14, &__s1);
      v24 = __s1;
      if (!strcmp(__s1, "NOMATCH"))
      {
        log_OutText(*(v5 + 32), "FE_NNTN", 5, 0, "No igtree rule matched", 0);
        *a5 = 0;
      }

      else
      {
        strcpy(a4, v24);
        *a5 = 1;
      }
    }

    else
    {
      log_OutPublic(*(v5 + 32), "FE_NNTN", 37000, 0);
    }

LABEL_67:
    if (*(v6 + 1296) != 1)
    {
      v39 = (*(v6 + 1296) - 1);
      v40 = v14;
      do
      {
        if (*v40)
        {
          heap_Free(*(v5 + 8), *v40);
          *v40 = 0;
        }

        ++v40;
        --v39;
      }

      while (v39);
    }

    heap_Free(*(v5 + 8), v14);
  }

  return v12;
}

uint64_t fe_nntn_IGTR_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_0[a3];
  v8 = (a2 - 1);
  while (strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t fe_nntn_IGTR_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v13 = -1;
  result = fe_nntn_IGTR_isFeatureRequired(a2, a3, a4, &v13);
  if (result)
  {
    if (!*a6)
    {
      result = 0;
      **(a5 + 8 * v13) = 61;
      return result;
    }

    v10 = v13;
    if (strlen(a6) <= 0x40)
    {
      v12 = *(a5 + 8 * v13);
    }

    else
    {
      v11 = strlen(a6);
      v12 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v13), v11 + 1);
      if (!v12)
      {
        log_OutPublic(*(a1 + 32), "FE_NNTN", 37000, 0);
        return 2589990922;
      }

      *(a5 + 8 * v10) = v12;
    }

    strcpy(v12, a6);
    return 0;
  }

  return result;
}

uint64_t nntn_feat_character(uint64_t __s, __int16 *a2, signed int a3, int a4, _BYTE *a5)
{
  v6 = *a2;
  if (v6 < 0)
  {
    goto LABEL_6;
  }

  v8 = a2[1];
  if (v6 >= v8 || v8 > a3)
  {
    goto LABEL_6;
  }

  v10 = a4;
  v11 = __s;
  if (a4 < 0)
  {
    if (!*a2)
    {
      goto LABEL_6;
    }

    do
    {
      __s = utf8_GetPreviousUtf8Offset(v11, v6);
      v6 = __s;
      v12 = ~v10++ == 0;
    }

    while (!v12 && __s);
    goto LABEL_17;
  }

  if (a4)
  {
    v6 = v8 - 1;
    if (v8 - 1 == a3)
    {
      goto LABEL_6;
    }

    do
    {
      __s = utf8_GetNextUtf8Offset(v11, v6);
      v6 = __s;
      --v10;
    }

    while (v10 && __s != a3);
LABEL_17:
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_6:
    *a5 = 61;
    return __s;
  }

  v6 = 0;
LABEL_20:
  __s = utf8_getUTF8Char(v11, v6, a5);
  if ((__s & 0x80000000) != 0 || !*a5)
  {
    goto LABEL_6;
  }

  return __s;
}

uint64_t fe_nntn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2589990913;
  }

  result = 0;
  *a2 = &ITokenizer;
  return result;
}

uint64_t NNTN_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2589990919;
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

uint64_t NNTN_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v5 = 2589990922;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  memset(v50, 0, sizeof(v50));
  if (!a5)
  {
    return 2589990919;
  }

  v41 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v49);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v48);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v49 + 32), "FE_NNTN", 4, 0, "nntn : ObjOpen Begin");
      v12 = heap_Calloc(*(v49 + 8), 1, 16);
      if (!v12)
      {
        log_OutPublic(*(v49 + 32), "FE_NNTN", 21000, 0);
LABEL_49:
        v34 = *(v49 + 32);
        v35 = "nntn : ObjOpen End (%x)";
        v39 = v5;
        v36 = 4;
LABEL_50:
        log_OutText(v34, "FE_NNTN", v36, 0, v35, v39);
        return v5;
      }

      v13 = v12;
      *v12 = 0;
      *(v12 + 8) = 0;
      v14 = heap_Calloc(*(v49 + 8), 1, 968);
      if (!v14)
      {
LABEL_48:
        NNTN_loc_ObjClose(v49, v13);
        goto LABEL_49;
      }

      v15 = v14;
      *v13 = v14;
      v40 = v13;
      *(v13 + 8) = 58765;
      v16 = v49;
      *v14 = v49;
      *(v14 + 8) = a3;
      v17 = v48;
      *(v14 + 16) = a4;
      *(v14 + 24) = v17;
      *(v14 + 32) = a1;
      *(v14 + 40) = a2;
      *(v14 + 96) = 0;
      v18 = (v14 + 96);
      *(v14 + 120) = 0;
      v19 = (v14 + 120);
      *(v14 + 104) = 0;
      *(v14 + 128) = 0;
      *(v14 + 152) = 0;
      *(v14 + 160) = 0;
      *(v14 + 176) = 0;
      *(v14 + 184) = "FE_NNTN";
      *(v14 + 336) = 0;
      *(v14 + 344) = 0;
      *(v14 + 352) = 0;
      *(v14 + 548) = 0;
      *(v14 + 552) = 0;
      *(v14 + 520) = 0;
      *(v14 + 528) = 0;
      *(v14 + 536) = 0;
      *(v14 + 544) = 0;
      *(v14 + 288) = 0;
      *(v14 + 296) = 0;
      *(v14 + 608) = 257;
      *(v14 + 856) = 0;
      *(v14 + 888) = 0;
      *(v14 + 280) = 32;
      if ((paramc_ParamGetUInt(*(v16 + 40), "tokentninitstrlen", &v44 + 1) & 0x80000000) == 0)
      {
        *(v15 + 280) = WORD2(v44);
      }

      *(v15 + 282) = 5;
      if ((paramc_ParamGetUInt(*(v49 + 40), "tokentnmaxpcreframeblocks", &v44 + 1) & 0x80000000) == 0)
      {
        *(v15 + 282) = WORD2(v44);
      }

      *(v15 + 284) = 20;
      if ((paramc_ParamGetUInt(*(v49 + 40), "tokentnnumframesinblock", &v44 + 1) & 0x80000000) == 0)
      {
        *(v15 + 284) = WORD2(v44);
      }

      v20 = nuance_pcre_ObjOpen(a3, a4, v15 + 136);
      if ((v20 & 0x80000000) != 0)
      {
        v33 = v20;
        log_OutPublic(*(*v15 + 32), *(v15 + 184), 24021, 0);
        v5 = v33;
LABEL_47:
        v13 = v40;
        goto LABEL_48;
      }

      Object = addIdentifier2List(v15, "x");
      if ((Object & 0x80000000) == 0)
      {
        if ((objc_GetObject(*(v49 + 48), "FE_DCTLKP", &v46) & 0x80000000) != 0)
        {
          v38 = 24022;
        }

        else
        {
          v22 = v46;
          *(v15 + 88) = *(v46 + 8);
          *v18 = *(v22 + 16);
          if ((objc_GetObject(*(v49 + 48), "FE_DEPES", &v45) & 0x80000000) == 0)
          {
            v23 = v45;
            *(v15 + 112) = *(v45 + 8);
            *v19 = *(v23 + 16);
            Object = objc_GetObject(*(v49 + 48), "LINGDB", &v47);
            if ((Object & 0x80000000) == 0)
            {
              *(v15 + 64) = *(v47 + 8);
              IDStrings = FEData_ObjOpen_NNTN(a3, a4, v15);
              v13 = v40;
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = FERuntimeData_ObjOpen(v15);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = FEFunctionMap_ObjOpen(v15);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = tokenizer_NNTN_ObjOpen(v15);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = textnormalizer_ObjOpen(v15);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = createIDStrings(v15);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              if (!*(v15 + 336))
              {
                goto LABEL_57;
              }

              v25 = 0;
              do
              {
                log_OutText(*(*v15 + 32), *(v15 + 184), 5, 0, "nntn : identifier=%s", *(*(v15 + 344) + 8 * v25++));
                v26 = *(v15 + 336);
              }

              while (v25 < v26);
              if (!*(v15 + 336))
              {
LABEL_57:
                log_OutPublic(*(*v15 + 32), "FE_NNTN", 24024, 0);
                v5 = 2589990912;
                goto LABEL_48;
              }

              IDStrings = FEData_blockData_loadDataFiles_NNTN(v15, v26, *(v15 + 344));
              if ((IDStrings & 0x80000000) != 0 || (IDStrings = getFECFGInfo(v15), (IDStrings & 0x80000000) != 0))
              {
LABEL_56:
                v5 = IDStrings;
                goto LABEL_48;
              }

              v27 = *v15;
              *(v15 + 848) = *v15;
              *(v15 + 876) = 0;
              if (!*(v15 + 840))
              {
                goto LABEL_35;
              }

              Object = nn_word_lkp_GetInterface(1u, &v41);
              if ((Object & 0x80000000) == 0)
              {
                *(v15 + 888) = v41;
                *(v15 + 896) = safeh_GetNullHandle();
                *(v15 + 904) = v28;
                *(v15 + 912) = safeh_GetNullHandle();
                *(v15 + 920) = v29;
                Object = (*(v41 + 16))(*(v15 + 896), *(v15 + 904), "nntn", a3, a4, v15 + 912);
                if ((Object & 0x80000000) == 0)
                {
                  inited = fi_model_getBrokerString_0(*v15, v50);
                  if ((inited & 0x80000000) == 0)
                  {
                    v30 = fi_init(a3, a4, a1, a2, &v43, 0, v50, "FINN", 1, 0);
                    if ((v30 & 0x80000000) != 0)
                    {
                      v5 = v30;
                      v34 = *(*v15 + 32);
                      v35 = "create FI model failed";
                      goto LABEL_61;
                    }

                    *(v15 + 856) = v43;
                    v27 = *v15;
LABEL_35:
                    *(v15 + 936) = v27;
                    if (!*(v15 + 928))
                    {
LABEL_38:
                      *(v15 + 192) = heap_Alloc;
                      *(v15 + 200) = heap_Calloc;
                      *(v15 + 208) = heap_Realloc;
                      *(v15 + 216) = heap_Free;
                      v32 = OOCAllocator_Con(v15 + 224, (v15 + 192), *(v27 + 8));
                      v5 = LH_ERROR_to_VERROR(v32);
                      if ((v5 & 0x80000000) == 0)
                      {
                        *(v15 + 264) = 0;
                        v13 = v40;
                        if (*(v15 + 840))
                        {
                          v5 = load_lua_code(v15, &v44);
                          if ((v5 & 0x80000000) != 0)
                          {
                            goto LABEL_48;
                          }
                        }

LABEL_55:
                        *a5 = v13;
                        *(a5 + 8) = 58764;
                        goto LABEL_49;
                      }

                      log_OutPublic(*(*v15 + 32), "FE_NNTN", 24024, 0);
                      goto LABEL_47;
                    }

                    v31 = fe_nntn_tryLoading_NNTN_igModel(a3, a4, v27, &v42);
                    if ((v31 & 0x80000000) == 0)
                    {
                      *(v15 + 944) = v42;
                      v27 = *v15;
                      goto LABEL_38;
                    }

                    v5 = v31;
                    v34 = *(*v15 + 32);
                    v35 = "create Igtree model failed";
LABEL_61:
                    v36 = 5;
                    goto LABEL_50;
                  }

                  return inited;
                }
              }
            }

            goto LABEL_46;
          }

          v38 = 24023;
        }

        v13 = v40;
        log_OutPublic(*(*v15 + 32), *(v15 + 184), v38, 0);
        v5 = 0;
        goto LABEL_55;
      }

LABEL_46:
      v5 = Object;
      goto LABEL_47;
    }
  }

  return inited;
}

uint64_t NNTN_ObjClose(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v3 = *a1;
    v4 = *(*a1 + 888);
    if (v4)
    {
      (*(v4 + 24))(*(v3 + 912), *(v3 + 920));
      *(v3 + 888) = 0;
    }

    if (*(v3 + 840))
    {
      v5 = *(v3 + 856);
      if (v5)
      {
        fi_deinit(*v3, *(v3 + 24), v5);
        *(v3 + 856) = 0;
      }

      if (*(v3 + 864) || *(v3 + 868))
      {
        *(v3 + 864) = 0;
      }
    }

    if (*(v3 + 928))
    {
      v6 = *(v3 + 944);
      if (v6)
      {
        igtree_Deinit(*v3, v6);
        heap_Free(*(*v3 + 8), *(v3 + 944));
        *(v3 + 944) = 0;
      }
    }

    v7 = *(v3 + 272);
    if (v7)
    {
      OOC_PlacementDeleteObject(v3 + 224, v7);
      *(v3 + 272) = 0;
    }

    kaldi::nnet1::Component::IsUpdatable((v3 + 224));
    v8 = *(v3 + 184);
    log_OutText(*(*v3 + 32), v8, 4, 0, "nntn : ObjClose Begin");
    v9 = *v3;
    v10 = FEData_blockData_unloadDataFiles(v3);
    NNTN_loc_ObjClose(v9, a1);
    log_OutText(*(v9 + 32), v8, 4, 0, "nntn : ObjClose End (%x)", v10);
    return v10;
  }
}

uint64_t NNTN_ObjReopen(uint64_t *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  memset(v23, 0, sizeof(v23));
  v19 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0)
  {
    v22 = 0;
    if ((safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
    {
      v3 = *a1;
      v4 = *(v3 + 344);
      if (v4)
      {
        if (*(v3 + 336))
        {
          v5 = 0;
          do
          {
            heap_Free(*(*v3 + 8), *(*(v3 + 344) + 8 * v5));
            *(*(v3 + 344) + 8 * v5++) = 0;
          }

          while (v5 < *(v3 + 336));
          v4 = *(v3 + 344);
        }

        heap_Free(*(*v3 + 8), v4);
        *(v3 + 344) = 0;
        *(v3 + 336) = 0;
        *(v3 + 352) = 0;
        *(v3 + 608) = 257;
      }

      IDStrings = addIdentifier2List(v3, "x");
      if ((IDStrings & 0x80000000) == 0)
      {
        IDStrings = createIDStrings(v3);
        if ((IDStrings & 0x80000000) == 0)
        {
          if (!*(v3 + 344))
          {
            return 6;
          }

          if (*(v3 + 336))
          {
            v7 = 0;
            do
            {
              log_OutText(*(*v3 + 32), *(v3 + 184), 5, 0, "nntn : identifier=%s", *(*(v3 + 344) + 8 * v7++));
            }

            while (v7 < *(v3 + 336));
          }

          v8 = *(v3 + 888);
          if (v8)
          {
            v22 = *(v3 + 888);
            (*(v8 + 24))(*(v3 + 912), *(v3 + 920));
            *(v3 + 888) = 0;
          }

          if (*(v3 + 840))
          {
            v9 = *(v3 + 856);
            if (v9)
            {
              fi_deinit(*v3, *(v3 + 24), v9);
              *(v3 + 856) = 0;
            }

            if (*(v3 + 864) || *(v3 + 868))
            {
              *(v3 + 864) = 0;
            }
          }

          if (*(v3 + 928))
          {
            v10 = *(v3 + 944);
            if (v10)
            {
              igtree_Deinit(*v3, v10);
              heap_Free(*(*v3 + 8), *(v3 + 944));
              *(v3 + 944) = 0;
            }

            if (*(v3 + 936))
            {
              *(v3 + 936) = 0;
            }
          }

          v11 = *(v3 + 288);
          if (v11)
          {
            heap_Free(*(*v3 + 8), v11);
            *(v3 + 288) = 0;
          }

          IDStrings = FEData_blockData_unloadUnusedDataFiles(v3);
          if ((IDStrings & 0x80000000) == 0)
          {
            IDStrings = getFECFGInfo(v3);
            if ((IDStrings & 0x80000000) == 0)
            {
              if (!*(v3 + 336))
              {
                log_OutPublic(*(*v3 + 32), "FE_NNTN", 24024, 0);
                return 2589990912;
              }

              DataFiles_NNTN = FEData_blockData_loadDataFiles_NNTN(v3, *(v3 + 336), *(v3 + 344));
              if ((DataFiles_NNTN & 0x80000000) != 0)
              {
                goto LABEL_50;
              }

              v13 = *v3;
              *(v3 + 848) = *v3;
              if (!*(v3 + 840))
              {
                goto LABEL_40;
              }

              IDStrings = nn_word_lkp_GetInterface(1u, &v22);
              if ((IDStrings & 0x80000000) == 0)
              {
                *(v3 + 888) = v22;
                *(v3 + 896) = safeh_GetNullHandle();
                *(v3 + 904) = v14;
                *(v3 + 912) = safeh_GetNullHandle();
                *(v3 + 920) = v15;
                IDStrings = (*(v22 + 16))(*(v3 + 896), *(v3 + 904), "nntn", *(v3 + 8), *(v3 + 16), v3 + 912);
                if ((IDStrings & 0x80000000) == 0)
                {
                  BrokerString_0 = fi_model_getBrokerString_0(*v3, v23);
                  if ((BrokerString_0 & 0x80000000) != 0)
                  {
                    return BrokerString_0;
                  }

                  DataFiles_NNTN = fi_init(*(v3 + 8), *(v3 + 16), *(v3 + 32), *(v3 + 40), &v21, 0, v23, "FINN", 1, 0);
                  if ((DataFiles_NNTN & 0x80000000) != 0)
                  {
                    log_OutText(*(*v3 + 32), "FE_NNTN", 5, 0, "create FI model failed");
                    return DataFiles_NNTN;
                  }

                  *(v3 + 856) = v21;
                  v13 = *v3;
LABEL_40:
                  *(v3 + 936) = v13;
                  if (*(v3 + 928))
                  {
                    DataFiles_NNTN = fe_nntn_tryLoading_NNTN_igModel(*(v3 + 8), *(v3 + 16), v13, &v20);
                    if ((DataFiles_NNTN & 0x80000000) != 0)
                    {
                      log_OutText(*(*v3 + 32), "FE_NNTN", 5, 0, "create Igtree model failed");
                      return DataFiles_NNTN;
                    }

                    *(v3 + 944) = v20;
                  }

                  if (*(v3 + 840))
                  {
                    DataFiles_NNTN = load_lua_code(v3, &v19);
                    if ((DataFiles_NNTN & 0x80000000) != 0)
                    {
LABEL_50:
                      v18 = *(v3 + 272);
                      if (v18)
                      {
                        OOC_PlacementDeleteObject(v3 + 224, v18);
                        *(v3 + 272) = 0;
                      }

                      kaldi::nnet1::Component::IsUpdatable((v3 + 224));
                    }
                  }

                  return DataFiles_NNTN;
                }
              }
            }
          }
        }
      }

      DataFiles_NNTN = IDStrings;
      goto LABEL_50;
    }
  }

  return TOKENTNERROR(8);
}

uint64_t NNTN_ProcessStart(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v3 = *a1;
    log_OutText(*(**a1 + 32), *(*a1 + 184), 4, 0, "nntn : ProcessStart Begin");
    if (*(v3 + 336))
    {
      v4 = nuance_pcre_Init(*(v3 + 136), *(v3 + 144), *(v3 + 282), *(v3 + 284));
      if ((v4 & 0x80000000) != 0)
      {
        log_OutPublic(*(*v3 + 32), *(v3 + 184), 24051, 0);
      }

      log_OutText(*(*v3 + 32), *(v3 + 184), 4, 0, "nntn : ProcessStart End (%x)", v4);
    }

    else
    {
      log_OutPublic(*(*v3 + 32), "FE_NNTN", 24024, 0);
      return 2589990912;
    }

    return v4;
  }
}

uint64_t NNTN_Process(uint64_t *a1, int a2, void *a3, int a4, _DWORD *a5)
{
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v9 = *a1;
    log_OutText((*v9)[4], v9[23], 4, 0, "NNTN : Process Begin");
    v9[9] = a3;
    *(v9 + 20) = a4;
    *(v9 + 219) = 0;
    *(v9 + 137) = log_GetLogLevel((*v9)[4]) > 4;
    v9[33] = 0;
    v10 = LingDBHasSentence(v9[8], v9[9], v9[10], &v29);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (!v29)
    {
      goto LABEL_48;
    }

    inited = initLDO((v9 + 28), v9 + 33);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = importFromLingDB(*v9, v9[8], v9[9], v9[10], v9 + 33);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v10 = 2589990922;
    v12 = LDO_ComputeText(v9[33], &v28);
    if ((LH_ERROR_to_VERROR(v12) & 0x80000000) != 0)
    {
      goto LABEL_54;
    }

    v9[38] = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v28);
    *(v9 + 156) = LHString_Length(v28);
    log_OutText((*v9)[4], v9[23], 5, 0, "<LOGFE> processing sentence : _%s_", v9[38]);
    v13 = heap_Calloc((*v9)[1], 1, *(v9 + 156) + 1);
    v9[69] = v13;
    if (!v13)
    {
      goto LABEL_54;
    }

    *(v9 + 157) = 1;
    if (*(v9 + 156))
    {
      v14 = 0;
      while (utf8_strchr(g_szSpace, v9[38] + v14))
      {
        v14 += utf8_determineUTF8CharLength(*(v9[38] + v14));
        v15 = *(v9 + 156);
        if (v15 <= v14)
        {
          goto LABEL_18;
        }
      }

      v15 = *(v9 + 156);
LABEL_18:
      if (v15 > v14)
      {
        do
        {
          v14 = v14;
          if (utf8_strchr(g_szSpace, v9[38] + v14))
          {
            ++*(v9 + 157);
            for (i = *(v9[38] + v14); ; i = *(v9[38] + v14))
            {
              v14 += utf8_determineUTF8CharLength(i);
              if (*(v9 + 156) <= v14 || !utf8_strchr(g_szSpace, v9[38] + v14))
              {
                break;
              }
            }
          }

          else
          {
            LOWORD(v14) = v14 + utf8_determineUTF8CharLength(*(v9[38] + v14));
          }
        }

        while (*(v9 + 156) > v14);
      }
    }

    inited = initStrRes(v9, (v9 + 49));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 51));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 61));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 70));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 72));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 74));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 63));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initAlignmentData(v9);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initMatchList(v9);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initSolutionList(v9);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v18 = heap_Calloc((*v9)[1], 1, 40);
    v9[40] = v18;
    v19 = *v9;
    if (v18)
    {
      v20 = heap_Calloc(*(v19 + 8), 1, 48);
      v9[41] = v20;
      if (v20)
      {
        if (*(v9 + 238) == 1)
        {
          inited = updateLDOTreeNode_CHN(v9, &v27);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_53;
          }

          if (!v27)
          {
            *a5 = 1;
            goto LABEL_53;
          }
        }

        inited = nntn_AllInOneLoop(v9);
        if ((inited & 0x80000000) == 0)
        {
          v21 = v9[34];
          if (!v21)
          {
            log_OutText((*v9)[4], v9[23], 0, 0, "NNTN : error - pLuaVMLDO is NULL");
            v10 = 2589990918;
            goto LABEL_54;
          }

          v22 = LuaVMLDO_RunFunction(v21, "run", v9[33]);
          inited = LH_ERROR_to_VERROR(v22);
          if ((inited & 0x80000000) == 0)
          {
            if (*(v9 + 137) != 1 || (inited = dumpTokenRecordsInLingDB(v9, "At End of Processing", 1), (inited & 0x80000000) == 0))
            {
              inited = exportToLingDB(*v9, v9[8], v9[9], v9[10], (v9 + 28), v9[33], 1, 1);
              if ((inited & 0x80000000) == 0)
              {
                v10 = replaceBasicTokensWithTokenIntTnInLingDB(*v9, v9[8], v9[9], v9[10], v9[33], v9[23]);
                if ((v10 & 0x80000000) != 0)
                {
LABEL_54:
                  if (v28)
                  {
                    OOC_PlacementDeleteObject((v9 + 28), v28);
                    v28 = 0;
                  }

                  v23 = v9[33];
                  if (v23)
                  {
                    deinitLDO((v9 + 28), v23);
                    v9[33] = 0;
                  }

                  v24 = v9[69];
                  if (v24)
                  {
                    heap_Free((*v9)[1], v24);
                    v9[69] = 0;
                  }

                  clearStrRes(*v9, (v9 + 49));
                  clearStrRes(*v9, (v9 + 51));
                  clearStrRes(*v9, (v9 + 61));
                  clearStrRes(*v9, (v9 + 70));
                  clearStrRes(*v9, (v9 + 72));
                  clearStrRes(*v9, (v9 + 74));
                  clearStrRes(*v9, (v9 + 63));
                  freeAlignmentData(v9);
                  freeMatchList(v9);
                  freeSolutionList(v9);
                  v25 = v9[40];
                  if (v25)
                  {
                    heap_Free((*v9)[1], v25);
                    v9[40] = 0;
                  }

                  v26 = v9[41];
                  if (v26)
                  {
                    heap_Free((*v9)[1], v26);
                    v9[41] = 0;
                  }

                  log_OutText((*v9)[4], v9[23], 4, 0, "nntn : Process End (%x)", v10);
                  return v10;
                }

LABEL_48:
                *a5 = 1;
                goto LABEL_54;
              }
            }
          }
        }

LABEL_53:
        v10 = inited;
        goto LABEL_54;
      }

      v19 = *v9;
    }

    log_OutPublic(*(v19 + 32), v9[23], 24048, 0);
    goto LABEL_54;
  }

  return TOKENTNERROR(8);
}

uint64_t NNTN_ProcessEnd(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v3 = *a1;
    log_OutText(*(*v3 + 32), *(v3 + 184), 4, 0, "nntn : ProcessEnd Begin");
    v4 = nuance_pcre_DeInit(*(v3 + 136), *(v3 + 144));
    log_OutText(*(*v3 + 32), *(v3 + 184), 4, 0, "nntn : ProcessEnd End (%x)", v4);
    return 0;
  }
}

uint64_t addIdentifier2List(uint64_t a1, char *__s2)
{
  v4 = *(a1 + 336);
  if (*(a1 + 336))
  {
    v5 = *(a1 + 344);
    v6 = *(a1 + 336);
    v7 = v5;
    do
    {
      if (v5 && !strcmp(*v7, __s2))
      {
        return 0;
      }

      ++v7;
      --v6;
    }

    while (v6);
    v8 = heap_Realloc(*(*a1 + 8), *(a1 + 344), 8 * v4 + 8);
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v8 = heap_Calloc(*(*a1 + 8), 1, 8);
  if (!v8)
  {
LABEL_11:
    v13 = 2589990922;
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);
    return v13;
  }

LABEL_9:
  *(a1 + 344) = v8;
  v9 = strlen(__s2);
  v10 = heap_Calloc(*(*a1 + 8), 1, (v9 + 1));
  v11 = *(a1 + 336);
  *(*(a1 + 344) + 8 * v11) = v10;
  v12 = *(*(a1 + 344) + 8 * v11);
  if (!v12)
  {
    goto LABEL_11;
  }

  strcpy(v12, __s2);
  v13 = 0;
  ++*(a1 + 336);
  return v13;
}

uint64_t createIDStrings(_BYTE *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  __s = 0;
  *__s2 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  result = paramc_ParamGet(*(*a1 + 40), "langcode", &__s, 0);
  if ((result & 0x80000000) == 0)
  {
    v3 = __s;
    if (*__s)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = v3[v4];
        v17[v4] = v6;
        __s2[v4] = v6;
        v4 = ++v5;
      }

      while (strlen(v3) > v5);
    }

    strcpy(&__s2[2], "x");
    v17[3] = 0;
    if (*v17 == 6840675)
    {
      __s2[1] = 110;
    }

    result = paramc_ParamGet(*(*a1 + 40), "voice", &__s, 0);
    if ((result & 0x80000000) == 0)
    {
      v7 = __s;
      v8 = strlen(__s);
      if (v8 <= 0x1A)
      {
        if (v8)
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v15[v9] = v7[v9];
            v9 = ++v10;
            v8 = strlen(v7);
          }

          while (v8 > v10);
        }

        v15[v8] = 0;
        if (strlen(__s2) >= 1)
        {
          v11 = 0;
          do
          {
            __s2[v11] = ssft_tolower(__s2[v11]);
            ++v11;
          }

          while (strlen(__s2) > v11);
        }

        if (strlen(v17) >= 1)
        {
          v12 = 0;
          do
          {
            v17[v12] = ssft_tolower(v17[v12]);
            ++v12;
          }

          while (strlen(v17) > v12);
        }

        if (strlen(v15) >= 1)
        {
          v13 = 0;
          do
          {
            v15[v13] = ssft_tolower(v15[v13]);
            ++v13;
          }

          while (strlen(v15) > v13);
        }

        result = addIdentifier2List(a1, __s2);
        if ((result & 0x80000000) == 0)
        {
          a1[352] = a1[336];
          result = addIdentifier2List(a1, v17);
          if ((result & 0x80000000) == 0)
          {
            return addIdentifier2List(a1, v15);
          }
        }
      }

      else
      {
        return 2589990912;
      }
    }
  }

  return result;
}

uint64_t getFECFGInfo(uint64_t a1)
{
  v2 = 2589991940;
  v33 = -1;
  __c_1 = 0;
  __c = 0;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_g2p", &__c_1, &v33, &__c) & 0x80000000) != 0)
  {
    return 2589990912;
  }

  if (v33 == 1 && __c_1 != 0)
  {
    v4 = *__c_1;
    v5 = strchr(*__c_1, __c);
    if (v5)
    {
      *v5 = 0;
      v4 = *__c_1;
    }

    *(a1 + 608) = atoi(v4);
  }

  v33 = -1;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_tn", &__c_1, &v33, &__c) & 0x80000000) != 0)
  {
    return 2589990912;
  }

  if (v33 == 1 && __c_1)
  {
    v6 = *__c_1;
    v7 = strchr(*__c_1, __c);
    if (v7)
    {
      *v7 = 0;
      v6 = *__c_1;
    }

    *(a1 + 609) = atoi(v6);
  }

  v33 = -1;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_step", &__c_1, &v33, &__c) & 0x80000000) == 0)
  {
    v8 = v33;
    if (v33)
    {
      *(a1 + 864) = 0;
      if (v8 == 1 && __c_1)
      {
        v9 = *__c_1;
        v10 = strchr(*__c_1, __c);
        if (v10)
        {
          *v10 = 0;
          v9 = *__c_1;
        }

        *(a1 + 864) = LH_atou(v9);
      }

      v33 = -1;
      if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_vect", &__c_1, &v33, &__c) & 0x80000000) == 0)
      {
        v11 = v33;
        if (v33)
        {
          *(a1 + 868) = 0;
          if (v11 == 1 && __c_1)
          {
            v12 = *__c_1;
            v13 = strchr(*__c_1, __c);
            if (v13)
            {
              *v13 = 0;
              v12 = *__c_1;
            }

            *(a1 + 868) = LH_atou(v12);
          }

          v33 = -1;
          if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_max", &__c_1, &v33, &__c) & 0x80000000) == 0)
          {
            v14 = v33;
            if (v33)
            {
              *(a1 + 872) = 0;
              if (v14 == 1 && __c_1)
              {
                v15 = *__c_1;
                v16 = strchr(*__c_1, __c);
                if (v16)
                {
                  *v16 = 0;
                  v15 = *__c_1;
                }

                *(a1 + 872) = LH_atou(v15);
              }

              *(a1 + 880) = 0;
              v33 = -1;
              if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_window_option", &__c_1, &v33, &__c) & 0x80000000) != 0 || (v17 = v33) == 0)
              {
                log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "Load nntn_window_option from CFG failed, use default 0.");
                v17 = v33;
              }

              if (v17 == 1 && __c_1)
              {
                v18 = *__c_1;
                v19 = strchr(*__c_1, __c);
                if (v19)
                {
                  *v19 = 0;
                  v18 = *__c_1;
                }

                *(a1 + 880) = LH_atou(v18);
              }

              v33 = -1;
              if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_use_NNTN", &__c_1, &v33, &__c) & 0x80000000) == 0 && v33)
              {
                if (v33 == 1 && __c_1)
                {
                  v20 = *__c_1;
                  v21 = strchr(*__c_1, __c);
                  if (v21)
                  {
                    *v21 = 0;
                    v20 = *__c_1;
                  }

                  if (!strcmp(v20, "yes"))
                  {
                    *(a1 + 840) = 1;
                  }
                }

                v33 = -1;
                if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_use_NNTN_IGTree", &__c_1, &v33, &__c) & 0x80000000) == 0 && v33)
                {
                  if (v33 == 1 && __c_1)
                  {
                    v22 = *__c_1;
                    v23 = strchr(*__c_1, __c);
                    if (v23)
                    {
                      *v23 = 0;
                      v22 = *__c_1;
                    }

                    if (!strcmp(v22, "yes"))
                    {
                      *(a1 + 928) = 1;
                    }
                  }

                  v33 = -1;
                  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_one_char_per_node", &__c_1, &v33, &__c) & 0x80000000) == 0 && v33)
                  {
                    if (v33 == 1 && __c_1)
                    {
                      v24 = *__c_1;
                      v25 = strchr(*__c_1, __c);
                      if (v25)
                      {
                        *v25 = 0;
                        v24 = *__c_1;
                      }

                      if (!strcmp(v24, "yes"))
                      {
                        *(a1 + 952) = 1;
                      }
                    }

                    v33 = -1;
                    v26 = (*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_feat_focus", &__c_1, &v33, &__c);
                    if ((v26 & 0x80000000) == 0 && v33)
                    {
                      v27 = v26;
                      if (v33 == 1 && __c_1)
                      {
                        v28 = *__c_1;
                        v29 = strchr(*__c_1, __c);
                        if (v29)
                        {
                          *v29 = 0;
                          v28 = *__c_1;
                        }

                        if (!strcmp(v28, "yes"))
                        {
                          *(a1 + 956) = 1;
                        }
                      }

                      return v27;
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

  return v2;
}

uint64_t fi_model_getBrokerString_0(uint64_t a1, char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 0;
  *v6 = 0;
  memset(v7, 0, sizeof(v7));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v6);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v5);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      return brokeraux_ComposeBrokerString(a1, v7, 1, 1, *v6, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t load_lua_code(uint64_t *a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = a1[34];
  if (v4)
  {
    OOC_PlacementDeleteObject((a1 + 28), v4);
    a1[34] = 0;
  }

  kaldi::nnet1::Component::IsUpdatable((a1 + 28));
  IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1[1], a1[2], 0, a2);
  v6 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
  if ((v6 & 0x80000000) == 0)
  {
    if (*a2 != 1)
    {
      return v6;
    }

    *a2 = 0;
    v7 = OOCAllocator_Con((a1 + 28), a1 + 12, *(*a1 + 8));
    v8 = LH_ERROR_to_VERROR(v7);
    if ((v8 & 0x80000000) != 0 || (v9 = PNEW_LuaVMLDO_Con((a1 + 28), (a1 + 28), a1[1], a1[2], hlp_lua_log_callback_1, a1 + 34), v8 = LH_ERROR_to_VERROR(v9), (v8 & 0x80000000) != 0))
    {
      v6 = v8;
    }

    else
    {
      ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(a1[34], 0);
      v6 = LH_ERROR_to_VERROR(ScriptFromRIFF);
      if ((v6 & 0x80000000) == 0)
      {
        *a2 = 1;
        return v6;
      }
    }
  }

  v11 = a1[34];
  if (v11)
  {
    OOC_PlacementDeleteObject((a1 + 28), v11);
    a1[34] = 0;
  }

  kaldi::nnet1::Component::IsUpdatable((a1 + 28));
  return v6;
}

uint64_t NNTN_loc_ObjClose(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    log_OutText(*(result + 32), "FE_NNTN", 4, 0, "nntn : loc ObjClose Begin");
    NullHandle = safeh_GetNullHandle();
    v6 = 0;
    if (!safeh_HandlesEqual(*a2, a2[1], NullHandle, v5))
    {
      result = safeh_HandleCheck(*a2, a2[1], 58765, 968);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v6 = result;
      v7 = *a2;
      v8 = tokenizer_NNTN_ObjClose(*a2);
      if (v8 < 0)
      {
        v6 = v8;
      }

      v9 = textnormalizer_ObjClose(v7);
      if (v9 < 0)
      {
        v6 = v9;
      }

      v10 = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(v7 + 136), *(v7 + 144), v10, v11))
      {
        v12 = nuance_pcre_ObjClose(*(v7 + 136), *(v7 + 144));
        if (v12 < 0)
        {
          v6 = v12;
        }
      }

      v13 = FEData_ObjClose_NNTN(v7);
      if (v13 < 0)
      {
        v6 = v13;
      }

      *(v7 + 152) = 0;
      v14 = FERuntimeData_ObjClose(v7);
      if (v14 < 0)
      {
        v6 = v14;
      }

      *(v7 + 176) = 0;
      v15 = FEFunctionMap_ObjClose(v7);
      if (v15 < 0)
      {
        v6 = v15;
      }

      *(v7 + 160) = 0;
      if (*(v7 + 88))
      {
        objc_ReleaseObject(*(v3 + 48), "FE_DCTLKP");
      }

      if (*(v7 + 112))
      {
        objc_ReleaseObject(*(v3 + 48), "FE_DEPES");
      }

      if (*(v7 + 64))
      {
        objc_ReleaseObject(*(v3 + 48), "LINGDB");
      }

      v16 = *(v7 + 344);
      if (v16)
      {
        if (*(v7 + 336))
        {
          v17 = 0;
          do
          {
            heap_Free(*(v3 + 8), *(*(v7 + 344) + 8 * v17));
            *(*(v7 + 344) + 8 * v17++) = 0;
          }

          while (v17 < *(v7 + 336));
          v16 = *(v7 + 344);
        }

        heap_Free(*(v3 + 8), v16);
      }

      v18 = *(v7 + 288);
      if (v18)
      {
        heap_Free(*(v3 + 8), v18);
      }

      v19 = *(v7 + 888);
      if (v19)
      {
        v6 = (*(v19 + 24))(*(v7 + 912), *(v7 + 920));
        *(v7 + 888) = 0;
      }

      if (*(v7 + 840))
      {
        v20 = *(v7 + 856);
        if (v20)
        {
          v6 = fi_deinit(*v7, *(v7 + 24), v20);
          *(v7 + 856) = 0;
        }

        if (*(v7 + 864) || *(v7 + 868))
        {
          *(v7 + 864) = 0;
        }
      }

      if (*(v7 + 928))
      {
        v21 = *(v7 + 944);
        if (v21)
        {
          igtree_Deinit(*v7, v21);
          heap_Free(*(*v7 + 8), *(v7 + 944));
          *(v7 + 944) = 0;
        }

        if (*(v7 + 936))
        {
          *(v7 + 936) = 0;
        }
      }

      v22 = *(v7 + 272);
      if (v22)
      {
        OOC_PlacementDeleteObject(v7 + 224, v22);
        *(v7 + 272) = 0;
      }

      kaldi::nnet1::Component::IsUpdatable((v7 + 224));
      heap_Free(*(v3 + 8), v7);
    }

    heap_Free(*(v3 + 8), a2);
    return log_OutText(*(v3 + 32), "FE_NNTN", 4, 0, "nntn : loc ObjClose End (%x)", v6);
  }

  return result;
}

uint64_t setDomainsOnSentence_NNTN(uint64_t *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : setDomainsOnSentence_NNTN Begin");
    DomainDefBlockInfo = dumpTokenRecordsInLingDB(a1, "TRACE", 1);
    if ((DomainDefBlockInfo & 0x80000000) == 0)
    {
      FEData_blockData_getDomains2SearchIn(a1, *(a1 + 168), a1[43], v46, &v44, 0);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : %d block(s) to search in", v44);
      if (v44)
      {
        for (i = 0; i < v44; ++i)
        {
          FEData_blockData_newGetDomainDefBlockInfo(a1, v46[i], &v43);
          v4 = v43;
          if (*(v43 + 12))
          {
            v5 = 0;
            v6 = 0;
            do
            {
              v7 = &v4[2][v5];
              v8 = *(v7 + 6);
              v9 = (*(v7 + 6) + *v7);
              if (*(v7 + 15) == 1)
              {
                v10 = "(remapped to normal)";
              }

              else
              {
                v10 = "";
              }

              if (*&v4[5][16 * v8 + 8])
              {
                v11 = "";
              }

              else
              {
                v11 = "(VIRTUAL)";
              }

              log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : domain[%d,%d,%s,type=%d] marker %s%s %s", i, v6++, *v4, *(v4 + 2), v9, v10, v11);
              v4 = v43;
              v5 += 72;
            }

            while (v6 < *(v43 + 12));
          }
        }

        v12 = *(a1[33] + 32);
        v13 = *(v12 + 24);
        if (v13 < *(v12 + 32))
        {
          do
          {
            __s2 = 0;
            v40 = 0;
            StringAttribute = LDOObject_GetStringAttribute(*v13, "TNTAG", &v40, &__s2);
            DomainDefBlockInfo = LH_ERROR_to_VERROR(StringAttribute);
            if ((DomainDefBlockInfo & 0x80000000) != 0)
            {
              return DomainDefBlockInfo;
            }

            if (v40)
            {
              v39 = 0;
              v38 = 0;
              AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v13);
              v35 = v13;
              AbsoluteTo = LDOLabel_GetAbsoluteTo(*v13);
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing DB token %s %d,%d", __s2, AbsoluteFrom, AbsoluteTo);
              if (v44)
              {
                v17 = 0;
                v37 = AbsoluteFrom;
                v36 = AbsoluteFrom;
                do
                {
                  FEData_blockData_newGetDomainDefBlockInfo(a1, v46[v17], &v43);
                  IsRemappable = FEData_blockData_IsRemappable(a1, __s2, &v39, &v38 + 1, &v38);
                  v42 = 0;
                  v19 = __s2;
                  if (IsRemappable == 1)
                  {
                    log_OutText(*(*a1 + 32), a1[23], 5, 0, "domain %s is remappable to %s", __s2, v39);
                    v20 = HIWORD(v38);
                    v21 = v38;
                    DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v38, &v42);
                    if ((DomainDefBlockInfo & 0x80000000) != 0)
                    {
                      return DomainDefBlockInfo;
                    }

                    v22 = v42;
                    if (v42)
                    {
                      goto LABEL_30;
                    }

                    log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%s", "skipping undefined remapped domain:", v39);
                  }

                  else
                  {
                    v22 = v43;
                    v23 = *(v43 + 12);
                    if (*(v43 + 12))
                    {
                      v24 = 0;
                      v25 = v43[2];
                      while (strcmp((*(v25 + 6) + *v25), v19))
                      {
                        ++v24;
                        v25 += 72;
                        if (v23 == v24)
                        {
                          goto LABEL_41;
                        }
                      }

                      v21 = v46[v17];
                      v42 = v22;
                      v20 = v24;
LABEL_30:
                      v26 = v22[2];
                      DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v45);
                      if ((DomainDefBlockInfo & 0x80000000) != 0)
                      {
                        return DomainDefBlockInfo;
                      }

                      v27 = &v26[72 * v20];
                      v28 = v45;
                      *(v45 + 6) = v21;
                      *(v28 + 4) = v20;
                      *v28 = v37;
                      *(v28 + 2) = AbsoluteTo;
                      *(v28 + 8) = 1;
                      log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set Active Domain[%s:%s] range %d,%d", *v42, (*(v27 + 6) + *v27), v36, AbsoluteTo);
                      if (!strcmp((*(v27 + 6) + *v27), a1[36]) || *(v27 + 15) == 1)
                      {
                        log_OutText(*(*a1 + 32), a1[23], 5, 0, "normal domain OR was remapped to EscNormal - set additional domains, if any");
                        v29 = v43;
                        if (*(v43 + 12))
                        {
                          v30 = 0;
                          v31 = 48;
                          do
                          {
                            if (v20 != v30)
                            {
                              v32 = v29[2];
                              if (!strcmp((*&v32[v31] + *&v32[v31 - 48]), a1[36]) || *&v32[v31 + 12] == 1)
                              {
                                DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v45);
                                if ((DomainDefBlockInfo & 0x80000000) != 0)
                                {
                                  return DomainDefBlockInfo;
                                }

                                v33 = v45;
                                *(v45 + 6) = v46[v17];
                                *(v33 + 4) = v30;
                                *v33 = v37;
                                *(v33 + 2) = AbsoluteTo;
                                *(v33 + 8) = 1;
                                log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set (as mapped to normal) Active Domain[%s:%s] range %d,%d", *v43, (*&v32[v31] + *&v32[v31 - 48]), v36, AbsoluteTo);
                                v29 = v43;
                              }
                            }

                            ++v30;
                            v31 += 72;
                          }

                          while (v30 < *(v29 + 12));
                        }
                      }
                    }
                  }

LABEL_41:
                  ++v17;
                }

                while (v17 < v44);
              }

              v13 = v35;
            }

            ++v13;
          }

          while (v13 < *(*(a1[33] + 32) + 32));
        }

        log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : setDomainsOnSentence_NNTN End (%x)", DomainDefBlockInfo);
      }

      else
      {
        return 0;
      }
    }

    return DomainDefBlockInfo;
  }

  else
  {

    return NNTNERROR(7);
  }
}

uint64_t mergeDomainsOnSentence_NNTN(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : mergeDomainsOnSentence_NNTN Begin");
    v28 = 0;
    FERuntimeData_GetActiveDomains(a1, v31, &v28, 0, *(a1 + 156), 1);
    if (v28)
    {
      v2 = 0;
      v3 = 1;
      do
      {
        FERuntimeData_GetDomainRange(a1, v31[v2], &v30);
        DomainBlockIndex = FERuntimeData_GetDomainBlockIndex(a1, v31[v2++], &v27, &v26 + 1);
        v5 = v28;
        v6 = v3;
        if (v2 < v28)
        {
          while (1)
          {
            FERuntimeData_GetDomainRange(a1, v31[v6], &v29);
            v7 = FERuntimeData_GetDomainBlockIndex(a1, v31[v6], &v26, &v25);
            if (*(v29 + 2) == 1 && v26 == v27)
            {
              v8 = v25;
              if (v25 == HIWORD(v26))
              {
                v9 = *v30;
                if (v9 == *v29)
                {
                  v10 = v30[1];
                  if (v10 == v29[1])
                  {
                    *(v29 + 2) = 0;
                    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Remove duplicate domain %d,%d RANGE %d,%d ?", 1, v8, v9, v10);
                  }
                }
              }
            }

            if ((v7 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            ++v6;
            v5 = v28;
            if (v6 >= v28)
            {
              goto LABEL_15;
            }
          }
        }

        v7 = DomainBlockIndex;
LABEL_15:
        ++v3;
      }

      while (v2 < v5);
      if (v5)
      {
        v11 = 0;
        while (1)
        {
          FERuntimeData_GetDomainRange(a1, v31[v11], &v30);
          DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v31[v11], &v27, &v26 + 1);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v27, &v24);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          v13 = (*(v24 + 16) + 72 * HIWORD(v26));
          if (*(*(v24 + 40) + 16 * v13[6] + 8) && *(v30 + 2) == 1)
          {
            v14 = v30[1];
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Modify domain %s RANGE %d,%d ?", (*(v13 + 6) + *v13), *v30, v14);
            if (v11 < v28)
            {
              v15 = v11;
              do
              {
                FERuntimeData_GetDomainRange(a1, v31[v15], &v29);
                DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v31[v15], &v26, &v25);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v26, &v23);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                v17 = v29;
                v16 = v30;
                if (v29 != v30 && *(v29 + 2) == 1)
                {
                  v18 = *v29;
                  if (v18 == v14 || v18 == *v30 && v29[1] == v30[1])
                  {
                    v19 = (*(v23 + 16) + 72 * v25);
                    v20 = (*(v13 + 6) + *v13);
                    v21 = (*(v19 + 6) + *v19);
                    if (!strcmp(v20, v21))
                    {
                      v14 = v17[1];
                      log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Modify domain %s RANGE %d,%d -> %d %d (merge with %s)", v20, *v16, v16[1], *v16, v14, v21);
                      *(v29 + 2) = 0;
                    }
                  }
                }
              }

              while (++v15 < v28);
            }

            if (v30[1] != v14)
            {
              DomainDefBlockInfo = FERuntimeData_UpdateDomainRange(a1, v11, v14);
              if ((DomainDefBlockInfo & 0x80000000) != 0)
              {
                goto LABEL_43;
              }
            }
          }

          if (++v11 >= v28)
          {
            goto LABEL_42;
          }
        }
      }

      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_42:
    DomainDefBlockInfo = FERuntimeData_PruneAndDumpActiveDomains(a1);
LABEL_43:
    v7 = DomainDefBlockInfo;
LABEL_44:
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : mergeDomainsOnSentence_NNTN End (%x)", v7);
    return v7;
  }

  else
  {

    return NNTNERROR(7);
  }
}

uint64_t stat_mnctn_seq2rule(uint64_t a1, uint64_t *a2, __int16 *a3, char *a4)
{
  v8 = *a2;
  v44 = 0;
  v42 = 0;
  v9 = a2[5];
  v10 = (*(v9 + 40))(a2[8], a2[9], &v44);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = heap_Calloc(*(v8 + 8), 1, 8);
  if (!v11)
  {
    v22 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0);
    return v22;
  }

  v12 = v11;
  v13 = heap_Calloc(*(v8 + 8), 1, 2048);
  if (!v13)
  {
    v22 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0);
    v23 = *(v8 + 8);
    v24 = v12;
    goto LABEL_51;
  }

  v14 = v13;
  v15 = *(a2 + 5);
  if (*(a1 + 956) == 1)
  {
    ++v15;
  }

  v16 = heap_Alloc(*(v8 + 8), 4 * (v15 * *(a2 + 4)));
  v43 = v16;
  if (!v16)
  {
    v22 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0);
    goto LABEL_50;
  }

  v17 = *a3;
  __dst = a4;
  v40 = v16;
  if (*(a2 + 8) == 1)
  {
    v18 = *(a2 + 4);
    v19 = a3[1] - v17;
    if (v18 == v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18 - v19;
    }

    v36 = ((v20 & 1) + v20) >> 1;
    v21 = -v36;
  }

  else
  {
    v19 = a3[1] - v17;
    LOWORD(v36) = 7;
    LOWORD(v21) = -7;
  }

  strncpy(v14, (*(a1 + 304) + v17), (v19 + 1));
  v25 = 0;
  v39 = 0;
  v26 = 0;
  v14[a3[1] - *a3] = 0;
LABEL_18:
  v27 = v25;
  while (1)
  {
    v28 = *(a2 + 4);
    if (v28 <= v27)
    {
      break;
    }

    if ((v21 & 0x8000) != 0)
    {
      nnGetChar(*(a1 + 304), a3, v21, v12);
      LOWORD(v21) = v21 + 1;
      if (*v12)
      {
        v41 = v26;
LABEL_35:
        v32 = *(a1 + 956);
        v33 = 0.0;
        goto LABEL_36;
      }
    }

    else
    {
      v41 = v26;
      if (v39)
      {
        if (v36 < 1)
        {
          strcpy(v12, "</s>");
        }

        else
        {
          nnGetChar(*(a1 + 304), a3, (8 - v36), v12);
          if (!*v12)
          {
            strcpy(v12, "</s>");
          }

          LOWORD(v36) = v36 - 1;
        }

        goto LABEL_35;
      }

      v38 = v9;
      if ((v26 & 0x8000) == 0)
      {
        v29 = v26;
        if (v26)
        {
          NextUtf8Offset = 0;
          while (NextUtf8Offset != strlen(v14))
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v14, NextUtf8Offset);
            v31 = v29--;
            if (v31 <= 1)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          NextUtf8Offset = 0;
LABEL_31:
          if ((utf8_getUTF8Char(v14, NextUtf8Offset, v12) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      *v12 = 0;
LABEL_33:
      v26 = v41 + 1;
      v39 = 1;
      v9 = v38;
      if (*v12)
      {
        ++v41;
        v39 = 0;
        v32 = *(a1 + 956);
        v33 = 1.0;
LABEL_36:
        if (v32 == 1)
        {
          *v40 = v33;
          v34 = v40 + 1;
        }

        else
        {
          v34 = v40;
        }

        if (((*(v9 + 56))(a2[8], a2[9], v12, v34) & 0x1FFF) == 0x14)
        {
          log_OutText(*(v8 + 32), "FE_NNTN", 5, 0, "No embedding vector for character %s . Fall back!", v12);
          strcpy(v12, "</s>");
          (*(v9 + 56))(a2[8], a2[9], v12, v34);
        }

        v25 = v27 + 1;
        v40 = &v34[v44];
        v26 = v41;
        goto LABEL_18;
      }
    }
  }

  v22 = fi_predict(a2[1], &v43, v28, &v42);
  if ((v22 & 0x80000000) != 0)
  {
    log_OutText(*(v8 + 32), "FE_NNTN", 5, 0, "FIhmogrph Prediction Failed", 0);
  }

  else
  {
    strcpy(__dst, *v42);
  }

LABEL_50:
  heap_Free(*(v8 + 8), v12);
  v23 = *(v8 + 8);
  v24 = v14;
LABEL_51:
  heap_Free(v23, v24);
  return v22;
}

uint64_t nnGetChar(uint64_t __s, __int16 *a2, int a3, _BYTE *a4)
{
  NextUtf8Offset = *a2;
  if ((NextUtf8Offset & 0x80000000) == 0)
  {
    v6 = a2[1];
    if (NextUtf8Offset < v6)
    {
      v7 = a3;
      v8 = __s;
      if ((a3 & 0x80000000) == 0)
      {
        if (a3)
        {
          NextUtf8Offset = v6 - 1;
          while (1)
          {
            __s = strlen(v8);
            if (NextUtf8Offset == __s)
            {
              goto LABEL_16;
            }

            NextUtf8Offset = utf8_GetNextUtf8Offset(v8, NextUtf8Offset);
            v9 = v7--;
            if (v9 <= 1)
            {
              goto LABEL_15;
            }
          }
        }

        NextUtf8Offset = 0;
LABEL_15:
        __s = utf8_getUTF8Char(v8, NextUtf8Offset, a4);
        if ((__s & 0x80000000) == 0)
        {
          return __s;
        }

        goto LABEL_16;
      }

      if (*a2)
      {
        do
        {
          __s = utf8_GetPreviousUtf8Offset(v8, NextUtf8Offset);
          NextUtf8Offset = __s;
          v10 = ~v7 == 0;
          LOWORD(v7) = v7 + 1;
        }

        while (!v10 && __s);
        if (!v7)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:
  *a4 = 0;
  return __s;
}

uint64_t FEData_ObjOpen_NNTN(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen Begin");
  v4 = heap_Calloc(*(*a3 + 8), 1, 24);
  if (v4)
  {
    v5 = v4;
    a3[19] = v4;
    v6 = FEData_functionData_ObjOpen(a3, v4);
    if ((v6 & 0x80000000) != 0 || (v6 = FEData_domainDefs_ObjOpen(a3, v5 + 1), (v6 & 0x80000000) != 0))
    {
      v7 = v6;
    }

    else
    {
      v7 = FEData_blockData_ObjOpen(a3, v5 + 2);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_8:
        log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen End (%x)", v7);
        return v7;
      }
    }

    FEData_ObjClose_NNTN(a3);
    goto LABEL_8;
  }

  log_OutPublic(*(*a3 + 32), a3[23], 24048, 0);

  return NNTNERROR(10);
}

uint64_t FEData_ObjClose_NNTN(uint64_t *a1)
{
  v1 = a1[19];
  if (v1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose Begin");
    v3 = FEData_functionData_ObjClose(a1);
    LODWORD(v4) = v3 & (v3 >> 31);
    v5 = FEData_blockData_ObjClose_NNTN(a1);
    if (v5 < 0)
    {
      LODWORD(v4) = v5;
    }

    v6 = FEData_domainDefs_ObjClose(a1);
    if (v6 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v6;
    }

    heap_Free(*(*a1 + 8), v1);
    a1[19] = 0;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose End (%x)", v4);
    return v4;
  }

  else
  {

    return NNTNERROR(8);
  }
}

uint64_t FEData_blockData_ObjClose_NNTN(uint64_t *a1)
{
  v2 = *(a1[19] + 16);
  v3 = *(*a1 + 32);
  v4 = a1[23];
  if (v2)
  {
    log_OutText(v3, v4, 4, 0, "blockData : ObjClose Begin");
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "blockData : ObjClose End (%x)", 0);
    heap_Free(*(*a1 + 8), v2);
    return 0;
  }

  else
  {
    log_OutPublic(v3, v4, 24049, 0);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndRegexData_NNTN(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, _DWORD *a6)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    v9 = *(*(*(*(v8 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    v10 = v9[6] + 32 * *(*a2 + 4);
    v11 = v9[8] + 16 * *(v10 + 6);
    *a4 = *(v11 + 10);
    *a6 = *(v11 + 12);
    *a3 = v9[4] + *(v11 + 4);
    *a5 = v9[3] + *(v10 + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, v6);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_loadDataFiles_NNTN(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v82 = *MEMORY[0x1E69E9840];
  v4 = a1[19];
  v79 = 0;
  memset(v81, 0, 128);
  memset(v80, 0, sizeof(v80));
  v78 = 0;
  v76 = 0;
  v77 = 0;
  *v75 = 0;
  v5 = *(v4 + 16);
  if (!v5)
  {
    v6 = *(*a1 + 32);
    v7 = v3[23];
    v8 = 24049;
    goto LABEL_5;
  }

  if (!*v5)
  {
    v11 = *(a1 + 352);
    v12 = *(a1 + 168);
    v13 = *a1;
    if (v11 > v12)
    {
      log_OutPublic(*(v13 + 32), a1[23], 24056, "%s%d%s%d", "invalid language identifier index", v11, "max=", v12);
      v9 = 0;
      goto LABEL_6;
    }

    if ((paramc_ParamGetStr(*(v13 + 40), "langcode", v75) & 0x80000000) != 0)
    {
      *v75 = "";
    }

    if ((paramc_ParamGetStr(*(*v3 + 40), "fecfg", &v76) & 0x80000000) == 0)
    {
      strcpy(v80, "nntokentn/");
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v14 = brokeraux_ComposeBrokerString(*v3, v80, 1, 1, *v75, 0, 0, v81, 0x80uLL);
      if (v14 < 0)
      {
        return FEDATA_ERROR(v14);
      }

      RsrcHandleForThisApi = getRsrcHandleForThisApi(*v3, v3[1], v3[2], v3[4]);
      if ((ssftriff_reader_ObjOpen(RsrcHandleForThisApi, v16, 2, v81, "TOKN", 1031, &v79) & 0x80000000) == 0)
      {
LABEL_18:
        Chunk = ssftriff_reader_FindChunk(v79, "CFIG", 0, &v78, &v77);
        v20 = Chunk & 0x1FFF;
        if ((Chunk & 0x80000000) == 0 || v20 == 20)
        {
          if (v20 == 20)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
          }

          else
          {
            v22 = *v77;
            if (*v77)
            {
              if (v22 == 3)
              {
                v22 = 0;
                v21 = v77[1] == 1;
                v23 = 1;
              }

              else
              {
                v21 = v77[1] == 1;
                if (v22 == 1)
                {
                  v22 = 0;
                  v23 = 0;
                }

                else
                {
                  v23 = 0;
                  v22 = v77[2] == 1;
                }
              }
            }

            else
            {
              v21 = 0;
              v23 = *v77;
            }

            Chunk = ssftriff_reader_CloseChunk(v79);
            if ((Chunk & 0x80000000) != 0)
            {
              goto LABEL_106;
            }
          }

          Chunk = ssftriff_reader_FindChunk(v79, "FILE", 0, &v78, &v77);
          if ((Chunk & 0x80000000) == 0)
          {
            *v5 = *v77;
            Chunk = ssftriff_reader_CloseChunk(v79);
            if ((Chunk & 0x80000000) == 0)
            {
              __strcpy_chk();
              DataBlockFromFileRefCnt = readDataBlockFromFileRefCnt(v3, v79, v21, v22, v23, v81);
              if ((DataBlockFromFileRefCnt & 0x80000000) == 0)
              {
                ssftriff_reader_ObjClose(v79);
                v79 = 0;
                v25 = *v5;
                if (*v5)
                {
                  v63 = DataBlockFromFileRefCnt;
                  v64 = v3;
                  v26 = 0;
                  v27 = 0;
                  v72 = v5;
                  do
                  {
                    v28 = *(*(*(v5 + 17) + 8) + 8 * v26);
                    if (v28)
                    {
                      v29 = *(v28 + 16);
                      if (v29)
                      {
                        v30 = 0;
                        v73 = *(*(*(v5 + 17) + 8) + 8 * v26);
                        while (v30 < *(v29 + 24))
                        {
                          v31 = (*(v29 + 16) + 72 * v30);
                          if (*(v31 + 16) == 1)
                          {
                            if (v64[36])
                            {
                              v28 = v73;
                              if (strcmp(v64[36], (*(v31 + 6) + *v31)))
                              {
                                log_OutPublic(*(*v64 + 32), v64[23], 24053, "%s%s%s%s");
                                goto LABEL_105;
                              }
                            }

                            else
                            {
                              v32 = strlen((*(v31 + 6) + *v31));
                              v33 = heap_Calloc(*(*v64 + 8), 1, (v32 + 1));
                              v64[36] = v33;
                              if (!v33)
                              {
                                log_OutPublic(*(*v64 + 32), v64[23], 24048, 0);
                                v14 = 10;
                                return FEDATA_ERROR(v14);
                              }

                              strcpy(v33, (*(v31 + 6) + *v31));
                              *(v64 + 148) = v26;
                              *(v64 + 149) = v30;
                              v28 = v73;
                            }
                          }

                          v65 = v30;
                          if (*(v31 + 2) == 1)
                          {
                            v34 = *(v28 + 16);
                            v68 = *(v34 + 48);
                            if (*(v34 + 48))
                            {
                              v35 = 0;
                              v66 = *(v34 + 40);
                              while (1)
                              {
                                v70 = v35;
                                v36 = v66 + 16 * v35;
                                v37 = *(v36 + 8);
                                if (*(v36 + 8))
                                {
                                  v38 = 0;
                                  v39 = *v5;
                                  do
                                  {
                                    if (v39)
                                    {
                                      v40 = 0;
                                      v41 = *(*(v5 + 17) + 8);
                                      while (1)
                                      {
                                        v42 = *(v41 + 8 * v40);
                                        if (*v42 != 1 && *v42 != 4)
                                        {
                                          if (*(v34 + 50))
                                          {
                                            v44 = *(*v36 + 24 * v38);
                                            if (*(v34 + 50) > *v44 && !strcmp(**(v42 + 8), *(*(v34 + 56) + 8 * *v44)))
                                            {
                                              break;
                                            }
                                          }
                                        }

                                        if (v39 == ++v40)
                                        {
                                          v27 = 0;
                                          goto LABEL_65;
                                        }
                                      }

                                      v44[1] = v40;
                                      v27 = 1;
LABEL_65:
                                      v5 = v72;
                                      v28 = v73;
                                    }

                                    else
                                    {
                                      v27 = 0;
                                    }

                                    ++v38;
                                  }

                                  while (v38 != v37);
                                }

                                if (!v27)
                                {
                                  break;
                                }

                                v35 = v70 + 1;
                                v27 = 1;
                                if (v70 + 1 == v68)
                                {
                                  goto LABEL_70;
                                }
                              }

                              log_OutPublic(*(*v64 + 32), v64[23], 24045, 0);
                              return v63;
                            }
                          }

LABEL_70:
                          v30 = v65 + 1;
                          v29 = *(v28 + 16);
                          if (!v29)
                          {
                            break;
                          }
                        }
                      }

                      v25 = *v5;
                    }

                    if (v25)
                    {
                      v45 = 0;
                      v67 = v25;
                      v69 = *(*(v5 + 17) + 8);
                      for (i = v25; i != v45; v55 = i)
                      {
                        v46 = *(v69 + 8 * v45);
                        if (v46)
                        {
                          v47 = *(v46 + 24);
                          if (v47)
                          {
                            v48 = *(v47 + 16);
                            if (*(v47 + 16))
                            {
                              v49 = 0;
                              v74 = *(v47 + 8);
                              do
                              {
                                if (v28)
                                {
                                  v50 = *(v28 + 16);
                                  if (v50)
                                  {
                                    v51 = *(v50 + 24);
                                    if (*(v50 + 24))
                                    {
                                      v52 = *(v74 + 8 * v49);
                                      v53 = *(v50 + 16);
                                      v54 = *v52;
                                      do
                                      {
                                        if (!strcmp(v54, (*(v53 + 6) + *v53)))
                                        {
                                          *(v52 + 10) = v26;
                                        }

                                        v53 += 36;
                                        --v51;
                                      }

                                      while (v51);
                                    }
                                  }
                                }

                                ++v49;
                              }

                              while (v49 != v48);
                            }
                          }
                        }

                        ++v45;
                      }

                      v5 = v72;
                      v25 = v67;
                    }

                    else
                    {
                      v55 = 0;
                    }

                    ++v26;
                  }

                  while (v26 < v55);
                  v3 = v64;
                  DataBlockFromFileRefCnt = v63;
                  if (v25)
                  {
                    for (j = 0; j < v25; ++j)
                    {
                      v57 = *(*(*(v5 + 17) + 8) + 8 * j);
                      if (v57)
                      {
                        v58 = *(v57 + 16);
                        if (v58)
                        {
                          v59 = 0;
                          v60 = -1;
                          do
                          {
                            if (++v60 >= *(v58 + 24))
                            {
                              break;
                            }

                            v61 = *(v58 + 16) + v59;
                            if (*(v61 + 40) && (!*(v61 + 8) || !*(v58 + 48)))
                            {
                              log_OutPublic(*(*v64 + 32), v64[23], 24062, 0);
                            }

                            v59 += 72;
                            v58 = *(v57 + 16);
                          }

                          while (v58);
                        }

                        v25 = *v5;
                      }
                    }
                  }
                }

                if (!v3[36])
                {
                  log_OutPublic(*(*v3 + 32), v3[23], 24054, 0, v62);
LABEL_105:
                  v14 = 0;
                  return FEDATA_ERROR(v14);
                }

LABEL_108:
                if (v79)
                {
                  ssftriff_reader_ObjClose(v79);
                }

                return DataBlockFromFileRefCnt;
              }

LABEL_107:
              log_OutPublic(*(*v3 + 32), v3[23], 24052, 0);
              goto LABEL_108;
            }
          }
        }

LABEL_106:
        DataBlockFromFileRefCnt = Chunk;
        goto LABEL_107;
      }
    }

    strcpy(v80, "nntokentn/");
    __strcat_chk();
    v14 = brokeraux_ComposeBrokerString(*v3, v80, 1, 1, *v75, 0, 0, v81, 0x80uLL);
    if ((v14 & 0x80000000) == 0)
    {
      v17 = getRsrcHandleForThisApi(*v3, v3[1], v3[2], v3[4]);
      if ((ssftriff_reader_ObjOpen(v17, v18, 0, v81, "TOKN", 1031, &v79) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      log_OutPublic(*(*v3 + 32), v3[23], 24057, "%s%s", "Missing broker header file", v81);
      v14 = 3;
    }

    return FEDATA_ERROR(v14);
  }

  v6 = *(*a1 + 32);
  v7 = v3[23];
  v8 = 24055;
LABEL_5:
  log_OutPublic(v6, v7, v8, 0);
  v9 = 7;
LABEL_6:

  return FEDATA_ERROR(v9);
}

uint64_t readDataBlockFromFileRefCnt(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v22);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v21);
    if ((result & 0x80000000) == 0)
    {
      v16[0] = a1;
      v16[1] = a2;
      v17 = a3;
      v18 = a4;
      LODWORD(v19) = a5;
      v14 = v21;
      v13 = v22;
      __s1 = 0;
      if ((paramc_ParamGetStr(*(v22 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !strcmp(__s1, "internal"))
      {
        v13 = v14;
      }

      result = objc_GetAddRefCountedObject(*(v13 + 48), a6, readDataBlockFromFile_ObjcLoad, readDataBlockFromFile_ObjcClose, v16, &v20);
      if ((result & 0x80000000) != 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v20 + 32);
      }

      *(*(*(a1 + 152) + 16) + 136) = v15;
    }
  }

  return result;
}

uint64_t readDataBlockFromFile_ObjcLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  v9 = *(a5 + 20);
  v10 = *(a5 + 24);
  v11 = *(*(*a5 + 152) + 16);
  v12 = heap_Calloc(*(**a5 + 8), 1, 16);
  *(a4 + 32) = v12;
  v13 = *v6;
  if (!v12)
  {
LABEL_141:
    log_OutPublic(*(v13 + 32), v6[23], 24048, 0);
    v21 = FEDATA_ERROR(10);
    if ((v21 & 0x80000000) != 0)
    {
LABEL_142:
      log_OutPublic(*(*v6 + 32), v6[23], 24052, 0);
    }

    return v21;
  }

  *(*(a4 + 32) + 8) = heap_Calloc(*(v13 + 8), 1, (8 * *v11) | 1);
  v14 = *(a4 + 32);
  if (!*(v14 + 8))
  {
LABEL_140:
    v13 = *v6;
    goto LABEL_141;
  }

  v152 = v11;
  v15 = *v11;
  *v14 = v15;
  if (v15)
  {
    v149 = v10;
    v150 = v8;
    v151 = v9;
    v16 = 0;
    v17 = v152;
    while (1)
    {
      *(*(*(a4 + 32) + 8) + 8 * v16) = heap_Calloc(*(*v6 + 8), 1, 48);
      v18 = *(*(*(a4 + 32) + 8) + 8 * v16);
      if (!v18)
      {
        goto LABEL_140;
      }

      *v154 = 0;
      v155 = 0;
      v153 = 0;
      Chunk = ssftriff_reader_FindChunk(v7, "HEAD", 1, &v155 + 1, v154);
      if ((Chunk & 0x80000000) != 0)
      {
LABEL_94:
        v21 = Chunk;
LABEL_95:
        v32 = 0;
LABEL_96:
        log_OutPublic(*(*v6 + 32), v6[23], 24052, 0);
        goto LABEL_97;
      }

      LODWORD(v155) = 0;
      v20 = **v154;
      LODWORD(v155) = 2;
      *v18 = v20;
      v21 = ssftriff_reader_CloseChunk(v7);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_95;
      }

      v22 = *v18;
      if ((*v18 - 3) <= 2)
      {
        v23 = heap_Calloc(*(*v6 + 8), 1, 24);
        *(v18 + 24) = v23;
        if (!v23)
        {
          goto LABEL_102;
        }

        Chunk = ssftriff_reader_FindChunk(v7, "REMP", 1, &v155 + 1, v154);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_94;
        }

        LODWORD(v155) = 0;
        v24 = *v154;
        v25 = **v154;
        LODWORD(v155) = 2;
        v26 = *(v18 + 24);
        *v26 = v25;
        if (!v25)
        {
          v121 = v155;
          *(v26 + 16) = *(v24 + v155);
          LODWORD(v155) = v121 + 2;
          if (*(*(v18 + 24) + 16))
          {
            v122 = heap_Calloc(*(*v6 + 8), 1, 8 * *(*(v18 + 24) + 16));
            v123 = *(v18 + 24);
            *(v123 + 8) = v122;
            if (!v122)
            {
              log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
              *(*(v18 + 24) + 16) = 0;
              goto LABEL_129;
            }

            if (*(v123 + 16))
            {
              v124 = 0;
              while (1)
              {
                *(*(*(v18 + 24) + 8) + 8 * v124) = heap_Calloc(*(*v6 + 8), 1, 24);
                v125 = *(v18 + 24);
                if (!*(*(v125 + 8) + 8 * v124))
                {
                  goto LABEL_127;
                }

                if (++v124 >= *(v125 + 16))
                {
                  v17 = v152;
                  if (!*(v125 + 16))
                  {
                    break;
                  }

                  v126 = 0;
                  while (1)
                  {
                    v145 = v126;
                    v127 = *(*(v125 + 8) + 8 * v126);
                    v128 = *(*v154 + v155);
                    LODWORD(v155) = v155 + 2;
                    v129 = v128 + 1;
                    v130 = heap_Calloc(*(*v6 + 8), 1, (v128 + 1));
                    *v127 = v130;
                    if (!v130)
                    {
                      goto LABEL_127;
                    }

                    v148 = v127;
                    v153 = v129;
                    v21 = ssftriff_reader_ReadStringZ(v7, *v154, HIDWORD(v155), v155, v130, &v153);
                    v32 = 1;
                    if ((v21 & 0x80000000) != 0 || v153 != v129)
                    {
                      goto LABEL_104;
                    }

                    v131 = v155 + v129;
                    LODWORD(v155) = v131;
                    v132 = *v154;
                    v133 = v148;
                    *(v148 + 4) = *(*v154 + v131);
                    LODWORD(v155) = v131 + 2;
                    *(v148 + 5) = *(v132 + v131 + 2);
                    LODWORD(v155) = v131 + 4;
                    v134 = *(v132 + v131 + 4);
                    *(v148 + 6) = v134;
                    LODWORD(v155) = v131 + 6;
                    if (v134)
                    {
                      v135 = heap_Calloc(*(*v6 + 8), 1, 8 * v134);
                      v148[2] = v135;
                      if (!v135)
                      {
                        log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
                        *(v148 + 6) = 0;
                        goto LABEL_129;
                      }

                      if (*(v148 + 6))
                      {
                        v136 = 0;
                        v137 = v155;
                        do
                        {
                          v138 = *(*v154 + v137);
                          LODWORD(v155) = v137 + 2;
                          v139 = v138 + 1;
                          *(v133[2] + 8 * v136) = heap_Calloc(*(*v6 + 8), 1, (v138 + 1));
                          v140 = *(v133[2] + 8 * v136);
                          if (!v140)
                          {
                            goto LABEL_127;
                          }

                          v153 = v139;
                          v21 = ssftriff_reader_ReadStringZ(v7, *v154, HIDWORD(v155), v155, v140, &v153);
                          v32 = 1;
                          if ((v21 & 0x80000000) != 0 || v153 != v139)
                          {
                            goto LABEL_104;
                          }

                          v137 = v155 + v139;
                          LODWORD(v155) = v137;
                          ++v136;
                          v133 = v148;
                        }

                        while (v136 < *(v148 + 6));
                      }
                    }

                    v126 = v145 + 1;
                    v125 = *(v18 + 24);
                    v17 = v152;
                    if (v145 + 1 >= *(v125 + 16))
                    {
                      goto LABEL_12;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_12:
        v21 = ssftriff_reader_CloseChunk(v7);
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        v22 = *v18;
      }

      if (v22 <= 5 && ((1 << v22) & 0x2D) != 0)
      {
        v27 = heap_Calloc(*(*v6 + 8), 1, 72);
        *(v18 + 8) = v27;
        if (!v27)
        {
          goto LABEL_102;
        }

        v22 = *v18;
      }

      if (v22 <= 5 && ((1 << v22) & 0x36) != 0)
      {
        v28 = heap_Calloc(*(*v6 + 8), 1, 64);
        *(v18 + 16) = v28;
        if (!v28)
        {
LABEL_102:
          log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
          v120 = FEDATA_ERROR(10);
          goto LABEL_103;
        }

        v22 = *v18;
      }

      if (v22 <= 5 && ((1 << v22) & 0x2D) != 0)
      {
        Chunk = ssftriff_reader_FindChunk(v7, "TDAT", 1, &v155 + 1, v154);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_94;
        }

        LODWORD(v155) = 0;
        v29 = *v154;
        *(v18 + 40) = *v154;
        LOWORD(v29) = *v29;
        LODWORD(v155) = 2;
        v30 = v29 + 1;
        v31 = heap_Calloc(*(*v6 + 8), 1, (v29 + 1));
        **(v18 + 8) = v31;
        if (!v31)
        {
          goto LABEL_127;
        }

        v153 = v30;
        v21 = ssftriff_reader_ReadStringZ(v7, *v154, HIDWORD(v155), v155, v31, &v153);
        v32 = 1;
        if ((v21 & 0x80000000) != 0 || v153 != v30)
        {
          goto LABEL_104;
        }

        v33 = v155 + v30;
        LODWORD(v155) = v33;
        v34 = *v154;
        *(*(v18 + 8) + 8) = *(*v154 + v33);
        LODWORD(v155) = v33 + 2;
        *(*(v18 + 8) + 12) = *(v34 + v33 + 2);
        LODWORD(v155) = v33 + 4;
        v35 = *(v34 + v33 + 4);
        LODWORD(v155) = v33 + 8;
        v36 = *(v34 + v33 + 8);
        v37 = v33 + 12;
        v38 = *(v18 + 8);
        *(v38 + 16) = v37;
        *(v38 + 24) = v34 + v37;
        LODWORD(v155) = v35 + v37;
        v39 = (v35 + v37 + *(v34 + (v35 + v37)) + 4);
        *(v38 + 40) = v39;
        *(v38 + 32) = v34 + v39;
        LODWORD(v155) = v39 + v36;
        if (*(v38 + 8))
        {
          v40 = heap_Calloc(*(*v6 + 8), 1, 32 * *(v38 + 8));
          v38 = *(v18 + 8);
          *(v38 + 48) = v40;
          if (!v40)
          {
            goto LABEL_131;
          }

          if (*(v38 + 8))
          {
            v41 = 0;
            v42 = 0;
            while (1)
            {
              v43 = *(v38 + 48) + v41;
              v44 = *v154;
              v45 = *(*v154 + v155);
              LODWORD(v155) = v155 + 2;
              *v43 = v45;
              *(v43 + 4) = *(v44 + v155);
              LODWORD(v155) = v155 + 2;
              *(v43 + 6) = *(*v154 + v155);
              LODWORD(v155) = v155 + 2;
              LODWORD(v44) = *(*v154 + v155);
              *(v43 + 24) = v44;
              LODWORD(v155) = v155 + 2;
              *(v43 + 26) = *(*v154 + v155);
              LODWORD(v155) = v155 + 2;
              *(v43 + 28) = *(*v154 + v155);
              LODWORD(v155) = v155 + 2;
              *(v43 + 8) = 0;
              if (v44)
              {
                v46 = heap_Calloc(*(*v6 + 8), 1, 56);
                v47 = v46;
                *(v43 + 8) = v46;
                if (!v46)
                {
                  goto LABEL_133;
                }

                *v46 = &StaticIntPointers;
                *(v46 + 24) = 0;
                *(v46 + 16) = 0;
                *(v46 + 40) = 0;
                *(v46 + 48) = 0;
                *(v46 + 32) = 0;
                FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(v6, v7, *v6, v46, *v154, &v155, HIDWORD(v155));
                if ((FunctionDataFromBinaryFile & 0x80000000) != 0)
                {
                  break;
                }
              }

              *(v43 + 16) = 0;
              if (*(v43 + 26))
              {
                v49 = heap_Calloc(*(*v6 + 8), 1, 56);
                v47 = v49;
                *(v43 + 16) = v49;
                if (!v49)
                {
LABEL_133:
                  v141 = *(*v6 + 32);
                  v142 = v6[23];
                  goto LABEL_128;
                }

                *v49 = &StaticIntPointers;
                *(v49 + 24) = 0;
                *(v49 + 16) = 0;
                *(v49 + 40) = 0;
                *(v49 + 48) = 0;
                *(v49 + 32) = 0;
                FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(v6, v7, *v6, v49, *v154, &v155, HIDWORD(v155));
                if ((FunctionDataFromBinaryFile & 0x80000000) != 0)
                {
                  break;
                }
              }

              ++v42;
              v38 = *(v18 + 8);
              v41 += 32;
              if (v42 >= *(v38 + 8))
              {
                goto LABEL_39;
              }
            }

            v21 = FunctionDataFromBinaryFile;
            v32 = 1;
            v17 = v152;
            goto LABEL_96;
          }
        }

LABEL_39:
        v50 = *(v38 + 12);
        v17 = v152;
        if (v50)
        {
          v51 = heap_Calloc(*(*v6 + 8), 1, 16 * v50);
          v52 = *(v18 + 8);
          *(v52 + 64) = v51;
          if (!v51)
          {
            goto LABEL_127;
          }

          if (*(v52 + 12))
          {
            v53 = 0;
            v54 = 0;
            do
            {
              v55 = *(v52 + 64);
              if (v150 == 1)
              {
                *(v55 + v53 + 4) = *(*v154 + v155);
                v56 = v155 + 4;
                LODWORD(v155) = v155 + 4;
                v57 = *v154;
              }

              else
              {
                v57 = *v154;
                v58 = *(*v154 + v155);
                LODWORD(v155) = v155 + 2;
                *(v55 + v53 + 4) = v58;
                v56 = v155;
              }

              v59 = v55 + v53;
              *(v59 + 8) = *(v57 + v56);
              LODWORD(v155) = v155 + 2;
              *(v59 + 10) = *(*v154 + v155);
              LODWORD(v155) = v155 + 2;
              *v59 = *(*v154 + v155);
              v60 = v155;
              LODWORD(v155) = v155 + 2;
              v61 = *(*v154 + v155);
              LODWORD(v155) = v60 + 4;
              *(v59 + 12) = v61;
              ++v54;
              v52 = *(v18 + 8);
              v53 += 16;
            }

            while (v54 < *(v52 + 12));
          }
        }

        v62 = ssftriff_reader_DetachChunkData(v7, (v18 + 32), v154);
        if ((v62 & 0x80000000) != 0)
        {
          v21 = v62;
          v32 = 1;
          goto LABEL_96;
        }

        v63 = *v154;
        *(v18 + 40) = *v154;
        v64 = *(v18 + 8);
        v65 = v63 + *(v64 + 16);
        v66 = v63 + *(v64 + 40);
        *(v64 + 24) = v65;
        *(v64 + 32) = v66;
        v21 = ssftriff_reader_CloseChunk(v7);
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        v22 = *v18;
      }

      if (v22 > 5 || ((1 << v22) & 0x36) == 0)
      {
        goto LABEL_100;
      }

      Chunk = ssftriff_reader_FindChunk(v7, "DDAT", 1, &v155 + 1, v154);
      if ((Chunk & 0x80000000) != 0)
      {
        goto LABEL_94;
      }

      LODWORD(v155) = 0;
      v67 = **v154;
      LODWORD(v155) = 2;
      v68 = v67 + 1;
      v69 = heap_Calloc(*(*v6 + 8), 1, (v67 + 1));
      **(v18 + 16) = v69;
      if (!v69)
      {
        goto LABEL_127;
      }

      v153 = v68;
      v21 = ssftriff_reader_ReadStringZ(v7, *v154, HIDWORD(v155), v155, v69, &v153);
      v32 = 1;
      if ((v21 & 0x80000000) == 0 && v153 == v68)
      {
        v70 = v155 + v68;
        LODWORD(v155) = v70;
        v71 = *v154;
        v72 = *(*v154 + v70);
        LODWORD(v155) = v70 + 2;
        v73 = *(v18 + 16);
        *(v73 + 8) = v72;
        *(v73 + 24) = *(v71 + v70 + 2);
        LODWORD(v155) = v70 + 4;
        *(*(v18 + 16) + 50) = *(v71 + v70 + 4);
        LODWORD(v155) = v70 + 6;
        v74 = *(v18 + 16);
        *(v74 + 56) = 0;
        if (*(v74 + 50))
        {
          v75 = heap_Calloc(*(*v6 + 8), 1, 8 * *(v74 + 50));
          v74 = *(v18 + 16);
          *(v74 + 56) = v75;
          if (v75)
          {
            if (*(v74 + 50))
            {
              v76 = 0;
              v77 = v155;
              while (1)
              {
                v78 = *(*v154 + v77);
                LODWORD(v155) = v77 + 2;
                v79 = v78 + 1;
                *(*(*(v18 + 16) + 56) + 8 * v76) = heap_Calloc(*(*v6 + 8), 1, (v78 + 1));
                v80 = *(*(*(v18 + 16) + 56) + 8 * v76);
                if (!v80)
                {
                  goto LABEL_127;
                }

                v81 = v79;
                v153 = v79;
                v21 = ssftriff_reader_ReadStringZ(v7, *v154, HIDWORD(v155), v155, v80, &v153);
                v32 = 1;
                if ((v21 & 0x80000000) != 0 || v153 != v81)
                {
                  goto LABEL_104;
                }

                v77 = v155 + v81;
                LODWORD(v155) = v155 + v81;
                ++v76;
                v74 = *(v18 + 16);
                if (v76 >= *(v74 + 50))
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_64;
          }
        }

        else
        {
LABEL_64:
          if (!*(v74 + 24))
          {
            goto LABEL_75;
          }

          v82 = heap_Calloc(*(*v6 + 8), 1, 72 * *(v74 + 24));
          v74 = *(v18 + 16);
          *(v74 + 16) = v82;
          if (v82)
          {
            if (*(v74 + 24))
            {
              v83 = 0;
              v84 = 0;
              while (1)
              {
                v85 = *(v74 + 16);
                v86 = *(*v154 + v155);
                LODWORD(v155) = v155 + 2;
                v146 = v85;
                v87 = v85 + v83;
                *(v85 + v83 + 56) = v86;
                v88 = heap_Calloc(*(*v6 + 8), 1, v86 + 1);
                *(v87 + 48) = v88;
                if (!v88)
                {
                  break;
                }

                memcpy(v88, (*v154 + v155), v86);
                *(*(v87 + 48) + v86) = 0;
                LODWORD(v155) = v155 + *(v87 + 56);
                *v87 = *(*v154 + v155);
                LODWORD(v155) = v155 + 2;
                *(v87 + 2) = *(*v154 + v155);
                v89 = v155;
                LODWORD(v155) = v155 + 2;
                v90 = *v154;
                v91 = *(*v154 + v155);
                LODWORD(v155) = v89 + 4;
                *(v87 + 60) = v91;
                v92 = *(v90 + v155);
                LODWORD(v155) = v155 + 2;
                *(v87 + 64) = v92;
                v93 = *(v90 + v155);
                LODWORD(v155) = v155 + 2;
                *(v87 + 8) = v93;
                if (v93 == 1)
                {
                  v94 = v146 + v83;
                  *(v94 + 4) = *(v90 + v155);
                  LODWORD(v155) = v155 + 2;
                  *(v94 + 12) = *(*v154 + v155);
                  LODWORD(v155) = v155 + 2;
                }

                if (!v151)
                {
                  v95 = *(*v154 + v155);
                  *(v146 + v83 + 40) = v95;
                  v96 = v155;
                  LODWORD(v155) = v155 + 2;
                  if (v95)
                  {
                    LODWORD(v155) = v96 + 4 * (v95 - 1) + 6;
                  }
                }

                ++v84;
                v74 = *(v18 + 16);
                v83 += 72;
                if (v84 >= *(v74 + 24))
                {
                  goto LABEL_75;
                }
              }
            }

            else
            {
LABEL_75:
              v97 = v155;
              *(v74 + 48) = *(*v154 + v155);
              LODWORD(v155) = v97 + 2;
              v98 = *(v18 + 16);
              v99 = *(v98 + 48);
              if (!*(v98 + 48))
              {
                goto LABEL_93;
              }

              *(v98 + 40) = 0;
              v100 = heap_Calloc(*(v6[3] + 8), 1, 16 * v99);
              v101 = *(v18 + 16);
              *(v101 + 40) = v100;
              if (v100)
              {
                if (!*(v101 + 48))
                {
LABEL_93:
                  v120 = ssftriff_reader_CloseChunk(v7);
LABEL_103:
                  v21 = v120;
                  v32 = 0;
                  goto LABEL_104;
                }

                v102 = 0;
                while (1)
                {
                  v147 = v102;
                  v103 = *(v101 + 40) + 16 * v102;
                  v104 = *(*v154 + v155);
                  *(v103 + 8) = v104;
                  LODWORD(v155) = v155 + 2;
                  *v103 = 0;
                  v105 = heap_Calloc(*(*v6 + 8), 1, 24 * v104);
                  *v103 = v105;
                  if (!v105)
                  {
                    break;
                  }

                  if (*(v103 + 8))
                  {
                    v106 = 0;
                    for (i = 0; i < *(v103 + 8); ++i)
                    {
                      *(*v103 + v106) = 0;
                      v108 = heap_Calloc(*(*v6 + 8), 1, 12);
                      *(*v103 + v106) = v108;
                      if (!v108)
                      {
                        goto LABEL_127;
                      }

                      v108[1] = 0;
                      v109 = *v154;
                      v110 = v155;
                      if (v151)
                      {
                        v111 = *(*v154 + v155);
                        LODWORD(v155) = v155 + 1;
                        v112 = v155;
                        *v108 = v111;
                        v113 = *(v109 + v112);
                        LODWORD(v155) = v110 + 2;
                        v108[2] = v113;
                      }

                      else
                      {
                        *v108 = *(*v154 + v155);
                        v114 = v155;
                        LODWORD(v155) = v155 + 2;
                        *(*(*v103 + v106) + 4) = *(*v154 + v155);
                        LODWORD(v155) = v114 + 4;
                        if (v149 == 1)
                        {
                          *(*v103 + v106 + 8) = 0;
                          v115 = heap_Calloc(*(*v6 + 8), 1, 2);
                          *(*v103 + v106 + 8) = v115;
                          if (!v115)
                          {
                            goto LABEL_127;
                          }

                          *v115 = *(*v154 + v155);
                          v116 = v155;
                          LODWORD(v155) = v155 + 2;
                          v117 = *(*v154 + v155);
                          LODWORD(v155) = v116 + 4;
                          v118 = v117 + 1;
                          v119 = heap_Calloc(*(*v6 + 8), 1, (v117 + 1));
                          *(*v103 + v106 + 16) = v119;
                          if (!v119)
                          {
                            log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
                            v143 = 10;
                            goto LABEL_138;
                          }

                          v153 = v118;
                          if ((ssftriff_reader_ReadStringZ(v7, *v154, HIDWORD(v155), v155, v119, &v153) & 0x80000000) != 0 || v153 != v118)
                          {
                            v143 = 0;
LABEL_138:
                            v21 = FEDATA_ERROR(v143);
                            v17 = v152;
                            if ((v21 & 0x80000000) == 0)
                            {
                              goto LABEL_100;
                            }

                            goto LABEL_139;
                          }

                          LODWORD(v155) = v155 + v118;
                        }
                      }

                      v106 += 24;
                    }
                  }

                  v102 = v147 + 1;
                  v101 = *(v18 + 16);
                  if (v147 + 1 >= *(v101 + 48))
                  {
                    goto LABEL_93;
                  }
                }
              }
            }

LABEL_127:
            v141 = *(*v6 + 32);
            v142 = v6[23];
            v47 = 0;
LABEL_128:
            log_OutPublic(v141, v142, 24048, v47);
LABEL_129:
            v21 = FEDATA_ERROR(10);
            v32 = 1;
            goto LABEL_104;
          }
        }

LABEL_131:
        log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
        v21 = FEDATA_ERROR(10);
      }

LABEL_104:
      v17 = v152;
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_96;
      }

LABEL_97:
      if (v32)
      {
        ssftriff_reader_CloseChunk(v7);
      }

      if ((v21 & 0x80000000) != 0)
      {
LABEL_139:
        *(*(*(a4 + 32) + 8) + 8 * v16) = 0;
        log_OutPublic(*(*v6 + 32), v6[23], 24044, 0);
        goto LABEL_142;
      }

LABEL_100:
      log_OutText(*(*v6 + 32), v6[23], 4, 0, "loaded data block %d", v16);
      v16 = v16 + 1;
      if (v16 >= *v17)
      {
        return v21;
      }
    }
  }

  return 0;
}

uint64_t readDataBlockFromFile_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v52 = 0;
  inited = InitRsrcFunction(a1, a2, &v52);
  v5 = inited;
  if ((inited & 0x80000000) == 0)
  {
    if (v3)
    {
      v6 = *(v3 + 1);
      if (v6)
      {
        v7 = *v3;
        if (*v3)
        {
          v51 = inited;
          v8 = 0;
          v50 = v3;
          while (1)
          {
            v9 = *(*(v3 + 1) + 8 * v8);
            if (v9)
            {
              v11 = (v9 + 32);
              v10 = *(v9 + 32);
              if (v10)
              {
                v51 = ssftriff_reader_ReleaseChunkData(v10);
                if ((v51 & 0x80000000) != 0)
                {
                  return v51;
                }

                *v11 = 0;
                *(v9 + 40) = 0;
              }

              v12 = v52;
              v14 = *(v9 + 8);
              v13 = *(v9 + 16);
              v15 = *(v9 + 24);
              if (v14)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x2D) != 0)
                {
                  heap_Free(*(v52 + 8), *v14);
                  *v14 = 0;
                  v17 = *(v14 + 48);
                  if (v17)
                  {
                    if (*(v14 + 8))
                    {
                      v18 = 0;
                      v19 = 0;
                      do
                      {
                        v20 = *(v14 + 48) + v18;
                        v21 = *(v20 + 8);
                        if (v21)
                        {
                          FEData_freeEntry(v12, v21, 1);
                          heap_Free(*(v12 + 8), *(v20 + 8));
                          *(v20 + 8) = 0;
                        }

                        v22 = *(v20 + 16);
                        if (v22)
                        {
                          FEData_freeEntry(v12, v22, 1);
                          heap_Free(*(v12 + 8), *(v20 + 16));
                          *(v20 + 16) = 0;
                        }

                        ++v19;
                        v18 += 32;
                      }

                      while (v19 < *(v14 + 8));
                      v17 = *(v14 + 48);
                      v3 = v50;
                    }

                    heap_Free(*(v12 + 8), v17);
                    *(v14 + 48) = 0;
                  }

                  v23 = *(v14 + 64);
                  if (v23)
                  {
                    heap_Free(*(v12 + 8), v23);
                    *(v14 + 64) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 8));
                  *(v9 + 8) = 0;
                }
              }

              if (v13)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x36) != 0)
                {
                  if (*v13)
                  {
                    heap_Free(*(v12 + 8), *v13);
                    *v13 = 0;
                  }

                  v25 = *(v13 + 56);
                  if (v25)
                  {
                    if (*(v13 + 50))
                    {
                      v26 = 0;
                      do
                      {
                        heap_Free(*(v12 + 8), *(*(v13 + 56) + 8 * v26));
                        *(*(v13 + 56) + 8 * v26++) = 0;
                      }

                      while (v26 < *(v13 + 50));
                      v25 = *(v13 + 56);
                    }

                    heap_Free(*(v12 + 8), v25);
                    *(v13 + 56) = 0;
                  }

                  if (*(v13 + 16))
                  {
                    if (*(v13 + 24))
                    {
                      v27 = 0;
                      v28 = 0;
                      do
                      {
                        v29 = *(v13 + 16) + v27;
                        heap_Free(*(v12 + 8), *(v29 + 48));
                        *(v29 + 48) = 0;
                        v30 = *(v29 + 16);
                        if (v30)
                        {
                          heap_Free(*(v12 + 8), v30);
                          *(v29 + 16) = 0;
                        }

                        ++v28;
                        v27 += 72;
                      }

                      while (v28 < *(v13 + 24));
                    }

                    v31 = *(v13 + 40);
                    v3 = v50;
                    if (v31)
                    {
                      v32 = *(v13 + 48);
                      if (v32)
                      {
                        for (i = 0; i < v32; ++i)
                        {
                          v34 = *(v13 + 40) + 16 * i;
                          v35 = *v34;
                          if (*v34)
                          {
                            if (*(v34 + 8))
                            {
                              v36 = 0;
                              v37 = 0;
                              do
                              {
                                heap_Free(*(v12 + 8), *(v35 + v36));
                                v38 = (*v34 + v36);
                                *v38 = 0;
                                heap_Free(*(v12 + 8), v38[1]);
                                v39 = *v34 + v36;
                                *(v39 + 8) = 0;
                                heap_Free(*(v12 + 8), *(v39 + 16));
                                v35 = *v34;
                                *(*v34 + v36 + 16) = 0;
                                ++v37;
                                v36 += 24;
                              }

                              while (v37 < *(v34 + 8));
                            }

                            heap_Free(*(v12 + 8), v35);
                            *v34 = 0;
                            v32 = *(v13 + 48);
                          }
                        }

                        v31 = *(v13 + 40);
                        v3 = v50;
                      }

                      heap_Free(*(v12 + 8), v31);
                      *(v13 + 40) = 0;
                    }

                    heap_Free(*(v12 + 8), *(v13 + 16));
                    *(v13 + 16) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 16));
                  *(v9 + 16) = 0;
                }
              }

              if (v15)
              {
                v40 = *(v15 + 8);
                if (v40)
                {
                  v41 = *(v15 + 16);
                  if (v41)
                  {
                    for (j = 0; j < v41; ++j)
                    {
                      v43 = *(v15 + 8);
                      v44 = *(v43 + 8 * j);
                      if (v44)
                      {
                        if (*v44)
                        {
                          heap_Free(*(v12 + 8), *v44);
                          v43 = *(v15 + 8);
                          **(v43 + 8 * j) = 0;
                          v44 = *(v43 + 8 * j);
                        }

                        v45 = *(v44 + 16);
                        if (v45)
                        {
                          if (*(v44 + 12))
                          {
                            v46 = 0;
                            do
                            {
                              v47 = *(*(v44 + 16) + 8 * v46);
                              if (v47)
                              {
                                heap_Free(*(v12 + 8), v47);
                                *(*(*(*(v15 + 8) + 8 * j) + 16) + 8 * v46) = 0;
                                v43 = *(v15 + 8);
                              }

                              ++v46;
                              v44 = *(v43 + 8 * j);
                            }

                            while (v46 < *(v44 + 12));
                            v45 = *(v44 + 16);
                          }

                          heap_Free(*(v12 + 8), v45);
                          v48 = *(v15 + 8);
                          *(*(v48 + 8 * j) + 16) = 0;
                          v44 = *(v48 + 8 * j);
                        }

                        *(v44 + 12) = 0;
                        heap_Free(*(v12 + 8), v44);
                        *(*(v15 + 8) + 8 * j) = 0;
                        v41 = *(v15 + 16);
                      }
                    }

                    v40 = *(v15 + 8);
                  }

                  heap_Free(*(v12 + 8), v40);
                  *(v15 + 8) = 0;
                }

                *(v15 + 16) = 0;
                heap_Free(*(v12 + 8), v15);
              }

              if (*v11)
              {
                ssftriff_reader_ReleaseChunkData(*v11);
                *v11 = 0;
                *(v9 + 40) = 0;
              }

              heap_Free(*(v12 + 8), v9);
              v7 = *v3;
            }

            if (++v8 >= v7)
            {
              v6 = *(v3 + 1);
              v5 = v51;
              break;
            }
          }
        }

        heap_Free(*(v52 + 8), v6);
        heap_Free(*(v52 + 8), v3);
      }
    }
  }

  return v5;
}

uint64_t partialMatchFoundInBasicToken_NNTN(uint64_t result, __int16 *a2)
{
  v14 = 0;
  if (result)
  {
    v2 = result;
    v3 = *(*(result + 264) + 16);
    for (i = *(v3 + 80); i < *(v3 + 88); ++i)
    {
      __s1 = 0;
      v6 = LDOTreeNode_ComputeAbsoluteFrom(*i, &v14 + 1);
      if ((LH_ERROR_to_VERROR(v6) & 0x80000000) != 0)
      {
        break;
      }

      v7 = LDOTreeNode_ComputeAbsoluteTo(*i, &v14);
      if ((LH_ERROR_to_VERROR(v7) & 0x80000000) != 0)
      {
        break;
      }

      Type = LDOObject_GetType(*i, &__s1);
      if ((LH_ERROR_to_VERROR(Type) & 0x80000000) != 0)
      {
        break;
      }

      v9 = __s1;
      if (!strcmp(__s1, "TOKEN_ALPHA") || !strcmp(v9, "TOKEN_DIGIT") || !strcmp(v9, "TOKEN_PUNCT") || !strcmp(v9, "TOKEN_WSPACE"))
      {
        v10 = *a2;
        if (__PAIR64__(v14, SWORD2(v14)) != __PAIR64__(a2[1], v10))
        {
          if (SWORD2(v14) >= v10)
          {
            LOWORD(v12) = a2[1];
          }

          else
          {
            v11 = v14;
            v12 = a2[1];
            if (v10 < v14)
            {
              goto LABEL_20;
            }
          }

          if (SWORD2(v14) < v12)
          {
            v12 = v12;
            v11 = v14;
            if (v12 < v14)
            {
LABEL_20:
              log_OutText(*(*v2 + 32), v2[23], 5, 0, "Regex match %d,%d bisects basic token %d,%d", v10, v12, HIDWORD(v14), v11);
              return 1;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t tokenizer_apply_regex_NNTN(uint64_t *a1, uint64_t a2, size_t **a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 44);
  v22 = 0;
  v7 = nuance_pcre_exec(a1[17], a1[18], *(a2 + 32), *a2, a1[38], *(a2 + 42), v6, *(a2 + 64), v23, 100);
  v8 = v24;
  if (v24 > *(a2 + 46))
  {
    goto LABEL_9;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v9 = nuance_pcre_ErrorToLhError(v7);
    if (v9 >> 20 == 2213)
    {
      v10 = v9;
      if ((v9 & 0x1FFF) == 0xA)
      {
        v11 = 11002;
        goto LABEL_23;
      }

      if ((v9 & 0x1FFF) != 0x14)
      {
        v11 = 11027;
LABEL_23:
        log_OutPublic(*(*a1 + 32), a1[23], v11, "%s%x%s%s", "lhError", v9, " token:", *(a2 + 24));
        return v10;
      }

      goto LABEL_9;
    }

    v8 = v24;
  }

  v12 = v23[0];
  v13 = *(a2 + 16);
  v14 = *(v13 + 8);
  *v14 = v23[0];
  v14[1] = v8;
  if (!(v12 | v8))
  {
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  if (*(v13 + 44) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s already validated", *(a2 + 24));
  }

  else if (partialMatchFoundInBasicToken_NNTN(a1, v14) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s invalidated.", *(a2 + 24));
    goto LABEL_9;
  }

  *(**(a2 + 16) + 96) = *(a2 + 56);
  v20 = sortExpansionNNTN(a1, a2);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  v15 = 0;
  *(a2 + 72) = 1;
LABEL_10:
  v16 = LDOTreeNode_ComputeAbsoluteTo(**a3, &v22);
  v17 = LH_ERROR_to_VERROR(v16);
  v10 = v17;
  if ((v15 & 1) == 0 && (v17 & 0x80000000) == 0)
  {
    do
    {
      if (v22 >= *(*(*(a2 + 16) + 8) + 2))
      {
        break;
      }

      v18 = (*a3)++;
      v19 = LDOTreeNode_ComputeAbsoluteTo(v18[1], &v22);
      v10 = LH_ERROR_to_VERROR(v19);
    }

    while ((v10 & 0x80000000) == 0);
  }

  return v10;
}

uint64_t tokenizer_NNTN_ObjOpen(uint64_t *a1)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen Begin");
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
        v7 = heap_Calloc(*(v5 + 8), 1, 64);
        *(*v3 + 16) = v7;
        v5 = *a1;
        if (v7)
        {
          v8 = heap_Calloc(*(v5 + 8), 1, 4);
          *(*(*v3 + 16) + 8) = v8;
          if (v8)
          {
            *v8 = 0;
            v9 = heap_Calloc(*(*a1 + 8), 1, 112);
            v10 = *v3;
            v11 = *(*v3 + 16);
            *v11 = v9;
            if (v9)
            {
              *(v9 + 96) = 0;
              *(v11 + 40) = 0;
              *(v11 + 48) = 0;
              *(v11 + 16) = 0;
              *(v11 + 24) = 0;
              v12 = *v10;
              *v12 |= 4uLL;
              v12[3] = v11;
              v19 = 0;
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : InitCheckFunctions Begin");
              Map = FEFunctionMap_GetMap(a1, &v19);
              if ((Map & 0x80000000) != 0)
              {
                v17 = Map;
              }

              else
              {
                v14 = &off_1F42D2A88;
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
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : InitCheckFunctions End (%x)", v17);
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
    v17 = NNTNERROR(10);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_19:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen End (%x)", v17);
      return v17;
    }

LABEL_18:
    tokenizer_loc_ObjClose(a1);
    goto LABEL_19;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

  return NNTNERROR(10);
}

uint64_t tokenizer_loc_ObjClose(void *a1)
{
  v2 = a1[21];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : loc ObjClose Begin");
  v3 = *v2;
  if (*v2)
  {
    v4 = v3[2];
    if (v4)
    {
      if (v4[1])
      {
        heap_Free(*(*a1 + 8), v4[1]);
        v4 = *(*v2 + 16);
        v4[1] = 0;
      }

      if (*v4)
      {
        heap_Free(*(*a1 + 8), *v4);
        v4 = *(*v2 + 16);
        *v4 = 0;
      }

      heap_Free(*(*a1 + 8), v4);
      v3 = *v2;
      *(*v2 + 16) = 0;
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
  return log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : loc ObjClose End (%x)", 0);
}

uint64_t tokenizer_NNTN_ObjClose(uint64_t *a1)
{
  if (a1[21])
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjClose Begin");
    tokenizer_loc_ObjClose(a1);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen End (%x)", 0);
    return 0;
  }

  else
  {

    return NNTNERROR(8);
  }
}

uint64_t fe_nnws_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2588942337;
  }

  result = 0;
  *a2 = &IFeNNWS;
  return result;
}

uint64_t fe_nnws_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2588942343;
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

uint64_t fe_nnws_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v5 = 2588942343;
  v29 = 0;
  v30 = 0;
  memset(v39, 0, sizeof(v39));
  if (a5)
  {
    v34 = 0;
    v32 = 0uLL;
    v33 = 0uLL;
    v31 = 0;
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a1, a2, &v37);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = InitRsrcFunction(a3, a4, &v38);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v12 = heap_Calloc(*(v38 + 8), 1, 208);
      if (!v12)
      {
        log_OutPublic(*(v38 + 32), "FE_NNWS", 75000, 0);
        v5 = 2588942346;
LABEL_25:
        fe_nnws_ObjClose(*a5, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
        return v5;
      }

      v13 = v12;
      Object = objc_GetObject(*(v38 + 48), "LINGDB", &v36);
      if ((Object & 0x80000000) != 0 || (*(v13 + 48) = *(v36 + 8), Object = objc_GetObject(*(v38 + 48), "FE_DCTLKP", &v35), (Object & 0x80000000) != 0) || (v15 = v35, *(v13 + 56) = *(v35 + 8), *(v13 + 64) = *(v15 + 16), *v13 = v38, *(v13 + 8) = a3, v16 = v37, *(v13 + 16) = a4, *(v13 + 24) = v16, *(v13 + 32) = a1, *(v13 + 40) = a2, *(v13 + 104) = 0, Object = fe_nnws_loadCfg(v13), (Object & 0x80000000) != 0) || (*(v13 + 128) = 0, Object = nn_word_lkp_GetInterface(1u, &v31), (Object & 0x80000000) != 0))
      {
LABEL_24:
        v5 = Object;
        log_OutText(*(*v13 + 32), "FE_NNWS", 2, 0, "fe_nnws ObjOpen Failed!");
        goto LABEL_25;
      }

      *(v13 + 128) = v31;
      *(v13 + 136) = safeh_GetNullHandle();
      *(v13 + 144) = v17;
      *(v13 + 152) = safeh_GetNullHandle();
      *(v13 + 160) = v18;
      *(v13 + 168) = safeh_GetNullHandle();
      *(v13 + 176) = v19;
      v20 = *(v13 + 136);
      v21 = *(*(v13 + 128) + 16);
      v22 = *(v13 + 144);
      v23 = *(v13 + 8);
      v24 = *(v13 + 16);
      if (*(v13 + 200))
      {
        Object = v21(v20, v22, "albert", v23, v24, v13 + 152);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        Object = v21(v20, v22, "char", v23, v24, v13 + 152);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_24;
        }

        v33 = *(v13 + 152);
        *(&v32 + 1) = v31;
        Object = objc_RegisterObject(*(v38 + 48), "NNCHRLKP", &v32);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      if (!*(v13 + 200))
      {
        Object = (*(*(v13 + 128) + 16))(*(v13 + 136), *(v13 + 144), "nnws_wlist", *(v13 + 8), *(v13 + 16), v13 + 168);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      Object = fe_nnws_CreateBrokerString(*v13, v39, "nnws_");
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      v25 = fi_init(a3, a4, a1, a2, &v30, 0, v39, "FINN", 1, 0);
      if ((v25 & 0x80000000) != 0)
      {
        v5 = v25;
        log_OutText(*(*v13 + 32), "FE_NNWS", 5, 0, "create FI model failed");
      }

      else
      {
        *(v13 + 80) = v30;
        v26 = fe_nnws_tagInit(*v13, &v29);
        if ((v26 & 0x80000000) != 0)
        {
          v5 = v26;
          log_OutText(*(*v13 + 32), "FE_NNWS", 5, 0, "create SBME tags failed");
        }

        else
        {
          *(v13 + 120) = v29;
          v5 = fe_nnws_tryLoadingIGTree(*(v13 + 8), *(v13 + 16), *v13, (v13 + 184));
          if ((v5 & 0x80000000) != 0)
          {
            v27 = *(v13 + 184);
            if (v27)
            {
              igtree_Deinit(*v13, v27);
              heap_Free(*(*v13 + 8), *(v13 + 184));
              v5 = 0;
              *(v13 + 184) = 0;
            }

            else
            {
              v5 = 0;
            }
          }

          *a5 = v13;
          *(a5 + 8) = 62346;
        }
      }
    }
  }

  return v5;
}

uint64_t fe_nnws_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62346, 208);
  if ((v3 & 0x80000000) != 0)
  {
    return 2588942344;
  }

  v4 = v3;
  if (a1)
  {
    if (a1[6])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v5 = a1[16];
    if (v5)
    {
      v4 = (*(v5 + 24))(a1[19], a1[20]);
      v6 = (*(a1[16] + 24))(a1[21], a1[22]);
      if ((v4 & 0x80000000) == 0 && (v6 & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNCHRLKP");
      }
    }

    v7 = a1[14];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
      a1[14] = 0;
    }

    v8 = a1[10];
    if (v8)
    {
      v4 = fi_deinit(*a1, a1[3], v8);
    }

    if (a1[15])
    {
      for (i = 0; i != 32; i += 8)
      {
        heap_Free(*(*a1 + 8), *(a1[15] + i));
        *(a1[15] + i) = 0;
      }

      heap_Free(*(*a1 + 8), a1[15]);
      a1[15] = 0;
    }

    v10 = a1[23];
    if (v10)
    {
      igtree_Deinit(*a1, v10);
      heap_Free(*(*a1 + 8), a1[23]);
      a1[23] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_nnws_ObjReopen(void *a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v4 = 2588942342;
  v23 = 0;
  memset(v28, 0, sizeof(v28));
  if ((safeh_HandleCheck(a1, a2, 62346, 208) & 0x80000000) != 0)
  {
    return 2588942344;
  }

  if (a1)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v5 = a1[16];
    if (v5)
    {
      v6 = (*(v5 + 24))(a1[19], a1[20]);
      v7 = (*(a1[16] + 24))(a1[21], a1[22]);
      if ((v6 & 0x80000000) == 0 && (v7 & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNCHRLKP");
      }
    }

    v8 = a1[10];
    if (v8)
    {
      Cfg = fi_deinit(*a1, a1[3], v8);
      if ((Cfg & 0x80000000) != 0)
      {
LABEL_29:
        v4 = Cfg;
LABEL_30:
        log_OutText(*(*a1 + 32), "FE_NNWS", 2, 0, "fe_nnws ObjReopen Failed!");
        fe_nnws_ObjClose(a1, a2);
        return v4;
      }

      a1[10] = 0;
    }

    v10 = a1[14];
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
      a1[14] = 0;
    }

    v12 = a1 + 23;
    v11 = a1[23];
    if (v11)
    {
      igtree_Deinit(*a1, v11);
      heap_Free(*(*a1 + 8), a1[23]);
      a1[23] = 0;
    }

    a1[13] = 0;
    Cfg = fe_nnws_loadCfg(a1);
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    Cfg = nn_word_lkp_GetInterface(1u, &v27);
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    a1[16] = v27;
    a1[17] = safeh_GetNullHandle();
    a1[18] = v13;
    a1[19] = safeh_GetNullHandle();
    a1[20] = v14;
    a1[21] = safeh_GetNullHandle();
    a1[22] = v15;
    v16 = a1[17];
    v17 = *(a1[16] + 16);
    v18 = a1[18];
    v19 = a1[1];
    v20 = a1[2];
    if (*(a1 + 50))
    {
      Cfg = v17(v16, v18, "albert", v19, v20, a1 + 19);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      Cfg = v17(v16, v18, "char", v19, v20, a1 + 19);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v25 = *(a1 + 19);
      *(&v24 + 1) = v27;
      Cfg = objc_RegisterObject(*(*a1 + 48), "NNCHRLKP", &v24);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    if (!*(a1 + 50))
    {
      Cfg = (*(a1[16] + 16))(a1[17], a1[18], "nnws_wlist", a1[1], a1[2], a1 + 21);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    Cfg = fe_nnws_CreateBrokerString(*a1, v28, "nnws_");
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    v21 = fi_init(a1[1], a1[2], a1[4], a1[5], &v23, 0, v28, "FINN", 1, 0);
    if ((v21 & 0x80000000) != 0)
    {
      v4 = v21;
      log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "re-create FI model failed");
      goto LABEL_30;
    }

    a1[10] = v23;
    v4 = fe_nnws_tryLoadingIGTree(a1[1], a1[2], *a1, a1 + 23);
    if ((v4 & 0x80000000) != 0)
    {
      if (*v12)
      {
        igtree_Deinit(*a1, *v12);
        heap_Free(*(*a1 + 8), a1[23]);
        v4 = 0;
        a1[23] = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t fe_nnws_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62346, 208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2588942344;
  }
}

uint64_t fe_nnws_Process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v139 = 0;
  v134 = 0;
  __s = 0;
  v5 = 2588942346;
  v133 = 0;
  v132 = 0;
  v130 = 0;
  v131 = 0;
  v129 = 0;
  *a5 = 1;
  if (!a1)
  {
    return 2588942343;
  }

  v138 = 0;
  v137 = 0;
  v136 = 0;
  v9 = log_GetLogLevel(*(*a1 + 32)) > 4;
  v10 = (*(a1[6] + 104))(a3, a4, 1, 0, &v139);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = v10;
LABEL_117:
    v12 = 0;
    goto LABEL_118;
  }

  v11 = (*(a1[6] + 184))(a3, a4, v139, 0, &v137);
  v12 = 0;
  if ((v11 & 0x80000000) != 0 || v137 != 1)
  {
    goto LABEL_118;
  }

  v11 = (*(a1[6] + 176))(a3, a4, v139, 0, &__s, &v138 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  if (HIWORD(v138) < 2u)
  {
    return v11;
  }

  v13 = strlen(__s);
  v14 = heap_Alloc(*(*a1 + 8), v13 + 1);
  v134 = v14;
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
    v12 = 0;
LABEL_214:
    v11 = 2588942346;
    goto LABEL_118;
  }

  v15 = v14;
  v16 = strcpy(v14, __s);
  v17 = strlen(v16);
  v18 = Utf8_LengthInUtf8chars(v15, v17);
  v19 = heap_Calloc(*(*a1 + 8), v18, 56);
  v131 = v19;
  if (!v19)
  {
    goto LABEL_213;
  }

  v20 = v19;
  v21 = a1[6];
  v123 = *a1;
  v22 = v139;
  v148 = 0;
  v147 = 0;
  v145 = 0;
  v146 = 0;
  v143 = 0;
  v144 = 0;
  v142 = 0;
  UTF8Char = (*(v21 + 176))(a3, a4, v139, 1, &v142, &v146 + 2);
  if ((UTF8Char & 0x80000000) != 0 || (UTF8Char = (*(v21 + 104))(a3, a4, 3, v22, &v146), (UTF8Char & 0x80000000) != 0))
  {
    LODWORD(v29) = 0;
LABEL_145:
    v5 = UTF8Char;
    goto LABEL_146;
  }

  v24 = v146;
  v113 = v22;
  if (v146)
  {
    while (1)
    {
      v141 = 0;
      v140 = 0;
      v25 = (*(v21 + 168))(a3, a4, v24, 0, 1, &v141, &v140);
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      if (v141 == 6)
      {
        break;
      }

      v25 = (*(v21 + 120))(a3, a4, v146, &v146);
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      v24 = v146;
      if (!v146)
      {
        goto LABEL_16;
      }
    }

    v25 = (*(v21 + 168))(a3, a4, v146, 1, 1, &v143 + 4, &v140);
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_257;
    }

    v25 = (*(v21 + 168))(a3, a4, v146, 2, 1, &v143, &v140);
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_257;
    }

    v103 = (*(v21 + 184))(a3, a4, v146, 8, &v145 + 2);
    if ((v103 & 0x80000000) != 0)
    {
      goto LABEL_227;
    }

    if (HIWORD(v145) == 1)
    {
      v103 = (*(v21 + 168))(a3, a4, v146, 8, 1, &v148, &v140);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_227;
      }
    }

    else
    {
      v148 = v143 - HIDWORD(v143);
    }

    v103 = (*(v21 + 176))(a3, a4, v146, 4, &v147, &v140);
    if ((v103 & 0x80000000) != 0)
    {
LABEL_227:
      v5 = v103;
      LODWORD(v29) = 0;
      goto LABEL_146;
    }

    v104 = strcmp(v147, "_PR_");
    v26 = 0;
    v114 = v104 == 0;
  }

  else
  {
LABEL_16:
    v114 = 0;
    v26 = 1;
  }

  v27 = HIWORD(v146);
  v119 = v20;
  if (!HIWORD(v146))
  {
    LODWORD(v29) = 0;
    goto LABEL_148;
  }

  v121 = v26;
  v28 = 0;
  v126 = 0;
  v127 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 40;
  v33 = 1;
  v118 = v18;
  v128 = v21;
  do
  {
    v34 = v142;
    v35 = (v142 + 32 * v28);
    v36 = *v35;
    if (*v35 != 1)
    {
      if (v29 && (v50 = &v20[7 * (v29 - 1)], *(v50 + 36) = 0x100000001, v28 >= 2) && v36 == 99)
      {
        if (*(v35 - 8) == 1 && v35[3] == *(v35 - 5))
        {
          *(v50 + 12) = 1;
        }
      }

      else if (v36 == 0x4000)
      {
        v30 = v35[3];
      }

      goto LABEL_113;
    }

    v30 += v31;
    v37 = v35[3];
    v124 = v30;
    v116 = v32;
    v117 = v28;
    v115 = v33;
    if (v37 > v30 && v35[1] > v30)
    {
      v38 = &v20[7 * v29];
      *(v38 + 36) = 1;
      *(v38 + 2) = v31;
      *(v38 + 3) = v31;
      *(v38 + 4) = v37 + ~v30;
      v39 = v31;
      v40 = heap_Alloc(*(v123 + 8), 4);
      *v38 = v40;
      if (!v40)
      {
LABEL_223:
        log_OutPublic(*(v123 + 32), "FE_NNWS", 75000, 0);
        goto LABEL_146;
      }

      *v40 = 4673093;
      v41 = *(v38 + 4);
      v42 = (v41 + v39);
      v126 += v41;
      v127 = v42;
      v29 = (v29 + 1);
      v27 = HIWORD(v146);
      v34 = v142;
      v20 = v119;
      v32 = v116;
      v28 = v117;
      v30 = v124;
      v31 = v42;
      v21 = v128;
      v33 = v115;
    }

    v43 = v34 + 32 * v28;
    v44 = 0;
    if (v28 + 1 >= v27)
    {
LABEL_30:
      v48 = *(v34 + 16) + *(v34 + 12);
      v49 = v44 + *(v43 + 12);
    }

    else
    {
      v45 = (v34 + v32);
      v46 = v33;
      while (*(v45 - 2) != 1)
      {
        v47 = *v45;
        v45 += 8;
        if (v47 == 1)
        {
          ++v44;
        }

        if (v27 == ++v46)
        {
          goto LABEL_30;
        }
      }

      v48 = *(v34 + 32 * v46 + 12);
      v49 = v44 + *(v43 + 12);
    }

    v120 = v48 - v49;
    if (v29 >= v18)
    {
      goto LABEL_111;
    }

    v125 = 0;
    v122 = 1;
    while (1)
    {
      v51 = v31;
      if (strlen(v15) <= v126 || v125 >= v120)
      {
        break;
      }

      if (v146 && v121 == 1)
      {
        if (v51 < v143)
        {
          v121 = 1;
          goto LABEL_63;
        }

        LODWORD(v52) = v29;
        do
        {
          v25 = (*(v128 + 120))(a3, a4);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          if (!v146)
          {
            v121 = 1;
            goto LABEL_63;
          }

          v141 = 0;
          v140 = 0;
          v25 = (*(v128 + 168))(a3, a4, v146, 0, 1, &v141, &v140);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }
        }

        while (v141 != 6);
        v25 = (*(v128 + 168))(a3, a4, v146, 1, 1, &v143 + 4, &v140);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v25 = (*(v128 + 168))(a3, a4, v146, 2, 1, &v143, &v140);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v53 = (*(v128 + 184))(a3, a4, v146, 8, &v145 + 2);
        if ((v53 & 0x80000000) != 0)
        {
LABEL_235:
          v5 = v53;
LABEL_222:
          LODWORD(v29) = v52;
LABEL_146:
          v132 = v29;
          v12 = 1;
          v11 = v5;
LABEL_118:
          v73 = v134;
          if (!v134)
          {
            goto LABEL_120;
          }

LABEL_119:
          heap_Free(*(*a1 + 8), v73);
          goto LABEL_120;
        }

        if (HIWORD(v145) == 1)
        {
          v53 = (*(v128 + 168))(a3, a4, v146, 8, 1, &v148, &v140);
          v54 = v128;
          if ((v53 & 0x80000000) != 0)
          {
            goto LABEL_235;
          }
        }

        else
        {
          v148 = v143 - HIDWORD(v143);
          v54 = v128;
        }

        v53 = (*(v54 + 176))(a3, a4, v146, 4, &v147, &v140);
        if ((v53 & 0x80000000) != 0)
        {
          goto LABEL_235;
        }

        v121 = 0;
        v114 = strcmp(v147, "_PR_") == 0;
      }

LABEL_63:
      UTF8Char = utf8_getUTF8Char(v15, v127, __src);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_145;
      }

      v52 = v29;
      if (utf8_IsChineseLetter(__src))
      {
        v55 = 1;
        v56 = "ENG";
        v30 = v124;
        v31 = v51;
LABEL_68:
        v21 = v128;
        goto LABEL_69;
      }

      v31 = v51;
      v55 = 0;
      v56 = "NUM";
      if (__src[0] - 48 < 0xA)
      {
        v30 = v124;
        goto LABEL_68;
      }

      v30 = v124;
      v21 = v128;
      if ((__src[0] - 35 > 0x3C || ((1 << (__src[0] - 35)) & 0x1800000004000503) == 0) && __src[0] != 124)
      {
        v55 = (__src[0] & 0xDFu) - 65 >= 0x1A && (__src[0] - 38 > 0x1A || ((1 << (__src[0] - 38)) & 0x4000003) == 0);
        v56 = "ENG";
      }

LABEL_69:
      if (!v146 || v127 != HIDWORD(v143))
      {
        if (v55)
        {
          if (v122)
          {
            v122 = 1;
            v29 = v52;
          }

          else
          {
            v29 = v52;
            v68 = &v20[7 * v52];
            if (**v68 == 124)
            {
              v122 = 0;
            }

            else
            {
              *(v68 + 4) = v127 - v31;
              v29 = (v52 + 1);
              v122 = 1;
              LODWORD(v31) = v127;
            }
          }

          if (__src[0] == 32)
          {
            v31 = (v31 + 1);
            ++v125;
            ++v126;
            v127 = v31;
LABEL_104:
            v18 = v118;
            goto LABEL_105;
          }

          v69 = &v20[7 * v29];
          *(v69 + 9) = (v69[4] & 0xFFFFFFFE) == 2;
          *(v69 + 10) = 0;
          *(v69 + 2) = v31;
          *(v69 + 3) = v31;
          v70 = v31;
          LODWORD(v52) = v29;
          v60 = utf8_determineUTF8CharLength(v15[v31]);
          *(v69 + 4) = v60;
          v71 = strlen(__src);
          v72 = heap_Calloc(*(v123 + 8), 1, v71 + 1);
          *v69 = v72;
          if (!v72)
          {
LABEL_228:
            log_OutPublic(*(v123 + 32), "FE_NNWS", 75000, 0);
            goto LABEL_222;
          }

          strcpy(v72, __src);
          v61 = *(v69 + 4);
          v58 = (v61 + v70);
          v52 = (v52 + 1);
          v127 = v58;
LABEL_102:
          v20 = v119;
          v30 = v124;
          v31 = v58;
          v21 = v128;
        }

        else
        {
          if (v122)
          {
            v57 = &v20[7 * v52];
            *(v57 + 2) = v31;
            *(v57 + 3) = v31;
            *(v57 + 4) = 1;
            v58 = v31;
            v59 = heap_Calloc(*(v123 + 8), 1, 4);
            *v57 = v59;
            if (!v59)
            {
              goto LABEL_228;
            }

            v122 = 0;
            *v59 = *v56;
            v127 = v58 + 1;
            v60 = 1;
            v61 = 1;
            goto LABEL_102;
          }

          v122 = 0;
          ++v127;
          v60 = 1;
          v61 = 1;
        }

        v125 += v60;
        v126 += v61;
        v29 = v52;
        goto LABEL_104;
      }

      if (v122)
      {
        LODWORD(v29) = v52;
      }

      else
      {
        LODWORD(v20[7 * v52 + 2]) = v127 - v31;
        LODWORD(v29) = v52 + 1;
        LODWORD(v31) = v127;
      }

      v62 = &v20[7 * v29];
      v18 = v118;
      if (v114)
      {
        *(v62 + 8) = 5;
        if (v29)
        {
          *(&v20[7 * (v29 - 1) + 4] + 4) = 0x100000001;
        }
      }

      else
      {
        *(v62 + 8) = 3;
      }

      v63 = &v20[7 * v29];
      *(v63 + 2) = v31;
      *(v63 + 3) = v31;
      *(v63 + 5) = v148;
      *(v63 + 4) = v143 - v127;
      *(v63 + 36) = 1;
      v64 = v31;
      v65 = heap_Calloc(*(v123 + 8), 1, 4);
      *v63 = v65;
      if (!v65)
      {
        goto LABEL_223;
      }

      *v65 = 5068110;
      v66 = *(v63 + 4);
      v126 += v66;
      v30 = v124;
      v125 += v66;
      v67 = (v66 + v64);
      v29 = (v29 + 1);
      v121 = 1;
      v122 = 1;
      v127 = v67;
      v20 = v119;
      v31 = v67;
      v21 = v128;
LABEL_105:
      if (v29 >= v18)
      {
        goto LABEL_109;
      }
    }

    v30 = v124;
    v31 = v51;
    v21 = v128;
LABEL_109:
    if (!v122)
    {
      LODWORD(v20[7 * v29 + 2]) = v127 - v31;
      v29 = (v29 + 1);
      v31 = v127;
    }

LABEL_111:
    v32 = v116;
    v28 = v117;
    v33 = v115;
    if (v29)
    {
      *(&v20[7 * (v29 - 1) + 4] + 4) = 0x100000001;
    }

LABEL_113:
    ++v28;
    v27 = HIWORD(v146);
    ++v33;
    v32 += 32;
  }

  while (v28 < HIWORD(v146));
LABEL_148:
  LODWORD(v52) = v29;
  v132 = v29;
  v11 = (*(v21 + 104))(a3, a4, 3, v113, &v145);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_221:
    v5 = v11;
    goto LABEL_222;
  }

  v81 = v145;
  if (v145)
  {
    while (1)
    {
      v141 = 0;
      v140 = 0;
      v25 = (*(v21 + 168))(a3, a4, v81, 0, 1, &v141, &v140);
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      if (v141 == 5)
      {
        v25 = (*(v21 + 168))(a3, a4, v145, 1, 1, &v143 + 4, &v140);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v25 = (*(v21 + 168))(a3, a4, v145, 2, 1, &v143, &v140);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v11 = (*(v21 + 176))(a3, a4, v145, 4, &v144, &v140);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_221;
        }

        if (!strcmp(v144, "phon"))
        {
          break;
        }
      }

      v11 = (*(v21 + 120))(a3, a4, v145, &v145);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_258;
      }

      v81 = v145;
      if (!v145)
      {
        goto LABEL_158;
      }
    }

    v82 = 1;
    if (!v52)
    {
      goto LABEL_230;
    }
  }

  else
  {
LABEL_158:
    v82 = 0;
    if (!v52)
    {
LABEL_230:
      v105 = 0;
      v132 = 0;
LABEL_231:
      v25 = fe_nnws_writeLDB_v2(a1, a3, a4, v139, v119, v105, __s);
      if ((v25 & 0x80000000) != 0)
      {
LABEL_257:
        v11 = v25;
      }

      else
      {
        v73 = v134;
        v106 = fe_nnws_adjustTokenRecordBND(v119, v105, v134, v139, a3, a4, a1);
        if ((v106 & 0x80000000) != 0)
        {
          goto LABEL_251;
        }

        v107 = strlen(v73);
        v11 = (*(a1[6] + 160))(a3, a4, v139, 0, (v107 + 1), v73, &v138);
        if ((v11 & 0x80000000) == 0)
        {
          log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, v73, 0);
        }
      }

LABEL_258:
      v12 = 1;
      goto LABEL_118;
    }
  }

  v83 = 0;
  while (2)
  {
    if (v82 == 1)
    {
      v84 = &v119[7 * v83];
      v85 = *(v84 + 3);
      v86 = v143;
      if (v85 < HIDWORD(v143))
      {
        v87 = v119;
        goto LABEL_164;
      }

      v87 = v119;
      if (*(v84 + 4) + v85 <= v143)
      {
        v82 = 1;
        *(v84 + 11) = 1;
        goto LABEL_182;
      }
    }

    else
    {
      v87 = v119;
      v85 = HIDWORD(v119[7 * v83 + 1]);
      v86 = v143;
    }

LABEL_164:
    v88 = &v87[7 * v83];
    if (*(v88 + 4) + v85 > v86 && v145 != 0)
    {
      while (1)
      {
        v90 = (*(v21 + 120))(a3, a4);
        v11 = v90;
        if ((v90 & 0x80000000) != 0)
        {
          goto LABEL_258;
        }

        if (!v145)
        {
          goto LABEL_184;
        }

        v141 = 0;
        v140 = 0;
        v25 = (*(v21 + 168))(a3, a4, v145, 0, 1, &v141, &v140);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        if (v141 == 5)
        {
          v25 = (*(v21 + 168))(a3, a4, v145, 1, 1, &v143 + 4, &v140);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          v25 = (*(v21 + 168))(a3, a4, v145, 2, 1, &v143, &v140);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          v11 = (*(v21 + 176))(a3, a4, v145, 4, &v144, &v140);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_221;
          }

          if (!strcmp(v144, "phon"))
          {
            v82 = 1;
            goto LABEL_184;
          }

          v82 = 0;
        }
      }
    }

    *(v88 + 11) = 0;
LABEL_182:
    ++v83;
LABEL_184:
    if (v83 < v52)
    {
      continue;
    }

    break;
  }

  v132 = v52;
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_258;
  }

  v25 = (*(a1[16] + 40))(a1[19], a1[20], &v136);
  if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_257;
  }

  v91 = *(a1 + 24);
  if (v91 != *(a1 + 25) + v136)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
    v11 = 2588942361;
    goto LABEL_258;
  }

  v92 = *(a1 + 50) ? v52 + 2 : v52;
  v93 = heap_Alloc(*(*a1 + 8), 4 * (v91 * v92));
  v130 = v93;
  if (!v93)
  {
LABEL_213:
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
    v12 = 1;
    goto LABEL_214;
  }

  v94 = v93;
  if (*(a1 + 50))
  {
    *v93 = 1120534528;
    v94 = &v93[v136];
  }

  v95 = 0;
  v96 = 0;
  do
  {
    if (*(a1 + 48))
    {
      v97 = (a1[16] + 64);
    }

    else
    {
      v98 = a1[16];
      if (*(a1 + 50))
      {
        v97 = (v98 + 72);
      }

      else
      {
        v97 = (v98 + 56);
      }
    }

    v11 = (*v97)(a1[19], a1[20], v131[v95], v94);
    if ((v11 & 0x1FFF) == 0x14)
    {
      log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "No embedding vector for character %s . Fall back!", v131[v95]);
      if (*(a1 + 48))
      {
        v99 = (a1[16] + 64);
      }

      else
      {
        v100 = a1[16];
        if (*(a1 + 50))
        {
          v99 = (v100 + 72);
        }

        else
        {
          v99 = (v100 + 56);
        }
      }

      v11 = (*v99)(a1[19], a1[20], a1[14], v94);
    }

    v101 = &v94[v136];
    if (*(a1 + 48) || *(a1 + 50))
    {
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_258;
      }
    }

    else
    {
      fe_nnws_dynamic_feat(a1, v131, v132, v96, v101);
    }

    v94 = (v101 + 4 * *(a1 + 25));
    ++v96;
    v102 = v132;
    v95 += 7;
  }

  while (v96 < v132);
  if (*(a1 + 50))
  {
    *v94 = 1120665600;
    v108 = a1[10];
    v109 = (v102 + 2);
  }

  else
  {
    v108 = a1[10];
    v109 = v132;
  }

  v11 = fi_predict(v108, &v130, v109, &v133);
  if ((v11 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "FI Word Segmentation Prediction Failed", 0);
    goto LABEL_258;
  }

  if (*(a1 + 50))
  {
    ++v133;
  }

  if ((paramc_ParamGetInt(*(*a1 + 40), "nnwsAddonEnable", &v129) & 0x80000000) != 0)
  {
    v110 = *(a1 + 49);
  }

  else
  {
    v110 = v129;
    *(a1 + 49) = v129;
  }

  if (v110 < 1 || (v73 = v134, v106 = fe_nnws_addon_lookup(a1, v131, v102, v134, &v133, a1[15], v110), (v106 & 0x80000000) == 0))
  {
    v111 = *a1;
    v119 = v131;
    v112 = a1[15];
    if (*(a1 + 50))
    {
      fe_nnws_adjustBMES_Edge(v111, v102, v131, v9, v112, &v133);
    }

    else
    {
      fe_nnws_adjustBMES(v111, v102, v131, v9, v112, &v133);
    }

    v25 = fe_nnws_IGTreeProcess(a1, v102, a1[15], v119, &v133);
    if ((v25 & 0x80000000) == 0)
    {
      fe_nnws_retag_word_under_phon(&v133, &v131, &v132, a1[15]);
      v25 = fe_nnws_group(*a1, v133, &v131, &v132, &v134);
      if ((v25 & 0x80000000) == 0)
      {
        v105 = v132;
        goto LABEL_231;
      }
    }

    goto LABEL_257;
  }

LABEL_251:
  v11 = v106;
  v12 = 1;
  if (v73)
  {
    goto LABEL_119;
  }

LABEL_120:
  v74 = v131;
  if (v131)
  {
    v75 = v132;
    if (v132)
    {
      v76 = v131;
      do
      {
        if (*v76)
        {
          heap_Free(*(*a1 + 8), *v76);
          *v76 = 0;
        }

        v76 += 7;
        --v75;
      }

      while (v75);
    }

    heap_Free(*(*a1 + 8), v74);
  }

  v77 = v12 ^ 1;
  if (v11 < 0)
  {
    v77 = 1;
  }

  if ((v77 & 1) == 0)
  {
    LODWORD(v147) = 0;
    LODWORD(v144) = 0;
    LODWORD(v142) = 0;
    *__src = 0;
    LOWORD(v148) = 0;
    v11 = (*(a1[6] + 104))(a3, a4, 3, v139, __src);
    if ((v11 & 0x80000000) == 0)
    {
      while (*__src)
      {
        v78 = (*(a1[6] + 168))(a3, a4, *__src, 0, 1, &v147, &v148);
        if ((v78 & 0x80000000) != 0)
        {
          return v78;
        }

        v78 = (*(a1[6] + 168))(a3, a4, *__src, 1, 1, &v144, &v148);
        if ((v78 & 0x80000000) != 0)
        {
          return v78;
        }

        v78 = (*(a1[6] + 168))(a3, a4, *__src, 2, 1, &v142, &v148);
        if ((v78 & 0x80000000) != 0)
        {
          return v78;
        }

        if ((v147 - 7) >= 0xFFFFFFFD)
        {
          v79 = 0;
        }

        else
        {
          v79 = *__src;
        }

        v11 = (*(a1[6] + 120))(a3, a4);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        if (v79)
        {
          v11 = (*(a1[6] + 192))(a3, a4, v79);
        }
      }
    }
  }

  return v11;
}

uint64_t fe_nnws_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62346, 208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2588942344;
  }
}

uint64_t fe_nnws_loadCfg(uint64_t a1)
{
  memset(__c, 0, sizeof(__c));
  *(a1 + 192) = 0;
  if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_static_feat", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
  {
    v2 = **&__c[3];
    v3 = strchr(**&__c[3], __c[0]);
    if (v3)
    {
      *v3 = 0;
      v2 = **&__c[3];
    }

    if (!strcmp(v2, "yes"))
    {
      *(a1 + 192) = 1;
    }
  }

  v4 = 2588943364;
  *&__c[1] = 0;
  if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_null_fea", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
  {
    *(a1 + 112) = 0;
    v5 = **&__c[3];
    v6 = strchr(**&__c[3], __c[0]);
    if (v6)
    {
      *v6 = 0;
      v5 = **&__c[3];
    }

    v7 = strlen(v5);
    v8 = heap_Alloc(*(*a1 + 8), v7 + 1);
    *(a1 + 112) = v8;
    if (v8)
    {
      v9 = v8;
      v10 = strlen(**&__c[3]);
      strncpy(v9, **&__c[3], v10);
      *(*(a1 + 112) + strlen(**&__c[3])) = 0;
      *&__c[1] = 0;
      if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_indim", &__c[3], &__c[1], __c) & 0x80000000) == 0)
      {
        if (*&__c[1])
        {
          *(a1 + 96) = 0;
          *(a1 + 96) = LH_atou(**&__c[3]);
          *&__c[1] = 0;
          if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_ddim", &__c[3], &__c[1], __c) & 0x80000000) == 0)
          {
            if (*&__c[1])
            {
              *(a1 + 100) = 0;
              *(a1 + 100) = LH_atou(**&__c[3]);
              *&__c[1] = 0;
              *(a1 + 196) = 0;
              if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_force_ws", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
              {
                *(a1 + 196) = LH_atou(**&__c[3]);
              }

              *&__c[1] = 0;
              *(a1 + 200) = 0;
              v11 = (*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_albert", &__c[3], &__c[1], __c);
              v4 = 0;
              if ((v11 & 0x80000000) == 0 && *&__c[1])
              {
                v12 = v11;
                v13 = **&__c[3];
                v14 = strchr(**&__c[3], __c[0]);
                if (v14)
                {
                  *v14 = 0;
                  v13 = **&__c[3];
                }

                if (!strcmp(v13, "yes"))
                {
                  *(a1 + 200) = 1;
                }

                return v12;
              }
            }
          }
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
      return 2588942346;
    }
  }

  return v4;
}

uint64_t fe_nnws_CreateBrokerString(uint64_t a1, char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
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
      return brokeraux_ComposeBrokerString(a1, v8, 1, 1, *v7, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t fe_nnws_tagInit(uint64_t a1, uint64_t *a2)
{
  v4 = heap_Calloc(*(a1 + 8), 4, 8);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = heap_Calloc(*(a1 + 8), 2, 1);
      *(v4 + 8 * v5) = v6;
      if (!v6)
      {
        break;
      }

      *v6 = aSbme[v5++];
      if (v5 == 4)
      {
        v7 = 0;
        goto LABEL_12;
      }
    }

    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0);
    for (i = 0; i != 32; i += 8)
    {
      v9 = *(v4 + i);
      if (v9)
      {
        heap_Free(*(a1 + 8), v9);
      }
    }

    v7 = 2588942346;
    heap_Free(*(a1 + 8), v4);
    v4 = 0;
  }

  else
  {
    v7 = 2588942346;
    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0);
  }

LABEL_12:
  *a2 = v4;
  return v7;
}

uint64_t fe_nnws_tryLoadingIGTree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  *v14 = 0;
  *a4 = 0;
  BrokerString = fe_nnws_CreateBrokerString(a3, v15, "nnwsigrules_");
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
      log_OutPublic(*(a3 + 32), "FE_NNWS", 37000, 0);
      v10 = 2588942346;
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

uint64_t fe_nnws_dynamic_feat(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v6 = a4;
  v64 = *MEMORY[0x1E69E9840];
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v57 = 0;
  v58 = 0;
  v60 = 0;
  v59 = 0;
  v10 = *(a2 + 56 * a4);
  result = strcmp(v10, "NUM");
  if (result && (result = strcmp(v10, "ENG"), result))
  {
    v54 = a5;
    v55 = a1;
    v12 = (a2 + 56 * v6 - 56);
    v13 = 8;
    v14 = 1;
    do
    {
      if (v14 < v6)
      {
        v15 = *v12;
        result = strcmp(*v12, "NUM");
        if (result)
        {
          result = strcmp(v15, "ENG");
          if (result)
          {
            *(&v57 + v13) = 1;
          }
        }
      }

      ++v14;
      v13 -= 4;
      v12 -= 7;
    }

    while (v13 != -4);
    v16 = v6 + 1;
    v17 = (a2 + 56 * v6 + 56);
    for (i = 16; i != 28; i += 4)
    {
      if (v16 < a3)
      {
        v19 = *v17;
        result = strcmp(*v17, "NUM");
        if (result)
        {
          result = strcmp(v19, "ENG");
          if (result)
          {
            *(&v57 + i) = 1;
          }
        }
      }

      ++v16;
      v17 += 7;
    }

    v20 = v58;
    if (v58 == 1)
    {
      v22 = v54;
      v21 = v55;
      if (v6)
      {
        v23 = v6 - 1;
        do
        {
          __strcat_chk();
          ++v23;
        }

        while (v6 >= v23);
      }

      result = (*(v55[16] + 56))(v55[21], v55[22], &v61, v56);
      v24 = 0.0;
      if (result >= 0)
      {
        v24 = 1.0;
      }

      *v54 = v24;
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
    }

    else
    {
      v22 = v54;
      v21 = v55;
      *v54 = 0.0;
    }

    v25 = v59;
    if (v59 == 1)
    {
      v26 = v6;
      do
      {
        __strcat_chk();
        ++v26;
      }

      while (v6 + 2 > v26);
      result = (*(v21[16] + 56))(v21[21], v21[22], &v61, v56);
      v27 = 0.0;
      if (result >= 0)
      {
        v27 = 1.0;
      }

      v22[1] = v27;
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
    }

    else
    {
      v22[1] = 0.0;
    }

    v28 = v20 == 1 && HIDWORD(v57) == 1;
    v29 = v28;
    if (v28)
    {
      v30 = v6 - 2;
      if (v6 >= 2)
      {
        do
        {
          __strcat_chk();
          ++v30;
        }

        while (v6 >= v30);
      }

      result = (*(v21[16] + 56))(v21[21], v21[22], &v61, v56);
      v31 = 0.0;
      if (result >= 0)
      {
        v31 = 1.0;
      }

      v22[2] = v31;
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
    }

    else
    {
      v22[2] = 0.0;
    }

    v32 = v20 == 1 && v25 == 1;
    v33 = v32;
    if (v32)
    {
      v34 = v6 - 1;
      if (v6 + 2 > (v6 - 1))
      {
        do
        {
          __strcat_chk();
          ++v34;
        }

        while (v6 + 2 > v34);
      }

      result = (*(v21[16] + 56))(v21[21], v21[22], &v61, v56);
      v35 = 0.0;
      if (result >= 0)
      {
        v35 = 1.0;
      }

      v22[3] = v35;
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
    }

    else
    {
      v22[3] = 0.0;
    }

    v36 = HIDWORD(v59);
    v37 = v25 == 1 && HIDWORD(v59) == 1;
    v38 = v37;
    if (v37)
    {
      v39 = v6;
      do
      {
        __strcat_chk();
        ++v39;
      }

      while (v6 + 3 > v39);
      result = (*(v55[16] + 56))(v55[21], v55[22], &v61, v56);
      v40 = 0.0;
      if (result >= 0)
      {
        v40 = 1.0;
      }

      v22 = v54;
      v54[4] = v40;
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
    }

    else
    {
      v22[4] = 0.0;
    }

    if (v57 == 1)
    {
      v41 = v29;
    }

    else
    {
      v41 = 0;
    }

    if (v41)
    {
      v42 = v6 - 3;
      if (v6 >= 3)
      {
        do
        {
          __strcat_chk();
          ++v42;
        }

        while (v6 >= v42);
      }

      result = (*(v55[16] + 56))(v55[21], v55[22], &v61, v56);
      v43 = 0.0;
      if (result >= 0)
      {
        v43 = 1.0;
      }

      v22[5] = v43;
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
    }

    else
    {
      v22[5] = 0.0;
    }

    if (v25 == 1)
    {
      v44 = v29;
    }

    else
    {
      v44 = 0;
    }

    if (v44)
    {
      v45 = v6 - 2;
      if (v6 + 2 > (v6 - 2))
      {
        do
        {
          __strcat_chk();
          ++v45;
        }

        while (v6 + 2 > v45);
      }

      result = (*(v55[16] + 56))(v55[21], v55[22], &v61, v56);
      v46 = 0.0;
      if (result >= 0)
      {
        v46 = 1.0;
      }

      v22[6] = v46;
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
    }

    else
    {
      v22[6] = 0.0;
    }

    if (v36 == 1)
    {
      v47 = v33;
    }

    else
    {
      v47 = 0;
    }

    if (v47)
    {
      v48 = v6 - 1;
      v49 = v55;
      if (v6 + 3 > (v6 - 1))
      {
        do
        {
          __strcat_chk();
          ++v48;
        }

        while (v6 + 3 > v48);
      }

      result = (*(v55[16] + 56))(v55[21], v55[22], &v61, v56);
      v50 = 0.0;
      if (result >= 0)
      {
        v50 = 1.0;
      }

      v22[7] = v50;
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
    }

    else
    {
      v22[7] = 0.0;
      v49 = v55;
    }

    if (v60 == 1)
    {
      v51 = v38;
    }

    else
    {
      v51 = 0;
    }

    if (v51)
    {
      v52 = v6 + 4;
      do
      {
        __strcat_chk();
        ++v6;
      }

      while (v52 > v6);
      result = (*(v49[16] + 56))(v49[21], v49[22], &v61, v56);
      v53 = 0.0;
      if (result >= 0)
      {
        v53 = 1.0;
      }

      v22[8] = v53;
    }

    else
    {
      v22[8] = 0.0;
    }
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t fe_nnws_addon_lookup(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, void *a6, unsigned __int16 a7)
{
  v11 = *a5;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = a7;
  v44 = a7 + 1;
  v12 = heap_Calloc(*(*a1 + 8), 1, v44);
  if (v12)
  {
    v13 = v12;
    if (a3)
    {
      v38 = v11;
      v39 = a6;
      v14 = 0;
      v40 = a6 + 3;
      v15 = 1;
      while (1)
      {
        v16 = 0;
        v43 = *(a2 + 56 * v14 + 12);
        if (a3 <= v14 + 1)
        {
          v17 = v14 + 1;
        }

        else
        {
          v17 = a3;
        }

        v42 = v17;
        LODWORD(v18) = v14;
        while (1)
        {
          v19 = a2 + 56 * v18;
          v20 = *v19;
          if (!strcmp(*v19, "NUM"))
          {
            break;
          }

          if (!strcmp(v20, "ENG"))
          {
            break;
          }

          v21 = *(v19 + 16) + v16;
          if (v21 > v45)
          {
            break;
          }

          LODWORD(v18) = v18 + 1;
          v16 += *(v19 + 16);
          if (v18 >= a3)
          {
            LODWORD(v18) = v42;
            v16 = v21;
            break;
          }
        }

        if (v14 >= v18)
        {
          v13[v16] = 0;
        }

        else
        {
          memcpy(v13, (a4 + v43), v16 + 1);
          v13[v16] = 0;
          if (v16)
          {
            v22 = (a2 - 40 + 56 * v18);
            v18 = v18;
            v23 = v18 - v14 - 3;
            while (1)
            {
              bzero(&v13[v16], v44 - v16);
              v13[v16] = 0;
              v48 = 0;
              v15 = (*(a1[7] + 232))(a1[8], a1[9], "force_ws", v13, &v47, &v48, &v46, 0);
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_47;
              }

              if (v48)
              {
                break;
              }

              if (--v18 > v14)
              {
                v24 = *v22;
                v22 -= 14;
                --v23;
                v16 -= v24;
                if (v16)
                {
                  continue;
                }
              }

              goto LABEL_22;
            }

            v25 = v39[1];
            if (v14)
            {
              v26 = v38;
              v27 = *(v38 + 8 * (v14 - 1));
              v28 = v39;
              v29 = v14 + 1;
              if (v27 == v25 || (v28 = v40, v27 == v39[2]))
              {
                *(v38 + 8 * (v14 - 1)) = *v28;
                v25 = v39[1];
              }
            }

            else
            {
              v26 = v38;
              v29 = 1;
            }

            v30 = v18 - 1;
            *(v26 + 8 * v14) = v25;
            if (v18 < a3)
            {
              v31 = *(v26 + 8 * v18);
              if (v31 == v39[2])
              {
                goto LABEL_36;
              }

              if (v31 == *v40)
              {
                v25 = *v39;
LABEL_36:
                *(v26 + 8 * v30) = v25;
              }
            }

            *(v26 + 8 * v30) = *v40;
            if (v29 < v30)
            {
              v32 = 0;
              v33 = v39[2];
              v34 = vdupq_n_s64(v23);
              v35 = v26 + 8 * v29;
              do
              {
                v36 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v32), xmmword_1C378AF00)));
                if (v36.i8[0])
                {
                  *(v35 + 8 * v32) = v33;
                }

                if (v36.i8[4])
                {
                  *(v35 + 8 * v32 + 8) = v33;
                }

                v32 += 2;
              }

              while (((v23 + 2) & 0x1FFFFFFFELL) != v32);
            }

            v15 = 1;
          }
        }

LABEL_22:
        if (v14 == v18)
        {
          v14 = v18 + 1;
        }

        else
        {
          v14 = v18;
        }

        if (v14 >= a3)
        {
          goto LABEL_47;
        }
      }
    }

    v15 = 1;
LABEL_47:
    heap_Free(*(*a1 + 8), v13);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
    return 2588942346;
  }

  return v15;
}

uint64_t fe_nnws_adjustBMES_Edge(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 **a5, const char ***a6)
{
  v7 = a2;
  v9 = *a6;
  v21 = *a6;
  if (a2 < 2)
  {
    goto LABEL_26;
  }

  v10 = a2 - 2;
  for (i = v9; ; ++i)
  {
    v12 = *i[1];
    if (v12 <= 0x4C)
    {
      if (v12 != 66)
      {
        if (v12 == 69)
        {
          v13 = **i;
          v14 = a5;
          if (v13 == 83)
          {
            goto LABEL_19;
          }

          v14 = a5;
          if (v13 == 69)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_20;
      }

      v15 = **i;
      v14 = a5 + 2;
      if (v15 == 66)
      {
        goto LABEL_19;
      }

      v14 = a5 + 2;
LABEL_15:
      if (v15 == 77)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (v12 != 77)
    {
      if (v12 != 83)
      {
        goto LABEL_20;
      }

      v15 = **i;
      v14 = a5 + 3;
      if (v15 == 66)
      {
LABEL_19:
        i[1] = *v14;
        goto LABEL_20;
      }

      v14 = a5 + 3;
      goto LABEL_15;
    }

    v16 = **i;
    v14 = a5 + 1;
    if (v16 == 69)
    {
      goto LABEL_19;
    }

    v14 = a5 + 1;
    if (v16 == 83)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (!v10)
    {
      break;
    }

    --v10;
  }

  v17 = a5 + 3;
  if (**i == 77 || (v17 = a5, *i[1] == 66))
  {
    i[1] = *v17;
  }

LABEL_26:
  result = fe_nnws_adjust_ENP_labels(a2, a3, a5, &v21);
  if (a4 == 1 && v7)
  {
    v19 = v7;
    do
    {
      v20 = *v9++;
      result = log_OutText(*(a1 + 32), "FE_NNWS", 5, 0, "[NNWS][adjustBMES_Edge] Predicted Tag: %s", v20);
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t fe_nnws_adjustBMES(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 **a5, const char ***a6)
{
  v7 = a2;
  v9 = *a6;
  v19 = *a6;
  if (a2)
  {
    v10 = v9 + 1;
    for (i = a2; i; --i)
    {
      v12 = **(v10 - 1);
      if (i == 1)
      {
        v13 = a5 + 3;
        if (v12 != 77)
        {
          v13 = a5;
          if (v12 != 66)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_21;
      }

      if (**(v10 - 1) > 0x4Cu)
      {
        if (v12 == 77)
        {
          v15 = **v10;
          v13 = a5 + 3;
          if (v15 == 66)
          {
            goto LABEL_21;
          }

          v13 = a5 + 3;
LABEL_20:
          if (v15 == 83)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v12 == 83)
        {
          v14 = **v10 | 8;
          v13 = a5 + 1;
          goto LABEL_14;
        }
      }

      else
      {
        if (v12 == 66)
        {
          v15 = **v10;
          v13 = a5;
          if (v15 == 66)
          {
            goto LABEL_21;
          }

          v13 = a5;
          goto LABEL_20;
        }

        if (v12 == 69)
        {
          v14 = **v10 | 8;
          v13 = a5 + 2;
LABEL_14:
          if (v14 != 77)
          {
            goto LABEL_22;
          }

LABEL_21:
          *(v10 - 1) = *v13;
        }
      }

LABEL_22:
      ++v10;
    }
  }

  result = fe_nnws_adjust_ENP_labels(a2, a3, a5, &v19);
  if (a4 == 1 && v7)
  {
    v17 = v7;
    do
    {
      v18 = *v9++;
      result = log_OutText(*(a1 + 32), "FE_NNWS", 5, 0, "[NNWS] Predicted Tag: %s", v18);
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t fe_nnws_IGTreeProcess(uint64_t *a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  __s1 = 0;
  v5 = *a1;
  v6 = a1[23];
  if (!a2 || !v6)
  {
    log_OutText(*(v5 + 32), "FE_NNWS", 5, 0, "IGTree model for NNWS does not exist");
    return 0;
  }

  v10 = heap_Alloc(*(v5 + 8), 8 * *(v6 + 1296) - 8);
  if (!v10)
  {
    v30 = 2588942346;
    log_OutPublic(*(v5 + 32), "FE_NNWS", 750000, 0);
    return v30;
  }

  v11 = v10;
  v42 = a5;
  if (*(v6 + 1296) != 1)
  {
    v12 = (*(v6 + 1296) - 1);
    v13 = v10;
    do
    {
      v14 = heap_Calloc(*(v5 + 8), 1, 65);
      *v13 = v14;
      if (!v14)
      {
        v30 = 2588942346;
        log_OutPublic(*(v5 + 32), "FE_NNWS", 750000, 0);
        goto LABEL_57;
      }

      *v14 = 61;
      ++v13;
      --v12;
    }

    while (v12);
  }

  v15 = 0;
  v40 = a3 + 2;
  v41 = a3;
  v38 = a3 + 3;
  v39 = a3 + 1;
  v16 = v42;
  do
  {
    v17 = *(v6 + 1312);
    v18 = *(v6 + 1296);
    v19 = fe_nnws_setFeature(v5, v17, v18, 0, v11, *(*v16 + 8 * v15));
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v20 = "=";
    if (a2 > v15)
    {
      v20 = *(a4 + 56 * v15);
    }

    v19 = fe_nnws_setFeature(v5, v17, v18, 1, v11, v20);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v21 = "=";
    if (v15 - 1 < a2)
    {
      v21 = *(a4 + 56 * (v15 - 1));
    }

    v19 = fe_nnws_setFeature(v5, v17, v18, 2, v11, v21);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v22 = "=";
    if (v15 - 2 < a2)
    {
      v22 = *(a4 + 56 * (v15 - 2));
    }

    v19 = fe_nnws_setFeature(v5, v17, v18, 3, v11, v22);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v23 = "=";
    if (v15 - 3 < a2)
    {
      v23 = *(a4 + 56 * (v15 - 3));
    }

    v19 = fe_nnws_setFeature(v5, v17, v18, 4, v11, v23);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v24 = "=";
    if (v15 - 4 < a2)
    {
      v24 = *(a4 + 56 * (v15 - 4));
    }

    v19 = fe_nnws_setFeature(v5, v17, v18, 5, v11, v24);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v25 = "=";
    if (v15 + 1 < a2)
    {
      v25 = *(a4 + 56 * (v15 + 1));
    }

    v19 = fe_nnws_setFeature(v5, v17, v18, 6, v11, v25);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v26 = "=";
    if (v15 + 2 < a2)
    {
      v26 = *(a4 + 56 * (v15 + 2));
    }

    v19 = fe_nnws_setFeature(v5, v17, v18, 7, v11, v26);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v27 = "=";
    if (v15 + 3 < a2)
    {
      v27 = *(a4 + 56 * (v15 + 3));
    }

    v19 = fe_nnws_setFeature(v5, v17, v18, 8, v11, v27);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v28 = "=";
    if (v15 + 4 < a2)
    {
      v28 = *(a4 + 56 * (v15 + 4));
    }

    v19 = fe_nnws_setFeature(v5, v17, v18, 9, v11, v28);
    if ((v19 & 0x80000000) != 0)
    {
LABEL_55:
      v30 = v19;
      goto LABEL_57;
    }

    v29 = "=";
    if (v15 < a2)
    {
      v29 = v45;
      LH_itoa(v15 + 1, v45, 0xAu);
    }

    v30 = fe_nnws_setFeature(v5, v17, v18, 10, v11, v29);
    v16 = v42;
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_57;
    }

    igtree_Process(v6, v11, &__s1);
    v31 = __s1;
    if (strcmp(__s1, "NOMATCH"))
    {
      v30 = 0;
      v32 = *v31;
      if (v32 <= 0x4C)
      {
        v33 = v39;
        if (v32 != 66)
        {
          if (v32 != 69)
          {
            goto LABEL_48;
          }

          v33 = v38;
        }

LABEL_47:
        *(*v42 + 8 * v15) = *v33;
        fe_hlp_adjustBMES_basedSingleLabel(a2, v15, v41, v42);
        v30 = 0;
        goto LABEL_48;
      }

      v33 = v40;
      if (v32 == 77)
      {
        goto LABEL_47;
      }

      v33 = v41;
      if (v32 == 83)
      {
        goto LABEL_47;
      }
    }

LABEL_48:
    ++v15;
  }

  while (a2 != v15);
  if (*(v6 + 1296) != 1)
  {
    v34 = (*(v6 + 1296) - 1);
    v35 = v11;
    do
    {
      v36 = *v35++;
      heap_Free(*(v5 + 8), v36);
      --v34;
    }

    while (v34);
  }

LABEL_57:
  heap_Free(*(v5 + 8), v11);
  return v30;
}

uint64_t **fe_nnws_retag_word_under_phon(uint64_t **result, uint64_t *a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *result;
  if (v5 >= 2)
  {
    v7 = (v4 + 96);
    v8 = 8 * v5;
    v9 = 8;
    while (1)
    {
      if (*(v7 - 13) != 1 || v7[1] != 1)
      {
        goto LABEL_20;
      }

      v10 = *(v7 - 14);
      if (v10 == 1)
      {
        if (*v7)
        {
          if (*v7 != 1)
          {
            goto LABEL_20;
          }

          v12 = *a4;
          v6[v9 / 8] = *a4;
          if (v9 != 8)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        v6[v9 / 8] = a4[1];
        v13 = a4;
      }

      else
      {
        if (v10)
        {
          goto LABEL_20;
        }

        if (*v7)
        {
          if (*v7 != 1)
          {
            goto LABEL_20;
          }

          v11 = a4[3];
        }

        else
        {
          v11 = a4[2];
        }

        v6[v9 / 8] = v11;
        v13 = a4 + 1;
      }

      if (v9 == 8)
      {
        v12 = *v13;
LABEL_19:
        *v6 = v12;
      }

LABEL_20:
      v7 += 14;
      v9 += 8;
      if (v8 == v9)
      {
        return result;
      }
    }
  }

  if (*(v4 + 44) == 1)
  {
    *v6 = *a4;
  }

  return result;
}

uint64_t fe_nnws_group(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, const char **a5)
{
  v7 = *a3;
  v8 = *a5;
  v9 = *a4;
  v54 = strlen(*a5);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v7 + 32;
    v57 = a2;
    v58 = v9;
    while (1)
    {
      v15 = **(a2 + 8 * v10);
      switch(v15)
      {
        case 'B':
          v31 = v7 + 56 * v13;
          *(v31 + 8) = *(v14 - 24);
          *(v31 + 32) = *v14;
          v12 = v10;
          break;
        case 'S':
          v56 = v12;
          v26 = v11;
          v27 = *(v14 - 16);
          v28 = v7 + 56 * v13;
          v29 = *v28;
          if (!strcmp(*v28, "NUM"))
          {
            if ((v27 - 4) < 0xFFFFFFFB)
            {
              goto LABEL_26;
            }
          }

          else if (!strcmp(v29, "ENG") && (v27 - 4) < 0xFFFFFFFB)
          {
LABEL_26:
            v32 = heap_Realloc(*(a1 + 8), v29, v27 + 1);
            *v28 = v32;
            if (!v32)
            {
              goto LABEL_57;
            }

            v29 = v32;
            v33 = *(v14 - 16);
            goto LABEL_29;
          }

          if (*(v28 + 16) < (v27 + 1))
          {
            goto LABEL_26;
          }

          v33 = v27;
LABEL_29:
          strncpy(v29, &v8[*(v14 - 20)], v33);
          *(*v28 + *(v14 - 16)) = 0;
          v34 = *(v14 - 12);
          *(v28 + 16) = v27;
          *(v28 + 20) = v34;
          *(v28 + 8) = *(v14 - 24);
          *(v28 + 40) = *(v14 + 8);
          *(v28 + 32) = *v14;
          *(v28 + 48) = *(v14 + 16);
          v11 = v27 + v26;
          ++v13;
          a2 = v57;
          v9 = v58;
          v12 = v56;
          break;
        case 'E':
          v16 = v7 + 56 * v12;
          v18 = *(v16 + 12);
          v17 = (v16 + 12);
          v19 = *(v14 - 16) + *(v14 - 20);
          v20 = v19 - v18;
          if (v19 < v18)
          {
            log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0);
            return 2588942343;
          }

          v21 = v11;
          v22 = v7 + 56 * v13;
          v23 = heap_Realloc(*(a1 + 8), *v22, (v20 + 1));
          *v22 = v23;
          if (!v23)
          {
            goto LABEL_57;
          }

          strncpy(v23, &v8[*v17], v20);
          *(*v22 + v20) = 0;
          *(v22 + 16) = v20;
          *(v22 + 36) = *(v14 + 4);
          v24 = *v14;
          if (*(v22 + 32) == 1 && v24 == 2)
          {
            v24 = 3;
            a2 = v57;
          }

          else
          {
            a2 = v57;
            if ((v24 & 0xFFFFFFFE) != 2)
            {
              goto LABEL_23;
            }
          }

          *(v22 + 32) = v24;
          *(v22 + 20) = *(v14 - 12);
LABEL_23:
          v11 = v20 + v21;
          ++v13;
          v12 = v10 + 1;
          v9 = v58;
          break;
      }

      ++v10;
      v14 += 56;
      if (v9 == v10)
      {
        goto LABEL_33;
      }
    }
  }

  v13 = 0;
  v11 = 0;
LABEL_33:
  if (v13 < v9)
  {
    v35 = (v7 + 56 * v13);
    v36 = v9 - v13;
    do
    {
      v37 = *v35;
      v35 += 7;
      heap_Free(*(a1 + 8), v37);
      --v36;
    }

    while (v36);
  }

  *a4 = v13;
  v38 = v11 + v13;
  if (v38 + 1 <= v54 || (v8 = heap_Realloc(*(a1 + 8), v8, v38)) != 0)
  {
    if (v13)
    {
      v39 = 0;
      v40 = (v7 + 16);
      v41 = v13;
      do
      {
        v42 = v39;
        memcpy(&v8[v39], *(v40 - 2), *v40);
        v8[*v40 + v42] = 32;
        v44 = *v40;
        v40 += 14;
        v43 = v44;
        v39 = v42 + v44 + 1;
        --v41;
      }

      while (v41);
      if (v39)
      {
        v8[v42 + v43] = 0;
      }

      v45 = 0;
      *a5 = v8;
      do
      {
        v46 = v7 + 56 * v45;
        if (*(v46 + 32) == 1)
        {
          v47 = v45;
          if (v45 < v13)
          {
            v48 = (v7 + 88 + 56 * v45);
            do
            {
              *(v48 - 14) = 4;
              ++v47;
              v49 = *v48;
              v48 += 14;
            }

            while (v49 != 2 && v47 < v13);
            v45 = v47;
          }

          *(v7 + 56 * v47 + 8) = *(v46 + 8);
        }

        else
        {
          ++v45;
        }
      }

      while (v45 < v13);
      return 0;
    }

    else
    {
      v51 = 0;
      *a5 = v8;
    }
  }

  else
  {
LABEL_57:
    v51 = 2588942346;
    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0, a5);
  }

  return v51;
}

uint64_t fe_nnws_writeLDB_v2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v10 = a4;
  v131 = 0;
  v130 = 0;
  v13 = (*(a1[6] + 176))(a2, a3, a4, 1, &v131, &v130);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v127 = a3;
  v128 = v10;
  reorder_pMrk(&v131, v130, 40);
  reorder_pMrk(&v131, v130, 1);
  if (a6)
  {
    v14 = heap_Calloc(*(*a1 + 8), a6, 32);
    v15 = *a1;
    if (!v14)
    {
      v18 = 2588942346;
      log_OutPublic(*(v15 + 32), "FE_NNWS", 75000, 0);
      return v18;
    }

    v16 = v14;
    v17 = heap_Calloc(*(v15 + 8), a6, 4);
    if (!v17)
    {
      v18 = 2588942346;
      log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
      v19 = 0;
LABEL_181:
      heap_Free(*(*a1 + 8), v16);
      goto LABEL_182;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v20 = v130;
  v21 = v131;
  if (v130)
  {
    v22 = 0;
    v23 = v131;
    while (1)
    {
      v25 = *v23;
      v23 += 2;
      v24 = v25;
      if (v25 == 41 || v24 == 1)
      {
        break;
      }

      if (v130 == ++v22)
      {
        LODWORD(v22) = -1;
        break;
      }
    }

    v27 = 0;
    v28 = v22 & ~(v22 >> 31);
    v29 = v131;
    while (1)
    {
      v30 = *v29;
      v29 += 2;
      if (v30 == 40)
      {
        break;
      }

      if (v130 == ++v27)
      {
        goto LABEL_22;
      }
    }

    v31 = v27;
    if (a6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v28 = 0;
LABEL_22:
    v31 = -1;
    if (a6)
    {
LABEL_25:
      v32 = 0;
      v33 = 0;
      v34 = v28;
      v35 = *(v131 + 3);
      v36 = &v131[2 * v34];
      while (1)
      {
        v37 = (a5 + 56 * v32);
        v38 = v37[8];
        v39 = (v16 + 32 * v32);
        if (v38 != 4)
        {
          break;
        }

        v33 += v37[4] + 1;
        *v39 = 0;
LABEL_54:
        if (++v32 == a6)
        {
          goto LABEL_55;
        }
      }

      v39[1] = *(v36 + 1) + v37[2];
      if ((v38 & 0xFFFFFFFE) == 2)
      {
        v40 = v37[5];
        v41 = v37[4] + v33;
      }

      else
      {
        v40 = v37[4];
        v41 = v40;
      }

      v39[2] = v40;
      v42 = v35;
      if (v32)
      {
        v42 = *(v39 - 5) + *(v39 - 4) + 1;
      }

      v39[3] = v42;
      v39[4] = v41;
      if (v38 != 5 || v31 == -1)
      {
        *v39 = 1;
      }

      else
      {
        v44 = &v21[2 * v31];
        v45 = v44[1];
        *v39 = *v44;
        *(v39 + 1) = v45;
        v46 = v37[4];
        v39[2] = v46;
        v47 = v35;
        if (v32)
        {
          v47 = *(v39 - 5) + *(v39 - 4) + 1;
        }

        v39[3] = v47;
        v39[4] = v46;
        if (v31 + 1 < v20)
        {
          v48 = &v21[2 * ++v31];
          while (1)
          {
            v49 = *v48;
            v48 += 2;
            if (v49 == 40)
            {
              break;
            }

            if (v20 == ++v31)
            {
              v31 = -1;
              break;
            }
          }
        }

        if (*v39 == 40)
        {
LABEL_49:
          *(v17 + 4 * v32) = 1;
LABEL_50:
          if ((v37[8] & 0xFFFFFFFE) == 2 && !v37[10])
          {
            *(v17 + 4 * v32) = 2;
          }

          v33 = 0;
          v50 = v39[3] - *(v21 + 3);
          v51 = v39[4] + v50;
          v37[6] = v50;
          v37[7] = v51;
          goto LABEL_54;
        }

        if (*v39 != 1)
        {
          goto LABEL_50;
        }
      }

      if (v37[9] != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

LABEL_55:
  if (v20)
  {
    v52 = 0;
    v53 = v21 + 2;
    v54 = -1;
    v55 = v20;
    do
    {
      v56 = v55;
      v57 = *(v53 - 8);
      ++v52;
      if (v57 == 40)
      {
        if (v52 < v55 && *v53 == 1 && *(v53 - 5) == v53[3])
        {
          memmove(v53 - 8, v53, 32 * (v54 + v55--));
          v56 = v55;
        }
      }

      else if (v57 == 99 && v52 < v55)
      {
        v59 = *(v53 - 5);
        v60 = v53[3];
        if (v59 == v60 - 1 && *(a7 + (v59 - *(v21 + 3))) == 32)
        {
          *(v53 - 5) = v60;
          *(v53 - 7) = v53[1];
        }
      }

      v53 += 8;
      --v54;
    }

    while (v52 < v56);
    LOWORD(v130) = v55;
    if (v55)
    {
      v61 = 0;
      v20 = 0;
      v62 = v131;
      v63 = v55;
      do
      {
        v65 = *v62;
        v62 += 2;
        v64 = v65;
        if (v61)
        {
          v66 = v20;
        }

        else
        {
          v66 = v20 + 1;
        }

        if (v64 == 0x4000)
        {
          v67 = 1;
        }

        else
        {
          v66 = v20 + 1;
          v67 = v61;
        }

        if (v64 != 1)
        {
          v20 = v66;
          v61 = v67;
        }

        --v63;
      }

      while (v63);
    }

    else
    {
      v20 = 0;
    }
  }

  v68 = v20 + a6;
  v19 = heap_Alloc(*(*a1 + 8), 32 * (v20 + a6));
  if (v19)
  {
    v69 = v130;
    if (v130)
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = v131;
      v79 = 1;
      v80 = 1;
      while (1)
      {
        v81 = &v78[2 * v77];
        if (*v81 == 0x4000)
        {
          if (!v71)
          {
            v82 = &v19[8 * v73];
            v83 = v81[1];
            *v82 = *v81;
            *(v82 + 1) = v83;
            v84 = v82[1];
            if (v84)
            {
              v84 = *(a1 + 27);
            }

            else
            {
              a1[13] = 0;
            }

            v82[3] = v84;
            v74 = v84 - *(v81 + 3);
            ++v73;
          }

          ++v77;
          v71 = 1;
          goto LABEL_117;
        }

        if (*v81 == 1)
        {
          if (v80 == 1)
          {
            v70 = *(v81 + 1);
          }

          v80 = 0;
          goto LABEL_113;
        }

        if (v76 < a6)
        {
          v85 = v16 + 32 * v76;
          if (*(v85 + 12) < (*(v81 + 3) + v75))
          {
            v86 = &v19[8 * v73];
            v87 = *(v85 + 16);
            *v86 = *v85;
            *(v86 + 1) = v87;
            v88 = *(v85 + 12) + v74;
            v86[3] = v88;
            if (v73)
            {
              v89 = v73 - 1;
              if (v73 == 1)
              {
                v90 = v19[1];
                goto LABEL_124;
              }

              v96 = &v19[8 * v89];
              if (*v96 <= 0x28u && ((1 << *v96) & 0x10020000002) != 0)
              {
                v90 = v96[2] + v96[1];
LABEL_124:
                v86[1] = v90;
                v97 = v86 + 1;
                v98 = *(v17 + 4 * v76);
                if (v98 == 2)
                {
                  if (*(v85 + 12) - v75 != *(v81 + 3))
                  {
                    ++v75;
                  }

                  if (!v73)
                  {
                    goto LABEL_138;
                  }

LABEL_128:
                  v99 = &v19[8 * v73 - 8];
                  if (*v99 == 29)
                  {
                    v100 = v99[3];
                    if (v88 > v100)
                    {
                      v99[3] = v100 + 1;
                    }
                  }

                  if (v79 == 1)
                  {
                    *v97 = v70;
                    if (v73 == 2)
                    {
                      v97 = v19 + 9;
                      if (v19[8] == 36)
                      {
LABEL_139:
                        *v97 = v70;
                      }
                    }
                  }
                }

                else
                {
                  if (!v98)
                  {
                    ++v75;
                  }

                  if (v73)
                  {
                    goto LABEL_128;
                  }

LABEL_138:
                  if (v79 == 1)
                  {
                    goto LABEL_139;
                  }
                }

                v79 = 0;
                if (++v76 == a6)
                {
                  v72 = v73;
                }

                ++v73;
                goto LABEL_117;
              }
            }

            else
            {
              v89 = 0xFFFFFFFFLL;
            }

            v90 = v19[8 * v89 + 1];
            goto LABEL_124;
          }
        }

        v91 = &v19[8 * v73];
        v92 = v81[1];
        *v91 = *v81;
        *(v91 + 1) = v92;
        v91[3] = v75 + v74 + *(v81 + 3);
        if (v76 == a6 && v72)
        {
          v91[3] = v19[8 * v72 + 4] + v19[8 * v72 + 3];
        }

        v93 = v73 - 1;
        if (v73 == 1)
        {
          break;
        }

        if (v76 != a6)
        {
          if (v73)
          {
            v95 = &v19[8 * v93];
            if (*v95 <= 0x28u && ((1 << *v95) & 0x10020000002) != 0)
            {
              v94 = v95[2] + v95[1];
              goto LABEL_111;
            }
          }
        }

        if (v76 != a6)
        {
          v94 = v19[8 * v93 + 1];
          goto LABEL_111;
        }

LABEL_112:
        ++v73;
LABEL_113:
        ++v77;
LABEL_117:
        if (v77 >= v69)
        {
          goto LABEL_145;
        }
      }

      v94 = v19[1];
LABEL_111:
      v91[1] = v94;
      goto LABEL_112;
    }

    v76 = 0;
    v74 = 0;
    v73 = 0;
LABEL_145:
    if (v76 < a6)
    {
      v101 = v76;
      v102 = a6 - v76;
      v103 = v16 + 32 * v101;
      while (1)
      {
        v104 = &v19[8 * v73];
        v105 = *(v103 + 16);
        *v104 = *v103;
        *(v104 + 1) = v105;
        v106 = *(v103 + 12) + v74;
        v104[3] = v106;
        if (v73 >= 3)
        {
          break;
        }

        if (v73)
        {
          v107 = v73 - 1;
          goto LABEL_151;
        }

LABEL_154:
        v103 += 32;
        ++v73;
        if (!--v102)
        {
          goto LABEL_155;
        }
      }

      v107 = v73 - 1;
      v104[1] = v19[8 * v107 + 2] + v19[8 * v107 + 1];
LABEL_151:
      v108 = &v19[8 * v107];
      if (*v108 == 29)
      {
        v109 = v108[3];
        if (v106 > v109)
        {
          v108[3] = v109 + 1;
        }
      }

      goto LABEL_154;
    }

LABEL_155:
    v110 = &v19[8 * v73 - 8];
    v19[4] = v110[4] + v110[3] - v19[3];
    v19[2] = v110[2] + v110[1] - v19[1];
    if (v68)
    {
      v111 = 0;
      LODWORD(v112) = -1;
      while (1)
      {
        v113 = &v19[8 * v111];
        if (*v113 == 51)
        {
          v114 = (v68 - v111 > 1) & (strcmp(v113[3], "R_CLASS") == 0);
          if (v114)
          {
            LODWORD(v112) = v111;
          }

          v111 += v114;
          goto LABEL_176;
        }

        if (*v113 == 57 && v112 != -1)
        {
          break;
        }

LABEL_176:
        if (++v111 >= v68)
        {
          goto LABEL_177;
        }
      }

      v116 = v111 - 1;
      do
      {
        v117 = v116;
        if (!v116)
        {
          break;
        }

        v118 = v19[8 * v116--];
      }

      while (v118 != 1);
      if (v112 >= v117)
      {
        if (!v112)
        {
LABEL_175:
          LODWORD(v112) = -1;
          goto LABEL_176;
        }
      }

      else
      {
        v119 = v112;
        v112 = v112 + 1;
        if (v112 < v117)
        {
          LODWORD(v112) = v117;
          v120 = &v19[8 * v119 + 8];
          v121 = ~v119 + v117;
          do
          {
            v123 = *(v120 - 16);
            v132 = *(v120 - 32);
            v122 = v132;
            v133 = v123;
            v124 = *(v120 + 16);
            *(v120 - 32) = *v120;
            *(v120 - 16) = v124;
            *v120 = v122;
            *(v120 + 16) = v123;
            *(v120 - 28) = *(v120 + 4);
            v120 += 32;
            --v121;
          }

          while (v121);
        }
      }

      v19[8 * (v112 - 1) + 3] = v19[8 * v112 + 3];
      goto LABEL_175;
    }

LABEL_177:
    v18 = (*(a1[6] + 160))(a2, v127, v128, 1, v68, v19, &v130 + 2);
    if ((v18 & 0x80000000) == 0)
    {
      v125 = v19[4] + v19[3];
      *(a1 + 26) = v19[2] + v19[1];
      *(a1 + 27) = v125;
      if (!v16)
      {
        goto LABEL_182;
      }

      goto LABEL_181;
    }
  }

  else
  {
    v18 = 2588942346;
  }

  log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
  if (v16)
  {
    goto LABEL_181;
  }

LABEL_182:
  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
  }

  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
  }

  return v18;
}