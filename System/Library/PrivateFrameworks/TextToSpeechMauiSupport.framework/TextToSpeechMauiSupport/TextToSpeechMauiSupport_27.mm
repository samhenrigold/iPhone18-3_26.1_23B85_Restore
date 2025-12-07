void *freeRules(void *result, void *a2)
{
  v3 = result;
  v4 = a2[80];
  if (v4)
  {
    result = heap_Free(result[1], v4);
  }

  v5 = a2[56];
  if (v5)
  {
    result = heap_Free(v3[1], v5);
  }

  v6 = a2[57];
  if (v6)
  {
    result = heap_Free(v3[1], v6);
  }

  v7 = a2[61];
  if (v7)
  {
    result = heap_Free(v3[1], v7);
  }

  v8 = a2[62];
  if (v8)
  {
    result = heap_Free(v3[1], v8);
  }

  v9 = a2[66];
  if (v9)
  {
    result = heap_Free(v3[1], v9);
  }

  v10 = a2[67];
  if (v10)
  {
    v11 = v3[1];

    return heap_Free(v11, v10);
  }

  return result;
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

uint64_t nn_model_getBrokerString(uint64_t a1, _BYTE *a2, const char *a3, size_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = 0;
  __s2 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__s1 = 0u;
  v13 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v10);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, a3);
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v10);
      v9 = brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, a4);
      return v9 & (v9 >> 31);
    }
  }

  return result;
}

uint64_t initFiModel(uint64_t a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, void *a10)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  memset(v28, 0, sizeof(v28));
  v26 = -1;
  BrokerString = (*(a8 + 96))(a6, a7, "fecfg", "statbnd_phrase_nn_type_joint", &v27, &v26, &v25);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v16 = 2315264010;
  if (v26)
  {
    v17 = *v27;
    v17[cstdlib_strlen(*v27) - 1] = 0;
    if (cstdlib_strcmp(*v27, "yes"))
    {
      *a9 = 0;
      v18 = *(a1 + 8);
      v19 = 16;
    }

    else
    {
      *a9 = 1;
      v18 = *(a1 + 8);
      v19 = 8;
    }

    v20 = heap_Alloc(v18, v19);
    if (!v20)
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      return v16;
    }

    v21 = v20;
    BrokerString = nn_model_getBrokerString(a1, v28, "nnphrase_", 0x100uLL);
    if ((BrokerString & 0x80000000) == 0)
    {
      v16 = fi_init(a2, a3, a4, a5, &v24, 0, v28, "FINN", 1031, 0);
      if ((v16 & 0x80000000) != 0)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "load FI model failed");
        return v16;
      }

      *v21 = v24;
      if (*a9)
      {
LABEL_11:
        *a10 = v21;
        return v16;
      }

      BrokerString = nn_model_getBrokerString(a1, v28, "nnword_", 0x100uLL);
      if ((BrokerString & 0x80000000) == 0)
      {
        v16 = fi_init(a2, a3, a4, a5, &v23, 0, v28, "FINN", 1031, 0);
        if ((v16 & 0x80000000) != 0)
        {
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "load FI pw model failed");
          return v16;
        }

        v21[1] = v23;
        goto LABEL_11;
      }
    }

    return BrokerString;
  }

  return 2315264020;
}

uint64_t loadEmbedding(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, _BOOL4 *a9)
{
  v26 = 0;
  v27 = 0;
  __s1 = 0;
  v24 = -1;
  v23 = 0;
  result = (*(a8 + 96))(a6, a7, "fecfg", "statbnd_embed_type", &v26, &v24, &v23);
  if ((result & 0x80000000) == 0)
  {
    result = 2315264020;
    if (v24)
    {
      if (v26)
      {
        v15 = *v26;
        v15[cstdlib_strlen(*v26) - 1] = 0;
        v16 = extstdlib_strtok_r(*v26, "|", &__s1);
        v17 = !cstdlib_strcmp(v16, "joint_char") && !cstdlib_strcmp(__s1, "joint_word");
        *a9 = v17;
        result = nn_word_lkp_GetInterface(1u, &v27);
        if ((result & 0x80000000) == 0)
        {
          *a5 = safeh_GetNullHandle();
          a5[1] = v18;
          a5[2] = safeh_GetNullHandle();
          a5[3] = v19;
          v20 = *(v27 + 16);
          v21 = *a4;
          v22 = a4[1];
          if (*a9)
          {
            result = v20(v21, v22, "joint_char", a1, a2, a5);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(v27 + 16))(*a4, a4[1], "joint_word", a1, a2, a5 + 2);
          }

          else
          {
            result = v20(v21, v22, "albert", a1, a2, a5);
          }

          if ((result & 0x80000000) == 0)
          {
            *a3 = v27;
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
  v33 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  memset(v32, 0, sizeof(v32));
  v17 = *a11;
  v30 = -1;
  (*(a9 + 96))(a7, a8, "fecfg", "statbnd_phrase_nn_type_joint", &v31, &v30, &v29);
  v18 = *v31;
  v18[cstdlib_strlen(*v31) - 1] = 0;
  v19 = cstdlib_strcmp(*v31, "yes");
  BrokerString = nn_model_getBrokerString(a1, v32, "nnphrase_", 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v21 = fi_init(a2, a3, a5, a6, &v28, 0, v32, "FINN", 1031, 0);
  if ((v21 & 0x80000000) != 0)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "load FI model failed");
    return v21;
  }

  if (!v17)
  {
    v22 = *(a1 + 8);
    if (v19)
    {
      v23 = heap_Alloc(v22, 16);
      if (v23)
      {
        v17 = v23;
        *v23 = v28;
LABEL_13:
        BrokerString = nn_model_getBrokerString(a1, v32, "nnword_", 0x100uLL);
        if ((BrokerString & 0x80000000) == 0)
        {
          v21 = fi_init(a2, a3, a5, a6, &v27, 0, v32, "FINN", 1031, 0);
          if ((v21 & 0x80000000) != 0)
          {
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "load FI pw model failed");
            return v21;
          }

          v17[1] = v27;
          goto LABEL_22;
        }

        return BrokerString;
      }
    }

    else
    {
      v25 = heap_Alloc(v22, 8);
      if (v25)
      {
        v17 = v25;
        *v25 = v28;
LABEL_22:
        *a10 = v19 == 0;
        *a11 = v17;
        return v21;
      }
    }

    v21 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return v21;
  }

  if (!*v17 || (v21 = fi_deinit(a1, a4, *v17), (v21 & 0x80000000) == 0))
  {
    if (*a10 || (v24 = v17[1]) == 0 || (v21 = fi_deinit(a1, a4, v24), (v21 & 0x80000000) == 0))
    {
      *v17 = v28;
      if (!v19)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }
  }

  return v21;
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
  while (cstdlib_strcmp(*a4, v8))
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
  v11 = cstdlib_strlen(*(*(*a2 + 224 * a3 + 16) + 8));
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
    while (cstdlib_strcmp(v13, *a4))
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
    v10 = a5;
    while (!cstdlib_strstr(*(*(*a2 + 224 * a3 + 16) + 8), *a4))
    {
      ++a4;
      if (!--v10)
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
      while (cstdlib_strcmp(*a4, __s2))
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
  v16 = 0;
  *__s2 = 0;
  if (result)
  {
    LODWORD(v5) = a5;
    v7 = **(*a2 + 224 * a3 + 16);
    v8 = cstdlib_strlen(v7);
    v9 = cstdlib_strlen(v7);
    v10 = v8 - utf8_GetCurrentUtf8Offset(v7, v9 - 1);
    v11 = cstdlib_strlen(v7);
    CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v7, v11 - 1);
    if (v10 >= Utf8_LengthInBytes(&v7[CurrentUtf8Offset], 1))
    {
      v13 = cstdlib_strlen(v7);
      v14 = utf8_GetCurrentUtf8Offset(v7, v13 - 1);
      utf8_getUTF8Char(v7, v14, __s2);
    }

    if (v5)
    {
      v5 = v5;
      while (cstdlib_strcmp(*a4, __s2))
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
    v10 = (a4 - 1);
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
    *(v15 + 8) = cstdlib_atoi(v10);
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
    if (!cstdlib_strcmp(v13, "last-pos"))
    {
      *v15 = last_POS;
    }

    if (!cstdlib_strcmp(v13, "first-pos"))
    {
      *v15 = first_POS;
    }

    if (!cstdlib_strcmp(v13, "has-pos"))
    {
      *v15 = has_POS;
    }

    if (!cstdlib_strcmp(v13, "first-character"))
    {
      *v15 = first_character;
    }

    if (!cstdlib_strcmp(v13, "last-character"))
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
      cstdlib_strcpy(v25, v18);
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
  v18 = (a1 + 736);
  if (((*(a1 + 744) - 1) & 0x8000) != 0)
  {
LABEL_21:
    v16 = *(a1 + 1108);
    v17 = *(a1 + 1096);

    return printLevel(v16, (a1 + 1088), v17, (a1 + 1104), (a1 + 672), (a1 + 8), v18, "AFTER SET PHRASE PROMINENCE");
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

      v4 = *v18;
      v5 = (*v18 + 32 * v2);
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
              if (!cstdlib_strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 296) + 4 * i))), *(*(*(a1 + 672) + 224 * v9 + 16) + 8 * *(a1 + 26))))
              {
                v11 = *(a1 + 672) + 224 * v9;
                v12 = v7 == 0;
                v7 = 1;
                if (v12)
                {
                  v13 = 2;
                }

                else
                {
                  v13 = 1;
                }

                if (v12)
                {
                  v14 = "set word[%d] %s to _MAINACCENT";
                }

                else
                {
                  v14 = "set word[%d] %s to _ACCENTED";
                }

                *(v11 + 72) = v13;
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, v14, v9, *(*(v11 + 16) + 8 * *(a1 + 24)));
              }

              v8 = *(a1 + 304);
            }

            v4 = *v18;
          }

          v6 = (v9 - 1);
        }

        while (v6 >= *(v4 + 32 * v2));
      }

      if (v2-- < 1)
      {
        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t setCompoundProminences(uint64_t a1)
{
  v36 = 0;
  v34 = 0;
  v35 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setCompoundProminences()", 0);
  v2 = *(a1 + 744) - 1;
  if ((v2 & 0x8000) == 0)
  {
    v3 = (a1 + 672);
    memset(v33, 0, sizeof(v33));
    v31 = v2;
    v32 = 0;
    while (1)
    {
      v4 = v31;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing (phrase) node %d", v31);
      matched = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), (*(a1 + 736) + 32 * v4), v4);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      v6 = (*(a1 + 736) + 32 * v31);
      v7 = (v6[1] - 1);
      v8 = *v6;
      if (v7 >= v8)
      {
        break;
      }

LABEL_5:
      v31 = v4 - 1;
      if (v4 < 1)
      {
        return matched;
      }
    }

    while (1)
    {
      v9 = *(*v3 + 224 * v7 + 56);
      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = v9 + 32 * v10;
        if (*(v11 + 4) == 1)
        {
          v12 = *(v11 + 8);
          if (v12 >= v8 && !cstdlib_strcmp(*(*(*v3 + 224 * *(v11 + 8) + 56) + 32 * v10 + 16), "NP"))
          {
            break;
          }
        }
      }

LABEL_13:
      v7 = (v7 - 1);
      v8 = *(*(a1 + 736) + 32 * v31);
      if (v7 < v8)
      {
        goto LABEL_5;
      }
    }

    v13 = v7;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  processing (NP phrase) node %d,%d", v12, v7);
    v36 = 0;
    v34 = 0;
    v35 = 0;
    if (v7 < v12)
    {
LABEL_12:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    no rules fire", 0);
      v4 = v31;
      goto LABEL_13;
    }

    v14 = v7;
    while (1)
    {
      v15 = v14;
      v16 = *v3 + 224 * v14;
      v17 = v14 - 1;
      v18 = *(v16 + 72) != 2 || v14 < 1;
      if (!v18 && v13 > v12)
      {
        v20 = *v3 + 224 * (v14 - 1);
        if (*(v20 + 72) == 1)
        {
          v30 = (v14 - 1);
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    found PRM pattern word[%d]=%s PRM=%d word[%d]=%s PRM=%d : apply rules", v30, *(*(v20 + 16) + 8 * *(a1 + 24)), 1, v14, *(*(v16 + 16) + 8 * *(a1 + 24)), 2);
          *&v33[4] = v14;
          *v33 = 1;
          *&v33[6] = 0;
          if (*(a1 + 320))
          {
            break;
          }
        }
      }

LABEL_24:
      v13 = v17;
      v14 = v17;
      if (v17 < v12)
      {
        goto LABEL_12;
      }
    }

    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = *(a1 + 312);
      v24 = v22;
      v25 = *(v23 + 24 * v22);
      if (v25)
      {
        matched = matchPANDPCONTEXT_TRule("LEFT", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v25, v33, &v36, &v32, 1);
        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }

        if (v36 != 1)
        {
          goto LABEL_43;
        }

        v23 = *(a1 + 312);
      }

      else
      {
        v36 = 1;
      }

      v26 = *(v23 + 24 * v24 + 8);
      if (v26)
      {
        matched = matchPANDPCONTEXT_TRule("CUR", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v26, v33, &v35, &v32, 0);
        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }

        if (v35 != 1)
        {
          goto LABEL_43;
        }

        v23 = *(a1 + 312);
      }

      else
      {
        v35 = 1;
      }

      v27 = *(v23 + 24 * v24 + 16);
      if (v27)
      {
        matched = matchPANDPCONTEXT_TRule("RIGHT", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v27, v33, &v34, &v32, 2);
        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }
      }

      else
      {
        v34 = 1;
      }

LABEL_43:
      if (v36 == 1 && v35 == 1 && v34 == 1)
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  stress shift rule %d FIRED", v21);
        v28 = *(a1 + 672);
        *(v28 + 224 * v15 + 72) = 1;
        v4 = v31;
        *(v28 + 224 * v30 + 72) = 2;
        goto LABEL_13;
      }

      v22 = v24 + 1;
      v21 = (v24 + 1);
      if (v21 >= *(a1 + 320))
      {
        goto LABEL_24;
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

uint64_t logPANDPRULE_TRule(uint64_t result, const char **a2, unsigned __int16 *a3, char *__s, uint64_t *a5, uint64_t **a6)
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

uint64_t logPANDPCONTEXT_TRule(const char **a1, unsigned __int16 *a2, char *__s, uint64_t *a4, uint64_t *a5)
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

      result = add2Str(*a4, a1, a2, __s);
      if (v15)
      {
        if ((result & 0x80000000) == 0)
        {
LABEL_13:
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

  cstdlib_memset(a1, 0, 0x298uLL);
  return v5;
}

uint64_t do_pcre_exec(void *a1, unsigned int a2, char *a3, _DWORD *a4, uint64_t a5, _DWORD *a6)
{
  v15 = *MEMORY[0x277D85DE8];
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
  v20 = *MEMORY[0x277D85DE8];
  if (!__s)
  {
    return 2315264007;
  }

  *a3 = 0;
  v10 = a1[81];
  v11 = cstdlib_strlen(__s);
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

uint64_t matchPANDPCONTEXT_TRule(const char *a1, const char **a2, unsigned __int16 *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, int *a9, _WORD *a10, int a11)
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
    cstdlib_strcpy(*a2, "");
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
  v37 = 0;
  v14 = *(a4 + 2);
  v36 = *(a4 + 2);
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

    v35 = v9;
    v16 = a6;
    v17 = (v15 >> 1) & 1;
    v18 = (v15 >> 3) & 1;
    v19 = (v15 >> 4) & 1;
    v34 = v15 & 1;
    v15 = v34;
  }

  else
  {
    v35 = v9;
    v16 = a6;
    v34 = 0;
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

    v9 = v35;
    v21 = 0;
    v22 = *(*a2 + 224 * v20 + 28);
LABEL_24:
    v25 = v34 ^ (v22 == 1);
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

    v9 = v35;
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

    v9 = v35;
    v21 = 0;
    v22 = *(*a2 + 224 * v24 + 44);
    goto LABEL_24;
  }

  v27 = *a4;
  v28 = v16;
  if (*a4 - 1 <= 2)
  {
    v9 = v35;
    switch(v7)
    {
      case 0:
        goto LABEL_39;
      case 2:
        v14 += *(a4 + 4) + 1;
        if (v14 < *(a2 + 8))
        {
LABEL_37:
          v36 = v14;
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

  v9 = v35;
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
      if (!v34)
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

  v30 = adjustWordIdxByWindow(a1, a2, a4, v7, &v37, &v36);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v25 = v37;
  if (!v37)
  {
LABEL_61:
    v21 = 0;
    goto LABEL_30;
  }

  v29 = *(*(*a2 + 224 * v36 + 64) + 8 * *a3);
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

  v32 = a3[1];
  v33 = cstdlib_strlen(v29);
  v21 = do_pcre_exec(a1, v32, v29, v33, 0, v9);
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

      if (v34)
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

uint64_t matchPANDPRULE_TRule(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t **a7, unsigned int *a8, int *a9)
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
    cstdlib_strcpy(*a2, "");
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

  if (!cstdlib_strcmp((*(a1 + 528) + *(*(a1 + 536) + 4 * *a3)), *(*(*a2 + 224 * *(a4 + 4) + 16) + 8 * *(a1 + 16))))
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

uint64_t matchMAPRULE2NUMANDOPERATOR_TRule(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int *a8, int *a9, unsigned __int16 *a10)
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

uint64_t matchMAPRULE2NUM_TRule(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, int *a9, _DWORD *a10)
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
  v16 = 0;
  __s1 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "pandpdetailtrace", &v16) & 0x80000000) == 0)
  {
    *(a5 + 8) = v16;
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdweakbnd", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 368), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdbndvalweak", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 372), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdbndvalstrong", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 376), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdweakfrag", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 380), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpprevfactor", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 384), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpnextfactor", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 388), v16, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpbndfactor", &v16) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 392), v16, 0);
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "pandpphrasesize", &__s1) & 0x80000000) == 0)
  {
    if (cstdlib_strcmp(__s1, "min"))
    {
      if (!cstdlib_strcmp(__s1, "default"))
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

    else
    {
      FLOATSUR_SET_INT((a5 + 372), 0, 0);
      FLOATSUR_SET_INT((a5 + 380), 0, 0);
    }
  }

  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v10 = (*(a4 + 96))(a2, a3, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) == 0)
  {
    if (*&__c[1] != 1 || !*&__c[3])
    {
      goto LABEL_29;
    }

    v11 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v11)
    {
      *v11 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v16) & 0x80000000) != 0)
      {
        *(a5 + 656) = 1;
        v12 = *(a1 + 40);
        v13 = 1;
        goto LABEL_36;
      }
    }

    else
    {
LABEL_29:
      if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v16) & 0x80000000) != 0)
      {
        *(a5 + 656) = 0;
        v12 = *(a1 + 40);
        v13 = 0;
LABEL_36:
        paramc_ParamSetInt(v12, "statcompwidescope", v13);
        return v10;
      }
    }

    if (v16)
    {
      *(a5 + 656) = 1;
    }

    else
    {
      *(a5 + 656) = 0;
    }
  }

  return v10;
}

uint64_t readPandPRules(_WORD *a1, uint64_t a2, void *a3, void *a4)
{
  v105 = *MEMORY[0x277D85DE8];
  v103 = 0;
  v102 = 0;
  v100 = 0;
  *__s2 = 0;
  v98 = 0;
  __src = 0;
  memset(v104, 0, sizeof(v104));
  __s1 = 0;
  *a4 = a3;
  if ((paramc_ParamGetStr(a3[5], "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
  {
    goto LABEL_173;
  }

  log_OutText(a3[4], "FE_PHRASING", 5, 0, "trying to load voice-dependent PandP rules", 0);
  BrokerString = getBrokerString(a3, 1, v104);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  if ((brk_DataOpenEx(a3[3], v104, 1, &v98) & 0x80000000) != 0)
  {
    log_OutText(a3[4], "FE_PHRASING", 5, 0, "trying to load legacy voice-dependent PandP MS rules", 0);
    BrokerString = getLegacyBrokerString(a3, v104);
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }

    if ((brk_DataOpenEx(a3[3], v104, 1, &v98) & 0x80000000) != 0)
    {
LABEL_173:
      log_OutText(a3[4], "FE_PHRASING", 5, 0, "trying to load voice-independent PandP rules", 0);
      BrokerString = getBrokerString(a3, 0, v104);
      if ((BrokerString & 0x80000000) != 0)
      {
        return BrokerString;
      }

      BrokerString = brk_DataOpenEx(a3[3], v104, 1, &v98);
      if ((BrokerString & 0x80000000) != 0)
      {
        return BrokerString;
      }
    }
  }

  BrokerString = brk_DataClose(a3[3], v98);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 0, v104, "PANP", 1031, &v103);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v9 = "PAUD";
  do
  {
    LODWORD(v10) = ssftriff_reader_OpenChunk(v103, __s2, &v100, &__src);
    if ((v10 & 0x80000000) != 0)
    {
      break;
    }

    if (!cstdlib_strcmp("CFIG", __s2))
    {
      v12 = __src;
      cstdlib_memcpy(a4 + 10, __src, 2uLL);
      cstdlib_memcpy(a4 + 12, v12 + 2, 2uLL);
      cstdlib_memcpy(a4 + 14, v12 + 4, 2uLL);
LABEL_66:
      LODWORD(v10) = 0;
      goto LABEL_67;
    }

    if (!cstdlib_strcmp("STSE", __s2))
    {
      v13 = __src;
      cstdlib_memcpy(a4 + 5, __src, 2uLL);
      v14 = heap_Calloc(*(*a4 + 8), 1, (8 * *(a4 + 20)) | 1);
      a4[4] = v14;
      if (!v14)
      {
        goto LABEL_165;
      }

      if (*(a4 + 20))
      {
        v15 = 0;
        v16 = 4;
        v17 = 2;
        do
        {
          cstdlib_memcpy((a4[4] + v16 - 4), &v13[v17], 4uLL);
          v18 = v17 + 4;
          cstdlib_memcpy((a4[4] + v16), &v13[v18], 4uLL);
          v17 = v18 + 4;
          ++v15;
          v16 += 8;
        }

        while (v15 < *(a4 + 20));
      }

      goto LABEL_66;
    }

    if (!cstdlib_strcmp(v9, __s2))
    {
      v19 = __src;
      cstdlib_memcpy(a4 + 7, __src, 2uLL);
      LODWORD(v96) = 2;
      v20 = heap_Calloc(*(*a4 + 8), 1, (8 * *(a4 + 28)) | 1);
      a4[6] = v20;
      if (!v20)
      {
        goto LABEL_165;
      }

      v21 = v9;
      if (*(a4 + 28))
      {
        v22 = 0;
        v23 = 4;
        do
        {
          v24 = (a4[6] + v23);
          v25 = v96;
          cstdlib_memcpy(v24 - 2, &v19[v96], 4uLL);
          LODWORD(v96) = v25 + 4;
          readTWOPARTNUM(v19, &v96, v24);
          ++v22;
          v23 += 8;
        }

        while (v22 < *(a4 + 28));
      }

LABEL_44:
      LODWORD(v10) = 0;
      v9 = v21;
      goto LABEL_67;
    }

    if (!cstdlib_strcmp("DEFM", __s2))
    {
      v26 = __src;
      cstdlib_memcpy(a4 + 9, __src, 2uLL);
      cstdlib_memcpy(a4 + 74, v26 + 2, 2uLL);
      v27 = heap_Calloc(*(*a4 + 8), 1, (8 * *(a4 + 36)) | 1);
      a4[8] = v27;
      if (!v27)
      {
        goto LABEL_165;
      }

      LODWORD(v28) = *(a4 + 37);
      if (*(a4 + 37))
      {
        v29 = 0;
        v30 = 4;
        v31 = 4;
        do
        {
          cstdlib_memcpy((a4[8] + v30), &v26[v31], 4uLL);
          v31 += 4;
          ++v29;
          v28 = *(a4 + 37);
          v30 += 8;
        }

        while (v29 < v28);
      }

      else
      {
        v31 = 4;
      }

      if (v28 < *(a4 + 36))
      {
        v42 = &v26[v31];
        v43 = 8 * v28;
        v44 = v28;
        do
        {
          cstdlib_memcpy((a4[8] + v43), v42, 4uLL);
          cstdlib_memcpy((a4[8] + v43 + 4), v42 + 4, 4uLL);
          ++v44;
          v42 += 8;
          v43 += 8;
        }

        while (v44 < *(a4 + 36));
      }

      goto LABEL_66;
    }

    if (!cstdlib_strcmp("RTAG", __s2))
    {
      v32 = __src;
      cstdlib_memcpy(a4 + 11, __src, 2uLL);
      LODWORD(v96) = 2;
      v33 = heap_Calloc(*(*a4 + 8), 1, (32 * *(a4 + 44)) | 1);
      a4[10] = v33;
      if (!v33)
      {
        goto LABEL_165;
      }

      v21 = v9;
      if (*(a4 + 44))
      {
        v34 = 0;
        v35 = 8;
        while (1)
        {
          v36 = v96;
          cstdlib_memcpy((a4[10] + v35 - 8), &v32[v96], 4uLL);
          LODWORD(v96) = v36 + 4;
          BrokerString = readRULE(*a4, v32, &v96, (a4[10] + v35));
          if ((BrokerString & 0x80000000) != 0)
          {
            return BrokerString;
          }

          ++v34;
          v35 += 32;
          if (v34 >= *(a4 + 44))
          {
            goto LABEL_44;
          }
        }
      }

      goto LABEL_44;
    }

    if (!cstdlib_strcmp("STAG", __s2))
    {
      v37 = __src;
      cstdlib_memcpy(a4 + 13, __src, 2uLL);
      LODWORD(v96) = 2;
      v38 = heap_Calloc(*(*a4 + 8), 1, (32 * *(a4 + 52)) | 1);
      a4[12] = v38;
      if (!v38)
      {
        goto LABEL_165;
      }

      v21 = v9;
      if (*(a4 + 52))
      {
        v39 = 0;
        v40 = 8;
        while (1)
        {
          v41 = v96;
          cstdlib_memcpy((a4[12] + v40 - 8), &v37[v96], 4uLL);
          LODWORD(v96) = v41 + 4;
          BrokerString = readRULE(*a4, v37, &v96, (a4[12] + v40));
          if ((BrokerString & 0x80000000) != 0)
          {
            return BrokerString;
          }

          ++v39;
          v40 += 32;
          if (v39 >= *(a4 + 52))
          {
            goto LABEL_44;
          }
        }
      }

      goto LABEL_44;
    }

    if (!cstdlib_strcmp("TPOS", __s2))
    {
      v46 = __src;
      cstdlib_memcpy(a4 + 15, __src, 2uLL);
      LODWORD(v96) = 2;
      v47 = heap_Calloc(*(*a4 + 8), 1, (32 * *(a4 + 60)) | 1);
      a4[14] = v47;
      if (!v47)
      {
        goto LABEL_165;
      }

      v21 = v9;
      if (*(a4 + 60))
      {
        v48 = 0;
        v49 = 8;
        while (1)
        {
          v50 = v96;
          cstdlib_memcpy((a4[14] + v49 - 8), &v46[v96], 4uLL);
          LODWORD(v96) = v50 + 4;
          BrokerString = readRULE(*a4, v46, &v96, (a4[14] + v49));
          if ((BrokerString & 0x80000000) != 0)
          {
            return BrokerString;
          }

          ++v48;
          v49 += 32;
          if (v48 >= *(a4 + 60))
          {
            goto LABEL_44;
          }
        }
      }

      goto LABEL_44;
    }

    if (!cstdlib_strcmp("TDEF", __s2))
    {
      v51 = __src;
      cstdlib_memcpy(a4 + 18, __src, 2uLL);
      v52 = heap_Calloc(*(*a4 + 8), 1, (4 * *(a4 + 72)) | 1);
      a4[17] = v52;
      if (!v52)
      {
        goto LABEL_165;
      }

      LOWORD(__dst) = 0;
      if (*(a4 + 72))
      {
        v53 = 0;
        v54 = v51 + 2;
        v55 = 2;
        do
        {
          cstdlib_memcpy(&__dst, v54, 2uLL);
          *(a4[17] + 4 * v53++) = __dst;
          v56 = *(a4 + 72);
          v54 += 2;
          v55 += 2;
        }

        while (v53 < v56);
        v57 = (8 * v56) | 1;
      }

      else
      {
        v55 = 2;
        v57 = 1;
      }

      LODWORD(v96) = v55;
      v58 = heap_Calloc(*(*a4 + 8), 1, v57);
      a4[16] = v58;
      if (!v58)
      {
LABEL_165:
        v10 = 2315264010;
        log_OutPublic(*(*a4 + 32), "FE_PHRASING", 37000, 0);
        return v10;
      }

      if (*(a4 + 72))
      {
        v59 = 0;
        do
        {
          v60 = *(*a4 + 8);
          if (*(a4[17] + 4 * v59) == 1)
          {
            *(a4[16] + 8 * v59) = heap_Calloc(v60, 1, 13);
            v61 = *(a4[16] + 8 * v59);
            if (!v61)
            {
              goto LABEL_165;
            }

            readREGEX(v51, &v96, v61);
            v62 = (*(a4[16] + 8 * v59) + 8);
            v63 = v96;
          }

          else
          {
            *(a4[16] + 8 * v59) = heap_Calloc(v60, 1, 9);
            v64 = *(a4[16] + 8 * v59);
            if (!v64)
            {
              goto LABEL_165;
            }

            cstdlib_memcpy(v64, &v51[v55], 4uLL);
            v63 = v55 + 4;
            v62 = (*(a4[16] + 8 * v59) + 4);
          }

          cstdlib_memcpy(v62, &v51[v63], 4uLL);
          v55 = v63 + 4;
          LODWORD(v96) = v55;
          ++v59;
        }

        while (v59 < *(a4 + 72));
      }

      goto LABEL_66;
    }

    if (!cstdlib_strcmp("GENR", __s2))
    {
      BrokerString = readGeneralRulesCHUNK(__src, a4);
      if ((BrokerString & 0x80000000) != 0)
      {
        return BrokerString;
      }

      goto LABEL_66;
    }

    if (!cstdlib_strcmp("TOKR", __s2))
    {
      TokenRulesCHUNK = readTokenRulesCHUNK(__src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("PWGT", __s2))
    {
      TokenRulesCHUNK = readPhraseWeightsCHUNK(__src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("NUMS", __s2))
    {
      TokenRulesCHUNK = readNumSettingsCHUNK(__src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("PROM", __s2))
    {
      TokenRulesCHUNK = readProminenceCHUNK(__src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("REGX", __s2))
    {
      TokenRulesCHUNK = readRegexCHUNK(v103, __src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("STRS", __s2))
    {
      TokenRulesCHUNK = readStringCHUNK(v103, __src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("REST", __s2))
    {
      TokenRulesCHUNK = readRegexStringCHUNK(v103, __src, a4);
      goto LABEL_105;
    }

    if (!cstdlib_strcmp("MSDF", __s2))
    {
      BrokerString = readMSCHUNK(__src, a4);
      if ((BrokerString & 0x80000000) != 0)
      {
        return BrokerString;
      }

      goto LABEL_66;
    }

    if (!cstdlib_strcmp("PHRT", __s2))
    {
      TokenRulesCHUNK = readPhraseTypeCHUNK(__src, a4);
LABEL_105:
      v10 = TokenRulesCHUNK;
      if ((TokenRulesCHUNK & 0x80000000) != 0)
      {
        return v10;
      }

      goto LABEL_67;
    }

    if (!cstdlib_strcmp("CMPD", __s2))
    {
      TokenRulesCHUNK = readMSCOMPOUNDDEFCHUNK(__src, a4);
      goto LABEL_105;
    }

LABEL_67:
    v45 = ssftriff_reader_CloseChunk(v103);
    if (v45 < 0)
    {
      LODWORD(v10) = v45;
    }
  }

  while ((v10 & 0x80000000) == 0);
  if ((v10 & 0x1FFF) == 0x14)
  {
    v66 = 0;
  }

  else
  {
    v66 = v10;
  }

  if ((v66 & 0x1FFF) == 0xA)
  {
    return 2315264010;
  }

  v67 = ssftriff_reader_ObjClose(v103);
  v103 = 0;
  if (v67 >= 0 || v66 <= -1)
  {
    v10 = v66;
  }

  else
  {
    v10 = v67;
  }

  if (*(a4 + 37))
  {
    v69 = 0;
    v70 = 4;
    do
    {
      if (cstdlib_strcmp("ORT", (a4[66] + *(a4[67] + 4 * *(a4[8] + v70)))))
      {
        if (cstdlib_strcmp("POS", (a4[66] + *(a4[67] + 4 * *(a4[8] + v70)))))
        {
          if (cstdlib_strcmp("TOK", (a4[66] + *(a4[67] + 4 * *(a4[8] + v70)))))
          {
            if (cstdlib_strcmp("TOKT", (a4[66] + *(a4[67] + 4 * *(a4[8] + v70)))))
            {
              if (!cstdlib_strcmp("PHR", (a4[66] + *(a4[67] + 4 * *(a4[8] + v70)))))
              {
                *(a4 + 12) = v69;
              }
            }

            else
            {
              *(a4 + 11) = v69;
            }
          }

          else
          {
            *(a4 + 10) = v69;
          }
        }

        else
        {
          *(a4 + 9) = v69;
        }
      }

      else
      {
        *(a4 + 8) = v69;
      }

      ++v69;
      v70 += 8;
    }

    while (v69 < *(a4 + 37));
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
    goto LABEL_166;
  }

  v71 = 0;
  v72 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v73 = 0;
  v74 = 0;
  do
  {
    if (cstdlib_strcmp((a4[66] + *(a4[67] + 4 * *(a4[34] + v71))), "threshold_weak_bnd"))
    {
      if (cstdlib_strcmp((a4[66] + *(a4[67] + 4 * *(a4[34] + v71))), "threshold_bnd_val_weak"))
      {
        if (cstdlib_strcmp((a4[66] + *(a4[67] + 4 * *(a4[34] + v71))), "threshold_bnd_val_strong"))
        {
          if (cstdlib_strcmp((a4[66] + *(a4[67] + 4 * *(a4[34] + v71))), "threshold_weak_frag"))
          {
            if (cstdlib_strcmp((a4[66] + *(a4[67] + 4 * *(a4[34] + v71))), "prevFactor"))
            {
              if (cstdlib_strcmp((a4[66] + *(a4[67] + 4 * *(a4[34] + v71))), "nextFactor"))
              {
                if (cstdlib_strcmp((a4[66] + *(a4[67] + 4 * *(a4[34] + v71))), "bndFactor"))
                {
                  if (!cstdlib_strcmp((a4[66] + *(a4[67] + 4 * *(a4[34] + v71))), "mapfromBIO") && !FLOATSUR_EQUAL_INT((a4[34] + v71 + 4), 0, 0))
                  {
                    log_OutText(a3[4], "FE_PHRASING", 1, 0, "mapfromBIO PandP setting is no longer honored");
                  }
                }

                else
                {
                  v81 = *(a4[34] + v71 + 4);
                  *(a4 + 98) = v81;
                  *(a4 + 105) = v81;
                  LODWORD(v92) = 1;
                }
              }

              else
              {
                v80 = *(a4[34] + v71 + 4);
                *(a4 + 97) = v80;
                *(a4 + 104) = v80;
                HIDWORD(v92) = 1;
              }
            }

            else
            {
              v79 = *(a4[34] + v71 + 4);
              *(a4 + 96) = v79;
              *(a4 + 103) = v79;
              LODWORD(v93) = 1;
            }
          }

          else
          {
            v78 = *(a4[34] + v71 + 4);
            *(a4 + 95) = v78;
            *(a4 + 102) = v78;
            HIDWORD(v93) = 1;
          }
        }

        else
        {
          v77 = *(a4[34] + v71 + 4);
          *(a4 + 94) = v77;
          *(a4 + 101) = v77;
          v94 = 1;
        }
      }

      else
      {
        v76 = *(a4[34] + v71 + 4);
        *(a4 + 93) = v76;
        *(a4 + 100) = v76;
        v73 = 1;
      }
    }

    else
    {
      v75 = *(a4[34] + v71 + 4);
      *(a4 + 92) = v75;
      *(a4 + 99) = v75;
      v74 = 1;
    }

    ++v72;
    v71 += 8;
  }

  while (v72 < *(a4 + 140));
  if (!v74 || !v73 || !v94 || !HIDWORD(v93) || !v93 || !HIDWORD(v92) || !v92)
  {
LABEL_166:
    v89 = a3[4];
    v90 = 62004;
LABEL_168:
    log_OutPublic(v89, "FE_PHRASING", v90, 0, v91);
    return 2315264000;
  }

  v96 = 0;
  __dst = 0;
  StrSetting = getStrSetting(a4, "COMPOUND_FEATURE_STR");
  if (!StrSetting || (v83 = StrSetting, v84 = getStrSetting(a4, "COMPOUND_START_TAG"), (a4[80] = v84) == 0))
  {
    v89 = a3[4];
    v90 = 62000;
    goto LABEL_168;
  }

  v85 = a3[1];
  v86 = cstdlib_strlen(v83);
  v87 = heap_Calloc(v85, 1, v86 + 3);
  if (!v87)
  {
    log_OutPublic(a3[4], "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  v88 = v87;
  cstdlib_strcpy(v87, ",");
  cstdlib_strcat(v88, v83);
  cstdlib_strcat(v88, ",");
  a4[81] = nuance_pcre_compile(a4[53], a4[54], v88, 0, &v96, &__dst, 0);
  heap_Free(a3[1], v88);
  if (!a4[81])
  {
    log_OutPublic(a3[4], "FE_PHRASING", 11006, "%s%s%s%s%s%d", "regularExpression", ",A[0-9]+,");
    return 2315264000;
  }

  return v10;
}

uint64_t getBrokerString(uint64_t a1, int a2, _BYTE *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  __s = 0;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__s1 = 0u;
  *__s2 = 0;
  *a3 = 0;
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
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __s = __s2;
    }

    cstdlib_strcat(__s1, "pandp");
    cstdlib_strcat(__s1, "/");
    cstdlib_strcat(__s1, __s);
    if (a2 == 1)
    {
      result = paramc_ParamGetStr(*(a1 + 40), "voice", &v12);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_strcat(__s1, "/");
      cstdlib_strcat(__s1, v12);
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    return brokeraux_ComposeBrokerString(a1, __s1, 0, 1, __s, v10, 0, a3, 0x80uLL);
  }

  return result;
}

uint64_t getLegacyBrokerString(uint64_t a1, _BYTE *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = 0;
  __s = 0;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__s1 = 0u;
  *__s2 = 0;
  *a2 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((result & 0x80000000) == 0)
  {
    v5 = 0;
    if (cstdlib_strlen(__s))
    {
      do
      {
        v6 = v5;
        __s2[v5] = cstdlib_tolower(__s[v5]);
        ++v5;
        v7 = cstdlib_strlen(__s);
      }

      while (v6 <= 1 && v5 < v7);
    }

    __s2[v5] = 0;
    if (cstdlib_strcmp(__s, __s2))
    {
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __s = __s2;
    }

    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v9);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "pandp");
      cstdlib_strcat(__s1, "/ms/");
      cstdlib_strcat(__s1, __s);
      cstdlib_strcat(__s1, "/");
      cstdlib_strcat(__s1, v9);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s, v9, 0, a2, 0x80uLL);
    }
  }

  return result;
}

uint64_t readGeneralRulesCHUNK(void *__src, uint64_t *a2)
{
  cstdlib_memcpy(a2 + 20, __src, 2uLL);
  v8 = 2;
  v4 = heap_Calloc(*(*a2 + 8), 1, (32 * *(a2 + 80)) | 1);
  a2[19] = v4;
  if (v4)
  {
    if (*(a2 + 80))
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        result = readRULE(*a2, __src, &v8, (a2[19] + v5 + 8));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        readTWOPARTNUM(__src, &v8, (a2[19] + v5));
        ++v6;
        v5 += 32;
        if (v6 >= *(a2 + 80))
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

uint64_t readTokenRulesCHUNK(char *__src, void *a2)
{
  cstdlib_memcpy(a2 + 21, __src, 2uLL);
  cstdlib_memcpy(a2 + 23, __src + 2, 2uLL);
  v25 = 4;
  v4 = heap_Calloc(*(*a2 + 8), 1, (40 * *(a2 + 92)) | 1);
  a2[22] = v4;
  if (v4)
  {
    if (!*(a2 + 92))
    {
      return 0;
    }

    v5 = 0;
    __dst = 0;
    while (1)
    {
      v6 = heap_Calloc(*(*a2 + 8), 1, 25);
      *(a2[22] + 40 * v5) = v6;
      v7 = *a2;
      if (!v6)
      {
        break;
      }

      v8 = readRULE(v7, __src, &v25, v6);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v9 = v25;
      cstdlib_memcpy((a2[22] + 40 * v5 + 16), &__src[v25], 2uLL);
      v10 = v9 + 2;
      v25 = v10;
      v11 = heap_Calloc(*(*a2 + 8), 1, (32 * *(a2[22] + 40 * v5 + 16)) | 1);
      v12 = a2[22];
      *(v12 + 40 * v5 + 8) = v11;
      if (!v11)
      {
        goto LABEL_19;
      }

      if (*(v12 + 40 * v5 + 16))
      {
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v8 = readRULE(*a2, __src, &v25, (*(v12 + 40 * v5 + 8) + v13 + 8));
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }

          readTWOPARTNUM(__src, &v25, (*(a2[22] + 40 * v5 + 8) + v13));
          ++v14;
          v12 = a2[22];
          v13 += 32;
          if (v14 >= *(v12 + 40 * v5 + 16))
          {
            v10 = v25;
            break;
          }
        }
      }

      cstdlib_memcpy((v12 + 40 * v5 + 32), &__src[v10], 2uLL);
      v25 = v10 + 2;
      v15 = heap_Calloc(*(*a2 + 8), 1, (32 * *(a2[22] + 40 * v5 + 32)) | 1);
      v16 = a2[22];
      *(v16 + 40 * v5 + 24) = v15;
      if (!v15)
      {
        goto LABEL_19;
      }

      if (*(v16 + 40 * v5 + 32))
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v8 = readRULE(*a2, __src, &v25, (*(v16 + 40 * v5 + 24) + v17));
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }

          v19 = v25;
          cstdlib_memcpy(&__dst, &__src[v25], 2uLL);
          v25 = v19 + 2;
          v20 = *(a2[22] + 40 * v5 + 24) + v17;
          *(v20 + 24) = __dst;
          readTWOPARTNUM(__src, &v25, (v20 + 28));
          ++v18;
          v16 = a2[22];
          v17 += 32;
        }

        while (v18 < *(v16 + 40 * v5 + 32));
      }

      v21 = 0;
      if (++v5 >= *(a2 + 92))
      {
        return v21;
      }
    }

    v21 = 2315264010;
    v22 = *(v7 + 32);
  }

  else
  {
LABEL_19:
    v21 = 2315264010;
    v22 = *(*a2 + 32);
  }

  log_OutPublic(v22, "FE_PHRASING", 37000, 0);
  return v21;
}

uint64_t readPhraseWeightsCHUNK(char *__src, unsigned __int16 *a2)
{
  cstdlib_memcpy(a2 + 124, __src, 2uLL);
  v4 = heap_Calloc(*(*a2 + 8), 1, (12 * a2[124]) | 1);
  *(a2 + 30) = v4;
  if (!v4)
  {
    goto LABEL_21;
  }

  if (a2[124])
  {
    v5 = 0;
    v6 = 0;
    v7 = 2;
    do
    {
      cstdlib_memcpy((*(a2 + 30) + v5), &__src[v7], 4uLL);
      v23 = v7 + 4;
      readTWOPARTNUM(__src, &v23, (*(a2 + 30) + v5 + 4));
      v8 = v23;
      cstdlib_memcpy((*(a2 + 30) + v5 + 8), &__src[v23], 2uLL);
      cstdlib_memcpy((*(a2 + 30) + v5 + 10), &__src[v8 + 2], 2uLL);
      v7 = v8 + 4;
      v23 = v7;
      ++v6;
      v5 += 12;
    }

    while (v6 < a2[124]);
  }

  else
  {
    v7 = 2;
  }

  cstdlib_memcpy(a2 + 132, &__src[v7], 2uLL);
  v23 = v7 + 2;
  v9 = heap_Calloc(*(*a2 + 8), 1, (32 * a2[132]) | 1);
  *(a2 + 32) = v9;
  if (!v9)
  {
    goto LABEL_21;
  }

  if (!a2[132])
  {
LABEL_12:
    readTWOPARTNUM(__src, &v23, a2 + 96);
    v13 = v23;
    cstdlib_memcpy(a2 + 104, &__src[v23], 2uLL);
    v23 = v13 + 2;
    v14 = heap_Calloc(*(*a2 + 8), 1, (10 * a2[104]) | 1);
    *(a2 + 25) = v14;
    if (v14)
    {
      if (a2[104])
      {
        v15 = 0;
        v16 = 0;
        do
        {
          readREGEX(__src, &v23, (*(a2 + 25) + v15));
          readTWOPARTNUM(__src, &v23, (*(a2 + 25) + v15 + 6));
          ++v16;
          v15 += 10;
        }

        while (v16 < a2[104]);
      }

      readTWOPARTNUM(__src, &v23, a2 + 108);
      v17 = v23;
      cstdlib_memcpy(a2 + 116, &__src[v23], 2uLL);
      v23 = v17 + 2;
      v18 = heap_Calloc(*(*a2 + 8), 1, (12 * a2[116]) | 1);
      *(a2 + 28) = v18;
      if (v18)
      {
        if (a2[116])
        {
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = *(a2 + 28) + v19;
            __dst = 0;
            readTWOPARTNUM(__src, &v23, (v21 + 4));
            readTWOPARTNUM(__src, &v23, (v21 + 8));
            v22 = v23;
            cstdlib_memcpy(&__dst, &__src[v23], 2uLL);
            v23 = v22 + 2;
            *v21 = __dst;
            ++v20;
            v19 += 12;
          }

          while (v20 < a2[116]);
        }

        return 0;
      }
    }

LABEL_21:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    result = readRULE(*a2, __src, &v23, (*(a2 + 32) + v10 + 8));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    readTWOPARTNUM(__src, &v23, (*(a2 + 32) + v10));
    ++v11;
    v10 += 32;
    if (v11 >= a2[132])
    {
      goto LABEL_12;
    }
  }
}

uint64_t readNumSettingsCHUNK(char *__src, unsigned __int16 *a2)
{
  cstdlib_memcpy(a2 + 140, __src, 2uLL);
  v10 = 2;
  v4 = heap_Calloc(*(*a2 + 8), 1, (8 * a2[140]) | 1);
  *(a2 + 34) = v4;
  if (v4)
  {
    if (a2[140])
    {
      v5 = 0;
      v6 = 4;
      do
      {
        v7 = (*(a2 + 34) + v6);
        v8 = v10;
        cstdlib_memcpy(v7 - 2, &__src[v10], 4uLL);
        v10 = v8 + 4;
        readTWOPARTNUM(__src, &v10, v7);
        ++v5;
        v6 += 8;
      }

      while (v5 < a2[140]);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t readProminenceCHUNK(char *__src, void *a2)
{
  cstdlib_memcpy(a2 + 37, __src, 2uLL);
  v4 = heap_Calloc(*(*a2 + 8), 1, (4 * *(a2 + 148)) | 1);
  a2[36] = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  if (*(a2 + 148))
  {
    v5 = 0;
    v6 = 2;
    do
    {
      cstdlib_memcpy((a2[36] + v6 - 2), &__src[v6], 4uLL);
      ++v5;
      v6 += 4;
    }

    while (v5 < *(a2 + 148));
  }

  else
  {
    LODWORD(v6) = 2;
  }

  cstdlib_memcpy(a2 + 39, &__src[v6], 2uLL);
  v11 = v6 + 2;
  v7 = heap_Calloc(*(*a2 + 8), 1, (24 * *(a2 + 156)) | 1);
  a2[38] = v7;
  if (v7)
  {
    if (*(a2 + 156))
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        result = readRULE(*a2, __src, &v11, (a2[38] + v8));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        ++v9;
        v8 += 24;
        if (v9 >= *(a2 + 156))
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

uint64_t readRegexCHUNK(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  __dst = 0;
  v6 = 4;
  cstdlib_memcpy((a3 + 440), a2, 4uLL);
  if (*(a3 + 440))
  {
    cstdlib_memcpy(&__dst, (a2 + 4), 4uLL);
    v7 = (__dst + 8);
    *(a3 + 448) = a2 + v7;
    v6 = (*(a3 + 440) + v7);
  }

  cstdlib_memcpy((a3 + 464), (a2 + v6), 2uLL);
  v8 = heap_Calloc(*(*a3 + 8), 1, (4 * *(a3 + 464)) | 1);
  *(a3 + 456) = v8;
  if (v8)
  {
    if (*(a3 + 464))
    {
      v9 = 0;
      v10 = 0;
      v11 = v6 + 2;
      do
      {
        v12 = v11;
        cstdlib_memcpy((*(a3 + 456) + v9), (a2 + v11), 4uLL);
        v11 = v12 + 4;
        ++v10;
        v9 += 4;
      }

      while (v10 < *(a3 + 464));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 472), &v15);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t readStringCHUNK(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  __dst = 0;
  v6 = 4;
  cstdlib_memcpy((a3 + 520), a2, 4uLL);
  if (*(a3 + 520))
  {
    cstdlib_memcpy(&__dst, (a2 + 4), 4uLL);
    v7 = (__dst + 8);
    *(a3 + 528) = a2 + v7;
    v6 = (*(a3 + 520) + v7);
  }

  cstdlib_memcpy((a3 + 544), (a2 + v6), 2uLL);
  v8 = heap_Calloc(*(*a3 + 8), 1, (4 * *(a3 + 544)) | 1);
  *(a3 + 536) = v8;
  if (v8)
  {
    if (*(a3 + 544))
    {
      v9 = 0;
      v10 = 0;
      v11 = v6 + 2;
      do
      {
        v12 = v11;
        cstdlib_memcpy((*(a3 + 536) + v9), (a2 + v11), 4uLL);
        v11 = v12 + 4;
        ++v10;
        v9 += 4;
      }

      while (v10 < *(a3 + 544));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 552), &v15);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t readRegexStringCHUNK(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  __dst = 0;
  v6 = 4;
  cstdlib_memcpy((a3 + 480), a2, 4uLL);
  if (*(a3 + 480))
  {
    cstdlib_memcpy(&__dst, (a2 + 4), 4uLL);
    v7 = (__dst + 8);
    *(a3 + 488) = a2 + v7;
    v6 = (*(a3 + 480) + v7);
  }

  cstdlib_memcpy((a3 + 504), (a2 + v6), 2uLL);
  v8 = heap_Calloc(*(*a3 + 8), 1, (4 * *(a3 + 504)) | 1);
  *(a3 + 496) = v8;
  if (v8)
  {
    if (*(a3 + 504))
    {
      v9 = 0;
      v10 = 0;
      v11 = v6 + 2;
      do
      {
        v12 = v11;
        cstdlib_memcpy((*(a3 + 496) + v9), (a2 + v11), 4uLL);
        v11 = v12 + 4;
        ++v10;
        v9 += 4;
      }

      while (v10 < *(a3 + 504));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 512), &v15);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t readMSCHUNK(char *__src, uint64_t a2)
{
  __dst = 0;
  cstdlib_memcpy(&__dst, __src, 2uLL);
  *(a2 + 560) = __dst;
  cstdlib_memcpy((a2 + 584), __src + 2, 2uLL);
  v4 = heap_Calloc(*(*a2 + 8), 1, (4 * *(a2 + 584)) | 1);
  *(a2 + 576) = v4;
  if (!v4)
  {
    goto LABEL_47;
  }

  if (*(a2 + 584))
  {
    v5 = 0;
    v6 = __src + 4;
    v7 = 4;
    do
    {
      cstdlib_memcpy(&__dst, v6, 2uLL);
      v7 += 2;
      *(*(a2 + 576) + 4 * v5++) = __dst;
      v8 = *(a2 + 584);
      v6 += 2;
    }

    while (v5 < v8);
    v9 = (8 * v8) | 1;
  }

  else
  {
    v7 = 4;
    v9 = 1;
  }

  v43 = v7;
  v10 = heap_Calloc(*(*a2 + 8), 1, v9);
  *(a2 + 568) = v10;
  if (!v10)
  {
    goto LABEL_47;
  }

  if (*(a2 + 584))
  {
    v11 = 0;
    do
    {
      v12 = *(*a2 + 8);
      if (*(*(a2 + 576) + 4 * v11) == 1)
      {
        *(*(a2 + 568) + 8 * v11) = heap_Calloc(v12, 1, 13);
        v13 = *(*(a2 + 568) + 8 * v11);
        if (!v13)
        {
          goto LABEL_47;
        }

        readREGEX(__src, &v43, v13);
        v14 = (*(*(a2 + 568) + 8 * v11) + 8);
        v15 = v43;
      }

      else
      {
        *(*(a2 + 568) + 8 * v11) = heap_Calloc(v12, 1, 9);
        v16 = *(*(a2 + 568) + 8 * v11);
        if (!v16)
        {
          goto LABEL_47;
        }

        cstdlib_memcpy(v16, &__src[v7], 4uLL);
        v15 = v7 + 4;
        v14 = (*(*(a2 + 568) + 8 * v11) + 4);
      }

      cstdlib_memcpy(v14, &__src[v15], 4uLL);
      v7 = v15 + 4;
      v43 = v7;
      ++v11;
    }

    while (v11 < *(a2 + 584));
  }

  cstdlib_memcpy((a2 + 608), &__src[v7], 2uLL);
  v17 = heap_Calloc(*(*a2 + 8), 1, (4 * *(a2 + 608)) | 1);
  *(a2 + 600) = v17;
  if (!v17)
  {
    goto LABEL_47;
  }

  v18 = v7 + 2;
  if (*(a2 + 608))
  {
    v19 = 0;
    do
    {
      cstdlib_memcpy(&__dst, &__src[v18], 2uLL);
      v18 += 2;
      *(*(a2 + 600) + 4 * v19++) = __dst;
      v20 = *(a2 + 608);
    }

    while (v19 < v20);
    v21 = (8 * v20) | 1;
  }

  else
  {
    v21 = 1;
  }

  v43 = v18;
  v22 = heap_Calloc(*(*a2 + 8), 1, v21);
  *(a2 + 592) = v22;
  if (!v22)
  {
    goto LABEL_47;
  }

  if (*(a2 + 608))
  {
    v23 = 0;
    do
    {
      v24 = *(*a2 + 8);
      if (*(*(a2 + 600) + 4 * v23) == 1)
      {
        *(*(a2 + 592) + 8 * v23) = heap_Calloc(v24, 1, 13);
        v25 = *(*(a2 + 592) + 8 * v23);
        if (!v25)
        {
          goto LABEL_47;
        }

        readREGEX(__src, &v43, v25);
        v26 = (*(*(a2 + 592) + 8 * v23) + 8);
        v27 = v43;
      }

      else
      {
        *(*(a2 + 592) + 8 * v23) = heap_Calloc(v24, 1, 9);
        v28 = *(*(a2 + 592) + 8 * v23);
        if (!v28)
        {
          goto LABEL_47;
        }

        cstdlib_memcpy(v28, &__src[v18], 4uLL);
        v27 = v18 + 4;
        v26 = (*(*(a2 + 592) + 8 * v23) + 4);
      }

      cstdlib_memcpy(v26, &__src[v27], 4uLL);
      v18 = v27 + 4;
      v43 = v18;
      ++v23;
    }

    while (v23 < *(a2 + 608));
  }

  cstdlib_memcpy((a2 + 632), &__src[v18], 2uLL);
  v29 = heap_Calloc(*(*a2 + 8), 1, (4 * *(a2 + 632)) | 1);
  *(a2 + 624) = v29;
  if (!v29)
  {
    goto LABEL_47;
  }

  v30 = v18 + 2;
  if (*(a2 + 632))
  {
    v31 = 0;
    do
    {
      cstdlib_memcpy(&__dst, &__src[v30], 2uLL);
      v30 += 2;
      *(*(a2 + 624) + 4 * v31++) = __dst;
      v32 = *(a2 + 632);
    }

    while (v31 < v32);
    v33 = (8 * v32) | 1;
  }

  else
  {
    v33 = 1;
  }

  v43 = v30;
  v34 = heap_Calloc(*(*a2 + 8), 1, v33);
  *(a2 + 616) = v34;
  if (v34)
  {
    if (*(a2 + 632))
    {
      v35 = 0;
      do
      {
        v36 = *(*a2 + 8);
        if (*(*(a2 + 624) + 4 * v35) == 1)
        {
          *(*(a2 + 616) + 8 * v35) = heap_Calloc(v36, 1, 13);
          v37 = *(*(a2 + 616) + 8 * v35);
          if (!v37)
          {
            goto LABEL_47;
          }

          readREGEX(__src, &v43, v37);
          v38 = (*(*(a2 + 616) + 8 * v35) + 8);
          v39 = v43;
        }

        else
        {
          *(*(a2 + 616) + 8 * v35) = heap_Calloc(v36, 1, 9);
          v40 = *(*(a2 + 616) + 8 * v35);
          if (!v40)
          {
            goto LABEL_47;
          }

          cstdlib_memcpy(v40, &__src[v30], 4uLL);
          v39 = v30 + 4;
          v38 = (*(*(a2 + 616) + 8 * v35) + 4);
        }

        cstdlib_memcpy(v38, &__src[v39], 4uLL);
        result = 0;
        v30 = v39 + 4;
        v43 = v30;
        ++v35;
      }

      while (v35 < *(a2 + 632));
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

uint64_t readPhraseTypeCHUNK(char *__src, uint64_t *a2)
{
  cstdlib_memcpy(a2 + 40, __src, 2uLL);
  v4 = heap_Calloc(*(*a2 + 8), 1, (16 * *(a2 + 160)) | 1);
  a2[42] = v4;
  v5 = *a2;
  if (!v4)
  {
    goto LABEL_16;
  }

  v6 = heap_Calloc(*(v5 + 8), 1, (4 * *(a2 + 160)) | 1);
  a2[41] = v6;
  if (!v6)
  {
LABEL_15:
    v5 = *a2;
LABEL_16:
    log_OutPublic(*(v5 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  if (*(a2 + 160))
  {
    v7 = 0;
    v8 = 2;
    do
    {
      cstdlib_memcpy((a2[41] + v8 - 2), &__src[v8], 4uLL);
      ++v7;
      v9 = *(a2 + 160);
      v8 += 4;
    }

    while (v7 < v9);
    v17 = v8;
    if (v9)
    {
      v10 = 0;
      v11 = a2[42];
      while (1)
      {
        v12 = v17;
        cstdlib_memcpy((v11 + 16 * v10), &__src[v17], 2uLL);
        v17 = v12 + 2;
        v13 = heap_Calloc(*(*a2 + 8), 1, (24 * *(a2[42] + 16 * v10)) | 1);
        v11 = a2[42];
        *(v11 + 16 * v10 + 8) = v13;
        if (!v13)
        {
          goto LABEL_15;
        }

        if (*(v11 + 16 * v10))
        {
          v14 = 0;
          v15 = 0;
          do
          {
            result = readRULE(*a2, __src, &v17, (*(v11 + 16 * v10 + 8) + v14));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            ++v15;
            v11 = a2[42];
            v14 += 24;
          }

          while (v15 < *(v11 + 16 * v10));
        }

        result = 0;
        if (++v10 >= *(a2 + 160))
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t readMSCOMPOUNDDEFCHUNK(char *__src, void *a2)
{
  cstdlib_memcpy(a2 + 45, __src, 2uLL);
  v4 = heap_Calloc(*(*a2 + 8), 1, (4 * *(a2 + 180)) | 1);
  a2[44] = v4;
  if (!v4)
  {
    goto LABEL_17;
  }

  __dst = 0;
  if (*(a2 + 180))
  {
    v5 = 0;
    v6 = __src + 2;
    v7 = 2;
    do
    {
      cstdlib_memcpy(&__dst, v6, 2uLL);
      v7 += 2;
      *(a2[44] + 4 * v5++) = __dst;
      v8 = *(a2 + 180);
      v6 += 2;
    }

    while (v5 < v8);
    v9 = (8 * v8) | 1;
  }

  else
  {
    v7 = 2;
    v9 = 1;
  }

  v20 = v7;
  v10 = heap_Calloc(*(*a2 + 8), 1, v9);
  a2[43] = v10;
  if (v10)
  {
    if (*(a2 + 180))
    {
      v11 = 0;
      do
      {
        v12 = *(*a2 + 8);
        if (*(a2[44] + 4 * v11) == 1)
        {
          *(a2[43] + 8 * v11) = heap_Calloc(v12, 1, 13);
          v13 = *(a2[43] + 8 * v11);
          if (!v13)
          {
            goto LABEL_17;
          }

          readREGEX(__src, &v20, v13);
          v14 = (*(a2[43] + 8 * v11) + 8);
          v15 = v20;
        }

        else
        {
          *(a2[43] + 8 * v11) = heap_Calloc(v12, 1, 9);
          v16 = *(a2[43] + 8 * v11);
          if (!v16)
          {
            goto LABEL_17;
          }

          cstdlib_memcpy(v16, &__src[v7], 4uLL);
          v15 = v7 + 4;
          v14 = (*(a2[43] + 8 * v11) + 4);
        }

        cstdlib_memcpy(v14, &__src[v15], 4uLL);
        v7 = v15 + 4;
        v20 = v7;
        ++v11;
      }

      while (v11 < *(a2 + 180));
    }

    return 0;
  }

  else
  {
LABEL_17:
    v17 = 2315264010;
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0);
  }

  return v17;
}

uint64_t getStrSetting(uint64_t a1, char *__s1)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (cstdlib_strcmp(__s1, (*(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 32) + v4)))))
  {
    ++v5;
    v4 += 8;
    if (v5 >= *(a1 + 40))
    {
      return 0;
    }
  }

  return *(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 32) + v4 + 4));
}

uint64_t usePandP(uint64_t *a1, _DWORD *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  v13 = 0;
  memset(v14, 0, sizeof(v14));
  *a2 = 0;
  v4 = 0;
  if ((paramc_ParamGetStr(a1[5], "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1)
  {
    if (cstdlib_strcmp(__s1, "yes"))
    {
      v4 = 0;
    }

    else
    {
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "<%s> disables voice-dependent pandp rules", "basicclcprosody");
      v4 = 1;
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

uint64_t doMapStr(uint64_t a1, const char **a2, char *__s)
{
  v6 = cstdlib_strlen(__s);
  v7 = cstdlib_strlen(*a2);
  v8 = *a2;
  if (v6 <= v7)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 8);
  v10 = cstdlib_strlen(__s);
  v11 = heap_Realloc(v9, v8, (v10 + 1));
  if (v11)
  {
    v8 = v11;
    *a2 = v11;
LABEL_4:
    cstdlib_strcpy(v8, __s);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t doRetagging(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *&v27[2] = 0;
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
    v26 = v14;
    v25 = 3;
    *v27 = 0;
    v18 = *(a6 + 80);
    v28 = 0;
    result = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, a7, (v18 + v16 + 8), &v25, &v28);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v28)
    {
      if (v28 != 1)
      {
        goto LABEL_13;
      }

      v19 = *(*a7 + 224 * v14 + 16);
      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "FIRED RETAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v17, *(v19 + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 80) + v16))), v14, *(v19 + 8 * *(a6 + 16)));
      v20 = 224 * v14;
      result = doMapStr(a5, (*(*a7 + 224 * v14 + 16) + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 80) + v16))));
      if ((result & 0x80000000) == 0)
      {
        v24 = *(a5 + 8);
        v21 = cstdlib_strlen(*(*(*a7 + v20 + 16) + 8 * *(a6 + 18)));
        v22 = heap_Calloc(v24, 1, v21 + 1);
        v23 = *a7;
        *(*a7 + v20 + 88) = v22;
        if (v22)
        {
          cstdlib_strcpy(v22, *(*(v23 + 224 * v14 + 16) + 8 * *(a6 + 18)));
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

uint64_t doSubtagging(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *&v29[2] = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "applying %d subtagging rules", *(a6 + 104));
  if (!*(a7 + 4))
  {
    return 0;
  }

  v26 = a5;
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
    v28 = v14;
    v27 = 3;
    *v29 = 0;
    v18 = *(a6 + 96);
    v30 = 0;
    result = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, a7, (v18 + v16 + 8), &v27, &v30);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v30)
    {
      if (v30 != 1)
      {
        goto LABEL_15;
      }

      v19 = *(*a7 + 224 * v14 + 16);
      log_OutText(*(v26 + 32), "FE_PHRASING", 5, 0, "FIRED SUBTAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v17, *(v19 + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 96) + v16))), v14, *(v19 + 8 * *(a6 + 16)));
      v20 = *a7;
      v21 = *a7 + 224 * v14;
      if (!*(v21 + 88))
      {
        v25 = *(v26 + 8);
        v22 = cstdlib_strlen(*(*(v21 + 16) + 8 * *(a6 + 18)));
        v23 = heap_Calloc(v25, 1, v22 + 1);
        v24 = *a7;
        *(*a7 + 224 * v14 + 88) = v23;
        if (!v23)
        {
          log_OutPublic(*(v26 + 32), "FE_PHRASING", 37000, 0);
          return 2315264010;
        }

        cstdlib_strcpy(v23, *(*(v24 + 224 * v14 + 16) + 8 * *(a6 + 18)));
        v20 = *a7;
      }

      result = doMapStr(v26, (*(v20 + 224 * v14 + 16) + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 96) + v16))));
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

uint64_t setPhraseType(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{
  *(a7 + 32) = a8;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  Using ORT %s", a8);
  v26 = a7;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  Using POS %s", *(a7 + 16));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  applying %d phrase type rules", *(a6 + 320));
  if (!*(a6 + 320))
  {
    return 0;
  }

  v15 = 0;
  matched = 0;
  v28 = 0;
  while (1)
  {
    v27 = 5;
    LOWORD(v28) = 0;
    v29 = 1;
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
      v23 = *(a5 + 8);
      v24 = cstdlib_strlen((*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 328) + 4 * v15))));
      v25 = heap_Calloc(v23, 1, (v24 + 1));
      *(v26 + 40) = v25;
      if (v25)
      {
        cstdlib_strcpy(v25, (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 328) + 4 * v15))));
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
    matched = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, v26, (*(v17 + 16 * v15 + 8) + v19), &v27, &v29);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    if (v29 != 1)
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
  if (!*(a1 + 56))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (cstdlib_strcmp(__s1, (*(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 48) + v6)))))
  {
    ++v7;
    v6 += 8;
    if (v7 >= *(a1 + 56))
    {
      return 0;
    }
  }

  *a3 = v7;
  return 1;
}

uint64_t createLists(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a3 + 4);
  if (v3)
  {
    v7 = 0;
    v8 = *(a2 + 24);
    v9 = *a3;
    v10 = 32 * v8;
    while (1)
    {
      v11 = v7;
      v12 = *(v9 + 224 * v7 + 56);
      if (v12 && *(v12 + v10) == 1)
      {
        v13 = heap_Calloc(*(a1 + 8), 1, (8 * *(a2 + 72)) | 1);
        v9 = *a3;
        *(*a3 + 224 * v11 + 64) = v13;
        if (!v13)
        {
LABEL_37:
          log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
          return 2315264010;
        }

        if (*(a2 + 72))
        {
          v14 = 0;
          v15 = v9;
          do
          {
            v16 = *(v15 + 224 * v11 + 56) + 32 * v8;
            v17 = *(v16 + 8);
            if (v17 <= *(v16 + 10))
            {
              v19 = 0;
              v18 = v9;
              do
              {
                v20 = v17;
                v21 = *(v15 + 224 * v17 + 16);
                if (v21)
                {
                  v22 = *(v21 + 8 * v14);
                  if (v22)
                  {
                    v19 += cstdlib_strlen(v22) + 1;
                    v18 = *a3;
                    v15 = *a3;
                  }
                }

                v23 = *(v15 + 224 * v20 + 56);
                if (v23)
                {
                  v24 = v23 + 32 * v14;
                  v25 = *(v24 + 16);
                  if (v25)
                  {
                    if (*v24 == 1)
                    {
                      v19 += cstdlib_strlen(v25) + 1;
                      v18 = *a3;
                    }
                  }
                }

                LOWORD(v17) = v20 + 1;
                v15 = v18;
              }

              while (*(*(v18 + 224 * v11 + 56) + 32 * v8 + 10) >= (v20 + 1));
              v9 = v18;
              if (v19)
              {
                v26 = heap_Calloc(*(a1 + 8), 1, v19 + 2);
                *(*(*a3 + 224 * v11 + 64) + 8 * v14) = v26;
                if (!v26)
                {
                  goto LABEL_37;
                }

                cstdlib_strcpy(v26, "");
                v9 = *a3;
                v27 = *(*a3 + 224 * v11 + 56) + 32 * v8;
                v28 = *(v27 + 8);
                if (v28 <= *(v27 + 10))
                {
                  do
                  {
                    v29 = v28;
                    v30 = *(v9 + 224 * v28 + 16);
                    if (v30)
                    {
                      v31 = *(v30 + 8 * v14);
                      if (v31)
                      {
                        cstdlib_strcat(*(*(v9 + 224 * v11 + 64) + 8 * v14), v31);
                        cstdlib_strcat(*(*(*a3 + 224 * v11 + 64) + 8 * v14), " ");
                        v9 = *a3;
                      }
                    }

                    v32 = *(v9 + 224 * v29 + 56);
                    if (v32)
                    {
                      v33 = v32 + 32 * v14;
                      v34 = *(v33 + 16);
                      if (v34)
                      {
                        if (*v33 == 1)
                        {
                          cstdlib_strcat(*(*(v9 + 224 * v11 + 64) + 8 * v14), v34);
                          cstdlib_strcat(*(*(*a3 + 224 * v11 + 64) + 8 * v14), " ");
                          v9 = *a3;
                        }
                      }
                    }

                    LOWORD(v28) = v29 + 1;
                    v15 = v9;
                  }

                  while (*(*(v9 + 224 * v11 + 56) + 32 * v8 + 10) >= (v29 + 1));
                }

                else
                {
                  v15 = *a3;
                }

                goto LABEL_33;
              }
            }

            else
            {
              v18 = v15;
            }

            *(*(v18 + 224 * v11 + 64) + 8 * v14) = 0;
            v15 = v18;
LABEL_33:
            ++v14;
          }

          while (v14 < *(a2 + 72));
        }

        v7 = *(*(v9 + 224 * v11 + 56) + 32 * v8 + 10);
        v3 = *(a3 + 4);
        v10 = 32 * v8;
      }

      if (++v7 >= v3)
      {
        return 0;
      }
    }
  }

  return 0;
}

BOOL isStrSetting(uint64_t a1, char *__s1, const char *a3)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (cstdlib_strcmp(__s1, (*(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 32) + v6)))))
  {
    ++v7;
    v6 += 8;
    if (v7 >= *(a1 + 40))
    {
      return 0;
    }
  }

  return cstdlib_strcmp(a3, (*(a1 + 528) + *(*(a1 + 536) + 4 * *(*(a1 + 32) + v6 + 4)))) == 0;
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

_WORD *readTWOPARTNUM(uint64_t a1, _DWORD *a2, _WORD *a3)
{
  __dst = 0;
  cstdlib_memcpy(&__dst + 2, (a1 + *a2), 2uLL);
  v6 = (*a2 + 2);
  *a2 = v6;
  cstdlib_memcpy(&__dst, (a1 + v6), 2uLL);
  *a2 += 2;
  return FLOATSUR_SET_INT(a3, SHIWORD(__dst), __dst);
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
  __dst = 0;
  cstdlib_memcpy(&__dst, (a2 + *a3), 2uLL);
  *a3 += 2;
  if (!__dst)
  {
    return 0;
  }

  v8 = heap_Calloc(*(a1 + 8), 1, 17);
  if (v8 && (v9 = v8, v10 = __dst, *(v8 + 8) = __dst, v11 = heap_Calloc(*(a1 + 8), 1, (6 * v10) | 1), (*v9 = v11) != 0))
  {
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
    *a4 = v9;
  }

  else
  {
    v17 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  }

  return v17;
}

void *readREGEX(uint64_t a1, _DWORD *a2, char *__dst)
{
  __dsta = 0;
  cstdlib_memcpy(__dst, (a1 + *a2), 2uLL);
  v6 = (*a2 + 2);
  *a2 = v6;
  cstdlib_memcpy(__dst + 2, (a1 + v6), 2uLL);
  v7 = (*a2 + 2);
  *a2 = v7;
  result = cstdlib_memcpy(&__dsta, (a1 + v7), 2uLL);
  *a2 += 2;
  __dst[4] = __dsta;
  return result;
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

uint64_t nn_phrasing_getBrokerString(uint64_t a1, uint64_t *a2)
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
      cstdlib_strcat(__s1, "nn_pausing_");
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
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }
    }
  }

  return result;
}

uint64_t nn_phrasing_Load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *__b)
{
  v79 = *MEMORY[0x277D85DE8];
  v65 = 0;
  cstdlib_memset(__b, 0, 0x90uLL);
  v75 = 0;
  v74 = -1;
  v73 = 0;
  v68 = 0;
  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_puncpause", __b);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_resppause", __b + 1);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_numadditionalfields", __b + 2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_maxwordsinsent", __b + 3);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_thresholdpercent", __b + 4);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_numfeats", __b + 5);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_dolenverification", __b + 8);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_dophrverification", __b + 7);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_docompverification", __b + 6);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_usedynamicstep", __b + 9);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  v64 = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_puncpause %d", *__b);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_resppause %d", *(__b + 1));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_numadditionalfields %d", *(__b + 2));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_maxwordsinsent %d", *(__b + 3));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_thresholdpercent %d", *(__b + 4));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_numfeats %d", *(__b + 5));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_dolenverification %d", *(__b + 8));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_dophrverification %d", *(__b + 7));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_docompverification %d", *(__b + 6));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_usedynamicstep %d", *(__b + 9));
  if (*(__b + 5))
  {
    v18 = heap_Calloc(*(a5 + 8), 1, 32 * *(__b + 5));
    __b[4] = v18;
    if (!v18)
    {
      v40 = 2315264010;
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0);
      return v40;
    }

    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    if (*(__b + 5))
    {
      v19 = 0;
      v20 = 0;
      v60 = 0;
      v61 = a5;
      while (1)
      {
        v63 = v19;
        cstdlib_memset(__dst, 0, 0x20uLL);
        cstdlib_strcpy(__dst, "nnpausing_feat");
        v62 = v20;
        v21 = LH_itoa(v20, v72, 0xAu);
        cstdlib_strcat(v78, v21);
        v74 = -1;
        NumericFeatureValue = (*(a6 + 96))(a7, a8, "fecfg", __dst, &v75, &v74, &v73);
        if ((NumericFeatureValue & 0x80000000) != 0)
        {
          return NumericFeatureValue;
        }

        if (v74)
        {
          break;
        }

        v27 = v63;
LABEL_34:
        v20 = v62 + 1;
        v19 = v27 + 32;
        if (v62 + 1 >= *(__b + 5))
        {
          goto LABEL_35;
        }
      }

      v22 = *v75;
      v23 = cstdlib_strchr(*v75, 124);
      if (v23)
      {
        *v23 = 0;
        __s1 = v23 + 1;
        v24 = cstdlib_strchr(v23 + 1, 124);
        if (v24)
        {
          *v24 = 0;
          __s = v24 + 1;
          v25 = cstdlib_strchr(v24 + 1, 124);
          if (v25)
          {
            *v25 = 0;
            v57 = (v25 + 1);
            v26 = cstdlib_strchr(v25 + 1, v73);
            if (v26)
            {
              *v26 = 0;
            }

LABEL_26:
            NumericFeatureValue = setStr(a5, (__b[4] + v63), v22);
            if ((NumericFeatureValue & 0x80000000) != 0)
            {
              return NumericFeatureValue;
            }

            if (__s1)
            {
              v28 = cstdlib_strcmp(__s1, "NUMERIC");
              v29 = __b[4];
              if (!v28)
              {
                v30 = v63;
                *(v29 + v63 + 8) = 1;
LABEL_32:
                NumericFeatureValue = setStr(v61, (v29 + v30 + 16), __s);
                if ((NumericFeatureValue & 0x80000000) != 0)
                {
                  return NumericFeatureValue;
                }

                v31 = cstdlib_atoi(v57);
                v32 = __b[4] + v30;
                *(v32 + 26) = v31;
                *(v32 + 28) = v60;
                v60 += v31;
                v27 = v30;
                a5 = v61;
                goto LABEL_34;
              }
            }

            else
            {
              v29 = __b[4];
            }

            v30 = v63;
            goto LABEL_32;
          }

LABEL_25:
          v57 = 0;
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
    cstdlib_memset(&v69, 0, 0x28uLL);
    *&v69 = ssftmap_ElemCopyString;
    *(&v70 + 1) = ssftmap_ElemCopyString;
    *(&v69 + 1) = ssftmap_ElemFreeString;
    v71 = ssftmap_ElemFreeString;
    *&v70 = ssftmap_ElemCompareKeysString;
    v33 = *(a5 + 8);
    v66[0] = v69;
    v66[1] = v70;
    v67 = ssftmap_ElemFreeString;
    NumericFeatureValue = ssftmap_ObjOpen(v33, 0, v66, __b + 3);
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
      v34 = cstdlib_strchr(*v75, v73);
      if (v34)
      {
        *v34 = 0;
      }

      v35 = *v75;
      v36 = cstdlib_strchr(*v75, 124);
      if (v36)
      {
        v37 = v36;
        v38 = 0;
        while (1)
        {
          *v37 = 0;
          LH_itoa(v38, v76, 0xAu);
          log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "Feature to index mappings %s -> %s", v35, v76);
          NumericFeatureValue = ssftmap_Insert(__b[3], v35, v76);
          if ((NumericFeatureValue & 0x80000000) != 0)
          {
            return NumericFeatureValue;
          }

          ++v38;
          v35 = v37 + 1;
          v37 = cstdlib_strchr(v37 + 1, 124);
          if (!v37)
          {
            v39 = v38;
            goto LABEL_48;
          }
        }
      }

      if (v35)
      {
        v39 = 0;
LABEL_48:
        LH_itoa(v39, v76, 0xAu);
        NumericFeatureValue = ssftmap_Insert(__b[3], v35, v76);
        if ((NumericFeatureValue & 0x80000000) != 0)
        {
          return NumericFeatureValue;
        }
      }
    }

    if (*(__b + 5))
    {
      v41 = 0;
      v42 = 0;
      v43 = __b[4];
      do
      {
        v44 = ssftmap_Find(__b[3], *(v43 + v41 + 16), &v68);
        if ((v44 & 0x1FFF) == 0x14)
        {
          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37005, "%s%s", "expected default value for", *(__b[4] + v41 + 16));
          return 2315264000;
        }

        v40 = v44;
        v45 = cstdlib_atoi(v68);
        v43 = __b[4];
        *(v43 + v41 + 24) = v45;
        ++v42;
        v41 += 32;
      }

      while (v42 < *(__b + 5));
      if ((v40 & 0x80000000) != 0)
      {
        return v40;
      }
    }
  }

  NumericFeatureValue = nn_word_lkp_GetInterface(1u, __b + 9);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  __b[10] = safeh_GetNullHandle();
  __b[11] = v46;
  __b[12] = safeh_GetNullHandle();
  __b[13] = v47;
  NumericFeatureValue = (*(__b[9] + 16))(__b[10], __b[11], "word", a1, a2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = (*(__b[9] + 40))(__b[12], __b[13], __b + 14);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "word2vec length %d", *(__b + 28));
  v48 = heap_Alloc(*(a5 + 8), 4 * *(__b + 28));
  __b[15] = v48;
  if (v48)
  {
    BrokerString = nn_phrasing_getBrokerString(a5, &v65);
    v50 = v65;
    if ((BrokerString & 0x80000000) != 0)
    {
      v40 = BrokerString;
    }

    else
    {
      v51 = fi_init(a1, a2, a3, a4, &v64, 0, v65, "FINN", 1, 0);
      if ((v51 & 0x80000000) != 0)
      {
        log_OutPublic(*(a5 + 32), "FE_PHRASING", 37006, 0);
        v40 = 2315264000;
      }

      else
      {
        v40 = v51;
        v52 = *v64;
        v53 = *(*v64 + 52);
        if (*(__b + 9))
        {
          if (v53 == 2 && *(v52 + 60) == *(__b + 28) + *(__b + 2))
          {
            v54 = *(__b + 3);
            goto LABEL_64;
          }

          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37003, "%s%d%s%d");
        }

        else
        {
          v54 = *(__b + 3);
          if (v53 == 2 && *(v52 + 56) == v54 && *(v52 + 60) == *(__b + 28) + *(__b + 2))
          {
LABEL_64:
            __b[6] = v64;
            v55 = heap_Calloc(*(a5 + 8), 1, (12 * v54) | 1);
            __b[16] = v55;
            if (!v55)
            {
              v40 = 2315264010;
              log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0);
            }

            goto LABEL_79;
          }

          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37003, "%s%d%d%s%d%d", "expected");
        }

        v40 = 2315264025;
      }
    }
  }

  else
  {
    v40 = 2315264010;
    log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0);
    v50 = v65;
  }

LABEL_79:
  if (v50)
  {
    heap_Free(*(a5 + 8), v50);
  }

  return v40;
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
    *(a3 + 128) = 0;
  }

  cstdlib_memset(a3, 0, 0x90uLL);
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
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v29);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a2 + 184))(a3, a4, v29, 0, &v29 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v29) == 1)
    {
      result = (*(a2 + 176))(a3, a4, v29, 0, &v23, &v28);
      if ((result & 0x80000000) == 0 && v28 >= 2u)
      {
        result = (*(a2 + 104))(a3, a4, 2, v29, &v28 + 2);
        if ((result & 0x80000000) == 0)
        {
          v13 = HIWORD(v28);
          if (HIWORD(v28))
          {
            v14 = 0;
            while (1)
            {
              result = (*(a2 + 168))(a3, a4, v13, 0, 1, &v26, &v28);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v26 <= 0xA && ((1 << v26) & 0x610) != 0)
              {
                result = (*(a2 + 168))(a3, a4, HIWORD(v28), 1, 1, &v25, &v28);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a2 + 168))(a3, a4, HIWORD(v28), 2, 1, &v25 + 2, &v28);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v25 != HIWORD(v25))
                {
                  if (v14 + 1 >= *(a5 + 6))
                  {
                    return result;
                  }

                  result = getWordIdx(a1, *(a5 + 128), *(a5 + 136), v25, HIWORD(v25), &v24);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v21 = 0;
                  v14 = v24;
                  v16 = *(*a6 + 224 * v24 + 216);
                  v17 = a5;
                  if (v16 != 1)
                  {
                    if (v16 != 2)
                    {
                      goto LABEL_29;
                    }

                    v17 = (a5 + 2);
                  }

                  v21 = *v17;
                  if (v21)
                  {
                    result = checkForExternalSildur(a2, a3, a4, HIWORD(v28), &v22);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    if (v22)
                    {
                      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : clash with WordRecord[%d] word[%d] external pause has priority", HIWORD(v28), v14);
                    }

                    else
                    {
                      result = (*(a2 + 160))(a3, a4, HIWORD(v28), 8, 1, &v21, &v27);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v18 = *(a2 + 160);
                      v19 = HIWORD(v28);
                      v20 = cstdlib_strlen("external");
                      result = v18(a3, a4, v19, 18, (v20 + 1), "external", &v27);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : updating WordRecord[%d] word[%d] set as ext pause with duration=%d", HIWORD(v28), v14, v21);
                      *(*(a5 + 128) + 12 * v14) = 1;
                    }
                  }
                }
              }

LABEL_29:
              result = (*(a2 + 120))(a3, a4, HIWORD(v28), &v28 + 2);
              if ((result & 0x80000000) == 0)
              {
                v13 = HIWORD(v28);
                if (HIWORD(v28))
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
  v130 = 0;
  v11 = *(a5 + 8);
  v129 = 0;
  v126 = 0;
  __s2 = 0;
  v124 = 0;
  *(a7 + 136) = 0;
  *a9 = 1;
  if (!v11)
  {
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "skip NN pausing, no words found", a6, 0);
    Str = 0;
    goto LABEL_33;
  }

  v12 = a8;
  v127 = 0;
  v18 = (*(a2 + 104))(a3, a4, 1, 0, &v127 + 2);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = (*(a2 + 176))(a3, a4, HIWORD(v127), 1, &v126, &v127);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  Str = paramc_ParamGetStr(a1[5], "langcode", &__s2);
  if ((Str & 0x80000000) == 0)
  {
    v122 = v12;
    v119 = a3;
    v120 = a2;
    if (v127)
    {
      v20 = 0;
      v21 = 24;
      while (1)
      {
        if (*(v126 + v21 - 24) == 36)
        {
          if (cstdlib_strcmp(*(v126 + v21), __s2))
          {
            v22 = *(v126 + v21);
            MarkerArgStr = marker_getMarkerArgStr(1u);
            if (cstdlib_strcmp(v22, MarkerArgStr))
            {
              v24 = *(v126 + v21);
              v25 = marker_getMarkerArgStr(9u);
              if (cstdlib_strcmp(v24, v25))
              {
                v26 = *(v126 + v21);
                v27 = marker_getMarkerArgStr(2u);
                if (cstdlib_strcmp(v26, v27))
                {
                  break;
                }
              }
            }
          }
        }

        ++v20;
        v21 += 32;
        if (v20 >= v127)
        {
          goto LABEL_13;
        }
      }

      log_OutText(a1[4], "FE_PHRASING", 5, 0, "skip NN pausing, as language tag %s found");
      goto LABEL_33;
    }

LABEL_13:
    if (v122 == -1)
    {
      v28 = *(a7 + 16);
    }

    else
    {
      v28 = v122;
    }

    v29 = v28;
    if (v28)
    {
      LODWORD(v30) = *(a5 + 8);
      if (*(a5 + 8))
      {
        v118 = a4;
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
        v128 = v40;
        if (!v40)
        {
          Str = 2315264010;
          log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
          return Str;
        }

        v117 = v37;
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
        v46 = v120;
        v47 = v122;
        v113 = v41;
        if (v41)
        {
          v115 = 0;
          v116 = 0;
          v121 = 0;
          v48 = 0;
          while (1)
          {
            v49 = *(a7 + 112) + *(a7 + 4);
            if (v49)
            {
              v50 = 0;
              v51 = v128;
              v52 = v116 * v49;
              do
              {
                v51[v52] = 0.0;
                ++v50;
                ++v52;
              }

              while (v49 > v50);
            }

            v53 = (*a5 + 224 * v121);
            v54 = *(v53[2] + 8 * *(a6 + 16));
            v55 = v53[21];
            v56 = v53[26];
            v57 = cstdlib_strlen(v54);
            v58 = (v57 & 0xFFC0) != 0 ? v57 : 64;
            if (!v48)
            {
              break;
            }

            if (v58 > v115)
            {
              v59 = heap_Realloc(a1[1], v48, v58 + 1);
              if (!v59)
              {
                goto LABEL_151;
              }

              v48 = v59;
LABEL_58:
              v115 = v58;
            }

            v60 = "POS";
            if (v55 && cstdlib_strcmp(v55, "-"))
            {
              cstdlib_strcpy(v48, v55);
            }

            else
            {
              if (cstdlib_strcmp(v56, "X"))
              {
                v131[0] = 0;
                StartOfOrthPunc = getStartOfOrthPunc(v54, v131);
                v62 = v115;
                if (StartOfOrthPunc < v115)
                {
                  v62 = StartOfOrthPunc;
                }

                if (v131[0] == 1)
                {
                  v63 = v62;
                }

                else
                {
                  v63 = v115;
                }
              }

              else
              {
                v63 = v115;
              }

              v64 = v63;
              cstdlib_strncpy(v48, v54, v63);
              v48[v64] = 0;
            }

            log_OutText(a1[4], "FE_PHRASING", 5, 0, "word [%d] %s lookup %s", v116, *(*(*a5 + 224 * v121 + 16) + 8 * *(a6 + 16)), v48);
            v65 = (*(*(a7 + 72) + 56))(*(a7 + 96), *(a7 + 104), v48, *(a7 + 120));
            if ((v65 & 0x1FFF) == 0x14)
            {
              if (((*(*(a7 + 72) + 56))(*(a7 + 96), *(a7 + 104), "$MEANW2V$", *(a7 + 120)) & 0x1FFF) == 0x14)
              {
                log_OutPublic(a1[4], "FE_PHRASING", 37004, "%s%s", "expected", "$MEANW2V$");
                Str = 2315264000;
                goto LABEL_147;
              }
            }

            else
            {
              Str = v65;
              if ((v65 & 0x80000000) != 0)
              {
                goto LABEL_147;
              }
            }

            v114 = v48;
            v66 = v49 * v116;
            cstdlib_memcpy(&v128[v49 * v116], *(a7 + 120), 4 * *(a7 + 112));
            if (*(a7 + 10))
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              while (cstdlib_strcmp(*(*(a7 + 32) + v67), "POS"))
              {
                v60 = "PHR";
                if (!cstdlib_strcmp(*(*(a7 + 32) + v67), "PHR"))
                {
                  v71 = *(*a5 + 224 * v121 + 80);
                  goto LABEL_92;
                }

                v60 = "TOK";
                if (!cstdlib_strcmp(*(*(a7 + 32) + v67), "TOK"))
                {
                  v71 = *(*a5 + 224 * v121 + 168);
                  goto LABEL_92;
                }

                v60 = "COMP";
                if (!cstdlib_strcmp(*(*(a7 + 32) + v67), "COMP"))
                {
                  v71 = *(*a5 + 224 * v121 + 176);
                  goto LABEL_92;
                }

                v60 = "SPUNC";
                if (!cstdlib_strcmp(*(*(a7 + 32) + v67), "SPUNC"))
                {
                  v71 = *(*a5 + 224 * v121 + 184);
                  goto LABEL_92;
                }

                v60 = "EPUNC";
                if (!cstdlib_strcmp(*(*(a7 + 32) + v67), "EPUNC"))
                {
                  v71 = *(*a5 + 224 * v121 + 192);
                  goto LABEL_92;
                }

                v60 = "PUNC";
                if (!cstdlib_strcmp(*(*(a7 + 32) + v67), "PUNC"))
                {
                  v71 = *(*a5 + 224 * v121 + 200);
                  goto LABEL_92;
                }

                if (cstdlib_strcmp(*(*(a7 + 32) + v67), "ORTHPUNC"))
                {
                  goto LABEL_94;
                }

                v71 = *(*a5 + 224 * v121 + 208);
                v72 = v68;
                v73 = a1;
                v74 = a7;
                v75 = "ORTHPUNC";
LABEL_93:
                IndexValue = getIndexValue(v73, v74, v72, v75, v71, &v130);
                if ((IndexValue & 0x80000000) != 0)
                {
                  Str = IndexValue;
                  v48 = v114;
                  goto LABEL_147;
                }

LABEL_94:
                v130 -= v69;
                v77 = v130;
                log_OutText(a1[4], "FE_PHRASING", 5, 0, "translated thisFeatureIdx=%d", v130);
                if (*(*(a7 + 32) + v67 + 8))
                {
                  v78 = v77 + 1.0;
                  v79 = *(a7 + 112);
                  v128[v66 + v70 + v79] = v78;
                  log_OutText(a1[4], "FE_PHRASING", 5, 0, "NUMERIC SET [%d] (%d + %d + %d) = %3.1lf + 1.0", v66 + v70 + v79, v66, v79, v70, v77);
                  v80 = *(a7 + 32);
                  v81 = 1;
                }

                else
                {
                  v82 = *(a7 + 112);
                  v128[v66 + v70 + v77 + v82] = 1.0;
                  log_OutText(a1[4], "FE_PHRASING", 5, 0, "ONEHOT SET [%d] (%d + %d + %d + %d) = 1.0", v66 + v70 + v77 + v82, v66, v82, v77, v70);
                  v80 = *(a7 + 32);
                  v81 = *(v80 + v67 + 26);
                }

                v70 += v81;
                v83 = v80 + v67;
                v69 += *(v83 + 26);
                log_OutText(a1[4], "FE_PHRASING", 5, 0, "increase featureValOffset by %s %d", *v83, *(v83 + 26));
                ++v68;
                v67 += 32;
                v60 = "POS";
                if (v68 >= *(a7 + 10))
                {
                  goto LABEL_98;
                }
              }

              v71 = *(*(*a5 + 224 * v121 + 16) + 8 * *(a6 + 18));
LABEL_92:
              v72 = v68;
              v73 = a1;
              v74 = a7;
              v75 = v60;
              goto LABEL_93;
            }

LABEL_98:
            v46 = v120;
            ++v116;
            ++v121;
            v45 = a9;
            v47 = v122;
            v48 = v114;
            if (v121 == v117)
            {
              goto LABEL_104;
            }
          }

          v48 = heap_Calloc(a1[1], 1, v58 + 1);
          if (!v48)
          {
LABEL_151:
            Str = 2315264010;
            v99 = a1[4];
            v100 = 37000;
LABEL_125:
            log_OutPublic(v99, "FE_PHRASING", v100, 0);
            goto LABEL_147;
          }

          goto LABEL_58;
        }

        v48 = 0;
LABEL_104:
        LOWORD(v44) = *(a7 + 8);
        *(**(a7 + 48) + 196) = v44 / 100.0;
        if ((paramc_ParamGetInt(a1[5], "nnpausingthresholdpercent", &v124) & 0x80000000) == 0)
        {
          v84 = v124 / 100.0;
          *(**(a7 + 48) + 196) = v84;
          log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN pausing threshold set to %f", v84);
        }

        v85 = v113;
        if (!*(a7 + 18))
        {
          v85 = *(a7 + 6);
        }

        Str = fi_predict(*(a7 + 48), &v128, v85, &v129);
        if ((Str & 0x80000000) != 0)
        {
          v99 = a1[4];
          v100 = 37002;
          goto LABEL_125;
        }

        v86 = *(a5 + 8);
        *(a7 + 136) = v86;
        if (*(a7 + 6))
        {
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v90 = v117;
          do
          {
            v91 = *(a7 + 128);
            *(v91 + v87) = 0;
            if (v89 < v90)
            {
              v92 = (*a5 + v88);
              v93 = v91 + v87;
              v94 = v92[1];
              v95 = *(v129 + 8 * v89);
              *(v93 + 4) = *v92;
              *(v93 + 8) = v94;
              v96 = a1[4];
              if (v95)
              {
                log_OutText(v96, "FE_PHRASING", 5, 0, "Prediction [%d,%s]: %s");
              }

              else
              {
                log_OutText(v96, "FE_PHRASING", 5, 0, "Prediction via thresholding [%d,%s]: 0");
              }

              v97 = *(v129 + 8 * v89);
              if (v97 && !cstdlib_strcmp(v97, "1"))
              {
                v98 = *a5 + v88;
                if (**(v98 + 208) == 88)
                {
                  *(v98 + 216) = 2;
                  log_OutText(a1[4], "FE_PHRASING", 5, 0, "_RESPPAUSE", 0);
                }

                else
                {
                  *(v98 + 216) = 1;
                  log_OutText(a1[4], "FE_PHRASING", 5, 0, "_PUNCPAUSE", 0);
                }
              }

              else
              {
                *(*a5 + v88 + 216) = 0;
              }

              v90 = v117;
            }

            ++v89;
            v88 += 224;
            v87 += 12;
          }

          while (v89 < *(a7 + 6));
          v86 = *(a5 + 8);
          v45 = a9;
          v46 = v120;
          v47 = v122;
        }

        else
        {
          LODWORD(v90) = v117;
        }

        if (v90 < v86)
        {
          v101 = 0;
          v102 = v86 - v90;
          v103 = vdupq_n_s64(v102 - 1);
          v104 = (*a5 + 224 * v90);
          do
          {
            v105 = vdupq_n_s64(v101);
            v106 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v105, xmmword_26ECC7980)));
            if (vuzp1_s16(v106, *v103.i8).u8[0])
            {
              v104[54] = 0;
            }

            if (vuzp1_s16(v106, *&v103).i8[2])
            {
              v104[110] = 0;
            }

            if (vuzp1_s16(*&v103, vmovn_s64(vcgeq_u64(v103, vorrq_s8(v105, xmmword_26ECCE810)))).i32[1])
            {
              v104[166] = 0;
              v104[222] = 0;
            }

            v101 += 4;
            v104 += 224;
          }

          while (((v102 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v101);
        }

        validatePauseLocations(a1, a7, a5, a6, v47);
        *v45 = 0;
        if (*(a5 + 8))
        {
          v107 = 0;
          v108 = 0;
          v109 = -*(a5 + 8);
          v110 = *a5 + 216;
LABEL_138:
          v111 = (v110 + 224 * v108++);
          do
          {
            v112 = *v111;
            v111 += 56;
            if (v112)
            {
              v107 = 1;
              *v45 = 1;
              if (v109 + v108)
              {
                goto LABEL_138;
              }

              goto LABEL_145;
            }

            ++v108;
          }

          while (v109 + v108 != 1);
          if ((v107 & 1) == 0)
          {
            goto LABEL_146;
          }

LABEL_145:
          log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN_PAUSING has prediction(s)", 0);
          Str = NNPausing_UpdateLingdb(a1, v46, v119, v118, a7, a5);
        }

        else
        {
LABEL_146:
          log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN_PAUSING has no prediction(s)", 0);
        }

LABEL_147:
        if (v128)
        {
          heap_Free(a1[1], v128);
          v128 = 0;
        }

        if (v48)
        {
          heap_Free(a1[1], v48);
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

uint64_t getIndexValue(uint64_t a1, uint64_t a2, unsigned int a3, char *__src, const char *a5, unsigned __int16 *a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0;
  cstdlib_strcpy(__dst, __src);
  cstdlib_strncat(__dst, a5, 0x36uLL);
  v12 = ssftmap_Find(*(a2 + 24), __dst, &v20);
  if ((v12 & 0x1FFF) == 0x14)
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

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s [%s] (default) convert %s to vector col %d", v15, __src, a5, v14);
    return 0;
  }

  else
  {
    v16 = v12;
    v17 = cstdlib_atoi(v20);
    *a6 = v17;
    if (*(*(a2 + 32) + 32 * a3 + 8))
    {
      v18 = "NUMERIC";
    }

    else
    {
      v18 = "ONEHOT";
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s [%s] convert %s to vector col %d", v18, __src, a5, v17);
  }

  return v16;
}

uint64_t validatePauseLocations(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (a5 == -1)
  {
    v9 = a2[8];
  }

  else
  {
    v9 = a5;
  }

  result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "validatePauseLocations doCompVerification=%d doPHRVerification=%d doLenVerification=%d minWordSpan=%d", a2[6], a2[7], a2[8], a5);
  LODWORD(v11) = *(a3 + 4);
  if (!*(a3 + 4))
  {
    return result;
  }

  v37 = v9;
  v12 = 0;
  v13 = 0;
  v14 = 208;
  do
  {
    v15 = v12 + 1;
    if (v12 + 1 >= v11 || (v16 = *(*a3 + v14 + 96)) == 0 || cstdlib_strncmp(v16, "B-", 2uLL) && cstdlib_strcmp(*(*a3 + v14 + 96), "O"))
    {
      v17 = 0;
      v18 = 1;
    }

    else
    {
      v18 = 0;
      v17 = 1;
    }

    v19 = *a3;
    v20 = *(*a3 + v14 - 32);
    if (v20)
    {
      if (!cstdlib_strcmp(v20, "[COMP"))
      {
        v13 = 1;
      }

      v19 = *a3;
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "[%d] %s bInCompoundWord=%d bPHRBnd=%d pause=%d orthPunc=%s    (%s %s)", v12, *(*(v19 + v14 - 192) + 8 * *(a4 + 16)), v13, v17, *(v19 + v14 + 8), *(v19 + v14), *(v19 + v14 - 128), *(v19 + v14 - 32));
    v21 = *a3;
    if (!*(*a3 + v14 + 8))
    {
      goto LABEL_42;
    }

    if (v13 == 1 && a2[6] == 1 && cstdlib_strcmp(*(v21 + v14 - 32), "COMP]"))
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside compound word");
LABEL_41:
      v21 = *a3;
      *(*a3 + v14 + 8) = 0;
      goto LABEL_42;
    }

    v22 = v18 ^ 1;
    if (a2[7] != 1)
    {
      v22 = 1;
    }

    if ((v22 & 1) == 0)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside PHR");
      goto LABEL_41;
    }

    if (cstdlib_strcmp(*(*a3 + v14 - 40), "-"))
    {
      v23 = *a3;
      if (v15 < *(a3 + 4))
      {
        v24 = cstdlib_strcmp(*(v23 + v14 + 184), "-");
        v23 = *a3;
        if (v24)
        {
          v25 = v23 + v14;
          v26 = **(v23 + v14 - 40);
          if (v26 == 73)
          {
            goto LABEL_30;
          }

          if (v26 == 66)
          {
            v25 = v23 + v14;
LABEL_30:
            if (**(v25 + 184) == 73)
            {
              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside TOK");
              goto LABEL_41;
            }
          }
        }
      }
    }

    else
    {
      v23 = *a3;
    }

    v27 = cstdlib_strcmp(*(*(v23 + v14 - 192) + 8 * *(a4 + 16)), "§");
    v28 = *(a3 + 4);
    if (!v27 && v15 < v28)
    {
      if (!cstdlib_strcmp(*(*(*a3 + v14 + 32) + 8 * *(a4 + 16)), "§"))
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside DUMMYWORD sequence");
        goto LABEL_41;
      }

      v28 = *(a3 + 4);
    }

    v21 = *a3;
    if (v12 + 3 > v28)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block on last 2 words");
      goto LABEL_41;
    }

LABEL_42:
    result = *(v21 + v14 - 32);
    if (result)
    {
      result = cstdlib_strcmp(result, "COMP]");
      if (!result)
      {
        v13 = 0;
      }
    }

    v11 = *(a3 + 4);
    v14 += 224;
    ++v12;
  }

  while (v15 < v11);
  if (v37 && *(a3 + 4))
  {
    v29 = 0;
    v30 = 0;
    v31 = *a3;
    v32 = -1;
    do
    {
      if (**(v31 + 224 * v29 + 208) != 88 || v30 + 1 == v11)
      {
        if (v29)
        {
          if (v30 - v32 >= v37)
          {
            goto LABEL_64;
          }

          if (v32 == 0xFFFF)
          {
            v32 = 0;
          }

          if (v29 <= v32)
          {
LABEL_64:
            v32 = v29;
          }

          else
          {
            v34 = v32;
            v35 = v32;
            v36 = 224 * v32;
            do
            {
              if (*(v31 + v36 + 216) == 2)
              {
                result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : blocked via len constraints, span word %d to word %d < %d", v34, *(*(v31 + v36 + 16) + 8 * *(a4 + 16)), v35, v30, v37);
                v31 = *a3;
                *(*a3 + v36 + 216) = 0;
              }

              ++v34;
              v36 += 224;
            }

            while (v29 != v34);
            LODWORD(v11) = *(a3 + 4);
            v32 = v29;
          }
        }

        else
        {
          v32 = 0;
        }
      }

      v30 = ++v29;
    }

    while (v29 < v11);
  }

  return result;
}

uint64_t getNumericFeatureValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a5 = 0;
  v6 = (*(a1 + 96))(a2, a3, "fecfg", a4, &__c[3], &__c[1], __c);
  if ((v6 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v8 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
    }

    *a5 = cstdlib_atoi(**&__c[3]);
  }

  return v6;
}

uint64_t setStr(uint64_t a1, char **a2, char *__s)
{
  if (__s)
  {
    v6 = *(a1 + 8);
    v7 = cstdlib_strlen(__s);
    v8 = heap_Calloc(v6, 1, (v7 + 1));
    *a2 = v8;
    if (v8)
    {
      cstdlib_strcpy(v8, __s);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      return 2315264010;
    }
  }

  else
  {
    v9 = 2315264007;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  }

  return v9;
}

uint64_t getNumDigits(unsigned int a1)
{
  if (a1 >= 0xA)
  {
    v2 = 0;
    do
    {
      v3 = v2++;
      v4 = a1 > 0x63;
      a1 /= 0xAu;
    }

    while (v4);
    return (v3 + 2);
  }

  else
  {
    return 1;
  }
}

uint64_t getAsFactOf10(int a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = vdupq_n_s32(a1 - 1);
  v2.i64[0] = 0x100000001;
  v2.i64[1] = 0x100000001;
  v3 = 4;
  v4.i64[0] = 0xA0000000ALL;
  v4.i64[1] = 0xA0000000ALL;
  do
  {
    v5 = v2;
    v2 = vmulq_s32(v2, v4);
    v3 -= 4;
  }

  while (((a1 + 3) & 0x1FFFC) + v3 != 4);
  v6 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v3), xmmword_26ECCEBC0), v1), v5, v2);
  *v6.i8 = vmul_s32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  return (v6.i32[0] * v6.i32[1]);
}

uint64_t getPrecisionFactor(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2 >= 0xA)
  {
    v4 = 0;
    do
    {
      v5 = v4++;
      v6 = v2 > 0x63;
      v2 /= 0xAu;
    }

    while (v6);
    v3 = v5 + 2;
  }

  else
  {
    v3 = 1;
  }

  v7 = *(a2 + 2);
  if (v7 >= 0xA)
  {
    v9 = 0;
    do
    {
      v10 = v9++;
      v6 = v7 > 0x63;
      v7 /= 0xAu;
    }

    while (v6);
    v8 = v10 + 2;
  }

  else
  {
    v8 = 1;
  }

  if (v3 > v8)
  {
    v11 = vdupq_n_s32(v3 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v14.i64[0] = 0xA0000000ALL;
    v14.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v14);
      v13 -= 4;
    }

    while (((v3 + 3) & 0x1FFFC) + v13 != 4);
LABEL_22:
    v21 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v13), xmmword_26ECCEBC0), v11), v15, v12);
    *v21.i8 = vmul_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
    return (v21.i32[0] * v21.i32[1]);
  }

  if (v8 > v3)
  {
    v16 = (v8 + 3) & 0x1FFFC;
    v11 = vdupq_n_s32(v8 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v17.i64[0] = 0xA0000000ALL;
    v17.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v17);
      v13 -= 4;
    }

    while (v16 + v13 != 4);
    goto LABEL_22;
  }

  if (v3)
  {
    v18 = v3;
    v19 = (v3 + 3) & 0x1FFFC;
    v11 = vdupq_n_s32(v18 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v20.i64[0] = 0xA0000000ALL;
    v20.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v20);
      v13 -= 4;
    }

    while (v19 + v13 != 4);
    goto LABEL_22;
  }

  return 1;
}

BOOL FLOATSUR_GT_INT(unsigned __int16 *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 > a2)
  {
    return 1;
  }

  if (v3 >= a2)
  {
    return a1[1] > a3;
  }

  return 0;
}

BOOL FLOATSUR_GT(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 > v2)
  {
    return 1;
  }

  if (v3 >= v2)
  {
    return a1[1] > a2[1];
  }

  return 0;
}

BOOL FLOATSUR_GTOREQUAL(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = a2[1];
  if (v3 == v2)
  {
    if (a1[1] == v4)
    {
      return 1;
    }
  }

  else if (v3 > v2)
  {
    return 1;
  }

  return v3 >= v2 && a1[1] > v4;
}

BOOL FLOATSUR_LT_INT(unsigned __int16 *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 < a2)
  {
    return 1;
  }

  if (v3 > a2)
  {
    return 0;
  }

  return a1[1] < a3;
}

BOOL FLOATSUR_LT(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 < v2)
  {
    return 1;
  }

  if (v3 > v2)
  {
    return 0;
  }

  return a1[1] < a2[1];
}

_WORD *FLOATSUR_SET_INT(_WORD *result, __int16 a2, __int16 a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t FLOATSUR_PLUS(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v14 = 0;
  v13 = 0;
  result = getVals(a2, a3, &v14 + 1, &v14, &v13);
  v5 = v13 + v14;
  v6 = HIDWORD(v14);
  v7 = (v13 + v14) / HIDWORD(v14);
  *a1 = v7;
  v8 = v5 - v7 * v6;
  if (v8)
  {
    v9 = v8 % 0xA == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    do
    {
      v10 = v8;
      v8 /= 0xAu;
    }

    while (v10 >= 0xA && v8 == 10 * ((429496730 * v8) >> 32));
  }

  if (v8 < 0x10000)
  {
    LOWORD(v11) = v8;
  }

  else
  {
    do
    {
      v11 = v8 / 0xA;
      v12 = v8 >> 17;
      v8 /= 0xAu;
    }

    while (v12 > 4);
  }

  a1[1] = v11;
  return result;
}

uint64_t getVals(unsigned __int16 *a1, unsigned __int16 *a2, unsigned int *a3, uint64_t a4, unsigned int *a5)
{
  roundUpAndNormalize(a1);
  roundUpAndNormalize(a2);
  result = getPrecisionFactor(a1, a2);
  *a3 = result;
  v11 = *a1;
  v12 = a1[1];
  *a4 = v12 + result * v11;
  v13 = *a2;
  v14 = a2[1];
  v15 = v14 + *a3 * v13;
  *a5 = v15;
  if (*a4 >= 0x10000u && v15 >= 0x10000)
  {
    v16 = 1;
    do
    {
      if (v15 < 0x10000)
      {
        break;
      }

      v16 *= 10;
      v17 = *a3 / 0xA;
      *a3 = v17;
      *a4 = v12 / (v16 & 0xFFFEu) + v17 * v11;
      v15 = v14 / (v16 & 0xFFFEu) + *a3 * v13;
      *a5 = v15;
    }

    while (*(a4 + 2));
  }

  return result;
}

uint64_t FLOATSUR_PLUS_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_PLUS(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_MINUS(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14;
  v6 = v15;
  if (v15 >= v14)
  {
    v7 = HIDWORD(v15);
    v8 = (v15 - v14) / HIDWORD(v15);
    *a1 = v8;
    v9 = v6 - (v5 + v8 * v7);
    if (v9)
    {
      v10 = v9 % 0xA == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      do
      {
        v11 = v9;
        v9 /= 0xAu;
      }

      while (v11 >= 0xA && v9 == 10 * ((429496730 * v9) >> 32));
    }

    if (v9 < 0x10000)
    {
      LOWORD(v12) = v9;
    }

    else
    {
      do
      {
        v12 = v9 / 0xA;
        v13 = v9 >> 17;
        v9 /= 0xAu;
      }

      while (v13 > 4);
    }

    a1[1] = v12;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t roundUpAndNormalize(uint64_t result)
{
  v1 = *(result + 2);
  if (v1 >= 0x64)
  {
    do
    {
      v2 = v1;
      v1 /= 0xAu;
    }

    while (v2 >= 0x3E8);
    *(result + 2) = v1;
    if (v2 >= 0xA && v1 == 10 * ((429496730 * v1) >> 32))
    {
      do
      {
        v3 = v1;
        v1 /= 0xAu;
      }

      while (v3 >= 0xA && v1 == 10 * ((429496730 * v1) >> 32));
      *(result + 2) = v1;
    }
  }

  if (v1 <= 9)
  {
    *(result + 2) = 10 * v1;
  }

  return result;
}

uint64_t FLOATSUR_MINUS_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_MINUS(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_TIMES(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14 * v15;
  v6 = HIDWORD(v15) * HIDWORD(v15);
  v7 = v14 * v15 / (HIDWORD(v15) * HIDWORD(v15));
  if (v7 < 0x10000)
  {
    *a1 = v7;
    v8 = v7 * v6;
    if (v6 > v5)
    {
      v8 = 0;
    }

    v9 = v5 - v8;
    if (v9)
    {
      v10 = v6 / 0xA;
      if (v9 >= v10)
      {
        HIDWORD(v11) = -858993459 * v9;
        LODWORD(v11) = -858993459 * v9;
        if ((v11 >> 1) <= 0x19999999)
        {
          do
          {
            v12 = v9;
            v9 /= 0xAu;
          }

          while (v12 >= 0xA && v9 == 10 * ((429496730 * v9) >> 32));
        }

        if (v9 < 0x10000)
        {
          LOWORD(v10) = v9;
        }

        else
        {
          do
          {
            v10 = v9 / 0xA;
            v13 = v9 >> 17;
            v9 /= 0xAu;
          }

          while (v13 > 4);
        }
      }

      else
      {
        LOWORD(v10) = 10 * v9 / v10 > 5;
      }
    }

    else
    {
      LOWORD(v10) = 0;
    }

    a1[1] = v10;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0xFFFF;
  }

  return result;
}

uint64_t FLOATSUR_TIMES_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_TIMES(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_DIV(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14;
  if (v14)
  {
    v6 = v15;
    v7 = v15 / v14;
    *a1 = v15 / v14;
    v8 = v6 - v7 * v5;
    if (v8)
    {
      v9 = HIDWORD(v15) * v8 * HIDWORD(v15);
      v10 = v9 / v5;
      if (v5 <= v9 && !(v10 % 0xA))
      {
        do
        {
          v11 = v10;
          v10 /= 0xAu;
        }

        while (v11 >= 0xA && v10 == 10 * ((429496730 * v10) >> 32));
      }

      if (v10 < 0x10000)
      {
        LOWORD(v12) = v10;
      }

      else
      {
        do
        {
          v12 = v10 / 0xA;
          v13 = v10 >> 17;
          v10 /= 0xAu;
        }

        while (v13 > 4);
      }
    }

    else
    {
      LOWORD(v12) = 0;
    }

    a1[1] = v12;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t load_stress_models(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, uint64_t a8, _DWORD *a9, uint64_t *a10, void *a11, uint64_t a12, void *a13, _OWORD *a14, _WORD *a15, _BOOL4 *a16)
{
  *&__c[3] = 0;
  v40 = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v37 = 0;
  v38 = 0;
  *&v36 = safeh_GetNullHandle();
  *(&v36 + 1) = v23;
  *a10 = 0;
  *a11 = 0;
  inited = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_stress", &v40, &__c[1], __c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v34 = a8;
  v25 = 1;
  if (*&__c[1] == 1 && v40)
  {
    v26 = *v40;
    v26[cstdlib_strlen(*v40) - 1] = 0;
    v25 = cstdlib_strcmp(*v40, "yes") != 0;
  }

  *&__c[1] = 0;
  inited = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_stress_albert", &v40, &__c[1], __c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v27 = 0;
  if (*&__c[1] == 1 && v40)
  {
    v28 = *v40;
    v28[cstdlib_strlen(*v40) - 1] = 0;
    v27 = cstdlib_strcmp(*v40, "yes") == 0;
  }

  if (v25)
  {
    goto LABEL_10;
  }

  v31 = v27;
  inited = fe_stress_tryLoading_STRESS_igModel(a1, a2, a3, &v38);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a10 = v38;
  inited = Init_stress_nn_model(a3, a1, a2, a7, v34, &v37);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a11 = v37;
  v32 = v31 ? "albert" : "char";
  inited = (*(a12 + 16))(*a13, a13[1], v32, a1, a2, &v36);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a14 = v36;
  *a9 = 1;
  *a16 = v31;
LABEL_10:
  *a15 = 20;
  __c[0] = 0;
  *&__c[1] = -1;
  v29 = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_pos_dimension", &__c[3], &__c[1], __c);
  if ((v29 & 0x80000000) == 0 && *&__c[1])
  {
    v30 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v30)
    {
      *v30 = 0;
    }

    *a15 = cstdlib_atoi(**&__c[3]);
  }

  return v29;
}

uint64_t fe_stress_tryLoading_STRESS_igModel(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v17, 0, 240);
  *v14 = 0;
  v15 = 0;
  *a4 = 0;
  __s2 = 0;
  memset(__s1, 0, sizeof(__s1));
  v17[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &__s2);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v15), (Str & 0x80000000) != 0) || (cstdlib_strcat(__s1, "nnstressigrules_"), cstdlib_strcat(__s1, __s2), cstdlib_strcat(__s1, "_"), cstdlib_strcat(__s1, v15), Str = brokeraux_ComposeBrokerString(a3, __s1, 1, 1, __s2, 0, 0, v17, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v17, "IGTR", 1031, v14), (Str & 0x80000000) != 0))
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
      log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0);
      v10 = 2315264010;
    }
  }

  if (*v14)
  {
    v11 = ssftriff_reader_ObjClose(*v14);
    if ((v10 & 0x80000000) == 0)
    {
      v12 = v11;
      if ((v11 & 0x80000000) != 0)
      {
        if (*a4)
        {
          heap_Free(*(a3 + 8), *a4);
          *a4 = 0;
        }

        return v12;
      }
    }
  }

  return v10;
}

uint64_t Init_stress_nn_model(uint64_t a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5, void *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v17, 0, 240);
  v14 = 0;
  v15 = 0;
  *a6 = 0;
  __s2 = 0;
  memset(__s1, 0, sizeof(__s1));
  v17[15] = 0u;
  if ((paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2) & 0x80000000) == 0 && (paramc_ParamGetStr(*(a1 + 40), "fecfg", &v15) & 0x80000000) == 0)
  {
    cstdlib_strcat(__s1, "nnstress_");
    cstdlib_strcat(__s1, __s2);
    cstdlib_strcat(__s1, "_");
    cstdlib_strcat(__s1, v15);
    brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, v17, 0x100uLL);
  }

  v12 = fi_init(a2, a3, a4, a5, &v14, 0, v17, "FINN", 1, 0);
  if ((v12 & 0x80000000) != 0)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Init Stress FI model failed");
  }

  else
  {
    *a6 = v14;
  }

  return v12;
}

uint64_t **free_stress_model(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    igtree_Deinit(a1, a3);
    heap_Free(*(a1 + 8), a3);
  }

  if (a4)
  {
    a4 = fi_deinit(a1, a2, a4);
  }

  if (a5)
  {
    (*(a5 + 24))(a6, a7);
  }

  return a4;
}

uint64_t fe_stress_process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t ***a9, unsigned __int16 a10, int a11)
{
  v17 = heap_Calloc(a1[1], 1, 16);
  if (!v17)
  {
    UTF8Char = 2315264010;
    log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
    return UTF8Char;
  }

  v18 = v17;
  v278 = 0;
  v279 = 0;
  v280 = 0;
  v281 = 0;
  v277 = 0;
  v275 = 0;
  v276 = 0;
  v274 = 0;
  v272 = 0;
  *__s = 0;
  v271 = 0;
  *(v17 + 12) = 0;
  v19 = (*(a4 + 104))(a2, a3, 1, 0, &v279 + 2);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_295;
  }

  UTF8Char = (*(a4 + 184))(a2, a3, HIWORD(v279), 0, &v278);
  v21 = 0;
  if ((UTF8Char & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v278 != 1)
  {
    goto LABEL_126;
  }

  UTF8Char = (*(a4 + 176))(a2, a3, HIWORD(v279), 0, &v281, &v278 + 2);
  v21 = 0;
  if ((UTF8Char & 0x80000000) != 0 || HIWORD(v278) < 2u)
  {
    goto LABEL_126;
  }

  log_OutText(a1[4], "FE_PHRASING", 5, 0, "Stress: processing=%s", v281);
  v22 = heap_Calloc(a1[1], 1, 1024);
  if (!v22)
  {
    goto LABEL_487;
  }

  v23 = v22;
  v233 = a5;
  v24 = cstdlib_strlen(v281);
  v25 = heap_Calloc(a1[1], 1, (v24 + 1));
  if (!v25)
  {
    UTF8Char = 2315264010;
    log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
    v72 = a1[1];
    v73 = v23;
LABEL_250:
    heap_Free(v72, v73);
    goto LABEL_488;
  }

  v26 = v25;
  UTF8Char = (*(a4 + 104))(a2, a3, 2, HIWORD(v279), &v279);
  if ((UTF8Char & 0x80000000) != 0 || (v27 = v279) == 0)
  {
    heap_Free(a1[1], v23);
    v21 = 0;
    v48 = v26;
    a5 = v233;
    goto LABEL_125;
  }

  v249 = v23;
  v260 = 0;
  v252 = 0;
  v21 = 0;
  v228 = a4;
  v230 = a2;
  v245 = a8;
  while (1)
  {
    v28 = (*(a4 + 168))(a2, a3, v27, 0, 1, &v276, &v278 + 2);
    if ((v28 & 0x80000000) != 0)
    {
LABEL_100:
      UTF8Char = v28;
      goto LABEL_101;
    }

    v29 = v276;
    if (v276 == 15)
    {
      v28 = (*(a4 + 168))(a2, a3, v279, 1, 1, &v275 + 2, &v278 + 2);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_100;
      }

      v28 = (*(a4 + 168))(a2, a3, v279, 2, 1, &v275, &v278 + 2);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_100;
      }

      if (HIWORD(v275) > v275)
      {
        goto LABEL_105;
      }

      v29 = v276;
    }

    v30 = v29 > 0xA;
    v31 = (1 << v29) & 0x610;
    if (!v30 && v31 != 0)
    {
      break;
    }

LABEL_92:
    UTF8Char = (*(a4 + 120))(a2, a3, v279, &v279);
    v48 = 0;
    if ((UTF8Char & 0x80000000) != 0)
    {
      v257 = 0;
      goto LABEL_120;
    }

    v27 = v279;
    v257 = 0;
    if (!v279)
    {
      goto LABEL_120;
    }
  }

  v33 = (*(a4 + 168))(a2, a3, v279, 1, 1, &v274 + 2, &v278 + 2);
  if ((v33 & 0x80000000) != 0 || (v33 = (*(a4 + 168))(a2, a3, v279, 2, 1, &v274, &v278 + 2), (v33 & 0x80000000) != 0))
  {
LABEL_99:
    UTF8Char = v33;
    v21 = 0;
LABEL_101:
    v48 = 0;
    v257 = 0;
    goto LABEL_120;
  }

  if (HIWORD(v274) > v274)
  {
    v21 = 0;
LABEL_105:
    v48 = 0;
    v257 = 0;
    v74 = 16049;
    goto LABEL_106;
  }

  cstdlib_strncpy(v26, &v281[HIWORD(v274)], v274 - HIWORD(v274));
  v26[v274 - HIWORD(v274)] = 0;
  v33 = (*(a4 + 184))(a2, a3, v279, 14, &v278);
  if ((v33 & 0x80000000) != 0)
  {
    goto LABEL_99;
  }

  if (v278 == 1)
  {
    v33 = (*(a4 + 176))(a2, a3, v279, 14, &v280, &v278 + 2);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_99;
    }

    hlp_NLUStrFind(v280, "POS", &v272, &v277);
  }

  v251 = v272;
  if (v272)
  {
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v34 = heap_Calloc(a1[1], 1, 2);
    v272 = v34;
    if (!v34)
    {
      v48 = 0;
      v257 = 0;
      v74 = 8202;
LABEL_106:
      UTF8Char = v74 | 0x8A000000;
      goto LABEL_120;
    }

    *v34 = 61;
    v272[1] = 0;
    v21 = 1;
  }

  v35 = heap_Calloc(a1[1], 1, v277 + 1);
  v257 = v35;
  if (!v35)
  {
    goto LABEL_102;
  }

  v36 = v35;
  cstdlib_strncpy(v35, v272, v277);
  v36[v277] = 0;
  v37 = (*(a4 + 176))(a2, a3, v279, 9, __s, &v278 + 2);
  if ((v37 & 0x80000000) != 0)
  {
    UTF8Char = v37;
LABEL_108:
    v48 = 0;
    goto LABEL_119;
  }

  v38 = heap_Calloc(a1[1], 1, 16);
  if (!v38)
  {
LABEL_102:
    UTF8Char = 2315264010;
    log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
    goto LABEL_108;
  }

  v39 = v38;
  *(v38 + 8) = 655360;
  v40 = heap_Calloc(a1[1], 10, 16);
  *v39 = v40;
  if (!v40)
  {
    v48 = 0;
    goto LABEL_117;
  }

  v41 = (*(a4 + 176))(a2, a3, v279, 3, &v271, &v278 + 2);
  if ((v41 & 0x80000000) != 0)
  {
    UTF8Char = v41;
    v48 = 0;
    goto LABEL_118;
  }

  v42 = cstdlib_strstr(v271, "[SVOX]");
  v43 = v271;
  v44 = a4;
  if (v42)
  {
    v43 = v271 + 6;
    v271 += 6;
  }

  v45 = a1[1];
  v46 = cstdlib_strlen(v43);
  v47 = heap_Alloc(v45, v46 + 1);
  v48 = v47;
  if (!v47)
  {
LABEL_103:
    a4 = v44;
    goto LABEL_117;
  }

  cstdlib_strcpy(v47, v271);
  if (cstdlib_strlen(v271) >= v252)
  {
    v50 = (cstdlib_strlen(v271) + 1);
    if (v50 <= 4)
    {
      v51 = 4;
    }

    else
    {
      v51 = v50;
    }

    v252 = v51;
    v49 = heap_Realloc(a1[1], v260, v51);
    if (!v49)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v49 = v260;
    if (!v260)
    {
      v260 = 0;
      goto LABEL_49;
    }
  }

  v260 = v49;
  *v49 = 0;
LABEL_49:
  if (cstdlib_strlen(v26))
  {
    v254 = 0;
    v52 = 0;
    v235 = a3;
    while ((utf8_getUTF8Char(v26, v52, &v270) & 0x80000000) == 0)
    {
      v53 = *(v39 + 10);
      if (*(v39 + 8) >= v53)
      {
        v54 = heap_Realloc(a1[1], *v39, 16 * v53 + 160);
        if (!v54)
        {
          a4 = v228;
          goto LABEL_116;
        }

        *v39 = v54;
        cstdlib_memset((v54 + 16 * *(v39 + 8)), 0, 0xA0uLL);
        *(v39 + 10) += 10;
      }

      v283[0] = v52;
      if (!v260)
      {
        goto LABEL_81;
      }

      v282 = 0;
      if (utf8_Utf8CharTo16bit(v26, &v282) && ((v282 + 24576) >> 9) <= 0x56u && (v282 > 0x3Eu || ((1 << v282) & 0x5000040000000000) == 0))
      {
        v59 = v260;
        cstdlib_strcpy(v260, v48);
        v61 = 1;
      }

      else
      {
        utf8_GetPreviousValidUtf8Offset(v26, v283);
        v55 = v48;
        if (v283[0])
        {
          NextUtf8Offset = 0;
          v55 = v48;
          while (1)
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v26, NextUtf8Offset);
            v57 = cstdlib_strstr(v55, ".");
            if (!v57)
            {
              break;
            }

            if (*v57 == 46)
            {
              v55 = v57 + 1;
            }

            else
            {
              v55 = v57;
            }

            if (NextUtf8Offset == v283[0])
            {
              goto LABEL_67;
            }
          }

          v260[NextUtf8Offset] = 0;
          a3 = v235;
          break;
        }

LABEL_67:
        LODWORD(v58) = 0;
        v59 = v260;
        while (1)
        {
          v60 = v55[v58];
          v58 = v58;
          if (!v55[v58] || v60 == 46)
          {
            break;
          }

          v260[v58] = v60;
          if (v58 && v60 == 125 && v260[(v58 - 1)] - 48 <= 9)
          {
            v55[v58] = 46;
            v58 = (v58 + 1);
            break;
          }

          LODWORD(v58) = v58 + 1;
        }

        v61 = 0;
        v260[v58] = 0;
      }

      v62 = a1[1];
      v63 = cstdlib_strlen(v59);
      v64 = heap_Alloc(v62, (v63 + 1));
      *(*v39 + 16 * *(v39 + 8)) = v64;
      if (!v64)
      {
        a4 = v228;
        a3 = v235;
        goto LABEL_116;
      }

      cstdlib_strcpy(v64, v59);
      v65 = v254 + cstdlib_strlen(v59) + 1;
      v66 = *(v39 + 8) + 1;
      *(v39 + 8) = v66;
      if (v61)
      {
        a3 = v235;
        goto LABEL_84;
      }

      v254 = v65;
      v52 = utf8_GetNextUtf8Offset(v26, v52);
      a3 = v235;
      if (v52 >= cstdlib_strlen(v26))
      {
        break;
      }
    }
  }

  else
  {
LABEL_81:
    v254 = 0;
  }

  v66 = *(v39 + 8);
  v65 = v254;
LABEL_84:
  a4 = v228;
  if (!v66 || v65 >= cstdlib_strlen(v271) + 1)
  {
LABEL_88:
    UTF8Char = stress_addWord(a1, v26, SHIWORD(v274), v274, v275, v257, v39, *__s, v18);
    stat_stress_freeCandidatePhons(a1, v39);
    heap_Free(a1[1], v39);
    heap_Free(a1[1], v48);
    heap_Free(a1[1], v257);
    a2 = v230;
    if (!v251 && v272)
    {
      heap_Free(a1[1], v272);
      v272 = 0;
    }

    a8 = v245;
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

    goto LABEL_92;
  }

  v67 = a3;
  v68 = cstdlib_strlen(*(*v39 + 16 * *(v39 + 8) - 16));
  v255 = a1[1];
  v69 = *(*v39 + 16 * *(v39 + 8) - 16);
  v70 = cstdlib_strlen(v271);
  v71 = heap_Realloc(v255, v69, v68 - v65 + v70 + 2);
  if (v71)
  {
    *(*v39 + 16 * *(v39 + 8) - 16) = v71;
    cstdlib_strcat(v71, &v271[v65 - 1]);
    a4 = v228;
    a3 = v67;
    goto LABEL_88;
  }

  a4 = v228;
  a3 = v67;
LABEL_116:
  a2 = v230;
LABEL_117:
  UTF8Char = 2315264010;
  log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
LABEL_118:
  stat_stress_freeCandidatePhons(a1, v39);
  heap_Free(a1[1], v39);
LABEL_119:
  a8 = v245;
LABEL_120:
  if (v260)
  {
    heap_Free(a1[1], v260);
  }

  heap_Free(a1[1], v249);
  heap_Free(a1[1], v26);
  if (v257)
  {
    heap_Free(a1[1], v257);
  }

  a5 = v233;
  if (v48)
  {
LABEL_125:
    heap_Free(a1[1], v48);
  }

LABEL_126:
  if ((UTF8Char & 0x80000000) != 0)
  {
    if (v21 != 1)
    {
      goto LABEL_488;
    }

    v73 = v272;
    if (!v272)
    {
      goto LABEL_488;
    }

LABEL_249:
    v72 = a1[1];
    goto LABEL_250;
  }

  if (!*(v18 + 12))
  {
    goto LABEL_488;
  }

  v280 = 0;
  v281 = 0;
  __s[4] = 0;
  *__s = 0;
  LODWORD(v272) = 0;
  UTF8Char = (*(a6 + 40))(a7, a8, &v272);
  if ((UTF8Char & 0x80000000) != 0)
  {
    goto LABEL_488;
  }

  v229 = a4;
  if (!a11)
  {
    v75 = heap_Calloc(a1[1], *(v18 + 12) * (a10 + v272 + 14), 4);
    v76 = v75;
    if (!v75)
    {
      goto LABEL_487;
    }

LABEL_136:
    v225 = v75;
    v234 = a5;
    if (*(v18 + 8))
    {
      v77 = 0;
      v246 = a8;
      while (1)
      {
        v250 = v77;
        v78 = *v18 + (v77 << 6);
        v79 = *(v78 + 24);
        v243 = *(v78 + 32);
        v239 = *(v78 + 40);
        v242 = *(v78 + 48);
        v80 = *(v78 + 52);
        v81 = *(v78 + 54);
        v244 = *(v78 + 56);
        if (!cstdlib_strcmp(v79, "normal") || !cstdlib_strcmp(v79, "mnx"))
        {
          v82 = v80 >= v81;
          v83 = v242;
          if (v82 && v242 != 0)
          {
            break;
          }
        }

LABEL_145:
        v77 = v250 + 1;
        if (v250 + 1 >= *(v18 + 8))
        {
          goto LABEL_251;
        }
      }

      v85 = 0;
      v248 = 0;
      v226 = v81 - 1;
      v86 = v246;
      v236 = a3;
      v231 = a2;
      while (1)
      {
        v247 = v85;
        v87 = v239 + 40 * v85;
        v88 = *(v87 + 8);
        v258 = *(v87 + 24);
        v89 = Utf8_Utf8NbrOfSymbols(v258);
        if (v89 != 1)
        {
          break;
        }

LABEL_246:
        v85 = v247 + 1;
        v83 = v242;
        a3 = v236;
        a2 = v231;
        if (v247 + 1 == v242)
        {
          goto LABEL_145;
        }
      }

      v90 = 0;
      v91 = 0;
      v92 = v83 == 1;
      v224 = v89 - 1;
      v93 = (v89 - 1);
      if (v93 == 1)
      {
        v94 = 3;
      }

      else
      {
        v94 = 0;
      }

      v240 = v94;
      if (v93 != 1)
      {
        v92 = 0;
      }

      v227 = v92;
      v241 = v88;
      while (1)
      {
        v95 = v91;
        UTF8Char = utf8_getUTF8Char(v258, v91, __s);
        if ((UTF8Char & 0x80000000) != 0)
        {
          v73 = v225;
          goto LABEL_249;
        }

        v261 = cstdlib_strlen(__s);
        if (utf8_IsChineseLetter(__s))
        {
          if (!a11)
          {
            v99 = (*(a6 + 56))(a7, v86, __s, v76);
            LODWORD(UTF8Char) = v99;
            if (*v76 == 0.0 && v99 != 0)
            {
              v100.n128_u32[0] = *v76;
              LODWORD(UTF8Char) = (*(a6 + 56))(a7, v86, "</s>", v76, v100);
            }

            v102 = *(v244 + 32 * v248 + 8);
            v103 = *v102;
            if (v103 <= 0x32)
            {
              if (v103 == 49)
              {
                v104 = 4;
                goto LABEL_182;
              }

              if (v103 == 50)
              {
                v104 = 2;
                goto LABEL_182;
              }

LABEL_177:
              v104 = 0;
              goto LABEL_182;
            }

            if (v103 == 51)
            {
              if (v102[1] == 53)
              {
                v104 = 1;
              }

              else
              {
                v104 = 5;
              }
            }

            else
            {
              if (v103 != 53)
              {
                goto LABEL_177;
              }

              if (v102[1] == 53)
              {
                v104 = 0;
              }

              else
              {
                v104 = 3;
              }
            }

LABEL_182:
            v105 = &v76[v272];
            v105[v104] = 1065353216;
            log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get tune %d", __s, v104);
            if (v88)
            {
              utf8_ToLower(v88, 0, &v271);
              if (v271 - 99 > 0x16)
              {
                v106 = 0;
              }

              else
              {
                v106 = word_26ECDAEEC[(v271 - 99)];
              }
            }

            else
            {
              v106 = 2;
            }

            v105[v106 + 6] = 1065353216;
            v107 = &v105[a10 + 6];
            log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get pos %d", __s, v106);
            if (v93 == 1)
            {
              v108 = 2;
            }

            else
            {
              v108 = 1;
            }

            if (!v90)
            {
              v108 = v240;
            }

            *(v107 + 4 * v108) = 1065353216;
            log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get word bmes tag %d", __s, v108);
            if (v247)
            {
              if (v247 == v242 - 1 && v93 == 1)
              {
                v110 = 2;
              }

              else
              {
                v110 = 1;
              }
            }

            else
            {
              if (v227 && v90 == 0)
              {
                v110 = 3;
              }

              else
              {
                v110 = 0;
              }

              if (v90)
              {
                if (v93 == 1 && v242 == 1)
                {
                  v110 = 2;
                }

                else
                {
                  v110 = 1;
                }
              }
            }

            UTF8Char = UTF8Char;
            v88 = v241;
            *(v107 + 16 + 4 * v110) = 1065353216;
            log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get pw bmes tag %d", __s, v110);
            if (v250 && *(*v18 + ((v250 - 1) << 6) + 32) != 1)
            {
              if (v243)
              {
                if (v110 > 1u && v93 == 1)
                {
                  v114 = 69;
                }

                else
                {
                  v114 = 77;
                }
              }

              else
              {
                v114 = 77;
              }
            }

            else
            {
              if (v90 || v110 != 3 && v110)
              {
                v113 = v110 != 2 || v93 != 1 || v243 == 0;
                LODWORD(v114) = 77;
                v115 = 69;
              }

              else
              {
                v113 = v110 != 3 || v224 != 1 || v243 == 0;
                LODWORD(v114) = 66;
                v115 = 83;
              }

              if (v113)
              {
                v114 = v114;
              }

              else
              {
                v114 = v115;
              }
            }

            v86 = v246;
            v76 = (v107 + 32);
            log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get phrase bmes tag %c", __s, v114);
            if (!isERphon(__s, *(v244 + 32 * v248)))
            {
              if (v226 <= v248)
              {
                v118 = v248;
              }

              else
              {
                v118 = v248 + 1;
              }

              v248 = v118;
            }

            goto LABEL_243;
          }

          v96 = (*(a6 + 72))(a7, v86, __s, v76);
          UTF8Char = v96;
          if (*v76 == 0.0 && v96 != 0)
          {
            v97.n128_u32[0] = *v76;
            UTF8Char = (*(a6 + 72))(a7, v86, "</s>", v76, v97);
          }

          v76 += v272;
        }

LABEL_243:
        v91 = v95 + v261;
        --v90;
        if (!--v93)
        {
          goto LABEL_246;
        }
      }
    }

LABEL_251:
    if (a11)
    {
      v119 = *(v18 + 12);
      v73 = v225;
      *&v225[4 * v119 + 4] = 1120665600;
      v281 = v225;
      if ((UTF8Char & 0x80000000) == 0)
      {
        v19 = fi_predict(a9, &v281, (v119 + 2), &v280);
        if ((v19 & 0x80000000) == 0)
        {
          v237 = a3;
          v267 = v280 + 8;
          v280 += 8;
          goto LABEL_258;
        }

        goto LABEL_295;
      }
    }

    else
    {
      v73 = v225;
      v281 = v225;
      if ((UTF8Char & 0x80000000) == 0)
      {
        v19 = fi_predict(a9, &v281, *(v18 + 12), &v280);
        if ((v19 & 0x80000000) == 0)
        {
          v237 = a3;
          v267 = v280;
LABEL_258:
          if (*(v18 + 8))
          {
            v120 = 0;
            v121 = 0;
            while (1)
            {
              if (!cstdlib_strcmp(*(*v18 + (v120 << 6) + 24), "normal") || !cstdlib_strcmp(*(*v18 + (v120 << 6) + 24), "mnx"))
              {
                v122 = *v18;
                if (*(*v18 + (v120 << 6) + 52) > (*(*v18 + (v120 << 6) + 54) - 1))
                {
                  break;
                }
              }

LABEL_293:
              if (++v120 >= *(v18 + 8))
              {
                goto LABEL_297;
              }
            }

            v123 = 0;
            while (1)
            {
              if (*(v18 + 12) <= v121)
              {
                v126 = a2;
                log_OutText(a1[4], "FE_PHRASING", 4, 0, "Not Severe Error: Stress label out of range. Skip some stress tag.");
                v124 = *(*v18 + (v120 << 6) + 56);
              }

              else
              {
                v124 = *(v122 + (v120 << 6) + 56);
                v125 = v124 + 32 * v123;
                v126 = a2;
                *(v125 + 24) = **&v267[8 * v121] == 49;
              }

              v127 = *(v124 + 32 * v123);
              v128 = *v127;
              v129 = cstdlib_strlen(v127);
              v130 = v129;
              if (v129 < 2)
              {
                goto LABEL_291;
              }

              v131 = (v128 > 0x3E) | (0x2FFFFBFFFFFFFFFFuLL >> v128);
              if (v129 < 5 || cstdlib_strcmp(&v127[v129 - 5], "%~r"))
              {
                if ((v131 & (cstdlib_strcmp(&v127[v130 - 2], "%r") == 0)) == 0)
                {
                  goto LABEL_291;
                }
              }

              else if ((v131 & 1) == 0)
              {
                goto LABEL_291;
              }

              v132 = *v127;
              a2 = v126;
              if (v132 == 36 || v132 == 97)
              {
                goto LABEL_292;
              }

              v133 = 0;
              v134 = 0;
              __s[4] = 0;
              *__s = 0;
              do
              {
                if ((utf8_getUTF8Char(*(*v18 + (v120 << 6)), v134, __s) & 0x80000000) != 0)
                {
                  a2 = v126;
                  goto LABEL_297;
                }

                v135 = utf8_GetNextUtf8Offset(*(*v18 + (v120 << 6)), v134);
                if (v135 == v134)
                {
                  break;
                }

                v136 = v135;
                if (utf8_IsChineseLetter(__s))
                {
                  ++v133;
                }

                v134 = v136;
              }

              while ((v123 + 1) >= v133);
              if (__s[0] == 229 && __s[1] == 132 && __s[2] == 191)
              {
                ++v121;
              }

LABEL_291:
              a2 = v126;
LABEL_292:
              ++v123;
              ++v121;
              v122 = *v18;
              if (v123 >= *(*v18 + (v120 << 6) + 54))
              {
                goto LABEL_293;
              }
            }
          }

LABEL_297:
          BYTE4(v280) = 0;
          LODWORD(v280) = 0;
          v281 = 0;
          if (v234)
          {
            v139 = heap_Calloc(a1[1], 1, 8 * *(v234 + 1296) - 8);
            v140 = v229;
            v141 = v237;
            if (!v139)
            {
              UTF8Char = 2315264010;
              goto LABEL_488;
            }

            v142 = v139;
            UTF8Char = hlp_igtree_initFeatureVector(a1, v139, (*(v234 + 1296) - 1));
            if ((UTF8Char & 0x80000000) == 0 && *(v18 + 8))
            {
              v143 = 0;
              while (1)
              {
                v144 = *v18 + (v143 << 6);
                if (!cstdlib_strcmp(*(v144 + 24), "normal") || !cstdlib_strcmp(*(v144 + 24), "mnx"))
                {
                  v145 = *(v144 + 54);
                  v146 = *(v144 + 52);
                  if (v145 == v146 || v145 + 1 == v146)
                  {
                    v148 = *(v144 + 48);
                    if (v148)
                    {
                      break;
                    }
                  }
                }

LABEL_445:
                if (++v143 >= *(v18 + 8))
                {
                  goto LABEL_452;
                }
              }

              v149 = 0;
              v262 = 0;
              v238 = v141;
              v232 = a2;
              v264 = v142;
              v253 = v144;
              while (1)
              {
                v150 = *(v144 + 40) + 40 * v149;
                if (*(v150 + 32))
                {
                  break;
                }

LABEL_444:
                if (++v149 >= v148)
                {
                  goto LABEL_445;
                }
              }

              *v259 = v149;
              v151 = 0;
              v268 = 0;
              v256 = *(v144 + 40) + 40 * v149;
              while (1)
              {
                UTF8Char = utf8_getUTF8Char(*(v150 + 24), v268, &v280);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_452;
                }

                if (utf8_IsChineseLetter(&v280))
                {
                  v152 = *(v234 + 1312);
                  v153 = *(v234 + 1296);
                  v154 = heap_Calloc(a1[1], 1, 2048);
                  if (!v154)
                  {
                    UTF8Char = 2315264010;
                    log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
LABEL_451:
                    a2 = v232;
                    v142 = v264;
                    goto LABEL_452;
                  }

                  v155 = v154;
                  if (v153 > 1)
                  {
                    v156 = 0;
                    while (cstdlib_strcmp(*(v152 + v156), "char0"))
                    {
                      v156 += 8;
                      if (8 * (v153 - 1) == v156)
                      {
                        UTF8Char = 0;
                        goto LABEL_324;
                      }
                    }

                    v157 = fe_stress_feat_character(a1, v18, v143, LOWORD(v259[0]), v268, 0, v155);
                    if ((v157 & 0x80000000) != 0)
                    {
LABEL_449:
                      UTF8Char = v157;
                      goto LABEL_450;
                    }

                    UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 0, v264, v155);
                    if ((UTF8Char & 0x80000000) != 0)
                    {
                      goto LABEL_450;
                    }

LABEL_324:
                    v158 = 0;
                    if (v153 - 1 <= 1)
                    {
                      v159 = 1;
                    }

                    else
                    {
                      v159 = v153 - 1;
                    }

                    v160 = 8 * v159;
                    while (cstdlib_strcmp(*(v152 + v158), "lchar"))
                    {
                      v158 += 8;
                      if (v160 == v158)
                      {
                        goto LABEL_333;
                      }
                    }

                    v157 = fe_stress_feat_character(a1, v18, v143, LOWORD(v259[0]), v268, -1, v155);
                    if ((v157 & 0x80000000) != 0)
                    {
                      goto LABEL_449;
                    }

                    UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 1, v264, v155);
                    if ((UTF8Char & 0x80000000) == 0)
                    {
LABEL_333:
                      v161 = 0;
                      while (cstdlib_strcmp(*(v152 + v161), "llchar"))
                      {
                        v161 += 8;
                        if (v160 == v161)
                        {
                          goto LABEL_339;
                        }
                      }

                      v157 = fe_stress_feat_character(a1, v18, v143, LOWORD(v259[0]), v268, -2, v155);
                      if ((v157 & 0x80000000) != 0)
                      {
                        goto LABEL_449;
                      }

                      UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 2, v264, v155);
                      if ((UTF8Char & 0x80000000) == 0)
                      {
LABEL_339:
                        v162 = 0;
                        while (cstdlib_strcmp(*(v152 + v162), "l3char"))
                        {
                          v162 += 8;
                          if (v160 == v162)
                          {
                            goto LABEL_345;
                          }
                        }

                        v157 = fe_stress_feat_character(a1, v18, v143, LOWORD(v259[0]), v268, -3, v155);
                        if ((v157 & 0x80000000) != 0)
                        {
                          goto LABEL_449;
                        }

                        UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 3, v264, v155);
                        if ((UTF8Char & 0x80000000) == 0)
                        {
LABEL_345:
                          v163 = 0;
                          while (cstdlib_strcmp(*(v152 + v163), "rchar"))
                          {
                            v163 += 8;
                            if (v160 == v163)
                            {
                              goto LABEL_351;
                            }
                          }

                          v157 = fe_stress_feat_character(a1, v18, v143, LOWORD(v259[0]), v268, 1, v155);
                          if ((v157 & 0x80000000) != 0)
                          {
                            goto LABEL_449;
                          }

                          UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 4, v264, v155);
                          if ((UTF8Char & 0x80000000) == 0)
                          {
LABEL_351:
                            v164 = 0;
                            while (cstdlib_strcmp(*(v152 + v164), "rrchar"))
                            {
                              v164 += 8;
                              if (v160 == v164)
                              {
                                goto LABEL_357;
                              }
                            }

                            v157 = fe_stress_feat_character(a1, v18, v143, LOWORD(v259[0]), v268, 2, v155);
                            if ((v157 & 0x80000000) != 0)
                            {
                              goto LABEL_449;
                            }

                            UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 5, v264, v155);
                            if ((UTF8Char & 0x80000000) == 0)
                            {
LABEL_357:
                              v165 = 0;
                              while (cstdlib_strcmp(*(v152 + v165), "r3char"))
                              {
                                v165 += 8;
                                if (v160 == v165)
                                {
                                  goto LABEL_363;
                                }
                              }

                              v157 = fe_stress_feat_character(a1, v18, v143, LOWORD(v259[0]), v268, 3, v155);
                              if ((v157 & 0x80000000) != 0)
                              {
                                goto LABEL_449;
                              }

                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 6, v264, v155);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_363:
                              v166 = 0;
                              while (cstdlib_strcmp(*(v152 + v166), "phon0"))
                              {
                                v166 += 8;
                                if (v160 == v166)
                                {
                                  goto LABEL_368;
                                }
                              }

                              v167 = fe_stress_feat_phon(v18, v143, v262, 0);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 7, v264, v167);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_368:
                              v168 = 0;
                              while (cstdlib_strcmp(*(v152 + v168), "lphon"))
                              {
                                v168 += 8;
                                if (v160 == v168)
                                {
                                  goto LABEL_373;
                                }
                              }

                              v169 = fe_stress_feat_phon(v18, v143, v262, -1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 8, v264, v169);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_373:
                              v170 = 0;
                              while (cstdlib_strcmp(*(v152 + v170), "rphon"))
                              {
                                v170 += 8;
                                if (v160 == v170)
                                {
                                  goto LABEL_378;
                                }
                              }

                              v171 = fe_stress_feat_phon(v18, v143, v262, 1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 9, v264, v171);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_378:
                              v172 = 0;
                              while (cstdlib_strcmp(*(v152 + v172), "tone0"))
                              {
                                v172 += 8;
                                if (v160 == v172)
                                {
                                  goto LABEL_383;
                                }
                              }

                              v173 = fe_stress_feat_tone(v18, v143, v262, 0);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 10, v264, v173);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_383:
                              v174 = 0;
                              while (cstdlib_strcmp(*(v152 + v174), "ltone"))
                              {
                                v174 += 8;
                                if (v160 == v174)
                                {
                                  goto LABEL_388;
                                }
                              }

                              v175 = fe_stress_feat_tone(v18, v143, v262, -1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 11, v264, v175);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_388:
                              v176 = 0;
                              while (cstdlib_strcmp(*(v152 + v176), "rtone"))
                              {
                                v176 += 8;
                                if (v160 == v176)
                                {
                                  goto LABEL_393;
                                }
                              }

                              v177 = fe_stress_feat_tone(v18, v143, v262, 1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 12, v264, v177);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_393:
                              v178 = 0;
                              while (cstdlib_strcmp(*(v152 + v178), "word0"))
                              {
                                v178 += 8;
                                if (v160 == v178)
                                {
                                  goto LABEL_398;
                                }
                              }

                              v179 = fe_stress_feat_word(v18, v143, LOWORD(v259[0]), 0);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 13, v264, v179);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_398:
                              v180 = 0;
                              while (cstdlib_strcmp(*(v152 + v180), "lword"))
                              {
                                v180 += 8;
                                if (v160 == v180)
                                {
                                  goto LABEL_403;
                                }
                              }

                              v181 = fe_stress_feat_word(v18, v143, LOWORD(v259[0]), -1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 14, v264, v181);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_403:
                              v182 = 0;
                              while (cstdlib_strcmp(*(v152 + v182), "rword"))
                              {
                                v182 += 8;
                                if (v160 == v182)
                                {
                                  goto LABEL_408;
                                }
                              }

                              v183 = fe_stress_feat_word(v18, v143, LOWORD(v259[0]), 1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 15, v264, v183);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_408:
                              v184 = 0;
                              while (cstdlib_strcmp(*(v152 + v184), "wordlen"))
                              {
                                v184 += 8;
                                if (v160 == v184)
                                {
                                  goto LABEL_416;
                                }
                              }

                              *v155 = 0;
                              v185 = *v18 + (v143 << 6);
                              if (*v259 >= *(v185 + 48))
                              {
                                cstdlib_strcpy(v155, "=");
                              }

                              else
                              {
                                sprintf(v155, "%d", *(*(v185 + 40) + 40 * *v259 + 32));
                              }

                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 16, v264, v155);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_416:
                              v186 = 0;
                              while (cstdlib_strcmp(*(v152 + v186), "pos0"))
                              {
                                v186 += 8;
                                if (v160 == v186)
                                {
                                  goto LABEL_421;
                                }
                              }

                              v187 = fe_stress_feat_pos(v18, v143, LOWORD(v259[0]), 0);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 17, v264, v187);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_421:
                              v188 = 0;
                              while (cstdlib_strcmp(*(v152 + v188), "lpos"))
                              {
                                v188 += 8;
                                if (v160 == v188)
                                {
                                  goto LABEL_426;
                                }
                              }

                              v189 = fe_stress_feat_pos(v18, v143, LOWORD(v259[0]), -1);
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v153, 18, v264, v189);
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_450;
                              }

LABEL_426:
                              v190 = 0;
                              while (cstdlib_strcmp(*(v152 + v190), "rpos"))
                              {
                                v190 += 8;
                                if (v160 == v190)
                                {
                                  a2 = v232;
                                  v142 = v264;
                                  goto LABEL_431;
                                }
                              }

                              v191 = fe_stress_feat_pos(v18, v143, LOWORD(v259[0]), 1);
                              v192 = v153;
                              v142 = v264;
                              UTF8Char = fe_stress_igtr_setFeature(a1, v152, v192, 19, v264, v191);
                              a2 = v232;
LABEL_431:
                              heap_Free(a1[1], v155);
                              v140 = v229;
                              v141 = v238;
                              if ((UTF8Char & 0x80000000) != 0)
                              {
                                goto LABEL_452;
                              }

                              goto LABEL_432;
                            }
                          }
                        }
                      }
                    }

LABEL_450:
                    heap_Free(a1[1], v155);
                    v140 = v229;
                    v141 = v238;
                    goto LABEL_451;
                  }

                  heap_Free(a1[1], v154);
                  UTF8Char = 0;
                  v141 = v238;
                  a2 = v232;
                  v142 = v264;
LABEL_432:
                  igtree_Process(v234, v142, &v281);
                  v144 = v253;
                  if (cstdlib_strcmp(v281, "NOMATCH"))
                  {
                    v193 = cstdlib_atoi(v281);
                    if (v193 <= 1)
                    {
                      *(*(v253 + 56) + 32 * v262 + 24) = v193;
                    }
                  }

                  v268 = utf8_GetNextUtf8Offset(*(v256 + 24), v268);
                  v194 = *(v253 + 54);
                  if (v194 + 1 != *(v253 + 52))
                  {
                    goto LABEL_438;
                  }

                  if (!isERphon(&v280, *(*(v253 + 56) + 32 * v262)))
                  {
                    break;
                  }
                }

LABEL_442:
                ++v151;
                v150 = v256;
                if (v151 >= *(v256 + 32))
                {
                  v148 = *(v144 + 48);
                  v149 = *v259;
                  goto LABEL_444;
                }
              }

              v194 = *(v253 + 54);
LABEL_438:
              if (v194 <= (v262 + 1))
              {
                v195 = v262;
              }

              else
              {
                v195 = v262 + 1;
              }

              v262 = v195;
              goto LABEL_442;
            }

LABEL_452:
            hlp_igtree_freeFeatureVector(a1, v142, (*(v234 + 1296) - 1));
            heap_Free(a1[1], v142);
            if ((UTF8Char & 0x80000000) != 0)
            {
              goto LABEL_488;
            }
          }

          else
          {
            log_OutText(a1[4], "FE_PHRASING", 0, 0, "IGTree model for stress does not exist. Skip processing IGTree.");
            v140 = v229;
            v141 = v237;
          }

          LOWORD(v272) = 0;
          LOWORD(v271) = 0;
          v270 = 0;
          LOWORD(v283[0]) = 0;
          v280 = 0;
          v281 = 0;
          v196 = heap_Calloc(a1[1], 1, 2048);
          if (!v196)
          {
            goto LABEL_487;
          }

          v197 = v196;
          *__s = 0;
          cstdlib_strcpy(v196, "");
          v198 = (*(v140 + 104))(a2, v141, 1, 0, &v272);
          if ((v198 & 0x80000000) == 0)
          {
            UTF8Char = (*(v140 + 104))(a2, v141, 2, v272, &v271);
            if ((UTF8Char & 0x80000000) != 0)
            {
              goto LABEL_527;
            }

            v199 = v271;
            if (!v271)
            {
              goto LABEL_527;
            }

            v200 = 0;
            v265 = 2048;
            while (1)
            {
              v198 = (*(v229 + 168))(a2, v141, v199, 0, 1, __s, &v270);
              if ((v198 & 0x80000000) != 0)
              {
                break;
              }

              if (*__s <= 0xAu && ((1 << __s[0]) & 0x610) != 0)
              {
                v269 = v200;
                v198 = (*(v229 + 176))(a2, v141, v271, 9, &v281, &v270);
                if ((v198 & 0x80000000) != 0)
                {
                  break;
                }

                v198 = (*(v229 + 176))(a2, v141, v271, 3, &v280, &v270);
                if ((v198 & 0x80000000) != 0)
                {
                  break;
                }

                if ((!cstdlib_strcmp(v281, "normal") || !cstdlib_strcmp(v281, "mnx")) && *(*v18 + (v200 << 6) + 54) <= *(*v18 + (v200 << 6) + 52))
                {
                  v202 = cstdlib_strlen(v280);
                  v203 = *(*v18 + (v200 << 6) + 54);
                  if (v203 + v202 >= v265)
                  {
                    v265 = cstdlib_strlen(v280) + *(*v18 + (v200 << 6) + 54) + 1;
                    v204 = heap_Realloc(a1[1], v197, v265);
                    if (!v204)
                    {
                      UTF8Char = 2315264010;
                      log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
                      goto LABEL_527;
                    }

                    v203 = *(*v18 + (v200 << 6) + 54);
                    v197 = v204;
                  }

                  if (v203)
                  {
                    v205 = 0;
                    v206 = 0;
                    do
                    {
                      if (v205)
                      {
                        cstdlib_strcat(v197, ".");
                      }

                      else if (cstdlib_strstr(v280, "[SVOX]"))
                      {
                        cstdlib_strcpy(v197, "[SVOX]");
                      }

                      v207 = *(*v18 + (v269 << 6) + 56);
                      if (*(v207 + v205 + 24) == 1)
                      {
                        cstdlib_strcat(v197, "'");
                        v207 = *(*v18 + (v269 << 6) + 56);
                      }

                      cstdlib_strcat(v197, *(v207 + v205));
                      ++v206;
                      v205 += 32;
                    }

                    while (v206 < *(*v18 + (v269 << 6) + 54));
                  }

                  v208 = *(v229 + 160);
                  v209 = v271;
                  v210 = cstdlib_strlen(v197);
                  v198 = v208(a2, v141, v209, 3, (v210 + 1), v197, v283);
                  if ((v198 & 0x80000000) != 0)
                  {
                    break;
                  }

                  *v197 = 0;
                  v200 = v269;
                }

                ++v200;
              }

              UTF8Char = (*(v229 + 120))(a2, v141, v271, &v271);
              if ((UTF8Char & 0x80000000) == 0)
              {
                v199 = v271;
                if (v271)
                {
                  continue;
                }
              }

              goto LABEL_527;
            }
          }

          UTF8Char = v198;
LABEL_527:
          v72 = a1[1];
          v73 = v197;
          goto LABEL_250;
        }

LABEL_295:
        UTF8Char = v19;
        goto LABEL_488;
      }
    }

    goto LABEL_249;
  }

  v75 = heap_Calloc(a1[1], (*(v18 + 12) + 2) * v272, 4);
  if (v75)
  {
    *v75 = 1120534528;
    v76 = &v75[v272];
    goto LABEL_136;
  }

LABEL_487:
  UTF8Char = 2315264010;
  log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
LABEL_488:
  if (*(v18 + 8))
  {
    v211 = 0;
    do
    {
      if (*v18)
      {
        v212 = *v18 + (v211 << 6);
        if (*v212)
        {
          heap_Free(a1[1], *v212);
          *v212 = 0;
        }

        v213 = *(v212 + 16);
        if (v213)
        {
          heap_Free(a1[1], v213);
          *(v212 + 16) = 0;
        }

        v214 = *(v212 + 24);
        if (v214)
        {
          heap_Free(a1[1], v214);
          *(v212 + 24) = 0;
        }

        v215 = *(v212 + 56);
        if (v215)
        {
          if (*(v212 + 54))
          {
            v216 = 0;
            v217 = 0;
            v218 = *(v212 + 56);
            do
            {
              if (v218)
              {
                if (*(v218 + v216))
                {
                  heap_Free(a1[1], *(v218 + v216));
                  v215 = *(v212 + 56);
                  *(v215 + v216) = 0;
                }

                if (*(v215 + v216 + 16))
                {
                  heap_Free(a1[1], *(v215 + v216 + 16));
                  v215 = *(v212 + 56);
                  *(v215 + v216 + 16) = 0;
                }

                v218 = v215;
                if (*(v215 + v216 + 8))
                {
                  heap_Free(a1[1], *(v215 + v216 + 8));
                  v215 = *(v212 + 56);
                  *(v215 + v216 + 8) = 0;
                  v218 = v215;
                }
              }

              ++v217;
              v216 += 32;
            }

            while (v217 < *(v212 + 54));
          }

          heap_Free(a1[1], v215);
          *(v212 + 56) = 0;
        }

        v219 = *(v212 + 40);
        if (v219)
        {
          if (*(v212 + 50))
          {
            v220 = 0;
            v221 = 0;
            v222 = *(v212 + 40);
            do
            {
              if (v222)
              {
                if (*(v222 + v220))
                {
                  heap_Free(a1[1], *(v222 + v220));
                  v219 = *(v212 + 40);
                  *(v219 + v220) = 0;
                }

                if (*(v219 + v220 + 8))
                {
                  heap_Free(a1[1], *(v219 + v220 + 8));
                  v219 = *(v212 + 40);
                  *(v219 + v220 + 8) = 0;
                }

                v222 = v219;
                if (*(v219 + v220 + 24))
                {
                  heap_Free(a1[1], *(v219 + v220 + 24));
                  v219 = *(v212 + 40);
                  *(v219 + v220 + 24) = 0;
                  v222 = v219;
                }
              }

              ++v221;
              v220 += 40;
            }

            while (v221 < *(v212 + 50));
          }

          heap_Free(a1[1], v219);
          *(v212 + 40) = 0;
        }
      }

      ++v211;
    }

    while (v211 < *(v18 + 8));
  }

  if (*v18)
  {
    heap_Free(a1[1], *v18);
    *v18 = 0;
  }

  cstdlib_memset(v18, 0, 0x10uLL);
  heap_Free(a1[1], v18);
  return UTF8Char;
}