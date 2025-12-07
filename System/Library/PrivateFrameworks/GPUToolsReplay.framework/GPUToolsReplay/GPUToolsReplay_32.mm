id MakeMTLStitchedLibraryDescriptorSPI(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD7018];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setOptions:*(a1 + 48)];
  v7 = MakeMTLFunctionStitchingGraphArray(a1, v6);
  [v5 setFunctionGraphs:v7];

  v8 = CreateObjectArrayWithMap(*(a1 + 16), *(a1 + 40), v4);

  [v5 setFunctions:v8];

  return v5;
}

id MakeMTLAccelerationStructureAllocationDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6BF8]);
  [v2 setStorageMode:*(a1 + 9)];
  [v2 setForceResourceIndex:*a1 != 0];
  [v2 setResourceIndex:*a1];

  return v2;
}

id MakeMTLFXSpatialScalerDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7178]);
  [v2 setInputWidth:*a1];
  [v2 setInputHeight:*(a1 + 8)];
  [v2 setOutputWidth:*(a1 + 16)];
  [v2 setOutputHeight:*(a1 + 24)];
  [v2 setColorTextureFormat:*(a1 + 32)];
  [v2 setOutputTextureFormat:*(a1 + 34)];
  [v2 setColorProcessingMode:*(a1 + 36)];

  return v2;
}

id MakeMTLFXTemporalScalerDescriptor(unsigned __int16 *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7188]);
  [v2 setColorTextureFormat:*a1];
  [v2 setDepthTextureFormat:a1[1]];
  [v2 setMotionTextureFormat:a1[2]];
  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureEnabled:*(a1 + 58) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureFormat:a1[4]];
  }

  [v2 setOutputTextureFormat:a1[3]];
  [v2 setInputWidth:*(a1 + 2)];
  [v2 setInputHeight:*(a1 + 3)];
  [v2 setOutputWidth:*(a1 + 4)];
  [v2 setOutputHeight:*(a1 + 5)];
  LODWORD(v3) = *(a1 + 12);
  [v2 setInputContentMinScale:v3];
  LODWORD(v4) = *(a1 + 13);
  [v2 setInputContentMaxScale:v4];
  [v2 setAutoExposureEnabled:*(a1 + 56) != 0];
  [v2 setInputContentPropertiesEnabled:*(a1 + 57) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setRequiresSynchronousInitialization:*(a1 + 59) != 0];
  }

  return v2;
}

id MakeMTLFXFrameInterpolatorDescriptor(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CD7170];
  v13 = a2;
  v14 = objc_alloc_init(v12);
  if (objc_opt_respondsToSelector())
  {
    [v14 setInputWidth:*a1];
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setInputHeight:*(a1 + 8)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setOutputWidth:*(a1 + 16)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setOutputHeight:*(a1 + 24)];
  }

  [v14 setColorTextureFormat:*(a1 + 40)];
  [v14 setOutputTextureFormat:*(a1 + 46)];
  [v14 setMotionTextureFormat:*(a1 + 44)];
  [v14 setDepthTextureFormat:*(a1 + 42)];
  if (objc_opt_respondsToSelector())
  {
    [v14 setUITextureFormat:*(a1 + 48)];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 32)];
  v16 = [v13 objectForKeyedSubscript:v15];

  if (v16)
  {
    [v14 setScaler:v16];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 32)];
    v18 = [v9 objectForKeyedSubscript:v17];
    if (v18)
    {
      [v14 setScaler:v18];
    }

    else
    {
      v24 = v11;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 32)];
      v19 = [v10 objectForKeyedSubscript:?];
      if (v19)
      {
        [v14 setScaler:v19];
      }

      else
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 32)];
        v21 = [v24 objectForKeyedSubscript:v20];
        [v14 setScaler:v21];
      }

      v11 = v24;
    }
  }

  return v14;
}

id MakeMTLFXTemporalDenoisedScalerDescriptor(unsigned __int16 *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7180]);
  [v2 setColorTextureFormat:*a1];
  [v2 setDepthTextureFormat:a1[1]];
  [v2 setMotionTextureFormat:a1[2]];
  [v2 setDiffuseAlbedoTextureFormat:a1[3]];
  [v2 setSpecularAlbedoTextureFormat:a1[4]];
  [v2 setNormalTextureFormat:a1[5]];
  [v2 setRoughnessTextureFormat:a1[6]];
  [v2 setSpecularHitDistanceTextureFormat:a1[7]];
  if (objc_opt_respondsToSelector())
  {
    [v2 setDenoiseStrengthMaskTextureFormat:a1[8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setDenoiseStrengthMaskTextureEnabled:*(a1 + 69) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSpecularHitDistanceTextureFormat:a1[7]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSpecularHitDistanceTextureEnabled:*(a1 + 68) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setTransparencyOverlayTextureFormat:a1[9]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setTransparencyOverlayTextureEnabled:*(a1 + 70) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureEnabled:*(a1 + 66) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureFormat:a1[11]];
  }

  [v2 setOutputTextureFormat:a1[10]];
  [v2 setInputWidth:*(a1 + 3)];
  [v2 setInputHeight:*(a1 + 4)];
  [v2 setOutputWidth:*(a1 + 5)];
  [v2 setOutputHeight:*(a1 + 6)];
  LODWORD(v3) = *(a1 + 14);
  [v2 setInputContentMinScale:v3];
  LODWORD(v4) = *(a1 + 15);
  [v2 setInputContentMaxScale:v4];
  [v2 setAutoExposureEnabled:*(a1 + 64) != 0];
  [v2 setInputContentPropertiesEnabled:*(a1 + 65) != 0];

  return v2;
}

id MakeMTLResourceViewPoolDescriptor(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6FB8]);
  if (a1[1])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  [v2 setResourceViewCount:a1[2]];
  [v2 setForceBaseResourceID:*a1 != 0];
  [v2 setBaseResourceID:*a1];

  return v2;
}

BOOL GTMTLSMBuilder_streamIntersectionRange(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a3 + 32);
  if (v5 && (*(v5 + 79) & 8) != 0)
  {
    v6 = (v5 + 64);
  }

  else
  {
    v6 = 0;
  }

  Func = GTTraceStream_lastFunc(a3);
  if (*v6 >= a1 + a2)
  {
    return 0;
  }

  v9 = Func;
  return !GTFenum_isDestructor(*(Func + 8)) || a1 <= *v9;
}

uint64_t GTMTLSMBuilder_compareStreams(void **a1, void **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *v2;
  }

  v3 = *a2;
  if (*a2)
  {
    v3 = *v3;
  }

  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t *GTMTLSMContext_buildDeviceMirrorWithIgnoreFlags(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, apr_pool_t *pool)
{
  v6 = pool;
  v1549 = *MEMORY[0x277D85DE8];
  v1541 = 0;
  v1539 = 0u;
  v1540 = 0u;
  v1537 = 0u;
  v1538 = 0u;
  v1535 = 0u;
  v1536 = 0u;
  v1533 = 0u;
  v1534 = 0u;
  v1531 = 0u;
  v1532 = 0u;
  v1529 = 0u;
  v1530 = 0u;
  v1523 = 1;
  v1524 = a4;
  v1525 = a5;
  p = pool;
  ht = apr_hash_make(pool);
  v1528 = a2;
  v10 = apr_array_make(v6, *(a1 + 48), 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a1;
  *(a1 + 40) = 0;
  v11 = apr_hash_next((a1 + 16));
  if (v11)
  {
    v12 = v11;
    do
    {
      v13 = *(*(v12 + 1) + 32);
      *apr_array_push(v10) = v13;
      v12 = apr_hash_next(v12);
    }

    while (v12);
  }

  qsort(v10->elts, v10->nelts, v10->elt_size, GTMTLSMBuilder_compareStreams);
  v1522 = 0;
  v1521 = 0u;
  v1520 = 0u;
  v1519 = 0u;
  v1518 = 1;
  __key = &v1518;
  v14 = bsearch(&__key, v10->elts, v10->nelts, v10->elt_size, GTMTLSMBuilder_compareStreams);
  elts = v10->elts;
  nelts = v10->nelts;
  v18 = &elts[8 * nelts];
  v1513 = v18;
  if (v14)
  {
    v19 = *v14;
    if (*(*(*v14 + 32) + 72) != -10239)
    {
      return 0;
    }

    v20 = v14 + 1;
    if (GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v19))
    {
      ++DWORD2(v1536);
      v21 = *(v19 + 32);
      if (v21)
      {
        v22 = 0;
        while (1)
        {
          v23 = atomic_load((v21 + 4));
          v24 = v22 + (v23 >> 6) - 1;
          if (v24 > 0)
          {
            break;
          }

          v21 = *(v21 + 40);
          v22 = v24;
          if (!v21)
          {
            v22 = v24;
            goto LABEL_16;
          }
        }

        v24 = 0;
LABEL_16:
        v26 = v22 | (v24 << 32);
      }

      else
      {
        v26 = 0;
      }

      v27 = 0;
      v28 = 0;
      while (v21)
      {
        v29 = v21 + 64;
        v30 = v21 + 64 + ((HIDWORD(v26) - v26) << 6);
        if ((*(v30 + 15) & 8) == 0)
        {
          break;
        }

        v31 = *v30;
        if (*v30 >= v1525 + v1524)
        {
          break;
        }

        v32 = *(v30 + 8);
        if (v32 == -10239)
        {
          v33 = v1528;
          v34 = GTTraceFunc_argumentBytesWithMap((v29 + ((HIDWORD(v26) - v26) << 6)), *(v30 + 13), v1528);
          v27 = *v34;
          v28 = GTTraceFunc_argumentBytesWithMap((v29 + ((HIDWORD(v26) - v26) << 6)), v34[8], v33);
        }

        else if (v32 == -16317)
        {
          if (v1524 <= v31)
          {
            v1304 = apr_palloc(p, 0x30uLL);
            *v1304 = 36;
            v1304[1] = v27;
            *(v1304 + 1) = xmmword_24DA8B920;
            v1304[4] = 0;
            v1304[5] = v28;
            v1305 = *find_entry(ht, v1304 + 8, 8uLL, 0);
            if (v1305)
            {
              v1305 = *(v1305 + 32);
            }

            v18 = v1513;
            v1304[4] = v1305;
            apr_hash_set(ht, v1304 + 1, 8, v1304);
            v1304[3] = v31;
          }

          else
          {
            v18 = v1513;
          }

          goto LABEL_30;
        }

        v35 = atomic_load((v21 + 4));
        v36 = v26 + (v35 >> 6);
        v37 = (HIDWORD(v26) + 1);
        v26 = (v37 << 32) | v26;
        if (v37 == v36 - 1)
        {
          v26 = (v37 << 32) | v37;
          v21 = *(v21 + 40);
        }
      }

      v38 = apr_palloc(p, 0x30uLL);
      *v38 = 36;
      v38[1] = v27;
      *(v38 + 1) = xmmword_24DA8B920;
      v38[4] = 0;
      v38[5] = v28;
      v39 = *find_entry(ht, v38 + 8, 8uLL, 0);
      if (v39)
      {
        v39 = *(v39 + 32);
      }

      v18 = v1513;
      v38[4] = v39;
      apr_hash_set(ht, v38 + 1, 8, v38);
      v38[3] = -1;
    }
  }

  else
  {
    v20 = &elts[8 * nelts];
  }

LABEL_30:
  newpool = 0;
  apr_pool_create_ex(&newpool, v6, 0, v15);
  if (*(a3 + 12) <= 1)
  {
    v40 = 1;
  }

  else
  {
    v40 = *(a3 + 12);
  }

  v41 = apr_array_make(newpool, v40, 64);
  v42 = *(a3 + 12);
  if (v42 >= 1)
  {
    v43 = 0;
    for (i = 0; i < v42; ++i)
    {
      v45 = (*(a3 + 24) + v43);
      if ((*(v45 + 2) | 4) == 0xFFFFD856)
      {
        v46 = apr_array_push(v41);
        v47 = *v45;
        v48 = v45[1];
        v49 = v45[3];
        v46[2] = v45[2];
        v46[3] = v49;
        *v46 = v47;
        v46[1] = v48;
        v42 = *(a3 + 12);
      }

      v43 += 64;
    }
  }

  if (v20 != v18)
  {
    v1512 = v41;
    do
    {
      v50 = *v20;
      if (*v20)
      {
        v51 = *(v50 + 32);
        if (v51)
        {
          if ((*(v51 + 79) & 8) != 0)
          {
            v52 = *(v51 + 72);
            v1514 = v20;
            if (v52 == -7163)
            {
              v53 = 32;
              v54 = GTTraceFunc_argumentBytesWithPool((v51 + 64), *(v51 + 77), *(v50 + 24)) + 8;
            }

            else
            {
              v55 = GTFenum_getConstructorType(v52) - 2;
              if (v55 > 0x6C)
              {
                v53 = -1;
              }

              else
              {
                v53 = byte_24DA91F13[v55];
              }

              v56 = GTTraceFunc_argumentBytesWithPool((v51 + 64), *(v51 + 77), *(v50 + 24));
              v54 = v56 + 16;
              if (v52 == -15914)
              {
                v57 = v56 + 16;
              }

              else
              {
                v57 = v56;
              }

              if (v52 != -15913)
              {
                v54 = v57;
              }
            }

            v58 = *v54;
            v1515 = v58;
            if (v53 == 31 || v58 == 1 || (v59 = find_entry(ht, &v1515, 8uLL, 0), *v59) && *(*v59 + 32))
            {
              switch(v53)
              {
                case 0:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[96], 0, 24);
                  memset(&__src[128], 0, 40);
                  *&__src[32] = 0;
                  memset(&__src[48], 0, 32);
                  *__src = 22;
                  *&__src[24] = -1;
                  *&__src[106] = 2;
                  *&__src[80] = 0xFFFFFFFFFFFFFFFFLL;
                  *&__src[120] = -1;
                  *&__src[40] = v1523;
                  LODWORD(v1529) = v1529 + 1;
                  v60 = *(v50 + 32);
                  if (v60 && (*(v60 + 79) & 8) != 0)
                  {
                    v61 = (v60 + 64);
                  }

                  else
                  {
                    v61 = 0;
                  }

                  GTMTLSMBuffer_processTraceFuncWithMap(__src, v1528, v61);
                  v1072 = *(v50 + 32);
                  if (!v1072)
                  {
                    v1076 = 0;
                    goto LABEL_1684;
                  }

                  v1073 = 0;
                  do
                  {
                    v1074 = atomic_load((v1072 + 4));
                    v1075 = v1073 + (v1074 >> 6) - 1;
                    if (v1075 > 1)
                    {
                      v1075 = 1;
                      goto LABEL_1683;
                    }

                    v1072 = *(v1072 + 40);
                    v1073 = v1075;
                  }

                  while (v1072);
                  v1073 = v1075;
LABEL_1683:
                  v1076 = v1073 | (v1075 << 32);
LABEL_1684:
                  while (2)
                  {
                    v1077 = v1072 + 64;
LABEL_1685:
                    if (!v1072 || (v1078 = v1077 + ((HIDWORD(v1076) - v1076) << 6), (*(v1078 + 15) & 8) == 0) || (v549 = *v1078, *v1078 >= v1525 + v1524))
                    {
                      v576 = apr_palloc(p, 0xA8uLL);
                      v1095 = *&__src[16];
                      v1094 = *&__src[32];
                      *v576 = *__src;
                      v576[1] = v1095;
                      v576[2] = v1094;
                      v1096 = *&__src[96];
                      v1098 = *&__src[48];
                      v1097 = *&__src[64];
                      v576[5] = *&__src[80];
                      v576[6] = v1096;
                      v576[3] = v1098;
                      v576[4] = v1097;
                      v1100 = *&__src[128];
                      v1099 = *&__src[144];
                      v1101 = *&__src[112];
                      *(v576 + 20) = *&__src[160];
                      v576[8] = v1100;
                      v576[9] = v1099;
                      v576[7] = v1101;
                      goto LABEL_1816;
                    }

                    v1079 = *(v1078 + 8);
                    if (v1079 <= -16368)
                    {
                      if (v1079 != -16372)
                      {
                        if (v1079 == -16370)
                        {
                          if (v1524 <= v549)
                          {
                            v576 = apr_palloc(p, 0xA8uLL);
                            v1252 = *&__src[16];
                            v1251 = *&__src[32];
                            *v576 = *__src;
                            v576[1] = v1252;
                            v576[2] = v1251;
                            v1253 = *&__src[96];
                            v1255 = *&__src[48];
                            v1254 = *&__src[64];
                            v576[5] = *&__src[80];
                            v576[6] = v1253;
                            v576[3] = v1255;
                            v576[4] = v1254;
                            v1257 = *&__src[128];
                            v1256 = *&__src[144];
                            v1258 = *&__src[112];
                            *(v576 + 20) = *&__src[160];
                            v576[8] = v1257;
                            v576[9] = v1256;
                            v576[7] = v1258;
                            goto LABEL_1786;
                          }

                          goto LABEL_1852;
                        }

                        goto LABEL_1700;
                      }
                    }

                    else if (v1079 != -16122 && v1079 != -16367)
                    {
                      goto LABEL_1700;
                    }

                    if (v1524 <= v549)
                    {
                      v1081 = apr_palloc(p, 0xA8uLL);
                      v1083 = *&__src[16];
                      v1082 = *&__src[32];
                      *v1081 = *__src;
                      *(v1081 + 1) = v1083;
                      *(v1081 + 2) = v1082;
                      v1084 = *&__src[96];
                      v1086 = *&__src[48];
                      v1085 = *&__src[64];
                      *(v1081 + 5) = *&__src[80];
                      *(v1081 + 6) = v1084;
                      *(v1081 + 3) = v1086;
                      *(v1081 + 4) = v1085;
                      v1088 = *&__src[128];
                      v1087 = *&__src[144];
                      v1089 = *&__src[112];
                      v1081[20] = *&__src[160];
                      *(v1081 + 8) = v1088;
                      *(v1081 + 9) = v1087;
                      *(v1081 + 7) = v1089;
                      v1090 = *find_entry(ht, v1081 + 8, 8uLL, 0);
                      if (v1090)
                      {
                        v1090 = *(v1090 + 32);
                      }

                      v1081[4] = v1090;
                      apr_hash_set(ht, v1081 + 1, 8, v1081);
                      v1081[3] = v549;
                    }

LABEL_1700:
                    GTMTLSMBuffer_processTraceFuncWithMap(__src, v1528, (v1077 + ((HIDWORD(v1076) - v1076) << 6)));
                    v1091 = atomic_load((v1072 + 4));
                    v1092 = v1076 + (v1091 >> 6);
                    v1093 = (HIDWORD(v1076) + 1);
                    v1076 = (v1093 << 32) | v1076;
                    if (v1093 == v1092 - 1)
                    {
                      v1076 = (v1093 << 32) | v1093;
                      v1072 = *(v1072 + 40);
                      continue;
                    }

                    goto LABEL_1685;
                  }

                case 1:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(&__src[96], 0, 224);
                  memset(&__src[48], 0, 32);
                  *&__src[32] = 0;
                  memset(__src, 0, 24);
                  *__src = 101;
                  *&__src[24] = -1;
                  *&__src[106] = 2;
                  *&__src[80] = 0xFFFFFFFFFFFFFFFFLL;
                  *&__src[40] = v1523;
                  ++DWORD1(v1529);
                  v156 = *(v50 + 32);
                  if (v156 && (*(v156 + 79) & 8) != 0)
                  {
                    v157 = (v156 + 64);
                  }

                  else
                  {
                    v157 = 0;
                  }

                  GTMTLSMTensor_processTraceFuncWithMap(__src, v1528, v157);
                  v1102 = *(v50 + 32);
                  if (!v1102)
                  {
                    v1106 = 0;
                    goto LABEL_1712;
                  }

                  v1103 = 0;
                  while (1)
                  {
                    v1104 = atomic_load((v1102 + 4));
                    v1105 = v1103 + (v1104 >> 6) - 1;
                    if (v1105 > 1)
                    {
                      break;
                    }

                    v1102 = *(v1102 + 40);
                    v1103 = v1105;
                    if (!v1102)
                    {
                      v1103 = v1105;
                      goto LABEL_1711;
                    }
                  }

                  v1105 = 1;
LABEL_1711:
                  v1106 = v1103 | (v1105 << 32);
                  while (1)
                  {
LABEL_1712:
                    if (!v1102 || (v1107 = v1102 + 64 + ((HIDWORD(v1106) - v1106) << 6), (*(v1107 + 15) & 8) == 0) || (v482 = *v1107, *v1107 >= v1525 + v1524))
                    {
                      v893 = apr_palloc(p, 0x140uLL);
                      v489 = v893;
                      v894 = 320;
                      goto LABEL_1730;
                    }

                    v1108 = *(v1107 + 8);
                    if (v1108 > -14939)
                    {
                      break;
                    }

                    if (v1108 == -14950)
                    {
                      goto LABEL_1722;
                    }

                    if (v1108 == -14948)
                    {
                      if (v1524 <= v482)
                      {
                        v1207 = apr_palloc(p, 0x140uLL);
                        v489 = v1207;
                        v1208 = 320;
                        goto LABEL_1907;
                      }

                      goto LABEL_1852;
                    }

LABEL_1727:
                    GTMTLSMTensor_processTraceFuncWithMap(__src, v1528, (v1102 + 64 + ((HIDWORD(v1106) - v1106) << 6)));
                    v1112 = atomic_load((v1102 + 4));
                    v1113 = v1106 + (v1112 >> 6);
                    v1114 = (HIDWORD(v1106) + 1);
                    v1106 = (v1114 << 32) | v1106;
                    if (v1114 == v1113 - 1)
                    {
                      v1106 = (v1114 << 32) | v1114;
                      v1102 = *(v1102 + 40);
                    }
                  }

                  if (v1108 != -14938 && v1108 != -14933)
                  {
                    goto LABEL_1727;
                  }

LABEL_1722:
                  if (v1524 <= v482)
                  {
                    v1110 = apr_palloc(p, 0x140uLL);
                    memcpy(v1110, __src, 0x140uLL);
                    v1111 = *find_entry(ht, v1110 + 8, 8uLL, 0);
                    if (v1111)
                    {
                      v1111 = *(v1111 + 32);
                    }

                    *(v1110 + 4) = v1111;
                    apr_hash_set(ht, v1110 + 8, 8, v1110);
                    *(v1110 + 3) = v482;
                  }

                  goto LABEL_1727;
                case 2:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[96], 0, 128);
                  *&__src[32] = 0;
                  memset(&__src[48], 0, 32);
                  *__src = 80;
                  *&__src[24] = -1;
                  *&__src[106] = 2;
                  *&__src[80] = 0xFFFFFFFFFFFFFFFFLL;
                  *&__src[224] = 0xFFFFFFFFLL;
                  *&__src[40] = v1523;
                  ++DWORD2(v1529);
                  v130 = *(v50 + 32);
                  if (v130 && (*(v130 + 79) & 8) != 0)
                  {
                    v131 = v130 + 64;
                  }

                  else
                  {
                    v131 = 0;
                  }

                  GTMTLSMTexture_processTraceFuncWithMap(__src, v1528, v131);
                  v1034 = *(v50 + 32);
                  if (!v1034)
                  {
                    v1038 = 0;
                    goto LABEL_1654;
                  }

                  v1035 = 0;
                  while (1)
                  {
                    v1036 = atomic_load((v1034 + 4));
                    v1037 = v1035 + (v1036 >> 6) - 1;
                    if (v1037 > 1)
                    {
                      break;
                    }

                    v1034 = *(v1034 + 40);
                    v1035 = v1037;
                    if (!v1034)
                    {
                      v1035 = v1037;
                      goto LABEL_1653;
                    }
                  }

                  v1037 = 1;
LABEL_1653:
                  v1038 = v1035 | (v1037 << 32);
                  while (1)
                  {
LABEL_1654:
                    if (!v1034 || (v1039 = v1034 + 64 + ((HIDWORD(v1038) - v1038) << 6), (*(v1039 + 15) & 8) == 0) || (v1040 = *v1039, *v1039 >= v1525 + v1524))
                    {
                      v1059 = apr_palloc(p, 0xE8uLL);
                      v1061 = *&__src[16];
                      v1060 = *&__src[32];
                      *v1059 = *__src;
                      v1059[1] = v1061;
                      v1059[2] = v1060;
                      v1062 = *&__src[96];
                      v1064 = *&__src[48];
                      v1063 = *&__src[64];
                      v1059[5] = *&__src[80];
                      v1059[6] = v1062;
                      v1059[3] = v1064;
                      v1059[4] = v1063;
                      v1065 = *&__src[160];
                      v1067 = *&__src[112];
                      v1066 = *&__src[128];
                      v1059[9] = *&__src[144];
                      v1059[10] = v1065;
                      v1059[7] = v1067;
                      v1059[8] = v1066;
                      v1069 = *&__src[192];
                      v1068 = *&__src[208];
                      v1070 = *&__src[176];
                      *(v1059 + 28) = *&__src[224];
                      v1059[12] = v1069;
                      v1059[13] = v1068;
                      v1059[11] = v1070;
                      v1071 = *find_entry(ht, v1059 + 8, 8uLL, 0);
                      if (v1071)
                      {
                        v1071 = *(v1071 + 32);
                      }

                      *(v1059 + 4) = v1071;
                      apr_hash_set(ht, v1059 + 8, 8, v1059);
                      v1040 = -1;
                      goto LABEL_1674;
                    }

                    v1041 = *(v1039 + 8);
                    if (v1041 > -16233)
                    {
                      break;
                    }

                    if (v1041 == -16240)
                    {
                      goto LABEL_1664;
                    }

                    if (v1041 == -16238)
                    {
                      if (v1524 > v1040)
                      {
                        goto LABEL_1852;
                      }

                      v1059 = apr_palloc(p, 0xE8uLL);
                      v1240 = *&__src[16];
                      v1239 = *&__src[32];
                      *v1059 = *__src;
                      v1059[1] = v1240;
                      v1059[2] = v1239;
                      v1241 = *&__src[96];
                      v1243 = *&__src[48];
                      v1242 = *&__src[64];
                      v1059[5] = *&__src[80];
                      v1059[6] = v1241;
                      v1059[3] = v1243;
                      v1059[4] = v1242;
                      v1244 = *&__src[160];
                      v1246 = *&__src[112];
                      v1245 = *&__src[128];
                      v1059[9] = *&__src[144];
                      v1059[10] = v1244;
                      v1059[7] = v1246;
                      v1059[8] = v1245;
                      v1248 = *&__src[192];
                      v1247 = *&__src[208];
                      v1249 = *&__src[176];
                      *(v1059 + 28) = *&__src[224];
                      v1059[12] = v1248;
                      v1059[13] = v1247;
                      v1059[11] = v1249;
                      v1250 = *find_entry(ht, v1059 + 8, 8uLL, 0);
                      if (v1250)
                      {
                        v1250 = *(v1250 + 32);
                      }

                      *(v1059 + 4) = v1250;
                      apr_hash_set(ht, v1059 + 8, 8, v1059);
LABEL_1674:
                      *(v1059 + 3) = v1040;
                      goto LABEL_1852;
                    }

LABEL_1669:
                    GTMTLSMTexture_processTraceFuncWithMap(__src, v1528, v1034 + 64 + ((HIDWORD(v1038) - v1038) << 6));
                    v1056 = atomic_load((v1034 + 4));
                    v1057 = v1038 + (v1056 >> 6);
                    v1058 = (HIDWORD(v1038) + 1);
                    v1038 = (v1058 << 32) | v1038;
                    if (v1058 == v1057 - 1)
                    {
                      v1038 = (v1058 << 32) | v1058;
                      v1034 = *(v1034 + 40);
                    }
                  }

                  if (v1041 != -16232 && v1041 != -16114)
                  {
                    goto LABEL_1669;
                  }

LABEL_1664:
                  if (v1524 <= v1040)
                  {
                    v1043 = apr_palloc(p, 0xE8uLL);
                    v1045 = *&__src[16];
                    v1044 = *&__src[32];
                    *v1043 = *__src;
                    *(v1043 + 1) = v1045;
                    *(v1043 + 2) = v1044;
                    v1046 = *&__src[96];
                    v1048 = *&__src[48];
                    v1047 = *&__src[64];
                    *(v1043 + 5) = *&__src[80];
                    *(v1043 + 6) = v1046;
                    *(v1043 + 3) = v1048;
                    *(v1043 + 4) = v1047;
                    v1049 = *&__src[160];
                    v1051 = *&__src[112];
                    v1050 = *&__src[128];
                    *(v1043 + 9) = *&__src[144];
                    *(v1043 + 10) = v1049;
                    *(v1043 + 7) = v1051;
                    *(v1043 + 8) = v1050;
                    v1053 = *&__src[192];
                    v1052 = *&__src[208];
                    v1054 = *&__src[176];
                    v1043[28] = *&__src[224];
                    *(v1043 + 12) = v1053;
                    *(v1043 + 13) = v1052;
                    *(v1043 + 11) = v1054;
                    v1055 = *find_entry(ht, v1043 + 8, 8uLL, 0);
                    if (v1055)
                    {
                      v1055 = *(v1055 + 32);
                    }

                    v1043[4] = v1055;
                    apr_hash_set(ht, v1043 + 1, 8, v1043);
                    v1043[3] = v1040;
                  }

                  goto LABEL_1669;
                case 3:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1529);
                  v186 = *(v50 + 32);
                  if (!v186)
                  {
                    v278 = 0;
                    goto LABEL_1335;
                  }

                  v187 = 0;
                  do
                  {
                    v188 = atomic_load((v186 + 4));
                    v189 = v187 + (v188 >> 6) - 1;
                    if (v189 > 0)
                    {
                      v189 = 0;
                      goto LABEL_1334;
                    }

                    v186 = *(v186 + 40);
                    v187 = v189;
                  }

                  while (v186);
                  v187 = v189;
LABEL_1334:
                  v278 = v187 | (v189 << 32);
LABEL_1335:
                  v1427 = 0;
                  v1452 = 0;
                  v1476 = 0;
                  v849 = 0;
                  v850 = 0;
                  v851 = 0;
                  v1409 = 0;
                  v1503 = xmmword_24DA8B930;
                  while (1)
                  {
                    if (!v186 || (v852 = v186 + 64, v853 = v186 + 64 + ((HIDWORD(v278) - v278) << 6), (*(v853 + 15) & 8) == 0) || (v359 = *v853, *v853 >= v1525 + v1524))
                    {
                      v366 = apr_palloc(p, 0x58uLL);
                      *v366 = 75;
                      *(v366 + 1) = v1427;
                      v366[1] = v1452;
                      v367 = v366 + 1;
                      v368 = -1;
                      v366[2] = v1476;
                      v366[3] = -1;
                      v366[4] = 0;
                      v366[5] = v849;
                      v366[6] = v850;
                      v366[7] = v851;
                      *(v366 + 4) = v1503;
                      v366[10] = v1409;
                      goto LABEL_1352;
                    }

                    v854 = *(v853 + 8);
                    if (v854 == -16241)
                    {
                      if (v1524 <= v359)
                      {
                        v1190 = apr_palloc(p, 0x58uLL);
                        v1190->i32[0] = 75;
                        v1190->i32[1] = v1427;
                        v1190->i64[1] = v1452;
                        v1191 = &v1190->i8[8];
                        v1190[1].i64[0] = v1476;
                        v1190[1].i64[1] = -1;
                        v1190[2].i64[0] = 0;
                        v1190[2].i64[1] = v849;
                        v1190[3].i64[0] = v850;
                        v1190[3].i64[1] = v851;
                        v1190[4] = v1503;
                        v1190[5].i64[0] = v1409;
                        goto LABEL_1837;
                      }

                      goto LABEL_1852;
                    }

                    v855 = v1528;
                    if (v854 == -10163)
                    {
                      break;
                    }

                    if (v854 == -10226)
                    {
                      v858 = GTTraceFunc_argumentBytesWithMap((v852 + ((HIDWORD(v278) - v278) << 6)), *(v853 + 13), v1528);
                      v859.i64[1] = v1503.i64[1];
                      v859.i64[0] = *(v858 + 1);
LABEL_1348:
                      v1503 = v859;
                      goto LABEL_1349;
                    }

                    if (v854 == -16309)
                    {
                      v856 = GTTraceFunc_argumentBytesWithMap((v852 + ((HIDWORD(v278) - v278) << 6)), *(v853 + 13), v1528);
                      v1452 = *(v856 + 1);
                      v1476 = *v853;
                      v1427 = *(v853 + 8);
                      v857 = GTTraceFunc_argumentBytesWithMap((v852 + ((HIDWORD(v278) - v278) << 6)), *(v853 + 14), v855);
                      v851 = v857;
                      if (v857)
                      {
                        v1409 = *(v857 + 2);
                        v1503 = *v857;
                      }

                      v849 = *v856;
                      v850 = GTTraceFunc_argumentBytesWithMap((v852 + ((HIDWORD(v278) - v278) << 6)), v856[16], v855);
                    }

LABEL_1349:
                    v861 = atomic_load((v186 + 4));
                    v862 = v278 + (v861 >> 6);
                    v863 = (HIDWORD(v278) + 1);
                    v278 = (v863 << 32) | v278;
                    if (v863 == v862 - 1)
                    {
                      v278 = (v863 << 32) | v863;
                      v186 = *(v186 + 40);
                    }
                  }

                  v860 = GTTraceFunc_argumentBytesWithMap((v852 + ((HIDWORD(v278) - v278) << 6)), *(v853 + 13), v1528);
                  v859.i64[0] = v1503.i64[0];
                  v859.i64[1] = *(v860 + 1);
                  goto LABEL_1348;
                case 4:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(&__src[128], 0, 312);
                  memset(&__src[32], 0, 88);
                  memset(__src, 0, 24);
                  *__src = 71;
                  *&__src[24] = -1;
                  *&__src[120] = -1;
                  LODWORD(v1530) = v1530 + 1;
                  v195 = *(v50 + 32);
                  if (!v195)
                  {
                    v280 = 0;
                    goto LABEL_1403;
                  }

                  v196 = 0;
                  while (1)
                  {
                    v197 = atomic_load((v195 + 4));
                    v198 = v196 + (v197 >> 6) - 1;
                    if (v198 > 0)
                    {
                      break;
                    }

                    v195 = *(v195 + 40);
                    v196 = v198;
                    if (!v195)
                    {
                      v196 = v198;
                      goto LABEL_1402;
                    }
                  }

                  v198 = 0;
LABEL_1402:
                  v280 = v196 | (v198 << 32);
                  while (1)
                  {
LABEL_1403:
                    if (!v195 || (v889 = v195 + 64 + ((HIDWORD(v280) - v280) << 6), (*(v889 + 15) & 8) == 0) || (v482 = *v889, *v889 >= v1525 + v1524))
                    {
                      v893 = apr_palloc(p, 0x1B8uLL);
                      v489 = v893;
                      v894 = 440;
LABEL_1730:
                      memcpy(v893, __src, v894);
                      goto LABEL_1731;
                    }

                    if (*(v889 + 8) == -16242)
                    {
                      break;
                    }

                    GTMTLSMRenderPipelineState_processTraceFuncWithMap(__src, v1528, v889);
                    v890 = atomic_load((v195 + 4));
                    v891 = v280 + (v890 >> 6);
                    v892 = (HIDWORD(v280) + 1);
                    v280 = (v892 << 32) | v280;
                    if (v892 == v891 - 1)
                    {
                      v280 = (v892 << 32) | v892;
                      v195 = *(v195 + 40);
                    }
                  }

                  if (v1524 <= v482)
                  {
                    v1207 = apr_palloc(p, 0x1B8uLL);
                    v489 = v1207;
                    v1208 = 440;
LABEL_1907:
                    memcpy(v1207, __src, v1208);
                    goto LABEL_1916;
                  }

                  goto LABEL_1852;
                case 5:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[128], 0, 96);
                  memset(&__src[32], 0, 88);
                  *__src = 29;
                  *&__src[24] = -1;
                  *&__src[120] = -1;
                  ++DWORD1(v1530);
                  v140 = *(v50 + 32);
                  if (!v140)
                  {
                    v267 = 0;
                    goto LABEL_968;
                  }

                  v141 = 0;
                  while (1)
                  {
                    v142 = atomic_load((v140 + 4));
                    v143 = v141 + (v142 >> 6) - 1;
                    if (v143 > 0)
                    {
                      break;
                    }

                    v140 = *(v140 + 40);
                    v141 = v143;
                    if (!v140)
                    {
                      v141 = v143;
                      goto LABEL_967;
                    }
                  }

                  v143 = 0;
LABEL_967:
                  v267 = v141 | (v143 << 32);
                  while (1)
                  {
LABEL_968:
                    if (!v140 || (v664 = v140 + 64 + ((HIDWORD(v267) - v267) << 6), (*(v664 + 15) & 8) == 0) || (v482 = *v664, *v664 >= v1525 + v1524))
                    {
                      v489 = apr_palloc(p, 0xE0uLL);
                      v668 = *&__src[16];
                      *v489 = *__src;
                      v489[1] = v668;
                      v669 = *&__src[80];
                      v671 = *&__src[32];
                      v670 = *&__src[48];
                      v489[4] = *&__src[64];
                      v489[5] = v669;
                      v489[2] = v671;
                      v489[3] = v670;
                      v672 = *&__src[144];
                      v674 = *&__src[96];
                      v673 = *&__src[112];
                      v489[8] = *&__src[128];
                      v489[9] = v672;
                      v489[6] = v674;
                      v489[7] = v673;
                      v675 = *&__src[208];
                      v677 = *&__src[160];
                      v676 = *&__src[176];
                      v489[12] = *&__src[192];
                      v489[13] = v675;
                      v489[10] = v677;
                      v489[11] = v676;
                      goto LABEL_1731;
                    }

                    if (*(v664 + 8) == -16321)
                    {
                      break;
                    }

                    GTMTLSMComputePipelineState_processTraceFuncWithMap(__src, v1528, v664);
                    v665 = atomic_load((v140 + 4));
                    v666 = v267 + (v665 >> 6);
                    v667 = (HIDWORD(v267) + 1);
                    v267 = (v667 << 32) | v267;
                    if (v667 == v666 - 1)
                    {
                      v267 = (v667 << 32) | v667;
                      v140 = *(v140 + 40);
                    }
                  }

                  if (v1524 <= v482)
                  {
                    v489 = apr_palloc(p, 0xE0uLL);
                    v1196 = *&__src[16];
                    *v489 = *__src;
                    v489[1] = v1196;
                    v1197 = *&__src[80];
                    v1199 = *&__src[32];
                    v1198 = *&__src[48];
                    v489[4] = *&__src[64];
                    v489[5] = v1197;
                    v489[2] = v1199;
                    v489[3] = v1198;
                    v1200 = *&__src[144];
                    v1202 = *&__src[96];
                    v1201 = *&__src[112];
                    v489[8] = *&__src[128];
                    v489[9] = v1200;
                    v489[6] = v1202;
                    v489[7] = v1201;
                    v1203 = *&__src[208];
                    v1205 = *&__src[160];
                    v1204 = *&__src[176];
                    v489[12] = *&__src[192];
                    v489[13] = v1203;
                    v489[10] = v1205;
                    v489[11] = v1204;
                    goto LABEL_1916;
                  }

                  goto LABEL_1852;
                case 6:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  *__src = 0uLL;
                  LOWORD(v1547) = 0;
                  BYTE2(v1547) = 0;
                  ++DWORD2(v1530);
                  v158 = *(v50 + 32);
                  if (!v158)
                  {
                    v271 = 0;
                    goto LABEL_1077;
                  }

                  v159 = 0;
                  do
                  {
                    v160 = atomic_load((v158 + 4));
                    v161 = v159 + (v160 >> 6) - 1;
                    if (v161 > 0)
                    {
                      v161 = 0;
                      goto LABEL_1076;
                    }

                    v158 = *(v158 + 40);
                    v159 = v161;
                  }

                  while (v158);
                  v159 = v161;
LABEL_1076:
                  v271 = v159 | (v161 << 32);
LABEL_1077:
                  v724 = 0;
                  v1351 = 0;
                  v1360 = 0;
                  v1370 = 0;
                  v1423 = 0;
                  v1344 = 0;
                  v1334 = 0;
                  v1392 = 0;
                  v1339 = 0;
                  v1472 = 0;
                  v1448 = 0;
                  v1380 = 0;
                  v1499 = 0u;
                  v1405 = 2;
                  v1325 = -1;
                  v1329 = 0;
                  v1321 = -1;
                  while (1)
                  {
                    if (!v158 || (v725 = v158 + 64 + ((HIDWORD(v271) - v271) << 6), (*(v725 + 15) & 8) == 0) || (v726 = *v725, *v725 >= v1525 + v1524))
                    {
                      v745 = apr_palloc(p, 0x98uLL);
                      *v745 = 57;
                      *(v745 + 1) = v724;
                      v745[1] = v1351;
                      v745[2] = v1370;
                      v745[3] = v1325;
                      v745[4] = 0;
                      v745[5] = v1360;
                      *(v745 + 3) = *__src;
                      *(v745 + 4) = v1499;
                      v745[10] = v1321;
                      v745[11] = v1329;
                      *(v745 + 24) = v1423;
                      *(v745 + 25) = 0;
                      *(v745 + 52) = v1344;
                      *(v745 + 53) = v1405;
                      *(v745 + 108) = v1334;
                      v746 = v1547;
                      *(v745 + 111) = BYTE2(v1547);
                      *(v745 + 109) = v746;
                      v745[14] = v1392;
                      v745[15] = v1339;
                      v745[16] = v1472;
                      v745[17] = v1448;
                      v745[18] = v1380;
                      v747 = *find_entry(ht, v745 + 8, 8uLL, 0);
                      if (v747)
                      {
                        v747 = *(v747 + 32);
                      }

                      v745[4] = v747;
                      apr_hash_set(ht, v745 + 1, 8, v745);
                      v745[3] = -1;
                      goto LABEL_1852;
                    }

                    v727 = *(v725 + 8);
                    if (v727 == -15925 || v727 == -15919)
                    {
                      if (v1524 <= v726)
                      {
                        v729 = apr_palloc(p, 0x98uLL);
                        *v729 = 57;
                        *(v729 + 1) = v724;
                        v729[1] = v1351;
                        v729[2] = v1370;
                        v729[3] = v1325;
                        v729[4] = 0;
                        v729[5] = v1360;
                        *(v729 + 3) = *__src;
                        *(v729 + 4) = v1499;
                        v729[10] = v1321;
                        v729[11] = v1329;
                        *(v729 + 24) = v1423;
                        *(v729 + 25) = 0;
                        *(v729 + 52) = v1344;
                        *(v729 + 53) = v1405;
                        *(v729 + 108) = v1334;
                        v730 = v1547;
                        *(v729 + 111) = BYTE2(v1547);
                        *(v729 + 109) = v730;
                        v729[14] = v1392;
                        v729[15] = v1339;
                        v729[16] = v1472;
                        v729[17] = v1448;
                        v729[18] = v1380;
                        v731 = *find_entry(ht, v729 + 8, 8uLL, 0);
                        if (v731)
                        {
                          v731 = *(v731 + 32);
                        }

                        v729[4] = v731;
                        apr_hash_set(ht, v729 + 1, 8, v729);
                        v729[3] = v726;
                        v727 = *(v725 + 8);
                      }
                    }

                    else if (v727 == -15923)
                    {
                      if (v1524 <= v726)
                      {
                        v1236 = apr_palloc(p, 0x98uLL);
                        *v1236 = 57;
                        *(v1236 + 1) = v724;
                        v1236[1] = v1351;
                        v1236[2] = v1370;
                        v1236[3] = v1325;
                        v1236[4] = 0;
                        v1236[5] = v1360;
                        *(v1236 + 3) = *__src;
                        *(v1236 + 4) = v1499;
                        v1236[10] = v1321;
                        v1236[11] = v1329;
                        *(v1236 + 24) = v1423;
                        *(v1236 + 25) = 0;
                        *(v1236 + 52) = v1344;
                        *(v1236 + 53) = v1405;
                        *(v1236 + 108) = v1334;
                        v1237 = v1547;
                        *(v1236 + 111) = BYTE2(v1547);
                        *(v1236 + 109) = v1237;
                        v1236[14] = v1392;
                        v1236[15] = v1339;
                        v1236[16] = v1472;
                        v1236[17] = v1448;
                        v1236[18] = v1380;
                        v1238 = *find_entry(ht, v1236 + 8, 8uLL, 0);
                        if (v1238)
                        {
                          v1238 = *(v1238 + 32);
                        }

                        v1236[4] = v1238;
                        apr_hash_set(ht, v1236 + 1, 8, v1236);
                        v1236[3] = v726;
                      }

                      goto LABEL_1852;
                    }

                    v732 = v1528;
                    if (v727 > -15920)
                    {
                      if (v727 > -10210)
                      {
                        switch(v727)
                        {
                          case -10209:
                            v1321 = *(GTTraceFunc_argumentBytesWithMap(v725, *(v725 + 13), v1528) + 1);
                            break;
                          case -10202:
                            v741 = GTTraceFunc_argumentBytesWithMap(v725, *(v725 + 13), v1528);
                            v735.i64[0] = v1499.i64[0];
                            v735.i64[1] = *(v741 + 1);
                            goto LABEL_1121;
                          case -10166:
                            v738 = *(GTTraceFunc_argumentBytesWithMap(v725, *(v725 + 13), v1528) + 1);
LABEL_1114:
                            v1448 = v738;
                            break;
                        }
                      }

                      else
                      {
                        switch(v727)
                        {
                          case -15919:
                            v1334 = 1;
                            break;
                          case -10218:
                            v1472 = *(GTTraceFunc_argumentBytesWithMap(v725, *(v725 + 13), v1528) + 1);
                            break;
                          case -10215:
                            v734 = GTTraceFunc_argumentBytesWithMap(v725, *(v725 + 13), v1528);
                            v735.i64[1] = v1499.i64[1];
                            v735.i64[0] = *(v734 + 1);
LABEL_1121:
                            v1499 = v735;
                            break;
                        }
                      }
                    }

                    else if (v727 > -15925)
                    {
                      switch(v727)
                      {
                        case -15924:
                          v1423 = *(GTTraceFunc_argumentBytesWithMap(v725, *(v725 + 13), v1528) + 2);
                          break;
                        case -15923:
                          v1325 = *v725;
                          break;
                        case -15920:
                          v736 = *(GTTraceFunc_argumentBytesWithMap(v725, *(v725 + 13), v1528) + 2);
                          v737 = v1405;
                          if (v736 != 1)
                          {
                            v737 = v736;
                          }

                          v1405 = v737;
                          break;
                      }
                    }

                    else
                    {
                      if (v727 == -15972 || v727 == -15969)
                      {
                        v739 = GTTraceFunc_argumentBytesWithMap(v725, *(v725 + 13), v1528);
                        v1370 = *v725;
                        v724 = *(v725 + 8);
                        v1351 = *(v739 + 1);
                        v1360 = *v739;
                        v1392 = GTTraceFunc_argumentBytesWithMap(v725, v739[32], v732);
                        v1380 = *(v739 + 4);
                        v1344 = *(v739 + 12);
                        v740 = GTTraceFunc_argumentBytesWithMap(v725, *(v725 + 14), v732);
                        if (!v740)
                        {
                          v1339 = 0;
                          goto LABEL_1123;
                        }

                        v1499 = vextq_s8(*v740, *v740, 8uLL);
                        v1423 = v740[1].i32[0];
                        v1472 = v740[1].i64[1];
                        v1339 = v740;
                        v738 = v740[3].i64[0];
                        goto LABEL_1114;
                      }

                      if (v727 == -15925)
                      {
                        v733 = GTTraceFunc_argumentBytesWithMap(v725, *(v725 + 13), v1528);
                        v1329 = GTTraceFunc_argumentBytesWithMap(v725, v733[8], v732);
                      }
                    }

LABEL_1123:
                    v742 = atomic_load((v158 + 4));
                    v743 = v271 + (v742 >> 6);
                    v744 = (HIDWORD(v271) + 1);
                    v271 = (v744 << 32) | v271;
                    if (v744 == v743 - 1)
                    {
                      v271 = (v744 << 32) | v744;
                      v158 = *(v158 + 40);
                    }
                  }

                case 7:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1530);
                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 152);
                  *__src = 83;
                  *&__src[24] = -1;
                  v162 = *(v50 + 32);
                  if (v162)
                  {
                    v163 = 0;
                    while (1)
                    {
                      v164 = atomic_load((v162 + 4));
                      v165 = v163 + (v164 >> 6) - 1;
                      if (v165 > 0)
                      {
                        break;
                      }

                      v162 = *(v162 + 40);
                      v163 = v165;
                      if (!v162)
                      {
                        v163 = v165;
LABEL_1129:
                        v272 = v163 | (v165 << 32);
                        goto LABEL_1130;
                      }
                    }

                    v165 = 0;
                    goto LABEL_1129;
                  }

                  v272 = 0;
                  while (1)
                  {
LABEL_1130:
                    if (!v162 || (v748 = v162 + 64 + ((HIDWORD(v272) - v272) << 6), (*(v748 + 15) & 8) == 0) || (v549 = *v748, *v748 >= v1525 + v1524))
                    {
                      v576 = apr_palloc(p, 0xB8uLL);
                      v765 = *&__src[48];
                      v767 = *__src;
                      v766 = *&__src[16];
                      v576[2] = *&__src[32];
                      v576[3] = v765;
                      *v576 = v767;
                      v576[1] = v766;
                      v768 = *&__src[112];
                      v770 = *&__src[64];
                      v769 = *&__src[80];
                      v576[6] = *&__src[96];
                      v576[7] = v768;
                      v576[4] = v770;
                      v576[5] = v769;
                      v772 = *&__src[144];
                      v771 = *&__src[160];
                      v773 = *&__src[128];
                      *(v576 + 22) = *&__src[176];
                      v576[9] = v772;
                      v576[10] = v771;
                      v576[8] = v773;
                      goto LABEL_1816;
                    }

                    v749 = *(v748 + 8);
                    if (v749 > -15600)
                    {
                      break;
                    }

                    if (v749 == -15607)
                    {
                      goto LABEL_1140;
                    }

                    if (v749 == -15605)
                    {
                      v576 = apr_palloc(p, 0xB8uLL);
                      v1259 = *&__src[48];
                      v1261 = *__src;
                      v1260 = *&__src[16];
                      v576[2] = *&__src[32];
                      v576[3] = v1259;
                      *v576 = v1261;
                      v576[1] = v1260;
                      v1262 = *&__src[112];
                      v1264 = *&__src[64];
                      v1263 = *&__src[80];
                      v576[6] = *&__src[96];
                      v576[7] = v1262;
                      v576[4] = v1264;
                      v576[5] = v1263;
                      v1266 = *&__src[144];
                      v1265 = *&__src[160];
                      v1267 = *&__src[128];
                      *(v576 + 22) = *&__src[176];
                      v576[9] = v1266;
                      v576[10] = v1265;
                      v576[8] = v1267;
                      goto LABEL_1786;
                    }

LABEL_1145:
                    GTMTLSMVisibleFunctionTable_processTraceFuncWithMap(__src, v1528, (v162 + 64 + ((HIDWORD(v272) - v272) << 6)));
                    v762 = atomic_load((v162 + 4));
                    v763 = v272 + (v762 >> 6);
                    v764 = (HIDWORD(v272) + 1);
                    v272 = (v764 << 32) | v272;
                    if (v764 == v763 - 1)
                    {
                      v272 = (v764 << 32) | v764;
                      v162 = *(v162 + 40);
                    }
                  }

                  if (v749 != -15596 && v749 != -15599)
                  {
                    goto LABEL_1145;
                  }

LABEL_1140:
                  if (v1524 <= v549)
                  {
                    v751 = apr_palloc(p, 0xB8uLL);
                    v752 = *&__src[48];
                    v754 = *__src;
                    v753 = *&__src[16];
                    *(v751 + 2) = *&__src[32];
                    *(v751 + 3) = v752;
                    *v751 = v754;
                    *(v751 + 1) = v753;
                    v755 = *&__src[112];
                    v757 = *&__src[64];
                    v756 = *&__src[80];
                    *(v751 + 6) = *&__src[96];
                    *(v751 + 7) = v755;
                    *(v751 + 4) = v757;
                    *(v751 + 5) = v756;
                    v759 = *&__src[144];
                    v758 = *&__src[160];
                    v760 = *&__src[128];
                    v751[22] = *&__src[176];
                    *(v751 + 9) = v759;
                    *(v751 + 10) = v758;
                    *(v751 + 8) = v760;
                    v761 = *find_entry(ht, v751 + 8, 8uLL, 0);
                    if (v761)
                    {
                      v761 = *(v761 + 32);
                    }

                    v751[4] = v761;
                    apr_hash_set(ht, v751 + 1, 8, v751);
                    v751[3] = v549;
                  }

                  goto LABEL_1145;
                case 8:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[96], 0, 80);
                  memset(&__src[32], 0, 48);
                  *__src = 60;
                  *&__src[24] = -1;
                  *&__src[106] = 2;
                  *&__src[80] = 0xFFFFFFFFFFFFFFFFLL;
                  LODWORD(v1531) = v1531 + 1;
                  v206 = *(v50 + 32);
                  if (v206 && (*(v206 + 79) & 8) != 0)
                  {
                    v207 = v206 + 64;
                  }

                  else
                  {
                    v207 = 0;
                  }

                  GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(__src, v1528, v207);
                  v1158 = *(v50 + 32);
                  if (!v1158)
                  {
                    v1162 = 0;
                    goto LABEL_1798;
                  }

                  v1159 = 0;
                  while (1)
                  {
                    v1160 = atomic_load((v1158 + 4));
                    v1161 = v1159 + (v1160 >> 6) - 1;
                    if (v1161 > 1)
                    {
                      break;
                    }

                    v1158 = *(v1158 + 40);
                    v1159 = v1161;
                    if (!v1158)
                    {
                      v1159 = v1161;
                      goto LABEL_1797;
                    }
                  }

                  v1161 = 1;
LABEL_1797:
                  v1162 = v1159 | (v1161 << 32);
                  while (1)
                  {
LABEL_1798:
                    if (!v1158 || (v1163 = v1158 + 64 + ((HIDWORD(v1162) - v1162) << 6), (*(v1163 + 15) & 8) == 0) || (v549 = *v1163, *v1163 >= v1525 + v1524))
                    {
                      v576 = apr_palloc(p, 0xB0uLL);
                      v1180 = *&__src[16];
                      v1179 = *&__src[32];
                      *v576 = *__src;
                      v576[1] = v1180;
                      v576[2] = v1179;
                      v1181 = *&__src[96];
                      v1183 = *&__src[48];
                      v1182 = *&__src[64];
                      v576[5] = *&__src[80];
                      v576[6] = v1181;
                      v576[3] = v1183;
                      v576[4] = v1182;
                      v1184 = *&__src[160];
                      v1186 = *&__src[112];
                      v1185 = *&__src[128];
                      v576[9] = *&__src[144];
                      v576[10] = v1184;
                      v576[7] = v1186;
                      v576[8] = v1185;
                      goto LABEL_1816;
                    }

                    v1164 = *(v1163 + 8);
                    if (v1164 > -15561)
                    {
                      break;
                    }

                    if (v1164 == -15570)
                    {
                      goto LABEL_1808;
                    }

                    if (v1164 == -15568)
                    {
                      if (v1524 > v549)
                      {
                        goto LABEL_1852;
                      }

                      v576 = apr_palloc(p, 0xB0uLL);
                      v1269 = *&__src[16];
                      v1268 = *&__src[32];
                      *v576 = *__src;
                      v576[1] = v1269;
                      v576[2] = v1268;
                      v1270 = *&__src[96];
                      v1272 = *&__src[48];
                      v1271 = *&__src[64];
                      v576[5] = *&__src[80];
                      v576[6] = v1270;
                      v576[3] = v1272;
                      v576[4] = v1271;
                      v1273 = *&__src[160];
                      v1275 = *&__src[112];
                      v1274 = *&__src[128];
                      v576[9] = *&__src[144];
                      v576[10] = v1273;
                      v576[7] = v1275;
                      v576[8] = v1274;
LABEL_1786:
                      v1157 = *find_entry(ht, v576 + 8, 8uLL, 0);
                      if (v1157)
                      {
                        v1157 = *(v1157 + 32);
                      }

                      *(v576 + 4) = v1157;
                      apr_hash_set(ht, v576 + 8, 8, v576);
LABEL_1819:
                      *(v576 + 3) = v549;
                      goto LABEL_1852;
                    }

LABEL_1813:
                    GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(__src, v1528, v1158 + 64 + ((HIDWORD(v1162) - v1162) << 6));
                    v1176 = atomic_load((v1158 + 4));
                    v1177 = v1162 + (v1176 >> 6);
                    v1178 = (HIDWORD(v1162) + 1);
                    v1162 = (v1178 << 32) | v1162;
                    if (v1178 == v1177 - 1)
                    {
                      v1162 = (v1178 << 32) | v1178;
                      v1158 = *(v1158 + 40);
                    }
                  }

                  if (v1164 != -15557 && v1164 != -15560)
                  {
                    goto LABEL_1813;
                  }

LABEL_1808:
                  if (v1524 <= v549)
                  {
                    v1166 = apr_palloc(p, 0xB0uLL);
                    v1168 = *&__src[16];
                    v1167 = *&__src[32];
                    *v1166 = *__src;
                    *(v1166 + 1) = v1168;
                    *(v1166 + 2) = v1167;
                    v1169 = *&__src[96];
                    v1171 = *&__src[48];
                    v1170 = *&__src[64];
                    *(v1166 + 5) = *&__src[80];
                    *(v1166 + 6) = v1169;
                    *(v1166 + 3) = v1171;
                    *(v1166 + 4) = v1170;
                    v1172 = *&__src[160];
                    v1174 = *&__src[112];
                    v1173 = *&__src[128];
                    *(v1166 + 9) = *&__src[144];
                    *(v1166 + 10) = v1172;
                    *(v1166 + 7) = v1174;
                    *(v1166 + 8) = v1173;
                    v1175 = *find_entry(ht, v1166 + 8, 8uLL, 0);
                    if (v1175)
                    {
                      v1175 = *(v1175 + 32);
                    }

                    v1166[4] = v1175;
                    apr_hash_set(ht, v1166 + 1, 8, v1166);
                    v1166[3] = v549;
                  }

                  goto LABEL_1813;
                case 9:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[96], 0, 120);
                  memset(&__src[32], 0, 48);
                  *__src = 16;
                  *&__src[24] = -1;
                  *&__src[106] = 2;
                  *&__src[80] = 0xFFFFFFFFFFFFFFFFLL;
                  ++DWORD1(v1531);
                  v203 = *(v50 + 32);
                  if (v203)
                  {
                    v204 = v1512;
                    if ((*(v203 + 79) & 8) != 0)
                    {
                      v205 = (v203 + 64);
                    }

                    else
                    {
                      v205 = 0;
                    }
                  }

                  else
                  {
                    v205 = 0;
                    v204 = v1512;
                  }

                  GTMTLSMAccelerationStructure_processTraceFuncWithMap(__src, v1528, v205);
                  v1116 = v204->elts;
                  v1117 = *(v50 + 32);
                  if (!v1117)
                  {
                    v1121 = 0;
                    goto LABEL_1744;
                  }

                  v1118 = 0;
                  do
                  {
                    v1119 = atomic_load((v1117 + 4));
                    v1120 = v1118 + (v1119 >> 6) - 1;
                    if (v1120 > 1)
                    {
                      v1120 = 1;
                      goto LABEL_1743;
                    }

                    v1117 = *(v1117 + 40);
                    v1118 = v1120;
                  }

                  while (v1117);
                  v1118 = v1120;
LABEL_1743:
                  v1121 = v1118 | (v1120 << 32);
LABEL_1744:
                  v1122 = &v1116[64 * v204->nelts];
                  while (1)
                  {
                    if (v1117 && (v1123 = v1117 + ((0xFFFFFFFF00000001 * v1121) >> 32 << 6), (*(v1123 + 79) & 8) != 0))
                    {
                      v1124 = v1123 + 64;
                    }

                    else
                    {
                      v1124 = 0;
                    }

                    if (v1116 >= v1122)
                    {
                      break;
                    }

                    if (v1124)
                    {
                      if (*v1116 == *v1124)
                      {
                        v1116 += 64;
LABEL_1759:
                        v1127 = atomic_load((v1117 + 4));
                        v1128 = v1121 + (v1127 >> 6);
                        v1125 = HIDWORD(v1121);
LABEL_1762:
                        v1130 = (v1125 + 1);
                        if (v1130 == v1128 - 1)
                        {
                          v1121 = (v1130 << 32) | v1130;
                          v1117 = *(v1117 + 40);
                        }

                        else
                        {
                          v1121 = (v1130 << 32) | v1121;
                        }

                        goto LABEL_1765;
                      }

                      if (*v1116 >= *v1124)
                      {
                        goto LABEL_1759;
                      }
                    }

                    v1124 = v1116;
                    v1116 += 64;
LABEL_1765:
                    if (*v1124 >= v1525 + v1524)
                    {
LABEL_1784:
                      v549 = -1;
LABEL_1785:
                      v576 = apr_palloc(p, 0xD8uLL);
                      v1147 = *&__src[16];
                      *v576 = *__src;
                      v576[1] = v1147;
                      v1148 = *&__src[80];
                      v1150 = *&__src[32];
                      v1149 = *&__src[48];
                      v576[4] = *&__src[64];
                      v576[5] = v1148;
                      v576[2] = v1150;
                      v576[3] = v1149;
                      v1151 = *&__src[144];
                      v1153 = *&__src[96];
                      v1152 = *&__src[112];
                      v576[8] = *&__src[128];
                      v576[9] = v1151;
                      v576[6] = v1153;
                      v576[7] = v1152;
                      v1155 = *&__src[176];
                      v1154 = *&__src[192];
                      v1156 = *&__src[160];
                      *(v576 + 26) = *&__src[208];
                      v576[11] = v1155;
                      v576[12] = v1154;
                      v576[10] = v1156;
                      goto LABEL_1786;
                    }

                    v1131 = *(v1124 + 8);
                    if (v1131 == -10154 || v1131 == -10158)
                    {
                      v1132 = *(GTTraceFunc_argumentBytesWithMap(v1124, *(v1124 + 13), v1528) + 1);
                    }

                    else
                    {
                      v1132 = GTTraceFunc_targetContext(v1124, v1528);
                    }

                    if (v1132 == *&__src[8])
                    {
                      v1133 = *(v1124 + 8);
                      if (v1133 > -15553)
                      {
                        if (v1133 != -15552 && v1133 != -10154 && v1133 != -10158)
                        {
                          goto LABEL_1783;
                        }

LABEL_1779:
                        v1134 = *v1124;
                        if (v1524 <= *v1124)
                        {
                          v1135 = apr_palloc(p, 0xD8uLL);
                          v1136 = *&__src[16];
                          *v1135 = *__src;
                          *(v1135 + 1) = v1136;
                          v1137 = *&__src[80];
                          v1139 = *&__src[32];
                          v1138 = *&__src[48];
                          *(v1135 + 4) = *&__src[64];
                          *(v1135 + 5) = v1137;
                          *(v1135 + 2) = v1139;
                          *(v1135 + 3) = v1138;
                          v1140 = *&__src[144];
                          v1142 = *&__src[96];
                          v1141 = *&__src[112];
                          *(v1135 + 8) = *&__src[128];
                          *(v1135 + 9) = v1140;
                          *(v1135 + 6) = v1142;
                          *(v1135 + 7) = v1141;
                          v1144 = *&__src[176];
                          v1143 = *&__src[192];
                          v1145 = *&__src[160];
                          v1135[26] = *&__src[208];
                          *(v1135 + 11) = v1144;
                          *(v1135 + 12) = v1143;
                          *(v1135 + 10) = v1145;
                          v1146 = *find_entry(ht, v1135 + 8, 8uLL, 0);
                          if (v1146)
                          {
                            v1146 = *(v1146 + 32);
                          }

                          v1135[4] = v1146;
                          apr_hash_set(ht, v1135 + 1, 8, v1135);
                          v1135[3] = v1134;
                        }

                        goto LABEL_1783;
                      }

                      if ((v1133 + 15651) < 2 || v1133 == -15661)
                      {
                        goto LABEL_1779;
                      }

                      if (v1133 == -15659)
                      {
                        v549 = *v1124;
                        if (v1524 > *v1124)
                        {
                          goto LABEL_1852;
                        }

                        goto LABEL_1785;
                      }

LABEL_1783:
                      GTMTLSMAccelerationStructure_processTraceFuncWithMap(__src, v1528, v1124);
                    }
                  }

                  if (!v1124)
                  {
                    goto LABEL_1784;
                  }

                  v1125 = HIDWORD(v1121);
                  if (v1117 && (v1126 = v1117 + ((HIDWORD(v1121) - v1121) << 6), (*(v1126 + 79) & 8) != 0))
                  {
                    v1124 = v1126 + 64;
                  }

                  else
                  {
                    v1124 = 0;
                  }

                  v1129 = atomic_load((v1117 + 4));
                  v1128 = v1121 + (v1129 >> 6);
                  goto LABEL_1762;
                case 10:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1531);
                  v102 = *(v50 + 32);
                  if (!v102)
                  {
                    v258 = 0;
                    goto LABEL_648;
                  }

                  v103 = 0;
                  do
                  {
                    v104 = atomic_load((v102 + 4));
                    v105 = v103 + (v104 >> 6) - 1;
                    if (v105 > 0)
                    {
                      v105 = 0;
                      goto LABEL_647;
                    }

                    v102 = *(v102 + 40);
                    v103 = v105;
                  }

                  while (v102);
                  v103 = v105;
LABEL_647:
                  v258 = v103 | (v105 << 32);
LABEL_648:
                  v1418 = 0;
                  v1438 = 0;
                  v1466 = 0;
                  v466 = 0;
                  v467 = 0;
                  v468 = 0;
                  v1493 = xmmword_24DA8B930;
                  while (1)
                  {
                    if (!v102 || (v469 = v102 + 64, v470 = v102 + 64 + ((HIDWORD(v258) - v258) << 6), (*(v470 + 15) & 8) == 0) || (v359 = *v470, *v470 >= v1525 + v1524))
                    {
                      v366 = apr_palloc(p, 0x50uLL);
                      *v366 = 34;
                      *(v366 + 1) = v1418;
                      v366[1] = v1438;
                      v367 = v366 + 1;
                      v368 = -1;
                      v366[2] = v1466;
                      v366[3] = -1;
                      v366[4] = 0;
                      v366[5] = v466;
                      v366[6] = v467;
                      v366[7] = v468;
                      *(v366 + 4) = v1493;
                      goto LABEL_1352;
                    }

                    v471 = *(v470 + 8);
                    if (v471 == -16320)
                    {
                      if (v1524 > v359)
                      {
                        goto LABEL_1852;
                      }

                      v1190 = apr_palloc(p, 0x50uLL);
                      v1190->i32[0] = 34;
                      v1190->i32[1] = v1418;
                      v1190->i64[1] = v1438;
                      v1191 = &v1190->i8[8];
                      v1190[1].i64[0] = v1466;
                      v1190[1].i64[1] = -1;
                      v1190[2].i64[0] = 0;
                      v1190[2].i64[1] = v466;
                      v1190[3].i64[0] = v467;
                      v1190[3].i64[1] = v468;
                      v1190[4] = v1493;
                      goto LABEL_1837;
                    }

                    v472 = v1528;
                    if (v471 == -10149)
                    {
                      break;
                    }

                    if (v471 == -10150)
                    {
                      v475 = GTTraceFunc_argumentBytesWithMap((v469 + ((HIDWORD(v258) - v258) << 6)), *(v470 + 13), v1528);
                      v476.i64[1] = v1493.i64[1];
                      v476.i64[0] = *(v475 + 1);
LABEL_661:
                      v1493 = v476;
                      goto LABEL_662;
                    }

                    if (v471 == -16311)
                    {
                      v473 = GTTraceFunc_argumentBytesWithMap((v469 + ((HIDWORD(v258) - v258) << 6)), *(v470 + 13), v1528);
                      v1438 = *(v473 + 1);
                      v1466 = *v470;
                      v1418 = *(v470 + 8);
                      v474 = GTTraceFunc_argumentBytesWithMap((v469 + ((HIDWORD(v258) - v258) << 6)), *(v470 + 14), v472);
                      v468 = v474;
                      if (v474)
                      {
                        v1493 = *v474;
                      }

                      v466 = *v473;
                      v467 = GTTraceFunc_argumentBytesWithMap((v469 + ((HIDWORD(v258) - v258) << 6)), v473[16], v472);
                    }

LABEL_662:
                    v478 = atomic_load((v102 + 4));
                    v479 = v258 + (v478 >> 6);
                    v480 = (HIDWORD(v258) + 1);
                    v258 = (v480 << 32) | v258;
                    if (v480 == v479 - 1)
                    {
                      v258 = (v480 << 32) | v480;
                      v102 = *(v102 + 40);
                    }
                  }

                  v477 = GTTraceFunc_argumentBytesWithMap((v469 + ((HIDWORD(v258) - v258) << 6)), *(v470 + 13), v1528);
                  v476.i64[0] = v1493.i64[0];
                  v476.i64[1] = *(v477 + 1);
                  goto LABEL_661;
                case 11:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1531);
                  v144 = *(v50 + 32);
                  if (!v144)
                  {
                    v268 = 0;
                    goto LABEL_977;
                  }

                  v145 = 0;
                  do
                  {
                    v146 = atomic_load((v144 + 4));
                    v147 = v145 + (v146 >> 6) - 1;
                    if (v147 > 0)
                    {
                      v147 = 0;
                      goto LABEL_976;
                    }

                    v144 = *(v144 + 40);
                    v145 = v147;
                  }

                  while (v144);
                  v145 = v147;
LABEL_976:
                  v268 = v145 | (v147 << 32);
LABEL_977:
                  v1349 = 0;
                  v1390 = 0;
                  v1403 = 0;
                  v1368 = 0;
                  v1378 = 0;
                  v1358 = 0;
                  v678 = 0;
                  v1497 = 0;
                  v679 = 0;
                  v1470 = 0;
                  v1446 = 0;
                  while (1)
                  {
                    if (!v144 || (v680 = v144 + 64 + ((HIDWORD(v268) - v268) << 6), (*(v680 + 15) & 8) == 0) || (v368 = *v680, *v680 >= v1525 + v1524))
                    {
                      v545 = apr_palloc(p, 0x68uLL);
                      v366 = v545;
                      *v545 = 100;
                      *(v545 + 1) = v1349;
                      *(v545 + 1) = v1390;
                      v367 = v545 + 8;
                      v368 = -1;
                      *(v545 + 2) = v1403;
                      *(v545 + 3) = -1;
LABEL_1009:
                      *(v545 + 4) = 0;
                      *(v545 + 5) = v1368;
                      *(v545 + 6) = v1378;
                      *(v545 + 7) = v1358;
                      *(v545 + 8) = v678;
                      *(v545 + 9) = v1497;
                      *(v545 + 10) = v679;
                      *(v545 + 11) = v1470;
                      v546 = v1446;
LABEL_1010:
                      *(v545 + 12) = v546;
                      goto LABEL_1352;
                    }

                    v681 = *(v680 + 8);
                    if (v681 > -14856)
                    {
                      break;
                    }

                    if ((v681 + 14970) < 2)
                    {
                      goto LABEL_990;
                    }

                    if (v681 == -14972)
                    {
                      v545 = apr_palloc(p, 0x68uLL);
                      v366 = v545;
                      *v545 = 100;
                      *(v545 + 1) = v1349;
                      *(v545 + 1) = v1390;
                      v367 = v545 + 8;
                      *(v545 + 2) = v1403;
                      *(v545 + 3) = -1;
                      goto LABEL_1009;
                    }

LABEL_993:
                    v685 = v1528;
                    if (v681 <= -14970)
                    {
                      if (v681 == -15189)
                      {
                        v691 = GTTraceFunc_argumentBytesWithMap(v680, *(v680 + 13), v1528);
                        v1390 = *(v691 + 1);
                        v1403 = *v680;
                        v1349 = *(v680 + 8);
                        v692 = GTTraceFunc_argumentBytesWithMap(v680, v691[24], v685);
                        v1368 = *v691;
                        v1378 = v692;
                        v1358 = *v692;
                        goto LABEL_1006;
                      }

                      if (v681 == -14970)
                      {
                        v688 = GTTraceFunc_argumentBytesWithMap(v680, *(v680 + 13), v1528);
                        v1497 = v688 + 16;
                        v1470 = *(v688 + 3);
                        v689 = *(v688 + 1);
                        goto LABEL_1003;
                      }
                    }

                    else
                    {
                      switch(v681)
                      {
                        case -14969:
                          v686 = GTTraceFunc_argumentBytesWithMap(v680, *(v680 + 13), v1528);
                          v1497 = v686 + 8;
                          v687 = *(v686 + 4);
LABEL_1002:
                          v1470 = v687;
                          v689 = *(v686 + 2);
LABEL_1003:
                          v1446 = v689;
                          ++v678;
                          v679 = 1;
                          break;
                        case -14855:
                          v690 = GTTraceFunc_argumentBytesWithMap(v680, *(v680 + 13), v1528);
                          v1497 = GTTraceFunc_argumentBytesWithMap(v680, v690[56], v685);
                          v679 = *(v690 + 6);
                          v1470 = *(v690 + 3);
                          ++v678;
                          v1446 = *(v690 + 1);
                          break;
                        case -14802:
                          v686 = GTTraceFunc_argumentBytesWithMap(v680, *(v680 + 13), v1528);
                          v1497 = v686 + 8;
                          v687 = *(v686 + 6);
                          goto LABEL_1002;
                      }
                    }

LABEL_1006:
                    v693 = atomic_load((v144 + 4));
                    v694 = v268 + (v693 >> 6);
                    v695 = (HIDWORD(v268) + 1);
                    v268 = (v695 << 32) | v268;
                    if (v695 == v694 - 1)
                    {
                      v268 = (v695 << 32) | v695;
                      v144 = *(v144 + 40);
                    }
                  }

                  if (v681 != -14802 && v681 != -14855)
                  {
                    goto LABEL_993;
                  }

LABEL_990:
                  v683 = apr_palloc(p, 0x68uLL);
                  *v683 = 100;
                  *(v683 + 1) = v1349;
                  v683[1] = v1390;
                  v683[2] = v1403;
                  v683[3] = -1;
                  v683[4] = 0;
                  v683[5] = v1368;
                  v683[6] = v1378;
                  v683[7] = v1358;
                  v683[8] = v678;
                  v683[9] = v1497;
                  v683[10] = v679;
                  v683[11] = v1470;
                  v683[12] = v1446;
                  v684 = *find_entry(ht, v683 + 8, 8uLL, 0);
                  if (v684)
                  {
                    v684 = *(v684 + 32);
                  }

                  v683[4] = v684;
                  apr_hash_set(ht, v683 + 1, 8, v683);
                  v683[3] = v368;
                  v681 = *(v680 + 8);
                  goto LABEL_993;
                case 12:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 64);
                  *__src = 50;
                  *&__src[24] = -1;
                  *&__src[88] = 2;
                  LODWORD(v1532) = v1532 + 1;
                  v122 = *(v50 + 32);
                  if (!v122)
                  {
                    v263 = 0;
                    goto LABEL_778;
                  }

                  v123 = 0;
                  while (1)
                  {
                    v124 = atomic_load((v122 + 4));
                    v125 = v123 + (v124 >> 6) - 1;
                    if (v125 > 0)
                    {
                      break;
                    }

                    v122 = *(v122 + 40);
                    v123 = v125;
                    if (!v122)
                    {
                      v123 = v125;
                      goto LABEL_777;
                    }
                  }

                  v125 = 0;
LABEL_777:
                  v263 = v123 | (v125 << 32);
                  while (1)
                  {
LABEL_778:
                    if (!v122 || (v590 = v122 + 64 + ((HIDWORD(v263) - v263) << 6), (*(v590 + 15) & 8) == 0) || (v549 = *v590, *v590 >= v1525 + v1524))
                    {
                      v598 = apr_palloc(p, 0x60uLL);
                      v576 = v598;
                      goto LABEL_1472;
                    }

                    v591 = *(v590 + 8);
                    if (v591 > -10209)
                    {
                      break;
                    }

                    if (v591 == -16119 || v591 == -16115)
                    {
                      goto LABEL_789;
                    }

                    if (v591 == -16118)
                    {
                      if (v1524 > v549)
                      {
                        goto LABEL_1852;
                      }

                      v1276 = apr_palloc(p, 0x60uLL);
                      v576 = v1276;
                      goto LABEL_1925;
                    }

LABEL_793:
                    GTMTLSMHeap_processTraceFuncWithMap(__src, v1528, (v122 + 64 + ((HIDWORD(v263) - v263) << 6)));
                    v595 = atomic_load((v122 + 4));
                    v596 = v263 + (v595 >> 6);
                    v597 = (HIDWORD(v263) + 1);
                    v263 = (v597 << 32) | v263;
                    if (v597 == v596 - 1)
                    {
                      v263 = (v597 << 32) | v597;
                      v122 = *(v122 + 40);
                    }
                  }

                  if ((v591 + 10208) >= 2)
                  {
                    goto LABEL_793;
                  }

LABEL_789:
                  if (v1524 <= v549)
                  {
                    v593 = apr_palloc(p, 0x60uLL);
                    *(v593 + 2) = *&__src[32];
                    *(v593 + 3) = *&__src[48];
                    *(v593 + 4) = *&__src[64];
                    *(v593 + 5) = *&__src[80];
                    *v593 = *__src;
                    *(v593 + 1) = *&__src[16];
                    v594 = *find_entry(ht, v593 + 8, 8uLL, 0);
                    if (v594)
                    {
                      v594 = *(v594 + 32);
                    }

                    v593[4] = v594;
                    apr_hash_set(ht, v593 + 1, 8, v593);
                    v593[3] = v549;
                  }

                  goto LABEL_793;
                case 13:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  *&__src[4] = 0;
                  *__src = 0;
                  ++DWORD1(v1532);
                  v90 = *(v50 + 32);
                  if (!v90)
                  {
                    v255 = 0;
                    goto LABEL_522;
                  }

                  v91 = 0;
                  do
                  {
                    v92 = atomic_load((v90 + 4));
                    v93 = v91 + (v92 >> 6) - 1;
                    if (v93 > 0)
                    {
                      v93 = 0;
                      goto LABEL_521;
                    }

                    v90 = *(v90 + 40);
                    v91 = v93;
                  }

                  while (v90);
                  v91 = v93;
LABEL_521:
                  v255 = v91 | (v93 << 32);
LABEL_522:
                  v1437 = 0;
                  v1399 = 0;
                  v1417 = 0;
                  v1464 = 0;
                  v1309 = 0;
                  v1311 = 0;
                  v1316 = 0;
                  v1319 = 0;
                  v1327 = 0;
                  v1331 = 0;
                  v396 = 0;
                  v1336 = 0;
                  v1341 = 0;
                  v1306 = 0;
                  v1307 = 0;
                  v1354 = 0;
                  v1365 = 0;
                  v1387 = 0;
                  v1313 = 0;
                  v1323 = 0;
                  v1347 = 0;
                  v1375 = 0;
                  v397 = 0;
                  v1308 = -1;
                  while (1)
                  {
                    if (!v90 || (v398 = v90 + 64 + ((HIDWORD(v255) - v255) << 6), (*(v398 + 15) & 8) == 0) || (v399 = *v398, *v398 >= v1525 + v1524))
                    {
                      v438 = apr_palloc(p, 0xB8uLL);
                      *v438 = 62;
                      *(v438 + 1) = v1437;
                      v438[1] = v1417;
                      v438[2] = v1464;
                      v438[3] = v1308;
                      v438[4] = 0;
                      v438[5] = v1399;
                      v438[6] = v1311;
                      v438[7] = v1309;
                      v438[8] = v1319;
                      v438[9] = v1327;
                      v438[10] = v396;
                      v438[11] = v1336;
                      v438[12] = v1307;
                      v438[13] = v1341;
                      v438[14] = v1354;
                      v438[15] = v1331;
                      v438[16] = v1365;
                      v438[17] = v1306;
                      v438[18] = v1387;
                      v438[19] = v1316;
                      v438[20] = v1313;
                      *(v438 + 42) = v1323;
                      *(v438 + 43) = v1347;
                      *(v438 + 176) = v1375;
                      *(v438 + 177) = v397;
                      *(v438 + 91) = *&__src[4];
                      *(v438 + 178) = *__src;
                      v439 = *find_entry(ht, v438 + 8, 8uLL, 0);
                      if (v439)
                      {
                        v439 = *(v439 + 32);
                      }

                      v438[4] = v439;
                      apr_hash_set(ht, v438 + 1, 8, v438);
                      v438[3] = -1;
                      goto LABEL_1852;
                    }

                    v400 = *(v398 + 8);
                    if (v400 == -16292)
                    {
                      if (v1524 > v399)
                      {
                        v401 = v1528;
LABEL_531:
                        v402 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v401);
                        v1365 = GTTraceFunc_argumentBytesWithMap(v398, v402[8], v401);
                        goto LABEL_615;
                      }

                      v403 = apr_palloc(p, 0xB8uLL);
                      *v403 = 62;
                      *(v403 + 1) = v1437;
                      v403[1] = v1417;
                      v403[2] = v1464;
                      v403[3] = v1308;
                      v403[4] = 0;
                      v403[5] = v1399;
                      v403[6] = v1311;
                      v403[7] = v1309;
                      v403[8] = v1319;
                      v403[9] = v1327;
                      v403[10] = v396;
                      v403[11] = v1336;
                      v403[12] = v1307;
                      v403[13] = v1341;
                      v403[14] = v1354;
                      v403[15] = v1331;
                      v403[16] = v1365;
                      v403[17] = v1306;
                      v403[18] = v1387;
                      v403[19] = v1316;
                      v403[20] = v1313;
                      *(v403 + 42) = v1323;
                      *(v403 + 43) = v1347;
                      *(v403 + 176) = v1375;
                      *(v403 + 177) = v397;
                      *(v403 + 91) = *&__src[4];
                      *(v403 + 178) = *__src;
                      v404 = *find_entry(ht, v403 + 8, 8uLL, 0);
                      if (v404)
                      {
                        v404 = *(v404 + 32);
                      }

                      v403[4] = v404;
                      apr_hash_set(ht, v403 + 1, 8, v403);
                      v403[3] = v399;
                      v400 = *(v398 + 8);
                    }

                    else if (v400 == -16291)
                    {
                      v1217 = apr_palloc(p, 0xB8uLL);
                      *v1217 = 62;
                      *(v1217 + 1) = v1437;
                      v1217[1] = v1417;
                      v1217[2] = v1464;
                      v1217[3] = v1308;
                      v1217[4] = 0;
                      v1217[5] = v1399;
                      v1217[6] = v1311;
                      v1217[7] = v1309;
                      v1217[8] = v1319;
                      v1217[9] = v1327;
                      v1217[10] = v396;
                      v1217[11] = v1336;
                      v1217[12] = v1307;
                      v1217[13] = v1341;
                      v1217[14] = v1354;
                      v1217[15] = v1331;
                      v1217[16] = v1365;
                      v1217[17] = v1306;
                      v1217[18] = v1387;
                      v1217[19] = v1316;
                      v1217[20] = v1313;
                      *(v1217 + 42) = v1323;
                      *(v1217 + 43) = v1347;
                      *(v1217 + 176) = v1375;
                      *(v1217 + 177) = v397;
                      *(v1217 + 91) = *&__src[4];
                      *(v1217 + 178) = *__src;
                      entry = find_entry(ht, v1217 + 8, 8uLL, 0);
                      v1219 = *entry;
                      if (*entry)
                      {
                        v1219 = *(v1219 + 32);
                      }

                      v1217[4] = v1219;
                      apr_hash_set(ht, v1217 + 1, 8, v1217);
                      v1217[3] = v399;
                      goto LABEL_1852;
                    }

                    v401 = v1528;
                    if (v400 <= -16019)
                    {
                      if (v400 <= -16293)
                      {
                        if (v400 <= -16307)
                        {
                          if (v400 == -16308)
                          {
                            v429 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                            v1464 = *v398;
                            v1437 = *(v398 + 8);
                            v1399 = *v429;
                            v1417 = *(v429 + 1);
                            v430 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                            v396 = v430;
                            if (!v430)
                            {
                              v434 = v429[16];
LABEL_614:
                              v1354 = GTTraceFunc_argumentBytesWithMap(v398, v434, v401);
                              v1313 = 0;
                              v397 = 0;
                              goto LABEL_615;
                            }

                            v1387 = *(v430 + 1);
                            v1375 = v430[16];
                            v411 = v429[16];
                            goto LABEL_599;
                          }

                          if (v400 == -16307)
                          {
                            v419 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                            v1464 = *v398;
                            v1437 = *(v398 + 8);
                            v1399 = *v419;
                            v1417 = *(v419 + 1);
                            v420 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                            v396 = v420;
                            if (v420)
                            {
                              v1387 = *(v420 + 1);
                              v1375 = v420[16];
                              v1354 = GTTraceFunc_argumentBytesWithMap(v398, v419[24], v401);
                              v1316 = *v396;
                            }

                            else
                            {
                              v1354 = GTTraceFunc_argumentBytesWithMap(v398, v419[24], v401);
                              v1316 = 0;
                            }

                            v397 = 1;
                          }
                        }

                        else
                        {
                          if (v400 != -16306)
                          {
                            if (v400 != -16305 && v400 != -16304)
                            {
                              goto LABEL_615;
                            }

                            v412 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                            v1464 = *v398;
                            v1437 = *(v398 + 8);
                            v1399 = *v412;
                            v1417 = *(v412 + 1);
                            v413 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                            v396 = v413;
                            if (v413)
                            {
                              v1387 = *(v413 + 1);
                              v1375 = v413[16];
                            }

                            v1354 = GTTraceFunc_argumentBytesWithMap(v398, v412[24], v401);
                            v1331 = GTTraceFunc_argumentBytesWithMap(v398, v412[25], v401);
                            goto LABEL_589;
                          }

                          v424 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                          v1464 = *v398;
                          v1437 = *(v398 + 8);
                          v1399 = *v424;
                          v1417 = *(v424 + 1);
                          v425 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                          v396 = v425;
                          if (v425)
                          {
                            v1387 = *(v425 + 1);
                            v1375 = v425[16];
                          }

                          v1354 = GTTraceFunc_argumentBytesWithMap(v398, v424[24], v401);
                          v397 = 3;
                        }
                      }

                      else if (v400 > -16084)
                      {
                        if (v400 == -16083)
                        {
                          v433 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                          v1306 = GTTraceFunc_argumentBytesWithMap(v398, v433[8], v401);
                          goto LABEL_615;
                        }

                        if (v400 != -16039)
                        {
                          if (v400 != -16029)
                          {
                            goto LABEL_615;
                          }

LABEL_577:
                          v416 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                          v1464 = *v398;
                          v1437 = *(v398 + 8);
                          v1399 = *v416;
                          v1417 = *(v416 + 1);
                          v417 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                          v396 = v417;
                          if (v417)
                          {
                            v1387 = *(v417 + 1);
                            v1375 = v417[16];
                          }

                          v418 = GTTraceFunc_argumentBytesWithMap(v398, v416[24], v401);
                          if (v418)
                          {
                            v1323 = *v418;
                            v1319 = v418 + 8;
                          }

                          v1327 = GTTraceFunc_argumentBytesWithMap(v398, v416[25], v401);
                          v397 = 4;
                          goto LABEL_615;
                        }

                        v431 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                        v1464 = *v398;
                        v1437 = *(v398 + 8);
                        v1399 = *v431;
                        v1417 = *(v431 + 1);
                        v432 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                        v396 = v432;
                        if (v432)
                        {
                          v1387 = *(v432 + 1);
                          v1375 = v432[16];
                        }

                        v1354 = GTTraceFunc_argumentBytesWithMap(v398, v431[24], v401);
                        if (GTString_isMetalPackageURL(v1354))
                        {
                          v397 = 7;
                        }

                        else
                        {
                          v397 = 1;
                        }

                        if (v396)
                        {
                          v1316 = *v396;
                        }

                        else
                        {
                          v1316 = 0;
                        }
                      }

                      else
                      {
                        switch(v400)
                        {
                          case -16292:
                            goto LABEL_531;
                          case -16291:
                            v1308 = *v398;
                            break;
                          case -16095:
                            v409 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                            v1464 = *v398;
                            v1437 = *(v398 + 8);
                            v1399 = *v409;
                            v1417 = *(v409 + 1);
                            v410 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                            v396 = v410;
                            if (!v410)
                            {
                              v434 = v409[24];
                              goto LABEL_614;
                            }

                            v1387 = *(v410 + 1);
                            v1375 = v410[16];
                            v411 = v409[24];
LABEL_599:
                            v1354 = GTTraceFunc_argumentBytesWithMap(v398, v411, v401);
                            v397 = 0;
                            v1313 = *v396;
                            break;
                        }
                      }
                    }

                    else if (v400 > -15421)
                    {
                      if (v400 <= -15135)
                      {
                        if (v400 != -15420 && v400 != -15419)
                        {
                          if (v400 != -15135)
                          {
                            goto LABEL_615;
                          }

LABEL_586:
                          v421 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                          v1464 = *v398;
                          v1437 = *(v398 + 8);
                          v1399 = *v421;
                          v1417 = *(v421 + 1);
                          v422 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                          v396 = v422;
                          if (v422)
                          {
                            v1387 = *(v422 + 1);
                            v1375 = v422[16];
                          }

                          v1311 = *v421;
                          v423 = GTTraceFunc_argumentBytesWithMap(v398, v421[24], v401);
                          v1331 = *(v423 + 1);
                          v1309 = v423;
                          v1354 = *(v423 + 3);
LABEL_589:
                          v397 = 2;
                          goto LABEL_615;
                        }

LABEL_566:
                        v414 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                        v1464 = *v398;
                        v1437 = *(v398 + 8);
                        v1399 = *v414;
                        v1417 = *(v414 + 1);
                        v415 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                        v396 = v415;
                        if (v415)
                        {
                          v1387 = *(v415 + 1);
                          v1375 = v415[16];
                        }

                        v1336 = GTTraceFunc_argumentBytesWithMap(v398, v414[24], v401);
                        v1341 = *(v1336 + 2);
                        v408 = *(v1336 + 10);
LABEL_569:
                        v1347 = v408;
                        v397 = 6;
                        goto LABEL_615;
                      }

                      switch(v400)
                      {
                        case -15134:
                          goto LABEL_586;
                        case -10188:
                          v428 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                          v1387 = GTTraceFunc_argumentBytesWithMap(v398, v428[8], v401);
                          break;
                        case -10183:
                          v1375 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528)[8];
                          break;
                      }
                    }

                    else
                    {
                      if (v400 > -15436)
                      {
                        if (v400 != -15435 && v400 != -15434 && v400 != -15421)
                        {
                          goto LABEL_615;
                        }

                        goto LABEL_566;
                      }

                      switch(v400)
                      {
                        case -16018:
                          goto LABEL_577;
                        case -15847:
                          v426 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                          v1464 = *v398;
                          v1437 = *(v398 + 8);
                          v1399 = *v426;
                          v1417 = *(v426 + 1);
                          v427 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                          v396 = v427;
                          if (v427)
                          {
                            v1387 = *(v427 + 1);
                            v1375 = v427[16];
                          }

                          v1319 = GTTraceFunc_argumentBytesWithMap(v398, v426[32], v401);
                          v1323 = *(v426 + 4);
                          v1327 = GTTraceFunc_argumentBytesWithMap(v398, v426[33], v401);
                          v397 = 5;
                          break;
                        case -15693:
                          v405 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1528);
                          v1464 = *v398;
                          v1437 = *(v398 + 8);
                          v1399 = *v405;
                          v1417 = *(v405 + 1);
                          v406 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                          v396 = v406;
                          if (v406)
                          {
                            v1387 = *(v406 + 1);
                            v1375 = v406[16];
                          }

                          v1307 = GTTraceFunc_argumentBytesWithMap(v398, v405[24], v401);
                          v407 = GTTraceFunc_argumentBytesWithMap(v398, v405[25], v401);
                          v408 = *v407;
                          v1341 = v407 + 8;
                          goto LABEL_569;
                      }
                    }

LABEL_615:
                    v435 = atomic_load((v90 + 4));
                    v436 = v255 + (v435 >> 6);
                    v437 = (HIDWORD(v255) + 1);
                    v255 = (v437 << 32) | v255;
                    if (v437 == v436 - 1)
                    {
                      v255 = (v437 << 32) | v437;
                      v90 = *(v90 + 40);
                    }
                  }

                case 14:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  *&__src[4] = 0;
                  *__src = 0;
                  ++DWORD2(v1532);
                  v170 = *(v50 + 32);
                  if (!v170)
                  {
                    v274 = 0;
                    goto LABEL_1189;
                  }

                  v171 = 0;
                  do
                  {
                    v172 = atomic_load((v170 + 4));
                    v173 = v171 + (v172 >> 6) - 1;
                    if (v173 > 0)
                    {
                      v173 = 0;
                      goto LABEL_1188;
                    }

                    v170 = *(v170 + 40);
                    v171 = v173;
                  }

                  while (v170);
                  v171 = v173;
LABEL_1188:
                  v274 = v171 | (v173 << 32);
LABEL_1189:
                  v1450 = 0;
                  v1474 = 0;
                  v1501 = 0;
                  v1352 = 0;
                  v1361 = 0;
                  v1407 = 0;
                  v1425 = 0;
                  v1393 = 0;
                  v795 = 0;
                  v1371 = 0;
                  v1381 = 0u;
                  v1345 = -1;
                  while (1)
                  {
                    if (!v170 || (v796 = v170 + 64, v797 = v170 + 64 + ((HIDWORD(v274) - v274) << 6), (*(v797 + 15) & 8) == 0) || (v368 = *v797, *v797 >= v1525 + v1524))
                    {
                      v712 = apr_palloc(p, 0x78uLL);
                      v712[1] = v1474;
                      v713 = v712 + 1;
                      *v712 = 37;
                      *(v712 + 1) = v1450;
                      v712[2] = v1501;
                      v712[3] = v1345;
                      v712[4] = 0;
                      v712[5] = v1352;
                      v712[6] = v1425;
                      v712[7] = v1361;
                      v712[8] = 0;
                      v712[9] = v1407;
                      v712[10] = v1393;
                      v712[11] = v795;
                      *(v712 + 6) = v1381;
                      *(v712 + 56) = v1371;
                      *(v712 + 114) = *__src;
                      *(v712 + 59) = *&__src[4];
                      goto LABEL_1256;
                    }

                    v798 = *(v797 + 8);
                    if (v798 == -15676)
                    {
                      if (v1524 > v368)
                      {
                        v799 = v1528;
LABEL_1205:
                        v802 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), *(v797 + 13), v799);
                        v1407 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), v802[8], v799);
                        goto LABEL_1226;
                      }

                      v800 = apr_palloc(p, 0x78uLL);
                      v800[1] = v1474;
                      *v800 = 37;
                      *(v800 + 1) = v1450;
                      v800[2] = v1501;
                      v800[3] = v1345;
                      v800[4] = 0;
                      v800[5] = v1352;
                      v800[6] = v1425;
                      v800[7] = v1361;
                      v800[8] = 0;
                      v800[9] = v1407;
                      v800[10] = v1393;
                      v800[11] = v795;
                      *(v800 + 6) = v1381;
                      *(v800 + 56) = v1371;
                      *(v800 + 114) = *__src;
                      *(v800 + 59) = *&__src[4];
                      v801 = *find_entry(ht, v800 + 8, 8uLL, 0);
                      if (v801)
                      {
                        v801 = *(v801 + 32);
                      }

                      v800[4] = v801;
                      apr_hash_set(ht, v800 + 1, 8, v800);
                      v800[3] = v368;
                      v798 = *(v797 + 8);
                    }

                    else if (v798 == -15675)
                    {
                      v366 = apr_palloc(p, 0x78uLL);
                      v366[1] = v1474;
                      v367 = v366 + 1;
                      *v366 = 37;
                      *(v366 + 1) = v1450;
                      v366[2] = v1501;
                      v366[3] = v1345;
                      v366[4] = 0;
                      v366[5] = v1352;
                      v366[6] = v1425;
                      v366[7] = v1361;
                      v366[8] = 0;
                      v366[9] = v1407;
                      v366[10] = v1393;
                      v366[11] = v795;
                      *(v366 + 6) = v1381;
                      *(v366 + 56) = v1371;
                      *(v366 + 114) = *__src;
                      *(v366 + 59) = *&__src[4];
                      goto LABEL_1352;
                    }

                    v799 = v1528;
                    if (v798 > -15140)
                    {
                      if (v798 <= -15138)
                      {
                        v803 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), *(v797 + 13), v1528);
                        v1474 = *(v803 + 1);
                        v1501 = *v797;
                        v1450 = *(v797 + 8);
                        v804 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), *(v797 + 14), v799);
                        if (v804)
                        {
                          v1393 = *v804;
                          v1381 = *(v804 + 8);
                          v1371 = *(v804 + 12);
                        }

                        v1425 = *v803;
                        goto LABEL_1224;
                      }

                      if (v798 != -15137 && v798 != -15136)
                      {
                        goto LABEL_1226;
                      }

                      v805 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), *(v797 + 13), v1528);
                      v1474 = *(v805 + 1);
                      v1501 = *v797;
                      v1450 = *(v797 + 8);
                      v807 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), *(v797 + 14), v799);
                      if (v807)
                      {
                        v1393 = *v807;
                        v1381 = *(v807 + 8);
                        v1371 = *(v807 + 12);
                      }

                      v1425 = *v805;
                      goto LABEL_1220;
                    }

                    if (v798 > -15676)
                    {
                      if (v798 == -15675)
                      {
                        v1345 = *v797;
                        goto LABEL_1226;
                      }

                      if (v798 == -15613)
                      {
                        v805 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), *(v797 + 13), v1528);
                        v1474 = *(v805 + 1);
                        v1501 = *v797;
                        v1450 = *(v797 + 8);
                        v806 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), *(v797 + 14), v799);
                        if (v806)
                        {
                          v1393 = *v806;
                          v1381 = *(v806 + 8);
                          v1371 = *(v806 + 12);
                        }

                        v1352 = *v805;
LABEL_1220:
                        v795 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), v805[24], v799);
                      }
                    }

                    else
                    {
                      if (v798 == -15695)
                      {
                        v803 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), *(v797 + 13), v1528);
                        v1474 = *(v803 + 1);
                        v1501 = *v797;
                        v1450 = *(v797 + 8);
                        v808 = GTTraceFunc_argumentBytesWithMap((v796 + ((HIDWORD(v274) - v274) << 6)), *(v797 + 14), v799);
                        if (v808)
                        {
                          v1393 = *v808;
                          v1381 = *(v808 + 8);
                          v1371 = *(v808 + 12);
                        }

                        v1352 = *v803;
LABEL_1224:
                        v1361 = *(v803 + 2);
                        goto LABEL_1226;
                      }

                      if (v798 == -15676)
                      {
                        goto LABEL_1205;
                      }
                    }

LABEL_1226:
                    v809 = atomic_load((v170 + 4));
                    v810 = v274 + (v809 >> 6);
                    v811 = (HIDWORD(v274) + 1);
                    v274 = (v811 << 32) | v274;
                    if (v811 == v810 - 1)
                    {
                      v274 = (v811 << 32) | v811;
                      v170 = *(v170 + 40);
                    }
                  }

                case 15:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  __src[4] = 0;
                  *__src = 0;
                  ++HIDWORD(v1532);
                  v174 = *(v50 + 32);
                  if (!v174)
                  {
                    v275 = 0;
                    goto LABEL_1231;
                  }

                  v175 = 0;
                  do
                  {
                    v176 = atomic_load((v174 + 4));
                    v177 = v175 + (v176 >> 6) - 1;
                    if (v177 > 0)
                    {
                      v177 = 0;
                      goto LABEL_1230;
                    }

                    v174 = *(v174 + 40);
                    v175 = v177;
                  }

                  while (v174);
                  v175 = v177;
LABEL_1230:
                  v275 = v175 | (v177 << 32);
LABEL_1231:
                  v812 = 0;
                  v1426 = 0;
                  v1451 = 0;
                  v1382 = 0;
                  v1502 = 0;
                  v1372 = 0;
                  LOBYTE(v1475) = 0;
                  v1362 = 0u;
                  v1394 = 0;
                  v1408 = -1;
                  while (1)
                  {
                    if (!v174 || (v813 = v174 + 64, v814 = v174 + 64 + ((HIDWORD(v275) - v275) << 6), (*(v814 + 15) & 8) == 0) || (v368 = *v814, *v814 >= v1525 + v1524))
                    {
                      v712 = apr_palloc(p, 0x58uLL);
                      *v712 = 67;
                      *(v712 + 1) = v812;
                      v712[1] = v1394;
                      v713 = v712 + 1;
                      v712[2] = v1426;
                      v712[3] = v1408;
                      v712[4] = 0;
                      v712[5] = v1451;
                      v712[6] = v1382;
                      v712[7] = v1502;
                      *(v712 + 4) = v1362;
                      *(v712 + 40) = v1372;
                      *(v712 + 82) = v1475;
                      *(v712 + 83) = *__src;
                      *(v712 + 87) = __src[4];
                      goto LABEL_1256;
                    }

                    v815 = *(v814 + 8);
                    if (v815 == -15743)
                    {
                      if (v1524 > v368)
                      {
                        v816 = v1528;
LABEL_1250:
                        v821 = GTTraceFunc_argumentBytesWithMap((v813 + ((HIDWORD(v275) - v275) << 6)), *(v814 + 13), v816);
                        v1502 = GTTraceFunc_argumentBytesWithMap((v813 + ((HIDWORD(v275) - v275) << 6)), v821[8], v816);
                        goto LABEL_1253;
                      }

                      v817 = apr_palloc(p, 0x58uLL);
                      *v817 = 67;
                      *(v817 + 1) = v812;
                      v817[1] = v1394;
                      v817[2] = v1426;
                      v817[3] = v1408;
                      v817[4] = 0;
                      v817[5] = v1451;
                      v817[6] = v1382;
                      v817[7] = v1502;
                      *(v817 + 4) = v1362;
                      *(v817 + 40) = v1372;
                      *(v817 + 82) = v1475;
                      *(v817 + 83) = *__src;
                      *(v817 + 87) = __src[4];
                      v818 = *find_entry(ht, v817 + 8, 8uLL, 0);
                      if (v818)
                      {
                        v818 = *(v818 + 32);
                      }

                      v817[4] = v818;
                      apr_hash_set(ht, v817 + 1, 8, v817);
                      v817[3] = v368;
                      v815 = *(v814 + 8);
                    }

                    else if (v815 == -15742)
                    {
                      if (v1524 > v368)
                      {
                        goto LABEL_1852;
                      }

                      v366 = apr_palloc(p, 0x58uLL);
                      *v366 = 67;
                      *(v366 + 1) = v812;
                      v366[1] = v1394;
                      v367 = v366 + 1;
                      v366[2] = v1426;
                      v366[3] = v1408;
                      v366[4] = 0;
                      v366[5] = v1451;
                      v366[6] = v1382;
                      v366[7] = v1502;
                      *(v366 + 4) = v1362;
                      *(v366 + 40) = v1372;
                      *(v366 + 82) = v1475;
                      *(v366 + 83) = *__src;
                      *(v366 + 87) = __src[4];
                      goto LABEL_1352;
                    }

                    v816 = v1528;
                    if (v815 > -15745)
                    {
                      if (v815 == -15744)
                      {
                        v1475 = *(GTTraceFunc_argumentBytesWithMap((v813 + ((HIDWORD(v275) - v275) << 6)), *(v814 + 13), v1528) + 2);
                        goto LABEL_1253;
                      }

                      if (v815 == -15743)
                      {
                        goto LABEL_1250;
                      }
                    }

                    else if (v815 == -16291)
                    {
                      v1408 = *v814;
                    }

                    else if (v815 == -16075)
                    {
                      v819 = GTTraceFunc_argumentBytesWithMap((v813 + ((HIDWORD(v275) - v275) << 6)), *(v814 + 13), v1528);
                      v1426 = *v814;
                      v812 = *(v814 + 8);
                      v1394 = *(v819 + 1);
                      v1451 = *v819;
                      v1382 = GTTraceFunc_argumentBytesWithMap((v813 + ((HIDWORD(v275) - v275) << 6)), v819[24], v816);
                      v820 = GTTraceFunc_argumentBytesWithMap((v813 + ((HIDWORD(v275) - v275) << 6)), *(v814 + 14), v816);
                      if (v820)
                      {
                        v1372 = *(v820 + 12);
                        v1362 = *(v820 + 8);
                      }
                    }

LABEL_1253:
                    v822 = atomic_load((v174 + 4));
                    v823 = v275 + (v822 >> 6);
                    v824 = (HIDWORD(v275) + 1);
                    v275 = (v824 << 32) | v275;
                    if (v824 == v823 - 1)
                    {
                      v275 = (v824 << 32) | v824;
                      v174 = *(v174 + 40);
                    }
                  }

                case 16:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1533) = v1533 + 1;
                  v216 = *(v50 + 32);
                  if (!v216)
                  {
                    v284 = 0;
                    goto LABEL_1475;
                  }

                  v217 = 0;
                  while (1)
                  {
                    v218 = atomic_load((v216 + 4));
                    v219 = v217 + (v218 >> 6) - 1;
                    if (v219 > 0)
                    {
                      break;
                    }

                    v216 = *(v216 + 40);
                    v217 = v219;
                    if (!v216)
                    {
                      v217 = v219;
                      goto LABEL_1474;
                    }
                  }

                  v219 = 0;
LABEL_1474:
                  v284 = v217 | (v219 << 32);
LABEL_1475:
                  v930 = 0;
                  v931 = 0;
                  v932 = 0;
                  v1480 = 0;
                  v1487 = 0;
                  while (v216)
                  {
                    v933 = v216 + 64;
                    v934 = v216 + 64 + ((HIDWORD(v284) - v284) << 6);
                    if ((*(v934 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v313 = *v934;
                    if (*v934 >= v1525 + v1524)
                    {
                      break;
                    }

                    v935 = *(v934 + 8);
                    if (v935 == -16127)
                    {
                      if (v1524 > v313)
                      {
                        goto LABEL_1852;
                      }

                      v1189 = apr_palloc(p, 0x38uLL);
                      v1232 = v1189;
                      *v1189 = 41;
                      *(v1189 + 1) = v930;
                      *(v1189 + 1) = v931;
                      v1233 = v1189 + 8;
                      *(v1189 + 2) = v932;
                      *(v1189 + 3) = -1;
                      *(v1189 + 4) = 0;
                      *(v1189 + 5) = v1480;
LABEL_1846:
                      *(v1189 + 6) = v1487;
LABEL_1887:
                      v1234 = *find_entry(ht, v1233, 8uLL, 0);
                      if (v1234)
                      {
                        v1234 = *(v1234 + 32);
                      }

                      *(v1232 + 4) = v1234;
                      apr_hash_set(ht, v1233, 8, v1232);
                      *(v1232 + 3) = v313;
                      goto LABEL_1852;
                    }

                    v936 = v1528;
                    if (v935 == -16136)
                    {
                      v938 = GTTraceFunc_argumentBytesWithMap((v933 + ((HIDWORD(v284) - v284) << 6)), *(v934 + 13), v1528);
                      v1487 = GTTraceFunc_argumentBytesWithMap((v933 + ((HIDWORD(v284) - v284) << 6)), v938[8], v936);
                    }

                    else if (v935 == -16128)
                    {
                      v937 = GTTraceFunc_argumentBytesWithMap((v933 + ((HIDWORD(v284) - v284) << 6)), *(v934 + 13), v1528);
                      v932 = *v934;
                      v930 = *(v934 + 8);
                      v931 = *(v937 + 1);
                      v1480 = *v937;
                    }

                    v939 = atomic_load((v216 + 4));
                    v940 = v284 + (v939 >> 6);
                    v941 = (HIDWORD(v284) + 1);
                    v284 = (v941 << 32) | v284;
                    if (v941 == v940 - 1)
                    {
                      v284 = (v941 << 32) | v941;
                      v216 = *(v216 + 40);
                    }
                  }

                  v325 = apr_palloc(p, 0x38uLL);
                  v304 = v325;
                  *v325 = 41;
                  *(v325 + 1) = v930;
                  *(v325 + 1) = v931;
                  v305 = v325 + 8;
                  v306 = -1;
                  *(v325 + 2) = v932;
                  *(v325 + 3) = -1;
                  *(v325 + 4) = 0;
                  *(v325 + 5) = v1480;
                  goto LABEL_1487;
                case 17:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD1(v1533);
                  v208 = *(v50 + 32);
                  if (!v208)
                  {
                    v282 = 0;
                    goto LABEL_1428;
                  }

                  v209 = 0;
                  do
                  {
                    v210 = atomic_load((v208 + 4));
                    v211 = v209 + (v210 >> 6) - 1;
                    if (v211 > 0)
                    {
                      v211 = 0;
                      goto LABEL_1427;
                    }

                    v208 = *(v208 + 40);
                    v209 = v211;
                  }

                  while (v208);
                  v209 = v211;
LABEL_1427:
                  v282 = v209 | (v211 << 32);
LABEL_1428:
                  v909 = 0;
                  v1411 = 0;
                  v1430 = 0;
                  v1455 = 0;
                  v1506 = 0;
                  v1479 = -1;
                  while (1)
                  {
                    if (!v208 || (v910 = v208 + 64, v911 = v208 + 64 + ((HIDWORD(v282) - v282) << 6), (*(v911 + 15) & 8) == 0) || (v899 = *v911, *v911 >= v1525 + v1524))
                    {
                      v907 = apr_palloc(p, 0x38uLL);
                      v339 = v907;
                      *v907 = 38;
                      *(v907 + 1) = v909;
                      *(v907 + 1) = v1411;
                      v340 = v907 + 8;
                      *(v907 + 2) = v1430;
                      *(v907 + 3) = v1479;
                      *(v907 + 4) = 0;
                      *(v907 + 5) = v1455;
                      v908 = v1506;
                      goto LABEL_1449;
                    }

                    v912 = *(v911 + 8);
                    if (v912 == -15880)
                    {
                      if (v1524 > v899)
                      {
                        v913 = v1528;
LABEL_1444:
                        v917 = GTTraceFunc_argumentBytesWithMap((v910 + ((HIDWORD(v282) - v282) << 6)), *(v911 + 13), v913);
                        v1506 = GTTraceFunc_argumentBytesWithMap((v910 + ((HIDWORD(v282) - v282) << 6)), v917[8], v913);
                        goto LABEL_1446;
                      }

                      v914 = apr_palloc(p, 0x38uLL);
                      *v914 = 38;
                      *(v914 + 1) = v909;
                      v914[1] = v1411;
                      v914[2] = v1430;
                      v914[3] = v1479;
                      v914[4] = 0;
                      v914[5] = v1455;
                      v914[6] = v1506;
                      v915 = *find_entry(ht, v914 + 8, 8uLL, 0);
                      if (v915)
                      {
                        v915 = *(v915 + 32);
                      }

                      v914[4] = v915;
                      apr_hash_set(ht, v914 + 1, 8, v914);
                      v914[3] = v899;
                      v912 = *(v911 + 8);
                    }

                    else if (v912 == -15879)
                    {
                      if (v1524 > v899)
                      {
                        goto LABEL_1852;
                      }

                      v1209 = apr_palloc(p, 0x38uLL);
                      v1210 = v1209;
                      *v1209 = 38;
                      *(v1209 + 1) = v909;
                      *(v1209 + 1) = v1411;
                      v1211 = v1209 + 8;
                      *(v1209 + 2) = v1430;
                      *(v1209 + 3) = v1479;
                      *(v1209 + 4) = 0;
                      *(v1209 + 5) = v1455;
                      v1212 = v1506;
                      goto LABEL_1873;
                    }

                    if (v912 == -15879)
                    {
                      v1479 = *v911;
                      goto LABEL_1446;
                    }

                    v913 = v1528;
                    if (v912 == -15880)
                    {
                      goto LABEL_1444;
                    }

                    if (v912 == -15997)
                    {
                      v916 = GTTraceFunc_argumentBytesWithMap((v910 + ((HIDWORD(v282) - v282) << 6)), *(v911 + 13), v1528);
                      v909 = *(v911 + 8);
                      v1411 = *(v916 + 1);
                      v1430 = *v911;
                      v1455 = *v916;
                    }

LABEL_1446:
                    v918 = atomic_load((v208 + 4));
                    v919 = v282 + (v918 >> 6);
                    v920 = (HIDWORD(v282) + 1);
                    v282 = (v920 << 32) | v282;
                    if (v920 == v919 - 1)
                    {
                      v282 = (v920 << 32) | v920;
                      v208 = *(v208 + 40);
                    }
                  }

                case 18:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1533);
                  v82 = *(v50 + 32);
                  if (!v82)
                  {
                    v253 = 0;
                    goto LABEL_477;
                  }

                  v83 = 0;
                  do
                  {
                    v84 = atomic_load((v82 + 4));
                    v85 = v83 + (v84 >> 6) - 1;
                    if (v85 > 0)
                    {
                      v85 = 0;
                      goto LABEL_476;
                    }

                    v82 = *(v82 + 40);
                    v83 = v85;
                  }

                  while (v82);
                  v83 = v85;
LABEL_476:
                  v253 = v83 | (v85 << 32);
LABEL_477:
                  v369 = 0;
                  v1398 = 0;
                  v1416 = 0;
                  v1462 = 0;
                  v1436 = 0;
                  v1491 = 0;
                  v1386 = 0;
                  v1364 = -1;
                  v1374 = 0;
                  while (1)
                  {
                    if (!v82 || (v370 = v82 + 64, v371 = v82 + 64 + ((HIDWORD(v253) - v253) << 6), (*(v371 + 15) & 8) == 0) || (v306 = *v371, *v371 >= v1525 + v1524))
                    {
                      v339 = apr_palloc(p, 0x50uLL);
                      *v339 = 76;
                      *(v339 + 1) = v369;
                      *(v339 + 1) = v1398;
                      v340 = v339 + 8;
                      *(v339 + 2) = v1462;
                      *(v339 + 3) = v1364;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1416;
                      *(v339 + 6) = v1374;
                      *(v339 + 7) = v1436;
                      *(v339 + 8) = v1491;
                      *(v339 + 9) = v1386;
                      goto LABEL_1562;
                    }

                    v372 = *(v371 + 8);
                    if ((v372 + 15975) >= 2)
                    {
                      if (v372 == -15973)
                      {
                        if (v1524 > v306)
                        {
                          goto LABEL_1852;
                        }

                        v304 = apr_palloc(p, 0x50uLL);
                        *v304 = 76;
                        *(v304 + 1) = v369;
                        *(v304 + 1) = v1398;
                        v305 = v304 + 8;
                        *(v304 + 2) = v1462;
                        *(v304 + 3) = v1364;
                        *(v304 + 4) = 0;
                        *(v304 + 5) = v1416;
                        *(v304 + 6) = v1374;
                        *(v304 + 7) = v1436;
                        *(v304 + 8) = v1491;
                        *(v304 + 9) = v1386;
                        goto LABEL_1849;
                      }
                    }

                    else if (v1524 <= v306)
                    {
                      v373 = apr_palloc(p, 0x50uLL);
                      *v373 = 76;
                      *(v373 + 1) = v369;
                      v373[1] = v1398;
                      v373[2] = v1462;
                      v373[3] = v1364;
                      v373[4] = 0;
                      v373[5] = v1416;
                      v373[6] = v1374;
                      v373[7] = v1436;
                      v373[8] = v1491;
                      v373[9] = v1386;
                      v374 = *find_entry(ht, v373 + 8, 8uLL, 0);
                      if (v374)
                      {
                        v374 = *(v374 + 32);
                      }

                      v373[4] = v374;
                      apr_hash_set(ht, v373 + 1, 8, v373);
                      v373[3] = v306;
                      v372 = *(v371 + 8);
                    }

                    v375 = v1528;
                    if (v372 <= -15974)
                    {
                      switch(v372)
                      {
                        case -15996:
                          v379 = GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1528);
                          v1491 = 0;
                          v1462 = *v371;
                          v369 = *(v371 + 8);
                          v1398 = *(v379 + 1);
                          v1416 = *v379;
                          v1436 = *(v379 + 2);
                          v1386 = *(v379 + 6);
                          break;
                        case -15975:
                          v377 = *(GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1528) + 1);
                          goto LABEL_503;
                        case -15974:
                          v378 = GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1528);
                          v1374 = GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), v378[8], v375);
                          break;
                      }
                    }

                    else if (v372 > -15910)
                    {
                      if (v372 == -15909)
                      {
                        v380 = GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1528);
                        v1462 = *v371;
                        v369 = *(v371 + 8);
                        v1398 = *(v380 + 1);
                        v1416 = *v380;
                        v1386 = *(v380 + 8);
                        v377 = *(v380 + 3);
                        v1436 = *(v380 + 2);
                        goto LABEL_503;
                      }

                      if (v372 == -15907)
                      {
                        v1436 = *(GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1528) + 1);
                      }
                    }

                    else if (v372 == -15973)
                    {
                      v1364 = *v371;
                    }

                    else if (v372 == -15912)
                    {
                      v376 = GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1528);
                      v1462 = *v371;
                      v369 = *(v371 + 8);
                      v1398 = *(v376 + 1);
                      v1416 = *v376;
                      v1386 = *(v376 + 6);
                      v377 = *(v376 + 2);
LABEL_503:
                      v1491 = v377;
                    }

                    v381 = atomic_load((v82 + 4));
                    v382 = v253 + (v381 >> 6);
                    v383 = (HIDWORD(v253) + 1);
                    v253 = (v383 << 32) | v253;
                    if (v383 == v382 - 1)
                    {
                      v253 = (v383 << 32) | v383;
                      v82 = *(v82 + 40);
                    }
                  }

                case 19:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  *__src = 0;
                  ++HIDWORD(v1533);
                  v126 = *(v50 + 32);
                  if (!v126)
                  {
                    v264 = 0;
                    goto LABEL_798;
                  }

                  v127 = 0;
                  while (1)
                  {
                    v128 = atomic_load((v126 + 4));
                    v129 = v127 + (v128 >> 6) - 1;
                    if (v129 > 0)
                    {
                      break;
                    }

                    v126 = *(v126 + 40);
                    v127 = v129;
                    if (!v126)
                    {
                      v127 = v129;
                      goto LABEL_797;
                    }
                  }

                  v129 = 0;
LABEL_797:
                  v264 = v127 | (v129 << 32);
LABEL_798:
                  v599 = 0;
                  v1389 = 0;
                  v1401 = 0;
                  v1420 = 0;
                  v1444 = 0;
                  v1495 = 0;
                  v1468 = -1;
                  while (v126)
                  {
                    v600 = v126 + 64;
                    v601 = v126 + 64 + ((HIDWORD(v264) - v264) << 6);
                    if ((*(v601 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v306 = *v601;
                    if (*v601 >= v1525 + v1524)
                    {
                      break;
                    }

                    v602 = *(v601 + 8);
                    if ((v602 + 15491) >= 2)
                    {
                      if (v602 == -15489)
                      {
                        if (v1524 > v306)
                        {
                          goto LABEL_1852;
                        }

                        v304 = apr_palloc(p, 0x50uLL);
                        *v304 = 61;
                        *(v304 + 1) = v599;
                        *(v304 + 1) = v1389;
                        v305 = v304 + 8;
                        *(v304 + 2) = v1401;
                        *(v304 + 3) = v1468;
                        *(v304 + 4) = 0;
                        *(v304 + 5) = v1420;
                        *(v304 + 6) = v1444;
                        *(v304 + 7) = 0;
                        v1235 = *__src;
                        *(v304 + 8) = v1495;
                        *(v304 + 9) = v1235;
                        goto LABEL_1849;
                      }
                    }

                    else if (v1524 <= v306)
                    {
                      v603 = apr_palloc(p, 0x50uLL);
                      *v603 = 61;
                      *(v603 + 1) = v599;
                      v603[1] = v1389;
                      v603[2] = v1401;
                      v603[3] = v1468;
                      v603[4] = 0;
                      v603[5] = v1420;
                      v603[6] = v1444;
                      v603[7] = 0;
                      v604 = *__src;
                      v603[8] = v1495;
                      v603[9] = v604;
                      v605 = *find_entry(ht, v603 + 8, 8uLL, 0);
                      if (v605)
                      {
                        v605 = *(v605 + 32);
                      }

                      v603[4] = v605;
                      apr_hash_set(ht, v603 + 1, 8, v603);
                      v603[3] = v306;
                      v602 = *(v601 + 8);
                    }

                    v606 = v1528;
                    if (v602 > -15491)
                    {
                      if (v602 == -15490)
                      {
                        v1495 = *(GTTraceFunc_argumentBytesWithMap((v600 + ((HIDWORD(v264) - v264) << 6)), *(v601 + 13), v1528) + 1);
                      }

                      else if (v602 == -15489)
                      {
                        v1468 = *v601;
                      }
                    }

                    else if (v602 == -15496)
                    {
                      v608 = GTTraceFunc_argumentBytesWithMap((v600 + ((HIDWORD(v264) - v264) << 6)), *(v601 + 13), v1528);
                      v1495 = 0;
                      v599 = *(v601 + 8);
                      v1389 = *(v608 + 1);
                      v1401 = *v601;
                      v1420 = *v608;
                    }

                    else if (v602 == -15491)
                    {
                      v607 = GTTraceFunc_argumentBytesWithMap((v600 + ((HIDWORD(v264) - v264) << 6)), *(v601 + 13), v1528);
                      v1444 = GTTraceFunc_argumentBytesWithMap((v600 + ((HIDWORD(v264) - v264) << 6)), v607[8], v606);
                    }

                    v609 = atomic_load((v126 + 4));
                    v610 = v264 + (v609 >> 6);
                    v611 = (HIDWORD(v264) + 1);
                    v264 = (v611 << 32) | v264;
                    if (v611 == v610 - 1)
                    {
                      v264 = (v611 << 32) | v611;
                      v126 = *(v126 + 40);
                    }
                  }

                  v339 = apr_palloc(p, 0x50uLL);
                  *v339 = 61;
                  *(v339 + 1) = v599;
                  *(v339 + 1) = v1389;
                  v340 = v339 + 8;
                  *(v339 + 2) = v1401;
                  *(v339 + 3) = v1468;
                  *(v339 + 4) = 0;
                  *(v339 + 5) = v1420;
                  *(v339 + 6) = v1444;
                  *(v339 + 7) = 0;
                  v612 = *__src;
                  *(v339 + 8) = v1495;
                  *(v339 + 9) = v612;
                  goto LABEL_1562;
                case 20:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1534) = v1534 + 1;
                  v224 = *(v50 + 32);
                  if (!v224)
                  {
                    v286 = 0;
                    goto LABEL_1513;
                  }

                  v225 = 0;
                  while (1)
                  {
                    v226 = atomic_load((v224 + 4));
                    v227 = v225 + (v226 >> 6) - 1;
                    if (v227 > 0)
                    {
                      break;
                    }

                    v224 = *(v224 + 40);
                    v225 = v227;
                    if (!v224)
                    {
                      v225 = v227;
                      goto LABEL_1512;
                    }
                  }

                  v227 = 0;
LABEL_1512:
                  v286 = v225 | (v227 << 32);
LABEL_1513:
                  v384 = 0;
                  v385 = 0;
                  v1463 = 0;
                  v1485 = 0;
                  v342 = 0;
                  while (v224)
                  {
                    v950 = v224 + 64;
                    v951 = v224 + 64 + ((HIDWORD(v286) - v286) << 6);
                    if ((*(v951 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v388 = *v951;
                    if (*v951 >= v1525 + v1524)
                    {
                      break;
                    }

                    v952 = *(v951 + 8);
                    if (v952 == -15891)
                    {
                      v953 = v1528;
                      v954 = GTTraceFunc_argumentBytesWithMap((v950 + ((HIDWORD(v286) - v286) << 6)), *(v951 + 13), v1528);
                      v1463 = *v951;
                      v384 = *(v951 + 8);
                      v385 = *(v954 + 1);
                      v1485 = *v954;
                      v342 = GTTraceFunc_argumentBytesWithMap((v950 + ((HIDWORD(v286) - v286) << 6)), v954[16], v953);
                    }

                    else if (v952 == -15893)
                    {
                      if (v1524 > v388)
                      {
                        goto LABEL_1852;
                      }

                      v1214 = apr_palloc(p, 0x38uLL);
                      v1215 = v1214;
                      v1216 = 64;
LABEL_1878:
                      *v1214 = v1216;
                      *(v1214 + 1) = v384;
                      *(v1214 + 1) = v385;
                      v1220 = v1214 + 8;
                      *(v1214 + 2) = v1463;
                      *(v1214 + 3) = -1;
                      *(v1214 + 4) = 0;
                      *(v1214 + 5) = v1485;
                      *(v1214 + 6) = v342;
LABEL_1879:
                      v1229 = *find_entry(ht, v1220, 8uLL, 0);
                      if (v1229)
                      {
                        v1229 = *(v1229 + 32);
                      }

                      *(v1215 + 4) = v1229;
                      apr_hash_set(ht, v1220, 8, v1215);
                      *(v1215 + 3) = v388;
                      goto LABEL_1852;
                    }

                    v955 = atomic_load((v224 + 4));
                    v956 = v286 + (v955 >> 6);
                    v957 = (HIDWORD(v286) + 1);
                    v286 = (v957 << 32) | v286;
                    if (v957 == v956 - 1)
                    {
                      v286 = (v957 << 32) | v957;
                      v224 = *(v224 + 40);
                    }
                  }

                  v353 = apr_palloc(p, 0x38uLL);
                  v304 = v353;
                  v395 = 64;
                  goto LABEL_1524;
                case 21:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD1(v1534);
                  v86 = *(v50 + 32);
                  v1485 = v1523;
                  if (!v86)
                  {
                    v254 = 0;
                    goto LABEL_509;
                  }

                  v87 = 0;
                  do
                  {
                    v88 = atomic_load((v86 + 4));
                    v89 = v87 + (v88 >> 6) - 1;
                    if (v89 > 0)
                    {
                      v89 = 0;
                      goto LABEL_508;
                    }

                    v86 = *(v86 + 40);
                    v87 = v89;
                  }

                  while (v86);
                  v87 = v89;
LABEL_508:
                  v254 = v87 | (v89 << 32);
LABEL_509:
                  v384 = 0;
                  v385 = 0;
                  v1463 = 0;
                  v342 = 0;
                  while (v86)
                  {
                    v386 = v86 + 64;
                    v387 = v86 + 64 + ((HIDWORD(v254) - v254) << 6);
                    if ((*(v387 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v388 = *v387;
                    if (*v387 >= v1525 + v1524)
                    {
                      break;
                    }

                    v389 = *(v387 + 8);
                    if (v389 == -15848)
                    {
                      v390 = v1528;
                      v391 = GTTraceFunc_argumentBytesWithMap((v386 + ((HIDWORD(v254) - v254) << 6)), *(v387 + 13), v1528);
                      v1463 = *v387;
                      v384 = *(v387 + 8);
                      v385 = *(v391 + 1);
                      v1485 = *v391;
                      v342 = GTTraceFunc_argumentBytesWithMap((v386 + ((HIDWORD(v254) - v254) << 6)), v391[24], v390);
                    }

                    else if (v389 == -15867)
                    {
                      if (v1524 > v388)
                      {
                        goto LABEL_1852;
                      }

                      v1214 = apr_palloc(p, 0x38uLL);
                      v1215 = v1214;
                      v1216 = 31;
                      goto LABEL_1878;
                    }

                    v392 = atomic_load((v86 + 4));
                    v393 = v254 + (v392 >> 6);
                    v394 = (HIDWORD(v254) + 1);
                    v254 = (v394 << 32) | v254;
                    if (v394 == v393 - 1)
                    {
                      v254 = (v394 << 32) | v394;
                      v86 = *(v86 + 40);
                    }
                  }

                  v353 = apr_palloc(p, 0x38uLL);
                  v304 = v353;
                  v395 = 31;
LABEL_1524:
                  *v353 = v395;
                  *(v353 + 1) = v384;
                  *(v353 + 1) = v385;
                  v305 = v353 + 8;
                  v306 = -1;
                  *(v353 + 2) = v1463;
                  *(v353 + 3) = -1;
                  *(v353 + 4) = 0;
                  *(v353 + 5) = v1485;
                  goto LABEL_1578;
                case 22:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  v1547 = 0;
                  *__src = -1;
                  ++DWORD2(v1534);
                  v118 = *(v50 + 32);
                  if (!v118)
                  {
                    v262 = 0;
                    goto LABEL_762;
                  }

                  v119 = 0;
                  while (1)
                  {
                    v120 = atomic_load((v118 + 4));
                    v121 = v119 + (v120 >> 6) - 1;
                    if (v121 > 0)
                    {
                      break;
                    }

                    v118 = *(v118 + 40);
                    v119 = v121;
                    if (!v118)
                    {
                      v119 = v121;
                      goto LABEL_761;
                    }
                  }

                  v121 = 0;
LABEL_761:
                  v262 = v119 | (v121 << 32);
LABEL_762:
                  v451 = 0;
                  v452 = 0;
                  v453 = 0;
                  v578 = 0;
                  while (v118)
                  {
                    v579 = v118 + 64 + ((HIDWORD(v262) - v262) << 6);
                    if ((*(v579 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v456 = *v579;
                    if (*v579 >= v1525 + v1524)
                    {
                      break;
                    }

                    v580 = *(v579 + 8);
                    if (v580 == -15922)
                    {
                      v581 = GTTraceFunc_argumentBytesWithMap((v118 + 64 + ((HIDWORD(v262) - v262) << 6)), *(v579 + 13), v1528);
                      v452 = *(v581 + 1);
                      v451 = *(v579 + 8);
                      v453 = *v579;
                      v578 = *v581;
                      v1547 = *(v581 + 2);
                    }

                    else if (v580 == -15957)
                    {
                      if (v1524 > v456)
                      {
                        goto LABEL_1852;
                      }

                      v1221 = v578;
                      v1222 = apr_palloc(p, 0x38uLL);
                      v1223 = v1222;
                      v1224 = 59;
                      goto LABEL_1866;
                    }

                    v582 = atomic_load((v118 + 4));
                    v583 = v262 + (v582 >> 6);
                    v584 = (HIDWORD(v262) + 1);
                    v262 = (v584 << 32) | v262;
                    if (v584 == v583 - 1)
                    {
                      v262 = (v584 << 32) | v584;
                      v118 = *(v118 + 40);
                    }
                  }

                  v462 = v578;
                  v463 = apr_palloc(p, 0x38uLL);
                  v464 = v463;
                  v465 = 59;
                  goto LABEL_773;
                case 23:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  v1547 = 0;
                  *__src = -1;
                  ++HIDWORD(v1534);
                  v98 = *(v50 + 32);
                  if (!v98)
                  {
                    v257 = 0;
                    goto LABEL_635;
                  }

                  v99 = 0;
                  do
                  {
                    v100 = atomic_load((v98 + 4));
                    v101 = v99 + (v100 >> 6) - 1;
                    if (v101 > 0)
                    {
                      v101 = 0;
                      goto LABEL_634;
                    }

                    v98 = *(v98 + 40);
                    v99 = v101;
                  }

                  while (v98);
                  v99 = v101;
LABEL_634:
                  v257 = v99 | (v101 << 32);
LABEL_635:
                  v451 = 0;
                  v452 = 0;
                  v453 = 0;
                  v454 = 0;
                  while (v98)
                  {
                    v455 = v98 + 64 + ((HIDWORD(v257) - v257) << 6);
                    if ((*(v455 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v456 = *v455;
                    if (*v455 >= v1525 + v1524)
                    {
                      break;
                    }

                    v457 = *(v455 + 8);
                    if (v457 == -15921)
                    {
                      v458 = GTTraceFunc_argumentBytesWithMap((v98 + 64 + ((HIDWORD(v257) - v257) << 6)), *(v455 + 13), v1528);
                      v452 = *(v458 + 1);
                      v451 = *(v455 + 8);
                      v453 = *v455;
                      v454 = *v458;
                      v1547 = *(v458 + 2);
                    }

                    else if (v457 == -15935)
                    {
                      if (v1524 > v456)
                      {
                        goto LABEL_1852;
                      }

                      v1221 = v454;
                      v1222 = apr_palloc(p, 0x38uLL);
                      v1223 = v1222;
                      v1224 = 58;
LABEL_1866:
                      *v1222 = v1224;
                      *(v1222 + 1) = v451;
                      v1222[1] = v452;
                      v1225 = v1222 + 1;
                      v1226 = *__src;
                      v1222[2] = v453;
                      v1222[3] = v1226;
                      v1222[4] = 0;
                      v1222[5] = v1221;
                      v1222[6] = v1547;
                      v1227 = *find_entry(ht, v1222 + 8, 8uLL, 0);
                      if (v1227)
                      {
                        v1227 = *(v1227 + 32);
                      }

                      v1223[4] = v1227;
                      apr_hash_set(ht, v1225, 8, v1223);
                      v1223[3] = v456;
                      goto LABEL_1852;
                    }

                    v459 = atomic_load((v98 + 4));
                    v460 = v257 + (v459 >> 6);
                    v461 = (HIDWORD(v257) + 1);
                    v257 = (v461 << 32) | v257;
                    if (v461 == v460 - 1)
                    {
                      v257 = (v461 << 32) | v461;
                      v98 = *(v98 + 40);
                    }
                  }

                  v462 = v454;
                  v463 = apr_palloc(p, 0x38uLL);
                  v464 = v463;
                  v465 = 58;
LABEL_773:
                  *v463 = v465;
                  *(v463 + 1) = v451;
                  *(v463 + 1) = v452;
                  v585 = v463 + 8;
                  v586 = *__src;
                  *(v463 + 2) = v453;
                  *(v463 + 3) = v586;
                  *(v463 + 4) = 0;
                  *(v463 + 5) = v462;
                  *(v463 + 6) = v1547;
                  v587 = *find_entry(ht, v463 + 8, 8uLL, 0);
                  if (v587)
                  {
                    v587 = *(v587 + 32);
                  }

                  v464[4] = v587;
                  v588 = ht;
                  v589 = v585;
                  goto LABEL_965;
                case 24:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  __src[2] = 0;
                  *__src = 0;
                  LODWORD(v1535) = v1535 + 1;
                  v148 = *(v50 + 32);
                  if (!v148)
                  {
                    v269 = 0;
                    goto LABEL_1013;
                  }

                  v149 = 0;
                  do
                  {
                    v150 = atomic_load((v148 + 4));
                    v151 = v149 + (v150 >> 6) - 1;
                    if (v151 > 0)
                    {
                      v151 = 0;
                      goto LABEL_1012;
                    }

                    v148 = *(v148 + 40);
                    v149 = v151;
                  }

                  while (v148);
                  v149 = v151;
LABEL_1012:
                  v269 = v149 | (v151 << 32);
LABEL_1013:
                  v696 = 0;
                  v1447 = 0;
                  v1498 = 0;
                  v1471 = 0;
                  v1343 = 0;
                  v1350 = 0;
                  v1422 = 0;
                  v1359 = 0;
                  LOBYTE(v1369) = 0;
                  LOBYTE(v1379) = 0;
                  v1404 = 3;
                  v1391 = 1;
                  v1333 = -1;
                  LOBYTE(v1338) = 1;
                  while (1)
                  {
                    if (!v148 || (v697 = v148 + 64, v698 = v148 + 64 + ((HIDWORD(v269) - v269) << 6), (*(v698 + 15) & 8) == 0) || (v368 = *v698, *v698 >= v1525 + v1524))
                    {
                      v712 = apr_palloc(p, 0x50uLL);
                      *v712 = 27;
                      *(v712 + 1) = v696;
                      v712[1] = v1447;
                      v713 = v712 + 1;
                      v712[2] = v1498;
                      v712[3] = v1333;
                      v712[4] = 0;
                      v712[5] = v1471;
                      v712[6] = v1350;
                      v712[7] = v1343;
                      *(v712 + 16) = v1422;
                      *(v712 + 17) = v1359;
                      *(v712 + 72) = v1391;
                      *(v712 + 73) = v1404;
                      *(v712 + 74) = v1369;
                      *(v712 + 75) = v1379;
                      *(v712 + 76) = v1338;
                      v714 = *__src;
                      *(v712 + 79) = __src[2];
                      *(v712 + 77) = v714;
LABEL_1256:
                      v825 = *find_entry(ht, v713, 8uLL, 0);
                      if (v825)
                      {
                        v825 = *(v825 + 32);
                      }

                      v712[4] = v825;
                      apr_hash_set(ht, v713, 8, v712);
                      v712[3] = -1;
                      goto LABEL_1852;
                    }

                    v699 = *(v698 + 8);
                    if ((v699 + 16349) >= 5)
                    {
                      if (v699 == -16344)
                      {
                        if (v1524 > v368)
                        {
                          goto LABEL_1852;
                        }

                        v366 = apr_palloc(p, 0x50uLL);
                        *v366 = 27;
                        *(v366 + 1) = v696;
                        v366[1] = v1447;
                        v367 = v366 + 1;
                        v366[2] = v1498;
                        v366[3] = v1333;
                        v366[4] = 0;
                        v366[5] = v1471;
                        v366[6] = v1350;
                        v366[7] = v1343;
                        *(v366 + 16) = v1422;
                        *(v366 + 17) = v1359;
                        *(v366 + 72) = v1391;
                        *(v366 + 73) = v1404;
                        *(v366 + 74) = v1369;
                        *(v366 + 75) = v1379;
                        *(v366 + 76) = v1338;
                        v1278 = *__src;
                        *(v366 + 79) = __src[2];
                        *(v366 + 77) = v1278;
                        goto LABEL_1352;
                      }
                    }

                    else if (v1524 <= v368)
                    {
                      v700 = apr_palloc(p, 0x50uLL);
                      *v700 = 27;
                      *(v700 + 1) = v696;
                      v700[1] = v1447;
                      v700[2] = v1498;
                      v700[3] = v1333;
                      v700[4] = 0;
                      v700[5] = v1471;
                      v700[6] = v1350;
                      v700[7] = v1343;
                      *(v700 + 16) = v1422;
                      *(v700 + 17) = v1359;
                      *(v700 + 72) = v1391;
                      *(v700 + 73) = v1404;
                      *(v700 + 74) = v1369;
                      *(v700 + 75) = v1379;
                      *(v700 + 76) = v1338;
                      v701 = *__src;
                      *(v700 + 79) = __src[2];
                      *(v700 + 77) = v701;
                      v702 = *find_entry(ht, v700 + 8, 8uLL, 0);
                      if (v702)
                      {
                        v702 = *(v702 + 32);
                      }

                      v700[4] = v702;
                      apr_hash_set(ht, v700 + 1, 8, v700);
                      v700[3] = v368;
                      v699 = *(v698 + 8);
                    }

                    v703 = v1528;
                    if (v699 <= -16317)
                    {
                      if (v699 > -16347)
                      {
                        switch(v699)
                        {
                          case -16346:
                            v1338 = *(GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), *(v698 + 13), v1528) + 2);
                            break;
                          case -16345:
                            v1369 = *(GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), *(v698 + 13), v1528) + 2);
                            break;
                          case -16344:
                            v1333 = *v698;
                            break;
                        }
                      }

                      else
                      {
                        switch(v699)
                        {
                          case -16349:
                            v708 = GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), *(v698 + 13), v1528);
                            v1350 = GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), v708[8], v703);
                            break;
                          case -16348:
                            v1359 = *(GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), *(v698 + 13), v1528) + 2);
                            break;
                          case -16347:
                            v1379 = *(GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), *(v698 + 13), v1528) + 2);
                            break;
                        }
                      }
                    }

                    else if (v699 <= -15810)
                    {
                      switch(v699)
                      {
                        case -16316:
                          v706 = GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), *(v698 + 13), v1528);
                          v1498 = *v698;
                          v696 = *(v698 + 8);
                          v1447 = *(v706 + 1);
                          v1471 = *v706;
                          v705 = 64;
                          goto LABEL_1047;
                        case -16315:
                          v707 = GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), *(v698 + 13), v1528);
                          v1498 = *v698;
                          v696 = *(v698 + 8);
                          v1447 = *(v707 + 1);
                          v1471 = *v707;
                          v705 = *(v707 + 4);
                          goto LABEL_1047;
                        case -16165:
                          v704 = GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), *(v698 + 13), v1528);
                          v1498 = *v698;
                          v696 = *(v698 + 8);
                          v1447 = *(v704 + 1);
                          v1471 = *v704;
                          v1343 = GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), v704[16], v703);
                          v705 = *v1343;
LABEL_1047:
                          v1422 = v705;
                          break;
                      }
                    }

                    else if (v699 > -15807)
                    {
                      if (v699 == -15806 || v699 == -15805)
                      {
                        v1391 = GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), *(v698 + 13), v1528)[8];
                      }
                    }

                    else if (v699 == -15809 || v699 == -15808)
                    {
                      v1404 = GTTraceFunc_argumentBytesWithMap((v697 + ((HIDWORD(v269) - v269) << 6)), *(v698 + 13), v1528)[8];
                    }

                    v709 = atomic_load((v148 + 4));
                    v710 = v269 + (v709 >> 6);
                    v711 = (HIDWORD(v269) + 1);
                    v269 = (v711 << 32) | v269;
                    if (v711 == v710 - 1)
                    {
                      v269 = (v711 << 32) | v711;
                      v148 = *(v148 + 40);
                    }
                  }

                case 25:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD1(v1535);
                  v94 = *(v50 + 32);
                  if (!v94)
                  {
                    v256 = 0;
                    goto LABEL_622;
                  }

                  v95 = 0;
                  while (1)
                  {
                    v96 = atomic_load((v94 + 4));
                    v97 = v95 + (v96 >> 6) - 1;
                    if (v97 > 0)
                    {
                      break;
                    }

                    v94 = *(v94 + 40);
                    v95 = v97;
                    if (!v94)
                    {
                      v95 = v97;
                      goto LABEL_621;
                    }
                  }

                  v97 = 0;
LABEL_621:
                  v256 = v95 | (v97 << 32);
LABEL_622:
                  v440 = 0;
                  v441 = 0;
                  v1465 = 0;
                  v1492 = 0;
                  v442 = 0;
                  while (v94)
                  {
                    v443 = v94 + 64;
                    v444 = v94 + 64 + ((HIDWORD(v256) - v256) << 6);
                    if ((*(v444 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v388 = *v444;
                    if (*v444 >= v1525 + v1524)
                    {
                      break;
                    }

                    v445 = *(v444 + 8);
                    if (v445 == -15350)
                    {
                      v446 = v1528;
                      v447 = GTTraceFunc_argumentBytesWithMap((v443 + ((HIDWORD(v256) - v256) << 6)), *(v444 + 13), v1528);
                      v1465 = *v444;
                      v440 = *(v444 + 8);
                      v441 = *(v447 + 1);
                      v1492 = *v447;
                      v442 = GTTraceFunc_argumentBytesWithMap((v443 + ((HIDWORD(v256) - v256) << 6)), v447[24], v446);
                    }

                    else if (v445 == -15332)
                    {
                      if (v1524 > v388)
                      {
                        goto LABEL_1852;
                      }

                      v1215 = apr_palloc(p, 0x40uLL);
                      *v1215 = 52;
                      v1215[1] = v440;
                      *(v1215 + 1) = v441;
                      v1220 = v1215 + 2;
                      *(v1215 + 2) = v1465;
                      *(v1215 + 3) = -1;
                      *(v1215 + 4) = 0;
                      *(v1215 + 5) = v1492;
                      *(v1215 + 6) = 0;
                      *(v1215 + 7) = v442;
                      goto LABEL_1879;
                    }

                    v448 = atomic_load((v94 + 4));
                    v449 = v256 + (v448 >> 6);
                    v450 = (HIDWORD(v256) + 1);
                    v256 = (v450 << 32) | v256;
                    if (v450 == v449 - 1)
                    {
                      v256 = (v450 << 32) | v450;
                      v94 = *(v94 + 40);
                    }
                  }

                  v304 = apr_palloc(p, 0x40uLL);
                  *v304 = 52;
                  *(v304 + 1) = v440;
                  *(v304 + 1) = v441;
                  v305 = v304 + 8;
                  v306 = -1;
                  *(v304 + 2) = v1465;
                  *(v304 + 3) = -1;
                  *(v304 + 4) = 0;
                  *(v304 + 5) = v1492;
                  *(v304 + 6) = 0;
                  *(v304 + 7) = v442;
                  goto LABEL_1849;
                case 26:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  __src[2] = 0;
                  *__src = 0;
                  ++DWORD2(v1535);
                  v232 = *(v50 + 32);
                  if (!v232)
                  {
                    v288 = 0;
                    goto LABEL_1540;
                  }

                  v233 = 0;
                  while (1)
                  {
                    v234 = atomic_load((v232 + 4));
                    v235 = v233 + (v234 >> 6) - 1;
                    if (v235 > 0)
                    {
                      break;
                    }

                    v232 = *(v232 + 40);
                    v233 = v235;
                    if (!v232)
                    {
                      v233 = v235;
                      goto LABEL_1539;
                    }
                  }

                  v235 = 0;
LABEL_1539:
                  v288 = v233 | (v235 << 32);
LABEL_1540:
                  v971 = 0;
                  v1431 = 0;
                  v1456 = 0;
                  v1508 = 0;
                  v972 = 0;
                  v1412 = 0;
                  v973 = 0;
                  v1482 = -1;
                  v1511 = v6;
LABEL_1541:
                  v974 = v232 + 64;
                  while (1)
                  {
                    if (!v232 || (v975 = v974 + ((HIDWORD(v288) - v288) << 6), (*(v975 + 15) & 8) == 0) || (v306 = *v975, *v975 >= v1525 + v1524))
                    {
                      v339 = apr_palloc(p, 0x40uLL);
                      *v339 = 68;
                      *(v339 + 1) = v971;
                      *(v339 + 1) = v1431;
                      v340 = v339 + 8;
                      *(v339 + 2) = v1456;
                      *(v339 + 3) = v1482;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1508;
                      *(v339 + 6) = v972;
                      *(v339 + 14) = v973;
                      v339[60] = v1412;
                      *(v339 + 61) = *__src;
                      v339[63] = __src[2];
                      goto LABEL_1562;
                    }

                    v976 = *(v975 + 8);
                    if (v976 == -15411)
                    {
                      if (v1524 > v306)
                      {
                        v977 = v1528;
                        goto LABEL_1557;
                      }

                      v978 = apr_palloc(p, 0x40uLL);
                      *v978 = 68;
                      *(v978 + 1) = v971;
                      v978[1] = v1431;
                      v978[2] = v1456;
                      v978[3] = v1482;
                      v978[4] = 0;
                      v978[5] = v1508;
                      v978[6] = v972;
                      *(v978 + 14) = v973;
                      *(v978 + 60) = v1412;
                      *(v978 + 61) = *__src;
                      *(v978 + 63) = __src[2];
                      v979 = *find_entry(ht, v978 + 8, 8uLL, 0);
                      if (v979)
                      {
                        v979 = *(v979 + 32);
                      }

                      v978[4] = v979;
                      apr_hash_set(ht, v978 + 1, 8, v978);
                      v978[3] = v306;
                      v976 = *(v975 + 8);
                      v974 = v232 + 64;
                      v6 = v1511;
                    }

                    else if (v976 == -15801)
                    {
                      if (v1524 > v306)
                      {
                        goto LABEL_1852;
                      }

                      v304 = apr_palloc(p, 0x40uLL);
                      *v304 = 68;
                      *(v304 + 1) = v971;
                      *(v304 + 1) = v1431;
                      v305 = v304 + 8;
                      *(v304 + 2) = v1456;
                      *(v304 + 3) = v1482;
                      *(v304 + 4) = 0;
                      *(v304 + 5) = v1508;
                      *(v304 + 6) = v972;
                      *(v304 + 14) = v973;
                      v304[60] = v1412;
                      *(v304 + 61) = *__src;
                      v304[63] = __src[2];
                      goto LABEL_1849;
                    }

                    if (v976 == -15801)
                    {
                      v1482 = *v975;
                      goto LABEL_1559;
                    }

                    v977 = v1528;
                    if (v976 != -15411)
                    {
                      if (v976 == -15793)
                      {
                        v980 = GTTraceFunc_argumentBytesWithMap(v975, *(v975 + 13), v1528);
                        v1456 = *v975;
                        v971 = *(v975 + 8);
                        v1431 = *(v980 + 1);
                        v1508 = *v980;
                        v972 = GTTraceFunc_argumentBytesWithMap(v975, v980[16], v977);
                        v973 = *(v972 + 6);
                        v1412 = v972[34];
                      }

                      goto LABEL_1559;
                    }

LABEL_1557:
                    v981 = GTTraceFunc_argumentBytesWithMap(v975, *(v975 + 13), v977);
                    v972 = GTTraceFunc_argumentBytesWithMap(v975, v981[8], v977);
LABEL_1559:
                    v982 = atomic_load((v232 + 4));
                    v983 = v288 + (v982 >> 6);
                    v984 = (HIDWORD(v288) + 1);
                    v288 = (v984 << 32) | v288;
                    if (v984 == v983 - 1)
                    {
                      v288 = (v984 << 32) | v984;
                      v232 = *(v232 + 40);
                      goto LABEL_1541;
                    }
                  }

                case 27:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1535);
                  v228 = *(v50 + 32);
                  if (!v228)
                  {
                    v287 = 0;
                    goto LABEL_1527;
                  }

                  v229 = 0;
                  while (1)
                  {
                    v230 = atomic_load((v228 + 4));
                    v231 = v229 + (v230 >> 6) - 1;
                    if (v231 > 0)
                    {
                      break;
                    }

                    v228 = *(v228 + 40);
                    v229 = v231;
                    if (!v228)
                    {
                      v229 = v231;
                      goto LABEL_1526;
                    }
                  }

                  v231 = 0;
LABEL_1526:
                  v287 = v229 | (v231 << 32);
LABEL_1527:
                  v958 = 0;
                  v959 = 0;
                  v1481 = 0;
                  v1507 = 0;
                  v960 = 0;
                  v961 = 0;
                  while (v228)
                  {
                    v962 = v228 + 64;
                    v963 = v228 + 64 + ((HIDWORD(v287) - v287) << 6);
                    if ((*(v963 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v313 = *v963;
                    if (*v963 >= v1525 + v1524)
                    {
                      break;
                    }

                    v964 = *(v963 + 8);
                    if (v964 == -15900)
                    {
                      v965 = v1528;
                      v966 = GTTraceFunc_argumentBytesWithMap((v962 + ((HIDWORD(v287) - v287) << 6)), *(v963 + 13), v1528);
                      v1481 = *v963;
                      v958 = *(v963 + 8);
                      v959 = *(v966 + 1);
                      v1507 = *v966;
                      v960 = GTTraceFunc_argumentBytesWithMap((v962 + ((HIDWORD(v287) - v287) << 6)), v966[24], v965);
                      v961 = *(v966 + 4);
                    }

                    else if (v964 == -15769)
                    {
                      if (v1524 > v313)
                      {
                        goto LABEL_1852;
                      }

                      v1230 = v961;
                      v1232 = apr_palloc(p, 0x40uLL);
                      *v1232 = 73;
                      v1232[1] = v958;
                      *(v1232 + 1) = v959;
                      v1233 = v1232 + 2;
                      *(v1232 + 2) = v1481;
                      *(v1232 + 3) = -1;
                      *(v1232 + 4) = 0;
                      *(v1232 + 5) = v1507;
                      *(v1232 + 6) = v960;
                      v1232[14] = v1230;
                      v1232[15] = 0;
                      goto LABEL_1887;
                    }

                    v967 = atomic_load((v228 + 4));
                    v968 = v287 + (v967 >> 6);
                    v969 = (HIDWORD(v287) + 1);
                    v287 = (v969 << 32) | v287;
                    if (v969 == v968 - 1)
                    {
                      v287 = (v969 << 32) | v969;
                      v228 = *(v228 + 40);
                    }
                  }

                  v970 = v961;
                  v304 = apr_palloc(p, 0x40uLL);
                  *v304 = 73;
                  *(v304 + 1) = v958;
                  *(v304 + 1) = v959;
                  v305 = v304 + 8;
                  v306 = -1;
                  *(v304 + 2) = v1481;
                  *(v304 + 3) = -1;
                  *(v304 + 4) = 0;
                  *(v304 + 5) = v1507;
                  *(v304 + 6) = v960;
                  *(v304 + 14) = v970;
                  *(v304 + 15) = 0;
                  goto LABEL_1849;
                case 28:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1536) = v1536 + 1;
                  v110 = *(v50 + 32);
                  if (!v110)
                  {
                    v260 = 0;
                    goto LABEL_681;
                  }

                  v111 = 0;
                  while (1)
                  {
                    v112 = atomic_load((v110 + 4));
                    v113 = v111 + (v112 >> 6) - 1;
                    if (v113 > 0)
                    {
                      break;
                    }

                    v110 = *(v110 + 40);
                    v111 = v113;
                    if (!v110)
                    {
                      v111 = v113;
                      goto LABEL_680;
                    }
                  }

                  v113 = 0;
LABEL_680:
                  v260 = v111 | (v113 << 32);
LABEL_681:
                  v490 = 0;
                  v491 = 0;
                  v492 = 0;
                  v493 = 0;
                  v494 = 0;
                  v495 = 0;
                  v496 = 0;
                  LODWORD(v1467) = 0;
                  v1400 = 0;
                  v1388 = 0;
                  LODWORD(v1366) = 0;
                  v1376 = 0;
                  v1419 = 0u;
LABEL_682:
                  v1494 = v110 + 64;
                  while (1)
                  {
                    if (!v110 || (v497 = v1494 + ((HIDWORD(v260) - v260) << 6), (*(v497 + 15) & 8) == 0) || (v368 = *v497, *v497 >= v1525 + v1524))
                    {
                      v540 = v492;
                      v541 = v491;
                      v542 = v496;
                      v543 = v494;
                      v544 = v490;
                      v545 = apr_palloc(p, 0x68uLL);
                      v366 = v545;
                      *v545 = 15;
                      *(v545 + 1) = v544;
                      *(v545 + 1) = v541;
                      v367 = v545 + 8;
                      v368 = -1;
                      *(v545 + 2) = v540;
                      *(v545 + 3) = -1;
                      *(v545 + 4) = 0;
                      *(v545 + 5) = v493;
                      *(v545 + 6) = v543;
                      *(v545 + 7) = v495;
                      *(v545 + 16) = v542;
LABEL_724:
                      *(v545 + 17) = v1467;
                      *(v545 + 18) = v1400 | (v1388 << 8);
                      v546 = v1376;
                      *(v545 + 19) = v1366;
                      *(v545 + 5) = v1419;
                      goto LABEL_1010;
                    }

                    v498 = *(v497 + 8);
                    if (v498 == -6139)
                    {
                      if (v1524 > v368)
                      {
                        goto LABEL_1852;
                      }

                      v1192 = v490;
                      v1193 = v494;
                      v1194 = v491;
                      v1195 = v492;
                      v545 = apr_palloc(p, 0x68uLL);
                      v366 = v545;
                      *v545 = 15;
                      *(v545 + 1) = v1192;
                      *(v545 + 1) = v1194;
                      v367 = v545 + 8;
                      *(v545 + 2) = v1195;
                      *(v545 + 3) = -1;
                      *(v545 + 4) = 0;
                      *(v545 + 5) = v493;
                      *(v545 + 6) = v1193;
                      *(v545 + 7) = v495;
                      *(v545 + 16) = v496;
                      goto LABEL_724;
                    }

                    v499 = v1528;
                    if (v498 > -6120)
                    {
                      if (v498 > -6111)
                      {
                        if (v498 > -6097)
                        {
                          if (v498 != -6096 && v498 != -6095)
                          {
                            goto LABEL_717;
                          }

                          v516 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                          v1441 = *v497;
                          v517 = *(v497 + 8);
                          v518 = v496;
                          v519 = *v516;
                          v520 = *(v516 + 1);
                          v521 = GTTraceFunc_argumentBytesWithMap(v497, v516[16], v499);
                          v494 = v519;
                          v496 = v518;
                          v491 = v520;
                          v493 = v517;
                          v492 = v1441;
                          v495 = v521;
                          goto LABEL_716;
                        }

                        if (v498 == -6110)
                        {
LABEL_713:
                          v522 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                          v492 = *v497;
                          v493 = *(v497 + 8);
                          v494 = *v522;
                          v491 = *(v522 + 1);
                        }

                        else
                        {
                          if (v498 != -6109)
                          {
                            goto LABEL_717;
                          }

LABEL_714:
                          v523 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                          v492 = *v497;
                          v493 = *(v497 + 8);
                          v494 = *v523;
                          v491 = *(v523 + 1);
                          v495 = *(v523 + 2);
                          v496 = *(v523 + 6);
                          LODWORD(v1467) = *(v523 + 7);
                          LODWORD(v1366) = *(v523 + 9);
                          v1400 = *(v523 + 8);
                          v1388 = *(v523 + 8) >> 8;
                          *(&v508 + 1) = *(&v1419 + 1);
                          *&v508 = *(v523 + 5);
LABEL_715:
                          v1419 = v508;
                        }

LABEL_716:
                        v490 = v493;
                        goto LABEL_717;
                      }

                      switch(v498)
                      {
                        case -6119:
                          goto LABEL_713;
                        case -6116:
                          v539 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                          v492 = *v497;
                          v493 = *(v497 + 8);
                          v494 = *v539;
                          v491 = *(v539 + 1);
                          v495 = *(v539 + 2);
                          v496 = *(v539 + 6);
                          LODWORD(v1467) = *(v539 + 7);
                          v1400 = *(v539 + 8);
                          v1388 = *(v539 + 8) >> 8;
                          v1419 = *(v539 + 40);
                          LODWORD(v1366) = *(v539 + 9);
                          v1376 = *(v539 + 7);
                          goto LABEL_716;
                        case -6111:
                          v509 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                          v1440 = *v497;
                          v510 = *(v497 + 8);
                          v511 = *v509;
                          v512 = *(v509 + 1);
                          v513 = GTTraceFunc_argumentBytesWithMap(v497, v509[16], v499);
                          v514 = v509[24];
                          v495 = v513;
                          v504 = GTTraceFunc_argumentBytesWithMap(v497, v514, v499);
                          v494 = v511;
                          v491 = v512;
                          v493 = v510;
                          v492 = v1440;
                          v505 = v504 >> 32;
                          goto LABEL_706;
                      }
                    }

                    else if (v498 <= -6134)
                    {
                      switch(v498)
                      {
                        case -6143:
                          v532 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                          v1443 = *v497;
                          v533 = *(v497 + 8);
                          v535 = *v532;
                          v534 = *(v532 + 1);
                          v536 = GTTraceFunc_argumentBytesWithMap(v497, v532[16], v499);
                          v537 = v532[24];
                          v495 = v536;
                          v538 = GTTraceFunc_argumentBytesWithMap(v497, v537, v499);
                          v490 = v533;
                          v494 = v535;
                          v491 = v534;
                          v492 = v1443;
                          v496 = v538;
                          v1467 = v538 >> 32;
                          v493 = v533;
                          break;
                        case -6141:
                          goto LABEL_714;
                        case -6134:
                          v507 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                          v492 = *v497;
                          v493 = *(v497 + 8);
                          v494 = *v507;
                          v491 = *(v507 + 1);
                          v1376 = v1376 & 0xFFFFFFFFFFFFFF00 | v507[16];
                          v495 = *(v507 + 3);
                          v496 = *(v507 + 8);
                          LODWORD(v1467) = *(v507 + 9);
                          v508 = *(v507 + 40);
                          goto LABEL_715;
                      }
                    }

                    else if (v498 > -6130)
                    {
                      if (v498 == -6129)
                      {
                        v528 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                        v1442 = *v497;
                        v1356 = *(v497 + 8);
                        v530 = *v528;
                        v529 = *(v528 + 1);
                        v495 = *(v528 + 4);
                        v531 = GTTraceFunc_argumentBytesWithMap(v497, v528[24], v499);
                        v494 = v530;
                        v491 = v529;
                        v492 = v1442;
                        v1400 = v531;
                        v1388 = v531 >> 8;
                        v1366 = v531 >> 32;
                        v496 = *(v528 + 8);
                        LODWORD(v1467) = *(v528 + 9);
                        v493 = v1356;
                        goto LABEL_716;
                      }

                      if (v498 == -6122)
                      {
                        v515 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                        v492 = *v497;
                        v493 = *(v497 + 8);
                        v494 = *v515;
                        v491 = *(v515 + 1);
                        v1376 = v1376 & 0xFFFFFFFFFFFF0000 | v515[16] | (*(v515 + 5) << 8);
                        v495 = *(v515 + 3);
                        v496 = *(v515 + 8);
                        LODWORD(v1467) = *(v515 + 9);
                        LODWORD(v1366) = *(v515 + 11);
                        v1400 = *(v515 + 10);
                        v1388 = *(v515 + 10) >> 8;
                        v508 = *(v515 + 3);
                        goto LABEL_715;
                      }
                    }

                    else
                    {
                      if (v498 == -6133)
                      {
                        v527 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                        v492 = *v497;
                        v493 = *(v497 + 8);
                        v494 = *v527;
                        v491 = *(v527 + 1);
                        v496 = *(v527 + 5);
                        v495 = *(v527 + 4);
                        LODWORD(v1467) = *(v527 + 6);
                        v1400 = *(v527 + 7);
                        v1388 = *(v527 + 7) >> 8;
                        goto LABEL_716;
                      }

                      if (v498 == -6131)
                      {
                        v500 = GTTraceFunc_argumentBytesWithMap((v1494 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1528);
                        v1439 = *v497;
                        v1355 = *(v497 + 8);
                        v501 = *v500;
                        v502 = *(v500 + 1);
                        v503 = GTTraceFunc_argumentBytesWithMap(v497, v500[16], v499);
                        v504 = GTTraceFunc_argumentBytesWithMap(v497, v500[24], v499);
                        v494 = v501;
                        v491 = v502;
                        v493 = v1355;
                        v492 = v1439;
                        v505 = v504 >> 32;
                        v506 = v500[32];
                        v495 = v503;
                        v1400 = v506;
LABEL_706:
                        v490 = v493;
                        v496 = v504;
                        LODWORD(v1467) = v505;
                      }
                    }

LABEL_717:
                    v524 = atomic_load((v110 + 4));
                    v525 = v260 + (v524 >> 6);
                    v526 = (HIDWORD(v260) + 1);
                    v260 = (v526 << 32) | v260;
                    if (v526 == v525 - 1)
                    {
                      v260 = (v526 << 32) | v526;
                      v110 = *(v110 + 40);
                      goto LABEL_682;
                    }
                  }

                case 29:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  __src[2] = 0;
                  *__src = 0;
                  ++DWORD1(v1536);
                  v132 = *(v50 + 32);
                  if (!v132)
                  {
                    v265 = 0;
                    goto LABEL_822;
                  }

                  v133 = 0;
                  do
                  {
                    v134 = atomic_load((v132 + 4));
                    v135 = v133 + (v134 >> 6) - 1;
                    if (v135 > 0)
                    {
                      v135 = 0;
                      goto LABEL_821;
                    }

                    v132 = *(v132 + 40);
                    v133 = v135;
                  }

                  while (v132);
                  v133 = v135;
LABEL_821:
                  v265 = v133 | (v135 << 32);
LABEL_822:
                  v1445 = 0;
                  v1402 = 0;
                  v1421 = 0;
                  v1469 = 0;
                  v1324 = 0;
                  v1328 = 0;
                  v1377 = 0;
                  v1496 = 0;
                  v1337 = 0;
                  v1342 = 0;
                  v613 = 0;
                  v1357 = 0;
                  v1332 = 0;
                  v1314 = 0;
                  v1348 = 0;
                  v1317 = 0;
                  v1320 = 0;
                  v1367 = 0;
                  v614 = -1;
                  while (1)
                  {
                    if (!v132 || (v615 = v132 + 64 + ((HIDWORD(v265) - v265) << 6), (*(v615 + 15) & 8) == 0) || (v306 = *v615, *v615 >= v1525 + v1524))
                    {
                      v339 = apr_palloc(p, 0x88uLL);
                      *(v339 + 1) = v1421;
                      v340 = v339 + 8;
                      *v339 = 43;
                      *(v339 + 1) = v1445;
                      *(v339 + 2) = v1469;
                      *(v339 + 3) = v614;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1402;
                      *(v339 + 6) = v1324;
                      *(v339 + 7) = v1377;
                      *(v339 + 8) = v1496;
                      *(v339 + 9) = v1342;
                      *(v339 + 10) = v613;
                      *(v339 + 11) = v1357;
                      *(v339 + 12) = v1332;
                      *(v339 + 13) = v1314;
                      *(v339 + 14) = v1337;
                      *(v339 + 15) = v1328;
                      *(v339 + 64) = v1348;
                      v339[130] = v1317;
                      v339[131] = v1320;
                      v339[132] = v1367;
                      v339[135] = __src[2];
                      *(v339 + 133) = *__src;
                      goto LABEL_1562;
                    }

                    v616 = *(v615 + 8);
                    if (v616 == -16123 || v616 == -10157)
                    {
                      if (v1524 <= v306)
                      {
                        v618 = apr_palloc(p, 0x88uLL);
                        v618[1] = v1421;
                        *v618 = 43;
                        *(v618 + 1) = v1445;
                        v618[2] = v1469;
                        v618[3] = v614;
                        v618[4] = 0;
                        v618[5] = v1402;
                        v618[6] = v1324;
                        v618[7] = v1377;
                        v618[8] = v1496;
                        v618[9] = v1342;
                        v618[10] = v613;
                        v618[11] = v1357;
                        v618[12] = v1332;
                        v618[13] = v1314;
                        v618[14] = v1337;
                        v618[15] = v1328;
                        *(v618 + 64) = v1348;
                        *(v618 + 130) = v1317;
                        *(v618 + 131) = v1320;
                        *(v618 + 132) = v1367;
                        *(v618 + 135) = __src[2];
                        *(v618 + 133) = *__src;
                        v619 = *find_entry(ht, v618 + 8, 8uLL, 0);
                        if (v619)
                        {
                          v619 = *(v619 + 32);
                        }

                        v618[4] = v619;
                        apr_hash_set(ht, v618 + 1, 8, v618);
                        v618[3] = v306;
                        v616 = *(v615 + 8);
                      }
                    }

                    else if (v616 == -16293)
                    {
                      v304 = apr_palloc(p, 0x88uLL);
                      *(v304 + 1) = v1421;
                      v305 = v304 + 8;
                      *v304 = 43;
                      *(v304 + 1) = v1445;
                      *(v304 + 2) = v1469;
                      *(v304 + 3) = v614;
                      *(v304 + 4) = 0;
                      *(v304 + 5) = v1402;
                      *(v304 + 6) = v1324;
                      *(v304 + 7) = v1377;
                      *(v304 + 8) = v1496;
                      *(v304 + 9) = v1342;
                      *(v304 + 10) = v613;
                      *(v304 + 11) = v1357;
                      *(v304 + 12) = v1332;
                      *(v304 + 13) = v1314;
                      *(v304 + 14) = v1337;
                      *(v304 + 15) = v1328;
                      *(v304 + 64) = v1348;
                      v304[130] = v1317;
                      v304[131] = v1320;
                      v304[132] = v1367;
                      v304[135] = __src[2];
                      *(v304 + 133) = *__src;
                      goto LABEL_1849;
                    }

                    v620 = v1528;
                    if (v616 > -15731)
                    {
                      if (v616 > -15431)
                      {
                        if (v616 <= -15429)
                        {
                          if (v616 != -15430)
                          {
LABEL_874:
                            v632 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                            v1469 = *v615;
                            v1445 = *(v615 + 8);
                            v1402 = *v632;
                            v1421 = *(v632 + 1);
                            v633 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 14), v620);
                            v613 = v633;
                            if (v633)
                            {
                              v1496 = *v633;
                            }

                            else
                            {
                              v1496 = 0;
                            }

                            v1357 = GTTraceFunc_argumentBytesWithMap(v615, v632[24], v620);
                            v1332 = GTTraceFunc_argumentBytesWithMap(v615, v632[25], v620);
LABEL_882:
                            v1348 = *(v632 + 8);
LABEL_883:
                            v1367 = 1;
                            goto LABEL_910;
                          }

LABEL_876:
                          v632 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                          v1469 = *v615;
                          v1445 = *(v615 + 8);
                          v1402 = *v632;
                          v1421 = *(v632 + 1);
                          v634 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 14), v620);
                          v613 = v634;
                          if (v634)
                          {
                            v1496 = *v634;
                          }

                          else
                          {
                            v1496 = 0;
                          }

                          v1357 = GTTraceFunc_argumentBytesWithMap(v615, v632[24], v620);
                          goto LABEL_882;
                        }

                        switch(v616)
                        {
                          case -15428:
                            goto LABEL_876;
                          case -15427:
                            goto LABEL_874;
                          case -10157:
                            v625 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528)[16];
LABEL_898:
                            v1337 = GTTraceFunc_argumentBytesWithMap(v615, v625, v620);
                            break;
                        }
                      }

                      else if (v616 <= -15609)
                      {
                        if (v616 == -15730)
                        {
                          goto LABEL_874;
                        }

                        if (v616 == -15609)
                        {
LABEL_867:
                          v628 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                          v1469 = *v615;
                          v1445 = *(v615 + 8);
                          v1402 = *v628;
                          v1421 = *(v628 + 1);
                          v629 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 14), v620);
                          v613 = v629;
                          if (v629)
                          {
                            v1496 = *v629;
                          }

                          else
                          {
                            v1496 = 0;
                          }

                          v625 = v628[24];
                          goto LABEL_898;
                        }
                      }

                      else
                      {
                        switch(v616)
                        {
                          case -15608:
                            goto LABEL_867;
                          case -15551:
                            v635 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                            v1469 = *v615;
                            v1445 = *(v615 + 8);
                            v1402 = *v635;
                            v1421 = *(v635 + 1);
                            v636 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 14), v620);
                            v613 = v636;
                            if (v636)
                            {
                              v1496 = *v636;
                            }

                            else
                            {
                              v1496 = 0;
                            }

                            v642 = v635[32];
                            goto LABEL_907;
                          case -15550:
                            v623 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                            v1469 = *v615;
                            v1445 = *(v615 + 8);
                            v1402 = *v623;
                            v1421 = *(v623 + 1);
                            v624 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 14), v620);
                            v613 = v624;
                            if (v624)
                            {
                              v1496 = *v624;
                            }

                            else
                            {
                              v1496 = 0;
                            }

                            v642 = v623[24];
LABEL_907:
                            v1328 = GTTraceFunc_argumentBytesWithMap(v615, v642, v620);
                            break;
                        }
                      }
                    }

                    else if (v616 > -16083)
                    {
                      if (v616 > -16039)
                      {
                        if (v616 == -16038)
                        {
                          v640 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                          v1469 = *v615;
                          v1445 = *(v615 + 8);
                          v1402 = *v640;
                          v1421 = *(v640 + 1);
                          v641 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 14), v620);
                          v613 = v641;
                          if (v641)
                          {
                            v1496 = *v641;
                          }

                          else
                          {
                            v1496 = 0;
                          }

                          v1377 = GTTraceFunc_argumentBytesWithMap(v615, v640[16], v620);
                          v1320 = 1;
                          goto LABEL_910;
                        }

                        if (v616 == -15830)
                        {
                          v637 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                          v1469 = *v615;
                          v1445 = *(v615 + 8);
                          v1402 = *v637;
                          v1421 = *(v637 + 1);
                          v638 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 14), v620);
                          v613 = v638;
                          if (v638)
                          {
                            v1496 = *v638;
                          }

                          else
                          {
                            v1496 = 0;
                          }

                          v1377 = GTTraceFunc_argumentBytesWithMap(v615, v637[18], v620);
                          v1314 = GTTraceFunc_argumentBytesWithMap(v615, v637[16], v620);
                          v1317 = v637[17];
                          goto LABEL_883;
                        }

                        if (v616 != -15731)
                        {
                          goto LABEL_910;
                        }

                        goto LABEL_876;
                      }

                      if (v616 == -16082 || v616 == -16081)
                      {
                        v630 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                        v1469 = *v615;
                        v1445 = *(v615 + 8);
                        v1402 = *v630;
                        v1421 = *(v630 + 1);
                        v631 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 14), v620);
                        v613 = v631;
                        if (v631)
                        {
                          v1496 = *v631;
                        }

                        else
                        {
                          v1496 = 0;
                        }

                        v1377 = GTTraceFunc_argumentBytesWithMap(v615, v630[32], v620);
                        v1342 = GTTraceFunc_argumentBytesWithMap(v615, v630[33], v620);
                        v1324 = *(v630 + 2);
                      }
                    }

                    else if (v616 <= -16124)
                    {
                      if (v616 == -16293)
                      {
                        v614 = *v615;
                      }

                      else if (v616 == -16290)
                      {
                        v626 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                        v1469 = *v615;
                        v1445 = *(v615 + 8);
                        v1402 = *v626;
                        v1421 = *(v626 + 1);
                        v627 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 14), v620);
                        v613 = v627;
                        if (v627)
                        {
                          v1496 = *v627;
                        }

                        else
                        {
                          v1496 = 0;
                        }

                        v1377 = GTTraceFunc_argumentBytesWithMap(v615, v626[16], v620);
                      }
                    }

                    else if (v616 == -16123)
                    {
                      v639 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                      v1496 = GTTraceFunc_argumentBytesWithMap(v615, v639[8], v620);
                    }

                    else if (v616 == -16107 || v616 == -16106)
                    {
                      v621 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 13), v1528);
                      v1469 = *v615;
                      v1445 = *(v615 + 8);
                      v1402 = *v621;
                      v1421 = *(v621 + 1);
                      v622 = GTTraceFunc_argumentBytesWithMap(v615, *(v615 + 14), v620);
                      v613 = v622;
                      if (v622)
                      {
                        v1496 = *v622;
                      }

                      else
                      {
                        v1496 = 0;
                      }

                      v1377 = GTTraceFunc_argumentBytesWithMap(v615, v621[24], v620);
                      v1342 = GTTraceFunc_argumentBytesWithMap(v615, v621[25], v620);
                    }

LABEL_910:
                    v643 = atomic_load((v132 + 4));
                    v644 = v265 + (v643 >> 6);
                    v645 = (HIDWORD(v265) + 1);
                    v265 = (v645 << 32) | v265;
                    if (v645 == v644 - 1)
                    {
                      v265 = (v645 << 32) | v645;
                      v132 = *(v132 + 40);
                    }
                  }

                case 31:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 24);
                  *__src = 2;
                  *&__src[24] = -1;
                  ++HIDWORD(v1536);
                  v182 = *(v50 + 32);
                  if (!v182)
                  {
                    v277 = 0;
                    goto LABEL_1326;
                  }

                  v183 = 0;
                  do
                  {
                    v184 = atomic_load((v182 + 4));
                    v185 = v183 + (v184 >> 6) - 1;
                    if (v185 > 0)
                    {
                      v185 = 0;
                      goto LABEL_1325;
                    }

                    v182 = *(v182 + 40);
                    v183 = v185;
                  }

                  while (v182);
                  v183 = v185;
LABEL_1325:
                  v277 = v183 | (v185 << 32);
LABEL_1326:
                  while (v182)
                  {
                    v845 = v182 + 64 + ((HIDWORD(v277) - v277) << 6);
                    if ((*(v845 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v482 = *v845;
                    if (*v845 >= v1525 + v1524)
                    {
                      break;
                    }

                    if (*(v845 + 8) == -7161)
                    {
                      if (v1524 > v482)
                      {
                        goto LABEL_1852;
                      }

                      v489 = apr_palloc(p, 0x38uLL);
                      *v489 = *__src;
                      v489[1] = *&__src[16];
                      v489[2] = *&__src[32];
                      *(v489 + 6) = *&__src[48];
LABEL_1916:
                      v1277 = *find_entry(ht, v489 + 8, 8uLL, 0);
                      if (v1277)
                      {
                        v1277 = *(v1277 + 32);
                      }

                      *(v489 + 4) = v1277;
                      apr_hash_set(ht, v489 + 8, 8, v489);
LABEL_1734:
                      *(v489 + 3) = v482;
                      goto LABEL_1852;
                    }

                    GTMTLSMDrawable_processTraceFuncWithMap(__src, v1528, v845);
                    v846 = atomic_load((v182 + 4));
                    v847 = v277 + (v846 >> 6);
                    v848 = (HIDWORD(v277) + 1);
                    v277 = (v848 << 32) | v277;
                    if (v848 == v847 - 1)
                    {
                      v277 = (v848 << 32) | v848;
                      v182 = *(v182 + 40);
                    }
                  }

                  v489 = apr_palloc(p, 0x38uLL);
                  *v489 = *__src;
                  v489[1] = *&__src[16];
                  v489[2] = *&__src[32];
                  *(v489 + 6) = *&__src[48];
                  goto LABEL_1731;
                case 32:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(&__src[32], 0, 248);
                  memset(__src, 0, 24);
                  *__src = 3;
                  *&__src[24] = -1;
                  LODWORD(v1537) = v1537 + 1;
                  v136 = *(v50 + 32);
                  if (!v136)
                  {
                    v266 = 0;
                    goto LABEL_915;
                  }

                  v137 = 0;
                  while (1)
                  {
                    v138 = atomic_load((v136 + 4));
                    v139 = v137 + (v138 >> 6) - 1;
                    if (v139 > 0)
                    {
                      break;
                    }

                    v136 = *(v136 + 40);
                    v137 = v139;
                    if (!v136)
                    {
                      v137 = v139;
                      goto LABEL_914;
                    }
                  }

                  v139 = 0;
LABEL_914:
                  v266 = v137 | (v139 << 32);
LABEL_915:
                  v646 = v136 + 64;
                  while (1)
                  {
                    if (!v136 || (v647 = v646 + ((HIDWORD(v266) - v266) << 6), (*(v647 + 15) & 8) == 0) || (v648 = *v647, *v647 >= v1525 + v1524))
                    {
                      v464 = apr_palloc(p, 0x118uLL);
                      memcpy(v464, __src, 0x118uLL);
                      v663 = *find_entry(ht, v464 + 8, 8uLL, 0);
                      if (v663)
                      {
                        v663 = *(v663 + 32);
                      }

                      v464[4] = v663;
                      v588 = ht;
                      v589 = v464 + 1;
LABEL_965:
                      apr_hash_set(v588, v589, 8, v464);
                      v464[3] = -1;
                      goto LABEL_1852;
                    }

                    v649 = *(v647 + 8);
                    if ((v649 + 7165) > 0xB)
                    {
                      break;
                    }

                    if (((1 << (v649 - 3)) & 0x86B) != 0)
                    {
                      goto LABEL_933;
                    }

                    if (v649 != -7163)
                    {
                      break;
                    }

                    if (v1524 > v648 || *&__src[8] == 0)
                    {
                      v651 = v1528;
LABEL_941:
                      v655 = GTTraceFunc_argumentBytesWithMap((v646 + ((HIDWORD(v266) - v266) << 6)), *(v647 + 13), v651);
                      *&__src[8] = *v655;
                      *&__src[16] = *v647;
                      *&__src[40] = *(v655 + 1);
                      goto LABEL_960;
                    }

LABEL_934:
                    v653 = apr_palloc(p, 0x118uLL);
                    memcpy(v653, __src, 0x118uLL);
                    v654 = *find_entry(ht, v653 + 8, 8uLL, 0);
                    if (v654)
                    {
                      v654 = *(v654 + 32);
                    }

                    *(v653 + 4) = v654;
                    apr_hash_set(ht, v653 + 8, 8, v653);
                    *(v653 + 3) = v648;
                    v649 = *(v647 + 8);
LABEL_937:
                    v651 = v1528;
                    if (v649 <= -7163)
                    {
                      if (v649 <= -7166)
                      {
                        if (v649 == -8183)
                        {
                          v658 = GTTraceFunc_argumentBytesWithMap((v646 + ((HIDWORD(v266) - v266) << 6)), *(v647 + 13), v1528);
                          for (j = 0; j != 128; j += 16)
                          {
                            *&__src[j + 48] = *&v658[j + 8];
                          }

                          *&__src[248] = *(v658 + 136);
                        }

                        else if (v649 == -8181)
                        {
                          *&__src[192] = *(GTTraceFunc_argumentBytesWithMap((v646 + ((HIDWORD(v266) - v266) << 6)), *(v647 + 13), v1528) + 8);
                        }

                        goto LABEL_960;
                      }

                      if (v649 == -7165)
                      {
                        *&__src[272] = *(GTTraceFunc_argumentBytesWithMap((v646 + ((HIDWORD(v266) - v266) << 6)), *(v647 + 13), v1528) + 1);
                        goto LABEL_960;
                      }

                      if (v649 == -7164)
                      {
                        *&__src[176] = *(GTTraceFunc_argumentBytesWithMap((v646 + ((HIDWORD(v266) - v266) << 6)), *(v647 + 13), v1528) + 8);
                        goto LABEL_960;
                      }

                      goto LABEL_941;
                    }

                    if (v649 <= -7160)
                    {
                      if (v649 != -7162)
                      {
                        if (v649 == -7160)
                        {
                          __src[274] = *(GTTraceFunc_argumentBytesWithMap((v646 + ((HIDWORD(v266) - v266) << 6)), *(v647 + 13), v1528) + 2);
                        }

                        goto LABEL_960;
                      }
                    }

                    else if (v649 != -7159)
                    {
                      if (v649 == -7154)
                      {
                        __src[275] = *(GTTraceFunc_argumentBytesWithMap((v646 + ((HIDWORD(v266) - v266) << 6)), *(v647 + 13), v1528) + 2);
                      }

                      else if (v649 == -7153)
                      {
                        v656 = GTTraceFunc_argumentBytesWithMap((v646 + ((HIDWORD(v266) - v266) << 6)), *(v647 + 13), v1528);
                        *&__src[264] = GTTraceFunc_argumentBytesWithMap((v646 + ((HIDWORD(v266) - v266) << 6)), v656[8], v651);
                      }

                      goto LABEL_960;
                    }

                    v657 = GTTraceFunc_argumentBytesWithMap((v646 + ((HIDWORD(v266) - v266) << 6)), *(v647 + 13), v1528);
                    *&__src[216] = *(v657 + 8);
                    *&__src[232] = *(v657 + 24);
                    *&__src[208] = *(v657 + 5);
LABEL_960:
                    v660 = atomic_load((v136 + 4));
                    v661 = v266 + (v660 >> 6);
                    v662 = (HIDWORD(v266) + 1);
                    v266 = (v662 << 32) | v266;
                    if (v662 == v661 - 1)
                    {
                      v266 = (v662 << 32) | v662;
                      v136 = *(v136 + 40);
                      goto LABEL_915;
                    }
                  }

                  if (v649 != -8183 && v649 != -8181)
                  {
                    goto LABEL_937;
                  }

LABEL_933:
                  if (v1524 > v648)
                  {
                    goto LABEL_937;
                  }

                  goto LABEL_934;
                case 33:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  *&__src[3] = 0;
                  *__src = 0;
                  ++DWORD1(v1537);
                  v240 = *(v50 + 32);
                  if (!v240)
                  {
                    v290 = 0;
                    goto LABEL_1581;
                  }

                  v241 = 0;
                  do
                  {
                    v242 = atomic_load((v240 + 4));
                    v243 = v241 + (v242 >> 6) - 1;
                    if (v243 > 0)
                    {
                      v243 = 0;
                      goto LABEL_1580;
                    }

                    v240 = *(v240 + 40);
                    v241 = v243;
                  }

                  while (v240);
                  v241 = v243;
LABEL_1580:
                  v290 = v241 | (v243 << 32);
LABEL_1581:
                  v1432 = 0;
                  v1484 = 0;
                  v1457 = 0;
                  v996 = 0;
                  v997 = 0;
                  v1384 = 0;
                  v1396 = 0;
                  v1413 = 0;
                  v998 = 0;
                  v1510 = 0u;
                  while (1)
                  {
                    if (!v240 || (v999 = v240 + 64, v1000 = v240 + 64 + ((HIDWORD(v290) - v290) << 6), (*(v1000 + 15) & 8) == 0) || (v306 = *v1000, *v1000 >= v1525 + v1524))
                    {
                      v1023 = v997;
                      v1024 = apr_palloc(p, 0x68uLL);
                      v304 = v1024;
                      *v1024 = 44;
                      *(v1024 + 1) = v1432;
                      *(v1024 + 1) = v1484;
                      v305 = v1024 + 8;
                      v306 = -1;
                      *(v1024 + 2) = v1457;
                      *(v1024 + 3) = -1;
                      goto LABEL_1848;
                    }

                    v1001 = *(v1000 + 8);
                    if (v1001 == -15610)
                    {
                      v1023 = v997;
                      v1024 = apr_palloc(p, 0x68uLL);
                      v304 = v1024;
                      *v1024 = 44;
                      *(v1024 + 1) = v1432;
                      *(v1024 + 1) = v1484;
                      v305 = v1024 + 8;
                      *(v1024 + 2) = v1457;
                      *(v1024 + 3) = -1;
LABEL_1848:
                      *(v1024 + 4) = 0;
                      *(v1024 + 5) = v996;
                      *(v1024 + 6) = v1023;
                      *(v1024 + 7) = v1384;
                      *(v1024 + 8) = v1396;
                      *(v1024 + 9) = v1413;
                      *(v1024 + 5) = v1510;
                      v1024[96] = v998;
                      *(v1024 + 97) = *__src;
                      *(v1024 + 25) = *&__src[3];
LABEL_1849:
                      v1213 = *find_entry(ht, v305, 8uLL, 0);
                      if (v1213)
                      {
                        v1213 = *(v1213 + 32);
                      }

                      *(v304 + 4) = v1213;
                      apr_hash_set(ht, v305, 8, v304);
                      *(v304 + 3) = v306;
                      goto LABEL_1852;
                    }

                    v1002 = v1528;
                    if (v1001 > -15437)
                    {
                      if (v1001 > -10142)
                      {
                        if (v1001 == -10141)
                        {
                          v1018 = v997;
                          v1019 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 13), v1528);
                          v997 = v1018;
                          v1012.i64[0] = v1510.i64[0];
                          v1012.i64[1] = *(v1019 + 1);
                          goto LABEL_1618;
                        }

                        if (v1001 == -10140)
                        {
                          v1010 = v997;
                          v1011 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 13), v1528);
                          v997 = v1010;
                          v1012.i64[1] = v1510.i64[1];
                          v1012.i64[0] = *(v1011 + 1);
LABEL_1618:
                          v1510 = v1012;
                        }
                      }

                      else if (v1001 == -15436)
                      {
                        v1014 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 13), v1528);
                        v1484 = *(v1014 + 1);
                        v1457 = *v1000;
                        v1432 = *(v1000 + 8);
                        v1015 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 14), v1002);
                        v996 = v1015;
                        if (v1015)
                        {
                          v1510 = vextq_s8(*v1015, *v1015, 8uLL);
                        }

                        v1413 = *v1014;
                        v997 = *(v1014 + 2);
                        v998 = 1;
                      }

                      else if (v1001 == -14835)
                      {
                        v1005 = v998;
                        v1006 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 13), v1528);
                        v1484 = *(v1006 + 1);
                        v1457 = *v1000;
                        v1432 = *(v1000 + 8);
                        v1007 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 14), v1002);
                        v996 = v1007;
                        if (v1007)
                        {
                          v1510 = vextq_s8(*v1007, *v1007, 8uLL);
                        }

                        v1384 = *v1006;
                        goto LABEL_1610;
                      }
                    }

                    else if (v1001 > -15445)
                    {
                      if (v1001 == -15444)
                      {
                        v1016 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 13), v1528);
                        v1484 = *(v1016 + 1);
                        v1457 = *v1000;
                        v1432 = *(v1000 + 8);
                        v1017 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 14), v1002);
                        v996 = v1017;
                        if (v1017)
                        {
                          v1510 = vextq_s8(*v1017, *v1017, 8uLL);
                        }

                        v1413 = *v1016;
                        v997 = *(v1016 + 2);
                        v998 = 2;
                      }

                      else if (v1001 == -15437)
                      {
                        v1008 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 13), v1528);
                        v1484 = *(v1008 + 1);
                        v1457 = *v1000;
                        v1432 = *(v1000 + 8);
                        v1009 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 14), v1002);
                        v996 = v1009;
                        if (v1009)
                        {
                          v1510 = vextq_s8(*v1009, *v1009, 8uLL);
                        }

                        v1413 = *v1008;
                        v997 = *(v1008 + 2);
                        v998 = 4;
                      }
                    }

                    else
                    {
                      if (v1001 == -15620)
                      {
                        v1005 = v998;
                        v1006 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 13), v1528);
                        v1484 = *(v1006 + 1);
                        v1457 = *v1000;
                        v1432 = *(v1000 + 8);
                        v1013 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 14), v1002);
                        v996 = v1013;
                        if (v1013)
                        {
                          v1510 = vextq_s8(*v1013, *v1013, 8uLL);
                        }

                        v1396 = *v1006;
LABEL_1610:
                        v997 = *(v1006 + 2);
                        v998 = v1005;
                        goto LABEL_1619;
                      }

                      if (v1001 == -15463)
                      {
                        v1003 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 13), v1528);
                        v1484 = *(v1003 + 1);
                        v1457 = *v1000;
                        v1432 = *(v1000 + 8);
                        v1004 = GTTraceFunc_argumentBytesWithMap((v999 + ((HIDWORD(v290) - v290) << 6)), *(v1000 + 14), v1002);
                        v996 = v1004;
                        if (v1004)
                        {
                          v1510 = vextq_s8(*v1004, *v1004, 8uLL);
                        }

                        v1413 = *v1003;
                        v997 = *(v1003 + 2);
                        v998 = v1003[24];
                      }
                    }

LABEL_1619:
                    v1020 = atomic_load((v240 + 4));
                    v1021 = v290 + (v1020 >> 6);
                    v1022 = (HIDWORD(v290) + 1);
                    v290 = (v1022 << 32) | v290;
                    if (v1022 == v1021 - 1)
                    {
                      v290 = (v1022 << 32) | v1022;
                      v240 = *(v240 + 40);
                    }
                  }

                case 34:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1537);
                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 64);
                  *__src = 39;
                  *&__src[24] = -1;
                  v106 = *(v50 + 32);
                  if (!v106)
                  {
                    v259 = 0;
                    goto LABEL_667;
                  }

                  v107 = 0;
                  while (1)
                  {
                    v108 = atomic_load((v106 + 4));
                    v109 = v107 + (v108 >> 6) - 1;
                    if (v109 > 0)
                    {
                      break;
                    }

                    v106 = *(v106 + 40);
                    v107 = v109;
                    if (!v106)
                    {
                      v107 = v109;
                      goto LABEL_666;
                    }
                  }

                  v109 = 0;
LABEL_666:
                  v259 = v107 | (v109 << 32);
LABEL_667:
                  while (v106)
                  {
                    v481 = v106 + 64 + ((HIDWORD(v259) - v259) << 6);
                    if ((*(v481 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v482 = *v481;
                    if (*v481 >= v1525 + v1524)
                    {
                      break;
                    }

                    v483 = *(v481 + 8);
                    if ((v483 + 20480) >= 5)
                    {
                      if (v483 == -20475)
                      {
                        v489 = apr_palloc(p, 0x60uLL);
                        v489[2] = *&__src[32];
                        v489[3] = *&__src[48];
                        v489[4] = *&__src[64];
                        v489[5] = *&__src[80];
                        *v489 = *__src;
                        v489[1] = *&__src[16];
                        goto LABEL_1916;
                      }
                    }

                    else if (v1524 <= v482)
                    {
                      v484 = apr_palloc(p, 0x60uLL);
                      *(v484 + 2) = *&__src[32];
                      *(v484 + 3) = *&__src[48];
                      *(v484 + 4) = *&__src[64];
                      *(v484 + 5) = *&__src[80];
                      *v484 = *__src;
                      *(v484 + 1) = *&__src[16];
                      v485 = *find_entry(ht, v484 + 8, 8uLL, 0);
                      if (v485)
                      {
                        v485 = *(v485 + 32);
                      }

                      v484[4] = v485;
                      apr_hash_set(ht, v484 + 1, 8, v484);
                      v484[3] = v482;
                    }

                    GTMTLFXSMSpatialScaler_processTraceFuncWithMap(__src, v1528, v106 + 64 + ((HIDWORD(v259) - v259) << 6));
                    v486 = atomic_load((v106 + 4));
                    v487 = v259 + (v486 >> 6);
                    v488 = (HIDWORD(v259) + 1);
                    v259 = (v488 << 32) | v259;
                    if (v488 == v487 - 1)
                    {
                      v259 = (v488 << 32) | v488;
                      v106 = *(v106 + 40);
                    }
                  }

                  v489 = apr_palloc(p, 0x60uLL);
                  v489[2] = *&__src[32];
                  v489[3] = *&__src[48];
                  v489[4] = *&__src[64];
                  v489[5] = *&__src[80];
                  *v489 = *__src;
                  v489[1] = *&__src[16];
LABEL_1731:
                  v1115 = *find_entry(ht, v489 + 8, 8uLL, 0);
                  if (v1115)
                  {
                    v1115 = *(v1115 + 32);
                  }

                  *(v489 + 4) = v1115;
                  apr_hash_set(ht, v489 + 8, 8, v489);
                  v482 = -1;
                  goto LABEL_1734;
                case 35:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1537);
                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 120);
                  *__src = 40;
                  *&__src[24] = -1;
                  v212 = *(v50 + 32);
                  if (!v212)
                  {
                    v283 = 0;
                    goto LABEL_1452;
                  }

                  v213 = 0;
                  do
                  {
                    v214 = atomic_load((v212 + 4));
                    v215 = v213 + (v214 >> 6) - 1;
                    if (v215 > 0)
                    {
                      v215 = 0;
                      goto LABEL_1451;
                    }

                    v212 = *(v212 + 40);
                    v213 = v215;
                  }

                  while (v212);
                  v213 = v215;
LABEL_1451:
                  v283 = v213 | (v215 << 32);
LABEL_1452:
                  while (v212)
                  {
                    v921 = v212 + 64 + ((HIDWORD(v283) - v283) << 6);
                    if ((*(v921 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v549 = *v921;
                    if (*v921 >= v1525 + v1524)
                    {
                      break;
                    }

                    v922 = *(v921 + 8);
                    if ((v922 + 20473) < 0xF || (v922 + 20457) < 2 || v922 == -18430)
                    {
                      if (v1524 <= v549)
                      {
                        v925 = apr_palloc(p, 0x98uLL);
                        *(v925 + 6) = *&__src[96];
                        *(v925 + 7) = *&__src[112];
                        *(v925 + 8) = *&__src[128];
                        v925[18] = *&__src[144];
                        *(v925 + 2) = *&__src[32];
                        *(v925 + 3) = *&__src[48];
                        *(v925 + 4) = *&__src[64];
                        *(v925 + 5) = *&__src[80];
                        *v925 = *__src;
                        *(v925 + 1) = *&__src[16];
                        v926 = *find_entry(ht, v925 + 8, 8uLL, 0);
                        if (v926)
                        {
                          v926 = *(v926 + 32);
                        }

                        v925[4] = v926;
                        apr_hash_set(ht, v925 + 1, 8, v925);
                        v925[3] = v549;
                      }
                    }

                    else if (v922 == -20458)
                    {
                      goto LABEL_1924;
                    }

                    GTMTLFXSMTemporalScaler_processTraceFuncWithMap(__src, v1528, (v212 + 64 + ((HIDWORD(v283) - v283) << 6)));
                    v927 = atomic_load((v212 + 4));
                    v928 = v283 + (v927 >> 6);
                    v929 = (HIDWORD(v283) + 1);
                    v283 = (v929 << 32) | v283;
                    if (v929 == v928 - 1)
                    {
                      v283 = (v929 << 32) | v929;
                      v212 = *(v212 + 40);
                    }
                  }

                  goto LABEL_1471;
                case 36:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1538) = v1538 + 1;
                  v236 = *(v50 + 32);
                  if (!v236)
                  {
                    v289 = 0;
                    goto LABEL_1567;
                  }

                  v237 = 0;
                  while (1)
                  {
                    v238 = atomic_load((v236 + 4));
                    v239 = v237 + (v238 >> 6) - 1;
                    if (v239 > 0)
                    {
                      break;
                    }

                    v236 = *(v236 + 40);
                    v237 = v239;
                    if (!v236)
                    {
                      v237 = v239;
                      goto LABEL_1566;
                    }
                  }

                  v239 = 0;
LABEL_1566:
                  v289 = v237 | (v239 << 32);
LABEL_1567:
                  v986 = 0;
                  v1483 = 0;
                  v1509 = 0;
                  v987 = 0;
                  v342 = 0;
                  while (v236)
                  {
                    v988 = v236 + 64;
                    v989 = v236 + 64 + ((HIDWORD(v289) - v289) << 6);
                    if ((*(v989 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v313 = *v989;
                    if (*v989 >= v1525 + v1524)
                    {
                      break;
                    }

                    v990 = *(v989 + 8);
                    if (v990 == -15245)
                    {
                      v991 = v1528;
                      v992 = GTTraceFunc_argumentBytesWithMap((v988 + ((HIDWORD(v289) - v289) << 6)), *(v989 + 13), v1528);
                      v1483 = *(v992 + 1);
                      v1509 = *v989;
                      v986 = *(v989 + 8);
                      v342 = GTTraceFunc_argumentBytesWithMap((v988 + ((HIDWORD(v289) - v289) << 6)), v992[24], v991);
                      v987 = *v992;
                    }

                    else if (v990 == -15231)
                    {
                      v1231 = apr_palloc(p, 0x38uLL);
                      v1232 = v1231;
                      *v1231 = 72;
                      *(v1231 + 1) = v986;
                      *(v1231 + 1) = v1483;
                      v1233 = v1231 + 8;
                      *(v1231 + 2) = v1509;
                      *(v1231 + 3) = -1;
                      *(v1231 + 4) = 0;
                      *(v1231 + 5) = v987;
LABEL_1886:
                      *(v1231 + 6) = v342;
                      goto LABEL_1887;
                    }

                    v993 = atomic_load((v236 + 4));
                    v994 = v289 + (v993 >> 6);
                    v995 = (HIDWORD(v289) + 1);
                    v289 = (v995 << 32) | v289;
                    if (v995 == v994 - 1)
                    {
                      v289 = (v995 << 32) | v995;
                      v236 = *(v236 + 40);
                    }
                  }

                  v353 = apr_palloc(p, 0x38uLL);
                  v304 = v353;
                  *v353 = 72;
                  *(v353 + 1) = v986;
                  *(v353 + 1) = v1483;
                  v305 = v353 + 8;
                  v306 = -1;
                  *(v353 + 2) = v1509;
                  *(v353 + 3) = -1;
                  *(v353 + 4) = 0;
                  *(v353 + 5) = v987;
                  goto LABEL_1578;
                case 37:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD1(v1538);
                  *__src = 0uLL;
                  v74 = *(v50 + 32);
                  if (!v74)
                  {
                    v251 = 0;
                    goto LABEL_446;
                  }

                  v75 = 0;
                  do
                  {
                    v76 = atomic_load((v74 + 4));
                    v77 = v75 + (v76 >> 6) - 1;
                    if (v77 > 0)
                    {
                      v77 = 0;
                      goto LABEL_445;
                    }

                    v74 = *(v74 + 40);
                    v75 = v77;
                  }

                  while (v74);
                  v75 = v77;
LABEL_445:
                  v251 = v75 | (v77 << 32);
LABEL_446:
                  v341 = 0;
                  v1460 = 0;
                  v1489 = 0;
                  v342 = 0;
                  while (1)
                  {
                    if (!v74 || (v343 = v74 + 64, v344 = v74 + 64 + ((HIDWORD(v251) - v251) << 6), (*(v344 + 15) & 8) == 0) || (v313 = *v344, *v344 >= v1525 + v1524))
                    {
                      v353 = apr_palloc(p, 0x38uLL);
                      v304 = v353;
                      *v353 = 53;
                      *(v353 + 1) = v341;
                      *(v353 + 1) = v1460;
                      v305 = v353 + 8;
                      v306 = -1;
                      *(v353 + 2) = v1489;
                      *(v353 + 3) = -1;
                      *(v353 + 2) = *__src;
LABEL_1578:
                      *(v353 + 6) = v342;
                      goto LABEL_1849;
                    }

                    v345 = *(v344 + 8);
                    if (v345 == -15328)
                    {
                      v1231 = apr_palloc(p, 0x38uLL);
                      v1232 = v1231;
                      *v1231 = 53;
                      *(v1231 + 1) = v341;
                      *(v1231 + 1) = v1460;
                      v1233 = v1231 + 8;
                      *(v1231 + 2) = v1489;
                      *(v1231 + 3) = -1;
                      *(v1231 + 2) = *__src;
                      goto LABEL_1886;
                    }

                    v346 = v6;
                    v347 = v1528;
                    v348 = 24;
                    if (v345 > -15261)
                    {
                      break;
                    }

                    if (v345 != -15348)
                    {
                      if (v345 != -15296)
                      {
                        goto LABEL_460;
                      }

LABEL_458:
                      v348 = 32;
                    }

LABEL_459:
                    v349 = GTTraceFunc_argumentBytesWithMap((v343 + ((HIDWORD(v251) - v251) << 6)), *(v344 + 13), v1528);
                    v1460 = *(v349 + 1);
                    v1489 = *v344;
                    v341 = *(v344 + 8);
                    v342 = GTTraceFunc_argumentBytesWithMap((v343 + ((HIDWORD(v251) - v251) << 6)), v349[v348], v347);
LABEL_460:
                    v350 = atomic_load((v74 + 4));
                    v351 = v251 + (v350 >> 6);
                    v352 = (HIDWORD(v251) + 1);
                    v251 = (v352 << 32) | v251;
                    v6 = v346;
                    if (v352 == v351 - 1)
                    {
                      v251 = (v352 << 32) | v352;
                      v74 = *(v74 + 40);
                    }
                  }

                  if (v345 != -15260)
                  {
                    if (v345 != -15259)
                    {
                      goto LABEL_460;
                    }

                    goto LABEL_459;
                  }

                  goto LABEL_458;
                case 38:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1538);
                  v199 = *(v50 + 32);
                  if (!v199)
                  {
                    v281 = 0;
                    goto LABEL_1412;
                  }

                  v200 = 0;
                  do
                  {
                    v201 = atomic_load((v199 + 4));
                    v202 = v200 + (v201 >> 6) - 1;
                    if (v202 > 0)
                    {
                      v202 = 0;
                      goto LABEL_1411;
                    }

                    v199 = *(v199 + 40);
                    v200 = v202;
                  }

                  while (v199);
                  v200 = v202;
LABEL_1411:
                  v281 = v200 | (v202 << 32);
LABEL_1412:
                  v895 = 0;
                  v896 = 0;
                  v1505 = 0;
                  v1478 = 0;
                  v1429 = 0;
                  v1454 = -1;
                  while (v199)
                  {
                    v897 = v199 + 64;
                    v898 = v199 + 64 + ((HIDWORD(v281) - v281) << 6);
                    if ((*(v898 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v899 = *v898;
                    if (*v898 >= v1525 + v1524)
                    {
                      break;
                    }

                    v900 = *(v898 + 8);
                    if (v900 == -16344)
                    {
                      if (v1524 > v899)
                      {
                        goto LABEL_1852;
                      }

                      v1209 = apr_palloc(p, 0x38uLL);
                      v1210 = v1209;
                      *v1209 = 92;
                      *(v1209 + 1) = v895;
                      *(v1209 + 1) = v896;
                      v1211 = v1209 + 8;
                      *(v1209 + 2) = v1505;
                      *(v1209 + 3) = v1454;
                      *(v1209 + 4) = 0;
                      *(v1209 + 5) = v1478;
                      v1212 = v1429;
LABEL_1873:
                      *(v1209 + 6) = v1212;
                      v1228 = *find_entry(ht, v1211, 8uLL, 0);
                      if (v1228)
                      {
                        v1228 = *(v1228 + 32);
                      }

                      v1210[4] = v1228;
                      apr_hash_set(ht, v1211, 8, v1210);
                      v1210[3] = v899;
                      goto LABEL_1852;
                    }

                    v901 = v1528;
                    switch(v900)
                    {
                      case -14834:
                        v903 = GTTraceFunc_argumentBytesWithMap((v897 + ((HIDWORD(v281) - v281) << 6)), *(v898 + 13), v1528);
                        v1505 = *v898;
                        v895 = *(v898 + 8);
                        v896 = *(v903 + 1);
                        v1478 = *v903;
                        v1429 = GTTraceFunc_argumentBytesWithMap((v897 + ((HIDWORD(v281) - v281) << 6)), v903[24], v901);
                        break;
                      case -15155:
                        v1454 = *v898;
                        break;
                      case -15190:
                        v902 = GTTraceFunc_argumentBytesWithMap((v897 + ((HIDWORD(v281) - v281) << 6)), *(v898 + 13), v1528);
                        v1505 = *v898;
                        v895 = *(v898 + 8);
                        v896 = *(v902 + 1);
                        v1478 = *v902;
                        break;
                    }

                    v904 = atomic_load((v199 + 4));
                    v905 = v281 + (v904 >> 6);
                    v906 = (HIDWORD(v281) + 1);
                    v281 = (v906 << 32) | v281;
                    if (v906 == v905 - 1)
                    {
                      v281 = (v906 << 32) | v906;
                      v199 = *(v199 + 40);
                    }
                  }

                  v907 = apr_palloc(p, 0x38uLL);
                  v339 = v907;
                  *v907 = 92;
                  *(v907 + 1) = v895;
                  *(v907 + 1) = v896;
                  v340 = v907 + 8;
                  *(v907 + 2) = v1505;
                  *(v907 + 3) = v1454;
                  *(v907 + 4) = 0;
                  *(v907 + 5) = v1478;
                  v908 = v1429;
LABEL_1449:
                  *(v907 + 6) = v908;
                  goto LABEL_1562;
                case 39:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1538);
                  v70 = *(v50 + 32);
                  if (!v70)
                  {
                    v250 = 0;
                    goto LABEL_419;
                  }

                  v71 = 0;
                  do
                  {
                    v72 = atomic_load((v70 + 4));
                    v73 = v71 + (v72 >> 6) - 1;
                    if (v73 > 0)
                    {
                      v73 = 0;
                      goto LABEL_418;
                    }

                    v70 = *(v70 + 40);
                    v71 = v73;
                  }

                  while (v70);
                  v71 = v73;
LABEL_418:
                  v250 = v71 | (v73 << 32);
LABEL_419:
                  v326 = 0;
                  v1397 = 0;
                  v1415 = 0;
                  v1434 = 0;
                  v1385 = 0;
                  v1488 = 0;
                  v1459 = -1;
                  while (1)
                  {
                    if (!v70 || (v327 = v70 + 64, v328 = v70 + 64 + ((HIDWORD(v250) - v250) << 6), (*(v328 + 15) & 8) == 0) || (v306 = *v328, *v328 >= v1525 + v1524))
                    {
                      v339 = apr_palloc(p, 0x40uLL);
                      *v339 = 91;
                      *(v339 + 1) = v326;
                      *(v339 + 1) = v1397;
                      v340 = v339 + 8;
                      *(v339 + 2) = v1434;
                      *(v339 + 3) = v1459;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1415;
                      *(v339 + 6) = v1385;
                      *(v339 + 7) = v1488;
LABEL_1562:
                      v985 = *find_entry(ht, v340, 8uLL, 0);
                      if (v985)
                      {
                        v985 = *(v985 + 32);
                      }

                      *(v339 + 4) = v985;
                      apr_hash_set(ht, v340, 8, v339);
                      *(v339 + 3) = -1;
                      goto LABEL_1852;
                    }

                    v329 = *(v328 + 8);
                    if (v329 == -14907)
                    {
                      if (v1524 > v306)
                      {
                        v330 = v1528;
LABEL_440:
                        v335 = GTTraceFunc_argumentBytesWithMap((v327 + ((HIDWORD(v250) - v250) << 6)), *(v328 + 13), v330);
                        v1488 = GTTraceFunc_argumentBytesWithMap((v327 + ((HIDWORD(v250) - v250) << 6)), v335[8], v330);
                        goto LABEL_441;
                      }

                      v331 = apr_palloc(p, 0x40uLL);
                      *v331 = 91;
                      *(v331 + 1) = v326;
                      v331[1] = v1397;
                      v331[2] = v1434;
                      v331[3] = v1459;
                      v331[4] = 0;
                      v331[5] = v1415;
                      v331[6] = v1385;
                      v331[7] = v1488;
                      v332 = *find_entry(ht, v331 + 8, 8uLL, 0);
                      if (v332)
                      {
                        v332 = *(v332 + 32);
                      }

                      v331[4] = v332;
                      apr_hash_set(ht, v331 + 1, 8, v331);
                      v331[3] = v306;
                      v329 = *(v328 + 8);
                    }

                    else if ((v329 + 15170) <= 1)
                    {
                      if (v1524 > v306)
                      {
                        goto LABEL_1852;
                      }

                      v304 = apr_palloc(p, 0x40uLL);
                      *v304 = 91;
                      *(v304 + 1) = v326;
                      *(v304 + 1) = v1397;
                      v305 = v304 + 8;
                      *(v304 + 2) = v1434;
                      *(v304 + 3) = v1459;
                      *(v304 + 4) = 0;
                      *(v304 + 5) = v1415;
                      *(v304 + 6) = v1385;
                      *(v304 + 7) = v1488;
                      goto LABEL_1849;
                    }

                    v330 = v1528;
                    if (v329 > -15171)
                    {
                      if ((v329 + 15170) >= 2)
                      {
                        if (v329 == -14907)
                        {
                          goto LABEL_440;
                        }
                      }

                      else
                      {
                        v1459 = *v328;
                      }
                    }

                    else if ((v329 + 15173) >= 2)
                    {
                      if (v329 == -15196)
                      {
                        v334 = GTTraceFunc_argumentBytesWithMap((v327 + ((HIDWORD(v250) - v250) << 6)), *(v328 + 13), v1528);
                        v1434 = *v328;
                        v326 = *(v328 + 8);
                        v1397 = *(v334 + 1);
                        v1415 = *v334;
                      }
                    }

                    else if (!v326)
                    {
                      v333 = GTTraceFunc_argumentBytesWithMap((v327 + ((HIDWORD(v250) - v250) << 6)), *(v328 + 13), v1528);
                      v1434 = *v328;
                      v326 = *(v328 + 8);
                      v1385 = *v333;
                      v1397 = *(v333 + 1);
                      v1415 = 1;
                    }

LABEL_441:
                    v336 = atomic_load((v70 + 4));
                    v337 = v250 + (v336 >> 6);
                    v338 = (HIDWORD(v250) + 1);
                    v250 = (v338 << 32) | v250;
                    if (v338 == v337 - 1)
                    {
                      v250 = (v338 << 32) | v338;
                      v70 = *(v70 + 40);
                    }
                  }

                case 40:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1539) = v1539 + 1;
                  v66 = *(v50 + 32);
                  if (!v66)
                  {
                    v249 = 0;
                    goto LABEL_404;
                  }

                  v67 = 0;
                  while (1)
                  {
                    v68 = atomic_load((v66 + 4));
                    v69 = v67 + (v68 >> 6) - 1;
                    if (v69 > 0)
                    {
                      break;
                    }

                    v66 = *(v66 + 40);
                    v67 = v69;
                    if (!v66)
                    {
                      v67 = v69;
                      goto LABEL_403;
                    }
                  }

                  v69 = 0;
LABEL_403:
                  v249 = v67 | (v69 << 32);
LABEL_404:
                  v307 = 0;
                  v308 = 0;
                  v309 = 0;
                  v310 = 0;
                  v1487 = 0;
                  while (1)
                  {
                    v311 = v66 + 64;
                    do
                    {
                      if (!v66 || (v312 = v311 + ((HIDWORD(v249) - v249) << 6), (*(v312 + 15) & 8) == 0) || (v313 = *v312, *v312 >= v1525 + v1524))
                      {
                        v324 = v309;
                        v325 = apr_palloc(p, 0x38uLL);
                        v304 = v325;
                        *v325 = 90;
                        *(v325 + 1) = v307;
                        *(v325 + 1) = v308;
                        v305 = v325 + 8;
                        v306 = -1;
                        *(v325 + 2) = v324;
                        *(v325 + 3) = -1;
                        *(v325 + 4) = 0;
                        *(v325 + 5) = v310;
LABEL_1487:
                        *(v325 + 6) = v1487;
                        goto LABEL_1849;
                      }

                      v314 = *(v312 + 8);
                      if (v314 == -15175)
                      {
                        if (v1524 > v313)
                        {
                          goto LABEL_1852;
                        }

                        v1188 = v309;
                        v1189 = apr_palloc(p, 0x38uLL);
                        v1232 = v1189;
                        *v1189 = 90;
                        *(v1189 + 1) = v307;
                        *(v1189 + 1) = v308;
                        v1233 = v1189 + 8;
                        *(v1189 + 2) = v1188;
                        *(v1189 + 3) = -1;
                        *(v1189 + 4) = 0;
                        *(v1189 + 5) = v310;
                        goto LABEL_1846;
                      }

                      v315 = v1528;
                      if (v314 == -15197)
                      {
                        v317 = GTTraceFunc_argumentBytesWithMap((v311 + ((HIDWORD(v249) - v249) << 6)), *(v312 + 13), v1528);
                        v318 = v6;
                        v319 = *v312;
                        v307 = *(v312 + 8);
                        v310 = *v317;
                        v308 = *(v317 + 1);
                        v320 = GTTraceFunc_argumentBytesWithMap(v312, v317[24], v315);
                        v309 = v319;
                        v6 = v318;
                        v311 = v66 + 64;
                        v1487 = v320;
                      }

                      else if (v314 == -15198)
                      {
                        v316 = GTTraceFunc_argumentBytesWithMap((v311 + ((HIDWORD(v249) - v249) << 6)), *(v312 + 13), v1528);
                        v309 = *v312;
                        v307 = *(v312 + 8);
                        v310 = *v316;
                        v308 = *(v316 + 1);
                      }

                      v321 = atomic_load((v66 + 4));
                      v322 = v249 + (v321 >> 6);
                      v323 = (HIDWORD(v249) + 1);
                      v249 = (v323 << 32) | v249;
                    }

                    while (v323 != v322 - 1);
                    v249 = (v323 << 32) | v323;
                    v66 = *(v66 + 40);
                  }

                case 41:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  bzero(__src, 0x6B8uLL);
                  *__src = 88;
                  *&__src[24] = -1;
                  ++DWORD1(v1539);
                  v114 = *(v50 + 32);
                  if (!v114)
                  {
                    v261 = 0;
                    goto LABEL_727;
                  }

                  v115 = 0;
                  while (1)
                  {
                    v116 = atomic_load((v114 + 4));
                    v117 = v115 + (v116 >> 6) - 1;
                    if (v117 > 0)
                    {
                      break;
                    }

                    v114 = *(v114 + 40);
                    v115 = v117;
                    if (!v114)
                    {
                      v115 = v117;
                      goto LABEL_726;
                    }
                  }

                  v117 = 0;
LABEL_726:
                  v261 = v115 | (v117 << 32);
                  while (1)
                  {
LABEL_727:
                    if (!v114 || (v547 = v114 + 64, v548 = v114 + 64 + ((HIDWORD(v261) - v261) << 6), (*(v548 + 15) & 8) == 0) || (v549 = *v548, *v548 >= v1525 + v1524))
                    {
                      v575 = apr_palloc(p, 0x6B8uLL);
                      v576 = v575;
                      v577 = 1720;
                      goto LABEL_1510;
                    }

                    v550 = *(v548 + 8);
                    if ((v550 + 15181) < 4 || v550 == -14848)
                    {
                      if (v1524 <= v549)
                      {
                        v552 = apr_palloc(p, 0x6B8uLL);
                        memcpy(v552, __src, 0x6B8uLL);
                        v553 = *find_entry(ht, v552 + 8, 8uLL, 0);
                        if (v553)
                        {
                          v553 = *(v553 + 32);
                        }

                        *(v552 + 4) = v553;
                        apr_hash_set(ht, v552 + 8, 8, v552);
                        *(v552 + 3) = v549;
                        v550 = *(v548 + 8);
                      }
                    }

                    else if (v550 == -15182)
                    {
                      if (v1524 > v549)
                      {
                        goto LABEL_1852;
                      }

                      v1283 = apr_palloc(p, 0x6B8uLL);
                      v576 = v1283;
                      v1284 = 1720;
                      goto LABEL_1927;
                    }

                    v554 = v1528;
                    if (v550 <= -15181)
                    {
                      switch(v550)
                      {
                        case -15200:
                          v567 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1528);
                          *&__src[8] = *(v567 + 1);
                          *&__src[16] = *v548;
                          *&__src[4] = *(v548 + 8);
                          *&__src[40] = *v567;
                          *&__src[48] = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), v567[24], v554);
                          break;
                        case -15182:
                          *&__src[24] = *v548;
                          break;
                        case -15181:
                          v559 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1528);
                          v560 = *(v559 + 2);
                          *&__src[8 * v560 + 64] = *(v559 + 1);
                          v561 = 1 << v560;
                          v562 = (v560 >> 3) & 0x1FFFFFFFFFFFFFF8;
                          v563 = *&__src[v562 + 56] | v561;
LABEL_753:
                          *&__src[v562 + 56] = v563;
                          break;
                      }
                    }

                    else
                    {
                      if (v550 <= -15179)
                      {
                        if (v550 != -15180)
                        {
                          v555 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1528);
                          v556 = *(v555 + 1);
                          v557 = *(v555 + 2);
                          v558 = &__src[1592];
LABEL_755:
                          *&v558[8 * v557] = v556;
                          goto LABEL_757;
                        }

                        v568 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1528);
                        v569 = *(v568 + 2);
                        *&__src[8 * v569 + 64] = *(v568 + 1);
                        v570 = 1 << v569;
                        v562 = (v569 >> 3) & 0x1FFFFFFFFFFFFFF8;
                        v563 = *&__src[v562 + 56] & ~v570;
                        goto LABEL_753;
                      }

                      if (v550 == -15178)
                      {
                        v571 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1528);
                        v556 = *(v571 + 1);
                        v557 = *(v571 + 2);
                        v558 = &__src[568];
                        goto LABEL_755;
                      }

                      if (v550 == -14848)
                      {
                        v564 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1528);
                        v565 = *(v564 + 3);
                        *&__src[8 * v565 + 64] = *(v564 + 1);
                        v566 = (v565 >> 3) & 0x1FFFFFFFFFFFFFF8;
                        *&__src[v566 + 56] |= 1 << v565;
                        *&__src[8 * v565 + 320] = *(v564 + 2);
                        *&__src[v566 + 312] |= 1 << v565;
                      }
                    }

LABEL_757:
                    v572 = atomic_load((v114 + 4));
                    v573 = v261 + (v572 >> 6);
                    v574 = (HIDWORD(v261) + 1);
                    v261 = (v574 << 32) | v261;
                    if (v574 == v573 - 1)
                    {
                      v261 = (v574 << 32) | v574;
                      v114 = *(v114 + 40);
                    }
                  }

                case 42:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1539);
                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 120);
                  *__src = 103;
                  *&__src[24] = -1;
                  v152 = *(v50 + 32);
                  if (!v152)
                  {
                    v270 = 0;
                    goto LABEL_1057;
                  }

                  v153 = 0;
                  while (1)
                  {
                    v154 = atomic_load((v152 + 4));
                    v155 = v153 + (v154 >> 6) - 1;
                    if (v155 > 0)
                    {
                      break;
                    }

                    v152 = *(v152 + 40);
                    v153 = v155;
                    if (!v152)
                    {
                      v153 = v155;
                      goto LABEL_1056;
                    }
                  }

                  v155 = 0;
LABEL_1056:
                  v270 = v153 | (v155 << 32);
LABEL_1057:
                  while (v152)
                  {
                    v715 = v152 + 64 + ((HIDWORD(v270) - v270) << 6);
                    if ((*(v715 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v549 = *v715;
                    if (*v715 >= v1525 + v1524)
                    {
                      break;
                    }

                    v716 = *(v715 + 8);
                    if (((v716 + 20349) > 0x15 || ((1 << (v716 + 125)) & 0x3FE001) == 0) && (v716 + 20455) >= 9)
                    {
                      if (v716 == -20446)
                      {
LABEL_1924:
                        v1276 = apr_palloc(p, 0x98uLL);
                        v576 = v1276;
                        v1276[6] = *&__src[96];
                        v1276[7] = *&__src[112];
                        v1276[8] = *&__src[128];
                        *(v1276 + 18) = *&__src[144];
LABEL_1925:
                        v1276[2] = *&__src[32];
                        v1276[3] = *&__src[48];
                        v1276[4] = *&__src[64];
                        v1276[5] = *&__src[80];
                        *v1276 = *__src;
                        v1276[1] = *&__src[16];
                        goto LABEL_1786;
                      }
                    }

                    else if (v1524 <= v549)
                    {
                      v719 = apr_palloc(p, 0x98uLL);
                      *(v719 + 6) = *&__src[96];
                      *(v719 + 7) = *&__src[112];
                      *(v719 + 8) = *&__src[128];
                      v719[18] = *&__src[144];
                      *(v719 + 2) = *&__src[32];
                      *(v719 + 3) = *&__src[48];
                      *(v719 + 4) = *&__src[64];
                      *(v719 + 5) = *&__src[80];
                      *v719 = *__src;
                      *(v719 + 1) = *&__src[16];
                      v720 = *find_entry(ht, v719 + 8, 8uLL, 0);
                      if (v720)
                      {
                        v720 = *(v720 + 32);
                      }

                      v719[4] = v720;
                      apr_hash_set(ht, v719 + 1, 8, v719);
                      v719[3] = v549;
                    }

                    GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(__src, v1528, (v152 + 64 + ((HIDWORD(v270) - v270) << 6)));
                    v721 = atomic_load((v152 + 4));
                    v722 = v270 + (v721 >> 6);
                    v723 = (HIDWORD(v270) + 1);
                    v270 = (v723 << 32) | v270;
                    if (v723 == v722 - 1)
                    {
                      v270 = (v723 << 32) | v723;
                      v152 = *(v152 + 40);
                    }
                  }

LABEL_1471:
                  v598 = apr_palloc(p, 0x98uLL);
                  v576 = v598;
                  v598[6] = *&__src[96];
                  v598[7] = *&__src[112];
                  v598[8] = *&__src[128];
                  *(v598 + 18) = *&__src[144];
LABEL_1472:
                  v598[2] = *&__src[32];
                  v598[3] = *&__src[48];
                  v598[4] = *&__src[64];
                  v598[5] = *&__src[80];
                  *v598 = *__src;
                  v598[1] = *&__src[16];
                  goto LABEL_1816;
                case 43:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1539);
                  memset(&__src[32], 0, 304);
                  memset(__src, 0, 24);
                  *__src = 104;
                  *&__src[24] = -1;
                  v220 = *(v50 + 32);
                  if (!v220)
                  {
                    v285 = 0;
                    goto LABEL_1490;
                  }

                  v221 = 0;
                  while (1)
                  {
                    v222 = atomic_load((v220 + 4));
                    v223 = v221 + (v222 >> 6) - 1;
                    if (v223 > 0)
                    {
                      break;
                    }

                    v220 = *(v220 + 40);
                    v221 = v223;
                    if (!v220)
                    {
                      v221 = v223;
                      goto LABEL_1489;
                    }
                  }

                  v223 = 0;
LABEL_1489:
                  v285 = v221 | (v223 << 32);
                  while (1)
                  {
LABEL_1490:
                    if (!v220 || (v942 = v220 + 64 + ((HIDWORD(v285) - v285) << 6), (*(v942 + 15) & 8) == 0) || (v549 = *v942, *v942 >= v1525 + v1524))
                    {
                      v575 = apr_palloc(p, 0x150uLL);
                      v576 = v575;
                      v577 = 336;
                      goto LABEL_1510;
                    }

                    v943 = *(v942 + 8);
                    if ((v943 + 20444) < 0x17)
                    {
                      goto LABEL_1494;
                    }

                    if (v943 > -20349)
                    {
                      break;
                    }

                    if (v943 == -20420)
                    {
                      goto LABEL_1494;
                    }

                    if (v943 == -20421)
                    {
                      v1283 = apr_palloc(p, 0x150uLL);
                      v576 = v1283;
                      v1284 = 336;
                      goto LABEL_1927;
                    }

LABEL_1498:
                    GTMTLFXSMTemporalDenoisedScaler_processTraceFuncWithMap(__src, v1528, (v220 + 64 + ((HIDWORD(v285) - v285) << 6)));
                    v946 = atomic_load((v220 + 4));
                    v947 = v285 + (v946 >> 6);
                    v948 = (HIDWORD(v285) + 1);
                    v285 = (v948 << 32) | v285;
                    if (v948 == v947 - 1)
                    {
                      v285 = (v948 << 32) | v948;
                      v220 = *(v220 + 40);
                    }
                  }

                  if ((v943 + 20348) >= 2 && v943 != -18422)
                  {
                    goto LABEL_1498;
                  }

LABEL_1494:
                  if (v1524 <= v549)
                  {
                    v944 = apr_palloc(p, 0x150uLL);
                    memcpy(v944, __src, 0x150uLL);
                    v945 = *find_entry(ht, v944 + 8, 8uLL, 0);
                    if (v945)
                    {
                      v945 = *(v945 + 32);
                    }

                    *(v944 + 4) = v945;
                    apr_hash_set(ht, v944 + 8, 8, v944);
                    *(v944 + 3) = v549;
                  }

                  goto LABEL_1498;
                case 44:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1540) = v1540 + 1;
                  v62 = *(v50 + 32);
                  if (!v62)
                  {
                    v248 = 0;
                    goto LABEL_389;
                  }

                  v63 = 0;
                  while (1)
                  {
                    v64 = atomic_load((v62 + 4));
                    v65 = v63 + (v64 >> 6) - 1;
                    if (v65 > 0)
                    {
                      break;
                    }

                    v62 = *(v62 + 40);
                    v63 = v65;
                    if (!v62)
                    {
                      v63 = v65;
                      goto LABEL_388;
                    }
                  }

                  v65 = 0;
LABEL_388:
                  v248 = v63 | (v65 << 32);
LABEL_389:
                  v292 = 0;
                  v1433 = 0;
                  v1486 = 0;
                  v1458 = 0;
                  v1414 = 0;
                  while (v62)
                  {
                    v293 = v62 + 64;
                    v294 = v62 + 64 + ((HIDWORD(v248) - v248) << 6);
                    if ((*(v294 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v295 = *v294;
                    if (*v294 >= v1525 + v1524)
                    {
                      break;
                    }

                    v296 = *(v294 + 8);
                    if (v296 == -15144)
                    {
                      v297 = apr_palloc(p, 0x40uLL);
                      *v297 = 93;
                      *(v297 + 1) = v292;
                      v297[1] = v1433;
                      v297[2] = v1486;
                      v297[3] = -1;
                      v297[4] = 0;
                      v297[5] = v1458;
                      v297[6] = v1414;
                      v297[7] = 0;
                      v298 = *find_entry(ht, v297 + 8, 8uLL, 0);
                      if (v298)
                      {
                        v298 = *(v298 + 32);
                      }

                      v297[4] = v298;
                      apr_hash_set(ht, v297 + 1, 8, v297);
                      v297[3] = v295;
                      v296 = *(v294 + 8);
                    }

                    if (v296 == -15194)
                    {
                      v299 = v1528;
                      v300 = GTTraceFunc_argumentBytesWithMap((v293 + ((HIDWORD(v248) - v248) << 6)), *(v294 + 13), v1528);
                      v1486 = *v294;
                      v292 = *(v294 + 8);
                      v1433 = *(v300 + 1);
                      v1458 = *v300;
                      v1414 = GTTraceFunc_argumentBytesWithMap((v293 + ((HIDWORD(v248) - v248) << 6)), v300[24], v299);
                    }

                    v301 = atomic_load((v62 + 4));
                    v302 = v248 + (v301 >> 6);
                    v303 = (HIDWORD(v248) + 1);
                    v248 = (v303 << 32) | v248;
                    if (v303 == v302 - 1)
                    {
                      v248 = (v303 << 32) | v303;
                      v62 = *(v62 + 40);
                    }
                  }

                  v304 = apr_palloc(p, 0x40uLL);
                  *v304 = 93;
                  *(v304 + 1) = v292;
                  *(v304 + 1) = v1433;
                  v305 = v304 + 8;
                  v306 = -1;
                  *(v304 + 2) = v1486;
                  *(v304 + 3) = -1;
                  *(v304 + 4) = 0;
                  *(v304 + 5) = v1458;
                  *(v304 + 6) = v1414;
                  *(v304 + 7) = 0;
                  goto LABEL_1849;
                case 45:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD1(v1540);
                  v78 = *(v50 + 32);
                  if (!v78)
                  {
                    v252 = 0;
                    goto LABEL_465;
                  }

                  v79 = 0;
                  while (1)
                  {
                    v80 = atomic_load((v78 + 4));
                    v81 = v79 + (v80 >> 6) - 1;
                    if (v81 > 0)
                    {
                      break;
                    }

                    v78 = *(v78 + 40);
                    v79 = v81;
                    if (!v78)
                    {
                      v79 = v81;
LABEL_464:
                      v252 = v79 | (v81 << 32);
LABEL_465:
                      v354 = 0;
                      v355 = 0;
                      v1461 = 0;
                      v1490 = 0;
                      v356 = 0;
                      v1435 = 0;
                      while (v78)
                      {
                        v357 = v78 + 64;
                        v358 = v78 + 64 + ((HIDWORD(v252) - v252) << 6);
                        if ((*(v358 + 15) & 8) == 0)
                        {
                          break;
                        }

                        v359 = *v358;
                        if (*v358 >= v1525 + v1524)
                        {
                          break;
                        }

                        v360 = *(v358 + 8);
                        if (v360 == -14825)
                        {
                          if (v1524 > v359)
                          {
                            goto LABEL_1852;
                          }

                          v1190 = apr_palloc(p, 0x40uLL);
                          v1190->i32[0] = 106;
                          v1190->i32[1] = v354;
                          v1190->i64[1] = v355;
                          v1191 = &v1190->i8[8];
                          v1190[1].i64[0] = v1461;
                          v1190[1].i64[1] = -1;
                          v1190[2].i64[0] = 0;
                          v1190[2].i64[1] = v1490;
                          v1190[3].i64[0] = v356;
                          v1190[3].i64[1] = v1435;
LABEL_1837:
                          v1206 = *find_entry(ht, v1191, 8uLL, 0);
                          if (v1206)
                          {
                            v1206 = *(v1206 + 32);
                          }

                          v1190[2].i64[0] = v1206;
                          apr_hash_set(ht, v1191, 8, v1190);
                          v1190[1].i64[1] = v359;
                          goto LABEL_1852;
                        }

                        if ((v360 + 14869) <= 1)
                        {
                          v361 = v1528;
                          v362 = GTTraceFunc_argumentBytesWithMap((v357 + ((HIDWORD(v252) - v252) << 6)), *(v358 + 13), v1528);
                          v1461 = *v358;
                          v354 = *(v358 + 8);
                          v355 = *(v362 + 1);
                          v1490 = *v362;
                          v1435 = GTTraceFunc_argumentBytesWithMap((v357 + ((HIDWORD(v252) - v252) << 6)), *(v358 + 14), v361);
                          v356 = GTTraceFunc_argumentBytesWithMap((v357 + ((HIDWORD(v252) - v252) << 6)), v362[24], v361);
                        }

                        v363 = atomic_load((v78 + 4));
                        v364 = v252 + (v363 >> 6);
                        v365 = (HIDWORD(v252) + 1);
                        v252 = (v365 << 32) | v252;
                        if (v365 == v364 - 1)
                        {
                          v252 = (v365 << 32) | v365;
                          v78 = *(v78 + 40);
                        }
                      }

                      v366 = apr_palloc(p, 0x40uLL);
                      *v366 = 106;
                      *(v366 + 1) = v354;
                      v366[1] = v355;
                      v367 = v366 + 1;
                      v368 = -1;
                      v366[2] = v1461;
                      v366[3] = -1;
                      v366[4] = 0;
                      v366[5] = v1490;
                      v366[6] = v356;
                      v366[7] = v1435;
LABEL_1352:
                      v864 = *find_entry(ht, v367, 8uLL, 0);
                      if (v864)
                      {
                        v864 = *(v864 + 32);
                      }

                      v366[4] = v864;
                      apr_hash_set(ht, v367, 8, v366);
                      v366[3] = v368;
                      goto LABEL_1852;
                    }
                  }

                  v81 = 0;
                  goto LABEL_464;
                case 46:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1540);
                  v1547 = 0;
                  v1546 = 0;
                  v1545 = 0;
                  v1544 = 0;
                  v1543 = 0;
                  v1542 = 0;
                  *__src = -1;
                  v166 = *(v50 + 32);
                  if (!v166)
                  {
                    v273 = 0;
                    goto LABEL_1150;
                  }

                  v167 = 0;
                  do
                  {
                    v168 = atomic_load((v166 + 4));
                    v169 = v167 + (v168 >> 6) - 1;
                    if (v169 > 0)
                    {
                      v169 = 0;
                      goto LABEL_1149;
                    }

                    v166 = *(v166 + 40);
                    v167 = v169;
                  }

                  while (v166);
                  v167 = v169;
LABEL_1149:
                  v273 = v167 | (v169 << 32);
LABEL_1150:
                  v1406 = 0;
                  v1424 = 0;
                  v1449 = 0;
                  v1500 = 0;
                  v1473 = 0;
                  v774 = 0;
                  while (1)
                  {
                    if (!v166 || (v775 = v166 + 64, v776 = (v166 + 64 + ((HIDWORD(v273) - v273) << 6)), (v776[15] & 8) == 0) || (v306 = *v776, *v776 >= v1525 + v1524))
                    {
                      v339 = apr_palloc(p, 0x70uLL);
                      *v339 = 108;
                      *(v339 + 1) = v1406;
                      *(v339 + 1) = v1424;
                      v340 = v339 + 8;
                      v791 = *__src;
                      *(v339 + 2) = v1449;
                      *(v339 + 3) = v791;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1500;
                      *(v339 + 6) = v1473;
                      *(v339 + 7) = v774;
                      v792 = v1546;
                      *(v339 + 8) = v1547;
                      *(v339 + 9) = v792;
                      v793 = v1544;
                      *(v339 + 10) = v1545;
                      *(v339 + 11) = v793;
                      v794 = v1542;
                      *(v339 + 12) = v1543;
                      *(v339 + 13) = v794;
                      goto LABEL_1562;
                    }

                    v777 = *(v776 + 2);
                    if ((v777 + 20405) < 5 || v777 == -20326)
                    {
                      if (v1524 <= v306)
                      {
                        v779 = apr_palloc(p, 0x70uLL);
                        *v779 = 108;
                        *(v779 + 1) = v1406;
                        v779[1] = v1424;
                        v780 = *__src;
                        v779[2] = v1449;
                        v779[3] = v780;
                        v779[4] = 0;
                        v779[5] = v1500;
                        v779[6] = v1473;
                        v779[7] = v774;
                        v781 = v1546;
                        v779[8] = v1547;
                        v779[9] = v781;
                        v782 = v1544;
                        v779[10] = v1545;
                        v779[11] = v782;
                        v783 = v1542;
                        v779[12] = v1543;
                        v779[13] = v783;
                        v784 = *find_entry(ht, v779 + 8, 8uLL, 0);
                        if (v784)
                        {
                          v784 = *(v784 + 32);
                        }

                        v779[4] = v784;
                        apr_hash_set(ht, v779 + 1, 8, v779);
                        v779[3] = v306;
                        v777 = *(v776 + 2);
                      }
                    }

                    else if (v777 == -20399)
                    {
                      v304 = apr_palloc(p, 0x70uLL);
                      *v304 = 108;
                      *(v304 + 1) = v1406;
                      *(v304 + 1) = v1424;
                      v305 = v304 + 8;
                      v1279 = *__src;
                      *(v304 + 2) = v1449;
                      *(v304 + 3) = v1279;
                      *(v304 + 4) = 0;
                      *(v304 + 5) = v1500;
                      *(v304 + 6) = v1473;
                      *(v304 + 7) = v774;
                      v1280 = v1546;
                      *(v304 + 8) = v1547;
                      *(v304 + 9) = v1280;
                      v1281 = v1544;
                      *(v304 + 10) = v1545;
                      *(v304 + 11) = v1281;
                      v1282 = v1542;
                      *(v304 + 12) = v1543;
                      *(v304 + 13) = v1282;
                      goto LABEL_1849;
                    }

                    v785 = v1528;
                    if (v777 > -20402)
                    {
                      if (v777 > -20327)
                      {
                        if (v777 == -20326)
                        {
                          v776 = GTTraceFunc_argumentBytesWithMap((v775 + ((HIDWORD(v273) - v273) << 6)), v776[13], v1528) + 8;
                          v786 = &v1542;
                          goto LABEL_1183;
                        }

                        if (v777 == -18427)
                        {
                          v787 = GTTraceFunc_argumentBytesWithMap((v775 + ((HIDWORD(v273) - v273) << 6)), v776[13], v1528);
                          v1449 = *v776;
                          v1406 = *(v776 + 2);
                          v1424 = *(v787 + 1);
                          v1500 = *v787;
                          v1473 = *(v787 + 2);
                          v774 = GTTraceFunc_argumentBytesWithMap((v775 + ((HIDWORD(v273) - v273) << 6)), v787[24], v785);
                          v776 = v774 + 8;
                          v1544 = *v774;
                          goto LABEL_1181;
                        }
                      }

                      else
                      {
                        if (v777 == -20401)
                        {
                          v776 = GTTraceFunc_argumentBytesWithMap((v775 + ((HIDWORD(v273) - v273) << 6)), v776[13], v1528) + 8;
                          v786 = &v1545;
                          goto LABEL_1183;
                        }

                        if (v777 == -20399)
                        {
                          v786 = __src;
                          goto LABEL_1183;
                        }
                      }
                    }

                    else
                    {
                      if (v777 > -20404)
                      {
                        if (v777 == -20403)
                        {
                          v776 = GTTraceFunc_argumentBytesWithMap((v775 + ((HIDWORD(v273) - v273) << 6)), v776[13], v1528) + 8;
LABEL_1181:
                          v786 = &v1543;
                        }

                        else
                        {
                          v776 = GTTraceFunc_argumentBytesWithMap((v775 + ((HIDWORD(v273) - v273) << 6)), v776[13], v1528) + 8;
                          v786 = &v1544;
                        }

LABEL_1183:
                        *v786 = *v776;
                        goto LABEL_1184;
                      }

                      if (v777 == -20405)
                      {
                        v776 = GTTraceFunc_argumentBytesWithMap((v775 + ((HIDWORD(v273) - v273) << 6)), v776[13], v1528) + 8;
                        v786 = &v1546;
                        goto LABEL_1183;
                      }

                      if (v777 == -20404)
                      {
                        v776 = GTTraceFunc_argumentBytesWithMap((v775 + ((HIDWORD(v273) - v273) << 6)), v776[13], v1528) + 8;
                        v786 = &v1547;
                        goto LABEL_1183;
                      }
                    }

LABEL_1184:
                    v788 = atomic_load((v166 + 4));
                    v789 = v273 + (v788 >> 6);
                    v790 = (HIDWORD(v273) + 1);
                    v273 = (v790 << 32) | v273;
                    if (v790 == v789 - 1)
                    {
                      v273 = (v790 << 32) | v790;
                      v166 = *(v166 + 40);
                    }
                  }

                case 47:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1540);
                  v191 = *(v50 + 32);
                  if (!v191)
                  {
                    v279 = 0;
                    goto LABEL_1357;
                  }

                  v192 = 0;
                  do
                  {
                    v193 = atomic_load((v191 + 4));
                    v194 = v192 + (v193 >> 6) - 1;
                    if (v194 > 0)
                    {
                      v194 = 0;
                      goto LABEL_1356;
                    }

                    v191 = *(v191 + 40);
                    v192 = v194;
                  }

                  while (v191);
                  v192 = v194;
LABEL_1356:
                  v279 = v192 | (v194 << 32);
LABEL_1357:
                  v1315 = 0;
                  v1310 = 0;
                  v1318 = 0;
                  v1322 = 0;
                  v1326 = 0;
                  v865 = 0;
                  v1335 = 0;
                  v1340 = 0;
                  v1346 = 0;
                  v1353 = 0;
                  v1363 = 0;
                  v1373 = 0;
                  v1383 = 0;
                  v1395 = 0;
                  LOBYTE(v1410) = 0;
                  v1428 = 0;
                  v1312 = 0;
                  v190.i64[0] = 0;
                  v1477 = 0u;
                  v1504 = v190;
                  v866 = 0.0;
                  v190.i64[0] = 0;
                  v1453 = v190;
                  v1330 = -1;
                  while (1)
                  {
                    if (!v191 || (v867 = v191 + 64, v868 = v191 + 64 + ((HIDWORD(v279) - v279) << 6), (*(v868 + 15) & 8) == 0) || (v306 = *v868, *v868 >= v1525 + v1524))
                    {
                      v339 = apr_palloc(p, 0xA8uLL);
                      *(v339 + 1) = v1310;
                      v340 = v339 + 8;
                      *v339 = 109;
                      *(v339 + 1) = v1315;
                      *(v339 + 2) = v1318;
                      *(v339 + 3) = v1330;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1326;
                      *(v339 + 6) = v1322;
                      *(v339 + 7) = v865;
                      *(v339 + 8) = v1335;
                      *(v339 + 9) = v1340;
                      *(v339 + 10) = v1346;
                      *(v339 + 11) = v1353;
                      *(v339 + 12) = v1363;
                      *(v339 + 13) = v1373;
                      *(v339 + 14) = v1383;
                      *(v339 + 120) = v1477;
                      *(v339 + 17) = v1395;
                      *(v339 + 18) = *&v1453.f64[0];
                      *(v339 + 19) = v1504.i64[0];
                      *(v339 + 40) = v866;
                      v339[164] = v1410;
                      v339[165] = v1428;
                      v339[166] = v1312;
                      v339[167] = 0;
                      goto LABEL_1562;
                    }

                    v869 = *(v868 + 8);
                    v870 = (v869 + 20369);
                    if (v870 > 0x2D)
                    {
                      goto LABEL_1398;
                    }

                    if (((1 << (v869 - 111)) & 0x20000005DFFFLL) == 0)
                    {
                      break;
                    }

LABEL_1363:
                    if (v1524 <= v306)
                    {
                      v871 = apr_palloc(p, 0xA8uLL);
                      v871[1] = v1310;
                      *v871 = 109;
                      *(v871 + 1) = v1315;
                      v871[2] = v1318;
                      v871[3] = v1330;
                      v871[4] = 0;
                      v871[5] = v1326;
                      v871[6] = v1322;
                      v871[7] = v865;
                      v871[8] = v1335;
                      v871[9] = v1340;
                      v871[10] = v1346;
                      v871[11] = v1353;
                      v871[12] = v1363;
                      v871[13] = v1373;
                      v871[14] = v1383;
                      *(v871 + 15) = v1477;
                      v871[17] = v1395;
                      v871[18] = *&v1453.f64[0];
                      v871[19] = v1504.i64[0];
                      *(v871 + 40) = v866;
                      *(v871 + 164) = v1410;
                      *(v871 + 165) = v1428;
                      *(v871 + 166) = v1312;
                      *(v871 + 167) = 0;
                      v872 = *find_entry(ht, v871 + 8, 8uLL, 0);
                      if (v872)
                      {
                        v872 = *(v872 + 32);
                      }

                      v871[4] = v872;
                      apr_hash_set(ht, v871 + 1, 8, v871);
                      v871[3] = v306;
                      v869 = *(v868 + 8);
                    }

LABEL_1367:
                    v873 = v1528;
                    switch(v869)
                    {
                      case -20369:
                        v1340 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 1);
                        goto LABEL_1395;
                      case -20368:
                        v1410 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 2);
                        goto LABEL_1395;
                      case -20367:
                        v1346 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 1);
                        goto LABEL_1395;
                      case -20366:
                        v1363 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 1);
                        goto LABEL_1395;
                      case -20365:
                        v1335 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 1);
                        goto LABEL_1395;
                      case -20364:
                        v877 = GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528);
                        v878.i64[0] = v1477.i64[0];
                        v878.i64[1] = *(v877 + 1);
                        goto LABEL_1379;
                      case -20363:
                        v881 = GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528);
                        v878.i64[1] = v1477.i64[1];
                        v878.i64[0] = *(v881 + 1);
LABEL_1379:
                        v1477 = v878;
                        goto LABEL_1395;
                      case -20362:
                        v884 = GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528);
                        v880 = v1453;
                        LODWORD(v880.f64[0]) = *(v884 + 2);
                        goto LABEL_1389;
                      case -20361:
                        v879 = GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528);
                        v880 = v1453;
                        HIDWORD(v880.f64[0]) = *(v879 + 2);
LABEL_1389:
                        v1453 = v880;
                        goto LABEL_1395;
                      case -20360:
                        v1353 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 1);
                        goto LABEL_1395;
                      case -20359:
                        v882 = GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528);
                        v883 = v1504;
                        v883.i32[0] = *(v882 + 2);
                        goto LABEL_1391;
                      case -20358:
                        v885 = GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528);
                        v883 = v1504;
                        v883.i32[1] = *(v885 + 2);
LABEL_1391:
                        v1504 = v883;
                        goto LABEL_1395;
                      case -20357:
                        v1373 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 1);
                        goto LABEL_1395;
                      case -20356:
                      case -20350:
                      case -20349:
                      case -20348:
                      case -20347:
                      case -20346:
                      case -20345:
                      case -20344:
                      case -20343:
                      case -20342:
                      case -20341:
                      case -20340:
                      case -20339:
                      case -20338:
                      case -20337:
                      case -20336:
                      case -20335:
                      case -20334:
                      case -20333:
                      case -20332:
                      case -20331:
                      case -20330:
                      case -20329:
                      case -20328:
                      case -20327:
                      case -20326:
                      case -20325:
                        goto LABEL_1395;
                      case -20355:
                        v866 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 2);
                        goto LABEL_1395;
                      case -20354:
                        v1383 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 1);
                        goto LABEL_1395;
                      case -20353:
                        v876 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 2);
                        goto LABEL_1382;
                      case -20352:
                        v1330 = *v868;
                        goto LABEL_1395;
                      case -20351:
                        v1428 = 0;
                        goto LABEL_1395;
                      case -20324:
                        v1395 = *(GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528) + 1);
                        goto LABEL_1395;
                      default:
                        if (v869 == -18423)
                        {
                          v1312 = GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528)[8];
                        }

                        else if (v869 == -18426)
                        {
                          v874 = GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), *(v868 + 13), v1528);
                          v1315 = *(v868 + 8);
                          v1310 = *(v874 + 1);
                          v1326 = *v874;
                          v1318 = *v868;
                          v1322 = *(v874 + 2);
                          v865 = GTTraceFunc_argumentBytesWithMap((v867 + ((HIDWORD(v279) - v279) << 6)), v874[24], v873);
                          v1477 = *(v865 + 1);
                          v875 = vcvtq_f64_u64(v1477);
                          *&v875.f64[0] = vneg_f32(vcvt_f32_f64(v875));
                          v1504 = v875;
                          v875.f64[0] = 0.0;
                          v1453 = v875;
                          LOBYTE(v876) = 1;
                          LOBYTE(v1410) = 1;
                          v866 = 1.0;
LABEL_1382:
                          v1428 = v876;
                        }

LABEL_1395:
                        v886 = atomic_load((v191 + 4));
                        v887 = v279 + (v886 >> 6);
                        v888 = (HIDWORD(v279) + 1);
                        v279 = (v888 << 32) | v279;
                        if (v888 == v887 - 1)
                        {
                          v279 = (v888 << 32) | v888;
                          v191 = *(v191 + 40);
                        }

                        break;
                    }
                  }

                  if (v870 == 17)
                  {
                    v304 = apr_palloc(p, 0xA8uLL);
                    *(v304 + 1) = v1310;
                    v305 = v304 + 8;
                    *v304 = 109;
                    *(v304 + 1) = v1315;
                    *(v304 + 2) = v1318;
                    *(v304 + 3) = v1330;
                    *(v304 + 4) = 0;
                    *(v304 + 5) = v1326;
                    *(v304 + 6) = v1322;
                    *(v304 + 7) = v865;
                    *(v304 + 8) = v1335;
                    *(v304 + 9) = v1340;
                    *(v304 + 10) = v1346;
                    *(v304 + 11) = v1353;
                    *(v304 + 12) = v1363;
                    *(v304 + 13) = v1373;
                    *(v304 + 14) = v1383;
                    *(v304 + 120) = v1477;
                    *(v304 + 17) = v1395;
                    *(v304 + 18) = *&v1453.f64[0];
                    *(v304 + 19) = v1504.i64[0];
                    *(v304 + 40) = v866;
                    v304[164] = v1410;
                    v304[165] = v1428;
                    v304[166] = v1312;
                    v304[167] = 0;
                    goto LABEL_1849;
                  }

LABEL_1398:
                  if (v869 != -18423)
                  {
                    goto LABEL_1367;
                  }

                  goto LABEL_1363;
                case 48:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1539);
                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 136);
                  *__src = 107;
                  *&__src[24] = -1;
                  v244 = *(v50 + 32);
                  if (!v244)
                  {
                    v291 = 0;
                    goto LABEL_1624;
                  }

                  v245 = 0;
                  while (1)
                  {
                    v246 = atomic_load((v244 + 4));
                    v247 = v245 + (v246 >> 6) - 1;
                    if (v247 > 0)
                    {
                      break;
                    }

                    v244 = *(v244 + 40);
                    v245 = v247;
                    if (!v244)
                    {
                      v245 = v247;
                      goto LABEL_1623;
                    }
                  }

                  v247 = 0;
LABEL_1623:
                  v291 = v245 | (v247 << 32);
LABEL_1624:
                  while (v244)
                  {
                    v1025 = v244 + 64 + ((HIDWORD(v291) - v291) << 6);
                    if ((*(v1025 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v549 = *v1025;
                    if (*v1025 >= v1525 + v1524)
                    {
                      break;
                    }

                    v1026 = *(v1025 + 8);
                    v1027 = (v1026 + 20419) > 0xB || ((1 << (v1026 - 61)) & 0xDFD) == 0;
                    if (v1027 && ((v1026 + 20345) <= 0x12 ? (v1028 = ((1 << (v1026 + 121)) & 0x401FF) == 0) : (v1028 = 1), v1028))
                    {
                      if (v1026 == -20475)
                      {
                        v576 = apr_palloc(p, 0xA8uLL);
                        v576[7] = *&__src[112];
                        v576[8] = *&__src[128];
                        v576[9] = *&__src[144];
                        *(v576 + 20) = *&__src[160];
                        v576[3] = *&__src[48];
                        v576[4] = *&__src[64];
                        v576[5] = *&__src[80];
                        v576[6] = *&__src[96];
                        *v576 = *__src;
                        v576[1] = *&__src[16];
                        v576[2] = *&__src[32];
                        goto LABEL_1786;
                      }
                    }

                    else if (v1524 <= v549)
                    {
                      v1029 = apr_palloc(p, 0xA8uLL);
                      *(v1029 + 7) = *&__src[112];
                      *(v1029 + 8) = *&__src[128];
                      *(v1029 + 9) = *&__src[144];
                      v1029[20] = *&__src[160];
                      *(v1029 + 3) = *&__src[48];
                      *(v1029 + 4) = *&__src[64];
                      *(v1029 + 5) = *&__src[80];
                      *(v1029 + 6) = *&__src[96];
                      *v1029 = *__src;
                      *(v1029 + 1) = *&__src[16];
                      *(v1029 + 2) = *&__src[32];
                      v1030 = *find_entry(ht, v1029 + 8, 8uLL, 0);
                      if (v1030)
                      {
                        v1030 = *(v1030 + 32);
                      }

                      v1029[4] = v1030;
                      apr_hash_set(ht, v1029 + 1, 8, v1029);
                      v1029[3] = v549;
                    }

                    GTMTL4FXSMFrameInterpolator_processTraceFuncWithMap(__src, v1528, (v244 + 64 + ((HIDWORD(v291) - v291) << 6)));
                    v1031 = atomic_load((v244 + 4));
                    v1032 = v291 + (v1031 >> 6);
                    v1033 = (HIDWORD(v291) + 1);
                    v291 = (v1033 << 32) | v291;
                    if (v1033 == v1032 - 1)
                    {
                      v291 = (v1033 << 32) | v1033;
                      v244 = *(v244 + 40);
                    }
                  }

                  v576 = apr_palloc(p, 0xA8uLL);
                  v576[7] = *&__src[112];
                  v576[8] = *&__src[128];
                  v576[9] = *&__src[144];
                  *(v576 + 20) = *&__src[160];
                  v576[3] = *&__src[48];
                  v576[4] = *&__src[64];
                  v576[5] = *&__src[80];
                  v576[6] = *&__src[96];
                  *v576 = *__src;
                  v576[1] = *&__src[16];
                  v576[2] = *&__src[32];
                  goto LABEL_1816;
                case 49:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1524, v1525, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1541);
                  memset(&__src[32], 0, 320);
                  memset(__src, 0, 24);
                  *__src = 110;
                  *&__src[24] = -1;
                  v178 = *(v50 + 32);
                  if (!v178)
                  {
                    v276 = 0;
                    break;
                  }

                  v179 = 0;
                  while (1)
                  {
                    v180 = atomic_load((v178 + 4));
                    v181 = v179 + (v180 >> 6) - 1;
                    if (v181 > 0)
                    {
                      break;
                    }

                    v178 = *(v178 + 40);
                    v179 = v181;
                    if (!v178)
                    {
                      v179 = v181;
                      goto LABEL_1260;
                    }
                  }

                  v181 = 0;
LABEL_1260:
                  v276 = v179 | (v181 << 32);
                  break;
                default:
                  goto LABEL_1852;
              }

              while (2)
              {
                if (!v178 || (v826 = v178 + 64, v827 = v178 + 64 + ((HIDWORD(v276) - v276) << 6), (*(v827 + 15) & 8) == 0) || (v549 = *v827, *v827 >= v1525 + v1524))
                {
                  v575 = apr_palloc(p, 0x160uLL);
                  v576 = v575;
                  v577 = 352;
LABEL_1510:
                  memcpy(v575, __src, v577);
LABEL_1816:
                  v1187 = *find_entry(ht, v576 + 8, 8uLL, 0);
                  if (v1187)
                  {
                    v1187 = *(v1187 + 32);
                  }

                  *(v576 + 4) = v1187;
                  apr_hash_set(ht, v576 + 8, 8, v576);
                  v549 = -1;
                  goto LABEL_1819;
                }

                v828 = *(v827 + 8);
                if ((v828 + 20397) < 0x10)
                {
LABEL_1267:
                  if (v1524 <= v549)
                  {
                    v830 = apr_palloc(p, 0x160uLL);
                    memcpy(v830, __src, 0x160uLL);
                    v831 = *find_entry(ht, v830 + 8, 8uLL, 0);
                    if (v831)
                    {
                      v831 = *(v831 + 32);
                    }

                    *(v830 + 4) = v831;
                    apr_hash_set(ht, v830 + 8, 8, v830);
                    *(v830 + 3) = v549;
                    v828 = *(v827 + 8);
                  }
                }

                else
                {
                  v829 = (v828 + 20380);
                  if (v829 <= 0x37)
                  {
                    if (((1 << (v828 - 100)) & 0x800000000005FFLL) != 0)
                    {
                      goto LABEL_1267;
                    }

                    if (v829 == 9)
                    {
                      v1283 = apr_palloc(p, 0x160uLL);
                      v576 = v1283;
                      v1284 = 352;
LABEL_1927:
                      memcpy(v1283, __src, v1284);
                      goto LABEL_1786;
                    }
                  }
                }

                v832 = v1528;
                if (v828 > -20326)
                {
                  if (v828 > -20318)
                  {
                    if (v828 == -20317)
                    {
                      *&__src[192] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                    }

                    else if (v828 == -18424)
                    {
                      v833 = GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528);
                      *&__src[8] = *(v833 + 1);
                      *&__src[16] = *v827;
                      *&__src[4] = *(v827 + 8);
                      *&__src[40] = *v833;
                      *&__src[48] = *(v833 + 2);
                      v834 = GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), v833[24], v832);
                      v835 = 0;
                      *&__src[56] = v834;
                      *&__src[200] = 0;
                      v836 = *(v834 + 24);
                      *&__src[216] = 1065353216;
                      *&__src[348] = 257;
                      *&__src[168] = v836;
                      *&__src[208] = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v836)));
                      do
                      {
                        if (v835 > 0xA || (v837 = 1.0, ((1 << v835) & 0x421) == 0))
                        {
                          v837 = 0.0;
                          if (v835 == 15)
                          {
                            v837 = 1.0;
                          }
                        }

                        *&__src[4 * v835++ + 220] = v837;
                      }

                      while (v835 != 16);
                      for (k = 0; k != 16; ++k)
                      {
                        if (k > 0xA || (v839 = 1.0, ((1 << k) & 0x421) == 0))
                        {
                          v839 = 0.0;
                          if (k == 15)
                          {
                            v839 = 1.0;
                          }
                        }

                        *&__src[4 * k + 284] = v839;
                      }
                    }
                  }

                  else if (v828 == -20325)
                  {
                    *&__src[184] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                  }

                  else if (v828 == -20318)
                  {
                    __src[349] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 2);
                  }
                }

                else
                {
                  switch(v828)
                  {
                    case -20397:
                      *&__src[72] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20396:
                      *&__src[160] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20395:
                      __src[348] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 2);
                      break;
                    case -20394:
                      *&__src[80] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20393:
                      *&__src[96] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20392:
                      *&__src[136] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20391:
                      *&__src[64] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20390:
                      *&__src[176] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20389:
                      *&__src[168] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20388:
                      *&__src[200] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 2);
                      break;
                    case -20387:
                      *&__src[204] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 2);
                      break;
                    case -20386:
                      *&__src[88] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20385:
                      *&__src[208] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 2);
                      break;
                    case -20384:
                      *&__src[212] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 2);
                      break;
                    case -20383:
                      *&__src[112] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20382:
                      *&__src[144] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20380:
                      *&__src[216] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 2);
                      break;
                    case -20378:
                      *&__src[152] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20376:
                      *&__src[120] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20375:
                      *&__src[104] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20374:
                      *&__src[128] = *(GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528) + 1);
                      break;
                    case -20373:
                      v841 = GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528);
                      *&__src[284] = *(v841 + 8);
                      *&__src[300] = *(v841 + 24);
                      *&__src[316] = *(v841 + 40);
                      *&__src[332] = *(v841 + 56);
                      break;
                    case -20372:
                      v840 = GTTraceFunc_argumentBytesWithMap((v826 + ((HIDWORD(v276) - v276) << 6)), *(v827 + 13), v1528);
                      *&__src[220] = *(v840 + 8);
                      *&__src[236] = *(v840 + 24);
                      *&__src[252] = *(v840 + 40);
                      *&__src[268] = *(v840 + 56);
                      break;
                    case -20371:
                      *&__src[24] = *v827;
                      break;
                    case -20370:
                      __src[349] = 0;
                      break;
                    default:
                      break;
                  }
                }

                v842 = atomic_load((v178 + 4));
                v843 = v276 + (v842 >> 6);
                v844 = (HIDWORD(v276) + 1);
                v276 = (v844 << 32) | v276;
                if (v844 == v843 - 1)
                {
                  v276 = (v844 << 32) | v844;
                  v178 = *(v178 + 40);
                }

                continue;
              }
            }

LABEL_1852:
            v18 = v1513;
            v20 = v1514;
          }
        }
      }

      ++v20;
    }

    while (v20 != v18);
  }

  v1285 = &v1529;
  v1286 = apr_palloc(v6, 0x198uLL);
  v25 = v1286;
  if (v1286)
  {
    *(v1286 + 8) = 0u;
    *(v1286 + 376) = 0u;
    *(v1286 + 392) = 0u;
    *(v1286 + 344) = 0u;
    *(v1286 + 360) = 0u;
    *(v1286 + 312) = 0u;
    *(v1286 + 328) = 0u;
    *(v1286 + 280) = 0u;
    *(v1286 + 296) = 0u;
    *(v1286 + 248) = 0u;
    *(v1286 + 264) = 0u;
    *(v1286 + 216) = 0u;
    *(v1286 + 232) = 0u;
    *(v1286 + 184) = 0u;
    *(v1286 + 200) = 0u;
    *(v1286 + 152) = 0u;
    *(v1286 + 168) = 0u;
    *(v1286 + 120) = 0u;
    *(v1286 + 136) = 0u;
    *(v1286 + 88) = 0u;
    *(v1286 + 104) = 0u;
    *(v1286 + 56) = 0u;
    *(v1286 + 72) = 0u;
    *(v1286 + 24) = 0u;
    *(v1286 + 40) = 0u;
  }

  *v1286 = ht;
  for (m = 1; m != 51; ++m)
  {
    v1288 = *v1285++;
    v25[m] = apr_array_make(v6, v1288, 8);
  }

  v1289 = *v25;
  *(v1289 + 24) = 0;
  *(v1289 + 32) = 0;
  *(v1289 + 16) = v1289;
  *(v1289 + 40) = 0;
  v1290 = apr_hash_next((v1289 + 16));
  if (v1290)
  {
    v1291 = v1290;
    do
    {
      v1292 = *(*(v1291 + 1) + 32);
      v1293 = *v1292 - 2;
      if (v1293 <= 0x6C)
      {
        v1294 = byte_24DA91F13[v1293];
        if (v1294 != -1)
        {
          *apr_array_push(v25[v1294 + 1]) = v1292;
        }
      }

      v1291 = apr_hash_next(v1291);
    }

    while (v1291);
  }

  v1295 = v25[32];
  v1296 = *(v1295 + 12);
  if (v1296 > 0)
  {
    v1297 = v1296 - 1;
    do
    {
      v1298 = *(*(v1295 + 24) + 8 * v1297);
      *__src = *(v1298 + 48);
      v1299 = *find_entry(*v25, __src, 8uLL, 0);
      if (!v1299 || !*(v1299 + 32))
      {
        apr_hash_set(*v25, (v1298 + 8), 8, 0);
        v1300 = *(v1295 + 12);
        *(*(v1295 + 24) + 8 * v1297) = *(*(v1295 + 24) + 8 * v1300 - 8);
        if (v1300)
        {
          *(v1295 + 12) = v1300 - 1;
        }
      }

      v1301 = v1297-- + 1;
    }

    while (v1301 > 1);
  }

  for (n = 1; n != 51; ++n)
  {
    qsort(*(v25[n] + 24), *(v25[n] + 12), *(v25[n] + 8), GTMTLSMObject_compare);
  }

  apr_pool_destroy(newpool);
  return v25;
}

void GTMTLSMCommandEncoder_processTraceFunc(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1 + 8616;
  v7 = *(a2 + 2);
  if (v7 > -16078)
  {
    if (v7 > -15460)
    {
      if (v7 <= -15365)
      {
        switch(v7)
        {
          case -15459:
          case -15458:
          case -15456:
            v11 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v12 = *(v11 + 2);
            v13 = 1 << v12;
            v14 = a1 + 8 * (v12 >> 6);
            *(v14 + 1976) &= ~v13;
            *(a1 + 8 * *(v11 + 2) + 1984) = *(v11 + 1);
            return;
          case -15457:
            v472 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v473 = v472;
            v474 = *(v472 + 1);
            v475 = *(v472 + 2) + v474;
            if (v475 >= 0x40)
            {
              v475 = 64;
            }

            v476 = v475 - v474;
            if (v475 < v474)
            {
              v476 = 0;
            }

            v477 = ~(-1 << v476);
            if (v474 <= v475)
            {
              v478 = v474 & 0x3F;
            }

            else
            {
              v478 = 0;
            }

            *(a1 + 1976) &= ~(v477 << v478);
            v479 = *(v472 + 1);
            v480 = GTTraceFunc_argumentBytesWithMap(a2, v472[24], a3);
            if (*(v473 + 2) >= 1)
            {
              v481 = (a1 + 8 * v479 + 1984);
              v482 = *(v473 + 2) & 0x7FFFFFFFLL;
              do
              {
                v483 = *v480;
                v480 += 8;
                *v481++ = v483;
                --v482;
              }

              while (v482);
            }

            return;
          case -15455:
            v460 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v461 = v460;
            v462 = *(v460 + 1);
            v463 = *(v460 + 2) + v462;
            if (v463 >= 0x40)
            {
              v463 = 64;
            }

            v464 = v463 - v462;
            if (v463 < v462)
            {
              v464 = 0;
            }

            v465 = ~(-1 << v464);
            if (v462 <= v463)
            {
              v466 = v462 & 0x3F;
            }

            else
            {
              v466 = 0;
            }

            *(a1 + 1976) &= ~(v465 << v466);
            v467 = *(v460 + 1);
            v468 = GTTraceFunc_argumentBytesWithMap(a2, v460[24], a3);
            if (*(v461 + 2) >= 1)
            {
              v469 = (a1 + 8 * v467 + 1984);
              v470 = *(v461 + 2) & 0x7FFFFFFFLL;
              do
              {
                v471 = *v468;
                v468 += 8;
                *v469++ = v471;
                --v470;
              }

              while (v470);
            }

            return;
          case -15454:
          case -15453:
          case -15451:
            v89 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v90 = *(v89 + 2);
            v91 = 1 << v90;
            v92 = a1 + 8 * (v90 >> 6);
            *(v92 + 6944) &= ~v91;
            *(a1 + 8 * *(v89 + 2) + 6952) = *(v89 + 1);
            return;
          case -15452:
            v448 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v449 = v448;
            v450 = *(v448 + 1);
            v451 = *(v448 + 2) + v450;
            if (v451 >= 0x40)
            {
              v451 = 64;
            }

            v452 = v451 - v450;
            if (v451 < v450)
            {
              v452 = 0;
            }

            v453 = ~(-1 << v452);
            if (v450 <= v451)
            {
              v454 = v450 & 0x3F;
            }

            else
            {
              v454 = 0;
            }

            *(a1 + 6944) &= ~(v453 << v454);
            v455 = *(v448 + 1);
            v456 = GTTraceFunc_argumentBytesWithMap(a2, v448[24], a3);
            if (*(v449 + 2) >= 1)
            {
              v457 = (a1 + 8 * v455 + 6952);
              v458 = *(v449 + 2) & 0x7FFFFFFFLL;
              do
              {
                v459 = *v456;
                v456 += 8;
                *v457++ = v459;
                --v458;
              }

              while (v458);
            }

            return;
          case -15450:
            v434 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v435 = v434;
            v436 = *(v434 + 1);
            v437 = *(v434 + 2) + v436;
            if (v437 >= 0x40)
            {
              v437 = 64;
            }

            v438 = v437 - v436;
            if (v437 < v436)
            {
              v438 = 0;
            }

            v439 = ~(-1 << v438);
            if (v436 <= v437)
            {
              v440 = v436 & 0x3F;
            }

            else
            {
              v440 = 0;
            }

            *(a1 + 6944) &= ~(v439 << v440);
            v441 = *(v434 + 1);
            v442 = GTTraceFunc_argumentBytesWithMap(a2, v434[24], a3);
            if (*(v435 + 2) >= 1)
            {
              v443 = (a1 + 8 * v441 + 6952);
              v444 = *(v435 + 2) & 0x7FFFFFFFLL;
              do
              {
                v445 = *v442;
                v442 += 8;
                *v443++ = v445;
                --v444;
              }

              while (v444);
            }

            return;
          case -15449:
          case -15448:
          case -15446:
            v82 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v83 = *(v82 + 2);
            v84 = 1 << v83;
            v85 = a1 + 8 * (v83 >> 6);
            *(v85 + 64) &= ~v84;
            *(a1 + 8 * *(v82 + 2) + 80) = *(v82 + 1);
            v86 = *(v82 + 2);
            v87 = 1 << v86;
            v88 = a1 + 8 * (v86 >> 6);
            *(v88 + 72) &= ~v87;
            return;
          case -15447:
            v416 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v417 = v416;
            v418 = *(v416 + 1);
            v419 = *(v416 + 2) + v418;
            if (v419 >= 0x40)
            {
              v419 = 64;
            }

            v420 = v419 - v418;
            if (v419 < v418)
            {
              v420 = 0;
            }

            v421 = ~(-1 << v420);
            if (v418 <= v419)
            {
              v422 = v418 & 0x3F;
            }

            else
            {
              v422 = 0;
            }

            v423 = *(a1 + 72);
            *(a1 + 64) &= ~(v421 << v422);
            v424 = *(v416 + 1);
            v425 = *(v416 + 2) + v424;
            if (v425 >= 0x40)
            {
              v425 = 64;
            }

            v426 = v425 - v424;
            if (v425 < v424)
            {
              v426 = 0;
            }

            v427 = ~(-1 << v426);
            if (v424 <= v425)
            {
              v428 = v424 & 0x3F;
            }

            else
            {
              v428 = 0;
            }

            *(a1 + 72) = v423 & ~(v427 << v428);
            v429 = *(v416 + 1);
            v430 = GTTraceFunc_argumentBytesWithMap(a2, v416[24], a3);
            if (*(v417 + 2) >= 1)
            {
              v431 = (a1 + 8 * v429 + 80);
              v432 = *(v417 + 2) & 0x7FFFFFFFLL;
              do
              {
                v433 = *v430;
                v430 += 8;
                *v431++ = v433;
                --v432;
              }

              while (v432);
            }

            return;
          case -15445:
            v392 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v393 = v392;
            v394 = *(v392 + 1);
            v395 = *(v392 + 2) + v394;
            if (v395 >= 0x40)
            {
              v395 = 64;
            }

            v396 = v395 - v394;
            if (v395 < v394)
            {
              v396 = 0;
            }

            v397 = ~(-1 << v396);
            if (v394 <= v395)
            {
              v398 = v394 & 0x3F;
            }

            else
            {
              v398 = 0;
            }

            v399 = *(a1 + 72);
            *(a1 + 64) &= ~(v397 << v398);
            v400 = *(v392 + 1);
            v401 = *(v392 + 2) + v400;
            if (v401 >= 0x40)
            {
              v401 = 64;
            }

            v402 = v401 - v400;
            if (v401 < v400)
            {
              v402 = 0;
            }

            v403 = ~(-1 << v402);
            if (v400 <= v401)
            {
              v404 = v400 & 0x3F;
            }

            else
            {
              v404 = 0;
            }

            *(a1 + 72) = v399 & ~(v403 << v404);
            v405 = *(v392 + 1);
            v406 = GTTraceFunc_argumentBytesWithMap(a2, v392[24], a3);
            if (*(v393 + 2) >= 1)
            {
              v407 = (a1 + 8 * v405 + 80);
              v408 = *(v393 + 2) & 0x7FFFFFFFLL;
              do
              {
                v409 = *v406;
                v406 += 8;
                *v407++ = v409;
                --v408;
              }

              while (v408);
            }

            return;
          case -15401:
            v386 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v387 = *(v386 + 3);
            v388 = 1 << v387;
            v389 = a1 + 8 * (v387 >> 6);
            *(v389 + 5288) &= ~v388;
            *(a1 + 8 * *(v386 + 3) + 5296) = *(v386 + 1);
            v390 = *(v386 + 2);
            v391 = *(v386 + 3);
            goto LABEL_464;
          case -15400:
            v497 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v390 = *(v497 + 1);
            v391 = *(v497 + 2);
            goto LABEL_464;
          case -15399:
            v485 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v94 = v485;
            v486 = *(v485 + 1);
            v487 = *(v485 + 2) + v486;
            if (v487 >= 0x40)
            {
              v487 = 64;
            }

            v488 = v487 - v486;
            if (v487 < v486)
            {
              v488 = 0;
            }

            v489 = ~(-1 << v488);
            if (v486 <= v487)
            {
              v490 = v486 & 0x3F;
            }

            else
            {
              v490 = 0;
            }

            *(a1 + 5288) &= ~(v489 << v490);
            v491 = *(v485 + 1);
            v492 = GTTraceFunc_argumentBytesWithMap(a2, v485[24], a3);
            if (*(v94 + 2) >= 1)
            {
              v493 = (a1 + 8 * v491 + 5296);
              v494 = *(v94 + 2) & 0x7FFFFFFFLL;
              do
              {
                v495 = *v492;
                v492 += 8;
                *v493++ = v495;
                --v494;
              }

              while (v494);
            }

            v69 = a1 + 8 * *(v94 + 1);
            v70 = 5544;
            goto LABEL_452;
          case -15398:
            v511 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v512 = *(v511 + 2);
            v513 = 1 << v512;
            v514 = a1 + 8 * (v512 >> 6);
            *(v514 + 5288) |= v513;
            *(a1 + 8 * *(v511 + 2) + 5296) = GTTraceFunc_argumentBytesWithMap(a2, v511[24], a3);
            v390 = *(v511 + 1);
            v391 = *(v511 + 2);
LABEL_464:
            *(a1 + 8 * v391 + 5544) = v390;
            return;
          case -15397:
            v484 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v484 + 2) + 6816) = *(v484 + 1);
            return;
          case -15396:
            v521 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v521 + 2) + 6816) = *(v521 + 1);
            *(a1 + 4 * *(v521 + 2) + 10492) = *(v521 + 6);
            *(a1 + 4 * *(v521 + 2) + 10556) = *(v521 + 7);
            return;
          case -15395:
            v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v504 = *(v61 + 1);
            v505 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
            if (*(v61 + 2) >= 1)
            {
              v506 = (a1 + 8 * v504 + 6816);
              v507 = *(v61 + 2) & 0x7FFFFFFFLL;
              do
              {
                v508 = *v505;
                v505 += 8;
                *v506++ = v508;
                --v507;
              }

              while (v507);
            }

            v509 = a1 + 4 * *(v61 + 1);
            v510 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
            memcpy((v509 + 10492), v510, 4 * *(v61 + 2));
            v69 = a1 + 4 * *(v61 + 1);
            v70 = 10556;
            goto LABEL_482;
          case -15394:
            v526 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v527 = *(v526 + 1);
            v528 = GTTraceFunc_argumentBytesWithMap(a2, v526[24], a3);
            if (*(v526 + 2) >= 1)
            {
              v529 = (a1 + 8 * v527 + 6816);
              v530 = *(v526 + 2) & 0x7FFFFFFFLL;
              do
              {
                v531 = *v528;
                v528 += 8;
                *v529++ = v531;
                --v530;
              }

              while (v530);
            }

            return;
          case -15393:
            v447 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v447 + 2) + 5792) = *(v447 + 1);
            return;
          case -15392:
            v498 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v499 = *(v498 + 1);
            v500 = GTTraceFunc_argumentBytesWithMap(a2, v498[24], a3);
            if (*(v498 + 2) >= 1)
            {
              v501 = (a1 + 8 * v499 + 5792);
              v502 = *(v498 + 2) & 0x7FFFFFFFLL;
              do
              {
                v503 = *v500;
                v500 += 8;
                *v501++ = v503;
                --v502;
              }

              while (v502);
            }

            return;
          case -15391:
            v522 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v523 = *(v522 + 3);
            v524 = 1 << v523;
            v525 = a1 + 8 * (v523 >> 6);
            *(v525 + 3632) &= ~v524;
            *(a1 + 8 * *(v522 + 3) + 3640) = *(v522 + 1);
            v414 = *(v522 + 2);
            v415 = *(v522 + 3);
            goto LABEL_477;
          case -15390:
            v533 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v414 = *(v533 + 1);
            v415 = *(v533 + 2);
            goto LABEL_477;
          case -15389:
            v373 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v374 = v373;
            v375 = *(v373 + 1);
            v376 = *(v373 + 2) + v375;
            if (v376 >= 0x40)
            {
              v376 = 64;
            }

            v377 = v376 - v375;
            if (v376 < v375)
            {
              v377 = 0;
            }

            v378 = ~(-1 << v377);
            if (v375 <= v376)
            {
              v379 = v375 & 0x3F;
            }

            else
            {
              v379 = 0;
            }

            *(a1 + 3632) &= ~(v378 << v379);
            v380 = *(v373 + 1);
            v381 = GTTraceFunc_argumentBytesWithMap(a2, v373[24], a3);
            if (*(v374 + 2) >= 1)
            {
              v382 = (a1 + 8 * v380 + 3640);
              v383 = *(v374 + 2) & 0x7FFFFFFFLL;
              do
              {
                v384 = *v381;
                v381 += 8;
                *v382++ = v384;
                --v383;
              }

              while (v383);
            }

            v385 = a1 + 8 * *(v374 + 1);
            v35 = GTTraceFunc_argumentBytesWithMap(a2, v374[25], a3);
            v37 = 8 * *(v374 + 2);
            v59 = (v385 + 3888);
            goto LABEL_556;
          case -15388:
            v410 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v411 = *(v410 + 2);
            v412 = 1 << v411;
            v413 = a1 + 8 * (v411 >> 6);
            *(v413 + 3632) |= v412;
            *(a1 + 8 * *(v410 + 2) + 3640) = GTTraceFunc_argumentBytesWithMap(a2, v410[24], a3);
            v414 = *(v410 + 1);
            v415 = *(v410 + 2);
LABEL_477:
            *(a1 + 8 * v415 + 3888) = v414;
            break;
          case -15387:
            v532 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v532 + 2) + 5160) = *(v532 + 1);
            break;
          case -15386:
            v496 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v496 + 2) + 5160) = *(v496 + 1);
            *(a1 + 4 * *(v496 + 2) + 10364) = *(v496 + 6);
            *(a1 + 4 * *(v496 + 2) + 10428) = *(v496 + 7);
            break;
          case -15385:
            v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v534 = *(v61 + 1);
            v535 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
            if (*(v61 + 2) >= 1)
            {
              v536 = (a1 + 8 * v534 + 5160);
              v537 = *(v61 + 2) & 0x7FFFFFFFLL;
              do
              {
                v538 = *v535;
                v535 += 8;
                *v536++ = v538;
                --v537;
              }

              while (v537);
            }

            v539 = a1 + 4 * *(v61 + 1);
            v540 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
            memcpy((v539 + 10364), v540, 4 * *(v61 + 2));
            v69 = a1 + 4 * *(v61 + 1);
            v70 = 10428;
            goto LABEL_482;
          case -15384:
            v515 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v516 = *(v515 + 1);
            v517 = GTTraceFunc_argumentBytesWithMap(a2, v515[24], a3);
            if (*(v515 + 2) >= 1)
            {
              v518 = (a1 + 8 * v516 + 5160);
              v519 = *(v515 + 2) & 0x7FFFFFFFLL;
              do
              {
                v520 = *v517;
                v517 += 8;
                *v518++ = v520;
                --v519;
              }

              while (v519);
            }

            break;
          case -15383:
            v547 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v547 + 2) + 4136) = *(v547 + 1);
            break;
          case -15382:
            v541 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v542 = *(v541 + 1);
            v543 = GTTraceFunc_argumentBytesWithMap(a2, v541[24], a3);
            if (*(v541 + 2) >= 1)
            {
              v544 = (a1 + 8 * v542 + 4136);
              v545 = *(v541 + 2) & 0x7FFFFFFFLL;
              do
              {
                v546 = *v543;
                v543 += 8;
                *v544++ = v546;
                --v545;
              }

              while (v545);
            }

            break;
          case -15381:
            v446 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 4 * *(v446 + 2) + 11016) = *(v446 + 1);
            break;
          default:
            return;
        }

        return;
      }

      if (v7 > -15276)
      {
        if (v7 > -15273)
        {
          if (v7 != -15272)
          {
            if (v7 == -14914)
            {
              v596 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 10076) = *(v596 + 2);
              *(a1 + 10080) = *(v596 + 3);
            }

            else if (v7 == -14849)
            {
              *(a1 + 10056) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
            }

            return;
          }

          v604 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          v605 = *(v604 + 3);
          v606 = 1 << v605;
          v607 = a1 + 8 * (v605 >> 6);
          *(v607 + 64) |= v606;
          *(a1 + 8 * *(v604 + 3) + 80) = GTTraceFunc_argumentBytesWithMap(a2, v604[32], a3);
          v608 = *(v604 + 3);
          v609 = 1 << v608;
          v610 = a1 + 8 * (v608 >> 6);
          *(v610 + 72) |= v609;
          *(a1 + 8 * *(v604 + 3) + 328) = *(v604 + 1);
          v594 = *(v604 + 2);
          v595 = *(v604 + 3);
        }

        else if (v7 == -15275)
        {
          v597 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          v598 = *(v597 + 4);
          v599 = 1 << v598;
          v600 = a1 + 8 * (v598 >> 6);
          *(v600 + 64) &= ~v599;
          *(a1 + 8 * *(v597 + 4) + 80) = *(v597 + 1);
          v601 = *(v597 + 4);
          v602 = 1 << v601;
          v603 = a1 + 8 * (v601 >> 6);
          *(v603 + 72) |= v602;
          *(a1 + 8 * *(v597 + 4) + 328) = *(v597 + 2);
          v594 = *(v597 + 3);
          v595 = *(v597 + 4);
        }

        else
        {
          if (v7 != -15274)
          {
            v38 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v39 = v38;
            v40 = *(v38 + 1);
            v41 = *(v38 + 2) + v40;
            if (v41 >= 0x40)
            {
              v41 = 64;
            }

            v42 = v41 - v40;
            if (v41 < v40)
            {
              v42 = 0;
            }

            v43 = ~(-1 << v42);
            if (v40 <= v41)
            {
              v44 = v40 & 0x3F;
            }

            else
            {
              v44 = 0;
            }

            v45 = *(a1 + 72);
            *(a1 + 64) &= ~(v43 << v44);
            v46 = *(v38 + 1);
            v47 = *(v38 + 2) + v46;
            if (v47 >= 0x40)
            {
              v47 = 64;
            }

            v48 = v47 - v46;
            if (v47 < v46)
            {
              v48 = 0;
            }

            v49 = ~(-1 << v48);
            if (v46 <= v47)
            {
              v50 = v46 & 0x3F;
            }

            else
            {
              v50 = 0;
            }

            *(a1 + 72) = (v49 << v50) | v45;
            v51 = *(v38 + 1);
            v52 = GTTraceFunc_argumentBytesWithMap(a2, v38[24], a3);
            if (*(v39 + 2) >= 1)
            {
              v53 = (a1 + 8 * v51 + 80);
              v54 = *(v39 + 2) & 0x7FFFFFFFLL;
              do
              {
                v55 = *v52;
                v52 += 8;
                *v53++ = v55;
                --v54;
              }

              while (v54);
            }

            v56 = a1 + 8 * *(v39 + 1);
            v57 = GTTraceFunc_argumentBytesWithMap(a2, v39[25], a3);
            memcpy((v56 + 328), v57, 8 * *(v39 + 2));
            v58 = a1 + 8 * *(v39 + 1);
            v35 = GTTraceFunc_argumentBytesWithMap(a2, v39[26], a3);
            v37 = 8 * *(v39 + 2);
            v59 = (v58 + 576);
            goto LABEL_556;
          }

          v593 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          *(a1 + 8 * *(v593 + 3) + 328) = *(v593 + 1);
          v594 = *(v593 + 2);
          v595 = *(v593 + 3);
        }

        *(a1 + 8 * v595 + 576) = v594;
        return;
      }

      if (v7 > -15284)
      {
        switch(v7)
        {
          case -15283:
            v633 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v633 + 3) + 336) = *(v633 + 1);
            v78 = *(v633 + 2);
            v79 = *(v633 + 3);
            break;
          case -15282:
            v611 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v612 = v611;
            v613 = *(v611 + 1);
            v614 = *(v611 + 2) + v613;
            if (v614 >= 0x40)
            {
              v614 = 64;
            }

            v615 = v614 - v613;
            if (v614 < v613)
            {
              v615 = 0;
            }

            v616 = ~(-1 << v615);
            if (v613 <= v614)
            {
              v617 = v613 & 0x3F;
            }

            else
            {
              v617 = 0;
            }

            v618 = *(a1 + 80);
            *(a1 + 72) &= ~(v616 << v617);
            v619 = *(v611 + 1);
            v620 = *(v611 + 2) + v619;
            if (v620 >= 0x40)
            {
              v620 = 64;
            }

            v621 = v620 - v619;
            if (v620 < v619)
            {
              v621 = 0;
            }

            v622 = ~(-1 << v621);
            if (v619 <= v620)
            {
              v623 = v619 & 0x3F;
            }

            else
            {
              v623 = 0;
            }

            *(a1 + 80) = (v622 << v623) | v618;
            v624 = *(v611 + 1);
            v625 = GTTraceFunc_argumentBytesWithMap(a2, v611[24], a3);
            if (*(v612 + 2) >= 1)
            {
              v626 = (a1 + 8 * v624 + 88);
              v627 = *(v612 + 2) & 0x7FFFFFFFLL;
              do
              {
                v628 = *v625;
                v625 += 8;
                *v626++ = v628;
                --v627;
              }

              while (v627);
            }

            v629 = a1 + 8 * *(v612 + 1);
            v630 = GTTraceFunc_argumentBytesWithMap(a2, v612[25], a3);
            memcpy((v629 + 336), v630, 8 * *(v612 + 2));
            v631 = a1 + 8 * *(v612 + 1);
            v35 = GTTraceFunc_argumentBytesWithMap(a2, v612[26], a3);
            v37 = 8 * *(v612 + 2);
            v59 = (v631 + 584);
            goto LABEL_556;
          case -15281:
            v71 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v72 = *(v71 + 3);
            v73 = 1 << v72;
            v74 = a1 + 8 * (v72 >> 6);
            *(v74 + 72) |= v73;
            *(a1 + 8 * *(v71 + 3) + 88) = GTTraceFunc_argumentBytesWithMap(a2, v71[32], a3);
            v75 = *(v71 + 3);
            v76 = 1 << v75;
            v77 = a1 + 8 * (v75 >> 6);
            *(v77 + 80) |= v76;
            *(a1 + 8 * *(v71 + 3) + 336) = *(v71 + 1);
            v78 = *(v71 + 2);
            v79 = *(v71 + 3);
            break;
          default:
            return;
        }

LABEL_564:
        *(a1 + 8 * v79 + 584) = v78;
        return;
      }

      if (v7 != -15364)
      {
        if (v7 != -15284)
        {
          return;
        }

        v105 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v106 = *(v105 + 4);
        v107 = 1 << v106;
        v108 = a1 + 8 * (v106 >> 6);
        *(v108 + 72) &= ~v107;
        *(a1 + 8 * *(v105 + 4) + 88) = *(v105 + 1);
        v109 = *(v105 + 4);
        v110 = 1 << v109;
        v111 = a1 + 8 * (v109 >> 6);
        *(v111 + 80) |= v110;
        *(a1 + 8 * *(v105 + 4) + 336) = *(v105 + 2);
        v78 = *(v105 + 3);
        v79 = *(v105 + 4);
        goto LABEL_564;
      }

      v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      bzero(a1, 0x2BA0uLL);
      v556 = *(v113 + 1);
      if (!v556)
      {
        return;
      }

      v557 = 17;
      goto LABEL_561;
    }

    if (v7 <= -15885)
    {
      if (v7 <= -16021)
      {
        if (v7 > -16028)
        {
          if (v7 > -16023)
          {
            if (v7 == -16022)
            {
              v555 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 8 * *(v555 + 2) + 9992) = *(v555 + 1);
            }

            else
            {
              *(a1 + 11160) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
            }
          }

          else if (v7 == -16027)
          {
            *(a1 + 194) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          }

          else if (v7 == -16026)
          {
            *(a1 + 195) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          }
        }

        else
        {
          if (v7 <= -16075)
          {
            if (v7 == -16077)
            {
              v548 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 8608) = *(v548 + 1);
              v35 = GTTraceFunc_argumentBytesWithMap(a2, v548[16], a3);
              v36 = 8616;
              v37 = 48 * *(v548 + 1);
            }

            else
            {
              if (v7 != -16076)
              {
                return;
              }

              v34 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 9384) = *(v34 + 1);
              v35 = GTTraceFunc_argumentBytesWithMap(a2, v34[16], a3);
              v36 = 9392;
              v37 = 32 * *(v34 + 1);
            }

            v59 = (a1 + v36);
            goto LABEL_556;
          }

          if (v7 == -16074)
          {
            v550 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 4 * *(v550 + 3) + 10768) = *(v550 + 1);
            *(a1 + 4 * *(v550 + 3) + 10892) = *(v550 + 2);
          }

          else if (v7 == -16028)
          {
            v112 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v112 + 2) + 128) = *(v112 + 1);
          }
        }

        return;
      }

      if (v7 <= -15985)
      {
        if (v7 <= -16015)
        {
          if (v7 == -16020)
          {
            *(a1 + 11161) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          }

          else if (v7 == -16017)
          {
            v60 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 2032) = *(v60 + 1);
            *(a1 + 2172) = *(v60 + 2);
          }

          return;
        }

        if (v7 == -16014)
        {
          v551 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v552 = *(v551 + 1);
          if (v552)
          {
            *a1 = 28;
            v553 = *a2;
            *(a1 + 8) = v552;
            *(a1 + 16) = v553;
            *(a1 + 24) = -1;
            *(a1 + 40) = *v551;
            bzero((a1 + 56), 0x888uLL);
            memset_pattern16((a1 + 2240), &unk_24DA90D20, 0x100uLL);
            *(a1 + 824) = -1;
            *&v554 = -1;
            *(&v554 + 1) = -1;
            *(a1 + 792) = v554;
            *(a1 + 808) = v554;
            *(a1 + 760) = v554;
            *(a1 + 776) = v554;
            *(a1 + 728) = v554;
            *(a1 + 744) = v554;
            *(a1 + 696) = v554;
            *(a1 + 712) = v554;
            *(a1 + 664) = v554;
            *(a1 + 680) = v554;
            *(a1 + 632) = v554;
            *(a1 + 648) = v554;
            *(a1 + 600) = v554;
            *(a1 + 616) = v554;
            *(a1 + 584) = v554;
            *(a1 + 2304) = *(v551 + 2);
          }

          return;
        }

        if (v7 != -16013)
        {
          return;
        }

        v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v9 = *(v8 + 1);
        if (!v9)
        {
          return;
        }

        v10 = 82;
        goto LABEL_503;
      }

      if (v7 <= -15891)
      {
        if (v7 == -15984)
        {
          v549 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          *(v6 + 2546) = *(v549 + 4);
          *(a1 + 10756) = *(v549 + 1);
        }

        else if (v7 == -15970)
        {
          *(a1 + 11162) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        }

        return;
      }

      if (v7 != -15890)
      {
        if (v7 == -15888)
        {
          *(a1 + 56) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        }

        return;
      }
    }

    else
    {
      if (v7 > -15643)
      {
        if (v7 > -15586)
        {
          if (v7 > -15583)
          {
            if (v7 == -15582)
            {
              v560 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              v561 = v560;
              v562 = *(v560 + 1);
              v563 = *(v560 + 2) + v562;
              if (v563 >= 0x40)
              {
                v563 = 64;
              }

              v564 = v563 - v562;
              if (v563 < v562)
              {
                v564 = 0;
              }

              v565 = ~(-1 << v564);
              if (v562 <= v563)
              {
                v566 = v562 & 0x3F;
              }

              else
              {
                v566 = 0;
              }

              v567 = *(a1 + 80);
              *(a1 + 72) &= ~(v565 << v566);
              v568 = *(v560 + 1);
              v569 = *(v560 + 2) + v568;
              if (v569 >= 0x40)
              {
                v569 = 64;
              }

              v570 = v569 - v568;
              if (v569 < v568)
              {
                v570 = 0;
              }

              v571 = ~(-1 << v570);
              if (v568 <= v569)
              {
                v572 = v568 & 0x3F;
              }

              else
              {
                v572 = 0;
              }

              *(a1 + 80) = v567 & ~(v571 << v572);
              v573 = *(v560 + 1);
              v574 = GTTraceFunc_argumentBytesWithMap(a2, v560[24], a3);
              if (*(v561 + 2) >= 1)
              {
                v575 = (a1 + 8 * v573 + 88);
                v576 = *(v561 + 2) & 0x7FFFFFFFLL;
                do
                {
                  v577 = *v574;
                  v574 += 8;
                  *v575++ = v577;
                  --v576;
                }

                while (v576);
              }

              return;
            }

            if (v7 != -15581)
            {
              if (v7 == -15580)
              {
                v15 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
                v16 = v15;
                v17 = *(v15 + 1);
                v18 = *(v15 + 2) + v17;
                if (v18 >= 0x40)
                {
                  v18 = 64;
                }

                v19 = v18 - v17;
                if (v18 < v17)
                {
                  v19 = 0;
                }

                v20 = ~(-1 << v19);
                if (v17 <= v18)
                {
                  v21 = v17 & 0x3F;
                }

                else
                {
                  v21 = 0;
                }

                v22 = *(a1 + 80);
                *(a1 + 72) &= ~(v20 << v21);
                v23 = *(v15 + 1);
                v24 = *(v15 + 2) + v23;
                if (v24 >= 0x40)
                {
                  v24 = 64;
                }

                v25 = v24 - v23;
                if (v24 < v23)
                {
                  v25 = 0;
                }

                v26 = ~(-1 << v25);
                if (v23 <= v24)
                {
                  v27 = v23 & 0x3F;
                }

                else
                {
                  v27 = 0;
                }

                *(a1 + 80) = v22 & ~(v26 << v27);
                v28 = *(v15 + 1);
                v29 = GTTraceFunc_argumentBytesWithMap(a2, v15[24], a3);
                if (*(v16 + 2) >= 1)
                {
                  v30 = (a1 + 8 * v28 + 88);
                  v31 = *(v16 + 2) & 0x7FFFFFFFLL;
                  do
                  {
                    v32 = *v29;
                    v29 += 8;
                    *v30++ = v32;
                    --v31;
                  }

                  while (v31);
                }
              }

              return;
            }

LABEL_154:
            v119 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v120 = *(v119 + 2);
            v121 = 1 << v120;
            v122 = a1 + 8 * (v120 >> 6);
            *(v122 + 72) &= ~v121;
            *(a1 + 8 * *(v119 + 2) + 88) = *(v119 + 1);
            v123 = *(v119 + 2);
            v124 = 1 << v123;
            v125 = a1 + 8 * (v123 >> 6);
            *(v125 + 80) &= ~v124;
            return;
          }

          if (v7 != -15585)
          {
            v80 = -15583;
LABEL_153:
            if (v7 != v80)
            {
              return;
            }

            goto LABEL_154;
          }

          v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v556 = *(v113 + 1);
          if (!v556)
          {
            return;
          }

          v557 = 74;
LABEL_561:
          *a1 = v557;
          v632 = *a2;
          *(a1 + 8) = v556;
          *(a1 + 16) = v632;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v113;
LABEL_562:
          *(a1 + 56) = GTTraceFunc_argumentBytesWithMap(a2, v113[16], a3);
          return;
        }

        if (v7 > -15588)
        {
          if (v7 != -15587)
          {
            v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            bzero(a1, 0x2BA0uLL);
            v114 = *(v113 + 1);
            if (!v114)
            {
              return;
            }

            *a1 = 28;
            v115 = *a2;
            *(a1 + 8) = v114;
            *(a1 + 16) = v115;
            *(a1 + 24) = -1;
            *(a1 + 40) = *v113;
            bzero((a1 + 56), 0x888uLL);
            memset_pattern16((a1 + 2240), &unk_24DA90D20, 0x100uLL);
            *(a1 + 824) = -1;
            *&v116 = -1;
            *(&v116 + 1) = -1;
            *(a1 + 792) = v116;
            *(a1 + 808) = v116;
            *(a1 + 760) = v116;
            *(a1 + 776) = v116;
            *(a1 + 728) = v116;
            *(a1 + 744) = v116;
            *(a1 + 696) = v116;
            *(a1 + 712) = v116;
            *(a1 + 664) = v116;
            *(a1 + 680) = v116;
            *(a1 + 632) = v116;
            *(a1 + 648) = v116;
            *(a1 + 600) = v116;
            *(a1 + 616) = v116;
            *(a1 + 584) = v116;
            *(a1 + 2304) = -1;
            goto LABEL_562;
          }

          v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v556 = *(v113 + 1);
          if (!v556)
          {
            return;
          }

          v557 = 21;
          goto LABEL_561;
        }

        if (v7 != -15642)
        {
          v80 = -15623;
          goto LABEL_153;
        }

LABEL_113:
        *(a1 + 24) = *a2;
        return;
      }

      if (v7 <= -15795)
      {
        if (v7 > -15823)
        {
          if (v7 == -15822)
          {
            v558 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 11144) = *(v558 + 1);
            *(a1 + 9912) = GTTraceFunc_argumentBytesWithMap(a2, v558[16], a3);
          }

          else if (v7 == -15812)
          {
            v117 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(v6 + 2540) = *(v117 + 1);
            *(a1 + 11140) = *(v117 + 2);
          }

          return;
        }

        if (v7 == -15884)
        {
          goto LABEL_113;
        }

        if (v7 != -15870)
        {
          return;
        }

        v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v9 = *(v8 + 1);
        if (!v9)
        {
          return;
        }

        v10 = 74;
LABEL_503:
        *a1 = v10;
        v559 = *a2;
        *(a1 + 8) = v9;
        *(a1 + 16) = v559;
        *(a1 + 24) = -1;
        *(a1 + 40) = *v8;
        return;
      }

      if (v7 > -15674)
      {
        if (v7 == -15673)
        {
          v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v9 = *(v8 + 1);
          if (!v9)
          {
            return;
          }

          v10 = 17;
          goto LABEL_503;
        }

        if (v7 != -15648)
        {
          return;
        }
      }

      else if (v7 != -15794)
      {
        v81 = -15789;
LABEL_112:
        if (v7 != v81)
        {
          return;
        }

        goto LABEL_113;
      }
    }

LABEL_150:
    v118 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
    *(a1 + 48) = GTTraceFunc_argumentBytesWithMap(a2, v118[8], a3);
    return;
  }

  if (v7 <= -16163)
  {
    switch(v7)
    {
      case -16354:
        v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v9 = *(v8 + 1);
        if (!v9)
        {
          return;
        }

        v10 = 21;
        goto LABEL_503;
      case -16353:
        v228 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v229 = *(v228 + 1);
        if (!v229)
        {
          return;
        }

        *a1 = 70;
        v230 = *a2;
        *(a1 + 8) = v229;
        *(a1 + 16) = v230;
        *(a1 + 24) = -1;
        *(a1 + 40) = *v228;
        v191 = GTTraceFunc_argumentBytesWithMap(a2, v228[16], a3);
        v190 = a1 + 56;
        goto LABEL_227;
      case -16352:
        v223 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v224 = *(v223 + 1);
        if (v224)
        {
          *a1 = 28;
          v225 = *a2;
          *(a1 + 8) = v224;
          *(a1 + 16) = v225;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v223;
          bzero((a1 + 56), 0x888uLL);
          memset_pattern16((a1 + 2240), &unk_24DA90D20, 0x100uLL);
          *(a1 + 824) = -1;
          *&v226 = -1;
          *(&v226 + 1) = -1;
          *(a1 + 792) = v226;
          *(a1 + 808) = v226;
          *(a1 + 760) = v226;
          *(a1 + 776) = v226;
          *(a1 + 728) = v226;
          *(a1 + 744) = v226;
          *(a1 + 696) = v226;
          *(a1 + 712) = v226;
          *(a1 + 664) = v226;
          *(a1 + 680) = v226;
          *(a1 + 632) = v226;
          *(a1 + 648) = v226;
          *(a1 + 600) = v226;
          *(a1 + 616) = v226;
          *(a1 + 584) = v226;
          *(a1 + 2304) = -1;
        }

        return;
      case -16351:
        v218 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v219 = *(v218 + 1);
        if (v219)
        {
          *a1 = 65;
          v220 = *a2;
          *(a1 + 8) = v219;
          *(a1 + 16) = v220;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v218;
          v221 = GTTraceFunc_argumentBytesWithMap(a2, v218[16], a3);
          *(a1 + 128) = 0u;
          *(a1 + 144) = 0u;
          *(a1 + 160) = 0u;
          *(a1 + 176) = 0u;
          *(a1 + 192) = 0;
          *(a1 + 56) = v221;
          memset_pattern16((a1 + 64), &unk_24DA90D30, 0x40uLL);
          *(a1 + 192) = 1028;
        }

        return;
      case -16350:
      case -16349:
      case -16348:
      case -16347:
      case -16346:
      case -16345:
      case -16344:
      case -16343:
      case -16342:
      case -16341:
      case -16340:
      case -16338:
      case -16327:
      case -16326:
      case -16324:
      case -16323:
      case -16322:
      case -16321:
      case -16320:
      case -16319:
      case -16318:
      case -16317:
      case -16316:
      case -16315:
      case -16314:
      case -16313:
      case -16312:
      case -16311:
      case -16310:
      case -16309:
      case -16308:
      case -16307:
      case -16306:
      case -16305:
      case -16304:
      case -16303:
      case -16302:
      case -16301:
      case -16300:
      case -16299:
      case -16298:
      case -16297:
      case -16296:
      case -16295:
      case -16294:
      case -16293:
      case -16292:
      case -16291:
      case -16290:
      case -16289:
      case -16287:
      case -16284:
      case -16283:
      case -16282:
      case -16280:
      case -16251:
      case -16250:
      case -16249:
      case -16248:
      case -16245:
      case -16244:
      case -16243:
      case -16242:
      case -16241:
      case -16240:
      case -16239:
      case -16238:
      case -16237:
      case -16236:
      case -16235:
      case -16234:
      case -16233:
      case -16232:
      case -16231:
      case -16230:
      case -16229:
      case -16228:
      case -16221:
      case -16220:
      case -16218:
      case -16217:
      case -16216:
      case -16215:
        return;
      case -16339:
      case -16288:
      case -16281:
        goto LABEL_150;
      case -16337:
        *(a1 + 64) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16336:
        v286 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v287 = *(v286 + 3);
        v288 = 1 << v287;
        v289 = a1 + 8 * (v287 >> 6);
        *(v289 + 72) &= ~v288;
        *(a1 + 8 * *(v286 + 3) + 88) = *(v286 + 1);
        v290 = *(v286 + 3);
        v291 = 1 << v290;
        v292 = a1 + 8 * (v290 >> 6);
        *(v292 + 80) &= ~v291;
        v154 = *(v286 + 2);
        v155 = *(v286 + 3);
        goto LABEL_314;
      case -16335:
        v199 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v200 = v199;
        v201 = *(v199 + 1);
        v202 = *(v199 + 2) + v201;
        if (v202 >= 0x40)
        {
          v202 = 64;
        }

        v203 = v202 - v201;
        if (v202 < v201)
        {
          v203 = 0;
        }

        v204 = ~(-1 << v203);
        if (v201 <= v202)
        {
          v205 = v201 & 0x3F;
        }

        else
        {
          v205 = 0;
        }

        v206 = *(a1 + 80);
        *(a1 + 72) &= ~(v204 << v205);
        v207 = *(v199 + 1);
        v208 = *(v199 + 2) + v207;
        if (v208 >= 0x40)
        {
          v208 = 64;
        }

        v209 = v208 - v207;
        if (v208 < v207)
        {
          v209 = 0;
        }

        v210 = ~(-1 << v209);
        if (v207 <= v208)
        {
          v211 = v207 & 0x3F;
        }

        else
        {
          v211 = 0;
        }

        *(a1 + 80) = v206 & ~(v210 << v211);
        v212 = *(v199 + 1);
        v213 = GTTraceFunc_argumentBytesWithMap(a2, v199[24], a3);
        if (*(v200 + 2) >= 1)
        {
          v214 = (a1 + 8 * v212 + 88);
          v215 = *(v200 + 2) & 0x7FFFFFFFLL;
          do
          {
            v216 = *v213;
            v213 += 8;
            *v214++ = v216;
            --v215;
          }

          while (v215);
        }

        v217 = a1 + 8 * *(v200 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v200[25], a3);
        v37 = 8 * *(v200 + 2);
        v59 = (v217 + 336);
        goto LABEL_556;
      case -16334:
        v248 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v248 + 2) + 832) = *(v248 + 1);
        return;
      case -16333:
        v266 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v267 = v266;
        v268 = *(v266 + 1);
        v269 = *(v266 + 2) + v268;
        if (v269 >= 0x40)
        {
          v269 = 64;
        }

        v270 = v269 - v268;
        if (v269 < v268)
        {
          v270 = 0;
        }

        v271 = ~(-1 << v270);
        if (v268 <= v269)
        {
          v272 = v268 & 0x3F;
        }

        else
        {
          v272 = 0;
        }

        *(a1 + 80) &= ~(v271 << v272);
        v273 = *(v266 + 1);
        v274 = GTTraceFunc_argumentBytesWithMap(a2, v266[24], a3);
        if (*(v267 + 2) >= 1)
        {
          v275 = (a1 + 8 * v273 + 832);
          v276 = *(v267 + 2) & 0x7FFFFFFFLL;
          do
          {
            v277 = *v274;
            v274 += 8;
            *v275++ = v277;
            --v276;
          }

          while (v276);
        }

        return;
      case -16332:
        v285 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v285 + 2) + 1856) = *(v285 + 1);
        return;
      case -16331:
        v355 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v356 = v355;
        v357 = *(v355 + 1);
        v358 = *(v355 + 2) + v357;
        if (v358 >= 0x40)
        {
          v358 = 64;
        }

        v359 = v358 - v357;
        if (v358 < v357)
        {
          v359 = 0;
        }

        v360 = ~(-1 << v359);
        if (v357 <= v358)
        {
          v361 = v357 & 0x3F;
        }

        else
        {
          v361 = 0;
        }

        *(a1 + 80) &= ~(v360 << v361);
        v362 = *(v355 + 1);
        v363 = GTTraceFunc_argumentBytesWithMap(a2, v355[24], a3);
        if (*(v356 + 2) >= 1)
        {
          v364 = (a1 + 8 * v362 + 1856);
          v365 = *(v356 + 2) & 0x7FFFFFFFLL;
          do
          {
            v366 = *v363;
            v363 += 8;
            *v364++ = v366;
            --v365;
          }

          while (v365);
        }

        return;
      case -16330:
        v354 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v354 + 2) + 1856) = *(v354 + 1);
        *(a1 + 4 * *(v354 + 2) + 2176) = *(v354 + 6);
        *(a1 + 4 * *(v354 + 2) + 2240) = *(v354 + 7);
        return;
      case -16329:
        v339 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v340 = v339;
        v341 = *(v339 + 1);
        v342 = *(v339 + 2) + v341;
        if (v342 >= 0x40)
        {
          v342 = 64;
        }

        v343 = v342 - v341;
        if (v342 < v341)
        {
          v343 = 0;
        }

        v344 = ~(-1 << v343);
        if (v341 <= v342)
        {
          v345 = v341 & 0x3F;
        }

        else
        {
          v345 = 0;
        }

        *(a1 + 80) &= ~(v344 << v345);
        v346 = *(v339 + 1);
        v347 = GTTraceFunc_argumentBytesWithMap(a2, v339[24], a3);
        if (*(v340 + 2) >= 1)
        {
          v348 = (a1 + 8 * v346 + 1856);
          v349 = *(v340 + 2) & 0x7FFFFFFFLL;
          do
          {
            v350 = *v347;
            v347 += 8;
            *v348++ = v350;
            --v349;
          }

          while (v349);
        }

        v351 = a1 + 4 * *(v340 + 1);
        v352 = GTTraceFunc_argumentBytesWithMap(a2, v340[25], a3);
        memcpy((v351 + 2176), v352, 4 * *(v340 + 2));
        v353 = a1 + 4 * *(v340 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v340[26], a3);
        v37 = 4 * *(v340 + 2);
        v59 = (v353 + 2240);
        goto LABEL_556;
      case -16328:
        v246 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 4 * *(v246 + 2) + 2040) = *(v246 + 1);
        return;
      case -16325:
      case -16285:
      case -16246:
        goto LABEL_113;
      case -16286:
        v187 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v188 = *(v187 + 1);
        if (!v188)
        {
          return;
        }

        *a1 = 70;
        v189 = *a2;
        *(a1 + 8) = v188;
        *(a1 + 16) = v189;
        *(a1 + 24) = -1;
        *(a1 + 40) = *v187;
        v190 = a1 + 56;
        v191 = 0;
LABEL_227:

        GTMTLSMRenderCommandEncoder_init(v190, v191);
        return;
      case -16279:
        *(a1 + 8600) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16278:
        v192 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v193 = *(v192 + 3);
        v194 = 1 << v193;
        v195 = a1 + 8 * (v193 >> 6);
        *(v195 + 64) &= ~v194;
        *(a1 + 8 * *(v192 + 3) + 80) = *(v192 + 1);
        v196 = *(v192 + 3);
        v197 = 1 << v196;
        v198 = a1 + 8 * (v196 >> 6);
        *(v198 + 72) &= ~v197;
        v166 = *(v192 + 2);
        v167 = *(v192 + 3);
        goto LABEL_344;
      case -16277:
        v313 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v314 = v313;
        v315 = *(v313 + 1);
        v316 = *(v313 + 2) + v315;
        if (v316 >= 0x40)
        {
          v316 = 64;
        }

        v317 = v316 - v315;
        if (v316 < v315)
        {
          v317 = 0;
        }

        v318 = ~(-1 << v317);
        if (v315 <= v316)
        {
          v319 = v315 & 0x3F;
        }

        else
        {
          v319 = 0;
        }

        v320 = *(a1 + 72);
        *(a1 + 64) &= ~(v318 << v319);
        v321 = *(v313 + 1);
        v322 = *(v313 + 2) + v321;
        if (v322 >= 0x40)
        {
          v322 = 64;
        }

        v323 = v322 - v321;
        if (v322 < v321)
        {
          v323 = 0;
        }

        v324 = ~(-1 << v323);
        if (v321 <= v322)
        {
          v325 = v321 & 0x3F;
        }

        else
        {
          v325 = 0;
        }

        *(a1 + 72) = v320 & ~(v324 << v325);
        v326 = *(v313 + 1);
        v327 = GTTraceFunc_argumentBytesWithMap(a2, v313[24], a3);
        if (*(v314 + 2) >= 1)
        {
          v328 = (a1 + 8 * v326 + 80);
          v329 = *(v314 + 2) & 0x7FFFFFFFLL;
          do
          {
            v330 = *v327;
            v327 += 8;
            *v328++ = v330;
            --v329;
          }

          while (v329);
        }

        v331 = a1 + 8 * *(v314 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v314[25], a3);
        v37 = 8 * *(v314 + 2);
        v59 = (v331 + 328);
        goto LABEL_556;
      case -16276:
        v180 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v180 + 2) + 824) = *(v180 + 1);
        return;
      case -16275:
        v231 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v232 = v231;
        v233 = *(v231 + 1);
        v234 = *(v231 + 2) + v233;
        if (v234 >= 0x40)
        {
          v234 = 64;
        }

        v235 = v234 - v233;
        if (v234 < v233)
        {
          v235 = 0;
        }

        v236 = ~(-1 << v235);
        if (v233 <= v234)
        {
          v237 = v233 & 0x3F;
        }

        else
        {
          v237 = 0;
        }

        *(a1 + 72) &= ~(v236 << v237);
        v238 = *(v231 + 1);
        v239 = GTTraceFunc_argumentBytesWithMap(a2, v231[24], a3);
        if (*(v232 + 2) >= 1)
        {
          v240 = (a1 + 8 * v238 + 824);
          v241 = *(v232 + 2) & 0x7FFFFFFFLL;
          do
          {
            v242 = *v239;
            v239 += 8;
            *v240++ = v242;
            --v241;
          }

          while (v241);
        }

        return;
      case -16274:
        v181 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v181 + 2) + 1848) = *(v181 + 1);
        return;
      case -16273:
        v168 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v169 = v168;
        v170 = *(v168 + 1);
        v171 = *(v168 + 2) + v170;
        if (v171 >= 0x40)
        {
          v171 = 64;
        }

        v172 = v171 - v170;
        if (v171 < v170)
        {
          v172 = 0;
        }

        v173 = ~(-1 << v172);
        if (v170 <= v171)
        {
          v174 = v170 & 0x3F;
        }

        else
        {
          v174 = 0;
        }

        *(a1 + 72) &= ~(v173 << v174);
        v175 = *(v168 + 1);
        v176 = GTTraceFunc_argumentBytesWithMap(a2, v168[24], a3);
        if (*(v169 + 2) >= 1)
        {
          v177 = (a1 + 8 * v175 + 1848);
          v178 = *(v169 + 2) & 0x7FFFFFFFLL;
          do
          {
            v179 = *v176;
            v176 += 8;
            *v177++ = v179;
            --v178;
          }

          while (v178);
        }

        return;
      case -16272:
        v222 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v222 + 2) + 1848) = *(v222 + 1);
        *(a1 + 4 * *(v222 + 2) + 10108) = *(v222 + 6);
        *(a1 + 4 * *(v222 + 2) + 10172) = *(v222 + 7);
        return;
      case -16271:
        v249 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v61 = v249;
        v250 = *(v249 + 1);
        v251 = *(v249 + 2) + v250;
        if (v251 >= 0x40)
        {
          v251 = 64;
        }

        v252 = v251 - v250;
        if (v251 < v250)
        {
          v252 = 0;
        }

        v253 = ~(-1 << v252);
        if (v250 <= v251)
        {
          v254 = v250 & 0x3F;
        }

        else
        {
          v254 = 0;
        }

        *(a1 + 72) &= ~(v253 << v254);
        v255 = *(v249 + 1);
        v256 = GTTraceFunc_argumentBytesWithMap(a2, v249[24], a3);
        if (*(v61 + 2) >= 1)
        {
          v257 = (a1 + 8 * v255 + 1848);
          v258 = *(v61 + 2) & 0x7FFFFFFFLL;
          do
          {
            v259 = *v256;
            v256 += 8;
            *v257++ = v259;
            --v258;
          }

          while (v258);
        }

        v260 = a1 + 4 * *(v61 + 1);
        v261 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
        memcpy((v260 + 10108), v261, 4 * *(v61 + 2));
        v69 = a1 + 4 * *(v61 + 1);
        v70 = 10172;
        goto LABEL_482;
      case -16270:
        v367 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8608) = 1;
        v368 = *(v367 + 24);
        v369 = *(v367 + 40);
        *v6 = *(v367 + 8);
        *(v6 + 16) = v368;
        *(v6 + 32) = v369;
        return;
      case -16269:
        *(a1 + 11154) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16268:
        *(a1 + 11152) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16267:
        *(a1 + 11153) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16266:
        v227 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 10064) = *(v227 + 2);
        *(a1 + 10068) = *(v227 + 3);
        *(a1 + 10072) = *(v227 + 4);
        return;
      case -16265:
        v157 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 9384) = 1;
        v158 = *(v157 + 24);
        *(a1 + 9392) = *(v157 + 8);
        *(a1 + 9408) = v158;
        return;
      case -16264:
        *(a1 + 11155) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16263:
        v183 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v184 = *(v183 + 3);
        v185 = 1 << v184;
        v186 = a1 + 8 * (v184 >> 6);
        *(v186 + 1976) &= ~v185;
        *(a1 + 8 * *(v183 + 3) + 1984) = *(v183 + 1);
        v144 = *(v183 + 2);
        v145 = *(v183 + 3);
        goto LABEL_259;
      case -16262:
        v300 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v301 = v300;
        v302 = *(v300 + 1);
        v303 = *(v300 + 2) + v302;
        if (v303 >= 0x40)
        {
          v303 = 64;
        }

        v304 = v303 - v302;
        if (v303 < v302)
        {
          v304 = 0;
        }

        v305 = ~(-1 << v304);
        if (v302 <= v303)
        {
          v306 = v302 & 0x3F;
        }

        else
        {
          v306 = 0;
        }

        *(a1 + 1976) &= ~(v305 << v306);
        v307 = *(v300 + 1);
        v308 = GTTraceFunc_argumentBytesWithMap(a2, v300[24], a3);
        if (*(v301 + 2) >= 1)
        {
          v309 = (a1 + 8 * v307 + 1984);
          v310 = *(v301 + 2) & 0x7FFFFFFFLL;
          do
          {
            v311 = *v308;
            v308 += 8;
            *v309++ = v311;
            --v310;
          }

          while (v310);
        }

        v312 = a1 + 8 * *(v301 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v301[25], a3);
        v37 = 8 * *(v301 + 2);
        v59 = (v312 + 2232);
        goto LABEL_556;
      case -16261:
        v182 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v182 + 2) + 2480) = *(v182 + 1);
        return;
      case -16260:
        v278 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v279 = *(v278 + 1);
        v280 = GTTraceFunc_argumentBytesWithMap(a2, v278[24], a3);
        if (*(v278 + 2) >= 1)
        {
          v281 = (a1 + 8 * v279 + 2480);
          v282 = *(v278 + 2) & 0x7FFFFFFFLL;
          do
          {
            v283 = *v280;
            v280 += 8;
            *v281++ = v283;
            --v282;
          }

          while (v282);
        }

        return;
      case -16259:
        v284 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v244 = *(v284 + 1);
        v245 = *(v284 + 2);
        goto LABEL_277;
      case -16258:
        v146 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v147 = *(v146 + 1);
        v148 = GTTraceFunc_argumentBytesWithMap(a2, v146[24], a3);
        if (*(v146 + 2) >= 1)
        {
          v149 = (a1 + 8 * v147 + 3504);
          v150 = *(v146 + 2) & 0x7FFFFFFFLL;
          do
          {
            v151 = *v148;
            v148 += 8;
            *v149++ = v151;
            --v150;
          }

          while (v150);
        }

        return;
      case -16257:
        v247 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v247 + 2) + 3504) = *(v247 + 1);
        *(a1 + 4 * *(v247 + 2) + 10236) = *(v247 + 6);
        *(a1 + 4 * *(v247 + 2) + 10300) = *(v247 + 7);
        return;
      case -16256:
        v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v293 = *(v61 + 1);
        v294 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
        if (*(v61 + 2) >= 1)
        {
          v295 = (a1 + 8 * v293 + 3504);
          v296 = *(v61 + 2) & 0x7FFFFFFFLL;
          do
          {
            v297 = *v294;
            v294 += 8;
            *v295++ = v297;
            --v296;
          }

          while (v296);
        }

        v298 = a1 + 4 * *(v61 + 1);
        v299 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
        memcpy((v298 + 10236), v299, 4 * *(v61 + 2));
        v69 = a1 + 4 * *(v61 + 1);
        v70 = 10300;
        goto LABEL_482;
      case -16255:
        v370 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 10084) = *(v370 + 2);
        *(a1 + 10088) = *(v370 + 3);
        *(a1 + 10092) = *(v370 + 4);
        *(a1 + 10096) = *(v370 + 5);
        return;
      case -16254:
        *(a1 + 9904) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16253:
        v152 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        *(a1 + 10104) = v152;
        *(a1 + 10100) = v152;
        return;
      case -16252:
        v371 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(v6 + 2541) = *(v371 + 1);
        *(a1 + 11148) = *(v371 + 2);
        return;
      case -16247:
        *(a1 + 10752) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        return;
      case -16227:
        v332 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v333 = *(v332 + 2);
        v334 = 1 << v333;
        v335 = a1 + 8 * (v333 >> 6);
        *(v335 + 72) |= v334;
        *(a1 + 8 * *(v332 + 2) + 88) = GTTraceFunc_argumentBytesWithMap(a2, v332[24], a3);
        v336 = *(v332 + 2);
        v337 = 1 << v336;
        v338 = a1 + 8 * (v336 >> 6);
        *(v338 + 80) &= ~v337;
        v154 = *(v332 + 1);
        v155 = *(v332 + 2);
        goto LABEL_314;
      case -16226:
        v153 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v154 = *(v153 + 1);
        v155 = *(v153 + 2);
LABEL_314:
        *(a1 + 8 * v155 + 336) = v154;
        return;
      case -16225:
        v159 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v160 = *(v159 + 2);
        v161 = 1 << v160;
        v162 = a1 + 8 * (v160 >> 6);
        *(v162 + 64) |= v161;
        *(a1 + 8 * *(v159 + 2) + 80) = GTTraceFunc_argumentBytesWithMap(a2, v159[24], a3);
        v163 = *(v159 + 2);
        v164 = 1 << v163;
        v165 = a1 + 8 * (v163 >> 6);
        *(v165 + 72) &= ~v164;
        v166 = *(v159 + 1);
        v167 = *(v159 + 2);
        goto LABEL_344;
      case -16224:
        v372 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v166 = *(v372 + 1);
        v167 = *(v372 + 2);
LABEL_344:
        *(a1 + 8 * v167 + 328) = v166;
        return;
      case -16223:
        v262 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v263 = *(v262 + 2);
        v264 = 1 << v263;
        v265 = a1 + 8 * (v263 >> 6);
        *(v265 + 1976) |= v264;
        *(a1 + 8 * *(v262 + 2) + 1984) = GTTraceFunc_argumentBytesWithMap(a2, v262[24], a3);
        v144 = *(v262 + 1);
        v145 = *(v262 + 2);
        goto LABEL_259;
      case -16222:
        v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v144 = *(v143 + 1);
        v145 = *(v143 + 2);
LABEL_259:
        *(a1 + 8 * v145 + 2232) = v144;
        return;
      case -16219:
        v156 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 10100) = *(v156 + 2);
        *(a1 + 10104) = *(v156 + 3);
        return;
      case -16214:
        v243 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v243 + 2) + 2480) = *(v243 + 1);
        v244 = *(v243 + 3);
        v245 = *(v243 + 4);
LABEL_277:
        *(a1 + 8 * v245 + 3504) = v244;
        return;
      default:
        if (v7 == -16384)
        {
          goto LABEL_150;
        }

        v81 = -16376;
        goto LABEL_112;
    }
  }

  if (v7 <= -16101)
  {
    switch(v7)
    {
      case -16162:
        v33 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v33 + 2) + 64) = *(v33 + 1);
        return;
      case -16161:
        *(a1 + 192) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16160:
        *(a1 + 193) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16159:
        v134 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v134 + 2) + 9928) = *(v134 + 1);
        return;
      case -16158:
        *(a1 + 11158) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16157:
        *(a1 + 11159) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16149:
        v141 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 2164) = *(v141 + 1);
        *(a1 + 2168) = *(v141 + 2);
        return;
      case -16148:
        v136 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 9920) = *(v136 + 1);
        *(a1 + 10760) = *(v136 + 2);
        *(a1 + 10764) = *(v136 + 3);
        return;
      case -16143:
        v137 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v138 = *(v137 + 2);
        v139 = 1 << v138;
        v140 = a1 + 8 * (v138 >> 6);
        *(v140 + 6944) |= v139;
        *(a1 + 8 * *(v137 + 2) + 6952) = GTTraceFunc_argumentBytesWithMap(a2, v137[24], a3);
        v130 = *(v137 + 1);
        v131 = *(v137 + 2);
        goto LABEL_166;
      case -16142:
        v126 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v127 = *(v126 + 3);
        v128 = 1 << v127;
        v129 = a1 + 8 * (v127 >> 6);
        *(v129 + 6944) &= ~v128;
        *(a1 + 8 * *(v126 + 3) + 6952) = *(v126 + 1);
        v130 = *(v126 + 2);
        v131 = *(v126 + 3);
        goto LABEL_166;
      case -16141:
        v132 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v130 = *(v132 + 1);
        v131 = *(v132 + 2);
LABEL_166:
        *(a1 + 8 * v131 + 7200) = v130;
        break;
      case -16140:
        v133 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v133 + 2) + 7448) = *(v133 + 1);
        break;
      case -16139:
        v135 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v135 + 2) + 8472) = *(v135 + 1);
        break;
      case -16138:
        v142 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v142 + 2) + 8472) = *(v142 + 1);
        *(a1 + 4 * *(v142 + 2) + 10620) = *(v142 + 6);
        *(a1 + 4 * *(v142 + 2) + 10684) = *(v142 + 7);
        break;
      case -16132:
        *(a1 + 10748) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        break;
      default:
        return;
    }

    return;
  }

  if (v7 <= -16087)
  {
    if (v7 == -16100)
    {
      v590 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v591 = *(v590 + 3);
      *(a1 + 1984) = *(v590 + 8);
      *(a1 + 2000) = v591;
      v592 = *(v590 + 6);
      *(a1 + 2008) = *(v590 + 2);
      *(a1 + 2024) = v592;
      return;
    }

    if (v7 != -16087)
    {
      return;
    }

    v93 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
    v94 = v93;
    v95 = *(v93 + 1);
    v96 = *(v93 + 2) + v95;
    if (v96 >= 0x40)
    {
      v96 = 64;
    }

    v97 = v96 - v95;
    if (v96 < v95)
    {
      v97 = 0;
    }

    v98 = ~(-1 << v97);
    if (v95 <= v96)
    {
      v99 = v95 & 0x3F;
    }

    else
    {
      v99 = 0;
    }

    *(a1 + 6944) &= ~(v98 << v99);
    v100 = *(v93 + 1);
    v101 = GTTraceFunc_argumentBytesWithMap(a2, v93[24], a3);
    if (*(v94 + 2) >= 1)
    {
      v102 = (a1 + 8 * v100 + 6952);
      v103 = *(v94 + 2) & 0x7FFFFFFFLL;
      do
      {
        v104 = *v101;
        v101 += 8;
        *v102++ = v104;
        --v103;
      }

      while (v103);
    }

    v69 = a1 + 8 * *(v94 + 1);
    v70 = 7200;
LABEL_452:
    v35 = GTTraceFunc_argumentBytesWithMap(a2, v94[25], a3);
    v37 = 8 * *(v94 + 2);
    goto LABEL_483;
  }

  switch(v7)
  {
    case -16086:
      v578 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v579 = *(v578 + 1);
      v580 = GTTraceFunc_argumentBytesWithMap(a2, v578[24], a3);
      if (*(v578 + 2) >= 1)
      {
        v581 = (a1 + 8 * v579 + 7448);
        v582 = *(v578 + 2) & 0x7FFFFFFFLL;
        do
        {
          v583 = *v580;
          v580 += 8;
          *v581++ = v583;
          --v582;
        }

        while (v582);
      }

      break;
    case -16085:
      v584 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v585 = *(v584 + 1);
      v586 = GTTraceFunc_argumentBytesWithMap(a2, v584[24], a3);
      if (*(v584 + 2) >= 1)
      {
        v587 = (a1 + 8 * v585 + 8472);
        v588 = *(v584 + 2) & 0x7FFFFFFFLL;
        do
        {
          v589 = *v586;
          v586 += 8;
          *v587++ = v589;
          --v588;
        }

        while (v588);
      }

      break;
    case -16084:
      v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v62 = *(v61 + 1);
      v63 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
      if (*(v61 + 2) >= 1)
      {
        v64 = (a1 + 8 * v62 + 8472);
        v65 = *(v61 + 2) & 0x7FFFFFFFLL;
        do
        {
          v66 = *v63;
          v63 += 8;
          *v64++ = v66;
          --v65;
        }

        while (v65);
      }

      v67 = a1 + 4 * *(v61 + 1);
      v68 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
      memcpy((v67 + 10620), v68, 4 * *(v61 + 2));
      v69 = a1 + 4 * *(v61 + 1);
      v70 = 10684;
LABEL_482:
      v35 = GTTraceFunc_argumentBytesWithMap(a2, v61[26], a3);
      v37 = 4 * *(v61 + 2);
LABEL_483:
      v59 = (v69 + v70);
LABEL_556:

      memcpy(v59, v35, v37);
      return;
    default:
      return;
  }
}