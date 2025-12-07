void *BET3FLT__MFVSyn__releaseExcTable(void *result)
{
  v1 = result[101];
  if (v1)
  {
    v2 = result;
    result = heap_Free(*(*result + 8), v1);
    v2[101] = 0;
  }

  return result;
}

uint64_t BET3FXD__LoadTreesFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5)
{
  v20 = 0;
  v7 = *a4;
  if (a4[4] - v7 >= 8 && *(*(a4 + 1) + v7) == 48)
  {
    *a4 = v7 + 2;
    v10 = a2 + 2 * a3;
    v11 = a3;
    if (BET3FLT__xfread_BET3((v10 + 184), 2u, 1, a4) == 1 && BET3FLT__xfread_BET3(&v20, 2u, 1, a4) == 1 && BET3FLT__xfread_BET3((a2 + 2 * v11), 2u, 1, a4) == 1)
    {
      v12 = BET3FLT__xfread2ptr_BET3((a2 + 8 * v11 + 24), 1u, v20, a4);
      if (v12 == v20)
      {
        if (*a4)
        {
          ++*a4;
        }

        v13 = heap_Calloc(*(a1 + 8), 16, *(v10 + 184));
        v14 = a2 + 104;
        *(a2 + 104 + 8 * v11) = v13;
        if (v13)
        {
          if (*(v10 + 184))
          {
            v15 = 0;
            v16 = 0;
            while (BET3FLT__xfread_BET3((v13 + v15), 2u, 1, a4) == 1)
            {
              if (BET3FLT__xfread_BET3((*(v14 + 8 * v11) + v15 + 2), 2u, 1, a4) != 1)
              {
                break;
              }

              v17 = BET3FLT__xfread2ptr_BET3((*(v14 + 8 * v11) + v15 + 8), 2u, 3 * *(*(v14 + 8 * v11) + v15 + 2), a4);
              v13 = *(v14 + 8 * v11);
              if (v17 != 3 * *(v13 + v15 + 2))
              {
                break;
              }

              v18 = 0;
              ++v16;
              v15 += 16;
              if (v16 >= *(v10 + 184))
              {
                return v18;
              }
            }

            v18 = 2229280772;
            BET3FXD__log_select_Error(a1, 55015, "LoadTreesFile : corrupt tree nodes for type %s, state %u\n");
          }

          else
          {
            return 0;
          }
        }

        else
        {
          BET3FXD__log_select_Error(a1, 55000, "LoadTreesFile : out of memory for type %s\n", *(a5 + 8 * v11 + 144));
          return 2229280778;
        }
      }

      else
      {
        v18 = 2229280772;
        BET3FXD__log_select_Error(a1, 55013, "LoadTreesFile : corrupt tree questions for type %s\n");
      }
    }

    else
    {
      v18 = 2229280772;
      BET3FXD__log_select_Error(a1, 55012, "LoadTreesFile : corrupt tree header for type %s\n");
    }
  }

  else
  {
    v18 = 2229280772;
    BET3FXD__log_select_Error(a1, 55011, "LoadTreesFile : invalid tree data version for type %s\n");
  }

  return v18;
}

uint64_t BET3FXD__select_bet3_FeatureExtractObjOpen(_WORD *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = 0;
  *a5 = 0;
  inited = InitRsrcFunction(a1, a2, &v11);
  if ((inited & 0x80000000) == 0)
  {
    v9 = heap_Calloc(*(v11 + 8), 1, 24);
    if (v9)
    {
      *v9 = v11;
      v9[1] = a3;
      v9[2] = a4;
      *a5 = v9;
    }

    else
    {
      log_OutPublic(*(v11 + 32), "SELECT_BET3", 55000, 0);
      return 2229280778;
    }
  }

  return inited;
}

uint64_t BET3FXD__select_bet3_FeatureExtractProcessStart(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  __s1 = 0;
  bzero(a5, 0xE48uLL);
  *a5 = a2;
  if ((paramc_ParamGetStr(*(*a1 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && !strcmp(__s1, "bet3"))
  {
    (*(a1[2] + 272))(a3, a4, 128, 3, 0, 0);
  }

  return usextract_ProcessStart(*a1, "SELECT_BET3", a1[2], a3, a4, a5, a6);
}

uint64_t BET3FXD__select_bet3_FeatureExtractProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t *a10, uint64_t *a11, _DWORD *a12)
{
  v15 = a1;
  v98 = *MEMORY[0x1E69E9840];
  v16 = *a1;
  if (a11)
  {
    v17 = a12 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  v93 = v18;
  if (!v17)
  {
    *a11 = 0;
    *a12 = 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = *(a10 + 5);
  do
  {
    if (*(*a10 + 2748 + v19) == 1)
    {
      ++v20;
    }

    ++v19;
  }

  while (v19 != 218);
  v22 = heap_Calloc(*(v16 + 8), (v20 * v21), 1);
  if (!v22)
  {
    v41 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0);
    if (a12)
    {
      goto LABEL_133;
    }

    goto LABEL_137;
  }

  v23 = v22;
  v90 = a2;
  v94 = v15;
  v24 = 0;
  v91 = a10 + 2;
  do
  {
    v25 = *a10;
    v26 = *(*a10 + v24 + 2748);
    if (!*(*a10 + v24 + 2748))
    {
      goto LABEL_20;
    }

    if (v26 == 2)
    {
      v27 = heap_Calloc(*(v16 + 8), v21, 2);
      a10[v24 + 220] = v27;
      if (!v27)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (v26 == 1)
      {
        a10[v24 + 2] = v23;
        v23 += v21;
        goto LABEL_20;
      }

      if (v24 <= 0x33u)
      {
        switch(v24)
        {
          case 0x18u:
            v34 = heap_Calloc(*(v16 + 8), v21, 8);
            a10[444] = v34;
            if (!v34)
            {
              goto LABEL_130;
            }

            break;
          case 0x2Eu:
            v39 = heap_Calloc(*(v16 + 8), v21, 9);
            a10[445] = v39;
            if (!v39)
            {
              goto LABEL_130;
            }

            break;
          case 0x33u:
            v30 = *(v25 + 2966);
            if (v30)
            {
              v31 = heap_Calloc(*(v16 + 8), (v30 * v21), 4);
              a10[446] = v31;
              if (!v31)
              {
                goto LABEL_130;
              }
            }

            break;
          default:
            goto LABEL_42;
        }
      }

      else if (v24 > 0x35u)
      {
        if (v24 == 54)
        {
          v37 = *(v25 + 3360);
          if (v37)
          {
            v38 = heap_Calloc(*(v16 + 8), (v37 * v21), 4);
            a10[449] = v38;
            if (!v38)
            {
              goto LABEL_130;
            }
          }
        }

        else
        {
          if (v24 != 56)
          {
LABEL_42:
            log_OutPublic(*(*v15 + 32), "SELECT_BET3", 55007, "%s%u", "feature", v24);
            goto LABEL_20;
          }

          v32 = *(v25 + 2966);
          if (v32)
          {
            v33 = heap_Calloc(*(v16 + 8), (v32 * v21), 1);
            a10[450] = v33;
            if (!v33)
            {
              goto LABEL_130;
            }
          }
        }
      }

      else if (v24 == 52)
      {
        v35 = *(v25 + 2966);
        if (v35)
        {
          v36 = heap_Calloc(*(v16 + 8), (v35 * v21), 4);
          a10[447] = v36;
          if (!v36)
          {
            goto LABEL_130;
          }
        }
      }

      else
      {
        if (v24 != 53)
        {
          goto LABEL_42;
        }

        v28 = *(v25 + 3360);
        if (v28)
        {
          v29 = heap_Calloc(*(v16 + 8), (v28 * v21), 4);
          a10[448] = v29;
          if (!v29)
          {
            goto LABEL_130;
          }
        }
      }
    }

LABEL_20:
    ++v24;
  }

  while (v24 != 218);
  v40 = *(*a10 + 3578);
  if (v40 >= 4)
  {
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, "Invalid number of states per phoneme", "%s%u", "%s:%u", "current", v40, "max", 3);
    v41 = -2065686513;
    goto LABEL_131;
  }

  v42 = heap_Calloc(*(v16 + 8), (v40 * v21), 4);
  a10[451] = v42;
  if (!v42)
  {
    goto LABEL_130;
  }

  if (*(*a10 + 3578) * v21)
  {
    memset(v42, 255, 4 * *(*a10 + 3578) * v21);
  }

  GenericFeatureLayers = usextract_allocateGenericFeatureLayers(*v15, "SELECT_BET3", a10, v21);
  if (GenericFeatureLayers < 0)
  {
    v41 = GenericFeatureLayers;
    if (a12)
    {
      goto LABEL_133;
    }

    goto LABEL_137;
  }

  v41 = usextract_Process(*v15, "SELECT_BET3", v15[2], a3, a4, a10);
  if (v41 < 0)
  {
    goto LABEL_132;
  }

  v88 = a3;
  v89 = a4;
  if (a10[438])
  {
    v44 = *a10;
    v45 = **(*a10 + 3336);
    if (v45)
    {
      v46 = 0;
      v47 = 1;
      do
      {
        if (!strncmp(v45, "INNO_", 5uLL))
        {
          v49 = atoi(v45 + 5) + 79;
          if (v49 <= 0x5E)
          {
            v91[v49] = *(a10[438] + 8 * v46);
          }
        }

        else
        {
          Index = usextract_getIndex(*(*(v44 + 3344) + 8 * v46), "FEATIDX", "");
          if (Index == -1)
          {
            v44 = *a10;
            v50 = *(*(*a10 + 3336) + 8 * v46);
            if (!strcmp(v50, "POS"))
            {
              a10[63] = *(a10[438] + 8 * v46);
            }

            else if (!strcmp(v50, "PHR"))
            {
              a10[64] = *(a10[438] + 8 * v46);
            }
          }

          else
          {
            v44 = *a10;
            v91[*(*(*(*a10 + 3352) + 8 * v46) + Index)] = *(a10[438] + 8 * v46);
          }
        }

        v46 = v47;
        v45 = *(*(v44 + 3336) + 8 * v47++);
      }

      while (v45);
    }
  }

  v92 = *(a10 + 5);
  v51 = v92 & ~(v92 >> 31);
  if (BET3FLT__log_select_GetLogLevel(*(v16 + 32)) >= 6)
  {
    LH_itoa(0x4Eu, v97, 0xAu);
    for (i = 0; i != 218; ++i)
    {
      if (i > 3u)
      {
        if (i == 4)
        {
          v53 = "application/x-realspeak-usplosives;version=4.0";
LABEL_84:
          v54 = *(*a10 + i + 2748);
          if (v54 == 2)
          {
            log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v97, v53, a10[i + 220], 2 * v51, 0);
          }

          else if (v54 == 1)
          {
            log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v97, v53, a10[i + 2], v51, 0);
          }

          continue;
        }

        if (i == 5)
        {
          v53 = "application/x-realspeak-usmarkers-u16;version=4.0";
          goto LABEL_84;
        }
      }

      else if (i == 2)
      {
        v96 = 5;
        v95 = 0;
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v97, "text/x-realspeak-usphonemes;charset=tts", &v96, 1u, 0);
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v97, "text/x-realspeak-usphonemes;charset=tts", a10[i + 2], v51, 0);
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v97, "text/x-realspeak-usphonemes;charset=tts", &v95, 1u, 0);
      }

      else if (i == 3)
      {
        v53 = "application/x-realspeak-usdurs;version=4.0";
        goto LABEL_84;
      }
    }
  }

  v55 = *(a10 + 880);
  if (v55)
  {
    v56 = 0;
    for (j = 0; j < v55; ++j)
    {
      if (*(a10[439] + v56) == 25)
      {
        *v97 = 0;
        paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v97);
        v58 = *(a10[439] + v56 + 24);
        *a9 = v58;
        v41 = paramc_ParamSetInt(*(v16 + 40), "waitfactor", v58);
        if (v41 < 0)
        {
          log_OutPublic(*(v16 + 32), "SELECT_BET3", 55009, "%s%s%s%d%s%x", "parameter", "waitfactor", "value", *a9, "lhError", v41);
          goto LABEL_146;
        }

        v55 = *(a10 + 880);
      }

      v56 += 32;
    }
  }

  featextract_adjustSilAudioOrder(a10);
  if (!v93)
  {
    goto LABEL_110;
  }

  v59 = *(a10 + 880);
  v60 = v59 + v51;
  *a12 = v60;
  if (!(v59 + v51))
  {
    goto LABEL_110;
  }

  v61 = heap_Calloc(*(v16 + 8), v60, 32);
  *a11 = v61;
  a3 = v88;
  a4 = v89;
  if (!v61 || (v62 = heap_Calloc(*(v16 + 8), *(a10 + 5), 2)) == 0)
  {
LABEL_130:
    v41 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0);
    goto LABEL_131;
  }

  v63 = v62;
  memcpy(v62, a10[225], 2 * *(a10 + 5));
  if (*a12)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    while (v67 < *(a10 + 880))
    {
      if (v66 >= v51)
      {
        v73 = (*a11 + v64);
        v74 = (a10[439] + 32 * v67);
        v75 = v74[1];
        *v73 = *v74;
        v73[1] = v75;
        ++v67;
        goto LABEL_108;
      }

      v68 = v66;
      if (!*(v63 + 2 * v66))
      {
        goto LABEL_106;
      }

      v69 = (*a11 + v64);
      v70 = (a10[439] + 32 * v67);
      v71 = v70[1];
      *v69 = *v70;
      v69[1] = v71;
      ++v67;
      --*(v63 + 2 * v66);
LABEL_108:
      ++v65;
      v64 += 32;
      if (v65 >= *a12)
      {
        goto LABEL_109;
      }
    }

    v68 = v66;
LABEL_106:
    v72 = (*a11 + v64);
    *v72 = 33;
    v72[6] = *(a10[4] + v68);
    ++v66;
    goto LABEL_108;
  }

LABEL_109:
  heap_Free(*(v16 + 8), v63);
LABEL_110:
  if (v92 >= 1)
  {
    v76 = 0;
    v77 = v90 + 7356;
    v78 = (v92 & ~(v92 >> 31)) - 1;
    while (1)
    {
      v79 = a10[31];
      if (!*(v79 + v76))
      {
        *(v79 + v76) = -1;
      }

      v80 = a10[24];
      if (*(a10[4] + v76) == 35)
      {
        v81 = 1;
      }

      else
      {
        v81 = 2 * *(v80 + v76);
      }

      *(v80 + v76) = v81;
      v82 = a10[4];
      v83 = *(v82 + v76);
      if (v78 == v76)
      {
        if (v83 == 35)
        {
          *v97 = 0;
          paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v97);
          v84 = 0;
          v85 = a10[223];
          if (*v97 != 1)
          {
            v84 = *(v85 + 2 * v76) + 200 * *a9;
          }

          if (v84 <= 1)
          {
            v84 = 1;
          }

          if (v84 >= 0xFFFF)
          {
            LOWORD(v84) = -1;
          }

          *(v85 + 2 * v76) = v84;
          v82 = a10[4];
        }

        *(v82 + v76) = *(v77 + *(v82 + v76));
        if (v78 == v76)
        {
          break;
        }
      }

      else
      {
        *(v82 + v76) = *(v77 + v83);
      }

      ++v76;
    }
  }

LABEL_146:
  a3 = v88;
  a4 = v89;
LABEL_131:
  v15 = v94;
LABEL_132:
  if (a12)
  {
LABEL_133:
    if (a11 && v41 < 0 && *a11)
    {
      heap_Free(*(v16 + 8), *a11);
      *a11 = 0;
      *a12 = 0;
    }
  }

LABEL_137:
  LODWORD(result) = (*(v15[2] + 64))(a3, a4);
  if (result >= 0 || v41 <= -1)
  {
    return v41;
  }

  else
  {
    return result;
  }
}

uint64_t BET3FXD__select_bet3_FeatureExtractProcessEnd(uint64_t *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = *a1;
  v5 = usextract_ProcessEnd(*a1, "SELECT_BET3", a2);
  usextract_freeGenericFeatureLayers(*a1, "SELECT_BET3", a2);
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = *(*a2 + v6 + 2748);
    if (!*(*a2 + v6 + 2748))
    {
      goto LABEL_12;
    }

    if (v8 == 2)
    {
      v10 = a2[v6 + 220];
      if (!v10)
      {
        goto LABEL_12;
      }

LABEL_11:
      heap_Free(*(v4 + 8), v10);
      goto LABEL_12;
    }

    if (v8 == 1)
    {
      if (v7)
      {
        v9 = a2[v6 + 2];
        if (v9)
        {
          heap_Free(*(v4 + 8), v9);
        }

        v7 = 0;
      }
    }

    else if (v6 <= 0x33u)
    {
      switch(v6)
      {
        case 0x18u:
          v10 = a2[444];
          if (v10)
          {
            goto LABEL_11;
          }

          break;
        case 0x2Eu:
          v10 = a2[445];
          if (v10)
          {
            goto LABEL_11;
          }

          break;
        case 0x33u:
          v10 = a2[446];
          if (v10)
          {
            goto LABEL_11;
          }

          break;
        default:
          goto LABEL_31;
      }
    }

    else if (v6 > 0x35u)
    {
      if (v6 == 54)
      {
        v10 = a2[449];
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v6 != 56)
        {
LABEL_31:
          log_OutPublic(*(*a1 + 32), "SELECT_BET3", 55010, "%s%u", "feature", v6);
          goto LABEL_12;
        }

        v10 = a2[450];
        if (v10)
        {
          goto LABEL_11;
        }
      }
    }

    else if (v6 == 52)
    {
      v10 = a2[447];
      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v6 != 53)
      {
        goto LABEL_31;
      }

      v10 = a2[448];
      if (v10)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    ++v6;
  }

  while (v6 != 218);
  v11 = a2[451];
  if (v11)
  {
    heap_Free(*(v4 + 8), v11);
  }

  *a2 = 0;
  return v5;
}

uint64_t BET3FXD__mul_Q18_14_Q1_15_to_Q18_14(uint64_t result, int a2)
{
  if (a2 == 0x7FFF)
  {
    return result;
  }

  else
  {
    return ((a2 * result) >> 15);
  }
}

uint64_t BET3FXD__LoadModelFile(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  if (a2[a3 + 120])
  {
    result = loadQuantizedDurFile(a1, (a2 + 42), a4, 0xFu);
    if (result)
    {
      return result;
    }

    *a2 = a2[43];
  }

  v13 = v9;
  v14 = &a2[v9];
  if (v14[130])
  {
    v15 = heap_Calloc(*(a1 + 8), (*(a6 + 268) - 1), 4);
    *(a2 + 53) = v15;
    if (!v15)
    {
      return 2229280778;
    }

    result = loadVQQuantizedCepFile(a1, a2 + 196, a4);
    if (result)
    {
      return result;
    }

    *a2 = *(a2 + 199);
    v14[1] = *(a2 + 198) + *(a2 + 198) * *(a2 + 201);
    result = loadCodebookSet(a1, (a2 + 116), a5, 0x10u);
    if (result)
    {
      return result;
    }
  }

  if (!v14[140])
  {
    return 0;
  }

  v16 = a2 + 78;
  v17 = *&a2[2 * v13 + 78];
  if (v17)
  {
    heap_Free(*(a1 + 8), v17);
  }

  v18 = heap_Calloc(*(a1 + 8), 1, 128);
  *&v16[2 * v13] = v18;
  if (!v18)
  {
    return 2229280778;
  }

  v19 = *(a6 + 4 * v13 + 224);
  if (v19 == 2)
  {
    v20 = 3774880;
    v21 = 20;
  }

  else if (v19 == 3)
  {
    v20 = 1310720;
    v21 = 18;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  result = loadQuantizedMsdFile(a1, v18, *a2, a4, v21, v20);
  if (!result)
  {
    v14[1] = *(*&v16[2 * v13] + 8);
  }

  return result;
}

uint64_t BET3FXD__FindDurPDF(uint64_t a1, int *a2, int a3, int a4)
{
  v6 = *(a1 + 8);
  *(a1 + 24) = 0;
  if (*a2 < 1)
  {
    return 0;
  }

  v20[11] = v4;
  v20[12] = v5;
  v11 = 0;
  v12 = 0;
  v13 = v6 - 1;
  while (1)
  {
    v20[0] = 0;
    result = dequantDur((a2 + 42), v13, v11, v20 + 1, v20, 15);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v15 = HIDWORD(v20[0]);
    v16 = BET3FXD__mul_Q18_14_Q1_15_to_Q18_14((SLODWORD(v20[0]) >> 1), a3) + (v15 >> 1);
    if (a2[151])
    {
      if ((v16 & ~(v16 >> 31)) >= 0x3E7F060)
      {
        v12 = 65532000;
      }

      else
      {
        v12 = v16 & ~(v16 >> 31);
      }
    }

    else if (v16 <= 65532000)
    {
      v12 = v16 & ~(v16 >> 31);
    }

    else
    {
      v12 >>= 1;
    }

    v17 = a4 + ((v12 + 0x2000) >> 14);
    v18 = *(a1 + 16) + 4 * v11;
    *(v18 + 8) = v17;
    *(a1 + 24) += v17;
    a4 = (v12 + 0x2000 - (*(v18 + 8) << 14)) >> 14;
    v19 = v11 + 2;
    ++v11;
    if (v19 > *a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t BET3FXD__FindContPDF(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v10 = a2;
  v11 = a1;
  v33 = 0;
  v12 = *a8;
  v13 = *a8 * *(a4 + 396);
  LODWORD(v14) = *(a4 + 402);
  v15 = v13 + v13 * v14;
  if (*(a4 + 396))
  {
    v29 = a3;
    v30 = a8;
    v17 = 0;
    v18 = *(*(a3 + 8 * a1 + 72) + 4 * a2);
    v31 = v15 + 1;
    v32 = v13 + v13 * v14;
    while (1)
    {
      result = dequantEnergy((a4 + 392), v10, v18, v17, &v33 + 1, &v33, 0x10u);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v20 = v17 + v17 * v14 + v15;
      LODWORD(v33) = v33 >> 4;
      v21 = v33;
      HIDWORD(v33) <<= 8;
      *(a6 + 4 * v20) = HIDWORD(v33);
      *(a7 + 4 * v20) = v21;
      LODWORD(v14) = *(a4 + 402);
      if (*(a4 + 402))
      {
        v22 = 0;
        v23 = v31;
        do
        {
          v24 = *(*(a4 + 424) + 4 * v22);
          result = deVQSpectrum((a4 + 392), a4 + 464, v10, v18, v24, v22 - *(*(a4 + 416) + 2 * v24), v17, &v33 + 1, &v33, 0x10u);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = v23 + v17 + v17 * v14;
          LODWORD(v33) = v33 >> 4;
          v26 = v33;
          HIDWORD(v33) <<= 8;
          *(a6 + 4 * v25) = HIDWORD(v33);
          *(a7 + 4 * v25) = v26;
          ++v22;
          v14 = *(a4 + 402);
          ++v23;
        }

        while (v22 < v14);
      }

      ++v17;
      v15 = v32;
      if (v17 >= *(a4 + 396))
      {
        a3 = v29;
        a8 = v30;
        v12 = *v30;
        v11 = a1;
        goto LABEL_11;
      }
    }
  }

  else
  {
    result = 0;
LABEL_11:
    v27 = a3 + 8 * v11;
    *(*(v27 + 152) + 8 * v10) = a6 + 4 * v15;
    *(*(v27 + 232) + 8 * v10) = a7 + 4 * v15;
    *a8 = v12 + 1;
  }

  return result;
}

uint64_t BET3FXD__FindMsdPDF(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = 0;
  v34 = 0;
  v33 = a5 + 224;
  v5 = *(a5 + 224 + 4 * a1);
  if (v5 == 3)
  {
    v6 = 18;
  }

  else
  {
    v6 = 0;
  }

  if (v5 == 2)
  {
    v7 = 20;
  }

  else
  {
    v7 = v6;
  }

  v8 = a4 + 4;
  if (*(a4 + 4 + 4 * a1) < 1)
  {
    return 0;
  }

  v9 = a3;
  v11 = 0;
  v12 = a1;
  v13 = a4 + 312;
  v14 = a2 - 2;
  v32 = *(*(a3 + 8 * a1 + 72) + 4 * a2) - 1;
  v15 = 24 - v7;
  v31 = a3 + 152;
  v30 = v7 - 12;
  v29 = a3 + 232;
  v27 = a5 + 2104;
  v28 = a2 - 2;
  do
  {
    v16 = dequantMsd(*(v13 + 8 * v12), v14, v32, v11, &v35 + 1, &v35, &v34, v7);
    if ((v16 & 0x80000000) != 0)
    {
      break;
    }

    v34 <<= v15;
    *(*(*(v31 + 8 * v12) + 8 * a2) + 4 * v11 + 4) = HIDWORD(v35) << v15;
    if ((*(v33 + 4 * v12) & 0xFFFFFFFE) == 2)
    {
      *(*(*(v29 + 8 * v12) + 8 * a2) + 4 * v11 + 4) = v35 >> v30;
    }

    if (!v11)
    {
      v17 = v7;
      v18 = v13;
      v19 = v8;
      v20 = v9;
      v21 = v34;
      if (*(v33 + 4 * v12) == 2)
      {
        *(*(v20 + 320) + 4 * a2) = v34;
      }

      v22 = BET3FXD__Q10_22_to_Q8_24(*(v27 + 4 * v12));
      v23 = 1 << *(v33 + 4 * v12);
      if (v21 <= v22)
      {
        v9 = v20;
        v24 = *(v20 + 312);
        v25 = *(v24 + a2) & ~v23;
      }

      else
      {
        v9 = v20;
        v24 = *(v20 + 312);
        v25 = *(v24 + a2) | v23;
      }

      *(v24 + a2) = v25;
      v8 = v19;
      v13 = v18;
      v7 = v17;
      v14 = v28;
    }

    ++v11;
  }

  while (v11 < *(v8 + 4 * v12));
  return v16;
}

void BET3FXD__DeInitModelSet(uint64_t a1, void *a2)
{
  v4 = a2[59];
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    a2[59] = 0;
  }

  for (i = 39; i != 49; ++i)
  {
    v6 = a2[i];
    if (v6)
    {
      if (*(v6 + 120))
      {
        heap_Free(*(a1 + 8), *(v6 + 120));
        *(a2[i] + 120) = 0;
        v6 = a2[i];
      }

      heap_Free(*(a1 + 8), v6);
      a2[i] = 0;
    }
  }

  if (*(a2 + 198))
  {
    v7 = 0;
    v8 = 0;
    v9 = a2[54];
    v10 = v9;
    do
    {
      if (v10)
      {
        v11 = *(v10 + v7 + 8);
        if (v11)
        {
          heap_Free(*(a1 + 8), v11);
          v9 = a2[54];
          *(v9 + v7 + 8) = 0;
        }

        v12 = *(v9 + v7 + 24);
        if (v12)
        {
          heap_Free(*(a1 + 8), v12);
          v9 = a2[54];
          *(v9 + v7 + 24) = 0;
        }

        v13 = *(v9 + v7 + 32);
        v10 = v9;
        if (v13)
        {
          heap_Free(*(a1 + 8), v13);
          v9 = a2[54];
          *(v9 + v7 + 32) = 0;
          v10 = v9;
        }
      }

      ++v8;
      v7 += 40;
    }

    while (v8 < 2 * *(a2 + 198));
  }

  v14 = a2[52];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    a2[52] = 0;
  }

  v15 = a2[53];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    a2[53] = 0;
  }

  v16 = a2[54];
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
    a2[54] = 0;
  }

  v17 = a2[56];
  if (v17)
  {
    a2[56] = v17 + 32;
    heap_Free(*(a1 + 8), v17 + 32);
  }

  bzero(a2, 0x260uLL);
}

uint64_t BET3FXD__InitUttModel(uint64_t a1, char *a2, int *a3, unsigned int a4)
{
  v8 = 2229280778;
  bzero(a2, 0x240uLL);
  *a2 = a1;
  *(a2 + 1) = a3;
  *(a2 + 138) = a4;
  *(a2 + 141) = *a3 * a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 528);
  *(a2 + 68) = v9;
  if (v9)
  {
    v10 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
    *(a2 + 4) = v10;
    if (v10)
    {
      v11 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 1);
      *(a2 + 41) = v11;
      if (v11)
      {
        v12 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
        *(a2 + 42) = v12;
        if (v12)
        {
          v13 = a3[150];
          if (v13 >= 1)
          {
            v14 = 0;
            v15 = a2 + 168;
            v16 = a3;
            do
            {
              if (!v16[120])
              {
                v17 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
                *(v15 - 10) = v17;
                if (!v17)
                {
                  return v8;
                }

                v18 = *(a1 + 8);
                v19 = *(a2 + 138);
                v20 = v16[140] ? BET3FLT__ddcalloc(v18, 2 * v19 * *a3, v16[1] + 1) : heap_Calloc(v18, (2 * v19 * *a3), 8);
                *v15 = v20;
                if (!v20)
                {
                  return v8;
                }

                *(v15 + 10) = &v20[*a3 * *(a2 + 138)];
                v13 = a3[150];
              }

              ++v14;
              v15 += 8;
              ++v16;
            }

            while (v14 < v13);
          }

          v21 = *(a2 + 138);
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = *a3;
            v24 = 152;
            do
            {
              v25 = *(a2 + 68);
              v26 = v25 + 528 * v22;
              *v26 = v22;
              v27 = v22 * v23;
              v28 = *(a2 + 41) + v22 * v23;
              v29 = *(a2 + 42) + 4 * v22 * v23;
              *(v26 + 16) = *(a2 + 4) + 4 * v22 * v23 - 8;
              *(v26 + 312) = v28 - 2;
              *(v26 + 320) = v29 - 8;
              if (v13 >= 1)
              {
                v30 = (v25 + v24);
                v31 = a2 + 168;
                v32 = a3 + 120;
                v33 = v13;
                do
                {
                  if (!*v32++)
                  {
                    v35 = *(v31 - 10) + 4 * v27;
                    *(v30 - 10) = v35;
                    v36 = *v31 + 8 * v27;
                    *v30 = v36;
                    v37 = *(v31 + 10) + 8 * v27;
                    *(v30 - 10) = v35 - 8;
                    *v30 = v36 - 16;
                    v30[10] = v37 - 16;
                  }

                  ++v30;
                  v31 += 8;
                  --v33;
                }

                while (v33);
              }

              ++v22;
              v24 += 528;
            }

            while (v22 != v21);
          }

          return 0;
        }
      }
    }
  }

  return v8;
}

void *BET3FXD__DeInitUttModel(void *result)
{
  v1 = result;
  if (*result && result[68])
  {
    v2 = result[1];
    v3 = result[4];
    if (v3)
    {
      heap_Free(*(*result + 8), v3);
      v1[4] = 0;
    }

    v4 = v1[41];
    if (v4)
    {
      heap_Free(*(*v1 + 8), v4);
      v1[41] = 0;
    }

    v5 = v1[42];
    if (v5)
    {
      heap_Free(*(*v1 + 8), v5);
      v1[42] = 0;
    }

    if (*(v2 + 600) >= 1)
    {
      v6 = 0;
      do
      {
        if (!*(v2 + 480 + 4 * v6))
        {
          v7 = &v1[v6];
          v8 = v7[11];
          if (v8)
          {
            heap_Free(*(*v1 + 8), v8);
            v7[11] = 0;
          }

          v9 = v7[21];
          if (v9)
          {
            heap_Free(*(*v1 + 8), v9);
            v7[21] = 0;
          }
        }

        ++v6;
      }

      while (v6 < *(v2 + 600));
    }

    result = heap_Free(*(*v1 + 8), v1[68]);
  }

  v1[68] = 0;
  *(v1 + 138) = 0;
  *v1 = 0;
  return result;
}

void *BET3FXD__DeInitMSDUttModel(void *result, int a2)
{
  v2 = result[1];
  if (!*(v2 + 4 * a2 + 480))
  {
    v3 = result;
    v4 = a2;
    v5 = result + 11;
    v6 = result[a2 + 11];
    if (v6)
    {
      result = heap_Free(*(*result + 8), v6);
      v5[v4] = 0;
    }

    v7 = v3 + 21;
    v8 = v3[v4 + 21];
    if (v8)
    {
      if (*(v2 + 4 * v4 + 560))
      {
        *v8 += 4;
        result = BET3FLT__dd_free(*(*v3 + 8), v7[v4]);
      }

      else
      {
        result = heap_Free(*(*v3 + 8), v8);
      }

      v7[v4] = 0;
    }
  }

  return result;
}

uint64_t BET3FXD__InitModelSet(int a1, char *a2, uint64_t a3)
{
  bzero(a2, 0x260uLL);
  v5 = *(a3 + 132);
  *(a2 + 150) = v5;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = a3 + 4 * v6;
      *(v7 + 32) = *(v8 + 344);
      v9 = a2 + 480;
      if (v6)
      {
        if (*(v8 + 2144))
        {
          v9 = &a2[4 * v6 + 560];
        }

        else
        {
          v9 = v7 + 520;
        }
      }

      *v9 = 1;
      ++v6;
      v7 += 4;
    }

    while (v6 < *(a2 + 150));
  }

  return 0;
}

uint64_t BET3FXD__meancpy(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = 0;
    LODWORD(v3) = *(result + 20);
    do
    {
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = *(result + 72);
        v6 = *(result + 40);
        do
        {
          *(*(v6 + 8 * v4) + 4 * v2) = *(*(v5 + 8 * v4) + 4 * v2);
          ++v4;
          v3 = *(result + 20);
        }

        while (v4 < v3);
        v1 = *(result + 16);
      }

      ++v2;
    }

    while (v2 < v1);
  }

  return result;
}

uint64_t BET3FXD__ConstW_Calc_R_and_r(uint64_t a1, int a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = v4 + a2;
  v7 = a2 + 2 * v4;
  v8 = v3[1];
  v9 = *(v8 + 4 * v6);
  v10 = *(*v3 + 4 * a2);
  v11 = v2[1];
  v12 = *(*v3 + 4 * v7);
  v14 = *(a1 + 96);
  v13 = *(a1 + 104);
  v15 = (0xFFFFFFFE00000200 * v12) >> 32;
  v16 = *(v8 + 4 * v7);
  v17 = *(v11 + 4 * v7);
  *v13 = ((((-2147483392 * v9) >> 32) * *(v11 + 4 * v6)) >> 12) + ((*(*v2 + 4 * a2) * v10) >> 12) + ((v15 * *(*v2 + 4 * v7)) >> 12) + ((v17 * v16) >> 12);
  v18 = *v14;
  *v18 = ((0x3FFFFF * v9) >> 12) + (v10 << 12) + ((67108860 * v12) >> 12) + ((0xFFFFFF * v16) >> 12);
  v18[1] = ((-33554430 * v16) >> 12) + (v15 << 12);
  v18[2] = ((0xFFFFFF * v16) >> 12) + ((-4194303 * v9) >> 12);
  if (v5 < 3)
  {
    LODWORD(v19) = 1;
  }

  else
  {
    v19 = (v5 - 1);
    v20 = v14 + 1;
    v21 = v13 + 1;
    v22 = v3 + 2;
    v23 = v2 + 2;
    v24 = v19 - 1;
    do
    {
      v25 = *(v8 + 4 * a2);
      v26 = *(v22 - 2);
      v27 = *(v26 + 4 * v6);
      v28 = *(v23 - 2);
      v29 = ((((2147483392 * v27) >> 32) * *(v28 + 4 * v6)) >> 12) + ((*(v11 + 4 * a2) * v25) >> 12);
      v30 = *v22++;
      v8 = v30;
      v31 = *(v30 + 4 * v6);
      v32 = *v23++;
      v11 = v32;
      v33 = *(v26 + 4 * v7);
      v34 = v29 + ((((-2147483392 * v31) >> 32) * *(v32 + 4 * v6)) >> 12) + ((*(v28 + 4 * v7) * v33) >> 12);
      v35 = (0xFFFFFFFE00000200 * v16) >> 32;
      v36 = v34 + ((v35 * v17) >> 12);
      v37 = *(v8 + 4 * v7);
      v17 = *(v32 + 4 * v7);
      *v21++ = v36 + ((v17 * v37) >> 12);
      v38 = *v20++;
      *v38 = ((0x3FFFFF * v31) >> 12) + ((0x3FFFFF * v27) >> 12) + ((67108860 * v16) >> 12) + ((v33 + v25 + v37) << 12);
      v38[1] = ((-33554430 * v37) >> 12) + (v35 << 12);
      v38[2] = ((0xFFFFFF * v37) >> 12) + ((-4194303 * v31) >> 12);
      LODWORD(v16) = v37;
      --v24;
    }

    while (v24);
  }

  v39 = v3[v19];
  v40 = *(v39 + 4 * a2);
  result = v2[v19];
  v42 = 8 * v19 - 8;
  v43 = *(v3 + v42);
  v44 = *(v43 + 4 * v6);
  v45 = *(v43 + 4 * v7);
  v46 = ((((2147483392 * v44) >> 32) * *(*(v2 + v42) + 4 * v6)) >> 12) + ((*(result + 4 * a2) * v40) >> 12) + ((*(*(v2 + v42) + 4 * v7) * v45) >> 12);
  v47 = *(v39 + 4 * v7);
  v13[v19] = v46 + ((((0xFFFFFFFE00000200 * v47) >> 32) * *(result + 4 * v7)) >> 12);
  v48 = v14[v19];
  v48[1] = 0;
  v48[2] = 0;
  *v48 = ((v45 + v40) << 12) + ((0x3FFFFF * v44) >> 12) + ((67108860 * v47) >> 12);
  return result;
}

uint64_t BET3FXD__ConstW_Cholesky(uint64_t result)
{
  v1 = *(result + 96);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = **v1;
  v5 = v4 >> 4;
  if (v4 < 0x10)
  {
    v5 = 1;
  }

  v6 = (*(*v1 + 8) << 16) / v5;
  v7 = 16 * ((v2[2] << 16) / v5);
  v2[1] = 16 * v6;
  v2[2] = v7;
  v8 = v3[1];
  v9 = *v3 - ((((((16 * v6) >> 3) * ((16 * v6) >> 3)) >> 21) * (v4 >> 3)) >> 18);
  *v3 = v9;
  v10 = v8 - (((((v2[2] >> 3) * (v2[1] >> 3)) >> 21) * (*v2 >> 3)) >> 18);
  if (v9 < 0x10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 >> 4;
  }

  v12 = 16 * ((v10 << 16) / v11);
  v13 = 16 * ((v3[2] << 16) / v11);
  v3[1] = v12;
  v3[2] = v13;
  v14 = *(result + 20);
  if (v14 >= 3)
  {
    v15 = (v1 + 16);
    v16 = v14 - 2;
    do
    {
      v18 = *(v15 - 2);
      v17 = *(v15 - 1);
      v20 = *v15++;
      v19 = v20;
      v21 = v20[1];
      v22 = *v20 - (((((v17[1] >> 3) * (v17[1] >> 3)) >> 21) * (*v17 >> 3)) >> 18);
      *v20 = v22;
      v23 = v22 - (((((v18[2] >> 3) * (v18[2] >> 3)) >> 21) * (*v18 >> 3)) >> 18);
      *v20 = v23;
      v24 = v21 - (((((v17[2] >> 3) * (v17[1] >> 3)) >> 21) * (*v17 >> 3)) >> 18);
      if (v23 < 0x10)
      {
        v25 = 1;
      }

      else
      {
        v25 = v23 >> 4;
      }

      v26 = 16 * ((v24 << 16) / v25);
      v27 = 16 * ((v19[2] << 16) / v25);
      v19[1] = v26;
      v19[2] = v27;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t BET3FXD__ConstW_Cholesky_forward(uint64_t result)
{
  v1 = *(result + 96);
  v2 = *(result + 104);
  v3 = *(result + 88);
  v4 = *v2;
  *v3 = *v2;
  v5 = *v1;
  v6 = v2[1] - ((*(*v1 + 8) * v4) >> 24);
  v3[1] = v6;
  v7 = *(result + 20);
  if (v7 >= 3)
  {
    v8 = v3 + 2;
    v9 = v1 + 1;
    v10 = v2 + 2;
    v11 = v7 - 2;
    do
    {
      v13 = *v9++;
      v12 = v13;
      v14 = ((v6 >> 3) * (*(v13 + 8) >> 3)) >> 18;
      v15 = *v10++;
      v6 = v15 - (v14 + (((*(v8 - 2) >> 3) * (*(v5 + 16) >> 3)) >> 18));
      *v8++ = v6;
      v5 = v12;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t BET3FXD__ConstW_Cholesky_backward(uint64_t result, int a2)
{
  v2 = *(result + 88);
  v3 = *(result + 96);
  v4 = 8 * *(result + 20);
  v5 = v4 - 8;
  v6 = **(v3 + v4 - 8);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = (*(v2 + v5) << 24) / v6;
  v8 = *(result + 40);
  *(*(v8 + v5) + 4 * a2) = v7;
  v9 = v4 - 16;
  v10 = *(v3 + v9);
  v12 = *v10;
  v11 = v10[1];
  if (v12 < 0x10)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 >> 4;
  }

  *(*(v8 + v9) + 4 * a2) = 16 * ((*(v2 + v9) << 16) / v13) - ((v11 * v7) >> 24);
  v14 = *(result + 20);
  v15 = __OFSUB__(v14, 3);
  v16 = (v14 - 3);
  if (v16 < 0 == v15)
  {
    v17 = (v8 + 8 * v16 + 16);
    v18 = v17;
    do
    {
      v19 = *(v3 + 8 * v16);
      v20 = *v19 >> 4;
      if (*v19 < 0x10)
      {
        v20 = 1;
      }

      v21 = *--v18;
      *(*(v17 - 2) + 4 * a2) = 16 * ((*(v2 + 8 * v16--) << 16) / v20) - (((v19[1] * *(v21 + 4 * a2)) >> 24) + ((v19[2] * *(*v17 + 4 * a2)) >> 24));
      v17 = v18;
    }

    while (v16 != -1);
  }

  return result;
}

uint64_t BET3FXD__mlpg2(uint64_t a1, int a2)
{
  if (*(a1 + 20) < 2)
  {

    return BET3FXD__meancpy(a1);
  }

  else
  {
    BET3FXD__ConstW_Calc_R_and_r(a1, a2);
    BET3FXD__ConstW_Cholesky(a1);
    BET3FXD__ConstW_Cholesky_forward(a1);

    return BET3FXD__ConstW_Cholesky_backward(a1, a2);
  }
}

uint64_t BET3FXD__log_select_Diag(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - 1;
  do
  {
    v4 = *++v3;
  }

  while (v4 == 10);
  return log_VOutText(*(a1 + 32), "SELECT_BET3", (a2 + 2), 0, v3);
}

void *BET3FXD__ddcalloc_64(void *a1, int a2, unsigned int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 8);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 8 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 8 * a3;
            ++v9;
          }

          while (v7 != v9);
        }
      }

      else
      {
        heap_Free(a1, v3);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t BET3FXD__LoadDWinFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v4 = (a2 + 40 * a3);
  if (!*v4)
  {
    return 0;
  }

  v7 = 2229280778;
  v8 = BET3FLT__ddcalloc(*(a1 + 8), *v4, 2u);
  *(v4 + 1) = v8;
  if (v8)
  {
    v9 = heap_Calloc(*(a1 + 8), *v4, 8);
    *(v4 + 2) = v9;
    if (v9)
    {
      ***(v4 + 1) = 0;
      **(v4 + 2) = heap_Calloc(*(a1 + 8), 1, 4);
      v10 = **(v4 + 2);
      if (v10)
      {
        *v10 = 1;
        LODWORD(v11) = *v4;
        if (*v4 <= 1)
        {
LABEL_9:
          *(v4 + 3) = 0;
          if (v11 < 1)
          {
            v17 = 0;
          }

          else
          {
            v16 = 0;
            v17 = 0;
            v18 = *(v4 + 1);
            v11 = v11;
            do
            {
              v19 = *v18;
              v20 = **v18;
              if (v17 > v20)
              {
                v4[6] = v20;
                v17 = v20;
              }

              v21 = v19[1];
              if (v16 < v21)
              {
                v4[7] = v21;
                v16 = v21;
              }

              ++v18;
              --v11;
            }

            while (v11);
            if (v17 < v16)
            {
              v7 = 0;
              v4[8] = v16;
              return v7;
            }
          }

          v7 = 0;
          v4[8] = v17;
          return v7;
        }

        v12 = 1;
        v13 = 8;
        while (1)
        {
          v14 = BET3FLT__xfread2ptr_BET3((*(v4 + 2) + v13), 4u, 0xFFFFFFFFLL, a4);
          if (!v14)
          {
            break;
          }

          *(*(v4 + 2) + v13) += 4 * (v14 >> 1);
          v15 = *(*(v4 + 1) + v13);
          *v15 = -(v14 >> 1);
          v15[1] = (v14 & 1) + (v14 >> 1) - 1;
          ++v12;
          v11 = *v4;
          v13 += 8;
          a4 += 6;
          if (v12 >= v11)
          {
            goto LABEL_9;
          }
        }

        BET3FXD__log_select_Error(a1, 55019, "InitDWin: illegal data\n");
        return 2229280772;
      }
    }
  }

  return v7;
}

uint64_t BET3FXD__InitPStreamSM(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  if (a2 && *(a2 + 3) && *(a1 + 3) == *(a2 + 3) && *(a1 + 5) == *(a2 + 4) && *(a1 + 6) == *(a2 + 5))
  {
    result = 0;
    v6 = a2[3];
    v8 = *a2;
    v7 = a2[1];
    *(a1 + 5) = a2[2];
    *(a1 + 6) = v6;
    *(a1 + 3) = v8;
    *(a1 + 4) = v7;
LABEL_12:
    *(a1 + 14) = 1;
    return result;
  }

  a1[6] = v4;
  v9 = a1 + 6;
  v10 = *(a1 + 3);
  *(a1 + 14) = 0;
  *(a1 + 15) = v10;
  v11 = *(a1 + 20);
  a1[8] = v11;
  v12 = BET3FLT__ddcalloc(*(v4 + 8), 2 * v11, v10);
  a1[9] = v12;
  if (v12 && (v13 = *(a1 + 6), v14 = *(a1 + 5), a1[10] = &v12[v14], v15 = BET3FXD__ddcalloc_64(*(v4 + 8), v14, v13), (a1[12] = v15) != 0) && (v16 = heap_Calloc(*(v4 + 8), (2 * *(a1 + 5)), 8), (a1[11] = v16) != 0))
  {
    a1[13] = v16 + 8 * *(a1 + 5);
    if (a2)
    {
      BET3FLT__FreeSMatrices(a2);
      result = 0;
      v17 = *v9;
      v18 = *(a1 + 4);
      v19 = *(a1 + 6);
      a2[2] = *(a1 + 5);
      a2[3] = v19;
      *a2 = v17;
      a2[1] = v18;
      goto LABEL_12;
    }

    return 0;
  }

  else
  {
    BET3FLT__FreeSMatrices((a1 + 6));
    return 2229280778;
  }
}

uint64_t BET3FXD__InitPStreamParam(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *(a1 + 6) = (2 * *(a1[4] + 32)) | 1;
  if (a2)
  {
    v5 = *(a2 + 40);
    if (v5)
    {
      if (*(a1 + 5) == *(a2 + 20) && *(a1 + 4) == *(a2 + 16))
      {
        a1[5] = v5;
        v6 = a1 + 1;
LABEL_12:
        result = 0;
        *v6 = 1;
        return result;
      }
    }
  }

  *(a1 + 2) = 0;
  v6 = a1 + 1;
  v7 = BET3FLT__ddcalloc(*(v4 + 8), *(a1 + 5), *(a1 + 4));
  a1[5] = v7;
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = 2229280778;
  }

  if (a2 && v7)
  {
    BET3FLT__FreePStreamParam(a2);
    v9 = *a1;
    v10 = *(a1 + 1);
    v11 = *(a1 + 3);
    *(a2 + 32) = *(a1 + 2);
    *(a2 + 48) = v11;
    *a2 = v9;
    *(a2 + 16) = v10;
    v12 = *(a1 + 4);
    v13 = *(a1 + 5);
    v14 = *(a1 + 6);
    *(a2 + 112) = a1[14];
    *(a2 + 80) = v13;
    *(a2 + 96) = v14;
    *(a2 + 64) = v12;
    goto LABEL_12;
  }

  return result;
}

uint64_t select_bet3_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &ISelect_Bet3_0;
  return result;
}

uint64_t select_bet3_ClassOpen_0(_WORD *a1, int a2, uint64_t a3)
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
    *(a3 + 8) = 25957;
  }

  return result;
}

uint64_t select_bet3_ObjOpen_0(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v5 = 2229280775;
  memset(v34, 0, sizeof(v34));
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v32);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else if ((safeh_HandleCheck(a1, a2, 25957, 408) & 0x80000000) != 0)
    {
      return 2229280776;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      log_OutText(*(v32 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjOpen");
      v12 = heap_Calloc(*(v32 + 8), 1, 6608);
      if (v12)
      {
        v13 = v12;
        *v12 = a3;
        v12[1] = a4;
        v14 = v32;
        v12[2] = v32;
        v12[3] = a1;
        Object = objc_GetObject(*(v14 + 48), "SYNTHSTREAM", &v31);
        if ((Object & 0x80000000) != 0 || (v13[4] = *(v31 + 8), Object = objc_GetObject(*(v32 + 48), "LINGDB", &v31), (Object & 0x80000000) != 0))
        {
          v5 = Object;
          log_OutPublic(*(v13[2] + 32), "SELECT_BET3", 55001, 0);
        }

        else
        {
          v16 = *(v31 + 8);
          v13[5] = v16;
          ObjOpen = BET3FXD__select_bet3_FeatureExtractObjOpen(a3, a4, v13[4], v16, v13 + 7);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          ObjOpen = select_bet3_loc_CreateDataBrkString(v32, v34);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v18 = v13[3];
          if (!v18 || (v19 = *(v18 + 48)) == 0)
          {
            v19 = *(v13[2] + 48);
          }

          ObjOpen = objc_GetAddRefCountedObject(v19, v34, select_bet3_loc_ObjcVoiceOpen_0, select_bet3_loc_ObjcVoiceClose_0, v32, &v31);
          if ((ObjOpen & 0x80000000) != 0 || (v20 = v32, v21 = *(v31 + 32), v13[6] = v21, ObjOpen = select_bet3_loc_SetSynthParams_0(v20, v21), (ObjOpen & 0x80000000) != 0))
          {
LABEL_27:
            v5 = ObjOpen;
          }

          else
          {
            v22 = *(v32 + 40);
            v29 = v13;
            v28 = xmmword_1F42D7300;
            v30 = xmmword_1F42D7300;
            v23 = paramc_ListenerAdd(v22, "frequencyhz", &v29);
            if ((v23 & 0x80000000) == 0)
            {
              v24 = 0;
              while (1)
              {
                v25 = off_1E81AD848[v24];
                if ((paramc_ParamGetInt(*(v32 + 40), v25, &v33) & 0x80000000) != 0)
                {
                  v33 = dword_1C382FE88[v24];
                  v23 = paramc_ParamSetInt(*(v32 + 40), v25, v33);
                  if ((v23 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v23 = select_bet3_loc_ParamSet_0(v13, v25, v33);
                if ((v23 & 0x80000000) != 0)
                {
                  break;
                }

                v26 = *(v32 + 40);
                v29 = v13;
                v30 = v28;
                v5 = paramc_ListenerAdd(v26, v25, &v29);
                if ((v5 & 0x80000000) != 0)
                {
                  goto LABEL_32;
                }

                if (++v24 == 3)
                {
                  *a5 = v13;
                  *(a5 + 8) = 25958;
                  goto LABEL_29;
                }
              }
            }

            v5 = v23;
LABEL_32:
            log_OutPublic(*(v13[2] + 32), "SELECT_BET3", 55002, "%s%s");
          }
        }

        *a5 = v13;
        *(a5 + 8) = 25958;
        select_bet3_ObjClose_0(v13, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
      }

      else
      {
        log_OutPublic(*(v32 + 32), "SELECT_BET3", 55000, 0);
        v5 = 2229280778;
      }

LABEL_29:
      log_OutText(*(v32 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjOpen: %x", v5);
    }
  }

  return v5;
}

uint64_t select_bet3_ObjClose_0(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 25958, 6608);
  if (v3 < 0)
  {
    return 2229280776;
  }

  LODWORD(v4) = v3;
  v5 = a1[2];
  log_OutText(*(v5 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjClose");
  v6 = 0;
  v24 = xmmword_1F42D7300;
  do
  {
    v7 = off_1E81AD868[v6];
    v8 = *(v5 + 40);
    v25 = a1;
    v26 = v24;
    v9 = paramc_ListenerRemove(v8, v7, &v25);
    if (v4 > -1 && v9 < 0)
    {
      v4 = v9;
    }

    else
    {
      v4 = v4;
    }

    ++v6;
  }

  while (v6 != 4);
  v11 = a1[6];
  if (v11)
  {
    v12 = a1[3];
    if (!v12 || (v13 = *(v12 + 48)) == 0)
    {
      v13 = *(a1[2] + 48);
    }

    v14 = objc_ReleaseObject(v13, v11);
    a1[6] = 0;
    if (v4 > -1 && v14 < 0)
    {
      v4 = v14;
    }

    else
    {
      v4 = v4;
    }
  }

  v16 = a1[7];
  if (v16)
  {
    ObjClose = BET3FLT__select_bet3_FeatureExtractObjClose(v16);
    if (v4 > -1 && ObjClose < 0)
    {
      v4 = ObjClose;
    }

    else
    {
      v4 = v4;
    }
  }

  if (a1[5])
  {
    v19 = objc_ReleaseObject(*(v5 + 48), "LINGDB");
    if (v4 > -1 && v19 < 0)
    {
      v4 = v19;
    }

    else
    {
      v4 = v4;
    }
  }

  if (a1[4])
  {
    v21 = objc_ReleaseObject(*(v5 + 48), "SYNTHSTREAM");
    if (v4 > -1 && v21 < 0)
    {
      v4 = v21;
    }

    else
    {
      v4 = v4;
    }
  }

  heap_Free(*(v5 + 8), a1);
  log_OutText(*(v5 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjClose: %x", v4);
  return v4;
}

uint64_t select_bet3_ObjReopen_0(void *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  memset(v14, 0, sizeof(v14));
  if ((safeh_HandleCheck(a1, a2, 25958, 6608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v3 = a1[2];
  log_OutText(*(v3 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjReopen");
  DataBrkString = select_bet3_loc_CreateDataBrkString(v3, v14);
  if ((DataBrkString & 0x80000000) == 0)
  {
    v5 = a1[3];
    if (!v5 || (v6 = *(v5 + 48)) == 0)
    {
      v6 = *(a1[2] + 48);
    }

    DataBrkString = objc_GetAddRefCountedObject(v6, v14, select_bet3_loc_ObjcVoiceOpen_0, select_bet3_loc_ObjcVoiceClose_0, v3, &v13);
    if ((DataBrkString & 0x80000000) == 0)
    {
      v7 = a1[6];
      if (v7)
      {
        v8 = a1[3];
        if (!v8 || (v9 = *(v8 + 48)) == 0)
        {
          v9 = *(a1[2] + 48);
        }

        objc_ReleaseObject(v9, v7);
      }

      v10 = *(v13 + 32);
      a1[6] = v10;
      DataBrkString = select_bet3_loc_SetSynthParams_0(v3, v10);
    }
  }

  v11 = DataBrkString;
  log_OutText(*(v3 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjReopen: %x", DataBrkString);
  return v11;
}

uint64_t select_bet3_ProcessStart_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if ((safeh_HandleCheck(a1, a2, 25958, 6608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  synstrmaux_InitStreamOpener(a1 + 72, *(*(a1 + 16) + 32), "SELECT_BET3");
  synstrmaux_RegisterInStream((a1 + 72), "application/x-realspeak-cspp-sptchk;version=4.0", 1, a1 + 928);
  synstrmaux_RegisterInStream((a1 + 72), "application/x-realspeak-cspp-sgt;version=4.0", 1, a1 + 944);
  synstrmaux_RegisterOutStream((a1 + 72), "application/x-realspeak-bet3-speech-frames;version=5.0", a1 + 896);
  synstrmaux_RegisterOutStream((a1 + 72), "application/x-realspeak-markers-pp;version=4.0", a1 + 912);
  v8 = synstrmaux_OpenStreams((a1 + 72), *(a1 + 32), a3, a4);
  if ((v8 & 0x80000000) != 0)
  {
    select_bet3_ProcessEnd_0(a1, v6);
  }

  *(a1 + 6600) = 0;
  return v8;
}

uint64_t select_bet3_Process_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v43 = 0;
  if ((safeh_HandleCheck(a1, a2, 25958, 6608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  *a5 = 1;
  v9 = *(a1 + 6568);
  if (*(a1 + 4616))
  {
    if (!v9)
    {
      v10 = BET3FXD__ParamGenFrames(a1 + 4616, (*(a1 + 48) + 8112), (a1 + 6568));
      if ((v10 & 0x80000000) != 0)
      {
        v24 = v10;
      }

      else
      {
        v11 = *(a1 + 6576);
        if (!v11)
        {
          goto LABEL_66;
        }

        v12 = *(a1 + 6588);
        v13 = *(a1 + 6584);
        if (v13 <= v12)
        {
          goto LABEL_66;
        }

        v14 = v11 + 32 * v12;
        v15 = *(a1 + 5228);
        v16 = *(a1 + 5232);
        if (v16 >= v15)
        {
          v17 = 0;
          v20 = (v11 + 32 * v12);
        }

        else
        {
          v17 = 0;
          v18 = *(a1 + 6600);
          v19 = v12 + 1;
          v20 = (v11 + 32 * v12);
          do
          {
            if (*v20 == 33)
            {
              v21 = *(a1 + 6596);
              v22 = *(*(a1 + 5216) + 528 * v16 + 24);
              v20[4] = v22;
              *(a1 + 6596) = v22 + v21;
              *(a1 + 5232) = ++v16;
            }

            else
            {
              if (*v20 == 8)
              {
                v18 = v20[6] / *(*(a1 + 48) + 152);
                *(a1 + 6600) = v18;
              }

              v21 = *(a1 + 6596);
              v20[4] = 0;
            }

            if (v18 > v21)
            {
              *(a1 + 6600) = v21;
              v18 = v21;
            }

            v20[3] = v21 - v18;
            v20 += 8;
            ++v17;
            if (v16 >= v15)
            {
              break;
            }
          }

          while (v19++ < v13);
        }

        if (*(a1 + 6568))
        {
          v35 = v17 + v12;
          if (v17 + v12 < v13)
          {
            v36 = *(a1 + 6596);
            v37 = v20 + 4;
            do
            {
              *(v37 - 1) = v36;
              *v37 = 0;
              v37 += 8;
              ++v35;
            }

            while (v35 < v13);
            v17 = v13 - v12;
          }
        }

        if (!v17)
        {
LABEL_66:
          v42 = a1 + 4616;
          v24 = (*(*(a1 + 32) + 104))(*(a1 + 896), *(a1 + 904), &v42, 8);
          if ((v24 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", "contentType", "application/x-realspeak-bet3-speech-frames;version=5.0", "lhError", v24);
          }

          else if (*(a1 + 6568))
          {
            ProcessEnd = BET3FXD__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
            if (ProcessEnd >= 0)
            {
              v24 = v24;
            }

            else
            {
              v24 = ProcessEnd;
            }

            v40 = *(a1 + 6576);
            if (v40)
            {
              heap_Free(*(*(a1 + 16) + 8), v40);
              *(a1 + 6576) = 0;
              *(a1 + 6584) = 0;
              *(a1 + 6592) = 0;
            }

            v34 = 1;
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        v38 = (*(*(a1 + 32) + 104))(*(a1 + 912), *(a1 + 920), v14, (32 * v17));
        if ((v38 & 0x80000000) == 0)
        {
          *(a1 + 6588) += v17;
          goto LABEL_66;
        }

        v24 = v38;
        log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", "contentType", "application/x-realspeak-markers-pp;version=4.0", "lhError", v38);
        *(a1 + 6588) += v17;
      }

LABEL_75:
      v34 = 2;
      goto LABEL_76;
    }
  }

  else if (!v9)
  {
    goto LABEL_23;
  }

  BET3FXD__DeInitVStream((a1 + 4616));
  *(a1 + 6568) = 0;
LABEL_23:
  v24 = BET3FXD__select_bet3_FeatureExtractProcessStart(*(a1 + 56), *(a1 + 48) + 9328, a3, a4, (a1 + 960), &v43);
  if ((v24 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55005, "%s%x", "lhError", v24);
  }

  else if (*(a1 + 970) > 1)
  {
    *(a1 + 6588) = 0;
    inited = BET3FXD__InitVStream(*(a1 + 16), (a1 + 4616), (*(a1 + 48) + 128));
    if ((inited & 0x80000000) != 0 || (*(a1 + 4624) = a1 + 960, inited = BET3FXD__LoadVStream(a1 + 4616, *(a1 + 48) + 8112, *(a1 + 48) + 128), (inited & 0x80000000) != 0) || (inited = BET3FXD__select_bet3_FeatureExtractProcess(*(a1 + 56), *(a1 + 48) + 128, a3, a4, *(a1 + 928), *(a1 + 936), *(a1 + 944), *(a1 + 952), (a1 + 64), (a1 + 960), (a1 + 6576), (a1 + 6584)), (inited & 0x80000000) != 0))
    {
      v24 = inited;
    }

    else
    {
      v24 = BET3FXD__ParamGenStart(a1 + 4616, (*(a1 + 48) + 8112), (*(a1 + 48) + 128));
      if ((v24 & 0x80000000) == 0)
      {
        v34 = 4;
LABEL_76:
        *a5 = v34;
        return v24;
      }
    }

    BET3FXD__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
    BET3FXD__DeInitVStream((a1 + 4616));
  }

  else
  {
    v25 = v43;
    if (v43)
    {
      if (*(a1 + 912))
      {
        if (*(a1 + 4480))
        {
          LODWORD(v24) = (*(*(a1 + 32) + 104))();
          if ((v24 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", "contentType", "application/x-realspeak-markers-pp;version=4.0", "lhError", v24);
          }
        }
      }

      v26 = synstrmaux_CloseOutStreamsOnly((a1 + 72), *(a1 + 32));
      if (v26 < 0 && v24 > -1)
      {
        LODWORD(v24) = v26;
      }

      v25 = 1;
    }

    *a5 = v25;
    v28 = BET3FXD__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
    if (v28 >= 0 || v24 <= -1)
    {
      v30 = v24;
    }

    else
    {
      v30 = v28;
    }

    v31 = (*(*(a1 + 40) + 64))(a3, a4);
    if (v30 > -1 && v31 < 0)
    {
      return v31;
    }

    else
    {
      return v30;
    }
  }

  return v24;
}

uint64_t select_bet3_ProcessEnd_0(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 25958, 6608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  BET3FXD__DeInitVStream((a1 + 4616));
  *(a1 + 6568) = 0;
  BET3FXD__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
  v3 = *(a1 + 6576);
  if (v3)
  {
    heap_Free(*(*(a1 + 16) + 8), v3);
    *(a1 + 6576) = 0;
    *(a1 + 6584) = 0;
    *(a1 + 6592) = 0;
  }

  *(a1 + 6596) = 0;
  v4 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 72), v4);
}

uint64_t select_bet3_loc_ObjcVoiceOpen_0(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  __src = 0;
  memset(__dst, 0, 408);
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  memcpy(__dst, __src, 0x198uLL);
  __dst[2] = *(a5 + 32);
  v27 = 0;
  *(a4 + 32) = 0;
  v11 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "FIX3", 1031, &v27);
  if (v11 < 0)
  {
    return (v11 & 0x1FFFu) - 2065686528;
  }

  v12 = heap_Calloc(*(&__dst[0] + 1), 1, 37944);
  if (v12)
  {
    __strcpy_chk();
    __strcpy_chk();
    *&v13 = -1;
    *(&v13 + 1) = -1;
    *(v12 + 11472) = v13;
    *(v12 + 11488) = v13;
    *(v12 + 11504) = v13;
    *(v12 + 11520) = v13;
    *(v12 + 11536) = v13;
    *(v12 + 11552) = v13;
    *(v12 + 11568) = v13;
    *(v12 + 11584) = v13;
    *(v12 + 11600) = v13;
    *(v12 + 11616) = v13;
    *(v12 + 11632) = v13;
    *(v12 + 11648) = v13;
    *(v12 + 11664) = v13;
    *(v12 + 11680) = v13;
    *(v12 + 11696) = v13;
    *(v12 + 11712) = v13;
    *(v12 + 12644) = v13;
    *(v12 + 12376) = v13;
    *(v12 + 12392) = v13;
    *(v12 + 12408) = v13;
    *(v12 + 12424) = v13;
    *(v12 + 12440) = v13;
    *(v12 + 12456) = v13;
    *(v12 + 12472) = v13;
    *(v12 + 12488) = v13;
    *(v12 + 12504) = v13;
    *(v12 + 12520) = v13;
    *(v12 + 12536) = v13;
    *(v12 + 12552) = v13;
    *(v12 + 12568) = v13;
    *(v12 + 12584) = v13;
    *(v12 + 12600) = v13;
    *(v12 + 12616) = v13;
    *(v12 + 12632) = v13;
    *(v12 + 12720) = v13;
    *(v12 + 12704) = v13;
    *(v12 + 11852) = 1;
    BET3FLT__InitVParam((v12 + 128));
    *&v14 = -1;
    *(&v14 + 1) = -1;
    *(v12 + 8092) = v14;
    *(v12 + 8080) = v14;
    *(v12 + 8064) = v14;
    *(v12 + 8048) = v14;
    *(v12 + 8032) = v14;
    *(v12 + 8016) = v14;
    *(v12 + 8000) = v14;
    *(v12 + 7984) = v14;
    *(v12 + 7968) = v14;
    *(v12 + 7952) = v14;
    *(v12 + 7936) = v14;
    *(v12 + 7920) = v14;
    *(v12 + 7904) = v14;
    *(v12 + 7888) = v14;
    *(v12 + 7872) = v14;
    *(v12 + 7856) = v14;
    *(v12 + 7840) = v14;
    *(v12 + 7824) = v14;
    *(v12 + 7808) = v14;
    strcpy((v12 + 7792), "mlsa");
    memset(v29, 0, sizeof(v29));
    v15 = select_bet3_ParseRiff_0(__dst, v12, v27, 0, v29, 0, 0);
    if ((v15 & 0x80000000) != 0)
    {
      VData = v15;
      v28 = 0;
      if (LOBYTE(v29[0]))
      {
        v23 = 0;
        do
        {
          __strcat_chk();
          __strcat_chk();
          ++v23;
        }

        while (*(v29 + 5 * v23));
      }

      log_OutPublic(*&__dst[2], "SELECT_BET3", 55003, "%s%s%s%s%s%x", "file", a3);
    }

    else if (*(v12 + 7519) && *(v12 + 260) > 0)
    {
      v16 = *(v12 + 11792);
      if (v16)
      {
        v17 = *v16;
        if (*v16)
        {
          v18 = 0;
          v19 = 0;
          do
          {
            *(v12 + 5432 + 8 * v18) = v17;
            v18 = ++v19;
            v17 = *(*(v12 + 11792) + 8 * v19);
          }

          while (v17);
        }
      }

      v20 = BET3FXD__InitVData(__dst, (v12 + 8112), v12 + 128);
      if ((v20 & 0x80000000) != 0)
      {
        VData = v20;
      }

      else
      {
        VData = BET3FXD__LoadVData(__dst, (v12 + 8112), v12 + 128);
        if ((VData & 0x80000000) == 0)
        {
          *(v12 + 12906) = 1;
          *&v22 = 0x100000001;
          *(&v22 + 1) = 0x100000001;
          *(v12 + 12496) = v22;
          *(v12 + 12512) = v22;
          *(v12 + 12528) = 0x100000001;
          *(v12 + 12540) = 1;
          *(v12 + 12556) = v22;
          *(v12 + 12572) = v22;
          *(v12 + 12588) = v22;
          *(v12 + 12604) = v22;
          *(v12 + 12620) = v22;
          *(v12 + 12636) = 1;
          *(v12 + 12640) = 0x100000001;
          *(v12 + 12078) = 33620481;
          *(v12 + 12105) = 1;
          *(v12 + 12083) = 0x101010101010101;
          *(v12 + 12091) = 0x101010101010101;
          *(v12 + 12127) = -1;
          *(v12 + 12131) = -255;
          *(v12 + 12141) = 0x101010101010101;
          *(v12 + 12146) = 0x101010101010101;
          *(v12 + 12249) = 0x101010101010101;
          *(v12 + 12257) = 0x101010101010101;
          *(v12 + 12265) = 0x101010101010101;
          if ((*(v12 + 12432) & 0x80000000) == 0)
          {
            *(v12 + 12107) = 257;
          }

          if ((*(v12 + 12448) & 0x80000000) == 0)
          {
            *(v12 + 12109) = 1;
          }

          if ((*(v12 + 12464) & 0x80000000) == 0)
          {
            *(v12 + 12110) = 1;
          }

          if ((*(v12 + 12468) & 0x80000000) == 0)
          {
            *(v12 + 12111) = 1;
          }

          if ((*(v12 + 12472) & 0x80000000) == 0)
          {
            *(v12 + 12112) = 1;
          }

          if ((*(v12 + 12476) & 0x80000000) == 0)
          {
            *(v12 + 12113) = 1;
          }

          if ((*(v12 + 12396) & 0x80000000) == 0)
          {
            *(v12 + 12101) = 257;
          }

          if ((*(v12 + 12720) & 0x80000000) == 0 || (*(v12 + 12724) & 0x80000000) == 0)
          {
            *(v12 + 12100) = 8;
          }

          if ((*(v12 + 12400) & 0x80000000) == 0)
          {
            *(v12 + 12103) = 257;
          }

          if (*(v12 + 11888))
          {
            *(v12 + 12122) = 9;
          }

          if ((*(v12 + 12496) & 0x80000000) == 0)
          {
            *(v12 + 12141) = 1;
          }

          if ((*(v12 + 12500) & 0x80000000) == 0)
          {
            *(v12 + 12142) = 1;
          }

          if ((*(v12 + 12504) & 0x80000000) == 0)
          {
            *(v12 + 12143) = 1;
          }

          *(v12 + 12152) = 257;
          *(v12 + 12144) = 16843009;
          *(v12 + 12147) = 16843009;
        }
      }
    }

    else
    {
      VData = 2229280772;
      log_OutPublic(*&__dst[2], "SELECT_BET3", 55006, "%s%s");
    }
  }

  else
  {
    log_OutPublic(*&__dst[2], "SELECT_BET3", 55000, 0);
    VData = 2229280778;
  }

  if (v27)
  {
    ssftriff_reader_ObjClose(v27);
    v27 = 0;
  }

  if ((VData & 0x80000000) != 0)
  {
    if ((VData & 0x7FF01FFF) == 0xA200014)
    {
      VData = 2229280772;
    }

    else
    {
      VData = VData;
    }

    select_bet3_loc_VoiceClose_0(__dst, v12);
  }

  else
  {
    *(a4 + 32) = v12;
  }

  return VData;
}

uint64_t select_bet3_loc_ObjcVoiceClose_0(_WORD *a1, int a2, uint64_t a3)
{
  v6 = 0;
  inited = InitRsrcFunction(a1, a2, &v6);
  if ((inited & 0x80000000) == 0)
  {
    select_bet3_loc_VoiceClose_0(v6, *(a3 + 32));
  }

  return inited;
}

uint64_t select_bet3_loc_ParamCheckChange_0(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "frequencyhz"))
  {
    if (*(a1 + 896))
    {
      result = 2229280785;
      goto LABEL_7;
    }
  }

  else if (!strcmp(__s1, "waitfactor") && (LH_atoi(a3) & 0x80000000) != 0)
  {
    result = 2229280783;
LABEL_7:
    *a4 = 0;
    return result;
  }

  return 0;
}

uint64_t select_bet3_loc_ParamLearnChange_0(uint64_t a1, char *__s1, const char *a3)
{
  if (!strcmp(__s1, "frequencyhz"))
  {
    if (*(a1 + 896))
    {
      return 2229280785;
    }

    else
    {
      return 0;
    }
  }

  if (!strcmp(__s1, "rate") || !strcmp(__s1, "waitfactor"))
  {
    v11 = 0;
    if (strcmp(__s1, "waitfactor") || (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "finalsentencefound", &v11), v11 != 1))
    {
      v7 = LH_atoi(a3);
      v8 = a1;
      v9 = __s1;
      return select_bet3_loc_ParamSet_0(v8, v9, v7);
    }

    return 0;
  }

  if (strcmp(__s1, "finalsentencefound"))
  {
    return 0;
  }

  if (LH_atou(a3) != 1)
  {
    v10 = 0;
    paramc_ParamGetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", &v10);
    v7 = v10;
    v9 = "waitfactor";
    v8 = a1;
    return select_bet3_loc_ParamSet_0(v8, v9, v7);
  }

  paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", *(a1 + 64));

  return select_bet3_loc_ParamSet_0(a1, "waitfactor", 0);
}

uint64_t select_bet3_loc_SetSynthParams_0(uint64_t a1, uint64_t a2)
{
  v5 = a2 + 7808;
  result = select_bet3_loc_SetSynthParamString(a1, "synth_type", (a2 + 7792));
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamSetPermanent(*(a1 + 40), "mrcc_synthparam_ref_ptr", &v5, 8uLL);
    if ((result & 0x80000000) == 0)
    {
      result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voicealpha", *(a2 + 128));
      if ((result & 0x80000000) == 0)
      {
        result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voicebeta", *(a2 + 132));
        if ((result & 0x80000000) == 0)
        {
          result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voicevol", *(a2 + 164));
          if ((result & 0x80000000) == 0)
          {
            result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voicevuvrelamp", *(a2 + 140));
            if ((result & 0x80000000) == 0)
            {
              result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voicemvfboost", *(a2 + 168));
              if ((result & 0x80000000) == 0)
              {
                result = select_bet3_loc_SetSynthParamString(a1, "bet2voicevsynthinit", *(a2 + 7776));
                if ((result & 0x80000000) == 0)
                {
                  result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voiceframesize", *(a2 + 152));
                  if ((result & 0x80000000) == 0)
                  {
                    result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voiceorder", *(a2 + 144));
                    if ((result & 0x80000000) == 0)
                    {
                      result = select_bet3_loc_SetSynthParamArrayOfBet3_int32_0(a1, *(a2 + 7784), *(a2 + 144) + 1);
                      if ((result & 0x80000000) == 0)
                      {
                        return select_bet3_loc_SetSynthParamInt_0(a1, "voicepitchavghz", *(a2 + 184));
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

  return result;
}

uint64_t select_bet3_loc_ParamSet_0(uint64_t a1, char *__s1, int a3)
{
  if (strcmp(__s1, "waitfactor"))
  {
    return 0;
  }

  if ((a3 & 0x80000000) == 0)
  {
    *(a1 + 64) = a3;
    log_OutText(*(*(a1 + 16) + 32), "SELECT_BET3", 3, 0, "Set wait factor %d", a3);
    return 0;
  }

  return 2229280783;
}

uint64_t select_bet3_ParseRiff_0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, int a7)
{
  v11 = 0;
  v209 = *MEMORY[0x1E69E9840];
  v205 = 0;
  v204 = 0;
  *__src = 0;
  v12 = 5 * a4;
  v176 = a2 + 5192;
  v179 = a2 + 432;
  v180 = a2 + 3992;
  v182 = a2 + 472;
  v177 = a2 + 2792;
  v178 = a2 + 1432;
  v190 = a2 + 392;
  v186 = a2 + 2272;
  v187 = a2 + 352;
  v184 = a2 + 2552;
  v185 = a2 + 2232;
  v188 = a2 + 2312;
  v189 = a2 + 2472;
  v191 = a2 + 12704;
  v193 = a2 + 12376;
  v194 = v12;
  v192 = a2 + 37728;
  v195 = a2 + 11472;
  v181 = a2 + 272;
  v183 = (a2 + 9930);
  while ((v11 & 0x80000000) == 0)
  {
    v11 = ssftriff_reader_OpenChunk(a3, __src, &v205, 0);
    if ((v11 & 0x80000000) != 0)
    {
      break;
    }

    strcpy(&a5[v12], __src);
    if (a4 == 1)
    {
      if (!strcmp(a5, "FEEX"))
      {
        if (!(*__src ^ 0x54414356 | v204))
        {
          *__dst = 0;
          if (a6)
          {
            *__dst = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            ChunkData = ssftriff_reader_GetChunkData(a3, v205, __dst);
            if ((ChunkData & 0x80000000) != 0)
            {
              return ChunkData;
            }
          }

          v13 = a1;
          v14 = a2;
          v15 = a3;
          v16 = 2;
          goto LABEL_590;
        }

        if (!(*__src ^ 0x504F4256 | v204))
        {
          *__dst = 0;
          if (a6)
          {
            v18 = (a6 + ssftriff_reader_GetPosition(a3) - a7);
            *__dst = v18;
          }

          else
          {
            v11 = ssftriff_reader_GetChunkData(a3, v205, __dst);
            if ((v11 & 0x80000000) != 0)
            {
              return v11;
            }

            v18 = *__dst;
          }

          if (v205 >= 0xF8)
          {
            v140 = 248;
          }

          else
          {
            v140 = v205;
          }

          v141 = 11828;
LABEL_625:
          memcpy((a2 + v141), v18, v140);
          goto LABEL_710;
        }

        if (*__src ^ 0x33455250 | v204)
        {
          if (*__src ^ 0x33415254 | v204)
          {
            if (*__src ^ 0x334D4850 | v204)
            {
              goto LABEL_707;
            }

            *__dst = 0;
            if (a6)
            {
              v18 = (a6 + ssftriff_reader_GetPosition(a3) - a7);
              *__dst = v18;
            }

            else
            {
              v11 = ssftriff_reader_GetChunkData(a3, v205, __dst);
              if ((v11 & 0x80000000) != 0)
              {
                return v11;
              }

              v18 = *__dst;
            }

            if (v205 >= 0x100)
            {
              v140 = 256;
            }

            else
            {
              v140 = v205;
            }

            v141 = 7484;
            goto LABEL_625;
          }

          *__dst = 0;
          if (a6)
          {
            *__dst = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            v11 = ssftriff_reader_GetChunkData(a3, v205, __dst);
            if ((v11 & 0x80000000) != 0)
            {
              return v11;
            }
          }

          v159 = v205;
          if (v205 >= 2)
          {
            v160 = 0;
            do
            {
              if (*(*__dst + 2 * v160) < 8u)
              {
                *(v191 + 4 * *(*__dst + 2 * v160)) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown transition feature: %u for %s", *(*__dst + 2 * v160), a2);
                v159 = v205;
              }

              ++v160;
            }

            while (v159 >> 1 > v160);
          }
        }

        else
        {
          *__dst = 0;
          if (a6)
          {
            *__dst = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            v11 = ssftriff_reader_GetChunkData(a3, v205, __dst);
            if ((v11 & 0x80000000) != 0)
            {
              return v11;
            }
          }

          v155 = v205;
          if (v205 >= 2)
          {
            v156 = 0;
            do
            {
              if (*(*__dst + 2 * v156) < 0x47u)
              {
                *(v193 + 4 * *(*__dst + 2 * v156)) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown preselection feature: %u for %s", *(*__dst + 2 * v156), a2);
                v155 = v205;
              }

              ++v156;
            }

            while (v155 >> 1 > v156);
          }
        }
      }

      else
      {
        if (!strcmp(a5, "STM3"))
        {
          v207[0] = 0;
          v19 = *(a2 + 260);
          if (*__src ^ 0x33435453 | v204)
          {
            if (!(*__src ^ 0x33455254 | v204))
            {
              v128 = v184;
              goto LABEL_586;
            }

            if (*__src ^ 0x33464450 | v204)
            {
              if (*__src ^ 0x334E4957 | v204)
              {
                if (*__src ^ 0x334B4243 | v204)
                {
                  goto LABEL_707;
                }

                v128 = v176;
LABEL_586:
                v129 = v128 + 24 * v19;
              }

              else
              {
                v154 = *(v179 + 4 * v19);
                v129 = v180 + 120 * v19 + 24 * v154;
                *(v179 + 4 * v19) = v154 + 1;
              }
            }

            else
            {
              *__s1 = 0;
              if (a6)
              {
                v139 = a6 + ssftriff_reader_GetPosition(a3) - a7;
                *__s1 = v139;
              }

              else
              {
                v125 = ssftriff_reader_GetChunkData(a3, v205, __s1);
                if ((v125 & 0x80000000) != 0)
                {
LABEL_679:
                  v11 = v125;
                  v120 = 1;
                  v175 = v125;
                  goto LABEL_719;
                }

                v139 = *__s1;
              }

              v207[0] = 256;
              LODWORD(v11) = ssftriff_reader_ReadStringZ(a3, v139, v205, 0, __dst, v207);
              if ((v11 & 0x80000000) != 0)
              {
                v129 = 0;
              }

              else
              {
                v161 = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
                v162 = *(v182 + 4 * v19);
                *(v178 + 40 * v19 + 8 * v162) = v161;
                if ((v207[0] & 3) != 0)
                {
                  v207[0] -= v207[0] | 0xFFFFFFFC;
                }

                v129 = v177 + 120 * v19 + 24 * v162;
                *(v182 + 4 * v19) = v162 + 1;
              }
            }

            if ((v11 & 0x80000000) == 0 && v129)
            {
              *__dst = 0;
              if (a6)
              {
                v163 = a6 + ssftriff_reader_GetPosition(a3) - a7;
              }

              else
              {
                v164 = ssftriff_reader_GetChunkData(a3, v205, __dst);
                v11 = v164;
                if ((v164 & 0x80000000) != 0)
                {
                  v120 = 1;
                  v175 = v164;
                  v12 = v194;
LABEL_719:
                  if (v120 != 3)
                  {
                    return v175;
                  }

                  break;
                }

                v163 = *__dst;
              }

              v165 = v207[0];
              *(v129 + 8) = v163 + v207[0];
              *(v129 + 16) = v205 - v165;
            }

LABEL_706:
            v12 = v194;
            goto LABEL_710;
          }

          LODWORD(__s) = 0;
          *__s1 = 0;
          if (a6)
          {
            v124 = a6 + ssftriff_reader_GetPosition(a3) - a7;
            *__s1 = v124;
          }

          else
          {
            v142 = ssftriff_reader_GetChunkData(a3, v205, __s1);
            v11 = v142;
            if ((v142 & 0x80000000) != 0)
            {
              v120 = 1;
              v175 = v142;
LABEL_691:
              v12 = v194;
              goto LABEL_719;
            }

            v124 = *__s1;
          }

          v143 = v207[0];
          *(v187 + 4 * v19) = *(v124 + v207[0]);
          v207[0] = v143 + 4;
          v144 = *(v124 + v143 + 4);
          *(v190 + 4 * v19) = v144;
          v207[0] = v143 + 8;
          *(v186 + 4 * v19) = *(v124 + v143 + 8) != 0;
          v207[0] = v143 + 9;
          *(v185 + 4 * v19) = *(v124 + v143 + 9);
          v145 = v143 + 13;
          v207[0] = v143 + 13;
          if (v144 >= 1)
          {
            v146 = heap_Calloc(*(a1 + 8), v144, 8);
            *(v189 + 8 * v19) = v146;
            if (!v146)
            {
              LODWORD(v11) = -2065686518;
            }

            if ((v11 & 0x80000000) != 0)
            {
              goto LABEL_706;
            }

            v147 = heap_Calloc(*(a1 + 8), *(v190 + 4 * v19), 8);
            *(v188 + 8 * v19) = v147;
            LODWORD(v11) = -2065686518;
            if (!v147)
            {
              goto LABEL_706;
            }

            v124 = *__s1;
            v145 = v207[0];
          }

          __dst[0] = 0;
          LODWORD(__s) = 256;
          LODWORD(v11) = ssftriff_reader_ReadStringZ(a3, v124, v205, v145, __dst, &__s);
          if ((v11 & 0x80000000) == 0)
          {
            v148 = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
            *(v181 + 8 * v19) = v148;
            if (!v148)
            {
              v120 = 3;
              v11 = 2229280778;
              goto LABEL_691;
            }

            v207[0] += __s;
            if (*(v190 + 4 * v19) >= 1)
            {
              v149 = 0;
              while (1)
              {
                __dst[0] = 0;
                LODWORD(__s) = 256;
                StringZ = ssftriff_reader_ReadStringZ(a3, *__s1, v205, v207[0], __dst, &__s);
                if (StringZ < 0)
                {
                  break;
                }

                *(*(v189 + 8 * v19) + 8 * v149) = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
                if (!*(*(v189 + 8 * v19) + 8 * v149))
                {
                  goto LABEL_703;
                }

                v207[0] += __s;
                __dst[0] = 0;
                LODWORD(__s) = 256;
                LODWORD(v11) = ssftriff_reader_ReadStringZ(a3, *__s1, v205, v207[0], __dst, &__s);
                if ((v11 & 0x80000000) != 0)
                {
                  goto LABEL_706;
                }

                *(*(v188 + 8 * v19) + 8 * v149) = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
                if (!*(*(v188 + 8 * v19) + 8 * v149))
                {
LABEL_703:
                  LODWORD(v11) = -2065686518;
                  goto LABEL_706;
                }

                v207[0] += __s;
                if (++v149 >= *(v190 + 4 * v19))
                {
                  goto LABEL_706;
                }
              }

              LODWORD(v11) = StringZ;
            }
          }

          goto LABEL_706;
        }

        if (*__src ^ 0x434E5953 | v204)
        {
          goto LABEL_707;
        }

        v207[0] = 0;
        *__s1 = 0;
        if (a6)
        {
          v17 = a6 + ssftriff_reader_GetPosition(a3) - a7;
          *__s1 = v17;
        }

        else
        {
          v125 = ssftriff_reader_GetChunkData(a3, v205, __s1);
          if ((v125 & 0x80000000) != 0)
          {
            goto LABEL_679;
          }

          v17 = *__s1;
        }

        __dst[0] = 0;
        v207[0] = 256;
        v11 = ssftriff_reader_ReadStringZ(a3, v17, v205, 0, __dst, v207);
        if ((v11 & 0x80000000) != 0)
        {
LABEL_582:
          v120 = 3;
          goto LABEL_719;
        }

        if (*__dst == 0x59545F48544E5953 && *&__dst[3] == 0x455059545F4854)
        {
          v127 = v207[0];
          v207[0] = 256;
          v11 = ssftriff_reader_ReadStringZ(a3, *__s1, v205, v127, __dst, v207);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_582;
          }

          __strcpy_chk();
        }
      }
    }

    else if (a4)
    {
      if (strcmp(a5, "FEEX") || strcmp(a5 + 5, "VCAT"))
      {
LABEL_707:
        v167 = 0;
        __dst[0] = 0;
        do
        {
          __strcat_chk();
          __strcat_chk();
          ++v167;
        }

        while (a4 >= v167);
        log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown data: %s for %s", __dst, a2);
        goto LABEL_710;
      }

      *__dst = 0;
      if (a6)
      {
        *__dst = a6 + ssftriff_reader_GetPosition(a3) - a7;
      }

      else
      {
        v11 = ssftriff_reader_GetChunkData(a3, v205, __dst);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }
      }

      if (*__src ^ 0x48504C41 | v204)
      {
        if (*__src ^ 0x43494F56 | v204)
        {
          if (*__src ^ 0x4F564F43 | v204)
          {
            if (*__src ^ 0x45464153 | v204)
            {
              if (*__src ^ 0x534F4C50 | v204)
              {
                if (*__src ^ 0x46464944 | v204)
                {
                  if (*__src ^ 0x464E4547 | v204)
                  {
                    if (*__src ^ 0x41474154 | v204)
                    {
                      if (*__src ^ 0x414F5442 | v204)
                      {
                        goto LABEL_707;
                      }

                      v170 = *__dst;
                      v171 = v205;
                      v172 = 11800;
                    }

                    else
                    {
                      v170 = *__dst;
                      v171 = v205;
                      v172 = 11792;
                    }

                    RiffStringTable = uselect_LoadRiffStringTable(a1, a3, v170, v171, (a2 + v172));
                  }

                  else
                  {
                    RiffStringTable = select_bet3_LoadRiffGenericFeatureMap(a1, a3, *__dst, v205, (a2 + 12664), (a2 + 12672), (a2 + 12680));
                  }

                  goto LABEL_702;
                }

                *__s1 = 64;
                v151 = *__dst;
                v152 = v205;
                v153 = 11728;
              }

              else
              {
                *__s1 = 257;
                v151 = *__dst;
                v152 = v205;
                v153 = 10701;
              }
            }

            else
            {
              *__s1 = 257;
              v151 = *__dst;
              v152 = v205;
              v153 = 10958;
            }
          }

          else
          {
            *__s1 = 257;
            v151 = *__dst;
            v152 = v205;
            v153 = 10444;
          }
        }

        else
        {
          *__s1 = 257;
          v151 = *__dst;
          v152 = v205;
          v153 = 10187;
        }

        RiffStringTable = ssftriff_reader_ReadStringZ(a3, v151, v152, 0, (a2 + v153), __s1);
LABEL_702:
        LODWORD(v11) = RiffStringTable;
        goto LABEL_710;
      }

      *__s1 = 257;
      LODWORD(v11) = ssftriff_reader_ReadStringZ(a3, *__dst, v205, 0, v183, __s1);
      if ((v11 & 0x80000000) == 0)
      {
        *(v183 + 947) = 255;
        if (*v183)
        {
          v131 = 0;
          v132 = 0;
          v133 = 0;
          v134 = 255;
          do
          {
            v135 = v183[v132];
            if (v135 >= v134)
            {
              v136 = v183[v132];
            }

            else
            {
              v183[1894] = v135;
              v136 = v183[v132];
              v134 = v135;
            }

            if (v136 <= v131)
            {
              v137 = v136;
            }

            else
            {
              v183[1895] = v136;
              v137 = v183[v132];
              v131 = v136;
            }

            *(v195 + v137) = v133;
            v132 = (v133 + 1);
            v138 = strlen(v183);
            v133 = v132;
          }

          while (v138 > v132);
        }
      }

      v12 = v194;
    }

    else if (*__src ^ 0x47464356 | v204)
    {
      if (*__src ^ 0x41555145 | v204)
      {
        if (!(*__src ^ 0x58454546 | v204))
        {
          goto LABEL_11;
        }

        if (*__src ^ 0x334D5453 | v204)
        {
          if (*__src ^ 0x544E5953 | v204)
          {
            goto LABEL_707;
          }

LABEL_11:
          v13 = a1;
          v14 = a2;
          v15 = a3;
          v16 = 1;
LABEL_590:
          LODWORD(v11) = select_bet3_ParseRiff_0(v13, v14, v15, v16, a5, 0, 0);
          goto LABEL_710;
        }

        v121 = v12;
        Position = ssftriff_reader_GetPosition(a3);
        *__dst = 0;
        v123 = ssftriff_reader_DetachChunkData(a3, (v192 + 8 * *(a2 + 37936)), __dst);
        if (v123 < 0)
        {
          LODWORD(v11) = v123;
        }

        else
        {
          ++*(a2 + 37936);
          LODWORD(v11) = select_bet3_ParseRiff_0(a1, a2, a3, 1u, a5, *__dst, Position);
          ++*(a2 + 260);
        }

        v12 = v121;
      }

      else
      {
        LODWORD(v11) = ssftriff_reader_DetachChunkData(a3, (v192 + 8 * *(a2 + 37936)), (a2 + 7784));
        if ((v11 & 0x80000000) == 0)
        {
          ++*(a2 + 37936);
        }
      }
    }

    else
    {
      v202 = 0;
      *v200 = 0;
      __s = 0;
      if (a6)
      {
        *v200 = a6 + ssftriff_reader_GetPosition(a3) - a7;
      }

      else
      {
        v20 = ssftriff_reader_GetChunkData(a3, v205, v200);
        v11 = v20;
        if ((v20 & 0x80000000) != 0)
        {
          v120 = 1;
          v175 = v20;
          goto LABEL_719;
        }
      }

      v21 = BET3FLT__heap_StrDup(*(a1 + 8), "PHRASE");
      *(a2 + 208) = v21;
      if (!v21)
      {
        v120 = 3;
        v11 = 2229280778;
        v12 = v194;
        goto LABEL_719;
      }

      *(a2 + 216) = 1000;
      v22 = v205;
      if (v205)
      {
        v23 = 0;
        do
        {
          __dst[0] = 0;
          __s1[0] = 0;
          v202 = 64;
          LODWORD(v11) = ssftriff_reader_ReadStringZ(a3, *v200, v22, v23, __s1, &v202);
          if ((v11 & 0x80000000) == 0 && v23 < v205)
          {
            v23 += v202;
            v202 = 256;
            LODWORD(v11) = ssftriff_reader_ReadStringZ(a3, *v200, v205, v23, __dst, &v202);
          }

          if ((v11 & 0x80000000) != 0)
          {
            break;
          }

          v198 = v202;
          strcpy(v207, "bet3voiceoverride.");
          __strcat_chk();
          if ((paramc_ParamGetStr(*(a1 + 40), v207, &__s) & 0x80000000) != 0 || (v24 = __s) == 0 || !*__s)
          {
            v24 = __dst;
            __s = __dst;
          }

          if (*__s1 == 1213221953 && *&__s1[4] == 65)
          {
            *(a2 + 128) = LH_atoi(v24);
          }

          if (!(*__s1 ^ 0x41544542 | __s1[4]))
          {
            *(a2 + 132) = LH_atoi(__s);
          }

          if (*__s1 == 0x5F4C45525F565556 && *&__s1[8] == 5262657)
          {
            *(a2 + 140) = LH_atoi(__s);
          }

          if (*__s1 == 5001046)
          {
            *(a2 + 164) = LH_atoi(__s);
          }

          if (*__s1 == 0x534F4F425F46564DLL && *&__s1[8] == 84)
          {
            *(a2 + 168) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x5346 | __s1[2]))
          {
            *(a2 + 136) = LH_atoi(__s);
          }

          if (*__s1 == 1162105423 && *&__s1[4] == 82)
          {
            *(a2 + 144) = LH_atoi(__s);
          }

          if (*__s1 == 0x49535F454D415246 && *&__s1[3] == 0x455A49535F454DLL)
          {
            *(a2 + 152) = LH_atoi(__s);
          }

          if (*__s1 == 0x465F484345455053 && *&__s1[7] == 0x4E41454D5F3046)
          {
            *(a2 + 184) = LH_atoi(__s);
          }

          if (*__s1 == 0x495241565F464450 && *&__s1[8] == 0x5059545F45434E41 && *&__s1[16] == 69)
          {
            *(a2 + 200) = LH_atoi(__s);
          }

          if (*__s1 == 0x52454B41455242)
          {
            v33 = *(a2 + 208);
            if (v33)
            {
              heap_Free(*(a1 + 8), v33);
            }

            v34 = BET3FLT__heap_StrDup(*(a1 + 8), __s);
            *(a2 + 208) = v34;
            if (!v34)
            {
              LODWORD(v11) = -2065686518;
              break;
            }
          }

          if (*__s1 == 0x474E454C5F4B5242 && *&__s1[3] == 0x4854474E454C5FLL)
          {
            *(a2 + 216) = LH_atoi(__s);
          }

          if (*__s1 == 1598771778 && *&__s1[3] == 4412511)
          {
            *(a2 + 220) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x4441505A5F4B5242 | __s1[8]))
          {
            *(a2 + 224) = LH_atoi(__s);
          }

          if (*__s1 == 0x54535F4E474C41)
          {
            *(a2 + 240) = LH_atoi(__s) != 0;
          }

          if (*__s1 == 0x48505F4E474C41)
          {
            *(a2 + 244) = LH_atoi(__s) != 0;
          }

          if (*__s1 == 1314476886 && *&__s1[3] == 4740174)
          {
            *(a2 + 7776) = BET3FLT__heap_StrDup(*(a1 + 8), __s);
          }

          if (*__s1 == 1398031942 && *&__s1[4] == 90)
          {
            *(a2 + 7808) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E41454D5F4E45)
          {
            *(a2 + 7812) = LH_atoi(__s);
          }

          if (*__s1 == 0x5F4E455F44454546 && *&__s1[8] == 0x4F4F4C5F4E41454DLL && *&__s1[15] == 0x44414548414B4FLL)
          {
            *(a2 + 7820) = LH_atoi(__s);
          }

          if (*__s1 == 0x56555F544E554F43 && *&__s1[8] == 0x434E41545349445FLL && *&__s1[16] == 69)
          {
            *(a2 + 7816) = LH_atoi(__s);
          }

          if (*__s1 == 0x525F454C504D4153 && *&__s1[8] == 4543553)
          {
            *(a2 + 7824) = LH_atoi(__s);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[6] == 0x594752454E455FLL)
          {
            *(a2 + 7828) = LH_atoi(__s);
          }

          if (*__s1 == 0x535F524150504D41 && *&__s1[8] == 4545097)
          {
            *(a2 + 7832) = LH_atoi(__s);
          }

          if (*__s1 == 0x465F524150435053 && *&__s1[8] == 0x50524157514552)
          {
            *(a2 + 7836) = LH_atoi(__s);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x415F45434E41484ELL && *&__s1[13] == 0x4148504C415F45)
          {
            *(a2 + 7840) = LH_atoi(__s);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x415F45434E41484ELL && *&__s1[16] == 0x564E555F4148504CLL && *&__s1[22] == 0x444543494F564ELL)
          {
            *(a2 + 7844) = LH_atoi(__s);
          }

          if (*__s1 == 0x49535F454D415246 && *&__s1[8] == 0x4343524D5F455ALL)
          {
            *(a2 + 7848) = LH_atoi(__s);
          }

          if (*__s1 == 0x5F5348505F4E5953 && *&__s1[8] == 0x555F504152545845 && *&__s1[11] == 0x4553555F504152)
          {
            *(a2 + 7852) = LH_atoi(__s);
          }

          if (*__s1 == 0x53494F4E5F4E5953 && *&__s1[8] == 0x545F514552465F45 && *&__s1[16] == 72)
          {
            *(a2 + 7856) = LH_atoi(__s);
          }

          if (*__s1 == 0x514552465F4E5953 && *&__s1[8] == 0x53555F4553494F4ELL && *&__s1[16] == 69)
          {
            *(a2 + 7860) = LH_atoi(__s);
          }

          if (*__s1 == 0x514552465F4E5953 && *&__s1[8] == 0x564D5F4553494F4ELL && *&__s1[14] == 0x4553555F46564DLL)
          {
            *(a2 + 7864) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x514552465F4E5953 | *&__s1[8] ^ 0x4F4C5F4553494F4ELL | __s1[16]))
          {
            *(a2 + 7868) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x514552465F4E5953 | *&__s1[8] ^ 0x49485F4553494F4ELL | __s1[16]))
          {
            *(a2 + 7872) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x494E555F4553494FLL && *&__s1[13] == 0x4D524F46494E55)
          {
            *(a2 + 7876) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x4E5855415F4E5953 | *&__s1[8] ^ 0x4553555F4553494FLL | __s1[16]))
          {
            *(a2 + 7880) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x46564D5F4553494FLL && *&__s1[13] == 0x4553555F46564DLL)
          {
            *(a2 + 7884) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x58494D5F4553494FLL && *&__s1[16] == 0x4F4C5F4D524148)
          {
            *(a2 + 7888) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x58494D5F4553494FLL && *&__s1[16] == 0x49485F4D524148)
          {
            *(a2 + 7892) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5345525F4553494FLL && *&__s1[16] == 5196895)
          {
            *(a2 + 7896) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5345525F4553494FLL && *&__s1[16] == 4802655)
          {
            *(a2 + 7900) = LH_atoi(__s);
          }

          if (*__s1 == 0x47494C415F4E5953 && *&__s1[8] == 0x46464F5455435F4ELL && *&__s1[14] == 0x514552465F4646)
          {
            *(a2 + 7904) = LH_atoi(__s);
          }

          if (*__s1 == 0x554245445F4E5953 && *&__s1[8] == 0x45434F52505F5A5ALL && *&__s1[15] == 0x46564D5F535345)
          {
            *(a2 + 7908) = LH_atoi(__s);
          }

          if (*__s1 == 0x415F524150504D41 && *&__s1[8] == 0x455441554E455454 && *&__s1[16] == 5657951)
          {
            *(a2 + 7912) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x50494B535F4E5953 | *&__s1[8] ^ 0x41485F4B4145575FLL | *&__s1[16] ^ 0x4F495441525F4D52 | __s1[24]))
          {
            *(a2 + 7916) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_SMOOTH_WIN"))
          {
            *(a2 + 7940) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_THR"))
          {
            *(a2 + 7944) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_RATIO_EN_THR"))
          {
            *(a2 + 7948) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_MVF_THR"))
          {
            *(a2 + 7952) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_BY_LOW_EN"))
          {
            *(a2 + 7956) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_BY_RATIO_EN"))
          {
            *(a2 + 7960) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x305F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7964) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x315F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7968) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x325F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7972) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x335F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7976) = LH_atoi(__s);
          }

          if (*__s1 == 0x425F524150504D41 && *&__s1[8] == 5461065)
          {
            *(a2 + 7980) = LH_atoi(__s);
          }

          if (*__s1 == 0x555F524150534850 && *&__s1[3] == 0x4553555F524150)
          {
            *(a2 + 7984) = LH_atoi(__s);
          }

          if (*__s1 == 0x555F524150504D41 && *&__s1[3] == 0x4553555F524150)
          {
            *(a2 + 7988) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x32474F4C5F455355 | __s1[8]))
          {
            *(a2 + 7992) = LH_atoi(__s);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x505F45434E41484ELL && *&__s1[14] == 0x435053574F505FLL)
          {
            *(a2 + 7996) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[15] == 0x455441554E4554)
          {
            *(a2 + 8000) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[16] == 0x4C5F455441554E45 && *&__s1[24] == 79)
          {
            *(a2 + 8004) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[16] == 0x485F455441554E45 && *&__s1[24] == 73)
          {
            *(a2 + 8008) = LH_atoi(__s);
          }

          if (*__s1 == 0x4C5050415F4E5953 && *&__s1[8] == 0x504D4545445F59)
          {
            *(a2 + 8012) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x525F49485F4E5953 | *&__s1[8] ^ 0x4E47494C415F5345 | __s1[16]))
          {
            *(a2 + 8016) = LH_atoi(__s);
          }

          if (*__s1 == 0x545341465F4E5953 && *&__s1[8] == 0x5241485F5855415FLL && *&__s1[16] == 77)
          {
            *(a2 + 8020) = LH_atoi(__s);
          }

          if (*__s1 == 0x5F5849465F4E5953 && *&__s1[8] == 4279375)
          {
            *(a2 + 8024) = LH_atoi(__s);
          }

          if (*__s1 == 0x475F43445F4E5953 && *&__s1[8] == 0x494F565F44524155 && *&__s1[16] == 4474179)
          {
            *(a2 + 8028) = LH_atoi(__s);
          }

          if (*__s1 == 0x475F43445F4E5953 && *&__s1[8] == 0x564E555F44524155 && *&__s1[14] == 0x444543494F564ELL)
          {
            *(a2 + 8032) = LH_atoi(__s);
          }

          if (*__s1 == 0x5551594E5F4E5953 && *&__s1[8] == 0x524155475F545349 && *&__s1[16] == 68)
          {
            *(a2 + 8036) = LH_atoi(__s);
          }

          if (*__s1 == 0x535F524150534850 && *&__s1[8] == 4545097)
          {
            *(a2 + 8040) = LH_atoi(__s);
          }

          if (*__s1 == 0x465F524150534850 && *&__s1[8] == 5261644)
          {
            *(a2 + 8044) = LH_atoi(__s);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x4F4E5F594752454ELL && *&__s1[14] == 0x48545F4D524F4ELL)
          {
            *(a2 + 8048) = LH_atoi(__s);
          }

          if (*__s1 == 0x465F524150435053 && *&__s1[8] == 0x5F50524157514552 && *&__s1[14] == 0x4148504C415F50)
          {
            *(a2 + 8052) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x5F5348505F4E5953 | *&__s1[8] ^ 0x49575F4E47494C41 | *&__s1[16] ^ 0x54534E4F435F4854 | __s1[24]))
          {
            *(a2 + 8056) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x4E5855415F4E5953 | *&__s1[8] ^ 0x524F4E5F4553494FLL | *&__s1[16] ^ 0x4C41424F4C475F4DLL | __s1[24]))
          {
            *(a2 + 8060) = LH_atoi(__s);
          }

          if (*__s1 == 0x4D4545445F4E5953 && *&__s1[7] == 0x46454F435F504DLL)
          {
            *(a2 + 8064) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x5F4553555F4E5953 | *&__s1[8] ^ 0x4F4D5F4553494F4ELL | *&__s1[16] ^ 0x4E4F4954414C5544 | __s1[24]))
          {
            *(a2 + 8068) = LH_atoi(__s);
          }

          if (*__s1 == 0x53494F4E5F4E5953 && *&__s1[8] == 0x414C55444F4D5F45 && *&__s1[16] == 0x4341465F4E4F4954 && *&__s1[24] == 5394260)
          {
            *(a2 + 8072) = LH_atoi(__s);
          }

          if (*__s1 == 0x4D4152465F58414DLL && *&__s1[7] == 0x455A49535F454DLL)
          {
            *(a2 + 8076) = LH_atoi(__s);
          }

          if (*__s1 == 0x4D4152465F4E494DLL && *&__s1[7] == 0x455A49535F454DLL)
          {
            *(a2 + 8080) = LH_atoi(__s);
          }

          if (*__s1 == 0x5F5446465F4E494DLL && *&__s1[5] == 0x455A49535F5446)
          {
            *(a2 + 8084) = LH_atoi(__s);
          }

          if (*__s1 == 0x49535F454D415246 && *&__s1[8] == 0x4E5F434E495F455ALL && *&__s1[11] == 0x4D554E5F434E49)
          {
            *(a2 + 8088) = LH_atoi(__s);
          }

          if (*__s1 == 0x49535F454D415246 && *&__s1[8] == 0x4E5F4345445F455ALL && *&__s1[11] == 0x4D554E5F434544)
          {
            *(a2 + 8092) = LH_atoi(__s);
          }

          if (*__s1 == 0x5446465F4C414E41 && *&__s1[6] == 0x455A49535F5446)
          {
            *(a2 + 8096) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x455A49535F544646 | __s1[8]))
          {
            *(a2 + 8100) = LH_atoi(__s);
          }

          v23 += v198;
          v22 = v205;
        }

        while (v23 < v205);
      }

      *(a2 + 160) = 0;
      *(a2 + 172) = 0;
      *(a2 + 176) = 0;
      strcpy(v207, "bet3voiceoverride.");
      __strcat_chk();
      if ((paramc_ParamGetStr(*(a1 + 40), v207, &__s) & 0x80000000) == 0)
      {
        v157 = *(a2 + 208);
        if (v157)
        {
          heap_Free(*(a1 + 8), v157);
          *(a2 + 208) = 0;
        }

        v158 = BET3FLT__heap_StrDup(*(a1 + 8), __s);
        *(a2 + 208) = v158;
        if (!v158)
        {
          v120 = 3;
          v11 = 2229280778;
          v12 = v194;
          goto LABEL_719;
        }
      }

      strcpy(v207, "bet3voiceoverride.");
      __strcat_chk();
      if ((paramc_ParamGetStr(*(a1 + 40), v207, &__s) & 0x80000000) == 0)
      {
        *(a2 + 216) = LH_atoi(__s);
      }

      v12 = v194;
    }

LABEL_710:
    v168 = ssftriff_reader_CloseChunk(a3);
    if (v11 > -1 && v168 < 0)
    {
      v11 = v168;
    }

    else
    {
      v11 = v11;
    }
  }

  if ((v11 & 0x1FFF) == 0x14)
  {
    v173 = 0;
  }

  else
  {
    v173 = v11;
  }

  if ((v173 & 0x80000000) == 0)
  {
    a5[v12] = 0;
    return v173;
  }

  return v11;
}

void *select_bet3_loc_VoiceClose_0(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 11792);
    if (v4 && *v4)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        *(a2 + 5432 + 8 * v5) = 0;
        v4 = *(a2 + 11792);
        v5 = v6;
      }

      while (v4[v6++]);
    }

    uselect_FreeRiffStringTable(result, v4);
    uselect_FreeRiffStringTable(v3, *(a2 + 11800));
    v8 = *(a2 + 12664);
    v9 = *(a2 + 12672);
    v10 = *(a2 + 12680);
    if (v8)
    {
      v11 = *v8;
      if (*v8)
      {
        v12 = 0;
        do
        {
          heap_Free(v3[1], v11);
          v11 = v8[++v12];
        }

        while (v11);
      }

      heap_Free(v3[1], v8);
    }

    if (v9)
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = 0;
        v15 = v9;
        do
        {
          v16 = *v13;
          if (*v13)
          {
            v17 = 0;
            do
            {
              heap_Free(v3[1], v16);
              ++v17;
              v13 = *v15;
              v16 = (*v15)[v17];
            }

            while (v16);
          }

          heap_Free(v3[1], v13);
          v15 = &v9[++v14];
          v13 = *v15;
        }

        while (*v15);
      }

      heap_Free(v3[1], v9);
    }

    if (v10)
    {
      v18 = *v10;
      if (*v10)
      {
        v19 = 0;
        do
        {
          heap_Free(v3[1], v18);
          v18 = v10[++v19];
        }

        while (v18);
      }

      heap_Free(v3[1], v10);
    }

    BET3FXD__DeInitVData(v3, a2 + 8112);
    BET3FLT__DeInitVParam(v3, (a2 + 128));
    if (*(a2 + 37936))
    {
      v20 = 0;
      do
      {
        ssftriff_reader_ReleaseChunkData(*(a2 + 37728 + 8 * v20++));
      }

      while (v20 < *(a2 + 37936));
    }

    *(a2 + 37936) = 0;
    *a2 = 0;
    v21 = v3[1];

    return heap_Free(v21, a2);
  }

  return result;
}

uint64_t select_bet3_loc_SetSynthParamString(uint64_t a1, const char *a2, char *a3)
{
  v6 = paramc_ParamSetStr(*(a1 + 40), a2, a3);
  if ((v6 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%s%s%x", "parameter", a2, "value", a3, "lhError", v6);
  }

  return v6;
}

uint64_t select_bet3_loc_SetSynthParamInt_0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = paramc_ParamSetInt(*(a1 + 40), a2, a3);
  if ((v6 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%d%s%x", "parameter", a2, "value", v3, "lhError", v6);
  }

  return v6;
}

uint64_t select_bet3_loc_SetSynthParamArrayOfBet3_int32_0(uint64_t a1, void *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = paramc_ParamSet(*(a1 + 40), "bet3cepstralequalizer", a2, (4 * a3));
  if ((v6 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%p%s%d%s%d", "parameter", "bet3cepstralequalizer", "{arrayPtr}", a2, "size", a3, "lhError", v6);
  }

  return v6;
}

uint64_t BET3FXD__ParamGenStart(uint64_t a1, int *a2, int *a3)
{
  v6 = *a1;
  v7 = *(a1 + 632);
  if (v7)
  {
    heap_Free(*(v6 + 8), v7);
    *(a1 + 632) = 0;
  }

  v8 = *(a1 + 640);
  if (v8)
  {
    heap_Free(*(v6 + 8), v8);
    *(a1 + 640) = 0;
  }

  result = BET3FXD__InitUttModel(v6, (a1 + 56), a2, *(*(a1 + 8) + 10));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  *(a1 + 16) = *(a3 + 16);
  v10 = a3[7];
  if (v10 >= 1)
  {
    v11 = *(a1 + 620);
    if (v10 < v11)
    {
      BET3FXD__log_select_Error(v6, 55018, "Specified length of generated speech is too short (this sentence is composed from %d states), specify more than %d milliseconds\n", *(a1 + 620), a3[2] * v11 * a3[6] / a3[2]);
      return 2229280775;
    }
  }

  if (*(a1 + 608) < 1)
  {
    goto LABEL_70;
  }

  v12 = 0;
  v64 = 0;
  v65 = 0;
  v61 = *(*(a1 + 8) + 1784);
  v68 = a3 + 86;
  v60 = a3 + 326;
  v13 = a3 + 1326;
  v67 = a2 + 198;
  v66 = a3;
  v14 = *(a1 + 32);
  v58 = -8388608;
  do
  {
    v62 = v12;
    v15 = (*(a1 + 600) + 528 * v12);
    if (v14 >= 1)
    {
      v16 = 0;
      v17 = v60;
      do
      {
        v18 = v68[v16];
        if (v18 < 1)
        {
LABEL_20:
          LODWORD(v19) = 0;
        }

        else
        {
          v19 = 0;
          v20 = *(*(*(a1 + 8) + 248) + *v15);
          while (1)
          {
            v21 = *&v17[2 * v19];
            if (v21)
            {
              v22 = *&v13[2 * v20];
              if (v22)
              {
                if (!strcmp(v21, v22))
                {
                  break;
                }
              }
            }

            if (v18 == ++v19)
            {
              goto LABEL_20;
            }
          }
        }

        v15[v16++ + 8] = v19;
        v17 += 10;
      }

      while (v16 < *(a1 + 32));
    }

    v57 = *v15;
    BET3FXD__log_select_Diag(v6, 21, "[phoneme %d]\n");
    v23 = v62;
    if (v61)
    {
      if (v66[29])
      {
        v15[2] = BET3FLT__TreeSearch(*(a1 + 8), v62, (a2 + 152), 0, 0);
        BET3FXD__log_select_Diag(v6, 6, "DUR pdf id %d\n");
        result = BET3FXD__FindDurPDF(v15, a2, *(a1 + 16), 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v24 = BET3FXD__div_int32_int32_to_Q8_24(*(*(*(a1 + 8) + 1784) + 2 * *v15), v66[6]);
        if (v24)
        {
          v25 = v24;
          if (*a2 < 1)
          {
            v26 = 0;
          }

          else
          {
            v26 = 0;
            v27 = 2;
            do
            {
              v26 += BET3FXD__int32_to_Q12_20(*(*(v15 + 2) + 4 * v27));
              v28 = v27++ <= *a2;
            }

            while (v28);
          }

          v29 = v25 + v58;
          v30 = BET3FXD__div_Q8_24_Q12_20_to_Q8_24(v29, v26);
          v15[6] = 0;
          if (*a2 < 1)
          {
            v37 = 0;
          }

          else
          {
            v31 = v30;
            v32 = *(v15 + 2);
            v33 = 2;
            do
            {
              v34 = BET3FXD__mul_int32_Q8_24_to_Q8_24(*(v32 + 4 * v33), v31);
              v35 = BET3FXD__Q8_24_to_int32(v34 + 0x7FFFFF);
              if (v35 <= 1)
              {
                v36 = 1;
              }

              else
              {
                v36 = v35;
              }

              v32 = *(v15 + 2);
              *(v32 + 4 * v33) = v36;
              v37 = v15[6] + v36;
              v15[6] = v37;
              v28 = v33++ <= *a2;
            }

            while (v28);
          }

          v58 = v29 - BET3FXD__int32_to_Q8_24(v37);
          v23 = v62;
        }

        goto LABEL_45;
      }

      if (v66[28])
      {
        BET3FXD__log_select_Error(v6, 55017, "State level segmentation is not currently supported\n", v57);
        goto LABEL_46;
      }
    }

    v15[2] = BET3FLT__TreeSearch(*(a1 + 8), v62, (a2 + 152), 0, 0);
    BET3FXD__log_select_Diag(v6, 6, "DUR pdf id %d\n");
    if (v66[7])
    {
      goto LABEL_46;
    }

    result = BET3FXD__FindDurPDF(v15, a2, *(a1 + 16), 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    SetSilenceDuration_0(a1, a2, v66, v15);
LABEL_45:
    *(a1 + 624) += v15[6];
LABEL_46:
    v14 = *(a1 + 32);
    if (v14 >= 1)
    {
      v38 = 0;
      v63 = v15 + 38;
      v39 = v15 + 58;
      do
      {
        v40 = *(a1 + 24) + 312 * v38;
        if (!*(v40 + 264))
        {
          if (*(v40 + 272))
          {
            v41 = *a2 * v23;
            v64 = *(*(a1 + 304 + 8 * v38) + 8 * v41);
            v65 = *(*(a1 + 224 + 8 * v38) + 8 * v41);
          }

          if (*(v67 + v38))
          {
            v42 = 0;
            v43 = 0;
            while (1)
            {
              v44 = *(*&a2[2 * v38 + 178] + v42);
              *(*&v15[2 * v38 + 18] + 4 * v44) = BET3FLT__TreeSearch(*(a1 + 8), *v15, (a2 + 152), v38, v43);
              BET3FXD__log_select_Diag(v6, 6, "%s pdf state %d id %d\n");
              v45 = *(a1 + 24) + 312 * v38;
              if (*(v45 + 272))
              {
                v46 = v44 - 2 + (v44 - 2) * a2[v38 + 1];
                *(*&v63[2 * v38] + 8 * v44) = v65 + 4 * v46;
                *(*&v63[2 * v38] + 8 * v44) -= 4;
                *(*&v39[2 * v38] + 8 * v44) = v64 + 4 * v46;
                *(*&v39[2 * v38] + 8 * v44) -= 4;
                result = BET3FXD__FindMsdPDF(v38, v44, v15, a2, v66);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              else if (*(v45 + 268))
              {
                v47 = *(a1 + 632);
                v48 = *(a1 + 640);
                if (!v47)
                {
                  if (v48)
                  {
                    v47 = 0;
                  }

                  else
                  {
                    v49 = *(a1 + 608) * *(v67 + v38) * *(a2 + 198);
                    v59 = v49 + v49 * *(a2 + 201);
                    v50 = heap_Calloc(*(v6 + 8), v59, 4);
                    *(a1 + 632) = v50;
                    if (!v50)
                    {
                      return 2229280778;
                    }

                    v51 = heap_Calloc(*(v6 + 8), v59, 4);
                    *(a1 + 640) = v51;
                    if (!v51)
                    {
                      return 2229280778;
                    }

                    v48 = v51;
                    *(a1 + 648) = 0;
                    v47 = *(a1 + 632);
                  }
                }

                result = BET3FXD__FindContPDF(v38, v44, v15, a2, v15[v38 + 8], v47, v48, (a1 + 648));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              ++v43;
              v42 += 16;
              if (v43 >= *(v67 + v38))
              {
                v14 = *(a1 + 32);
                v23 = v62;
                break;
              }
            }
          }
        }

        ++v38;
      }

      while (v38 < v14);
    }

    v12 = v23 + 1;
  }

  while (v12 < *(a1 + 608));
  a3 = v66;
  v10 = v66[7];
LABEL_70:
  if (v10 < 1 || (v52 = BET3FXD__int32_to_Q18_14(v10), v53 = BET3FXD__div_Q18_14_Q18_14_to_Q18_14(v52, 0), *(a1 + 16) = BET3FXD__Q18_14_to_Q1_15(v53), *(a1 + 608) < 1))
  {
LABEL_75:
    if (BET3FLT__log_select_GetLogLevel(*(v6 + 32)) >= 0x15)
    {
      OutLabel_0(a1);
    }

    BET3FXD__log_select_Diag(v6, 2, ">> tree search done\n");
    AddBreakMarks_0(a1, a2, a3);

    return ParamGenLT_0(a1, a2);
  }

  else
  {
    v54 = 0;
    v55 = 0;
    while (1)
    {
      v56 = (*(a1 + 600) + v54);
      result = BET3FXD__FindDurPDF(v56, a2, *(a1 + 16), 0);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      SetSilenceDuration_0(a1, a2, a3, v56);
      *(a1 + 624) += v56[6];
      ++v55;
      v54 += 528;
      if (v55 >= *(a1 + 608))
      {
        goto LABEL_75;
      }
    }
  }

  return result;
}

uint64_t SetSilenceDuration_0(uint64_t result, int *a2, uint64_t a3, int *a4)
{
  v4 = *(result + 8);
  v5 = *a4;
  if (*(*(v4 + 32) + v5) == 1)
  {
    v8 = *(*(v4 + 1784) + 2 * v5) / *(a3 + 24);
    LODWORD(v4) = *a2;
    if (v8 <= *a2)
    {
      if (v4 >= 1)
      {
        v13 = (*(a4 + 2) + 8);
        v14 = 1;
        do
        {
          *v13++ = 1;
          ++v14;
        }

        while (v14 <= *a2);
        LODWORD(v4) = *a2;
      }

      a4[6] = v4;
    }

    else
    {
      if (v8 >= a4[6])
      {
        if (v4 < 1)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v12 = 0;
          v11 = 0;
          v15 = *(a4 + 2);
          v16 = 2;
          do
          {
            v17 = *(v15 + 4 * v16);
            if (v17 <= 0)
            {
              v17 = 1;
              *(v15 + 4 * v16) = 1;
              LODWORD(v4) = *a2;
            }

            v18 = v16 == 2 || v16 == v4 + 1;
            if (v18)
            {
              v19 = 0;
            }

            else
            {
              v19 = v17;
            }

            v11 += v19;
            if (!v18)
            {
              v17 = 0;
            }

            v12 += v17;
            v20 = v16++ <= v4;
          }

          while (v20);
        }
      }

      else
      {
        if (v4 >= 1)
        {
          v9 = (*(a4 + 2) + 8);
          v10 = 1;
          do
          {
            *v9++ = 1;
            v4 = *a2;
            ++v10;
          }

          while (v10 <= v4);
        }

        v11 = v4 - 2;
        v12 = 2;
      }

      result = BET3FXD__div_int32_int32_to_Q8_24(v8 - v12, v11);
      a4[6] = v12;
      LODWORD(v21) = *a2;
      if (*a2 >= 3)
      {
        v22 = result;
        v23 = 3;
        do
        {
          if (v23 >= v21)
          {
            result = (v8 - v12);
          }

          else
          {
            result = BET3FXD__mul_int32_Q8_24_to_int32(*(*(a4 + 2) + 4 * v23), v22);
          }

          if (result <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = result;
          }

          *(*(a4 + 2) + 4 * v23) = v24;
          v12 = a4[6] + v24;
          a4[6] = v12;
          v21 = *a2;
          v20 = v23++ < v21;
        }

        while (v20);
      }
    }
  }

  return result;
}

uint64_t OutLabel_0(uint64_t result)
{
  if (*(result + 608) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v1 + 600) + v2;
      result = BET3FXD__log_select_Diag(*v1, 21, "%d %d %d [%d]\n");
      v4 += *(v5 + 24);
      ++v3;
      v2 += 528;
    }

    while (v3 < *(v1 + 608));
  }

  return result;
}

uint64_t AddBreakMarks_0(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a3 + 80);
  result = strcmp(v6, "PHRASE_TIME");
  if (result)
  {
    result = strcmp(v6, "PHRASE");
    if (result)
    {
      result = strcmp(v6, "WORD");
      if (result)
      {
        result = strcmp(v6, "SYLLABLE");
        if (result)
        {
          result = strcmp(v6, "TIME");
          if (result)
          {
            result = strcmp(v6, "NONE");
            if (result)
            {
              v8 = *a1;

              return BET3FXD__log_select_Error(v8, 55036, "valid breaker is required\n");
            }
          }

          else
          {
            v33 = *(a1 + 608);
            if (v33 >= 1)
            {
              v34 = 0;
              v35 = 0;
              v36 = *(a3 + 88);
              v37 = *a2;
              v38 = *(a1 + 600);
              v39 = v36;
              v40 = 0;
              do
              {
                result = v38 + 528 * v34;
                if (v37 >= 1)
                {
                  v41 = (*(result + 16) + 8);
                  v42 = (v37 + 2) - 2;
                  v40 = v35;
                  do
                  {
                    v43 = *v41++;
                    v40 += v43;
                    --v42;
                  }

                  while (v42);
                }

                if (v40 > v39)
                {
                  v39 = v35 + v36;
                  *(result + 4) |= 2u;
                }

                ++v34;
                v35 = v40;
              }

              while (v34 != v33);
            }
          }
        }

        else
        {
          v29 = *(a1 + 608);
          if (v29 >= 3)
          {
            v30 = (v29 - 2);
            v31 = *(a1 + 600);
            v32 = *(*(a1 + 8) + 112);
            do
            {
              if (*(v32 + *v31))
              {
                v31[133] |= 2u;
              }

              v31 += 132;
              --v30;
            }

            while (v30);
          }
        }
      }

      else
      {
        v25 = *(a1 + 608);
        if (v25 >= 3)
        {
          v26 = (v25 - 2);
          v27 = *(a1 + 600);
          v28 = *(*(a1 + 8) + 112);
          do
          {
            if ((*(v28 + *v27) & 0xFE) == 2)
            {
              v27[133] |= 2u;
            }

            v27 += 132;
            --v26;
          }

          while (v26);
        }
      }
    }

    else
    {
      v21 = *(a1 + 608);
      if (v21 >= 3)
      {
        v22 = (v21 - 2);
        v23 = *(a1 + 600);
        v24 = *(*(a1 + 8) + 112);
        do
        {
          if (*(v24 + *v23) == 3)
          {
            v23[133] |= 2u;
          }

          v23 += 132;
          --v22;
        }

        while (v22);
      }
    }
  }

  else
  {
    v9 = *(a1 + 608);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = *(a1 + 600);
      v13 = *a2;
      v14 = *(a3 + 88);
      v15 = *(*(a1 + 8) + 112);
      do
      {
        result = v12 + 528 * v10;
        if (v13 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (*(result + 16) + 8);
          v18 = (v13 + 2) - 2;
          do
          {
            v19 = *v17++;
            v16 += v19;
            --v18;
          }

          while (v18);
        }

        v11 += v16;
        if (v11 > v14)
        {
          *(result + 4) |= 2u;
          v11 = v16;
        }

        if (*(v15 + *result) == 3 && v10 < v9 - 2)
        {
          v11 = 0;
          *(result + 532) |= 2u;
        }

        ++v10;
      }

      while (v10 != v9);
    }
  }

  return result;
}

uint64_t ParamGenLT_0(uint64_t a1, int *a2)
{
  v4 = *a1;
  v5 = 2229280778;
  memset(v53, 0, sizeof(v53));
  memset(v52, 0, sizeof(v52));
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  BET3FLT__InitSMatrices(v4, v53);
  BET3FLT__InitSMatrices(v4, v52);
  v6 = heap_Calloc(*(v4 + 8), (*(a1 + 624) + 1), 1);
  *(a1 + 48) = v6;
  if (!v6)
  {
    return v5;
  }

  v7 = heap_Calloc(*(v4 + 8), (*(a1 + 624) + 1), 4);
  *(a1 + 40) = v7;
  if (!v7)
  {
    return v5;
  }

  v8 = *(a1 + 608);
  if (v8 >= 1)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    LODWORD(v11) = *a2;
    do
    {
      if (v11 >= 1)
      {
        v12 = (*(a1 + 600) + 528 * v9);
        v13 = v12[2];
        v14 = 2;
        do
        {
          if (*(v13 + 4 * v14) >= 1)
          {
            v15 = 0;
            v10 = v10;
            do
            {
              *(*(a1 + 48) + v10) = *(v12[39] + v14);
              *(*(a1 + 40) + 4 * v10++) = *(v12[40] + 4 * v14);
              v13 = v12[2];
              ++v15;
            }

            while (v15 < *(v13 + 4 * v14));
          }

          v16 = *(a1 + 32);
          if (v16 >= 1)
          {
            v17 = *(a1 + 24);
            do
            {
              if (v17[68] && ((*(v12[39] + v14) >> v17[3]) & 1) != 0)
              {
                v17[11] += *(v13 + 4 * v14);
              }

              v17 += 78;
              --v16;
            }

            while (v16);
          }

          v11 = *a2;
          v18 = v14++ <= v11;
        }

        while (v18);
        v8 = *(a1 + 608);
      }

      ++v9;
    }

    while (v9 < v8);
  }

  if (*(a1 + 32) < 1)
  {
    v5 = 0;
    goto LABEL_60;
  }

  v19 = 0;
  v20 = 0;
  v5 = 0;
  while (1)
  {
    v21 = *(a1 + 24) + 312 * v19;
    if (*(v21 + 272))
    {
      break;
    }

LABEL_56:
    if (++v19 >= *(a1 + 32))
    {
      goto LABEL_60;
    }
  }

  if (!*(v21 + 44))
  {
LABEL_55:
    BET3FXD__DeInitMSDUttModel((a1 + 56), v19);
    goto LABEL_56;
  }

  inited = BET3FXD__InitPStreamParam((v21 + 24), 0);
  if ((inited & 0x80000000) == 0)
  {
    v5 = BET3FXD__InitPStreamSM((v21 + 24), v53);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    v23 = *(a1 + 608);
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = *(a1 + 600);
      v28 = *a2;
      do
      {
        if (v28 >= 1)
        {
          v29 = v27 + 528 * v24;
          v30 = *(v29 + 16);
          v31 = v29 + 152;
          v32 = v29 + 232;
          v33 = 2;
          do
          {
            v34 = *(v30 + 4 * v33);
            if (v34 >= 1)
            {
              v35 = *(a1 + 24) + 312 * v19;
              v36 = *(a1 + 48);
              v37 = v26;
              LODWORD(v38) = *(v35 + 36);
              v39 = 1;
              do
              {
                if (v38 >= 1)
                {
                  v40 = 0;
                  v41 = *(*(v21 + 56) + 8);
                  do
                  {
                    v42 = 1 << *(v35 + 12);
                    v20 |= v42;
                    v43 = *(v41 + 8 * v40);
                    v45 = *v43;
                    v44 = v43[1];
                    if (v45 <= v44)
                    {
                      v46 = v44 - v45 + 1;
                      v47 = v26 + v45;
                      do
                      {
                        v48 = v42 ^ 0xFFLL;
                        if ((v47 & 0x80000000) == 0)
                        {
                          v48 = v42 ^ 0xFFLL;
                          if (*(a1 + 624) >= v47)
                          {
                            v48 = *(v36 + v47);
                          }
                        }

                        v20 &= v48;
                        ++v47;
                        --v46;
                      }

                      while (v46);
                    }

                    if ((v42 & *(v36 + v37)) != 0)
                    {
                      if (!v40 || (v49 = v42 & v20) != 0)
                      {
                        v50 = 4 * v40 + 4;
                        *(*(*(v21 + 96) + 8 * v25) + 4 * v40) = *(*(*(v31 + 8 * v19) + 8 * v33) + v50);
                        LODWORD(v49) = *(*(*(v32 + 8 * v19) + 8 * v33) + v50);
                      }

                      else
                      {
                        *(*(*(v21 + 96) + 8 * v25) + 4 * v40) = 0;
                      }

                      *(*(*(v21 + 104) + 8 * v25) + 4 * v40) = v49;
                    }

                    ++v40;
                    v38 = *(v35 + 36);
                  }

                  while (v40 < v38);
                  v34 = *(v30 + 4 * v33);
                }

                v25 += (*(v36 + v37++) >> *(v35 + 12)) & 1;
                ++v26;
                v18 = v39++ < v34;
              }

              while (v18);
              v28 = *a2;
              v26 = v37;
            }

            v18 = v33++ <= v28;
          }

          while (v18);
          v23 = *(a1 + 608);
        }

        ++v24;
      }

      while (v24 < v23);
      if (v25 >= 1)
      {
        (**(*(a1 + 24) + 312 * v19 + 288))(v21 + 24, 0);
      }
    }

    BET3FLT__FreePStreamSM(v21 + 24);
    goto LABEL_55;
  }

  v5 = inited;
LABEL_60:
  BET3FLT__FreePStreamParam(v54);
  BET3FLT__FreeSMatrices(v53);
  BET3FLT__FreeSMatrices(v52);
  return v5;
}

uint64_t BET3FXD__ParamGenFrames(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v5 = *a1;
  memset(v91, 0, sizeof(v91));
  memset(v90, 0, sizeof(v90));
  *a3 = 0;
  memset(v92, 0, sizeof(v92));
  v93 = 0;
  BET3FLT__InitSMatrices(v5, v91);
  BET3FLT__InitSMatrices(v5, v90);
  v89 = a1;
  v6 = *(a1 + 612);
  v7 = *(a1 + 600) + 528 * v6;
  *(v7 + 4) &= ~2u;
  v8 = *(a1 + 608);
  v9 = __OFSUB__(v8, v6);
  v10 = v8 - v6;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    LODWORD(v12) = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    LODWORD(v12) = 0;
    while ((*(v7 + 4) & 2) == 0)
    {
      v13 = *a2;
      if (v13 >= 1)
      {
        v14 = (*(v7 + 16) + 8);
        do
        {
          v15 = *v14++;
          LODWORD(v12) = v15 + v12;
          --v13;
        }

        while (v13);
      }

      v7 += 528;
      if (++v11 == v10)
      {
        v11 = v10;
        break;
      }
    }
  }

  v16 = v11;
  BET3FXD__log_select_Diag(v5, 2, "| processing %d models %d frames <=> ");
  v17 = a1;
  if (*(a1 + 32) >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    inited = 0;
    v83 = -v16;
    v84 = v5;
    v23 = v16;
    v87 = v16;
    while (1)
    {
      v24 = *(v17 + 24);
      v25 = v24 + 312 * v18;
      if (*(v25 + 268))
      {
        if (*(v25 + 64))
        {
          v26 = v19;
          BET3FLT__FreePStreamParam((v25 + 24));
          v19 = v26;
          v23 = v87;
          v17 = v89;
          v24 = *(v89 + 24);
        }

        v27 = v24 + 312 * v18;
        v28 = *(v27 + 280);
        v29 = *(v27 + 284);
        v30 = *(v17 + 612);
        v31 = *(v17 + 608);
        v32 = (v19 + v23 + v30) < v31 && v20 < v28;
        if (v32)
        {
          v34 = *a2;
          v35 = v7;
          v33 = v84;
          do
          {
            if (v34 >= 1)
            {
              v36 = (*(v35 + 16) + 8);
              v37 = (v34 + 2) - 2;
              do
              {
                v38 = *v36++;
                v20 += v38;
                --v37;
              }

              while (v37);
            }

            v35 += 528;
            v19 = (v19 + 1);
          }

          while ((v19 + v23 + v30) < v31 && v20 < v28);
        }

        else
        {
          v33 = v84;
        }

        v88 = v29;
        if (v30 > v21 && v22 < v28)
        {
          v40 = v7 + 528 * v83;
          v41 = *a2;
          do
          {
            if (v41 >= 1)
            {
              v42 = (*(v40 - 512) + 8);
              v43 = (v41 + 2) - 2;
              do
              {
                v44 = *v42++;
                v22 += v44;
                --v43;
              }

              while (v43);
            }

            if (v30 <= ++v21)
            {
              break;
            }

            v40 -= 528;
          }

          while (v22 < v28);
        }

        v86 = v19;
        BET3FXD__log_select_Diag(v33, 3, "L: %d %d  R: %d %d\n");
        *(v25 + 164) = v88 + v12 + v20 + v22 + v88;
        *(v25 + 44) = v12;
        inited = BET3FXD__InitPStreamParam((v25 + 24), 0);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_84;
        }

        v45 = *(v25 + 40);
        if (v45 >= 1)
        {
          v46 = 0;
          v19 = v86;
          v23 = v87;
          v17 = v89;
          while (1)
          {
            if (*(*(*(v17 + 24) + 312 * v18 + 304) + 4 * v46) == 1)
            {
              v47 = BET3FXD__InitPStreamParam((v25 + 144), v92);
              if ((v47 & 0x80000000) != 0)
              {
                v49 = v47;
                goto LABEL_86;
              }

              v48 = BET3FXD__InitPStreamSM((v25 + 144), v90);
              v49 = v48;
              if ((v48 & 0x80000000) != 0)
              {
                goto LABEL_86;
              }

              inited = v48;
              if (v88 < 1)
              {
                LODWORD(v12) = 0;
                v50 = v89;
                v51 = v86 + v87 + v21;
              }

              else
              {
                v12 = 0;
                v50 = v89;
                v51 = v86 + v87 + v21;
                while (v12 < *(v25 + 164))
                {
                  v52 = *(v25 + 176);
                  if (*v52 >= 1)
                  {
                    v53 = 0;
                    v54 = *(*(v25 + 216) + 8 * v12);
                    v55 = *(*(v25 + 224) + 8 * v12);
                    do
                    {
                      *(v54 + 4 * v53) = 0;
                      *(v55 + 4 * v53++) = 4095;
                    }

                    while (v53 < *v52);
                  }

                  if (++v12 == v88)
                  {
                    LODWORD(v12) = v88;
                    break;
                  }
                }
              }

              if (v51 >= 1)
              {
                v56 = 0;
                v57 = *(v50 + 600);
                v58 = *a2;
                do
                {
                  v7 = v57 + 528 * (v56 - v21 + *(v50 + 612));
                  if (v58 >= 1)
                  {
                    v59 = *(v7 + 16);
                    v60 = 2;
                    do
                    {
                      v61 = *(v59 + 4 * v60);
                      if (v61 >= 1)
                      {
                        v62 = *(v25 + 176);
                        v12 = v12;
                        LODWORD(v63) = *v62;
                        v64 = 1;
                        do
                        {
                          if (v63 >= 1)
                          {
                            v65 = 0;
                            v66 = *(*(v7 + 152 + 8 * v18) + 8 * v60);
                            v67 = *(*(v25 + 216) + 8 * v12);
                            v68 = *(*(v7 + 232 + 8 * v18) + 8 * v60);
                            v69 = *(*(v25 + 224) + 8 * v12);
                            do
                            {
                              v70 = v46 + *(v25 + 40) * v65;
                              *(v67 + 4 * v65) = *(v66 + 4 * v70);
                              *(v69 + 4 * v65++) = *(v68 + 4 * v70);
                              v63 = *v62;
                            }

                            while (v65 < v63);
                            v61 = *(v59 + 4 * v60);
                          }

                          ++v12;
                          v32 = v64++ < v61;
                        }

                        while (v32);
                        v58 = *a2;
                      }

                      v32 = v60++ <= v58;
                    }

                    while (v32);
                  }

                  ++v56;
                }

                while (v56 != v51);
              }

              v71 = *(v25 + 164);
              if (v12 < v71)
              {
                v72 = *(v25 + 176);
                v12 = v12;
                LODWORD(v73) = *v72;
                do
                {
                  if (v73 >= 1)
                  {
                    v74 = 0;
                    v75 = *(*(v25 + 216) + 8 * v12);
                    v76 = *(*(v25 + 224) + 8 * v12);
                    do
                    {
                      *(v75 + 4 * v74) = 0;
                      *(v76 + 4 * v74++) = 4095;
                      v73 = *v72;
                    }

                    while (v74 < v73);
                    v71 = *(v25 + 164);
                  }

                  ++v12;
                }

                while (v12 < v71);
              }

              (*(*(*(v50 + 24) + 312 * v18 + 288) + 8 * v46))(v25 + 144, 0);
              if (*(v25 + 44) >= 1)
              {
                v77 = 0;
                v78 = *(v25 + 64);
                v79 = *(v25 + 184) + 8 * (v22 + v88);
                do
                {
                  *(*(v78 + 8 * v77) + 4 * v46) = **(v79 + 8 * v77);
                  ++v77;
                }

                while (v77 < *(v25 + 44));
              }

              BET3FLT__FreePStreamSM(v25 + 144);
              BET3FLT__FreePStreamParam((v25 + 144));
              v45 = *(v25 + 40);
              v17 = v89;
              v19 = v86;
              v23 = v87;
            }

            if (++v46 >= v45)
            {
              goto LABEL_79;
            }
          }
        }

        v17 = v89;
        v19 = v86;
        v23 = v87;
      }

LABEL_79:
      if (++v18 >= *(v17 + 32))
      {
        goto LABEL_82;
      }
    }
  }

  inited = 0;
  v23 = v16;
LABEL_82:
  v80 = *(v17 + 612) + v23;
  *(v17 + 612) = v80;
  if (v80 >= *(v17 + 608))
  {
    *a3 = 1;
  }

LABEL_84:
  v49 = inited;
LABEL_86:
  BET3FLT__FreePStreamParam(v92);
  BET3FLT__FreeSMatrices(v91);
  BET3FLT__FreeSMatrices(v90);
  return v49;
}

uint64_t BET3FXD__InitVData(uint64_t a1, void *a2, uint64_t a3)
{
  bzero(a2, 0x4C0uLL);
  result = BET3FXD__InitModelSet(a1, a2, a3);
  if ((result & 0x80000000) == 0)
  {
    result = BET3FLT__InitTreeSet(a1, a2 + 38);
    if ((result & 0x80000000) == 0)
    {

      return BET3FLT__InitDWinSet(a1, a2 + 51, a3);
    }
  }

  return result;
}

void BET3FXD__DeInitVData(uint64_t a1, uint64_t a2)
{
  BET3FXD__DeInitModelSet(a1, a2);
  BET3FLT__DeInitTreeSet(a1, (a2 + 608));
  BET3FLT__DeInitDWinSet(a1, (a2 + 816));

  bzero(a2, 0x4C0uLL);
}

uint64_t BET3FXD__LoadVData(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a2[150] < 1)
  {
    return 0;
  }

  v4 = a2;
  v6 = 0;
  v7 = a3 + 5064;
  v8 = a2 + 204;
  v9 = (a3 + 3864);
  do
  {
    ModelFile = BET3FXD__LoadModelFile(a1, v4, v6, (v9 - 300), v7, a3);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ModelFile = BET3FXD__LoadTreesFile(a1, (v4 + 152), v6, (v7 - 2640), a3);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ModelFile = BET3FXD__LoadDWinFile(a1, v8, v6, v9);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ++v6;
    v11 = v4[150];
    v9 += 30;
    v7 += 24;
  }

  while (v6 < v11);
  if (v11 < 1)
  {
    return 0;
  }

  v12 = v4 + 178;
  v13 = a3 + 144;
  while (1)
  {
    if (!*v12)
    {
      v14 = 2229280775;
      BET3FXD__log_select_Error(a1, 55032, "%s tree is required\n");
      return v14;
    }

    if ((v4[130] || v4[140]) && v4[1] % *v8)
    {
      break;
    }

    v13 += 8;
    ++v12;
    v8 += 10;
    ++v4;
    if (!--v11)
    {
      return 0;
    }
  }

  v14 = 2229280775;
  BET3FXD__log_select_Error(a1, 55035, "The number of dynamic windows for %s is not correct %d %d\n");
  return v14;
}

uint64_t BET3FXD__InitVStream(uint64_t a1, char *a2, _DWORD *a3)
{
  bzero(a2, 0x7A0uLL);
  *a2 = a1;
  v6 = a3[33];
  *(a2 + 8) = v6;
  v7 = heap_Calloc(*(a1 + 8), v6, 312);
  *(a2 + 3) = v7;
  if (!v7)
  {
    return 2229280778;
  }

  if (*(a2 + 8) >= 1)
  {
    v8 = 0;
    v9 = a2 + 672;
    do
    {
      *v9 = 0;
      v10 = *&a3[2 * v8 + 36];
      if (*v10)
      {
        v9 = strcpy(v9, v10);
      }

      ++v8;
      v11 = *(a2 + 8);
      v9 += 128;
    }

    while (v8 < v11);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = *(a2 + 3);
      v14 = a3[18];
      v15 = 312 * v11;
      do
      {
        v16 = v13 + v12;
        *(v16 + 12) = a3[56];
        *(v16 + 24) = a1;
        *(v16 + 144) = a1;
        if (v12)
        {
          if (a3[536])
          {
            *(v13 + v12 + 272) = 1;
          }

          else
          {
            *(v13 + v12 + 268) = 1;
          }
        }

        else
        {
          *(v13 + 264) = 1;
        }

        if (v14 == 1)
        {
          *(v13 + v12 + 276) = 1;
        }

        v12 += 312;
        ++a3;
      }

      while (v15 != v12);
    }
  }

  result = 0;
  *(a2 + 162) = 0;
  *(a2 + 632) = 0u;
  return result;
}

uint64_t BET3FXD__LoadVStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) < 1)
  {
    return 0;
  }

  v3 = a3;
  v5 = 0;
  v6 = 2229280775;
  v7 = a2 + 816;
  v8 = a2 + 4;
  v9 = a3 + 2184;
  v34 = a2 + 816;
  v35 = a3 + 2344;
  v10 = *(a1 + 24);
  v33 = a2 + 4;
  while (1)
  {
    v11 = (v7 + 40 * v5);
    v12 = v10 + 312 * v5;
    *(v12 + 56) = v11;
    v13 = *(v12 + 268);
    if (v13)
    {
      *(v12 + 176) = v11;
    }

    if (*(v12 + 264))
    {
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v15 = *(v8 + 4 * v5);
    *(v12 + 36) = v15;
    v16 = (v15 / *v11);
    v17 = v10 + 312 * v5;
    *(v17 + 40) = v16;
    *(v17 + 280) = *(v3 + 92);
    v18 = heap_Calloc(*(*a1 + 8), v16, 8);
    v19 = *(a1 + 24);
    *(v19 + 312 * v5 + 288) = v18;
    if (!v18)
    {
      return 2229280778;
    }

    LODWORD(v20) = *(v19 + 312 * v5 + 40);
    if (v20 >= 1)
    {
      break;
    }

LABEL_15:
    v23 = heap_Calloc(*(*a1 + 8), v20, 4);
    v24 = *(a1 + 24);
    *(v24 + 312 * v5 + 304) = v23;
    if (!v23)
    {
      return 2229280778;
    }

    v25 = v24 + 312 * v5;
    if (*(v25 + 40) >= 1)
    {
      v26 = v23;
      v32 = v3;
      v27 = 0;
      v28 = *(v35 + 8 * v5);
      while (1)
      {
        v29 = *(v28 + 8 * v27);
        if (!strcmp(v29, "OFF"))
        {
          v30 = 0;
        }

        else
        {
          if (*v29 != 79 || *(v29 + 1) != 78 || *(v29 + 2))
          {
            BET3FXD__log_select_Error(*a1, 55036, "valid breaker setting is required for stream %d\n", v5);
            return 2229280775;
          }

          v30 = 1;
        }

        *(v26 + 4 * v27++) = v30;
        if (v27 >= *(v25 + 40))
        {
          v6 = 2229280775;
          v3 = v32;
          break;
        }
      }
    }

    BET3FXD__log_select_Diag(*a1, 1, "%s: vSize = %d, order = %d, nLayer = %d\n");
    v10 = *(a1 + 24);
    v8 = v33;
    v7 = v34;
    if (*(v10 + 312 * v5 + 268))
    {
LABEL_7:
      v14 = v10 + 312 * v5;
      *(v14 + 156) = *(v8 + 4 * v5);
      *(v14 + 160) = 1;
    }

LABEL_8:
    if (++v5 >= *(a1 + 32))
    {
      return 0;
    }
  }

  v21 = 0;
  while (1)
  {
    v22 = *(*(v9 + 8 * v5) + 8 * v21);
    if (strcmp(v22, "MLPG2"))
    {
      break;
    }

    *(*(v19 + 312 * v5 + 288) + 8 * v21++) = BET3FXD__mlpg2;
    v19 = *(a1 + 24);
    v20 = *(v19 + 312 * v5 + 40);
    if (v21 >= v20)
    {
      goto LABEL_15;
    }
  }

  BET3FXD__log_select_Error(*a1, 55036, "invalid solver for stream %d: %s\n", v5, v22);
  return v6;
}

void BET3FXD__DeInitVStream(int *a1)
{
  if (a1 && *a1)
  {
    if (a1[8] >= 1)
    {
      v2 = 0;
      v3 = *(a1 + 3);
      v4 = 304;
      do
      {
        if (!v3)
        {
          break;
        }

        BET3FLT__FreePStreamSM(v3 + v4 - 280);
        BET3FLT__FreePStreamParam((*(a1 + 3) + v4 - 280));
        BET3FLT__FreePStreamSM(*(a1 + 3) + v4 - 160);
        BET3FLT__FreePStreamParam((*(a1 + 3) + v4 - 160));
        v3 = *(a1 + 3);
        v5 = *(v3 + v4 - 16);
        if (v5)
        {
          heap_Free(*(*a1 + 8), v5);
          v3 = *(a1 + 3);
          *(v3 + v4 - 16) = 0;
        }

        v6 = *(v3 + v4);
        if (v6)
        {
          heap_Free(*(*a1 + 8), v6);
          v3 = *(a1 + 3);
          *(v3 + v4) = 0;
        }

        ++v2;
        v4 += 312;
      }

      while (v2 < a1[8]);
    }

    v7 = *(a1 + 6);
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
      *(a1 + 6) = 0;
    }

    v8 = *(a1 + 5);
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
      *(a1 + 5) = 0;
    }

    v9 = *(a1 + 3);
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
      *(a1 + 3) = 0;
    }

    v10 = *(a1 + 79);
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
      *(a1 + 79) = 0;
    }

    v11 = *(a1 + 80);
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
      *(a1 + 80) = 0;
    }

    BET3FXD__DeInitUttModel(a1 + 7);

    bzero(a1, 0x7A0uLL);
  }
}

uint64_t dequantDur(uint64_t a1, int a2, int a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v6 = a6;
  v10 = *(a1 + 4);
  v11 = *(a1 + 128) + *(a1 + 136) + (2 * a2 * *a1 * v10);
  if (*a1 == 1)
  {
    v12 = *(v11 + a3);
    v13 = *(v11 + v10 + a3);
  }

  else
  {
    v12 = *(v11 + 2 * a3);
    v13 = *(v11 + 2 * (v10 + a3));
  }

  *a4 = dequantValueToU32(v12, *(a1 + 12 + 4 * a3), *(a1 + 68), *(a1 + 70 + 2 * a3), *(a1 + 98 + 2 * a3), a6);
  *a5 = dequantValueToU32(v13, *(a1 + 12 + 4 * (*(a1 + 4) + a3)), *(a1 + 68), *(a1 + 70 + 2 * (*(a1 + 4) + a3)), *(a1 + 98 + 2 * (*(a1 + 4) + a3)), v6);
  return 0;
}

uint64_t dequantValueToU32(int a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v8 = a6 + 2 - a4;
  if (a6 + 2 > a4)
  {
    v9 = a6 + 2 - a4;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = (a6 - v8);
  v11 = a6 - v8 + 16 - a4;
  if (v10 + 16 <= a4)
  {
    v13 = a4 - v10;
    v12 = a5;
  }

  else
  {
    a1 <<= v11;
    v12 = a5;
    v13 = 16;
  }

  v14 = fxd_S32ShMultRndS32S32(a1, v12, v13);
  if (v10 >= a3)
  {
    v16 = 0x7FFFFFFFLL;
    if (0x7FFFFFFFu >> (v10 - a3) <= a2)
    {
      return v16;
    }

    v15 = a2 << (v10 - a3);
  }

  else
  {
    v15 = a2 >> (a3 - v10);
  }

  v17 = v15 + v14;
  if (v17 >= 0x7FFFFFFFu >> v9)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return v17 << v9;
  }
}

uint64_t dequantMsd(uint64_t a1, int a2, int a3, int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  v8 = a8;
  v12 = (*(a1 + 112) + *(*(a1 + 120) + 4 * a2) + *(a1 + 12) * a3 + 3 * a4 * *a1);
  if (*a1 == 1)
  {
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
  }

  else
  {
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
  }

  v16 = a1 + 12 * a4;
  v17 = (a1 + 6 * a4);
  *a5 = dequantValueToS32(v13, *(v16 + 64), *(a1 + 100), v17[14], v17[23], a8);
  *a6 = dequantValueToS32(v14, *(v16 + 68), *(a1 + 100), v17[15], v17[24], v8);
  *a7 = dequantValueToU32(v15, *(v16 + 72), *(a1 + 100), v17[16], v17[25], v8);
  return 0;
}

uint64_t dequantValueToS32(int a1, int a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6)
{
  if (a6 + 16 <= a4)
  {
    v10 = a4 - a6;
    v9 = a5;
  }

  else
  {
    a1 <<= a6 + 16 - a4;
    v9 = a5;
    v10 = 16;
  }

  v11 = fxd_S32ShMultRndS32S32(a1, v9, v10);
  v12 = v11 + (a2 << (a6 - a3));
  if ((0x7FFFFFFFu >> (a6 - a3)) <= a2)
  {
    v12 = 0x7FFFFFFF;
  }

  if (a3 > a6)
  {
    return (v11 + (a2 >> (a3 - a6)));
  }

  else
  {
    return v12;
  }
}

uint64_t dequantEnergy(unsigned __int16 *a1, int a2, int a3, __int16 a4, _DWORD *a5, _DWORD *a6, unsigned int a7)
{
  result = 2229280793;
  v11 = *(a1 + 16);
  if (v11)
  {
    if (v11 != 1)
    {
      return result;
    }

    v12 = *(a1 + 7) + 16 * a2;
    v13 = *v12 + *(v12 + 8);
    v14 = *a1;
    v15 = a1[1] + a1[2] * v14;
    v16 = 2 * a3 - 2;
  }

  else
  {
    v17 = *(a1 + 7) + 16 * a2;
    v13 = *v17 + *(v17 + 8);
    v15 = a3 - 1;
    v14 = *a1;
    v16 = a1[1] + 2 * v14 * a1[2];
  }

  v18 = v13 + (v16 * v15);
  if (v18)
  {
    v19 = 2 * a4;
    v20 = (2 * a4);
    if (v14 == 1)
    {
      v21 = *(v18 + v20);
    }

    else
    {
      v21 = *(v18 + 2 * v20);
    }

    v22 = *(a1 + 5) + 40 * (2 * a4);
    *a5 = dequantValueToS32(v21, **(v22 + 8), *(v22 + 16), **(v22 + 24), **(v22 + 32), a7);
    if (a6)
    {
      v23 = v19 | 1u;
      if (*a1 == 1)
      {
        v24 = *(v18 + v23);
      }

      else
      {
        v24 = *(v18 + 2 * v23);
      }

      v25 = *(a1 + 5) + 40 * (v19 | 1u);
      v26 = dequantValueToS32(v24, **(v25 + 8), *(v25 + 16), **(v25 + 24), **(v25 + 32), a7);
      result = 0;
      *a6 = v26;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t deVQSpectrum(unsigned __int16 *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, __int16 a7, _DWORD *a8, _DWORD *a9, unsigned __int16 a10)
{
  v10 = a6;
  v12 = a1[4];
  v13 = (v12 * a7);
  v14 = a1[2];
  v15 = (v14 + a7) * v12;
  v16 = *(a1 + 16);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = *(a1 + 7) + 16 * a3;
      v18 = *v17 + *(v17 + 8) + (2 * a4 - 2) * (*a1 * v14 + a1[1]) + 2 * *a1 * v14;
      v19 = v13 + a5;
      v20 = *(v18 + 2 * v19);
      v21 = v15 + a5;
      v22 = *(v18 + 2 * v21);
    }

    else
    {
      v20 = 0;
      v22 = 0;
      v19 = v13 + a5;
      v21 = a5 + v15;
    }
  }

  else
  {
    v23 = *(a1 + 7) + 16 * a3;
    v24 = *v23 + *(v23 + 8) + 2 * v14 * *a1 + (a1[1] + 2 * v14 * *a1) * (a4 - 1);
    v19 = v13 + a5;
    v20 = *(v24 + v19);
    v21 = v15 + a5;
    v22 = *(v24 + v21);
  }

  dequantCbkVectorElem((*(a2 + 8) + 168 * v19), v20, a6, a8, a10);
  dequantCbkVectorElem((*(a2 + 8) + 168 * v21), v22, v10, a9, a10);
  return 0;
}

uint64_t dequantCbkVectorElem(unsigned __int16 *a1, int a2, int a3, _DWORD *a4, unsigned int a5)
{
  v6 = a1[2];
  v7 = *(a1 + 18) + *(a1 + 38) + v6 * a2 * *a1;
  if (v6 == 1)
  {
    v8 = *(v7 + a3);
  }

  else
  {
    v8 = *(v7 + 2 * a3);
  }

  result = dequantValueToS32(v8, *&a1[2 * a3 + 38], a1[36], a1[a3 + 4], a1[a3 + 20], a5);
  *a4 = result;
  return result;
}

uint64_t loadQuantizedDurFile(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0;
  BET3FLT__xfread_BET3(&v27 + 2, 2u, 1, a3);
  if (HIWORD(v27) == 1)
  {
    BET3FLT__xfread_BET3(&v27 + 2, 2u, 1, a3);
    BET3FLT__xfread_BET3(&v27 + 2, 2u, 1, a3);
    v8 = HIWORD(v27);
    *a2 = HIWORD(v27);
    if ((v8 - 3) > 0xFFFFFFFD)
    {
      BET3FLT__xfread_BET3(&v27 + 2, 2u, 1, a3);
      v11 = HIWORD(v27);
      *(a2 + 4) = HIWORD(v27);
      if ((v11 - 8) > 0xFFFFFFF8)
      {
        v12 = 0;
        v13 = 4 - (*a3 & 3);
        if ((*a3 & 3) == 0)
        {
          v13 = 0;
        }

        v14 = v13 + *a3;
        if (v14 >= *(a3 + 16))
        {
          v14 = *(a3 + 16);
        }

        *a3 = v14;
        v15 = (a2 + 98);
        do
        {
          BET3FLT__xfread_BET3(v15 - 28, 2u, 1, a3);
          BET3FLT__xfread_BET3(v15, 2u, 1, a3);
          ++v12;
          v15 += 2;
        }

        while (v12 < 2 * *(a2 + 4));
        BET3FLT__xfread_BET3(&v27, 2u, 1, a3);
        v16 = 4 - (*a3 & 3);
        if ((*a3 & 3) == 0)
        {
          v16 = 0;
        }

        v17 = v16 + *a3;
        if (v17 >= *(a3 + 16))
        {
          v17 = *(a3 + 16);
        }

        *a3 = v17;
        if (*(a2 + 4) >= 1)
        {
          v18 = 0;
          v19 = (a2 + 12);
          v20 = &v28;
          do
          {
            BET3FLT__xfread_BET3(v20, 2u, 1, a3);
            v21 = *v20;
            v20 += 2;
            v22 = v21 >> (v27 - a4);
            v23 = v21 << (a4 - v27);
            if (v27 > a4)
            {
              v23 = v22;
            }

            *v19++ = v23;
            ++v18;
          }

          while (v18 < 2 * *(a2 + 4));
        }

        *(a2 + 68) = a4;
        BET3FLT__xfread_BET3(&v27 + 2, 2u, 1, a3);
        v9 = 0;
        v24 = *a3;
        v25 = 4 - (*a3 & 3);
        *(a2 + 8) = HIWORD(v27);
        if ((v24 & 3) == 0)
        {
          v25 = 0;
        }

        v26 = v25 + v24;
        if (v26 >= *(a3 + 16))
        {
          v26 = *(a3 + 16);
        }

        *a3 = v26;
        *(a2 + 128) = *(a3 + 8);
        *(a2 + 136) = v26;
      }

      else
      {
        v9 = 2229280772;
        log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadDurFile : the number of HMM states is illegal");
      }
    }

    else
    {
      v9 = 2229280772;
      log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadQuantizedDurFile: invalid value for code length");
    }
  }

  else
  {
    v9 = 2229280772;
    log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadQuantizedDurFile: invalid quantization format");
  }

  return v9;
}

uint64_t loadQuantizedMsdFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v42 = 0;
  v12 = 2229280772;
  v41 = 0;
  *(a2 + 4) = a3;
  BET3FLT__xfread_BET3(&v42 + 2, 2u, 1, a4);
  if (HIWORD(v42) == 1)
  {
    BET3FLT__xfread_BET3(&v42 + 2, 2u, 1, a4);
    BET3FLT__xfread_BET3(&v42 + 2, 2u, 1, a4);
    v13 = HIWORD(v42);
    *(a2 + 8) = HIWORD(v42);
    if ((v13 - 4) >= 0xFFFFFFFD)
    {
      BET3FLT__xfread_BET3(&v42 + 2, 2u, 1, a4);
      v15 = HIWORD(v42);
      *a2 = HIWORD(v42);
      if ((v15 - 3) >= 0xFFFFFFFE)
      {
        v40 = a6;
        v16 = 4 - (*a4 & 3);
        if ((*a4 & 3) == 0)
        {
          v16 = 0;
        }

        v17 = v16 + *a4;
        if (v17 >= *(a4 + 16))
        {
          v17 = *(a4 + 16);
        }

        *a4 = v17;
        BET3FLT__xfread_BET3((a2 + 14), 2u, a3, a4);
        v18 = 4 - (*a4 & 3);
        if ((*a4 & 3) == 0)
        {
          v18 = 0;
        }

        v19 = v18 + *a4;
        if (v19 >= *(a4 + 16))
        {
          v19 = *(a4 + 16);
        }

        *a4 = v19;
        if (*(a2 + 8) >= 1)
        {
          v20 = 0;
          v21 = a2 + 28;
          do
          {
            v22 = 3;
            v23 = v21;
            do
            {
              BET3FLT__xfread_BET3(v23, 2u, 1, a4);
              BET3FLT__xfread_BET3((v23 + 18), 2u, 1, a4);
              v23 += 2;
              --v22;
            }

            while (v22);
            ++v20;
            v21 += 6;
          }

          while (v20 < *(a2 + 8));
        }

        BET3FLT__xfread_BET3(&v41, 2u, 1, a4);
        v24 = 4 - (*a4 & 3);
        if ((*a4 & 3) == 0)
        {
          v24 = 0;
        }

        v25 = v24 + *a4;
        if (v25 >= *(a4 + 16))
        {
          v25 = *(a4 + 16);
        }

        *a4 = v25;
        if (*(a2 + 8) >= 1)
        {
          v26 = 0;
          v27 = a2 + 64;
          do
          {
            for (i = 0; i != 12; i += 4)
            {
              BET3FLT__xfread_BET3(&v42, 2u, 1, a4);
              if (v41 <= a5)
              {
                v29 = v42 << (a5 - v41);
              }

              else
              {
                v29 = v42 >> (v41 - a5);
              }

              *(v27 + i) = v29;
            }

            ++v26;
            v27 += 12;
          }

          while (v26 < *(a2 + 8));
        }

        *(a2 + 100) = a5;
        v30 = *(a2 + 64);
        v31 = v40;
        if (v30 >= v40)
        {
          v31 = (13 * (v30 >> 2)) >> 2;
        }

        else
        {
          log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadQuantizedFreqFile : minimum Log pitch value is too small (%d in Q%d), clamping to minimum (%d)\n", v30, a5, v40);
        }

        *(a2 + 104) = v31;
        *(a2 + 112) = *(a4 + 8);
        v32 = heap_Calloc(*(a1 + 8), a3, 4);
        *(a2 + 120) = v32;
        if (v32)
        {
          v33 = *(a2 + 4);
          v34 = (-3 * *a2 * *(a2 + 8)) & 3;
          v35 = v34 + 3 * *a2 * *(a2 + 8);
          *(a2 + 12) = ((-3 * *a2 * *(a2 + 8)) & 3) + 3 * *a2 * *(a2 + 8);
          if (v33 >= 1)
          {
            v36 = 0;
            v37 = *a4;
            do
            {
              v38 = 4 - (v37 & 3);
              if ((v37 & 3) == 0)
              {
                v38 = 0;
              }

              v39 = v38 + v37;
              if (v39 >= *(a4 + 16))
              {
                v39 = *(a4 + 16);
              }

              *a4 = v39;
              *(v32 + 4 * v36) = v39;
              v37 = *a4 - v34 + v35 * *(a2 + 14 + 2 * v36);
              *a4 = v37;
              ++v36;
            }

            while (v36 < *(a2 + 4));
          }

          return 0;
        }

        else
        {
          return 2229280778;
        }
      }

      else
      {
        log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadQuantizedFreqFile: invalid value for code length");
      }
    }

    else
    {
      log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadQuantizedFreqFile: invalid value for number of streams");
    }
  }

  else
  {
    log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadQuantizedFreqFile: invalid quantization format");
  }

  return v12;
}

uint64_t loadVQQuantizedCepFile(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v46 = 0;
  *(a2 + 16) = 0;
  BET3FLT__xfread_BET3(&v46, 2u, 1, a3);
  if (v46 != 1)
  {
    if (v46 != 2)
    {
      log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadVQQuantizedCepFile: invalid quantization format");
      return 2229280772;
    }

    *(a2 + 16) = 1;
  }

  BET3FLT__xfread_BET3(&v46, 2u, 1, a3);
  BET3FLT__xfread_BET3(a2 + 3, 2u, 1, a3);
  BET3FLT__xfread_BET3(a2 + 2, 2u, 1, a3);
  v6 = a2[2];
  BET3FLT__xfread_BET3(a2 + 5, 2u, 1, a3);
  a2[6] = a2[5] + 1;
  *(a2 + 4) = 2;
  BET3FLT__xfread_BET3(&v46, 2u, 1, a3);
  v7 = 2229280772;
  if (v46 == 1)
  {
    v7 = 2229280778;
    v8 = 2 * v6;
    BET3FLT__xfread_BET3(a2 + 1, 2u, 1, a3);
    BET3FLT__xfread_BET3(a2, 2u, 1, a3);
    v9 = 4 - (*a3 & 3);
    if ((*a3 & 3) == 0)
    {
      v9 = 0;
    }

    v10 = v9 + *a3;
    if (v10 >= *(a3 + 16))
    {
      v10 = *(a3 + 16);
    }

    *a3 = v10;
    v11 = (2 * v6);
    v12 = heap_Calloc(*(a1 + 8), v8, 40);
    *(a2 + 5) = v12;
    if (v12)
    {
      if (v8)
      {
        v13 = 0;
        while (1)
        {
          v14 = *(a2 + 5) + 40 * v13;
          BET3FLT__xfread_BET3((v14 + 2), 2u, 1, a3);
          v15 = heap_Calloc(*(a1 + 8), *(v14 + 2), 4);
          *(v14 + 8) = v15;
          if (!v15)
          {
            break;
          }

          v16 = heap_Calloc(*(a1 + 8), *(v14 + 2), 2);
          *(v14 + 24) = v16;
          if (!v16)
          {
            break;
          }

          v17 = heap_Calloc(*(a1 + 8), *(v14 + 2), 2);
          *(v14 + 32) = v17;
          if (!v17)
          {
            break;
          }

          if (!*(v14 + 2))
          {
            log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "ReadQuantDescr: number of streams is wrong\n");
            return 2229280772;
          }

          v18 = 0;
          v19 = 0;
          v20 = 4 - (*a3 & 3);
          if ((*a3 & 3) == 0)
          {
            v20 = 0;
          }

          v21 = v20 + *a3;
          if (v21 >= *(a3 + 16))
          {
            v21 = *(a3 + 16);
          }

          *a3 = v21;
          do
          {
            BET3FLT__xfread_BET3((*(v14 + 24) + v18), 2u, 1, a3);
            BET3FLT__xfread_BET3((*(v14 + 32) + v18), 2u, 1, a3);
            ++v19;
            v18 += 2;
          }

          while (v19 < *(v14 + 2));
          BET3FLT__xfread_BET3((v14 + 16), 2u, 1, a3);
          v22 = 4 - (*a3 & 3);
          if ((*a3 & 3) == 0)
          {
            v22 = 0;
          }

          v23 = v22 + *a3;
          if (v23 >= *(a3 + 16))
          {
            v23 = *(a3 + 16);
          }

          *a3 = v23;
          BET3FLT__xfread_BET3(*(v14 + 8), 4u, *(v14 + 2), a3);
          if (++v13 == v11)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        BET3FLT__xfread_BET3(a2 + 4, 2u, 1, a3);
        v24 = heap_Calloc(*(a1 + 8), a2[4], 2);
        *(a2 + 3) = v24;
        if (v24)
        {
          v25 = 4 - (*a3 & 3);
          if ((*a3 & 3) == 0)
          {
            v25 = 0;
          }

          v26 = v25 + *a3;
          if (v26 >= *(a3 + 16))
          {
            v26 = *(a3 + 16);
          }

          *a3 = v26;
          BET3FLT__xfread_BET3(v24, 2u, a2[4], a3);
          v27 = a2[5];
          if (a2[5])
          {
            v28 = 0;
            v29 = a2[4];
            v30 = *(a2 + 4);
            v31 = 1;
            do
            {
              if (v28 + 1 < v29 && v31 > *(*(a2 + 3) + 2 * (v28 + 1)))
              {
                ++v28;
              }

              *v30++ = v28;
              ++v31;
              --v27;
            }

            while (v27);
          }

          v32 = 4 - (*a3 & 3);
          if ((*a3 & 3) == 0)
          {
            v32 = 0;
          }

          v33 = v32 + *a3;
          if (v33 >= *(a3 + 16))
          {
            v33 = *(a3 + 16);
          }

          *a3 = v33;
          BET3FLT__xfread2ptr_BET3(a2 + 6, 2u, a2[3], a3);
          *(a2 + 6) -= 4;
          v34 = heap_Calloc(*(a1 + 8), a2[3], 16);
          *(a2 + 7) = v34;
          if (v34)
          {
            v35 = *a3;
            v36 = 4 - (*a3 & 3);
            if ((*a3 & 3) == 0)
            {
              v36 = 0;
            }

            *(a2 + 7) = v34 - 32;
            v37 = v36 + v35;
            v38 = *(a3 + 16);
            if (v37 >= v38)
            {
              v37 = *(a3 + 16);
            }

            *a3 = v37;
            v39 = a2[3];
            if (a2[3])
            {
              v40 = *(a3 + 8);
              v41 = *(a2 + 16);
              v42 = (v34 + 8);
              v43 = 4;
              do
              {
                v44 = 4 - (v37 & 3);
                if ((v37 & 3) == 0)
                {
                  v44 = 0;
                }

                v37 += v44;
                if (v37 >= v38)
                {
                  v37 = v38;
                }

                *(v42 - 1) = v40;
                *v42 = v37;
                if (v41)
                {
                  if (v41 == 1)
                  {
                    v37 += 2 * *(*(a2 + 6) + v43) * (a2[1] + a2[2] * *a2);
                  }
                }

                else
                {
                  v37 += (a2[1] + 2 * *a2 * a2[2]) * *(*(a2 + 6) + v43);
                }

                v43 += 2;
                v42 += 4;
                --v39;
              }

              while (v39);
              v7 = 0;
              *a3 = v37;
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

  return v7;
}

uint64_t loadCodebookSet(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  memset(v39, 0, 512);
  v40[1] = 0;
  BET3FLT__xfread_BET3(&v40[1], 2u, 1, a3);
  if (v40[1] != 1)
  {
    v8 = "ReadQCodeBookSetHdr: invalid quantization format";
    goto LABEL_5;
  }

  BET3FLT__xfread_BET3(&v40[1], 2u, 1, a3);
  BET3FLT__xfread_BET3(v39, 2u, 1, a3);
  v7 = LOWORD(v39[0]);
  if (LOWORD(v39[0]) >= 0x97u)
  {
    v8 = "ReadQCodeBookSetHdr : Number of codebooks is too high, aborting\n";
LABEL_5:
    v9 = 2229280772;
    v10 = *(a1 + 32);
    goto LABEL_6;
  }

  v12 = 4 - (*a3 & 3);
  v9 = 2229280772;
  if ((*a3 & 3) == 0)
  {
    v12 = 0;
  }

  v13 = v12 + *a3;
  if (v13 >= *(a3 + 16))
  {
    v13 = *(a3 + 16);
  }

  *a3 = v13;
  BET3FLT__xfread_BET3(v39 + 4, 4u, v7, a3);
  v14 = v39[0];
  v15 = heap_Calloc(*(a1 + 8), LOWORD(v39[0]), 168);
  *(a2 + 8) = v15;
  if (!v15)
  {
    return 2229280778;
  }

  *(a2 + 2) = v14;
  *a2 = 0;
  v16 = v39[0];
  if (!LOWORD(v39[0]))
  {
LABEL_46:
    v9 = 0;
    *a2 = v16;
    return v9;
  }

  v37 = a1;
  v17 = 0;
  v18 = 40;
  v19 = 76;
  while (1)
  {
    v20 = *(a2 + 8);
    v21 = (v20 + 168 * v17);
    *v40 = 0;
    BET3FLT__xfread_BET3(v21, 2u, 1, a3);
    if (*v21 > 0x10u)
    {
      v8 = "LoadQuantizedCodebook: invalid value for codebook vector length\n";
      goto LABEL_50;
    }

    BET3FLT__xfread_BET3(v21 + 1, 2u, 1, a3);
    BET3FLT__xfread_BET3(v21 + 2, 2u, 1, a3);
    if (v21[2] - 3 < 0xFFFFFFFE)
    {
      break;
    }

    v22 = 4 - (*a3 & 3);
    if ((*a3 & 3) == 0)
    {
      v22 = 0;
    }

    v23 = v22 + *a3;
    if (v23 >= *(a3 + 16))
    {
      v23 = *(a3 + 16);
    }

    *a3 = v23;
    if (*v21)
    {
      v24 = 0;
      v25 = (v20 + v18);
      do
      {
        BET3FLT__xfread_BET3(v25 - 32, 2u, 1, a3);
        BET3FLT__xfread_BET3(v25, 2u, 1, a3);
        ++v24;
        v25 += 2;
      }

      while (v24 < *v21);
    }

    BET3FLT__xfread_BET3(&v40[1], 2u, 1, a3);
    v26 = 4 - (*a3 & 3);
    if ((*a3 & 3) == 0)
    {
      v26 = 0;
    }

    v27 = *(a3 + 16);
    if (v26 + *a3 >= v27)
    {
      v28 = *(a3 + 16);
    }

    else
    {
      v28 = v26 + *a3;
    }

    *a3 = v28;
    if (*v21)
    {
      v29 = 0;
      v30 = v20 + v19;
      v31 = a4;
      do
      {
        BET3FLT__xfread_BET3(v40, 2u, 1, a3);
        v32 = v40[1];
        if (v40[1] <= v31)
        {
          if (v40[1] + 16 < v31)
          {
            v31 = v40[1] + 16;
          }

          v33 = v40[0] << (v31 - LOBYTE(v40[1]));
        }

        else
        {
          v33 = v40[0];
        }

        *(v30 + 4 * v29++) = v33;
        v34 = *v21;
      }

      while (v29 < v34);
      v28 = *a3;
      v27 = *(a3 + 16);
    }

    else
    {
      LODWORD(v34) = 0;
      v32 = v40[1];
      v31 = a4;
    }

    v35 = 4 - (v28 & 3);
    if ((v28 & 3) == 0)
    {
      v35 = 0;
    }

    if (v32 <= v31)
    {
      LOWORD(v32) = v31;
    }

    v21[36] = v32;
    v36 = v35 + v28;
    if (v35 + v28 >= v27)
    {
      v36 = v27;
    }

    *(v21 + 18) = *(a3 + 8);
    *(v21 + 38) = v36;
    *a3 = v36 + v34 * v21[2] * v21[1];
    ++v17;
    v16 = v39[0];
    v18 += 168;
    v19 += 168;
    if (v17 >= LOWORD(v39[0]))
    {
      goto LABEL_46;
    }
  }

  v8 = "LoadQuantizedCodebook: invalid value for code length\n";
LABEL_50:
  v10 = *(v37 + 32);
LABEL_6:
  log_OutText(v10, "SELECT_BET3", 3, 0, v8, v37);
  return v9;
}

uint64_t synth_bet3_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ISynth_Bet3_0;
  return result;
}

uint64_t synth_bet3_ObjOpen_0(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Object = 2164269063;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  __s1 = 0;
  v16 = xmmword_1F42D7388;
  v17 = off_1F42D7398;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v21);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    log_OutText(*(v21 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjOpen");
    v10 = heap_Calloc(*(v21 + 8), 1, 1344);
    if (!v10)
    {
      log_OutPublic(*(v21 + 32), "SYNTH_BET3", 56000, 0);
      Object = 2164269066;
LABEL_27:
      log_OutText(*(v21 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjOpen: %x", Object);
      log_OutEvent(*(v21 + 32), 22, "");
      return Object;
    }

    v11 = v10;
    *v10 = a3;
    v10[1] = a4;
    v12 = v21;
    v10[2] = v21;
    if ((critsec_ObjOpen(*(v12 + 16), *(v12 + 8), v10 + 3) & 0x80000000) == 0)
    {
      *&v16 = v11;
      if ((synth_bet3_loc_ParamGetListen_0(v11, "volume", 0, 100, 80, &v16, &v19) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v11, "rate", 50, 400, 100, &v16, &v19) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v11, "rate_baseline", 50, 400, 100, &v16, &v19) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v11, "pitch", 50, 200, 100, &v16, &v19) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v11, "pitch_baseline", 50, 200, 100, &v16, &v19) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v11, "audiooutputbufsamples", 1, 0x7FFFFFFFLL, 256, &v16, &v19) & 0x80000000) == 0)
      {
        *(v11 + 40) = v19;
      }
    }

    if ((paramc_ParamGetStr(*(v21 + 40), "synth_type", &__s1) & 0x80000000) == 0)
    {
      v13 = __s1;
      if (!strcmp(__s1, "rcc"))
      {
        log_OutText(*(v21 + 32), "SYNTH_BET3", 4, 0, "Setting up MRCC synthesizer");
        *(v11 + 1036) = 1;
        v14 = synth_bet3_loc_SynthInit_MRCC(v11);
LABEL_22:
        Object = v14;
        if ((v14 & 0x80000000) == 0)
        {
          Object = objc_GetObject(*(v21 + 48), "SYNTHSTREAM", &v20);
          if ((Object & 0x80000000) == 0)
          {
            *(v11 + 32) = *(v20 + 8);
            *a5 = v11;
            *(a5 + 8) = 9346;
            goto LABEL_27;
          }

          log_OutPublic(*(*(v11 + 16) + 32), "SYNTH_BET3", 56001, 0);
        }

        *a5 = v11;
        *(a5 + 8) = 9346;
        synth_bet3_ObjClose_0(v11, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
        goto LABEL_27;
      }

      if (strcmp(v13, "mlsa") && strcmp(v13, "mfs"))
      {
        log_OutText(*(v21 + 32), "SYNTH_BET3", 4, 0, "Unknown synthesizer: %s", v13);
        return 7;
      }

      log_OutText(*(v21 + 32), "SYNTH_BET3", 4, 0, "Setting up MLSA synthesizer");
    }

    *(v11 + 1036) = 0;
    v14 = synth_bet3_loc_SynthInit_MLSA_0(v11);
    goto LABEL_22;
  }

  return Object;
}

uint64_t synth_bet3_ObjClose_0(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 9346, 1344);
  if (v3 < 0)
  {
    return 2164269064;
  }

  LODWORD(v4) = v3;
  v5 = *(a1 + 16);
  log_OutText(*(v5 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjClose");
  v6 = *(v5 + 40);
  v31 = a1;
  v30 = *(&xmmword_1F42D7388 + 8);
  v32 = *(&xmmword_1F42D7388 + 8);
  v7 = paramc_ListenerRemove(v6, "volume", &v31);
  v8 = *(v5 + 40);
  if (v7 < 0)
  {
    LODWORD(v4) = v7;
  }

  v31 = a1;
  v32 = v30;
  v9 = paramc_ListenerRemove(v8, "rate", &v31);
  v10 = *(v5 + 40);
  if (v9 < 0 && v4 > -1)
  {
    LODWORD(v4) = v9;
  }

  v31 = a1;
  v32 = v30;
  v12 = paramc_ListenerRemove(v10, "rate_baseline", &v31);
  v13 = *(v5 + 40);
  if (v12 < 0 && v4 > -1)
  {
    LODWORD(v4) = v12;
  }

  v31 = a1;
  v32 = v30;
  v15 = paramc_ListenerRemove(v13, "pitch", &v31);
  v16 = *(v5 + 40);
  if (v15 < 0 && v4 > -1)
  {
    LODWORD(v4) = v15;
  }

  v31 = a1;
  v32 = v30;
  v18 = paramc_ListenerRemove(v16, "pitch_baseline", &v31);
  v19 = *(v5 + 40);
  if (v18 < 0 && v4 > -1)
  {
    LODWORD(v4) = v18;
  }

  v31 = a1;
  v32 = v30;
  v21 = paramc_ListenerRemove(v19, "audiooutputbufsamples", &v31);
  if (v21 >= 0 || v4 <= -1)
  {
    v4 = v4;
  }

  else
  {
    v4 = v21;
  }

  if (*(a1 + 32))
  {
    v23 = objc_ReleaseObject(*(v5 + 48), "SYNTHSTREAM");
    if (v23 >= 0 || v4 <= -1)
    {
      v4 = v4;
    }

    else
    {
      v4 = v23;
    }
  }

  v25 = *(a1 + 1036);
  if (v25 == 1)
  {
    RccSyn__deinit_Synthesis((a1 + 1048));
  }

  else if (!v25)
  {
    MFVSyn__denit__MVF_Synthesis((a1 + 64));
  }

  v26 = *(a1 + 24);
  if (v26)
  {
    v27 = critsec_ObjClose(v26);
    if (v4 > -1 && v27 < 0)
    {
      v4 = v27;
    }

    else
    {
      v4 = v4;
    }
  }

  heap_Free(*(v5 + 8), a1);
  log_OutText(*(v5 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjClose: %x", v4);
  return v4;
}

uint64_t synth_bet3_ObjReopen_0(uint64_t a1, int a2)
{
  __s1 = 0;
  if ((safeh_HandleCheck(a1, a2, 9346, 1344) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v3 = *(a1 + 16);
  log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjReopen");
  if ((paramc_ParamGetStr(*(v3 + 40), "synth_type", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  v4 = __s1;
  if (!strcmp(__s1, "rcc"))
  {
    log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "Setting up MRCC synthesizer");
    MFVSyn__denit__MVF_Synthesis((a1 + 64));
    *(a1 + 1036) = 1;
    inited = synth_bet3_loc_SynthInit_MRCC(a1);
    goto LABEL_11;
  }

  if (!strcmp(v4, "mlsa") || !strcmp(v4, "mfs"))
  {
    log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "Setting up MLSA synthesizer");
LABEL_9:
    RccSyn__deinit_Synthesis((a1 + 1048));
    *(a1 + 1036) = 0;
    inited = synth_bet3_loc_SynthInit_MLSA_0(a1);
LABEL_11:
    v5 = inited;
    log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjReopen: %x", inited);
    return v5;
  }

  log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "Unknown synthesizer: %s", v4);
  return 7;
}

uint64_t synth_bet3_ProcessStart_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if ((safeh_HandleCheck(a1, a2, 9346, 1344) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  synstrmaux_InitStreamOpener(a1 + 128, *(*(a1 + 16) + 32), "SYNTH_BET3");
  if (synstrmaux_BuildAudioContentType("audio/L16;rate=", *(a1 + 48), (a1 + 80), 0x30uLL) > 0x2F)
  {
    return 9;
  }

  synstrmaux_RegisterInStream((a1 + 128), "application/x-realspeak-bet3-speech-frames;version=5.0", 0, a1 + 952);
  synstrmaux_RegisterInStream((a1 + 128), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 968);
  synstrmaux_RegisterOutStream((a1 + 128), a1 + 80, a1 + 984);
  synstrmaux_RegisterOutStream((a1 + 128), "application/x-realspeak-markers-pp;version=4.0", a1 + 1000);
  v8 = synstrmaux_OpenStreams((a1 + 128), *(a1 + 32), a3, a4);
  if ((v8 & 0x80000000) != 0)
  {
    *(a1 + 1016) = 0;
    *(a1 + 1028) = 0;
LABEL_12:
    synth_bet3_ProcessEnd_0(a1, v6);
    return v8;
  }

  v9 = *(a1 + 1036);
  if (v9)
  {
    if (v9 != 1)
    {
      *(a1 + 1016) = 0;
      *(a1 + 1028) = 0;
      return v8;
    }

    RccSyn__reset_Synthesis(a1 + 1048);
    inited = synth_bet3_loc_SynthInit_MRCC(a1);
  }

  else
  {
    inited = BET3FXD__MFVSyn__reset__MVF_Synthesis((a1 + 64));
  }

  v8 = inited;
  *(a1 + 1016) = 0;
  *(a1 + 1028) = 0;
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  return v8;
}

uint64_t synth_bet3_Process_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v161[25] = *MEMORY[0x1E69E9840];
  v8 = -2130698234;
  v9 = safeh_HandleCheck(a1, a2, 9346, 1344);
  if (v9 < 0)
  {
    return 2164269064;
  }

  v10 = 1;
  if (v9 || !a1)
  {
    return v10;
  }

  if (*(a1 + 1036) != 1)
  {
    __n = 0;
    v159 = 0;
    __dst = 0;
    __src = 0;
    v155 = 0;
    v156 = 0;
    if ((safeh_HandleCheck(a1, a2, 9346, 1344) & 0x80000000) != 0)
    {
      return 2164269064;
    }

    *a5 = 1;
    v13 = *(a1 + 40);
    v14 = *(a1 + 44);
    if (v13 >= v14)
    {
      if (v14)
      {
        v14 *= v13 / v14;
      }

      else
      {
        v14 = *(a1 + 40);
      }
    }

    v10 = (*(*(a1 + 32) + 144))(*(a1 + 952), *(a1 + 960), &__n + 4, &v159);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_250;
    }

    if (!HIDWORD(__n))
    {
      if (v159)
      {
        if (!*(a1 + 1000))
        {
          return synstrmaux_CloseOutStreamsOnly((a1 + 128), *(a1 + 32));
        }

        v10 = (*(*(a1 + 32) + 88))(*(a1 + 968), *(a1 + 976), &__dst, &__n);
        if ((v10 & 0x80000000) != 0)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x");
        }

        else if (__n)
        {
          v10 = (*(*(a1 + 32) + 112))(*(a1 + 1000), *(a1 + 1008), &v156);
          if ((v10 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x");
          }
        }

        if ((v10 & 0x80000000) == 0 && __n && __dst && v156)
        {
          memcpy(v156, __dst, __n);
          v135 = __n;
          LODWORD(__n) = __n >> 5;
          if (v135 >= 0x20)
          {
            LODWORD(v131) = 0;
            v136 = 0;
            v137 = *(a1 + 1024);
            v138 = v156 + 16;
            do
            {
              *(v138 - 1) = v137;
              *v138 = 0;
              ++v136;
              v131 = (v131 + 32);
              v138 += 8;
            }

            while (v136 < __n);
            goto LABEL_281;
          }

          goto LABEL_276;
        }

LABEL_277:
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        return synstrmaux_CloseOutStreamsOnly((a1 + 128), *(a1 + 32));
      }

LABEL_259:
      *a5 = 0;
      return v10;
    }

    v16 = (*(*(a1 + 32) + 88))(*(a1 + 952), *(a1 + 960), &__src, &__n + 4);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_251;
    }

    v10 = (*(*(a1 + 32) + 88))(*(a1 + 968), *(a1 + 976), &__dst, &__n);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_258;
    }

    if (HIDWORD(__n) < 8)
    {
      return v10;
    }

    v17 = (*(*(a1 + 32) + 112))(*(a1 + 984), *(a1 + 992), &v155, 2 * v14);
    if ((v17 & 0x80000000) != 0)
    {
LABEL_260:
      v10 = v17;
      v129 = *(*(a1 + 16) + 32);
LABEL_285:
      log_OutPublic(v129, "SYNTH_BET3", 56007, "%s%s%s%x");
      return v10;
    }

    if (__n)
    {
      v18 = (*(*(a1 + 32) + 112))(*(a1 + 1000), *(a1 + 1008), &v156);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_284;
      }
    }

    v10 = critsec_Enter(*(a1 + 24));
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v86 = *__src;
    v154 = 0;
    v153 = 0;
    v152 = 0;
    v149 = *(v86 + 48);
    if (__n && __dst && v156)
    {
      memcpy(v156, __dst, __n);
      LODWORD(__n) = __n >> 5;
    }

    v87 = *(v86 + 32);
    if (v87 < 1)
    {
      goto LABEL_314;
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = *(v86 + 24);
    do
    {
      v92 = v91[3];
      if (v92 == 1)
      {
        v93 = v91;
      }

      else
      {
        v93 = v90;
      }

      if (v92 == 2)
      {
        v93 = v90;
        v94 = v91;
      }

      else
      {
        v94 = v89;
      }

      if (v92 == 3)
      {
        v88 = v91;
      }

      else
      {
        v90 = v93;
        v89 = v94;
      }

      v91 += 78;
      --v87;
    }

    while (v87);
    if (!v90 || !v89 || !v88)
    {
      goto LABEL_314;
    }

    if (*(a1 + 1016) >= v90[11])
    {
      v85 = 0;
      LODWORD(v32) = 0;
      v8 = v10;
      goto LABEL_300;
    }

    v95 = 0;
    LODWORD(v32) = 0;
    v96 = (a1 + 1020);
    while (1)
    {
      if (*(a1 + 52) && *(a1 + 44) + v95 > v14)
      {
LABEL_246:
        if (v95)
        {
          v8 = v10;
          if ((v10 & 0x80000000) == 0)
          {
            v8 = (*(*(a1 + 32) + 120))(*(a1 + 984), *(a1 + 992), 2 * v95);
            if (v8 < 0)
            {
LABEL_249:
              v128 = *(*(a1 + 16) + 32);
LABEL_313:
              log_OutPublic(v128, "SYNTH_BET3", 56007, "%s%s%s%x");
              goto LABEL_314;
            }
          }
        }

        else
        {
          v8 = v10;
        }

        v85 = v32 != 0;
        if (v8 < 0 || !v32)
        {
          if (v8 < 0)
          {
            goto LABEL_314;
          }
        }

        else
        {
          v8 = (*(*(a1 + 32) + 120))(*(a1 + 1000), *(a1 + 1008), (32 * v32));
          if (v8 < 0)
          {
LABEL_312:
            v128 = *(*(a1 + 16) + 32);
            goto LABEL_313;
          }

          v85 = 1;
        }

LABEL_300:
        if (*(a1 + 1016) >= v90[11])
        {
          v8 = (*(*(a1 + 32) + 96))(*(a1 + 952), *(a1 + 960), 8);
          if ((v8 & 0x80000000) == 0)
          {
            *(a1 + 1016) = 0;
            v140 = HIDWORD(__n);
            goto LABEL_304;
          }

          goto LABEL_310;
        }

LABEL_301:
        v141 = 2;
        goto LABEL_307;
      }

      v97 = v156;
      if (v156)
      {
        v98 = v32 >= __n;
      }

      else
      {
        v98 = 1;
      }

      v151 = v95;
      if (!v98)
      {
        v32 = v32;
        v99 = (32 * v32) | 0x18;
        do
        {
          v100 = &v97[v99];
          if (*(v100 - 3) > *v96)
          {
            break;
          }

          v101 = *(v100 - 6);
          if (v101 > 17)
          {
            if (v101 == 18)
            {
              critsec_Leave(*(a1 + 24));
              v102 = *(*(a1 + 16) + 40);
              v103 = *(v156 + v99);
              v104 = "rate";
              goto LABEL_206;
            }

            if (v101 == 24)
            {
              critsec_Leave(*(a1 + 24));
              v102 = *(*(a1 + 16) + 40);
              v103 = *(v156 + v99);
              v104 = "volume";
              goto LABEL_206;
            }
          }

          else
          {
            if (v101 == 16)
            {
              critsec_Leave(*(a1 + 24));
              v102 = *(*(a1 + 16) + 40);
              v103 = *(v156 + v99);
              v104 = "pitch";
              goto LABEL_206;
            }

            if (v101 == 17)
            {
              critsec_Leave(*(a1 + 24));
              v102 = *(*(a1 + 16) + 40);
              v103 = *(v156 + v99);
              v104 = "timbre";
LABEL_206:
              paramc_ParamSetUInt(v102, v104, v103);
              critsec_Enter(*(a1 + 24));
            }
          }

          v97 = v156;
          v105 = v156 + v99;
          *(v105 - 3) = *(a1 + 1024);
          *(v105 - 2) *= (*(*(a1 + 64) + 40) * *(a1 + 44)) >> 14;
          ++v32;
          v99 += 32;
        }

        while (v32 < __n);
      }

      v153 = 0;
      v106 = *(v149 + *v90);
      if ((v106 & 4) != 0)
      {
        v108 = exp_S7_25(2 * **(*(v89 + 8) + 8 * *v89), &v152);
        v107 = v108 >> (25 - v152);
        ++*v89;
        v106 = *(v149 + *v90);
      }

      else
      {
        LOWORD(v107) = 0;
      }

      if ((v106 & 8) != 0)
      {
        v110 = exp_S7_25(2 * **(*(v88 + 8) + 8 * *v88), &v152);
        v109 = v110 >> ~v152;
        ++*v88;
      }

      else
      {
        LOWORD(v109) = 0;
      }

      v111 = *(a1 + 64);
      if ((*(v111 + 120) & 0x80000000) == 0)
      {
        v112 = 0;
        v113 = *(*(v90 + 8) + 8 * *(a1 + 1016));
        do
        {
          *(v161 + v112) = *(v113 + 4 * v112) >> 2;
          v114 = *(v111 + 120);
          v73 = v112++ < v114;
        }

        while (v73);
        if ((v114 & 0x80000000) == 0)
        {
          v115 = *(a1 + 72);
          if (v115)
          {
            v116 = 0;
            do
            {
              *(v161 + v116) += *(v115 + 4 * v116);
              v73 = v116++ < *(v111 + 120);
            }

            while (v73);
          }
        }
      }

      LODWORD(v10) = BET3FXD__MFVSyn__SynthesisOneFrame(v111, v107, v161, v109, &v153, &v154);
      v117 = 0;
      if ((v10 & 0x80000000) != 0)
      {
        v96 = (a1 + 1020);
        v95 = v151;
        goto LABEL_243;
      }

      v118 = v153;
      v96 = (a1 + 1020);
      v95 = v151;
      if (!v153)
      {
        goto LABEL_243;
      }

      v119.i32[0] = 1;
      v119.i32[1] = v153;
      *(a1 + 1020) = vadd_s32(*(a1 + 1020), v119);
      if (v118 + v151 <= v14)
      {
        break;
      }

      if (v151)
      {
        v120 = (*(*(a1 + 32) + 120))(*(a1 + 984), *(a1 + 992), 2 * v151);
        if (v120 < 0)
        {
          LODWORD(v10) = v120;
LABEL_241:
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", "stream", "audio output", "lhError", v10);
          v95 = 0;
          v117 = *(a1 + 52) != 0;
          goto LABEL_242;
        }

        v118 = v153;
      }

      if (v118 <= v14)
      {
        v121 = v14;
      }

      else
      {
        v121 = v118;
      }

      if (!*(a1 + 52))
      {
        v118 = v121;
      }

      LODWORD(v10) = (*(*(a1 + 32) + 112))(*(a1 + 984), *(a1 + 992), &v155, 2 * v118);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_241;
      }

      v95 = 0;
      v122 = 0;
      v123 = 0;
      v146 = *(a1 + 52) != 0;
      v118 = v153;
      v124 = v155;
      if (v153)
      {
        goto LABEL_237;
      }

LABEL_239:
      vol_ScaleToLevel((v124 + 2 * v122), v123, *(a1 + 60));
      v95 = v153 + v122;
      v96 = (a1 + 1020);
      v117 = v146;
LABEL_242:
      ++*v90;
      ++*(a1 + 1016);
LABEL_243:
      if (v117 || (v10 & 0x80000000) != 0 || *(a1 + 1016) >= v90[11])
      {
        goto LABEL_246;
      }
    }

    v146 = 0;
    v124 = v155;
LABEL_237:
    v125 = v95;
    v126 = 0;
    v122 = v125;
    v127 = v154;
    v123 = v118;
    do
    {
      *(v124 + 2 * (v122 + v126)) = *(v127 + 2 * v126);
      ++v126;
    }

    while (v118 != v126);
    goto LABEL_239;
  }

  LODWORD(v154) = 0;
  __n = 0;
  v161[0] = 0;
  __dst = 0;
  __src = 0;
  v156 = 0;
  if ((safeh_HandleCheck(a1, a2, 9346, 1344) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  *a5 = 1;
  v11 = *(a1 + 40);
  v12 = *(a1 + 44);
  if (v11 >= v12)
  {
    if (v12)
    {
      v12 *= v11 / v12;
    }

    else
    {
      v12 = *(a1 + 40);
    }
  }

  v10 = (*(*(a1 + 32) + 144))(*(a1 + 952), *(a1 + 960), &v154, &__n);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_250:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56004, "%s%x");
    return v10;
  }

  if (!v154)
  {
    if (__n)
    {
      if (!*(a1 + 1000))
      {
        return synstrmaux_CloseOutStreamsOnly((a1 + 128), *(a1 + 32));
      }

      v10 = (*(*(a1 + 32) + 88))(*(a1 + 968), *(a1 + 976), &__src, &__n + 4);
      if ((v10 & 0x80000000) != 0)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x");
      }

      else if (HIDWORD(__n))
      {
        v10 = (*(*(a1 + 32) + 112))(*(a1 + 1000), *(a1 + 1008), &__dst);
        if ((v10 & 0x80000000) != 0)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x");
        }
      }

      if ((v10 & 0x80000000) == 0 && HIDWORD(__n) && __src && __dst)
      {
        memcpy(__dst, __src, HIDWORD(__n));
        v130 = HIDWORD(__n);
        HIDWORD(__n) >>= 5;
        if (v130 >= 0x20)
        {
          LODWORD(v131) = 0;
          v132 = 0;
          v133 = *(a1 + 1024);
          v134 = __dst + 16;
          do
          {
            *(v134 - 1) = v133;
            *v134 = 0;
            ++v132;
            v131 = (v131 + 32);
            v134 += 8;
          }

          while (v132 < HIDWORD(__n));
          goto LABEL_281;
        }

LABEL_276:
        v131 = 0;
LABEL_281:
        v18 = (*(*(a1 + 32) + 120))(*(a1 + 1000), *(a1 + 1008), v131);
        if ((v18 & 0x80000000) != 0)
        {
LABEL_284:
          v10 = v18;
          v129 = *(*(a1 + 16) + 32);
          goto LABEL_285;
        }

        v139 = (*(*(a1 + 32) + 96))(*(a1 + 968), *(a1 + 976), v131);
        if ((v139 & 0x80000000) != 0)
        {
          v10 = v139;
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56006, "%s%s%s%x");
          return v10;
        }

        return synstrmaux_CloseOutStreamsOnly((a1 + 128), *(a1 + 32));
      }

      goto LABEL_277;
    }

    goto LABEL_259;
  }

  v16 = (*(*(a1 + 32) + 88))(*(a1 + 952), *(a1 + 960), v161, &v154);
  if ((v16 & 0x80000000) != 0)
  {
LABEL_251:
    v10 = v16;
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x");
    return v10;
  }

  v10 = (*(*(a1 + 32) + 88))(*(a1 + 968), *(a1 + 976), &__src, &__n + 4);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_258:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x");
    return v10;
  }

  if (v154 < 8)
  {
    return v10;
  }

  v17 = (*(*(a1 + 32) + 112))(*(a1 + 984), *(a1 + 992), &v156, 2 * v12);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_260;
  }

  if (HIDWORD(__n))
  {
    v18 = (*(*(a1 + 32) + 112))(*(a1 + 1000), *(a1 + 1008), &__dst);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_284;
    }
  }

  v10 = critsec_Enter(*(a1 + 24));
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v20 = *v161[0];
  v155 = 0;
  v159 = 0;
  v21 = *(v20 + 48);
  LOWORD(v153) = 0;
  if (HIDWORD(__n) && __src && __dst)
  {
    memcpy(__dst, __src, HIDWORD(__n));
    HIDWORD(__n) >>= 5;
  }

  v22 = *(v20 + 32);
  if (v22 < 1)
  {
    goto LABEL_314;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v147 = *(a1 + 1324);
  v26 = *(v20 + 24);
  do
  {
    v27 = v26[3];
    if (v27 == 1)
    {
      v28 = v26;
    }

    else
    {
      v28 = v25;
    }

    if (v27 == 2)
    {
      v28 = v25;
      v29 = v26;
    }

    else
    {
      v29 = v24;
    }

    if (v27 == 3)
    {
      v23 = v26;
    }

    else
    {
      v25 = v28;
      v24 = v29;
    }

    v26 += 78;
    --v22;
  }

  while (v22);
  if (!v25 || !v24 || !v23)
  {
    goto LABEL_314;
  }

  v30 = *(a1 + 1016);
  if (v30 >= v25[11])
  {
    v85 = 0;
    LODWORD(v32) = 0;
    *(a1 + 1028) = 0;
    v8 = v10;
    goto LABEL_288;
  }

  v145 = v21;
  v31 = 0;
  LODWORD(v32) = 0;
  v148 = (a1 + 1020);
  v8 = v10;
  while (!*(a1 + 52) || *(a1 + 44) + v31 <= v12)
  {
    v33 = __dst;
    v34 = HIDWORD(__n);
    if (__dst)
    {
      v35 = v32 >= HIDWORD(__n);
    }

    else
    {
      v35 = 1;
    }

    v150 = v31;
    if (!v35)
    {
      v32 = v32;
      v36 = (32 * v32) | 0x18;
      while (1)
      {
        if (*&v33[v36 - 12] > v148->i32[0])
        {
LABEL_68:
          v30 = *(a1 + 1016);
          break;
        }

        v37 = *&v33[v36 - 24];
        if (v37 > 17)
        {
          if (v37 == 18)
          {
            critsec_Leave(*(a1 + 24));
            v38 = *(*(a1 + 16) + 40);
            v39 = *(__dst + v36);
            v40 = "rate";
          }

          else
          {
            if (v37 != 24)
            {
              goto LABEL_64;
            }

            critsec_Leave(*(a1 + 24));
            v38 = *(*(a1 + 16) + 40);
            v39 = *(__dst + v36);
            v40 = "volume";
          }
        }

        else if (v37 == 16)
        {
          critsec_Leave(*(a1 + 24));
          v38 = *(*(a1 + 16) + 40);
          v39 = *(__dst + v36);
          v40 = "pitch";
        }

        else
        {
          if (v37 != 17)
          {
            goto LABEL_64;
          }

          critsec_Leave(*(a1 + 24));
          v38 = *(*(a1 + 16) + 40);
          v39 = *(__dst + v36);
          v40 = "timbre";
        }

        paramc_ParamSetUInt(v38, v40, v39);
        critsec_Enter(*(a1 + 24));
        v34 = HIDWORD(__n);
LABEL_64:
        v33 = __dst;
        if (v32 < v34 && *(__dst + v36 - 24) == 8)
        {
          v41 = *(a1 + 1016);
          *(a1 + 1028) = v41;
          *(a1 + 1032) = *&v33[v36 + 24] + v41;
        }

        v42 = &v33[v36];
        *(v42 - 3) = *(a1 + 1024);
        *(v42 - 2) = *(a1 + 44) * *&v33[v36 - 8] * *(a1 + 1340) / 0x64;
        ++v32;
        v34 = HIDWORD(__n);
        v36 += 32;
        if (v32 >= HIDWORD(__n))
        {
          goto LABEL_68;
        }
      }
    }

    v159 = 0;
    v43 = *(a1 + 1340);
    if (v30 >= *(a1 + 1028) && v30 <= *(a1 + 1032))
    {
      *(a1 + 1340) = 100;
    }

    v44 = *v25;
    v45 = *(v21 + *v25);
    if ((v45 & 4) != 0)
    {
      v48 = *v24;
      v49 = v24[11];
      if (*v24 >= v49)
      {
        v48 = v49 - 1;
        *v24 = v49 - 1;
      }

      v50 = exp_S7_25(2 * **(*(v24 + 8) + 8 * v48), &v153);
      v51 = 1374389535 * (v50 >> (24 - v153)) * *(a1 + 1328);
      v46 = (v51 >> 37) + (v51 >> 63);
      ++*v24;
      v44 = *v25;
      v47 = *v25;
      v45 = *(v21 + v47);
    }

    else
    {
      v46 = 0;
      v47 = v44;
    }

    if ((v45 & 8) != 0)
    {
      v53 = *v23;
      v54 = v23[11];
      if (*v23 >= v54)
      {
        v53 = v54 - 1;
        *v23 = v54 - 1;
      }

      v55 = exp_S7_25(2 * **(*(v23 + 8) + 8 * v53), &v153);
      v52 = *(a1 + 1056);
      if (v52)
      {
        v56 = v55 >> ~v153;
        if (v56)
        {
          v57 = v52[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          if (v59 < 0 != v58)
          {
            LODWORD(v52) = v52[3];
          }

          else if (v52[2] >= v56)
          {
            LODWORD(v52) = v52[3] + *v52 * v59;
          }

          else
          {
            LODWORD(v52) = v52[4];
          }
        }

        else
        {
          LODWORD(v52) = 0;
        }
      }

      ++*v23;
      v44 = *v25;
      v47 = *v25;
      v45 = *(v21 + v47);
    }

    else
    {
      LODWORD(v52) = 0;
    }

    if ((~v45 & 0xC) != 0)
    {
      v64 = 0;
      *(a1 + 1332) = 0;
    }

    else
    {
      v60 = v25[11];
      v61 = *(a1 + 1332) + 1;
      *(a1 + 1332) = v61;
      v62 = *(a1 + 1336);
      if (v62)
      {
        v63 = v62 - 1;
      }

      else
      {
        v58 = __OFSUB__(v60, v44);
        v63 = v60 - v44;
        if ((v63 < 0) ^ v58 | (v63 == 0))
        {
          v63 = 0;
        }

        else
        {
          v65 = 0;
          v66 = v21 + v47;
          while ((~*(v66 + v65) & 0xC) == 0)
          {
            if (v63 == ++v65)
            {
              goto LABEL_102;
            }
          }

          v63 = v65;
        }
      }

LABEL_102:
      *(a1 + 1336) = v63;
      if (v63 >= v61)
      {
        v64 = v61;
      }

      else
      {
        v64 = v63;
      }
    }

    if ((*(v21 + *v25) & 0xC) != 0xC)
    {
      v46 = 0;
      LODWORD(v52) = 0;
    }

    *(a1 + 1136) = v64;
    *(a1 + 1140) = 0;
    *(a1 + 1124) = v52;
    *(a1 + 1120) = 0;
    *(a1 + 1128) = (42949673 * (*(a1 + 1340) << 10)) >> 32;
    MrccInput_AllocateData(a1 + 1096, v25[10]);
    *(a1 + 1116) = v46;
    if (v147)
    {
      *(a1 + 1104) = *(*(v25 + 8) + 8 * *v25);
    }

    else
    {
      Data = MrccInput_AllocateData(a1 + 1096, v25[10]);
      if (Data < 0)
      {
        v8 = Data;
        goto LABEL_314;
      }

      v68 = *(a1 + 1112);
      if (v68 >= 1)
      {
        v69 = *(*(v25 + 8) + 8 * *(a1 + 1016));
        v70 = *(a1 + 1104);
        do
        {
          v72 = *v69++;
          v71 = v72;
          v73 = v72 < 0;
          if (v72 < 0)
          {
            v71 = -v71;
          }

          v74 = v71 + 14506 * (v71 >> 15) + ((14506 * (v71 & 0x7FFF) + 0x4000) >> 15);
          if (v73)
          {
            v74 = -v74;
          }

          *v70++ = v74;
          --v68;
        }

        while (v68);
      }
    }

    v8 = RccSyn__SynthesisOneFrame(a1 + 1048, &v159, &v155);
    if (v8 < 0)
    {
      goto LABEL_314;
    }

    v19.n128_f64[0] = RrInput_Reset(a1 + 1208);
    v30 = *(a1 + 1016);
    if (v30 >= *(a1 + 1028) && v30 <= *(a1 + 1032))
    {
      *(a1 + 1340) = v43;
    }

    v75 = v159;
    v31 = v150;
    if (!v159)
    {
      v81 = 0;
      goto LABEL_142;
    }

    v76.i32[0] = 1;
    v76.i32[1] = v159;
    *v148 = vadd_s32(*v148, v76);
    if (v75 + v150 <= v12)
    {
      v81 = 0;
      v82 = v156;
LABEL_136:
      v83 = 0;
      v79 = v31;
      v84 = v155;
      v80 = v75;
      do
      {
        v82[(v79 + v83)] = *(v84 + 2 * v83);
        ++v83;
      }

      while (v75 != v83);
      goto LABEL_138;
    }

    if (v150)
    {
      v77 = (*(*(a1 + 32) + 120))(*(a1 + 984), *(a1 + 992), (2 * v150));
      if (v77 < 0)
      {
        v8 = v77;
LABEL_140:
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", "stream", "audio output", "lhError", v8);
        v31 = 0;
        v81 = *(a1 + 52) != 0;
        goto LABEL_141;
      }

      v75 = v159;
    }

    if (v75 <= v12)
    {
      v78 = v12;
    }

    else
    {
      v78 = v75;
    }

    if (!*(a1 + 52))
    {
      v75 = v78;
    }

    v8 = (*(*(a1 + 32) + 112))(*(a1 + 984), *(a1 + 992), &v156, 2 * v75);
    if (v8 < 0)
    {
      goto LABEL_140;
    }

    v31 = 0;
    v79 = 0;
    v80 = 0;
    v81 = *(a1 + 52) != 0;
    v75 = v159;
    v82 = v156;
    if (v159)
    {
      goto LABEL_136;
    }

LABEL_138:
    vol_ScaleToLevel(&v82[v79], v80, *(a1 + 60));
    v31 = v159 + v79;
    v21 = v145;
LABEL_141:
    ++*v25;
    v30 = *(a1 + 1016) + 1;
    *(a1 + 1016) = v30;
LABEL_142:
    if (v81 || v8 < 0 || v30 >= v25[11])
    {
      break;
    }
  }

  *(a1 + 1028) = 0;
  if (v31)
  {
    if ((v8 & 0x80000000) == 0)
    {
      v8 = (*(*(a1 + 32) + 120))(*(a1 + 984), *(a1 + 992), (2 * v31), v19);
      if (v8 < 0)
      {
        goto LABEL_249;
      }
    }
  }

  v85 = v32 != 0;
  if (v8 < 0 || !v32)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_314;
  }

  v8 = (*(*(a1 + 32) + 120))(*(a1 + 1000), *(a1 + 1008), (32 * v32), v19);
  if (v8 < 0)
  {
    goto LABEL_312;
  }

  v85 = 1;
LABEL_288:
  if (*(a1 + 1016) < v25[11])
  {
    goto LABEL_301;
  }

  v8 = (*(*(a1 + 32) + 96))(*(a1 + 952), *(a1 + 960), 8);
  if ((v8 & 0x80000000) == 0)
  {
    *(a1 + 1016) = 0;
    v140 = v154;
LABEL_304:
    if (v140 <= 8)
    {
      v141 = 1;
    }

    else
    {
      v141 = 2;
    }

LABEL_307:
    *a5 = v141;
    if (v85)
    {
      v8 = (*(*(a1 + 32) + 96))(*(a1 + 968), *(a1 + 976), (32 * v32));
      if (v8 < 0)
      {
        v142 = *(*(a1 + 16) + 32);
        goto LABEL_311;
      }
    }

    goto LABEL_314;
  }

LABEL_310:
  v142 = *(*(a1 + 16) + 32);
LABEL_311:
  log_OutPublic(v142, "SYNTH_BET3", 56006, "%s%s%s%x");
LABEL_314:
  v143 = critsec_Leave(*(a1 + 24));
  if (v143 >= 0 || v8 <= -1)
  {
    return v8;
  }

  else
  {
    return v143;
  }
}

uint64_t synth_bet3_ProcessEnd_0(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 9346, 1344) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  *(a1 + 1020) = 0;
  v3 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 128), v3);
}

uint64_t synth_bet3_loc_ParamCheckChange_0(int a1, char *__s1, const char *a3, _DWORD *a4)
{
  if (!strcmp(__s1, "audiooutputbufsamples"))
  {
    if (LH_atoi(a3) <= 0)
    {
      result = 2164269071;
    }

    else
    {
      result = 0;
    }
  }

  else if (!strcmp(__s1, "volume"))
  {
    if (LH_atoi(a3) <= 0x64)
    {
      result = 0;
    }

    else
    {
      result = 2164269071;
    }
  }

  else
  {
    if (!strcmp(__s1, "rate"))
    {
      v8 = __CFADD__(LH_atoi(a3) - 401, 351);
    }

    else
    {
      if (!strcmp(__s1, "ratewpm"))
      {
        result = 2164269057;
        goto LABEL_19;
      }

      if (strcmp(__s1, "pitch"))
      {
        result = 0;
        goto LABEL_19;
      }

      v8 = __CFADD__(LH_atoi(a3) - 201, 151);
    }

    if (v8)
    {
      result = 0;
    }

    else
    {
      result = 2164269071;
    }
  }

LABEL_19:
  *a4 = result >= 0;
  return result;
}

uint64_t synth_bet3_loc_ParamLearnChange_0(uint64_t a1, char *__s1, const char *a3)
{
  if (strcmp(__s1, "audiooutputbufsamples") && strcmp(__s1, "volume") && strcmp(__s1, "rate") && strcmp(__s1, "rate_baseline") && strcmp(__s1, "pitch_baseline") && strcmp(__s1, "ratewpm") && strcmp(__s1, "pitch"))
  {
    return 0;
  }

  v7 = LH_atoi(a3);

  return synth_bet3_loc_ParamSet_0(a1, __s1, v7);
}

uint64_t synth_bet3_loc_ParamGetListen_0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, int *a7)
{
  if (((paramc_ParamGetInt(*(*(a1 + 16) + 40), a2, a7) & 0x80000000) != 0 || (a5 = a3, *a7 < a3) || (a5 = a4, *a7 > a4)) && (v14 = paramc_ParamSetInt(*(*(a1 + 16) + 40), a2, a5), *a7 = a5, (v14 & 0x80000000) != 0))
  {
    v16 = v14;
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56009, "%s%s");
  }

  else
  {
    v15 = *(*(a1 + 16) + 40);
    v18 = *a6;
    v19 = *(a6 + 2);
    v16 = paramc_ListenerAdd(v15, a2, &v18);
    if ((v16 & 0x80000000) != 0)
    {
      log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56010, 0);
    }
  }

  return v16;
}

uint64_t synth_bet3_loc_SynthInit_MRCC(uint64_t a1)
{
  v10 = 0;
  __s1 = 0;
  v2 = *(a1 + 16);
  *(a1 + 1332) = 0;
  *(a1 + 1340) = 100;
  RccSyn__deinit_Synthesis((a1 + 1048));
  v13 = 0;
  v12 = 0;
  inited = paramc_ParamGet(*(v2 + 40), "mrcc_synthparam_ref_ptr", &v12, &v13);
  if ((inited & 0x80000000) == 0)
  {
    v4 = *v12;
    *(v4 + 128) = 4000;
    *(v4 + 112) = xmmword_1C382FEA0;
    *(a1 + 1056) = v4 + 112;
    *(a1 + 1320) = 0;
    inited = RccSyn__init_Synthesis(v2, a1 + 1048, v4);
    if ((inited & 0x80000000) == 0)
    {
      v5 = *(v4 + 16);
      if (v5 == 22000)
      {
        v5 = 22050;
        *(v4 + 16) = 22050;
      }

      *(a1 + 48) = v5;
      v6 = (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && strcmp(__s1, "bet3") == 0;
      *(a1 + 52) = v6;
      Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceframesize", &v10);
      if ((Int & 0x80000000) != 0)
      {
        Str = Int;
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s");
        return Str;
      }

      *(a1 + 44) = v10 * *(a1 + 48) / 0x3E8u;
      Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevol", &__s1);
      if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 26011, "%s%s");
        return Str;
      }

      *(a1 + 56) = LH_atoi(__s1);
      paramc_ParamRelease(*(v2 + 40));
      inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "volume", &v10 + 1);
      if ((inited & 0x80000000) == 0)
      {
        inited = synth_bet3_loc_ParamSet_0(a1, "volume", HIDWORD(v10));
        if ((inited & 0x80000000) == 0)
        {
          inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v10 + 1);
          if ((inited & 0x80000000) == 0)
          {
            inited = synth_bet3_loc_ParamSet_0(a1, "rate", HIDWORD(v10));
            if ((inited & 0x80000000) == 0)
            {
              inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate_baseline", &v10 + 1);
              if ((inited & 0x80000000) == 0)
              {
                inited = synth_bet3_loc_ParamSet_0(a1, "rate_baseline", HIDWORD(v10));
                if ((inited & 0x80000000) == 0)
                {
                  inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch_baseline", &v10 + 1);
                  if ((inited & 0x80000000) == 0)
                  {
                    inited = synth_bet3_loc_ParamSet_0(a1, "pitch_baseline", HIDWORD(v10));
                    if ((inited & 0x80000000) == 0)
                    {
                      inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v10 + 1);
                      if ((inited & 0x80000000) == 0)
                      {
                        return synth_bet3_loc_ParamSet_0(a1, "pitch", HIDWORD(v10));
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

  return inited;
}

uint64_t synth_bet3_loc_SynthInit_MLSA_0(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  __s1 = 0;
  v2 = *(a1 + 16);
  v22 = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  Int = paramc_ParamGetInt(*(v2 + 40), "frequencyhz", &v23 + 1);
  if ((Int & 0x80000000) != 0 || ((MFVSyn__denit__MVF_Synthesis((a1 + 64)), *(a1 + 48) = HIDWORD(v23), (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &__s1) & 0x80000000) != 0) ? (v4 = 0) : (v4 = strcmp(__s1, "bet3") == 0), *(a1 + 52) = v4, HIDWORD(v20[0]) = 0, v21 = 0, v20[1] = xmmword_1C382FEB0, LODWORD(v20[0]) = wave_t__convertFromF0ToTp_SR(0xAF00u, SHIDWORD(v23)) >> 6, *(v20 + 4) = wave_t__convertFromF0ToTp_SR(0xA00u, SHIDWORD(v23)) >> 6, Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceframesize", &v22 + 1), (Int & 0x80000000) != 0))
  {
    Str = Int;
    v12 = *(*(a1 + 16) + 32);
LABEL_34:
    log_OutPublic(v12, "SYNTH_BET3", 56008, "%s%s");
    return Str;
  }

  *(a1 + 44) = HIDWORD(v22) * *(a1 + 48) / 0x3E8u;
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevol", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1 || (*(a1 + 56) = LH_atoi(__s1), paramc_ParamRelease(*(v2 + 40)), Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicemvfboost", &__s1), (Str & 0x80000000) != 0) || !__s1 || !*__s1)
  {
    v13 = *(*(a1 + 16) + 32);
LABEL_36:
    log_OutPublic(v13, "SYNTH_BET3", 26011, "%s%s");
    return Str;
  }

  v6 = LH_atoi(__s1);
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicealpha", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    v13 = *(*(a1 + 16) + 32);
    goto LABEL_36;
  }

  v7 = LH_atoi(__s1);
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevuvrelamp", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    v12 = *(*(a1 + 16) + 32);
    goto LABEL_34;
  }

  v8 = LH_atoi(__s1);
  paramc_ParamRelease(*(v2 + 40));
  v9 = paramc_ParamGetInt(*(v2 + 40), "bet2voiceorder", &v22);
  if ((v9 & 0x80000000) != 0 || (v9 = paramc_ParamGetStr(*(v2 + 40), "bet2voicevsynthinit", &v18), (v9 & 0x80000000) != 0))
  {
    Str = v9;
    v12 = *(*(a1 + 16) + 32);
    goto LABEL_34;
  }

  v10 = 1;
  if ((paramc_ParamGetStr(*(v2 + 40), "bet2cpupower", &__s1) & 0x80000000) == 0 && __s1 && *__s1)
  {
    v11 = LH_atoi(__s1);
    if (v11 >= 5)
    {
      v10 = 1;
    }

    else
    {
      v10 = v11;
    }

    paramc_ParamRelease(*(v2 + 40));
  }

  if (!paramc_ParamGet(*(v2 + 40), "bet3cepstralequalizer", (a1 + 72), &v19) && v22 + 1 != v19 >> 2)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", "parameter", "bet3cepstralequalizer");
    return 0;
  }

  strcpy(__s, "synth");
  if ((paramc_ParamGetStr(*(v2 + 40), "bet2voicequality", &__s1) & 0x80000000) == 0 && __s1 && *__s1)
  {
    __strcat_chk();
    __strcat_chk();
    paramc_ParamRelease(*(v2 + 40));
  }

  else
  {
    __strcat_chk();
  }

  __strcat_chk();
  __strcat_chk();
  v15 = strlen(__s);
  LH_itoa(SHIDWORD(v23) / 1000, &__s[v15], 0xAu);
  v16 = ssftriff_reader_ObjOpen(*a1, *(a1 + 8), 0, __s, "HMEX", 1031, &v17);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  Str = BET3FXD__MFVSyn__init__MVF_Synthesis((a1 + 64), *(a1 + 16), v20, v17, HIDWORD(v22), v22, v7, HIDWORD(v23), v10, v18);
  if ((Str & 0x80000000) == 0)
  {
    if (!v17 || (Str = ssftriff_reader_ObjClose(v17), (Str & 0x80000000) == 0))
    {
      if (MFVSyn__setRelativeUVBoost(*(a1 + 64), v8))
      {
        LODWORD(Str) = -2130698240;
      }

      if ((Str & 0x80000000) == 0 && BET3FXD__MFVSyn__setMVFBoost(*(a1 + 64), v6))
      {
        LODWORD(Str) = -2130698240;
      }

      Str = BET3FXD__MFVSyn__setVolumeBoost(*(a1 + 64), *(a1 + 56)) ? 2164269056 : Str;
      if ((Str & 0x80000000) == 0)
      {
        v16 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "volume", &v23);
        if ((v16 & 0x80000000) == 0)
        {
          v16 = synth_bet3_loc_ParamSet_0(a1, "volume", v23);
          if ((v16 & 0x80000000) == 0)
          {
            v16 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate_baseline", &v23);
            if ((v16 & 0x80000000) == 0)
            {
              v16 = synth_bet3_loc_ParamSet_0(a1, "rate_baseline", v23);
              if ((v16 & 0x80000000) == 0)
              {
                v16 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v23);
                if ((v16 & 0x80000000) == 0)
                {
                  v16 = synth_bet3_loc_ParamSet_0(a1, "rate", v23);
                  if ((v16 & 0x80000000) == 0)
                  {
                    v16 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch_baseline", &v23);
                    if ((v16 & 0x80000000) == 0)
                    {
                      v16 = synth_bet3_loc_ParamSet_0(a1, "pitch_baseline", v23);
                      if ((v16 & 0x80000000) == 0)
                      {
                        v16 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v23);
                        if ((v16 & 0x80000000) == 0)
                        {
                          return synth_bet3_loc_ParamSet_0(a1, "pitch", v23);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        return v16;
      }
    }
  }

  return Str;
}

uint64_t synth_bet3_loc_ParamSet_0(uint64_t a1, const char *a2, unsigned int a3)
{
  if (!strcmp(a2, "audiooutputbufsamples"))
  {
    v6 = 0;
    if (a3 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a3;
    }

    *(a1 + 40) = v12;
  }

  else
  {
    v6 = critsec_Enter(*(a1 + 24));
    if ((v6 & 0x80000000) == 0)
    {
      if (!strcmp(a2, "volume"))
      {
        v8 = 2164269071;
        if (a3 > 0x64)
        {
          goto LABEL_24;
        }

        *(a1 + 60) = a3;
        goto LABEL_23;
      }

      if (!strcmp(a2, "rate_baseline"))
      {
        v8 = 2164269071;
        if (a3 - 401 < 0xFFFFFEA1)
        {
          goto LABEL_24;
        }

        v23 = 0;
        *(a1 + 1040) = a3;
        v13 = "rate";
        paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v23);
        v14 = v23;
      }

      else
      {
        if (!strcmp(a2, "rate"))
        {
          v16 = MapProsodyValue_Scaling(50, 100, 0x190u, *(a1 + 1040), a3);
          if (!v16 || (v17 = (v16 + 9999) / v16, v18 = v17, (v17 - 201) < 0xFFFFFF50))
          {
            v8 = 2164269071;
            goto LABEL_24;
          }

          log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set rate %d", v16);
          v19 = *(a1 + 1036);
          if (v19 != 1)
          {
            v8 = v6;
            if (!v19)
            {
              v11 = BET3FXD__MFVSyn__setRate(*(a1 + 64), v18);
LABEL_35:
              if (v11)
              {
                v8 = 2164269071;
              }

              else
              {
                v8 = v6;
              }
            }

LABEL_24:
            critsec_Leave(*(a1 + 24));
            return v8;
          }

          v20 = v17;
          v21 = v17 - 25;
          v8 = 2164269071;
          if (v21 > 0xAF)
          {
            goto LABEL_24;
          }

          *(a1 + 1340) = v20;
LABEL_23:
          v8 = v6;
          goto LABEL_24;
        }

        if (!strcmp(a2, "ratewpm"))
        {
          v8 = 2164269057;
          goto LABEL_24;
        }

        if (strcmp(a2, "pitch_baseline"))
        {
          if (!strcmp(a2, "pitch"))
          {
            v7 = MapProsodyValue_Scaling(50, 100, 0xC8u, *(a1 + 1044), a3);
            v8 = 2164269071;
            if ((v7 - 201) < 0xFFFFFF69)
            {
              goto LABEL_24;
            }

            if (*(a1 + 52))
            {
              v9 = v7;
              log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set pitch %d (synth %d)", v9, v9);
              v10 = *(a1 + 1036);
              if (v10 != 1)
              {
                v8 = v6;
                if (!v10)
                {
                  v11 = BET3FXD__MFVSyn__setPitchLevelPercent(*(a1 + 64), v9);
                  goto LABEL_35;
                }

                goto LABEL_24;
              }

              *(a1 + 1328) = v9;
            }
          }

          goto LABEL_23;
        }

        v8 = 2164269071;
        if (a3 - 201 < 0xFFFFFF69)
        {
          goto LABEL_24;
        }

        v22 = 0;
        *(a1 + 1044) = a3;
        v13 = "pitch";
        paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v22);
        v14 = v22;
      }

      synth_bet3_loc_ParamSet_0(a1, v13, v14);
      goto LABEL_23;
    }
  }

  return v6;
}

unsigned int *rand_num_qs(unsigned int *result, _WORD *a2, int a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v4 = *result;
    v5 = a4;
    do
    {
      v6 = ((1101463552 * HIWORD(v4)) & 0x7FFF0000) + 16807 * v4 + ((16807 * HIWORD(v4)) >> 15);
      v4 = (v6 + (v6 >> 31)) & 0x7FFFFFFF;
      *a2++ = (((0x40000000 - v4) >> 16) * (a3 >> 2)) >> 14;
      --v5;
    }

    while (v5);
    *result = v4;
  }

  return result;
}

void BET3FXD__MFVSyn__constructExcitationShapingFilter(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 56) >= *(a1 + 384))
  {
    v3 = *(a1 + 368);
    if (a2)
    {
      v4 = *(a1 + 376);
      *(v3 + 2 * v4 - 2) = a2;
      memmove(v3, (v3 + 2), 2 * (v4 - 1));
      v5 = *(a1 + 368) + 2 * *(a1 + 376);
      v6 = *(v5 - 4);
      v7 = v6 <= 0;
      v8 = v6 > 0;
      v9 = 4 * v6;
      v10 = 4 * v8;
      if (v7)
      {
        v9 = 0;
      }

      v11 = *(v5 - 6);
      v12 = (4 * v8) | 2;
      v13 = 2 * v11;
      if (v11 <= 0)
      {
        v13 = 0;
      }

      else
      {
        v10 = v12;
      }

      v14 = v13 & 0xFFFE;
      v15 = *(v5 - 8);
      if (v15 > 0)
      {
        ++v10;
      }

      a2 = ((v9 + (v15 & ~(v15 >> 31)) + v14) * g_invDiv[v10]) >> 16;
    }

    else
    {
      bzero(v3, 2 * *(a1 + 380));
      a2 = 0;
    }
  }

  v16 = *(a1 + 12);
  if (v16 >= (*(a1 + 48) * a2) >> 14)
  {
    LOWORD(v16) = (*(a1 + 48) * a2) >> 14;
  }

  *(a1 + 352) = v16;
}

uint64_t MFVSyn__filterExcitationWithShapingFilter(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a2;
  v6 = a1;
  v7 = *(a1 + 16) * a3;
  if (v7 < 0x7AE149)
  {
    bzero(*(a4 + 8), 2 * *(a4 + 16));
    result = rand_num_qs((v6 + 60), *(v6 + 208), *(v6 + 32), v5);
    *(v6 + 508) = 0xFFFFFFFFLL;
    goto LABEL_46;
  }

  v8 = *(a1 + 472);
  if (v8 < 1)
  {
LABEL_6:
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = 0;
    v10 = (*(a1 + 480) + 16);
    while (1)
    {
      v11 = *v10;
      v10 += 6;
      if (v11 >= v7)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_6;
      }
    }
  }

  if (*(a1 + 504) == a2)
  {
    v12 = *(a1 + 500);
    LOWORD(a1) = *(a1 + 500);
  }

  else
  {
    LODWORD(a1) = fxd_U16SqrtS32(a2 << 6);
    v14 = *(v6 + 500);
    *(v6 + 504) = v5;
    v12 = a1;
    if (a1 != v14)
    {
      goto LABEL_16;
    }
  }

  if (v9 != *(v6 + 508))
  {
LABEL_16:
    v19 = *(v6 + 488);
    if (v19 >= 1)
    {
      v47 = a1;
      v20 = 0;
      v21 = *(v6 + 480) + 24 * v9;
      v22 = (((((*(v6 + 28) * *(v21 + 20)) >> 14) + 4 * *(v21 + 20) * HIWORD(*(v6 + 28))) * v12) >> 14) + 4 * v12 * ((((*(v6 + 28) * *(v21 + 20)) >> 14) + 4 * *(v21 + 20) * (*(v6 + 28) >> 16)) >> 16);
      v23 = *v21;
      v24 = 2 * v19;
      do
      {
        v25 = fxd_S32ShMultRndS32S16(v22, *(v23 + v20), 7);
        if (v25 <= -32768)
        {
          v26 = -32768;
        }

        else
        {
          v26 = v25;
        }

        if (v26 >= 0x7FFF)
        {
          LOWORD(v26) = 0x7FFF;
        }

        *(*(a4 + 8) + v20) = v26;
        *(*(v6 + 528) + v20) = v26;
        v20 += 2;
      }

      while (v24 != v20);
      LOWORD(a1) = v47;
    }

    goto LABEL_25;
  }

  v15 = *(v6 + 488);
  if (v15 >= 1)
  {
    v16 = *(v6 + 528);
    v17 = *(a4 + 8);
    do
    {
      v18 = *v16++;
      *v17++ = v18;
      --v15;
    }

    while (v15);
  }

LABEL_25:
  *(v6 + 500) = a1;
  v27 = *(v6 + 264);
  if (v27 >= 1)
  {
    if (v27 >= v5)
    {
      v28 = v5;
    }

    else
    {
      v28 = *(v6 + 264);
    }

    if (*(a4 + 16) >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(a4 + 16);
    }

    if (v29 >= 1)
    {
      v30 = 0;
      v31 = *(a4 + 8);
      do
      {
        v32 = fxd_S16SatAddS16S16(*(v31 + v30), *(*(v6 + 256) + v30));
        v31 = *(a4 + 8);
        *(v31 + v30) = v32;
        v30 += 2;
      }

      while (2 * v29 != v30);
      v27 = *(v6 + 264);
    }

    v33 = __OFSUB__(v27, v29);
    v34 = v27 - v29;
    if (!((v34 < 0) ^ v33 | (v34 == 0)))
    {
      memmove(*(v6 + 256), (*(v6 + 256) + 2 * v29), 2 * v34);
      *(v6 + 264) = (*(v6 + 264) - v29) & ~((*(v6 + 264) - v29) >> 31);
    }
  }

  bzero(*(v6 + 256), 2 * *(v6 + 268));
  v35 = *(v6 + 488);
  v33 = __OFSUB__(v35, v5);
  v36 = v35 - v5;
  if ((v36 < 0) ^ v33 | (v36 == 0))
  {
    v37 = v5;
  }

  else
  {
    v37 = v5;
    memmove(*(v6 + 256), (*(a4 + 8) + 2 * v5), 2 * v36);
    v38 = *(v6 + 488) - v5;
    if (v38 <= *(v6 + 264))
    {
      v38 = *(v6 + 264);
    }

    *(v6 + 264) = v38;
  }

  v39 = *(v6 + 492);
  v40 = *(*(v6 + 480) + 24 * v9 + 22);
  rand_num_qs((v6 + 60), (*(v6 + 208) + 2 * v39), ((*(v6 + 32) * v40) >> 14) + 4 * v40 * (*(v6 + 32) >> 16), v5);
  memmove(*(v6 + 208), *(v6 + 280), 2 * v39);
  memmove(*(v6 + 280), (*(v6 + 208) + 2 * v37), 2 * v39);
  zerflt_qs(*(v6 + 208) + 2 * v39, *(*(v6 + 480) + 24 * v9 + 8), *(v6 + 208) + 2 * v39, *(v6 + 492), v5);
  result = memmove(*(v6 + 208), (*(v6 + 208) + 2 * v39), 2 * v5);
  v41 = *(v6 + 512);
  v42 = *(v6 + 516);
  v33 = __OFSUB__(v41, v42);
  v43 = v41 - v42;
  if (!((v43 < 0) ^ v33 | (v43 == 0)))
  {
    *(v6 + 512) = v43;
  }

  *(v6 + 508) = v9;
LABEL_46:
  if (v5 >= 1)
  {
    v44 = 0;
    v45 = *(a4 + 8);
    v46 = 2 * v5;
    do
    {
      result = fxd_S16SatAddS16S16(*(v45 + v44), *(*(v6 + 208) + v44));
      v45 = *(a4 + 8);
      *(v45 + v44) = result;
      v44 += 2;
    }

    while (v46 != v44);
  }

  return result;
}