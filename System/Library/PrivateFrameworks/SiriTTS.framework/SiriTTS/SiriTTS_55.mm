size_t BND_dummy(int a1, int a2, char *__s)
{
  result = strlen(__s);
  *&__s[result] = 63;
  return result;
}

uint64_t BND_bnd_type(uint64_t result, unsigned int a2, _BYTE *a3)
{
  v3 = *(result + 40);
  if (*(v3 + 8) <= a2)
  {
    LOBYTE(v5) = 37;
  }

  else
  {
    v4 = *(*v3 + 224 * a2 + 73);
    if (v4 > 4)
    {
      LOBYTE(v5) = 63;
    }

    else
    {
      v5 = 0x53574E3F3FuLL >> (8 * v4);
    }
  }

  *a3 = v5;
  a3[1] = 0;
  return result;
}

size_t BND_phrase_type(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  *__s1 = 0;
  v5 = *(a1 + 40);
  if (*(v5 + 8) > a2 && (v6 = *(v5 + 40)) != 0 && *v6)
  {

    return strncat(__s1, v6, a4 - 1);
  }

  else
  {
    result = strlen(__s1);
    *&__s1[result] = 37;
  }

  return result;
}

size_t BND_tn(size_t result, unsigned int a2, char *__s1, unsigned int a4)
{
  if (a4 >= 2)
  {
    if (*(*(result + 40) + 8) <= a2)
    {
      *__s1 = 37;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      *__s1 = 0;
      do
      {
        v7 = *(**(result + 40) + 224 * v6 + 56);
        if (v7)
        {
          v8 = v7 + 32 * *(*(result + 48) + 22);
          if (*(v8 + 16))
          {
            if (*v8 == 1 && *(v8 + 10) >= a2 && *(v8 + 8) <= a2)
            {
              v6 = a2;
              v5 = *(v8 + 16);
            }
          }
        }

        ++v6;
      }

      while (a2 >= v6);
      if (v5)
      {

        return strncat(__s1, v5, a4 - 1);
      }

      else
      {
        result = strlen(__s1);
        *&__s1[result] = 37;
      }
    }
  }

  return result;
}

size_t BND_doc_punc_prev(size_t result, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = *(**(result + 40) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(result + 48) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_doc_punc(result, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
LABEL_6:
    *a3 = 37;
    return result;
  }

  v7 = v6 - 1;
  return BND_doc_punc(result, v7, a3, a4);
}

uint64_t bnd_dist(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = 1;
    do
    {
      LOWORD(a2) = a2 - 1;
      v4 = **(a1 + 40) + 224 * a2;
      if (*(v4 + 73) == a3)
      {
        break;
      }

      v5 = *(v4 + 56);
      if (v5)
      {
        v6 = v5 + 32 * *(*(a1 + 48) + 22);
        if (*(v6 + 4) == 1)
        {
          LOWORD(a2) = *(v6 + 8);
        }
      }

      ++v3;
    }

    while (a2);
  }

  else
  {
    return 1;
  }

  return v3;
}

uint64_t checkForExternalSildur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v14 = 0;
  __s1 = 0;
  v12 = 0;
  *a5 = 0;
  v10 = (*(a1 + 184))(a2, a3, a4, 18, &v14);
  if ((v10 & 0x80000000) == 0)
  {
    if (v14)
    {
      v10 = (*(a1 + 176))(a2, a3, a4, 18, &__s1, &v12);
      if ((v10 & 0x80000000) == 0 && !strcmp(__s1, "external"))
      {
        *a5 = 1;
      }
    }
  }

  return v10;
}

BOOL doesWordEndInComma(const char *a1)
{
  result = 0;
  if (a1)
  {
    v2 = strlen(a1);
    if (v2)
    {
      v3 = a1[v2 - 1];
      v4 = v3 > 0x3B;
      v5 = (1 << v3) & 0xC00100000000000;
      if (!v4 && v5 != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t addWord(uint64_t a1, const char *a2, _DWORD *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 10))
  {
    v14 = heap_Calloc(*(a1 + 8), 1, 11200);
    *a6 = v14;
    if (v14)
    {
      v12 = v14;
      *(a6 + 10) = 50;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v12 = *a6;
  if (*(a6 + 8) >= *(a6 + 10))
  {
    v13 = heap_Realloc(*(a1 + 8), v12, 224 * *(a6 + 10) + 11200);
    if (v13)
    {
      *a6 = v13;
      bzero((v13 + 224 * *(a6 + 8)), 0x2BC0uLL);
      *(a6 + 10) += 50;
      v12 = *a6;
      goto LABEL_7;
    }

LABEL_11:
    v20 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return v20;
  }

LABEL_7:
  *(v12 + 224 * *(a6 + 8)) = *a3;
  v15 = heap_Calloc(*(a1 + 8), 1, (8 * *(a5 + 72)) | 1);
  *(*a6 + 224 * *(a6 + 8) + 16) = v15;
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = strlen(a2);
  v17 = heap_Calloc(*(a1 + 8), 1, (v16 + 1));
  *(*(*a6 + 224 * *(a6 + 8) + 16) + 8 * *(a5 + 16)) = v17;
  if (!v17)
  {
    goto LABEL_11;
  }

  strcpy(v17, a2);
  v18 = strlen(a4);
  v19 = heap_Calloc(*(a1 + 8), 1, (v18 + 1));
  *(*a6 + 224 * *(a6 + 8) + 8) = v19;
  if (!v19)
  {
    goto LABEL_11;
  }

  strcpy(v19, a4);
  v20 = 0;
  ++*(a6 + 8);
  return v20;
}

uint64_t addToken(uint64_t a1, unsigned __int16 *a2, const char *a3, uint64_t a4, uint64_t *a5, int a6)
{
  v9 = *(a5 + 4);
  v10 = *a2;
  if (*(a5 + 4))
  {
    v13 = 0;
    v14 = 0;
    v15 = v9 + 1;
    v16 = *a5;
    v17 = a2[1];
    while (1)
    {
      v18 = *(v16 + v13);
      if (v10 == v18)
      {
        v15 = v14;
      }

      v19 = *(v16 + v13 + 2);
      if (v17 == v19)
      {
        break;
      }

      if (v17 >= v18 && v17 < v19)
      {
        break;
      }

      ++v14;
      v10 = *a2;
      v13 += 224;
      if (224 * v9 == v13)
      {
        goto LABEL_12;
      }
    }

    if (v9 + 1 == v15)
    {
      goto LABEL_14;
    }

    v24 = checkSpan(a1, a4, (v16 + 224 * v15 + 56));
    if ((v24 & 0x80000000) != 0)
    {
      return v24;
    }

    v24 = checkSpan(a1, a4, (*a5 + v13 + 56));
    if ((v24 & 0x80000000) != 0)
    {
      return v24;
    }

    v25 = *a5;
    v26 = 224 * v15;
    v27 = *(a4 + 22);
    v28 = *(*a5 + v26 + 56) + 32 * v27;
    *v28 = 1;
    *(v28 + 8) = v15;
    *(v28 + 10) = v14;
    v29 = *(v25 + v13 + 56) + 32 * v27;
    *(v29 + 4) = 1;
    *(v29 + 8) = v15;
    v30 = strlen(a3);
    v31 = heap_Calloc(*(a1 + 8), 1, (v30 - 1));
    v32 = *a5 + v26;
    v33 = v15;
    *(*(v32 + 56) + 32 * *(a4 + 22) + 16) = v31;
    if (v31)
    {
      v34 = v31;
      v35 = strlen(a3 + 1);
      strncpy(v34, a3 + 1, v35 - 1);
      if (a6 != 1)
      {
        return 0;
      }

      v36 = *(*a5 + 224 * v15 + 168);
      if (v36)
      {
        heap_Free(*(a1 + 8), v36);
      }

      v37 = strlen(a3);
      v38 = heap_Calloc(*(a1 + 8), 1, (v37 + 1));
      *(*a5 + 224 * v15 + 168) = v38;
      if (v38)
      {
        strcpy(v38, "B-");
        v39 = strlen(a3 + 1);
        strncpy((*(*a5 + 224 * v15 + 168) + 2), a3 + 1, v39 - 1);
        v40 = v15 + 1;
        if (v40 > v14)
        {
          return 0;
        }

        while (1)
        {
          v41 = strlen(*(*a5 + 224 * v33 + 168));
          v42 = heap_Calloc(*(a1 + 8), 1, (v41 + 1));
          v43 = *a5;
          v44 = v40;
          *(*a5 + 224 * v40 + 168) = v42;
          if (!v42)
          {
            break;
          }

          strcpy(v42, *(v43 + 224 * v33 + 168));
          v21 = 0;
          **(*a5 + 224 * v40++ + 168) = 73;
          if ((v44 + 1) > v14)
          {
            return v21;
          }
        }
      }
    }

    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

LABEL_12:
  v17 = a2[1];
LABEL_14:
  v21 = 2315264000;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a3, v10, v17);
  if (*(a5 + 4))
  {
    v22 = 0;
    v23 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "word[%d] %d,%d", v23++, *(*a5 + v22), *(*a5 + v22 + 2));
      v22 += 224;
    }

    while (v23 < *(a5 + 4));
  }

  return v21;
}

uint64_t checkSpan(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    return 0;
  }

  v6 = heap_Calloc(*(a1 + 8), 1, (32 * *(a2 + 72)) | 1);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a3 = v7;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return result;
}

uint64_t addTokenTag(uint64_t a1, unsigned int a2, char *__s, uint64_t a4, uint64_t *a5)
{
  v10 = *a5 + 224 * a2;
  if (!*(v10 + 88) && !strcmp("UNK", __s))
  {
    v11 = strlen(*(*(v10 + 16) + 8 * *(a4 + 18)));
    v12 = heap_Calloc(*(a1 + 8), 1, v11 + 1);
    v13 = *a5;
    *(*a5 + 224 * a2 + 88) = v12;
    if (!v12)
    {
LABEL_7:
      v16 = 2315264010;
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      return v16;
    }

    strcpy(v12, *(*(v13 + 224 * a2 + 16) + 8 * *(a4 + 18)));
  }

  v14 = strlen(__s);
  v15 = heap_Calloc(*(a1 + 8), 1, (v14 + 1));
  *(*(*a5 + 224 * a2 + 16) + 8 * *(a4 + 20)) = v15;
  if (!v15)
  {
    goto LABEL_7;
  }

  strcpy(v15, __s);
  return 0;
}

uint64_t addSynChunk(uint64_t a1, const char *a2, const char *a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  if (a4 > a5 || *(a7 + 4) <= a5)
  {
    v25 = 2315264000;
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "syntactic chunks out of order : fromWordIdx=%d toWordIdx=%d numWords=%d", a4, a5, *(a7 + 4));
  }

  else
  {
    v14 = checkSpan(a1, a6, (*a7 + 224 * a4 + 56));
    if ((v14 & 0x80000000) == 0)
    {
      v14 = checkSpan(a1, a6, (*a7 + 224 * a5 + 56));
      if ((v14 & 0x80000000) == 0)
      {
        v15 = a4;
        v16 = *a7;
        v17 = *(a6 + 24);
        v18 = *(*a7 + 224 * a4 + 56) + 32 * v17;
        *v18 = 1;
        *(v18 + 8) = a4;
        *(v18 + 10) = a5;
        v19 = *(v16 + 224 * a5 + 56) + 32 * v17;
        *(v19 + 4) = 1;
        *(v19 + 8) = a4;
        v20 = *(a1 + 8);
        v21 = strlen(a2);
        v22 = v21;
        if (a3)
        {
          v23 = strlen(a3);
          v24 = heap_Calloc(v20, 1, (v22 + v23 + 1));
          *(*(*a7 + 224 * v15 + 56) + 32 * *(a6 + 24) + 16) = v24;
          if (v24)
          {
            strcpy(v24, a2);
            strcat(*(*(*a7 + 224 * v15 + 56) + 32 * *(a6 + 24) + 16), a3);
            return 0;
          }
        }

        else
        {
          v26 = heap_Calloc(v20, 1, (v21 + 1));
          *(*(*a7 + 224 * v15 + 56) + 32 * *(a6 + 24) + 16) = v26;
          if (v26)
          {
            strcpy(v26, a2);
            return 0;
          }
        }

        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }
    }

    return v14;
  }

  return v25;
}

uint64_t addPHRRange(uint64_t a1, unsigned int a2, unsigned int a3, char *__s, void *a5)
{
  if (a2 > a3)
  {
    return 0;
  }

  v11 = a2;
  while (1)
  {
    v12 = strlen(__s);
    v13 = heap_Calloc(*(a1 + 8), 1, (v12 + 3));
    v14 = v11;
    *(*a5 + 224 * v11 + 80) = v13;
    if (!v13)
    {
      break;
    }

    if (*__s == 79 && !__s[1])
    {
      strcpy(v13, __s);
    }

    else
    {
      if (v11 == a2)
      {
        v15 = "B-";
      }

      else
      {
        v15 = "I-";
      }

      *v13 = *v15;
      v13[2] = v15[2];
      strcat(*(*a5 + 224 * v11 + 80), __s);
    }

    *(*a5 + 224 * v11++ + 4) = a2;
    if (a3 < (v14 + 1))
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t addMSPOS(uint64_t a1, unsigned int a2, char *__s, uint64_t a4, void *a5)
{
  v10 = *(a1 + 8);
  v11 = strlen(__s);
  v12 = heap_Calloc(v10, 1, (v11 + 1));
  *(*(*a5 + 224 * a2 + 16) + 8 * *(a4 + 18)) = v12;
  if (v12)
  {
    strcpy(v12, __s);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t expandAndValidateCompounds(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  LODWORD(v3) = *(a2 + 4);
  if (*(a2 + 4))
  {
    for (i = 0; i < v3; ++i)
    {
      v8 = *a2;
      v9 = *(*a2 + 224 * i + 96);
      if (!v9)
      {
        goto LABEL_25;
      }

      v10 = *(a3 + 656);
      if (v10 == 1)
      {
        goto LABEL_25;
      }

      if (!v10)
      {
        v11 = *v9;
        if ((v11 == 73 || v11 == 66) && v9[1] == 45)
        {
          goto LABEL_25;
        }
      }

      v12 = *(a3 + 640);
      v13 = strlen(v12);
      if (!strncmp(v9, v12, v13))
      {
        v17 = i + 1;
        if (i + 1 != v3)
        {
          if (v17 >= v3)
          {
            goto LABEL_25;
          }

          v20 = *(v8 + 224 * v17 + 96);
          if (v20)
          {
            if (strncmp(v20, v12, v13))
            {
              goto LABEL_25;
            }
          }
        }

        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "single word cannot be a compound word : word index=%d compound tag=%s");
      }

      else
      {
        if (i)
        {
          v14 = i;
          while (1)
          {
            v15 = *(v8 + 224 * v14 + 96);
            if (!v15 || !strncmp(v15, v12, v13))
            {
              break;
            }

            if (!--v14)
            {
              v14 = 0;
              break;
            }
          }

          v16 = v14;
        }

        else
        {
          v16 = 0;
        }

        v18 = v8 + 224 * v16;
        v19 = *(v18 + 96);
        if (v19)
        {
          if (!strncmp(*(v18 + 96), v12, v13))
          {
            strcat(v9, (v19 + 1));
            goto LABEL_25;
          }

          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "compound word has no beginning tag : word index=%d compound tag=%s");
        }

        else
        {
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no start word for internal compound word : word index=%d compound tag=%s");
        }
      }

      heap_Free(*(a1 + 8), *(*a2 + 224 * i + 96));
      *(*a2 + 224 * i + 96) = 0;
LABEL_25:
      v3 = *(a2 + 4);
    }
  }

  return 0;
}

uint64_t checkMSPOSForCompound(uint64_t a1, unsigned int a2, char *__s, uint64_t a4, void *a5)
{
  v10 = 0;
  CompoundAccent = 0;
  v30 = 0;
  v31 = 0;
  do
  {
    v12 = v10;
    if (v10 >= *(a4 + 360))
    {
      return CompoundAccent;
    }

    if (*(*(a4 + 352) + 4 * v10) == 1)
    {
      v13 = *(*(*(a4 + 344) + 8 * v10) + 2);
      v14 = strlen(__s);
      CompoundAccent = do_pcre_exec(a4, v13, __s, v14, 0, &v31);
      if ((CompoundAccent & 0x80000000) != 0)
      {
        return CompoundAccent;
      }

      v15 = v31;
    }

    else if (!strcmp((*(a4 + 528) + *(*(a4 + 536) + 4 * **(*(a4 + 344) + 8 * v10))), __s))
    {
      v15 = 1;
      v31 = 1;
    }

    else
    {
      v15 = 0;
    }

    v10 = v12 + 1;
    v16 = v12;
  }

  while (!v15);
  if (v15 != 1)
  {
    return CompoundAccent;
  }

  v17 = *(a4 + 528);
  v18 = 4;
  if (*(*(a4 + 352) + 4 * v12) == 1)
  {
    v18 = 8;
  }

  v19 = *(*(a4 + 536) + 4 * *(*(*(a4 + 344) + 8 * v12) + v18));
  if (strcmp((v17 + v19), *(a4 + 640)))
  {
    LODWORD(v20) = a2;
    v21 = *(*a5 + 224 * a2 + 96);
    if (v21)
    {
      heap_Free(*(a1 + 8), v21);
      *(*a5 + 224 * a2 + 96) = 0;
    }

    v22 = strlen((v17 + v19));
    v23 = heap_Calloc(*(a1 + 8), 1, (v22 + 52));
    *(*a5 + 224 * a2 + 96) = v23;
    if (v23)
    {
      strcpy(v23, (v17 + v19));
      goto LABEL_18;
    }

LABEL_25:
    CompoundAccent = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return CompoundAccent;
  }

  v30 = 0;
  v31 = 0;
  CompoundAccent = getCompoundAccent(a4, __s, &v31, &v30 + 1, &v30);
  if ((CompoundAccent & 0x80000000) != 0)
  {
    return CompoundAccent;
  }

  if (v31)
  {
    v25 = strlen((v17 + v19));
    v26 = heap_Calloc(*(a1 + 8), 1, v25 + v30 - HIWORD(v30) + 2);
    *(*a5 + 224 * a2 + 96) = v26;
    if (!v26)
    {
      goto LABEL_25;
    }

    v20 = a2;
    strcpy(v26, (v17 + v19));
    v27 = *(*a5 + 224 * a2 + 96);
    *&v27[strlen(v27)] = 45;
    strncat(*(*a5 + 224 * v20 + 96), &__s[HIWORD(v30)], v30 - HIWORD(v30));
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no stress information on first word of compound word : word index=%d pos=%s", a2, __s);
    LODWORD(v20) = a2;
    v29 = 224 * a2;
    heap_Free(*(a1 + 8), *(*a5 + v29 + 96));
    *(*a5 + v29 + 96) = 0;
  }

LABEL_18:
  if (*(*a5 + 224 * v20 + 96))
  {
    v24 = *(a1 + 32);
    if (*(*(a4 + 352) + 4 * v16) == 1)
    {
      log_OutText(v24, "FE_PHRASING", 5, 0, "COMPOUND regex rule %d FIRED : SET %s -> %s");
    }

    else
    {
      log_OutText(v24, "FE_PHRASING", 5, 0, "COMPOUND normal rule FIRED : SET %s -> %s");
    }
  }

  return CompoundAccent;
}

uint64_t insert_NLU_info(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  v9 = a3;
  v10 = a2;
  if (a2 == a3)
  {
    if (a2 + 1 == *(a6 + 4))
    {
      v9 = a2 + 1;
    }

    else
    {
      v9 = a2;
    }
  }

  if (a2 >= v9)
  {
    return 0;
  }

  v72 = v9 - 1;
  v12 = v72 - a2;
  v13 = (224 * a2) | 4;
  v14 = a2 + 1;
  while (1)
  {
    v15 = *a4;
    if (!*a4)
    {
      goto LABEL_12;
    }

    v16 = *(*(*a6 + v13 + 12) + 8 * *(a5 + 18));
    if (v16)
    {
      heap_Free(*(a1 + 8), v16);
      *(*(*a6 + v13 + 12) + 8 * *(a5 + 18)) = 0;
      v15 = *a4;
    }

    v17 = strlen(v15);
    v18 = heap_Calloc(*(a1 + 8), 1, (v17 + 1));
    *(*(*a6 + v13 + 12) + 8 * *(a5 + 18)) = v18;
    if (!v18)
    {
      break;
    }

    strcpy(v18, *a4);
LABEL_12:
    v19 = *(a4 + 8);
    if (v19)
    {
      v20 = *(*a6 + v13 + 76);
      if (v20)
      {
        heap_Free(*(a1 + 8), v20);
        *(*a6 + v13 + 76) = 0;
        v19 = *(a4 + 8);
      }

      v21 = strlen(v19);
      v22 = heap_Calloc(*(a1 + 8), 1, (v21 + 1));
      *(*a6 + v13 + 76) = v22;
      if (!v22)
      {
        break;
      }

      strcpy(v22, *(a4 + 8));
      *(*a6 + v13) = v10;
    }

    v23 = *(a4 + 16);
    if (v23)
    {
      v24 = v12 == 0;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v25 = *v23;
      if (v25 == 78)
      {
        if (!v23[1])
        {
          v26 = 2;
          goto LABEL_31;
        }
      }

      else if (v25 == 83)
      {
        if (!v23[1])
        {
          v26 = 4;
          goto LABEL_31;
        }
      }

      else if (v25 == 87 && !v23[1])
      {
        v26 = 3;
LABEL_31:
        *(*a6 + 224 * v72 + 75) = v26;
        goto LABEL_32;
      }

      v26 = 1;
      goto LABEL_31;
    }

LABEL_32:
    v27 = *(a4 + 32);
    if (!v27)
    {
      goto LABEL_43;
    }

    v28 = *v27;
    if (v28 == 50)
    {
      if (!v27[1])
      {
        LOBYTE(v29) = 2;
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (v28 != 49)
    {
      if (v28 == 48)
      {
        v29 = v27[1];
        if (!v29)
        {
          goto LABEL_42;
        }
      }

LABEL_41:
      LOBYTE(v29) = 0;
      goto LABEL_42;
    }

    if (v27[1])
    {
      goto LABEL_41;
    }

    LOBYTE(v29) = 1;
LABEL_42:
    *(*a6 + v13 + 70) = v29;
LABEL_43:
    v30 = *(a4 + 56);
    if (v30)
    {
      v31 = *(*a6 + v13 + 92);
      if (v31)
      {
        heap_Free(*(a1 + 8), v31);
        *(*a6 + v13 + 92) = 0;
        v30 = *(a4 + 56);
      }

      v32 = strlen(v30);
      v33 = heap_Calloc(*(a1 + 8), 1, (v32 + 1));
      *(*a6 + v13 + 92) = v33;
      if (!v33)
      {
        break;
      }

      strcpy(v33, *(a4 + 56));
      v34 = heap_Calloc(*(a1 + 8), 1, 6);
      *(*a6 + v13 + 172) = v34;
      if (!v34)
      {
        break;
      }

      v35 = *(a4 + 56);
      if (*v35 != 66 || (v36 = v35[1], v37 = "[COMP", v36 != 45))
      {
        v37 = "COMP]";
      }

      *v34 = *v37;
      *(v34 + 4) = *(v37 + 2);
    }

    v38 = *(a4 + 24);
    if (v38 && !v12)
    {
      v39 = strlen(v38);
      v40 = heap_Realloc(*(a1 + 8), *(*a6 + 224 * v72 + 120), (v39 + 1));
      if (!v40)
      {
        break;
      }

      *(*a6 + 224 * v72 + 120) = v40;
      strcpy(v40, *(a4 + 24));
    }

    v41 = *(a4 + 40);
    if (v41)
    {
      v42 = strlen(v41);
      v43 = heap_Realloc(*(a1 + 8), *(*a6 + v13 + 148), (v42 + 32) & 0xFFFFFFE0);
      if (!v43)
      {
        break;
      }

      *(*a6 + v13 + 148) = strcpy(v43, *(a4 + 40));
    }

    v44 = *(a4 + 48);
    if (v44)
    {
      v45 = strlen(v44);
      v46 = heap_Realloc(*(a1 + 8), *(*a6 + v13 + 156), (v45 + 32) & 0xFFFFFFE0);
      if (!v46)
      {
        break;
      }

      v47 = v46;
      v48 = strcpy(v46, *(a4 + 48));
      v49 = *a6;
      *(*a6 + v13 + 156) = v48;
      if (v13 != 4 && strstr(v47, "S_PUNC"))
      {
        *(v49 + v13 - 200) = 1;
      }

      if (strstr(v47, "E_PUNC"))
      {
        *(v49 + v13 + 24) = 1;
      }

      if (a7 == 1)
      {
        v50 = *(a4 + 48);
        v51 = strstr(v50, "S_PUNC:");
        if (v51)
        {
          v52 = v51 + 7;
          v53 = strchr(v51 + 7, 59);
          if (v53)
          {
            v54 = v53 - v52;
          }

          else
          {
            v54 = strlen(v52);
          }

          v55 = v54;
          v56 = heap_Calloc(*(a1 + 8), 1, v54 + 1);
          *(*a6 + v13 + 180) = v56;
          if (!v56)
          {
            break;
          }

          strncpy(v56, v52, v55);
          v50 = *(a4 + 48);
        }

        v57 = strstr(v50, "E_PUNC:");
        if (v57)
        {
          v58 = v57;
          v59 = strlen(v57 + 7);
          v60 = heap_Calloc(*(a1 + 8), 1, v59 + 1);
          *(*a6 + v13 + 188) = v60;
          if (!v60)
          {
            break;
          }

          strcpy(v60, v58 + 7);
          v50 = *(a4 + 48);
        }

        v61 = strstr(v50, "X_PUNC:");
        if (v61)
        {
          v62 = v61;
          v63 = strlen(v61 + 7);
          v64 = heap_Calloc(*(a1 + 8), 1, v63 + 1);
          *(*a6 + v13 + 196) = v64;
          if (!v64)
          {
            break;
          }

          strcpy(v64, v62 + 7);
        }
      }
    }

    v65 = *(a4 + 72);
    if (v65)
    {
      *(*a6 + v13 + 132) = v65;
      v66 = *(a4 + 64);
      if (v66)
      {
        v67 = strlen(v66);
        v68 = heap_Alloc(*(a1 + 8), v67 + 1);
        *(*a6 + v13 + 124) = v68;
        if (!v68)
        {
          break;
        }

        strcpy(v68, *(a4 + 64));
      }
    }

    v13 += 224;
    --v12;
    v24 = v9 == v14++;
    if (v24)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t resolvePHR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v76 = *MEMORY[0x1E69E9840];
  if (*(a4 + 8))
  {
    v10 = 0;
    v11 = -208;
    while (1)
    {
      if (v11 == -208)
      {
        goto LABEL_25;
      }

      v12 = *a4 + v11;
      if (*(v12 + 288))
      {
        goto LABEL_25;
      }

      v13 = *a4 + v11;
      v14 = *(v13 + 64);
      if (v14)
      {
        v15 = *(v12 + 208);
        if (v15 >= 2 && *(a1 + (v15 - 1)) == 95)
        {
          break;
        }
      }

      v26 = *(v13 + 64);
      if (v26)
      {
        v27 = *v26;
        if (v27 == 66)
        {
          v32 = strlen(v26);
          v33 = heap_Calloc(*(a2 + 8), 1, (v32 + 3));
          v34 = *a4 + v11;
          *(v34 + 288) = v33;
          if (!v33)
          {
            goto LABEL_87;
          }

          strcpy(v33, *(v34 + 64));
          **(*a4 + v11 + 288) = 73;
          v35 = strlen(*(*(*a4 + v11) + 8 * *(a3 + 18)));
          v22 = heap_Calloc(*(a2 + 8), 1, (v35 + 3));
          v23 = *a4;
          v24 = *(a3 + 18);
          *(*(*a4 + v11 + 224) + 8 * v24) = v22;
          if (!v22)
          {
            goto LABEL_87;
          }

          v25 = "[3] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        else
        {
          if (v27 != 79 && v27 != 73)
          {
            goto LABEL_25;
          }

          v28 = strlen(v26);
          v29 = heap_Calloc(*(a2 + 8), 1, (v28 + 3));
          v30 = *a4 + v11;
          *(v30 + 288) = v29;
          if (!v29)
          {
            goto LABEL_87;
          }

          strcpy(v29, *(v30 + 64));
          v31 = strlen(*(*(*a4 + v11) + 8 * *(a3 + 18)));
          v22 = heap_Calloc(*(a2 + 8), 1, (v31 + 3));
          v23 = *a4;
          v24 = *(a3 + 18);
          *(*(*a4 + v11 + 224) + 8 * v24) = v22;
          if (!v22)
          {
            goto LABEL_87;
          }

          v25 = "[2] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        goto LABEL_24;
      }

LABEL_25:
      ++v10;
      v36 = *(a4 + 8);
      v11 += 224;
      if (v10 >= v36)
      {
        if (*(a4 + 8))
        {
          v37 = 0;
          v38 = 80;
          do
          {
            if (!*(*a4 + v38))
            {
              if ((insert_NLU_info(a2, v37, (v37 + 1), &unk_1E81A4468, a3, a4, a5) & 0x80000000) != 0)
              {
                log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Failed to fill out PHR=B-NIL on word : word index=%d");
                return 2315264000;
              }

              LODWORD(v36) = *(a4 + 8);
            }

            ++v37;
            v38 += 224;
          }

          while (v37 < v36);
          if (v36)
          {
            v39 = 0;
            v40 = (*a4 + 80);
            do
            {
              if (!*v40)
              {
                log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "could not work out PHR on word : word index=%d");
                return 2315264000;
              }

              ++v39;
              v40 += 28;
            }

            while (v36 != v39);
            v41 = 0;
            v42 = 0;
            v43 = *a4;
            do
            {
              v44 = *(v43 + v41 + 80);
              if (*v44 == 73 && v44[1] == 45)
              {
                if (v41)
                {
                  if (strcmp(*(v43 + v41 - 144), *(v43 + v41 + 80)))
                  {
                    __strcpy_chk();
                    __s2[0] = 66;
                    v45 = *a4 + v41;
                    if (strcmp(*(v45 - 144), __s2))
                    {
                      **(v45 + 80) = 66;
                      log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v42, *(*a4 + v41 + 80));
                    }
                  }
                }

                else
                {
                  *v44 = 66;
                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", 0, *(*a4 + 80));
                }
              }

              v43 = *a4;
              v46 = *(*a4 + v41 + 176);
              if (v46)
              {
                v47 = strcmp(v46, "COMP]");
                if (v41)
                {
                  if (!v47)
                  {
                    v48 = *(v43 + v41 - 48);
                    if (v48)
                    {
                      if (!strcmp(*(v43 + v41 - 48), "COMP]"))
                      {
                        heap_Free(*(a2 + 8), v48);
                        v43 = *a4;
                        *(*a4 + v41 - 48) = 0;
                      }
                    }
                  }
                }
              }

              ++v42;
              v41 += 224;
            }

            while (v42 < *(a4 + 8));
            if (*(a4 + 8))
            {
              v49 = 0;
              v50 = 0;
              do
              {
                v74 = v49;
                __strcpy_chk();
                if (*__s2 == 11586)
                {
                  __strcpy_chk();
                }

                v51 = *(a4 + 8);
                LODWORD(v52) = v50;
                if (v51 > v50)
                {
                  v52 = v50;
                  v53 = *a4 + 224 * v50;
                  v54 = (v53 + 80);
                  while (1)
                  {
                    v55 = *v54;
                    if (!*v54 || strcmp(*v54, __s2) && (strlen(v55) < 3 || strcmp(v55 + 2, __s2) || *v55 != 73 || v55[1] != 45) && *(v54 - 38) != *(v53 + 4))
                    {
                      break;
                    }

                    ++v52;
                    v54 += 28;
                    if (v51 == v52)
                    {
                      LODWORD(v52) = v51;
                      break;
                    }
                  }
                }

                v56 = v52 - 1;
                if (v56 <= v50)
                {
LABEL_76:
                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[3] add syn chunk %s from %d to %d", __s2, v74, v52 - 1);
                  v63 = (v52 - 1);
                  v64 = a2;
                  v65 = 0;
                  v66 = v50;
                }

                else
                {
                  v57 = 1;
                  v58 = v50;
                  v59 = v50;
                  while (1)
                  {
                    v60 = v59;
                    v61 = v59;
                    if (*(*a4 + 224 * v59 + 28) != 1)
                    {
                      break;
                    }

LABEL_72:
                    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[1] add syn chunk %s%s from %d to %d", __s2, "-P", v59, v58);
                    v62 = addSynChunk(a2, __s2, "-P", v59, v60, a3, a4);
                    if ((v62 & 0x80000000) != 0)
                    {
                      return v62;
                    }

                    v57 = 0;
                    v59 = v60 + 1;
                    v58 = (v60 + 1);
                    if (v56 <= v58)
                    {
                      goto LABEL_85;
                    }
                  }

                  while (v56 > ++v61)
                  {
                    if (*(*a4 + 224 * v61 + 28) == 1)
                    {
                      v58 = v61;
                      v60 = v61;
                      goto LABEL_72;
                    }
                  }

                  if (v57)
                  {
                    goto LABEL_76;
                  }

LABEL_85:
                  if (v52 <= v59)
                  {
                    goto LABEL_78;
                  }

                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[2] add syn chunk %s%s from %d to %d", __s2, "-P", v59, v52 - 1);
                  v66 = v59;
                  v63 = (v52 - 1);
                  v64 = a2;
                  v65 = "-P";
                }

                v62 = addSynChunk(v64, __s2, v65, v66, v63, a3, a4);
                if ((v62 & 0x80000000) != 0)
                {
                  return v62;
                }

LABEL_78:
                v67 = *a4;
                *(*a4 + 224 * v50 + 44) = 1;
                v68 = v67 + 224 * v56;
                *(v68 + 40) = 1;
                if (*(v68 + 28) == 1)
                {
                  *(v67 + 224 * v50 + 32) = 1;
                }

                if (v50 == v52)
                {
                  v50 = v52 + 1;
                }

                else
                {
                  v50 = v52;
                }

                v49 = v50;
              }

              while (v50 < *(a4 + 8));
              if (*(a4 + 8))
              {
                v70 = 0;
                v71 = *a4;
                v72 = 80;
                do
                {
                  heap_Free(*(a2 + 8), *(v71 + v72));
                  v69 = 0;
                  v71 = *a4;
                  *(*a4 + v72) = 0;
                  ++v70;
                  v72 += 224;
                }

                while (v70 < *(a4 + 8));
                return v69;
              }
            }
          }
        }

        return 0;
      }
    }

    v16 = strlen(v14);
    v17 = heap_Calloc(*(a2 + 8), 1, (v16 + 3));
    v18 = *a4 + v11;
    *(v18 + 288) = v17;
    if (!v17)
    {
      goto LABEL_87;
    }

    strcpy(v17, *(v18 + 64));
    v19 = *a4;
    v20 = *(*a4 + v11 + 288);
    if (*v20 != 79 || v20[1])
    {
      *v20 = 73;
      v19 = *a4;
    }

    v21 = strlen(*(*(v19 + v11) + 8 * *(a3 + 18)));
    v22 = heap_Calloc(*(a2 + 8), 1, (v21 + 3));
    v23 = *a4;
    v24 = *(a3 + 18);
    *(*(*a4 + v11 + 224) + 8 * v24) = v22;
    if (!v22)
    {
LABEL_87:
      v69 = 2315264010;
      log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0);
      return v69;
    }

    v25 = "[1] set missing PHR on word : word index=%d to %s (also copy POS %s)";
LABEL_24:
    strcpy(v22, *(*(v23 + v11) + 8 * v24));
    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, v25, v10, *(*a4 + v11 + 288), *(*(*a4 + v11 + 224) + 8 * *(a3 + 18)));
    goto LABEL_25;
  }

  return 0;
}

uint64_t addMarkerType(uint64_t a1, const char *a2, const char *a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  result = checkSpan(a1, a6, (*a7 + 224 * a4 + 56));
  if ((result & 0x80000000) == 0)
  {
    result = checkSpan(a1, a6, (*a7 + 224 * a5 + 56));
    if ((result & 0x80000000) == 0)
    {
      v28 = a3;
      v15 = *(a6 + 74);
      if (v15 <= *(a6 + 72))
      {
        v16 = *(a6 + 72);
      }

      else
      {
        v16 = *(a6 + 74);
      }

      v17 = 1 - v15;
      v18 = v16 - v15;
      v19 = 8 * v15;
      do
      {
        if (!v18 || (v20 = *(a6 + 528)) == 0)
        {
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Ignoring marker :%s, as not in DEFMAPPING list", a2);
          return 0;
        }

        v21 = strcmp((v20 + *(*(a6 + 536) + 4 * *(*(a6 + 64) + v19))), a2);
        --v17;
        --v18;
        v19 += 8;
      }

      while (v21);
      v22 = *a7;
      v23 = -v17;
      v24 = *(*a7 + 224 * a4 + 56) + 32 * v23;
      *v24 = 1;
      *(v24 + 8) = a4;
      *(v24 + 10) = a5;
      v25 = *(v22 + 224 * a5 + 56) + 32 * v23;
      *(v25 + 4) = 1;
      *(v25 + 8) = a4;
      v26 = strlen(v28);
      v27 = heap_Calloc(*(a1 + 8), 1, (v26 + 1));
      *(*(*a7 + 224 * a4 + 56) + 32 * v23 + 16) = v27;
      if (v27)
      {
        strcpy(v27, v28);
        return 0;
      }

      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      return 2315264010;
    }
  }

  return result;
}

uint64_t createPOSString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, (2 * *(a3 + 8)) | 1);
  *(a3 + 24) = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *(a3 + 8);
  if (*(a3 + 8))
  {
    v8 = 0;
    v9 = (*a3 + 16);
    do
    {
      v10 = *v9;
      v9 += 28;
      v8 += strlen(*(v10 + 8 * *(a2 + 18))) + 1;
      --v7;
    }

    while (v7);
    v11 = v8 + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = heap_Calloc(*(a1 + 8), 1, v11);
  *(a3 + 16) = v12;
  if (v12)
  {
    if (*(a3 + 8))
    {
      v13 = 0;
      v14 = 0;
      v15 = 16;
      do
      {
        v16 = *(a3 + 16);
        *(*(a3 + 24) + 2 * v13) = v14;
        v17 = (v16 + v14);
        v18 = strlen(*(*(*a3 + v15) + 8 * *(a2 + 18)));
        memcpy(v17, *(*(*a3 + v15) + 8 * *(a2 + 18)), v18);
        v19 = v14 + strlen(*(*(*a3 + v15) + 8 * *(a2 + 18)));
        v20 = *(a3 + 8);
        if (v13 + 1 < v20)
        {
          *(*(a3 + 16) + v19 + strlen((*(a3 + 16) + v19))) = 32;
          v20 = *(a3 + 8);
        }

        v14 = v19 + 1;
        ++v13;
        v15 += 224;
      }

      while (v13 < v20);
    }

    return 0;
  }

  else
  {
LABEL_14:
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t getSyllCount(const char *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = strlen(a1);
    if (v2)
    {
      if (*v1 != 46 || (v3 = *(v1 + 1), v1[1]))
      {
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

uint64_t getPhonWeights(unsigned __int16 *a1)
{
  v1 = a1[4];
  if (a1[4])
  {
    v2 = (*a1 + 24);
    do
    {
      *v2 = getSyllCount(*(v2 - 2));
      v2 += 28;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t add2Str(uint64_t a1, char **a2, _WORD *a3, char *__s)
{
  v8 = strlen(__s);
  v9 = *a3;
  v10 = *a2;
  v11 = strlen(*a2);
  if (v8 >= v9 - v11)
  {
    if ((v8 - v9 + v11) <= 0x80u)
    {
      v12 = 128;
    }

    else
    {
      v12 = (v8 - v9 + v11);
    }

    v13 = heap_Realloc(*(a1 + 8), v10, v9 + v12 + 1);
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      return 2315264010;
    }

    v10 = v13;
    *a2 = v13;
    *a3 += v12;
  }

  if (*v10)
  {
    strcat(v10, __s);
  }

  else
  {
    strcpy(v10, __s);
  }

  return 0;
}

uint64_t printAsChunks(uint64_t result, const char **a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  if (result)
  {
    log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "CHUNKS", 0);
    if (*(a5 + 4))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *a5;
        v12 = *(*a5 + v9 + 56);
        if (v12 && *(v12 + 32 * *(a4 + 24)) == 1)
        {
          result = add2Str(*a4, a2, a3, "[");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = add2Str(*a4, a2, a3, *(*(*a5 + v9 + 56) + 32 * *(a4 + 24) + 16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = add2Str(*a4, a2, a3, " ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v11 = *a5;
        }

        result = add2Str(*a4, a2, a3, *(*(v11 + v9 + 16) + 8 * *(a4 + 16)));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = add2Str(*a4, a2, a3, "_");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = add2Str(*a4, a2, a3, *(*(*a5 + v9 + 16) + 8 * *(a4 + 18)));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = add2Str(*a4, a2, a3, " ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v13 = *(*a5 + v9 + 56);
        if (v13 && *(v13 + 32 * *(a4 + 24) + 4) == 1)
        {
          result = add2Str(*a4, a2, a3, "] ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "%s", *a2);
          **a2 = 0;
        }

        ++v10;
        v9 += 224;
      }

      while (v10 < *(a5 + 4));
    }

    log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "%s", *a2);
    result = 0;
    **a2 = 0;
  }

  return result;
}

uint64_t printSent(uint64_t a1, int a2, char **a3, char *a4, _WORD *a5, uint64_t a6, uint64_t *a7, const char *a8, int a9)
{
  if (!a2)
  {
    return 0;
  }

  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Sentence :%s", a8);
  if (*(a7 + 4))
  {
    v15 = 0;
    v16 = "tmphr=%4s ";
    if (a9 == 1)
    {
      v16 = "%4s ";
    }

    v38 = v16;
    while (1)
    {
      sprintf(a4, "[%2d] ", v15);
      result = add2Str(a1, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v18 = 224 * v15;
      strncpy(a4, *(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 16)), 0x14uLL);
      v19 = strlen(*(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 16)));
      if (v19 <= 0x13)
      {
        do
        {
          *&a4[strlen(a4)] = 32;
          v20 = v19++ >= 0x13;
        }

        while (!v20);
      }

      result = add2Str(a1, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(a1, a3, a5, " ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v21 = *(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 18));
      if (!v21)
      {
        v21 = " ";
      }

      sprintf(a4, "%6s ", v21);
      result = add2Str(a1, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v22 = *a7;
      if (*(*a7 + 224 * v15 + 80))
      {
        sprintf(a4, v38, *(*a7 + 224 * v15 + 80));
        result = add2Str(a1, a3, a5, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a7;
      }

      if (*(v22 + 224 * v15 + 88))
      {
        sprintf(a4, "retag=%4s ", *(v22 + 224 * v15 + 88));
        result = add2Str(a1, a3, a5, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a7;
      }

      v23 = *(*(v22 + 224 * v15 + 16) + 8 * *(a6 + 20));
      if (!v23)
      {
        v23 = " ";
      }

      sprintf(a4, "%6s ", v23);
      result = add2Str(a1, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      strncpy(a4, *(*a7 + v18 + 8), 0x14uLL);
      v24 = strlen(*(*a7 + v18 + 8));
      if (v24 <= 0x13)
      {
        do
        {
          *&a4[strlen(a4)] = 32;
          v20 = v24++ >= 0x13;
        }

        while (!v20);
      }

      result = add2Str(a1, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (*(*a7 + 224 * v15 + 24))
      {
        sprintf(a4, "(nsyll=%d) ", *(*a7 + 224 * v15 + 24));
        result = add2Str(a1, a3, a5, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (a9 == 1)
      {
        v25 = *a7;
        if (*(*a7 + 224 * v15 + 184))
        {
          sprintf(a4, "startDocPunc=%s ", *(*a7 + 224 * v15 + 184));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = *a7;
        }

        if (*(v25 + 224 * v15 + 192))
        {
          sprintf(a4, "endDocPunc=%s ", *(v25 + 224 * v15 + 192));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = *a7;
        }

        if (*(v25 + 224 * v15 + 200))
        {
          sprintf(a4, "singleDocPunc=%s ", *(v25 + 224 * v15 + 200));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = *a7;
        }

        if (*(v25 + 224 * v15 + 208))
        {
          sprintf(a4, "orthPunc=%s ", *(v25 + 224 * v15 + 208));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = *a7;
        }

        if (*(v25 + 224 * v15 + 168))
        {
          sprintf(a4, "tokTag=%s ", *(v25 + 224 * v15 + 168));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = *a7;
        }

        if (*(v25 + 224 * v15 + 176))
        {
          sprintf(a4, "compoundInfo=%s ");
          goto LABEL_72;
        }
      }

      else if (!a9)
      {
        v26 = *a7;
        if (*(*a7 + 224 * v15 + 220))
        {
          result = add2Str(a1, a3, a5, "DUMMYWORD ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 28))
        {
          result = add2Str(a1, a3, a5, "_HASCOMMA ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 36))
        {
          result = add2Str(a1, a3, a5, "_HASBNDBEFORESET ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 44))
        {
          result = add2Str(a1, a3, a5, "_ISFIRSTINPHR ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 40))
        {
          result = add2Str(a1, a3, a5, "_ISLASTINPHR ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 32))
        {
          result = add2Str(a1, a3, a5, "_PHRENDSINCOMMA ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 96))
        {
          sprintf(a4, "compoundTag=%s ", *(v26 + 224 * v15 + 96));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *a7;
        }

        if (*(v26 + 224 * v15 + 52))
        {
          sprintf(a4, "domain=%s ");
LABEL_72:
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      if (!*(*a7 + 224 * v15 + 48) || (result = add2Str(a1, a3, a5, " bPHONETIC "), (result & 0x80000000) == 0))
      {
        if (a9 == 1 && *(a6 + 72))
        {
          v39 = a5;
          v27 = 0;
          v28 = 4;
          v29 = 16;
          do
          {
            v30 = *a7;
            v31 = *(*a7 + 224 * v15 + 56);
            if (v31)
            {
              if (*(v31 + v29 - 16) != 1)
              {
                goto LABEL_85;
              }

              if (*(v31 + v29 + 8) == 1)
              {
                sprintf(a4, "<%s_%s_ext ");
              }

              else
              {
                sprintf(a4, "<%s_%s ");
              }

              result = add2Str(a1, a3, v39, a4);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v30 = *a7;
              v31 = *(*a7 + 224 * v15 + 56);
              if (v31)
              {
LABEL_85:
                v32 = v31 + v29;
                if (*(v32 - 12) == 1)
                {
                  if (*(*(v30 + 224 * *(v32 - 8) + 56) + v29 + 8) == 1)
                  {
                    sprintf(a4, "%s_ext_%s> ");
                  }

                  else
                  {
                    sprintf(a4, "%s_%s> ");
                  }

                  result = add2Str(a1, a3, v39, a4);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }
              }
            }

            ++v27;
            v33 = *(a6 + 72);
            v29 += 32;
            v28 += 8;
          }

          while (v27 < v33);
          if (*(*a7 + 224 * v15 + 64))
          {
            v34 = v33 == 0;
          }

          else
          {
            v34 = 1;
          }

          a5 = v39;
          if (!v34)
          {
            v35 = 0;
            v36 = 4;
            do
            {
              v37 = *(*(*a7 + 224 * v15 + 64) + 8 * v35);
              if (v37)
              {
                snprintf(a4, 0x400uLL, "[%s %s] ", (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 64) + v36))), v37);
                result = add2Str(a1, a3, v39, a4);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                LOWORD(v33) = *(a6 + 72);
              }

              ++v35;
              v36 += 8;
            }

            while (v35 < v33);
          }
        }

        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", *a3);
        result = 0;
        **a3 = 0;
        if (++v15 < *(a7 + 4))
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

uint64_t printMSTree(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, unsigned int a6, char **a7, char *a8, _WORD *a9, char *a10, unsigned __int16 a11)
{
  if (!a4)
  {
    return 0;
  }

  v15 = a4;
  v16 = a3;
  v18 = a10;
  kbsymtab_ConsSymString(a3, *(a4 + 16), a10, a11);
  if (a6)
  {
    v19 = 0;
    *a8 = 0;
    do
    {
      strcat(a8, "  ");
      ++v19;
    }

    while (a6 > v19);
    result = add2Str(a1, a7, a9, a8);
    v18 = a10;
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  result = add2Str(a1, a7, a9, v18);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = add2Str(a1, a7, a9, "(");
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  __dst = v18;
  if (*(v15 + 24) < 1)
  {
LABEL_18:
    result = add2Str(a1, a7, a9, ")");
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(v15 + 8))
    {
      v24 = strlen(a5);
      v25 = *(v15 + 56);
      if (v25 > v24)
      {
        *(v15 + 56) = v24;
        v25 = v24;
      }

      v26 = *(v15 + 52);
      if (v26 > v24 || v25 > v24 || (v27 = __OFSUB__(v25, v26), v28 = v25 - v26, (v28 < 0) ^ v27 | (v28 == 0)))
      {
        v33 = "<ERROR>";
        v30 = a1;
        v31 = a7;
        v32 = a9;
      }

      else
      {
        v29 = strncpy(__dst, &a5[v26], (v28 - 1));
        v29[(*(v15 + 56) + ~*(v15 + 52))] = 0;
        sprintf(a8, " <%s>", v29);
        v30 = a1;
        v31 = a7;
        v32 = a9;
        v33 = a8;
      }

      result = add2Str(v30, v31, v32, v33);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", *a7);
    **a7 = 0;
    v34 = *(v15 + 8);
    if (v34)
    {
      v37 = v16;
      do
      {
        if (a6 && v34 != *(v15 + 8))
        {
          v35 = a5;
          v36 = 0;
          *a8 = 0;
          do
          {
            strcat(a8, "  ");
            ++v36;
          }

          while (a6 > v36);
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s,", a8);
          **a7 = 0;
          a5 = v35;
          v16 = v37;
        }

        result = printMSTree(a1, a2, v16, v34, a5, (a6 + 1), a7, a8, a9, __dst, a11);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = 0;
        v34 = *v34;
      }

      while (v34);
      return result;
    }

    return 0;
  }

  v21 = 0;
  v22 = v15 + 26;
  v39 = v15;
  while (1)
  {
    if (v21)
    {
      result = add2Str(a1, a7, a9, ",");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v23 = *(v22 + 2 * v21);
    if (v23 < 0)
    {
      result = mosyntkbsymtab_AtomSymString(a2, v16, -v23, __dst, a11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(a1, a7, a9, __dst);
      v15 = v39;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      sprintf(a8, "?%d", *(v22 + 2 * v21));
      result = add2Str(a1, a7, a9, a8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*(v15 + 24) <= ++v21)
    {
      goto LABEL_18;
    }
  }
}

uint64_t getStartAndEndFromMSTree(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4)
{
  if (a1)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      do
      {
        getStartAndEndFromMSTree(v7, a2, a3, a4);
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      if (!*a4)
      {
        *a2 = *(a1 + 52);
        *a4 = 1;
      }

      *a3 = *(a1 + 56);
    }
  }

  return 0;
}

uint64_t addMSNode(uint64_t a1, char *__s, __int16 a3, __int16 a4, uint64_t a5)
{
  if (!*(a5 + 8))
  {
    v13 = heap_Calloc(*(a1 + 8), 1, 513);
    *a5 = v13;
    if (v13)
    {
      v12 = 32;
      goto LABEL_7;
    }

LABEL_10:
    v16 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return v16;
  }

  v10 = *(a5 + 10);
  if (*(a5 + 8) + 1 < v10)
  {
    goto LABEL_8;
  }

  v11 = heap_Realloc(*(a1 + 8), *a5, 16 * v10 + 257);
  if (!v11)
  {
    goto LABEL_10;
  }

  *a5 = v11;
  v12 = *(a5 + 10) + 16;
LABEL_7:
  *(a5 + 10) = v12;
LABEL_8:
  v14 = strlen(__s);
  v15 = heap_Calloc(*(a1 + 8), 1, (v14 + 1));
  *(*a5 + 16 * *(a5 + 8)) = v15;
  if (!v15)
  {
    goto LABEL_10;
  }

  strcpy(v15, __s);
  v16 = 0;
  v17 = *(a5 + 8);
  v18 = *a5 + 16 * v17;
  *(v18 + 8) = a3;
  *(v18 + 10) = a4;
  *(v18 + 12) = 1;
  *(a5 + 8) = v17 + 1;
  return v16;
}

uint64_t printMSNodes(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, const char *a5, int a6)
{
  result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", a5);
  if (*(a4 + 8))
  {
    v12 = 0;
    v13 = 8;
    do
    {
      v14 = (*a4 + v13);
      v15 = v14[1];
      v16 = *v14;
      v17 = (v15 - v16);
      if (v17 >= 0x3FF)
      {
        v18 = 1023;
      }

      else
      {
        v18 = v17;
      }

      result = strncpy(a2, (a3 + v16), v18);
      a2[v18] = 0;
      if (a6 == 1)
      {
        result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%d [%d] %s : <%d - %d> <%s>", v12, *(*a4 + v13 + 4), *(*a4 + v13 - 8), *(*a4 + v13), *(*a4 + v13 + 2), a2);
      }

      else
      {
        v19 = (*a4 + v13);
        if (*(v19 + 1) == 1)
        {
          result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%d [%d] %s : <%d - %d> <%s>", v12, 1, *(v19 - 1), *v19, *(v19 + 1), a2);
        }
      }

      ++v12;
      v13 += 16;
    }

    while (v12 < *(a4 + 8));
  }

  return result;
}

uint64_t validateMSNodes(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  if (!*(a2 + 4))
  {
    return 0;
  }

  v3 = 0;
  v4 = *a2;
  while (2)
  {
    v5 = v3;
    v6 = (*a2 + 12 + 16 * v3);
    while (1)
    {
      v7 = *v6;
      v6 += 4;
      if (v7)
      {
        break;
      }

      if (++v5 >= v2)
      {
        goto LABEL_12;
      }
    }

    v8 = v5;
    do
    {
      ++v8;
    }

    while (v2 > v8 && !*(v4 + 16 * v8 + 12));
    if (v8 + 1 < v2 && *(v4 + 16 * v5 + 10) != *(v4 + 16 * v8 + 8))
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not extract from MS tree : node=%d", v5);
      return 2315264000;
    }

LABEL_12:
    v3 = v5 + 1;
    if (v2 > (v5 + 1))
    {
      continue;
    }

    return 0;
  }
}

uint64_t getWordIdxForMSPhr(uint64_t a1, unsigned __int16 *a2, int a3, int a4, _WORD *a5, _WORD *a6)
{
  if (a2[4])
  {
    v6 = 0;
    v7 = (*a2 + 2);
    v8 = 1;
    while (*(*a2 + 224 * v6) != a3)
    {
      ++v6;
      ++v8;
      v7 += 112;
      if (v6 >= a2[4])
      {
        goto LABEL_5;
      }
    }

    *a5 = v6;
    *a6 = v6;
    LODWORD(v10) = a2[4];
    if (v6 >= v10)
    {
LABEL_12:
      v9 = 2315264000;
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "cant match MS terminal node with end word : start position=%d start word=%d unknown end=%d", a6);
    }

    else
    {
      while (1)
      {
        v12 = *v7;
        v7 += 112;
        v11 = v12;
        if (a4 - 1 == v12 || v8 == v10 && v11 == a4)
        {
          return 0;
        }

        *a6 = v8;
        v10 = a2[4];
        if (v8++ >= v10)
        {
          goto LABEL_12;
        }
      }
    }
  }

  else
  {
LABEL_5:
    v9 = 2315264000;
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "cant match MS terminal node with start word : start position=%d", a6);
  }

  return v9;
}

uint64_t mapMSNodes2PHR(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    v5 = 0;
    while (2)
    {
      v6 = v5;
      v7 = (*a2 + 16 * v5 + 12);
      while (1)
      {
        v8 = *v7;
        v7 += 4;
        if (v8)
        {
          break;
        }

        if (++v6 >= v2)
        {
          goto LABEL_24;
        }
      }

      v9 = 0;
      v20 = 0;
      do
      {
        if (v9 >= *(a1 + 640))
        {
          goto LABEL_19;
        }

        if (*(*(a1 + 632) + 4 * v9) == 1)
        {
          v10 = strlen(*(*a2 + 16 * v6));
          result = do_pcre_exec((a1 + 8), *(*(*(a1 + 624) + 8 * v9) + 2), *(*a2 + 16 * v6), v10, 0, &v20);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v12 = v20;
        }

        else if (!strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 624) + 8 * v9))), *(*a2 + 16 * v6)))
        {
          v12 = 1;
          v20 = 1;
        }

        else
        {
          v12 = 0;
        }

        v13 = v9++;
      }

      while (!v12);
      if (v12 != 1)
      {
LABEL_19:
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "no rules FIRE on %s -> %s", *(*a2 + 16 * v6), "O");
        v18 = "O";
        goto LABEL_21;
      }

      v14 = *(a1 + 536);
      v15 = *(a1 + 544);
      v16 = *(*(a1 + 624) + 8 * v13);
      v17 = *(*a1 + 32);
      if (*(*(a1 + 632) + 4 * v13) == 1)
      {
        v18 = (v14 + *(v15 + 4 * *(v16 + 8)));
        log_OutText(v17, "FE_PHRASING", 5, 0, "regex rule %d FIRED %s -> %s");
      }

      else
      {
        v18 = (v14 + *(v15 + 4 * *(v16 + 4)));
        log_OutText(v17, "FE_PHRASING", 5, 0, "normal rule FIRED %s -> %s");
      }

LABEL_21:
      result = getWordIdxForMSPhr(*a1, (a1 + 672), *(*a2 + 16 * v6 + 8), *(*a2 + 16 * v6 + 10), &v19 + 1, &v19);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = addPHRRange(*a1, HIWORD(v19), v19, v18, (a1 + 672));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v2 = *(a2 + 8);
LABEL_24:
      v5 = v6 + 1;
      if ((v6 + 1) < v2)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t sortMSNodes(uint64_t a1, uint64_t *a2)
{
  v39 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Sort MS Nodes Pass 1 : constrain nodes containing primitives", 0);
  LODWORD(v4) = *(a2 + 4);
  if (*(a2 + 4))
  {
    v5 = 0;
    v6 = 0;
    v38 = 0;
    do
    {
      v7 = *a2 + 16 * v5;
      if (*(v7 + 12) == 1)
      {
        v8 = *(v7 + 8);
        v9 = *(v7 + 10);
        if (*(a1 + 16) >= 2u)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "doing node %d", v6);
          LODWORD(v4) = *(a2 + 4);
        }

        if (v4)
        {
          v10 = 0;
          v36 = v9;
          v37 = v8;
          while (1)
          {
            if (v5 != v10)
            {
              v11 = *a2 + 16 * v10;
              if (*(v11 + 12) == 1 && *(v11 + 8) >= v8 && *(v11 + 10) <= v9)
              {
                break;
              }
            }

LABEL_32:
            ++v10;
            v4 = *(a2 + 4);
            if (v10 >= v4)
            {
              goto LABEL_33;
            }
          }

          if (*(a1 + 16) >= 2u)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "checking node %d apply %d basicdef rules", v10, *(a1 + 616));
          }

          v12 = 0;
          v39 = 0;
          do
          {
            if (v12 >= *(a1 + 616))
            {
              v9 = v36;
              v8 = v37;
              goto LABEL_32;
            }

            if (*(*(a1 + 608) + 4 * v12) == 1)
            {
              v13 = strlen(*(*a2 + 16 * v10));
              result = do_pcre_exec((a1 + 8), *(*(*(a1 + 600) + 8 * v12) + 2), *(*a2 + 16 * v10), v13, 0, &v39);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v38 = result;
              if (*(a1 + 16) >= 2u)
              {
                v15 = "NOMATCH ";
                if (v39 == 1)
                {
                  v15 = "FIRED ";
                }

                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           %sbasicDef: rule %d : regexNum %d [%s] target %s", v15, v12);
              }
            }

            else if (!strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 600) + 8 * v12))), *(*a2 + 16 * v10)))
            {
              v39 = 1;
              if (*(a1 + 16) >= 2u)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           basicDef: rule %d %s matched string with rule %s");
              }
            }

            else if (*(a1 + 16) >= 2u)
            {
              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           basicDef: rule %d %s does not match string %s");
            }

            ++v12;
          }

          while (!v39);
          v9 = v36;
          v8 = v37;
          if (v39 != 1)
          {
            goto LABEL_32;
          }

          v16 = *a2 + 16 * v5;
          v17 = *(*a2 + 16 * v10 + 8);
          v18 = *(*a1 + 32);
          if (*(v16 + 8) == v17)
          {
            log_OutText(v18, "FE_PHRASING", 5, 0, "BLOCK decrease node %d from %d to %d, since matches entire node", v6, *(v16 + 10), v17);
            goto LABEL_32;
          }

          log_OutText(v18, "FE_PHRASING", 5, 0, "decrease node %d from %d to %d", v6, *(v16 + 10), v17);
          *(*a2 + 16 * v5 + 10) = *(*a2 + 16 * v10 + 8);
          LODWORD(v4) = *(a2 + 4);
        }
      }

LABEL_33:
      v6 = ++v5;
    }

    while (v5 < v4);
  }

  else
  {
    v38 = 0;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Sort MS Nodes Pass 2 : delete consumed nodes", 0);
  v19 = *(a2 + 4);
  if (*(a2 + 4))
  {
    v20 = 0;
    v21 = *a2;
    v22 = *a2 + 12;
    do
    {
      v23 = v21 + 16 * v20;
      if (*(v23 + 12) == 1)
      {
        v24 = 0;
        v25 = *(v23 + 8);
        v26 = *(v23 + 10);
        v27 = v22;
        v28 = v20;
        do
        {
          if (*v27 == 1 && *(v27 - 2) == v25 && *(v27 - 1) > v26)
          {
            v26 = *(v27 - 1);
            v28 = v24;
          }

          ++v24;
          v27 += 4;
        }

        while (v19 != v24);
        v29 = v28;
        v30 = v19;
        v31 = v22;
        v32 = v21 + 16 * v28;
        do
        {
          v33 = *(v31 - 2);
          if (v33 == v25 && *v31 == 1 && v29 != 0)
          {
            *v31 = 0;
          }

          if (v33 > v25 && *v31 == 1 && *(v31 - 1) <= *(v32 + 10) && v29 != 0)
          {
            *v31 = 0;
          }

          v31 += 4;
          --v29;
          --v30;
        }

        while (v30);
      }

      ++v20;
    }

    while (v20 != v19);
  }

  return v38;
}

void *freeMSNodes(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  v5 = *a2;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      heap_Free(v3[1], *(v5 + v6));
      v5 = *a2;
      *(*a2 + v6) = 0;
      ++v7;
      v6 += 16;
    }

    while (v7 < *(a2 + 8));
    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    result = heap_Free(v3[1], v5);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t extractFromMSTree(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, unsigned __int16 a12)
{
  if (!a4)
  {
    return 0;
  }

  kbsymtab_ConsSymString(a3, *(a4 + 16), a11, a12);
  v18 = 0;
  v33 = 0;
  while (v18 < *(a1 + 592))
  {
    if (*(*(a1 + 584) + 4 * v18) == 1)
    {
      v19 = strlen(a11);
      result = do_pcre_exec((a1 + 8), *(*(*(a1 + 576) + 8 * v18) + 2), a11, v19, 0, &v33);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v21 = v33;
    }

    else if (!strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 576) + 8 * v18))), a11))
    {
      v21 = 1;
      v33 = 1;
    }

    else
    {
      v21 = 0;
    }

    ++v18;
    if (v21)
    {
      if (v21 == 1)
      {
        v31 = 0;
        v32 = 0;
        getStartAndEndFromMSTree(a4, &v32 + 1, &v32, &v31);
        result = addMSNode(*a1, a11, SHIWORD(v32), v32, a10);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      break;
    }
  }

  v22 = *(a4 + 8);
  if (v22)
  {
    do
    {
      result = extractFromMSTree(a1, a2, a3, v22, a5, a6 + 1, a7, a8, a9, a10, a11, a12);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v22 = *v22;
    }

    while (v22);
    return result;
  }

  v23 = a5;
  v24 = strlen(a5);
  v25 = *(a4 + 56);
  if (v25 > v24)
  {
    *(a4 + 56) = v24;
    v25 = v24;
  }

  v26 = *(a4 + 52);
  if (v26 > v24 || v25 > v24 || v25 <= v26)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "error extracting from MS tree : OUTOFRANGE s32StartPos=%d s32EndPos=%d len=%d", v26, v25, v24);
    return 2315264000;
  }

  if (v25 - v26 == 1)
  {
    v27 = 0;
    v28 = a4;
  }

  else
  {
    v27 = utf8_BelongsToSet(0, a5, v25 - 1, v24) ? -1 : 0;
    v28 = a4;
    v26 = *(a4 + 52);
    v25 = *(a4 + 56);
  }

  strncpy(a11, &v23[v26], (v27 - v26 + v25));
  a11[*(v28 + 56) + v27 - *(v28 + 52)] = 0;
  result = addMSNode(*a1, a11, *(v28 + 52), *(v28 + 56), a10);
  if ((result & 0x80000000) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t setNNPausingDefault(uint64_t a1, char **a2, char *__s)
{
  v6 = *(a1 + 8);
  v7 = strlen(__s);
  v8 = heap_Calloc(v6, 1, (v7 + 1));
  *a2 = v8;
  if (v8)
  {
    strcpy(v8, __s);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t getStartOfOrthPunc(const char *a1, _DWORD *a2)
{
  v4 = strlen(a1);
  *a2 = 0;
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = utf8_determineUTF8CharLength(a1[v5]);
      v7 = a1[v5];
      if (v6 == 1 && v7 == 44)
      {
        break;
      }

      v8 = v7 > 0x3F;
      v9 = (1 << v7) & 0x8C00430200000000;
      if (!v8 && v9 != 0)
      {
        break;
      }

      v5 += v6;
      if (v5 >= v4)
      {
        return v4;
      }
    }

    *a2 = 1;
  }

  else
  {
    return v4;
  }

  return v5;
}

uint64_t getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  *v124 = 0;
  v123 = 0;
  v121 = 0;
  v122 = 0;
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v110 = 0;
  v112[0] = 0;
  v112[1] = 0;
  *(a6 + 1108) = log_GetLogLevel(*(a1 + 32)) > 4;
  v16 = (*(a3 + 104))(a4, a5, 1, 0, &v124[1]);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = (*(a3 + 184))(a4, a5, v124[1], 0, &v123);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (v123 != 1)
  {
    return v17;
  }

  v17 = (*(a3 + 176))(a4, a5, v124[1], 0, &v122, &v120);
  if ((v17 & 0x80000000) != 0 || v120 < 2u)
  {
    return v17;
  }

  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Method PandP : processing=%s", v122);
  v18 = heap_Calloc(*(a1 + 8), 1, 1024);
  *(a6 + 1088) = v18;
  if (!v18 || (*(a6 + 1104) = 1024, v19 = heap_Calloc(*(a1 + 8), 1, 1024), (*(a6 + 1096) = v19) == 0))
  {
    v17 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    v21 = 0;
    goto LABEL_61;
  }

  v20 = strlen(v122) + 1;
  v21 = heap_Calloc(*(a1 + 8), 1, v20);
  if (!v21)
  {
    v17 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    goto LABEL_61;
  }

  v102 = v20;
  v22 = (*(a3 + 104))(a4, a5, 2, v124[1], v124);
  if ((v22 & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

  v104 = 0;
  v101 = (a6 + 1104);
  v17 = 2315271857;
  v103 = v21 - 1;
  v106 = v21;
  v107 = (a6 + 672);
  v105 = a2;
  while (v124[0])
  {
    v22 = (*(a3 + 168))(a4, a5);
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    if (v119 <= 0xA && ((1 << v119) & 0x610) != 0)
    {
      v22 = (*(a3 + 168))(a4, a5, v124[0], 1, 1, &v115, &v120);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      v22 = (*(a3 + 168))(a4, a5, v124[0], 2, 1, &v115 + 2, &v120);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      if (v115 > HIWORD(v115))
      {
        goto LABEL_61;
      }

      v22 = (*(a3 + 176))(a4, a5, v124[0], 3, &v117, &v120);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      strncpy(v21, &v122[v115], HIWORD(v115) - v115);
      v21[HIWORD(v115) - v115] = 0;
      if (HIWORD(v115) == v115)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", HIWORD(v115), HIWORD(v115));
      }

      else
      {
        __s = 0;
        v108 = 0;
        v24 = strlen(v21);
        if (v24 && (v25 = v103[v24], v25 <= 0x3B))
        {
          v26 = 0x3FFEFFFFFFFFFFFuLL >> v25;
        }

        else
        {
          LOBYTE(v26) = 1;
        }

        v27 = addWord(a1, v106, &v115, v117, a6 + 8, v107);
        if ((v27 & 0x80000000) != 0)
        {
          goto LABEL_72;
        }

        v28 = *(a6 + 680);
        if (((*(a3 + 184))(a4, a5, v124[0], 8, &v123) & 0x80000000) == 0 && v123 == 1)
        {
          v16 = (*(a3 + 168))(a4, a5, v124[0], 8, 1, &v108, &v120);
          if ((v16 & 0x80000000) != 0)
          {
            return v16;
          }
        }

        if (v108)
        {
          *(*(a6 + 672) + 224 * *(a6 + 680) - 8) = 2;
        }

        if ((v26 & 1) == 0)
        {
          *(*(a6 + 672) + 224 * *(a6 + 680) - 196) = 1;
        }

        v29 = (*(a3 + 184))(a4, a5, v124[0], 14, &v123);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_180;
        }

        v30 = v28 - 1;
        if (v123)
        {
          if (((*(a3 + 176))(a4, a5, v124[0], 14, &__s, &v120) & 0x80000000) == 0)
          {
            v110 = 1;
            v29 = parse_NLU_string(a6, __s, (v28 - 1), v28, &v110, a8);
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_180;
            }
          }
        }

        v29 = (*(a3 + 176))(a4, a5, v124[0], 5, &v116, &v120);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_180;
        }

        if ((a2 = v105, (v104 = v110) == 0) && (v27 = addMSPOS(a1, v30, v116, a6 + 8, v107), (v27 & 0x80000000) != 0) || (v27 = checkMSPOSForCompound(a1, v30, v116, a6 + 8, v107), (v27 & 0x80000000) != 0))
        {
LABEL_72:
          v17 = v27;
          goto LABEL_181;
        }

        v21 = v106;
      }
    }

    v22 = (*(a3 + 120))(a4, a5, v124[0], v124);
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }
  }

  expandAndValidateCompounds(a1, v107, a6 + 8);
  v22 = (*(a3 + 104))(a4, a5, 2, v124[1], v124);
  if ((v22 & 0x80000000) != 0)
  {
LABEL_60:
    v17 = v22;
    goto LABEL_61;
  }

  while (v124[0])
  {
    v22 = (*(a3 + 168))(a4, a5);
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    if (v119 == 6)
    {
      v22 = (*(a3 + 168))(a4, a5, v124[0], 1, 1, &v115, &v120);
      a2 = v105;
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      v22 = (*(a3 + 168))(a4, a5, v124[0], 2, 1, &v115 + 2, &v120);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      if (v115 > HIWORD(v115))
      {
        goto LABEL_61;
      }

      v22 = (*(a3 + 176))(a4, a5, v124[0], 4, &v118, &v120);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      v31 = v118;
      if (strcmp(v118, "_PR_"))
      {
        POSString = addToken(a1, &v115, v31, a6 + 8, v107, a8);
        if ((POSString & 0x80000000) != 0 && POSString != -1979703296)
        {
          goto LABEL_203;
        }
      }
    }

    v22 = (*(a3 + 120))(a4, a5, v124[0], v124);
    a2 = v105;
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }
  }

  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Added words from lingdb", 0);
  v17 = (*(a3 + 176))(a4, a5, v124[1], 1, &v121, &v120 + 2);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  if (!v104 && *(a6 + 568) == 1)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "USE MS - get PHR from MS tree", 0);
    v16 = (*(a3 + 176))(a4, a5, v124[1], 2, &v114, &v120);
    if ((v16 & 0x80000000) == 0)
    {
      if (!a7)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "empty symbol table for MS rules", 0);
        return 2315264000;
      }

      mosynt_StringToSyntTree(v105, a7, v114, &v113);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      POSString = printMSTree(a1, v105, a7, v113, v122, 0, (a6 + 1088), *(a6 + 1096), v101, v21, v102);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      POSString = extractFromMSTree(a6, v105, a7, v113, v122, 0, a6 + 1088, *(a6 + 1096), v101, v112, v21, v102);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      printMSNodes(a1, *(a6 + 1096), v122, v112, "START", 1);
      POSString = sortMSNodes(a6, v112);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      printMSNodes(a1, *(a6 + 1096), v122, v112, "END", 0);
      POSString = validateMSNodes(a1, v112);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      POSString = mapMSNodes2PHR(a6, v112);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      freeMSNodes(a1, v112);
      v17 = 0;
      goto LABEL_85;
    }

    return v16;
  }

LABEL_85:
  LOWORD(v35) = HIWORD(v120);
  if (!HIWORD(v120))
  {
    goto LABEL_152;
  }

  v36 = 0;
  v37 = 0;
  do
  {
    v38 = v121 + 32 * v37;
    if (*v38 == 21)
    {
      DomainFromPausingDefs = getDomainFromPausingDefs(a6 + 8, *(v38 + 24), &v111);
      v35 = HIWORD(v120);
      if (DomainFromPausingDefs == 1)
      {
        v40 = v37 + 1;
        if (HIWORD(v120) > (v37 + 1))
        {
          v41 = v121;
          v42 = v121 + 32 * v37;
          while (1)
          {
            v43 = v40;
            v44 = v41 + 32 * v40;
            if (*v44 == 21)
            {
              if (strcmp(*(v42 + 24), *(v44 + 24)))
              {
                break;
              }
            }

            v40 = v43 + 1;
            if (v35 <= (v43 + 1))
            {
              goto LABEL_94;
            }
          }

          if (*(a6 + 680))
          {
            v52 = *(v121 + 12);
            v53 = (*(v121 + 32 * v37 + 12) - v52);
            v54 = (*(v121 + 32 * v43 + 12) - v52);
            v55 = v111;
            v56 = *v107;
            v57 = *(a6 + 680) - 1;
            do
            {
              v58 = *v56;
              if (v58 >= v53 && v56[1] <= v54)
              {
                *(v56 + 13) = v55;
              }

              v59 = v58 > v54 || v57-- == 0;
              v56 += 112;
            }

            while (!v59);
          }

          v37 = v43 - (v43 + 1 != v36);
LABEL_116:
          v21 = v106;
          goto LABEL_117;
        }

LABEL_94:
        if (!*(a6 + 680))
        {
          goto LABEL_116;
        }

        v45 = (*(v121 + 32 * v37 + 12) - *(v121 + 12));
        v46 = *(v121 + 16);
        v47 = v111;
        v21 = v106;
        v48 = *v107;
        v49 = *(a6 + 680) - 1;
        do
        {
          v50 = *v48;
          if (v50 >= v45 && v48[1] <= v46)
          {
            *(v48 + 13) = v47;
          }

          v51 = v50 > v46 || v49-- == 0;
          v48 += 112;
        }

        while (!v51);
      }
    }

LABEL_117:
    v36 = ++v37;
  }

  while (v37 < v35);
  if (v35)
  {
    v60 = 0;
    v61 = v121;
    do
    {
      v62 = v60;
      if (*(v61 + 32 * v60) == 34)
      {
        ++v60;
        v63 = v61 + 32 * v62;
        if (v60 >= v35)
        {
          goto LABEL_213;
        }

        do
        {
          v64 = *(v61 + 32 * v60);
          if (v64 != 21)
          {
            ++v60;
          }
        }

        while (v60 < v35 && v64 != 21);
        if (v64 == 21)
        {
          if (*(a6 + 680))
          {
            v72 = *(v61 + 12);
            v73 = (*(v63 + 12) - v72);
            v74 = (*(v61 + 32 * v60 + 12) - v72);
            v75 = *v107;
            v76 = *(a6 + 680) - 1;
            do
            {
              v77 = *v75;
              if (v77 >= v73 && v75[1] <= v74)
              {
                *(v75 + 12) = 1;
              }

              v78 = v77 > v74 || v76-- == 0;
              v75 += 112;
            }

            while (!v78);
          }
        }

        else
        {
LABEL_213:
          if (*(a6 + 680))
          {
            v66 = (*(v63 + 12) - *(v61 + 12));
            v67 = *(v61 + 16);
            v68 = *v107;
            v69 = *(a6 + 680) - 1;
            do
            {
              v70 = *v68;
              if (v70 >= v66 && v68[1] <= v67)
              {
                *(v68 + 12) = 1;
              }

              v71 = v70 > v67 || v69-- == 0;
              v68 += 112;
            }

            while (!v71);
          }
        }
      }

      ++v60;
    }

    while (v60 < v35);
  }

LABEL_152:
  if (a8 != 1)
  {
    if (!*(a6 + 8))
    {
      heap_Free(*(a1 + 8), v21);
      return v17;
    }

    POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v101, a6 + 8, v107, "At Start", a8);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    POSString = resolvePHR(v122, a1, a6 + 8, v107, a8);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v101, a6 + 8, v107, "Initialized data", a8);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    POSString = createPOSString(a1, a6 + 8, v107);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Created POS string for retagging : %s", *(a6 + 688));
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "do retagging", 0);
    POSString = doRetagging(*(a6 + 1108), (a6 + 1088), v101, *(a6 + 1096), a1, a6 + 8, v107);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    POSString = printAsChunks(*(a6 + 1108), (a6 + 1088), v101, a6 + 8, v107);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "do subtagging", 0);
    POSString = doSubtagging(*(a6 + 1108), (a6 + 1088), v101, *(a6 + 1096), a1, a6 + 8, v107);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    v99 = *(a6 + 688);
    if (v99)
    {
      heap_Free(*(a1 + 8), v99);
      *(a6 + 688) = 0;
      heap_Free(*(a1 + 8), *(a6 + 696));
      *(a6 + 696) = 0;
    }

    POSString = createPOSString(a1, a6 + 8, v107);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "set phrase type", 0);
    POSString = setPhraseType(*(a6 + 1108), (a6 + 1088), v101, *(a6 + 1096), a1, a6 + 8, v107, v122);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    v100 = *(a6 + 688);
    if (v100)
    {
      heap_Free(*(a1 + 8), v100);
      *(a6 + 688) = 0;
      heap_Free(*(a1 + 8), *(a6 + 696));
      *(a6 + 696) = 0;
    }

    if (*(a6 + 816) || *(a6 + 760))
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "skip extending PHR containing token tags", 0);
    }

    else
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "extend PHR containing token tags", 0);
      POSString = extendPHRContainingTokenTags(a6);
      if ((POSString & 0x80000000) != 0 || (POSString = annotateTokenTypeOnEachWord(a6), (POSString & 0x80000000) != 0) || (POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v101, a6 + 8, v107, "After token tag extension", a8), (POSString & 0x80000000) != 0))
      {
LABEL_203:
        v17 = POSString;
        a2 = v105;
        goto LABEL_61;
      }
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "assign token tags", 0);
    POSString = assignTokenTags(a6);
    if ((POSString & 0x80000000) == 0)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "assign token POS", 0);
      POSString = assignTokenPOS(a6);
      if ((POSString & 0x80000000) == 0)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "creating working lists (regex domains)", 0);
        POSString = createLists(a1, a6 + 8, v107);
        if ((POSString & 0x80000000) == 0)
        {
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "get phon weights (nsyll)", 0);
          getPhonWeights(v107);
          POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v101, a6 + 8, v107, "AFTER GET PHON WEIGHTS", a8);
        }
      }
    }

    goto LABEL_203;
  }

  if (*(a6 + 680))
  {
    v79 = 0;
    v80 = 168;
    v81 = -1;
    do
    {
      v82 = *v107;
      v83 = *(*v107 + v80 + 8);
      if (!v83 || (v84 = strcmp(v83, "COMP]"), v80 != 168) && !v84 && (v85 = v82 + 224 * v81, (v86 = *(v85 + 176)) != 0) && !strcmp(*(v85 + 176), "COMP]") && (heap_Free(*(a1 + 8), v86), v87 = *v107 + 224 * v81, *(v87 + 176) = 0, setNNPausingDefault(a1, (v87 + 176), "-"), v82 = *v107, !*(*v107 + v80 + 8)))
      {
        setNNPausingDefault(a1, (v82 + v80 + 8), "-");
        v82 = *v107;
      }

      if (!*(v82 + v80))
      {
        setNNPausingDefault(a1, (v82 + v80), "-");
        v82 = *v107;
      }

      LODWORD(__s) = 0;
      StartOfOrthPunc = getStartOfOrthPunc(*(*(v82 + v80 - 152) + 8 * *(a6 + 24)), &__s);
      if (__s == 1)
      {
        v89 = StartOfOrthPunc;
        v90 = strlen((*(*(*(a6 + 672) + v80 - 152) + 8 * *(a6 + 24)) + StartOfOrthPunc));
        v91 = heap_Calloc(*(a1 + 8), 1, (v90 + 1));
        v92 = *(a6 + 672) + v80;
        *(v92 + 40) = v91;
        if (!v91)
        {
          goto LABEL_205;
        }

        strcpy(v91, (*(*(v92 - 152) + 8 * *(a6 + 24)) + v89));
      }

      else
      {
        v93 = heap_Calloc(*(a1 + 8), 1, 2);
        *(*v107 + v80 + 40) = v93;
        if (!v93)
        {
LABEL_205:
          log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
          return 2315264010;
        }

        *v93 = 88;
      }

      v94 = *v107;
      v95 = *v107 + v80;
      v97 = *(v95 + 16);
      v96 = (v95 + 16);
      if (!v97)
      {
        setNNPausingDefault(a1, v96, "X");
        v94 = *v107;
      }

      if (!*(v94 + v80 + 24))
      {
        setNNPausingDefault(a1, (v94 + v80 + 24), "X");
        v94 = *v107;
      }

      if (!*(v94 + v80 + 32))
      {
        setNNPausingDefault(a1, (v94 + v80 + 32), "X");
      }

      ++v79;
      v80 += 224;
      ++v81;
    }

    while (v79 < *(a6 + 680));
  }

  v29 = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v101, a6 + 8, v107, "At Start of NN Phrasing", 1);
  if ((v29 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), v106);
    return 0;
  }

LABEL_180:
  v17 = v29;
  a2 = v105;
LABEL_181:
  v21 = v106;
LABEL_61:
  if (*(a6 + 568) == 1)
  {
    freeMSNodes(a1, v112);
  }

  if (v21)
  {
    heap_Free(*(a1 + 8), v21);
  }

  if (v113)
  {
    v33 = mosyntdata_DisposeSyntTree(a2, &v113);
    if (v17 >= 0 && v33 <= -1)
    {
      return v33;
    }

    else
    {
      return v17;
    }
  }

  return v17;
}

uint64_t parse_NLU_string(uint64_t *a1, char *__s, unsigned int a3, int a4, _DWORD *a5, int a6)
{
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v12 = *(*a1 + 8);
  v13 = strlen(__s);
  v14 = heap_Calloc(v12, 1, (v13 + 1));
  if (v14)
  {
    v15 = v14;
    v59 = a6;
    __sa = __s;
    v16 = strcpy(v14, __s);
    for (i = &v15[strlen(v16) - 1]; i >= v15; --i)
    {
      v18 = *i;
      v19 = v18 > 0x3B;
      v20 = (1 << v18) & 0x800000100002600;
      if (v19 || v20 == 0)
      {
        break;
      }

      *i = 0;
    }

    v57 = a5;
    v22 = 0;
    v68 = 0;
    v66 = 0;
    v67 = 0uLL;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0uLL;
    v23 = 0;
    v60 = a4;
    v58 = a4 - 1;
    v24 = v15;
    while (1)
    {
      v25 = strchr(v24, 59);
      v26 = v25;
      if (v25)
      {
        *v25 = 0;
      }

      v27 = strchr(v24, 58);
      v28 = v27;
      if (v27)
      {
        *v27 = 0;
        v29 = v27 + 1;
      }

      else
      {
        v29 = "null";
      }

      if (!strcmp(v24, "POS"))
      {
        inserted = 0;
        v23 = v29;
        goto LABEL_35;
      }

      if (!strcmp(v24, "PHR"))
      {
        inserted = 0;
        v22 = v29;
        goto LABEL_35;
      }

      if (!strcmp(v24, "BND"))
      {
        inserted = 0;
        v68 = v29;
        goto LABEL_35;
      }

      if (!strcmp(v24, "BNDSHAPE"))
      {
        inserted = 0;
        v66 = v29;
        goto LABEL_35;
      }

      if (!strcmp(v24, "S_POI"))
      {
        inserted = 0;
        v32 = "B";
LABEL_34:
        *(&v67 + 1) = v32;
        *&v67 = v29;
        goto LABEL_35;
      }

      if (!strcmp(v24, "I_POI"))
      {
        inserted = 0;
        v32 = "I";
        goto LABEL_34;
      }

      if (!strcmp(v24, "E_POI"))
      {
        inserted = 0;
        v32 = "S";
        if (!*(&v67 + 1))
        {
          v32 = "E";
        }

        goto LABEL_34;
      }

      if (!strcmp(v24, "PRM"))
      {
        inserted = 0;
        v65 = v29;
        goto LABEL_35;
      }

      v30 = *(a1 + 166);
      if (v30 == 1)
      {
        if (!strcmp(v24 + 1, "_COMP"))
        {
          v33 = strlen(v29);
          v34 = heap_Calloc(*(*a1 + 8), 1, (v33 + 3));
          if (!v34)
          {
            goto LABEL_92;
          }

          v35 = v34;
          v36 = strcmp(v24, "S_COMP");
          v37 = "I-";
          if (!v36)
          {
            v37 = "B-";
          }

          *v35 = *v37;
          v35[2] = v37[2];
          strcat(v35, v29);
          v38 = v35;
          inserted = 0;
          *(&v64 + 1) = v38;
          v63 = v38;
          goto LABEL_35;
        }
      }

      else if (!v30 && !strcmp(v24, "COMP"))
      {
        inserted = 0;
        *(&v64 + 1) = v29;
        goto LABEL_35;
      }

      if (!v28 || v28 <= v24 + 1)
      {
LABEL_46:
        inserted = addMarkerType(*a1, v24, v29, a3, v58, (a1 + 1), a1 + 84);
        goto LABEL_35;
      }

      if (!strcmp(v24 + 1, "_CLASS"))
      {
        inserted = 0;
        v62 = v29;
        goto LABEL_35;
      }

      if (v59 != 1 || strcmp(v24, "PUNC"))
      {
        break;
      }

      if (!v64)
      {
        v41 = strlen(__sa);
        v42 = heap_Calloc(*(*a1 + 8), 1, (v41 + 4));
        if (!v42)
        {
          goto LABEL_92;
        }

        v43 = v42;
        strcpy(v42, "X_");
        v44 = strcat(v42, v24);
        *&v43[strlen(v44)] = 58;
        *&v64 = v43;
        strcat(v43, v29);
LABEL_56:
        inserted = 0;
        goto LABEL_35;
      }

      inserted = 0;
LABEL_35:
      if (v26)
      {
        v24 = v26 + 1;
        if ((inserted & 0x80000000) == 0)
        {
          continue;
        }
      }

      v45 = *(&v64 + 1);
      v72 = v64;
      v46 = v62;
      v48 = v65;
      v47 = v66;
      *&v71 = v65;
      *(&v71 + 1) = v62;
      v49 = v67;
      v50 = v68;
      v73 = v67;
      *&v70 = v68;
      *(&v70 + 1) = v66;
      *&v69 = v23;
      *(&v69 + 1) = v22;
      v51 = "(null)";
      if (v23)
      {
        v52 = v23;
      }

      else
      {
        v52 = "(null)";
      }

      if (v22)
      {
        v53 = v22;
      }

      else
      {
        v53 = "(null)";
      }

      if (!v68)
      {
        v50 = "(null)";
      }

      if (!v66)
      {
        v47 = "(null)";
      }

      if (!v65)
      {
        v48 = "(null)";
      }

      if (!v62)
      {
        v46 = "(null)";
      }

      if (v64)
      {
        v54 = v64;
      }

      else
      {
        v54 = "(null)";
      }

      if (!*(&v64 + 1))
      {
        v45 = "(null)";
      }

      if (!v67)
      {
        v49 = "(null)";
      }

      if (*(&v67 + 1))
      {
        v51 = *(&v67 + 1);
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "parsed NLU %s[%d,%d] -> POS=%s, PHR=%s, BND=%s, BNDSHAPE=%s, PRM=%s, CLASS=%s, PUNC=%s, COMP=%s, POIClass=%s, POIPosi=%s", __sa, a3, v60, v52, v53, v50, v47, v48, v46, v54, v45, v49, v51);
      if ((inserted & 0x80000000) == 0)
      {
        if (!v23)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "missing POS in NLU string: arg=%s", v15);
          *v57 = 0;
        }

        inserted = insert_NLU_info(*a1, a3, v60, &v69, (a1 + 1), a1 + 84, v59);
      }

      heap_Free(*(*a1 + 8), v15);
      if (v64)
      {
        heap_Free(*(*a1 + 8), v64);
      }

      if (v63)
      {
        heap_Free(*(*a1 + 8), v63);
      }

      return inserted;
    }

    if (strcmp(v24 + 1, "_PUNC"))
    {
      goto LABEL_46;
    }

    v39 = v64;
    if (!v64)
    {
      v40 = strlen(__sa);
      v39 = heap_Calloc(*(*a1 + 8), 1, (v40 + 1));
      if (!v39)
      {
        inserted = 2315264010;
        v55 = *a1;
        goto LABEL_93;
      }

      *v39 = 0;
    }

    *v28 = 58;
    *&v64 = v39;
    hlp_NLUStrJoin(v39, v24);
    goto LABEL_56;
  }

LABEL_92:
  inserted = 2315264010;
  v55 = *a1;
LABEL_93:
  log_OutPublic(*(v55 + 32), "FE_PHRASING", 37000, 0);
  return inserted;
}

double freeSentenceData(uint64_t a1)
{
  v2 = *(a1 + 1088);
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    *(a1 + 1088) = 0;
    *(a1 + 1104) = 0;
  }

  v3 = *(a1 + 1096);
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
    *(a1 + 1096) = 0;
  }

  v4 = *(a1 + 672);
  if (*(a1 + 680))
  {
    v5 = 0;
    do
    {
      if (*(v4 + 224 * v5 + 80))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 80));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 80) = 0;
      }

      if (*(v4 + 224 * v5 + 112))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 112));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 112) = 0;
      }

      if (*(v4 + 224 * v5 + 120))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 120));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 120) = 0;
      }

      if (*(v4 + 224 * v5 + 152))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 152));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 152) = 0;
      }

      if (*(v4 + 224 * v5 + 160))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 160));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 160) = 0;
      }

      if (*(v4 + 224 * v5 + 184))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 184));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 184) = 0;
      }

      if (*(v4 + 224 * v5 + 192))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 192));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 192) = 0;
      }

      if (*(v4 + 224 * v5 + 200))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 200));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 200) = 0;
      }

      if (*(v4 + 224 * v5 + 208))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 208));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 208) = 0;
      }

      if (*(v4 + 224 * v5 + 168))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 168));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 168) = 0;
      }

      if (*(v4 + 224 * v5 + 88))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 88));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 88) = 0;
      }

      v6 = *(v4 + 224 * v5 + 16);
      if (v6)
      {
        v7 = *(a1 + 80);
        if (v7)
        {
          for (i = 0; i < v7; ++i)
          {
            v6 = *(v4 + 224 * v5 + 16);
            v9 = *(v6 + 8 * i);
            if (v9)
            {
              heap_Free(*(*a1 + 8), v9);
              v4 = *(a1 + 672);
              v6 = *(v4 + 224 * v5 + 16);
              *(v6 + 8 * i) = 0;
              v7 = *(a1 + 80);
            }
          }
        }

        heap_Free(*(*a1 + 8), v6);
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 16) = 0;
      }

      v10 = *(v4 + 224 * v5 + 56);
      if (v10)
      {
        v11 = *(a1 + 80);
        if (v11)
        {
          v12 = 0;
          v13 = 16;
          do
          {
            v10 = *(v4 + 224 * v5 + 56);
            v14 = *(v10 + v13);
            if (v14)
            {
              heap_Free(*(*a1 + 8), v14);
              v4 = *(a1 + 672);
              v10 = *(v4 + 224 * v5 + 56);
              *(v10 + v13) = 0;
              v11 = *(a1 + 80);
            }

            ++v12;
            v13 += 32;
          }

          while (v12 < v11);
        }

        heap_Free(*(*a1 + 8), v10);
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 56) = 0;
      }

      v15 = *(v4 + 224 * v5 + 64);
      if (v15)
      {
        v16 = *(a1 + 80);
        if (v16)
        {
          for (j = 0; j < v16; ++j)
          {
            v15 = *(v4 + 224 * v5 + 64);
            v18 = *(v15 + 8 * j);
            if (v18)
            {
              heap_Free(*(*a1 + 8), v18);
              v4 = *(a1 + 672);
              v15 = *(v4 + 224 * v5 + 64);
              *(v15 + 8 * j) = 0;
              v16 = *(a1 + 80);
            }
          }
        }

        heap_Free(*(*a1 + 8), v15);
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 64) = 0;
      }

      if (*(v4 + 224 * v5 + 8))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 8));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 8) = 0;
      }

      if (*(v4 + 224 * v5 + 96))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 96));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 96) = 0;
      }

      if (*(v4 + 224 * v5 + 176))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 176));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 176) = 0;
      }

      if (*(v4 + 224 * v5 + 128))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 128));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 128) = 0;
      }

      ++v5;
    }

    while (v5 < *(a1 + 680));
  }

  else if (!v4)
  {
    goto LABEL_62;
  }

  heap_Free(*(*a1 + 8), v4);
  *(a1 + 672) = 0;
LABEL_62:
  v19 = *(a1 + 688);
  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
    *(a1 + 688) = 0;
  }

  v20 = *(a1 + 696);
  if (v20)
  {
    heap_Free(*(*a1 + 8), v20);
    *(a1 + 696) = 0;
  }

  v21 = *(a1 + 712);
  if (v21)
  {
    heap_Free(*(*a1 + 8), v21);
  }

  result = 0.0;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 672) = 0u;
  return result;
}

uint64_t updateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v19 = 0;
  *__dst = 0u;
  v34 = 0u;
  PhraseStartingAtThisWord = (*(a1 + 104))(a2, a3, 1, 0, &v29 + 2);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
    return PhraseStartingAtThisWord;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v29), 0, &v30);
  if ((v9 & 0x80000000) == 0 && v30 == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, HIWORD(v29), 0, &v20, &v28);
    if ((v9 & 0x80000000) == 0 && v28 >= 2u)
    {
      v9 = (*(a1 + 104))(a2, a3, 2, HIWORD(v29), &v29);
      if ((v9 & 0x80000000) == 0)
      {
        v21 = 0;
        __s[0] = 0;
        LOBYTE(v35[0]) = 0;
        **(a4 + 1088) = 0;
        for (i = v29; v29; i = v29)
        {
          PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, i, 0, 1, &v26, &v28);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          if (v26 <= 0xA && ((1 << v26) & 0x610) != 0)
          {
            PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v29, 1, 1, &v23, &v28);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v29, 2, 1, &v23 + 2, &v28);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, v29, 3, &v25, &v28);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            if (v23 != HIWORD(v23))
            {
              PhraseStartingAtThisWord = getPhraseStartingAtThisWord((a4 + 672), a4 + 8, v23, &v22 + 1, __s, &v24, &v21 + 1, &v21);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }

              if (__s[0])
              {
                __strcpy_chk();
                LOWORD(v22) = 0;
                if (HIWORD(v22) <= 1u)
                {
                  if (HIWORD(v21))
                  {
                    setSilDurOnWord(a4 + 672, (a4 + 8), (HIWORD(v21) - 1), &v22);
                  }

                  else
                  {
                    LOWORD(v22) = 200;
                  }
                }

                PhraseStartingAtThisWord = (*(a1 + 88))(a2, a3, v29, &v28 + 2);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                v26 = 15;
                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v28), 0, 1, &v26, &v27);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v28), 1, 1, &v23, &v27);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v28), 2, 1, &v24, &v27);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                v12 = strlen(__s);
                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v28), 4, (v12 + 1), __s, &v27);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v28), 7, 1, &v22 + 2, &v27);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v28), 8, 1, &v22, &v27);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }
              }

              v13 = HIWORD(v21);
              setSilDurOnWord(a4 + 672, (a4 + 8), HIWORD(v21), &v22);
              PhraseStartingAtThisWord = checkForExternalSildur(a1, a2, a3, v29, &v19);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }

              if (!v19)
              {
                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v29, 8, 1, &v22, &v27);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }
              }

              v14 = *(*(a4 + 672) + 224 * v13 + 72);
              get_phr_for_nlu_output(a4, v13, __dst);
              get_pos_for_nlu_output(a4, v13, v32);
              PhraseStartingAtThisWord = updateNLUField(a1, a2, a3, v29, a4, v13, v32, __dst, *(*(a4 + 672) + 224 * v13 + 96), *(*(a4 + 672) + 224 * v13 + 112));
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }

              log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", v29, v13, v14, v22);
              LH_itoa(v14, v31, 0xAu);
              v15 = strlen(v31);
              PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v29, 13, (v15 + 1), v31, &v27);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }
            }
          }

          v9 = (*(a1 + 120))(a2, a3, v29, &v29);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }
        }

        **(a4 + 1088) = 0;
        if (v35[0] != 89)
        {
          v16 = v20;
          v17 = strrchr(v20, 63);
          if (v17)
          {
            if (v17 != v16 && *(v17 - 1) != 32)
            {
              *v17 = 46;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t getPhraseStartingAtThisWord(uint64_t *a1, uint64_t a2, int a3, unsigned __int16 *a4, char *__dst, unsigned __int16 *a6, unsigned __int16 *a7, unsigned __int16 *a8)
{
  *a4 = 0;
  if (!*(a1 + 4))
  {
LABEL_5:
    v19 = 2315264000;
    if (a2)
    {
      log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "cant align lingdb word : no word found with fromPos=%d", a3);
    }

    return v19;
  }

  v16 = 0;
  v17 = *a1;
  v18 = (*a1 + 73);
  while (*(v17 + 224 * v16) != a3)
  {
    ++v16;
    v18 += 224;
    if (v16 >= *(a1 + 4))
    {
      goto LABEL_5;
    }
  }

  v20 = *a8;
  *a7 = v16;
  if (v16 | v20)
  {
    v21 = v16 > v20;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v19 = 0;
    *__dst = 0;
    return v19;
  }

  v22 = *(a1 + 4);
  v23 = v16;
  if (v16 < v22)
  {
    LOWORD(v23) = v16;
    while (1)
    {
      v24 = *v18;
      v18 += 224;
      if ((v24 - 5) > 0xFFFFFFFD)
      {
        break;
      }

      LOWORD(v23) = v23 + 1;
      if (v22 == v23)
      {
        goto LABEL_19;
      }
    }

    v23 = v23;
  }

  if (v23 == v22)
  {
LABEL_19:
    *a6 = *(v17 + 224 * *(a1 + 4) - 222);
    *a8 = *(a1 + 4);
  }

  else
  {
    *a8 = v23;
    *a6 = *(v17 + 224 * v23 + 2);
    if (v23 + 1 != *(a1 + 4))
    {
      *a6 = *(v17 + 224 * (v23 + 1));
      v26 = 80;
      goto LABEL_25;
    }
  }

  v25 = a1[5];
  if (!v25)
  {
    v26 = 84;
LABEL_25:
    *__dst = v26;
    goto LABEL_26;
  }

  strcpy(__dst, v25);
LABEL_26:
  v27 = *a7;
  if (*a7)
  {
    *a4 = 1;
    if (*(*a1 + 224 * *a7 - 151) == 3)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }
  }

  *a4 = v27;
  if (a2)
  {
    log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "Phrase lingdb=%d,%d PHRTYPE=%s BNDTYPE=%d internal word %d,%d", a3, *a6, __dst, v27, v16, *a8);
  }

  return 0;
}

size_t setSilDurOnWord(size_t result, void *a2, int a3, _WORD *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  *a4 = 0;
  v6 = *(result + 8);
  v7 = *result;
  if (a3 + 1 < v6 && *(v7 + 224 * (a3 + 1) + 220) == 1)
  {
    do
    {
      LOWORD(a3) = a3 + 1;
      v8 = a3;
      v9 = a3 + 1;
    }

    while (v9 < v6 && *(v7 + 224 * v9 + 220) == 1);
  }

  else
  {
    v8 = a3;
  }

  v10 = v7 + 224 * a3;
  v11 = v6 - 1;
  if (*(v10 + 73) == 4 && v11 != v8)
  {
    v13 = (a2[6] + 8 * *(v10 + 52));
    *a4 = *(v13 + 2);
    strcpy(__s, "tnpausedur");
    v14 = strlen((a2[66] + *(a2[67] + 4 * *v13)));
    result = strlen(__s);
    if (v14 < 255 - result)
    {
      __strcat_chk();
      result = paramc_ParamGetUInt(*(*a2 + 40), __s, &v15);
      if ((result & 0x80000000) == 0)
      {
        *a4 = v15;
      }
    }
  }

  return result;
}

size_t get_phr_for_nlu_output(size_t result, unsigned int a2, char *__dst)
{
  v4 = *(*(result + 672) + 224 * a2 + 56);
  if (v4 && (v5 = result, (v6 = *(v4 + 32 * *(result + 32) + 16)) != 0))
  {
    if (*v6 == 79 && !*(v6 + 1) || !strcmp(v6, "O-P"))
    {
      strcpy(__dst, v6);
    }

    else
    {
      strcpy(__dst, "B-");
      strcat(__dst, *(*(*(v5 + 672) + 224 * a2 + 56) + 32 * *(v5 + 32) + 16));
    }

    result = strlen(__dst);
    if (result >= 2)
    {
      v8 = &__dst[result];
      if (__dst[result - 2] == 45 && *(v8 - 1) == 80 && !*v8)
      {
        *(v8 - 2) = 0;
      }
    }
  }

  else if (*__dst && (*__dst != 79 || __dst[1]))
  {
    *__dst = 73;
  }

  return result;
}

char *get_pos_for_nlu_output(uint64_t a1, unsigned int a2, char *__dst)
{
  v3 = *(a1 + 672) + 224 * a2;
  v4 = *(v3 + 88);
  if (!v4)
  {
    v4 = *(*(v3 + 16) + 8 * *(a1 + 26));
  }

  return strcpy(__dst, v4);
}

uint64_t updateNLUField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *a7, char *a8, char *a9, char *a10)
{
  v29 = 0;
  v28 = 0;
  __s = 0;
  result = (*(a1 + 184))(a2, a3, a4, 14, &v29 + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!HIWORD(v29))
  {
    v25 = a6;
LABEL_7:
    v19 = "";
    __s = "";
    goto LABEL_8;
  }

  result = (*(a1 + 176))(a2, a3, a4, 14, &__s, &v29);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v25 = a6;
  if (v29 < 2u)
  {
    goto LABEL_7;
  }

  v19 = __s;
LABEL_8:
  v26 = a3;
  v20 = strlen(v19);
  if (a7)
  {
    v21 = v20 + strlen(a7) + 6;
  }

  else
  {
    v21 = v20 + 1;
  }

  if (a8)
  {
    v21 += strlen(a8) + 5;
  }

  if (a9 && !*(a5 + 664))
  {
    v21 += strlen(a9) + 6;
  }

  if (a10)
  {
    v21 += strlen(a10) + 10;
  }

  if (v21 <= *(a5 + 1104))
  {
    v22 = *(a5 + 1088);
  }

  else
  {
    v22 = heap_Realloc(*(*a5 + 8), *(a5 + 1088), v21);
    if (!v22)
    {
      log_OutPublic(*(*a5 + 32), "FE_PHRASING", 37000, 0);
      return 2315264010;
    }

    *(a5 + 1088) = v22;
    *(a5 + 1104) = v21;
    v19 = __s;
  }

  strcpy(v22, v19);
  if (a7 && *a7)
  {
    hlp_NLUStrSet(*(a5 + 1088), "POS", a7);
  }

  if (a8 && *a8)
  {
    hlp_NLUStrSet(*(a5 + 1088), "PHR", a8);
  }

  if (a9 && !*(a5 + 664) && *a9)
  {
    hlp_NLUStrSet(*(a5 + 1088), "COMP", a9);
  }

  if (a10)
  {
    if (*a10)
    {
      hlp_NLUStrSet(*(a5 + 1088), "BNDSHAPE", a10);
    }
  }

  log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", a4, v25, __s, *(a5 + 1088));
  v23 = *(a5 + 1088);
  v24 = strlen(v23);
  return (*(a1 + 160))(a2, v26, a4, 14, (v24 + 1), v23, &v28);
}

uint64_t updateLingdbCrfPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v19 = 0;
  *__dst = 0u;
  v36 = 0u;
  PhraseStartingAtThisWord = (*(a1 + 104))(a2, a3, 1, 0, &v31 + 2);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
    return PhraseStartingAtThisWord;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v31), 0, &v32);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (v32 != 1)
  {
    return v9;
  }

  v9 = (*(a1 + 176))(a2, a3, HIWORD(v31), 0, &v22, &v30);
  if ((v9 & 0x80000000) != 0 || v30 < 2u)
  {
    return v9;
  }

  PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, HIWORD(v31), 1, &v21, &v20);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
    return PhraseStartingAtThisWord;
  }

  v9 = (*(a1 + 104))(a2, a3, 2, HIWORD(v31), &v31);
  if ((v9 & 0x80000000) == 0)
  {
    v23 = 0;
    __s[0] = 0;
    **(a4 + 1088) = 0;
    for (i = v31; v31; i = v31)
    {
      PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, i, 0, 1, &v28, &v30);
      if ((PhraseStartingAtThisWord & 0x80000000) != 0)
      {
        return PhraseStartingAtThisWord;
      }

      if (v28 <= 0xA && ((1 << v28) & 0x610) != 0)
      {
        PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v31, 1, 1, &v25, &v30);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          return PhraseStartingAtThisWord;
        }

        PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v31, 2, 1, &v25 + 2, &v30);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          return PhraseStartingAtThisWord;
        }

        PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, v31, 3, &v27, &v30);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          return PhraseStartingAtThisWord;
        }

        if (v25 != HIWORD(v25))
        {
          PhraseStartingAtThisWord = getPhraseStartingAtThisWord((a4 + 672), 0, v25, &v24 + 1, __s, &v26, &v23 + 1, &v23);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          if (__s[0])
          {
            LOWORD(v24) = 0;
            if (HIWORD(v24) <= 1u)
            {
              if (HIWORD(v23))
              {
                setSilDurOnWordCrf(a4 + 672, a4 + 8, (HIWORD(v23) - 1), &v24);
              }

              else
              {
                LOWORD(v24) = 200;
              }
            }

            PhraseStartingAtThisWord = (*(a1 + 88))(a2, a3, v31, &v30 + 2);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            v28 = 15;
            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v30), 0, 1, &v28, &v29);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v30), 1, 1, &v25, &v29);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v30), 2, 1, &v26, &v29);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            v12 = strlen(__s);
            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v30), 4, (v12 + 1), __s, &v29);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v30), 7, 1, &v24 + 2, &v29);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v30), 8, 1, &v24, &v29);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }
          }

          v13 = HIWORD(v23);
          setSilDurOnWordCrf(a4 + 672, a4 + 8, HIWORD(v23), &v24);
          PhraseStartingAtThisWord = checkForExternalSildur(a1, a2, a3, v31, &v19);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          if (!v19)
          {
            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v31, 8, 1, &v24, &v29);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }
          }

          v14 = *(*(a4 + 672) + 224 * v13 + 72);
          get_phr_for_nlu_output(a4, v13, __dst);
          get_pos_for_nlu_output(a4, v13, v34);
          PhraseStartingAtThisWord = updateNLUField(a1, a2, a3, v31, a4, v13, v34, __dst, *(*(a4 + 672) + 224 * v13 + 96), *(*(a4 + 672) + 224 * v13 + 112));
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", v31, v13, v14, v24);
          LH_itoa(v14, v33, 0xAu);
          v15 = strlen(v33);
          PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v31, 13, (v15 + 1), v33, &v29);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }
        }
      }

      v9 = (*(a1 + 120))(a2, a3, v31, &v31);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }
    }

    **(a4 + 1088) = 0;
    if (*__s == 87 || !(*__s ^ 0x4641 | v38))
    {
      v16 = v22;
      v17 = strrchr(v22, 63);
      if (v17 && v17 != v16 && *(v17 - 1) != 32)
      {
        *v17 = 46;
      }
    }
  }

  return v9;
}

size_t setSilDurOnWordCrf(size_t result, uint64_t a2, int a3, __int16 *a4)
{
  v6 = result;
  if (a2)
  {
    result = log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "the parameter %s is ready", "pandpRules");
  }

  *a4 = 0;
  v7 = *(v6 + 8);
  v8 = *v6;
  if (a3 + 1 < v7 && *(v8 + 224 * (a3 + 1) + 220) == 1)
  {
    do
    {
      LOWORD(a3) = a3 + 1;
      v9 = a3;
      v10 = a3 + 1;
    }

    while (v10 < v7 && *(v8 + 224 * v10 + 220) == 1);
  }

  else
  {
    v9 = a3;
  }

  v11 = v8 + 224 * a3;
  v12 = v7 - 1;
  if (*(v11 + 73) == 4 && v12 != v9)
  {
    v14 = **(v11 + 16);
    result = strlen(v14);
    v15 = result;
    *a4 = 100;
    if (v14 && (result = strlen(v14)) != 0 && ((v16 = v14[result - 1], v17 = v16 > 0x3B, v18 = (1 << v16) & 0xC00100000000000, !v17) ? (v19 = v18 == 0) : (v19 = 1), !v19))
    {
      v20 = 300;
    }

    else
    {
      if (v14[v15 - 1] != 46)
      {
        return result;
      }

      v20 = 600;
    }

    *a4 = v20;
  }

  return result;
}

uint64_t heapAdjustDown(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (2 * a2) | 1;
  if (v3 < a3)
  {
    v4 = *(result + 8 * a2);
    v5 = 2 * a2;
    v6 = a2;
    do
    {
      if (v3 < a3 - 1)
      {
        v7 = v5 + 2;
        if (*(*(result + 8 * v3) + 2) < *(*(result + 8 * v7) + 2))
        {
          v3 = v7;
        }
      }

      v8 = *(result + 8 * v3);
      if (*(*(result + 8 * v6) + 2) >= *(v8 + 2))
      {
        break;
      }

      *(result + 8 * v6) = v8;
      *(result + 8 * v3) = v4;
      v6 = v3;
      v5 = 2 * v3;
      v3 = v5 | 1;
    }

    while ((v5 | 1u) < a3);
  }

  return result;
}

uint64_t heapPop(uint64_t **a1)
{
  v1 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    return 0;
  }

  if (v1 == 2)
  {
    result = **a1;
    **a1 = (*a1)[1];
    *(a1 + 4) = 1;
  }

  else if (v1 == 1)
  {
    *(a1 + 4) = 0;
    return **a1;
  }

  else
  {
    v4 = **a1;
    **a1 = (*a1)[(v1 - 1)];
    (*a1)[v1 - 1] = v4;
    heapAdjustDown(*a1, 0, (v1 - 1));
    v5 = *(a1 + 4) - 1;
    *(a1 + 4) = v5;
    return (*a1)[v5];
  }

  return result;
}

uint64_t heapAdd(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(*result + 8 * *(result + 8)) = a2;
  *(result + 8) = v2 + 1;
  if (v2)
  {
    v3 = v2 == 0xFFFF;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = result;
    v5 = (v2 + 1) >> 1;
    do
    {
      v6 = v5--;
      result = heapAdjustDown(*v4, v5, *(v4 + 8));
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t astar_search(uint64_t a1, uint64_t *a2, __int16 a3, uint64_t a4, unsigned __int16 *a5, uint64_t *a6)
{
  v8 = a4;
  v12 = *(a1 + 8);
  v13 = a5[1] + 2;
  if (a5[1] == 0xFFFE)
  {
    v18 = 16;
  }

  else
  {
    v14 = 2;
    v15 = 1;
    do
    {
      v16 = v13;
      if (v13)
      {
        v17 = v14;
      }

      else
      {
        v17 = 1;
      }

      v15 *= v17;
      v13 >>= 1;
      v14 *= v14;
    }

    while (v16 > 1);
    v18 = 16 * v15;
  }

  v19 = 2315264010;
  v20 = heap_Alloc(v12, v18);
  if (v20)
  {
    v21 = v20;
    v22 = a5[1] + 2;
    if (a5[1] == 0xFFFE)
    {
      v27 = 8;
    }

    else
    {
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = v22;
        if (v22)
        {
          v26 = v23;
        }

        else
        {
          v26 = 1;
        }

        v24 *= v26;
        v22 >>= 1;
        v23 *= v23;
      }

      while (v25 > 1);
      v27 = 8 * v24;
    }

    v28 = heap_Alloc(*(a1 + 8), v27);
    v41 = v28;
    if (!v28)
    {
      goto LABEL_36;
    }

    v29 = 0;
    v42 = 0;
    *v21 = 0xFFFF;
    *(v21 + 4) = a3 - 1;
    *(v21 + 6) = 0;
    *(v21 + 12) = 0;
    *(v21 + 14) = *a5;
    *(v21 + 8) = 0;
    *v28 = v21;
    v30 = 1;
    LOWORD(v42) = 1;
    do
    {
      v31 = heapPop(&v41);
      v32 = v31;
      if (*(v31 + 4) == v8 && (!v29 || *(v31 + 2) > *(v29 + 2)))
      {
        v29 = v31;
      }

      v33 = 0;
      v34 = 1;
      do
      {
        v35 = v34;
        if (generateNewState(a1, v32, v21 + 16 * v30, v33, a2, v8, a5, a6))
        {
          *(v21 + 16 * v30 + 6) = v30;
          heapAdd(&v41, v21 + 16 * v30++);
        }

        v34 = 0;
        v33 = 1;
      }

      while ((v35 & 1) != 0);
    }

    while (v42);
    if (v29 && *(v29 + 6) >= 1)
    {
      v36 = *(v29 + 6);
      do
      {
        v37 = (v21 + 16 * v36);
        if (!*(v37 + 2))
        {
          *(*a2 + 224 * v37[2] + 73) = 4;
        }

        v38 = *v37;
        v36 = *v37;
      }

      while (v38 > 0);
    }

    v39 = v41;
    heap_Free(*(a1 + 8), v21);
    v19 = 0;
    v21 = v39;
    if (v39)
    {
LABEL_36:
      heap_Free(*(a1 + 8), v21);
    }
  }

  return v19;
}

_WORD *generateNewState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, unsigned __int16 *a7, uint64_t *a8)
{
  *a3 = *(a2 + 6);
  *(a3 + 8) = a4;
  v8 = *(a2 + 4) + 1;
  *(a3 + 4) = v8;
  if (a6 >= v8)
  {
    v13 = a4;
    v9 = a3;
    v16 = 0;
    v17 = *a5;
    do
    {
      v18 = **(v17 + 224 * v8 + 16);
      v19 = strlen(v18);
      v16 += Utf8_LengthInUtf8chars(v18, v19);
      v17 = *a5;
      v20 = v9[2];
      if (*(*a5 + 224 * v9[2] + 73) == 3)
      {
        break;
      }

      v8 = v20 + 1;
      v9[2] = v20 + 1;
      v20 = (v20 + 1);
    }

    while (v20 <= a6);
    if (v20 > a6)
    {
      v9[2] = a6;
    }

    v9[7] = *(a2 + 14) - v16;
    v21 = *(a2 + 2);
    v9[1] = calculateScore(a1, v13, v9, (*(a2 + 12) + v16), *a7, *(a2 + 8), a8, a5) + v21;
    if (v13)
    {
      if (v13 != 1)
      {
        return v9;
      }

      v22 = *(a2 + 12) + v16;
    }

    else
    {
      v22 = 0;
    }

    v9[6] = v22;
    return v9;
  }

  return 0;
}

uint64_t calculateScore(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, uint64_t *a7, uint64_t a8)
{
  if (a2 == 1 && a4 < 6)
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  if (a2 == 0 && a4 > 7)
  {
    v10 += 5;
  }

  v11 = *(a3 + 14);
  if (a2 == 1 && v11 < 6)
  {
    v10 += 10;
  }

  if (a2 == 0 && 1000 * v11 / a5 - 400 < 0xC9)
  {
    v12 = v10 + 5;
  }

  else
  {
    v12 = v10;
  }

  if (a2 == 1 && applyRules(a1, a8, *(a3 + 4), a7) == 1)
  {
    v12 += 20;
  }

  if (a6 | a2)
  {
    return v12;
  }

  else
  {
    return (v12 - 10);
  }
}

uint64_t fe_phrasing_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  stress_models = 2315264010;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  v30 = -1;
  v29 = 0;
  if (!a5)
  {
    return 2315264007;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v37);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v36);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(v37[1], 1, 1728);
      v13 = v37;
      if (!v12 || (v14 = v12, v15 = heap_Calloc(v37[1], 1, 1040), *(v14 + 48) = v15, v13 = v37, !v15))
      {
        log_OutPublic(v13[4], "FE_PHRASING", 37000, 0);
        goto LABEL_46;
      }

      *v14 = v37;
      *(v14 + 8) = a3;
      v16 = v36;
      *(v14 + 16) = a4;
      *(v14 + 24) = v16;
      *(v14 + 32) = a1;
      *(v14 + 40) = a2;
      *v15 = a3;
      v15[1] = a4;
      *(*(v14 + 48) + 1020) = 0;
      *(v14 + 1456) = 0;
      *(v14 + 1520) = 0;
      *(v14 + 1448) = 0;
      *(v14 + 1464) = 0;
      *(v14 + 144) = 0u;
      *(v14 + 136) = 0;
      *(v14 + 1680) = 0;
      *(v14 + 1664) = 0u;
      *(v14 + 1688) = 0u;
      *(v14 + 1704) = safeh_GetNullHandle();
      *(v14 + 1712) = v17;
      *(v14 + 1536) = 0;
      Object = objc_GetObject(v37[6], "LINGDB", &v35);
      if ((Object & 0x80000000) != 0 || (*(v14 + 56) = *(v35 + 8), Object = objc_GetObject(v37[6], "FE_DEPES", &v34), (Object & 0x80000000) != 0) || (v19 = v34, *(v14 + 80) = *(v34 + 8), *(v14 + 64) = *(v19 + 16), Object = objc_GetObject(v37[6], "FE_DCTLKP", &v33), (Object & 0x80000000) != 0) || (v20 = v33, *(v14 + 104) = *(v33 + 8), *(v14 + 88) = *(v20 + 16), *(v14 + 1296) = 0, Object = nn_phrasing_checkIfActive(a3, a4, v37, (v14 + 1296)), (Object & 0x80000000) != 0) || *(v14 + 1296) == 1 && (Object = nn_phrasing_Load(a3, a4, *(v14 + 32), *(v14 + 40), v37, *(v14 + 104), *(v14 + 88), *(v14 + 96), (v14 + 1304)), (Object & 0x80000000) != 0) || (Object = isCorpusAlignmentEnabled(v37, &v32), (Object & 0x80000000) != 0))
      {
LABEL_45:
        stress_models = Object;
        goto LABEL_46;
      }

      if (v32 == 1)
      {
        *(v14 + 160) = 0;
        *(v14 + 116) = 0;
      }

      else
      {
        Object = usePandP(v37, (v14 + 160));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_45;
        }

        if (*(v14 + 160))
        {
          Object = paramc_ParamSetUInt(v37[5], "prmigactive", 1);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          Object = pandpIgtreeInit(a3, a4, a1, a2, v37, v36, (v14 + 920));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          *(v14 + 600) = 0;
          *(v14 + 608) = 0;
          Object = nuance_pcre_ObjOpen(a3, a4, v14 + 600);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          Object = nuance_pcre_Init(*(v14 + 600), *(v14 + 608), 0x1Eu, 50);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v21 = v37;
          *(v14 + 168) = v37;
          Object = readPandPRules(a3, a4, v21, (v14 + 176));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }
        }

        Object = com_mosynt_UseMosynt(*(v14 + 88), *(v14 + 96), *(v14 + 104), (v14 + 116));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_45;
        }

        if (*(v14 + 116))
        {
LABEL_30:
          __s1 = 0;
          Object = com_mosynt_GetCfgParamVal(*(v14 + 88), *(v14 + 96), *(v14 + 104), "mosynt_enablegraphsymcache", "yes", &__s1);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v22 = strcmp(__s1, "yes") == 0;
          Object = kbsymtab_LoadData(a3, a4, *(v14 + 32), *(v14 + 40), (v14 + 120), v22);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          Object = accphr_LoadData(a3, a4, (v14 + 128));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

LABEL_33:
          Object = com_IncludeCRF(*(v14 + 88), *(v14 + 96), *(v14 + 104), (v14 + 112));
          if ((Object & 0x80000000) == 0)
          {
            if (!*(v14 + 112) || (v25 = v36, v24 = v37, *(v14 + 168) = v37, Object = pandpCrfInit(a3, a4, a1, a2, v24, v25, *(v14 + 104), v23, *(v14 + 88), *(v14 + 96), v14 + 920), (Object & 0x80000000) == 0))
            {
              (*(*(v14 + 104) + 96))(*(v14 + 88), *(v14 + 96), "fecfg", "statbnd_enable_nnets", &v31, &v30, &v29);
              if (v30 && v31)
              {
                (*v31)[strlen(*v31) - 1] = 0;
                *(v14 + 1456) = strcmp(*v31, "yes") == 0;
              }

              Object = fe_phrasing_InitNNPhrasing(v14);
              if ((Object & 0x80000000) == 0)
              {
                Object = hlp_useNLUPOSMap(*(v14 + 88), *(v14 + 96), *(v14 + 104), (v14 + 1280));
                if ((Object & 0x80000000) == 0)
                {
                  if (*(v14 + 1280) != 1 || (Object = hlp_loadNLUPOSMap(v37, *(v14 + 104), *(v14 + 88), *(v14 + 96), (v14 + 1288)), (Object & 0x80000000) == 0))
                  {
                    fe_phraseing_tryLoadingIGTree(*(v14 + 8), *(v14 + 16), *(v14 + 32), *(v14 + 40), *v14, (v14 + 1648));
                    stress_models = load_stress_models(*(v14 + 8), *(v14 + 16), *v14, *(v14 + 88), *(v14 + 96), *(v14 + 104), a1, a2, (v14 + 1680), (v14 + 1696), (v14 + 1688), *(v14 + 1464), (v14 + 1472), (v14 + 1704), (v14 + 1720), (v14 + 1684));
                    if ((stress_models & 0x80000000) == 0)
                    {
                      v26 = 62343;
LABEL_47:
                      *a5 = v14;
                      *(a5 + 8) = v26;
                      return stress_models;
                    }

LABEL_46:
                    fe_phrasing_ObjClose(*a5, *(a5 + 8));
                    v14 = 0;
                    v26 = 0;
                    goto LABEL_47;
                  }
                }
              }
            }
          }

          goto LABEL_45;
        }
      }

      Object = paramc_ParamSetUInt(v37[5], "prmigactive", 1);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_45;
      }

      if (!*(v14 + 116))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }
  }

  return inited;
}

uint64_t isCorpusAlignmentEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  *a2 = 0;
  result = paramc_ParamGetUInt(*(a1 + 40), "statpos_do_corpus_alignment", &v4);
  if ((result & 0x1FFF) == 0x14)
  {
    return 0;
  }

  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v4 != 1)
  {
    return 0;
  }

  result = 0;
  *a2 = 1;
  return result;
}

uint64_t fe_phrasing_InitNNPhrasing(void *a1)
{
  v9 = 0;
  v8 = -1;
  v7 = 0;
  if (*(a1 + 364) != 1)
  {
    return 0;
  }

  result = ruleNNInit(a1[1], a1[2], *a1, a1[13], a1[11], a1[12], (a1 + 193), a1 + 780);
  if ((result & 0x80000000) == 0)
  {
    result = initFiModel(*a1, a1[1], a1[2], a1[4], a1[5], a1[11], a1[12], a1[13], a1 + 365, a1 + 181);
    if ((result & 0x80000000) == 0)
    {
      a1[183] = 0;
      a1[184] = safeh_GetNullHandle();
      a1[185] = v3;
      *(a1 + 380) = 1;
      result = loadEmbedding(a1[1], a1[2], a1 + 183, a1 + 184, a1 + 186, a1[11], a1[12], a1[13], a1 + 380);
      if ((result & 0x80000000) == 0)
      {
        v4 = heap_Calloc(*(*a1 + 8), 1, 1776);
        a1[191] = v4;
        if (!v4)
        {
          return 2315264010;
        }

        result = load_pw_cfg(a1[13], a1[11], a1[12], v4, *a1);
        if ((result & 0x80000000) == 0)
        {
          result = getphraseCfg(*a1, a1[13], a1[11], a1[12], a1 + 414, a1 + 208, a1 + 209);
          if ((result & 0x80000000) == 0)
          {
            v6 = 0;
            *(a1 + 381) = 0;
            result = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", "statbnd_nopos", &v9, &v8, &v7);
            if ((result & 0x80000000) == 0)
            {
              if (v8 == 1)
              {
                (*v9)[strlen(*v9) - 1] = 0;
                if (!strcmp(*v9, "yes"))
                {
                  *(a1 + 381) = 1;
                }
              }

              result = load_pw_igtree_cfg(a1[11], a1[12], a1[13], &v6);
              if ((result & 0x80000000) == 0)
              {
                if (v6)
                {
                  v5 = a1 + 192;
                  result = load_pw_igtree(a1[1], a1[2], *a1, a1 + 192);
                  if ((result & 0x80000000) != 0)
                  {
                    if (*v5)
                    {
                      igtree_Deinit(*a1, *v5);
                      result = 0;
                      a1[192] = 0;
                      return result;
                    }

                    return 0;
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

uint64_t hlp_useNLUPOSMap(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  result = (*(a3 + 96))(a1, a2, "fecfg", "nluposmap", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    if (*&__c[1] != 1 || *&__c[3] == 0)
    {
      return 0;
    }

    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp(v7, "YES") || !strcmp(v7, "yes"))
    {
      result = 0;
      *a4 = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t hlp_loadNLUPOSMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v10 = (*(a2 + 96))(a3, a4, "fecfg", "nluposmapcounter", &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v12 = **&__c[3];
    v13 = strchr(**&__c[3], __c[0]);
    if (v13)
    {
      *v13 = 0;
      v12 = **&__c[3];
    }

    v14 = atoi(v12);
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + 8);
      *v29 = ssftmap_ElemCopyString;
      *&v29[8] = ssftmap_ElemFreeString;
      *&v29[16] = ssftmap_ElemCompareKeysString;
      *&v29[24] = ssftmap_ElemCopyString;
      v30 = ssftmap_ElemFreeString;
      v17 = ssftmap_ObjOpen(v16, 0, v29, a5);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = v15;
        do
        {
          memset(&v29[10], 0, 22);
          strcpy(v29, "nluposmap");
          LH_itoa(v18, v27, 0xAu);
          __strcat_chk();
          *&__c[1] = -1;
          v10 = (*(a2 + 96))(a3, a4, "fecfg", v29, &__c[3], &__c[1], __c);
          if ((v10 & 0x80000000) != 0)
          {
            break;
          }

          if (*&__c[1])
          {
            v21 = v20;
            v22 = **&__c[3];
            v23 = strchr(**&__c[3], __c[0]);
            if (v23)
            {
              *v23 = 0;
              v19 = (v23 + 1);
            }

            if (v22)
            {
              do
              {
                v24 = strchr(v22, 124);
                v25 = v24;
                if (v24)
                {
                  *v24 = 0;
                }

                v10 = ssftmap_Insert(*a5, v22, v19);
                if ((v10 & 0x80000000) != 0)
                {
                  return v10;
                }

                v22 = v25 + 1;
              }

              while (v25);
            }

            v20 = v21;
          }

          v18 = v18 + 1;
        }

        while (v18 < v20);
      }
    }
  }

  return v10;
}

uint64_t fe_phraseing_tryLoadingIGTree(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  *a6 = 0;
  result = nn_model_getBrokerString(a5, v15, "wprules_", 0x100uLL);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  result = igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, &v14, 2, v15, "IGTR", 1031, 0);
  if ((result & 0x80000000) != 0)
  {
    result = log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "failed to read IGtree phrasing model data - going on without");
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = v14;
LABEL_6:
  *a6 = v13;
  return result;
}

uint64_t fe_phrasing_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62343, 1728);
  if ((result & 0x80000000) != 0)
  {
    return 2315264008;
  }

  if (a1)
  {
    if (*(a1 + 40))
    {
      pandpIgtreeDeinit(a1[21], a1[3], a1 + 115);
      freePandPRules(a1 + 22);
    }

    if (*(a1 + 364) == 1)
    {
      v4 = a1[181];
      if (v4)
      {
        if (*v4)
        {
          fi_deinit(*a1, a1[3], *v4);
          v4 = a1[181];
        }

        if (!*(a1 + 365))
        {
          fi_deinit(*a1, a1[3], v4[1]);
          v4 = a1[181];
        }

        heap_Free(*(*a1 + 8), v4);
        a1[181] = 0;
      }

      v5 = a1[183];
      if (v5)
      {
        (*(v5 + 24))(a1[186], a1[187]);
        if (*(a1 + 380))
        {
          (*(a1[183] + 24))(a1[188], a1[189]);
        }

        if (!*(a1 + 420))
        {
          a1[183] = 0;
          objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
        }
      }

      v6 = a1[192];
      if (v6)
      {
        igtree_Deinit(*a1, v6);
        heap_Free(*(*a1 + 8), a1[192]);
        a1[192] = 0;
      }

      freeSpRules(*a1, (a1 + 193));
      freePwInObjClose(*a1, a1[191]);
      freeSPPunc(*a1, a1[208]);
      freeSPPunc(*a1, a1[209]);
    }

    if (a1[15])
    {
      kbsymtab_UnloadData(a1[1], a1[2], a1[4], a1[5], a1 + 15);
    }

    if (a1[16])
    {
      accphr_UnloadData(a1[1], a1[2], a1 + 16);
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[13])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v7 = a1[6];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    if (*(a1 + 28))
    {
      pandpCrfDeinit(a1[21], a1[3], (a1 + 115));
    }

    if (*(a1 + 324) != 1 || (result = nn_phrasing_UnLoad(*a1, a1[3], (a1 + 163)), (result & 0x80000000) == 0))
    {
      if (*(a1 + 320) == 1)
      {
        ssftmap_ObjClose(a1[161]);
      }

      v8 = a1[206];
      if (v8)
      {
        igtree_Deinit_ReadOnly_DereferenceCnt(*a1, a1[3], v8);
        a1[206] = 0;
      }

      if (*(a1 + 420))
      {
        free_stress_model(*a1, a1[3], a1[212], a1[211], a1[183], a1[213], a1[214]);
        a1[212] = 0;
        a1[183] = 0;
        objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
      }

      heap_Free(*(*a1 + 8), a1);
      return 0;
    }
  }

  return result;
}

uint64_t fe_phrasing_ObjReopen(void *a1, int a2)
{
  v3 = 2315264006;
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  if (a1)
  {
    if (*(a1 + 324) == 1)
    {
      nn_option = nn_phrasing_UnLoad(*a1, a1[3], (a1 + 163));
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }
    }

    *(a1 + 324) = 0;
    nn_option = nn_phrasing_checkIfActive(a1[1], a1[2], *a1, a1 + 324);
    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

    if (*(a1 + 324) == 1)
    {
      nn_option = nn_phrasing_Load(a1[1], a1[2], a1[4], a1[5], *a1, a1[13], a1[11], a1[12], a1 + 652);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }
    }

    if (*(a1 + 28))
    {
      pandpCrfDeinit(a1[21], a1[3], (a1 + 115));
    }

    v5 = a1 + 182;
    if (*(a1 + 364))
    {
      freeSpRules(*a1, (a1 + 193));
      v6 = *a1;
      v7 = a1[191];
      *(v7 + 1104) = *a1;
      freePwInObjClose(v6, v7);
      freeSPPunc(*a1, a1[208]);
      freeSPPunc(*a1, a1[209]);
      v8 = a1[192];
      if (v8)
      {
        igtree_Deinit(*a1, v8);
        heap_Free(*(*a1 + 8), a1[192]);
        a1[192] = 0;
      }

      v9 = a1[206];
      if (v9)
      {
        igtree_Deinit_ReadOnly_DereferenceCnt(*a1, a1[3], v9);
        a1[206] = 0;
      }

      if (*(a1 + 420))
      {
        free_stress_model(*a1, a1[3], a1[212], a1[211], a1[183], a1[213], a1[214]);
        *(a1 + 211) = 0u;
      }

      nn_option = load_nn_option(a1, a1 + 364);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      if (*v5)
      {
        nn_option = nnEmbeddingReLoad(a1[1], a1[2], a1 + 183, a1 + 184, a1 + 186, a1[11], a1[12], a1[13], a1 + 380);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = nnModelReload(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[11], a1[12], a1[13], a1 + 365, a1 + 181);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = ruleNNInit(a1[1], a1[2], *a1, a1[13], a1[11], a1[12], (a1 + 193), a1 + 780);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        v10 = heap_Calloc(*(*a1 + 8), 1, 1776);
        a1[191] = v10;
        nn_option = load_pw_cfg(a1[13], a1[11], a1[12], v10, *a1);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = getphraseCfg(*a1, a1[13], a1[11], a1[12], a1 + 414, a1 + 208, a1 + 209);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        v26 = 0;
        nn_option = load_pw_igtree_cfg(a1[11], a1[12], a1[13], &v26);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        if (v26)
        {
          v11 = a1 + 192;
          if ((load_pw_igtree(a1[1], a1[2], *a1, a1 + 192) & 0x80000000) != 0)
          {
            if (*v11)
            {
              igtree_Deinit(*a1, *v11);
              a1[192] = 0;
            }
          }
        }

        fe_phraseing_tryLoadingIGTree(a1[1], a1[2], a1[4], a1[5], *a1, a1 + 206);
      }

      else
      {
        nn_option = releaseEmbedding((a1 + 183), a1 + 184, a1 + 186, a1 + 380);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = releaseFIModel(*a1, a1[3], *(a1 + 365), a1 + 181);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }
      }

      a1[213] = safeh_GetNullHandle();
      a1[214] = v13;
      *(a1 + 420) = 0;
      nn_option = load_stress_models(a1[1], a1[2], *a1, a1[11], a1[12], a1[13], a1[4], a1[5], a1 + 420, a1 + 212, a1 + 211, a1[183], a1 + 184, a1 + 213, a1 + 860, a1 + 421);
    }

    else
    {
      nn_option = load_nn_option(a1, a1 + 364);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      if (!*v5)
      {
        goto LABEL_39;
      }

      nn_option = fe_phrasing_InitNNPhrasing(a1);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      fe_phraseing_tryLoadingIGTree(a1[1], a1[2], a1[4], a1[5], *a1, a1 + 206);
      a1[213] = safeh_GetNullHandle();
      a1[214] = v12;
      *(a1 + 420) = 0;
      nn_option = load_stress_models(a1[1], a1[2], *a1, a1[11], a1[12], a1[13], a1[4], a1[5], a1 + 420, a1 + 212, a1 + 211, a1[183], a1 + 184, a1 + 213, a1 + 860, a1 + 421);
    }

    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

LABEL_39:
    v14 = a1 + 20;
    if (*(a1 + 40) == 1)
    {
      pandpIgtreeDeinit(a1[21], a1[3], a1 + 115);
      freePandPRules(a1 + 22);
    }

    bzero(a1 + 22, 0x298uLL);
    nn_option = usePandP(*a1, a1 + 40);
    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

    if (*v14 != 1 || (PandPRules = paramc_ParamSetUInt(*(*a1 + 40), "prmigactive", 1), (PandPRules & 0x80000000) == 0) && (PandPRules = pandpIgtreeInit(a1[1], a1[2], a1[4], a1[5], *a1, a1[3], a1 + 115), (PandPRules & 0x80000000) == 0) && (a1[75] = 0, *(a1 + 152) = 0, PandPRules = nuance_pcre_ObjOpen(a1[1], a1[2], (a1 + 75)), (PandPRules & 0x80000000) == 0) && (PandPRules = nuance_pcre_Init(a1[75], a1[76], 0x1Eu, 50), (PandPRules & 0x80000000) == 0) && (v17 = *a1, v16 = a1[1], a1[21] = *a1, PandPRules = readPandPRules(v16, a1[2], v17, a1 + 22), (PandPRules & 0x80000000) == 0))
    {
      v18 = a1 + 29;
      v19 = *(a1 + 29);
      nn_option = com_mosynt_UseMosynt(a1[11], a1[12], a1[13], a1 + 29);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      v20 = *v18;
      if (v19 == 1)
      {
        if (v20 == 1)
        {
          goto LABEL_58;
        }

        if (!v20)
        {
          nn_option = paramc_ParamSetUInt(*(*a1 + 40), "prmigactive", 1);
          if ((nn_option & 0x80000000) != 0)
          {
            return nn_option;
          }

          if (a1[15])
          {
            nn_option = kbsymtab_UnloadData(a1[1], a1[2], a1[4], a1[5], a1 + 15);
            a1[15] = 0;
            if ((nn_option & 0x80000000) != 0)
            {
              return nn_option;
            }
          }

          if (a1[16])
          {
            nn_option = accphr_UnloadData(a1[1], a1[2], a1 + 16);
            a1[16] = 0;
            if ((nn_option & 0x80000000) != 0)
            {
              return nn_option;
            }
          }

          if (*v18 == 1)
          {
LABEL_58:
            __s1 = 0;
            if (a1[15])
            {
              nn_option = kbsymtab_UnloadData(a1[1], a1[2], a1[4], a1[5], a1 + 15);
              a1[15] = 0;
              if ((nn_option & 0x80000000) != 0)
              {
                return nn_option;
              }
            }

            if (a1[16])
            {
              nn_option = accphr_UnloadData(a1[1], a1[2], a1 + 16);
              a1[16] = 0;
              if ((nn_option & 0x80000000) != 0)
              {
                return nn_option;
              }
            }

LABEL_66:
            nn_option = com_mosynt_GetCfgParamVal(a1[11], a1[12], a1[13], "mosynt_enablegraphsymcache", "yes", &__s1);
            if ((nn_option & 0x80000000) == 0)
            {
              v21 = strcmp(__s1, "yes") == 0;
              nn_option = kbsymtab_LoadData(a1[1], a1[2], a1[4], a1[5], a1 + 15, v21);
              if ((nn_option & 0x80000000) == 0)
              {
                nn_option = accphr_LoadData(a1[1], a1[2], a1 + 16);
                if ((nn_option & 0x80000000) == 0)
                {
                  goto LABEL_69;
                }
              }
            }

            return nn_option;
          }
        }
      }

      else if (v20 == 1)
      {
        __s1 = 0;
        goto LABEL_66;
      }

LABEL_69:
      nn_option = com_IncludeCRF(a1[11], a1[12], a1[13], a1 + 28);
      if ((nn_option & 0x80000000) == 0)
      {
        if (!*(a1 + 28) || (v22 = *a1, a1[21] = *a1, pandpCrfDeinit(v22, a1[3], (a1 + 115)), nn_option = pandpCrfInit(a1[1], a1[2], a1[4], a1[5], *a1, a1[3], a1[13], v23, a1[11], a1[12], (a1 + 115)), (nn_option & 0x80000000) == 0))
        {
          if (*(a1 + 320) == 1)
          {
            ssftmap_ObjClose(a1[161]);
          }

          nn_option = hlp_useNLUPOSMap(a1[11], a1[12], a1[13], a1 + 320);
          if ((nn_option & 0x80000000) == 0)
          {
            if (*(a1 + 320) != 1)
            {
              return 0;
            }

            return hlp_loadNLUPOSMap(*a1, a1[13], a1[11], a1[12], a1 + 161);
          }
        }
      }

      return nn_option;
    }

    v3 = PandPRules;
    *v14 = 0;
  }

  return v3;
}

uint64_t load_nn_option(void *a1, int *a2)
{
  v8 = 0;
  v7 = -1;
  v6 = 0;
  *a2 = 0;
  v3 = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", "statbnd_enable_nnets", &v8, &v7, &v6);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v7;
    if (v7)
    {
      (*v8)[strlen(*v8) - 1] = 0;
      v4 = strcmp(*v8, "yes") == 0;
    }

    *a2 = v4;
  }

  return v3;
}

uint64_t fe_phrasing_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62343, 1728);
  if ((result & 0x80000000) != 0)
  {
    return 2315264008;
  }

  if (*(a1 + 160))
  {
    v4 = *a1;
    v5 = *(a1 + 96);
    v6 = *(a1 + 104);
    v7 = *(a1 + 88);

    return setParams(v4, v7, v5, v6, a1 + 176);
  }

  return result;
}

uint64_t fe_phrasing_Process_PandP(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  *a5 = 1;
  SentenceData = getSentenceData(*a1, *(a1 + 48), *(a1 + 56), a3, a4, a1 + 168, *(a1 + 120), 0);
  if ((SentenceData & 0x80000000) == 0 && *(a1 + 848))
  {
    ProsodicStructure = getProsodicStructure((a1 + 168));
    if ((ProsodicStructure & 0x80000000) == 0)
    {
      ProsodicStructure = getProminence(a1 + 168);
      if ((ProsodicStructure & 0x80000000) == 0)
      {
        ProsodicStructure = updateLingdb(*(a1 + 56), a3, a4, a1 + 168);
      }
    }

    SentenceData = ProsodicStructure;
  }

  freeSentenceData(a1 + 168);
  freeProsodicStructure((a1 + 168));
  return SentenceData;
}

uint64_t fe_phrasing_Process_Mosynt(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v22 = 0;
  PhrasingOutput = 2315264010;
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  v24 = 0;
  __s = 0;
  v23 = 0;
  *a5 = 1;
  v10 = (*(a1[7] + 104))(a3, a4, 1, 0, &v23 + 2);
  if ((v10 & 0x80000000) == 0 && ((*(a1[7] + 184))(a3, a4, HIWORD(v23), 0, &v22) & 0x80000000) == 0 && v22 == 1)
  {
    v10 = (*(a1[7] + 176))(a3, a4, HIWORD(v23), 0, &__s, &v23);
    if ((v10 & 0x80000000) == 0 && v23 >= 2u)
    {
      v11 = strlen(__s);
      v12 = heap_Alloc(*(*a1 + 8), v11 + 1);
      if (v12)
      {
        v13 = v12;
        memset(v12, 32, v11);
        *(v13 + v11) = 0;
        v14 = (*(a1[7] + 176))(a3, a4, HIWORD(v23), 2, &v24, &v23);
        if ((v14 & 0x80000000) != 0)
        {
          PhrasingOutput = v14;
          goto LABEL_29;
        }

        v15 = heap_Alloc(*(*a1 + 8), 32);
        if (!v15)
        {
          log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
          goto LABEL_29;
        }

        v16 = v15;
        *v15 = 0u;
        *(v15 + 1) = 0u;
        started = mosynt_StartAccentPhrasing(a1[6], a1[11], a1[12], a1[13], a1[15], a1[16], v15);
        if ((started & 0x80000000) == 0)
        {
          started = fe_phrasing_mosynt_SetupInput(a1, a3, a4, HIWORD(v23), v16);
          if ((started & 0x80000000) == 0)
          {
            mosynt_DoAccentPhrasing(a1[6], v16, v24);
            if ((started & 0x80000000) == 0)
            {
              started = fe_phrasing_mosynt_SetProminenceValues(a1, a3, a4, HIWORD(v23), v16);
              if ((started & 0x80000000) == 0)
              {
                v21 = 0;
                started = fe_phrasing_mosynt_DeleteAuxWords(a1, a3, a4, HIWORD(v23), v13, &v21);
                if ((started & 0x80000000) == 0)
                {
                  v19 = 0;
                  started = fe_phrasing_mosynt_SplitWords(a1, a3, a4, HIWORD(v23), v13, &v19);
                  if ((started & 0x80000000) == 0)
                  {
                    v20 = 0;
                    started = fe_phrasing_mosynt_MeltClitics(a1, a3, a4, HIWORD(v23), v13, &v20);
                    if ((started & 0x80000000) == 0)
                    {
                      PhrasingOutput = fe_phrasing_mosynt_CreatePhrasingOutput(a1, a3, a4, HIWORD(v23), v16);
                      if ((PhrasingOutput & 0x80000000) != 0 || !v19 && !v21 && !v20)
                      {
                        goto LABEL_23;
                      }

                      started = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, HIWORD(v23), v11, (v19 + v11 - (v21 + v20)), v13);
                    }
                  }
                }
              }
            }
          }
        }

        PhrasingOutput = started;
LABEL_23:
        mosynt_FinishAccentPhrasing(a1[6], v16);
        heap_Free(*(*a1 + 8), v16);
LABEL_29:
        heap_Free(*(*a1 + 8), v13);
        return PhrasingOutput;
      }

      log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
      return 2315264010;
    }
  }

  return v10;
}

uint64_t fe_phrasing_mosynt_SetupInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v20 = 0;
  v17 = 0;
  __s = 0;
  result = (*(*(a1 + 56) + 176))(a2, a3, a4, 0, &v17, &v23);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v23 + 2);
    if ((result & 0x80000000) == 0)
    {
      v21 = 0;
      v11 = HIWORD(v23);
      if (HIWORD(v23))
      {
        v12 = 0;
        v13 = 0;
        v19 = 0;
        while (1)
        {
          result = (*(*(a1 + 56) + 168))(a2, a3, v11, 0, 1, &v22[1], &v23);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (*&v22[1] <= 0xAu && ((1 << SLOBYTE(v22[1])) & 0x610) != 0)
          {
            result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v23), 1, 1, v22, &v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v23), 2, 1, &v21, &v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v23), 3, &__s, &v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v12)
            {
              result = hlp_ReadSildur(a1, a2, a3, v12, &v20, &v19);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v19 && v20)
              {
                mosynt_InsertAccPhrPunct(*(a1 + 48), a5, (v13 + 1), 44);
              }
            }

            mosynt_InsertAccPhrTermWord(*(a1 + 48), a5, v22[0], v21 + 1, HIWORD(v23), __s);
            if (v21)
            {
              v15 = *(v17 + v21 - 1);
              if (mosynt_IsPunctChar(*(a1 + 48), a5, v15))
              {
                mosynt_InsertAccPhrPunct(*(a1 + 48), a5, v21 + 1, v15);
              }

              v13 = v21;
              if (v21)
              {
                if (!*(v17 + v21))
                {
                  IsPunctChar = mosynt_IsPunctChar(*(a1 + 48), a5, *(v17 + v21 - 1));
                  v13 = v21;
                  if (!IsPunctChar)
                  {
                    mosynt_InsertAccPhrPunct(*(a1 + 48), a5, v21 + 1, 46);
                    v13 = v21;
                  }
                }
              }
            }

            else
            {
              v13 = 0;
            }

            v12 = HIWORD(v23);
          }

          result = (*(*(a1 + 56) + 120))(a2, a3);
          if ((result & 0x80000000) == 0)
          {
            v11 = HIWORD(v23);
            if (HIWORD(v23))
            {
              continue;
            }
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_mosynt_SetProminenceValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  result = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v17);
  if ((result & 0x80000000) == 0)
  {
    for (i = v17; v17; i = v17)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, i, 0, 1, &v15, &v16);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (v15 <= 0xA && ((1 << v15) & 0x610) != 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, v17, 1, 1, &v14 + 2, &v16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosynt_GetWordProminence(*(a1 + 48), a5, HIWORD(v14), &v14);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        LH_itoa(v14, __s, 0xAu);
        v12 = strlen(__s);
        result = (*(*(a1 + 56) + 160))(a2, a3, v17, 13, (v12 + 1), __s, &v13);
        if ((result & 0x80000000) != 0)
        {
          break;
        }
      }

      result = (*(*(a1 + 56) + 120))(a2, a3, v17, &v17);
      if ((result & 0x80000000) != 0)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_mosynt_DeleteAuxWords(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  __s1 = 0;
  v30 = 0;
  *a6 = 0;
  v12 = (*(a1[7] + 176))(a2, a3, a4, 0, &v31, &v36);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = (*(a1[7] + 104))(a2, a3, 2, a4, &v36 + 2);
  if ((v13 & 0x80000000) == 0 && HIWORD(v36))
  {
    v12 = (*(a1[7] + 168))(a2, a3);
    if ((v12 & 0x80000000) == 0)
    {
      v14 = 0;
      while (1)
      {
        if (v34 > 0xA || ((1 << v34) & 0x610) == 0)
        {
          goto LABEL_18;
        }

        v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v36), 1, 1, &v33 + 2, &v36);
        if ((v16 & 0x80000000) != 0 || (v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v36), 2, 1, &v33, &v36), (v16 & 0x80000000) != 0) || (v16 = (*(a1[7] + 176))(a2, a3, HIWORD(v36), 3, &__s1, &v36), (v16 & 0x80000000) != 0))
        {
LABEL_38:
          v13 = v16;
LABEL_39:
          if (!v14)
          {
            return v13;
          }

LABEL_40:
          heap_Free(*(*a1 + 8), v14);
          return v13;
        }

        if (!strstr(__s1, "{DEL}"))
        {
          goto LABEL_18;
        }

        v16 = (*(a1[7] + 312))(a2, a3, HIWORD(v33), &v30);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }

        if (v30)
        {
          break;
        }

        v22 = HIWORD(v33);
        v23 = v33;
        if (HIWORD(v33) < v33)
        {
          v24 = (a5 + HIWORD(v33));
          v25 = v33 - HIWORD(v33);
          do
          {
            *v24++ = 100;
            ++*a6;
            --v25;
          }

          while (v25);
        }

        v21 = HIWORD(v36);
        v26 = *(v31 + v23);
        if (v26 == 95 || v26 == 32)
        {
          v27 = (a5 + v23);
        }

        else
        {
          if (!v22)
          {
            goto LABEL_19;
          }

          v28 = *(v31 + (v22 - 1));
          if (v28 != 95 && v28 != 32)
          {
            goto LABEL_19;
          }

          v27 = (a5 - 1 + v22);
        }

        *v27 = 100;
        ++*a6;
LABEL_19:
        v13 = (*(a1[7] + 120))(a2, a3, HIWORD(v36), &v36 + 2);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_39;
        }

        if (v21)
        {
          v13 = (*(a1[7] + 192))(a2, a3, v21);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_39;
          }
        }

        if (!HIWORD(v36))
        {
          goto LABEL_39;
        }

        v16 = (*(a1[7] + 168))(a2, a3);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }
      }

      v17 = heap_Alloc(*(*a1 + 8), 5000);
      if (!v17)
      {
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }

      v14 = v17;
      v18 = strcpy(v17, __s1);
      mosynt_RemoveAllSubstrOcc(v18, "{DEL}");
      v19 = strlen(v14);
      v20 = (*(a1[7] + 160))(a2, a3, HIWORD(v36), 3, (v19 + 1), v14, &v35);
      if ((v20 & 0x80000000) != 0)
      {
        v13 = v20;
        goto LABEL_40;
      }

LABEL_18:
      v21 = 0;
      goto LABEL_19;
    }

    return v12;
  }

  return v13;
}

uint64_t fe_phrasing_mosynt_SplitWords(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v77 = 0;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  __s = 0;
  v65 = 0;
  *a6 = 0;
  if ((com_mosynt_GetCfgParamVal(a1[11], a1[12], a1[13], "fephrase_max_utf8_sym", "5", &v65) & 0x80000000) != 0)
  {
    v12 = 5;
  }

  else
  {
    v12 = atoi(v65);
  }

  v13 = heap_Alloc(*(*a1 + 8), v12);
  v14 = *a1;
  if (v13)
  {
    v15 = v13;
    v16 = heap_Alloc(*(v14 + 8), 5000);
    if (!v16)
    {
      v19 = 2315264010;
      log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
LABEL_109:
      heap_Free(*(*a1 + 8), v15);
      return v19;
    }

    v17 = v16;
    UTF8Char = (*(a1[7] + 176))(a2, a3, a4, 0, &v72, &v77);
    if ((UTF8Char & 0x80000000) == 0)
    {
      v19 = (*(a1[7] + 104))(a2, a3, 2, a4, &v77 + 2);
      if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_108;
      }

      v20 = HIWORD(v77);
      if (!HIWORD(v77))
      {
        goto LABEL_108;
      }

      v53 = a5;
      while (1)
      {
        UTF8Char = (*(a1[7] + 168))(a2, a3, v20, 0, 1, &v75, &v77);
        if ((UTF8Char & 0x80000000) != 0)
        {
          break;
        }

        if (v75 <= 0xA && ((1 << v75) & 0x610) != 0)
        {
          UTF8Char = (*(a1[7] + 168))(a2, a3, HIWORD(v77), 1, 1, &v74 + 2, &v77);
          if ((UTF8Char & 0x80000000) != 0)
          {
            break;
          }

          UTF8Char = (*(a1[7] + 168))(a2, a3, HIWORD(v77), 2, 1, &v74, &v77);
          if ((UTF8Char & 0x80000000) != 0)
          {
            break;
          }

          UTF8Char = (*(a1[7] + 176))(a2, a3, HIWORD(v77), 3, &v73, &v77);
          if ((UTF8Char & 0x80000000) != 0)
          {
            break;
          }

          v67 = 0;
          v22 = strstr(v73, "{SEP");
          if (v22)
          {
            UTF8Char = (*(a1[7] + 312))(a2, a3, HIWORD(v74), &v67);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            v23 = v22[4];
            if ((v23 - 48) <= 9 && v22[5] == 125 && v22[6])
            {
              v24 = (v22 - v73);
              v57 = v23 & 0xF;
            }

            else
            {
              v57 = 0;
              v24 = 0;
            }

            v25 = HIWORD(v74);
            UTF8Char = utf8_getUTF8Char(v72, HIWORD(v74), v15);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            v55 = v24;
            v54 = v17;
            if (v25 >= v74)
            {
              v26 = 0;
              v29 = 0;
            }

            else
            {
              v26 = 0;
              v27 = *v15;
              do
              {
                v28 = v27 && v57 > v26;
                v29 = !v28;
                if (!v28)
                {
                  break;
                }

                v25 += strlen(v15);
                v30 = utf8_getUTF8Char(v72, v25, v15);
                if ((v30 & 0x80000000) != 0)
                {
LABEL_111:
                  v19 = v30;
                  v17 = v54;
                  goto LABEL_108;
                }

                ++v26;
                while (1)
                {
                  v27 = *v15;
                  if (v27 != 45 || v15[1])
                  {
                    break;
                  }

                  v25 += strlen(v15);
                  v30 = utf8_getUTF8Char(v72, v25, v15);
                  if ((v30 & 0x80000000) != 0)
                  {
                    goto LABEL_111;
                  }
                }
              }

              while (v74 > v25);
            }

            if (v57 == v26)
            {
              v33 = !v29;
              if (HIWORD(v74) >= v25)
              {
                v33 = 1;
              }

              if (v33)
              {
                v31 = 0;
              }

              else
              {
                v31 = (v25 - HIWORD(v74));
              }
            }

            else
            {
              v31 = 0;
            }

            v17 = v54;
            v32 = v55;
          }

          else
          {
            v31 = 0;
            v32 = 0;
          }

          if (v31 && !v67 && v32)
          {
            v62 = 0;
            v63 = 0;
            v61 = 0;
            v34 = (*(a1[7] + 184))(a2, a3, HIWORD(v77), 14, &v77) >= 0 && v77 == 1;
            v35 = v34;
            if (v34)
            {
              UTF8Char = (*(a1[7] + 176))(a2, a3, HIWORD(v77), 14, &v63, &v77);
              if ((UTF8Char & 0x80000000) != 0)
              {
                break;
              }

              hlp_NLUStrFind(v63, "POS", &v62, &v61);
            }

            v56 = v32;
            HIWORD(v68) = HIWORD(v77);
            v36 = HIWORD(v77);
            LOWORD(v68) = HIWORD(v74);
            if (HIWORD(v77))
            {
              while (1)
              {
                v37 = v36;
                UTF8Char = (*(a1[7] + 120))(a2, a3, v36, &v68 + 2);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_107;
                }

                if (!HIWORD(v68))
                {
                  goto LABEL_78;
                }

                UTF8Char = (*(a1[7] + 168))(a2, a3);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_107;
                }

                v36 = HIWORD(v68);
                if (!HIWORD(v68) || v68 != HIWORD(v74))
                {
                  goto LABEL_78;
                }
              }
            }

            v37 = 0;
LABEL_78:
            UTF8Char = (*(a1[7] + 80))(a2, a3, v37, &v71);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            hlp_CopyWordRec(a1, a2, a3, HIWORD(v77), v71);
            v39 = v74;
            LOWORD(v74) = HIWORD(v74) + v31;
            UTF8Char = (*(a1[7] + 160))(a2, a3, HIWORD(v77), 2, 1, &v74, &v76);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            UTF8Char = (*(a1[7] + 160))(a2, a3, v71, 1, 1, &v74, &v76);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            v58 = v39;
            if (v61)
            {
              v40 = v35;
            }

            else
            {
              v40 = 0;
            }

            v41 = v56;
            if (v40 == 1)
            {
              *v59 = 0;
              *v60 = 0;
              UTF8Char = hlp_splitNLURangeTags(a1, v63, v60, v59);
              if ((UTF8Char & 0x80000000) != 0)
              {
                break;
              }

              SubPosForSEPX = hlp_GetSubPosForSEPX(a1, HIWORD(v74), v74, v72, v62, v61, 0, &__s);
              v43 = __s;
              if ((SubPosForSEPX & 0x80000000) != 0)
              {
                goto LABEL_112;
              }

              v44 = *v60;
              hlp_NLUStrSet(*v60, "POS", __s);
              v45 = strlen(v44);
              SubPosForSEPX = (*(a1[7] + 160))(a2, a3, HIWORD(v77), 14, (v45 + 1), v44, &v76);
              if ((SubPosForSEPX & 0x80000000) != 0)
              {
                goto LABEL_112;
              }

              if (v43)
              {
                heap_Free(*(*a1 + 8), v43);
                __s = 0;
              }

              SubPosForSEPX = hlp_GetSubPosForSEPX(a1, v74, v58, v72, v62, v61, 1, &__s);
              v43 = __s;
              if ((SubPosForSEPX & 0x80000000) != 0 || (v46 = *v59, hlp_NLUStrSet(*v59, "POS", __s), v47 = strlen(v46), SubPosForSEPX = (*(a1[7] + 160))(a2, a3, v71, 14, (v47 + 1), v46, &v76), (SubPosForSEPX & 0x80000000) != 0))
              {
LABEL_112:
                v19 = SubPosForSEPX;
                if (v43)
                {
                  heap_Free(*(*a1 + 8), v43);
                }

                goto LABEL_108;
              }

              if (v43)
              {
                heap_Free(*(*a1 + 8), v43);
                __s = 0;
              }

              v41 = v56;
              if (v44)
              {
                heap_Free(*(*a1 + 8), v44);
              }

              if (v46)
              {
                heap_Free(*(*a1 + 8), v46);
              }
            }

            v69 = 0;
            mosynt_App(v17, 5000, &v69, v73, &v70);
            v17[v41] = 0;
            v48 = strlen(v17);
            UTF8Char = (*(a1[7] + 160))(a2, a3, HIWORD(v77), 3, (v48 + 1), v17, &v76);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            v49 = &v73[v41];
            v50 = strlen(v49 + 6);
            v51 = (*(a1[7] + 160))(a2, a3, v71, 3, (v50 + 1), v49 + 6, &v76);
            if ((v51 & 0x80000000) != 0 || (v51 = (*(a1[7] + 160))(a2, a3, HIWORD(v77), 8, 1, &v66, &v76), (v51 & 0x80000000) != 0))
            {
              v19 = v51;
              goto LABEL_108;
            }

            *(v53 + v74) = 105;
            ++*a6;
          }

          else if (v22)
          {
            v69 = 0;
            mosynt_App(v17, 5000, &v69, v73, &v70);
            v69 = v32;
            mosynt_App(v17, 5000, &v69, v22 + 6, &v70);
            v38 = strlen(v17);
            UTF8Char = (*(a1[7] + 160))(a2, a3, HIWORD(v77), 3, (v38 + 1), v17, &v76);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }
          }
        }

        v19 = (*(a1[7] + 120))(a2, a3, HIWORD(v77), &v77 + 2);
        if ((v19 & 0x80000000) == 0)
        {
          v20 = HIWORD(v77);
          if (HIWORD(v77))
          {
            continue;
          }
        }

        goto LABEL_108;
      }
    }

LABEL_107:
    v19 = UTF8Char;
LABEL_108:
    heap_Free(*(*a1 + 8), v17);
    goto LABEL_109;
  }

  v19 = 2315264010;
  log_OutPublic(*(v14 + 32), "FE_PHRASING", 37000, 0);
  return v19;
}

uint64_t fe_phrasing_mosynt_MeltClitics(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v43 = 0;
  __s = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  *a6 = 0;
  v12 = (*(a1[7] + 176))(a2, a3, a4, 0, &v40, &v50);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = heap_Alloc(*(*a1 + 8), 5000);
  if (v13)
  {
    v14 = v13;
    v45 = 0;
    v15 = (*(a1[7] + 104))(a2, a3, 2, a4, &v50 + 2);
    if ((v15 & 0x80000000) == 0)
    {
      v35 = a6;
      if (HIWORD(v50))
      {
        v16 = (*(a1[7] + 168))(a2, a3);
        if ((v16 & 0x80000000) == 0)
        {
          v36 = 0;
          v17 = 0;
          v18 = 0;
          v38 = 0;
          v34 = a5 - 1;
          do
          {
            if (v48 > 0xA || ((1 << v48) & 0x610) == 0)
            {
              v28 = 0;
              v29 = HIWORD(v50);
            }

            else
            {
              v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v50), 1, 1, &v47, &v50);
              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v50), 2, 1, &v46, &v50);
              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              v16 = (*(a1[7] + 176))(a2, a3, HIWORD(v50), 3, &__s, &v50);
              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              v16 = (*(a1[7] + 312))(a2, a3, v47, &v42);
              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              v20 = __s;
              if (strchr(__s, 123))
              {
                v21 = strstr(v20, "{LPC}") != 0;
                v22 = strstr(v20, "{LEC}") != 0;
                v39 = strstr(v20, "{RPC}") != 0;
                v37 = strstr(v20, "{REC}") != 0;
                v23 = strstr(v20, "{LPCC}");
                v24 = v47;
                if (v23 && v47 && *(v40 + v47 - 1) == 95)
                {
                  v21 = 1;
                }

                if (strstr(v20, "{LECC}") && v24 && *(v40 + (v24 - 1)) == 95)
                {
                  v22 = 1;
                }

                if (strstr(v20, "{RPCC}"))
                {
                  v25 = v39;
                  if (*(v40 + v46) == 95)
                  {
                    v25 = 1;
                  }

                  v39 = v25;
                }

                v26 = v38;
                if (strstr(v20, "{RECC}"))
                {
                  v27 = v37;
                  if (*(v40 + v46) == 95)
                  {
                    v27 = 1;
                  }

                  v37 = v27;
                }
              }

              else
              {
                v21 = 0;
                v22 = 0;
                v39 = 0;
                v37 = 0;
                v26 = v38;
              }

              if (v26 && (v30 = v21 || v18, v30 | (v22 || v17)))
              {
                v16 = (*(a1[7] + 168))(a2, a3, v26, 1, 1, &v45, &v50);
                if ((v16 & 0x80000000) != 0)
                {
                  break;
                }

                v16 = (*(a1[7] + 176))(a2, a3, v26, 3, &v43, &v50);
                if ((v16 & 0x80000000) != 0)
                {
                  break;
                }

                if (v30 && !v36 && !v42)
                {
                  hlp_CopyWordRec(a1, a2, a3, HIWORD(v50), v38);
                }

                HIDWORD(v42) = 0;
                mosynt_App(v14, 5000, &v42 + 1, v43, &v41);
                if (!(v36 | v42))
                {
                  mosynt_App(v14, 5000, &v42 + 1, __s, &v41);
                }

                mosynt_RemoveAllSubstrOcc(v14, "{LEC}");
                mosynt_RemoveAllSubstrOcc(v14, "{LPC}");
                mosynt_RemoveAllSubstrOcc(v14, "{RPC}");
                mosynt_RemoveAllSubstrOcc(v14, "{REC}");
                mosynt_RemoveAllSubstrOcc(v14, "{LECC}");
                mosynt_RemoveAllSubstrOcc(v14, "{LPCC}");
                mosynt_RemoveAllSubstrOcc(v14, "{RPCC}");
                mosynt_RemoveAllSubstrOcc(v14, "{RECC}");
                v31 = strlen(v14);
                v16 = (*(a1[7] + 160))(a2, a3, v38, 3, (v31 + 1), v14, &v49);
                if ((v16 & 0x80000000) != 0)
                {
                  break;
                }

                if (v36 | v42)
                {
                  v28 = 0;
                  v17 = v37;
                  v26 = v38;
                }

                else
                {
                  v16 = (*(a1[7] + 160))(a2, a3, v38, 1, 1, &v45, &v49);
                  v17 = v37;
                  if ((v16 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v16 = (*(a1[7] + 160))(a2, a3, v38, 2, 1, &v46, &v49);
                  if ((v16 & 0x80000000) != 0)
                  {
                    break;
                  }

                  *(v34 + v47) = 100;
                  ++*v35;
                  v28 = HIWORD(v50);
                  v26 = v38;
                }
              }

              else
              {
                v28 = 0;
                v17 = v37;
              }

              v29 = v28;
              v18 = v39;
              if (v28 != HIWORD(v50))
              {
                if (v22 || v21 || v39 || v17)
                {
                  HIDWORD(v42) = 0;
                  mosynt_App(v14, 5000, &v42 + 1, __s, &v41);
                  mosynt_RemoveAllSubstrOcc(v14, "{LEC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{LPC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{RPC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{REC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{LECC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{LPCC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{RPCC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{RECC}");
                  v32 = strlen(v14);
                  v16 = (*(a1[7] + 160))(a2, a3, HIWORD(v50), 3, (v32 + 1), v14, &v49);
                  if ((v16 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v29 = HIWORD(v50);
                  v26 = HIWORD(v50);
                  v18 = v39;
                }

                else
                {
                  v29 = HIWORD(v50);
                  v26 = HIWORD(v50);
                }
              }

              v38 = v26;
              v36 = v42;
            }

            v15 = (*(a1[7] + 120))(a2, a3, v29, &v50 + 2);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_63;
            }

            if (v28)
            {
              v15 = (*(a1[7] + 192))(a2, a3, v28);
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }
            }

            if (!HIWORD(v50))
            {
              goto LABEL_63;
            }

            v16 = (*(a1[7] + 168))(a2, a3);
          }

          while ((v16 & 0x80000000) == 0);
        }

        v15 = v16;
      }
    }

LABEL_63:
    heap_Free(*(*a1 + 8), v14);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return v15;
}

uint64_t fe_phrasing_mosynt_CreatePhrasingOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  PhraseInfo = (*(*(a1 + 56) + 176))(a2, a3, a4, 0, &v21, &v27);
  if ((PhraseInfo & 0x80000000) != 0)
  {
    return PhraseInfo;
  }

  v11 = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v27 + 2);
  if ((v11 & 0x80000000) == 0)
  {
    v25 = 0;
    __s[0] = 0;
    v22 = 0;
    v12 = HIWORD(v27);
    if (HIWORD(v27))
    {
      v13 = 0;
      v14 = 0;
      while (1)
      {
        PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, v12, 0, 1, &v26, &v27);
        if ((PhraseInfo & 0x80000000) != 0)
        {
          return PhraseInfo;
        }

        if (v26 <= 0xA && ((1 << v26) & 0x610) != 0)
        {
          PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v27), 1, 1, &v25 + 2, &v27);
          if ((PhraseInfo & 0x80000000) != 0)
          {
            return PhraseInfo;
          }

          PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v27), 2, 1, &v25, &v27);
          if ((PhraseInfo & 0x80000000) != 0)
          {
            return PhraseInfo;
          }

          v22 = 0;
          if (!v14)
          {
            v16 = 0;
            HIWORD(v24) = 0;
            __s[0] = 0;
LABEL_17:
            while (1)
            {
              PhraseInfo = mosynt_GetPhraseInfo(*(a1 + 48), a5, v16, &v24, v28, 10);
              if ((PhraseInfo & 0x80000000) != 0)
              {
                return PhraseInfo;
              }

              if (v28[0])
              {
                __strcpy_chk();
                if ((HIWORD(v24) - 1) >= v24)
                {
                  HIWORD(v24) = v24;
                }
              }

              if (HIWORD(v25) < ++v16)
              {
                if (__s[0])
                {
                  if (v13)
                  {
                    PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, v13, 2, 1, &v25 + 2, &v23);
                    if ((PhraseInfo & 0x80000000) != 0)
                    {
                      return PhraseInfo;
                    }
                  }

                  PhraseInfo = (*(*(a1 + 56) + 88))(a2, a3, HIWORD(v27), &v23 + 2);
                  if ((PhraseInfo & 0x80000000) != 0)
                  {
                    return PhraseInfo;
                  }

                  v13 = HIWORD(v23);
                  v26 = 15;
                  PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v23), 0, 1, &v26, &v23);
                  if ((PhraseInfo & 0x80000000) != 0)
                  {
                    return PhraseInfo;
                  }

                  PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v23), 1, 1, &v25 + 2, &v23);
                  if ((PhraseInfo & 0x80000000) != 0)
                  {
                    return PhraseInfo;
                  }

                  v17 = strlen(__s);
                  PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v23), 4, (v17 + 1), __s, &v23);
                  if ((PhraseInfo & 0x80000000) != 0)
                  {
                    return PhraseInfo;
                  }

                  PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v23), 7, 1, &v24 + 2, &v23);
                  if ((PhraseInfo & 0x80000000) != 0)
                  {
                    return PhraseInfo;
                  }
                }

                goto LABEL_30;
              }
            }
          }

          PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, v14, 2, 1, &v22, &v27);
          if ((PhraseInfo & 0x80000000) != 0)
          {
            return PhraseInfo;
          }

          v16 = v22;
          HIWORD(v24) = 0;
          __s[0] = 0;
          if (v22 <= HIWORD(v25))
          {
            goto LABEL_17;
          }

LABEL_30:
          v14 = HIWORD(v27);
        }

        v11 = (*(*(a1 + 56) + 120))(a2, a3);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        v12 = HIWORD(v27);
        if (!HIWORD(v27))
        {
          if (v13)
          {
            v11 = (*(*(a1 + 56) + 160))(a2, a3, v13, 2, 1, &v25, &v23);
            if ((v11 & 0x80000000) != 0)
            {
              return v11;
            }
          }

          break;
        }
      }
    }

    if (*__s == 87 || !(*__s ^ 0x4641 | v30))
    {
      v18 = v21;
      v19 = strrchr(v21, 63);
      if (v19 && v19 != v18 && *(v19 - 1) != 32)
      {
        *v19 = 46;
      }
    }
  }

  return v11;
}

uint64_t fe_phrasing_mosynt_AdjustSentenceAndMarkers(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v14 = (*(a1[7] + 176))(a2, a3, a4, 0, &v43, &v42 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = (*(a1[7] + 176))(a2, a3, a4, 1, &v39, &v38);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v37 = a6;
  v15 = *(v39 + 12);
  v16 = 2 * a5;
  v17 = heap_Alloc(*(*a1 + 8), v16 + 2);
  v18 = *a1;
  if (!v17)
  {
    v33 = 2315264010;
    log_OutPublic(*(v18 + 32), "FE_PHRASING", 37000, 0);
    return v33;
  }

  v19 = v17;
  v20 = heap_Alloc(*(v18 + 8), v16 + 2);
  v21 = *a1;
  if (v20)
  {
    v36 = a5;
    v22 = heap_Alloc(*(v21 + 8), (v37 + 1));
    if (v22)
    {
      v23 = v22;
      LOWORD(v24) = v36;
      if (v36)
      {
        v25 = 0;
        v24 = 0;
        do
        {
          v26 = *(a7 + v25);
          if (v26 == 105)
          {
            v22[v24] = 32;
            *(v19 + 2 * v25) = v24 + 1;
            *(v20 + 2 * v25) = v24;
            v22[(v24 + 1)] = *(v43 + v25);
            v24 += 2;
          }

          else
          {
            *(v19 + 2 * v25) = v24;
            *(v20 + 2 * v25) = v24;
            if (v26 != 100)
            {
              v22[v24++] = *(v43 + v25);
            }
          }

          ++v25;
        }

        while (v36 != v25);
      }

      v22[v24] = 0;
      *(v19 + 2 * v36) = v24;
      *(v20 + 2 * v36) = v24;
      v27 = strlen(v22);
      v28 = (*(a1[7] + 160))(a2, a3, a4, 0, (v27 + 1), v23, &v42);
      if ((v28 & 0x80000000) != 0)
      {
LABEL_36:
        v33 = v28;
      }

      else
      {
        v29 = v38;
        v30 = v39;
        if (v38)
        {
          v31 = (v39 + 12);
          do
          {
            *v31 = v15 + *(v19 + 2 * (*v31 - v15));
            v31 += 8;
            --v29;
          }

          while (v29);
        }

        *(v30 + 16) = v37;
        v32 = (*(a1[7] + 104))(a2, a3, 2, a4, &v41 + 2);
LABEL_19:
        v33 = v32;
        if ((v32 & 0x80000000) == 0)
        {
          while (HIWORD(v41))
          {
            v28 = (*(a1[7] + 168))(a2, a3);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            v28 = (*(a1[7] + 168))(a2, a3, HIWORD(v41), 2, 1, &v40, &v42 + 2);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            LOWORD(v41) = *(v19 + 2 * v41);
            v28 = (*(a1[7] + 160))(a2, a3, HIWORD(v41), 1, 1, &v41, &v42);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            v40 = v40 <= v36 ? *(v20 + 2 * v40) : v36;
            v28 = (*(a1[7] + 160))(a2, a3, HIWORD(v41), 2, 1, &v40, &v42);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            if (v40 == v41)
            {
              v34 = HIWORD(v41);
            }

            else
            {
              v34 = 0;
            }

            v33 = (*(a1[7] + 120))(a2, a3);
            if ((v33 & 0x80000000) != 0)
            {
              goto LABEL_39;
            }

            if (v34)
            {
              v32 = (*(a1[7] + 192))(a2, a3, v34);
              goto LABEL_19;
            }
          }
        }
      }

      goto LABEL_39;
    }

    v21 = *a1;
  }

  v33 = 2315264010;
  log_OutPublic(*(v21 + 32), "FE_PHRASING", 37000, 0, v36);
  v23 = 0;
LABEL_39:
  heap_Free(*(*a1 + 8), v19);
  if (v20)
  {
    heap_Free(*(*a1 + 8), v20);
  }

  if (v23)
  {
    heap_Free(*(*a1 + 8), v23);
  }

  return v33;
}

uint64_t fe_phrasing_Process_NN_Phrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, _DWORD *a7)
{
  *a5 = 1;
  v12 = a1 + 176;
  if (!*(a1 + 176))
  {
    *(a1 + 248) = 2;
    *(a1 + 192) = 0x10000;
  }

  SentenceData = getSentenceData(*a1, *(a1 + 48), *(a1 + 56), a3, a4, a1 + 168, *(a1 + 120), 1);
  if ((SentenceData & 0x80000000) == 0 && *(a1 + 848))
  {
    SentenceData = nn_phrasing_ProcessSent(*a1, *(a1 + 56), a3, a4, a1 + 840, v12, a1 + 1304, a6, a7);
  }

  freeSentenceData(a1 + 168);
  freeProsodicStructure((a1 + 168));
  return SentenceData;
}

uint64_t fe_phrasing_Process_CRFPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v14 = 0;
  v15 = 0;
  v17 = 0;
  *a5 = 1;
  if (!*(a1 + 176))
  {
    *(a1 + 248) = 2;
    *(a1 + 192) = 0x10000;
  }

  __s = 0;
  *(a1 + 176) = 0;
  SentenceData = getSentenceData(*a1, *(a1 + 48), *(a1 + 56), a3, a4, a1 + 168, *(a1 + 120), 0);
  if ((SentenceData & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  IsUpdatable = kaldi::nnet1::Component::IsUpdatable(*a1);
  if ((IsUpdatable & 0x80000000) != 0 || !*(a1 + 848))
  {
    goto LABEL_21;
  }

  if (!v17 && (SentenceData = crfWeakPhrasing(*(a1 + 104), *(a1 + 88), *(a1 + 96), *a1, 0, a1 + 840, 0, a1 + 920), (SentenceData & 0x80000000) != 0) || (SentenceData = puncPhrasing(*a1, (a1 + 840), a1 + 920), (SentenceData & 0x80000000) != 0) || (*(a1 + 176) = *a1, SentenceData = updateLingdbCrfPhrasing(*(a1 + 56), a3, a4, a1 + 168), (SentenceData & 0x80000000) != 0))
  {
LABEL_20:
    IsUpdatable = SentenceData;
    goto LABEL_21;
  }

  IsUpdatable = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v15);
  if ((IsUpdatable & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a3, a4, v15, 0, &v14 + 2) & 0x80000000) == 0 && HIWORD(v14) == 1)
  {
    IsUpdatable = (*(*(a1 + 56) + 176))(a3, a4, v15, 0, &__s, &v14);
    if ((IsUpdatable & 0x80000000) == 0 && v14 >= 2u)
    {
      v10 = strlen(__s);
      v11 = heap_Alloc(*(*a1 + 8), v10 + 1);
      if (v11)
      {
        v12 = v11;
        memset(v11, 32, v10);
        *(v12 + v10) = 0;
        IsUpdatable = fe_phrasing_mosynt_SplitWords(a1, a3, a4, v15, v12, &v15 + 1);
        if ((IsUpdatable & 0x80000000) == 0 && HIWORD(v15))
        {
          IsUpdatable = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, v15, v10, (HIWORD(v15) + v10), v12);
        }

        heap_Free(*(*a1 + 8), v12);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
        IsUpdatable = 2315264010;
      }
    }
  }

LABEL_21:
  freeSentenceData(a1 + 168);
  return IsUpdatable;
}

uint64_t fe_phrasing_Process_NNPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = a1;
  v73[0] = 0;
  v72 = 0;
  v71 = 0;
  *a6 = 1;
  v7 = *(*(a1 + 1528) + 1072);
  if (*(*(a1 + 1528) + 1072))
  {
    v8 = 0;
    v66 = *(*(a1 + 1528) + 1072);
    do
    {
      v9 = *(v6[191] + 1064) + 184 * v8;
      v10 = *(v9 + 56);
      v11 = strlen(v10);
      if (!v11)
      {
        break;
      }

      if (doesWordEndInCommaNN(v10, ",:;.?!|_~'<>{}#()[]^\\=@/&$*#"))
      {
        v12 = &v10[v11];
        if (memchr(",:;.?!|_~'<>{}#()[]^\\=@/&$*#", *(v12 - 1), 0x1EuLL))
        {
          v13 = 0;
          while (1)
          {
            v14 = Utf8_LengthInBytes(&v10[v13], 1);
            if (!utf8_IsChineseLetter(&v10[v13]))
            {
              break;
            }

LABEL_11:
            v13 += v14;
            if (v13 >= v11)
            {
              v17 = 0;
              LOBYTE(v16) = *(v12 - 1);
              goto LABEL_14;
            }
          }

          v15 = 0;
          v16 = v10[v13];
          while (v16 != asc_1C38DB09D[v15])
          {
            if (++v15 == 9)
            {
              goto LABEL_11;
            }
          }

          v17 = 1;
LABEL_14:
          *(v9 + 104) = v16;
          *(v9 + 108) = v17;
          *(v9 + 100) = 1;
          v7 = v66;
          v6 = a1;
        }
      }

      if (v11 == 1)
      {
        v18 = memchr(",:;.?!|_~'<>{}#()[]^\\=@/&$*#", *v10, 0x1EuLL);
        if (v8)
        {
          if (v18 && *(*(v6[191] + 1064) + 184 * (v8 - 1) + 108))
          {
            *(v9 + 108) = 1;
          }
        }
      }

      ++v8;
    }

    while (v8 != v7);
  }

  if (!*(a5 + 1104))
  {
    *(a5 + 1176) = 2;
    *(a5 + 1120) = 0x10000;
  }

  *(a5 + 1104) = 0;
  NNSentenceData = getNNSentenceData(*v6, v6[7], a3, a4, v6[191]);
  if ((NNSentenceData & 0x80000000) == 0)
  {
    if (*(a5 + 1088))
    {
      NNSentenceData = doesNNCustermizedFE(*v6, v6[191], v73);
      if ((NNSentenceData & 0x80000000) == 0)
      {
        if (*(a5 + 1072))
        {
          v70 = 0;
          if (v6[206])
          {
            v20 = heap_Calloc(*(*v6 + 8), *(v6[191] + 1072), 8);
            v21 = *v6;
            if (!v20)
            {
              NNSentenceData = 2315264010;
              log_OutPublic(*(v21 + 32), "FE_PHRASING", 37000, 0);
              goto LABEL_111;
            }

            v22 = v20;
            v23 = heap_Calloc(*(v21 + 8), *(v6[191] + 1072), 8);
            v24 = *v6;
            if (!v23)
            {
              v25 = 0;
              goto LABEL_88;
            }

            v25 = heap_Calloc(*(v24 + 8), *(v6[191] + 1072), 8);
            if (!v25)
            {
LABEL_87:
              v24 = *v6;
              goto LABEL_88;
            }
          }

          else
          {
            v22 = 0;
            v23 = 0;
            v25 = 0;
          }

          v26 = v6[191];
          v27 = *(v26 + 1072);
          if (*(v26 + 1072))
          {
            v28 = 0;
            v29 = (*(v26 + 1064) + 176);
            do
            {
              v30 = *(v29 - 3);
              if (v30)
              {
                v31 = *v30;
                if (v31 == 83)
                {
                  if (v30[1])
                  {
                    goto LABEL_42;
                  }
                }

                else if (v31 != 66 || v30[1])
                {
LABEL_42:
                  v28 += strlen(*(v29 - 15));
                  goto LABEL_43;
                }

                v28 = strlen(*(v29 - 15));
              }

LABEL_43:
              *v29 = v28;
              v29 += 46;
              --v27;
            }

            while (v27);
          }

          if (!v73[0] && *(a5 + 1072))
          {
            v44 = 0;
            v45 = 76;
            do
            {
              v46 = *(a5 + 1064);
              v47 = *(v46 + v45 - 4);
              if (v47 == 1)
              {
                v48 = 3;
              }

              else
              {
                if (v47)
                {
                  goto LABEL_72;
                }

                v48 = 1;
              }

              *(v46 + v45) = v48;
LABEL_72:
              *(v46 + v45 - 28) = 0;
              hlp_NLUStrFind(*(v46 + v45 - 36), "POS", (v46 + v45 - 28), &v70);
              if (v22)
              {
                v49 = heap_Alloc(*(*a1 + 8), v70 + 1);
                *(v22 + 8 * v44) = v49;
                if (!v49)
                {
                  v6 = a1;
                  goto LABEL_87;
                }

                strncpy(v49, *(*(a5 + 1064) + v45 - 28), v70);
                *(*(v22 + 8 * v44) + v70) = 0;
              }

              if (v23)
              {
                v50 = heap_Alloc(*(*a1 + 8), v70 + 1);
                *(v23 + 8 * v44) = v50;
                if (!v50)
                {
                  goto LABEL_84;
                }

                strncpy(v50, *(*(a5 + 1064) + v45 - 28), v70);
                *(*(v23 + 8 * v44) + v70) = 0;
              }

              if (v25)
              {
                v51 = strlen(*(*(a5 + 1064) + v45 - 20));
                v52 = heap_Alloc(*(*a1 + 8), v51 + 1);
                *(v25 + 8 * v44) = v52;
                if (!v52)
                {
LABEL_84:
                  NNSentenceData = 2315264010;
                  v6 = a1;
                  log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
                  goto LABEL_62;
                }

                strcpy(v52, *(*(a5 + 1064) + v45 - 20));
              }

              ++v44;
              v45 += 184;
            }

            while (v44 < *(a5 + 1072));
          }

          v6 = a1;
          if (!v23 || !v22 || !v25)
          {
LABEL_54:
            v33 = *a1;
            v34 = *(a1 + 1664);
            v35 = *(a1 + 1672);
            v36 = *(a1 + 1544);
            v37 = *(a1 + 1552);
            v38 = *(a1 + 1608);
            v68[2] = *(a1 + 1592);
            v68[3] = v38;
            v68[4] = *(a1 + 1624);
            v69 = *(a1 + 1640);
            v39 = *(a1 + 1576);
            v68[0] = *(a1 + 1560);
            v68[1] = v39;
            updated = nnpuncPhrasing(v33, a5, v36, v37, v68, v34, v35);
            if ((updated & 0x80000000) != 0 || (updated = updateLingdbNNPhrasing(*a1, *(a1 + 56), a3, a4, *(a1 + 1528), *(a1 + 1656), *(a1 + 1664), *(a1 + 1524)), (updated & 0x80000000) != 0))
            {
              NNSentenceData = updated;
LABEL_62:
              v43 = 0;
            }

            else
            {
              v41 = strlen(*(*(a1 + 1528) + 1088));
              v42 = heap_Alloc(*(*a1 + 8), v41 + 1);
              v43 = v42;
              if (v42)
              {
                memset(v42, 32, v41);
                *(v43 + v41) = 0;
                NNSentenceData = fe_phrasing_mosynt_SplitWords(a1, a3, a4, *(a5 + 1096), v43, &v72);
                if ((NNSentenceData & 0x80000000) == 0 && v72)
                {
                  NNSentenceData = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, *(a5 + 1096), v41, (v72 + v41), v43);
                }
              }

              else
              {
                NNSentenceData = 2315264010;
                log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
              }
            }

            if (!v22)
            {
              goto LABEL_95;
            }

            goto LABEL_89;
          }

          v32 = heap_Calloc(*(*a1 + 8), *(*(a1 + 1528) + 1072), 24);
          v71 = v32;
          v24 = *a1;
          if (v32)
          {
            if ((fe_phrasing_genLW(v24, *(a1 + 1528), v23, v25, v22, &v71) & 0x80000000) == 0)
            {
              fe_phrasing_ProcessIGTree(a1, v32);
            }

            freeIwInfo(a1, v32);
            goto LABEL_54;
          }

LABEL_88:
          NNSentenceData = 2315264010;
          log_OutPublic(*(v24 + 32), "FE_PHRASING", 37000, 0);
          v43 = 0;
LABEL_89:
          v53 = *(a5 + 1072);
          if (*(a5 + 1072))
          {
            v54 = 0;
            do
            {
              v55 = *(v22 + 8 * v54);
              if (v55)
              {
                heap_Free(*(*v6 + 8), v55);
                v53 = *(a5 + 1072);
              }

              ++v54;
            }

            while (v54 < v53);
          }

          heap_Free(*(*v6 + 8), v22);
LABEL_95:
          if (v23)
          {
            v56 = *(a5 + 1072);
            if (*(a5 + 1072))
            {
              v57 = 0;
              do
              {
                v58 = *(v23 + 8 * v57);
                if (v58)
                {
                  heap_Free(*(*v6 + 8), v58);
                  v56 = *(a5 + 1072);
                }

                ++v57;
              }

              while (v57 < v56);
            }

            heap_Free(*(*v6 + 8), v23);
          }

          if (v25)
          {
            v59 = *(a5 + 1072);
            if (*(a5 + 1072))
            {
              v60 = 0;
              do
              {
                v61 = *(v25 + 8 * v60);
                if (v61)
                {
                  heap_Free(*(*v6 + 8), v61);
                  v59 = *(a5 + 1072);
                }

                ++v60;
              }

              while (v60 < v59);
            }

            heap_Free(*(*v6 + 8), v25);
          }

          if (v43)
          {
            heap_Free(*(*v6 + 8), v43);
          }
        }
      }
    }
  }

LABEL_111:
  freeSentenceDataNN(*v6, v6[191]);
  return NNSentenceData;
}

uint64_t fe_phrasing_genLW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v33 = *(a2 + 1072);
  if (!*(a2 + 1072))
  {
    return 0;
  }

  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = 0;
  v34 = *a6;
  while (1)
  {
    v36 = 0;
    __lasts = 0;
    v35 = 0;
    v12 = *(a5 + 8 * v11);
    if (!v12)
    {
      return 2315264007;
    }

    v13 = v11;
    if (!*(a4 + 8 * v11) || !*(v8 + 8 * v11))
    {
      return 2315264007;
    }

    v14 = 0;
    if (strtok_r(v12, "-", &__lasts))
    {
      do
      {
        ++v14;
      }

      while (strtok_r(0, "-", &__lasts));
    }

    v15 = heap_Calloc(*(v10 + 8), 1, 8 * v14);
    v16 = (v34 + 24 * v13);
    *(v16 + 2) = v15;
    if (!v15)
    {
      break;
    }

    v17 = strlen(*(v9 + 1088));
    *(v16 + 1) = v17 + 1;
    v18 = heap_Calloc(*(v10 + 8), 1, (v17 + 1) * v14);
    *(v16 + 1) = v18;
    if (!v18)
    {
      break;
    }

    v19 = *(v8 + 8 * v13);
    v20 = a4;
    v21 = *(a4 + 8 * v13);
    *v16 = v14;
    v22 = strtok_r(v19, "-", &v36);
    v23 = strtok_r(v21, "-", &v35);
    v24 = 0;
    v25 = v22 != 0;
    v26 = v23 != 0;
    if (v22)
    {
      v27 = v23;
      if (v23)
      {
        v24 = 0;
        while (v24 <= v14)
        {
          strcpy((*(v16 + 2) + 8 * v24), v22);
          strcpy((*(v16 + 1) + *(v16 + 1) * v24), v27);
          v22 = strtok_r(0, "-", &v36);
          v28 = strtok_r(0, "-", &v35);
          ++v24;
          v25 = v22 != 0;
          v26 = v28 != 0;
          if (v22)
          {
            v27 = v28;
            if (v28)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        return 2315264015;
      }
    }

LABEL_16:
    if (v25 || v26)
    {
      return 2315264007;
    }

    if (*v16 != v24)
    {
      return 2315264015;
    }

    v11 = v13 + 1;
    a4 = v20;
    v10 = a1;
    v8 = a3;
    v9 = a2;
    if (v13 + 1 >= v33)
    {
      return 0;
    }
  }

  log_OutPublic(*(v10 + 32), "FE_PHRASING", 37000, 0, a2, a1, a3);
  return 2315264010;
}

uint64_t *fe_phrasing_ProcessIGTree(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1[191] + 1072);
  __s1 = 0;
  v4 = a1[206];
  if (v4)
  {
    v6 = a1;
    result = heap_Alloc(*(v2 + 8), 8 * *(v4 + 1296) - 8);
    v86 = result;
    if (!result)
    {
      return result;
    }

    if (*(v4 + 1296) == 1)
    {
LABEL_7:
      v85 = a2;
      if (!v3)
      {
LABEL_230:
        if (*(v4 + 1296) != 1)
        {
          v79 = (*(v4 + 1296) - 1);
          v80 = v86;
          do
          {
            v81 = *v80++;
            heap_Free(*(v2 + 8), v81);
            --v79;
          }

          while (v79);
        }

        return heap_Free(*(v2 + 8), v86);
      }

      v11 = 0;
      v82 = v3;
      v83 = v6;
      v84 = v4;
      while (1)
      {
        v12 = *(v4 + 1312);
        v13 = *(v4 + 1296);
        v14 = v6[191];
        v88 = 0;
        v15 = heap_Calloc(*(v2 + 8), 1, 2048);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (v13 < 2)
        {
          v20 = 0;
        }

        else
        {
          v17 = 0;
          v18 = (v13 - 1);
          while (1)
          {
            v19 = *(v12 + 8 * v17);
            if (*v19 == 112 && v19[1] == 119 && !v19[2])
            {
              break;
            }

            if (v18 == ++v17)
            {
              v20 = 0;
              goto LABEL_17;
            }
          }

          v88 = v17;
          v77 = fe_phrasing_feat_word(v14, v11, 0);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 0, v86, v77);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_17:
          v21 = 0;
          if (v18 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = (v13 - 1);
          }

          while (strcmp(*(v12 + 8 * v21), "pwlen"))
          {
            if (v22 == ++v21)
            {
              goto LABEL_25;
            }
          }

          v88 = v21;
          *v16 = 0;
          v23 = strlen(v16);
          fe_phrasing_feat_wordlen(v14, v11, 0, &v16[v23]);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 1, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_25:
          v24 = 0;
          while (strcmp(*(v12 + 8 * v24), "lpwlen"))
          {
            if (v22 == ++v24)
            {
              goto LABEL_30;
            }
          }

          v88 = v24;
          *v16 = 0;
          v25 = strlen(v16);
          fe_phrasing_feat_wordlen(v14, v11, -1, &v16[v25]);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 2, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_30:
          v26 = 0;
          while (strcmp(*(v12 + 8 * v26), "llpwlen"))
          {
            if (v22 == ++v26)
            {
              goto LABEL_35;
            }
          }

          v88 = v26;
          *v16 = 0;
          v27 = strlen(v16);
          fe_phrasing_feat_wordlen(v14, v11, -2, &v16[v27]);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 3, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_35:
          v28 = 0;
          while (strcmp(*(v12 + 8 * v28), "rpwlen"))
          {
            if (v22 == ++v28)
            {
              goto LABEL_40;
            }
          }

          v88 = v28;
          *v16 = 0;
          v29 = strlen(v16);
          fe_phrasing_feat_wordlen(v14, v11, 1, &v16[v29]);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 4, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_40:
          v30 = 0;
          v31 = 8 * v22;
          while (strcmp(*(v12 + v30), "rrpwlen"))
          {
            v30 += 8;
            if (v31 == v30)
            {
              goto LABEL_45;
            }
          }

          *v16 = 0;
          v32 = strlen(v16);
          fe_phrasing_feat_wordlen(v14, v11, 2, &v16[v32]);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 5, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_45:
          v33 = 0;
          while (strcmp(*(v12 + 8 * v33), "pos"))
          {
            if (v22 == ++v33)
            {
              goto LABEL_52;
            }
          }

          v88 = v33;
          v34 = "=";
          if (v11 < *(v14 + 1072))
          {
            v34 = *(*(v14 + 1064) + 184 * v11 + 48);
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 6, v86, v34);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_52:
          v35 = 0;
          while (strcmp(*(v12 + v35), "lpos"))
          {
            v35 += 8;
            if (v31 == v35)
            {
              goto LABEL_61;
            }
          }

          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v36 = *(*(v14 + 1064) + 184 * (v11 - 1) + 48);
          }

          else
          {
            v36 = "=";
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 7, v86, v36);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_61:
          v37 = 0;
          while (strcmp(*(v12 + v37), "rpos"))
          {
            v37 += 8;
            if (v31 == v37)
            {
              goto LABEL_68;
            }
          }

          v38 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            v38 = *(*(v14 + 1064) + 184 * (v11 + 1) + 48);
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 8, v86, v38);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_68:
          v39 = 0;
          while (strcmp(*(v12 + v39), "bpos"))
          {
            v39 += 8;
            if (v31 == v39)
            {
              goto LABEL_75;
            }
          }

          v40 = "=";
          if (v11 < *(v14 + 1072))
          {
            v40 = *(v85 + 24 * v11 + 16);
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 9, v86, v40);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_75:
          v41 = 0;
          while (strcmp(*(v12 + v41), "blpos"))
          {
            v41 += 8;
            if (v31 == v41)
            {
              goto LABEL_84;
            }
          }

          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v42 = *(v85 + 24 * (v11 - 1) + 16);
          }

          else
          {
            v42 = "=";
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 10, v86, v42);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_84:
          v43 = 0;
          while (strcmp(*(v12 + v43), "brpos"))
          {
            v43 += 8;
            if (v31 == v43)
            {
              goto LABEL_91;
            }
          }

          v44 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            v44 = *(v85 + 24 * (v11 + 1) + 16);
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 11, v86, v44);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_91:
          v45 = 0;
          while (strcmp(*(v12 + v45), "epos"))
          {
            v45 += 8;
            if (v31 == v45)
            {
              goto LABEL_98;
            }
          }

          v46 = "=";
          if (v11 < *(v14 + 1072))
          {
            v46 = (*(v85 + 24 * v11 + 16) + 8 * *(v85 + 24 * v11) - 8);
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 12, v86, v46);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_98:
          v47 = 0;
          while (strcmp(*(v12 + v47), "elpos"))
          {
            v47 += 8;
            if (v31 == v47)
            {
              goto LABEL_107;
            }
          }

          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v48 = (*(v85 + 24 * (v11 - 1) + 16) + 8 * *(v85 + 24 * (v11 - 1)) - 8);
          }

          else
          {
            v48 = "=";
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 13, v86, v48);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_107:
          v49 = 0;
          while (strcmp(*(v12 + 8 * v49), "erpos"))
          {
            if (v22 == ++v49)
            {
              goto LABEL_114;
            }
          }

          v88 = v49;
          v50 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            v50 = (*(v85 + 24 * (v11 + 1) + 16) + 8 * *(v85 + 24 * (v11 + 1)) - 8);
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 14, v86, v50);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_114:
          v51 = 0;
          while (strcmp(*(v12 + v51), "bchar"))
          {
            v51 += 8;
            if (v31 == v51)
            {
              goto LABEL_119;
            }
          }

          fe_phrasing_feat_character(v14, v11, 0, 0, v16);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 15, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_119:
          v52 = 0;
          while (strcmp(*(v12 + 8 * v52), "echar"))
          {
            if (v22 == ++v52)
            {
              goto LABEL_124;
            }
          }

          v88 = v52;
          fe_phrasing_feat_character(v14, v11, -1, 0, v16);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 16, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_124:
          v53 = 0;
          while (strcmp(*(v12 + v53), "elchar"))
          {
            v53 += 8;
            if (v31 == v53)
            {
              goto LABEL_129;
            }
          }

          fe_phrasing_feat_character(v14, v11, -1, -1, v16);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 17, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_129:
          v54 = 0;
          while (strcmp(*(v12 + 8 * v54), "erchar"))
          {
            if (v22 == ++v54)
            {
              goto LABEL_134;
            }
          }

          v88 = v54;
          fe_phrasing_feat_character(v14, v11, -1, 1, v16);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 18, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_134:
          v55 = 0;
          while (strcmp(*(v12 + v55), "blwword"))
          {
            v55 += 8;
            if (v31 == v55)
            {
              goto LABEL_141;
            }
          }

          v56 = "=";
          if (v11 < *(v14 + 1072))
          {
            v56 = *(v85 + 24 * v11 + 8);
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 19, v86, v56);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_141:
          v57 = 0;
          while (strcmp(*(v12 + 8 * v57), "elwword"))
          {
            if (v22 == ++v57)
            {
              goto LABEL_148;
            }
          }

          v88 = v57;
          v58 = "=";
          if (v11 < *(v14 + 1072))
          {
            v58 = (*(v85 + 24 * v11 + 8) + (*(v85 + 24 * v11) - 1) * *(v85 + 24 * v11 + 4));
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 20, v86, v58);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_148:
          v59 = 0;
          while (strcmp(*(v12 + v59), "lpw"))
          {
            v59 += 8;
            if (v31 == v59)
            {
              goto LABEL_153;
            }
          }

          v60 = fe_phrasing_feat_word(v14, v11, -1);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 21, v86, v60);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_153:
          v61 = 0;
          while (strcmp(*(v12 + v61), "rpw"))
          {
            v61 += 8;
            if (v31 == v61)
            {
              goto LABEL_158;
            }
          }

          v62 = fe_phrasing_feat_word(v14, v11, 1);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 22, v86, v62);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_158:
          v63 = 0;
          while (strcmp(*(v12 + 8 * v63), "blchar"))
          {
            if (v22 == ++v63)
            {
              goto LABEL_163;
            }
          }

          v88 = v63;
          fe_phrasing_feat_character(v14, v11, 0, -1, v16);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 23, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_163:
          v64 = 0;
          while (strcmp(*(v12 + v64), "brchar"))
          {
            v64 += 8;
            if (v31 == v64)
            {
              goto LABEL_168;
            }
          }

          fe_phrasing_feat_character(v14, v11, 0, 1, v16);
          v20 = fe_phrasing_setFeature(v2, v12, v13, 24, v86, v16);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_168:
          v65 = 0;
          while (strcmp(*(v12 + v65), "blpwword"))
          {
            v65 += 8;
            if (v31 == v65)
            {
              goto LABEL_177;
            }
          }

          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v66 = *(v85 + 24 * (v11 - 1) + 8);
          }

          else
          {
            v66 = "=";
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 25, v86, v66);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_177:
          v67 = 0;
          while (strcmp(*(v12 + v67), "brpwword"))
          {
            v67 += 8;
            if (v31 == v67)
            {
              goto LABEL_184;
            }
          }

          v68 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            v68 = *(v85 + 24 * (v11 + 1) + 8);
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 26, v86, v68);
          if (v20 < 0)
          {
            goto LABEL_225;
          }

LABEL_184:
          v69 = 0;
          while (strcmp(*(v12 + 8 * v69), "elpwword"))
          {
            if (v22 == ++v69)
            {
              goto LABEL_193;
            }
          }

          v88 = v69;
          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v70 = (*(v85 + 24 * (v11 - 1) + 8) + (*(v85 + 24 * (v11 - 1)) - 1) * *(v85 + 24 * (v11 - 1) + 4));
          }

          else
          {
            v70 = "=";
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 27, v86, v70);
          if (v20 < 0)
          {
LABEL_225:
            heap_Free(*(v2 + 8), v16);
            return heap_Free(*(v2 + 8), v86);
          }
        }

LABEL_193:
        if (fe_phrasing_isFeatureRequired(v12, v13, 28, &v88))
        {
          v71 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            v71 = (*(v85 + 24 * (v11 + 1) + 8) + (*(v85 + 24 * (v11 + 1)) - 1) * *(v85 + 24 * (v11 + 1) + 4));
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 28, v86, v71);
          if (v20 < 0)
          {
            goto LABEL_225;
          }
        }

        if (fe_phrasing_isFeatureRequired(v12, v13, 29, &v88))
        {
          v72 = "=";
          if (v11 < *(v14 + 1072))
          {
            if (**(*(v14 + 1064) + 184 * v11 + 56) - 48 >= 0xA)
            {
              v72 = "0";
            }

            else
            {
              v72 = "1";
            }
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 29, v86, v72);
          if (v20 < 0)
          {
            goto LABEL_225;
          }
        }

        if (fe_phrasing_isFeatureRequired(v12, v13, 30, &v88))
        {
          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v73 = **(*(v14 + 1064) + 184 * (v11 - 1) + 56) - 48 >= 0xA ? "0" : "1";
          }

          else
          {
            v73 = "=";
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 30, v86, v73);
          if (v20 < 0)
          {
            goto LABEL_225;
          }
        }

        if (fe_phrasing_isFeatureRequired(v12, v13, 31, &v88))
        {
          v74 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            if (**(*(v14 + 1064) + 184 * (v11 + 1) + 56) - 48 >= 0xA)
            {
              v74 = "0";
            }

            else
            {
              v74 = "1";
            }
          }

          v20 = fe_phrasing_setFeature(v2, v12, v13, 31, v86, v74);
        }

        heap_Free(*(v2 + 8), v16);
        v4 = v84;
        if (v20 < 0 || (igtree_Process(v84, v86, &__s1) & 0x80000000) != 0)
        {
          return heap_Free(*(v2 + 8), v86);
        }

        v75 = __s1;
        v6 = v83;
        if (strcmp(__s1, "NOMATCH"))
        {
          v76 = atoi(v75);
          if (v76 <= 3)
          {
            *(*(v83[191] + 1064) + 184 * v11 + 76) = v76;
          }
        }

        if (++v11 == v82)
        {
          goto LABEL_230;
        }
      }
    }

    else
    {
      v8 = (*(v4 + 1296) - 1);
      v9 = result;
      while (1)
      {
        v10 = heap_Calloc(*(v2 + 8), 1, 65);
        *v9 = v10;
        if (!v10)
        {
          break;
        }

        *v10 = 61;
        ++v9;
        if (!--v8)
        {
          goto LABEL_7;
        }
      }
    }

    log_OutPublic(*(v2 + 32), "FE_PHRASING", 37000, 0);
    return heap_Free(*(v2 + 8), v86);
  }

  v78 = *(v2 + 32);

  return log_OutText(v78, "FE_PHRASING", 0, 0, "IGTree model for phrasing does not exist. Skip processing IGTree.");
}