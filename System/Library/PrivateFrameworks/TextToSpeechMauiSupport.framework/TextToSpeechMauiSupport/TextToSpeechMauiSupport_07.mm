uint64_t InsertSilWord(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, unsigned int a8, char *a9)
{
  if (a6 < a8 && (v15 = *(**(a2 + 8 * a4) + 8 * a5), SilWord = MakeSilWord(a1, a7, *(v15 + 8), *(v15 + 16), 35, a9), (*(a3 + 8 * (a6 + 1)) = SilWord) != 0))
  {
    v17 = *(a3 + 8 * a6);
    v18 = *(*(a2 + 8 * a4) + 8) - 1;
    if (*(v17 + 144))
    {
      v19 = v18 == a5;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      *(v17 + 196) = 0;
    }

    v20 = 1;
    if (v18 == a5)
    {
      *(SilWord + 49) = 1;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
    return 0;
  }

  return v20;
}

void *freepWRI(uint64_t a1, void *a2)
{
  v4 = a2[16];
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
  }

  v5 = a2[17];
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
  }

  v6 = a2[4];
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
  }

  v7 = a2[5];
  if (v7)
  {
    heap_Free(*(a1 + 8), v7);
  }

  v8 = a2[6];
  if (v8)
  {
    heap_Free(*(a1 + 8), v8);
  }

  v9 = a2[7];
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
  }

  v10 = a2[8];
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
  }

  v11 = a2[9];
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
  }

  v12 = a2[10];
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
  }

  v13 = a2[12];
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
  }

  v14 = a2[11];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
  }

  v15 = a2[13];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
  }

  v16 = a2[14];
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
  }

  v17 = *(a1 + 8);

  return heap_Free(v17, a2);
}

void *freepSRI(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*a2 + 8 * i);
      if (v6)
      {
        freepWRI(a1, v6);
        *(*a2 + 8 * i) = 0;
        v4 = *(a2 + 8);
      }
    }
  }

  if (*a2)
  {
    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    for (j = 0; j < v7; ++j)
    {
      v9 = *(*(a2 + 16) + 8 * j);
      if (v9)
      {
        freepWRI(a1, v9);
        *(*(a2 + 16) + 8 * j) = 0;
        v7 = *(a2 + 24);
      }
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a2 + 16) = 0;
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    for (k = 0; k < v11; ++k)
    {
      v13 = *(*(a2 + 32) + 8 * k);
      if (v13)
      {
        freepWRI(a1, v13);
        *(*(a2 + 32) + 8 * k) = 0;
        v11 = *(a2 + 40);
      }
    }
  }

  v14 = *(a2 + 32);
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    *(a2 + 32) = 0;
  }

  v15 = *(a2 + 56);
  if (v15)
  {
    for (m = 0; m < v15; ++m)
    {
      v17 = *(*(a2 + 48) + 8 * m);
      if (v17)
      {
        freepWRI(a1, v17);
        *(*(a2 + 48) + 8 * m) = 0;
        v15 = *(a2 + 56);
      }
    }
  }

  v18 = *(a2 + 48);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a2 + 48) = 0;
  }

  v19 = *(a2 + 72);
  if (v19)
  {
    for (n = 0; n < v19; ++n)
    {
      v21 = *(*(a2 + 64) + 8 * n);
      if (v21)
      {
        freepWRI(a1, v21);
        *(*(a2 + 64) + 8 * n) = 0;
        v19 = *(a2 + 72);
      }
    }
  }

  v22 = *(a2 + 64);
  if (v22)
  {
    heap_Free(*(a1 + 8), v22);
    *(a2 + 64) = 0;
  }

  v23 = *(a1 + 8);

  return heap_Free(v23, a2);
}

void *freepPWRI(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *(a2 + 32) = 0;
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
    *(a2 + 40) = 0;
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    *(a2 + 48) = 0;
  }

  v7 = *(a2 + 56);
  if (v7)
  {
    heap_Free(*(a1 + 8), v7);
    *(a2 + 56) = 0;
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    heap_Free(*(a1 + 8), v8);
    *(a2 + 64) = 0;
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    *(a2 + 72) = 0;
  }

  v10 = *(a2 + 88);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a2 + 88) = 0;
  }

  v11 = *(a2 + 80);
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    *(a2 + 80) = 0;
  }

  v12 = *(a2 + 96);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a2 + 96) = 0;
  }

  v13 = *(a2 + 112);
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
    *(a2 + 112) = 0;
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    *(a2 + 104) = 0;
  }

  v15 = *(a2 + 120);
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    *(a2 + 120) = 0;
  }

  v16 = *(a2 + 128);
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
    *(a2 + 128) = 0;
  }

  v17 = *(a2 + 152);
  if (v17)
  {
    heap_Free(*(a1 + 8), v17);
    *(a2 + 152) = 0;
  }

  v18 = *(a2 + 160);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a2 + 160) = 0;
  }

  v19 = *(a2 + 176);
  if (v19)
  {
    heap_Free(*(a1 + 8), v19);
    *(a2 + 176) = 0;
  }

  v20 = *(a2 + 184);
  if (v20)
  {
    heap_Free(*(a1 + 8), v20);
    *(a2 + 184) = 0;
  }

  v21 = *(a2 + 144);
  if (v21)
  {
    for (i = 0; i < v21; ++i)
    {
      v23 = *(*(a2 + 168) + 8 * i);
      if (v23)
      {
        heap_Free(*(a1 + 8), v23);
        *(*(a2 + 168) + 8 * i) = 0;
        v21 = *(a2 + 144);
      }
    }
  }

  v24 = *(a2 + 168);
  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
    *(a2 + 168) = 0;
  }

  v25 = *(a1 + 8);

  return heap_Free(v25, a2);
}

void *freeppSRI(void *result, uint64_t *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = result;
    if (a3 >= 1)
    {
      v5 = a3;
      v6 = a2;
      do
      {
        if (*v6)
        {
          freepSRI(v4, *v6);
          *v6 = 0;
        }

        ++v6;
        --v5;
      }

      while (v5);
    }

    v7 = v4[1];

    return heap_Free(v7, a2);
  }

  return result;
}

uint64_t ParseWnluStr(const char *a1, char **a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = cstdlib_strlen(a1);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = a1[v9];
      if (!a1[v9])
      {
        goto LABEL_6;
      }

      if (v10 != 58)
      {
        break;
      }

      if (v9 <= v8)
      {
        v22 = 0;
      }

      else
      {
        memcpy(__dst, &a1[v8], v9 + ~v8 + 1);
        v22 = v9 - v8;
      }

      v6 = __dst;
      __dst[v22] = 0;
      ++v9;
      if (__dst[1] == 95)
      {
        v23 = cstdlib_strchr("SsEeIi", __dst[0]);
        v6 = &__dst[2 * (v23 != 0)];
        if (v23)
        {
          v5 = __dst[0];
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

LABEL_22:
      v8 = v9;
LABEL_26:
      if (v9 > v4)
      {
        return v7;
      }
    }

    if (v10 != 59)
    {
      ++v9;
      goto LABEL_26;
    }

LABEL_6:
    if (v5)
    {
      __src[0] = v5;
      __src[1] = 95;
      v5 = 2;
    }

    if (v9 > v8)
    {
      v11 = &a1[v8];
      v12 = v9 - v8;
      do
      {
        v13 = *v11++;
        __src[v5++] = v13;
        --v12;
      }

      while (v12);
    }

    __src[v5] = 0;
    if (v6)
    {
      v14 = cstdlib_strcmp(v6, "POS");
      v15 = a2 + 8;
      if (!v14 || (v16 = cstdlib_strcmp(v6, "PHR"), v15 = a2 + 9, !v16) || (v17 = cstdlib_strcmp(v6, "CLASS"), v15 = a2 + 10, !v17) || (v18 = cstdlib_strcmp(v6, "PUNC"), v15 = a2 + 12, !v18) || (v19 = cstdlib_strcmp(v6, "COMP"), v15 = a2 + 11, !v19) || (v20 = cstdlib_strcmp(v6, "BNDSHAPE"), v15 = a2 + 13, !v20) || (v21 = cstdlib_strcmp(v6, "COMPPOS"), v15 = a2 + 14, !v21))
      {
        cstdlib_strcpy(*v15, __src);
      }

      ++v7;
    }

    v5 = 0;
    ++v9;
    goto LABEL_22;
  }

  return 0;
}

uint64_t DupWrdRecField(uint64_t a1, char **a2, uint64_t a3, const char *a4)
{
  v8 = heap_Alloc(*(a1 + 8), a3);
  v9 = v8;
  if (v8)
  {
    cstdlib_strncpy(v8, a4, a3 - 1);
    result = 0;
    v9[a3 - 1] = 0;
  }

  else
  {
    NNFX_logMsg(a1, 0);
    result = 2364547082;
  }

  *a2 = v9;
  return result;
}

uint64_t nnextract_Allocate(uint64_t a1, uint64_t **a2, _DWORD *a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v12 = heap_Alloc(*(a1 + 8), 8);
  *a2 = v12;
  if (v12 && (Compile_SntWrdRec(a1, a3, a4, a5, a6, v12) & 0x80000000) == 0)
  {
    return 0;
  }

  NNFX_logMsg(a1, 0);
  return 1;
}

uint64_t nnextract_Process2Buff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t *a7, uint64_t a8, char *a9, uint64_t a10, uint64_t *a11, _DWORD *a12)
{
  v13 = *(a6 + 8);
  if (!v13)
  {
    goto LABEL_10;
  }

  v18 = a4;
  v19 = a3;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  GetLingTabIndex(v13, v29);
  if (SLOWORD(v29[0]) == -1)
  {
    NNFX_logMsg(a1, 1);
  }

  if (SWORD1(v29[0]) == -1)
  {
    NNFX_logMsg(a1, 1);
  }

  LOBYTE(v28) = a5;
  NnFeatures = extractNnFeatures(a1, *(a6 + 8), v29, a9, a10, a2, v19, v18, v28, a8);
  *a7 = NnFeatures;
  if (NnFeatures && (v22 = heap_Calloc(*(a1 + 8), 1, 16)) != 0)
  {
    v23 = v22;
    SymTabInit(v22);
    Buf = SymTabReadBuf(a1, v23, *(a6 + 16), *(a6 + 24), a7);
    if (Buf)
    {
      v25 = Buf;
    }

    else
    {
      v26 = SymTabToIntInplaceActive(a1, v23, a7, 0, 0x2Du);
      if (v26)
      {
        v25 = v26;
      }

      else
      {
        v25 = unrollNnFeatures(a1, a7, v23, a11, a12);
        if (!v25)
        {
          NNFX_logMsg(a1, 2);
          SymTabFree(a1, v23);
          heap_Free(*(a1 + 8), v23);
          return v25;
        }
      }
    }

    NNFX_logMsg(a1, 0);
  }

  else
  {
LABEL_10:
    NNFX_logMsg(a1, 0);
    return 1;
  }

  return v25;
}

uint64_t GetLingTabIndex(const char **a1, _WORD *a2)
{
  v4 = 0;
  v5 = a2 + 1;
  v6 = a2 + 2;
  v7 = a2 + 3;
  v39 = a2 + 5;
  v40 = a2 + 4;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a2 + 1) = v8;
  v9 = a2 + 8;
  v37 = a2 + 7;
  v38 = a2 + 6;
  v35 = a2 + 10;
  v36 = a2 + 9;
  v33 = a2 + 12;
  v34 = a2 + 11;
  v31 = a2 + 14;
  v32 = a2 + 13;
  *a2 = v8;
  v30 = a2 + 15;
  a2[16] = -1;
  v29 = a2 + 16;
  do
  {
    if (!*a1)
    {
      break;
    }

    v10 = cstdlib_strcmp(*a1, "VOWELS");
    v11 = a2;
    if (v10)
    {
      v12 = cstdlib_strcmp(*a1, "VOICEDPHONES");
      v11 = v5;
      if (v12)
      {
        v13 = cstdlib_strcmp(*a1, "BC_MONOVOWELS");
        v11 = v6;
        if (v13)
        {
          v14 = cstdlib_strcmp(*a1, "BC_DIPTHVOWELS");
          v11 = v7;
          if (v14)
          {
            v15 = cstdlib_strcmp(*a1, "BC_AFFRICATES");
            v11 = v40;
            if (v15)
            {
              v16 = cstdlib_strcmp(*a1, "BC_FRICATIVES");
              v11 = v39;
              if (v16)
              {
                v17 = cstdlib_strcmp(*a1, "BC_STOPS");
                v11 = v38;
                if (v17)
                {
                  v18 = cstdlib_strcmp(*a1, "BC_LIQUIDS_TAP");
                  v11 = v37;
                  if (v18)
                  {
                    v19 = cstdlib_strcmp(*a1, "BC_NASALS");
                    v11 = v9;
                    if (v19)
                    {
                      v20 = cstdlib_strcmp(*a1, "BC_GLIDES");
                      v11 = v36;
                      if (v20)
                      {
                        v21 = cstdlib_strcmp(*a1, "COMMON_WORDLIST");
                        v11 = v35;
                        if (v21)
                        {
                          v22 = cstdlib_strcmp(*a1, "FXN_WORDLIST");
                          v11 = v34;
                          if (v22)
                          {
                            v23 = cstdlib_strcmp(*a1, "WH_WORDLIST");
                            v11 = v33;
                            if (v23)
                            {
                              v24 = cstdlib_strcmp(*a1, "CONJ_WORDLIST");
                              v11 = v32;
                              if (v24)
                              {
                                v25 = cstdlib_strcmp(*a1, "AUXV_WORDLIST");
                                v11 = v31;
                                if (v25)
                                {
                                  v26 = cstdlib_strcmp(*a1, "ADPOS_WORDLIST");
                                  v11 = v30;
                                  if (v26)
                                  {
                                    v27 = cstdlib_strcmp(*a1, "EXCL_FEATLIST");
                                    v11 = v29;
                                    if (v27)
                                    {
                                      continue;
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
      }
    }

    *v11 = v4++;
    a1 += 2;
  }

  while (v4 != 17);
  return v4;
}

uint64_t extractNnFeatures(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v244[13] = *MEMORY[0x277D85DE8];
  v241[1] = 0;
  v242 = 0;
  v241[0] = 0;
  v244[0] = fExtGetPhoneFeats;
  v244[1] = fExtGetLexicalFeats;
  v244[2] = fExtGetParseFeats;
  v244[3] = fExtGetPhraseFeats;
  v244[4] = fExtGetPunctFeats;
  v244[5] = fExtGetPhone2BdryFeats;
  v244[6] = fExtGetSyll2BdryFeats;
  v244[7] = fExtGetStrGrp2BdryFeats;
  v244[8] = fExtGetWord2BdryFeats;
  v244[9] = fExtGetParse2BdryFeats;
  v244[10] = fExtGetPhrase2BdryFeats;
  v244[11] = fExtGetPunct2BdryFeats;
  v244[12] = fExtGetVPhone2BdryFeats;
  TrieIntInit(v241);
  v17 = TrieIntAdd(a1, v241, "Phone", a9);
  v18 = TrieIntAdd(a1, v241, "Voicing", a9) | v17;
  v19 = TrieIntAdd(a1, v241, "ConsVow", a9);
  v20 = v18 | v19 | TrieIntAdd(a1, v241, "BroadClass", a9);
  v21 = TrieIntAdd(a1, v241, "LexStress", a9);
  v22 = v21 | TrieIntAdd(a1, v241, "PhoneTag", a9);
  v23 = v20 | v22 | TrieIntAdd(a1, v241, "PhoneDiff", a9);
  v24 = TrieIntAdd(a1, v241, "Prominence", a9);
  v25 = v24 | TrieIntAdd(a1, v241, "POS", a9);
  v26 = v25 | TrieIntAdd(a1, v241, "nluPOS", a9);
  v27 = v23 | v26 | TrieIntAdd(a1, v241, "nluCLS", a9);
  v28 = TrieIntAdd(a1, v241, "nluPNC", a9);
  v29 = v28 | TrieIntAdd(a1, v241, "nluCMP", a9);
  v30 = v29 | TrieIntAdd(a1, v241, "nluBDS", a9);
  v31 = v30 | TrieIntAdd(a1, v241, "nluCPS", a9);
  v32 = v27 | v31 | TrieIntAdd(a1, v241, "IsFxnWord", a9);
  v33 = TrieIntAdd(a1, v241, "IsWHWord", a9);
  v34 = v33 | TrieIntAdd(a1, v241, "IsAuxWord", a9);
  v35 = v34 | TrieIntAdd(a1, v241, "IsConjWord", a9);
  v36 = v35 | TrieIntAdd(a1, v241, "IsAdposWord", a9);
  if (v32 | v36 | TrieIntAdd(a1, v241, "CommonWord", a9) || ((v236 = a8, !a10) ? (v37 = 13) : (v37 = 14), v38 = TrieIntSize(v241), (v39 = FillProsWords(a1, a6, a7, &v242 + 1, &v242, "-", a4, a5)) == 0))
  {
LABEL_54:
    NNFX_logMsg(a1, 0);
    return 0;
  }

  v40 = v39;
  v41 = v242;
  v42 = HIDWORD(v242);
  v43 = heap_Alloc(a1[1], 72);
  if (!v43)
  {
    goto LABEL_53;
  }

  v44 = v43;
  v234 = v38;
  *(v43 + 64) = 0;
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0u;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  v45 = heap_Alloc(a1[1], 24);
  if (!v45 || (v46 = v45, TierInit(a1, v45, v41, "Phone-level PHONE tier")))
  {
    NNFX_logMsg(a1, 0);
    *v44 = 0;
    goto LABEL_53;
  }

  v229 = v37;
  v231 = v44;
  v232 = v41;
  v238 = v42;
  if (v42)
  {
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = *(v40 + 8 * v47);
      if (*(v49 + 144))
      {
        v50 = 0;
        v51 = 2 * v48;
        do
        {
          v52 = *(a3 + 2);
          if (v52 == -1 || v52 > 499)
          {
            *(*(v46 + 1) + v51 + 2 * v50) = 1;
          }

          else
          {
            if (cstdlib_strchr(**(a2 + 16 * *(a3 + 2) + 8), *(*(v49 + 152) + v50)))
            {
              v53 = 2;
            }

            else
            {
              v53 = 1;
            }

            *(*(v46 + 1) + v51 + 2 * v50) = v53;
            v49 = *(v40 + 8 * v47);
          }

          ++v50;
        }

        while (v50 < *(v49 + 144));
        v48 += v50;
        v42 = v238;
      }

      ++v47;
    }

    while (v47 != v42);
  }

  v54 = v232;
  v46[1] = v232;
  *v231 = v46;
  v55 = heap_Alloc(a1[1], 24);
  if (!v55)
  {
    goto LABEL_52;
  }

  v56 = v55;
  if (TierInit(a1, v55, v232, "Phone-level SYLLABLE tier"))
  {
    goto LABEL_52;
  }

  if (v42)
  {
    v57 = 0;
    v58 = 0;
    while (1)
    {
      v59 = *(v40 + 8 * v57);
      v60 = *(v59 + 144);
      if (v60)
      {
        break;
      }

LABEL_39:
      if (++v57 == v42)
      {
        goto LABEL_43;
      }
    }

    v61 = 0;
    v62 = v232 - v58;
    v63 = 4 * v60;
    if (v232 < v58)
    {
      v62 = 0;
    }

    v64 = 4 * v62;
    v65 = 2 * v58;
    while (v64 != v61)
    {
      *(*(v56 + 1) + v65) = *(*(v59 + 184) + v61);
      v61 += 4;
      ++v58;
      v65 += 2;
      if (v63 == v61)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_52;
  }

  v58 = 0;
LABEL_43:
  if (v58 != v232)
  {
LABEL_52:
    NNFX_logMsg(a1, 0);
    v231[1] = 0;
    goto LABEL_53;
  }

  v66 = 0;
  if (v232)
  {
    v67 = *(v56 + 1);
    v68 = v232;
    do
    {
      if (*v67++)
      {
        ++v66;
      }

      --v68;
    }

    while (v68);
  }

  v56[1] = v66;
  v231[1] = v56;
  v70 = heap_Alloc(a1[1], 24);
  if (!v70)
  {
    goto LABEL_56;
  }

  v71 = v70;
  if (TierInit(a1, v70, v232, "Phone-level WORD tier"))
  {
    goto LABEL_56;
  }

  if (v42)
  {
    v74 = 0;
    v75 = 0;
    while (v75 < v232)
    {
      v76 = *(v71 + 1);
      v77 = *(*(v40 + 8 * v74) + 144) - 1;
      if (*(*(v40 + 8 * v74) + 144) != 1)
      {
        v78 = v77 + v75;
        do
        {
          *(v76 + 2 * v75++) = 0;
          --v77;
        }

        while (v77);
        v75 = v78;
      }

      v79 = v75 + 1;
      *(v76 + 2 * v75) = 1;
      ++v74;
      ++v75;
      if (v74 == v42)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_56;
  }

  v79 = 0;
LABEL_67:
  if (v79 != v232)
  {
    goto LABEL_56;
  }

  v80 = 0;
  if (v232)
  {
    v81 = *(v71 + 1);
    do
    {
      if (*v81++)
      {
        ++v80;
      }

      --v54;
    }

    while (v54);
  }

  v71[1] = v80;
  if (v80 != v42)
  {
LABEL_56:
    NNFX_logMsg(a1, 0);
    v231[2] = 0;
    goto LABEL_53;
  }

  v231[2] = v71;
  v83 = heap_Alloc(a1[1], 24);
  if (!v83 || (v84 = v83, TierInit(a1, v83, v232, "Phone-level PHRASE tier")))
  {
LABEL_139:
    NNFX_logMsg(a1, 0);
    v231[3] = 0;
    goto LABEL_53;
  }

  if (!v238)
  {
    v93 = 0;
    goto LABEL_99;
  }

  v85 = 0;
  for (i = 0; ; ++i)
  {
    v87 = *(v40 + 8 * v85);
    v88 = *(v87 + 144) - 1;
    if (*(v87 + 144) != 1)
    {
      v89 = v232 - i;
      if (v232 < i)
      {
        v89 = 0;
      }

      v90 = 2 * i;
      while (v89)
      {
        *(*(v84 + 1) + v90) = 0;
        ++i;
        v90 += 2;
        --v89;
        if (!--v88)
        {
          goto LABEL_89;
        }
      }

      goto LABEL_139;
    }

LABEL_89:
    if (v85 == v238 - 1)
    {
      break;
    }

    if (*(v87 + 192) == 1)
    {
      if (i >= v232)
      {
        goto LABEL_139;
      }

      v91 = *(v84 + 1);
    }

    else
    {
      if (i >= v232)
      {
        goto LABEL_139;
      }

      v92 = *(v87 + 136) & 0xFB;
      v91 = *(v84 + 1);
      if (v92 == 83)
      {
        *(v91 + 2 * i) = 1;
        goto LABEL_97;
      }
    }

    *(v91 + 2 * i) = 0;
LABEL_97:
    ++v85;
  }

  if (i >= v232)
  {
    goto LABEL_139;
  }

  v93 = i + 1;
  *(*(v84 + 1) + 2 * i) = 1;
LABEL_99:
  if (v93 != v232)
  {
    goto LABEL_139;
  }

  v94 = v232;
  if (v232)
  {
    v94 = 0;
    v95 = *(v84 + 1);
    v96 = v232;
    do
    {
      if (*v95++)
      {
        ++v94;
      }

      --v96;
    }

    while (v96);
  }

  v84[1] = v94;
  v231[3] = v84;
  v98 = heap_Alloc(a1[1], 24);
  if (!v98)
  {
    goto LABEL_151;
  }

  v99 = v98;
  if (TierInit(a1, v98, v232, "Phone-level PUNCTUATION tier"))
  {
    goto LABEL_151;
  }

  if (v238)
  {
    v100 = 0;
    v101 = 0;
    v102 = (v238 - 1);
    while (1)
    {
      v103 = *(v40 + 8 * v100);
      v104 = *(v103 + 144) - 1;
      if (*(v103 + 144) != 1)
      {
        break;
      }

LABEL_118:
      if (v100 == v102)
      {
        if (v101 >= v232)
        {
          goto LABEL_151;
        }

        v107 = 1;
      }

      else
      {
        if (*(v103 + 192) || (v108 = cstdlib_strlen(*(v103 + 32))) == 0 || ((v109 = *(v40 + 8 * v100), v110 = *(*(v109 + 32) + (v108 - 1)), v111 = v110 > 0x3F, v112 = (1 << v110) & 0x8C00500200000000, !v111) ? (v113 = v112 == 0) : (v113 = 1), v113))
        {
          v107 = 0;
        }

        else
        {
          v107 = 1;
          if (*(v109 + 136) == 78)
          {
            NNFX_logMsg(a1, 1);
          }
        }

        if (v101 >= v232)
        {
          goto LABEL_151;
        }

        if (v100 == v238 - 2 && *(*(v40 + 8 * v102) + 192))
        {
          v107 = 1;
        }
      }

      *(*(v99 + 1) + 2 * v101++) = v107;
      if (++v100 == v238)
      {
        goto LABEL_142;
      }
    }

    v105 = v232 - v101;
    if (v232 < v101)
    {
      v105 = 0;
    }

    v106 = 2 * v101;
    while (v105)
    {
      *(*(v99 + 1) + v106) = 0;
      ++v101;
      v106 += 2;
      --v105;
      if (!--v104)
      {
        goto LABEL_118;
      }
    }

LABEL_151:
    NNFX_logMsg(a1, 0);
    v231[4] = 0;
LABEL_53:
    NNFX_logMsg(a1, 0);
    goto LABEL_54;
  }

  v101 = 0;
LABEL_142:
  if (v101 != v232)
  {
    goto LABEL_151;
  }

  v114 = v232;
  if (v232)
  {
    v114 = 0;
    v115 = *(v99 + 1);
    v116 = v232;
    do
    {
      if (*v115++)
      {
        ++v114;
      }

      --v116;
    }

    while (v116);
  }

  v99[1] = v114;
  v231[4] = v99;
  v118 = heap_Alloc(a1[1], 24);
  if (!v118 || (v119 = v118, TierInit(a1, v118, v232, "Phone-level SENTENCE tier")))
  {
LABEL_174:
    v129 = a1;
    v121 = 0;
    goto LABEL_175;
  }

  v120 = heap_Calloc(a1[1], v238, 2);
  v121 = v120;
  if (!v120)
  {
    v129 = a1;
LABEL_175:
    NNFX_logMsg(v129, v121);
    v231[7] = 0;
    goto LABEL_53;
  }

  v122 = v238;
  v123 = (v238 - 1);
  if (v238 == 1)
  {
    v128 = 0;
LABEL_162:
    *(v120 + 2 * v128) = v122;
    goto LABEL_164;
  }

  v124 = v40;
  v125 = v120;
  v126 = (v238 - 1);
  do
  {
    v127 = *v124++;
    *v125++ = *(v127 + 196) == 1;
    --v126;
  }

  while (v126);
  *(v120 + 2 * v123) = 1;
  if (v238 >= 2 && *(*(v40 + 8 * v123) + 192))
  {
    v122 = 0;
    v128 = (v238 - 2);
    goto LABEL_162;
  }

  if (v238)
  {
LABEL_164:
    v130 = 0;
    v131 = 0;
    while (1)
    {
      v132 = *(*(v40 + 8 * v130) + 144) - 1;
      if (*(*(v40 + 8 * v130) + 144) != 1)
      {
        break;
      }

LABEL_171:
      if (v131 >= v232)
      {
        goto LABEL_174;
      }

      v135 = v131 + 1;
      *(*(v119 + 1) + 2 * v131++) = *(v120 + 2 * v130++);
      if (v130 == v238)
      {
        goto LABEL_177;
      }
    }

    v133 = v232 - v131;
    if (v232 < v131)
    {
      v133 = 0;
    }

    v134 = 2 * v131;
    while (v133)
    {
      *(*(v119 + 1) + v134) = 0;
      ++v131;
      v134 += 2;
      --v133;
      if (!--v132)
      {
        goto LABEL_171;
      }
    }

    goto LABEL_174;
  }

  v135 = 0;
LABEL_177:
  heap_Free(a1[1], v120);
  if (v135 != v232)
  {
    goto LABEL_174;
  }

  v136 = v232;
  if (v232)
  {
    v136 = 0;
    v137 = *(v119 + 1);
    v138 = v232;
    do
    {
      if (*v137++)
      {
        ++v136;
      }

      --v138;
    }

    while (v138);
  }

  v119[1] = v136;
  v231[7] = v119;
  v140 = heap_Alloc(a1[1], 24);
  if (!v140 || (v141 = v140, TierInit(a1, v140, v232, "Phone-level PARSE tier")) || (v227 = heap_Calloc(a1[1], v238, 2)) == 0)
  {
LABEL_220:
    NNFX_logMsg(a1, 0);
    v231[5] = 0;
    goto LABEL_53;
  }

  if (v238 == 1)
  {
    *(v227 + 2 * v123) = 1;
    goto LABEL_210;
  }

  v142 = v40 + 8;
  v143 = (v238 - 1);
  v144 = v227;
  do
  {
    v145 = *(v142 - 8);
    *v144++ = *(v145 + 192) == 1 || cstdlib_strcmp(*(v145 + 88), *(*v142 + 88));
    v142 += 8;
    --v143;
  }

  while (v143);
  *(v227 + 2 * v123) = 1;
  if (v238)
  {
LABEL_210:
    v153 = 0;
    v154 = 0;
    while (1)
    {
      v155 = *(*(v40 + 8 * v153) + 144) - 1;
      if (*(*(v40 + 8 * v153) + 144) != 1)
      {
        break;
      }

LABEL_217:
      if (v154 >= v232)
      {
        goto LABEL_220;
      }

      v146 = v154 + 1;
      *(*(v141 + 1) + 2 * v154++) = *(v227 + 2 * v153++);
      if (v153 == v238)
      {
        goto LABEL_200;
      }
    }

    v156 = v232 - v154;
    if (v232 < v154)
    {
      v156 = 0;
    }

    v157 = 2 * v154;
    while (v156)
    {
      *(*(v141 + 1) + v157) = 0;
      ++v154;
      v157 += 2;
      --v156;
      if (!--v155)
      {
        goto LABEL_217;
      }
    }

    goto LABEL_220;
  }

  v146 = 0;
LABEL_200:
  heap_Free(a1[1], v227);
  if (v146 != v232)
  {
    goto LABEL_220;
  }

  v147 = v232;
  if (v232)
  {
    v147 = 0;
    v148 = *(v141 + 1);
    v149 = v232;
    do
    {
      if (*v148++)
      {
        ++v147;
      }

      --v149;
    }

    while (v149);
  }

  v141[1] = v147;
  v231[5] = v141;
  v151 = heap_Alloc(a1[1], 24);
  if (!v151)
  {
    goto LABEL_339;
  }

  v152 = v151;
  if (TierInit(a1, v151, v232, "Phone-level STRESS-GROUP tier"))
  {
    goto LABEL_339;
  }

  v158 = v238;
  if (v238)
  {
    v159 = 0;
    v158 = 0;
    while (1)
    {
      v160 = *(v40 + 8 * v159);
      v161 = *(v160 + 144);
      if (v161)
      {
        break;
      }

      v165 = v159 + 1;
LABEL_248:
      v159 = v165;
      if (v165 == v238)
      {
        goto LABEL_249;
      }
    }

    v162 = 0;
    v163 = *(v160 + 184);
    v164 = (v161 - 1);
    v165 = v159 + 1;
    LODWORD(v166) = v232 - v158;
    if (v232 >= v158)
    {
      v166 = v166;
    }

    else
    {
      v166 = 0;
    }

    while (2)
    {
      if (*(v163 + 4 * v162) != 1)
      {
        goto LABEL_237;
      }

      if (v162 < v164 && *(*(v160 + 176) + 4 * v162 + 4) == 1)
      {
LABEL_236:
        v167 = 1;
      }

      else
      {
        v167 = 0;
        if (v159 < v123 && v164 == v162)
        {
          if (**(*(v40 + 8 * v165) + 176) == 1)
          {
            goto LABEL_236;
          }

LABEL_237:
          v167 = 0;
        }
      }

      if (v166 == v162)
      {
        goto LABEL_339;
      }

      if (v164 == v162 && v159 == v123)
      {
        v167 = 1;
      }

      *(*(v152 + 1) + 2 * v158 + 2 * v162++) = v167;
      if (v161 == v162)
      {
        v158 += v162;
        goto LABEL_248;
      }

      continue;
    }
  }

LABEL_249:
  if (v158 != v232)
  {
LABEL_339:
    NNFX_logMsg(a1, 0);
    v231[6] = 0;
    goto LABEL_53;
  }

  v169 = v232;
  if (v232)
  {
    v169 = 0;
    v170 = *(v152 + 1);
    v171 = v232;
    do
    {
      if (*v170++)
      {
        ++v169;
      }

      --v171;
    }

    while (v171);
  }

  v152[1] = v169;
  v231[6] = v152;
  v173 = BuildSilencePhT(a1, v40, v238, v232);
  v231[8] = v173;
  if (!v173)
  {
    goto LABEL_53;
  }

  v174 = v231;
  TierAddBoundaries(v231[6], v231[3]);
  TierAddBoundaries(v174[6], v174[8]);
  TierAddBoundaries(v174[5], v174[3]);
  TierAddBoundaries(v174[5], v174[4]);
  TierAddBoundaries(v174[5], v174[8]);
  v222 = (v234 + v229);
  v225 = heap_Calloc(a1[1], v222, 8);
  if (!v225)
  {
    goto LABEL_54;
  }

  for (j = 0; j != 13; ++j)
  {
    v176 = (v244[j])(a1, a2, a3, v40, v231, HIDWORD(v242), v242);
    v225[j] = v176;
    if (!v176)
    {
      goto LABEL_54;
    }
  }

  v224 = 0;
  v223 = 0;
  do
  {
    v177 = v225[v224];
    if (*(v177 + 4016))
    {
      for (k = 0; k < *(v177 + 4016); ++k)
      {
        v178 = *(*(v177 + 8) + 8 * k);
        v240 = 0;
        if (v178)
        {
          v179 = TrieIntGet(v241, v178, &v240);
          v177 = v225[v224];
          if (!v179)
          {
            v233 = *(v177 + 4032);
            v226 = v240;
            v243 = 0;
            v180 = heap_Calloc(a1[1], 1, 4048);
            if (!v180)
            {
              goto LABEL_343;
            }

            v181 = v180;
            v182 = (2 * v226);
            *(v180 + 4016) = v182;
            *(v180 + 4024) = *(v177 + 4024);
            if (v182 >= 1)
            {
              v183 = heap_Calloc(a1[1], v182, 8);
              *(v181 + 8) = v183;
              if (!v183 || (v184 = heap_Calloc(a1[1], *(v181 + 4016), 4), (*(v181 + 4040) = v184) == 0) || allocpppFeats(a1, v181, *(v181 + 4016), *(v181 + 4024)))
              {
LABEL_343:
                NNFX_logMsg(a1, 0);
                v225[v223 + 13] = 0;
                goto LABEL_54;
              }

              if (*(v181 + 4016) >= 1)
              {
                v185 = 0;
                v186 = *(v181 + 4040);
                do
                {
                  *(v186 + 4 * v185++) = 0;
                }

                while (v185 < *(v181 + 4016));
              }
            }

            if (v226 >= 1)
            {
              v235 = 0;
              v228 = 0;
              v230 = 1;
              do
              {
                if (v228)
                {
                  v187 = 2;
                }

                else
                {
                  v187 = 1;
                }

                BYTE4(v243) = 95;
                LOBYTE(v243) = 95;
                memset(&v243 + 5, 76, v187);
                memset(&v243 + 1, 82, v187);
                if (v230 >= 3)
                {
                  BYTE6(v243) = v230 + 48;
                  BYTE2(v243) = v230 + 48;
                }

                v188 = *(v181 + 4024);
                if (v188 >= 1)
                {
                  v189 = 0;
                  v190 = 8 * v188;
                  do
                  {
                    *(*(*v181 + 8 * v235) + v189) = 0;
                    v189 += 8;
                  }

                  while (v190 != v189);
                }

                if (v233[1] > v230)
                {
                  v191 = 0;
                  do
                  {
                    ElementInGroup = lastElementInGroup(a1, v233, v191);
                    v193 = firstElementInGroup(a1, v233, v191 + v230);
                    v194 = lastElementInGroup(a1, v233, v191 + v230);
                    if (v193 <= v194)
                    {
                      v195 = v194 - v193 + 1;
                      v196 = 8 * v193;
                      do
                      {
                        *(*(*v181 + 8 * v235) + v196) = *(*(*v177 + 8 * k) + 8 * ElementInGroup);
                        v196 += 8;
                        --v195;
                      }

                      while (v195);
                    }

                    ++v191;
                  }

                  while (v191 < (v233[1] - v230));
                }

                *(*(v181 + 8) + 8 * v235) = stringcat(a1, *(*(v177 + 8) + 8 * k), &v243 + 4);
                v197 = v235 | 1;
                v198 = *(v181 + 4024);
                if (v198 >= 1)
                {
                  v199 = 0;
                  v200 = 8 * v198;
                  do
                  {
                    *(*(*v181 + 8 * v197) + v199) = 0;
                    v199 += 8;
                  }

                  while (v200 != v199);
                }

                for (m = v230; m < v233[1]; ++m)
                {
                  v202 = lastElementInGroup(a1, v233, m);
                  v203 = firstElementInGroup(a1, v233, m - v230);
                  v204 = lastElementInGroup(a1, v233, m - v230);
                  if (v203 <= v204)
                  {
                    v205 = v204 - v203 + 1;
                    v206 = 8 * v203;
                    do
                    {
                      *(*(*v181 + 8 * v197) + v206) = *(*(*v177 + 8 * k) + 8 * v202);
                      v206 += 8;
                      --v205;
                    }

                    while (v205);
                  }
                }

                *(*(v181 + 8) + 8 * v197) = stringcat(a1, *(*(v177 + 8) + 8 * k), &v243);
                v235 += 2;
                ++v230;
                ++v228;
              }

              while (v228 != v226);
            }

            v225[v223 + 13] = v181;
            ++v223;
            v177 = v225[v224];
          }
        }
      }
    }

    ++v224;
  }

  while (v224 != 13);
  if (v223 != TrieIntSize(v241))
  {
    goto LABEL_54;
  }

  if (a10)
  {
    v225[(v222 - 1)] = a10;
  }

  v72 = mergePhoneFeaturesAtStateLevel(a1, v225, v222, v236);
  if (v72)
  {
    if (v222)
    {
      for (n = 0; n != v222; ++n)
      {
        v208 = v225[n];
        if (*(v208 + 4016))
        {
          v209 = 0;
          do
          {
            *(*(v208 + 8) + 8 * v209++) = 0;
            v208 = v225[n];
          }

          while (v209 < *(v208 + 4016));
        }
      }
    }

    v210 = HIDWORD(v242);
    if (HIDWORD(v242))
    {
      v211 = 0;
      do
      {
        v212 = *(v40 + 8 * v211);
        if (v212)
        {
          freepPWRI(a1, v212);
          *(v40 + 8 * v211) = 0;
          v210 = HIDWORD(v242);
        }

        ++v211;
      }

      while (v211 < v210);
    }

    heap_Free(a1[1], v40);
    freepPhoneTiers(a1, v231);
    if (v222)
    {
      v213 = 0;
      while (1)
      {
        v214 = v225[v213];
        if (v214)
        {
          break;
        }

LABEL_337:
        if (++v213 == v222)
        {
          goto LABEL_338;
        }
      }

      v215 = *(v214 + 4016);
      if (v215)
      {
        for (ii = 0; ii < v215; ++ii)
        {
          v217 = *(*(v214 + 8) + 8 * ii);
          if (v217)
          {
            heap_Free(a1[1], v217);
            v215 = *(v214 + 4016);
          }
        }
      }

      v218 = *(v214 + 8);
      if (v218)
      {
        heap_Free(a1[1], v218);
      }

      v219 = *(v214 + 4040);
      v220 = *v214;
      if (v219)
      {
        if (!v220)
        {
          goto LABEL_335;
        }

        if (*(v214 + 4016))
        {
          v221 = 0;
          do
          {
            freeppFeats(a1, *(*v214 + 8 * v221), *(v214 + 4024), *(*(v214 + 4040) + 4 * v221));
            *(*v214 + 8 * v221++) = 0;
          }

          while (v221 < *(v214 + 4016));
          v220 = *v214;
        }

        heap_Free(a1[1], v220);
      }

      else
      {
        freepppFeats(a1, v220, *(v214 + 4016), *(v214 + 4024));
      }

      *v214 = 0;
      v219 = *(v214 + 4040);
      if (!v219)
      {
LABEL_336:
        *(v214 + 4040) = 0;
        heap_Free(a1[1], v214);
        goto LABEL_337;
      }

LABEL_335:
      heap_Free(a1[1], v219);
      goto LABEL_336;
    }

LABEL_338:
    heap_Free(a1[1], v225);
    TrieIntFree(a1, v241);
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v72;
}

uint64_t nnextract_Deallocate(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t **a4, int a5)
{
  freeppSRI(a1, a2, a3);
  if (a4)
  {
    v8 = a4[1];
    if (v8)
    {
      v9 = *(a4 + 1004);
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          v11 = a4[1][i];
          if (v11)
          {
            heap_Free(*(a1 + 8), v11);
            a4[1][i] = 0;
            v9 = *(a4 + 1004);
          }
        }

        v8 = a4[1];
      }

      heap_Free(*(a1 + 8), v8);
      a4[1] = 0;
    }

    v12 = *a4;
    if (*a4)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = *(a4 + 1006);
        if (v14)
        {
          for (j = 0; j < v14; ++j)
          {
            v16 = *(**a4 + 8 * j);
            if (v16)
            {
              freepFeat(a1, v16);
              *(**a4 + 8 * j) = 0;
              v14 = *(a4 + 1006);
            }
          }

          v13 = **a4;
        }

        heap_Free(*(a1 + 8), v13);
        **a4 = 0;
      }

      v17 = *(a4 + 1004);
      if (v17 >= 2)
      {
        for (k = 1; k < v17; ++k)
        {
          v19 = (*a4)[k];
          if (v19)
          {
            v20 = *(a4 + 1006);
            if (v20)
            {
              v21 = 0;
              do
              {
                v22 = (*a4)[k];
                v23 = v21;
                v24 = *(v22 + 8 * v21);
                if (v24)
                {
                  v25 = a4[505];
                  if (!v25 || *(v25 + 4 * k))
                  {
                    freepFeat(a1, v24);
                    v22 = (*a4)[k];
                    v20 = *(a4 + 1006);
                  }

                  *(v22 + 8 * v23) = 0;
                }

                v21 = v23 + a5;
              }

              while (v23 + a5 < v20);
              v19 = (*a4)[k];
            }

            heap_Free(*(a1 + 8), v19);
            (*a4)[k] = 0;
            v17 = *(a4 + 1004);
          }
        }
      }

      heap_Free(*(a1 + 8), *a4);
      *a4 = 0;
    }

    v26 = a4[505];
    if (v26)
    {
      heap_Free(*(a1 + 8), v26);
    }

    a4[505] = 0;
    heap_Free(*(a1 + 8), a4);
  }

  return 0;
}

uint64_t nnextract_Skip(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a3 + 16;
  do
  {
    if (!*(*(a1 + 16 * *(a2 + 32) + 8) + 8 * v6))
    {
      break;
    }

    if (*(a3 + 4016) >= 1)
    {
      v8 = 0;
      do
      {
        if (!cstdlib_strcmp(*(*(a1 + 16 * *(a2 + 32) + 8) + 8 * v6), *(*(a3 + 8) + 8 * v8)))
        {
          *(v7 + 4 * v8) = 0;
          --*(a3 + 4020);
        }

        ++v8;
      }

      while (v8 < *(a3 + 4016));
    }

    ++v6;
  }

  while (v6 != 500);
  return 0;
}

uint64_t nnextract_Unrolled(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, _DWORD *a5)
{
  v10 = heap_Calloc(*(a1 + 8), 1, 16);
  if (v10)
  {
    v11 = v10;
    SymTabInit(v10);
    Buf = SymTabReadBuf(a1, v11, *(a2 + 16), *(a2 + 24), a3);
    if (Buf)
    {
      v13 = Buf;
    }

    else
    {
      v14 = SymTabToIntInplaceActive(a1, v11, a3, 0, 0x2Du);
      if (v14)
      {
        v13 = v14;
      }

      else
      {
        v13 = unrollNnFeatures(a1, a3, v11, a4, a5);
        if (!v13)
        {
          NNFX_logMsg(a1, 2);
          SymTabFree(a1, v11);
          heap_Free(*(a1 + 8), v11);
          return v13;
        }
      }
    }

    NNFX_logMsg(a1, 0);
  }

  else
  {
    NNFX_logMsg(a1, 0);
    return 1;
  }

  return v13;
}

uint64_t nnextract_UnrolledFromSymTab(uint64_t a1, int *a2, uint64_t *a3, uint64_t *a4, _DWORD *a5)
{
  v10 = SymTabToIntInplaceActive(a1, a2, a3, 0, 0x2Du);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = unrollNnFeatures(a1, a3, a2, a4, a5);
    if (!v11)
    {
      v12 = a1;
      v13 = 2;
      goto LABEL_5;
    }
  }

  v12 = a1;
  v13 = 0;
LABEL_5:
  NNFX_logMsg(v12, v13);
  return v11;
}

uint64_t nnextract_Rolled(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, uint64_t a6, uint64_t *a7, uint64_t a8, char *a9, uint64_t a10)
{
  v11 = *(a6 + 8);
  if (!v11)
  {
    goto LABEL_13;
  }

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  GetLingTabIndex(v11, v25);
  if (SLOWORD(v25[0]) == -1)
  {
    NNFX_logMsg(a1, 1);
  }

  if (SWORD1(v25[0]) == -1)
  {
    NNFX_logMsg(a1, 1);
  }

  LOBYTE(v24) = a5;
  NnFeatures = extractNnFeatures(a1, *(a6 + 8), v25, a9, a10, a2, a3, a4, v24, a8);
  *a7 = NnFeatures;
  if (NnFeatures)
  {
    v20 = NnFeatures;
    *(NnFeatures + 4020) = 0;
    if (*(NnFeatures + 4016) >= 1)
    {
      v21 = 0;
      do
      {
        *(NnFeatures + 16 + 4 * v21) = 1;
        ++*(NnFeatures + 4020);
        ++v21;
      }

      while (v21 < *(NnFeatures + 4016));
    }

    v22 = *(a6 + 8);
    if (*(v22 + 16 * v26 + 8))
    {
      nnextract_Skip(v22, v25, v20);
    }

    return 0;
  }

  else
  {
LABEL_13:
    NNFX_logMsg(a1, 0);
    return 1;
  }
}

uint64_t fExtGetPhoneFeats(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, void *a5, unsigned int a6, int a7)
{
  v89 = *MEMORY[0x277D85DE8];
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v14 = heap_Calloc(*(a1 + 8), 1, 4048);
  v15 = v14;
  if (v14)
  {
    *(v14 + 4016) = 8;
    *(v14 + 4024) = a7;
    *(v14 + 4032) = *a5;
    v16 = heap_Alloc(*(a1 + 8), 64);
    *(v15 + 8) = v16;
    if (!v16)
    {
      goto LABEL_107;
    }

    **(v15 + 8) = stringdup(a1, "Phone");
    *(*(v15 + 8) + 8) = stringdup(a1, "VowInSyll");
    *(*(v15 + 8) + 16) = stringdup(a1, "Voicing");
    *(*(v15 + 8) + 24) = stringdup(a1, "ConsVow");
    *(*(v15 + 8) + 32) = stringdup(a1, "BroadClass");
    *(*(v15 + 8) + 40) = stringdup(a1, "LexStress");
    *(*(v15 + 8) + 48) = stringdup(a1, "PhoneTag");
    *(*(v15 + 8) + 56) = stringdup(a1, "PhoneDiff");
    v17 = *(v15 + 4016);
    if (v17 >= 1)
    {
      v18 = *(v15 + 8);
      v19 = *(v15 + 4016);
      while (*v18)
      {
        ++v18;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_107;
    }

LABEL_7:
    v20 = heap_Alloc(*(a1 + 8), 8 * v17);
    *v15 = v20;
    if (!v20)
    {
      goto LABEL_107;
    }

    if (*(v15 + 4016))
    {
      v21 = 0;
      do
      {
        v22 = heap_Alloc(*(a1 + 8), 8 * *(v15 + 4024));
        *(*v15 + 8 * v21) = v22;
        if (!v22)
        {
          goto LABEL_107;
        }
      }

      while (++v21 < *(v15 + 4016));
    }

    v78 = a7;
    if (a6)
    {
      v23 = 0;
      v24 = 0;
      v77 = a6;
      v85 = a2;
      v86 = a3;
      while (!*(*(a4 + 8 * v23) + 144))
      {
LABEL_98:
        if (++v23 == v77)
        {
          goto LABEL_106;
        }
      }

      v25 = 0;
      v84 = 1;
      while (1)
      {
        v87 = v25;
        v26 = heap_Alloc(*(a1 + 8), 16);
        if (!v26)
        {
          goto LABEL_107;
        }

        v27 = v26;
        v28 = heap_Alloc(*(a1 + 8), 16);
        if (!v28)
        {
          goto LABEL_107;
        }

        v29 = v28;
        v30 = heap_Alloc(*(a1 + 8), 16);
        if (!v30)
        {
          goto LABEL_107;
        }

        v31 = v30;
        v32 = heap_Alloc(*(a1 + 8), 16);
        if (!v32)
        {
          goto LABEL_107;
        }

        v33 = v32;
        v34 = heap_Alloc(*(a1 + 8), 16);
        if (!v34)
        {
          goto LABEL_107;
        }

        v82 = v33;
        v83 = v34;
        v35 = heap_Alloc(*(a1 + 8), 16);
        if (!v35)
        {
          goto LABEL_107;
        }

        v36 = v35;
        v37 = heap_Alloc(*(a1 + 8), 16);
        if (!v37)
        {
          goto LABEL_107;
        }

        v81 = v37;
        v38 = heap_Alloc(*(a1 + 8), 16);
        if (!v38)
        {
          goto LABEL_107;
        }

        v80 = v38;
        v39 = *(a4 + 8 * v23);
        *(v27 + 8) = 3;
        __s = *(*(v39 + 152) + v87);
        v40 = stringdup(a1, &__s);
        *v27 = v40;
        if (!v40)
        {
          goto LABEL_107;
        }

        *(**v15 + 8 * v24) = v27;
        v41 = *(a4 + 8 * v23);
        v79 = v24;
        if (*(v41 + 192))
        {
          LOBYTE(v42) = 45;
        }

        else
        {
          if (v87)
          {
            v43 = v84;
            while (1)
            {
              v44 = v43 - 2;
              if ((v43 - 2) < 0)
              {
                break;
              }

              --v43;
              if (*(*(v41 + 184) + 4 * v44) == 1)
              {
                goto LABEL_33;
              }
            }
          }

          v43 = 0;
LABEL_33:
          v45 = *(v41 + 144) - 1;
          if (v87 <= v45)
          {
            v46 = *(v41 + 184);
            v47 = v87;
            while (*(v46 + 4 * v47) != 1)
            {
              if (++v47 > v45)
              {
                goto LABEL_39;
              }
            }

            v45 = v47;
          }

LABEL_39:
          v48 = *a3 == -1 || v43 > v45;
          v49 = v43;
          if (v48)
          {
            goto LABEL_47;
          }

          while (1)
          {
            v50 = cstdlib_strchr(**(v85 + 16 * *v86 + 8), *(*(*(a4 + 8 * v23) + 152) + v49));
            if (v50)
            {
              break;
            }

            if (++v49 > v45)
            {
              goto LABEL_47;
            }
          }

          v42 = *v50;
          if (v42 == 45)
          {
LABEL_47:
            NNFX_logMsg(a1, 1);
            if (v43 <= v45)
            {
              v51 = v43;
              do
              {
                NNFX_logMsg(a1, 1);
                ++v51;
              }

              while (v51 <= v45);
            }

            NNFX_logMsg(a1, 1);
            LOBYTE(v42) = 45;
          }
        }

        *(v29 + 8) = 3;
        __s = v42;
        v52 = stringdup(a1, &__s);
        *v29 = v52;
        if (!v52)
        {
          goto LABEL_107;
        }

        *(*(*v15 + 8) + 8 * v79) = v29;
        if (*v86 == -1)
        {
          v54 = 45;
          v53 = v85;
        }

        else
        {
          v53 = v85;
          if (cstdlib_strchr(**(v85 + 16 * v86[1] + 8), *(*(*(a4 + 8 * v23) + 152) + v87)))
          {
            v54 = 86;
          }

          else
          {
            v54 = 45;
          }
        }

        *(v31 + 8) = 2;
        *v31 = v54;
        *(*(*v15 + 16) + 8 * v79) = v31;
        v55 = *v86;
        if (v55 == -1)
        {
          v58 = 45;
          v56 = v87;
        }

        else
        {
          v56 = v87;
          v57 = *(*(*(a4 + 8 * v23) + 152) + v87);
          if (v57 == SilPhone)
          {
            v58 = 45;
          }

          else
          {
            v59 = cstdlib_strchr(**(v53 + 16 * v55 + 8), v57);
            v56 = v87;
            if (v59)
            {
              v58 = 86;
            }

            else
            {
              v58 = 67;
            }
          }
        }

        *v82 = v58;
        *(*(*v15 + 24) + 8 * v79) = v82;
        v60 = *(a4 + 8 * v23);
        *(v82 + 8) = 2;
        v61 = *(*(v60 + 152) + v56);
        v62 = *(*(v60 + 152) + v56);
        if (v62 == SilPhone)
        {
          v63 = 45;
        }

        else
        {
          v64 = v86[2];
          if (v64 != -1)
          {
            v65 = *(v53 + 16 * v64 + 8);
            if (v65)
            {
              if (cstdlib_strchr(*v65, v61))
              {
                v63 = 77;
LABEL_86:
                v56 = v87;
                goto LABEL_87;
              }

              LOBYTE(v62) = *(*(*(a4 + 8 * v23) + 152) + v87);
            }
          }

          v66 = v86[3];
          if (v66 != -1)
          {
            v67 = *(v53 + 16 * v66 + 8);
            if (v67)
            {
              if (cstdlib_strchr(*v67, v62))
              {
                v63 = 68;
                goto LABEL_86;
              }

              LOBYTE(v62) = *(*(*(a4 + 8 * v23) + 152) + v87);
            }
          }

          if (check_phn_class(v53, v86[4], v62))
          {
            v63 = 65;
            goto LABEL_86;
          }

          if (check_phn_class(v53, v86[5], *(*(*(a4 + 8 * v23) + 152) + v87)))
          {
            v63 = 70;
            goto LABEL_86;
          }

          if (check_phn_class(v53, v86[6], *(*(*(a4 + 8 * v23) + 152) + v87)))
          {
            v63 = 83;
            goto LABEL_86;
          }

          if (check_phn_class(v53, v86[7], *(*(*(a4 + 8 * v23) + 152) + v87)))
          {
            v63 = 76;
            goto LABEL_86;
          }

          if (check_phn_class(v53, v86[8], *(*(*(a4 + 8 * v23) + 152) + v87)))
          {
            v63 = 78;
            goto LABEL_86;
          }

          v75 = check_phn_class(v53, v86[9], *(*(*(a4 + 8 * v23) + 152) + v87));
          v56 = v87;
          if (v75)
          {
            v63 = 71;
          }

          else
          {
            v63 = 45;
          }
        }

LABEL_87:
        *(v83 + 8) = 2;
        *v83 = v63;
        *(*(*v15 + 32) + 8 * v79) = v83;
        v68 = *(a4 + 8 * v23);
        *(v36 + 8) = 2;
        v69 = *(*(v68 + 176) + 4 * v56);
        if (v69)
        {
          v70 = v69 + 48;
        }

        else
        {
          v70 = 45;
        }

        *v36 = v70;
        *(*(*v15 + 40) + 8 * v79) = v36;
        *(v81 + 8) = 3;
        v71 = v56;
        v72 = stringdup(a1, *(*(*(a4 + 8 * v23) + 168) + 8 * v56));
        *v81 = v72;
        if (!v72)
        {
          goto LABEL_107;
        }

        *(*(*v15 + 48) + 8 * v79) = v81;
        v73 = *(a4 + 8 * v23);
        *(v80 + 8) = 2;
        v74 = *(*(v73 + 160) + v71);
        if (v74 == 32)
        {
          LOBYTE(v74) = 45;
        }

        *v80 = v74;
        *(*(*v15 + 56) + 8 * v79) = v80;
        v24 = v79 + 1;
        v25 = v71 + 1;
        ++v84;
        a3 = v86;
        if (v25 >= *(*(a4 + 8 * v23) + 144))
        {
          goto LABEL_98;
        }
      }
    }

    v24 = 0;
LABEL_106:
    if (v24 != v78)
    {
LABEL_107:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v15;
}

uint64_t fExtGetLexicalFeats(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v14 = heap_Calloc(*(a1 + 8), 1, 4048);
  v15 = v14;
  if (v14)
  {
    *(v14 + 4016) = 15;
    *(v14 + 4024) = a7;
    *(v14 + 4032) = *(a5 + 16);
    v16 = heap_Alloc(*(a1 + 8), 120);
    *(v15 + 8) = v16;
    if (!v16)
    {
      goto LABEL_111;
    }

    **(v15 + 8) = stringdup(a1, "Prominence");
    *(*(v15 + 8) + 8) = stringdup(a1, "POS");
    *(*(v15 + 8) + 16) = stringdup(a1, "nluPOS");
    *(*(v15 + 8) + 24) = stringdup(a1, "nluCLS");
    *(*(v15 + 8) + 32) = stringdup(a1, "nluPNC");
    *(*(v15 + 8) + 40) = stringdup(a1, "nluCMP");
    *(*(v15 + 8) + 48) = stringdup(a1, "nluBDS");
    *(*(v15 + 8) + 56) = stringdup(a1, "nluCPS");
    *(*(v15 + 8) + 64) = stringdup(a1, "IsFxnWord");
    *(*(v15 + 8) + 72) = stringdup(a1, "IsWHWord");
    *(*(v15 + 8) + 80) = stringdup(a1, "IsAuxWord");
    *(*(v15 + 8) + 88) = stringdup(a1, "IsConjWord");
    *(*(v15 + 8) + 96) = stringdup(a1, "IsAdposWord");
    *(*(v15 + 8) + 104) = stringdup(a1, "CommonWord");
    *(*(v15 + 8) + 112) = stringdup(a1, "EndPhraseType");
    v17 = *(v15 + 4016);
    if (v17)
    {
      v18 = *(v15 + 8);
      v19 = *(v15 + 4016);
      while (*v18)
      {
        ++v18;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_111;
    }

LABEL_7:
    v20 = heap_Alloc(*(a1 + 8), 8 * v17);
    *v15 = v20;
    if (!v20)
    {
      goto LABEL_111;
    }

    if (*(v15 + 4016))
    {
      v21 = 0;
      do
      {
        v22 = heap_Alloc(*(a1 + 8), 8 * *(v15 + 4024));
        *(*v15 + 8 * v21) = v22;
        if (!v22)
        {
          goto LABEL_111;
        }
      }

      while (++v21 < *(v15 + 4016));
    }

    v23 = *(a5 + 16);
    if (v23[1] != a6 || *v23 != a7)
    {
LABEL_111:
      NNFX_logMsg(a1, 0);
      return 0;
    }

    if (a6)
    {
      v24 = 0;
      v25 = 0;
      v26 = -1;
      while (1)
      {
        ElementInGroup = firstElementInGroup(a1, v23, v24);
        if (ElementInGroup == -1)
        {
          goto LABEL_111;
        }

        v104 = lastElementInGroup(a1, *(a5 + 16), v24);
        if (v104 == -1 || ElementInGroup != v26 + 1 || v104 >= a7)
        {
          goto LABEL_111;
        }

        if (v25)
        {
          heap_Free(*(a1 + 8), v25);
        }

        v27 = stringdup(a1, *(*(a4 + 8 * v24) + 32));
        if (!v27)
        {
          goto LABEL_111;
        }

        v25 = v27;
        v102 = v24;
        if (cstdlib_strlen(v27))
        {
          v28 = 0;
          v29 = 1;
          do
          {
            v25[v28] = cstdlib_tolower(v25[v28]);
            v28 = v29;
          }

          while (cstdlib_strlen(v25) > v29++);
        }

        v105 = check_lex_feat(a2, v25, a3[11]);
        v100 = check_lex_feat(a2, v25, a3[12]);
        v98 = check_lex_feat(a2, v25, a3[14]);
        v96 = check_lex_feat(a2, v25, a3[13]);
        v31 = check_lex_feat(a2, v25, a3[15]);
        v32 = a3[10];
        v33 = -1;
        if (v32 != -1)
        {
          v34 = v102;
          if (v32 > 499)
          {
            goto LABEL_37;
          }

          if (!*(a2 + 16 * a3[10] + 8))
          {
            v33 = -1;
            goto LABEL_37;
          }

          v35 = 0;
          while (1)
          {
            v36 = *(*(a2 + 16 * a3[10] + 8) + 8 * v35);
            if (!v36)
            {
LABEL_33:
              v33 = -1;
              goto LABEL_36;
            }

            if (!cstdlib_strcmp(v25, v36))
            {
              break;
            }

            if (++v35 == 500)
            {
              goto LABEL_33;
            }
          }

          v33 = v35;
        }

LABEL_36:
        v34 = v102;
LABEL_37:
        v95 = v33;
        if (ElementInGroup <= v104)
        {
          v107 = 0;
          if (v105)
          {
            v37 = 49;
          }

          else
          {
            v37 = 45;
          }

          v82 = v37;
          if (v100)
          {
            v38 = 49;
          }

          else
          {
            v38 = 45;
          }

          v81 = v38;
          if (v98)
          {
            v39 = 49;
          }

          else
          {
            v39 = 45;
          }

          v80 = v39;
          if (v96)
          {
            v40 = 49;
          }

          else
          {
            v40 = 45;
          }

          if (v31)
          {
            v41 = 49;
          }

          else
          {
            v41 = 45;
          }

          v78 = v41;
          v79 = v40;
          v106 = 8 * ElementInGroup;
          v84 = a2;
          do
          {
            v42 = heap_Alloc(*(a1 + 8), 16);
            if (!v42)
            {
              goto LABEL_111;
            }

            v43 = v42;
            v44 = heap_Alloc(*(a1 + 8), 16);
            if (!v44)
            {
              goto LABEL_111;
            }

            v99 = v44;
            v101 = heap_Alloc(*(a1 + 8), 16);
            if (!v101)
            {
              goto LABEL_111;
            }

            v45 = heap_Alloc(*(a1 + 8), 16);
            if (!v45)
            {
              goto LABEL_111;
            }

            v97 = v45;
            v94 = heap_Alloc(*(a1 + 8), 16);
            if (!v94)
            {
              goto LABEL_111;
            }

            v46 = heap_Alloc(*(a1 + 8), 16);
            if (!v46)
            {
              goto LABEL_111;
            }

            v93 = v46;
            v92 = heap_Alloc(*(a1 + 8), 16);
            if (!v92)
            {
              goto LABEL_111;
            }

            v47 = heap_Alloc(*(a1 + 8), 16);
            if (!v47)
            {
              goto LABEL_111;
            }

            v91 = v47;
            v48 = heap_Alloc(*(a1 + 8), 16);
            if (!v48)
            {
              goto LABEL_111;
            }

            v49 = v48;
            v50 = heap_Alloc(*(a1 + 8), 16);
            if (!v50)
            {
              goto LABEL_111;
            }

            v90 = v50;
            v51 = heap_Alloc(*(a1 + 8), 16);
            if (!v51)
            {
              goto LABEL_111;
            }

            v89 = v51;
            v52 = heap_Alloc(*(a1 + 8), 16);
            if (!v52)
            {
              goto LABEL_111;
            }

            v88 = v52;
            v53 = heap_Alloc(*(a1 + 8), 16);
            if (!v53)
            {
              goto LABEL_111;
            }

            v86 = v53;
            v87 = heap_Alloc(*(a1 + 8), 16);
            if (!v87)
            {
              goto LABEL_111;
            }

            v54 = heap_Alloc(*(a1 + 8), 16);
            if (!v54)
            {
              goto LABEL_111;
            }

            v85 = v49;
            v83 = v54;
            *(v43 + 8) = 2;
            v55 = *(*(a4 + 8 * v102) + 20);
            v56 = v55 ? v55 + 48 : 45;
            *v43 = v56;
            *(**v15 + v106 + 8 * v107) = v43;
            *(v99 + 8) = 3;
            if (cstdlib_strlen(*(*(a4 + 8 * v102) + 56)))
            {
              v57 = stringdup(a1, *(*(a4 + 8 * v102) + 56));
              *v99 = v57;
              v58 = v101;
              if (!v57)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v59 = stringdup(a1, "-");
              *v99 = v59;
              v58 = v101;
              if (!v59)
              {
                goto LABEL_111;
              }
            }

            *(*(*v15 + 8) + v106 + 8 * v107) = v99;
            *(v58 + 8) = 3;
            v34 = v102;
            if (cstdlib_strlen(*(*(a4 + 8 * v102) + 80)))
            {
              v60 = stringdup(a1, *(*(a4 + 8 * v102) + 80));
              *v58 = v60;
              if (!v60)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v61 = stringdup(a1, "-");
              *v58 = v61;
              if (!v61)
              {
                goto LABEL_111;
              }
            }

            *(*(*v15 + 16) + v106 + 8 * v107) = v58;
            *(v97 + 8) = 3;
            if (cstdlib_strlen(*(*(a4 + 8 * v102) + 96)))
            {
              v62 = stringdup(a1, *(*(a4 + 8 * v102) + 96));
              *v97 = v62;
              a2 = v84;
              if (!v62)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v63 = stringdup(a1, "-");
              *v97 = v63;
              a2 = v84;
              if (!v63)
              {
                goto LABEL_111;
              }
            }

            *(*(*v15 + 24) + v106 + 8 * v107) = v97;
            *(v94 + 8) = 3;
            if (cstdlib_strlen(*(*(a4 + 8 * v102) + 112)))
            {
              v64 = stringdup(a1, *(*(a4 + 8 * v102) + 112));
              *v94 = v64;
              if (!v64)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v65 = stringdup(a1, "-");
              *v94 = v65;
              if (!v65)
              {
                goto LABEL_111;
              }
            }

            *(*(*v15 + 32) + v106 + 8 * v107) = v94;
            *(v93 + 8) = 3;
            if (cstdlib_strlen(*(*(a4 + 8 * v102) + 104)))
            {
              v66 = stringdup(a1, *(*(a4 + 8 * v102) + 104));
              *v93 = v66;
              if (!v66)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v67 = stringdup(a1, "-");
              *v93 = v67;
              if (!v67)
              {
                goto LABEL_111;
              }
            }

            *(*(*v15 + 40) + v106 + 8 * v107) = v93;
            *(v92 + 8) = 3;
            if (cstdlib_strlen(*(*(a4 + 8 * v102) + 120)))
            {
              v68 = stringdup(a1, *(*(a4 + 8 * v102) + 120));
              *v92 = v68;
              if (!v68)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v69 = stringdup(a1, "-");
              *v92 = v69;
              if (!v69)
              {
                goto LABEL_111;
              }
            }

            *(*(*v15 + 48) + v106 + 8 * v107) = v92;
            *(v91 + 8) = 3;
            if (cstdlib_strlen(*(*(a4 + 8 * v102) + 128)))
            {
              v70 = stringdup(a1, *(*(a4 + 8 * v102) + 128));
              *v91 = v70;
              if (!v70)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v71 = stringdup(a1, "-");
              *v91 = v71;
              if (!v71)
              {
                goto LABEL_111;
              }
            }

            *(*(*v15 + 56) + v106 + 8 * v107) = v91;
            *(v85 + 8) = 2;
            *v85 = v82;
            *(*(*v15 + 64) + v106 + 8 * v107) = v85;
            *v90 = v81;
            *(*(*v15 + 72) + v106 + 8 * v107) = v90;
            *(v90 + 8) = 2;
            *(v89 + 8) = 2;
            *v89 = v80;
            *(*(*v15 + 80) + v106 + 8 * v107) = v89;
            v88[2] = 2;
            *v88 = v79;
            *(*(*v15 + 88) + v106 + 8 * v107) = v88;
            *(v86 + 8) = 2;
            *v86 = v78;
            *(*(*v15 + 96) + v106 + 8 * v107) = v86;
            *(v87 + 8) = 3;
            if (v95 == -1)
            {
              v73 = a1;
              v72 = "-";
            }

            else
            {
              v72 = *(*(a2 + 16 * a3[10] + 8) + 8 * v95);
              v73 = a1;
            }

            v74 = stringdup(v73, v72);
            *v87 = v74;
            if (!v74)
            {
              goto LABEL_111;
            }

            v75 = v107;
            *(*(*v15 + 104) + v106 + 8 * v107) = v87;
            *(v83 + 8) = 2;
            v76 = **(*(a4 + 8 * v102) + 48);
            if (!v76)
            {
              v76 = 45;
            }

            *v83 = v76;
            *(*(*v15 + 112) + v106 + 8 * v107++) = v83;
          }

          while (~v104 + ElementInGroup + v75 + 1);
        }

        v24 = v34 + 1;
        v23 = *(a5 + 16);
        v26 = v104;
        if (v24 >= v23[1])
        {
          heap_Free(*(a1 + 8), v25);
          return v15;
        }
      }
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v15;
}

uint64_t fExtGetParseFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v12 = heap_Calloc(*(a1 + 8), 1, 4048);
  v13 = v12;
  if (!v12)
  {
    NNFX_logMsg(a1, 0);
    return v13;
  }

  *(v12 + 4016) = 1;
  *(v12 + 4024) = a7;
  *(v12 + 4032) = *(a5 + 40);
  v14 = heap_Alloc(*(a1 + 8), 8);
  *(v13 + 8) = v14;
  if (!v14)
  {
    goto LABEL_36;
  }

  **(v13 + 8) = stringdup(a1, "SyntaxTag");
  if (!**(v13 + 8))
  {
    goto LABEL_36;
  }

  v15 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4016));
  *v13 = v15;
  if (!v15)
  {
    goto LABEL_36;
  }

  if (*(v13 + 4016))
  {
    v16 = 0;
    do
    {
      v17 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4024));
      *(*v13 + 8 * v16) = v17;
      if (!v17)
      {
        goto LABEL_36;
      }
    }

    while (++v16 < *(v13 + 4016));
  }

  v18 = *(a5 + 40);
  if (*v18 != a7)
  {
LABEL_36:
    NNFX_logMsg(a1, 0);
    return 0;
  }

  if (v18[1])
  {
    v19 = 0;
    v20 = -1;
    while (1)
    {
      ElementInGroup = firstElementInGroup(a1, v18, v19);
      if (ElementInGroup == -1)
      {
        goto LABEL_36;
      }

      v22 = ElementInGroup;
      v23 = lastElementInGroup(a1, *(a5 + 40), v19);
      if (v23 == -1)
      {
        goto LABEL_36;
      }

      if (v22 != v20 + 1)
      {
        goto LABEL_36;
      }

      v24 = v23;
      if (v23 >= a7 || !a6)
      {
        goto LABEL_36;
      }

      v25 = 0;
      v26 = 0;
      v38 = v23;
      while (*(*(a4 + 8 * v26) + 140) != v22)
      {
        ++v26;
        v25 += 0x100000000;
        if (a6 == v26)
        {
          goto LABEL_36;
        }
      }

      v40 = v19;
      v27 = 0;
      v28 = 0;
      while (*(*(a4 + 8 * v28) + 140) + *(*(a4 + 8 * v28) + 144) - 1 != v23)
      {
        ++v28;
        v27 += 0x100000000;
        if (a6 == v28)
        {
          goto LABEL_36;
        }
      }

      v39 = v27 >> 29;
      if (cstdlib_strcmp(*(*(a4 + (v25 >> 29)) + 88), *(*(a4 + (v27 >> 29)) + 88)))
      {
        goto LABEL_36;
      }

      v29 = v40;
      if (v22 <= v24)
      {
        v30 = 8 * v22;
        v31 = v24 - v22 + 1;
        do
        {
          v32 = heap_Alloc(*(a1 + 8), 16);
          if (!v32)
          {
            goto LABEL_36;
          }

          v33 = v32;
          *(v32 + 8) = 3;
          if (cstdlib_strcmp(*(*(a4 + v39) + 88), ""))
          {
            v34 = *(*(a4 + v39) + 88);
            v35 = a1;
          }

          else
          {
            v35 = a1;
            v34 = "-";
          }

          v36 = stringdup(v35, v34);
          *v33 = v36;
          if (!v36)
          {
            goto LABEL_36;
          }

          *(**v13 + v30) = v33;
          v30 += 8;
          --v31;
          v29 = v40;
        }

        while (v31);
      }

      v19 = v29 + 1;
      v18 = *(a5 + 40);
      v20 = v38;
      if (v19 >= v18[1])
      {
        return v13;
      }
    }
  }

  return v13;
}

uint64_t fExtGetPhraseFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v12 = heap_Calloc(*(a1 + 8), 1, 4048);
  v13 = v12;
  if (!v12)
  {
    NNFX_logMsg(a1, 0);
    return v13;
  }

  *(v12 + 4016) = 1;
  *(v12 + 4024) = a7;
  *(v12 + 4032) = *(a5 + 24);
  v14 = heap_Alloc(*(a1 + 8), 8);
  *(v13 + 8) = v14;
  if (!v14)
  {
    goto LABEL_29;
  }

  **(v13 + 8) = stringdup(a1, "PhraseBoundaryStrength");
  if (!**(v13 + 8))
  {
    goto LABEL_29;
  }

  v15 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4016));
  *v13 = v15;
  if (!v15)
  {
    goto LABEL_29;
  }

  if (*(v13 + 4016))
  {
    v16 = 0;
    do
    {
      v17 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4024));
      *(*v13 + 8 * v16) = v17;
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    while (++v16 < *(v13 + 4016));
  }

  v18 = *(a5 + 24);
  if (*v18 != a7)
  {
LABEL_29:
    NNFX_logMsg(a1, 0);
    return 0;
  }

  if (v18[1])
  {
    v19 = 0;
    v20 = -1;
    while (1)
    {
      ElementInGroup = firstElementInGroup(a1, v18, v19);
      if (ElementInGroup == -1)
      {
        goto LABEL_29;
      }

      v22 = ElementInGroup;
      v23 = lastElementInGroup(a1, *(a5 + 24), v19);
      if (v23 == -1 || v22 != v20 + 1 || v23 >= a7 || !a6)
      {
        goto LABEL_29;
      }

      v24 = 0;
      v25 = a4;
      v26 = a6;
      while (*(*v25 + 140) + *(*v25 + 144) - 1 != v23)
      {
        v24 += 0x100000000;
        v25 += 8;
        if (!--v26)
        {
          goto LABEL_29;
        }
      }

      v33 = v23;
      v34 = v19;
      if (v22 <= v23)
      {
        v27 = v24 >> 29;
        v28 = 8 * v22;
        v29 = v23 - v22 + 1;
        do
        {
          v30 = heap_Alloc(*(a1 + 8), 16);
          if (!v30)
          {
            goto LABEL_29;
          }

          *(v30 + 8) = 2;
          v31 = *(*(a4 + v27) + 136);
          if (v31 == 78)
          {
            LOBYTE(v31) = 45;
          }

          *v30 = v31;
          *(**v13 + v28) = v30;
          v28 += 8;
        }

        while (--v29);
      }

      v20 = v33;
      v19 = v34 + 1;
      v18 = *(a5 + 24);
      if (v34 + 1 >= v18[1])
      {
        return v13;
      }
    }
  }

  return v13;
}

uint64_t fExtGetPunctFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  NNFX_logMsg(a1, 3);
  v12 = heap_Calloc(*(a1 + 8), 1, 4048);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4016) = 1;
    *(v12 + 4024) = a7;
    *(v12 + 4032) = *(a5 + 32);
    v14 = heap_Alloc(*(a1 + 8), 8);
    *(v13 + 8) = v14;
    if (!v14)
    {
      goto LABEL_59;
    }

    **(v13 + 8) = stringdup(a1, "PunctMark");
    if (!**(v13 + 8))
    {
      goto LABEL_59;
    }

    v15 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4016));
    *v13 = v15;
    if (!v15)
    {
      goto LABEL_59;
    }

    if (*(v13 + 4016))
    {
      v16 = 0;
      do
      {
        v17 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4024));
        *(*v13 + 8 * v16) = v17;
        if (!v17)
        {
          goto LABEL_59;
        }
      }

      while (++v16 < *(v13 + 4016));
    }

    v18 = *(a5 + 32);
    if (*v18 != a7)
    {
LABEL_59:
      NNFX_logMsg(a1, 0);
      return 0;
    }

    if (v18[1])
    {
      v19 = 0;
      v47 = a6;
      __s = 0;
      v20 = -1;
      while (1)
      {
        ElementInGroup = firstElementInGroup(a1, v18, v19);
        if (ElementInGroup == -1)
        {
          goto LABEL_59;
        }

        v22 = ElementInGroup;
        v23 = lastElementInGroup(a1, *(a5 + 32), v19);
        if (v23 == -1 || v22 != v20 + 1 || v23 >= a7 || !a6)
        {
          goto LABEL_59;
        }

        v24 = 0;
        v25 = 0;
        v46 = v23;
        while (*(*(a4 + 8 * v25) + 140) != v22)
        {
          ++v25;
          v24 += 0x100000000;
          if (v47 == v25)
          {
            goto LABEL_59;
          }
        }

        v45 = v19;
        v44 = a6;
        v26 = 0;
        v27 = 0;
        while (*(*(a4 + 8 * v27) + 140) + *(*(a4 + 8 * v27) + 144) - 1 != v23)
        {
          ++v27;
          ++v26;
          if (v47 == v27)
          {
            goto LABEL_59;
          }
        }

        if (__s)
        {
          v43 = v23;
          heap_Free(*(a1 + 8), __s);
          v23 = v43;
        }

        if (v27 < v25)
        {
LABEL_31:
          __s = 0;
          a6 = v44;
          v30 = v45;
          goto LABEL_44;
        }

        v28 = a4 + 8 * v26;
        v29 = v26 + 1;
        while (*(*v28 + 192))
        {
          v28 -= 8;
          if (--v29 <= v24 >> 32)
          {
            goto LABEL_31;
          }
        }

        v31 = v23;
        v32 = cstdlib_strlen(*(*v28 + 32));
        if (!v32)
        {
          goto LABEL_41;
        }

        v33 = *(*(*v28 + 32) + (v32 - 1));
        if (v33 > 0x39)
        {
          a6 = v44;
          v30 = v45;
          if (v33 == 58)
          {
            v34 = "COLON";
          }

          else
          {
            if (v33 != 59)
            {
              if (v33 == 63)
              {
                v34 = "QMARK";
              }

              else
              {
LABEL_41:
                v34 = "PERIOD";
              }

              a6 = v44;
              v30 = v45;
              goto LABEL_43;
            }

            v34 = "SEMICOLON";
          }
        }

        else
        {
          a6 = v44;
          v30 = v45;
          if (v33 == 33)
          {
            v34 = "EXCL";
          }

          else
          {
            if (v33 != 44)
            {
              goto LABEL_41;
            }

            v34 = "COMMA";
          }
        }

LABEL_43:
        v35 = stringdup(a1, v34);
        v23 = v31;
        __s = v35;
        if (!v35)
        {
          goto LABEL_59;
        }

LABEL_44:
        if (v22 <= v23)
        {
          v36 = 8 * v22;
          v37 = v23 - v22 + 1;
          do
          {
            v38 = heap_Alloc(*(a1 + 8), 16);
            if (!v38)
            {
              goto LABEL_59;
            }

            v39 = v38;
            *(v38 + 8) = 3;
            if (__s)
            {
              v40 = stringdup(a1, __s);
              *v39 = v40;
              if (!v40)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v41 = stringdup(a1, "-");
              *v39 = v41;
              if (!v41)
              {
                goto LABEL_59;
              }
            }

            *(**v13 + v36) = v39;
            v36 += 8;
          }

          while (--v37);
        }

        v19 = v30 + 1;
        v18 = *(a5 + 32);
        v20 = v46;
        if (v19 >= v18[1])
        {
          if (__s)
          {
            heap_Free(*(a1 + 8), __s);
          }

          return v13;
        }
      }
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v13;
}

uint64_t **fExtGetSyll2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 24;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 192);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_34;
    }

    *v11[1] = stringdup(a1, "Syll2StrGrpLCtInt");
    v11[1][1] = stringdup(a1, "Syll2StrGrpRCtInt");
    v11[1][2] = stringdup(a1, "Syll2StrGrpLCtFloat");
    v11[1][3] = stringdup(a1, "Syll2StrGrpRCtFloat");
    v11[1][4] = stringdup(a1, "Syll2WordLCtInt");
    v11[1][5] = stringdup(a1, "Syll2WordRCtInt");
    v11[1][6] = stringdup(a1, "Syll2WordLCtFloat");
    v11[1][7] = stringdup(a1, "Syll2WordRCtFloat");
    v11[1][8] = stringdup(a1, "Syll2StxGrpLCtInt");
    v11[1][9] = stringdup(a1, "Syll2StxGrpRCtInt");
    v11[1][10] = stringdup(a1, "Syll2StxGrpLCtFloat");
    v11[1][11] = stringdup(a1, "Syll2StxGrpRCtFloat");
    v11[1][12] = stringdup(a1, "Syll2PhraseLCtInt");
    v11[1][13] = stringdup(a1, "Syll2PhraseRCtInt");
    v11[1][14] = stringdup(a1, "Syll2PhraseLCtFloat");
    v11[1][15] = stringdup(a1, "Syll2PhraseRCtFloat");
    v11[1][16] = stringdup(a1, "Syll2PunctLCtInt");
    v11[1][17] = stringdup(a1, "Syll2PunctRCtInt");
    v11[1][18] = stringdup(a1, "Syll2PunctLCtFloat");
    v11[1][19] = stringdup(a1, "Syll2PunctRCtFloat");
    v11[1][20] = stringdup(a1, "Syll2SentLCtInt");
    v11[1][21] = stringdup(a1, "Syll2SentRCtInt");
    v11[1][22] = stringdup(a1, "Syll2SentLCtFloat");
    v11[1][23] = stringdup(a1, "Syll2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_34;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, a5[1], a5[6]), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, a5[1], a5[6]), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0) || (v21 = getLeftCounts(a1, a5[1], a5[2]), ((*v11)[4] = v21) == 0) || (v22 = getRightCounts(a1, a5[1], a5[2]), ((*v11)[5] = v22) == 0) || (v23 = normalizeCounts(a1, (*v11)[4], (*v11)[5], v7), ((*v11)[6] = v23) == 0) || (v24 = normalizeCounts(a1, (*v11)[5], (*v11)[4], v7), ((*v11)[7] = v24) == 0) || (v25 = getLeftCounts(a1, a5[1], a5[5]), ((*v11)[8] = v25) == 0) || (v26 = getRightCounts(a1, a5[1], a5[5]), ((*v11)[9] = v26) == 0) || (v27 = normalizeCounts(a1, (*v11)[8], (*v11)[9], v7), ((*v11)[10] = v27) == 0) || (v28 = normalizeCounts(a1, (*v11)[9], (*v11)[8], v7), ((*v11)[11] = v28) == 0) || (v29 = getLeftCounts(a1, a5[1], a5[3]), ((*v11)[12] = v29) == 0) || (v30 = getRightCounts(a1, a5[1], a5[3]), ((*v11)[13] = v30) == 0) || (v31 = normalizeCounts(a1, (*v11)[12], (*v11)[13], v7), ((*v11)[14] = v31) == 0) || (v32 = normalizeCounts(a1, (*v11)[13], (*v11)[12], v7), ((*v11)[15] = v32) == 0) || (v33 = getLeftCounts(a1, a5[1], a5[4]), ((*v11)[16] = v33) == 0) || (v34 = getRightCounts(a1, a5[1], a5[4]), ((*v11)[17] = v34) == 0) || (v35 = normalizeCounts(a1, (*v11)[16], (*v11)[17], v7), ((*v11)[18] = v35) == 0) || (v36 = normalizeCounts(a1, (*v11)[17], (*v11)[16], v7), ((*v11)[19] = v36) == 0) || (v37 = getLeftCounts(a1, a5[1], a5[7]), ((*v11)[20] = v37) == 0) || (v38 = getRightCounts(a1, a5[1], a5[7]), ((*v11)[21] = v38) == 0) || (v39 = normalizeCounts(a1, (*v11)[20], (*v11)[21], v7), ((*v11)[22] = v39) == 0) || (v40 = normalizeCounts(a1, (*v11)[21], (*v11)[20], v7), ((*v11)[23] = v40) == 0))
    {
LABEL_34:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetStrGrp2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 8;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 64);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_18;
    }

    *v11[1] = stringdup(a1, "StrGrp2PhraseLCtInt");
    v11[1][1] = stringdup(a1, "StrGrp2PhraseRCtInt");
    v11[1][2] = stringdup(a1, "StrGrp2PhraseLCtFloat");
    v11[1][3] = stringdup(a1, "StrGrp2PhraseRCtFloat");
    v11[1][4] = stringdup(a1, "StrGrp2SentLCtInt");
    v11[1][5] = stringdup(a1, "StrGrp2SentRCtInt");
    v11[1][6] = stringdup(a1, "StrGrp2SentLCtFloat");
    v11[1][7] = stringdup(a1, "StrGrp2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_18;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, a5[6], a5[3]), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, a5[6], a5[3]), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0) || (v21 = getLeftCounts(a1, a5[6], a5[7]), ((*v11)[4] = v21) == 0) || (v22 = getRightCounts(a1, a5[6], a5[7]), ((*v11)[5] = v22) == 0) || (v23 = normalizeCounts(a1, (*v11)[4], (*v11)[5], v7), ((*v11)[6] = v23) == 0) || (v24 = normalizeCounts(a1, (*v11)[5], (*v11)[4], v7), ((*v11)[7] = v24) == 0))
    {
LABEL_18:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetWord2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 16;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 128);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_26;
    }

    *v11[1] = stringdup(a1, "Word2StxGrpLCtInt");
    v11[1][1] = stringdup(a1, "Word2StxGrpRCtInt");
    v11[1][2] = stringdup(a1, "Word2StxGrpLCtFloat");
    v11[1][3] = stringdup(a1, "Word2StxGrpRCtFloat");
    v11[1][4] = stringdup(a1, "Word2PhraseLCtInt");
    v11[1][5] = stringdup(a1, "Word2PhraseRCtInt");
    v11[1][6] = stringdup(a1, "Word2PhraseLCtFloat");
    v11[1][7] = stringdup(a1, "Word2PhraseRCtFloat");
    v11[1][8] = stringdup(a1, "Word2PunctLCtInt");
    v11[1][9] = stringdup(a1, "Word2PunctRCtInt");
    v11[1][10] = stringdup(a1, "Word2PunctLCtFloat");
    v11[1][11] = stringdup(a1, "Word2PunctRCtFloat");
    v11[1][12] = stringdup(a1, "Word2SentLCtInt");
    v11[1][13] = stringdup(a1, "Word2SentRCtInt");
    v11[1][14] = stringdup(a1, "Word2SentLCtFloat");
    v11[1][15] = stringdup(a1, "Word2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_26;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, a5[2], a5[5]), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, a5[2], a5[5]), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0) || (v21 = getLeftCounts(a1, a5[2], a5[3]), ((*v11)[4] = v21) == 0) || (v22 = getRightCounts(a1, a5[2], a5[3]), ((*v11)[5] = v22) == 0) || (v23 = normalizeCounts(a1, (*v11)[4], (*v11)[5], v7), ((*v11)[6] = v23) == 0) || (v24 = normalizeCounts(a1, (*v11)[5], (*v11)[4], v7), ((*v11)[7] = v24) == 0) || (v25 = getLeftCounts(a1, a5[2], a5[4]), ((*v11)[8] = v25) == 0) || (v26 = getRightCounts(a1, a5[2], a5[4]), ((*v11)[9] = v26) == 0) || (v27 = normalizeCounts(a1, (*v11)[8], (*v11)[9], v7), ((*v11)[10] = v27) == 0) || (v28 = normalizeCounts(a1, (*v11)[9], (*v11)[8], v7), ((*v11)[11] = v28) == 0) || (v29 = getLeftCounts(a1, a5[2], a5[7]), ((*v11)[12] = v29) == 0) || (v30 = getRightCounts(a1, a5[2], a5[7]), ((*v11)[13] = v30) == 0) || (v31 = normalizeCounts(a1, (*v11)[12], (*v11)[13], v7), ((*v11)[14] = v31) == 0) || (v32 = normalizeCounts(a1, (*v11)[13], (*v11)[12], v7), ((*v11)[15] = v32) == 0))
    {
LABEL_26:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetParse2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 12;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 96);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_22;
    }

    *v11[1] = stringdup(a1, "StxGrp2PhraseLCtInt");
    v11[1][1] = stringdup(a1, "StxGrp2PhraseRCtInt");
    v11[1][2] = stringdup(a1, "StxGrp2PhraseLCtFloat");
    v11[1][3] = stringdup(a1, "StxGrp2PhraseRCtFloat");
    v11[1][4] = stringdup(a1, "StxGrp2PunctLCtInt");
    v11[1][5] = stringdup(a1, "StxGrp2PunctRCtInt");
    v11[1][6] = stringdup(a1, "StxGrp2PunctLCtFloat");
    v11[1][7] = stringdup(a1, "StxGrp2PunctRCtFloat");
    v11[1][8] = stringdup(a1, "StxGrp2SentLCtInt");
    v11[1][9] = stringdup(a1, "StxGrp2SentRCtInt");
    v11[1][10] = stringdup(a1, "StxGrp2SentLCtFloat");
    v11[1][11] = stringdup(a1, "StxGrp2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_22;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, a5[5], a5[3]), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, a5[5], a5[3]), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0) || (v21 = getLeftCounts(a1, a5[5], a5[4]), ((*v11)[4] = v21) == 0) || (v22 = getRightCounts(a1, a5[5], a5[4]), ((*v11)[5] = v22) == 0) || (v23 = normalizeCounts(a1, (*v11)[4], (*v11)[5], v7), ((*v11)[6] = v23) == 0) || (v24 = normalizeCounts(a1, (*v11)[5], (*v11)[4], v7), ((*v11)[7] = v24) == 0) || (v25 = getLeftCounts(a1, a5[5], a5[7]), ((*v11)[8] = v25) == 0) || (v26 = getRightCounts(a1, a5[5], a5[7]), ((*v11)[9] = v26) == 0) || (v27 = normalizeCounts(a1, (*v11)[8], (*v11)[9], v7), ((*v11)[10] = v27) == 0) || (v28 = normalizeCounts(a1, (*v11)[9], (*v11)[8], v7), ((*v11)[11] = v28) == 0))
    {
LABEL_22:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetPhrase2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 4;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 32);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_14;
    }

    *v11[1] = stringdup(a1, "Phrase2SentLCtInt");
    v11[1][1] = stringdup(a1, "Phrase2SentRCtInt");
    v11[1][2] = stringdup(a1, "Phrase2SentLCtFloat");
    v11[1][3] = stringdup(a1, "Phrase2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_14;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, *(a5 + 24), *(a5 + 56)), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, *(a5 + 24), *(a5 + 56)), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0))
    {
LABEL_14:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetPunct2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 4;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 32);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_14;
    }

    *v11[1] = stringdup(a1, "Punct2SentLCtInt");
    v11[1][1] = stringdup(a1, "Punct2SentRCtInt");
    v11[1][2] = stringdup(a1, "Punct2SentLCtFloat");
    v11[1][3] = stringdup(a1, "Punct2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_14;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, *(a5 + 32), *(a5 + 56)), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, *(a5 + 32), *(a5 + 56)), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0))
    {
LABEL_14:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetVPhone2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7)
{
  result = fExtGetPhone2BdryFeats__(a1, a4, a5, a6, a7, PhoneTierIsVoiced);
  if (result && *(result + 1004) >= 1)
  {
    v8 = result[1];
    do
    {
      v9 = *v8++;
      *v9 = 86;
    }

    while (v8 < &result[1][*(result + 1004)]);
  }

  return result;
}

uint64_t mergePhoneFeaturesAtStateLevel(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = *(*a2 + 4024);
  v48 = xmmword_26ECCE69E;
  v49[0] = unk_26ECCE6AE;
  *(v49 + 13) = unk_26ECCE6BB;
  if (a4 > 9)
  {
    goto LABEL_37;
  }

  if (a3 >= 2)
  {
    v9 = 1;
    while (*(a2[v9] + 4024) == v5)
    {
      if (a3 == ++v9)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_37;
  }

LABEL_6:
  if (a3)
  {
    v10 = 0;
    v11 = a3;
    v12 = a2;
    do
    {
      v13 = *v12++;
      v10 += *(v13 + 4016);
      --v11;
    }

    while (v11);
    v14 = v10 + 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = heap_Calloc(*(a1 + 8), 1, 4048);
  v16 = v15;
  if (v15)
  {
    *(v15 + 4016) = v14;
    *(v15 + 4024) = v5 * a4;
    if (v14)
    {
      v17 = heap_Calloc(*(a1 + 8), v14, 8);
      *(v16 + 8) = v17;
      if (!v17)
      {
        goto LABEL_37;
      }

      v18 = heap_Calloc(*(a1 + 8), *(v16 + 4016), 4);
      *(v16 + 4040) = v18;
      if (!v18)
      {
        goto LABEL_37;
      }
    }

    **(v16 + 8) = stringdup(a1, "StateID");
    if (!**(v16 + 8))
    {
      goto LABEL_37;
    }

    if (a3)
    {
      v19 = 0;
      v20 = 1;
      while (1)
      {
        v21 = a2[v19];
        v22 = *(v21 + 4016);
        if (!*(v21 + 4040))
        {
          break;
        }

        if (v22)
        {
          goto LABEL_20;
        }

LABEL_32:
        if (++v19 == a3)
        {
          goto LABEL_33;
        }
      }

      if (!v22)
      {
        goto LABEL_32;
      }

      v26 = heap_Calloc(*(a1 + 8), v22, 4);
      *(a2[v19] + 4040) = v26;
      if (!v26)
      {
        goto LABEL_37;
      }

      v21 = a2[v19];
      if (!*(v21 + 4016))
      {
        goto LABEL_32;
      }

      v27 = 0;
      v28 = *(v21 + 4040);
      do
      {
        *(v28 + 4 * v27++) = 1;
        v29 = *(v21 + 4016);
      }

      while (v27 < v29);
      if (!v29)
      {
        goto LABEL_32;
      }

LABEL_20:
      v23 = 0;
      do
      {
        *(*(v16 + 8) + 8 * (v20 + v23)) = *(*(v21 + 8) + 8 * v23);
        v21 = a2[v19];
        v24 = *(v21 + 4040);
        if (v24)
        {
          v25 = *(v24 + 4 * v23);
        }

        else
        {
          v25 = 1;
        }

        *(*(v16 + 4040) + 4 * (v20 + v23)) = v25;
        *(v24 + 4 * v23++) = 0;
      }

      while (v23 < *(v21 + 4016));
      v20 += v23;
      goto LABEL_32;
    }

LABEL_33:
    if (allocpppFeats(a1, v16, *(v16 + 4016), *(v16 + 4024)))
    {
LABEL_37:
      NNFX_logMsg(a1, 0);
      return 0;
    }

    if (v5)
    {
      v31 = 0;
      v32 = 0;
      while (1)
      {
        v47 = v31;
        if (a4)
        {
          break;
        }

        v38 = v32;
LABEL_48:
        v31 = v47 + 1;
        v32 = v38;
        if (v47 + 1 == v5)
        {
          goto LABEL_49;
        }
      }

      v33 = &v48;
      v34 = a4;
      while (1)
      {
        v35 = heap_Alloc(*(a1 + 8), 16);
        if (!v35)
        {
          goto LABEL_37;
        }

        v36 = v35;
        *(v35 + 8) = 3;
        v37 = heap_Alloc(*(a1 + 8), 5);
        *v36 = v37;
        if (!v37)
        {
          goto LABEL_37;
        }

        cstdlib_strcpy(v37, v33);
        v38 = (v32 + 1);
        *(**v16 + 8 * v32) = v36;
        v33 += 5;
        LODWORD(v32) = v32 + 1;
        if (!--v34)
        {
          goto LABEL_48;
        }
      }
    }

LABEL_49:
    if (a3)
    {
      v39 = 0;
      v40 = 1;
      do
      {
        v41 = a2[v39];
        if (*(v41 + 4016))
        {
          v42 = 0;
          do
          {
            if (v5)
            {
              v43 = 0;
              v44 = 0;
              do
              {
                if (a4)
                {
                  v45 = v44 + a4;
                  v46 = a4;
                  do
                  {
                    *(*(*v16 + 8 * v40) + 8 * v44++) = *(*(*a2[v39] + 8 * v42) + 8 * v43);
                    --v46;
                  }

                  while (v46);
                  v44 = v45;
                }

                ++v43;
              }

              while (v43 != v5);
              v41 = a2[v39];
            }

            ++v40;
            ++v42;
          }

          while (v42 < *(v41 + 4016));
        }

        ++v39;
      }

      while (v39 != a3);
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v16;
}

void *freepPhoneTiers(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (v4)
  {
    freepTier(a1, v4);
    *a2 = 0;
  }

  v5 = a2[1];
  if (v5)
  {
    freepTier(a1, v5);
    a2[1] = 0;
  }

  v6 = a2[2];
  if (v6)
  {
    freepTier(a1, v6);
    a2[2] = 0;
  }

  v7 = a2[3];
  if (v7)
  {
    freepTier(a1, v7);
    a2[3] = 0;
  }

  v8 = a2[4];
  if (v8)
  {
    freepTier(a1, v8);
    a2[4] = 0;
  }

  v9 = a2[5];
  if (v9)
  {
    freepTier(a1, v9);
    a2[5] = 0;
  }

  v10 = a2[6];
  if (v10)
  {
    freepTier(a1, v10);
    a2[6] = 0;
  }

  v11 = a2[7];
  if (v11)
  {
    freepTier(a1, v11);
    a2[7] = 0;
  }

  v12 = a2[8];
  if (v12)
  {
    freepTier(a1, v12);
    a2[8] = 0;
  }

  v13 = *(a1 + 8);

  return heap_Free(v13, a2);
}

BOOL check_phn_class(uint64_t a1, int a2, int __c)
{
  if (a2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 16 * a2 + 8);
  return v3 && cstdlib_strchr(*v3, __c) != 0;
}

uint64_t check_lex_feat(uint64_t a1, char *__s1, int a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  v3 = a1 + 16 * a3;
  v5 = *(v3 + 8);
  v4 = (v3 + 8);
  if (v5)
  {
    for (i = 0; i != 4000; i += 8)
    {
      v8 = *(*v4 + i);
      if (!v8)
      {
        break;
      }

      if (!cstdlib_strcmp(__s1, v8))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t **fExtGetPhone2BdryFeats__(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5, BOOL (*a6)(int a1))
{
  v7 = a5;
  v10 = *a3;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v11 = heap_Calloc(*(a1 + 8), 1, 4048);
  v12 = v11;
  if (v11)
  {
    *(v11 + 4016) = 28;
    *(v11 + 4024) = v7;
    v13 = heap_Alloc(*(a1 + 8), 224);
    v12[1] = v13;
    if (!v13)
    {
      goto LABEL_38;
    }

    *v12[1] = stringdup(a1, "Phone2SyllLCtInt");
    v12[1][1] = stringdup(a1, "Phone2SyllRCtInt");
    v12[1][2] = stringdup(a1, "Phone2SyllLCtFloat");
    v12[1][3] = stringdup(a1, "Phone2SyllRCtFloat");
    v12[1][4] = stringdup(a1, "Phone2StrGrpLCtInt");
    v12[1][5] = stringdup(a1, "Phone2StrGrpRCtInt");
    v12[1][6] = stringdup(a1, "Phone2StrGrpLCtFloat");
    v12[1][7] = stringdup(a1, "Phone2StrGrpRCtFloat");
    v12[1][8] = stringdup(a1, "Phone2WordLCtInt");
    v12[1][9] = stringdup(a1, "Phone2WordRCtInt");
    v12[1][10] = stringdup(a1, "Phone2WordLCtFloat");
    v12[1][11] = stringdup(a1, "Phone2WordRCtFloat");
    v12[1][12] = stringdup(a1, "Phone2StxGrpLCtInt");
    v12[1][13] = stringdup(a1, "Phone2StxGrpRCtInt");
    v12[1][14] = stringdup(a1, "Phone2StxGrpLCtFloat");
    v12[1][15] = stringdup(a1, "Phone2StxGrpRCtFloat");
    v12[1][16] = stringdup(a1, "Phone2PhraseLCtInt");
    v12[1][17] = stringdup(a1, "Phone2PhraseRCtInt");
    v12[1][18] = stringdup(a1, "Phone2PhraseLCtFloat");
    v12[1][19] = stringdup(a1, "Phone2PhraseRCtFloat");
    v12[1][20] = stringdup(a1, "Phone2PunctLCtInt");
    v12[1][21] = stringdup(a1, "Phone2PunctRCtInt");
    v12[1][22] = stringdup(a1, "Phone2PunctLCtFloat");
    v12[1][23] = stringdup(a1, "Phone2PunctRCtFloat");
    v12[1][24] = stringdup(a1, "Phone2SentLCtInt");
    v12[1][25] = stringdup(a1, "Phone2SentRCtInt");
    v12[1][26] = stringdup(a1, "Phone2SentLCtFloat");
    v12[1][27] = stringdup(a1, "Phone2SentRCtFloat");
    v14 = *(v12 + 1004);
    if (v14 >= 1)
    {
      v15 = v12[1];
      v16 = *(v12 + 1004);
      while (*v15)
      {
        ++v15;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_38;
    }

LABEL_7:
    v17 = heap_Alloc(*(a1 + 8), 8 * v14);
    *v12 = v17;
    if (!v17 || (LeftCounts = getLeftCounts_(a1, v10, a3[1], a6), (**v12 = LeftCounts) == 0) || (RightCounts = getRightCounts_(a1, v10, a3[1], a6), ((*v12)[1] = RightCounts) == 0) || (v20 = normalizeCounts(a1, **v12, (*v12)[1], v7), ((*v12)[2] = v20) == 0) || (v21 = normalizeCounts(a1, (*v12)[1], **v12, v7), ((*v12)[3] = v21) == 0) || (v22 = getLeftCounts_(a1, v10, a3[6], a6), ((*v12)[4] = v22) == 0) || (v23 = getRightCounts_(a1, v10, a3[6], a6), ((*v12)[5] = v23) == 0) || (v24 = normalizeCounts(a1, (*v12)[4], (*v12)[5], v7), ((*v12)[6] = v24) == 0) || (v25 = normalizeCounts(a1, (*v12)[5], (*v12)[4], v7), ((*v12)[7] = v25) == 0) || (v26 = getLeftCounts_(a1, v10, a3[2], a6), ((*v12)[8] = v26) == 0) || (v27 = getRightCounts_(a1, v10, a3[2], a6), ((*v12)[9] = v27) == 0) || (v28 = normalizeCounts(a1, (*v12)[8], (*v12)[9], v7), ((*v12)[10] = v28) == 0) || (v29 = normalizeCounts(a1, (*v12)[9], (*v12)[8], v7), ((*v12)[11] = v29) == 0) || (v30 = getLeftCounts_(a1, v10, a3[5], a6), ((*v12)[12] = v30) == 0) || (v31 = getRightCounts_(a1, v10, a3[5], a6), ((*v12)[13] = v31) == 0) || (v32 = normalizeCounts(a1, (*v12)[12], (*v12)[13], v7), ((*v12)[14] = v32) == 0) || (v33 = normalizeCounts(a1, (*v12)[13], (*v12)[12], v7), ((*v12)[15] = v33) == 0) || (v34 = getLeftCounts_(a1, v10, a3[3], a6), ((*v12)[16] = v34) == 0) || (v35 = getRightCounts_(a1, v10, a3[3], a6), ((*v12)[17] = v35) == 0) || (v36 = normalizeCounts(a1, (*v12)[16], (*v12)[17], v7), ((*v12)[18] = v36) == 0) || (v37 = normalizeCounts(a1, (*v12)[17], (*v12)[16], v7), ((*v12)[19] = v37) == 0) || (v38 = getLeftCounts_(a1, v10, a3[4], a6), ((*v12)[20] = v38) == 0) || (v39 = getRightCounts_(a1, v10, a3[4], a6), ((*v12)[21] = v39) == 0) || (v40 = normalizeCounts(a1, (*v12)[20], (*v12)[21], v7), ((*v12)[22] = v40) == 0) || (v41 = normalizeCounts(a1, (*v12)[21], (*v12)[20], v7), ((*v12)[23] = v41) == 0) || (v42 = getLeftCounts_(a1, v10, a3[7], a6), ((*v12)[24] = v42) == 0) || (v43 = getRightCounts_(a1, v10, a3[7], a6), ((*v12)[25] = v43) == 0) || (v44 = normalizeCounts(a1, (*v12)[24], (*v12)[25], v7), ((*v12)[26] = v44) == 0) || (v45 = normalizeCounts(a1, (*v12)[25], (*v12)[24], v7), ((*v12)[27] = v45) == 0))
    {
LABEL_38:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v12;
}

uint64_t BuildSilencePhT(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = heap_Alloc(*(a1 + 8), 24);
  if (!v8)
  {
    NNFX_logMsg(a1, 0);
    return v8;
  }

  if (TierInit(a1, v8, a4, "Phone-level SILENCE tier"))
  {
    goto LABEL_3;
  }

  v12 = heap_Alloc(*(a1 + 8), 2 * a3);
  v10 = v12;
  if (!v12)
  {
    v9 = a1;
    goto LABEL_4;
  }

  v13 = a3 - 1;
  if (a3 == 1)
  {
    v18 = 1;
  }

  else
  {
    v14 = (a2 + 8);
    v15 = a3 - 1;
    v16 = v12;
    do
    {
      v17 = *v14++;
      *v16++ = *(v17 + 192) == 1;
      --v15;
    }

    while (v15);
    *(v12 + 2 * v13) = 1;
    if (a3 < 2 || !*(*(a2 + 8 * v13) + 192))
    {
      if (!a3)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v18 = 0;
    v13 = a3 - 2;
  }

  *(v12 + 2 * v13) = v18;
LABEL_18:
  v19 = 0;
  v20 = 0;
  v21 = a3;
  v22 = *(v8 + 8);
  do
  {
    v23 = *(*(a2 + 8 * v19) + 144) - 1;
    if (*(*(a2 + 8 * v19) + 144) != 1)
    {
      v24 = v23 + v20;
      do
      {
        *(v22 + 2 * v20++) = 0;
        --v23;
      }

      while (v23);
      v20 = v24;
    }

    a3 = v20 + 1;
    *(v22 + 2 * v20++) = *(v12 + 2 * v19++);
  }

  while (v19 != v21);
LABEL_24:
  heap_Free(*(a1 + 8), v12);
  if (a3 != a4)
  {
LABEL_3:
    v9 = a1;
    v10 = 0;
LABEL_4:
    NNFX_logMsg(v9, v10);
    return 0;
  }

  v25 = 0;
  if (a4)
  {
    v26 = *(v8 + 8);
    v27 = a4;
    do
    {
      if (*v26++)
      {
        ++v25;
      }

      --v27;
    }

    while (v27);
  }

  *(v8 + 4) = v25;
  return v8;
}

uint64_t allocpppFeats(uint64_t a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = a3;
  v9 = heap_Calloc(*(a1 + 8), a3, 8);
  if (v9)
  {
    v10 = v9;
    *a2 = v9;
    if (!v5)
    {
      return 0;
    }

    v11 = v9 + 8 * v8;
    while (1)
    {
      v12 = heap_Calloc(*(a1 + 8), a4, 8);
      *v10 = v12;
      if (!v12)
      {
        break;
      }

      if (++v10 >= v11)
      {
        return 0;
      }
    }

    freepppFeats(a1, *a2, v5, a4);
  }

  return 1;
}

void *freepppFeats(void *result, uint64_t **a2, unsigned int a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    if (a3)
    {
      v6 = a4;
      v7 = a3;
      v8 = a2;
      do
      {
        freeppFeats(v5, *v8, v6, 1);
        *v8++ = 0;
        --v7;
      }

      while (v7);
    }

    v9 = v5[1];

    return heap_Free(v9, a2);
  }

  return result;
}

void *freeppFeats(void *result, uint64_t *a2, unsigned int a3, int a4)
{
  if (a2)
  {
    v5 = result;
    if (a3)
    {
      v7 = a3;
      v8 = a2;
      do
      {
        if (a4 && *v8)
        {
          freepFeat(v5, *v8);
          *v8 = 0;
        }

        ++v8;
        --v7;
      }

      while (v7);
    }

    v9 = v5[1];

    return heap_Free(v9, a2);
  }

  return result;
}

void *freepFeat(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(a2 + 8) == 3)
    {
      v4 = *a2;
      if (*a2)
      {
        heap_Free(result[1], v4);
        *a2 = 0;
      }
    }

    v5 = v3[1];

    return heap_Free(v5, a2);
  }

  return result;
}

void *freepTier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *(a2 + 16) = 0;
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
    *(a2 + 8) = 0;
  }

  v6 = *(a1 + 8);

  return heap_Free(v6, a2);
}

void *TrieIntInit(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *TrieIntFree(void *result, uint64_t a2)
{
  if (a2 && *(a2 + 8))
  {
    v3 = result;
    for (i = 0; i != 2048; i += 8)
    {
      TrieIntFree(v3, *(*(a2 + 8) + i));
      heap_Free(v3[1], *(*(a2 + 8) + i));
    }

    result = heap_Free(v3[1], *(a2 + 8));
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t TrieSet(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = *(a2 + 8);
  if (result || (result = heap_Calloc(*(a1 + 8), 256, 8), (*(a2 + 8) = result) != 0))
  {
    result = *(result + 8 * a3);
    if (!result)
    {
      *(*(a2 + 8) + 8 * a3) = heap_Alloc(*(a1 + 8), 16);
      v7 = *(*(a2 + 8) + 8 * a3);
      if (v7)
      {
        *v7 = 0;
        v7[1] = 0;
        return *(*(a2 + 8) + 8 * a3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TrieIntAdd_(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, int a4, int a5)
{
  v5 = *a3;
  if (!*a3)
  {
    return 1;
  }

  v7 = a2;
  if (a4)
  {
    v9 = a4 - 1;
    for (i = a3 + 1; ; ++i)
    {
      if (v5)
      {
        a2 = TrieSet(a1, a2, v5);
        if (!a2)
        {
          break;
        }
      }

      if (!v9)
      {
        goto LABEL_8;
      }

      v11 = *i;
      v5 = v11;
      --v9;
    }

    return 1;
  }

  else
  {
LABEL_8:
    result = 0;
    *a2 = -1;
    a2[1] = a5;
    ++*v7;
  }

  return result;
}

uint64_t TrieIntAdd(uint64_t a1, _DWORD *a2, char *__s, int a4)
{
  v8 = cstdlib_strlen(__s);

  return TrieIntAdd_(a1, a2, __s, v8, a4);
}

BOOL TrieIntGet_(uint64_t a1, _BYTE *a2, int a3, _DWORD *a4)
{
  if (a3)
  {
    while (1)
    {
      if (*a2)
      {
        if (!a1)
        {
          return 1;
        }

        v4 = *(a1 + 8);
        if (!v4)
        {
          return 1;
        }

        a1 = *(v4 + 8 * *a2);
        if (!a1)
        {
          return 1;
        }
      }

      ++a2;
      if (!--a3)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *a4 = *(a1 + 4);
    return *a1 != -1;
  }
}

BOOL TrieIntGet(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = cstdlib_strlen(__s);

  return TrieIntGet_(a1, __s, v6, a3);
}

void *TierClear(void *result, void *a2)
{
  v3 = result;
  *a2 = 0;
  v4 = a2[1];
  if (v4)
  {
    result = heap_Free(result[1], v4);
  }

  a2[1] = 0;
  v5 = a2[2];
  if (v5)
  {
    result = heap_Free(v3[1], v5);
  }

  a2[2] = 0;
  return result;
}

uint64_t TierInit(uint64_t a1, unsigned int *__b, unsigned int a3, char *a4)
{
  cstdlib_memset(__b, 0, 0x18uLL);
  TierClear(a1, __b);
  if (a4)
  {
    *(__b + 2) = stringdup(a1, a4);
  }

  if (a3 < 1)
  {
    return 0;
  }

  *__b = a3;
  *(__b + 1) = 0;
  v8 = heap_Calloc(*(a1 + 8), a3, 2);
  *(__b + 1) = v8;
  if (!v8)
  {
    return 1;
  }

  v9 = v8 + 2 * *__b;
  if (!*(v9 - 2))
  {
    ++__b[1];
  }

  result = 0;
  *(v9 - 2) = 1;
  return result;
}

uint64_t TierAddBoundary(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!*(v2 + 2 * a2))
  {
    ++*(result + 4);
  }

  *(v2 + 2 * a2) = 1;
  return result;
}

uint64_t TierSetBoundary(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  if (a3 && !*(v3 + 2 * a2))
  {
    v4 = 1;
LABEL_7:
    *(result + 4) += v4;
    goto LABEL_8;
  }

  if (!a3 && *(v3 + 2 * a2))
  {
    v4 = -1;
    goto LABEL_7;
  }

LABEL_8:
  *(v3 + 2 * a2) = a3;
  return result;
}

uint64_t TierNumItems(_DWORD *a1)
{
  if (*a1)
  {
    return a1[1];
  }

  else
  {
    return 0;
  }
}

uint64_t TierAddBoundaries(unsigned int *a1, uint64_t a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v3 = *a1;
    if (v3 == *a2)
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(a2 + 8);
        v6 = 2 * v3;
        do
        {
          if (*(v5 + v4))
          {
            v7 = *(a1 + 1);
            if (!*(v7 + v4))
            {
              ++a1[1];
            }

            *(v7 + v4) = 1;
          }

          v4 += 2;
        }

        while (v6 != v4);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return v2;
}

uint64_t leftMostSupraBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != *a3)
  {
LABEL_10:
    NNFX_logMsg(a1, 0);
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 4) <= a4)
  {
    NNFX_logMsg(a1, 0);
    if (cstdlib_strlen(*(a2 + 16)))
    {
      v10 = 1;
      do
      {
        NNFX_logMsg(a1, 0);
      }

      while (cstdlib_strlen(*(a2 + 16)) > v10++);
    }

    return 0xFFFFFFFFLL;
  }

  ElementInGroup = lastElementInGroup(a1, a2, a4);
  if (ElementInGroup == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = ElementInGroup;
  while (1)
  {
    result = v8;
    if (v8 < 1)
    {
      return result;
    }

    --v8;
    if (*(*(a3 + 8) + 2 * result - 2))
    {
      if (result == 1)
      {
        return 1;
      }

      if (*(*(a2 + 8) + 2 * v8))
      {
        return result;
      }

      NNFX_logMsg(a1, 0);
      goto LABEL_10;
    }
  }
}

uint64_t lastElementInGroup(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  if (a2[1] <= a3)
  {
    NNFX_logMsg(a1, 0);
    if (**(a2 + 2))
    {
      v8 = 1;
      do
      {
        NNFX_logMsg(a1, 0);
      }

      while (*(*(a2 + 2) + v8++));
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = *a2;
    if (v4)
    {
      result = 0;
      v6 = -1;
      while (1)
      {
        if (*(*(a2 + 1) + 2 * result))
        {
          ++v6;
        }

        if (v6 == a3)
        {
          break;
        }

        if (v4 == ++result)
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

  return result;
}

uint64_t rightMostSupraBoundary(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (*a2 != *a3)
  {
    goto LABEL_11;
  }

  if (*(a2 + 4) <= a4)
  {
    NNFX_logMsg(a1, 0);
    NNFX_logMsg(a1, 0);
    if (cstdlib_strlen(*(a2 + 16)))
    {
      v10 = 1;
      do
      {
        NNFX_logMsg(a1, 0);
      }

      while (cstdlib_strlen(*(a2 + 16)) > v10++);
    }

    return 0xFFFFFFFFLL;
  }

  result = lastElementInGroup(a1, a2, a4);
  if (result != -1)
  {
    if (result < *a3)
    {
      v8 = (*(a3 + 1) + 2 * result);
      while (!*v8++)
      {
        result = (result + 1);
        if (*a3 == result)
        {
          result = *a3;
          break;
        }
      }
    }

    if (!*(*(a2 + 8) + 2 * result))
    {
      NNFX_logMsg(a1, 0);
LABEL_11:
      NNFX_logMsg(a1, 0);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t getLeftCounts_(uint64_t a1, unsigned int *a2, _DWORD *a3, BOOL (*a4)(int a1))
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = TierIsBoundary;
  }

  v6 = *a2;
  if (v6 != *a3)
  {
    return 0;
  }

  v7 = a3;
  v9 = heap_Calloc(*(a1 + 8), v6, 8);
  if (v9)
  {
    LODWORD(v10) = *a2;
    if (*a2)
    {
      v11 = 0;
      do
      {
        v12 = heap_Alloc(*(a1 + 8), 16);
        if (!v12)
        {
          goto LABEL_28;
        }

        v12[2] = 0;
        *v12 = 0;
        *(v9 + 8 * v11++) = v12;
        v10 = *a2;
      }

      while (v11 < v10);
    }

    if (a2[1])
    {
      v13 = 0;
      v14 = -1;
      v28 = v7;
      while (1)
      {
        ElementInGroup = firstElementInGroup(a1, a2, v13);
        if (ElementInGroup == -1)
        {
          break;
        }

        v16 = ElementInGroup;
        v17 = lastElementInGroup(a1, a2, v13);
        if (v17 == -1)
        {
          break;
        }

        if (v16 != v14 + 1)
        {
          break;
        }

        v18 = v17;
        v19 = leftMostSupraBoundary(a1, a2, v7, v13);
        if (v19 == -1)
        {
          break;
        }

        v20 = 0;
        v21 = v18 - v19;
        if (v18 > v19)
        {
          v22 = 2 * v19;
          do
          {
            v20 += (v5)(*(*(a2 + 1) + v22));
            v22 += 2;
            --v21;
          }

          while (v21);
        }

        if (v16 <= v18)
        {
          v23 = (v9 + 8 * v16);
          v24 = v18 - v16 + 1;
          do
          {
            v25 = *v23++;
            *v25 = v20;
            --v24;
          }

          while (v24);
        }

        v13 = (v13 + 1);
        v14 = v18;
        v7 = v28;
        if (v13 >= a2[1])
        {
          LODWORD(v10) = *a2;
          v26 = v18 + 1;
          goto LABEL_27;
        }
      }

LABEL_28:
      NNFX_logMsg(a1, 0);
      return 0;
    }

    v26 = 1;
LABEL_27:
    if (v26 != v10)
    {
      goto LABEL_28;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v9;
}

uint64_t firstElementInGroup(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 4) <= a3)
  {
    NNFX_logMsg(a1, 0);
    if (**(a2 + 16))
    {
      v9 = 1;
      do
      {
        NNFX_logMsg(a1, 0);
      }

      while (*(*(a2 + 16) + v9++));
    }

    return 0xFFFFFFFFLL;
  }

  result = 0;
  v6 = *a2;
  if (a3 && v6)
  {
    v7 = 0;
    v8 = -1;
    while (1)
    {
      if (*(*(a2 + 8) + 2 * v7))
      {
        ++v8;
      }

      if (v8 == a3 - 1)
      {
        break;
      }

      if (v6 == ++v7)
      {
        result = 0;
        goto LABEL_15;
      }
    }

    result = (v7 + 1);
  }

LABEL_15:
  if (result >= v6)
  {
    NNFX_logMsg(a1, 0);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t getRightCounts_(uint64_t a1, unsigned int *a2, unsigned int *a3, BOOL (*a4)(int a1))
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = TierIsBoundary;
  }

  v6 = *a2;
  if (v6 != *a3)
  {
    return 0;
  }

  v7 = a3;
  v9 = heap_Calloc(*(a1 + 8), v6, 8);
  if (v9)
  {
    LODWORD(v10) = *a2;
    if (*a2)
    {
      v11 = 0;
      do
      {
        v12 = heap_Alloc(*(a1 + 8), 16);
        if (!v12)
        {
          goto LABEL_29;
        }

        v12[2] = 0;
        *v12 = 0;
        *(v9 + 8 * v11++) = v12;
        v10 = *a2;
      }

      while (v11 < v10);
    }

    if (a2[1])
    {
      v13 = 0;
      v14 = -1;
      v28 = v7;
      while (1)
      {
        ElementInGroup = firstElementInGroup(a1, a2, v13);
        if (ElementInGroup == -1)
        {
          break;
        }

        v16 = ElementInGroup;
        v17 = lastElementInGroup(a1, a2, v13);
        if (v17 == -1)
        {
          break;
        }

        if (v16 != v14 + 1)
        {
          break;
        }

        v18 = v17;
        v19 = rightMostSupraBoundary(a1, a2, v7, v13);
        if (v19 == -1)
        {
          break;
        }

        if (v18 <= v19)
        {
          v20 = 0;
          v21 = 2 * v18;
          v22 = v19 - v18 + 1;
          do
          {
            v20 += (v5)(*(*(a2 + 1) + v21));
            v21 += 2;
            --v22;
          }

          while (v22);
        }

        else
        {
          v20 = 0;
        }

        if (v16 <= v18)
        {
          v23 = (v9 + 8 * v16);
          v24 = v18 - v16 + 1;
          do
          {
            v25 = *v23++;
            *v25 = v20;
            --v24;
          }

          while (v24);
        }

        ++v13;
        v14 = v18;
        v7 = v28;
        if (v13 >= a2[1])
        {
          LODWORD(v10) = *a2;
          v26 = v18 + 1;
          goto LABEL_28;
        }
      }

LABEL_29:
      NNFX_logMsg(a1, 0);
      return 0;
    }

    v26 = 1;
LABEL_28:
    if (v26 != v10)
    {
      goto LABEL_29;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v9;
}

uint64_t normalizeCounts(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 0;
  if (a2 && a3 && a4)
  {
    if (!*(*a2 + 8) && !*(*a3 + 8))
    {
      v9 = a4;
      v4 = heap_Calloc(*(a1 + 8), a4, 8);
      if (!v4)
      {
        NNFX_logMsg(a1, 0);
        return v4;
      }

      v10 = 0;
      while (1)
      {
        v11 = heap_Alloc(*(a1 + 8), 16);
        if (!v11)
        {
          break;
        }

        *(v11 + 8) = 1;
        v12 = **(a2 + 8 * v10);
        v13 = **(a3 + 8 * v10) + v12;
        if (v13 < 1)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v12 / v13;
        }

        *v11 = v14;
        *(v4 + 8 * v10++) = v11;
        if (v9 == v10)
        {
          return v4;
        }
      }
    }

    NNFX_logMsg(a1, 0);
    return 0;
  }

  return v4;
}

BOOL get4Counts(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  *a4 = getLeftCounts_(a1, a2, a3, TierIsBoundary);
  RightCounts = getRightCounts_(a1, a2, a3, TierIsBoundary);
  a4[1] = RightCounts;
  a4[2] = normalizeCounts(a1, *a4, RightCounts, *a2);
  v9 = normalizeCounts(a1, a4[1], *a4, *a2);
  a4[3] = v9;
  if (!*a4 || !a4[1])
  {
    return 1;
  }

  if (a4[2])
  {
    return v9 == 0;
  }

  return 1;
}

uint64_t SymTabInit(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void *SymTabFree(void *result, int *a2)
{
  if (a2)
  {
    v3 = *(a2 + 1);
    if (v3)
    {
      v4 = result;
      if (*a2 >= 1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          TrieIntFree(v4, *(a2 + 1) + v5);
          ++v6;
          v5 += 16;
        }

        while (v6 < *a2);
        v3 = *(a2 + 1);
      }

      result = heap_Free(v4[1], v3);
      *(a2 + 1) = 0;
    }
  }

  return result;
}

uint64_t SymTabReadBuf(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  v30[128] = *MEMORY[0x277D85DE8];
  bzero(__dst, 0x800uLL);
  SymTabFree(a1, a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  v25 = a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 16);
  v27 = a2;
  *(a2 + 8) = v9;
  if (!v9)
  {
    return 1;
  }

  if (a4 < 1)
  {
    v12 = 0;
LABEL_25:
    v24 = *(*a5 + 4016) - v12;
    *(*a5 + 4020) = v24;
    if (*v27 != v24)
    {
      NNFX_logMsg(a1, 0);
    }

    return 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    LODWORD(v13) = 0;
    v14 = __dst;
    v15 = v30;
    v28 = -1;
    while (1)
    {
      v16 = v15;
      cstdlib_strcpy(v14, *(a3 + 8 * v10));
      v17 = cstdlib_strrchr(v14, 10);
      if (v17)
      {
        *v17 = 0;
      }

      v18 = cstdlib_strchr(v14, 32);
      if (v18)
      {
        *v18 = 0;
      }

      v19 = cstdlib_strchr(v14, 9);
      if (v19)
      {
        *v19 = 0;
      }

      v20 = cstdlib_strchr(v14, 61);
      v21 = v20;
      if (v20)
      {
        *v20 = 0;
        v21 = v20 + 1;
      }

      if (!*v14)
      {
        return 2;
      }

      if (cstdlib_strcmp(v14, v16))
      {
        v22 = *a5;
        if (v13 < *(*a5 + 4016))
        {
          v13 = v13;
          do
          {
            if (!cstdlib_strcmp(*(*(v22 + 8) + 8 * v13), v14))
            {
              break;
            }

            NNFX_logMsg(a1, 3);
            v22 = *a5;
            *(*a5 + 4 * v13++ + 16) = 0;
            ++v12;
          }

          while (v13 < *(v22 + 4016));
        }

        NNFX_logMsg(a1, 3);
        v11 = 0;
        *(*a5 + 4 * v13 + 16) = 1;
        LODWORD(v13) = v13 + 1;
        ++v28;
        ++*v27;
      }

      if (v21)
      {
        TrieIntAdd(a1, (*(v27 + 8) + 16 * v28), v21, ++v11);
      }

      ++v10;
      v15 = v14;
      v14 = v16;
      if (v10 == v25)
      {
        goto LABEL_25;
      }
    }
  }
}

uint64_t SymTabReadBufOnly(uint64_t a1, uint64_t a2, const char **a3, unsigned int a4)
{
  v22[128] = *MEMORY[0x277D85DE8];
  bzero(__dst, 0x800uLL);
  v8 = a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 16);
  *(a2 + 8) = v9;
  if (!v9)
  {
    return 1;
  }

  if (a4 < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = __dst;
  v12 = v22;
  v13 = -1;
  while (1)
  {
    v14 = v12;
    cstdlib_strcpy(v11, *a3);
    v15 = cstdlib_strrchr(v11, 10);
    if (v15)
    {
      *v15 = 0;
    }

    v16 = cstdlib_strchr(v11, 32);
    if (v16)
    {
      *v16 = 0;
    }

    v17 = cstdlib_strchr(v11, 9);
    if (v17)
    {
      *v17 = 0;
    }

    v18 = cstdlib_strchr(v11, 61);
    v19 = v18;
    if (v18)
    {
      *v18 = 0;
      v19 = v18 + 1;
    }

    if (!*v11)
    {
      break;
    }

    if (cstdlib_strcmp(v11, v14))
    {
      v10 = 0;
      ++v13;
      ++*a2;
    }

    if (v19)
    {
      TrieIntAdd(a1, (*(a2 + 8) + 16 * v13), v19, ++v10);
    }

    ++a3;
    v12 = v11;
    v11 = v14;
    if (!--v8)
    {
      return 0;
    }
  }

  return 2;
}

uint64_t SymTabToIntInplace(uint64_t a1, int *a2, unsigned __int8 ****a3, unsigned int a4, int a5, int a6, unsigned __int8 a7)
{
  v7 = *a2;
  if (a4 < 1)
  {
    v19 = 1;
  }

  else
  {
    v21 = *a2;
    v22 = a4;
    v12 = 0;
    v13 = a6;
    v23 = a6;
    v14 = 16 * a6;
    v15 = 1;
    v16 = a4;
    do
    {
      if (v13 >= *a2)
      {
        break;
      }

      v17 = *(a2 + 1);
      if (*(v17 + v14) <= 0)
      {
        ++v12;
      }

      else
      {
        v18 = SymTabToIntInplace_(a1, v17 + v14, *a3, a5, a7);
        if (v18 >= 1)
        {
          NNFX_logMsg(a1, 1);
        }

        v12 = v12 + a5 - v18;
      }

      ++v15;
      v14 += 16;
      ++v13;
      ++a3;
      --v16;
    }

    while (v16);
    v19 = v12 < 1;
    a6 = v23;
    v7 = v21;
    a4 = v22;
  }

  return ((a6 + a4) > v7) | v19;
}

uint64_t SymTabToIntInplace_(uint64_t a1, uint64_t a2, unsigned __int8 ***a3, int a4, unsigned __int8 a5)
{
  *__s = 0;
  v17 = 0;
  if (a4 >= 1)
  {
    v5 = a3;
    v8 = 0;
    v9 = 0;
    v10 = a5;
    v11 = &a3[a4];
    while (1)
    {
      v12 = *v5;
      if (*v5)
      {
        v13 = *(v12 + 2);
        if (v13 >= 2)
        {
          break;
        }
      }

LABEL_19:
      if (++v5 >= v11)
      {
        return v8;
      }
    }

    if (v13 == 2)
    {
      __s[0] = *v12;
      v15 = TrieIntGet(a2, __s, &v17);
      v12 = *v5;
      if (**v5 == v10)
      {
LABEL_11:
        v9 = 0;
        v17 = 0;
LABEL_15:
        if (*(v12 + 2) == 3 && *v12)
        {
          heap_Free(*(a1 + 8), *v12);
          *v12 = 0;
          v12 = *v5;
        }

        *v12 = v17;
        *(*v5 + 2) = 0;
        goto LABEL_19;
      }

      v9 = v15;
    }

    else if (v13 == 3)
    {
      v9 = TrieIntGet(a2, *v12, &v17);
      v12 = *v5;
      v14 = **v5;
      if (*v14 == v10 && !v14[1])
      {
        goto LABEL_11;
      }
    }

    if (v9)
    {
      v17 = 0;
      v8 = (v8 + 1);
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t SymTabToIntInplaceActive(uint64_t a1, int *a2, uint64_t *a3, int a4, unsigned __int8 a5)
{
  v6 = *a3;
  v7 = *(*a3 + 4020);
  v8 = *a2;
  if (*(*a3 + 4016) < 1)
  {
    v18 = 1;
  }

  else
  {
    v20 = *a2;
    v21 = *(*a3 + 4020);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (a4 + v13 >= *a2)
      {
        break;
      }

      if (*(v6 + 4 * v13 + 16))
      {
        v16 = *(a2 + 1);
        if (*(v16 + 16 * (v15 + a4)) <= 0)
        {
          ++v14;
        }

        else
        {
          v17 = SymTabToIntInplace_(a1, v16 + 16 * v15 + 16 * a4, *(*v6 + 8 * v13), *(v6 + 4024), a5);
          if (v17 >= 1)
          {
            NNFX_logMsg(a1, 1);
          }

          v6 = *a3;
          v14 = v14 - v17 + *(*a3 + 4024);
        }

        ++v15;
      }

      ++v13;
    }

    while (v13 < *(v6 + 4016));
    v18 = v14 < 1;
    v8 = v20;
    v7 = v21;
  }

  return (v7 + a4 > v8) | v18;
}

uint64_t unrollNnFeatures(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v10 = *a2;
  v11 = *(*a2 + 1005);
  v12 = *(*a2 + 1006);
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = *(a3 + 8);
    do
    {
      v16 = *v14;
      v14 += 4;
      v15 = v16;
      if (v16 <= 1)
      {
        v15 = 1;
      }

      v13 += v15;
      --v11;
    }

    while (v11);
  }

  v17 = *v10;
  v18 = v10[1004];
  v19 = heap_Calloc(*(a1 + 8), (v13 * v12), 4);
  if (!v19)
  {
    return 1;
  }

  *a4 = v19;
  *a5 = v13;
  if (v18 >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *a2 + 2;
    do
    {
      if (*(v23 + v20))
      {
        v24 = (v21 + 1);
        v25 = *(*(a3 + 8) + 16 * v21);
        if (v25)
        {
          if (v12 >= 1)
          {
            v26 = *(v17 + 8 * v20);
            v27 = v12;
            v28 = v19 - 4 + 4 * v22;
            do
            {
              v29 = *v26;
              if (*v26)
              {
                if (v29[2])
                {
                  goto LABEL_36;
                }

                v30 = *v29;
                if ((v30 & 0x80000000) != 0 || v30 > v25)
                {
                  goto LABEL_36;
                }

                if (v30)
                {
                  *(v28 + 4 * v30) = 1065353216;
                }
              }

              v28 += 4 * v13;
              ++v26;
              --v27;
            }

            while (v27);
          }

          v22 += v25;
        }

        else
        {
          if (v12 >= 1)
          {
            v31 = *(v17 + 8 * v20);
            v32 = v12;
            v33 = v22;
            do
            {
              v34 = *v31;
              if (*v31)
              {
                v35 = *(v34 + 8);
                if (v35 == 1)
                {
                  v36 = *v34;
                }

                else
                {
                  if (v35)
                  {
LABEL_36:
                    NNFX_logMsg(a1, 0);
                    return 1;
                  }

                  v36 = *v34;
                }

                *(v19 + 4 * v33) = v36;
              }

              v33 += v13;
              ++v31;
              --v32;
            }

            while (v32);
          }

          ++v22;
        }
      }

      else
      {
        v24 = v21;
      }

      ++v20;
      v21 = v24;
    }

    while (v20 != v18);
  }

  return 0;
}

void *stringdup(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = heap_Alloc(*(a1 + 8), v4 + 1);
  if (v5)
  {
    v6 = cstdlib_strlen(__s);
    cstdlib_memmove(v5, __s, v6 + 1);
  }

  return v5;
}

void *safe_strcpy(void *result, char *__s)
{
  if (result && __s)
  {
    v3 = result;
    v4 = cstdlib_strlen(__s) + 1;

    return cstdlib_memmove(v3, __s, v4);
  }

  return result;
}

char *stringcat(uint64_t a1, char *__s, const char *a3)
{
  v3 = 0;
  if (__s)
  {
    if (a3)
    {
      v7 = cstdlib_strlen(__s);
      v8 = cstdlib_strlen(a3);
      v9 = heap_Alloc(*(a1 + 8), v7 + v8 + 1);
      v3 = v9;
      if (v9)
      {
        safe_strcpy(v9, __s);
        cstdlib_strcat(v3, a3);
      }
    }
  }

  return v3;
}

char *strip_spaces(const char **a1)
{
  v2 = cstdlib_strlen(*a1);
  if (v2 >= 1)
  {
    v3 = (v2 & 0x7FFFFFFF) - 1;
    do
    {
      if (!cstdlib_strchr(" \t\r\n", (*a1)[v3]))
      {
        break;
      }

      (*a1)[v3] = 0;
      v4 = v3-- + 1;
    }

    while (v4 > 1);
  }

  for (result = cstdlib_strchr(" \t\r\n", **a1); result; result = cstdlib_strchr(" \t\r\n", v6[1]))
  {
    v6 = (*a1)++;
  }

  return result;
}

const char *get_next_token(void *a1, char **a2, int a3)
{
  v4 = *a2;
  if (!v4)
  {
    return 0;
  }

  safe_strcpy(a1, v4);
  v7 = cstdlib_strchr(a1, a3);
  if (v7)
  {
    *v7++ = 0;
  }

  v9 = a1;
  *a2 = v7;
  strip_spaces(&v9);
  return v9;
}

uint64_t stringdup_static(char *a1, _BYTE *a2, unsigned int a3)
{
  if (cstdlib_strlen(a1) >= a3)
  {
    *a2 = 0;
  }

  else
  {
    safe_strcpy(a2, a1);
  }

  return 1;
}

uint64_t utf8todepes(const char *a1, uint64_t a2, unsigned int a3)
{
  v8 = 0;
  v6 = cstdlib_strlen(a1);
  return utf8_Utf8ToDepes(a1, v6 + 1, &v8 + 1, a2, a3, &v8, 0);
}

uint64_t depestoutf8(const char *a1, uint64_t a2, unsigned int a3)
{
  v8 = 0;
  v6 = cstdlib_strlen(a1);
  return utf8_DepesToUtf8(a1, v6 + 1, &v8 + 1, a2, a3, &v8, 0);
}

uint64_t Lingdb2NnWordRec(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _DWORD *a7, uint64_t a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  v13 = a6;
  v18 = a9;
  v19 = *a6;
  v135 = 0;
  v136 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v128 = 0;
  v129 = 4;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  *a7 = 0;
  *a9 = 0;
  *a10 = 0;
  v20 = (*(a3 + 104))(a4, a5, 1, 0, &v131 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = v20;
    goto LABEL_9;
  }

  v21 = (*(a3 + 168))(a4, a5, HIWORD(v131), 3, 1, a7, &v130);
  if ((v21 & 0x80000000) != 0)
  {
LABEL_9:
    *(v13 + 5) = 0;
    return v21;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v131), 1, &v125) & 0x80000000) == 0 && v125 == 1)
  {
    v21 = (*(a3 + 176))(a4, a5, HIWORD(v131), 1, &v126, &v125 + 2);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }
  }

  v22 = a11;
  if (HIWORD(v125))
  {
    v121 = v126[3];
  }

  else
  {
    v121 = 0;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v131), 0, &v125) & 0x80000000) != 0 || v125 != 1)
  {
    if (((*(a3 + 184))(a4, a5, HIWORD(v131), 4, &v125) & 0x80000000) != 0 || v125 != 1)
    {
      goto LABEL_21;
    }

    v21 = (*(a3 + 176))(a4, a5, HIWORD(v131), 4, &v136, &v130);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v21 = (*(a3 + 176))(a4, a5, HIWORD(v131), 0, &v136, &v130);
    if ((v21 & 0x80000000) != 0)
    {
      log_OutPublic(a1[4], a2, 0, 0);
      goto LABEL_9;
    }
  }

  if (v130 <= 1u)
  {
    v136 = 0;
    goto LABEL_27;
  }

LABEL_21:
  if (!v136)
  {
LABEL_27:
    v28 = 0;
    if (a8 && HIWORD(v125))
    {
      v29 = 0;
      v30 = v126;
      do
      {
        v31 = *v30;
        v30 += 8;
        v32 = (1 << v31) & 0x270F0100;
        if (v31 <= 0x1D && v32 != 0)
        {
          *a8 = 15;
          *(a8 + 12) = 0;
          *(a8 + 16) = 0;
          *(a8 + 120) = 83;
          *(a8 + 144) = 4;
          *(a8 + 160) = 0;
          cstdlib_strcpy(*(a8 + 280), "#");
          *a9 = 1;
          *a10 = 1;
          v28 = 2;
          *a11 = 2;
          goto LABEL_37;
        }

        ++v29;
      }

      while (v29 < HIWORD(v125));
      v28 = 0;
    }

LABEL_37:
    *(v13 + 5) = v28;
    return v21;
  }

  LODWORD(v24) = HIWORD(v125);
  if (HIWORD(v125))
  {
    v25 = 0;
    v26 = v126 + 3;
    while (1)
    {
      v27 = *v26;
      v26 += 8;
      if (v27 != v121)
      {
        break;
      }

      if (HIWORD(v125) == ++v25)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v24) = v25;
  }

LABEL_39:
  v34 = (*(a3 + 152))(a4, a5, 2, HIWORD(v131), &v125);
  LOWORD(v35) = 0;
  if (v34 < 0 || !v125)
  {
    v119 = 0;
  }

  else
  {
    v21 = (*(a3 + 104))(a4, a5, 2, HIWORD(v131), &v131);
    if ((v21 & 0x80000000) != 0)
    {
      v104 = 1;
      goto LABEL_286;
    }

    v36 = v131;
    if (v131)
    {
      v110 = 0;
      v119 = 0;
      v35 = 0;
      v113 = 0;
      v114 = 1;
      v115 = 0;
      v112 = a8;
      v111 = v13;
      while (1)
      {
        v120 = v35;
        v37 = (*(a3 + 168))(a4, a5, v36, 0, 1, &v129, &v130);
        if ((v37 & 0x80000000) != 0)
        {
LABEL_284:
          v21 = v37;
LABEL_285:
          v104 = v114;
LABEL_286:
          *(v13 + 5) = v104;
          return v21;
        }

        v38 = v129;
        v39 = a8 + 144 * v120;
        *v39 = v129;
        if ((v38 - 9) >= 6)
        {
          if (v38 == 15)
          {
            ++*a10;
            if (((*(a3 + 184))(a4, a5, v131, 7, &v125) & 0x80000000) == 0 && v125 == 1)
            {
              v37 = (*(a3 + 168))(a4, a5, v131, 7, 1, &v127, &v130);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              *(v39 + 12) = v127;
            }

            if (((*(a3 + 184))(a4, a5, v131, 1, &v125) & 0x80000000) == 0 && v125 == 1)
            {
              v37 = (*(a3 + 168))(a4, a5, v131, 1, 1, &v128, &v130);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              *(v39 + 4) = v128;
            }

            if (((*(a3 + 184))(a4, a5, v131, 2, &v125) & 0x80000000) == 0 && v125 == 1)
            {
              v37 = (*(a3 + 168))(a4, a5, v131, 2, 1, &v127 + 2, &v130);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              *(v39 + 8) = HIWORD(v127);
            }

            v130 = 0;
            if (((*(a3 + 184))(a4, a5, v131, 4, &v125) & 0x80000000) == 0 && v125 == 1)
            {
              v37 = (*(a3 + 176))(a4, a5, v131, 4, &v133, &v130);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              if (v133)
              {
                cstdlib_strcpy(*(v39 + 32), v133);
              }
            }

            if (v136)
            {
              v124 = 0;
              v57 = v128;
              if (v128 >= HIWORD(v127))
              {
                v58 = 0;
              }

              else
              {
                v58 = 0;
                do
                {
                  v59 = *(v136 + v57);
                  v60 = *(v39 + 128);
                  v124 = v58 + 1;
                  *(v60 + v58) = v59;
                  ++v57;
                  v58 = v124;
                }

                while (v57 < HIWORD(v127) && v124 < 0x1FFuLL);
              }

              *(*(v39 + 128) + v58) = 0;
            }

            if (v127 <= 2u)
            {
              *(v39 + 120) = 0x575353u >> (8 * v127);
            }

            if (v120)
            {
              v79 = v120 - 1;
              while (1)
              {
                v80 = v79;
                v81 = *(a8 + 144 * v79);
                if ((v81 - 9) < 6 || v81 == 4)
                {
                  break;
                }

                if (v81 != 15)
                {
                  --v79;
                  if (v80)
                  {
                    continue;
                  }
                }

                goto LABEL_220;
              }

              *(a8 + 144 * v79 + 120) = *(v39 + 120);
LABEL_220:
              v110 = v120;
            }

            else
            {
              v120 = 0;
              v110 = 0;
            }

            goto LABEL_222;
          }

          if (v38 != 4)
          {
            if (((*(a3 + 184))(a4, a5, v131, 1, &v125) & 0x80000000) == 0 && v125 == 1)
            {
              v37 = (*(a3 + 168))(a4, a5, v131, 1, 1, &v128, &v130);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              *(v39 + 4) = v128;
            }

            if (((*(a3 + 184))(a4, a5, v131, 2, &v125) & 0x80000000) == 0 && v125 == 1)
            {
              v37 = (*(a3 + 168))(a4, a5, v131, 2, 1, &v127 + 2, &v130);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              *(v39 + 8) = HIWORD(v127);
            }

            v130 = 0;
            if (((*(a3 + 184))(a4, a5, v131, 4, &v125) & 0x80000000) == 0 && v125 == 1)
            {
              v37 = (*(a3 + 176))(a4, a5, v131, 4, &v134, &v130);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              if (v134)
              {
                cstdlib_strcpy(*(v39 + 32), v134);
              }
            }

            if (v136)
            {
              v124 = 0;
              v47 = v128;
              if (v128 >= HIWORD(v127))
              {
                v48 = 0;
              }

              else
              {
                v48 = 0;
                do
                {
                  v49 = *(v136 + v47);
                  v50 = *(v39 + 128);
                  v124 = v48 + 1;
                  *(v50 + v48) = v49;
                  ++v47;
                  v48 = v124;
                }

                while (v47 < HIWORD(v127) && v124 < 0x1FFuLL);
              }

              *(*(v39 + 128) + v48) = 0;
            }

LABEL_222:
            v22 = a11;
            goto LABEL_256;
          }
        }

        ++*v18;
        if (v38 == 12)
        {
          v40 = v115;
        }

        else
        {
          v40 = 0;
        }

        v118 = v40;
        v42 = v38 != 14 || v115 == 0;
        v116 = v42;
        if (((*(a3 + 184))(a4, a5, v131, 1, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 168))(a4, a5, v131, 1, 1, &v128, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          *(v39 + 4) = v128;
        }

        if (((*(a3 + 184))(a4, a5, v131, 2, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 168))(a4, a5, v131, 2, 1, &v127 + 2, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          *(v39 + 8) = HIWORD(v127);
        }

        if (((*(a3 + 184))(a4, a5, v131, 13, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v131, 13, &v132, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          *(v39 + 20) = cstdlib_atoi(v132);
        }

        if (((*(a3 + 184))(a4, a5, v131, 7, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 168))(a4, a5, v131, 7, 1, &v128 + 2, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          *(v39 + 12) = HIWORD(v128);
        }

        if (((*(a3 + 184))(a4, a5, v131, 17, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v131, 17, &v132, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          *(v39 + 24) = cstdlib_atoi(v132);
        }

        if (v133)
        {
          cstdlib_strcpy(*(v39 + 32), v133);
        }

        if (((*(a3 + 184))(a4, a5, v131, 5, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v131, 5, &v134, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          if (v134)
          {
            cstdlib_strcpy(*(v39 + 40), v134);
          }
        }

        if (((*(a3 + 184))(a4, a5, v131, 6, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v131, 6, &v134, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          if (v134)
          {
            cstdlib_strcpy(*(v39 + 48), v134);
          }
        }

        if (((*(a3 + 184))(a4, a5, v131, 9, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v131, 9, &v134, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          if (v134)
          {
            cstdlib_strcpy(*(v39 + 56), v134);
          }
        }

        if (((*(a3 + 184))(a4, a5, v131, 14, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v131, 14, &v134, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          if (v134)
          {
            ParseWnluStr(v134, v39);
          }
        }

        if (v136)
        {
          v124 = 0;
          v43 = v128;
          if (v128 >= HIWORD(v127))
          {
            v44 = 0;
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v136 + v43);
              v46 = *(v39 + 128);
              v124 = v44 + 1;
              *(v46 + v44) = v45;
              ++v43;
              v44 = v124;
            }

            while (v43 < HIWORD(v127) && v124 < 0x1FFuLL);
          }

          *(*(v39 + 128) + v44) = 0;
        }

        v130 = 0;
        v135 = 0;
        if (((*(a3 + 184))(a4, a5, v131, 3, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v131, 3, &v135, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }
        }

        if (v130 <= 1u)
        {
          if (v129 == 14)
          {
            v135 = "M";
          }

          else
          {
            v135 = 0;
          }
        }

        v51 = cstdlib_atoi(v132);
        v52 = v135;
        if (v135 && !v51)
        {
          if (!cstdlib_strcmp(v135, ""))
          {
            v135 = 0;
            goto LABEL_233;
          }

          v52 = v135;
        }

        if (v52)
        {
          if (v130 >= 2u)
          {
            v53 = 0;
            while (1)
            {
              v54 = v53;
              v55 = v135[v53];
              if (v55 < 0)
              {
                if (!__maskrune(v135[v53], 0x4000uLL))
                {
LABEL_171:
                  v56 = a8 + 144 * v120;
                  goto LABEL_172;
                }
              }

              else if ((*(MEMORY[0x277D85DE0] + 4 * v55 + 60) & 0x4000) == 0)
              {
                goto LABEL_171;
              }

              if (v130 - 1 <= ++v53)
              {
                v56 = a8 + 144 * v120;
                v54 = v53;
                v53 = v53;
                goto LABEL_172;
              }
            }
          }

          v56 = a8 + 144 * v120;
          v54 = 0;
          v53 = 0;
LABEL_172:
          v61 = 0;
          while (v130 - 1 > v61)
          {
            v62 = v19;
            v63 = v135;
            v64 = v135[v54 + v61];
            if (v64 < 0)
            {
              if (__maskrune(v135[v54 + v61], 0x4000uLL))
              {
LABEL_180:
                v19 = v62;
                break;
              }
            }

            else if ((*(MEMORY[0x277D85DE0] + 4 * v64 + 60) & 0x4000) != 0)
            {
              goto LABEL_180;
            }

            *(*(v56 + 136) + v61) = v63[(v53 + v61)];
            ++v61;
            v19 = v62;
            if (v61 == 511)
            {
              break;
            }
          }

          *(*(v56 + 136) + v61) = 0;
          v18 = a9;
          v65 = v113;
          if (!v135)
          {
            a8 = v112;
            v22 = a11;
            v13 = v111;
            goto LABEL_234;
          }

          v66 = v56;
          v13 = v111;
          a8 = v112;
          if (*v135)
          {
            v67 = v114;
            v68 = v114 > 1 && v118 == 0;
            v69 = v116;
            if (!v68)
            {
              v69 = 0;
            }

            if (v69 && v129 != 14)
            {
              v71 = HIWORD(v125);
              if (v24 < HIWORD(v125))
              {
                v72 = 0;
                v73 = 0;
                v74 = v24;
                v75 = &v126[8 * v24];
                while (v75[3] - v121 <= v128)
                {
                  v77 = *v75;
                  v75 += 8;
                  v76 = v77;
                  if (v77 == 8)
                  {
                    v78 = v73 + 1;
                  }

                  else
                  {
                    v78 = v73;
                  }

                  if (v76 == 26)
                  {
                    ++v72;
                  }

                  else
                  {
                    v73 = v78;
                  }

                  if (HIWORD(v125) == ++v74)
                  {
                    goto LABEL_224;
                  }
                }

                v71 = v74;
LABEL_224:
                if (v72)
                {
                  v117 = v71;
                  if (v73)
                  {
                    v83 = *(v112 + 144 * v119 + 16);
                  }

                  else
                  {
                    v83 = 200;
                  }

                  *(v112 + 144 * v119 + 16) = v83;
                  if (cstdlib_strstr((*v111 + 152), "bet4") || cstdlib_strstr((*v111 + 152), "bet5"))
                  {
                    inited = InitFromWrdRec(a1, v66, v66 + 432);
                    if ((inited & 0x80000000) != 0)
                    {
                      return inited;
                    }

                    inited = Init_WrdRec(a1, &v123, 1);
                    if ((inited & 0x80000000) != 0)
                    {
                      return inited;
                    }

                    inited = InitFromWrdRec(a1, v123, v66);
                    if ((inited & 0x80000000) != 0)
                    {
                      return inited;
                    }

                    *v66 = 15;
                    *(v66 + 12) = 0x100000002;
                    *(v66 + 120) = 87;
                    v94 = v112 + 144 * (v120 + 1);
                    inited = InitFromWrdRec(a1, v123, v94);
                    if ((inited & 0x80000000) != 0)
                    {
                      return inited;
                    }

                    *v94 = 4;
                    cstdlib_strcpy(*(v94 + 136), "#");
                    v95 = v112 + 144 * (v120 + 2);
                    inited = InitFromWrdRec(a1, v123, v95);
                    if ((inited & 0x80000000) != 0)
                    {
                      return inited;
                    }

                    *v95 = 15;
                    v96 = v112 + 144 * v110;
                    *(v95 + 12) = *(v96 + 12);
                    *(v95 + 120) = *(v96 + 120);
                    v120 += 3;
                    Free_WrdRec(a1, v123, 1u);
                    *a10 += 2;
                    ++*a9;
                    v65 = 5;
                    v67 = v114;
                    LODWORD(v24) = v117;
                  }

                  else
                  {
                    v67 = v114;
                  }
                }
              }
            }

            v84 = v67 <= 1 || v65 == 0;
            v85 = v114;
            if (!v84)
            {
              v85 = v114 + 1;
            }

            v114 = v85;
          }
        }

LABEL_233:
        v22 = a11;
LABEL_234:
        if (v129 != 13)
        {
          if (v129 != 14)
          {
            goto LABEL_238;
          }

          v118 = 1;
        }

        ++*(v13 + 7);
LABEL_238:
        v86 = 0;
        if (((*(a3 + 184))(a4, a5, v131, 8, &v125) & 0x80000000) == 0 && v125 == 1)
        {
          v37 = (*(a3 + 168))(a4, a5, v131, 8, 1, &v124, &v130);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          v86 = v124;
        }

        v87 = v120;
        *(a8 + 144 * v120 + 16) = v86;
        v88 = v121;
        if (v135 && *v135)
        {
          v137[0] = v135;
          skipUnvalidPhonemes(v19, v137);
          v89 = v137[0];
          if (*v137[0])
          {
            v90 = 0;
            do
            {
              ++v90;
              v137[0] = v89 + 1;
              skipUnvalidPhonemes(v19, v137);
              v89 = v137[0];
            }

            while (*v137[0]);
          }

          else
          {
            v90 = 0;
          }

          v114 += v90;
          v18 = a9;
          v87 = v120;
          v88 = v121;
        }

        v113 = v86;
        if (v24 < HIWORD(v125))
        {
          v24 = v24;
          v91 = &v126[8 * v24 + 3];
          while (1)
          {
            v92 = *v91;
            v91 += 8;
            if (v92 - v88 > v128)
            {
              break;
            }

            if (HIWORD(v125) == ++v24)
            {
              LODWORD(v24) = HIWORD(v125);
              break;
            }
          }
        }

        v119 = v87;
        v115 = v118;
LABEL_256:
        v21 = (*(a3 + 120))(a4, a5, v131, &v131);
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_285;
        }

        v35 = v120 + 1;
        v36 = v131;
        if (!v131)
        {
          goto LABEL_270;
        }
      }
    }

    LOWORD(v35) = 0;
    v119 = 0;
  }

LABEL_270:
  if (!*v18)
  {
LABEL_293:
    if (v35)
    {
      v106 = v35 - 1;
      while (1)
      {
        v107 = v106;
        v108 = *(a8 + 144 * v106);
        if ((v108 - 9) < 6 || v108 == 4)
        {
          break;
        }

        if (v108 != 15)
        {
          --v106;
          if (v107)
          {
            continue;
          }
        }

        goto LABEL_303;
      }

      *(a8 + 144 * v106 + 120) = 83;
    }

LABEL_303:
    *v22 = v35;
    return v21;
  }

  v97 = v35;
  if (!cstdlib_strstr((*v13 + 152), "bet4") && !cstdlib_strstr((*v13 + 152), "bet5") || v24 >= HIWORD(v125))
  {
LABEL_292:
    LOWORD(v35) = v97;
    goto LABEL_293;
  }

  v98 = v24;
  v99 = &v126[8 * v24];
  v100 = -1;
  LOWORD(v35) = v97;
  do
  {
    v101 = *v99;
    v99 += 8;
    if (v101 == 26)
    {
      v100 = v98;
    }

    ++v98;
  }

  while (HIWORD(v125) != v98);
  if (v100 == -1)
  {
    goto LABEL_293;
  }

  v102 = v97 + 1;
  v103 = a8 + 144 * (v97 - 1);
  while (v102 - 2 > v119)
  {
    v21 = InitFromWrdRec(a1, v103, a8 + 144 * v102--);
    v103 -= 144;
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }
  }

  *(a8 + 144 * v119 + 16) = 0;
  inited = Init_WrdRec(a1, &v123, 1);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v105 = a8 + 144 * v119;
  inited = InitFromWrdRec(a1, v123, v105 + 144);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v105 + 144) = 15;
  *(v105 + 156) = 0x100000000;
  *(v105 + 264) = 83;
  v21 = InitFromWrdRec(a1, v123, v105 + 288);
  if ((v21 & 0x80000000) == 0)
  {
    *(v105 + 288) = 4;
    *(v105 + 304) = 200;
    cstdlib_strcpy(*(v105 + 424), "#");
    ++v124;
    ++*a10;
    ++*a9;
    v97 += 2;
    Free_WrdRec(a1, v123, 1u);
    goto LABEL_292;
  }

  return v21;
}

uint64_t skipUnvalidPhonemes(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (**a2)
  {
    while (*(result + 2144 + v3) == 255)
    {
      if (v3 == 92)
      {
        v4 = v2 + 1;
        do
        {
          *a2 = v4;
          v6 = *v4++;
          v5 = v6;
          if (v6 == 92)
          {
            v2 = v4 - 1;
            goto LABEL_10;
          }
        }

        while (v5);
        *a2 = v2;
        if (*v2)
        {
          goto LABEL_10;
        }

        return result;
      }

LABEL_10:
      *a2 = v2 + 1;
      v3 = *++v2;
      if (!v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t uselect_ExtractTargetFeatures(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v599 = *MEMORY[0x277D85DE8];
  v3 = 2229280789;
  v4 = *a3;
  v595 = 2;
  v594 = 0;
  v6 = a3 + 6;
  v5 = *(a3 + 6);
  if (v5 < 1)
  {
    return v3;
  }

  v10 = a3[3];
  if (v10)
  {
    cstdlib_memset(v10, 0, v5 + 1);
    v11 = *(a3 + 880);
    if (v11)
    {
      v12 = 0;
      LODWORD(v13) = 0;
      v14 = 0;
      v15 = (a3[439] + 12);
      do
      {
        if (*(v15 - 3) == 0x4000 && *(v15 - 1))
        {
          v14 = *v15;
          LODWORD(v13) = v12;
        }

        ++v12;
        v15 += 8;
      }

      while (v11 != v12);
      if (v13)
      {
        v16 = v13;
        do
        {
          ++*a3[3];
          --v16;
        }

        while (v16);
        LODWORD(v11) = *(a3 + 880);
      }
    }

    else
    {
      LODWORD(v13) = 0;
      v14 = 0;
    }

    if (v13 < v11)
    {
      v13 = v13;
      v17 = (32 * v13) | 0xC;
      do
      {
        v18 = *(a3[439] + v17) - v14;
        if (v18 >= *(a3 + 6))
        {
          v18 = *(a3 + 6);
        }

        ++*(a3[3] + v18);
        ++v13;
        v17 += 32;
      }

      while (v13 < *(a3 + 880));
    }
  }

  if ((*(v4 + 3092) & 0x80000000) != 0)
  {
    InternalTagIndex = 0;
  }

  else
  {
    InternalTagIndex = GetInternalTagIndex(v4, "TS", 0);
    v594 = InternalTagIndex;
  }

  v20 = *a3[2];
  if (v20 == 92)
  {
    HandleInternalTag(v4, a3, v6, 0, InternalTagIndex, &v594, &v595);
    v20 = *a3[2];
  }

  if (*(v4 + 2516))
  {
    v21 = v20 == 60;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  if (v20 == 35)
  {
    v23 = *v6;
  }

  else
  {
    do
    {
      v24 = a3[3];
      if (v24)
      {
        *v24 += v24[1];
      }

      v25 = *v6;
      if (v25 >= 1)
      {
        v26 = 0;
        do
        {
          *(a3[2] + v26) = *(a3[2] + v26 + 1);
          if (v26)
          {
            v27 = a3[3];
            if (v27)
            {
              *(v27 + v26) = *(v27 + v26 + 1);
            }
          }

          ++v26;
        }

        while (v26 < *v6);
        LOWORD(v25) = *v6;
      }

      v23 = v25 - 1;
      *(a3 + 6) = v23;
    }

    while (*a3[2] != 35);
  }

  if (v23 >= 1)
  {
    v28 = 0;
    do
    {
      if (*(a3[2] + v28) == 92)
      {
        HandleInternalTag(v4, a3, v6, v28, InternalTagIndex, &v594, &v595);
      }

      else
      {
        *(a3[31] + v28++) = v594;
      }
    }

    while (*v6 > v28);
  }

  v29 = a3[61];
  if (v29)
  {
    v30 = *(a1 + 8);
    v31 = cstdlib_strlen(v29);
    v32 = heap_Alloc(v30, (v31 + 1));
    if (!v32)
    {
      log_OutPublic(*(a1 + 32), a2, 19000, 0);
      return 2229280778;
    }

    v33 = v32;
    cstdlib_strcpy(v32, a3[61]);
  }

  else
  {
    v33 = 0;
  }

  v577 = a2;
  if (log_HasTraceTuningDataSubscriber(*(a1 + 32)))
  {
    v561 = "TAPSREFSPT";
    v562 = v33;
    v559 = *(a3 + 6);
    v560 = a3[2];
    v557 = 0;
    v558 = "IN";
    log_OutTraceTuningData(*(a1 + 32), 301, "%s%s %s%.*s %s%s", v34, v35, v36, v37, v38, "BEG");
  }

  v580 = v33;
  v582 = a1;
  v39 = *v6;
  if (v39 >= 1)
  {
    v40 = 0;
    v563 = 0;
    v41 = 0;
    v572 = 0;
    v42 = 0;
    v43 = 0;
    v575 = 0;
    v44 = v4 + 2144;
    __s = v580;
    v571 = v22;
    v590 = v4 + 2144;
    while (1)
    {
      v45 = a3[2];
      v46 = v43;
      if ((*(v45 + v43) & 0xFE) == 0x12)
      {
        v47 = v40 + 1;
        if (*(v45 + v47) == 16)
        {
          LOWORD(v39) = v39 - 2;
          *(a3 + 6) = v39;
          v48 = a3[3];
          if (v48)
          {
            *(v48 + v43 + 2) += *(v48 + v47) + *(v48 + v43);
            LOWORD(v39) = *v6;
          }

          if (v43 < v39)
          {
            v49 = v43;
            do
            {
              *(a3[2] + v49) = *(a3[2] + v49 + 2);
              v50 = a3[3];
              if (v50)
              {
                *(v50 + v49) = *(v50 + v49 + 2);
              }

              ++v49;
            }

            while (v49 < *v6);
            LOWORD(v39) = *v6;
          }
        }
      }

      v51 = a3[2];
      if (*(v51 + v43) != 16)
      {
        goto LABEL_227;
      }

      v52 = v40 + 1;
      v53 = *(v51 + v52);
      if ((v53 & 0xFE) != 0x12)
      {
        goto LABEL_227;
      }

      v54 = v39 - 2;
      *(a3 + 6) = v39 - 2;
      v55 = a3[3];
      if (v55)
      {
        *(v55 + v43 + 2) += *(v55 + v52) + *(v55 + v43);
        v54 = *v6;
      }

      if (v43 < v54)
      {
        v56 = v43;
        do
        {
          *(a3[2] + v56) = *(a3[2] + v56 + 2);
          *(a3[31] + v56) = *(a3[31] + v56 + 2);
          v57 = a3[3];
          if (v57)
          {
            *(v57 + v56) = *(v57 + v56 + 2);
          }

          ++v56;
        }

        while (v56 < *v6);
        v54 = *v6;
      }

      if (v53 == 19)
      {
        break;
      }

      if (!__s)
      {
        __s = 0;
        goto LABEL_227;
      }

      v61 = cstdlib_strchr(__s, 27);
      if (v61)
      {
        *v61 = 0;
        v569 = v61 + 1;
        v565 = v61;
        v567 = a3[2];
        v62 = (v567 + v43);
        v63 = cstdlib_strchr(v62, 18);
        if (v63)
        {
          v578 = v63;
          *v63 = 0;
          if (log_HasTraceTuningDataSubscriber(*(a1 + 32)))
          {
            v560 = "TAPSREFSTPTAP";
            v561 = __s;
            v558 = "TAPSCURSTPTAP";
            v559 = (v567 + v43);
            v557 = 0;
            log_OutTraceTuningData(*(a1 + 32), 302, "%s%s %s%s %s%s", v64, v65, v66, v67, v68, "BEG");
          }

          if (cstdlib_strlen(__s) < 1)
          {
            v586 = 0;
            v70 = 0;
          }

          else
          {
            v69 = 0;
            v70 = 0;
            v586 = 0;
            do
            {
              v71 = __s[v69];
              if (v71 == 91)
              {
                v70 = 1;
              }

              else if (v71 == 93 || v70 == 0)
              {
                v70 = 0;
                v73 = v586;
                if (*(v590 + __s[v69]) != 0xFF)
                {
                  v73 = v586 + 2;
                }

                v586 = v73;
              }

              ++v69;
            }

            while (v69 < cstdlib_strlen(__s));
          }

          v82 = cstdlib_strstr(v62, __s);
          v83 = 0;
          if (v82)
          {
            v85 = __s;
            v84 = v575;
          }

          else
          {
            v84 = v575;
            if (v586 >= 3)
            {
              v85 = __s;
              v86 = *__s;
              if (v86 == 93)
              {
                v70 = 0;
                v87 = v4 + 2144;
              }

              else
              {
                v87 = v4 + 2144;
                if (v86 == 91)
                {
                  v70 = 1;
                }

                else if (!*__s)
                {
                  goto LABEL_155;
                }
              }

              v85 = __s + 1;
              while (v70 == 1 || *(v87 + v86) == 255)
              {
                v101 = *v85++;
                v86 = v101;
                if (v101 == 93)
                {
                  v102 = 0;
                }

                else
                {
                  v102 = v70;
                }

                if (v86 == 91)
                {
                  v70 = 1;
                }

                else
                {
                  v70 = v102;
                }

                if (!v86)
                {
                  --v85;
                  goto LABEL_155;
                }
              }

              if (*v85)
              {
                v136 = cstdlib_strstr(v62, v85);
                if (v136)
                {
                  v82 = v136;
                  v83 = 0;
                  v88 = 2;
                  goto LABEL_140;
                }

                v137 = v565;
                v138 = *v565;
                v139 = v563;
                if (v138 == 91)
                {
                  v139 = 0;
                }

                if (v138 == 93)
                {
                  v139 = 1;
                }

                if (v565 == __s)
                {
LABEL_253:
                  v563 = v139;
                  v85 = __s;
                  goto LABEL_155;
                }

                while (v139 == 1 || *(v590 + v138) == 255)
                {
                  v140 = *--v137;
                  v138 = v140;
                  if (v140 == 91)
                  {
                    v139 = 0;
                  }

                  if (v138 == 93)
                  {
                    v139 = 1;
                  }

                  if (v137 == __s)
                  {
                    goto LABEL_253;
                  }
                }

                v563 = v139;
                *v137 = 0;
                v141 = cstdlib_strstr(v62, __s);
                if (v141)
                {
                  v82 = v141;
                  v88 = 0;
                  v83 = 2;
                  v85 = __s;
                  goto LABEL_140;
                }

                v82 = cstdlib_strstr(v62, v85);
                v83 = 2;
LABEL_139:
                v88 = v83;
                if (!v82)
                {
                  goto LABEL_155;
                }

LABEL_140:
                v586 = v88;
                v89 = v83;
                HasTraceTuningDataSubscriber = log_HasTraceTuningDataSubscriber(*(v582 + 32));
                v96 = v89;
                v97 = "MATCH";
                v99 = v582;
                v98 = __s;
                v100 = v96;
                if (!HasTraceTuningDataSubscriber)
                {
LABEL_157:
                  v575 = v98;
                  v44 = v4 + 2144;
                  __sa = v100;
                  if (v62 != v82)
                  {
                    do
                    {
                      if (!v41 && *(v590 + *v62) != 255)
                      {
                        v42 += *(v4 + 3578);
                      }

                      v106 = *(a3[2] + ++v43);
                      ++v62;
                      if (v106 == 93)
                      {
                        v107 = 0;
                      }

                      else
                      {
                        v107 = v41;
                      }

                      if (v106 == 91)
                      {
                        v41 = 1;
                      }

                      else
                      {
                        v41 = v107;
                      }
                    }

                    while (v62 != v82);
                    v43 = v82 - v567;
                    v62 = v82;
                  }

                  v108 = v586 + v572;
                  v109 = v578;
                  if (v82 != v578)
                  {
                    v110 = (v578 + 1);
                    while (1)
                    {
                      v112 = *v110++;
                      v111 = v112;
                      if (!v112)
                      {
                        break;
                      }

                      if (*(v590 + v111) != 255)
                      {
                        v113 = v111 == 35;
                        goto LABEL_176;
                      }
                    }

                    v113 = 1;
LABEL_176:
                    v573 = v113;
                    v114 = v43 - 1;
                    while ((v114 & 0x8000) == 0)
                    {
                      v115 = *(a3[2] + (v114-- & 0x7FFF));
                      if (*(v590 + v115) != 255)
                      {
                        v116 = v115 != 35;
                        goto LABEL_181;
                      }
                    }

                    v116 = 0;
LABEL_181:
                    if (cstdlib_strlen(v85) < 1)
                    {
                      v44 = v4 + 2144;
                    }

                    else
                    {
                      v587 = v116;
                      v117 = 0;
                      v44 = v4 + 2144;
                      do
                      {
                        if (!v41 && *(v44 + *v62) != 255)
                        {
                          v121 = a3[451];
                          if (v121)
                          {
                            if (!v587)
                            {
                              *(v121 + 4 * v42) = *(a3[452] + 4 * v108);
                            }

                            v122 = *(*a3 + 3578);
                            ++v108;
                            ++v42;
                            if (v122 >= 2)
                            {
                              v123 = a3[452];
                              for (i = 1; i < v122; ++i)
                              {
                                *(v121 + 4 * v42++) = *(v123 + 4 * v108++);
                              }
                            }

                            v587 = 0;
                          }
                        }

                        v118 = *(a3[2] + ++v43);
                        ++v62;
                        if (v118 == 93)
                        {
                          v119 = 0;
                        }

                        else
                        {
                          v119 = v41;
                        }

                        if (v118 == 91)
                        {
                          v41 = 1;
                        }

                        else
                        {
                          v41 = v119;
                        }

                        ++v117;
                        v120 = cstdlib_strlen(v85);
                        v44 = v4 + 2144;
                      }

                      while (v120 > v117);
                    }

                    if (v573)
                    {
                      v109 = v578;
                    }

                    else
                    {
                      v125 = a3[451];
                      v109 = v578;
                      if (v125)
                      {
                        *(v125 + 4 * v42 - 4) = -1;
                      }
                    }
                  }

                  if (v62 != v109)
                  {
                    v126 = v43;
                    v127 = v62;
                    do
                    {
                      if (!v41 && *(v44 + *v127) != 255)
                      {
                        v42 += *(v4 + 3578);
                      }

                      v128 = *(a3[2] + ++v126);
                      ++v127;
                      if (v128 == 93)
                      {
                        v129 = 0;
                      }

                      else
                      {
                        v129 = v41;
                      }

                      if (v128 == 91)
                      {
                        v41 = 1;
                      }

                      else
                      {
                        v41 = v129;
                      }
                    }

                    while (v127 != v109);
                    LOWORD(v43) = v43 + v109 - v62;
                  }

                  v130 = *(a3 + 6) - 2;
                  *(a3 + 6) = v130;
                  v131 = a3[3];
                  v22 = v571;
                  if (v131)
                  {
                    *(v131 + v43 + 2) += *(v131 + v43 + 1) + *(v131 + v43);
                    v130 = *v6;
                  }

                  v572 = v108 + __sa;
                  if (v43 >= v130)
                  {
                    __s = v569;
                    a1 = v582;
                    v3 = 2229280789;
                  }

                  else
                  {
                    v132 = v43;
                    a1 = v582;
                    v3 = 2229280789;
                    do
                    {
                      *(a3[2] + v132) = *(a3[2] + v132 + 2);
                      *(a3[31] + v132) = *(a3[31] + v132 + 2);
                      v133 = a3[3];
                      if (v133)
                      {
                        *(v133 + v132) = *(v133 + v132 + 2);
                      }

                      ++v132;
                    }

                    while (v132 < *v6);
                    __s = v569;
                  }

                  goto LABEL_227;
                }
              }

              else
              {
LABEL_155:
                v99 = v582;
                log_OutText(*(v582 + 32), v577, 3, 0, "    Warning: no match, conflicting phonetics");
                log_OutText(*(v582 + 32), v577, 3, 0, "    Carrier: %s", __s);
                log_OutText(*(v582 + 32), v577, 3, 0, "    Phonemes: %s", v62);
                v103 = log_HasTraceTuningDataSubscriber(*(v582 + 32));
                v96 = 0;
                v100 = 0;
                v97 = "NOMATCH";
                v82 = v578;
                v98 = __s;
                if (!v103)
                {
                  goto LABEL_157;
                }
              }

              v104 = *(v99 + 32);
              v559 = v97;
              v557 = 0;
              v558 = "RES";
              v105 = v96;
              log_OutTraceTuningData(v104, 302, "%s%s %s%s", v91, v92, v93, v94, v95, "END");
              v98 = __s;
              v100 = v105;
              goto LABEL_157;
            }

            v85 = __s;
          }

          __s = v84;
          goto LABEL_139;
        }

        v22 = v571;
      }

      v44 = v4 + 2144;
LABEL_236:
      v40 = (v43 + 1);
      v39 = *v6;
      v43 = v40;
      if (v40 >= v39)
      {
        goto LABEL_257;
      }
    }

    if (v43 >= v54 || (v58 = a3[2], v59 = *(v58 + v43), v59 == 19))
    {
      v60 = v43;
LABEL_80:
      if (v43 != v54)
      {
        v74 = v54 - 2;
        *(a3 + 6) = v74;
        v75 = a3[3];
        if (v75)
        {
          *(v75 + v60 + 2) += *(v75 + v60 + 1) + *(v75 + v60);
          v74 = *v6;
        }

        if (v43 < v74)
        {
          v76 = v43;
          do
          {
            *(a3[2] + v76) = *(a3[2] + v76 + 2);
            *(a3[31] + v76) = *(a3[31] + v76 + 2);
            v77 = a3[3];
            if (v77)
            {
              *(v77 + v76) = *(v77 + v76 + 2);
            }

            ++v76;
          }

          while (v76 < *v6);
        }

        goto LABEL_227;
      }
    }

    else
    {
      while (1)
      {
        if (!v41 && *(v44 + v59) != 255)
        {
          v79 = *(v4 + 3578);
          if (*(v4 + 3578))
          {
            v80 = 0;
            v81 = a3[451];
            do
            {
              if (v81)
              {
                *(v81 + 4 * v42) = -2;
              }

              ++v42;
              ++v80;
            }

            while (v80 < v79);
          }
        }

        v60 = v46 + 1;
        v59 = *(v58 + v46 + 1);
        v78 = v59 == 93 ? 0 : v41;
        v41 = v59 == 91 ? 1 : v78;
        if (v46 == (v54 - 1))
        {
          break;
        }

        ++v46;
        if (v59 == 19)
        {
          LOWORD(v43) = v60;
          goto LABEL_80;
        }
      }
    }

    LOWORD(v43) = v54;
LABEL_227:
    v134 = *(a3[2] + v43);
    if (v134 != 91 && (v134 != 93 ? (v135 = v41 == 0) : (v135 = 1), v135))
    {
      v41 = 0;
      if (*(v44 + *(a3[2] + v43)) != 255)
      {
        v42 += *(v4 + 3578);
      }
    }

    else
    {
      v41 = 1;
    }

    goto LABEL_236;
  }

LABEL_257:
  if (v580)
  {
    heap_Free(*(a1 + 8), v580);
  }

  if (log_HasTraceTuningDataSubscriber(*(a1 + 32)))
  {
    v559 = *(a3 + 6);
    v560 = a3[2];
    v557 = 0;
    v558 = "OUT";
    log_OutTraceTuningData(*(a1 + 32), 301, "%s%s %s%.*s", v142, v143, v144, v145, v146, "END");
  }

  if (*(v4 + 2516))
  {
    v147 = *v6;
    if (v147 >= 1)
    {
      LOWORD(v148) = 0;
      v149 = 0;
      do
      {
        v150 = *(a3[2] + v148);
        if (v150 == 62)
        {
          if (!v22)
          {
            return v3;
          }

          if (v147 >= v148)
          {
            v153 = v148;
            do
            {
              v154 = v153 + 1;
              *(a3[31] + v153) = *(a3[31] + v154);
              *(a3[2] + v153++) = *(a3[2] + v154);
              v147 = *(a3 + 6);
            }

            while (v147 >= v153);
          }

          v22 = 0;
          *v6 = v147 - 1;
          LOWORD(v148) = v148 - 1;
        }

        else if (v150 == 60)
        {
          if (v147 >= v148)
          {
            v151 = v148;
            do
            {
              v152 = v151 + 1;
              *(a3[2] + v151) = *(a3[2] + v152);
              *(a3[31] + v151++) = *(a3[31] + v152);
              v147 = *(a3 + 6);
            }

            while (v147 >= v151);
          }

          *v6 = v147 - 1;
          LOWORD(v148) = v148 - 1;
          v22 = 1;
        }

        else if (*(v4 + 2144 + *(a3[2] + v148)) != 255)
        {
          v155 = a3[57];
          v156 = v149++;
          if (v22 == 1)
          {
            *(v155 + v156) = 1;
          }

          else
          {
            v22 = 0;
            *(v155 + v156) = 0;
          }
        }

        v148 = (v148 + 1);
        v147 = *v6;
      }

      while (v148 < v147);
    }
  }

  v157 = a3[223];
  *v157 = 0;
  v158 = *(a3 + 6);
  if (v158 <= 1)
  {
    v180 = 1;
    goto LABEL_318;
  }

  v159 = 0;
  v160 = v4 + 2144;
  v161 = 1;
  do
  {
    v162 = a3[2];
    v163 = v161 - 1;
    if (*(v162 + v163) == 35 && *(v162 + v161) == 91)
    {
      v164 = 0;
      v165 = v161 + 1;
      v166 = v161 + 1;
      while (1)
      {
        v167 = *(v162 + v166);
        if (v167 == 93)
        {
          break;
        }

        ++v166;
        v598[v164] = v167;
        if (v166 != v158)
        {
          v21 = v164++ == 9;
          if (!v21)
          {
            continue;
          }
        }

        return 2229280789;
      }

      v591 = v160;
      v598[v164] = 0;
      v168 = cstdlib_atoi(v598);
      if (v168 >= 0xFFFF)
      {
        v169 = 0xFFFF;
      }

      else
      {
        v169 = v168;
      }

      *(a3[223] + 2 * v159) = v169 & ~(v169 >> 31);
      v170 = v164 + 2;
      v171 = a3[3];
      v172 = (v164 + 2);
      if (!v171)
      {
        v174 = *v6;
        v160 = v591;
        goto LABEL_304;
      }

      v173 = v161 + v170;
      if (v173 <= v165)
      {
        v174 = *v6;
        v160 = v591;
      }

      else
      {
        do
        {
          *(a3[3] + v161) += *(a3[3] + v165++);
        }

        while (v173 > v165);
        v171 = a3[3];
        v174 = *(a3 + 6);
        v160 = v591;
        if (!v171)
        {
          goto LABEL_304;
        }
      }

      if (v174 - v172 == v161)
      {
        *(v171 + v163) += *(v171 + v161);
        v174 = *v6;
LABEL_314:
        LOWORD(v158) = v174 - v170;
        *v6 = v158;
        LOWORD(v161) = v161 - 1;
        goto LABEL_315;
      }

LABEL_304:
      if (v174 - v172 > v161)
      {
        v175 = v161;
        LOWORD(v176) = v161;
        do
        {
          v177 = v175 + v172;
          v176 = v176;
          *(a3[2] + v176) = *(a3[2] + v177);
          v178 = a3[3];
          if (v178)
          {
            v179 = *(v178 + v177);
            if (v176 == v161)
            {
              v179 += *(v178 + v176);
            }

            *(v178 + v176) = v179;
          }

          if ((*(v4 + 3092) & 0x80000000) == 0)
          {
            *(a3[31] + v176) = *(a3[31] + v177);
          }

          LOWORD(v176) = v176 + 1;
          v175 = v176;
        }

        while (*v6 - v172 > v176);
        v174 = *v6;
      }

      goto LABEL_314;
    }

    if (*(v160 + *(v162 + v161)) != 255)
    {
      *(a3[223] + 2 * ++v159) = 0;
      LOWORD(v158) = *(a3 + 6);
    }

LABEL_315:
    v161 = (v161 + 1);
  }

  while (v161 < v158);
  v157 = a3[223];
  v180 = v159 + 1;
  v3 = 2229280789;
LABEL_318:
  *(v157 + v180) = 0;
  if ((*(v4 + 3068) & 0x80000000) == 0)
  {
    *(a3[28] + v180) = 0;
  }

  if ((*(v4 + 3072) & 0x80000000) == 0)
  {
    *(a3[30] + v180) = 0;
  }

  v181 = *(a3 + 6);
  LOWORD(v182) = *(a3 + 6);
  v183 = a3[2];
  while (1)
  {
    v184 = v181 - 1;
    if (v183[v184] == 35)
    {
      break;
    }

    v185 = a3[3];
    if (v185)
    {
      *(v185 + v182 - 2) += *(v185 + v184);
      LOWORD(v182) = *(a3 + 6);
      v183 = a3[2];
    }

    LOWORD(v182) = v182 - 1;
    *v6 = v182;
    v181 = v182;
  }

  if (v182 >= 1)
  {
    v186 = 0;
    v187 = v4 + 2144;
    v188 = v182;
    v189 = v182;
    do
    {
      v190 = v183[v186];
      if (v190 != 35 && *(v187 + v190) != 255)
      {
        LOWORD(v182) = v186;
        break;
      }

      ++v186;
    }

    while (v182 != v186);
    while (1)
    {
      v191 = v189 - 1;
      if (v189 < 1)
      {
        break;
      }

      v192 = v183[--v189];
      if (v192 != 35)
      {
        v189 = v191;
        if (*(v187 + v192) != 255)
        {
          goto LABEL_341;
        }
      }
    }

    LOWORD(v191) = -1;
LABEL_341:
    if (v182 <= v191)
    {
      v194 = 1;
      do
      {
        v195 = v183[v182];
        v196 = (v195 > 0x2A) | (0x3D7FFFFFFFFuLL >> v195);
        v197 = v195 > 0x2D;
        v198 = (1 << v195) & 0x242800000000;
        if (!v197 && v198 != 0)
        {
          v194 = 0;
        }

        v182 = (v182 + 1);
      }

      while ((v196 & (v182 <= v191)) != 0);
      v193 = v194 == 1;
    }

    else
    {
      v193 = 1;
    }

    if ((*(v4 + 3092) & 0x80000000) != 0)
    {
      if (v193 && v595 == 2)
      {
        v200 = 0;
      }

      else
      {
        v200 = v595;
      }

      v595 = v200;
    }

    if (*v183 == 35 && v183[v188 - 1] == 35)
    {
      if ((*(v4 + 3104) & 0x80000000) == 0)
      {
        v201 = cstdlib_strchr((v4 + 2400), v183[1]);
        if (v201)
        {
          v202 = v201 - (v4 + 96) + 1;
        }

        else
        {
          v202 = 0;
        }

        *a3[33] = v202;
        *a3[34] = 0;
      }

      if ((*(v4 + 3120) & 0x80000000) == 0 || (*(v4 + 3132) & 0x80000000) == 0)
      {
        *a3[35] = 0;
      }

      if ((*(v4 + 3136) & 0x80000000) == 0)
      {
        *a3[36] = 1;
      }

      if ((*(v4 + 3140) & 0x80000000) == 0)
      {
        *a3[37] = 1;
      }

      if ((*(v4 + 3144) & 0x80000000) == 0)
      {
        *a3[38] = 1;
      }

      if ((*(v4 + 3148) & 0x80000000) == 0)
      {
        *a3[39] = 1;
      }

      v203 = a3[3];
      if (v203)
      {
        *a3[225] = *v203;
      }

      if (*(v4 + 2604) == 2)
      {
        v204 = 87;
      }

      else
      {
        v204 = 88;
      }

      *a3[6] = v204;
      *a3[4] = *a3[2];
      *a3[9] = 1;
      *a3[10] = 1;
      *a3[11] = 0;
      *a3[12] = 3;
      v205 = a3 + 13;
      *a3[13] = 1;
      *a3[14] = 0;
      *a3[15] = 1;
      *a3[16] = 0;
      *a3[18] = 4;
      if ((*(v4 + 3068) & 0x80000000) == 0)
      {
        *a3[27] = 0;
        *a3[28] = 0;
      }

      if ((*(v4 + 3072) & 0x80000000) == 0)
      {
        *a3[29] = 0;
        *a3[30] = 0;
      }

      if ((*(v4 + 3392) & 0x80000000) == 0 || (*(v4 + 3396) & 0x80000000) == 0)
      {
        *a3[444] = 0xC800C8FF38FF38;
      }

      if ((*(v4 + 3092) & 0x80000000) != 0)
      {
        *a3[31] = v595;
      }

      *a3[19] = 3;
      *a3[20] = 0;
      *a3[21] = 0;
      *a3[22] = 4;
      *a3[23] = 4;
      v206 = 1;
      *a3[24] = 1;
      v207 = *(a3 + 6);
      if (v207 >= 3)
      {
        v208 = 0;
        v209 = 0;
        v210 = 0;
        __sb = 0;
        v564 = v595;
        v588 = (v4 + 2400);
        v211 = a3[2];
        v212 = 2;
        v213 = 1;
        v214 = 1;
        v215 = 1;
        v576 = 1;
        while (1)
        {
          v592 = v212;
          v216 = v208;
          v217 = v213;
          v218 = *(v211 + v213);
          v219 = a3[3];
          if (*(v187 + *(v211 + v213)) == 255)
          {
            if (v219)
            {
              v210 += *(v219 + v213);
            }

            v221 = __sb;
            goto LABEL_682;
          }

          if (v219)
          {
            v220 = v206;
            *(a3[225] + 2 * v206) = *(v219 + v213) + v210;
            LOBYTE(v218) = *(v211 + v213);
            v574 = 0;
          }

          else
          {
            v574 = v210;
            v220 = v206;
          }

          v581 = v216;
          v579 = v215;
          *(a3[4] + v220) = v218;
          v222 = a3[31];
          v223 = v564;
          if ((*(v4 + 3092) & 0x80000000) == 0)
          {
            v223 = *(v222 + v213);
          }

          *(v222 + v220) = v223;
          if ((*(v4 + 3104) & 0x80000000) == 0)
          {
            v224 = cstdlib_strchr(v588, *(a3[2] + v213 + 1));
            v205 = a3 + 13;
            if (v224)
            {
              v225 = v224 - v588 + 1;
            }

            else
            {
              v225 = 0;
            }

            *(a3[33] + v220) = v225;
          }

          v226 = a3[2];
          if (*(v226 + v217) == 35)
          {
            if ((*(v4 + 3120) & 0x80000000) == 0 || (*(v4 + 3132) & 0x80000000) == 0)
            {
              *(a3[35] + v220) = 0;
            }

            if ((*(v4 + 3104) & 0x80000000) == 0)
            {
              *(a3[34] + v220) = 0;
            }

            *(a3[9] + v220) = 1;
            *(a3[10] + v220) = 1;
            *(a3[11] + v220) = 0;
            *(a3[12] + v220) = 3;
            *(a3[19] + v220) = 3;
            *(a3[20] + v220) = 0;
            *(a3[21] + v220) = 0;
            *(a3[22] + v220) = 4;
            *(a3[23] + v220) = 4;
            *(a3[13] + v220) = 2;
            if (((v217 - 1) & 0x8000) == 0)
            {
              v227 = v217 - 1;
              do
              {
                v228 = *(a3[2] + v227);
                if (*(v187 + v228) != 255)
                {
                  break;
                }

                if (v228 == 37)
                {
                  *(*v205 + v220) = 3;
                  break;
                }

                v21 = v227-- == 0;
              }

              while (!v21);
            }

            if (*(*v205 + v220) == 2 && *v6 > (v217 + 1))
            {
              v234 = v592;
              while (1)
              {
                v235 = *(a3[2] + v234);
                if (*(v187 + v235) != 255)
                {
                  break;
                }

                if (v235 == 37)
                {
                  v309 = 4;
                  v310 = v205;
                  goto LABEL_645;
                }

                if (++v234 >= *v6)
                {
                  goto LABEL_646;
                }
              }
            }

            goto LABEL_646;
          }

          v229 = (v217 + 1);
          if (v229 < *v6)
          {
            v230 = v592;
            while (1)
            {
              v231 = *(v226 + v230);
              if (v231 <= 0x2D && ((1 << v231) & 0x202800000000) != 0)
              {
                v233 = 1;
                goto LABEL_436;
              }

              if (*(v187 + v231) != 255)
              {
                break;
              }

              if (++v230 >= *v6)
              {
                goto LABEL_437;
              }
            }

            v233 = 0;
LABEL_436:
            *(a3[9] + v220) = v233;
          }

LABEL_437:
          v568 = v206;
          LOWORD(v206) = v217 - 1;
          if (((v217 - 1) & 0x8000) == 0)
          {
            v236 = v581;
            while (1)
            {
              v237 = *(a3[2] + v236);
              if (v237 <= 0x2D && ((1 << v237) & 0x202800000000) != 0)
              {
                v240 = 1;
                goto LABEL_448;
              }

              if (*(v187 + v237) != 255)
              {
                break;
              }

              v239 = v236--;
              if (v239 <= 0)
              {
                goto LABEL_449;
              }
            }

            v240 = 0;
LABEL_448:
            *(a3[10] + v220) = v240;
          }

LABEL_449:
          if ((*(v4 + 3104) & 0x80000000) == 0)
          {
            v241 = v220 - 1;
            if (*(a3[4] + v220 - 1) == 35)
            {
              v242 = cstdlib_strlen(v588) + 1;
              v229 = (v217 + 1);
              v205 = a3 + 13;
              v243 = a3[34];
            }

            else
            {
              v243 = a3[34];
              if (*(a3[10] + v220) == 1)
              {
                v242 = *(a3[33] + v241);
              }

              else
              {
                v242 = *(v243 + v241);
              }
            }

            *(v243 + v220) = v242;
          }

          if (v229 < *v6)
          {
            v244 = 0;
            v245 = 0;
            v246 = 0;
            v247 = v592;
            while (1)
            {
              v248 = *(a3[2] + v247);
              if (v248 <= 0x26)
              {
                if (v248 == 34)
                {
                  v244 = 1;
                }

                else if (v248 == 35 || v248 == 37)
                {
                  goto LABEL_472;
                }
              }

              else
              {
                switch(v248)
                {
                  case '\'':
                    v246 = 1;
                    break;
                    v245 = 1;
                    break;
                  case '-':
                    goto LABEL_472;
                }
              }

              if (++v247 >= *v6)
              {
                goto LABEL_472;
              }
            }
          }

          v246 = 0;
          v245 = 0;
          v244 = 0;
LABEL_472:
          v206 = v206;
          if ((v206 & 0x80000000) == 0)
          {
            v249 = v581;
            do
            {
              v250 = *(a3[2] + v249);
              if (v250 <= 0x26)
              {
                if (v250 == 34)
                {
                  v244 = 1;
                }

                else if (v250 == 35 || v250 == 37)
                {
                  break;
                }
              }

              else
              {
                switch(v250)
                {
                  case '\'':
                    v246 = 1;
                    break;
                    v245 = 1;
                    break;
                  case '-':
                    goto LABEL_486;
                }
              }

              v251 = v249--;
            }

            while (v251 > 0);
          }

LABEL_486:
          if (v244 == 1)
          {
            *(a3[11] + v220) = 3;
          }

          else if (v246 == 1)
          {
            *(a3[11] + v220) = 2;
          }

          else
          {
            v252 = a3[11];
            *(v252 + v220) = v245 == 1;
          }

          v253 = *(a3[11] + v220);
          if (*(a3[11] + v220))
          {
            if (v253 == 1)
            {
              *(a3[20] + v220) = 7;
            }

            else if (v253 == 3)
            {
              if (v579)
              {
                v254 = 3;
              }

              else
              {
                v254 = 4;
              }

              if (!v214)
              {
                v254 = 2;
              }

              *(a3[20] + v220) = v254;
              if (*(a3[9] + v220) == 1)
              {
                v214 = 0;
              }
            }

            else
            {
              *(a3[20] + v220) = 1;
            }
          }

          else
          {
            *(a3[20] + v220) = 0;
          }

          *(a3[21] + v220) = 0;
          v255 = v220 - 1;
          v256 = *(a3[14] + v220 - 1);
          if (*(a3[11] + v220) == 3 && ((v257 = a3[21], v256 == 2) || !*(v257 + v255)))
          {
            LOBYTE(v255) = 2;
          }

          else if (*(a3[14] + v220 - 1))
          {
            if (v256 != 1)
            {
              goto LABEL_519;
            }

            v257 = a3[21];
            LODWORD(v255) = *(v257 + v255);
            if (v255 == 2)
            {
              LOBYTE(v255) = 3;
            }

            else if (v255 != 4)
            {
              if (v255 != 3)
              {
                goto LABEL_519;
              }

              LOBYTE(v255) = 4;
            }
          }

          else
          {
            v257 = a3[21];
            LOBYTE(v255) = *(v257 + v255);
          }

          *(v257 + v220) = v255;
LABEL_519:
          v566 = v209;
          *(a3[12] + v220) = 2;
          v258 = v229;
          v259 = *(a3 + 6);
          v570 = v229;
          if (v229 >= v259)
          {
            v261 = v229;
          }

          else
          {
            v260 = v229;
            v261 = v592;
            do
            {
              v262 = *(a3[2] + v261);
              if (*(v187 + v262) == 255)
              {
                v263 = cstdlib_strchr(v588, v262);
                LOWORD(v259) = *v6;
                if (!v263)
                {
                  break;
                }
              }

              ++v261;
            }

            while (v261 < v259);
            v258 = v261;
            v205 = a3 + 13;
            LODWORD(v229) = v260;
          }

          if (v261 == v259 && *(a3[2] + v258 - 1) == 35)
          {
            *(a3[12] + v220) = 3;
            LOWORD(v259) = *(a3 + 6);
          }

          if (v261 < v259)
          {
            v264 = a3[2];
            v265 = v261 << 48;
            v266 = (v264 + v261);
            v267 = v261 + 1;
            while (1)
            {
              v269 = *v266++;
              v268 = v269;
              if (*(v187 + v269) != 255)
              {
                break;
              }

              v197 = v268 > 0x2A;
              v270 = (1 << v268) & 0x42800000000;
              if (!v197 && v270 != 0)
              {
                break;
              }

              v265 += 0x1000000000000;
              v21 = v259 == v267++;
              if (v21)
              {
                goto LABEL_545;
              }
            }

            v272 = *(v264 + (v265 >> 48));
            v197 = v272 > 0x2A;
            v273 = (1 << v272) & 0x42800000000;
            if (!v197 && v273 != 0)
            {
              *(a3[12] + v220) = 3;
            }
          }

LABEL_545:
          v275 = a3[12];
          v209 = v566;
          if (*(v275 + v220) == 2)
          {
            if (v206 < 1)
            {
              v280 = v217 - 1;
              if (!v217)
              {
                if (*a3[2] == 35)
                {
                  *(v275 + v220) = 1;
                }

                v280 = -1;
              }

LABEL_556:
              v281 = a3[2];
            }

            else
            {
              v276 = v229;
              v277 = v581;
              while (1)
              {
                v278 = *(a3[2] + v277);
                if (*(v187 + v278) == 255 && !cstdlib_strchr(v588, v278))
                {
                  break;
                }

                v279 = v277--;
                if (v279 <= 1)
                {
                  v280 = 0;
                  v209 = v566;
                  v205 = a3 + 13;
                  LODWORD(v229) = v276;
                  goto LABEL_556;
                }
              }

              v280 = v277;
              v281 = a3[2];
              if (v277 < 1)
              {
                v209 = v566;
                v205 = a3 + 13;
                LODWORD(v229) = v276;
              }

              else
              {
                v209 = v566;
                v205 = a3 + 13;
                LODWORD(v229) = v276;
                while (1)
                {
                  v313 = *(v281 + v280);
                  if (*(v187 + v313) != 255)
                  {
                    break;
                  }

                  v197 = v313 > 0x2A;
                  v314 = (1 << v313) & 0x42800000000;
                  if (!v197 && v314 != 0)
                  {
                    break;
                  }

                  v316 = v280--;
                  if (v316 <= 1)
                  {
                    v280 = 0;
                    break;
                  }
                }
              }
            }

            v282 = *(v281 + v280);
            v197 = v282 > 0x2A;
            v283 = (1 << v282) & 0x42800000000;
            if (!v197 && v283 != 0)
            {
              *(a3[12] + v220) = 1;
            }
          }

          *(a3[13] + v220) = 2;
          v285 = *(a3 + 6);
          v286 = a3[2];
          LOWORD(v287) = v229;
          if (v229 < v285)
          {
            v287 = v592;
            while (1)
            {
              v288 = *(v286 + v287);
              v197 = v288 > 0x2A;
              v289 = (1 << v288) & 0x42800000000;
              if (!v197 && v289 != 0)
              {
                break;
              }

              if (*(a3 + 6) == ++v287)
              {
                LOWORD(v287) = *(a3 + 6);
                break;
              }
            }

            v570 = v287;
          }

          v291 = *(v286 + v570);
          if (v291 <= 0x2A && ((1 << v291) & 0x42800000000) != 0)
          {
            if (v285 - 1 == v287 && v291 == 35)
            {
              v293 = 5;
            }

            else
            {
              if (v291 != 37)
              {
                v302 = (v287 + 1);
                while (2)
                {
                  if (v302 >= v285)
                  {
                    goto LABEL_582;
                  }

                  v303 = *(a3[2] + v302);
                  if (*(v187 + *(a3[2] + v302)) != 255)
                  {
                    goto LABEL_582;
                  }

                  if (v285 - 1 == v302 && v303 == 35)
                  {
                    v304 = 5;
                    goto LABEL_607;
                  }

                  if (v303 == 37)
                  {
                    v304 = 4;
LABEL_607:
                    *(*v205 + v220) = v304;
                  }

                  v302 = (v302 + 1);
                  v285 = *v6;
                  continue;
                }
              }

              v293 = 4;
            }

            *(*v205 + v220) = v293;
          }

LABEL_582:
          if (*(*v205 + v220) != 2)
          {
            goto LABEL_612;
          }

          v294 = a3[2];
          if (v206 >= 1)
          {
            v295 = v581;
            while (1)
            {
              v296 = *(v294 + v295);
              v206 = v295;
              v197 = v296 > 0x2A;
              v297 = (1 << v296) & 0x42800000000;
              if (!v197 && v297 != 0)
              {
                break;
              }

              --v295;
              if (v206 <= 1)
              {
                v206 = 0;
                break;
              }
            }
          }

          v299 = *(v294 + v206);
          if (v299 > 0x2A || ((1 << v299) & 0x42800000000) == 0)
          {
            goto LABEL_612;
          }

          if (!v206 && v299 == 35)
          {
            v301 = 1;
LABEL_611:
            *(*v205 + v220) = v301;
            goto LABEL_612;
          }

          if (v299 == 37)
          {
            v301 = 3;
            goto LABEL_611;
          }

          if ((v206 - 1) >= 1)
          {
            v311 = (v206 - 1);
            do
            {
              v312 = *(a3[2] + v311);
              if (*(v187 + v312) != 255)
              {
                break;
              }

              if (v312 == 37)
              {
                *(*v205 + v220) = 3;
              }

              ++v311;
            }

            while (v311 != 0x8000);
          }

LABEL_612:
          v305 = *(*v205 + v220) - 1;
          if (v305 <= 4)
          {
            *(a3[22] + v220) = 0x402000103uLL >> (8 * (v305 & 0x1F));
          }

          v206 = v568;
          if (((*(v4 + 3120) & 0x80000000) == 0 || (*(v4 + 3132) & 0x80000000) == 0) && v229 < *v6)
          {
            v306 = v592;
            while (1)
            {
              v307 = *(a3[2] + v306);
              if (v307 <= 0x2D && ((1 << v307) & 0x202800000000) != 0)
              {
                v309 = 0;
                v310 = a3 + 35;
                v206 = v568;
                v205 = a3 + 13;
                goto LABEL_645;
              }

              if (cstdlib_strchr("1234", v307))
              {
                break;
              }

              if (++v306 >= *v6)
              {
                v206 = v568;
                v205 = a3 + 13;
                goto LABEL_646;
              }
            }

            v309 = *(a3[2] + v306) - 49;
            v310 = a3 + 35;
            v206 = v568;
            v205 = a3 + 13;
LABEL_645:
            *(*v310 + v220) = v309;
          }

LABEL_646:
          if (*(a3[9] + v220) == 1)
          {
            if (*(a3[12] + v220) == 3)
            {
              v317 = a3[14];
              if ((*(a3[13] + v220) & 0xFE) == 4)
              {
                *(v317 + v220) = 3;
              }

              else
              {
                *(v317 + v220) = 2;
              }
            }

            else
            {
              *(a3[14] + v220) = 1;
            }
          }

          else
          {
            *(a3[14] + v220) = 0;
          }

          if (*(a3[4] + v220) != 35)
          {
            v318 = (a3[14] + v220);
            v319 = *(v318 - 1);
            if (v319 == 2 || v319 == 3 || v206 == 1)
            {
              *(a3[23] + v220) = 0;
            }

            else
            {
              v325 = *v318;
              if ((v325 - 2) >= 2)
              {
                if (v325 != 1)
                {
                  v328 = a3[23];
                  if (v319 == 1)
                  {
                    *(v328 + v220) = 1;
                  }

                  else
                  {
                    *(v328 + v220) = 2;
                  }

                  goto LABEL_663;
                }

                v326 = a3[23];
                v327 = 3;
              }

              else
              {
                v326 = a3[23];
                v327 = 4;
              }

              *(v326 + v220) = v327;
            }
          }

LABEL_663:
          v221 = 0;
          v322 = v576;
          if (v576 == 1)
          {
            v323 = 1;
          }

          else
          {
            v323 = 2;
          }

          *(a3[15] + v220) = v323;
          if (*(a3[9] + v220) == 1)
          {
            v322 = 0;
          }

          v576 = v322;
          *(a3[16] + v220) = __sb;
          if (*(a3[14] + v220) != 3)
          {
            if (*(a3[4] + v220) == 35)
            {
              v221 = __sb;
            }

            else if (*(a3[9] + v220) != 1 || __sb == 254)
            {
              v221 = __sb;
            }

            else
            {
              v221 = __sb + 1;
            }
          }

          if ((*(v4 + 3140) & 0x80000000) == 0)
          {
            *(a3[37] + v220) = 2;
            if (!v209)
            {
              *(a3[37] + v220) = 1;
              v215 = v579;
              LOWORD(v216) = v581;
              v209 = (*(a3[11] + v220) & 0xFE) == 2 && *(a3[9] + v220) == 1;
              goto LABEL_681;
            }

            v209 = 1;
          }

          v215 = v579;
          LOWORD(v216) = v581;
LABEL_681:
          ++v206;
          v211 = a3[2];
          LOWORD(v207) = *(a3 + 6);
          v218 = *(v211 + v217);
          v210 = v574;
LABEL_682:
          if (v218 == 37)
          {
            v215 = 0;
            v214 = 1;
          }

          v213 = v217 + 1;
          v212 = v592 + 1;
          v208 = v216 + 1;
          __sb = v221;
          if (v207 - 1 <= (v217 + 1))
          {
            goto LABEL_700;
          }
        }
      }

      LOBYTE(v210) = 0;
      v209 = 0;
LABEL_700:
      if (*(v4 + 2560))
      {
        *(a3[445] + 9 * v206 + 7) = 8995;
      }

      if ((*(v4 + 3136) & 0x80000000) == 0)
      {
        *(a3[36] + v206) = 1;
      }

      if ((*(v4 + 3140) & 0x80000000) == 0)
      {
        *(a3[37] + v206) = 3;
      }

      if ((*(v4 + 3144) & 0x80000000) == 0)
      {
        *(a3[38] + v206) = 1;
      }

      if ((*(v4 + 3148) & 0x80000000) == 0)
      {
        *(a3[39] + v206) = 1;
      }

      if ((*(v4 + 3104) & 0x80000000) == 0)
      {
        *(a3[33] + v206) = 0;
        *(a3[34] + v206) = 0;
      }

      if ((*(v4 + 3120) & 0x80000000) == 0 || (*(v4 + 3132) & 0x80000000) == 0)
      {
        *(a3[35] + v206) = 0;
      }

      if (*(v4 + 2604) == 2)
      {
        v329 = 87;
      }

      else
      {
        v329 = 88;
      }

      *(a3[6] + v206) = v329;
      *(a3[4] + v206) = *(a3[2] + *(a3 + 6) - 1);
      v330 = a3[3];
      if (v330)
      {
        *(a3[225] + 2 * v206) = *(v330 + *(a3 + 6) - 1) + v210;
      }

      *(a3[9] + v206) = 1;
      *(a3[10] + v206) = 1;
      *(a3[11] + v206) = 0;
      *(a3[12] + v206) = 3;
      *(a3[13] + v206) = 5;
      *(a3[14] + v206) = 0;
      *(a3[15] + v206) = 3;
      *(a3[16] + v206) = 0;
      *(a3[17] + v206) = 0;
      *(a3[18] + v206) = 4;
      if ((*(v4 + 3068) & 0x80000000) == 0)
      {
        *(a3[27] + v206) = 0;
        *(a3[28] + v206) = 0;
      }

      if ((*(v4 + 3072) & 0x80000000) == 0)
      {
        *(a3[29] + v206) = 0;
        *(a3[30] + v206) = 0;
      }

      if ((*(v4 + 3392) & 0x80000000) == 0 || (*(v4 + 3396) & 0x80000000) == 0)
      {
        *(a3[444] + 8 * v206) = 0xC800C8FF38FF38;
      }

      if ((*(v4 + 3092) & 0x80000000) != 0)
      {
        *(a3[31] + v206) = v595;
      }

      else
      {
        *(a3[31] + v206) = *(a3[31] + v206 - 1);
      }

      *(a3[19] + v206) = 3;
      *(a3[20] + v206) = 0;
      *(a3[21] + v206) = 0;
      *(a3[22] + v206) = 4;
      *(a3[23] + v206) = 4;
      *(a3[24] + v206) = 1;
      if (*(v4 + 2560))
      {
        cstdlib_memset((a3[445] + 9 * v206), 0, 9uLL);
        v331 = (a3[445] + 9 * v206);
        v331[5] = *(a3[4] + v206 - 1);
        v331[6] = 35;
        *v331 = 35;
      }

      *(a3 + 5) = v206 + 1;
      v332 = 1;
      if ((*(a3 + 6) - 2) >= 1)
      {
        v333 = 0;
        v334 = v206 - 1;
        v335 = v209 & (*(v4 + 3140) >> 31);
        v336 = (*(a3 + 6) - 2);
        v337 = 1;
        v338 = 1;
        v339 = 1;
        v340 = 1;
        while (*(v187 + *(a3[2] + v336)) == 255)
        {
LABEL_834:
          v197 = v336-- <= 1;
          if (v197)
          {
            v332 = v333 + 1;
            goto LABEL_843;
          }
        }

        *(a3[17] + v334) = v339 == 0;
        LOWORD(v341) = v336;
        do
        {
          v341 = (v341 - 1);
          if (v341 < 1)
          {
            break;
          }

          v342 = *(a3[2] + v341);
          if (v342 == 37)
          {
            break;
          }
        }

        while (*(v187 + v342) == 255);
        v343 = *(a3[11] + v334);
        if (v343 == 3 && v339 != 0 && v338)
        {
          *(a3[20] + v334) = 6;
          goto LABEL_753;
        }

        if (v343 == 3 && v338)
        {
          v347 = a3[20];
          if (*(v347 + v334) - 3 >= 2)
          {
            *(v347 + v334) = 5;
LABEL_753:
            v338 = *(a3[10] + v334) != 1;
          }

          else
          {
            v338 = 1;
          }
        }

        v348 = (a3[21] + v334);
        if (!*v348)
        {
          if (*(a3[14] + v334))
          {
            if (*(a3[14] + v334) != 1 || v348[1] - 1 >= 2)
            {
              goto LABEL_755;
            }
          }

          else if (v348[1] != 1)
          {
            goto LABEL_755;
          }

          *v348 = 1;
        }

LABEL_755:
        v349 = *v6 - 1;
        if (v349 == v336)
        {
          v350 = a3[16];
          v351 = *(v350 + v334);
        }

        else
        {
          v350 = a3[16];
          if (v349 <= v336 || (v351 = *(v350 + v334), !*(v350 + v334)) && *(a3[14] + v334) != 3 || *(v350 + v334 + 1))
          {
            v351 = v333;
          }
        }

        v352 = v333 + 1;
        v353 = v334 + 1;
        *(v350 + v353) = v352;
        v354 = *(a3[16] + v334);
        if (v354 == v351)
        {
          *(a3[18] + v334) = 4;
        }

        else if (v351 - 1 == v354)
        {
          *(a3[18] + v334) = 6;
        }

        else if (*(a3[16] + v334))
        {
          if (v354 == 1)
          {
            *(a3[18] + v334) = 1;
          }

          else
          {
            v355 = 19662 * v351;
            if ((v351 - HIWORD(v355)) >= v354)
            {
              v356 = a3[18];
              if (HIWORD(v355) <= v354)
              {
                *(v356 + v334) = 5;
              }

              else
              {
                *(v356 + v334) = 3;
              }
            }

            else
            {
              *(a3[18] + v334) = 2;
            }
          }
        }

        else
        {
          *(a3[18] + v334) = 0;
        }

        if (*(a3[2] + v336) != 35)
        {
          if (*(a3[18] + v334) == 4)
          {
            v359 = a3[19];
            if (*(a3[16] + v334))
            {
              if (v339)
              {
                *(v359 + v334) = 3;
              }

              else
              {
                *(v359 + v334) = 1;
              }
            }

            else
            {
              *(v359 + v334) = 2;
            }
          }

          else if (*(a3[16] + v334))
          {
            v360 = *(a3[12] + v334);
            switch(v360)
            {
              case 3:
                *(a3[19] + v334) = 6;
                break;
              case 2:
                *(a3[19] + v334) = 5;
                break;
              case 1:
                *(a3[19] + v334) = 4;
                break;
            }
          }

          else
          {
            *(a3[19] + v334) = 0;
          }
        }

        if (*(a3[19] + v334) == 2)
        {
          v357 = a3[20];
          if (*(v357 + v334) == 4)
          {
            if (v339)
            {
              v358 = 6;
            }

            else
            {
              v358 = 5;
            }

            *(v357 + v334) = v358;
          }
        }

        if (*(a3[2] + v341) == 37)
        {
          v339 = 0;
          v338 = 1;
        }

        if (v340 == 1)
        {
          *(a3[15] + v334) = 3;
        }

        if (*(a3[10] + v334) == 1)
        {
          v340 = 0;
        }

        if ((*(v4 + 3136) & 0x80000000) == 0)
        {
          *(a3[36] + v334) = 1;
          if (*(a3[4] + v334) == 35)
          {
            v337 = *(a3[11] + v334) < 2u;
            goto LABEL_817;
          }

          if ((*(a3[14] + v334) & 0xFE) == 2)
          {
            if (*(a3[11] + v334) < 2u)
            {
              goto LABEL_816;
            }

LABEL_811:
            v337 = 0;
          }

          else
          {
            if (!v337 || *(a3[11] + v334) > 1u)
            {
              goto LABEL_811;
            }

LABEL_816:
            *(a3[36] + v334) = 3;
            v337 = 1;
          }
        }

LABEL_817:
        if ((*(v4 + 3140) & 0x80000000) == 0 && !v335)
        {
          if (*v6 - 2 == v336 || (*(a3[11] + v353) & 0xFE) != 2 || (v335 = *(a3[9] + v334), v335 != 1))
          {
            v335 = 0;
            *(a3[37] + v334) = 3;
          }
        }

        if ((*(v4 + 3144) & 0x80000000) == 0)
        {
          if (*(a3[4] + v334) == 35 || (v361 = *(a3[14] + v334), (v361 - 2) < 2))
          {
            v362 = a3[38];
            v363 = 1;
          }

          else if (v361 == 1)
          {
            v362 = a3[38];
            v363 = *(v362 + v353) + 1;
          }

          else
          {
            v362 = a3[38];
            v363 = *(v362 + v353);
          }

          *(v362 + v334) = v363;
        }

        if (!*(v4 + 2516))
        {
          if (*(v4 + 2604) == 2)
          {
            v364 = 87;
          }

          else
          {
            v364 = *(v4 + 1373 + *(v187 + *(a3[2] + v336)));
          }

          *(a3[6] + v334) = v364;
        }

        --v334;
        v333 = v351;
        goto LABEL_834;
      }

      v337 = 1;
LABEL_843:
      *a3[16] = v332;
      *(a3[16] + 1) = v332;
      *a3[17] = *(a3[17] + 1);
      if (*(a3 + 5) > 1)
      {
        v365 = 0;
        v366 = 0;
        v589 = 0;
        v367 = *(v4 + 3136) >= 0 || v337;
        v593 = v367;
        while (1)
        {
          if (*(a3[10] + v366) == 1)
          {
            if (*(v4 + 2560))
            {
              v368 = 9 * v366;
              cstdlib_memset((a3[445] + v368), 0, 9uLL);
              if (v366)
              {
                v369 = a3[4];
                v370 = a3[445];
                *(v370 + v368 + 5) = *(v369 + v366 - 1);
              }

              else
              {
                v370 = a3[445];
                *(v370 + v368 + 5) = 35;
                v369 = a3[4];
              }

              v376 = *(v369 + v366);
              v377 = (v370 + v368);
              v377[7] = v376;
              *v377 = v376;
            }

            v378 = 1;
            if (*(a3[9] + v366) == 1)
            {
              v379 = v366;
            }

            else
            {
              v379 = v366;
              v380 = v366;
              v381 = 9 * v366;
              do
              {
                if (*(v4 + 2560))
                {
                  if (v378 > 4u)
                  {
                    cstdlib_memset((a3[445] + v381), 0, 9uLL);
                  }

                  else
                  {
                    *(a3[445] + v381 + v378) = *(a3[4] + v379 + 1);
                  }
                }

                ++v380;
                ++v378;
                v379 = v380;
              }

              while (*(a3[9] + v380) != 1);
            }

            if (*(v4 + 2560))
            {
              v382 = (a3[4] + v379);
              v383 = a3[445] + 9 * v366;
              *(v383 + 6) = v382[1];
              *(v383 + 8) = *v382;
            }

            *(a3[24] + v366) = v378;
          }

          else
          {
            v371 = v365 - 1;
            *(a3[24] + v366) = *(a3[24] + v371);
            if (*(v4 + 2560))
            {
              v372 = a3[445];
              v373 = v372 + 9 * v371;
              v374 = *v373;
              v375 = v372 + 9 * v366;
              *(v375 + 8) = *(v373 + 8);
              *v375 = v374;
            }
          }

          if (*(a3[24] + v366) == 1 && *(a3[4] + v366) != 35)
          {
            v384 = a3[23];
            if (*(v384 + v366))
            {
              *(v384 + v366) = 1;
            }
          }

          if (!*(v4 + 2516))
          {
            v385 = *(v4 + 2966);
            if (*(v4 + 2966))
            {
              v386 = 0;
              v387 = 0;
              v388 = *(v4 + 2968);
              v389 = a3[446];
              v390 = v365 * *(*a3 + 2966);
              v391 = a3[447];
              do
              {
                v392 = *(v388 + 32 * v387 + 4);
                v393 = v390 + v386;
                *(v389 + 4 * v393) = v392;
                *(v391 + 4 * v393) = v392;
                v386 = ++v387;
              }

              while (v387 < v385);
            }

            v394 = *(v4 + 3360);
            if (*(v4 + 3360))
            {
              v395 = 0;
              v396 = 0;
              v397 = *(v4 + 3368);
              v398 = a3[448];
              v399 = v365 * *(*a3 + 3360);
              do
              {
                *(v398 + 4 * (v399 + v395)) = *(v397 + 12 * v396++ + 4);
                v395 = v396;
              }

              while (v396 < v394);
              v400 = 0;
              v401 = 0;
              v402 = *(v4 + 3368);
              v403 = a3[449];
              v404 = v365 * *(*a3 + 3360);
              do
              {
                *(v403 + 4 * (v404 + v400)) = *(v402 + 12 * v401++ + 4);
                v400 = v401;
              }

              while (v401 < v394);
            }
          }

          if (*(v4 + 3472))
          {
            v405 = 0;
            v406 = 0;
            v407 = v365 + 1;
            do
            {
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3480) + *(v4 + 3474) * v405)), *(a3[4] + v366)) || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3480) + *(v4 + 3474) * v405 + 1)), *(a3[4] + v407)))
              {
                goto LABEL_906;
              }

              v408 = v366 ? *(a3[4] + v366 - 1) : 35;
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3480) + *(v4 + 3474) * v405 + 2)), v408))
              {
                goto LABEL_906;
              }

              v409 = *(a3 + 5) - 2;
              if (v409 != v365)
              {
                if (cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3480) + *(v4 + 3474) * v405 + 3)), *(a3[4] + v366 + 2)))
                {
                  goto LABEL_893;
                }

                v409 = *(a3 + 5) - 2;
              }

              if (v409 != v365 || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3480) + *(v4 + 3474) * v405 + 3)), 35))
              {
                goto LABEL_906;
              }

LABEL_893:
              v410 = *(v4 + 3480);
              v411 = *(v4 + 3474);
              if ((*(v4 + 3092) & 0x80000000) != 0)
              {
                goto LABEL_901;
              }

              v412 = *(v4 + 3432);
              v413 = *(v412 + 8 * *(v410 + *(v4 + 3474) * v405 + 4));
              if (v413)
              {
                if (!cstdlib_strchr(v413, *(a3[31] + v366) + 48))
                {
                  goto LABEL_906;
                }

                v412 = *(v4 + 3432);
                v410 = *(v4 + 3480);
                v411 = *(v4 + 3474);
                v414 = *(v4 + 3474) * v405;
              }

              else
              {
                v414 = *(v4 + 3474) * v405;
              }

              v415 = *(v412 + 8 * *(v410 + v414 + 5));
              if (!v415)
              {
                goto LABEL_901;
              }

              if (cstdlib_strchr(v415, *(a3[31] + v407) + 48))
              {
                v410 = *(v4 + 3480);
                v411 = *(v4 + 3474);
LABEL_901:
                v416 = v411 + v411 * v405;
                v417 = *(v416 + v410 - 1);
                if (v417 == 1)
                {
                  *(a3[448] + 4 * (*(v410 + v416 - 2) + v365 * *(*a3 + 3360))) = 0;
                }

                else if (*(v416 + v410 - 1))
                {
                  v419 = *(v410 + v416 - 2) + v365 * *(*a3 + 3360);
                  *(a3[448] + 4 * v419) *= v417;
                }

                else
                {
                  v418 = *(v410 + v416 - 2) + v365 * *(*a3 + 3360);
                  *(a3[448] + 4 * v418) *= 5;
                }
              }

LABEL_906:
              v405 = ++v406;
            }

            while (v406 < *(v4 + 3472));
          }

          if (*(v4 + 3488))
          {
            v420 = 0;
            v421 = 0;
            v422 = v365 + 1;
            do
            {
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3496) + *(v4 + 3490) * v420)), *(a3[4] + v366)) || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3496) + *(v4 + 3490) * v420 + 1)), *(a3[4] + v422)))
              {
                goto LABEL_933;
              }

              v423 = v366 ? *(a3[4] + v366 - 1) : 35;
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3496) + *(v4 + 3490) * v420 + 2)), v423))
              {
                goto LABEL_933;
              }

              v424 = *(a3 + 5) - 2;
              if (v424 != v365)
              {
                if (cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3496) + *(v4 + 3490) * v420 + 3)), *(a3[4] + v366 + 2)))
                {
                  goto LABEL_920;
                }

                v424 = *(a3 + 5) - 2;
              }

              if (v424 != v365 || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3496) + *(v4 + 3490) * v420 + 3)), 35))
              {
                goto LABEL_933;
              }

LABEL_920:
              v425 = *(v4 + 3496);
              v426 = *(v4 + 3490);
              if ((*(v4 + 3092) & 0x80000000) != 0)
              {
                goto LABEL_928;
              }

              v427 = *(v4 + 3432);
              v428 = *(v427 + 8 * *(v425 + *(v4 + 3490) * v420 + 4));
              if (v428)
              {
                if (!cstdlib_strchr(v428, *(a3[31] + v366) + 48))
                {
                  goto LABEL_933;
                }

                v427 = *(v4 + 3432);
                v425 = *(v4 + 3496);
                v426 = *(v4 + 3490);
                v429 = *(v4 + 3490) * v420;
              }

              else
              {
                v429 = *(v4 + 3490) * v420;
              }

              v430 = *(v427 + 8 * *(v425 + v429 + 5));
              if (!v430)
              {
                goto LABEL_928;
              }

              if (cstdlib_strchr(v430, *(a3[31] + v422) + 48))
              {
                v425 = *(v4 + 3496);
                v426 = *(v4 + 3490);
LABEL_928:
                v431 = v426 + v426 * v420;
                v432 = *(v431 + v425 - 1);
                if (v432 == 1)
                {
                  *(a3[449] + 4 * (*(v425 + v431 - 2) + v365 * *(*a3 + 3360))) = 0;
                }

                else if (*(v431 + v425 - 1))
                {
                  v434 = *(v425 + v431 - 2) + v365 * *(*a3 + 3360);
                  *(a3[449] + 4 * v434) *= v432;
                }

                else
                {
                  v433 = *(v425 + v431 - 2) + v365 * *(*a3 + 3360);
                  *(a3[449] + 4 * v433) *= 5;
                }
              }

LABEL_933:
              v420 = ++v421;
            }

            while (v421 < *(v4 + 3488));
          }

          if (*(v4 + 3440))
          {
            v435 = 0;
            v436 = 0;
            v437 = v365 + 1;
            do
            {
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3448) + *(v4 + 3442) * v435)), *(a3[4] + v366)) || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3448) + *(v4 + 3442) * v435 + 1)), *(a3[4] + v437)))
              {
                goto LABEL_960;
              }

              v438 = v366 ? *(a3[4] + v366 - 1) : 35;
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3448) + *(v4 + 3442) * v435 + 2)), v438))
              {
                goto LABEL_960;
              }

              v439 = *(a3 + 5) - 2;
              if (v439 != v365)
              {
                if (cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3448) + *(v4 + 3442) * v435 + 3)), *(a3[4] + v366 + 2)))
                {
                  goto LABEL_947;
                }

                v439 = *(a3 + 5) - 2;
              }

              if (v439 != v365 || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3448) + *(v4 + 3442) * v435 + 3)), 35))
              {
                goto LABEL_960;
              }

LABEL_947:
              v440 = *(v4 + 3448);
              v441 = *(v4 + 3442);
              if ((*(v4 + 3092) & 0x80000000) != 0)
              {
                goto LABEL_955;
              }

              v442 = *(v4 + 3432);
              v443 = *(v442 + 8 * *(v440 + *(v4 + 3442) * v435 + 4));
              if (v443)
              {
                if (!cstdlib_strchr(v443, *(a3[31] + v366) + 48))
                {
                  goto LABEL_960;
                }

                v442 = *(v4 + 3432);
                v440 = *(v4 + 3448);
                v441 = *(v4 + 3442);
                v444 = *(v4 + 3442) * v435;
              }

              else
              {
                v444 = *(v4 + 3442) * v435;
              }

              v445 = *(v442 + 8 * *(v440 + v444 + 5));
              if (!v445)
              {
                goto LABEL_955;
              }

              if (cstdlib_strchr(v445, *(a3[31] + v437) + 48))
              {
                v440 = *(v4 + 3448);
                v441 = *(v4 + 3442);
LABEL_955:
                v446 = v441 + v441 * v435;
                v447 = v446 - 1;
                v448 = *(v440 + v446 - 1);
                if (v448 == 1)
                {
                  v451 = v365 * *(*a3 + 2966);
                  v452 = v440 + v446;
                  *(a3[446] + 4 * (v451 + *(v452 - 2))) = 0;
                  *(a3[447] + 4 * (v451 + *(v452 - 2))) = 0;
                }

                else if (*(v440 + v446 - 1))
                {
                  v453 = v365 * *(*a3 + 2966);
                  v454 = v440 + v446;
                  *(a3[446] + 4 * (v453 + *(v454 - 2))) *= v448;
                  *(a3[447] + 4 * (v453 + *(v454 - 2))) *= *(v440 + v447);
                }

                else
                {
                  v449 = v365 * *(*a3 + 2966);
                  v450 = v440 + v446;
                  *(a3[446] + 4 * (v449 + *(v450 - 2))) *= 5;
                  *(a3[447] + 4 * (v449 + *(v450 - 2))) *= 5;
                }
              }

LABEL_960:
              v435 = ++v436;
            }

            while (v436 < *(v4 + 3440));
          }

          if (*(v4 + 3456))
          {
            v455 = 0;
            v456 = 0;
            v457 = v365 + 1;
            do
            {
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3464) + *(v4 + 3458) * v455)), *(a3[4] + v366)) || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3464) + *(v4 + 3458) * v455 + 1)), *(a3[4] + v457)))
              {
                goto LABEL_987;
              }

              v458 = v366 ? *(a3[4] + v366 - 1) : 35;
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3464) + *(v4 + 3458) * v455 + 2)), v458))
              {
                goto LABEL_987;
              }

              v459 = *(a3 + 5) - 2;
              if (v459 != v365)
              {
                if (cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3464) + *(v4 + 3458) * v455 + 3)), *(a3[4] + v366 + 2)))
                {
                  goto LABEL_974;
                }

                v459 = *(a3 + 5) - 2;
              }

              if (v459 != v365 || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3464) + *(v4 + 3458) * v455 + 3)), 35))
              {
                goto LABEL_987;
              }

LABEL_974:
              v460 = *(v4 + 3464);
              v461 = *(v4 + 3458);
              if ((*(v4 + 3092) & 0x80000000) != 0)
              {
                goto LABEL_982;
              }

              v462 = *(v4 + 3432);
              LODWORD(v463) = v455 * v461;
              v464 = *(v462 + 8 * *(v460 + (v455 * v461) + 4));
              if (v464)
              {
                if (!cstdlib_strchr(v464, *(a3[31] + v366) + 48))
                {
                  goto LABEL_987;
                }

                v462 = *(v4 + 3432);
                v460 = *(v4 + 3464);
                v461 = *(v4 + 3458);
                v463 = *(v4 + 3458) * v455;
              }

              else
              {
                v463 = v463;
              }

              v465 = *(v462 + 8 * *(v460 + v463 + 5));
              if (!v465)
              {
                goto LABEL_982;
              }

              if (cstdlib_strchr(v465, *(a3[31] + v457) + 48))
              {
                v460 = *(v4 + 3464);
                v461 = *(v4 + 3458);
LABEL_982:
                v466 = (v455 * v461);
                v467 = v461;
                v468 = v466 + v461;
                v469 = v468 - 1;
                v470 = *(v460 + v469);
                if (v470 == 1)
                {
                  v474 = v365 * *(*a3 + 2966);
                  *(a3[446] + 4 * (v474 + *(v460 + v468 - 2))) = 0;
                  *(a3[447] + 4 * (v474 + *(v467 + v466 + v460 - 2))) = 0;
                }

                else if (*(v460 + v469))
                {
                  v475 = v365 * *(*a3 + 2966);
                  v476 = v460 + v468;
                  *(a3[446] + 4 * (v475 + *(v476 - 2))) *= v470;
                  *(a3[447] + 4 * (v475 + *(v476 - 2))) *= *(v460 + v469);
                }

                else
                {
                  v471 = v365 * *(*a3 + 2966);
                  v472 = v471 + *(v468 + v460 - 2);
                  *(a3[446] + 4 * v472) *= 5;
                  v473 = v471 + *(v467 + v466 + v460 - 2);
                  *(a3[447] + 4 * v473) *= 5;
                }
              }

LABEL_987:
              v455 = ++v456;
            }

            while (v456 < *(v4 + 3456));
          }

          if (!*(v4 + 2516) && *(v4 + 2966))
          {
            v477 = 0;
            v478 = 0;
            do
            {
              *(a3[450] + v477 + v365 * *(*a3 + 2966)) = *(*(v4 + 2968) + 32 * v478++ + 10);
              v477 = v478;
            }

            while (v478 < *(v4 + 2966));
          }

          if (*(v4 + 3504))
          {
            break;
          }

LABEL_1015:
          if ((*(v4 + 3136) & 0x80000000) == 0)
          {
            v491 = a3[11];
            if (v593 == 1 && *(v491 + v366) <= 1u)
            {
              v593 = 1;
              if (*(a3[4] + v366) != 35)
              {
                *(a3[36] + v366) = 1;
                v491 = a3[11];
              }
            }

            else
            {
              v593 = 0;
            }

            if (*(v491 + v366))
            {
              *(a3[36] + v366) = 2;
            }

            if (*(a3[4] + v366) == 35 || (*(a3[14] + v366) & 0xFE) == 2)
            {
              v593 = 1;
            }
          }

          if ((*(v4 + 3148) & 0x80000000) == 0)
          {
            v492 = v589;
            if (*(a3[4] + v366) == 35)
            {
              v492 = 1;
            }

            *(a3[39] + v366) = v492;
            if (*(a3[4] + v366) == 35 || (*(a3[14] + v366) & 0xFE) == 2)
            {
              v589 = *(a3[38] + v366 + 1);
            }
          }

          v365 = ++v366;
          if (*(a3 + 5) - 1 <= v366)
          {
            goto LABEL_1034;
          }
        }

        v479 = 0;
        v480 = 0;
        v481 = v365 + 1;
        while (2)
        {
          if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3512) + *(v4 + 3506) * v479)), *(a3[4] + v366)) || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3512) + *(v4 + 3506) * v479 + 1)), *(a3[4] + v481)))
          {
            goto LABEL_1014;
          }

          v482 = v366 ? *(a3[4] + v366 - 1) : 35;
          if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3512) + *(v4 + 3506) * v479 + 2)), v482))
          {
            goto LABEL_1014;
          }

          v483 = *(a3 + 5) - 2;
          if (v483 != v365)
          {
            if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3512) + *(v4 + 3506) * v479 + 3)), *(a3[4] + v366 + 2)))
            {
              v483 = *(a3 + 5) - 2;
              break;
            }

LABEL_1005:
            v484 = *(v4 + 3512);
            v485 = *(v4 + 3506);
            if ((*(v4 + 3092) & 0x80000000) == 0)
            {
              v486 = *(v4 + 3432);
              v487 = *(v486 + 8 * *(v484 + *(v4 + 3506) * v479 + 4));
              if (v487)
              {
                if (cstdlib_strchr(v487, *(a3[31] + v366) + 48))
                {
                  v486 = *(v4 + 3432);
                  v484 = *(v4 + 3512);
                  v485 = *(v4 + 3506);
                  v488 = *(v4 + 3506) * v479;
                  goto LABEL_1010;
                }

LABEL_1014:
                v479 = ++v480;
                if (v480 >= *(v4 + 3504))
                {
                  goto LABEL_1015;
                }

                continue;
              }

              v488 = *(v4 + 3506) * v479;
LABEL_1010:
              v489 = *(v486 + 8 * *(v484 + v488 + 5));
              if (v489)
              {
                if (!cstdlib_strchr(v489, *(a3[31] + v481) + 48))
                {
                  goto LABEL_1014;
                }

                v484 = *(v4 + 3512);
                v485 = *(v4 + 3506);
              }
            }

            v490 = v485 + v485 * v479;
            *(a3[450] + *(v484 + v490 - 2) + *(*a3 + 2966) * v365) = *(v490 + v484 - 1);
            goto LABEL_1014;
          }

          break;
        }

        if (v483 == v365 && cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3512) + *(v4 + 3506) * v479 + 3)), 35))
        {
          goto LABEL_1005;
        }

        goto LABEL_1014;
      }

LABEL_1034:
      if (!*(v4 + 2516))
      {
        if (*(v4 + 2966))
        {
          v515 = 0;
          v516 = 0;
          do
          {
            *(a3[450] + v515 + (*(a3 + 5) - 1) * *(*a3 + 2966)) = *(*(v4 + 2968) + 32 * v516++ + 10);
            v515 = v516;
            v517 = *(v4 + 2966);
          }

          while (v516 < v517);
          if (*(v4 + 2516))
          {
            goto LABEL_1035;
          }

          if (*(v4 + 2966))
          {
            v518 = 0;
            v519 = 0;
            v520 = *(v4 + 2968);
            v521 = a3[446];
            v522 = (*(a3 + 5) - 1) * *(*a3 + 2966);
            v523 = a3[447];
            do
            {
              v524 = *(v520 + 32 * v519 + 4);
              v525 = v522 + v518;
              *(v521 + 4 * v525) = v524;
              *(v523 + 4 * v525) = v524;
              v518 = ++v519;
            }

            while (v519 < v517);
          }
        }

        v526 = *(v4 + 3360);
        if (*(v4 + 3360))
        {
          v527 = 0;
          v528 = 0;
          v529 = *(v4 + 3368);
          v530 = a3[448];
          v531 = (*(a3 + 5) - 1) * *(*a3 + 3360);
          do
          {
            *(v530 + 4 * (v531 + v527)) = *(v529 + 12 * v528++ + 4);
            v527 = v528;
          }

          while (v528 < v526);
          v532 = 0;
          v533 = 0;
          v534 = *(v4 + 3368);
          v535 = a3[449];
          v536 = (*(a3 + 5) - 1) * *(*a3 + 3360);
          do
          {
            *(v535 + 4 * (v536 + v532)) = *(v534 + 12 * v533++ + 4);
            v532 = v533;
          }

          while (v533 < v526);
        }
      }

LABEL_1035:
      if ((*(v4 + 3392) & 0x80000000) == 0 || (*(v4 + 3396) & 0x80000000) == 0 || (*(v4 + 3068) & 0x80000000) == 0 || (*(v4 + 3072) & 0x80000000) == 0)
      {
        v493 = 0;
        v494 = 0;
        v495 = 1;
        while (1)
        {
          v496 = (*(v4 + 3072) & 0x80000000) != 0 ? *(a3 + 5) - 1 : *(a3 + 5);
          if (v496 <= v493)
          {
            break;
          }

          v497 = *(v187 + *(a3[4] + v493));
          if ((*(v4 + 3068) & 0x80000000) == 0)
          {
            if (*(v4 + 859 + v497) == 118)
            {
              (*(v4 + 28168))(v4 + 28176, v4 + 28200, 0, a3, v493, a3[27] + v493, a3[28] + v493, 0, 0, v557, v558, v559, v560, v561, v562);
            }

            else
            {
              *(a3[27] + v493) = 0;
              *(a3[28] + v493) = 0;
            }
          }

          if ((*(v4 + 3072) & 0x80000000) == 0)
          {
            (*(v4 + 28168))(v4 + 28208, *(v4 + 28232) + 8 * v497, 1, a3, v493, a3[29] + v493, a3[30] + v493, 0, 0);
          }

          v498 = *(v4 + 3392);
          if ((v498 & 0x80000000) == 0 || (*(v4 + 3396) & 0x80000000) == 0)
          {
            v499 = *(a3[31] + v493);
            v500 = a3[444] + 8 * v493;
            *v500 = 0xC800C8FF38FF38;
            if (*(a3[10] + v493) == 1)
            {
              v495 = 1;
            }

            v501 = (*(v4 + 3528) + 2 * v499);
            v502 = *v501;
            v503 = v501[1];
            if (v502 < v503 && *(v4 + 1116 + v497) == 86 && v495 == 1)
            {
              if (v494)
              {
                if (v498 < 0)
                {
                  v508 = a3[20];
                  v506 = (*(v4 + 3544) + 16 * v502);
                  v509 = v502 + 1;
                  while (1)
                  {
                    if (*(v508 + v494) == v506[4])
                    {
                      v510 = a3[19];
                      if (*(v510 + v494) == v506[5] && *(v508 + v493) == v506[6] && *(v510 + v493) == v506[7])
                      {
                        break;
                      }
                    }

                    v506 += 8;
                    v21 = v503 == v509++;
                    if (v21)
                    {
                      goto LABEL_1075;
                    }
                  }
                }

                else
                {
                  v505 = a3[33];
                  v506 = (*(v4 + 3536) + 12 * v502);
                  v507 = v502 + 1;
                  while (*(v505 + v494) != v506[4] || *(v505 + v493) != v506[5])
                  {
                    v506 += 6;
                    v21 = v503 == v507++;
                    if (v21)
                    {
                      goto LABEL_1075;
                    }
                  }
                }

                v495 = 0;
                *v500 = *v506;
                *(v500 + 2) = v506[1];
                *(v500 + 4) = v506[2];
                *(v500 + 6) = v506[3];
              }

              else
              {
LABEL_1075:
                v495 = 0;
              }

              v494 = v493;
            }
          }

          ++v493;
        }
      }

      HandleRecordedPrompts(v4, a3);
      *(a3 + 1762) = *(*a3 + 3578) * *(a3 + 5);
      v511 = a3[439];
      if (v511)
      {
        if (*(a3 + 880))
        {
          if (a3[3])
          {
            v512 = a3[225];
            v513 = *v512;
            if (*v512)
            {
              v514 = 0;
              while (*v511 != 26)
              {
                ++v514;
                v511 += 8;
                if (v513 == v514)
                {
                  goto LABEL_1107;
                }
              }

              if (v513 <= v514)
              {
                goto LABEL_1106;
              }

              v537 = 0;
              v538 = v513 - v514;
              do
              {
                v539 = *v511;
                v511 += 8;
                if (v539 == 8)
                {
                  v537 = 1;
                }

                --v538;
              }

              while (v538);
              if (!v537)
              {
LABEL_1106:
                v512[1] += v513 - v514;
                *v512 = v514;
              }
            }
          }
        }
      }

LABEL_1107:
      if (log_GetLogLevel(*(v582 + 32)) < 6)
      {
        return 0;
      }

      cstdlib_strcpy(__dst, "");
      cstdlib_strcpy(v596, "");
      LH_itoa(0x4Eu, v596, 0xAu);
      v540 = 0;
      v541 = 0;
      while (2)
      {
        v542 = *(a3 + 5);
        if (v540 - 2 < 4 || v540 == 0)
        {
          goto LABEL_1114;
        }

        v546 = *(*a3 + v540 + 2748);
        if (v540 == 1)
        {
          v544 = 0;
          v542 = *v6;
          v545 = 99;
          v541 = "application/x-realspeak-marker-counts;version=4.0";
          goto LABEL_1146;
        }

        if (!*(*a3 + v540 + 2748))
        {
LABEL_1114:
          v544 = 0;
          v545 = 99;
LABEL_1115:
          if (v540 == 1 && a3[3])
          {
LABEL_1117:
            if (!v544)
            {
              v544 = a3[v540 + 2];
            }

            log_OutBinary(*(v582 + 32), v577, v545, 0, v596, v541, v544, v542, 0);
          }
        }

        else
        {
          v544 = 0;
          if (v540 <= 0x33u)
          {
            v550 = a3 + 444;
            if (v540 == 24 || (v550 = a3 + 445, v540 == 46))
            {
              v544 = *v550;
              goto LABEL_1136;
            }

            if (v540 == 51)
            {
              v547 = 0;
              v546 = 4;
              v548 = 2966;
              v549 = a3 + 446;
              goto LABEL_1141;
            }

LABEL_1136:
            v547 = v546 == 1;
            v551 = "application/x-realspeak-u16-feat-";
            if (v546 != 2)
            {
              v551 = "application/x-realspeak-u32-feat-";
            }
          }

          else
          {
            if (v540 > 0x35u)
            {
              if (v540 == 56)
              {
                v547 = 1;
                v548 = 2966;
                v546 = 1;
                v549 = a3 + 450;
              }

              else
              {
                if (v540 != 54)
                {
                  goto LABEL_1136;
                }

                v547 = 0;
                v546 = 4;
                v548 = 3360;
                v549 = a3 + 449;
              }
            }

            else
            {
              if (v540 != 52)
              {
                if (v540 == 53)
                {
                  v547 = 0;
                  v546 = 4;
                  v548 = 3360;
                  v549 = a3 + 448;
                  goto LABEL_1141;
                }

                goto LABEL_1136;
              }

              v547 = 0;
              v546 = 4;
              v548 = 2966;
              v549 = a3 + 447;
            }

LABEL_1141:
            v544 = *v549;
            v542 *= *(*a3 + v548);
            v551 = "application/x-realspeak-u32-feat-";
          }

          if (v547)
          {
            v552 = "application/x-realspeak-u8-feat-";
          }

          else
          {
            v552 = v551;
          }

          v541 = __dst;
          cstdlib_strcpy(__dst, v552);
          v553 = cstdlib_strlen(__dst);
          LH_itoa(v540, &__dst[v553], 0xAu);
          v545 = 100;
LABEL_1146:
          if (v546 <= 1)
          {
            if (v546)
            {
              goto LABEL_1117;
            }

            goto LABEL_1115;
          }

          if (v546 == 2)
          {
            if (!v544)
            {
              v544 = a3[v540 + 220];
            }

            v554 = *(v582 + 32);
            v555 = 2 * v542;
LABEL_1155:
            log_OutBinary(v554, v577, v545, 0, v596, v541, v544, v555, 0);
          }

          else if (v546 == 4)
          {
            v554 = *(v582 + 32);
            v555 = 4 * v542;
            goto LABEL_1155;
          }
        }

        if (++v540 == 218)
        {
          return 0;
        }

        continue;
      }
    }
  }

  return v3;
}