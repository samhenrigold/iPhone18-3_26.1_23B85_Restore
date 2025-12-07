uint64_t uselect_ParseGenericFeatureMap(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, __n128 a5)
{
  v30 = *MEMORY[0x277D85DE8];
  *v28 = 0;
  v26 = a4;
  ssftriff_reader_GetChunkData(a2, a4, v28, a5);
  v9 = v8;
  if ((v8 & 0x80000000) == 0)
  {
    v10 = **v28;
    if (**v28)
    {
      v11 = heap_Calloc(*(a1 + 8), v10 + 1, 8);
      a3[417] = v11;
      if (v11)
      {
        v12 = heap_Calloc(*(a1 + 8), v10 + 1, 8);
        a3[418] = v12;
        if (v12)
        {
          v13 = heap_Calloc(*(a1 + 8), v10 + 1, 8);
          a3[419] = v13;
          if (v13)
          {
            v14 = 0;
            v15 = 2;
            v25 = v10;
            while (1)
            {
              __dst[0] = 0;
              v27 = 256;
              v9 = ssftriff_reader_ReadStringZ(a2, *v28, v26, v15, __dst, &v27);
              v16 = v27;
              *(a3[417] + 8 * v14) = uselect_strdup(a1, __dst);
              if (!*(a3[417] + 8 * v14))
              {
                break;
              }

              v17 = v14;
              v18 = v16 + v15;
              v19 = *(*v28 + v18);
              *(a3[418] + 8 * v14) = heap_Calloc(*(a1 + 8), (v19 + 1), 8);
              if (!*(a3[418] + 8 * v14))
              {
                break;
              }

              *(a3[419] + 8 * v14) = heap_Calloc(*(a1 + 8), (v19 + 1), 1);
              if (!*(a3[419] + 8 * v14))
              {
                break;
              }

              v15 = v18 + 2;
              if (v19)
              {
                v20 = 0;
                while (1)
                {
                  v21 = v15;
                  __dst[0] = 0;
                  v27 = 256;
                  v9 = ssftriff_reader_ReadStringZ(a2, *v28, v26, v15, __dst, &v27);
                  v22 = v27;
                  *(*(a3[418] + 8 * v17) + 8 * v20) = uselect_strdup(a1, __dst);
                  if (!*(*(a3[418] + 8 * v17) + 8 * v20))
                  {
                    return 2229280778;
                  }

                  v15 += v22;
                  if (++v20 >= v19)
                  {
                    for (i = 0; i != v19; ++i)
                    {
                      *(*(a3[419] + 8 * v17) + i) = *(*v28 + v21 + v22 + i);
                    }

                    v15 = v21 + v22 + i;
                    LODWORD(v10) = v25;
                    break;
                  }
                }
              }

              v14 = v17 + 1;
              if (v17 + 1 >= v10)
              {
                return v9;
              }
            }
          }
        }
      }

      return 2229280778;
    }
  }

  return v9;
}

uint64_t uselect_ParseVoicePartChunks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s1, _DWORD *a6)
{
  v45 = a4;
  v11 = *(a3 + 3552);
  if (cstdlib_strcmp(__s1, "CTUN"))
  {
    if (cstdlib_strcmp(__s1, "CNT0"))
    {
      if (cstdlib_strcmp(__s1, "TAB0"))
      {
        if (cstdlib_strcmp(__s1, "XTNU"))
        {
          if (cstdlib_strcmp(__s1, "SYMB"))
          {
            if (cstdlib_strcmp(__s1, "SYLC"))
            {
              if (cstdlib_strcmp(__s1, "UNIT"))
              {
                if (cstdlib_strcmp(__s1, "PREU"))
                {
                  if (cstdlib_strcmp(__s1, "TRI "))
                  {
                    v13 = 0;
                    *a6 = 0;
                    return v13;
                  }

                  v44 = 0;
                  Position = ssftriff_reader_GetPosition(a2);
                  v43 = 0;
                  v29 = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v43);
                  if ((v29 & 0x80000000) != 0)
                  {
                    return v29;
                  }

                  v30 = 0;
                  v40 = v11 + 256;
                  v41 = v11 + 248;
                  ++*(v11 + 104);
                  v42 = v11 + 232;
                  v31 = v11 + 204;
                  v32 = v11 + 216;
                  while (1)
                  {
                    v33 = ssftriff_reader_OpenChunk(a2, __s1, &v45, 0);
                    if (!cstdlib_strcmp(__s1, "TRIL"))
                    {
                      break;
                    }

                    v34 = cstdlib_strcmp(__s1, "TRIR");
                    if (v34)
                    {
                      v35 = 4;
                    }

                    else
                    {
                      v35 = 1;
                    }

                    if (!v34)
                    {
                      goto LABEL_56;
                    }

LABEL_66:
                    if ((v30 & 0x1FFF) == 0x14)
                    {
                      v30 = 0;
                    }

                    if (v30 >= 0)
                    {
                      v39 = v33;
                    }

                    else
                    {
                      v39 = v30;
                    }

                    if ((v39 & 0x80000000) == 0)
                    {
                      v39 = ssftriff_reader_CloseChunk(a2);
                      if ((v39 & 0x80000000) == 0)
                      {
                        continue;
                      }
                    }

                    if ((v39 & 0x1FFF) == 0x14)
                    {
                      return 0;
                    }

                    else
                    {
                      return v39;
                    }
                  }

                  v35 = 0;
LABEL_56:
                  if (v30 < 0)
                  {
                    goto LABEL_66;
                  }

                  while (1)
                  {
                    while (1)
                    {
                      while (1)
                      {
                        SubChunkInfo = uselect_GetSubChunkInfo(a2, v43, Position, __s1, &v45, &v44);
                        if (SubChunkInfo < 0)
                        {
                          v30 = SubChunkInfo;
                          goto LABEL_66;
                        }

                        if (cstdlib_strcmp(__s1, "HAIN"))
                        {
                          break;
                        }

                        *(v31 + 4 * v35) = v45 >> 2;
                        *(v32 + 8 * v35) = v44;
                      }

                      if (cstdlib_strcmp(__s1, "OFCT"))
                      {
                        break;
                      }

                      v38 = v44;
                      v37 = v42;
LABEL_64:
                      *(v37 + 8 * v35) = v38;
                    }

                    if (!cstdlib_strcmp(__s1, "TABL"))
                    {
                      v37 = v40;
                      *(v41 + 4 * v35) = v45 >> 2;
                      v38 = v44;
                      goto LABEL_64;
                    }
                  }
                }

                v44 = 0;
                v13 = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v44);
                if ((v13 & 0x80000000) != 0)
                {
                  return v13;
                }

                v22 = 2229280772;
                ++*(v11 + 104);
                v26 = *(v11 + 108);
                if (v26 && a4 >> 2 == v26)
                {
                  *(v11 + 272) = v44;
                  return v13;
                }

                return v22;
              }

              v44 = 0;
              v13 = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v44);
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }

              v22 = 2229280772;
              ++*(v11 + 104);
              v25 = *(v11 + 108);
              if (!v25 || a4 % v25)
              {
                return v22;
              }

              *(v11 + 200) = a4 / v25;
              *(v11 + 192) = v44;
            }

            else
            {
              v44 = 0;
              v13 = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v44);
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }

              v22 = 2229280772;
              ++*(v11 + 104);
              v24 = *(v11 + 108);
              if (!v24 || a4 % v24)
              {
                return v22;
              }

              *(v11 + 184) = a4 / v24;
              *(v11 + 176) = v44;
            }
          }

          else
          {
            v44 = 0;
            v13 = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v44);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

            v22 = 2229280772;
            ++*(v11 + 104);
            v23 = *(v11 + 108);
            if (!v23 || a4 % v23)
            {
              return v22;
            }

            *(v11 + 168) = a4 / v23;
            *(v11 + 160) = v44;
          }

          return v13;
        }

        v44 = 0;
        v13 = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v44);
        if ((v13 & 0x80000000) == 0)
        {
          ++*(v11 + 104);
          *(v11 + 136) = v44;
          *(v11 + 144) = a4 >> 2;
          v15 = *(v11 + 108);
          if (v15)
          {
            v16 = heap_Calloc(*(a1 + 8), 1, (v15 >> 3) + 2);
            *(v11 + 152) = v16;
            if (v16)
            {
              if (*(v11 + 144))
              {
                v17 = 0;
                v18 = *(v11 + 136);
                do
                {
                  v19 = *(v18 + 4 * v17);
                  v20 = v19 >> 3;
                  v21 = v19 & 7;
                  if (v21)
                  {
                    ++v20;
                  }

                  *(*(v11 + 152) + v20) |= 1 << (v21 ^ 7);
                  v18 = *(v11 + 136);
                  v17 += *(v18 + 4 * (v17 + 1)) + 2;
                }

                while (v17 < *(v11 + 144));
              }
            }

            else
            {
              return 2229280778;
            }
          }

          else
          {
            return 2229280772;
          }
        }
      }

      else
      {
        v44 = 0;
        v13 = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v44);
        if ((v13 & 0x80000000) == 0)
        {
          ++*(v11 + 104);
          *(v11 + 128) = v44;
        }
      }
    }

    else
    {
      v44 = 0;
      v13 = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v44);
      if ((v13 & 0x80000000) == 0)
      {
        ++*(v11 + 104);
        *(v11 + 120) = v44;
        *(v11 + 112) = a4 >> 1;
      }
    }
  }

  else
  {
    v44 = 0;
    ssftriff_reader_GetChunkData(a2, a4, &v44, v12);
    v13 = v14;
    if ((v14 & 0x80000000) == 0)
    {
      *(v11 + 108) = *v44;
    }
  }

  return v13;
}

uint64_t uselect_LoadRiffStringTable(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t *a5)
{
  v6 = *a3;
  if (*a3)
  {
    v11 = heap_Calloc(*(a1 + 8), v6 + 1, 8);
    *a5 = v11;
    if (v11)
    {
      v12 = 0;
      v13 = a3 + 1;
      v14 = a4 - 2;
      do
      {
        v17 = 0;
        result = ssftriff_reader_ReadStringW(a2, v13, v14, 0, 0, &v17);
        if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 9)
        {
          break;
        }

        *(*a5 + 8 * v12) = heap_Alloc(*(a1 + 8), v17);
        v16 = *(*a5 + 8 * v12);
        if (!v16)
        {
          return 2229280778;
        }

        result = ssftriff_reader_ReadStringW(a2, v13, v14, 0, v16, &v17);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v13 = (v13 + v17 + 1);
        v14 -= v17 + 1;
        ++v12;
      }

      while (v12 < v6);
    }

    else
    {
      return 2229280778;
    }
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t uselect_GetSubChunkInfo(uint64_t a1, uint64_t a2, int a3, __int32 *a4, unsigned int *a5, void *a6)
{
  result = ssftriff_reader_OpenChunk(a1, a4, a5, 0);
  if ((result & 0x80000000) != 0)
  {
    v13 = 0;
    *a4 = 0;
  }

  else
  {
    Position = ssftriff_reader_GetPosition(a1);
    result = ssftriff_reader_CloseChunk(a1);
    v13 = a2 + (Position - a3);
  }

  *a6 = v13;
  return result;
}

uint64_t uselect_LoadRiffMatrix2D_U8(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned __int16 *a4)
{
  v5 = 2229280772;
  v6 = *a2;
  *a4 = v6;
  v7 = a2[1];
  a4[1] = v7;
  v8 = v7 * v6;
  if (v8 + 4 <= a3)
  {
    v10 = heap_Alloc(*(a1 + 8), v8);
    *(a4 + 1) = v10;
    if (v10)
    {
      cstdlib_memcpy(v10, a2 + 2, a4[1] * *a4);
      return 0;
    }

    else
    {
      return 2229280778;
    }
  }

  return v5;
}

uint64_t uselect_AddGenericContextRule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = heap_Calloc(*(a1 + 8), 1, 24);
  *a3 = v5;
  if (!v5)
  {
    return 2229280778;
  }

  *v5 = 0;
  *(*a3 + 8) = 0;
  *(*a3 + 16) = 0;
  v6 = *(a2 + 3520);
  if (v6)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 16);
    }

    while (v6);
    v8 = (v7 + 16);
  }

  else
  {
    v8 = (a2 + 3520);
  }

  result = 0;
  *v8 = *a3;
  return result;
}

uint64_t uselect_AddGCRCondition(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = heap_Calloc(*(a1 + 8), 1, 48);
  *a3 = v5;
  if (!v5)
  {
    return 2229280778;
  }

  *v5 = -256;
  *(v5 + 2) = 0;
  cstdlib_memset((v5 + 3), 0, 0x20uLL);
  *(*a3 + 40) = 0;
  v6 = *a2;
  if (*a2)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 40);
    }

    while (v6);
    a2 = (v7 + 40);
  }

  result = 0;
  *a2 = *a3;
  return result;
}

uint64_t uselect_AddGCRAction(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = heap_Calloc(*(a1 + 8), 1, 24);
  *a3 = v5;
  if (!v5)
  {
    return 2229280778;
  }

  *v5 = 0;
  *(v5 + 4) = -1;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v8 = *(a2 + 8);
  v7 = (a2 + 8);
  v6 = v8;
  if (v8)
  {
    do
    {
      v9 = v6;
      v6 = *(v6 + 16);
    }

    while (v6);
    v7 = (v9 + 16);
  }

  result = 0;
  *v7 = *a3;
  return result;
}

char *uselect_strdup(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = cstdlib_strlen(__s);
  v5 = heap_Calloc(v3, (v4 + 1), 1);
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, __s);
  }

  return v6;
}

void *uselect_FreeRiffStringTable(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      v5 = 0;
      do
      {
        heap_Free(v3[1], v4);
        v4 = a2[++v5];
      }

      while (v4);
    }

    v6 = v3[1];

    return heap_Free(v6, a2);
  }

  return result;
}

uint64_t uselect_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &IUselect;
  return result;
}

uint64_t get_f0(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  v11 = 0;
  v10 = 0;
  result = uselect_splitGID(a1, a2, &v10, &v11);
  v7 = (*(v10 + 192) + v11 * *(v10 + 200));
  if (*(*v10 + 2604) == 1)
  {
    *a3 = v7[16];
    v8 = v7 + 17;
  }

  else
  {
    *a3 = v7[4];
    v8 = v7 + 5;
  }

  v9 = *v8;
  *a4 = v9;
  if (*a3)
  {
    *a3 = ScaledLogToHz[3 * *a3 - 270];
    v9 = *a4;
  }

  if (v9)
  {
    *a4 = ScaledLogToHz[3 * v9 - 270];
  }

  return result;
}

uint64_t uselect_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2229280775;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 34633;
  }

  return result;
}

uint64_t uselect_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, void *a5)
{
  v29 = 0;
  v30 = 0;
  *a5 = 0;
  *(a5 + 2) = 0;
  inited = InitRsrcFunction(a3, a4, &v30);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = 2229280778;
  if ((safeh_HandleCheck(a1, a2, 34633, 416) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v12 = heap_Calloc(*(v30 + 8), 1, 952);
  if (!v12)
  {
    log_OutPublic(*(v30 + 32), "USELECT", 19000, 0);
    return v11;
  }

  v13 = v12;
  *v12 = a3;
  v12[1] = a4;
  v14 = v30;
  v12[2] = v30;
  v12[3] = a1;
  *a5 = v12;
  *(a5 + 2) = 34632;
  v15 = heap_Calloc(*(v14 + 8), 1, 3656);
  *(v13 + 776) = v15;
  if (!v15)
  {
    log_OutPublic(*(v30 + 32), "USELECT", 19000, 0);
    goto LABEL_30;
  }

  Param = uselect_ObjReopen(*a5, a5[1]);
  if ((Param & 0x80000000) != 0 || (Param = uselect_GetParam(v13, "minphrase", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselearlyemission", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectusetriphonecache", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectweightnoreusebias", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectweightdurationbias", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectweightpitchbias", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectonlinereduction", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectmaxcandspruning", 1), (Param & 0x80000000) != 0) || (v17 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v17, "minphrase", &v26), (Param & 0x80000000) != 0) || (v18 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v18, "uselearlyemission", &v26), (Param & 0x80000000) != 0) || (v19 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v19, "uselectusetriphonecache", &v26), (Param & 0x80000000) != 0) || (v20 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v20, "uselectweightnoreusebias", &v26), (Param & 0x80000000) != 0) || (v21 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v21, "uselectweightdurationbias", &v26), (Param & 0x80000000) != 0) || (v22 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v22, "uselectweightpitchbias", &v26), (Param & 0x80000000) != 0) || (v23 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v23, "uselectonlinereduction", &v26), (Param & 0x80000000) != 0) || (v24 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v24, "uselectmaxcandspruning", &v26), (Param & 0x80000000) != 0) || (Param = objc_GetObject(*(v30 + 48), "SYNTHSTREAM", &v29), (Param & 0x80000000) != 0))
  {
    v11 = Param;
    goto LABEL_30;
  }

  *(v13 + 88) = *(v29 + 8);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  cstdlib_memset(&v26, 0, 0x28uLL);
  LOBYTE(v26) = 1;
  *(&v26 + 1) = &IUselect;
  v27 = *a5;
  v28 = 0;
  v11 = objc_RegisterObject(*(v30 + 48), "USELECT", &v26);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_30:
    uselect_ObjClose(*a5, a5[1]);
    *a5 = 0;
    *(a5 + 2) = 0;
    return v11;
  }

  *(v13 + 32) = 1;
  return v11;
}

uint64_t uselect_ObjClose(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (a1)
  {
    if (*(a1 + 88))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    }

    v3 = *(a1 + 816);
    if (v3 && *(a1 + 40))
    {
      v4 = *(a1 + 908);
      if (*(a1 + 908))
      {
        v5 = 0;
        v6 = 24;
        do
        {
          if (*(v3 + v6))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v3 + v6));
            v3 = *(a1 + 816);
            *(v3 + v6) = 0;
            v4 = *(a1 + 908);
          }

          ++v5;
          v6 += 112;
        }

        while (v5 < 3 * v4);
      }

      heap_Free(*(*(a1 + 16) + 8), v3);
      *(a1 + 816) = 0;
    }

    v7 = *(a1 + 856);
    if (v7)
    {
      heap_Free(*(*(a1 + 16) + 8), v7);
      *(a1 + 856) = 0;
    }

    v8 = *(a1 + 864);
    if (v8)
    {
      heap_Free(*(*(a1 + 16) + 8), v8);
      *(a1 + 864) = 0;
    }

    v9 = *(a1 + 888);
    if (v9)
    {
      heap_Free(*(*(a1 + 16) + 8), v9);
      *(a1 + 888) = 0;
    }

    v10 = *(a1 + 896);
    if (v10)
    {
      heap_Free(*(*(a1 + 16) + 8), v10);
      *(a1 + 896) = 0;
    }

    v11 = *(a1 + 936);
    if (v11)
    {
      heap_Free(*(*(a1 + 16) + 8), v11);
      *(a1 + 936) = 0;
    }

    v12 = *(a1 + 944);
    if (v12)
    {
      heap_Free(*(*(a1 + 16) + 8), v12);
      *(a1 + 944) = 0;
    }

    uselect_ResetUnitSelector(a1, 0);
    v13 = *(a1 + 776);
    if (v13)
    {
      DeallocBufferUnitSelector(a1, v13);
      heap_Free(*(*(a1 + 16) + 8), *(a1 + 776));
    }

    v14 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v14, "minphrase", &v34);
    v15 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v15, "uselearlyemission", &v34);
    v16 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v16, "uselectusetriphonecache", &v34);
    v17 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v17, "uselectweightnoreusebias", &v34);
    v18 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v18, "uselectweightdurationbias", &v34);
    v19 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v19, "uselectweightpitchbias", &v34);
    v20 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v20, "uselectonlinereduction", &v34);
    v21 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v21, "uselectmaxcandspruning", &v34);
    v22 = *(*(a1 + 16) + 40);
    v23 = *(a1 + 80);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v22, v23, &v34);
    paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", "");
    v24 = *(a1 + 80);
    if (v24)
    {
      heap_Free(*(*(a1 + 16) + 8), v24);
      *(a1 + 80) = 0;
    }

    paramc_ParamSetStr(*(*(a1 + 16) + 40), "uselectrawdataversion", "");
    paramc_ParamSetStr(*(*(a1 + 16) + 40), "uselectreductionversion", "");
    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = *(a1 + 24);
      if (!v26 || (v27 = *(v26 + 48)) == 0)
      {
        v27 = *(*(a1 + 16) + 48);
      }

      objc_ReleaseObject(v27, v25 + 152);
    }

    v28 = *(a1 + 48);
    if (v28 >= 2)
    {
      v29 = v28 - 1;
      do
      {
        uselect_RemoveDataPartClose(a1, v29--);
      }

      while (v29);
    }

    v30 = *(a1 + 72);
    if (v30)
    {
      if (!*v30 || (heap_Free(*(*(a1 + 16) + 8), *v30), **(a1 + 72) = 0, (v30 = *(a1 + 72)) != 0))
      {
        heap_Free(*(*(a1 + 16) + 8), v30);
        *(a1 + 72) = 0;
      }
    }

    v31 = *(a1 + 56);
    if (v31)
    {
      heap_Free(*(*(a1 + 16) + 8), v31);
      *(a1 + 56) = 0;
    }

    v32 = *(a1 + 64);
    if (v32)
    {
      heap_Free(*(*(a1 + 16) + 8), v32);
      *(a1 + 64) = 0;
    }

    if (*(a1 + 32) == 1)
    {
      objc_UnregisterObject(*(*(a1 + 16) + 48), "USELECT");
    }

    heap_Free(*(*(a1 + 16) + 8), a1);
  }

  return 0;
}

uint64_t uselect_ObjReopen(_WORD **a1, int a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v57 = 0;
  __s1 = 0;
  __s = 0;
  cstdlib_strcpy(__dst, "");
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  paramc_ParamSetStr(*(a1[2] + 5), "voiceaddon", "");
  BrokerString = uselect_CreateBrokerString(a1[2], __dst, 0x100uLL, 0, 0, 0, 0);
  if ((BrokerString & 0x80000000) == 0)
  {
    v5 = a1[5];
    if (v5)
    {
      v6 = BrokerString;
      if (!cstdlib_strcmp(v5 + 152, __dst))
      {
        goto LABEL_21;
      }
    }
  }

  v7 = uselect_CreateBrokerString(a1[2], __dst, 0x100uLL, 0, 0, 1, 0);
  if ((v7 & 0x80000000) != 0)
  {
    __dst[0] = 0;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = a1[5];
  if (!v9 || cstdlib_strcmp(v9 + 152, __dst))
  {
    v10 = uselect_CheckForDataFile(*a1, a1[1], __dst, &v57);
    v6 = v10;
    if (!v57)
    {
      __dst[0] = 0;
    }

    if ((v10 & 0x80001FFF) == 0x8000000A)
    {
      return v6;
    }
  }

  if (!__dst[0])
  {
LABEL_15:
    v6 = uselect_CreateBrokerString(a1[2], __dst, 0x100uLL, 0, 0, 0, 0);
    if ((v6 & 0x80000000) != 0)
    {
      return v6;
    }

    AddRefCountedObject = uselect_CheckForDataFile(*a1, a1[1], __dst, &v57);
    if (!v57)
    {
      __dst[0] = 0;
    }

    if ((AddRefCountedObject & 0x80001FFF) == 0x8000000A)
    {
      return AddRefCountedObject;
    }

    if (!__dst[0])
    {
      v6 = uselect_CreateBrokerString(a1[2], __dst, 0x100uLL, 0, 0, 0, 1);
      if ((v6 & 0x80000000) != 0)
      {
        return v6;
      }
    }

    goto LABEL_21;
  }

  v6 = v8;
LABEL_21:
  v12 = a1[5];
  if (!v12)
  {
    goto LABEL_47;
  }

  if (!cstdlib_strcmp(v12 + 152, __dst))
  {
    goto LABEL_90;
  }

  DeallocUnitSelectorMemory_NRowsDependency(a1);
  v13 = a1[107];
  if (v13)
  {
    heap_Free(*(a1[2] + 1), v13);
    a1[107] = 0;
  }

  v14 = a1[111];
  if (v14)
  {
    heap_Free(*(a1[2] + 1), v14);
    a1[111] = 0;
  }

  v15 = a1[112];
  if (v15)
  {
    heap_Free(*(a1[2] + 1), v15);
    a1[112] = 0;
  }

  uselect_ResetUnitSelector(a1, 0);
  v16 = a1[3];
  if (!v16 || (v17 = *(v16 + 6)) == 0)
  {
    v17 = *(a1[2] + 6);
  }

  v6 = objc_ReleaseObject(v17, (a1[5] + 76));
  a1[5] = 0;
  *a1[97] = 0;
  v18 = *(a1 + 12);
  if (v18 >= 2)
  {
    v19 = v18 - 1;
    do
    {
      uselect_RemoveDataPartClose(a1, v19--);
    }

    while (v19);
  }

  v20 = a1[9];
  if (v20)
  {
    if (!*v20 || (heap_Free(*(a1[2] + 1), *v20), *a1[9] = 0, (v20 = a1[9]) != 0))
    {
      heap_Free(*(a1[2] + 1), v20);
      a1[9] = 0;
    }
  }

  v21 = a1[7];
  if (v21)
  {
    heap_Free(*(a1[2] + 1), v21);
    a1[7] = 0;
  }

  v22 = a1[8];
  if (v22)
  {
    heap_Free(*(a1[2] + 1), v22);
    a1[8] = 0;
  }

  *(a1 + 12) = 0;
  v23 = *(a1[2] + 5);
  v24 = a1[10];
  *&v53 = a1;
  *(&v53 + 1) = uselect_ParamCheckChange;
  v54 = uselect_ParamLearnChange;
  paramc_ListenerRemove(v23, v24, &v53);
  v25 = a1[10];
  if (v25)
  {
    heap_Free(*(a1[2] + 1), v25);
    a1[10] = 0;
  }

  if ((v6 & 0x80000000) == 0)
  {
LABEL_90:
    if (!a1[5])
    {
LABEL_47:
      v52 = 0;
      v26 = a1[3];
      if (v26 && (v27 = *(v26 + 6)) != 0)
      {
        v28 = a1[2];
      }

      else
      {
        v28 = a1[2];
        v27 = *(v28 + 48);
      }

      AddRefCountedObject = objc_GetAddRefCountedObject(v27, __dst, uselect_ObjcVoiceOpen, uselect_ObjcVoiceClose, v28, &v52);
      if ((AddRefCountedObject & 0x80000000) != 0)
      {
        return AddRefCountedObject;
      }

      v6 = 2229280778;
      v29 = *(v52 + 32);
      a1[5] = v29;
      *a1[97] = v29;
      *(a1 + 12) = 1;
      v30 = heap_Calloc(*(a1[2] + 1), 1, 8);
      a1[7] = v30;
      if (v30)
      {
        *v30 = *(a1[5] + 444);
        v31 = heap_Calloc(*(a1[2] + 1), *(a1 + 12), 4);
        a1[8] = v31;
        if (v31)
        {
          *v31 = 0;
          v32 = heap_Calloc(*(a1[2] + 1), *(a1 + 12), 8);
          a1[9] = v32;
          if (v32)
          {
            *a1[9] = heap_Calloc(*(a1[2] + 1), 1, 1);
            v33 = (paramc_ParamGetStr(*(a1[2] + 5), "voiceoperatingpoint", &__s) & 0x80000000) != 0 ? 0 : cstdlib_strlen(__s) + 1;
            v34 = (paramc_ParamGetStr(*(a1[2] + 5), "vopversion", &__s1) & 0x80000000) != 0 || !cstdlib_strcmp(__s1, "0.0.0") ? 0 : cstdlib_strlen(__s1) + 1;
            v35 = *(a1[2] + 1);
            v36 = cstdlib_strlen(a1[5]);
            v37 = heap_Calloc(v35, 1, (v33 + v34 + v36 + 14));
            a1[10] = v37;
            if (v37)
            {
              cstdlib_strcpy(v37, "voiceaddons.");
              v38 = cstdlib_strlen(a1[10]);
              if (cstdlib_strlen(a1[5]))
              {
                v39 = 0;
                v40 = 1;
                do
                {
                  *(a1[10] + v38) = cstdlib_tolower(*(a1[5] + v39));
                  v39 = v40;
                  ++v38;
                }

                while (cstdlib_strlen(a1[5]) > v40++);
              }

              if (v33)
              {
                cstdlib_strcat(a1[10], ".");
                cstdlib_strcat(a1[10], __s);
              }

              if (v34)
              {
                cstdlib_strcat(a1[10], ".");
                cstdlib_strcat(a1[10], __s1);
              }

              AddRefCountedObject = uselect_GetParam(a1, a1[10], 1);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                return AddRefCountedObject;
              }

              v42 = *(a1[2] + 5);
              v43 = a1[10];
              *&v53 = a1;
              *(&v53 + 1) = uselect_ParamCheckChange;
              v54 = uselect_ParamLearnChange;
              AddRefCountedObject = paramc_ListenerAdd(v42, v43, &v53);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                return AddRefCountedObject;
              }

              AddRefCountedObject = uselect_GetParam(a1, "uselectmaxcandspruning", 0);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                return AddRefCountedObject;
              }

              AddRefCountedObject = uselect_ResetUnitSelector(a1, 500);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                return AddRefCountedObject;
              }

              v44 = heap_Calloc(*(a1[2] + 1), 1, 74);
              a1[107] = v44;
              v45 = a1[2];
              if (v44)
              {
                v46 = heap_Calloc(*(v45 + 1), 1, 160);
                a1[111] = v46;
                v45 = a1[2];
                if (v46)
                {
                  v47 = heap_Calloc(*(v45 + 1), a1[5][1483], 24);
                  a1[112] = v47;
                  if (v47)
                  {
                    v48 = a1[5];
                    v49 = *(v48 + 770);
                    if ((v49 & 0x80000000) != 0 && (v49 = *(v48 + 769), (v49 & 0x80000000) != 0))
                    {
                      v50 = 5000;
                    }

                    else
                    {
                      v50 = 5 * *(*(v48 + 371) + 32 * v49 + 4);
                    }

                    *(a1 + 226) = v50;
                    AddRefCountedObject = paramc_ParamSetStr(*(a1[2] + 5), "uselectrawdataversion", v48 + 64);
                    if ((AddRefCountedObject & 0x80000000) == 0)
                    {
                      return paramc_ParamSetStr(*(a1[2] + 5), "uselectreductionversion", a1[5] + 140);
                    }

                    return AddRefCountedObject;
                  }

                  v45 = a1[2];
                }
              }

              log_OutPublic(*(v45 + 4), "USELECT", 19000, 0, v52);
            }
          }
        }
      }

      else
      {
        *(a1 + 12) = 0;
      }
    }
  }

  return v6;
}

uint64_t uselect_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) == 0)
  {
    *(a1 + 736) = 0;
    *(a1 + 744) = 1;
    v7 = *(a1 + 752);
    if (!v7 || v7 != 1 && (v7 = *(*(a1 + 40) + 2616), v7 != 1))
    {
      v7 = 0;
    }

    v8 = 0;
    *(a1 + 756) = v7;
    v9 = "application/x-realspeak-feat-vector";
    v10 = (a1 + 96);
    while (1)
    {
      if (*(a1 + 736) > 0xFuLL)
      {
        goto LABEL_22;
      }

      v11 = (*(*(a1 + 88) + 64))(a3, a4, 78, v9, 0, 0, &v10[5 * *(a1 + 736) + 1]);
      if ((v11 & 0x80000000) != 0)
      {
        v13 = v11;
        if (cstdlib_strncmp(v9, "application/x-realspeak-cspp-", 0x1DuLL) && cstdlib_strcmp(v9, "application/x-realspeak-usnoreusebias;version=4.0") && cstdlib_strcmp(v9, "application/x-realspeak-usprosodybias;version=4.0") && cstdlib_strcmp(v9, "application/x-realspeak-usfrozen;version=4.0"))
        {
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19001, "%s%s");
LABEL_35:
          v17 = v13;
          if (!*(a1 + 736))
          {
LABEL_32:
            *(a1 + 736) = 0;
            return v13;
          }

LABEL_23:
          v18 = 0;
          do
          {
            v19 = v10[1];
            if (v19 && ((*(*(a1 + 88) + 72))(v19, v10[2]) & 0x80000000) != 0)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", "layer", *v10);
            }

            v20 = v10[3];
            if (v20 && ((*(*(a1 + 88) + 72))(v20, v10[4]) & 0x80000000) != 0)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", "layer", *v10);
            }

            ++v18;
            v10 += 5;
          }

          while (v18 < *(a1 + 736));
          v13 = v17;
          goto LABEL_32;
        }
      }

      else
      {
        v12 = *(a1 + 736);
        v10[5 * v12] = v9;
        *(a1 + 736) = v12 + 1;
      }

      v9 = uselect_ProcessStart_szINPUT_STREAMS[++v8];
      if (v8 == 4)
      {
        v14 = "application/x-realspeak-usmarkers-u16;version=4.0";
        v15 = 1u;
        while (*(a1 + 736) <= 0xFuLL)
        {
          v13 = (*(*(a1 + 88) + 64))(a3, a4, 78, v14, 0, 1, &v10[5 * *(a1 + 736) + 3]);
          if ((v13 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19002, "%s%s");
            goto LABEL_35;
          }

          v16 = *(a1 + 736);
          v10[5 * v16] = v14;
          *(a1 + 736) = v16 + 1;
          v14 = uselect_ProcessStart_szOUTPUT_STREAMS[v15++];
          if (v15 == 7)
          {
            return v13;
          }
        }

LABEL_22:
        v17 = 2229280777;
        goto LABEL_23;
      }
    }
  }

  return 2229280776;
}

uint64_t uselect_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  __n = 0;
  v7 = -2065686521;
  v118 = 0;
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  __src = 0;
  v116 = 0;
  *a5 = 1;
  if (*(a1 + 744) != 1)
  {
    v14 = *(a1 + 748);
    *(a1 + 746) = *(a1 + 748);
    v15 = *(a1 + 768);
    v16 = 1;
    goto LABEL_16;
  }

  v8 = (*(*(a1 + 88) + 144))(*(a1 + 104), *(a1 + 112), &__n + 4, &v118);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (HIDWORD(__n))
  {
    v9 = uselect_ReadDirectStart(a1, "application/x-realspeak-feat-vector", &__src, &__n + 1);
    v10 = HIDWORD(__n);
    *(a1 + 768) = (159072863 * (HIDWORD(__n) >> 5)) >> 32;
    if ((v9 & 0x80000000) == 0)
    {
      v11 = heap_Alloc(*(*(a1 + 16) + 8), v10);
      *(a1 + 760) = v11;
      if (!v11)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
        v7 = -2065686518;
        goto LABEL_146;
      }

      cstdlib_memcpy(v11, __src, HIDWORD(__n));
      v10 = HIDWORD(__n);
    }

    if (*(a1 + 736))
    {
      v12 = 0;
      v13 = (a1 + 112);
      while (cstdlib_strcmp(*(v13 - 2), "application/x-realspeak-feat-vector"))
      {
        ++v12;
        v13 += 5;
        if (v12 >= *(a1 + 736))
        {
          goto LABEL_12;
        }
      }

      v100 = (*(*(a1 + 88) + 96))(*(v13 - 1), *v13, v10);
      if ((v100 & 0x80000000) == 0)
      {
        v101 = *(a1 + 768);
        if (v101 >> 15)
        {
          goto LABEL_146;
        }

        v102 = *(a1 + 776);
        *(v102 + 3524) = *(*(a1 + 40) + 3578) * v101;
        v103 = uselect_ReadDirectStart(a1, "application/x-realspeak-usfrozen;version=4.0", (v102 + 3632), &__n);
        v104 = *(a1 + 776);
        if (v103 < 0)
        {
          *(v104 + 3632) = 0;
        }

        if ((uselect_ReadDirectStart(a1, "application/x-realspeak-usnoreusebias;version=4.0", (v104 + 3640), &__n) & 0x80000000) != 0)
        {
          v105 = *(a1 + 776);
          *(v105 + 3640) = 0;
        }

        else
        {
          v105 = *(a1 + 776);
          if (__n / 0x1F8 != *(v105 + 3524))
          {
            *(v105 + 3640) = 0;
            goto LABEL_146;
          }
        }

        if ((uselect_ReadDirectStart(a1, "application/x-realspeak-usprosodybias;version=4.0", (v105 + 3648), &__n) & 0x80000000) != 0)
        {
          v106 = *(a1 + 776);
          *(v106 + 3648) = 0;
        }

        else
        {
          v106 = *(a1 + 776);
          if (*(v106 + 3524) != __n >> 3)
          {
            *(v106 + 3648) = 0;
            goto LABEL_146;
          }
        }

        v107 = *(a1 + 768);
        *(v106 + 10) = v107;
        *(v106 + 3524) = *(*(a1 + 40) + 3578) * v107;
        v28 = AllocBufferUnitSelector(a1, v106);
        if ((v28 & 0x80000000) != 0)
        {
          goto LABEL_145;
        }

        v15 = *(a1 + 768);
        if (v15)
        {
          v108 = *(a1 + 40);
          v109 = (*(a1 + 760) + 2);
          v110 = *(a1 + 768);
          do
          {
            v111 = *v109;
            if (*(v108 + 2144 + v111) != 255 && !*(v108 + 2684) && !*(*(**(a1 + 56) + 120) + 2 * (2 * (v111 - *(v108 + 2496)))))
            {
              log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19009, "%s%d", "phoneme", v111);
              v7 = -2065686500;
              goto LABEL_146;
            }

            v109 += 864;
            --v110;
          }

          while (v110);
          if (v15 == 2)
          {
            v112 = *(a1 + 760);
            if (*(v112 + 2) == 35)
            {
              v16 = *(v112 + 866) != 35;
              goto LABEL_151;
            }
          }
        }

        v16 = 1;
LABEL_151:
        v14 = 0;
        *(a1 + 746) = 0;
LABEL_16:
        v17 = v15 - 1;
        *(a1 + 748) = v15 - 1;
        v18 = *(a1 + 740);
        if (v18 < 1 || (v19 = v18 + v14 + 1, v19 >= v17))
        {
LABEL_23:
          LOWORD(v20) = v15 - 1;
        }

        else
        {
          v20 = v19;
          v21 = (*(a1 + 760) + 864 * v19 + 2);
          while (1)
          {
            v22 = *v21;
            if (v22 == 35)
            {
              break;
            }

            if (*(a1 + 756) == 1)
            {
              v23 = *(a1 + 40);
              if (*(v23 + *(v23 + v22 + 2144) + 1630) == 83)
              {
                goto LABEL_116;
              }
            }

            v21 += 864;
            if (++v20 >= v17)
            {
              goto LABEL_23;
            }
          }

          v23 = *(a1 + 40);
LABEL_116:
          *(a1 + 748) = v20;
          if (!*(v23 + 2616))
          {
            *(a1 + 756) = 0;
          }
        }

        v24 = v20;
        v25 = v15 - 1;
        v26 = *(a1 + 744);
        if (v25 <= v20)
        {
          if (v26 == 1)
          {
            v26 = 5;
          }

          else
          {
            v26 = 4;
          }

          *(a1 + 744) = v26;
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        *a5 = v27;
        log_OutText(*(*(a1 + 16) + 32), "USELECT", 3, 0, "uselect phonemes %d -> %d, state %x", v14, v24, v26);
        if (!v16)
        {
          v29 = *(a1 + 40);
          if (*(v29 + 2684))
          {
            v30 = *(v29 + 2497);
            v31 = *(v29 + 2496);
            v32 = (v30 - v31 + 1);
            v33 = **(a1 + 56);
            v34 = (v30 - v31 + 2);
            v35 = v34 * (35 - v31) - v31;
            v36 = (v35 + 35);
            v37 = *(v33 + 120);
            if (*(v37 + 2 * v36))
            {
              v38 = 0;
            }

            else
            {
              v38 = v30 > v31;
            }

            if (v38)
            {
              do
              {
                v36 = v35 + v31;
                if (*(v37 + 2 * v36))
                {
                  break;
                }

                LOBYTE(v31) = v31 + 1;
              }

              while (v30 > v31);
            }

            v39 = v32 + v32 * v34;
            v40 = *(v33 + 128);
            v41 = *(v40 + 4 * v36);
            v42 = *(a1 + 776);
            v43 = *(v42 + 3528);
            v43[2] = v41;
            *v43 = v41;
            LODWORD(v40) = *(v40 + 4 * (v36 + v39));
            v43[3] = v40;
            v43[1] = v40;
          }

          else
          {
            v51 = **(a1 + 56);
            v52 = *(v29 + 2496);
            v53 = *(v51 + 128);
            v54 = *(v53 + 4 * (70 - 2 * v52));
            v42 = *(a1 + 776);
            v55 = *(v42 + 3528);
            *v55 = v54;
            v55[2] = v54;
            v56 = 71 - 2 * v52;
            LODWORD(v51) = *(*(v51 + 120) + 2 * v56) - 1;
            v55[1] = v51 + *(v53 + 4 * v56);
            v55[3] = v51 + *(v53 + 4 * v56);
          }

          v57 = *(v42 + 3536);
          *v57 = 0;
          v57[1] = 0;
LABEL_54:
          v58 = *(a1 + 748) - *(a1 + 746) + 1;
          v59 = 2 * v58;
          v60 = *(v29 + 3578);
          if (2 * v58 * v60 >= 1)
          {
            v61 = 0;
            v62 = *(*(a1 + 776) + 3536);
            do
            {
              v63 = v61 + 2 * v60 * *(a1 + 746);
              v64 = *(v62 + 2 * v63);
              if (v64 < 0x5B)
              {
                *(v62 + 2 * v63) = 0;
              }

              else
              {
                *(v62 + 2 * v63) = v64 - 90;
                v65 = v61 + 2 * *(a1 + 746) * *(v29 + 3578);
                *(v62 + 2 * v65) *= 3;
              }

              v60 = *(v29 + 3578);
              v66 = (v59 * v60);
              ++v61;
            }

            while (v61 < v66);
            if (v66 >= 1)
            {
              v67 = 0;
              v68 = 0;
              v69 = (*(*(a1 + 776) + 3536) + 4 * v60 * *(a1 + 746));
              do
              {
                v70 = *v69++;
                v68 += v70;
                if (v70)
                {
                  ++v67;
                }

                --v66;
              }

              while (v66);
              if (v68)
              {
                v71 = v67 == 0;
              }

              else
              {
                v71 = 1;
              }

              if (!v71)
              {
                v72 = 0;
                v73 = *(*(a1 + 776) + 3536);
                v74 = v68 / v67;
                do
                {
                  v75 = v72 + 2 * v60 * *(a1 + 746);
                  if (100 * *(v73 + 2 * v75) / v74 - 201 <= 0xFFFFFF68)
                  {
                    *(v73 + 2 * v75) = 0;
                    v60 = *(v29 + 3578);
                  }

                  ++v72;
                }

                while (v72 < v59 * v60);
              }
            }
          }

          smooth_f0(*(a1 + 16), (*(*(a1 + 776) + 3536) + 4 * *(a1 + 746) * v60), 2 * v58, 2u);
          v76 = *(a1 + 40);
          v77 = *(v76 + 3578);
          if (v58 * v77 >= 1)
          {
            v78 = 0;
            v79 = *(a1 + 776);
            do
            {
              v114 = 0;
              v115 = 0;
              get_f0(a1, *(v79[441] + 4 * (v78 + *(a1 + 746) * v77)), &v115, &v114);
              v79 = *(a1 + 776);
              v80 = v79[443];
              v76 = *(a1 + 40);
              *(v80 + 2 * (2 * (v78 + *(v76 + 3578) * *(a1 + 746)))) = 1000;
              v81 = *(a1 + 746);
              v82 = *(v76 + 3578);
              if (v115)
              {
                v83 = 2 * (v78 + v82 * *(a1 + 746));
                if (*(v79[442] + 2 * v83) - 256 >= 0xFFFFFF01)
                {
                  *(v80 + 2 * v83) = 1000 * ScaledLogToHz[*(v79[442] + 2 * v83)] / v115;
                  v81 = *(a1 + 746);
                  v82 = *(v76 + 3578);
                }
              }

              *(v80 + 2 * ((2 * (v78 + v82 * v81)) | 1)) = 1000;
              v77 = *(v76 + 3578);
              v84 = v58 * v77;
              if (v78 + 1 < v58 * v77 && v114 != 0)
              {
                v86 = 2 * (v78 + *(a1 + 746) * v77);
                if (*(v79[442] + 2 * (v86 + 2)) - 256 >= 0xFFFFFF01)
                {
                  *(v80 + 2 * (v86 | 1)) = 1000 * ScaledLogToHz[*(v79[442] + 2 * (v86 + 2))] / v114;
                  v77 = *(v76 + 3578);
                  v84 = v58 * v77;
                }
              }

              ++v78;
            }

            while (v78 < v84);
          }

          if (v59 * v77 >= 1)
          {
            v87 = 0;
            v88 = *(*(a1 + 776) + 3544);
            do
            {
              v89 = v87 + 2 * v77 * *(a1 + 746);
              if (*(v88 + 2 * v89) - 1301 <= 0xFFFFFDD8)
              {
                *(v88 + 2 * v89) = 1000;
                v77 = *(v76 + 3578);
              }

              ++v87;
            }

            while (v87 < v59 * v77);
          }

          LOBYTE(v115) = *(a1 + 744);
          LOBYTE(v114) = 0;
          v28 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", &v115, 1);
          if ((v28 & 0x80000000) == 0)
          {
            v116 = *(*(a1 + 40) + 2497);
            if (v58 < 1)
            {
              v28 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", &v114, 1);
              if ((v28 & 0x80000000) == 0)
              {
LABEL_107:
                v96 = *(*(a1 + 40) + 3578);
                v28 = uselect_Write(a1, "application/x-realspeak-usids;version=4.0", *(*(a1 + 776) + 3528) + 4 * v96 * *(a1 + 746), (4 * v58 * v96));
                if ((v28 & 0x80000000) == 0)
                {
                  v97 = *(*(a1 + 40) + 3578);
                  v7 = uselect_Write(a1, "application/x-realspeak-targf0;version=4.0", *(*(a1 + 776) + 3544) + 4 * *(a1 + 746) * v97, (4 * v58 * v97));
                  if ((v7 & 0x80000000) == 0)
                  {
                    if (v58 < 1)
                    {
LABEL_113:
                      *(*(a1 + 760) + 864 * *(a1 + 748)) = 0;
                      v99 = *(a1 + 744);
                      if (v99 == 1)
                      {
                        *(a1 + 744) = 2;
                      }

                      else if ((v99 & 4) != 0)
                      {
                        *(a1 + 744) = 1;
                        DeallocBufferUnitSelector(a1, *(a1 + 776));
                        *(a1 + 768) = 0;
                      }
                    }

                    else
                    {
                      v98 = 0;
                      while (1)
                      {
                        v7 = uselect_Write(a1, "application/x-realspeak-usplosives;version=4.0", *(a1 + 760) + 864 * (v98 + *(a1 + 746)) + 12, 1);
                        if ((v7 & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v58 == ++v98)
                        {
                          goto LABEL_113;
                        }
                      }
                    }
                  }

                  goto LABEL_146;
                }
              }
            }

            else
            {
              v90 = 0;
              while (1)
              {
                v28 = uselect_Write(a1, "application/x-realspeak-usmarkers-u16;version=4.0", *(a1 + 760) + 864 * (v90 + *(a1 + 746)), 2);
                if ((v28 & 0x80000000) != 0)
                {
                  break;
                }

                v91 = *(a1 + 760);
                v92 = v90 + *(a1 + 746);
                v93 = v91 + 864 * v92;
                if (*(v93 + 2) != 35 || (*(v93 + 4) & 0x80000000) != 0 && (*(v93 + 8) & 0x80000000) != 0)
                {
                  v94 = (v91 + 864 * v92 + 2);
                }

                else
                {
                  v94 = &v116;
                }

                v28 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", v94, 1);
                if ((v28 & 0x80000000) != 0)
                {
                  break;
                }

                if (v58 == ++v90)
                {
                  v28 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", &v114, 1);
                  if ((v28 & 0x80000000) == 0)
                  {
                    v95 = 0;
                    while (1)
                    {
                      v28 = uselect_Write(a1, "application/x-realspeak-usdurs;version=4.0", *(a1 + 760) + 864 * (v95 + *(a1 + 746)) + 50, 2);
                      if ((v28 & 0x80000000) != 0)
                      {
                        break;
                      }

                      if (v58 == ++v95)
                      {
                        goto LABEL_107;
                      }
                    }
                  }

                  goto LABEL_145;
                }
              }
            }
          }

          goto LABEL_145;
        }

        v28 = uselect_ResetUnitSelector(a1, *(*(a1 + 776) + 3524));
        if ((v28 & 0x80000000) == 0)
        {
          v28 = uselect_ProcessUnitSelector(a1);
          if ((v28 & 0x80000000) == 0)
          {
            v29 = *(a1 + 40);
            goto LABEL_54;
          }
        }

LABEL_145:
        v7 = v28;
LABEL_146:
        if ((v7 & 0x1FFF) == 0x80B)
        {
          return 0;
        }

        else
        {
          return v7;
        }
      }

      v7 = v100;
    }

    else
    {
LABEL_12:
      v7 = -2065686508;
    }

    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19004, "%s%s", "layer", "application/x-realspeak-feat-vector");
    goto LABEL_146;
  }

  if (v118)
  {
    *a5 = 1;
    v44 = *(a1 + 736);
    if (*(a1 + 736))
    {
      v45 = 0;
      v46 = (a1 + 128);
      do
      {
        v47 = *(v46 - 1);
        if (v47)
        {
          v48 = (*(*(a1 + 88) + 72))(v47, *v46);
          if ((v48 & 0x80000000) != 0)
          {
            v49 = v48;
            log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", "layer", *(v46 - 4));
            v8 = v49;
          }

          *(v46 - 1) = safeh_GetNullHandle();
          *v46 = v50;
          v44 = *(a1 + 736);
        }

        ++v45;
        v46 += 5;
      }

      while (v45 < v44);
    }
  }

  else
  {
    *a5 = 0;
  }

  return v8;
}

uint64_t uselect_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 34632, 952);
  if ((v3 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v4 = v3;
  DeallocBufferUnitSelector(a1, *(a1 + 776));
  if (*(a1 + 736))
  {
    v5 = 0;
    v6 = (a1 + 128);
    do
    {
      v7 = *(v6 - 3);
      if (v7)
      {
        v8 = (*(*(a1 + 88) + 72))(v7, *(v6 - 2));
        if ((v8 & 0x80000000) != 0)
        {
          v9 = v8;
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", "layer", *(v6 - 4));
          v4 = v9;
        }

        *(v6 - 3) = safeh_GetNullHandle();
        *(v6 - 2) = v10;
      }

      v11 = *(v6 - 1);
      if (v11)
      {
        v12 = (*(*(a1 + 88) + 72))(v11, *v6);
        if ((v12 & 0x80000000) != 0)
        {
          v13 = v12;
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", "layer", *(v6 - 4));
          v4 = v13;
        }

        *(v6 - 1) = safeh_GetNullHandle();
        *v6 = v14;
      }

      ++v5;
      v6 += 5;
    }

    while (v5 < *(a1 + 736));
  }

  *(a1 + 736) = 0;
  return v4;
}

uint64_t uselect_GetAlphabetInformation(uint64_t a1, int a2, char *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 34632, 952);
  if ((v5 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (!*(a1 + 40))
  {
    return 2229280785;
  }

  v6 = v5;
  cstdlib_memset(a3, 0, 0x985uLL);
  v7 = 0;
  for (i = 2144; i != 2400; ++i)
  {
    if (*(*(a1 + 40) + i) != 255)
    {
      a3[v7] = i - 96;
      a3[v7 + 514] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 1116);
      a3[v7 + 257] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 859);
      a3[v7 + 771] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 1373);
      a3[v7++ + 1028] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 1630);
    }
  }

  cstdlib_strcpy(a3 + 1285, (*(a1 + 40) + 2400));
  v9 = *(a1 + 40);
  if ((*(v9 + 3120) & 0x80000000) == 0)
  {
    cstdlib_strcpy(a3 + 1349, "1234");
    v9 = *(a1 + 40);
  }

  v10 = *(v9 + 2464);
  if (v10)
  {
    v11 = *v10;
    if (*v10)
    {
      v12 = 0;
      do
      {
        cstdlib_strcat(a3 + 1413, v11);
        cstdlib_strcat(a3 + 1413, " ");
        v11 = *(*(*(a1 + 40) + 2464) + 8 * ++v12);
      }

      while (v11);
    }
  }

  return v6;
}

uint64_t uselect_SetUserInformation(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (*(a1 + 40))
  {
    return 2229280768;
  }

  return 2229280785;
}

uint64_t uselect_QueryCapability(uint64_t a1, int a2, const char *a3, _BOOL4 *a4)
{
  v7 = 2229280768;
  v8 = safeh_HandleCheck(a1, a2, 34632, 952);
  if ((v8 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (!*(a1 + 40))
  {
    return 2229280785;
  }

  v9 = v8;
  if (!cstdlib_strcmp(a3, "PRM"))
  {
    v14 = *(a1 + 40);
    if ((*(v14 + 3168) & 0x80000000) == 0)
    {
LABEL_24:
      v16 = 1;
      goto LABEL_25;
    }

    v15 = *(v14 + 3176);
LABEL_14:
    v16 = v15 >= 0;
LABEL_25:
    *a4 = v16;
    return v9;
  }

  if (!cstdlib_strcmp(a3, "BND"))
  {
    v17 = *(a1 + 40);
    if ((v17[793] & 0x80000000) == 0 || (v17[794] & 0x80000000) == 0 || (v17[795] & 0x80000000) == 0 || (v17[796] & 0x80000000) == 0 || (v17[797] & 0x80000000) == 0 || (v17[798] & 0x80000000) == 0 || (v17[799] & 0x80000000) == 0 || (v17[800] & 0x80000000) == 0 || (v17[801] & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v15 = v17[803];
    goto LABEL_14;
  }

  if (!cstdlib_strcmp(a3, "max-PRM"))
  {
    v10 = *(a1 + 40);
    *a4 = 0;
    v11 = *(v10 + 2968);
    for (i = (v11 + 12); ; i += 32)
    {
      v13 = *(i - 3);
      if (v13 == 30)
      {
        v21 = **(a1 + 56);
        v22 = *(v21 + 108);
        if (!v22)
        {
          return 0;
        }

        v23 = 0;
        for (j = 0; j < v22; ++j)
        {
          v25 = i[12];
          v26 = v25 & (*(*(v21 + 160) + j * *(v21 + 168) + *(i - 1)) >> *i);
          if (v26 > v23 && v26 != 4)
          {
            *a4 = v25 & (*(*(v21 + 160) + j * *(v21 + 168) + *(i - 1)) >> *i);
            v22 = *(v21 + 108);
            v23 = v26;
          }

          v7 = 0;
        }

        return v7;
      }

      if (!v13)
      {
        break;
      }
    }

    for (k = (v11 + 12); ; k += 32)
    {
      v20 = *(k - 3);
      if (!v20)
      {
        break;
      }

      if (v20 == 32)
      {
        v28 = **(a1 + 56);
        v29 = *(v28 + 108);
        if (!v29)
        {
          return 0;
        }

        v30 = 0;
        for (m = 0; m < v29; ++m)
        {
          if ((k[12] & (*(*(v28 + 160) + m * *(v28 + 168) + *(k - 1)) >> *k)) >= 6u)
          {
            v32 = 1;
          }

          else
          {
            v32 = 0x20202020203uLL >> (8 * (k[12] & (*(*(v28 + 160) + m * *(v28 + 168) + *(k - 1)) >> *k)));
          }

          if ((v32 & 3u) > v30)
          {
            *a4 = v32;
            v29 = *(v28 + 108);
            v30 = v32;
          }

          v7 = 0;
        }

        return v7;
      }
    }
  }

  return v7;
}

uint64_t uselect_GetParam(uint64_t a1, char *__s1, int a3)
{
  v60 = *MEMORY[0x277D85DE8];
  if (cstdlib_strcmp(__s1, "minphrase"))
  {
    if (!cstdlib_strcmp(__s1, "uselearlyemission"))
    {
      *__s1a = 0;
      Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "uselearlyemission", __s1a);
      if ((Str & 0x80000000) == 0)
      {
        v6 = Str;
        if (cstdlib_strlen(*__s1a))
        {
          if (cstdlib_strcmp(*__s1a, "yes") && cstdlib_strcmp(*__s1a, "1"))
          {
            if (cstdlib_strcmp(*__s1a, "no") && cstdlib_strcmp(*__s1a, "0"))
            {
              *(a1 + 752) = -1;
              return 2229280783;
            }

            else
            {
              *(a1 + 752) = 0;
            }
          }

          else
          {
            *(a1 + 752) = 1;
          }

          return v6;
        }
      }

      *(a1 + 752) = -1;
      if (!a3)
      {
        return 0;
      }

      return paramc_ParamSetStr(*(*(a1 + 16) + 40), "uselearlyemission", "");
    }

    if (!cstdlib_strcmp(__s1, "uselectusetriphonecache"))
    {
      *__s1a = 0;
      Int = paramc_ParamGetInt(*(*(a1 + 16) + 40), "uselectusetriphonecache", __s1a);
      if ((Int & 0x80000000) == 0)
      {
        v6 = Int;
        *(a1 + 912) = *__s1a != 0;
        return v6;
      }

      *(a1 + 912) = 1;
      if (!a3)
      {
        return 0;
      }

      return paramc_ParamSetInt(*(*(a1 + 16) + 40), "uselectusetriphonecache", 1);
    }

    if (cstdlib_strcmp(__s1, "uselectweightnoreusebias"))
    {
      if (cstdlib_strcmp(__s1, "uselectweightdurationbias"))
      {
        if (cstdlib_strcmp(__s1, "uselectweightpitchbias"))
        {
          if (cstdlib_strcmp(__s1, "uselectonlinereduction"))
          {
            if (cstdlib_strcmp(__s1, "uselectmaxcandspruning"))
            {
              if (!cstdlib_strcmp(__s1, *(a1 + 80)))
              {
                __s = 0;
                v6 = paramc_ParamGetStr(*(*(a1 + 16) + 40), *(a1 + 80), &__s);
                if ((v6 & 0x80000000) != 0)
                {
                  if (a3)
                  {
                    v6 = paramc_ParamSetStr(*(*(a1 + 16) + 40), *(a1 + 80), "");
                  }

                  v10 = 0;
LABEL_120:
                  if (v10)
                  {
LABEL_121:
                    heap_Free(*(*(a1 + 16) + 8), v10);
                  }

                  return v6;
                }

                v7 = *(*(a1 + 16) + 8);
                v8 = cstdlib_strlen(__s);
                v9 = heap_Calloc(v7, 1, (v8 + 1));
                if (v9)
                {
                  v10 = v9;
                  cstdlib_strcpy(v9, __s);
                  paramc_ParamRelease(*(*(a1 + 16) + 40));
                  if (*(a1 + 48) >= 2u)
                  {
                    v11 = 0;
                    for (i = 1; i < *(a1 + 48); ++i)
                    {
                      v13 = cstdlib_strchr(v10, 59);
                      if (!v13)
                      {
                        goto LABEL_22;
                      }

                      v14 = v13;
                      v15 = v10;
                      do
                      {
                        *v14 = 0;
                        v16 = cstdlib_strcmp(v15, *(*(a1 + 72) + 8 * i));
                        *v14 = 59;
                        v15 = v14 + 1;
                        v17 = cstdlib_strchr(v14 + 1, 59);
                        v14 = v17;
                        if (v16)
                        {
                          v18 = v17 == 0;
                        }

                        else
                        {
                          v18 = 1;
                        }
                      }

                      while (!v18);
                      if (v16)
                      {
LABEL_22:
                        if (i >= *(a1 + 48))
                        {
                          v6 = 0;
                        }

                        else
                        {
                          paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", *(*(a1 + 72) + 8 * i));
                          BrokerString = uselect_CreateBrokerString(*(a1 + 16), __s1a, 0x100uLL, 0, 0, 0, 0);
                          if ((BrokerString & 0x80000000) != 0)
                          {
                            v6 = BrokerString;
                            goto LABEL_121;
                          }

                          v20 = *(*(a1 + 72) + 8 * i);
                          if (v20)
                          {
                            heap_Free(*(*(a1 + 16) + 8), v20);
                            *(*(a1 + 72) + 8 * i) = 0;
                          }

                          v21 = *(a1 + 24);
                          if (!v21 || (v22 = *(v21 + 48)) == 0)
                          {
                            v22 = *(*(a1 + 16) + 48);
                          }

                          v23 = objc_ReleaseObject(v22, __s1a);
                          v6 = uselect_CreateBrokerString(*(a1 + 16), __s2, 0x100uLL, 0, 0, 0, 1);
                          if ((v6 & 0x80000000) != 0)
                          {
                            goto LABEL_120;
                          }

                          if ((v23 & 0x1FFF) == 0x14 && cstdlib_strcmp(__s1a, __s2))
                          {
                            v24 = *(a1 + 24);
                            if (!v24 || (v25 = *(v24 + 48)) == 0)
                            {
                              v25 = *(*(a1 + 16) + 48);
                            }

                            objc_ReleaseObject(v25, __s2);
                          }

                          v26 = *(a1 + 48);
                          v27 = v11;
                          if (i + 1 < v26)
                          {
                            do
                            {
                              *(*(a1 + 72) + 8 * v27 + 8) = *(*(a1 + 72) + 8 * v27 + 16);
                              *(*(a1 + 56) + 8 * v27 + 8) = *(*(a1 + 56) + 8 * v27 + 16);
                              v28 = *(a1 + 64);
                              v29 = (*(*(*(a1 + 56) + 8 * v27) + 108) + *(v28 + 4 * v27));
                              *(v28 + 4 * v27 + 4) = v29;
                              v6 = uselect_CommunicateAddonOffset(a1, *(*(a1 + 72) + 8 * v27 + 8), v29);
                              if ((v6 & 0x80000000) != 0)
                              {
                                goto LABEL_120;
                              }

                              v26 = *(a1 + 48);
                              v30 = v27 + 3;
                              ++v27;
                            }

                            while (v30 < v26);
                          }

                          *(a1 + 48) = v26 - 1;
                        }
                      }

                      ++v11;
                    }
                  }

                  v31 = cstdlib_strchr(v10, 59);
                  if (v31)
                  {
                    v32 = v31;
                    v33 = v10;
                    do
                    {
                      *v32 = 0;
                      v34 = 1;
                      while (v34 < *(a1 + 48))
                      {
                        if (!cstdlib_strcmp(v33, *(*(a1 + 72) + 8 * v34++)))
                        {
                          goto LABEL_49;
                        }
                      }

                      v6 = uselect_AddDataPart(a1, v33);
                      if ((v6 & 0x80000000) != 0)
                      {
                        goto LABEL_120;
                      }

LABEL_49:
                      *v32 = 59;
                      v33 = v32 + 1;
                      v32 = cstdlib_strchr(v32 + 1, 59);
                    }

                    while (v32);
                  }

                  goto LABEL_120;
                }

                return 2229280778;
              }

              return 0;
            }

            *__s1a = 0;
            DeallocUnitSelectorMemory_NRowsDependency(a1);
            if ((paramc_ParamGetInt(*(*(a1 + 16) + 40), "uselectmaxcandspruning", __s1a) & 0x80000000) == 0)
            {
              goto LABEL_95;
            }

            *__s1a = 0;
            if (!a3)
            {
              goto LABEL_109;
            }

            v40 = paramc_ParamSetInt(*(*(a1 + 16) + 40), "uselectmaxcandspruning", 0);
            if ((v40 & 0x80000000) == 0)
            {
LABEL_95:
              LOBYTE(v53) = __s1a[0];
              if (*__s1a)
              {
                if (*__s1a >= 256)
                {
                  LOBYTE(v53) = -1;
                }

                v54 = *(a1 + 40);
                goto LABEL_110;
              }

LABEL_109:
              v54 = *(a1 + 40);
              v53 = *(v54 + 2552);
LABEL_110:
              *(a1 + 908) = v53;
              if (*(v54 + 2560))
              {
                v55 = v53;
                v56 = v53 + 20;
                if (v55 > 0xEB)
                {
                  v56 = -1;
                }

                *(a1 + 908) = v56;
              }

              return AllocUnitSelectorMemory_NRowsDependency(a1);
            }
          }

          else
          {
            *__s1a = 0;
            *__s2 = 0;
            LOBYTE(__s) = 0;
            if ((paramc_ParamGet(*(*(a1 + 16) + 40), "uselectonlinereduction", __s1a, __s2) & 0x80000000) == 0)
            {
              v6 = uselect_ApplyOnlineReduction(a1, *__s1a, *__s2);
              paramc_ParamRelease(*(*(a1 + 16) + 40));
              return v6;
            }

            if (!a3)
            {
              return 0;
            }

            return paramc_ParamSet(*(*(a1 + 16) + 40), "uselectonlinereduction", &__s, 1uLL);
          }

          return v40;
        }

        v49 = (a1 + 928);
        UInt = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "uselectweightpitchbias", (a1 + 928));
        if ((UInt & 0x80000000) != 0)
        {
          *v49 = 0;
          if (!a3)
          {
            return 0;
          }

          v6 = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "uselectweightpitchbias", 0);
          if ((v6 & 0x80000000) != 0 || !*v49)
          {
            return v6;
          }
        }

        else
        {
          v6 = UInt;
          v51 = *(a1 + 904) * *(a1 + 928) / 0x64u;
          *(a1 + 928) = v51;
          if (!v51)
          {
            return v6;
          }
        }

        if (*(a1 + 932) || !*(a1 + 40))
        {
          return v6;
        }

        v46 = (a1 + 932);
        v47 = a1;
        v48 = 1;
      }

      else
      {
        v43 = (a1 + 920);
        v44 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "uselectweightdurationbias", (a1 + 920));
        if ((v44 & 0x80000000) != 0)
        {
          *v43 = 0;
          if (!a3)
          {
            return 0;
          }

          v6 = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "uselectweightdurationbias", 0);
          if ((v6 & 0x80000000) != 0 || !*v43)
          {
            return v6;
          }
        }

        else
        {
          v6 = v44;
          v45 = *(a1 + 904) * *(a1 + 920) / 0x64u;
          *(a1 + 920) = v45;
          if (!v45)
          {
            return v6;
          }
        }

        if (*(a1 + 924) || !*(a1 + 40))
        {
          return v6;
        }

        v46 = (a1 + 924);
        v47 = a1;
        v48 = 0;
      }

      uselect_GetP95Value(v47, v48, v46);
      return v6;
    }

    v41 = (a1 + 916);
    v42 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "uselectweightnoreusebias", (a1 + 916));
    if ((v42 & 0x80000000) == 0)
    {
      v6 = v42;
      *v41 *= 100;
      return v6;
    }

    *v41 = 0;
    if (!a3)
    {
      return 0;
    }

    v52 = *(*(a1 + 16) + 40);

    return paramc_ParamSetUInt(v52, "uselectweightnoreusebias", 0);
  }

  else
  {
    v6 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "minphrase", (a1 + 740));
    if ((v6 & 0x80000000) == 0)
    {
      return v6;
    }

    *(a1 + 740) = 10;
    if (!a3)
    {
      return 0;
    }

    v36 = *(*(a1 + 16) + 40);

    return paramc_ParamSetInt(v36, "minphrase", 10);
  }
}

uint64_t uselect_ParamCheckChange(int a1, char *__s1, unsigned __int8 *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!cstdlib_strcmp(__s1, "minphrase"))
  {
    if ((cstdlib_atoi(a3) & 0x80000000) != 0)
    {
LABEL_10:
      *a4 = 0;
      return 2229280783;
    }

    return 0;
  }

  if (cstdlib_strcmp(__s1, "uselearlyemission"))
  {
    return 0;
  }

  result = cstdlib_strcmp(a3, "yes");
  if (result)
  {
    result = cstdlib_strcmp(a3, "1");
    if (result)
    {
      result = cstdlib_strcmp(a3, "no");
      if (result)
      {
        result = cstdlib_strcmp(a3, "0");
        if (result)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return result;
}

void *uselect_GetP95Value(void *result, int a2, _BYTE *a3)
{
  if (result)
  {
    v3 = result;
    v4 = result[5];
    if (v4)
    {
      v5 = result[7];
      if (*(*v5 + 108))
      {
        if (a2)
        {
          i = *(v4 + 3008);
          if (!i)
          {
            return result;
          }
        }

        else
        {
          v12 = *(v4 + 2966);
          if (!*(v4 + 2966))
          {
            return result;
          }

          for (i = *(v4 + 2968); *i != 6; i += 32)
          {
            if (!--v12)
            {
              return result;
            }
          }
        }

        v9 = *(result + 12);
        if (v9)
        {
          LODWORD(v10) = 0;
          do
          {
            v11 = *v5++;
            v10 = (*(v11 + 108) + v10);
            --v9;
          }

          while (v9);
        }

        else
        {
          v10 = 0;
        }

        v13 = heap_Calloc(*(result[2] + 8), v10, 1);
        v14 = v3[2];
        if (v13)
        {
          v15 = v13;
          v16 = heap_Calloc(*(v14 + 8), v10, 1);
          if (v16)
          {
            v17 = *(v3 + 12);
            if (v17)
            {
              v18 = 0;
              v19 = 0;
              do
              {
                v20 = *(v3[7] + 8 * v18);
                v21 = *(v20 + 108);
                if (v21)
                {
                  for (j = 0; j < v21; ++j)
                  {
                    if (!a2 || *(*(v20 + 160) + j * *(v20 + 168) + *(i + 11)))
                    {
                      *(v15 + v19++) = *(*(v20 + 160) + j * *(v20 + 168) + *(i + 11));
                      v21 = *(v20 + 108);
                    }
                  }

                  v17 = *(v3 + 12);
                }

                ++v18;
              }

              while (v18 < v17);
            }

            else
            {
              v19 = 0;
            }

            v25 = heap_Calloc(*(v3[2] + 8), 256, 4);
            v24 = v25;
            if (v25)
            {
              if (v19)
              {
                v26 = v19;
                v27 = v15;
                do
                {
                  v28 = *v27++;
                  ++*(v25 + 4 * v28);
                  --v26;
                }

                while (v26);
              }

              v29 = 0;
              v30 = 0;
              do
              {
                if (*(v25 + 4 * v29))
                {
                  v31 = 0;
                  do
                  {
                    *(v16 + v30 + v31++) = v29;
                  }

                  while (v31 < *(v25 + 4 * v29));
                  v30 += v31;
                }

                ++v29;
              }

              while (v29 != 256);
              *a3 = *(v16 + (95 * v30) / 0x64uLL);
            }

            else
            {
              log_OutPublic(*(v3[2] + 32), "USELECT", 19000, 0);
            }
          }

          else
          {
            log_OutPublic(*(v3[2] + 32), "USELECT", 19000, 0);
            v24 = 0;
          }

          result = heap_Free(*(v3[2] + 8), v15);
          if (v24)
          {
            result = heap_Free(*(v3[2] + 8), v24);
          }

          if (v16)
          {
            v32 = *(v3[2] + 8);

            return heap_Free(v32, v16);
          }
        }

        else
        {
          v23 = *(v14 + 32);

          return log_OutPublic(v23, "USELECT", 19000, 0);
        }
      }
    }
  }

  return result;
}

uint64_t uselect_ApplyOnlineReduction(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 != 1)
  {
    v5 = 2229280778;
    if (*(**(a1 + 56) + 108) != a3)
    {
      return 2229280783;
    }

    if (*(a1 + 936))
    {
      if (!a3)
      {
        return 0;
      }
    }

    else
    {
      v7 = heap_Calloc(*(*(a1 + 16) + 8), a3, 1);
      *(a1 + 936) = v7;
      if (!v7)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
        return v5;
      }

      if (!*(**(a1 + 56) + 108))
      {
        return 0;
      }
    }

    v8 = 0;
    do
    {
      *(*(a1 + 936) + v8) = *(a2 + v8);
      ++v8;
    }

    while (v8 < *(**(a1 + 56) + 108));
    return 0;
  }

  v4 = *(a1 + 936);
  if (!v4)
  {
    return 0;
  }

  heap_Free(*(*(a1 + 16) + 8), v4);
  v5 = 0;
  *(a1 + 936) = 0;
  return v5;
}

void *DeallocUnitSelectorMemory_NRowsDependency(void *result)
{
  v1 = result;
  v2 = result[108];
  if (v2)
  {
    result = heap_Free(*(result[2] + 8), v2);
    v1[108] = 0;
  }

  v3 = *(v1 + 908);
  if (!*(v1 + 908))
  {
    v5 = v1[102];
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 0;
  v5 = v1[102];
  v6 = 24;
  v7 = v5;
  do
  {
    if (v7 && *(v7 + v6))
    {
      result = heap_Free(*(v1[2] + 8), *(v7 + v6));
      v5 = v1[102];
      *(v5 + v6) = 0;
      v3 = *(v1 + 908);
      v7 = v5;
    }

    ++v4;
    v6 += 112;
  }

  while (v4 < 3 * v3);
  if (v5)
  {
LABEL_10:
    result = heap_Free(*(v1[2] + 8), v5);
    v1[102] = 0;
  }

LABEL_11:
  *(v1 + 908) = 0;
  return result;
}

uint64_t AllocUnitSelectorMemory_NRowsDependency(uint64_t a1)
{
  v2 = heap_Calloc(*(*(a1 + 16) + 8), 3 * *(a1 + 908), 112);
  *(a1 + 816) = v2;
  if (v2)
  {
    if (*(a1 + 908))
    {
      v3 = 0;
      v4 = 24;
      while (1)
      {
        v5 = heap_Calloc(*(*(a1 + 16) + 8), *(*(a1 + 40) + 3360), 4);
        *(*(a1 + 816) + v4) = v5;
        if (!v5)
        {
          break;
        }

        ++v3;
        v6 = *(a1 + 908);
        v4 += 112;
        if (v3 >= 3 * v6)
        {
          v7 = v6 + 1;
          goto LABEL_8;
        }
      }
    }

    else
    {
      v7 = 1;
LABEL_8:
      v8 = heap_Calloc(*(*(a1 + 16) + 8), v7, 56);
      *(a1 + 864) = v8;
      if (v8)
      {
        return 0;
      }
    }
  }

  log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
  return 2229280778;
}

uint64_t uselect_AddDataPart(uint64_t a1, char *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v29 = 0;
  v31[0] = 0;
  if (!a2 || !*a2)
  {
    return 0;
  }

  paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", a2);
  BrokerString = uselect_CreateBrokerString(*(a1 + 16), v31, 0x100uLL, 0, 0, 0, 0);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  BrokerString = uselect_CheckForDataFile(*a1, *(a1 + 8), v31, &v29);
  if ((BrokerString & 0x80001FFF) == 0x8000000A)
  {
    return BrokerString;
  }

  if (!v29)
  {
    BrokerString = uselect_CreateBrokerString(*(a1 + 16), v31, 0x100uLL, 0, 0, 0, 1);
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }
  }

  v5 = *(a1 + 24);
  if (v5 && (v6 = *(v5 + 48)) != 0)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a1 + 16);
    v6 = *(v7 + 48);
  }

  BrokerString = objc_GetAddRefCountedObject(v6, v31, uselect_ObjcVoiceOpen, uselect_ObjcVoiceClose, v7, &v30);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v9 = *(v30 + 32);
  if (cstdlib_strcmp((*(a1 + 40) + 602), (v9 + 602)))
  {
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", (v9 + 152), "Alphabet");
    v8 = 2229280793;
  }

  else
  {
    v8 = 0;
  }

  if (cstdlib_strcmp((*(a1 + 40) + 2400), (v9 + 2400)))
  {
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", (v9 + 152), "Diff");
    v8 = 2229280793;
  }

  v11 = *(*(a1 + 40) + 2464);
  v12 = *(v9 + 2464);
  if (v11)
  {
    if (v12)
    {
      v13 = *v11;
      if (*v11)
      {
        v14 = v11 + 1;
        while (*v12)
        {
          if (cstdlib_strcmp(v13, *v12))
          {
            log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", (v9 + 152), "TagAlphabet");
            v8 = 2229280793;
          }

          ++v12;
          v15 = *v14++;
          v13 = v15;
          if (!v15)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_38;
      }

LABEL_28:
      if (!*v12)
      {
LABEL_29:
        if ((v8 & 0x80000000) == 0)
        {
          v16 = *(a1 + 48) + 1;
          *(a1 + 48) = v16;
          v17 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 56), 8 * v16);
          if (v17 && (*(a1 + 56) = v17, v18 = *(a1 + 48), *(v17 + 8 * (v18 - 1)) = *(v9 + 3552), (v19 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 64), 4 * v18)) != 0) && (*(a1 + 64) = v19, *(v19 + 4 * (*(a1 + 48) - 1)) = *(*(*(a1 + 56) + 8 * (*(a1 + 48) - 2)) + 108) + *(v19 + 4 * (*(a1 + 48) - 2)), (v20 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 72), 8 * *(a1 + 48))) != 0))
          {
            *(a1 + 72) = v20;
            v21 = *(*(a1 + 16) + 8);
            v22 = cstdlib_strlen(a2);
            v23 = heap_Calloc(v21, 1, (v22 + 1));
            v24 = *(a1 + 48) - 1;
            *(*(a1 + 72) + 8 * v24) = v23;
            v25 = *(*(a1 + 72) + 8 * v24);
            v8 = 2229280778;
            if (v25)
            {
              cstdlib_strcpy(v25, a2);
              v26 = uselect_CommunicateAddonOffset(a1, *(*(a1 + 72) + 8 * (*(a1 + 48) - 1)), *(*(a1 + 64) + 4 * (*(a1 + 48) - 1)));
              if ((v26 & 0x80000000) != 0)
              {
                v8 = v26;
              }

              else
              {
                v8 = uselect_CommunicateAddonReductionParameters(a1, *(*(a1 + 72) + 8 * (*(a1 + 48) - 1)), v9);
                if ((v8 & 0x80000000) == 0)
                {
                  return v8;
                }
              }
            }
          }

          else
          {
            v8 = 2229280778;
          }
        }

        goto LABEL_39;
      }
    }
  }

  else if (!v12)
  {
    goto LABEL_29;
  }

LABEL_38:
  log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", (v9 + 152), "TagAlphabet");
  v8 = 2229280793;
LABEL_39:
  if (v9 && v31[0])
  {
    v27 = *(a1 + 24);
    if (!v27 || (v28 = *(v27 + 48)) == 0)
    {
      v28 = *(*(a1 + 16) + 48);
    }

    objc_ReleaseObject(v28, v31);
    if ((v8 & 0x1FFF) == 0xA)
    {
      --*(a1 + 48);
    }
  }

  return v8;
}

uint64_t uselect_CommunicateAddonOffset(uint64_t a1, char *__s, uint64_t a3)
{
  if (!__s || !*__s)
  {
    return 0;
  }

  v6 = *(*(a1 + 16) + 8);
  v7 = cstdlib_strlen(__s);
  v8 = heap_Calloc(v6, 1, (v7 + 18));
  if (v8)
  {
    v9 = v8;
    cstdlib_strcpy(v8, "voiceaddonoffset.");
    v10 = cstdlib_strlen(v9);
    if (cstdlib_strlen(__s))
    {
      v11 = 0;
      v12 = 0;
      v13 = v10;
      do
      {
        v9[v13++] = cstdlib_tolower(__s[v11]);
        v11 = ++v12;
      }

      while (cstdlib_strlen(__s) > v12);
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v9[(v11 + v10)] = 0;
    v15 = paramc_ParamSetInt(*(*(a1 + 16) + 40), v9, a3);
    heap_Free(*(*(a1 + 16) + 8), v9);
    return v15;
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
    return 2229280778;
  }
}

uint64_t uselect_CommunicateAddonReductionParameters(uint64_t a1, char *__s, char *a3)
{
  v3 = 0;
  if (!__s || !a3)
  {
    return v3;
  }

  if (!*__s)
  {
    return 0;
  }

  v7 = *(*(a1 + 16) + 8);
  v8 = cstdlib_strlen(__s);
  v9 = heap_Calloc(v7, 1, (v8 + 26));
  if (!v9)
  {
    v3 = 2229280778;
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
    return v3;
  }

  v10 = v9;
  cstdlib_strcpy(v9, "voiceaddonrawdataversion.");
  v11 = cstdlib_strlen(v10);
  if (cstdlib_strlen(__s))
  {
    v12 = 0;
    v13 = 0;
    v14 = v11;
    do
    {
      v10[v14++] = cstdlib_tolower(__s[v12]);
      v12 = ++v13;
    }

    while (cstdlib_strlen(__s) > v13);
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v10[(v12 + v11)] = 0;
  v15 = paramc_ParamSetStr(*(*(a1 + 16) + 40), v10, a3 + 64);
  if ((v15 & 0x80000000) != 0)
  {
    v3 = v15;
    v24 = 0;
    v19 = 0;
  }

  else
  {
    v16 = *(*(a1 + 16) + 8);
    v17 = cstdlib_strlen(__s);
    v18 = heap_Calloc(v16, 1, (v17 + 21));
    v19 = v18;
    if (v18)
    {
      cstdlib_strcpy(v18, "voiceaddonreduction.");
      v20 = cstdlib_strlen(v19);
      if (cstdlib_strlen(__s))
      {
        v21 = 0;
        v22 = 0;
        v23 = v20;
        do
        {
          v19[v23++] = cstdlib_tolower(__s[v21]);
          v21 = ++v22;
        }

        while (cstdlib_strlen(__s) > v22);
      }

      else
      {
        LODWORD(v21) = 0;
      }

      v19[(v21 + v20)] = 0;
      v25 = paramc_ParamSetStr(*(*(a1 + 16) + 40), v19, a3 + 76);
      if ((v25 & 0x80000000) == 0)
      {
        v26 = *(*(a1 + 16) + 8);
        v27 = cstdlib_strlen(__s);
        v28 = heap_Calloc(v26, 1, (v27 + 28));
        v24 = v28;
        if (v28)
        {
          cstdlib_strcpy(v28, "voiceaddonreductionversion.");
          v29 = cstdlib_strlen(v24);
          if (cstdlib_strlen(__s))
          {
            v30 = 0;
            v31 = 0;
            v32 = v29;
            do
            {
              v24[v32++] = cstdlib_tolower(__s[v30]);
              v30 = ++v31;
            }

            while (cstdlib_strlen(__s) > v31);
          }

          else
          {
            LODWORD(v30) = 0;
          }

          v24[(v30 + v29)] = 0;
          v3 = paramc_ParamSetStr(*(*(a1 + 16) + 40), v24, a3 + 140);
        }

        else
        {
          v3 = 2229280778;
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
        }

        goto LABEL_32;
      }

      v3 = v25;
    }

    else
    {
      v3 = 2229280778;
      log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
    }

    v24 = 0;
  }

LABEL_32:
  heap_Free(*(*(a1 + 16) + 8), v10);
  if (v19)
  {
    heap_Free(*(*(a1 + 16) + 8), v19);
  }

  if (v24)
  {
    heap_Free(*(*(a1 + 16) + 8), v24);
  }

  return v3;
}

void *DeallocBufferUnitSelector(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    if (result[5])
    {
      v4 = result[95];
      if (v4)
      {
        result = heap_Free(*(result[2] + 8), v4);
        v2[95] = 0;
      }

      v5 = a2[441];
      if (v5)
      {
        result = heap_Free(*(v2[2] + 8), v5);
        a2[441] = 0;
      }

      v6 = a2[442];
      if (v6)
      {
        result = heap_Free(*(v2[2] + 8), v6);
        a2[442] = 0;
      }

      v7 = a2[443];
      if (v7)
      {
        result = heap_Free(*(v2[2] + 8), v7);
        a2[443] = 0;
      }

      v8 = a2[451];
      if (v8)
      {
        result = heap_Free(*(v2[2] + 8), v8);
        a2[451] = 0;
      }
    }
  }

  return result;
}

uint64_t uselect_RemoveDataPartClose(uint64_t result, unsigned int a2)
{
  if (*(result + 48) > a2)
  {
    v4 = result;
    paramc_ParamSetStr(*(*(result + 16) + 40), "voiceaddon", "");
    v5 = *(v4[9] + 8 * a2);
    if (v5)
    {
      heap_Free(*(v4[2] + 8), v5);
      *(v4[9] + 8 * a2) = 0;
    }

    v6 = v4[3];
    if (!v6 || (v7 = *(v6 + 48)) == 0)
    {
      v7 = *(v4[2] + 48);
    }

    v8 = **(v4[7] + 8 * a2) + 152;

    return objc_ReleaseObject(v7, v8);
  }

  return result;
}

uint64_t uselect_ReadDirectStart(uint64_t a1, char *__s1, void *a3, _DWORD *a4)
{
  v6 = 2229280775;
  if (!*(a1 + 736))
  {
LABEL_5:
    v6 = 2229280788;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = a1 + 96;
  while (cstdlib_strcmp(*v10, __s1))
  {
    ++v9;
    v10 += 40;
    if (v9 >= *(a1 + 736))
    {
      goto LABEL_5;
    }
  }

  v12 = (*(*(a1 + 88) + 88))(*(v10 + 8), *(v10 + 16), a3, a4);
  v13 = v12;
  if ((v12 & 0x80000000) != 0)
  {
    v6 = v12;
LABEL_6:
    if (!cstdlib_strncmp(__s1, "application/x-realspeak-cspp-", 0x1DuLL) || !cstdlib_strcmp(__s1, "application/x-realspeak-usnoreusebias;version=4.0") || !cstdlib_strcmp(__s1, "application/x-realspeak-usprosodybias;version=4.0") || !cstdlib_strcmp(__s1, "application/x-realspeak-usfrozen;version=4.0"))
    {
      return v6;
    }

    v11 = 19004;
LABEL_16:
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", v11, "%s%s", "layer", __s1);
    return v6;
  }

  if (!cstdlib_strncmp(*v10, "text/", 5uLL) && (!*a4 || *(*a3 + (*a4 - 1))))
  {
    v11 = 19005;
    goto LABEL_16;
  }

  return v13;
}

uint64_t AllocBufferUnitSelector(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 3524);
  v5 = heap_Calloc(*(*(a1 + 16) + 8), v4, 4);
  *(a2 + 3528) = v5;
  v6 = *(a1 + 16);
  if (!v5 || (v7 = heap_Calloc(*(v6 + 8), (2 * v4), 2), *(a2 + 3536) = v7, v6 = *(a1 + 16), !v7) || (v8 = heap_Calloc(*(v6 + 8), (2 * v4), 2), *(a2 + 3544) = v8, v6 = *(a1 + 16), !v8))
  {
    v11 = 2229280778;
LABEL_9:
    log_OutPublic(*(v6 + 32), "USELECT", 19000, 0);
    return v11;
  }

  v9 = heap_Calloc(*(v6 + 8), v4, 4);
  *(a2 + 3608) = v9;
  if (!v9)
  {
    v11 = 2229280778;
    v6 = *(a1 + 16);
    goto LABEL_9;
  }

  v10 = *(a2 + 3524);
  if (v10 >= 1)
  {
    memset(v9, 255, 4 * v10);
  }

  return 0;
}

uint64_t uselect_Write(uint64_t a1, char *__s2, uint64_t a3, uint64_t a4)
{
  v6 = 2229280788;
  if (!*(a1 + 736))
  {
    goto LABEL_7;
  }

  v9 = 0;
  v10 = (a1 + 128);
  while (cstdlib_strcmp(*(v10 - 4), __s2))
  {
    ++v9;
    v10 += 5;
    if (v9 >= *(a1 + 736))
    {
      goto LABEL_7;
    }
  }

  v6 = (*(*(a1 + 88) + 104))(*(v10 - 1), *v10, a3, a4);
  if ((v6 & 0x80000000) != 0)
  {
LABEL_7:
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19003, "%s%s", "layer", __s2);
  }

  return v6;
}

uint64_t uselect_GetOffsetAndCountInCache3Table(_BYTE *a1, uint64_t a2, _BYTE *a3, int a4, int a5, _DWORD *a6)
{
  v6 = a3[1];
  if (v6 == 108)
  {
    v7 = 204;
  }

  else
  {
    v7 = 208;
  }

  v8 = 216;
  if (v6 != 108)
  {
    v8 = 224;
  }

  v9 = 240;
  if (v6 == 108)
  {
    v9 = 232;
    v10 = 248;
  }

  else
  {
    v10 = 252;
  }

  v11 = 264;
  if (v6 == 108)
  {
    v11 = 256;
  }

  if (a4)
  {
    v12 = a4 - a1[2496];
  }

  else
  {
    v12 = a1[3577];
  }

  v13 = *(a2 + v9);
  v14 = *(a2 + v8);
  v15 = *(a2 + v10);
  v16 = *(a2 + v7);
  if (a5)
  {
    v17 = a1[2496];
    v18 = a5 - v17;
  }

  else
  {
    v18 = a1[3577];
    v17 = a1[2496];
  }

  v19 = 0;
  v20 = *(a2 + v11);
  v21 = *a3 - v17;
  v22 = a1[3576];
  v23 = v21;
  v24 = (v22 * v12 + v21) * v22;
  v25 = v18;
  v26 = v24 + v18;
  v27 = (v16 - 1);
  v28 = v27;
  v29 = v27;
  do
  {
    v30 = (v19 + v29) >> 1;
    v31 = *(v14 + 4 * v30);
    if (v31 <= v26)
    {
      if (v31 >= v26)
      {
LABEL_57:
        if (v30 != v27)
        {
          v15 = *(v13 + 4 * (v30 + 1));
          v27 = v30;
        }

        *a6 = v15 - *(v13 + 4 * v27);
        return v20 + 4 * *(v13 + 4 * v30);
      }

      v19 = v30 + 1;
    }

    else
    {
      if (v19 + v29 < 2)
      {
        break;
      }

      v29 = v30 - 1;
    }
  }

  while (v19 <= v29);
  v32 = a1[3577];
  if (v6 == 108)
  {
    if (v25 != v32)
    {
      v33 = 0;
      v34 = v24 + v32;
      v35 = v27;
      do
      {
        v30 = (v33 + v35) >> 1;
        v36 = *(v14 + 4 * v30);
        if (v36 <= v34)
        {
          if (v36 >= v34)
          {
            goto LABEL_57;
          }

          v33 = v30 + 1;
        }

        else
        {
          if (v33 + v35 < 2)
          {
            break;
          }

          v35 = v30 - 1;
        }
      }

      while (v33 <= v35);
    }

    v37 = 0;
    v38 = v32 + (v23 + v32 * v22) * v22;
    do
    {
      v30 = (v37 + v28) >> 1;
      v39 = *(v14 + 4 * v30);
      if (v39 <= v38)
      {
        if (v39 >= v38)
        {
          goto LABEL_57;
        }

        v37 = v30 + 1;
      }

      else
      {
        if (v37 + v28 < 2)
        {
          return 0;
        }

        v28 = v30 - 1;
      }
    }

    while (v37 <= v28);
  }

  else
  {
    v40 = (v23 + v32 * v22) * v22;
    if (v32 != v12)
    {
      v41 = 0;
      v42 = v40 + v25;
      v43 = v27;
      do
      {
        v30 = (v41 + v43) >> 1;
        v44 = *(v14 + 4 * v30);
        if (v44 <= v42)
        {
          if (v44 >= v42)
          {
            goto LABEL_57;
          }

          v41 = v30 + 1;
        }

        else
        {
          if (v41 + v43 < 2)
          {
            break;
          }

          v43 = v30 - 1;
        }
      }

      while (v41 <= v43);
    }

    v45 = 0;
    v46 = v40 + v32;
    do
    {
      v30 = (v45 + v28) >> 1;
      v47 = *(v14 + 4 * v30);
      if (v47 <= v46)
      {
        if (v47 >= v46)
        {
          goto LABEL_57;
        }

        v45 = v30 + 1;
      }

      else
      {
        if (v45 + v28 < 2)
        {
          return 0;
        }

        v28 = v30 - 1;
      }
    }

    while (v45 <= v28);
  }

  return 0;
}

uint64_t uselect_InitForPreselDistFunc(uint64_t a1)
{
  v1 = 2229280769;
  v2 = dist_LPHONEME_DATACOST;
  switch(*a1)
  {
    case 1:
      goto LABEL_7;
    case 2:
      v4 = dist_RPHONEME_DATACOST;
      goto LABEL_6;
    case 3:
      v4 = dist_LLPHONEME_DATACOST;
      goto LABEL_6;
    case 4:
      v4 = dist_RRPHONEME_DATACOST;
      goto LABEL_6;
    case 5:
      v4 = dist_PITCH_CART;
      goto LABEL_6;
    case 6:
      v4 = dist_DUR_CART;
      goto LABEL_6;
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x12:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2B:
    case 0x2C:
    case 0x45:
    case 0x46:
      v3 = *(a1 + 13) - 2;
      if (v3 >= 7 || ((0x47u >> v3) & 1) == 0)
      {
        return v1;
      }

      v2 = off_287EF0130[(*(a1 + 13) - 2)];
      goto LABEL_7;
    case 0x11:
      v4 = dist_UNITBIAS;
      goto LABEL_6;
    case 0x13:
    case 0x14:
    case 0x15:
      v6 = *(a1 + 13);
      v4 = dist_COMMON_EMULATEBUG203_2;
      if (v6 == 2)
      {
        goto LABEL_6;
      }

      if (v6 != 3)
      {
        return v1;
      }

      v4 = dist_COMMON_EMULATEBUG203_3;
LABEL_6:
      v2 = v4;
LABEL_7:
      v1 = 0;
      *(a1 + 16) = v2;
      *(a1 + 24) = ~(-1 << *(a1 + 13));
      return v1;
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      v4 = dist_COMMON_8;
      goto LABEL_6;
    default:
      return v1;
  }
}

uint64_t dist_LPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[6];
  v7 = v6[7];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[8];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_RPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[9];
  v7 = v6[10];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[11];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_LLPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[12];
  v7 = v6[13];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[14];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_RRPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[15];
  v7 = v6[16];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[17];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_PITCH_CART(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v5 = a1[111];
  if (!*v5)
  {
    return 0;
  }

  if (!a3 && *a5)
  {
    return 500000;
  }

  v6 = a1[5];
  LODWORD(v7) = *(v6 + 2680);
  if (v7)
  {
    LODWORD(v7) = v5[1];
    if (v7)
    {
      v7 = *(v6 + 3000);
      if (v7)
      {
        v8 = *(a1[107] + *(v7 + 25) + 3);
        v7 = *(v6 + 2480);
        if (!v7 || (v9 = (v7 + 8 * v8), (LODWORD(v7) = *v9) == 0) || v9[1] >= a3)
        {
          v7 = *(v6 + 2488);
          if (v7)
          {
            v10 = (v7 + 8 * v8);
            LODWORD(v7) = *v10;
            if (*v10)
            {
              if (v10[1] <= a3)
              {
                LODWORD(v7) = 0;
              }
            }
          }
        }
      }
    }
  }

  v11 = a3 - a2;
  if (a2 >= a3)
  {
    v11 = a2 - a3;
  }

  if (*(v6 + 2700))
  {
    if (v11 <= v5[36] * *(v6 + 2704))
    {
      v12 = v11 * v11 * *a5 / v5[37];
    }

    else
    {
      v12 = v11 * v11 * *a5 / v5[37] * *(v6 + 2708);
    }
  }

  else
  {
    v12 = (a2 - a3) * (a2 - a3) * *a5 / v5[37];
    if (v11 > *(v6 + 2576))
    {
      v12 *= 10;
    }
  }

  return v12 + v7;
}

uint64_t dist_DUR_CART(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v5 = *(a1 + 40);
  if (!v5[678])
  {
    if (a2)
    {
      v10 = a3 - a2;
      if (a2 >= a3)
      {
        v10 = a2 - a3;
      }

      v11 = (a2 - a3) * (a2 - a3) * *a5 / *(*(a1 + 888) + 156);
      if (v10 <= v5[645])
      {
        return v11;
      }

      else
      {
        return 10 * v11;
      }
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = a2 - a3;
  if (a2 < a3)
  {
    v6 = a3 - a2;
  }

  v7 = *(a1 + 888);
  v8 = *(v7 + 152);
  if (v6 > v8 * v5[679])
  {
    v9 = v5[680];
    return v6 * v6 * *a5 / *(v7 + 156) * v9;
  }

  if (a2 > a3 && v6 > v5[681] * v8)
  {
    v9 = v5[682];
    return v6 * v6 * *a5 / *(v7 + 156) * v9;
  }

  return v6 * v6 * *a5 / *(v7 + 156);
}

uint64_t dist_UNITBIAS(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int *a5)
{
  if ((a3 >> *(a4 + 12)))
  {
    return *a5;
  }

  else
  {
    return 0;
  }
}

uint64_t dist_COMMON_EMULATEBUG203_2(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  if (!*a5)
  {
    return 0;
  }

  v6 = (a3 >> *(a4 + 12)) & 3;
  v7 = *(a5 + 1);
  if (*v7)
  {
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = (v8 + 2 * *(v7 + 2) * *(v9 + a2) + 2 * *(v9 + v6));
    }

    else
    {
      v10 = (v8 + 2 * (v6 + *(v7 + 2) * a2));
    }

    v13 = *v10;
    if (v13 == 150)
    {
      return 5000000;
    }

    else if (v13 == 200)
    {
      return 15000000;
    }

    else
    {
      return (v5 * v13);
    }
  }

  else
  {
    v12 = 100 * v5;
    if (v6 == a2)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t dist_COMMON_EMULATEBUG203_3(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 7;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = (v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = (v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    v11 = *v9;
    if (v11 == 150)
    {
      return 5000000;
    }

    else if (v11 == 200)
    {
      return 15000000;
    }

    else
    {
      return (*a5 * v11);
    }
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_2(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 3;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = *(v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    return (*a5 * v9);
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_3(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 7;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = *(v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    return (*a5 * v9);
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_4(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 0xFLL;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = *(v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    return (*a5 * v9);
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int *a5)
{
  v5 = *(a5 + 1);
  if (*v5)
  {
    v6 = *a5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v5 + 2) * *(v8 + a2) + 2 * *(v8 + a3));
    }

    else
    {
      v9 = *(v7 + 2 * *(v5 + 2) * a2 + 2 * a3);
    }
  }

  else
  {
    if (a2 == a3)
    {
      return 0;
    }

    v6 = *a5;
    v9 = 100;
  }

  return (v6 * v9);
}

uint64_t uselect_IsNextUnit(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v4 = *result;
    v2 = (result + 4);
    for (i = v4; ; --i)
    {
      if (!i)
      {
        return 0;
      }

      v5 = *v2;
      if (*v2 == a2)
      {
        break;
      }

      ++v2;
      if (v5 > a2)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t uselect_extractQuantization(unsigned int a1, int a2, int a3)
{
  v3 = a1 >> 4;
  if (a2 != 77)
  {
    v3 = a1 & 0xF;
  }

  v4 = ~(v3 - 8) + ~(v3 - 8) * (v3 - 8) - (v3 - 8);
  if (v3 <= 7)
  {
    v4 = v3 + (v3 + 1) * (v3 + 1);
  }

  v5 = (6554 * (66 * v3 + 38)) >> 16;
  if (a3 == 85)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t uselect_CalculateCost(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  result = 4000000000;
  v7 = *(a1 + 40);
  v8 = **(a2 + 40);
  *(a2 + 108) = 0;
  v9 = *(a1 + 848);
  if (*(a1 + 848))
  {
    v10 = 0;
    v11 = *(a1 + 824);
    v12 = a2 + 62;
    while (1)
    {
      v13 = *v11;
      v14 = **(v11 + 5);
      if (v10)
      {
        v15 = v7[667] == 1 && v13 >= result;
        if (v15)
        {
          return result;
        }
      }

      if (!(a4 | a3))
      {
        break;
      }

LABEL_9:
      if (v13 < result)
      {
        goto LABEL_10;
      }

LABEL_188:
      v11 += 28;
      if (++v10 >= v9)
      {
        return result;
      }
    }

    v16 = v7[640];
    if (v16 && (*(v11 + 61) != 1 || *(v11 + 77) != 114))
    {
      v17 = *(a2 + 96);
      if (v11[24])
      {
        if (!v17)
        {
          goto LABEL_188;
        }
      }

      else if (v17)
      {
        goto LABEL_188;
      }
    }

    if (v13 >= result)
    {
      goto LABEL_188;
    }

    if (v14 == v8 && v11[2] == *(a2 + 32))
    {
      v18 = 0;
LABEL_22:
      v19 = 1;
      if (!v16)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (a5 && (*(v11 + 86) || *(a2 + 87)))
      {
        goto LABEL_188;
      }

      if (v14 == v8)
      {
        v20 = *(v14 + 2632);
        if (v20 <= 0x63)
        {
          v21 = *(v11 + 2);
          if (v21)
          {
            v22 = *(a2 + 32);
            v25 = *v21;
            v23 = v21 + 1;
            v24 = v25;
            while (v24)
            {
              v26 = *v23;
              if (*v23 == v22)
              {
                v43 = **(v11 + 3);
                v18 = 0;
                if (*(v14 + 2588) == 1)
                {
                  v44 = (v43 << *(v11 + 86) << *(a2 + 87)) * v20;
                }

                else
                {
                  v44 = v43 * v20;
                }

                v13 = v44 / 0x64 + v13;
                goto LABEL_22;
              }

              ++v23;
              --v24;
              if (v26 > v22)
              {
                break;
              }
            }
          }
        }
      }

      if (*(v14 + 2588) == 1 && *(v8 + 2588) == 1)
      {
        v19 = 0;
        v27 = **(v11 + 3) << *(v11 + 86) << *(a2 + 87);
      }

      else
      {
        v19 = 0;
        v27 = **(v11 + 3);
      }

      v13 = (v27 + v13);
      v18 = 1;
      if (!v16)
      {
LABEL_57:
        if (v13 >= result)
        {
          goto LABEL_188;
        }

        v30 = *(v14 + 3384);
        if ((v30 & 0x80000000) != 0 || (*(v8 + 3384) & 0x80000000) != 0)
        {
LABEL_87:
          if (v14 != v8)
          {
            goto LABEL_114;
          }

          if (v18)
          {
            if (*(v14 + 2604) == 2)
            {
              if (*(v14 + 2624))
              {
                if (*(v11 + 77) != 114)
                {
                  if (*(v14 + *(v11 + 76) + 1630) == 83)
                  {
                    v46 = 0;
                    goto LABEL_104;
                  }

                  v45 = (*(v14 + 3568) + (*(v11 + 75) << 8) + *(a2 + 74) + 0x10000);
LABEL_103:
                  v46 = *v45;
LABEL_104:
                  if (v7[669] < v46)
                  {
                    goto LABEL_188;
                  }

                  v47 = *(*(v11 + 3) + 8);
                  v48 = v13 + v47 * v46;
                  LODWORD(v13) = v13 + 10 * v46 * v47;
                  if (v7[650] < v46)
                  {
                    v13 = v13;
                  }

                  else
                  {
                    v13 = v48;
                  }

                  goto LABEL_113;
                }

                v38 = *(a2 + 74);
                v39 = *(v14 + 3568) + (*(v11 + 75) << 8);
              }

              else
              {
                v38 = *(a2 + 74);
                v39 = *(v14 + 3560) + (*(v11 + 75) << 7);
              }

              v45 = (v39 + v38);
              goto LABEL_103;
            }

            v40 = *(v14 + 3560);
            if (v40)
            {
              v41 = 0;
              v42 = 0;
              do
              {
                v42 += 2 * *(v40 + *(v12 + v41 + 3) + (*(v11 + v41 + 68) << 7)) + *(v40 + *(v12 + v41) + (*(v11 + v41 + 68) << 7)) + *(v40 + *(v12 + v41 + 3) + (*(v11 + v41 + 71) << 7));
                ++v41;
                v40 += 0x4000;
              }

              while (v41 != 3);
            }

            else
            {
              v42 = 0;
              v49 = *(v14 + 3568);
              do
              {
                v42 += 2 * *(v49 + (*(v12 + v40 + 3) | (*(v11 + v40 + 68) << 8))) + *(v49 + (*(v12 + v40) | (*(v11 + v40 + 68) << 8))) + *(v49 + (*(v12 + v40 + 3) | (*(v11 + v40 + 71) << 8)));
                ++v40;
                v49 += 0x10000;
              }

              while (v40 != 3);
            }

            v50 = *(*(v11 + 3) + 8);
            if (v42 / 0xA <= v7[650])
            {
              v13 = v13 + 2 * v42 * v50;
            }

            else
            {
              v13 = v13 + 20 * v42 * v50;
            }
          }

LABEL_113:
          if (v13 >= result)
          {
            goto LABEL_188;
          }

LABEL_114:
          v51 = *(v14 + 3404);
          if ((v51 & 0x80000000) != 0 || (*(v8 + 3404) & 0x80000000) != 0)
          {
            goto LABEL_158;
          }

          if (v18 && *(v8 + 859 + *(a2 + 76)) == 118 && *(v14 + *(v11 + 76) + 859) == 118)
          {
            v52 = *(v11 + 92);
            v54 = (v52 >> 4) + ((v52 >> 4) + 1) * ((v52 >> 4) + 1);
            if ((v52 & 0x80) != 0)
            {
              v53 = ((*(v11 + 92) >> 4) - 8);
              v54 = ~v53 + ~v53 * v53 - v53;
            }

            v55 = v52 & 0xF;
            if (v55 <= 7)
            {
              v56 = v55 + (v55 + 1) * (v55 + 1);
            }

            else
            {
              v56 = ~(v55 - 8) + ~(v55 - 8) * (v55 - 8) - (v55 - 8);
            }

            if (*(v11 + 77) == 114)
            {
              v57 = v56;
            }

            else
            {
              v57 = v54;
            }

            v58 = *(a2 + 92);
            v60 = (v58 >> 4) + ((v58 >> 4) + 1) * ((v58 >> 4) + 1);
            if ((v58 & 0x80) != 0)
            {
              v59 = ((*(a2 + 92) >> 4) - 8);
              v60 = ~v59 + ~v59 * v59 - v59;
            }

            v61 = v58 & 0xF;
            if (v61 <= 7)
            {
              v62 = v61 + (v61 + 1) * (v61 + 1);
            }

            else
            {
              v62 = ~(v61 - 8) + ~(v61 - 8) * (v61 - 8) - (v61 - 8);
            }

            if (*(a2 + 77) == 114)
            {
              v63 = v62;
            }

            else
            {
              v63 = v60;
            }

            if (v63 - v57 >= 0)
            {
              v64 = v63 - v57;
            }

            else
            {
              v64 = v57 - v63;
            }

            if (v64 > v7[663])
            {
              goto LABEL_188;
            }

            v66 = v63 > 0 && v57 < 0;
            if (v64 > v7[662])
            {
              if (v66 || v63 < 0 && v57 >= 1)
              {
                v13 = v13 + 100 * v64 * *(*(v11 + 3) + 4 * v51);
                goto LABEL_157;
              }

              goto LABEL_156;
            }

            if (v66 || v63 < 0 && v57 >= 1)
            {
LABEL_156:
              v13 = v13 + 10 * v64 * *(*(v11 + 3) + 4 * v51);
              goto LABEL_157;
            }

            v13 = v13 + *(*(v11 + 3) + 4 * v51) * v64;
          }

LABEL_157:
          if (v13 >= result)
          {
            goto LABEL_188;
          }

LABEL_158:
          v67 = *(v14 + 3400);
          if ((v67 & 0x80000000) == 0 && (*(v8 + 3400) & 0x80000000) == 0)
          {
            if (v18)
            {
              v68 = *(v11 + 91);
              v69 = v68 & 0xF;
              v70 = v68 >> 4;
              if (*(v11 + 77) == 114)
              {
                v71 = v69;
              }

              else
              {
                v71 = v70;
              }

              v72 = 6554 * (66 * v71 + 38);
              v73 = HIWORD(v72);
              v74 = *(a2 + 91);
              v75 = v74 & 0xF;
              v76 = v74 >> 4;
              if (*(a2 + 77) == 114)
              {
                v77 = v75;
              }

              else
              {
                v77 = v76;
              }

              v78 = 6554 * (66 * v77 + 38);
              v79 = HIWORD(v78) - HIWORD(v72);
              v15 = v73 >= HIWORD(v78);
              v80 = v73 - HIWORD(v78);
              if (v15)
              {
                v81 = v80;
              }

              else
              {
                v81 = v79;
              }

              if (v81 > v7[666])
              {
                goto LABEL_188;
              }

              v82 = v81 * *(*(v11 + 3) + 4 * v67);
              if (v81 <= v7[665])
              {
                v13 = (v13 + 10 * v82);
              }

              else
              {
                v13 = (v13 + 100 * v82);
              }
            }

            if (v13 >= result)
            {
              goto LABEL_188;
            }
          }

          if (v14 != v8 || (v83 = *(v14 + 3392), (v83 & 0x80000000) != 0) && (v83 = *(v14 + 3396), (v83 & 0x80000000) != 0))
          {
LABEL_10:
            *(a2 + 108) = v10;
            result = v13;
            goto LABEL_188;
          }

          if (*(v8 + 1116 + *(a2 + 76)) == 86 && *(a2 + 77) == 108)
          {
            v84 = *(v11 + 85);
            if (v84 != 255)
            {
              v85 = *(a2 + 84);
              if (v85 != 255)
              {
                v86 = v85 - v84;
                v87 = *(*(v14 + 3368) + 12 * v83 + 8);
                v88 = *(a2 + 56);
                if (v86 >= v88)
                {
LABEL_187:
                  v92 = 10 * v87;
LABEL_191:
                  v13 = (v13 + *(*(v11 + 3) + 4 * v83) * v92);
                  goto LABEL_9;
                }

                v89 = *(a2 + 54);
                if (v86 >= v89)
                {
                  v93 = (v86 - v89) * v87;
                  v94 = v88 - v89;
                  goto LABEL_193;
                }

                v90 = *(a2 + 52);
                if (v90 > v86)
                {
                  v91 = *(a2 + 50);
                  if (v86 < v91)
                  {
                    goto LABEL_187;
                  }

                  v93 = (v90 - v86) * v87;
                  v94 = v90 - v91;
LABEL_193:
                  v92 = v93 / v94;
                  goto LABEL_191;
                }
              }
            }
          }

          v92 = 0;
          goto LABEL_191;
        }

        if (v18)
        {
          if (*(a2 + 80) == 1 && v11[20] == 1 && (*(a2 + 90) < 0x15u || *(v11 + 88) <= 0x14u))
          {
            v31 = 10 * *(*(v11 + 3) + 4 * v30);
            v32 = 99;
LABEL_85:
            v13 = v13 + v31 * *(*(v14 + 28160) + v32);
            goto LABEL_86;
          }

          if (*(v14 + 2612) == 1)
          {
            v33 = *(a2 + 90);
            if (*(v8 + 2612) == 1)
            {
              v34 = *(v11 + 88);
              goto LABEL_73;
            }
          }

          else
          {
            v33 = *(a2 + 90);
          }

          if (v33 >= 0x15)
          {
            v34 = *(v11 + 88);
            if (v34 >= 0x15 && *(v11 + 89) <= 0xEu)
            {
LABEL_73:
              v35 = v33 - v34;
              if (v33 >= v34)
              {
                v36 = v33 - v34;
              }

              else
              {
                v36 = v34 - v33;
              }

              if (v36 > v7[668])
              {
                goto LABEL_188;
              }

              if (v35 >= 49)
              {
                v37 = 49;
              }

              else
              {
                v37 = v35;
              }

              LODWORD(v32) = v37 + 50;
              if (v35 >= -50)
              {
                v32 = v32;
              }

              else
              {
                v32 = 0;
              }

              v31 = *(*(v11 + 3) + 4 * v30);
              if (v36 > v7[649])
              {
                v31 *= 10;
              }

              goto LABEL_85;
            }
          }
        }

LABEL_86:
        if (v13 >= result)
        {
          goto LABEL_188;
        }

        goto LABEL_87;
      }
    }

    v28 = *(v11 + 61);
    if (v28 == 1 && *(v11 + 77) == 114)
    {
      if (!*(a2 + 100))
      {
        if (*(a2 + 76) == *(v8 + 2179))
        {
          v13 = v13;
        }

        else
        {
          v13 = (v13 + 50000);
        }
      }
    }

    else
    {
      if (v11[26])
      {
        if (v11[25])
        {
          v29 = v19;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          v13 = v13;
        }

        else
        {
          v13 = (v13 + 50000);
        }
      }

      if (v18 && (v28 != 1 || *(v11 + 77) != 114) && (v11[24] || *(a2 + 96)))
      {
        goto LABEL_188;
      }
    }

    goto LABEL_57;
  }

  return result;
}

uint64_t logTransFormatHeader(_DWORD *a1, char *__dst)
{
  cstdlib_strcpy(__dst, "**** Transition Cost Details ****\n");
  v4 = cstdlib_strlen(__dst);
  sprintf(&__dst[v4], "Minimal transition cost up to and including left diphone (%d) +\n", 1);
  cstdlib_strcat(__dst, "(Pure transition cost)\n");
  if ((a1[845] & 0x80000000) != 0)
  {
    v6 = 2;
  }

  else
  {
    v5 = cstdlib_strlen(__dst);
    sprintf(&__dst[v5], "   TRANS_ADJACENT(%d) +\n", 2);
    v6 = 3;
  }

  if ((a1[846] & 0x80000000) == 0)
  {
    v7 = cstdlib_strlen(__dst);
    sprintf(&__dst[v7], "   TRANS_PITCH_HISTO(%d) +\n", v6);
    v6 = (v6 + 1);
  }

  if ((a1[847] & 0x80000000) == 0)
  {
    v8 = cstdlib_strlen(__dst);
    sprintf(&__dst[v8], "   TRANS_CEPSTRUM(%d) +\n", v6);
    v6 = (v6 + 1);
  }

  if ((a1[851] & 0x80000000) == 0)
  {
    v9 = cstdlib_strlen(__dst);
    sprintf(&__dst[v9], "   TRANS_GRDPITCH(%d) +\n", v6);
    v6 = (v6 + 1);
  }

  if ((a1[850] & 0x80000000) == 0)
  {
    v10 = cstdlib_strlen(__dst);
    sprintf(&__dst[v10], "  TRANS_ENERGY_TRANS(%d) +\n", v6);
    v6 = (v6 + 1);
  }

  if ((a1[848] & 0x80000000) == 0)
  {
    v11 = "   TRANS_PITCH_SYL_TRANS_DIFFERENTIATOR(%d) +\n";
LABEL_16:
    v12 = cstdlib_strlen(__dst);
    sprintf(&__dst[v12], v11, v6);
    LODWORD(v6) = v6 + 1;
    goto LABEL_17;
  }

  if ((a1[849] & 0x80000000) == 0)
  {
    v11 = "    TRANS_PITCH_SYL_TRANS_SMALLSPFY(%d) +\n";
    goto LABEL_16;
  }

LABEL_17:
  v13 = cstdlib_strlen(__dst);
  return sprintf(&__dst[v13], "node cost right (%d)\n = transition cost up to and including right diphone (%d)\n", v6, v6 + 1);
}

void *uselect_ExtractFeatFromMsg(void *result, int a2)
{
  v2 = result;
  v3 = 0;
  v4 = result[111];
  v5 = result[107];
  v6 = result[112];
  v7 = result[5];
  v8 = ((a2 + ((a2 & 0x8000) >> 15)) >> 1);
  if (a2)
  {
    v9 = 114;
  }

  else
  {
    v9 = 108;
  }

  v115[0] = 0;
  v114 = 0;
  v5[1] = v9;
  v10 = (a2 + ((a2 & 0x8000) >> 15)) >> 1;
  *v5 = *(result[95] + 864 * v8 + 2);
  v5[2] = 0;
  if (*(v7 + 2564) != 1)
  {
    v3 = *(v7 + *(result[95] + 864 * v10 + 2) + 2144);
  }

  if (*(v7 + 2966))
  {
    v11 = 0;
    v12 = 0;
    v13 = v8 + 1;
    v14 = v5 + 3;
    v15 = v10 + 2;
    result = (v7 + 2144);
    v16 = v7 + 859;
    v17 = v7 + 1116;
    v18 = (v7 + 2179);
    v19 = (v7 + 192 * v3);
    v20 = (v19 + 3752);
    v21 = v19 + 230;
    v22 = v19 + 224;
    v23 = (v19 + 3656);
    v112 = v19 + 233;
    v110 = (v19 + 3704);
    v111 = v19 + 227;
    v109 = (v19 + 3608);
    v113 = a2 + 1;
    v24 = 864 * v10;
    v25 = v24 + 356;
    while (2)
    {
      v26 = v2[95];
      if (v5[1] == 108)
      {
        v27 = (v26 + v25 - 284);
      }

      else
      {
        v27 = (v26 + v25);
      }

      *v6 = *v27;
      *(v6 + 8) = *(v2[5] + 3416) + 24 * *(v26 + v24 + v12 + 640);
      switch(*(*(v7 + 2968) + v11))
      {
        case 1:
          v36 = v5[1];
          v37 = v18;
          if (v113 >= 3)
          {
            if (v36 != 114 || (v37 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v37 = result + *(v26 + 864 * v10 - 862);
            }
          }

          v14[v12] = *v37;
          if (v36 == 108)
          {
            v38 = *v22;
            v39 = *(v22 + 2);
          }

          else
          {
            v38 = *v21;
            v39 = *(v21 + 2);
          }

          *(v4 + 64) = v39;
          *(v4 + 48) = v38;
          goto LABEL_82;
        case 2:
          v40 = v5[1];
          v41 = v18;
          if (*(v2 + 384) - 1 != v8)
          {
            if (v40 != 108 || (v41 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v41 = result + *(v26 + 864 * v10 + 866);
            }
          }

          v14[v12] = *v41;
          if (v40 == 108)
          {
            v42 = v109;
          }

          else
          {
            v42 = v110;
          }

          v54 = *v42;
          *(v4 + 88) = *(v42 + 2);
          *(v4 + 72) = v54;
          goto LABEL_82;
        case 3:
          v30 = v5[1];
          v31 = v18;
          if (a2 >= 4)
          {
            if (v30 != 114 || (v31 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v32 = v26 + 864 * v8;
              v31 = v18;
              if (*(v32 - 862) != 35)
              {
                v31 = result + *(v32 - 1726);
              }
            }
          }

          v14[v12] = *v31;
          if (v30 == 108)
          {
            v33 = v111;
          }

          else
          {
            v33 = v112;
          }

          v53 = *v33;
          *(v4 + 112) = *(v33 + 2);
          *(v4 + 96) = v53;
          goto LABEL_82;
        case 4:
          v43 = v5[1];
          v44 = v18;
          if (v15 < *(v2 + 384))
          {
            if (v43 != 108 || (v44 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v44 = v18;
              if (*(v26 + 864 * v10 + 866) != 35)
              {
                v44 = result + *(v26 + 864 * v15 + 2);
              }
            }
          }

          v14[v12] = *v44;
          if (v43 == 108)
          {
            v45 = *v23;
            v46 = *(v23 + 2);
          }

          else
          {
            v45 = *v20;
            v46 = *(v20 + 2);
          }

          *(v4 + 136) = v46;
          *(v4 + 120) = v45;
          goto LABEL_82;
        case 5:
          if (*(v7 + 2736) == 1 && v5[1] == 114)
          {
            v47 = (v26 + 864 * v10 + 44);
          }

          else
          {
            v47 = (v26 + 864 * v10 + 22);
          }

          v14[v12] = *v47;
          v49 = *(v4 + 16);
          if (v49 && *(v49 + 4) && *(v49 + 5))
          {
            v85 = v22;
            v87 = v21;
            v89 = v20;
            v91 = v18;
            v93 = v17;
            v95 = v16;
            v97 = result;
            v99 = v15;
            v101 = v13;
            v103 = v8;
            v105 = a2;
            v107 = v4;
            uselect_splitGID(v2, *v49, v115, &v114);
            v4 = v107;
            v50 = *(v107 + 16);
            v51 = *(v50 + 4);
            if (v51 == 3)
            {
              v52 = 0;
            }

            else if (v51 == 1)
            {
              v52 = *(v50 + 5);
            }

            else
            {
              v52 = -*(v50 + 5);
            }

            a2 = v105;
            v8 = v103;
            v13 = v101;
            result = v97;
            v15 = v99;
            v17 = v93;
            v16 = v95;
            v20 = v89;
            v18 = v91;
            v22 = v85;
            v21 = v87;
            v59 = *(*(v7 + 2968) + v11 + 24) & (*(*(v115[0] + 160) + v114 * *(v115[0] + 168) + *(*(v7 + 2968) + v11 + 11)) >> *(*(v7 + 2968) + v11 + 12));
            v60 = *(v2 + 932);
            v61 = v60 - v59;
            v62 = v59 >= v60;
            v63 = v59 - v60;
            if (v63 == 0 || !v62)
            {
              LOBYTE(v63) = v61;
            }

            v64 = v52 * v63 / 100 + v59;
            if (v64 >= 255)
            {
              v64 = 255;
            }

            v14[v12] = v64 & ~(v64 >> 31);
            *v6 = *(v2 + 232);
          }

          *v6 *= 1000;
          if (*(v7 + 2736) == 1 && v5[1] == 114)
          {
            v65 = v2[95];
            v66 = (v65 + 864 * v10 + 45);
          }

          else
          {
            v65 = v2[95];
            v66 = (v65 + 864 * v10 + 23);
          }

          *(v4 + 148) = *v66 * *v66;
          *(v4 + 144) = (6554 * *v66 + 32770) >> 16;
          v67 = *(result + *(v65 + 864 * v10 + 2));
          *v4 = *(v16 + v67) == 118;
          *(v4 + 4) = *(v17 + v67) == 86 && (v68 = *(v7 + 2992)) != 0 && v14[*(v68 + 25)] == 3;
          goto LABEL_82;
        case 6:
          v34 = v26 + 864 * v10;
          if (*(v34 + 2) == 35)
          {
            v35 = 0;
          }

          else if (*(v7 + 2740) == 1 && v5[1] == 114)
          {
            v35 = *(v34 + 46);
          }

          else
          {
            v35 = *(v26 + 864 * v10 + 24);
          }

          v14[v12] = v35;
          if (*(v2[95] + 864 * v10 + 2) != 35)
          {
            v55 = *(v4 + 16);
            if (v55)
            {
              if (*(v55 + 6) && *(v55 + 7))
              {
                v86 = v22;
                v88 = v21;
                v90 = v20;
                v92 = v18;
                v94 = v17;
                v96 = v16;
                v98 = result;
                v100 = v15;
                v102 = v13;
                v104 = v8;
                v106 = a2;
                v108 = v4;
                uselect_splitGID(v2, *v55, v115, &v114);
                v4 = v108;
                v56 = *(v108 + 16);
                v57 = *(v56 + 6);
                if (v57 == 3)
                {
                  v58 = 0;
                }

                else if (v57 == 1)
                {
                  v58 = *(v56 + 7);
                }

                else
                {
                  v58 = -*(v56 + 7);
                }

                a2 = v106;
                v8 = v104;
                v13 = v102;
                result = v98;
                v15 = v100;
                v17 = v94;
                v16 = v96;
                v20 = v90;
                v18 = v92;
                v22 = v86;
                v21 = v88;
                v69 = *(*(v7 + 2968) + v11 + 24) & (*(*(v115[0] + 160) + v114 * *(v115[0] + 168) + *(*(v7 + 2968) + v11 + 11)) >> *(*(v7 + 2968) + v11 + 12));
                v70 = *(v2 + 924);
                v71 = v70 - v69;
                v62 = v69 >= v70;
                v72 = v69 - v70;
                if (v72 == 0 || !v62)
                {
                  LOBYTE(v72) = v71;
                }

                v73 = v58 * v72 / 100 + v69;
                if (v73 >= 255)
                {
                  v73 = 255;
                }

                v14[v12] = v73 & ~(v73 >> 31);
                *v6 = *(v2 + 230);
              }
            }
          }

          *v6 *= 10;
          if (*(v7 + 2740) == 1)
          {
            v74 = v2[95];
            if (v5[1] == 114)
            {
              v75 = v74 + 864 * v10;
              *(v4 + 156) = *(v75 + 47) * *(v75 + 47);
              v76 = *(v75 + 47);
              goto LABEL_144;
            }
          }

          else
          {
            v74 = v2[95];
          }

          v77 = v74 + 864 * v10;
          *(v4 + 156) = *(v77 + 25) * *(v77 + 25);
          v76 = *(v77 + 25);
LABEL_144:
          *(v4 + 152) = v76;
LABEL_82:
          v48 = !*v6 && (*(*(v7 + 2968) + v11) != 5 || !*(v2[5] + 2680) || !*(v2[111] + 4));
          *(v6 + 16) = v48;
          ++v12;
          v6 += 24;
          v25 += 4;
          v11 += 32;
          if (v12 >= *(v7 + 2966))
          {
            break;
          }

          continue;
        case 7:
          v28 = *(v26 + 864 * v10 + 13);
          goto LABEL_81;
        case 8:
          v28 = *(v26 + 864 * v10 + 14);
          goto LABEL_81;
        case 9:
          v28 = *(v26 + 864 * v10 + 15);
          goto LABEL_81;
        case 0xA:
          v28 = *(v26 + 864 * v10 + 16);
          goto LABEL_81;
        case 0xB:
          v28 = *(v26 + 864 * v10 + 17);
          goto LABEL_81;
        case 0xC:
        case 0x13:
          v28 = *(v26 + 864 * v10 + 18);
          goto LABEL_81;
        case 0xD:
        case 0x14:
          v28 = *(v26 + 864 * v10 + 21);
          goto LABEL_81;
        case 0xE:
          v28 = *(v26 + 864 * v10 + 26);
          goto LABEL_81;
        case 0xF:
          v28 = *(v26 + 864 * v10 + 27);
          goto LABEL_81;
        case 0x10:
          v28 = *(v26 + 864 * v10 + 28);
          goto LABEL_81;
        case 0x11:
          v14[v12] = 0;
          goto LABEL_82;
        case 0x12:
          v28 = *(v26 + 864 * v10 + 29);
          goto LABEL_81;
        case 0x1A:
          if (a2 < 2)
          {
            goto LABEL_60;
          }

          v29 = (v26 + 864 * v8 - 862);
          goto LABEL_59;
        case 0x1B:
          if (*(v2 + 384) <= v13)
          {
            goto LABEL_60;
          }

          v28 = *(v26 + 864 * v10 + 866);
          goto LABEL_81;
        case 0x1C:
          if (a2 < 4)
          {
            goto LABEL_60;
          }

          v29 = (v26 + 864 * v8 - 1726);
LABEL_59:
          v28 = *v29;
          goto LABEL_81;
        case 0x1D:
          if (*(v2 + 384) <= v15)
          {
LABEL_60:
            v28 = 35;
          }

          else
          {
            v28 = *(v26 + 864 * v10 + 1730);
          }

          goto LABEL_81;
        case 0x1E:
          v28 = *(v26 + 864 * v10 + 30);
          goto LABEL_81;
        case 0x1F:
          v28 = *(v26 + 864 * v10 + 31);
          goto LABEL_81;
        case 0x20:
          v28 = *(v26 + 864 * v10 + 32);
          goto LABEL_81;
        case 0x21:
          v28 = *(v26 + 864 * v10 + 33);
          goto LABEL_81;
        case 0x22:
          v28 = *(v26 + 864 * v10 + 34);
          goto LABEL_81;
        case 0x23:
          v28 = *(v26 + 864 * v10 + 35);
          goto LABEL_81;
        case 0x24:
          v28 = *(v26 + 864 * v10 + 36);
          goto LABEL_81;
        case 0x25:
          v28 = *(v26 + 864 * v10 + 37);
          goto LABEL_81;
        case 0x26:
          v28 = *(v26 + 864 * v10 + 38);
          goto LABEL_81;
        case 0x27:
          v28 = *(v26 + 864 * v10 + 39);
          goto LABEL_81;
        case 0x28:
          v28 = *(v26 + 864 * v10 + 40);
          goto LABEL_81;
        case 0x29:
          v28 = *(v26 + 864 * v10 + 41);
          goto LABEL_81;
        case 0x2B:
          v28 = *(v26 + 864 * v10 + 42);
          goto LABEL_81;
        case 0x2C:
          v28 = *(v26 + 864 * v10 + 43);
          goto LABEL_81;
        case 0x45:
          v28 = *(v26 + 864 * v10 + 48);
          goto LABEL_81;
        case 0x46:
          v28 = *(v26 + 864 * v10 + 49);
LABEL_81:
          v14[v12] = v28;
          goto LABEL_82;
        default:
          goto LABEL_82;
      }

      break;
    }
  }

  if (*(v7 + 2560))
  {
    v78 = v2[95] + 864 * v10;
    v79 = *(v78 + 68);
    *(v4 + 29) = *(v78 + 60);
    result = (v4 + 29);
    *(v4 + 37) = v79;
    v80 = *(v7 + 2144 + *(v4 + 36));
    *(v4 + 36) = v80;
    v81 = *(v7 + 2144 + v79);
    *(v4 + 37) = v81;
    v82 = *(v7 + 2144 + *(v4 + 34));
    *(v4 + 34) = v82;
    v83 = *(v7 + 2144 + *(v4 + 35));
    *(v4 + 35) = v83;
    if (v80 == 255 || v81 == 255 || v82 == 255 || v83 == 255)
    {
      v84 = v4;
      result = cstdlib_memset(result, 0, 9uLL);
      v4 = v84;
    }

    if (*(v2[95] + 864 * v10 + 20))
    {
      if (v5[1] == 108)
      {
        *(v4 + 40) = 100000;
      }
    }
  }

  return result;
}

uint64_t smooth_f0(uint64_t a1, _WORD *a2, unsigned int a3, unsigned int a4)
{
  v4 = a4;
  v8 = a3 + 1;
  v9 = 0x200000 / a4;
  v10 = 2229280778;
  v11 = heap_Calloc(*(a1 + 8), (3 * v8), 4);
  if (v11)
  {
    v12 = v11;
    v13 = heap_Calloc(*(a1 + 8), v8, 4);
    v14 = *(a1 + 8);
    if (!v13)
    {
      v65 = v12;
LABEL_71:
      heap_Free(v14, v65);
      return v10;
    }

    v15 = heap_Calloc(v14, v8, 2);
    if (!v15)
    {
LABEL_70:
      heap_Free(*(a1 + 8), v12);
      v14 = *(a1 + 8);
      v65 = v13;
      goto LABEL_71;
    }

    v68 = a2;
    v16 = v15;
    v17 = heap_Calloc(*(a1 + 8), v8, 4);
    v18 = *(a1 + 8);
    v70 = v17;
    if (!v17)
    {
      v66 = v16;
LABEL_69:
      heap_Free(v18, v66);
      goto LABEL_70;
    }

    v69 = heap_Calloc(v18, v8, 1);
    if (v69)
    {
      v19 = heap_Calloc(*(a1 + 8), v8, 1);
      v20 = v19;
      if (v19)
      {
        v21 = v16;
        *v16 = *v68;
        if (a3 >= 2)
        {
          v22 = v16 + 1;
          v23 = v68 + 2;
          v24 = a3 - 1;
          do
          {
            v25 = *v23;
            v26 = *(v23 - 1);
            v23 += 2;
            v27 = (v26 + v25) >> 1;
            if (!v26)
            {
              LOWORD(v27) = v25;
            }

            if (v25)
            {
              v28 = v27;
            }

            else
            {
              v28 = v26;
            }

            *v22++ = v28;
            --v24;
          }

          while (v24);
        }

        v16[a3] = v68[2 * a3 - 1];
        v29 = v70;
        if (a3 <= 0x7FFFFFFE)
        {
          v30 = v8;
          v31 = v21;
          v32 = v69;
          do
          {
            v33 = *v31++;
            *v32++ = v33 != 0;
            --v30;
          }

          while (v30);
        }

        if (a3 >= 1)
        {
          v34 = v68 + 1;
          v35 = a3;
          v36 = v19;
          v37 = v70;
          do
          {
            v38 = *(v34 - 1);
            if (*(v34 - 1))
            {
              v38 = *v34 - v38;
              if (*v34)
              {
                v39 = v4;
              }

              else
              {
                v38 = 0;
                v39 = 0;
              }
            }

            else
            {
              v39 = 0;
            }

            *v37++ = v38;
            *v36++ = v39;
            v34 += 2;
            --v35;
          }

          while (v35);
        }

        v40 = v69;
        if (a3 <= 0x7FFFFFFE)
        {
          v41 = 0;
          v42 = (v12 + 8);
          v43 = v70;
          do
          {
            v42[-1].i32[0] = 0;
            v42[-1].i32[1] = *(v69 + v41);
            v42->i32[0] = 0;
            *(v13 + 4 * v41) = *(v21 + 2 * v41) * *(v69 + v41);
            if (v41)
            {
              v44 = v42[-1].i32[1];
              v42[-1].i32[0] -= *(v19 + v41 - 1);
              v42[-1].i32[1] = v44 + *(v19 + v41 - 1);
              *(v13 + 4 * v41) += *(v43 - 1) * *(v19 + v41 - 1);
            }

            if (v41 < a3)
            {
              v45 = v42->i32[0];
              v42[-1].i32[1] += *(v19 + v41);
              v42->i32[0] = v45 - *(v19 + v41);
              *(v13 + 4 * v41) -= *v43 * *(v19 + v41);
            }

            v42[-1] = vshl_n_s32(v42[-1], 9uLL);
            v42->i32[0] <<= 9;
            v42 = (v42 + 12);
            *(v13 + 4 * v41++) <<= 9;
            ++v43;
          }

          while (v8 != v41);
        }

        if (a3 >= 1)
        {
          v46 = 0;
          do
          {
            v47 = v12 + 12 * v46;
            v48 = *(v47 + 4);
            if (v48)
            {
              v49 = *(v13 + 4 * v46);
              if (v49 <= v9)
              {
                v50 = *(v47 + 8);
              }

              else
              {
                do
                {
                  *(v13 + 4 * v46) = v49 >> 1;
                  v48 = *(v47 + 4) / 2;
                  v50 = *(v47 + 8) / 2;
                  *(v47 + 4) = v48;
                  *(v47 + 8) = v50;
                  v49 = *(v13 + 4 * v46);
                }

                while (v49 > v9);
              }

              v51 = (v12 + 12 * (v46 + 1));
              v52 = *v51;
              v51[1] -= (*v51 * v50 + v48 / 2) / v48;
              *(v13 + 4 * (v46 + 1)) -= (*(v13 + 4 * v46) * v52 + v48 / 2) / v48;
              ++v46;
            }

            else
            {
              ++v46;
            }
          }

          while (v46 != a3);
        }

        v53 = *(v12 + 12 * a3 + 4);
        if (v53)
        {
          v53 = (*(v13 + 4 * a3) + v53 / 2) / v53;
        }

        v68[2 * v8 - 3] = v53;
        v54 = a3 - 1;
        if ((a3 - 1) >= 0)
        {
          v55 = &v68[2 * a3];
          v56 = &v68[2 * v54];
          v57 = (v12 + 12 * v54 + 8);
          v58 = a3;
          v59 = a3 - 1;
          do
          {
            v60 = *(v57 - 1);
            if (v60)
            {
              if (v58 >= a3)
              {
                v61 = &v68[2 * v8 - 3];
              }

              else
              {
                v61 = v55;
              }

              v60 = (*(v13 + 4 * v59) + v60 / 2 - *v57 * *v61) / v60;
            }

            if (v59 >= a3)
            {
              v62 = &v68[2 * v8 - 3];
            }

            else
            {
              v62 = v56;
            }

            *v62 = v60;
            v55 -= 2;
            --v58;
            v56 -= 2;
            v57 -= 3;
          }

          while (v59-- > 0);
          if (a3 >= 2)
          {
            v64 = v68 + 2;
            do
            {
              *(v64 - 1) = *v64;
              v64 += 2;
              --v54;
            }

            while (v54);
          }
        }

        v10 = 0;
        goto LABEL_65;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v16;
    v40 = v69;
    v29 = v70;
LABEL_65:
    heap_Free(*(a1 + 8), v21);
    heap_Free(*(a1 + 8), v29);
    if (v40)
    {
      heap_Free(*(a1 + 8), v40);
    }

    if (!v20)
    {
      goto LABEL_70;
    }

    v18 = *(a1 + 8);
    v66 = v20;
    goto LABEL_69;
  }

  return v10;
}

uint64_t uselect_CountPhonemes(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    v5 = a3;
    while (1)
    {
      v7 = *a2++;
      v6 = v7;
      if (v7 == 91)
      {
        goto LABEL_9;
      }

      if (v6 == 92)
      {
        v3 = !v3;
      }

      else
      {
        if (v6 != 93)
        {
          if (!v3)
          {
            if (*(*(a1 + 40) + v6 + 2144) != 255)
            {
              ++v4;
            }

            goto LABEL_10;
          }

LABEL_9:
          v3 = 1;
          goto LABEL_10;
        }

        v3 = 0;
      }

LABEL_10:
      if (!--v5)
      {
        goto LABEL_16;
      }
    }
  }

  v4 = 0;
LABEL_16:
  v8 = v4;
  if (v4 <= 2)
  {
    v8 = 2;
  }

  if (a3 > 1)
  {
    return v8;
  }

  return v4;
}

uint64_t US_comp(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

uint64_t uselect_ResetUnitSelector(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 908);
    if ((v3 * a2) > *(a1 + 784))
    {
      v4 = (v3 * ((a2 & 0xFFC0) + 64));
      v5 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 792), 4 * v4);
      if (!v5 || (*(a1 + 792) = v5, (v6 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 800), v4)) == 0) || (*(a1 + 800) = v6, (v7 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 808), 2 * v4)) == 0))
      {
        v8 = 2229280778;
        log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
        return v8;
      }

      *(a1 + 808) = v7;
      *(a1 + 784) = v4;
      cstdlib_memset(*(a1 + 792), -1, 4 * v4);
      cstdlib_memset(*(a1 + 800), -1, v4);
    }

    return 0;
  }

  else
  {
    v9 = *(a1 + 792);
    if (v9)
    {
      heap_Free(*(*(a1 + 16) + 8), v9);
      *(a1 + 792) = 0;
      *(a1 + 784) = 0;
    }

    v10 = *(a1 + 800);
    if (v10)
    {
      heap_Free(*(*(a1 + 16) + 8), v10);
      *(a1 + 800) = 0;
    }

    v11 = *(a1 + 808);
    if (v11)
    {
      heap_Free(*(*(a1 + 16) + 8), v11);
      *(a1 + 808) = 0;
    }

    v8 = 0;
    *(a1 + 784) = 0;
  }

  return v8;
}

uint64_t uselect_ProcessUnitSelector(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 2684))
  {
    v3 = *(v2 + 2688) != 0;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = *(a1 + 746);
  if (*(a1 + 746))
  {
    v6 = *(a1 + 768);
  }

  else
  {
    v7 = *(a1 + 816);
    *(a1 + 824) = v7;
    v8 = *(a1 + 908);
    v9 = v7 + 112 * v8;
    *(a1 + 832) = v9;
    *(a1 + 840) = v9 + 112 * v8;
    *(a1 + 848) = 0;
    *(a1 + 850) = 0;
    if (v8)
    {
      v10 = v7 + 32;
      v11 = v8;
      do
      {
        *v10 = -1;
        *(v10 + 26) = -1;
        v10 += 112;
        --v11;
      }

      while (v11);
      v12 = v7 + 112 * v8 + 32;
      v13 = v8;
      do
      {
        *v12 = -1;
        *(v12 + 26) = -1;
        v12 += 112;
        --v13;
      }

      while (v13);
      v14 = v7 + 224 * v8 + 32;
      do
      {
        *v14 = -1;
        *(v14 + 26) = -1;
        v14 += 112;
        --v8;
      }

      while (v8);
    }

    v6 = *(a1 + 768);
    if (v6 >= 1)
    {
      v15 = 0;
      v16 = *(*(a1 + 776) + 3528);
      do
      {
        *(v16 + 4 * v15++) = -1;
        v6 = *(a1 + 768);
      }

      while (2 * v6 > v15);
    }
  }

  if (v5)
  {
    LOWORD(v5) = 2 * v5 + 4;
  }

  else
  {
    LOWORD(v5) = 0;
  }

  v17 = 2 * v6;
  v18 = 2 * v6 - 1;
  if (v17 > (2 * *(a1 + 748) + 3))
  {
    v18 = 2 * *(a1 + 748) + 3;
  }

  v19 = v18;
  if (v5 <= v18)
  {
    v87 = v2 + 2144;
    v88 = v2;
    while (1)
    {
      v22 = v5;
      v23 = v22 - 1;
      if (v22 > 1)
      {
        break;
      }

      result = uselect_SelectNextCandidate(a1, v4, 0, v5);
      if (result)
      {
        return result;
      }

      LODWORD(v25) = *(a1 + 908);
      v26 = *(a1 + 850);
      if (*(a1 + 850))
      {
        v27 = 0;
        v28 = v25 * v22;
        v29 = *(a1 + 808) + 2 * v28;
        v30 = *(a1 + 840);
        v31 = *(a1 + 64);
        v32 = *(a1 + 792) + 4 * v28;
        do
        {
          v33 = v30 + 112 * v27;
          v34 = *(a1 + 48) - 1;
          while (v34)
          {
            v35 = v34;
            v36 = *(*(a1 + 56) + 8 * v34--);
            if (v36 == *(v33 + 40))
            {
              v37 = v35;
              goto LABEL_33;
            }
          }

          v37 = 0;
LABEL_33:
          *(v32 + 4 * v27) = *(v31 + 4 * v37) + *(v33 + 32);
          *(v29 + 2 * v27) = *(v33 + 59);
          if (!v22)
          {
            *v33 = 0;
          }

          ++v27;
        }

        while (v27 != v26);
      }

LABEL_69:
      v21 = *(a1 + 849);
      *(a1 + 848) = v21;
      *(a1 + 849) = *(a1 + 850);
      *(a1 + 850) = 0;
      v61 = *(a1 + 824);
      v62 = *(a1 + 832);
      *(a1 + 824) = v62;
      *(a1 + 840) = v61;
      if (v25)
      {
        v25 = v25;
        v63 = v61 + 32;
        do
        {
          *v63 = -1;
          *(v63 + 26) = -1;
          v63 += 112;
          --v25;
        }

        while (v25);
      }

      v5 = (v22 + 1);
      if (v5 > v19)
      {
        v20 = v62;
        goto LABEL_74;
      }
    }

    if (!v3)
    {
      goto LABEL_44;
    }

    v38 = *(a1 + 40);
    if (*(v38 + 2732) == 1)
    {
      if (v22)
      {
LABEL_44:
        v39 = 0;
LABEL_45:
        result = uselect_SelectNextCandidate(a1, v4, v39, v22);
        if (result)
        {
          return result;
        }

        v40 = (v22 & 1) != 0 || v22 == 2;
        if (!v40 && v3)
        {
          v42 = *(a1 + 40);
          if (*(v42 + 2732) == 1 || *(v42 + *(v87 + *(*(a1 + 760) + 864 * (v22 >> 1) - 862)) + 1887) != 83)
          {
            result = uselect_SelectNextCandidate(a1, v4, 1, v23);
            if (result)
            {
              return result;
            }
          }
        }

        uselect_SelectBestPredecessor(a1);
        if (*(v88 + 2668) == 1)
        {
          ssft_qsort(*(a1 + 832), *(a1 + 849), 112, US_comp);
        }

        v43 = *(a1 + 849);
        LODWORD(v25) = *(a1 + 908);
        if (*(a1 + 849))
        {
          v44 = 0;
          v45 = *(a1 + 832);
          v46 = *(a1 + 64);
          v47 = *(a1 + 792) + 4 * (v23 * v25);
          do
          {
            v48 = v45 + 112 * v44;
            v49 = *(v48 + 40);
            v50 = *(v48 + 32);
            v51 = *(a1 + 48) - 1;
            while (v51)
            {
              v52 = v51;
              v53 = *(*(a1 + 56) + 8 * v51--);
              if (v53 == v49)
              {
                v54 = v52;
                goto LABEL_65;
              }
            }

            v54 = 0;
LABEL_65:
            *(v47 + 4 * v44++) = *(v46 + 4 * v54) + v50;
          }

          while (v44 != v43);
          v55 = 0;
          v56 = 0;
          v57 = *(a1 + 832);
          v58 = (v23 * v25);
          v59 = *(a1 + 800) + v58;
          v60 = *(a1 + 808) + 2 * v58 + 1;
          do
          {
            *(v59 + v56) = *(v57 + v55 + 108);
            v57 = *(a1 + 832);
            *(v60 - 1) = *(v57 + v55 + 59);
            ++v56;
            v60 += 2;
            v55 += 112;
          }

          while (v56 < *(a1 + 849));
          LODWORD(v25) = *(a1 + 908);
        }

        goto LABEL_69;
      }
    }

    else if ((v22 & 1) != 0 || *(v38 + *(v87 + *(*(a1 + 760) + 864 * (v22 >> 1) + 2)) + 1887) == 83)
    {
      goto LABEL_44;
    }

    v39 = 2;
    goto LABEL_45;
  }

  v20 = *(a1 + 824);
  v21 = *(a1 + 848);
LABEL_74:
  if (v21 < 2)
  {
    v64 = 0;
  }

  else
  {
    v64 = 0;
    v67 = *v20;
    v65 = v20 + 28;
    v66 = v67;
    for (i = 1; i < v21; ++i)
    {
      v70 = *v65;
      v65 += 28;
      v69 = v70;
      if (v70 < v66)
      {
        v66 = v69;
        v64 = i;
      }
    }
  }

  v71 = v19 - 1;
  v72 = (v19 - 1);
  if (v72 <= 2 * *(a1 + 746))
  {
    v75 = *(a1 + 792);
    v74 = *(a1 + 908);
    v83 = *(a1 + 776);
    v77 = *(v83 + 3528);
    v73 = *(a1 + 808);
    v78 = *(v83 + 3536);
  }

  else
  {
    v73 = *(a1 + 808);
    v74 = *(a1 + 908);
    v75 = *(a1 + 792);
    v76 = *(a1 + 776);
    v77 = *(v76 + 3528);
    v78 = *(v76 + 3536);
    v79 = *(a1 + 800);
    do
    {
      v80 = v74 * v72;
      v81 = v64;
      *(v77 + 4 * v71) = *(v75 + 4 * v80 + 4 * v64);
      v82 = (v73 + 2 * v80 + 2 * v64);
      *(v78 + 4 * v72) = *v82;
      *(v78 + 4 * v72 + 2) = v82[1];
      v64 = *(v79 + v80 + v81);
      v72 = --v71;
    }

    while (v71 > 2 * *(a1 + 746));
  }

  v84 = v72 * v74;
  *(v77 + 4 * v71) = *(v75 + 4 * v84 + 4 * v64);
  v85 = (v73 + 2 * v84 + 2 * v64);
  v86 = (v78 + 4 * v72);
  *v86 = *v85;
  v86[1] = v85[1];
  result = 0;
  if (v19 + 1 == (*(a1 + 768) << 16) >> 15)
  {
    *(v77 + 4 * v19) = *(*(a1 + 832) + 32);
  }

  return result;
}

uint64_t uselect_SelectNextCandidate(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = *(a1 + 776);
  if (*(a1 + 916))
  {
    v9 = *(v8 + 3640);
    v10 = v9 + 504 * a4;
    if (!v9)
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 888);
  *(v11 + 8) = v10;
  v12 = *(v8 + 3648);
  if (!v12 || (v13 = v12 + 8 * a4, !*(v13 + 4)) && !*(v13 + 6))
  {
    v13 = 0;
  }

  *(v11 + 16) = v13;
  uselect_ExtractFeatFromMsg(a1, a4);
  v14 = *(a1 + 760);
  v15 = (v14 + 864 * ((v4 + ((v4 & 0x8000) >> 15)) << 16 >> 17) + 8);
  if ((v4 & 1) == 0)
  {
    v15 = (v14 + 864 * (v4 >> 1) + 4);
  }

  v16 = *v15;
  v17 = *(a1 + 888);
  *(v17 + 24) = v16;
  if (v16 <= 0)
  {
    v20 = *(*(a1 + 776) + 3632);
    if (v20)
    {
      v21 = *(v20 + 4 * v4);
      if (v21 != -1)
      {
        *(v17 + 24) = v21;
      }
    }
  }

  if (*(*(a1 + 40) + 2532))
  {
    v18 = (v4 + ((v4 & 0x8000) >> 15)) << 16 >> 17;
    if ((v4 + 1) >= 3)
    {
      v19 = *(v14 + 864 * v18 - 862);
    }

    else
    {
      v19 = 0;
    }

    *(v17 + 44) = v19;
    if (*(a1 + 768) - 1 == v18)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v14 + 864 * v18 + 866);
    }

    *(v17 + 45) = v23;
    v22 = *(a1 + 856);
    if (*v22 == 35)
    {
      if (v22[1] == 114)
      {
        *(v17 + 44) = 35;
      }

      else
      {
        *(v17 + 45) = 35;
      }
    }
  }

  else
  {
    v22 = *(a1 + 856);
  }

  *(v17 + 28) = 0;
  if (v22[1] == 108)
  {
    if (v4 < 2)
    {
      goto LABEL_34;
    }

    v24 = (v14 + 864 * (v4 >> 1) - 862);
  }

  else
  {
    v25 = ((v4 + ((v4 & 0x8000) >> 15)) >> 1) + 1;
    if (*(a1 + 768) <= v25)
    {
      goto LABEL_34;
    }

    v24 = (v14 + 864 * v25 + 2);
  }

  *(v17 + 28) = *v24;
LABEL_34:
  if (a2)
  {
    v26 = (v4 + ((v4 & 0x8000) >> 15)) >> 1;
    if (v22[1] == 108)
    {
      v27 = *(v14 + 864 * v26 + 776);
    }

    else
    {
      v27 = *(v14 + 864 * v26 + 777);
    }

    v28 = uselect_CascadingFlatSearch(a1, v27, v5);
  }

  else
  {
    v28 = uselect_FlatSearch(a1);
  }

  *(a1 + 872) = v28;
  uselect_CopyResultsToDpNode(a1, v5, v4);
  if (v5 == 1 || *(a1 + 850))
  {
    return 0;
  }

  log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19009, "%s%d", "phoneme", **(a1 + 856));
  return 2229280796;
}

uint64_t uselect_createGID(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v4 = *(a1 + 48) - 1;
  while (v4)
  {
    LODWORD(v5) = v4;
    v6 = *(*(a1 + 56) + 8 * v4--);
    if (v6 == a2)
    {
      v5 = v5;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  *a4 = *(*(a1 + 64) + 4 * v5) + a3;
  return 0;
}

uint64_t uselect_SelectBestPredecessor(uint64_t result)
{
  v1 = result;
  v2 = *(result + 824);
  v3 = *(v2 + 76);
  v4 = **(v2 + 40);
  if (v3 == *(v4 + 2179) || *(*(result + 832) + 76) == *(**(*(result + 832) + 40) + 2179))
  {
    if (!*(v4 + 2588) || (v5 = *(result + 832), !*(**(v5 + 40) + 2588)))
    {
      v6 = 1;
      goto LABEL_8;
    }

    if (!*(v2 + 86))
    {
      v6 = *(v5 + 87) == 0;
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  v7 = *(result + 849);
  v9 = *(*(result + 40) + 2616) == 1 && *(v4 + v3 + 1630) == 83 && (v8 = *(result + 832), *(**(v8 + 40) + *(v8 + 76) + 1630) == 83) && *(v8 + 77) == 114;
  v10 = *(result + 832);
  if (*(v4 + 2696))
  {
    v11 = v4 == **(v10 + 40);
    if (!*(result + 849))
    {
      return result;
    }
  }

  else
  {
    v11 = 0;
    if (!*(result + 849))
    {
      return result;
    }
  }

  v21 = *(result + 40);
  v12 = 1;
  do
  {
    result = uselect_CalculateCost(v1, v10, v6, v9, v11);
    *(v10 + 4) = result;
    if (result < 0xEE6B2800)
    {
      v12 = 0;
    }

    v10 += 112;
    v13 = *(v1 + 832);
  }

  while (v10 < v13 + 112 * v7);
  if (v12 && v11)
  {
    do
    {
      result = uselect_CalculateCost(v1, v13, v6, v9, 0);
      *(v13 + 4) = result;
      v13 += 112;
    }

    while (v13 < *(v1 + 832) + 112 * v7);
    v13 = *(v1 + 832);
  }

  v14 = v13 + 112 * v7;
  v15 = *(v1 + 824);
  do
  {
    *v13 += *(v13 + 4);
    v16 = *(v13 + 108);
    v17 = **(v15 + 112 * *(v13 + 108) + 40);
    if ((v17[848] & 0x80000000) == 0 || (v17[849] & 0x80000000) == 0)
    {
      v18 = **(v13 + 40);
      if (((*(v18 + 3392) & 0x80000000) == 0 || (*(v18 + 3396) & 0x80000000) == 0) && *(v13 + 85) == 255)
      {
        *(v13 + 85) = *(v15 + 112 * *(v13 + 108) + 85);
      }
    }

    v19 = v15 + 112 * v16;
    if ((v17[846] & 0x80000000) == 0 && !v17[648])
    {
      v20 = **(v13 + 40);
      if ((*(v20 + 3384) & 0x80000000) == 0 && !*(v20 + 2592) && !*(v13 + 88))
      {
        *(v13 + 88) = *(v19 + 88);
        *(v13 + 89) = *(v15 + 112 * v16 + 89) + 1;
      }
    }

    if (*(v21 + 2560) && (*(v19 + 61) != 1 || *(v19 + 77) != 114) && (v17 != **(v13 + 40) || *(v19 + 8) != *(v13 + 32) || !*(v19 + 104)))
    {
      *(v13 + 104) = 0;
    }

    v13 += 112;
  }

  while (v13 < v14);
  return result;
}

uint64_t uselect_CopyResultsToDpNode(uint64_t result, int a2, int a3)
{
  v3 = a3;
  v4 = result;
  if (a3)
  {
    v5 = 114;
  }

  else
  {
    v5 = 108;
  }

  if (a2 != 1)
  {
    v6 = *(result + 840);
    v8 = *(result + 872);
    *(result + 850) = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_8;
  }

  v6 = *(result + 832) + 112 * *(result + 849);
  v7 = *(result + 872);
  *(result + 849) += v7;
  if (v7)
  {
LABEL_8:
    v9 = (a3 + ((a3 & 0x8000) >> 15)) << 16 >> 17;
    v10 = *(result + 880);
    v55 = ((a3 + ((a3 & 0x8000) >> 15)) >> 1) - 1;
    result = 112;
    v11 = v6;
    v54 = v5;
    while (1)
    {
      v12 = *(v10 + 1);
      *(v11 + 40) = v12;
      v13 = *v10;
      *(v11 + 32) = v13;
      *v11 = v10[4];
      *(v11 + 58) = *(v10 + 20);
      if (*(*(v4 + 40) + 2560))
      {
        *(v11 + 96) = vrev64_s32(*(v10 + 7));
        *(v11 + 104) = 1;
      }

      v14 = *v12;
      v15 = *(*v12 + *(*(v4 + 760) + 864 * v9 + 2) + 2144);
      v16 = *(*v12 + v15 + 859) == 118;
      *(v11 + 76) = v15;
      *(v11 + 77) = v5;
      *(v11 + 80) = v16;
      if (v14[658] <= 0x63u)
      {
        *(v11 + 16) = 0;
        v17 = *(v12 + 152);
        if (v17)
        {
          v18 = v13 >> 3;
          if ((v13 & 7) != 0)
          {
            ++v18;
          }

          if ((*(v17 + v18) >> (v13 & 7 ^ 7)))
          {
            v19 = *(v12 + 144);
            if (v19)
            {
              v20 = 0;
              v21 = *(v12 + 136);
              while (1)
              {
                v22 = v20;
                v23 = *(v21 + 4 * v20);
                if (v23 == v13)
                {
                  break;
                }

                if (v23 <= v13)
                {
                  v20 = v22 + *(v21 + 4 * (v22 + 1)) + 2;
                  if (v20 < v19)
                  {
                    continue;
                  }
                }

                goto LABEL_23;
              }

              *(v11 + 16) = v21 + 4 * v22 + 4;
            }
          }
        }
      }

LABEL_23:
      v24 = v14[651];
      if (v24 != 2)
      {
        break;
      }

      v30 = v14[661];
      if (v14[664])
      {
        v31 = (*(v12 + 192) + v13 * *(v12 + 200));
        cstdlib_memcpy((v11 + 8), v31, 4uLL);
        v26 = v31[4];
        *(v11 + 59) = v26;
        v27 = v31[5];
        *(v11 + 60) = v27;
        *(v11 + 74) = v31[6];
        *(v11 + 75) = v31[7];
        *(v11 + 91) = v31[8];
        if (v30)
        {
          *(v11 + 92) = v31[9];
        }

        v5 = v54;
        result = 112;
        goto LABEL_35;
      }

      if (!v30)
      {
        goto LABEL_34;
      }

      v32 = *(v12 + 192) + v13 * *(v12 + 200);
      cstdlib_memcpy((v11 + 8), v32, 4uLL);
      result = 112;
      v5 = v54;
      v26 = *(v32 + 4);
      *(v11 + 59) = v26;
      v27 = *(v32 + 5);
      *(v11 + 60) = v27;
      *(v11 + 74) = *(v32 + 6);
      *(v11 + 92) = *(v32 + 8);
LABEL_35:
      v34 = *v12;
      if (*(*v12 + 2696))
      {
        v35 = *(v11 + 8);
        *(v11 + 87) = v35 < 0;
        *(v11 + 86) = (v35 & 0x40000000) != 0;
        v36 = v35 & 0x3FFFFFFF;
        if (v36 == 0x3FFFFFFF)
        {
          v36 = -1;
        }

        *(v11 + 8) = v36;
        v34 = *v12;
      }

      if ((v34[846] & 0x80000000) == 0)
      {
        *(v11 + 90) = v26;
        v37 = v34[648] == 0;
        v38 = v27 < 0x15u;
        v39 = !v37 || !v38;
        if (v37 && v38)
        {
          v40 = 0;
        }

        else
        {
          v40 = v27;
        }

        if (v39)
        {
          v41 = 0;
        }

        else
        {
          v41 = 100;
        }

        *(v11 + 88) = v40;
        *(v11 + 89) = v41;
      }

      if ((v34[848] & 0x80000000) == 0 || (v34[849] & 0x80000000) == 0)
      {
        v42 = *(v10 + 36);
        *(v11 + 84) = v42;
        v43 = *(v4 + 760);
        v44 = (v43 + 864 * v9);
        *(v11 + 50) = v44[26];
        *(v11 + 52) = v44[27];
        *(v11 + 54) = v44[28];
        *(v11 + 56) = v44[29];
        if (*(v34 + *(v11 + 76) + 1116) == 86)
        {
          v45 = v55;
          do
          {
            if (v45 < 0)
            {
              break;
            }

            v46 = v43 + 864 * (v45 & 0x7FFF);
            if (*(v46 + 19) == 1)
            {
              goto LABEL_55;
            }

            --v45;
          }

          while (*(v34 + *(v34 + *(v46 + 2) + 2144) + 1116) != 86);
        }

        v42 = -1;
LABEL_55:
        *(v11 + 85) = v42;
      }

      v47 = *(v34 + 1680);
      if (*(v34 + 1680))
      {
        v48 = 0;
        v49 = *(v4 + 760);
        v50 = *(v11 + 24);
        do
        {
          v51 = v49 + 864 * v9 + 4 * v48;
          v52 = (v51 + 712);
          v53 = (v51 + 744);
          if ((v3 & 1) == 0)
          {
            v53 = v52;
          }

          *(v50 + 4 * v48++) = *v53;
        }

        while (v47 > v48);
      }

      else
      {
        v49 = *(v4 + 760);
      }

      *(v11 + 61) = *(v49 + 864 * v9 + 19);
      v11 += 112;
      v10 = *(v10 + 6);
      if (v11 >= v6 + 112 * *(v4 + 872))
      {
        return result;
      }
    }

    if (v24 == 1)
    {
      v25 = *(v12 + 192) + v13 * *(v12 + 200);
      *(v11 + 8) = *v25;
      v26 = *(v25 + 16);
      *(v11 + 59) = v26;
      v27 = *(v25 + 17);
      *(v11 + 60) = v27;
      if (v14[647] == 1)
      {
        v28 = *(v25 + 18);
        *(v11 + 87) = v28 & 0xF;
        *(v11 + 86) = v28 >> 4;
      }

      v29 = *(v25 + 4);
      *(v11 + 70) = *(v25 + 12);
      *(v11 + 62) = v29;
      goto LABEL_35;
    }

LABEL_34:
    v33 = *(v12 + 192) + v13 * *(v12 + 200);
    *(v11 + 8) = *v33;
    v26 = *(v33 + 4);
    *(v11 + 59) = v26;
    v27 = *(v33 + 5);
    *(v11 + 60) = v27;
    *(v11 + 74) = *(v33 + 6);
    goto LABEL_35;
  }

  return result;
}

uint64_t uselect_splitGID(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4)
{
  v4 = *(a1 + 48);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v5 = v4 - 1;
  v6 = 1;
  while (v6 - v5 != 1)
  {
    v7 = *(*(a1 + 64) + 4 * v6++);
    if (v7 > a2)
    {
      v5 = v6 - 2;
      break;
    }
  }

  *a3 = *(*(a1 + 56) + 8 * v5);
  *a4 = a2 - *(*(a1 + 64) + 4 * v5);
  return 0;
}

uint64_t uselect_FlatSearch(uint64_t a1)
{
  v224[143] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 888);
  v3 = *(a1 + 856);
  v4 = *(a1 + 40);
  v5 = *(a1 + 908);
  v216 = 0u;
  memset(v217, 0, sizeof(v217));
  __b = 0u;
  v213 = -1;
  v214 = 0;
  *(a1 + 880) = 0;
  cstdlib_memset(&__b, 0, 0x38uLL);
  if (*(v4 + 2560))
  {
    v6 = v5 - 20;
  }

  else
  {
    v6 = v5;
  }

  v191 = v6;
  v7 = *v3;
  v8 = *(v4 + 2496);
  v197 = v3;
  v9 = v3[1];
  v10 = v9 == 114;
  v11 = **(a1 + 56);
  v218 = v11;
  if (*(v4 + 2532) != 1 || *(a1 + 912) != 1)
  {
    goto LABEL_32;
  }

  if (*(v4 + *(v4 + v7 + 2144) + 859) != 118)
  {
    goto LABEL_28;
  }

  v12 = *(v4 + 2536) == 1 && v197[*(*(v4 + 2992) + 25) + 3] == 1;
  if (*(v4 + 2540) == 1 && v197[*(*(v4 + 2992) + 25) + 3] == 2)
  {
    v12 = 1;
  }

  if (*(v4 + 2544) == 1 && v197[*(*(v4 + 2992) + 25) + 3] == 3)
  {
    v12 = 1;
  }

  if (*(v4 + 2548) == 1)
  {
    v13 = v197[*(*(v4 + 3000) + 25) + 3] != 1 && !v12;
    if (v13)
    {
      goto LABEL_28;
    }
  }

  else if (!v12)
  {
    goto LABEL_28;
  }

  if (v9 == 108)
  {
    *(v2 + 45) = 0;
  }

  else if (v9 == 114)
  {
    *(v2 + 44) = 0;
  }

LABEL_28:
  OffsetAndCountInCache3Table = uselect_GetOffsetAndCountInCache3Table(v4, v11, v197, *(v2 + 44), *(v2 + 45), &v214);
  if (!*(v4 + 2532) || (v15 = OffsetAndCountInCache3Table) == 0)
  {
    v11 = v218;
LABEL_32:
    v15 = 0;
    v16 = v10 | (2 * (v7 - v8));
    v194 = *(*(v11 + 128) + 4 * v16);
    v214 = *(*(v11 + 120) + 2 * v16);
    goto LABEL_33;
  }

  v194 = 0;
LABEL_33:
  v17 = v197;
  v200 = v15;
  if (*v197 == 35 || *(v2 + 24) != -1)
  {
    goto LABEL_35;
  }

  v119 = *(v4 + 2556);
  if (v119 == 3)
  {
    v165 = *(a1 + 888);
    v167 = *(v165 + 29);
    v166 = (v165 + 29);
    if (!v167)
    {
      goto LABEL_35;
    }

    v193 = v2;
    v168 = v214;
    v169 = v191 >> 1;
    if (!v214)
    {
      v171 = 0;
      v170 = 0;
LABEL_335:
      v201 = v170 > v191;
      v186 = v171 > v169;
LABEL_336:
      v187 = v186;
      v189 = v187;
      v2 = v193;
      v17 = v197;
      v15 = v200;
LABEL_36:
      if (!v214)
      {
        goto LABEL_250;
      }

      v18 = 0;
      v199 = 0;
      v19 = 0;
      v203 = 0;
      v20 = 0;
      v21 = 0;
      v22 = v17 + 3;
      v190 = v4 + 2144;
      v188 = v4 + 3584;
      v195 = -1;
      v196 = -1;
      v198 = v4;
      v202 = v17 + 3;
      v192 = v2;
      while (1)
      {
        v23 = *(v2 + 24);
        if (v23 == -1)
        {
          if (v15)
          {
            v25 = v15[v20];
          }

          else
          {
            v25 = v20 + v194;
          }

          v213 = v25;
          goto LABEL_53;
        }

        if (!v203)
        {
          v24 = v20;
          uselect_splitGID(a1, v23 & 0x7FFFFFFF, &v218, &v213);
          v25 = v213;
          v26 = v218;
          if (v213 < *(v218 + 108))
          {
            v27 = *(v2 + 24);
            if ((v27 & 0x80000000) == 0)
            {
              v20 = v214 - 1;
LABEL_89:
              v210 = v21;
              v31 = 0;
              v29 = *(v218 + 160) + v213 * *(v218 + 168);
              v30 = *(v4 + 3000);
              v203 = 1;
              goto LABEL_59;
            }

            v20 = v24;
            if (v27 != -1)
            {
              goto LABEL_89;
            }

            goto LABEL_52;
          }

          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19028, "%s%d", "ID", *(v2 + 24));
        }

        *(v2 + 24) = -1;
        v218 = **(a1 + 56);
        v20 = 0;
        if (v15)
        {
          v25 = *v15;
        }

        else
        {
          v25 = v194;
        }

        v213 = v25;
LABEL_52:
        v203 = 1;
LABEL_53:
        v28 = *(a1 + 936);
        v26 = v218;
        if (v28 && v218 == **(a1 + 56) && *(v28 + v25) == 255)
        {
          goto LABEL_180;
        }

        v29 = *(v218 + 160) + v25 * *(v218 + 168);
        v30 = *(v4 + 3000);
        if (v30)
        {
          if (*(v29 + v30[11]) == 255)
          {
            goto LABEL_180;
          }
        }

        v210 = v21;
        v31 = 1;
LABEL_59:
        v32 = *(v4 + 2968);
        v33 = *(a1 + 896);
        __s1 = v19;
        v204 = v20;
        if (!v201 || *v197 == 35)
        {
          goto LABEL_61;
        }

        if (!v31)
        {
          goto LABEL_93;
        }

        v40 = *(v4 + 2556);
        switch(v40)
        {
          case 3:
            if (v22[v30[25]] != (v30[24] & (*(v29 + v30[11]) >> v30[12])))
            {
              goto LABEL_207;
            }

            v30 = *(v4 + 3016);
            break;
          case 2:
            break;
          case 1:
            v34 = *(v4 + 2560);
            if (v34 == 1)
            {
              goto LABEL_64;
            }

            v41 = v197[1];
            if (v41 == 114)
            {
              v42 = *(v4 + 2984);
            }

            else
            {
              if (v41 != 108)
              {
                goto LABEL_207;
              }

              v42 = *(v4 + 2976);
            }

            v98 = v22[*(v42 + 25)];
            v99 = *(v29 + *(v42 + 11));
            goto LABEL_195;
          default:
            goto LABEL_61;
        }

        v98 = v22[v30[25]];
        v99 = v30[24] & (*(v29 + v30[11]) >> v30[12]);
LABEL_195:
        if (v98 != v99)
        {
          goto LABEL_207;
        }

LABEL_61:
        v34 = *(v4 + 2560);
        v35 = v31 ^ 1;
        if (!v34)
        {
          v35 = 1;
        }

        if (v35)
        {
          goto LABEL_93;
        }

LABEL_64:
        if (!*(v2 + 29))
        {
          goto LABEL_93;
        }

        if (v34 != 2)
        {
          if (v34 == 1)
          {
            v36 = (*(v26 + 176) + v25 * *(v26 + 184));
            if (*(v190 + v36[5]) == 255 || *(v190 + v36[6]) == 255 || *v197 == 35)
            {
              goto LABEL_70;
            }

            v100 = v29;
            if (cstdlib_memcmp((v2 + 29), v36, 5uLL))
            {
              v37 = 0;
              v29 = v100;
              v20 = v204;
            }

            else
            {
              v29 = v100;
              v20 = v204;
              if (*(v2 + 34) == *(v190 + v36[5]))
              {
                v101 = 0;
              }

              else
              {
                v102 = (v188 + 192 * *(v2 + 36));
                v104 = *v102;
                v103 = v102[1];
                v105 = *(v103 + *(v190 + v36[5]));
                v106 = *(v103 + *(v2 + 34));
                v107 = v102[2];
                if (v106 <= v105)
                {
                  v108 = *(v103 + *(v190 + v36[5]));
                }

                else
                {
                  v108 = *(v103 + *(v2 + 34));
                }

                if (v106 >= v105)
                {
                  v106 = v105;
                }

                v101 = *(v104 + 2 * *(v107 + 2 * v106) + 2 * v108);
              }

              v109 = *(v2 + 35);
              v110 = *(v190 + v36[6]);
              if (v109 != v110)
              {
                v111 = (v188 + 192 * *(v2 + 37));
                v112 = v111[15];
                v113 = v111[16];
                v114 = *(v113 + v109);
                v115 = v111[17];
                v116 = *(v113 + v110);
                if (v114 <= v116)
                {
                  v117 = v116;
                }

                else
                {
                  v117 = v114;
                }

                if (v114 >= v116)
                {
                  v114 = v116;
                }

                v101 += *(v112 + 2 * *(v115 + 2 * v114) + 2 * v117);
              }

              v118 = *(v2 + 40);
              v199 = v101;
              if (v101 >= v118 + 100)
              {
LABEL_70:
                v37 = 0;
              }

              else
              {
                if (v101 < v118)
                {
                  *(v2 + 40) = v101;
                }

                v37 = 1;
              }
            }

            if (*(v4 + 2556) == 1 && v201 && *v197 != 35)
            {
              v38 = v197[1];
              if (v38 == 114)
              {
                v39 = *(v4 + 2984);
              }

              else
              {
                if (v38 != 108)
                {
                  goto LABEL_206;
                }

                v39 = *(v4 + 2976);
              }

              if (v22[*(v39 + 25)] != *(v29 + *(v39 + 11)))
              {
LABEL_206:
                v15 = v200;
LABEL_207:
                v21 = v210;
                goto LABEL_180;
              }
            }

            v47 = 0;
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        if (*v197 != 35)
        {
          v43 = v29;
          v44 = v20;
          v45 = cstdlib_memcmp((v2 + 29), (*(v26 + 176) + v25 * *(v26 + 184)), 5uLL);
          v20 = v44;
          v29 = v43;
          if (!v45)
          {
            v47 = 0;
            v37 = 1;
            goto LABEL_94;
          }
        }

        if ((v189 & 1) == 0)
        {
          v46 = v197[1];
          if (v46 != 114)
          {
            if (v46 == 108 && v202[*(*(v4 + 3024) + 25)] == 1)
            {
              goto LABEL_93;
            }

LABEL_202:
            v37 = 0;
            v47 = *(v4 + 2640);
LABEL_94:
            v48 = v18;
            v49 = v2;
            if (v218 == **(a1 + 56))
            {
              v55 = v196 >= v195 ? v195 : v196;
              if (*v32)
              {
                v56 = v202;
                while (1)
                {
                  v57 = v29;
                  v47 += (*(v32 + 16))(a1, *v56, *(v29 + *(v32 + 11)), v32, v33);
                  if (!v37 && v47 >= v55)
                  {
                    break;
                  }

                  v58 = *(v32 + 32);
                  v32 += 32;
                  ++v56;
                  v33 += 24;
                  v29 = v57;
                  if (!v58)
                  {
                    goto LABEL_95;
                  }
                }

                v29 = v57;
                if (*v32)
                {
                  v2 = v49;
                  v4 = v198;
                  v15 = v200;
                  v18 = v48;
                  v19 = __s1;
                  v21 = v210;
                  goto LABEL_178;
                }
              }
            }

LABEL_95:
            v2 = v49;
            v50 = *(v49 + 8);
            if (v50)
            {
              v4 = v198;
              if (v218 == **(a1 + 56))
              {
                v51 = *v50;
                v18 = v48;
                v21 = v210;
                if (v51)
                {
                  v52 = (v50 + 1);
                  v53 = (v50 + 101);
                  while (1)
                  {
                    v54 = *v52++;
                    if (v54 == v213)
                    {
                      break;
                    }

                    ++v53;
                    if (!--v51)
                    {
                      goto LABEL_185;
                    }
                  }

                  LODWORD(v51) = *v53;
                }

LABEL_185:
                v47 += 100 * *(a1 + 916) * v51;
                if (!v37 && (v47 < v196 ? (v97 = v47 >= v195) : (v97 = 1), v97))
                {
                  v15 = v200;
                  v19 = __s1;
LABEL_178:
                  v22 = v202;
                }

                else
                {
LABEL_113:
                  if (!*(v4 + 2620))
                  {
                    goto LABEL_130;
                  }

                  v59 = *(a1 + 849);
                  if (!*(a1 + 849))
                  {
                    goto LABEL_128;
                  }

                  v60 = v21;
                  v61 = 0;
                  v62 = 0;
                  v63 = 0;
                  do
                  {
                    v64 = *(a1 + 832);
                    if (*(v64 + v61 + 8) == v213 && *(v64 + v61 + 40) == v218)
                    {
                      break;
                    }

                    if (*(v4 + 2636) <= 0x63u)
                    {
                      v65 = v64 + v61;
                      v66 = *(v65 + 16);
                      if (v66)
                      {
                        if (*(v65 + 40) == v218)
                        {
                          v67 = v29;
                          IsNextUnit = uselect_IsNextUnit(v66, v213);
                          v29 = v67;
                          if (IsNextUnit)
                          {
                            v63 = 1;
                          }

                          v59 = *(a1 + 849);
                        }
                      }
                    }

                    ++v62;
                    v61 += 112;
                  }

                  while (v62 < v59);
                  v18 = v48;
                  if (v59 == v62)
                  {
                    v21 = v60;
                    v2 = v192;
                    if (v63)
                    {
                      v47 += *(v4 + 2636) * *(v4 + 2620) / 0x64u;
                      goto LABEL_130;
                    }

LABEL_128:
                    v47 += *(v4 + 2620);
                  }

                  else
                  {
                    v21 = v60;
                    v2 = v192;
                  }

LABEL_130:
                  LODWORD(v216) = v47;
                  v69 = v213;
                  LODWORD(__b) = v213;
                  v70 = v218;
                  *(&__b + 1) = v218;
                  v19 = __s1;
                  if (*(v4 + 2560))
                  {
                    *(&v216 + 1) = __PAIR64__(v37, v199);
                  }

                  v71 = *v218;
                  v72 = *(*v218 + 3008);
                  if (v72 && ((*(v71 + 3392) & 0x80000000) == 0 || (*(v71 + 3396) & 0x80000000) == 0))
                  {
                    v217[4] = *(v29 + *(v72 + 11));
                  }

                  v73 = *(a1 + 880);
                  if (v73)
                  {
                    while (*(v73 + 16) <= v47)
                    {
                      v73 = *(v73 + 48);
                      if (!v73)
                      {
                        goto LABEL_139;
                      }
                    }

                    if (v21 >= v191)
                    {
                      if (v18 == v73)
                      {
                        v80 = 0;
                      }

                      else
                      {
                        v80 = v73;
                      }

                      if (v18)
                      {
                        v75 = *(v73 + 40);
                        v83 = *(v18 + 40);
                        if (v83)
                        {
                          *(v83 + 48) = 0;
                          v74 = v18;
                          v18 = v83;
                        }

                        else
                        {
                          v74 = v18;
                          v18 = 0;
                        }

                        goto LABEL_147;
                      }
                    }

                    else
                    {
                      v74 = *(a1 + 864) + 56 * v21;
                      v75 = *(v73 + 40);
LABEL_146:
                      v21 = (v21 + 1);
                      v80 = v73;
                      if (v74)
                      {
LABEL_147:
                        v81 = v216;
                        v82 = *v217;
                        *v74 = __b;
                        *(v74 + 16) = v81;
                        *(v74 + 32) = v82;
                        *(v74 + 40) = v75;
                        *(v74 + 48) = v80;
                        if (v75)
                        {
                          *(v75 + 48) = v74;
                        }

                        else
                        {
                          *(a1 + 880) = v74;
                          v84 = *(v4 + 2568);
                          if (v84 != -1)
                          {
                            v195 = *(v74 + 16) + v84;
                          }
                        }

                        if (v80)
                        {
                          *(v80 + 40) = v74;
                        }

                        else
                        {
                          v18 = v74;
                        }

                        if (v21 >= v191 && v18)
                        {
                          v79 = *(v18 + 16);
LABEL_163:
                          v196 = v79;
                        }
                      }
                    }
                  }

                  else
                  {
LABEL_139:
                    if (v21 < v191)
                    {
                      v73 = 0;
                      v74 = *(a1 + 864) + 56 * v21;
                      v75 = v18;
                      goto LABEL_146;
                    }

                    if (v18 && v47 < *(v18 + 16))
                    {
                      *&v217[8] = *(v18 + 40);
                      v76 = __b;
                      v77 = v216;
                      v78 = *v217;
                      *(v18 + 48) = *&v217[16];
                      *(v18 + 16) = v77;
                      *(v18 + 32) = v78;
                      *v18 = v76;
                      v79 = v216;
                      goto LABEL_163;
                    }
                  }

                  if (!v37 || !*(v4 + 2560))
                  {
                    v15 = v200;
                    goto LABEL_178;
                  }

                  v85 = __s1;
                  v86 = &v223[7 * __s1];
                  *(v86 + 4) = v47;
                  *v86 = v69;
                  v86[1] = v70;
                  *(v86 + 6) = v199;
                  *(v86 + 7) = 1;
                  v87 = *(*v70 + 3008);
                  v15 = v200;
                  if (v87)
                  {
                    *(v86 + 36) = *(v29 + *(v87 + 11));
                  }

                  v22 = v202;
                  if (__s1)
                  {
                    v88 = &v223[7 * __s1];
                    do
                    {
                      v89 = &v223[7 * (v85 - 1)];
                      v90 = *(v89 + 6);
                      v91 = *(v88 + 6);
                      if (v90 <= v91 && (v90 != v91 || *(v89 + 4) <= *(v88 + 4)))
                      {
                        break;
                      }

                      v92 = *(v89 + 1);
                      v219 = *v89;
                      v220 = v92;
                      v221 = *(v89 + 2);
                      v222 = v89[6];
                      v94 = *(v88 + 1);
                      v93 = *(v88 + 2);
                      v95 = *v88;
                      v89[6] = v88[6];
                      *(v89 + 1) = v94;
                      *(v89 + 2) = v93;
                      *v89 = v95;
                      v96 = v220;
                      *v88 = v219;
                      *(v88 + 1) = v96;
                      *(v88 + 2) = v221;
                      --v85;
                      v88[6] = v222;
                      v88 -= 7;
                    }

                    while (v85);
                  }

                  if (__s1 >= 0x14u)
                  {
                    v19 = __s1;
                  }

                  else
                  {
                    v19 = (__s1 + 1);
                  }
                }

                v20 = v204;
                goto LABEL_180;
              }
            }

            else
            {
              v4 = v198;
            }

            v18 = v48;
            v21 = v210;
            goto LABEL_113;
          }

          if (v202[*(*(v4 + 3024) + 25)] != 3)
          {
            goto LABEL_202;
          }

LABEL_93:
          v47 = 0;
          v37 = 0;
          goto LABEL_94;
        }

        v21 = v210;
        v22 = v202;
LABEL_180:
        if (++v20 >= v214)
        {
          goto LABEL_251;
        }
      }
    }

    v170 = 0;
    v171 = 0;
    v172 = v218;
    v173 = *(a1 + 856);
    v174 = *(a1 + 40);
    v175 = v173 + 3;
    v176 = v200;
    v177 = v194;
    v206 = v174;
    __s1b = v173;
    while (1)
    {
      if (v170 > v191 && v171 > v169)
      {
        goto LABEL_335;
      }

      v178 = v177;
      if (v200)
      {
        v178 = *v176;
      }

      v179 = *(a1 + 936);
      if (!v179 || **(a1 + 56) != v172 || *(v179 + v178) != 255)
      {
        v180 = *(v172 + 160) + v178 * *(v172 + 168);
        v181 = v174[375];
        if (v181)
        {
          v182 = *(v180 + v181[11]);
          if (v182 == 255)
          {
            goto LABEL_328;
          }
        }

        else
        {
          v182 = *(v180 + MEMORY[0xB]);
        }

        if (v175[v181[25]] == (v181[24] & (v182 >> v181[12])) && v175[*(v174[377] + 25)] == (*(v174[377] + 24) & (*(v180 + *(v174[377] + 11)) >> *(v174[377] + 12))))
        {
          ++v170;
          v183 = v173[1];
          if (v183 == 114)
          {
            if (v175[*(v174[378] + 25)] != 3)
            {
              goto LABEL_326;
            }
          }

          else if (v183 != 108 || v175[*(v174[378] + 25)] != 1)
          {
LABEL_326:
            v184 = v166;
            v212 = v170;
            v185 = cstdlib_memcmp(v166, (*(v172 + 176) + v178 * *(v172 + 184)), 5uLL);
            v174 = v206;
            v173 = __s1b;
            v169 = v191 >> 1;
            v13 = v185 == 0;
            v170 = v212;
            v166 = v184;
            if (v13)
            {
              ++v171;
            }
          }
        }
      }

LABEL_328:
      ++v177;
      ++v176;
      if (!--v168)
      {
        goto LABEL_335;
      }
    }
  }

  if (v119 == 2)
  {
    __s1a = (*(a1 + 888) + 29);
    if (!*__s1a)
    {
      goto LABEL_35;
    }

    v193 = v2;
    v150 = v214;
    v151 = v191 >> 1;
    if (v214)
    {
      v152 = 0;
      v153 = 0;
      v154 = v218;
      v155 = *(a1 + 40);
      v211 = *(a1 + 856);
      v156 = v211 + 3;
      v157 = v200;
      v158 = v194;
      v205 = v218;
      while (1)
      {
        if (v152 > v191 && v153 > v151)
        {
          goto LABEL_333;
        }

        v159 = v158;
        if (v200)
        {
          v159 = *v157;
        }

        v160 = *(a1 + 936);
        if (!v160 || **(a1 + 56) != v154 || *(v160 + v159) != 255)
        {
          v161 = *(v154 + 160) + v159 * *(v154 + 168);
          v162 = *(v155 + 3000);
          if (v162)
          {
            v163 = *(v161 + v162[11]);
            if (v163 == 255)
            {
              goto LABEL_303;
            }
          }

          else
          {
            v163 = *(v161 + MEMORY[0xB]);
          }

          if (*(v156 + v162[25]) == (v162[24] & (v163 >> v162[12])))
          {
            ++v152;
            v164 = *(v211 + 1);
            if (v164 == 114)
            {
              if (*(v156 + *(*(v155 + 3024) + 25)) != 3)
              {
                goto LABEL_301;
              }
            }

            else if (v164 != 108 || *(v156 + *(*(v155 + 3024) + 25)) != 1)
            {
LABEL_301:
              v13 = cstdlib_memcmp(__s1a, (*(v154 + 176) + v159 * *(v154 + 184)), 5uLL) == 0;
              v156 = v211 + 3;
              v154 = v205;
              if (v13)
              {
                ++v153;
              }
            }
          }
        }

LABEL_303:
        ++v158;
        ++v157;
        if (!--v150)
        {
          goto LABEL_333;
        }
      }
    }

    v153 = 0;
    v152 = 0;
LABEL_333:
    v201 = v152 > v191;
    v186 = v153 > v151;
    goto LABEL_336;
  }

  if (v119 != 1)
  {
LABEL_35:
    v201 = 0;
    v189 = 0;
    goto LABEL_36;
  }

  if (v214)
  {
    v120 = 0;
    v121 = *(a1 + 40);
    v122 = *(a1 + 856);
    v123 = *(a1 + 936);
    v124 = 1;
    v125 = v15;
    v126 = v194;
    while (1)
    {
      v127 = v126;
      if (v15)
      {
        v127 = *v125;
      }

      if (v123 && **(a1 + 56) == v218 && *(v123 + v127) == 255)
      {
        goto LABEL_247;
      }

      v128 = *(v218 + 160) + v127 * *(v218 + 168);
      v129 = v121[375];
      if (v129)
      {
        if (*(v128 + *(v129 + 11)) == 255)
        {
          goto LABEL_247;
        }
      }

      v130 = *(v122 + 1);
      if (v130 == 114)
      {
        break;
      }

      if (v130 == 108)
      {
        v131 = v121[372];
        goto LABEL_245;
      }

LABEL_247:
      if (v124 < v214)
      {
        ++v126;
        ++v124;
        ++v125;
        if (v120 <= v191)
        {
          continue;
        }
      }

      v189 = 0;
      v201 = v120 > v191;
      goto LABEL_36;
    }

    v131 = v121[373];
LABEL_245:
    if (*(v122 + 3 + *(v131 + 25)) == *(v128 + *(v131 + 11)))
    {
      ++v120;
    }

    goto LABEL_247;
  }

LABEL_250:
  v21 = 0;
  LOWORD(v19) = 0;
  v18 = 0;
  v195 = -1;
LABEL_251:
  if (*(v4 + 2568) != -1)
  {
    if (*(v4 + 2572) == -1)
    {
      v140 = v195;
LABEL_265:
      if (v21 >= 2 && v18)
      {
        while (*(v18 + 16) > v140)
        {
          v18 = *(v18 + 40);
          *(v18 + 48) = 0;
          result = (v21 - 1);
          if (v21 >= 3)
          {
            v21 = (v21 - 1);
            if (v18)
            {
              continue;
            }
          }

          goto LABEL_272;
        }
      }

      goto LABEL_271;
    }

    cstdlib_memset(&v219, 0, 0xA4uLL);
    v132 = *(a1 + 880);
    for (i = *(v4 + 2568); v132; v132 = *(v132 + 48))
    {
      v134 = (*(v132 + 16) - v195 + i) / 0x9C4;
      if (v134 >= 0x27)
      {
        v134 = 39;
      }

      ++*(&v219 + v134);
    }

    v135 = 0;
    v136 = 0;
    v137 = *(v4 + 2572);
    v138 = 2500;
    while (1)
    {
      v136 += *(&v219 + v135);
      if (v138 > i - v137 * v136)
      {
        break;
      }

      ++v135;
      v138 += 2500;
      if (v135 == 40)
      {
        v139 = 0;
        v138 = 100000;
        goto LABEL_263;
      }
    }

    v139 = v135 < 0x27;
LABEL_263:
    v140 = v138 + v195 - i;
    if (v139 || v137 == -1)
    {
      goto LABEL_265;
    }
  }

LABEL_271:
  result = v21;
LABEL_272:
  if (*(v4 + 2560))
  {
    v142 = v19 == 0;
  }

  else
  {
    v142 = 1;
  }

  if (!v142)
  {
    v143 = result + v19;
    v144 = v19;
    v145 = 56 * v191;
    v146 = v224;
    while (*(v146 - 2) < *(v2 + 40) + 100)
    {
      *v146 = 1;
      v147 = *(a1 + 864) + v145;
      v148 = *v146;
      v149 = *(v146 - 1);
      *v147 = *(v146 - 2);
      *(v147 + 16) = v149;
      *(v147 + 32) = v148;
      *(v147 + 40) = v18;
      *(v147 + 48) = 0;
      if (v18)
      {
        *(v18 + 48) = v147;
      }

      v146 += 14;
      result = (result + 1);
      v145 += 56;
      v18 = v147;
      if (!--v144)
      {
        return v143;
      }
    }
  }

  return result;
}

uint64_t tmp_GetFirstContextPhone(void *a1, int a2, void *a3)
{
  result = 0;
  v5 = a1[111];
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return *(a1[5] + 2496);
      }

      return result;
    }

    v11 = *(a1[107] + 1);
    v7 = a1[5];
    v8 = v11 == 108;
    v9 = (v7 + 28264);
    v10 = 28256;
  }

  else
  {
    if (!a2)
    {
      return *(v5 + 28);
    }

    if (a2 != 1)
    {
      return result;
    }

    v6 = *(a1[107] + 1);
    v7 = a1[5];
    v8 = v6 == 108;
    v9 = (v7 + 28248);
    v10 = 28240;
  }

  v12 = (v7 + v10);
  if (!v8)
  {
    v12 = v9;
  }

  v13 = *v12;
  if (!*v12)
  {
    return 0;
  }

  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  v15 = *(v5 + 28);
  v16 = v13 + 1;
  while (*v14 != v15)
  {
    v17 = *v16++;
    v14 = v17;
    if (!v17)
    {
      return 0;
    }
  }

  *a3 = v14 + 1;
  return v14[1];
}

uint64_t tmp_GetNextContextPhone(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  if (a2)
  {
    if (a2 == 3)
    {
      if (*(*(a1 + 40) + 2497) > a3)
      {
        LOBYTE(a2) = a3 + 1;
      }

      else
      {
        LOBYTE(a2) = 0;
      }
    }

    else
    {
      v4 = (*a4 + 1);
      *a4 = v4;
      LOBYTE(a2) = *v4;
    }
  }

  return a2;
}

uint64_t presearch_IsCarryingRequired(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    v3 = *(a1 + 849);
    if (v3 == *(a1 + 908) >> 1)
    {
      if (*(a1 + 849))
      {
        v4 = (*(a1 + 832) + 58);
        while (1)
        {
          v5 = *v4;
          v4 += 112;
          if (v5)
          {
            break;
          }

          if (!--v3)
          {
            return 1;
          }
        }

        return 0;
      }

      return 1;
    }
  }

  else if (a3 == *(a1 + 908) >> 1)
  {
    v6 = *(a1 + 880);
    if (v6)
    {
      while (!*(v6 + 20))
      {
        v6 = *(v6 + 48);
        if (!v6)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t presearch_GetCarryCandidate(uint64_t a1, uint64_t a2, int a3)
{
  result = 0xFFFFFFFFLL;
  __dst = -1;
  if (*(a2 + 58))
  {
    return result;
  }

  v5 = *(a2 + 40);
  v6 = *(a2 + 32);
  if (a3 == 1)
  {
    result = *(*(v5 + 272) + 4 * v6);
    if (result == -1)
    {
      return result;
    }

    v7 = *(a1 + 849);
    if (!*(a1 + 849))
    {
      return result;
    }

    v8 = *(a1 + 832);
    if (*(v8 + 40) == v5)
    {
      for (i = (v8 + 40); *(i - 2) != result || *i != v5; i += 14)
      {
        if (!--v7)
        {
          return result;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 40);
  cstdlib_memcpy(&__dst, (*(v5 + 192) + v6 * *(v5 + 200)), 4uLL);
  result = __dst;
  if (*(v10 + 2696))
  {
    if ((__dst & 0x3FFFFFFF) == 0x3FFFFFFF)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = __dst & 0x3FFFFFFF;
    }

    __dst = result;
  }

  if (result != -1)
  {
    v11 = *(a1 + 880);
    if (v11)
    {
      if (*(v11 + 8) == v5)
      {
        while (*v11 != result || *(v11 + 8) != v5)
        {
          v11 = *(v11 + 48);
          if (!v11)
          {
            return result;
          }
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t presearch_GetIdRange(uint64_t result, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *(result + 40);
  v6 = *(result + 856);
  v7 = *(v5 + 2497);
  LODWORD(v5) = *(v5 + 2496);
  v8 = v7 - v5;
  v9 = (v8 + 2);
  v10 = a3 - v5 + (*v6 - v5) * v9;
  if (v6[1] == 114)
  {
    v10 += (v8 + 1) * v9 + (v8 + 1);
  }

  v11 = *(a2 + 120);
  *a4 = *(*(a2 + 128) + 4 * v10);
  *a5 = *(v11 + 2 * v10);
  return result;
}

uint64_t presearch_CalculateUnitCost(uint64_t result, unsigned int *a2)
{
  v3 = *a2;
  if (v3 == -1 || (v4 = result, v5 = *(*(result + 40) + 2968), v6 = *(result + 896), v7 = *(result + 856), v8 = *(a2 + 1), (v9 = *(result + 936)) != 0) && v8 == **(result + 56) && *(v9 + v3) == 255)
  {
    v14 = -1;
LABEL_10:
    a2[4] = v14;
    return result;
  }

  a2[4] = 0;
  v10 = v8[20] + v3 * *(v8 + 168);
  v11 = *v8;
  v12 = *(*v8 + 3000);
  if (!v12 || *(v10 + *(v12 + 11)) != 255)
  {
    if (v8 == **(result + 56))
    {
      v13 = *v5;
      if (*v5)
      {
        v13 = 0;
        v15 = (v7 + 3);
        do
        {
          if (v13 >= a2[14])
          {
            break;
          }

          if (!*(v6 + 16))
          {
            result = (*(v5 + 16))(v4, *v15, *(v10 + *(v5 + 11)), v5, v6);
            v13 = a2[4] + result;
            a2[4] = v13;
          }

          v16 = *(v5 + 32);
          v5 += 32;
          ++v15;
          v6 += 24;
        }

        while (v16);
        v11 = *v8;
      }
    }

    else
    {
      v13 = 0;
    }

    v17 = *(v11 + 3008);
    if (v17 && ((*(v11 + 3392) & 0x80000000) == 0 || (*(v11 + 3396) & 0x80000000) == 0))
    {
      *(a2 + 36) = *(v10 + *(v17 + 11));
    }

    v18 = *(*(v4 + 888) + 8);
    if (v18)
    {
      if (v8 == **(v4 + 56) && v13 < a2[14])
      {
        v19 = *v18;
        if (v19)
        {
          v20 = (v18 + 1);
          v21 = (v18 + 101);
          while (1)
          {
            v22 = *v20++;
            if (v22 == v3)
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_32;
            }
          }

          LODWORD(v19) = *v21;
        }

LABEL_32:
        v14 = v13 + 100 * *(v4 + 916) * v19;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t presearch_RetainCandidate(uint64_t result, uint64_t a2)
{
  v2 = (result + 880);
  v3 = *(result + 880);
  if (v3)
  {
    v4 = *(result + 880);
    while (*(v4 + 16) <= *(a2 + 16))
    {
      v4 = *(v4 + 48);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v5 = (v4 + 40);
  }

  else
  {
LABEL_5:
    v4 = 0;
    v5 = (a2 + 64);
  }

  v6 = *(result + 40);
  v7 = *v5;
  v8 = *(a2 + 80);
  if (v8 < *(a2 + 61))
  {
    v9 = *(a2 + 72);
    if (v9)
    {
      v10 = *(v9 + 40);
      *(a2 + 72) = v10;
      if (v10)
      {
        *(v10 + 48) = 0;
      }

      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
LABEL_31:
      v14 = *(a2 + 16);
      v15 = *(a2 + 32);
      *v9 = *a2;
      *(v9 + 16) = v14;
      *(v9 + 32) = v15;
      *(v9 + 40) = v7;
      *(v9 + 48) = v4;
      v16 = (v7 + 48);
      if (!v7)
      {
        v16 = (result + 880);
      }

      *v16 = v9;
      v17 = (a2 + 64);
      if (v4)
      {
        v18 = (v4 + 40);
      }

      else
      {
        v18 = (a2 + 64);
      }

      *v18 = v9;
      v19 = *(a2 + 80);
      v20 = v19 + 1;
      *(a2 + 80) = v19 + 1;
      if (!v7 && *(a2 + 60) != 1)
      {
        v21 = *(v6 + 2568);
        if (v21 != -1)
        {
          v22 = *(v9 + 16) + v21;
          *(a2 + 84) = v22;
          if (*v2)
          {
            if (*(v6 + 2568) != -1 && v19 >= 1)
            {
              v23 = *v17;
              if (*v17)
              {
                if (*(v23 + 16) >= v22)
                {
                  do
                  {
                    v24 = *(v23 + 40);
                    *(v23 + 16) = -1;
                    v25 = *(a2 + 72);
                    if (v25)
                    {
                      *(v25 + 48) = v23;
                      *(*(*(a2 + 72) + 48) + 48) = 0;
                      v26 = *(a2 + 72);
                      v27 = *(v26 + 48);
                      *(v27 + 40) = v26;
                      *(a2 + 72) = v27;
                    }

                    else
                    {
                      *(a2 + 72) = v23;
                      *(v23 + 48) = 0;
                      *(*(a2 + 72) + 40) = 0;
                    }

                    *(a2 + 64) = v24;
                    *(v24 + 48) = 0;
                    v28 = *(a2 + 80);
                    v20 = v28 - 1;
                    *(a2 + 80) = v28 - 1;
                    if (v28 < 3)
                    {
                      break;
                    }

                    if (!v24)
                    {
                      break;
                    }

                    v23 = v24;
                  }

                  while (*(v24 + 16) >= v22);
                }
              }
            }
          }

          if (v22 < *(a2 + 56))
          {
            *(a2 + 56) = v22;
          }
        }
      }

      if (v20 >= *(a2 + 61))
      {
        v29 = *(*(a2 + 64) + 16);
        *(a2 + 88) = v29;
        *(a2 + 56) = v29;
      }

      return result;
    }
  }

  v11 = *(a2 + 64);
  if (v11)
  {
    v9 = *(a2 + 64);
    while (*(v9 + 20) != *(a2 + 20))
    {
      v9 = *(v9 + 40);
      if (!v9)
      {
        return result;
      }
    }

    if (*(v9 + 16) > *(a2 + 16))
    {
      if (v7 == v9)
      {
        v7 = *(v7 + 40);
      }

      if (v4 == v9)
      {
        v4 = *(v9 + 48);
      }

      if (v3 == v9)
      {
        *v2 = *(v9 + 48);
      }

      if (v11 == v9)
      {
        *(a2 + 64) = *(v11 + 40);
      }

      v12 = *(v9 + 40);
      v13 = *(v9 + 48);
      if (v12)
      {
        *(v12 + 48) = v13;
      }

      if (v13)
      {
        *(v13 + 40) = v12;
      }

      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(a2 + 80) = v8 - 1;
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t uselect_CascadingFlatSearch(uint64_t a1, unsigned int a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 888);
  v6 = *(a1 + 40);
  v37 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  DWORD2(v33) = -1;
  *(&v35 + 4) = -1;
  BYTE12(v33) = a3;
  v7 = *(a1 + 908);
  v8 = *(a1 + 864);
  if (*(a1 + 908))
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (v9)
      {
        *(v8 + v9 + 40) = v8 + v9 - 56;
      }

      else
      {
        *(v8 + 40) = 0;
      }

      v11 = v8 + v9;
      v12 = v8 + v9 + 56;
      if (v10 >= v7)
      {
        v12 = 0;
      }

      *(v11 + 48) = v12;
      *(v11 + 16) = -1;
      v9 += 56;
      ++v10;
    }

    while (56 * v7 != v9);
  }

  *&v34 = 0;
  *(&v34 + 1) = v8 + 56 * v7 - 56;
  *(a1 + 880) = 0;
  v28 = v6;
  if (*(v6 + 2684))
  {
    LODWORD(v7) = v7 >> (*(v6 + 2688) != 0);
  }

  BYTE13(v33) = v7;
  v13 = *(v5 + 24);
  if (v13 != -1)
  {
    uselect_splitGID(a1, v13 & 0x7FFFFFFF, &v30 + 1, &v30);
    if (v30 >= *(*(&v30 + 1) + 108))
    {
      log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19028, "%s%d", "ID", *(v5 + 24));
      *(v5 + 24) = -1;
    }

    else
    {
      BYTE4(v31) = 0;
      presearch_CalculateUnitCost(a1, &v30);
      presearch_RetainCandidate(a1, &v30);
      if ((*(v5 + 24) & 0x80000000) == 0)
      {
        return v35;
      }
    }
  }

  v36 = 0;
  if (a3 != 1)
  {
    cstdlib_memset(__b, 0, 0x100uLL);
    if (a2 <= 3)
    {
      v15 = v35;
      v16 = BYTE13(v33);
      if (v35 < BYTE13(v33))
      {
        v17 = a2;
        do
        {
          BYTE4(v31) = v17;
          FirstContextPhone = tmp_GetFirstContextPhone(a1, v17, &v36);
          v19 = v36;
          if (FirstContextPhone)
          {
            do
            {
              v20 = FirstContextPhone;
              if (!__b[FirstContextPhone])
              {
                __b[FirstContextPhone] = 1;
                *(&v30 + 1) = **(a1 + 56);
                presearch_GetIdRange(a1, *(&v30 + 1), FirstContextPhone, &v37, &v37 + 1);
                v21 = HIDWORD(v37);
                if (HIDWORD(v37))
                {
                  v22 = v37;
                  do
                  {
                    LODWORD(v30) = v22;
                    presearch_CalculateUnitCost(a1, &v30);
                    if (v31 < DWORD2(v33))
                    {
                      presearch_RetainCandidate(a1, &v30);
                    }

                    ++v22;
                    --v21;
                  }

                  while (v21);
                }
              }

              if (v17 == 3)
              {
                if (*(*(a1 + 40) + 2497) <= v20)
                {
                  break;
                }

                LOBYTE(FirstContextPhone) = v20 + 1;
              }

              else
              {
                if (!v17)
                {
                  break;
                }

                v23 = *++v19;
                LOBYTE(FirstContextPhone) = v23;
              }
            }

            while (FirstContextPhone);
            v15 = v35;
            v16 = BYTE13(v33);
          }

          v36 = v19;
          if (v17 > 2u)
          {
            break;
          }

          ++v17;
        }

        while (v15 < v16);
      }
    }
  }

  if (!a2 && presearch_IsCarryingRequired(a1, a3, v35))
  {
    BYTE4(v31) = 4;
    if (a3 == 2)
    {
      v24 = *(a1 + 832);
      v25 = *(a1 + 849);
    }

    else
    {
      if (a3 != 1)
      {
        return v35;
      }

      v24 = *(a1 + 840);
      v25 = *(a1 + 850);
      v26 = *(v28 + 2568);
      if (v26 != -1)
      {
        DWORD1(v35) = **(a1 + 832) + v26;
      }
    }

    if (v24)
    {
      BYTE13(v33) = *(a1 + 908);
      DWORD2(v33) = DWORD1(v35);
      if (v25)
      {
        v27 = v25;
        do
        {
          *(&v30 + 1) = *(v24 + 40);
          LODWORD(v30) = presearch_GetCarryCandidate(a1, v24, a3);
          presearch_CalculateUnitCost(a1, &v30);
          if (v31 < DWORD2(v33))
          {
            presearch_RetainCandidate(a1, &v30);
          }

          v24 += 112;
          --v27;
        }

        while (v27);
      }
    }
  }

  return v35;
}

uint64_t uselect_CartLookup(uint64_t *a1, unsigned __int16 **a2, int a3, uint64_t *a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v9 = (a4[4] + a5);
  if (*v9 == 35)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * *(a4[24] + a5);
  }

  v11 = *a4;
  if (a5 < 1)
  {
    v12 = (v11 + 2179);
  }

  else
  {
    v12 = (v11 + *(v9 - 1) + 2144);
  }

  v13 = *v12;
  if (*(a4 + 5) - 2 <= a5)
  {
    v14 = (v11 + 2179);
  }

  else
  {
    v14 = (v11 + v9[1] + 2144);
  }

  v15 = 0;
  v16 = *v14;
  if (a9)
  {
    v17 = a8 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  do
  {
    v19 = **a2;
    if (v19 != 0xFFFF)
    {
      v21 = *a1;
      v20 = *a2;
      while (1)
      {
        v22 = v20[2];
        v23 = *(v21 + v22);
        if (v23 > 0xFC)
        {
          break;
        }

        if (v23 == 250)
        {
          v24 = v15;
          goto LABEL_27;
        }

        v24 = v10;
        if (v23 != 251)
        {
          goto LABEL_25;
        }

LABEL_27:
        v25 = (a1[1] + 2 * v22);
        v26 = *v25;
        v27 = v25[1];
        if (v26 >= v27)
        {
LABEL_31:
          v19 = v20[1];
        }

        else
        {
          v28 = (a1[2] + v26);
          v29 = v27 - v26;
          while (1)
          {
            v30 = *v28++;
            if (v30 == v24)
            {
              break;
            }

            if (!--v29)
            {
              goto LABEL_31;
            }
          }
        }

        v20 = &(*a2)[3 * v19];
        v19 = *v20;
        if (v19 == 0xFFFF)
        {
          goto LABEL_33;
        }
      }

      v24 = v16;
      if (v23 == 254)
      {
        goto LABEL_27;
      }

      v24 = v13;
      if (v23 == 253)
      {
        goto LABEL_27;
      }

LABEL_25:
      v24 = *(a4[*(v21 + v22) + 2] + a5);
      goto LABEL_27;
    }

    v20 = *a2;
LABEL_33:
    if (a3)
    {
      v31 = *(v20 + 5);
      if (v15)
      {
        *a9 = v31;
        LODWORD(v20) = *(v20 + 4) + *(*a4 + 2584) * v31 / 0x64u;
LABEL_38:
        *a8 = v20;
        goto LABEL_41;
      }

      *a7 = v31;
      *a6 = *(v20 + 4) + *(*a4 + 2584) * v31 / 0x64u;
    }

    else
    {
      if (v15)
      {
        *a9 = *(v20 + 5);
        LOBYTE(v20) = *(v20 + 4);
        goto LABEL_38;
      }

      *a6 = *(v20 + 4);
      *a7 = *(v20 + 5);
    }

LABEL_41:
    ++v15;
  }

  while (v15 != v18);
  return 0;
}

uint64_t featextract_ObjReopen(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 415, 104) & 0x80000000) != 0)
  {
    return 2364547080;
  }

  paramc_ParamSetStr(*(a1[2] + 40), "voiceaddon", "");

  return featextract_loadVoice(a1);
}

uint64_t featextract_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 415, 104) & 0x80000000) != 0)
  {
    return 2364547080;
  }

  v7 = *(a1 + 48);
  v8 = *(v7 + 64);
  v9 = (*(v7 + 152))();
  v10 = v8(a3, a4, 207, "application/x-realspeak-markers-pp;version=4.0", v9, 1, a1 + 56);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = v10;
LABEL_7:
    featextract_closeStreams(*(a1 + 48), a1 + 56);
    return v11;
  }

  v11 = (*(*(a1 + 48) + 64))(a3, a4, 207, "application/x-realspeak-feat-vector", 0, 1, a1 + 72);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  return v11;
}

uint64_t featextract_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v25 = 0;
  v9 = -1930420218;
  result = safeh_HandleCheck(a1, a2, 415, 104);
  if ((result & 0x80000000) != 0)
  {
    return 2364547080;
  }

  *a5 = 1;
  if (a1[7])
  {
    v11 = a1[12];
    cstdlib_memset(v11, 0, 0xE48uLL);
    v12 = a1[4];
    *v11 = v12;
    if (v12)
    {
      v9 = usextract_ProcessStart(a1[2], "FEATEXTRACT", a1[5], a3, a4, v11, &v25);
      if ((v9 & 0x80000000) == 0)
      {
        v13 = *(v11 + 5);
        if (v13 > 1)
        {
          Layers = usextract_allocateLayers(a1[2], "FEATEXTRACT", v11, (v13 + 4 * *(v11 + 7)));
          if (Layers < 0)
          {
            v9 = Layers;
            v14 = 0;
            v15 = 1;
          }

          else
          {
            v24 = usextract_Process(a1[2], "FEATEXTRACT", a1[5], a3, a4, v11);
            if ((v24 & 0x80000000) == 0)
            {
              v24 = featextract_logFeatures(a1[2], v11);
              if ((v24 & 0x80000000) == 0)
              {
                featextract_adjustSilAudioOrder(v11);
                v24 = (*(a1[6] + 104))(a1[7], a1[8], v11[439], (32 * *(v11 + 880)));
                if ((v24 & 0x80000000) == 0)
                {
                  v24 = featextract_writeFeatures(a1[2], a1[6], (a1 + 7), a1[4], v11);
                }
              }
            }

            v9 = v24;
            v15 = 0;
            v14 = 0;
          }
        }

        else
        {
          if (!v25)
          {
            *a5 = 0;
LABEL_28:
            v20 = usextract_ProcessEnd(a1[2], "FEATEXTRACT", v11);
            if (v9 > -1 && v20 < 0)
            {
              v9 = v20;
            }

LABEL_33:
            LODWORD(result) = (*(a1[5] + 64))(a3, a4);
            if (v9 > -1 && result < 0)
            {
              return result;
            }

            else
            {
              return v9;
            }
          }

          if (a1[7])
          {
            if (*(v11 + 880))
            {
              v9 = (*(a1[6] + 104))();
              if (v9 < 0)
              {
                log_OutPublic(*(a1[2] + 32), "FEATEXTRACT", 55008, "%s%s%s%x", "contentType", "application/x-realspeak-markers-pp;version=4.0", "lhError", v9);
              }
            }
          }

          v14 = 0;
          v15 = 1;
          *a5 = 1;
        }

LABEL_15:
        if (v25)
        {
          v16 = featextract_closeStreams(a1[6], (a1 + 7));
          if (v9 > -1 && v16 < 0)
          {
            v9 = v16;
          }
        }

        if ((v15 & 1) == 0)
        {
          v18 = usextract_freeLayers(a1[2], "FEATEXTRACT", v11);
          if (v9 > -1 && v18 < 0)
          {
            v9 = v18;
          }
        }

        if (v14)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      log_OutPublic(*(a1[2] + 32), "FEATEXTRACT", 55005, "%s%x", "lhError", v9);
    }

    v15 = 1;
    v14 = 1;
    goto LABEL_15;
  }

  return result;
}