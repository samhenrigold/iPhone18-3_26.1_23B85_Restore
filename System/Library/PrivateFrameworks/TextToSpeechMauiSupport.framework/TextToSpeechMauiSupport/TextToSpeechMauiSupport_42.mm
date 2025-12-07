uint64_t tolhp_lhp_ObjClose(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  heap_Free(*(v4 + 8), a2);
  return 0;
}

uint64_t tolhp_RewriteNts(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 16), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_RewriteSxms(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 24), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_RewriteIpa(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 32), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_Rewrite(void *a1, char *__s, char *a3, _WORD *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  else
  {
    *a4 = 0;
  }

  v8 = cstdlib_strlen(__s);
  result = 0;
  if (a1)
  {
    v10 = v8;
    if (v8)
    {
      if (__s)
      {
        for (i = __s; ; ++i)
        {
          if (*i == 32)
          {
            *i = 17;
          }

          else if (!*i)
          {
            break;
          }
        }
      }

      v12 = 0;
      while (1)
      {
        __sa = 0;
        LongestMatch = dct_FindLongestMatch(a1, &__s[v12], &__sa);
        if (LongestMatch < 1)
        {
          result = 0;
          *a4 = 0;
          return result;
        }

        v14 = LongestMatch;
        v15 = cstdlib_strlen(__sa);
        if (a3)
        {
          if (v15 + cstdlib_strlen(a3) + 1 > *a4)
          {
            return 2370838537;
          }

          cstdlib_strcat(a3, __sa);
        }

        else
        {
          *a4 += v15;
        }

        v12 += v14;
        if (v12 >= v10)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t dct_ObjOpen(const char *a1, _WORD *a2, int a3, uint64_t **a4)
{
  v19 = 0;
  v4 = 2370838535;
  if (!a4)
  {
    return 2370838535;
  }

  v18 = 0;
  if ((InitRsrcFunction(a2, a3, &v19) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  *a4 = 0;
  v7 = heap_Alloc(*(v19 + 8), 40);
  v8 = 2370838538;
  if (v7)
  {
    v9 = v7;
    cstdlib_memset(v7, 0, 0x28uLL);
    v10 = v19;
    *v9 = v19;
    v11 = *(v10 + 8);
    v12 = cstdlib_strlen(a1);
    v13 = heap_Alloc(v11, (v12 + 1));
    v9[1] = v13;
    if (!v13)
    {
      goto LABEL_13;
    }

    cstdlib_strcpy(v13, a1);
    v20 = 0;
    if (*v9)
    {
      Object = objc_GetObject(*(*v9 + 48), "FE_DCTLKP", &v20);
      if ((Object & 0x80000000) == 0)
      {
        v15 = v20;
        v16 = *(v20 + 8);
        v9[2] = v16;
        *(v9 + 3) = *(v15 + 16);
        v8 = (*(v16 + 72))(v9[3], v9[4], a1, &v18);
        if ((v8 & 0x80000000) == 0)
        {
          if (v18)
          {
            *a4 = v9;
            return v8;
          }

          v8 = 2370838529;
        }

LABEL_13:
        dct_ObjClose(v9);
        return v8;
      }

      v4 = Object;
    }

    v8 = v4;
    goto LABEL_13;
  }

  return v8;
}

uint64_t dct_ObjClose(uint64_t *a1)
{
  result = 2370838535;
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      if (a1[2])
      {
        objc_ReleaseObject(*(v3 + 48), "FE_DCTLKP");
        a1[2] = 0;
        a1[3] = 0;
        *(a1 + 8) = 0;
        v3 = *a1;
      }

      v4 = a1[1];
      if (v4)
      {
        heap_Free(*(v3 + 8), v4);
        v3 = *a1;
      }

      heap_Free(*(v3 + 8), a1);
      return 0;
    }
  }

  return result;
}

uint64_t dct_ObjReopen(const char **a1, const char *a2)
{
  v2 = 2370838535;
  if (a1 && a2)
  {
    v5 = cstdlib_strlen(a1[1]);
    v6 = cstdlib_strlen(a2);
    v7 = a1[1];
    if (v5 < v6)
    {
      v8 = *(*a1 + 1);
      v9 = cstdlib_strlen(a2);
      v10 = heap_Realloc(v8, v7, (v9 + 1));
      if (!v10)
      {
        return 2370838538;
      }

      v7 = v10;
      a1[1] = v10;
    }

    cstdlib_strcpy(v7, a2);
    return 0;
  }

  return v2;
}

uint64_t dct_FindLongestMatch(void *a1, char *__s, void *a3)
{
  result = 0;
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  if (a1 && __s && a3)
  {
    *a3 = 0;
    v7 = cstdlib_strlen(__s);
    if (v7)
    {
      if (v7 <= 0xAu)
      {
        v8 = v7;
      }

      else
      {
        v8 = 10;
      }

      v9 = v8;
      v10 = v8;
      cstdlib_memmove(__dst, __s, v8);
      if (v9)
      {
        v11 = v10;
        while (1)
        {
          __dst[v11] = 0;
          v14 = 1;
          if (((*(a1[2] + 96))(a1[3], a1[4], a1[1], __dst, &v15, &v14, &v16) & 0x80000000) != 0)
          {
            break;
          }

          v12 = v11 - 1;
          if (v11 != 1)
          {
            --v11;
            if (!v14)
            {
              continue;
            }
          }

          if (!v14)
          {
            break;
          }

LABEL_20:
          *a3 = *v15;
          return (v12 + 1);
        }
      }

      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v13) & 0x80000000) == 0)
      {
        cstdlib_memmove(__dst, __s, v10);
        if (v10)
        {
          while (1)
          {
            __dst[v10] = 0;
            v14 = 0;
            if (((*(a1[2] + 96))(a1[3], a1[4], a1[1], __dst, &v15, &v14, &v16) & 0x80000000) != 0)
            {
              break;
            }

            v12 = v10 - 1;
            if (v10 >= 2)
            {
              --v10;
              if (!v14)
              {
                continue;
              }
            }

            if (!v14)
            {
              return 0;
            }

            goto LABEL_20;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t textpar_AllTextProcessed(uint64_t a1)
{
  v3 = 0;
  if (!a1)
  {
    return 1;
  }

  v1 = 1;
  if ((datac_RequestBlock(*(a1 + 16), 1010, 1u, &v3) & 0x80000000) == 0)
  {
    return *(v3 + 20);
  }

  return v1;
}

uint64_t textpar_ClearOutputDataContainers(uint64_t *a1)
{
  v7 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  v2 = datac_RequestBlock(a1[2], 1011, 1u, &v7);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v7;
    if (*(v7 + 16) >= 2u)
    {
      v4 = (*(v7 + 8) + 112);
      v5 = 1;
      do
      {
        if (*v4)
        {
          heap_Free(*(*a1 + 8), *v4);
          *v4 = 0;
          v3 = v7;
        }

        ++v5;
        v4 += 8;
      }

      while (v5 < *(v3 + 16));
    }

    *(v3 + 16) = 0;
  }

  return v2;
}

uint64_t textpar_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v5 = 2368741376;
  if (!a1)
  {
    return 2368741383;
  }

  v32 = 0;
  v11 = (*(*(a1 + 24) + 136))(a2, a3, &v32);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, "start textpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, "start textpar_WriteTextAndMarkers()");
  v11 = datac_RequestBlock(*(a1 + 16), 1010, 1u, &v31);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v12 = *(v31 + 16);
  if (*(v31 + 16))
  {
    v11 = (*(*(a1 + 24) + 104))(a2, a3, *(v31 + 8), *(v31 + 2) * v12);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    *(v31 + 16) = 0;
  }

  if ((datac_RequestBlock(*(a1 + 16), 1012, 1u, &v31) & 0x80000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v31 + 8);
  }

  v11 = datac_RequestBlock(*(a1 + 16), 1011, 1u, &v30);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v14 = *(v30 + 16);
  if (*(v30 + 16))
  {
    v15 = *(v30 + 8);
    if (*(v15 + 20) == 0x4000)
    {
      if (v12)
      {
        v16 = 0;
        v32 = *(v15 + 32) - v32;
      }

      else
      {
        v17 = marker_CheckForEmptyMarkers(v13, *(a1 + 76), v15, v14, 0, 0, 0);
        v16 = v17 == 1;
        v14 = *(v30 + 16);
        v32 = *(v15 + 32) - v32;
        if (!v14)
        {
          if (v17 == 1)
          {
            goto LABEL_31;
          }

          LODWORD(v25) = 0;
LABEL_30:
          marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, "at end()", 1, v15, v25);
          v11 = (*(*(a1 + 24) + 104))(a4, a5, v15, (v25 << 6));
          if ((v11 & 0x80000000) == 0)
          {
LABEL_31:
            v26 = textpar_ClearOutputDataContainers(a1);
            return v26 & (v26 >> 31);
          }

          return v11;
        }
      }

      v29 = v16;
      v18 = v14;
      v19 = (v15 + 32);
      do
      {
        *v19 -= v32;
        v19 += 16;
        --v18;
      }

      while (v18);
      v20 = 0;
      v21 = (v15 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v21 - 5)))
        {
          v22 = *v21;
          if (v13)
          {
            v23 = v22 == 0xFFFFFFFFLL;
          }

          else
          {
            v23 = 1;
          }

          v24 = v13 + v22;
          if (v23)
          {
            v24 = 0;
          }

          *v21 = v24;
        }

        ++v20;
        v25 = *(v30 + 16);
        v21 += 8;
      }

      while (v20 < v25);
      if (!v12)
      {
        if (v25 == 1)
        {
          v28 = v29;
          if (*(v15 + 20) == 0x4000)
          {
            v28 = 1;
          }

          if (v28)
          {
            goto LABEL_31;
          }

          LODWORD(v25) = 1;
        }

        else if (v29)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }
  }

  return v5;
}

uint64_t textpar_CheckForEOF(void *a1, _DWORD *a2, _DWORD *a3)
{
  v9 = 0;
  result = (*(a1[3] + 144))(a1[4], a1[5], &v9 + 4, &v9);
  if ((result & 0x80000000) == 0)
  {
    v6 = v9;
    v7 = HIDWORD(v9);
    if (a2 && a3)
    {
      *a2 = HIDWORD(v9);
      *a3 = v6;
    }

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    if (v8)
    {
      return result;
    }

    else
    {
      return 2368741399;
    }
  }

  return result;
}

uint64_t textpar_ClassOpen(_WORD *a1, uint64_t a2, uint64_t **a3)
{
  v9 = 0;
  if ((InitRsrcFunction(a1, a2, &v9) & 0x80000000) != 0)
  {
    return 2368741383;
  }

  v6 = heap_Calloc(*(v9 + 8), 1, 16);
  if (!v6)
  {
    return 10;
  }

  *v6 = v9;
  *a3 = v6;
  v7 = escseqs_ClassOpen(a1, a2, v6 + 1);
  if ((v7 & 0x80000000) != 0)
  {
    textpar_ClassClose(*a3);
  }

  return v7;
}

uint64_t textpar_ClassClose(uint64_t *a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *a1;
  v3 = escseqs_ClassClose(a1[1]);
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v2 + 8), a1);
  }

  return v3;
}

uint64_t textpar_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v24 = 0;
  v22 = 0;
  v6 = 2368741383;
  if (a1)
  {
    if (a5)
    {
      v23 = 0uLL;
      if ((InitRsrcFunction(a2, a3, &v24) & 0x80000000) == 0)
      {
        *a5 = 0;
        v13 = heap_Alloc(*(v24 + 8), 120);
        if (v13)
        {
          v14 = v13;
          cstdlib_memset(v13, 0, 0x78uLL);
          v15 = v24;
          *v14 = v24;
          v14[1] = a1;
          v14[3] = a4;
          v14[11] = 0;
          *(v14 + 19) = 0;
          *(v14 + 29) = a6;
          if (paramc_ParamGetUInt(*(v15 + 40), "ppmaxpcreframeblocks", &v22) < 0)
          {
            v16 = 30;
          }

          else
          {
            v16 = v22;
          }

          if (paramc_ParamGetUInt(*(v24 + 40), "ppnumframesinblock", &v22) < 0)
          {
            v17 = 50;
          }

          else
          {
            v17 = v22;
          }

          v18 = extdata_ObjOpen(a2, a3, v14 + 11, 211);
          if ((v18 & 0x80000000) != 0 || (v14[12] = 0, *(v14 + 26) = 0, v18 = nuance_pcre_ObjOpen(a2, a3, &v23), (v18 & 0x80000000) != 0) || (v18 = nuance_pcre_Init(v23, *(&v23 + 1), v16, v17), (v18 & 0x80000000) != 0) || (*(v14 + 6) = v23, v18 = escseqs_ObjOpen(*(v14[1] + 8), a2, a3, v14[12], v14[13], v14 + 10), (v18 & 0x80000000) != 0) || (v18 = datac_ObjOpen(a2, a3, v14 + 2, 211), (v18 & 0x80000000) != 0))
          {
            v6 = v18;
          }

          else
          {
            v19 = &word_26ECDBFA2;
            v20 = 4;
            while (1)
            {
              v6 = datac_RegisterBlock(v14[2], *(v19 - 2), *(v19 - 1), *v19);
              if ((v6 & 0x80000000) != 0)
              {
                break;
              }

              v19 += 3;
              if (!--v20)
              {
                *a5 = v14;
                return v6;
              }
            }
          }

          textpar_ObjClose(v14);
        }

        else
        {
          return 2368741386;
        }
      }
    }
  }

  return v6;
}

uint64_t textpar_ObjClose(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v3)
  {
    datac_ObjClose(v3);
    a1[2] = 0;
  }

  v4 = a1[11];
  if (v4)
  {
    extdata_ObjClose(v4);
    a1[11] = 0;
  }

  v5 = a1[10];
  if (v5)
  {
    escseqs_ObjClose(v5);
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(a1[12], a1[13], NullHandle, v7))
  {
    nuance_pcre_DeInit(a1[12], a1[13]);
    nuance_pcre_ObjClose(a1[12], a1[13]);
    a1[12] = 0;
    *(a1 + 26) = 0;
  }

  ppParam_ClearAllPPParameters(v2);
  heap_Free(*(v2 + 8), a1);
  return 0;
}

uint64_t textpar_ObjReopen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2368741383;
  v12 = 0;
  __s1 = 0;
  if (a3)
  {
    v11 = 0;
    if ((InitRsrcFunction(a1, a2, &v12) & 0x80000000) == 0)
    {
      v7 = v12;
      *a3 = v12;
      if ((paramc_ParamGetStr(*(v7 + 40), "component_stop_not_reset", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
      {
        escseqs_SetPosInOut(a3[10], 0, 0);
        paramc_ParamSetStr(*(v12 + 40), "component_stop_not_reset", "");
      }

      v8 = extdata_FreeData(a3[11]);
      if ((v8 & 0x80000000) != 0 || (escseqs_GetPosInOut(a3[10], &v11 + 1, &v11), a3[10]) && (v8 = escseqs_ObjClose(a3[10]), (v8 & 0x80000000) != 0))
      {
        v3 = v8;
      }

      else
      {
        v3 = escseqs_ObjOpen(*(a3[1] + 8), a1, a2, a3[12], a3[13], a3 + 10);
        if ((v3 & 0x80000000) == 0)
        {
          escseqs_SetPosInOut(a3[10], SHIDWORD(v11), v11);
          return v3;
        }
      }

      textpar_ObjClose(a3);
    }
  }

  return v3;
}

uint64_t textpar_ProcessStart(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 112) = log_GetLogLevel(*(*a1 + 32)) > 4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  result = escseqs_ProcessStart(*(a1 + 80), (a1 + 76));
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamSetUInt(*(*a1 + 40), "ppspellpausevalue", *(a1 + 76));
    if ((result & 0x80000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        result = datac_RequestBlock(*(a1 + 16), aMETA[v5], 1u, &v7);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v5 += 3;
        v6 = v7;
        *(v7 + 16) = 0;
        *(v6 + 20) = 0;
        if (v5 == 12)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t textpar_Process(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 116) || (*(a1 + 56) = 0, *(a1 + 64) = 0, *(a1 + 72) = 0, v2 = escseqs_ProcessStart(*(a1 + 80), (a1 + 76)), (v2 & 0x80000000) == 0))
    {
      v39 = 0;
      if (*(a1 + 56))
      {
        for (i = 0; i != 3; ++i)
        {
          v4 = datac_RequestBlock(*(a1 + 16), aTAG[i], 1u, &v39);
          if (i != 2 && (v4 & 0x80000000) == 0)
          {
            *(v39 + 16) = 0;
          }
        }

        goto LABEL_23;
      }

      v2 = datac_RequestBlock(*(a1 + 16), 1011, 1u, &v39);
      if ((v2 & 0x80000000) == 0)
      {
        v6 = v39;
        if (*(v39 + 16) >= 2u)
        {
          v7 = (*(v39 + 8) + 112);
          v8 = 1;
          do
          {
            if (*v7)
            {
              heap_Free(*(*a1 + 8), *v7);
              *v7 = 0;
              v6 = v39;
            }

            ++v8;
            v7 += 8;
          }

          while (v8 < *(v6 + 16));
        }

        for (j = 0; j != 4; ++j)
        {
          v10 = datac_RequestBlock(*(a1 + 16), aAllTAG[j], 1u, &v39);
          if (j != 3 && (v10 & 0x80000000) == 0)
          {
            *(v39 + 16) = 0;
          }
        }

LABEL_23:
        v2 = textpar_CheckForEOF(a1, 0, 0);
        if ((v2 & 0x80000000) == 0)
        {
          v11 = "entering textpar_loc_GetTextBlock(bBlockHasBeenRead=%d,bBlockMoreTextRequest=%d,bMoreTextRequest=%d)";
          v12 = "AFTER textpar_loc_GetTextBlock";
          v13 = "BEFORE escseqs_Process TEXTPAR_OUT_MRK_BLOCK";
          v14 = "BEFORE escseqs_Process TEXTPAR_OUT_TXT_BLOCK";
          v15 = "AFTER escseqs_Process TEXTPAR_OUT_MRK_BLOCK";
          while (1)
          {
            v39 = 0;
            log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, v11, *(a1 + 56), *(a1 + 72), *(a1 + 68));
            if (!*(a1 + 56) || !*(a1 + 72) && *(a1 + 68) == 1)
            {
              __n = 0;
              v16 = *(a1 + 60);
              v2 = (*(*(a1 + 24) + 88))(*(a1 + 32), *(a1 + 40), a1 + 48, a1 + 60);
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }

              *(a1 + 56) = 1;
              log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "pfReadDirectStart returns cTextBytesInStream %u bytes", *(a1 + 60));
              UInt = paramc_ParamGetUInt(*(*a1 + 40), "ppresetlen", &__n);
              if ((UInt & 0x1FFF) == 0x14)
              {
                v18 = 0;
                LODWORD(__n) = 0;
              }

              else
              {
                v5 = UInt;
                if ((UInt & 0x80000000) != 0)
                {
                  return v5;
                }

                v18 = __n;
              }

              log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "SSFT_PARAMC_PP_RESETLEN len is %u bytes", v18);
              if (__n)
              {
                v2 = (*(*(a1 + 24) + 136))(*(a1 + 32), *(a1 + 40), &__n + 4);
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }

                log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "pfGetPosition is %u bytes - sync marker position", HIDWORD(__n));
                if (!*(a1 + 68))
                {
                  v2 = escseqs_SetMarkerSyncPos(*(a1 + 80), SHIDWORD(__n));
                  if ((v2 & 0x80000000) != 0)
                  {
                    return v2;
                  }
                }
              }

              else
              {
                v2 = escseqs_SetReset(*(a1 + 80));
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }
              }

              if (*(a1 + 68) == 1 && v16 && v16 == *(a1 + 60))
              {
                *(a1 + 72) = 1;
              }

              else
              {
                *(a1 + 68) = 0;
              }
            }

            v2 = datac_RequestBlock(*(a1 + 16), 1000, 1u, &v39);
            if ((v2 & 0x80000000) != 0)
            {
              return v2;
            }

            v19 = *(a1 + 60);
            if (*(v39 + 20))
            {
              break;
            }

            v20 = *(a1 + 64);
            v21 = v19 - v20;
            if (v19 == v20)
            {
              if (!*(a1 + 72) && !*(a1 + 68))
              {
                *(a1 + 68) = 1;
                if (!v19)
                {
                  return 2368743424;
                }

                if (!*(a1 + 116))
                {
                  return 2368743424;
                }

                v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40));
                if ((v2 & 0x80000000) == 0)
                {
                  return 2368743424;
                }

                return v2;
              }

              *(v39 + 20) = 1;
            }

            else
            {
              v22 = v11;
              v23 = v15;
              v24 = v14;
              v25 = v13;
              v26 = v12;
              if (*(a1 + 116))
              {
                v27 = v19 - v20;
              }

              else
              {
                v27 = 128;
              }

              v2 = datac_RequestBlock(*(a1 + 16), 1000, v27, &v39);
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }

              v28 = v39;
              if (*(v39 + 16))
              {
                v2 = datac_RequestBlock(*(a1 + 16), 1000, (*(v39 + 16) + v27), &v39);
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }

                v28 = v39;
              }

              v29 = *(v28 + 8);
              if (v21 <= v27)
              {
                HIDWORD(__n) = v21;
              }

              else
              {
                HIDWORD(__n) = v27;
                utf8_GetPreviousValidUtf8Offset(*(a1 + 48) + *(a1 + 64), &__n + 1);
                log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "adjust bytes read to align with character boundary (IN=%d, OUT=%d)", v27, HIDWORD(__n));
                v28 = v39;
                v21 = HIDWORD(__n);
              }

              v12 = v26;
              cstdlib_memcpy((v29 + *(v28 + 16)), (*(a1 + 48) + *(a1 + 64)), v21);
              if (!utf8_CheckValid(v29 + *(v39 + 16), HIDWORD(__n)))
              {
                log_OutPublic(*(*a1 + 32), "PP_TEXT_PARSER", 1933, "%s%s", "Invalid UTF-8 character sequence discovered", (v29 + *(v39 + 16)));
                return 2368741637;
              }

              v13 = v25;
              v30 = WORD2(__n);
              *(a1 + 64) += HIDWORD(__n);
              *(v39 + 16) += v30;
              v14 = v24;
              v15 = v23;
              v11 = v22;
            }

            if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)) && !*(a1 + 68))
            {
              log_OutTraceTuningDataBinary(*(*a1 + 32), 32, "", "text/plain;charset=utf-8", *(a1 + 48), *(a1 + 60));
            }

            if (*(a1 + 116) == 1)
            {
              *(*(a1 + 48) + *(a1 + 64)) = 0;
              v2 = paramc_ParamSetStr(*(*a1 + 40), "rettt_rewritten_text", *(a1 + 48));
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }
            }

            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1000, v12);
            marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, v13, 0, 0, 0);
            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, v14);
            v5 = escseqs_Process(*(a1 + 80), *(a1 + 16));
            marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, v15, 0, 0, 0);
            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, "AFTER escseqs_Process TEXTPAR_OUT_TXT_BLOCK");
            if ((v5 & 0x1FFF) != 9)
            {
              if ((v5 & 0x80000000) != 0)
              {
                return v5;
              }

              v39 = 0;
              v2 = datac_RequestBlock(*(a1 + 16), 1010, 1u, &v39);
              if ((v2 & 0x80000000) == 0)
              {
                if (*(v39 + 16) && *(a1 + 112) == 1)
                {
                  if (*(v39 + 16) >= 0x400u)
                  {
                    v31 = 1024;
                  }

                  else
                  {
                    v31 = *(v39 + 16);
                  }

                  v32 = heap_Calloc(*(*a1 + 8), 1, (v31 + 1));
                  if (!v32)
                  {
                    return 2368741386;
                  }

                  v33 = v32;
                  cstdlib_strncpy(v32, *(v39 + 8), v31);
                  *(v33 + v31) = 0;
                  v34 = "";
                  if (*(v39 + 16))
                  {
                    v34 = v33;
                  }

                  log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "(Txt) (text processed) (tag=%d) len=%d (UTF8 *) %s", 1010, *(v39 + 16), v34);
                  heap_Free(*(*a1 + 8), v33);
                }

                v35 = *(a1 + 16);
                v39 = 0;
                v2 = datac_RequestBlock(v35, 1011, 1u, &v39);
                if ((v2 & 0x80000000) == 0)
                {
                  v2 = marker_loc_FilterSyncMarkers(v39);
                  if ((v2 & 0x80000000) == 0)
                  {
                    if (!*(a1 + 116))
                    {
                      return 0;
                    }

                    v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40), *(a1 + 60));
                    if ((v2 & 0x80000000) == 0)
                    {
                      return 0;
                    }
                  }
                }
              }

              return v2;
            }
          }

          if (!v19 || (v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40)), (v2 & 0x80000000) == 0))
          {
            v36 = ppParam_ClearAllPPParameters(*a1);
            if (v36 < 0)
            {
              return v36;
            }

            else
            {
              return 2368741399;
            }
          }
        }
      }
    }

    return v2;
  }

  return 2368741383;
}

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
        cstdlib_memset(v13, 0, 0x60uLL);
        *v14 = a3;
        *(v14 + 8) = a4;
        *(v14 + 88) = 0;
        *(v14 + 16) = a1;
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
      log_OutText(v4, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ProcessStop");
    }

    v5 = textpar_ProcessEnd();
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    v5 = pp_text_parser_loc_CloseOutStreams(a1);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    v6 = a1[4];
    if (!v6)
    {
      return 0;
    }

    v5 = (*(a1[3] + 9))(v6, a1[5]);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
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
    result = paramc_ParamRemove(*(a1 + 40), off_279DADC10[v2]);
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
  v30[2] = *MEMORY[0x277D85DE8];
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
        v14 = &off_279DADC40;
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
            v20 = cstdlib_strlen(v19);
            v21 = heap_Calloc(*(*a1 + 8), 1, v20 + 1);
            if (!v21)
            {
              return 2369789962;
            }

            v22 = v21;
            cstdlib_strncpy(v21, v19, v20);
            v22[v20] = 0;
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
    for (j = &off_279DADC40; ; j += 2)
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

uint64_t sentpar_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v20 = 0;
  v19 = 0;
  v5 = 2369789959;
  if (a4 && (InitRsrcFunction(a1, a2, &v20) & 0x80000000) == 0)
  {
    *a4 = 0;
    v11 = heap_Alloc(*(v20 + 8), 256);
    if (v11)
    {
      v12 = v11;
      cstdlib_memset(v11, 0, 0x100uLL);
      *v12 = v20;
      v12[2] = a3;
      v12[28] = 0;
      *(v12 + 48) = 0;
      *(v12 + 98) = 0;
      *(v12 + 60) = a5;
      cstdlib_memset(v12 + 15, 0, 0x40uLL);
      *(v12 + 35) = 0;
      if (paramc_ParamGetUInt(*(v20 + 40), "ppmaxpcreframeblocks", &v19) < 0)
      {
        v13 = 30;
      }

      else
      {
        v13 = v19;
      }

      if (paramc_ParamGetUInt(*(v20 + 40), "ppnumframesinblock", &v19) < 0)
      {
        v14 = 50;
      }

      else
      {
        v14 = v19;
      }

      v15 = extdata_ObjOpen(a1, a2, v12 + 28, 212);
      if ((v15 & 0x80000000) == 0)
      {
        v12[26] = 0;
        *(v12 + 54) = 0;
        v15 = nuance_pcre_ObjOpen(a1, a2, (v12 + 26));
        if ((v15 & 0x80000000) == 0)
        {
          v15 = nuance_pcre_Init(v12[26], v12[27], v13, v14);
          if ((v15 & 0x80000000) == 0)
          {
            v15 = sentpar_loc_OpenParts(a1, a2, v12);
            if ((v15 & 0x80000000) == 0)
            {
              v15 = datac_ObjOpen(a1, a2, v12 + 1, 212);
              if ((v15 & 0x80000000) == 0)
              {
                v16 = &word_26ECDC04C;
                v17 = 6;
                while (1)
                {
                  v15 = datac_RegisterBlock(v12[1], *(v16 - 2), *(v16 - 1), *v16);
                  if ((v15 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v16 += 3;
                  if (!--v17)
                  {
                    *a4 = v12;
                    return sentpar_clearAllParameters(v20);
                  }
                }
              }
            }
          }
        }
      }

      v5 = v15;
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

uint64_t sentpar_loc_OpenParts(_WORD *a1, uint64_t a2, void *a3)
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

uint64_t sentpar_ObjReopen(_WORD *a1, uint64_t a2, void *a3)
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
      if ((paramc_ParamGetStr(*(v13 + 40), "pipelineswitchcomponent", &__s1) & 0x80000000) != 0 || !__s1 || (v3 = v8, !cstdlib_strcmp(__s1, "pp/sent_parser")))
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
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (!a2)
  {
    return 2369789959;
  }

  *(a2 + 24) = a3;
  *(a2 + 32) = a4;
  *(a2 + 40) = a5;
  *(a2 + 48) = a6;
  paramc_ParamSetUInt(*(*a2 + 40), "finalsentencefound", 0);
  v9 = paramc_ParamGetInt(*(a1 + 40), "eosdetection", &v15 + 1) < 0 || HIDWORD(v15) != 0;
  *(a2 + 232) = v9;
  if ((paramc_ParamGet(*(a1 + 40), "readmode", &v13, 0) & 0x80000000) == 0)
  {
    *(a2 + 196) = (*v13 - 48);
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
  if ((paramc_ParamGetUInt(*(a1 + 40), "ppreaddirectsize", &v15) & 0x80000000) == 0 && v15 >= 0x100)
  {
    *(a2 + 192) = v15;
  }

  if ((paramc_ParamGetUInt(*(a1 + 40), "ppspellpausevalue", (a2 + 188)) & 0x80000000) != 0)
  {
    *(a2 + 188) = 0;
  }

  v10 = 0;
  while (1)
  {
    result = datac_RequestBlock(*(a2 + 8), aMETA_0[v10], 1u, &v14);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v10 += 3;
    v12 = v14;
    *(v14 + 16) = 0;
    *(v12 + 20) = 0;
    if (v10 == 18)
    {
      result = sparser_ProcessStart(*(a2 + 200), *(a2 + 188));
      if ((result & 0x80000000) == 0)
      {
        result = 0;
        *(a2 + 244) = 0;
        *(a2 + 248) = 0;
      }

      return result;
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

  if ((paramc_ParamGetStr(*(v8 + 40), "pipelineswitchcomponent", &__s1) & 0x80000000) == 0 && __s1 && cstdlib_strcmp(__s1, "pp/sent_parser"))
  {
    cstdlib_memset((a1 + 120), 0, 0x40uLL);
    *(a1 + 140) = 0;
  }

  if ((paramc_ParamGetStr(*(v8 + 40), "component_stop", &v6) & 0x80000000) == 0 && v6)
  {
    cstdlib_memset((a1 + 120), 0, 0x40uLL);
    *(a1 + 140) = 0;
    paramc_ParamSetStr(*(v8 + 40), "component_stop", "");
  }

  if (!__s1)
  {
    cstdlib_memset((a1 + 120), 0, 0x40uLL);
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
  v74 = 0;
  v75 = 1;
  v72 = 0;
  v73 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  if (!a1)
  {
    return 2369789959;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_Process()");
  DWORD1(v69) = 0;
  if (*(a1 + 240))
  {
    *(a1 + 64) = 0;
    *(a1 + 112) = 0;
    *(a1 + 184) = 0;
    *(a1 + 84) = 0;
    *(a1 + 76) = 0;
    cstdlib_memset((a1 + 120), 0, 0x40uLL);
  }

  InputStreams = sentpar_loc_PrepareDataContainers(a1, *(a1 + 64));
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
    goto LABEL_10;
  }

  *&__src = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1010, 1u, &__src);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  if (*(__src + 20))
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

  v40 = *(a1 + 68);
  if (v40 == *(a1 + 76))
  {
    v41 = *(a1 + 104);
    if (v41 == *(a1 + 108))
    {
      if (*(a1 + 88) || *(a1 + 84))
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "FINISHED PROCESSING INPUT STREAM");
        v9 = sentpar_loc_FlushStreamsAndReturn(a1, a3, a4);
        goto LABEL_12;
      }

      *(a1 + 84) = 1;
      if (*(a1 + 240))
      {
        if (!v40)
        {
LABEL_97:
          if (v41)
          {
            InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48));
            if ((InputStreams & 0x80000000) != 0)
            {
              return InputStreams;
            }
          }

          goto LABEL_99;
        }

        InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32), v40);
        if ((InputStreams & 0x80000000) != 0)
        {
          return InputStreams;
        }

        if (*(a1 + 240))
        {
          v41 = *(a1 + 104);
          goto LABEL_97;
        }
      }

LABEL_99:
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "issue more text request (cTextBytesAvailable==0)- TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT");
      return 2369792000;
    }
  }

  InputStreams = sentpar_loc_ReadInputStreams(a1);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

LABEL_10:
  InputStreams = sentpar_loc_SetUpTextBlock(a1);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  v9 = sentpar_loc_SetUpMarkerBlocks(a1);
LABEL_12:
  v10 = v9;
  if ((v9 & 0x80000000) != 0)
  {
    return v10;
  }

  if (!*(a1 + 240) && !*(a1 + 88))
  {
    v42 = *(a1 + 68);
    if (v42 <= 0x1FF && v42 > *(a1 + 72))
    {
      *(a1 + 64) = 0;
      *(a1 + 84) = 1;
      *(a1 + 72) = v42;
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "issue more text request as text block received is less than SENTPAR_BLOCK_SIZE  - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT");
      return 2369792000;
    }
  }

  *(a1 + 72) = *(a1 + 68);
  v83[0] = 0;
  v81 = 0u;
  v82 = 0u;
  __src = 0u;
  v80 = 0u;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v77);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  v11 = *(v77 + 8);
  v10 = datac_RequestBlock(*(a1 + 8), 1012, 1u, &v76);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v60 = a4;
  if (!*(a1 + 240))
  {
    v62 = v11;
    v63 = 0;
    v59 = a2;
    v12 = 0;
    v13 = &off_279DADC40;
    v61 = *(v76 + 16);
    v14 = 4;
    while (1)
    {
      v15 = *(v13 - 2);
      if (v15 > 30)
      {
        if (v15 != 36)
        {
          if (v15 != 31)
          {
            goto LABEL_48;
          }

LABEL_25:
          v16 = *v13;
          UInt = paramc_ParamGetUInt(*(*a1 + 40), *v13, v83);
          if ((UInt & 0x1FFF) == 0x14)
          {
            v10 = 0;
            goto LABEL_48;
          }

          v10 = UInt;
          if ((UInt & 0x80000000) != 0)
          {
            goto LABEL_49;
          }

          log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "GET PARAM marker:%d param=%s val=%d", v15, v16, v83[0]);
          LODWORD(__src) = 1;
          DWORD1(v80) = v15;
          v21 = v77;
          v22 = *(v77 + 16);
          if (*(v77 + 16))
          {
            v22 = *(v62 + 24);
            v23 = *(v62 + 32);
          }

          else
          {
            v23 = 0;
          }

          *(&v80 + 1) = v22;
          *&v81 = v23;
          DWORD2(v81) = v83[0];
          DWORD2(v82) = 0;
          *&v82 = 0;
          goto LABEL_42;
        }
      }

      else
      {
        if (v15 == 7)
        {
          goto LABEL_25;
        }

        if (v15 != 21)
        {
          goto LABEL_48;
        }
      }

      v18 = *v13;
      Str = paramc_ParamGetStr(*(*a1 + 40), *v13, &v78);
      v20 = Str & 0x1FFF;
      if (v20 == 20)
      {
        v10 = 0;
      }

      else
      {
        v10 = Str;
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_49;
        }

        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "GET PARAM marker:%d param=%s val=%s", v15, v18, v78);
        v24 = cstdlib_strlen(v78);
        v25 = heap_Calloc(*(*a1 + 8), 1, v24 + 1);
        if (!v25)
        {
          return 2369789962;
        }

        v12 = v25;
        cstdlib_strncpy(v25, v78, v24);
        v12[v24] = 0;
        LODWORD(__src) = 1;
        DWORD1(v80) = v15;
        v26 = *(v77 + 16);
        if (*(v77 + 16))
        {
          v26 = *(v62 + 24);
          v27 = *(v62 + 32);
        }

        else
        {
          v27 = 0;
        }

        *(&v80 + 1) = v26;
        *&v81 = v27;
      }

      paramc_ParamRelease(*(*a1 + 40));
      v78 = 0;
      if (v20 == 20)
      {
        goto LABEL_48;
      }

      v21 = v77;
LABEL_42:
      v10 = datac_RequestBlock(*(a1 + 8), 1011, (*(v21 + 16) + 1), &v77);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_49;
      }

      v28 = *(v77 + 8);
      v29 = *(v77 + 16);
      v62 = v28;
      v30 = (v28 + (++v63 << 6));
      if (v29 > v63)
      {
        cstdlib_memmove(v30 + 16, (v28 + (v63 << 6)), (v29 - v63) << 6);
      }

      cstdlib_memcpy(v30, &__src, 0x40uLL);
      ++*(v77 + 16);
      if (v12)
      {
        v31 = cstdlib_strlen(v12);
        v10 = datac_RequestBlock(*(a1 + 8), 1012, (v31 + *(v76 + 16) + 1), &v76);
        if ((v10 & 0x80000000) != 0)
        {
          a2 = v59;
LABEL_50:
          heap_Free(*(*a1 + 8), v12);
          break;
        }

        v32 = *(v76 + 8);
        v30[10] = v61;
        v33 = cstdlib_strlen(v12);
        cstdlib_memcpy((v32 + v61), v12, v33);
        *(v32 + cstdlib_strlen(v12) + v61) = 0;
        v34 = v61 + cstdlib_strlen(v12);
        v61 = v34 + 1;
        *(v76 + 16) = v34 + 1;
        heap_Free(*(*a1 + 8), v12);
        v12 = 0;
      }

LABEL_48:
      v13 += 2;
      if (!--v14)
      {
LABEL_49:
        a2 = v59;
        if (!v12)
        {
          break;
        }

        goto LABEL_50;
      }
    }
  }

  if (v78)
  {
    paramc_ParamRelease(*(*a1 + 40));
  }

  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  *&__src = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1039, 1u, &__src);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  v35 = *(__src + 16);
  if (*(__src + 16))
  {
    v36 = *(__src + 8);
    v37 = *(v36 + ((v35 - 1) << 6) + 32);
    v38 = (a1 + 184);
    if (*(a1 + 184) > v37)
    {
      v37 = *(a1 + 184);
    }

    v39 = (v36 + 36);
    do
    {
      if (*v39 + *(v39 - 1) > v37)
      {
        v37 = *(v39 - 1);
      }

      v39 += 16;
      --v35;
    }

    while (v35);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_GetStartScanPos -> %d");
  }

  else
  {
    v38 = (a1 + 184);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_GetStartScanPos -> %d");
  }

  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "BEFORE sparser_ScanTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "BEFORE sparser_ScanTextElement", 0, 0, 0);
  if (*(a1 + 64) != 1 || *(a1 + 88) != 1 || *(a1 + 84) != 1)
  {
    InputStreams = sparser_PreScanTextElement(*(a1 + 200), *(a1 + 8), &v64);
    if ((InputStreams & 0x80000000) != 0)
    {
      return InputStreams;
    }

    if (v64 == 1 && !*(a1 + 240))
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
    v44 = 1;
    v75 = 1;
  }

  else
  {
    InputStreams = sparser_HasTextElementLeft(*(a1 + 200), *(a1 + 8), &v75, (a1 + 196));
    if ((InputStreams & 0x80000000) != 0)
    {
      return InputStreams;
    }

    v44 = v75;
    ScanPosition = *v38;
  }

  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "AFTER sparser_HasTextElementLeft bTextRemaining=%d pSentPar->startScanPos=%d", v44, ScanPosition);
  if (!v75)
  {
    v10 = sentpar_loc_Check2IssueMoreInputRequest(a1, &v66);
    if (v66 == 1)
    {
      LODWORD(__src) = 0;
      if ((paramc_ParamGetUInt(*(*a1 + 40), "disablefinalsentencesilence", &__src) & 0x80000000) == 0 && __src == 1)
      {
        paramc_ParamSetUInt(*(*a1 + 40), "finalsentencefound", 1);
      }
    }

    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }
  }

  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "BEFORE sparser_GetTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "BEFORE sparser_GetTextElement", 0, 0, 0);
  InputStreams = sparser_GetTextElement(*(a1 + 200), *(a1 + 8), &v74, &v73 + 1, &v73, a2, (a1 + 196), &v72 + 1, &v72, &v68, &v67 + 1, &v67);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  if (*(a1 + 236) == 1)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "AFTER sparser_GetTextElement");
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "currentReadMode = %d, *bImmediateVoiceSwitch=%d, bEndOnVoiceSwitch=%d", *(a1 + 196), *a2, v73);
    v45 = *(*a1 + 32);
    v47 = v72;
    v46 = HIDWORD(v72);
    String = marker_getString(SDWORD1(v69));
    log_OutText(v45, "PP_SENT_PARSER", 5, 0, "posRefOffset=%d, refReset=%d, pRefResetMrk.tag=%s, numBlanksTrimmed=%d u32AdjustedEscLen=%d", v46, v47, String, v67, HIDWORD(v73));
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "inputMarkersConsumed=%d", HIWORD(v67));
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
  v54 = v73;
  if (*a2 != 1 && v73 != 1)
  {
    InputStreams = sentpar_loc_CheckForEmptyOutput(a1, &v65 + 1, &v65);
    if ((InputStreams & 0x80000000) == 0)
    {
      if (v66 == 1 && v65 == 0x100000001)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bThereIsNoMoreInput && bEmptyText && bEmptyMarkers - flush and return");
        return sentpar_loc_FlushStreamsAndReturn(a1, a3, v60);
      }

      v54 = v73;
      goto LABEL_125;
    }

    return InputStreams;
  }

LABEL_125:
  v55 = *(a1 + 236);
  __src = v68;
  v80 = v69;
  v81 = v70;
  v82 = v71;
  InputStreams = sentpar_loc_UpdateTextAndMrkReadPosition(a1, SHIDWORD(v73), v55, v54, HIWORD(v67), v67, HIDWORD(v72), v72, &__src);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  __src = v68;
  v80 = v69;
  v81 = v70;
  v82 = v71;
  v10 = sentpar_loc_SavePersistentData(a1, HIDWORD(v72), v72, &__src);
  if ((v10 & 0x80000000) == 0)
  {
    if (*a2 == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bImmediateVoiceSwitch - immediate return");
    }

    else
    {
      if (v73 == 1)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bEndOnVoiceSwitch - continue processing");
      }

      v57 = sentpar_loc_FilterSyncMarkers(*(a1 + 8));
      return v57 & (v57 >> 31);
    }
  }

  return v10;
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
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_UpdateTextAndMrkReadPosition");
  v17 = datac_RequestBlock(a1[1], 1020, 1u, &v59);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = *(v59 + 16);
  v17 = datac_RequestBlock(a1[1], 1020, 1u, &v60);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  __src = *(v60 + 8);
  v55 = *(v60 + 16);
  v17 = datac_RequestBlock(a1[1], 1011, 1u, &v58);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v19 = datac_RequestBlock(a1[1], 1039, 1u, &v57);
  if ((v19 & 0x80000000) == 0)
  {
    v49 = v18;
    v50 = a7;
    v47 = a2;
    v48 = a4;
    v52 = a5;
    v51 = a8;
    if (*(v58 + 16))
    {
      v20 = 0;
      v53 = 0;
      v21 = *(v58 + 8);
      v22 = *(v57 + 8);
      do
      {
        v23 = (v21 + (v20 << 6));
        if (*v23 == 1 && v23[5] == 2)
        {
          v24 = -1;
          v25 = v22;
          while (1)
          {
            v26 = *(v57 + 16);
            if (++v24 >= v26)
            {
              break;
            }

            v27 = v25 + 64;
            v28 = cstdlib_memcmp((v21 + (v20 << 6)), v25, 0x40uLL);
            v25 = v27;
            if (!v28)
            {
              goto LABEL_23;
            }
          }

          v19 = datac_RequestBlock(a1[1], 1039, (v26 + 1), &v57);
          if ((v19 & 0x80000000) != 0)
          {
            return v19;
          }

          v22 = *(v57 + 8);
          v29 = *(v57 + 16);
          if (*(v57 + 16))
          {
            v30 = 0;
            v31 = v29 << 6;
            v32 = v22 + 64;
            while (*(v32 - 8) < v23[8])
            {
              ++v30;
              v32 += 16;
              v31 -= 64;
              if (!v31)
              {
                v30 = *(v57 + 16);
                v53 = *(v57 + 16);
                goto LABEL_22;
              }
            }

            v53 = v30;
            if (v29 != v30)
            {
              cstdlib_memcpy(v32, v32 - 16, v31);
            }
          }

          else
          {
            v30 = v53;
          }

LABEL_22:
          cstdlib_memcpy(&v22[64 * v30], (v21 + (v20 << 6)), 0x40uLL);
          ++*(v57 + 16);
        }

LABEL_23:
        ++v20;
      }

      while (v20 < *(v58 + 16));
    }

    if (a3 == 1 && v55)
    {
      if (v55 >= 0x400)
      {
        v33 = 1024;
      }

      else
      {
        v33 = v55;
      }

      v34 = heap_Calloc(*(*a1 + 8), 1, (v33 + 1));
      if (!v34)
      {
        return 2369789962;
      }

      v35 = v34;
      cstdlib_strncpy(v34, __src, v33);
      v35[v33] = 0;
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "(Txt) (text processed) (tag=%d) len=%d (UTF8 *) %s", 1011, v55, v35);
      heap_Free(*(*a1 + 8), v35);
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "(Mrk) (%d markers processed)", v52);
    }

    v36 = *(v60 + 2);
    v37 = (a6 + v36 * v49);
    if (v37)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "consume TXT Stream cTextBytesRead=%d", a6 + v36 * v49);
      v19 = (*(a1[2] + 96))(a1[3], a1[4], v37);
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v38 = a6 + (v49 + v47) * v36 + *(a1 + 20);
      *(a1 + 19) += v37;
      *(a1 + 20) = v38;
    }

    if (!v52)
    {
      goto LABEL_40;
    }

    v39 = (v52 << 6);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "MRK Stream cMarkerBytesProcessed=%d", v39);
    if (*(a1 + 27) >= 0x40u)
    {
      v40 = 0;
      v41 = 0;
      do
      {
        v42 = (a1[12] + (v41 << 6));
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "CONSUMED pInMrk[%d].tag %d %d,%d %d,%d", v40, v42[5], v42[6], v42[7], v42[8], v42[9]);
        v40 = ++v41;
      }

      while (v41 < *(a1 + 27) >> 6);
    }

    v19 = (*(a1[2] + 96))(a1[5], a1[6], v39);
    if ((v19 & 0x80000000) == 0)
    {
      *(a1 + 108) = vadd_s32(*(a1 + 108), vdup_n_s32(v39));
LABEL_40:
      if (v48 == 1 || *(a1 + 20) > *(a1 + 48))
      {
        v43 = a9[1];
        v56[0] = *a9;
        v56[1] = v43;
        v44 = a9[3];
        v56[2] = a9[2];
        v56[3] = v44;
        v19 = sentpar_loc_SavePersistentData(a1, v50, v51, v56);
        if ((v19 & 0x80000000) == 0)
        {
          v45 = *(*a1 + 32);
          if (v48 == 1)
          {
            log_OutText(v45, "PP_SENT_PARSER", 5, 0, "!! bEndOnVoiceSwitch - RESET");
          }

          else
          {
            log_OutText(v45, "PP_SENT_PARSER", 5, 0, "!! cSTREAMTextBytesProcessed %d > pSentPar->cReadDirectSize %d - RESET");
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
  v14 = 0;
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

  v12 = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v14);
  if ((v12 & 0x80000000) == 0 && *(v14 + 16))
  {
    cstdlib_memcpy((a1 + 120), *(v14 + 8), 0x40uLL);
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
  v30 = 0;
  v31 = 0;
  v5 = 2369789952;
  if (!a1)
  {
    return 2369789959;
  }

  v32 = 0;
  Object = (*(*(a1 + 16) + 136))(a2, a3, &v32);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "start sentpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1020, "start sentpar_WriteTextAndMarkers()");
  Object = datac_RequestBlock(*(a1 + 8), 1020, 1u, &v31);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  v12 = *(v31 + 16);
  if (*(v31 + 16))
  {
    Object = (*(*(a1 + 16) + 104))(a2, a3, *(v31 + 8), *(v31 + 2) * v12);
    if ((Object & 0x80000000) != 0)
    {
      return Object;
    }

    if (!*(a1 + 240))
    {
      v29 = 0;
      Object = objc_GetObject(*(*a1 + 48), "CHARCOUNT", &v29);
      if ((Object & 0x80000000) != 0)
      {
        return Object;
      }

      (*(v29[1] + 56))(v29[2], v29[3], *(v31 + 8), *(v31 + 2) * *(v31 + 16));
      objc_ReleaseObject(*(*a1 + 48), "CHARCOUNT");
    }

    *(v31 + 16) = 0;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if ((datac_RequestBlock(*(a1 + 8), 1012, 1u, &v31) & 0x80000000) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v31 + 8);
  }

  Object = datac_RequestBlock(*(a1 + 8), 1021, 1u, &v30);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  v15 = *(v30 + 16);
  if (*(v30 + 16))
  {
    v16 = *(v30 + 8);
    if (*(v16 + 20) == 0x4000)
    {
      if (v12)
      {
        v17 = 0;
        v32 = *(v16 + 32) - v32;
      }

      else
      {
        v17 = marker_CheckForEmptyMarkers(v14, *(a1 + 188), v16, v15, *(a1 + 96), (*(a1 + 104) >> 6), (*(a1 + 108) >> 6));
        v18 = v30;
        v15 = *(v30 + 16);
        v32 = *(v16 + 32) - v32;
        if (!v15)
        {
LABEL_33:
          if (!*(a1 + 240))
          {
            sentpar_loc_Align(a1, v18);
          }

          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "at end(internal only)", 0, 0, 0);
          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "at end()", 1, 0, 0);
          v26 = v30;
          log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_writeMarkersToOutputStream(bNoSignificantMarkers=%d bTextOut=%d)", v17, v13);
          v27 = *(v26 + 16);
          if (!v12)
          {
            if (v27 == 1)
            {
              if (v17 == 1 || *(v16 + 20) == 0x4000)
              {
                return 0;
              }

              LOWORD(v27) = 1;
            }

            else if (v17 == 1)
            {
              return 0;
            }
          }

          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "markers output()", 1, v16, v27);
          Object = (*(*(a1 + 16) + 104))(a4, a5, v16, *(v26 + 16) << 6);
          if ((Object & 0x80000000) == 0)
          {
            return 0;
          }

          return Object;
        }
      }

      v19 = v15;
      v20 = (v16 + 32);
      do
      {
        *v20 -= v32;
        v20 += 16;
        --v19;
      }

      while (v19);
      v21 = 0;
      v22 = (v16 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v22 - 5)))
        {
          v23 = *v22;
          if (v14)
          {
            v24 = v23 == 0xFFFFFFFFLL;
          }

          else
          {
            v24 = 1;
          }

          v25 = v14 + v23;
          if (v24)
          {
            v25 = 0;
          }

          *v22 = v25;
        }

        ++v21;
        v18 = v30;
        v22 += 8;
      }

      while (v21 < *(v30 + 16));
      goto LABEL_33;
    }
  }

  return v5;
}

uint64_t sentpar_loc_Align(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  v4 = *(v3 + 24);
  v5 = *(result + 244);
  v6 = v5 + v4;
  v7 = *(a2 + 16);
  if (v7 < 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = (v3 + 104);
    for (i = 1; i < v7; ++i)
    {
      if (*(v10 - 5) == 62)
      {
        result = cstdlib_atoi(*v10);
        v9 = result + v9 - *(v10 - 3);
        v7 = *(a2 + 16);
      }

      v10 += 8;
    }

    v5 = *(v2 + 244);
    v4 = *(v3 + 24);
  }

  v12 = v5 + v9;
  v13 = *(v2 + 248);
  v15 = v6 - v13;
  v14 = v6 < v13;
  if (v6 > v13)
  {
    v13 = v6;
  }

  if (!v14)
  {
    v15 = 0;
  }

  v16 = (*(v3 + 28) + v9 + v15) & ~((*(v3 + 28) + v9 + v15) >> 31);
  *(v3 + 24) = v13;
  *(v3 + 28) = v16;
  *(v2 + 244) = v12;
  *(v2 + 248) = v16 + v13;
  if (v7 >= 2)
  {
    v17 = v13 - v4;
    v18 = v7;
    v19 = (v3 + 88);
    v20 = v18 - 1;
    do
    {
      if (*(v19 - 1) != 999)
      {
        *v19 = (v17 + *v19) & ~((v17 + *v19) >> 31);
      }

      v19 += 16;
      --v20;
    }

    while (v20);
  }

  return result;
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
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
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
    v5 = datac_RequestBlock(v4, 1010, v2, &v11);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = *(v11 + 8);
      cstdlib_memcpy(v6, (*(a1 + 56) + *(a1 + 76)), v3);
      *(v11 + 16) = v2;
      v7 = *(a1 + 68);
      if (v7 < 0x400)
      {
        cstdlib_strncpy(__dst, *(a1 + 56), v7);
        __dst[*(a1 + 68)] = 0;
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input TXT Stream -%s-");
      }

      else
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input TXT Stream > PP_MAX_LOG_MESSAGE, skip trace");
      }

      v8 = *(v11 + 16);
      if (v8 < 0x400)
      {
        cstdlib_strncpy(__dst, v6, v8);
        __dst[*(v11 + 16)] = 0;
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
    v5 = datac_RequestBlock(v4, 1010, 1u, &v11);
    if ((v5 & 0x80000000) == 0)
    {
      *(v11 + 16) = 0;
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Empty text block", v10);
    }
  }

  return v5;
}

uint64_t sentpar_loc_SetUpMarkerBlocks(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v71 = 0;
  v72 = 0;
  v2 = *(a1 + 104);
  v3 = *(a1 + 108);
  v70 = 0;
  v4 = v2 - v3;
  v5 = (v2 - v3) >> 6;
  if (*(a1 + 236) == 1)
  {
    v68 = v2 - v3;
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_SetUpMarkerBlocks()");
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input Stream State :");
    v6 = (v2 >> 6);
    v69 = v3;
    v7 = (v3 >> 6);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "numMarkersAvailable=%d numMarkersInStream=%d numMarkersInStreamRead=%d", v5, v6, v7);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Markers in Input Stream");
    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 96);
        v11 = *(v10 + v9 + 48);
        if (v11)
        {
          v12 = cstdlib_strlen(v11);
          if ((v12 & 0xFFE0) != 0)
          {
            v13 = 31;
          }

          else
          {
            v13 = v12;
          }

          cstdlib_strncpy(__dst, *(*(a1 + 96) + v9 + 48), v13);
          __dst[v13] = 0;
          v10 = *(a1 + 96);
        }

        else
        {
          __dst[0] = 0;
        }

        v14 = "";
        if (v7 > v8)
        {
          v14 = "(CONSUMED)";
        }

        v15 = (v10 + v9);
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "%spInMrk[%d] %d %d,%d %d,%d INT=%d Ext=%d %s", v14, v8, v15[5], v15[6], v15[7], v15[8], v15[9], *v15, v15[14], __dst);
        v9 += 64;
        ++v8;
      }

      while (v6 << 6 != v9);
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "lastOutSyncMrk %d,%d %d,%d", *(a1 + 144), *(a1 + 148), *(a1 + 152), *(a1 + 156));
    v3 = v69;
    v4 = v68;
  }

  if (v4 <= 0x3Fu)
  {
    if (!*(a1 + 140))
    {
      v40 = 2369792000;
      if (!*(a1 + 240))
      {
        log_OutPublic(*(*a1 + 32), "PP_SENT_PARSER", 1931, 0);
      }

      return v40;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "no markers - use lastOutSyncMrk");
    v16 = datac_RequestBlock(*(a1 + 8), 1011, 0x40u, &v72);
    if ((v16 & 0x80000000) == 0)
    {
      v17 = *(v72 + 8);
      cstdlib_memcpy(v17, (a1 + 120), 0x40uLL);
      *v17 = 1;
      *(v72 + 16) = 1;
      goto LABEL_54;
    }

    return v16;
  }

  v16 = datac_RequestBlock(*(a1 + 8), 1011, v4 & 0xFFC0, &v72);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v18 = 0;
  v19 = 0;
  v17 = *(v72 + 8);
  v20 = (v3 >> 6);
  if (v5 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v5;
  }

  v22 = v20 << 6;
  do
  {
    cstdlib_memcpy(&v17[v18 / 4], (*(a1 + 96) + v22 + v18), 0x40uLL);
    v17[v18 / 4] = 0;
    hasNonConstCharPtrArg = marker_hasNonConstCharPtrArg(v17[v18 / 4 + 5]);
    v24 = *(a1 + 96) + v22 + v18;
    if (hasNonConstCharPtrArg)
    {
      v25 = *(v24 + 40);
      if (v25)
      {
        v26 = cstdlib_strlen(v25);
        LODWORD(v25) = 0;
        v19 += v26 + 1;
      }
    }

    else
    {
      LODWORD(v25) = *(v24 + 40);
    }

    v17[v18 / 4 + 10] = v25;
    v27 = *(*(a1 + 96) + v22 + v18 + 48);
    if (v27)
    {
      v28 = cstdlib_strlen(v27);
      if (v28)
      {
        v29 = heap_Calloc(*(*a1 + 8), 1, (v28 + 1));
        *&v17[v18 / 4 + 12] = v29;
        if (!v29)
        {
          return 2369789962;
        }

        cstdlib_strcpy(v29, *(*(a1 + 96) + v22 + v18 + 48));
      }
    }

    v18 += 64;
  }

  while (v21 << 6 != v18);
  *(v72 + 16) = v5;
  if (v19)
  {
    v16 = datac_RequestBlock(*(a1 + 8), 1012, v19, &v71);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v30 = 0;
    v31 = *(v71 + 8);
    v32 = v17 + 5;
    v33 = (v20 << 6) | 0x28;
    v34 = v17 + 5;
    do
    {
      v35 = *v34;
      v34 += 16;
      if (marker_hasNonConstCharPtrArg(v35) && *(*(a1 + 96) + v33))
      {
        v32[5] = v30;
        v36 = *(*(a1 + 96) + v33);
        v37 = cstdlib_strlen(v36);
        cstdlib_memcpy((v31 + v30), v36, v37);
        *(v31 + cstdlib_strlen(*(*(a1 + 96) + v33)) + v30) = 0;
        v30 += cstdlib_strlen(*(*(a1 + 96) + v33)) + 1;
      }

      v33 += 64;
      v32 = v34;
      --v21;
    }

    while (v21);
    *(v71 + 16) = v30;
  }

  if (v17[5] == 0x4000)
  {
    if (*(a1 + 140))
    {
      if (*(v72 + 16) >= 2u)
      {
        v38 = v17[24];
        v39 = *(a1 + 152);
        if (v38 < v39)
        {
          log_OutPublic(*(*a1 + 32), "PP_SENT_PARSER", 1932, "%s%d%s%d", "pMrk[1].posCur", v38, "< pSentPar->lastOutSyncMrk.posCur", v39);
        }
      }

      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "First Input Stream is a SYNC marker, but update using lastOutSyncMrk");
      cstdlib_memcpy(v17, (a1 + 120), 0x40uLL);
      *v17 = 0;
      v17[7] = 0;
      v17[9] = 0;
      *(v17 + 5) = 0;
    }
  }

  else
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "First Input Stream is not a SYNC marker, so clone it an make it a SYNC marker");
    cstdlib_memmove(v17 + 16, v17, *(v72 + 16) << 6);
    if (*(a1 + 140))
    {
      v41 = (a1 + 120);
    }

    else
    {
      v41 = v17 + 16;
    }

    cstdlib_memcpy(v17, v41, 0x40uLL);
    v17[5] = 0x4000;
    *v17 = 1;
    v17[7] = 0;
    v17[9] = 0;
    *(v17 + 5) = 0;
    ++*(v72 + 16);
  }

LABEL_54:
  v40 = datac_RequestBlock(*(a1 + 8), 1039, 1u, &v70);
  if ((v40 & 0x80000000) == 0)
  {
    v42 = *(v70 + 8);
    v43 = *(v70 + 16);
    if (*(v70 + 16))
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 32;
      do
      {
        if (*(v42 + v47) < v17[8])
        {
          v46 = v44;
          v45 = 1;
        }

        ++v44;
        v47 += 64;
      }

      while (v43 != v44);
      if (v45 == 1)
      {
        v48 = v46 + 1;
        LODWORD(v43) = v43 - v48;
        if (v43)
        {
          cstdlib_memmove(*(v70 + 8), (v42 + (v48 << 6)), v43 << 6);
          LOWORD(v43) = *(v70 + 16) - v48;
          *(v70 + 16) = v43;
        }

        else
        {
          *(v70 + 16) = 0;
        }
      }
    }

    if (*(a1 + 236) == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Persistent Markers");
      if (!*(v70 + 16))
      {
        return v40;
      }

      v49 = 0;
      v50 = (v42 + 36);
      do
      {
        v51 = *(v50 - 4);
        v52 = *(v50 - 3);
        v53 = *(v50 - 2);
        v54 = *(v50 - 1);
        v55 = *v50;
        v50 += 16;
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "pPersistMrk[%d] %d %d,%d %d,%d", v49++, v51, v52, v53, v54, v55);
        v43 = *(v70 + 16);
      }

      while (v49 < v43);
    }

    if (v43)
    {
      v40 = datac_RequestBlock(*(a1 + 8), 1011, ((*(v72 + 16) + v43) & 0x3FF) << 6, &v72);
      if ((v40 & 0x80000000) == 0)
      {
        if (*(v70 + 16))
        {
          v56 = 0;
          v57 = v72;
          v58 = *(v72 + 8);
          do
          {
            v59 = *(v57 + 16);
            v60 = v42 + (v56 << 6);
            if (v59)
            {
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = (v58 + 40);
              while (*(v60 + 32) >= *(v64 - 2))
              {
                if (*(v64 - 5) == 7)
                {
                  v63 = !v63;
                  if (*v64 == 43)
                  {
                    v62 = v61;
                  }

                  else
                  {
                    v63 = 0;
                  }
                }

                ++v61;
                v64 += 16;
                if (v59 == v61)
                {
                  LOWORD(v61) = v59;
                  break;
                }
              }

              if (v63)
              {
                v65 = *(v58 + (v62 << 6) + 32);
                if (v59 - 1 != v62)
                {
                  v62 = v59;
                }

                if (*(v60 + 32) != v65)
                {
                  v62 = v61;
                }

                if (v59 == v61)
                {
                  LOWORD(v61) = v62;
                }
              }
            }

            else
            {
              LOWORD(v61) = 0;
            }

            if (v59 == v61)
            {
              v66 = v58 + (v59 << 6);
            }

            else
            {
              v66 = v58 + (v61 << 6);
              cstdlib_memmove((v66 + 64), v66, (v59 - v61) << 6);
            }

            cstdlib_memcpy(v66, (v42 + (v56 << 6)), 0x40uLL);
            v57 = v72;
            ++*(v72 + 16);
            ++v56;
          }

          while (v56 < *(v70 + 16));
        }
      }
    }
  }

  return v40;
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
      cstdlib_memset(v11, 0, 0x68uLL);
      *v12 = a3;
      *(v12 + 1) = a4;
      Object = objc_GetObject(v17[6], "SYNTHSTREAM", &v16);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_13;
      }

      *(v12 + 2) = *(v16 + 8);
      *(v12 + 24) = 0;
      if ((paramc_ParamGetStr(v17[5], "clcpppipelinemode", &v15) & 0x80000000) == 0 && v15 && *v15)
      {
        *(v12 + 24) = 1;
      }

      Object = sentpar_ObjOpen(a3, a4, *(v12 + 2), v12 + 11, *(v12 + 24));
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
      cstdlib_memset(v11, 0, 0x68uLL);
      *v12 = a3;
      *(v12 + 8) = a4;
      *(v12 + 96) = 0;
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
  v42 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v42) & 0x80000000) == 0)
  {
    v8 = v42;
    v9 = *(v42 + 32);
    if (v9)
    {
      log_OutText(v9, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_Process");
      v8 = v42;
    }

    *a5 = 1;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v41 = 0;
    v10 = (*(*(a1 + 16) + 88))(*(a1 + 24), *(a1 + 32), &v46, &v45 + 4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v11 = HIDWORD(v45);
    v7 = (*(*(a1 + 16) + 144))(*(a1 + 40), *(a1 + 48), &v45, &v44);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    if (v45)
    {
      if (v45)
      {
        v10 = (*(*(a1 + 16) + 88))(*(a1 + 40), *(a1 + 48), &v41, &v44 + 4);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v16 = HIDWORD(v44);
        v7 = wordpar_LoadFromStreamData(*(a1 + 88), v46, HIDWORD(v45), v41, HIDWORD(v44));
        LODWORD(v12) = 0;
LABEL_19:
        if ((v7 & 0x80000000) != 0)
        {
          return v7;
        }

        v17 = v42;
        v46 = 0;
        if ((v16 & 0x3FFFC0) != 0)
        {
          v40 = v16;
          v7 = 0;
          v18 = (v16 >> 6);
          v19 = (v41 + 40);
          while (1)
          {
            if (*(v19 - 5) == 200)
            {
              if (*v19 && cstdlib_strlen(*v19) && LH_stricmp(*v19, "unset"))
              {
                if (LH_stricmp(*v19, "reset"))
                {
                  v20 = *v19;
                }

                else
                {
                  Str = paramc_ParamGetStr(*(v17 + 40), "shortfragmentforceclm_value_pipeline", &v46);
                  if (v46)
                  {
                    v25 = Str < 0;
                  }

                  else
                  {
                    v25 = 1;
                  }

                  if (v25)
                  {
                    v20 = "";
                  }

                  else
                  {
                    v20 = v46;
                  }
                }
              }

              else
              {
                v20 = "";
              }

              v21 = paramc_ParamSetStr(*(v17 + 40), "shortfragmentforceclm", v20);
              v7 = v21;
              if ((v21 & 0x80000000) == 0)
              {
                v22 = "Parameter markup \\!\\%s=%s\\ => set %s=%s";
LABEL_33:
                v23 = *v19;
                if (!*v19)
                {
                  v23 = "";
                }

                log_OutText(*(v17 + 32), "PP_WORD_PARSER", 4, 0, v22, "shortfragmentforceclm", v23, "shortfragmentforceclm", v20);
                goto LABEL_36;
              }

              if ((v21 & 0x1FFF) == 0xF)
              {
                v7 = 0;
                v22 = "Parameter markup \\!\\%s=%s\\ => set %s=%s : failed, invalid parameter value";
                goto LABEL_33;
              }
            }

LABEL_36:
            v19 += 8;
            if (!--v18)
            {
              v16 = v40;
              v11 = v11;
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

LABEL_54:
              if (v12 == 1)
              {
                LODWORD(v7) = 0;
                v26 = 0;
                goto LABEL_56;
              }

              v28 = wordpar_Process(*(a1 + 88));
              if ((v28 & 0x1FFF) == 0xA)
              {
                v7 = v7;
              }

              else
              {
                v7 = v28;
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
                  v30 = 0;
                  v31 = 1;
                  *a5 = 1;
                  do
                  {
                    while (1)
                    {
                      v32 = v31;
                      v33 = (a1 + 56 + 16 * v30);
                      if (*v33)
                      {
                        break;
                      }

                      v31 = 0;
                      v7 = 0;
                      v30 = 1;
                      if ((v32 & 1) == 0)
                      {
                        return v7;
                      }
                    }

                    v34 = (*(*(a1 + 16) + 72))(*v33, v33[1]);
                    v31 = 0;
                    *v33 = 0;
                    *(v33 + 2) = 0;
                    v30 = 1;
                  }

                  while ((v32 & (v34 >= 0)) != 0);
                  if (v34 < 0)
                  {
                    return v34;
                  }

                  else
                  {
                    return 0;
                  }
                }

                else
                {
                  v35 = 0;
                  v36 = 1;
                  do
                  {
                    while (1)
                    {
                      v37 = v36;
                      v38 = (a1 + 56 + 16 * v35);
                      if (!*v38)
                      {
                        break;
                      }

                      v39 = (*(*(a1 + 16) + 72))(*v38, v38[1]);
                      v36 = 0;
                      *v38 = 0;
                      *(v38 + 2) = 0;
                      v35 = 1;
                      if ((v37 & (v39 >= 0)) == 0)
                      {
                        goto LABEL_89;
                      }
                    }

                    v36 = 0;
                    v35 = 1;
                  }

                  while ((v37 & 1) != 0);
LABEL_89:
                  *a5 = 1;
                }

                return v7;
              }

              v26 = v28;
              if ((v28 & 0x1FFF) == 0xA || (v10 = wordpar_WriteTextAndMarkers(*(a1 + 88), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)), (v10 & 0x80000000) == 0))
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
                    v27 = *(v42 + 32);
                    if (v27)
                    {
                      log_OutText(v27, "PP_WORD_PARSER", 4, 0, "Leaving pp_word_parser_Process");
                    }

                    if ((v26 & 0x1FFF) == 0xA)
                    {
                      return v26;
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
      if (v44)
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

      v43 = 0;
      if ((paramc_ParamGetStr(*(v8 + 40), "clcpppipelinemode", &v43) & 0x80000000) != 0 || !v43 || !*v43)
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

uint64_t wordpar_getBRKDefs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  v13 = 0;
  v14 = 0;
  if (!*(a1 + 152))
  {
    v4 = 2370838535;
    __dst = 0;
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) == 0)
    {
      cstdlib_memcpy(&__dst, a4, 2uLL);
      *(a1 + 164) = __dst;
      cstdlib_memcpy(&v14, (a4 + 2), 4uLL);
      LODWORD(v14) = v14 + 1;
      v10 = heap_Calloc(*(v13 + 8), 1, v14);
      *(a1 + 152) = v10;
      if (v10)
      {
        cstdlib_memcpy(&v14 + 4, (a4 + 6), 4uLL);
        StringZ = ssftriff_reader_ReadStringZ(a2, a4, a3, HIDWORD(v14) + 10, *(a1 + 152), &v14);
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
  }

  return v4;
}

uint64_t wordpar_loc_nonasian_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v236 = 0;
  v237 = 0;
  v5 = 2370838528;
  if (!a1)
  {
    return 2370838535;
  }

  v8 = a3;
  v10 = a1;
  v238 = 0;
  inserted = (*(*(a1 + 32) + 136))(a2, a3, &v238);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v225 = a2;
  marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "start wordpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1020, "start wordpar_WriteTextAndMarkers()");
  v240 = 0;
  v241[0] = 0;
  v239 = 0;
  v12 = cstdlib_strlen((v10 + 180));
  inserted = datac_RequestBlock(*(v10 + 24), 1020, 1u, v241);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v13 = *(v241[0] + 8);
  inserted = datac_RequestBlock(*(v10 + 24), 1021, 1u, &v240);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v14 = *(v240 + 8);
  inserted = datac_RequestBlock(*(v10 + 24), 1012, 1u, &v239);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v211 = a4;
  v212 = a5;
  v15 = v240;
  v16 = *(v240 + 16);
  v233 = v10;
  if (v16 >= 2)
  {
    v17 = 0;
    v213 = v12;
    __n = v12;
    v210 = -1;
    v18 = 1;
    v19 = 1;
    v217 = v8;
    v20 = v14;
    while (1)
    {
      v21 = v20 + (v18 << 6);
      v22 = *(v21 + 20);
      if (v22 == 21)
      {
        v17 = v18;
        goto LABEL_269;
      }

      if (v22 != 7 || *(v21 + 40) != 43)
      {
        goto LABEL_269;
      }

      v224 = v17;
      v23 = *(v21 + 48);
      if (!v23)
      {
        v17 = v224;
        goto LABEL_269;
      }

      v24 = *(v20 + 32);
      v221 = (v19 + 1);
      LODWORD(v25) = v19 + 1;
      if (v16 > (v19 + 1))
      {
        v25 = (v19 + 1);
        v26 = (v20 + (v25 << 6) + 20);
        while (1)
        {
          v27 = *v26;
          v26 += 16;
          if (v27 == 7)
          {
            break;
          }

          if (v16 == ++v25)
          {
            goto LABEL_19;
          }
        }
      }

      if (v25 == v16)
      {
LABEL_19:
        v223 = *(v20 + 36);
      }

      else
      {
        v223 = *(v20 + (v25 << 6) + 32) - v24;
        v16 = v25;
      }

      v28 = *(v21 + 32) - v24;
      v229 = (*(v21 + 32) - v24);
      v234 = v13;
      v219 = v18;
      v232 = v16;
      v216 = v19;
      v220 = v28;
      if (!*(v21 + 56))
      {
        goto LABEL_63;
      }

      v29 = v223 - v28;
      *(v21 + 48) = 0;
      v30 = (v223 - v28);
      if (v223 == v28)
      {
        goto LABEL_63;
      }

      v31 = v13 + v229;
      v32 = 0;
      while (utf8_BelongsToSet(0, v31, v32, v29))
      {
        if (v30 == ++v32)
        {
          v32 = v29;
          break;
        }
      }

      if (v29 == 1)
      {
LABEL_32:
        LOWORD(v29) = 1;
      }

      else
      {
        v33 = (v29 - 1);
        while (utf8_BelongsToSet(0, v31, v33, v30))
        {
          LOWORD(v29) = v29 - 1;
          if (!--v33)
          {
            goto LABEL_32;
          }
        }
      }

      if (v29 <= v32)
      {
        goto LABEL_63;
      }

      v230 = 0;
      v34 = 95;
      v35 = v32;
      v226 = v20;
      do
      {
        v36 = *(v31 + v35);
        if (v36 == 35 || v36 == 95)
        {
          if (v34 != 35 && v34 != 95)
          {
            ++v230;
          }
        }

        else
        {
          v87 = v36 == 92;
          v37 = v35 + 1;
          v38 = !v87 || v37 >= v29;
          if (!v38 && *(v31 + v37) == 84)
          {
            for (i = v35 + 2; i < v29; i += utf8_determineUTF8CharLength(v40))
            {
              v40 = *(v31 + i);
              if (v40 == 92)
              {
                break;
              }
            }

            if (*(v31 + i) == 92)
            {
              v35 = i;
            }

            v20 = v226;
          }
        }

        if (!utf8_BelongsToSet(0, v31, v35, v30))
        {
          v34 = *(v31 + v35);
        }

        ++v35;
      }

      while (v35 < v29);
      v10 = v233;
      if (v34 != 35 && v34 != 95)
      {
        ++v230;
      }

      if (v230)
      {
        v41 = v29 - v32;
        v42 = v239;
        v43 = *(v239 + 16);
        v44 = v29 - v32 + v43 + 1;
        if (*(v239 + 18) < v44)
        {
          inserted = datac_RequestBlock(*(v233 + 24), 1012, (v29 - v32 + v43 + 1), &v239);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v42 = v239;
          v43 = *(v239 + 16);
        }

        v45 = (*(v42 + 8) + *(v42 + 2) * v43);
        cstdlib_strncpy(v45, &v234[(v32 + v220)], v41);
        v45[v41] = 0;
        *(v21 + 20) = 34;
        *(v21 + 40) = *(v239 + 16);
        *(v239 + 16) = v44;
        v46 = v230;
      }

      else
      {
LABEL_63:
        v46 = 0;
      }

      v47 = cstdlib_strlen(v23);
      LOWORD(v48) = v47;
      v49 = v47;
      if (v47)
      {
        v50 = v20;
        v51 = 0;
        v52 = v47;
        while (utf8_BelongsToSet(1, v23, v51, v49) == 1)
        {
          if (v52 == ++v51)
          {
            LOWORD(v51) = v48;
            v20 = v50;
LABEL_72:
            LOWORD(v48) = v48 - v51;
            v23[v48] = 0;
            goto LABEL_73;
          }
        }

        if (v51)
        {
          v20 = v50;
          if (!utf8_BelongsToSet(1, v23, v51, v49))
          {
            cstdlib_memmove(v23, &v23[v51], v48 - v51);
          }

          goto LABEL_72;
        }

        v20 = v50;
      }

LABEL_73:
      v53 = v234;
      v54 = v48;
      v231 = v46;
      if (v48)
      {
        if (v48 != 1)
        {
          v55 = v20;
          v56 = (v48 - 1);
          v57 = v48 - 1;
          while (utf8_BelongsToSet(1, v23, v56, v48) == 1)
          {
            v56 = --v57;
            if (!v57)
            {
              goto LABEL_83;
            }
          }

          if (v48 - 1 != v56 && !utf8_BelongsToSet(1, v23, v56, v48))
          {
            v23[v57 + 1] = 0;
            LOWORD(v48) = cstdlib_strlen(v23);
          }

LABEL_83:
          if (!v48)
          {
            v48 = 0;
            v54 = 0;
            v58 = 0;
            v20 = v55;
            v53 = v234;
            v46 = v231;
            goto LABEL_98;
          }

          v54 = v48;
          v20 = v55;
          v46 = v231;
        }

        v59 = 0;
        LOWORD(v60) = 0;
        v58 = *v23 != 0;
        do
        {
          if (!v23[v60])
          {
            break;
          }

          v61 = utf8_BelongsToSet(1, v23, v59, v54);
          if (v60 < v48 && v61 == 1)
          {
            v60 = v60;
            while (utf8_BelongsToSet(1, v23, v60, v54) == 1)
            {
              if (v54 == ++v60)
              {
                LOWORD(v60) = v48;
                goto LABEL_95;
              }
            }

            if (v23[v60])
            {
              ++v58;
            }
          }

LABEL_95:
          LOWORD(v60) = v60 + 1;
          v59 = v60;
        }

        while (v60 < v48);
        v48 = v48;
        v53 = v234;
      }

      else
      {
        v48 = 0;
        v58 = 0;
      }

LABEL_98:
      v62 = 0;
      if (v46 && *(v21 + 56) && v46 != v58)
      {
        if (v46 > v58)
        {
          v222 = 0;
          v62 = ((v46 - v58) * v213);
          v63 = (v46 - v58);
        }

        else
        {
          v64 = *(v10 + 24);
          v65 = *(v240 + 16) + 1;
          *(v240 + 16) = v65;
          inserted = datac_RequestBlock(v64, 1021, v65, &v240);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v66 = *(v240 + 8);
          v67 = (v66 + (v221 << 6));
          cstdlib_memmove(v67 + 16, v67, (*(v240 + 16) - v216) << 6);
          v68 = *(v239 + 16);
          v69 = v68 + cstdlib_strlen(v23) + 1;
          v70 = v239;
          if (*(v239 + 18) < v69)
          {
            inserted = datac_RequestBlock(*(v10 + 24), 1012, v69, &v239);
            if ((inserted & 0x80000000) != 0)
            {
              return inserted;
            }

            v70 = v239;
          }

          v222 = v58 - v231;
          ++v232;
          cstdlib_strcpy((*(v70 + 8) + *(v70 + 2) * *(v70 + 16)), v23);
          v67[10] = *(v239 + 16);
          *(v239 + 16) = v69;
          v71 = v66 + (v18 << 6);
          v72 = *(v71 + 24);
          v67[5] = 100;
          v67[6] = v72;
          v67[8] = *(v71 + 32) + 1;
          *v67 = 1;
          v73 = cstdlib_strlen(v23);
          v62 = 0;
          v63 = 0;
          v67[7] = v73;
          v20 = v66;
          v53 = v234;
        }
      }

      else
      {
        v63 = 0;
        v222 = 0;
      }

      v227 = v20;
      v74 = v62 + v54;
      v75 = v223 - v229;
      v76 = v74 - (v223 - v229);
      v215 = v74;
      if (v74 <= v75)
      {
        v79 = v75 - v74;
        v218 = -v79;
        cstdlib_memmove(&v53[v223 - v79], &v53[v223], *(v241[0] + 16) - v223);
        v77 = v241[0];
        v78 = *(v241[0] + 16) - v79;
      }

      else
      {
        inserted = datac_RequestBlock(*(v10 + 24), 1020, (*(v241[0] + 16) + v76), v241);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        v53 = *(v241[0] + 8);
        cstdlib_memmove(&v53[v223 + v76], &v53[v223], *(v241[0] + 16) - v223);
        v77 = v241[0];
        LOWORD(v218) = v74 - (v223 - v229);
        v78 = *(v241[0] + 16) + v76;
      }

      *(v77 + 16) = v78;
      cstdlib_strncpy(&v53[v229], v23, v48);
      v235 = v53;
      v80 = cstdlib_strlen(v53);
      if (v63)
      {
        v81 = v63;
        v82 = &v53[v54 + v229];
        do
        {
          cstdlib_strncpy(v82, (v10 + 180), __n);
          v82 += __n;
          --v81;
        }

        while (v81);
      }

      heap_Free(*(*(v10 + 16) + 8), v23);
      if (v222)
      {
        PreviousUtf8Offset = v54 + v220 + v63 * v213;
        v8 = v217;
        v17 = v224;
        v13 = v235;
        while (--PreviousUtf8Offset)
        {
          if (*(v241[0] + 16) <= PreviousUtf8Offset || utf8_BelongsToSet(1, v235, PreviousUtf8Offset, v80) != 1)
          {
            while (1)
            {
              v84 = *(v241[0] + 16);
              if (PreviousUtf8Offset >= v84)
              {
                break;
              }

              v13 = v235;
              if (utf8_BelongsToSet(1, v235, PreviousUtf8Offset, v80))
              {
                v84 = *(v241[0] + 16);
                break;
              }

              PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v235, PreviousUtf8Offset);
              if (!PreviousUtf8Offset)
              {
                goto LABEL_144;
              }
            }

            v13 = v235;
            if (v84 > PreviousUtf8Offset)
            {
              do
              {
                while (*(v241[0] + 16) > PreviousUtf8Offset && utf8_BelongsToSet(1, v13, PreviousUtf8Offset, v80) == 1)
                {
                  *(v13 + PreviousUtf8Offset--) = 45;
                  if (!PreviousUtf8Offset)
                  {
                    goto LABEL_144;
                  }
                }

                --v222;
                while (1)
                {
                  v86 = *(v241[0] + 16);
                  if (PreviousUtf8Offset >= v86)
                  {
                    break;
                  }

                  if (utf8_BelongsToSet(1, v235, PreviousUtf8Offset, v80))
                  {
                    v86 = *(v241[0] + 16);
                    break;
                  }

                  PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v235, PreviousUtf8Offset);
                  v13 = v235;
                  if (!PreviousUtf8Offset)
                  {
                    goto LABEL_144;
                  }
                }

                v87 = v86 <= PreviousUtf8Offset || v222 == 0;
                v13 = v235;
              }

              while (!v87);
            }

            break;
          }
        }

LABEL_144:
        v85 = *(v240 + 16);
        if (v85 >= 2)
        {
          v88 = *(v227 + 32);
          v89 = v88 + v229;
          v90 = v88 + v223;
          v91 = v85 - 1;
          v92 = (v227 + 96);
          v93 = v221;
          v94 = v218;
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
          v96 = v220;
          goto LABEL_154;
        }
      }

      else
      {
        v85 = *(v240 + 16);
        v8 = v217;
        v17 = v224;
        v13 = v235;
      }

      v93 = v221;
      v96 = v220;
      v94 = v218;
LABEL_154:
      *(v227 + 36) = *(v241[0] + 16);
      wordpar_loc_adjustMarkerPositions(v85, v227, v93, v96, v223, v94);
      v97 = v18;
      v98 = (v227 + (v18 << 6));
      if (v231 && v98[14])
      {
        v20 = v227;
        v99 = v215 + v229 + *(v227 + 32);
        v15 = v240;
        v100 = *(v240 + 16);
        v101 = v232;
        if (v100 < 2)
        {
LABEL_165:
          inserted = datac_RequestBlock(*(v10 + 24), 1021, (v100 + 1), &v240);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v20 = *(v240 + 8);
          v106 = *(v240 + 16);
          v107 = v232;
          v108 = v20 + (v232 << 6);
          if (v106 == v232)
          {
            cstdlib_memcpy((v20 + (v232 << 6)), (v108 - 64), 0x40uLL);
            *(v108 + 24) += *(v108 + 28);
          }

          else
          {
            cstdlib_memmove((v108 + 64), (v20 + (v232 << 6)), (v106 - v232) << 6);
            cstdlib_memcpy((v20 + (v232 << 6)), (v108 + 64), 0x40uLL);
          }

          *(v108 + 20) = 21;
          *(v108 + 32) = v99;
          *(v108 + 36) = 0;
          *(v108 + 28) = 0;
          v97 = v219;
          if (*(v108 + 48))
          {
            *(v108 + 48) = 0;
          }

          v101 = v232;
          if (v17)
          {
            v112 = *(v20 + (v17 << 6) + 40);
          }

          else
          {
            v112 = v210;
            if (v210 == -1)
            {
              v113 = v20;
              v114 = *(v239 + 8);
              LOWORD(v20) = *(v239 + 16);
              if (v114 && *(v239 + 16))
              {
                v112 = 0;
                while (1)
                {
                  v115 = cstdlib_strlen(v114);
                  MarkerArgStr = marker_getMarkerArgStr(1u);
                  if (!cstdlib_strcmp(v114, MarkerArgStr))
                  {
                    break;
                  }

                  v117 = (v115 + 1);
                  v112 += v117;
                  v114 += v117;
                  LODWORD(v20) = *(v239 + 16);
                  if (v112 >= v20)
                  {
                    goto LABEL_186;
                  }
                }

                v210 = v112;
                v20 = v113;
              }

              else
              {
LABEL_186:
                v118 = marker_getMarkerArgStr(1u);
                v119 = v20 + cstdlib_strlen(v118) + 1;
                v120 = v239;
                v20 = v113;
                if (*(v239 + 18) < v119)
                {
                  inserted = datac_RequestBlock(*(v10 + 24), 1012, v119, &v239);
                  if ((inserted & 0x80000000) != 0)
                  {
                    return inserted;
                  }

                  v120 = v239;
                }

                v121 = (*(v120 + 8) + *(v120 + 2) * *(v120 + 16));
                v122 = marker_getMarkerArgStr(1u);
                cstdlib_strcpy(v121, v122);
                v123 = marker_getMarkerArgStr(1u);
                v121[cstdlib_strlen(v123)] = 0;
                v112 = *(v239 + 16);
                *(v239 + 16) = v119;
                v210 = v112;
              }

              v101 = v232;
              v97 = v219;
            }
          }

          *(v108 + 40) = v112;
          v15 = v240;
          ++*(v240 + 16);
        }

        else
        {
          v102 = (v227 + 84);
          v103 = 2;
          while (1)
          {
            v104 = v102[3];
            if (v104 == v99 && *v102 == 21)
            {
              break;
            }

            v102 += 16;
            if (v104 > v99 || v103++ >= v100)
            {
              goto LABEL_165;
            }
          }

          v107 = v232;
        }

        v129 = v20 + (v107 << 6);
        v130 = (v20 + 96);
        v131 = 1;
        v132 = v20 + (v97 << 6);
        while (2)
        {
          v133 = v131;
          v134 = *(v20 + 32);
          if (v133)
          {
            v135 = *(v132 + 32);
            v136 = v135 - v134;
            v137 = (v135 - v134);
            if (v137 && *(v235 + (v137 - 1)) != 32)
            {
              v138 = *(v15 + 16) + 1;
              LOWORD(v139) = *(v241[0] + 16);
              goto LABEL_217;
            }
          }

          else
          {
            v135 = *(v129 + 32);
            v136 = v135 - v134;
            v140 = (v135 - v134);
            if (v135 == v134 || (v139 = *(v241[0] + 16), v140 >= v139) || *(v235 + v140) == 32 || *(v235 + (v140 - 1)) == 32)
            {
LABEL_235:
              if (*(v132 + 20) == 34)
              {
                v150 = *(v15 + 16);
                v8 = v217;
                v17 = v224;
                if (v150 <= v101 || *(v129 + 20) != 21)
                {
                  goto LABEL_266;
                }

                if (v150 < 2)
                {
                  v152 = 1;
                }

                else
                {
                  v151 = 1;
                  while (*(v130 - 3) != 1 || *v130 != *(v132 + 32))
                  {
                    ++v151;
                    v130 += 16;
                    if (v150 == v151)
                    {
                      v152 = *(v15 + 16);
                      goto LABEL_247;
                    }
                  }

                  v152 = v151;
                }

                v153 = (v20 + (v152 << 6));
                if (v153[5] != 1)
                {
                  goto LABEL_266;
                }

                v154 = v153[8];
                if (v154 != *(v132 + 32))
                {
                  goto LABEL_266;
                }

LABEL_247:
                v155 = *(v20 + 36);
                v156 = (v154 - *(v20 + 32));
                if (v156 >= v155)
                {
                  v159 = 0;
                }

                else
                {
                  v228 = v20;
                  v157 = 0;
                  do
                  {
                    if (utf8_BelongsToSet(0, v235, v156, v80))
                    {
                      break;
                    }

                    v158 = utf8_determineUTF8CharLength(*(v235 + v156));
                    v157 += v158;
                    v156 = (v158 + v156);
                  }

                  while (v156 < v155);
                  v15 = v240;
                  LODWORD(v150) = *(v240 + 16);
                  v159 = v157;
                  v20 = v228;
                  v101 = v232;
                }

                v153[9] = v159;
                v160 = v152 + 1;
                v17 = v224;
                if (v150 > (v152 + 1))
                {
                  v5 = 2370838528;
                  do
                  {
                    v161 = (v20 + (v160 << 6));
                    if (v161[5] == 1 && (v162 = v161[8], v162 >= *(v132 + 32)) && v162 < *(v20 + (v101 << 6) + 32))
                    {
                      v163 = v160 + 1;
                      if (v163 != v150)
                      {
                        v164 = v101;
                        cstdlib_memmove(v161, (v20 + (v163 << 6)), (v150 - v160) << 6);
                        v101 = v164;
                        v15 = v240;
                      }

                      --*(v15 + 16);
                      --v101;
                    }

                    else
                    {
                      v152 = v160;
                    }

                    v160 = v152 + 1;
                    LODWORD(v150) = *(v15 + 16);
                  }

                  while (v150 > (v152 + 1));
                  LODWORD(v18) = v101;
                }

                else
                {
LABEL_266:
                  LODWORD(v18) = v101;
                  v5 = 2370838528;
                }
              }

              else
              {
                LODWORD(v18) = v101;
                v5 = 2370838528;
                v8 = v217;
                v17 = v224;
              }

              v13 = v235;
              goto LABEL_268;
            }

            v138 = v101;
LABEL_217:
            inserted = datac_RequestBlock(*(v233 + 24), 1020, (v139 + 1), v241);
            if ((inserted & 0x80000000) != 0)
            {
              return inserted;
            }

            v235 = *(v241[0] + 8);
            v141 = (v235 + v136);
            cstdlib_memmove(v141 + 1, v141, *(v241[0] + 16) - v136);
            *v141 = 32;
            v15 = v240;
            ++*(v241[0] + 16);
            v142 = *(v15 + 16);
            if (v142 >= 2)
            {
              v143 = v142 - 1;
              v144 = v138 - 1;
              v145 = (v20 + 96);
              v146 = 1;
              do
              {
                if (v133)
                {
                  v147 = *v145;
                  if (*v145 < v135)
                  {
                    goto LABEL_232;
                  }

                  v148 = v147 == v135 && *(v145 - 3) == 21;
                  v149 = v145;
                  if (v148)
                  {
                    goto LABEL_232;
                  }
                }

                else
                {
                  if (!v144)
                  {
                    goto LABEL_232;
                  }

                  v147 = *v145;
                  if (*v145 < v135)
                  {
                    goto LABEL_232;
                  }

                  v149 = (v20 + (v146 << 6) + 32);
                }

                *v149 = v147 + 1;
LABEL_232:
                ++v146;
                v145 += 16;
                --v144;
                --v143;
              }

              while (v143);
            }

            ++*(v20 + 36);
            v101 = v232;
            v10 = v233;
          }

          v131 = 0;
          if ((v133 & 1) == 0)
          {
            goto LABEL_235;
          }

          continue;
        }
      }

      v15 = v240;
      v109 = *(v240 + 16);
      if (v109 < 2)
      {
        v5 = 2370838528;
        v20 = v227;
      }

      else
      {
        v20 = v227;
        v110 = (v227 + 100);
        v111 = v109 - 1;
        while (*(v110 - 4) != 1 || *(v110 - 1) != v98[8])
        {
          v110 += 16;
          if (!--v111)
          {
            goto LABEL_197;
          }
        }

        if (*(v110 - 4) != 1)
        {
LABEL_197:
          v5 = 2370838528;
          goto LABEL_198;
        }

        v124 = *(v227 + 36);
        v125 = (*(v110 - 2) - *(v227 + 32));
        if (v125 >= v124)
        {
          v128 = 0;
          v13 = v235;
        }

        else
        {
          v126 = 0;
          do
          {
            if (utf8_BelongsToSet(0, v235, v125, v80))
            {
              break;
            }

            v127 = utf8_determineUTF8CharLength(*(v235 + v125));
            v126 += v127;
            v125 = (v127 + v125);
          }

          while (v125 < v124);
          v15 = v240;
          LODWORD(v109) = *(v240 + 16);
          v128 = v126;
          v20 = v227;
          v13 = v235;
          v93 = v221;
        }

        *v110 = v128;
        v5 = 2370838528;
        v17 = v224;
      }

LABEL_198:
      if (v93 != v109)
      {
        cstdlib_memmove(v98, (v20 + (v93 << 6)), (v109 - v216) << 6);
        v15 = v240;
        LOWORD(v109) = *(v240 + 16);
      }

      *(v15 + 16) = v109 - 1;
LABEL_268:
      LODWORD(v18) = v18 - 1;
LABEL_269:
      v18 = (v18 + 1);
      v19 = v18;
      v16 = *(v15 + 16);
      if (v18 >= v16)
      {
        goto LABEL_273;
      }
    }
  }

  v20 = v14;
LABEL_273:
  if (v16)
  {
    v165 = 0;
    v166 = (v20 + 48);
    do
    {
      if (*v166)
      {
        heap_Free(*(*(v10 + 16) + 8), *v166);
        *v166 = 0;
        v15 = v240;
      }

      ++v165;
      v166 += 8;
    }

    while (v165 < *(v15 + 16));
  }

  marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "after wordpar_loc_nonasian_HandleExtendedToi()", 0, 0, 0);
  marker_TraceTxt(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1020, "after wordpar_loc_nonasian_HandleExtendedToi()");
  inserted = datac_RequestBlock(*(v10 + 24), 1020, 1u, &v237);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  if (*(v237 + 16))
  {
    inserted = (*(*(v10 + 32) + 104))(v225, v8, *(v237 + 8), *(v237 + 2) * *(v237 + 16));
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

    if (log_HasTraceTuningDataSubscriber(*(*(v10 + 16) + 32)))
    {
      log_OutTraceTuningDataBinary(*(*(v10 + 16) + 32), 34, "", "text/plain;charset=utf-8", *(v237 + 8), *(v237 + 2) * *(v237 + 16));
    }

    *(v237 + 16) = 0;
    v167 = 1;
  }

  else
  {
    if (log_HasTraceTuningDataSubscriber(*(*(v10 + 16) + 32)))
    {
      log_OutTraceTuningDataBinary(*(*(v10 + 16) + 32), 34, "", "text/plain;charset=utf-8", 0, 0);
    }

    v167 = 0;
  }

  if ((datac_RequestBlock(*(v10 + 24), 1012, 1u, &v237) & 0x80000000) != 0)
  {
    v168 = 0;
  }

  else
  {
    v168 = *(v237 + 8);
  }

  inserted = datac_RequestBlock(*(v10 + 24), 1021, 1u, &v236);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v169 = v236;
  v170 = *(v236 + 16);
  if (*(v236 + 16))
  {
    v171 = *(v236 + 8);
    if (*(v171 + 20) == 0x4000)
    {
      v172 = (v171 + 32);
      v238 = *(v171 + 32) - v238;
      v173 = v170;
      do
      {
        *v172 -= v238;
        v172 += 16;
        --v173;
      }

      while (v173);
      if (v168)
      {
        v174 = 0;
        v175 = (v171 + 40);
        do
        {
          if (marker_hasNonConstCharPtrArg(*(v175 - 5)))
          {
            v176 = *v175;
            if (v176 == -1)
            {
              v177 = 0;
            }

            else
            {
              v177 = v168 + v176;
            }

            *v175 = v177;
          }

          ++v174;
          v169 = v236;
          v170 = *(v236 + 16);
          v175 += 8;
        }

        while (v174 < v170);
      }

      if (v170 >= 3)
      {
        v178 = 1;
        do
        {
          v179 = (v171 + (v178 << 6));
          if (v179[5] == 1)
          {
            v180 = v179[7];
            v181 = v179[9];
            if (v180 != v181 && (v179[8] + v181) > v179[24] && !v179[25])
            {
              log_OutText(*(*(v10 + 16) + 32), "PP_WORD_PARSER", 1, 0, "SEVERE: found control sequence embedded in a word (word marker pos %d, length %d; escape marker pos %d)", v179[6], v180, v179[22]);
              v169 = v236;
            }
          }

          ++v178;
        }

        while (*(v169 + 16) - 1 > v178);
      }

      v182 = 1;
      marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "before wordpar_loc_Align()", 1, 0, 0);
      v183 = v236;
      v184 = *(v236 + 16);
      if (v184 >= 2)
      {
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = *(v236 + 8);
        v189 = v188 + 84;
        for (j = 1; j < v184; ++j)
        {
          if (*v189 == 1)
          {
            v186 = *(v189 + 8);
            v185 = v186 + *(v189 + 4);
            v187 = j;
          }

          else if (*v189 == 62 && v187 != 0)
          {
            v192 = *(v189 + 4);
            v193 = v188 + (v187 << 6);
            if (v192 >= *(v193 + 24) && v192 < v185)
            {
              v186 = cstdlib_atoi(*(v189 + 20)) + v186 - *(v189 + 8);
              *(v193 + 28) = v186 & ~(v186 >> 31);
              v184 = *(v183 + 16);
            }
          }

          v189 += 64;
        }

        if (v184 >= 2)
        {
          v195 = 0;
          v196 = *(v183 + 8);
          v197 = *(v196 + 24);
          v198 = *(v196 + 28) + v197;
          v199 = v196 + 104;
          v200 = 1;
          v182 = 1;
          while (1)
          {
            v201 = *(v199 - 20);
            if (v201 == 999)
            {
              goto LABEL_335;
            }

            if (v201 != 62)
            {
              break;
            }

            v195 = cstdlib_atoi(*v199) + v195 - *(v199 - 12);
LABEL_336:
            ++v200;
            v199 += 64;
            if (v200 >= *(v183 + 16))
            {
              goto LABEL_339;
            }
          }

          v202 = *(v199 - 16) + v195;
          if (v197 >= v202)
          {
            *(v199 - 16) = v197;
          }

          else if (v198 >= v202)
          {
            *(v199 - 16) = v202;
            v197 = v202;
          }

          else
          {
            *(v196 + (v182 << 6) + 24) = v198;
            v197 = v198;
          }

LABEL_335:
          v203 = (v196 + (v182 << 6));
          v204 = *(v199 - 40);
          v205 = *(v199 - 24);
          v206 = *(v199 + 8);
          v203[2] = *(v199 - 8);
          v203[3] = v206;
          *v203 = v204;
          v203[1] = v205;
          ++v182;
          goto LABEL_336;
        }

        v182 = 1;
      }

LABEL_339:
      *(v183 + 16) = v182;
      marker_TraceMrk(211, "PP_WORD_PARSER", *(v233 + 168), *(v233 + 16), *(v233 + 24), 1021, "before wordpar_loc_MarkerPostProcessing()", 1, 0, 0);
      inserted = wordpar_loc_MarkerPostProcessing(*(v233 + 24), v236);
      if ((inserted & 0x80000000) == 0)
      {
        marker_TraceMrk(211, "PP_WORD_PARSER", *(v233 + 168), *(v233 + 16), *(v233 + 24), 1021, "before wordpar_loc_InsertNLUMarkers()", 1, 0, 0);
        inserted = wordpar_loc_InsertNLUMarkers(v233, v236);
        if ((inserted & 0x80000000) == 0)
        {
          v207 = *(v236 + 8);
          marker_TraceMrk(211, "PP_WORD_PARSER", *(v233 + 168), *(v233 + 16), *(v233 + 24), 1021, "at end()", 1, 0, 0);
          v208 = wordpar_loc_writeMarkersToOutputStream(v233, v211, v212, v207, v236, v167);
          return v208 & (v208 >> 31);
        }
      }

      return inserted;
    }
  }

  return v5;
}

uint64_t wordpar_loc_MarkerPostProcessing(uint64_t a1, uint64_t a2)
{
  v39 = a2;
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
          result = datac_RequestBlock(a1, 1021, (v8 + 1), &v39);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v4 = *(v39 + 8);
          v38 = (v4 + v23);
          cstdlib_memmove((v4 + v23 + 128), (v4 + v23 + 64), (v25 + *(v39 + 16)) << 6);
          cstdlib_memcpy(v38 + 16, v38 + 32, 0x40uLL);
          v24 = 0;
          v38[26] = 15;
          a2 = v39;
          ++*(v39 + 16);
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
  v40 = 0;
  v41 = a2;
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  result = datac_RequestBlock(v4, 1013, 1u, &v40);
  if ((result & 0x80000000) == 0)
  {
    v7 = *(v2 + 16);
    if (v7 >= 2)
    {
      v8 = 0;
      v9 = 1;
      v10 = 1;
      do
      {
        v11 = *(v5 + (v10 << 6) + 20);
        if (v11 > 55)
        {
          if (v11 == 56)
          {
            v13 = "E_";
            if (v8)
            {
              goto LABEL_26;
            }

            v8 = 0;
            goto LABEL_44;
          }

          if (v11 != 57)
          {
LABEL_7:
            v12 = v11 != 54 || v8 == 0;
            v13 = "BND:";
            if (!v12)
            {
LABEL_26:
              LOWORD(v15) = v9 + 1;
              LOWORD(v21) = v8;
LABEL_36:
              result = datac_RequestBlock(v4, 1021, (*(v2 + 16) + 1), &v41);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v5 = *(v41 + 8);
              v26 = (v5 + (v21 << 6));
              cstdlib_memmove(v26 + 16, v26, (*(v41 + 16) - v21) << 6);
              v27 = v21 > v15;
              v28 = (v5 + (v15 << 6));
              if (v27)
              {
                cstdlib_memcpy((v5 + (v21 << 6)), v28, 0x40uLL);
              }

              *v26 = 1;
              v26[5] = 51;
              v29 = *(v40 + 16);
              v31 = v28[5];
              v30 = v28 + 5;
              v32 = cstdlib_strlen(v31);
              v33 = v29 + cstdlib_strlen(v13) + v32 + 1;
              v34 = v40;
              if (*(v40 + 18) < v33)
              {
                result = datac_RequestBlock(*(a1 + 24), 1013, v33, &v40);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v34 = v40;
              }

              v35 = (*(v34 + 8) + *(v34 + 2) * *(v34 + 16));
              cstdlib_strcpy(v35, v13);
              cstdlib_strcat(v35, *v30);
              v26[10] = *(v40 + 16);
              v2 = v41;
              *(v40 + 16) = v33;
              ++*(v2 + 16);
              ++v9;
              goto LABEL_44;
            }

            goto LABEL_44;
          }
        }

        else
        {
          if (v11 == 1)
          {
            v8 = v9;
            goto LABEL_44;
          }

          if (v11 != 55)
          {
            goto LABEL_7;
          }
        }

        if (v11 != 57 || v8 == 0)
        {
          v15 = v9;
        }

        else
        {
          result = datac_RequestBlock(v4, 1021, (v7 + 1), &v41);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v5 = *(v41 + 8);
          v16 = (v5 + (v8 << 6));
          cstdlib_memmove(v16 + 16, v16, (*(v41 + 16) - v8) << 6);
          *v16 = 1;
          v16[5] = 51;
          v17 = v5 + (v10 << 6);
          v18 = cstdlib_strchr(*(v17 + 104), 58);
          v19 = *(v17 + 104);
          if (v18)
          {
            v20 = v18 - v19;
          }

          else
          {
            v20 = cstdlib_strlen(v19);
          }

          v22 = v40;
          v23 = *(v40 + 16);
          v24 = v20 + v23 + 3;
          if (*(v40 + 18) < v24)
          {
            result = datac_RequestBlock(*(a1 + 24), 1013, (v20 + v23 + 3), &v40);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v22 = v40;
            v23 = *(v40 + 16);
          }

          v25 = (*(v22 + 8) + *(v22 + 2) * v23);
          cstdlib_strcpy(v25, "R_");
          cstdlib_strncat(v25, *(v17 + 104), v20);
          v16[10] = *(v40 + 16);
          v2 = v41;
          *(v40 + 16) = v24;
          ++*(v2 + 16);
          v15 = v9 + 1;
        }

        v21 = v15 + 1;
        if ((v21 & 0x10000) == 0)
        {
          v13 = "S_";
          v9 = v15;
          goto LABEL_36;
        }

        v9 = 0xFFFF;
LABEL_44:
        v10 = ++v9;
        v7 = *(v2 + 16);
      }

      while (v7 > v9);
    }

    if (v7)
    {
      v36 = 0;
      v37 = (v5 + 40);
      do
      {
        if (*(v37 - 5) == 51 && *(v37 - 10))
        {
          v38 = *v37;
          if (v38 == -1)
          {
            v39 = 0;
          }

          else
          {
            v39 = *(v40 + 8) + v38;
          }

          *v37 = v39;
          v2 = v41;
        }

        ++v36;
        v37 += 8;
      }

      while (v36 < *(v2 + 16));
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
  v20 = 0;
  v21 = 0;
  v5 = 2370838535;
  if (a4 && (InitRsrcFunction(a1, a2, &v21) & 0x80000000) == 0)
  {
    *a4 = 0;
    v11 = heap_Alloc(*(v21 + 8), 200);
    if (!v11)
    {
      return 2370838538;
    }

    v12 = v11;
    cstdlib_memset(v11, 0, 0xC8uLL);
    *v12 = a1;
    *(v12 + 8) = a2;
    v13 = v21;
    *(v12 + 16) = v21;
    *(v12 + 32) = a3;
    *(v12 + 164) = 0;
    *(v12 + 72) = 0;
    *(v12 + 152) = 0;
    *(v12 + 176) = 30;
    if ((paramc_ParamGetUInt(*(v13 + 40), "ppmaxpcreframeblocks", &v20 + 1) & 0x80000000) == 0)
    {
      *(v12 + 176) = WORD2(v20);
    }

    *(v12 + 178) = 50;
    if ((paramc_ParamGetUInt(*(v21 + 40), "ppnumframesinblock", &v20 + 1) & 0x80000000) == 0)
    {
      *(v12 + 178) = WORD2(v20);
    }

    *(v12 + 128) = 0;
    *(v12 + 80) = 0;
    *(v12 + 88) = 0;
    *(v12 + 96) = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 136) = safeh_GetNullHandle();
    *(v12 + 144) = v14;
    v15 = extdata_ObjOpen(a1, a2, (v12 + 72), 213);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    v15 = nuance_pcre_ObjOpen(a1, a2, v12 + 56);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v15 = nuance_pcre_Init(*(v12 + 56), *(v12 + 64), *(v12 + 176), *(v12 + 178));
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v16 = wordpar_loc_OpenParts(v12, &v20);
    if ((v16 & 0x80000000) != 0)
    {
      v5 = v16;
      if (v20)
      {
        return v5;
      }

      goto LABEL_18;
    }

    *(v12 + 172) = a5;
    v15 = datac_ObjOpen(a1, a2, (v12 + 24), 213);
    if ((v15 & 0x80000000) != 0)
    {
LABEL_17:
      v5 = v15;
    }

    else
    {
      v17 = &word_26ECDC15A;
      v18 = 5;
      while (1)
      {
        v5 = datac_RegisterBlock(*(v12 + 24), *(v17 - 2), *(v17 - 1), *v17);
        if ((v5 & 0x80000000) != 0)
        {
          break;
        }

        v17 += 3;
        if (!--v18)
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
  v27 = *MEMORY[0x277D85DE8];
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
    if (cstdlib_strlen(v5) >= 1)
    {
      v6 = 0;
      do
      {
        *(a1[19] + v6) = cstdlib_tolower(*(a1[19] + v6));
        ++v6;
      }

      while (cstdlib_strlen(a1[19]) > v6);
    }

    if ((brk_InterfaceQueryEx(*(a1[2] + 3), a1[19], 1, 1, &v23, (a1 + 16)) & 0x80000000) == 0)
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
        v19 = cstdlib_strchr("yYtT1", *v23) != 0;
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
  v7 = 0;
  v8 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) == 0)
  {
    *(a1 + 168) = log_GetLogLevel(*(v8 + 32)) > 4;
    cstdlib_strcpy((a1 + 180), " ");
    cstdlib_strcat((a1 + 180), "§");
    v3 = 0;
    while (1)
    {
      v4 = datac_RequestBlock(*(a1 + 24), aMETA_1[v3], 1u, &v7);
      if ((v4 & 0x80000000) != 0)
      {
        break;
      }

      v3 += 3;
      v5 = v7;
      *(v7 + 16) = 0;
      *(v5 + 20) = 0;
      if (v3 == 15)
      {
        v4 = tolhp_ResetDcts(*(a1 + 48));
        if ((v4 & 0x80000000) == 0)
        {
          if (!*(a1 + 164))
          {
            return 0;
          }

          v4 = wparser_ProcessStart(*(a1 + 40));
          if ((v4 & 0x80000000) == 0)
          {
            return 0;
          }
        }

        return v4;
      }
    }

    return v4;
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
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v10 = *(a1 + 24);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = 1;
  }

  v12 = datac_RequestBlock(v10, 1020, v11, &v34);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (a2)
  {
    cstdlib_memcpy(*(v34 + 8), a2, a3);
  }

  *(v34 + 16) = a3;
  v13 = datac_RequestBlock(*(a1 + 24), 1021, a5 & 0xFFC0, &v35);
  if ((v13 & 0x80000000) == 0)
  {
    v32 = a3;
    v14 = a5 >> 6;
    v15 = v35;
    v16 = *(v35 + 8);
    v17 = (a5 >> 6);
    if (!(a5 >> 6))
    {
      goto LABEL_27;
    }

    v18 = 0;
    v19 = 0;
    do
    {
      v20 = &v16[16 * v19];
      v21 = (a4 + (v19 << 6));
      cstdlib_memcpy(v20, v21, 0x40uLL);
      if (marker_hasNonConstCharPtrArg(v20[5]))
      {
        v22 = v21[5];
        if (v22)
        {
          v23 = cstdlib_strlen(v22);
          LODWORD(v22) = 0;
          v18 += v23 + 1;
        }
      }

      else
      {
        LODWORD(v22) = *(v21 + 10);
      }

      v20[10] = v22;
      v24 = v21[6];
      if (v24)
      {
        v25 = cstdlib_strlen(v24);
        if (v25)
        {
          v26 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v25 + 1));
          *(v20 + 6) = v26;
          if (!v26)
          {
            return 2370838538;
          }

          cstdlib_strcpy(v26, v21[6]);
        }
      }

      ++v19;
    }

    while (v19 < v14);
    *(v35 + 16) = v14;
    if (!v18)
    {
      goto LABEL_28;
    }

    v13 = datac_RequestBlock(*(a1 + 24), 1012, v18, &v33);
    if ((v13 & 0x80000000) == 0)
    {
      LOWORD(v14) = 0;
      v27 = *(v33 + 8);
      v28 = v16 + 10;
      v29 = (a4 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v28 - 5)) && *v29)
        {
          v30 = cstdlib_strlen(*v29);
          *v28 = v14;
          cstdlib_memcpy((v27 + v14), *v29, v30);
          *(v27 + v30 + v14) = 0;
          LOWORD(v14) = v14 + v30 + 1;
        }

        v28 += 16;
        v29 += 8;
        --v17;
      }

      while (v17);
      v15 = v33;
LABEL_27:
      *(v15 + 16) = v14;
LABEL_28:
      if (v16[5] == 0x4000 && !v16[6] && !v16[7] && !wordpar_loc_existingSentParParams(a1))
      {
        v16[7] = v32;
        v16[9] = v32;
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
  v44 = 0;
  if (!a1)
  {
    return 2370838535;
  }

  memset(v43, 0, sizeof(v43));
  LODWORD(v45) = 0;
  UInt = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_posrefoffset", &v44 + 1);
  if ((UInt & 0x1FFF) == 0x14)
  {
    HIDWORD(v44) = 0;
  }

  else
  {
    v3 = UInt;
    if ((UInt & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v4 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset", &v44);
  if ((v4 & 0x1FFF) == 0x14)
  {
    LODWORD(v44) = 0;
  }

  else
  {
    v3 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v5 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_tag", &v45);
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

    v6 = v45;
  }

  DWORD1(v43[1]) = v6;
  v7 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_posref", &v43[1] + 2);
  if ((v7 & 0x1FFF) == 0x14)
  {
    DWORD2(v43[1]) = 0;
  }

  else
  {
    v3 = v7;
    if ((v7 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v8 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_lenref", &v43[1] + 3);
  if ((v8 & 0x1FFF) == 0x14)
  {
    v9 = 0;
    HIDWORD(v43[1]) = 0;
  }

  else
  {
    v3 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      return v3;
    }

    v9 = HIDWORD(v43[1]);
  }

  log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 4, 0, "(from sentpar) posRefOffset=%d,refReset=%d pRefResetMrk->tag %d posRef %d lenRef %d", HIDWORD(v44), v44, DWORD1(v43[1]), DWORD2(v43[1]), v9);
  if (!*(a1 + 164))
  {
    inserted = wparser_ScanWords(*(a1 + 40), *(a1 + 24), SHIDWORD(v44), v44);
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

    v10 = 0;
LABEL_32:
    marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "BEFORE wordpar_loc_nonasian_PreProcessExtendedTOIWords");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "BEFORE wordpar_loc_nonasian_PreProcessExtendedTOIWords", 0, 0, 0);
    v13 = *(a1 + 24);
    v45 = 0;
    inserted = datac_RequestBlock(v13, 1021, 1u, &v45);
    if ((inserted & 0x80000000) == 0)
    {
      v14 = v45;
      v15 = *(v45 + 16);
      if (v15 > 1)
      {
        v16 = *(v45 + 8);
        v17 = 1;
        do
        {
          while (1)
          {
            v18 = v17;
            v19 = (v16 + (v17 << 6));
            if (v19[5] == 7 && v19[10] >= 0x46u)
            {
              break;
            }

            ++v17;
LABEL_47:
            if (v15 <= v17)
            {
              goto LABEL_80;
            }
          }

          v20 = v19[8];
          if (v15 <= (v17 + 1))
          {
            ++v17;
          }

          else
          {
            v17 = v15;
          }

          v21 = (v16 + 84 + (v18 << 6));
          while (++v18 < v15)
          {
            v22 = *v21;
            v21 += 16;
            if (v22 == 7)
            {
              v17 = v18;
              break;
            }
          }

          if (v15 == v17)
          {
            v23 = (*(v16 + 36) + *(v16 + 32));
          }

          else
          {
            v23 = *(v16 + (v17 << 6) + 32);
          }

          if (v15 < 2u)
          {
            goto LABEL_47;
          }

          v24 = 0;
          v25 = 0;
          v26 = (v16 + 84);
          v27 = 1;
          do
          {
            v28 = v26[3];
            if (v28 > v23)
            {
              break;
            }

            v29 = *v26;
            v26 += 16;
            v30 = v29 == 1 && v28 >= v20;
            v31 = v30;
            v32 = v31 & (v28 < v23);
            if (v32)
            {
              v24 = v27;
            }

            if ((v32 & (v25 == 0)) != 0)
            {
              v25 = v27;
            }

            ++v27;
          }

          while (v15 != v27);
          if (!v25 || !v24 || v25 == v24)
          {
            goto LABEL_47;
          }

          v42 = v10;
          v33 = (v16 + (v24 << 6));
          v34 = (v16 + (v25 << 6));
          v34[9] = v33[9] + v33[8] - v34[8];
          v34[7] = v33[7] + v33[6] - v34[6];
          if (v24 > v25)
          {
            v35 = v24 - 1;
            v36 = ~v24 | 0xFFFF0000;
            do
            {
              if (v33[5] == 1)
              {
                v37 = v33[8];
                if (v37 >= v20 && v37 < v23)
                {
                  v39 = *(v14 + 16);
                  if (v35 + 2 != v39)
                  {
                    cstdlib_memmove(v33, (v16 + ((v35 + 2) << 6)), (v36 + v39) << 6);
                    v14 = v45;
                  }

                  --*(v14 + 16);
                }
              }

              v30 = v25 >= v35--;
              v33 -= 16;
              ++v36;
            }

            while (!v30);
          }

          v15 = *(v14 + 16);
          v10 = v42;
        }

        while (v15 > v17);
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
          v40 = *(a1 + 24);
          v45 = 0;
          inserted = datac_RequestBlock(v40, 1021, 1u, &v45);
          if ((inserted & 0x80000000) == 0)
          {
            inserted = marker_loc_FilterSyncMarkers(v45);
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

  v45 = 0;
  if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v45) & 0x80000000) == 0)
  {
    *(a1 + 160) = *(v45 + 16);
  }

  v3 = wordpar_loc_AlignInputMarkers(a1);
  if ((v3 & 0x80000000) == 0)
  {
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "AFTER wordpar_loc_AlignInputMarkers", 0, 0, 0);
    v10 = 0;
    if (!*(a1 + 196))
    {
      v11 = wparser_NormalizeWords(*(a1 + 40), *(a1 + 24), HIDWORD(v44), v44, v43);
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
  memset(__dst, 0, sizeof(__dst));
  v11 = 0;
  v1 = datac_RequestBlock(*(a1 + 24), 1021, 1u, &v11);
  if ((v1 & 0x80000000) != 0)
  {
    return v1;
  }

  result = 2370838528;
  v3 = *(v11 + 16);
  if (*(v11 + 16))
  {
    v4 = *(v11 + 8);
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
            cstdlib_memcpy(__dst, (v4 + (v6 << 6)), 0x40uLL);
            v9 = v8[1];
            *v7 = *v8;
            v7[1] = v9;
            v10 = v8[3];
            v7[2] = v8[2];
            v7[3] = v10;
            cstdlib_memcpy(v8, __dst, 0x40uLL);
            v5 = 0;
          }
        }

        while (v5 < v3);
      }

      return v1;
    }
  }

  return result;
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
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    __s1 = 0;
    v49 = 0;
    if ((GetCfgParamVal(*(a1 + 88), *(a1 + 96), *(a1 + 80), "felid_act_lid", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 188) = cstdlib_strcmp(__s1, "yes") == 0;
    }

    if ((GetCfgParamVal(*(a1 + 88), *(a1 + 96), *(a1 + 80), "felid_remove_internal_lang", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 192) = cstdlib_strcmp(__s1, "yes") == 0;
    }

    v10 = (*(*(a1 + 32) + 136))(a2, a3, &v49);
    if ((v10 & 0x80000000) == 0)
    {
      if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v47) & 0x80000000) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v47 + 8);
      }

      inserted = datac_RequestBlock(*(a1 + 24), 1021, 1u, &v46);
      if ((inserted & 0x80000000) != 0)
      {
        goto LABEL_64;
      }

      v14 = 2370838528;
      v15 = *(v46 + 16);
      if (!*(v46 + 16))
      {
        return v14;
      }

      v16 = *(v46 + 8);
      if (v16[5] != 0x4000)
      {
        return v14;
      }

      if (!*(a1 + 196))
      {
        v17 = v16 + 8;
        v18 = v49 - v16[8];
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
      v10 = datac_RequestBlock(*(a1 + 24), 1020, 1u, &v48);
      if ((v10 & 0x80000000) == 0)
      {
        v19 = heap_Calloc(*(*(a1 + 16) + 8), 1, *(v48 + 16) + 1);
        v45 = v19;
        if (v19)
        {
          v20 = v19;
          cstdlib_strncpy(v19, *(v48 + 8), *(v48 + 16));
          v20[*(v48 + 16)] = 0;
          log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 4, 0, "L0:%s", v20);
          inserted = wordpar_loc_AlignInputMarkers(a1);
          if ((inserted & 0x80000000) == 0)
          {
            marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "out wordpar_loc_AlignInputMarkers()", 0, 0, 0);
            wordpar_loc_asian_ProcessWparserMarkers(*(a1 + 16), v16, (v46 + 16), v20);
            marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "out wordpar_loc_asian_ProcessWparserMarkers()", 0, 0, 0);
            inserted = wordpar_loc_asian_TranslateMarkup(a1, &v45, v46, v47);
            if ((inserted & 0x80000000) == 0)
            {
              if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v47) & 0x80000000) == 0)
              {
                v11 = *(v47 + 8);
              }

              v40 = *(v46 + 8);
              v41 = v11;
              if (v11 && *(v46 + 16))
              {
                v21 = 0;
                v22 = 0;
                v42 = 0;
                v23 = 0;
                v24 = (v40 + 40);
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
                      v26 = (v41 + v25);
                    }

                    *v24 = v26;
                    if (*(v24 - 5) == 21)
                    {
                      v23 = v26;
                    }

                    if (!*(v24 - 10))
                    {
                      v42 = cstdlib_strcmp(v26, "enu") == 0;
                      v22 = cstdlib_strcmp(*v24, "eng") == 0;
                    }

                    if (!v23 || cstdlib_strcmp(v23, "normal"))
                    {
                      if (v42 && *(v24 - 5) == 36 && *(v24 - 10) == 1)
                      {
                        *v24 = "enu";
                      }

                      if (v22)
                      {
                        if (*(v24 - 5) == 36 && *(v24 - 10) == 1)
                        {
                          *v24 = "eng";
                        }

                        v22 = 1;
                      }

                      else
                      {
                        v22 = 0;
                      }
                    }
                  }

                  ++v21;
                  v24 += 8;
                }

                while (v21 < *(v46 + 16));
              }

              marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_PostProcessMarkers()");
              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_PostProcessMarkers()", 1, 0, 0);
              v27 = v45;
              wordpar_loc_asian_PostProcessMarkers(*(a1 + 16), *(a1 + 188), v40, (v46 + 16), v45);
              marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_deleteMarkerForUnknown()");
              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteMarkerForUnknown()", 0, 0, 0);
              wordpar_loc_asian_deleteMarkerForUnknown(v40, (v46 + 16));
              if (*(a1 + 192))
              {
                marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_deleteConflictingLangMarker()");
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteConflictingLangMarker()", 0, 0, 0);
                if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &v43) & 0x80000000) == 0)
                {
                  wordpar_loc_asian_deleteConflictingLangMarker(v40, (v46 + 16), v43);
                }
              }

              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wparser_InsertWordMarkers()", 0, 0, 0);
              inserted = wparser_InsertWordMarkers(*(a1 + 40), *(a1 + 24), v27, (v46 + 16));
              if ((inserted & 0x80000000) == 0)
              {
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_RemoveBlankLatinRegions()", 1, 0, 0);
                wordpar_loc_asian_RemoveBlankLatinRegions(v40, (v46 + 16), v27);
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers()", 1, 0, 0);
                inserted = wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers(*(a1 + 16), v40, *(v46 + 16), &v45);
                if ((inserted & 0x80000000) == 0)
                {
                  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_InsertSpaceBeforeTNMarkers()", 1, 0, 0);
                  inserted = wordpar_loc_asian_InsertSpaceBeforeTNMarkers(*(a1 + 16), *(a1 + 24), &v45);
                  if ((inserted & 0x80000000) == 0)
                  {
                    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_HandleExtendedToi()", 0, 0, 0);
                    inserted = wordpar_loc_asian_HandleExtendedToi(*(a1 + 16), *(a1 + 24), v46, &v45);
                    if ((inserted & 0x80000000) == 0)
                    {
                      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_MarkerPostProcessing()", 1, 0, 0);
                      inserted = wordpar_loc_MarkerPostProcessing(*(a1 + 24), v46);
                      if ((inserted & 0x80000000) == 0)
                      {
                        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_InsertNLUMarkers()", 1, 0, 0);
                        inserted = wordpar_loc_InsertNLUMarkers(a1, v46);
                        if ((inserted & 0x80000000) == 0)
                        {
                          v28 = v45;
                          v29 = *(v46 + 8);
                          log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Write2DB) %s", v45);
                          marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "at end()", 1, 0, 0);
                          if (!cstdlib_strlen(v28))
                          {
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 34, "", "text/plain;charset=depes", 0, 0);
                            }

                            v34 = 0;
                            goto LABEL_73;
                          }

                          v30 = *(*(a1 + 32) + 104);
                          v31 = cstdlib_strlen(v28);
                          inserted = v30(a2, a3, v28, (v31 + 1));
                          if ((inserted & 0x80000000) == 0)
                          {
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              v32 = *(*(a1 + 16) + 32);
                              v33 = cstdlib_strlen(v28);
                              log_OutTraceTuningDataBinary(v32, 34, "", "text/plain;charset=depes", v28, (v33 + 1));
                            }

                            v34 = 1;
LABEL_73:
                            *(v48 + 16) = 0;
                            v35 = wordpar_loc_writeMarkersToOutputStream(a1, a4, a5, v29, v46, v34);
                            if ((v35 & 0x80000000) == 0)
                            {
                              if (*(a1 + 160))
                              {
                                v36 = *(v47 + 8);
                                if (v36)
                                {
                                  v37 = heap_Realloc(*(*(a1 + 16) + 8), v36, *(v47 + 2) * *(a1 + 160));
                                  if (v37)
                                  {
                                    v38 = v47;
                                    *(v47 + 8) = v37;
                                    v39 = *(a1 + 160);
                                    *(v38 + 16) = v39;
                                    *(v38 + 18) = v39;
                                  }

                                  else
                                  {
                                    v35 = 2370838538;
                                  }
                                }
                              }
                            }

                            goto LABEL_65;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_64:
          v35 = inserted;
LABEL_65:
          if (v45)
          {
            heap_Free(*(*(a1 + 16) + 8), v45);
          }

          return v35;
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
  v9 = 0;
  v6 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v9, __c + 1, __c);
  if ((v6 & 0x80000000) == 0 && *(__c + 1))
  {
    v7 = cstdlib_strchr(*v9, LOBYTE(__c[0]));
    if (v7)
    {
      *v7 = 0;
    }

    *a5 = *v9;
  }

  return v6;
}

uint64_t wordpar_loc_asian_ProcessWparserMarkers(uint64_t a1, _DWORD *a2, _WORD *a3, char *__s)
{
  result = cstdlib_strlen(__s);
  v79 = result;
  v8 = *a3;
  if (v8 < 2)
  {
    goto LABEL_109;
  }

  v9 = 1;
  do
  {
    v10 = &a2[16 * v9];
    if (v10[5] == 7)
    {
      v11 = v10[10];
      if ((v11 - 15) <= 1)
      {
        v12 = *(v10 + 8);
        v13 = *(v10 + 1);
        if (*(v10 + 8))
        {
          v14 = 0;
          do
          {
            if (!*(v13 + 8 * v14))
            {
              v15 = v13 + 8 * v14;
              if (v8 >= 2u)
              {
                v16 = v10[8];
                v17 = a2 + 21;
                v18 = 2;
                v19 = v8 - 1;
                do
                {
                  if (v17[3] > v16)
                  {
                    break;
                  }

                  if (*v17 == 998)
                  {
                    v20 = v17[1];
                    if (v20 == v10[6])
                    {
                      v21 = v17[5] != v11 || v18 >= v8;
                      if (!v21 && v17[16] == 41)
                      {
                        v22 = *(v15 + 4) + v20;
                        if (a2[7] + a2[6] < v22)
                        {
                          v22 = a2[7] + a2[6];
                        }

                        v23 = v17[2];
                        v17[17] = v22;
                        v17[18] = v23;
                        *v17 = 0;
                      }
                    }
                  }

                  ++v18;
                  v17 += 16;
                  --v19;
                }

                while (v19);
              }

              v24 = *(v15 + 4) + v10[6];
              if (a2[7] + a2[6] < v24)
              {
                v24 = a2[7] + a2[6];
              }

              v10[6] = v24;
            }

            ++v14;
          }

          while (v14 != v12);
LABEL_30:
          result = heap_Free(*(a1 + 8), v13);
          *(v10 + 1) = 0;
          *(v10 + 8) = 0;
          LOWORD(v8) = *a3;
          goto LABEL_31;
        }

        if (v13)
        {
          goto LABEL_30;
        }

        if (v8 >= 2u)
        {
          v25 = 0;
          v26 = v10[8];
          v27 = 1;
          v28 = a2 + 23;
          v29 = 1;
          do
          {
            v30 = &a2[16 * v29];
            if (v30[8] > v26)
            {
              break;
            }

            if (v30[5] == 998)
            {
              v31 = v30[6];
              if (v31 == v10[6] && v30[10] == v11)
              {
                v32 = (v27 + 1);
                if (v32 < v8 && (v33 = &a2[16 * v32], result = v33[5], result == 41) && (result = v33[6], result == v31))
                {
                  v33[7] = v30[7];
                  v30[5] = 0;
                }

                else if (v27 >= 2u)
                {
                  result = v25;
                  v34 = v28;
                  while (1)
                  {
                    if (*(v34 - 2) == 41)
                    {
                      v35 = *(v34 - 1);
                      if (v35 < v31)
                      {
                        goto LABEL_49;
                      }

                      if (v35 == v31)
                      {
                        break;
                      }
                    }

                    v34 -= 16;
                    if (!(result-- & 0xFFFE))
                    {
                      goto LABEL_49;
                    }
                  }

                  *v34 = v30[7];
                  v30[5] = 0;
                  break;
                }
              }
            }

LABEL_49:
            LOWORD(v27) = v27 + 1;
            v29 = v27;
            v27 = v27;
            v28 += 16;
            ++v25;
          }

          while (v27 < v8);
        }
      }
    }

LABEL_31:
    ++v9;
  }

  while (v9 < v8);
  if (v8 < 2u)
  {
    goto LABEL_109;
  }

  v37 = 1;
  do
  {
    v38 = &a2[16 * v37];
    if (v38[5] == 998)
    {
      v39 = 1;
      while (1)
      {
        v40 = &a2[16 * v39];
        v41 = v40[8];
        if (v41 > v38[8])
        {
          goto LABEL_60;
        }

        if (v40[5] == 41)
        {
          result = v38[6];
          if (v40[6] == result)
          {
            break;
          }
        }

        if (++v39 >= v8)
        {
          goto LABEL_60;
        }
      }

      v42 = v38[7];
      v40[7] = v42;
      v43 = v39 + 1;
      if (v43 < v8)
      {
        v44 = &a2[16 * v43];
        if (v44[5] == 39 && v44[8] == v41)
        {
          v45 = v44 + 7;
LABEL_70:
          *v45 = v42;
          goto LABEL_60;
        }
      }

      if (v39 >= 2u && *(v40 - 11) == 39 && *(v40 - 8) == v41)
      {
        v45 = v40 - 9;
        goto LABEL_70;
      }
    }

LABEL_60:
    ++v37;
  }

  while (v37 != v8);
  v46 = v79;
  v47 = 1;
  v48 = 1;
  v78 = a1;
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
      ++v48;
      goto LABEL_73;
    }

    v54 = v49[10];
    if (v54 != 43)
    {
      if ((v54 - 15) <= 1)
      {
        goto LABEL_72;
      }

      goto LABEL_89;
    }

    if (!v49[9])
    {
      v64 = *(v49 + 6);
      if (v64)
      {
        result = heap_Free(*(a1 + 8), v64);
        *(v49 + 6) = 0;
      }

LABEL_89:
      v65 = *(v49 + 1);
      if (v65)
      {
        result = heap_Free(*(a1 + 8), v65);
        *(v49 + 1) = 0;
        *(v49 + 8) = 0;
      }

      goto LABEL_73;
    }

    v55 = v49[8] - a2[8];
    result = cstdlib_strlen(szPHONMARKER_BEG);
    v56 = (v55 - result);
    if (v56 < v46)
    {
      v57 = cstdlib_strlen(szPHONMARKER_BEG);
      result = cstdlib_strncmp(&__s[v56], szPHONMARKER_BEG, v57);
      if (!result)
      {
        v58 = *(v49 + 1);
        if (v58)
        {
          result = heap_Free(*(v78 + 8), v58);
          *(v49 + 1) = 0;
          *(v49 + 8) = 0;
        }

        v59 = &a2[16 * v48];
        v60 = *v49;
        v61 = *(v49 + 1);
        v62 = *(v49 + 3);
        *(v59 + 2) = *(v49 + 2);
        *(v59 + 3) = v62;
        *v59 = v60;
        *(v59 + 1) = v61;
        v59[8] = a2[8] + v55;
        while (1)
        {
          LOWORD(v55) = v55 + 1;
          v63 = __s[v55];
          if (v55 >= v79)
          {
            break;
          }

          if (v63 == 31)
          {
            goto LABEL_92;
          }
        }

        if (v63 != 31)
        {
          goto LABEL_93;
        }

LABEL_92:
        result = cstdlib_strlen(szPHONMARKER_BEG);
        v59[9] = v55 - v56 - result;
LABEL_93:
        ++v48;
      }

      v46 = v79;
      a1 = v78;
    }

LABEL_73:
    if (++v47 < *a3)
    {
      continue;
    }

    break;
  }

  *a3 = v48;
  if (v48 < 2u)
  {
LABEL_109:
    *a3 = 1;
    return result;
  }

  v66 = 0;
  v67 = 1;
  do
  {
    v68 = &a2[16 * v67];
    if (v68[5] != 7 || v68[10] != 43)
    {
      v69 = v66;
      v70 = a2 + 26;
      v71 = 1;
      while (1)
      {
        if (v69)
        {
          if (*(v70 - 5) == 7 && *v70 == 43)
          {
            v72 = v68[8];
            v73 = *(v70 - 2);
            if (v72 >= v73 && v72 < *(v70 - 1) + v73)
            {
              break;
            }
          }
        }

        ++v71;
        v70 += 16;
        --v69;
        if (v71 >= v48)
        {
          goto LABEL_106;
        }
      }

      v68[8] = v73;
    }

LABEL_106:
    ++v67;
    ++v66;
  }

  while (v67 < v48);
  *a3 = v67;
  LOWORD(v74) = 1;
  do
  {
    v74 = v74;
    result = &a2[16 * v74];
    while (1)
    {
      v75 = *(result + 20);
      if (v75 == 998 || v75 == 0)
      {
        break;
      }

      ++v74;
      result += 64;
      if (v74 >= v67)
      {
        return result;
      }
    }

    v77 = v74 + 1;
    if (v67 > v77)
    {
      result = cstdlib_memmove(result, &a2[16 * v77], (v67 - v77) << 6);
      LOWORD(v67) = *a3;
    }

    LOWORD(v67) = v67 - 1;
    *a3 = v67;
  }

  while (v67 > v74);
  return result;
}

uint64_t wordpar_loc_asian_TranslateMarkup(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v163 = a4;
  v164[0] = a3;
  v7 = cstdlib_strlen((a1 + 180));
  v8 = *a2;
  v162 = 0;
  v161 = 30;
  v160 = 0;
  v9 = *(v4 + 16);
  MarkerArgStr = marker_getMarkerArgStr(2u);
  v11 = v9 + cstdlib_strlen(MarkerArgStr) + 1;
  if (*(v4 + 18) < v11)
  {
    v12 = datac_RequestBlock(*(a1 + 24), 1012, v11, &v163);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v4 = v163;
  }

  v13 = (*(v4 + 8) + *(v4 + 2) * *(v4 + 16));
  v14 = marker_getMarkerArgStr(2u);
  cstdlib_strcpy(v13, v14);
  v15 = marker_getMarkerArgStr(2u);
  v13[cstdlib_strlen(v15)] = 0;
  v16 = *(v163 + 16);
  *(v163 + 16) = v11;
  v17 = marker_getMarkerArgStr(1u);
  v18 = v11 + cstdlib_strlen(v17) + 1;
  v19 = v163;
  if (*(v163 + 18) < v18)
  {
    v12 = datac_RequestBlock(*(a1 + 24), 1012, v18, &v163);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v19 = v163;
  }

  v20 = (*(v19 + 8) + *(v19 + 2) * *(v19 + 16));
  v21 = marker_getMarkerArgStr(1u);
  cstdlib_strcpy(v20, v21);
  v22 = marker_getMarkerArgStr(1u);
  v20[cstdlib_strlen(v22)] = 0;
  v157 = *(v163 + 16);
  *(v163 + 16) = v18;
  HIBYTE(v161) = 76;
  v23 = *(*(a1 + 16) + 32);
  v24 = cstdlib_strlen(v8);
  log_OutText(v23, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStrAddMarker(\\x1eL)", v24, v8);
  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eL)", 0, 0, 0);
  v12 = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v161, v164[0], v16);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  HIBYTE(v161) = 68;
  v25 = *(*(a1 + 16) + 32);
  v26 = cstdlib_strlen(v8);
  log_OutText(v25, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStrAddMarker(\\x1eD)", v26, v8);
  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eD)", 0, 0, 0);
  v12 = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v161, v164[0], v16);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v27 = *(*(a1 + 16) + 32);
  v28 = cstdlib_strlen(v8);
  log_OutText(v27, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStrAddMarker(\\x1eP)", v28, v8);
  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eP)", 0, 0, 0);
  HIBYTE(v161) = 80;
  v29 = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v161, v164[0], v157);
  v30 = v29;
  if ((v29 & 0x80000000) == 0)
  {
    v31 = v29;
    v145 = a2;
    v32 = *(*(a1 + 16) + 32);
    v33 = cstdlib_strlen(v8);
    log_OutText(v32, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szPHONMARKER_BEG)", v33, v8);
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szPHONMARKER_BEG)", 0, 0, 0);
    wordpar_loc_asian_deleteStr(v164[0], v8, szPHONMARKER_BEG);
    v34 = *(*(a1 + 16) + 32);
    v35 = cstdlib_strlen(v8);
    log_OutText(v34, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szWORD_END)", v35, v8);
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szWORD_END)", 0, 0, 0);
    wordpar_loc_asian_deleteStr(v164[0], v8, szWORD_END);
    v36 = *(*(a1 + 16) + 32);
    v37 = cstdlib_strlen(v8);
    log_OutText(v36, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG, ), initial only", v37, v8);
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG, ), initial only", 0, 0, 0);
    v38 = 1;
    wordpar_loc_asian_replaceStrWithStr(v164[0], v8, "", 1);
    v39 = *(*(a1 + 16) + 32);
    v40 = cstdlib_strlen(v8);
    log_OutText(v39, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG,  )", v40, v8);
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG,  )", 0, 0, 0);
    wordpar_loc_asian_replaceStrWithStr(v164[0], v8, " ", 0);
    v41 = *(*(a1 + 16) + 32);
    v42 = cstdlib_strlen(v8);
    log_OutText(v41, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", v42, v8);
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", 0, 0, 0);
    wordpar_loc_asian_deleteStr(v164[0], v8, szMARKER_END);
    v43 = *(*(a1 + 16) + 32);
    v44 = cstdlib_strlen(v8);
    log_OutText(v43, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", "after wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", v44, v8);
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "after wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", 0, 0, 0);
    v45 = *(v164[0] + 16);
    v79 = v45 >= 2;
    v46 = v45 - 2;
    if (v79)
    {
      v47 = 0;
      v48 = *(v164[0] + 8);
      v49 = *(v48 + 32);
      v50 = (v48 + 104);
      do
      {
        v51 = *(v50 - 2);
        if (v51 == v49 && *(v50 - 5) == 7 && *v50 == 43)
        {
          v47 = 1;
        }

        v52 = v51 > v49 || v46-- == 0;
        v50 += 16;
      }

      while (!v52);
      v38 = v47 == 0;
    }

    v53 = cstdlib_strlen(v8);
    v30 = v31;
    if ((v53 & 0xFFFE) != 0 && *v8 == 32 && v38)
    {
      cstdlib_memmove(v8, v8 + 1, v53);
      v54 = *(v164[0] + 8);
      v55 = *(v164[0] + 16);
      if (v55 >= 2)
      {
        v56 = v54[8];
        v57 = v54 + 24;
        v58 = v55 - 1;
        do
        {
          if (*v57 != v56)
          {
            --*v57;
          }

          v57 += 16;
          --v58;
        }

        while (v58);
      }

      --v54[9];
    }

    v59 = v164[0];
    v60 = *(v164[0] + 8);
    if (*(v164[0] + 16) < 2u)
    {
      goto LABEL_148;
    }

    v147 = v7;
    v61 = -2;
    v62 = 160;
    v63 = 3;
    v64 = 128;
    v65 = 1;
    v144 = v7;
LABEL_33:
    v66 = &v60[16 * v65];
    if (v66[5] != 7 || v66[10] != 43)
    {
      goto LABEL_87;
    }

    v152 = v63;
    v153 = v62;
    v148 = cstdlib_strlen(v8);
    if (v66[8] < v60[8] || !v66[9] || (v67 = cstdlib_strlen(v8), v68 = v66[9], v68 > v67))
    {
      v143 = *(v66 + 6);
      if (v143)
      {
        heap_Free(*(*(a1 + 16) + 8), v143);
        *(v66 + 6) = 0;
      }

      log_OutPublic(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 1922, 0);
      return 0;
    }

    v159 = v65;
    v154 = v64;
    v155 = v60;
    v69 = &v8[v66[8] - v60[8]];
    v70 = 0;
    v71 = v66[9];
    if (v66[9])
    {
      do
      {
        if (!utf8_BelongsToSet(0, v69, v70, v68))
        {
          goto LABEL_42;
        }

        ++v70;
      }

      while (v71 != v70);
      v70 = v68;
LABEL_42:
      v72 = v68 - 1;
      if (v68 == 1)
      {
LABEL_48:
        LOWORD(v68) = 1;
LABEL_49:
        if (v68 <= v70)
        {
          goto LABEL_82;
        }

        v149 = v61;
        v146 = v30;
        v74 = 0;
        v75 = 95;
        v76 = v70;
        while (1)
        {
          v77 = *(v69 + v76);
          if (v77 <= 0x5B)
          {
            break;
          }

          if (v77 == 95)
          {
            goto LABEL_63;
          }

          v52 = v77 == 92;
          v78 = v76 + 1;
          v79 = !v52 || v78 >= v68;
          if (!v79 && *(v69 + v78) == 84)
          {
            v150 = v74;
            for (i = v76 + 2; i < v68; i += utf8_determineUTF8CharLength(v81))
            {
              v81 = *(v69 + i);
              if (v81 == 92)
              {
                break;
              }
            }

            if (*(v69 + i) == 92)
            {
              v76 = i;
            }

            v74 = v150;
          }

LABEL_71:
          if (!utf8_BelongsToSet(0, v69, v76, v71))
          {
            v75 = *(v69 + v76);
          }

          if (++v76 >= v68)
          {
LABEL_74:
            v82 = v75;
            if (v75 == 35)
            {
              v30 = v146;
              v61 = v149;
            }

            else
            {
              v30 = v146;
              v61 = v149;
              if (v82 != 95)
              {
                LOWORD(v74) = v74 + 1;
              }
            }

            v83 = v74;
            if (v74)
            {
              v66[5] = 34;
              v84 = v163;
              v85 = *(v163 + 16);
              v86 = v68 - v70 + v85 + 1;
              if (*(v163 + 18) < v86)
              {
                v12 = datac_RequestBlock(*(a1 + 24), 1012, (v68 - v70 + v85 + 1), &v163);
                if ((v12 & 0x80000000) == 0)
                {
                  v84 = v163;
                  v87 = *(v164[0] + 8);
                  v85 = *(v163 + 16);
                  goto LABEL_90;
                }

                return v12;
              }

              v87 = v155;
LABEL_90:
              v90 = &v87[16 * v159];
              v156 = v87;
              v91 = v90[8] - v87[8];
              v92 = (*(v84 + 8) + *(v84 + 2) * v85);
              cstdlib_strncpy(v92, &v8[v91 + v70], (v68 - v70));
              v92[v68 - v70] = 0;
              v90[10] = *(v163 + 16);
              *(v163 + 16) = v86;
              if (v147 * v83 > *(v90 + 18))
              {
                v93 = *(*(a1 + 16) + 8);
                v94 = cstdlib_strlen(v8);
                v95 = heap_Realloc(v93, v8, v147 * v83 + v94 - *(v90 + 18) + 1);
                if (v95)
                {
                  v8 = v95;
                  *v145 = v95;
                  goto LABEL_93;
                }

                return 2370838538;
              }

LABEL_93:
              v158 = v147 * v83;
              if (v91 >= v156[9])
              {
                v151 = 0;
              }

              else
              {
                v151 = *(v90 + 18);
                cstdlib_memmove(&v8[v91], &v8[(v151 + v91)], v148 - (v151 + v91) + 1);
              }

              v96 = 0;
              do
              {
                v97 = cstdlib_strlen(v8);
                cstdlib_memmove(&v8[v91 + v147], &v8[v91], (v97 - v91));
                v8[v97 + v147] = 0;
                cstdlib_memmove(&v8[v91], (a1 + 180), v144);
                ++v96;
              }

              while (v83 > v96);
              v98 = *(v164[0] + 16);
              v99 = v154;
              if (v159 + 1 < v98)
              {
                v100 = (v156 + v153);
                v101 = v152;
                do
                {
                  if (*v100 > v90[8])
                  {
                    *v100 += v158 - v151;
                  }

                  v100 += 16;
                  v52 = v98 == v101++;
                }

                while (!v52);
              }

              v102 = 0;
              v90[9] = 0;
              v103 = v149;
              do
              {
                v30 = datac_RequestBlock(*(a1 + 24), 1021, (v98 + 1), v164);
                if ((v30 & 0x80000000) != 0)
                {
                  return v30;
                }

                v104 = *(v164[0] + 8);
                cstdlib_memmove(v104 + v99 + 64, v104 + v99, (v103 + *(v164[0] + 16)) << 6);
                v105 = *(v164[0] + 8) + v99;
                *v105 = 1;
                *(v105 + 20) = 1;
                v106 = &v104[16 * v159];
                *(v105 + 24) = *(v106 + 3);
                *(v105 + 32) = v102 + v106[8];
                *(v105 + 36) = v147;
                *(v105 + 16) = 0;
                *(v105 + 8) = 0;
                *(v105 + 40) = 0;
                *(v105 + 48) = 0;
                v59 = v164[0];
                v107 = *(v164[0] + 16);
                LOWORD(v98) = v107 + 1;
                *(v164[0] + 16) = v107 + 1;
                v99 += 64;
                v102 += v147;
                --v103;
                --v83;
              }

              while (v83);
              v108 = v30;
              v109 = v106[8] + v158;
              v110 = (v107 + 1);
              if (((v107 + 1) & 0xFFFE) != 0)
              {
                v111 = (v107 + 1);
              }

              else
              {
                v111 = 1;
              }

              v61 = v149;
              v60 = v104;
              v65 = v159;
              if (v110 < 2)
              {
LABEL_115:
                if (v110 < 2)
                {
                  LOWORD(v115) = 1;
                  v116 = v157;
                }

                else
                {
                  v114 = (v104 + 26);
                  v115 = 1;
                  v116 = v157;
                  while (1)
                  {
                    v117 = *(v114 - 5);
                    if (v117 == 21)
                    {
                      v116 = *v114;
                    }

                    v118 = *(v114 - 2) - v104[8];
                    if (v109 <= v118 && (v117 == 7 || v109 != v118))
                    {
                      break;
                    }

                    ++v115;
                    v114 += 16;
                    if ((v107 + 1) == v115)
                    {
                      goto LABEL_130;
                    }
                  }
                }

                if (v115 == v98)
                {
LABEL_130:
                  v120 = datac_RequestBlock(*(a1 + 24), 1021, (v107 + 2), v164);
                  v121 = v120;
                  if ((v120 & 0x80000000) != 0)
                  {
                    return v120;
                  }

                  v122 = *(v164[0] + 8);
                  v123 = *(v164[0] + 16);
                  v124 = &v122[16 * v123];
                  *v124 = 1;
                  v124[5] = 21;
                  v125 = v122;
                  if (v107)
                  {
                    LastPosRef = wordpar_loc_asian_getLastPosRef(v122, v123, v109 - v122[8], v107, 0);
                  }

                  else
                  {
                    LastPosRef = v122[7] + v122[6];
                  }

                  v63 = v152;
                  v62 = v153;
                  v64 = v154;
                  v124[6] = LastPosRef;
                  v124[7] = 0;
                  v124[8] = v109;
                  v124[9] = 0;
                  *(v124 + 8) = 0;
                  *(v124 + 1) = 0;
                  v124[10] = v116;
                  *(v124 + 6) = 0;
                  v59 = v164[0];
                  ++*(v164[0] + 16);
                  v30 = v121;
                  v60 = v125;
                }

                else
                {
                  v127 = v115;
                  v128 = v104[8];
                  if (v115 < v98)
                  {
                    v129 = &v104[16 * v115 + 5];
                    v130 = v115 + 1;
                    while (v109 == v129[3] - v128)
                    {
                      v132 = *v129;
                      v129 += 16;
                      v131 = v132;
                      if (v130 < (v107 + 1))
                      {
                        ++v130;
                        if (v131 != 21)
                        {
                          continue;
                        }
                      }

                      if (v131 != 21)
                      {
                        break;
                      }

                      v30 = v108;
                      goto LABEL_141;
                    }
                  }

                  v133 = wordpar_loc_asian_getLastPosRef(v104, (v107 + 1), v109 - v128, v127, 0);
                  v134 = datac_RequestBlock(*(a1 + 24), 1021, (v107 + 2), v164);
                  v135 = v134;
                  if ((v134 & 0x80000000) != 0)
                  {
                    return v134;
                  }

                  v60 = *(v164[0] + 8);
                  cstdlib_memmove(&v60[16 * v127 + 16], &v60[16 * v127], (*(v164[0] + 16) - v127) << 6);
                  v136 = *(v164[0] + 8) + (v127 << 6);
                  *v136 = 1;
                  *(v136 + 20) = 21;
                  *(v136 + 24) = v133;
                  *(v136 + 28) = 0;
                  *(v136 + 32) = v109;
                  *(v136 + 16) = 0;
                  *(v136 + 8) = 0;
                  *(v136 + 36) = 0;
                  *(v136 + 40) = v116;
                  *(v136 + 48) = 0;
                  v59 = v164[0];
                  ++*(v164[0] + 16);
                  v30 = v135;
LABEL_141:
                  v63 = v152;
                  v62 = v153;
                  v64 = v154;
                }

                v65 = v159;
                goto LABEL_87;
              }

              v112 = v104 + 21;
              v113 = v111 - 1;
              while (v109 != v112[3] || *v112 != 21)
              {
                v112 += 16;
                if (!--v113)
                {
                  goto LABEL_115;
                }
              }

              v30 = v108;
              v63 = v152;
              v62 = v153;
              v64 = v154;
LABEL_87:
              ++v65;
              v62 += 64;
              ++v63;
              v64 += 64;
              --v61;
              if (v65 >= *(v59 + 16))
              {
LABEL_148:
                v60[9] = cstdlib_strlen(v8);
                if (*(a1 + 188) || (paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &v160) & 0x80000000) == 0 && (!LH_stricmp(v160, "MNC") || !LH_stricmp(v160, "MNT") || !LH_stricmp(v160, "SIC")))
                {
                  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "in wordpar_loc_asian_TranslateMarkup() before remove conflict internal LANG marker", 0, 0, 0);
                  v138 = v164[0];
                  LODWORD(v139) = *(v164[0] + 16);
                  if (v139 >= 2)
                  {
                    v140 = v60 + 16;
                    v141 = -1;
                    v142 = 1;
                    do
                    {
                      if (*(v140 - 11) == 36 && v140[5] == 36 && *(v140 - 8) == v140[8] && !*v140)
                      {
                        cstdlib_memmove(v140 - 16, v140, (v141 + v139) << 6);
                        v138 = v164[0];
                        --*(v164[0] + 16);
                      }

                      ++v142;
                      v139 = *(v138 + 16);
                      v140 += 16;
                      --v141;
                    }

                    while (v142 < v139);
                  }

                  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "in wordpar_loc_asian_TranslateMarkup() after remove conflict internal LANG marker", 0, 0, 0);
                }

                return v30;
              }

              goto LABEL_33;
            }

LABEL_82:
            log_OutPublic(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 1818, 0);
            v88 = *(v66 + 6);
            if (v88)
            {
              heap_Free(*(*(a1 + 16) + 8), v88);
              *(v66 + 6) = 0;
            }

            v65 = v159;
            v59 = v164[0];
            v89 = *(v164[0] + 16);
            v64 = v154;
            v60 = v155;
            if (v159 + 1 != v89)
            {
              cstdlib_memmove(v66, &v155[16 * v159 + 16], (v89 - v159) << 6);
              v59 = v164[0];
              LOWORD(v89) = *(v164[0] + 16);
            }

            v63 = v152;
            v62 = v153;
            *(v59 + 16) = v89 - 1;
            goto LABEL_87;
          }
        }

        if (v77 != 35)
        {
          if (v77 == 18)
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

LABEL_63:
        if (v75 != 35 && v75 != 95)
        {
          ++v74;
        }

        goto LABEL_71;
      }
    }

    else
    {
      v72 = -1;
    }

    v73 = v72;
    while (utf8_BelongsToSet(0, v69, v73, v71))
    {
      LOWORD(v68) = v68 - 1;
      if (!--v73)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_49;
  }

  return v30;
}