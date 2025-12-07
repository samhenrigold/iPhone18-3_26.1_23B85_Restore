uint64_t ner_freeNEData(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      if (*(a2 + 16))
      {
        v5 = 0;
        do
        {
          if (*(v3 + 40 * v5))
          {
            heap_Free(*(a1 + 8), *(v3 + 40 * v5));
            v3 = *(a2 + 8);
            *(v3 + 40 * v5) = 0;
          }

          v6 = *(v3 + 40 * v5 + 16);
          if (v6)
          {
            if (*(v3 + 40 * v5 + 24))
            {
              v7 = 0;
              do
              {
                if (*(*(v3 + 40 * v5 + 16) + 8 * v7))
                {
                  heap_Free(*(a1 + 8), *(*(v3 + 40 * v5 + 16) + 8 * v7));
                  *(*(*(a2 + 8) + 40 * v5 + 16) + 8 * v7) = 0;
                  v3 = *(a2 + 8);
                }

                ++v7;
              }

              while (v7 < *(v3 + 40 * v5 + 24));
              v6 = *(v3 + 40 * v5 + 16);
            }

            *(v3 + 40 * v5 + 24) = 0;
            heap_Free(*(a1 + 8), v6);
            v3 = *(a2 + 8);
            *(v3 + 40 * v5 + 16) = 0;
          }

          ++v5;
        }

        while (v5 < *(a2 + 16));
      }

      heap_Free(*(a1 + 8), v3);
      *(a2 + 16) = 0;
      *(a2 + 8) = 0;
    }
  }

  return 0;
}

uint64_t getCharEmbeddingWithPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  if (a8)
  {
    v12 = 0;
    v13 = 0;
    v14 = *a5;
    v23 = a6;
    v24 = a8;
    v15 = 4 * a6;
    v16 = v15 + 4 * a9;
    while (1)
    {
      v17 = a7 + 40 * v12;
      if (*(v17 + 24))
      {
        if (*(v17 + 24) != 1)
        {
          v20 = 0;
          do
          {
            v13 = (*(a2 + 56))(a3, a4, *(*(v17 + 16) + 8 * v20), v14);
            if ((v13 & 0x1FFF) == 0x14)
            {
              log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", *(*(v17 + 16) + 8 * v20));
              v13 = (*(a2 + 56))(a3, a4, "</s>", v14);
            }

            v27 = v14 + v15;
            getPOSFeature(*(v17 + 8), &v27);
            v14 += v16;
            v27 = v14;
            ++v20;
          }

          while (v20 < *(v17 + 24));
          goto LABEL_21;
        }

        v18 = *(v17 + 32);
        switch(v18)
        {
          case 1:
            v19 = (*(a2 + 56))(a3, a4, "ENG", v14);
            break;
          case 2:
            v19 = (*(a2 + 56))(a3, a4, "NUM", v14);
            break;
          case 3:
            v19 = (*(a2 + 56))(a3, a4, "</s>", v14);
            break;
          default:
            v21 = 0;
            do
            {
              v13 = (*(a2 + 56))(a3, a4, *(*(v17 + 16) + 8 * v21), v14);
              if ((v13 & 0x1FFF) == 0x14)
              {
                v13 = (*(a2 + 56))(a3, a4, "</s>", v14);
              }

              v27 = v14 + v15;
              getPOSFeature(*(v17 + 8), &v27);
              v14 += v16;
              v27 = v14;
              ++v21;
            }

            while (v21 < *(v17 + 24));
            goto LABEL_21;
        }

        v13 = v19;
        v14 += 4 * v23;
        v27 = v14;
      }

LABEL_21:
      if (++v12 == v24)
      {
        return v13;
      }
    }
  }

  return 0;
}

uint64_t getCharEmbedding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  if (!a8)
  {
    return 0;
  }

  v12 = 0;
  result = 0;
  v14 = *a5;
  v15 = 4 * a6;
  v20 = a6;
  v21 = a8;
  do
  {
    v16 = a7 + 40 * v12;
    if (*(v16 + 24))
    {
      if (*(v16 + 24) == 1)
      {
        v17 = *(v16 + 32) - 1;
        if (v17 >= 3)
        {
          v19 = 0;
          do
          {
            result = (*(a2 + 56))(a3, a4, *(*(v16 + 16) + 8 * v19), v14);
            if ((result & 0x1FFF) == 0x14)
            {
              result = (*(a2 + 56))(a3, a4, "</s>", v14);
            }

            ++v19;
            v14 += v15;
          }

          while (v19 < *(v16 + 24));
        }

        else
        {
          result = (*(a2 + 56))(a3, a4, off_1E81A3E60[v17], v14);
          v14 += 4 * v20;
        }
      }

      else
      {
        v18 = 0;
        do
        {
          result = (*(a2 + 56))(a3, a4, *(*(v16 + 16) + 8 * v18), v14);
          if ((result & 0x1FFF) == 0x14)
          {
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", *(*(v16 + 16) + 8 * v18));
            result = (*(a2 + 56))(a3, a4, "</s>", v14);
          }

          ++v18;
          v14 += v15;
        }

        while (v18 < *(v16 + 24));
      }
    }

    ++v12;
  }

  while (v12 != v21);
  return result;
}

BOOL getPOSFeature(const char *a1, uint64_t *a2)
{
  v2 = *a2;
  result = utf8_ToLower(a1, 0, v5);
  if (v5[0] - 99 > 0x16)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1C37BD608[(v5[0] - 99)];
  }

  *(v2 + 4 * v4) = 1065353216;
  return result;
}

uint64_t hlp_loadOptions(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    a1[15] = 0;
  }

  v3 = heap_Alloc(*(*a1 + 8), 128);
  a1[13] = v3;
  if (v3)
  {
    a1[15] = 128;
    v4 = a1[14];
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
      a1[16] = 0;
    }

    v5 = heap_Alloc(*(*a1 + 8), 128);
    a1[14] = v5;
    if (v5)
    {
      a1[16] = 128;
      v6 = a1[19];
      if (v6)
      {
        heap_Free(*(*a1 + 8), v6);
      }

      v7 = heap_Alloc(*(*a1 + 8), 128);
      a1[19] = v7;
      if (v7)
      {
        v8 = a1[20];
        if (v8)
        {
          heap_Free(*(*a1 + 8), v8);
        }

        v9 = heap_Alloc(*(*a1 + 8), 128);
        a1[20] = v9;
        if (v9)
        {
          v10 = a1[21];
          if (v10)
          {
            heap_Free(*(*a1 + 8), v10);
          }

          v11 = heap_Alloc(*(*a1 + 8), 128);
          a1[21] = v11;
          if (v11)
          {
            v12 = a1[22];
            if (v12)
            {
              heap_Free(*(*a1 + 8), v12);
            }

            v13 = heap_Alloc(*(*a1 + 8), 128);
            a1[22] = v13;
            if (v13)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
  return 2314215434;
}

uint64_t hlp_loadNNOptions(uint64_t a1)
{
  v2 = 2314216452;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v38 = 0;
  __lasts = 0;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_chars", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    return v2;
  }

  v3 = **&__c[3];
  v4 = strchr(**&__c[3], __c[0]);
  if (v4)
  {
    *v4 = 0;
    v3 = **&__c[3];
  }

  v5 = strlen(v3);
  v6 = heap_Alloc(*(*a1 + 8), v5 + 1);
  if (!v6)
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215434;
  }

  v7 = v6;
  v8 = strlen(**&__c[3]);
  strncpy(v7, **&__c[3], v8);
  v7[strlen(**&__c[3])] = 0;
  *&__c[1] = -1;
  v9 = 0;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_default_phones", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    goto LABEL_38;
  }

  v10 = **&__c[3];
  v11 = strchr(**&__c[3], __c[0]);
  if (v11)
  {
    *v11 = 0;
    v10 = **&__c[3];
  }

  v12 = strlen(v10);
  v9 = heap_Alloc(*(*a1 + 8), v12 + 1);
  if (!v9)
  {
    goto LABEL_36;
  }

  v13 = strlen(**&__c[3]);
  strncpy(v9, **&__c[3], v13);
  v9[strlen(**&__c[3])] = 0;
  v14 = *(*a1 + 8);
  *&v34 = ssftmap_ElemCopyString;
  *(&v34 + 1) = ssftmap_ElemFreeString;
  v35 = ssftmap_ElemCompareKeysString;
  v36 = ssftmap_ElemCopyString;
  v37 = ssftmap_ElemFreeString;
  v15 = ssftmap_ObjOpen(v14, 0, &v34, (a1 + 248));
  if ((v15 & 0x80000000) != 0)
  {
LABEL_18:
    v2 = v15;
    goto LABEL_38;
  }

  v16 = strtok_r(v7, "|", &__lasts);
  for (i = v9; ; i = 0)
  {
    v18 = strtok_r(i, "|", &v38);
    if (!v16 || !v18)
    {
      break;
    }

    v15 = ssftmap_Insert(*(a1 + 248), v16, v18);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    v16 = strtok_r(0, "|", &__lasts);
  }

  if (v16 || v18)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "NN chars amount and default phones amount do not match!", 0);
    v2 = 2314215439;
    goto LABEL_38;
  }

  *&__c[1] = -1;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_step", &__c[3], &__c[1], __c) & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      *(a1 + 256) = 0;
      *(a1 + 256) = LH_atou(**&__c[3]);
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_vect", &__c[3], &__c[1], __c) & 0x80000000) == 0)
      {
        if (*&__c[1])
        {
          *(a1 + 260) = 0;
          *(a1 + 260) = LH_atou(**&__c[3]);
          *&__c[1] = -1;
          if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_null_fea", &__c[3], &__c[1], __c) & 0x80000000) == 0)
          {
            if (*&__c[1])
            {
              *(a1 + 272) = 0;
              v19 = **&__c[3];
              v20 = strchr(**&__c[3], __c[0]);
              if (v20)
              {
                *v20 = 0;
                v19 = **&__c[3];
              }

              v21 = strlen(v19);
              v22 = heap_Alloc(*(*a1 + 8), v21 + 1);
              *(a1 + 272) = v22;
              if (v22)
              {
                v23 = v22;
                v24 = strlen(**&__c[3]);
                strncpy(v23, **&__c[3], v24);
                *(*(a1 + 272) + strlen(**&__c[3])) = 0;
                *&__c[1] = -1;
                v25 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_embed_type", &__c[3], &__c[1], __c);
                if ((v25 & 0x80000000) == 0 && *&__c[1])
                {
                  v26 = v25;
                  *(a1 + 264) = 0;
                  v27 = **&__c[3];
                  v28 = strchr(**&__c[3], __c[0]);
                  if (v28)
                  {
                    *v28 = 0;
                    v27 = **&__c[3];
                  }

                  v29 = strlen(v27);
                  v30 = heap_Alloc(*(*a1 + 8), v29 + 1);
                  *(a1 + 264) = v30;
                  if (v30)
                  {
                    v31 = v30;
                    v32 = strlen(**&__c[3]);
                    strncpy(v31, **&__c[3], v32);
                    *(*(a1 + 264) + strlen(**&__c[3])) = 0;
                    v2 = v26;
                    goto LABEL_38;
                  }

                  goto LABEL_36;
                }

                goto LABEL_38;
              }

LABEL_36:
              log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
              v2 = 2314215434;
            }
          }
        }
      }
    }
  }

LABEL_38:
  heap_Free(*(*a1 + 8), v7);
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
  }

  return v2;
}

uint64_t hlp_loadStatWordOptions(uint64_t a1)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 320) = 0;
  if (*&__c[1])
  {
    *(a1 + 320) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_vect", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 324) = 0;
  if (*&__c[1])
  {
    *(a1 + 324) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_thresholdpercent", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 328) = 0;
  if (*&__c[1])
  {
    *(a1 + 328) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_list", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  if (*&__c[1])
  {
    v3 = **&__c[3];
    v4 = strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
      v3 = **&__c[3];
    }

    v5 = strlen(v3);
    v6 = heap_Alloc(*(*a1 + 8), v5 + 1);
    *(a1 + 336) = v6;
    if (v6)
    {
      strcpy(v6, **&__c[3]);
      strcpy((a1 + 364), "$MEANW2V$");
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_fbck", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v7 = strchr(**&__c[3], __c[0]);
        if (v7)
        {
          *v7 = 0;
        }

        __strcpy_chk();
      }

      *(a1 + 344) = 0x2D3A3F2E213B2CLL;
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_punc", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v8 = strchr(**&__c[3], __c[0]);
        if (v8)
        {
          *v8 = 0;
        }

        __strcpy_chk();
      }

      *(a1 + 354) = 0x30303433333030;
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_mappunc", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v9 = strchr(**&__c[3], __c[0]);
        if (v9)
        {
          *v9 = 0;
        }

        __strcpy_chk();
      }

      *(a1 + 376) = 0;
      *&__c[1] = -1;
      v10 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_nnlkpcaseconv", &__c[3], &__c[1], __c);
      if ((v10 & 0x80000000) == 0 && *&__c[1])
      {
        v11 = **&__c[3];
        v12 = strchr(**&__c[3], __c[0]);
        if (v12)
        {
          *v12 = 0;
          v11 = **&__c[3];
        }

        if (!strcmp("yes", v11) || !strcmp("YES", v11))
        {
          *(a1 + 376) = 1;
        }
      }

      *(a1 + 264) = 0;
    }

    else
    {
      v10 = 2314215434;
      log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215444;
  }

  return v10;
}

uint64_t fe_hmogrph_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v52 = 0;
  v5 = 2314215431;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v44 = 0;
  v45 = 0;
  memset(v53, 0, sizeof(v53));
  if (!a5)
  {
    return v5;
  }

  __s = 0;
  v43 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a1, a2, &v51);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a3, a4, &v52);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v52[6], "LINGDB", &v50);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v52[6], "FE_DCTLKP", &v48);
  v13 = v52[6];
  if ((Object & 0x80000000) != 0)
  {
    v31 = "LINGDB";
LABEL_25:
    objc_ReleaseObject(v13, v31);
    return Object;
  }

  v14 = objc_GetObject(v13, "FE_DEPES", &v49);
  if ((v14 & 0x80000000) != 0)
  {
    Object = v14;
    objc_ReleaseObject(v52[6], "LINGDB");
    v13 = v52[6];
    v31 = "FE_DCTLKP";
    goto LABEL_25;
  }

  v15 = heap_Alloc(v52[1], 488);
  if (!v15)
  {
    log_OutPublic(v52[4], "FE_HMOGRPH", 37000, 0);
    objc_ReleaseObject(v52[6], "LINGDB");
    objc_ReleaseObject(v52[6], "FE_DEPES");
    objc_ReleaseObject(v52[6], "FE_DCTLKP");
    return 2314215434;
  }

  v16 = v15;
  *v15 = v52;
  *(v15 + 8) = a3;
  v17 = v50;
  v18 = v51;
  *(v15 + 16) = a4;
  *(v15 + 24) = v18;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = *(v17 + 8);
  v19 = v48;
  v20 = v49;
  *(v15 + 72) = *(v49 + 8);
  *(v15 + 56) = *(v20 + 16);
  v21 = *(v19 + 8);
  *(v15 + 96) = v21;
  v22 = *(v19 + 16);
  *(v15 + 200) = 0u;
  v23 = v15 + 200;
  *(v15 + 80) = v22;
  *(v15 + 104) = 0u;
  *(v15 + 120) = 0u;
  *(v15 + 136) = 0;
  *(v15 + 152) = 0u;
  *(v15 + 168) = 0u;
  *(v15 + 216) = 0u;
  *(v15 + 232) = 0u;
  *(v15 + 248) = 0u;
  *(v15 + 264) = 0u;
  *(v15 + 280) = 0u;
  *(v15 + 296) = 0u;
  *(v15 + 312) = 0u;
  *(v15 + 328) = 0u;
  *(v15 + 344) = 0u;
  *(v15 + 360) = 0u;
  *(v15 + 376) = 0;
  *(v15 + 472) = 0;
  *(v15 + 440) = 0u;
  *(v15 + 456) = 0u;
  *(v15 + 408) = 0u;
  *(v15 + 424) = 0u;
  *(v15 + 392) = 0u;
  *(v15 + 188) = 0;
  *(v15 + 384) = 0;
  *(v15 + 480) = 0;
  *(v15 + 280) = 0;
  OptionalHmogrphModels = (*(v21 + 88))(*(v15 + 80), *(v15 + 88), &v45 + 4, &v45);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v25 = v45 == 1 && HIDWORD(v45) == 1;
  v26 = v25;
  *(v16 + 184) = v26;
  OptionalHmogrphModels = hlp_loadOptionalHmogrphModels(v16);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  OptionalHmogrphModels = hlp_loadNerOptions(v16);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v27 = *v16;
  *(v16 + 200) = *v16;
  v28 = paramc_ParamGet(*(v27 + 40), "numberoutputtranscriptions", &__s, 0);
  v29 = 0;
  if ((v28 & 0x80000000) == 0 && __s)
  {
    v29 = atoi(__s);
  }

  *(v16 + 138) = v29;
  v30 = (paramc_ParamGet(*(*v16 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && strlen(__s) > 3;
  *(v16 + 140) = v30;
  OptionalHmogrphModels = checkSkipCrosstoken(*(v16 + 80), *(v16 + 88), *(v16 + 96), (v16 + 144));
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  if (*(v16 + 144))
  {
    OptionalHmogrphModels = hlp_loadOptions(v16);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }
  }

  if (!*(v16 + 188))
  {
    goto LABEL_49;
  }

  if (*(v16 + 480))
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    OptionalHmogrphModels = hlp_loadStatWordOptions(v16);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    OptionalHmogrphModels = nn_word_lkp_GetInterface(1u, &v43);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    *(v16 + 280) = v43;
    *(v16 + 288) = safeh_GetNullHandle();
    *(v16 + 296) = v32;
    *(v16 + 304) = safeh_GetNullHandle();
    *(v16 + 312) = v33;
    OptionalHmogrphModels = (*(v43 + 16))(*(v16 + 288), *(v16 + 296), "word", a3, a4, v16 + 304);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v41 = *(v16 + 304);
    *(&v40 + 1) = v43;
    OptionalHmogrphModels = objc_RegisterObject(v52[6], "NNWRDLKP", &v40);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  if (*(v16 + 192))
  {
    OptionalHmogrphModels = hlp_loadNNOptions(v16);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
LABEL_53:
      v5 = OptionalHmogrphModels;
      fe_hmogrph_ObjClose(*a5, *(a5 + 8));
      return v5;
    }

    v34 = strcmp(*(v16 + 264), "albert");
    if ((objc_GetObject(v52[6], "NNCHRLKP", &v47) & 0x80000000) != 0 || !v34)
    {
      OptionalHmogrphModels = nn_word_lkp_GetInterface(1u, &v43);
      if ((OptionalHmogrphModels & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      *(v16 + 280) = v43;
      *(v16 + 288) = safeh_GetNullHandle();
      *(v16 + 296) = v36;
      *(v16 + 304) = safeh_GetNullHandle();
      *(v16 + 312) = v37;
      OptionalHmogrphModels = (*(v43 + 16))(*(v16 + 288), *(v16 + 296), *(v16 + 264), a3, a4, v16 + 304);
      if ((OptionalHmogrphModels & 0x80000000) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(v16 + 280) = *(v47 + 8);
      *(v16 + 288) = safeh_GetNullHandle();
      *(v16 + 296) = v35;
      *(v16 + 304) = *(v47 + 16);
    }

LABEL_46:
    inited = fi_model_getBrokerString(*v16, v53);
    if ((inited & 0x80000000) == 0)
    {
      v38 = fi_init(a3, a4, a1, a2, &v44, 0, v53, "FINN", 1, 0);
      if ((v38 & 0x80000000) != 0)
      {
        v5 = v38;
        log_OutText(*(*v16 + 32), "FE_HMOGRPH", 5, 0, "create FI model failed");
        return v5;
      }

      *(v16 + 240) = v44;
      goto LABEL_49;
    }

    return inited;
  }

  *(v16 + 240) = 0;
LABEL_49:
  v5 = init_ner_struct(v16, (v23 + 192));
  if ((v5 & 0x80000000) == 0)
  {
    *a5 = v16;
    *(a5 + 8) = 62342;
  }

  return v5;
}

uint64_t hlp_loadOptionalHmogrphModels(uint64_t a1)
{
  if ((com_useStatHmogrph(*a1, (a1 + 188)) & 0x80000000) == 0)
  {
    *(a1 + 232) = 0;
    *(a1 + 200) = 0;
    if (*(a1 + 188))
    {
      if ((stat_hmogrph_ModelInit(*(a1 + 8), *(a1 + 16), *a1, *(a1 + 96), *(a1 + 80), *(a1 + 88), (a1 + 224), (a1 + 232), (a1 + 234)) & 0x80000000) == 0)
      {
        *(a1 + 200) = *a1;
      }
    }
  }

  *&__c[3] = 0;
  __c[0] = 0;
  *(a1 + 480) = 0;
  *&__c[1] = -1;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1] == 1)
  {
    *(a1 + 188) = 1;
    *(a1 + 480) = 1;
  }

  *(a1 + 192) = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_enable_nnets", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3])
  {
    v3 = **&__c[3];
    v4 = strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
      v3 = **&__c[3];
    }

    if (!strcmp("yes", v3) || !strcmp("YES", v3))
    {
      *(a1 + 192) = 1;
    }
  }

  return v2;
}

uint64_t hlp_loadNerOptions(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v7 = -1;
  v6 = 0;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_enable_ner", &v10, &v7, &v6);
  if ((v2 & 0x80000000) == 0)
  {
    if (v7 && v10)
    {
      (*v10)[strlen(*v10) - 1] = 0;
      v3 = strcmp(*v10, "yes");
      *(a1 + 384) = v3 == 0;
      if (!v3)
      {
        v7 = -1;
        v6 = 0;
        *(a1 + 428) = 0;
        if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_embed_type", &v9, &v7, &v6) & 0x80000000) == 0 && v7 && v9)
        {
          (*v9)[strlen(*v9) - 1] = 0;
          *(a1 + 428) = strcmp(*v9, "char") == 0;
        }

        v7 = -1;
        v6 = 0;
        v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_enable_pos", &v9, &v7, &v6);
        if ((v2 & 0x80000000) == 0)
        {
          if (v7 && v9)
          {
            (*v9)[strlen(*v9) - 1] = 0;
            v4 = strcmp(*v9, "yes");
            *(a1 + 424) = v4 == 0;
            if (!v4)
            {
              v7 = -1;
              v6 = 0;
              v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_pos_dimension", &v8, &v7, &v6);
              if ((v2 & 0x80000000) == 0)
              {
                *(a1 + 432) = LH_atou(*v8);
              }
            }
          }

          else
          {
            *(a1 + 424) = 0;
          }
        }
      }
    }

    else
    {
      *(a1 + 384) = 0;
    }
  }

  return v2;
}

uint64_t checkSkipCrosstoken(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_skipcrosstoken", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp("yes", v7) || !strcmp("YES", v7))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t fi_model_getBrokerString(uint64_t a1, char *a2)
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

uint64_t init_ner_struct(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  *a2 = 0;
  if (!*(a1 + 384))
  {
    return 0;
  }

  *(a1 + 440) = 0;
  *(a1 + 448) = safeh_GetNullHandle();
  *(a1 + 456) = v4;
  *(a1 + 464) = safeh_GetNullHandle();
  *(a1 + 472) = v5;
  v6 = *(a1 + 264);
  if (v6)
  {
    if (strcmp(v6, "char"))
    {
      if (*(a1 + 428) == 1)
      {
        Interface = nn_word_lkp_GetInterface(1u, (a1 + 440));
        if ((Interface & 0x80000000) != 0)
        {
          return Interface;
        }

        Interface = (*(*(a1 + 440) + 16))(*(a1 + 448), *(a1 + 456), "char", *(a1 + 8), *(a1 + 16), a1 + 464);
        if ((Interface & 0x80000000) != 0)
        {
          return Interface;
        }
      }
    }
  }

  get_ner_brokerstring(*a1, v11, 0x100uLL);
  v8 = fi_init(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), &v10, 0, v11, "FINN", 1, 0);
  if ((v8 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Init NER FI model failed");
  }

  else
  {
    *a2 = v10;
  }

  return v8;
}

uint64_t fe_hmogrph_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62342, 488);
  if ((result & 0x80000000) != 0)
  {
    return 2314215432;
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
  a1[15] = 0;
  v5 = a1[14];
  if (v5)
  {
    heap_Free(*(*a1 + 8), v5);
  }

  a1[14] = 0;
  a1[16] = 0;
  v6 = a1[19];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  a1[19] = 0;
  v7 = a1[20];
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
  }

  a1[20] = 0;
  v8 = a1[21];
  if (v8)
  {
    heap_Free(*(*a1 + 8), v8);
  }

  a1[21] = 0;
  v9 = a1[22];
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
  }

  a1[22] = 0;
  v10 = a1[35];
  if (v10)
  {
    if (*(a1 + 120))
    {
      if (((*(v10 + 24))(a1[38], a1[39]) & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
      }
    }

    else if (*(a1 + 48) && (objc_ReleaseObject(*(*a1 + 48), "NNCHRLKP") & 0x80000000) != 0)
    {
      (*(a1[35] + 24))(a1[38], a1[39]);
    }

    a1[35] = 0;
  }

  if (*(a1 + 47))
  {
    if (*(a1 + 120))
    {
      v11 = a1[42];
      if (v11)
      {
        heap_Free(*(*a1 + 8), v11);
        a1[42] = 0;
      }
    }

    else
    {
      if (!*(a1 + 48))
      {
LABEL_37:
        if (*(a1 + 116))
        {
          stat_hmogrph_ModelDeinit(*a1, a1 + 28, *(a1 + 116));
        }

        goto LABEL_39;
      }

      v12 = a1[34];
      if (v12)
      {
        heap_Free(*(*a1 + 8), v12);
        a1[34] = 0;
      }

      v13 = a1[31];
      if (v13)
      {
        ssftmap_ObjClose(v13);
        a1[31] = 0;
      }

      v14 = a1[33];
      if (v14)
      {
        heap_Free(*(*a1 + 8), v14);
        a1[33] = 0;
      }
    }

    v15 = a1[30];
    if (v15)
    {
      fi_deinit(*a1, a1[3], v15);
      a1[30] = 0;
    }

    goto LABEL_37;
  }

LABEL_39:
  if (*(a1 + 96))
  {
    v16 = a1[49];
    if (v16)
    {
      fi_deinit(*a1, a1[3], v16);
      a1[49] = 0;
    }

    v17 = a1[55];
    if (v17)
    {
      (*(v17 + 24))(a1[58], a1[59]);
      a1[55] = 0;
    }
  }

  objc_ReleaseObject(*(*a1 + 48), "LINGDB");
  objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
  objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t fe_hmogrph_ObjReopen(void *a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v34 = 0;
  v35 = 0;
  memset(v39, 0, sizeof(v39));
  Options = safeh_HandleCheck(a1, a2, 62342, 488);
  if ((Options & 0x80000000) == 0)
  {
    if (!a1)
    {
      return Options;
    }

    __s = 0;
    v36 = 0;
    Options = (*(a1[12] + 88))(a1[10], a1[11], &v37 + 4, &v37);
    if ((Options & 0x80000000) != 0)
    {
      return Options;
    }

    v5 = v37 == 1 && HIDWORD(v37) == 1;
    *(a1 + 46) = v5;
    v6 = a1[13];
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
    }

    a1[13] = 0;
    a1[15] = 0;
    v7 = a1[14];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    a1[14] = 0;
    a1[16] = 0;
    v8 = a1[19];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    a1[19] = 0;
    v9 = a1[20];
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
    }

    a1[20] = 0;
    v10 = a1[21];
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
    }

    a1[21] = 0;
    v11 = a1[22];
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
    }

    a1[22] = 0;
    v12 = a1[35];
    if (v12)
    {
      if (*(a1 + 120))
      {
        v36 = a1[35];
        if (((*(v12 + 24))(a1[38], a1[39]) & 0x80000000) == 0)
        {
          objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
        }
      }

      else if (*(a1 + 48) && (objc_ReleaseObject(*(*a1 + 48), "NNCHRLKP") & 0x80000000) != 0)
      {
        v36 = a1[35];
        (*(v36 + 24))(a1[38], a1[39]);
      }

      a1[35] = 0;
    }

    if (!*(a1 + 47))
    {
LABEL_51:
      Options = checkSkipCrosstoken(a1[10], a1[11], a1[12], a1 + 36);
      if ((Options & 0x80000000) != 0)
      {
        return Options;
      }

      if (*(a1 + 36))
      {
        Options = hlp_loadOptions(a1);
        if ((Options & 0x80000000) != 0)
        {
          return Options;
        }
      }

      Options = hlp_loadOptionalHmogrphModels(a1);
      if ((Options & 0x80000000) != 0)
      {
        return Options;
      }

      Options = hlp_loadNerOptions(a1);
      if ((Options & 0x80000000) != 0)
      {
        return Options;
      }

      a1[25] = *a1;
      if (*(a1 + 47))
      {
        if (*(a1 + 120))
        {
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
          Options = hlp_loadStatWordOptions(a1);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          Options = nn_word_lkp_GetInterface(1u, &v36);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          a1[35] = v36;
          a1[36] = safeh_GetNullHandle();
          a1[37] = v21;
          a1[38] = safeh_GetNullHandle();
          a1[39] = v22;
          Options = (*(v36 + 16))(a1[36], a1[37], "word", a1[1], a1[2], a1 + 38);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          v32 = *(a1 + 19);
          *(&v31 + 1) = v36;
          Options = objc_RegisterObject(*(*a1 + 48), "NNWRDLKP", &v31);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          goto LABEL_67;
        }

        if (*(a1 + 48))
        {
          Options = hlp_loadNNOptions(a1);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          if ((objc_GetObject(*(*a1 + 48), "NNCHRLKP", &v35) & 0x80000000) != 0)
          {
            Options = nn_word_lkp_GetInterface(1u, &v36);
            if ((Options & 0x80000000) != 0)
            {
              return Options;
            }

            a1[35] = v36;
            a1[36] = safeh_GetNullHandle();
            a1[37] = v29;
            a1[38] = safeh_GetNullHandle();
            a1[39] = v30;
            Options = (*(v36 + 16))(a1[36], a1[37], a1[33], a1[1], a1[2], a1 + 38);
            if ((Options & 0x80000000) != 0)
            {
              return Options;
            }
          }

          else
          {
            a1[35] = *(v35 + 8);
            a1[36] = safeh_GetNullHandle();
            a1[37] = v23;
            *(a1 + 19) = *(v35 + 16);
          }

LABEL_67:
          Options = fi_model_getBrokerString(*a1, v39);
          if ((Options & 0x80000000) == 0)
          {
            v24 = fi_init(a1[1], a1[2], a1[4], a1[5], &v34, 0, v39, "FINN", 1, 0);
            if ((v24 & 0x80000000) != 0)
            {
              v13 = v24;
              log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "create FI model failed");
              return v13;
            }

            a1[30] = v34;
            goto LABEL_71;
          }

          return Options;
        }

        a1[30] = 0;
      }

LABEL_71:
      v25 = paramc_ParamGet(*(*a1 + 40), "numberoutputtranscriptions", &__s, 0);
      v26 = 0;
      if ((v25 & 0x80000000) == 0 && __s)
      {
        v26 = atoi(__s);
      }

      *(a1 + 69) = v26;
      v27 = (paramc_ParamGet(*(*a1 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && strlen(__s) > 3;
      *(a1 + 35) = v27;
      return init_ner_struct(a1, a1 + 49);
    }

    if (*(a1 + 120))
    {
      v14 = a1[42];
      if (v14)
      {
        heap_Free(*(*a1 + 8), v14);
        a1[42] = 0;
      }
    }

    else
    {
      if (!*(a1 + 48))
      {
LABEL_44:
        if (*(a1 + 96))
        {
          v19 = a1[49];
          if (v19)
          {
            fi_deinit(*a1, a1[3], v19);
            a1[49] = 0;
          }

          v20 = a1[55];
          if (v20)
          {
            v36 = a1[55];
            (*(v20 + 24))(a1[58], a1[59]);
            a1[55] = 0;
          }
        }

        if (*(a1 + 116))
        {
          stat_hmogrph_ModelDeinit(*a1, a1 + 28, *(a1 + 116));
        }

        goto LABEL_51;
      }

      v15 = a1[34];
      if (v15)
      {
        heap_Free(*(*a1 + 8), v15);
        a1[34] = 0;
      }

      v16 = a1[31];
      if (v16)
      {
        ssftmap_ObjClose(v16);
        a1[31] = 0;
      }

      v17 = a1[33];
      if (v17)
      {
        heap_Free(*(*a1 + 8), v17);
        a1[33] = 0;
      }
    }

    v18 = a1[30];
    if (v18)
    {
      fi_deinit(*a1, a1[3], v18);
      a1[30] = 0;
    }

    goto LABEL_44;
  }

  return 2314215432;
}

uint64_t fe_hmogrph_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 488);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2314215432;
  }
}

uint64_t fe_hmogrph_Process_StatHmogrph(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 = 1;
  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "BEGIN fe_hmogrph_Process_StatHmogrph()", 0);
  if (*(a1 + 480) == 1)
  {
    SentenceData = stat_hmogrph_disambiguateWords(a1, *(a1 + 48), a2, a3, a1 + 200);
LABEL_13:
    v11 = SentenceData;
    v12 = 0;
    goto LABEL_14;
  }

  if (!*(a1 + 384))
  {
    *(a1 + 400) = 0;
    goto LABEL_10;
  }

  v8 = *(a1 + 264);
  v9 = v8 && !strcmp(v8, "char");
  v10 = ner_process(*a1, a1 + 392, a2, a3, *(a1 + 48), *(a1 + 280), *(a1 + 304), *(a1 + 312), v9);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_10:
    SentenceData = stat_hmogrph_getSentenceData(a1, *(a1 + 48), a2, a3, (a1 + 200));
    if ((SentenceData & 0x80000000) == 0)
    {
      SentenceData = stat_hmogrph_disambiguatePhons(a1, a1 + 200);
      if ((SentenceData & 0x80000000) == 0)
      {
        SentenceData = stat_hmogrph_updateLingdb(a1, *(a1 + 48), a2, a3, a1 + 200, a1 + 392);
      }
    }

    goto LABEL_13;
  }

  v11 = v10;
  v12 = 1;
LABEL_14:
  if (!(*(a1 + 480) | v12))
  {
    v13 = stat_hmogrph_freeSentenceData(a1 + 200);
    if (v11 > -1 && v13 < 0)
    {
      v11 = v13;
    }

    else
    {
      v11 = v11;
    }
  }

  if (*(a1 + 384))
  {
    v15 = ner_freeNEData(*a1, a1 + 392);
    if (v11 > -1 && v15 < 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v11;
    }
  }

  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "END fe_hmogrph_Process_StatHmogrph()", 0);
  return v11;
}

uint64_t checkCRFMDE(_WORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  __s = 0;
  v17 = 0;
  v18 = "";
  memset(v20, 0, sizeof(v20));
  if ((paramc_ParamGetStr(*(a3 + 40), "langcode", &__s) & 0x80000000) == 0 && (paramc_ParamGetStr(*(a3 + 40), "fecfg", &v18) & 0x80000000) == 0)
  {
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    v8 = heap_Calloc(*(a3 + 8), 1, 1024);
    if (v8)
    {
      v9 = v8;
      v10 = brokeraux_ComposeBrokerString(a3, v20, 1, 1, __s, 0, 0, v8, 0x400uLL);
      v11 = strlen(__s);
      v12 = heap_Calloc(*(a3 + 8), 1, v11 + 1);
      if (v12)
      {
        v13 = v12;
        strcpy(v12, __s);
        if ((v10 & 0x80000000) == 0 && (ssftriff_reader_ObjOpen(a1, a2, 2, v9, "CRPH", 1031, &v17) & 0x80000000) == 0)
        {
          ssftriff_reader_ObjClose(v17);
          *a4 = 1;
        }

        heap_Free(*(a3 + 8), v9);
        v14 = *(a3 + 8);
        v15 = v13;
      }

      else
      {
        log_OutPublic(*(a3 + 32), "FE_HMOGRPH", 37000, 0);
        v14 = *(a3 + 8);
        v15 = v9;
      }

      heap_Free(v14, v15);
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_HMOGRPH", 37000, 0);
    }
  }

  return 0;
}

uint64_t fe_hmogrph_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v80 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  if ((safeh_HandleCheck(a1, a2, 62342, 488) & 0x80000000) != 0)
  {
    return 2314215432;
  }

  __s = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v79 = 0;
  *a5 = 1;
  checkCRFMDE(*(a1 + 8), *(a1 + 16), *a1, &v76);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 80);
  *__s2 = 0;
  LOWORD(v75) = -1;
  LOBYTE(__c[0]) = 0;
  v12 = (*(v10 + 96))(v11, v9, "fecfg", "usecompound", __s2, &v75, __c);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = 0;
  v14 = 1;
  if (v75 == 1 && *__s2)
  {
    v15 = **__s2;
    v16 = strchr(**__s2, LOBYTE(__c[0]));
    if (v16)
    {
      *v16 = 0;
      v15 = **__s2;
    }

    if (!strcmp("yes", v15) || !strcmp("YES", v15))
    {
      v14 = 0;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  v17 = com_mosynt_UseMosynt(*(a1 + 80), *(a1 + 88), *(a1 + 96), &v77);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = v77 ? v14 : 0;
  if (v18 == 1 && !*(a1 + 188))
  {
    return v17;
  }

  v19 = *(a1 + 188);
  if ((v77 & ~v13) != 0)
  {
    if (!v19)
    {
      goto LABEL_23;
    }
  }

  else if (!v19)
  {
    goto LABEL_24;
  }

  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph Enabled", 0);
  v17 = fe_hmogrph_Process_StatHmogrph(a1, a3, a4, a5);
  if ((v17 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph Processing Failed", 0);
    return v17;
  }

LABEL_23:
  if (!*(a1 + 480))
  {
    return v17;
  }

LABEL_24:
  v17 = (*(*(a1 + 48) + 104))(a3, a4, 1, 0, &v85 + 2);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (((*(*(a1 + 48) + 184))(a3, a4, HIWORD(v85), 0, &v80) & 0x80000000) != 0)
  {
    return v17;
  }

  if (v80 != 1)
  {
    return v17;
  }

  v17 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v85), 0, &__s, &v84 + 2);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v20 = HIWORD(v84);
  if (HIWORD(v84) < 2u)
  {
    return v17;
  }

  *(a1 + 136) = 0;
  v12 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v85), 1, &v79, &v78);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v21 = *(v79 + 12);
  v12 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v85), &v85);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v71 = v21;
  v72 = 0;
  v22 = 0;
  v23 = v20 - 1;
  v24 = 1;
  while (1)
  {
    v25 = *(a1 + 48);
    if (!v85)
    {
      break;
    }

    v12 = (*(v25 + 168))(a3, a4);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (v82 == 4)
    {
      v12 = (*(*(a1 + 48) + 168))(a3, a4, v85, 1, 1, &v84, &v84 + 2);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v26 = v84;
      if (!v24 && v84 == v72)
      {
        v12 = (*(*(a1 + 48) + 168))(a3, a4, v85, 2, 1, &v83, &v84 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v27 = v84;
        v28 = __s;
        if (!v84)
        {
          goto LABEL_52;
        }

        v29 = 0;
        do
        {
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v28, v27);
          v28 = __s;
          v31 = &__s[PreviousUtf8Offset];
          v32 = *v31;
          if (v32 == 95 || v32 == 32)
          {
            v33 = v31[1];
            if (v33 != 32 && v33 != 95)
            {
              ++v29;
            }
          }

          v27 = PreviousUtf8Offset;
        }

        while (v29 <= 3u && PreviousUtf8Offset);
        if (PreviousUtf8Offset)
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(__s, PreviousUtf8Offset);
          v28 = __s;
        }

        else
        {
LABEL_52:
          NextUtf8Offset = 0;
        }

        v36 = v83;
        if (v83 >= v23)
        {
          v42 = v83;
        }

        else
        {
          v37 = 0;
          do
          {
            v36 = utf8_GetNextUtf8Offset(v28, v36);
            v28 = __s;
            v38 = &__s[v36];
            v39 = *v38;
            if (v39 == 95 || v39 == 32)
            {
              v40 = *(v38 - 1);
              if (v40 != 32 && v40 != 95)
              {
                ++v37;
              }
            }
          }

          while (v37 <= 2u && v23 > v36);
          v42 = v36;
          v36 = v83;
        }

        v43 = v84;
        if (v22)
        {
          v12 = hlp_Disambiguate(a1, a3, a4, v28, v22, NextUtf8Offset, v42, v84, v36);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          v28 = __s;
          v43 = v84;
          v36 = v83;
        }

        v12 = hlp_Disambiguate(a1, a3, a4, v28, v85, NextUtf8Offset, v42, v43, v36);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v22 = 0;
        v26 = v84;
      }

      if (v26 != v72 || v24 == 1)
      {
        v22 = v85;
      }

      v72 = v26;
      v24 = 0;
    }

    v17 = (*(*(a1 + 48) + 120))(a3, a4);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }
  }

  v17 = (*(v25 + 104))(a3, a4, 2, HIWORD(v85), &v85);
  if ((v17 & 0x80000000) == 0)
  {
    v45 = v85;
    if (v85)
    {
      v46 = 0;
      v47 = 0;
      v68 = 0;
      v48 = 0;
      v69 = 1;
      v70 = 0;
      v73 = v76;
      v66 = 1;
      v67 = 0;
      v49 = 1;
      while (1)
      {
        v12 = (*(*(a1 + 48) + 168))(a3, a4, v45, 0, 1, &v82, &v84 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v12 = (*(*(a1 + 48) + 168))(a3, a4, v85, 1, 1, &v84, &v84 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        if (v84 != v48 || v49 == 1)
        {
          v46 = 0;
        }

        if (v47 < v78)
        {
          v51 = v47;
          v52 = v79 + 32 * v47 + 12;
          while ((v84 + 1) > (*v52 - v71))
          {
            if (*(v52 - 12) == 14 && *(v52 + 12) == 64)
            {
              v46 = 1;
            }

            ++v51;
            v52 += 32;
            if (v78 == v51)
            {
              v47 = v78;
              goto LABEL_101;
            }
          }

          v47 = v51;
        }

LABEL_101:
        if (v82 == 4)
        {
          goto LABEL_102;
        }

        v59 = v82 == 9;
        if (v82 == 9)
        {
          v60 = v13;
        }

        else
        {
          v60 = 0;
        }

        if (!v77)
        {
          v60 = 0;
        }

        if (v73 != 1)
        {
          v59 = 0;
        }

        if ((v60 & 1) != 0 || v59)
        {
LABEL_102:
          v12 = (*(*(a1 + 48) + 168))(a3, a4, v85, 7, 1, &v81, &v84 + 2);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          if (v77)
          {
            v53 = v13;
          }

          else
          {
            v53 = 0;
          }

          if ((v53 & 1) != 0 || v73 == 1)
          {
            *__s2 = 0;
            v80 = 0;
            if (((*(*(a1 + 48) + 184))(a3, a4, v85, 17, &v80) & 0x80000000) == 0 && v80 == 1)
            {
              v12 = (*(*(a1 + 48) + 168))(a3, a4, v85, 17, 1, __s2, &v84 + 2);
              if ((v12 & 0x80000000) != 0)
              {
                return v12;
              }
            }

            if (*__s2)
            {
              v54 = 0;
            }

            else
            {
              v54 = ~v81;
            }

            v81 = v54;
          }

          if (*(a1 + 480))
          {
            *__c = 0;
            v75 = 0;
            v12 = (*(*(a1 + 48) + 176))(a3, a4, v85, 5, &v75, &v84 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            v12 = (*(*(a1 + 48) + 176))(a3, a4, v85, 14, __c, &v84 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            strcpy(__s2, "POS:");
            __strcat_chk();
            __strcat_chk();
            v55 = *__c;
            v56 = strstr(*__c, __s2);
            if (v56 && (v56 == v55 || *(v56 - 1) == 59))
            {
              v81 += 100;
            }
          }

          v80 = 0;
          if (((*(*(a1 + 48) + 184))(a3, a4, v85, 9, &v80) & 0x80000000) == 0 && v80 == 1)
          {
            *__s2 = 0;
            v12 = (*(*(a1 + 48) + 176))(a3, a4, v85, 9, __s2, &v84 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            v70 = **__s2;
          }

          if (v49 || v84 != v48)
          {
            v58 = 0;
            v49 = 0;
            v62 = v69;
            v61 = v70;
            if (!v70)
            {
              v61 = v69;
            }

            v67 = v70 == v69;
            LOWORD(v68) = v85;
            v48 = v84;
            HIDWORD(v68) = v81;
            v69 = v61;
            v66 = v62;
            goto LABEL_152;
          }

          if (v81 > HIDWORD(v68) || v81 == HIDWORD(v68) && !v67 && (v66 == 101 || v70 != 101))
          {
            v57 = v85;
            if (!v46)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v57 = v85;
            if (v46)
            {
LABEL_149:
              v49 = 0;
              v63 = v70;
              if ((v70 & 0xFE) == 0)
              {
                v63 = 1;
              }

              HIDWORD(v68) = v81;
              v69 = v63;
              v58 = v68;
              v67 = v70 == v66;
              LOWORD(v68) = v57;
              goto LABEL_152;
            }
          }

          v49 = 0;
          v58 = v57;
        }

        else
        {
          v58 = 0;
        }

LABEL_152:
        v17 = (*(*(a1 + 48) + 120))(a3, a4);
        if ((v17 & 0x80000000) == 0)
        {
          if (!v58 || (*(a1 + 138) < 2u || !*(a1 + 140) ? (v64 = (*(*(a1 + 48) + 192))(a3, a4, v58)) : (*__s2 = 0, v82 = 16, v64 = (*(*(a1 + 48) + 160))(a3, a4, v58, 0, 1, &v82, __s2)), v17 = v64, (v64 & 0x80000000) == 0))
          {
            v45 = v85;
            if (v85)
            {
              continue;
            }
          }
        }

        return v17;
      }
    }
  }

  return v17;
}

uint64_t hlp_Disambiguate(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, unsigned __int16 a9)
{
  LODWORD(NextUtf8Offset) = a8;
  v14 = a3;
  v64 = *MEMORY[0x1E69E9840];
  v60 = xmmword_1C37BD742;
  v61 = unk_1C37BD752;
  v62 = xmmword_1C37BD762;
  v63 = unk_1C37BD772;
  strcpy(v56, "disambiguate_homographs");
  v57 = unk_1C37BD71A;
  v58 = xmmword_1C37BD722;
  v59 = unk_1C37BD732;
  v55 = 0;
  __s = 0;
  v53 = 0;
  __s1 = 0;
  v50 = 0;
  v51 = 0;
  v17 = (*(*(a1 + 48) + 104))(a2, a3, 1, 0, &v50);
  if ((v17 & 0x80000000) == 0 && ((*(*(a1 + 48) + 184))(a2, v14, a5, 4, &v55) & 0x80000000) == 0)
  {
    v48 = a7;
    v49 = a2;
    if (v55 == 1)
    {
      v17 = (*(*(a1 + 48) + 176))(a2, v14, a5, 4, &__s, &v51);
      if ((v17 & 0x80000000) == 0)
      {
        if (*__s)
        {
          v18 = (a7 - a6 + 14);
          if (v18 > *(a1 + 136))
          {
            v19 = heap_Realloc(*(*a1 + 8), *(a1 + 104), (a7 - a6 + 14));
            if (!v19 || (*(a1 + 104) = v19, (v20 = heap_Realloc(*(*a1 + 8), *(a1 + 112), v18)) == 0))
            {
              v17 = 2314215434;
              log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
              return v17;
            }

            *(a1 + 112) = v20;
            *(a1 + 136) = a7 - a6 + 14;
          }

          **(a1 + 104) = 0;
          **(a1 + 112) = 0;
          v21 = (*(*(a1 + 48) + 104))(a2, v14, 2, v50, &v53 + 2);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          v22 = 0;
          LODWORD(PreviousUtf8Offset) = a9;
          v47 = a5;
          v46 = v14;
          while (1)
          {
            v24 = HIWORD(v53);
            if (!HIWORD(v53))
            {
              break;
            }

            if (HIWORD(v53) == a5)
            {
              v25 = &a4[NextUtf8Offset];
              for (i = (*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), v25); i == 1; i = (*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), &a4[NextUtf8Offset]))
              {
                NextUtf8Offset = utf8_GetNextUtf8Offset(a4, NextUtf8Offset);
                v25 = &a4[NextUtf8Offset];
              }

              do
              {
                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a4, PreviousUtf8Offset);
              }

              while ((*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), &a4[PreviousUtf8Offset]) == 1);
              v27 = utf8_GetNextUtf8Offset(a4, PreviousUtf8Offset);
              v28 = &a4[a6];
              v29 = NextUtf8Offset - a6;
              strncat(*(a1 + 104), v28, v29);
              for (j = Utf8_LengthInUtf8chars(v28, v29); j; --j)
              {
                *(*(a1 + 112) + strlen(*(a1 + 112))) = 32;
              }

              a6 = v27;
              v31 = *(a1 + 104) + strlen(*(a1 + 104));
              *v31 = -22590;
              *(v31 + 2) = 0;
              strncat(*(a1 + 104), v25, v27 - NextUtf8Offset);
              v32 = Utf8_LengthInUtf8chars(v25, v27 - NextUtf8Offset);
              v33 = strlen(__s) <= v32 || v22 > 9;
              if (v33)
              {
                a5 = v22;
              }

              else
              {
                v34 = 1;
                do
                {
                  *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
                  a5 = (v22 + 1);
                  v33 = strlen(__s) - v32 > v34++;
                  v35 = !v33 || v22 >= 9;
                  LODWORD(v22) = v22 + 1;
                }

                while (!v35);
              }

              v36 = *(a1 + 104) + strlen(*(a1 + 104));
              *v36 = -22590;
              *(v36 + 2) = 0;
              v37 = *(a1 + 112) + strlen(*(a1 + 112));
              *v37 = -22590;
              *(v37 + 2) = 0;
              strcat(*(a1 + 112), __s);
              if (strlen(__s) < v32)
              {
                v38 = 0;
                do
                {
                  *(*(a1 + 112) + strlen(*(a1 + 112))) = 126;
                  ++v38;
                }

                while (v32 - strlen(__s) > v38);
              }

              v39 = *(a1 + 112) + strlen(*(a1 + 112));
              *v39 = -22590;
              *(v39 + 2) = 0;
              v24 = HIWORD(v53);
              LODWORD(PreviousUtf8Offset) = a6;
              v22 = a5;
              LODWORD(a5) = v47;
              v14 = v46;
            }

            v17 = (*(*(a1 + 48) + 120))(a2, v14, v24, &v53 + 2);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }
          }

          if (a6 < v48)
          {
            v40 = &a4[a6];
            strncat(*(a1 + 104), v40, (v48 - a6));
            for (k = Utf8_LengthInUtf8chars(v40, v48 - a6); k; --k)
            {
              *(*(a1 + 112) + strlen(*(a1 + 112))) = 32;
            }
          }

          v42 = *(*a1 + 32);
          if (v22 > 9)
          {
            log_OutText(v42, "FE_HMOGRPH", 5, 0, "Homograph validation not OK");
            LOWORD(v53) = 0;
            return (*(*(a1 + 48) + 160))(v49, v46, v47, 7, 1, &v53, &v50 + 2);
          }

          log_OutText(v42, "FE_HMOGRPH", 5, 0, "%s L1: %s", v56, *(a1 + 104));
          v43 = strlen(*(a1 + 104));
          v21 = (*(*(a1 + 72) + 120))(*(a1 + 56), *(a1 + 64), 0, *(a1 + 104), v43);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L2: %s", v56, *(a1 + 112));
          v44 = strlen(*(a1 + 112));
          v21 = (*(*(a1 + 72) + 120))(*(a1 + 56), *(a1 + 64), 1, *(a1 + 112), v44);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          v21 = (*(*(a1 + 72) + 80))(*(a1 + 56), *(a1 + 64), v56);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          v17 = (*(*(a1 + 72) + 128))(*(a1 + 56), *(a1 + 64), 0, &__s1, &v51 + 2);
          if ((v17 & 0x80000000) == 0)
          {
            __s1[HIWORD(v51)] = 0;
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O1: %s", v56, __s1);
            if (strstr(__s1, "§"))
            {
              log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Homograph validation not OK");
              LOWORD(v53) = 0;
              return (*(*(a1 + 48) + 160))(v49, v46, v47, 7, 1, &v53, &v50 + 2);
            }
          }
        }
      }
    }
  }

  return v17;
}

uint64_t fe_hmogrph_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 488);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2314215432;
  }
}

uint64_t fe_hmogrph_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2314215425;
  }

  result = 0;
  *a2 = &IFeHmogrph;
  return result;
}

uint64_t fe_hmogrph_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2314215431;
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

uint64_t com_useStatHmogrph(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  result = stat_hmogrph_getBrokerString(a1, v6, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    if ((brk_DataOpenEx(*(a1 + 24), v6, 1, &v5) & 0x80000000) != 0)
    {
      log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph data not found", 0, v5);
    }

    else
    {
      *a2 = 1;
      result = brk_DataClose(*(a1 + 24), v5);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t stat_hmogrph_getBrokerString(uint64_t a1, char *a2, unint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
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
      v7 = brokeraux_ComposeBrokerString(a1, v10, 1, 1, *v9, 0, 0, a2, a3);
      return v7 & (v7 >> 31);
    }
  }

  return result;
}

uint64_t com_getUnicodeOrth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  *&__c[1] = -1;
  __c[0] = 0;
  *&__c[3] = 0;
  strcpy(v14, "stathmogrph_");
  __strcat_chk();
  v9 = (*(a1 + 96))(a2, a3, "fecfg", v14, &__c[3], &__c[1], __c);
  result = 0;
  if ((v9 & 0x80000000) == 0 && *&__c[1])
  {
    v11 = **&__c[3];
    v12 = strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
      v11 = **&__c[3];
    }

    *a5 = v11;
    return 1;
  }

  return result;
}

uint64_t hlp_addWord(uint64_t a1, const char *a2, int a3, int a4, const char *a5, const char *a6, const char *a7, unsigned int a8, char *a9, uint64_t *a10, const char *a11, const char *a12, uint64_t a13)
{
  v13 = a6;
  v15 = a4;
  v16 = a3;
  v18 = a1;
  if (*(a13 + 8))
  {
    v19 = *a13 + 48;
    v20 = *(a13 + 8);
    while (*(v19 - 40) != a3 || *(v19 - 38) != a4)
    {
      v19 += 64;
      if (!--v20)
      {
        goto LABEL_6;
      }
    }

    if (*(v19 + 8))
    {
      v32 = 0;
      v33 = *v19;
      while (1)
      {
        v34 = v33 + 16 * v32;
        v35 = a10;
        v36 = *a10 + 32 * v32;
        v37 = *(v36 + 8);
        v38 = *(v36 + 24);
        if (*(v34 + 10) > v38)
        {
          *(v34 + 10) = v38;
        }

        v39 = *(v34 + 8);
        v40 = v37 + v39;
        __srca = (v37 + v39);
        v41 = heap_Realloc(*(v18 + 8), *v34, 56 * __srca);
        if (!v41)
        {
          goto LABEL_61;
        }

        v33 = *v19;
        *(*v19 + 16 * v32) = v41;
        if (v39 < v40)
        {
          v42 = v39;
          v43 = v39;
          v94 = v39;
          do
          {
            v44 = *v35;
            if (v42)
            {
              v45 = v18;
              v46 = (v43 - v42);
              v47 = *(*(v44 + 32 * v32) + 8 * (v43 - v42));
              v48 = (*(v33 + 16 * v32) + 8);
              v49 = v42;
              while (strcmp(*(v48 - 1), v47))
              {
                v48 += 28;
                if (!--v49)
                {
                  v18 = v45;
                  v13 = a6;
                  v35 = a10;
                  goto LABEL_30;
                }
              }

              v60 = *(*(v44 + 32 * v32 + 16) + 2 * v46);
              if (*v48 > v60)
              {
                *v48 = v60;
              }

              v18 = v45;
              v13 = a6;
              v35 = a10;
            }

            else
            {
              v46 = (v43 - v42);
              v47 = *(*(v44 + 32 * v32) + 8 * (v43 - v42));
LABEL_30:
              v50 = strlen(v47);
              v51 = heap_Calloc(*(v18 + 8), 1, (v50 + 1));
              *(*(*v19 + 16 * v32) + 56 * *(*v19 + 16 * v32 + 8)) = v51;
              if (!v51)
              {
                goto LABEL_61;
              }

              strcpy(v51, *(*(*v35 + 32 * v32) + 8 * v46));
              *(*(*v19 + 16 * v32) + 56 * *(*v19 + 16 * v32 + 8) + 8) = *(*(*v35 + 32 * v32 + 16) + 2 * v46);
              v52 = strlen(a9);
              v53 = heap_Calloc(*(v18 + 8), 1, (v52 + 1));
              *(*(*v19 + 16 * v32) + 56 * *(*v19 + 16 * v32 + 8) + 16) = v53;
              if (!v53)
              {
                goto LABEL_61;
              }

              strcpy(v53, a9);
              v54 = strlen(a11);
              v55 = heap_Calloc(*(v18 + 8), 1, (v54 + 1));
              *(*(*v19 + 16 * v32) + 56 * *(*v19 + 16 * v32 + 8) + 24) = v55;
              if (!v55)
              {
                goto LABEL_61;
              }

              strcpy(v55, a11);
              v56 = strlen(a12);
              v57 = heap_Calloc(*(v18 + 8), 1, (v56 + 1));
              *(*(*v19 + 16 * v32) + 56 * *(*v19 + 16 * v32 + 8) + 32) = v57;
              if (!v57)
              {
                goto LABEL_61;
              }

              strcpy(v57, a12);
              v58 = strlen(v13);
              v59 = heap_Calloc(*(v18 + 8), 1, (v58 + 1));
              *(*(*v19 + 16 * v32) + 56 * *(*v19 + 16 * v32 + 8) + 40) = v59;
              if (!v59)
              {
                goto LABEL_61;
              }

              strcpy(v59, v13);
              v33 = *v19;
              ++*(*v19 + 16 * v32 + 8);
            }

            v42 = v94;
            ++v43;
          }

          while (v43 != __srca);
        }

        v61 = 0;
        if (++v32 >= *(v19 + 8))
        {
          return v61;
        }
      }
    }

    return 0;
  }

LABEL_6:
  v21 = *(a13 + 10);
  if (*(a13 + 10))
  {
    v22 = *a13;
    if (*(a13 + 8) + 2 <= v21)
    {
      __s = a9;
    }

    else
    {
      v23 = heap_Realloc(*(a1 + 8), v22, (v21 << 6) + 1280);
      if (!v23)
      {
        goto LABEL_61;
      }

      __s = a9;
      *a13 = v23;
      bzero((v23 + (*(a13 + 8) << 6)), 0x540uLL);
      *(a13 + 10) += 20;
      v22 = *a13;
    }
  }

  else
  {
    v24 = heap_Calloc(*(a1 + 8), 1, 3201);
    *a13 = v24;
    if (!v24)
    {
      goto LABEL_61;
    }

    v22 = v24;
    __s = a9;
    *(a13 + 10) = 50;
  }

  v25 = v22 + (*(a13 + 8) << 6);
  v26 = strlen(a2);
  v27 = heap_Calloc(*(v18 + 8), 1, (v26 + 4));
  *v25 = v27;
  if (v27)
  {
    strcpy(v27, a2);
    *(v25 + 32) = 0;
    *(v25 + 36) = hlp_doesWordEndInComma(a2);
    v28 = strlen(a2);
    v29 = heap_Calloc(*(v18 + 8), 1, (v28 + 4));
    *(v25 + 40) = v29;
    if (v29)
    {
      v30 = v29;
      if (*(v25 + 36) == 1)
      {
        v31 = strlen(*v25);
        strncpy(v30, *v25, (v31 - 1));
      }

      else
      {
        strcpy(v29, *v25);
      }

      v62 = strlen(a5);
      v63 = heap_Calloc(*(v18 + 8), 1, (v62 + 1));
      *(v25 + 16) = v63;
      if (v63)
      {
        v64 = a11;
        strcpy(v63, a5);
        v65 = heap_Calloc(*(v18 + 8), 1, a8 + 1);
        *(v25 + 24) = v65;
        if (v65)
        {
          strncpy(v65, a7, a8);
          v66 = a10;
          v67 = *(a10 + 4);
          *(v25 + 56) = v67;
          v68 = heap_Calloc(*(v18 + 8), v67, 16);
          *(v25 + 48) = v68;
          if (v68)
          {
            if (!*(a10 + 4))
            {
LABEL_60:
              v61 = 0;
              *(v25 + 8) = v16;
              *(v25 + 10) = v15;
              ++*(a13 + 8);
              return v61;
            }

            v69 = 0;
            v70 = *a10;
            v92 = v18;
            while (1)
            {
              v71 = v70 + 32 * v69;
              v72 = *(v71 + 8);
              v73 = *(v25 + 48) + 16 * v69;
              *(v73 + 8) = v72;
              *(v73 + 10) = *(v71 + 24);
              if (!v72)
              {
                return 0;
              }

              v74 = heap_Calloc(*(v18 + 8), v72, 56);
              v75 = 16 * v69;
              *(*(v25 + 48) + 16 * v69) = v74;
              if (!v74)
              {
                goto LABEL_65;
              }

              v70 = *v66;
              v76 = *v66 + 32 * v69;
              if (*(v76 + 8))
              {
                v77 = v69;
                v78 = 0;
                v79 = 0;
                v101 = v77;
                v95 = 32 * v77;
                while (1)
                {
                  v80 = strlen(*(*v76 + 8 * v79));
                  v81 = heap_Calloc(*(v92 + 8), 1, (v80 + 1));
                  *(*(*(v25 + 48) + v75) + v78) = v81;
                  if (!v81)
                  {
                    break;
                  }

                  strcpy(v81, *(*(*a10 + v95) + 8 * v79));
                  __srcb = v79;
                  *(*(*(v25 + 48) + v75) + v78 + 8) = *(*(*a10 + 32 * v101 + 16) + 2 * v79);
                  v82 = strlen(__s);
                  v83 = heap_Calloc(*(v92 + 8), 1, (v82 + 1));
                  *(*(*(v25 + 48) + v75) + v78 + 16) = v83;
                  if (!v83)
                  {
                    v61 = 2314215434;
                    v90 = *(v92 + 32);
                    goto LABEL_62;
                  }

                  strcpy(v83, __s);
                  v84 = strlen(v64);
                  v85 = heap_Calloc(*(v92 + 8), 1, (v84 + 1));
                  *(*(*(v25 + 48) + v75) + v78 + 24) = v85;
                  if (!v85)
                  {
                    break;
                  }

                  strcpy(v85, v64);
                  v86 = strlen(a12);
                  v87 = heap_Calloc(*(v92 + 8), 1, (v86 + 1));
                  *(*(*(v25 + 48) + v75) + v78 + 32) = v87;
                  if (!v87)
                  {
                    v61 = 2314215434;
                    v90 = *(v92 + 32);
                    goto LABEL_62;
                  }

                  strcpy(v87, a12);
                  v88 = strlen(v13);
                  v89 = heap_Calloc(*(v92 + 8), 1, (v88 + 1));
                  *(*(*(v25 + 48) + v75) + v78 + 40) = v89;
                  if (!v89)
                  {
                    break;
                  }

                  strcpy(v89, v13);
                  ++v79;
                  v70 = *a10;
                  v76 = *a10 + 32 * v101;
                  v78 += 56;
                  v64 = a11;
                  if ((__srcb + 1) >= *(v76 + 8))
                  {
                    v69 = v101;
                    v66 = a10;
                    goto LABEL_59;
                  }
                }

LABEL_65:
                v61 = 2314215434;
                v90 = *(v92 + 32);
                goto LABEL_62;
              }

LABEL_59:
              ++v69;
              v18 = v92;
              if (v69 >= *(v66 + 4))
              {
                goto LABEL_60;
              }
            }
          }
        }
      }
    }
  }

LABEL_61:
  v61 = 2314215434;
  v90 = *(v18 + 32);
LABEL_62:
  log_OutPublic(v90, "FE_HMOGRPH", 37000, 0, v92);
  return v61;
}

BOOL hlp_doesWordEndInComma(const char *a1)
{
  result = 0;
  if (a1)
  {
    v2 = strlen(a1);
    if (v2)
    {
      if (strstr(",.:?!;()", &a1[v2 - 1]))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t hlp_do_add(uint64_t *a1, uint64_t a2, const char *a3, int a4, int a5, const char *a6, const char *a7, const char *a8, char *a9, const char *a10, unsigned __int16 a11)
{
  if (!*(a2 + 8))
  {
    return 166731781;
  }

  v15 = heap_Calloc(*(*a1 + 8), 1, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *(a2 + 8);
    *(v15 + 10) = v17;
    *(v15 + 8) = v17;
    v18 = heap_Calloc(*(*a1 + 8), v17, 32);
    *v16 = v18;
    if (v18)
    {
      v43 = a5;
      v44 = a6;
      if (!*(a2 + 8))
      {
LABEL_22:
        hlp_addWord(*a1, a3, a4, v43, a9, v44, a10, a11, a9, v16, a7, a8, (a1 + 1));
LABEL_26:
        stat_hmogrph_freeCandidatePhons(*a1, v16);
        heap_Free(*(*a1 + 8), v16);
        return 0;
      }

      v19 = 0;
      while (1)
      {
        v20 = *a2 + (v19 << 6);
        v23 = *(v20 + 48);
        v22 = (v20 + 48);
        v21 = v23;
        v24 = *(v23 + 10);
        v25 = (v18 + 32 * v19);
        v25[12] = v24;
        v26 = *(v23 + 8);
        if (*(v23 + 8))
        {
          v27 = 0;
          v28 = (*v21 + 8);
          do
          {
            v29 = *v28;
            v28 += 28;
            if (v29 == v24)
            {
              ++v27;
            }

            --v26;
          }

          while (v26);
        }

        else
        {
          v27 = 0;
        }

        v25[4] = v27;
        v25[5] = v27;
        v30 = heap_Calloc(*(*a1 + 8), v27, 8);
        v31 = *v16;
        *(*v16 + 32 * v19) = v30;
        v32 = *a1;
        if (!v30)
        {
          break;
        }

        v33 = heap_Calloc(*(v32 + 8), *(v31 + 32 * v19 + 10), 2);
        v18 = *v16;
        *(*v16 + 32 * v19 + 16) = v33;
        if (!v33)
        {
          goto LABEL_24;
        }

        v34 = *v22;
        if (*(*v22 + 4))
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = *v34;
          do
          {
            if (*(v38 + v35 + 8) == *(v18 + 32 * v19 + 24))
            {
              v39 = strlen(*(v38 + v35));
              *(*(*v16 + 32 * v19) + 8 * v37) = heap_Alloc(*(*a1 + 8), (v39 + 1));
              v40 = *(*(*v16 + 32 * v19) + 8 * v37);
              if (!v40)
              {
                goto LABEL_24;
              }

              strcpy(v40, *(**v22 + v35));
              v34 = *v22;
              v38 = **v22;
              v18 = *v16;
              *(*(*v16 + 32 * v19 + 16) + 2 * v37++) = *(v38 + v35 + 8);
            }

            ++v36;
            v35 += 56;
          }

          while (v36 < *(v34 + 4));
        }

        if (++v19 >= *(a2 + 8))
        {
          goto LABEL_22;
        }
      }

      v42 = *(v32 + 32);
    }

    else
    {
LABEL_24:
      v42 = *(*a1 + 32);
    }

    log_OutPublic(v42, "FE_HMOGRPH", 37000, 0);
    goto LABEL_26;
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
  return 2314215434;
}

void *stat_hmogrph_freeCandidatePhons(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v4 = result;
    if (*(a2 + 8))
    {
      v5 = 0;
      do
      {
        v6 = v3 + 32 * v5;
        v7 = *v6;
        if (*v6)
        {
          if (*(v6 + 8))
          {
            v8 = 0;
            do
            {
              if (*(*v6 + 8 * v8))
              {
                heap_Free(v4[1], *(*v6 + 8 * v8));
                *(*(*a2 + 32 * v5) + 8 * v8) = 0;
                v3 = *a2;
              }

              ++v8;
              v6 = v3 + 32 * v5;
            }

            while (v8 < *(v6 + 8));
            v7 = *v6;
          }

          heap_Free(v4[1], v7);
          v3 = *a2;
          *(*a2 + 32 * v5) = 0;
        }

        if (*(v3 + 32 * v5 + 16))
        {
          heap_Free(v4[1], *(v3 + 32 * v5 + 16));
          v3 = *a2;
          *(*a2 + 32 * v5 + 16) = 0;
        }

        ++v5;
      }

      while (v5 < *(a2 + 8));
    }

    result = heap_Free(v4[1], v3);
    *a2 = 0;
  }

  return result;
}

uint64_t hlp_prepare_phons(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, const char *a6, uint64_t a7, const char *a8, const char *a9, const char *a10, unsigned __int16 a11, unsigned __int16 a12, unsigned __int16 a13, char *a14, const char *a15, unsigned __int16 a16)
{
  v80 = 0;
  v81 = 0;
  v77 = 0;
  v83[0] = 0;
  v24 = heap_Calloc(*(*a4 + 8), 1, 16);
  if (!v24)
  {
    v57 = 2314215434;
    log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0);
    return v57;
  }

  v25 = v24;
  v82 = 0;
  v79 = 0;
  v78 = 0;
  *(v24 + 8) = 65537;
  v26 = heap_Calloc(*(*a4 + 8), 1, 32);
  *v25 = v26;
  if (!v26 || (*(v26 + 8) = 0, v27 = strlen(a6), (v28 = heap_Calloc(*(*a4 + 8), 1, v27 + 1)) == 0))
  {
    v57 = 2314215434;
    log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0);
    v29 = 0;
    goto LABEL_60;
  }

  v29 = v28;
  v72 = a6;
  v30 = (*(*(a1 + 48) + 136))(a2, a3, a13, v83);
  if ((v30 & 0x80000000) != 0)
  {
    v57 = v30;
LABEL_60:
    if (*v25)
    {
      heap_Free(*(*a4 + 8), *v25);
    }

    heap_Free(*(*a4 + 8), v25);
    if (v29)
    {
      goto LABEL_85;
    }

    return v57;
  }

  v31 = v83[0];
  HIWORD(v79) = v83[0];
  v71 = v29;
  if (!v83[0])
  {
    v57 = 0;
    v58 = 0;
    goto LABEL_69;
  }

  v75 = 0;
  v73 = 0;
  v74 = 0;
  v76 = 0;
  v69 = a7 - 8;
  v68 = 1;
  v70 = 1;
  v66 = a5;
  v67 = a8;
  do
  {
    v32 = (*(*(a1 + 48) + 168))(a2, a3, v31, 0, 1, &v82, &v78);
    if ((v32 & 0x80000000) != 0)
    {
LABEL_66:
      v57 = v32;
      goto LABEL_67;
    }

    if (v82 != 17)
    {
      if (v80)
      {
        v35 = v76 == 1;
      }

      else
      {
        v35 = 0;
      }

      if (v35)
      {
        v32 = hlp_addWord(*a4, v29, HIWORD(v77), v77, v80, a8, a15, a16, a14, v25, a9, a10, a5);
        if ((v32 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

        v76 = 0;
      }

      goto LABEL_54;
    }

    v32 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v79), 1, 1, &v77 + 2, &v78);
    if ((v32 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v32 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v79), 2, 1, &v77, &v78);
    if ((v32 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v34 = v73;
    v33 = v74;
    if (HIWORD(v77) != v73 || v77 != v74)
    {
      if (v68)
      {
        v33 = v77;
        v34 = HIWORD(v77);
      }

      else
      {
        v32 = hlp_addWord(*a4, v29, v73, v74, v80, a8, a15, a16, a14, v25, a9, a10, a5);
        if ((v32 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

        ++v70;
        v34 = HIWORD(v77);
        v33 = v77;
      }

      v68 = 0;
      v36 = *v25;
      *(v36 + 8) = 0;
      *(v36 + 24) = -1;
      v76 = 1;
    }

    strncpy(v29, &v72[v34], v33 - v34);
    v29[v77 - HIWORD(v77)] = 0;
    if (HIWORD(v77) < a11 || v77 > a12)
    {
      break;
    }

    v73 = v34;
    v74 = v33;
    v37 = *(*v25 + 8);
    *(*v25 + 8) = v37 + 1;
    v32 = (*(*(a1 + 48) + 176))(a2, a3, HIWORD(v79), 3, &v81, &v78);
    if ((v32 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v32 = (*(*(a1 + 48) + 176))(a2, a3, HIWORD(v79), 5, &v80, &v78);
    if ((v32 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v32 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v79), 7, 1, &v79, &v78);
    if ((v32 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v38 = *v25;
    v39 = *(*v25 + 10);
    if (*(*v25 + 10))
    {
      if (v37 + 1 >= v39)
      {
        v44 = heap_Realloc(*(*a4 + 8), *v38, 8 * v39 + 80);
        if (!v44 || (v45 = *v25, *v45 = v44, (v40 = heap_Realloc(*(*a4 + 8), *(v45 + 16), 2 * *(v45 + 10) + 20)) == 0))
        {
LABEL_87:
          v57 = 2314215434;
          v43 = *a4;
LABEL_90:
          log_OutPublic(*(v43 + 32), "FE_HMOGRPH", 37000, 0);
          goto LABEL_67;
        }

        v38 = *v25;
        *(v38 + 16) = v40;
        *(v38 + 10) += 10;
      }

      else
      {
        v40 = *(v38 + 16);
      }
    }

    else
    {
      *(v38 + 10) = 10;
      v41 = heap_Calloc(*(*a4 + 8), 10, 8);
      v42 = *v25;
      **v25 = v41;
      v43 = *a4;
      if (!v41)
      {
        v57 = 2314215434;
        goto LABEL_90;
      }

      v40 = heap_Calloc(*(v43 + 8), *(v42 + 10), 2);
      v38 = *v25;
      *(*v25 + 16) = v40;
      if (!v40)
      {
        goto LABEL_87;
      }
    }

    if (v75 <= *(v38 + 8))
    {
      v46 = *(v38 + 8);
    }

    else
    {
      v46 = v75;
    }

    v75 = v46;
    v47 = v79;
    *(v40 + 2 * v37) = v79;
    if (*(v38 + 24) > v47)
    {
      *(v38 + 24) = v47;
    }

    v48 = *(v69 + 8 * v70);
    v49 = *v38;
    v50 = *(v49 + 8 * v37);
    if (v48)
    {
      if (!v50 || (v51 = strlen(*(v49 + 8 * v37)), v51 < strlen(v48)))
      {
        v52 = strlen(v48);
        v53 = heap_Realloc(*(*a4 + 8), v50, (v52 + 1));
        if (!v53)
        {
          goto LABEL_88;
        }

        *(**v25 + 8 * v37) = v53;
        v50 = *(**v25 + 8 * v37);
        v48 = *(v69 + 8 * v70);
      }

      goto LABEL_53;
    }

    v48 = v81;
    if (!v50 || (v54 = strlen(*(v49 + 8 * v37)), v54 < strlen(v81)))
    {
      v55 = strlen(v81);
      v56 = heap_Realloc(*(*a4 + 8), v50, (v55 + 1));
      if (v56)
      {
        *(**v25 + 8 * v37) = v56;
        v50 = *(**v25 + 8 * v37);
        v48 = v81;
        goto LABEL_53;
      }

LABEL_88:
      v57 = 2314215434;
      log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0);
      v29 = v71;
LABEL_67:
      v58 = v75;
      goto LABEL_69;
    }

LABEL_53:
    v29 = v71;
    strcpy(v50, v48);
    a5 = v66;
    a8 = v67;
LABEL_54:
    v32 = (*(*(a1 + 48) + 136))(a2, a3, HIWORD(v79), &v79 + 2);
    if ((v32 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v31 = HIWORD(v79);
  }

  while (HIWORD(v79));
  v57 = 0;
  if (!v80)
  {
    goto LABEL_67;
  }

  v58 = v75;
  if (v76 == 1)
  {
    v57 = hlp_addWord(*a4, v29, HIWORD(v77), v77, v80, a8, a15, a16, a14, v25, a9, a10, a5);
  }

LABEL_69:
  v59 = *a4;
  v60 = *v25;
  if (*v25)
  {
    if (*(v25 + 8))
    {
      v61 = 0;
      do
      {
        v62 = *(v60 + 32 * v61);
        if (v62)
        {
          if (v58)
          {
            v63 = 0;
            do
            {
              v64 = *(*(*v25 + 32 * v61) + v63);
              if (v64)
              {
                heap_Free(*(v59 + 8), v64);
                *(*(*v25 + 32 * v61) + v63) = 0;
              }

              v63 += 8;
            }

            while (8 * v58 != v63);
            v62 = *(*v25 + 32 * v61);
          }

          heap_Free(*(v59 + 8), v62);
          v60 = *v25;
          *(*v25 + 32 * v61) = 0;
        }

        if (*(v60 + 32 * v61 + 16))
        {
          heap_Free(*(v59 + 8), *(v60 + 32 * v61 + 16));
          v60 = *v25;
          *(*v25 + 32 * v61 + 16) = 0;
        }

        ++v61;
      }

      while (v61 < *(v25 + 8));
    }

    heap_Free(*(v59 + 8), v60);
    *v25 = 0;
    v59 = *a4;
    v29 = v71;
  }

  heap_Free(*(v59 + 8), v25);
LABEL_85:
  heap_Free(*(*a4 + 8), v29);
  return v57;
}

uint64_t hlp_merge_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, const char *a5, char *a6, const char *a7, const char *a8, const char *a9, unsigned __int16 a10, char *a11, const char *a12, unsigned __int16 a13)
{
  __lasts = 0;
  v53 = 0;
  v51 = 0;
  v50 = 0;
  v21 = (*(*(a1 + 48) + 168))(a2, a3, a10, 1, 1, &v51, &v51 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v21 = (*(*(a1 + 48) + 168))(a2, a3, a10, 2, 1, &v50, &v51 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v21 = (*(*(a1 + 48) + 176))(a2, a3, a10, 3, &v53, &v51 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  __s = a6;
  ChineseUTFCharNum = utf8_GetChineseUTFCharNum(a5, v50);
  v47 = utf8_GetChineseUTFCharNum(a5, v51);
  v22 = heap_Calloc(*(*a4 + 8), 1, 16);
  v23 = *a4;
  if (v22)
  {
    v24 = v22;
    v45 = a5;
    v25 = *(v23 + 8);
    v26 = strlen(__s);
    v27 = heap_Calloc(v25, 1, (v26 + 4));
    v28 = *a4;
    if (v27)
    {
      __dst = v27;
      v44 = a7;
      v29 = (ChineseUTFCharNum - v47);
      v30 = heap_Calloc(*(v28 + 8), 1, 8 * v29);
      if (v30)
      {
        v42 = a8;
        v43 = v24;
        v31 = strtok_r(v53, ".", &__lasts);
        if (v31)
        {
          v32 = v31;
          v33 = 0;
          do
          {
            if (*v32 != 42 || v32[1])
            {
              v34 = strlen(v32);
              v35 = heap_Calloc(*(*a4 + 8), 1, (v34 + 1));
              *(v30 + 8 * v33) = v35;
              if (!v35)
              {
                v37 = 2314215434;
                log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0);
                v24 = v43;
                goto LABEL_23;
              }

              strcpy(v35, v32);
              *(*(v30 + 8 * v33) + strlen(v32)) = 0;
            }

            v32 = strtok_r(0, ".", &__lasts);
            ++v33;
          }

          while (v32);
        }

        strcpy(__dst, __s);
        v41 = v51;
        v40 = v50;
        v36 = hlp_prepare_phons(a1, a2, a3, a4, v43, v45, v30, v44, v42, a9, v51, v50, a10, a11, a12, a13);
        if ((v36 & 0x80000000) == 0)
        {
          v36 = hlp_do_add(a4, v43, __dst, v41, v40, v44, v42, a9, a11, a12, a13);
        }

        v37 = v36;
        v24 = v43;
      }

      else
      {
        v37 = 2314215434;
        log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0);
      }

LABEL_23:
      heap_Free(*(*a4 + 8), __dst);
      if (v30)
      {
        if (ChineseUTFCharNum != v47)
        {
          v39 = v30;
          do
          {
            if (*v39)
            {
              heap_Free(*(*a4 + 8), *v39);
              *v39 = 0;
            }

            ++v39;
            --v29;
          }

          while (v29);
        }

        heap_Free(*(*a4 + 8), v30);
      }
    }

    else
    {
      v37 = 2314215434;
      log_OutPublic(*(v28 + 32), "FE_HMOGRPH", 37000, 0);
    }

    stat_hmogrph_freeNewSentData(a4, v24);
    heap_Free(*(*a4 + 8), v24);
  }

  else
  {
    v37 = 2314215434;
    log_OutPublic(*(v23 + 32), "FE_HMOGRPH", 37000, 0);
  }

  return v37;
}

uint64_t stat_hmogrph_freeNewSentData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 10))
  {
    v4 = 0;
    do
    {
      v5 = *a2 + (v4 << 6);
      if (*v5)
      {
        heap_Free(*(*a1 + 8), *v5);
        *v5 = 0;
      }

      v6 = *(v5 + 16);
      if (v6)
      {
        heap_Free(*(*a1 + 8), v6);
        *(v5 + 16) = 0;
      }

      v7 = *(v5 + 24);
      if (v7)
      {
        heap_Free(*(*a1 + 8), v7);
        *(v5 + 24) = 0;
      }

      v8 = *(v5 + 40);
      if (v8)
      {
        heap_Free(*(*a1 + 8), v8);
        *(v5 + 40) = 0;
      }

      v9 = *(v5 + 48);
      if (v9)
      {
        v10 = *(v5 + 56);
        if (v10)
        {
          for (i = 0; i < v10; ++i)
          {
            v12 = v9 + 16 * i;
            v13 = *v12;
            if (*v12)
            {
              if (*(v12 + 8))
              {
                v14 = 0;
                v15 = 0;
                do
                {
                  v16 = *(v13 + v14);
                  if (v16)
                  {
                    heap_Free(*(*a1 + 8), v16);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14) = 0;
                  }

                  v17 = *(v13 + v14 + 16);
                  if (v17)
                  {
                    heap_Free(*(*a1 + 8), v17);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 16) = 0;
                  }

                  v18 = *(v13 + v14 + 24);
                  if (v18)
                  {
                    heap_Free(*(*a1 + 8), v18);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 24) = 0;
                  }

                  v19 = *(v13 + v14 + 32);
                  if (v19)
                  {
                    heap_Free(*(*a1 + 8), v19);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 32) = 0;
                  }

                  v20 = *(v13 + v14 + 40);
                  if (v20)
                  {
                    heap_Free(*(*a1 + 8), v20);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 40) = 0;
                  }

                  ++v15;
                  v14 += 56;
                }

                while (v15 < *(v9 + 16 * i + 8));
              }

              heap_Free(*(*a1 + 8), v13);
              v9 = *(v5 + 48);
              *(v9 + 16 * i) = 0;
              v10 = *(v5 + 56);
            }
          }
        }

        heap_Free(*(*a1 + 8), v9);
        *(v5 + 48) = 0;
      }

      ++v4;
    }

    while (v4 < *(a2 + 10));
  }

  if (*a2)
  {
    heap_Free(*(*a1 + 8), *a2);
    *a2 = 0;
  }

  return 0;
}

uint64_t stat_hmogrph_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v96 = 0;
  *v97 = 0;
  v95 = 0;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  __s1 = 0;
  v82 = 0;
  a5[1] = 0;
  v10 = a5 + 1;
  *(a5 + 4) = 0;
  v11 = (*(a2 + 104))(a3, a4, 1, 0, &v97[1]);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = v11;
    goto LABEL_112;
  }

  v12 = (*(a2 + 184))(a3, a4, v97[1], 0, &v96);
  if ((v12 & 0x80000000) != 0 || v96 != 1 || (v12 = (*(a2 + 176))(a3, a4, v97[1], 0, &v95, &v96 + 2), (v12 & 0x80000000) != 0) || HIWORD(v96) < 2u)
  {
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_112;
    }

    return v12;
  }

  log_OutText(*(*a5 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph: processing=%s", v95);
  v13 = heap_Calloc(*(*a5 + 8), 1, 1024);
  if (!v13)
  {
    v12 = 2314215434;
    log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0);
    goto LABEL_112;
  }

  v14 = v13;
  v15 = strlen(v95);
  v16 = heap_Calloc(*(*a5 + 8), 1, (v15 + 1));
  if (!v16)
  {
    v12 = 2314215434;
    log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0);
    v77 = 0;
    LODWORD(v17) = 0;
    v79 = 0;
    v80 = 0;
    goto LABEL_147;
  }

  v12 = (*(a2 + 104))(a3, a4, 2, v97[1], v97);
  LODWORD(v17) = 0;
  v77 = 0;
  if ((v12 & 0x80000000) != 0)
  {
    v79 = 0;
    v80 = 0;
    goto LABEL_147;
  }

  v18 = v97[0];
  v79 = 0;
  v80 = 0;
  if (!v97[0])
  {
    goto LABEL_147;
  }

  v76 = 0;
  v70 = 0;
  v71 = a1;
  LODWORD(v17) = 0;
  v79 = 0;
  v80 = 0;
  while (1)
  {
    v81 = 0;
    v19 = (*(a2 + 168))(a3, a4, v18, 0, 1, &v93, &v96 + 2);
    if ((v19 & 0x80000000) != 0)
    {
      v77 = 0;
      goto LABEL_121;
    }

    if (v93 > 0xA || ((1 << v93) & 0x610) == 0)
    {
      goto LABEL_105;
    }

    v19 = (*(a2 + 168))(a3, a4, v97[0], 1, 1, &v92 + 2, &v96 + 2);
    if ((v19 & 0x80000000) != 0 || (v19 = (*(a2 + 168))(a3, a4, v97[0], 2, 1, &v92, &v96 + 2), (v19 & 0x80000000) != 0))
    {
LABEL_117:
      v77 = 0;
      LODWORD(v17) = 0;
      goto LABEL_119;
    }

    if (HIWORD(v92) > v92)
    {
      v77 = 0;
      LODWORD(v17) = 0;
      v79 = 0;
      v80 = 0;
      v66 = 16049;
      goto LABEL_137;
    }

    strncpy(v16, &v95[HIWORD(v92)], v92 - HIWORD(v92));
    v16[v92 - HIWORD(v92)] = 0;
    v19 = (*(a2 + 184))(a3, a4, v97[0], 14, &v96);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_117;
    }

    if (v96 == 1)
    {
      v19 = (*(a2 + 176))(a3, a4, v97[0], 14, &v90, &v96 + 2);
      if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_117;
      }

      hlp_NLUStrFind(v90, "POS", &v86, &v94 + 1);
      v21 = v90;
      if (strstr(v90, "POI"))
      {
        LOWORD(v94) = 0;
        hlp_NLUStrFind(v21, "S_POI", &v85, &v94);
        v22 = v94;
        if (!v94)
        {
          hlp_NLUStrFind(v90, "I_POI", &v85, &v94);
          v22 = v94;
          if (!v94)
          {
            hlp_NLUStrFind(v90, "E_POI", &v85, &v94);
            v22 = v94;
          }
        }

        v23 = v85;
        if (!v22)
        {
          v23 = "";
        }

        v85 = v23;
        if (v22)
        {
          v24 = 4;
        }

        else
        {
          v24 = 3;
        }

        v73 = v22 + v24 + 1;
        v25 = heap_Calloc(*(*a5 + 8), 1, v73);
        v17 = v25;
        if (!v25)
        {
LABEL_126:
          v77 = 0;
          goto LABEL_132;
        }

        if (v22)
        {
          v26 = "_";
        }

        else
        {
          v26 = "";
        }

        *v25 = 0;
        *&v25[strlen(v25)] = 6909808;
        v27 = strcat(v17, v26);
        strncat(v27, v85, v94);
        a1 = v71;
        v28 = v17;
      }

      else
      {
        v73 = 0;
        v28 = 0;
        a1 = v71;
      }
    }

    else
    {
      v73 = 0;
      v28 = 0;
    }

    v72 = v86;
    if (v86)
    {
      LODWORD(v17) = 0;
      if (v28)
      {
        goto LABEL_45;
      }

LABEL_43:
      v30 = heap_Calloc(*(*a5 + 8), 1, 2);
      if (!v30)
      {
        goto LABEL_126;
      }

      v28 = v30;
      LOWORD(v94) = 1;
      *v30 = 61;
      goto LABEL_45;
    }

    LODWORD(v17) = 1;
    v29 = heap_Calloc(*(*a5 + 8), 1, 2);
    v86 = v29;
    if (!v29)
    {
      v77 = v28;
LABEL_132:
      v79 = 0;
      goto LABEL_135;
    }

    *v29 = 61;
    v86[1] = 0;
    LODWORD(v17) = 1;
    if (!v28)
    {
      goto LABEL_43;
    }

LABEL_45:
    v19 = (*(*(a1 + 48) + 176))(a3, a4, v97[0], 6, &v88, &v96 + 2);
    if ((v19 & 0x80000000) != 0 || (v19 = (*(*(a1 + 48) + 176))(a3, a4, v97[0], 9, &v87, &v96 + 2), (v19 & 0x80000000) != 0) || (v19 = (*(a2 + 184))(a3, a4, v97[0], 4, &v96), (v19 & 0x80000000) != 0) || v96 == 1 && (v19 = (*(a2 + 176))(a3, a4, v97[0], 4, &v89, &v96 + 2), (v19 & 0x80000000) != 0))
    {
      v77 = v28;
LABEL_119:
      v79 = 0;
LABEL_120:
      v80 = 0;
LABEL_121:
      v12 = v19;
      goto LABEL_145;
    }

    v69 = v89;
    if (v89)
    {
      v79 = 0;
      goto LABEL_54;
    }

    v31 = heap_Calloc(*(*a5 + 8), 1, 2);
    v89 = v31;
    if (!v31)
    {
      v79 = 1;
      v77 = v28;
LABEL_135:
      v80 = 0;
      goto LABEL_136;
    }

    *v31 = 61;
    v89[1] = 0;
    v79 = 1;
LABEL_54:
    v19 = (*(a2 + 176))(a3, a4, v97[0], 5, &v82, &v96 + 2);
    if ((v19 & 0x80000000) != 0)
    {
      v77 = v28;
      goto LABEL_120;
    }

    v68 = v82;
    if (v82)
    {
      v80 = 0;
      goto LABEL_59;
    }

    v32 = heap_Calloc(*(*a5 + 8), 1, 2);
    v82 = v32;
    if (!v32)
    {
      break;
    }

    *v32 = 61;
    *(v82 + 1) = 0;
    v80 = 1;
LABEL_59:
    if (*(a1 + 144) && v93 == 9 && utf8_IsChineseLetter(v16))
    {
      v19 = hlp_merge_add(a1, a3, a4, a5, v95, v16, v89, v88, v87, v97[0], v82, v28, v73);
      if ((v19 & 0x80000000) != 0)
      {
        v77 = v28;
        goto LABEL_121;
      }
    }

    else
    {
      __s = v16;
      v67 = v14;
      v33 = heap_Calloc(*(*a5 + 8), 1, 16);
      v77 = v28;
      if (!v33)
      {
        log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0);
        goto LABEL_136;
      }

      v34 = v33;
      v75 = v17;
      *(v33 + 8) = 655360;
      v35 = heap_Calloc(*(*a5 + 8), 10, 32);
      *v34 = v35;
      if (!v35)
      {
        v41 = 0;
        v37 = v76;
        goto LABEL_141;
      }

      v36 = (*(a2 + 176))(a3, a4, v97[0], 3, &__s1, &v96 + 2);
      v37 = v76;
      if ((v36 & 0x80000000) != 0)
      {
        v41 = 0;
LABEL_130:
        v12 = v36;
        goto LABEL_142;
      }

      v38 = __s1;
      if (strstr(__s1, "[SVOX]"))
      {
        v38 += 6;
        __s1 = v38;
      }

      v39 = strlen(v38);
      v40 = heap_Alloc(*(*a5 + 8), v39 + 1);
      v41 = v40;
      if (!v40)
      {
        goto LABEL_141;
      }

      strcpy(v40, __s1);
      v42 = strlen(__s1);
      if (v42 >= v70)
      {
        if ((v42 + 1) <= 4u)
        {
          v43 = 4;
        }

        else
        {
          v43 = (v42 + 1);
        }

        v70 = v43;
        v44 = heap_Realloc(*(*a5 + 8), v76, v43);
        if (!v44)
        {
          goto LABEL_141;
        }

        v37 = v44;
      }

      v36 = (*(a2 + 168))(a3, a4, v97[0], 7, 1, &v91, &v96 + 2);
      if ((v36 & 0x80000000) != 0)
      {
        goto LABEL_130;
      }

      v74 = v41;
      v76 = v37;
      v45 = 0;
      if (strlen(__s))
      {
        NextUtf8Offset = 0;
        v47 = __s;
        LODWORD(v17) = v75;
        while ((utf8_getUTF8Char(v47, NextUtf8Offset, v83) & 0x80000000) == 0)
        {
          v48 = *(v34 + 10);
          v37 = v76;
          v41 = v74;
          if (*(v34 + 8) >= v48)
          {
            v49 = heap_Realloc(*(*a5 + 8), *v34, 32 * v48 + 320);
            if (!v49)
            {
              goto LABEL_141;
            }

            *v34 = v49;
            *(v34 + 10) += 10;
          }

          if (!hlp_getPhonFromPhonStr(__s, NextUtf8Offset, v74, v76, &v81))
          {
            goto LABEL_90;
          }

          *(*v34 + 32 * *(v34 + 8) + 8) = 65537;
          v50 = heap_Calloc(*(*a5 + 8), 1, 2);
          v51 = *v34;
          *(*v34 + 32 * *(v34 + 8) + 16) = v50;
          if (!v50)
          {
            goto LABEL_141;
          }

          v52 = v91;
          *v50 = v91;
          *(v51 + 32 * *(v34 + 8) + 24) = v52;
          v53 = heap_Alloc(*(*a5 + 8), 8);
          *(*v34 + 32 * *(v34 + 8)) = v53;
          if (!v53)
          {
            goto LABEL_141;
          }

          v54 = strlen(v76) + 1;
          v55 = heap_Alloc(*(*a5 + 8), v54);
          v56 = 32 * *(v34 + 8);
          **(*v34 + v56) = v55;
          v57 = **(*v34 + v56);
          if (!v57)
          {
            goto LABEL_140;
          }

          v45 += v54;
          strcpy(v57, v76);
          v58 = *(v34 + 8) + 1;
          *(v34 + 8) = v58;
          if (v81 == 1)
          {
            LODWORD(v17) = v75;
            goto LABEL_92;
          }

          v47 = __s;
          NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
          LODWORD(v17) = v75;
          if (NextUtf8Offset >= strlen(__s))
          {
            break;
          }
        }
      }

      else
      {
LABEL_90:
        LODWORD(v17) = v75;
      }

      v58 = *(v34 + 8);
LABEL_92:
      if (v58)
      {
        v59 = strlen(__s1);
        if (v45 < v59 + 1)
        {
          v60 = **(*v34 + 32 * (v58 - 1));
          v61 = strlen(v60);
          v62 = heap_Realloc(*(*a5 + 8), v60, v59 - v45 + v61 + 2);
          if (!v62)
          {
            v37 = v76;
LABEL_140:
            v41 = v74;
LABEL_141:
            log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0);
            v12 = 2314215434;
LABEL_142:
            v76 = v37;
            stat_hmogrph_freeCandidatePhons(*a5, v34);
            heap_Free(*(*a5 + 8), v34);
            if (v41)
            {
              heap_Free(*(*a5 + 8), v41);
            }

            v14 = v67;
            v16 = __s;
            LODWORD(v17) = v75;
            goto LABEL_145;
          }

          v63 = *(v34 + 8);
          **(*v34 + 32 * v63 - 32) = v62;
          strcat(**(*v34 + 32 * v63 - 32), &__s1[v45 - 1]);
        }
      }

      v28 = v77;
      v64 = hlp_addWord(*a5, __s, HIWORD(v92), v92, v86, v89, v77, v73, v82, v34, v88, v87, v10);
      stat_hmogrph_freeCandidatePhons(*a5, v34);
      heap_Free(*(*a5 + 8), v34);
      heap_Free(*(*a5 + 8), v74);
      if ((v64 & 0x80000000) != 0)
      {
        v12 = v64;
        v14 = v67;
        v16 = __s;
        goto LABEL_145;
      }

      v14 = v67;
      v16 = __s;
      a1 = v71;
    }

    if (!v72)
    {
      heap_Free(*(*a5 + 8), v86);
      v86 = 0;
    }

    heap_Free(*(*a5 + 8), v28);
    if (!v69)
    {
      heap_Free(*(*a5 + 8), v89);
      v89 = 0;
    }

    if (v68)
    {
      v80 = 0;
    }

    else
    {
      heap_Free(*(*a5 + 8), v82);
      v82 = 0;
      v80 = 1;
    }

LABEL_105:
    v12 = (*(a2 + 120))(a3, a4, v97[0], v97);
    if ((v12 & 0x80000000) == 0)
    {
      v18 = v97[0];
      if (v97[0])
      {
        continue;
      }
    }

    v77 = 0;
    goto LABEL_145;
  }

  v80 = 1;
  v77 = v28;
LABEL_136:
  v66 = 8202;
LABEL_137:
  v12 = v66 | 0x89F00000;
LABEL_145:
  if (v76)
  {
    heap_Free(*(*a5 + 8), v76);
  }

LABEL_147:
  heap_Free(*(*a5 + 8), v14);
  if (v16)
  {
    heap_Free(*(*a5 + 8), v16);
  }

  if ((v12 & 0x80000000) != 0)
  {
    if (v17 == 1)
    {
      heap_Free(*(*a5 + 8), v86);
      v86 = 0;
    }

    if (v77)
    {
      heap_Free(*(*a5 + 8), v77);
    }

    if (v79 == 1)
    {
      heap_Free(*(*a5 + 8), v89);
      v89 = 0;
    }

    if (v80 == 1)
    {
      heap_Free(*(*a5 + 8), v82);
      v82 = 0;
    }

LABEL_112:
    stat_hmogrph_freeSentenceData(a5);
  }

  return v12;
}

uint64_t hlp_getPhonFromPhonStr(char *a1, unsigned int a2, char *a3, char *a4, _DWORD *a5)
{
  result = 0;
  v13 = a2;
  if (a4 && a5)
  {
    v12 = 0;
    *a5 = 0;
    if (utf8_Utf8CharTo16bit(a1, &v12) && v12 - 40960 <= 0xFFFFADFF)
    {
      strcpy(a4, a3);
      result = 1;
      *a5 = 1;
    }

    else
    {
      utf8_GetPreviousValidUtf8Offset(a1, &v13);
      if (v13)
      {
        NextUtf8Offset = 0;
        while (1)
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(a1, NextUtf8Offset);
          result = strchr(a3, 46);
          if (!result)
          {
            break;
          }

          if (*result == 46)
          {
            a3 = (result + 1);
          }

          else
          {
            a3 = result;
          }

          if (NextUtf8Offset == v13)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        for (NextUtf8Offset = 0; ; ++NextUtf8Offset)
        {
          v11 = a3[NextUtf8Offset];
          if (!a3[NextUtf8Offset] || v11 == 46)
          {
            break;
          }

          a4[NextUtf8Offset] = v11;
          if (NextUtf8Offset && v11 == 125 && a4[NextUtf8Offset - 1] - 48 <= 9)
          {
            a3[NextUtf8Offset++] = 46;
            break;
          }
        }

        result = 1;
      }

      a4[NextUtf8Offset] = 0;
    }
  }

  return result;
}

uint64_t stat_hmogrph_freeSentenceData(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v2 = 0;
      do
      {
        v3 = *(a1 + 8) + (v2 << 6);
        if (*v3)
        {
          heap_Free(*(*a1 + 8), *v3);
          *v3 = 0;
        }

        v4 = *(v3 + 16);
        if (v4)
        {
          heap_Free(*(*a1 + 8), v4);
          *(v3 + 16) = 0;
        }

        v5 = *(v3 + 24);
        if (v5)
        {
          heap_Free(*(*a1 + 8), v5);
          *(v3 + 24) = 0;
        }

        v6 = *(v3 + 40);
        if (v6)
        {
          heap_Free(*(*a1 + 8), v6);
          *(v3 + 40) = 0;
        }

        v7 = *(v3 + 48);
        if (v7)
        {
          v8 = *(v3 + 56);
          if (v8)
          {
            for (i = 0; i < v8; ++i)
            {
              v10 = v7 + 16 * i;
              v11 = *v10;
              if (*v10)
              {
                if (*(v10 + 8))
                {
                  v12 = 0;
                  v13 = 0;
                  do
                  {
                    v14 = *(v11 + v12);
                    if (v14)
                    {
                      heap_Free(*(*a1 + 8), v14);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12) = 0;
                    }

                    v15 = *(v11 + v12 + 16);
                    if (v15)
                    {
                      heap_Free(*(*a1 + 8), v15);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 16) = 0;
                    }

                    v16 = *(v11 + v12 + 24);
                    if (v16)
                    {
                      heap_Free(*(*a1 + 8), v16);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 24) = 0;
                    }

                    v17 = *(v11 + v12 + 32);
                    if (v17)
                    {
                      heap_Free(*(*a1 + 8), v17);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 32) = 0;
                    }

                    v18 = *(v11 + v12 + 40);
                    if (v18)
                    {
                      heap_Free(*(*a1 + 8), v18);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 40) = 0;
                    }

                    ++v13;
                    v12 += 56;
                  }

                  while (v13 < *(v7 + 16 * i + 8));
                }

                heap_Free(*(*a1 + 8), v11);
                v7 = *(v3 + 48);
                *(v7 + 16 * i) = 0;
                v8 = *(v3 + 56);
              }
            }
          }

          heap_Free(*(*a1 + 8), v7);
          *(v3 + 48) = 0;
        }

        ++v2;
      }

      while (v2 < *(a1 + 16));
    }

    v19 = *(a1 + 8);
    if (v19)
    {
      heap_Free(*(*a1 + 8), v19);
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return 0;
}

uint64_t hlp_initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
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

    *v6 = 61;
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
  return 2314215434;
}

uint64_t hlp_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames[a3];
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

uint64_t hlp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v13 = -1;
  result = hlp_isFeatureRequired(a2, a3, a4, &v13);
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
      v12 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v13), (v11 + 1));
      if (!v12)
      {
        log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
        return 2314215434;
      }

      *(a5 + 8 * v10) = v12;
    }

    strcpy(v12, a6);
    return 0;
  }

  return result;
}

uint64_t hlp_wordStrLowerCase(char *a1, char *a2)
{
  *&__s[3] = 0;
  *__s = 0;
  *a2 = 0;
  if ((utf8_getUTF8Char(a1, 0, __s) & 0x80000000) == 0)
  {
    NextUtf8Offset = 0;
    do
    {
      if (strlen(a1) <= NextUtf8Offset)
      {
        break;
      }

      if (strlen(__s) == 1 && __s[0] - 65 <= 0x19)
      {
        a2[NextUtf8Offset] = __s[0] | 0x20;
      }

      else
      {
        strcat(a2, __s);
      }

      NextUtf8Offset = utf8_GetNextUtf8Offset(a1, NextUtf8Offset);
    }

    while ((utf8_getUTF8Char(a1, NextUtf8Offset, __s) & 0x80000000) == 0);
  }

  return 0;
}

uint64_t feat_character(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, const char *a6, char *a7)
{
  v11 = *a2;
  v12 = a3;
  v13 = strlen(*(*a2 + (a3 << 6)));
  v33 = v12;
  v14 = 0;
  if (a3)
  {
    v15 = v11;
    do
    {
      v16 = *v15;
      v15 += 8;
      v14 += strlen(v16);
      --v12;
    }

    while (v12);
  }

  v17 = *(a2 + 8);
  if (v17 <= (a3 + 1))
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = (a3 + 1);
    v20 = &v11[8 * v19];
    v21 = v19 + 1;
    do
    {
      v22 = *v20;
      v20 += 8;
      v18 += strlen(v22);
      v23 = v17 == v21++;
    }

    while (!v23);
  }

  v24 = heap_Calloc(*(a1 + 8), 1, (v13 + v14 + v18 + 1));
  if (!v24)
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215434;
  }

  v25 = v24;
  if (!*(a2 + 8))
  {
    goto LABEL_27;
  }

  v26 = 0;
  v27 = 0;
  NextUtf8Offset = v14 + a4;
  do
  {
    strcat(v25, *(*a2 + v26));
    ++v27;
    v29 = *(a2 + 8);
    v26 += 64;
  }

  while (v27 < v29);
  if (v29 <= a3 || strlen(*(*a2 + (v33 << 6))) <= a4)
  {
    goto LABEL_27;
  }

  if (a5 < 0)
  {
    if (!NextUtf8Offset)
    {
      goto LABEL_27;
    }

    do
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v25, NextUtf8Offset);
      NextUtf8Offset = PreviousUtf8Offset;
      v23 = ~a5 == 0;
      LOWORD(a5) = a5 + 1;
    }

    while (!v23 && PreviousUtf8Offset);
    if (a5)
    {
      goto LABEL_27;
    }
  }

  else if (a5)
  {
    while (NextUtf8Offset != strlen(v25))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(v25, NextUtf8Offset);
      v30 = a5--;
      if (v30 <= 1)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((utf8_getUTF8Char(v25, NextUtf8Offset, a7) & 0x80000000) != 0)
  {
LABEL_27:
    strcpy(a7, a6);
  }

  heap_Free(*(a1 + 8), v25);
  return 0;
}

uint64_t feat_colloc(unsigned __int16 *a1, unsigned int a2, char *__s1)
{
  v4 = a2;
  if (a2)
  {
    v6 = *a1;
    if (!strcmp(__s1, *(*a1 + 40)))
    {
      v11 = 76;
      v10 = 66;
      goto LABEL_12;
    }

    v7 = 0;
    v8 = (v6 + 104);
    while (v4 - 1 != v7)
    {
      v9 = *v8;
      v8 += 8;
      ++v7;
      if (!strcmp(__s1, v9))
      {
        if (v7 >= v4)
        {
          v10 = 82;
        }

        else
        {
          v10 = 66;
        }

        v11 = 76;
        goto LABEL_12;
      }
    }
  }

  v11 = 78;
  v10 = 82;
LABEL_12:
  v12 = a1[4];
  while (1)
  {
    LOWORD(v4) = v4 + 1;
    if (v12 <= v4)
    {
      break;
    }

    if (!strcmp(__s1, *(*a1 + (v4 << 6) + 40)))
    {
      return v10;
    }
  }

  return v11;
}

char *feat_wordbeg(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  v5 = (a3 + a2);
  if (a3 + a2 < 0 || v5 >= *(a1 + 8))
  {
    return strcpy(__dst, __src);
  }

  else
  {
    return utf8_getUTF8Char(*(*a1 + (v5 << 6) + 40), 0, __dst);
  }
}

char *feat_wordend(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  v6 = (a3 + a2);
  if (a3 + a2 < 0 || v6 >= *(a1 + 8))
  {

    return strcpy(__dst, __src);
  }

  else
  {
    v7 = *(*a1 + (v6 << 6) + 40);
    v8 = strlen(v7);

    return utf8_GetUtf8Symbol(v7, v8 - 1, v8, __dst);
  }
}

char *feat_wordlc(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  *__dst = 0;
  v5 = (a3 + a2);
  if (a3 + a2 < 0 || v5 >= *(a1 + 8))
  {
    return strcpy(__dst, __src);
  }

  else
  {
    return hlp_wordStrLowerCase(*(*a1 + (v5 << 6) + 40), __dst);
  }
}

char *feat_wordlen(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  *__dst = 0;
  v6 = (a3 + a2);
  if (a3 + a2 < 0 || v6 >= *(a1 + 8))
  {

    return strcpy(__dst, __src);
  }

  else
  {
    v7 = Utf8_Utf8NbrOfSymbols(*(*a1 + (v6 << 6) + 40));
    return sprintf(__dst, "%d", v7 - 1);
  }
}

uint64_t feat_pos(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = a3 + a2;
  if (a3 <= 0)
  {
    v9 = a3 + a2;
  }

  else
  {
    v9 = a2;
  }

  LOWORD(v10) = v9;
  if (a3 <= 0)
  {
    v8 = a2;
  }

  v11 = v8 - 1;
  if (v9 > v11)
  {
LABEL_12:
    v13 = (a3 + a2);
    if (a3 + a2 >= 0 && v13 < *(a1 + 8))
    {
      return *(*a1 + (v13 << 6) + 16);
    }
  }

  else
  {
    v12 = v11;
    while ((v10 & 0x8000) != 0 || *(a1 + 8) <= v10 || !hlp_doesWordEndInComma(*(*a1 + (v10 << 6))))
    {
      v10 = (v10 + 1);
      if (v10 > v12)
      {
        goto LABEL_12;
      }
    }
  }

  return a4;
}

uint64_t feat_matchprevpos(uint64_t *a1, unsigned int a2, char *__s2, uint64_t a4)
{
  if (a2)
  {
    v6 = *a1;
    v7 = a2 - 1;
    v8 = a2 - 1;
    while (1)
    {
      v9 = v6 + (v7 << 6);
      if (!strcmp(*(v9 + 16), __s2))
      {
        break;
      }

      --v7;
      if (!v8--)
      {
        return a4;
      }
    }

    return *(v9 + 40);
  }

  return a4;
}

uint64_t feat_mosyntpos(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = (a3 + a2);
  if (a3 + a2 >= 0 && v4 < *(a1 + 8))
  {
    v5 = *a1 + (v4 << 6);
    v6 = *(v5 + 56);
    if (*(v5 + 56))
    {
      for (i = (*(v5 + 48) + 8); *i != 1; i += 8)
      {
        if (!--v6)
        {
          return a4;
        }
      }

      return *(*(i - 1) + 16);
    }
  }

  return a4;
}

uint64_t hlp_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, unsigned int a6, unsigned int a7, char **a8, unsigned __int16 a9, uint64_t a10)
{
  v139 = 0;
  v18 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v18)
  {
    v19 = v18;
    v137 = a6;
    v138 = a7;
    v136 = a8;
    if (a4 < 2)
    {
      v22 = 0;
LABEL_9:
      if (!hlp_isFeatureRequired(a3, a4, 11, &v139) || (!a6 || (v23 = a6 - 1, v23 >= a5[4]) ? (v24 = "=") : (v24 = *(*a5 + (v23 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 11, a2, v24), (v22 & 0x80000000) == 0))
      {
        if (!hlp_isFeatureRequired(a3, a4, 10, &v139) || ((v31 = a6 - 2, a6 < 2) || v31 >= a5[4] ? (v32 = "=") : (v32 = *(*a5 + (v31 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 10, a2, v32), (v22 & 0x80000000) == 0))
        {
          if (!hlp_isFeatureRequired(a3, a4, 9, &v139) || ((v33 = a6 - 3, a6 < 3) || v33 >= a5[4] ? (v34 = "=") : (v34 = *(*a5 + (v33 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 9, a2, v34), (v22 & 0x80000000) == 0))
          {
            if (!hlp_isFeatureRequired(a3, a4, 8, &v139) || ((v35 = a6 - 4, a6 < 4) || v35 >= a5[4] ? (v36 = "=") : (v36 = *(*a5 + (v35 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 8, a2, v36), (v22 & 0x80000000) == 0))
            {
              if (!hlp_isFeatureRequired(a3, a4, 7, &v139) || ((v37 = a6 - 5, a6 < 5) || v37 >= a5[4] ? (v38 = "=") : (v38 = *(*a5 + (v37 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 7, a2, v38), (v22 & 0x80000000) == 0))
              {
                if (!hlp_isFeatureRequired(a3, a4, 15, &v139) || ((v46 = a6 + 1, v46 >= a5[4]) ? (v47 = "=") : (v47 = *(*a5 + (v46 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 15, a2, v47), (v22 & 0x80000000) == 0))
                {
                  if (!hlp_isFeatureRequired(a3, a4, 16, &v139) || ((v60 = a6 + 2, v60 >= a5[4]) ? (v61 = "=") : (v61 = *(*a5 + (v60 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 16, a2, v61), (v22 & 0x80000000) == 0))
                  {
                    if (!hlp_isFeatureRequired(a3, a4, 17, &v139) || ((v68 = a6 + 3, v68 >= a5[4]) ? (v69 = "=") : (v69 = *(*a5 + (v68 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 17, a2, v69), (v22 & 0x80000000) == 0))
                    {
                      if (!hlp_isFeatureRequired(a3, a4, 18, &v139) || ((v76 = a6 + 4, v76 >= a5[4]) ? (v77 = "=") : (v77 = *(*a5 + (v76 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 18, a2, v77), (v22 & 0x80000000) == 0))
                      {
                        if (!hlp_isFeatureRequired(a3, a4, 19, &v139) || ((v84 = a6 + 5, v84 >= a5[4]) ? (v85 = "=") : (v85 = *(*a5 + (v84 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 19, a2, v85), (v22 & 0x80000000) == 0))
                        {
                          if (!hlp_isFeatureRequired(a3, a4, 23, &v139) || (v88 = feat_pos(a5, a6, 0, "="), v22 = hlp_setFeature(a1, a3, a4, 23, a2, v88), (v22 & 0x80000000) == 0))
                          {
                            if (!hlp_isFeatureRequired(a3, a4, 22, &v139) || (v89 = feat_pos(a5, a6, -1, "="), v22 = hlp_setFeature(a1, a3, a4, 22, a2, v89), (v22 & 0x80000000) == 0))
                            {
                              if (!hlp_isFeatureRequired(a3, a4, 21, &v139) || (v90 = feat_pos(a5, a6, -2, "="), v22 = hlp_setFeature(a1, a3, a4, 21, a2, v90), (v22 & 0x80000000) == 0))
                              {
                                if (!hlp_isFeatureRequired(a3, a4, 20, &v139) || (v91 = feat_pos(a5, a6, -3, "="), v22 = hlp_setFeature(a1, a3, a4, 20, a2, v91), (v22 & 0x80000000) == 0))
                                {
                                  if (!hlp_isFeatureRequired(a3, a4, 24, &v139) || (v92 = feat_pos(a5, a6, 1, "="), v22 = hlp_setFeature(a1, a3, a4, 24, a2, v92), (v22 & 0x80000000) == 0))
                                  {
                                    if (!hlp_isFeatureRequired(a3, a4, 25, &v139) || (v93 = feat_pos(a5, a6, 2, "="), v22 = hlp_setFeature(a1, a3, a4, 25, a2, v93), (v22 & 0x80000000) == 0))
                                    {
                                      if (!hlp_isFeatureRequired(a3, a4, 26, &v139) || (v94 = feat_pos(a5, a6, 3, "="), v22 = hlp_setFeature(a1, a3, a4, 26, a2, v94), (v22 & 0x80000000) == 0))
                                      {
                                        if (!hlp_isFeatureRequired(a3, a4, 27, &v139) || (v95 = feat_mosyntpos(a5, a6, -1, "="), v22 = hlp_setFeature(a1, a3, a4, 27, a2, v95), (v22 & 0x80000000) == 0))
                                        {
                                          if (!hlp_isFeatureRequired(a3, a4, 28, &v139) || (v96 = feat_mosyntpos(a5, a6, 1, "="), v22 = hlp_setFeature(a1, a3, a4, 28, a2, v96), (v22 & 0x80000000) == 0))
                                          {
                                            if (!hlp_isFeatureRequired(a3, a4, 29, &v139) || (v97 = feat_matchprevpos(a5, a6, "n", "="), v22 = hlp_setFeature(a1, a3, a4, 29, a2, v97), (v22 & 0x80000000) == 0))
                                            {
                                              if (!hlp_isFeatureRequired(a3, a4, 30, &v139))
                                              {
                                                goto LABEL_267;
                                              }

                                              v98 = a5[4];
                                              v99 = a6 + 1;
                                              if (v98 <= (a6 + 1))
                                              {
                                                v100 = "=";
                                              }

                                              else
                                              {
                                                v100 = "=";
                                                while (1)
                                                {
                                                  v101 = *a5 + (v99 << 6);
                                                  v102 = *(v101 + 16);
                                                  if (*v102 == 110 && !v102[1])
                                                  {
                                                    break;
                                                  }

                                                  if (v98 <= ++v99)
                                                  {
                                                    goto LABEL_173;
                                                  }
                                                }

                                                v100 = *(v101 + 40);
                                              }

LABEL_173:
                                              v22 = hlp_setFeature(a1, a3, a4, 30, a2, v100);
                                              if ((v22 & 0x80000000) == 0)
                                              {
LABEL_267:
                                                if (!hlp_isFeatureRequired(a3, a4, 31, &v139) || (v105 = feat_matchprevpos(a5, a6, "v", "="), v22 = hlp_setFeature(a1, a3, a4, 31, a2, v105), (v22 & 0x80000000) == 0))
                                                {
                                                  if (!hlp_isFeatureRequired(a3, a4, 32, &v139))
                                                  {
                                                    goto LABEL_268;
                                                  }

                                                  v106 = a5[4];
                                                  v107 = a6 + 1;
                                                  if (v106 <= (a6 + 1))
                                                  {
                                                    v108 = "=";
                                                  }

                                                  else
                                                  {
                                                    v108 = "=";
                                                    while (1)
                                                    {
                                                      v109 = *a5 + (v107 << 6);
                                                      v110 = *(v109 + 16);
                                                      if (*v110 == 118 && !v110[1])
                                                      {
                                                        break;
                                                      }

                                                      if (v106 <= ++v107)
                                                      {
                                                        goto LABEL_185;
                                                      }
                                                    }

                                                    v108 = *(v109 + 40);
                                                  }

LABEL_185:
                                                  v22 = hlp_setFeature(a1, a3, a4, 32, a2, v108);
                                                  if ((v22 & 0x80000000) == 0)
                                                  {
LABEL_268:
                                                    if (!hlp_isFeatureRequired(a3, a4, 33, &v139))
                                                    {
                                                      goto LABEL_269;
                                                    }

                                                    v111 = a6;
                                                    v112 = a2;
                                                    *v19 = 0;
                                                    v113 = 0xFFFF;
                                                    do
                                                    {
                                                      v114 = strlen(v19);
                                                      v115 = v113;
                                                      feat_wordlen(a5, v111, v113++, "=", &v19[v114]);
                                                    }

                                                    while (v115 < 1);
                                                    a2 = v112;
                                                    v22 = hlp_setFeature(a1, a3, a4, 33, v112, v19);
                                                    a6 = v111;
                                                    if ((v22 & 0x80000000) == 0)
                                                    {
LABEL_269:
                                                      if (!hlp_isFeatureRequired(a3, a4, 34, &v139))
                                                      {
                                                        goto LABEL_270;
                                                      }

                                                      *v19 = 0;
                                                      v116 = v136;
                                                      if (a9)
                                                      {
                                                        v117 = 0;
                                                        for (i = a9 - 1; ; --i)
                                                        {
                                                          v119 = a2;
                                                          if (v117)
                                                          {
                                                            *&v19[strlen(v19)] = 32;
                                                          }

                                                          v120 = strlen(v19);
                                                          v121 = feat_colloc(a5, v137, *v116);
                                                          v122 = &v19[v120];
                                                          *v122 = v121;
                                                          v122[1] = 0;
                                                          a2 = v119;
                                                          if (!i)
                                                          {
                                                            break;
                                                          }

                                                          v117 = *v19;
                                                          ++v116;
                                                        }
                                                      }

                                                      v22 = hlp_setFeature(a1, a3, a4, 34, a2, v19);
                                                      a6 = v137;
                                                      if ((v22 & 0x80000000) == 0)
                                                      {
LABEL_270:
                                                        if (!hlp_isFeatureRequired(a3, a4, 35, &v139) || (v138 + 1 < 2 ? (v123 = a6 == 0) : (v123 = 0), !v123 ? (v124 = "SI") : (v124 = "SB"), v22 = hlp_setFeature(a1, a3, a4, 35, a2, v124), (v22 & 0x80000000) == 0))
                                                        {
                                                          if (!hlp_isFeatureRequired(a3, a4, 38, &v139) || (feat_wordbeg(a5, a6, 0, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 38, a2, v19), (v22 & 0x80000000) == 0))
                                                          {
                                                            if (!hlp_isFeatureRequired(a3, a4, 43, &v139) || (feat_wordend(a5, a6, 0, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 43, a2, v19), (v22 & 0x80000000) == 0))
                                                            {
                                                              if (!hlp_isFeatureRequired(a3, a4, 37, &v139) || (feat_wordbeg(a5, a6, -1, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 37, a2, v19), (v22 & 0x80000000) == 0))
                                                              {
                                                                if (!hlp_isFeatureRequired(a3, a4, 42, &v139) || (feat_wordend(a5, a6, -1, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 42, a2, v19), (v22 & 0x80000000) == 0))
                                                                {
                                                                  if (!hlp_isFeatureRequired(a3, a4, 39, &v139) || (feat_wordbeg(a5, a6, 1, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 39, a2, v19), (v22 & 0x80000000) == 0))
                                                                  {
                                                                    if (!hlp_isFeatureRequired(a3, a4, 44, &v139) || (feat_wordend(a5, a6, 1, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 44, a2, v19), (v22 & 0x80000000) == 0))
                                                                    {
                                                                      if (!hlp_isFeatureRequired(a3, a4, 36, &v139) || (feat_wordbeg(a5, a6, -2, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 36, a2, v19), (v22 & 0x80000000) == 0))
                                                                      {
                                                                        if (!hlp_isFeatureRequired(a3, a4, 41, &v139) || (feat_wordend(a5, a6, -2, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 41, a2, v19), (v22 & 0x80000000) == 0))
                                                                        {
                                                                          if (!hlp_isFeatureRequired(a3, a4, 40, &v139) || (feat_wordbeg(a5, a6, 2, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 40, a2, v19), (v22 & 0x80000000) == 0))
                                                                          {
                                                                            if (!hlp_isFeatureRequired(a3, a4, 45, &v139) || (feat_wordend(a5, a6, 2, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 45, a2, v19), (v22 & 0x80000000) == 0))
                                                                            {
                                                                              if (!hlp_isFeatureRequired(a3, a4, 46, &v139) || (v22 = hlp_setFeature(a1, a3, a4, 46, a2, "="), (v22 & 0x80000000) == 0))
                                                                              {
                                                                                if (!hlp_isFeatureRequired(a3, a4, 47, &v139) || (v22 = hlp_setFeature(a1, a3, a4, 47, a2, "="), (v22 & 0x80000000) == 0))
                                                                                {
                                                                                  if (!hlp_isFeatureRequired(a3, a4, 48, &v139) || (v22 = hlp_setFeature(a1, a3, a4, 48, a2, "="), (v22 & 0x80000000) == 0))
                                                                                  {
                                                                                    if (!hlp_isFeatureRequired(a3, a4, 49, &v139) || ((v125 = *(a10 + 8)) == 0 || v137 - 2 >= *(a10 + 16) ? (v126 = "=") : (v126 = (v125 + 40 * (v137 - 2) + 30)), v22 = hlp_setFeature(a1, a3, a4, 49, a2, v126), (v22 & 0x80000000) == 0))
                                                                                    {
                                                                                      if (!hlp_isFeatureRequired(a3, a4, 50, &v139) || ((v127 = *(a10 + 8)) == 0 || v137 - 1 >= *(a10 + 16) ? (v128 = "=") : (v128 = (v127 + 40 * (v137 - 1) + 30)), v22 = hlp_setFeature(a1, a3, a4, 50, a2, v128), (v22 & 0x80000000) == 0))
                                                                                      {
                                                                                        if (!hlp_isFeatureRequired(a3, a4, 51, &v139) || ((v129 = *(a10 + 8)) == 0 || *(a10 + 16) <= v137 ? (v130 = "=") : (v130 = (v129 + 40 * v137 + 30)), v22 = hlp_setFeature(a1, a3, a4, 51, a2, v130), (v22 & 0x80000000) == 0))
                                                                                        {
                                                                                          if (!hlp_isFeatureRequired(a3, a4, 52, &v139) || ((v131 = *(a10 + 8)) == 0 || v137 + 1 >= *(a10 + 16) ? (v132 = "=") : (v132 = (v131 + 40 * (v137 + 1) + 30)), v22 = hlp_setFeature(a1, a3, a4, 52, a2, v132), (v22 & 0x80000000) == 0))
                                                                                          {
                                                                                            if (hlp_isFeatureRequired(a3, a4, 53, &v139))
                                                                                            {
                                                                                              v133 = *(a10 + 8);
                                                                                              if (v133 && v137 + 2 < *(a10 + 16))
                                                                                              {
                                                                                                v134 = (v133 + 40 * (v137 + 2) + 30);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v134 = "=";
                                                                                              }

                                                                                              v27 = hlp_setFeature(a1, a3, a4, 53, a2, v134);
LABEL_262:
                                                                                              v22 = v27;
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

    else
    {
      v20 = 0;
      v21 = (a4 - 1);
      while (strcmp(*(a3 + 8 * v20), "char0"))
      {
        if (v21 == ++v20)
        {
          v22 = 0;
LABEL_42:
          v39 = 0;
          if (v21 <= 1)
          {
            v40 = 1;
          }

          else
          {
            v40 = (a4 - 1);
          }

          while (strcmp(*(a3 + 8 * v39), "lchar"))
          {
            if (v40 == ++v39)
            {
              goto LABEL_58;
            }
          }

          v139 = v39;
          v41 = "=";
          v42 = a1;
          if (v138 == -1)
          {
            v44 = a3;
            v45 = a4;
            v43 = a2;
          }

          else
          {
            v27 = feat_character(a1, a5, v137, v138, -1, "=", v19);
            if ((v27 & 0x80000000) != 0)
            {
              goto LABEL_262;
            }

            v43 = a2;
            v42 = a1;
            v44 = a3;
            v45 = a4;
            v41 = v19;
          }

          v22 = hlp_setFeature(v42, v44, v45, 3, v43, v41);
          if ((v22 & 0x80000000) == 0)
          {
LABEL_58:
            v48 = 0;
            while (strcmp(*(a3 + 8 * v48), "llchar"))
            {
              if (v40 == ++v48)
              {
                goto LABEL_67;
              }
            }

            v139 = v48;
            v49 = "=";
            v50 = a1;
            if (v138 == -1)
            {
              v52 = a3;
              v53 = a4;
              v51 = a2;
            }

            else
            {
              v27 = feat_character(a1, a5, v137, v138, -2, "=", v19);
              if ((v27 & 0x80000000) != 0)
              {
                goto LABEL_262;
              }

              v51 = a2;
              v50 = a1;
              v52 = a3;
              v53 = a4;
              v49 = v19;
            }

            v22 = hlp_setFeature(v50, v52, v53, 2, v51, v49);
            if ((v22 & 0x80000000) == 0)
            {
LABEL_67:
              v54 = 0;
              while (strcmp(*(a3 + 8 * v54), "l3char"))
              {
                if (v40 == ++v54)
                {
                  goto LABEL_81;
                }
              }

              v139 = v54;
              v55 = "=";
              v56 = a1;
              if (v138 == -1)
              {
                v58 = a3;
                v59 = a4;
                v57 = a2;
              }

              else
              {
                v27 = feat_character(a1, a5, v137, v138, -3, "=", v19);
                if ((v27 & 0x80000000) != 0)
                {
                  goto LABEL_262;
                }

                v57 = a2;
                v56 = a1;
                v58 = a3;
                v59 = a4;
                v55 = v19;
              }

              v22 = hlp_setFeature(v56, v58, v59, 1, v57, v55);
              if ((v22 & 0x80000000) == 0)
              {
LABEL_81:
                v62 = 0;
                while (strcmp(*(a3 + 8 * v62), "rchar"))
                {
                  if (v40 == ++v62)
                  {
                    goto LABEL_95;
                  }
                }

                v139 = v62;
                v63 = "=";
                v64 = a1;
                if (v138 == -1)
                {
                  v66 = a3;
                  v67 = a4;
                  v65 = a2;
                }

                else
                {
                  v27 = feat_character(a1, a5, v137, v138, 1, "=", v19);
                  if ((v27 & 0x80000000) != 0)
                  {
                    goto LABEL_262;
                  }

                  v65 = a2;
                  v64 = a1;
                  v66 = a3;
                  v67 = a4;
                  v63 = v19;
                }

                v22 = hlp_setFeature(v64, v66, v67, 4, v65, v63);
                if ((v22 & 0x80000000) == 0)
                {
LABEL_95:
                  v70 = 0;
                  while (strcmp(*(a3 + 8 * v70), "rrchar"))
                  {
                    if (v40 == ++v70)
                    {
                      goto LABEL_109;
                    }
                  }

                  v139 = v70;
                  v71 = "=";
                  v72 = a1;
                  if (v138 == -1)
                  {
                    v74 = a3;
                    v75 = a4;
                    v73 = a2;
                  }

                  else
                  {
                    v27 = feat_character(a1, a5, v137, v138, 2, "=", v19);
                    if ((v27 & 0x80000000) != 0)
                    {
                      goto LABEL_262;
                    }

                    v73 = a2;
                    v72 = a1;
                    v74 = a3;
                    v75 = a4;
                    v71 = v19;
                  }

                  v22 = hlp_setFeature(v72, v74, v75, 5, v73, v71);
                  if ((v22 & 0x80000000) == 0)
                  {
LABEL_109:
                    v78 = 0;
                    while (strcmp(*(a3 + 8 * v78), "r3char"))
                    {
                      if (v40 == ++v78)
                      {
                        goto LABEL_123;
                      }
                    }

                    v139 = v78;
                    v79 = "=";
                    v80 = a1;
                    if (v138 == -1)
                    {
                      v82 = a3;
                      v83 = a4;
                      v81 = a2;
                    }

                    else
                    {
                      v27 = feat_character(a1, a5, v137, v138, 3, "=", v19);
                      if ((v27 & 0x80000000) != 0)
                      {
                        goto LABEL_262;
                      }

                      v81 = a2;
                      v80 = a1;
                      v82 = a3;
                      v83 = a4;
                      v79 = v19;
                    }

                    v22 = hlp_setFeature(v80, v82, v83, 6, v81, v79);
                    if ((v22 & 0x80000000) != 0)
                    {
                      goto LABEL_263;
                    }

LABEL_123:
                    v86 = 0;
                    while (strcmp(*(a3 + 8 * v86), "word"))
                    {
                      if (v40 == ++v86)
                      {
                        goto LABEL_160;
                      }
                    }

                    v139 = v86;
                    if (a5[4] <= v137)
                    {
                      v87 = "=";
                    }

                    else
                    {
                      v87 = *(*a5 + (v137 << 6) + 40);
                    }

                    v22 = hlp_setFeature(a1, a3, a4, 12, a2, v87);
                    if ((v22 & 0x80000000) != 0)
                    {
                      goto LABEL_263;
                    }

LABEL_160:
                    v103 = 0;
                    while (strcmp(*(a3 + 8 * v103), "wordnocase"))
                    {
                      if (v40 == ++v103)
                      {
                        goto LABEL_165;
                      }
                    }

                    v139 = v103;
                    feat_wordlc(a5, v137, 0, "=", v19);
                    v22 = hlp_setFeature(a1, a3, a4, 13, a2, v19);
                    if ((v22 & 0x80000000) != 0)
                    {
                      goto LABEL_263;
                    }

LABEL_165:
                    v104 = 0;
                    while (strcmp(*(a3 + 8 * v104), "wordlen"))
                    {
                      if (v40 == ++v104)
                      {
                        a6 = v137;
                        goto LABEL_9;
                      }
                    }

                    v139 = v104;
                    a6 = v137;
                    feat_wordlen(a5, v137, 0, "=", v19);
                    v22 = hlp_setFeature(a1, a3, a4, 14, a2, v19);
                    if ((v22 & 0x80000000) == 0)
                    {
                      goto LABEL_9;
                    }

                    goto LABEL_263;
                  }

                  goto LABEL_263;
                }

                goto LABEL_263;
              }

              goto LABEL_263;
            }

            goto LABEL_263;
          }

          goto LABEL_263;
        }
      }

      v139 = v20;
      v25 = "=";
      v26 = a1;
      if (v138 == -1)
      {
        v28 = a3;
        v29 = a4;
        v30 = a2;
      }

      else
      {
        v27 = feat_character(a1, a5, v137, v138, 0, "=", v19);
        if ((v27 & 0x80000000) != 0)
        {
          goto LABEL_262;
        }

        v26 = a1;
        v28 = a3;
        v29 = a4;
        v30 = a2;
        v25 = v19;
      }

      v22 = hlp_setFeature(v26, v28, v29, 0, v30, v25);
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_263:
    heap_Free(*(a1 + 8), v19);
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215434;
  }

  return v22;
}

uint64_t _hmgrph_param_split(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  v7 = (a2 - 1);
  do
  {
    v8 = *++v7;
  }

  while (v8 == 32);
  while (1)
  {
    v9 = strlen(v7);
    if (v7[v9 - 1] != 32)
    {
      break;
    }

    v7[v9 - 1] = 0;
  }

  v10 = v9;
  v11 = 0;
  *a4 = 0;
  if ((v9 + 1) > 1)
  {
    v12 = (v9 + 1);
  }

  else
  {
    v12 = 1;
  }

  v13 = v7;
  do
  {
    v14 = *v13++;
    if ((v14 | 0x20) == 0x20)
    {
      *a4 = ++v11;
    }

    --v12;
  }

  while (v12);
  v15 = heap_Calloc(*(a1 + 8), 1, 8 * v11);
  *a3 = v15;
  if (v15)
  {
    *v15 = v7;
    if (v10)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (v7[v16] == 32)
        {
          v7[v16] = 0;
          v18 = &v7[++v16];
          *(*a3 + 8 * ++v17) = v18;
        }

        else
        {
          ++v16;
        }
      }

      while (v16 != v10);
    }

    return 0;
  }

  else
  {
    v19 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    if (*a3)
    {
      heap_Free(*(a1 + 8), *a3);
    }
  }

  return v19;
}

uint64_t _hmgrph_parse_params(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *(a4 + 32) = 0;
  v6 = (a4 + 32);
  v7 = *(a4 + 16);
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(a4 + 40) = 0;
  if (a3)
  {
    v8 = 2314215424;
    v9 = a3;
    v10 = (a2 + 8);
    do
    {
      v11 = *(a4 + 16);
      v12 = *(v11 + 64);
      v18 = *(a4 + 40);
      v19 = v12;
      v13 = *(v10 - 1);
      if (!strcmp(v13, "features"))
      {
        _hmgrph_param_split(a1, *v10, (v11 + 56), &v19);
        if (v19 > 0xFF)
        {
          return v8;
        }

        *(*(a4 + 16) + 64) = v19;
      }

      else if (!strcmp(v13, "collocations"))
      {
        _hmgrph_param_split(a1, *v10, v6, &v18);
        if (HIWORD(v18))
        {
          return v8;
        }

        *(a4 + 40) = v18;
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    *(v7 + 64) = 29;
    v14 = heap_Calloc(*(a1 + 8), 1, 232);
    v15 = *(a4 + 16);
    *(v15 + 56) = v14;
    if (!v14)
    {
      log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
      return 2314215434;
    }

    if (*(v15 + 64))
    {
      v16 = 0;
      do
      {
        *(*(v15 + 56) + 8 * v16) = off_1E81A4028[v16];
        ++v16;
        v15 = *(a4 + 16);
      }

      while (v16 < *(v15 + 64));
    }
  }

  return 0;
}

uint64_t stat_hmogrph_ModelInit(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned __int16 *a8, unsigned __int16 *a9)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v42 = 0;
  *__s2 = 0;
  *v40 = 0;
  v41 = 0;
  memset(v45, 0, sizeof(v45));
  v39 = 0;
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  BrokerString = stat_hmogrph_getBrokerString(a3, v45, 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v45, "HMGR", 1031, v40);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  v38 = a5;
  v18 = ssftriff_reader_OpenChunk(*v40, __s2, &v42, &v41);
  if ((v18 & 0x80000000) != 0)
  {
    v21 = v18;
    v19 = 0;
  }

  else
  {
    v19 = 0;
    do
    {
      ++v19;
      ssftriff_reader_CloseChunk(*v40);
      v20 = ssftriff_reader_OpenChunk(*v40, __s2, &v42, &v41);
    }

    while ((v20 & 0x80000000) == 0);
    v21 = v20;
  }

  ssftriff_reader_ObjClose(*v40);
  *v40 = 0;
  if ((v21 & 0x1FFF) != 0x14)
  {
    goto LABEL_50;
  }

  v22 = heap_Calloc(*(a3 + 8), 1, 48 * v19);
  *a7 = v22;
  if (!v22)
  {
    v21 = 2314215434;
    v36 = *(a3 + 32);
    v31 = 0;
    goto LABEL_53;
  }

  *a9 = v19;
  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v45, "HMGR", 1031, v40);
  if ((BrokerString & 0x80000000) != 0)
  {
LABEL_41:
    v21 = BrokerString;
    goto LABEL_42;
  }

  v23 = ssftriff_reader_OpenChunk(*v40, __s2, &v42, &v41);
  if ((v23 & 0x80000000) != 0)
  {
LABEL_38:
    if ((v23 & 0x1FFF) == 0x14)
    {
      v21 = 0;
    }

    else
    {
      v21 = v23;
    }

    goto LABEL_42;
  }

  v37 = a6;
  while (1)
  {
    v24 = *a8;
    v25 = *a7;
    v26 = *a7;
    v27 = *a8;
    if (!*a8)
    {
      v28 = 0;
LABEL_18:
      v29 = v38;
LABEL_19:
      v26 = v25 + 48 * v28;
      *a8 = v24 + 1;
      __strcpy_chk();
      if (com_getUnicodeOrth(a4, v29, v37, __s2, &v39))
      {
        __strcpy_chk();
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "Orth for unicode %s does not exist in dic_cfg4.cfg", __s2);
      }

      goto LABEL_24;
    }

    while (strcmp((v26 + 7), __s2))
    {
      v26 += 48;
      if (!--v27)
      {
        v28 = v24;
        goto LABEL_18;
      }
    }

    v28 = v24;
    v29 = v38;
    if (!v25)
    {
      goto LABEL_19;
    }

LABEL_24:
    log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "model #%d, homograph %s", *a8, v26);
    v30 = ssftriff_reader_OpenChunk(*v40, __s2, &v42, &v41);
    if ((v30 & 0x80000000) == 0)
    {
      break;
    }

LABEL_36:
    v21 = v30;
    if ((v30 & 0x1FFF) != 0x14)
    {
      goto LABEL_42;
    }

    ssftriff_reader_CloseChunk(*v40);
    v23 = ssftriff_reader_OpenChunk(*v40, __s2, &v42, &v41);
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }
  }

  while (1)
  {
    log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "model chunk %s for homograph %s, size %d", __s2, v26, v42);
    if (*__s2 ^ 0x48505243 | v44)
    {
      break;
    }

    v31 = *(v26 + 16);
    if (!v31)
    {
      v31 = heap_Calloc(*(a3 + 8), 1, 344);
      *(v26 + 16) = v31;
      if (!v31)
      {
        goto LABEL_56;
      }
    }

    *(v31 + 72) = 1;
    v32 = crf_Init(a1, a2, *v40, v31);
    if ((v32 & 0x80000000) != 0)
    {
LABEL_54:
      v21 = v32;
      ssftriff_reader_CloseChunk(*v40);
      goto LABEL_42;
    }

    _hmgrph_parse_params(a3, *(*(v26 + 16) + 32), *(*(v26 + 16) + 40), v26);
LABEL_35:
    ssftriff_reader_CloseChunk(*v40);
    v30 = ssftriff_reader_OpenChunk(*v40, __s2, &v42, &v41);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_36;
    }
  }

  if (*__s2 ^ 0x52544749 | v44)
  {
    log_OutText(*(a3 + 32), "FE_HMOGRPH", 0, 0, "unknown model type %s", __s2);
    v21 = 2314215428;
    goto LABEL_42;
  }

  v31 = *(v26 + 24);
  if (v31 || (v31 = heap_Calloc(*(a3 + 8), 1, 1600), (*(v26 + 24) = v31) != 0))
  {
    v32 = igtree_Init(a1, a2, *v40, v31);
    if ((v32 & 0x80000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_35;
  }

LABEL_56:
  v21 = 2314215434;
  v36 = *(a3 + 32);
LABEL_53:
  log_OutPublic(v36, "FE_HMOGRPH", 37000, v31);
LABEL_42:
  if (*v40)
  {
    v33 = ssftriff_reader_ObjClose(*v40);
    if (v33 >= 0 || v21 <= -1)
    {
      v21 = v21;
    }

    else
    {
      v21 = v33;
    }
  }

  if ((v21 & 0x80000000) != 0)
  {
LABEL_50:
    stat_hmogrph_ModelDeinit(a3, a7, *a8);
    *a8 = 0;
  }

  return v21;
}

uint64_t stat_hmogrph_ModelDeinit(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 48 * a3;
    do
    {
      v8 = *a2;
      v9 = *(*a2 + v5 + 24);
      if (v9)
      {
        v6 = igtree_Deinit(a1, v9);
        if ((v6 & 0x80000000) != 0)
        {
          return v6;
        }

        heap_Free(*(a1 + 8), *(*a2 + v5 + 24));
        *(*a2 + v5 + 24) = 0;
        v8 = *a2;
      }

      v10 = *(v8 + v5 + 16);
      if (v10)
      {
        v6 = crf_Deinit(v10);
        if ((v6 & 0x80000000) != 0)
        {
          return v6;
        }

        heap_Free(*(a1 + 8), *(*a2 + v5 + 16));
        *(*a2 + v5 + 16) = 0;
        v8 = *a2;
      }

      v11 = *(v8 + v5 + 32);
      if (v11)
      {
        heap_Free(*(a1 + 8), v11);
        *(*a2 + v5 + 32) = 0;
      }

      v5 += 48;
    }

    while (v7 != v5);
  }

  else
  {
    v6 = 0;
  }

  heap_Free(*(a1 + 8), *a2);
  *a2 = 0;
  return v6;
}

uint64_t hlp_getcharPhons(uint64_t a1, const char **a2, unsigned int a3, uint64_t *a4, _WORD *a5)
{
  if (a3)
  {
    v6 = a4;
    v10 = a3;
    v11 = a3;
    v12 = a4;
    do
    {
      v13 = strlen(*a2);
      v14 = heap_Calloc(*(a1 + 8), 1, v13 + 1);
      *v12 = v14;
      if (!v14)
      {
        log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
        do
        {
          if (*v6)
          {
            heap_Free(*(a1 + 8), *v6);
            *v6 = 0;
          }

          ++v6;
          --v10;
        }

        while (v10);
        return 2314215434;
      }

      v15 = *a2;
      a2 += 7;
      memcpy(v14, v15, v13);
      v16 = *v12++;
      *(v16 + v13) = 0;
      --v11;
    }

    while (v11);
    *a5 = 1;
    if (a3 != 1)
    {
      v17 = 1;
      v18 = 1;
      do
      {
        v19 = 0;
        v20 = v6[v18];
        while (strcmp(v6[v19], v20))
        {
          if (v18 == ++v19)
          {
            *a5 = ++v17;
            break;
          }
        }

        ++v18;
      }

      while (v18 != v10);
    }

    return 0;
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t hlp_concatFeatureVector(uint64_t a1, const char **a2, unsigned int a3, char **a4)
{
  if (a3)
  {
    LODWORD(v8) = 0;
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v10++;
      v8 = v8 + strlen(v11) + 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  v12 = heap_Calloc(*(a1 + 8), 1, v8);
  *a4 = v12;
  if (v12)
  {
    if (a3)
    {
      v13 = 0;
      do
      {
        strcat(*a4, a2[v13]);
        if (v13 < a3 - 1)
        {
          *&(*a4)[strlen(*a4)] = 32;
        }

        ++v13;
      }

      while (a3 != v13);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215434;
  }
}

uint64_t hlp_disamWithModels(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, const char *a6, uint64_t a7, const char **a8, char *a9, __int128 *a10)
{
  v141 = 0;
  v142[0] = 0;
  v140 = 0;
  v138 = 0;
  v139 = 0;
  v137 = 0;
  v136 = 0;
  v134 = 0;
  v135 = 0;
  v133 = 0;
  if (!*(a2 + 40))
  {
    ReadOnly = 0;
LABEL_6:
    v15 = 1;
    goto LABEL_9;
  }

  v13 = *(a2 + 48);
  if (v13)
  {
    ReadOnly = ssftmap_FindReadOnly(v13, a6, &v135);
    if (!*(a2 + 40))
    {
      goto LABEL_6;
    }
  }

  else
  {
    ReadOnly = 0;
  }

  v15 = strcmp(*(a2 + 64), "albert") != 0;
LABEL_9:
  __s2 = v15;
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *(a2 + 24);
    do
    {
      if (!strcmp(v21, a6))
      {
        v18 = v19;
        v20 = 1;
      }

      ++v19;
      v21 += 48;
    }

    while (v17 != v19);
    v22 = v18;
    if (v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v22 = 0;
  }

  if (ReadOnly < 0)
  {
    log_OutText(*(a1 + 32), "FE_HMOGRPH", 0, 0, "No model for homograph %s exist", a6);
    v23 = 0;
    v24 = 0;
    goto LABEL_79;
  }

LABEL_19:
  v25 = a9;
  v26 = v16 + 48 * v22;
  v27 = *(a1 + 32);
  if (!*(v26 + 16))
  {
    log_OutText(v27, "FE_HMOGRPH", 5, 0, "MaxEnt model for homograph %s does not exist", a6);
    v23 = 0;
    v29 = 0;
    goto LABEL_35;
  }

  log_OutText(v27, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with MaxEnt model", a6);
  v28 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(v26 + 16) + 64) - 8);
  if (!v28)
  {
    v24 = 0;
    v23 = 2314215434;
    goto LABEL_79;
  }

  v29 = v28;
  inited = hlp_initFeatureVector(a1, v28, (*(*(v26 + 16) + 64) - 1));
  if ((inited & 0x80000000) != 0 || (v31 = *(v26 + 16), v32 = *(v31 + 56), v33 = *(v31 + 64), v34 = *(v26 + 32), LOWORD(v31) = *(v26 + 40), v35 = a10[3], v129 = a10[2], v130 = v35, v131 = a10[4], v132 = *(a10 + 10), v36 = a10[1], v127 = *a10, v128 = v36, hlp_setFeatureVector(a1, v29, v32, v33, (a2 + 8), a3, a5, v34, v31, &v127), inited = hlp_concatFeatureVector(a1, v29, (*(*(v26 + 16) + 64) - 1), v142), (inited & 0x80000000) != 0))
  {
    v23 = inited;
    goto LABEL_31;
  }

  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "STATHMOGRPH_FEATURE: homograph %s at word %d, char %d", a6, a3, a5);
  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "STATHMOGRPH_FEATURE: %s", v142[0]);
  v23 = crf_Process(*(v26 + 16), v142, 1u, &v141, &v140);
  if ((v23 & 0x80000000) != 0)
  {
LABEL_31:
    v24 = 0;
    v42 = 0;
    goto LABEL_76;
  }

  v37 = ReadOnly;
  if (*(*(v26 + 16) + 64) != 1)
  {
    v38 = (*(*(v26 + 16) + 64) - 1);
    v39 = v29;
    do
    {
      v40 = *v39++;
      heap_Free(*(a1 + 8), v40);
      --v38;
    }

    while (v38);
  }

  v25 = a9;
  if (v140 == 1)
  {
    v41 = strcpy(a9, *v141);
    a9[strlen(v41) - 1] = 0;
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "%d predictions for homograph %s with maxent model (discarded)", v140, a6);
  }

  ReadOnly = v37;
LABEL_35:
  v43 = *(a1 + 32);
  if (!*(a2 + 40) || ReadOnly < 0)
  {
    __dst = v25;
    log_OutText(v43, "FE_HMOGRPH", 5, 0, "No NN model for homograph %s !", a6);
    v24 = 0;
    v49 = 1;
LABEL_43:
    v50 = *(a1 + 32);
    if (*(v26 + 24))
    {
      log_OutText(v50, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with igtree model", a6);
      v42 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(v26 + 24) + 1296) - 8);
      if (!v42)
      {
        v23 = 2314215434;
        goto LABEL_75;
      }

      v51 = hlp_initFeatureVector(a1, v42, (*(*(v26 + 24) + 1296) - 1));
      if ((v51 & 0x80000000) != 0)
      {
        v23 = v51;
        goto LABEL_75;
      }

      v52 = ReadOnly;
      v112 = v29;
      v53 = *(v26 + 24);
      v54 = *(v53 + 1312);
      v55 = *(v53 + 1296);
      v56 = a10[3];
      v129 = a10[2];
      v130 = v56;
      v131 = a10[4];
      v132 = *(a10 + 10);
      v57 = a10[1];
      v127 = *a10;
      v128 = v57;
      hlp_setFeatureVector(a1, v42, v54, v55, (a2 + 8), a3, a5, 0, 0, &v127);
      igtree_Process(*(v26 + 24), v42, &v139);
      if (*(*(v26 + 24) + 1296) != 1)
      {
        v58 = (*(*(v26 + 24) + 1296) - 1);
        v59 = v42;
        do
        {
          v60 = *v59++;
          heap_Free(*(a1 + 8), v60);
          --v58;
        }

        while (v58);
      }

      v61 = v139;
      v62 = strcmp(v139, "NOMATCH");
      if (v49)
      {
        if (!v62)
        {
          v63 = v135;
          if (!v135 || v52 < 0)
          {
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No igtree rule matched for homograph %s", a6);
            v29 = v112;
            v23 = 0;
            if (!*__dst)
            {
              *__dst = 0x484354414D4F4ELL;
            }

            goto LABEL_75;
          }

          v64 = __dst;
          goto LABEL_70;
        }
      }

      else if (!v62 || !strcmp(v61, *v137))
      {
        goto LABEL_71;
      }

      v64 = __dst;
      v63 = v61;
LABEL_70:
      strcpy(v64, v63);
LABEL_71:
      v23 = 0;
      goto LABEL_72;
    }

    log_OutText(v50, "FE_HMOGRPH", 5, 0, "IGTree model for homograph %s does not exist");
LABEL_55:
    v42 = 0;
    goto LABEL_75;
  }

  log_OutText(v43, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with NN model", a6);
  v44 = *(a2 + 80);
  v45 = (*(v44 + 40))(*(a2 + 104), *(a2 + 112), &v136);
  if ((v45 & 0x80000000) != 0)
  {
    v23 = v45;
LABEL_74:
    v42 = 0;
    v24 = 0;
    goto LABEL_75;
  }

  v46 = *(a2 + 60);
  if (__s2)
  {
    if (v46 == v136 + 1)
    {
      v118 = (a1 + 8);
      __dst = v25;
      v47 = heap_Calloc(*(a1 + 8), 1, 8);
      if (v47)
      {
        v24 = v47;
        v48 = *(a2 + 60) * *(a2 + 56);
        goto LABEL_60;
      }

      goto LABEL_73;
    }

LABEL_64:
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    v42 = 0;
    v24 = 0;
    v23 = 2314215449;
    goto LABEL_75;
  }

  if (v46 != v136)
  {
    goto LABEL_64;
  }

  v118 = (a1 + 8);
  __dst = v25;
  v65 = heap_Calloc(*(a1 + 8), 1, 8);
  if (!v65)
  {
LABEL_73:
    v23 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    goto LABEL_74;
  }

  v24 = v65;
  v48 = (*(a2 + 56) + 2) * *(a2 + 60);
LABEL_60:
  v42 = heap_Alloc(*v118, 4 * v48);
  v138 = v42;
  if (!v42)
  {
    v23 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    goto LABEL_75;
  }

  nnSent = make_nnSent(a1, a2 + 8, &v133);
  if ((nnSent & 0x80000000) != 0)
  {
    v23 = nnSent;
    v74 = *(a1 + 32);
    v75 = "Make NN Sent Failed";
    goto LABEL_163;
  }

  if (__s2)
  {
    v67 = *(a2 + 56);
  }

  else
  {
    *v42 = 1120534528;
    v42 = (v42 + 4);
    v67 = *(a2 + 56);
    *(v138 + v67 + 1) = 1120665600;
  }

  v107 = ReadOnly;
  if ((v67 + 1) / 2 <= (1 - v67) / 2)
  {
LABEL_151:
    if (__s2)
    {
      v103 = v67;
    }

    else
    {
      v103 = v67 + 2;
    }

    v23 = fi_predict(*(a2 + 40), &v138, v103, &v137);
    if ((v23 & 0x80000000) == 0)
    {
      v104 = *(a7 + 48) + 16 * a4;
      v105 = *(v104 + 8);
      if (*(v104 + 8))
      {
        __s2a = *v137;
        v106 = a8;
        while (strcmp(*v106, __s2a))
        {
          ++v106;
          v49 = 1;
          if (!--v105)
          {
            goto LABEL_167;
          }
        }

        strcpy(__dst, __s2a);
        v49 = 0;
      }

      else
      {
        v49 = 1;
      }

LABEL_167:
      ReadOnly = v107;
      goto LABEL_43;
    }

    v74 = *(a1 + 32);
    v75 = "FIhmogrph Prediction Failed";
LABEL_163:
    log_OutText(v74, "FE_HMOGRPH", 5, 0, v75, 0);
    goto LABEL_55;
  }

  v76 = (1 - v67) / 2;
  v77 = a3;
  v78 = (a3 + 1);
  if (__s2)
  {
    v79 = (v44 + 56);
  }

  else
  {
    v79 = (v44 + 72);
  }

  v110 = v78 + 1;
  v111 = v79;
  v108 = (v44 + 56);
  v109 = v78;
  v112 = v29;
  while (1)
  {
    v116 = v76;
    if (__s2)
    {
      if (v76)
      {
        v80 = 0.0;
      }

      else
      {
        v80 = 1.0;
      }

      *v42 = v80;
      v42 = (v42 + 4);
    }

    __src = *(a2 + 72);
    v81 = v133;
    v114 = v42;
    v115 = strlen(v133[v77]);
    v117 = v133;
    v82 = 0;
    if (a3)
    {
      v83 = v77;
      do
      {
        v84 = *v81++;
        v82 += strlen(v84);
        --v83;
      }

      while (v83);
    }

    v85 = v134;
    if (v134 <= (a3 + 1))
    {
      v86 = 0;
    }

    else
    {
      v86 = 0;
      v87 = v110;
      v88 = &v133[v109];
      do
      {
        v89 = *v88++;
        v86 += strlen(v89);
        v90 = v134 == v87++;
      }

      while (!v90);
    }

    v91 = heap_Calloc(*v118, 1, (v115 + v82 + v86 + 1));
    if (!v91)
    {
      break;
    }

    v92 = v91;
    if (v85)
    {
      NextUtf8Offset = v82 + a5;
      v94 = v117;
      v95 = v85;
      do
      {
        v96 = *v94++;
        strcat(v92, v96);
        --v95;
      }

      while (v95);
      if (v85 > a3 && strlen(v117[a3]) > a5)
      {
        v97 = v116;
        if ((v116 & 0x8000) != 0)
        {
          if (NextUtf8Offset)
          {
            v99 = v116;
            do
            {
              PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v92, NextUtf8Offset);
              NextUtf8Offset = PreviousUtf8Offset;
              v90 = ~v99++ == 0;
            }

            while (!v90 && PreviousUtf8Offset);
            if (!v99)
            {
LABEL_136:
              if ((utf8_getUTF8Char(v92, NextUtf8Offset, v24) & 0x80000000) == 0)
              {
                goto LABEL_138;
              }
            }
          }
        }

        else
        {
          if (!v116)
          {
            goto LABEL_136;
          }

          while (NextUtf8Offset != strlen(v92))
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v92, NextUtf8Offset);
            v98 = v97--;
            if (v98 <= 1)
            {
              goto LABEL_136;
            }
          }
        }
      }
    }

    strcpy(v24, __src);
LABEL_138:
    heap_Free(*v118, v92);
    if (!*v24)
    {
      strcpy(v24, *(a2 + 72));
    }

    v77 = a3;
    v29 = v112;
    if (utf8_IsChineseLetter(v24))
    {
      goto LABEL_148;
    }

    v101 = *v24;
    switch(v101)
    {
      case 's':
        strcpy(v24, *(a2 + 72));
        break;
      case 'e':
        v102 = 4673093;
        goto LABEL_146;
      case '0':
        v102 = 5068110;
LABEL_146:
        *v24 = v102;
        break;
    }

LABEL_148:
    if (((*v111)(*(a2 + 104), *(a2 + 112), v24, v114) & 0x1FFF) == 0x14)
    {
      log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", v24);
      strcpy(v24, *(a2 + 72));
      (*v108)(*(a2 + 104), *(a2 + 112), v24, v114);
    }

    v42 = (v114 + 4 * v136);
    v76 = v116 + 1;
    v67 = *(a2 + 56);
    if ((v67 + 1) / 2 <= (v116 + 1))
    {
      goto LABEL_151;
    }
  }

  v23 = 2314215434;
  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
  v42 = 0;
LABEL_72:
  v29 = v112;
LABEL_75:
  if (v29)
  {
LABEL_76:
    heap_Free(*(a1 + 8), v29);
  }

  if (v42)
  {
    heap_Free(*(a1 + 8), v42);
  }

LABEL_79:
  if (v142[0])
  {
    heap_Free(*(a1 + 8), v142[0]);
    v142[0] = 0;
  }

  v68 = v141;
  if (v141)
  {
    if (v140)
    {
        ;
      }

      v68 = v141;
    }

    heap_Free(*(a1 + 8), v68);
    v141 = 0;
  }

  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
  }

  v70 = v134;
  v71 = v133;
  if (v134)
  {
    v72 = v133;
    do
    {
      if (*v72)
      {
        heap_Free(*(a1 + 8), *v72);
        *v72 = 0;
      }

      ++v72;
      --v70;
    }

    while (v70);
LABEL_96:
    heap_Free(*(a1 + 8), v71);
  }

  else if (v133)
  {
    goto LABEL_96;
  }

  return v23;
}

uint64_t make_nnSent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *(a3 + 8) = v6;
  v7 = heap_Alloc(*(a1 + 8), 8 * v6);
  *a3 = v7;
  if (v7)
  {
    if (*(a3 + 8))
    {
      v8 = 0;
      for (i = 0; i < *(a3 + 8); ++i)
      {
        IsChineseLetter = utf8_IsChineseLetter(*(*a2 + 8 * v8));
        v11 = *(*a2 + 8 * v8);
        if (IsChineseLetter || strlen(*(*a2 + 8 * v8)) != 1)
        {
          v14 = utf8_IsChineseLetter(v11);
          v15 = *(*a2 + 8 * v8);
          if (v14 || (v16 = strlen(*(*a2 + 8 * v8)), v16 == 1))
          {
            v17 = strlen(v15);
            v18 = heap_Alloc(*(a1 + 8), v17 + 1);
            *(*a3 + v8) = v18;
            if (!v18)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v19 = *v15;
            if ((v19 - 48) < 0xA || ((v19 - 35) <= 0x3C ? (v20 = ((1 << (v19 - 35)) & 0x1800000004000503) == 0) : (v20 = 1), !v20 || v19 == 124))
            {
              v13 = heap_Alloc(*(a1 + 8), 2);
              *(*a3 + v8) = v13;
              if (!v13)
              {
                goto LABEL_43;
              }

              goto LABEL_19;
            }

            if ((v19 & 0xFFFFFFDF) - 65 < 0x1A)
            {
              goto LABEL_30;
            }

            v23 = v19 - 34;
            if (v23 > 0x39)
            {
              goto LABEL_37;
            }

            if (((1 << v23) & 0x200000006000061) == 0)
            {
              if (((1 << v23) & 0x40000010) == 0)
              {
LABEL_37:
                v18 = heap_Alloc(*(a1 + 8), 2);
                *(*a3 + v8) = v18;
                if (!v18)
                {
LABEL_43:
                  v24 = 2314215434;
                  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
                  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "Tag orth word for NN Failed", 0);
                  return v24;
                }

                v22 = 115;
                goto LABEL_25;
              }

LABEL_30:
              v18 = heap_Alloc(*(a1 + 8), 2);
              *(*a3 + v8) = v18;
              if (!v18)
              {
                goto LABEL_43;
              }

LABEL_24:
              v22 = 101;
LABEL_25:
              *v18 = v22;
              goto LABEL_20;
            }

            v18 = heap_Alloc(*(a1 + 8), (v16 + 1));
            *(*a3 + v8) = v18;
            if (!v18)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          v12 = *v11;
          if ((v12 - 48) <= 9)
          {
            v13 = heap_Alloc(*(a1 + 8), 2);
            *(*a3 + v8) = v13;
            if (!v13)
            {
              goto LABEL_42;
            }

LABEL_19:
            *v13 = 48;
            goto LABEL_20;
          }

          v21 = (v12 & 0xFFFFFFDF) - 65;
          v18 = heap_Alloc(*(a1 + 8), 2);
          *(*a3 + v8) = v18;
          if (v21 <= 0x19)
          {
            if (!v18)
            {
              goto LABEL_42;
            }

            goto LABEL_24;
          }

          if (!v18)
          {
LABEL_42:
            v24 = 2314215434;
            log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "Tag 1-char orth word for NN Failed", 0);
            return v24;
          }
        }

        strcpy(v18, *(*a2 + 8 * v8));
LABEL_20:
        v8 += 8;
      }
    }

    return 0;
  }

  else
  {
LABEL_39:
    v24 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
  }

  return v24;
}

uint64_t hlp_disamCharByChar(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4, int *a5, uint64_t a6)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = heap_Alloc(*(*a1 + 8), 1024);
  if (v14)
  {
    v15 = v14;
    v60 = a6;
    v16 = v13 + (a2 << 6);
    *v14 = 0;
    v17 = *(v16 + 48);
    v18 = *(v17 + 16 * a3 + 8);
    v61 = a2;
    if (*(v17 + 16 * a3 + 8))
    {
      v19 = *(v17 + 16 * a3);
      v20 = (v18 + 3) & 0x1FFFC;
      v21 = vdupq_n_s64(v18 - 1);
      v22 = (v19 + 160);
      v23 = xmmword_1C378AEF0;
      v24 = xmmword_1C378AF00;
      v25 = vdupq_n_s64(4uLL);
      do
      {
        v26 = vmovn_s64(vcgeq_u64(v21, v24));
        if (vuzp1_s16(v26, *v21.i8).u8[0])
        {
          *(v22 - 28) = 0;
        }

        if (vuzp1_s16(v26, *&v21).i8[2])
        {
          *(v22 - 14) = 0;
        }

        if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v23))).i32[1])
        {
          *v22 = 0;
          v22[14] = 0;
        }

        v23 = vaddq_s64(v23, v25);
        v24 = vaddq_s64(v24, v25);
        v22 += 56;
        v20 -= 4;
      }

      while (v20);
      v27 = v18;
    }

    else
    {
      v27 = 0;
    }

    v64 = heap_Calloc(*(v12 + 8), v27, 8);
    if (!v64)
    {
      v28 = 2314215434;
      log_OutPublic(*(v12 + 32), "FE_HMOGRPH", 37000, 0);
LABEL_62:
      heap_Free(*(v12 + 8), v15);
      return v28;
    }

    v62 = v18;
    v63 = a3;
    v59 = a4;
    if (a3)
    {
      v29 = 0;
      NextUtf8Offset = 0;
      do
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(*v16, NextUtf8Offset);
        ++v29;
      }

      while (a3 > v29);
    }

    else
    {
      NextUtf8Offset = 0;
    }

    UTF8Char = utf8_getUTF8Char(*v16, NextUtf8Offset, __s2);
    if ((UTF8Char & 0x80000000) != 0)
    {
      v28 = UTF8Char;
    }

    else
    {
      v67 = 0;
      v28 = hlp_getcharPhons(v12, *(*(v16 + 48) + 16 * a3), *(*(v16 + 48) + 16 * a3 + 8), v64, &v67);
      if ((v28 & 0x80000000) == 0)
      {
        v58 = a5;
        if (v67 >= 2u)
        {
          v57 = v15;
          v32 = *(a1 + 32);
          if (!*(a1 + 32))
          {
            goto LABEL_38;
          }

          v33 = 0;
          v34 = *(a1 + 24);
          do
          {
            if (!strcmp(v34, __s2))
            {
              v33 = 1;
            }

            v34 += 48;
            --v32;
          }

          while (v32);
          if (v33)
          {
            v35 = *(v60 + 48);
            v65[2] = *(v60 + 32);
            v65[3] = v35;
            v65[4] = *(v60 + 64);
            v66 = *(v60 + 80);
            v36 = *(v60 + 16);
            v65[0] = *v60;
            v65[1] = v36;
            v15 = v57;
            hlp_disamWithModels(v12, a1, v61, a3, NextUtf8Offset, __s2, v16, v64, v57, v65);
            if (strcmp(v57, "NOMATCH"))
            {
              v37 = *(v16 + 48) + 16 * a3;
              v38 = *(v37 + 8);
              if (*(v37 + 8))
              {
                v39 = 48;
                v40 = v64;
                do
                {
                  if (strcmp(*v40, v57))
                  {
                    *(*v37 + v39) = 1;
                  }

                  ++v40;
                  v39 += 56;
                  --v38;
                }

                while (v38);
              }
            }
          }

          else
          {
LABEL_38:
            v15 = v57;
            *v58 = 0;
          }
        }

        v41 = *(v16 + 24);
        if (!*v41)
        {
          hlp_filterWordCandIfTnHas(v16);
          v47 = v58;
          v44 = v59;
          goto LABEL_48;
        }

        v42 = strcmp(*(v16 + 24), "poi");
        hasRcdWithGivenPOIClass = hlp_hasRcdWithGivenPOIClass(v16, v41);
        if (v42)
        {
          v44 = v59;
          if (!hasRcdWithGivenPOIClass)
          {
            v47 = v58;
            if (hlp_hasRcdWithGivenPOIClass(v16, "poi"))
            {
              hlp_filterWordCandIfTnIsNot(v16, "poi");
            }

            else
            {
              hlp_filterWordCandIfTnHas(v16);
            }

LABEL_48:
            *v44 = -1;
            v48 = *(v16 + 48) + 16 * v63;
            v49 = *(v48 + 8);
            if (!*(v48 + 8))
            {
              goto LABEL_55;
            }

            v50 = 0;
            v51 = (*v48 + 48);
            v52 = 0xFFFF;
            v53 = -1;
            do
            {
              if (!*v51 && *(v51 - 20) < v53)
              {
                v52 = v50;
                *v44 = v50;
                v53 = *(v51 - 20);
                v49 = *(v48 + 8);
              }

              ++v50;
              v51 += 14;
            }

            while (v50 < v49);
            if (v52 != 0xFFFF)
            {
              v54 = 1;
            }

            else
            {
LABEL_55:
              v54 = 0;
            }

            *v47 = v54;
            goto LABEL_58;
          }

          v45 = v16;
          v46 = v41;
        }

        else
        {
          v44 = v59;
          if (!hasRcdWithGivenPOIClass)
          {
            hlp_filterWordCandIfTnHas(v16);
            goto LABEL_47;
          }

          v46 = "poi";
          v45 = v16;
        }

        hlp_filterWordCandIfTnIsNot(v45, v46);
LABEL_47:
        v47 = v58;
        goto LABEL_48;
      }
    }

LABEL_58:
    if (v62)
    {
      v55 = v64;
      do
      {
        heap_Free(*(v12 + 8), *v55);
        *v55++ = 0;
        --v27;
      }

      while (v27);
    }

    heap_Free(*(v12 + 8), v64);
    goto LABEL_62;
  }

  v28 = 2314215434;
  log_OutPublic(*(v12 + 32), "FE_HMOGRPH", 37000, 0);
  return v28;
}

uint64_t hlp_disamSpecialWords(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned int a4, _DWORD *a5, uint64_t a6)
{
  *&v51[3] = 0;
  *v51 = 0;
  v50 = 0;
  v11 = a2 + 4;
  v12 = *(a2 + 1) + (a3 << 6);
  v49 = 0;
  *a5 = 0;
  v46 = a4;
  v13 = *(v12 + 48) + 16 * a4;
  v14 = *(v13 + 8);
  if (*(v13 + 8))
  {
    v15 = *v13;
    while (!strstr(*v15, "{SEP"))
    {
      v15 += 7;
      if (!--v14)
      {
        goto LABEL_5;
      }
    }

LABEL_31:
    v17 = 0;
LABEL_32:
    v20 = 0;
LABEL_33:
    if (!*(a1 + 144))
    {
      v36 = *(v12 + 48) + 16 * v46;
      v37 = *(v36 + 8);
      if (*(v36 + 8))
      {
        v38 = *v36;
        *(v36 + 12) = 0;
        if (v37 != 1)
        {
          v39 = 0;
          v40 = (v38 + 64);
          for (i = 1; i != v37; ++i)
          {
            v42 = *v40;
            v40 += 28;
            if (v42 < *(v38 + 56 * v39 + 8))
            {
              v39 = i;
              *(v36 + 12) = i;
            }
          }
        }
      }

LABEL_40:
      *a5 = 1;
    }

    if (v20)
    {
LABEL_42:
      heap_Free(*(*a2 + 8), v20);
    }
  }

  else
  {
LABEL_5:
    if ((utf8_getUTF8Char(*(v12 + 40), 0, v51) & 0x80000000) == 0)
    {
      NextUtf8Offset = 0;
      while (strlen(*(v12 + 40)) > NextUtf8Offset)
      {
        if (utf8_Utf8CharTo16bit(v51, &v50) && v50 - 40960 <= 0xFFFFADFF)
        {
          v17 = a2[16];
          if (!a2[16])
          {
            goto LABEL_32;
          }

          v44 = *(a2 + 3);
          v18 = (v44 + 24);
          while (strcmp(v18 - 17, "0000"))
          {
            v18 += 6;
            if (!--v17)
            {
              goto LABEL_32;
            }
          }

          if (!v44 || !*v18)
          {
            goto LABEL_31;
          }

          v19 = heap_Calloc(*(*a2 + 8), 1, 8 * *(*v18 + 1296) - 8);
          if (!v19)
          {
            return 2314215434;
          }

          v20 = v19;
          inited = hlp_initFeatureVector(*a2, v19, (*(*v18 + 1296) - 1));
          if ((inited & 0x80000000) != 0)
          {
            v17 = inited;
            goto LABEL_42;
          }

          v22 = *a2;
          v23 = *(*v18 + 1312);
          v24 = *(*v18 + 1296);
          v25 = *(a6 + 48);
          v47[2] = *(a6 + 32);
          v47[3] = v25;
          v47[4] = *(a6 + 64);
          v48 = *(a6 + 80);
          v26 = *(a6 + 16);
          v47[0] = *a6;
          v47[1] = v26;
          hlp_setFeatureVector(v22, v20, v23, v24, v11, a3, 0xFFFFFFFF, 0, 0, v47);
          v17 = igtree_Process(*v18, v20, &v49);
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_42;
          }

          if (*(*v18 + 1296) != 1)
          {
            v27 = *a2;
            v28 = (*(*v18 + 1296) - 1);
            v29 = v20;
            do
            {
              v30 = *v29++;
              heap_Free(*(v27 + 8), v30);
              --v28;
            }

            while (v28);
          }

          v31 = v49;
          if (strcmp(v49, "NOMATCH"))
          {
            v32 = *(v12 + 48) + 16 * v46;
            v33 = *(v32 + 8);
            if (*(v32 + 8))
            {
              v34 = 0;
              v45 = *(v12 + 48) + 16 * v46;
              v35 = *v32;
              while (strcmp(v31, *v35))
              {
                ++v34;
                v35 += 7;
                if (v33 == v34)
                {
                  goto LABEL_33;
                }
              }

              *(v45 + 12) = v34;
              goto LABEL_40;
            }
          }

          goto LABEL_33;
        }

        NextUtf8Offset = utf8_GetNextUtf8Offset(*(v12 + 40), NextUtf8Offset);
        if ((utf8_getUTF8Char(*(v12 + 40), NextUtf8Offset, v51) & 0x80000000) != 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return v17;
}

uint64_t stat_hmogrph_disambiguatePhons(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v22 = 0;
  v2 = *(a2 + 16);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  result = 0;
  v7 = (a1 + 392);
  do
  {
    v8 = *(a2 + 8) + (v5 << 6);
    if (!*(v8 + 56))
    {
      goto LABEL_16;
    }

    v9 = 0;
    v10 = 12;
    do
    {
      v11 = *(v8 + 48);
      if (*(v11 + v10 - 4) == 1)
      {
        goto LABEL_13;
      }

      if (!*(v11 + v10 - 4))
      {
        return result;
      }

      v12 = *(a1 + 440);
      v18 = *(a1 + 424);
      v19 = v12;
      v20 = *(a1 + 456);
      v21 = *(a1 + 472);
      v13 = *(a1 + 408);
      v16 = *v7;
      v17 = v13;
      result = hlp_disamSpecialWords(a1, a2, v5, v9, &v22, &v16);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v22 != 1)
      {
        v14 = *(a1 + 440);
        v18 = *(a1 + 424);
        v19 = v14;
        v20 = *(a1 + 456);
        v21 = *(a1 + 472);
        v15 = *(a1 + 408);
        v16 = *v7;
        v17 = v15;
        result = hlp_disamCharByChar(a2, v5, v9, &v23, &v22, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v22 == 1)
        {
          *(*(v8 + 48) + v10) = v23;
          goto LABEL_14;
        }

        v11 = *(v8 + 48);
LABEL_13:
        *(v11 + v10) = 0;
      }

LABEL_14:
      ++v9;
      v10 += 16;
    }

    while (v9 < *(v8 + 56));
    v2 = *(a2 + 16);
LABEL_16:
    ++v5;
  }

  while (v5 < v2);
  return result;
}

uint64_t hlp_CallDepesFunc(void *a1)
{
  v2 = 0;
  v41 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = 0;
  v37 = 0;
  *a1[19] = 0;
  *a1[21] = 0;
  while (1)
  {
    strcpy(__s, "cross_token");
    v3 = strlen(__s);
    v4 = v2;
    if (v2)
    {
      *(a1[19] + strlen(a1[19])) = 32;
      *(a1[21] + strlen(a1[21])) = 32;
    }

    v5 = a1[13];
    v6 = v2;
    v7 = *(v5 + v2);
    if (*(v5 + v2))
    {
      v8 = v2;
      while ((v7 > 0x20 || ((1 << v7) & 0x100002600) == 0) && v7 != 95)
      {
        v8 = ++v2;
        v7 = *(v5 + v2);
        if (!*(v5 + v2))
        {
          v9 = 1;
          goto LABEL_12;
        }
      }

      v9 = 0;
LABEL_12:
      v10 = v2;
    }

    else
    {
      v9 = 1;
      v10 = v2;
      v8 = v2;
    }

    *(v5 + v8) = 0;
    v11 = Utf8_LengthInUtf8chars(a1[13], v10);
    v12 = Utf8_LengthInUtf8chars(a1[13], v4);
    *(a1[14] + v11) = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L1: %s", __s, (a1[13] + v6));
    v13 = a1[13];
    v14 = strlen((v13 + v6));
    v15 = (*(a1[9] + 120))(a1[7], a1[8], 0, v13 + v6, v14);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    v16 = v12;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L2: %s", __s, (a1[14] + v12));
    v17 = a1[14];
    v18 = strlen((v17 + v16));
    v15 = (*(a1[9] + 120))(a1[7], a1[8], 1, v17 + v16, v18);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    if (((*(a1[9] + 80))(a1[7], a1[8], __s) & 0x80000000) != 0)
    {
      __s[v3] = 0;
      v15 = (*(a1[9] + 80))(a1[7], a1[8], __s);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }
    }

    v15 = (*(a1[9] + 128))(a1[7], a1[8], 0, &v39, &v37);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    v39[v37] = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O1: %s", __s, v39);
    v19 = (*(a1[9] + 128))(a1[7], a1[8], 1, &v38, &v37);
    if ((v19 & 0x80000000) != 0)
    {
      return v19;
    }

    v38[v37] = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O2: %s", __s, v38);
    v20 = v39;
    if (*v39)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = &v20[v21];
        v24 = *v23;
        if (v24 == 194)
        {
          if (v23[1] == 161)
          {
            v26 = strlen(v23 + 2);
            memmove(v23 + 1, v23 + 2, v26 + 1);
            v39[v21] = 126;
          }
        }

        else if (v24 == 126)
        {
          v25 = strlen(v23 + 1);
          memmove(v23, v23 + 1, v25 + 1);
          --v22;
        }

        v21 = ++v22;
        v20 = v39;
        v27 = strlen(v39);
      }

      while (v27 > v22);
      v28 = v27 + 2;
    }

    else
    {
      v28 = 2;
    }

    v29 = a1[19];
    v30 = v28 + strlen(v29);
    if (v30 >= 0x81u)
    {
      break;
    }

LABEL_33:
    strcat(v29, v20);
    for (i = 0; ; ++i)
    {
      v33 = i;
      v34 = v38[i];
      if (v34 != 32 && v34 != 126)
      {
        break;
      }
    }

    if (v38[i])
    {
      while (v34 != 32 && v34 != 126)
      {
        LOBYTE(v34) = v38[++i];
      }

      v38[i] = 0;
      if (v38[v33])
      {
        v35 = &v38[v33];
      }

      else
      {
        v35 = "*";
      }
    }

    else
    {
      v35 = "*";
    }

    strcat(a1[21], v35);
    ++v2;
    if (v9)
    {
      return v19;
    }
  }

  v31 = heap_Realloc(*(*a1 + 8), v29, v30);
  if (v31)
  {
    v29 = v31;
    a1[19] = v31;
    v20 = v39;
    goto LABEL_33;
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
  return 2314215434;
}

uint64_t hlp_AppendPhon(uint64_t a1, char *a2, char *__s, uint64_t a4)
{
  if (strlen(__s) >= 2 && !strchr(__s, 32))
  {
    __s[1] = 0;
  }

  if (strlen(a4) >= 2 && !strchr(a4, 32))
  {
    *(a4 + 1) = 0;
  }

  if (!*a2)
  {
    return 0;
  }

  v8 = *(a1 + 152);
  v9 = strlen(v8);
  v10 = v9 + strlen(a2) + 7;
  if (v10 >= 0x81u)
  {
    v11 = heap_Realloc(*(*a1 + 8), v8, v10);
    if (!v11 || (*(a1 + 152) = v11, (v12 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v10)) == 0))
    {
      v25 = 2314215434;
      log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
      return v25;
    }

    *(a1 + 168) = v12;
    v8 = *(a1 + 152);
  }

  *&v8[strlen(v8)] = 8689634;
  *(*(a1 + 168) + strlen(*(a1 + 168))) = 32;
  v13 = strstr(a2, "◄");
  if (strchr(__s, 32) || !v13)
  {
    strcat(*(a1 + 152), a2);
    strcat(*(a1 + 168), a4);
    v26 = strlen(a2);
    v27 = Utf8_LengthInUtf8chars(a2, v26);
    if (v27 > strlen(a4))
    {
      v28 = 0;
      do
      {
        *(*(a1 + 168) + strlen(*(a1 + 168))) = 126;
        ++v28;
      }

      while ((v27 - strlen(a4)) > v28);
    }
  }

  else
  {
    v14 = strstr(v13 + 3, "◄");
    if (!v14)
    {
      log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
      return 2314215431;
    }

    v15 = v14;
    strncat(*(a1 + 152), a2, (v13 - a2 + 3));
    if (Utf8_LengthInUtf8chars(a2, v13 - a2 + 3))
    {
      v16 = 0;
      do
      {
        *(*(a1 + 168) + strlen(*(a1 + 168))) = 32;
        ++v16;
      }

      while (Utf8_LengthInUtf8chars(a2, v13 - a2 + 3) > v16);
    }

    strncat(*(a1 + 152), v13 + 3, (v15 - v13 - 3));
    strcat(*(a1 + 168), a4);
    v17 = Utf8_LengthInUtf8chars(v13, v15 - v13);
    if (strlen(a4) - v17 <= -2)
    {
      v18 = 0;
      do
      {
        *(*(a1 + 168) + strlen(*(a1 + 168))) = 126;
        ++v18;
      }

      while (v17 + ~strlen(a4) > v18);
    }

    strcat(*(a1 + 152), v15);
    v19 = v15 - a2;
    v20 = strlen(a2);
    v21 = Utf8_LengthInUtf8chars(a2, v20) << 16;
    if (v21 > (Utf8_LengthInUtf8chars(a2, v19) << 16))
    {
      v22 = 0;
      do
      {
        *(*(a1 + 168) + strlen(*(a1 + 168))) = 32;
        ++v22;
        v23 = strlen(a2);
        v24 = Utf8_LengthInUtf8chars(a2, v23);
      }

      while (v24 - Utf8_LengthInUtf8chars(a2, v19) > v22);
    }
  }

  *(*(a1 + 152) + strlen(*(a1 + 152))) = 8689634;
  v25 = 0;
  *(*(a1 + 168) + strlen(*(a1 + 168))) = 32;
  return v25;
}

uint64_t hlp_ProcessNTokens(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  *a1[19] = 0;
  *a1[21] = 0;
  v5 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 8) + (v9 << 6);
      if (*(v10 + 8) >= a3 && *(v10 + 10) <= a4 && *(v10 + 56))
      {
        break;
      }

LABEL_10:
      if (++v9 >= v5)
      {
        goto LABEL_11;
      }
    }

    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(*(v10 + 48) + v11) + 56 * *(*(v10 + 48) + v11 + 12);
      strcpy(a1[22], *(v13 + 32));
      appended = hlp_AppendPhon(a1, *v13, *(v13 + 16), *(v13 + 24));
      if ((appended & 0x80000000) != 0)
      {
        return appended;
      }

      ++v12;
      v11 += 16;
      if (v12 >= *(v10 + 56))
      {
        v5 = *(a2 + 16);
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v15 = (2 * strlen(a1[19])) | 1;
  v16 = a1[13];
  if (!v16 || *(a1 + 60) < v15)
  {
    v17 = heap_Realloc(*(*a1 + 8), a1[13], v15);
    if (!v17)
    {
      goto LABEL_35;
    }

    v16 = v17;
    a1[13] = v17;
    a1[15] = v15;
  }

  v18 = a1[14];
  if (v18 && *(a1 + 64) >= v15)
  {
    goto LABEL_19;
  }

  v19 = heap_Realloc(*(*a1 + 8), v18, v15);
  if (!v19)
  {
LABEL_35:
    v29 = 2314215434;
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
    return v29;
  }

  a1[14] = v19;
  a1[16] = v15;
  v16 = a1[13];
LABEL_19:
  strcpy(v16, a1[19]);
  strcpy(a1[14], a1[21]);
  v20 = a1[13];
  if (*v20)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = &v20[v21];
      v25 = v20[v21];
      if (v25 == 226)
      {
        if (*(v24 + 1) == 151 && *(v24 + 2) == 132)
        {
          v22 = !v22;
        }
      }

      else if (v25 == 126 && v22)
      {
        v27 = strlen(&v20[v21]);
        memmove((v24 + 1), &v20[v21], v27 + 1);
        *(a1[13] + v21) = -24126;
        v20 = a1[13];
        v22 = 1;
      }

      v21 = ++v23;
    }

    while (strlen(v20) > v23);
  }

  return hlp_CallDepesFunc(a1);
}

uint64_t stat_hmogrph_updateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v106 = *MEMORY[0x1E69E9840];
  v84 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  memset(v105, 0, 64);
  v76 = 0;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  *__s = 0u;
  v12 = (*(a2 + 104))(a3, a4, 1, 0, &v84);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = (*(a2 + 184))(a3, a4, v84, 0, &v80);
  if ((v13 & 0x80000000) == 0 && v80 == 1)
  {
    v13 = (*(a2 + 176))(a3, a4, v84, 0, &v77, &v81);
    if ((v13 & 0x80000000) == 0 && v81 >= 2u)
    {
      updated = (*(a2 + 104))(a3, a4, 2, v84, &v83 + 2);
      if ((updated & 0x80000000) != 0)
      {
        goto LABEL_123;
      }

      v75 = a1;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v67 = a6;
LABEL_8:
      if (HIWORD(v83))
      {
        updated = (*(a2 + 168))(a3, a4);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        updated = (*(a2 + 168))(a3, a4, HIWORD(v83), 1, 1, &v82 + 2, &v81);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        updated = (*(a2 + 168))(a3, a4, HIWORD(v83), 2, 1, &v82, &v81);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        if (HIWORD(v82) > v82)
        {
          v13 = 2314223281;
          goto LABEL_124;
        }

        if (HIWORD(v82) != v16 || v82 != v17 || (v18 = v79, v79 != 4))
        {
          updated = (*(*(v75 + 48) + 136))(a3, a4, HIWORD(v83), &v83);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_123;
          }

          if (v83)
          {
            updated = (*(*(v75 + 48) + 168))(a3, a4);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_123;
            }
          }

          if (v78 == 4 && !v15)
          {
            v19 = v76;
            if (v76)
            {
              v70 = v16;
              if (v76 == 1)
              {
                v20 = strlen(__s[0]);
                updated = (*(a2 + 160))(a3, a4, v105[0], 3, (v20 + 1), __s[0], &v80 + 2);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_123;
                }
              }

              else
              {
                v21 = 0;
                v22 = 0;
                v23 = 10000;
                do
                {
                  updated = (*(a2 + 168))(a3, a4, v105[v21], 7, 1, &v81 + 2, &v81);
                  if ((updated & 0x80000000) != 0)
                  {
                    goto LABEL_123;
                  }

                  if (HIWORD(v81) < v23)
                  {
                    v23 = HIWORD(v81);
                    v22 = v21;
                  }

                  ++v21;
                }

                while (v19 != v21);
                v24 = strlen(__s[v22]);
                updated = (*(a2 + 160))(a3, a4, v105[v22], 3, (v24 + 1), __s[v22], &v80 + 2);
                v16 = v70;
                v15 = 0;
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_123;
                }
              }
            }
          }

          hlp_freeWordPhoneList(a5, &v76, v105, __s);
          v18 = v79;
          if (v79 > 0xA || ((1 << v79) & 0x610) == 0)
          {
            goto LABEL_64;
          }
        }

        v74 = v82;
        if (HIWORD(v82) != v16 || v82 != v17)
        {
          v15 = 0;
          v16 = HIWORD(v82);
        }

        if (v18 == 9)
        {
          updated = (*(*(v75 + 48) + 136))(a3, a4, HIWORD(v83), &v83);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_123;
          }

          if (v83)
          {
            updated = (*(*(v75 + 48) + 168))(a3, a4);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_123;
            }
          }
        }

        if (*(v75 + 144) && v79 == 9 && v78 == 17)
        {
          updated = hlp_ProcessNTokens(v75, a5, HIWORD(v82), v82);
          if ((updated & 0x80000000) == 0)
          {
            v25 = strlen(*(v75 + 152));
            v26 = (*(*(v75 + 48) + 160))(a3, a4, HIWORD(v83), 3, (v25 + 1), *(v75 + 152), &v80 + 2);
            if ((v26 & 0x80000000) != 0 || (v27 = strlen(*(v75 + 168)), v26 = (*(*(v75 + 48) + 160))(a3, a4, HIWORD(v83), 6, (v27 + 1), *(v75 + 168), &v80 + 2), (v26 & 0x80000000) != 0) || (HIWORD(v81) = 4, v26 = (*(*(v75 + 48) + 160))(a3, a4, HIWORD(v83), 7, 1, &v81 + 2, &v80 + 2), (v26 & 0x80000000) != 0))
            {
              v13 = v26;
              goto LABEL_124;
            }

            v28 = strlen(*(v75 + 176));
            updated = (*(*(v75 + 48) + 160))(a3, a4, HIWORD(v83), 9, (v28 + 1), *(v75 + 176), &v80 + 2);
            v17 = v74;
            if ((updated & 0x80000000) == 0)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_123;
        }

        v68 = v82;
        v69 = HIWORD(v82);
        v29 = v76;
        v88 = 0;
        v87 = 0;
        __src = 0;
        v85 = 0;
        v73 = HIWORD(v83);
        v13 = (*(a2 + 184))(a3, a4);
        if ((v13 & 0x80000000) != 0 || !v85)
        {
          goto LABEL_62;
        }

        updated = (*(a2 + 176))(a3, a4, v73, 3, &__src, &v88);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        v85 = 0;
        v13 = (*(a2 + 184))(a3, a4, v73, 7, &v85);
        if ((v13 & 0x80000000) != 0 || !v85)
        {
LABEL_62:
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_124;
          }

          goto LABEL_63;
        }

        v13 = (*(a2 + 168))(a3, a4, v73, 7, 1, &v88 + 2, &v88);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v30 = strlen(__src);
        v31 = heap_Calloc(*(*a5 + 8), 1, v30 + 1);
        __s[v29] = v31;
        if (!v31)
        {
          v13 = 2314215434;
LABEL_127:
          log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0);
          goto LABEL_124;
        }

        strcpy(v31, __src);
        v32 = *(a5 + 16);
        if (!*(a5 + 16))
        {
          goto LABEL_63;
        }

        v72 = v15;
        v33 = (*(a5 + 8) + 56);
        while (*(v33 - 24) != v69 || *(v33 - 23) != v68)
        {
          v33 += 32;
          if (!--v32)
          {
            v15 = v72;
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_124;
            }

LABEL_63:
            v105[v29] = HIWORD(v83);
            v76 = v29 + 1;
            v17 = v74;
LABEL_64:
            updated = (*(a2 + 120))(a3, a4, HIWORD(v83), &v83 + 2);
            if ((updated & 0x80000000) != 0)
            {
LABEL_123:
              v13 = updated;
              goto LABEL_124;
            }

            goto LABEL_8;
          }
        }

        v71 = v16;
        v64 = a5;
        v34 = *v33;
        if (*v33)
        {
          v35 = 0;
          v36 = (*(v33 - 1) + 12);
          do
          {
            v37 = *v36;
            v38 = *(v36 - 2);
            if (v38 <= v37)
            {
              LOWORD(v37) = v38 - 1;
            }

            v39 = strlen(*(*(v36 - 6) + 56 * v37));
            if (v39)
            {
              v35 += v39 + 1;
            }

            v36 += 8;
            --v34;
          }

          while (v34);
        }

        else
        {
          v35 = 0;
        }

        v40 = heap_Calloc(*(*a5 + 8), 1, v35 + 1);
        if (!v40)
        {
          v13 = 2314215434;
          goto LABEL_127;
        }

        v65 = v35;
        v63 = v29;
        *v40 = 0;
        if (*v33)
        {
          v41 = 0;
          for (i = 0; i < v50; ++i)
          {
            v43 = (*(v33 - 1) + v41);
            v44 = *(v43 + 6);
            v45 = *(v43 + 4);
            if (v45 <= v44)
            {
              LOWORD(v44) = v45 - 1;
            }

            v46 = *v43;
            v47 = 56 * v44;
            v48 = v40;
            strcat(v40, *(*v43 + v47));
            v49 = *(v46 + v47);
            v50 = *v33;
            if (*v49)
            {
              v51 = i == v50 - 1;
            }

            else
            {
              v51 = 1;
            }

            if (!v51)
            {
              if (!strstr(v49, "{SEP"))
              {
                *&v48[strlen(v48)] = 46;
                v40 = v48;
                v50 = *v33;
                goto LABEL_87;
              }

              --v65;
            }

            v40 = v48;
LABEL_87:
            v41 += 16;
          }
        }

        if (v65 >= 2u)
        {
          v40[v65 - 1] = 0;
        }

        v66 = v40;
        v16 = v71;
        v29 = v63;
        a5 = v64;
        if (strcmp(v40, __src) | v72)
        {
          v13 = (*(a2 + 160))(a3, a4, v73, 3, 8, "DELETED", &v87);
          v53 = *v64;
          if ((v13 & 0x80000000) != 0)
          {
            heap_Free(*(v53 + 8), v66);
            goto LABEL_124;
          }

          log_OutText(*(v53 + 32), "FE_HMOGRPH", 5, 0, "DELETED: from %d to %d, orth %s with phon %s and priority %d", v69, v68, *(v33 - 7), __src, HIWORD(v88));
          v15 = v72;
          v52 = v66;
        }

        else
        {
          log_OutText(*(*v64 + 32), "FE_HMOGRPH", 5, 0, "from %d to %d, orth %s, disambiguated phon %s, priority %d", v69, v68, *(v33 - 7), v66, HIWORD(v88));
          v52 = v66;
          v15 = 1;
        }

        heap_Free(*(*v64 + 8), v52);
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_124:
        hlp_freeWordPhoneList(a5, &v76, v105, __s);
      }

      else
      {
        v54 = v75;
        if (v105[0])
        {
          if (v79 == 4 && v15 == 0)
          {
            v56 = v76;
            if (v76)
            {
              if (v76 == 1)
              {
                v57 = strlen(__s[0]);
                updated = (*(a2 + 160))(a3, a4, v105[0], 3, (v57 + 1), __s[0], &v80 + 2);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_123;
                }
              }

              else
              {
                v58 = 0;
                v59 = 0;
                v60 = 10000;
                do
                {
                  updated = (*(a2 + 168))(a3, a4, v105[v58], 7, 1, &v81 + 2, &v81);
                  if ((updated & 0x80000000) != 0)
                  {
                    goto LABEL_123;
                  }

                  if (HIWORD(v81) < v60)
                  {
                    v60 = HIWORD(v81);
                    v59 = v58;
                  }

                  ++v58;
                }

                while (v56 != v58);
                v61 = strlen(__s[v59]);
                updated = (*(a2 + 160))(a3, a4, v105[v59], 3, (v61 + 1), __s[v59], &v80 + 2);
                v54 = v75;
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_123;
                }
              }
            }
          }

          hlp_freeWordPhoneList(a5, &v76, v105, __s);
        }

        if (*(v54 + 144))
        {
          updated = hlp_updateLingdb_process_skipcrosstoekn_cleanup(v54, a2, a3, a4, v84);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_123;
          }
        }

        updated = hlp_updateLingdb_delete_duplicated_words(*v54, a2, a3, a4, a5, v84, *(v54 + 384), v67);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        v13 = stat_hmogrph_selectSubOrWholeRcd(v54, a2, a3, a4, a5);
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_124;
        }
      }
    }
  }

  return v13;
}

void *hlp_freeWordPhoneList(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  for (i = 0; i != 32; ++i)
  {
    if (*(a3 + 2 * i))
    {
      *(a3 + 2 * i) = 0;
    }

    v9 = *(a4 + 8 * i);
    if (v9)
    {
      result = heap_Free(*(*v7 + 8), v9);
      *(a4 + 8 * i) = 0;
    }
  }

  *a2 = 0;
  return result;
}

uint64_t hlp_updateLingdb_process_skipcrosstoekn_cleanup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  v16 = 0;
  result = (*(a2 + 104))(a3, a4, 2, a5, &v16 + 2);
  if ((result & 0x80000000) == 0)
  {
    v11 = HIWORD(v16);
    if (HIWORD(v16))
    {
      v12 = 0;
      do
      {
        result = (*(a2 + 168))(a3, a4, v11, 0, 1, &v15, &v16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v15 == 17)
        {
          result = (*(*(a1 + 48) + 192))(a3, a4, HIWORD(v16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          HIWORD(v16) = v12;
          v13 = v12;
        }

        else
        {
          v13 = HIWORD(v16);
        }

        v14 = *(a1 + 48);
        if (v13)
        {
          result = (*(v14 + 120))(a3, a4, v13, &v16 + 2);
          v12 = v13;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
          result = (*(v14 + 104))(a3, a4, 2, a5, &v16 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        v11 = HIWORD(v16);
      }

      while (HIWORD(v16));
    }
  }

  return result;
}

uint64_t hlp_updateLingdb_delete_duplicated_words(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  __s1 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  updated = (*(a2 + 104))(a3, a4, 2, a6, &v23 + 2);
  if ((updated & 0x80000000) == 0)
  {
    v15 = HIWORD(v23);
    if (HIWORD(v23))
    {
      v16 = 0;
      do
      {
        updated = (*(a2 + 120))(a3, a4, v15, &v23);
        if ((updated & 0x80000000) != 0)
        {
          break;
        }

        (*(a2 + 168))(a3, a4, HIWORD(v23), 0, 1, &v21, &v22);
        if (v21 <= 0xA && ((1 << v21) & 0x610) != 0)
        {
          v18 = (*(a2 + 168))(a3, a4, HIWORD(v23), 1, 1, &v24 + 2, &v22);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v18 = (*(a2 + 168))(a3, a4, HIWORD(v23), 2, 1, &v24, &v22);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          updated = (*(a2 + 176))(a3, a4, HIWORD(v23), 3, &__s1, &v22);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (!strcmp(__s1, "DELETED"))
          {
            updated = (*(a2 + 192))(a3, a4, HIWORD(v23));
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            log_OutText(*(*a5 + 32), "FE_HMOGRPH", 5, 0, "delete a word record from pos %d to pos %d", HIWORD(v24), v24);
          }

          else if (a7)
          {
            updated = updateNLUNE(a1, a3, a4, a2, HIWORD(v23), v16, a8);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            ++v16;
          }
        }

        v15 = v23;
        HIWORD(v23) = v23;
      }

      while (v23);
    }
  }

  return updated;
}

uint64_t stat_hmogrph_selectSubOrWholeRcd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 0;
  v90 = 0;
  if (a2 && a5)
  {
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v6 = *(a5 + 8);
    if (*(a5 + 8))
    {
      v7 = 0;
      v8 = a5[1];
      v9 = *(a5 + 8);
      v10 = v9;
      do
      {
        v11 = v8 + (v7 << 6);
        v12 = *(v11 + 24);
        if (!*v12)
        {
          v19 = v7;
          v20 = (v8 + 10);
          v21 = v6;
          while (!v19 || *(v11 + 8) < *(v20 - 1) || *(v11 + 10) > *v20)
          {
            v20 += 32;
            --v19;
            if (!--v21)
            {
              *(v11 + 32) = 0;
              goto LABEL_47;
            }
          }

          *(v11 + 32) = 1;
LABEL_47:
          v9 = v6;
          v10 = v6;
          goto LABEL_85;
        }

        if (!strcmp(*(v11 + 24), "poi"))
        {
          if (v9)
          {
            v22 = v9;
            v23 = v7;
            v24 = (v8 + 10);
            v25 = v9;
            while (!v23 || *(v11 + 8) < *(v24 - 1) || *(v11 + 10) > *v24)
            {
              v24 += 32;
              --v23;
              if (!--v25)
              {
                if (hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), "poi"))
                {
                  *(v11 + 32) = 0;
                  v26 = (v8 + 32);
                  v27 = v7;
                  do
                  {
                    if (v27 && *(v11 + 8) <= *(v26 - 12) && *(v11 + 10) >= *(v26 - 11))
                    {
                      *v26 = 1;
                    }

                    --v27;
                    v26 += 16;
                    --v22;
                  }

                  while (v22);
                }

                else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, "poi"))
                {
                  *(v11 + 32) = 1;
                  v30 = (v8 + 32);
                  v31 = v7;
                  do
                  {
                    if (v31 && *(v11 + 8) <= *(v30 - 12) && *(v11 + 10) >= *(v30 - 11))
                    {
                      *v30 = 0;
                    }

                    --v31;
                    v30 += 16;
                    --v22;
                  }

                  while (v22);
                }

                else
                {
                  *(v11 + 32) = 0;
                  v34 = (v8 + 32);
                  v35 = v7;
                  do
                  {
                    if (v35 && *(v11 + 8) <= *(v34 - 12) && *(v11 + 10) >= *(v34 - 11))
                    {
                      *v34 = 1;
                    }

                    --v35;
                    v34 += 16;
                    --v22;
                  }

                  while (v22);
                }

                break;
              }
            }

            v10 = v9;
            goto LABEL_85;
          }

          if (!hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), "poi") && stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, "poi"))
          {
            v9 = 0;
LABEL_69:
            v10 = 0;
            *(v11 + 32) = 1;
            goto LABEL_85;
          }

          v9 = 0;
        }

        else
        {
          if (v10)
          {
            v13 = v10;
            v14 = v7;
            v15 = (v8 + 10);
            v16 = v10;
            while (!v14 || *(v11 + 8) < *(v15 - 1) || *(v11 + 10) > *v15)
            {
              v15 += 32;
              --v14;
              if (!--v16)
              {
                if (hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), v12))
                {
                  *(v11 + 32) = 0;
                  v17 = (v8 + 32);
                  v18 = v7;
                  do
                  {
                    if (v18 && *(v11 + 8) <= *(v17 - 12) && *(v11 + 10) >= *(v17 - 11))
                    {
                      *v17 = 1;
                    }

                    --v18;
                    v17 += 16;
                    --v13;
                  }

                  while (v13);
                }

                else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, v12))
                {
                  *(v11 + 32) = 1;
                  v28 = (v8 + 32);
                  v29 = v7;
                  do
                  {
                    if (v29 && *(v11 + 8) <= *(v28 - 12) && *(v11 + 10) >= *(v28 - 11))
                    {
                      *v28 = 0;
                    }

                    --v29;
                    v28 += 16;
                    --v13;
                  }

                  while (v13);
                }

                else if (hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), "poi"))
                {
                  *(v11 + 32) = 0;
                  v32 = (v8 + 32);
                  v33 = v7;
                  do
                  {
                    if (v33 && *(v11 + 8) <= *(v32 - 12) && *(v11 + 10) >= *(v32 - 11))
                    {
                      *v32 = 1;
                    }

                    --v33;
                    v32 += 16;
                    --v13;
                  }

                  while (v13);
                }

                else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, "poi"))
                {
                  *(v11 + 32) = 1;
                  v36 = (v8 + 32);
                  v37 = v7;
                  do
                  {
                    if (v37 && *(v11 + 8) <= *(v36 - 12) && *(v11 + 10) >= *(v36 - 11))
                    {
                      *v36 = 0;
                    }

                    --v37;
                    v36 += 16;
                    --v13;
                  }

                  while (v13);
                }

                else
                {
                  *(v11 + 32) = 0;
                  v38 = (v8 + 32);
                  v39 = v7;
                  do
                  {
                    if (v39 && *(v11 + 8) <= *(v38 - 12) && *(v11 + 10) >= *(v38 - 11))
                    {
                      *v38 = 1;
                    }

                    --v39;
                    v38 += 16;
                    --v13;
                  }

                  while (v13);
                }

                goto LABEL_85;
              }
            }

            goto LABEL_85;
          }

          if (!hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), v12) && (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, v12) || !hlp_hasRcdWithGivenPOIClass(v8 + (v7 << 6), "poi") && stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v7, "poi")))
          {
            goto LABEL_69;
          }
        }

        v10 = 0;
        *(v11 + 32) = 0;
LABEL_85:
        ++v7;
      }

      while (v7 != v6);
    }

    v40 = a4;
    v41 = a3;
    v42 = (*(a2 + 104))(a3, a4, 1, 0, &v89 + 2);
    if ((v42 & 0x80000000) != 0)
    {
      return v42;
    }

    else
    {
      v5 = (*(a2 + 104))(a3, a4, 2, HIWORD(v89), &v89);
      if ((v5 & 0x80000000) == 0)
      {
        v43 = v89;
        v44 = a5;
        v45 = a1;
        if (v89)
        {
          do
          {
            v42 = (*(a2 + 120))(v41, v40, v43, &v88 + 2);
            if ((v42 & 0x80000000) != 0)
            {
              return v42;
            }

            v5 = (*(a2 + 168))(v41, v40, v89, 0, 1, &v91, &v88);
            if ((v5 & 0x80000000) != 0)
            {
              return v5;
            }

            if (v91 == 4 || (v91 == 9 ? (v46 = *(v45 + 144) == 0) : (v46 = 0), !v46 ? (v47 = 0) : (v47 = 1), v91 != 10 ? (v48 = v47 == 0) : (v48 = 0), !v48))
            {
              v42 = (*(a2 + 168))(v41, v40, v89, 1, 1, &v90 + 2, &v88);
              if ((v42 & 0x80000000) != 0)
              {
                return v42;
              }

              v42 = (*(a2 + 168))(v41, v40, v89, 2, 1, &v90, &v88);
              if ((v42 & 0x80000000) != 0)
              {
                return v42;
              }

              if (!*(v44 + 8))
              {
LABEL_189:
                v5 = 2314215424;
                log_OutText(*(*v44 + 32), "FE_HMOGRPH", 5, 0, "cant find lingdb word : no word found with pos=%d,%d", HIWORD(v90), v90);
                return v5;
              }

              v49 = 0;
              v50 = v44[1];
              v51 = 32;
              while (__PAIR64__(*(v50 + v51 - 22), *(v50 + v51 - 24)) != __PAIR64__(v90, HIWORD(v90)))
              {
                ++v49;
                v51 += 64;
                if (*(v44 + 8) == v49)
                {
                  goto LABEL_189;
                }
              }

              if (*(v50 + v51) == 1)
              {
                v5 = (*(a2 + 192))(v41, v40, v89);
                if ((v5 & 0x80000000) != 0)
                {
                  return v5;
                }

                log_OutText(*(*v44 + 32), "FE_HMOGRPH", 5, 0, "Due to POI priority, delete a word record from pos %d to pos %d", HIWORD(v90), v90);
                v52 = v44[1];
                if (*(v52 + v51) != 1)
                {
                  goto LABEL_186;
                }

                v53 = *(v44 + 8);
                if (*(v44 + 8))
                {
                  v54 = v52 + v51;
                  v55 = (v52 + 10);
                  v56 = v49;
                  do
                  {
                    if (v56 && *(v54 - 24) >= *(v55 - 1) && *(v54 - 22) <= *v55)
                    {
                      goto LABEL_186;
                    }

                    --v56;
                    v55 += 32;
                    --v53;
                  }

                  while (v53);
                  v57 = 0;
                  v5 = 0;
                  while (1)
                  {
                    if (v49 != v57)
                    {
                      v58 = v44[1] + (v57 << 6);
                      if (*(v54 - 24) <= *(v58 + 8))
                      {
                        v59 = *(v58 + 10);
                        if (*(v54 - 22) > v59)
                        {
                          break;
                        }
                      }
                    }

LABEL_182:
                    if (++v57 >= *(v44 + 8))
                    {
                      if ((v5 & 0x80000000) != 0)
                      {
                        return v5;
                      }

                      goto LABEL_186;
                    }
                  }

                  v60 = *v44;
                  v96 = 0;
                  v94 = 0;
                  __s = 0;
                  HIWORD(v93) = 0;
                  v42 = (*(a2 + 104))(v41, v40, 1, 0, &v96);
                  if ((v42 & 0x80000000) != 0)
                  {
                    return v42;
                  }

                  v5 = (*(a2 + 184))(v41, v40, v96, 0, &v94 + 2);
                  if ((v5 & 0x80000000) != 0)
                  {
                    v45 = a1;
                  }

                  else
                  {
                    v45 = a1;
                    if (HIWORD(v94) == 1)
                    {
                      v5 = (*(a2 + 176))(a3, a4, v96, 0, &__s, &v94);
                      if ((v5 & 0x80000000) == 0 && v94 >= 2u)
                      {
                        v61 = strlen(__s);
                        v62 = heap_Calloc(*(v60 + 8), 1, v61 + 2);
                        if (!v62)
                        {
                          log_OutPublic(*(v60 + 32), "FE_HMOGRPH", 37000, 0);
                          return 2314215434;
                        }

                        v63 = v62;
                        v64 = &strcpy(v62, __s)[v59];
                        v65 = strlen(v64);
                        memmove(v64 + 1, v64, v65 + 1);
                        *v64 = 32;
                        v66 = strlen(v63);
                        v42 = (*(a2 + 160))(a3, a4, v96, 0, (v66 + 1), v63, &v93 + 2);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        heap_Free(*(v60 + 8), v63);
                        v44 = a5;
                        v41 = a3;
                        v40 = a4;
                        goto LABEL_148;
                      }
                    }
                  }

                  v41 = a3;
                  v40 = a4;
                  if ((v5 & 0x80000000) != 0)
                  {
                    return v5;
                  }

LABEL_148:
                  v94 = 0;
                  LODWORD(__s) = 0;
                  v96 = 0;
                  v92 = 0;
                  v93 = 0;
                  v42 = (*(a2 + 104))(v41, v40, 1, 0, &v94);
                  if ((v42 & 0x80000000) != 0)
                  {
                    return v42;
                  }

                  v67 = (*(a2 + 104))(v41, v40, 2, v94, &v93 + 2);
                  v5 = v67;
                  if ((v67 & 0x80000000) == 0)
                  {
                    v68 = HIWORD(v93);
                    if (HIWORD(v93))
                    {
                      while (1)
                      {
                        v42 = (*(a2 + 120))(v41, v40, v68, &v93);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        (*(a2 + 168))(v41, v40, HIWORD(v93), 0, 1, &__s, &v92 + 2);
                        v42 = (*(a2 + 168))(v41, v40, HIWORD(v93), 1, 1, &v96, &v92 + 2);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        v42 = (*(a2 + 168))(v41, v40, HIWORD(v93), 2, 1, &v94 + 2, &v92 + 2);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        if (v96 >= v59)
                        {
                          ++v96;
                          v69 = HIWORD(v94);
                        }

                        else
                        {
                          v69 = HIWORD(v94);
                          if (HIWORD(v94) <= v59)
                          {
                            goto LABEL_159;
                          }
                        }

                        HIWORD(v94) = v69 + 1;
LABEL_159:
                        v42 = (*(a2 + 160))(v41, v40, HIWORD(v93), 1, 1, &v96, &v92);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        v42 = (*(a2 + 160))(v41, v40, HIWORD(v93), 2, 1, &v94 + 2, &v92);
                        if ((v42 & 0x80000000) != 0)
                        {
                          return v42;
                        }

                        v68 = v93;
                        HIWORD(v93) = v93;
                        if (!v93)
                        {
                          goto LABEL_164;
                        }
                      }
                    }
                  }

                  if ((v67 & 0x80000000) != 0)
                  {
                    return v5;
                  }

LABEL_164:
                  if (*(v44 + 8))
                  {
                    v70 = 0;
                    v71 = 0;
                    v72 = *(v44 + 8) << 6;
                    v73 = v49;
                    do
                    {
                      if (v73)
                      {
                        v74 = v44[1];
                        v75 = v74 + v70;
                        v76 = *(v74 + v70 + 8);
                        if (v76 >= v59)
                        {
                          *(v75 + 8) = v76 + 1;
                          v78 = *(v75 + 10);
                          v77 = (v75 + 10);
                          LOWORD(v76) = v78;
                          goto LABEL_171;
                        }

                        v76 = *(v75 + 10);
                        if (v76 > v59)
                        {
                          v77 = (v74 + (v71 << 6) + 10);
LABEL_171:
                          *v77 = v76 + 1;
                        }
                      }

                      ++v71;
                      --v73;
                      v70 += 64;
                    }

                    while (v72 != v70);
                  }

                  v96 = 0;
                  __s = 0;
                  HIWORD(v94) = 0;
                  v42 = (*(a2 + 104))(v41, v40, 1, 0, &v94 + 2);
                  if ((v42 & 0x80000000) != 0)
                  {
                    return v42;
                  }

                  v5 = (*(a2 + 176))(v41, v40, HIWORD(v94), 1, &__s, &v96);
                  if ((v5 & 0x80000000) != 0)
                  {
                    return v5;
                  }

                  v79 = v96;
                  if (v96)
                  {
                    v80 = __s + 16;
                    do
                    {
                      v81 = *(v80 - 1);
                      if (v81 >= v59)
                      {
                        *(v80 - 1) = v81 + 1;
                      }

                      else if (*v80 + v81 > v59)
                      {
                        ++*v80;
                      }

                      v80 += 32;
                      --v79;
                    }

                    while (v79);
                  }

                  goto LABEL_182;
                }
              }

              v5 = 0;
            }

LABEL_186:
            v43 = HIWORD(v88);
            LOWORD(v89) = HIWORD(v88);
          }

          while (HIWORD(v88));
        }
      }
    }
  }

  return v5;
}

uint64_t stat_hmogrph_getIOBTNToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, char *a8)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  for (i = (*(a2 + 104))(a3, a4, 2, a5, &v25 + 2); ; i = (*(a2 + 120))(a3, a4, HIWORD(v25), &v25 + 2))
  {
    v16 = i;
    if ((i & 0x80000000) != 0)
    {
      break;
    }

    if (!HIWORD(v25))
    {
      goto LABEL_19;
    }

    v17 = (*(a2 + 168))(a3, a4, HIWORD(v25), 0, 1, &v23, &v25);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    if (v23 == 6)
    {
      v17 = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v25), 1, 1, &v24 + 2, &v25);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      v17 = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v25), 2, 1, &v24, &v25);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      if (HIWORD(v24) <= a6 && v24 + 1 >= a7)
      {
        v18 = HIWORD(v24) + 1 == a6 || HIWORD(v24) == a6;
        v19 = "I-";
        if (v18)
        {
          v19 = "B-";
        }

        *a8 = *v19;
        a8[2] = v19[2];
        v16 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v25), 4, &v22, &v25);
        if ((v16 & 0x80000000) == 0)
        {
          v20 = strncat(a8, (v22 + 1), 0x3CuLL);
          a8 += strlen(v20) - 1;
LABEL_19:
          *a8 = 0;
        }

        return v16;
      }
    }
  }

  return v16;
}

uint64_t stat_hmogrph_disambiguateWords(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v125 = *MEMORY[0x1E69E9840];
  v122 = 0;
  v123 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v114 = 0;
  v115 = 0;
  v112 = 0;
  v113 = 0;
  memset(__c, 0, sizeof(__c));
  v10 = (*(a2 + 104))(a3, a4, 1, 0, &v123 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = (*(a2 + 184))(a3, a4, HIWORD(v123), 0, &v121);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (v121 != 1)
  {
    return v11;
  }

  v11 = (*(a2 + 176))(a3, a4, HIWORD(v123), 0, &v114, &v122);
  if ((v11 & 0x80000000) != 0 || v122 < 2u)
  {
    return v11;
  }

  v12 = *(a1 + 35);
  v10 = (*(v12 + 40))(*(a5 + 104), *(a5 + 112), &v116);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (strlen(a1 + 344) + v116 != *(a1 + 81))
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215449;
  }

  v11 = (*(a2 + 104))(a3, a4, 2, HIWORD(v123), &v123);
  if ((v11 & 0x80000000) == 0)
  {
    v13 = v123;
    if (v123)
    {
      __s = (a1 + 344);
      __s1 = 0;
      v14 = 0;
      v108 = 0;
      v100 = 0;
      v99 = 0;
      v107 = 0;
      v98 = v12;
      while (1)
      {
        v15 = (*(a2 + 168))(a3, a4, v13, 0, 1, &v117, &v122);
        if ((v15 & 0x80000000) != 0)
        {
LABEL_189:
          v11 = v15;
          goto LABEL_190;
        }

        if (v117 <= 0xA && ((1 << v117) & 0x610) != 0)
        {
          break;
        }

LABEL_28:
        v11 = (*(a2 + 120))(a3, a4, v123, &v123);
        if ((v11 & 0x80000000) == 0)
        {
          v13 = v123;
          if (v123)
          {
            continue;
          }
        }

        goto LABEL_190;
      }

      v15 = (*(*(a1 + 6) + 168))(a3, a4, v123, 1, 1, &v120, &v122);
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_189;
      }

      v15 = (*(*(a1 + 6) + 168))(a3, a4, v123, 2, 1, &v119, &v122);
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_189;
      }

      v17 = v119;
      v18 = v120;
      v19 = v119 - v120;
      if (v19 <= v107)
      {
        v21 = v120;
        v22 = v108;
      }

      else
      {
        v20 = heap_Realloc(*(*a1 + 8), v108, (v19 + 1));
        if (!v20)
        {
          goto LABEL_196;
        }

        v107 = v19;
        v21 = v120;
        v22 = v20;
      }

      strncpy(v22, (v114 + v21), v19);
      v108 = v22;
      if (v17 == v18)
      {
        *v22 = 0;
        goto LABEL_28;
      }

      if (strchr(__s, v22[(v19 - 1)]))
      {
        v23 = v19 - 1;
      }

      else
      {
        v23 = v19;
      }

      v22[v23] = 0;
      if (!v23)
      {
        goto LABEL_28;
      }

      v24 = strlen(v22);
      v25 = v24;
      __dst = v14;
      if (v24 > v100)
      {
        v26 = heap_Realloc(*(*a1 + 8), __s1, v24 + 1);
        if (v26)
        {
          __s1 = v26;
          v100 = v25;
LABEL_35:
          v101 = 0;
          v27 = 0;
          while (1)
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(&v108[v27], 0);
            if (utf8_ToLower(v108, v27, __src))
            {
              if (strlen(__src) <= NextUtf8Offset)
              {
                strcpy(&__s1[v101], __src);
                v101 = strlen(__s1);
              }

              else
              {
                v100 += 5;
                v29 = heap_Realloc(*(*a1 + 8), __s1, v100 + 1);
                if (!v29)
                {
LABEL_199:
                  v11 = 2314215434;
                  goto LABEL_200;
                }

                __s1 = v29;
              }
            }

            else
            {
              strncpy(&__s1[v101], &v108[v27], NextUtf8Offset);
              v101 += NextUtf8Offset;
            }

            v27 += NextUtf8Offset;
            if (v27 >= v25)
            {
              v30 = v101;
              v22 = v108;
              goto LABEL_45;
            }
          }
        }

LABEL_196:
        v11 = 2314215434;
LABEL_197:
        log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
LABEL_190:
        if (__s1)
        {
          heap_Free(*(*a1 + 8), __s1);
        }

        if (v108)
        {
          heap_Free(*(*a1 + 8), v108);
        }

        if (v14)
        {
          heap_Free(*(*a1 + 8), v14);
        }

        return v11;
      }

      if (v24)
      {
        goto LABEL_35;
      }

      v30 = 0;
LABEL_45:
      __s1[v30] = 0;
      if (IsModelHomograph(__s1, *(a5 + 136)))
      {
        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PRESENT: %s", __s1);
        v31 = v123;
        HIWORD(v122) = v123;
        if (v123)
        {
          v32 = 0;
          v33 = v119;
          v34 = v120;
          LOWORD(v35) = v123;
          while (1)
          {
            IOBTNToken = (*(a2 + 136))(a3, a4, v35, &v122 + 2);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              break;
            }

            if (!HIWORD(v122))
            {
              goto LABEL_67;
            }

            IOBTNToken = (*(a2 + 168))(a3, a4);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              break;
            }

            if (v117 > 0xA || ((1 << v117) & 0x610) == 0)
            {
              v35 = HIWORD(v122);
            }

            else
            {
              IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v122), 1, 1, &v118 + 2, &v122);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                break;
              }

              IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v122), 2, 1, &v118, &v122);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                break;
              }

              v35 = HIWORD(v122);
              if (HIWORD(v118) == v34 && v118 == v33)
              {
                v31 = HIWORD(v122);
              }

              else
              {
                if (++v32 == (*(a1 + 80) - 1) >> 1)
                {
                  HIWORD(v122) = 0;
                  v31 = v35;
                  goto LABEL_67;
                }

                v31 = HIWORD(v122);
                v34 = HIWORD(v118);
                v33 = v118;
              }
            }

            if (!v35)
            {
              goto LABEL_67;
            }
          }

LABEL_198:
          v11 = IOBTNToken;
LABEL_201:
          v14 = __dst;
          goto LABEL_190;
        }

LABEL_67:
        v38 = *a1;
        if (!(*(a1 + 81) * *(a1 + 80)))
        {
          log_OutPublic(*(v38 + 32), "FE_HMOGRPH", 37000, 0);
          v11 = 2314215449;
          goto LABEL_201;
        }

        v39 = 4 * (*(a1 + 81) * *(a1 + 80));
        v40 = heap_Alloc(*(v38 + 8), v39);
        v113 = v40;
        v14 = __dst;
        if (!v40)
        {
          goto LABEL_196;
        }

        v41 = v40;
        memset_pattern16(v40, &unk_1C37BD390, v39);
        HIWORD(v122) = v31;
        if (v31)
        {
          v95 = 0;
          v102 = 0;
          v42 = 0;
          v43 = 0;
          while (1)
          {
            IOBTNToken = (*(a2 + 168))(a3, a4, v31, 0, 1, &v117, &v122);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_198;
            }

            if (v117 <= 0xA && ((1 << v117) & 0x610) != 0)
            {
              IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v122), 1, 1, &v118 + 2, &v122);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_198;
              }

              IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v122), 2, 1, &v118, &v122);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_198;
              }

              v45 = HIWORD(v118);
              v46 = v118;
              if (HIWORD(v118) != v43 || v118 != v42)
              {
                v47 = strlen(__s);
                v48 = v47;
                if (v47)
                {
                  v49 = v116;
                  do
                  {
                    v41[v49++] = 0.0;
                    --v48;
                  }

                  while (v48);
                }

                v50 = v46 - v45;
                if (v50 <= v107)
                {
                  v52 = v108;
                }

                else
                {
                  v51 = heap_Realloc(*(*a1 + 8), v108, (v50 + 1));
                  if (!v51)
                  {
                    goto LABEL_199;
                  }

                  v107 = v50;
                  v45 = HIWORD(v118);
                  v52 = v51;
                }

                strncpy(v52, (v114 + v45), v50);
                v52[v50] = 0;
                v53 = strcmp(__s1, v52);
                v54 = v95;
                if (HIWORD(v122) == v123)
                {
                  v55 = v95;
                }

                else
                {
                  v55 = 1;
                }

                if (!v53)
                {
                  v54 = v55;
                }

                v95 = v54;
                v56 = strchr(__s, v52[(v50 - 1)]);
                if (v56)
                {
                  v57 = a1[v56 - __s + 354] - 48;
                  v41[v116 + v57] = 1.0;
                  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PUNC: %i", v57);
                  v52[(v50 - 1)] = 0;
                }

                v108 = v52;
                IOBTNToken = stat_hmogrph_getIOBTNToken(a1, a2, a3, a4, HIWORD(v123), HIWORD(v118), v118, __src);
                if ((IOBTNToken & 0x80000000) != 0)
                {
                  goto LABEL_198;
                }

                if (__src[0])
                {
                  v58 = __src;
                }

                else
                {
                  v58 = v52;
                }

                log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_WORD: %s", v58);
                v59 = (*(v98 + 56))(*(a5 + 104), *(a5 + 112), v58, v41);
                v11 = v59;
                if ((v59 & 0x1FFF) == 0x14)
                {
                  if (*(a5 + 176))
                  {
                    v60 = *v58;
                    if ((v60 - 65) <= 0x19)
                    {
                      *v58 = v60 | 0x20;
                      LOWORD(v11) = (*(v98 + 56))(*(a5 + 104), *(a5 + 112), v58, v41);
                      *v58 = v60;
                    }
                  }

                  if ((v11 & 0x1FFF) == 0x14)
                  {
                    IOBTNToken = (*(v98 + 56))(*(a5 + 104), *(a5 + 112), a5 + 164, v41);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_198;
                    }
                  }
                }

                else if ((v59 & 0x80000000) != 0)
                {
                  goto LABEL_201;
                }

                if (HIWORD(v122) == v123)
                {
                  v102 = *(a1 + 80) >> 1;
                }

                ++v102;
                v43 = HIWORD(v118);
                v42 = v118;
                v41 += *(a1 + 81);
              }
            }

            IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v122), &v122 + 2);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_198;
            }

            if (v102 == *(a1 + 80))
            {
              HIWORD(v122) = 0;
LABEL_115:
              v61 = v95 == 1;
              v14 = __dst;
              goto LABEL_116;
            }

            v31 = HIWORD(v122);
            if (!HIWORD(v122))
            {
              goto LABEL_115;
            }
          }
        }

        v61 = 0;
LABEL_116:
        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_FEATURE: BEGIN");
        if (*(a1 + 81) * *(a1 + 80))
        {
          v62 = 0;
          do
          {
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%f", v113[v62++]);
          }

          while (v62 < (*(a1 + 81) * *(a1 + 80)));
        }

        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_FEATURE: END");
        v63 = *(a5 + 40);
        *(*v63 + 49) = *(a5 + 128) / 100.0;
        v15 = fi_predict(v63, &v113, *(a1 + 80), &v112);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_189;
        }

        v11 = 2314215434;
        LODWORD(__s2) = 0;
        if ((fi_shape_get_size((**(a5 + 40) + 92), &__s2) & 0x80000000) != 0)
        {
          v11 = 2314215431;
          goto LABEL_200;
        }

        if (__s2 != 1)
        {
          v11 = 2314215449;
LABEL_200:
          log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
          goto LABEL_201;
        }

        v64 = strlen(__s1);
        v65 = v64 + 18;
        if (v64 + 18 > v99)
        {
          v66 = heap_Realloc(*(*a1 + 8), v14, (v64 + 19));
          if (!v66)
          {
            goto LABEL_197;
          }

          v99 = v65;
          v14 = v66;
        }

        strcpy(v14, "statwordhmogrph__");
        strcat(v14, __s1);
        *&__c[1] = -1;
        v15 = (*(*(a1 + 12) + 96))(*(a1 + 10), *(a1 + 11), "fecfg", v14, &__c[3], &__c[1], __c);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_189;
        }

        if (!*&__c[1])
        {
          log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
          v11 = 2314215444;
          goto LABEL_190;
        }

        v67 = **&__c[3];
        v68 = strchr(**&__c[3], __c[0]);
        if (v68)
        {
          *v68 = 0;
          v67 = **&__c[3];
        }

        v69 = strlen(v67);
        if (v99 < v69)
        {
          v70 = heap_Realloc(*(*a1 + 8), v14, v69 + 1);
          if (!v70)
          {
            goto LABEL_197;
          }

          v99 = v69;
          v67 = **&__c[3];
          v14 = v70;
        }

        strcpy(v14, v67);
        v22 = v108;
        __dst = v14;
        if (*v112)
        {
          HomographPhon = GetHomographPhon(*v112, v14);
          if (HomographPhon != 0 && !v61)
          {
            v89 = HomographPhon;
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PHON: %s", HomographPhon);
            v90 = v123;
            HIWORD(v122) = v123;
            if (v123)
            {
              v72 = 0;
              v104 = v120;
              v96 = v119;
              while (1)
              {
                IOBTNToken = (*(a2 + 168))(a3, a4, v90, 0, 1, &v117, &v122);
                if ((IOBTNToken & 0x80000000) != 0)
                {
                  goto LABEL_198;
                }

                if (v117 <= 0xA && ((1 << v117) & 0x610) != 0)
                {
                  IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v122), 1, 1, &v118 + 2, &v122);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_198;
                  }

                  IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v122), 2, 1, &v118, &v122);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_198;
                  }

                  if (HIWORD(v118) == v104 && v118 == v96)
                  {
                    IOBTNToken = (*(*(a1 + 6) + 176))(a3, a4, HIWORD(v122), 3, &v115, &v122);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_198;
                    }

                    v92 = strcmp(v115, v89);
                    v93 = HIWORD(v122);
                    IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v122), &v122 + 2);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_198;
                    }

                    if (!v92)
                    {
                      v72 = v93;
                    }

                    v90 = HIWORD(v122);
                    if (HIWORD(v122))
                    {
                      continue;
                    }
                  }
                }

                v22 = v108;
                goto LABEL_136;
              }
            }

            goto LABEL_185;
          }
        }

        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PHON: <>");
      }

      v72 = 0;
LABEL_136:
      v108 = v22;
      v73 = v123;
      HIWORD(v122) = v123;
      if (v123)
      {
        v74 = v120;
        v75 = v119;
        do
        {
          IOBTNToken = (*(a2 + 168))(a3, a4, v73, 0, 1, &v117, &v122);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_198;
          }

          if (v117 > 0xA || ((1 << v117) & 0x610) == 0)
          {
            goto LABEL_167;
          }

          IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v122), 1, 1, &v118 + 2, &v122);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_198;
          }

          IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v122), 2, 1, &v118, &v122);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_198;
          }

          if (HIWORD(v118) != v74 || v118 != v75)
          {
LABEL_167:
            HIWORD(v122) = 0;
            break;
          }

          v77 = HIWORD(v122);
          IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v122), &v122 + 2);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_198;
          }

          if (!v72 || v77 == v72)
          {
            LOWORD(v123) = v77;
            if (v77 == v72)
            {
              v109 = 0;
              __s2 = 0;
              IOBTNToken = (*(*(a1 + 6) + 176))(a3, a4, v72, 5, &__s2, &v122);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_198;
              }

              IOBTNToken = (*(*(a1 + 6) + 176))(a3, a4, v123, 14, &v109, &v122);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_198;
              }

              v78 = strlen(v109);
              v79 = strlen(__s2) + v78;
              v103 = v75;
              if (v79 <= v99)
              {
                v81 = __dst;
              }

              else
              {
                v80 = heap_Realloc(*(*a1 + 8), __dst, v79 + 1);
                if (!v80)
                {
                  goto LABEL_199;
                }

                v99 = v79;
                v81 = v80;
              }

              strcpy(v81, "POS:");
              v82 = strcat(v81, __s2);
              *&v81[strlen(v82)] = 59;
              v83 = v109;
              __dst = v81;
              if (!strstr(v109, v81))
              {
                v84 = strstr(v83, "POS");
                if (v84)
                {
                  v85 = v84;
                  v86 = strncpy(__dst, v83, v84 - v83);
                  __dst[v85 - v109] = 0;
                  strcpy(&__dst[strlen(v86)], "POS:");
                  strcat(__dst, __s2);
                  v87 = strchr(v85, 59);
                  if (v87)
                  {
                    strcat(__dst, v87);
                  }

                  v88 = strlen(__dst);
                  IOBTNToken = (*(*(a1 + 6) + 160))(a3, a4, v123, 14, (v88 + 1), __dst, &v121 + 2);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_198;
                  }
                }
              }

              v75 = v103;
            }
          }

          else
          {
            IOBTNToken = (*(a2 + 192))(a3, a4, v77);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_198;
            }
          }

          v73 = HIWORD(v122);
        }

        while (HIWORD(v122));
      }

LABEL_185:
      v14 = __dst;
      goto LABEL_28;
    }
  }

  return v11;
}