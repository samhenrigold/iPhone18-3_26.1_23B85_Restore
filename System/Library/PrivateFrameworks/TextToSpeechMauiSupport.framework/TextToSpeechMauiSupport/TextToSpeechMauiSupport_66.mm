uint64_t BET3FXD__select_bet3_FeatureExtractProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t *a10, uint64_t *a11, _DWORD *a12)
{
  v100 = *MEMORY[0x277D85DE8];
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
  v95 = v18;
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
    goto LABEL_128;
  }

  v23 = v22;
  v92 = a2;
  v96 = a3;
  v24 = 0;
  v93 = a10 + 2;
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
        goto LABEL_129;
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
              goto LABEL_129;
            }

            break;
          case 0x2Eu:
            v39 = heap_Calloc(*(v16 + 8), v21, 9);
            a10[445] = v39;
            if (!v39)
            {
              goto LABEL_129;
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
                goto LABEL_129;
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
              goto LABEL_129;
            }
          }
        }

        else
        {
          if (v24 != 56)
          {
LABEL_42:
            log_OutPublic(*(*a1 + 32), "SELECT_BET3", 55007, "%s%u", "feature", v24);
            goto LABEL_20;
          }

          v32 = *(v25 + 2966);
          if (v32)
          {
            v33 = heap_Calloc(*(v16 + 8), (v32 * v21), 1);
            a10[450] = v33;
            if (!v33)
            {
              goto LABEL_129;
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
            goto LABEL_129;
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
            goto LABEL_129;
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
    goto LABEL_130;
  }

  v42 = heap_Calloc(*(v16 + 8), (v40 * v21), 4);
  a10[451] = v42;
  if (!v42)
  {
LABEL_129:
    v41 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0);
    goto LABEL_130;
  }

  if (*(*a10 + 3578) * v21)
  {
    memset(v42, 255, 4 * *(*a10 + 3578) * v21);
  }

  GenericFeatureLayers = usextract_allocateGenericFeatureLayers(*a1, "SELECT_BET3", a10, v21);
  if (GenericFeatureLayers < 0)
  {
    v41 = GenericFeatureLayers;
    goto LABEL_131;
  }

  v41 = usextract_Process(*a1, "SELECT_BET3", a1[2], a3, a4, a10);
  if ((v41 & 0x80000000) == 0)
  {
    v91 = a4;
    if (a10[438])
    {
      v44 = **(*a10 + 3336);
      if (v44)
      {
        v45 = 0;
        v46 = 1;
        do
        {
          v47 = cstdlib_strncmp(v44, "INNO_", 5uLL);
          v48 = *a10;
          if (v47)
          {
            v49 = *(*(v48 + 3344) + 8 * v45);
            v50 = cstdlib_strlen("FEATIDX");
            Index = usextract_getIndex(v49, "FEATIDX", &aFeatidx[v50]);
            if (Index == -1)
            {
              if (cstdlib_strcmp(*(*(*a10 + 3336) + 8 * v45), "POS"))
              {
                if (!cstdlib_strcmp(*(*(*a10 + 3336) + 8 * v45), "PHR"))
                {
                  a10[64] = *(a10[438] + 8 * v45);
                }
              }

              else
              {
                a10[63] = *(a10[438] + 8 * v45);
              }
            }

            else
            {
              v93[*(*(*(*a10 + 3352) + 8 * v45) + Index)] = *(a10[438] + 8 * v45);
            }
          }

          else
          {
            v52 = cstdlib_atoi((*(*(v48 + 3336) + 8 * v45) + 5)) + 79;
            if (v52 <= 0x5E)
            {
              v93[v52] = *(a10[438] + 8 * v45);
            }
          }

          v45 = v46;
          v44 = *(*(*a10 + 3336) + 8 * v46++);
        }

        while (v44);
      }
    }

    v90 = *(a10 + 5);
    v53 = v90 & ~(v90 >> 31);
    if (BET3FXD__log_select_GetLogLevel(*(v16 + 32)) >= 6)
    {
      LH_itoa(0x4Eu, v99, 0xAu);
      for (i = 0; i != 218; ++i)
      {
        if (i > 3u)
        {
          if (i == 4)
          {
            v55 = "application/x-realspeak-usplosives;version=4.0";
LABEL_82:
            v56 = *(*a10 + i + 2748);
            if (v56 == 2)
            {
              log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v99, v55, a10[i + 220], 2 * v53, 0);
            }

            else if (v56 == 1)
            {
              log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v99, v55, a10[i + 2], v53, 0);
            }

            continue;
          }

          if (i == 5)
          {
            v55 = "application/x-realspeak-usmarkers-u16;version=4.0";
            goto LABEL_82;
          }
        }

        else if (i == 2)
        {
          v98 = 5;
          v97 = 0;
          log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v99, "text/x-realspeak-usphonemes;charset=tts", &v98, 1u, 0);
          log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v99, "text/x-realspeak-usphonemes;charset=tts", a10[i + 2], v53, 0);
          log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v99, "text/x-realspeak-usphonemes;charset=tts", &v97, 1u, 0);
        }

        else if (i == 3)
        {
          v55 = "application/x-realspeak-usdurs;version=4.0";
          goto LABEL_82;
        }
      }
    }

    v94 = v90 & ~(v90 >> 31);
    v57 = *(a10 + 880);
    if (v57)
    {
      v58 = 0;
      for (j = 0; j < v57; ++j)
      {
        if (*(a10[439] + v58) == 25)
        {
          *v99 = 0;
          paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v99);
          v60 = *(a10[439] + v58 + 24);
          *a9 = v60;
          v41 = paramc_ParamSetInt(*(v16 + 40), "waitfactor", v60);
          if (v41 < 0)
          {
            log_OutPublic(*(v16 + 32), "SELECT_BET3", 55009, "%s%s%s%d%s%x", "parameter", "waitfactor", "value", *a9, "lhError", v41);
LABEL_145:
            a4 = v91;
LABEL_130:
            a3 = v96;
            goto LABEL_131;
          }

          v57 = *(a10 + 880);
        }

        v58 += 32;
      }
    }

    featextract_adjustSilAudioOrder(a10);
    a3 = v96;
    if (!v95)
    {
      goto LABEL_108;
    }

    v61 = *(a10 + 880);
    v62 = v61 + v94;
    *a12 = v62;
    if (!(v61 + v94))
    {
      goto LABEL_108;
    }

    v63 = heap_Calloc(*(v16 + 8), v62, 32);
    *a11 = v63;
    a4 = v91;
    if (v63)
    {
      v64 = heap_Calloc(*(v16 + 8), *(a10 + 5), 2);
      if (v64)
      {
        v65 = v64;
        cstdlib_memcpy(v64, a10[225], 2 * *(a10 + 5));
        if (*a12)
        {
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v69 = 0;
          while (v69 < *(a10 + 880))
          {
            if (v68 >= v94)
            {
              v75 = (*a11 + v66);
              v76 = (a10[439] + 32 * v69);
              v77 = v76[1];
              *v75 = *v76;
              v75[1] = v77;
              ++v69;
              goto LABEL_106;
            }

            v70 = v68;
            if (!*(v65 + 2 * v68))
            {
              goto LABEL_104;
            }

            v71 = (*a11 + v66);
            v72 = (a10[439] + 32 * v69);
            v73 = v72[1];
            *v71 = *v72;
            v71[1] = v73;
            ++v69;
            --*(v65 + 2 * v68);
LABEL_106:
            ++v67;
            v66 += 32;
            if (v67 >= *a12)
            {
              goto LABEL_107;
            }
          }

          v70 = v68;
LABEL_104:
          v74 = (*a11 + v66);
          *v74 = 33;
          v74[6] = *(a10[4] + v70);
          ++v68;
          goto LABEL_106;
        }

LABEL_107:
        heap_Free(*(v16 + 8), v65);
LABEL_108:
        if (v90 >= 1)
        {
          v78 = 0;
          v79 = v92 + 7356;
          v80 = v94 - 1;
          while (1)
          {
            v81 = a10[31];
            if (!*(v81 + v78))
            {
              *(v81 + v78) = -1;
            }

            v82 = a10[24];
            if (*(a10[4] + v78) == 35)
            {
              v83 = 1;
            }

            else
            {
              v83 = 2 * *(v82 + v78);
            }

            *(v82 + v78) = v83;
            v84 = a10[4];
            v85 = *(v84 + v78);
            if (v80 == v78)
            {
              if (v85 == 35)
              {
                *v99 = 0;
                paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v99);
                v86 = 0;
                v87 = a10[223];
                if (*v99 != 1)
                {
                  v86 = *(v87 + 2 * v78) + 200 * *a9;
                }

                if (v86 <= 1)
                {
                  v86 = 1;
                }

                if (v86 >= 0xFFFF)
                {
                  LOWORD(v86) = -1;
                }

                *(v87 + 2 * v78) = v86;
                v84 = a10[4];
              }

              *(v84 + v78) = *(v79 + *(v84 + v78));
              if (v80 == v78)
              {
                goto LABEL_145;
              }
            }

            else
            {
              *(v84 + v78) = *(v79 + v85);
            }

            ++v78;
          }
        }

        a4 = v91;
        goto LABEL_131;
      }
    }

LABEL_128:
    v41 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0);
  }

LABEL_131:
  if (a12 && a11 && v41 < 0 && *a11)
  {
    heap_Free(*(v16 + 8), *a11);
    *a11 = 0;
    *a12 = 0;
  }

  LODWORD(result) = (*(a1[2] + 64))(a3, a4);
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

  cstdlib_memset(a2, 0, 8uLL);
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

void *BET3FXD__DeInitModelSet(uint64_t a1, void *__b)
{
  v4 = __b[59];
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    __b[59] = 0;
  }

  for (i = 39; i != 49; ++i)
  {
    v6 = __b[i];
    if (v6)
    {
      if (*(v6 + 120))
      {
        heap_Free(*(a1 + 8), *(v6 + 120));
        *(__b[i] + 120) = 0;
        v6 = __b[i];
      }

      heap_Free(*(a1 + 8), v6);
      __b[i] = 0;
    }
  }

  if (*(__b + 198))
  {
    v7 = 0;
    v8 = 0;
    v9 = __b[54];
    v10 = v9;
    do
    {
      if (v10)
      {
        v11 = *(v10 + v7 + 8);
        if (v11)
        {
          heap_Free(*(a1 + 8), v11);
          v9 = __b[54];
          *(v9 + v7 + 8) = 0;
        }

        v12 = *(v9 + v7 + 24);
        if (v12)
        {
          heap_Free(*(a1 + 8), v12);
          v9 = __b[54];
          *(v9 + v7 + 24) = 0;
        }

        v13 = *(v9 + v7 + 32);
        v10 = v9;
        if (v13)
        {
          heap_Free(*(a1 + 8), v13);
          v9 = __b[54];
          *(v9 + v7 + 32) = 0;
          v10 = v9;
        }
      }

      ++v8;
      v7 += 40;
    }

    while (v8 < 2 * *(__b + 198));
  }

  v14 = __b[52];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    __b[52] = 0;
  }

  v15 = __b[53];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    __b[53] = 0;
  }

  v16 = __b[54];
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
    __b[54] = 0;
  }

  v17 = __b[56];
  if (v17)
  {
    __b[56] = v17 + 32;
    heap_Free(*(a1 + 8), v17 + 32);
    __b[56] = 0;
  }

  return cstdlib_memset(__b, 0, 0x260uLL);
}

uint64_t BET3FXD__InitUttModel(uint64_t a1, uint64_t *__b, int *a3, unsigned int a4)
{
  v8 = 2229280778;
  cstdlib_memset(__b, 0, 0x240uLL);
  *__b = a1;
  __b[1] = a3;
  *(__b + 138) = a4;
  *(__b + 141) = *a3 * a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 528);
  __b[68] = v9;
  if (v9)
  {
    v10 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 138)), 4);
    __b[4] = v10;
    if (v10)
    {
      v11 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 138)), 1);
      __b[41] = v11;
      if (v11)
      {
        v12 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 138)), 4);
        __b[42] = v12;
        if (v12)
        {
          v13 = a3[150];
          if (v13 >= 1)
          {
            v14 = 0;
            v15 = __b + 21;
            v16 = a3;
            do
            {
              if (!v16[120])
              {
                v17 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 138)), 4);
                *(v15 - 10) = v17;
                if (!v17)
                {
                  return v8;
                }

                v18 = *(a1 + 8);
                v19 = *(__b + 138);
                v20 = v16[140] ? BET3FXD__int32_ccalloc(v18, 2 * v19 * *a3, v16[1] + 1) : heap_Calloc(v18, (2 * v19 * *a3), 8);
                *v15 = v20;
                if (!v20)
                {
                  return v8;
                }

                v15[10] = &v20[*a3 * *(__b + 138)];
                v13 = a3[150];
              }

              ++v14;
              ++v15;
              ++v16;
            }

            while (v14 < v13);
          }

          v21 = *(__b + 138);
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = *a3;
            v24 = 152;
            do
            {
              v25 = __b[68];
              v26 = v25 + 528 * v22;
              *v26 = v22;
              v27 = v22 * v23;
              v28 = __b[41] + v22 * v23;
              v29 = __b[42] + 4 * v22 * v23;
              *(v26 + 16) = __b[4] + 4 * v22 * v23 - 8;
              *(v26 + 312) = v28 - 2;
              *(v26 + 320) = v29 - 8;
              if (v13 >= 1)
              {
                v30 = (v25 + v24);
                v31 = __b + 21;
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
                    v37 = v31[10] + 8 * v27;
                    *(v30 - 10) = v35 - 8;
                    *v30 = v36 - 16;
                    v30[10] = v37 - 16;
                  }

                  ++v30;
                  ++v31;
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
        result = BET3FXD__int32_free(*(*v3 + 8), v7[v4]);
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

uint64_t BET3FXD__InitModelSet(int a1, char *__b, uint64_t a3)
{
  cstdlib_memset(__b, 0, 0x260uLL);
  v5 = *(a3 + 132);
  *(__b + 150) = v5;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = __b;
    do
    {
      v8 = a3 + 4 * v6;
      *(v7 + 32) = *(v8 + 344);
      v9 = __b + 480;
      if (v6)
      {
        if (*(v8 + 2144))
        {
          v9 = &__b[4 * v6 + 560];
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

    while (v6 < *(__b + 150));
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

char *BET3FXD__heap_StrDup(void *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = heap_Calloc(a1, (v4 + 1), 1);
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, __s);
  }

  return v6;
}

uint64_t BET3FXD__xfread_BET3(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v5 = a3;
  v6 = *a4;
  v7 = a4[4];
  if (v6 + a3 * a2 > v7)
  {
    v5 = (v7 - v6) / a2;
  }

  if (v5)
  {
    v8 = v5 * a2;
    cstdlib_memcpy(a1, (*(a4 + 1) + v6), v8);
    *a4 += v8;
  }

  return v5;
}

uint64_t BET3FXD__xfread2ptr_BET3(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v4 = *a4;
  if (a2 >= 2 && v4 % a2)
  {
    return 0;
  }

  v5 = a4[4];
  if (v4 + a3 * a2 > v5)
  {
    a3 = (v5 - v4) / a2;
  }

  if (a3)
  {
    *a1 = *(a4 + 1) + v4;
    *a4 = v4 + a3 * a2;
  }

  return a3;
}

uint64_t BET3FXD__log_out_Event(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = a3 - 1;
  do
  {
    v10 = *++v9;
  }

  while (v10 == 10);
  return log_VOutEvent(*(a1 + 32), a2, v9, &a9);
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

uint64_t BET3FXD__log_select_GetLogLevel(uint64_t a1)
{
  LogLevel = log_GetLogLevel(a1);
  if (LogLevel >= 3)
  {
    return LogLevel - 2;
  }

  else
  {
    return 0;
  }
}

void *BET3FXD__ddcalloc(void *a1, int a2, unsigned int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 4);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 4 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 4 * a3;
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

void *BET3FXD__dd_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *BET3FXD__dd_free_64(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *BET3FXD__int32_ccalloc(void *a1, int a2, unsigned int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 4);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 4 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 4 * a3;
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

void *BET3FXD__int32_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *BET3FXD__iicalloc(void *a1, int a2, unsigned int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 4);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 4 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 4 * a3;
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

void *BET3FXD__ii_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

uint64_t BET3FXD__InitDWinSet(int a1, void *__b, uint64_t a3)
{
  cstdlib_memset(__b, 0, 0x190uLL);
  v5 = *(a3 + 132);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = a3 + 304;
    do
    {
      v8 = *(v7 + 4 * v6);
      if (v8 >= 1)
      {
        for (i = 0; i < v8; ++i)
        {
          *(__b + 10 * v6) = v8 + 1;
          v8 = *(v7 + 4 * v6);
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return 0;
}

void **BET3FXD__DeInitDWinSet(void **result, char *a2)
{
  if (a2)
  {
    v3 = result;
    for (i = 0; i != 400; i += 40)
    {
      v5 = &a2[i];
      BET3FXD__ii_free(v3[1], *&a2[i + 8]);
      v6 = *&a2[i + 16];
      if (v6)
      {
        if (!*v6 || (heap_Free(v3[1], *v6), **(v5 + 2) = 0, (v6 = *(v5 + 2)) != 0))
        {
          heap_Free(v3[1], v6);
          *(v5 + 2) = 0;
        }
      }
    }

    return cstdlib_memset(a2, 0, 0x190uLL);
  }

  return result;
}

uint64_t BET3FXD__LoadDWinFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v4 = (a2 + 40 * a3);
  if (!*v4)
  {
    return 0;
  }

  v7 = 2229280778;
  v8 = BET3FXD__iicalloc(*(a1 + 8), *v4, 2u);
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
          v14 = BET3FXD__xfread2ptr_BET3((*(v4 + 2) + v13), 4u, 0xFFFFFFFFLL, a4);
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

void *BET3FXD__InitSMatrices(uint64_t a1, void *__b)
{
  result = cstdlib_memset(__b, 0, 0x40uLL);
  *__b = a1;
  return result;
}

double BET3FXD__FreeSMatrices(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        if (!*(a1 + 8))
        {
          BET3FXD__dd_free(*(*a1 + 8), v2);
          BET3FXD__dd_free_64(*(*a1 + 8), *(a1 + 48));
          v3 = *(a1 + 40);
          if (v3)
          {
            heap_Free(*(*a1 + 8), v3);
          }
        }

        *(a1 + 60) = 0;
        result = 0.0;
        *(a1 + 44) = 0u;
        *(a1 + 28) = 0u;
        *(a1 + 12) = 0u;
      }
    }
  }

  return result;
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
  v12 = BET3FXD__ddcalloc(*(v4 + 8), 2 * v11, v10);
  a1[9] = v12;
  if (v12 && (v13 = *(a1 + 6), v14 = *(a1 + 5), a1[10] = &v12[v14], v15 = BET3FXD__ddcalloc_64(*(v4 + 8), v14, v13), (a1[12] = v15) != 0) && (v16 = heap_Calloc(*(v4 + 8), (2 * *(a1 + 5)), 8), (a1[11] = v16) != 0))
  {
    a1[13] = v16 + 8 * *(a1 + 5);
    if (a2)
    {
      BET3FXD__FreeSMatrices(a2);
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
    BET3FXD__FreeSMatrices((a1 + 6));
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
  v7 = BET3FXD__int32_ccalloc(*(v4 + 8), *(a1 + 5), *(a1 + 4));
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
    BET3FXD__FreePStreamParam(a2);
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

void *BET3FXD__FreePStreamParam(void *result)
{
  if (*result)
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      if (!*(result + 2))
      {
        result = BET3FXD__int32_free(*(*result + 8), v2);
      }

      v1[5] = 0;
      *(v1 + 2) = 0;
    }
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
  v42 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v31 = 0;
  *v32 = 0;
  v5 = 2229280775;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *__dst = 0u;
  v35 = 0u;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, v32);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else if ((safeh_HandleCheck(a1, a2, 25957, 416) & 0x80000000) != 0)
    {
      return 2229280776;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      log_OutText(*(*v32 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjOpen");
      v12 = heap_Calloc(*(*v32 + 8), 1, 6608);
      if (v12)
      {
        v13 = v12;
        *v12 = a3;
        v12[1] = a4;
        v14 = *v32;
        v12[2] = *v32;
        v12[3] = a1;
        Object = objc_GetObject(*(v14 + 48), "SYNTHSTREAM", &v31);
        if ((Object & 0x80000000) != 0 || (v13[4] = *(v31 + 8), Object = objc_GetObject(*(*v32 + 48), "LINGDB", &v31), (Object & 0x80000000) != 0))
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

          ObjOpen = select_bet3_loc_CreateDataBrkString(*v32, __dst);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v18 = v13[3];
          if (!v18 || (v19 = *(v18 + 48)) == 0)
          {
            v19 = *(v13[2] + 48);
          }

          ObjOpen = objc_GetAddRefCountedObject(v19, __dst, select_bet3_loc_ObjcVoiceOpen_0, select_bet3_loc_ObjcVoiceClose_0, *v32, &v31);
          if ((ObjOpen & 0x80000000) != 0 || (v20 = *v32, v21 = *(v31 + 32), v13[6] = v21, ObjOpen = select_bet3_loc_SetSynthParams_0(v20, v21), (ObjOpen & 0x80000000) != 0))
          {
LABEL_27:
            v5 = ObjOpen;
          }

          else
          {
            v22 = *(*v32 + 40);
            v29 = v13;
            v28 = xmmword_287EF0780;
            v30 = xmmword_287EF0780;
            v23 = paramc_ListenerAdd(v22, "frequencyhz", &v29);
            if ((v23 & 0x80000000) == 0)
            {
              v24 = 0;
              while (1)
              {
                v25 = off_279DB6A48[v24];
                if ((paramc_ParamGetInt(*(*v32 + 40), v25, &v33) & 0x80000000) != 0)
                {
                  v33 = *&aD_13[4 * v24];
                  v23 = paramc_ParamSetInt(*(*v32 + 40), v25, v33);
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

                v26 = *(*v32 + 40);
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
        log_OutPublic(*(*v32 + 32), "SELECT_BET3", 55000, 0);
        v5 = 2229280778;
      }

LABEL_29:
      log_OutText(*(*v32 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjOpen: %x", v5);
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
  v24 = xmmword_287EF0780;
  do
  {
    v7 = off_279DB6A68[v6];
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
    ObjClose = BET3FXD__select_bet3_FeatureExtractObjClose(v16);
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
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__dst = 0u;
  v15 = 0u;
  if ((safeh_HandleCheck(a1, a2, 25958, 6608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v3 = a1[2];
  log_OutText(*(v3 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjReopen");
  DataBrkString = select_bet3_loc_CreateDataBrkString(v3, __dst);
  if ((DataBrkString & 0x80000000) == 0)
  {
    v5 = a1[3];
    if (!v5 || (v6 = *(v5 + 48)) == 0)
    {
      v6 = *(a1[2] + 48);
    }

    DataBrkString = objc_GetAddRefCountedObject(v6, __dst, select_bet3_loc_ObjcVoiceOpen_0, select_bet3_loc_ObjcVoiceClose_0, v3, &v13);
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
    if ((inited & 0x80000000) != 0 || (*(a1 + 4624) = a1 + 960, inited = BET3FXD__LoadVStream((a1 + 4616), *(a1 + 48) + 8112, *(a1 + 48) + 128), (inited & 0x80000000) != 0) || (inited = BET3FXD__select_bet3_FeatureExtractProcess(*(a1 + 56), *(a1 + 48) + 128, a3, a4, *(a1 + 928), *(a1 + 936), *(a1 + 944), *(a1 + 952), (a1 + 64), (a1 + 960), (a1 + 6576), (a1 + 6584)), (inited & 0x80000000) != 0))
    {
      v24 = inited;
    }

    else
    {
      v24 = BET3FXD__ParamGenStart(a1 + 4616, (*(a1 + 48) + 8112), *(a1 + 48) + 128);
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
  v54 = *MEMORY[0x277D85DE8];
  __src = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(__dst, 0, sizeof(__dst));
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  cstdlib_memcpy(__dst, __src, 0x1A0uLL);
  v26 = *(a5 + 32);
  v51 = 0;
  *(a4 + 32) = 0;
  v11 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "FIX3", 1031, &v51);
  if (v11 < 0)
  {
    return (v11 & 0x1FFFu) - 2065686528;
  }

  v12 = heap_Calloc(*(&__dst[0] + 1), 1, 37944);
  v13 = v12;
  if (v12)
  {
    cstdlib_strcpy(v12, a3);
    cstdlib_strcpy((v13 + 9480), a3);
    cstdlib_memset((v13 + 11472), 255, 0x100uLL);
    cstdlib_memset((v13 + 12376), 255, 0x11CuLL);
    cstdlib_memset((v13 + 12704), 255, 0x20uLL);
    *(v13 + 11852) = 1;
    BET3FXD__InitVParam((v13 + 128));
    cstdlib_memset((v13 + 7808), -1, 0x12CuLL);
    cstdlib_strcpy((v13 + 7792), "mlsa");
    cstdlib_memset(__b, 0, 0x50uLL);
    v14 = select_bet3_ParseRiff_0(__dst, v13, v51, 0, __b, 0, 0);
    if ((v14 & 0x80000000) != 0)
    {
      VData = v14;
      cstdlib_strcpy(__s1, "");
      if (__b[0])
      {
        v22 = 0;
        v23 = __b;
        do
        {
          cstdlib_strcat(__s1, "/");
          cstdlib_strcat(__s1, v23);
          v23 = &__b[5 * ++v22];
        }

        while (*v23);
      }

      log_OutPublic(v26, "SELECT_BET3", 55003, "%s%s%s%s%s%x", "file", a3);
    }

    else if (*(v13 + 7519) && *(v13 + 260) > 0)
    {
      v15 = *(v13 + 11792);
      if (v15)
      {
        v16 = *v15;
        if (*v15)
        {
          v17 = 0;
          v18 = 0;
          do
          {
            *(v13 + 5432 + 8 * v17) = v16;
            v17 = ++v18;
            v16 = *(*(v13 + 11792) + 8 * v18);
          }

          while (v16);
        }
      }

      v19 = BET3FXD__InitVData(__dst, (v13 + 8112), v13 + 128);
      if ((v19 & 0x80000000) != 0)
      {
        VData = v19;
      }

      else
      {
        VData = BET3FXD__LoadVData(__dst, (v13 + 8112), v13 + 128);
        if ((VData & 0x80000000) == 0)
        {
          *(v13 + 12906) = 1;
          *&v21 = 0x100000001;
          *(&v21 + 1) = 0x100000001;
          *(v13 + 12496) = v21;
          *(v13 + 12512) = v21;
          *(v13 + 12528) = 0x100000001;
          *(v13 + 12540) = 1;
          *(v13 + 12556) = v21;
          *(v13 + 12572) = v21;
          *(v13 + 12588) = v21;
          *(v13 + 12604) = v21;
          *(v13 + 12620) = v21;
          *(v13 + 12636) = 1;
          *(v13 + 12640) = 0x100000001;
          *(v13 + 12078) = 33620481;
          *(v13 + 12105) = 1;
          *(v13 + 12083) = 0x101010101010101;
          *(v13 + 12091) = 0x101010101010101;
          *(v13 + 12127) = -1;
          *(v13 + 12131) = -255;
          *(v13 + 12141) = 0x101010101010101;
          *(v13 + 12146) = 0x101010101010101;
          *(v13 + 12249) = 0x101010101010101;
          *(v13 + 12257) = 0x101010101010101;
          *(v13 + 12265) = 0x101010101010101;
          if ((*(v13 + 12432) & 0x80000000) == 0)
          {
            *(v13 + 12107) = 257;
          }

          if ((*(v13 + 12448) & 0x80000000) == 0)
          {
            *(v13 + 12109) = 1;
          }

          if ((*(v13 + 12464) & 0x80000000) == 0)
          {
            *(v13 + 12110) = 1;
          }

          if ((*(v13 + 12468) & 0x80000000) == 0)
          {
            *(v13 + 12111) = 1;
          }

          if ((*(v13 + 12472) & 0x80000000) == 0)
          {
            *(v13 + 12112) = 1;
          }

          if ((*(v13 + 12476) & 0x80000000) == 0)
          {
            *(v13 + 12113) = 1;
          }

          if ((*(v13 + 12396) & 0x80000000) == 0)
          {
            *(v13 + 12101) = 257;
          }

          if ((*(v13 + 12720) & 0x80000000) == 0 || (*(v13 + 12724) & 0x80000000) == 0)
          {
            *(v13 + 12100) = 8;
          }

          if ((*(v13 + 12400) & 0x80000000) == 0)
          {
            *(v13 + 12103) = 257;
          }

          if (*(v13 + 11888))
          {
            *(v13 + 12122) = 9;
          }

          if ((*(v13 + 12496) & 0x80000000) == 0)
          {
            *(v13 + 12141) = 1;
          }

          if ((*(v13 + 12500) & 0x80000000) == 0)
          {
            *(v13 + 12142) = 1;
          }

          if ((*(v13 + 12504) & 0x80000000) == 0)
          {
            *(v13 + 12143) = 1;
          }

          *(v13 + 12152) = 257;
          *(v13 + 12144) = 16843009;
          *(v13 + 12147) = 16843009;
        }
      }
    }

    else
    {
      VData = 2229280772;
      log_OutPublic(v26, "SELECT_BET3", 55006, "%s%s");
    }
  }

  else
  {
    log_OutPublic(v26, "SELECT_BET3", 55000, 0);
    VData = 2229280778;
  }

  if (v51)
  {
    ssftriff_reader_ObjClose(v51);
    v51 = 0;
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

    select_bet3_loc_VoiceClose_0(__dst, v13);
  }

  else
  {
    *(a4 + 32) = v13;
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
  if (cstdlib_strcmp(__s1, "frequencyhz"))
  {
    if (!cstdlib_strcmp(__s1, "waitfactor") && (LH_atoi(a3) & 0x80000000) != 0)
    {
      result = 2229280783;
LABEL_7:
      *a4 = 0;
      return result;
    }
  }

  else if (*(a1 + 896))
  {
    result = 2229280785;
    goto LABEL_7;
  }

  return 0;
}

uint64_t select_bet3_loc_ParamLearnChange_0(uint64_t a1, char *__s1, const char *a3)
{
  if (!cstdlib_strcmp(__s1, "frequencyhz"))
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

  if (!cstdlib_strcmp(__s1, "rate") || !cstdlib_strcmp(__s1, "waitfactor"))
  {
    v11 = 0;
    if (cstdlib_strcmp(__s1, "waitfactor") || (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "finalsentencefound", &v11), v11 != 1))
    {
      v7 = LH_atoi(a3);
      v8 = a1;
      v9 = __s1;
      return select_bet3_loc_ParamSet_0(v8, v9, v7);
    }

    return 0;
  }

  if (cstdlib_strcmp(__s1, "finalsentencefound"))
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
  if (cstdlib_strcmp(__s1, "waitfactor"))
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
  v131 = *MEMORY[0x277D85DE8];
  v12 = (a2 + 11824);
  v127 = 0;
  v126 = 0;
  *__src = 0;
  v120 = 5 * a4;
  v98 = a2 + 5192;
  v101 = a2 + 432;
  v102 = a2 + 3992;
  v99 = a2 + 2792;
  v100 = a2 + 1432;
  v104 = a2 + 472;
  v105 = a2 + 2552;
  v108 = a2 + 392;
  v109 = a2 + 352;
  v106 = a2 + 2232;
  v107 = a2 + 2272;
  v110 = a2 + 2312;
  v111 = a2 + 2472;
  v112 = a2 + 12704;
  v114 = a2 + 12376;
  v113 = a2 + 37728;
  v13 = (a2 + 9930);
  v115 = a2 + 11472;
  v103 = a2 + 272;
  while ((v11 & 0x80000000) == 0)
  {
    v11 = ssftriff_reader_OpenChunk(a3, __src, &v127, 0);
    if ((v11 & 0x80000000) != 0)
    {
      break;
    }

    cstdlib_strcpy(&a5[v120], __src);
    if (a4 == 1)
    {
      if (cstdlib_strcmp(a5, "FEEX"))
      {
        if (!cstdlib_strcmp(a5, "STM3"))
        {
          *__dst = 0;
          v28 = *(a2 + 260);
          if (!cstdlib_strcmp(__src, "STC3"))
          {
            LODWORD(__s) = 0;
            *__s2 = 0;
            if (a6)
            {
              v119 = a3;
              v44 = a6 + ssftriff_reader_GetPosition(a3) - a7;
              *__s2 = v44;
            }

            else
            {
              ssftriff_reader_GetChunkData(a3, v127, __s2, v29);
              v11 = v59;
              if ((v59 & 0x80000000) != 0)
              {
                goto LABEL_359;
              }

              v119 = a3;
              v44 = *__s2;
            }

            cstdlib_memcpy((v109 + 4 * v28), (v44 + *__dst), 4uLL);
            *__dst += 4;
            v60 = (v108 + 4 * v28);
            cstdlib_memcpy(v60, (*__s2 + *__dst), 4uLL);
            v61 = *__dst;
            *__dst += 4;
            v62 = *__s2;
            *(v107 + 4 * v28) = *(*__s2 + *__dst) != 0;
            v63 = (v61 + 5);
            *__dst = v63;
            cstdlib_memcpy((v106 + 4 * v28), (v62 + v63), 4uLL);
            v64 = *__dst + 4;
            *__dst += 4;
            v65 = *v60;
            if (v65 >= 1)
            {
              v66 = heap_Calloc(*(a1 + 8), v65, 8);
              *(v111 + 8 * v28) = v66;
              if (!v66)
              {
                LODWORD(v11) = -2065686518;
              }

              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_363;
              }

              v67 = heap_Calloc(*(a1 + 8), *v60, 8);
              *(v110 + 8 * v28) = v67;
              LODWORD(v11) = -2065686518;
              if (!v67)
              {
                goto LABEL_363;
              }

              v64 = *__dst;
            }

            __s1[0] = 0;
            LODWORD(__s) = 256;
            LODWORD(v11) = ssftriff_reader_ReadStringZ(v119, *__s2, v127, v64, __s1, &__s);
            if ((v11 & 0x80000000) == 0)
            {
              v68 = BET3FXD__heap_StrDup(*(a1 + 8), __s1);
              *(v103 + 8 * v28) = v68;
              if (!v68)
              {
                v39 = 3;
                v11 = 2229280778;
                goto LABEL_376;
              }

              *__dst += __s;
              if (*v60 >= 1)
              {
                v69 = 0;
                while (1)
                {
                  __s1[0] = 0;
                  LODWORD(__s) = 256;
                  StringZ = ssftriff_reader_ReadStringZ(v119, *__s2, v127, *__dst, __s1, &__s);
                  if (StringZ < 0)
                  {
                    break;
                  }

                  *(*(v111 + 8 * v28) + 8 * v69) = BET3FXD__heap_StrDup(*(a1 + 8), __s1);
                  if (!*(*(v111 + 8 * v28) + 8 * v69))
                  {
                    goto LABEL_360;
                  }

                  *__dst += __s;
                  __s1[0] = 0;
                  LODWORD(__s) = 256;
                  LODWORD(v11) = ssftriff_reader_ReadStringZ(v119, *__s2, v127, *__dst, __s1, &__s);
                  if ((v11 & 0x80000000) != 0)
                  {
                    goto LABEL_363;
                  }

                  *(*(v110 + 8 * v28) + 8 * v69) = BET3FXD__heap_StrDup(*(a1 + 8), __s1);
                  if (!*(*(v110 + 8 * v28) + 8 * v69))
                  {
LABEL_360:
                    LODWORD(v11) = -2065686518;
                    goto LABEL_363;
                  }

                  *__dst += __s;
                  if (++v69 >= *v60)
                  {
                    goto LABEL_363;
                  }
                }

                LODWORD(v11) = StringZ;
              }
            }

            goto LABEL_363;
          }

          if (cstdlib_strcmp(__src, "TRE3"))
          {
            if (cstdlib_strcmp(__src, "PDF3"))
            {
              if (cstdlib_strcmp(__src, "WIN3"))
              {
                if (cstdlib_strcmp(__src, "CBK3"))
                {
                  goto LABEL_364;
                }

                v47 = v98;
LABEL_245:
                v48 = v47 + 24 * v28;
              }

              else
              {
                v74 = *(v101 + 4 * v28);
                v48 = v102 + 120 * v28 + 24 * v74;
                *(v101 + 4 * v28) = v74 + 1;
              }
            }

            else
            {
              *__s2 = 0;
              if (a6)
              {
                v55 = a6 + ssftriff_reader_GetPosition(a3) - a7;
                *__s2 = v55;
              }

              else
              {
                ssftriff_reader_GetChunkData(a3, v127, __s2, v31);
                if ((v81 & 0x80000000) != 0)
                {
                  v11 = v81;
LABEL_359:
                  v39 = 1;
                  v97 = v11;
LABEL_376:
                  if (v39 != 3)
                  {
                    return v97;
                  }

                  break;
                }

                v55 = *__s2;
              }

              *__dst = 256;
              LODWORD(v11) = ssftriff_reader_ReadStringZ(a3, v55, v127, 0, __s1, __dst);
              if ((v11 & 0x80000000) != 0)
              {
                v48 = 0;
              }

              else
              {
                v82 = BET3FXD__heap_StrDup(*(a1 + 8), __s1);
                v83 = *(v104 + 4 * v28);
                *(v100 + 40 * v28 + 8 * v83) = v82;
                if ((__dst[0] & 3) != 0)
                {
                  *__dst -= *__dst | 0xFFFFFFFC;
                }

                v48 = v99 + 120 * v28 + 24 * v83;
                *(v104 + 4 * v28) = v83 + 1;
              }
            }

            if ((v11 & 0x80000000) == 0 && v48)
            {
              *__s1 = 0;
              if (a6)
              {
                v84 = a6 + ssftriff_reader_GetPosition(a3) - a7;
              }

              else
              {
                ssftriff_reader_GetChunkData(a3, v127, __s1, v30);
                v11 = v85;
                if ((v85 & 0x80000000) != 0)
                {
                  goto LABEL_359;
                }

                v84 = *__s1;
              }

              v86 = *__dst;
              *(v48 + 8) = v84 + *__dst;
              *(v48 + 16) = v127 - v86;
            }

            goto LABEL_367;
          }

          v47 = v105;
          goto LABEL_245;
        }

        if (cstdlib_strcmp(__src, "SYNC"))
        {
          goto LABEL_364;
        }

        *__dst = 0;
        *__s2 = 0;
        if (a6)
        {
          v20 = a6 + ssftriff_reader_GetPosition(a3) - a7;
          *__s2 = v20;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v127, __s2, v19);
          if ((v45 & 0x80000000) != 0)
          {
            v11 = v45;
LABEL_303:
            v39 = 1;
            v97 = v11;
            goto LABEL_376;
          }

          v20 = *__s2;
        }

        __s1[0] = 0;
        *__dst = 256;
        v11 = ssftriff_reader_ReadStringZ(a3, v20, v127, 0, __s1, __dst);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_241;
        }

        if (!cstdlib_strcmp(__s1, "SYNTH_TYPE"))
        {
          v46 = *__dst;
          *__dst = 256;
          v11 = ssftriff_reader_ReadStringZ(a3, *__s2, v127, v46, __s1, __dst);
          if ((v11 & 0x80000000) != 0)
          {
LABEL_241:
            v39 = 3;
            goto LABEL_376;
          }

          cstdlib_strcpy((a2 + 7792), __s1);
        }
      }

      else
      {
        if (!cstdlib_strcmp(__src, "VCAT"))
        {
          *__s1 = 0;
          if (a6)
          {
            *__s1 = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v127, __s1, v22);
            if ((v49 & 0x80000000) != 0)
            {
              return v49;
            }
          }

          v15 = a1;
          v16 = a2;
          v17 = a3;
          v18 = 2;
          goto LABEL_248;
        }

        if (!cstdlib_strcmp(__src, "VBOP"))
        {
          *__s1 = 0;
          if (a6)
          {
            v27 = (a6 + ssftriff_reader_GetPosition(a3) - a7);
            *__s1 = v27;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v127, __s1, v23);
            v11 = v56;
            if ((v56 & 0x80000000) != 0)
            {
              return v11;
            }

            v27 = *__s1;
          }

          if (v127 >= 0xF8)
          {
            v57 = 248;
          }

          else
          {
            v57 = v127;
          }

          v58 = 11828;
LABEL_281:
          cstdlib_memcpy((a2 + v58), v27, v57);
          goto LABEL_367;
        }

        if (cstdlib_strcmp(__src, "PRE3"))
        {
          if (cstdlib_strcmp(__src, "TRA3"))
          {
            if (cstdlib_strcmp(__src, "PHM3"))
            {
              goto LABEL_364;
            }

            *__s1 = 0;
            if (a6)
            {
              v27 = (a6 + ssftriff_reader_GetPosition(a3) - a7);
              *__s1 = v27;
            }

            else
            {
              ssftriff_reader_GetChunkData(a3, v127, __s1, v26);
              v11 = v87;
              if ((v87 & 0x80000000) != 0)
              {
                return v11;
              }

              v27 = *__s1;
            }

            if (v127 >= 0x100)
            {
              v57 = 256;
            }

            else
            {
              v57 = v127;
            }

            v58 = 7484;
            goto LABEL_281;
          }

          *__s2 = 0;
          *__s1 = 0;
          if (a6)
          {
            *__s1 = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v127, __s1, v25);
            v11 = v79;
            if ((v79 & 0x80000000) != 0)
            {
              return v11;
            }
          }

          if (v127 >= 2)
          {
            v80 = 0;
            do
            {
              cstdlib_memcpy(__s2, (*__s1 + 2 * v80), 2uLL);
              if (*__s2 < 8u)
              {
                *(v112 + 4 * *__s2) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown transition feature: %u for %s", *__s2, a2);
              }

              ++v80;
            }

            while (v127 >> 1 > v80);
          }
        }

        else
        {
          *__s2 = 0;
          *__s1 = 0;
          if (a6)
          {
            *__s1 = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v127, __s1, v24);
            v11 = v75;
            if ((v75 & 0x80000000) != 0)
            {
              return v11;
            }
          }

          if (v127 >= 2)
          {
            v76 = 0;
            do
            {
              cstdlib_memcpy(__s2, (*__s1 + 2 * v76), 2uLL);
              if (*__s2 < 0x47u)
              {
                *(v114 + 4 * *__s2) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown preselection feature: %u for %s", *__s2, a2);
              }

              ++v76;
            }

            while (v127 >> 1 > v76);
          }
        }
      }
    }

    else
    {
      if (a4)
      {
        if (cstdlib_strcmp(a5, "FEEX") || cstdlib_strcmp(a5 + 5, "VCAT"))
        {
LABEL_364:
          cstdlib_strcpy(__s1, "");
          v89 = 0;
          do
          {
            cstdlib_strcat(__s1, "/");
            cstdlib_strcat(__s1, &a5[5 * v89++]);
          }

          while (a4 >= v89);
          log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown data: %s for %s", __s1, a2);
          goto LABEL_367;
        }

        *__s1 = 0;
        if (a6)
        {
          *__s1 = a6 + ssftriff_reader_GetPosition(a3) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v127, __s1, v21);
          v11 = v50;
          if ((v50 & 0x80000000) != 0)
          {
            return v11;
          }
        }

        if (!cstdlib_strcmp(__src, "ALPH"))
        {
          *__s2 = 257;
          v119 = a3;
          LODWORD(v11) = ssftriff_reader_ReadStringZ(a3, *__s1, v127, 0, v13, __s2);
          if ((v11 & 0x80000000) == 0)
          {
            *v12 = 255;
            if (cstdlib_strlen(v13))
            {
              v51 = 0;
              v52 = 0;
              do
              {
                v53 = v13[v51];
                if (v53 < *v12)
                {
                  *v12 = v53;
                  v53 = v13[v51];
                }

                if (v53 > v12[1])
                {
                  v12[1] = v53;
                  v53 = v13[v51];
                }

                *(v115 + v53) = v52;
                v51 = (v52 + 1);
                v54 = cstdlib_strlen(v13);
                v52 = v51;
              }

              while (v54 > v51);
            }
          }

LABEL_363:
          a3 = v119;
          goto LABEL_367;
        }

        if (cstdlib_strcmp(__src, "VOIC"))
        {
          if (cstdlib_strcmp(__src, "COVO"))
          {
            if (cstdlib_strcmp(__src, "SAFE"))
            {
              if (cstdlib_strcmp(__src, "PLOS"))
              {
                if (cstdlib_strcmp(__src, "DIFF"))
                {
                  if (cstdlib_strcmp(__src, "GENF"))
                  {
                    if (cstdlib_strcmp(__src, "TAGA"))
                    {
                      if (cstdlib_strcmp(__src, "BTOA"))
                      {
                        goto LABEL_364;
                      }

                      v92 = *__s1;
                      v93 = v127;
                      v94 = 11800;
                    }

                    else
                    {
                      v92 = *__s1;
                      v93 = v127;
                      v94 = 11792;
                    }

                    RiffStringTable = uselect_LoadRiffStringTable(a1, a3, v92, v93, (a2 + v94));
                  }

                  else
                  {
                    RiffStringTable = select_bet3_LoadRiffGenericFeatureMap_0(a1, a3, *__s1, v127, (a2 + 12664), (a2 + 12672), (a2 + 12680));
                  }

                  goto LABEL_356;
                }

                *__s2 = 64;
                v71 = *__s1;
                v72 = v127;
                v73 = 11728;
              }

              else
              {
                *__s2 = 257;
                v71 = *__s1;
                v72 = v127;
                v73 = 10701;
              }
            }

            else
            {
              *__s2 = 257;
              v71 = *__s1;
              v72 = v127;
              v73 = 10958;
            }
          }

          else
          {
            *__s2 = 257;
            v71 = *__s1;
            v72 = v127;
            v73 = 10444;
          }
        }

        else
        {
          *__s2 = 257;
          v71 = *__s1;
          v72 = v127;
          v73 = 10187;
        }

        RiffStringTable = ssftriff_reader_ReadStringZ(a3, v71, v72, 0, (a2 + v73), __s2);
LABEL_356:
        LODWORD(v11) = RiffStringTable;
        goto LABEL_367;
      }

      if (cstdlib_strcmp(__src, "VCFG"))
      {
        if (cstdlib_strcmp(__src, "EQUA"))
        {
          if (!cstdlib_strcmp(__src, "FEEX"))
          {
            goto LABEL_11;
          }

          if (cstdlib_strcmp(__src, "STM3"))
          {
            if (cstdlib_strcmp(__src, "SYNT"))
            {
              goto LABEL_364;
            }

LABEL_11:
            v15 = a1;
            v16 = a2;
            v17 = a3;
            v18 = 1;
LABEL_248:
            LODWORD(v11) = select_bet3_ParseRiff_0(v15, v16, v17, v18, a5, 0, 0);
            goto LABEL_367;
          }

          Position = ssftriff_reader_GetPosition(a3);
          *__s1 = 0;
          v41 = ssftriff_reader_DetachChunkData(a3, (v113 + 8 * *(a2 + 37936)), __s1);
          if (v41 < 0)
          {
            LODWORD(v11) = v41;
            v43 = a3;
          }

          else
          {
            ++*(a2 + 37936);
            v42 = Position;
            v43 = a3;
            LODWORD(v11) = select_bet3_ParseRiff_0(a1, a2, a3, 1u, a5, *__s1, v42);
            ++*(a2 + 260);
          }

          a3 = v43;
        }

        else
        {
          LODWORD(v11) = ssftriff_reader_DetachChunkData(a3, (v113 + 8 * *(a2 + 37936)), (a2 + 7784));
          if ((v11 & 0x80000000) == 0)
          {
            ++*(a2 + 37936);
          }
        }
      }

      else
      {
        v124 = 0;
        *v122 = 0;
        __s = 0;
        if (a6)
        {
          *v122 = a6 + ssftriff_reader_GetPosition(a3) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v127, v122, v14);
          v11 = v32;
          if ((v32 & 0x80000000) != 0)
          {
            goto LABEL_303;
          }
        }

        v33 = BET3FXD__heap_StrDup(*(a1 + 8), "PHRASE");
        *(a2 + 208) = v33;
        if (!v33)
        {
          v39 = 3;
          v11 = 2229280778;
          goto LABEL_376;
        }

        v118 = a3;
        *(a2 + 216) = 1000;
        v34 = v127;
        if (v127)
        {
          v35 = 0;
          do
          {
            __s1[0] = 0;
            __s2[0] = 0;
            v124 = 64;
            LODWORD(v11) = ssftriff_reader_ReadStringZ(v118, *v122, v34, v35, __s2, &v124);
            if ((v11 & 0x80000000) == 0 && v35 < v127)
            {
              v35 += v124;
              v124 = 256;
              LODWORD(v11) = ssftriff_reader_ReadStringZ(v118, *v122, v127, v35, __s1, &v124);
            }

            if ((v11 & 0x80000000) != 0)
            {
              break;
            }

            v36 = v124;
            cstdlib_strcpy(__dst, "bet3voiceoverride.");
            cstdlib_strcat(__dst, __s2);
            if ((paramc_ParamGetStr(*(a1 + 40), __dst, &__s) & 0x80000000) != 0 || !__s || !*__s)
            {
              __s = __s1;
            }

            if (!cstdlib_strcmp(__s2, "ALPHA"))
            {
              *(a2 + 128) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BETA"))
            {
              *(a2 + 132) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "VUV_REL_AMP"))
            {
              *(a2 + 140) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "VOL"))
            {
              *(a2 + 164) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MVF_BOOST"))
            {
              *(a2 + 168) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FS"))
            {
              *(a2 + 136) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "ORDER"))
            {
              *(a2 + 144) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE"))
            {
              *(a2 + 152) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SPEECH_F0_MEAN"))
            {
              *(a2 + 184) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PDF_VARIANCE_TYPE"))
            {
              *(a2 + 200) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BREAKER"))
            {
              v37 = *(a2 + 208);
              if (v37)
              {
                heap_Free(*(a1 + 8), v37);
              }

              v38 = BET3FXD__heap_StrDup(*(a1 + 8), __s);
              *(a2 + 208) = v38;
              if (!v38)
              {
                LODWORD(v11) = -2065686518;
                break;
              }
            }

            if (!cstdlib_strcmp(__s2, "BRK_LENGTH"))
            {
              *(a2 + 216) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BRK_TC"))
            {
              *(a2 + 220) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BRK_ZPAD"))
            {
              *(a2 + 224) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "ALGN_ST"))
            {
              *(a2 + 240) = LH_atoi(__s) != 0;
            }

            if (!cstdlib_strcmp(__s2, "ALGN_PH"))
            {
              *(a2 + 244) = LH_atoi(__s) != 0;
            }

            if (!cstdlib_strcmp(__s2, "VSYNTH"))
            {
              *(a2 + 7776) = BET3FXD__heap_StrDup(*(a1 + 8), __s);
            }

            if (!cstdlib_strcmp(__s2, "FFTSZ"))
            {
              *(a2 + 7808) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "EN_MEAN"))
            {
              *(a2 + 7812) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FEED_EN_MEAN_LOOKAHEAD"))
            {
              *(a2 + 7820) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "COUNT_UV_DISTANCE"))
            {
              *(a2 + 7816) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SAMPLE_RATE"))
            {
              *(a2 + 7824) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENERGY"))
            {
              *(a2 + 7828) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_SIZE"))
            {
              *(a2 + 7832) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SPCPAR_FREQWARP"))
            {
              *(a2 + 7836) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENHANCE_ALPHA"))
            {
              *(a2 + 7840) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENHANCE_ALPHA_UNVOICED"))
            {
              *(a2 + 7844) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE_MRCC"))
            {
              *(a2 + 7848) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_PHS_EXTRAP_USE"))
            {
              *(a2 + 7852) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_NOISE_FREQ_TH"))
            {
              *(a2 + 7856) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_USE"))
            {
              *(a2 + 7860) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_MVF_USE"))
            {
              *(a2 + 7864) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_LO"))
            {
              *(a2 + 7868) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_HI"))
            {
              *(a2 + 7872) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_UNIFORM"))
            {
              *(a2 + 7876) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_USE"))
            {
              *(a2 + 7880) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_MVF_USE"))
            {
              *(a2 + 7884) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_MIXHARM_LO"))
            {
              *(a2 + 7888) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_MIXHARM_HI"))
            {
              *(a2 + 7892) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_RES_LO"))
            {
              *(a2 + 7896) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_RES_HI"))
            {
              *(a2 + 7900) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_ALIGN_CUTOFF_FREQ"))
            {
              *(a2 + 7904) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF"))
            {
              *(a2 + 7908) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ATTENUATE_UV"))
            {
              *(a2 + 7912) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_SKIP_WEAK_HARM_RATIO"))
            {
              *(a2 + 7916) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_SMOOTH_WIN"))
            {
              *(a2 + 7940) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_THR"))
            {
              *(a2 + 7944) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_RATIO_EN_THR"))
            {
              *(a2 + 7948) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_MVF_THR"))
            {
              *(a2 + 7952) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_BY_LOW_EN"))
            {
              *(a2 + 7956) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_BY_RATIO_EN"))
            {
              *(a2 + 7960) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_0"))
            {
              *(a2 + 7964) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_1"))
            {
              *(a2 + 7968) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_2"))
            {
              *(a2 + 7972) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_3"))
            {
              *(a2 + 7976) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_BITS"))
            {
              *(a2 + 7980) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PHSPAR_USE"))
            {
              *(a2 + 7984) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_USE"))
            {
              *(a2 + 7988) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "USE_LOG2"))
            {
              *(a2 + 7992) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENHANCE_POWSPC"))
            {
              *(a2 + 7996) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_ATTENUATE"))
            {
              *(a2 + 8000) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_ATTENUATE_LO"))
            {
              *(a2 + 8004) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_ATTENUATE_HI"))
            {
              *(a2 + 8008) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_APPLY_DEEMP"))
            {
              *(a2 + 8012) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_HI_RES_ALIGN"))
            {
              *(a2 + 8016) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FAST_AUX_HARM"))
            {
              *(a2 + 8020) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FIX_OLA"))
            {
              *(a2 + 8024) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DC_GUARD_VOICED"))
            {
              *(a2 + 8028) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DC_GUARD_UNVOICED"))
            {
              *(a2 + 8032) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_NYQUIST_GUARD"))
            {
              *(a2 + 8036) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PHSPAR_SIZE"))
            {
              *(a2 + 8040) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PHSPAR_FLIP"))
            {
              *(a2 + 8044) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENERGY_NORM_TH"))
            {
              *(a2 + 8048) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SPCPAR_FREQWARP_ALPHA"))
            {
              *(a2 + 8052) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_PHS_ALIGN_WITH_CONST"))
            {
              *(a2 + 8056) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_NORM_GLOBAL"))
            {
              *(a2 + 8060) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEEMP_COEF"))
            {
              *(a2 + 8064) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_USE_NOISE_MODULATION"))
            {
              *(a2 + 8068) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_NOISE_MODULATION_FACTOR"))
            {
              *(a2 + 8072) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MAX_FRAME_SIZE"))
            {
              *(a2 + 8076) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MIN_FRAME_SIZE"))
            {
              *(a2 + 8080) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MIN_FFT_SIZE"))
            {
              *(a2 + 8084) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE_INC_NUM"))
            {
              *(a2 + 8088) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE_DEC_NUM"))
            {
              *(a2 + 8092) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "ANAL_FFT_SIZE"))
            {
              *(a2 + 8096) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FFT_SIZE"))
            {
              *(a2 + 8100) = LH_atoi(__s);
            }

            v35 += v36;
            v34 = v127;
          }

          while (v35 < v127);
        }

        *(a2 + 160) = 0;
        *(a2 + 172) = 0;
        *(a2 + 176) = 0;
        cstdlib_strcpy(__dst, "bet3voiceoverride.");
        cstdlib_strcat(__dst, "BREAKER");
        if ((paramc_ParamGetStr(*(a1 + 40), __dst, &__s) & 0x80000000) == 0)
        {
          v77 = *(a2 + 208);
          if (v77)
          {
            heap_Free(*(a1 + 8), v77);
            *(a2 + 208) = 0;
          }

          v78 = BET3FXD__heap_StrDup(*(a1 + 8), __s);
          *(a2 + 208) = v78;
          if (!v78)
          {
            v39 = 3;
            v11 = 2229280778;
            goto LABEL_376;
          }
        }

        cstdlib_strcpy(__dst, "bet3voiceoverride.");
        cstdlib_strcat(__dst, "BRK_LENGTH");
        if ((paramc_ParamGetStr(*(a1 + 40), __dst, &__s) & 0x80000000) == 0)
        {
          *(a2 + 216) = LH_atoi(__s);
        }

        a3 = v118;
      }
    }

LABEL_367:
    v90 = ssftriff_reader_CloseChunk(a3);
    if (v11 > -1 && v90 < 0)
    {
      v11 = v90;
    }

    else
    {
      v11 = v11;
    }
  }

  if ((v11 & 0x1FFF) == 0x14)
  {
    v95 = 0;
  }

  else
  {
    v95 = v11;
  }

  if ((v95 & 0x80000000) == 0)
  {
    a5[v120] = 0;
    return v95;
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
    BET3FXD__DeInitVParam(v3, (a2 + 128));
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

uint64_t select_bet3_LoadRiffGenericFeatureMap_0(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v12 = *a3;
  v13 = heap_Calloc(*(a1 + 8), v12 + 1, 8);
  *a5 = v13;
  if (v13)
  {
    v14 = heap_Calloc(*(v11 + 8), v12 + 1, 8);
    *a6 = v14;
    if (v14)
    {
      v15 = heap_Calloc(*(v11 + 8), v12 + 1, 8);
      *a7 = v15;
      if (v15)
      {
        if (!v12)
        {
          return 0;
        }

        v31 = v12;
        v32 = a3;
        v16 = 0;
        v17 = 2;
        v29 = a5;
        v30 = a7;
        while (1)
        {
          __dst[0] = 0;
          v35 = 256;
          v18 = ssftriff_reader_ReadStringZ(a2, v32, a4, v17, __dst, &v35);
          v19 = v35;
          *(*a5 + 8 * v16) = BET3FXD__heap_StrDup(*(v11 + 8), __dst);
          if (!*(*a5 + 8 * v16))
          {
            break;
          }

          v20 = v16;
          v21 = v19 + v17;
          v22 = *(v32 + v21);
          *(*a6 + 8 * v20) = heap_Calloc(*(v11 + 8), v22 + 1, 8);
          if (!*(*a6 + 8 * v20))
          {
            break;
          }

          *(*a7 + 8 * v20) = heap_Calloc(*(v11 + 8), v22 + 1, 1);
          if (!*(*a7 + 8 * v20))
          {
            break;
          }

          v17 = v21 + 2;
          if (v22)
          {
            v23 = v11;
            v24 = 0;
            while (1)
            {
              v25 = v17;
              __dst[0] = 0;
              v35 = 256;
              v18 = ssftriff_reader_ReadStringZ(a2, v32, a4, v17, __dst, &v35);
              v26 = v35;
              *(*(*a6 + 8 * v20) + v24) = BET3FXD__heap_StrDup(*(v23 + 8), __dst);
              if (!*(*(*a6 + 8 * v20) + v24))
              {
                return 2229280778;
              }

              v17 += v26;
              v24 += 8;
              if (8 * v22 == v24)
              {
                a5 = v29;
                a7 = v30;
                for (i = 0; i != v22; ++i)
                {
                  *(*(*v30 + 8 * v20) + i) = *(v32 + v25 + v26 + i);
                }

                v17 = v25 + v26 + i;
                v11 = v23;
                break;
              }
            }
          }

          v16 = v20 + 1;
          if (v20 + 1 >= v31)
          {
            return v18;
          }
        }
      }
    }
  }

  return 2229280778;
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

uint64_t BET3FXD__ParamGenStart(uint64_t a1, int *a2, uint64_t a3)
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

  *(a1 + 16) = *(a3 + 32);
  v10 = *(a3 + 28);
  if (v10 >= 1)
  {
    v11 = *(a1 + 620);
    if (v10 < v11)
    {
      BET3FXD__log_select_Error(v6, 55018, "Specified length of generated speech is too short (this sentence is composed from %d states), specify more than %d milliseconds\n", *(a1 + 620), *(a3 + 8) * v11 * *(a3 + 24) / *(a3 + 8));
      return 2229280775;
    }
  }

  v71 = v6;
  if (*(a1 + 608) < 1)
  {
    goto LABEL_71;
  }

  v12 = 0;
  v67 = 0;
  v68 = 0;
  v13 = a3 + 344;
  v61 = a3 + 1304;
  v62 = *(*(a1 + 8) + 1784);
  v14 = a3 + 5304;
  v70 = a2 + 198;
  v69 = a2 + 178;
  v72 = a2;
  v64 = a2 + 1;
  v15 = *(a1 + 32);
  v59 = -8388608;
  v66 = a3;
  do
  {
    v63 = v12;
    v16 = (*(a1 + 600) + 528 * v12);
    if (v15 >= 1)
    {
      v17 = 0;
      v18 = v61;
      do
      {
        v19 = *(v13 + 4 * v17);
        if (v19 >= 1)
        {
          v20 = 0;
          v21 = *(*(*(a1 + 8) + 248) + *v16);
          do
          {
            v22 = *(v18 + 8 * v20);
            if (v22)
            {
              v23 = *(v14 + 8 * v21);
              if (v23)
              {
                if (!cstdlib_strcmp(v22, v23))
                {
                  goto LABEL_22;
                }

                v19 = *(v13 + 4 * v17);
              }
            }

            ++v20;
          }

          while (v20 < v19);
        }

        LODWORD(v20) = 0;
LABEL_22:
        v16[v17++ + 8] = v20;
        v18 += 40;
      }

      while (v17 < *(a1 + 32));
    }

    v58 = *v16;
    BET3FXD__log_select_Diag(v71, 21, "[phoneme %d]\n");
    v24 = v63;
    if (v62)
    {
      if (*(a3 + 116))
      {
        v16[2] = BET3FXD__TreeSearch(*(a1 + 8), v63, (v72 + 152), 0, 0);
        BET3FXD__log_select_Diag(v71, 6, "DUR pdf id %d\n");
        result = BET3FXD__FindDurPDF(v16, v72, *(a1 + 16), 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v25 = BET3FXD__div_int32_int32_to_Q8_24(*(*(*(a1 + 8) + 1784) + 2 * *v16), *(a3 + 24));
        if (v25)
        {
          v26 = v25;
          if (*v72 < 1)
          {
            v27 = 0;
          }

          else
          {
            v27 = 0;
            v28 = 2;
            do
            {
              v27 += BET3FXD__int32_to_Q12_20(*(*(v16 + 2) + 4 * v28));
              v29 = v28++ <= *v72;
            }

            while (v29);
          }

          v30 = v26 + v59;
          v31 = BET3FXD__div_Q8_24_Q12_20_to_Q8_24(v30, v27);
          v16[6] = 0;
          if (*v72 < 1)
          {
            v38 = 0;
          }

          else
          {
            v32 = v31;
            v33 = *(v16 + 2);
            v34 = 2;
            do
            {
              v35 = BET3FXD__mul_int32_Q8_24_to_Q8_24(*(v33 + 4 * v34), v32);
              v36 = BET3FXD__Q8_24_to_int32(v35 + 0x7FFFFF);
              if (v36 <= 1)
              {
                v37 = 1;
              }

              else
              {
                v37 = v36;
              }

              v33 = *(v16 + 2);
              *(v33 + 4 * v34) = v37;
              v38 = v16[6] + v37;
              v16[6] = v38;
              v29 = v34++ <= *v72;
            }

            while (v29);
          }

          v59 = v30 - BET3FXD__int32_to_Q8_24(v38);
          v24 = v63;
        }

        goto LABEL_46;
      }

      if (*(a3 + 112))
      {
        BET3FXD__log_select_Error(v71, 55017, "State level segmentation is not currently supported\n", v58);
        goto LABEL_47;
      }
    }

    v16[2] = BET3FXD__TreeSearch(*(a1 + 8), v63, (v72 + 152), 0, 0);
    BET3FXD__log_select_Diag(v71, 6, "DUR pdf id %d\n");
    if (*(a3 + 28))
    {
      goto LABEL_47;
    }

    result = BET3FXD__FindDurPDF(v16, v72, *(a1 + 16), 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    SetSilenceDuration_0(a1, v72, a3, v16);
LABEL_46:
    *(a1 + 624) += v16[6];
LABEL_47:
    v15 = *(a1 + 32);
    if (v15 >= 1)
    {
      v39 = 0;
      v65 = v16 + 38;
      v40 = v16 + 58;
      do
      {
        v41 = *(a1 + 24) + 312 * v39;
        if (!*(v41 + 264))
        {
          if (*(v41 + 272))
          {
            v42 = *v72 * v24;
            v67 = *(*(a1 + 304 + 8 * v39) + 8 * v42);
            v68 = *(*(a1 + 224 + 8 * v39) + 8 * v42);
          }

          if (*(v70 + v39))
          {
            v43 = 0;
            v44 = 0;
            while (1)
            {
              v45 = *(*&v69[2 * v39] + v43);
              *(*&v16[2 * v39 + 18] + 4 * v45) = BET3FXD__TreeSearch(*(a1 + 8), *v16, (v72 + 152), v39, v44);
              BET3FXD__log_select_Diag(v71, 6, "%s pdf state %d id %d\n");
              v46 = *(a1 + 24) + 312 * v39;
              if (*(v46 + 272))
              {
                v47 = v45 - 2 + (v45 - 2) * v64[v39];
                *(*&v65[2 * v39] + 8 * v45) = v68 + 4 * v47;
                *(*&v65[2 * v39] + 8 * v45) -= 4;
                *(*&v40[2 * v39] + 8 * v45) = v67 + 4 * v47;
                *(*&v40[2 * v39] + 8 * v45) -= 4;
                result = BET3FXD__FindMsdPDF(v39, v45, v16, v72, v66);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              else if (*(v46 + 268))
              {
                v48 = *(a1 + 632);
                v49 = *(a1 + 640);
                if (!v48)
                {
                  if (v49)
                  {
                    v48 = 0;
                  }

                  else
                  {
                    v50 = *(a1 + 608) * *(v70 + v39) * *(v72 + 198);
                    v60 = v50 + v50 * *(v72 + 201);
                    v51 = heap_Calloc(*(v71 + 8), v60, 4);
                    *(a1 + 632) = v51;
                    if (!v51)
                    {
                      return 2229280778;
                    }

                    v52 = heap_Calloc(*(v71 + 8), v60, 4);
                    *(a1 + 640) = v52;
                    if (!v52)
                    {
                      return 2229280778;
                    }

                    v49 = v52;
                    *(a1 + 648) = 0;
                    v48 = *(a1 + 632);
                  }
                }

                result = BET3FXD__FindContPDF(v39, v45, v16, v72, v16[v39 + 8], v48, v49, (a1 + 648));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              ++v44;
              v43 += 16;
              if (v44 >= *(v70 + v39))
              {
                v15 = *(a1 + 32);
                a3 = v66;
                v24 = v63;
                break;
              }
            }
          }
        }

        ++v39;
      }

      while (v39 < v15);
    }

    v12 = v24 + 1;
  }

  while (v12 < *(a1 + 608));
  v10 = *(a3 + 28);
  a2 = v72;
LABEL_71:
  if (v10 < 1 || (v53 = BET3FXD__int32_to_Q18_14(v10), v54 = BET3FXD__div_Q18_14_Q18_14_to_Q18_14(v53, 0), *(a1 + 16) = BET3FXD__Q18_14_to_Q1_15(v54), *(a1 + 608) < 1))
  {
LABEL_76:
    if (BET3FXD__log_select_GetLogLevel(*(v71 + 32)) >= 0x15)
    {
      OutLabel_0(a1);
    }

    BET3FXD__log_select_Diag(v71, 2, ">> tree search done\n");
    AddBreakMarks_0(a1, a2, a3);

    return ParamGenLT_0(a1, a2);
  }

  else
  {
    v55 = 0;
    v56 = 0;
    while (1)
    {
      v57 = (*(a1 + 600) + v55);
      result = BET3FXD__FindDurPDF(v57, a2, *(a1 + 16), 0);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      SetSilenceDuration_0(a1, a2, a3, v57);
      *(a1 + 624) += v57[6];
      ++v56;
      v55 += 528;
      if (v56 >= *(a1 + 608))
      {
        goto LABEL_76;
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
  result = cstdlib_strcmp(*(a3 + 80), "PHRASE_TIME");
  if (result)
  {
    result = cstdlib_strcmp(*(a3 + 80), "PHRASE");
    if (result)
    {
      result = cstdlib_strcmp(*(a3 + 80), "WORD");
      if (result)
      {
        result = cstdlib_strcmp(*(a3 + 80), "SYLLABLE");
        if (result)
        {
          result = cstdlib_strcmp(*(a3 + 80), "TIME");
          if (result)
          {
            result = cstdlib_strcmp(*(a3 + 80), "NONE");
            if (result)
            {
              v7 = *a1;

              return BET3FXD__log_select_Error(v7, 55036, "valid breaker is required\n");
            }
          }

          else
          {
            v32 = *(a1 + 608);
            if (v32 >= 1)
            {
              v33 = 0;
              v34 = 0;
              v35 = *(a3 + 88);
              v36 = *a2;
              v37 = *(a1 + 600);
              v38 = v35;
              v39 = 0;
              do
              {
                result = v37 + 528 * v33;
                if (v36 >= 1)
                {
                  v40 = (*(result + 16) + 8);
                  v41 = (v36 + 2) - 2;
                  v39 = v34;
                  do
                  {
                    v42 = *v40++;
                    v39 += v42;
                    --v41;
                  }

                  while (v41);
                }

                if (v39 > v38)
                {
                  v38 = v34 + v35;
                  *(result + 4) |= 2u;
                }

                ++v33;
                v34 = v39;
              }

              while (v33 != v32);
            }
          }
        }

        else
        {
          v28 = *(a1 + 608);
          if (v28 >= 3)
          {
            v29 = (v28 - 2);
            v30 = *(a1 + 600);
            v31 = *(*(a1 + 8) + 112);
            do
            {
              if (*(v31 + *v30))
              {
                v30[133] |= 2u;
              }

              v30 += 132;
              --v29;
            }

            while (v29);
          }
        }
      }

      else
      {
        v24 = *(a1 + 608);
        if (v24 >= 3)
        {
          v25 = (v24 - 2);
          v26 = *(a1 + 600);
          v27 = *(*(a1 + 8) + 112);
          do
          {
            if ((*(v27 + *v26) & 0xFE) == 2)
            {
              v26[133] |= 2u;
            }

            v26 += 132;
            --v25;
          }

          while (v25);
        }
      }
    }

    else
    {
      v20 = *(a1 + 608);
      if (v20 >= 3)
      {
        v21 = (v20 - 2);
        v22 = *(a1 + 600);
        v23 = *(*(a1 + 8) + 112);
        do
        {
          if (*(v23 + *v22) == 3)
          {
            v22[133] |= 2u;
          }

          v22 += 132;
          --v21;
        }

        while (v21);
      }
    }
  }

  else
  {
    v8 = *(a1 + 608);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 600);
      v12 = *a2;
      v13 = *(a3 + 88);
      v14 = *(*(a1 + 8) + 112);
      do
      {
        result = v11 + 528 * v9;
        if (v12 < 1)
        {
          v15 = 0;
        }

        else
        {
          v15 = 0;
          v16 = (*(result + 16) + 8);
          v17 = (v12 + 2) - 2;
          do
          {
            v18 = *v16++;
            v15 += v18;
            --v17;
          }

          while (v17);
        }

        v10 += v15;
        if (v10 > v13)
        {
          *(result + 4) |= 2u;
          v10 = v15;
        }

        if (*(v14 + *result) == 3 && v9 < v8 - 2)
        {
          v10 = 0;
          *(result + 532) |= 2u;
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }

  return result;
}

uint64_t ParamGenLT_0(uint64_t a1, int *a2)
{
  v4 = *a1;
  v5 = 2229280778;
  v55 = 0;
  memset(__b, 0, sizeof(__b));
  memset(v53, 0, sizeof(v53));
  memset(v52, 0, sizeof(v52));
  cstdlib_memset(__b, 0, 0x78uLL);
  BET3FXD__InitSMatrices(v4, v53);
  BET3FXD__InitSMatrices(v4, v52);
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

    BET3FXD__FreePStreamSM(v21 + 24);
    goto LABEL_55;
  }

  v5 = inited;
LABEL_60:
  BET3FXD__FreePStreamParam(__b);
  BET3FXD__FreeSMatrices(v53);
  BET3FXD__FreeSMatrices(v52);
  return v5;
}

uint64_t BET3FXD__ParamGenFrames(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v5 = *a1;
  v93 = 0;
  memset(__b, 0, sizeof(__b));
  memset(v91, 0, sizeof(v91));
  memset(v90, 0, sizeof(v90));
  *a3 = 0;
  cstdlib_memset(__b, 0, 0x78uLL);
  BET3FXD__InitSMatrices(v5, v91);
  BET3FXD__InitSMatrices(v5, v90);
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
          BET3FXD__FreePStreamParam((v25 + 24));
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
              v47 = BET3FXD__InitPStreamParam((v25 + 144), __b);
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

              BET3FXD__FreePStreamSM(v25 + 144);
              BET3FXD__FreePStreamParam((v25 + 144));
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
  BET3FXD__FreePStreamParam(__b);
  BET3FXD__FreeSMatrices(v91);
  BET3FXD__FreeSMatrices(v90);
  return v49;
}

uint64_t BET3FXD__InitVData(int a1, char *__b, uint64_t a3)
{
  cstdlib_memset(__b, 0, 0x4C0uLL);
  result = BET3FXD__InitModelSet(a1, __b, a3);
  if ((result & 0x80000000) == 0)
  {
    result = BET3FXD__InitTreeSet(a1, __b + 608);
    if ((result & 0x80000000) == 0)
    {

      return BET3FXD__InitDWinSet(a1, __b + 816, a3);
    }
  }

  return result;
}

void *BET3FXD__DeInitVData(void **a1, uint64_t a2)
{
  BET3FXD__DeInitModelSet(a1, a2);
  BET3FXD__DeInitTreeSet(a1, (a2 + 608));
  BET3FXD__DeInitDWinSet(a1, (a2 + 816));

  return cstdlib_memset(a2, 0, 0x4C0uLL);
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

uint64_t BET3FXD__InitVStream(uint64_t a1, char *__b, _DWORD *a3)
{
  cstdlib_memset(__b, 0, 0x7A0uLL);
  *__b = a1;
  v6 = a3[33];
  *(__b + 8) = v6;
  v7 = heap_Calloc(*(a1 + 8), v6, 312);
  *(__b + 3) = v7;
  if (!v7)
  {
    return 2229280778;
  }

  if (*(__b + 8) >= 1)
  {
    v8 = 0;
    v9 = __b + 672;
    v10 = a3 + 36;
    do
    {
      cstdlib_strcpy(v9, "");
      if (cstdlib_strlen(*&v10[2 * v8]))
      {
        cstdlib_strcpy(v9, *&v10[2 * v8]);
      }

      ++v8;
      v11 = *(__b + 8);
      v9 += 128;
    }

    while (v8 < v11);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = *(__b + 3);
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
  *(__b + 162) = 0;
  *(__b + 632) = 0u;
  return result;
}

uint64_t BET3FXD__LoadVStream(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 816;
  v6 = a2 + 4;
  v7 = a3 + 2184;
  v8 = a3 + 2344;
  v9 = a1[3];
  while (1)
  {
    v10 = (v5 + 40 * v4);
    v11 = v9 + 312 * v4;
    *(v11 + 56) = v10;
    v12 = *(v11 + 268);
    if (v12)
    {
      *(v11 + 176) = v10;
    }

    if (!*(v11 + 264))
    {
      break;
    }

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (++v4 >= *(a1 + 8))
    {
      return 0;
    }
  }

  v14 = v6;
  v15 = *(v6 + 4 * v4);
  *(v11 + 36) = v15;
  v16 = (v15 / *v10);
  v17 = v9 + 312 * v4;
  *(v17 + 40) = v16;
  v18 = a3;
  *(v17 + 280) = *(a3 + 92);
  v19 = heap_Calloc(*(*a1 + 8), v16, 8);
  v20 = a1[3];
  *(v20 + 312 * v4 + 288) = v19;
  if (!v19)
  {
    return 2229280778;
  }

  LODWORD(v20) = *(v20 + 312 * v4 + 40);
  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if (cstdlib_strcmp(*(*(v7 + 8 * v4) + 8 * v21), "MLPG2"))
      {
        BET3FXD__log_select_Error(*a1, 55036, "invalid solver for stream %d: %s\n");
        return 2229280775;
      }

      *(*(a1[3] + 312 * v4 + 288) + 8 * v21++) = BET3FXD__mlpg2;
      v20 = *(a1[3] + 312 * v4 + 40);
    }

    while (v21 < v20);
  }

  v22 = heap_Calloc(*(*a1 + 8), v20, 4);
  v23 = a1[3];
  *(v23 + 312 * v4 + 304) = v22;
  if (!v22)
  {
    return 2229280778;
  }

  if (*(v23 + 312 * v4 + 40) < 1)
  {
LABEL_23:
    BET3FXD__log_select_Diag(*a1, 1, "%s: vSize = %d, order = %d, nLayer = %d\n");
    v9 = a1[3];
    v6 = v14;
    a3 = v18;
    if (!*(v9 + 312 * v4 + 268))
    {
      goto LABEL_8;
    }

LABEL_7:
    v13 = v9 + 312 * v4;
    *(v13 + 156) = *(v6 + 4 * v4);
    *(v13 + 160) = 1;
    goto LABEL_8;
  }

  v24 = 0;
  while (1)
  {
    if (!cstdlib_strcmp(*(*(v8 + 8 * v4) + 8 * v24), "OFF"))
    {
      v25 = 0;
      goto LABEL_22;
    }

    if (cstdlib_strcmp(*(*(v8 + 8 * v4) + 8 * v24), "ON"))
    {
      break;
    }

    v25 = 1;
LABEL_22:
    v26 = a1[3] + 312 * v4;
    *(*(v26 + 304) + 4 * v24++) = v25;
    if (v24 >= *(v26 + 40))
    {
      goto LABEL_23;
    }
  }

  BET3FXD__log_select_Error(*a1, 55036, "valid breaker setting is required for stream %d\n");
  return 2229280775;
}

int *BET3FXD__DeInitVStream(int *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      if (result[8] >= 1)
      {
        v2 = 0;
        v3 = *(result + 3);
        v4 = 304;
        do
        {
          if (!v3)
          {
            break;
          }

          BET3FXD__FreePStreamSM(v3 + v4 - 280);
          BET3FXD__FreePStreamParam((v1[3] + v4 - 280));
          BET3FXD__FreePStreamSM(v1[3] + v4 - 160);
          BET3FXD__FreePStreamParam((v1[3] + v4 - 160));
          v3 = v1[3];
          v5 = *(v3 + v4 - 16);
          if (v5)
          {
            heap_Free(*(*v1 + 8), v5);
            v3 = v1[3];
            *(v3 + v4 - 16) = 0;
          }

          v6 = *(v3 + v4);
          if (v6)
          {
            heap_Free(*(*v1 + 8), v6);
            v3 = v1[3];
            *(v3 + v4) = 0;
          }

          ++v2;
          v4 += 312;
        }

        while (v2 < *(v1 + 8));
      }

      v7 = v1[6];
      if (v7)
      {
        heap_Free(*(*v1 + 8), v7);
        v1[6] = 0;
      }

      v8 = v1[5];
      if (v8)
      {
        heap_Free(*(*v1 + 8), v8);
        v1[5] = 0;
      }

      v9 = v1[3];
      if (v9)
      {
        heap_Free(*(*v1 + 8), v9);
        v1[3] = 0;
      }

      v10 = v1[79];
      if (v10)
      {
        heap_Free(*(*v1 + 8), v10);
        v1[79] = 0;
      }

      v11 = v1[80];
      if (v11)
      {
        heap_Free(*(*v1 + 8), v11);
        v1[80] = 0;
      }

      BET3FXD__DeInitUttModel(v1 + 7);

      return cstdlib_memset(v1, 0, 0x7A0uLL);
    }
  }

  return result;
}

void *BET3FXD__InitVParam(_DWORD *a1)
{
  result = cstdlib_memset(a1, 0, 0x1F30uLL);
  a1[32] = 1;
  return result;
}

void *BET3FXD__DeInitVParam(uint64_t a1, void *__b)
{
  if (__b[954])
  {
    for (i = 0; i != 20; ++i)
    {
      if (*(__b[954] + 8 * i))
      {
        for (j = 0; j != 800; j += 8)
        {
          v6 = *(*(__b[954] + 8 * i) + j);
          if (v6)
          {
            heap_Free(*(a1 + 8), v6);
            *(*(__b[954] + 8 * i) + j) = 0;
          }
        }

        v7 = *(__b[954] + 8 * i);
        if (v7)
        {
          heap_Free(*(a1 + 8), v7);
          *(__b[954] + 8 * i) = 0;
        }
      }

      v8 = *(__b[955] + 8 * i);
      if (v8)
      {
        heap_Free(*(a1 + 8), v8);
        *(__b[955] + 8 * i) = 0;
      }

      v9 = *(__b[953] + 8 * i);
      if (v9)
      {
        heap_Free(*(a1 + 8), v9);
        *(__b[953] + 8 * i) = 0;
      }
    }

    v10 = __b[954];
    if (v10)
    {
      heap_Free(*(a1 + 8), v10);
      __b[954] = 0;
    }

    v11 = __b[955];
    if (v11)
    {
      heap_Free(*(a1 + 8), v11);
      __b[955] = 0;
    }

    v12 = __b[953];
    if (v12)
    {
      heap_Free(*(a1 + 8), v12);
      __b[953] = 0;
    }
  }

  v13 = __b[10];
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
    __b[10] = 0;
  }

  v14 = __b[15];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    __b[15] = 0;
  }

  v15 = __b[956];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    __b[956] = 0;
  }

  v16 = 0;
  v17 = __b + 18;
  v18 = __b + 53;
  v19 = __b + 33;
  v20 = __b + 293;
  v21 = __b + 273;
  v22 = __b + 283;
  v23 = __b;
  do
  {
    v24 = v17[v16];
    if (v24)
    {
      heap_Free(*(a1 + 8), v24);
      v17[v16] = 0;
    }

    v25 = v18[v16];
    if (v25)
    {
      heap_Free(*(a1 + 8), v25);
      v18[v16] = 0;
    }

    v26 = 5;
    v27 = v23;
    do
    {
      v28 = v27[63];
      if (v28)
      {
        heap_Free(*(a1 + 8), v28);
        v27[63] = 0;
      }

      v29 = v27[163];
      if (v29)
      {
        heap_Free(*(a1 + 8), v29);
        v27[163] = 0;
      }

      ++v27;
      --v26;
    }

    while (v26);
    v30 = 213;
    v18 = __b + 53;
    do
    {
      v31 = v23[v30];
      if (v31)
      {
        heap_Free(*(a1 + 8), v31);
        v23[v30] = 0;
      }

      ++v30;
    }

    while (v30 != 218);
    if (*(v19 + v16))
    {
      v32 = 0;
      do
      {
        v33 = v20[v16];
        if (v33)
        {
          v34 = *(v33 + 8 * v32);
          if (v34)
          {
            heap_Free(*(a1 + 8), v34);
            *(v20[v16] + 8 * v32) = 0;
          }
        }

        v35 = v21[v16];
        if (v35)
        {
          v36 = *(v35 + 8 * v32);
          if (v36)
          {
            heap_Free(*(a1 + 8), v36);
            *(v21[v16] + 8 * v32) = 0;
          }
        }

        v37 = v22[v16];
        if (v37)
        {
          v38 = *(v37 + 8 * v32);
          if (v38)
          {
            heap_Free(*(a1 + 8), v38);
            *(v22[v16] + 8 * v32) = 0;
          }
        }

        ++v32;
      }

      while (v32 < *(v19 + v16));
    }

    v39 = v20[v16];
    if (v39)
    {
      heap_Free(*(a1 + 8), v39);
      v20[v16] = 0;
    }

    v40 = v21[v16];
    v17 = __b + 18;
    if (v40)
    {
      heap_Free(*(a1 + 8), v40);
      v21[v16] = 0;
    }

    v41 = v22[v16];
    if (v41)
    {
      heap_Free(*(a1 + 8), v41);
      v22[v16] = 0;
    }

    ++v16;
    v23 += 5;
  }

  while (v16 != 10);
  for (k = 663; k != 919; ++k)
  {
    v43 = __b[k];
    if (v43)
    {
      heap_Free(*(a1 + 8), v43);
      __b[k] = 0;
    }
  }

  if (__b[952])
  {
    for (m = 0; m != 2048; m += 8)
    {
      v45 = *(__b[952] + m);
      if (v45)
      {
        heap_Free(*(a1 + 8), v45);
        *(__b[952] + m) = 0;
      }
    }

    heap_Free(*(a1 + 8), __b[952]);
  }

  return cstdlib_memset(__b, 0, 0x1F30uLL);
}

uint64_t XFREAD_XTRA_bound(unsigned int a1, unsigned int *a2)
{
  result = (a1 + *a2 / a1 * a1 - *a2) % a1;
  v3 = result + *a2;
  if (v3 >= a2[4])
  {
    v3 = a2[4];
  }

  *a2 = v3;
  return result;
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
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0;
  BET3FXD__xfread_BET3(&v27 + 2, 2u, 1, a3);
  if (HIWORD(v27) == 1)
  {
    BET3FXD__xfread_BET3(&v27 + 2, 2u, 1, a3);
    BET3FXD__xfread_BET3(&v27 + 2, 2u, 1, a3);
    v8 = HIWORD(v27);
    *a2 = HIWORD(v27);
    if ((v8 - 3) > 0xFFFFFFFD)
    {
      BET3FXD__xfread_BET3(&v27 + 2, 2u, 1, a3);
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
          BET3FXD__xfread_BET3(v15 - 28, 2u, 1, a3);
          BET3FXD__xfread_BET3(v15, 2u, 1, a3);
          ++v12;
          v15 += 2;
        }

        while (v12 < 2 * *(a2 + 4));
        BET3FXD__xfread_BET3(&v27, 2u, 1, a3);
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
            BET3FXD__xfread_BET3(v20, 2u, 1, a3);
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
        BET3FXD__xfread_BET3(&v27 + 2, 2u, 1, a3);
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
  BET3FXD__xfread_BET3(&v42 + 2, 2u, 1, a4);
  if (HIWORD(v42) == 1)
  {
    BET3FXD__xfread_BET3(&v42 + 2, 2u, 1, a4);
    BET3FXD__xfread_BET3(&v42 + 2, 2u, 1, a4);
    v13 = HIWORD(v42);
    *(a2 + 8) = HIWORD(v42);
    if ((v13 - 4) >= 0xFFFFFFFD)
    {
      BET3FXD__xfread_BET3(&v42 + 2, 2u, 1, a4);
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
        BET3FXD__xfread_BET3((a2 + 14), 2u, a3, a4);
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
              BET3FXD__xfread_BET3(v23, 2u, 1, a4);
              BET3FXD__xfread_BET3((v23 + 18), 2u, 1, a4);
              v23 += 2;
              --v22;
            }

            while (v22);
            ++v20;
            v21 += 6;
          }

          while (v20 < *(a2 + 8));
        }

        BET3FXD__xfread_BET3(&v41, 2u, 1, a4);
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
              BET3FXD__xfread_BET3(&v42, 2u, 1, a4);
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
  BET3FXD__xfread_BET3(&v46, 2u, 1, a3);
  if (v46 != 1)
  {
    if (v46 != 2)
    {
      log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadVQQuantizedCepFile: invalid quantization format");
      return 2229280772;
    }

    *(a2 + 16) = 1;
  }

  BET3FXD__xfread_BET3(&v46, 2u, 1, a3);
  BET3FXD__xfread_BET3(a2 + 3, 2u, 1, a3);
  BET3FXD__xfread_BET3(a2 + 2, 2u, 1, a3);
  v6 = a2[2];
  BET3FXD__xfread_BET3(a2 + 5, 2u, 1, a3);
  a2[6] = a2[5] + 1;
  *(a2 + 4) = 2;
  BET3FXD__xfread_BET3(&v46, 2u, 1, a3);
  v7 = 2229280772;
  if (v46 == 1)
  {
    v7 = 2229280778;
    v8 = 2 * v6;
    BET3FXD__xfread_BET3(a2 + 1, 2u, 1, a3);
    BET3FXD__xfread_BET3(a2, 2u, 1, a3);
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
          BET3FXD__xfread_BET3((v14 + 2), 2u, 1, a3);
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
            BET3FXD__xfread_BET3((*(v14 + 24) + v18), 2u, 1, a3);
            BET3FXD__xfread_BET3((*(v14 + 32) + v18), 2u, 1, a3);
            ++v19;
            v18 += 2;
          }

          while (v19 < *(v14 + 2));
          BET3FXD__xfread_BET3((v14 + 16), 2u, 1, a3);
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
          BET3FXD__xfread_BET3(*(v14 + 8), 4u, *(v14 + 2), a3);
          if (++v13 == v11)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        BET3FXD__xfread_BET3(a2 + 4, 2u, 1, a3);
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
          BET3FXD__xfread_BET3(v24, 2u, a2[4], a3);
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
          BET3FXD__xfread2ptr_BET3(a2 + 6, 2u, a2[3], a3);
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
  BET3FXD__xfread_BET3(&v40[1], 2u, 1, a3);
  if (v40[1] != 1)
  {
    v8 = "ReadQCodeBookSetHdr: invalid quantization format";
    goto LABEL_5;
  }

  BET3FXD__xfread_BET3(&v40[1], 2u, 1, a3);
  BET3FXD__xfread_BET3(v39, 2u, 1, a3);
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
  BET3FXD__xfread_BET3(v39 + 4, 4u, v7, a3);
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
    BET3FXD__xfread_BET3(v21, 2u, 1, a3);
    if (*v21 > 0x10u)
    {
      v8 = "LoadQuantizedCodebook: invalid value for codebook vector length\n";
      goto LABEL_50;
    }

    BET3FXD__xfread_BET3(v21 + 1, 2u, 1, a3);
    BET3FXD__xfread_BET3(v21 + 2, 2u, 1, a3);
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
        BET3FXD__xfread_BET3(v25 - 32, 2u, 1, a3);
        BET3FXD__xfread_BET3(v25, 2u, 1, a3);
        ++v24;
        v25 += 2;
      }

      while (v24 < *v21);
    }

    BET3FXD__xfread_BET3(&v40[1], 2u, 1, a3);
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
        BET3FXD__xfread_BET3(v40, 2u, 1, a3);
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
  v26 = 0;
  v25 = 0;
  v24 = 0;
  __s1 = 0;
  v21 = xmmword_287EF0808;
  v22 = off_287EF0818;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v26);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    log_OutText(*(v26 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjOpen");
    v10 = heap_Calloc(*(v26 + 8), 1, 1344);
    if (!v10)
    {
      log_OutPublic(*(v26 + 32), "SYNTH_BET3", 56000, 0);
      Object = 2164269066;
LABEL_27:
      log_OutText(*(v26 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjOpen: %x", Object);
      log_OutEvent(*(v26 + 32), 22, "", v14, v15, v16, v17, v18, v20);
      return Object;
    }

    v11 = v10;
    *v10 = a3;
    v10[1] = a4;
    v12 = v26;
    v10[2] = v26;
    if ((critsec_ObjOpen(*(v12 + 16), *(v12 + 8), v10 + 3) & 0x80000000) == 0)
    {
      *&v21 = v11;
      if ((synth_bet3_loc_ParamGetListen_0(v11, "volume", 0, 100, 80, &v21, &v24) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v11, "rate", 50, 400, 100, &v21, &v24) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v11, "rate_baseline", 50, 400, 100, &v21, &v24) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v11, "pitch", 50, 200, 100, &v21, &v24) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v11, "pitch_baseline", 50, 200, 100, &v21, &v24) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v11, "audiooutputbufsamples", 1, 0x7FFFFFFFLL, 256, &v21, &v24) & 0x80000000) == 0)
      {
        *(v11 + 40) = v24;
      }
    }

    if ((paramc_ParamGetStr(*(v26 + 40), "synth_type", &__s1) & 0x80000000) == 0)
    {
      if (!cstdlib_strcmp(__s1, "rcc"))
      {
        log_OutText(*(v26 + 32), "SYNTH_BET3", 4, 0, "Setting up MRCC synthesizer");
        *(v11 + 1036) = 1;
        v13 = synth_bet3_loc_SynthInit_MRCC(v11);
LABEL_22:
        Object = v13;
        if ((v13 & 0x80000000) == 0)
        {
          Object = objc_GetObject(*(v26 + 48), "SYNTHSTREAM", &v25);
          if ((Object & 0x80000000) == 0)
          {
            *(v11 + 32) = *(v25 + 8);
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

      if (cstdlib_strcmp(__s1, "mlsa") && cstdlib_strcmp(__s1, "mfs"))
      {
        log_OutText(*(v26 + 32), "SYNTH_BET3", 4, 0, "Unknown synthesizer: %s", __s1);
        return 7;
      }

      log_OutText(*(v26 + 32), "SYNTH_BET3", 4, 0, "Setting up MLSA synthesizer");
    }

    *(v11 + 1036) = 0;
    v13 = synth_bet3_loc_SynthInit_MLSA_0(v11);
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
  v30 = *(&xmmword_287EF0808 + 8);
  v32 = *(&xmmword_287EF0808 + 8);
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

  if (!cstdlib_strcmp(__s1, "rcc"))
  {
    log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "Setting up MRCC synthesizer");
    MFVSyn__denit__MVF_Synthesis((a1 + 64));
    *(a1 + 1036) = 1;
    inited = synth_bet3_loc_SynthInit_MRCC(a1);
    goto LABEL_11;
  }

  if (!cstdlib_strcmp(__s1, "mlsa") || !cstdlib_strcmp(__s1, "mfs"))
  {
    log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "Setting up MLSA synthesizer");
LABEL_9:
    RccSyn__deinit_Synthesis((a1 + 1048));
    *(a1 + 1036) = 0;
    inited = synth_bet3_loc_SynthInit_MLSA_0(a1);
LABEL_11:
    v4 = inited;
    log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjReopen: %x", inited);
    return v4;
  }

  log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "Unknown synthesizer: %s", __s1);
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
  v161[25] = *MEMORY[0x277D85DE8];
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
          cstdlib_memcpy(v156, __dst, __n);
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
      cstdlib_memcpy(v156, __dst, __n);
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
        cstdlib_memcpy(__dst, __src, HIDWORD(__n));
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
    cstdlib_memcpy(__dst, __src, HIDWORD(__n));
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
  if (cstdlib_strcmp(__s1, "audiooutputbufsamples"))
  {
    if (cstdlib_strcmp(__s1, "volume"))
    {
      if (cstdlib_strcmp(__s1, "rate"))
      {
        if (!cstdlib_strcmp(__s1, "ratewpm"))
        {
          result = 2164269057;
          goto LABEL_19;
        }

        if (cstdlib_strcmp(__s1, "pitch"))
        {
          result = 0;
          goto LABEL_19;
        }

        v8 = __CFADD__(LH_atoi(a3) - 201, 151);
      }

      else
      {
        v8 = __CFADD__(LH_atoi(a3) - 401, 351);
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

    else if (LH_atoi(a3) <= 0x64)
    {
      result = 0;
    }

    else
    {
      result = 2164269071;
    }
  }

  else if (LH_atoi(a3) <= 0)
  {
    result = 2164269071;
  }

  else
  {
    result = 0;
  }

LABEL_19:
  *a4 = result >= 0;
  return result;
}

uint64_t synth_bet3_loc_ParamLearnChange_0(uint64_t a1, char *__s1, const char *a3)
{
  if (cstdlib_strcmp(__s1, "audiooutputbufsamples") && cstdlib_strcmp(__s1, "volume") && cstdlib_strcmp(__s1, "rate") && cstdlib_strcmp(__s1, "rate_baseline") && cstdlib_strcmp(__s1, "pitch_baseline") && cstdlib_strcmp(__s1, "ratewpm") && cstdlib_strcmp(__s1, "pitch"))
  {
    return 0;
  }

  v7 = LH_atoi(a3);

  return synth_bet3_loc_ParamSet_0(a1, __s1, v7);
}