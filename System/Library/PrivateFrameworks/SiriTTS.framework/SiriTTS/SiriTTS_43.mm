BOOL __CGN_IsPunct(char *__s)
{
  result = 0;
  if (*__s)
  {
    if (*__s != 35)
    {
      v3 = strlen(__s);
      return utf8_BelongsToSet(9u, __s, 0, v3) == 0;
    }
  }

  return result;
}

uint64_t __CGN_InPunctList(uint64_t result, const char *a2, uint64_t a3, _DWORD *a4)
{
  if (*(result + 188))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = *(result + 208);
    while (1)
    {
      v11 = utf8_determineUTF8CharLength(*(v10 + v9));
      v10 = *(v7 + 208);
      result = strncmp(a2, (v10 + v9), v11);
      if (!result)
      {
        break;
      }

      v9 += v11;
      ++v8;
      if (*(v7 + 188) <= v9)
      {
        return result;
      }
    }

    *(a3 + 4 * v8) = 1065353216;
    *a4 = 0;
  }

  return result;
}

uint64_t __CGN_CharLookup(void *a1, uint64_t a2)
{
  v3 = (*(a1[16] + 56))(a1[19], a1[20], a2, a1[22]);
  if ((v3 & 0x1FFF) == 0x14 && (v3 = (*(a1[16] + 56))(a1[19], a1[20], "$MEANW2V$", a1[22]), (v3 & 0x1FFF) == 0x14))
  {
    v4 = "mean vector";
  }

  else
  {
    if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    v4 = "__pIWordLkp->pfWord2fVector";
  }

  return err_GenerateErrorInternalMsg(v4);
}

uint64_t TN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a1 = &__TN;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v7;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  return v6;
}

uint64_t TN_Des(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des(a1);
  }

  return result;
}

uint64_t TN_LoadModel(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (strcpy(v8, __s), v9 = strlen(__s), (v8 = heap_Alloc(*(*(a1 + 48) + 8), v9 + 8)) != 0))
  {
    v10 = v8;
    *v8 = 0x5F326E745F6E6ELL;
    v11 = v8 + 7;
    v12 = strlen(__s);
    v13 = v12;
    if (v12)
    {
      v14 = 0;
      do
      {
        utf8_ToLower(__s, v14, v11);
        v15 = *v11;
        if (v15 != 95)
        {
          v11 += utf8_determineUTF8CharLength(v15);
        }

        LODWORD(v14) = utf8_GetNextUtf8OffsetLimit(__s, v14, v13);
      }

      while (v14 < v13);
    }

    *v11 = 0;
    v16 = _Model_Load(a1, v10, a3);
    heap_Free(*(*(a1 + 48) + 8), v10);
    return v16;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(v8);
  }
}

uint64_t TN_Models(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v11 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  Allocator = ooc_utils_createAllocator(v9, a1, a2);
  if (!Allocator)
  {
    v6 = PNEW_Params_Con(v9, a1, a2, "fecfg", &v11);
    v7 = v11;
    if (!v6)
    {
      Allocator = Params_GetCfgParamValueListOfStrings(v11, "nn_tn2_models", 59, &v12);
      v7 = v11;
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    Allocator = v6;
    if (v11)
    {
LABEL_4:
      OOC_PlacementDeleteObject(v9, v7);
    }
  }

LABEL_5:
  kaldi::nnet1::Component::IsUpdatable(v9);
  return Allocator;
}

uint64_t TN_Predict(uint64_t a1, unsigned int a2, char *__s, unsigned int a4, unsigned int a5, void *a6, int *a7)
{
  v29 = 0;
  if (*(a1 + 166) <= a2)
  {
    v14 = "u16Pattern";
    goto LABEL_25;
  }

  if (!__s)
  {
    v14 = "szSentence";
    goto LABEL_25;
  }

  if (a5 > strlen(__s))
  {
    v14 = "u16To";
LABEL_25:
    ErrorInternalMsg = kaldi::OffsetFileInputImpl::MyType(v14);
    goto LABEL_26;
  }

  if (a4 >= a5)
  {
    v14 = "u16From";
    goto LABEL_25;
  }

  v32 = 0;
  v30 = 0;
  v31 = 0;
  v15 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 168) * *(a1 + 160));
  v29 = v15;
  if (!v15)
  {
    IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
    goto LABEL_35;
  }

  v16 = v15;
  if ((nn_tn_getCharContextString(*(a1 + 48), "NN_TN", __s, a4, a5, &v32, &v31 + 1, *(a1 + 162), 2, "*", *(a1 + 168), &v31, &v30 + 1, &v30) & 0x80000000) != 0)
  {
    v25 = "nn_tn_getCharContextString";
    goto LABEL_34;
  }

  bzero(v16, 4 * *(a1 + 168) * *(a1 + 160));
  if (!v31)
  {
LABEL_23:
    v21 = 0;
    goto LABEL_36;
  }

  v17 = 0;
  while (1)
  {
    v18 = *(v32 + 8 * v17);
    if (*v18 == 42 && !v18[1])
    {
      if (*(a1 + 160))
      {
        memset_pattern16(v16, &unk_1C37BD390, 4 * *(a1 + 160));
      }

      goto LABEL_22;
    }

    v19 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144));
    if ((v19 & 0x1FFF) == 0x14)
    {
      v19 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", *(a1 + 152));
      if ((v19 & 0x1FFF) == 0x14)
      {
        break;
      }
    }

    if (v19 < 0)
    {
      v25 = "__pIWordLkp->pfWord2fVector";
      goto LABEL_34;
    }

    memcpy(v16, *(a1 + 152), 4 * *(a1 + 164));
    v20 = *(a1 + 164);
    *&v16[4 * v20 + 4 * a2] = 1065353216;
    if (v17 >= HIWORD(v30) && v17 < v30)
    {
      *&v16[4 * *(a1 + 166) + 4 * v20] = 1065353216;
    }

LABEL_22:
    v16 += 4 * *(a1 + 160);
    if (++v17 >= v31)
    {
      goto LABEL_23;
    }
  }

  v25 = "mean vector";
LABEL_34:
  IsUpdatable = err_GenerateErrorInternalMsg(v25);
LABEL_35:
  v21 = IsUpdatable;
LABEL_36:
  v26 = v32;
  if (v32)
  {
    if (HIWORD(v31))
    {
      v27 = 0;
      do
      {
        heap_Free(*(*(a1 + 48) + 8), *(v32 + 8 * v27++));
      }

      while (v27 < HIWORD(v31));
      v26 = v32;
    }

    heap_Free(*(*(a1 + 48) + 8), v26);
  }

  if (!v21)
  {
    if ((fi_predict(*(a1 + 104), &v29, *(a1 + 168), a6) & 0x80000000) != 0)
    {
      v28 = "fi_predict";
    }

    else
    {
      if ((fi_shape_get_size((**(a1 + 104) + 92), a7) & 0x80000000) == 0)
      {
        v21 = 0;
        goto LABEL_27;
      }

      v28 = "fi_shape_get_size";
    }

    ErrorInternalMsg = err_GenerateErrorInternalMsg(v28);
LABEL_26:
    v21 = ErrorInternalMsg;
  }

LABEL_27:
  if (v29)
  {
    heap_Free(*(*(a1 + 48) + 8), v29);
  }

  return v21;
}

uint64_t _TN_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v8 = "nn_word_lkp_GetInterface";
LABEL_11:

    return err_GenerateErrorInternalMsg(v8);
  }

  v2 = *(*(a1 + 128) + 16);
  NullHandle = safeh_GetNullHandle();
  if ((v2(NullHandle) & 0x80000000) != 0)
  {
    v8 = "__pIWordLkp->pfObjOpen";
    goto LABEL_11;
  }

  v10 = 0;
  if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v10) & 0x80000000) != 0)
  {
    v9 = "__pIWordLkp->pfGetVectorLength";
  }

  else
  {
    v4 = *(a1 + 164);
    if (v10 == v4)
    {
      v5 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v4);
      *(a1 + 152) = v5;
      if (!v5)
      {
        return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
      }

      if (*(a1 + 112) == *(a1 + 168))
      {
        v6 = *(a1 + 164) + *(a1 + 166) + 1;
        *(a1 + 160) = v6;
        if (*(a1 + 116) == v6)
        {
          return 0;
        }

        v9 = "inshape dimension 2";
      }

      else
      {
        v9 = "inshape dimension 1";
      }
    }

    else
    {
      v9 = "char embedding dimension";
    }
  }

  return err_GenerateErrorInternalMsg(v9);
}

uint64_t _TN_PreFIDeinit(uint64_t a1)
{
  if (*(a1 + 128))
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 136), *(a1 + 144), NullHandle, v3))
    {
      (*(*(a1 + 128) + 24))(*(a1 + 136), *(a1 + 144));
      *(a1 + 136) = safeh_GetNullHandle();
      *(a1 + 144) = v4;
    }

    *(a1 + 128) = 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    heap_Free(*(*(a1 + 48) + 8), v5);
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return 0;
}

uint64_t _TN_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  *a2 = 0;
  v4 = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v9);
  if (v4 || (v4 = __TN_FullParamName(a1, "charContextWindow", &v8), v4) || (v4 = Params_GetCfgParamValueInteger(v9, v8, 40, &v7), v4) || (*(a1 + 162) = v7, v4 = __TN_FullParamName(a1, "charEmbeddingDimension", &v8), v4) || (v4 = Params_GetCfgParamValueInteger(v9, v8, 0, &v7), v4) || (*(a1 + 164) = v7, v4 = __TN_FullParamName(a1, "numPatterns", &v8), v4) || (v4 = Params_GetCfgParamValueInteger(v9, v8, 1, &v7), v4) || (*(a1 + 166) = v7, v4 = __TN_FullParamName(a1, "max_x_len", &v8), v4))
  {
    CfgParamValueInteger = v4;
  }

  else
  {
    CfgParamValueInteger = Params_GetCfgParamValueInteger(v9, v8, 0, &v7);
    if (!CfgParamValueInteger)
    {
      *(a1 + 168) = v7;
      *a2 = 1;
    }
  }

  if (v9)
  {
    OOC_PlacementDeleteObject(a1 + 56, v9);
  }

  if (v8)
  {
    heap_Free(*(*(a1 + 48) + 8), v8);
  }

  return CfgParamValueInteger;
}

uint64_t __TN_FullParamName(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  v8 = strlen(__s);
  v9 = strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    *v10 = 0x5F326E745F6E6ELL;
    v12 = strcat(v10, *(a1 + 120));
    *&v11[strlen(v12)] = 95;
    strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
  }
}

uint64_t PNEW_TN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 176, &v14);
  result = v14;
  if (!v14)
  {
    result = TN_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t CLM_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a1 = &__CLM;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v7;
    *(a1 + 152) = safeh_GetNullHandle();
    *(a1 + 160) = v8;
    *(a1 + 168) = safeh_GetNullHandle();
    *(a1 + 176) = v9;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 214) = 0;
  }

  return v6;
}

uint64_t CLM_Des(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des(a1);
  }

  return result;
}

uint64_t CLM_LoadModel(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (strcpy(v8, __s), v9 = strlen(__s), (v8 = heap_Alloc(*(*(a1 + 48) + 8), v9 + 14)) != 0))
  {
    v10 = v8;
    strcpy(v8, "clmnn:nn_clm_");
    strcat(v8, __s);
    v11 = _Model_Load(a1, v10, a3);
    heap_Free(*(*(a1 + 48) + 8), v10);
    return v11;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(v8);
  }
}

uint64_t CLM_Models(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v11 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  Allocator = ooc_utils_createAllocator(v9, a1, a2);
  if (!Allocator)
  {
    v6 = PNEW_Params_Con(v9, a1, a2, "clmnncfg", &v11);
    v7 = v11;
    if (!v6)
    {
      Allocator = Params_GetCfgParamValueListOfStrings(v11, "nn_clm_models", 59, &v12);
      v7 = v11;
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    Allocator = v6;
    if (v11)
    {
LABEL_4:
      OOC_PlacementDeleteObject(v9, v7);
    }
  }

LABEL_5:
  kaldi::nnet1::Component::IsUpdatable(v9);
  return Allocator;
}

uint64_t CLM_Predict(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v14 = heap_Alloc(*(*(a1 + 48) + 8), 12 * *(a1 + 220) * (2 * *(a1 + 218) + a5));
  v36 = v14;
  if (v14)
  {
    v15 = v14;
    v35 = a7;
    v16 = a5;
    v17 = 3 * *(a1 + 218) * *(a1 + 220);
    if (v17)
    {
      v18 = (3 * *(a1 + 218) * *(a1 + 220));
      memset_pattern16(v14, &unk_1C37BD390, 4 * v18);
    }

    else
    {
      v18 = 0;
    }

    v34 = v18;
    v20 = &v15[4 * v18];
    if (a5)
    {
      while (1)
      {
        v21 = __CLM_FeaturesLookups(a1, *(a1 + 136), *(a1 + 144), *a2, v20);
        if (v21)
        {
          break;
        }

        v22 = &v20[4 * *(a1 + 220)];
        v21 = __CLM_FeaturesLookups(a1, *(a1 + 152), *(a1 + 160), *a3, v22);
        if (v21)
        {
          break;
        }

        v23 = &v22[4 * *(a1 + 220)];
        v21 = __CLM_FeaturesLookups(a1, *(a1 + 168), *(a1 + 176), *a4, v23);
        if (v21)
        {
          break;
        }

        v20 = &v23[4 * *(a1 + 220)];
        ++a4;
        ++a3;
        ++a2;
        if (!--v16)
        {
          goto LABEL_12;
        }
      }

      IsUpdatable = v21;
      goto LABEL_39;
    }

LABEL_12:
    v24 = v17 == 0;
    a7 = v35;
    if (!v24)
    {
      memset_pattern16(v20, &unk_1C37BD390, 4 * v34);
    }
  }

  else
  {
    IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
    if (IsUpdatable)
    {
      return IsUpdatable;
    }
  }

  if (a5)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = v36;
    while (1)
    {
      v38 = 0;
      v39 = 0;
      v37 = 0;
      if (!v28)
      {
        break;
      }

      v29 = 4 * ((*(a1 + 216) * *(a1 + 220)) & 0x3FFF);
      v30 = heap_Alloc(*(*(a1 + 48) + 8), v29);
      v39 = v30;
      if (v30)
      {
        memcpy(v30, v28, v29);
        if ((fi_predict(*(a1 + 104), &v39, *(a1 + 216), &v38) & 0x80000000) != 0)
        {
          v32 = "fi_predict";
        }

        else
        {
          if ((fi_shape_get_size((**(a1 + 104) + 92), &v37) & 0x80000000) == 0)
          {
            if (v37)
            {
              v31 = 0;
              v26 = 0;
              v27 = 0.0;
              do
              {
                if (v27 < *(v38 + 4 * v31))
                {
                  v27 = *(v38 + 4 * v31);
                  v26 = v31;
                }

                ++v31;
              }

              while (v37 > v31);
              IsUpdatable = 0;
            }

            else
            {
              v26 = 0;
              IsUpdatable = 0;
              v27 = 0.0;
            }

            goto LABEL_31;
          }

          v32 = "fi_shape_get_size";
        }

LABEL_30:
        IsUpdatable = err_GenerateErrorInternalMsg(v32);
LABEL_31:
        if (v39)
        {
          heap_Free(*(*(a1 + 48) + 8), v39);
        }

        goto LABEL_33;
      }

      IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
LABEL_33:
      if (IsUpdatable)
      {
        goto LABEL_39;
      }

      *(a7 + 4 * v25) = v27;
      *(a6 + 4 * v25) = v26;
      v28 += 12 * *(a1 + 220);
      if (a5 <= ++v25)
      {
        goto LABEL_37;
      }
    }

    v32 = "pElemFeatures == NULL";
    goto LABEL_30;
  }

LABEL_37:
  IsUpdatable = 0;
LABEL_39:
  if (v36)
  {
    heap_Free(*(*(a1 + 48) + 8), v36);
  }

  return IsUpdatable;
}

uint64_t _CLM_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v16 = "nn_word_lkp_GetInterface";
LABEL_23:

    return err_GenerateErrorInternalMsg(v16);
  }

  v2 = strlen(*(a1 + 120));
  v3 = heap_Alloc(*(*(a1 + 48) + 8), v2 + 16);
  *(a1 + 184) = v3;
  if (v3)
  {
    strcpy(v3, "clmorthforeign_");
    strcat(*(a1 + 184), *(a1 + 120));
    v4 = *(*(a1 + 128) + 16);
    NullHandle = safeh_GetNullHandle();
    if ((v4(NullHandle) & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    v6 = strlen(*(a1 + 120));
    v3 = heap_Alloc(*(*(a1 + 48) + 8), v6 + 16);
    *(a1 + 192) = v3;
    if (!v3)
    {
      goto LABEL_19;
    }

    strcpy(v3, "clmphonforeign_");
    strcat(*(a1 + 192), *(a1 + 120));
    v7 = *(*(a1 + 128) + 16);
    v8 = safeh_GetNullHandle();
    if ((v7(v8) & 0x80000000) != 0)
    {
LABEL_22:
      v16 = "__pIWordLkp->pfObjOpen";
      goto LABEL_23;
    }

    v9 = strlen(*(a1 + 120));
    v3 = heap_Alloc(*(*(a1 + 48) + 8), v9 + 13);
    *(a1 + 200) = v3;
    if (v3)
    {
      strcpy(v3, "clmphonmain_");
      strcat(*(a1 + 200), *(a1 + 120));
      v10 = *(*(a1 + 128) + 16);
      v11 = safeh_GetNullHandle();
      if ((v10(v11) & 0x80000000) == 0)
      {
        v18 = 0;
        if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v18) & 0x80000000) == 0)
        {
          if (v18 != *(a1 + 220))
          {
            v17 = "orth embedding dimension";
            return err_GenerateErrorInternalMsg(v17);
          }

          if (((*(*(a1 + 128) + 40))(*(a1 + 152), *(a1 + 160), &v18) & 0x80000000) == 0)
          {
            if (v18 != *(a1 + 220))
            {
              v17 = "phon embedding dimension";
              return err_GenerateErrorInternalMsg(v17);
            }

            if (((*(*(a1 + 128) + 40))(*(a1 + 168), *(a1 + 176), &v18) & 0x80000000) == 0)
            {
              v12 = *(a1 + 220);
              if (v18 == v12)
              {
                v13 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v12);
                *(a1 + 208) = v13;
                if (!v13)
                {
                  return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
                }

                v14 = 6 * *(a1 + 218) + 3;
                *(a1 + 216) = v14;
                if (*(a1 + 112) == v14)
                {
                  if (*(a1 + 116) == *(a1 + 220))
                  {
                    return 0;
                  }

                  v17 = "inshape dimension 2";
                }

                else
                {
                  v17 = "inshape dimension 1";
                }
              }

              else
              {
                v17 = "main embedding dimension";
              }

              return err_GenerateErrorInternalMsg(v17);
            }
          }
        }

        v17 = "__pIWordLkp->pfGetVectorLength";
        return err_GenerateErrorInternalMsg(v17);
      }

      goto LABEL_22;
    }
  }

LABEL_19:

  return kaldi::nnet1::UpdatableComponent::IsUpdatable(v3);
}

uint64_t _CLM_PreFIDeinit(uint64_t a1)
{
  if (*(a1 + 128))
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 136), *(a1 + 144), NullHandle, v3))
    {
      (*(*(a1 + 128) + 24))(*(a1 + 136), *(a1 + 144));
      *(a1 + 136) = safeh_GetNullHandle();
      *(a1 + 144) = v4;
    }

    v5 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 152), *(a1 + 160), v5, v6))
    {
      (*(*(a1 + 128) + 24))(*(a1 + 152), *(a1 + 160));
      *(a1 + 152) = safeh_GetNullHandle();
      *(a1 + 160) = v7;
    }

    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 168), *(a1 + 176), v8, v9))
    {
      (*(*(a1 + 128) + 24))(*(a1 + 168), *(a1 + 176));
      *(a1 + 168) = safeh_GetNullHandle();
      *(a1 + 176) = v10;
    }

    *(a1 + 128) = 0;
  }

  v11 = *(a1 + 184);
  if (v11)
  {
    heap_Free(*(*(a1 + 48) + 8), v11);
  }

  *(a1 + 184) = 0;
  v12 = *(a1 + 192);
  if (v12)
  {
    heap_Free(*(*(a1 + 48) + 8), v12);
  }

  *(a1 + 192) = 0;
  v13 = *(a1 + 200);
  if (v13)
  {
    heap_Free(*(*(a1 + 48) + 8), v13);
  }

  *(a1 + 200) = 0;
  v14 = *(a1 + 208);
  if (v14)
  {
    heap_Free(*(*(a1 + 48) + 8), v14);
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return 0;
}

uint64_t _CLM_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  *a2 = 0;
  v4 = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "clmnncfg", &v9);
  if (v4 || (v4 = __CLM_FullParamName(a1, "charContextWindow", &v8), v4) || (v4 = Params_GetCfgParamValueInteger(v9, v8, 3, &v7), v4) || (*(a1 + 218) = v7, v4 = __CLM_FullParamName(a1, "embxEmbeddingDimension", &v8), v4))
  {
    CfgParamValueInteger = v4;
  }

  else
  {
    CfgParamValueInteger = Params_GetCfgParamValueInteger(v9, v8, 0, &v7);
    if (!CfgParamValueInteger)
    {
      *(a1 + 220) = v7;
      *a2 = 1;
    }
  }

  if (v9)
  {
    OOC_PlacementDeleteObject(a1 + 56, v9);
  }

  if (v8)
  {
    heap_Free(*(*(a1 + 48) + 8), v8);
  }

  return CfgParamValueInteger;
}

uint64_t __CLM_FullParamName(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  v8 = strlen(__s);
  v9 = strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    *v10 = 0x5F6D6C635F6E6ELL;
    v12 = strcat(v10, *(a1 + 120));
    *&v11[strlen(v12)] = 95;
    strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
  }
}

uint64_t PNEW_CLM_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 224, &v14);
  result = v14;
  if (!v14)
  {
    result = CLM_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t __CLM_FeaturesLookups(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *__b)
{
  if (*a4 == 35 && !a4[1])
  {
    if (*(a1 + 220))
    {
      memset_pattern16(__b, &unk_1C37BD3F0, 4 * *(a1 + 220));
    }

    return 0;
  }

  v9 = (*(*(a1 + 128) + 56))(a2, a3, a4, *(a1 + 208));
  if ((v9 & 0x1FFF) != 0x14 || (v9 = (*(*(a1 + 128) + 56))(a2, a3, "$MEANW2V$", *(a1 + 208)), (v9 & 0x1FFF) != 0x14))
  {
    if (v9 < 0)
    {
      v10 = "__pIWordLkp->pfWord2fVector";
      goto LABEL_9;
    }

    memcpy(__b, *(a1 + 208), 4 * *(a1 + 220));
    return 0;
  }

  v10 = "mean vector";
LABEL_9:

  return err_GenerateErrorInternalMsg(v10);
}

uint64_t fe_nn_g2p_component_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2707431425;
  }

  result = 0;
  *a2 = &IFeNng2p;
  return result;
}

uint64_t fe_nng2p_ClassOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2707431431;
  }

  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t fe_nng2p_ObjOpen(_WORD *a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = 0;
  v5 = 2707431431;
  if (a5)
  {
    inited = InitRsrcFunction(a1, a2, &v15);
    if ((inited & 0x80000000) == 0)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      inited = InitRsrcFunction(a3, a4, &v14);
      if ((inited & 0x80000000) == 0)
      {
        v10 = heap_Calloc(*(v14 + 8), 1, 64);
        if (!v10)
        {
          log_OutPublic(*(v14 + 32), "FE_NN_G2P", 78000, 0);
          return 2707431434;
        }

        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        Allocator = ooc_utils_createAllocator((v10 + 2), a3, a4);
        inited = LH_ERROR_to_VERROR(Allocator);
        if ((inited & 0x80000000) == 0)
        {
          *a5 = v11;
          *(a5 + 8) = 1069;
          return fe_nng2p_ObjReopen(v11, *(a5 + 8));
        }
      }
    }

    return inited;
  }

  return v5;
}

uint64_t fe_nng2p_ObjClose(uint64_t a1, int a2)
{
  v6 = 0;
  v3 = 2707431432;
  if ((safeh_HandleCheck(a1, a2, 1069, 64) & 0x80000000) == 0 && a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v6);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v3 = LH_ERROR_to_VERROR(0);
      if ((v3 & 0x80000000) == 0)
      {
        luavmldoutil_destroy_lua_vm(a1 + 16, (a1 + 56));
        kaldi::nnet1::Component::IsUpdatable((a1 + 16));
        heap_Free(*(v6 + 8), a1);
      }
    }
  }

  return v3;
}

uint64_t fe_nng2p_ObjReopen(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1069, 64) & 0x80000000) != 0 || !a1)
  {
    return 2707431432;
  }

  v3 = *a1;
  v4 = a1[1];

  return luavmldoutil_initialize_lua_vm(v3, v4, (a1 + 2), "runG2P", hlp_lua_log_callback, a1 + 7, 0);
}

uint64_t fe_nng2p_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  if ((safeh_HandleCheck(a1, a2, 1069, 64) & 0x80000000) != 0)
  {
    return 2707431432;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v16);
  if ((inited & 0x80000000) == 0)
  {
    *a5 = 1;
    log_OutText(*(v16 + 32), "FE_NN_G2P", 4, 0, "Entering fe_nng2p_Process");
    if (*(a1 + 56))
    {
      Interface = lingdb_GetInterface(1u, &v15);
      if ((Interface & 0x80000000) != 0)
      {
        return Interface;
      }

      inited = LingDBIsValid(v15, a3, a4, &v17);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      if (v17 == 1)
      {
        inited = LingDBHasSentence(v15, a3, a4, &v17 + 1);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

        if (HIDWORD(v17) == 1)
        {
          v11 = auxTouchLingdbInstance(v15, a3, a4);
          if ((v11 & 0x80000000) != 0)
          {
LABEL_15:
            inited = v11;
            goto LABEL_21;
          }

          inited = initLDO(a1 + 16, &v14);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_21;
          }

          if (v14)
          {
            v11 = importFromLingDBWordRecord(v16, v15, a3, a4, &v14, 0);
            if ((v11 & 0x80000000) == 0)
            {
              v12 = LuaVMLDO_RunFunction(*(a1 + 56), "runG2P", v14);
              v11 = LH_ERROR_to_VERROR(v12);
              if ((v11 & 0x80000000) == 0)
              {
                v11 = exportToLingDBWordRecord(v16, v15, a3, a4, a1 + 16, v14, 0);
              }
            }

            goto LABEL_15;
          }

          log_OutText(*(v16 + 32), "FE_NN_G2P", 5, 0, "Init LDO is NULL, returning", 0);
        }

        else
        {
          log_OutText(*(v16 + 32), "FE_NN_G2P", 5, 0, "LingDB has no sentence, returning", 0);
        }
      }

      else
      {
        log_OutText(*(v16 + 32), "FE_NN_G2P", 5, 0, "Empty or Invalid LingDB, returning", 0);
      }
    }

    else
    {
      log_OutText(*(v16 + 32), "FE_NN_G2P", 5, 0, "No NNG2P Lua script available, returning", 0);
    }

LABEL_21:
    if (v14)
    {
      deinitLDO(a1 + 16, v14);
    }
  }

  return inited;
}

uint64_t fe_nng2p_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 1069, 64);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2707431432;
  }
}

uint64_t auxTouchLingdbInstance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v7 + 2);
  if ((result & 0x80000000) == 0)
  {
    return (*(a1 + 160))(a2, a3, HIWORD(v7), 2, 1, "", &v7);
  }

  return result;
}

uint64_t fe_clm_component_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2346721281;
  }

  result = 0;
  *a2 = &IFeClm;
  return result;
}

uint64_t fe_clm_ClassOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2346721287;
  }

  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t fe_clm_ObjOpen(_WORD *a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  v5 = 2346721287;
  v16 = 0;
  if (a5)
  {
    inited = InitRsrcFunction(a1, a2, &v18);
    if ((inited & 0x80000000) == 0)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      inited = InitRsrcFunction(a3, a4, &v17);
      if ((inited & 0x80000000) == 0)
      {
        v10 = heap_Calloc(*(v17 + 8), 1, 72);
        if (!v10)
        {
          log_OutPublic(*(v17 + 32), "FE_CLM", 78000, 0);
          return 2346721290;
        }

        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        if ((paramc_ParamGetStr(*(v17 + 40), "shortfragmentforceclm", &v16) & 0x80000000) != 0 || !v16 || (v12 = *(v17 + 40), v15[0] = v11, v15[1] = fe_clm_CheckParamChange, v15[2] = fe_clm_LearnParamChange, inited = paramc_ListenerAdd(v12, "shortfragmentforceclm", v15), (inited & 0x80000000) == 0))
        {
          Allocator = ooc_utils_createAllocator((v11 + 2), *v11, v11[1]);
          inited = LH_ERROR_to_VERROR(Allocator);
          if ((inited & 0x80000000) == 0)
          {
            *a5 = v11;
            *(a5 + 8) = 381;
            return fe_clm_ObjReopen(v11, *(a5 + 8));
          }
        }
      }
    }

    return inited;
  }

  return v5;
}

uint64_t fe_clm_ObjClose(uint64_t a1, int a2)
{
  v9 = 0;
  v8 = 0;
  inited = 2346721288;
  if ((safeh_HandleCheck(a1, a2, 381, 72) & 0x80000000) == 0)
  {
    if (a1)
    {
      inited = InitRsrcFunction(*a1, *(a1 + 8), &v9);
      if ((inited & 0x80000000) == 0)
      {
        if ((paramc_ParamGetStr(*(v9 + 40), "shortfragmentforceclm", &v8) & 0x80000000) == 0 && v8)
        {
          v4 = *(v9 + 40);
          *&v6 = a1;
          *(&v6 + 1) = fe_clm_CheckParamChange;
          v7 = fe_clm_LearnParamChange;
          paramc_ListenerRemove(v4, "shortfragmentforceclm", &v6);
        }

        luavmldoutil_destroy_lua_vm(a1 + 16, (a1 + 56));
        kaldi::nnet1::Component::IsUpdatable((a1 + 16));
        heap_Free(*(v9 + 8), a1);
      }
    }
  }

  return inited;
}

uint64_t fe_clm_ObjReopen(uint64_t *a1, int a2)
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v3 = 2346721288;
  if ((safeh_HandleCheck(a1, a2, 381, 72) & 0x80000000) != 0 || !a1)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, a1[1], &v9);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  luavmldoutil_destroy_lua_vm((a1 + 2), a1 + 7);
  Object = paramc_ParamGet(v9[5], "langcode", &v10, 0);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  Object = objc_GetObject(v9[6], "CLMOBJECT", &v8);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  v3 = (*(v8[1] + 96))(v8[2], v8[3], a1 + 8);
  if ((v3 & 0x80000000) != 0)
  {
LABEL_10:
    log_OutText(v9[4], "FE_CLM", 5, 0, "CLM Lua script for main language [%s] is not available, no CLM to main language in fe/fe_clm component (CLM done in upstream components).", v10);
    goto LABEL_16;
  }

  v6 = *(a1 + 16);
  switch(v6)
  {
    case 2:
      log_OutText(v9[4], "FE_CLM", 5, 0, "CLM to main language [%s]  will be done in  fe/fe_clm component (after fe_global).");
      break;
    case 1:
      log_OutText(v9[4], "FE_CLM", 5, 0, "CLM to main language [%s]  will be done in  fe/fe_clm component (before fe_global).");
      break;
    case 0:
      goto LABEL_10;
  }

  Object = luavmldoutil_initialize_lua_vm(*a1, a1[1], (a1 + 2), "runCLM", hlp_lua_log_callback_0, a1 + 7, "clm");
  if ((Object & 0x80000000) == 0)
  {
LABEL_15:
    v3 = Object;
  }

  else
  {
    log_OutText(v9[4], "FE_CLM", 5, 0, "CLM Lua function [%s] is not available, no CLM to main language in fe/fe_clm component (CLM done in upstream components).", "runCLM");
    v3 = 0;
  }

LABEL_16:
  if (v8)
  {
    objc_ReleaseObject(v9[6], "CLMOBJECT");
  }

  return v3;
}

uint64_t fe_clm_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  inited = 2346721288;
  if ((safeh_HandleCheck(a1, a2, 381, 72) & 0x80000000) != 0)
  {
    return inited;
  }

  if (!a1)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v19);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a5 = 1;
  log_OutText(*(v19 + 32), "FE_CLM", 4, 0, "Entering fe_clm_Process");
  if (*(a1 + 56))
  {
    Interface = lingdb_GetInterface(1u, &v17);
    if ((Interface & 0x80000000) != 0)
    {
      return Interface;
    }

    inited = LingDBIsValid(v17, a3, a4, &v16);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if (v16 == 1)
    {
      inited = LingDBHasSentence(v17, a3, a4, &v16 + 1);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      if (HIDWORD(v16) == 1)
      {
        v11 = auxTouchLingdbInstance(v17, a3, a4);
        if ((v11 & 0x80000000) != 0)
        {
LABEL_16:
          inited = v11;
          goto LABEL_21;
        }

        inited = initLDO(a1 + 16, &v18);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

        if (v18)
        {
          v12 = *(a1 + 64);
          v13 = v12 != 1;
          v11 = importFromLingDBWordRecord(v19, v17, a3, a4, &v18, v12 != 1);
          if ((v11 & 0x80000000) == 0)
          {
            v14 = LuaVMLDO_RunFunction(*(a1 + 56), "runCLM", v18);
            v11 = LH_ERROR_to_VERROR(v14);
            if ((v11 & 0x80000000) == 0)
            {
              v11 = exportToLingDBWordRecord(v19, v17, a3, a4, a1 + 16, v18, v13);
            }
          }

          goto LABEL_16;
        }

        log_OutText(*(v19 + 32), "FE_CLM", 5, 0, "Init LDO is NULL, returning", 0);
      }

      else
      {
        log_OutText(*(v19 + 32), "FE_CLM", 5, 0, "LingDB has no sentence, returning", 0);
      }
    }

    else
    {
      log_OutText(*(v19 + 32), "FE_CLM", 5, 0, "Empty or Invalid LingDB, returning", 0);
    }
  }

  else
  {
    log_OutText(*(v19 + 32), "FE_CLM", 5, 0, "No CLM Lua script available, returning", 0);
  }

LABEL_21:
  if (v18)
  {
    deinitLDO(a1 + 16, v18);
  }

  return inited;
}

uint64_t fe_clm_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 381, 72);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2346721288;
  }
}

uint64_t fe_clm_CheckParamChange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  v17 = 0;
  if (a1 && (v7 = strcmp(__s1, "shortfragmentforceclm"), a3) && !v7 && *a3)
  {
    result = InitRsrcFunction(*a1, *(a1 + 8), &v17);
    if ((result & 0x80000000) == 0)
    {
      if (LH_strnicmp(a3, "phrase:", 7uLL))
      {
        v9 = a3 + 1;
        v10 = 1;
        while (1)
        {
          v11 = *(v9 - 1);
          if (!*(v9 - 1))
          {
            goto LABEL_26;
          }

          if (v11 == 58)
          {
            break;
          }

          if ((v11 - 58) < 0xFFFFFFF6)
          {
            goto LABEL_26;
          }

          if (v10)
          {
            v12 = v11 == 48;
          }

          else
          {
            v12 = 0;
          }

          v10 = v12;
          ++v9;
        }

        if (v10)
        {
LABEL_26:
          *a4 = 0;
          goto LABEL_27;
        }

        *a4 = 1;
      }

      else
      {
        *a4 = 1;
        v9 = a3 + 7;
      }

      v15 = *v9;
      v13 = (v9 + 1);
      v14 = v15;
      while (v14 > 89 || v14 == 44)
      {
        v16 = *v13++;
        v14 = v16;
        if (!v16)
        {
          goto LABEL_23;
        }
      }

      *a4 = v14 == 0;
      if (v14)
      {
LABEL_27:
        log_OutText(*(v17 + 32), "FE_CLM", 5, 0, "%s=%s : IGNORED (invalid)", "shortfragmentforceclm", a3);
      }

      return 0;
    }
  }

  else
  {
LABEL_23:
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t com_depes_InitLayers(uint64_t a1, uint64_t a2)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  return 0;
}

uint64_t com_depes_FreeLayers(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a2 + 16;
  v5 = (a2 + 112);
  do
  {
    v6 = *(v4 + v3);
    if (v6)
    {
      heap_Free(*(a1 + 8), v6);
      *(v4 + v3) = 0;
    }

    *(v5 - 16) = 0;
    *(v5 - 8) = 0;
    *v5++ = 0;
    v3 += 8;
  }

  while (v3 != 64);
  return 0;
}

uint64_t com_depes_PrepareLayersForLen(uint64_t *a1, int a2)
{
  if (a2 == 0xFFFF)
  {
    v20 = 2305826825;
    v16 = *a1;
    goto LABEL_28;
  }

  v4 = a1 + 10;
  v3 = *(a1 + 40);
  v5 = *(a1 + 5);
  if (v5 >= 2)
  {
    v6 = a1 + 41;
    v7 = v5 - 1;
    do
    {
      v9 = *v6++;
      v8 = v9;
      if (v9 >= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = v8;
      }

      --v7;
    }

    while (v7);
  }

  v10 = a2 + 1;
  if (v3 >= (a2 + 1))
  {
    return 0;
  }

  v11 = v3 ? v3 : 200;
  do
  {
    v12 = v11;
    v13 = v11;
    if (v11 >= v10)
    {
      break;
    }

    v11 *= 2;
  }

  while ((v12 & 0x8000) == 0);
  v14 = v13 < v10 ? -1 : v12;
  if (!*(a1 + 5))
  {
    return 0;
  }

  v15 = 0;
  v16 = *a1;
  while (*(v4 + v15) >= v14)
  {
LABEL_25:
    if (++v15 >= v5)
    {
      return 0;
    }
  }

  v17 = *(v16 + 8);
  v18 = &v4[v15];
  if (*(v4 + v15))
  {
    v19 = heap_Realloc(v17, *(v18 - 8), v14);
    if (!v19)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v19 = heap_Alloc(v17, v14);
  if (v19)
  {
LABEL_24:
    *(v18 - 8) = v19;
    *(v4 + v15) = v14;
    LODWORD(v5) = *(a1 + 5);
    goto LABEL_25;
  }

LABEL_30:
  v20 = 2305826826;
LABEL_28:
  log_OutPublic(*(v16 + 32), "COM_DEPES", 38000, 0);
  return v20;
}

uint64_t com_depes_StartWritingToLayers(uint64_t a1)
{
  result = com_depes_PrepareLayersForLen(a1, 1);
  if ((result & 0x80000000) == 0 && *(a1 + 10))
  {
    v3 = 0;
    do
    {
      **(a1 + 16 + 8 * v3++) = 0;
    }

    while (v3 < *(a1 + 10));
  }

  return result;
}

uint64_t com_depes_AddToLayerGen(uint64_t *a1, unsigned int a2, char *__s, int a4, int a5)
{
  v6 = __s;
  v9 = a4 & ~(a4 >> 31);
  v10 = strlen(__s);
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  v13 = Utf8_LengthInUtf8chars(v6, v11);
  v14 = 0;
  if (v12)
  {
    v15 = v12;
    v16 = v6;
    do
    {
      v17 = *v16++;
      if (v17 != 126 || a5 == 0)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      v14 += v19;
      --v15;
    }

    while (v15);
  }

  v20 = a1 + 12;
  result = com_depes_PrepareLayersForLen(a1, (*(a1 + a2 + 48) + v14));
  if ((result & 0x80000000) == 0)
  {
    v22 = (a1[a2 + 2] + *(v20 + a2));
    for (i = 0; v12; --v12)
    {
      v24 = *v6;
      if (a5 && v24 == 126)
      {
        *v22++ = -24126;
        v25 = 2;
      }

      else
      {
        *v22 = v24;
        v22 = (v22 + 1);
        v25 = 1;
      }

      i += v25;
      ++v6;
    }

    *v22 = 0;
    *(v20 + a2) += i;
    *(a1 + a2 + 56) += v13;
  }

  return result;
}

uint64_t com_depes_AddToLayer(uint64_t *a1, unsigned int a2, char *__s)
{
  v6 = strlen(__s);

  return com_depes_AddToLayerGen(a1, a2, __s, v6, 1);
}

uint64_t com_depes_FillToMaxLayerSet(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 10);
  if (!*(a1 + 10))
  {
    return 0;
  }

  v7 = 0;
  v8 = 112;
  v9 = *(a1 + 10);
  v10 = a2;
  do
  {
    v11 = *v10++;
    if (v11 == 1 && *(a1 + v8) > v7)
    {
      v7 = *(a1 + v8);
    }

    v8 += 2;
    --v9;
  }

  while (v9);
  v12 = 0;
  do
  {
    if (a2[v12] == 1)
    {
      v13 = a1 + 2 * v12;
      v14 = *(v13 + 112);
      v15 = v7 - v14;
      result = com_depes_PrepareLayersForLen(a1, (*(v13 + 96) + v7 - v14));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v17 = *(a3 + v12);
      v18 = *(v13 + 96);
      v19 = a1 + 8 * v12;
      if (!*(a3 + v12))
      {
        if (*(v13 + 96))
        {
          v17 = *(*(v19 + 16) + (v18 - 1));
        }

        else
        {
          v17 = 126;
        }
      }

      v20 = (*(v19 + 16) + v18);
      if (v14 != v7)
      {
        v21 = (v7 + ~v14) + 1;
        memset(v20, v17, v21);
        v20 += v21;
      }

      *v20 = 0;
      *(v13 + 96) += v15;
      *(v13 + 112) += v15;
      v3 = *(a1 + 10);
    }

    ++v12;
  }

  while (v12 < v3);
  return 0;
}

uint64_t com_depes_FillToMaxLayerRange(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = a2;
  v11 = *MEMORY[0x1E69E9840];
  if (!a2 || (bzero(v10, 4 * a2), v6 <= a3))
  {
    do
    {
      v10[v6] = 1;
      LOWORD(v6) = v6 + 1;
    }

    while (a3 >= v6);
  }

  v8 = *(a1 + 10);
  if (v8 > v6)
  {
    bzero(&v10[v6], 4 * (v8 + ~v6) + 4);
  }

  return com_depes_FillToMaxLayerSet(a1, v10, a4);
}

uint64_t com_depes_InsertBeforeEnd(uint64_t *a1, unsigned int a2, char *__s, int a4)
{
  v5 = __s;
  v8 = a1 + 12;
  v9 = *(a1 + a2 + 48);
  v10 = strlen(__s);
  v11 = v10;
  v12 = Utf8_LengthInUtf8chars(v5, v10);
  v13 = com_depes_PrepareLayersForLen(a1, (*(v8 + a2) + v10));
  if ((v13 & 0x80000000) == 0)
  {
    LODWORD(v14) = a4 & ~(a4 >> 31);
    if (v9 >= a4)
    {
      v14 = v14;
    }

    else
    {
      v14 = v9;
    }

    v15 = (a1[a2 + 2] + *(v8 + a2) - v14);
    memmove(&v15[v10], v15, v14);
    if (v10)
    {
      do
      {
        v16 = *v5++;
        *v15++ = v16;
        --v11;
      }

      while (v11);
    }

    v17 = *(v8 + a2) + v10;
    *(v8 + a2) = v17;
    *(a1 + a2 + 56) += v12;
    *(a1[a2 + 2] + v17) = 0;
  }

  return v13;
}

size_t GetContextLenInNrChars(size_t result, int a2, int a3, int a4, int a5, _WORD *a6, _WORD *a7)
{
  v13 = result;
  v14 = 0;
  *a6 = 0;
  LOWORD(v15) = a2;
  *a7 = 0;
  if (a2 <= a3)
  {
    Utf32SymToUtf8Sym(*(result + 4 * a2), __s, 5u);
    result = strlen(__s);
    v14 = result;
  }

  if (a2 < a3 && v14 <= a4)
  {
    v15 = a2;
    do
    {
      v16 = *(v13 + 4 + 4 * v15++);
      Utf32SymToUtf8Sym(v16, __s, 5u);
      result = strlen(__s);
      if (v15 >= a3)
      {
        break;
      }

      v14 = (v14 + result);
    }

    while (v14 <= a4);
  }

  *a6 = v15 - a2;
  if (a2 <= a3)
  {
    Utf32SymToUtf8Sym(*(v13 + 4 * a3), __s, 5u);
    result = strlen(__s);
    v17 = result;
  }

  else
  {
    v17 = 0;
  }

  LOWORD(v18) = a3;
  if (a2 < a3 && v17 <= a5)
  {
    v18 = a3;
    do
    {
      v19 = *(v13 - 4 + 4 * v18--);
      Utf32SymToUtf8Sym(v19, __s, 5u);
      result = strlen(__s);
      if (v18 <= a2)
      {
        break;
      }

      v17 = (v17 + result);
    }

    while (v17 <= a5);
  }

  *a7 = a3 - v18;
  return result;
}

uint64_t INFERENCE(uint64_t a1, int a2, int a3, __int16 *a4)
{
  if (*(a1 + 1428))
  {
    return 0;
  }

  v116 = v4;
  v117 = v5;
  v7 = a4;
  memset(v111, 0, 512);
  v10 = *a4;
  if (*(a1 + 24) <= 0)
  {
    v13 = a3;
    v14 = a3 - 1;
    v15 = (v10 - a3 + 1);
  }

  else
  {
    v12 = 0;
    v13 = a3;
    v14 = a3 - 1;
    v15 = (v10 - a3 + 1);
    v16 = *(a1 + 1504);
    do
    {
      memmove((*(v16 + 8 * v12) + 4 * a3), (*(v16 + 8 * v12) + 4 * v14), 4 * v15);
      v16 = *(a1 + 1504);
      v17 = *(v16 + 8 * v12);
      *(v17 + 4 * v10 + 4) = 31;
      *(v17 + 4 * v14) = 31;
      ++v12;
    }

    while (v12 < *(a1 + 24));
    v7 = a4;
  }

  memmove((*(a1 + 1560) + v13), (*(a1 + 1560) + v14), v15);
  *(*(a1 + 1560) + v10 + 1) = 0;
  *(*(a1 + 1560) + v14) = 0;
  v18 = *v7 + 1;
  *v7 = v18;
  *&v111[34] = v18;
  v19 = **(a1 + 1504);
  *(a1 + 1448) = v19;
  *(a1 + 1440) = v19;
  *&v111[8] = v19;
  *&v111[16] = v19;
  *(a1 + 1410) = 0;
  v115 = 0;
  v113 = 0;
  *(a1 + 2096) = 0u;
  memset(&v111[36], 0, 512);
  if (a3 < v18)
  {
    v20 = a3;
    do
    {
      Utf32SymToUtf8Sym(*(**(a1 + 1504) + 4 * v20), v110, 5u);
      v21 = v110[0];
      if (v110[0])
      {
        v22 = 0;
        do
        {
          ++*&v111[2 * v21 + 36];
          v21 = v110[++v22];
        }

        while (v110[v22]);
      }

      ++v20;
    }

    while (v20 < *&v111[34]);
  }

  *&v111[98] = 2;
  v23 = a2 - 1;
  *&v111[30] = *(*(a1 + 64) + 2 * (a2 - 1)) - 1;
  if ((*&v111[30] & 0x8000) != 0)
  {
    return 0;
  }

  log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 6, 0, "Start gram number %d", a2);
  *(a1 + 2 * *(a1 + 1430) + 1568) = a3;
  v24 = *&v111[30];
  *(a1 + 2 * *(a1 + 1430) + 1824) = *&v111[30];
  if (v24 < *(*(a1 + 72) + 2 * v23))
  {
    v25 = (a1 + 152);
    do
    {
      v26 = *(a1 + 120);
      *v111 = *(*(a1 + 112) + 4 * v24);
      GetContextLenInNrChars(*&v111[8], a3, *&v111[34], *(v26 + v24), *(*(a1 + 128) + v24), &v111[24], &v111[26]);
      v27 = *&v111[30] + 1;
      ++*&v111[30];
      v28 = *(a1 + 176);
      v29 = *v111;
      v30 = *(v28 + (*v111 - 1));
      if (v30 > 0x64)
      {
        LOWORD(v30) = v30 - 100;
      }

      *(a1 + 1408) = v30;
      switch(v30)
      {
        case 1:
          v31 = v27 - 1;
          if (*&v111[2 * *(*(a1 + 160) + v31) + 36] && *&v111[2 * *(*(a1 + 168) + v31) + 36])
          {
            v114 = *(v28 + v29);
            for (i = *&v111[24] + a3; ; i = v33 + 1)
            {
              *&v111[32] = i;
              if (*&v111[34] - *&v111[26] < i || *(a1 + 1428))
              {
                break;
              }

              Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * i - 4), v110, 5u);
              if (v110[0] == v114)
              {
                v112 = 0;
                *(a1 + 1456) = *(a1 + 176) + (*v111 + 1);
                *(a1 + 1470) = 1;
                EXEC_RULE(a1, *&v111[30], (*&v111[32] + 1), v111);
                v33 = v112 + *&v111[32];
              }

              else
              {
                v33 = *&v111[32];
              }
            }
          }

          goto LABEL_215;
        case 2:
          v73 = v27 - 1;
          if (*&v111[2 * *(*(a1 + 160) + v73) + 36] && *&v111[2 * *(*(a1 + 168) + v73) + 36])
          {
            v74 = *&v111[34] - *&v111[26] + 1;
            *&v111[32] = v74;
            v114 = *(v28 + v29);
            while (*&v111[24] + a3 <= v74 && !*(a1 + 1428))
            {
              Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v74 - 4), v110, 5u);
              if (v110[0] == v114)
              {
                *(a1 + 1456) = *(a1 + 176) + (*v111 + 1);
                *(a1 + 1470) = 1;
                EXEC_RULE(a1, *&v111[30], (*&v111[32] + 1), v111);
              }

              v74 = --*&v111[32];
            }
          }

          goto LABEL_215;
        case 3:
          v63 = v27 - 1;
          if (*&v111[2 * *(*(a1 + 160) + v63) + 36])
          {
            if (*&v111[2 * *(*(a1 + 168) + v63) + 36])
            {
              v64 = *&v111[24] + a3;
              *&v111[32] = *&v111[24] + a3;
              v114 = *(v28 + v29);
              *(a1 + 1384) = 0;
              if (*&v111[34] - *&v111[26] >= v64)
              {
                do
                {
                  if (*(a1 + 1428))
                  {
                    goto LABEL_118;
                  }

                  Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v64 - 4), v110, 5u);
                  if (v110[0] == v114)
                  {
                    *(a1 + 1456) = *(a1 + 176) + (*v111 + 1);
                    *(a1 + 1470) = 1;
                    EXEC_RULE(a1, *&v111[30], (*&v111[32] + 1), v111);
                    v64 = ++*&v111[32];
                    if (*(a1 + 1384) == 1)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v64 = ++*&v111[32];
                  }
                }

                while (*&v111[34] - *&v111[26] >= v64);
                goto LABEL_118;
              }
            }
          }

          goto LABEL_215;
        case 4:
          v68 = v27 - 1;
          if (*&v111[2 * *(*(a1 + 160) + v68) + 36])
          {
            if (*&v111[2 * *(*(a1 + 168) + v68) + 36])
            {
              v69 = *&v111[34] - *&v111[26] + 1;
              *&v111[32] = v69;
              v114 = *(v28 + v29);
              *(a1 + 1384) = 0;
              if (*&v111[24] + a3 <= v69)
              {
                do
                {
                  if (*(a1 + 1428))
                  {
                    break;
                  }

                  Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v69 - 4), v110, 5u);
                  if (v110[0] == v114)
                  {
                    *(a1 + 1470) = 1;
                    *(a1 + 1456) = *(a1 + 176) + (*v111 + 1);
                    EXEC_RULE(a1, *&v111[30], (*&v111[32] + 1), v111);
                    v69 = --*&v111[32];
                    if (*(a1 + 1384) == 1)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v69 = --*&v111[32];
                  }
                }

                while (*&v111[24] + a3 <= v69);
LABEL_118:
                if (*(a1 + 1384) == 1)
                {
                  goto LABEL_151;
                }
              }
            }
          }

          goto LABEL_215;
        case 5:
          v47 = v27 - 1;
          if (*&v111[2 * *(*(a1 + 160) + v47) + 36] && *&v111[2 * *(*(a1 + 168) + v47) + 36])
          {
            for (j = *&v111[24] + a3; ; j = v112 + *&v111[32] + 1)
            {
              *&v111[32] = j;
              if (*&v111[34] - *&v111[26] < j || *(a1 + 1428))
              {
                break;
              }

              v112 = 0;
              *(a1 + 1456) = *(a1 + 176) + *v111;
              *(a1 + 1470) = 0;
              EXEC_RULE(a1, *&v111[30], j, v111);
            }
          }

          goto LABEL_215;
        case 6:
          v75 = v27 - 1;
          if (*&v111[2 * *(*(a1 + 160) + v75) + 36] && *&v111[2 * *(*(a1 + 168) + v75) + 36])
          {
            for (k = *&v111[34] - *&v111[26]; ; k = *&v111[32] - 1)
            {
              *&v111[32] = k;
              if (*&v111[24] + a3 > k || *(a1 + 1428))
              {
                break;
              }

              *(a1 + 1456) = *(a1 + 176) + *v111;
              *(a1 + 1470) = 0;
              EXEC_RULE(a1, *&v111[30], k, v111);
            }
          }

          goto LABEL_215;
        case 7:
          v77 = v27 - 1;
          if (*&v111[2 * *(*(a1 + 160) + v77) + 36])
          {
            if (*&v111[2 * *(*(a1 + 168) + v77) + 36])
            {
              v78 = *&v111[24] + a3;
              *&v111[32] = *&v111[24] + a3;
              *(a1 + 1384) = 0;
              if (*&v111[34] - *&v111[26] >= v78)
              {
                while (1)
                {
                  v72 = *(a1 + 1384);
                  if (v72)
                  {
                    goto LABEL_150;
                  }

                  if (*(a1 + 1428))
                  {
                    break;
                  }

                  *(a1 + 1456) = *(a1 + 176) + *v111;
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, *&v111[30], v78, v111);
                  v78 = *&v111[32] + 1;
                  *&v111[32] = v78;
                  if (*&v111[34] - *&v111[26] < v78)
                  {
                    goto LABEL_149;
                  }
                }
              }
            }
          }

          goto LABEL_215;
        case 8:
          v70 = v27 - 1;
          if (!*&v111[2 * *(*(a1 + 160) + v70) + 36])
          {
            goto LABEL_215;
          }

          if (!*&v111[2 * *(*(a1 + 168) + v70) + 36])
          {
            goto LABEL_215;
          }

          v71 = *&v111[34] - *&v111[26];
          *&v111[32] = *&v111[34] - *&v111[26];
          *(a1 + 1384) = 0;
          if (*&v111[24] + a3 > v71)
          {
            goto LABEL_215;
          }

          while (1)
          {
            v72 = *(a1 + 1384);
            if (v72)
            {
              break;
            }

            if (*(a1 + 1428))
            {
              goto LABEL_215;
            }

            *(a1 + 1456) = *(a1 + 176) + *v111;
            *(a1 + 1470) = 0;
            EXEC_RULE(a1, *&v111[30], v71, v111);
            v71 = *&v111[32] - 1;
            *&v111[32] = v71;
            if (*&v111[24] + a3 > v71)
            {
LABEL_149:
              v72 = *(a1 + 1384);
              break;
            }
          }

LABEL_150:
          if (v72 == 1)
          {
            goto LABEL_151;
          }

          goto LABEL_215;
        case 9:
          LODWORD(v113) = 1;
          v85 = *&v111[24] + a3;
          *&v111[32] = *&v111[24] + a3;
          v86 = *&v111[26];
          if (*&v111[34] - *&v111[26] < (*&v111[24] + a3))
          {
            goto LABEL_213;
          }

          v87 = *&v111[34];
          while (1)
          {
            LOWORD(v88) = *&v111[30];
            if (*(a1 + 1428))
            {
              break;
            }

            v112 = -2;
            v89 = *&v111[30] + *(*v25 + *&v111[30] - 1);
            *&v111[28] = v89;
            if (*&v111[30] > v89)
            {
              goto LABEL_164;
            }

            v90 = v89;
            do
            {
              v91 = v88 - 1;
              if (*&v111[2 * *(*(a1 + 160) + v91) + 36])
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v91);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, v88, *&v111[32], v111);
                v90 = *&v111[28];
              }

              v88 = (v88 + 1);
            }

            while (v88 <= v90);
            v85 = *&v111[32];
            v87 = *&v111[34];
            v86 = *&v111[26];
            if (v112 == 65534)
            {
LABEL_164:
              v92 = 1;
            }

            else
            {
              v92 = v112 + 1;
            }

            v85 += v92;
            *&v111[32] = v85;
            if (v87 - v86 < v85)
            {
              LOWORD(v27) = *&v111[30];
              goto LABEL_213;
            }
          }

          LOWORD(v27) = *&v111[30];
          goto LABEL_213;
        case 10:
          v57 = *&v111[34] - *&v111[26];
          *&v111[32] = *&v111[34] - *&v111[26];
          if (*&v111[24] + a3 > (*&v111[34] - *&v111[26]))
          {
            goto LABEL_211;
          }

          v58 = *&v111[24];
          while (1)
          {
            LOWORD(v59) = *&v111[30];
            if (*(a1 + 1428))
            {
              break;
            }

            v60 = *&v111[30] + *(*v25 + *&v111[30] - 1);
            *&v111[28] = v60;
            if (*&v111[30] <= v60)
            {
              v61 = v60;
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v62 = v59 - 1;
                if (*&v111[2 * *(*(a1 + 160) + v62) + 36])
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v62);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v59, *&v111[32], v111);
                  v61 = *&v111[28];
                }

                v59 = (v59 + 1);
              }

              while (v59 <= v61);
              v57 = *&v111[32];
              v58 = *&v111[24];
            }

            *&v111[32] = --v57;
            if (a3 + v58 > v57)
            {
              LOWORD(v27) = *&v111[30];
              goto LABEL_211;
            }
          }

          LOWORD(v27) = *&v111[30];
LABEL_211:
          v101 = v27 + *(*v25 + v27 - 1);
          goto LABEL_197;
        case 11:
          v80 = *&v111[24] + a3;
          *&v111[32] = *&v111[24] + a3;
          *(a1 + 1384) = 0;
          v81 = v27 + *(*(a1 + 152) + v27 - 1);
          *&v111[28] = v81;
          v82 = *&v111[34];
          v83 = *&v111[26];
          if (*&v111[34] - *&v111[26] < v80)
          {
            goto LABEL_153;
          }

          while (!*(a1 + 1384))
          {
            if (*(a1 + 1428))
            {
              goto LABEL_153;
            }

            LOWORD(v102) = *&v111[30];
            if (*&v111[30] <= v81)
            {
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v103 = v102 - 1;
                if (*&v111[2 * *(*(a1 + 160) + v103) + 36])
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v103);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v102, *&v111[32], v111);
                  v81 = *&v111[28];
                }

                v102 = (v102 + 1);
              }

              while (v102 <= v81);
              v80 = *&v111[32];
              v82 = *&v111[34];
              v83 = *&v111[26];
            }

            *&v111[32] = ++v80;
            if (v82 - v83 < v80)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_151;
        case 12:
          v42 = *&v111[34] - *&v111[26];
          *&v111[32] = *&v111[34] - *&v111[26];
          *(a1 + 1384) = 0;
          v43 = v27 + *(*(a1 + 152) + v27 - 1);
          *&v111[28] = v43;
          v44 = *&v111[24];
          if (*&v111[24] + a3 > v42)
          {
            goto LABEL_153;
          }

          do
          {
            if (*(a1 + 1384))
            {
LABEL_151:
              v79 = (a1 + 144);
              goto LABEL_154;
            }

            if (*(a1 + 1428))
            {
              goto LABEL_153;
            }

            LOWORD(v45) = *&v111[30];
            if (*&v111[30] <= v43)
            {
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v46 = v45 - 1;
                if (*&v111[2 * *(*(a1 + 160) + v46) + 36])
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v46);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v45, *&v111[32], v111);
                  v43 = *&v111[28];
                }

                v45 = (v45 + 1);
              }

              while (v45 <= v43);
              v42 = *&v111[32];
              v44 = *&v111[24];
            }

            *&v111[32] = --v42;
          }

          while (a3 + v44 <= v42);
LABEL_207:
          v79 = (a1 + 144);
          if (!*(a1 + 1384))
          {
LABEL_153:
            v79 = (a1 + 152);
          }

LABEL_154:
          LOWORD(v37) = *&v111[30];
          v84 = *v79 + *&v111[30];
          goto LABEL_196;
        case 13:
          LODWORD(v113) = 1;
          v49 = *&v111[24] + a3;
          *&v111[32] = *&v111[24] + a3;
          do
          {
            if (*&v111[34] - *&v111[26] < v49 || *(a1 + 1428))
            {
              break;
            }

            v50 = 0;
            v112 = -2;
            *(a1 + 1384) = 0;
            while (1)
            {
              v51 = v50;
              v52 = *(a1 + 1384);
              v53 = v51 <= *(*(a1 + 152) + v27 - 1) && v52 == 0;
              if (!v53 || *(a1 + 1428))
              {
                break;
              }

              v54 = v27 + v51 - 1;
              if (*&v111[2 * *(*(a1 + 160) + v54) + 36])
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v54);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v27 + v51), *&v111[32], v111);
                LOWORD(v27) = *&v111[30];
              }

              v50 = v51 + 1;
              v55 = *(a1 + 44);
              if (v55 < v27)
              {
                v52 = *(a1 + 1384);
                goto LABEL_77;
              }
            }

            LOWORD(v55) = *(a1 + 44);
LABEL_77:
            v56 = v52 ? v112 + 1 : 1;
            v49 = v56 + *&v111[32];
            *&v111[32] = v49;
          }

          while (v27 <= v55);
          if (*(a1 + 44) > v27)
          {
LABEL_213:
            *&v111[30] = v27 + *(*v25 + v27 - 1);
          }

          LODWORD(v113) = 0;
          goto LABEL_215;
        case 14:
          *&v111[32] = *&v111[34] - *&v111[26];
          if (*&v111[24] + a3 > (*&v111[34] - *&v111[26]))
          {
            LOWORD(v37) = v27;
            goto LABEL_194;
          }

          v37 = v27;
          do
          {
            v97 = *(a1 + 1428);
            if (*(a1 + 1428))
            {
              break;
            }

            v98 = 0;
            *(a1 + 1384) = 0;
            while (1)
            {
              if (*(a1 + 1428))
              {
                v100 = v27;
                goto LABEL_193;
              }

              v99 = v97 + v27 - 1;
              if (*&v111[2 * *(*(a1 + 160) + v99) + 36])
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v99);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v27 + v98), *&v111[32], v111);
                v37 = *&v111[30];
              }

              v97 = ++v98;
              if (v98 > *(*v25 + v37 - 1))
              {
                break;
              }

              v27 = v37;
              v100 = v37;
              if (*(a1 + 1384))
              {
                goto LABEL_193;
              }
            }

            v100 = v37;
LABEL_193:
            --*&v111[32];
            v27 = v100;
          }

          while (*&v111[24] + a3 <= *&v111[32]);
LABEL_194:
          v67 = *v25;
          goto LABEL_195;
        case 15:
          v36 = *&v111[24] + a3;
          *&v111[32] = *&v111[24] + a3;
          *(a1 + 1384) = 0;
          if (*&v111[34] - *&v111[26] < v36)
          {
            goto LABEL_106;
          }

          v37 = v27;
          while (!*(a1 + 1384))
          {
            v38 = *(a1 + 1428);
            if (*(a1 + 1428))
            {
              goto LABEL_107;
            }

            v39 = 0;
            while (!*(a1 + 1384) && !*(a1 + 1428))
            {
              v40 = v38 + v27 - 1;
              if (*&v111[2 * *(*(a1 + 160) + v40) + 36])
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v40);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v27 + v39), *&v111[32], v111);
                v37 = *&v111[30];
              }

              v38 = ++v39;
              v27 = v37;
              v41 = v37;
              if (v39 > *(*v25 + v37 - 1))
              {
                goto LABEL_43;
              }
            }

            v41 = v27;
LABEL_43:
            ++*&v111[32];
            v27 = v41;
            if (*&v111[34] - *&v111[26] < *&v111[32])
            {
              goto LABEL_180;
            }
          }

          goto LABEL_209;
        case 16:
          v65 = *&v111[34] - *&v111[26];
          *&v111[32] = *&v111[34] - *&v111[26];
          *(a1 + 1384) = 0;
          if (*&v111[24] + a3 > v65)
          {
LABEL_106:
            LOWORD(v37) = v27;
            goto LABEL_107;
          }

          v37 = v27;
          break;
        default:
          if (v30 == 99)
          {
            v34 = *(a1 + 1504);
            *&v111[8] = *(v34 + 8 * *(v28 + v29) - 8);
            *(a1 + 1440) = *&v111[8];
            v35 = v29 + 1;
            *&v111[16] = *(v34 + 8 * *(v28 + v35) - 8);
            *(a1 + 1448) = *&v111[16];
            LOWORD(v34) = *(v28 + v35) - 1;
            *(a1 + 1410) = v34;
            v115 = v34;
          }

          goto LABEL_215;
      }

      do
      {
        if (*(a1 + 1384))
        {
LABEL_209:
          v66 = (a1 + 144);
          goto LABEL_108;
        }

        v93 = *(a1 + 1428);
        if (*(a1 + 1428))
        {
          goto LABEL_107;
        }

        v94 = 0;
        while (!*(a1 + 1384) && !*(a1 + 1428))
        {
          v95 = v93 + v27 - 1;
          if (*&v111[2 * *(*(a1 + 160) + v95) + 36])
          {
            *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v95);
            *(a1 + 1470) = 0;
            EXEC_RULE(a1, (v27 + v94), *&v111[32], v111);
            v37 = *&v111[30];
          }

          v93 = ++v94;
          v27 = v37;
          v96 = v37;
          if (v94 > *(*v25 + v37 - 1))
          {
            goto LABEL_179;
          }
        }

        v96 = v27;
LABEL_179:
        --*&v111[32];
        v27 = v96;
      }

      while (*&v111[24] + a3 <= *&v111[32]);
LABEL_180:
      v66 = (a1 + 144);
      if (!*(a1 + 1384))
      {
LABEL_107:
        v66 = (a1 + 152);
      }

LABEL_108:
      v67 = *v66;
LABEL_195:
      v84 = v67 + v37;
LABEL_196:
      v101 = v37 + *(v84 - 1);
LABEL_197:
      *&v111[30] = v101;
LABEL_215:
      LOWORD(v24) = *&v111[30];
    }

    while (*&v111[30] < *(*(a1 + 72) + 2 * v23));
  }

  v104 = *&v111[34];
  v105 = v7;
  *v7 = *&v111[34];
  if (*(a1 + 24) >= 1)
  {
    v106 = 0;
    do
    {
      v107 = (*(*(a1 + 1504) + 8 * v106) + 4 * a3);
      memmove(v107 - 4, v107, 4 * (v104 - a3 + 1));
      ++v106;
    }

    while (v106 < *(a1 + 24));
  }

  *(*(a1 + 1560) + a3) += *(*(a1 + 1560) + a3 - 1);
  *(*(a1 + 1560) + v104 - 1) += *(*(a1 + 1560) + v104);
  memmove((*(a1 + 1560) + a3 - 1), (*(a1 + 1560) + a3), (v104 - a3));
  *(*(a1 + 1560) + v104 - 1) = 0;
  v108 = *v105 - 1;
  *v105 = v108;
  if (!*(a1 + 1430) && v108)
  {
    *(*(a1 + 1560) + v108 - 1) += *(*(a1 + 1560) + v108);
  }

  *(a1 + 1432) = 1;
  log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 6, 0, "End gram number %d", a2);
  if (*(a1 + 1428))
  {
    *v105 = a3 - 1;
  }

  return HIDWORD(v113);
}

uint64_t EXEC_RULE(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  LOWORD(v6) = 0;
  v286 = *(a4 + 34);
  *(result + 1476) = 0;
  v7 = (result + 2096);
  v8 = (result + 1400);
  v284 = (a4 + 34);
  __s = (result + 1484);
  i = *(result + 1456);
  while (2)
  {
    switch(*i)
    {
      case 0:
        if (!a3)
        {
          goto LABEL_459;
        }

        v183 = *(a4 + 32);
        *(v5 + 1474) = a3 - v183;
        *(v5 + 1468) = -1;
        *(v5 + 1466) = v183 - 1;
        result = CTXT(v5);
        if (!result)
        {
          goto LABEL_459;
        }

        *(v5 + 1468) = 1;
        *(v5 + 1466) = a3;
        result = CTXT(v5);
        if (!result)
        {
          goto LABEL_459;
        }

        v289 = 0;
        v184 = a4;
        v185 = *(a4 + 32);
        v186 = *(v5 + 1474);
        v187 = (v186 + v185);
        *(v5 + 1448) = *(a4 + 16);
        *(v5 + 1384) = 1;
        *(v5 + 1410) = *(a4 + 562);
        v188 = *(a4 + 34);
        v189 = v188;
        v190 = *(v5 + 1456);
        result = v190 + 1;
        *(v5 + 1456) = v190 + 1;
        v191 = *(v190 + 1);
        if (v191 == 22)
        {
          v194 = *(*(v5 + 136) + a2 - 1);
          v195 = (v186 - v194);
          if (v187 - v185 <= v194)
          {
            v195 = 0;
          }

          v287 = v195;
          result = v190 + 2;
          *(v5 + 1456) = v190 + 2;
        }

        else
        {
          if (v191 == 1)
          {
            *(v5 + 1456) = v190 + 2;
            v192 = *(v190 + 2);
            if (v192 == 1)
            {
              v193 = v186 - 1;
              goto LABEL_446;
            }

            if (v192 == 2)
            {
              v193 = v186 - 1;
              *(a4 + 32) = **(v5 + 184);
              *(a4 + 30) = *(v5 + 44);
LABEL_446:
              if (!*(v184 + 552) || *(v184 + 548) < v193)
              {
                *(v184 + 548) = v193;
              }

              goto LABEL_449;
            }

            v278 = v185;
            if (v185 < v187)
            {
              v237 = v185;
              do
              {
                Utf32SymToUtf8Sym(*(**(v5 + 1504) + 4 * v237), v290, 5u);
                v238 = v290[0];
                if (v290[0])
                {
                  v239 = 0;
                  do
                  {
                    --*(a4 + 36 + 2 * v238);
                    v238 = v290[++v239];
                  }

                  while (v290[v239]);
                }

                ++v237;
              }

              while (v237 != v187);
            }

            v240 = *(v5 + 24);
            v241 = v187;
            if (v240 <= 0)
            {
              v243 = v188 - v187 + 1;
              v244 = v284;
            }

            else
            {
              v242 = 0;
              v243 = v188 - v187 + 1;
              v244 = v284;
              do
              {
                v245 = *(v5 + 1416);
                v246 = *(v245 + 2 * v242) - v243;
                *(v245 + 2 * v242) = v246;
                v247 = *(*(v5 + 1504) + 8 * v242);
                memmove((v247 + 4 * v246), (v247 + 4 * v187), 4 * v243);
                ++v242;
                v240 = *(v5 + 24);
              }

              while (v242 < v240);
            }

            v248 = *(v5 + 1416);
            *(v248 + 2 * v240) -= v243;
            memmove((*(v5 + 1560) + *(v248 + 2 * *(v5 + 24))), (*(v5 + 1560) + v187), v243);
            bzero((*(v5 + 1560) + v187), v243);
            *v244 = v187;
            *(v5 + 1432) = 0;
            ++*(v5 + 1430);
            v249 = *(v5 + 1476);
            v250 = **(v5 + 1456);
            v251 = *(*(v5 + 56) + v250 - 1);
            if (v251 > 1)
            {
              if (v251 == 3)
              {
                result = DCT_LKP(v5, *(*(v5 + 1520) + 8 * (v250 - 1)), v278, v244);
                goto LABEL_422;
              }

              if (v251 == 2)
              {
                result = INFERENCE(v5, v250, (v278 + 1), v244);
                goto LABEL_422;
              }
            }

            else
            {
              if (!*(*(v5 + 56) + v250 - 1))
              {
                INFERENCE(v5, v250, (v278 + 1), v244);
                result = 1;
                goto LABEL_422;
              }

              if (v251 == 1)
              {
                INFERENCE(v5, v250, (v278 + 1), v244);
                result = 0;
LABEL_422:
                *(v5 + 1384) = result;
                *(v5 + 1476) = v249;
                --*(v5 + 1430);
                if (*(v5 + 1428) == 156)
                {
                  goto LABEL_449;
                }

                v255 = v284;
                v256 = *v284;
                if (*(v5 + 1432))
                {
                  v257 = v278;
                }

                else
                {
                  if (v187 >= v256)
                  {
                    v258 = *v284;
                    LOWORD(v259) = v187;
                    v255 = v284;
                    do
                    {
                      v260 = *(v5 + 1560);
                      if (*(v260 + v259))
                      {
                        *(v260 + v256 - 1) += *(v260 + v259);
                        v258 = *v284;
                      }

                      v259 = (v259 - 1);
                      v256 = v258;
                    }

                    while (v259 >= v258);
                  }

                  else
                  {
                    v255 = v284;
                  }

                  *(*(v5 + 1560) + v256) = 0;
                  LODWORD(v256) = *v255;
                  v184 = a4;
                  v257 = v278;
                  if (v187 < v256)
                  {
                    do
                    {
                      *(*(v5 + 1560) + v241++) = 0;
                      v256 = *v255;
                    }

                    while (v241 < v256);
                    v184 = a4;
                    v257 = v278;
                  }
                }

                if (v257 < v256)
                {
                  v261 = v256;
                  do
                  {
                    Utf32SymToUtf8Sym(*(**(v5 + 1504) + 4 * v257), v290, 5u);
                    v262 = v290[0];
                    if (v290[0])
                    {
                      v263 = 0;
                      do
                      {
                        ++*(v184 + 36 + 2 * v262);
                        v262 = v290[++v263];
                      }

                      while (v290[v263]);
                    }

                    ++v257;
                  }

                  while (v257 != v261);
                  LOWORD(v256) = *v255;
                }

                if (*(v5 + 1384))
                {
                  v193 = v256 + ~*(v184 + 32) + *(v5 + 1476);
                }

                else
                {
                  v193 = 0;
                }

                result = RESTORE_SUBSTITUTION(v5, v256);
                *v255 = result;
                goto LABEL_446;
              }
            }

            result = pfExt[*(*(v5 + 56) + v250 - 1)](v5, v278, v244);
            goto LABEL_422;
          }

          v287 = 0;
        }

        if (v185 < v187)
        {
          v196 = v185;
          v197 = v185;
          do
          {
            Utf32SymToUtf8Sym(*(**(v5 + 1504) + 4 * v196), v290, 5u);
            v198 = v290[0];
            if (v290[0])
            {
              v199 = 0;
              do
              {
                --*(a4 + 36 + 2 * v198);
                v198 = v290[++v199];
              }

              while (v290[v199]);
            }

            ++v196;
          }

          while (v196 != v187);
          result = *(v5 + 1456);
          v185 = v197;
        }

        v200 = v185;
        v201 = v185;
        v280 = v189;
        v202 = v189;
        v277 = v201;
        v203 = v201;
        v204 = __s;
        break;
      case 2:
        v25 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          v26 = a3;
          do
          {
            LODWORD(a3) = v26;
            v27 = v26;
            v28 = *(v25 + 4 * v26);
            v26 += *(v5 + 1470);
          }

          while (v28 == 126);
        }

        else
        {
          v27 = a3;
        }

        v84 = (v25 + 4 * v27);
        if (*v7 != v84)
        {
          result = Utf32SymToUtf8Sym(*v84, v8, 5u);
          v85 = (*(v5 + 1440) + 4 * v27);
          *(v5 + 1405) = *v85 & 0x3F;
          *(v5 + 2096) = v85;
        }

        v86 = *v8;
        if (*v8)
        {
          v87 = v86 == 31;
        }

        else
        {
          v87 = 1;
        }

        if (v87)
        {
          goto LABEL_459;
        }

        v88 = *(v5 + 1512);
        v89 = (*(v5 + 1456) + 1);
        *(v5 + 1456) = v89;
        v90 = *v89;
        v91 = (v88 + 5 * v90);
        if (*v91)
        {
          v92 = 0;
          v93 = 0;
          do
          {
            if (v86 != v91[v92])
            {
              goto LABEL_459;
            }

            v92 = ++v93;
            v86 = v8[v93];
          }

          while (v8[v93]);
        }

        else
        {
          result = VAR_APPEARENCE(v5, v90);
          if (!result)
          {
            goto LABEL_459;
          }

          *(v5 + 1480) = 1;
          result = SETUTF8CHAR(v91, v8);
          v89 = *(v5 + 1456);
        }

        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
LABEL_230:
        i = (v89 + 1);
        *(v5 + 1456) = v89 + 1;
        continue;
      case 3:
        v17 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v18 = a3;
            v19 = a3;
            v20 = *(v17 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v20 == 126);
          LODWORD(a3) = v18;
        }

        else
        {
          v19 = a3;
        }

        v76 = (v17 + 4 * v19);
        if (*v7 != v76)
        {
          result = Utf32SymToUtf8Sym(*v76, v8, 5u);
          v77 = (*(v5 + 1440) + 4 * v19);
          *(v5 + 1405) = *v77 & 0x3F;
          *(v5 + 2096) = v77;
        }

        if (*v8)
        {
          v78 = *v8 == 31;
        }

        else
        {
          v78 = 1;
        }

        if (v78)
        {
          goto LABEL_459;
        }

        v79 = *(v5 + 2120);
        goto LABEL_100;
      case 4:
        v49 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v50 = a3;
            v51 = a3;
            v52 = *(v49 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v52 == 126);
          LODWORD(a3) = v50;
        }

        else
        {
          v51 = a3;
        }

        v123 = (v49 + 4 * v51);
        if (*v7 != v123)
        {
          result = Utf32SymToUtf8Sym(*v123, v8, 5u);
          v124 = (*(v5 + 1440) + 4 * v51);
          *(v5 + 1405) = *v124 & 0x3F;
          *(v5 + 2096) = v124;
        }

        if (*v8)
        {
          v125 = *v8 == 31;
        }

        else
        {
          v125 = 1;
        }

        if (v125)
        {
          goto LABEL_459;
        }

        v83 = *(v5 + 2120);
        goto LABEL_156;
      case 5:
        v29 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v30 = a3;
            v31 = a3;
            v32 = *(v29 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v32 == 126);
          LODWORD(a3) = v30;
        }

        else
        {
          v31 = a3;
        }

        v94 = (v29 + 4 * v31);
        if (*v7 != v94)
        {
          result = Utf32SymToUtf8Sym(*v94, v8, 5u);
          v95 = (*(v5 + 1440) + 4 * v31);
          *(v5 + 1405) = *v95 & 0x3F;
          *(v5 + 2096) = v95;
        }

        if (*v8)
        {
          v96 = *v8 == 31;
        }

        else
        {
          v96 = 1;
        }

        if (v96)
        {
          goto LABEL_459;
        }

        v79 = *(v5 + 2128);
LABEL_100:
        v97 = *(v5 + 1456);
        *(v5 + 1456) = v97 + 1;
        result = strstr(*(*(v79 + 8 * (*(v97 + 1) - 1)) + 8 * *(v5 + 1405)), v8);
        if (!result)
        {
          goto LABEL_459;
        }

        goto LABEL_157;
      case 6:
        v21 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v22 = a3;
            v23 = a3;
            v24 = *(v21 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v24 == 126);
          LODWORD(a3) = v22;
        }

        else
        {
          v23 = a3;
        }

        v80 = (v21 + 4 * v23);
        if (*v7 != v80)
        {
          result = Utf32SymToUtf8Sym(*v80, v8, 5u);
          v81 = (*(v5 + 1440) + 4 * v23);
          *(v5 + 1405) = *v81 & 0x3F;
          *(v5 + 2096) = v81;
        }

        if (*v8)
        {
          v82 = *v8 == 31;
        }

        else
        {
          v82 = 1;
        }

        if (v82)
        {
          goto LABEL_459;
        }

        v83 = *(v5 + 2128);
LABEL_156:
        v97 = *(v5 + 1456);
        *(v5 + 1456) = v97 + 1;
        result = strstr(*(*(v83 + 8 * (*(v97 + 1) - 1)) + 8 * *(v5 + 1405)), v8);
        if (result)
        {
          goto LABEL_459;
        }

LABEL_157:
        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
        i = (v97 + 2);
        *(v5 + 1456) = v97 + 2;
        continue;
      case 7:
        v53 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v54 = a3;
            v55 = a3;
            v56 = *(v53 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v56 == 126);
          LODWORD(a3) = v54;
        }

        else
        {
          v55 = a3;
        }

        v126 = (v53 + 4 * v55);
        if (*v7 != v126)
        {
          result = Utf32SymToUtf8Sym(*v126, v8, 5u);
          v127 = (*(v5 + 1440) + 4 * v55);
          *(v5 + 1405) = *v127 & 0x3F;
          *(v5 + 2096) = v127;
        }

        if (*v8)
        {
          v128 = *v8 == 31;
        }

        else
        {
          v128 = 1;
        }

        if (v128)
        {
          goto LABEL_459;
        }

        v129 = *(v5 + 1456);
        *(v5 + 1456) = v129 + 1;
        v130 = *(v129 + 1);
        v131 = v130 - 1;
        result = strstr(*(*(*(v5 + 2128) + 8 * (v130 - 1)) + 8 * *(v5 + 1405)), v8);
        if (!result)
        {
          goto LABEL_459;
        }

        v132 = *(v5 + 88);
        result = strstr((v132 + (v131 << 8)), v8);
        if (!result)
        {
          goto LABEL_459;
        }

        v133 = v132 + (v130 << 8);
        if (v131)
        {
          v133 -= 512;
          v134 = (*(v5 + 96) + (v131 << 8) + result - (v132 + (v131 << 8)));
        }

        else
        {
          v134 = (*(v5 + 96) + (v131 << 8) + result - (v132 + (v131 << 8)));
        }

        result = SETUTF8CHAR(__s, (v133 + *v134));
LABEL_205:
        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
        v89 = *(v5 + 1456);
        goto LABEL_230;
      case 8:
        v61 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v62 = a3;
            v63 = a3;
            v64 = *(v61 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v64 == 126);
          LODWORD(a3) = v62;
        }

        else
        {
          v63 = a3;
        }

        v147 = (v61 + 4 * v63);
        if (*v7 != v147)
        {
          Utf32SymToUtf8Sym(*v147, v8, 5u);
          v148 = (*(v5 + 1440) + 4 * v63);
          *(v5 + 1405) = *v148 & 0x3F;
          *(v5 + 2096) = v148;
          i = *(v5 + 1456);
        }

        *(v5 + 1456) = i + 1;
        result = CHECK_OF_LIST(v5, 8u, a3);
        if (result)
        {
          goto LABEL_205;
        }

        goto LABEL_459;
      case 11:
        *(v5 + 1472) = a3;
        v33 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v34 = a3;
            v35 = a3;
            v36 = *(v33 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v36 == 126);
          LOWORD(a3) = v34;
        }

        else
        {
          v35 = a3;
        }

        v98 = (v33 + 4 * v35);
        if (*v7 != v98)
        {
          Utf32SymToUtf8Sym(*v98, v8, 5u);
          v99 = (*(v5 + 1440) + 4 * v35);
          *(v5 + 1405) = *v99 & 0x3F;
          *(v5 + 2096) = v99;
          i = *(v5 + 1456);
        }

        v100 = i[2];
        if (v100 == 220)
        {
          v100 = 5000;
        }

        *(v5 + 1406) = v100;
        if (v100 && (*(v5 + 1456) = i + 3, CHECK_OF_LIST(v5, 0xBu, a3)))
        {
          LOWORD(v6) = 0;
          do
          {
            v101 = *(v5 + 1456);
            *(v5 + 1472) = a3 + 1;
            v102 = TOKEN1(v5, (a3 + 1));
            v6 = (v6 + 1);
            if (v6 >= *(v5 + 1406))
            {
              break;
            }

            LOWORD(a3) = v102;
            *(v5 + 1456) = i + 3;
          }

          while (CHECK_OF_LIST(v5, 0xBu, v102));
        }

        else
        {
          v6 = 0;
          v101 = 0;
        }

        result = LOG_WARNING_ON_MAX_NUMBER(v5, v6, 1);
        if (v6 < i[1])
        {
          goto LABEL_459;
        }

        if (v101)
        {
          *(v5 + 1456) = v101;
        }

        else
        {
          v101 = *(v5 + 1456);
        }

        a3 = *(v5 + 1472);
        for (i = (v101 + 1); ; ++i)
        {
          if (*(i - 1) == 11)
          {
            v154 = *(i - 2);
            v155 = v154 > 0x15;
            v156 = (1 << v154) & 0x20067C;
            if (v155 || v156 == 0)
            {
              break;
            }

            v158 = *(i - 3);
            v155 = v158 > 0x15;
            v159 = (1 << v158) & 0x20C67C;
            if (!v155 && v159 != 0)
            {
              break;
            }
          }

          *(v5 + 1456) = i;
        }

        goto LABEL_300;
      case 12:
        v13 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v14 = a3;
            v15 = a3;
            v16 = *(v13 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v16 == 126);
          LODWORD(a3) = v14;
        }

        else
        {
          v15 = a3;
        }

        v69 = (v13 + 4 * v15);
        if (*v7 != v69)
        {
          result = Utf32SymToUtf8Sym(*v69, v8, 5u);
          v70 = (*(v5 + 1440) + 4 * v15);
          *(v5 + 1405) = *v70 & 0x3F;
          *(v5 + 2096) = v70;
        }

        v71 = *v8;
        if (*v8)
        {
          v72 = v71 == 31;
        }

        else
        {
          v72 = 1;
        }

        if (v72)
        {
          goto LABEL_459;
        }

        v73 = 0;
        v74 = 0;
        v75 = *(v5 + 1456) + 1;
        *(v5 + 1456) = v75;
        do
        {
          if (v71 != *(v75 + v73))
          {
            goto LABEL_459;
          }

          v73 = ++v74;
          v71 = v8[v74];
        }

        while (v8[v74]);
        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
        result = strlen(v8);
        i = (v75 + result);
        *(v5 + 1456) = v75 + result;
        continue;
      case 13:
        v45 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v46 = a3;
            v47 = a3;
            v48 = *(v45 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v48 == 126);
          LODWORD(a3) = v46;
        }

        else
        {
          v47 = a3;
        }

        v114 = (v45 + 4 * v47);
        if (*v7 != v114)
        {
          result = Utf32SymToUtf8Sym(*v114, v8, 5u);
          v115 = (*(v5 + 1440) + 4 * v47);
          *(v5 + 1405) = *v115 & 0x3F;
          *(v5 + 2096) = v115;
        }

        v116 = *v8;
        if (*v8)
        {
          v117 = v116 == 31;
        }

        else
        {
          v117 = 1;
        }

        if (v117)
        {
          goto LABEL_459;
        }

        v118 = 0;
        v119 = 0;
        v120 = *(v5 + 1456);
        *(v5 + 1456) = v120 + 1;
        while (v116 == *(v120 + 1 + v118))
        {
          v118 = ++v119;
          v116 = v8[v119];
          if (!v8[v119])
          {
            goto LABEL_459;
          }
        }

        v121 = (v120 + 2);
        do
        {
          *(v5 + 1456) = v121;
          v122 = *v121++;
        }

        while (v122 < -64);
        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
        i = v121 - 1;
        continue;
      case 14:
      case 16:
        v10 = *(v5 + 1440);
        *(v5 + 1368) = v10;
        v11 = v10 + 4 * a3;
        if (*(v5 + 2104) == v11)
        {
          a3 = *(v5 + 2112);
        }

        else
        {
          *(v5 + 2104) = v11;
          *(v5 + 2112) = a3;
        }

        v12 = *(*(v5 + 1504) + 8 * i[1] - 8);
        goto LABEL_52;
      case 15:
      case 17:
        v12 = *(v5 + 1368);
LABEL_52:
        *(v5 + 1440) = v12;
        *(v5 + 1470) = 0;
        i += 2;
        *(v5 + 1456) = i;
        continue;
      case 18:
        *(v5 + 1472) = a3;
        v57 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v58 = a3;
            v59 = a3;
            v60 = *(v57 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v60 == 126);
          LOWORD(a3) = v58;
        }

        else
        {
          v59 = a3;
        }

        v135 = (v57 + 4 * v59);
        if (*v7 != v135)
        {
          result = Utf32SymToUtf8Sym(*v135, v8, 5u);
          v136 = (*(v5 + 1440) + 4 * v59);
          *(v5 + 1405) = *v136 & 0x3F;
          *(v5 + 2096) = v136;
          i = *(v5 + 1456);
        }

        v137 = i[2];
        if (v137 == 220)
        {
          v137 = 5000;
        }

        *(v5 + 1406) = v137;
        *(v5 + 1392) = i + 4;
        v138 = i[3];
        if (v138 > 5)
        {
          if (i[3] > 0xCu)
          {
            if (v138 == 13)
            {
              LOWORD(v6) = 0;
              if (v137)
              {
                do
                {
                  v177 = *v8;
                  if (*v8)
                  {
                    v178 = v177 == 31;
                  }

                  else
                  {
                    v178 = 1;
                  }

                  if (v178)
                  {
                    break;
                  }

                  v179 = 0;
                  v180 = 0;
                  while (v177 == *(*(v5 + 1392) + v179))
                  {
                    v179 = ++v180;
                    v177 = v8[v180];
                    if (!v8[v180])
                    {
                      goto LABEL_295;
                    }
                  }

                  *(v5 + 1472) = a3 + 1;
                  LOWORD(a3) = TOKEN1(v5, (a3 + 1));
                  v6 = (v6 + 1);
                }

                while (v6 < *(v5 + 1406));
              }

LABEL_295:
              v140 = v6;
              v141 = v5;
              v142 = 6;
            }

            else
            {
              if (v138 != 21)
              {
                goto LABEL_297;
              }

              LOWORD(v6) = 0;
              if (v137)
              {
                do
                {
                  v162 = *v8;
                  if (*v8)
                  {
                    v163 = v162 == 31;
                  }

                  else
                  {
                    v163 = 1;
                  }

                  if (v163)
                  {
                    break;
                  }

                  v164 = (*(v5 + 1512) + 5 * **(v5 + 1392));
                  if (*v164)
                  {
                    v165 = 0;
                    v166 = 0;
                    while (v162 == v164[v165])
                    {
                      v165 = ++v166;
                      v162 = v8[v166];
                      if (!v8[v166])
                      {
                        goto LABEL_254;
                      }
                    }
                  }

                  *(v5 + 1472) = a3 + 1;
                  LOWORD(a3) = TOKEN1(v5, (a3 + 1));
                  v6 = (v6 + 1);
                }

                while (v6 < *(v5 + 1406));
              }

LABEL_254:
              v140 = v6;
              v141 = v5;
              v142 = 8;
            }
          }

          else if (v138 == 6)
          {
            LOWORD(v6) = 0;
            if (v137)
            {
              do
              {
                if (*v8)
                {
                  v175 = *v8 == 31;
                }

                else
                {
                  v175 = 1;
                }

                if (v175)
                {
                  break;
                }

                if (strstr(*(*(*(v5 + 2128) + 8 * (**(v5 + 1392) - 1)) + 8 * *(v5 + 1405)), v8))
                {
                  break;
                }

                *(v5 + 1472) = a3 + 1;
                LOWORD(a3) = TOKEN1(v5, (a3 + 1));
                v6 = (v6 + 1);
              }

              while (v6 < *(v5 + 1406));
            }

            v140 = v6;
            v141 = v5;
            v142 = 4;
          }

          else
          {
            if (v138 != 12)
            {
              goto LABEL_297;
            }

            LOWORD(v6) = 0;
            if (v137)
            {
              do
              {
                v143 = *v8;
                if (*v8)
                {
                  v144 = v143 == 31;
                }

                else
                {
                  v144 = 1;
                }

                if (v144)
                {
                  break;
                }

                v145 = 0;
                v146 = 0;
                do
                {
                  if (v143 != *(*(v5 + 1392) + v145))
                  {
                    goto LABEL_200;
                  }

                  v145 = ++v146;
                  v143 = v8[v146];
                }

                while (v8[v146]);
                *(v5 + 1472) = a3 + 1;
                LOWORD(a3) = TOKEN1(v5, (a3 + 1));
                v6 = (v6 + 1);
              }

              while (v6 < *(v5 + 1406));
            }

LABEL_200:
            v140 = v6;
            v141 = v5;
            v142 = 5;
          }

LABEL_296:
          result = LOG_WARNING_ON_MAX_NUMBER(v141, v140, v142);
          goto LABEL_297;
        }

        if (i[3] <= 3u)
        {
          if (v138 == 2)
          {
            LOWORD(v6) = 0;
            if (v137)
            {
              while (1)
              {
                v167 = *v8;
                if (*v8)
                {
                  v168 = v167 == 31;
                }

                else
                {
                  v168 = 1;
                }

                if (v168)
                {
                  goto LABEL_268;
                }

                v169 = *(v5 + 1512);
                v170 = *(v5 + 1392);
                v171 = *v170;
                v172 = (v169 + 5 * v171);
                if (*v172)
                {
                  break;
                }

                if (VAR_APPEARENCE(v5, v171))
                {
                  *(v5 + 1480) = 1;
                  SETUTF8CHAR(v169 + 5 * *v170, v8);
LABEL_267:
                  *(v5 + 1472) = a3 + 1;
                  LOWORD(a3) = TOKEN1(v5, (a3 + 1));
                  v6 = (v6 + 1);
                  if (v6 < *(v5 + 1406))
                  {
                    continue;
                  }
                }

                goto LABEL_268;
              }

              v173 = 0;
              v174 = 0;
              while (v167 == v172[v173])
              {
                v173 = ++v174;
                v167 = v8[v174];
                if (!v8[v174])
                {
                  goto LABEL_267;
                }
              }
            }

LABEL_268:
            v140 = v6;
            v141 = v5;
            v142 = 7;
          }

          else
          {
            if (v138 != 3)
            {
              goto LABEL_297;
            }

            LOWORD(v6) = 0;
            if (v137)
            {
              do
              {
                if (*v8)
                {
                  v139 = *v8 == 31;
                }

                else
                {
                  v139 = 1;
                }

                if (v139)
                {
                  break;
                }

                if (!strstr(*(*(*(v5 + 2120) + 8 * (**(v5 + 1392) - 1)) + 8 * *(v5 + 1405)), v8))
                {
                  break;
                }

                *(v5 + 1472) = a3 + 1;
                LOWORD(a3) = TOKEN1(v5, (a3 + 1));
                v6 = (v6 + 1);
              }

              while (v6 < *(v5 + 1406));
            }

            v140 = v6;
            v141 = v5;
            v142 = 2;
          }

          goto LABEL_296;
        }

        if (v138 == 4)
        {
          LOWORD(v6) = 0;
          if (v137)
          {
            do
            {
              if (*v8)
              {
                v176 = *v8 == 31;
              }

              else
              {
                v176 = 1;
              }

              if (v176)
              {
                break;
              }

              if (strstr(*(*(*(v5 + 2120) + 8 * (**(v5 + 1392) - 1)) + 8 * *(v5 + 1405)), v8))
              {
                break;
              }

              *(v5 + 1472) = a3 + 1;
              LOWORD(a3) = TOKEN1(v5, (a3 + 1));
              v6 = (v6 + 1);
            }

            while (v6 < *(v5 + 1406));
          }

          v140 = v6;
          v141 = v5;
          v142 = 3;
          goto LABEL_296;
        }

        if (v138 == 5)
        {
          LOWORD(v6) = 0;
          if (v137)
          {
            do
            {
              if (*v8)
              {
                v161 = *v8 == 31;
              }

              else
              {
                v161 = 1;
              }

              if (v161)
              {
                break;
              }

              result = strstr(*(*(*(v5 + 2128) + 8 * (**(v5 + 1392) - 1)) + 8 * *(v5 + 1405)), v8);
              if (!result)
              {
                break;
              }

              *(v5 + 1472) = a3 + 1;
              result = TOKEN1(v5, (a3 + 1));
              LOWORD(a3) = result;
              v6 = (v6 + 1);
            }

            while (v6 < *(v5 + 1406));
          }
        }

LABEL_297:
        v181 = *(v5 + 1456);
        if (*(v181 + 1) > v6)
        {
          goto LABEL_459;
        }

        a3 = *(v5 + 1472);
        i = (v181 + 5);
        do
        {
          *(v5 + 1456) = i;
          v182 = *i++;
        }

        while (v182 < -64);
LABEL_300:
        *(v5 + 1470) = 1;
        *(v5 + 1456) = i;
        continue;
      case 19:
        v41 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v42 = a3;
            v43 = a3;
            v44 = *(v41 + 4 * a3);
            a3 = a3 + *(v5 + 1470);
          }

          while (v44 == 126);
          a3 = v42;
        }

        else
        {
          v43 = a3;
        }

        v112 = (v41 + 4 * v43);
        if (*v7 != v112)
        {
          result = Utf32SymToUtf8Sym(*v112, v8, 5u);
          v113 = (*(v5 + 1440) + 4 * v43);
          *(v5 + 1405) = *v113 & 0x3F;
          *(v5 + 2096) = v113;
          i = *(v5 + 1456);
        }

        *(v5 + 1470) = 1;
        *(v5 + 1456) = ++i;
        continue;
      case 20:
        *(v5 + 1476) = 1;
        *(v5 + 1470) = 1;
        *(v5 + 1456) = ++i;
        a3 = v286;
        continue;
      case 21:
        v37 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v38 = a3;
            v39 = a3;
            v40 = *(v37 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v40 == 126);
          LODWORD(a3) = v38;
        }

        else
        {
          v39 = a3;
        }

        v103 = (v37 + 4 * v39);
        if (*v7 != v103)
        {
          result = Utf32SymToUtf8Sym(*v103, v8, 5u);
          v104 = (*(v5 + 1440) + 4 * v39);
          *(v5 + 1405) = *v104 & 0x3F;
          *(v5 + 2096) = v104;
        }

        v105 = *v8;
        if (*v8)
        {
          v106 = v105 == 31;
        }

        else
        {
          v106 = 1;
        }

        if (v106)
        {
          goto LABEL_459;
        }

        v107 = *(v5 + 1512);
        v108 = *(v5 + 1456);
        *(v5 + 1456) = v108 + 1;
        v109 = (v107 + 5 * *(v108 + 1));
        if (!*v109)
        {
          goto LABEL_129;
        }

        v110 = 0;
        v111 = 0;
        while (v105 == v109[v110])
        {
          v110 = ++v111;
          v105 = v8[v111];
          if (!v8[v111])
          {
            goto LABEL_459;
          }
        }

LABEL_129:
        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
        i = (v108 + 2);
        *(v5 + 1456) = v108 + 2;
        continue;
      default:
        v65 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v66 = a3;
            v67 = a3;
            v68 = *(v65 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v68 == 126);
          LODWORD(a3) = v66;
        }

        else
        {
          v67 = a3;
        }

        v149 = (v65 + 4 * v67);
        if (*v7 != v149)
        {
          result = Utf32SymToUtf8Sym(*v149, v8, 5u);
          v150 = (*(v5 + 1440) + 4 * v67);
          *(v5 + 1405) = *v150 & 0x3F;
          *(v5 + 2096) = v150;
          i = *(v5 + 1456);
        }

        v151 = *v8;
        if (!*v8)
        {
          goto LABEL_459;
        }

        v152 = 0;
        v153 = 0;
        do
        {
          if (v151 != i[v152])
          {
            goto LABEL_459;
          }

          v152 = ++v153;
          v151 = v8[v153];
        }

        while (v8[v153]);
        *(v5 + 1470) = 1;
        result = strlen(v8);
        i += result;
        *(v5 + 1456) = i;
        a3 = (a3 + 1);
        continue;
    }

    break;
  }

  while (1)
  {
    v205 = *result;
    if (v205 > 0xE)
    {
      if (*result > 0x10u)
      {
        if (v205 == 17)
        {
LABEL_345:
          *(v5 + 1456) = result + 1;
          if (v201 < v203)
          {
            memmove((*(v5 + 1448) + 4 * v201), (*(v5 + 1448) + 4 * v203), 4 * (v202 - v203 + 1));
          }

          v206 = v280;
          if (v200 > v187)
          {
            result = MOVE_FOR_SUBSTITUTION(v5, v187, v280, (v200 - v187));
            if (!result)
            {
              goto LABEL_449;
            }

            v206 = v200 + v280 - v187;
            *v284 = v200 + v280 - v187;
            v187 = v200;
          }

          *(v5 + 1448) = *(v184 + 16);
          v208 = *(v184 + 562);
          goto LABEL_351;
        }

        if (v205 == 19)
        {
          if (v287 < 1)
          {
            goto LABEL_352;
          }

          v209 = 0;
          do
          {
            if (v201 >= v187)
            {
              if (v202 + 1 >= *(*(v5 + 1416) + 2 * *(v5 + 1410)) - 1)
              {
                goto LABEL_388;
              }

              v210 = v201;
              v211 = *(v5 + 1448) + 4 * v201;
              v212 = v202;
              result = memmove((v211 + 4), v211, 4 * (v202 - v201 + 1));
              v202 = (v212 + 1);
            }

            else
            {
              v210 = v201;
            }

            v200 = (v200 + 1);
            ++v203;
            LODWORD(v201) = v201 + 1;
            *(*(v5 + 1448) + 4 * v210) = 126;
            ++v209;
          }

          while (v287 > v209);
          goto LABEL_378;
        }
      }

      else
      {
        if (v205 == 15)
        {
          goto LABEL_345;
        }

        if (v205 == 16)
        {
LABEL_329:
          *(v5 + 1456) = result + 1;
          if (v201 < v203)
          {
            memmove((*(v5 + 1448) + 4 * v201), (*(v5 + 1448) + 4 * v203), 4 * (v202 - v203 + 1));
          }

          v206 = v280;
          if (v200 > v187)
          {
            result = MOVE_FOR_SUBSTITUTION(v5, v187, v280, (v200 - v187));
            if (!result)
            {
              goto LABEL_449;
            }

            v206 = v200 + v280 - v187;
            v187 = v200;
          }

          v207 = *(v5 + 1456);
          *(v5 + 1448) = *(*(v5 + 1504) + 8 * *v207 - 8);
          v208 = *v207 - 1;
LABEL_351:
          *(v5 + 1410) = v208;
          LODWORD(v201) = v200;
          v280 = v206;
          v202 = v206;
          v203 = v200;
          goto LABEL_352;
        }
      }

      goto LABEL_382;
    }

    if (*result <= 6u)
    {
      break;
    }

    if (v205 == 7)
    {
      v225 = v202;
      *(v5 + 1456) = result + 1;
      result = strlen(v204);
      if (result >= 1)
      {
        v226 = v200;
        v227 = 0;
        v202 = v225;
        do
        {
          if (v201 >= v187)
          {
            if (v202 + 1 >= *(*(v5 + 1416) + 2 * *(v5 + 1410)) - 1)
            {
              goto LABEL_388;
            }

            v228 = v227;
            if (v204[v227] >= -64)
            {
              v229 = *(v5 + 1448) + 4 * v201;
              v230 = v202;
              memmove((v229 + 4), v229, 4 * (v202 - v201 + 1));
              v202 = (v230 + 1);
            }
          }

          else
          {
            v228 = v227;
          }

          v231 = v202;
          if (v204[v228] >= -64)
          {
            v226 = (v226 + 1);
            ++v203;
            FirstUtf8SymToUtf32(&v204[v228], &v289);
            v232 = v201;
            LODWORD(v201) = v201 + 1;
            *(*(v5 + 1448) + 4 * v232) = v289;
          }

          ++v227;
          result = strlen(v204);
          v202 = v231;
        }

        while (result > v227);
        v200 = v226;
LABEL_378:
        v184 = a4;
        goto LABEL_352;
      }

      v202 = v225;
      goto LABEL_352;
    }

    if (v205 == 14)
    {
      goto LABEL_329;
    }

LABEL_382:
    v205 = v205;
    if (v201 < v187)
    {
      goto LABEL_386;
    }

    if (v202 + 1 >= *(*(v5 + 1416) + 2 * *(v5 + 1410)) - 1)
    {
      *(v5 + 1428) = -100;
      goto LABEL_449;
    }

    if (v205 >= -64)
    {
      v233 = *(v5 + 1448) + 4 * v201;
      v234 = v202;
      memmove((v233 + 4), v233, 4 * (v202 - v201 + 1));
      v202 = (v234 + 1);
      result = *(v5 + 1456);
      LOBYTE(v205) = *result;
LABEL_386:
      if (v205 >= -64)
      {
        v200 = (v200 + 1);
        ++v203;
        v235 = v202;
        FirstUtf8SymToUtf32(result, &v289);
        v202 = v235;
        v236 = v201;
        LODWORD(v201) = v201 + 1;
        *(*(v5 + 1448) + 4 * v236) = v289;
      }
    }

LABEL_352:
    result = *(v5 + 1456) + 1;
    *(v5 + 1456) = result;
  }

  if (v205 == 2)
  {
    *(v5 + 1456) = result + 1;
    v213 = *(result + 1);
    v214 = *(v5 + 46);
    v279 = v202;
    v215 = v184;
    if (v213 > v214)
    {
      result = log_OutText(*(*(v5 + 2080) + 32), "FE_DEPES", 3, 0, "warning: pActRule > nr_vars (3)");
      v213 = **(v5 + 1456);
      v214 = *(v5 + 46);
    }

    v282 = v200;
    if (v213 > v214)
    {
      *(v5 + 1428) = -100;
      goto LABEL_449;
    }

    v216 = *(v5 + 1512);
    v217 = (5 * v213);
    result = strlen((v216 + v217));
    if (result < 1)
    {
      v204 = __s;
      v184 = v215;
      v200 = v282;
      v202 = v279;
    }

    else
    {
      v281 = v187;
      v218 = 0;
      v219 = 0;
      v202 = v279;
      do
      {
        if (v201 >= v281)
        {
          if (v202 + 1 >= *(*(v5 + 1416) + 2 * *(v5 + 1410)) - 1)
          {
LABEL_388:
            *(v5 + 1428) = -100;
            v184 = a4;
            goto LABEL_449;
          }

          if (*(v216 + v217 + v218) >= -64)
          {
            v220 = *(v5 + 1448) + 4 * v201;
            v221 = v202;
            memmove((v220 + 4), v220, 4 * (v202 - v201 + 1));
            v202 = (v221 + 1);
            v216 = *(v5 + 1512);
            v213 = **(v5 + 1456);
          }
        }

        v222 = v202;
        v217 = 5 * v213;
        v223 = v217 + v218;
        if (*(v216 + v223) >= -64)
        {
          v282 = (v282 + 1);
          ++v203;
          FirstUtf8SymToUtf32((v216 + v223), &v289);
          v224 = v201;
          LODWORD(v201) = v201 + 1;
          *(*(v5 + 1448) + 4 * v224) = v289;
          v216 = *(v5 + 1512);
          v213 = **(v5 + 1456);
          LODWORD(v217) = 5 * v213;
        }

        v218 = ++v219;
        result = strlen((v216 + v217));
        v202 = v222;
      }

      while (v219 < result);
      v184 = a4;
      v204 = __s;
      v187 = v281;
      v200 = v282;
    }

    goto LABEL_352;
  }

  if (*result)
  {
    goto LABEL_382;
  }

  if (v201 < v187)
  {
    memmove((*(v5 + 1448) + 4 * v201), (*(v5 + 1448) + 4 * v187), 4 * (v202 - v187 + 1));
  }

  result = MOVE_FOR_SUBSTITUTION(v5, v187, v280, (v200 - v187));
  if (result)
  {
    *(v184 + 34) = v200 + v280 - v187;
    v193 = v200 + ~*(v184 + 32);
    if (v277 < v200)
    {
      v252 = v277;
      v200 = v200;
      do
      {
        result = Utf32SymToUtf8Sym(*(**(v5 + 1504) + 4 * v252), v290, 5u);
        v253 = v290[0];
        if (v290[0])
        {
          v254 = 0;
          do
          {
            ++*(a4 + 36 + 2 * v253);
            v253 = v290[++v254];
          }

          while (v290[v254]);
        }

        ++v252;
      }

      while (v252 != v200);
    }

    v184 = a4;
    goto LABEL_446;
  }

LABEL_449:
  if (*(v5 + 1428) == 156)
  {
    *(v5 + 1384) = 1;
    *(v184 + 548) = *(v184 + 34) - *(v184 + 32);
    *(v184 + 32) = **(v5 + 184);
    *(v184 + 30) = *(v5 + 44);
    *v7 = 0;
    v7[1] = 0;
    goto LABEL_452;
  }

  v264 = *(v5 + 1384);
  *v7 = 0;
  v7[1] = 0;
  if (v264)
  {
LABEL_452:
    *(v184 + 556) = 1;
  }

  v265 = *(v184 + 8);
  if (*(v5 + 1440) != v265)
  {
    *(v5 + 1440) = v265;
  }

  if (*(v5 + 2088) >= 6)
  {
    v266 = *(v5 + 2 * *(v5 + 1430) + 1568);
    v267 = *v284;
    Utf32LayersToUtf8Layers(v5, *v284);
    result = log_OutText(*(*(v5 + 2080) + 32), "FE_DEPES", 6, 0, "Rule number %d", a2 - *(v5 + 2 * *(v5 + 1430) + 1824));
    if (*(v5 + 24) >= 1)
    {
      v268 = 0;
      do
      {
        v269 = *(*(v5 + 1496) + 8 * v268);
        v270 = &v269[Utf8_LengthInBytes(v269, v266)];
        v271 = *(*(v5 + 1496) + 8 * v268);
        v272 = v271[Utf8_LengthInBytes(v271, v267)];
        v273 = *(*(v5 + 1496) + 8 * v268);
        v273[Utf8_LengthInBytes(v273, v267)] = 0;
        log_OutText(*(*(v5 + 2080) + 32), "FE_DEPES", 6, 0, "%s", v270);
        v274 = *(*(v5 + 1496) + 8 * v268);
        result = Utf8_LengthInBytes(v274, v267);
        v274[result] = v272;
        ++v268;
      }

      while (v268 < *(v5 + 24));
    }
  }

LABEL_459:
  if (*(v5 + 1480))
  {
    if ((*(v5 + 46) & 0x80000000) == 0)
    {
      v275 = 0;
      do
      {
        *(*(v5 + 1512) + v275) = 0;
        v275 += 5;
      }

      while (5 * *(v5 + 46) + 5 > v275);
    }

    *(v5 + 1480) = 0;
  }

  v276 = *(a4 + 8);
  if (*(v5 + 1440) != v276)
  {
    *(v5 + 1440) = v276;
  }

  return result;
}

uint64_t INFERENCE_MAIN(uint64_t a1, int a2, int a3, __int16 *a4)
{
  if (*(a1 + 24) >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = *a4;
    v17 = 0;
    while (1)
    {
      v11 = Utf8_LengthInBytes(*(*(a1 + 1496) + 8 * v8), v10 + 1);
      v12 = utf8_CheckValid(*(*(a1 + 1496) + 8 * v8), v11);
      v13 = utf8_Utf8ToUtf32_Tolerant(*(*(a1 + 1496) + 8 * v8), v11, *(*(a1 + 1504) + 8 * v8), **(a1 + 184), &v17);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      if (!v12)
      {
        v9 = 1;
      }

      if (++v8 >= *(a1 + 24))
      {
        if (v9)
        {
          log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 1, 0, "Invalid utf8 layer string found");
        }

        break;
      }
    }
  }

  v14 = 2305826816;
  INFERENCE(a1, a2, a3, a4);
  v15 = *(a1 + 1428);
  if (v15 == 155)
  {
    return 2305826826;
  }

  if (v15 != 156)
  {
    return Utf32LayersToUtf8Layers(a1, *a4);
  }

  return v14;
}

uint64_t Utf32LayersToUtf8Layers(uint64_t a1, __int16 a2)
{
  if (*(a1 + 24) < 1)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v5 = 0;
  v8 = 0;
  v6 = a2 + 1;
  do
  {
    result = utf8_Utf32ToUtf8(*(*(a1 + 1504) + 8 * v5), v6, *(*(a1 + 1496) + 8 * v5), **(a1 + 184), &v8);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v5;
  }

  while (*(a1 + 24) > v5);
  return result;
}

uint64_t CTXT(uint64_t a1)
{
  v2 = *(a1 + 1456);
  *(a1 + 1456) = v2 + 1;
  *(a1 + 1470) = *(a1 + 1468);
  *(a1 + 1464) = 0;
  result = 1;
  *(a1 + 1352) = 1;
  if (*(v2 + 1))
  {
    do
    {
      v4 = CONTEXT_CHOICE(a1);
      if (**(a1 + 1456))
      {
        v5 = v4 == 0;
      }

      else
      {
        v5 = 1;
      }
    }

    while (!v5);
    if (v4)
    {
      return 1;
    }

    v6 = a1 + 248;
    v7 = a1 + 192;
    while (1)
    {
      v8 = *(a1 + 1464);
      if (v8 < 1)
      {
        return 0;
      }

      *(a1 + 1456) = *(v6 + 8 * v8);
      *(a1 + 1466) = *(a1 + 648 + 2 * v8);
      ++*(v7 + v8);
      v9 = *(a1 + 1464);
      v10 = *(a1 + 1464);
      *(a1 + 1470) = *(a1 + 748 + 2 * v9);
      *(a1 + 1440) = *(a1 + 952 + 8 * v9);
      v11 = *(a1 + 848 + 2 * v9);
      if (v11 == 10)
      {
        *(a1 + 1464) = v10 - 1;
        if (!**(a1 + 1456))
        {
          return 1;
        }

        do
        {
          v14 = CONTEXT_CHOICE(a1);
          if (**(a1 + 1456))
          {
            v20 = v14 == 0;
          }

          else
          {
            v20 = 1;
          }
        }

        while (!v20);
        goto LABEL_44;
      }

      if (v11 == 9)
      {
        break;
      }

      if (v11 == 8)
      {
        v12 = *(v7 + v9);
        v13 = *(a1 + 1456);
        if (v12 <= v13[2])
        {
          *(a1 + 1352) = 0;
          if (!*v13)
          {
            return 1;
          }

          do
          {
            v14 = CONTEXT_CHOICE(a1);
            if (**(a1 + 1456))
            {
              v15 = v14 == 0;
            }

            else
            {
              v15 = 1;
            }
          }

          while (!v15);
          goto LABEL_44;
        }

LABEL_47:
        *(a1 + 1464) = v10 - 1;
      }

      else
      {
        v14 = 0;
LABEL_44:
        if (v14)
        {
          return 1;
        }
      }
    }

    v16 = *(a1 + 1456);
    if (*v16 == 9 && v16[1] != 1 && (*(v16 - 2) != 9 || *(v7 + v9) - 1 != *(v16 - 1)))
    {
      *(a1 + 1456) = v16 + 2;
    }

    v17 = SKIP_DATA(a1, 9, *(v7 + v9));
    v18 = *(a1 + 1456);
    if (v17)
    {
      *(v6 + 8 * *(a1 + 1464)) = v18;
      *(a1 + 1456) = v18 + 2;
      if (!*(v18 + 2))
      {
        return 1;
      }

      do
      {
        v14 = CONTEXT_CHOICE(a1);
        if (**(a1 + 1456))
        {
          v19 = v14 == 0;
        }

        else
        {
          v19 = 1;
        }
      }

      while (!v19);
      goto LABEL_44;
    }

    *(a1 + 1456) = v18 + 2;
    v10 = *(a1 + 1464);
    goto LABEL_47;
  }

  return result;
}

uint64_t VAR_APPEARENCE(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 104) + 2 * a2;
  v3 = *(v2 - 2);
  if (v3 == 5)
  {
    v4 = *(a1 + 2128);
LABEL_5:
    result = strstr(*(*(v4 + 8 * *(v2 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400));
    if (!result)
    {
      return result;
    }

    return 1;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 2120);
    goto LABEL_5;
  }

  return 1;
}

uint64_t SETUTF8CHAR(uint64_t result, char *a2)
{
  v2 = result;
  if (*a2 < -64 || (result = utf8_determineUTF8CharLength(*a2), result < 1))
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      *(v2 + v4) = a2[v4];
      ++v4;
    }

    while (result > v4);
    v5 = v4;
  }

  *(v2 + v5) = 0;
  return result;
}

uint64_t CHECK_OF_LIST(uint64_t a1, unsigned __int16 a2, int a3)
{
  *(a1 + 1360) = 0;
  v4 = *(a1 + 1456);
  v5 = *v4;
  result = 1;
  if (v5 != a2)
  {
    v7 = a2;
    v8 = (a1 + 1400);
    v9 = a3;
    v10 = "FE_DEPES";
    v11 = "warning: pActRule > nr_vars (1)";
    v12 = "warning: pActRule > nr_vars (2)";
LABEL_3:
    v13 = v4 + 1;
    *(a1 + 1456) = v4 + 1;
    switch(v5)
    {
      case 2:
        v38 = *v13;
        v39 = *(a1 + 46);
        if (v38 > v39)
        {
          log_OutText(*(*(a1 + 2080) + 32), v10, 3, 0, v11);
          v13 = *(a1 + 1456);
          v38 = *v13;
          v39 = *(a1 + 46);
        }

        if (v38 > v39)
        {
          return 0;
        }

        v40 = *(a1 + 1512);
        v41 = (v40 + 5 * v38);
        if (*v41)
        {
          v42 = *v8;
          if (!*v8)
          {
            goto LABEL_87;
          }

          v43 = 0;
          v44 = 0;
          do
          {
            if (v42 != v41[v43])
            {
              goto LABEL_87;
            }

            v43 = ++v44;
            v42 = v8[v44];
          }

          while (v8[v44]);
        }

        else
        {
          if (!VAR_APPEARENCE(a1, v38))
          {
            goto LABEL_87;
          }

          *(a1 + 1480) = 1;
          SETUTF8CHAR(v40 + 5 * *v13, (a1 + 1400));
        }

        goto LABEL_83;
      case 3:
        if (*v8)
        {
          v46 = *v8 == 31;
        }

        else
        {
          v46 = 1;
        }

        if (v46)
        {
          goto LABEL_87;
        }

        v37 = *(a1 + 2120);
        goto LABEL_58;
      case 4:
        if (*v8)
        {
          v45 = *v8 == 31;
        }

        else
        {
          v45 = 1;
        }

        if (v45)
        {
          goto LABEL_87;
        }

        v24 = *(a1 + 2120);
        goto LABEL_51;
      case 5:
        if (*v8)
        {
          v36 = *v8 == 31;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
          goto LABEL_87;
        }

        v37 = *(a1 + 2128);
LABEL_58:
        if (!strstr(*(*(v37 + 8 * (*v13 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      case 6:
        if (*v8)
        {
          v23 = *v8 == 31;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          goto LABEL_87;
        }

        v24 = *(a1 + 2128);
LABEL_51:
        if (strstr(*(*(v24 + 8 * (*v13 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      case 7:
        v58 = v7;
        v25 = v12;
        v26 = v10;
        v27 = v11;
        v28 = *v13;
        v29 = v28 - 1;
        if (!strstr(*(*(*(a1 + 2128) + 8 * (v28 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        v30 = *(a1 + 88);
        v31 = strstr((v30 + (v29 << 8)), (a1 + 1400));
        if (!v31 || !*v8 || *v8 == 31)
        {
          goto LABEL_87;
        }

        v32 = v30 + (v28 << 8);
        if (v29)
        {
          v35 = (v32 + v31[256 * v29 + *(a1 + 96) - v30 + -256 * v29] - 512);
          v34 = a1 + 1484;
        }

        else
        {
          v33 = v31[256 * v29 + *(a1 + 96) - v30 + -256 * v29];
          v34 = a1 + 1484;
          v35 = (v32 + v33);
        }

        SETUTF8CHAR(v34, v35);
        v11 = v27;
        v10 = v26;
        v12 = v25;
        v7 = v58;
        goto LABEL_83;
      case 12:
        v47 = *v8;
        if (*v8)
        {
          v48 = v47 == 31;
        }

        else
        {
          v48 = 1;
        }

        if (v48)
        {
          goto LABEL_87;
        }

        v49 = 0;
        v50 = 0;
        do
        {
          if (v47 != v13[v49])
          {
            goto LABEL_87;
          }

          v49 = ++v50;
          v47 = v8[v50];
        }

        while (v8[v50]);
        v4 = &v13[strlen((a1 + 1400))];
        goto LABEL_84;
      case 13:
        v51 = *v8;
        if (*v8)
        {
          v52 = v51 == 31;
        }

        else
        {
          v52 = 1;
        }

        if (v52)
        {
          goto LABEL_87;
        }

        v53 = 0;
        v54 = 0;
        while (v51 == v13[v53])
        {
          v53 = ++v54;
          v51 = v8[v54];
          if (!v8[v54])
          {
            goto LABEL_87;
          }
        }

        v55 = v4 + 2;
        do
        {
          *(a1 + 1456) = v55;
          v56 = *v55++;
        }

        while (v56 < -64);
        v4 = v55 - 1;
        goto LABEL_85;
      case 14:
      case 16:
        *(a1 + 1360) = *(a1 + 1440);
        v14 = *(*(a1 + 1504) + 8 * *v13 - 8);
        *(a1 + 1440) = v14;
        goto LABEL_7;
      case 15:
      case 17:
        v14 = *(a1 + 1360);
        if (!v14)
        {
          return 0;
        }

        *(a1 + 1440) = v14;
        *(a1 + 1360) = 0;
LABEL_7:
        v15 = (v14 + 4 * v9);
        if (*(a1 + 2096) != v15)
        {
          Utf32SymToUtf8Sym(*v15, (a1 + 1400), 5u);
          v16 = (*(a1 + 1440) + 4 * v9);
          *(a1 + 1405) = *v16 & 0x3F;
          *(a1 + 2096) = v16;
        }

        result = 0;
        if (!*v8 || *v8 == 31)
        {
          return result;
        }

        goto LABEL_83;
      case 21:
        v17 = *v13;
        v18 = *(a1 + 46);
        if (v17 > v18)
        {
          log_OutText(*(*(a1 + 2080) + 32), v10, 3, 0, v12);
          v17 = **(a1 + 1456);
          v18 = *(a1 + 46);
        }

        if (v17 > v18)
        {
          return 0;
        }

        v19 = (*(a1 + 1512) + 5 * v17);
        if (!*v19)
        {
          goto LABEL_83;
        }

        v20 = *v8;
        if (!*v8)
        {
          goto LABEL_83;
        }

        v21 = 0;
        v22 = 0;
        break;
      default:
        goto LABEL_83;
    }

    do
    {
      if (v20 != v19[v21])
      {
LABEL_83:
        v4 = (*(a1 + 1456) + 1);
LABEL_84:
        *(a1 + 1456) = v4;
LABEL_85:
        v5 = *v4;
        if (v5 == v7)
        {
          return 1;
        }

        goto LABEL_3;
      }

      v21 = ++v22;
      v20 = v8[v22];
    }

    while (v8[v22]);
LABEL_87:
    v57 = *(a1 + 1360);
    if (v57)
    {
      result = 0;
      *(a1 + 1440) = v57;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TOKEN1(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 3, 0, "warning: nr < 0 (2)");
  }

  v4 = *(a1 + 1440);
  do
  {
    v5 = v2;
    v6 = *(v4 + 4 * v2++);
  }

  while (v6 == 126);
  if (*(a1 + 2096) != v4 + 4 * v5)
  {
    Utf32SymToUtf8Sym(v6, (a1 + 1400), 5u);
    v7 = (*(a1 + 1440) + 4 * v5);
    *(a1 + 1405) = *v7 & 0x3F;
    *(a1 + 2096) = v7;
  }

  return v5;
}

uint64_t LOG_WARNING_ON_MAX_NUMBER(uint64_t result, int a2, int a3)
{
  if (a2 >= 5000 && *(result + 2088) >= 3)
  {
    return log_OutText(*(*(result + 2080) + 32), "FE_DEPES", 3, 0, "warning: number of iterations >= MAX_NUMBER_UPPER_BOUND, output might be incorrect (%u)", a3);
  }

  return result;
}

uint64_t CONTEXT_CHOICE(uint64_t a1)
{
  v2 = *(a1 + 1456);
  switch(*v2)
  {
    case 2:
      v43 = *(a1 + 1466);
      if (v43 < 0)
      {
        return 0;
      }

      v44 = TOKEN(a1, v43, *(a1 + 1470));
      v18 = 0;
      *(a1 + 1466) = v44;
      v45 = *(a1 + 1456);
      *(a1 + 1456) = v45 + 1;
      v46 = *(v45 + 1);
      v47 = *(a1 + 1468);
      *(a1 + 1470) = v47;
      *(a1 + 1456) = v45 + 2;
      *(a1 + 1466) = v47 + v44;
      v48 = *(a1 + 1400);
      if (*(a1 + 1400) && v48 != 31)
      {
        v49 = a1 + 1400;
        v50 = (*(a1 + 1512) + 5 * v46);
        if (*v50)
        {
          v51 = 0;
          v52 = 0;
          v18 = 1;
          do
          {
            if (v48 != v50[v51])
            {
              return 0;
            }

            v51 = ++v52;
            v48 = *(v49 + v52);
          }

          while (*(v49 + v52));
        }

        else
        {
          if (!VAR_APPEARENCE(a1, v46))
          {
            return 0;
          }

          v18 = 1;
          *(a1 + 1480) = 1;
          SETUTF8CHAR(v50, (a1 + 1400));
        }
      }

      return v18;
    case 3:
      v23 = *(a1 + 1466);
      if (v23 < 0)
      {
        return 0;
      }

      v24 = TOKEN(a1, v23, *(a1 + 1470));
      v18 = 0;
      *(a1 + 1466) = v24;
      v25 = *(a1 + 1456);
      *(a1 + 1456) = v25 + 1;
      v26 = *(v25 + 1);
      v27 = *(a1 + 1468);
      *(a1 + 1470) = v27;
      *(a1 + 1456) = v25 + 2;
      *(a1 + 1466) = v27 + v24;
      if (*(a1 + 1400) && *(a1 + 1400) != 31)
      {
        v28 = *(a1 + 2120);
        return strstr(*(*(v28 + 8 * (v26 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) != 0;
      }

      return v18;
    case 4:
      v53 = *(a1 + 1466);
      if (v53 < 0)
      {
        return 0;
      }

      v54 = TOKEN(a1, v53, *(a1 + 1470));
      v18 = 0;
      *(a1 + 1466) = v54;
      v55 = *(a1 + 1456);
      *(a1 + 1456) = v55 + 1;
      v20 = *(v55 + 1);
      v56 = *(a1 + 1468);
      *(a1 + 1470) = v56;
      *(a1 + 1456) = v55 + 2;
      *(a1 + 1466) = v56 + v54;
      if (*(a1 + 1400) && *(a1 + 1400) != 31)
      {
        v22 = *(a1 + 2120);
        return strstr(*(*(v22 + 8 * (v20 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) == 0;
      }

      return v18;
    case 5:
      v39 = *(a1 + 1466);
      if (v39 < 0)
      {
        return 0;
      }

      v40 = TOKEN(a1, v39, *(a1 + 1470));
      v18 = 0;
      *(a1 + 1466) = v40;
      v41 = *(a1 + 1456);
      *(a1 + 1456) = v41 + 1;
      v26 = *(v41 + 1);
      v42 = *(a1 + 1468);
      *(a1 + 1470) = v42;
      *(a1 + 1456) = v41 + 2;
      *(a1 + 1466) = v42 + v40;
      if (*(a1 + 1400) && *(a1 + 1400) != 31)
      {
        v28 = *(a1 + 2128);
        return strstr(*(*(v28 + 8 * (v26 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) != 0;
      }

      return v18;
    case 6:
      v16 = *(a1 + 1466);
      if (v16 < 0)
      {
        return 0;
      }

      v17 = TOKEN(a1, v16, *(a1 + 1470));
      v18 = 0;
      *(a1 + 1466) = v17;
      v19 = *(a1 + 1456);
      *(a1 + 1456) = v19 + 1;
      v20 = *(v19 + 1);
      v21 = *(a1 + 1468);
      *(a1 + 1470) = v21;
      *(a1 + 1456) = v19 + 2;
      *(a1 + 1466) = v21 + v17;
      if (*(a1 + 1400) && *(a1 + 1400) != 31)
      {
        v22 = *(a1 + 2128);
        return strstr(*(*(v22 + 8 * (v20 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) == 0;
      }

      return v18;
    case 8:
      *(a1 + 1456) = v2 + 3;
      if (*(a1 + 1352))
      {
        v29 = *(a1 + 1464) + 1;
        *(a1 + 1464) = v29;
        *(a1 + 2 * v29 + 848) = 8;
        v30 = *(a1 + 1464);
        *(a1 + 8 * v30 + 952) = *(a1 + 1440);
        v31 = a1 + 248;
        *(a1 + 248 + 8 * v30) = *(a1 + 1456) - 3;
        v32 = a1 + 192;
        *(a1 + 192 + v30) = 0;
        v33 = *(a1 + 1464);
        if (*(a1 + 192 + v33) >= *(*(a1 + 248 + 8 * v33) + 1))
        {
          v36 = *(a1 + 1470);
          v18 = 1;
          v37 = 1;
        }

        else
        {
          v34 = *(a1 + 1466);
          do
          {
            if (v34 < 0)
            {
              return 0;
            }

            *(a1 + 1466) = TOKEN(a1, v34, *(a1 + 1470));
            ++*(v32 + *(a1 + 1464));
            *(a1 + 1456) = *(v31 + 8 * *(a1 + 1464)) + 3;
            v35 = CHECK_OF_LIST(a1, 8u, *(a1 + 1466));
            v36 = *(a1 + 1468);
            *(a1 + 1470) = v36;
            v34 = *(a1 + 1466) + v36;
            *(a1 + 1466) = v34;
            v33 = *(a1 + 1464);
            v37 = v35 != 0;
            v38 = *(v32 + v33) >= *(*(v31 + 8 * v33) + 1) || v35 == 0;
          }

          while (!v38);
          v18 = v35;
        }

        *(a1 + 2 * v33 + 748) = v36;
        v115 = *(a1 + 1464);
        if (!*(v32 + v115))
        {
          v116 = *(a1 + 1456);
          if (*v116 != 8)
          {
            v117 = v116 + 1;
            do
            {
              *(a1 + 1456) = v117;
              v118 = *v117++;
            }

            while (v118 != 8);
          }
        }

        *(a1 + 2 * v115 + 648) = *(a1 + 1466);
        if (!v37)
        {
LABEL_117:
          --*(a1 + 1464);
        }
      }

      else
      {
        v111 = *(a1 + 1466);
        if (v111 < 0)
        {
          return 0;
        }

        v112 = TOKEN(a1, v111, *(a1 + 1470));
        *(a1 + 1466) = v112;
        *(a1 + 1352) = 1;
        v18 = CHECK_OF_LIST(a1, 8u, v112);
        v113 = *(a1 + 1468);
        *(a1 + 2 * *(a1 + 1464) + 748) = v113;
        *(a1 + 1470) = v113;
        v114 = *(a1 + 1466) + v113;
        *(a1 + 1466) = v114;
        *(a1 + 2 * *(a1 + 1464) + 648) = v114;
        if (!v18)
        {
          goto LABEL_117;
        }
      }

      ++*(a1 + 1456);
      return v18;
    case 9:
      v65 = (v2 + 1);
      *(a1 + 1456) = v2 + 1;
      v66 = v2[1];
      if (v66)
      {
        if (v66 == 1)
        {
          v67 = *(a1 + 1464) + 1;
          *(a1 + 1464) = v67;
          *(a1 + 2 * v67 + 748) = *(a1 + 1470);
          v68 = *(a1 + 1464);
          *(a1 + 8 * v68 + 952) = *(a1 + 1440);
          *(a1 + 2 * v68 + 848) = 9;
          *(a1 + 2 * *(a1 + 1464) + 648) = *(a1 + 1466);
          *(a1 + *(a1 + 1464) + 192) = **(a1 + 1456);
          *(a1 + 8 * *(a1 + 1464) + 248) = *(a1 + 1456) + 1;
          v65 = *(a1 + 1456);
        }

        else
        {
          SKIP_DATA(a1, 9, 0);
          v65 = *(a1 + 1456) + 1;
        }
      }

      goto LABEL_242;
    case 0xA:
      *(a1 + 1456) = v2 + 1;
      if (v2[1])
      {
        v69 = *(a1 + 1464) + 1;
        *(a1 + 1464) = v69;
        *(a1 + 2 * v69 + 748) = *(a1 + 1470);
        v70 = *(a1 + 1464);
        *(a1 + 8 * v70 + 952) = *(a1 + 1440);
        *(a1 + 2 * v70 + 848) = 10;
        *(a1 + 2 * *(a1 + 1464) + 648) = *(a1 + 1466);
        v71 = *(a1 + 1464);
        *(a1 + 8 * v71 + 248) = *(a1 + 1456) + 1;
        *(a1 + v71 + 192) = 0;
        SKIP_DATA(a1, 10, 0);
        v2 = *(a1 + 1456);
      }

      goto LABEL_5;
    case 0xB:
      v91 = *(a1 + 1466);
      *(a1 + 1472) = *(a1 + 1466);
      if (v91 < 0)
      {
        return 0;
      }

      v92 = TOKEN(a1, v91, *(a1 + 1470));
      *(a1 + 1466) = v92;
      v93 = *(a1 + 1456);
      v94 = *(v93 + 2);
      if (v94 == 220)
      {
        v94 = 5000;
      }

      *(a1 + 1406) = v94;
      if (v94 && (*(a1 + 1456) = v93 + 3, CHECK_OF_LIST(a1, 0xBu, v92)))
      {
        LOWORD(v95) = 0;
        do
        {
          v96 = *(a1 + 1456);
          v97 = *(a1 + 1468);
          v98 = v97 + *(a1 + 1466);
          *(a1 + 1466) += *(a1 + 1468);
          *(a1 + 1472) = v98;
          if (v98 < 0)
          {
            return 0;
          }

          v99 = TOKEN(a1, v98, v97);
          *(a1 + 1466) = v99;
          v95 = (v95 + 1);
          if (v95 >= *(a1 + 1406))
          {
            break;
          }

          *(a1 + 1456) = v93 + 3;
        }

        while (CHECK_OF_LIST(a1, 0xBu, v99));
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      LOG_WARNING_ON_MAX_NUMBER(a1, v95, 9);
      *(a1 + 1466) = *(a1 + 1472);
      if (v96)
      {
        *(a1 + 1456) = v96;
      }

      else
      {
        v96 = *(a1 + 1456);
      }

      for (i = v96 + 1; ; ++i)
      {
        if (*(i - 1) == 11)
        {
          v131 = *(i - 2);
          v132 = v131 > 0x15;
          v133 = (1 << v131) & 0x20067C;
          if (v132 || v133 == 0)
          {
            break;
          }

          v135 = *(i - 3);
          v132 = v135 > 0x15;
          v136 = (1 << v135) & 0x20C67C;
          if (!v132 && v136 != 0)
          {
            break;
          }
        }

        *(a1 + 1456) = i;
      }

      *(a1 + 1470) = *(a1 + 1468);
      *(a1 + 1456) = i;
      return v95 >= *(v93 + 1);
    case 0xC:
      v83 = *(a1 + 1466);
      if (v83 < 0)
      {
        return 0;
      }

      v84 = TOKEN(a1, v83, *(a1 + 1470));
      v85 = *(a1 + 1456);
      v86 = *(a1 + 1468);
      *(a1 + 1470) = v86;
      *(a1 + 1466) = v86 + v84;
      *(a1 + 1456) = v85 + 2;
      v9 = *(a1 + 1400);
      if (*(a1 + 1400))
      {
        v87 = 0;
        v88 = 0;
        v89 = a1 + 1400;
        v90 = *(a1 + 1400);
        do
        {
          v15 = v90 == *(v85 + 1 + v87);
          if (v90 != *(v85 + 1 + v87))
          {
            break;
          }

          v87 = ++v88;
          v90 = *(v89 + v88);
        }

        while (*(v89 + v88));
      }

      else
      {
        v15 = 0;
      }

      if (*(v85 + 2) <= -65)
      {
        v127 = (v85 + 3);
        do
        {
          *(a1 + 1456) = v127;
          v128 = *v127++;
        }

        while (v128 < -64);
      }

      goto LABEL_143;
    case 0xD:
      v5 = *(a1 + 1466);
      if (v5 < 0)
      {
        return 0;
      }

      v6 = TOKEN(a1, v5, *(a1 + 1470));
      v7 = *(a1 + 1456);
      v8 = *(a1 + 1468);
      *(a1 + 1470) = v8;
      *(a1 + 1466) = v8 + v6;
      *(a1 + 1456) = v7 + 2;
      v9 = *(a1 + 1400);
      if (*(a1 + 1400))
      {
        v10 = 0;
        v11 = 0;
        v12 = a1 + 1400;
        v13 = *(a1 + 1400);
        do
        {
          v14 = *(v7 + 1 + v10);
          v38 = v13 == v14;
          v15 = v13 != v14;
          if (!v38)
          {
            break;
          }

          v10 = ++v11;
          v13 = *(v12 + v11);
        }

        while (*(v12 + v11));
      }

      else
      {
        v15 = 1;
      }

      if (*(v7 + 2) <= -65)
      {
        v125 = (v7 + 3);
        do
        {
          *(a1 + 1456) = v125;
          v126 = *v125++;
        }

        while (v126 < -64);
      }

LABEL_143:
      if (v9)
      {
        v129 = v15;
      }

      else
      {
        v129 = 0;
      }

      return v9 != 31 && v129;
    case 0xE:
    case 0x10:
      *(a1 + 1456) = v2 + 1;
      *(a1 + 1376) = *(a1 + 1440);
      v3 = *(*(a1 + 1504) + 8 * v2[1] - 8);
      goto LABEL_4;
    case 0xF:
    case 0x11:
      v3 = *(a1 + 1376);
LABEL_4:
      *(a1 + 1440) = v3;
      *(a1 + 1470) = 0;
LABEL_5:
      v4 = (v2 + 2);
      goto LABEL_243;
    case 0x12:
      v72 = *(a1 + 1466);
      *(a1 + 1472) = *(a1 + 1466);
      if (v72 < 0)
      {
        return 0;
      }

      v73 = TOKEN(a1, v72, *(a1 + 1470));
      LOWORD(v74) = 0;
      *(a1 + 1466) = v73;
      v75 = *(a1 + 1456);
      v76 = *(v75 + 2);
      if (v76 == 220)
      {
        v76 = 5000;
      }

      *(a1 + 1406) = v76;
      *(a1 + 1392) = v75 + 4;
      v77 = *(v75 + 3);
      if (v77 > 5)
      {
        if (v77 > 12)
        {
          if (v77 == 13)
          {
            LOWORD(v74) = 0;
            if (v76)
            {
              v159 = (a1 + 1400);
              do
              {
                v160 = *v159;
                if (!*v159 || v160 == 31)
                {
                  break;
                }

                v162 = 0;
                v163 = 0;
                while (v160 == *(*(a1 + 1392) + v162))
                {
                  v162 = ++v163;
                  v160 = v159[v163];
                  if (!v159[v163])
                  {
                    goto LABEL_234;
                  }
                }

                v164 = *(a1 + 1468);
                *(a1 + 1466) = *(a1 + 1468) + v73;
                *(a1 + 1472) = v164 + v73;
                if (((v164 + v73) & 0x8000) != 0)
                {
                  return 0;
                }

                v73 = TOKEN(a1, (v164 + v73), v164);
                *(a1 + 1466) = v73;
                v74 = (v74 + 1);
              }

              while (v74 < *(a1 + 1406));
            }

LABEL_234:
            v80 = v74;
            v81 = a1;
            v82 = 14;
          }

          else
          {
            if (v77 != 21)
            {
              goto LABEL_236;
            }

            LOWORD(v74) = 0;
            if (v76)
            {
              v140 = (a1 + 1400);
              do
              {
                v141 = *v140;
                if (!*v140 || v141 == 31)
                {
                  break;
                }

                v143 = (*(a1 + 1512) + 5 * **(a1 + 1392));
                if (*v143)
                {
                  v144 = 0;
                  v145 = 0;
                  while (v141 == v143[v144])
                  {
                    v144 = ++v145;
                    v141 = v140[v145];
                    if (!v140[v145])
                    {
                      goto LABEL_188;
                    }
                  }
                }

                v146 = *(a1 + 1468);
                *(a1 + 1466) = *(a1 + 1468) + v73;
                *(a1 + 1472) = v146 + v73;
                if (((v146 + v73) & 0x8000) != 0)
                {
                  return 0;
                }

                v73 = TOKEN(a1, (v146 + v73), v146);
                *(a1 + 1466) = v73;
                v74 = (v74 + 1);
              }

              while (v74 < *(a1 + 1406));
            }

LABEL_188:
            v80 = v74;
            v81 = a1;
            v82 = 16;
          }
        }

        else if (v77 == 6)
        {
          LOWORD(v74) = 0;
          if (v76)
          {
            do
            {
              if (*(a1 + 1400))
              {
                v155 = *(a1 + 1400) == 31;
              }

              else
              {
                v155 = 1;
              }

              if (v155 || strstr(*(*(*(a1 + 2128) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
              {
                break;
              }

              v156 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v73;
              *(a1 + 1472) = v156 + v73;
              if (((v156 + v73) & 0x8000) != 0)
              {
                return 0;
              }

              v73 = TOKEN(a1, (v156 + v73), v156);
              *(a1 + 1466) = v73;
              v74 = (v74 + 1);
            }

            while (v74 < *(a1 + 1406));
          }

          v80 = v74;
          v81 = a1;
          v82 = 12;
        }

        else
        {
          if (v77 != 12)
          {
            goto LABEL_236;
          }

          LOWORD(v74) = 0;
          if (v76)
          {
            v119 = (a1 + 1400);
            do
            {
              v120 = *v119;
              if (!*v119 || v120 == 31)
              {
                break;
              }

              v122 = 0;
              v123 = 0;
              do
              {
                if (v120 != *(*(a1 + 1392) + v122))
                {
                  goto LABEL_133;
                }

                v122 = ++v123;
                v120 = v119[v123];
              }

              while (v119[v123]);
              v124 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v73;
              *(a1 + 1472) = v124 + v73;
              if (((v124 + v73) & 0x8000) != 0)
              {
                return 0;
              }

              v73 = TOKEN(a1, (v124 + v73), v124);
              *(a1 + 1466) = v73;
              v74 = (v74 + 1);
            }

            while (v74 < *(a1 + 1406));
          }

LABEL_133:
          v80 = v74;
          v81 = a1;
          v82 = 13;
        }

        goto LABEL_235;
      }

      if (v77 <= 3)
      {
        if (v77 == 2)
        {
          LOWORD(v74) = 0;
          if (v76)
          {
            v147 = (a1 + 1400);
            while (1)
            {
              v148 = *(a1 + 1512);
              v149 = *(a1 + 1392);
              v150 = 5 * *v149;
              if (*(v148 + v150))
              {
                break;
              }

              if (!VAR_APPEARENCE(a1, v150))
              {
                goto LABEL_203;
              }

              *(a1 + 1480) = 1;
              SETUTF8CHAR(v148 + 5 * *v149, (a1 + 1400));
              v73 = *(a1 + 1466);
LABEL_201:
              v154 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v73;
              *(a1 + 1472) = v154 + v73;
              if (((v154 + v73) & 0x8000) != 0)
              {
                return 0;
              }

              v73 = TOKEN(a1, (v154 + v73), v154);
              *(a1 + 1466) = v73;
              v74 = (v74 + 1);
              if (v74 >= *(a1 + 1406))
              {
                goto LABEL_203;
              }
            }

            v151 = *v147;
            if (*v147)
            {
              v152 = 0;
              v153 = 0;
              while (v151 == *(v148 + v150 + v152))
              {
                v152 = ++v153;
                v151 = v147[v153];
                if (!v147[v153])
                {
                  goto LABEL_201;
                }
              }
            }
          }

LABEL_203:
          v80 = v74;
          v81 = a1;
          v82 = 15;
        }

        else
        {
          if (v77 != 3)
          {
            goto LABEL_236;
          }

          LOWORD(v74) = 0;
          if (v76)
          {
            do
            {
              if (*(a1 + 1400))
              {
                v78 = *(a1 + 1400) == 31;
              }

              else
              {
                v78 = 1;
              }

              if (v78 || !strstr(*(*(*(a1 + 2120) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
              {
                break;
              }

              v79 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v73;
              *(a1 + 1472) = v79 + v73;
              if (((v79 + v73) & 0x8000) != 0)
              {
                return 0;
              }

              v73 = TOKEN(a1, (v79 + v73), v79);
              *(a1 + 1466) = v73;
              v74 = (v74 + 1);
            }

            while (v74 < *(a1 + 1406));
          }

          v80 = v74;
          v81 = a1;
          v82 = 10;
        }

        goto LABEL_235;
      }

      if (v77 == 4)
      {
        LOWORD(v74) = 0;
        if (v76)
        {
          do
          {
            if (*(a1 + 1400))
            {
              v157 = *(a1 + 1400) == 31;
            }

            else
            {
              v157 = 1;
            }

            if (v157 || strstr(*(*(*(a1 + 2120) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
            {
              break;
            }

            v158 = *(a1 + 1468);
            *(a1 + 1466) = *(a1 + 1468) + v73;
            *(a1 + 1472) = v158 + v73;
            if (((v158 + v73) & 0x8000) != 0)
            {
              return 0;
            }

            v73 = TOKEN(a1, (v158 + v73), v158);
            *(a1 + 1466) = v73;
            v74 = (v74 + 1);
          }

          while (v74 < *(a1 + 1406));
        }

        v80 = v74;
        v81 = a1;
        v82 = 11;
LABEL_235:
        LOG_WARNING_ON_MAX_NUMBER(v81, v80, v82);
        goto LABEL_236;
      }

      LOWORD(v74) = 0;
      if (v76)
      {
        do
        {
          if (*(a1 + 1400))
          {
            v138 = *(a1 + 1400) == 31;
          }

          else
          {
            v138 = 1;
          }

          if (v138 || !strstr(*(*(*(a1 + 2128) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
          {
            break;
          }

          v139 = *(a1 + 1468);
          *(a1 + 1466) = *(a1 + 1468) + v73;
          *(a1 + 1472) = v139 + v73;
          if (((v139 + v73) & 0x8000) != 0)
          {
            return 0;
          }

          v73 = TOKEN(a1, (v139 + v73), v139);
          *(a1 + 1466) = v73;
          v74 = (v74 + 1);
        }

        while (v74 < *(a1 + 1406));
      }

LABEL_236:
      v165 = *(a1 + 1456);
      if (*(v165 + 1) > v74)
      {
        return 0;
      }

      *(a1 + 1466) = *(a1 + 1472);
      v65 = v165 + 5;
      *(a1 + 1456) = v165 + 5;
      *(a1 + 1470) = *(a1 + 1468);
      if (*(v165 + 5) <= -65)
      {
        v166 = (v165 + 6);
        do
        {
          *(a1 + 1456) = v166;
          v167 = *v166++;
        }

        while (v167 < -64);
        v65 = (v166 - 1);
      }

LABEL_242:
      v4 = v65 + 1;
LABEL_243:
      *(a1 + 1456) = v4;
      return 1;
    case 0x13:
      v110 = *(a1 + 1466);
      if (v110 < 0)
      {
        return 0;
      }

      *(a1 + 1466) = TOKEN(a1, v110, *(a1 + 1470));
      *(a1 + 1470) = *(a1 + 1468);
      v4 = *(a1 + 1456) + 1;
      goto LABEL_243;
    case 0x15:
      v100 = *(a1 + 1466);
      if (v100 < 0)
      {
        return 0;
      }

      v101 = TOKEN(a1, v100, *(a1 + 1470));
      v18 = 0;
      *(a1 + 1466) = v101;
      v102 = *(a1 + 1456);
      *(a1 + 1456) = v102 + 1;
      v103 = *(v102 + 1);
      v104 = *(a1 + 1468);
      *(a1 + 1470) = v104;
      *(a1 + 1456) = v102 + 2;
      *(a1 + 1466) = v104 + v101;
      v105 = *(a1 + 1400);
      if (!*(a1 + 1400) || v105 == 31)
      {
        return v18;
      }

      v106 = (*(a1 + 1512) + 5 * v103);
      if (!*v106)
      {
        return 1;
      }

      v107 = 0;
      v108 = 0;
      v109 = a1 + 1400;
      while (v105 == v106[v107])
      {
        v18 = 0;
        v107 = ++v108;
        v105 = *(v109 + v108);
        if (!*(v109 + v108))
        {
          return v18;
        }
      }

      return 1;
    default:
      v57 = *(a1 + 1466);
      if (v57 < 0)
      {
        return 0;
      }

      v58 = TOKEN(a1, v57, *(a1 + 1470));
      *(a1 + 1466) = v58;
      v59 = *(a1 + 1468);
      *(a1 + 1470) = v59;
      v60 = (a1 + 1400);
      v61 = *(a1 + 1456);
      v62 = *(a1 + 1400);
      if (!*(a1 + 1400))
      {
        goto LABEL_102;
      }

      v63 = 0;
      v64 = 0;
      while (v62 == *(v61 + v63))
      {
        v63 = ++v64;
        v62 = v60[v64];
        if (!v60[v64])
        {
          v18 = 1;
          goto LABEL_103;
        }
      }

LABEL_102:
      v18 = 0;
LABEL_103:
      *(a1 + 1456) = v61 + strlen(v60);
      *(a1 + 1466) = v59 + v58;
      return v18;
  }
}

uint64_t SKIP_DATA(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = *(a1 + 1456);
  LOBYTE(v8) = *v7;
  while (1)
  {
    if (a2 != v8)
    {
LABEL_11:
      if (a2 != 10 || v8 != 10 || !v6)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v6 = v7[1];
    if (v6 == a3)
    {
      v9 = *(v7 - 1);
      v10 = v9 > 0x15;
      v11 = (1 << v9) & 0x20067C;
      if (v10 || v11 == 0)
      {
        return 1;
      }

      v13 = *(v7 - 2) - 2;
      if (v13 < 0x14 && ((0x8319Fu >> v13) & 1) != 0)
      {
        return 1;
      }
    }

    if (v6 != 1)
    {
      goto LABEL_11;
    }

LABEL_14:
    v14 = *(v7 - 1);
    v10 = v14 > 0x15;
    v15 = (1 << v14) & 0x20067C;
    v16 = v10 || v15 == 0;
    if (v16 || (v17 = *(v7 - 2), v17 <= 0x15) && ((1 << v17) & 0x20C67C) != 0)
    {
      *(a1 + 1456) = v7 + 1;
      SKIP_DATA(a1, a2, 0);
      v18 = *(a1 + 1456) + 1;
      goto LABEL_22;
    }

LABEL_21:
    v18 = v7;
LABEL_22:
    v7 = (v18 + 1);
    *(a1 + 1456) = v18 + 1;
    v8 = *(v18 + 1);
    if (v8 == a2 && !*(v18 + 2))
    {
      return 0;
    }
  }
}

uint64_t TOKEN(uint64_t a1, int a2, int a3)
{
  v4 = a2;
  if (a2 < 0)
  {
    log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 3, 0, "warning: nr < 0 (1)");
  }

  v6 = *(a1 + 1440);
  if (a3)
  {
    do
    {
      v7 = v4;
      v8 = *(v6 + 4 * v4);
      v4 += a3;
    }

    while (v8 == 126);
  }

  else
  {
    v7 = v4;
  }

  v9 = v7;
  v10 = (v6 + 4 * v7);
  if (*(a1 + 2096) != v10)
  {
    Utf32SymToUtf8Sym(*v10, (a1 + 1400), 5u);
    v11 = (*(a1 + 1440) + 4 * v9);
    *(a1 + 1405) = *v11 & 0x3F;
    *(a1 + 2096) = v11;
  }

  return v9;
}

uint64_t DCT_LKP(uint64_t a1, uint64_t a2, int a3, __int16 *a4)
{
  v4 = a4;
  *&__c[1] = -1;
  __c[0] = 0;
  v8 = 5 * (*a4 - a3) + 1;
  v9 = heap_Alloc(*(a1 + 1528), v8);
  if (!v9)
  {
    v27 = 0;
    *(a1 + 1428) = -101;
    return v27;
  }

  v10 = v9;
  *&__c[3] = 0;
  v30 = 0;
  utf8_Utf32ToUtf8(**(a1 + 1504) + 4 * a3, (*v4 - a3), v9, v8, &v30);
  *(v10 + v30) = 0;
  (*(*(a1 + 1552) + 96))(*(a1 + 1536), *(a1 + 1544), a2, v10, &__c[3], &__c[1], __c);
  if (*&__c[1] != 1)
  {
LABEL_30:
    heap_Free(*(a1 + 1528), v10);
    return 0;
  }

  v11 = heap_Alloc(*(a1 + 1528), 2 * *(a1 + 24));
  if (!v11)
  {
    *(a1 + 1428) = -101;
    goto LABEL_30;
  }

  v12 = v11;
  if (*(a1 + 24) < 1)
  {
    goto LABEL_26;
  }

  v13 = 0;
  v14 = **&__c[3];
  v15 = *v4;
  do
  {
    *(v11 + 2 * v13++) = v15;
    v16 = *(a1 + 24);
  }

  while (v13 < v16);
  if (v16 < 1)
  {
LABEL_26:
    v18 = 0;
  }

  else
  {
    v29 = v4;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = strchr(v14, __c[0]);
      v20 = v19;
      if (v19)
      {
        *v19 = 0;
      }

      v21 = strlen(v14);
      if (v21)
      {
        v22 = v21;
        v23 = Utf8_LengthInUtf8chars(v14, v21);
        v24 = a3 + v23;
        if (v24 >= *(*(a1 + 1416) + 2 * v17) - 1)
        {
          v27 = 0;
          *(a1 + 1428) = -100;
          goto LABEL_28;
        }

        utf8_Utf8ToUtf32(v14, v22, 0, *(*(a1 + 1504) + 8 * v17) + 4 * a3, (v23 + a3), &v30, 0);
        *(v12 + 2 * v17) = v24;
      }

      else
      {
        LOWORD(v24) = *(v12 + 2 * v17);
      }

      if (v18 <= v24)
      {
        v18 = v24;
      }

      v25 = *(a1 + 24);
      if (!v20)
      {
        break;
      }

      v14 = v20 + 1;
      ++v17;
    }

    while (v17 < v25);
    if (v25 < 1)
    {
      v4 = v29;
    }

    else
    {
      v26 = 0;
      v4 = v29;
      do
      {
        if (*(v12 + 2 * v26) < v18)
        {
          memset_pattern16((*(*(a1 + 1504) + 8 * v26) + 4 * *(v12 + 2 * v26)), &unk_1C37BD4D0, 4 * (v18 + ~*(v12 + 2 * v26)) + 4);
        }

        ++v26;
      }

      while (v25 != v26);
    }
  }

  *v4 = v18;
  v27 = 1;
LABEL_28:
  heap_Free(*(a1 + 1528), v10);
  heap_Free(*(a1 + 1528), v12);
  return v27;
}

uint64_t RESTORE_SUBSTITUTION(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4 <= 0)
  {
    v6 = 0;
    v8 = *(a1 + 1416);
    v7 = a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = a2;
    v8 = *(a1 + 1416);
    do
    {
      v9 = *(v8 + 2 * v5);
      v10 = *(*(a1 + 1504) + 8 * v5);
      for (i = v9; ; ++i)
      {
        v12 = *(v10 + 4 * i);
        if (!v12)
        {
          break;
        }

        if (v12 == 31)
        {
          v6 = i - v9;
          v13 = i - v9 + 1;
          memmove((v10 + 4 * a2), (v10 + 4 * *(v8 + 2 * v5)), 4 * v13);
          v8 = *(a1 + 1416);
          *(v8 + 2 * v5) += v13;
          LOWORD(v4) = *(a1 + 24);
          break;
        }
      }

      ++v5;
    }

    while (v5 < v4);
    v4 = v4;
  }

  memmove((*(a1 + 1560) + v7), (*(a1 + 1560) + *(v8 + 2 * v4)), (v6 + 1));
  *(*(a1 + 1416) + 2 * *(a1 + 24)) += v6 + 1;
  return (v6 + a2);
}

uint64_t FirstUtf8SymToUtf32(unsigned __int8 *a1, _DWORD *a2)
{
  v6 = 0;
  *a2 = 0;
  v4 = utf8_determineUTF8CharLength(*a1);
  result = utf8_Utf8ToUtf32(a1, v4, 0, a2, 1u, &v6, 0);
  if ((result & 0x80000000) == 0 && v6 != 1)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t MOVE_FOR_SUBSTITUTION(uint64_t a1, int a2, int a3, int a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a2;
    LODWORD(v7) = *(a1 + 24);
    if (v7 > 0)
    {
      v8 = 0;
      v9 = a4 + a3 + 1;
      v10 = (a4 + a2);
      v23 = a4;
      v11 = 4 * a4;
      do
      {
        v12 = *(*(a1 + 1504) + 8 * v8);
        if (v12 != *(a1 + 1448))
        {
          if (v9 >= *(*(a1 + 1416) + 2 * v8))
          {
            goto LABEL_23;
          }

          memmove((v12 + 4 * v10), (v12 + 4 * v5), 4 * (v4 - v5 + 1));
          if (v10 > v5)
          {
            memset_pattern16((*(*(a1 + 1504) + 8 * v8) + 4 * v5), &unk_1C37BD4D0, v11);
          }
        }

        ++v8;
        v7 = *(a1 + 24);
      }

      while (v8 < v7);
      a4 = v23;
    }

    if (a4 < 0)
    {
      v7 = *(a1 + 1560);
      if ((a4 + v5) >= v5)
      {
        v13 = 0;
        v14 = v5;
      }

      else
      {
        v13 = 0;
        v14 = v5;
        v15 = (v7 + (a4 + v5));
        v16 = v5 - (a4 + v5);
        do
        {
          v17 = *v15++;
          v13 += v17;
          --v16;
        }

        while (v16);
      }

      *(v7 + v14) += v13;
      LOWORD(v7) = *(a1 + 24);
    }

    v18 = a4 + v4;
    if (a4 + v4 >= *(*(a1 + 1416) + 2 * v7) - 1)
    {
LABEL_23:
      LOWORD(v4) = 0;
      *(a1 + 1428) = -100;
    }

    else
    {
      v19 = a4;
      v20 = a4 + v5;
      memmove((*(a1 + 1560) + v20), (*(a1 + 1560) + v5), (v4 - v5 + 1));
      if (v19 >= 1)
      {
        do
        {
          *(*(a1 + 1560) + v5++) = 0;
        }

        while (v20 > v5);
      }

      for (i = v18 + 1; i <= v4; ++i)
      {
        *(*(a1 + 1560) + i) = 0;
      }

      LOWORD(v4) = v18;
    }
  }

  return v4;
}

uint64_t COUNTSYL(uint64_t a1, int a2, _WORD *a3)
{
  LODWORD(v3) = (*a3 - 1);
  if (v3 >= a2)
  {
    v4 = *(a1 + 1504);
    v5 = *v4;
    v6 = 1;
    do
    {
      v3 = v3;
      if (*(v5 + 4 * v3) == 45)
      {
        if (v6 <= 9)
        {
          *(v4[3] + 4 * v3) = (v6 + 48);
        }

        ++v6;
      }

      LODWORD(v3) = (v3 - 1);
    }

    while (v3 >= a2);
  }

  return 1;
}

uint64_t COPY_L1_TO_L2(uint64_t a1, int a2, __int16 *a3)
{
  v3 = *a3;
  if (*(*(a1 + 1416) + 2) - 1 <= v3)
  {
    v4 = 0;
    *(a1 + 1428) = -100;
  }

  else
  {
    memmove((*(*(a1 + 1504) + 8) + 4 * a2), (**(a1 + 1504) + 4 * a2), 4 * (v3 - a2));
    return 1;
  }

  return v4;
}

uint64_t TAGTQ(uint64_t a1, int a2, __int16 *a3)
{
  v5 = *a3;
  v6 = (*a3 - 1);
  v7 = *(a1 + 1504);
  v8 = v7[1];
  if (v6 >= a2)
  {
    LOWORD(v22) = *a3 - 1;
    do
    {
      v23 = *(v8 + 4 * v22);
      if (v23 != 126 && v23 != 32)
      {
        break;
      }

      v22 = (v22 - 1);
    }

    while (v22 >= a2);
    if (*(v8 + 4 * v22) == 63)
    {
      v9 = *v7;
      while (v6 >= a2)
      {
        v24 = *(v9 + 4 * v6);
        if (v24 != 20 && v24 != 126 && v24 != 32)
        {
          break;
        }

        v6 = (v6 - 1);
      }

      goto LABEL_4;
    }

    return 1;
  }

  if (*(v8 + 4 * (*a3 - 1)) != 63)
  {
    return 1;
  }

  v9 = *v7;
LABEL_4:
  if (a2 <= v6)
  {
    v25 = 0;
    do
    {
      v26 = *(v9 + 4 * v6);
      if (v26 == 45 || v26 == 32)
      {
        ++v25;
      }

      if (v26 == 35)
      {
        break;
      }

      v6 = (v6 - 1);
      if (v6 < a2)
      {
        break;
      }
    }

    while (v25 < 3);
  }

  v10 = v6;
  do
  {
    v11 = *(v9 + 4 * ++v10);
    v12 = v11 > 0x23 || ((1 << v11) & 0x900100000) == 0;
  }

  while (!v12 || v11 == 126);
  if (v5 + 4 >= **(a1 + 1416) - 1 || (memmove((v9 + 4 * v10 + 16), (v9 + 4 * v10), 4 * (v5 - v10)), v13 = *a3, v13 + 4 >= *(*(a1 + 1416) + 2) - 1) || (v14 = v10 + 4, memmove((*(*(a1 + 1504) + 8) + 4 * v14), (*(*(a1 + 1504) + 8) + 4 * v10), 4 * (v13 - v10)), v15 = *a3, v15 + 4 >= *(*(a1 + 1416) + 4) - 1) || (memmove((*(*(a1 + 1504) + 16) + 4 * v14), (*(*(a1 + 1504) + 16) + 4 * v10), 4 * (v15 - v10)), v16 = *a3, v16 + 4 >= *(*(a1 + 1416) + 6) - 1))
  {
    result = 0;
    *(a1 + 1428) = -100;
  }

  else
  {
    memmove((*(*(a1 + 1504) + 24) + 4 * v14), (*(*(a1 + 1504) + 24) + 4 * v10), 4 * (v16 - v10));
    *a3 += 4;
    v17 = *(a1 + 1504);
    v18 = v17[1];
    *(*v17 + 4 * v10) = xmmword_1C37BD4E0;
    v19 = v17[2];
    v20 = v17[3];
    result = 1;
    do
    {
      *(v18 + 4 * v10) = 126;
      *(v19 + 4 * v10) = 126;
      *(v20 + 4 * v10++) = 126;
    }

    while (v14 > v10);
  }

  return result;
}

uint64_t fe_depes_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = 0;
  v5 = 2305826826;
  v27 = 0;
  __src[0] = 0;
  if (!a5)
  {
    return 2305826823;
  }

  *a5 = 0;
  *(a5 + 2) = 0;
  inited = InitRsrcFunction(a3, a4, &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v29 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ObjOpen");
  inited = objc_GetObject(*(v29 + 48), "FE_DCTLKP", &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v29 + 8), 1, 712);
  if (v12)
  {
    v13 = v12;
    *a5 = v12;
    *(a5 + 2) = 62334;
    v14 = v29;
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    *v13 = v14;
    *(v13 + 8) = a1;
    v15 = v28;
    *(v13 + 64) = *(v28 + 8);
    v16 = *(v15 + 16);
    *(v13 + 144) = 0u;
    *(v13 + 48) = v16;
    *(v13 + 170) = 0u;
    *(v13 + 160) = 0u;
    *(v13 + 72) = 0;
    *(v13 + 186) = 3172;
    *(v13 + 80) = 0;
    v17 = (v13 + 80);
    *(v13 + 192) = 0;
    if (((hlp_CreateLngBrokerString(v14, __src, 0) & 0x80000000) != 0 || (hlp_OpenData(*v13, __src, (v13 + 72), (v13 + 136)) & 0x80000000) != 0 || !*(v13 + 72)) && ((LngBrokerString = hlp_CreateLngBrokerString(*v13, __src, 1), (LngBrokerString & 0x80000000) != 0) || (LngBrokerString = hlp_OpenData(*v13, __src, (v13 + 72), (v13 + 136)), (LngBrokerString & 0x80000000) != 0)) || ((__strcpy_chk(), (hlp_CreateVoiceBrokerString_0(*v13, __src, 0, 0) & 0x80000000) != 0) || (hlp_OpenData(*v13, __src, (v13 + 80), (v13 + 140)) & 0x80000000) != 0 || !*v17) && ((hlp_CreateVoiceBrokerString_0(*v13, __src, 1, 1) & 0x80000000) != 0 || (hlp_OpenData(*v13, __src, (v13 + 80), (v13 + 140)) & 0x80000000) != 0 || !*v17) && ((LngBrokerString = hlp_CreateVoiceBrokerString_0(*v13, __src, 1, 0), (LngBrokerString & 0x80000000) != 0) || (LngBrokerString = hlp_OpenData(*v13, __src, (v13 + 80), (v13 + 140)), (LngBrokerString & 0x80000000) != 0)))
    {
      v5 = LngBrokerString;
      goto LABEL_34;
    }

    strcpy((v13 + 456), __src);
    if (*(v13 + 72))
    {
      v19 = heap_Calloc(*(*v13 + 8), 1, 2136);
      *(v13 + 144) = v19;
      if (!v19)
      {
LABEL_31:
        v25 = 42000;
LABEL_33:
        log_OutPublic(*(*v13 + 32), "FE_DEPES", v25, 0);
        goto LABEL_34;
      }

      *(v19 + 1560) = 0;
      *(v19 + 1496) = 0u;
      *(v19 + 1512) = 0u;
      *(v19 + 1528) = *(v29 + 8);
      v20 = v28;
      *(v19 + 1536) = *(v28 + 16);
      v21 = *(v13 + 144);
      *(v21 + 1552) = *(v20 + 8);
      *v21 = 0;
      *(v21 + 2120) = 0u;
      if (!*v17)
      {
LABEL_29:
        v5 = fe_depes_InitModule(*a5, a5[1], "fe_depes", &v27);
        if ((v5 & 0x80000000) == 0)
        {
LABEL_35:
          log_OutText(*(v29 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ObjOpen");
          return v5;
        }

LABEL_34:
        fe_depes_ObjClose(*a5, a5[1]);
        *a5 = 0;
        *(a5 + 2) = 0;
        goto LABEL_35;
      }
    }

    else if (!*v17)
    {
      v5 = 2305826819;
      v25 = 42002;
      goto LABEL_33;
    }

    v22 = heap_Calloc(*(*v13 + 8), 1, 2136);
    *(v13 + 152) = v22;
    if (v22)
    {
      *(v22 + 1560) = 0;
      *(v22 + 1496) = 0u;
      *(v22 + 1512) = 0u;
      *(v22 + 1528) = *(v29 + 8);
      v23 = v28;
      *(v22 + 1536) = *(v28 + 16);
      v24 = *(v13 + 152);
      *(v24 + 1552) = *(v23 + 8);
      *v24 = 0;
      *(v24 + 2120) = 0u;
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  log_OutPublic(*(v29 + 32), "FE_DEPES", 42000, 0);
  objc_ReleaseObject(*(v29 + 48), "FE_DCTLKP");
  return v5;
}

uint64_t hlp_CreateLngBrokerString(uint64_t a1, char *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = "";
  *v8 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v8);
  if ((result & 0x80000000) == 0)
  {
    strcpy(v9, "depes/");
    __strcat_chk();
    if (!a3)
    {
      result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __strcat_chk();
      __strcat_chk();
    }

    return brokeraux_ComposeBrokerString(a1, v9, 1, 1, *v8, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t hlp_OpenData(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  v10 = 0;
  if ((brk_DataOpenEx(*(a1 + 24), a2, 1, a3) & 0x80000000) != 0)
  {
    v7 = 0;
LABEL_10:
    *a3 = 0;
    return v7;
  }

  v7 = brk_DataMap(*(a1 + 24), *a3, 0, 72, &v10);
  if ((v7 & 0x80000000) != 0)
  {
    brk_DataClose(*(a1 + 24), *a3);
    goto LABEL_10;
  }

  if ((v10 & 3) != 0 || *v10 != 65279 || LH_strnicmp(v10 + 4, "SCANSOFT", 8uLL) || LH_strnicmp(v10 + 12, "depes", 5uLL))
  {
    v7 = 2305826841;
    log_OutPublic(*(a1 + 32), "FE_DEPES", 42006, 0);
  }

  else
  {
    v9 = *(v10 + 20);
    brk_DataUnmap(*(a1 + 24), *a3, v10);
    *a4 = v9 - 72;
  }

  return v7;
}

uint64_t hlp_CreateVoiceBrokerString_0(uint64_t a1, char *a2, int a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = "";
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v13);
  if ((result & 0x80000000) == 0)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "fevoice", &v12) & 0x80000000) == 0 || (result = paramc_ParamGetStr(*(a1 + 40), "voice", &v12), (result & 0x80000000) == 0))
    {
      strcpy(v14, "depes/");
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      if (a3)
      {
        if (a4)
        {
LABEL_6:
          if ((paramc_ParamGetStr(*(a1 + 40), "voicemodel", &v10) & 0x80000000) != 0)
          {
            v9 = 0;
            v10 = 0;
          }

          else
          {
            v9 = v10;
          }

          return brokeraux_ComposeBrokerString(a1, v14, 1, 1, v13, v12, v9, a2, 0x100uLL);
        }
      }

      else
      {
        result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        __strcat_chk();
        __strcat_chk();
        if (a4)
        {
          goto LABEL_6;
        }
      }

      v9 = 0;
      return brokeraux_ComposeBrokerString(a1, v14, 1, 1, v13, v12, v9, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t fe_depes_InitModule(uint64_t *a1, uint64_t a2, char *a3, _WORD *a4)
{
  v6 = a2;
  v8 = 2305826826;
  v9 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v9 & 0x80000000) == 0)
  {
    inited = v9;
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_InitModule");
    *a4 = 0;
    v11 = a1[9];
    if (v11)
    {
      v12 = a1[18];
      if (!v12)
      {
        goto LABEL_18;
      }

      inited = hlp_InitData(a1, *a1, a3, 1, (a1 + 25), v11, *(a1 + 34), v12);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_43;
      }

      v13 = a1[18];
      if (*a4)
      {
        if (*a4 != *(v13 + 24))
        {
          goto LABEL_19;
        }

        v14 = *(v13 + 24);
      }

      else
      {
        v14 = *(v13 + 24);
      }

      *a4 = v14;
      *(v13 + 184) = a1 + 186;
    }

    else
    {
      v14 = 0;
    }

    v15 = a1[10];
    if (!v15)
    {
LABEL_22:
      v19 = heap_Calloc(*(*a1 + 8), v14, 8);
      a1[20] = v19;
      v20 = *a1;
      if (!v19)
      {
        v18 = 42000;
LABEL_42:
        log_OutPublic(*(v20 + 32), "FE_DEPES", v18, 0);
        inited = v8;
        goto LABEL_43;
      }

      v21 = heap_Calloc(*(v20 + 8), *a4, 8);
      a1[21] = v21;
      if (v21)
      {
        v22 = *a4;
        *(a1 + 92) = *a4;
        if (v22 >= 1)
        {
          v23 = 0;
          do
          {
            *(a1[20] + 8 * v23) = 0;
            *(a1[20] + 8 * v23) = heap_Alloc(*(*a1 + 8), 3172);
            if (!*(a1[20] + 8 * v23))
            {
              goto LABEL_39;
            }

            *(a1[21] + 8 * v23) = 0;
            *(a1[21] + 8 * v23) = heap_Alloc(*(*a1 + 8), 12688);
            if (!*(a1[21] + 8 * v23))
            {
              goto LABEL_39;
            }

            if (a1[9])
            {
              *(*(a1[18] + 1496) + 8 * v23) = *(a1[20] + 8 * v23);
              *(*(a1[18] + 1504) + 8 * v23) = *(a1[21] + 8 * v23);
            }

            if (a1[10])
            {
              *(*(a1[19] + 1496) + 8 * v23) = *(a1[20] + 8 * v23);
              *(*(a1[19] + 1504) + 8 * v23) = *(a1[21] + 8 * v23);
            }
          }

          while (++v23 < *(a1 + 92));
        }

        v24 = heap_Calloc(*(*a1 + 8), 3172, 1);
        a1[22] = v24;
        if (!v24)
        {
LABEL_39:
          log_OutPublic(*(*a1 + 32), "FE_DEPES", 42000, 0);
          return v8;
        }

        if (a1[9])
        {
          *(a1[18] + 1560) = v24;
        }

        if (a1[10])
        {
          *(a1[19] + 1560) = v24;
        }

LABEL_44:
        log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_InitModule");
        return inited;
      }

      v18 = 42000;
LABEL_41:
      v20 = *a1;
      goto LABEL_42;
    }

    v16 = a1[19];
    if (v16)
    {
      inited = hlp_InitData(a1, *a1, a3, 0, (a1 + 57), v15, *(a1 + 35), v16);
      if ((inited & 0x80000000) == 0)
      {
        v17 = a1[19];
        if (!*a4)
        {
          v14 = *(v17 + 24);
          goto LABEL_21;
        }

        if (*a4 == *(v17 + 24))
        {
          v14 = *(v17 + 24);
LABEL_21:
          *a4 = v14;
          *(v17 + 184) = a1 + 186;
          goto LABEL_22;
        }

LABEL_19:
        v8 = 2305826841;
        v18 = 42003;
        goto LABEL_41;
      }

LABEL_43:
      fe_depes_ExitModule(a1, v6);
      goto LABEL_44;
    }

LABEL_18:
    inited = 2305826823;
    goto LABEL_43;
  }

  return 2305826824;
}

uint64_t fe_depes_ObjClose(void *a1, uint64_t a2)
{
  v2 = a2;
  result = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((result & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (a1)
  {
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ObjClose");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    fe_depes_ExitModule(a1, v2);
    v5 = a1[18];
    if (v5)
    {
      heap_Free(*(*a1 + 8), v5);
      a1[18] = 0;
    }

    v6 = a1[19];
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
      a1[19] = 0;
    }

    v7 = a1[9];
    if (v7)
    {
      brk_DataClose(*(*a1 + 24), v7);
      a1[9] = 0;
    }

    v8 = a1[10];
    if (v8)
    {
      brk_DataClose(*(*a1 + 24), v8);
      a1[10] = 0;
    }

    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ObjClose");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_depes_ObjReopen(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  inited = 2305826826;
  v17 = 0;
  __src[0] = 0;
  LngBrokerString = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((LngBrokerString & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (!a1)
  {
    return LngBrokerString;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ObjReopen");
  fe_depes_ExitModule(a1, a2);
  v6 = a1[18];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
    a1[18] = 0;
  }

  v7 = a1[19];
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
    a1[19] = 0;
  }

  v9 = a1 + 9;
  v8 = a1[9];
  if (v8)
  {
    brk_DataClose(*(*a1 + 24), v8);
    a1[9] = 0;
  }

  v11 = a1 + 10;
  v10 = a1[10];
  if (v10)
  {
    brk_DataClose(*(*a1 + 24), v10);
  }

  *(a1 + 92) = 0;
  a1[22] = 0;
  a1[18] = 0;
  a1[19] = 0;
  *(a1 + 186) = 3172;
  a1[24] = 0;
  *v9 = 0;
  a1[10] = 0;
  if ((hlp_CreateLngBrokerString(*a1, __src, 0) & 0x80000000) != 0 || (hlp_OpenData(*a1, __src, a1 + 9, a1 + 34) & 0x80000000) != 0 || !*v9)
  {
    LngBrokerString = hlp_CreateLngBrokerString(*a1, __src, 1);
    if ((LngBrokerString & 0x80000000) != 0)
    {
      return LngBrokerString;
    }

    LngBrokerString = hlp_OpenData(*a1, __src, a1 + 9, a1 + 34);
    if ((LngBrokerString & 0x80000000) != 0)
    {
      return LngBrokerString;
    }
  }

  __strcpy_chk();
  if ((hlp_CreateVoiceBrokerString_0(*a1, __src, 0, 0) & 0x80000000) != 0 || (hlp_OpenData(*a1, __src, a1 + 10, a1 + 35) & 0x80000000) != 0 || !*v11)
  {
    LngBrokerString = hlp_CreateVoiceBrokerString_0(*a1, __src, 1, 1);
    if ((LngBrokerString & 0x80000000) != 0)
    {
      return LngBrokerString;
    }

    if ((hlp_OpenData(*a1, __src, a1 + 10, a1 + 35) & 0x80000000) != 0 || !*v11)
    {
      LngBrokerString = hlp_CreateVoiceBrokerString_0(*a1, __src, 1, 0);
      if ((LngBrokerString & 0x80000000) != 0)
      {
        return LngBrokerString;
      }

      LngBrokerString = hlp_OpenData(*a1, __src, a1 + 10, a1 + 35);
      if ((LngBrokerString & 0x80000000) != 0)
      {
        return LngBrokerString;
      }
    }
  }

  strcpy(a1 + 456, __src);
  if (!a1[9])
  {
    if (!*v11)
    {
      log_OutPublic(*(*a1 + 32), "FE_DEPES", 42002, 0);
      return 2305826819;
    }

    goto LABEL_32;
  }

  v12 = heap_Calloc(*(*a1 + 8), 1, 2136);
  a1[18] = v12;
  if (!v12)
  {
    goto LABEL_36;
  }

  *(v12 + 1560) = 0;
  *(v12 + 1496) = 0u;
  *(v12 + 1512) = 0u;
  *(v12 + 1528) = *(*a1 + 8);
  *(v12 + 1536) = *(a1 + 3);
  v13 = a1[18];
  *(v13 + 1552) = a1[8];
  *v13 = 0;
  *(v13 + 2120) = 0u;
  if (a1[10])
  {
LABEL_32:
    v15 = heap_Calloc(*(*a1 + 8), 1, 2136);
    a1[19] = v15;
    if (v15)
    {
      *(v15 + 1560) = 0;
      *(v15 + 1496) = 0u;
      *(v15 + 1512) = 0u;
      *(v15 + 1528) = *(*a1 + 8);
      *(v15 + 1536) = *(a1 + 3);
      v16 = a1[19];
      *(v16 + 1552) = a1[8];
      *v16 = 0;
      *(v16 + 2120) = 0u;
      goto LABEL_34;
    }

LABEL_36:
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42000, 0);
    return inited;
  }

LABEL_34:
  inited = fe_depes_InitModule(a1, a2, "fe_depes", &v17);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ObjReopen");
  }

  return inited;
}

uint64_t fe_depes_ExitModule(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) != 0)
  {
    return 2305826824;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ExitModule");
  v3 = a1[20];
  if (v3)
  {
    if (*(a1 + 92) >= 1)
    {
      v4 = 0;
      do
      {
        v5 = *(a1[20] + 8 * v4);
        if (v5)
        {
          heap_Free(*(*a1 + 8), v5);
          *(a1[20] + 8 * v4) = 0;
        }

        if (a1[9])
        {
          *(*(a1[18] + 1496) + 8 * v4) = 0;
        }

        if (a1[10])
        {
          *(*(a1[19] + 1496) + 8 * v4) = 0;
        }

        ++v4;
      }

      while (v4 < *(a1 + 92));
      v3 = a1[20];
    }

    heap_Free(*(*a1 + 8), v3);
    a1[20] = 0;
  }

  v6 = a1[21];
  if (v6)
  {
    if (*(a1 + 92) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(a1[21] + 8 * v7);
        if (v8)
        {
          heap_Free(*(*a1 + 8), v8);
          *(a1[21] + 8 * v7) = 0;
        }

        if (a1[9])
        {
          *(*(a1[18] + 1504) + 8 * v7) = 0;
        }

        if (a1[10])
        {
          *(*(a1[19] + 1504) + 8 * v7) = 0;
        }

        ++v7;
      }

      while (v7 < *(a1 + 92));
      v6 = a1[21];
    }

    heap_Free(*(*a1 + 8), v6);
    a1[21] = 0;
  }

  v9 = a1[22];
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
    a1[22] = 0;
  }

  if (a1[9])
  {
    hlp_ExitData(a1[2], a1[3], a1[4], a1[5], a1[18], a1[11], a1[14], a1[13]);
    v10 = a1[18];
    if (v10)
    {
      *v10 = 0;
    }

    a1[13] = 0;
    a1[14] = 0;
  }

  if (a1[10])
  {
    hlp_ExitData(a1[2], a1[3], a1[4], a1[5], a1[19], a1[12], a1[16], a1[15]);
    v11 = a1[19];
    if (v11)
    {
      *v11 = 0;
    }

    a1[15] = 0;
    a1[16] = 0;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ExitModule");
  return 0;
}

uint64_t hlp_InitData(uint64_t *a1, uint64_t *a2, char *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  v97 = *MEMORY[0x1E69E9840];
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v91 = 0;
  *(a8 + 2080) = a2;
  U32 = brk_DataMap(a2[3], a6, 72, a7, &v95);
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  v90 = a4;
  v17 = LH_stricmp(v95, a3);
  v18 = 0;
  v19 = 0;
  v20 = v9 != 0;
  if (v9 && v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v21 = strlen(&v95[v18]);
      v19 += v21 + ((~v21 - v19) & 3) + 9;
      v18 = v19;
      v22 = LH_stricmp(&v95[v19], a3);
      v20 = v19 < v9;
    }

    while (v19 < v9 && v22 != 0);
  }

  if (!v20)
  {
    brk_DataUnmap(a2[3], a6, v95);
    return 2305826820;
  }

  v24 = strlen(&v95[v18]);
  v25 = &v95[v19 + 1 + v24 + ((~v24 - v19) & 3)];
  v91 = *v25;
  v26 = *(v25 + 1);
  brk_DataUnmap(a2[3], a6, v95);
  U32 = brk_DataMapRefCnt(a1[2], a1[3], a1[4], a1[5], a5, v91, v26, &v94);
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  v27 = v94;
  v28 = 11;
  if (!v90)
  {
    v28 = 12;
  }

  a1[v28] = v94;
  v29 = *(v27 + 264);
  v95 = v29;
  *a8 = v29;
  v92 = 0;
  U32 = hlp_GetU32(a2, v29, v26, &v92, (a8 + 8));
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  v30 = 2305826825;
  v31 = v95;
  v32 = *(a8 + 8);
  v33 = v92;
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v32, v92);
  if (v33 + v32 > v26)
  {
    return v30;
  }

  *(a8 + 16) = &v31[v33];
  v92 = v33 + v32;
  U32 = hlp_GetU32(a2, v95, v26, &v92, &v91);
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  *(a8 + 24) = v91;
  U32 = hlp_GetU32(a2, v95, v26, &v92, (a8 + 28));
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  U32 = hlp_GetU32(a2, v95, v26, &v92, (a8 + 32));
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  U32 = hlp_GetU32(a2, v95, v26, &v92, (a8 + 36));
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  U32 = hlp_GetU32(a2, v95, v26, &v92, (a8 + 40));
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  U32 = hlp_GetU32(a2, v95, v26, &v92, &v91);
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  *(a8 + 46) = v91;
  U32 = hlp_GetU32(a2, v95, v26, &v92, &v91);
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  *(a8 + 44) = v91;
  U32 = hlp_GetU32(a2, v95, v26, &v92, (a8 + 48));
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  v34 = v95;
  v35 = *(a8 + 28);
  v36 = v92;
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v35, v92);
  v37 = v36 + v35;
  if (v37 > v26)
  {
    return v30;
  }

  *(a8 + 56) = &v34[v36];
  v38 = heap_Alloc(a2[1], 8 * *(a8 + 28));
  *(a8 + 1520) = v38;
  if (!v38)
  {
LABEL_61:
    v85 = a2[4];
    goto LABEL_62;
  }

  v39 = *(a8 + 28);
  if (v39 >= 1)
  {
    v40 = v38;
    v41 = 0;
    do
    {
      v42 = v95;
      v43 = v41;
      log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", 1, v37);
      if (v37 + 1 <= v26)
      {
        *(v40 + 8 * v43) = &v42[v37++];
      }

      v40 = *(a8 + 1520);
      if (**(v40 + 8 * v43))
      {
          ;
        }
      }

      v41 = v43 + 1;
      v39 = *(a8 + 28);
    }

    while (v39 > (v43 + 1));
  }

  v92 = v37;
  U32 = hlp_GetU16Ptr(a2, v95, v26, &v92, 2 * v39, (a8 + 64));
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  U32 = hlp_GetU16Ptr(a2, v95, v26, &v92, 2 * *(a8 + 28), (a8 + 72));
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  v45 = v95;
  v46 = *(a8 + 32);
  v47 = v92;
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v46 << 8, v92);
  v48 = v47 + (v46 << 8);
  if (v48 > v26)
  {
    return v30;
  }

  *(a8 + 80) = &v45[v47];
  v49 = v95;
  v50 = *(a8 + 36);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v50 << 8, v48);
  v51 = v48 + (v50 << 8);
  if (v51 > v26)
  {
    return v30;
  }

  *(a8 + 88) = &v49[v48];
  v52 = v95;
  v53 = *(a8 + 36);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v53 << 8, v51);
  v54 = v51 + (v53 << 8);
  if (v54 > v26)
  {
    return v30;
  }

  *(a8 + 96) = &v52[v51];
  v55 = v95;
  v56 = 2 * (*(a8 + 46) & 0x7FFF);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v56, v54);
  if (v54 + v56 > v26)
  {
    return v30;
  }

  *(a8 + 104) = &v55[v54];
  v92 = v54 + v56;
  U32 = hlp_GetU32Ptr(a2, v95, v26, &v92, 4 * (*(a8 + 44) & 0x3FFFu), (a8 + 112));
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  v57 = v95;
  v58 = *(a8 + 44);
  v59 = v92;
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v58, v92);
  v60 = v59 + v58;
  if (v60 > v26)
  {
    return v30;
  }

  *(a8 + 120) = &v57[v59];
  v61 = v95;
  v62 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v62, v60);
  v63 = v60 + v62;
  if (v63 > v26)
  {
    return v30;
  }

  *(a8 + 128) = &v61[v60];
  v64 = v95;
  v65 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v65, v63);
  v66 = v63 + v65;
  if (v66 > v26)
  {
    return v30;
  }

  *(a8 + 136) = &v64[v63];
  v67 = v95;
  v68 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v68, v66);
  v69 = v66 + v68;
  if (v69 > v26)
  {
    return v30;
  }

  *(a8 + 144) = &v67[v66];
  v70 = v95;
  v71 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v71, v69);
  v72 = v69 + v71;
  if (v72 > v26)
  {
    return v30;
  }

  *(a8 + 152) = &v70[v69];
  v73 = v95;
  v74 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v74, v72);
  v75 = v72 + v74;
  if (v75 > v26)
  {
    return v30;
  }

  *(a8 + 160) = &v73[v72];
  v76 = v95;
  v77 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v77, v75);
  v78 = v75 + v77;
  if (v78 > v26)
  {
    return v30;
  }

  *(a8 + 168) = &v76[v75];
  v79 = v95;
  v80 = *(a8 + 48);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v80, v78);
  if (v80 + v78 > v26)
  {
    return v30;
  }

  *(a8 + 176) = &v79[v78];
  v81 = heap_Calloc(a2[1], *(a8 + 24), 8);
  *(a8 + 1496) = v81;
  if (!v81)
  {
    goto LABEL_61;
  }

  v82 = heap_Calloc(a2[1], *(a8 + 24), 8);
  *(a8 + 1504) = v82;
  if (!v82)
  {
    goto LABEL_61;
  }

  v83 = heap_Calloc(a2[1], (*(a8 + 24) + 1), 2);
  *(a8 + 1416) = v83;
  if (!v83)
  {
    goto LABEL_61;
  }

  v84 = heap_Alloc(a2[1], 5 * (*(a8 + 46) + 1));
  *(a8 + 1512) = v84;
  v85 = a2[4];
  if (!v84)
  {
LABEL_62:
    log_OutPublic(v85, "FE_DEPES", 42000, 0);
    return 2305826826;
  }

  *(a8 + 2088) = log_GetLogLevel(v85);
  __strcpy_chk();
  __strcat_chk();
  U32 = hlp_SetupNewFeatRefCnt(a1[2], a1[3], a1[4], a1[5], v96, *(a8 + 80), *(a8 + 32), &v93);
  if ((U32 & 0x80000000) != 0)
  {
    return U32;
  }

  v86 = v93;
  *(a8 + 2120) = *(v93 + 272);
  v87 = 14;
  if (!v90)
  {
    v87 = 16;
  }

  a1[v87] = v86;
  __strcpy_chk();
  __strcat_chk();
  v30 = hlp_SetupNewFeatRefCnt(a1[2], a1[3], a1[4], a1[5], v96, *(a8 + 88), *(a8 + 36), &v93);
  if ((v30 & 0x80000000) == 0)
  {
    v88 = v93;
    *(a8 + 2128) = *(v93 + 272);
    if (v90)
    {
      a1[13] = v88;
    }

    else
    {
      a1[15] = v88;
    }
  }

  return v30;
}

uint64_t fe_depes_SetLayerUtf8(__int16 *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v8 = a2;
  v10 = 2305826823;
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) != 0)
  {
    return 2305826824;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_SetLayer");
  if (a4 && v7 < a1[92])
  {
    v10 = fe_depes_SetLayerExUtf8(a1, v8, v7, a4, v5);
    if ((v10 & 0x80000000) == 0)
    {
      log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_SetLayer");
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0);
  }

  return v10;
}

uint64_t fe_depes_SetLayerExUtf8(__int16 *a1, int a2, signed int a3, const void *a4, int a5)
{
  LODWORD(v5) = a5;
  v9 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v9 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v10 = v9;
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_SetLayerEx");
  if (a4)
  {
    v11 = a1[92];
    if (a3 < v11)
    {
      if (v5 >= 0x2710)
      {
        v5 = 10000;
      }

      else
      {
        v5 = v5;
      }

      v12 = (3 * v5);
      if (v12 > a1[93])
      {
        if (v11 > 0)
        {
          v13 = 0;
          do
          {
            v14 = heap_Realloc(*(*a1 + 8), *(*(a1 + 20) + 8 * v13), (3 * v5));
            if (!v14)
            {
              goto LABEL_40;
            }

            *(*(a1 + 20) + 8 * v13) = v14;
            if (*(a1 + 9))
            {
              *(*(*(a1 + 18) + 1496) + 8 * v13) = *(*(a1 + 20) + 8 * v13);
            }

            if (*(a1 + 10))
            {
              *(*(*(a1 + 19) + 1496) + 8 * v13) = *(*(a1 + 20) + 8 * v13);
            }

            if (v12 > a1[93])
            {
              v15 = a1[93];
              do
              {
                *(*(*(a1 + 20) + 8 * v13) + v15++) = 32;
              }

              while (v12 != v15);
            }

            v16 = heap_Realloc(*(*a1 + 8), *(*(a1 + 21) + 8 * v13), 4 * (3 * v5));
            if (!v16)
            {
              goto LABEL_40;
            }

            *(*(a1 + 21) + 8 * v13) = v16;
            if (*(a1 + 9))
            {
              *(*(*(a1 + 18) + 1504) + 8 * v13) = *(*(a1 + 21) + 8 * v13);
            }

            if (*(a1 + 10))
            {
              *(*(*(a1 + 19) + 1504) + 8 * v13) = *(*(a1 + 21) + 8 * v13);
            }

            if (v12 > a1[93])
            {
              memset_pattern16((*(*(a1 + 21) + 8 * v13) + 4 * a1[93]), &unk_1C37BD540, 4 * (v12 + ~a1[93]) + 4);
            }
          }

          while (++v13 < a1[92]);
        }

        v17 = heap_Realloc(*(*a1 + 8), *(a1 + 22), (3 * v5));
        if (!v17)
        {
LABEL_40:
          log_OutPublic(*(*a1 + 32), "FE_DEPES", 42000, 0);
          return 2305826826;
        }

        *(a1 + 22) = v17;
        if (*(a1 + 9))
        {
          *(*(a1 + 18) + 1560) = v17;
        }

        if (*(a1 + 10))
        {
          *(*(a1 + 19) + 1560) = v17;
        }

        if (v12 > a1[93])
        {
          v18 = a1[93];
          do
          {
            *(*(a1 + 22) + v18++) = 0;
          }

          while (v12 != v18);
        }

        a1[93] = 3 * v5;
      }

      memcpy(*(*(a1 + 20) + 8 * a3), a4, v5);
      memset((*(*(a1 + 20) + 8 * a3) + v5), 32, a1[93] - v5);
      if (a3)
      {
        v19 = a1[94];
        if (v19 >= Utf8_LengthInUtf8chars(*(*(a1 + 20) + 8 * a3), v5))
        {
          goto LABEL_45;
        }
      }

      else if (a1[92] >= 2u)
      {
        v20 = 1;
        do
        {
          memset(*(*(a1 + 20) + 8 * v20++), 32, a1[93]);
        }

        while (v20 < a1[92]);
      }

      a1[94] = Utf8_LengthInUtf8chars(*(*(a1 + 20) + 8 * a3), v5);
LABEL_45:
      log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_SetLayerEx");
      return v10;
    }
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 5, 0, "Layer %d not defined in depes grammar");
  return v10;
}

uint64_t fe_depes_SetMarker(uint64_t a1, int a2, const void *a3, int a4)
{
  LODWORD(v4) = a4;
  v7 = 2305826823;
  v8 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v8 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v9 = v8;
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_SetMarker");
  if (v4 >= 0x2710)
  {
    v4 = 10000;
  }

  else
  {
    v4 = v4;
  }

  if (a3 && *(a1 + 188) >= v4)
  {
    memcpy(*(a1 + 176), a3, v4);
    bzero((*(a1 + 176) + v4), *(a1 + 186) - v4);
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_SetMarker");
    return v9;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0);
  }

  return v7;
}

uint64_t fe_depes_GetLayerUtf8(uint64_t a1, int a2, int a3, void *a4, _WORD *a5)
{
  v9 = 2305826823;
  v10 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v10 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v11 = v10;
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_GetLayer");
  if (a4 && a3 < *(a1 + 184))
  {
    *a5 = Utf8_LengthInBytes(*(*(a1 + 160) + 8 * a3), *(a1 + 188));
    *a4 = *(*(a1 + 160) + 8 * a3);
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_GetLayer");
    return v11;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0);
  }

  return v9;
}

uint64_t fe_depes_GetNrLayers(_WORD *a1, int a2, _WORD *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v5 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v6 = v5;
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_GetNrLayers");
  *a3 = a1[92];
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_GetNrLayers");
  return v6;
}

uint64_t fe_depes_GetMarker(uint64_t a1, int a2, void *a3, _WORD *a4)
{
  v7 = 2305826823;
  v8 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v8 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v9 = v8;
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_GetMarker");
  if (a3)
  {
    *a4 = *(a1 + 188);
    *a3 = *(a1 + 176);
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_GetMarker");
    return v9;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0);
  }

  return v7;
}

double hlp_ExitData(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v23 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v23) & 0x80000000) == 0 && (InitRsrcFunction(a3, a4, &v22) & 0x80000000) == 0)
  {
    if (*a5)
    {
      brk_DataMapDeRefCnt(a1, a2, a3, a4, a6);
    }

    v17 = *(a5 + 1496);
    if (v17)
    {
      heap_Free(*(v23 + 8), v17);
      *(a5 + 1496) = 0;
    }

    v18 = *(a5 + 1504);
    if (v18)
    {
      heap_Free(*(v23 + 8), v18);
      *(a5 + 1504) = 0;
    }

    v19 = *(a5 + 1416);
    if (v19)
    {
      heap_Free(*(v23 + 8), v19);
      *(a5 + 1416) = 0;
    }

    v20 = *(a5 + 1512);
    if (v20)
    {
      heap_Free(*(v23 + 8), v20);
      *(a5 + 1512) = 0;
    }

    v21 = *(a5 + 1520);
    if (v21)
    {
      heap_Free(*(v23 + 8), v21);
      *(a5 + 1520) = 0;
    }

    hlp_SetupNewFeatDeRefCnt(a1, a2, a3, a4, a7);
    hlp_SetupNewFeatDeRefCnt(a1, a2, a3, a4, a8);
    result = 0.0;
    *(a5 + 2120) = 0u;
  }

  return result;
}

uint64_t fe_depes_ExistModule(void *a1, int a2, char *a3)
{
  v8 = 0;
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ExistModule for %s", a3);
    if (a1[10])
    {
      exist = hlp_ExistModule(a3, a1[19], &v8);
      if (exist || !a1[9])
      {
        if (exist)
        {
          v6 = 1;
LABEL_12:
          log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ExistModule");
          return v6;
        }

        goto LABEL_11;
      }
    }

    else if (!a1[9])
    {
      goto LABEL_11;
    }

    if (hlp_ExistModule(a3, a1[18], &v8))
    {
      v6 = 2;
      goto LABEL_12;
    }

LABEL_11:
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Module sequence not found");
    v6 = 0;
    goto LABEL_12;
  }

  return 0;
}

BOOL hlp_ExistModule(char *a1, uint64_t a2, unsigned int *a3)
{
  *a3 = 0;
  for (i = *(a2 + 16); LH_stricmp(i, a1); i = (v8 + v11))
  {
    v7 = *a3;
    if (v7 >= *(a2 + 8))
    {
      break;
    }

    v8 = *(a2 + 16);
    v9 = strlen((v8 + v7));
    v10 = v7 + v9 + ((~v9 - v7) & 3) + 1;
    *a3 = v10;
    v11 = v10 + *(v8 + v10) + 4;
    *a3 = v11;
  }

  return *a3 < *(a2 + 8);
}

uint64_t fe_depes_ExecModule(char *a1, int a2, char *a3)
{
  v5 = 2305826820;
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) != 0)
  {
    return 2305826824;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ExecModule for %s", a3);
  if (*(a1 + 10))
  {
    v5 = hlp_ExecModule(a3, *(a1 + 19), a1 + 94);
  }

  if (*(a1 + 9) && (v5 & 0x1FFF) == 4)
  {
    v5 = hlp_ExecModule(a3, *(a1 + 18), a1 + 94);
  }

  if ((v5 & 0x80000000) != 0)
  {
    v6 = *(*a1 + 32);
    if ((v5 & 0x1FFF) == 4)
    {
      log_OutText(v6, "FE_DEPES", 4, 0, "Module sequence not found");
    }

    else
    {
      if ((v5 & 0x1FFF) == 0xA)
      {
        v7 = 42000;
      }

      else
      {
        v7 = 42005;
      }

      log_OutPublic(v6, "FE_DEPES", v7, 0);
    }
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ExecModule");
  return v5;
}

uint64_t hlp_ExecModule(char *a1, uint64_t a2, __int16 *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (!hlp_ExistModule(a1, a2, &v20))
  {
    return 2305826820;
  }

  v5 = *(a2 + 16);
  v6 = strlen((v5 + v20));
  v7 = v20 + v6 + ((~v6 - v20) & 3);
  v8 = *(v5 + v7 + 1);
  if (v8)
  {
    v9 = v7 + 5;
    v10 = v21;
    v11 = v8;
    do
    {
      *v10++ = *(v5 + v9++);
      --v11;
    }

    while (v11);
  }

  *(a2 + 1430) = 0;
  *(a2 + 1428) = 0;
  v12 = **(a2 + 184);
  *(a2 + 1410) = v12;
  if ((*(a2 + 24) & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = *(a2 + 1416);
    do
    {
      *(v14 + 2 * v13++) = v12;
    }

    while (*(a2 + 24) >= v13);
  }

  bzero(*(a2 + 1512), (5 * *(a2 + 46) + 5));
  *(a2 + 1480) = 1;
  if (!v8)
  {
    return 0;
  }

  v15 = v8 - 1;
  v16 = v21;
  do
  {
    v17 = v15;
    v18 = *v16++;
    result = INFERENCE_MAIN(a2, v18, 1, a3);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v15 = v17 - 1;
  }

  while (v17);
  return result;
}

uint64_t fe_depes_SetcbInsMrk(uint64_t a1, int a2, int a3, int a4)
{
  result = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((result & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (a4 == 1)
  {
    *(a1 + 192) = a3;
  }

  else
  {
    *(a1 + 196) = a3;
  }

  return result;
}

uint64_t fe_depes_GetcbInsMrk(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  result = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((result & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v8 = 196;
  if (a4 == 1)
  {
    v8 = 192;
  }

  *a3 = *(a1 + v8);
  return result;
}

uint64_t hlp_Utf8HashCode(const char *a1, _WORD *a2)
{
  v6 = 0;
  v4 = strlen(a1);
  result = utf8_Utf8ToUtf32(a1, v4, 0, &v6 + 4, 1u, &v6, 0);
  if ((result & 0x80000000) == 0)
  {
    *a2 = BYTE4(v6) & 0x3F;
  }

  return result;
}

uint64_t hlp_SetupNewFeatDeRefCnt(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  result = InitRsrcFunction(a1, a2, &v11);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v10);
    if (a5)
    {
      if ((result & 0x80000000) == 0)
      {
        ObjcForThisApi = getObjcForThisApi(v11, v10);
        return objc_ReleaseObject(ObjcForThisApi, a5);
      }
    }
  }

  return result;
}

uint64_t fe_depes_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2305826817;
  }

  result = 0;
  *a2 = &IFeDepes;
  return result;
}

uint64_t hlp_GetU32(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, _DWORD *a5)
{
  v10 = hlp_AlignOffset(a1, *a4, 4);
  *a4 = v10;
  log_OutText(*(a1 + 32), "FE_DEPES", 5, 0, "Reading U32 at offset %u", v10);
  v11 = *a4;
  if (v11 + 4 > a3)
  {
    return 2305826825;
  }

  result = 0;
  *a5 = *(a2 + v11);
  *a4 += 4;
  return result;
}

uint64_t hlp_GetU16Ptr(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, int a5, void *a6)
{
  v12 = hlp_AlignOffset(a1, *a4, 2);
  *a4 = v12;
  log_OutText(*(a1 + 32), "FE_DEPES", 5, 0, "Reading U16 buffer of size %u at offset %u", a5, v12);
  v13 = *a4;
  if (v13 + a5 > a3)
  {
    return 2305826825;
  }

  result = 0;
  *a6 = a2 + v13;
  *a4 = v13 + a5;
  return result;
}

uint64_t hlp_GetU32Ptr(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, int a5, void *a6)
{
  v12 = hlp_AlignOffset(a1, *a4, 4);
  *a4 = v12;
  log_OutText(*(a1 + 32), "FE_DEPES", 5, 0, "Reading U32 buffer of size %u at offset %u", a5, v12);
  v13 = *a4;
  if (v13 + a5 > a3)
  {
    return 2305826825;
  }

  result = 0;
  *a6 = a2 + v13;
  *a4 = v13 + a5;
  return result;
}

uint64_t hlp_SetupNewFeatRefCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8)
{
  v21 = 0;
  v22 = 0;
  v20 = 0;
  result = InitRsrcFunction(a1, a2, &v22);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v21);
    if ((result & 0x80000000) == 0)
    {
      v19[0] = a1;
      v19[1] = a2;
      v19[2] = a3;
      v19[3] = a4;
      v19[4] = a6;
      v19[5] = a7;
      ObjcForThisApi = getObjcForThisApi(v22, v21);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a5, hlp_SetupNewFeat_ObjcLoad, hlp_SetupNewFeat_ObjcClose, v19, &v20);
      if ((result & 0x80000000) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v20 + 32);
      }

      *a8 = v18;
    }
  }

  return result;
}

uint64_t hlp_AlignOffset(uint64_t a1, int a2, int a3)
{
  log_OutText(*(a1 + 32), "FE_DEPES", 5, 0, "Offset before alignment is %u", a2);
  v6 = a2 + a3 - 1;
  v7 = v6 & -a3;
  log_OutText(*(a1 + 32), "FE_DEPES", 5, 0, "Offset after alignment to %u bytes is %u", a3, v6 & -a3);
  return v7;
}

uint64_t hlp_SetupNewFeat_ObjcLoad(_WORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = 0;
  inited = InitRsrcFunction(a1, a2, &v39);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v40);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = v39;
  v10 = *(a5 + 32);
  v11 = *(a5 + 40);
  v12 = heap_Calloc(*(v39 + 8), 1, 280);
  *(a4 + 32) = v12;
  if (!v12 || (*(*(a4 + 32) + 272) = heap_Alloc(*(v9 + 8), 8 * v11), v13 = *(a4 + 32), !*(v13 + 272)))
  {
LABEL_27:
    v23 = 2305826826;
    log_OutPublic(*(v9 + 32), "FE_DEPES", 42000, 0, v34);
    return v23;
  }

  if (v11)
  {
    v34 = a3;
    v14 = 0;
    v37 = v11;
LABEL_7:
    v15 = heap_Alloc(*(v9 + 8), 512);
    if (v15)
    {
      v11 = v15;
      v38 = v14;
      v16 = (v10 + (v14 << 8));
      memset(v43, 0, sizeof(v43));
      v17 = strlen(v16);
      v18 = 0;
      while (1)
      {
        v19 = heap_Alloc(*(v9 + 8), (v17 + 65));
        *(v43 + v18) = v19;
        if (!v19)
        {
          break;
        }

        *v19 = 0;
        v18 += 8;
        if (v18 == 512)
        {
          v35 = v10;
          v36 = a4;
          v42 = 64;
          Utf8Symbol = utf8_GetUtf8Symbol(v16, 0, v17, __s2);
          if (Utf8Symbol)
          {
            v21 = Utf8Symbol;
            v22 = 0;
            while (1)
            {
              v23 = hlp_Utf8HashCode(__s2, &v42);
              if ((v23 & 0x80000000) != 0)
              {
                return v23;
              }

              strcat(*(v43 + v42), __s2);
              v22 += v21;
              v21 = utf8_GetUtf8Symbol(v16, v22, v17, __s2);
              if (!v21)
              {
                goto LABEL_17;
              }
            }
          }

          v23 = 0;
LABEL_17:
          v24 = heap_Alloc(*(v9 + 8), (v17 + 65));
          a4 = v36;
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            v27 = 0;
            *v24 = 0;
            do
            {
              v28 = &v25[v27];
              *(v11 + v26) = v28;
              v29 = *(v43 + v26);
              strcpy(v28, v29);
              v30 = strlen(v29);
              v25[(v27 + v30)] = 0;
              v27 += v30 + 1;
              v26 += 8;
            }

            while (v26 != 512);
            v31 = 0;
            v10 = v35;
            do
            {
              v32 = *(v43 + v31);
              if (v32)
              {
                heap_Free(*(v9 + 8), v32);
                *(v43 + v31) = 0;
              }

              v31 += 8;
            }

            while (v31 != 512);
            *(*(*(v36 + 32) + 272) + 8 * v38) = v11;
            v14 = v38 + 1;
            LODWORD(v11) = v37;
            if (v37 <= (v38 + 1))
            {
              v13 = *(v36 + 32);
              goto LABEL_30;
            }

            goto LABEL_7;
          }

          goto LABEL_27;
        }
      }
    }

    goto LABEL_27;
  }

  v23 = 0;
LABEL_30:
  *(v13 + 256) = v10;
  *(*(a4 + 32) + 264) = v11;
  __strcpy_chk();
  return v23;
}

uint64_t hlp_SetupNewFeat_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v14 = 0;
  inited = InitRsrcFunction(a1, a2, &v14);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    v6 = v14;
    v7 = *(v5 + 272);
    if (v7)
    {
      v8 = *(v5 + 264);
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v10 = *(v7 + 8 * i);
          if (v10)
          {
            v11 = 0;
            while (1)
            {
              v12 = *(v10 + v11);
              if (v12)
              {
                break;
              }

              v11 += 8;
              if (v11 == 512)
              {
                goto LABEL_11;
              }
            }

            heap_Free(*(v6 + 8), v12);
            *(v10 + v11) = 0;
LABEL_11:
            heap_Free(*(v6 + 8), v10);
          }
        }
      }

      heap_Free(*(v6 + 8), v7);
      v6 = v14;
    }

    heap_Free(*(v6 + 8), v5);
  }

  return inited;
}

uint64_t fe_depes_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2305826823;
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

unsigned __int8 **m2__fix__carray__len(unsigned __int8 **result, int *a2)
{
  if (*a2 <= 0)
  {
    v2 = *result;
    v3 = -1;
    do
    {
      v4 = *v2++;
      ++v3;
    }

    while (v4);
    *a2 = v3;
  }

  return result;
}

unsigned __int8 *m2__cp__str(unsigned __int8 *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    while (1)
    {
      v5 = *result++;
      v4 = v5;
      if (!v5)
      {
        break;
      }

      *a2++ = v4;
      if (!--v3)
      {
        return result;
      }
    }

    *a2 = 0;
  }

  return result;
}

char *m2__cp__arr(char *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ = v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t mosyntkbsymtab_WriteGraphSym(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  kbsymtab_GraphSymString(a2, a3, v5, 0xC8uLL);
  return mosyntbase_WString(a1, v5, 0xC8u);
}

uint64_t mosyntkbsymtab_WritePhonSym(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  kbsymtab_PhonSymString(a2, a3, v5, 200);
  return mosyntbase_WString(a1, v5, 0xC8u);
}

uint64_t mosyntkbsymtab_WriteCons(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  kbsymtab_ConsSymString(a2, a3, v5, 200);
  return mosyntbase_WString(a1, v5, 0xC8u);
}

uint64_t mosyntkbsymtab_ConsFeatToComprConsFeatStr(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      v3 = *(a1 + i);
      if ((v3 - 40) < 2 || v3 == 44)
      {
        *(a1 + i) = 58;
      }

      else if (!*(a1 + i))
      {
        goto LABEL_10;
      }
    }

    LODWORD(i) = a2;
LABEL_10:
    if (i >= 2)
    {
      v4 = a1 + i;
      if (__PAIR64__(*(v4 - 1), *(v4 - 2)) == 0x2900000028)
      {
        *(v4 - 2) = 0;
      }
    }
  }

  return 0;
}