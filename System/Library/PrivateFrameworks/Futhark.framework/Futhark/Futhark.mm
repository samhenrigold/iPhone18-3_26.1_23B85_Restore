uint64_t createOrResetSessions(uint64_t a1, int a2, int a3, int a4)
{
  if (a4 < 1)
  {
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 4;
  do
  {
    v11 = *(a1 + 8 * v8);
    if (v11)
    {
      FKSessionReset(v11, a2 >> v8, a3 >> v8);
    }

    else
    {
      v12 = FKSessionCreate(a2 >> v8, a3 >> v8);
      *(a1 + 8 * v8) = v12;
      if (!v12)
      {
        return v10;
      }
    }

    ++v8;
  }

  while (a4 != v8);
  if (a4 <= 7)
  {
LABEL_8:
    v13 = a4;
    v14 = (a1 + 8 * a4);
    v15 = v13 + 1;
    do
    {
      if (*v14)
      {
        FKSessionDestroy(*v14);
        *v14 = 0;
      }

      ++v14;
    }

    while (v15++ != 8);
  }

  return 0;
}

uint64_t getNumSharedConcomps(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 312) + 104 * *(a1 + 8);
  if (*(v7 + 20) < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *(a2 + 16);
  v14 = *(v13 + 312) + 104 * *(a2 + 8);
  do
  {
    if (v12 >= *(v14 + 20))
    {
      break;
    }

    v15 = (*(v6 + 280) + 100 * *(*(v7 + 8) + 4 * v11));
    v16 = (*(v13 + 280) + 100 * *(*(v14 + 8) + 4 * v12));
    v17 = *(a1 + 24);
    v18 = *(a2 + 24);
    v19 = (v15[41] << v17);
    if (v19 >= (v16[41] << v18))
    {
      if ((v16[41] << v18) > (v15[40] << v17))
      {
        v10 = (v10 + concompsOverlap(v15, v6, v16, v13, a3, a4, a5, a6));
      }

      ++v12;
    }

    else
    {
      if (v19 > (v16[40] << v18))
      {
        v10 = (v10 + concompsOverlap(v15, v6, v16, v13, a3, a4, a5, a6));
      }

      ++v11;
    }
  }

  while (v11 < *(v7 + 20));
  return v10;
}

int *sortSequencesInSensibleOrder(void *a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = [a1 count];
  v3 = [a1 sortUsingComparator:&__block_literal_global_238];
  v65 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v64 - v4;
  v68 = v2;
  v66 = v2;
  if (v2 >= 1)
  {
    v6 = 0;
    v7 = v66 & 0x7FFFFFFF;
    v8 = (v66 + 3) & 0xFFFFFFFC;
    v9 = vdupq_n_s64(v7 - 1);
    v10 = xmmword_1E1157200;
    v11 = xmmword_1E1157210;
    v12 = v5 + 8;
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 2) = v6;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 1) = v6 + 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *v12 = v6 + 2;
        v12[1] = v6 + 3;
      }

      v6 += 4;
      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 4;
    }

    while (v8 != v6);
    v15 = 0;
    v16 = 1;
    v68 = v66;
    while (1)
    {
      v17 = [a1 objectAtIndex:v15];
      v67 = v15;
      v69 = v15 + 1;
      v70 = v16;
      if (v15 + 1 < v7)
      {
        v18 = v17;
        while (1)
        {
          v19 = [a1 objectAtIndex:v16];
          v20 = *(*(v18 + 16) + 312) + 104 * *(v18 + 8);
          v21 = *(v18 + 24);
          v22 = *(v20 + 52) << v21;
          v23 = *(*(v19 + 16) + 312) + 104 * *(v19 + 8);
          v24 = *(v19 + 24);
          v25 = *(v23 + 52) << v24;
          v26 = (v25 + v22) / 2;
          v27 = ((*(v23 + 30) + *(v23 + 28) + 1) >> 1 << v24) - ((*(v20 + 30) + *(v20 + 28) + 1) >> 1 << v21);
          if (v27 < 0)
          {
            v27 = -v27;
          }

          if (v27 < 4 * v26)
          {
            v28 = v19;
            [v18 boundingBox];
            v30 = v29;
            [v28 boundingBox];
            v32 = v31;
            [v28 boundingBox];
            if (v30 <= v32 + v33 * 2.0)
            {
              [v28 boundingBox];
              v35 = v34;
              [v18 boundingBox];
              v37 = v36;
              [v18 boundingBox];
              if (v35 <= v37 + v38 * 2.0)
              {
                [v18 boundingBox];
                v40 = v39;
                [v28 boundingBox];
                v42 = v41;
                [v28 boundingBox];
                if (v40 <= v42 + v43)
                {
                  [v28 boundingBox];
                  v45 = v44;
                  [v18 boundingBox];
                  v47 = v46;
                  [v18 boundingBox];
                  if (v45 <= v47 + v48)
                  {
                    break;
                  }
                }
              }
            }
          }

LABEL_34:
          if (++v16 == v7)
          {
            goto LABEL_35;
          }
        }

        if (fabsf((v25 - v22) / v26) <= 0.33)
        {
          break;
        }
      }

LABEL_35:
      v16 = v70 + 1;
      v15 = v69;
      if (v69 == v7)
      {
        goto LABEL_36;
      }
    }

    v49 = *&v5[4 * v67];
    v50 = *&v5[4 * v16];
    if (v49 == v50)
    {
      goto LABEL_34;
    }

    if (v50 >= v49)
    {
      v51 = *&v5[4 * v67];
    }

    else
    {
      v51 = *&v5[4 * v16];
    }

    if (v50 > v49)
    {
      v49 = *&v5[4 * v16];
    }

    v52 = v5;
    v53 = v7;
    while (1)
    {
      v54 = *v52;
      v55 = v51;
      if (*v52 == v49)
      {
        goto LABEL_31;
      }

      if (v54 > v49)
      {
        break;
      }

LABEL_32:
      ++v52;
      if (!--v53)
      {
        --v68;
        goto LABEL_34;
      }
    }

    v55 = v54 - 1;
LABEL_31:
    *v52 = v55;
    goto LABEL_32;
  }

LABEL_36:
  v56 = v66;
  result = [MEMORY[0x1E695DF70] arrayWithCapacity:v66];
  v58 = result;
  v59 = v65;
  if (v68 >= 1)
  {
    for (i = 0; i != v68; ++i)
    {
      if (v56 >= 1)
      {
        v61 = 0;
        v62 = 1;
        do
        {
          if (*&v5[4 * v61] == i)
          {
            result = [v58 addObject:{objc_msgSend(a1, "objectAtIndexedSubscript:", v61)}];
            if (v62)
            {
              result = [a1 objectAtIndexedSubscript:v61];
              v62 = 0;
              *(*(*(result + 2) + 312) + 104 * result[2] + 94) = 1;
            }
          }

          ++v61;
        }

        while (v59 != v61);
      }
    }
  }

  if (v56 >= 1)
  {
    v63 = 0;
    do
    {
      result = [a1 setObject:objc_msgSend(v58 atIndexedSubscript:{"objectAtIndexedSubscript:", v63), v63}];
      ++v63;
    }

    while ((v56 & 0x7FFFFFFF) != v63);
  }

  return result;
}

void sub_1E1146B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t runDetectionOnSession(uint64_t result, int a2, void *a3, int *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = *(result + 8 * a2 + 8);
  v62 = *(v4 + 168);
  v63 = *(v4 + 184);
  if (!*(v4 + 200))
  {
    return result;
  }

  v6 = a3;
  v8 = result;
  v9 = a2;
  v10 = mach_absolute_time();
  v11 = [v8 thresholdingAlgorithm];
  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v65 = v62;
        v66 = v63;
        FKThresholdBlockAverage(v4, &v65);
        goto LABEL_15;
      }

      goto LABEL_10;
    }

LABEL_9:
    v12 = [v8 binarizerLimit];
    v65 = v62;
    v66 = v63;
    FKThreshold(v4, &v65, v12);
    goto LABEL_15;
  }

  if (v11 == 2)
  {
    v13 = [v8 enableBinarizerFiltering];
    goto LABEL_13;
  }

  if (v11 == 3)
  {
    v65 = v62;
    v66 = v63;
    [v8 setBinarizerLimit:{FKThresholdCalculateOtsuLimit(v4, &v65)}];
    goto LABEL_9;
  }

LABEL_10:
  v13 = [v8 enableBinarizerFiltering];
  if (v6 < 1)
  {
LABEL_13:
    v16 = [v8 contrastLimit];
    v65 = v62;
    v66 = v63;
    v14 = v4;
    v15 = v13;
    v17 = 1;
    goto LABEL_14;
  }

  v65 = v62;
  v66 = v63;
  v14 = v4;
  v15 = v13;
  v16 = v6;
  v17 = 4;
LABEL_14:
  FKThresholdMinMaxBlock(v14, &v65, v15, v16, v17);
LABEL_15:
  v18 = mach_absolute_time();
  v19 = dword_1ECEA795C;
  if (!dword_1ECEA795C)
  {
    mach_timebase_info(&getTimeInMicro_sTimebaseInfo);
    v19 = dword_1ECEA795C;
  }

  *&v8[4 * v9 + 160] = (v18 - v10) * getTimeInMicro_sTimebaseInfo / (1000 * v19);
  v20 = mach_absolute_time();
  FKComponentsFind(v4);
  v21 = mach_absolute_time();
  v22 = dword_1ECEA795C;
  if (!dword_1ECEA795C)
  {
    mach_timebase_info(&getTimeInMicro_sTimebaseInfo);
    v22 = dword_1ECEA795C;
  }

  v23 = &v8[4 * v9];
  *(v23 + 48) = (v21 - v20) * getTimeInMicro_sTimebaseInfo / (1000 * v22);
  v24 = mach_absolute_time();
  [v8 detectDiacritics];
  FKSequencesFind(v4);
  v25 = mach_absolute_time();
  v26 = dword_1ECEA795C;
  if (!dword_1ECEA795C)
  {
    mach_timebase_info(&getTimeInMicro_sTimebaseInfo);
    v26 = dword_1ECEA795C;
  }

  v27 = v25 - v24;
  v28 = 0x1ECEA7000uLL;
  *(v23 + 56) = v27 * getTimeInMicro_sTimebaseInfo / (1000 * v26);
  *(v23 + 64) = 0;
  v29 = &v8[48 * v9];
  result = FKSessionGetMemoryUsage(v4, v29 + 37, v29 + 38, v29 + 39, v29 + 40);
  if (a2 >= 1)
  {
    v30 = v29[37];
    v29[36] = v30;
    v29[41] = v30 + result;
    if (!a4)
    {
      return result;
    }

    *a4 = 0;
    v31 = mach_absolute_time();
    v32 = [v8 contrastLimit];
    if (v6)
    {
      v33 = *(v4 + 324);
    }

    else
    {
      v33 = *(v4 + 324);
      if (v33 == -1)
      {
        goto LABEL_44;
      }

      v42 = 0;
      v43 = *(v4 + 288) - *(v4 + 292);
      v44 = *(v4 + 324);
      do
      {
        v45 = (*(v4 + 312) + 104 * v44);
        v42 += v45[5];
        v44 = *v45;
      }

      while (v44 != -1);
      if (!v42)
      {
        goto LABEL_44;
      }

      v46 = v43 >= 1000 ? 4 : 10;
      if (v43 / v42 < v46)
      {
LABEL_44:
        v6 = 0;
        v47 = v8 + 160;
LABEL_64:
        *a4 = v6;
        result = mach_absolute_time();
        v57 = result;
        v58 = dword_1ECEA795C;
        if (!dword_1ECEA795C)
        {
          result = mach_timebase_info(&getTimeInMicro_sTimebaseInfo);
          v58 = dword_1ECEA795C;
        }

        *&v47[4 * v9] += (v57 - v31) * *(v28 + 2392) / (1000 * v58);
        return result;
      }
    }

    v61 = v32;
    bzero(&v65, 0x400uLL);
    if (v33 == -1)
    {
      v34 = 0;
      v41 = 1;
    }

    else
    {
      v59 = v31;
      v60 = v6;
      v34 = 0;
      v35 = 0;
      do
      {
        v36 = *(v4 + 312) + 104 * v33;
        if (*(v36 + 20) >= 1)
        {
          v37 = 0;
          do
          {
            v38 = *(v4 + 280) + 100 * *(*(v36 + 8) + 4 * v37);
            v39 = *(v4 + 184);
            v64[0] = *(v4 + 168);
            v64[1] = v39;
            v40 = FKThresholdCalculateContrast(v4, v64, *(v38 + 80));
            if (v40)
            {
              v34 += v40;
              ++v35;
              ++*(&v65 + v40);
            }

            ++v37;
          }

          while (v37 < *(v36 + 20));
        }

        v33 = *v36;
      }

      while (v33 != -1);
      v41 = v35 < 30;
      v6 = v60;
      v28 = 0x1ECEA7000;
      v31 = v59;
    }

    v48 = 0;
    v49 = 0uLL;
    v47 = v8 + 160;
    do
    {
      v49 = vmaxq_s32(v49, *(&v65 + v48));
      v48 += 16;
    }

    while (v48 != 1024);
    if (vmaxvq_s32(v49) < 10)
    {
      v41 = 1;
    }

    if (!v41)
    {
      if (v34 < 20)
      {
        LODWORD(v54) = 0;
        v52 = v61;
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v52 = v61;
        do
        {
          v53 = v50 + 1;
          if (v50 > 0xFE)
          {
            break;
          }

          v51 += *(&v65 + v50) * v50;
          ++v50;
        }

        while (v51 < v34 / 20);
        if (v53 >= 0xFF)
        {
          v54 = 255;
        }

        else
        {
          v54 = v53;
        }

        if (*(&v65 + v54))
        {
          while (*(&v65 + (v54 - 1)) >= 1)
          {
            if (v54-- <= 1)
            {
              LODWORD(v54) = 0;
              break;
            }
          }
        }
      }

      v56 = 1374389535 * (10 * v52 + 90 * v54);
      v6 = (v56 >> 37) + (v56 >> 63);
    }

    goto LABEL_64;
  }

  v29[36] = 0;
  v29[41] = result;
  if (a4)
  {
    *a4 = 0;
  }

  return result;
}

BOOL concompsOverlap(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  LOWORD(a5) = a1[40];
  v8 = *&a5;
  LOWORD(a6) = a1[41];
  LOWORD(a7) = a1[42];
  *&v9 = *&a7;
  LOWORD(a8) = a1[43];
  *&v10 = *(a2 + 28);
  v11 = v8 / *&v10;
  v12 = *(a2 + 32);
  v13 = *&v9 / v12;
  v14 = (*&a6 - v8 + 1.0) / *&v10;
  *&v15 = *&a8 - *&v9 + 1.0;
  v16 = *&v15 / v12;
  LOWORD(v15) = a3[40];
  v17 = v15;
  LOWORD(v9) = a3[41];
  LOWORD(v10) = a3[42];
  v18 = v10;
  LOWORD(v10) = a3[43];
  v19 = *(a4 + 28);
  v20 = *(a4 + 32);
  v21 = v17 / v19;
  v22 = v18 / v20;
  v23 = (v9 - v17 + 1.0) / v19;
  v24 = (v10 - v18 + 1.0) / v20;
  v31.origin.x = v11;
  v31.origin.y = v13;
  v31.size.width = v14;
  v31.size.height = v16;
  v34.origin.x = v21;
  v34.origin.y = v22;
  v34.size.width = v23;
  v34.size.height = v24;
  v32 = CGRectIntersection(v31, v34);
  height = v32.size.height;
  width = v32.size.width;
  v32.origin.x = v11;
  v32.origin.y = v13;
  v32.size.width = v14;
  v32.size.height = v16;
  v35.origin.x = v21;
  v35.origin.y = v22;
  v35.size.width = v23;
  v35.size.height = v24;
  v33 = CGRectUnion(v32, v35);
  v25 = v14;
  if (v23 < v25)
  {
    v26 = v23;
    v25 = v26;
  }

  v27 = width * height / (v33.size.height * v25);
  return v27 > 0.8;
}

uint64_t __sortSequencesInApproximateScanOrder_block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [a3 boundingBox];
  if (v13 >= v7 + v11)
  {
    return -1;
  }

  if (v7 >= v13 + v15)
  {
    return 1;
  }

  if (v12 >= v5 + v9)
  {
    return -1;
  }

  if (v5 >= v12 + v14)
  {
    return 1;
  }

  v16 = v7 + v11 * 0.5;
  v17 = v13 + v15 * 0.5;
  if (v17 < v16)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void FKRecognizeGetCandidates(uint64_t a1, int *a2, _DWORD *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v5 = (a1 + 48);
  v6 = 1;
  v7 = *(a1 + 48) + *(a1 + 48);
  v8 = 4;
  __base = *(a1 + 40);
  v56 = v7;
  do
  {
    v9 = *(v5 - 6);
    v10 = *v5;
    if (v9 == 9475298)
    {
      v13 = *(a1 + 86) - *(a1 + 84) + 1;
      v14 = (3 * ((v13 << 8) / (v13 - *(a1 + 80) + *(a1 + 82) + 1)) - 384) / 2;
      if (v14 <= -128)
      {
        v14 = -128;
      }

      if (v14 >= 127)
      {
        v14 = 127;
      }

      if ((v14 + 128) >= 0xAB)
      {
        if (v6 > 14)
        {
          goto LABEL_44;
        }

        v20 = (&__base + 2 * v6);
        *v20 = 49;
        v20[1] = (v10 * 5.0) * 0.125;
        if (v6 != 14)
        {
          v16 = (&__base + 2 * v6);
          *(v16 + 2) = 108;
          v16[3] = (v10 + v10) * 0.125;
          if (v6 <= 12)
          {
            v17 = v10 * 0.125;
            v18 = 55;
LABEL_23:
            *(v16 + 4) = v18;
            v16[5] = v17;
LABEL_24:
            v6 = (v6 + 3);
            goto LABEL_44;
          }
        }
      }

      else
      {
        if (v6 > 14)
        {
          goto LABEL_44;
        }

        v15 = (&__base + 2 * v6);
        *v15 = 55;
        v15[1] = (v10 * 5.0) * 0.125;
        if (v6 != 14)
        {
          v16 = (&__base + 2 * v6);
          *(v16 + 2) = 49;
          v16[3] = (v10 + v10) * 0.125;
          if (v6 <= 12)
          {
            v17 = v10 * 0.125;
            v18 = 108;
            goto LABEL_23;
          }
        }
      }

      goto LABEL_43;
    }

    if (v9 == 124)
    {
      if (v6 > 14)
      {
        goto LABEL_44;
      }

      v11 = (&__base + 2 * v6);
      *v11 = 108;
      v11[1] = v10;
      if (v6 != 14)
      {
        v12 = (&__base + 2 * v6);
        *(v12 + 2) = 73;
        v12[3] = v10;
        if (v6 <= 12)
        {
          *(v12 + 4) = 49;
          v12[5] = v10;
          goto LABEL_24;
        }
      }

LABEL_43:
      v6 = 15;
      goto LABEL_44;
    }

    if (v6 <= 14)
    {
      v21 = &__base + 2 * v6;
      *v21 = v9;
      *(v21 + 1) = v10;
      v19 = (v6 + 1);
    }

    else
    {
      v19 = v6;
    }

    if (v9 > 255 || !index("cmosuvwxyz", v9 | 0x20u))
    {
      if (v9 == 48)
      {
        if (v19 > 14)
        {
          goto LABEL_41;
        }

        v25 = v10 * 0.5;
        v29 = (&__base + 2 * v19);
        *v29 = 111;
        v29[1] = v10 * 0.5;
        if (v19 == 14)
        {
          goto LABEL_43;
        }

        v27 = (&__base + 2 * v19);
        v28 = 79;
      }

      else
      {
        if (v9 != 53)
        {
          if (v9 == 49 && v19 <= 14)
          {
            v24 = (&__base + 2 * v19);
            *v24 = 108;
            v24[1] = v10 * 0.25;
            v6 = (v19 + 1);
            goto LABEL_44;
          }

LABEL_41:
          v6 = v19;
          goto LABEL_44;
        }

        if (v19 > 14)
        {
          goto LABEL_41;
        }

        v25 = v10 * 0.25;
        v26 = (&__base + 2 * v19);
        *v26 = 115;
        v26[1] = v10 * 0.25;
        if (v19 == 14)
        {
          goto LABEL_43;
        }

        v27 = (&__base + 2 * v19);
        v28 = 83;
      }

      *(v27 + 2) = v28;
      v27[3] = v25;
      goto LABEL_48;
    }

    if (v19 > 14)
    {
      goto LABEL_41;
    }

    v22 = &__base + 2 * v19;
    *v22 = v9 ^ 0x20;
    *(v22 + 1) = v10;
    v6 = v19 + 1;
    if ((v9 | 0x20) == 0x6F && v19 != 14)
    {
      v23 = (&__base + 2 * v6);
      *v23 = 48;
      v23[1] = v10;
LABEL_48:
      v6 = (v19 + 2);
    }

LABEL_44:
    ++v5;
    --v8;
  }

  while (v8);
  if (v6 < 15)
  {
    v30 = *(a1 + 44) / 10.0;
    v31 = (&__base + 2 * v6);
    *v31 = 1.7609e-38;
    v31[1] = v30;
    v32 = v6 + 1;
    qsort(&__base, v6 + 1, 8uLL, clistCompare);
    v33 = v6 < 1;
    LODWORD(v6) = v6 + 1;
    if (!v33)
    {
      goto LABEL_52;
    }
  }

  else
  {
    qsort(&__base, v6, 8uLL, clistCompare);
LABEL_52:
    v34 = 0;
    v35 = v57;
    v36 = 1;
    v32 = v6;
    do
    {
      v37 = v34 + 1;
      if (v34 + 1 >= v32)
      {
        v38 = 0;
      }

      else
      {
        v38 = 0;
        v39 = v35;
        v40 = v36;
        v41 = &__base + 2 * v34;
        do
        {
          if (*v41 == *v39)
          {
            ++v38;
          }

          else if (v38)
          {
            *(&__base + v40 - v38) = *v39;
          }

          ++v40;
          ++v39;
        }

        while (v32 != v40);
      }

      v32 -= v38;
      ++v36;
      v35 = (v35 + 8);
      v34 = v37;
    }

    while (v37 < v32 - 1);
  }

  if (v32 < 1)
  {
    v49 = 0.0;
    v50 = a2;
  }

  else
  {
    v42 = v32;
    v43 = &v56;
    v44 = 0.0;
    v45 = v32;
    do
    {
      v46 = *v43;
      v43 += 2;
      v44 = v44 + v46;
      --v45;
    }

    while (v45);
    v47 = v44;
    v48 = &v56;
    v49 = 0.0;
    v50 = a2;
    v51 = a2;
    do
    {
      *a3++ = *(v48 - 1);
      v52 = *v48;
      v48 += 2;
      v53 = (v52 * 100.0 / v47);
      *v51++ = v53;
      v49 = v49 + v53;
      --v42;
    }

    while (v42);
  }

  *v50 = ((100.0 - v49) + *v50);
}

float extractCandidates(uint64_t a1, float32x4_t *a2, int a3, void *a4, double a5)
{
  v6 = a4[12];
  if (v6)
  {
    v9 = 0;
    v10 = *a4 + 4 * a4[18] * a3;
    while (1)
    {
      v11 = *(v10 + 4 * v9);
      v12 = FKRecognitionLabels[v9];
      if (v12 != 8158332)
      {
        break;
      }

      *&a5 = v11 + a2[2].f32[3];
      a2[2].i32[3] = LODWORD(a5);
LABEL_14:
      if (v6 <= ++v9)
      {
        goto LABEL_59;
      }
    }

    LODWORD(a5) = a2[3].i32[3];
    if (v11 < *&a5 || v12 == 26996 && (a2[4].i32[0] == -1 || a2[4].i32[1] != -1))
    {
      goto LABEL_14;
    }

    *__s2 = FKRecognitionLabels[v9];
    v13 = *(a1 + 36);
    if (v13)
    {
      if (v13 == 4544069)
      {
        goto LABEL_13;
      }

      if ((v12 & 0x808080) == 0)
      {
        if (v12 == 92)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (!strstr((a1 + 40), __s2))
    {
      if (!v13 || v13 == 4412225)
      {
        goto LABEL_18;
      }

      if (v12 > 10524385)
      {
        if (v12 == 10524386 || v12 == 10715362)
        {
          goto LABEL_13;
        }

        v14 = 10649826;
      }

      else
      {
        if (v12 == 45250 || v12 == 8755426)
        {
          goto LABEL_13;
        }

        v14 = 9475298;
      }

      if (v12 != v14)
      {
LABEL_18:
        if (v12 <= 41410)
        {
          if (v12 <= 35266)
          {
            if (v12 != 33219 && v12 != 33987 && v12 != 34243)
            {
              goto LABEL_14;
            }

            v12 = 65;
            goto LABEL_13;
          }

          if (v12 <= 38594)
          {
            if (v12 == 35267)
            {
              v12 = 69;
              goto LABEL_13;
            }

            if (v12 != 37827)
            {
              goto LABEL_14;
            }

            goto LABEL_54;
          }

          if (v12 == 38595)
          {
LABEL_54:
            v12 = 79;
            goto LABEL_13;
          }

          v16 = 39107;
LABEL_52:
          if (v12 != v16)
          {
            goto LABEL_14;
          }

          v12 = 48;
          goto LABEL_13;
        }

        if (v12 <= 43458)
        {
          if (v12 == 41411 || v12 == 42179)
          {
            v12 = 97;
          }

          else
          {
            v15 = v12 == 42435;
            v12 = 97;
            if (!v15)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_13;
        }

        if (v12 > 46786)
        {
          if (v12 != 46787)
          {
            v16 = 47299;
            goto LABEL_52;
          }
        }

        else
        {
          if (v12 == 43459)
          {
            v12 = 101;
            goto LABEL_13;
          }

          if (v12 != 46019)
          {
            goto LABEL_14;
          }
        }

        v12 = 111;
      }
    }

LABEL_13:
    *&a5 = v11;
    *&a5 = candlistInsert(a2, v12, 1, a5);
    v6 = a4[12];
    goto LABEL_14;
  }

LABEL_59:
  v17 = a2[1].u32[2];

  return ccSetStr(a2, v17, 1, a5);
}

uint64_t FKPrintRender(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = v8;
  scaleCC(a1, a2, v8);
  for (i = 0; i != 16; ++i)
  {
    v4 = 16;
    do
    {
      v5 = *v2++;
      v6 = 799063683 * llroundf(v5 * 255.0);
      printf("%s", off_1E87048B8[((v6 >> 35) + (v6 >> 63))]);
      --v4;
    }

    while (v4);
    result = putchar(10);
  }

  return result;
}

void scaleCC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 82);
  v7 = *(a2 + 80);
  v8 = *(a2 + 86);
  v9 = *(a2 + 84);
  bzero(a3, 0x400uLL);
  v10 = *(a2 + 12);
  if (v10 != -1)
  {
    v11 = *(a2 + 80);
    v12 = 16.0 / (v6 - v7 + 1);
    v13 = *(a2 + 84);
    v14 = *(a1 + 256);
    v15 = *(a1 + 264);
    v16 = 16.0 / (v8 - v9 + 1);
    do
    {
      v17 = (v14 + 8 * v10);
      v18 = v17[3];
      if (v18 >= (*(v17 - 1) + 1))
      {
        v19 = (*(v15 + 2 * (v10 >> 6)) - v13 + (*v17 >> 2));
        v20 = (v19 * v16) + 0.0;
        v21 = ((v19 + 1) * v16) + 0.0;
        v22 = v18 - v11;
        v23 = (*(v17 - 1) + 1) - v11;
        v24 = ceilf(v21);
        v25 = floorf(v20);
        v26 = vcvtms_s32_f32(v20);
        do
        {
          v27 = v23 + 1;
          if (v24 > v25)
          {
            v28 = (v23 * v12) + 0.0;
            v29 = (v27 * v12) + 0.0;
            v30 = vcvtms_s32_f32(v28);
            v31 = ceilf(v29);
            v32 = floorf(v28);
            v33 = &a3[64 * v26 + 4 * v30];
            v34 = v30 + 1;
            v35 = v26;
            v36 = v25;
            do
            {
              v37 = ++v35;
              if (v31 > v32)
              {
                if (v21 <= v37)
                {
                  v38 = v21;
                }

                else
                {
                  v38 = v35;
                }

                if (v20 >= v36)
                {
                  v36 = v20;
                }

                v39 = v38 - v36;
                v40 = v34;
                v41 = v33;
                v42 = v32;
                do
                {
                  v43 = v40;
                  if (v29 <= v40)
                  {
                    v44 = (v27 * v12) + 0.0;
                  }

                  else
                  {
                    v44 = v40;
                  }

                  if (v28 >= v42)
                  {
                    v42 = (v23 * v12) + 0.0;
                  }

                  *v41 = *v41 + ((v44 - v42) * v39);
                  ++v41;
                  ++v40;
                  v42 = v43;
                }

                while (v31 > v43);
              }

              v33 += 64;
              v36 = v35;
            }

            while (v24 > v37);
          }
        }

        while (v23++ < v22);
      }

      v46 = v17[2];
      v10 -= v46;
      if (v46)
      {
        v47 = v10 == -1;
      }

      else
      {
        v47 = 1;
      }
    }

    while (!v47);
  }
}

uint64_t FKRecognizeGetLangExtrachars(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = *(a1 + v2);
    if (!*(a1 + v2) || v4 == 45)
    {
      break;
    }

    v5 = v4 << v1;
    if (v2 >= 3)
    {
      v5 = 0;
    }

    v3 += v5;
    ++v2;
    v1 += 8;
  }

  if (v3 == 28261)
  {
    v6 = &languageExtrachars;
    return v6[1];
  }

  else
  {
    v7 = &languageExtrachars;
    v8 = 15;
    while (--v8)
    {
      v6 = v7 + 4;
      v9 = v7[4];
      v7 += 4;
      if (v9 == v3)
      {
        return v6[1];
      }
    }

    return 0;
  }
}

uint64_t FKRecognizeAddLanguage(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 == 59)
  {
    v3 = a2 + 1;
  }

  else
  {
    result = FKRecognizeGetLangExtrachars(a2);
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  *__src = 0;
  v5 = *v3;
  if (*v3)
  {
    v6 = (a1 + 40 + strlen((a1 + 40)));
    do
    {
      while (1)
      {
        v7 = v3[1];
        if ((v7 & 0xC0) == 0x80)
        {
          v8 = v3[2];
          v3 += 2;
          v9 = v8 & 0xC0;
          v10 = v8 << 16;
          if (v9 == 128)
          {
            ++v3;
          }

          else
          {
            v10 = 0;
          }

          v11 = v7 << 8;
        }

        else
        {
          v10 = 0;
          v11 = 0;
          ++v3;
        }

        v12 = v11 | v5 | v10;
        *__src = v12;
        if (&v6[-a1 - 40] > 124)
        {
          return 1;
        }

        *__s2 = v12;
        v13 = *(a1 + 36);
        if (!v13)
        {
          break;
        }

        if (v13 == 4544069)
        {
          goto LABEL_31;
        }

        if ((v12 & 0x808080) != 0)
        {
          break;
        }

        if (v12 != 92)
        {
          goto LABEL_31;
        }

LABEL_33:
        strcpy(v6, __src);
        v6 += strlen(__src);
        v5 = *v3;
        if (!*v3)
        {
          return 1;
        }
      }

      if (!strstr((a1 + 40), __s2))
      {
        if (!v13 || v13 == 4412225)
        {
          goto LABEL_33;
        }

        if (v12 > 10524385)
        {
          if (v12 == 10524386 || v12 == 10649826)
          {
            goto LABEL_31;
          }

          v14 = 10715362;
        }

        else
        {
          if (v12 == 45250 || v12 == 8755426)
          {
            goto LABEL_31;
          }

          v14 = 9475298;
        }

        if (v12 != v14)
        {
          goto LABEL_33;
        }
      }

LABEL_31:
      v5 = *v3;
    }

    while (*v3);
  }

  return 1;
}

uint64_t strIsInLang(uint64_t a1, int a2)
{
  *__s2 = a2;
  v3 = *(a1 + 36);
  if (v3)
  {
    if (v3 == 4544069)
    {
      return 1;
    }

    if ((a2 & 0x808080) == 0)
    {
      return a2 != 92;
    }
  }

  result = strstr((a1 + 40), __s2);
  if (result)
  {
    return 1;
  }

  if (v3 && v3 != 4412225)
  {
    result = 1;
    if (a2 > 10524385)
    {
      if (a2 != 10524386 && a2 != 10649826)
      {
        v5 = 10715362;
LABEL_17:
        if (a2 != v5)
        {
          return 0;
        }
      }
    }

    else if (a2 != 45250 && a2 != 8755426)
    {
      v5 = 9475298;
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t FKRecognizeSetLanguage(uint64_t a1, char *a2)
{
  *(a1 + 40) = 0;
  if (a2 && (v2 = *a2) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    while (v2 && v2 != 45)
    {
      v6 = v2 << v3;
      if ((v5 - 1) >= 3)
      {
        v6 = 0;
      }

      v4 += v6;
      v2 = a2[v5++];
      v3 += 8;
    }

    *(a1 + 36) = v4;
    return FKRecognizeAddLanguage(a1, a2);
  }

  else
  {
    *(a1 + 36) = 0;
    return 1;
  }
}

uint64_t FKRecognizeSequence(uint64_t a1, uint64_t a2, double a3)
{
  v121 = *MEMORY[0x1E69E9840];
  v117 = 0;
  LODWORD(v5) = *(a2 + 20);
  if (v5 < 1)
  {
    goto LABEL_38;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    while (1)
    {
      v9 = *(*(a2 + 8) + 4 * v6);
      v10 = *(a1 + 280) + 100 * v9;
      if ((*(v10 + 94) & 8) != 0)
      {
        break;
      }

      v118[v7++] = v9;
      if (v7 != 16)
      {
        goto LABEL_24;
      }

      FKRecognizeMultipleConcomps(a1, v118, 16);
      v7 = 0;
      ++v6;
      v5 = *(a2 + 20);
      v8 = v10;
      if (v6 >= v5)
      {
        goto LABEL_38;
      }
    }

    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 52) = 0;
    *(v10 + 44) = 0;
    *(v10 + 60) = 0;
    if (v8)
    {
      if ((*(v8 + 93) & 3) != 0)
      {
        v11 = *(v8 + 84);
        v12 = *(v8 + 86);
        v13 = (v12 + v11) >> 1;
        v14 = (3 * v12 + v11) >> 2;
        if (*(v8 + 93))
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }
      }

      else
      {
        v15 = (3 * *(v8 + 86) + *(v8 + 84)) >> 2;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v10 + 82) - *(v10 + 80);
    v17 = *(v10 + 86);
    v18 = *(v10 + 84);
    v19 = v17 - v18 + 1;
    if (3 * v19 > 2 * (v16 + 1) || 3 * (v16 + 1) <= *(a2 + 60))
    {
      goto LABEL_20;
    }

    if (!v8 || (v17 + v18 + 1) >> 1 <= v15)
    {
      orderDiacriticToClusterCenters(a1, v10, __base);
      if (v120 == 2)
      {
        v20 = 126;
      }

      else
      {
        v21 = *(v10 + 64);
        if (v21 == -1 || (v22 = *(v10 + 82) - *(v10 + 80) + 2, v23 = (*(a1 + 280) + 100 * v21), v24 = v23[41] - v23[40] + 2, 3 * v22 >= 4 * v24) || 3 * v24 >= 4 * v22 || (v25 = *(v10 + 86) - *(v10 + 84) + 2, v26 = v23[43] - v23[42] + 2, 3 * v25 >= 4 * v26) || 3 * v26 >= 4 * v25)
        {
          v20 = 45;
        }

        else
        {
          v20 = 61;
        }
      }

      goto LABEL_23;
    }

    if (v16 >= 2 * v19)
    {
      v20 = 95;
    }

    else
    {
LABEL_20:
      if (v17 - v18 < v16 || *(v10 + 72) >= ((v19 * v19) >> 1))
      {
        v20 = 46;
      }

      else
      {
        v20 = 44;
      }
    }

LABEL_23:
    *&a3 = ccSetStr(v10, v20, 1, a3);
    *(v10 + 48) = 1065353216;
    LODWORD(v5) = *(a2 + 20);
LABEL_24:
    ++v6;
    v8 = v10;
  }

  while (v6 < v5);
  if (v7 > 0)
  {
    FKRecognizeMultipleConcomps(a1, v118, v7);
  }

LABEL_38:
  rsSetUpDownNum(a1, a2);
  if (*(a2 + 20) >= 1)
  {
    v27 = 0;
    do
    {
      rcFixSpecials(a1, a2, v27++);
      v28 = *(a2 + 20);
    }

    while (v27 < v28);
    v118[0] = 0;
    if (v28 > 0)
    {
      v29 = 0;
      v30 = 0;
      do
      {
        if (shouldTestSplit(*(a1 + 280) + 100 * *(*(a2 + 8) + 4 * v30)))
        {
          if (trySplit(a1, a2, v118))
          {
            v29 = 1;
          }

          v30 = v118[0];
        }

        v118[0] = ++v30;
        v32 = *(a2 + 20);
      }

      while (v30 < v32);
      v117 = v29;
      if (v32 >= 1)
      {
        for (i = 0; i < v34; ++i)
        {
          *&v31 = rcFixSlanted_il(a1, a2, i, v31);
          v34 = *(a2 + 20);
        }

        if (v34 >= 3)
        {
          for (j = 0; j < v34; ++j)
          {
            v36 = *(*(a1 + 280) + 100 * *(*(a2 + 8) + 4 * j) + 48);
            if (v36 > 0.0)
            {
              v31 = v36;
              if (v31 > 0.1 || j && j != v34 - 1)
              {
                goto LABEL_58;
              }
            }

            FKSequenceRemoveConcomp(a1, a2, j--);
            v34 = *(a2 + 20);
            v29 = 1;
LABEL_58:
            if (v34 < 3)
            {
              break;
            }
          }

          v117 = v29;
          if (v34 >= 3)
          {
            v37 = 1;
            while (1)
            {
              v38 = *(a2 + 8);
              v39 = *(v38 + 4 * v37);
              v40 = (*(a1 + 280) + 100 * v39);
              if (v40[2].i32[2] == 47)
              {
                v42 = v40 + 4;
                v41 = v40[4].u32[0];
                v43 = v40[4].i32[1];
                if ((v43 & v41) == 0xFFFFFFFF)
                {
                  v47 = v37 + 1;
                  v48 = combineSlash(a1, v39, *(v38 + 4 * (v37 - 1)), *(v38 + 4 * v47));
                  if (v48)
                  {
                    v45 = v48;
                    v40[4].i32[1] = FKSequenceRemoveConcomp(a1, a2, v47);
                    v46 = --v37;
LABEL_71:
                    v42->i32[0] = FKSequenceRemoveConcomp(a1, a2, v46);
                    v40[5].i8[14] |= 0x20u;
                    *(a2 + 93) = 0;
                    v29 = 1;
                    *&v31 = ccSetStr(v40, v45, 1, v50);
                  }
                }

                else if ((v41 != -1) != (v43 != -1))
                {
                  v44 = combineSlash(a1, v39, *(v38 + 4 * (v37 - 1)), v41);
                  if (v44)
                  {
                    v45 = v44;
                    v46 = v37 - 1;
                    v42 = (v40 + 68);
                    --v37;
                  }

                  else
                  {
                    v49 = combineSlash(a1, *(*(a2 + 8) + 4 * v37), v42->u32[0], *(*(a2 + 8) + 4 * (v37 + 1)));
                    if (!v49)
                    {
                      goto LABEL_72;
                    }

                    v45 = v49;
                    v46 = v37 + 1;
                    v42 = (v40 + 68);
                  }

                  goto LABEL_71;
                }
              }

LABEL_72:
              ++v37;
              v34 = *(a2 + 20);
              if (v37 >= v34 - 1)
              {
                v117 = v29;
                break;
              }
            }
          }
        }

        if (v34 >= 1)
        {
          for (k = 0; k < v52; ++k)
          {
            rcAddDiacritics(a1, a2, k, v31);
            v52 = *(a2 + 20);
          }

          if (v52 >= 1)
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            while (1)
            {
              v56 = v55;
              v57 = *(*(a2 + 8) + 4 * v54);
              v55 = *(a1 + 280) + 100 * v57;
              if (v56)
              {
                break;
              }

LABEL_99:
              if (++v54 >= *(a2 + 20))
              {
                v117 = v29;
                goto LABEL_101;
              }
            }

            v58 = *(v55 + 40);
            if (!v53 || (*(v55 + 94) & 8) == 0)
            {
              if (v58 <= 0x2E && ((1 << v58) & 0x508400000000) != 0)
              {
                if (*(v55 + 64) != -1)
                {
                  goto LABEL_88;
                }

                if (v58 == 39)
                {
                  if (*(v56 + 40) != 39)
                  {
                    goto LABEL_98;
                  }

                  v60 = v54;
                  *(v56 + 64) = v57;
                  FKSequenceRemoveConcomp(a1, a2, v54);
                  *(v55 + 94) = 1;
                  *(v56 + 40) = 34;
                  --v54;
                  v61 = *(a1 + 280);
                  v62 = v61 + 100 * *(*(a2 + 8) + 4 * (v60 - 1));
                  v63 = *(v62 + 64);
                  if (v63 != -1 && *(v62 + 68) == -1)
                  {
                    v64 = *(v62 + 86);
                    v65 = *(v62 + 84);
                    v66 = (v61 + 100 * v63);
                    v67 = v66[43];
                    v68 = v66[42];
                    v69 = v67 - v68 + v64 - v65;
                    v70 = 30 * (v64 - v65 - (v67 - v68)) / (v69 + 5);
                    v71 = *(v62 + 82);
                    v72 = *(v62 + 80);
                    v73 = v66[41];
                    LODWORD(v66) = v66[40];
                    v74 = v71 - v72 - (v73 - v66);
                    v75 = v73 - v66 + v71 - v72;
                    v76 = v75 + 2;
                    v75 += 5;
                    v77 = (40 * (((v64 + v65 + 1) >> 1) - ((v67 + v68 + 1) >> 1))) / (v69 + 5);
                    v78 = (20 * (((v73 + v66 + 1) >> 1) - (((v76 + (v76 >> 31)) >> 1) + ((v71 + v72 + 1) >> 1)))) / v75;
                    LODWORD(v66) = (30 * (2 * v69 - 3 * v76) + 120) / (3 * v76 + 2 * v69 + 7);
                    if ((v70 * v70 + 30 * v74 / v75 * (30 * v74 / v75) + v77 * v77 + v78 * v78 + v66 * v66) <= 0x63)
                    {
                      v53 = 0;
                      v29 = 1;
                      goto LABEL_99;
                    }
                  }

                  goto LABEL_88;
                }
              }

              if ((v58 & 0xFFFFFFFE) != 0x3A || (*(v56 + 94) & 8) != 0 || (*(v55 + 86) + *(v55 + 84) + 1) >> 1 >= *(v56 + 84))
              {
LABEL_98:
                v53 = 0;
                goto LABEL_99;
              }
            }

LABEL_88:
            FKSequenceRemoveConcomp(a1, a2, v54--);
            v29 = 1;
            v53 = 1;
            goto LABEL_99;
          }
        }
      }
    }
  }

LABEL_101:
  v79 = computeSpaceLimit(a1, a2);
  if (*(a2 + 20) >= 1)
  {
    v80 = v79;
    v81 = 0;
    do
    {
      rcSpace(a1, a2, v81++, v80);
    }

    while (v81 < *(a2 + 20));
  }

  rsSetUpDownNum(a1, a2);
  LODWORD(v82) = *(a2 + 20);
  if ((v82 & 0x80000000) == 0)
  {
    v83 = 0;
    LODWORD(v84) = 0;
    v116 = 0;
    v85 = 0;
    v86 = 1;
    while (1)
    {
      v87 = v85;
      if (v83 >= v82)
      {
        v85 = 0;
      }

      else
      {
        v85 = *(a1 + 280) + 100 * *(*(a2 + 8) + 4 * v83);
      }

      v115 = v87;
      v88 = isWordBoundary(v87, v85);
      if (v88)
      {
        v90 = v83 - v84 == 4 || v116 == 0;
        v116 = 0;
        if (v90)
        {
          if (v86)
          {
            if (v83 - v84 >= 2)
            {
              v84 = v84;
              if (v83 > v84)
              {
                while (1)
                {
                  v91 = (*(a1 + 280) + 100 * *(*(a2 + 8) + 4 * v84));
                  v92 = v91[2].i32[2] - 48;
                  if (v92 <= 0x3F)
                  {
                    if (((1 << v92) & 0x1000000002000002) != 0)
                    {
                      v93 = 49;
                      goto LABEL_123;
                    }

                    if (((1 << v92) & 0x8000000080000001) != 0)
                    {
                      v93 = 48;
LABEL_123:
                      *&v89 = ccSetStr(v91, v93, 0, v89);
                    }
                  }

                  if (v83 == ++v84)
                  {
                    v116 = 0;
                    break;
                  }
                }
              }
            }
          }
        }

        v86 = 1;
        LODWORD(v84) = v83;
      }

      if (!v85)
      {
        LODWORD(v82) = *(a2 + 20);
LABEL_143:
        if (v82 >= 1)
        {
          for (m = 0; m < v98; ++m)
          {
            checkSpaceOne(a1, a2, m);
            v98 = *(a2 + 20);
          }

          if (v98 >= 1)
          {
            v99 = 0;
            do
            {
              rcSelectCase(a1, a2, v99++);
            }

            while (v99 < *(a2 + 20));
          }
        }

        break;
      }

      if (v83 - v84 == 3)
      {
        v94 = (v85 + 40);
        v95 = "mM";
      }

      else
      {
        if (v83 - v84 != 2)
        {
          goto LABEL_134;
        }

        v94 = (v85 + 40);
        v95 = "aApP";
      }

      if (!strstr(v95, v94))
      {
LABEL_134:
        if (!strstr("oO0l1I$", (v85 + 40)) || !v88 && ((*(v115 + 93) ^ *(v85 + 93)) & 1) != 0)
        {
          v86 = 0;
        }

        if (*(v85 + 24) == 73)
        {
          v86 = 0;
        }

        goto LABEL_140;
      }

      v116 = 1;
LABEL_140:
      v82 = *(a2 + 20);
      if (v83++ >= v82)
      {
        goto LABEL_143;
      }
    }
  }

  rsRemoveBadWords(a1, a2);
  if (!*(a2 + 93))
  {
    FKSequenceRecalculateBox(a1, a2);
    FKSequenceSortAndProcess(a1, a2, 0);
    v117 = 1;
  }

  v100 = malloc_type_malloc(*(a2 + 20) + 1, 0x817380B7uLL);
  *(a2 + 80) = v100;
  *(a2 + 88) = *(a2 + 20);
  *v100 = 0;
  if (*(a2 + 20) >= 1)
  {
    v101 = 0;
    while (1)
    {
      v102 = *(a1 + 280) + 100 * *(*(a2 + 8) + 4 * v101);
      v103 = *(a2 + 80);
      v104 = strlen(v103);
      v105 = strlen((v102 + 40));
      if (*(a1 + 336))
      {
        v106 = v105 + 20;
      }

      else
      {
        v106 = v105;
      }

      v107 = v104 + v106 + 2;
      v108 = *(a2 + 88);
      if (v107 > v108)
      {
        v109 = 2 * v108;
        if (v109 <= v107)
        {
          v110 = v107;
        }

        else
        {
          v110 = v109;
        }

        v111 = malloc_type_realloc(v103, v110, 0x1C764C12uLL);
        if (!v111)
        {
          return v117;
        }

        v103 = v111;
        *(a2 + 80) = v111;
        *(a2 + 88) = v110;
      }

      if (*(v102 + 95))
      {
        v103[v104++] = 32;
      }

      if (!*(a1 + 336))
      {
        break;
      }

      if (!*(v102 + 96))
      {
        v113 = shouldTestSplit(v102);
        v112 = *(a2 + 80);
        if (v113)
        {
          sprintf((v112 + v104), "\x1B[31m%s\x1B[0m");
          goto LABEL_171;
        }

        goto LABEL_168;
      }

      sprintf((*(a2 + 80) + v104), "\x1B[32m%s\x1B[0m");
LABEL_171:
      if (++v101 >= *(a2 + 20))
      {
        return v117;
      }
    }

    v112 = *(a2 + 80);
LABEL_168:
    strcpy((v112 + v104), (v102 + 40));
    goto LABEL_171;
  }

  return v117;
}

void rsSetUpDownNum(char *result, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(a2 + 44))
  {
    v44[1] = v44;
    v46 = 0;
    MEMORY[0x1EEE9AC00](result);
    v5 = v44 - ((v4 + 15) & 0x7FFFFFFF0);
    v7 = *(v6 + 20);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = v7 - 1;
      do
      {
        v11 = *(*(a2 + 8) + 4 * v10);
        v12 = *(result + 35) + 100 * v11;
        if ((*(v12 + 94) & 8) != 0)
        {
          v9 = 1;
        }

        else
        {
          if (v8)
          {
            v13 = isWordBoundary(*(result + 35) + 100 * v11, v8) | v9;
            vUpdate(&v46, v8, v13);
            vPredict(&v46, a2, v8, v12, v13);
            v9 = 0;
            *&v5[4 * v10] = v46;
          }

          else
          {
            *&v5[4 * v10] = 0;
          }

          v8 = v12;
        }

        v14 = v10-- + 1;
      }

      while (v14 > 1);
      v15 = *(a2 + 20);
      v46 = 0;
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 1;
        do
        {
          v20 = (*(result + 35) + 100 * *(*(a2 + 8) + 4 * v16));
          if ((v20[5].i8[14] & 8) != 0)
          {
            if (v20[2].i32[2] != 39)
            {
              v19 = 1;
            }

            v21 = v16 + 1;
            goto LABEL_79;
          }

          if (v17)
          {
            vUpdate(&v46, v17, v18);
            v18 = isWordBoundary(v17, v20) | v19;
            vPredict(&v46, a2, v17, v20, v18);
          }

          else
          {
            v18 = v19;
          }

          v45 = 0;
          vUpdate(&v45, v20, v18);
          v21 = v16 + 1;
          if (v16 + 1 >= *(a2 + 20))
          {
            v23 = 0;
          }

          else
          {
            v23 = *(result + 35) + 100 * *(*(a2 + 8) + 4 * v21);
          }

          v24 = &v5[4 * v16];
          v25 = v45 + v46 + *v24;
          if ((SBYTE1(v45) + SBYTE1(v46) + v24[1] < 0) ^ __OFADD__(SBYTE1(v45) + SBYTE1(v46), v24[1]) | (SBYTE1(v45) + SBYTE1(v46) + v24[1] == 0))
          {
            v26 = 0;
          }

          else
          {
            v26 = 1;
          }

          v27 = v20[5].i8[13] & 0xFC;
          if (v25 > 0)
          {
            ++v27;
          }

          v20[5].i8[13] = v27 | (2 * v26);
          if (BYTE2(v45))
          {
            if (BYTE2(v45) == 100)
            {
              v28 = v20[1].i32[2];
LABEL_37:
              if (!v18 || (v28 & 0xFFFFFFDF) != 0x53)
              {
                f32 = v20[3].f32;
                v34 = 4;
                while (1)
                {
                  v22 = *f32;
                  if (v22 < 0.1)
                  {
                    goto LABEL_78;
                  }

                  v35 = *(f32 - 6);
                  if ((v35 & 0xFFFFFFDF) == 0x4F)
                  {
                    v31 = 48;
                    goto LABEL_76;
                  }

                  if ((v35 & 0xFFFFFFEF) == 0x6C || v35 == 73)
                  {
                    v31 = 49;
                  }

                  else
                  {
                    v31 = *(f32 - 6);
                  }

                  if (v31 - 48 <= 9)
                  {
                    goto LABEL_76;
                  }

                  ++f32;
                  if (!--v34)
                  {
                    goto LABEL_78;
                  }
                }
              }

              v30 = v20;
              v31 = 36;
              v32 = 1;
              goto LABEL_77;
            }

            if (SBYTE2(v45) < 0)
            {
LABEL_53:
              v37 = v24[3] + SHIBYTE(v46);
              v28 = v20[1].i32[2];
              goto LABEL_54;
            }

            v29 = BYTE2(v46);
          }

          else
          {
            v29 = BYTE2(v46);
            if (!BYTE2(v46))
            {
              if (!v24[2])
              {
                goto LABEL_53;
              }

              v29 = 0;
            }
          }

          v28 = v20[1].i32[2];
          if (v24[2] + v29 >= 0)
          {
            goto LABEL_37;
          }

          v37 = v24[3] + SHIBYTE(v46);
LABEL_54:
          v38 = v28 - 48;
          if ((v28 - 48) <= 0x3F)
          {
            if (((1 << v38) & 0x8000000080000001) != 0)
            {
              v39 = v25 <= 0;
              v40 = 111;
              v41 = 79;
              goto LABEL_57;
            }

            if (((1 << v38) & 0x1000000000000002) != 0)
            {
              goto LABEL_66;
            }
          }

          if (v28 == 124 || v28 == 9475298)
          {
LABEL_66:
            if (v37 <= 0)
            {
              v28 = 108;
            }

            else
            {
              v28 = 73;
            }

            ccSetStr(v20, v28, 0, v22);
LABEL_70:
            if (v18 && v28 == 108 && (!v23 || strstr("bcCdfghklImnpPqrsStvVwWxXzZñðßç',;:", (v23 + 40))))
            {
              v20[2].i32[2] = 73;
            }

            goto LABEL_78;
          }

          if (v28 == 73 && v37 <= 0)
          {
            if (v20[3].f32[0] < 0.8)
            {
              v28 = 108;
              v20[2].i32[2] = 108;
              goto LABEL_70;
            }
          }

          else
          {
            if (v28 > 82)
            {
              if (v28 != 115 && v28 != 83)
              {
                goto LABEL_70;
              }

LABEL_93:
              v39 = v25 <= 0;
              v40 = 115;
              v41 = 83;
LABEL_57:
              if (v39)
              {
                v31 = v40;
              }

              else
              {
                v31 = v41;
              }

LABEL_76:
              v30 = v20;
              v32 = 0;
LABEL_77:
              ccSetStr(v30, v31, v32, v22);
              goto LABEL_78;
            }

            if (v28 == 53)
            {
              goto LABEL_93;
            }

            if (v28 != 57)
            {
              goto LABEL_70;
            }

            v20[2].i32[2] = 103;
          }

LABEL_78:
          v19 = 0;
          v15 = *(a2 + 20);
          v17 = v20;
LABEL_79:
          v16 = v21;
        }

        while (v21 < v15);
      }
    }
  }
}

float rcFixSpecials(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (*(a1 + 280) + 100 * *(*(a2 + 8) + 4 * a3));
  v4 = v3[1].i32[2];
  if (!index("{}[]", v4) || (v3[5].i8[13] & 2) != 0)
  {
    if (v4 == 40 && (v3[5].i8[13] & 2) == 0 && v3[5].u16[3] - v3[5].u16[2] <= 2 * (v3[5].u16[1] - v3[5].u16[0]))
    {
      v7 = 99;
      goto LABEL_11;
    }

    if ((v3[5].i8[14] & 8) != 0)
    {
      return *&v5;
    }

    v6 = v3[5].u16[1] - v3[5].u16[0];
    if (v6 > 3 || v3[5].u16[3] - v3[5].u16[2] < 3 * v6 + 2)
    {
      return *&v5;
    }
  }

  v7 = 124;
LABEL_11:

  *&v5 = ccSetStr(v3, v7, 1, v5);
  return *&v5;
}

float rcFixSlanted_il(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v4 = (*(a1 + 280) + 100 * *(*(a2 + 8) + 4 * a3));
  if ((v4[1].i32[2] & 0xFFFFFFDF) == 0x5A)
  {
    if (v4[4].i32[0] == -1)
    {
      v5 = 6;
    }

    else
    {
      v5 = 9;
    }

    if (v5 + v5 * (v4[5].u16[3] - v4[5].u16[2]) >= 16 * (v4[5].u16[1] - v4[5].u16[0]) + 16 && 5 * *(a2 + 60) > 3 * *(a2 + 52))
    {
      *&a4 = ccSetStr(v4, 0x6Cu, 1, a4);
    }
  }

  return *&a4;
}

void rcAddDiacritics(uint64_t result, uint64_t a2, unsigned int a3, double a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = *(result + 280);
  v5 = (v4 + 100 * *(*(a2 + 8) + 4 * a3));
  v6 = v5[5].i8[14];
  if ((v6 & 0x20) != 0)
  {
    return;
  }

  v9 = v5[2].i32[2];
  v10 = v5[4].i32[0];
  if (v10 != -1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v5[5].u16[3];
    v15 = v5[5].u16[2];
    v16 = 1;
    while (1)
    {
      v17 = (v4 + 100 * v10);
      v18 = v17[43];
      if ((v14 + v15 + 1) >> 1 >= v18)
      {
        ++v12;
      }

      if (v18 <= v15)
      {
        ++v13;
        if ((v16 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v17[42] >= v14)
        {
          ++v11;
        }

        if ((v16 & 1) == 0)
        {
LABEL_13:
          v19 = v17[40];
          v20 = v12 == 1;
          goto LABEL_15;
        }
      }

      v16 = 0;
      v10 = v5[4].i32[1];
      if (v10 == -1)
      {
        goto LABEL_13;
      }
    }
  }

  v19 = 0;
  v11 = 0;
  v20 = 0;
  v13 = 0;
LABEL_15:
  if (v9 > 91)
  {
    if (v9 > 104)
    {
      if (v9 > 28273)
      {
        if (v9 != 28274)
        {
          if (v9 == 29810)
          {
            if (v20)
            {
              v5[5].i8[14] = v6 | 0x20;
              v9 = 29801;
            }

            else
            {
              v9 = 29810;
            }
          }

          else if (v9 == 29812)
          {
            if (v20)
            {
              v5[5].i8[14] = v6 | 0x20;
              v9 = 26996;
            }

            else
            {
              v9 = 29812;
            }
          }

          goto LABEL_123;
        }
      }

      else
      {
        if ((v9 - 105) > 0x14)
        {
          goto LABEL_123;
        }

        if (((1 << (v9 - 105)) & 0x1C000B) != 0)
        {
          goto LABEL_55;
        }

        if (v9 != 109)
        {
          if (v9 != 110)
          {
            goto LABEL_123;
          }

          if (v13 != 1)
          {
            v9 = 110;
            goto LABEL_123;
          }

          if ((v5[5].u16[1] + v5[5].u16[0] + 1) >> 1 >= v19)
          {
            v9 = 110;
            goto LABEL_112;
          }

          v9 = 26994;
          goto LABEL_111;
        }
      }

      if (v13 != 1)
      {
        goto LABEL_123;
      }

      v24 = v5[5].u16[0];
      v25 = v5[5].u16[1];
      if ((1431655766 * (v24 + 2 * v25)) >> 32 >= v19)
      {
        if ((1431655766 * (v25 + 2 * v24)) >> 32 <= v19)
        {
          goto LABEL_112;
        }

        v9 = 28265;
      }

      else
      {
        v9 = 6910578;
      }

LABEL_111:
      v5[5].i8[14] = v6 | 0x20;
LABEL_112:
      v30 = v5[4].i32[0];
      v31 = v4 + 100 * v30;
LABEL_133:
      if ((v9 - 97) > 0x19)
      {
        goto LABEL_183;
      }

      v32 = -71;
      goto LABEL_135;
    }

    if ((v9 - 92) >= 2 && v9 != 102)
    {
      if (v9 == 104)
      {
        if (v13)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          v5[5].i8[14] = v6 | 0x20;
          v9 = 26988;
          goto LABEL_183;
        }

        v9 = 104;
      }

      goto LABEL_123;
    }
  }

  else
  {
    if (v9 <= 62)
    {
      if (v9 <= 46)
      {
        if (v9 > 43)
        {
          if (v9 == 44 || v9 == 46)
          {
            if (v11 == 1)
            {
              v22 = v4 + 100 * v5[4].i32[0];
              v23 = *(v22 + 86) - *(v22 + 84);
              v9 = 58;
              if (v23 >= *(v22 + 82) - *(v22 + 80))
              {
                if (*(v22 + 72) >= (((v23 + 1) * (v23 + 1)) >> 1))
                {
                  v9 = 58;
                }

                else
                {
                  v9 = 59;
                }
              }

              v5[5].i8[14] = v6 | 0x20;
            }

            else if (relativeYPosPercent(result, a2, a3) <= 39)
            {
              v27 = v5[5].u16[1] - v5[5].u16[0];
              v28 = v5[5].u16[3] - v5[5].u16[2];
              if (*(result + 36) == 4412225 || v5[5].i16[4] != 1)
              {
                goto LABEL_119;
              }

              v29 = v27 - v28;
              if (v27 - v28 < 0)
              {
                v29 = v28 - v27;
              }

              if (200 * v29 / (v27 + v28 + 2) >= 20)
              {
LABEL_119:
                if (v27 <= v28)
                {
                  v9 = 39;
                }

                else
                {
                  v9 = 34;
                }
              }

              else
              {
                v9 = 45250;
              }
            }
          }

          goto LABEL_123;
        }

        if (v9 != 33 && v9 != 41)
        {
          goto LABEL_123;
        }

        goto LABEL_55;
      }

      if (v9 <= 49)
      {
        if (v9 != 47 && v9 != 49)
        {
          goto LABEL_123;
        }

        goto LABEL_55;
      }

      if (v9 != 50 && v9 != 55)
      {
        goto LABEL_123;
      }

LABEL_82:
      if (v11 == 1)
      {
        v5[5].i8[14] = v6 | 0x20;
        v9 = 63;
      }

      goto LABEL_123;
    }

    if (v9 <= 75)
    {
      if ((v9 - 73) < 2)
      {
        goto LABEL_55;
      }

      if (v9 != 63)
      {
        if (v9 == 68 && (v5[5].i8[13] & 1) == 0 && !v13 && v11 == 1)
        {
          v5[5].i8[14] = v6 | 0x20;
          v9 = 112;
          goto LABEL_183;
        }

        goto LABEL_123;
      }

      goto LABEL_82;
    }

    if (v9 == 76)
    {
      if ((v5[5].i8[13] & 1) != 0 || v13 != 1)
      {
        goto LABEL_123;
      }

LABEL_105:
      v9 = 105;
      goto LABEL_111;
    }

    if (v9 == 86)
    {
      if (v11 == 1)
      {
        v9 = 33;
      }

      else
      {
        v9 = 86;
      }

      goto LABEL_123;
    }

    if (v9 != 91)
    {
      goto LABEL_123;
    }

    if ((v5[5].i8[13] & 3) == 0)
    {
      v9 = 116;
      goto LABEL_123;
    }
  }

LABEL_55:
  if (v13 != 1)
  {
    if (!v13)
    {
      if (v11)
      {
        if (v11 == 1 && diacriticLooksLikeDot(result, v5[4].i32[0]) && diacriticIsResonablyCentered(result, v5))
        {
          v5[5].i8[14] = v6 | 0x20;
          v9 = 33;
          goto LABEL_183;
        }
      }

      else
      {
        if (v9 == 106)
        {
          if (17 * (v5[5].u16[1] - v5[5].u16[0]) + 13 >= 4 * (v5[5].u16[3] - v5[5].u16[2]) || (v26 = v5[5].u8[13], (~v26 & 3) == 0))
          {
            v9 = 74;
            goto LABEL_183;
          }

          if ((v26 & 2) != 0)
          {
            v9 = 106;
            goto LABEL_183;
          }

LABEL_129:
          v9 = 108;
          if ((v26 & 1) == 0)
          {
            if (v5[5].u16[3] - v5[5].u16[2] >= 15)
            {
              v9 = 108;
            }

            else
            {
              v9 = 105;
            }
          }

          goto LABEL_183;
        }

        if (index("{}", v5[2].i32[2]) && (v5[5].i8[13] & 2) == 0)
        {
          v9 = 124;
          goto LABEL_183;
        }
      }

LABEL_127:
      if (v9 != 108)
      {
        goto LABEL_183;
      }

      LOBYTE(v26) = v5[5].i8[13];
      goto LABEL_129;
    }

LABEL_123:
    if (v13 > 0)
    {
      goto LABEL_124;
    }

    goto LABEL_127;
  }

  if ((v5[5].i8[13] & 2) != 0)
  {
    if (v9 != 124 || (v9 = 41410, (strIsInLang(result, 41410) & 1) == 0))
    {
      v9 = 106;
    }

    goto LABEL_111;
  }

  if ((v5[5].i8[13] & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_124:
  if (v9 < 65)
  {
    goto LABEL_183;
  }

  v30 = v5[4].i32[0];
  v31 = v4 + 100 * v30;
  if (v9 >= 0x5B)
  {
    goto LABEL_133;
  }

  v32 = -65;
LABEL_135:
  v33 = (v32 + v9);
  if (v13 != 2)
  {
    v38 = v5[5].u16[0];
    v39 = v5[5].u16[1];
    v40 = 3 * ((*(v4 + 100 * v30 + 82) + *(v4 + 100 * v30 + 80) + 1) >> 1);
    v41 = v38 + 2 * v39;
    v42 = v39 + 2 * v38;
    if (v40 <= v41 && v40 >= v42)
    {
      orderDiacriticToClusterCenters(result, v31, __s2);
      v44 = 2;
      v45 = &unicodeCharWithDiacritic[8 * v33];
      while (1)
      {
        v46 = v45[*&__s2[v44]];
        if (v46)
        {
          v55 = v45[*&__s2[v44]];
          v47 = *(result + 36);
          if (!v47)
          {
            goto LABEL_175;
          }

          if (v47 == 4544069)
          {
            goto LABEL_178;
          }

          if ((v46 & 0x808080) == 0)
          {
            if (v46 != 92)
            {
              goto LABEL_178;
            }
          }

          else
          {
LABEL_175:
            if (strstr((result + 40), &v55) || v47 && v47 != 4412225 && (v46 > 10524385 ? (v46 != 10524386 ? (v48 = v46 == 10715362) : (v48 = 1), v49 = 10649826) : (v46 != 45250 ? (v48 = v46 == 8755426) : (v48 = 1), v49 = 9475298), !v48 ? (v50 = v46 == v49) : (v50 = 1), v50))
            {
LABEL_178:
              v51 = *(v31 + 82) - *(v31 + 80) + 1;
              if (3 * *(v31 + 72) >= v51 + v51 * (*(v31 + 86) - *(v31 + 84)))
              {
                v34 = v46;
              }

              else
              {
                v34 = v9;
              }

              goto LABEL_181;
            }
          }
        }

        v44 += 4;
        if (v44 == 54)
        {
          v34 = v9;
          goto LABEL_181;
        }
      }
    }

    goto LABEL_183;
  }

  v34 = unicodeCharWithDiacritic[8 * v33 + 7];
  if (v34)
  {
    *__s2 = unicodeCharWithDiacritic[8 * v33 + 7];
    v35 = *(result + 36);
    if (!v35)
    {
LABEL_140:
      if (strstr((result + 40), __s2))
      {
        goto LABEL_181;
      }

      if (v35 && v35 != 4412225)
      {
        if (v34 > 10524385)
        {
          v36 = v34 == 10524386 || v34 == 10715362;
          v37 = 10649826;
        }

        else
        {
          v36 = v34 == 45250 || v34 == 8755426;
          v37 = 9475298;
        }

        if (v36 || v34 == v37)
        {
          goto LABEL_181;
        }
      }

      goto LABEL_183;
    }

    if (v35 == 4544069)
    {
      goto LABEL_181;
    }

    if ((v34 & 0x808080) != 0)
    {
      goto LABEL_140;
    }

    if (v34 != 92)
    {
LABEL_181:
      if (v34 != v9)
      {
        v5[5].i8[14] |= 0x20u;
        v9 = v34;
      }
    }
  }

LABEL_183:
  if ((v5[5].i8[14] & 0x20) == 0 && v5[4].i32[0] != -1)
  {
    a4 = NAN;
    v5[4].i64[0] = -1;
    *(a2 + 93) = 0;
  }

  if (v9 == v5[2].i32[2])
  {
    return;
  }

  *__s2 = v9;
  v52 = *(result + 36);
  if (v52)
  {
    if (v52 == 4544069)
    {
      goto LABEL_191;
    }

    if ((v9 & 0x808080) == 0)
    {
      if (v9 == 92)
      {
        return;
      }

LABEL_191:
      ccSetStr(v5, v9, 2, a4);
      return;
    }
  }

  if (strstr((result + 40), __s2))
  {
    goto LABEL_191;
  }

  if (v52 && v52 != 4412225)
  {
    if (v9 > 10524385)
    {
      if (v9 == 10524386 || v9 == 10715362)
      {
        goto LABEL_191;
      }

      v53 = 10649826;
    }

    else
    {
      if (v9 == 45250 || v9 == 8755426)
      {
        goto LABEL_191;
      }

      v53 = 9475298;
    }

    if (v9 == v53)
    {
      goto LABEL_191;
    }
  }
}

uint64_t computeSpaceLimit(uint64_t a1, _DWORD *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = a2[5];
  if (v2 < 2)
  {
    return 0;
  }

  v5 = MEMORY[0x1EEE9AC00](a1);
  v8 = v25 - v7;
  v9 = 0;
  v10 = *(v5 + 280);
  v12 = *(v11 + 8);
  v15 = *v12;
  v13 = v12 + 1;
  v14 = v15;
  do
  {
    v16 = v13[v9 / 4];
    v17 = *(v10 + 100 * v16 + 80) - *(v10 + 100 * v14 + 82);
    *&v8[v9] = v17 & ~(v17 >> 31);
    v9 += 4;
    v14 = v16;
  }

  while (v6 != v9);
  qsort(v8, (v2 - 1), 4uLL, compareInt);
  v18 = v2 >> 1;
  if (v2 == 2)
  {
    v18 = 0;
  }

  v19 = *&v8[4 * v18];
  v20 = a2[15];
  v21 = v20 / 4;
  if (v20 / 4 >= a2[13] / 5)
  {
    v21 = a2[13] / 5;
  }

  if (v21 <= 9 * v19 / 16)
  {
    v21 = 9 * v19 / 16;
  }

  v22 = v21 + v19;
  if (v2 >= 17)
  {
    v23 = *&v8[4 * ((7 * (v2 - 1)) >> 3)];
    if (v22 <= v23 / 2)
    {
      v22 = v23 / 2;
    }
  }

  v24 = 4 * v20 / 3;
  if (v22 < v24)
  {
    v24 = v22;
  }

  if (v24 <= 4)
  {
    return 4;
  }

  else
  {
    return v24;
  }
}

char *rcSpace(char *result, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = a4;
    v5 = *(result + 35);
    v6 = v5 + 100 * *(*(a2 + 8) + 4 * a3);
    v7 = v5 + 100 * *(*(a2 + 8) + 4 * a3 - 4);
    v8 = *(v6 + 40);
    v9 = *(v7 + 40);
    *(v6 + 95) = 0;
    v10 = *(v6 + 80);
    v11 = *(v7 + 82);
    v12 = v10 - v11;
    if (v9 == 26214 || v9 == 102)
    {
      v15 = v11 - *(v7 + 80) + 1;
      if (3 * *(a2 + 60) < 4 * v15)
      {
        v16 = ((((1431655765 * v15) >> 32) - v15) >> 1) + ((((1431655765 * v15) >> 32) - v15) >> 31) + a4;
        if (a4 / 2 <= v16)
        {
          v4 = v16;
        }

        else
        {
          v4 = a4 / 2;
        }
      }
    }

    else if (v9 == 34)
    {
      v13 = *(v7 + 64);
      if (v13 != -1)
      {
        v14 = *(v5 + 100 * v13 + 82);
        if (v11 < v14)
        {
          v12 = v10 - v14;
        }
      }
    }

    if ((v8 & 0xFFFFFFDF) == 0x4A && (*(v6 + 93) & 2) != 0)
    {
      v17 = *(v6 + 82);
      v18 = *(v6 + 86);
      v19 = *(v6 + 84);
      v20 = index("ijl", v9);
      v21 = 2 * v4 / 3;
      if (v18 - v19 >= 3 * (v17 - v10) + 2)
      {
        v21 = v4;
      }

      if (!v20)
      {
        v4 = v21;
      }
    }

    if (index("ALRB", v9) && (result = index("TVWY", v8)) != 0 || (result = index("TVWY", v9)) != 0 && v8 == 65)
    {
      v4 = 2 * v4 / 3;
    }

    if ((*(v6 + 94) & 8) != 0)
    {
      v22 = v4 + v4 / 2;
    }

    else
    {
      v22 = v4;
    }

    if (v12 > v22)
    {
      *(v6 + 95) = 1;
    }
  }

  return result;
}

uint64_t checkSpaceOne(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 280);
  v4 = (*(a2 + 8) + 4 * a3);
  v5 = v3 + 100 * *v4;
  v6 = *(v5 + 40);
  v7 = *(v5 + 86) - *(v5 + 84);
  v8 = *(v5 + 82);
  v9 = *(v5 + 80);
  if (v7 >= ((8 * (v8 - v9)) | 7) && (~*(v5 + 93) & 3) == 0)
  {
    if (a3)
    {
      v10 = *(v5 + 95);
      if (!*(v5 + 95) || v6 == 91 || v6 == 93)
      {
        goto LABEL_10;
      }
    }

    else if (v6 == 91 || v6 == 93)
    {
      return result;
    }

    *(v5 + 40) = 124;
    return result;
  }

  if (!a3)
  {
    return result;
  }

  v10 = *(v5 + 95);
LABEL_10:
  if (v10)
  {
    v11 = v3 + 100 * *(v4 - 1);
    v12 = *(v11 + 40);
    v13 = v6 - 48;
    if ((v12 - 48) < 0xA || v13 <= 9)
    {
      v15 = v6 - 41;
      v16 = v15 > 0x34 || ((1 << v15) & 0x10000000000101) == 0;
      if (!v16 && 10 * (v8 - *(v11 + 82)) < 8 * v7)
      {
LABEL_37:
        *(v5 + 95) = 0;
        return result;
      }

      if (v12 > 72)
      {
        if (v12 != 91 && (v12 != 73 || a3 != 1 && !*(v11 + 95)))
        {
          return result;
        }
      }

      else if (v12 != 40 && v12 != 49)
      {
        return result;
      }

      if (v13 < 0xA || (v15 <= 0x34 ? (v17 = ((1 << v15) & 0x10000000000011) == 0) : (v17 = 1), !v17))
      {
        if ((v9 - ((*(v11 + 82) + *(v11 + 80) + 1) >> 1)) < *(v11 + 86) - *(v11 + 84))
        {
          goto LABEL_37;
        }
      }
    }
  }

  return result;
}

float rcSelectCase(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 280);
  v5 = *(a2 + 8);
  v6 = (v4 + 100 * *(v5 + 4 * a3));
  *__s2 = v6[2].i32[2];
  v7 = *__s2;
  v8 = *__s2;
  if (*__s2 == 36)
  {
    if (v6[5].i16[4] || (v9 = a3 + 1, v9 < *(a2 + 20)) && (*(v4 + 100 * *(v5 + 4 * v9) + 40) - 48) < 0xA)
    {
      v8 = 36;
    }

    else
    {
      v8 = 83;
      *__s2 = 83;
    }
  }

  if (strstr("CcOoPpSsUuWwXxZz", __s2))
  {
    v11 = v6[5].i8[13];
    v12 = v8 | 0x20;
    v13 = v8 & 0xFFFFFFDF;
    goto LABEL_11;
  }

  if (strstr("ÍíØøÓóÖöÚúÜüÇçŒœ", __s2))
  {
    v11 = v6[5].i8[13];
    v12 = v8 | 0x2000;
    v13 = v8 & 0xFFFFDFFF;
LABEL_11:
    if (v11)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    goto LABEL_14;
  }

  if (strstr("ĪŌŪŻĆČŠŽ", __s2))
  {
    if ((v6[5].i8[13] & 1) == 0)
    {
      v8 += 256;
    }

    goto LABEL_14;
  }

  if (strstr("īōūżćčšž", __s2))
  {
    if (v6[5].i8[13])
    {
      v8 -= 256;
    }

    goto LABEL_14;
  }

  if (v8 <= 109)
  {
    if (v8 <= 88)
    {
      if (v8 != 81)
      {
        if (v8 != 86)
        {
          goto LABEL_14;
        }

        goto LABEL_65;
      }

      v18 = (v6[5].i8[13] & 1) == 0;
      v19 = 81;
      v20 = 111;
LABEL_72:
      if (v18)
      {
        v8 = v20;
      }

      else
      {
        v8 = v19;
      }

      goto LABEL_14;
    }

    if (v8 != 89)
    {
      if (v8 != 108)
      {
        goto LABEL_14;
      }

      v18 = (v6[5].i8[13] & 1) == 0;
      v19 = 108;
      v20 = 105;
      goto LABEL_72;
    }

    goto LABEL_62;
  }

  if (v8 > 117)
  {
    if (v8 == 118)
    {
LABEL_65:
      if ((v6[5].i8[13] & 2) != 0)
      {
        v22 = 121;
      }

      else
      {
        v22 = 118;
      }

      if (v6[5].i8[13])
      {
        v8 = 86;
      }

      else
      {
        v8 = v22;
      }

      goto LABEL_14;
    }

    if (v8 != 121)
    {
      goto LABEL_14;
    }

LABEL_62:
    v21 = v6[5].i8[13] & 3;
    if (v21 == 1)
    {
      v8 = 89;
    }

    else if (v21 == 2)
    {
      v8 = 121;
    }

    goto LABEL_14;
  }

  if (v8 != 110)
  {
    if (v8 != 114)
    {
      goto LABEL_14;
    }

    v18 = (v6[5].i8[13] & 1) == 0;
    v19 = 102;
    v20 = 114;
    goto LABEL_72;
  }

  if (v6[5].i8[13])
  {
    if (v6[1].i32[3] == 27756)
    {
      v8 = 27756;
    }

    else
    {
      v8 = 110;
    }
  }

LABEL_14:
  if (v8 == v7)
  {
    return *&v10;
  }

  *v25 = v8;
  v14 = *(a1 + 36);
  if (v14)
  {
    if (v14 == 4544069)
    {
LABEL_20:

      *&v10 = ccSetStr(v6, v8, 2, v10);
      return *&v10;
    }

    if ((v8 & 0x808080) == 0)
    {
      if (v8 == 92)
      {
        return *&v10;
      }

      goto LABEL_20;
    }
  }

  if (strstr((a1 + 40), v25))
  {
    goto LABEL_20;
  }

  if (v14 && v14 != 4412225)
  {
    if (v8 > 10524385)
    {
      v15 = v8 == 10524386 || v8 == 10715362;
      v16 = 10649826;
    }

    else
    {
      v15 = v8 == 45250 || v8 == 8755426;
      v16 = 9475298;
    }

    if (v15 || v8 == v16)
    {
      goto LABEL_20;
    }
  }

  return *&v10;
}

void rsRemoveBadWords(uint64_t a1, uint64_t a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v7 = v31 - v6;
  *(v31 - v6) = 0;
  v8 = v31 - v6 - 4;
  if (v5 < 0)
  {
    return;
  }

  v31[0] = v4;
  v9 = 0;
  LODWORD(v10) = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0.0;
  v14 = 0.0;
  do
  {
    if (v9 < v5 && (v15 = *(a1 + 280)) != 0)
    {
      v16 = v15 + 100 * *(*(a2 + 8) + 4 * v9);
      if (!*(v16 + 95))
      {
        goto LABEL_29;
      }

      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 1;
    }

    if (v10 <= 0)
    {
      v18 = v14 > v13;
    }

    else
    {
      v18 = v14 > v13;
      if (v8[8 * v10])
      {
        goto LABEL_14;
      }
    }

    if (v9 - *&v7[8 * v10] <= 2)
    {
      v18 = vcvtd_n_f64_s32(v9 - *&v7[8 * v10], 1uLL) < v14;
    }

LABEL_14:
    if (v10 < 2)
    {
      goto LABEL_24;
    }

    v19 = &v7[8 * v10];
    if (*v19 - *(v19 - 2) != 1)
    {
      goto LABEL_24;
    }

    if (*(v19 - 12))
    {
      if (*(v19 - 4) || !v18)
      {
        goto LABEL_24;
      }

      v20 = 1;
      v21 = 1;
    }

    else
    {
      if (!*(v19 - 4) || v18)
      {
        goto LABEL_24;
      }

      v20 = 0;
      v21 = -1;
    }

    *(v19 - 4) = v20;
    v11 += v21;
    v12 += v21;
LABEL_24:
    v22 = &v7[8 * v10];
    v22[4] = v18;
    if (v18)
    {
      ++v11;
      v12 = v9 + v12 - *v22;
    }

    v10 = v10 + 1;
    *&v7[8 * v10] = v9;
    v13 = 0.0;
    if (v17)
    {
      v23 = v5;
      v24 = 0.0;
      goto LABEL_30;
    }

    v14 = 0.0;
LABEL_29:
    v24 = v13 + getConfusionScoreForCC(v16);
    v13 = v14 + *(v16 + 44);
    v5 = *(a2 + 20);
    v23 = v5;
LABEL_30:
    v14 = v13;
    v13 = v24;
    v25 = v9++ < v23;
  }

  while (v25);
  v26 = v31[0];
  if (v11 >= 1 && v11 != v10 && v5 - v12 >= 2)
  {
    if (v10 >= 1)
    {
      v27 = v10;
      do
      {
        v28 = &v7[8 * v27 - 8];
        if (v28[4])
        {
          v29 = *&v7[8 * v27];
          v30 = *v28;
          while (v29 > v30)
          {
            FKSequenceRemoveConcomp(a1, a2, --v29);
          }
        }

        v25 = v27-- <= 1;
      }

      while (!v25);
    }

    *(*(a1 + 280) + 100 * **(a2 + 8) + 95) = 0;
    *v26 = 1;
  }
}

double FKSeqMatchGetConfidence(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 44))
  {
    return 0.0;
  }

  v3 = *(a2 + 20);
  LODWORD(result) = 1.0;
  if (v3 != 1)
  {
    v5 = 0.0;
    v6 = 0.0;
    result = 0.0;
    v7 = 0.0;
    if (v3 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(*(a2 + 8) + 4 * v9);
        v13 = *(a1 + 280) + 100 * v12;
        if ((*(v13 + 94) & 8) == 0)
        {
          ++v10;
          v7 = v7 + getConfusionScoreForCC(*(a1 + 280) + 100 * v12);
          v5 = v5 + *(v13 + 44);
          *__s2 = *(v13 + 40);
          if (!strstr("•<>%iIl|1!tj?", __s2))
          {
            ++v11;
          }

          v3 = *(a2 + 20);
        }

        ++v9;
      }

      while (v9 < v3);
      v6 = v11;
      *&result = v10;
    }

    v14 = (v7 * (v6 / *&result)) + v7 * 0.6 * (1.0 - (v6 / *&result));
    *&result = v14 / *&result;
    if (v5 > v14)
    {
      *&result = 0.0;
    }
  }

  return result;
}

float getConfusionScoreForCC(uint64_t a1)
{
  v2 = (a1 + 52);
  v3 = *(a1 + 48);
  v4 = 3;
  do
  {
    v5 = *(a1 + 24);
    *v12 = *(v2 - 6);
    v6 = *v12;
    *__s2 = v5;
    v7 = __tolower(v5);
    v8 = __tolower(v6);
    if (v6 != 76 && (v5 != 76 ? (v9 = v7 == v8) : (v9 = 0), v9) || ((v5 - 73) <= 0x33 ? (v10 = ((1 << (v5 - 73)) & 0x8000800000001) == 0) : (v10 = 1), (!v10 || v5 == 49) && ((v6 - 73) <= 0x33 && ((1 << (v6 - 73)) & 0x8000800000001) != 0 || v6 == 49)) || strstr("%xX", __s2) && strstr("%xX", v12) || strstr("oO0", __s2) && strstr("oO0", v12) || v5 == 109 && v6 == 28274 || v5 == 28274 && v6 == 109)
    {
      v3 = v3 + *v2;
    }

    ++v2;
    --v4;
  }

  while (v4);
  return v3;
}

uint64_t clistCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 < v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

float candlistInsert(float32x4_t *a1, uint64_t a2, int a3, double a4)
{
  if (a2 != 27750 || (a1[5].i8[13] & 1) != 0)
  {
    v4 = &a1[2].f32[1];
    v5 = 4;
    v6 = 0.0;
    v7 = 15;
    v8 = 4;
    do
    {
      v9 = v4[6];
      if (v9 <= *&a4)
      {
        v8 = v7 - 12;
      }

      v10 = *v4--;
      if (v10 == a2)
      {
        v5 = v7 - 12;
        v6 = v9;
      }

      --v7;
    }

    while (v7 != 11);
    if (v8 != 4 && v8 <= v5)
    {
      if (v8 > 3)
      {
        v16 = *&a4;
      }

      else
      {
        v12 = v8;
        v13 = v5 - v8;
        v14 = &a1[1].f32[v8 + 2];
        v15 = v12 + 1;
        do
        {
          v16 = *&a4;
          v17 = *v14;
          *&a4 = v14[6];
          *v14 = a2;
          v14[6] = v16;
          if (!v13)
          {
            break;
          }

          --v13;
          ++v14;
          *&a2 = v17;
          v16 = *&a4;
        }

        while (v15++ != 4);
      }

      if (a3 == 2)
      {
        *&a4 = v16 - v6;
        if (v5 >= 4)
        {
          *&a4 = v16;
        }

        *&a4 = *&a4 + 1.0;
        a1[3] = vdivq_f32(a1[3], vdupq_lane_s32(*&a4, 0));
        *&a4 = a1[2].f32[3] / *&a4;
        a1[2].i32[3] = LODWORD(a4);
      }
    }
  }

  return *&a4;
}

float ccSetStr(float32x4_t *a1, unsigned int a2, int a3, double a4)
{
  if ((a2 & 0xFFFFFFDF) != 0x53 || a1[2].i32[2] != 53 || a1[1].i32[2] != 53 || (a4 = a1[3].f32[0], a4 < 0.8))
  {
    if (a2 == 124)
    {
      v9 = 73;
    }

    else if (a2 == 9475298)
    {
      v7 = a1[5].u16[3] - a1[5].u16[2] + 1;
      v8 = (3 * ((v7 << 8) / (v7 - a1[5].u16[0] + a1[5].u16[1] + 1)) - 384) / 2;
      if (v8 <= -128)
      {
        v8 = -128;
      }

      if (v8 >= 127)
      {
        v8 = 127;
      }

      v9 = (v8 + 128) >= 0xAB ? 49 : 55;
    }

    else
    {
      v9 = a2;
    }

    a1[2].i32[2] = v9;
    if (a3)
    {
      v10 = a1[3].f32[0];
      LODWORD(a4) = 1.0;
      if (v10 > 0.0)
      {
        if (a2 > 0x7F)
        {
          goto LABEL_26;
        }

        if (index("I1l", a2) && index("I1l|", a1[1].i32[2]) || index("01259", a2) && index("oOI1l|zZsSg", a1[1].i32[2]))
        {
          return *&a4;
        }

        if (index("01259", a1[1].i32[2]))
        {
          v11 = index("oOI1l|zZsSg", a2);
          *&a4 = v10;
          if (v11)
          {
            return *&a4;
          }
        }

        else
        {
LABEL_26:
          *&a4 = v10;
        }
      }

      *&a4 = candlistInsert(a1, a2, a3, a4);
    }
  }

  return *&a4;
}

void FKRecognizeMultipleConcomps(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(*(result + 344) + 8);
  if (v3 >= 1)
  {
    do
    {
      v15 = v3--;
      v6 = FKBatchLevels[v3];
      if (a3 >= v6)
      {
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        v16 = 4 * v6;
        v17 = FKBatchLevels[v3];
        do
        {
          v18 = a3;
          for (i = 0; i != v7; ++i)
          {
            v9 = *(result + 280) + 100 * *(a2 + 4 * i);
            *(v9 + 24) = 0;
            *(v9 + 32) = 0;
            *(v9 + 52) = 0;
            *(v9 + 44) = 0;
            *(v9 + 60) = 0;
            v10 = (*(result + 344) + 520 * v3);
            v11 = *(v9 + 82) - *(v9 + 80) + 1;
            v12 = *(v9 + 86) - *(v9 + 84) + 1;
            scaleCC(result, v9, (v10[4] + 4 * v10[22] * i));
            *(v10[25] + 4 * v10[43] * i) = v11 / v12;
          }

          if (!espresso_plan_execute_sync())
          {
            v14 = 0;
            do
            {
              *&v13 = extractCandidates(result, (*(result + 280) + 100 * *(a2 + 4 * v14)), v14, (*(result + 344) + 520 * v3 + 368), v13);
              ++v14;
            }

            while (v14 < v17);
          }

          a2 += v16;
          a3 = v18 - v17;
        }

        while (v18 - v17 >= v17);
      }
    }

    while (v15 > 1);
  }
}

void orderDiacriticToClusterCenters(uint64_t a1, uint64_t a2, char *__base)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 84);
  v4 = *(a2 + 80);
  v5 = *(a2 + 82);
  v55 = 0uLL;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v6 = v5 - v4;
  v7 = v5 - v4 > 7;
  if (v5 - v4 <= 7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v4 + 1;
  }

  v9 = *(a2 + 12);
  if (v9 == -1)
  {
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v5 + v4;
    v17 = (v5 + v4) >> 1;
    v18 = (v4 + v17) >> 1;
    v19 = (v5 + (v16 >> 1)) >> 1;
    v20 = v5 - v7;
    v22 = *(a1 + 256);
    v21 = *(a1 + 264);
    v23 = 0uLL;
    do
    {
      v24 = (v22 + 8 * v9);
      v25 = v24[3];
      v26 = *(v24 - 1) + 1;
      v27 = ((*v24 >> 2) + *(v21 + 2 * (v9 >> 6))) - v3;
      if (v8 == v26)
      {
        v28 = ((*v24 >> 2) + *(v21 + 2 * (v9 >> 6))) - v3;
      }

      else
      {
        v28 = 0;
      }

      v15 += v28;
      if (v8 == (*(v24 - 1) + 1))
      {
        ++v14;
      }

      v29 = v18 <= v25 && v18 >= v26;
      if (v18 <= v25 && v18 >= v26)
      {
        v30 = ((*v24 >> 2) + *(v21 + 2 * (v9 >> 6))) - v3;
      }

      else
      {
        v30 = 0;
      }

      v13 += v30;
      v31 = v17 <= v25 && v17 >= v26;
      if (v17 <= v25 && v17 >= v26)
      {
        v32 = ((*v24 >> 2) + *(v21 + 2 * (v9 >> 6))) - v3;
      }

      else
      {
        v32 = 0;
      }

      v12 += v32;
      v33 = v19 <= v25 && v19 >= v26;
      if (v33)
      {
        v34 = ((*v24 >> 2) + *(v21 + 2 * (v9 >> 6))) - v3;
      }

      else
      {
        v34 = 0;
      }

      v11 += v34;
      v35 = v20 == v25;
      v36 = v20 == v25;
      if (!v35)
      {
        v27 = 0;
      }

      v10 += v27;
      v37.i16[0] = v29;
      v37.i16[1] = v31;
      v37.i16[2] = v33;
      v37.i16[3] = v36;
      v23 = vaddw_u16(v23, v37);
      v38 = v24[2];
      if (!v38)
      {
        break;
      }

      v9 -= v38;
    }

    while (v9 != -1);
    v51 = __PAIR64__(v12, v13);
    v55 = v23;
    v52 = __PAIR64__(v10, v11);
  }

  v39 = 0;
  v40 = *(a2 + 86);
  v41 = v40 - v3 + 1;
  v54 = v14;
  v50 = v15;
  do
  {
    if (v40 == v3 || (v42 = *(&v54 + v39)) == 0)
    {
      *(&v50 + v39) = 50;
    }

    else
    {
      *(&v50 + v39) = (100 * *(&v50 + v39) / v42 + 50) / v41;
    }

    v39 += 4;
  }

  while (v39 != 20);
  v43 = 0;
  v44 = (3 * ((v41 << 8) / (v6 + v41 + 1)) - 384) / 2;
  if (v44 <= -128)
  {
    v44 = -128;
  }

  if (v44 >= 127)
  {
    v44 = 127;
  }

  v53 = v44 + 128;
  v45 = clusterCenter;
  do
  {
    v46 = 0;
    v47 = 0;
    v48 = &__base[4 * v43];
    *(v48 + 1) = clusterCenter[8 * v43 - v43 + 6];
    do
    {
      v49 = *(&v50 + v46) - v45[v46];
      v47 += v49 * v49;
      ++v46;
    }

    while (v46 != 6);
    *v48 = v47;
    ++v43;
    v45 += 7;
  }

  while (v43 != 13);

  qsort(__base, 0xDuLL, 4uLL, v_compare);
}

BOOL isWordBoundary(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1 && a2)
  {
    return *(a2 + 95) || index("@-~()[]{}.,:;!?", *(a1 + 24)) || index("@-~()[]{}.,:;!?", *(a2 + 24)) != 0;
  }

  return result;
}

char *vUpdate(char *a1, uint64_t a2, int a3)
{
  v7 = (a2 + 24);
  v6 = *(a2 + 24);
  v8 = (a2 + 48);
  v9 = *(a2 + 48);
  result = getUpInfo(a2);
  v11 = result;
  if (v6 == 116)
  {
    v12 = (*a1 + (*a1 >> 7)) << 24 >> 25;
LABEL_3:
    *a1 = v12;
    goto LABEL_4;
  }

  if (result > 0x54u)
  {
    if (result == 115)
    {
      if (v9 > 0.5)
      {
        LOBYTE(v12) = -100;
        goto LABEL_3;
      }

      goto LABEL_4;
    }

    if (result != 85)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (result == 68)
    {
      if (v9 > 0.5 && *a1 <= 0)
      {
        LOBYTE(v12) = 25;
        goto LABEL_3;
      }

      goto LABEL_4;
    }

    if (result != 83)
    {
      goto LABEL_4;
    }
  }

  if (v9 > 0.5)
  {
    LOBYTE(v12) = 100;
    goto LABEL_3;
  }

LABEL_4:
  v13 = *v7;
  *__s2 = v13;
  if ((LODWORD(v13) - 48) <= 9)
  {
    if (*(a2 + 64) != -1)
    {
      goto LABEL_24;
    }

    v14 = (LOBYTE(v13) & 0x36) == 0x30 || LODWORD(v13) == 53;
    v15 = 0.8;
    if (!v14)
    {
      v15 = 0.5;
    }

    if (v9 <= v15)
    {
      v16 = 50;
    }

    else
    {
      v16 = 100;
    }

    goto LABEL_21;
  }

  if (LODWORD(v13) == 105 && *(a2 + 64) != -1)
  {
    v16 = -50;
LABEL_21:
    a1[2] = v16;
    goto LABEL_24;
  }

  result = getUpInfo(a2);
  if (result != 32)
  {
    result = strstr("0OoI1i|┐", __s2);
    if (!result)
    {
      v19 = 4;
      do
      {
        if (v7[6] < 0.1)
        {
          break;
        }

        if ((*v7 - 48) < 0xA || (*v7 & 0xFFFFFFDF) == 0x4F)
        {
          goto LABEL_24;
        }

        ++v7;
        --v19;
      }

      while (v19);
      v20 = 4;
      while (*(v8 - 6) != 36)
      {
        ++v8;
        if (!--v20)
        {
          goto LABEL_58;
        }
      }

      if (*v8 >= 0.1)
      {
        goto LABEL_24;
      }

LABEL_58:
      v16 = -100;
      goto LABEL_21;
    }
  }

LABEL_24:
  if (v11 == 85)
  {
    goto LABEL_27;
  }

  if (v11 != 58)
  {
    if ((v11 & 0xDF) == 0x53)
    {
      goto LABEL_32;
    }

    LOBYTE(v17) = *a1;
LABEL_31:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_34;
    }

LABEL_32:
    v18 = -100;
    goto LABEL_33;
  }

  v17 = *a1;
  if (v17 < 1)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (!a3)
  {
    v18 = 100;
LABEL_33:
    a1[3] = v18;
  }

LABEL_34:
  if ((v6 - 128) >= 0xFFFFFFC0 && ((0x5FCE97E05FCF9FEuLL >> v6) & 1) != 0 && v9 > 0.5)
  {
    a1[1] = -100;
  }

  return result;
}

char *vPredict(char *result, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5)
{
  v5 = a4[42];
  v6 = *(a3 + 84);
  v7 = ((((a4[41] + a4[40] + 1) >> 1) - ((*(a3 + 82) + *(a3 + 80) + 1) >> 1)) * (*(a2 + 36) - *(a2 + 32))) / (*(a2 + 26) - *(a2 + 24));
  v8 = v5 - v6 - v7;
  v9 = a4[43];
  v10 = *(a3 + 86);
  v11 = (v9 - (v5 + v6) + v10 + 2) / 2;
  v12 = 100 * v8 / v11;
  v13 = *result;
  v14 = *(a3 + 24);
  if (v14 == 64 || v14 == 29810 || v14 == 116)
  {
    if (v12 < 0)
    {
      v15 = 10;
    }

    else
    {
      v15 = -10;
    }

    goto LABEL_7;
  }

  if (v12 < -14)
  {
    v15 = 100;
LABEL_7:
    *result = v15;
    goto LABEL_8;
  }

  if (v12 >= 15)
  {
    v15 = -100;
    goto LABEL_7;
  }

  v15 = *result;
LABEL_8:
  v16 = result[1];
  v17 = v9 - v10 - v7;
  v18 = 100;
  v19 = 100 * v17 / v11;
  if (v19 <= 14)
  {
    if (v19 > -15)
    {
      v18 = result[1];
      if (a5)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v18 = 156;
  }

  result[1] = v18;
  if (a5)
  {
LABEL_12:
    *result = (v15 + ((v15 & 0x80) >> 7)) >> 1;
    result[1] = (v18 + (v18 >> 7)) >> 1;
    result[2] = (result[2] + ((result[2] >> 13) & 3)) >> 2;
    result[3] = (result[3] + (result[3] >> 7)) >> 1;
    return result;
  }

LABEL_14:
  v20 = result[2];
  if (v20 >= 1 && (v15 * v13 < 0 || v18 * v16 < 0))
  {
    result[2] = v20 >> 1;
  }

  return result;
}

uint64_t getUpInfo(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == 26214 || v1 == 27756)
  {
    return 83;
  }

  if ((v1 - 128) < 0xFFFFFFA0)
  {
    return 32;
  }

  v4 = (v1 - 32);
  if ((v4 - 16) > 9)
  {
    return upInfo[v4];
  }

  if (*(a1 + 64) == -1)
  {
    return 68;
  }

  return 32;
}

BOOL shouldTestSplit(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  if (v4 > 0.5)
  {
    return (v3 != 72 || v4 >= 0.9) && (v3 != 37 || *(a1 + 48) <= 0.25);
  }

  if (index("mMwWU", v3) || *(a1 + 44) < 0.1 || (*(a1 + 93) & 1) == 0 || (result = 1, 5 * (*(a1 + 82) - *(a1 + 80)) <= ((6 * (*(a1 + 86) - *(a1 + 84))) | 1)))
  {
    if (v3 > 28273)
    {
      if (v3 != 28274)
      {
        if (v3 == 29300)
        {
          v6 = *(a1 + 44);
          v7 = 0.04;
          goto LABEL_22;
        }

        if (v3 != 29810)
        {
          return strstr("BCDFGHKLMPQRSTVWXZbcdfghkmpqrstvwxz", v2) && *(a1 + 64) != -1 && *(a1 + 48) < 0.95;
        }
      }
    }

    else if (v3 != 26740)
    {
      if (v3 == 27750 || v3 == 28267)
      {
        v6 = *(a1 + 44);
        v7 = 0.01;
LABEL_22:
        if (v6 > v7 || *(a1 + 64) != -1)
        {
          return 1;
        }
      }

      return strstr("BCDFGHKLMPQRSTVWXZbcdfghkmpqrstvwxz", v2) && *(a1 + 64) != -1 && *(a1 + 48) < 0.95;
    }

    v6 = *(a1 + 44);
    v7 = 0.1;
    goto LABEL_22;
  }

  return result;
}

uint64_t trySplit(void *a1, uint64_t a2, int *a3)
{
  v176[25] = *MEMORY[0x1E69E9840];
  v4 = a1[35];
  v160 = *(*(a2 + 8) + 4 * *a3);
  v158 = *(v4 + 100 * v160 + 86) - *(v4 + 100 * v160 + 84);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v153 - v9;
  for (i = 0; i != 30; i += 3)
  {
    (&v172)[i] = v10;
    v10 += 2 * v8;
  }

  v12 = v7 + 100 * v160;
  v13 = *(v12 + 82);
  v155 = *(v12 + 80);
  v156 = v13;
  v14 = (v13 - v155);
  v15 = v13 - v155 + 1;
  v164 = v8;
  v16 = v8 * v15;
  if (1 - v16 >= 0)
  {
    v17 = -((1 - v16) & 0x3F);
  }

  else
  {
    v17 = (v16 - 1) & 0x3F;
  }

  v18 = v15;
  v19 = (52 * v15 + 63) & 0xFFFFFFC0;
  v20 = v16 - v17 + v19;
  v21 = 2 * v15 * (v158 + 2);
  if (1 - v21 >= 0)
  {
    v22 = -((1 - v21) & 0x3F);
  }

  else
  {
    v22 = (v21 - 1) & 0x3F;
  }

  v23 = v21 - v22 + 63;
  v24 = (2 * v16 + 63) & 0xFFFFFFC0;
  v25 = v20 + v24 + v23 + 63;
  v26 = a1[43];
  v27 = *(v26 + 2624);
  v153 = v5;
  v154 = v6;
  if (v27 < v25)
  {
    v28 = v25 + v25 / 4;
    if (1 - v28 >= 0)
    {
      v29 = -((1 - v28) & 0xFFF);
    }

    else
    {
      v29 = (v28 - 1) & 0xFFF;
    }

    v30 = v28 - v29 + 4095;
    v31 = *(v26 + 2616);
    if (v31)
    {
      result = malloc_type_realloc(v31, v30, 0x52166BF1uLL);
      if (!result)
      {
        return result;
      }

      v26 = a1[43];
      *(v26 + 2616) = result;
    }

    else
    {
      result = malloc_type_malloc(v30, 0xC49FDC2AuLL);
      v26 = a1[43];
      *(v26 + 2616) = result;
      if (!result)
      {
        return result;
      }
    }

    *(v26 + 2624) = v30;
  }

  v168 = *(v26 + 2616);
  v33 = &v168[v19];
  v34 = &v33[v24];
  v35 = v23;
  v36 = &v34[v23];
  bzero(v34, v35);
  v37 = &v34[v16 + v15 + v15];
  v166 = &v33[v16];
  v167 = v33;
  v38 = a1[35] + 100 * v160;
  v39 = *(v38 + 82) - *(v38 + 80) + 1;
  bzero(v36, v39 + v39 * (*(v38 + 86) - *(v38 + 84)));
  v40 = *(v38 + 86);
  v41 = *(v38 + 84);
  if (v40 >= v41)
  {
    v42 = (a1[32] + 8 * *(v38 + 12));
    v43 = *(v38 + 80);
    do
    {
      v44 = *(v38 + 82);
      if (v44 >= v43)
      {
        v45 = (v40 - v41) * v39;
        do
        {
          v46 = (*(v42 - 1) + 1) | (v42[3] << 16);
          v47 = a1[32];
          for (j = v42 - v47; ; v46 = (*(v47 + j - 2) + 1) | (*(v47 + j + 6) << 16))
          {
            v49 = (*v42 >> 2) + *(a1[33] + 2 * ((j >> 3) >> 6));
            v50 = v42[2];
            if (!v42[2])
            {
              break;
            }

            v51 = (v42 - v47) >> 3;
            if (v51 - v50 == -1 || v40 >= v49 && (v40 != v49 || v46 <= v44))
            {
              break;
            }

            j = 8 * (v51 - v50);
            v42 = (v47 + j);
          }

          v52 = v44 >= v46 && v44 <= HIWORD(v46);
          v53 = v52 && v40 == v49;
          v54 = v53;
          v36[v45 - v43 + v44] = v54;
          v43 = *(v38 + 80);
          v52 = v44-- <= v43;
        }

        while (!v52);
        v41 = *(v38 + 84);
      }

      v52 = v40-- <= v41;
    }

    while (!v52);
  }

  v161 = v14;
  v55 = v164;
  v56 = v167;
  calculatePenaltiesForBestPath(v15, v164, v36, v34, v167, 1);
  v57 = v166;
  calculatePenaltiesForBestPath(v15, v55, v36, v37, v166, 0);
  v58 = v34;
  v59 = v168;
  if (getPathStats(v15, v55, v36, v58, v56, v168, 1) || getPathStats(v15, v55, v36, v37 + v158 * v15, v57, &v59[26 * v15], 0))
  {
    return 0;
  }

  v165 = &v175;
  filterSplits(v36, v59, v56, 1, v15, v55);
  v163 = &v59[26 * v15];
  filterSplits(v36, v163, v57, 0, v15, v55);
  if (v55 >= 0)
  {
    v60 = v55;
  }

  else
  {
    v60 = v55 + 7;
  }

  if ((v161 & 0x80000000) != 0)
  {
LABEL_120:
    v157 = 0;
    goto LABEL_122;
  }

  v61 = 0;
  v62 = 0;
  LODWORD(v161) = (v60 >> 3) + 1;
  v63 = 26 * v15;
  v64 = (v59 + 20);
  LODWORD(v65) = -1;
  LODWORD(v66) = -1;
  v67 = v163;
  v162 = v18;
  v159 = v63;
  do
  {
    v68 = *v64;
    v69 = v68 > 0xFD;
    if (v68 <= 0xFD)
    {
      v65 = v61;
    }

    else
    {
      v65 = v65;
    }

    v70 = v64[v63];
    if (!v69 || v70 <= 0xFD)
    {
      v62 = 0;
    }

    if (v70 <= 0xFD)
    {
      v66 = v61;
    }

    else
    {
      v66 = v66;
    }

    if (v62)
    {
      v72 = 1;
    }

    else
    {
      v72 = v65 == -1;
    }

    if (!v72 && v66 != -1)
    {
      v74 = &v59[26 * v65];
      v75 = v67 + 26 * v66;
      v76 = *(v74 + 22);
      v77 = *(v75 + 22);
      if (v76 >= v77)
      {
        v78 = *(v75 + 22);
      }

      else
      {
        v78 = *(v74 + 22);
      }

      if (v76 <= v77)
      {
        v79 = *(v75 + 22);
      }

      else
      {
        v79 = *(v74 + 22);
      }

      v81 = v78 == 1 && v79 == 2;
      v82 = v164;
      v83 = areCutsTooClose(v164, v65, v76, v74, v66, v77, (v67 + 26 * v66), v161 << v81);
      LOBYTE(v170[0]) = 0;
      if (v83)
      {
        v18 = v162;
        v67 = v163;
        v63 = v159;
        if (v66 < v65)
        {
          goto LABEL_84;
        }

LABEL_99:
        v87 = *(v74 + 22);
        if (v87 <= 1)
        {
          v87 = 1;
        }

        v88 = v87 * *(v74 + 20);
        v89 = *(v75 + 22);
        if (v89 <= 1)
        {
          v89 = 1;
        }

        if (v88 < v89 * *(v75 + 20))
        {
          goto LABEL_89;
        }

        goto LABEL_104;
      }

      if (!isCuttingSerif (v36, v74, v75, v162, v82, v170) && !cutsCreateBadConcomp(v36, v74, v167, v65, 1, v75, v166, v66, 0, v162, v164))
      {
        v18 = v162;
        v67 = v163;
        v59 = v168;
        v63 = v159;
        goto LABEL_106;
      }

      if (v66 >= v65)
      {
        v18 = v162;
        v67 = v163;
        v63 = v159;
        if (!LOBYTE(v170[0]))
        {
          goto LABEL_99;
        }

        if (*(v75 + 20) <= 2 * *(v74 + 20))
        {
          goto LABEL_104;
        }
      }

      else
      {
        v18 = v162;
        v67 = v163;
        v63 = v159;
        if (!LOBYTE(v170[0]))
        {
LABEL_84:
          v84 = *(v75 + 22);
          if (v84 <= 1)
          {
            v84 = 1;
          }

          v85 = v84 * *(v75 + 20);
          v86 = *(v74 + 22);
          if (v86 <= 1)
          {
            v86 = 1;
          }

          if (v85 >= v86 * *(v74 + 20))
          {
            goto LABEL_89;
          }

LABEL_104:
          LODWORD(v65) = -1;
          goto LABEL_105;
        }

        if (*(v74 + 20) > 2 * *(v75 + 20))
        {
          goto LABEL_104;
        }
      }

LABEL_89:
      LODWORD(v66) = -1;
      v74 = v75;
LABEL_105:
      v59 = v168;
      *(v74 + 20) = -2;
LABEL_106:
      v62 = 1;
    }

    v64 += 26;
    ++v61;
  }

  while (v18 != v61);
  v157 = 0;
  v90 = 0;
  v91 = 2 * v156 - 2 * v155 + 2;
  while (1)
  {
    v92 = v90 >> 1;
    v93 = v168;
    if ((v90 & 1) == 0)
    {
      v93 = v67;
    }

    v94 = &v93[26 * v92];
    v95 = v94[20];
    if (v95 <= 0xFD)
    {
      v96 = v157;
      v97 = v166;
      v98 = &v165[3 * v157];
      *(v98 + 16) = 0;
      if (v90)
      {
        v99 = v167;
      }

      else
      {
        v99 = v97;
      }

      *(v98 + 2) = v92;
      *(v98 + 3) = v95;
      *(v98 + 17) = v94[22];
      v170[0] = MEMORY[0x1E69E9820];
      v170[1] = 0x40000000;
      v170[2] = __markSplits_block_invoke;
      v170[3] = &__block_descriptor_tmp_35;
      v170[4] = v98;
      if ((walkPathAndReturnFinalColumn(v99, v18, v164, v92, v90 & 1, v170) & 0x80000000) != 0)
      {
        goto LABEL_120;
      }

      v157 = (v96 + 1);
      v67 = v163;
      if (v96 == 7)
      {
        break;
      }
    }

    if (v91 == ++v90)
    {
      goto LABEL_122;
    }
  }

  v157 = 8;
LABEL_122:
  v100 = 0;
  v101 = a1[35];
  v102 = v101 + 100 * v160;
  v103 = *(v102 + 82);
  v104 = *(v102 + 80);
  v105 = *(v102 + 86);
  v106 = *(v102 + 84);
  v167 = v102;
  v168 = (v102 + 64);
  v171 = 0;
  v107 = v170;
  v108 = (&v171 + 4);
  v109 = 1;
  do
  {
    v110 = v109;
    *v107 = -1;
    v111 = *&v168[4 * v100];
    if (v111 != -1)
    {
      v112 = (v101 + 100 * v111);
      *v107 = ((v112[41] + v112[40] + 1) >> 1) - v104;
      *v108 = ((v112[43] + v112[42] + 1) >> 1) - ((v105 + v106 + 1) >> 1);
    }

    v109 = 0;
    v107 = &v169;
    v108 = &v171;
    v100 = 1;
  }

  while ((v110 & 1) != 0);
  v113 = 0;
  LODWORD(v162) = v103 - v104 + 1;
  v114 = v105 - v106;
  v159 = &v173;
  v161 = &v174;
  v166 = v157;
  v163 = v157;
  do
  {
    if (v113 < v166)
    {
      LOBYTE(v165[3 * v113 + 2]) = 0;
    }

    if (v113)
    {
      v115 = v159[3 * v113];
    }

    else
    {
      v115 = 0;
    }

    v116 = v162;
    if (v113 < v166)
    {
      v116 = v165[3 * v113 + 1];
    }

    v117 = 0;
    v118 = &v165[3 * v113];
    v119 = &v161[24 * v113];
    v120 = v170;
    v121 = (&v171 + 4);
    v122 = 1;
    do
    {
      v123 = v122;
      if ((*v121 & 0x80000000) != 0)
      {
        v124 = *v120;
        v125 = v115 < v124 && v124 < v116;
        if (v125 && 4 * (v116 - v115) / 3 <= v114)
        {
          v100 = diacriticLooksLikeDot(a1, *&v168[4 * v117]);
          if (v100 && (*(v167 + 40) != 78 || *(v167 + 48) <= 0.8))
          {
            if (v113 < v166)
            {
              ++*(v118 + 16);
            }

            if (v113)
            {
              ++*v119;
            }
          }
        }
      }

      v122 = 0;
      v120 = &v169;
      v121 = &v171;
      v117 = 1;
    }

    while ((v123 & 1) != 0);
    v127 = v163;
    v53 = v113++ == v163;
  }

  while (!v53);
  v128 = v157;
  LODWORD(v129) = v164;
  if (v157 < 1)
  {
    return 0;
  }

  v130 = 0;
  v131 = v176;
  v132 = v158;
  do
  {
    if (*v131)
    {
      v133 = v130 + 1;
    }

    else
    {
      v133 = 0;
    }

    if (v133 >= 3)
    {
      if (*(v131 - 24) < 2u)
      {
        v133 = v130 + 1;
      }

      else
      {
        *(v131 - 24) = 0;
        v133 = 1;
      }
    }

    v131 += 24;
    v130 = v133;
    --v127;
  }

  while (v127);
  v174 = 1;
  v134 = &(&v172)[3 * (v128 + 1)];
  *(v134 + 16) = 1;
  if ((v132 & 0x80000000) == 0)
  {
    v135 = v172;
    v136 = *v134;
    v129 = v129;
    do
    {
      *v135++ = 0;
      *v136++ = -1;
      --v129;
    }

    while (v129);
  }

  MEMORY[0x1EEE9AC00](v100);
  v139 = (&v153 - ((v138 + 15) & 0x7FFFFFFF0));
  v140 = 0;
  LODWORD(v141) = 0;
  v142 = v137 + 2;
  v143 = 1;
  while (2)
  {
    v144 = v143 - 1;
    v145 = &v142[3 * v143];
    while (!*v145)
    {
      ++v143;
      ++v144;
      v145 += 24;
      if (v144 > v166)
      {
        goto LABEL_184;
      }
    }

    v146 = *(v145 - 2);
    if (!v140 && *v146 == -1)
    {
      splitCCIfGood(a1, v160, v160, &v172, 0, v143, v170);
      v169 = *(v170 + 4);
      v149 = v170[2];
      v140 = v170[0];
      if (LODWORD(v170[2]))
      {
        goto LABEL_182;
      }

      goto LABEL_179;
    }

    v147 = createAndRecognizeSubConcomp(a1, v160, v137[3 * v140], v146);
    if (v147 != -1)
    {
      v148 = v147;
      if (v143 - v140 < 2 || !shouldTestSplit(a1[35] + 100 * v147) || (splitCCIfGood(a1, v160, v148, &v172, v140, v143, v170), v169 = *(v170 + 4), v149 = v170[2], v143 = v170[0], v140 = v170[0], !LODWORD(v170[2])))
      {
        v139[v141] = v148;
        LODWORD(v141) = v141 + 1;
        v140 = v143;
        goto LABEL_179;
      }

LABEL_182:
      if (v149 >= 1)
      {
        memcpy(&v139[v141], &v169, 4 * v149);
        LODWORD(v141) = v141 + v149;
      }

LABEL_179:
      v137 = &v172;
      v143 = v140 + 1;
      if (v140 <= v157)
      {
        continue;
      }

LABEL_184:
      if (v141 < 1)
      {
        return 0;
      }

      v150 = 0;
      while (v139[v150] != -1)
      {
        if (++v150 >= v141)
        {
          setDiacriticsOnSubCC(a1, v160, v139, v141, 0);
          v151 = v154;
          *v151 = v141 + FKSequencesReplaceConcomp(a1, v153, *v154, v139, v141) - 1;
          return 1;
        }
      }

      goto LABEL_190;
    }

    break;
  }

  if (v141 <= 0)
  {
    return 0;
  }

LABEL_190:
  v141 = v141;
  do
  {
    v152 = *v139++;
    FKConcompRelease(a1, v152, 0);
    result = 0;
    --v141;
  }

  while (v141);
  return result;
}

uint64_t createAndRecognizeSubConcomp(size_t a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  v4 = a2;
  SubConcomp = FKConcompCreateSubConcomp(a1, a2, a3, a4);
  v8 = SubConcomp;
  v26 = SubConcomp;
  if (SubConcomp != -1)
  {
    v9 = *(a1 + 280);
    v10 = v9 + 100 * v4;
    v11 = *(v10 + 86);
    v12 = *(v10 + 84);
    v13 = (v9 + 100 * SubConcomp);
    v14 = v11 - v12;
    v15 = v13[5].u16[3];
    v16 = v13[5].u16[2];
    v17 = v15 - v16 + 1;
    if ((*(v10 + 93) & 3) != 0)
    {
      v18 = 4;
    }

    else
    {
      v18 = 3;
    }

    v19 = v18 * v17;
    v20 = 2 * v17;
    v21 = v19 > v14 || v13[5].u16[1] - v13[5].u16[0] + 1 < v20;
    if (v21 || (v22 = v14 + 1, (5 * (v11 - v15)) <= v22) || (5 * (v16 - v12)) <= v22)
    {
      v23 = (v11 + v12 + 1) >> 1;
      if (v23 < v15 && v23 > v16)
      {
        setDiacriticsOnSubCC(a1, v4, &v26, 1, 1);
        FKRecognizeConcomp(a1, v13);
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      ccSetStr(v13, 0x2Du, 1, v7);
      v13[5].i8[14] |= 9u;
    }
  }

  return v8;
}

uint64_t splitCCIfGood@<X0>(size_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v9 = a3;
  v102 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v13 = ~a5 + a6;
  v98 = 0;
  v99 = 0;
  v101 = 0.0;
  v100 = 0;
  if (a3 == -1)
  {
    ConfusionScoreForCC = 0.0;
  }

  else
  {
    ConfusionScoreForCC = getConfusionScoreForCC(*(a1 + 280) + 100 * a3);
  }

  v81 = ConfusionScoreForCC;
  v85 = a5;
  v83 = v13;
  if (v13 < 3)
  {
    v15 = a5;
    if (v13 == 1)
    {
      v18 = a4 + 24 * a5;
      v20 = (v18 + 48);
      v19 = *v18;
      v22 = *(v18 + 24);
      v21 = (v18 + 24);
      v23 = createAndRecognizeSubConcomp(a1, a2, v19, v22);
      v84 = 1;
      v86 = -1;
      v80 = 0.0;
      v24 = -1;
      v87 = -1;
      v88 = -1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v15 = a5;
  v16 = createAndRecognizeSubConcomp(a1, a2, *(a4 + 24 * a5), *(a4 + 24 * a5 + 72));
  if (v16 == -1)
  {
LABEL_9:
    v84 = 1;
    v86 = -1;
    v17 = 0.0;
    goto LABEL_10;
  }

  v86 = v16;
  v17 = getConfusionScoreForCC(*(a1 + 280) + 100 * v16);
  v84 = 0;
LABEL_10:
  v80 = v17;
  v25 = (a4 + 24 * v15);
  v21 = v25 + 3;
  v23 = createAndRecognizeSubConcomp(a1, a2, *v25, v25[3]);
  v88 = createAndRecognizeSubConcomp(a1, a2, v25[3], v25[6]);
  v20 = (v25 + 9);
  v87 = createAndRecognizeSubConcomp(a1, a2, v25[6], v25[9]);
  v24 = createAndRecognizeSubConcomp(a1, a2, *v25, v25[6]);
LABEL_11:
  v26 = createAndRecognizeSubConcomp(a1, a2, *v21, *v20);
  v27 = 0.0;
  v28 = 0.0;
  if (v23 != -1)
  {
    v28 = getConfusionScoreForCC(*(a1 + 280) + 100 * v23);
  }

  if (v88 != -1)
  {
    v27 = getConfusionScoreForCC(*(a1 + 280) + 100 * v88);
  }

  v29 = 0.0;
  v30 = 0.0;
  if (v87 != -1)
  {
    v30 = getConfusionScoreForCC(*(a1 + 280) + 100 * v87);
  }

  if (v24 != -1)
  {
    v29 = getConfusionScoreForCC(*(a1 + 280) + 100 * v24);
  }

  v31 = 0.0;
  v32 = 0.0;
  if (v26 != -1)
  {
    v32 = getConfusionScoreForCC(*(a1 + 280) + 100 * v26);
  }

  if (isFeasablePart(a1, a2, v23))
  {
    v33 = v28;
  }

  else
  {
    v33 = 0.0;
  }

  if (isFeasablePart(a1, a2, v88))
  {
    v34 = v27;
  }

  else
  {
    v34 = 0.0;
  }

  if (!isFeasablePart(a1, a2, v87))
  {
    v30 = 0.0;
  }

  if (isFeasablePart(a1, a2, v24))
  {
    v35 = v29;
  }

  else
  {
    v35 = 0.0;
  }

  if (!isFeasablePart(a1, a2, v26))
  {
    v32 = 0.0;
  }

  if (!v84)
  {
    v9 = v86;
  }

  v97[0] = v23;
  v97[1] = v88;
  v97[2] = v87;
  v96[0] = v23;
  v96[1] = v26;
  v95[0] = v24;
  v95[1] = v87;
  v36 = a4 + 24 * a5;
  if (isSaneSplit(a1, v9, v97, 3u, v36 + 24, 1u))
  {
    if (v33 >= v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = v33;
    }

    if (v30 >= v37)
    {
      v31 = v37;
    }

    else
    {
      v31 = v30;
    }

    *&v98 = v31;
  }

  v38 = 0.0;
  v39 = 0.0;
  if (isSaneSplit(a1, v9, v97, 2u, v36 + 24, 1u))
  {
    if (v33 >= v34)
    {
      v39 = v34;
    }

    else
    {
      v39 = v33;
    }

    *&v100 = v39;
  }

  if (isSaneSplit(a1, v9, v95, 2u, v36 + 48, 1u))
  {
    if (v35 >= v30)
    {
      v38 = v30;
    }

    else
    {
      v38 = v35;
    }

    *(&v98 + 1) = v38;
  }

  v79 = v30;
  *(&v100 + 1) = v35;
  result = isSaneSplit(a1, v9, v96, 2u, v36 + 24, 1u);
  if (result)
  {
    if (v33 >= v32)
    {
      v41 = v32;
    }

    else
    {
      v41 = v33;
    }

    *&v99 = v41;
  }

  else
  {
    v41 = 0.0;
  }

  v78 = v32;
  if (v24 == -1)
  {
    v101 = v33;
    *(&v99 + 1) = v80;
    v45 = 1;
    v43 = v33;
  }

  else
  {
    v42 = isSaneSplit(a1, v24, v97, 2u, v36 + 24, 0);
    if (v42)
    {
      v43 = v33;
    }

    else
    {
      v43 = 0.0;
    }

    if (!v42)
    {
      v39 = 0.0;
    }

    v44 = 24;
    if (!v42)
    {
      v44 = 16;
    }

    *(&v98 + v44) = v43;
    *(&v99 + 1) = v80;
    result = shouldTestSplit(*(a1 + 280) + 100 * v24);
    v45 = result;
  }

  if (v26 == -1)
  {
    v46 = 1;
  }

  else
  {
    result = shouldTestSplit(*(a1 + 280) + 100 * v26);
    v46 = result != 0;
  }

  v47 = v86;
  v48 = v88;
  if (v83 < 3)
  {
    if (v45 != 0 && v46 && v31 > v41 && v31 > v38 || v31 > 0.99 && (v38 <= v41 ? (v50 = v41) : (v50 = v38), v50 < 0.9))
    {
      v51 = 0;
    }

    else if ((v45 != 0 || v46) && (v45 == 0 || !v46))
    {
      if (v45)
      {
        v51 = 2;
      }

      else
      {
        v51 = 1;
      }
    }

    else if (v41 <= v38)
    {
      v51 = 1;
    }

    else
    {
      v51 = 2;
    }

    goto LABEL_122;
  }

  if ((v84 & 1) == 0)
  {
    v52 = *(a1 + 280);
    v53 = v52 + 100 * v86;
    v54 = *(v53 + 40);
    if (v54)
    {
      v55 = 0;
      v56 = (v52 + 100 * v86 + 41);
      do
      {
        if ((v54 & 0xC0) != 0x80)
        {
          ++v55;
        }

        v57 = *v56++;
        v54 = v57;
      }

      while (v57);
      if (v55 >= 2)
      {
        result = concatenatedCCsMatchCC(a1, v23, v26, v53);
        if (result)
        {
          v58 = v78;
          if (v33 < v78)
          {
            v58 = v33;
          }

          if (v58 > 0.9)
          {
            v49 = 1;
            v47 = v86;
LABEL_111:
            v48 = v88;
            goto LABEL_112;
          }
        }

        result = concatenatedCCsMatchCC(a1, v24, v87, v53);
        v47 = v86;
        if (result)
        {
          v59 = v35 >= v79 ? v79 : v35;
          if (v59 > 0.9)
          {
            v49 = 1;
            goto LABEL_111;
          }
        }
      }
    }

    result = shouldTestSplit(v53);
    v47 = v86;
    v49 = result == 0;
    goto LABEL_111;
  }

  v49 = 0;
LABEL_112:
  if (v35 <= v39)
  {
    v60 = v39;
  }

  else
  {
    v60 = v35;
  }

  if (v60 <= v43)
  {
    v60 = v43;
  }

  if (v80 > v60)
  {
    goto LABEL_121;
  }

  if (v80 <= 0.8)
  {
    v49 = 0;
  }

  if (v49)
  {
LABEL_121:
    v51 = 3;
  }

  else if ((!v45 || v43 == 0.0) && (v35 > 0.9 && v46 || (v39 <= v43 ? (v77 = v43) : (v77 = v39), v35 > v77)))
  {
    v51 = 5;
  }

  else if (v39 <= v43)
  {
    v51 = 6;
  }

  else
  {
    v51 = 4;
  }

LABEL_122:
  v61 = 0;
  v62 = *(&v98 + v51);
  v89 = v23;
  v90 = v48;
  v91 = v87;
  v92 = v24;
  v93 = v26;
  v94 = v47;
  *(a7 + 16) = 0;
  if (((0x2AuLL >> v51) & 1) == 0)
  {
    v61 = 1;
    *(a7 + 16) = 1;
    *(a7 + 4) = v23;
    v89 = -1;
  }

  if ((v51 & 3) == 1)
  {
    v63 = &v92;
  }

  else
  {
    if ((v51 & 3) != 0)
    {
      goto LABEL_129;
    }

    v63 = &v90;
    v24 = v48;
  }

  v64 = a7 + 4 * v61++;
  *(a7 + 16) = v61;
  *(v64 + 4) = v24;
  *v63 = -1;
LABEL_129:
  if (v51 == 2)
  {
    v65 = 0;
    v66 = &v93;
LABEL_135:
    *(a7 + 16) = v61 + 1;
    *(a7 + 4 * v61 + 4) = v26;
    *v66 = -1;
    goto LABEL_136;
  }

  if (v51 < 2)
  {
    v65 = 0;
    v66 = &v91;
    v26 = v87;
    goto LABEL_135;
  }

  if (v51 == 3)
  {
    v66 = &v94;
    v65 = 1;
    v26 = v47;
    goto LABEL_135;
  }

  v65 = 0;
LABEL_136:
  v67 = a7 + 4;
  v68 = *(a7 + 16);
  if (v68 < 1)
  {
    LODWORD(v69) = 0;
  }

  else
  {
    v69 = *(a7 + 16);
    v70 = (a7 + 4);
    while (1)
    {
      v71 = *v70++;
      if (v71 == -1)
      {
        break;
      }

      if (!--v69)
      {
        goto LABEL_143;
      }
    }

    LODWORD(v69) = 1;
  }

LABEL_143:
  v72 = 0;
  if (v81 >= v62)
  {
    v73 = 1;
  }

  else
  {
    v73 = v69;
  }

  do
  {
    v74 = *(&v89 + v72);
    if (v74 != -1)
    {
      result = FKConcompRelease(a1, v74, 0);
    }

    v72 += 4;
  }

  while (v72 != 24);
  *a7 = a6;
  if (v73)
  {
    if (v68 >= 1)
    {
      v75 = 0;
      do
      {
        result = FKConcompRelease(a1, *(v67 + 4 * v75), 0);
        *(v67 + 4 * v75++) = -1;
      }

      while (v75 < *(a7 + 16));
    }

    *(a7 + 16) = 0;
  }

  else
  {
    if (v83 < 3)
    {
      return result;
    }

    *a7 = v85 + 1;
    if ((0x4CuLL >> v51))
    {
      if (!v65)
      {
        return result;
      }

      v76 = v85 + 3;
    }

    else
    {
      v76 = v85 + 2;
    }

    *a7 = v76;
  }

  return result;
}

uint64_t setDiacriticsOnSubCC(uint64_t result, int a2, int *a3, int a4, int a5)
{
  v5 = *(result + 280);
  if (a4 >= 1)
  {
    v6 = a4;
    v7 = a3;
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 != -1)
      {
        *(v5 + 64 + 100 * v8) = -1;
      }

      --v6;
    }

    while (v6);
  }

  v10 = 0;
  v11 = 1;
  v12 = v5 + 100 * a2;
  do
  {
    v13 = *(v12 + 4 * v10 + 64);
    if (v13 == -1)
    {
      return result;
    }

    v14 = v11;
    if (a4 < 1)
    {
      v22 = 0;
      v18 = 0xFFFF;
      goto LABEL_20;
    }

    v15 = 0;
    v16 = 0;
    v17 = v5 + 100 * v13;
    v18 = 0xFFFF;
    while (1)
    {
      result = a3[v15];
      if (result != -1)
      {
        break;
      }

LABEL_17:
      if (a4 == ++v15)
      {
        goto LABEL_18;
      }
    }

    v19 = v5 + 100 * result;
    v20 = *(v17 + 80) - *(v19 + 80);
    if (v20 < 0)
    {
      v20 = *(v19 + 80) - *(v17 + 80);
    }

    v21 = *(v17 + 82) - *(v19 + 82);
    if (v21 < 0)
    {
      v21 = -v21;
    }

    result = (v21 + v20);
    if (result < v18)
    {
      v18 = result;
      v16 = v15;
      goto LABEL_17;
    }

LABEL_18:
    v22 = v16;
LABEL_20:
    v23 = v5 + 100 * a3[v22];
    if (!a5 || v18 > (*(v23 + 82) - *(v23 + 80) + 1) / 2)
    {
      v24 = v23 + 64;
      if (*(v23 + 64) == -1)
      {
        v25 = 0;
LABEL_26:
        *(v24 + 4 * v25) = v13;
      }

      else if (*(v23 + 68) == -1)
      {
        v25 = 1;
        goto LABEL_26;
      }
    }

    v11 = 0;
    v10 = 1;
  }

  while ((v14 & 1) != 0);
  return result;
}

uint64_t calculatePenaltiesForBestPath(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = &unk_1E11572B0;
  if (!a6)
  {
    v6 = &unk_1E11572C0;
  }

  if (a2 >= 1)
  {
    v7 = 0;
    v8 = *v6;
    do
    {
      if (result >= 1)
      {
        v9 = 0;
        v10 = ~v7 + a2;
        if (!a6)
        {
          v10 = v7;
        }

        v11 = v10 * result;
        do
        {
          v12 = 0;
          v13 = v9 + v11;
          v14 = 255;
          if (v9 && v9 != result - 1)
          {
            v15 = 0;
            v12 = v8;
            do
            {
              v16 = &choiceTable + 20 * v6[v15];
              if (*(a3 + v13))
              {
                v17 = *(v16 + 1);
              }

              else
              {
                v17 = *v16;
                if (v16[16])
                {
                  v18 = *(v16 + 3);
                  v19 = v13 + *(v16 + 2) * result;
                  v20 = *(a3 + v18 + v19);
                  v21 = *(a3 + v13 + v18) + *(a3 + v19);
                  if (!v20 && v21 == 2)
                  {
                    ++v17;
                  }
                }
              }

              v23 = v17 + *(a4 + *(v16 + 3) + (v13 + *(v16 + 2) * result));
              if (v23 < v14)
              {
                v12 = v16[17];
                v14 = v23;
              }

              if (v15 > 2)
              {
                break;
              }

              ++v15;
            }

            while (v7);
          }

          *(a4 + v13) = v14;
          *(a5 + v13) = v12;
          ++v9;
        }

        while (v9 != result);
        if (v7 && result >= 3)
        {
          v24 = a3 + v11;
          v25 = a5 + v11;
          v26 = result - 2;
          v27 = a4 + 1 + v11;
          do
          {
            if (*(v24 + v26))
            {
              v28 = 7;
            }

            else
            {
              v28 = 2;
            }

            v29 = v28 + *(v27 + v26);
            if (v29 < *(v27 + v26 - 1))
            {
              *(v27 + v26 - 1) = v29;
              *(v25 + v26) = 5;
            }
          }

          while (v26-- > 1);
        }
      }

      ++v7;
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t getPathStats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, int a7)
{
  v7 = a6;
  v9 = a2;
  v10 = a1;
  bzero(a6, 26 * a1);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 1;
    v24 = v7;
    while (1)
    {
      if (!v11 || v10 - 1 == v11)
      {
        v7[20] = -1;
      }

      else
      {
        v72 = 0;
        v73 = &v72;
        v74 = 0x2000000000;
        v75 = 0;
        v67 = 0;
        v68 = &v67;
        v69 = 0x2000000000;
        v70 = v11;
        v71 = v11;
        v63 = 0;
        v64 = &v63;
        v65 = 0x2000000000;
        v66 = 0;
        v59 = 0;
        v60 = &v59;
        v61 = 0x2000000000;
        v62 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x2000000000;
        v58 = 0;
        v51 = 0;
        v52 = &v51;
        v53 = 0x2000000000;
        v54 = 0;
        v49[0] = 0;
        v49[1] = v49;
        v49[2] = 0x2000000000;
        v50 = 0;
        v47[0] = 0;
        v47[1] = v47;
        v47[2] = 0x2000000000;
        v48 = v11;
        v43 = 0;
        v44 = &v43;
        v45 = 0x2000000000;
        v46 = 0;
        v39 = 0;
        v40 = &v39;
        v41 = 0x2000000000;
        v42 = 0;
        v35 = 0;
        v36 = &v35;
        v37 = 0x2000000000;
        v38 = 0;
        v31 = 0;
        v32 = &v31;
        v33 = 0x2000000000;
        v34 = 0;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 0x40000000;
        v27[2] = __getPathStats_block_invoke;
        v27[3] = &unk_1E87049E0;
        v27[16] = a5;
        v27[17] = a3;
        v27[4] = &v35;
        v27[5] = &v51;
        v27[6] = &v63;
        v27[7] = v49;
        v28 = v10;
        v29 = v9;
        v27[8] = v47;
        v27[9] = &v43;
        v27[10] = &v55;
        v27[11] = &v59;
        v27[18] = v24;
        v30 = v11;
        v27[12] = &v72;
        v27[13] = &v31;
        v27[14] = &v39;
        v27[15] = &v67;
        v13 = walkPathAndReturnFinalColumn(a5, v10, v9, v11, a7, v27);
        if ((v13 & 0x80000000) == 0)
        {
          v14 = v73;
          if (*(v52 + 24))
          {
            v15 = *(v73 + 6);
            if (v15 <= 1)
            {
              *&v7[8 * v15] = v64[3];
              v15 = *(v14 + 6);
            }

            *(v14 + 6) = v15 + 1;
          }

          v16 = v60;
          v7[21] = *(v60 + 6);
          *(v7 + 4) = *(v68 + 6);
          v7[20] = *(a4 + v11);
          v17 = *(v36 + 24);
          v19 = v17 == 7 || v17 == 2;
          v7[25] = v19;
          v20 = *(v14 + 6);
          v7[22] = v20;
          if (v20 == 1)
          {
            if (*(v44 + 24) || (v21 = *(v40 + 24)) != 0)
            {
              v21 = *(v56 + 6) > *(v16 + 6) / 2;
            }
          }

          else
          {
            v21 = 0;
          }

          v7[23] = v21;
          v7[24] = *(v32 + 24);
        }

        _Block_object_dispose(&v31, 8);
        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(v47, 8);
        _Block_object_dispose(v49, 8);
        _Block_object_dispose(&v51, 8);
        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(&v63, 8);
        _Block_object_dispose(&v67, 8);
        _Block_object_dispose(&v72, 8);
        if (v13 < 0)
        {
          return (v12 << 31 >> 31);
        }
      }

      v12 = ++v11 < v10;
      v7 += 26;
      if (v10 == v11)
      {
        return (v12 << 31 >> 31);
      }
    }
  }

  return 0;
}

BOOL filterSplits(_BOOL8 result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v43 = result;
  v54 = *MEMORY[0x1E69E9840];
  v6 = a6 + 7;
  v47 = 0;
  v48 = 0;
  v49 = a6 - 1;
  if (a6 >= 0)
  {
    v6 = a6;
  }

  v7 = v6 >> 3;
  v8 = (a5 - 1);
  v50 = a5 - 1;
  v51 = a5 - 1;
  if (a6 < 8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  v52 = 0;
  v53 = a6 - 1;
  if (a5 >= 3)
  {
    v11 = 0;
    v42 = v7 + 1;
    v45 = a5 - v9;
    v35 = 3 * a6 / 4;
    v36 = a6 / 4;
    v37 = 3 * (v7 + 1) / 2;
    v12 = (a2 + 42);
    v44 = -1;
    v13 = 1;
    while (1)
    {
      v14 = *(v12 + 6);
      v15 = areCutsTooClose(a6, v13, v14, v12 - 8, 0, 2u, &v47, v9);
      v16 = v9 > *v12 || v45 < v12[1];
      result = areCutsTooClose(a6, v13, *(v12 + 32), v12 + 5, 0, 2u, &v47, v9);
      v17 = *(v12 + 4);
      v18 = *(v12 + 30);
      if (v17 < v18 || v18 == 255 || result)
      {
        v19 = v11 != 0;
        if (v11 && v17 < v18 || v17 < v18 && *(v12 + 9) && !*(v12 - 17))
        {
          v19 = 1;
          goto LABEL_23;
        }
      }

      else
      {
        *(v12 + 4) = -1;
        v11 = 1;
        v19 = 1;
      }

      if (!result)
      {
        v19 = 0;
      }

LABEL_23:
      if (v14 <= 2 && !v16 && !v15 && v19)
      {
        v46 = 0;
        if (v14 != 1)
        {
          goto LABEL_30;
        }

        if (*(v12 + 8))
        {
          goto LABEL_62;
        }

        if (*(v12 - 7) - *(v12 - 8) > v42 || (v20 = *(v12 - 5), v21 = *(v12 - 6), v20 - v21 > v42))
        {
LABEL_30:
          v22 = 1;
          goto LABEL_31;
        }

        v34 = (v21 + v20) >> 1;
        v22 = 1;
        if (v34 < v36)
        {
LABEL_31:
          v23 = v44;
        }

        else
        {
          v23 = v44;
          if (v34 <= v35)
          {
            v22 = *(v12 + 7) == 0;
          }
        }

        if (!v22 || (v23 & 0x80000000) != 0)
        {
          if (!v22)
          {
            goto LABEL_62;
          }

          result = cutsCreateBadConcomp(v43, 0, 0, v23, a4, (v12 - 8), a3, v13, a4, a5, a6);
          v22 = !result;
        }

        else
        {
          v24 = a2 + 26 * v23;
          v25 = *(v24 + 22);
          if (v25 >= v14)
          {
            v26 = v14;
          }

          else
          {
            v26 = *(v24 + 22);
          }

          if (v25 <= v14)
          {
            v27 = v14;
          }

          else
          {
            v27 = *(v24 + 22);
          }

          if (v27 == 2 && v26 == 1)
          {
            v29 = v37;
          }

          else
          {
            v29 = v42;
          }

          result = areCutsTooClose(a6, v23, v25, (a2 + 26 * v23), v13, v14, v12 - 8, v29);
          if (result || (result = isCuttingSerif (v43, v24, v12 - 8, a5, a6, &v46)) || (result = cutsCreateBadConcomp(v43, v24, a3, v44, a4, (v12 - 8), a3, v13, a4, a5, a6)))
          {
            if (v46)
            {
              if (*(v12 + 4) <= 2 * *(v24 + 20))
              {
                goto LABEL_63;
              }

LABEL_62:
              LOBYTE(v30) = -2;
LABEL_67:
              v11 = 0;
              goto LABEL_68;
            }

            v31 = *(v24 + 22);
            if (v31 <= 1)
            {
              v31 = 1;
            }

            v32 = v31 * *(v24 + 20);
            v33 = *(v12 + 6);
            if (v33 <= 1)
            {
              v33 = 1;
            }

            if (v32 < v33 * *(v12 + 4))
            {
              goto LABEL_62;
            }

LABEL_63:
            *(v24 + 20) = -2;
LABEL_64:
            v30 = *(v12 + 4);
            if (v30 >= 0xFD)
            {
              LOBYTE(v30) = -3;
            }

            v44 = v13;
            goto LABEL_67;
          }
        }

        if (!v22)
        {
          goto LABEL_62;
        }

        goto LABEL_64;
      }

      LOBYTE(v30) = -1;
LABEL_68:
      *(v12 + 4) = v30;
      ++v13;
      v12 += 13;
      if (v8 == v13)
      {
        if ((v44 & 0x80000000) == 0)
        {
          result = cutsCreateBadConcomp(v43, a2 + 26 * v44, a3, v44, a4, 0, 0, 0xFFFFFFFFLL, a4, a5, a6);
          if (result)
          {
            *(a2 + 26 * v44 + 20) = -2;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t walkPathAndReturnFinalColumn(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = (a3 - 1);
  }

  if (v7 < a3 && (v7 & 0x80000000) == 0)
  {
    while (1)
    {
      v12 = a4 + v7 * a2;
      v13 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        break;
      }

      if (a6)
      {
        (*(a6 + 16))(a6, v7, a4);
      }

      v14 = &choiceTable + 20 * v13;
      v7 = (*(v14 + 2) + v7);
      a4 = (*(v14 + 3) + a4);
      if (v7 >= a3 || (v7 & 0x80000000) != 0)
      {
        return a4;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return a4;
}

uint64_t __getPathStats_block_invoke(uint64_t result, int a2, int a3)
{
  v3 = *(*(result + 32) + 8);
  if (!*(v3 + 24))
  {
    *(v3 + 24) = *(*(result + 128) + a3 + *(result + 152) * a2);
  }

  v4 = *(result + 136);
  v5 = *(result + 152);
  v6 = v5 * a2;
  v7 = v6 + a3;
  if (*(v4 + v7))
  {
    v8 = result + 40;
    v9 = *(result + 128);
    v10 = *(v9 + v7);
    if (*(*(*(result + 40) + 8) + 24))
    {
      goto LABEL_5;
    }

    v38 = *(*(result + 48) + 8);
    v38[12] = a3;
    v38[13] = a3;
    v38[14] = a2;
    v38[15] = a2;
    v39 = *(*(*(result + 56) + 8) + 24);
    if (v39 < 1 || v39 >= *(result + 156) - 1)
    {
      goto LABEL_5;
    }

    v40 = v39 * v5;
    v41 = *(*(*(result + 64) + 8) + 24);
    v42 = v41 + v40;
    v43 = *(v9 + v42);
    if (v43 > 5)
    {
      if (v43 == 8)
      {
LABEL_53:
        v48 = *(v4 + v42 - 1);
        v49 = *(v4 + v41 + v6 - 1);
        goto LABEL_54;
      }

      if (v43 != 6)
      {
LABEL_5:
        v11 = *(*(result + 48) + 8);
        v12 = *(v11 + 24);
        if (v12 >= a3)
        {
          LOWORD(v12) = a3;
        }

        *(v11 + 24) = v12;
        v13 = *(*(result + 48) + 8);
        v14 = *(v13 + 26);
        if (v14 <= a3)
        {
          LOWORD(v14) = a3;
        }

        *(v13 + 26) = v14;
        v15 = *(*(result + 48) + 8);
        v16 = *(v15 + 28);
        if (v16 >= a2)
        {
          LOWORD(v16) = a2;
        }

        *(v15 + 28) = v16;
        v17 = *(*(result + 48) + 8);
        v18 = *(v17 + 30);
        if (v18 <= a2)
        {
          LOWORD(v18) = a2;
        }

        *(v17 + 30) = v18;
        v19 = v10 > 8;
        v20 = (1 << v10) & 0x14A;
        if (!v19 && v20 != 0)
        {
          ++*(*(*(result + 80) + 8) + 24);
        }

        ++*(*(*(result + 88) + 8) + 24);
        v22 = 1;
        goto LABEL_44;
      }
    }

    else if (v43 != 1)
    {
      if (v43 != 3)
      {
        goto LABEL_5;
      }

      goto LABEL_53;
    }

    v48 = *(v4 + v42 + 1);
    v49 = *(v4 + v41 + v6 + 1);
LABEL_54:
    *(*(*(result + 72) + 8) + 24) = (v49 | v48) == 0;
    goto LABEL_5;
  }

  v8 = result + 40;
  if (!*(*(*(result + 40) + 8) + 24))
  {
    goto LABEL_45;
  }

  v23 = *(*(result + 96) + 8);
  v24 = *(v23 + 24);
  if (v24 <= 1)
  {
    *(*(result + 144) + 26 * *(result + 160) + 8 * v24) = *(*(*(result + 48) + 8) + 24);
    v23 = *(*(result + 96) + 8);
    v24 = *(v23 + 24);
  }

  *(v23 + 24) = v24 + 1;
  if (*(*(*(result + 88) + 8) + 24) == 1)
  {
    v25 = *(*(*(result + 56) + 8) + 24);
    if (v25 >= 2 && v25 < *(result + 156) - 1)
    {
      v26 = *(*(*(result + 64) + 8) + 24);
      if (v26 >= 2)
      {
        v27 = *(result + 152);
        if (v26 < v27 - 1)
        {
          v28 = *(result + 136);
          v29 = (v28 + v26 + v27 * (v25 - 1));
          v30 = v26 + v27 * v25;
          v31 = (v28 + v30 + v27);
          v32 = v29[1] + *(v29 - 1) + *(v28 + v30 - 1) + *(v28 + v30 + 1) + *(v31 - 1) + v31[1];
          v34 = *v31 + *v29 == 2 && v32 < 3;
          *(*(*(result + 104) + 8) + 24) = v34;
        }
      }
    }
  }

  v35 = *(*(*(result + 56) + 8) + 24);
  v36 = *(result + 152);
  v37 = *(*(result + 128) + *(*(*(result + 64) + 8) + 24) + v36 * v35) - 1;
  if (v37 <= 7u && ((0xA5u >> v37) & 1) != 0)
  {
    v22 = 0;
    *(*(*(result + 112) + 8) + 24) = (*(*(result + 136) + a3 + (v36 * v35) + qword_1E1157D88[v37]) | *(*(result + 136) + a3 + v36 * a2 + qword_1E1157D88[v37])) == 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_44:
  *(*(*v8 + 8) + 24) = v22;
LABEL_45:
  v44 = *(*(result + 120) + 8);
  v45 = *(v44 + 24);
  if (v45 >= a3)
  {
    LOWORD(v45) = a3;
  }

  *(v44 + 24) = v45;
  v46 = *(*(result + 120) + 8);
  v47 = *(v46 + 26);
  if (v47 <= a3)
  {
    LOWORD(v47) = a3;
  }

  *(v46 + 26) = v47;
  *(*(*(result + 56) + 8) + 24) = a2;
  *(*(*(result + 64) + 8) + 24) = a3;
  return result;
}

BOOL areCutsTooClose(__int16 a1, __int16 a2, unsigned int a3, _WORD *a4, __int16 a5, unsigned int a6, _WORD *a7, int a8)
{
  v21[0] = a2;
  v21[1] = a2;
  v21[3] = a1 - 1;
  v20[0] = a5;
  v20[1] = a5;
  v20[3] = a1 - 1;
  v8 = v21;
  if (a3)
  {
    v8 = a4;
  }

  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  if (a6)
  {
    v10 = a7;
  }

  else
  {
    v10 = v20;
  }

  if (v9 < 1)
  {
    return 0;
  }

  else
  {
    v11 = 0;
    if (a6 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a6;
    }

    v13 = v10 + 2;
    v14 = 1;
    while (v12 < 1)
    {
LABEL_22:
      v14 = ++v11 < v9;
      if (v11 == v9)
      {
        return 0;
      }
    }

    v15 = &v8[4 * v11];
    v16 = v12;
    v17 = v13;
    while (1)
    {
      v18 = v15[1] + a8 >= *(v17 - 2) && *(v17 - 1) + a8 >= *v15;
      if (v15[3] + a8 >= *v17 && v17[1] + a8 >= v15[2] && v18)
      {
        break;
      }

      v17 += 4;
      if (!--v16)
      {
        goto LABEL_22;
      }
    }
  }

  return v14;
}

BOOL isCuttingSerif (uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, BOOL *a6)
{
  v7 = a5;
  v8 = a4;
  if (a6)
  {
    *a6 = 0;
  }

  if (*(a3 + 22) != 1)
  {
    return 0;
  }

  if (*(a2 + 22) != 1)
  {
    return 0;
  }

  v10 = a3[3];
  v11 = a2[2];
  if (v10 < v11)
  {
    return 0;
  }

  v12 = a3[2];
  v13 = a2[3];
  if (v12 > v13)
  {
    return 0;
  }

  v14 = v13 - v11;
  if ((v13 - v11) >= (v10 - v12))
  {
    v14 = v10 - v12;
  }

  v15 = (v13 - v11 - (v10 - v12)) >= 0 ? v13 - v11 - (v10 - v12) : v10 - v12 - (v13 - v11);
  if (v15 >= (3 * v14))
  {
    return 0;
  }

  if (v11 >= v12)
  {
    v11 = a3[2];
  }

  v16 = v13 <= v10 ? a3[3] : a2[3];
  v17 = (v16 + v11) >> 1;
  if (v17 > a5 / 4 && 3 * a5 > 4 * v17)
  {
    return 0;
  }

  v18 = *a2;
  if (v18 >= *a3)
  {
    v18 = *a3;
  }

  v19 = a2[1];
  if (v19 <= a3[1])
  {
    v19 = a3[1];
  }

  v20 = a5 + (a5 >> 31);
  if ((v19 - v18) > a5 / 2)
  {
    return 0;
  }

  v21 = v19 + v18;
  if (!*(a1 + (v17 * a4 + ((v19 + v18) >> 1))))
  {
    return 0;
  }

  v27 = v16 - v11;
  v22 = v21 >> 1;
  v23 = v18 | (v19 << 16);
  EndBlackPixelRowInColumn = findEndBlackPixelRowInColumn(a1, a4, a5, v21 >> 1, v17, v23, -1);
  v25 = findEndBlackPixelRowInColumn(a1, v8, v7, v22, v17, v23, 1) - EndBlackPixelRowInColumn;
  result = v25 < (2 * v27);
  if (a6)
  {
    if (v25 < (2 * v27))
    {
      *a6 = v20 >> 1 > v16;
      return 1;
    }
  }

  return result;
}

BOOL cutsCreateBadConcomp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, int a10, int a11)
{
  v15 = a1;
  v17 = a10;
  v16 = a11;
  v96 = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v76 - ((v19 + 15) & 0x3FFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v26 = &v76 - v25;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2000000000;
  v95 = a10;
  if (v24)
  {
    *v24 = 0;
  }

  if (!(v22 | a7))
  {
    v39 = 1;
    goto LABEL_71;
  }

  v27 = 2 * a11;
  if (v22)
  {
    if (!a7)
    {
      v28 = a10 - 1;
      if (a11 >= 1)
      {
        v29 = (a11 + 7) & 0xFFFFFFF8;
        v30 = vdupq_n_s64(a11 - 1);
        v31 = xmmword_1E1157290;
        v32 = xmmword_1E11572A0;
        v33 = xmmword_1E1157200;
        v34 = xmmword_1E1157210;
        v35 = v20 + 8;
        v36 = vdupq_n_s64(8uLL);
        do
        {
          v37 = vmovn_s64(vcgeq_u64(v30, v34));
          if (vuzp1_s8(vuzp1_s16(v37, *v30.i8), *v30.i8).u8[0])
          {
            *(v35 - 4) = v28;
          }

          if (vuzp1_s8(vuzp1_s16(v37, *&v30), *&v30).i8[1])
          {
            *(v35 - 3) = v28;
          }

          if (vuzp1_s8(vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, *&v33))), *&v30).i8[2])
          {
            *(v35 - 2) = v28;
            *(v35 - 1) = v28;
          }

          v38 = vmovn_s64(vcgeq_u64(v30, v32));
          if (vuzp1_s8(*&v30, vuzp1_s16(v38, *&v30)).i32[1])
          {
            *v35 = v28;
          }

          if (vuzp1_s8(*&v30, vuzp1_s16(v38, *&v30)).i8[5])
          {
            v35[1] = v28;
          }

          if (vuzp1_s8(*&v30, vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, *&v31)))).i8[6])
          {
            v35[2] = v28;
            v35[3] = v28;
          }

          v32 = vaddq_s64(v32, v36);
          v33 = vaddq_s64(v33, v36);
          v34 = vaddq_s64(v34, v36);
          v35 += 8;
          v31 = vaddq_s64(v31, v36);
          v29 -= 8;
        }

        while (v29);
      }

      v81 = v24;
      HIWORD(v95) = a10 - 1;
      LOWORD(v95) = a10 - 1;
      if (!*(v21 + 21))
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v40 = v20;
    v78 = v21;
    v79 = v20;
    LODWORD(v81) = a4;
    LODWORD(v80) = a5;
    v77 = a10;
    v41 = v24;
    v42 = v23;
    bzero(v40, 2 * a11);
    v23 = v42;
    v27 = 2 * a11;
    v22 = 0;
    v24 = v41;
    v16 = a11;
    v17 = v77;
    v21 = v78;
    v20 = v79;
    a5 = v80;
    a4 = v81;
    v95 = 0;
  }

  if (!v21)
  {
    if (*(a6 + 21))
    {
      goto LABEL_27;
    }

LABEL_30:
    v39 = 0;
    goto LABEL_71;
  }

  if (!(*(v21 + 21) | *(a6 + 21)))
  {
    goto LABEL_30;
  }

LABEL_27:
  v81 = v24;
  if (v22)
  {
    v78 = v22;
    v80 = v27;
    LODWORD(v79) = v23;
    memset(v20, 255, v27);
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 0x40000000;
    v91[2] = __cutsCreateBadConcomp_block_invoke;
    v91[3] = &unk_1E8704A08;
    v91[4] = &v92;
    v91[5] = v20;
    walkPathAndReturnFinalColumn(v78, v17, v16, a4, a5, v91);
    v27 = v80;
    a5 = a9;
    a4 = v79;
  }

  else
  {
    a5 = a9;
    a4 = v23;
  }

  v22 = a7;
LABEL_33:
  v87 = 0;
  v88 = &v87;
  v89 = 0x2000000000;
  v90 = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2000000000;
  v86 = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x2000000000;
  v84 = -1;
  v43 = v22;
  memset(v26, 255, v27);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 0x40000000;
  v82[2] = __cutsCreateBadConcomp_block_invoke_2;
  v82[3] = &unk_1E8704A30;
  v82[4] = &v92;
  v82[5] = v83;
  v82[8] = v26;
  v82[9] = v20;
  v82[6] = v85;
  v82[7] = &v87;
  v44 = walkPathAndReturnFinalColumn(v43, v17, v16, a4, a5, v82);
  if (*(v88 + 24))
  {
    goto LABEL_69;
  }

  v45 = *(v93 + 12);
  v46 = *(v93 + 13) - v45;
  if (v46 < 3)
  {
    goto LABEL_69;
  }

  MEMORY[0x1EEE9AC00](v44);
  v48 = (&v76 - v47);
  bzero(&v76 - v47, v49);
  if (v16 < 1)
  {
    v54 = 0;
    v53 = 0;
    v52 = 0;
    v68 = 0;
    goto LABEL_66;
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  do
  {
    v56 = *&v20[2 * v50];
    v57 = *&v26[2 * v50];
    if (v56 >= v57)
    {
      v58 = *&v26[2 * v50];
    }

    else
    {
      v58 = *&v20[2 * v50];
    }

    if (v56 <= v57)
    {
      v59 = *&v26[2 * v50];
    }

    else
    {
      v59 = *&v20[2 * v50];
    }

    if (v58 >= v59)
    {
      if (v51 > 0)
      {
        ++v55;
      }
    }

    else
    {
      v60 = 0;
      v61 = (v15 + v58);
      v62 = &v48[v58 - v45];
      v63 = v59 - v58;
      do
      {
        v64 = *v61++;
        v60 += v64;
        *v62++ += v64;
        --v63;
      }

      while (v63);
      if (v51 > 0 && v60 == 0)
      {
        ++v55;
      }

      if (v60)
      {
        v52 = 0;
        ++v54;
        v51 = v60;
        goto LABEL_60;
      }
    }

    v66 = v55 == 0;
    if (!v55)
    {
      v55 = 0;
    }

    v51 = 0;
    if (v66)
    {
      ++v53;
    }

    else
    {
      ++v52;
    }

LABEL_60:
    ++v50;
    v15 += v17;
  }

  while (v50 != v16);
  if (v51 <= 0)
  {
    v67 = v55;
  }

  else
  {
    v67 = v55 + 1;
  }

  v68 = v67 > 1;
LABEL_66:
  if (v81)
  {
    *v81 = v52 >= v16 / 2;
  }

  if (v68)
  {
LABEL_69:
    v39 = 1;
  }

  else
  {
    if (v16 >= 0)
    {
      v70 = v16;
    }

    else
    {
      v70 = v16 + 3;
    }

    v71 = v70 >> 2;
    if (v52 <= v70 >> 2)
    {
      goto LABEL_81;
    }

    if (v53 <= v71)
    {
      goto LABEL_81;
    }

    v72 = 0;
    v73 = 0;
    v74 = v46;
    do
    {
      v75 = *v48++;
      v73 += v75;
      v72 += v75 * v75;
      --v74;
    }

    while (v74);
    if ((v73 / v46) * 0.75 > ((v72 - ((v73 * v73) / v46)) / (v46 - 1)))
    {
      v39 = 0;
    }

    else
    {
LABEL_81:
      if (v52 >= v16 / 2 || v53 >= v16 / 2)
      {
        v71 = 2 * v16 / 5;
      }

      v39 = v54 <= v71;
    }
  }

  _Block_object_dispose(v83, 8);
  _Block_object_dispose(v85, 8);
  _Block_object_dispose(&v87, 8);
LABEL_71:
  _Block_object_dispose(&v92, 8);
  return v39;
}

uint64_t findEndBlackPixelRowInColumn(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7)
{
  if (a5 >= 1 && a3 - 1 > a5)
  {
    v7 = a2 * (a7 + a5);
    while (1)
    {
      v8 = (a1 + v7 + a4);
      if (!*v8)
      {
        if (a4 > a6 && *(v8 - 1))
        {
          --a4;
        }

        else
        {
          if (a4 >= HIWORD(a6) || !v8[1])
          {
            return a5;
          }

          ++a4;
        }
      }

      a5 = (a5 + a7);
      if (a5 >= 1)
      {
        v7 += a7 * a2;
        if (a5 < a3 - 1)
        {
          continue;
        }
      }

      return a5;
    }
  }

  return a5;
}

uint64_t __cutsCreateBadConcomp_block_invoke(uint64_t result, int a2, int a3)
{
  v3 = *(result + 40);
  v4 = *(v3 + 2 * a2);
  if (v4 > a3)
  {
    LOWORD(v4) = a3;
  }

  v5 = v4;
  *(v3 + 2 * a2) = v4;
  v6 = *(*(result + 32) + 8);
  v7 = *(v6 + 24);
  if (v5 < v7)
  {
    LOWORD(v7) = v5;
  }

  *(v6 + 24) = v7;
  v8 = *(*(result + 32) + 8);
  v9 = *(v8 + 26);
  if (v5 > v9)
  {
    LOWORD(v9) = v5;
  }

  *(v8 + 26) = v9;
  return result;
}

void *__cutsCreateBadConcomp_block_invoke_2(void *result, int a2, int a3)
{
  v3 = result[8];
  v4 = *(v3 + 2 * a2);
  if (v4 > a3)
  {
    LOWORD(v4) = a3;
  }

  *(v3 + 2 * a2) = v4;
  v5 = *(result[4] + 8);
  v6 = *(v5 + 24);
  if (v4 < v6)
  {
    LOWORD(v6) = v4;
  }

  *(v5 + 24) = v6;
  v7 = *(result[4] + 8);
  if (v4 <= *(v7 + 26))
  {
    LOWORD(v4) = *(v7 + 26);
  }

  *(v7 + 26) = v4;
  v8 = *(*(result[5] + 8) + 24);
  if (v8 != -1 && v8 != a2)
  {
    v10 = *(result[6] + 8);
    v11 = *(v10 + 24);
    if (v11 == -1)
    {
      v13 = *(result[9] + 2 * v8) > *(v3 + 2 * v8);
    }

    else
    {
      if (!v11)
      {
        if (*(result[9] + 2 * v8) < *(v3 + 2 * v8))
        {
          v12 = -1;
        }

        else
        {
          v12 = 1;
        }

        *(v10 + 24) = v12;
        goto LABEL_23;
      }

      v13 = 0;
    }

    *(*(result[7] + 8) + 24) |= v13;
    if (*(*(result[6] + 8) + 24) == 1)
    {
      v14 = *(*(result[5] + 8) + 24);
      v15 = *(result[9] + 2 * v14) < *(result[8] + 2 * v14);
    }

    else
    {
      v15 = 0;
    }

    *(*(result[7] + 8) + 24) |= v15;
  }

LABEL_23:
  *(*(result[5] + 8) + 24) = a2;
  return result;
}

BOOL diacriticLooksLikeDot(uint64_t a1, int a2)
{
  v2 = *(a1 + 280) + 100 * a2;
  v3 = *(v2 + 82) - *(v2 + 80);
  v4 = *(v2 + 86) - *(v2 + 84);
  return v3 < 2 * v4 + 3 && v4 < 2 * v3 + 3 && (v4 + 1) * (v3 + 1) <= 2 * *(v2 + 72);
}

BOOL isFeasablePart(uint64_t a1, int a2, int a3)
{
  if (a3 == -1)
  {
    return 1;
  }

  v3 = *(a1 + 280);
  v4 = v3 + 100 * a2;
  v5 = *(v4 + 93);
  v6 = *(v4 + 84);
  v7 = *(v4 + 86);
  v8 = v3 + 100 * a3;
  v9 = *(v8 + 40);
  if (v9 > 72)
  {
    if (v9 != 73 && v9 != 124 && v9 != 108)
    {
      return 1;
    }

    return (v5 & 1) != 0 && ((*(v8 + 84) - v6) / (v7 - v6 + 1)) <= 0.15;
  }

  if (v9 == 49)
  {
    return (v5 & 1) != 0 && ((*(v8 + 84) - v6) / (v7 - v6 + 1)) <= 0.15;
  }

  return v9 != 63;
}

BOOL isSaneSplit(uint64_t a1, int a2, int *a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  if (a4 < 1)
  {
    return 0;
  }

  v70 = v9;
  v71 = v8;
  v72 = v6;
  v73 = v7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = *(a1 + 280);
  v20 = 1.0;
  v21 = 0x7FFFFFFF;
  v22 = 0x7FFFFFFF;
  v23 = a4;
  do
  {
    v24 = a3[v15];
    if (v24 == -1)
    {
      return 0;
    }

    v25 = v18 + 100 * v24;
    if ((*(v25 + 94) & 8) == 0)
    {
      v26 = *(v25 + 86) - *(v25 + 84);
      v27 = v26 + 1;
      v28 = v27 + v27 * (*(v25 + 82) - *(v25 + 80));
      if (v16 <= v28)
      {
        v16 = v27 + v27 * (*(v25 + 82) - *(v25 + 80));
      }

      if (v17 <= v27)
      {
        v17 = v26 + 1;
      }

      if (v21 >= v28)
      {
        v21 = v27 + v27 * (*(v25 + 82) - *(v25 + 80));
      }

      if (v22 >= v27)
      {
        v22 = v26 + 1;
      }

      if (v20 >= *(v25 + 48))
      {
        v20 = *(v25 + 48);
      }
    }

    ++v15;
  }

  while (a4 != v15);
  result = 0;
  if (v17 && v22 >= (v17 / 3u) && v21 >= (v16 / 0xAu))
  {
    if (a6)
    {
      *__s = 0;
      v30 = a3;
      while (1)
      {
        v31 = *v30++;
        v32 = strlen(__s);
        if (strlen((*(a1 + 280) + 100 * v31 + 40)) + v32 > 3)
        {
          break;
        }

        __strncat_chk();
        if (!--v23)
        {
          v33 = *__s;
          goto LABEL_26;
        }
      }

      v33 = 0;
LABEL_26:
      v34 = 0;
      v12 = a4;
      v10 = a6;
      v11 = a5;
      do
      {
        if (v33 == FKRecognitionLabels[v34] && v33 != *(v18 + 100 * a2 + 40))
        {
          return 0;
        }

        ++v34;
      }

      while (v34 != 154);
      v18 = *(a1 + 280);
    }

    v35 = v18 + 100 * a2;
    ConfusionScoreForCC = getConfusionScoreForCC(v35);
    v37 = ConfusionScoreForCC;
    if (v12 != 2)
    {
      v41 = *(v35 + 40);
      if (v41 != 37)
      {
        goto LABEL_151;
      }

      goto LABEL_43;
    }

    v38 = *(a1 + 280);
    v39 = v38 + 100 * *a3;
    v40 = v38 + 100 * a3[1];
    v41 = *(v35 + 40);
    if (v41 <= 84)
    {
      if (v41 > 74)
      {
        if (v41 <= 78)
        {
          if (v41 != 75)
          {
            if (v41 != 77)
            {
              if (v41 == 78)
              {
                if (strstr("I", (v39 + 40)) && strstr("yN", (v40 + 40)))
                {
                  v41 = 78;
                  if (*(v35 + 64) == -1)
                  {
                    v42 = v20;
                    v43 = 0.6;
                    goto LABEL_134;
                  }
                }

                else
                {
                  v41 = 78;
                }
              }

              goto LABEL_151;
            }

            if (strstr("KI", (v39 + 40)) && strstr("I", (v40 + 40)) && *(v35 + 64) == -1)
            {
              if (v20 < 0.5)
              {
                return 0;
              }
            }

            else if (strstr("wWj", (v39 + 40)) && strstr("jJI", (v40 + 40)))
            {
              v49 = *(v35 + 64);
              v41 = 77;
              goto LABEL_126;
            }

            v41 = 77;
            goto LABEL_151;
          }

          if (!strstr("Il", (v39 + 40)))
          {
            v41 = 75;
            goto LABEL_151;
          }

          v41 = 75;
          if (strstr("{", (v40 + 40)))
          {
            goto LABEL_133;
          }

LABEL_151:
          *__s2 = v41;
          if (!strstr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", __s2))
          {
            return 1;
          }

          v50 = (__PAIR64__(v12, v10) - 1) >> 32;
          if (v50 < 1)
          {
            return 1;
          }

          v51 = 0;
          v52 = 0;
          v66 = 0;
          v53 = *(a1 + 280);
          v54 = 1.0;
          while (1)
          {
            v55 = a3[v51];
            v56 = v53 + 100 * v55;
            v57 = *(v56 + 40);
            if (!v57)
            {
              goto LABEL_168;
            }

            v58 = 0;
            v59 = (v53 + 41 + 100 * v55);
            do
            {
              if ((v57 & 0xC0) != 0x80)
              {
                ++v58;
              }

              v60 = *v59++;
              v57 = v60;
            }

            while (v60);
            if (v58 != 1)
            {
              goto LABEL_168;
            }

            v61 = *(v56 + 40);
            *v69 = v61;
            if (!strstr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", v69))
            {
              break;
            }

            if ((v61 - 73) <= 0x33 && ((1 << (v61 - 73)) & 0x8000800000001) != 0 || v61 == 49)
            {
              ++v52;
              goto LABEL_166;
            }

LABEL_168:
            if (++v51 == v50)
            {
              if (v66 > 0)
              {
                v62 = 0.94;
                if (v52 + v66 != v12)
                {
                  v62 = 0.5;
                }

                if (v62 <= v37)
                {
                  v62 = v37;
                }

                if (v54 < v62)
                {
                  return 0;
                }
              }

              return 1;
            }
          }

          ++v66;
LABEL_166:
          if (*(v56 + 48) < v54)
          {
            v54 = *(v56 + 48);
          }

          goto LABEL_168;
        }

        if (v41 != 79 && v41 != 81)
        {
          if (v41 != 82)
          {
            goto LABEL_151;
          }

          if (strstr("[If", (v39 + 40)) && strstr("Il", (v40 + 40)))
          {
            result = 0;
            if ((*(v35 + 93) & 3) != 0 || v20 < v37)
            {
              return result;
            }
          }

          else if (strstr("F", (v39 + 40)) && strstr("4", (v40 + 40)) && *(v11 + 17) > 1u)
          {
            return 0;
          }

          v41 = 82;
          goto LABEL_151;
        }

        goto LABEL_84;
      }

      if (v41 > 64)
      {
        if (v41 == 65)
        {
          if (!strstr("Il", (v39 + 40)))
          {
            v41 = 65;
            goto LABEL_151;
          }

          v41 = 65;
          if (strstr("Il", (v40 + 40)))
          {
            goto LABEL_133;
          }

          goto LABEL_151;
        }

        if (v41 == 68)
        {
          if (strstr("T[", (v39 + 40)) && strstr("Jj", (v40 + 40)) && *(v35 + 64) == -1)
          {
            if (v37 > 0.3)
            {
              return 0;
            }
          }

          else if (strstr("r", (v39 + 40)) && *(v11 + 17) > 1u)
          {
            return 0;
          }

          v41 = 68;
          goto LABEL_151;
        }

        if (v41 != 72)
        {
          goto LABEL_151;
        }

        if (!strstr("t", (v39 + 40)))
        {
          v41 = 72;
          goto LABEL_151;
        }

        v41 = 72;
        if (!strstr("I", (v40 + 40)))
        {
          goto LABEL_151;
        }

        v46 = v37;
        v47 = 0.7;
LABEL_102:
        if (v46 > v47)
        {
          return 0;
        }

        goto LABEL_151;
      }

      if (v41 != 37)
      {
        if (v41 != 48)
        {
          goto LABEL_151;
        }

LABEL_84:
        if (strstr("[(", (v39 + 40)) && strstr(")]>", (v40 + 40)))
        {
          return 0;
        }

        if (!strstr("C[(f", (v39 + 40)))
        {
          goto LABEL_151;
        }

        v48 = ")]Jj";
LABEL_99:
        if (!strstr(v48, (v40 + 40)) || *(v35 + 64) != -1)
        {
          goto LABEL_151;
        }

        v46 = v37;
        v47 = 0.3;
        goto LABEL_102;
      }

LABEL_43:
      v44 = ConfusionScoreForCC;
      return v20 >= 0.5 && v44 <= 0.3;
    }

    if (v41 <= 108)
    {
      if (v41 <= 86)
      {
        if (v41 == 85)
        {
LABEL_97:
          if (!strstr("Ii", (v39 + 40)))
          {
            goto LABEL_151;
          }

          v48 = "Jj";
          goto LABEL_99;
        }

LABEL_89:
        if (!strstr("\, (v39 + 40)) || !strstr("jJ"", (v40 + 40)) || *(v35 + 64) != -1)
        {
          goto LABEL_151;
        }

        v46 = v37;
        v47 = 0.2;
        goto LABEL_102;
      }

      if (v41 != 87)
      {
        if (v41 != 98)
        {
          if (v41 == 100)
          {
            if (strstr("Cc(", (v39 + 40)) && strstr("yY", (v40 + 40)) && *(v11 + 17) > 1u)
            {
              return 0;
            }

            v41 = 100;
          }

          goto LABEL_151;
        }

        if (!strstr("L", (v39 + 40)))
        {
          v41 = 98;
          goto LABEL_151;
        }

        v41 = 98;
        if (!strstr(")", (v40 + 40)))
        {
          goto LABEL_151;
        }

LABEL_112:
        if (v20 < 0.5)
        {
          return 0;
        }

        goto LABEL_151;
      }
    }

    else
    {
      if (v41 <= 116)
      {
        if (v41 == 109)
        {
          if (!strstr("llIn[", (v39 + 40)))
          {
            v41 = 109;
            goto LABEL_151;
          }

          v41 = 109;
          if (!strstr("]", (v40 + 40)))
          {
            goto LABEL_151;
          }

          goto LABEL_133;
        }

        if (v41 == 110)
        {
          if (!strstr("r", (v39 + 40)) || !strstr("Il", (v40 + 40)))
          {
            v41 = 110;
            goto LABEL_151;
          }

          v49 = *(v35 + 64);
          v41 = 110;
LABEL_126:
          if (v49 != -1)
          {
            goto LABEL_151;
          }

LABEL_133:
          v42 = v20;
          v43 = 0.7;
LABEL_134:
          if (v42 < v43)
          {
            return 0;
          }

          goto LABEL_151;
        }

        if (v41 != 111)
        {
          goto LABEL_151;
        }

        goto LABEL_84;
      }

      if (v41 != 119)
      {
        if (v41 != 118)
        {
          if (v41 != 117)
          {
            goto LABEL_151;
          }

          goto LABEL_97;
        }

        goto LABEL_89;
      }
    }

    if (!strstr("}v", (v39 + 40)) || !strstr("vj", (v40 + 40)) || *(v35 + 64) != -1)
    {
      goto LABEL_151;
    }

    goto LABEL_112;
  }

  return result;
}

BOOL concatenatedCCsMatchCC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  result = 0;
  if (a2 != -1)
  {
    v13 = v4;
    v14 = v5;
    if (a3 != -1)
    {
      v10 = *(a1 + 280);
      *__s = *(v10 + 100 * a2 + 40);
      v11 = strlen(__s);
      if (strlen((v10 + 100 * a3 + 40)) + v11 <= 3)
      {
        __strncat_chk();
        return *__s == *(a4 + 40);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t combineSlash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 280);
  v5 = v4 + 100 * a2;
  if (*(v5 + 40) != 47)
  {
    return 0;
  }

  v6 = a3;
  result = 0;
  if (a3 == -1)
  {
    return result;
  }

  v9 = a4;
  if (a4 == -1)
  {
    return result;
  }

  v10 = v4 + 100 * a3;
  v11 = *(v5 + 86);
  v12 = *(v5 + 84);
  v13 = *(v10 + 86);
  v14 = *(v10 + 84);
  v15 = 3 * (v11 - v12);
  if (v15 <= 4 * (v13 - v14))
  {
    return 0;
  }

  v16 = a2;
  v17 = v4 + 100 * a4;
  v18 = *(v17 + 86);
  v19 = *(v17 + 84);
  v20 = (v13 + v14 + 1) >> 1;
  v21 = (v11 + v12 + 1) >> 1;
  v22 = (*(v5 + 82) + *(v5 + 80) + 1) >> 1;
  v23 = v15 <= 4 * (v18 - v19) || (*(v10 + 82) + *(v10 + 80) + 1) >> 1 >= v22;
  v24 = v23 || v22 >= (*(v17 + 82) + *(v17 + 80) + 1) >> 1;
  v25 = v24 || v20 >= v21;
  if (v25 || v21 >= (v18 + v19 + 1) >> 1)
  {
    return 0;
  }

  if (*(a1 + 36) != 4412225)
  {
    v27 = 0;
    v28 = *(v10 + 40);
    v29 = "41234171913231525354516561838587800";
    do
    {
      if (v28 == *(v29 - 1) && *(v17 + 40) == *v29)
      {
        return combineSlash_vulgarFractionsStr[v27];
      }

      v29 += 2;
      ++v27;
    }

    while (v27 != 17);
  }

  result = FKSequenceScoreAsPercent(a1, a2, a3, 0);
  if (result)
  {
    result = FKSequenceScoreAsPercent(a1, v16, v9, 0);
    if (result)
    {
      v49 = v6;
      v50 = v9;
      v30 = *(a1 + 280);
      if (!*(v30 + 100 * v6 + 40) && !*(v30 + 100 * v9 + 40))
      {
        FKRecognizeMultipleConcomps(a1, &v49, 2);
      }

      v48 = 0;
      v31 = &v49;
      v32 = v47;
      memset(v47, 0, sizeof(v47));
      v33 = 1;
      while (1)
      {
        v34 = v33;
        v35 = *(a1 + 280) + 100 * *v31;
        if ((*(v35 + 94) & 8) != 0)
        {
          v36 = *(v35 + 48);
          *(v32 + 2) = *(v35 + 32);
          *(v32 + 3) = v36;
          v37 = *(v35 + 80);
          *(v32 + 4) = *(v35 + 64);
          *(v32 + 5) = v37;
          *(v32 + 24) = *(v35 + 96);
          v38 = *(v35 + 16);
          *v32 = *v35;
          *(v32 + 1) = v38;
          v35 = v32;
          *(v32 + 10) = 0;
        }

        else if (*(v35 + 40))
        {
          goto LABEL_34;
        }

        FKRecognizeConcomp(a1, v35);
LABEL_34:
        if ((*(v35 + 24) | 0x20) != 0x6F || getConfusionScoreForCC(v35) < 0.8)
        {
          return 0;
        }

        v33 = 0;
        v32 = &v47[6] + 4;
        v31 = &v50;
        if ((v34 & 1) == 0)
        {
          v39 = &v49;
          v40 = v47;
          v41 = 1;
          do
          {
            v42 = v41;
            if (*(v40 + 10))
            {
              v43 = *(a1 + 280) + 100 * *v39;
              v44 = *(v40 + 5);
              *(v43 + 64) = *(v40 + 4);
              *(v43 + 80) = v44;
              *(v43 + 96) = *(v40 + 24);
              v45 = *(v40 + 1);
              *v43 = *v40;
              *(v43 + 16) = v45;
              v46 = *(v40 + 3);
              *(v43 + 32) = *(v40 + 2);
              *(v43 + 48) = v46;
            }

            v41 = 0;
            v40 = &v47[6] + 4;
            v39 = &v50;
          }

          while ((v42 & 1) != 0);
          return 37;
        }
      }
    }
  }

  return result;
}

uint64_t relativeYPosPercent(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 8);
  v4 = *(a1 + 280);
  v5 = v4 + 100 * *(v3 + 4 * a3);
  v6 = *(v5 + 86);
  v7 = *(v5 + 84);
  if (a3 < 1)
  {
    v11 = *(a2 + 20);
    v12 = a3 + 1;
    if ((a3 + 1) >= v11)
    {
      return 100;
    }

    v9 = 0;
    v10 = 1;
  }

  else
  {
    v8 = a3;
    do
    {
      v9 = v4 + 100 * *(v3 - 4 + 4 * v8);
      if ((*(v9 + 94) & 8) != 0)
      {
        v9 = 0;
      }

      v10 = v9 == 0;
      if (v8 < 2)
      {
        break;
      }

      --v8;
    }

    while (!v9);
    v11 = *(a2 + 20);
    v12 = a3 + 1;
    if ((a3 + 1) >= v11)
    {
      if (!v9)
      {
        return 100;
      }

      goto LABEL_23;
    }
  }

  v13 = (v3 + 4 * v12);
  v14 = v12 + 1;
  do
  {
    v15 = *v13++;
    v16 = v4 + 100 * v15;
    if ((*(v16 + 94) & 8) != 0)
    {
      v16 = 0;
    }

    if (v14 >= v11)
    {
      break;
    }

    ++v14;
  }

  while (!v16);
  if (v10)
  {
    if (v16)
    {
      v17 = *(v16 + 84);
      v18 = *(v16 + 86);
      goto LABEL_24;
    }

    return 100;
  }

  if (v16)
  {
    v17 = (*(v16 + 84) + *(v9 + 84)) >> 1;
    v18 = (*(v16 + 86) + *(v9 + 86)) >> 1;
    goto LABEL_24;
  }

LABEL_23:
  v17 = *(v9 + 84);
  v18 = *(v9 + 86);
LABEL_24:
  v20 = v18 >= v17;
  v21 = v18 - v17;
  if (v21 != 0 && v20)
  {
    return ((100 * (((v6 + v7 + 1) >> 1) - v17)) / v21);
  }

  else
  {
    return 50;
  }
}

BOOL diacriticIsResonablyCentered(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(a2 + 82);
  v4 = *(a1 + 280) + 100 * *(a2 + 64);
  v5 = 3 * ((*(v4 + 82) + *(v4 + 80) + 1) >> 1);
  return v5 <= v2 + 2 * v3 && v5 >= v3 + 2 * v2;
}

void *FKSessionCreate(unsigned int a1, unsigned int a2)
{
  v2 = 0;
  if (a1 >= 1 && a2 >= 1)
  {
    v5 = malloc_type_calloc(1uLL, 0x160uLL, 0x10B00408D8AB762uLL);
    v2 = v5;
    if (v5)
    {
      *v5 = 10;
      *&v6 = 0x100000001;
      *(&v6 + 1) = 0x100000001;
      *(v5 + 8) = v6;
      *(v5 + 6) = 2;
      *(v5 + 7) = a1;
      *(v5 + 8) = a2;
      *(v5 + 9) = 0;
      *(v5 + 26) = a2;
      *(v5 + 27) = a1;
      v7 = (a1 + 31) & 0x7FFFFFE0;
      *(v5 + 28) = v7;
      if ((a1 >> 15 || (v8 = malloc_type_malloc(v7 * ((a2 + 31) & 0x7FFFFFE0), 0x4708D7BEuLL), (v2[25] = v8) != 0)) && (v9 = (a1 + 1) | ((a1 + 1) >> 1) | (((a1 + 1) | ((a1 + 1) >> 1)) >> 2), v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8), v11 = v10 | HIWORD(v10), *(v2 + 60) = v11 + 1, *(v2 + 61) = v11, *(v2 + 62) = 0, v12 = malloc_type_malloc(12 * (v11 + 1), 0x1000040FD6F1FF4uLL), (v2[29] = v12) != 0) && (v13 = malloc_type_malloc(0x40000uLL, 0x100004000313F17uLL), (v2[32] = v13) != 0) && (*(v2 + 68) = 0x8000, v14 = malloc_type_calloc(0x200uLL, 2uLL, 0x1000040BDFB0063uLL), (v2[33] = v14) != 0) && (v15 = malloc_type_malloc(0x32000uLL, 0x1000040D2C85C19uLL), (v2[35] = v15) != 0) && (v2[36] = 2048, *(v2 + 77) = 0, v16 = malloc_type_calloc(1uLL, 0x6800uLL, 0x1010040D07E2FD1uLL), (v2[39] = v16) != 0))
      {
        v2[40] = 0xFFFFFFFF00000100;
        *(v2 + 82) = -1;
      }

      else
      {
        v17 = v2[39];
        if (v17)
        {
          free(v17);
        }

        v18 = v2[35];
        if (v18)
        {
          free(v18);
        }

        v19 = v2[32];
        if (v19)
        {
          free(v19);
        }

        v20 = v2[25];
        if (v20)
        {
          free(v20);
        }

        free(v2);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t FKSessionReset(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v5 = result;
    if (*(result + 28) == a2 && *(result + 32) == a3)
    {
LABEL_12:
      *(v5 + 248) = 0;
      freeSequenceMemory(v5);
      *(v5 + 300) = 0;
      *(v5 + 292) = 0;
      *(v5 + 308) = 0;
      return 1;
    }

    v6 = a3 + 31;
    if (a3 < -31)
    {
      v6 = a3 + 62;
    }

    v7 = v6 & 0xFFFFFFE0;
    v8 = a2 + 31;
    if (a2 < -31)
    {
      v8 = a2 + 62;
    }

    v9 = v8 & 0xFFFFFFE0;
    *(result + 224) = v9;
    result = malloc_type_realloc(*(result + 200), v7 * v9, 0xAC5BB557uLL);
    if (result)
    {
      *(v5 + 200) = result;
      if (*(v5 + 28) != a2)
      {
        v10 = (a2 + 1) | ((a2 + 1) >> 1) | (((a2 + 1) | ((a2 + 1) >> 1)) >> 2);
        v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
        v12 = v11 | HIWORD(v11);
        *(v5 + 240) = v12 + 1;
        *(v5 + 244) = v12;
        *(v5 + 232) = malloc_type_realloc(*(v5 + 232), 12 * (v12 + 1), 0x1000040FD6F1FF4uLL);
      }

      *(v5 + 28) = a2;
      *(v5 + 32) = a3;
      goto LABEL_12;
    }
  }

  return result;
}

void freeSequenceMemory(uint64_t a1)
{
  if (*(a1 + 320) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 312) + v2;
      free(*(v4 + 80));
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      free(*(v4 + 8));
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      ++v3;
      v2 += 104;
    }

    while (v3 < *(a1 + 320));
  }
}

uint64_t FKSessionGetMemoryUsage(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 272);
  v6 = *(a1 + 320);
  v7 = 104 * v6;
  if (v6 >= 1)
  {
    v8 = (*(a1 + 312) + 16);
    do
    {
      v9 = *v8;
      v8 += 26;
      v7 += 4 * v9;
      --v6;
    }

    while (v6);
  }

  v10 = *(a1 + 288);
  v11 = 8 * v5;
  v12 = v5 >> 6;
  v13 = *(a1 + 208) * *(a1 + 224);
  if (a2)
  {
    *a2 = v13;
  }

  v14 = v11 + 2 * v12;
  if (a3)
  {
    *a3 = v14;
  }

  v15 = 100 * v10;
  if (a4)
  {
    *a4 = v15;
  }

  if (a5)
  {
    *a5 = v7;
  }

  return v15 + v13 + v14 + v7;
}

void FKSessionDestroy(void **a1)
{
  freeSequenceMemory(a1);
  free(a1[25]);
  free(a1[29]);
  free(a1[32]);
  free(a1[33]);
  free(a1[35]);
  free(a1[39]);

  free(a1);
}

void FKSessionDestroyRecognizer(void **a1)
{
  if (a1)
  {
    free(a1[327]);
    *(a1 + 656) = 0;
    for (i = 3; i != 328; i += 65)
    {
      if (a1[i])
      {
        espresso_plan_destroy();
        a1[i] = 0;
      }
    }

    if (*a1)
    {
      espresso_context_destroy();
    }

    free(a1);
  }
}

void **FKSessionCreateRecognizer()
{
  v0 = malloc_type_calloc(0xA48uLL, 1uLL, 0x85F4B517uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 2) = 5;
    v0[327] = 0;
    *(v0 + 656) = 0;
    context = espresso_create_context();
    *v1 = context;
    if (context)
    {
      BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.Futhark");
      v4 = CFBundleCopyResourceURL(BundleWithIdentifier, @"recognition.espresso.net", 0, 0);
      if (v4)
      {
        v5 = v4;
        v6 = CFURLCopyFileSystemPath(v4, kCFURLPOSIXPathStyle);
        if (v6)
        {
          v7 = v6;
          SystemEncoding = CFStringGetSystemEncoding();
          CFStringGetCStringPtr(v7, SystemEncoding);
          v9 = 0;
          v10 = &FKBatchLevels_0;
          while (1)
          {
            v11 = *v10++;
            LODWORD(v1[v9 + 2]) = v11;
            plan = espresso_create_plan();
            v1[v9 + 3] = plan;
            if (!plan || espresso_plan_add_network() || v9 * 8 && espresso_network_change_input_blob_shapes())
            {
              break;
            }

            if (espresso_plan_build() || espresso_network_bind_buffer() || espresso_network_bind_buffer() || espresso_network_bind_buffer())
            {
              break;
            }

            v9 += 65;
            if (v9 == 325)
            {
              CFRelease(v5);
              CFRelease(v7);
              return v1;
            }
          }

          CFRelease(v5);
        }

        else
        {
          v7 = v5;
        }

        CFRelease(v7);
      }
    }
  }

  FKSessionDestroyRecognizer(v1);
  return 0;
}

uint64_t FKThresholdCalculateOtsuLimit(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 28);
  v4 = *(a1 + 32);
  bzero(v28, 0x400uLL);
  LODWORD(v5) = v4 / 4;
  v6 = 3 * v4 + 3;
  if (3 * v4 >= 0)
  {
    v6 = 3 * v4;
  }

  if (v5 < v6 >> 2)
  {
    v7 = v6 >> 2;
    if (3 * v3 >= 0)
    {
      v8 = 3 * v3;
    }

    else
    {
      v8 = 3 * v3 + 3;
    }

    v9 = v8 >> 2;
    v10 = a2[3];
    v5 = v5;
    v11 = v8 >> 2;
    v12 = (*a2 + v10 * v5 + v3 / 4);
    v13 = v11 - v3 / 4;
    do
    {
      if (v3 / 4 < v9)
      {
        v14 = v13;
        v15 = v12;
        do
        {
          v16 = *v15++;
          ++v28[v16];
          --v14;
        }

        while (v14);
      }

      ++v5;
      v12 += v10;
    }

    while (v5 != v7);
  }

  v17 = 0;
  v18 = 0.0;
  v19 = 0.0;
  do
  {
    v20 = v28[v17];
    v19 = v19 + v20;
    v18 = v18 + (v20 * v17++);
  }

  while (v17 != 256);
  v21 = 0;
  result = 0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  do
  {
    v27 = v28[v21];
    v25 = v25 + v27;
    v24 = v24 + (v27 * v21);
    if (v25 != 0.0)
    {
      if (v25 == v19)
      {
        return result;
      }

      v23 = -v19;
      if ((v24 * v23 + v18 * v25) * (v24 * v23 + v18 * v25) / (v25 * (v19 - v25)) >= v26)
      {
        v26 = (v24 * v23 + v18 * v25) * (v24 * v23 + v18 * v25) / (v25 * (v19 - v25));
        result = v21;
      }
    }

    ++v21;
  }

  while (v21 != 256);
  return result;
}

uint64_t FKThreshold(uint64_t result, unsigned __int8 **a2, int a3)
{
  v3 = *(result + 32);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 200);
    v6 = *a2;
    v7 = *(result + 28);
    do
    {
      if (v7 >= 1)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *v6++;
          *v5++ = v9 >= a3;
          v7 = *(result + 28);
        }

        v3 = *(result + 32);
      }

      v6 = &a2[3][v6 - v7];
      v5 += *(result + 224) - v7;
      ++v4;
    }

    while (v4 < v3);
  }

  return result;
}

void FKThresholdBlockAverage(uint64_t a1, uint64_t *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 28);
  v4 = *(a1 + 32);
  v7 = v4 + 7;
  v6 = v4 < -7;
  v8 = v4 + 14;
  if (!v6)
  {
    v8 = v7;
  }

  v9 = v8 >> 3;
  v10 = v5 + 7;
  v6 = v5 < -7;
  v11 = v5 + 14;
  if (!v6)
  {
    v11 = v10;
  }

  v12 = v11 >> 3;
  v13 = malloc_type_malloc((v11 >> 3) * v9, 0xA4240B8DuLL);
  LODWORD(v14) = *(a1 + 32);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = v12;
    do
    {
      v18 = 0;
      memset(v44, 0, sizeof(v44));
      v19 = v14;
      v20 = *a2;
      v21 = a2[3];
      do
      {
        v22 = v16 + v18;
        if (v16 + v18 >= v14)
        {
          v22 = v14 - 1;
        }

        *(v44 + v18++) = v20 + v21 * v22;
      }

      while (v18 != 8);
      v23 = *(a1 + 28);
      if (v23 >= 1)
      {
        v24 = 0;
        for (i = 0; i < v23; i += 8)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 255;
          do
          {
            v30 = 0;
            v31 = *(v44 + v26);
            v32 = v31 + v23 - 1;
            v33 = (v31 + i);
            do
            {
              if (i + v30 >= v23)
              {
                v34 = v32;
              }

              else
              {
                v34 = v33;
              }

              v35 = *v34;
              v28 += v35;
              if (v27 <= v35)
              {
                v27 = v35;
              }

              if (v29 >= v35)
              {
                v29 = v35;
              }

              ++v30;
              ++v33;
            }

            while (v30 != 8);
            ++v26;
          }

          while (v26 != 8);
          if (v27 - v29 <= 24)
          {
            if (v15 && v24 && (v37 = v13[(v15 - 1) * v17 + v24] + 2 * v13[v15 * v17 - 1 + v24] + v13[(v15 - 1) * v17 - 1 + v24], v29 < (v37 >> 2)))
            {
              v36 = v37 >> 2;
            }

            else
            {
              v36 = v29 >> 1;
            }
          }

          else
          {
            v36 = v28 / 64;
          }

          v13[v15 * v17 + v24] = v36;
          v23 = *(a1 + 28);
          v14 = *(a1 + 32);
          if (v16 < v14)
          {
            v38 = 0;
            v39 = v16;
            do
            {
              if (i < v23)
              {
                v40 = 0;
                v41 = *(v44 + v38) + i;
                do
                {
                  *(*(a1 + 200) + v39 * *(a1 + 224) + i + v40) = v36 <= *(v41 + v40);
                  ++v40;
                  v23 = *(a1 + 28);
                  v42 = v23 - i;
                  if (v23 - i >= 8)
                  {
                    v42 = 8;
                  }
                }

                while (v40 < v42);
                LODWORD(v14) = *(a1 + 32);
              }

              ++v38;
              v43 = v14 - v16;
              if (v14 - v16 >= 8)
              {
                v43 = 8;
              }

              ++v39;
            }

            while (v38 < v43);
          }

          ++v24;
        }

        v19 = v14;
      }

      v16 += 8;
      ++v15;
    }

    while (v16 < v19);
  }

  free(v13);
}

uint64_t FKThresholdCalculateContrast(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = WORD1(a3);
  if (WORD1(a3) >= *(a1 + 28))
  {
    return 0;
  }

  v4 = HIWORD(a3);
  v5 = WORD2(a3);
  if (*(a1 + 32) <= HIWORD(a3) || WORD2(a3) >= v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = a3;
  v11 = a3;
  v12 = WORD1(a3) - a3;
  v13 = WORD1(a3) - a3;
  v14 = 255;
  do
  {
    if (v3 > v10)
    {
      v15 = (*a2 + v11 + a2[3] * v5);
      v16 = v13;
      do
      {
        v18 = *v15++;
        v17 = v18;
        if (v14 >= v18)
        {
          v14 = v17;
        }

        if (v9 <= v17)
        {
          v9 = v17;
        }

        --v16;
      }

      while (v16);
      v8 += v12;
    }

    ++v5;
  }

  while (v5 != v4);
  if (v8)
  {
    return (v9 - v14);
  }

  else
  {
    return 0;
  }
}

void FKThresholdMinMaxBlock(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v5 = a2;
  v197 = *MEMORY[0x1E69E9840];
  v6 = a2[2] + 3;
  v7 = v6 >> 2;
  v179 = a2[1];
  v8 = ((v179 + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL;
  v9 = malloc_type_malloc(v8 * (v6 & 0xFFFFFFFFFFFFFFFCLL), 0x100004052888210uLL);
  v181 = v5;
  v173 = v9;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = v5[2];
    v13 = (v12 >> 2) & 0x3FFFFFFFFFFFFFFCLL;
    v186 = v12;
    v14 = v12 & 0xF;
    do
    {
      v15 = 0;
      v189 = v11;
      v191 = v10;
      v16 = &v9[4 * v11 * v7];
      v193 = &v16[4 * v7];
      v194 = v16;
      memset(v195, 0, 64);
      v18 = *v5;
      v17 = v5[1];
      v19 = v5[3];
      do
      {
        if (v17 <= v10)
        {
          v20 = v17 - 1;
        }

        else
        {
          v20 = v10;
        }

        *(v195 + v15) = v18 + v20 * v19;
        v15 += 8;
        ++v10;
      }

      while (v15 != 64);
      if (v186 >= 0x10)
      {
        v21 = 0;
        do
        {
          v22 = v195;
          v23 = &v194;
          v24 = 1;
          do
          {
            v25 = 0;
            v26 = v24;
            do
            {
              v27 = *(v22 + v25);
              v196[v25] = *v27;
              *(v22 + v25++) = v27 + 1;
            }

            while (v25 != 4);
            v24 = 0;
            v28 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v196[1]), v196[0]), v196[2]), v196[3]);
            v29.i64[0] = vpaddq_s16(v28, v28).u64[0];
            v29.i64[1] = v29.i64[0];
            v30 = vminq_u8(vminq_u8(vminq_u8(v196[0], v196[1]), v196[2]), v196[3]);
            v31 = vmaxq_u8(vmaxq_u8(vmaxq_u8(v196[0], v196[1]), v196[2]), v196[3]);
            v32 = vpminq_u8(v30, v30);
            v31.i64[0] = vpmaxq_u8(v31, v31).u64[0];
            *v32.i8 = vzip1_s8(vpmin_u8(*v32.i8, *v32.i8), vpmax_u8(*v31.i8, *v31.i8));
            *&(*v23)[4 * v21] = vzip1q_s16(v32, v29);
            v23 = &v193;
            v22 = &v195[2];
          }

          while ((v26 & 1) != 0);
          v21 += 4;
        }

        while (v13 > v21);
      }

      if (v14)
      {
        v33 = 0;
        v34 = 0;
        v36 = *(&v195[0] + 1);
        v35 = *&v195[0];
        v38 = *(&v195[1] + 1);
        v37 = *&v195[1];
        v40 = *(&v195[2] + 1);
        v39 = *&v195[2];
        v42 = *(&v195[3] + 1);
        v41 = *&v195[3];
        do
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v48 = 255;
          v49 = 255;
          do
          {
            if (v33 + v43 >= v14)
            {
              break;
            }

            v50 = *(v35 + v43);
            if (v49 >= v50)
            {
              v49 = *(v35 + v43);
            }

            if (v44 <= v50)
            {
              v44 = *(v35 + v43);
            }

            v51 = v47 + v50;
            v52 = *(v36 + v43);
            if (v49 >= v52)
            {
              v49 = *(v36 + v43);
            }

            if (v44 <= v52)
            {
              v44 = *(v36 + v43);
            }

            v53 = *(v37 + v43);
            if (v49 >= v53)
            {
              v49 = *(v37 + v43);
            }

            if (v44 <= v53)
            {
              v44 = *(v37 + v43);
            }

            v54 = v52 + v53;
            v55 = *(v38 + v43);
            v56 = v51 + v54;
            if (v49 >= v55)
            {
              v49 = *(v38 + v43);
            }

            if (v44 <= v55)
            {
              v44 = *(v38 + v43);
            }

            v47 = v56 + v55;
            v57 = *(v39 + v43);
            if (v48 >= v57)
            {
              v58 = *(v39 + v43);
            }

            else
            {
              v58 = v48;
            }

            if (v45 <= v57)
            {
              v59 = *(v39 + v43);
            }

            else
            {
              v59 = v45;
            }

            v60 = v46 + v57;
            v61 = *(v40 + v43);
            if (v58 >= v61)
            {
              v58 = *(v40 + v43);
            }

            if (v59 <= v61)
            {
              v59 = *(v40 + v43);
            }

            v62 = *(v41 + v43);
            if (v58 >= v62)
            {
              v58 = *(v41 + v43);
            }

            v63 = v59 <= v62 ? *(v41 + v43) : v59;
            v64 = v60 + v61 + v62;
            v65 = *(v42 + v43);
            v48 = v58 >= v65 ? *(v42 + v43) : v58;
            v45 = v63 <= v65 ? *(v42 + v43) : v63;
            v46 = v64 + v65;
            ++v43;
          }

          while (v43 != 4);
          v42 += v43;
          v41 += v43;
          v40 += v43;
          v39 += v43;
          v38 += v43;
          v37 += v43;
          v36 += v43;
          v35 += v43;
          v66 = &v16[4 * v34 + 4 * v13];
          *v66 = v49;
          v66[1] = v44;
          *(v66 + 1) = v47;
          v67 = &v16[4 * v7 + 4 * v34 + 4 * v13];
          *v67 = v48;
          *(v67 + 1) = v45;
          *(v67 + 2) = v46;
          ++v34;
          v33 += 4;
        }

        while (v34 != (v14 + 3) >> 2);
      }

      v11 = v189 + 2;
      v10 = v191 + 8;
      v5 = v181;
      v9 = v173;
    }

    while ((((v179 + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) > v189 + 2);
  }

  v68 = *(a1 + 28);
  v69 = *(a1 + 32);
  v70 = v68 + 62;
  if (v68 >= -31)
  {
    v71 = v68 + 31;
  }

  else
  {
    v71 = v68 + 62;
  }

  v72 = v71 >> 5;
  v177 = v71 >> 5;
  v73 = v69 + 31;
  v74 = v69 + 62;
  if (v69 < -31)
  {
    v73 = v69 + 62;
  }

  v75 = v73 >> 5;
  v76 = malloc_type_malloc(2 * v72 * (v73 >> 5), 0x1000040BDFB0063uLL);
  if (v74 >= 0x3F)
  {
    v78 = 0;
    v79 = a5 + 8;
    if (v177 <= 1)
    {
      v80 = 1;
    }

    else
    {
      v80 = v177;
    }

    if (v75 <= 1)
    {
      v81 = 1;
    }

    else
    {
      v81 = v75;
    }

    do
    {
      if (v70 >= 0x3F)
      {
        v82 = 0;
        v83 = -a5;
        do
        {
          if (v79 <= -a5)
          {
            v84 = 0;
            v87 = 255;
          }

          else
          {
            v84 = 0;
            v85 = 0;
            v86 = 0;
            v87 = 255;
            v88 = -a5;
            do
            {
              v89 = (v88 + 8 * v78);
              v90 = &v9[4 * v7 * v89];
              v92 = (v89 & 0x80000000) != 0 || (v179 + 3) >> 2 <= v89;
              v93 = v83;
              v94 = 2 * a5 + 8;
              do
              {
                v95 = v93 < 0 || v92;
                if ((v95 & 1) == 0 && v7 > v93)
                {
                  v96 = &v90[4 * v93];
                  v97 = *v96;
                  v98 = v96[1];
                  v99 = *(v96 + 1);
                  if (v87 >= v97)
                  {
                    v87 = v97;
                  }

                  if (v84 <= v98)
                  {
                    v84 = v98;
                  }

                  v85 += v99;
                  ++v86;
                }

                ++v93;
                --v94;
              }

              while (v94);
              ++v88;
            }

            while (v88 != v79);
            v77 = v85 / (16 * v86);
          }

          v77 = (v77 + ((v84 + v87 + 1) >> 1) + ((v77 + ((v84 + v87 + 1) >> 1)) >> 31)) >> 1;
          v100 = &v76[2 * v78 * v177 + 2 * v82];
          *v100 = v77;
          v100[1] = v84 - v87;
          ++v82;
          v83 += 8;
        }

        while (v82 != v80);
      }

      ++v78;
    }

    while (v78 != v81);
  }

  v170 = v76;
  v101 = v5[1];
  v102 = a4;
  if (v101)
  {
    v103 = 0;
    v104 = v5[2];
    v105 = v104 >> 5;
    v172 = v104;
    v175 = v104 & 0xFFFFFFFFFFFFFFE0;
    v176 = v104 >> 5;
    v171 = v104 & 0xFFFFFFFFFFFFFFE0 | 1;
    v106 = 1;
    *&v107 = 0x202020202020202;
    *(&v107 + 1) = 0x202020202020202;
    v108.i64[0] = 0x101010101010101;
    v108.i64[1] = 0x101010101010101;
    v109 = v76;
    while (1)
    {
      memset(&v196[0].u64[1], 0, 248);
      v110 = v5[3];
      v111 = *v5 + v110 * v103;
      v112 = *(a1 + 200);
      v113 = *(a1 + 224);
      memset(v195 + 8, 0, 248);
      *&v195[0] = v112 + v113 * v103;
      v178 = v106;
      v114 = v112 + v113 * v106;
      v115 = 1;
      v196[0].i64[0] = v111;
      do
      {
        if (v101 <= v103 + v115)
        {
          v116 = 0;
        }

        else
        {
          v116 = v110;
        }

        v111 += v116;
        v196[0].i64[v115] = v111;
        *(v195 + v115++) = v114;
        v114 += v113;
      }

      while (v115 != 32);
      v180 = v103;
      if (v172 >= 0x20)
      {
        v117 = 0;
        v118 = 1;
        v119 = v109;
        do
        {
          v120 = 32 * v117;
          if (*(v119 + 1) >= v102)
          {
            v123 = 0;
            v124 = vld1q_dup_s8(v119);
            do
            {
              v125 = (v196[0].i64[v123] + v120);
              v126 = (*(v195 + v123 * 8) + v120);
              *v126 = vandq_s8(vcgeq_u8(*v125, v124), v108);
              v126[1] = vandq_s8(vcgeq_u8(v125[1], v124), v108);
              ++v123;
            }

            while (v123 != 32);
            if (!a3)
            {
              goto LABEL_136;
            }

            v127 = 0;
            v128 = 0;
            v129 = 0;
            do
            {
              v130 = *(v195 + v127);
              v129 += *(v130 + 32 * v117);
              v131 = (v130 + v118);
              v132 = 31;
              do
              {
                v133 = *v131;
                v129 += v133;
                if (v133 != *(v131 - 1))
                {
                  ++v128;
                }

                ++v131;
                --v132;
              }

              while (v132);
              ++v127;
            }

            while (v127 != 32);
            if (v129 >= 1024 - v129)
            {
              v129 = 1024 - v129;
            }

            if (!v129)
            {
              goto LABEL_136;
            }

            v134 = 0;
            v135 = 0;
            do
            {
              v136 = v195 + 1;
              v137 = 31;
              do
              {
                if (*(*v136 + v134 + v120) != *(*(v136 - 1) + v134 + v120))
                {
                  ++v135;
                }

                ++v136;
                --v137;
              }

              while (v137);
              ++v134;
            }

            while (v134 != 32);
            v138 = v135 + v128;
            v139 = v138;
            if (v129 >= 10)
            {
              if (v138 <= 450 && (v139 / v129) <= 2.5)
              {
                goto LABEL_136;
              }

LABEL_134:
              for (i = 0; i != 256; i += 8)
              {
                v141 = (*(v195 + i) + v120);
                *v141 = v107;
                v141[1] = v107;
              }

              goto LABEL_136;
            }

            if ((v139 / v129) > 3.0)
            {
              goto LABEL_134;
            }
          }

          else
          {
            for (j = 0; j != 256; j += 8)
            {
              v122 = (*(v195 + j) + v120);
              *v122 = v107;
              v122[1] = v107;
            }
          }

LABEL_136:
          v119 += 2;
          ++v117;
          v118 += 32;
        }

        while (v117 != v105);
      }

      v183 = v109;
      v142 = v5[2];
      v190 = v142 - v175;
      if (v142 != v175)
      {
        v143 = v190 + 31;
        if (v190 + 31 >= 0x20)
        {
          break;
        }
      }

LABEL_182:
      v5 = v181;
      v109 = &v183[2 * v177];
      v103 = v180 + 32;
      v101 = v181[1];
      v106 = v178 + 32;
      v105 = v176;
      if (v101 <= v180 + 32)
      {
        goto LABEL_183;
      }
    }

    v144 = v175;
    v187 = v143 & 0xFFFFFFFFFFFFFFE0;
    v188 = v176 + (v143 >> 5);
    v145 = (v143 & 0xFFFFFFFFFFFFFFE0) - v190;
    v146 = v171;
    v147 = v176;
    v148 = &v109[2 * v176];
    while (1)
    {
      v192 = v148;
      if (v148[1] >= v102)
      {
        v151 = 0;
        v152 = *v148;
        do
        {
          v153 = v144;
          v154 = 32;
          do
          {
            if (v153 >= v142)
            {
              break;
            }

            *(*(v195 + v151) + v153) = *(v196[0].i64[v151] + v153) >= v152;
            ++v153;
            --v154;
          }

          while (v154);
          ++v151;
        }

        while (v151 != 32);
        if (!a3)
        {
          goto LABEL_178;
        }

        v155 = 0;
        v156 = 0;
        v157 = 0;
        do
        {
          v158 = *(v195 + v155);
          v157 += *(v158 + 32 * v147);
          v159 = (v158 + v146);
          v160 = 31;
          do
          {
            v161 = *v159;
            v157 += v161;
            if (v161 != *(v159 - 1))
            {
              ++v156;
            }

            ++v159;
            --v160;
          }

          while (v160);
          ++v155;
        }

        while (v155 != 32);
        if (v157 >= 1024 - v157)
        {
          v157 = 1024 - v157;
        }

        if (!v157)
        {
          goto LABEL_178;
        }

        v162 = 0;
        v163 = 0;
        do
        {
          v164 = v195 + 1;
          v165 = 31;
          do
          {
            if (*(*v164 + v162 + 32 * v147) != *(*(v164 - 1) + v162 + 32 * v147))
            {
              ++v163;
            }

            ++v164;
            --v165;
          }

          while (v165);
          ++v162;
        }

        while (v162 != 32);
        v166 = (v163 + v156);
        if (v157 >= 10)
        {
          if (v163 + v156 > 450 || (v166 / v157) > 2.5)
          {
LABEL_173:
            for (k = 0; k != 32; ++k)
            {
              for (m = 0; m != 32; ++m)
              {
                if (v144 + m >= v142)
                {
                  break;
                }

                *(*(v195 + k) + v144 + m) = 2;
              }
            }
          }
        }

        else if ((v166 / v157) > 3.0)
        {
          goto LABEL_173;
        }
      }

      else
      {
        for (n = 0; n != 32; ++n)
        {
          for (ii = 0; ii != 32; ++ii)
          {
            if (v144 + ii >= v142)
            {
              break;
            }

            *(*(v195 + n) + v144 + ii) = 2;
          }
        }
      }

LABEL_178:
      if (v187 != v190)
      {
        for (jj = 0; jj != 256; jj += 8)
        {
          memset((*(v195 + jj) + v142), *(*(v195 + jj) + v142 - 1), v145);
        }
      }

      v148 = v192 + 2;
      ++v147;
      v144 += 32;
      v146 += 32;
      v102 = a4;
      *&v107 = 0x202020202020202;
      *(&v107 + 1) = 0x202020202020202;
      v108.i64[0] = 0x101010101010101;
      v108.i64[1] = 0x101010101010101;
      if (v147 >= v188)
      {
        goto LABEL_182;
      }
    }
  }

LABEL_183:
  free(v170);

  free(v173);
}