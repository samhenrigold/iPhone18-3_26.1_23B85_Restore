uint64_t CGN_Predict(uint64_t a1, const char *a2, uint64_t a3, void *a4, int *a5)
{
  v25 = 0;
  v26 = 0;
  v10 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 184) * *(a1 + 186));
  v24 = v10;
  if (!v10)
  {
    ErrorResource = err_GenerateErrorResource();
LABEL_16:
    ErrorInternalMsg = ErrorResource;
    goto LABEL_17;
  }

  v11 = v10;
  ErrorResource = PNEW_WordScanner_ConFrom(a1 + 56, a2, a3, &v26);
  if (ErrorResource)
  {
    goto LABEL_16;
  }

  v13 = *(a1 + 194);
  v14 = *(a1 + 186);
  ErrorResource = __CGN_CloneWord(a1, v26, &v25);
  if (ErrorResource)
  {
    goto LABEL_16;
  }

  v15 = (v11 + 4 * v14 * v13);
  ErrorResource = __CGN_FeaturesCurrent(a1, v25, v15);
  if (ErrorResource)
  {
    goto LABEL_16;
  }

  if (*(a1 + 194))
  {
    v16 = 0;
    do
    {
      v15 += 4 * *(a1 + 186);
      if (WordScanner_NextWord(v26))
      {
        ErrorResource = __CGN_CloneWord(a1, v26, &v25);
        if (ErrorResource)
        {
          goto LABEL_16;
        }

        ErrorResource = __CGN_FeaturesCurrent(a1, v25, v15);
        if (ErrorResource)
        {
          goto LABEL_16;
        }
      }

      else if (*(a1 + 186))
      {
        memset_pattern16(v15, &unk_26ECDA830, 4 * *(a1 + 186));
      }

      ++v16;
      v17 = *(a1 + 194);
    }

    while (v16 < v17);
    v11 = v24;
  }

  else
  {
    v17 = 0;
  }

  v21 = *(a1 + 186);
  ErrorResource = WordScanner_ResetFrom(v26, a3);
  if (ErrorResource)
  {
    goto LABEL_16;
  }

  if (*(a1 + 194))
  {
    v22 = 0;
    v23 = (v11 + 4 * v17 * v21);
    while (1)
    {
      v23 -= 4 * *(a1 + 186);
      if (WordScanner_PrevWord(v26))
      {
        ErrorResource = __CGN_CloneWord(a1, v26, &v25);
        if (ErrorResource)
        {
          goto LABEL_16;
        }

        ErrorResource = __CGN_FeaturesCurrent(a1, v25, v23);
        if (ErrorResource)
        {
          goto LABEL_16;
        }
      }

      else if (*(a1 + 186))
      {
        memset_pattern16(v23, &unk_26ECDA830, 4 * *(a1 + 186));
      }

      ErrorInternalMsg = 0;
      if (++v22 >= *(a1 + 194))
      {
        goto LABEL_17;
      }
    }
  }

  ErrorInternalMsg = 0;
LABEL_17:
  if (v26)
  {
    OOC_PlacementDeleteObject(a1 + 56, v26);
  }

  if (v25)
  {
    heap_Free(*(*(a1 + 48) + 8), v25);
  }

  if (!ErrorInternalMsg)
  {
    if ((fi_predict(*(a1 + 104), &v24, *(a1 + 184), a4) & 0x80000000) != 0)
    {
      v19 = "fi_predict";
    }

    else
    {
      if ((fi_shape_get_size((**(a1 + 104) + 92), a5) & 0x80000000) == 0)
      {
        ErrorInternalMsg = 0;
        goto LABEL_28;
      }

      v19 = "fi_shape_get_size";
    }

    ErrorInternalMsg = err_GenerateErrorInternalMsg(v19);
  }

LABEL_28:
  if (v24)
  {
    heap_Free(*(*(a1 + 48) + 8), v24);
  }

  return ErrorInternalMsg;
}

uint64_t CGN_UnloadModel(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  return _Model_Unload(a1);
}

uint64_t _CGN_PostFIDeinit(void *a1)
{
  *(a1 + 196) = 0;
  *(a1 + 190) = 0;
  v2 = a1[26];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
  }

  a1[26] = 0;
  return 0;
}

uint64_t _CGN_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v12 = "nn_word_lkp_GetInterface";
  }

  else
  {
    v2 = *(*(a1 + 128) + 16);
    NullHandle = safeh_GetNullHandle();
    if ((v2(NullHandle) & 0x80000000) == 0)
    {
      v4 = *(*(a1 + 128) + 16);
      v5 = safeh_GetNullHandle();
      if ((v4(v5) & 0x80000000) == 0)
      {
        v14 = 0;
        if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v14) & 0x80000000) == 0)
        {
          if (v14 != *(a1 + 196))
          {
            v13 = "word embedding dimension";
            return err_GenerateErrorInternalMsg(v13);
          }

          if (((*(*(a1 + 128) + 40))(*(a1 + 152), *(a1 + 160), &v14) & 0x80000000) == 0)
          {
            if (v14 == *(a1 + 198))
            {
              v6 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 196));
              *(a1 + 168) = v6;
              if (!v6)
              {
                return err_GenerateErrorResource();
              }

              v7 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 198));
              *(a1 + 176) = v7;
              if (!v7)
              {
                return err_GenerateErrorResource();
              }

              v8 = (2 * *(a1 + 194)) | 1;
              *(a1 + 184) = v8;
              if (*(a1 + 112) == v8)
              {
                v9 = cstdlib_strlen(*(a1 + 208));
                *(a1 + 188) = v9;
                v10 = *(a1 + 196) + (*(a1 + 192) + *(a1 + 190)) * *(a1 + 198);
                *(a1 + 186) = v10;
                if (*(a1 + 200))
                {
                  v10 += v9 + 2;
                  *(a1 + 186) = v10;
                }

                if (*(a1 + 116) == v10)
                {
                  return 0;
                }

                v13 = "inshape dimension 2";
              }

              else
              {
                v13 = "inshape dimension 1";
              }
            }

            else
            {
              v13 = "char embedding dimension";
            }

            return err_GenerateErrorInternalMsg(v13);
          }
        }

        v13 = "__pIWordLkp->pfGetVectorLength";
        return err_GenerateErrorInternalMsg(v13);
      }
    }

    v12 = "__pIWordLkp->pfObjOpen";
  }

  return err_GenerateErrorInternalMsg(v12);
}

uint64_t _CGN_PreFIDeinit(void *a1)
{
  if (a1[16])
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[17], a1[18], NullHandle, v3))
    {
      (*(a1[16] + 24))(a1[17], a1[18]);
      a1[17] = safeh_GetNullHandle();
      a1[18] = v4;
    }

    v5 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[19], a1[20], v5, v6))
    {
      (*(a1[16] + 24))(a1[19], a1[20]);
      a1[19] = safeh_GetNullHandle();
      a1[20] = v7;
    }

    a1[16] = 0;
  }

  v8 = a1[21];
  if (v8)
  {
    heap_Free(*(a1[6] + 8), v8);
  }

  v9 = a1[22];
  a1[21] = 0;
  if (v9)
  {
    heap_Free(*(a1[6] + 8), v9);
  }

  *(a1 + 182) = 0;
  a1[22] = 0;
  return 0;
}

uint64_t _CGN_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v10 = 0;
  *v11 = 0;
  __s1 = 0;
  *a2 = 0;
  ParamValueUnsignedShort = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v11, "concatenatedLeftChars", 0, (a1 + 190), &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v11, "concatenatedRightChars", 3, (a1 + 192), &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v11, "wordContextWindow", 5, (a1 + 194), &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v11, "wordEmbeddingDimension", 0, (a1 + 196), &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v11, "charEmbeddingDimension", 0, (a1 + 198), &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_FullParamName(a1, "wordPUNCTFeatureEnabled", &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = Params_GetCfgParamValueString(*v11, v10, &__s1);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  *(a1 + 200) = 1;
  if (__s1)
  {
    if (!cstdlib_strcmp(__s1, "False"))
    {
      *(a1 + 200) = 0;
    }

    heap_Free(*(*(a1 + 48) + 8), __s1);
  }

  ParamValueUnsignedShort = __CGN_FullParamName(a1, "wordPUNCTLoadList", &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = Params_GetCfgParamValueString(*v11, v10, &__s1);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  v7 = __s1;
  if (!__s1)
  {
    v8 = heap_Alloc(*(*(a1 + 48) + 8), 1);
    __s1 = v8;
    if (!v8)
    {
      ParamValueUnsignedShort = err_GenerateErrorResource();
LABEL_15:
      v5 = ParamValueUnsignedShort;
      goto LABEL_16;
    }

    cstdlib_strcpy(v8, "");
    v7 = __s1;
  }

  v5 = 0;
  *(a1 + 208) = v7;
  *a2 = 1;
LABEL_16:
  if (*v11)
  {
    OOC_PlacementDeleteObject(a1 + 56, *v11);
  }

  if (v10)
  {
    heap_Free(*(*(a1 + 48) + 8), v10);
  }

  return v5;
}

uint64_t __CGN_GetParamValueUnsignedShort(uint64_t a1, uint64_t a2, char *__s, int a4, _WORD *a5, uint64_t *a6)
{
  result = __CGN_FullParamName(a1, __s, a6);
  if (!result)
  {
    v11 = 0;
    result = Params_GetCfgParamValueInteger(a2, *a6, a4, &v11);
    if (!result)
    {
      *a5 = v11;
    }
  }

  return result;
}

uint64_t __CGN_FullParamName(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    cstdlib_strcpy(v10, "nn_cgn_");
    cstdlib_strcat(v11, *(a1 + 120));
    cstdlib_strcat(v11, "_");
    cstdlib_strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t PNEW_CGN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 216, &v14);
  result = v14;
  if (!v14)
  {
    result = CGN_Con(v12, a2, a3, a4, a5);
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

uint64_t __CGN_CloneWord(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = WordScanner_WordLen(a2);
  v7 = *(*(a1 + 48) + 8);
  v8 = v6;
  v9 = heap_Realloc(v7, *a3, v6 + 1);
  if (v9)
  {
    v10 = v9;
    cstdlib_strncpy(v9, (*(a2 + 8) + *(a2 + 18)), v8);
    cstdlib_strcpy((v10 + v8), "");
    *a3 = v10;
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t __CGN_FeaturesCurrent(uint64_t a1, char *a2, char *a3)
{
  v6 = a2;
  do
  {
    if (!__CGN_IsPunct(v6))
    {
      v8 = cstdlib_strlen(a2);
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, v8);
      v10 = v8;
      if (__CGN_IsPunct(&a2[PreviousUtf8Offset]))
      {
        v11 = PreviousUtf8Offset;
        do
        {
          v10 = PreviousUtf8Offset;
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, v11);
          v11 = PreviousUtf8Offset;
        }

        while (__CGN_IsPunct(&a2[PreviousUtf8Offset]));
      }

      i = 0;
      if (*(a1 + 200))
      {
        v12 = &a3[4 * *(a1 + 186) + -4 * (*(a1 + 188) + 2)];
        cstdlib_memset(v12, 0, 4 * (*(a1 + 188) + 2));
        i = 1;
        if (v6 > a2)
        {
          v13 = a2;
          do
          {
            __CGN_InPunctList(a1, v13, v12, &i);
            v14 = utf8_determineUTF8CharLength(*v13);
            if (i)
            {
              *&v12[4 * *(a1 + 188)] = 1065353216;
            }

            v13 += v14;
          }

          while (v13 < v6);
        }

        v15 = v10;
        v16 = &a2[v10];
        for (i = 1; cstdlib_strcmp(v16, ""); v16 += v17)
        {
          __CGN_InPunctList(a1, v16, v12, &i);
          v17 = utf8_determineUTF8CharLength(*v16);
          if (i)
          {
            *&v12[4 * *(a1 + 188) + 4] = 1065353216;
          }
        }
      }

      else
      {
        v15 = v10;
      }

      cstdlib_strcpy(&a2[v15], "");
      v18 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), v6, *(a1 + 168));
      if ((v18 & 0x1FFF) != 0x14)
      {
        v22 = 0;
        goto LABEL_31;
      }

      v19 = *(*(a1 + 48) + 8);
      v20 = Utf8_Utf8NbrOfSymbols(v6);
      v21 = heap_Alloc(v19, (6 * v20) | 1);
      if (!v21)
      {
        ErrorResource = err_GenerateErrorResource();
        goto LABEL_41;
      }

      v22 = v21;
      v23 = cstdlib_strlen(v6);
      v24 = v22;
      v25 = v23;
      if (v23)
      {
        NextUtf8OffsetLimit = 0;
        v24 = v22;
        do
        {
          utf8_ToLower(v6, NextUtf8OffsetLimit, v24);
          v24 += utf8_determineUTF8CharLength(*v24);
          NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v6, NextUtf8OffsetLimit, v25);
        }

        while (NextUtf8OffsetLimit < v25);
      }

      cstdlib_strcpy(v24, "");
      v27 = cstdlib_strcmp(v22, v6);
      v28 = *(a1 + 136);
      v29 = *(*(a1 + 128) + 56);
      v30 = *(a1 + 168);
      v31 = *(a1 + 144);
      if (v27)
      {
        v18 = v29(v28, v31, v22, v30);
        if ((v18 & 0x1FFF) != 0x14)
        {
          goto LABEL_31;
        }

        v18 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", *(a1 + 168));
      }

      else
      {
        v18 = v29(v28, v31, "$MEANW2V$", v30);
      }

      if ((v18 & 0x1FFF) == 0x14)
      {
        v33 = "mean vector";
        goto LABEL_39;
      }

LABEL_31:
      if ((v18 & 0x80000000) == 0)
      {
        ErrorResource = 0;
        if (!v22)
        {
LABEL_41:
          if (!ErrorResource)
          {
            cstdlib_memcpy(a3, *(a1 + 168), 4 * *(a1 + 196));
            v34 = &a3[4 * *(a1 + 196)];
            v35 = Utf8_Utf8NbrOfSymbols(v6);
            v36 = *(a1 + 190);
            v37 = *(a1 + 192) + v36;
            if (v37 + 1 >= v35)
            {
              if (*(a1 + 192) + v36)
              {
                v47 = 0;
                do
                {
                  if (cstdlib_strcmp(v6, ""))
                  {
                    v48 = utf8_determineUTF8CharLength(*v6);
                    cstdlib_strncpy(__dst, v6, v48);
                    cstdlib_strcpy(&__dst[v48], "");
                    v41 = __CGN_CharLookup(a1, __dst);
                    if (v41)
                    {
                      return v41;
                    }

                    v6 += v48;
                    cstdlib_memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                  }

                  else
                  {
                    cstdlib_memset(v34, 0, 4 * *(a1 + 198));
                  }

                  v34 += 4 * *(a1 + 198);
                  ++v47;
                }

                while (v47 < v37);
              }
            }

            else
            {
              if (*(a1 + 190))
              {
                v38 = 0;
                v39 = v6;
                do
                {
                  v40 = utf8_determineUTF8CharLength(*v39);
                  cstdlib_strncpy(__dst, v39, v40);
                  cstdlib_strcpy(&__dst[v40], "");
                  v41 = __CGN_CharLookup(a1, __dst);
                  if (v41)
                  {
                    return v41;
                  }

                  v39 += v40;
                  cstdlib_memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                  v34 += 4 * *(a1 + 198);
                }

                while (++v38 < *(a1 + 190));
              }

              v42 = cstdlib_strlen(v6);
              if (*(a1 + 192))
              {
                v43 = 0;
                do
                {
                  v42 = utf8_GetPreviousUtf8Offset(v6, v42);
                  ++v43;
                }

                while (v43 < *(a1 + 192));
                if (*(a1 + 192))
                {
                  v44 = 0;
                  v45 = &v6[v42];
                  do
                  {
                    v46 = utf8_determineUTF8CharLength(*v45);
                    cstdlib_strncpy(__dst, v45, v46);
                    cstdlib_strcpy(&__dst[v46], "");
                    ErrorResource = __CGN_CharLookup(a1, __dst);
                    if (ErrorResource)
                    {
                      break;
                    }

                    v45 += v46;
                    cstdlib_memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                    v34 += 4 * *(a1 + 198);
                    ++v44;
                  }

                  while (v44 < *(a1 + 192));
                  return ErrorResource;
                }
              }
            }

            return 0;
          }

          return ErrorResource;
        }

LABEL_40:
        heap_Free(*(*(a1 + 48) + 8), v22);
        goto LABEL_41;
      }

      v33 = "__pIWordLkp->pfWord2fVector";
LABEL_39:
      ErrorResource = err_GenerateErrorInternalMsg(v33);
      if (!v22)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v6 += utf8_determineUTF8CharLength(*v6);
  }

  while (cstdlib_strcmp(v6, ""));

  return err_GenerateErrorArg();
}

uint64_t __CGN_IsPunct(char *a1)
{
  result = cstdlib_strcmp(a1, "");
  if (result)
  {
    if (cstdlib_strstr(a1, "#") == a1)
    {
      return 0;
    }

    else
    {
      v3 = cstdlib_strlen(a1);
      return utf8_BelongsToSet(9, a1, 0, v3) == 0;
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
    while (1)
    {
      v10 = utf8_determineUTF8CharLength(*(*(v7 + 208) + v9));
      result = cstdlib_strncmp(a2, (*(v7 + 208) + v9), v10);
      if (!result)
      {
        break;
      }

      v9 += v10;
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
  v7 = cstdlib_strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (cstdlib_strcpy(v8, __s), v9 = *(*(a1 + 48) + 8), v10 = cstdlib_strlen(__s), (v11 = heap_Alloc(v9, v10 + 8)) != 0))
  {
    v12 = v11;
    cstdlib_strcpy(v11, "nn_tn2_");
    v13 = cstdlib_strlen(__s);
    v14 = &v12[cstdlib_strlen("nn_tn2_")];
    if (v13)
    {
      v15 = 0;
      do
      {
        utf8_ToLower(__s, v15, v14);
        if (cstdlib_strstr(v14, "_") != v14)
        {
          v14 += utf8_determineUTF8CharLength(*v14);
        }

        LODWORD(v15) = utf8_GetNextUtf8OffsetLimit(__s, v15, v13);
      }

      while (v15 < v13);
    }

    cstdlib_strcpy(v14, "");
    v16 = _Model_Load(a1, v12, a3);
    heap_Free(*(*(a1 + 48) + 8), v12);
    return v16;
  }

  else
  {

    return err_GenerateErrorResource();
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
  OOCAllocator_Des();
  return Allocator;
}

uint64_t TN_Predict(uint64_t a1, unsigned int a2, char *__s, unsigned int a4, unsigned int a5, void *a6, int *a7)
{
  v27 = 0;
  if (*(a1 + 166) <= a2 || !__s || a5 > cstdlib_strlen(__s) || a4 >= a5)
  {
    ErrorArg = err_GenerateErrorArg();
    goto LABEL_24;
  }

  v30 = 0;
  v28 = 0;
  v29 = 0;
  v14 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 168) * *(a1 + 160));
  v27 = v14;
  if (!v14)
  {
    ErrorResource = err_GenerateErrorResource();
    goto LABEL_33;
  }

  v15 = v14;
  if ((nn_tn_getCharContextString(*(a1 + 48), "NN_TN", __s, a4, a5, &v30, &v29 + 1, *(a1 + 162), 2, "*", *(a1 + 168), &v29, &v28 + 1, &v28) & 0x80000000) != 0)
  {
    v23 = "nn_tn_getCharContextString";
    goto LABEL_32;
  }

  cstdlib_memset(v15, 0, 4 * *(a1 + 168) * *(a1 + 160));
  if (!v29)
  {
LABEL_22:
    v19 = 0;
    goto LABEL_34;
  }

  v16 = 0;
  while (1)
  {
    if (!cstdlib_strcmp(*(v30 + 8 * v16), "*"))
    {
      if (*(a1 + 160))
      {
        memset_pattern16(v15, &unk_26ECDA830, 4 * *(a1 + 160));
      }

      goto LABEL_21;
    }

    v17 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), *(v30 + 8 * v16), *(a1 + 152));
    if ((v17 & 0x1FFF) == 0x14)
    {
      v17 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", *(a1 + 152));
      if ((v17 & 0x1FFF) == 0x14)
      {
        break;
      }
    }

    if (v17 < 0)
    {
      v23 = "__pIWordLkp->pfWord2fVector";
      goto LABEL_32;
    }

    cstdlib_memcpy(v15, *(a1 + 152), 4 * *(a1 + 164));
    v18 = *(a1 + 164);
    *&v15[4 * v18 + 4 * a2] = 1065353216;
    if (v16 >= HIWORD(v28) && v16 < v28)
    {
      *&v15[4 * *(a1 + 166) + 4 * v18] = 1065353216;
    }

LABEL_21:
    v15 += 4 * *(a1 + 160);
    if (++v16 >= v29)
    {
      goto LABEL_22;
    }
  }

  v23 = "mean vector";
LABEL_32:
  ErrorResource = err_GenerateErrorInternalMsg(v23);
LABEL_33:
  v19 = ErrorResource;
LABEL_34:
  v24 = v30;
  if (v30)
  {
    if (HIWORD(v29))
    {
      v25 = 0;
      do
      {
        heap_Free(*(*(a1 + 48) + 8), *(v30 + 8 * v25++));
      }

      while (v25 < HIWORD(v29));
      v24 = v30;
    }

    heap_Free(*(*(a1 + 48) + 8), v24);
  }

  if (!v19)
  {
    if ((fi_predict(*(a1 + 104), &v27, *(a1 + 168), a6) & 0x80000000) != 0)
    {
      v26 = "fi_predict";
    }

    else
    {
      if ((fi_shape_get_size((**(a1 + 104) + 92), a7) & 0x80000000) == 0)
      {
        v19 = 0;
        goto LABEL_25;
      }

      v26 = "fi_shape_get_size";
    }

    ErrorArg = err_GenerateErrorInternalMsg(v26);
LABEL_24:
    v19 = ErrorArg;
  }

LABEL_25:
  if (v27)
  {
    heap_Free(*(*(a1 + 48) + 8), v27);
  }

  return v19;
}

uint64_t TN_UnloadModel(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  return _Model_Unload(a1);
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
        return err_GenerateErrorResource();
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
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    cstdlib_strcpy(v10, "nn_tn2_");
    cstdlib_strcat(v11, *(a1 + 120));
    cstdlib_strcat(v11, "_");
    cstdlib_strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
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
  v7 = cstdlib_strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (cstdlib_strcpy(v8, __s), v9 = *(*(a1 + 48) + 8), v10 = cstdlib_strlen(__s), (v11 = heap_Alloc(v9, v10 + 14)) != 0))
  {
    v12 = v11;
    cstdlib_strcpy(v11, "clmnn:nn_clm_");
    cstdlib_strcat(v12, __s);
    v13 = _Model_Load(a1, v12, a3);
    heap_Free(*(*(a1 + 48) + 8), v12);
    return v13;
  }

  else
  {

    return err_GenerateErrorResource();
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
  OOCAllocator_Des();
  return Allocator;
}

uint64_t CLM_Predict(uint64_t a1, char **a2, char **a3, char **a4, unsigned int a5, uint64_t a6, uint64_t a7)
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
      memset_pattern16(v14, &unk_26ECDA830, 4 * v18);
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

      ErrorResource = v21;
      goto LABEL_39;
    }

LABEL_12:
    v24 = v17 == 0;
    a7 = v35;
    if (!v24)
    {
      memset_pattern16(v20, &unk_26ECDA830, 4 * v34);
    }
  }

  else
  {
    ErrorResource = err_GenerateErrorResource();
    if (ErrorResource)
    {
      return ErrorResource;
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
        cstdlib_memcpy(v30, v28, v29);
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
              ErrorResource = 0;
            }

            else
            {
              v26 = 0;
              ErrorResource = 0;
              v27 = 0.0;
            }

            goto LABEL_31;
          }

          v32 = "fi_shape_get_size";
        }

LABEL_30:
        ErrorResource = err_GenerateErrorInternalMsg(v32);
LABEL_31:
        if (v39)
        {
          heap_Free(*(*(a1 + 48) + 8), v39);
        }

        goto LABEL_33;
      }

      ErrorResource = err_GenerateErrorResource();
LABEL_33:
      if (ErrorResource)
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
  ErrorResource = 0;
LABEL_39:
  if (v36)
  {
    heap_Free(*(*(a1 + 48) + 8), v36);
  }

  return ErrorResource;
}

uint64_t CLM_UnloadModel(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  return _Model_Unload(a1);
}

uint64_t _CLM_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v21 = "nn_word_lkp_GetInterface";
LABEL_23:

    return err_GenerateErrorInternalMsg(v21);
  }

  v2 = *(*(a1 + 48) + 8);
  v3 = cstdlib_strlen(*(a1 + 120));
  v4 = heap_Alloc(v2, v3 + 16);
  *(a1 + 184) = v4;
  if (v4)
  {
    cstdlib_strcpy(v4, "clmorthforeign_");
    cstdlib_strcat(*(a1 + 184), *(a1 + 120));
    v5 = *(*(a1 + 128) + 16);
    NullHandle = safeh_GetNullHandle();
    if ((v5(NullHandle) & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    v7 = *(*(a1 + 48) + 8);
    v8 = cstdlib_strlen(*(a1 + 120));
    v9 = heap_Alloc(v7, v8 + 16);
    *(a1 + 192) = v9;
    if (!v9)
    {
      goto LABEL_19;
    }

    cstdlib_strcpy(v9, "clmphonforeign_");
    cstdlib_strcat(*(a1 + 192), *(a1 + 120));
    v10 = *(*(a1 + 128) + 16);
    v11 = safeh_GetNullHandle();
    if ((v10(v11) & 0x80000000) != 0)
    {
LABEL_22:
      v21 = "__pIWordLkp->pfObjOpen";
      goto LABEL_23;
    }

    v12 = *(*(a1 + 48) + 8);
    v13 = cstdlib_strlen(*(a1 + 120));
    v14 = heap_Alloc(v12, v13 + 13);
    *(a1 + 200) = v14;
    if (v14)
    {
      cstdlib_strcpy(v14, "clmphonmain_");
      cstdlib_strcat(*(a1 + 200), *(a1 + 120));
      v15 = *(*(a1 + 128) + 16);
      v16 = safeh_GetNullHandle();
      if ((v15(v16) & 0x80000000) == 0)
      {
        v23 = 0;
        if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v23) & 0x80000000) == 0)
        {
          if (v23 != *(a1 + 220))
          {
            v22 = "orth embedding dimension";
            return err_GenerateErrorInternalMsg(v22);
          }

          if (((*(*(a1 + 128) + 40))(*(a1 + 152), *(a1 + 160), &v23) & 0x80000000) == 0)
          {
            if (v23 != *(a1 + 220))
            {
              v22 = "phon embedding dimension";
              return err_GenerateErrorInternalMsg(v22);
            }

            if (((*(*(a1 + 128) + 40))(*(a1 + 168), *(a1 + 176), &v23) & 0x80000000) == 0)
            {
              v17 = *(a1 + 220);
              if (v23 == v17)
              {
                v18 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v17);
                *(a1 + 208) = v18;
                if (!v18)
                {
                  return err_GenerateErrorResource();
                }

                v19 = 6 * *(a1 + 218) + 3;
                *(a1 + 216) = v19;
                if (*(a1 + 112) == v19)
                {
                  if (*(a1 + 116) == *(a1 + 220))
                  {
                    return 0;
                  }

                  v22 = "inshape dimension 2";
                }

                else
                {
                  v22 = "inshape dimension 1";
                }
              }

              else
              {
                v22 = "main embedding dimension";
              }

              return err_GenerateErrorInternalMsg(v22);
            }
          }
        }

        v22 = "__pIWordLkp->pfGetVectorLength";
        return err_GenerateErrorInternalMsg(v22);
      }

      goto LABEL_22;
    }
  }

LABEL_19:

  return err_GenerateErrorResource();
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
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    cstdlib_strcpy(v10, "nn_clm_");
    cstdlib_strcat(v11, *(a1 + 120));
    cstdlib_strcat(v11, "_");
    cstdlib_strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
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

uint64_t __CLM_FeaturesLookups(uint64_t a1, uint64_t a2, uint64_t a3, char *__s1, void *a5)
{
  if (!cstdlib_strcmp(__s1, "#"))
  {
    if (*(a1 + 220))
    {
      memset_pattern16(a5, &unk_26ECDA890, 4 * *(a1 + 220));
    }

    return 0;
  }

  v10 = (*(*(a1 + 128) + 56))(a2, a3, __s1, *(a1 + 208));
  if ((v10 & 0x1FFF) != 0x14 || (v10 = (*(*(a1 + 128) + 56))(a2, a3, "$MEANW2V$", *(a1 + 208)), (v10 & 0x1FFF) != 0x14))
  {
    if (v10 < 0)
    {
      v11 = "__pIWordLkp->pfWord2fVector";
      goto LABEL_11;
    }

    cstdlib_memcpy(a5, *(a1 + 208), 4 * *(a1 + 220));
    return 0;
  }

  v11 = "mean vector";
LABEL_11:

  return err_GenerateErrorInternalMsg(v11);
}

uint64_t Diacritizer_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  result = _Model_Con(a1, a2, a3, a4, a5);
  if (!result)
  {
    *a1 = &__Diacritizer;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  return result;
}

uint64_t Diacritizer_Des(uint64_t a1)
{
  result = _Model_Unload(a1);
  if (!result)
  {
    v3 = *(a1 + 128);
    if (v3)
    {
      heap_Free(*(*(a1 + 48) + 8), v3);
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
    }

    return Model_Des(a1);
  }

  return result;
}

uint64_t Diacritizer_Predict(uint64_t a1, unsigned int *a2, unsigned int a3, void *a4, _DWORD *a5)
{
  v38 = 0;
  v36 = 0;
  v37 = 0;
  if (a3 <= 2)
  {
    log_OutText(*(*(a1 + 48) + 32), "FE_LUA_NN_DIACRITIZER", 5, 0, "WARNING: not enough input features [%d]", a3);
    v6 = "nn_diacritizer:unexpected";
LABEL_5:
    ErrorInternalMsg = err_GenerateErrorInternalMsg(v6);
LABEL_6:
    if (v36)
    {
      heap_Free(*(*(a1 + 48) + 8), v36);
    }

    return ErrorInternalMsg;
  }

  v7 = a3 - 1;
  v8 = *(a1 + 120);
  v9 = *(a1 + 48);
  if (v8 < v7)
  {
    log_OutText(*(v9 + 32), "FE_LUA_NN_DIACRITIZER", 5, 0, "WARNING: Number of input features [%d] exceeds max_x_len [%d]", a3 - 1, v8);
    v6 = "nn_diacritizer";
    goto LABEL_5;
  }

  v14 = a2;
  v15 = a2[a3 - 2];
  v16 = a2[v7];
  v17 = heap_Alloc(*(v9 + 8), 4 * v8);
  v36 = v17;
  if (v17)
  {
    v19 = v7;
    v20 = v17;
    do
    {
      v21 = *v14++;
      *v20++ = v21;
      --v19;
    }

    while (v19);
    v22 = *(a1 + 120);
    if (v7 < v22)
    {
      v23 = 0;
      *v18.i32 = v16;
      v24 = v22 - v7;
      v25 = (v22 - v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v26 = vdupq_n_s64(v24 - 1);
      v27 = &v17[v7 + 2];
      do
      {
        v28 = vdupq_n_s64(v23);
        v29 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_26ECC7980)));
        if (vuzp1_s16(v29, v18).u8[0])
        {
          *(v27 - 2) = *v18.i32;
        }

        if (vuzp1_s16(v29, v18).i8[2])
        {
          *(v27 - 1) = *v18.i32;
        }

        if (vuzp1_s16(v18, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_26ECCE810)))).i32[1])
        {
          *v27 = *v18.i32;
          v27[1] = *v18.i32;
        }

        v23 += 4;
        v27 += 4;
      }

      while (v25 != v23);
    }

    if ((fi_predict(*(a1 + 104), &v36, 1, &v37) & 0x80000000) != 0)
    {
      v6 = "nn_diacritizer:fi_predict";
      goto LABEL_5;
    }

    if ((fi_shape_get_size((**(a1 + 104) + 92), &v38) & 0x80000000) != 0)
    {
      v6 = "nn_diacritizer:fi_shape_get_size";
      goto LABEL_5;
    }

    if (v38)
    {
      v30 = 0;
      while (v15 != *(v37 + 4 * v30))
      {
        if (v38 == ++v30)
        {
          LODWORD(v30) = v38;
          break;
        }
      }

      *a5 = v30;
      if (v30 > *(a1 + 136))
      {
        v31 = v30 + 10;
        *(a1 + 136) = v31;
        v32 = heap_Realloc(*(*(a1 + 48) + 8), *(a1 + 128), 4 * v31);
        *(a1 + 128) = v32;
        if (!v32)
        {
          ErrorInternalMsg = err_GenerateErrorResource();
          *(a1 + 136) = 0;
          goto LABEL_6;
        }

        LODWORD(v30) = *a5;
      }

      if (v30)
      {
        v33 = 0;
        v34 = v37;
        v35 = *(a1 + 128);
        do
        {
          *(v35 + 4 * v33) = *(v34 + 4 * v33);
          ++v33;
        }

        while (v33 < *a5);
        goto LABEL_42;
      }
    }

    else
    {
      *a5 = 0;
    }

    v35 = *(a1 + 128);
LABEL_42:
    ErrorInternalMsg = 0;
    *a4 = v35;
    goto LABEL_6;
  }

  return err_GenerateErrorResource();
}

uint64_t _Diacritizer_PostFIInit(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(a1 + 120) = v2;
  v2 *= 2;
  *(a1 + 136) = v2;
  v3 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v2);
  *(a1 + 128) = v3;
  if (v3)
  {
    if (*(a1 + 116) == -1)
    {
      return 0;
    }

    else
    {

      return err_GenerateErrorInternalMsg("nn_diacritizer:only supports 1D inshape");
    }
  }

  else
  {
    result = err_GenerateErrorResource();
    *(a1 + 136) = 0;
  }

  return result;
}

uint64_t _Diacritizer_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v11 = 0;
  v12 = 0;
  *a2 = 0;
  v4 = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v12);
  if (v4)
  {
    goto LABEL_2;
  }

  CfgParamValueString = Params_GetCfgParamValueString(v12, "nn_diacritizer_enable", &v11);
  v5 = v11;
  if (CfgParamValueString)
  {
    v9 = 1;
  }

  else
  {
    v9 = v11 == 0;
  }

  if (!v9)
  {
    v10 = LH_stricmp(v11, "yes");
    if (!v10 || !LH_stricmp(v11, "true") || !LH_stricmp(v11, "1"))
    {
      *a2 = 1;
    }

LABEL_2:
    v5 = v11;
    v6 = v4;
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = CfgParamValueString;
  if (v11)
  {
LABEL_3:
    heap_Free(*(*(a1 + 48) + 8), v5);
  }

LABEL_4:
  if (v12)
  {
    OOC_PlacementDeleteObject(a1 + 56, v12);
  }

  return v6;
}

uint64_t PNEW_Diacritizer_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 144, &v14);
  result = v14;
  if (!v14)
  {
    result = _Model_Con(v12, a2, a3, a4, a5);
    if (result)
    {
      v14 = result;
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *v12 = &__Diacritizer;
      *(v12 + 120) = 0;
      *(v12 + 128) = 0;
      *(v12 + 136) = 0;
      *a6 = v12;
    }
  }

  return result;
}

uint64_t URL_Con(void *a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a1 = &__URL;
    a1[15] = 0;
    a1[16] = safeh_GetNullHandle();
    a1[17] = v7;
    a1[18] = 0;
    a1[19] = 0x100000000;
  }

  return v6;
}

uint64_t URL_Des(void *a1)
{
  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des(a1);
  }

  return result;
}

uint64_t URL_Predict(uint64_t a1, const char *a2, unsigned int *a3, unsigned int a4, _DWORD *a5, _DWORD *a6)
{
  if (a4)
  {
    v9 = a2;
    if (a4 + 1 == Utf8_Utf8NbrOfSymbols(a2))
    {
      v11 = heap_Alloc(*(*(a1 + 48) + 8), 4 * (2 * *(a1 + 156) + a4 - 1) * *(a1 + 154));
      v12 = v11;
      v33 = v11;
      if (v11)
      {
        v32 = a6;
        v13 = a4;
        v14 = *(a1 + 156);
        LOWORD(v15) = *(a1 + 154);
        if ((v14 - 1) * v15)
        {
          v16 = ((v14 - 1) * v15);
          memset_pattern16(v11, &unk_26ECDA830, 4 * v16);
        }

        else
        {
          v16 = 0;
        }

        v20 = &v12[4 * v16];
        if (a4)
        {
          while (1)
          {
            v21 = utf8_determineUTF8CharLength(*v9);
            cstdlib_strncpy(__dst, v9, v21);
            cstdlib_strcpy(&__dst[v21], "");
            v22 = (*(*(a1 + 120) + 56))(*(a1 + 128), *(a1 + 136), __dst, *(a1 + 144));
            if ((v22 & 0x1FFF) != 0x14 || (v22 = (*(*(a1 + 120) + 56))(*(a1 + 128), *(a1 + 136), "$MEANW2V$", *(a1 + 144)), v23 = "mean vector", (v22 & 0x1FFF) != 0x14))
            {
              if ((v22 & 0x80000000) == 0)
              {
                cstdlib_memcpy(v20, *(a1 + 144), 4 * *(a1 + 158));
                goto LABEL_19;
              }

              v23 = "__pIWordLkp->pfWord2fVector";
            }

            ErrorInternalMsg = err_GenerateErrorInternalMsg(v23);
            if (ErrorInternalMsg)
            {
              ErrorResource = ErrorInternalMsg;
              goto LABEL_47;
            }

LABEL_19:
            v9 += v21;
            v25 = *a3++;
            *&v20[4 * *(a1 + 158)] = v25;
            v15 = *(a1 + 154);
            v20 += 4 * v15;
            if (!--v13)
            {
              v14 = *(a1 + 156);
              v12 = v33;
              break;
            }
          }
        }

        v19 = a5;
        if (v14 * v15)
        {
          memset_pattern16(v20, &unk_26ECDA830, 4 * (v14 * v15));
        }

        a6 = v32;
      }

      else
      {
        ErrorResource = err_GenerateErrorResource();
        v19 = a5;
        if (ErrorResource)
        {
          return ErrorResource;
        }
      }

      *a6 = 1065353216;
      *v19 = 1;
      if (a4 == 1)
      {
LABEL_25:
        ErrorResource = 0;
LABEL_47:
        if (v33)
        {
          heap_Free(*(*(a1 + 48) + 8), v33);
        }

        return ErrorResource;
      }

      v26 = 0;
      v27 = 0.0;
      v28 = 1;
      while (1)
      {
        v36 = 0;
        *__dst = 0;
        v35 = 0;
        if (!v12)
        {
          break;
        }

        v29 = 4 * ((*(a1 + 152) * *(a1 + 154)) & 0x3FFF);
        v30 = heap_Alloc(*(*(a1 + 48) + 8), v29);
        *__dst = v30;
        if (v30)
        {
          cstdlib_memcpy(v30, v12, v29);
          if ((fi_predict(*(a1 + 104), __dst, *(a1 + 152), &v36) & 0x80000000) != 0)
          {
            v31 = "fi_predict";
          }

          else if ((fi_shape_get_size((**(a1 + 104) + 92), &v35) & 0x80000000) != 0)
          {
            v31 = "fi_shape_get_size";
          }

          else
          {
            if (v35 == 2)
            {
              v27 = v36[1];
              if (*v36 >= v27)
              {
                v26 = 0;
                ErrorResource = 0;
                v27 = *v36;
              }

              else
              {
                ErrorResource = 0;
                v26 = 1;
              }

LABEL_40:
              if (*__dst)
              {
                heap_Free(*(*(a1 + 48) + 8), *__dst);
              }

              goto LABEL_42;
            }

            v31 = "Unexpected";
          }

LABEL_39:
          ErrorResource = err_GenerateErrorInternalMsg(v31);
          goto LABEL_40;
        }

        ErrorResource = err_GenerateErrorResource();
LABEL_42:
        if (ErrorResource)
        {
          goto LABEL_47;
        }

        *&a6[v28] = v27;
        v19[v28] = v26;
        v12 += 4 * *(a1 + 154);
        if (a4 <= ++v28)
        {
          goto LABEL_25;
        }
      }

      v31 = "pElemFeatures == NULL";
      goto LABEL_39;
    }
  }

  return err_GenerateErrorArg();
}

uint64_t _URL_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 120)) & 0x80000000) != 0)
  {
    v9 = "nn_word_lkp_GetInterface";
LABEL_11:

    return err_GenerateErrorInternalMsg(v9);
  }

  v2 = *(*(a1 + 120) + 16);
  NullHandle = safeh_GetNullHandle();
  if ((v2(NullHandle) & 0x80000000) != 0)
  {
    v9 = "__pIWordLkp->pfObjOpen";
    goto LABEL_11;
  }

  v11 = 0;
  if (((*(*(a1 + 120) + 40))(*(a1 + 128), *(a1 + 136), &v11) & 0x80000000) != 0)
  {
    v10 = "__pIWordLkp->pfGetVectorLength";
  }

  else
  {
    v4 = *(a1 + 158);
    if (v11 == v4)
    {
      v5 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v4);
      *(a1 + 144) = v5;
      if (!v5)
      {
        return err_GenerateErrorResource();
      }

      v6 = (2 * *(a1 + 156)) | 1;
      *(a1 + 152) = v6;
      if (*(a1 + 112) == v6)
      {
        v7 = *(a1 + 158) + 1;
        *(a1 + 154) = v7;
        if (*(a1 + 116) == v7)
        {
          return 0;
        }

        v10 = "inshape dimension 2";
      }

      else
      {
        v10 = "inshape dimension 1";
      }
    }

    else
    {
      v10 = "char embedding dimension";
    }
  }

  return err_GenerateErrorInternalMsg(v10);
}

uint64_t _URL_PreFIDeinit(uint64_t a1)
{
  if (*(a1 + 120))
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 128), *(a1 + 136), NullHandle, v3))
    {
      (*(*(a1 + 120) + 24))(*(a1 + 128), *(a1 + 136));
      *(a1 + 128) = safeh_GetNullHandle();
      *(a1 + 136) = v4;
    }

    *(a1 + 120) = 0;
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    heap_Free(*(*(a1 + 48) + 8), v5);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return 0;
}

uint64_t _URL_PreFIInit(uint64_t a1, _DWORD *a2)
{
  __s1 = 0;
  v12 = 0;
  v10 = 0;
  *a2 = 0;
  CfgParamValueInteger = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v12);
  if (CfgParamValueInteger)
  {
    goto LABEL_2;
  }

  CfgParamValueString = Params_GetCfgParamValueString(v12, "nn_url_enable", &__s1);
  v6 = __s1;
  if (CfgParamValueString)
  {
    v9 = 1;
  }

  else
  {
    v9 = __s1 == 0;
  }

  if (!v9)
  {
    if (cstdlib_strcmp(__s1, "yes"))
    {
      v5 = 0;
      goto LABEL_3;
    }

    CfgParamValueInteger = Params_GetCfgParamValueInteger(v12, "nn_url_charContextWindow", 4, &v10);
    if (!CfgParamValueInteger)
    {
      if (v10)
      {
        *(a1 + 156) = v10;
        v5 = Params_GetCfgParamValueInteger(v12, "nn_url_charEmbeddingDimension", 0, &v10);
        if (!v5)
        {
          *(a1 + 158) = v10;
          *a2 = 1;
        }

LABEL_3:
        v6 = __s1;
        if (!__s1)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      CfgParamValueInteger = err_GenerateErrorInternalMsg("empty context not supported");
    }

LABEL_2:
    v5 = CfgParamValueInteger;
    goto LABEL_3;
  }

  v5 = CfgParamValueString;
  if (__s1)
  {
LABEL_4:
    heap_Free(*(*(a1 + 48) + 8), v6);
    __s1 = 0;
  }

LABEL_5:
  if (v12)
  {
    OOC_PlacementDeleteObject(a1 + 56, v12);
  }

  return v5;
}

uint64_t PNEW_URL_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 160, &v14);
  result = v14;
  if (!v14)
  {
    result = URL_Con(v12, a2, a3, a4, a5);
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

uint64_t Homograph_Con(void *a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a1 = &__Homograph;
    a1[16] = 0;
    a1[17] = safeh_GetNullHandle();
    a1[18] = v7;
    a1[19] = 0;
    a1[15] = 0;
  }

  return v6;
}

uint64_t Homograph_Des(void *a1)
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

uint64_t Homograph_LoadModel(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = cstdlib_strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (cstdlib_strcpy(v8, __s), v9 = *(*(a1 + 48) + 8), v10 = cstdlib_strlen("nn_homograph2"), v11 = cstdlib_strlen(__s), (v12 = heap_Alloc(v9, v10 + v11 + 2)) != 0))
  {
    v13 = v12;
    cstdlib_strcpy(v12, "nn_homograph2");
    if (*__s)
    {
      cstdlib_strcat(v13, "_");
      v14 = cstdlib_strlen(v13);
      cstdlib_strcat(v13, __s);
      v15 = v13[v14];
      if (v15)
      {
        v16 = &v13[v14 + 1];
        do
        {
          *(v16 - 1) = cstdlib_tolower(v15);
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }

    v18 = _Model_Load(a1, v13, a3);
    heap_Free(*(*(a1 + 48) + 8), v13);
    return v18;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t Homograph_Models(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = a3;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = 0;
  Allocator = ooc_utils_createAllocator(v12, a1, a2);
  if (Allocator)
  {
    goto LABEL_9;
  }

  Allocator = PNEW_Params_Con(v12, a1, a2, "fecfg", &v14);
  if (Allocator)
  {
    goto LABEL_9;
  }

  Allocator = Params_GetCfgParamValueString(v14, "nn_homograph2_enable", &v11);
  if (Allocator)
  {
    goto LABEL_9;
  }

  if (!v11 || LH_stricmp(v11, "yes") && LH_stricmp(v11, "true") && LH_stricmp(v11, "1"))
  {
    Allocator = Params_GetCfgParamValueListOfStrings(v14, "nn_homograph2_models", 59, &v15);
LABEL_9:
    v7 = Allocator;
    goto LABEL_10;
  }

  StringList_Append(a3, "");
  v7 = 0;
LABEL_10:
  v8 = v14;
  if (v14)
  {
    v9 = v11 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    heap_Free(*(v14[3] + 8), v11);
    v8 = v14;
  }

  if (v8)
  {
    OOC_PlacementDeleteObject(v12, v8);
  }

  return v7;
}

uint64_t Homograph_Predict(uint64_t a1, char *a2, void *a3, int *a4)
{
  v20 = 0;
  if (a2)
  {
    v22 = 0;
    *v21 = 0;
    ErrorInternalMsg = PNEW_StringList_Con(a1 + 56, *(a1 + 32), *(a1 + 40), v21);
    if (ErrorInternalMsg)
    {
      goto LABEL_21;
    }

    ErrorInternalMsg = StringList_FromSplitStringInUtf8(*v21, a2, 0xFFFF, 0, 0, &v22);
    if (ErrorInternalMsg)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 112);
    if (v9 < v22)
    {
      ErrorInternalMsg = err_GenerateErrorInternalMsg("context window too long");
LABEL_21:
      v17 = ErrorInternalMsg;
      goto LABEL_22;
    }

    v11 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 116) * v9);
    v20 = v11;
    if (!v11)
    {
      ErrorInternalMsg = err_GenerateErrorResource();
      goto LABEL_21;
    }

    v12 = v11;
    if (!v22)
    {
      v13 = 0;
LABEL_35:
      if (*(a1 + 112) <= v13)
      {
LABEL_39:
        v17 = 0;
      }

      else
      {
        v19 = *(a1 + 116);
        do
        {
          cstdlib_memcpy(v12, *(a1 + 152), 4 * v19);
          v17 = 0;
          v19 = *(a1 + 116);
          v12 += 4 * v19;
          ++v13;
        }

        while (*(a1 + 112) > v13);
      }

LABEL_22:
      if (*v21)
      {
        OOC_PlacementDeleteObject(a1 + 56, *v21);
      }

      if (v17)
      {
        goto LABEL_31;
      }

      if ((fi_predict(*(a1 + 104), &v20, *(a1 + 112), a3) & 0x80000000) != 0)
      {
        v18 = "fi_predict";
      }

      else
      {
        if ((fi_shape_get_size((**(a1 + 104) + 92), a4) & 0x80000000) == 0)
        {
          v17 = 0;
LABEL_31:
          if (v20)
          {
            heap_Free(*(*(a1 + 48) + 8), v20);
          }

          return v17;
        }

        v18 = "fi_shape_get_size";
      }

      v17 = err_GenerateErrorInternalMsg(v18);
      goto LABEL_31;
    }

    v13 = 0;
    while (1)
    {
      v14 = StringList_GetAt(*v21, v13);
      v15 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), v14, v12);
      if ((v15 & 0x1FFF) == 0x14)
      {
        v15 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", v12);
        v16 = "mean vector";
        if ((v15 & 0x1FFF) == 0x14)
        {
          goto LABEL_17;
        }
      }

      if (v15 < 0)
      {
        break;
      }

      v12 += 4 * *(a1 + 116);
LABEL_18:
      if (v22 <= ++v13)
      {
        goto LABEL_35;
      }
    }

    v16 = "__pIWordLkp->pfWord2fVector";
LABEL_17:
    if ((err_GenerateErrorInternalMsg(v16) & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_18;
  }

  return err_GenerateErrorArg();
}

uint64_t Homograph_UnloadModel(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  return _Model_Unload(a1);
}

uint64_t _Homograph_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v9 = "nn_word_lkp_GetInterface";
  }

  else
  {
    v2 = *(*(a1 + 128) + 16);
    NullHandle = safeh_GetNullHandle();
    if ((v2(NullHandle) & 0x80000000) == 0)
    {
      v11 = 0;
      if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v11) & 0x80000000) != 0)
      {
        v10 = "__pIWordLkp->pfGetVectorLength";
      }

      else
      {
        v4 = *(a1 + 116);
        if (v4 == v11)
        {
          v5 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v4);
          *(a1 + 152) = v5;
          if (!v5)
          {
            return err_GenerateErrorResource();
          }

          v6 = *(a1 + 116);
          if (v6)
          {
            v7 = 0;
            do
            {
              *(v5 + 4 * v7++) = -1082130432;
            }

            while (v6 > v7);
          }

          return 0;
        }

        v10 = "inshape_dim2 != charEmbeddingDimension";
      }

      return err_GenerateErrorInternalMsg(v10);
    }

    v9 = "__pIWordLkp->pfObjOpen";
  }

  return err_GenerateErrorInternalMsg(v9);
}

uint64_t _Homograph_PreFIDeinit(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[19] = 0;
  }

  if (a1[16])
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[17], a1[18], NullHandle, v4))
    {
      (*(a1[16] + 24))(a1[17], a1[18]);
      a1[17] = safeh_GetNullHandle();
      a1[18] = v5;
    }

    a1[16] = 0;
  }

  return 0;
}

uint64_t PNEW_Homograph_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 160, &v14);
  result = v14;
  if (!v14)
  {
    result = Homograph_Con(v12, a2, a3, a4, a5);
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

uint64_t aux_Utf8CharInfoForSentence(char *__s, int a2, int a3, uint64_t a4, _WORD *a5, unsigned __int16 *a6, unsigned __int16 *a7)
{
  result = StringList_FromSplitStringInUtf8(a4, __s, 0xFFFF, 0, 0, a5);
  if (!result)
  {
    *a6 = -1;
    *a7 = -1;
    if (*a5)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if (*a6 != -1 && *a7 != -1)
        {
          break;
        }

        if (v16 == a2)
        {
          *a6 = v15;
        }

        if (v16 == a3)
        {
          *a7 = v15;
        }

        v17 = StringList_GetAt(a4, v15);
        v16 += cstdlib_strlen(v17);
        ++v15;
      }

      while (*a5 > v15);
    }

    if (a3 == cstdlib_strlen(__s))
    {
      *a7 = *a5 + 1;
    }

    if (*a6 == -1 || *a7 == -1)
    {

      return err_GenerateErrorInternalMsg("utf8 error");
    }

    else
    {
      return 0;
    }
  }

  return result;
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
        OOCAllocator_Des();
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

  return luavmldoutil_initialize_lua_vm(v3, v4, (a1 + 2), "runG2P", "FE_NN_G2P", a1 + 7, 0);
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
        OOCAllocator_Des();
        heap_Free(*(v9 + 8), a1);
      }
    }
  }

  return inited;
}

uint64_t fe_clm_ObjReopen(_WORD **a1, int a2)
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
    goto LABEL_18;
  }

  Object = objc_GetObject(v9[6], "CLMOBJECT", &v8);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  v3 = (*(v8[1] + 96))(v8[2], v8[3], a1 + 8);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  v6 = *(a1 + 16);
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        log_OutText(v9[4], "FE_CLM", 5, 0, "CLM to main language [%s]  will be done in  fe/fe_clm component (before fe_global).");
      }

      goto LABEL_17;
    }

LABEL_12:
    log_OutText(v9[4], "FE_CLM", 5, 0, "CLM Lua script for main language [%s] is not available, no CLM to main language in fe/fe_clm component (CLM done in upstream components).", v10);
    goto LABEL_19;
  }

  if (v6 == 2)
  {
    log_OutText(v9[4], "FE_CLM", 5, 0, "CLM to main language [%s]  will be done in  fe/fe_clm component (after fe_global).");
  }

  else if (v6 == 3)
  {
    log_OutText(v9[4], "FE_CLM", 5, 0, "CLM to main language [%s] will be done with explicit insertion of the  fe/fe_clm component.");
  }

LABEL_17:
  Object = luavmldoutil_initialize_lua_vm(*a1, a1[1], (a1 + 2), "runCLM", "FE_CLM", a1 + 7, "clm");
  if ((Object & 0x80000000) == 0)
  {
LABEL_18:
    v3 = Object;
    goto LABEL_19;
  }

  log_OutText(v9[4], "FE_CLM", 5, 0, "CLM Lua function [%s] is not available, no CLM to main language in fe/fe_clm component (CLM done in upstream components).", "runCLM");
  v3 = 0;
LABEL_19:
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
  if (a1 && (v7 = cstdlib_strcmp(__s1, "shortfragmentforceclm"), a3) && !v7 && cstdlib_strlen(a3))
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

uint64_t com_depes_GetMaxLayerLenBytes(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4)
{
  *a4 = 0;
  if (a2 <= a3)
  {
    v4 = 0;
    do
    {
      v5 = *(a1 + 96 + 2 * a2);
      if (v5 > v4)
      {
        *a4 = v5;
        v4 = v5;
      }

      LOWORD(a2) = a2 + 1;
    }

    while (a3 >= a2);
  }

  return 0;
}

uint64_t com_depes_AddToLayerGen(uint64_t *a1, unsigned int a2, char *__s, int a4, int a5)
{
  v6 = __s;
  v9 = a4 & ~(a4 >> 31);
  v10 = cstdlib_strlen(__s);
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
      v17 = 1;
      if (a5 && *v16 == 126)
      {
        v17 = cstdlib_strlen("¡");
      }

      v14 += v17;
      ++v16;
      --v15;
    }

    while (v15);
  }

  v18 = a1 + 12;
  result = com_depes_PrepareLayersForLen(a1, (*(a1 + a2 + 48) + v14));
  if ((result & 0x80000000) == 0)
  {
    v20 = (a1[a2 + 2] + *(v18 + a2));
    for (i = 0; v12; --v12)
    {
      v22 = *v6;
      if (a5 && v22 == 126)
      {
        *v20++ = -24126;
        v23 = 2;
      }

      else
      {
        *v20 = v22;
        v20 = (v20 + 1);
        v23 = 1;
      }

      i += v23;
      ++v6;
    }

    *v20 = 0;
    *(v18 + a2) += i;
    *(a1 + a2 + 56) += v13;
  }

  return result;
}

uint64_t com_depes_AddToLayer(uint64_t *a1, unsigned int a2, char *__s)
{
  v6 = cstdlib_strlen(__s);

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
  v11 = *MEMORY[0x277D85DE8];
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
  v10 = cstdlib_strlen(__s);
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
    cstdlib_memmove(&v15[v10], v15, v14);
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
    result = cstdlib_strlen(__s);
    v14 = result;
  }

  if (a2 < a3 && v14 <= a4)
  {
    v15 = a2;
    do
    {
      v16 = *(v13 + 4 + 4 * v15++);
      Utf32SymToUtf8Sym(v16, __s, 5u);
      result = cstdlib_strlen(__s);
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
    result = cstdlib_strlen(__s);
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
      result = cstdlib_strlen(__s);
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

  v142 = v4;
  v143 = v5;
  v7 = a4;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  memset(v111, 0, sizeof(v111));
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
      cstdlib_memmove((*(v16 + 8 * v12) + 4 * a3), (*(v16 + 8 * v12) + 4 * v14), 4 * v15);
      v16 = *(a1 + 1504);
      v17 = *(v16 + 8 * v12);
      *(v17 + 4 * v10 + 4) = 31;
      *(v17 + 4 * v14) = 31;
      ++v12;
    }

    while (v12 < *(a1 + 24));
    v7 = a4;
  }

  cstdlib_memmove((*(a1 + 1560) + v13), (*(a1 + 1560) + v14), v15);
  *(*(a1 + 1560) + v10 + 1) = 0;
  *(*(a1 + 1560) + v14) = 0;
  v18 = *v7 + 1;
  *v7 = v18;
  WORD1(v111[2]) = v18;
  v19 = **(a1 + 1504);
  *(a1 + 1448) = v19;
  *(a1 + 1440) = v19;
  *(&v111[0] + 1) = v19;
  *&v111[1] = v19;
  *(a1 + 1410) = 0;
  v141 = 0;
  v139 = 0;
  *(a1 + 2096) = 0u;
  cstdlib_memset(&v111[2] + 4, 0, 0x200uLL);
  if (SWORD1(v111[2]) > a3)
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
          ++*(&v111[2] + v21 + 2);
          v21 = v110[++v22];
        }

        while (v110[v22]);
      }

      ++v20;
    }

    while (v20 < SWORD1(v111[2]));
  }

  WORD1(v112) = 2;
  v23 = a2 - 1;
  HIWORD(v111[1]) = *(*(a1 + 64) + 2 * (a2 - 1)) - 1;
  if ((HIWORD(v111[1]) & 0x8000) != 0)
  {
    return 0;
  }

  log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 6, 0, "Start gram number %d", a2);
  *(a1 + 2 * *(a1 + 1430) + 1568) = a3;
  v24 = SHIWORD(v111[1]);
  *(a1 + 2 * *(a1 + 1430) + 1824) = HIWORD(v111[1]);
  if (v24 < *(*(a1 + 72) + 2 * v23))
  {
    v25 = (a1 + 152);
    do
    {
      v26 = *(a1 + 120);
      LODWORD(v111[0]) = *(*(a1 + 112) + 4 * v24);
      GetContextLenInNrChars(*(&v111[0] + 1), a3, SWORD1(v111[2]), *(v26 + v24), *(*(a1 + 128) + v24), &v111[1] + 4, &v111[1] + 5);
      v27 = HIWORD(v111[1]) + 1;
      ++HIWORD(v111[1]);
      v28 = *(a1 + 176);
      v29 = LODWORD(v111[0]);
      v30 = *(v28 + (LODWORD(v111[0]) - 1));
      if (v30 > 0x64)
      {
        LOWORD(v30) = v30 - 100;
      }

      *(a1 + 1408) = v30;
      switch(v30)
      {
        case 1:
          v31 = v27 - 1;
          if (*(&v111[2] + *(*(a1 + 160) + v31) + 2) && *(&v111[2] + *(*(a1 + 168) + v31) + 2))
          {
            v140 = *(v28 + v29);
            for (i = WORD4(v111[1]) + a3; ; i = v33 + 1)
            {
              LOWORD(v111[2]) = i;
              if (SWORD1(v111[2]) - SWORD5(v111[1]) < i || *(a1 + 1428))
              {
                break;
              }

              Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * i - 4), v110, 5u);
              if (v110[0] == v140)
              {
                v138 = 0;
                *(a1 + 1456) = *(a1 + 176) + (LODWORD(v111[0]) + 1);
                *(a1 + 1470) = 1;
                EXEC_RULE(a1, SHIWORD(v111[1]), (LOWORD(v111[2]) + 1), v111);
                v33 = v138 + LOWORD(v111[2]);
              }

              else
              {
                v33 = v111[2];
              }
            }
          }

          goto LABEL_215;
        case 2:
          v73 = v27 - 1;
          if (*(&v111[2] + *(*(a1 + 160) + v73) + 2) && *(&v111[2] + *(*(a1 + 168) + v73) + 2))
          {
            v74 = WORD1(v111[2]) - WORD5(v111[1]) + 1;
            LOWORD(v111[2]) = v74;
            v140 = *(v28 + v29);
            while (SWORD4(v111[1]) + a3 <= v74 && !*(a1 + 1428))
            {
              Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v74 - 4), v110, 5u);
              if (v110[0] == v140)
              {
                *(a1 + 1456) = *(a1 + 176) + (LODWORD(v111[0]) + 1);
                *(a1 + 1470) = 1;
                EXEC_RULE(a1, SHIWORD(v111[1]), (LOWORD(v111[2]) + 1), v111);
              }

              v74 = --LOWORD(v111[2]);
            }
          }

          goto LABEL_215;
        case 3:
          v63 = v27 - 1;
          if (*(&v111[2] + *(*(a1 + 160) + v63) + 2))
          {
            if (*(&v111[2] + *(*(a1 + 168) + v63) + 2))
            {
              v64 = WORD4(v111[1]) + a3;
              LOWORD(v111[2]) = WORD4(v111[1]) + a3;
              v140 = *(v28 + v29);
              *(a1 + 1384) = 0;
              if (SWORD1(v111[2]) - SWORD5(v111[1]) >= v64)
              {
                do
                {
                  if (*(a1 + 1428))
                  {
                    goto LABEL_118;
                  }

                  Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v64 - 4), v110, 5u);
                  if (v110[0] == v140)
                  {
                    *(a1 + 1456) = *(a1 + 176) + (LODWORD(v111[0]) + 1);
                    *(a1 + 1470) = 1;
                    EXEC_RULE(a1, SHIWORD(v111[1]), (LOWORD(v111[2]) + 1), v111);
                    v64 = ++LOWORD(v111[2]);
                    if (*(a1 + 1384) == 1)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v64 = ++LOWORD(v111[2]);
                  }
                }

                while (SWORD1(v111[2]) - SWORD5(v111[1]) >= v64);
                goto LABEL_118;
              }
            }
          }

          goto LABEL_215;
        case 4:
          v68 = v27 - 1;
          if (*(&v111[2] + *(*(a1 + 160) + v68) + 2))
          {
            if (*(&v111[2] + *(*(a1 + 168) + v68) + 2))
            {
              v69 = WORD1(v111[2]) - WORD5(v111[1]) + 1;
              LOWORD(v111[2]) = v69;
              v140 = *(v28 + v29);
              *(a1 + 1384) = 0;
              if (SWORD4(v111[1]) + a3 <= v69)
              {
                do
                {
                  if (*(a1 + 1428))
                  {
                    break;
                  }

                  Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v69 - 4), v110, 5u);
                  if (v110[0] == v140)
                  {
                    *(a1 + 1470) = 1;
                    *(a1 + 1456) = *(a1 + 176) + (LODWORD(v111[0]) + 1);
                    EXEC_RULE(a1, SHIWORD(v111[1]), (LOWORD(v111[2]) + 1), v111);
                    v69 = --LOWORD(v111[2]);
                    if (*(a1 + 1384) == 1)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v69 = --LOWORD(v111[2]);
                  }
                }

                while (SWORD4(v111[1]) + a3 <= v69);
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
          if (*(&v111[2] + *(*(a1 + 160) + v47) + 2) && *(&v111[2] + *(*(a1 + 168) + v47) + 2))
          {
            for (j = WORD4(v111[1]) + a3; ; j = v138 + LOWORD(v111[2]) + 1)
            {
              LOWORD(v111[2]) = j;
              if (SWORD1(v111[2]) - SWORD5(v111[1]) < j || *(a1 + 1428))
              {
                break;
              }

              v138 = 0;
              *(a1 + 1456) = *(a1 + 176) + LODWORD(v111[0]);
              *(a1 + 1470) = 0;
              EXEC_RULE(a1, SHIWORD(v111[1]), j, v111);
            }
          }

          goto LABEL_215;
        case 6:
          v75 = v27 - 1;
          if (*(&v111[2] + *(*(a1 + 160) + v75) + 2) && *(&v111[2] + *(*(a1 + 168) + v75) + 2))
          {
            for (k = WORD1(v111[2]) - WORD5(v111[1]); ; k = LOWORD(v111[2]) - 1)
            {
              LOWORD(v111[2]) = k;
              if (SWORD4(v111[1]) + a3 > k || *(a1 + 1428))
              {
                break;
              }

              *(a1 + 1456) = *(a1 + 176) + LODWORD(v111[0]);
              *(a1 + 1470) = 0;
              EXEC_RULE(a1, SHIWORD(v111[1]), k, v111);
            }
          }

          goto LABEL_215;
        case 7:
          v77 = v27 - 1;
          if (*(&v111[2] + *(*(a1 + 160) + v77) + 2))
          {
            if (*(&v111[2] + *(*(a1 + 168) + v77) + 2))
            {
              v78 = WORD4(v111[1]) + a3;
              LOWORD(v111[2]) = WORD4(v111[1]) + a3;
              *(a1 + 1384) = 0;
              if (SWORD1(v111[2]) - SWORD5(v111[1]) >= v78)
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

                  *(a1 + 1456) = *(a1 + 176) + LODWORD(v111[0]);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, SHIWORD(v111[1]), v78, v111);
                  v78 = LOWORD(v111[2]) + 1;
                  LOWORD(v111[2]) = v78;
                  if (SWORD1(v111[2]) - SWORD5(v111[1]) < v78)
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
          if (!*(&v111[2] + *(*(a1 + 160) + v70) + 2))
          {
            goto LABEL_215;
          }

          if (!*(&v111[2] + *(*(a1 + 168) + v70) + 2))
          {
            goto LABEL_215;
          }

          v71 = WORD1(v111[2]) - WORD5(v111[1]);
          LOWORD(v111[2]) = WORD1(v111[2]) - WORD5(v111[1]);
          *(a1 + 1384) = 0;
          if (SWORD4(v111[1]) + a3 > v71)
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

            *(a1 + 1456) = *(a1 + 176) + LODWORD(v111[0]);
            *(a1 + 1470) = 0;
            EXEC_RULE(a1, SHIWORD(v111[1]), v71, v111);
            v71 = LOWORD(v111[2]) - 1;
            LOWORD(v111[2]) = v71;
            if (SWORD4(v111[1]) + a3 > v71)
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
          LODWORD(v139) = 1;
          v85 = WORD4(v111[1]) + a3;
          LOWORD(v111[2]) = WORD4(v111[1]) + a3;
          v86 = WORD5(v111[1]);
          if (SWORD1(v111[2]) - SWORD5(v111[1]) < (WORD4(v111[1]) + a3))
          {
            goto LABEL_213;
          }

          v87 = WORD1(v111[2]);
          while (1)
          {
            LOWORD(v88) = HIWORD(v111[1]);
            if (*(a1 + 1428))
            {
              break;
            }

            v138 = -2;
            v89 = HIWORD(v111[1]) + *(*v25 + SHIWORD(v111[1]) - 1);
            WORD6(v111[1]) = v89;
            if (SHIWORD(v111[1]) > v89)
            {
              goto LABEL_164;
            }

            v90 = v89;
            do
            {
              v91 = v88 - 1;
              if (*(&v111[2] + *(*(a1 + 160) + v91) + 2))
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v91);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, v88, SLOWORD(v111[2]), v111);
                v90 = WORD6(v111[1]);
              }

              v88 = (v88 + 1);
            }

            while (v88 <= v90);
            v85 = LOWORD(v111[2]);
            v87 = WORD1(v111[2]);
            v86 = WORD5(v111[1]);
            if (v138 == 65534)
            {
LABEL_164:
              v92 = 1;
            }

            else
            {
              v92 = v138 + 1;
            }

            v85 += v92;
            LOWORD(v111[2]) = v85;
            if (v87 - v86 < v85)
            {
              LOWORD(v27) = HIWORD(v111[1]);
              goto LABEL_213;
            }
          }

          LOWORD(v27) = HIWORD(v111[1]);
          goto LABEL_213;
        case 10:
          v57 = WORD1(v111[2]) - WORD5(v111[1]);
          LOWORD(v111[2]) = WORD1(v111[2]) - WORD5(v111[1]);
          if (SWORD4(v111[1]) + a3 > (WORD1(v111[2]) - WORD5(v111[1])))
          {
            goto LABEL_211;
          }

          v58 = WORD4(v111[1]);
          while (1)
          {
            LOWORD(v59) = HIWORD(v111[1]);
            if (*(a1 + 1428))
            {
              break;
            }

            v60 = HIWORD(v111[1]) + *(*v25 + SHIWORD(v111[1]) - 1);
            WORD6(v111[1]) = v60;
            if (SHIWORD(v111[1]) <= v60)
            {
              v61 = v60;
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v62 = v59 - 1;
                if (*(&v111[2] + *(*(a1 + 160) + v62) + 2))
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v62);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v59, SLOWORD(v111[2]), v111);
                  v61 = WORD6(v111[1]);
                }

                v59 = (v59 + 1);
              }

              while (v59 <= v61);
              v57 = LOWORD(v111[2]);
              v58 = WORD4(v111[1]);
            }

            LOWORD(v111[2]) = --v57;
            if (a3 + v58 > v57)
            {
              LOWORD(v27) = HIWORD(v111[1]);
              goto LABEL_211;
            }
          }

          LOWORD(v27) = HIWORD(v111[1]);
LABEL_211:
          v101 = v27 + *(*v25 + v27 - 1);
          goto LABEL_197;
        case 11:
          v80 = WORD4(v111[1]) + a3;
          LOWORD(v111[2]) = WORD4(v111[1]) + a3;
          *(a1 + 1384) = 0;
          v81 = v27 + *(*(a1 + 152) + v27 - 1);
          WORD6(v111[1]) = v81;
          v82 = WORD1(v111[2]);
          v83 = WORD5(v111[1]);
          if (SWORD1(v111[2]) - SWORD5(v111[1]) < v80)
          {
            goto LABEL_153;
          }

          while (!*(a1 + 1384))
          {
            if (*(a1 + 1428))
            {
              goto LABEL_153;
            }

            LOWORD(v102) = HIWORD(v111[1]);
            if (SHIWORD(v111[1]) <= v81)
            {
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v103 = v102 - 1;
                if (*(&v111[2] + *(*(a1 + 160) + v103) + 2))
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v103);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v102, SLOWORD(v111[2]), v111);
                  v81 = WORD6(v111[1]);
                }

                v102 = (v102 + 1);
              }

              while (v102 <= v81);
              v80 = LOWORD(v111[2]);
              v82 = WORD1(v111[2]);
              v83 = WORD5(v111[1]);
            }

            LOWORD(v111[2]) = ++v80;
            if (v82 - v83 < v80)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_151;
        case 12:
          v42 = WORD1(v111[2]) - WORD5(v111[1]);
          LOWORD(v111[2]) = WORD1(v111[2]) - WORD5(v111[1]);
          *(a1 + 1384) = 0;
          v43 = v27 + *(*(a1 + 152) + v27 - 1);
          WORD6(v111[1]) = v43;
          v44 = WORD4(v111[1]);
          if (SWORD4(v111[1]) + a3 > v42)
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

            LOWORD(v45) = HIWORD(v111[1]);
            if (SHIWORD(v111[1]) <= v43)
            {
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v46 = v45 - 1;
                if (*(&v111[2] + *(*(a1 + 160) + v46) + 2))
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v46);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v45, SLOWORD(v111[2]), v111);
                  v43 = WORD6(v111[1]);
                }

                v45 = (v45 + 1);
              }

              while (v45 <= v43);
              v42 = LOWORD(v111[2]);
              v44 = WORD4(v111[1]);
            }

            LOWORD(v111[2]) = --v42;
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
          LOWORD(v37) = HIWORD(v111[1]);
          v84 = *v79 + SHIWORD(v111[1]);
          goto LABEL_196;
        case 13:
          LODWORD(v139) = 1;
          v49 = WORD4(v111[1]) + a3;
          LOWORD(v111[2]) = WORD4(v111[1]) + a3;
          do
          {
            if (SWORD1(v111[2]) - SWORD5(v111[1]) < v49 || *(a1 + 1428))
            {
              break;
            }

            v50 = 0;
            v138 = -2;
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
              if (*(&v111[2] + *(*(a1 + 160) + v54) + 2))
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v54);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v27 + v51), SLOWORD(v111[2]), v111);
                LOWORD(v27) = HIWORD(v111[1]);
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
            v56 = v52 ? v138 + 1 : 1;
            v49 = v56 + LOWORD(v111[2]);
            LOWORD(v111[2]) = v49;
          }

          while (v27 <= v55);
          if (*(a1 + 44) > v27)
          {
LABEL_213:
            HIWORD(v111[1]) = v27 + *(*v25 + v27 - 1);
          }

          LODWORD(v139) = 0;
          goto LABEL_215;
        case 14:
          LOWORD(v111[2]) = WORD1(v111[2]) - WORD5(v111[1]);
          if (SWORD4(v111[1]) + a3 > (WORD1(v111[2]) - WORD5(v111[1])))
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
              if (*(&v111[2] + *(*(a1 + 160) + v99) + 2))
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v99);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v27 + v98), SLOWORD(v111[2]), v111);
                v37 = HIWORD(v111[1]);
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
            --LOWORD(v111[2]);
            v27 = v100;
          }

          while (SWORD4(v111[1]) + a3 <= SLOWORD(v111[2]));
LABEL_194:
          v67 = *v25;
          goto LABEL_195;
        case 15:
          v36 = WORD4(v111[1]) + a3;
          LOWORD(v111[2]) = WORD4(v111[1]) + a3;
          *(a1 + 1384) = 0;
          if (SWORD1(v111[2]) - SWORD5(v111[1]) < v36)
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
              if (*(&v111[2] + *(*(a1 + 160) + v40) + 2))
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v40);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v27 + v39), SLOWORD(v111[2]), v111);
                v37 = HIWORD(v111[1]);
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
            ++LOWORD(v111[2]);
            v27 = v41;
            if (SWORD1(v111[2]) - SWORD5(v111[1]) < SLOWORD(v111[2]))
            {
              goto LABEL_180;
            }
          }

          goto LABEL_209;
        case 16:
          v65 = WORD1(v111[2]) - WORD5(v111[1]);
          LOWORD(v111[2]) = WORD1(v111[2]) - WORD5(v111[1]);
          *(a1 + 1384) = 0;
          if (SWORD4(v111[1]) + a3 > v65)
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
            *(&v111[0] + 1) = *(v34 + 8 * *(v28 + v29) - 8);
            *(a1 + 1440) = *(&v111[0] + 1);
            v35 = v29 + 1;
            *&v111[1] = *(v34 + 8 * *(v28 + v35) - 8);
            *(a1 + 1448) = *&v111[1];
            LOWORD(v34) = *(v28 + v35) - 1;
            *(a1 + 1410) = v34;
            v141 = v34;
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
          if (*(&v111[2] + *(*(a1 + 160) + v95) + 2))
          {
            *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v95);
            *(a1 + 1470) = 0;
            EXEC_RULE(a1, (v27 + v94), SLOWORD(v111[2]), v111);
            v37 = HIWORD(v111[1]);
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
        --LOWORD(v111[2]);
        v27 = v96;
      }

      while (SWORD4(v111[1]) + a3 <= SLOWORD(v111[2]));
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
      HIWORD(v111[1]) = v101;
LABEL_215:
      LOWORD(v24) = HIWORD(v111[1]);
    }

    while (SHIWORD(v111[1]) < *(*(a1 + 72) + 2 * v23));
  }

  v104 = SWORD1(v111[2]);
  v105 = v7;
  *v7 = WORD1(v111[2]);
  if (*(a1 + 24) >= 1)
  {
    v106 = 0;
    do
    {
      v107 = (*(*(a1 + 1504) + 8 * v106) + 4 * a3);
      cstdlib_memmove(v107 - 4, v107, 4 * (v104 - a3 + 1));
      ++v106;
    }

    while (v106 < *(a1 + 24));
  }

  *(*(a1 + 1560) + a3) += *(*(a1 + 1560) + a3 - 1);
  *(*(a1 + 1560) + v104 - 1) += *(*(a1 + 1560) + v104);
  cstdlib_memmove((*(a1 + 1560) + a3 - 1), (*(a1 + 1560) + a3), (v104 - a3));
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

  return HIDWORD(v139);
}

uint64_t EXEC_RULE(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  LOWORD(v6) = 0;
  v7 = (a4 + 34);
  v268 = *(a4 + 34);
  *(result + 1476) = 0;
  v8 = (result + 2096);
  v9 = (result + 1400);
  __s = (result + 1484);
  i = *(result + 1456);
  while (2)
  {
    switch(*i)
    {
      case 0:
        if (!a3)
        {
          goto LABEL_456;
        }

        v184 = *(a4 + 32);
        *(v5 + 1474) = a3 - v184;
        *(v5 + 1468) = -1;
        *(v5 + 1466) = v184 - 1;
        result = CTXT(v5);
        if (!result)
        {
          goto LABEL_456;
        }

        *(v5 + 1468) = 1;
        *(v5 + 1466) = a3;
        result = CTXT(v5);
        if (!result)
        {
          goto LABEL_456;
        }

        v273 = 0;
        v185 = a4;
        v186 = *(a4 + 32);
        v187 = *(v5 + 1474);
        v269 = (v187 + v186);
        *(v5 + 1448) = *(a4 + 16);
        *(v5 + 1384) = 1;
        *(v5 + 1410) = *(a4 + 562);
        v188 = *(a4 + 34);
        v189 = v188;
        v190 = *(v5 + 1456);
        result = v190 + 1;
        *(v5 + 1456) = v190 + 1;
        v191 = *(v190 + 1);
        v264 = v186;
        if (v191 == 22)
        {
          v192 = (v187 + v186);
          v195 = *(*(v5 + 136) + a2 - 1);
          v196 = (v187 - v195);
          if (v269 - v186 <= v195)
          {
            v196 = 0;
          }

          v266 = v196;
          result = v190 + 2;
          *(v5 + 1456) = v190 + 2;
        }

        else
        {
          v192 = (v187 + v186);
          if (v191 == 1)
          {
            *(v5 + 1456) = v190 + 2;
            v193 = *(v190 + 2);
            if (v193 == 1)
            {
              v194 = v187 - 1;
              goto LABEL_443;
            }

            if (v193 == 2)
            {
              v194 = v187 - 1;
              *(a4 + 32) = **(v5 + 184);
              *(a4 + 30) = *(v5 + 44);
LABEL_443:
              if (!*(v185 + 552) || *(v185 + 548) < v194)
              {
                *(v185 + 548) = v194;
              }

              goto LABEL_446;
            }

            if (v186 < v269)
            {
              v227 = v186;
              do
              {
                Utf32SymToUtf8Sym(*(**(v5 + 1504) + 4 * v227), v274, 5u);
                v228 = v274[0];
                if (v274[0])
                {
                  v229 = 0;
                  do
                  {
                    --*(a4 + 36 + 2 * v228);
                    v228 = v274[++v229];
                  }

                  while (v274[v229]);
                }

                ++v227;
              }

              while (v227 != v269);
            }

            v230 = *(v5 + 24);
            v231 = v269;
            if (v230 <= 0)
            {
              v233 = v188 - v269 + 1;
              v185 = a4;
            }

            else
            {
              v232 = 0;
              v233 = v188 - v269 + 1;
              v185 = a4;
              do
              {
                v234 = *(v5 + 1416);
                v235 = *(v234 + 2 * v232) - v233;
                *(v234 + 2 * v232) = v235;
                v236 = *(*(v5 + 1504) + 8 * v232);
                cstdlib_memmove((v236 + 4 * v235), (v236 + 4 * v269), 4 * v233);
                ++v232;
                v230 = *(v5 + 24);
              }

              while (v232 < v230);
            }

            v237 = *(v5 + 1416);
            *(v237 + 2 * v230) -= v233;
            cstdlib_memmove((*(v5 + 1560) + *(v237 + 2 * *(v5 + 24))), (*(v5 + 1560) + v269), v233);
            cstdlib_memset((*(v5 + 1560) + v269), 0, v233);
            *v7 = v269;
            *(v5 + 1432) = 0;
            ++*(v5 + 1430);
            v238 = *(v5 + 1476);
            v239 = **(v5 + 1456);
            v240 = *(*(v5 + 56) + v239 - 1);
            if (v240 > 1)
            {
              if (v240 == 3)
              {
                result = DCT_LKP(v5, *(*(v5 + 1520) + 8 * (v239 - 1)), v186, v7);
                goto LABEL_422;
              }

              if (v240 == 2)
              {
                result = INFERENCE(v5, v239, (v186 + 1), v7);
                goto LABEL_422;
              }
            }

            else
            {
              if (!*(*(v5 + 56) + v239 - 1))
              {
                INFERENCE(v5, v239, (v186 + 1), v7);
                result = 1;
                goto LABEL_422;
              }

              if (v240 == 1)
              {
                INFERENCE(v5, v239, (v186 + 1), v7);
                result = 0;
LABEL_422:
                *(v5 + 1384) = result;
                *(v5 + 1476) = v238;
                --*(v5 + 1430);
                if (*(v5 + 1428) == 156)
                {
                  goto LABEL_446;
                }

                v244 = *v7;
                if (!*(v5 + 1432))
                {
                  if (v269 >= v244)
                  {
                    v245 = *v7;
                    LOWORD(v246) = v269;
                    do
                    {
                      v247 = *(v5 + 1560);
                      if (*(v247 + v246))
                      {
                        *(v247 + v244 - 1) += *(v247 + v246);
                        v245 = *v7;
                      }

                      v246 = (v246 - 1);
                      v244 = v245;
                    }

                    while (v246 >= v245);
                  }

                  *(*(v5 + 1560) + v244) = 0;
                  LODWORD(v244) = *v7;
                  v185 = a4;
                  if (v269 < v244)
                  {
                    do
                    {
                      *(*(v5 + 1560) + v231++) = 0;
                      v244 = *v7;
                    }

                    while (v231 < v244);
                    v185 = a4;
                  }
                }

                if (v186 < v244)
                {
                  v248 = v244;
                  do
                  {
                    Utf32SymToUtf8Sym(*(**(v5 + 1504) + 4 * v186), v274, 5u);
                    v249 = v274[0];
                    if (v274[0])
                    {
                      v250 = 0;
                      do
                      {
                        ++*(v185 + 36 + 2 * v249);
                        v249 = v274[++v250];
                      }

                      while (v274[v250]);
                    }

                    ++v186;
                  }

                  while (v186 != v248);
                  LOWORD(v244) = *v7;
                }

                if (*(v5 + 1384))
                {
                  v194 = v244 + ~*(v185 + 32) + *(v5 + 1476);
                }

                else
                {
                  v194 = 0;
                }

                result = RESTORE_SUBSTITUTION(v5, v244);
                *v7 = result;
                goto LABEL_443;
              }
            }

            result = pfExt[*(*(v5 + 56) + v239 - 1)](v5, v186, v7);
            goto LABEL_422;
          }

          v266 = 0;
        }

        if (v186 < v192)
        {
          v197 = v186;
          do
          {
            Utf32SymToUtf8Sym(*(**(v5 + 1504) + 4 * v197), v274, 5u);
            v198 = v274[0];
            if (v274[0])
            {
              v199 = 0;
              do
              {
                --*(a4 + 36 + 2 * v198);
                v198 = v274[++v199];
              }

              while (v274[v199]);
            }

            ++v197;
          }

          while (v197 != v192);
          result = *(v5 + 1456);
          v192 = v269;
          v189 = v188;
        }

        v200 = v186;
        v201 = v186;
        v265 = v189;
        v270 = v189;
        v202 = v186;
        break;
      case 2:
        v26 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          v27 = a3;
          do
          {
            LODWORD(a3) = v27;
            v28 = v27;
            v29 = *(v26 + 4 * v27);
            v27 += *(v5 + 1470);
          }

          while (v29 == 126);
        }

        else
        {
          v28 = a3;
        }

        v85 = (v26 + 4 * v28);
        if (*v8 != v85)
        {
          result = Utf32SymToUtf8Sym(*v85, v9, 5u);
          v86 = (*(v5 + 1440) + 4 * v28);
          *(v5 + 1405) = *v86 & 0x3F;
          *(v5 + 2096) = v86;
        }

        v87 = *v9;
        if (*v9)
        {
          v88 = v87 == 31;
        }

        else
        {
          v88 = 1;
        }

        if (v88)
        {
          goto LABEL_456;
        }

        v89 = *(v5 + 1512);
        v90 = (*(v5 + 1456) + 1);
        *(v5 + 1456) = v90;
        v91 = *v90;
        v92 = 5 * v91;
        v93 = (v89 + 5 * v91);
        if (*v93)
        {
          v94 = 0;
          v95 = 0;
          do
          {
            if (v87 != v93[v94])
            {
              goto LABEL_456;
            }

            v94 = ++v95;
            v87 = v9[v95];
          }

          while (v9[v95]);
        }

        else
        {
          result = VAR_APPEARENCE(v5, v91);
          if (!result)
          {
            goto LABEL_456;
          }

          *(v5 + 1480) = 1;
          result = SETUTF8CHAR(*(v5 + 1512) + v92, v9);
          v90 = *(v5 + 1456);
        }

        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
LABEL_206:
        i = (v90 + 1);
        *(v5 + 1456) = v90 + 1;
        continue;
      case 3:
        v18 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v19 = a3;
            v20 = a3;
            v21 = *(v18 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v21 == 126);
          LODWORD(a3) = v19;
        }

        else
        {
          v20 = a3;
        }

        v77 = (v18 + 4 * v20);
        if (*v8 != v77)
        {
          result = Utf32SymToUtf8Sym(*v77, v9, 5u);
          v78 = (*(v5 + 1440) + 4 * v20);
          *(v5 + 1405) = *v78 & 0x3F;
          *(v5 + 2096) = v78;
        }

        if (*v9)
        {
          v79 = *v9 == 31;
        }

        else
        {
          v79 = 1;
        }

        if (v79)
        {
          goto LABEL_456;
        }

        v80 = *(v5 + 2120);
        goto LABEL_100;
      case 4:
        v50 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v51 = a3;
            v52 = a3;
            v53 = *(v50 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v53 == 126);
          LODWORD(a3) = v51;
        }

        else
        {
          v52 = a3;
        }

        v125 = (v50 + 4 * v52);
        if (*v8 != v125)
        {
          result = Utf32SymToUtf8Sym(*v125, v9, 5u);
          v126 = (*(v5 + 1440) + 4 * v52);
          *(v5 + 1405) = *v126 & 0x3F;
          *(v5 + 2096) = v126;
        }

        if (*v9)
        {
          v127 = *v9 == 31;
        }

        else
        {
          v127 = 1;
        }

        if (v127)
        {
          goto LABEL_456;
        }

        v84 = *(v5 + 2120);
        goto LABEL_156;
      case 5:
        v30 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v31 = a3;
            v32 = a3;
            v33 = *(v30 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v33 == 126);
          LODWORD(a3) = v31;
        }

        else
        {
          v32 = a3;
        }

        v96 = (v30 + 4 * v32);
        if (*v8 != v96)
        {
          result = Utf32SymToUtf8Sym(*v96, v9, 5u);
          v97 = (*(v5 + 1440) + 4 * v32);
          *(v5 + 1405) = *v97 & 0x3F;
          *(v5 + 2096) = v97;
        }

        if (*v9)
        {
          v98 = *v9 == 31;
        }

        else
        {
          v98 = 1;
        }

        if (v98)
        {
          goto LABEL_456;
        }

        v80 = *(v5 + 2128);
LABEL_100:
        v99 = (*(v5 + 1456) + 1);
        *(v5 + 1456) = v99;
        result = cstdlib_strstr(*(*(v80 + 8 * (*v99 - 1)) + 8 * *(v5 + 1405)), v9);
        if (!result)
        {
          goto LABEL_456;
        }

        goto LABEL_205;
      case 6:
        v22 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v23 = a3;
            v24 = a3;
            v25 = *(v22 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v25 == 126);
          LODWORD(a3) = v23;
        }

        else
        {
          v24 = a3;
        }

        v81 = (v22 + 4 * v24);
        if (*v8 != v81)
        {
          result = Utf32SymToUtf8Sym(*v81, v9, 5u);
          v82 = (*(v5 + 1440) + 4 * v24);
          *(v5 + 1405) = *v82 & 0x3F;
          *(v5 + 2096) = v82;
        }

        if (*v9)
        {
          v83 = *v9 == 31;
        }

        else
        {
          v83 = 1;
        }

        if (v83)
        {
          goto LABEL_456;
        }

        v84 = *(v5 + 2128);
LABEL_156:
        v128 = (*(v5 + 1456) + 1);
        *(v5 + 1456) = v128;
        result = cstdlib_strstr(*(*(v84 + 8 * (*v128 - 1)) + 8 * *(v5 + 1405)), v9);
        if (result)
        {
          goto LABEL_456;
        }

        goto LABEL_205;
      case 7:
        v54 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v55 = a3;
            v56 = a3;
            v57 = *(v54 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v57 == 126);
          LODWORD(a3) = v55;
        }

        else
        {
          v56 = a3;
        }

        v129 = (v54 + 4 * v56);
        if (*v8 != v129)
        {
          result = Utf32SymToUtf8Sym(*v129, v9, 5u);
          v130 = (*(v5 + 1440) + 4 * v56);
          *(v5 + 1405) = *v130 & 0x3F;
          *(v5 + 2096) = v130;
        }

        if (*v9)
        {
          v131 = *v9 == 31;
        }

        else
        {
          v131 = 1;
        }

        if (v131)
        {
          goto LABEL_456;
        }

        v132 = *(v5 + 1456);
        *(v5 + 1456) = v132 + 1;
        result = cstdlib_strstr(*(*(*(v5 + 2128) + 8 * (*(v132 + 1) - 1)) + 8 * *(v5 + 1405)), v9);
        if (!result)
        {
          goto LABEL_456;
        }

        result = cstdlib_strstr((*(v5 + 88) + (**(v5 + 1456) << 8) - 256), v9);
        if (!result)
        {
          goto LABEL_456;
        }

        v133 = **(v5 + 1456);
        v134 = v133 - 1;
        v135 = *(v5 + 88);
        v136 = v135 + (v133 << 8);
        if (v134)
        {
          v136 -= 512;
          v137 = *(v5 + 96);
        }

        else
        {
          v137 = *(v5 + 96);
          v134 = v134;
        }

        result = SETUTF8CHAR(__s, (v136 + *(v137 + (v134 << 8) + result - (v135 + (v134 << 8)))));
LABEL_205:
        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
        v90 = *(v5 + 1456);
        goto LABEL_206;
      case 8:
        v62 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v63 = a3;
            v64 = a3;
            v65 = *(v62 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v65 == 126);
          LODWORD(a3) = v63;
        }

        else
        {
          v64 = a3;
        }

        v150 = (v62 + 4 * v64);
        if (*v8 != v150)
        {
          Utf32SymToUtf8Sym(*v150, v9, 5u);
          v151 = (*(v5 + 1440) + 4 * v64);
          *(v5 + 1405) = *v151 & 0x3F;
          *(v5 + 2096) = v151;
          i = *(v5 + 1456);
        }

        *(v5 + 1456) = i + 1;
        result = CHECK_OF_LIST(v5, 8u, a3);
        if (result)
        {
          goto LABEL_205;
        }

        goto LABEL_456;
      case 11:
        *(v5 + 1472) = a3;
        v34 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v35 = a3;
            v36 = a3;
            v37 = *(v34 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v37 == 126);
          LOWORD(a3) = v35;
        }

        else
        {
          v36 = a3;
        }

        v100 = (v34 + 4 * v36);
        if (*v8 != v100)
        {
          Utf32SymToUtf8Sym(*v100, v9, 5u);
          v101 = (*(v5 + 1440) + 4 * v36);
          *(v5 + 1405) = *v101 & 0x3F;
          *(v5 + 2096) = v101;
          i = *(v5 + 1456);
        }

        v102 = i[2];
        if (v102 == 220)
        {
          v102 = 5000;
        }

        *(v5 + 1406) = v102;
        if (v102 && (*(v5 + 1456) = i + 3, CHECK_OF_LIST(v5, 0xBu, a3)))
        {
          LOWORD(v6) = 0;
          do
          {
            v103 = *(v5 + 1456);
            *(v5 + 1472) = a3 + 1;
            v104 = TOKEN1(v5, (a3 + 1));
            v6 = (v6 + 1);
            if (v6 >= *(v5 + 1406))
            {
              break;
            }

            LOWORD(a3) = v104;
            *(v5 + 1456) = i + 3;
          }

          while (CHECK_OF_LIST(v5, 0xBu, v104));
        }

        else
        {
          v6 = 0;
          v103 = 0;
        }

        result = LOG_WARNING_ON_MAX_NUMBER(v5, v6, 1);
        if (v6 < i[1])
        {
          goto LABEL_456;
        }

        if (v103)
        {
          *(v5 + 1456) = v103;
        }

        else
        {
          v103 = *(v5 + 1456);
        }

        a3 = *(v5 + 1472);
        for (i = (v103 + 1); ; ++i)
        {
          if (*(i - 1) == 11)
          {
            v157 = *(i - 2);
            v158 = v157 > 0x15;
            v159 = (1 << v157) & 0x20067C;
            if (v158 || v159 == 0)
            {
              break;
            }

            v161 = *(i - 3);
            v158 = v161 > 0x15;
            v162 = (1 << v161) & 0x20C67C;
            if (!v158 && v162 != 0)
            {
              break;
            }
          }

          *(v5 + 1456) = i;
        }

        goto LABEL_300;
      case 12:
        v14 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v15 = a3;
            v16 = a3;
            v17 = *(v14 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v17 == 126);
          LODWORD(a3) = v15;
        }

        else
        {
          v16 = a3;
        }

        v70 = (v14 + 4 * v16);
        if (*v8 != v70)
        {
          result = Utf32SymToUtf8Sym(*v70, v9, 5u);
          v71 = (*(v5 + 1440) + 4 * v16);
          *(v5 + 1405) = *v71 & 0x3F;
          *(v5 + 2096) = v71;
        }

        v72 = *v9;
        if (*v9)
        {
          v73 = v72 == 31;
        }

        else
        {
          v73 = 1;
        }

        if (v73)
        {
          goto LABEL_456;
        }

        v74 = 0;
        v75 = 0;
        v76 = *(v5 + 1456) + 1;
        *(v5 + 1456) = v76;
        do
        {
          if (v72 != *(v76 + v74))
          {
            goto LABEL_456;
          }

          v74 = ++v75;
          v72 = v9[v75];
        }

        while (v9[v75]);
        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
        result = cstdlib_strlen(v9);
        i = (*(v5 + 1456) + result);
        *(v5 + 1456) = i;
        continue;
      case 13:
        v46 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v47 = a3;
            v48 = a3;
            v49 = *(v46 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v49 == 126);
          LODWORD(a3) = v47;
        }

        else
        {
          v48 = a3;
        }

        v116 = (v46 + 4 * v48);
        if (*v8 != v116)
        {
          result = Utf32SymToUtf8Sym(*v116, v9, 5u);
          v117 = (*(v5 + 1440) + 4 * v48);
          *(v5 + 1405) = *v117 & 0x3F;
          *(v5 + 2096) = v117;
        }

        v118 = *v9;
        if (*v9)
        {
          v119 = v118 == 31;
        }

        else
        {
          v119 = 1;
        }

        if (v119)
        {
          goto LABEL_456;
        }

        v120 = 0;
        v121 = 0;
        v122 = *(v5 + 1456);
        *(v5 + 1456) = v122 + 1;
        while (v118 == *(v122 + 1 + v120))
        {
          v120 = ++v121;
          v118 = v9[v121];
          if (!v9[v121])
          {
            goto LABEL_456;
          }
        }

        v123 = (v122 + 2);
        do
        {
          *(v5 + 1456) = v123;
          v124 = *v123++;
        }

        while (v124 < -64);
        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
        i = v123 - 1;
        continue;
      case 14:
      case 16:
        v11 = *(v5 + 1440);
        *(v5 + 1368) = v11;
        v12 = v11 + 4 * a3;
        if (*(v5 + 2104) == v12)
        {
          a3 = *(v5 + 2112);
        }

        else
        {
          *(v5 + 2104) = v12;
          *(v5 + 2112) = a3;
        }

        v13 = *(*(v5 + 1504) + 8 * i[1] - 8);
        goto LABEL_52;
      case 15:
      case 17:
        v13 = *(v5 + 1368);
LABEL_52:
        *(v5 + 1440) = v13;
        *(v5 + 1470) = 0;
        i += 2;
        *(v5 + 1456) = i;
        continue;
      case 18:
        *(v5 + 1472) = a3;
        v58 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v59 = a3;
            v60 = a3;
            v61 = *(v58 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v61 == 126);
          LOWORD(a3) = v59;
        }

        else
        {
          v60 = a3;
        }

        v138 = (v58 + 4 * v60);
        if (*v8 != v138)
        {
          result = Utf32SymToUtf8Sym(*v138, v9, 5u);
          v139 = (*(v5 + 1440) + 4 * v60);
          *(v5 + 1405) = *v139 & 0x3F;
          *(v5 + 2096) = v139;
          i = *(v5 + 1456);
        }

        v140 = i[2];
        if (v140 == 220)
        {
          v140 = 5000;
        }

        *(v5 + 1406) = v140;
        *(v5 + 1392) = i + 4;
        v141 = i[3];
        if (v141 > 5)
        {
          if (i[3] > 0xCu)
          {
            if (v141 == 13)
            {
              LOWORD(v6) = 0;
              if (v140)
              {
                do
                {
                  v178 = *v9;
                  if (*v9)
                  {
                    v179 = v178 == 31;
                  }

                  else
                  {
                    v179 = 1;
                  }

                  if (v179)
                  {
                    break;
                  }

                  v180 = 0;
                  v181 = 0;
                  while (v178 == *(*(v5 + 1392) + v180))
                  {
                    v180 = ++v181;
                    v178 = v9[v181];
                    if (!v9[v181])
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
              v143 = v6;
              v144 = v5;
              v145 = 6;
            }

            else
            {
              if (v141 != 21)
              {
                goto LABEL_297;
              }

              LOWORD(v6) = 0;
              if (v140)
              {
                do
                {
                  v165 = *v9;
                  if (*v9)
                  {
                    v166 = v165 == 31;
                  }

                  else
                  {
                    v166 = 1;
                  }

                  if (v166)
                  {
                    break;
                  }

                  v167 = (*(v5 + 1512) + 5 * **(v5 + 1392));
                  if (*v167)
                  {
                    v168 = 0;
                    v169 = 0;
                    while (v165 == v167[v168])
                    {
                      v168 = ++v169;
                      v165 = v9[v169];
                      if (!v9[v169])
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
              v143 = v6;
              v144 = v5;
              v145 = 8;
            }
          }

          else if (v141 == 6)
          {
            LOWORD(v6) = 0;
            if (v140)
            {
              do
              {
                if (*v9)
                {
                  v176 = *v9 == 31;
                }

                else
                {
                  v176 = 1;
                }

                if (v176)
                {
                  break;
                }

                if (cstdlib_strstr(*(*(*(v5 + 2128) + 8 * (**(v5 + 1392) - 1)) + 8 * *(v5 + 1405)), v9))
                {
                  break;
                }

                *(v5 + 1472) = a3 + 1;
                LOWORD(a3) = TOKEN1(v5, (a3 + 1));
                v6 = (v6 + 1);
              }

              while (v6 < *(v5 + 1406));
            }

            v143 = v6;
            v144 = v5;
            v145 = 4;
          }

          else
          {
            if (v141 != 12)
            {
              goto LABEL_297;
            }

            LOWORD(v6) = 0;
            if (v140)
            {
              do
              {
                v146 = *v9;
                if (*v9)
                {
                  v147 = v146 == 31;
                }

                else
                {
                  v147 = 1;
                }

                if (v147)
                {
                  break;
                }

                v148 = 0;
                v149 = 0;
                do
                {
                  if (v146 != *(*(v5 + 1392) + v148))
                  {
                    goto LABEL_200;
                  }

                  v148 = ++v149;
                  v146 = v9[v149];
                }

                while (v9[v149]);
                *(v5 + 1472) = a3 + 1;
                LOWORD(a3) = TOKEN1(v5, (a3 + 1));
                v6 = (v6 + 1);
              }

              while (v6 < *(v5 + 1406));
            }

LABEL_200:
            v143 = v6;
            v144 = v5;
            v145 = 5;
          }

LABEL_296:
          result = LOG_WARNING_ON_MAX_NUMBER(v144, v143, v145);
          goto LABEL_297;
        }

        if (i[3] <= 3u)
        {
          if (v141 == 2)
          {
            LOWORD(v6) = 0;
            if (v140)
            {
              while (1)
              {
                v170 = *v9;
                if (*v9)
                {
                  v171 = v170 == 31;
                }

                else
                {
                  v171 = 1;
                }

                if (v171)
                {
                  goto LABEL_268;
                }

                v172 = **(v5 + 1392);
                v173 = (*(v5 + 1512) + 5 * v172);
                if (*v173)
                {
                  break;
                }

                if (VAR_APPEARENCE(v5, v172))
                {
                  *(v5 + 1480) = 1;
                  SETUTF8CHAR(*(v5 + 1512) + 5 * **(v5 + 1392), v9);
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

              v174 = 0;
              v175 = 0;
              while (v170 == v173[v174])
              {
                v174 = ++v175;
                v170 = v9[v175];
                if (!v9[v175])
                {
                  goto LABEL_267;
                }
              }
            }

LABEL_268:
            v143 = v6;
            v144 = v5;
            v145 = 7;
          }

          else
          {
            if (v141 != 3)
            {
              goto LABEL_297;
            }

            LOWORD(v6) = 0;
            if (v140)
            {
              do
              {
                if (*v9)
                {
                  v142 = *v9 == 31;
                }

                else
                {
                  v142 = 1;
                }

                if (v142)
                {
                  break;
                }

                if (!cstdlib_strstr(*(*(*(v5 + 2120) + 8 * (**(v5 + 1392) - 1)) + 8 * *(v5 + 1405)), v9))
                {
                  break;
                }

                *(v5 + 1472) = a3 + 1;
                LOWORD(a3) = TOKEN1(v5, (a3 + 1));
                v6 = (v6 + 1);
              }

              while (v6 < *(v5 + 1406));
            }

            v143 = v6;
            v144 = v5;
            v145 = 2;
          }

          goto LABEL_296;
        }

        if (v141 == 4)
        {
          LOWORD(v6) = 0;
          if (v140)
          {
            do
            {
              if (*v9)
              {
                v177 = *v9 == 31;
              }

              else
              {
                v177 = 1;
              }

              if (v177)
              {
                break;
              }

              if (cstdlib_strstr(*(*(*(v5 + 2120) + 8 * (**(v5 + 1392) - 1)) + 8 * *(v5 + 1405)), v9))
              {
                break;
              }

              *(v5 + 1472) = a3 + 1;
              LOWORD(a3) = TOKEN1(v5, (a3 + 1));
              v6 = (v6 + 1);
            }

            while (v6 < *(v5 + 1406));
          }

          v143 = v6;
          v144 = v5;
          v145 = 3;
          goto LABEL_296;
        }

        if (v141 == 5)
        {
          LOWORD(v6) = 0;
          if (v140)
          {
            do
            {
              if (*v9)
              {
                v164 = *v9 == 31;
              }

              else
              {
                v164 = 1;
              }

              if (v164)
              {
                break;
              }

              result = cstdlib_strstr(*(*(*(v5 + 2128) + 8 * (**(v5 + 1392) - 1)) + 8 * *(v5 + 1405)), v9);
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
        v182 = *(v5 + 1456);
        if (*(v182 + 1) > v6)
        {
          goto LABEL_456;
        }

        a3 = *(v5 + 1472);
        i = (v182 + 5);
        do
        {
          *(v5 + 1456) = i;
          v183 = *i++;
        }

        while (v183 < -64);
LABEL_300:
        *(v5 + 1470) = 1;
        *(v5 + 1456) = i;
        continue;
      case 19:
        v42 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v43 = a3;
            v44 = a3;
            v45 = *(v42 + 4 * a3);
            a3 = a3 + *(v5 + 1470);
          }

          while (v45 == 126);
          a3 = v43;
        }

        else
        {
          v44 = a3;
        }

        v114 = (v42 + 4 * v44);
        if (*v8 != v114)
        {
          result = Utf32SymToUtf8Sym(*v114, v9, 5u);
          v115 = (*(v5 + 1440) + 4 * v44);
          *(v5 + 1405) = *v115 & 0x3F;
          *(v5 + 2096) = v115;
          i = *(v5 + 1456);
        }

        *(v5 + 1470) = 1;
        *(v5 + 1456) = ++i;
        continue;
      case 20:
        *(v5 + 1476) = 1;
        *(v5 + 1470) = 1;
        *(v5 + 1456) = ++i;
        a3 = v268;
        continue;
      case 21:
        v38 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v39 = a3;
            v40 = a3;
            v41 = *(v38 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v41 == 126);
          LODWORD(a3) = v39;
        }

        else
        {
          v40 = a3;
        }

        v105 = (v38 + 4 * v40);
        if (*v8 != v105)
        {
          result = Utf32SymToUtf8Sym(*v105, v9, 5u);
          v106 = (*(v5 + 1440) + 4 * v40);
          *(v5 + 1405) = *v106 & 0x3F;
          *(v5 + 2096) = v106;
        }

        v107 = *v9;
        if (*v9)
        {
          v108 = v107 == 31;
        }

        else
        {
          v108 = 1;
        }

        if (v108)
        {
          goto LABEL_456;
        }

        v109 = *(v5 + 1512);
        v110 = *(v5 + 1456);
        *(v5 + 1456) = v110 + 1;
        v111 = (v109 + 5 * *(v110 + 1));
        if (!*v111)
        {
          goto LABEL_129;
        }

        v112 = 0;
        v113 = 0;
        while (v107 == v111[v112])
        {
          v112 = ++v113;
          v107 = v9[v113];
          if (!v9[v113])
          {
            goto LABEL_456;
          }
        }

LABEL_129:
        *(v5 + 1470) = 1;
        a3 = (a3 + 1);
        i = (v110 + 2);
        *(v5 + 1456) = v110 + 2;
        continue;
      default:
        v66 = *(v5 + 1440);
        if (*(v5 + 1470))
        {
          do
          {
            v67 = a3;
            v68 = a3;
            v69 = *(v66 + 4 * a3);
            LODWORD(a3) = a3 + *(v5 + 1470);
          }

          while (v69 == 126);
          LODWORD(a3) = v67;
        }

        else
        {
          v68 = a3;
        }

        v152 = (v66 + 4 * v68);
        if (*v8 != v152)
        {
          result = Utf32SymToUtf8Sym(*v152, v9, 5u);
          v153 = (*(v5 + 1440) + 4 * v68);
          *(v5 + 1405) = *v153 & 0x3F;
          *(v5 + 2096) = v153;
          i = *(v5 + 1456);
        }

        v154 = *v9;
        if (!*v9)
        {
          goto LABEL_456;
        }

        v155 = 0;
        v156 = 0;
        do
        {
          if (v154 != i[v155])
          {
            goto LABEL_456;
          }

          v155 = ++v156;
          v154 = v9[v156];
        }

        while (v9[v156]);
        *(v5 + 1470) = 1;
        result = cstdlib_strlen(v9);
        i = (*(v5 + 1456) + result);
        *(v5 + 1456) = i;
        a3 = (a3 + 1);
        continue;
    }

    break;
  }

  while (1)
  {
    v203 = *result;
    v204 = v192;
    if (v203 > 0xE)
    {
      if (*result > 0x10u)
      {
        if (v203 == 17)
        {
LABEL_344:
          *(v5 + 1456) = result + 1;
          if (v201 < v202)
          {
            cstdlib_memmove((*(v5 + 1448) + 4 * v201), (*(v5 + 1448) + 4 * v202), 4 * (v270 - v202 + 1));
          }

          if (v200 <= v192)
          {
            v185 = a4;
            v210 = v265;
          }

          else
          {
            result = MOVE_FOR_SUBSTITUTION(v5, v192, v265, (v200 - v192));
            v185 = a4;
            if (!result)
            {
              goto LABEL_446;
            }

            v210 = v200 + v265 - v192;
            *v7 = v200 + v265 - v192;
            v192 = v200;
          }

          *(v5 + 1448) = *(v185 + 16);
          *(v5 + 1410) = *(v185 + 562);
          v201 = v200;
          v265 = v210;
          v209 = v210;
          goto LABEL_379;
        }

        if (v203 == 19)
        {
          if (v266 >= 1)
          {
            v206 = 0;
            do
            {
              if (v201 >= v192)
              {
                if (v270 + 1 >= *(*(v5 + 1416) + 2 * *(v5 + 1410)) - 1)
                {
                  goto LABEL_389;
                }

                v207 = v201;
                v208 = *(v5 + 1448) + 4 * v201;
                result = cstdlib_memmove((v208 + 4), v208, 4 * (v270++ - v201 + 1));
              }

              else
              {
                v207 = v201;
              }

              v200 = (v200 + 1);
              ++v202;
              ++v201;
              *(*(v5 + 1448) + 4 * v207) = 126;
              ++v206;
              v192 = v204;
            }

            while (v266 > v206);
            v209 = v270;
LABEL_362:
            LODWORD(v186) = v264;
            goto LABEL_380;
          }

          goto LABEL_374;
        }
      }

      else
      {
        if (v203 == 15)
        {
          goto LABEL_344;
        }

        if (v203 == 16)
        {
LABEL_329:
          *(v5 + 1456) = result + 1;
          if (v201 < v202)
          {
            cstdlib_memmove((*(v5 + 1448) + 4 * v201), (*(v5 + 1448) + 4 * v202), 4 * (v270 - v202 + 1));
          }

          if (v200 <= v192)
          {
            v205 = v265;
          }

          else
          {
            result = MOVE_FOR_SUBSTITUTION(v5, v192, v265, (v200 - v192));
            v185 = a4;
            if (!result)
            {
              goto LABEL_446;
            }

            v205 = v200 + v265 - v192;
            v192 = v200;
          }

          v224 = *(v5 + 1456);
          *(v5 + 1448) = *(*(v5 + 1504) + 8 * *v224 - 8);
          *(v5 + 1410) = *v224 - 1;
          v201 = v200;
          v265 = v205;
          v209 = v205;
LABEL_379:
          v202 = v200;
          goto LABEL_380;
        }
      }

      goto LABEL_382;
    }

    if (*result > 6u)
    {
      if (v203 == 7)
      {
        *(v5 + 1456) = result + 1;
        result = cstdlib_strlen(__s);
        if (result >= 1)
        {
          v220 = 0;
          do
          {
            if (v201 >= v192)
            {
              if (v270 + 1 >= *(*(v5 + 1416) + 2 * *(v5 + 1410)) - 1)
              {
                goto LABEL_389;
              }

              v221 = v220;
              if (__s[v220] >= -64)
              {
                v222 = *(v5 + 1448) + 4 * v201;
                cstdlib_memmove((v222 + 4), v222, 4 * (v270++ - v201 + 1));
              }
            }

            else
            {
              v221 = v220;
            }

            if (__s[v221] >= -64)
            {
              v200 = (v200 + 1);
              ++v202;
              FirstUtf8SymToUtf32(&__s[v221], &v273);
              v223 = v201++;
              *(*(v5 + 1448) + 4 * v223) = v273;
            }

            v192 = v204;
            ++v220;
            result = cstdlib_strlen(__s);
          }

          while (result > v220);
          LODWORD(v186) = v264;
        }

LABEL_374:
        v209 = v270;
        goto LABEL_380;
      }

      if (v203 == 14)
      {
        goto LABEL_329;
      }

      goto LABEL_382;
    }

    if (v203 == 2)
    {
      *(v5 + 1456) = result + 1;
      v211 = *(result + 1);
      v212 = *(v5 + 46);
      if (v211 > v212)
      {
        result = log_OutText(*(*(v5 + 2080) + 32), "FE_DEPES", 3, 0, "warning: pActRule > nr_vars (3)");
        v211 = **(v5 + 1456);
        v212 = *(v5 + 46);
      }

      v209 = v270;
      if (v211 > v212)
      {
LABEL_389:
        *(v5 + 1428) = -100;
        v185 = a4;
        goto LABEL_446;
      }

      result = cstdlib_strlen((*(v5 + 1512) + 5 * v211));
      if (result >= 1)
      {
        v213 = 0;
        v214 = 0;
        do
        {
          if (v201 >= v192)
          {
            if (v209 + 1 >= *(*(v5 + 1416) + 2 * *(v5 + 1410)) - 1)
            {
              goto LABEL_389;
            }

            if (*(*(v5 + 1512) + 5 * **(v5 + 1456) + v213) >= -64)
            {
              v215 = *(v5 + 1448) + 4 * v201;
              cstdlib_memmove((v215 + 4), v215, 4 * (v209++ - v201 + 1));
            }
          }

          v216 = *(v5 + 1512);
          v217 = **(v5 + 1456);
          v218 = (v216 + 5 * v217 + v213);
          if (*v218 >= -64)
          {
            v200 = (v200 + 1);
            ++v202;
            FirstUtf8SymToUtf32(v218, &v273);
            v219 = v201++;
            *(*(v5 + 1448) + 4 * v219) = v273;
            v216 = *(v5 + 1512);
            v217 = **(v5 + 1456);
          }

          v213 = ++v214;
          result = cstdlib_strlen((v216 + 5 * v217));
        }

        while (v214 < result);
        goto LABEL_362;
      }

      goto LABEL_380;
    }

    if (!*result)
    {
      break;
    }

LABEL_382:
    v203 = v203;
    if (v201 < v192)
    {
      v209 = v270;
      goto LABEL_387;
    }

    v209 = v270;
    if (v270 + 1 >= *(*(v5 + 1416) + 2 * *(v5 + 1410)) - 1)
    {
      goto LABEL_389;
    }

    if (v203 >= -64)
    {
      v225 = *(v5 + 1448) + 4 * v201;
      cstdlib_memmove((v225 + 4), v225, 4 * (v270 - v201 + 1));
      v209 = v270 + 1;
      result = *(v5 + 1456);
      LOBYTE(v203) = *result;
LABEL_387:
      if (v203 >= -64)
      {
        v200 = (v200 + 1);
        ++v202;
        FirstUtf8SymToUtf32(result, &v273);
        v226 = v201++;
        *(*(v5 + 1448) + 4 * v226) = v273;
      }
    }

LABEL_380:
    v270 = v209;
    result = *(v5 + 1456) + 1;
    *(v5 + 1456) = result;
  }

  if (v201 < v192)
  {
    cstdlib_memmove((*(v5 + 1448) + 4 * v201), (*(v5 + 1448) + 4 * v192), 4 * (v270 - v192 + 1));
  }

  result = MOVE_FOR_SUBSTITUTION(v5, v192, v265, (v200 - v192));
  v185 = a4;
  if (result)
  {
    *(a4 + 34) = v200 + v265 - v192;
    v194 = v200 + ~*(a4 + 32);
    if (v186 < v200)
    {
      v241 = v264;
      do
      {
        result = Utf32SymToUtf8Sym(*(**(v5 + 1504) + 4 * v241), v274, 5u);
        v242 = v274[0];
        if (v274[0])
        {
          v243 = 0;
          do
          {
            ++*(a4 + 36 + 2 * v242);
            v242 = v274[++v243];
          }

          while (v274[v243]);
        }

        ++v241;
      }

      while (v241 != v200);
    }

    v185 = a4;
    goto LABEL_443;
  }

LABEL_446:
  if (*(v5 + 1428) == 156)
  {
    *(v5 + 1384) = 1;
    *(v185 + 548) = *(v185 + 34) - *(v185 + 32);
    *(v185 + 32) = **(v5 + 184);
    *(v185 + 30) = *(v5 + 44);
    *v8 = 0;
    v8[1] = 0;
    goto LABEL_449;
  }

  v251 = *(v5 + 1384);
  *v8 = 0;
  v8[1] = 0;
  if (v251)
  {
LABEL_449:
    *(v185 + 556) = 1;
  }

  v252 = *(v185 + 8);
  if (*(v5 + 1440) != v252)
  {
    *(v5 + 1440) = v252;
  }

  if (*(v5 + 2088) >= 6)
  {
    v253 = *(v5 + 2 * *(v5 + 1430) + 1568);
    v254 = *v7;
    Utf32LayersToUtf8Layers(v5, v254);
    result = log_OutText(*(*(v5 + 2080) + 32), "FE_DEPES", 6, 0, "Rule number %d", a2 - *(v5 + 2 * *(v5 + 1430) + 1824));
    if (*(v5 + 24) >= 1)
    {
      v255 = 0;
      do
      {
        v256 = *(*(v5 + 1496) + 8 * v255);
        v257 = &v256[Utf8_LengthInBytes(v256, v253)];
        v258 = *(*(v5 + 1496) + 8 * v255);
        v259 = v258[Utf8_LengthInBytes(v258, v254)];
        v260 = *(*(v5 + 1496) + 8 * v255);
        v260[Utf8_LengthInBytes(v260, v254)] = 0;
        log_OutText(*(*(v5 + 2080) + 32), "FE_DEPES", 6, 0, "%s", v257);
        v261 = *(*(v5 + 1496) + 8 * v255);
        result = Utf8_LengthInBytes(v261, v254);
        v261[result] = v259;
        ++v255;
      }

      while (v255 < *(v5 + 24));
    }
  }

LABEL_456:
  if (*(v5 + 1480))
  {
    if ((*(v5 + 46) & 0x80000000) == 0)
    {
      v262 = 0;
      do
      {
        *(*(v5 + 1512) + v262) = 0;
        v262 += 5;
      }

      while (5 * *(v5 + 46) + 5 > v262);
    }

    *(v5 + 1480) = 0;
  }

  v263 = *(a4 + 8);
  if (*(v5 + 1440) != v263)
  {
    *(v5 + 1440) = v263;
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
    result = cstdlib_strstr(*(*(v4 + 8 * *(v2 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400));
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
LABEL_3:
    v10 = v4 + 1;
    *(a1 + 1456) = v4 + 1;
    v11 = 1;
    switch(v5)
    {
      case 2:
        v33 = *v10;
        v34 = *(a1 + 46);
        if (v33 > v34)
        {
          log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 3, 0, "warning: pActRule > nr_vars (1)");
          v33 = **(a1 + 1456);
          v34 = *(a1 + 46);
        }

        if (v33 > v34)
        {
          return 0;
        }

        v35 = (*(a1 + 1512) + 5 * v33);
        if (*v35)
        {
          v36 = *v8;
          if (!*v8)
          {
            goto LABEL_87;
          }

          v37 = 0;
          v38 = 0;
          do
          {
            if (v36 != v35[v37])
            {
              goto LABEL_87;
            }

            v37 = ++v38;
            v36 = v8[v38];
            v11 = 1;
          }

          while (v8[v38]);
          goto LABEL_84;
        }

        if (!VAR_APPEARENCE(a1, v33))
        {
          goto LABEL_87;
        }

        *(a1 + 1480) = 1;
        v29 = *(a1 + 1512) + 5 * **(a1 + 1456);
        v30 = (a1 + 1400);
        goto LABEL_82;
      case 3:
        if (*v8)
        {
          v40 = *v8 == 31;
        }

        else
        {
          v40 = 1;
        }

        if (v40)
        {
          goto LABEL_87;
        }

        v32 = *(a1 + 2120);
        goto LABEL_58;
      case 4:
        if (*v8)
        {
          v39 = *v8 == 31;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          goto LABEL_87;
        }

        v22 = *(a1 + 2120);
        goto LABEL_51;
      case 5:
        if (*v8)
        {
          v31 = *v8 == 31;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          goto LABEL_87;
        }

        v32 = *(a1 + 2128);
LABEL_58:
        if (!cstdlib_strstr(*(*(v32 + 8 * (*v10 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      case 6:
        if (*v8)
        {
          v21 = *v8 == 31;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          goto LABEL_87;
        }

        v22 = *(a1 + 2128);
LABEL_51:
        if (cstdlib_strstr(*(*(v22 + 8 * (*v10 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      case 7:
        if (!cstdlib_strstr(*(*(*(a1 + 2128) + 8 * (*v10 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        v23 = cstdlib_strstr((*(a1 + 88) + (**(a1 + 1456) << 8) - 256), (a1 + 1400));
        if (!v23 || !*v8 || *v8 == 31)
        {
          goto LABEL_87;
        }

        v24 = **(a1 + 1456);
        v25 = v24 - 1;
        v26 = *(a1 + 88);
        v27 = v26 + (v24 << 8);
        if (v25)
        {
          v30 = (v27 + v23[256 * v25 + *(a1 + 96) - v26 + -256 * v25] - 512);
          v29 = a1 + 1484;
        }

        else
        {
          v28 = v23[256 * v25 + *(a1 + 96) - v26 + -256 * v25];
          v29 = a1 + 1484;
          v30 = (v27 + v28);
        }

LABEL_82:
        SETUTF8CHAR(v29, v30);
        goto LABEL_83;
      case 12:
        v41 = *v8;
        if (*v8)
        {
          v42 = v41 == 31;
        }

        else
        {
          v42 = 1;
        }

        if (v42)
        {
          goto LABEL_87;
        }

        v43 = 0;
        v44 = 0;
        do
        {
          if (v41 != v10[v43])
          {
            goto LABEL_87;
          }

          v43 = ++v44;
          v41 = v8[v44];
        }

        while (v8[v44]);
        v11 = cstdlib_strlen((a1 + 1400));
        goto LABEL_84;
      case 13:
        v45 = *v8;
        if (*v8)
        {
          v46 = v45 == 31;
        }

        else
        {
          v46 = 1;
        }

        if (v46)
        {
          goto LABEL_87;
        }

        v47 = 0;
        v48 = 0;
        while (v45 == v10[v47])
        {
          v47 = ++v48;
          v45 = v8[v48];
          if (!v8[v48])
          {
            goto LABEL_87;
          }
        }

        v49 = v4 + 2;
        do
        {
          *(a1 + 1456) = v49;
          v50 = *v49++;
        }

        while (v50 < -64);
        v4 = v49 - 1;
        goto LABEL_85;
      case 14:
      case 16:
        *(a1 + 1360) = *(a1 + 1440);
        v12 = *(*(a1 + 1504) + 8 * *v10 - 8);
        *(a1 + 1440) = v12;
        goto LABEL_7;
      case 15:
      case 17:
        v12 = *(a1 + 1360);
        if (!v12)
        {
          return 0;
        }

        *(a1 + 1440) = v12;
        *(a1 + 1360) = 0;
LABEL_7:
        v13 = (v12 + 4 * v9);
        if (*(a1 + 2096) != v13)
        {
          Utf32SymToUtf8Sym(*v13, (a1 + 1400), 5u);
          v14 = (*(a1 + 1440) + 4 * v9);
          *(a1 + 1405) = *v14 & 0x3F;
          *(a1 + 2096) = v14;
        }

        result = 0;
        if (!*v8 || *v8 == 31)
        {
          return result;
        }

        goto LABEL_83;
      case 21:
        v15 = *v10;
        v16 = *(a1 + 46);
        if (v15 > v16)
        {
          log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 3, 0, "warning: pActRule > nr_vars (2)");
          v15 = **(a1 + 1456);
          v16 = *(a1 + 46);
        }

        if (v15 > v16)
        {
          return 0;
        }

        v17 = (*(a1 + 1512) + 5 * v15);
        if (!*v17)
        {
          goto LABEL_83;
        }

        v18 = *v8;
        if (!*v8)
        {
          goto LABEL_83;
        }

        v19 = 0;
        v20 = 0;
        break;
      default:
        goto LABEL_84;
    }

    do
    {
      if (v18 != v17[v19])
      {
LABEL_83:
        v11 = 1;
LABEL_84:
        v4 = (*(a1 + 1456) + v11);
        *(a1 + 1456) = v4;
LABEL_85:
        v5 = *v4;
        if (v5 == v7)
        {
          return 1;
        }

        goto LABEL_3;
      }

      v19 = ++v20;
      v18 = v8[v20];
    }

    while (v8[v20]);
LABEL_87:
    v51 = *(a1 + 1360);
    if (v51)
    {
      result = 0;
      *(a1 + 1440) = v51;
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
        v50 = 5 * v46;
        v51 = (*(a1 + 1512) + 5 * v46);
        if (*v51)
        {
          v52 = 0;
          v53 = 0;
          v18 = 1;
          do
          {
            if (v48 != v51[v52])
            {
              return 0;
            }

            v52 = ++v53;
            v48 = *(v49 + v53);
          }

          while (*(v49 + v53));
        }

        else
        {
          if (!VAR_APPEARENCE(a1, v46))
          {
            return 0;
          }

          v18 = 1;
          *(a1 + 1480) = 1;
          SETUTF8CHAR(*(a1 + 1512) + v50, (a1 + 1400));
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
        return cstdlib_strstr(*(*(v28 + 8 * (v26 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) != 0;
      }

      return v18;
    case 4:
      v54 = *(a1 + 1466);
      if (v54 < 0)
      {
        return 0;
      }

      v55 = TOKEN(a1, v54, *(a1 + 1470));
      v18 = 0;
      *(a1 + 1466) = v55;
      v56 = *(a1 + 1456);
      *(a1 + 1456) = v56 + 1;
      v20 = *(v56 + 1);
      v57 = *(a1 + 1468);
      *(a1 + 1470) = v57;
      *(a1 + 1456) = v56 + 2;
      *(a1 + 1466) = v57 + v55;
      if (*(a1 + 1400) && *(a1 + 1400) != 31)
      {
        v22 = *(a1 + 2120);
        return cstdlib_strstr(*(*(v22 + 8 * (v20 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) == 0;
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
        return cstdlib_strstr(*(*(v28 + 8 * (v26 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) != 0;
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
        return cstdlib_strstr(*(*(v22 + 8 * (v20 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) == 0;
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
        v114 = *(a1 + 1464);
        if (!*(v32 + v114))
        {
          v115 = *(a1 + 1456);
          if (*v115 != 8)
          {
            v116 = v115 + 1;
            do
            {
              *(a1 + 1456) = v116;
              v117 = *v116++;
            }

            while (v117 != 8);
          }
        }

        *(a1 + 2 * v114 + 648) = *(a1 + 1466);
        if (!v37)
        {
LABEL_117:
          --*(a1 + 1464);
        }
      }

      else
      {
        v110 = *(a1 + 1466);
        if (v110 < 0)
        {
          return 0;
        }

        v111 = TOKEN(a1, v110, *(a1 + 1470));
        *(a1 + 1466) = v111;
        *(a1 + 1352) = 1;
        v18 = CHECK_OF_LIST(a1, 8u, v111);
        v112 = *(a1 + 1468);
        *(a1 + 2 * *(a1 + 1464) + 748) = v112;
        *(a1 + 1470) = v112;
        v113 = *(a1 + 1466) + v112;
        *(a1 + 1466) = v113;
        *(a1 + 2 * *(a1 + 1464) + 648) = v113;
        if (!v18)
        {
          goto LABEL_117;
        }
      }

      ++*(a1 + 1456);
      return v18;
    case 9:
      v63 = (v2 + 1);
      *(a1 + 1456) = v2 + 1;
      v64 = v2[1];
      if (v64)
      {
        if (v64 == 1)
        {
          v65 = *(a1 + 1464) + 1;
          *(a1 + 1464) = v65;
          *(a1 + 2 * v65 + 748) = *(a1 + 1470);
          v66 = *(a1 + 1464);
          *(a1 + 8 * v66 + 952) = *(a1 + 1440);
          *(a1 + 2 * v66 + 848) = 9;
          *(a1 + 2 * *(a1 + 1464) + 648) = *(a1 + 1466);
          *(a1 + *(a1 + 1464) + 192) = **(a1 + 1456);
          *(a1 + 8 * *(a1 + 1464) + 248) = *(a1 + 1456) + 1;
          v63 = *(a1 + 1456);
        }

        else
        {
          SKIP_DATA(a1, 9, 0);
          v63 = *(a1 + 1456) + 1;
        }
      }

      goto LABEL_242;
    case 0xA:
      *(a1 + 1456) = v2 + 1;
      if (v2[1])
      {
        v67 = *(a1 + 1464) + 1;
        *(a1 + 1464) = v67;
        *(a1 + 2 * v67 + 748) = *(a1 + 1470);
        v68 = *(a1 + 1464);
        *(a1 + 8 * v68 + 952) = *(a1 + 1440);
        *(a1 + 2 * v68 + 848) = 10;
        *(a1 + 2 * *(a1 + 1464) + 648) = *(a1 + 1466);
        v69 = *(a1 + 1464);
        *(a1 + 8 * v69 + 248) = *(a1 + 1456) + 1;
        *(a1 + v69 + 192) = 0;
        SKIP_DATA(a1, 10, 0);
        v2 = *(a1 + 1456);
      }

      goto LABEL_5;
    case 0xB:
      v90 = *(a1 + 1466);
      *(a1 + 1472) = *(a1 + 1466);
      if (v90 < 0)
      {
        return 0;
      }

      v91 = TOKEN(a1, v90, *(a1 + 1470));
      *(a1 + 1466) = v91;
      v92 = *(a1 + 1456);
      v93 = *(v92 + 2);
      if (v93 == 220)
      {
        v93 = 5000;
      }

      *(a1 + 1406) = v93;
      if (v93 && (*(a1 + 1456) = v92 + 3, CHECK_OF_LIST(a1, 0xBu, v91)))
      {
        LOWORD(v94) = 0;
        do
        {
          v95 = *(a1 + 1456);
          v96 = *(a1 + 1468);
          v97 = v96 + *(a1 + 1466);
          *(a1 + 1466) += *(a1 + 1468);
          *(a1 + 1472) = v97;
          if (v97 < 0)
          {
            return 0;
          }

          v98 = TOKEN(a1, v97, v96);
          *(a1 + 1466) = v98;
          v94 = (v94 + 1);
          if (v94 >= *(a1 + 1406))
          {
            break;
          }

          *(a1 + 1456) = v92 + 3;
        }

        while (CHECK_OF_LIST(a1, 0xBu, v98));
      }

      else
      {
        v94 = 0;
        v95 = 0;
      }

      LOG_WARNING_ON_MAX_NUMBER(a1, v94, 9);
      *(a1 + 1466) = *(a1 + 1472);
      if (v95)
      {
        *(a1 + 1456) = v95;
      }

      else
      {
        v95 = *(a1 + 1456);
      }

      for (i = v95 + 1; ; ++i)
      {
        if (*(i - 1) == 11)
        {
          v130 = *(i - 2);
          v131 = v130 > 0x15;
          v132 = (1 << v130) & 0x20067C;
          if (v131 || v132 == 0)
          {
            break;
          }

          v134 = *(i - 3);
          v131 = v134 > 0x15;
          v135 = (1 << v134) & 0x20C67C;
          if (!v131 && v135 != 0)
          {
            break;
          }
        }

        *(a1 + 1456) = i;
      }

      *(a1 + 1470) = *(a1 + 1468);
      *(a1 + 1456) = i;
      return v94 >= *(v92 + 1);
    case 0xC:
      v82 = *(a1 + 1466);
      if (v82 < 0)
      {
        return 0;
      }

      v83 = TOKEN(a1, v82, *(a1 + 1470));
      v84 = *(a1 + 1456);
      v85 = *(a1 + 1468);
      *(a1 + 1470) = v85;
      *(a1 + 1466) = v85 + v83;
      *(a1 + 1456) = v84 + 2;
      v9 = *(a1 + 1400);
      if (*(a1 + 1400))
      {
        v86 = 0;
        v87 = 0;
        v88 = a1 + 1400;
        v89 = *(a1 + 1400);
        do
        {
          v15 = v89 == *(v84 + 1 + v86);
          if (v89 != *(v84 + 1 + v86))
          {
            break;
          }

          v86 = ++v87;
          v89 = *(v88 + v87);
        }

        while (*(v88 + v87));
      }

      else
      {
        v15 = 0;
      }

      if (*(v84 + 2) <= -65)
      {
        v126 = (v84 + 3);
        do
        {
          *(a1 + 1456) = v126;
          v127 = *v126++;
        }

        while (v127 < -64);
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
        v124 = (v7 + 3);
        do
        {
          *(a1 + 1456) = v124;
          v125 = *v124++;
        }

        while (v125 < -64);
      }

LABEL_143:
      if (v9)
      {
        v128 = v15;
      }

      else
      {
        v128 = 0;
      }

      return v9 != 31 && v128;
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
      v70 = *(a1 + 1466);
      *(a1 + 1472) = *(a1 + 1466);
      if (v70 < 0)
      {
        return 0;
      }

      v71 = TOKEN(a1, v70, *(a1 + 1470));
      LOWORD(v72) = 0;
      *(a1 + 1466) = v71;
      v73 = *(a1 + 1456);
      v74 = *(v73 + 2);
      if (v74 == 220)
      {
        v74 = 5000;
      }

      *(a1 + 1406) = v74;
      *(a1 + 1392) = v73 + 4;
      v75 = *(v73 + 3);
      if (v75 > 5)
      {
        if (v75 > 12)
        {
          if (v75 == 13)
          {
            LOWORD(v72) = 0;
            if (v74)
            {
              v160 = (a1 + 1400);
              do
              {
                v161 = *v160;
                if (!*v160 || v161 == 31)
                {
                  break;
                }

                v163 = 0;
                v164 = 0;
                while (v161 == *(*(a1 + 1392) + v163))
                {
                  v163 = ++v164;
                  v161 = v160[v164];
                  if (!v160[v164])
                  {
                    goto LABEL_234;
                  }
                }

                v165 = *(a1 + 1468);
                *(a1 + 1466) = *(a1 + 1468) + v71;
                *(a1 + 1472) = v165 + v71;
                if (((v165 + v71) & 0x8000) != 0)
                {
                  return 0;
                }

                v71 = TOKEN(a1, (v165 + v71), v165);
                *(a1 + 1466) = v71;
                v72 = (v72 + 1);
              }

              while (v72 < *(a1 + 1406));
            }

LABEL_234:
            v79 = v72;
            v80 = a1;
            v81 = 14;
          }

          else
          {
            if (v75 != 21)
            {
              goto LABEL_236;
            }

            LOWORD(v72) = 0;
            if (v74)
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
                *(a1 + 1466) = *(a1 + 1468) + v71;
                *(a1 + 1472) = v146 + v71;
                if (((v146 + v71) & 0x8000) != 0)
                {
                  return 0;
                }

                v71 = TOKEN(a1, (v146 + v71), v146);
                *(a1 + 1466) = v71;
                v72 = (v72 + 1);
              }

              while (v72 < *(a1 + 1406));
            }

LABEL_188:
            v79 = v72;
            v80 = a1;
            v81 = 16;
          }
        }

        else if (v75 == 6)
        {
          LOWORD(v72) = 0;
          if (v74)
          {
            do
            {
              if (*(a1 + 1400))
              {
                v154 = *(a1 + 1400) == 31;
              }

              else
              {
                v154 = 1;
              }

              if (v154 || cstdlib_strstr(*(*(*(a1 + 2128) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
              {
                break;
              }

              v155 = *(a1 + 1468);
              v156 = v155 + *(a1 + 1466);
              *(a1 + 1466) += *(a1 + 1468);
              *(a1 + 1472) = v156;
              if (v156 < 0)
              {
                return 0;
              }

              *(a1 + 1466) = TOKEN(a1, v156, v155);
              v72 = (v72 + 1);
            }

            while (v72 < *(a1 + 1406));
          }

          v79 = v72;
          v80 = a1;
          v81 = 12;
        }

        else
        {
          if (v75 != 12)
          {
            goto LABEL_236;
          }

          LOWORD(v72) = 0;
          if (v74)
          {
            v118 = (a1 + 1400);
            do
            {
              v119 = *v118;
              if (!*v118 || v119 == 31)
              {
                break;
              }

              v121 = 0;
              v122 = 0;
              do
              {
                if (v119 != *(*(a1 + 1392) + v121))
                {
                  goto LABEL_133;
                }

                v121 = ++v122;
                v119 = v118[v122];
              }

              while (v118[v122]);
              v123 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v71;
              *(a1 + 1472) = v123 + v71;
              if (((v123 + v71) & 0x8000) != 0)
              {
                return 0;
              }

              v71 = TOKEN(a1, (v123 + v71), v123);
              *(a1 + 1466) = v71;
              v72 = (v72 + 1);
            }

            while (v72 < *(a1 + 1406));
          }

LABEL_133:
          v79 = v72;
          v80 = a1;
          v81 = 13;
        }

        goto LABEL_235;
      }

      if (v75 <= 3)
      {
        if (v75 == 2)
        {
          LOWORD(v72) = 0;
          if (v74)
          {
            v147 = (a1 + 1400);
            while (1)
            {
              v148 = 5 * **(a1 + 1392);
              v149 = (*(a1 + 1512) + v148);
              if (*v149)
              {
                break;
              }

              if (!VAR_APPEARENCE(a1, v148))
              {
                goto LABEL_203;
              }

              *(a1 + 1480) = 1;
              SETUTF8CHAR(*(a1 + 1512) + 5 * **(a1 + 1392), (a1 + 1400));
              v71 = *(a1 + 1466);
LABEL_201:
              v153 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v71;
              *(a1 + 1472) = v153 + v71;
              if (((v153 + v71) & 0x8000) != 0)
              {
                return 0;
              }

              v71 = TOKEN(a1, (v153 + v71), v153);
              *(a1 + 1466) = v71;
              v72 = (v72 + 1);
              if (v72 >= *(a1 + 1406))
              {
                goto LABEL_203;
              }
            }

            v150 = *v147;
            if (*v147)
            {
              v151 = 0;
              v152 = 0;
              while (v150 == v149[v151])
              {
                v151 = ++v152;
                v150 = v147[v152];
                if (!v147[v152])
                {
                  goto LABEL_201;
                }
              }
            }
          }

LABEL_203:
          v79 = v72;
          v80 = a1;
          v81 = 15;
        }

        else
        {
          if (v75 != 3)
          {
            goto LABEL_236;
          }

          LOWORD(v72) = 0;
          if (v74)
          {
            do
            {
              if (*(a1 + 1400))
              {
                v76 = *(a1 + 1400) == 31;
              }

              else
              {
                v76 = 1;
              }

              if (v76 || !cstdlib_strstr(*(*(*(a1 + 2120) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
              {
                break;
              }

              v77 = *(a1 + 1468);
              v78 = v77 + *(a1 + 1466);
              *(a1 + 1466) += *(a1 + 1468);
              *(a1 + 1472) = v78;
              if (v78 < 0)
              {
                return 0;
              }

              *(a1 + 1466) = TOKEN(a1, v78, v77);
              v72 = (v72 + 1);
            }

            while (v72 < *(a1 + 1406));
          }

          v79 = v72;
          v80 = a1;
          v81 = 10;
        }

        goto LABEL_235;
      }

      if (v75 == 4)
      {
        LOWORD(v72) = 0;
        if (v74)
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

            if (v157 || cstdlib_strstr(*(*(*(a1 + 2120) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
            {
              break;
            }

            v158 = *(a1 + 1468);
            v159 = v158 + *(a1 + 1466);
            *(a1 + 1466) += *(a1 + 1468);
            *(a1 + 1472) = v159;
            if (v159 < 0)
            {
              return 0;
            }

            *(a1 + 1466) = TOKEN(a1, v159, v158);
            v72 = (v72 + 1);
          }

          while (v72 < *(a1 + 1406));
        }

        v79 = v72;
        v80 = a1;
        v81 = 11;
LABEL_235:
        LOG_WARNING_ON_MAX_NUMBER(v80, v79, v81);
        goto LABEL_236;
      }

      LOWORD(v72) = 0;
      if (v74)
      {
        do
        {
          if (*(a1 + 1400))
          {
            v137 = *(a1 + 1400) == 31;
          }

          else
          {
            v137 = 1;
          }

          if (v137 || !cstdlib_strstr(*(*(*(a1 + 2128) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
          {
            break;
          }

          v138 = *(a1 + 1468);
          v139 = v138 + *(a1 + 1466);
          *(a1 + 1466) += *(a1 + 1468);
          *(a1 + 1472) = v139;
          if (v139 < 0)
          {
            return 0;
          }

          *(a1 + 1466) = TOKEN(a1, v139, v138);
          v72 = (v72 + 1);
        }

        while (v72 < *(a1 + 1406));
      }

LABEL_236:
      v166 = *(a1 + 1456);
      if (*(v166 + 1) > v72)
      {
        return 0;
      }

      *(a1 + 1466) = *(a1 + 1472);
      v63 = v166 + 5;
      *(a1 + 1456) = v166 + 5;
      *(a1 + 1470) = *(a1 + 1468);
      if (*(v166 + 5) <= -65)
      {
        v167 = (v166 + 6);
        do
        {
          *(a1 + 1456) = v167;
          v168 = *v167++;
        }

        while (v168 < -64);
        v63 = (v167 - 1);
      }

LABEL_242:
      v4 = v63 + 1;
LABEL_243:
      *(a1 + 1456) = v4;
      return 1;
    case 0x13:
      v109 = *(a1 + 1466);
      if (v109 < 0)
      {
        return 0;
      }

      *(a1 + 1466) = TOKEN(a1, v109, *(a1 + 1470));
      *(a1 + 1470) = *(a1 + 1468);
      v4 = *(a1 + 1456) + 1;
      goto LABEL_243;
    case 0x15:
      v99 = *(a1 + 1466);
      if (v99 < 0)
      {
        return 0;
      }

      v100 = TOKEN(a1, v99, *(a1 + 1470));
      v18 = 0;
      *(a1 + 1466) = v100;
      v101 = *(a1 + 1456);
      *(a1 + 1456) = v101 + 1;
      v102 = *(v101 + 1);
      v103 = *(a1 + 1468);
      *(a1 + 1470) = v103;
      *(a1 + 1456) = v101 + 2;
      *(a1 + 1466) = v103 + v100;
      v104 = *(a1 + 1400);
      if (!*(a1 + 1400) || v104 == 31)
      {
        return v18;
      }

      v105 = (*(a1 + 1512) + 5 * v102);
      if (!*v105)
      {
        return 1;
      }

      v106 = 0;
      v107 = 0;
      v108 = a1 + 1400;
      while (v104 == v105[v106])
      {
        v18 = 0;
        v106 = ++v107;
        v104 = *(v108 + v107);
        if (!*(v108 + v107))
        {
          return v18;
        }
      }

      return 1;
    default:
      v58 = *(a1 + 1466);
      if (v58 < 0)
      {
        return 0;
      }

      *(a1 + 1466) = TOKEN(a1, v58, *(a1 + 1470));
      *(a1 + 1470) = *(a1 + 1468);
      v59 = (a1 + 1400);
      v60 = *(a1 + 1400);
      if (!*(a1 + 1400))
      {
        goto LABEL_102;
      }

      v61 = 0;
      v62 = 0;
      while (v60 == *(*(a1 + 1456) + v61))
      {
        v61 = ++v62;
        v60 = v59[v62];
        if (!v59[v62])
        {
          v18 = 1;
          goto LABEL_103;
        }
      }

LABEL_102:
      v18 = 0;
LABEL_103:
      *(a1 + 1456) += cstdlib_strlen(v59);
      *(a1 + 1466) += *(a1 + 1468);
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
    v26 = 0;
    *(a1 + 1428) = -101;
    return v26;
  }

  v10 = v9;
  *&__c[3] = 0;
  v29 = 0;
  utf8_Utf32ToUtf8(**(a1 + 1504) + 4 * a3, (*v4 - a3), v9, v8, &v29);
  *(v10 + v29) = 0;
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
    v28 = v4;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = cstdlib_strchr(v14, __c[0]);
      v20 = v19;
      if (v19)
      {
        *v19 = 0;
      }

      if (cstdlib_strlen(v14))
      {
        v21 = cstdlib_strlen(v14);
        v22 = Utf8_LengthInUtf8chars(v14, v21);
        v23 = a3 + v22;
        if (v23 >= *(*(a1 + 1416) + 2 * v17) - 1)
        {
          v26 = 0;
          *(a1 + 1428) = -100;
          goto LABEL_28;
        }

        utf8_Utf8ToUtf32(v14, v21, 0, *(*(a1 + 1504) + 8 * v17) + 4 * a3, (v22 + a3), &v29, 0);
        *(v12 + 2 * v17) = v23;
      }

      else
      {
        LOWORD(v23) = *(v12 + 2 * v17);
      }

      if (v18 <= v23)
      {
        v18 = v23;
      }

      v24 = *(a1 + 24);
      if (!v20)
      {
        break;
      }

      v14 = v20 + 1;
      ++v17;
    }

    while (v17 < v24);
    if (v24 < 1)
    {
      v4 = v28;
    }

    else
    {
      v25 = 0;
      v4 = v28;
      do
      {
        if (*(v12 + 2 * v25) < v18)
        {
          memset_pattern16((*(*(a1 + 1504) + 8 * v25) + 4 * *(v12 + 2 * v25)), &unk_26ECDA9B0, 4 * (v18 + ~*(v12 + 2 * v25)) + 4);
        }

        ++v25;
      }

      while (v24 != v25);
    }
  }

  *v4 = v18;
  v26 = 1;
LABEL_28:
  heap_Free(*(a1 + 1528), v10);
  heap_Free(*(a1 + 1528), v12);
  return v26;
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
          cstdlib_memmove((v10 + 4 * a2), (v10 + 4 * *(v8 + 2 * v5)), 4 * v13);
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

  cstdlib_memmove((*(a1 + 1560) + v7), (*(a1 + 1560) + *(v8 + 2 * v4)), (v6 + 1));
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

          cstdlib_memmove((v12 + 4 * v10), (v12 + 4 * v5), 4 * (v4 - v5 + 1));
          if (v10 > v5)
          {
            memset_pattern16((*(*(a1 + 1504) + 8 * v8) + 4 * v5), &unk_26ECDA9B0, v11);
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
      cstdlib_memmove((*(a1 + 1560) + v20), (*(a1 + 1560) + v5), (v4 - v5 + 1));
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
    cstdlib_memmove((*(*(a1 + 1504) + 8) + 4 * a2), (**(a1 + 1504) + 4 * a2), 4 * (v3 - a2));
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
  if (v5 + 4 >= **(a1 + 1416) - 1 || (cstdlib_memmove((v9 + 4 * v10 + 16), (v9 + 4 * v10), 4 * (v5 - v10)), v13 = *a3, v13 + 4 >= *(*(a1 + 1416) + 2) - 1) || (v14 = v10 + 4, cstdlib_memmove((*(*(a1 + 1504) + 8) + 4 * v14), (*(*(a1 + 1504) + 8) + 4 * v10), 4 * (v13 - v10)), v15 = *a3, v15 + 4 >= *(*(a1 + 1416) + 4) - 1) || (cstdlib_memmove((*(*(a1 + 1504) + 16) + 4 * v14), (*(*(a1 + 1504) + 16) + 4 * v10), 4 * (v15 - v10)), v16 = *a3, v16 + 4 >= *(*(a1 + 1416) + 6) - 1))
  {
    result = 0;
    *(a1 + 1428) = -100;
  }

  else
  {
    cstdlib_memmove((*(*(a1 + 1504) + 24) + 4 * v14), (*(*(a1 + 1504) + 24) + 4 * v10), 4 * (v16 - v10));
    *a3 += 4;
    v17 = *(a1 + 1504);
    v18 = v17[1];
    *(*v17 + 4 * v10) = xmmword_26ECDA9C0;
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
  v31 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v10 = 2305826826;
  v27 = 0;
  cstdlib_strcpy(__dst, "");
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
    if (((hlp_CreateLngBrokerString(v14, __dst, 0) & 0x80000000) != 0 || (hlp_OpenData(*v13, __dst, (v13 + 72), (v13 + 136)) & 0x80000000) != 0 || !*(v13 + 72)) && ((LngBrokerString = hlp_CreateLngBrokerString(*v13, __dst, 1), (LngBrokerString & 0x80000000) != 0) || (LngBrokerString = hlp_OpenData(*v13, __dst, (v13 + 72), (v13 + 136)), (LngBrokerString & 0x80000000) != 0)) || ((cstdlib_strcpy((v13 + 200), __dst), (hlp_CreateVoiceBrokerString_0(*v13, __dst, 0, 0) & 0x80000000) != 0) || (hlp_OpenData(*v13, __dst, (v13 + 80), (v13 + 140)) & 0x80000000) != 0 || !*v17) && ((hlp_CreateVoiceBrokerString_0(*v13, __dst, 1, 1) & 0x80000000) != 0 || (hlp_OpenData(*v13, __dst, (v13 + 80), (v13 + 140)) & 0x80000000) != 0 || !*v17) && ((LngBrokerString = hlp_CreateVoiceBrokerString_0(*v13, __dst, 1, 0), (LngBrokerString & 0x80000000) != 0) || (LngBrokerString = hlp_OpenData(*v13, __dst, (v13 + 80), (v13 + 140)), (LngBrokerString & 0x80000000) != 0)))
    {
      v10 = LngBrokerString;
      goto LABEL_34;
    }

    cstdlib_strcpy((v13 + 456), __dst);
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
        v10 = fe_depes_InitModule(*a5, a5[1], "fe_depes", &v27);
        if ((v10 & 0x80000000) == 0)
        {
LABEL_35:
          log_OutText(*(v29 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ObjOpen");
          return v10;
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
      v10 = 2305826819;
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
  return v10;
}

uint64_t hlp_CreateLngBrokerString(uint64_t a1, _BYTE *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = "";
  __s2 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__dst = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_strcpy(__dst, "depes/");
    cstdlib_strcat(__dst, __s2);
    if (!a3)
    {
      result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_strcat(__dst, "/");
      cstdlib_strcat(__dst, v7);
    }

    return brokeraux_ComposeBrokerString(a1, __dst, 1, 1, __s2, 0, 0, a2, 0x100uLL);
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

uint64_t hlp_CreateVoiceBrokerString_0(uint64_t a1, _BYTE *a2, int a3, int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  __s2 = 0;
  v10 = 0;
  v11 = "";
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__dst = 0u;
  v15 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "fevoice", &v12) & 0x80000000) == 0 || (result = paramc_ParamGetStr(*(a1 + 40), "voice", &v12), (result & 0x80000000) == 0))
    {
      cstdlib_strcpy(__dst, "depes/");
      cstdlib_strcat(__dst, __s2);
      cstdlib_strcat(__dst, "/");
      cstdlib_strcat(__dst, v12);
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

          return brokeraux_ComposeBrokerString(a1, __dst, 1, 1, __s2, v12, v9, a2, 0x100uLL);
        }
      }

      else
      {
        result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        cstdlib_strcat(__dst, "/");
        cstdlib_strcat(__dst, v11);
        if (a4)
        {
          goto LABEL_6;
        }
      }

      v9 = 0;
      return brokeraux_ComposeBrokerString(a1, __dst, 1, 1, __s2, v12, v9, a2, 0x100uLL);
    }
  }

  return result;
}