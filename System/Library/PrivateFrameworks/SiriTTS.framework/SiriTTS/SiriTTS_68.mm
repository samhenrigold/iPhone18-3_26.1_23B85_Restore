uint64_t pp_text_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2368741377;
  }

  result = 0;
  *a2 = &IPPTextParser;
  return result;
}

uint64_t pp_text_parser_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2368741383;
  v11 = 0;
  if (a3)
  {
    inited = InitRsrcFunction(a1, a2, &v11);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      v8 = heap_Calloc(*(v11 + 8), 1, 16);
      if (v8)
      {
        v9 = v8;
        *v8 = v11;
        v3 = textpar_ClassOpen(a1, a2, (v8 + 8));
        if ((v3 & 0x80000000) != 0)
        {
          pp_text_parser_ClassClose(*a3, *(a3 + 8));
        }

        else
        {
          *a3 = v9;
          *(a3 + 8) = 29953;
        }
      }

      else
      {
        return 2368741386;
      }
    }
  }

  return v3;
}

uint64_t pp_text_parser_ClassClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29953, 16);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v4 = *a1;
  v5 = textpar_ClassClose(a1[1]);
  if ((v5 & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    safeh_GetNullHandle();
  }

  return v5;
}

uint64_t pp_text_parser_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  v19 = 0;
  v5 = 2368741383;
  v17 = 0;
  if (a5 && a1)
  {
    v10 = safeh_HandleCheck(a1, a2, 29953, 16);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    else if ((InitRsrcFunction(a3, a4, &v19) & 0x80000000) == 0)
    {
      v11 = v19;
      v12 = v19[4];
      if (v12)
      {
        log_OutText(v12, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ObjOpen");
        v11 = v19;
      }

      *a5 = 0;
      *(a5 + 8) = 0;
      v13 = heap_Alloc(v11[1], 96);
      if (v13)
      {
        v14 = v13;
        *v13 = 0u;
        *(v13 + 16) = 0u;
        *(v13 + 64) = 0u;
        *(v13 + 80) = 0u;
        *(v13 + 32) = 0u;
        *(v13 + 48) = 0u;
        *v13 = a3;
        *(v13 + 8) = a4;
        *(v13 + 88) = 0;
        *(v13 + 16) = a1;
        Object = objc_GetObject(v19[6], "SYNTHSTREAM", &v18);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        *(v14 + 24) = *(v18 + 8);
        *(v14 + 88) = 0;
        if ((paramc_ParamGetStr(v19[5], "clcpppipelinemode", &v17) & 0x80000000) == 0 && v17 && *v17)
        {
          *(v14 + 88) = 1;
        }

        Object = textpar_ObjOpen(*(a1 + 8), a3, a4, *(v14 + 24), (v14 + 80), *(v14 + 88));
        if ((Object & 0x80000000) != 0)
        {
LABEL_16:
          v5 = Object;
          pp_text_parser_ObjClose(v14, 24357);
        }

        else
        {
          v5 = 0;
          *a5 = v14;
          *(a5 + 8) = 24357;
        }
      }

      else
      {
        return 2368741386;
      }
    }
  }

  return v5;
}

uint64_t pp_text_parser_ObjClose(uint64_t a1, int a2)
{
  v3 = 2368741383;
  v8 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) == 0)
  {
    v4 = *(v8 + 32);
    if (v4)
    {
      log_OutText(v4, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ObjClose");
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      textpar_ObjClose(v5);
    }

    v6 = v8;
    if (*(a1 + 24))
    {
      objc_ReleaseObject(*(v8 + 48), "SYNTHSTREAM");
      v6 = v8;
    }

    heap_Free(*(v6 + 8), a1);
    return 0;
  }

  return v3;
}

uint64_t pp_text_parser_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2368741383;
  v9 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v9);
    if ((inited & 0x80000000) == 0)
    {
      v5 = inited;
      v6 = *(v9 + 32);
      if (v6)
      {
        log_OutText(v6, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ObjReopen");
      }

      v7 = *(a1 + 80);
      if (v7)
      {
        v3 = textpar_ObjReopen(*a1, *(a1 + 8), v7);
        if ((v3 & 0x80000000) != 0)
        {
          *(a1 + 80) = 0;
        }
      }

      else
      {
        return v5;
      }
    }
  }

  return v3;
}

uint64_t pp_text_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v7 = 2368741383;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v19) & 0x80000000) == 0)
  {
    v8 = *(v19 + 32);
    if (v8)
    {
      log_OutText(v8, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ProcessStart");
    }

    v9 = (*(*(a1 + 24) + 64))(a3, a4, 211, "text/plain;charset=utf-8", 0, 0, a1 + 32);
    if ((v9 & 0x80000000) != 0)
    {
      v17 = v9;
      v18 = 0;
      if ((paramc_ParamGetStr(*(v19 + 40), "inputmimetype", &v18) & 0x80000000) == 0 && v18 && *v18)
      {
        log_OutPublic(*(v19 + 32), "PP_TEXT_PARSER", 1903, "%s%s", "mimeContentType", v18);
        return 2368741643;
      }

      else
      {
        log_OutPublic(*(v19 + 32), "PP_TEXT_PARSER", 1900, 0);
        return v17;
      }
    }

    else
    {
      v10 = (*(*(a1 + 24) + 64))(a3, a4, 211, "text/plain;charset=utf-8", 0, 2, a1 + 48);
      if ((v10 & 0x80000000) != 0)
      {
        v7 = v10;
        log_OutPublic(*(v19 + 32), "PP_TEXT_PARSER", 1901, "%s%s");
      }

      else
      {
        v11 = *(a1 + 24);
        v12 = *(v11 + 64);
        v13 = (*(v11 + 168))();
        v14 = v12(a3, a4, 211, "application/x-realspeak-int-markers-pp;version=4.0", v13, 1, a1 + 64);
        if ((v14 & 0x80000000) != 0)
        {
          v7 = v14;
          log_OutPublic(*(v19 + 32), "PP_TEXT_PARSER", 1902, 0);
        }

        else
        {
          v15 = textpar_ProcessStart(*(a1 + 80), *(a1 + 32), *(a1 + 40));
          return v15 & (v15 >> 31);
        }
      }
    }
  }

  return v7;
}

uint64_t pp_text_parser_Process(_WORD **a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2368741383;
  v17 = 0;
  v16 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1)
  {
    if (!a1[4])
    {
      return 2368741393;
    }

    v15 = 0;
    if ((InitRsrcFunction(*a1, a1[1], &v17) & 0x80000000) == 0)
    {
      v8 = *(v17 + 32);
      if (v8)
      {
        log_OutText(v8, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_Process");
      }

      *a5 = 2;
      v9 = textpar_Process(a1[10]);
      v7 = v9;
      if ((v9 & 0x80000000) == 0)
      {
        v10 = a1[6];
        if (!v10 || (v7 = textpar_WriteTextAndMarkers(a1[10], v10, a1[7], a1[8], a1[9]), (v7 & 0x80000000) == 0))
        {
          if (*(a1 + 22) || textpar_AllTextProcessed(a1[10]))
          {
            *a5 = 1;
            if (!*(a1 + 22))
            {
              v11 = pp_text_parser_loc_CloseOutStreams(a1);
              if ((v11 & 0x80000000) != 0)
              {
                return v11;
              }

              v7 = 0;
            }
          }
        }

        goto LABEL_30;
      }

      if ((v9 & 0x1FFF) != 0x800)
      {
        if ((v9 & 0x1FFF) != 0x17)
        {
          if (!*(a1 + 22))
          {
            pp_text_parser_loc_CloseOutStreams(a1);
          }

          *a5 = 1;
          goto LABEL_30;
        }

        *a5 = 1;
        v12 = pp_text_parser_loc_CloseOutStreams(a1);
        goto LABEL_20;
      }

      *a5 = 0;
      textpar_CheckForEOF(a1[10], &v15, &v16);
      if (v16)
      {
        *a5 = 1;
        v12 = pp_text_parser_loc_CloseOutStreams(a1);
        if ((v12 & 0x80000000) != 0)
        {
LABEL_20:
          v7 = v12;
          goto LABEL_30;
        }

        LODWORD(v7) = 0;
      }

      if (*(a1 + 22))
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }

LABEL_30:
      v13 = *(v17 + 32);
      if (v13)
      {
        log_OutText(v13, "PP_TEXT_PARSER", 4, 0, "Leaving pp_text_parser_Process peResults=%d fRet=%d", *a5, v7);
      }
    }
  }

  return v7;
}

uint64_t pp_text_parser_ProcessStop(_WORD **a1, int a2)
{
  v3 = 2368741383;
  v8 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v8) & 0x80000000) == 0)
  {
    v4 = *(v8 + 32);
    if (v4)
    {
      v4 = log_OutText(v4, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ProcessStop");
    }

    IsUpdatable = kaldi::nnet1::Component::IsUpdatable(v4);
    if ((IsUpdatable & 0x80000000) != 0)
    {
      return IsUpdatable;
    }

    IsUpdatable = pp_text_parser_loc_CloseOutStreams(a1);
    if ((IsUpdatable & 0x80000000) != 0)
    {
      return IsUpdatable;
    }

    v6 = a1[4];
    if (!v6)
    {
      return 0;
    }

    IsUpdatable = (*(a1[3] + 9))(v6, a1[5]);
    if ((IsUpdatable & 0x80000000) != 0)
    {
      return IsUpdatable;
    }

    else
    {
      v3 = 0;
      a1[4] = 0;
      *(a1 + 10) = 0;
    }
  }

  return v3;
}

uint64_t pp_text_parser_loc_CloseOutStreams(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    result = (*(a1[3] + 72))(v2, a1[9]);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    a1[8] = 0;
    *(a1 + 18) = 0;
  }

  result = a1[6];
  if (result)
  {
    result = (*(a1[3] + 72))(result, a1[7]);
    if ((result & 0x80000000) == 0)
    {
      result = 0;
      a1[6] = 0;
      *(a1 + 14) = 0;
    }
  }

  return result;
}

uint64_t sentpar_clearReadOutParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), *(&aSENTPARTAG2PARAM + v2 + 8));
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    v2 += 16;
    if (v2 == 64)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sentpar_clearPersistentParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), off_1E81A52B0[v2]);
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    if (++v2 == 5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sentpar_clearAllParameters(uint64_t a1)
{
  result = sentpar_clearReadOutParameters(a1);
  if ((result & 0x80000000) == 0)
  {

    return sentpar_clearPersistentParameters(a1);
  }

  return result;
}

uint64_t sentpar_loc_SetReadoutMarkersAsParameters(int *a1)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30[0] = 0;
  v30[1] = 0;
  if ((datac_RequestBlock(*(a1 + 1), 1012, 1u, &v29) & 0x80000000) != 0)
  {
    return 2369789959;
  }

  v28 = *(v29 + 8);
  v2 = datac_RequestBlock(*(a1 + 1), 1021, 1u, &v29);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v29;
    LODWORD(v4) = *(v29 + 16);
    if (v4 >= 2)
    {
      v5 = *(v29 + 8);
      for (i = 1; i < v4; ++i)
      {
        v7 = v5 + (i << 6);
        v10 = *(v7 + 20);
        v9 = (v7 + 20);
        v8 = v10;
        v11 = (1 << v10) & 0x1080200080;
        if (v10 > 0x24 || v11 == 0)
        {
          goto LABEL_30;
        }

        v13 = 0;
        v14 = &off_1E81A52E0;
        while (*(v14 - 2) != v8)
        {
          v13 += 4;
          v14 += 2;
          if (v13 == 16)
          {
            goto LABEL_30;
          }
        }

        if (*(v30 + v13))
        {
          goto LABEL_30;
        }

        ArgOfLastOfType = marker_GetArgOfLastOfType(v5, i, v4, 0);
        if (marker_IsReadoutControlDefaultArg(*v9, ArgOfLastOfType, v28, a1[47]))
        {
          v16 = paramc_ParamRemove(*(*a1 + 40), *v14);
          v2 = 0;
          if ((v16 & 0x80000000) != 0 && (v16 & 0x1FFF) != 0x14)
          {
            return v16;
          }

          goto LABEL_29;
        }

        v17 = *v9;
        if (*v9 > 30)
        {
          if (v17 == 36)
          {
LABEL_26:
            v19 = (v28 + ArgOfLastOfType);
            v20 = strlen(v19);
            v21 = heap_Calloc(*(*a1 + 8), 1, v20 + 1);
            if (!v21)
            {
              return 2369789962;
            }

            v22 = v21;
            strncpy(v21, v19, v20)[v20] = 0;
            v23 = *v14;
            v2 = paramc_ParamSetStr(*(*a1 + 40), *v14, v22);
            v24 = *a1;
            if ((v2 & 0x80000000) != 0)
            {
              heap_Free(*(v24 + 8), v22);
              return v2;
            }

            log_OutText(*(v24 + 32), "PP_SENT_PARSER", 4, 0, "SET PARAM marker:%d param=%s val=%s", v8, v23, v22);
            heap_Free(*(*a1 + 8), v22);
            goto LABEL_29;
          }

          if (v17 == 31)
          {
LABEL_24:
            v18 = *v14;
            v2 = paramc_ParamSetUInt(*(*a1 + 40), *v14, ArgOfLastOfType);
            if ((v2 & 0x80000000) != 0)
            {
              return v2;
            }

            log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "SET PARAM marker:%d param=%s val=%u", v8, v18, ArgOfLastOfType);
          }
        }

        else
        {
          if (v17 == 7)
          {
            goto LABEL_24;
          }

          if (v17 == 21)
          {
            goto LABEL_26;
          }
        }

LABEL_29:
        *(v30 + v13) = 1;
        v3 = v29;
LABEL_30:
        v4 = *(v3 + 16);
      }
    }

    v25 = 0;
    for (j = &off_1E81A52E0; ; j += 2)
    {
      if (!*(v30 + v25))
      {
        v16 = paramc_ParamRemove(*(*a1 + 40), *j);
        v2 = 0;
        if ((v16 & 0x80000000) != 0 && (v16 & 0x1FFF) != 0x14)
        {
          break;
        }
      }

      v25 += 4;
      if (v25 == 16)
      {
        return v2;
      }
    }

    return v16;
  }

  return v2;
}

uint64_t sentpar_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v22 = 0;
  v21 = 0;
  v5 = 2369789959;
  if (a4 && (InitRsrcFunction(a1, a2, &v22) & 0x80000000) == 0)
  {
    *a4 = 0;
    v11 = heap_Alloc(*(v22 + 8), 248);
    if (v11)
    {
      v12 = v11;
      *(v11 + 240) = 0;
      *(v11 + 192) = 0u;
      *(v11 + 208) = 0u;
      *(v11 + 160) = 0u;
      *(v11 + 176) = 0u;
      *(v11 + 128) = 0u;
      *(v11 + 144) = 0u;
      *(v11 + 96) = 0u;
      *(v11 + 112) = 0u;
      *(v11 + 64) = 0u;
      *(v11 + 80) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 48) = 0u;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 224) = 0u;
      v13 = (v11 + 224);
      v14 = v22;
      *v11 = v22;
      *(v11 + 16) = a3;
      *(v11 + 224) = 0;
      *(v11 + 192) = 0;
      *(v11 + 196) = 0;
      *(v11 + 240) = a5;
      *(v11 + 136) = 0u;
      *(v11 + 120) = 0u;
      *(v11 + 152) = 0u;
      *(v11 + 168) = 0u;
      *(v11 + 140) = 0;
      if (paramc_ParamGetUInt(*(v14 + 40), "ppmaxpcreframeblocks", &v21) < 0)
      {
        v15 = 30;
      }

      else
      {
        v15 = v21;
      }

      if (paramc_ParamGetUInt(*(v22 + 40), "ppnumframesinblock", &v21) < 0)
      {
        v16 = 50;
      }

      else
      {
        v16 = v21;
      }

      v17 = extdata_ObjOpen(a1, a2, v13, 212);
      if ((v17 & 0x80000000) == 0)
      {
        *(v12 + 208) = 0;
        *(v12 + 216) = 0;
        v17 = nuance_pcre_ObjOpen(a1, a2, v12 + 208);
        if ((v17 & 0x80000000) == 0)
        {
          v17 = nuance_pcre_Init(*(v12 + 208), *(v12 + 216), v15, v16);
          if ((v17 & 0x80000000) == 0)
          {
            v17 = sentpar_loc_OpenParts(a1, a2, v12);
            if ((v17 & 0x80000000) == 0)
            {
              v17 = datac_ObjOpen(a1, a2, (v12 + 8), 212);
              if ((v17 & 0x80000000) == 0)
              {
                v18 = &word_1C37BEAE4;
                v19 = 6;
                while (1)
                {
                  datac_RegisterBlock(*(v12 + 8), *(v18 - 2), *(v18 - 1), *v18);
                  if ((v17 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v18 += 3;
                  if (!--v19)
                  {
                    *a4 = v12;
                    return sentpar_clearAllParameters(v22);
                  }
                }
              }
            }
          }
        }
      }

      v5 = v17;
      sentpar_ObjClose(a1, a2, v12);
    }

    else
    {
      return 2369789962;
    }
  }

  return v5;
}

uint64_t sentpar_ObjClose(_WORD *a1, int a2, void *a3)
{
  v3 = 2369789959;
  v11 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v11) & 0x80000000) == 0)
  {
    v5 = a3[1];
    if (v5)
    {
      datac_ObjClose(v5);
    }

    v6 = a3[28];
    if (v6)
    {
      extdata_ObjClose(v6);
      a3[28] = 0;
    }

    v7 = a3[25];
    if (v7)
    {
      sparser_ObjClose(v7);
    }

    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a3[26], a3[27], NullHandle, v9))
    {
      nuance_pcre_DeInit(a3[26], a3[27]);
      nuance_pcre_ObjClose(a3[26], a3[27]);
    }

    sentpar_clearAllParameters(v11);
    heap_Free(*(v11 + 8), a3);
    return 0;
  }

  return v3;
}

uint64_t sentpar_loc_OpenParts(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  result = extdata_LoadSpecificData(a3[28], "PPSE", "BRKD", "pp/sent/parser");
  if ((result & 0x80000000) == 0)
  {
    result = sparser_ObjOpen(a1, a2, a3[26], a3[27], a3 + 25, a3[28]);
    if ((result & 0x80000000) == 0)
    {
      v7 = a3[28];

      return extdata_LoadData(v7, "PPSE", "pp/sent/parser");
    }
  }

  return result;
}

uint64_t sentpar_ObjReopen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2369789959;
  __s1 = 0;
  v13 = 0;
  if (a3)
  {
    inited = InitRsrcFunction(a1, a2, &v13);
    if ((inited & 0x80000000) == 0)
    {
      v8 = inited;
      if ((paramc_ParamGetStr(*(v13 + 40), "pipelineswitchcomponent", &__s1) & 0x80000000) != 0 || !__s1 || (v3 = v8, !strcmp(__s1, "pp/sent_parser")))
      {
        v9 = extdata_FreeData(a3[28]);
        if ((v9 & 0x80000000) != 0 || (v10 = a3[25]) != 0 && (v9 = sparser_ObjClose(v10), (v9 & 0x80000000) != 0))
        {
          v3 = v9;
LABEL_12:
          sentpar_ObjClose(a1, a2, a3);
          return v3;
        }

        v3 = sentpar_loc_OpenParts(a1, a2, a3);
        if ((v3 & 0x80000000) != 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return v3;
}

uint64_t sentpar_ProcessStart(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (!a2)
  {
    return 2369789959;
  }

  *(a2 + 24) = a3;
  *(a2 + 32) = a4;
  *(a2 + 40) = a5;
  *(a2 + 48) = a6;
  paramc_ParamSetUInt(*(*a2 + 40), "finalsentencefound", 0);
  v9 = paramc_ParamGetInt(*(a1 + 40), "eosdetection", &v16 + 1) < 0 || HIDWORD(v16) != 0;
  *(a2 + 232) = v9;
  if ((paramc_ParamGet(*(a1 + 40), "readmode", &v14, 0) & 0x80000000) == 0)
  {
    *(a2 + 196) = *v14 - 48;
  }

  *(a2 + 236) = log_GetLogLevel(*(a1 + 32)) > 4;
  *(a2 + 184) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 192) = 1024;
  if ((paramc_ParamGetUInt(*(a1 + 40), "ppreaddirectsize", &v16) & 0x80000000) == 0 && v16 >= 0x100)
  {
    *(a2 + 192) = v16;
  }

  if ((paramc_ParamGetUInt(*(a1 + 40), "ppspellpausevalue", (a2 + 188)) & 0x80000000) != 0)
  {
    *(a2 + 188) = 0;
  }

  v10 = 0;
  while (1)
  {
    result = datac_RequestBlock(*(a2 + 8), aMETA_0[v10], 1u, &v15);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v10 += 3;
    v12 = v15;
    *(v15 + 16) = 0;
    *(v12 + 20) = 0;
    if (v10 == 18)
    {
      v13 = sparser_ProcessStart(*(a2 + 200), *(a2 + 188));
      return v13 & (v13 >> 31);
    }
  }

  return result;
}

uint64_t sentpar_ProcessEnd(uint64_t a1, _WORD *a2, int a3)
{
  __s1 = 0;
  v8 = 0;
  v6 = 0;
  if ((InitRsrcFunction(a2, a3, &v8) & 0x80000000) != 0)
  {
    return 2369789959;
  }

  if ((paramc_ParamGetStr(*(v8 + 40), "pipelineswitchcomponent", &__s1) & 0x80000000) == 0 && __s1 && strcmp(__s1, "pp/sent_parser"))
  {
    *(a1 + 136) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 140) = 0;
  }

  if ((paramc_ParamGetStr(*(v8 + 40), "component_stop", &v6) & 0x80000000) == 0 && v6)
  {
    *(a1 + 136) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 140) = 0;
    paramc_ParamSetStr(*(v8 + 40), "component_stop", "");
  }

  if (!__s1)
  {
    *(a1 + 136) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 140) = 0;
  }

  v4 = sentpar_loc_PrepareDataContainers(a1, 0);
  return v4 & (v4 >> 31);
}

uint64_t sentpar_loc_PrepareDataContainers(uint64_t *a1, int a2)
{
  v14 = 0;
  if (a2)
  {
    for (i = 0; i != 3; ++i)
    {
      v4 = datac_RequestBlock(a1[1], aTAG_0[i], 1u, &v14);
      if (i != 2 && (v4 & 0x80000000) == 0)
      {
        *(v14 + 16) = 0;
      }
    }

    return 0;
  }

  result = datac_RequestBlock(a1[1], 1011, 1u, &v14);
  if ((result & 0x80000000) == 0)
  {
    v6 = v14;
    if (*(v14 + 16) >= 2u)
    {
      v7 = (*(v14 + 8) + 112);
      v8 = 1;
      do
      {
        if (*v7)
        {
          heap_Free(*(*a1 + 8), *v7);
          *v7 = 0;
          v6 = v14;
        }

        ++v8;
        v7 += 8;
      }

      while (v8 < *(v6 + 16));
    }

    result = datac_RequestBlock(a1[1], 1021, 1u, &v14);
    if ((result & 0x80000000) == 0)
    {
      v9 = v14;
      if (*(v14 + 16) >= 2u)
      {
        v10 = (*(v14 + 8) + 112);
        v11 = 1;
        do
        {
          if (*v10)
          {
            heap_Free(*(*a1 + 8), *v10);
            *v10 = 0;
            v9 = v14;
          }

          ++v11;
          v10 += 8;
        }

        while (v11 < *(v9 + 16));
      }

      for (j = 0; j != 5; ++j)
      {
        v13 = datac_RequestBlock(a1[1], aAllTAG_0[j], 1u, &v14);
        if (j != 2 && (v13 & 0x80000000) == 0)
        {
          *(v14 + 16) = 0;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sentpar_Process(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v78 = 1;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v67 = 0;
  if (!a1)
  {
    return 2369789959;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_Process()");
  DWORD1(v72) = 0;
  if (*(a1 + 240))
  {
    v8 = 0;
    *(a1 + 64) = 0;
    *(a1 + 112) = 0;
    *(a1 + 184) = 0;
    *(a1 + 84) = 0;
    *(a1 + 76) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  InputStreams = sentpar_loc_PrepareDataContainers(a1, v8);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_GetTextBlockAndMarkers(bHaveReadInputStreams=%d,bBlockMoreInputRequest=%d,bMoreInputRequest=%d)", *(a1 + 64), *(a1 + 88), *(a1 + 84));
  if (!*(a1 + 64) || !*(a1 + 88) && *(a1 + 84) == 1)
  {
    InputStreams = sentpar_loc_ReadInputStreams(a1);
    if ((InputStreams & 0x80000000) != 0)
    {
      return InputStreams;
    }

    *(a1 + 64) = 1;
    goto LABEL_12;
  }

  *&v83 = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1010, 1u, &v83);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  if (*(v83 + 20))
  {
    if (*(a1 + 68))
    {
      InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32));
      if ((InputStreams & 0x80000000) != 0)
      {
        return InputStreams;
      }
    }

    if (*(a1 + 104))
    {
      InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48));
      if ((InputStreams & 0x80000000) != 0)
      {
        return InputStreams;
      }
    }

    InputStreams = sentpar_clearAllParameters(*a1);
    if ((InputStreams & 0x80000000) != 0)
    {
      return InputStreams;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_CheckIfAllDataProcessed(return TTSEG_PROCESSING_COMP_RESULTS_FULL)");
    return 2369789975;
  }

  v39 = *(a1 + 68);
  if (v39 == *(a1 + 76))
  {
    v40 = *(a1 + 104);
    if (v40 == *(a1 + 108))
    {
      if (*(a1 + 88) || *(a1 + 84))
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "FINISHED PROCESSING INPUT STREAM");
        v11 = sentpar_loc_FlushStreamsAndReturn(a1, a3, a4);
        goto LABEL_14;
      }

      *(a1 + 84) = 1;
      if (*(a1 + 240))
      {
        if (!v39)
        {
LABEL_99:
          if (v40)
          {
            InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48));
            if ((InputStreams & 0x80000000) != 0)
            {
              return InputStreams;
            }
          }

          goto LABEL_101;
        }

        InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32), v39);
        if ((InputStreams & 0x80000000) != 0)
        {
          return InputStreams;
        }

        if (*(a1 + 240))
        {
          v40 = *(a1 + 104);
          goto LABEL_99;
        }
      }

LABEL_101:
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "issue more text request (cTextBytesAvailable==0)- TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT");
      return 2369792000;
    }
  }

  InputStreams = sentpar_loc_ReadInputStreams(a1);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

LABEL_12:
  InputStreams = sentpar_loc_SetUpTextBlock(a1);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  v11 = sentpar_loc_SetUpMarkerBlocks(a1);
LABEL_14:
  v9 = v11;
  if ((v11 & 0x80000000) != 0)
  {
    return v9;
  }

  if (!*(a1 + 240) && !*(a1 + 88))
  {
    v41 = *(a1 + 68);
    if (v41 <= 0x1FF && v41 > *(a1 + 72))
    {
      *(a1 + 64) = 0;
      *(a1 + 84) = 1;
      *(a1 + 72) = v41;
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "issue more text request as text block received is less than SENTPAR_BLOCK_SIZE  - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT");
      return 2369792000;
    }
  }

  *(a1 + 72) = *(a1 + 68);
  v82 = 0;
  v83 = 0uLL;
  v81 = 0;
  v79 = 0;
  v80 = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v80);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  v12 = *(v80 + 8);
  v9 = datac_RequestBlock(*(a1 + 8), 1012, 1u, &v79);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (!*(a1 + 240))
  {
    v63 = v12;
    v59 = a3;
    v60 = a4;
    v61 = a2;
    v66 = 0;
    v65 = 0;
    v62 = 0;
    v64 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *(v79 + 16);
    v16 = &off_1E81A52E0;
    v17 = 4;
    while (1)
    {
      v18 = *(v16 - 2);
      if (v18 > 30)
      {
        if (v18 != 36)
        {
          if (v18 != 31)
          {
            goto LABEL_51;
          }

LABEL_27:
          v19 = *v16;
          UInt = paramc_ParamGetUInt(*(*a1 + 40), *v16, &v82);
          if ((UInt & 0x1FFF) == 0x14)
          {
            v9 = 0;
            goto LABEL_51;
          }

          v9 = UInt;
          if ((UInt & 0x80000000) != 0)
          {
            goto LABEL_52;
          }

          log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "GET PARAM marker:%d param=%s val=%d", v18, v19, v82);
          v24 = *(v80 + 16);
          if (v24)
          {
            HIDWORD(v65) = *(v63 + 32);
            v66 = *(v63 + 24);
          }

          else
          {
            HIDWORD(v65) = 0;
            v66 = 0;
          }

          LODWORD(v65) = 1;
          v62 = v82;
          goto LABEL_44;
        }
      }

      else
      {
        if (v18 == 7)
        {
          goto LABEL_27;
        }

        if (v18 != 21)
        {
          goto LABEL_51;
        }
      }

      v21 = *v16;
      Str = paramc_ParamGetStr(*(*a1 + 40), *v16, &v81);
      v23 = Str & 0x1FFF;
      if (v23 == 20)
      {
        v9 = 0;
      }

      else
      {
        v9 = Str;
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_52;
        }

        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "GET PARAM marker:%d param=%s val=%s", v18, v21, v81);
        v25 = strlen(v81);
        v26 = heap_Calloc(*(*a1 + 8), 1, v25 + 1);
        if (!v26)
        {
          return 2369789962;
        }

        v27 = strncpy(v26, v81, v25);
        v27[v25] = 0;
        if (*(v80 + 16))
        {
          HIDWORD(v65) = *(v63 + 32);
          v66 = *(v63 + 24);
        }

        else
        {
          HIDWORD(v65) = 0;
          v66 = 0;
        }

        v64 = v18;
        LODWORD(v65) = 1;
        v14 = v27;
      }

      paramc_ParamRelease(*(*a1 + 40));
      v81 = 0;
      if (v23 == 20)
      {
        goto LABEL_51;
      }

      v24 = *(v80 + 16);
      v18 = v64;
LABEL_44:
      v9 = datac_RequestBlock(*(a1 + 8), 1011, (v24 + 1), &v80);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_52;
      }

      ++v13;
      v28 = *(v80 + 8);
      v29 = *(v80 + 16);
      v63 = v28;
      v30 = v28 + (v13 << 6);
      if (v29 > v13)
      {
        memmove((v30 + 64), (v28 + (v13 << 6)), (v29 - v13) << 6);
      }

      *v30 = v65;
      *(v30 + 4) = v83;
      *(v30 + 20) = v18;
      *(v30 + 24) = v66;
      *(v30 + 28) = 0;
      *(v30 + 32) = HIDWORD(v65);
      *(v30 + 36) = 0;
      *(v30 + 40) = v62;
      *(v30 + 44) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      ++*(v80 + 16);
      if (v14)
      {
        v31 = strlen(v14);
        v9 = datac_RequestBlock(*(a1 + 8), 1012, (v31 + *(v79 + 16) + 1), &v79);
        if ((v9 & 0x80000000) != 0)
        {
          a4 = v60;
          a2 = v61;
          a3 = v59;
LABEL_53:
          heap_Free(*(*a1 + 8), v14);
          break;
        }

        v32 = *(v79 + 8);
        *(v30 + 40) = v15;
        v33 = strlen(v14);
        memcpy((v32 + v15), v14, v33);
        *(v32 + strlen(v14) + v15) = 0;
        v15 += strlen(v14) + 1;
        *(v79 + 16) = v15;
        heap_Free(*(*a1 + 8), v14);
        v14 = 0;
      }

      v64 = v18;
LABEL_51:
      v16 += 2;
      if (!--v17)
      {
LABEL_52:
        a4 = v60;
        a2 = v61;
        a3 = v59;
        if (!v14)
        {
          break;
        }

        goto LABEL_53;
      }
    }
  }

  if (v81)
  {
    paramc_ParamRelease(*(*a1 + 40));
  }

  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  *&v83 = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1039, 1u, &v83);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  v34 = *(v83 + 16);
  if (*(v83 + 16))
  {
    v35 = *(v83 + 8);
    v36 = *(v35 + ((v34 - 1) << 6) + 32);
    v37 = (a1 + 184);
    if (*(a1 + 184) > v36)
    {
      v36 = *(a1 + 184);
    }

    v38 = (v35 + 36);
    do
    {
      if (*v38 + *(v38 - 1) > v36)
      {
        v36 = *(v38 - 1);
      }

      v38 += 16;
      --v34;
    }

    while (v34);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_GetStartScanPos -> %d");
  }

  else
  {
    v37 = (a1 + 184);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_GetStartScanPos -> %d");
  }

  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "BEFORE sparser_ScanTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "BEFORE sparser_ScanTextElement", 0, 0, 0);
  if (*(a1 + 64) != 1 || *(a1 + 88) != 1 || *(a1 + 84) != 1)
  {
    InputStreams = sparser_PreScanTextElement(*(a1 + 200), *(a1 + 8), &v67);
    if ((InputStreams & 0x80000000) != 0)
    {
      return InputStreams;
    }

    if (v67 == 1 && !*(a1 + 240))
    {
      *(a1 + 64) = 0;
      *(a1 + 84) = 1;
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "issue more text request - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT");
      return 2369792000;
    }
  }

  InputStreams = sparser_ScanTextElement(*(a1 + 200), *(a1 + 8), *(a1 + 232), *(a1 + 196));
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  ScanPosition = sparser_GetScanPosition(*(a1 + 200));
  *(a1 + 184) = ScanPosition;
  if (*(a1 + 240))
  {
    v43 = 1;
    v78 = 1;
  }

  else
  {
    InputStreams = sparser_HasTextElementLeft(*(a1 + 200), *(a1 + 8), &v78, (a1 + 196));
    if ((InputStreams & 0x80000000) != 0)
    {
      return InputStreams;
    }

    v43 = v78;
    ScanPosition = *v37;
  }

  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "AFTER sparser_HasTextElementLeft bTextRemaining=%d pSentPar->startScanPos=%d", v43, ScanPosition);
  if (!v78)
  {
    v9 = sentpar_loc_Check2IssueMoreInputRequest(a1, &v69);
    if (v69 == 1)
    {
      LODWORD(v83) = 0;
      if ((paramc_ParamGetUInt(*(*a1 + 40), "disablefinalsentencesilence", &v83) & 0x80000000) == 0 && v83 == 1)
      {
        paramc_ParamSetUInt(*(*a1 + 40), "finalsentencefound", 1);
      }
    }

    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }
  }

  v44 = a4;
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "BEFORE sparser_GetTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "BEFORE sparser_GetTextElement", 0, 0, 0);
  InputStreams = sparser_GetTextElement(*(a1 + 200), *(a1 + 8), &v77, &v76 + 1, &v76, a2, (a1 + 196), &v75 + 1, &v75, &v71, &v70 + 1, &v70);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  if (*(a1 + 236) == 1)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "AFTER sparser_GetTextElement");
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "currentReadMode = %d, *bImmediateVoiceSwitch=%d, bEndOnVoiceSwitch=%d", *(a1 + 196), *a2, v76);
    v45 = *(*a1 + 32);
    v47 = v75;
    v46 = HIDWORD(v75);
    String = marker_getString(SDWORD1(v72));
    log_OutText(v45, "PP_SENT_PARSER", 5, 0, "posRefOffset=%d, refReset=%d, pRefResetMrk.tag=%s, numBlanksTrimmed=%d u32AdjustedEscLen=%d", v46, v47, String, v70, HIDWORD(v76));
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "inputMarkersConsumed=%d", HIWORD(v70));
  }

  if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)))
  {
    log_OutTraceTuningData(*(*a1 + 32), 33, 0, v49, v50, v51, v52, v53, v58);
  }

  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "In Blocks");
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "AFTER sparser_GetTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "AFTER sparser_GetTextElement", 0, 0, 0);
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Out Blocks");
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1020, "AFTER sparser_GetTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "AFTER sparser_GetTextElement (out marker)", 0, 0, 0);
  v54 = v76;
  if (*a2 != 1 && v76 != 1)
  {
    InputStreams = sentpar_loc_CheckForEmptyOutput(a1, &v68 + 1, &v68);
    if ((InputStreams & 0x80000000) == 0)
    {
      if (v69 == 1 && v68 == 0x100000001)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bThereIsNoMoreInput && bEmptyText && bEmptyMarkers - flush and return");
        return sentpar_loc_FlushStreamsAndReturn(a1, a3, v44);
      }

      v54 = v76;
      goto LABEL_126;
    }

    return InputStreams;
  }

LABEL_126:
  v55 = *(a1 + 236);
  v83 = v71;
  v84 = v72;
  v85 = v73;
  v86 = v74;
  InputStreams = sentpar_loc_UpdateTextAndMrkReadPosition(a1, SHIDWORD(v76), v55, v54, HIWORD(v70), v70, HIDWORD(v75), v75, &v83);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  v83 = v71;
  v84 = v72;
  v85 = v73;
  v86 = v74;
  v9 = sentpar_loc_SavePersistentData(a1, HIDWORD(v75), v75, &v83);
  if ((v9 & 0x80000000) == 0)
  {
    if (*a2 == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bImmediateVoiceSwitch - immediate return");
    }

    else
    {
      if (v76 == 1)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bEndOnVoiceSwitch - continue processing");
      }

      v57 = sentpar_loc_FilterSyncMarkers(*(a1 + 8));
      return v57 & (v57 >> 31);
    }
  }

  return v9;
}

uint64_t sentpar_loc_Check2IssueMoreInputRequest(uint64_t a1, _DWORD *a2)
{
  v2 = a2;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  *a2 = 0;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_Check2IssueMoreInputRequest()");
  v4 = datac_RequestBlock(*(a1 + 8), 1010, 1u, &v13);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  v4 = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v12);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  v4 = (*(*(a1 + 16) + 136))(*(a1 + 24), *(a1 + 32), &v11 + 4);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  v4 = (*(*(a1 + 16) + 144))(*(a1 + 24), *(a1 + 32), &v10 + 4, &v9 + 4);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  v4 = (*(*(a1 + 16) + 136))(*(a1 + 40), *(a1 + 48), &v11);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  v5 = (*(*(a1 + 16) + 144))(*(a1 + 40), *(a1 + 48), &v10, &v9);
  if ((v5 & 0x80000000) == 0)
  {
    if (HIDWORD(v9) == 1 && !HIDWORD(v10) && v9 == 1 && !v10)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "no text and markers : return TTSEG_PROCESSING_COMP_RESULTS_FULL");
      v5 = 2369789975;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "have bytes in input stream, issue more text request?");
    if (HIDWORD(v10))
    {
      v6 = (a1 + 84);
      if (*(a1 + 84) == 1)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "already issued more text request - there is no more input");
LABEL_20:
        v8 = "leaving sentpar_loc_Check2IssueMoreInputRequest() - continue processing";
LABEL_25:
        *v2 = 1;
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, v8);
        return v5;
      }

      v5 = 2369792000;
      *(a1 + 64) = 0;
      v8 = "[1]issue more text request - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
      goto LABEL_24;
    }

    if (v10)
    {
      v6 = (a1 + 84);
      if (*(a1 + 84) == 1)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "already issued more text request - still have some markers - return there is no more input");
        goto LABEL_20;
      }

      v5 = 2369792000;
      *(a1 + 64) = 0;
      v8 = "[2]issue more text request - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
LABEL_24:
      v2 = v6;
      goto LABEL_25;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "leaving sentpar_loc_Check2IssueMoreInputRequest() - continue processing");
  }

  return v5;
}

uint64_t sentpar_loc_CheckForEmptyOutput(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v7 = 0;
  *a2 = 0;
  *a3 = 0;
  result = datac_RequestBlock(*(a1 + 8), 1020, 1u, &v7);
  if ((result & 0x80000000) == 0)
  {
    if (!*(v7 + 16))
    {
      *a2 = 1;
    }

    result = datac_RequestBlock(*(a1 + 8), 1021, 1u, &v7);
    if ((result & 0x80000000) == 0 && !*(v7 + 16))
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sentpar_loc_FlushStreamsAndReturn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 68);
  v7 = *(a1 + 76);
  if (v6 != v7)
  {
    v8 = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32), (v6 - v7));
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    *(a1 + 68) = 0;
    *(a1 + 76) = 0;
  }

  v9 = 2369789975;
  if (*(a1 + 104) == *(a1 + 108))
  {
    return v9;
  }

  v41 = 0;
  v8 = datac_RequestBlock(*(a1 + 8), 1021, 1u, &v41);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v10 = *(v41 + 16);
  if (!*(v41 + 16))
  {
    v13 = 0;
    goto LABEL_44;
  }

  v11 = *(v41 + 8);
  v40 = 0;
  v12 = heap_Calloc(*(*a1 + 8), 1, (v10 << 6) | 1);
  if (!v12)
  {
    return 2369789962;
  }

  v13 = v12;
  v14 = datac_RequestBlock(*(a1 + 8), 1012, 1u, &v40);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  v15 = v41;
  if (!*(v41 + 16))
  {
    goto LABEL_42;
  }

  v16 = 0;
  v17 = *(v40 + 8);
  v18 = (v11 + 40);
  do
  {
    if (marker_hasNonConstCharPtrArg(*(v18 - 5)))
    {
      v19 = *v18;
      if (v19 == -1)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 + v19;
      }

      *v18 = v20;
    }

    ++v16;
    v15 = v41;
    v18 += 8;
  }

  while (v16 < *(v41 + 16));
  if (!*(v41 + 16))
  {
LABEL_42:
    v25 = (v15 + 16);
LABEL_43:
    *v25 = 0;
    goto LABEL_44;
  }

  v21 = 0;
  v22 = 0;
  do
  {
    v23 = &v13[v21 / 4];
    *(v23 + 5) = *(v11 + v21 + 20);
    v23[9] = *(v11 + v21 + 36);
    *(v23 + 5) = *(v11 + v21 + 40);
    ++v22;
    v24 = *(v41 + 16);
    v21 += 64;
  }

  while (v22 < v24);
  v25 = (v41 + 16);
  if (!*(v41 + 16))
  {
    goto LABEL_43;
  }

  v26 = 0;
  v27 = 0;
  v28 = v13;
  do
  {
    if (v26)
    {
      v29 = v28[5];
      if (v29 == 0x4000)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v29 = v13[5];
    }

    if (v29 != 3)
    {
      v24 = &v13[16 * v27];
      v30 = *v28;
      v31 = *(v28 + 1);
      v32 = *(v28 + 3);
      v24[2] = *(v28 + 2);
      v24[3] = v32;
      *v24 = v30;
      v24[1] = v31;
      ++v27;
      LOWORD(v24) = *v25;
    }

LABEL_28:
    ++v26;
    v28 += 16;
  }

  while (v26 < v24);
  *v25 = v27;
  if (v27 >= 2u)
  {
    v33 = 0;
    v34 = v13[9];
    v35 = v13 + 24;
    v36 = v27 - 1;
    do
    {
      v37 = *(v35 - 3);
      if (v37 != 999 && v37 != 0x4000 && *(v35 - 8) != 1)
      {
        v33 = 1;
      }

      *v35 = v34 + v13[8];
      v35 += 16;
      --v36;
    }

    while (v36);
    if (v33 == 1)
    {
      v14 = (*(*(a1 + 16) + 104))(a2, a3, v13, v27 << 6);
      if ((v14 & 0x80000000) != 0)
      {
LABEL_38:
        v9 = v14;
        goto LABEL_46;
      }
    }
  }

LABEL_44:
  v38 = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48), (*(a1 + 104) - *(a1 + 108)));
  if ((v38 & 0x80000000) != 0)
  {
    v9 = v38;
    if (v13)
    {
LABEL_46:
      heap_Free(*(*a1 + 8), v13);
    }
  }

  else
  {
    *(a1 + 104) = 0;
    if (v13)
    {
      goto LABEL_46;
    }
  }

  return v9;
}

uint64_t sentpar_loc_UpdateTextAndMrkReadPosition(uint64_t *a1, int a2, int a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, _OWORD *a9)
{
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_UpdateTextAndMrkReadPosition");
  v17 = datac_RequestBlock(a1[1], 1020, 1u, &v66);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = *(v66 + 16);
  v17 = datac_RequestBlock(a1[1], 1020, 1u, &v67);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  __src = *(v67 + 8);
  v62 = *(v67 + 16);
  v17 = datac_RequestBlock(a1[1], 1011, 1u, &v65);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v19 = datac_RequestBlock(a1[1], 1039, 1u, &v64);
  if ((v19 & 0x80000000) == 0)
  {
    v57 = a8;
    v58 = a3;
    v54 = v18;
    v55 = a6;
    v52 = a2;
    v53 = a4;
    v59 = a5;
    v56 = a7;
    if (*(v65 + 16))
    {
      v20 = 0;
      v60 = 0;
      v21 = *(v65 + 8);
      v22 = v64;
      v23 = *(v64 + 8);
      do
      {
        v24 = (v21 + (v20 << 6));
        if (*v24 == 1 && *(v24 + 5) == 2)
        {
          v25 = *(v22 + 16);
          v26 = v25 + 1;
          v27 = v23;
          while (--v26)
          {
            v28 = v27 + 64;
            v29 = memcmp((v21 + (v20 << 6)), v27, 0x40uLL);
            v27 = v28;
            if (!v29)
            {
              goto LABEL_23;
            }
          }

          v19 = datac_RequestBlock(a1[1], 1039, (v25 + 1), &v64);
          if ((v19 & 0x80000000) != 0)
          {
            return v19;
          }

          v23 = *(v64 + 8);
          v30 = *(v64 + 16);
          if (*(v64 + 16))
          {
            v31 = 0;
            v32 = v30 << 6;
            v33 = v23 + 64;
            while (*(v33 - 8) < *(v24 + 8))
            {
              ++v31;
              v33 += 16;
              v32 -= 64;
              if (!v32)
              {
                v31 = *(v64 + 16);
                v60 = *(v64 + 16);
                goto LABEL_22;
              }
            }

            v60 = v31;
            if (v30 != v31)
            {
              memcpy(v33, v33 - 16, v32);
            }
          }

          else
          {
            v31 = v60;
          }

LABEL_22:
          v34 = &v23[64 * v31];
          v35 = *v24;
          v36 = v24[1];
          v37 = v24[3];
          *(v34 + 2) = v24[2];
          *(v34 + 3) = v37;
          *v34 = v35;
          *(v34 + 1) = v36;
          v22 = v64;
          ++*(v64 + 16);
        }

LABEL_23:
        ++v20;
      }

      while (v20 < *(v65 + 16));
    }

    if (v58 == 1 && v62)
    {
      if (v62 >= 0x400)
      {
        v38 = 1024;
      }

      else
      {
        v38 = v62;
      }

      v39 = heap_Calloc(*(*a1 + 8), 1, (v38 + 1));
      if (!v39)
      {
        return 2369789962;
      }

      v40 = v39;
      strncpy(v39, __src, v38)[v38] = 0;
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "(Txt) (text processed) (tag=%d) len=%d (UTF8 *) %s", 1011, v62, v40);
      heap_Free(*(*a1 + 8), v40);
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "(Mrk) (%d markers processed)", v59);
    }

    v41 = *(v67 + 2);
    v42 = (v55 + v41 * v54);
    if (v42)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "consume TXT Stream cTextBytesRead=%d", v55 + v41 * v54);
      v19 = (*(a1[2] + 96))(a1[3], a1[4], v42);
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v43 = v55 + (v54 + v52) * v41 + *(a1 + 20);
      *(a1 + 19) += v42;
      *(a1 + 20) = v43;
    }

    if (!v59)
    {
      goto LABEL_40;
    }

    v44 = (v59 << 6);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "MRK Stream cMarkerBytesProcessed=%d", v44);
    if (*(a1 + 27) >= 0x40u)
    {
      v45 = 0;
      v46 = 0;
      do
      {
        v47 = (a1[12] + (v46 << 6));
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "CONSUMED pInMrk[%d].tag %d %d,%d %d,%d", v45, v47[5], v47[6], v47[7], v47[8], v47[9]);
        v45 = ++v46;
      }

      while (v46 < *(a1 + 27) >> 6);
    }

    v19 = (*(a1[2] + 96))(a1[5], a1[6], v44);
    if ((v19 & 0x80000000) == 0)
    {
      *(a1 + 108) = vadd_s32(*(a1 + 108), vdup_n_s32(v44));
LABEL_40:
      if (v53 == 1 || *(a1 + 20) > *(a1 + 48))
      {
        v48 = a9[1];
        v63[0] = *a9;
        v63[1] = v48;
        v49 = a9[3];
        v63[2] = a9[2];
        v63[3] = v49;
        v19 = sentpar_loc_SavePersistentData(a1, v56, v57, v63);
        if ((v19 & 0x80000000) == 0)
        {
          v50 = *(*a1 + 32);
          if (v53 == 1)
          {
            log_OutText(v50, "PP_SENT_PARSER", 5, 0, "!! bEndOnVoiceSwitch - RESET");
          }

          else
          {
            log_OutText(v50, "PP_SENT_PARSER", 5, 0, "!! cSTREAMTextBytesProcessed %d > pSentPar->cReadDirectSize %d - RESET");
          }

          *(a1 + 46) = 0;
          a1[7] = 0;
          a1[8] = 0;
          *(a1 + 84) = 0;
          *(a1 + 76) = 0;
          a1[12] = 0;
          a1[13] = 0;
          *(a1 + 28) = 0;
        }
      }
    }
  }

  return v19;
}

uint64_t sentpar_loc_SavePersistentData(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v18 = 0;
  v8 = sentpar_loc_SetReadoutMarkersAsParameters(a1);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_posrefoffset", a2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_refreset", a3);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = *(*a1 + 40);
  if (a3)
  {
    v8 = paramc_ParamSetUInt(v9, "pp_sentpar_refreset_mrk_tag", a4[5]);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_refreset_mrk_posref", a4[6]);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v10 = *(*a1 + 40);
    v11 = a4[7];
  }

  else
  {
    v8 = paramc_ParamSetUInt(v9, "pp_sentpar_refreset_mrk_tag", 0);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_refreset_mrk_posref", 0);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v10 = *(*a1 + 40);
    v11 = 0;
  }

  v8 = paramc_ParamSetUInt(v10, "pp_sentpar_refreset_mrk_lenref", v11);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v12 = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v18);
  if ((v12 & 0x80000000) == 0 && *(v18 + 16))
  {
    v13 = *(v18 + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    *(a1 + 168) = v13[3];
    *(a1 + 152) = v16;
    *(a1 + 136) = v15;
    *(a1 + 120) = v14;
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "STORE lastOutSyncMrk %d,%d %d,%d", *(a1 + 144), *(a1 + 148), *(a1 + 152), *(a1 + 156));
  }

  return v12;
}

uint64_t sentpar_loc_FilterSyncMarkers(uint64_t a1)
{
  v2 = 0;
  result = datac_RequestBlock(a1, 1021, 1u, &v2);
  if ((result & 0x80000000) == 0)
  {
    return marker_loc_FilterSyncMarkers(v2);
  }

  return result;
}

uint64_t sentpar_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = 0;
  v30 = 0;
  v5 = 2369789952;
  if (!a1)
  {
    return 2369789959;
  }

  v31 = 0;
  Object = (*(*(a1 + 16) + 136))(a2, a3, &v31);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "start sentpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1020, "start sentpar_WriteTextAndMarkers()");
  Object = datac_RequestBlock(*(a1 + 8), 1020, 1u, &v30);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  v12 = *(v30 + 16);
  if (*(v30 + 16))
  {
    Object = (*(*(a1 + 16) + 104))(a2, a3, *(v30 + 8), *(v30 + 2) * v12);
    if ((Object & 0x80000000) != 0)
    {
      return Object;
    }

    if (!*(a1 + 240))
    {
      v28 = 0;
      Object = objc_GetObject(*(*a1 + 48), "CHARCOUNT", &v28);
      if ((Object & 0x80000000) != 0)
      {
        return Object;
      }

      (*(v28[1] + 56))(v28[2], v28[3], *(v30 + 8), *(v30 + 2) * *(v30 + 16));
      objc_ReleaseObject(*(*a1 + 48), "CHARCOUNT");
    }

    *(v30 + 16) = 0;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if ((datac_RequestBlock(*(a1 + 8), 1012, 1u, &v30) & 0x80000000) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v30 + 8);
  }

  Object = datac_RequestBlock(*(a1 + 8), 1021, 1u, &v29);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  v15 = *(v29 + 16);
  if (*(v29 + 16))
  {
    v16 = *(v29 + 8);
    if (*(v16 + 20) == 0x4000)
    {
      if (v12)
      {
        v17 = 0;
        v31 = *(v16 + 32) - v31;
      }

      else
      {
        v17 = marker_CheckForEmptyMarkers(v14, *(a1 + 188), v16, v15, *(a1 + 96), (*(a1 + 104) >> 6), (*(a1 + 108) >> 6));
        v15 = *(v29 + 16);
        v31 = *(v16 + 32) - v31;
        if (!v15)
        {
LABEL_33:
          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "at end(internal only)", 0, 0, 0);
          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "at end()", 1, 0, 0);
          v25 = v29;
          log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_writeMarkersToOutputStream(bNoSignificantMarkers=%d bTextOut=%d)", v17, v13);
          v26 = *(v25 + 16);
          if (!v12)
          {
            if (v26 == 1)
            {
              if (v17 == 1 || *(v16 + 20) == 0x4000)
              {
                return 0;
              }

              LOWORD(v26) = 1;
            }

            else if (v17 == 1)
            {
              return 0;
            }
          }

          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "markers output()", 1, v16, v26);
          Object = (*(*(a1 + 16) + 104))(a4, a5, v16, *(v25 + 16) << 6);
          if ((Object & 0x80000000) == 0)
          {
            return 0;
          }

          return Object;
        }
      }

      v18 = v15;
      v19 = (v16 + 32);
      do
      {
        *v19 -= v31;
        v19 += 16;
        --v18;
      }

      while (v18);
      v20 = 0;
      v21 = (v16 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v21 - 5)))
        {
          v22 = *v21;
          if (v14)
          {
            v23 = v22 == 0xFFFFFFFFLL;
          }

          else
          {
            v23 = 1;
          }

          v24 = v14 + v22;
          if (v23)
          {
            v24 = 0;
          }

          *v21 = v24;
        }

        ++v20;
        v21 += 8;
      }

      while (v20 < *(v29 + 16));
      goto LABEL_33;
    }
  }

  return v5;
}

uint64_t sentpar_IsTextElementAtEos(uint64_t a1)
{
  v3 = 0;
  if (!a1)
  {
    return 1;
  }

  v1 = 1;
  if ((datac_RequestBlock(*(a1 + 8), 1020, 1u, &v3) & 0x80000000) == 0)
  {
    return *(v3 + 20);
  }

  return v1;
}

uint64_t sentpar_ResetMarkerBlocks(uint64_t *a1)
{
  v11 = 0;
  if (!a1)
  {
    return 2369789959;
  }

  v2 = datac_RequestBlock(a1[1], 1021, 1u, &v11);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = v11;
  if (*(v11 + 16) >= 2u)
  {
    v4 = (*(v11 + 8) + 112);
    v5 = 1;
    do
    {
      if (*v4)
      {
        heap_Free(*(*a1 + 8), *v4);
        *v4 = 0;
        v3 = v11;
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < *(v3 + 16));
  }

  *(v3 + 16) = 0;
  v6 = datac_RequestBlock(a1[1], 1011, 1u, &v11);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v11;
    if (*(v11 + 16) >= 2u)
    {
      v8 = (*(v11 + 8) + 112);
      v9 = 1;
      do
      {
        if (*v8)
        {
          heap_Free(*(*a1 + 8), *v8);
          *v8 = 0;
          v7 = v11;
        }

        ++v9;
        v8 += 8;
      }

      while (v9 < *(v7 + 16));
    }

    *(v7 + 16) = 0;
  }

  return v6;
}

uint64_t sentpar_loc_ReadInputStreams(uint64_t a1)
{
  v2 = (a1 + 104);
  v3 = *(a1 + 104);
  v4 = (a1 + 68);
  v5 = *(a1 + 68);
  v6 = *(a1 + 76);
  v12 = 0;
  v13 = 0;
  v7 = (*(*(a1 + 16) + 144))(*(a1 + 24), *(a1 + 32), &v13 + 4, &v12 + 4);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v7 = (*(*(a1 + 16) + 144))(*(a1 + 40), *(a1 + 48), &v13, &v12);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (*(a1 + 236) == 1)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_ReadInputStreams()");
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "TXT State fTxtEos=%d cTxtBytesRemaining=%d", HIDWORD(v12), HIDWORD(v13));
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "MRK State fMrkEos=%d cMrkBytesRemaining=%d", v12, v13);
  }

  v7 = (*(*(a1 + 16) + 88))(*(a1 + 24), *(a1 + 32), a1 + 56, v4);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = *(a1 + 68);
  *(a1 + 76) = 0;
  v9 = (*(*(a1 + 16) + 88))(*(a1 + 40), *(a1 + 48), a1 + 96, v2);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *(a1 + 104);
    *(a1 + 108) = 0;
    if (*(a1 + 236) == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "After stream reads");
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "TXT cTextBytesInStream=%d  (%u characters)", *(a1 + 68), v8);
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "TXT cMarkerBytesInStream=%d (%u markers)", *(a1 + 104), (v10 >> 6));
    }

    if (*(a1 + 84) == 1)
    {
      if (v12 == 0x100000001)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "!![1](fTxtEos==1) && (fMrkEos==1) && (bBlockMoreInputRequest) - NO MORE TEXT SO BLOCK REQUESTS");
      }

      else
      {
        if (v5 == v6 || v5 - v6 != *v4 || v3 && v3 != *v2)
        {
          *(a1 + 84) = 0;
          return v9;
        }

        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "!![2](bBlockMoreInputRequest) - NO MORE TEXT & MARKERS SO BLOCK REQUESTS");
      }

      *(a1 + 88) = 1;
    }
  }

  return v9;
}

uint64_t sentpar_loc_SetUpTextBlock(uint64_t a1)
{
  v8[129] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v2 = *(a1 + 68) - *(a1 + 76);
  if (*(a1 + 236) == 1)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_SetUpTextBlock()");
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input Stream State :");
    v3 = v2;
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "cTextBytesAvailable=%d cTextBytesInStream=%d cTextBytesRead=%d", v2, *(a1 + 68), *(a1 + 76));
  }

  else
  {
    v3 = (*(a1 + 68) - *(a1 + 76));
  }

  v4 = *(a1 + 8);
  if (v3)
  {
    v5 = datac_RequestBlock(v4, 1010, v2, v8);
    if ((v5 & 0x80000000) == 0)
    {
      memcpy(*(v8[0] + 8), (*(a1 + 56) + *(a1 + 76)), v3);
      *(v8[0] + 16) = v2;
      if (*(a1 + 68) < 0x400u)
      {
        __strncpy_chk();
        *(&v8[1] + *(a1 + 68)) = 0;
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input TXT Stream -%s-");
      }

      else
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input TXT Stream > PP_MAX_LOG_MESSAGE, skip trace");
      }

      if (*(v8[0] + 16) < 0x400uLL)
      {
        __strncpy_chk();
        *(&v8[1] + *(v8[0] + 16)) = 0;
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input TXT        -%s-");
      }

      else
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input TXT > PP_MAX_LOG_MESSAGE, skip trace");
      }
    }
  }

  else
  {
    v5 = datac_RequestBlock(v4, 1010, 1u, v8);
    if ((v5 & 0x80000000) == 0)
    {
      *(v8[0] + 16) = 0;
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Empty text block", v7);
    }
  }

  return v5;
}

uint64_t sentpar_loc_SetUpMarkerBlocks(uint64_t a1)
{
  v90 = *MEMORY[0x1E69E9840];
  v87 = 0;
  v88 = 0;
  v2 = *(a1 + 104);
  v3 = *(a1 + 108);
  v86 = 0;
  v4 = v2 - v3;
  v5 = (v2 - v3) >> 6;
  if (*(a1 + 236) == 1)
  {
    v84 = v2 - v3;
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_SetUpMarkerBlocks()");
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input Stream State :");
    v6 = (v2 >> 6);
    v85 = v5;
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "numMarkersAvailable=%d numMarkersInStream=%d numMarkersInStreamRead=%d", v5, v6, (v3 >> 6));
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Markers in Input Stream");
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(a1 + 96);
        if (*(v9 + v8 + 48))
        {
          v10 = strlen(*(v9 + v8 + 48));
          if ((v10 & 0xFFE0) != 0)
          {
            v11 = 31;
          }

          else
          {
            v11 = v10;
          }

          __strncpy_chk();
          v89[v11] = 0;
          v9 = *(a1 + 96);
        }

        else
        {
          v89[0] = 0;
        }

        v12 = "";
        if ((v3 >> 6) > v7)
        {
          v12 = "(CONSUMED)";
        }

        v13 = (v9 + v8);
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "%spInMrk[%d] %d %d,%d %d,%d INT=%d Ext=%d %s", v12, v7, v13[5], v13[6], v13[7], v13[8], v13[9], *v13, v13[14], v89);
        v8 += 64;
        ++v7;
      }

      while (v6 << 6 != v8);
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "lastOutSyncMrk %d,%d %d,%d", *(a1 + 144), *(a1 + 148), *(a1 + 152), *(a1 + 156));
    v5 = v85;
    v4 = v84;
  }

  if (v4 <= 0x3Fu)
  {
    if (!*(a1 + 140))
    {
      v50 = 2369792000;
      if (!*(a1 + 240))
      {
        log_OutPublic(*(*a1 + 32), "PP_SENT_PARSER", 1931, 0);
      }

      return v50;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "no markers - use lastOutSyncMrk");
    v14 = datac_RequestBlock(*(a1 + 8), 1011, 0x40u, &v88);
    if ((v14 & 0x80000000) == 0)
    {
      v15 = v88;
      v16 = *(v88 + 8);
      v17 = *(a1 + 136);
      v18 = *(a1 + 168);
      v19 = *(a1 + 120);
      v16[2] = *(a1 + 152);
      v16[3] = v18;
      *v16 = v19;
      v16[1] = v17;
      v20 = 1;
      *v16 = 1;
LABEL_54:
      *(v15 + 16) = v20;
      goto LABEL_55;
    }

    return v14;
  }

  v14 = datac_RequestBlock(*(a1 + 8), 1011, v4 & 0xFFC0, &v88);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v21 = 0;
  v22 = 0;
  v16 = *(v88 + 8);
  v23 = (v3 >> 6);
  if (v5 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v5;
  }

  v25 = v23 << 6;
  do
  {
    v26 = &v16[v21 / 0x10];
    v27 = (*(a1 + 96) + v25 + v21);
    v28 = v27[2];
    v29 = v27[3];
    v30 = v27[1];
    *v26 = *v27;
    v26[1] = v30;
    v26[2] = v28;
    v26[3] = v29;
    *v26 = 0;
    hasNonConstCharPtrArg = marker_hasNonConstCharPtrArg(DWORD1(v16[v21 / 0x10 + 1]));
    v32 = *(a1 + 96) + v25 + v21;
    if (hasNonConstCharPtrArg)
    {
      v33 = *(v32 + 40);
      if (v33)
      {
        v34 = strlen(v33);
        LODWORD(v33) = 0;
        v22 += v34 + 1;
      }
    }

    else
    {
      LODWORD(v33) = *(v32 + 40);
    }

    DWORD2(v16[v21 / 0x10 + 2]) = v33;
    v35 = *(*(a1 + 96) + v25 + v21 + 48);
    if (v35)
    {
      v36 = strlen(v35);
      if (v36)
      {
        v37 = heap_Calloc(*(*a1 + 8), 1, (v36 + 1));
        *&v16[v21 / 0x10 + 3] = v37;
        if (!v37)
        {
          return 2369789962;
        }

        strcpy(v37, *(*(a1 + 96) + v25 + v21 + 48));
      }
    }

    v21 += 64;
  }

  while (v24 << 6 != v21);
  *(v88 + 16) = v5;
  if (v22)
  {
    v14 = datac_RequestBlock(*(a1 + 8), 1012, v22, &v87);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v38 = 0;
    v39 = *(v87 + 8);
    v40 = v16 + 5;
    v41 = (v23 << 6) | 0x28;
    v42 = v16 + 5;
    do
    {
      v43 = *v42;
      v42 += 16;
      if (marker_hasNonConstCharPtrArg(v43) && *(*(a1 + 96) + v41))
      {
        v40[5] = v38;
        v44 = strlen(*(*(a1 + 96) + v41));
        memcpy((v39 + v38), *(*(a1 + 96) + v41), v44);
        *(v39 + strlen(*(*(a1 + 96) + v41)) + v38) = 0;
        v38 += strlen(*(*(a1 + 96) + v41)) + 1;
      }

      v41 += 64;
      v40 = v42;
      --v24;
    }

    while (v24);
    *(v87 + 16) = v38;
  }

  if (*(v16 + 5) != 0x4000)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "First Input Stream is not a SYNC marker, so clone it an make it a SYNC marker");
    memmove(v16 + 4, v16, *(v88 + 16) << 6);
    if (*(a1 + 140))
    {
      v51 = (a1 + 120);
    }

    else
    {
      v51 = v16 + 4;
    }

    v53 = v51[2];
    v52 = v51[3];
    v54 = v51[1];
    *v16 = *v51;
    v16[1] = v54;
    v16[2] = v53;
    v16[3] = v52;
    *(v16 + 5) = 0x4000;
    *v16 = 1;
    *(v16 + 7) = 0;
    *(v16 + 9) = 0;
    *(v16 + 5) = 0;
    v15 = v88;
    v20 = *(v88 + 16) + 1;
    goto LABEL_54;
  }

  if (*(a1 + 140))
  {
    if (*(v88 + 16) >= 2u)
    {
      v45 = *(v16 + 24);
      v46 = *(a1 + 152);
      if (v45 < v46)
      {
        log_OutPublic(*(*a1 + 32), "PP_SENT_PARSER", 1932, "%s%d%s%d", "pMrk[1].posCur", v45, "< pSentPar->lastOutSyncMrk.posCur", v46);
      }
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "First Input Stream is a SYNC marker, but update using lastOutSyncMrk");
    v47 = *(a1 + 168);
    v48 = *(a1 + 152);
    v49 = *(a1 + 136);
    *v16 = *(a1 + 120);
    v16[1] = v49;
    v16[2] = v48;
    v16[3] = v47;
    *v16 = 0;
    *(v16 + 7) = 0;
    *(v16 + 9) = 0;
    *(v16 + 5) = 0;
  }

LABEL_55:
  v50 = datac_RequestBlock(*(a1 + 8), 1039, 1u, &v86);
  if ((v50 & 0x80000000) == 0)
  {
    v55 = *(v86 + 8);
    v56 = *(v86 + 16);
    if (*(v86 + 16))
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 32;
      do
      {
        if (*(v55 + v60) < *(v16 + 8))
        {
          v59 = v57;
          v58 = 1;
        }

        ++v57;
        v60 += 64;
      }

      while (v56 != v57);
      if (v58 == 1)
      {
        v61 = v59 + 1;
        LODWORD(v56) = v56 - v61;
        if (v56)
        {
          memmove(*(v86 + 8), (v55 + (v61 << 6)), v56 << 6);
          LOWORD(v56) = *(v86 + 16) - v61;
          *(v86 + 16) = v56;
        }

        else
        {
          *(v86 + 16) = 0;
        }
      }
    }

    if (*(a1 + 236) == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Persistent Markers");
      if (!*(v86 + 16))
      {
        return v50;
      }

      v62 = 0;
      v63 = (v55 + 36);
      do
      {
        v64 = *(v63 - 4);
        v65 = *(v63 - 3);
        v66 = *(v63 - 2);
        v67 = *(v63 - 1);
        v68 = *v63;
        v63 += 16;
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "pPersistMrk[%d] %d %d,%d %d,%d", v62++, v64, v65, v66, v67, v68);
        v56 = *(v86 + 16);
      }

      while (v62 < v56);
    }

    if (v56)
    {
      v50 = datac_RequestBlock(*(a1 + 8), 1011, ((*(v88 + 16) + v56) & 0x3FF) << 6, &v88);
      if ((v50 & 0x80000000) == 0)
      {
        if (*(v86 + 16))
        {
          v69 = 0;
          v70 = v88;
          v71 = *(v88 + 8);
          do
          {
            v72 = *(v70 + 16);
            v73 = (v55 + (v69 << 6));
            if (v72)
            {
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v77 = (v71 + 40);
              while (*(v73 + 8) >= *(v77 - 2))
              {
                if (*(v77 - 5) == 7)
                {
                  v76 = !v76;
                  if (*v77 == 43)
                  {
                    v75 = v74;
                  }

                  else
                  {
                    v76 = 0;
                  }
                }

                ++v74;
                v77 += 16;
                if (v72 == v74)
                {
                  LOWORD(v74) = v72;
                  break;
                }
              }

              if (v76)
              {
                v78 = *(v71 + (v75 << 6) + 32);
                if (v72 - 1 != v75)
                {
                  v75 = v72;
                }

                if (*(v73 + 8) != v78)
                {
                  v75 = v74;
                }

                if (v72 == v74)
                {
                  LOWORD(v74) = v75;
                }
              }
            }

            else
            {
              LOWORD(v74) = 0;
            }

            if (v72 == v74)
            {
              v79 = (v71 + (v72 << 6));
            }

            else
            {
              v79 = (v71 + (v74 << 6));
              memmove(v79 + 4, v79, (v72 - v74) << 6);
            }

            v80 = *v73;
            v81 = v73[1];
            v82 = v73[3];
            v79[2] = v73[2];
            v79[3] = v82;
            *v79 = v80;
            v79[1] = v81;
            v70 = v88;
            ++*(v88 + 16);
            ++v69;
          }

          while (v69 < *(v86 + 16));
        }
      }
    }
  }

  return v50;
}

uint64_t pp_sent_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2369789953;
  }

  result = 0;
  *a2 = &IPPSentPar;
  return result;
}

uint64_t pp_sent_parser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v17 = 0;
  v5 = 2369789959;
  v15 = 0;
  if (a5 && (InitRsrcFunction(a3, a4, &v17) & 0x80000000) == 0)
  {
    v9 = v17;
    v10 = v17[4];
    if (v10)
    {
      log_OutText(v10, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ObjOpen");
      v9 = v17;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    v11 = heap_Alloc(v9[1], 104);
    if (v11)
    {
      v12 = v11;
      *(v11 + 96) = 0;
      *(v11 + 64) = 0u;
      *(v11 + 80) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 48) = 0u;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *v11 = a3;
      *(v11 + 8) = a4;
      Object = objc_GetObject(v17[6], "SYNTHSTREAM", &v16);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_13;
      }

      *(v12 + 16) = *(v16 + 8);
      *(v12 + 96) = 0;
      if ((paramc_ParamGetStr(v17[5], "clcpppipelinemode", &v15) & 0x80000000) == 0 && v15 && *v15)
      {
        *(v12 + 96) = 1;
      }

      Object = sentpar_ObjOpen(a3, a4, *(v12 + 16), (v12 + 88), *(v12 + 96));
      if ((Object & 0x80000000) != 0)
      {
LABEL_13:
        v5 = Object;
        pp_sent_parser_ObjClose(v12, 17557);
      }

      else
      {
        v5 = 0;
        *a5 = v12;
        *(a5 + 8) = 17557;
      }
    }

    else
    {
      return 2369789962;
    }
  }

  return v5;
}

uint64_t pp_sent_parser_ObjClose(_WORD **a1, int a2)
{
  v3 = 2369789959;
  v8 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v8) & 0x80000000) == 0)
  {
    v4 = *(v8 + 32);
    if (v4)
    {
      log_OutText(v4, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ObjClose");
    }

    v5 = a1[11];
    if (v5)
    {
      sentpar_ObjClose(*a1, a1[1], v5);
    }

    v6 = v8;
    if (a1[2])
    {
      objc_ReleaseObject(*(v8 + 48), "SYNTHSTREAM");
      v6 = v8;
    }

    heap_Free(*(v6 + 8), a1);
    return 0;
  }

  return v3;
}

uint64_t pp_sent_parser_ObjReopen(_WORD **a1, int a2)
{
  v3 = 2369789959;
  v7 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v7) & 0x80000000) == 0)
  {
    v4 = *(v7 + 32);
    if (v4)
    {
      log_OutText(v4, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ObjReopen");
    }

    v5 = a1[11];
    if (v5)
    {
      sentpar_ObjReopen(*a1, a1[1], v5);
    }

    return 0;
  }

  return v3;
}

uint64_t pp_sent_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = 0;
  v7 = 2369789959;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v28) & 0x80000000) == 0)
  {
    v8 = *(v28 + 32);
    if (v8)
    {
      log_OutText(v8, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ProcessStart");
    }

    v9 = 0;
    v10 = a1 + 24;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = (*(*(a1 + 16) + 64))(a3, a4, 212, szOUTPUT_STREAMS[v9], 0, 0, v10 + 16 * v9);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      v11 = 0;
      v9 = 1;
    }

    while ((v12 & 1) != 0);
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *(a1 + 16);
      v17 = *(v16 + 64);
      if (v14)
      {
        break;
      }

      v14 = 1;
      v13 = v17(a3, a4, 212, szOUTPUT_STREAMS[v15], 0, 1, a1 + 56 + 16 * v15);
      v15 = 1;
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    v18 = (*(v16 + 168))();
    v13 = v17(a3, a4, 212, "application/x-realspeak-int-markers-pp;version=4.0", v18, 1, a1 + 72);
    if ((v13 & 0x80000000) != 0)
    {
LABEL_17:
      v7 = v13;
      goto LABEL_18;
    }

    v7 = sentpar_ProcessStart(v28, *(a1 + 88), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
    if ((v7 & 0x80000000) == 0)
    {
      return v7;
    }

LABEL_18:
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = v20;
      v22 = (v10 + 16 * v19);
      if (*v22)
      {
        (*(*(a1 + 16) + 72))(*v22, v22[1]);
        *v22 = 0;
        *(v22 + 2) = 0;
      }

      v20 = 0;
      v19 = 1;
    }

    while ((v21 & 1) != 0);
    v23 = 0;
    v24 = 1;
    do
    {
      v25 = v24;
      v26 = (a1 + 56 + 16 * v23);
      if (*v26)
      {
        (*(*(a1 + 16) + 72))(*v26, v26[1]);
        *v26 = 0;
        *(v26 + 2) = 0;
      }

      v24 = 0;
      v23 = 1;
    }

    while ((v25 & 1) != 0);
  }

  return v7;
}

uint64_t pp_sent_parser_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2369789959;
  v30 = 0;
  v29 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1)
  {
    if (!*(a1 + 24))
    {
      return 2369789969;
    }

    if ((InitRsrcFunction(*a1, *(a1 + 8), &v30) & 0x80000000) == 0)
    {
      v8 = *(v30 + 32);
      if (v8)
      {
        log_OutText(v8, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_Process");
      }

      *a5 = 2;
      v9 = a1 + 56;
      v10 = sentpar_Process(*(a1 + 88), &v29, *(a1 + 72), *(a1 + 80));
      if ((v10 & 0x80000000) == 0)
      {
        if (v29 == 1)
        {
          v7 = paramc_ParamSetStr(*(v30 + 40), "ppmarkersetlang", "normal");
          *a5 = 3;
          v11 = *(v30 + 32);
          if (v11)
          {
            log_OutText(v11, "PP_SENT_PARSER", 4, 0, "Immediate Voice Switch!");
          }
        }

        else
        {
          v17 = sentpar_WriteTextAndMarkers(*(a1 + 88), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
          if ((v17 & 0x80000000) != 0)
          {
            v7 = v17;
          }

          else
          {
            v7 = sentpar_ResetMarkerBlocks(*(a1 + 88));
            if ((v7 & 0x80000000) == 0 && (*(a1 + 96) || sentpar_IsTextElementAtEos(*(a1 + 88))))
            {
              *a5 = 1;
              if (!*(a1 + 96))
              {
                v18 = 0;
                v19 = 1;
                do
                {
                  while (1)
                  {
                    v20 = v19;
                    v21 = (v9 + 16 * v18);
                    if (!*v21)
                    {
                      break;
                    }

                    v16 = (*(*(a1 + 16) + 72))(*v21, v21[1]);
                    v19 = 0;
                    *v21 = 0;
                    *(v21 + 2) = 0;
                    v18 = 1;
                    if ((v20 & (v16 >= 0)) == 0)
                    {
                      goto LABEL_41;
                    }
                  }

                  v19 = 0;
                  v18 = 1;
                }

                while ((v20 & 1) != 0);
LABEL_31:
                v7 = 0;
              }
            }
          }
        }

        goto LABEL_47;
      }

      v7 = v10;
      if ((v10 & 0x1FFF) == 0x800)
      {
        if (!*(a1 + 96))
        {
          *a5 = 0;
          if (*(a1 + 96))
          {
            v7 = v10;
          }

          else
          {
            v7 = 0;
          }

LABEL_47:
          v27 = *(v30 + 32);
          if (v27)
          {
            log_OutText(v27, "PP_SENT_PARSER", 4, 0, "Leaving pp_sent_parser_Process peResults=%d fRet=%d", *a5, v7);
          }

          return v7;
        }

        v7 = 0;
      }

      else
      {
        if ((v10 & 0x1FFF) == 0x17)
        {
          v12 = 0;
          v13 = 1;
          *a5 = 1;
          do
          {
            while (1)
            {
              v14 = v13;
              v15 = (v9 + 16 * v12);
              if (*v15)
              {
                break;
              }

              v13 = 0;
              v12 = 1;
              if ((v14 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            v16 = (*(*(a1 + 16) + 72))(*v15, v15[1]);
            v13 = 0;
            *v15 = 0;
            *(v15 + 2) = 0;
            v12 = 1;
          }

          while ((v14 & (v16 >= 0)) != 0);
LABEL_41:
          if (v16 < 0)
          {
            v7 = v16;
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_47;
        }

        v22 = 0;
        v23 = 1;
        do
        {
          while (1)
          {
            v24 = v23;
            v25 = (v9 + 16 * v22);
            if (!*v25)
            {
              break;
            }

            v26 = (*(*(a1 + 16) + 72))(*v25, v25[1]);
            v23 = 0;
            *v25 = 0;
            *(v25 + 2) = 0;
            v22 = 1;
            if ((v24 & (v26 >= 0)) == 0)
            {
              goto LABEL_39;
            }
          }

          v23 = 0;
          v22 = 1;
        }

        while ((v24 & 1) != 0);
      }

LABEL_39:
      *a5 = 1;
      goto LABEL_47;
    }
  }

  return v7;
}

uint64_t pp_sent_parser_ProcessStop(_WORD **a1, int a2)
{
  v3 = 2369789959;
  v16 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v16) & 0x80000000) == 0)
  {
    v4 = *(v16 + 32);
    if (v4)
    {
      log_OutText(v4, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ProcessStop");
    }

    v5 = sentpar_ProcessEnd(a1[11], *a1, a1[1]);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = 0;
      v7 = 1;
      while (1)
      {
        v8 = v7;
        v9 = &a1[2 * v6 + 7];
        if (*v9)
        {
          v5 = (*(a1[2] + 9))(*v9, v9[1]);
          *v9 = 0;
          *(v9 + 2) = 0;
          if ((v5 & 0x80000000) != 0)
          {
            break;
          }
        }

        v7 = 0;
        v6 = 1;
        if ((v8 & 1) == 0)
        {
          v10 = 0;
          v11 = 1;
          do
          {
            while (1)
            {
              v12 = v11;
              v13 = &a1[2 * v10 + 3];
              if (*v13)
              {
                break;
              }

              v11 = 0;
              v10 = 1;
              if ((v12 & 1) == 0)
              {
                return 0;
              }
            }

            v14 = (*(a1[2] + 9))(*v13, v13[1]);
            v11 = 0;
            *v13 = 0;
            *(v13 + 2) = 0;
            v10 = 1;
          }

          while ((v12 & (v14 >= 0)) != 0);
          if (v14 < 0)
          {
            return v14;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return v5;
  }

  return v3;
}

uint64_t pp_word_parser_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  v5 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (!a1)
  {
    return v5;
  }

  v6 = *(a1 + 88);

  return wordpar_ResourceTypes(v6, a3);
}

uint64_t pp_word_parser_ResourceUnload(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (!a1)
  {
    return v7;
  }

  v8 = *(a1 + 88);

  return wordpar_ResourceUnload(v8, a3, a4);
}

uint64_t pp_word_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2370838529;
  }

  result = 0;
  *a2 = &IPPWordParser;
  return result;
}

uint64_t pp_word_parser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  v5 = 2370838535;
  v16 = 0;
  if (a5 && (InitRsrcFunction(a3, a4, &v18) & 0x80000000) == 0)
  {
    v9 = v18;
    v10 = v18[4];
    if (v10)
    {
      log_OutText(v10, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ObjOpen");
      v9 = v18;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    v11 = heap_Alloc(v9[1], 104);
    if (v11)
    {
      v12 = v11;
      *(v11 + 96) = 0;
      *(v11 + 64) = 0u;
      *(v11 + 80) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 48) = 0u;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *v11 = a3;
      *(v11 + 8) = a4;
      *(v11 + 96) = 0;
      if ((paramc_ParamGetStr(v18[5], "clcpppipelinemode", &v16) & 0x80000000) == 0 && v16 && *v16)
      {
        *(v12 + 96) = 1;
      }

      Object = objc_GetObject(v18[6], "SYNTHSTREAM", &v17);
      if ((Object & 0x80000000) != 0 || (v14 = *(v17 + 8), *(v12 + 16) = v14, Object = wordpar_ObjOpen(a3, a4, v14, (v12 + 88), *(v12 + 96)), (Object & 0x80000000) != 0))
      {
        v5 = Object;
        pp_word_parser_ObjClose(v12, 87327);
      }

      else
      {
        v5 = 0;
        *a5 = v12;
        *(a5 + 8) = 87327;
      }
    }

    else
    {
      return 2370838538;
    }
  }

  return v5;
}

uint64_t pp_word_parser_ObjClose(uint64_t a1, int a2)
{
  v3 = 2370838535;
  v8 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) == 0)
  {
    v4 = *(v8 + 32);
    if (v4)
    {
      log_OutText(v4, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ObjClose");
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      wordpar_ObjClose(v5);
    }

    v6 = v8;
    if (*(a1 + 16))
    {
      objc_ReleaseObject(*(v8 + 48), "SYNTHSTREAM");
      v6 = v8;
    }

    heap_Free(*(v6 + 8), a1);
    return 0;
  }

  return v3;
}

uint64_t pp_word_parser_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2370838535;
  v8 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) == 0)
  {
    v4 = *(v8 + 32);
    if (v4)
    {
      log_OutText(v4, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ObjReopen");
    }

    v5 = *(a1 + 88);
    if (v5 && (v6 = wordpar_ObjReopen(v5), (v6 & 0x80001FFF) == 0x8000000A))
    {
      v3 = v6;
      *(a1 + 88) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t pp_word_parser_ResourceLoad(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  v13 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v15) & 0x80000000) == 0)
  {
    if (a3 && a7)
    {
      if (a4)
      {
        if (a5 || !a6)
        {
          return wordpar_ResourceLoad(*(a1 + 88), a3, a4, a5, a6, a7);
        }
      }

      else if (a5 && a6)
      {
        return wordpar_ResourceLoad(*(a1 + 88), a3, a4, a5, a6, a7);
      }
    }

    log_OutPublic(*(v15 + 32), "PP_WORD_PARSER", 1923, 0);
  }

  return v13;
}

uint64_t pp_word_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = 0;
  v7 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1)
  {
    v26 = 0;
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v27) & 0x80000000) == 0)
    {
      v8 = *(v27 + 32);
      if (v8)
      {
        log_OutText(v8, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ProcessStart");
      }

      WParserType = wordpar_GetWParserType(*(a1 + 88), &v26);
      if ((WParserType & 0x80000000) != 0)
      {
        return WParserType;
      }

      else
      {
        v10 = 0;
        v11 = a1 + 24;
        v12 = 1;
        do
        {
          v13 = v12;
          if (((*(*(a1 + 16) + 64))(a3, a4, 213, szINPUT_STREAMS[v10], 0, 0, v11 + 16 * v10) & 0x80000000) != 0)
          {
            goto LABEL_15;
          }

          v12 = 0;
          v10 = 1;
        }

        while ((v13 & 1) != 0);
        if (((*(*(a1 + 16) + 64))(a3, a4, 213, "text/plain;charset=utf-8", 0, 1, a1 + 56) & 0x80000000) != 0 || (v14 = *(a1 + 16), v15 = *(v14 + 64), v16 = (*(v14 + 152))(), (v15(a3, a4, 213, "application/x-realspeak-markers-pp;version=4.0", v16, 1, a1 + 72) & 0x80000000) != 0))
        {
LABEL_15:
          v17 = 0;
          v18 = 1;
          do
          {
            v19 = v18;
            v20 = (v11 + 16 * v17);
            if (*v20)
            {
              (*(*(a1 + 16) + 72))(*v20, v20[1]);
              *v20 = 0;
              *(v20 + 2) = 0;
            }

            v18 = 0;
            v17 = 1;
          }

          while ((v19 & 1) != 0);
          v21 = 0;
          v22 = 1;
          do
          {
            v23 = v22;
            v24 = (a1 + 56 + 16 * v21);
            if (*v24)
            {
              (*(*(a1 + 16) + 72))(*v24, v24[1]);
              *v24 = 0;
              *(v24 + 2) = 0;
            }

            v22 = 0;
            v21 = 1;
          }

          while ((v23 & 1) != 0);
          return 0;
        }

        WParserType = wordpar_ProcessStart(*(a1 + 88));
        if ((WParserType & 0x80000000) != 0)
        {
          return WParserType;
        }

        return 0;
      }
    }
  }

  return v7;
}

uint64_t pp_word_parser_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2370838535;
  v43 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v43) & 0x80000000) == 0)
  {
    v8 = v43;
    v9 = *(v43 + 32);
    if (v9)
    {
      log_OutText(v9, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_Process");
      v8 = v43;
    }

    *a5 = 1;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v42 = 0;
    v10 = (*(*(a1 + 16) + 88))(*(a1 + 24), *(a1 + 32), &v47, &v46 + 4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v11 = HIDWORD(v46);
    v7 = (*(*(a1 + 16) + 144))(*(a1 + 40), *(a1 + 48), &v46, &v45);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    if (v46)
    {
      if (v46)
      {
        v10 = (*(*(a1 + 16) + 88))(*(a1 + 40), *(a1 + 48), &v42, &v45 + 4);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v16 = HIDWORD(v45);
        v7 = wordpar_LoadFromStreamData(*(a1 + 88), v47, HIDWORD(v46), v42, HIDWORD(v45));
        LODWORD(v12) = 0;
LABEL_19:
        if ((v7 & 0x80000000) != 0)
        {
          return v7;
        }

        v17 = v43;
        v47 = 0;
        if ((v16 & 0x3FFFC0) != 0)
        {
          v41 = v16;
          v7 = 0;
          v18 = (v16 >> 6);
          v19 = (v42 + 40);
          while (1)
          {
            if (*(v19 - 5) == 200)
            {
              v20 = *v19;
              if (*v19 && *v20 && LH_stricmp(v20, "unset"))
              {
                if (LH_stricmp(*v19, "reset"))
                {
                  v21 = *v19;
                }

                else
                {
                  Str = paramc_ParamGetStr(*(v17 + 40), "shortfragmentforceclm_value_pipeline", &v47);
                  if (v47)
                  {
                    v26 = Str < 0;
                  }

                  else
                  {
                    v26 = 1;
                  }

                  if (v26)
                  {
                    v21 = "";
                  }

                  else
                  {
                    v21 = v47;
                  }
                }
              }

              else
              {
                v21 = "";
              }

              v22 = paramc_ParamSetStr(*(v17 + 40), "shortfragmentforceclm", v21);
              v7 = v22;
              if ((v22 & 0x80000000) == 0)
              {
                v23 = "Parameter markup \\!\\%s=%s\\ => set %s=%s";
LABEL_33:
                v24 = *v19;
                if (!*v19)
                {
                  v24 = "";
                }

                log_OutText(*(v17 + 32), "PP_WORD_PARSER", 4, 0, v23, "shortfragmentforceclm", v24, "shortfragmentforceclm", v21);
                goto LABEL_36;
              }

              if ((v22 & 0x1FFF) == 0xF)
              {
                v7 = 0;
                v23 = "Parameter markup \\!\\%s=%s\\ => set %s=%s : failed, invalid parameter value";
                goto LABEL_33;
              }
            }

LABEL_36:
            v19 += 8;
            if (!--v18)
            {
              v16 = v41;
              v11 = v11;
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

LABEL_54:
              if (v12 == 1)
              {
                LODWORD(v7) = 0;
                v27 = 0;
                goto LABEL_56;
              }

              v29 = wordpar_Process(*(a1 + 88));
              if ((v29 & 0x1FFF) == 0xA)
              {
                v7 = v7;
              }

              else
              {
                v7 = v29;
              }

              if ((v7 & 0x80000000) != 0)
              {
                if ((v7 & 0x1FFF) == 0x800)
                {
                  *a5 = 0;
                  if (*(a1 + 96))
                  {
                    return v7;
                  }

                  else
                  {
                    return 0;
                  }
                }

                else if ((v7 & 0x1FFF) == 0x17)
                {
                  v31 = 0;
                  v32 = 1;
                  *a5 = 1;
                  do
                  {
                    while (1)
                    {
                      v33 = v32;
                      v34 = (a1 + 56 + 16 * v31);
                      if (*v34)
                      {
                        break;
                      }

                      v32 = 0;
                      v7 = 0;
                      v31 = 1;
                      if ((v33 & 1) == 0)
                      {
                        return v7;
                      }
                    }

                    v35 = (*(*(a1 + 16) + 72))(*v34, v34[1]);
                    v32 = 0;
                    *v34 = 0;
                    *(v34 + 2) = 0;
                    v31 = 1;
                  }

                  while ((v33 & (v35 >= 0)) != 0);
                  if (v35 < 0)
                  {
                    return v35;
                  }

                  else
                  {
                    return 0;
                  }
                }

                else
                {
                  v36 = 0;
                  v37 = 1;
                  do
                  {
                    while (1)
                    {
                      v38 = v37;
                      v39 = (a1 + 56 + 16 * v36);
                      if (!*v39)
                      {
                        break;
                      }

                      v40 = (*(*(a1 + 16) + 72))(*v39, v39[1]);
                      v37 = 0;
                      *v39 = 0;
                      *(v39 + 2) = 0;
                      v36 = 1;
                      if ((v38 & (v40 >= 0)) == 0)
                      {
                        goto LABEL_89;
                      }
                    }

                    v37 = 0;
                    v36 = 1;
                  }

                  while ((v38 & 1) != 0);
LABEL_89:
                  *a5 = 1;
                }

                return v7;
              }

              v27 = v29;
              if ((v29 & 0x1FFF) == 0xA || (v10 = wordpar_WriteTextAndMarkers(*(a1 + 88), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)), (v10 & 0x80000000) == 0))
              {
                v10 = wordpar_ResetData(*(a1 + 88));
                if ((v10 & 0x80000000) == 0)
                {
                  v10 = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32), v11);
                  if ((v10 & 0x80000000) == 0)
                  {
                    v7 = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48), v16);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

LABEL_56:
                    v28 = *(v43 + 32);
                    if (v28)
                    {
                      log_OutText(v28, "PP_WORD_PARSER", 4, 0, "Leaving pp_word_parser_Process");
                    }

                    if ((v27 & 0x1FFF) == 0xA)
                    {
                      return v27;
                    }

                    else
                    {
                      return v7;
                    }
                  }
                }
              }

              return v10;
            }
          }
        }

LABEL_53:
        LODWORD(v7) = 0;
        goto LABEL_54;
      }

      LODWORD(v12) = 0;
    }

    else
    {
      if (v45)
      {
        v12 = 0;
        v13 = 1;
        do
        {
          v14 = v13;
          v15 = (a1 + 56 + 16 * v12);
          if (*v15)
          {
            v7 = (*(*(a1 + 16) + 72))(*v15, v15[1]);
            *v15 = 0;
            *(v15 + 2) = 0;
          }

          v13 = 0;
          v12 = 1;
        }

        while ((v14 & 1) != 0);
        v16 = 0;
        goto LABEL_19;
      }

      v44 = 0;
      if ((paramc_ParamGetStr(*(v8 + 40), "clcpppipelinemode", &v44) & 0x80000000) != 0 || !v44 || !*v44)
      {
        *a5 = 0;
      }

      LODWORD(v12) = 1;
    }

    v16 = 0;
    goto LABEL_53;
  }

  return v7;
}

uint64_t pp_word_parser_ProcessStop(uint64_t a1, int a2)
{
  v3 = 2370838535;
  v16 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v16) & 0x80000000) == 0)
  {
    v4 = *(v16 + 32);
    if (v4)
    {
      log_OutText(v4, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ProcessStop");
    }

    v5 = wordpar_ProcessEnd(*(a1 + 88));
    if ((v5 & 0x80000000) == 0)
    {
      v6 = 0;
      v7 = 1;
      while (1)
      {
        v8 = v7;
        v9 = (a1 + 56 + 16 * v6);
        if (*v9)
        {
          v5 = (*(*(a1 + 16) + 72))(*v9, v9[1]);
          *v9 = 0;
          *(v9 + 2) = 0;
          if ((v5 & 0x80000000) != 0)
          {
            break;
          }
        }

        v7 = 0;
        v6 = 1;
        if ((v8 & 1) == 0)
        {
          v10 = 0;
          v11 = 1;
          do
          {
            while (1)
            {
              v12 = v11;
              v13 = (a1 + 24 + 16 * v10);
              if (*v13)
              {
                break;
              }

              v11 = 0;
              v10 = 1;
              if ((v12 & 1) == 0)
              {
                return 0;
              }
            }

            v14 = (*(*(a1 + 16) + 72))(*v13, v13[1]);
            v11 = 0;
            *v13 = 0;
            *(v13 + 2) = 0;
            v10 = 1;
          }

          while ((v12 & (v14 >= 0)) != 0);
          if (v14 < 0)
          {
            return v14;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return v5;
  }

  return v3;
}

uint64_t wordpar_freeBRKDefs(uint64_t a1)
{
  if (!*(a1 + 152))
  {
    return 0;
  }

  v5 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v5);
  if ((inited & 0x80000000) != 0)
  {
    return 2370838535;
  }

  v3 = inited;
  heap_Free(*(v5 + 8), *(a1 + 152));
  *(a1 + 152) = 0;
  return v3;
}

uint64_t wordpar_getBRKDefs(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4)
{
  v12 = 0;
  if (*(a1 + 152))
  {
    return 0;
  }

  v4 = 2370838535;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v12) & 0x80000000) == 0)
  {
    *(a1 + 164) = *a4;
    v13 = *(a4 + 1) + 1;
    v10 = heap_Calloc(*(v12 + 8), 1, v13);
    *(a1 + 152) = v10;
    if (v10)
    {
      StringZ = ssftriff_reader_ReadStringZ(a2, a4, a3, *(a4 + 3) + 10, v10, &v13);
      if ((StringZ & 0x80000000) == 0)
      {
        if (*(a1 + 152))
        {
          return StringZ;
        }

        else
        {
          return 2370838535;
        }
      }
    }

    else
    {
      wordpar_freeBRKDefs(a1);
      return 2370838538;
    }
  }

  return v4;
}

uint64_t wordpar_loc_nonasian_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v213 = 0;
  v214 = 0;
  v5 = 2370838528;
  if (!a1)
  {
    return 2370838535;
  }

  v8 = a3;
  v9 = a2;
  v10 = a1;
  v215 = 0;
  inserted = (*(*(a1 + 32) + 136))(a2, a3, &v215);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "start wordpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1020, "start wordpar_WriteTextAndMarkers()");
  v217 = 0;
  v218[0] = 0;
  v216 = 0;
  v12 = strlen((v10 + 180));
  inserted = datac_RequestBlock(*(v10 + 24), 1020, 1u, v218);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v212 = *(v218[0] + 8);
  inserted = datac_RequestBlock(*(v10 + 24), 1021, 1u, &v217);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v13 = *(v217 + 8);
  inserted = datac_RequestBlock(*(v10 + 24), 1012, 1u, &v216);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v189 = a4;
  v190 = a5;
  v14 = v217;
  v15 = *(v217 + 16);
  if (v15 >= 2)
  {
    v16 = 0;
    v197 = v12;
    v188 = -1;
    v17 = 1;
    v18 = 1;
    v211 = v10;
    v191 = v12;
    v192 = v8;
    v195 = v9;
    v19 = v13;
    while (1)
    {
      v20 = v19 + (v17 << 6);
      v21 = *(v20 + 20);
      if (v21 == 21)
      {
        v16 = v17;
        goto LABEL_271;
      }

      if (v21 != 7 || *(v20 + 40) != 43)
      {
        goto LABEL_271;
      }

      v203 = v16;
      v22 = *(v20 + 48);
      if (!v22)
      {
        v16 = v203;
        goto LABEL_271;
      }

      v23 = *(v19 + 32);
      v200 = (v18 + 1);
      LODWORD(v24) = v18 + 1;
      if (v15 > (v18 + 1))
      {
        v24 = (v18 + 1);
        v25 = (v19 + (v24 << 6) + 20);
        while (1)
        {
          v26 = *v25;
          v25 += 16;
          if (v26 == 7)
          {
            break;
          }

          if (v15 == ++v24)
          {
            goto LABEL_19;
          }
        }
      }

      if (v24 == v15)
      {
LABEL_19:
        v202 = *(v19 + 36);
      }

      else
      {
        v202 = *(v19 + (v24 << 6) + 32) - v23;
        v15 = v24;
      }

      v27 = *(v20 + 32) - v23;
      v207 = (*(v20 + 32) - v23);
      v208 = v15;
      v198 = v17;
      v194 = v18;
      v199 = v27;
      if (!*(v20 + 56))
      {
        goto LABEL_64;
      }

      v28 = v202 - v27;
      *(v20 + 48) = 0;
      v29 = (v202 - v27);
      if (v202 == v27)
      {
        goto LABEL_64;
      }

      v30 = v212 + v207;
      v31 = 0;
      while (utf8_BelongsToSet(0, v30, v31, v28))
      {
        if (v29 == ++v31)
        {
          v31 = v28;
          break;
        }
      }

      if (v28 == 1)
      {
LABEL_32:
        LOWORD(v28) = 1;
      }

      else
      {
        v32 = (v28 - 1);
        while (utf8_BelongsToSet(0, v30, v32, v29))
        {
          LOWORD(v28) = v28 - 1;
          if (!--v32)
          {
            goto LABEL_32;
          }
        }
      }

      if (v28 <= v31)
      {
        goto LABEL_64;
      }

      v209 = 0;
      v33 = 95;
      v34 = v31;
      v204 = v19;
      do
      {
        v35 = *(v30 + v34);
        if (v35 == 35 || v35 == 95)
        {
          if (v33 != 35 && v33 != 95)
          {
            ++v209;
          }
        }

        else
        {
          v87 = v35 == 92;
          v36 = v34 + 1;
          v37 = !v87 || v36 >= v28;
          if (!v37 && *(v30 + v36) == 84)
          {
            for (i = v34 + 2; i < v28; i += utf8_determineUTF8CharLength(v39))
            {
              v39 = *(v30 + i);
              if (v39 == 92)
              {
                break;
              }
            }

            if (*(v30 + i) == 92)
            {
              v34 = i;
            }

            v19 = v204;
          }
        }

        if (!utf8_BelongsToSet(0, v30, v34, v29))
        {
          v33 = *(v30 + v34);
        }

        ++v34;
      }

      while (v34 < v28);
      v10 = v211;
      if (v33 == 35)
      {
        v40 = v212;
      }

      else
      {
        v40 = v212;
        if (v33 != 95)
        {
          ++v209;
        }
      }

      if (v209)
      {
        v41 = v28 - v31;
        v42 = v216;
        v43 = *(v216 + 16);
        v44 = v41 + v43 + 1;
        if (*(v216 + 18) < v44)
        {
          inserted = datac_RequestBlock(*(v211 + 24), 1012, (v41 + v43 + 1), &v216);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v42 = v216;
          v43 = *(v216 + 16);
        }

        strncpy((*(v42 + 8) + *(v42 + 2) * v43), (v40 + (v31 + v199)), v41)[v41] = 0;
        *(v20 + 20) = 34;
        *(v20 + 40) = *(v216 + 16);
        *(v216 + 16) = v44;
        v45 = v209;
      }

      else
      {
LABEL_64:
        v45 = 0;
      }

      v46 = strlen(v22);
      LOWORD(v47) = v46;
      v48 = v46;
      if (v46)
      {
        v49 = v19;
        v50 = 0;
        v51 = v46;
        while (utf8_BelongsToSet(1u, v22, v50, v48) == 1)
        {
          if (v51 == ++v50)
          {
            LOWORD(v50) = v47;
            v19 = v49;
LABEL_73:
            LOWORD(v47) = v47 - v50;
            v22[v47] = 0;
            goto LABEL_74;
          }
        }

        if (v50)
        {
          v19 = v49;
          if (!utf8_BelongsToSet(1u, v22, v50, v48))
          {
            memmove(v22, &v22[v50], v47 - v50);
          }

          goto LABEL_73;
        }

        v19 = v49;
      }

LABEL_74:
      v52 = v197;
      v53 = v47;
      v210 = v45;
      if (v47)
      {
        if (v47 != 1)
        {
          v54 = v19;
          v55 = (v47 - 1);
          v56 = v47 - 1;
          while (utf8_BelongsToSet(1u, v22, v55, v47) == 1)
          {
            v55 = --v56;
            if (!v56)
            {
              goto LABEL_82;
            }
          }

          if (v47 - 1 == v55)
          {
LABEL_82:
            v52 = v197;
            goto LABEL_83;
          }

          v126 = utf8_BelongsToSet(1u, v22, v55, v47);
          v52 = v197;
          if (!v126)
          {
            v22[v56 + 1] = 0;
            LOWORD(v47) = strlen(v22);
          }

LABEL_83:
          if (!v47)
          {
            v47 = 0;
            v53 = 0;
            v57 = 0;
            v19 = v54;
            v45 = v210;
            goto LABEL_98;
          }

          v53 = v47;
          v19 = v54;
          v45 = v210;
        }

        v58 = 0;
        LOWORD(v59) = 0;
        v57 = *v22 != 0;
        do
        {
          if (!v22[v59])
          {
            break;
          }

          v60 = utf8_BelongsToSet(1u, v22, v58, v53);
          if (v59 < v47 && v60 == 1)
          {
            v59 = v59;
            while (utf8_BelongsToSet(1u, v22, v59, v53) == 1)
            {
              if (v53 == ++v59)
              {
                LOWORD(v59) = v47;
                goto LABEL_95;
              }
            }

            if (v22[v59])
            {
              ++v57;
            }
          }

LABEL_95:
          LOWORD(v59) = v59 + 1;
          v58 = v59;
        }

        while (v59 < v47);
        v47 = v47;
        v52 = v197;
      }

      else
      {
        v47 = 0;
        v57 = 0;
      }

LABEL_98:
      v61 = 0;
      __n = v47;
      if (v45 && *(v20 + 56) && v45 != v57)
      {
        if (v45 > v57)
        {
          v201 = 0;
          v61 = ((v45 - v57) * v191);
          v62 = (v45 - v57);
        }

        else
        {
          v63 = *(v10 + 24);
          v64 = *(v217 + 16) + 1;
          *(v217 + 16) = v64;
          inserted = datac_RequestBlock(v63, 1021, v64, &v217);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v65 = *(v217 + 8);
          v66 = (v65 + (v200 << 6));
          memmove(v66 + 16, v66, (*(v217 + 16) - v194) << 6);
          v67 = v216;
          v68 = *(v216 + 16);
          v69 = v68 + strlen(v22) + 1;
          if (*(v216 + 18) < v69)
          {
            inserted = datac_RequestBlock(*(v211 + 24), 1012, v69, &v216);
            if ((inserted & 0x80000000) != 0)
            {
              return inserted;
            }

            v67 = v216;
            v68 = *(v216 + 16);
          }

          v201 = v57 - v210;
          ++v208;
          strcpy((*(v67 + 8) + *(v67 + 2) * v68), v22);
          v66[10] = *(v216 + 16);
          *(v216 + 16) = v69;
          v19 = v65;
          v70 = v65 + (v17 << 6);
          v71 = *(v70 + 24);
          v66[5] = 100;
          v66[6] = v71;
          v66[8] = *(v70 + 32) + 1;
          *v66 = 1;
          v72 = strlen(v22);
          v61 = 0;
          v62 = 0;
          v66[7] = v72;
          v10 = v211;
          v52 = v197;
        }
      }

      else
      {
        v62 = 0;
        v201 = 0;
      }

      v205 = v19;
      v73 = v61 + v53;
      v74 = v61 + v53 - (v202 - v207);
      v193 = v61 + v53;
      if ((v61 + v53) <= v202 - v207)
      {
        v78 = v202 - v207 - v73;
        v74 = v73 - (v202 - v207);
        v75 = v212;
        memmove((v212 + v202 - v78), (v212 + v202), *(v218[0] + 16) - v202);
        v76 = v218[0];
        v77 = *(v218[0] + 16) - v78;
      }

      else
      {
        inserted = datac_RequestBlock(*(v10 + 24), 1020, (*(v218[0] + 16) + v74), v218);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        v75 = *(v218[0] + 8);
        memmove(&v75[v202 + v74], &v75[v202], *(v218[0] + 16) - v202);
        v76 = v218[0];
        v77 = *(v218[0] + 16) + v74;
      }

      *(v76 + 16) = v77;
      strncpy(&v75[v207], v22, __n);
      v212 = v75;
      v79 = strlen(v75);
      if (v62)
      {
        v80 = v62;
        v81 = (v212 + v53 + v207);
        do
        {
          v81 = &strncpy(v81, (v10 + 180), v52)[v52];
          --v80;
        }

        while (v80);
      }

      heap_Free(*(*(v10 + 16) + 8), v22);
      if (v201)
      {
        PreviousUtf8Offset = v53 + v199 + v62 * v191;
        v9 = v195;
        v16 = v203;
        while (--PreviousUtf8Offset)
        {
          if (*(v218[0] + 16) <= PreviousUtf8Offset || utf8_BelongsToSet(1u, v212, PreviousUtf8Offset, v79) != 1)
          {
            while (1)
            {
              v83 = *(v218[0] + 16);
              if (PreviousUtf8Offset >= v83)
              {
                break;
              }

              if (utf8_BelongsToSet(1u, v212, PreviousUtf8Offset, v79))
              {
                v83 = *(v218[0] + 16);
                break;
              }

              PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v212, PreviousUtf8Offset);
              if (!PreviousUtf8Offset)
              {
                goto LABEL_144;
              }
            }

            v85 = v212;
            if (v83 > PreviousUtf8Offset)
            {
              do
              {
                while (*(v218[0] + 16) > PreviousUtf8Offset && utf8_BelongsToSet(1u, v85, PreviousUtf8Offset, v79) == 1)
                {
                  *(v85 + PreviousUtf8Offset--) = 45;
                  if (!PreviousUtf8Offset)
                  {
                    goto LABEL_144;
                  }
                }

                --v201;
                while (1)
                {
                  v86 = *(v218[0] + 16);
                  if (PreviousUtf8Offset >= v86)
                  {
                    break;
                  }

                  if (utf8_BelongsToSet(1u, v212, PreviousUtf8Offset, v79))
                  {
                    v86 = *(v218[0] + 16);
                    break;
                  }

                  PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v212, PreviousUtf8Offset);
                  if (!PreviousUtf8Offset)
                  {
                    goto LABEL_144;
                  }
                }

                v87 = v86 <= PreviousUtf8Offset || v201 == 0;
                v85 = v212;
              }

              while (!v87);
            }

            break;
          }
        }

LABEL_144:
        v84 = *(v217 + 16);
        if (v84 >= 2)
        {
          v88 = *(v205 + 32);
          v89 = v88 + v207;
          v90 = v88 + v202;
          v91 = v84 - 1;
          v92 = (v205 + 96);
          v93 = v200;
          do
          {
            if (*v92 > v89 && *v92 < v90)
            {
              *v92 = v89;
            }

            v92 += 16;
            --v91;
          }

          while (v91);
          goto LABEL_154;
        }
      }

      else
      {
        v84 = *(v217 + 16);
        v9 = v195;
        v16 = v203;
      }

      v93 = v200;
LABEL_154:
      *(v205 + 36) = *(v218[0] + 16);
      wordpar_loc_adjustMarkerPositions(v84, v205, v93, v199, v202, v74);
      v95 = v17;
      v96 = (v205 + (v17 << 6));
      if (v210 && v96[14])
      {
        v19 = v205;
        v97 = v193 + v207 + *(v205 + 32);
        v14 = v217;
        v98 = *(v217 + 16);
        v99 = v208;
        if (v98 < 2)
        {
LABEL_165:
          inserted = datac_RequestBlock(*(v10 + 24), 1021, (v98 + 1), &v217);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v19 = *(v217 + 8);
          v104 = *(v217 + 16);
          v99 = v208;
          v105 = v208;
          v106 = v19 + (v208 << 6);
          if (v104 == v208)
          {
            v107 = *(v106 - 48);
            *v106 = *(v106 - 64);
            *(v106 + 16) = v107;
            v108 = *(v106 - 16);
            *(v106 + 32) = *(v106 - 32);
            *(v106 + 48) = v108;
            *(v106 + 24) += *(v106 + 28);
          }

          else
          {
            memmove((v106 + 64), (v19 + (v208 << 6)), (v104 - v208) << 6);
            v99 = v208;
            v112 = *(v106 + 80);
            *v106 = *(v106 + 64);
            *(v106 + 16) = v112;
            v113 = *(v106 + 112);
            *(v106 + 32) = *(v106 + 96);
            *(v106 + 48) = v113;
          }

          v95 = v198;
          *(v106 + 20) = 21;
          *(v106 + 32) = v97;
          *(v106 + 36) = 0;
          *(v106 + 28) = 0;
          if (*(v106 + 48))
          {
            *(v106 + 48) = 0;
          }

          if (v16)
          {
            v114 = *(v19 + (v16 << 6) + 40);
          }

          else
          {
            v114 = v188;
            if (v188 == -1)
            {
              v115 = v19;
              v116 = *(v216 + 8);
              LOWORD(v19) = *(v216 + 16);
              if (v116 && *(v216 + 16))
              {
                v114 = 0;
                while (1)
                {
                  v117 = strlen(v116);
                  MarkerArgStr = marker_getMarkerArgStr(1u);
                  if (!strcmp(v116, MarkerArgStr))
                  {
                    break;
                  }

                  v119 = (v117 + 1);
                  v114 += v119;
                  v116 += v119;
                  LODWORD(v19) = *(v216 + 16);
                  if (v114 >= v19)
                  {
                    goto LABEL_186;
                  }
                }

                v188 = v114;
                v19 = v115;
              }

              else
              {
LABEL_186:
                v120 = marker_getMarkerArgStr(1u);
                v121 = v19 + strlen(v120) + 1;
                v122 = v216;
                v19 = v115;
                if (*(v216 + 18) < v121)
                {
                  inserted = datac_RequestBlock(*(v10 + 24), 1012, v121, &v216);
                  if ((inserted & 0x80000000) != 0)
                  {
                    return inserted;
                  }

                  v122 = v216;
                }

                v123 = (*(v122 + 8) + *(v122 + 2) * *(v122 + 16));
                v124 = marker_getMarkerArgStr(1u);
                strcpy(v123, v124);
                v125 = marker_getMarkerArgStr(1u);
                v123[strlen(v125)] = 0;
                v114 = *(v216 + 16);
                *(v216 + 16) = v121;
                v188 = v114;
              }

              v99 = v208;
              v95 = v198;
            }
          }

          *(v106 + 40) = v114;
          v14 = v217;
          ++*(v217 + 16);
        }

        else
        {
          v100 = (v205 + 84);
          v101 = 2;
          while (1)
          {
            v102 = v100[3];
            if (v102 == v97 && *v100 == 21)
            {
              break;
            }

            v100 += 16;
            if (v102 > v97 || v101++ >= v98)
            {
              goto LABEL_165;
            }
          }

          v105 = v208;
        }

        v132 = v19 + (v105 << 6);
        v133 = (v19 + 96);
        v134 = 1;
        v135 = v19 + (v95 << 6);
        while (2)
        {
          v136 = v134;
          v137 = *(v19 + 32);
          if (v136)
          {
            v138 = *(v135 + 32);
            v139 = v138 - v137;
            v140 = (v138 - v137);
            if (v140 && *(v212 + (v140 - 1)) != 32)
            {
              v141 = *(v14 + 16) + 1;
              LOWORD(v142) = *(v218[0] + 16);
              goto LABEL_219;
            }
          }

          else
          {
            v138 = *(v132 + 32);
            v139 = v138 - v137;
            v143 = (v138 - v137);
            if (v138 == v137 || (v142 = *(v218[0] + 16), v143 >= v142) || *(v212 + v143) == 32 || *(v212 + (v143 - 1)) == 32)
            {
LABEL_237:
              if (*(v135 + 20) == 34)
              {
                v153 = *(v14 + 16);
                v9 = v195;
                v16 = v203;
                if (v153 <= v99 || *(v132 + 20) != 21)
                {
                  goto LABEL_268;
                }

                if (v153 < 2)
                {
                  v155 = 1;
                }

                else
                {
                  v154 = 1;
                  while (*(v133 - 3) != 1 || *v133 != *(v135 + 32))
                  {
                    ++v154;
                    v133 += 16;
                    if (v153 == v154)
                    {
                      v155 = *(v14 + 16);
                      goto LABEL_249;
                    }
                  }

                  v155 = v154;
                }

                v156 = (v19 + (v155 << 6));
                if (v156[5] != 1)
                {
                  goto LABEL_268;
                }

                v157 = v156[8];
                if (v157 != *(v135 + 32))
                {
                  goto LABEL_268;
                }

LABEL_249:
                v158 = *(v19 + 36);
                v159 = (v157 - *(v19 + 32));
                if (v159 >= v158)
                {
                  v162 = 0;
                }

                else
                {
                  v206 = v19;
                  v160 = 0;
                  do
                  {
                    if (utf8_BelongsToSet(0, v212, v159, v79))
                    {
                      break;
                    }

                    v161 = utf8_determineUTF8CharLength(*(v212 + v159));
                    v160 += v161;
                    v159 = (v161 + v159);
                  }

                  while (v159 < v158);
                  v14 = v217;
                  LODWORD(v153) = *(v217 + 16);
                  v162 = v160;
                  v19 = v206;
                  v99 = v208;
                }

                v156[9] = v162;
                v163 = v155 + 1;
                v16 = v203;
                if (v153 > (v155 + 1))
                {
                  v5 = 2370838528;
                  do
                  {
                    v164 = (v19 + (v163 << 6));
                    if (v164[5] == 1 && (v165 = v164[8], v165 >= *(v135 + 32)) && v165 < *(v19 + (v99 << 6) + 32))
                    {
                      v166 = v163 + 1;
                      if (v166 != v153)
                      {
                        v167 = v99;
                        memmove(v164, (v19 + (v166 << 6)), (v153 - v163) << 6);
                        v99 = v167;
                        v14 = v217;
                      }

                      --*(v14 + 16);
                      --v99;
                    }

                    else
                    {
                      v155 = v163;
                    }

                    v163 = v155 + 1;
                    LODWORD(v153) = *(v14 + 16);
                  }

                  while (v153 > (v155 + 1));
                  LODWORD(v17) = v99;
                }

                else
                {
LABEL_268:
                  LODWORD(v17) = v99;
                  v5 = 2370838528;
                }

                v8 = v192;
              }

              else
              {
                LODWORD(v17) = v99;
                v5 = 2370838528;
                v8 = v192;
                v9 = v195;
                v16 = v203;
              }

              goto LABEL_270;
            }

            v141 = v99;
LABEL_219:
            inserted = datac_RequestBlock(*(v211 + 24), 1020, (v142 + 1), v218);
            if ((inserted & 0x80000000) != 0)
            {
              return inserted;
            }

            v212 = *(v218[0] + 8);
            v144 = (v212 + v139);
            memmove(v144 + 1, v144, *(v218[0] + 16) - v139);
            *v144 = 32;
            v14 = v217;
            ++*(v218[0] + 16);
            v145 = *(v14 + 16);
            if (v145 >= 2)
            {
              v146 = v145 - 1;
              v147 = v141 - 1;
              v148 = (v19 + 96);
              v149 = 1;
              do
              {
                if (v136)
                {
                  v150 = *v148;
                  if (*v148 < v138)
                  {
                    goto LABEL_234;
                  }

                  v151 = v150 == v138 && *(v148 - 3) == 21;
                  v152 = v148;
                  if (v151)
                  {
                    goto LABEL_234;
                  }
                }

                else
                {
                  if (!v147)
                  {
                    goto LABEL_234;
                  }

                  v150 = *v148;
                  if (*v148 < v138)
                  {
                    goto LABEL_234;
                  }

                  v152 = (v19 + (v149 << 6) + 32);
                }

                *v152 = v150 + 1;
LABEL_234:
                ++v149;
                v148 += 16;
                --v147;
                --v146;
              }

              while (v146);
            }

            ++*(v19 + 36);
            v10 = v211;
            v99 = v208;
          }

          v134 = 0;
          if ((v136 & 1) == 0)
          {
            goto LABEL_237;
          }

          continue;
        }
      }

      v14 = v217;
      v109 = *(v217 + 16);
      v8 = v192;
      if (v109 < 2)
      {
        v5 = 2370838528;
        v19 = v205;
      }

      else
      {
        v19 = v205;
        v110 = (v205 + 100);
        v111 = v109 - 1;
        while (*(v110 - 4) != 1 || *(v110 - 1) != v96[8])
        {
          v110 += 16;
          if (!--v111)
          {
            goto LABEL_199;
          }
        }

        if (*(v110 - 4) != 1)
        {
LABEL_199:
          v5 = 2370838528;
          goto LABEL_200;
        }

        v127 = *(v205 + 36);
        v128 = (*(v110 - 2) - *(v205 + 32));
        if (v128 >= v127)
        {
          v131 = 0;
        }

        else
        {
          v129 = 0;
          do
          {
            if (utf8_BelongsToSet(0, v212, v128, v79))
            {
              break;
            }

            v130 = utf8_determineUTF8CharLength(*(v212 + v128));
            v129 += v130;
            v128 = (v130 + v128);
          }

          while (v128 < v127);
          v14 = v217;
          LODWORD(v109) = *(v217 + 16);
          v131 = v129;
          v19 = v205;
          v93 = v200;
        }

        *v110 = v131;
        v5 = 2370838528;
        v8 = v192;
        v16 = v203;
      }

LABEL_200:
      if (v93 != v109)
      {
        memmove(v96, (v19 + (v93 << 6)), (v109 - v194) << 6);
        v14 = v217;
        LOWORD(v109) = *(v217 + 16);
      }

      *(v14 + 16) = v109 - 1;
LABEL_270:
      LODWORD(v17) = v17 - 1;
LABEL_271:
      v17 = (v17 + 1);
      v18 = v17;
      v15 = *(v14 + 16);
      if (v17 >= v15)
      {
        goto LABEL_275;
      }
    }
  }

  v19 = v13;
LABEL_275:
  if (v15)
  {
    v168 = 0;
    v169 = (v19 + 48);
    do
    {
      if (*v169)
      {
        heap_Free(*(*(v10 + 16) + 8), *v169);
        *v169 = 0;
        v14 = v217;
      }

      ++v168;
      v169 += 8;
    }

    while (v168 < *(v14 + 16));
  }

  marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "after wordpar_loc_nonasian_HandleExtendedToi()", 0, 0, 0);
  marker_TraceTxt(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1020, "after wordpar_loc_nonasian_HandleExtendedToi()");
  inserted = datac_RequestBlock(*(v10 + 24), 1020, 1u, &v214);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  if (*(v214 + 16))
  {
    inserted = (*(*(v10 + 32) + 104))(v9, v8, *(v214 + 8), *(v214 + 2) * *(v214 + 16));
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

    if (log_HasTraceTuningDataSubscriber(*(*(v10 + 16) + 32)))
    {
      log_OutTraceTuningDataBinary(*(*(v10 + 16) + 32), 34, "", "text/plain;charset=utf-8", *(v214 + 8), *(v214 + 2) * *(v214 + 16));
    }

    *(v214 + 16) = 0;
    v170 = 1;
  }

  else
  {
    if (log_HasTraceTuningDataSubscriber(*(*(v10 + 16) + 32)))
    {
      log_OutTraceTuningDataBinary(*(*(v10 + 16) + 32), 34, "", "text/plain;charset=utf-8", 0, 0);
    }

    v170 = 0;
  }

  if ((datac_RequestBlock(*(v10 + 24), 1012, 1u, &v214) & 0x80000000) != 0)
  {
    v171 = 0;
  }

  else
  {
    v171 = *(v214 + 8);
  }

  inserted = datac_RequestBlock(*(v10 + 24), 1021, 1u, &v213);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v172 = v213;
  v173 = *(v213 + 16);
  if (*(v213 + 16))
  {
    v174 = *(v213 + 8);
    if (*(v174 + 20) == 0x4000)
    {
      v175 = (v174 + 32);
      v215 = *(v174 + 32) - v215;
      v176 = v173;
      do
      {
        *v175 -= v215;
        v175 += 16;
        --v176;
      }

      while (v176);
      if (v171)
      {
        v177 = 0;
        v178 = (v174 + 40);
        do
        {
          if (marker_hasNonConstCharPtrArg(*(v178 - 5)))
          {
            v179 = *v178;
            if (v179 == -1)
            {
              v180 = 0;
            }

            else
            {
              v180 = v171 + v179;
            }

            *v178 = v180;
          }

          ++v177;
          v172 = v213;
          v173 = *(v213 + 16);
          v178 += 8;
        }

        while (v177 < v173);
      }

      if (v173 >= 3)
      {
        v181 = 1;
        do
        {
          v182 = (v174 + (v181 << 6));
          if (v182[5] == 1)
          {
            v183 = v182[7];
            v184 = v182[9];
            if (v183 != v184 && (v182[8] + v184) > v182[24] && !v182[25])
            {
              log_OutText(*(*(v10 + 16) + 32), "PP_WORD_PARSER", 1, 0, "SEVERE: found control sequence embedded in a word (word marker pos %d, length %d; escape marker pos %d)", v182[6], v183, v182[22]);
              v172 = v213;
            }
          }

          ++v181;
        }

        while (*(v172 + 16) - 1 > v181);
      }

      marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "before wordpar_loc_MarkerPostProcessing()", 1, 0, 0);
      inserted = wordpar_loc_MarkerPostProcessing(*(v10 + 24), v213);
      if ((inserted & 0x80000000) == 0)
      {
        marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "before wordpar_loc_InsertNLUMarkers()", 1, 0, 0);
        inserted = wordpar_loc_InsertNLUMarkers(v10, v213);
        if ((inserted & 0x80000000) == 0)
        {
          v185 = *(v213 + 8);
          marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "at end()", 1, 0, 0);
          v186 = wordpar_loc_writeMarkersToOutputStream(v10, v189, v190, v185, v213, v170);
          return v186 & (v186 >> 31);
        }
      }

      return inserted;
    }
  }

  return v5;
}

uint64_t wordpar_loc_MarkerPostProcessing(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  LODWORD(v2) = *(a2 + 16);
  if (v2 <= 1)
  {
    result = 0;
    *(a2 + 16) = 1;
    return result;
  }

  v4 = *(a2 + 8);
  v5 = 1;
  v6 = 2;
  v7 = 148;
  LOWORD(v8) = 1;
  do
  {
    v9 = v2;
    v10 = v6;
    if (v2 > v6)
    {
      v10 = v2;
    }

    v11 = v7;
    v12 = v5;
    while (++v12 < v2)
    {
      v13 = *(v4 + v11);
      v11 += 64;
      if (v13 != 999)
      {
        v10 = v12;
        break;
      }
    }

    v14 = (v4 + (v5 << 6));
    v15 = *(v14 + 8);
    v16 = *(v14 + 5);
    if (v15 != *(v4 + 32))
    {
      goto LABEL_21;
    }

    if (v16 == 21)
    {
      if (v12 >= v2)
      {
        goto LABEL_22;
      }

      v17 = v4 + (v10 << 6);
      if (*(v17 + 32) != v15 || *(v17 + 20) != 21)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v12 < v2 && v16 == 7)
    {
      v18 = v4 + (v10 << 6);
      if (*(v18 + 32) != v15 || *(v18 + 20) != 7)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_21:
      if (v16 && v16 != 999)
      {
LABEL_22:
        v19 = v8;
        LOWORD(v8) = v8 + 1;
        v2 = (v4 + (v19 << 6));
        v20 = *v14;
        v21 = v14[1];
        v22 = v14[3];
        v2[2] = v14[2];
        v2[3] = v22;
        *v2 = v20;
        v2[1] = v21;
        v9 = *(a2 + 16);
        LOWORD(v2) = *(a2 + 16);
      }
    }

LABEL_23:
    ++v5;
    ++v6;
    v7 += 64;
  }

  while (v5 < v9);
  *(a2 + 16) = v8;
  if (v8 >= 2u)
  {
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v26 = 1;
    do
    {
      v27 = v4 + v23;
      v28 = *(v4 + v23 + 84);
      if (v28 != 36 && v28 != 7)
      {
        goto LABEL_45;
      }

      v30 = *(v27 + 96);
      v31 = *(v4 + 36) + *(v4 + 32);
      if (*(v27 + 100) + v30 > v31)
      {
        v32 = v31 >= v30;
        v33 = v31 - v30;
        if (!v32)
        {
          v33 = 0;
          *(v27 + 96) = v31;
        }

        *(v27 + 100) = v33;
      }

      if (v28 == 7)
      {
        v34 = *(v4 + v23 + 104);
        v35 = !v24 && v34 == 43;
        if (v34 == 43 || !v24)
        {
          v24 = v35;
        }

        else if (v34 == 15)
        {
          v24 = 0;
        }

        else
        {
          result = datac_RequestBlock(a1, 1021, (v8 + 1), &v41);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v4 = *(v41 + 8);
          v38 = v4 + v23;
          memmove((v4 + v23 + 128), (v4 + v23 + 64), (v25 + *(v41 + 16)) << 6);
          v24 = 0;
          v39 = *(v4 + v23 + 144);
          *(v38 + 64) = *(v38 + 128);
          *(v38 + 80) = v39;
          v40 = *(v4 + v23 + 176);
          *(v38 + 96) = *(v38 + 160);
          *(v38 + 112) = v40;
          *(v38 + 104) = 15;
          a2 = v41;
          ++*(v41 + 16);
        }
      }

      else
      {
LABEL_45:
        v24 = v24;
      }

      ++v26;
      v8 = *(a2 + 16);
      v23 += 64;
      --v25;
    }

    while (v26 < v8);
  }

  return 0;
}

uint64_t wordpar_loc_InsertNLUMarkers(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43 = 0;
  v44 = a2;
  v3 = *(a1 + 24);
  v4 = *(a2 + 8);
  result = datac_RequestBlock(v3, 1013, 1u, &v43);
  if ((result & 0x80000000) == 0)
  {
    v6 = *(v2 + 16);
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = 1;
      v9 = 1;
      do
      {
        v10 = *(v4 + (v9 << 6) + 20);
        if (v10 > 55)
        {
          if (v10 == 56)
          {
            v12 = "E_";
            if (v7)
            {
              goto LABEL_26;
            }

            v7 = 0;
            goto LABEL_43;
          }

          if (v10 != 57)
          {
LABEL_7:
            v11 = v10 != 54 || v7 == 0;
            v12 = "BND:";
            if (!v11)
            {
LABEL_26:
              LOWORD(v14) = v8 + 1;
              LOWORD(v20) = v7;
LABEL_36:
              result = datac_RequestBlock(v3, 1021, (*(v2 + 16) + 1), &v44);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v25 = v20;
              v4 = *(v44 + 8);
              v26 = (v4 + (v20 << 6));
              memmove(v26 + 4, v26, (*(v44 + 16) - v20) << 6);
              v27 = (v4 + (v14 << 6));
              if (v25 > v14)
              {
                v28 = *v27;
                v29 = v27[1];
                v30 = v27[3];
                v26[2] = v27[2];
                v26[3] = v30;
                *v26 = v28;
                v26[1] = v29;
              }

              *v26 = 1;
              *(v26 + 5) = 51;
              v31 = v43;
              v32 = *(v43 + 16);
              v34 = *(v27 + 5);
              v33 = v27 + 5;
              v35 = strlen(v34);
              v36 = v32 + strlen(v12) + v35 + 1;
              if (*(v43 + 18) < v36)
              {
                result = datac_RequestBlock(*(a1 + 24), 1013, v36, &v43);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v31 = v43;
                v32 = *(v43 + 16);
              }

              v37 = strcpy((*(v31 + 8) + *(v31 + 2) * v32), v12);
              strcat(v37, *v33);
              *(v26 + 10) = *(v43 + 16);
              v2 = v44;
              *(v43 + 16) = v36;
              ++*(v2 + 16);
              ++v8;
              goto LABEL_43;
            }

            goto LABEL_43;
          }
        }

        else
        {
          if (v10 == 1)
          {
            v7 = v8;
            goto LABEL_43;
          }

          if (v10 != 55)
          {
            goto LABEL_7;
          }
        }

        if (v10 != 57 || v7 == 0)
        {
          v14 = v8;
        }

        else
        {
          result = datac_RequestBlock(v3, 1021, (v6 + 1), &v44);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v4 = *(v44 + 8);
          v15 = (v4 + (v7 << 6));
          memmove(v15 + 16, v15, (*(v44 + 16) - v7) << 6);
          *v15 = 1;
          v15[5] = 51;
          v16 = v4 + (v9 << 6);
          v17 = *(v16 + 104);
          v18 = strchr(v17, 58);
          if (v18)
          {
            v19 = v18 - v17;
          }

          else
          {
            v19 = strlen(v17);
          }

          v21 = v43;
          v22 = *(v43 + 16);
          v23 = v19 + v22 + 3;
          if (*(v43 + 18) < v23)
          {
            result = datac_RequestBlock(*(a1 + 24), 1013, (v19 + v22 + 3), &v43);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v21 = v43;
            v22 = *(v43 + 16);
          }

          v24 = (*(v21 + 8) + *(v21 + 2) * v22);
          strcpy(v24, "R_");
          strncat(v24, *(v16 + 104), v19);
          v15[10] = *(v43 + 16);
          v2 = v44;
          *(v43 + 16) = v23;
          ++*(v2 + 16);
          v14 = v8 + 1;
        }

        v20 = v14 + 1;
        if ((v20 & 0x10000) == 0)
        {
          v12 = "S_";
          v8 = v14;
          goto LABEL_36;
        }

        v8 = 0xFFFF;
LABEL_43:
        v9 = ++v8;
        v6 = *(v2 + 16);
      }

      while (v6 > v8);
    }

    if (v6)
    {
      v38 = 0;
      v39 = (v4 + 40);
      do
      {
        if (*(v39 - 5) == 51 && *(v39 - 10))
        {
          v40 = *v39;
          if (v40 == -1)
          {
            v41 = 0;
          }

          else
          {
            v41 = *(v43 + 8) + v40;
          }

          *v39 = v41;
          v2 = v44;
        }

        ++v38;
        v39 += 8;
      }

      while (v38 < *(v2 + 16));
    }

    return 0;
  }

  return result;
}

uint64_t wordpar_loc_writeMarkersToOutputStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(a5 + 16);
  if (!a6 && v11 == 1)
  {
    if (*(a4 + 20) == 0x4000)
    {
      return 0;
    }

    v11 = 1;
  }

  v13 = heap_Calloc(*(*(a1 + 16) + 8), 1, (32 * v11) | 1);
  if (!v13)
  {
    return 2370838538;
  }

  v14 = v13;
  if (*(a5 + 16))
  {
    v15 = 0;
    v16 = (a4 + 40);
    v17 = (v13 + 24);
    do
    {
      *(v17 - 3) = *(v16 - 20);
      *(v17 - 2) = *(v16 - 1);
      v18 = *v16;
      v16 += 8;
      *v17 = v18;
      v17 += 4;
      ++v15;
      v19 = *(a5 + 16);
    }

    while (v15 < v19);
  }

  else
  {
    LOWORD(v19) = 0;
  }

  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "at end()", 1, a4, v19);
  v12 = (*(*(a1 + 32) + 104))(a2, a3, v14, 32 * *(a5 + 16));
  if ((v12 & 0x80000000) == 0 && log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
  {
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 34, "", "application/x-realspeak-markers-pp;version=4.0", v14, 32 * *(a5 + 16));
  }

  heap_Free(*(*(a1 + 16) + 8), v14);
  return v12;
}

uint64_t wordpar_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v22 = 0;
  v23 = 0;
  v5 = 2370838535;
  if (a4 && (InitRsrcFunction(a1, a2, &v23) & 0x80000000) == 0)
  {
    *a4 = 0;
    v11 = heap_Alloc(*(v23 + 8), 200);
    if (!v11)
    {
      return 2370838538;
    }

    v12 = v11;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 192) = 0;
    *(v11 + 160) = 0u;
    *(v11 + 176) = 0u;
    *(v11 + 128) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *v11 = a1;
    *(v11 + 8) = a2;
    v13 = v23;
    *(v11 + 16) = v23;
    *(v11 + 32) = a3;
    *(v11 + 164) = 0;
    *(v11 + 72) = 0;
    v14 = (v11 + 72);
    *(v11 + 152) = 0;
    *(v11 + 176) = 30;
    if ((paramc_ParamGetUInt(*(v13 + 40), "ppmaxpcreframeblocks", &v22 + 1) & 0x80000000) == 0)
    {
      *(v12 + 176) = WORD2(v22);
    }

    *(v12 + 178) = 50;
    if ((paramc_ParamGetUInt(*(v23 + 40), "ppnumframesinblock", &v22 + 1) & 0x80000000) == 0)
    {
      *(v12 + 178) = WORD2(v22);
    }

    *(v12 + 128) = 0;
    *(v12 + 80) = 0;
    *(v12 + 88) = 0;
    *(v12 + 96) = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 136) = safeh_GetNullHandle();
    *(v12 + 144) = v15;
    v16 = extdata_ObjOpen(a1, a2, v14, 213);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    v16 = nuance_pcre_ObjOpen(a1, a2, v12 + 56);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v16 = nuance_pcre_Init(*(v12 + 56), *(v12 + 64), *(v12 + 176), *(v12 + 178));
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v17 = wordpar_loc_OpenParts(v12, &v22);
    if ((v17 & 0x80000000) != 0)
    {
      v5 = v17;
      if (v22)
      {
        return v5;
      }

      goto LABEL_18;
    }

    *(v12 + 172) = a5;
    v16 = datac_ObjOpen(a1, a2, (v12 + 24), 213);
    if ((v16 & 0x80000000) != 0)
    {
LABEL_17:
      v5 = v16;
    }

    else
    {
      v18 = &word_1C37BEBF2;
      v19 = 5;
      while (1)
      {
        datac_RegisterBlock(*(v12 + 24), *(v18 - 2), *(v18 - 1), *v18);
        v5 = v20;
        if ((v20 & 0x80000000) != 0)
        {
          break;
        }

        v18 += 3;
        if (!--v19)
        {
          *a4 = v12;
          return v5;
        }
      }
    }

LABEL_18:
    wordpar_ObjClose(v12);
  }

  return v5;
}

uint64_t wordpar_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v8 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      datac_ObjClose(v3);
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      extdata_ObjClose(v4);
      *(a1 + 72) = 0;
    }

    wordpar_loc_CloseParts(a1);
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 56), *(a1 + 64), NullHandle, v6))
    {
      nuance_pcre_DeInit(*(a1 + 56), *(a1 + 64));
      nuance_pcre_ObjClose(*(a1 + 56), *(a1 + 64));
    }

    heap_Free(*(v8 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t wordpar_loc_OpenParts(_WORD **a1, _DWORD *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = "BRKD";
  v24 = wordpar_getBRKDefs;
  v25 = wordpar_freeBRKDefs;
  v26 = a1;
  SpecificData = extdata_RegisterData(a1[9], &v23, 1u);
  if ((SpecificData & 0x80000000) != 0)
  {
    return SpecificData;
  }

  SpecificData = extdata_LoadSpecificData(a1[9], "PPWO", "BRKD", "pp/word/parser");
  if ((SpecificData & 0x80000000) != 0)
  {
    return SpecificData;
  }

  v21 = 0;
  v22 = 0;
  if ((InitRsrcFunction(*a1, a1[1], &v22) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  v5 = a1[19];
  if (v5)
  {
    v23 = 0;
    v24 = 0;
    if (strlen(v5) >= 1)
    {
      v6 = 0;
      do
      {
        v5[v6] = __tolower(v5[v6]);
        ++v6;
        v5 = a1[19];
      }

      while (strlen(v5) > v6);
    }

    if ((brk_InterfaceQueryEx(*(a1[2] + 3), v5, 1, 1, &v23, (a1 + 16)) & 0x80000000) == 0)
    {
      SpecificData = (*(a1[16] + 4))(v23, v24, *a1, a1[1], a1 + 17);
      if ((SpecificData & 0x80000000) != 0)
      {
        return SpecificData;
      }
    }
  }

  else
  {
    log_OutPublic(*(a1[2] + 4), "PP_WORD_PARSER", 1811, 0);
  }

  if (*(a1 + 41))
  {
    Object = objc_GetObject(*(v22 + 48), "FE_UDWL", &v21);
    if ((Object & 0x80000000) != 0)
    {
      v7 = Object;
LABEL_33:
      *a2 = 1;
      wordpar_ObjClose(a1);
      return v7;
    }

    v10 = v21;
    v9 = v22;
    a1[13] = *(v21 + 8);
    v11 = a1 + 13;
    *(a1 + 7) = *(v10 + 16);
    v12 = objc_GetObject(*(v9 + 48), "FE_DCTLKP", &v21);
    if ((v12 & 0x80000000) != 0)
    {
      v7 = v12;
      v16 = "FE_UDWL";
LABEL_32:
      objc_ReleaseObject(*(v22 + 48), v16);
      *v11 = 0;
      v11[1] = 0;
      *(v11 + 4) = 0;
      goto LABEL_33;
    }

    v13 = v21;
    v14 = *(v21 + 8);
    a1[10] = v14;
    *(a1 + 11) = *(v13 + 16);
    v15 = wparser_ObjOpen2(*a1, a1[1], a1[7], a1[8], a1 + 5, a1[13], a1[14], a1[15], v14, a1[11], a1[12], a1[9], a1[16], a1[17], a1[18]);
    if ((v15 & 0x80000000) != 0)
    {
      v7 = v15;
      if (*v11)
      {
        objc_ReleaseObject(*(v22 + 48), "FE_UDWL");
        *v11 = 0;
        a1[14] = 0;
        *(a1 + 30) = 0;
      }

      if (!a1[10])
      {
        goto LABEL_33;
      }

      v16 = "FE_DCTLKP";
      v11 = a1 + 10;
      goto LABEL_32;
    }
  }

  else
  {
    safeh_GetNullHandle();
    SpecificData = wparser_ObjOpen1(*a1, a1[1], a1 + 5);
    if ((SpecificData & 0x80000000) != 0)
    {
      return SpecificData;
    }
  }

  SpecificData = extdata_LoadData(a1[9], "PPWO", "pp/word/parser");
  if ((SpecificData & 0x80000000) != 0)
  {
    return SpecificData;
  }

  v7 = tolhp_ObjOpen(*a1, a1[1], a1 + 6);
  if ((v7 & 0x80000000) == 0)
  {
    v17 = *(a1[2] + 5);
    v23 = 0;
    Str = paramc_ParamGetStr(v17, "is_teng", &v23);
    v19 = 0;
    if ((Str & 0x80000000) == 0 && v23)
    {
      if (*v23)
      {
        v19 = memchr("yYtT1", *v23, 6uLL) != 0;
      }

      else
      {
        v19 = 0;
      }
    }

    *(a1 + 49) = v19;
  }

  return v7;
}

uint64_t wordpar_ObjReopen(_WORD **a1)
{
  v1 = 2370838535;
  v6 = 0;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, a1[1], &v6) & 0x80000000) == 0)
  {
    v3 = extdata_FreeData(a1[9]);
    if ((v3 & 0x80000000) != 0 || (v3 = wordpar_loc_CloseParts(a1), (v3 & 0x80000000) != 0))
    {
      v1 = v3;
    }

    else
    {
      v1 = wordpar_loc_OpenParts(a1, &v5);
      if ((v1 & 0x80000000) == 0 || v5)
      {
        return v1;
      }
    }

    wordpar_ObjClose(a1);
  }

  return v1;
}

uint64_t wordpar_loc_CloseParts(uint64_t a1)
{
  v2 = tolhp_ObjClose(*(a1 + 48));
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = *(a1 + 40);
  if (*(a1 + 164))
  {
    if (v3)
    {
      v4 = wparser_ObjClose2(v3);
      goto LABEL_8;
    }
  }

  else if (v3)
  {
    v4 = wparser_ObjClose1(v3);
LABEL_8:
    v5 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      return v5;
    }
  }

  v6 = wordpar_freeBRKDefs(a1);
  v7 = *(a1 + 128);
  if (v7 && (v6 = (*(v7 + 40))(*(a1 + 136), *(a1 + 144)), (v8 = *(a1 + 128)) != 0))
  {
    v5 = brk_InterfaceRelease(*(*(a1 + 16) + 24), v8);
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v9;
  }

  else
  {
    v5 = v6;
  }

  if (*(a1 + 164))
  {
    if (*(a1 + 104))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_UDWL");
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
    }

    if (*(a1 + 80))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DCTLKP");
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
    }
  }

  return v5;
}

uint64_t wordpar_ProcessStart(uint64_t a1)
{
  v1 = 2370838535;
  v8 = 0;
  v9 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v9) & 0x80000000) == 0)
  {
    v3 = log_GetLogLevel(*(v9 + 32)) > 4;
    *(a1 + 180) = 32;
    *(a1 + 168) = v3;
    __strcat_chk();
    v4 = 0;
    while (1)
    {
      v5 = datac_RequestBlock(*(a1 + 24), aMETA_1[v4], 1u, &v8);
      if ((v5 & 0x80000000) != 0)
      {
        break;
      }

      v4 += 3;
      v6 = v8;
      *(v8 + 16) = 0;
      *(v6 + 20) = 0;
      if (v4 == 15)
      {
        v5 = tolhp_ResetDcts(*(a1 + 48));
        if ((v5 & 0x80000000) == 0)
        {
          if (!*(a1 + 164))
          {
            return 0;
          }

          v5 = wparser_ProcessStart(*(a1 + 40));
          if ((v5 & 0x80000000) == 0)
          {
            return 0;
          }
        }

        return v5;
      }
    }

    return v5;
  }

  return v1;
}

uint64_t wordpar_ProcessEnd(uint64_t a1)
{
  if (!a1)
  {
    return 2370838535;
  }

  if (*(a1 + 164))
  {
    return wparser_ProcessEnd(*(a1 + 40));
  }

  return 0;
}

uint64_t wordpar_LoadFromStreamData(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v10 = *(a1 + 24);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = 1;
  }

  v12 = datac_RequestBlock(v10, 1020, v11, &v37);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (a2)
  {
    memcpy(*(v37 + 8), a2, a3);
  }

  *(v37 + 16) = a3;
  v13 = datac_RequestBlock(*(a1 + 24), 1021, a5 & 0xFFC0, &v38);
  if ((v13 & 0x80000000) == 0)
  {
    v35 = a3;
    v14 = a5 >> 6;
    v15 = v38;
    v16 = *(v38 + 8);
    v17 = (a5 >> 6);
    if (!v17)
    {
      goto LABEL_27;
    }

    v18 = 0;
    v19 = 0;
    do
    {
      v20 = &v16[16 * v19];
      v21 = (a4 + (v19 << 6));
      v22 = v21[3];
      v23 = *v21;
      v24 = v21[1];
      *(v20 + 2) = v21[2];
      *(v20 + 3) = v22;
      *v20 = v23;
      *(v20 + 1) = v24;
      if (marker_hasNonConstCharPtrArg(v20[5]))
      {
        v25 = *(v21 + 5);
        if (v25)
        {
          v26 = strlen(v25);
          LODWORD(v25) = 0;
          v18 += v26 + 1;
        }
      }

      else
      {
        LODWORD(v25) = *(v21 + 10);
      }

      v20[10] = v25;
      v27 = *(v21 + 6);
      if (v27)
      {
        v28 = strlen(v27);
        if (v28)
        {
          v29 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v28 + 1));
          *(v20 + 6) = v29;
          if (!v29)
          {
            return 2370838538;
          }

          strcpy(v29, *(v21 + 6));
        }
      }

      ++v19;
    }

    while (v19 < v14);
    *(v38 + 16) = v14;
    if (!v18)
    {
      goto LABEL_28;
    }

    v13 = datac_RequestBlock(*(a1 + 24), 1012, v18, &v36);
    if ((v13 & 0x80000000) == 0)
    {
      LOWORD(v14) = 0;
      v30 = *(v36 + 8);
      v31 = v16 + 10;
      v32 = (a4 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v31 - 5)) && *v32)
        {
          v33 = strlen(*v32);
          *v31 = v14;
          memcpy((v30 + v14), *v32, v33);
          *(v30 + v33 + v14) = 0;
          LOWORD(v14) = v14 + v33 + 1;
        }

        v31 += 16;
        v32 += 8;
        --v17;
      }

      while (v17);
      v15 = v36;
LABEL_27:
      *(v15 + 16) = v14;
LABEL_28:
      if (v16[5] == 0x4000 && !v16[6] && !v16[7] && !wordpar_loc_existingSentParParams(a1))
      {
        v16[7] = v35;
        v16[9] = v35;
      }
    }
  }

  return v13;
}

uint64_t wordpar_ResetData(uint64_t a1)
{
  v4 = 0;
  if (!a1)
  {
    return 2370838535;
  }

  for (i = 0; i != 4; ++i)
  {
    result = datac_RequestBlock(*(a1 + 24), aTAG_1[i], 1u, &v4);
    if (i != 2 && (result & 0x80000000) == 0)
    {
      *(v4 + 16) = 0;
    }
  }

  return result;
}

uint64_t wordpar_Process(uint64_t a1)
{
  v46 = 0;
  if (!a1)
  {
    return 2370838535;
  }

  memset(v45, 0, sizeof(v45));
  LODWORD(v47) = 0;
  UInt = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_posrefoffset", &v46 + 1);
  if ((UInt & 0x1FFF) == 0x14)
  {
    HIDWORD(v46) = 0;
  }

  else
  {
    v3 = UInt;
    if ((UInt & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v4 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset", &v46);
  if ((v4 & 0x1FFF) == 0x14)
  {
    LODWORD(v46) = 0;
  }

  else
  {
    v3 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v5 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_tag", &v47);
  if ((v5 & 0x1FFF) == 0x14)
  {
    v6 = 0;
  }

  else
  {
    v3 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      return v3;
    }

    v6 = v47;
  }

  DWORD1(v45[1]) = v6;
  v7 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_posref", &v45[1] + 2);
  if ((v7 & 0x1FFF) == 0x14)
  {
    DWORD2(v45[1]) = 0;
  }

  else
  {
    v3 = v7;
    if ((v7 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v8 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_lenref", &v45[1] + 3);
  if ((v8 & 0x1FFF) == 0x14)
  {
    v9 = 0;
    HIDWORD(v45[1]) = 0;
  }

  else
  {
    v3 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      return v3;
    }

    v9 = HIDWORD(v45[1]);
  }

  log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 4, 0, "(from sentpar) posRefOffset=%d,refReset=%d pRefResetMrk->tag %d posRef %d lenRef %d", HIDWORD(v46), v46, DWORD1(v45[1]), DWORD2(v45[1]), v9);
  if (!*(a1 + 164))
  {
    inserted = wparser_ScanWords(*(a1 + 40), *(a1 + 24), SHIDWORD(v46), v46);
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

    v10 = 0;
LABEL_32:
    marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "BEFORE wordpar_loc_nonasian_PreProcessExtendedTOIWords");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "BEFORE wordpar_loc_nonasian_PreProcessExtendedTOIWords", 0, 0, 0);
    v13 = *(a1 + 24);
    v47 = 0;
    inserted = datac_RequestBlock(v13, 1021, 1u, &v47);
    if ((inserted & 0x80000000) == 0)
    {
      v14 = v47;
      v15 = *(v47 + 16);
      if (v15 > 1)
      {
        v16 = *(v47 + 8);
        v17 = v16 + 32;
        v18 = 1;
        do
        {
          while (1)
          {
            v19 = v18;
            v20 = (v16 + (v18 << 6));
            if (v20[5] == 7 && v20[10] >= 0x46u)
            {
              break;
            }

            ++v18;
LABEL_47:
            if (v15 <= v18)
            {
              goto LABEL_80;
            }
          }

          v21 = v20[8];
          if (v15 <= (v18 + 1))
          {
            ++v18;
          }

          else
          {
            v18 = v15;
          }

          v22 = (v16 + 84 + (v19 << 6));
          while (++v19 < v15)
          {
            v23 = *v22;
            v22 += 16;
            if (v23 == 7)
            {
              v18 = v19;
              break;
            }
          }

          if (v15 == v18)
          {
            v24 = (*(v16 + 36) + *(v16 + 32));
          }

          else
          {
            v24 = *(v16 + (v18 << 6) + 32);
          }

          if (v15 < 2u)
          {
            goto LABEL_47;
          }

          v25 = 0;
          v26 = 0;
          v27 = (v16 + 84);
          v28 = 1;
          do
          {
            v29 = v27[3];
            if (v29 > v24)
            {
              break;
            }

            v30 = *v27;
            v27 += 16;
            v31 = v30 == 1 && v29 >= v21;
            v32 = v31;
            v33 = v32 & (v29 < v24);
            if (v33)
            {
              v25 = v28;
            }

            if ((v33 & (v26 == 0)) != 0)
            {
              v26 = v28;
            }

            ++v28;
          }

          while (v15 != v28);
          if (!v26 || !v25 || v26 == v25)
          {
            goto LABEL_47;
          }

          v44 = v10;
          v34 = (v16 + (v25 << 6));
          v35 = (v16 + (v26 << 6));
          v35[9] = v34[9] + v34[8] - v35[8];
          v35[7] = v34[7] + v34[6] - v35[6];
          v43 = v17;
          if (v25 > v26)
          {
            v36 = v25 - 1;
            v37 = (v17 + (v25 << 6));
            v38 = ~v25 | 0xFFFF0000;
            do
            {
              if (*(v37 - 3) == 1 && *v37 >= v21 && *v37 < v24)
              {
                v40 = *(v14 + 16);
                if (v36 + 2 != v40)
                {
                  memmove(v37 - 8, (v16 + ((v36 + 2) << 6)), (v38 + v40) << 6);
                  v14 = v47;
                }

                --*(v14 + 16);
              }

              v31 = v26 >= v36--;
              v37 -= 16;
              ++v38;
            }

            while (!v31);
          }

          v15 = *(v14 + 16);
          v10 = v44;
          v17 = v43;
        }

        while (v15 > v18);
      }

LABEL_80:
      marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "BEFORE tolhp_RewritePhonTextInLhp");
      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "BEFORE tolhp_RewritePhonTextInLhp", 0, 0, 0);
      inserted = tolhp_RewritePhonTextInLhp(*(a1 + 48), *(a1 + 24));
      if ((inserted & 0x80000000) == 0)
      {
        marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "AFTER tolhp_RewritePhonTextInLhp");
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "AFTER tolhp_RewritePhonTextInLhp", 0, 0, 0);
        if (!*(a1 + 164) || (inserted = wparser_insertRegionTags(*(a1 + 40), *(a1 + 24)), (inserted & 0x80000000) == 0))
        {
          v41 = *(a1 + 24);
          v47 = 0;
          inserted = datac_RequestBlock(v41, 1021, 1u, &v47);
          if ((inserted & 0x80000000) == 0)
          {
            inserted = marker_loc_FilterSyncMarkers(v47);
            if ((inserted & 0x80000000) == 0)
            {
              if ((v10 & 0x1FFF) == 0xA)
              {
                return v10;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }

    return inserted;
  }

  v47 = 0;
  if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v47) & 0x80000000) == 0)
  {
    *(a1 + 160) = *(v47 + 16);
  }

  v3 = wordpar_loc_AlignInputMarkers(a1);
  if ((v3 & 0x80000000) == 0)
  {
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "AFTER wordpar_loc_AlignInputMarkers", 0, 0, 0);
    v10 = 0;
    if (!*(a1 + 196))
    {
      v11 = wparser_NormalizeWords(*(a1 + 40), *(a1 + 24), HIDWORD(v46), v46, v45);
      v10 = v11;
      if ((v11 & 0x1FFF) == 0xA)
      {
        v3 = v3;
      }

      else
      {
        v3 = v11;
      }
    }

    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "AFTER wparser_NormalizeWords", 0, 0, 0);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  return v3;
}

uint64_t wordpar_loc_AlignInputMarkers(uint64_t a1)
{
  v16 = 0;
  v1 = datac_RequestBlock(*(a1 + 24), 1021, 1u, &v16);
  if ((v1 & 0x80000000) != 0)
  {
    return v1;
  }

  v2 = 2370838528;
  v3 = *(v16 + 16);
  if (*(v16 + 16))
  {
    v4 = *(v16 + 8);
    if (*(v4 + 20) == 0x4000)
    {
      if (v3 != 1)
      {
        v5 = 1;
        do
        {
          v6 = v5 + 1;
          if (v6 >= v3 || (v7 = (v4 + (v6 << 6)), v8 = (v4 + (v5 << 6)), *(v7 + 8) >= *(v8 + 8)))
          {
            ++v5;
          }

          else
          {
            v5 = 0;
            v9 = *v7;
            v10 = v7[1];
            v11 = v7[2];
            v12 = v7[3];
            v13 = v8[1];
            *v7 = *v8;
            v7[1] = v13;
            v14 = v8[3];
            v7[2] = v8[2];
            v7[3] = v14;
            v17 = v9;
            v18 = v10;
            v19 = v11;
            v20 = v12;
            *v8 = v9;
            v8[1] = v10;
            v8[2] = v11;
            v8[3] = v12;
          }
        }

        while (v5 < v3);
      }

      return v1;
    }
  }

  return v2;
}

uint64_t wordpar_ResourceLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 2370838529;
  if (!a1)
  {
    return 2370838535;
  }

  if (*(a1 + 164))
  {
    return (*(*(a1 + 104) + 64))(*(a1 + 112), *(a1 + 120), a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t wordpar_ResourceTypes(uint64_t a1, void *a2)
{
  v2 = 2370838535;
  v7 = 0;
  if (a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v7);
    if ((inited & 0x80000000) == 0)
    {
      if (*(a1 + 164))
      {
        return (*(*(a1 + 104) + 56))(*(a1 + 112), *(a1 + 120), a2);
      }

      *a2 = 0;
      return inited;
    }
  }

  return v2;
}

uint64_t wordpar_ResourceUnload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 2370838536;
  if (!a1)
  {
    return 2370838535;
  }

  if (*(a1 + 164))
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      return (*(v5 + 72))(*(a1 + 112), *(a1 + 120), a2, a3);
    }
  }

  return result;
}

uint64_t wordpar_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 164))
  {
    v42 = 0;
    v43 = 0;
    v40 = 0;
    v41 = 0;
    v38 = 0;
    __s1 = 0;
    v44 = 0;
    if ((GetCfgParamVal(*(a1 + 88), *(a1 + 96), *(a1 + 80), "felid_act_lid", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 188) = strcmp(__s1, "yes") == 0;
    }

    if ((GetCfgParamVal(*(a1 + 88), *(a1 + 96), *(a1 + 80), "felid_remove_internal_lang", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 192) = strcmp(__s1, "yes") == 0;
    }

    v10 = (*(*(a1 + 32) + 136))(a2, a3, &v44);
    if ((v10 & 0x80000000) == 0)
    {
      if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v42) & 0x80000000) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v42 + 8);
      }

      inserted = datac_RequestBlock(*(a1 + 24), 1021, 1u, &v41);
      if ((inserted & 0x80000000) != 0)
      {
        goto LABEL_49;
      }

      v14 = 2370838528;
      v15 = *(v41 + 16);
      if (!*(v41 + 16))
      {
        return v14;
      }

      v16 = *(v41 + 8);
      if (v16[5] != 0x4000)
      {
        return v14;
      }

      if (!*(a1 + 196))
      {
        v17 = v16 + 8;
        v18 = v44 - v16[8];
        do
        {
          *v17 += v18;
          v17 += 16;
          --v15;
        }

        while (v15);
      }

      marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "start wordpar_WriteTextAndMarkers()");
      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "start wordpar_WriteTextAndMarkers()", 0, 0, 0);
      v10 = datac_RequestBlock(*(a1 + 24), 1020, 1u, &v43);
      if ((v10 & 0x80000000) == 0)
      {
        v19 = heap_Calloc(*(*(a1 + 16) + 8), 1, *(v43 + 16) + 1);
        v40 = v19;
        if (v19)
        {
          v20 = v19;
          v21 = strncpy(v19, *(v43 + 8), *(v43 + 16));
          v21[*(v43 + 16)] = 0;
          log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 4, 0, "L0:%s", v20);
          inserted = wordpar_loc_AlignInputMarkers(a1);
          if ((inserted & 0x80000000) == 0)
          {
            marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "out wordpar_loc_AlignInputMarkers()", 0, 0, 0);
            wordpar_loc_asian_ProcessWparserMarkers(*(a1 + 16), v16, (v41 + 16), v20);
            marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "out wordpar_loc_asian_ProcessWparserMarkers()", 0, 0, 0);
            inserted = wordpar_loc_asian_TranslateMarkup(a1, &v40, v41, v42);
            if ((inserted & 0x80000000) == 0)
            {
              if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v42) & 0x80000000) == 0)
              {
                v11 = *(v42 + 8);
              }

              v22 = *(v41 + 8);
              if (v11 && *(v41 + 16))
              {
                v23 = 0;
                v24 = v22 + 40;
                do
                {
                  if (marker_hasNonConstCharPtrArg(*(v24 - 5)))
                  {
                    v25 = *v24;
                    if (v25 == -1)
                    {
                      v26 = 0;
                    }

                    else
                    {
                      v26 = v11 + v25;
                    }

                    *v24 = v26;
                  }

                  ++v23;
                  v24 += 8;
                }

                while (v23 < *(v41 + 16));
              }

              marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_PostProcessMarkers()");
              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_PostProcessMarkers()", 1, 0, 0);
              v27 = v40;
              wordpar_loc_asian_PostProcessMarkers(*(a1 + 16), *(a1 + 188), v22, (v41 + 16), v40);
              marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_deleteMarkerForUnknown()");
              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteMarkerForUnknown()", 0, 0, 0);
              wordpar_loc_asian_deleteMarkerForUnknown(v22, (v41 + 16));
              if (*(a1 + 192))
              {
                marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_deleteConflictingLangMarker()");
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteConflictingLangMarker()", 0, 0, 0);
                if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &v38) & 0x80000000) == 0)
                {
                  wordpar_loc_asian_deleteConflictingLangMarker(v22, (v41 + 16), v38);
                }
              }

              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wparser_InsertWordMarkers()", 0, 0, 0);
              inserted = wparser_InsertWordMarkers(*(a1 + 40), *(a1 + 24), v27, (v41 + 16));
              if ((inserted & 0x80000000) == 0)
              {
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_RemoveBlankLatinRegions()", 1, 0, 0);
                wordpar_loc_asian_RemoveBlankLatinRegions(v22, (v41 + 16), v27);
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers()", 1, 0, 0);
                inserted = wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers(*(a1 + 16), v22, *(v41 + 16), &v40);
                if ((inserted & 0x80000000) == 0)
                {
                  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_InsertSpaceBeforeTNMarkers()", 1, 0, 0);
                  inserted = wordpar_loc_asian_InsertSpaceBeforeTNMarkers(*(a1 + 16), *(a1 + 24), &v40);
                  if ((inserted & 0x80000000) == 0)
                  {
                    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_HandleExtendedToi()", 0, 0, 0);
                    inserted = wordpar_loc_asian_HandleExtendedToi(*(a1 + 16), *(a1 + 24), v41, &v40);
                    if ((inserted & 0x80000000) == 0)
                    {
                      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_MarkerPostProcessing()", 1, 0, 0);
                      inserted = wordpar_loc_MarkerPostProcessing(*(a1 + 24), v41);
                      if ((inserted & 0x80000000) == 0)
                      {
                        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_InsertNLUMarkers()", 1, 0, 0);
                        inserted = wordpar_loc_InsertNLUMarkers(a1, v41);
                        if ((inserted & 0x80000000) == 0)
                        {
                          v28 = v40;
                          v29 = *(v41 + 8);
                          log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Write2DB) %s", v40);
                          marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "at end()", 1, 0, 0);
                          v30 = strlen(v28);
                          if (!v30)
                          {
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 34, "", "text/plain;charset=depes", 0, 0);
                            }

                            v32 = 0;
                            goto LABEL_58;
                          }

                          inserted = (*(*(a1 + 32) + 104))(a2, a3, v28, (v30 + 1));
                          if ((inserted & 0x80000000) == 0)
                          {
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              v31 = strlen(v28);
                              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 34, "", "text/plain;charset=depes", v28, (v31 + 1));
                            }

                            v32 = 1;
LABEL_58:
                            *(v43 + 16) = 0;
                            v33 = wordpar_loc_writeMarkersToOutputStream(a1, a4, a5, v29, v41, v32);
                            if ((v33 & 0x80000000) == 0)
                            {
                              if (*(a1 + 160))
                              {
                                v34 = *(v42 + 8);
                                if (v34)
                                {
                                  v35 = heap_Realloc(*(*(a1 + 16) + 8), v34, *(v42 + 2) * *(a1 + 160));
                                  if (v35)
                                  {
                                    v36 = v42;
                                    *(v42 + 8) = v35;
                                    v37 = *(a1 + 160);
                                    *(v36 + 16) = v37;
                                    *(v36 + 18) = v37;
                                  }

                                  else
                                  {
                                    v33 = 2370838538;
                                  }
                                }
                              }
                            }

                            goto LABEL_50;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_49:
          v33 = inserted;
LABEL_50:
          if (v40)
          {
            heap_Free(*(*(a1 + 16) + 8), v40);
          }

          return v33;
        }

        return 2370838538;
      }
    }

    return v10;
  }

  return wordpar_loc_nonasian_WriteTextAndMarkers(a1, a2, a3, a4, a5);
}

uint64_t wordpar_GetWParserType(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 2370838535;
  }

  result = 0;
  *a2 = *(a1 + 164);
  return result;
}

uint64_t wordpar_loc_adjustMarkerPositions(uint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (a3 < result)
  {
    v6 = (a2 + (a3 << 6) + 36);
    v7 = result - a3;
    do
    {
      v8 = *(v6 - 1);
      v9 = *(a2 + 32);
      v10 = v9 + a5;
      if (v8 <= v9 + a4 || v8 >= v10)
      {
        if (v8 >= v10)
        {
          *(v6 - 1) = v8 + a6;
        }

        else if (*(v6 - 4) == 1)
        {
          v12 = *v6 + v8;
          if (v12 > *(a2 + 36) + v9 && v12 != -a6)
          {
            *v6 += a6;
          }
        }
      }

      else
      {
        *(v6 - 1) = v9 + a4;
      }

      v6 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t GetCfgParamVal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  *a5 = "no";
  *(__c + 1) = -1;
  LOBYTE(__c[0]) = 0;
  v10 = 0;
  v6 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v10, __c + 1, __c);
  if ((v6 & 0x80000000) == 0 && *(__c + 1))
  {
    v7 = *v10;
    v8 = strchr(*v10, LOBYTE(__c[0]));
    if (v8)
    {
      *v8 = 0;
      v7 = *v10;
    }

    *a5 = v7;
  }

  return v6;
}

uint64_t wordpar_loc_asian_ProcessWparserMarkers(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, char *__s)
{
  result = strlen(__s);
  v79 = result;
  v9 = *a3;
  if (v9 < 2)
  {
    goto LABEL_110;
  }

  v10 = 1;
  do
  {
    v11 = &a2[16 * v10];
    if (v11[5] == 7)
    {
      v12 = v11[10];
      if ((v12 - 15) <= 1)
      {
        v13 = *(v11 + 8);
        v14 = *(v11 + 1);
        if (*(v11 + 8))
        {
          v15 = 0;
          do
          {
            if (!*(v14 + 8 * v15))
            {
              v16 = v14 + 8 * v15;
              if (v9 >= 2u)
              {
                v17 = v11[8];
                v18 = a2 + 21;
                v19 = 2;
                v20 = v9 - 1;
                do
                {
                  if (v18[3] > v17)
                  {
                    break;
                  }

                  if (*v18 == 998)
                  {
                    v21 = v18[1];
                    if (v21 == v11[6])
                    {
                      v22 = v18[5] != v12 || v19 >= v9;
                      if (!v22 && v18[16] == 41)
                      {
                        v23 = *(v16 + 4) + v21;
                        if (a2[7] + a2[6] < v23)
                        {
                          v23 = a2[7] + a2[6];
                        }

                        v24 = v18[2];
                        v18[17] = v23;
                        v18[18] = v24;
                        *v18 = 0;
                      }
                    }
                  }

                  ++v19;
                  v18 += 16;
                  --v20;
                }

                while (v20);
              }

              v25 = *(v16 + 4) + v11[6];
              if (a2[7] + a2[6] < v25)
              {
                v25 = a2[7] + a2[6];
              }

              v11[6] = v25;
            }

            ++v15;
          }

          while (v15 != v13);
LABEL_30:
          result = heap_Free(*(a1 + 8), v14);
          *(v11 + 1) = 0;
          *(v11 + 8) = 0;
          LOWORD(v9) = *a3;
          goto LABEL_31;
        }

        if (v14)
        {
          goto LABEL_30;
        }

        if (v9 >= 2u)
        {
          v26 = 0;
          v27 = v11[8];
          v28 = 1;
          v29 = a2 + 23;
          v30 = 1;
          do
          {
            v31 = &a2[16 * v30];
            if (v31[8] > v27)
            {
              break;
            }

            if (v31[5] == 998)
            {
              v32 = v31[6];
              if (v32 == v11[6] && v31[10] == v12)
              {
                v33 = (v28 + 1);
                if (v33 < v9 && (v34 = &a2[16 * v33], result = v34[5], result == 41) && (result = v34[6], result == v32))
                {
                  v34[7] = v31[7];
                  v31[5] = 0;
                }

                else if (v28 >= 2u)
                {
                  result = v26;
                  v35 = v29;
                  while (1)
                  {
                    if (*(v35 - 2) == 41)
                    {
                      v36 = *(v35 - 1);
                      if (v36 < v32)
                      {
                        goto LABEL_49;
                      }

                      if (v36 == v32)
                      {
                        break;
                      }
                    }

                    v35 -= 16;
                    if (!(result-- & 0xFFFE))
                    {
                      goto LABEL_49;
                    }
                  }

                  *v35 = v31[7];
                  v31[5] = 0;
                  break;
                }
              }
            }

LABEL_49:
            LOWORD(v28) = v28 + 1;
            v30 = v28;
            v28 = v28;
            v29 += 16;
            ++v26;
          }

          while (v28 < v9);
        }
      }
    }

LABEL_31:
    ++v10;
  }

  while (v10 < v9);
  if (v9 < 2u)
  {
    goto LABEL_110;
  }

  v38 = 1;
  do
  {
    v39 = &a2[16 * v38];
    if (v39[5] == 998)
    {
      v40 = 1;
      while (1)
      {
        v41 = &a2[16 * v40];
        v42 = v41[8];
        if (v42 > v39[8])
        {
          goto LABEL_60;
        }

        if (v41[5] == 41)
        {
          result = v39[6];
          if (v41[6] == result)
          {
            break;
          }
        }

        if (++v40 >= v9)
        {
          goto LABEL_60;
        }
      }

      v43 = v39[7];
      v41[7] = v43;
      v44 = v40 + 1;
      if (v44 < v9)
      {
        v45 = &a2[16 * v44];
        if (v45[5] == 39 && v45[8] == v42)
        {
          v46 = v45 + 7;
LABEL_70:
          *v46 = v43;
          goto LABEL_60;
        }
      }

      if (v40 >= 2u && *(v41 - 11) == 39 && *(v41 - 8) == v42)
      {
        v46 = v41 - 9;
        goto LABEL_70;
      }
    }

LABEL_60:
    ++v38;
  }

  while (v38 != v9);
  v47 = 1;
  v48 = 1;
  while (2)
  {
    v49 = &a2[16 * v47];
    if (v49[5] != 7)
    {
LABEL_72:
      v50 = &a2[16 * v48];
      v51 = *v49;
      v52 = *(v49 + 1);
      v53 = *(v49 + 3);
      v50[2] = *(v49 + 2);
      v50[3] = v53;
      *v50 = v51;
      v50[1] = v52;
      goto LABEL_73;
    }

    v54 = v49[10];
    if (v54 != 43)
    {
      if ((v54 - 15) <= 1)
      {
        goto LABEL_72;
      }

      goto LABEL_92;
    }

    if (!v49[9])
    {
      v65 = *(v49 + 6);
      if (v65)
      {
        result = heap_Free(*(a1 + 8), v65);
        *(v49 + 6) = 0;
      }

LABEL_92:
      v66 = *(v49 + 1);
      if (v66)
      {
        result = heap_Free(*(a1 + 8), v66);
        *(v49 + 1) = 0;
        *(v49 + 8) = 0;
      }

      goto LABEL_74;
    }

    v55 = a2[8];
    v56 = v49[8] - v55;
    if (v79 > (*(v49 + 16) - v55 - 3))
    {
      v57 = (v56 - 3);
      v58 = &__s[(v56 - 3)];
      if (*v58 == 30 && v58[1] == 47 && v58[2] == 43)
      {
        v59 = *(v49 + 1);
        if (v59)
        {
          result = heap_Free(*(a1 + 8), v59);
          *(v49 + 1) = 0;
          *(v49 + 8) = 0;
        }

        v60 = &a2[16 * v48];
        v61 = *v49;
        v62 = *(v49 + 1);
        v63 = *(v49 + 3);
        *(v60 + 2) = *(v49 + 2);
        *(v60 + 3) = v63;
        *v60 = v61;
        *(v60 + 1) = v62;
        v60[8] = a2[8] + v56;
        while (1)
        {
          LOWORD(v56) = v56 + 1;
          v64 = __s[v56];
          if (v56 >= v79)
          {
            break;
          }

          if (v64 == 31)
          {
            goto LABEL_95;
          }
        }

        if (v64 != 31)
        {
          goto LABEL_73;
        }

LABEL_95:
        v60[9] = v56 - v57 - 3;
LABEL_73:
        ++v48;
      }
    }

LABEL_74:
    if (++v47 < *a3)
    {
      continue;
    }

    break;
  }

  *a3 = v48;
  if (v48 < 2u)
  {
LABEL_110:
    *a3 = 1;
    return result;
  }

  v67 = 0;
  v68 = 1;
  do
  {
    v69 = &a2[16 * v68];
    if (v69[5] != 7 || v69[10] != 43)
    {
      v70 = v67;
      v71 = a2 + 26;
      v72 = 1;
      while (1)
      {
        if (v70)
        {
          if (*(v71 - 5) == 7 && *v71 == 43)
          {
            v73 = v69[8];
            v74 = *(v71 - 2);
            if (v73 >= v74 && v73 < *(v71 - 1) + v74)
            {
              break;
            }
          }
        }

        ++v72;
        v71 += 16;
        --v70;
        if (v72 >= v48)
        {
          goto LABEL_107;
        }
      }

      v69[8] = v74;
    }

LABEL_107:
    ++v68;
    ++v67;
  }

  while (v68 < v48);
  *a3 = v68;
  LOWORD(v75) = 1;
  do
  {
    v75 = v75;
    result = &a2[16 * v75];
    while (1)
    {
      v76 = *(result + 20);
      if (v76 == 998 || v76 == 0)
      {
        break;
      }

      ++v75;
      result += 64;
      if (v75 >= v68)
      {
        return result;
      }
    }

    v78 = v75 + 1;
    if (v68 > v78)
    {
      result = memmove(result, &a2[16 * v78], (v68 - v78) << 6);
      LOWORD(v68) = *a3;
    }

    LOWORD(v68) = v68 - 1;
    *a3 = v68;
  }

  while (v68 > v75);
  return result;
}

uint64_t wordpar_loc_asian_TranslateMarkup(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v148 = a4;
  *v149 = a3;
  v7 = strlen((a1 + 180));
  v8 = *a2;
  v147 = 0;
  v146 = 30;
  v145 = 0;
  v9 = *(v4 + 16);
  MarkerArgStr = marker_getMarkerArgStr(2u);
  v11 = v9 + strlen(MarkerArgStr) + 1;
  if (*(v4 + 18) < v11)
  {
    result = datac_RequestBlock(*(a1 + 24), 1012, v11, &v148);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v4 = v148;
  }

  v13 = (*(v4 + 8) + *(v4 + 2) * *(v4 + 16));
  v14 = marker_getMarkerArgStr(2u);
  strcpy(v13, v14);
  v15 = marker_getMarkerArgStr(2u);
  v13[strlen(v15)] = 0;
  v16 = *(v148 + 16);
  *(v148 + 16) = v11;
  v17 = marker_getMarkerArgStr(1u);
  v18 = v11 + strlen(v17) + 1;
  v19 = v148;
  if (*(v148 + 18) < v18)
  {
    result = datac_RequestBlock(*(a1 + 24), 1012, v18, &v148);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v19 = v148;
  }

  v20 = (*(v19 + 8) + *(v19 + 2) * *(v19 + 16));
  v21 = marker_getMarkerArgStr(1u);
  strcpy(v20, v21);
  v22 = marker_getMarkerArgStr(1u);
  v20[strlen(v22)] = 0;
  v23 = *(v148 + 16);
  *(v148 + 16) = v18;
  HIBYTE(v146) = 76;
  v24 = strlen(v8);
  log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStrAddMarker(\\x1eL)", v24, v8);
  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eL)", 0, 0, 0);
  result = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v146, *v149, v16);
  if ((result & 0x80000000) == 0)
  {
    HIBYTE(v146) = 68;
    v25 = strlen(v8);
    log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStrAddMarker(\\x1eD)", v25, v8);
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eD)", 0, 0, 0);
    result = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v146, *v149, v16);
    if ((result & 0x80000000) == 0)
    {
      v26 = strlen(v8);
      log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStrAddMarker(\\x1eP)", v26, v8);
      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eP)", 0, 0, 0);
      HIBYTE(v146) = 80;
      result = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v146, *v149, v23);
      if ((result & 0x80000000) == 0)
      {
        v142 = result;
        v132 = a2;
        v27 = strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szPHONMARKER_BEG)", v27, v8);
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szPHONMARKER_BEG)", 0, 0, 0);
        wordpar_loc_asian_deleteStr(*v149, v8, szPHONMARKER_BEG);
        v28 = strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szWORD_END)", v28, v8);
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szWORD_END)", 0, 0, 0);
        wordpar_loc_asian_deleteStr(*v149, v8, szWORD_END);
        v29 = strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG, ), initial only", v29, v8);
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG, ), initial only", 0, 0, 0);
        v30 = 1;
        wordpar_loc_asian_replaceStrWithStr(*v149, v8, "", 1);
        v31 = strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG,  )", v31, v8);
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG,  )", 0, 0, 0);
        wordpar_loc_asian_replaceStrWithStr(*v149, v8, " ", 0);
        v32 = strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", v32, v8);
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", 0, 0, 0);
        wordpar_loc_asian_deleteStr(*v149, v8, szMARKER_END);
        v33 = strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "after wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", v33, v8);
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "after wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", 0, 0, 0);
        v34 = *v149;
        v35 = *(*v149 + 8);
        v36 = *(*v149 + 16);
        if (v36 >= 2)
        {
          v37 = 0;
          v38 = v35[8];
          v39 = v36 - 2;
          v40 = v35 + 26;
          do
          {
            v41 = *(v40 - 2);
            if (v41 == v38 && *(v40 - 5) == 7 && *v40 == 43)
            {
              v37 = 1;
            }

            v42 = v41 > v38 || v39-- == 0;
            v40 += 16;
          }

          while (!v42);
          v30 = v37 == 0;
        }

        v43 = strlen(v8);
        if ((v43 & 0xFFFE) != 0 && *v8 == 32 && v30)
        {
          memmove(v8, v8 + 1, v43);
          v34 = *v149;
          v35 = *(*v149 + 8);
          v36 = *(*v149 + 16);
          if (v36 >= 2)
          {
            v44 = v35[8];
            v45 = v35 + 24;
            v46 = v36 - 1;
            do
            {
              if (*v45 != v44)
              {
                --*v45;
              }

              v45 += 16;
              --v46;
            }

            while (v46);
          }

          --v35[9];
        }

        if (v36 < 2)
        {
          goto LABEL_145;
        }

        v47 = -2;
        v48 = 160;
        v49 = 3;
        v50 = 128;
        v51 = 1;
        v131 = v7;
        v130 = v23;
        v144 = v7;
LABEL_32:
        v52 = &v35[16 * v51];
        if (v52[5] != 7 || v52[10] != 43)
        {
          goto LABEL_86;
        }

        v139 = v49;
        v140 = v50;
        v53 = strlen(v8);
        v54 = v52[8];
        v55 = v35[8];
        v67 = v54 >= v55;
        v56 = v54 - v55;
        if (!v67 || (v57 = v52[9], LOWORD(v58) = v57 - 1, v57 - 1 >= v53))
        {
          v129 = *(v52 + 6);
          if (v129)
          {
            heap_Free(*(*(a1 + 16) + 8), v129);
            *(v52 + 6) = 0;
          }

          log_OutPublic(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 1922, 0);
          return 0;
        }

        v133 = v53;
        v143 = v51;
        v138 = v48;
        v59 = &v8[v56];
        v60 = 0;
        v61 = v52[9];
        if (v52[9])
        {
          do
          {
            if (!utf8_BelongsToSet(0, v59, v60, v57))
            {
              goto LABEL_41;
            }

            ++v60;
          }

          while (v61 != v60);
          v60 = v57;
LABEL_41:
          if (v57 == 1)
          {
LABEL_47:
            LOWORD(v57) = 1;
LABEL_48:
            if (v57 <= v60)
            {
              goto LABEL_81;
            }

            v134 = v47;
            v136 = v35;
            v62 = 0;
            v63 = 95;
            v64 = v60;
            while (1)
            {
              v65 = *(v59 + v64);
              if (v65 <= 0x5B)
              {
                break;
              }

              if (v65 == 95)
              {
                goto LABEL_62;
              }

              v42 = v65 == 92;
              v66 = v64 + 1;
              v67 = !v42 || v66 >= v57;
              if (!v67 && *(v59 + v66) == 84)
              {
                v135 = v62;
                for (i = v64 + 2; i < v57; i += utf8_determineUTF8CharLength(v69))
                {
                  v69 = *(v59 + i);
                  if (v69 == 92)
                  {
                    break;
                  }
                }

                if (*(v59 + i) == 92)
                {
                  v64 = i;
                }

                v62 = v135;
              }

LABEL_70:
              if (!utf8_BelongsToSet(0, v59, v64, v61))
              {
                v63 = *(v59 + v64);
              }

              if (++v64 >= v57)
              {
LABEL_73:
                v70 = v63;
                if (v63 == 35)
                {
                  v35 = v136;
                  v47 = v134;
                }

                else
                {
                  v35 = v136;
                  v47 = v134;
                  if (v70 != 95)
                  {
                    LOWORD(v62) = v62 + 1;
                  }
                }

                v71 = v62;
                if (v62)
                {
                  v52[5] = 34;
                  v72 = v148;
                  v73 = *(v148 + 16);
                  v74 = v57 - v60 + v73 + 1;
                  if (*(v148 + 18) < v74)
                  {
                    result = datac_RequestBlock(*(a1 + 24), 1012, (v57 - v60 + v73 + 1), &v148);
                    v75 = v144;
                    if ((result & 0x80000000) == 0)
                    {
                      v72 = v148;
                      v76 = *(*v149 + 8);
                      v73 = *(v148 + 16);
                      goto LABEL_89;
                    }

                    return result;
                  }

                  v76 = v136;
                  v75 = v144;
LABEL_89:
                  v79 = &v76[16 * v143];
                  v137 = v76;
                  v80 = v79[8] - v76[8];
                  strncpy((*(v72 + 8) + *(v72 + 2) * v73), &v8[v80 + v60], (v57 - v60))[v57 - v60] = 0;
                  v79[10] = *(v148 + 16);
                  *(v148 + 16) = v74;
                  v81 = *(v79 + 18);
                  v141 = v75 * v71;
                  v82 = v75 * v71 - v81;
                  if (v75 * v71 > v81)
                  {
                    v83 = strlen(v8);
                    v84 = heap_Realloc(*(*(a1 + 16) + 8), v8, (v82 + v83 + 1));
                    if (!v84)
                    {
                      return 2370838538;
                    }

                    v8 = v84;
                    *v132 = v84;
                  }

                  if (v80 >= v137[9])
                  {
                    v85 = 0;
                  }

                  else
                  {
                    v85 = *(v79 + 18);
                    memmove(&v8[v80], &v8[(v85 + v80)], v133 - (v85 + v80) + 1);
                  }

                  v86 = 0;
                  v87 = v80 + v75;
                  do
                  {
                    v88 = strlen(v8);
                    memmove(&v8[v87], &v8[v80], (v88 - v80));
                    v8[v88 + v144] = 0;
                    memmove(&v8[v80], (a1 + 180), v131);
                    ++v86;
                  }

                  while (v71 > v86);
                  v89 = *(*v149 + 16);
                  if (v143 + 1 < v89)
                  {
                    v90 = (v137 + v138);
                    v91 = v139;
                    do
                    {
                      if (*v90 > v79[8])
                      {
                        *v90 += v141 - v85;
                      }

                      v90 += 16;
                      v42 = v89 == v91++;
                    }

                    while (!v42);
                  }

                  v92 = 0;
                  v79[9] = 0;
                  v93 = v134;
                  v94 = v140;
                  do
                  {
                    result = datac_RequestBlock(*(a1 + 24), 1021, (v89 + 1), v149);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    v142 = result;
                    v95 = *(*v149 + 8);
                    memmove(v95 + v94 + 64, v95 + v94, (v93 + *(*v149 + 16)) << 6);
                    v89 = *(*v149 + 8) + v94;
                    *v89 = 1;
                    *(v89 + 20) = 1;
                    v96 = &v95[16 * v143];
                    *(v89 + 24) = *(v96 + 3);
                    *(v89 + 32) = v92 + v96[8];
                    *(v89 + 36) = v144;
                    *(v89 + 16) = 0;
                    *(v89 + 8) = 0;
                    *(v89 + 40) = 0;
                    *(v89 + 48) = 0;
                    v34 = *v149;
                    v97 = *(*v149 + 16);
                    LOWORD(v89) = v97 + 1;
                    *(*v149 + 16) = v97 + 1;
                    v94 += 64;
                    v92 += v144;
                    --v93;
                    --v71;
                  }

                  while (v71);
                  v98 = v95;
                  v99 = v96[8] + v141;
                  v100 = (v97 + 1);
                  if (((v97 + 1) & 0xFFFE) != 0)
                  {
                    v101 = (v97 + 1);
                  }

                  else
                  {
                    v101 = 1;
                  }

                  v47 = v134;
                  v51 = v143;
                  if (v100 < 2)
                  {
LABEL_114:
                    if (v100 < 2)
                    {
                      LOWORD(v105) = 1;
                      v106 = v130;
                    }

                    else
                    {
                      v104 = (v98 + 26);
                      v105 = 1;
                      v106 = v130;
                      while (1)
                      {
                        v107 = *(v104 - 5);
                        if (v107 == 21)
                        {
                          v106 = *v104;
                        }

                        v108 = *(v104 - 2) - v98[8];
                        if (v99 <= v108 && (v107 == 7 || v99 != v108))
                        {
                          break;
                        }

                        ++v105;
                        v104 += 16;
                        if ((v97 + 1) == v105)
                        {
                          goto LABEL_129;
                        }
                      }
                    }

                    if (v105 == v89)
                    {
LABEL_129:
                      result = datac_RequestBlock(*(a1 + 24), 1021, (v97 + 2), v149);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v142 = result;
                      v110 = *(*v149 + 8);
                      v111 = *(*v149 + 16);
                      v112 = &v110[16 * v111];
                      *v112 = 1;
                      v112[5] = 21;
                      v113 = v110;
                      if (v97)
                      {
                        LastPosRef = wordpar_loc_asian_getLastPosRef(v110, v111, v99 - v110[8], v97, 0);
                      }

                      else
                      {
                        LastPosRef = v110[7] + v110[6];
                      }

                      v48 = v138;
                      v49 = v139;
                      v50 = v140;
                      v112[6] = LastPosRef;
                      v112[7] = 0;
                      v112[8] = v99;
                      v112[9] = 0;
                      *(v112 + 8) = 0;
                      *(v112 + 1) = 0;
                      v112[10] = v106;
                      *(v112 + 6) = 0;
                      v34 = *v149;
                      ++*(*v149 + 16);
                      v35 = v113;
                    }

                    else
                    {
                      v115 = v105;
                      v116 = v98[8];
                      if (v105 < v89)
                      {
                        v117 = &v98[16 * v105 + 5];
                        v118 = v105 + 1;
                        while (v99 == v117[3] - v116)
                        {
                          v120 = *v117;
                          v117 += 16;
                          v119 = v120;
                          if (v118 < (v97 + 1))
                          {
                            ++v118;
                            if (v119 != 21)
                            {
                              continue;
                            }
                          }

                          if (v119 != 21)
                          {
                            break;
                          }

                          v35 = v98;
                          goto LABEL_140;
                        }
                      }

                      v121 = wordpar_loc_asian_getLastPosRef(v98, (v97 + 1), v99 - v116, v115, 0);
                      result = datac_RequestBlock(*(a1 + 24), 1021, (v97 + 2), v149);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v142 = result;
                      v122 = *(*v149 + 8);
                      memmove(&v122[16 * v115 + 16], &v122[16 * v115], (*(*v149 + 16) - v115) << 6);
                      v123 = *(*v149 + 8) + (v115 << 6);
                      *v123 = 1;
                      *(v123 + 20) = 21;
                      *(v123 + 24) = v121;
                      *(v123 + 28) = 0;
                      *(v123 + 32) = v99;
                      v35 = v122;
                      *(v123 + 16) = 0;
                      *(v123 + 8) = 0;
                      *(v123 + 36) = 0;
                      *(v123 + 40) = v106;
                      *(v123 + 48) = 0;
                      v34 = *v149;
                      ++*(*v149 + 16);
LABEL_140:
                      v48 = v138;
                      v49 = v139;
                      v50 = v140;
                    }

                    v51 = v143;
                    goto LABEL_86;
                  }

                  v102 = v98 + 21;
                  v103 = v101 - 1;
                  while (v99 != v102[3] || *v102 != 21)
                  {
                    v102 += 16;
                    if (!--v103)
                    {
                      goto LABEL_114;
                    }
                  }

                  v35 = v98;
                  v48 = v138;
                  v49 = v139;
                  v50 = v140;
LABEL_86:
                  ++v51;
                  v48 += 64;
                  ++v49;
                  v50 += 64;
                  --v47;
                  if (v51 >= *(v34 + 16))
                  {
LABEL_145:
                    v35[9] = strlen(v8);
                    if (*(a1 + 188) || (paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &v145) & 0x80000000) == 0 && (!LH_stricmp(v145, "MNC") || !LH_stricmp(v145, "MNT") || !LH_stricmp(v145, "SIC")))
                    {
                      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "in wordpar_loc_asian_TranslateMarkup() before remove conflict internal LANG marker", 0, 0, 0);
                      v124 = *v149;
                      LODWORD(v125) = *(*v149 + 16);
                      if (v125 >= 2)
                      {
                        v126 = v35 + 16;
                        v127 = -1;
                        v128 = 1;
                        do
                        {
                          if (*(v126 - 11) == 36 && v126[5] == 36 && *(v126 - 8) == v126[8] && !*v126)
                          {
                            memmove(v126 - 16, v126, (v127 + v125) << 6);
                            v124 = *v149;
                            --*(*v149 + 16);
                          }

                          ++v128;
                          v125 = *(v124 + 16);
                          v126 += 16;
                          --v127;
                        }

                        while (v128 < v125);
                      }

                      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "in wordpar_loc_asian_TranslateMarkup() after remove conflict internal LANG marker", 0, 0, 0);
                    }

                    return v142;
                  }

                  goto LABEL_32;
                }

LABEL_81:
                log_OutPublic(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 1818, 0);
                v77 = *(v52 + 6);
                if (v77)
                {
                  heap_Free(*(*(a1 + 16) + 8), v77);
                  *(v52 + 6) = 0;
                }

                v51 = v143;
                v34 = *v149;
                v78 = *(*v149 + 16);
                v48 = v138;
                if (v143 + 1 != v78)
                {
                  memmove(v52, &v35[16 * v143 + 16], (v78 - v143) << 6);
                  v34 = *v149;
                  LOWORD(v78) = *(*v149 + 16);
                }

                v49 = v139;
                v50 = v140;
                *(v34 + 16) = v78 - 1;
                goto LABEL_86;
              }
            }

            if (v65 != 35)
            {
              if (v65 == 18)
              {
                goto LABEL_73;
              }

              goto LABEL_70;
            }

LABEL_62:
            if (v63 != 35 && v63 != 95)
            {
              ++v62;
            }

            goto LABEL_70;
          }
        }

        else
        {
          LOWORD(v58) = -1;
        }

        v58 = v58;
        while (utf8_BelongsToSet(0, v59, v58, v61))
        {
          LOWORD(v57) = v57 - 1;
          if (!--v58)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_48;
      }
    }
  }

  return result;
}

uint64_t wordpar_loc_asian_PostProcessMarkers(uint64_t a1, int a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  result = marker_getMarkerArgStr(1u);
  v73 = 0;
  v11 = *a4;
  if (v11 >= 2)
  {
    v12 = result;
    v13 = 1;
    do
    {
      v14 = v13 + 1;
      if (v14 < v11)
      {
        v15 = (a3 + (v13 << 6));
        v16 = (a3 + (v14 << 6));
        if (*(v15 + 8) == *(v16 + 8))
        {
          v17 = *(v15 + 5);
          if (v17 != 36 && v17 != 0x4000 && *(v16 + 5) == 36)
          {
            v19 = v16[1];
            v74 = *v16;
            v18 = v74;
            v75 = v19;
            v21 = v16[3];
            v76 = v16[2];
            v20 = v76;
            v77 = v21;
            v22 = v15[1];
            *v16 = *v15;
            v16[1] = v22;
            v23 = v15[3];
            v16[2] = v15[2];
            v16[3] = v23;
            *v15 = v18;
            v15[1] = v19;
            v15[2] = v20;
            v15[3] = v21;
            LODWORD(v14) = 1;
            v11 = *a4;
          }
        }
      }

      v13 = v14;
    }

    while (v14 < v11);
    if (v11 >= 2)
    {
      v24 = (a3 + 84);
      for (i = 1; i < v11; ++i)
      {
        v26 = *v24;
        if (*v24 == 41)
        {
          MarkerArgStr = marker_getMarkerArgStr(1u);
          result = strcmp(v12, MarkerArgStr);
          if (!result)
          {
            v29 = v24[3];
            v30 = *(a3 + 32);
            if (v29 != v30 && *(a5 + (v29 + ~v30)) == 32)
            {
              v24[3] = v29 + 1;
            }
          }

          *v24 = 1;
          v11 = *a4;
        }

        else if (v26 == 39)
        {
          v27 = v24[3];
          if (v27 != *(a3 + 32))
          {
            v24[3] = v27 + 1;
          }

          *v24 = 37;
        }

        else if (v26 == 36)
        {
          v12 = *(v24 + 5);
        }

        v24 += 16;
      }

      if (v11 >= 2)
      {
        v31 = 1;
        do
        {
          v32 = v31 + 1;
          if (v32 >= v11 || (v33 = (a3 + (v32 << 6)), v34 = (a3 + (v31 << 6)), *(v33 + 8) >= *(v34 + 8)))
          {
            ++v31;
          }

          else
          {
            v31 = 0;
            v35 = *v33;
            v36 = v33[1];
            v37 = v33[2];
            v38 = v33[3];
            v39 = v34[1];
            *v33 = *v34;
            v33[1] = v39;
            v40 = v34[3];
            v33[2] = v34[2];
            v33[3] = v40;
            v74 = v35;
            v75 = v36;
            v76 = v37;
            v77 = v38;
            *v34 = v35;
            v34[1] = v36;
            v34[2] = v37;
            v34[3] = v38;
            v11 = *a4;
          }
        }

        while (v31 < v11);
        if (v11 >= 2)
        {
          v41 = 1;
          do
          {
            v42 = v41 + 1;
            if (v42 < v11)
            {
              v43 = (a3 + (v41 << 6));
              v44 = (a3 + (v42 << 6));
              if (*(v43 + 8) == *(v44 + 8))
              {
                v45 = *(v43 + 5);
                if (v45 != 36 && v45 != 0x4000 && *(v44 + 5) == 36)
                {
                  v47 = v44[1];
                  v74 = *v44;
                  v46 = v74;
                  v75 = v47;
                  v49 = v44[3];
                  v76 = v44[2];
                  v48 = v76;
                  v77 = v49;
                  v50 = v43[1];
                  *v44 = *v43;
                  v44[1] = v50;
                  v51 = v43[3];
                  v44[2] = v43[2];
                  v44[3] = v51;
                  *v43 = v46;
                  v43[1] = v47;
                  v43[2] = v48;
                  v43[3] = v49;
                  LODWORD(v42) = 1;
                  v11 = *a4;
                }
              }
            }

            v41 = v42;
          }

          while (v42 < v11);
        }
      }
    }
  }

  if (!a2 && ((result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v73), (result & 0x80000000) != 0) || (result = LH_stricmp(v73, "MNC"), result) && (result = LH_stricmp(v73, "MNT"), result) && (result = LH_stricmp(v73, "SIC"), result)))
  {
    if (*a4 < 2u)
    {
      v52 = 1;
    }

    else
    {
      v67 = (a3 + 104);
      v68 = 1;
      do
      {
        if (*(v67 - 5) == 36)
        {
          v69 = *v67;
          v70 = marker_getMarkerArgStr(9u);
          result = strcmp(v69, v70);
          if (!result || (v71 = *v67, v72 = marker_getMarkerArgStr(0xAu), result = strcmp(v71, v72), !result))
          {
            *(v67 - 5) = 999;
          }
        }

        ++v68;
        v67 += 8;
      }

      while (v68 < *a4);
      v52 = v68;
    }

    *a4 = v52;
  }

  else
  {
    v52 = *a4;
  }

  if (v52 >= 2)
  {
    v53 = 1;
    v54 = 1;
    while (1)
    {
      v55 = (a3 + (v53 << 6));
      if (*(v55 + 5) != 36)
      {
        goto LABEL_57;
      }

      v56 = v53 - 1;
      if (v53 == 1)
      {
        break;
      }

      while (1)
      {
        v57 = a3 + (v56 << 6);
        if (*(v57 + 20) == 36)
        {
          break;
        }

        if (!--v56)
        {
          goto LABEL_58;
        }
      }

      result = strcmp(*(v55 + 5), *(v57 + 40));
      if (!result)
      {
        break;
      }

      v58 = *(v57 + 32);
      if (*(v55 + 8) != v58)
      {
        break;
      }

      if (*v57 && (*v57 != 1 || v58 != *(a3 + 32)))
      {
        v64 = *v55;
        v65 = v55[1];
        v66 = v55[3];
        *(v57 + 32) = v55[2];
        *(v57 + 48) = v66;
        *v57 = v64;
        *(v57 + 16) = v65;
        goto LABEL_60;
      }

      if (!*v55)
      {
        *(v57 + 20) = 999;
LABEL_57:
        v59 = v54;
LABEL_59:
        v60 = (a3 + (v59 << 6));
        v61 = *v55;
        v62 = v55[1];
        v63 = v55[3];
        v60[2] = v55[2];
        v60[3] = v63;
        *v60 = v61;
        v60[1] = v62;
        ++v54;
      }

LABEL_60:
      if (++v53 >= *a4)
      {
        goto LABEL_64;
      }
    }

LABEL_58:
    v59 = v54;
    goto LABEL_59;
  }

  v54 = 1;
LABEL_64:
  *a4 = v54;
  return result;
}

uint64_t wordpar_loc_asian_deleteMarkerForUnknown(uint64_t result, unsigned __int16 *a2)
{
  if (*a2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = (v3 + (v4 << 6));
      v6 = v5[1];
      v18 = *v5;
      v19 = v6;
      v7 = v5[3];
      v20 = v5[2];
      v21 = v7;
      result = wordpar_loc_asian_isMarkerUnknown(&v18);
      v8 = *a2;
      if (result)
      {
        if (!*a2)
        {
          return result;
        }

        v9 = 0;
        do
        {
          v10 = v3 + (v9 << 6);
          if (*(v10 + 20) == 36 && (v11 = *(v10 + 40), MarkerArgStr = marker_getMarkerArgStr(9u), result = strcmp(v11, MarkerArgStr), result) && *v10 == 1 && (result = v3 + (v4 << 6), *(result + 32) == *(v10 + 32)))
          {
            result = memmove(result, (result + 64), (*a2 - v4) << 6);
            v8 = *a2 - 1;
            *a2 = v8;
            v4 -= v9 <= v4;
          }

          else
          {
            ++v9;
            v8 = *a2;
          }
        }

        while (v9 < v8);
      }

      ++v4;
    }

    while (v4 < v8);
    if (v8)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = v3 + (v13 << 6);
        if (*(v15 + 20) != 36)
        {
          goto LABEL_24;
        }

        v16 = *(v15 + 16);
        v18 = *v15;
        v19 = v16;
        v17 = *(v15 + 48);
        v20 = *(v15 + 32);
        v21 = v17;
        result = wordpar_loc_asian_isMarkerUnknown(&v18);
        if (result)
        {
          ++v13;
        }

        else
        {
          if (!*v15)
          {
            v14 = 0;
LABEL_24:
            ++v13;
            continue;
          }

          if (!v14)
          {
            goto LABEL_24;
          }

          result = memmove((v3 + (v13 << 6)), (v15 + 64), (*a2 - v13) << 6);
          --*a2;
        }

        v14 = 1;
      }

      while (v13 < *a2);
    }
  }

  return result;
}

char *wordpar_loc_asian_deleteConflictingLangMarker(char *result, _WORD *a2, const char *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v6 = result;
    v7 = 0;
    v8 = result + 20;
    do
    {
      if (*v8 == 36)
      {
        v9 = *(v8 + 20);
        MarkerArgStr = marker_getMarkerArgStr(0xBu);
        result = strcmp(v9, MarkerArgStr);
        if (!result)
        {
          v26 = *(v8 - 5);
          v11 = 1;
          if (!*a2)
          {
            return result;
          }

          goto LABEL_10;
        }

        v3 = *a2;
      }

      ++v7;
      v8 += 64;
    }

    while (v7 < v3);
    v11 = 0;
    v7 = 0;
    v26 = 0;
    if (!v3)
    {
      return result;
    }

LABEL_10:
    v12 = 0;
    v13 = 0;
    v14 = &v6[64 * v7];
    do
    {
      v15 = &v6[64 * v12];
      if (*(v15 + 5) == 36)
      {
        v16 = *(v15 + 5);
        v17 = marker_getMarkerArgStr(1u);
        result = strcmp(v16, v17);
        if (result)
        {
          result = strcmp(v16, a3);
          if (result)
          {
            v18 = marker_getMarkerArgStr(2u);
            result = strcmp(v16, v18);
            if (result)
            {
              goto LABEL_29;
            }
          }
        }

        if (*v15)
        {
          if (v13)
          {
            if (!v11)
            {
              goto LABEL_29;
            }

            if (*(v14 + 5) == 36 && *(v15 + 5) == 36)
            {
              v19 = *(v14 + 5);
              v20 = *(v15 + 5);
              v21 = marker_getMarkerArgStr(0xBu);
              if (!strcmp(v19, v21))
              {
                v23 = marker_getMarkerArgStr(2u);
                v22 = strcmp(v20, v23) != 0;
              }

              else
              {
                v22 = 1;
              }

              v24 = marker_getMarkerArgStr(0xBu);
              result = strcmp(v19, v24);
              if (result)
              {
                if (v22)
                {
                  goto LABEL_27;
                }

LABEL_29:
                ++v12;
LABEL_30:
                v13 = 1;
                continue;
              }

              v25 = marker_getMarkerArgStr(1u);
              result = strcmp(v20, v25);
              if ((result | v26) == 0 || !v22)
              {
                goto LABEL_29;
              }
            }

LABEL_27:
            result = memmove(&v6[64 * v12], v15 + 64, (*a2 - v12) << 6);
            --*a2;
            goto LABEL_30;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      ++v12;
    }

    while (v12 < *a2);
  }

  return result;
}

uint64_t wordpar_loc_asian_RemoveBlankLatinRegions(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  if (*a2 < 2u)
  {
    goto LABEL_58;
  }

  v5 = result;
  v6 = 1;
  do
  {
    v7 = v5 + (v6 << 6);
    if (*(v7 + 20) != 36)
    {
      goto LABEL_43;
    }

    v8 = *(v7 + 40);
    if (!v8)
    {
      goto LABEL_43;
    }

    MarkerArgStr = marker_getMarkerArgStr(2u);
    result = strcmp(v8, MarkerArgStr);
    if (result)
    {
      goto LABEL_43;
    }

    if (*v3 <= (v6 + 1))
    {
LABEL_30:
      v24 = v5 + (v6 << 6);
      v25 = (*(v24 + 32) - *(v5 + 32));
      if (v25 >= *(v5 + 36))
      {
        goto LABEL_37;
      }

      do
      {
        v26 = *(a3 + v25);
        v27 = (v26 < 0x21) & (0x100002600uLL >> v26);
        result = utf8_determineUTF8CharLength(v26);
        v25 = (result + v25);
      }

      while (v27 == 1 && v25 < *(v5 + 36));
      if (v27)
      {
LABEL_37:
        if (*v24 == 1)
        {
          v29 = v6 + 1;
          v3 = a2;
          v30 = *a2;
          if (v29 < v30)
          {
            result = memmove((v5 + (v6 << 6)), (v5 + (v29 << 6)), (v30 + ~v6) << 6);
            LOWORD(v30) = *a2;
          }

          v31 = v30 - 1;
          *a2 = v31;
          goto LABEL_44;
        }

        *(v24 + 20) = 999;
      }

      v3 = a2;
      goto LABEL_43;
    }

    v10 = (v6 + 1);
    v11 = 1;
    do
    {
      v12 = v5 + (v10 << 6);
      if (*(v12 + 20) == 36)
      {
        v13 = *(v12 + 40);
        if (v13)
        {
          v14 = marker_getMarkerArgStr(2u);
          result = strcmp(v13, v14);
          v11 = result == 0;
          v15 = 1;
          if (!result)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
        if (v11)
        {
          goto LABEL_27;
        }
      }

      v16 = (v5 + (v6 << 6));
      v17 = *(v5 + 32);
      v18 = (v16[8] - v17);
      if (v18 < *(v12 + 32) - v17)
      {
        do
        {
          v19 = *(a3 + v18);
          v20 = (v19 < 0x21) & (0x100002600uLL >> v19);
          result = utf8_determineUTF8CharLength(v19);
          v18 = (result + v18);
        }

        while (v20 == 1 && v18 < *(v12 + 32) - *(v5 + 32));
        if (!v20)
        {
          v11 = 0;
          goto LABEL_26;
        }
      }

      v22 = *(v12 + 28) + v16[7];
      *(v12 + 24) = v16[6];
      *(v12 + 28) = v22;
      v23 = *(v12 + 36) + v16[9];
      *(v12 + 32) = v16[8];
      *(v12 + 36) = v23;
      if (*v16 != 1)
      {
        v11 = 0;
        v16[5] = 999;
        v6 = v10;
LABEL_26:
        v3 = a2;
        goto LABEL_27;
      }

      v3 = a2;
      result = memmove((v5 + (v6 << 6)), v16 + 16, (*a2 + ~v6) << 6);
      v11 = 0;
      --*a2;
      v6 = v10;
LABEL_27:
      if (v15)
      {
        break;
      }

      ++v10;
    }

    while (v10 < *v3);
    if (!v15)
    {
      goto LABEL_30;
    }

LABEL_43:
    v31 = *v3;
LABEL_44:
    ++v6;
  }

  while (v6 < v31);
  if (v31 >= 2u)
  {
    v32 = 1;
    v33 = 1;
    while (1)
    {
      v34 = v5 + (v32 << 6);
      if (*(v34 + 20) == 36)
      {
        v35 = v32 - 1;
        if (v32 != 1)
        {
          while (1)
          {
            v36 = v5 + (v35 << 6);
            if (*(v36 + 20) == 36)
            {
              break;
            }

            if (!--v35)
            {
              goto LABEL_53;
            }
          }

          result = strcmp(*(v34 + 40), *(v36 + 40));
          if (!result)
          {
            if (*v34)
            {
              goto LABEL_54;
            }

            *(v34 + 20) = 999;
          }
        }
      }

LABEL_53:
      v37 = (v5 + (v33 << 6));
      v38 = *v34;
      v39 = *(v34 + 16);
      v40 = *(v34 + 48);
      v37[2] = *(v34 + 32);
      v37[3] = v40;
      *v37 = v38;
      v37[1] = v39;
      ++v33;
LABEL_54:
      if (++v32 >= *v3)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_58:
  v33 = 1;
LABEL_59:
  *v3 = v33;
  return result;
}

uint64_t wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers(uint64_t a1, _DWORD *a2, unsigned int a3, const char **a4)
{
  v4 = *a4;
  if (a3 < 2)
  {
LABEL_26:
    result = 0;
    *a4 = v4;
    return result;
  }

  v6 = a3;
  v7 = strlen(*a4);
  v8 = a2 + 40;
  v9 = 1;
  while (1)
  {
    v10 = a2[16 * v9 + 5];
    v11 = v9 + 1;
    v12 = v10 != 34 || v11 >= v6;
    v30 = v11;
    v31 = v8;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v9 = v30;
    v8 = v31 + 16;
    if (v30 == v6)
    {
      goto LABEL_26;
    }
  }

  v13 = v11;
  while (1)
  {
    v14 = &a2[16 * v13];
    v15 = v14[5];
    if (v15 == 21)
    {
      break;
    }

LABEL_23:
    if (++v13 < v6)
    {
      v8 += 16;
      if (v15 != 21)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  v16 = (v14[8] - a2[8]);
  v17 = v7 - v16;
  if (v7 <= v16)
  {
    goto LABEL_8;
  }

  v18 = v4[v16];
  v19 = v18 > 0x20;
  v20 = (1 << v18) & 0x100002600;
  if (!v19 && v20 != 0)
  {
    goto LABEL_8;
  }

  v22 = v7;
  v23 = heap_Realloc(*(a1 + 8), v4, v7 + 2);
  if (v23)
  {
    v4 = v23;
    v24 = v23;
    v25 = (v23 + v16);
    memmove(v25 + 1, v25, v17);
    *v25 = 32;
    v7 = v22 + 1;
    *(v24 + (v22 + 1)) = 0;
    v26 = v8;
    v27 = v13;
    do
    {
      if (v14[8] < *v26)
      {
        ++*v26;
      }

      ++v27;
      v26 += 16;
    }

    while (v27 < v6);
    ++a2[9];
    v15 = 21;
    goto LABEL_23;
  }

  return 2370838538;
}