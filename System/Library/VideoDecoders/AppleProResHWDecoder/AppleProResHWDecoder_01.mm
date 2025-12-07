uint64_t decodeSliceTask(int *a1)
{
  if (a1[7] >= 1)
  {
    v2 = a1[6];
    v3 = *a1;
    v4 = *(a1 + 2);
    do
    {
      decodeSlice(v3, *(a1 + 1), v4);
      v4 = *(a1 + 2);
      v3 += *(*(v4 + 40) + 2 * v2++);
    }

    while (v2 < a1[7] + a1[6]);
  }

  pthread_mutex_lock(*(a1 + 7));
  v5 = *(a1 + 5);
  v6 = *v5 + 1;
  *v5 = v6;
  if (v6 == a1[8])
  {
    pthread_cond_signal(*(a1 + 6));
  }

  pthread_mutex_unlock(*(a1 + 7));
  MEMORY[0x277CAF790](a1, 0x1030C40C3C8D92FLL);
  return 0;
}

void ProResHWAnalyzer::ProResHWAnalyzer(ProResHWAnalyzer *this, int a2, int a3, int a4)
{
  *(this + 1) = 0;
  *(this + 6) = a3;
  *(this + 7) = a2;
  operator new[]();
}

void ProResHWAnalyzer::~ProResHWAnalyzer(ProResHWAnalyzer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    ThreadPool::~ThreadPool(v2);
    MEMORY[0x277CAF790]();
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x277CAF770](v3, 0x1000C8077774924);
  }
}

uint64_t ProResHWAnalyzer::parseProResPicture(ThreadPool **a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5, char a6)
{
  v9 = 0;
  v36 = *MEMORY[0x277D85DE8];
  *a4 = *a2 >> 3;
  *(a4 + 1) = bswap32(*(a2 + 1));
  v10 = (*(a2 + 7) >> 4) & 3;
  a4[8] = (*(a2 + 7) >> 4) & 3;
  v11 = *(a3 + 8) >> (*(a3 + 11) != 0);
  v12 = (*(a3 + 6) + 15) >> 4;
  *(a4 + 3) = v11;
  *(a4 + 4) = v12;
  *(a4 + 5) = (v11 + 15) >> 4;
  v13 = 1 << v10;
  do
  {
    if (v12 >= v13)
    {
      v14 = &a4[v9 + 48];
      do
      {
        *v14++ = v13;
        v12 -= v13;
        ++v9;
      }

      while (v12 >= v13);
    }

    v13 >>= 1;
  }

  while (v12);
  *(a4 + 6) = v9;
  v15 = a2 + *a4;
  v16 = *(a1 + 6);
  if (v16)
  {
    v17 = *(a4 + 5);
    v18 = *(a1 + 6);
    v19 = (a2 + *a4);
    do
    {
      v20 = *v19++;
      *v17++ = bswap32(v20) >> 16;
      --v18;
    }

    while (v18);
  }

  if (a5)
  {
    v21 = v15 + (2 * v16);
    if (a1[1])
    {
      pthread_cond_init(&v35, 0);
      pthread_mutex_init(&v34, 0);
      if (*(a1 + 6))
      {
        operator new();
      }

      pthread_mutex_lock(&v34);
      gettimeofday(&v28, 0);
      v29.tv_sec = v28.tv_sec + 3;
      v29.tv_nsec = 1000 * v28.tv_usec;
      if (*(a4 + 5))
      {
        do
        {
          v22 = pthread_cond_timedwait(&v35, &v34, &v29);
          if (*(a4 + 5))
          {
            v23 = v22 == 0;
          }

          else
          {
            v23 = 0;
          }
        }

        while (v23);
        v24 = v22;
        pthread_mutex_unlock(&v34);
        if (v24 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v25 = *a1;
          *buf = 67109378;
          v31 = v25;
          v32 = 2080;
          v33 = "parseProResPicture";
          _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: threadpool couldn't complete task", buf, 0x12u);
        }
      }

      else
      {
        pthread_mutex_unlock(&v34);
      }

      pthread_cond_destroy(&v35);
      pthread_mutex_destroy(&v34);
    }

    else if (v16)
    {
      v26 = 0;
      do
      {
        decodeSlice(v21, a3, a4);
        v21 += *(*(a4 + 5) + 2 * v26++);
      }

      while (v26 < *(a1 + 6));
    }
  }

  return 0;
}

uint64_t ProResHWAnalyzer::parseProResFrame(ThreadPool **a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *a3 = bswap32(*a2);
  v5 = bswap32(*(a2 + 8)) >> 16;
  *(a3 + 4) = v5;
  *(a3 + 6) = bswap32(*(a2 + 16)) >> 16;
  *(a3 + 8) = bswap32(*(a2 + 18)) >> 16;
  *(a3 + 10) = *(a2 + 20) >> 6;
  *(a3 + 11) = (*(a2 + 20) >> 2) & 3;
  v6 = *(a2 + 27);
  *(a3 + 12) = (v6 & 2) != 0;
  if ((v6 & 2) != 0)
  {
    v7 = *(a2 + 28);
  }

  else
  {
    v7 = 4;
  }

  *(a3 + 13) = v7;
  ProResHWAnalyzer::parseProResPicture(a1, a2 + 8 + v5, a3, (a3 + 16), a4, a5);
  return 0;
}

uint64_t findIndexPow3below(unsigned int a1, unsigned __int16 *a2)
{
  if (a2[1] >= a1)
  {
    return 0;
  }

  if (a2[2] >= a1)
  {
    return 1;
  }

  if (a2[3] >= a1)
  {
    return 2;
  }

  if (a2[4] >= a1)
  {
    return 3;
  }

  if (a2[5] >= a1)
  {
    return 4;
  }

  if (a2[6] >= a1)
  {
    return 5;
  }

  return 6;
}

uint64_t extractEstSizeFromIndex(_WORD *a1, int a2)
{
  v2 = 0;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v3 = a1[8] + *a1;
        v4 = a1[16];
        return (v3 + v4);
      case 1:
        v3 = a1[9] + a1[1];
        v4 = a1[17];
        return (v3 + v4);
      case 2:
        v3 = a1[10] + a1[2];
        v4 = a1[18];
        return (v3 + v4);
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v3 = a1[11] + a1[3];
        v4 = a1[19];
      }

      else
      {
        v3 = a1[12] + a1[4];
        v4 = a1[20];
      }

      return (v3 + v4);
    }

    if (a2 == 5)
    {
      v3 = a1[13] + a1[5];
      v4 = a1[21];
      return (v3 + v4);
    }

    if (a2 == 6)
    {
      v3 = a1[14] + a1[6];
      v4 = a1[22];
      return (v3 + v4);
    }
  }

  return v2;
}

uint64_t ProResHWAnalyzer::interpolateSize(uint64_t a1, __int128 *a2, int a3, int a4, int a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v26[0] = a3;
  for (i = 1; i != 7; ++i)
  {
    a3 *= 3;
    v26[i] = a3;
  }

  v8 = qScale[a4];
  if (v26[1] >= v8)
  {
    v9 = 0;
  }

  else if (v26[2] >= v8)
  {
    v9 = 1;
  }

  else if (v26[3] >= v8)
  {
    v9 = 2;
  }

  else if (v26[4] >= v8)
  {
    v9 = 3;
  }

  else if (v26[5] >= v8)
  {
    v9 = 4;
  }

  else if (v26[6] >= v8)
  {
    v9 = 5;
  }

  else
  {
    v9 = 6;
  }

  v10 = v9 + 1;
  v11 = a2[1];
  v23 = *a2;
  v24 = v11;
  v25 = a2[2];
  v12 = extractEstSizeFromIndex(&v23, v9);
  v13 = a2[1];
  v23 = *a2;
  v24 = v13;
  v25 = a2[2];
  v14 = extractEstSizeFromIndex(&v23, v9 + 1);
  switch(a5)
  {
    case 0:
      v22 = v26[v9];
      v21 = v12 + ((-(v12 - v14) / (v22 - v26[v10])) * (v22 - v8));
      return v21;
    case 1:
      v17 = (v12 - v14);
      LOWORD(v15) = v26[v9];
      *&v18 = log(v15);
      v19 = *&v18;
      LOWORD(v18) = v26[v10];
      v20 = v19 - log(v18);
      v21 = v12 - (v17 / v20) * (v19 - log(v8));
      return v21;
    case 2:
      return v12;
    default:
      return 0;
  }
}

uint64_t ProResHWAnalyzer::getEstimatedSizeForSlice(ProResHWAnalyzer *this, unsigned __int8 *a2, int a3, int a4, int a5)
{
  v5 = &a2[48 * a3];
  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v8[2] = v5[2];
  return ProResHWAnalyzer::interpolateSize(this, v8, a4, a5, 1);
}

void ProResHWAnalyzer::findMinMaxlastNZPos(uint64_t this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned int a5)
{
  if ((a5 & 7) != 0)
  {
    ProResHWAnalyzer::findMinMaxlastNZPos();
  }

  *a3 = -1;
  *a4 = 0;
  if (a5)
  {
    v5 = a5 >> 3;
    if (a5 >> 3 <= 1)
    {
      v5 = 1;
    }

    v6 = vdupq_n_s64(0x3FuLL);
    do
    {
      v7 = *a3;
      v8 = *a2;
      v9 = (*a2 >> 6) & 0x3FLL;
      if ((*a2 & 0x3FuLL) < v9)
      {
        v9 = *a2 & 0x3FLL;
      }

      if (((v8 >> 12) & 0x3F) >= ((v8 >> 18) & 0x3F))
      {
        v10 = (v8 >> 18) & 0x3F;
      }

      else
      {
        v10 = (v8 >> 12) & 0x3F;
      }

      if (v9 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      v12 = vdupq_n_s64(v8);
      v13 = vandq_s8(vshlq_u64(v12, xmmword_277819A00), v6);
      v14 = vandq_s8(vshlq_u64(v12, xmmword_277819A10), v6);
      v15 = vbslq_s8(vcgtq_u64(v14, v13), v13, v14);
      if (v15.i64[0] >= v15.i64[1])
      {
        v16 = v15.u64[1];
        if (v11 >= v15.i64[1])
        {
LABEL_16:
          if (v16 > v7)
          {
            goto LABEL_30;
          }

          if (v9 < v10)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v16 = v15.i64[0];
        if (v11 >= v15.i64[0])
        {
          goto LABEL_16;
        }
      }

      if (v9 < v10)
      {
        if (v9 > v7)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      if (v10 > v7)
      {
        goto LABEL_30;
      }

LABEL_24:
      v9 = v10;
LABEL_25:
      if (v15.i64[0] >= v15.i64[1])
      {
        LOBYTE(v7) = v15.i8[8];
        if (v9 >= v15.i64[1])
        {
          goto LABEL_30;
        }

LABEL_29:
        LOBYTE(v7) = v11;
        goto LABEL_30;
      }

      LOBYTE(v7) = v15.i8[0];
      if (v9 < v15.i64[0])
      {
        goto LABEL_29;
      }

LABEL_30:
      *a3 = v7;
      v17 = *a4;
      v18 = *a2;
      v19 = (*a2 >> 6) & 0x3FLL;
      if ((*a2 & 0x3FuLL) > v19)
      {
        v19 = *a2 & 0x3FLL;
      }

      if (((v18 >> 12) & 0x3F) <= ((v18 >> 18) & 0x3F))
      {
        v20 = (v18 >> 18) & 0x3F;
      }

      else
      {
        v20 = (v18 >> 12) & 0x3F;
      }

      if (v19 <= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      v22 = vdupq_n_s64(v18);
      v23 = vdupq_n_s64(0x3FuLL);
      v24 = vandq_s8(vshlq_u64(v22, xmmword_277819A00), v23);
      v25 = vandq_s8(vshlq_u64(v22, xmmword_277819A10), v23);
      v26 = vbslq_s8(vcgtq_u64(v24, v25), v24, v25);
      if (v26.i64[0] <= v26.i64[1])
      {
        v27 = v26.u64[1];
        if (v21 > v26.i64[1])
        {
LABEL_44:
          if (v19 > v20)
          {
            if (v19 < v17)
            {
              goto LABEL_54;
            }

            goto LABEL_49;
          }

          if (v20 < v17)
          {
            goto LABEL_54;
          }

LABEL_48:
          v19 = v20;
          goto LABEL_49;
        }
      }

      else
      {
        v27 = v26.i64[0];
        if (v21 > v26.i64[0])
        {
          goto LABEL_44;
        }
      }

      if (v27 < v17)
      {
        goto LABEL_54;
      }

      if (v19 <= v20)
      {
        goto LABEL_48;
      }

LABEL_49:
      if (v26.i64[0] > v26.i64[1])
      {
        LOBYTE(v17) = v26.i8[0];
        if (v19 <= v26.i64[0])
        {
          goto LABEL_54;
        }

LABEL_53:
        LOBYTE(v17) = v21;
        goto LABEL_54;
      }

      LOBYTE(v17) = v26.i8[8];
      if (v19 > v26.i64[1])
      {
        goto LABEL_53;
      }

LABEL_54:
      *a4 = v17;
      a2 += 6;
      --v5;
    }

    while (v5);
  }
}

void ProResHWAnalyzer::parseHWStats(uint64_t result, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, int a6, int a7, int a8, char a9, char a10)
{
  v14 = 0;
  *(a2 + 4) = 148;
  *(a2 + 6) = a7;
  *(a2 + 8) = a8;
  *(a2 + 10) = a9;
  *(a2 + 11) = 256;
  *(a2 + 13) = 4;
  *(a2 + 16) = 8;
  *(a2 + 24) = a10;
  v15 = (a7 + 15) >> 4;
  *(a2 + 28) = a8;
  *(a2 + 32) = v15;
  v16 = 1 << a10;
  *(a2 + 36) = (a8 + 15) >> 4;
  do
  {
    if (v15 >= v16)
    {
      v17 = (a2 + 64 + v14);
      do
      {
        *v17++ = v16;
        v15 -= v16;
        ++v14;
      }

      while (v15 >= v16);
    }

    v16 >>= 1;
  }

  while (v15);
  *(a2 + 40) = v14;
  if (a6 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = a4;
    do
    {
      v21 = ((*a3 >> 34) & 0x1FFF) + ((*(a3 + 20) >> 34) & 0x1FFF) + ((a3[5] >> 34) & 0x1FFF) + 6;
      v22 = *(a2 + 48);
      *(*(a2 + 56) + 2 * v18) = v21;
      v19 += v21;
      *(v22 + v18) = *(a5 + v18);
      v23 = *v20;
      v20 += 56;
      *(*(a2 + 336) + v18) = ((v23 + (v23 >> 15)) >> 8) ^ 0x80;
      ProResHWAnalyzer::findMinMaxlastNZPos(result, a4 + 2, (*(a2 + 320) + v18), (*(a2 + 328) + v18), 0x20u);
      a3 = (a3 + 60);
      ++v18;
      a4 = v20;
    }

    while (a6 != v18);
  }

  v24 = v19 + 2 * a6;
  *(a2 + 20) = v24 + 8;
  *a2 = v24 + 164;
}

uint64_t ProResHWAnalyzer::analyzeProResFrame(uint64_t a1, uint64_t a2, SliceList *this, unsigned __int8 *a4)
{
  v8 = 0;
  v9 = *(a1 + 16);
  LOBYTE(v10) = 1;
  do
  {
    v11 = v10;
    v12 = (this + 72 * v8 + 8);
    v10 = 3;
    do
    {
      *v12 = *(v12 - 1);
      v12 += 3;
      --v10;
    }

    while (v10);
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  if (*(a2 + 28) == 16 * *(a2 + 36))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 40);
  }

  if (*(a1 + 24) == v13)
  {
    LODWORD(v14) = 0;
    v15 = 0;
    goto LABEL_42;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = *(a2 + 40);
    v17 = v14 / v16;
    v18 = v14 % v16;
    if ((v14 / v16) <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v14 / v16;
    }

    if (*(a2 + 36) - 1 > v17)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = *(a2 + 36) - 1;
    }

    if (v18 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v14 % v16;
    }

    if (v16 - 1 > v18)
    {
      v22 = v18 + 1;
    }

    else
    {
      v22 = v16 - 1;
    }

    if (*(a1 + 28) == 1)
    {
      v23 = *(a2 + 344);
      v24 = *(v23 + 2 * v14);
      if (v24 < 0x7D0)
      {
        goto LABEL_25;
      }

      if (v24 > 0xF9F)
      {
        goto LABEL_39;
      }

      if (*(v23 + 2 * (v18 + (v19 - 1) * v16)) < 0x190u || *(v23 + 2 * (v18 + v20 * v16)) < 0x190u || (v28 = v17 * v16, *(v23 + 2 * (v21 + v28 - 1)) < 0x190u))
      {
LABEL_25:
        v25 = 1;
      }

      else
      {
        v25 = *(v23 + 2 * (v28 + v22)) < 0x190u;
      }

      if (*(*(a2 + 48) + v14) > *a4 && v25)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = *(*(a2 + 320) + v14);
      if (v26 <= 7)
      {
        v24 = *(*(a2 + 328) + v14) - v26;
        if (v24 >= 33 && *(*(a2 + 336) + v14) >= 0x81u && *(*(a2 + 48) + v14) > *a4)
        {
LABEL_33:
          *(v9 + v14) = 1;
          SliceList::add(this, v14, v24, 0, 0);
          v27 = (*(*(a2 + 56) + 2 * v14) - 6) * GAMMA[*(*(a2 + 48) + v14)] / GAMMA[*a4] + 6;
          goto LABEL_40;
        }
      }
    }

LABEL_39:
    *(v9 + v14) = 0;
    v27 = *(*(a2 + 56) + 2 * v14);
LABEL_40:
    v15 += v27;
    ++v14;
  }

  while (v14 < *(a1 + 24) - v13);
  v13 = *(a1 + 24);
LABEL_42:
  if (v14 >= v13)
  {
    v30 = v13;
  }

  else
  {
    v29 = v14;
    do
    {
      *(v9 + v29) = 0;
      v15 += *(*(a2 + 56) + 2 * v29++);
      v30 = *(a1 + 24);
    }

    while (v29 < v30);
    v13 = *(a1 + 24);
  }

  v31 = v15 + 2 * v13 + 8;
  memcpy((*(a1 + 16) + v30), *(a1 + 16), v30);
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  if (v33)
  {
    v34 = 0;
    while (1)
    {
      v35 = *(a2 + 40);
      v36 = v34 / v35;
      v37 = v34 % v35;
      if ((v34 / v35) <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v34 / v35;
      }

      if (*(a2 + 36) - 1 > v36)
      {
        v39 = v36 + 1;
      }

      else
      {
        v39 = *(a2 + 36) - 1;
      }

      if (v37 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v34 % v35;
      }

      if (v35 - 1 > v37)
      {
        v41 = v37 + 1;
      }

      else
      {
        v41 = v35 - 1;
      }

      if (!v32[v34])
      {
        v42 = v37 + (v38 - 1) * v35;
        v43 = v37 + v39 * v35;
        v44 = v36 * v35;
        v45 = v40 + v44 - 1;
        v46 = v44 + v41;
        if (*(a1 + 28) == 1)
        {
          if ((v32[v43] + v32[v42] + v32[v45]) | v32[v46])
          {
            v47 = *(*(a2 + 344) + 2 * v34);
            if (v47 >> 3 <= 0x270)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          v47 = *(*(a2 + 328) + v34) - *(*(a2 + 320) + v34);
          if (v47 >= 9 && *(*(a2 + 336) + v34) >= 0x21u && (v32[v43] + v32[v42] + v32[v45]) | v32[v46])
          {
LABEL_71:
            if (*(*(a2 + 48) + v34) > *a4)
            {
              SliceList::add(this, v34, v47, 0, 1u);
              v48 = *(*(a2 + 56) + 2 * v34);
              v31 = (v31 - v48 + (v48 - 6) * GAMMA[*(*(a2 + 48) + v34)] / GAMMA[*a4] + 6);
              v32[(v34 + *(a1 + 24))] = 1;
              v33 = *(a1 + 24);
            }
          }
        }
      }

      if (++v34 >= v33)
      {
        v32 = *(a1 + 16);
        goto LABEL_74;
      }
    }
  }

  v33 = 0;
LABEL_74:
  memcpy(v32, &v32[v33], v33);
  v49 = *(a1 + 24);
  if (!v49)
  {
    return v31;
  }

  v50 = 0;
  v51 = *(a1 + 16);
  while (2)
  {
    if (!*(v51 + v50))
    {
      v52 = *(a2 + 40);
      v53 = *(a2 + 36) - 1;
      v54 = v50 / v52;
      if (v53 > v50 / v52)
      {
        v53 = v54 + 1;
      }

      if (v54 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = v50 / v52;
      }

      v56 = *(v51 + (v50 % v52 + v53 * v52)) | *(v51 + (v50 % v52 + (v55 - 1) * v52));
      if (v56)
      {
        v56 = *(*(a2 + 48) + v50) >= *a4;
      }

      if (*(a1 + 28) == 1)
      {
        v57 = *(*(a2 + 344) + 2 * v50);
        if (!v56)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v57 = *(*(a2 + 328) + v50) - *(*(a2 + 320) + v50);
        if (!v56)
        {
          goto LABEL_89;
        }
      }

      SliceList::add(this, v50, v57, 0, 1u);
      v58 = *(*(a2 + 56) + 2 * v50);
      v31 = (v31 - v58 + (v58 - 6) * GAMMA[*(*(a2 + 48) + v50)] / GAMMA[*a4] + 6);
      *(v51 + (v50 + *(a1 + 24))) = 1;
      v49 = *(a1 + 24);
    }

LABEL_89:
    if (++v50 < v49)
    {
      continue;
    }

    break;
  }

  if (v49)
  {
    v59 = 0;
    v60 = *(a1 + 16) + v49;
    do
    {
      if (!*(v60 + v59))
      {
        if (*(a1 + 28) == 1)
        {
          v61 = *(*(a2 + 344) + 2 * v59);
        }

        else
        {
          v61 = *(*(a2 + 328) + v59) - *(*(a2 + 320) + v59);
        }

        SliceList::add(this, v59, v61, 0, 2u);
        v49 = *(a1 + 24);
      }

      ++v59;
    }

    while (v59 < v49);
  }

  return v31;
}

void SliceList::add(SliceList *this, int a2, int a3, int a4, unsigned int a5)
{
  v5 = this + 72 * a4 + 24 * a5;
  v6 = a3 | (a2 << 16);
  v8 = *(v5 + 1);
  v7 = *(v5 + 2);
  if (v8 >= v7)
  {
    v10 = (v8 - *v5) >> 2;
    if ((v10 + 1) >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - *v5;
    v12 = v11 >> 1;
    if (v11 >> 1 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(this + 72 * a4 + 24 * a5, v13);
    }

    v14 = (4 * v10);
    *v14 = v6;
    v9 = 4 * v10 + 4;
    v15 = *(v5 + 1) - *v5;
    v16 = v14 - v15;
    memcpy(v14 - v15, *v5, v15);
    v17 = *v5;
    *v5 = v16;
    *(v5 + 1) = v9;
    *(v5 + 2) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(v5 + 1) = v9;
}

uint64_t ProResHWAnalyzer::getSliceToFix(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  *a6 = 0;
  v12 = *a3;
  bzero(*(a1 + 16), (2 * *(a1 + 24)));
  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = 0;
    v15 = *(a1 + 16);
    do
    {
      v16 = *(a5 + 2 * v14);
      v17 = *(*(a4 + 56) + 2 * v16) - *(*(a3 + 7) + 2 * v16);
      if (v17 >= 1)
      {
        v18 = (v17 + v12);
        if (v18 > a2)
        {
          return v12;
        }

        *(v15 + v16) = 1;
        ++*a6;
        v13 = *(a1 + 24);
        v12 = v18;
      }

      ++v14;
    }

    while (v14 < v13);
  }

  return v12;
}

uint64_t ProResHWAnalyzer::stitchProResFrame(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(unsigned __int8 *a1, unsigned int a2, unsigned int a3, void *a4), void *a8)
{
  v54[2] = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = dummyCallback;
  }

  v54[0] = a3;
  v54[1] = a5;
  v51 = 0;
  v48 = v12;
  v46 = *(a1 + 16);
  v13 = *(a2 + 4);
  v14 = v13 + 8;
  if (v12(a3, 0, v13 + 8, a8))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "frame header";
    __cxa_throw(exception, MEMORY[0x277D82740], 0);
  }

  if (*(a2 + 11) != *(a4 + 11))
  {
    __assert_rtn("stitchProResFrame", "AppleProResHWAnalyzer.cpp", 1010, "frm[0]->interlace_mode == frm[1]->interlace_mode");
  }

  v15 = *(a4 + 4);
  v16 = (a2 + 16);
  v17 = (a4 + 16);
  v52[0] = a2 + 16;
  v52[1] = a4 + 16;
  v18 = *(a2 + 40) * *(a2 + 36);
  if (v18 != *(a4 + 40) * *(a4 + 36))
  {
    v31 = "numSlicesP0 == pic[1]->height_in_mb * pic[1]->number_of_slices_per_mb_row";
    v32 = 1021;
    goto LABEL_23;
  }

  if (v18 != *(a1 + 24))
  {
    v31 = "numSlicesP0 == m_numSlices";
    v32 = 1022;
LABEL_23:
    __assert_rtn("stitchProResFrame", "AppleProResHWAnalyzer.cpp", v32, v31);
  }

  v19 = *v16 + 2 * v18;
  if (v48(&a3[v14], v13 + 8, v19, a8))
  {
    v35 = __cxa_allocate_exception(8uLL);
    *v35 = "picture header and slice table";
    __cxa_throw(v35, MEMORY[0x277D82740], 0);
  }

  v40 = (a2 + 16);
  v41 = v13;
  v43 = v13 + 8;
  v20 = *v16 + v14;
  v21 = *(a1 + 24);
  v22 = v15 + 8 + 2 * v21 + *v17;
  v53[0] = v20 + 2 * v21;
  v53[1] = v22;
  v42 = a3;
  v39 = v20;
  if (v21)
  {
    v23 = 0;
    v24 = 0;
    v25 = v19 + v13 + 8;
    v44 = &a3[v20];
    do
    {
      v26 = *(v46 + v24);
      v27 = *(*(v52[v26] + 40) + v23);
      v28 = v53[v26];
      if (v48((v54[v26] + v28), v25, *(*(v52[v26] + 40) + v23), a8))
      {
        v33 = __cxa_allocate_exception(8uLL);
        *v33 = "slice data";
        __cxa_throw(v33, MEMORY[0x277D82740], 0);
      }

      v53[v26] = v28 + v27;
      if (a7 && v26)
      {
        *&v44[v23] = __rev16(v27);
      }

      v25 = v25 + v27;
      v19 += v27;
      v53[(1 - v26)] += *(*(v52[(1 - v26)] + 40) + v23);
      ++v24;
      v23 += 2;
    }

    while (*(a1 + 24) > v24);
  }

  v50 = bswap32(v19);
  if (v48(&v50, v41 + 9, 4u, a8))
  {
    v36 = __cxa_allocate_exception(8uLL);
    *v36 = "picture size";
    __cxa_throw(v36, MEMORY[0x277D82740], 0);
  }

  if (v48(&v42[v39], v43 + *v40, 2 * *(a1 + 24), a8))
  {
    v37 = __cxa_allocate_exception(8uLL);
    *v37 = "slice table";
    __cxa_throw(v37, MEMORY[0x277D82740], 0);
  }

  v29 = v43 + v19;
  *a6 = v29;
  v51 = bswap32(v29);
  if (v48(&v51, 0, 4u, a8))
  {
    v38 = __cxa_allocate_exception(8uLL);
    *v38 = "frame size";
    __cxa_throw(v38, MEMORY[0x277D82740], 0);
  }

  return 0;
}

void sub_27778EB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int *a19, uint64_t a20, uint64_t a21, uint64_t a22, int buf, int a24, __int128 a25)
{
  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = *a19;
      buf = 67109634;
      a24 = v26;
      LOWORD(a25) = 2080;
      *(&a25 + 2) = "stitchProResFrame";
      WORD5(a25) = 2080;
      *(&a25 + 12) = v25;
      _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: write %s failed", &buf, 0x1Cu);
    }

    __cxa_end_catch();
    JUMPOUT(0x27778E994);
  }

  _Unwind_Resume(a1);
}

void SliceList::sort(SliceList *this, unsigned __int16 *a2, int a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = 0;
    v10 = v8;
    v11 = this + 72 * v6;
    do
    {
      v12 = &v11[24 * v9];
      if (a3)
      {
        v13 = *(v12 + 1);
        v14 = 126 - 2 * __clz((v13 - *v12) >> 2);
        if (v13 == *v12)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(*v12, v13, &v22, v15, 1);
      }

      else
      {
        v16 = *(v12 + 1);
        v17 = 126 - 2 * __clz((v16 - *v12) >> 2);
        if (v16 == *v12)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,false>(v16, *(v12 + 1), *v12, *v12, &v23, v18, 1);
      }

      v19 = *v12;
      v20 = *(v12 + 1);
      if (*v12 != v20)
      {
        v21 = &a2[v7];
        do
        {
          *v21++ = *(v19 + 2);
          v19 += 4;
          ++v7;
        }

        while (v19 != v20);
      }

      ++v9;
    }

    while (v9 != 3);
    v8 = 0;
    v6 = 1;
  }

  while ((v10 & 1) != 0);
}

unsigned int *RiceExpComboCode<unsigned int>::decodeUnsigned(unsigned int *result, int *a2, unsigned int a3, int a4)
{
  v4 = RiceExpComboCodeCatalog[a4];
  v5 = v4 & 3;
  v6 = v4 >> 5;
  v7 = __clz(a3);
  if (v7 <= v5)
  {
    v10 = v7 + 1;
    if (v4 > 0x1F)
    {
      *a2 = v10 + v6;
      *result = (a3 << v10 >> -v6) + (v7 << v6);
    }

    else
    {
      *a2 = v10;
      *result = v7;
    }
  }

  else
  {
    v8 = (v4 >> 2) & 7;
    v9 = v8 + 2 * (v7 - (v5 + 1)) + 1;
    *a2 = v9;
    *result = ((v5 + 1) << v6) + (-1 << v8) + (a3 >> ((v5 ^ 0x1F) - v9));
    *a2 += v5 + 1;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 2;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < v89 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= v92 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= v109 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        LOWORD(v110) = v10[3];
      }

      *v10 = v91;
      v10[2] = v92;
      v111 = v10[1];
      v10[3] = v111;
      v10[1] = v110;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short> *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (v16 >= v17 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]) || (*v14 = v24, *(a2 - 2) = v16, v25 = v14 + 1, v26 = v14[1], v14[1] = *(a2 - 1), *(a2 - 1) = v26, v27 = *v14, v28 = *v10, v27 >= v28) && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)) || (*v39 = v44, *(a2 - 4) = v40, v45 = v14 - 1, v46 = *(v14 - 1), *(v14 - 1) = *(a2 - 3), *(a2 - 3) = v46, v47 = *v39, v48 = v10[2], v47 >= v48) && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]) || (*v55 = v61, *(a2 - 6) = v56, v62 = v55 + 1, v63 = v55[1], v55[1] = *(a2 - 5), *(a2 - 5) = v63, v64 = *v55, v65 = v10[4], v64 >= v65) && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  LODWORD(v70) = *v15;
                  v71 = *v39;
                  if (v70 >= v71 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (v75 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      LOWORD(v76) = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    *v55 = v70;
                    v15[1] = v77;
                    v70 = v15 + 1;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      LOWORD(v70) = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = v39 + 1;
                    *v15 = v71;
LABEL_103:
                    v80 = *v73;
                    *v73 = *v70;
                    *v70 = v80;
                    LOWORD(v70) = *v15;
LABEL_104:
                    v81 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v81;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (v72 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v78 = v15[1];
                    if (v55[1] < v78)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = v39 + 1;
                      *v55 = v71;
                      v74 = v55 + 1;
LABEL_102:
                      v70 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    LOWORD(v78) = v15[1];
                  }

                  *v39 = v70;
                  *v15 = v71;
                  v79 = v39[1];
                  v15[1] = v79;
                  v39[1] = v78;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v79))
                  {
                    LOWORD(v70) = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = v55 + 1;
                  v73 = v15 + 1;
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                LOWORD(v66) = v55[1];
              }

              v10[4] = v56;
              *v55 = v58;
              v67 = v10[5];
              v10[5] = v66;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            LOWORD(v49) = *(v14 - 1);
          }

          v10[2] = v40;
          *v39 = v41;
          v52 = v10[3];
          v10[3] = v49;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        LOWORD(v34) = v14[1];
      }

      *v10 = v16;
      *v14 = v17;
      v36 = v10[1];
      v10[1] = v34;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (v20 < v21 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        LOWORD(v35) = v10[1];
LABEL_59:
        *v15 = v20;
        *v10 = v21;
        v50 = v15[1];
        v15[1] = v35;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v82 = *v23;
      *v23 = *v30;
      *v30 = v82;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (v32 < v33 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v83 = *(v10 - 2);
      v84 = *v10;
      if (v83 >= v84 && (v84 < v83 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      LOWORD(v100) = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[6] = v99;
    v10[5] = v101;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      LOWORD(v103) = v10[3];
    }

    v10[2] = v98;
    v10[4] = v102;
    v10[3] = v101;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= v104)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      LOWORD(v105) = v10[1];
    }

    *v10 = v98;
    v10[2] = v104;
    v10[1] = v101;
    v10[3] = v105;
  }

  return result;
}

unsigned __int16 *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(unsigned __int16 *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = *result;
  if (v4 < v5 || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (v6 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = result + 1;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = a2 + 1;
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (v14 >= v5 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = a3 + 1;
    goto LABEL_14;
  }

  v8 = *a3;
  if (v8 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (v11 < v12 || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = result + 1;
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (v16 < v17 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (v19 < v20 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (v22 < v23 || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned __int16 *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        v7 = *v5;
        if (v6 < v7 || v7 >= v6 && v5[3] < v5[1])
        {
          v8 = *(v5 + 1);
          v5[2] = v7;
          v4[1] = v5[1];
          v9 = result;
          if (v5 != result)
          {
            v10 = v3;
            do
            {
              v11 = *(result + v10 - 4);
              if (v11 <= v8)
              {
                if (v11 < v8)
                {
                  v9 = v5;
                  goto LABEL_17;
                }

                v9 = (result + v10);
                v12 = *(result + v10 - 2);
                if (v12 <= HIWORD(v8))
                {
                  goto LABEL_17;
                }
              }

              else
              {
                LOWORD(v12) = *(result + v10 - 2);
              }

              v5 -= 2;
              v13 = (result + v10);
              *v13 = v11;
              v13[1] = v12;
              v10 -= 4;
            }

            while (v10);
            v9 = result;
          }

LABEL_17:
          *v9 = v8;
        }

        v2 = v4 + 2;
        v3 += 4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unsigned __int16 *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < v6 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = *result;
          for (i = v3; ; i -= 2)
          {
            i[1] = v6;
            i[2] = *i;
            v6 = *(i - 3);
            if (v6 <= v8 && (v6 < v8 || *(i - 2) <= HIWORD(v7)))
            {
              break;
            }
          }

          *(i - 1) = v8;
          *i = HIWORD(v7);
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

unsigned __int16 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = HIWORD(*a1);
  v4 = *(a2 - 2);
  if (v4 > v2 || v4 >= v2 && *(a2 - 1) > v3)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v2 && (v6 < v2 || i[1] <= v3));
  }

  else
  {
    for (i = a1 + 2; i < a2; i += 2)
    {
      v16 = *i;
      if (v16 > v2 || v16 >= v2 && i[1] > v3)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v2 || v4 >= v2 && a2[1] > v3; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    LOWORD(v9) = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v2 && (v9 < v2 || i[1] <= v3));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v2;
        }

        while (v13 > v2);
      }

      while (v14 && a2[1] > v3);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

_WORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(_WORD *a1, _WORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = HIWORD(*a1);
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    LOWORD(v12) = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          LOWORD(v5) = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = (a2 - a1) >> 2;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        LOWORD(v13) = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[6] = v12;
      a1[5] = v14;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        LOWORD(v16) = a1[3];
      }

      a1[2] = v11;
      a1[4] = v15;
      a1[3] = v14;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= v17)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        LOWORD(v18) = a1[1];
      }

      *a1 = v11;
      a1[2] = v17;
      a1[1] = v14;
      result = 1;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= v21 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= v33 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LOWORD(v38) = a1[3];
    }

    *a1 = v20;
    a1[2] = v21;
    v40 = a1[1];
    a1[3] = v40;
    a1[1] = v38;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < v6 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < v27 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (v28 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = a1 + 1;
LABEL_64:
      v37 = a1 + 5;
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LOWORD(v39) = a1[3];
    }

    *a1 = v26;
    a1[2] = v27;
    v43 = a1[1];
    a1[3] = v43;
    v29 = a1 + 3;
    a1[1] = v39;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (v34 < v26)
  {
    LOWORD(v35) = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = a1 + 3;
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = a1 + 1;
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v45;
    v49 = *v25;
    if (v48 >= v49 && (v49 < v48 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v50 = *v45;
    v51 = *v45;
    *v45 = v49;
    v45[1] = v25[1];
    v52 = v46;
    while (1)
    {
      v53 = a1 + v52;
      v54 = *(a1 + v52 + 4);
      if (v54 <= v51)
      {
        break;
      }

      LOWORD(v55) = *(v53 + 3);
LABEL_74:
      *(v53 + 4) = v54;
      *(a1 + v52 + 10) = v55;
      v52 -= 4;
      if (v52 == -8)
      {
        v56 = a1;
        goto LABEL_80;
      }
    }

    if (v54 >= v51)
    {
      v55 = *(a1 + v52 + 6);
      if (v55 > HIWORD(v50))
      {
        goto LABEL_74;
      }
    }

    v56 = (a1 + v52 + 8);
LABEL_80:
    *v56 = v51;
    v56[1] = HIWORD(v50);
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 4;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

unsigned __int16 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short> *>(char *a1, char *a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 2;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (v13 < v14 || v14 >= v13 && v12[1] < *(a1 + 1))
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = *(a1 + 1);
          *(a1 + 1) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = (a2 - 4);
      do
      {
        v17 = *a1;
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, a4, v8);
        if (v16 == v18)
        {
          *v18 = v17;
        }

        else
        {
          *v18 = *v16;
          v18[1] = v16[1];
          *v16 = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 2);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        v11 = *v8;
        if (v11 < v10 || v10 >= v11 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      if (v12 >= v13 && (v13 < v12 || v8[1] >= a4[1]))
      {
        v14 = *a4;
        v15 = HIWORD(*a4);
        *a4 = v12;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v16 = (result + 4 * v7);
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = v16[2];
              v20 = *v16;
              if (v20 < v19 || v19 >= v20 && v16[1] < v16[3])
              {
                v16 += 2;
                v7 = v18;
              }
            }

            v21 = *v16;
            if (v21 < v14 || v21 <= v14 && v16[1] < v15)
            {
              break;
            }

            *v8 = v21;
            v8[1] = v16[1];
            v8 = v16;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v16 = v8;
LABEL_13:
        *v16 = v14;
        v16[1] = v15;
      }
    }
  }

  return result;
}

_WORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(_WORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 4 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 4);
    if (v7 < v8 || v8 >= v7 && v6[1] < *(a2 - 2))
    {
      v9 = *(a2 - 4);
      v10 = HIWORD(*(a2 - 4));
      *(a2 - 4) = v7;
      *(a2 - 2) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 4 * v5);
          v13 = *v11;
          if (v13 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            LOWORD(v14) = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 4 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,false>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, char a7)
{
  while (2)
  {
    while (2)
    {
      while (2)
      {
        for (i = 1 - a6; ; ++i)
        {
          v14 = (a2 - a4) >> 2;
          if (v14 <= 2)
          {
            if (v14 < 2)
            {
              return;
            }

            if (v14 == 2)
            {
              v105 = *a4;
              v106 = *(a2 - 2);
              if (v105 < v106 || v106 >= v105 && *(a4 + 1) < *(a2 - 1))
              {
                *(a2 - 2) = v105;
                *a4 = v106;
                v107 = *(a2 - 1);
                *(a2 - 1) = *(a4 + 1);
                *(a4 + 1) = v107;
              }

              return;
            }

            goto LABEL_9;
          }

          switch(v14)
          {
            case 3:
              v108 = *(a2 - 2);
              v109 = *(a2 - 4);
              if (v109 < v108 || v108 >= v109 && *(a2 - 3) < *(a2 - 1))
              {
                v110 = *a4;
                if (v110 >= v109 && (v109 < v110 || *(a4 + 1) >= *(a2 - 3)))
                {
                  *(a2 - 2) = v109;
                  *(a2 - 4) = v108;
                  v117 = *(a2 - 1);
                  *(a2 - 1) = *(a2 - 3);
                  *(a2 - 3) = v117;
                  v118 = *a4;
                  if (v118 >= v108 && (v108 < v118 || *(a4 + 1) >= v117))
                  {
                    return;
                  }

                  v116 = a2 - 6;
                  *(a2 - 4) = v118;
                  *a4 = v108;
                  v111 = a4 + 2;
LABEL_175:
                  v119 = *v116;
                  *v116 = *v111;
                  *v111 = v119;
                  return;
                }

                *(a2 - 2) = v110;
                *a4 = v108;
                v111 = a4 + 2;
              }

              else
              {
                v112 = *a4;
                if (v112 >= v109 && (v109 < v112 || *(a4 + 1) >= *(a2 - 3)))
                {
                  return;
                }

                *(a2 - 4) = v112;
                *a4 = v109;
                v113 = *(a2 - 3);
                *(a2 - 3) = *(a4 + 1);
                *(a4 + 1) = v113;
                v114 = *(a2 - 4);
                v115 = *(a2 - 2);
                if (v114 >= v115 && (v115 < v114 || *(a2 - 3) >= *(a2 - 1)))
                {
                  return;
                }

                v111 = a2 - 6;
                *(a2 - 2) = v114;
                *(a2 - 4) = v115;
              }

              v116 = a2 - 2;
              goto LABEL_175;
            case 4:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(result, a2, (a2 - 4), (a2 - 4), (a2 - 8), (a2 - 8), a3, (a4 + 4));
              return;
            case 5:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(result, a2, (a2 - 4), (a2 - 4), (a2 - 8), (a2 - 8), (a2 - 12), (a2 - 12));
              v94 = *a4;
              v95 = *(a2 - 8);
              if (v94 < v95 || v95 >= v94 && *(a4 + 1) < *(a2 - 7))
              {
                *(a2 - 8) = v94;
                *a4 = v95;
                v96 = *(a2 - 7);
                *(a2 - 7) = *(a4 + 1);
                *(a4 + 1) = v96;
                v97 = *(a2 - 8);
                v98 = *(a2 - 6);
                if (v97 < v98 || v98 >= v97 && *(a2 - 7) < *(a2 - 5))
                {
                  *(a2 - 6) = v97;
                  *(a2 - 8) = v98;
                  v99 = *(a2 - 5);
                  *(a2 - 5) = *(a2 - 7);
                  *(a2 - 7) = v99;
                  v100 = *(a2 - 6);
                  v101 = *(a2 - 4);
                  if (v100 < v101 || v101 >= v100 && *(a2 - 5) < *(a2 - 3))
                  {
                    *(a2 - 4) = v100;
                    *(a2 - 6) = v101;
                    v102 = *(a2 - 3);
                    *(a2 - 3) = *(a2 - 5);
                    *(a2 - 5) = v102;
                    v103 = *(a2 - 2);
                    if (v100 < v103 || v103 >= v100 && *(a2 - 3) < *(a2 - 1))
                    {
                      *(a2 - 2) = v100;
                      *(a2 - 4) = v103;
                      v104 = *(a2 - 1);
                      *(a2 - 1) = *(a2 - 3);
                      *(a2 - 3) = v104;
                    }
                  }
                }
              }

              return;
          }

LABEL_9:
          if (v14 <= 23)
          {
            if (a7)
            {
              std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(result, a2, a3, a4);
            }

            else
            {
              std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(result, a2, a3, a4);
            }

            return;
          }

          if (i == 1)
          {
            if (a2 != a4)
            {
              std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(result, a2, a3, a4, a3, a4, a5);
            }

            return;
          }

          v15 = ((a2 - a4) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
          v16 = &a2[-v15];
          if (v14 >= 0x81)
          {
            v17 = *(v16 - 2);
            v18 = *(a2 - 2);
            if (v17 < v18 || v18 >= v17 && *(v16 - 1) < *(a2 - 1))
            {
              v19 = *a4;
              if (v19 < v17 || v17 >= v19 && *(a4 + 1) < *(v16 - 1))
              {
                *(a2 - 2) = v19;
                *a4 = v18;
                v20 = a2 - 2;
              }

              else
              {
                *(a2 - 2) = v17;
                v20 = v16 - 2;
                v35 = *(v16 - 1);
                *(v16 - 2) = v18;
                v36 = *(a2 - 1);
                *(a2 - 1) = v35;
                *(v16 - 1) = v36;
                v37 = *a4;
                v38 = *(v16 - 2);
                if (v37 >= v38 && (v38 < v37 || *(a4 + 1) >= v36))
                {
                  goto LABEL_34;
                }

                *(v16 - 2) = v37;
                *a4 = v38;
              }

              v27 = a4 + 2;
            }

            else
            {
              v25 = *a4;
              if (v25 >= v17 && (v17 < v25 || *(a4 + 1) >= *(v16 - 1)) || (*(v16 - 2) = v25, *a4 = v17, v27 = v16 - 2, v26 = *(v16 - 1), *(v16 - 1) = *(a4 + 1), *(a4 + 1) = v26, v28 = *(v16 - 2), v29 = *(a2 - 2), v28 >= v29) && (v29 < v28 || *v27 >= *(a2 - 1)))
              {
LABEL_34:
                v40 = *v16;
                v41 = *(a2 - 4);
                if (v40 < v41 || v41 >= v40 && *(v16 + 1) < *(a2 - 3))
                {
                  v42 = *(a4 + 2);
                  if (v42 < v40 || v40 >= v42 && *(a4 + 3) < *(v16 + 1))
                  {
                    *(a2 - 4) = v42;
                    *(a4 + 2) = v41;
                    v43 = a2 - 6;
                  }

                  else
                  {
                    *(a2 - 4) = v40;
                    v43 = v16 + 2;
                    v53 = *(v16 + 1);
                    *v16 = v41;
                    v54 = *(a2 - 3);
                    *(a2 - 3) = v53;
                    *(v16 + 1) = v54;
                    v55 = *(a4 + 2);
                    v56 = *v16;
                    if (v55 >= v56 && (v56 < v55 || *(a4 + 3) >= v54))
                    {
                      goto LABEL_53;
                    }

                    *v16 = v55;
                    *(a4 + 2) = v56;
                  }

                  v46 = a4 + 6;
                }

                else
                {
                  v44 = *(a4 + 2);
                  if (v44 >= v40 && (v40 < v44 || *(a4 + 3) >= *(v16 + 1)) || (*v16 = v44, *(a4 + 2) = v40, v46 = v16 + 2, v45 = *(v16 + 1), *(v16 + 1) = *(a4 + 3), *(a4 + 3) = v45, v47 = *v16, v48 = *(a2 - 4), v47 >= v48) && (v48 < v47 || *v46 >= *(a2 - 3)))
                  {
LABEL_53:
                    v58 = &a2[-v15 - 4];
                    v59 = *(v58 - 2);
                    v60 = *(a2 - 6);
                    if (v59 < v60 || v60 >= v59 && *(v58 - 1) < *(a2 - 5))
                    {
                      v61 = *(a4 + 4);
                      if (v61 < v59 || v59 >= v61 && *(a4 + 5) < *(v58 - 1))
                      {
                        *(a2 - 6) = v61;
                        *(a4 + 4) = v60;
                        v62 = a2 - 10;
                      }

                      else
                      {
                        *(a2 - 6) = v59;
                        v62 = v58 - 2;
                        v68 = *(v58 - 1);
                        *(v58 - 2) = v60;
                        v69 = *(a2 - 5);
                        *(a2 - 5) = v68;
                        *(v58 - 1) = v69;
                        v70 = *(a4 + 4);
                        v71 = *(v58 - 2);
                        if (v70 >= v71 && (v71 < v70 || *(a4 + 5) >= v69))
                        {
                          goto LABEL_67;
                        }

                        *(v58 - 2) = v70;
                        *(a4 + 4) = v71;
                      }

                      v65 = a4 + 10;
                    }

                    else
                    {
                      v63 = *(a4 + 4);
                      if (v63 >= v59 && (v59 < v63 || *(a4 + 5) >= *(v58 - 1)) || (*(v58 - 2) = v63, *(a4 + 4) = v59, v65 = v58 - 2, v64 = *(v58 - 1), *(v58 - 1) = *(a4 + 5), *(a4 + 5) = v64, v66 = *(v58 - 2), v67 = *(a2 - 6), v66 >= v67) && (v67 < v66 || *v65 >= *(a2 - 5)))
                      {
LABEL_67:
                        v73 = *(v16 - 2);
                        v74 = *v16;
                        if (v73 < v74 || v74 >= v73 && *(v16 - 1) < *(v16 + 1))
                        {
                          v75 = *(v58 - 2);
                          if (v75 < v73 || v73 >= v75 && *(v58 - 1) < *(v16 - 1))
                          {
                            *v16 = v75;
                            *(v58 - 2) = v74;
                            v76 = v16 + 2;
                          }

                          else
                          {
                            *v16 = v73;
                            v76 = v16 - 2;
                            v81 = *(v16 - 1);
                            *(v16 - 2) = v74;
                            v82 = *(v16 + 1);
                            *(v16 + 1) = v81;
                            *(v16 - 1) = v82;
                            v83 = *(v58 - 2);
                            v73 = *(v16 - 2);
                            if (v83 >= v73 && (v73 < v83 || *(v58 - 1) >= v82))
                            {
                              goto LABEL_81;
                            }

                            *(v16 - 2) = v83;
                            *(v58 - 2) = v73;
                          }

                          v79 = v58 - 2;
                        }

                        else
                        {
                          v77 = *(v58 - 2);
                          if (v77 >= v73 && (v73 < v77 || *(v58 - 1) >= *(v16 - 1)) || (*(v16 - 2) = v77, *(v58 - 2) = v73, v79 = v16 - 2, v78 = *(v16 - 1), *(v16 - 1) = *(v58 - 1), *(v58 - 1) = v78, v73 = *(v16 - 2), v80 = *v16, v73 >= v80) && (v80 < v73 || *v79 >= *(v16 + 1)))
                          {
LABEL_81:
                            v85 = *(a2 - 2);
                            *(a2 - 2) = v73;
                            *(v16 - 2) = v85;
                            v24 = a2 - 2;
                            v32 = v16 - 2;
                            goto LABEL_82;
                          }

                          *v16 = v73;
                          *(v16 - 2) = v80;
                          v76 = v16 + 2;
                        }

                        v84 = *v76;
                        *v76 = *v79;
                        *v79 = v84;
                        LOWORD(v73) = *(v16 - 2);
                        goto LABEL_81;
                      }

                      *(a2 - 6) = v66;
                      *(v58 - 2) = v67;
                      v62 = a2 - 10;
                    }

                    v72 = *v62;
                    *v62 = *v65;
                    *v65 = v72;
                    goto LABEL_67;
                  }

                  *(a2 - 4) = v47;
                  *v16 = v48;
                  v43 = a2 - 6;
                }

                v57 = *v43;
                *v43 = *v46;
                *v46 = v57;
                goto LABEL_53;
              }

              *(a2 - 2) = v28;
              *(v16 - 2) = v29;
              v20 = a2 - 2;
            }

            v39 = *v20;
            *v20 = *v27;
            *v27 = v39;
            goto LABEL_34;
          }

          v21 = *(a2 - 2);
          v22 = *(v16 - 2);
          if (v21 < v22 || v22 >= v21 && *(a2 - 1) < *(v16 - 1))
          {
            v23 = *a4;
            if (v23 < v21 || v21 >= v23 && *(a4 + 1) < *(a2 - 1))
            {
              *(v16 - 2) = v23;
              *a4 = v22;
              v24 = v16 - 2;
LABEL_46:
              v32 = a4 + 2;
              goto LABEL_82;
            }

            *(v16 - 2) = v21;
            v24 = a2 - 2;
            v49 = *(a2 - 1);
            *(a2 - 2) = v22;
            v50 = *(v16 - 1);
            *(v16 - 1) = v49;
            *(a2 - 1) = v50;
            v51 = *a4;
            v52 = *(a2 - 2);
            if (v51 < v52 || v52 >= v51 && *(a4 + 1) < v50)
            {
              *(a2 - 2) = v51;
              *a4 = v52;
              goto LABEL_46;
            }
          }

          else
          {
            v30 = *a4;
            if (v30 < v21 || v21 >= v30 && *(a4 + 1) < *(a2 - 1))
            {
              *(a2 - 2) = v30;
              *a4 = v21;
              v32 = a2 - 2;
              v31 = *(a2 - 1);
              *(a2 - 1) = *(a4 + 1);
              *(a4 + 1) = v31;
              v33 = *(a2 - 2);
              v34 = *(v16 - 2);
              if (v33 < v34 || v34 >= v33 && *v32 < *(v16 - 1))
              {
                *(v16 - 2) = v33;
                *(a2 - 2) = v34;
                v24 = v16 - 2;
LABEL_82:
                v86 = *v24;
                *v24 = *v32;
                *v32 = v86;
              }
            }
          }

          if (a7)
          {
            break;
          }

          v87 = *a2;
          v88 = *(a2 - 2);
          if (v87 < v88 || v88 >= v87 && *(a2 + 1) < *(a2 - 1))
          {
            break;
          }

          std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(result, a2, a3, a4);
          result = v89;
          a2 = v90;
          a7 = 0;
        }

        std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(a2, a4, &v121);
        v91 = v121;
        v92 = v122;
        a6 = -i;
        if (v123 != 1)
        {
LABEL_139:
          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,false>(result, a2, v91, v92, a5, -i, a7 & 1);
          a7 = 0;
          a2 = v92 - 4;
          result = v91;
          continue;
        }

        break;
      }

      v93 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(result, a2, v121, v122);
      if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>((v92 - 4), v92 - 2, a3, a4))
      {
        if (v93)
        {
          result = v91;
          a2 = v92 - 4;
          continue;
        }

        goto LABEL_139;
      }

      break;
    }

    a3 = v91;
    a4 = v92;
    if ((v93 & 1) == 0)
    {
      continue;
    }

    break;
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a4 - 4);
  v9 = *(a2 - 4);
  if (v8 < v9 || v9 >= v8 && *(a4 - 2) < *(a2 - 2))
  {
    v10 = *(a6 - 4);
    if (v10 < v8 || v8 >= v10 && *(a6 - 2) < *(a4 - 2))
    {
      *(a2 - 4) = v10;
      *(a6 - 4) = v9;
      v11 = (a2 - 2);
    }

    else
    {
      *(a2 - 4) = v8;
      v11 = (a4 - 2);
      v17 = *(a4 - 2);
      *(a4 - 4) = v9;
      v18 = *(a2 - 2);
      *(a2 - 2) = v17;
      *(a4 - 2) = v18;
      v19 = *(a6 - 4);
      v20 = *(a4 - 4);
      if (v19 >= v20 && (v20 < v19 || *(a6 - 2) >= v18))
      {
        goto LABEL_15;
      }

      *(a4 - 4) = v19;
      *(a6 - 4) = v20;
    }

    v14 = (a6 - 2);
    goto LABEL_14;
  }

  v12 = *(a6 - 4);
  if (v12 < v8 || v8 >= v12 && *(a6 - 2) < *(a4 - 2))
  {
    *(a4 - 4) = v12;
    *(a6 - 4) = v8;
    v14 = (a4 - 2);
    v13 = *(a4 - 2);
    *(a4 - 2) = *(a6 - 2);
    *(a6 - 2) = v13;
    v15 = *(a4 - 4);
    v16 = *(a2 - 4);
    if (v15 < v16 || v16 >= v15 && *v14 < *(a2 - 2))
    {
      *(a2 - 4) = v15;
      *(a4 - 4) = v16;
      v11 = (a2 - 2);
LABEL_14:
      v21 = *v11;
      *v11 = *v14;
      *v14 = v21;
    }
  }

LABEL_15:
  v22 = *(a8 - 4);
  v23 = *(a6 - 4);
  if (v22 < v23 || v23 >= v22 && *(a8 - 2) < *(a6 - 2))
  {
    *(a6 - 4) = v22;
    *(a8 - 4) = v23;
    v24 = *(a6 - 2);
    *(a6 - 2) = *(a8 - 2);
    *(a8 - 2) = v24;
    v25 = *(a6 - 4);
    v26 = *(a4 - 4);
    if (v25 < v26 || v26 >= v25 && *(a6 - 2) < *(a4 - 2))
    {
      *(a4 - 4) = v25;
      *(a6 - 4) = v26;
      v27 = *(a4 - 2);
      *(a4 - 2) = *(a6 - 2);
      *(a6 - 2) = v27;
      v28 = *(a4 - 4);
      v29 = *(a2 - 4);
      if (v28 < v29 || v29 >= v28 && *(a4 - 2) < *(a2 - 2))
      {
        *(a2 - 4) = v28;
        *(a4 - 4) = v29;
        v30 = *(a2 - 2);
        *(a2 - 2) = *(a4 - 2);
        *(a4 - 2) = v30;
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a2 == a4)
  {
    return;
  }

  v4 = a2 - 2;
  if (a2 - 2 == a4)
  {
    return;
  }

  v5 = 0;
  v6 = a2 - 2;
  do
  {
    v7 = v4 + 2;
    v8 = *v4;
    v10 = *(v6 - 2);
    v6 -= 2;
    v9 = v10;
    if (v10 >= v8)
    {
      if (v8 < v9)
      {
        goto LABEL_17;
      }

      v11 = v4[1];
      if (*(v4 - 1) >= v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      LOWORD(v11) = v4[1];
    }

    v12 = *(v4 - 1);
    *(v4 - 2) = v8;
    *(v4 - 1) = v11;
    if (v7 == a2)
    {
LABEL_13:
      v7 = a2;
      goto LABEL_14;
    }

    v13 = v5;
    while (1)
    {
      v14 = *(a2 + v13);
      if (v14 <= v12)
      {
        break;
      }

      LOWORD(v15) = *(a2 + v13 + 2);
LABEL_12:
      v7 += 2;
      v16 = a2 + v13;
      *(v16 - 2) = v14;
      *(v16 - 1) = v15;
      v13 += 4;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    if (v14 < v12)
    {
      goto LABEL_14;
    }

    v15 = *(a2 + v13 + 2);
    if (v15 > HIWORD(v12))
    {
      goto LABEL_12;
    }

    v7 = (a2 + v13);
LABEL_14:
    *(v7 - 1) = v12;
LABEL_17:
    v5 -= 4;
    v4 = v6;
  }

  while (v6 != a4);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a2 != a4)
  {
    v4 = a2 - 2;
    while (v4 != a4)
    {
      v5 = v4;
      v7 = v4 + 2;
      v6 = *v4;
      v9 = *(v4 - 2);
      v4 -= 2;
      v8 = v9;
      if (v9 < v6 || v6 >= v8 && *(v5 - 1) < v5[1])
      {
        v10 = *v4;
        v11 = *v4;
        do
        {
          do
          {
            v12 = v7;
            *(v5 - 2) = v6;
            *(v5 - 1) = *(v7 - 1);
            v7 += 2;
            v6 = *v12;
            v5 = v12;
          }

          while (v6 > v11);
          if (v6 < v11)
          {
            break;
          }

          v5 = v12;
        }

        while (v12[1] > HIWORD(v10));
        *(v12 - 2) = v11;
        *(v12 - 1) = HIWORD(v10);
      }
    }
  }
}

void std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = a2 - 2;
  v5 = *(a2 - 1);
  v6 = v5;
  v7 = HIWORD(v5);
  v8 = *a4;
  if (v8 <= v5 && (v8 < v5 || a4[1] <= v7))
  {
    while (v4 > a4)
    {
      v12 = *(v4 - 2);
      if (v12 > v5 || v12 >= v5 && *(v4 - 1) > v7)
      {
        break;
      }

      v4 -= 2;
    }
  }

  else
  {
    v9 = *(a2 - 4);
    if (v9 <= v6)
    {
      v10 = a2 - 6;
      do
      {
        if (v9 >= v6 && v10[3] > v7)
        {
          break;
        }

        v11 = *v10;
        v10 -= 2;
        v9 = v11;
      }

      while (v11 <= v6);
      v4 = v10 + 4;
    }
  }

  if (v4 > a4)
  {
    do
    {
      do
      {
        a4 += 2;
        v13 = *(a4 - 2);
      }

      while (v13 > v6);
    }

    while (v13 >= v6 && *(a4 - 1) > v7);
  }

  if (a4 >= v4)
  {
    v14 = v4;
  }

  else
  {
    v14 = v4;
    do
    {
      v15 = *(v14 - 2);
      v14 -= 2;
      *v14 = *(a4 - 2);
      *(a4 - 2) = v15;
      v16 = v14[1];
      v14[1] = *(a4 - 1);
      *(a4 - 1) = v16;
      v17 = *(v14 - 2);
      if (v17 <= v6)
      {
        v18 = v4 - 6;
        do
        {
          if (v17 >= v6 && v18[3] > v7)
          {
            break;
          }

          v19 = *v18;
          v18 -= 2;
          v17 = v19;
        }

        while (v19 <= v6);
        v14 = v18 + 4;
      }

      do
      {
        do
        {
          a4 += 2;
          v20 = *(a4 - 2);
        }

        while (v20 > v6);
      }

      while (v20 >= v6 && *(a4 - 1) > v7);
      v4 = v14;
    }

    while (a4 < v14);
  }

  if (a2 != v14 + 2)
  {
    *(a2 - 2) = *v14;
    *(a2 - 1) = v14[1];
  }

  *v14 = v6;
  v14[1] = v7;
}

void std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(unint64_t a1@<X1>, unsigned __int16 *a2@<X3>, uint64_t a3@<X8>)
{
  v3 = a1 - 4;
  v4 = *(a1 - 4);
  v5 = HIWORD(*(a1 - 4));
  for (i = a1; ; i -= 4)
  {
    v7 = *(v3 - 4);
    if (v7 >= v4 && (v7 > v4 || *(v3 - 2) >= v5))
    {
      break;
    }

    v3 -= 4;
  }

  if (a1 == i)
  {
    if (v3 > a2)
    {
      while (1)
      {
        v9 = *a2;
        a2 += 2;
        v8 = v9;
        if (v9 < v4)
        {
          break;
        }

        if (v8 <= v4)
        {
          if (*(a2 - 1) < v5 || a2 >= v3)
          {
            break;
          }
        }

        else if (a2 >= v3)
        {
          break;
        }
      }
    }
  }

  else
  {
    do
    {
      v12 = *a2;
      a2 += 2;
      v11 = v12;
    }

    while (v12 >= v4 && (v11 > v4 || *(a2 - 1) >= v5));
  }

  if (a2 < v3)
  {
    v13 = v3;
    v14 = a2;
    do
    {
      v15 = *(v13 - 4);
      *(v13 - 4) = *(v14 - 2);
      *(v14 - 2) = v15;
      v16 = *(v13 - 2);
      *(v13 - 2) = *(v14 - 1);
      *(v14 - 1) = v16;
      i = v13;
      for (v13 -= 4; ; v13 -= 4)
      {
        v17 = *(v13 - 4);
        if (v17 >= v4 && (v17 > v4 || *(v13 - 2) >= v5))
        {
          break;
        }

        i -= 4;
      }

      do
      {
        v19 = *v14;
        v14 += 2;
        v18 = v19;
      }

      while (v19 >= v4 && (v18 > v4 || *(v14 - 1) >= v5));
    }

    while (v14 < v13);
  }

  if (a1 != i)
  {
    *(a1 - 4) = *(i - 4);
    *(a1 - 2) = *(i - 2);
  }

  *(i - 4) = v4;
  *(i - 2) = v5;
  *a3 = i;
  *(a3 + 8) = i;
  *(a3 + 16) = a2 >= v3;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  v6 = (a2 - a4) >> 2;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(a1, a2, (a2 - 2), (a2 - 2), (a2 - 4), (a2 - 4), (a2 - 6), (a2 - 6));
          v10 = *a4;
          v11 = *(a2 - 8);
          if (v10 < v11 || v11 >= v10 && a4[1] < *(a2 - 7))
          {
            *(a2 - 8) = v10;
            *a4 = v11;
            v12 = *(a2 - 7);
            *(a2 - 7) = a4[1];
            a4[1] = v12;
            v13 = *(a2 - 8);
            v14 = *(a2 - 6);
            if (v13 < v14 || v14 >= v13 && *(a2 - 7) < *(a2 - 5))
            {
              *(a2 - 6) = v13;
              *(a2 - 8) = v14;
              v15 = *(a2 - 5);
              *(a2 - 5) = *(a2 - 7);
              *(a2 - 7) = v15;
              v16 = *(a2 - 6);
              v17 = *(a2 - 4);
              if (v16 < v17 || v17 >= v16 && *(a2 - 5) < *(a2 - 3))
              {
                *(a2 - 4) = v16;
                *(a2 - 6) = v17;
                v18 = *(a2 - 3);
                *(a2 - 3) = *(a2 - 5);
                *(a2 - 5) = v18;
                v19 = *(a2 - 2);
                if (v16 < v19 || v19 >= v16 && *(a2 - 3) < *(a2 - 1))
                {
                  *(a2 - 2) = v16;
                  *(a2 - 4) = v19;
                  v20 = *(a2 - 1);
                  *(a2 - 1) = *(a2 - 3);
                  *(a2 - 3) = v20;
                }
              }
            }
          }

          goto LABEL_43;
        }

        goto LABEL_17;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(a1, a2, (a2 - 2), (a2 - 2), (a2 - 4), (a2 - 4), a3, (a4 + 2));
LABEL_43:
      v42 = 1;
      return v42 & 1;
    }

    v21 = *(a2 - 2);
    v22 = *(a2 - 4);
    if (v22 < v21 || v21 >= v22 && *(a2 - 3) < *(a2 - 1))
    {
      v23 = *a4;
      if (v23 >= v22 && (v22 < v23 || a4[1] >= *(a2 - 3)))
      {
        *(a2 - 2) = v22;
        *(a2 - 4) = v21;
        v39 = *(a2 - 1);
        *(a2 - 1) = *(a2 - 3);
        *(a2 - 3) = v39;
        v40 = *a4;
        if (v40 >= v21 && (v21 < v40 || a4[1] >= v39))
        {
          goto LABEL_43;
        }

        v34 = a2 - 3;
        *(a2 - 4) = v40;
        *a4 = v21;
        v24 = a4 + 1;
        goto LABEL_42;
      }

      *(a2 - 2) = v23;
      *a4 = v21;
      v24 = a4 + 1;
    }

    else
    {
      v30 = *a4;
      if (v30 >= v22 && (v22 < v30 || a4[1] >= *(a2 - 3)))
      {
        goto LABEL_43;
      }

      *(a2 - 4) = v30;
      *a4 = v22;
      v31 = *(a2 - 3);
      *(a2 - 3) = a4[1];
      a4[1] = v31;
      v32 = *(a2 - 4);
      v33 = *(a2 - 2);
      if (v32 >= v33 && (v33 < v32 || *(a2 - 3) >= *(a2 - 1)))
      {
        goto LABEL_43;
      }

      v24 = a2 - 3;
      *(a2 - 2) = v32;
      *(a2 - 4) = v33;
    }

    v34 = a2 - 1;
LABEL_42:
    v41 = *v34;
    *v34 = *v24;
    *v24 = v41;
    goto LABEL_43;
  }

  if (v6 < 2)
  {
    goto LABEL_43;
  }

  if (v6 == 2)
  {
    v7 = *a4;
    v8 = *(a2 - 2);
    if (v7 < v8 || v8 >= v7 && a4[1] < *(a2 - 1))
    {
      *(a2 - 2) = v7;
      *a4 = v8;
      v9 = *(a2 - 1);
      *(a2 - 1) = a4[1];
      a4[1] = v9;
    }

    goto LABEL_43;
  }

LABEL_17:
  v25 = a2 - 4;
  v26 = *(a2 - 4);
  v27 = *(a2 - 2);
  if (v26 < v27 || v27 >= v26 && *(a2 - 3) < *(a2 - 1))
  {
    v28 = *(a2 - 6);
    if (v28 < v26 || v26 >= v28 && *(a2 - 5) < *(a2 - 3))
    {
      *(a2 - 2) = v28;
      *(a2 - 6) = v27;
      v29 = a2 - 1;
    }

    else
    {
      *(a2 - 2) = v26;
      *(a2 - 4) = v27;
      v44 = *(a2 - 1);
      *(a2 - 1) = *(a2 - 3);
      *(a2 - 3) = v44;
      v45 = *(a2 - 6);
      if (v45 >= v27 && (v27 < v45 || *(a2 - 5) >= v44))
      {
        goto LABEL_51;
      }

      v29 = a2 - 3;
      *(a2 - 4) = v45;
      *(a2 - 6) = v27;
    }

    v38 = a2 - 5;
  }

  else
  {
    v35 = *(a2 - 6);
    if (v35 >= v26 && (v26 < v35 || *(a2 - 5) >= *(a2 - 3)))
    {
      goto LABEL_51;
    }

    *(a2 - 4) = v35;
    *(a2 - 6) = v26;
    v36 = *(a2 - 3);
    *(a2 - 3) = *(a2 - 5);
    *(a2 - 5) = v36;
    v37 = *(a2 - 2);
    if (v35 >= v37 && (v37 < v35 || *(a2 - 3) >= *(a2 - 1)))
    {
      goto LABEL_51;
    }

    v38 = a2 - 3;
    *(a2 - 2) = v35;
    *(a2 - 4) = v37;
    v29 = a2 - 1;
  }

  v46 = *v29;
  *v29 = *v38;
  *v38 = v46;
LABEL_51:
  v47 = a2 - 6;
  if (a2 - 6 == a4)
  {
LABEL_69:
    v59 = 1;
  }

  else
  {
    v48 = 0;
    v49 = a2 - 6;
    while (1)
    {
      v51 = *(v49 - 2);
      v49 -= 2;
      v50 = v51;
      v52 = *(v25 - 2);
      if (v51 < v52 || v52 >= v50 && *(v47 - 1) < *(v25 - 1))
      {
        v53 = *(v47 - 1);
        *(v47 - 2) = v52;
        *(v47 - 1) = *(v25 - 1);
        if (v25 != a2)
        {
          v54 = v25;
          while (1)
          {
            v56 = *v54;
            v54 += 2;
            v55 = v56;
            v57 = v56 >= v53;
            if (v56 <= v53)
            {
              if (!v57)
              {
                break;
              }

              v58 = v25[1];
              if (v58 <= HIWORD(v53))
              {
                break;
              }
            }

            else
            {
              LOWORD(v58) = v25[1];
            }

            *(v25 - 2) = v55;
            *(v25 - 1) = v58;
            v25 = v54;
            if (v54 == a2)
            {
              goto LABEL_67;
            }
          }
        }

        v54 = v25;
LABEL_67:
        *(v54 - 1) = v53;
        if (++v48 == 8)
        {
          break;
        }
      }

      v25 = v47;
      v47 = v49;
      if (v49 == a4)
      {
        goto LABEL_69;
      }
    }

    v59 = 0;
    LOBYTE(v47) = v49 == a4;
  }

  v42 = v59 | v47;
  return v42 & 1;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a4;
  if (a2 != a4)
  {
    a5 = a3;
    v14 = v8 >> 2;
    v15 = __OFSUB__(v8 >> 2, 2);
    v16 = (v8 >> 2) - 2;
    if (v16 < 0 == v15)
    {
      v17 = v16 >> 1;
      v18 = v17 + 1;
      v19 = a2 - 4 * v17;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a7, v14, v19, v19);
        v19 += 4;
        --v18;
      }

      while (v18);
    }

    if (a4 != a6)
    {
      v20 = a4;
      v21 = a4;
      do
      {
        v23 = *(v21 - 4);
        v21 -= 4;
        v22 = v23;
        v24 = *(a2 - 4);
        if (v23 < v24 || v24 >= v22 && *(v20 - 2) < *(a2 - 2))
        {
          *(v20 - 4) = v24;
          *(a2 - 4) = v22;
          v25 = *(v20 - 2);
          *(v20 - 2) = *(a2 - 2);
          *(a2 - 2) = v25;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a7, v14, a1, a2);
        }

        v20 = v21;
      }

      while (v21 != a6);
    }

    if (v14 >= 2)
    {
      v26 = a4 + 4;
      do
      {
        v27 = *(a2 - 4);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a7, v14);
        if (v26 == v29)
        {
          *(v29 - 4) = v27;
        }

        else
        {
          *(v29 - 4) = *(v26 - 4);
          *(v29 - 2) = *(v26 - 2);
          *(v26 - 4) = v27;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, v28, (v29 - 4), a7, (a2 - (v29 - 4)) >> 2);
        }

        v26 += 4;
      }

      while (v14-- > 2);
    }
  }

  return a5;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v6 = a2 - a6;
    v7 = (a4 - 2) >> 1;
    if (v7 >= (a2 - a6) >> 2)
    {
      v8 = v6 >> 1;
      v9 = (v6 >> 1) | 1;
      v10 = a2 - 4 * v9;
      v11 = v8 + 2;
      if (v8 + 2 < a4 && ((v12 = v10 - 4, v13 = *(v10 - 4), v14 = *(v10 - 8), v13 < v14) || v14 >= v13 && *(v10 - 2) < *(v10 - 6)))
      {
        v9 = v11;
      }

      else
      {
        v12 = a2 - 4 * v9;
      }

      v15 = *(v12 - 4);
      v16 = *(a6 - 4);
      if (v15 >= v16 && (v16 < v15 || *(v12 - 2) >= *(a6 - 2)))
      {
        v17 = *(a6 - 4);
        v18 = HIWORD(*(a6 - 4));
        *(a6 - 4) = v15;
        *(a6 - 2) = *(v12 - 2);
        if (v7 >= v9)
        {
          while (1)
          {
            v20 = 2 * v9;
            v9 = (2 * v9) | 1;
            v21 = a2 - 4 * v9;
            v22 = v20 + 2;
            if (v20 + 2 < a4 && ((v19 = v21 - 4, v23 = *(v21 - 4), v24 = *(v21 - 8), v23 < v24) || v24 >= v23 && *(v21 - 2) < *(v21 - 6)))
            {
              v9 = v22;
            }

            else
            {
              v19 = a2 - 4 * v9;
            }

            v25 = *(v19 - 4);
            if (v25 < v17 || v25 <= v17 && *(v19 - 2) < v18)
            {
              break;
            }

            *(v12 - 4) = v25;
            *(v12 - 2) = *(v19 - 2);
            v12 = v19;
            if (v7 < v9)
            {
              goto LABEL_14;
            }
          }
        }

        v19 = v12;
LABEL_14:
        *(v19 - 4) = v17;
        *(v19 - 2) = v18;
      }
    }
  }
}

void std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = a2;
    a2 += 4 * ~v4;
    v6 = 2 * v4;
    v4 = (2 * v4) | 1;
    v7 = v6 + 2;
    if (v7 < a4)
    {
      v8 = *(a2 - 4);
      v9 = *(a2 - 8);
      if (v8 < v9 || v9 >= v8 && *(a2 - 2) < *(a2 - 6))
      {
        a2 -= 4;
        v4 = v7;
      }
    }

    *(v5 - 4) = *(a2 - 4);
    *(v5 - 2) = *(a2 - 2);
  }

  while (v4 <= (a4 - 2) / 2);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6 - 2;
  if (a6 >= 2)
  {
    v7 = v6 >> 1;
    v8 = a2 - 4 * (v6 >> 1);
    v9 = *(v8 - 4);
    v10 = *a4;
    if (v9 < v10 || v10 >= v9 && *(v8 - 2) < a4[1])
    {
      v11 = *a4;
      v12 = HIWORD(*a4);
      *a4 = v9;
      a4[1] = *(v8 - 2);
      if (v6 >= 2)
      {
        v13 = a2 - 4 * (v6 >> 1);
        while (1)
        {
          v14 = v7 - 1;
          v7 = (v7 - 1) >> 1;
          v8 = a2 - 4 * v7;
          v15 = *(v8 - 4);
          if (v15 >= v11 && (v15 > v11 || *(v8 - 2) >= v12))
          {
            break;
          }

          *(v13 - 4) = v15;
          *(v13 - 2) = *(v8 - 2);
          v13 = a2 - 4 * v7;
          if (v14 <= 1)
          {
            goto LABEL_14;
          }
        }

        v8 = v13;
      }

LABEL_14:
      *(v8 - 4) = v11;
      *(v8 - 2) = v12;
    }
  }
}

uint64_t SetRAWAttachments(uint64_t a1, __CVBuffer *a2, int a3, char a4, int a5, double a6, uint8x8_t a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = 16 - a4;
  v22 = 0x100u >> (16 - a4);
  v12 = *(a1 + 17);
  *&a6 = (1 << a3);
  v18 = *&a6;
  v19 = *(a1 + 68);
  valuePtr = v12;
  a7.i32[0] = *(a1 + 12);
  *bytes = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a7))), vdupq_lane_s32(*&a6, 0));
  setCVBufferAttachmentData(a2, *MEMORY[0x277CC4E88], bytes, 16, a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4EC0], kCFNumberSInt32Type, &valuePtr, a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4E68], kCFNumberSInt32Type, &v22, a5);
  v21 = (*(a1 + 18) >> v11) + v22;
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4EB0], kCFNumberSInt32Type, &v21, a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4EA8], kCFNumberFloat32Type, (a1 + 20), a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4E98], kCFNumberFloat32Type, (a1 + 24), a5);
  setCVBufferAttachmentData(a2, *MEMORY[0x277CC4E70], (a1 + 28), 36, a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4E78], kCFNumberFloat32Type, (a1 + 64), a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4EA0], kCFNumberSInt32Type, &v19, a5);
  setCVBufferAttachmentNumber(a2, @"ProResRAW_LargestDCQSS", kCFNumberSInt32Type, (a1 + 72), a5);
  v33[0] = -(0.5 / v18);
  v33[1] = v33[0];
  v33[2] = v33[0];
  v33[3] = 0.5 / v18;
  v33[4] = 0.5 / v18;
  v33[5] = 0.5 / v18;
  v34 = 0;
  v31[0] = 0.5 / v18;
  v31[1] = v33[0];
  v31[2] = 0.5 / v18;
  v31[3] = 0.5 / v18;
  v31[4] = v33[0];
  v31[5] = 0.5 / v18;
  v32 = 0;
  v29[0] = v33[0];
  v29[1] = 0.5 / v18;
  v29[2] = v33[0];
  v29[3] = v33[0];
  v29[4] = 0.5 / v18;
  v29[5] = v33[0];
  v30 = 0;
  v27[0] = 0.5 / v18;
  v27[1] = 0.5 / v18;
  v27[2] = 0.5 / v18;
  v27[3] = v33[0];
  v27[4] = v33[0];
  v27[5] = v33[0];
  v28 = 0;
  memset(v26, 0, sizeof(v26));
  if (!a3)
  {
    goto LABEL_12;
  }

  v13 = v33;
  if (valuePtr > 3)
  {
    if (valuePtr <= 5)
    {
      if (valuePtr == 4)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    if (valuePtr == 6)
    {
      goto LABEL_16;
    }

    if (valuePtr == 7)
    {
LABEL_15:
      v13 = v27;
      goto LABEL_17;
    }

LABEL_12:
    v13 = v26;
    goto LABEL_17;
  }

  if (valuePtr <= 1)
  {
    if (!valuePtr)
    {
      goto LABEL_17;
    }

    if (valuePtr != 1)
    {
      goto LABEL_12;
    }

LABEL_9:
    v13 = v31;
    goto LABEL_17;
  }

  if (valuePtr != 2)
  {
    goto LABEL_15;
  }

LABEL_16:
  v13 = v29;
LABEL_17:
  v14 = *(v13 + 1);
  *v23 = *v13;
  v24 = v14;
  setCVBufferAttachmentData(a2, *MEMORY[0x277CC4E90], v23, 32, a5);
  v15 = *(a1 + 152);
  v16 = *(a1 + 160);
  if (v16 != v15)
  {
    setCVBufferAttachmentData(a2, *MEMORY[0x277CC4E80], v15, (v16 - v15), a5);
  }

  return 0;
}

void setCVBufferAttachmentData(__CVBuffer *a1, const __CFString *a2, UInt8 *bytes, CFIndex length, int a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  if (v8)
  {
    v9 = v8;
    CVBufferSetAttachment(a1, a2, v8, kCVAttachmentMode_ShouldPropagate);

    CFRelease(v9);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109378;
    v10[1] = a5;
    v11 = 2080;
    v12 = "setCVBufferAttachmentData";
    _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Cannot create CFData\n", v10, 0x12u);
  }
}

void setCVBufferAttachmentNumber(__CVBuffer *a1, const __CFString *a2, CFNumberType theType, const unsigned int *valuePtr, int a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], theType, valuePtr);
  if (v8)
  {
    v9 = v8;
    CVBufferSetAttachment(a1, a2, v8, kCVAttachmentMode_ShouldPropagate);

    CFRelease(v9);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109378;
    v10[1] = a5;
    v11 = 2080;
    v12 = "setCVBufferAttachmentNumber";
    _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Cannot create CFNumber\n", v10, 0x12u);
  }
}

uint64_t ProResDecoder_CreateInstance(int a1, uint64_t a2, CFTypeRef *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v7 = *&CFUUIDGetUUIDBytes(v6);
  CFRelease(v6);
  v8 = 0;
  if (a1 <= 1634755431)
  {
    if (a1 != 1634743400 && a1 != 1634743416)
    {
      goto LABEL_24;
    }
  }

  else if ((a1 - 1634755432) > 0xB || ((1 << (a1 - 104)) & 0x8C1) == 0)
  {
    if (a1 == 1634759272 || a1 == 1634759278)
    {
      v8 = 1;
      goto LABEL_9;
    }

LABEL_24:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(keys) = 67109378;
      HIDWORD(keys) = v7;
      LOWORD(v38) = 2080;
      *(&v38 + 2) = "ProResDecoder_CreateInstance";
      _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): AppleProResHW decoder cannot decode unsupported codecType", &keys, 0x12u);
    }

    v9 = 4294954396;
LABEL_12:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      keys = -4227857662;
      LOWORD(v38) = 2080;
      *(&v38 + 2) = "ProResDecoder_CreateInstance";
      WORD5(v38) = 1024;
      HIDWORD(v38) = v9;
      v10 = MEMORY[0x277D86220];
LABEL_35:
      _os_log_impl(&dword_277780000, v10, OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): returning err = %d\n", &keys, 0x18u);
      return v9;
    }

    return v9;
  }

LABEL_9:
  kdebug_trace();
  VTVideoDecoderGetClassID();
  if (CMDerivedObjectCreate())
  {
    v9 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CreateInstance_cold_1();
    }

    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(DerivedStorage, 0x2C8uLL);
  *(DerivedStorage + 692) = 1;
  *(DerivedStorage + 452) = 24;
  *(DerivedStorage + 705) = 0;
  *(DerivedStorage + 700) = -1;
  *(DerivedStorage + 444) = v8;
  *(DerivedStorage + 432) = a1;
  v12 = (DerivedStorage + 708);
  *(DerivedStorage + 708) = v7;
  printCodecType(a1, v7);
  Connection = createConnection(*(DerivedStorage + 444), (DerivedStorage + 392), *(DerivedStorage + 708));
  if (Connection)
  {
    v9 = Connection;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CreateInstance_cold_2();
    }
  }

  else
  {
    v14 = *MEMORY[0x277CE26E8];
    keys = *MEMORY[0x277CE26F0];
    *&v38 = v14;
    v15 = *MEMORY[0x277CE26A8];
    *(&v38 + 1) = *MEMORY[0x277CE26C8];
    v39 = v15;
    v16 = *MEMORY[0x277CE2648];
    v40 = *MEMORY[0x277CE26E0];
    v41 = v16;
    v17 = *MEMORY[0x277CE26B8];
    v42 = *MEMORY[0x277CE2710];
    v43 = v17;
    v18 = *MEMORY[0x277CE26A0];
    v44 = *MEMORY[0x277CE2690];
    v45 = v18;
    v46 = @"ProResHW_CheckValue";
    v47 = @"ProResHW_TestSettings";
    v51 = 0;
    v52 = 0;
    v50 = 0;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *values = 0u;
    v29 = 0u;
    v19 = *MEMORY[0x277CE2688];
    v48 = *MEMORY[0x277CE2650];
    v49 = v19;
    v20 = CFDictionaryCreate(v5, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = vdupq_n_s64(v20);
      do
      {
        *&values[v22] = v23;
        v22 += 2;
      }

      while (v22 != 14);
      v24 = CFDictionaryCreate(v5, &keys, values, 14, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(DerivedStorage + 416) = v24;
      if (!v24 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_CreateInstance_cold_3();
      }

      CFRelease(v21);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CreateInstance_cold_4();
    }

    v9 = 0;
    *a3 = 0;
  }

  kdebug_trace();
  if (v9)
  {
    v25 = *(DerivedStorage + 392);
    if (v25)
    {
      closeUserClient(v25, *v12);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = *v12;
      LODWORD(keys) = 67109634;
      HIDWORD(keys) = v26;
      LOWORD(v38) = 2080;
      *(&v38 + 2) = "ProResDecoder_CreateInstance";
      WORD5(v38) = 1024;
      HIDWORD(v38) = v9;
      v10 = MEMORY[0x277D86220];
      goto LABEL_35;
    }
  }

  return v9;
}

uint64_t ProResDecoder_SetTestCallback(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *a2;
    *(DerivedStorage + 592) = *(a2 + 2);
    *(DerivedStorage + 576) = v4;
  }

  return 0;
}

void ProResDecoder_ParseMetadataExtension(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v29 = *MEMORY[0x277D85DE8];
  v20 = a4 - 8;
  *&__len[1] = a3;
  a2[1] = *a2;
  MetadataExtensionPtr = getMetadataExtensionPtr(&__len[1], &v20);
  if (v20)
  {
    v12 = MetadataExtensionPtr;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != 1)
  {
    return;
  }

  std::vector<unsigned char>::reserve(a2, v20);
  v13 = v20;
  if (v20 < 8)
  {
    goto LABEL_24;
  }

  v14 = MEMORY[0x277D86220];
  v15 = *&__len[1];
  while (1)
  {
    v16 = bswap32(*v15);
    v18 = bswap32(v15[1]);
    __len[0] = v16;
    MetadataSetTag = findMetadataSetTag(v15, v13, __len, &v18);
    if (MetadataSetTag <= 2)
    {
      break;
    }

    if (MetadataSetTag != 3 && MetadataSetTag != 4 && MetadataSetTag != 5)
    {
LABEL_29:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_ParseMetadataExtension();
      }

      goto LABEL_24;
    }

    checkGDCMetadataFromFrameMetaExt(__len[0], v18, *&__len[1]);
    copyMetadataSetToMetadataExt(*&__len[1], a2, __len[0]);
LABEL_23:
    v15 = (*&__len[1] + __len[0]);
    *&__len[1] = v15;
    v13 = v20 - __len[0];
    v20 = v13;
    if (v13 <= 7)
    {
      goto LABEL_24;
    }
  }

  if (MetadataSetTag <= 0)
  {
    if (MetadataSetTag == -1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        v22 = v7;
        v23 = 1024;
        v24 = 1057;
        v25 = 2080;
        v26 = "ProResDecoder_ParseMetadataExtension";
        v27 = 1024;
        v28 = v8;
        _os_log_impl(&dword_277780000, v14, OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): Invalid metadata present for frame %d in metadataExt\n", buf, 0x1Eu);
      }
    }

    else if (MetadataSetTag)
    {
      goto LABEL_29;
    }

    copyMetadataSetToMetadataExt(*&__len[1], a2, __len[0]);
    goto LABEL_23;
  }

  if (MetadataSetTag == 2)
  {
    extractISPDebugMetadataFromFrameMetaExt(__len[0], v18, *&__len[1], v20, a2, (a1 + 176));
    copyMetadataSetToMetadataExt(*&__len[1], a2, __len[0]);
    goto LABEL_23;
  }

  if (a2[1] - *a2 != 8)
  {
    copyMetadataSetToMetadataExt(*&__len[1], a2, __len[0]);
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResDecoder_ParseMetadataExtension();
  }

LABEL_24:
  a2[1] = *a2;
}

void std::vector<unsigned char>::reserve(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }
}

const __CFNumber *setBitstreamDepthFromFormatExtensions(const opaqueCMFormatDescription **a1, unsigned int *a2)
{
  result = CMFormatDescriptionGetExtension(*a1, *MEMORY[0x277CC02F8]);
  if (result)
  {

    return CFNumberGetValue(result, kCFNumberSInt32Type, a2);
  }

  else
  {
    *a2 = 24;
  }

  return result;
}

uint64_t ProResDecoder_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 96);
    if (v4)
    {
      HasHWError = ProResFrameReceiver::getHasHWError(v4);
    }

    else
    {
      HasHWError = 0;
    }

    ProResDecoder_Finalize(a1);
    if ((*(v3 + 600) & 1) == 0 && *(v3 + 500) && (*(v3 + 705) & 1) == 0)
    {
      v7 = APR_ImgFmt_4CC(*(v3 + 436));
      getRtMpeStr(0, *(v3 + 692), *(v3 + 696), &__p);
      v8 = *(v3 + 476);
      v9 = *(v3 + 480);
      v10 = *(v3 + 432);
      v11 = *(v3 + 436);
      v12 = v7[1];
      v13 = *(v3 + 688);
      v14 = *(v3 + 500);
      v15 = *(v3 + 708);
      v16 = *(v3 + 704);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v17 = *(v3 + 476);
        std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v8 = v17;
      }

      else
      {
        v18 = __p;
      }

      reportDecodeSessionInfo(v8, v9, v10, v11, v12, v13, v14, v15, HasHWError, v16, &v18);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      *(v3 + 705) = 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_Invalidate();
    }

    return 4294954385;
  }
}

void sub_277793550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProResDecoder_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ProResDecoder_WaitForAsynchronousFrames(a1, *(DerivedStorage + 708));
  DestroyFrameInfoQueue(DerivedStorage + 104);
  if (*(DerivedStorage + 408))
  {
    CVDataBufferPoolFlush();
    CFRelease(*(DerivedStorage + 408));
    *(DerivedStorage + 408) = 0;
  }

  v3 = *(DerivedStorage + 416);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 416) = 0;
  }

  v4 = *(DerivedStorage + 424);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 424) = 0;
  }

  if (*(DerivedStorage + 400))
  {
    FigFormatDescriptionRelease();
    *(DerivedStorage + 400) = 0;
  }

  v5 = *(DerivedStorage + 96);
  if (v5)
  {
    DestroyProResFrameReceiver(v5, (DerivedStorage + 16));
    *(DerivedStorage + 96) = 0;
  }

  v6 = *(DerivedStorage + 392);
  if (v6)
  {
    closeUserClient(v6, *(DerivedStorage + 708));
    *(DerivedStorage + 392) = 0;
  }

  pthread_cond_destroy((DerivedStorage + 344));
  pthread_mutex_destroy((DerivedStorage + 280));
  pthread_cond_destroy((DerivedStorage + 224));

  return pthread_mutex_destroy((DerivedStorage + 160));
}

__CFString *ProResDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<AppleProResHWDecoder %p>", a1);
  return Mutable;
}

uint64_t ProResDecoder_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  v175 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2 || !a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CopyProperty();
    }

    return 4294954394;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CopyProperty();
    }

    return 4294954385;
  }

  v8 = DerivedStorage;
  if (!CFDictionaryContainsKey(*(DerivedStorage + 416), a2))
  {
    return 4294954396;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26F0]))
  {
    valuePtr = 0;
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v10 = Mutable;
      v11 = *(v8 + 432);
      if (v11 <= 1634755431)
      {
        if (v11 > 1634743399)
        {
          if (v11 == 1634743400 || v11 == 1634743416)
          {
            if (*(v8 + 452) == 32)
            {
              valuePtr = 1932812659;
              v53 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v53);
              CFRelease(v53);
              if (*(v8 + 600) == 1)
              {
                valuePtr = 645084275;
                v54 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v54);
                CFRelease(v54);
              }

              valuePtr = 1949589875;
              v55 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v55);
              CFRelease(v55);
              if (*(v8 + 600) == 1)
              {
                valuePtr = 645149811;
                v56 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v56);
                CFRelease(v56);
              }

              valuePtr = 2016698739;
              v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v57);
              CFRelease(v57);
              if (*(v8 + 600) == 1)
              {
                valuePtr = 645411955;
                v58 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v58);
                CFRelease(v58);
              }

              valuePtr = 1983144248;
              v59 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v59);
              CFRelease(v59);
              if (*(v8 + 600) == 1)
              {
                valuePtr = 645280824;
                v60 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v60);
                CFRelease(v60);
              }

              valuePtr = 1937126452;
              v61 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v61);
              CFRelease(v61);
              valuePtr = 645101108;
              v62 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v62);
              CFRelease(v62);
              valuePtr = 1953903668;
              v63 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v63);
              CFRelease(v63);
              valuePtr = 645166644;
              v64 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v64);
              CFRelease(v64);
              valuePtr = 2016687156;
              v65 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v65);
              CFRelease(v65);
              valuePtr = 645428788;
              v66 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v66);
              CFRelease(v66);
              valuePtr = 875836534;
              v67 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v67);
              CFRelease(v67);
              valuePtr = 641234484;
              goto LABEL_31;
            }

            valuePtr = 1937126452;
            v88 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v88);
            CFRelease(v88);
            valuePtr = 645101108;
            v89 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v89);
            CFRelease(v89);
            valuePtr = 1953903668;
            v90 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v90);
            CFRelease(v90);
            valuePtr = 645166644;
            v91 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v91);
            CFRelease(v91);
            valuePtr = 2016687156;
            v92 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v92);
            CFRelease(v92);
            valuePtr = 645428788;
            v93 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v93);
            CFRelease(v93);
            valuePtr = 875836534;
            v94 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v94);
            CFRelease(v94);
            valuePtr = 641234484;
            v95 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v95);
            CFRelease(v95);
            valuePtr = 1932812659;
            v96 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v96);
            CFRelease(v96);
            if (*(v8 + 600) == 1)
            {
              valuePtr = 645084275;
              v97 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v97);
              CFRelease(v97);
            }

            valuePtr = 1949589875;
            v98 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v98);
            CFRelease(v98);
            if (*(v8 + 600) == 1)
            {
              valuePtr = 645149811;
              v99 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v99);
              CFRelease(v99);
            }

            valuePtr = 2016698739;
            v100 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v100);
            CFRelease(v100);
            if (*(v8 + 600) == 1)
            {
              valuePtr = 645411955;
              v101 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v101);
              CFRelease(v101);
            }

            valuePtr = 1983144248;
            v102 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v102);
            CFRelease(v102);
            if (*(v8 + 600) != 1)
            {
              goto LABEL_33;
            }

            v34 = 645280824;
            goto LABEL_30;
          }
        }

        else
        {
          if (v11 == 1634742376)
          {
            valuePtr = 1278226742;
            v81 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v81);
            CFRelease(v81);
            valuePtr = 642527542;
            v82 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v82);
            CFRelease(v82);
            valuePtr = 1278226738;
            v83 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v83);
            CFRelease(v83);
            valuePtr = 642527538;
            v84 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v84);
            CFRelease(v84);
            valuePtr = 1278226736;
            v85 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v85);
            CFRelease(v85);
            valuePtr = 642527536;
            v86 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v86);
            CFRelease(v86);
            valuePtr = 1278226488;
            v87 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v87);
            CFRelease(v87);
            valuePtr = 642527288;
            goto LABEL_31;
          }

          if (v11 == 1634742888)
          {
            valuePtr = 1937125936;
            v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v39);
            CFRelease(v39);
            valuePtr = 645101104;
            v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v40);
            CFRelease(v40);
            valuePtr = 1953903152;
            v41 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v41);
            CFRelease(v41);
            valuePtr = 645166640;
            v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v42);
            CFRelease(v42);
            valuePtr = 2016686640;
            v43 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v43);
            CFRelease(v43);
            valuePtr = 645428784;
            v44 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v44);
            CFRelease(v44);
            if (*(v8 + 557) == 1)
            {
              valuePtr = 762869296;
              v45 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v45);
              CFRelease(v45);
              valuePtr = 796423728;
              v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              CFArrayAppendValue(v10, v46);
              CFRelease(v46);
            }

            valuePtr = 875704438;
            v47 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v47);
            CFRelease(v47);
            valuePtr = 641234480;
            v48 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v48);
            CFRelease(v48);
            if (*(v8 + 557) != 1)
            {
              goto LABEL_33;
            }

            valuePtr = 758674992;
            v49 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v49);
            CFRelease(v49);
            v34 = 2084075056;
            goto LABEL_30;
          }
        }
      }

      else
      {
        if ((v11 - 1634755432) <= 0xB && ((1 << (v11 - 104)) & 0x8C1) != 0)
        {
          valuePtr = 1937125938;
          v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v12);
          CFRelease(v12);
          valuePtr = 645101106;
          v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v13);
          CFRelease(v13);
          valuePtr = 1953903154;
          v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v14);
          CFRelease(v14);
          valuePtr = 645166642;
          v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v15);
          CFRelease(v15);
          valuePtr = 2016686642;
          v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v16);
          CFRelease(v16);
          valuePtr = 645428786;
          v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v17);
          CFRelease(v17);
          if (*(v8 + 557) == 1)
          {
            valuePtr = 762869298;
            v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v18);
            CFRelease(v18);
            valuePtr = 796423730;
            v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v19);
            CFRelease(v19);
          }

          valuePtr = 875704950;
          v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v20);
          CFRelease(v20);
          v21 = 641234484;
LABEL_29:
          v34 = v21 - 2;
LABEL_30:
          valuePtr = v34;
LABEL_31:
          v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v35);
LABEL_32:
          CFRelease(v35);
LABEL_33:
          result = 0;
          *a4 = v10;
          return result;
        }

        if (v11 == 1634759272 || v11 == 1634759278)
        {
          if (!*(v8 + 520))
          {
            valuePtr = 1647392369;
            v120 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v120);
            CFRelease(v120);
            if (*(v8 + 554) != 1)
            {
              goto LABEL_33;
            }

            valuePtr = 1651519798;
            v121 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v121);
            CFRelease(v121);
            valuePtr = 1651798066;
            v122 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v122);
            CFRelease(v122);
            v51 = 1650942776;
            valuePtr = 1650946098;
            v123 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v123);
            CFRelease(v123);
            valuePtr = 1919381552;
            v124 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v124);
            CFRelease(v124);
            valuePtr = 1735553072;
            v125 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v125);
            CFRelease(v125);
            valuePtr = 1734504496;
            v126 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v126);
            CFRelease(v126);
            valuePtr = 1650946096;
            v127 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v127);
            CFRelease(v127);
            valuePtr = 1919378232;
            v128 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v128);
            CFRelease(v128);
            valuePtr = 1735549752;
            v129 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v129);
            CFRelease(v129);
            valuePtr = 1734501176;
            goto LABEL_109;
          }

LABEL_48:
          v51 = 1651520304;
          valuePtr = 1651521076;
LABEL_109:
          v130 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v130);
          CFRelease(v130);
          valuePtr = v51;
          goto LABEL_31;
        }
      }

      CFRelease(Mutable);
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (result)
      {
        ProResDecoder_CopyProperty();
        return 0;
      }

      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v36 = *(v8 + 708);
      *buf = 67109378;
      v172 = v36;
      v173 = 2080;
      v174 = "ProResDecoder_CopyProperty";
      v37 = MEMORY[0x277D86220];
      v38 = "AppleProResHW (0x%x): %s(): CFArrayCreateMutable failed!";
LABEL_51:
      _os_log_impl(&dword_277780000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0x12u);
    }

    return 4294954392;
  }

  if (!CFEqual(a2, *MEMORY[0x277CE26E8]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE26C8]))
    {
      v10 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v50 = CFNumberCreate(0, kCFNumberSInt32Type, (v8 + 528));
      CFDictionaryAddValue(v10, *MEMORY[0x277CE2770], v50);
      CFRelease(v50);
      v35 = CFNumberCreate(0, kCFNumberSInt32Type, (v8 + 536));
      CFDictionaryAddValue(v10, *MEMORY[0x277CE2768], v35);
      goto LABEL_32;
    }

    if (CFEqual(a2, *MEMORY[0x277CE26A8]))
    {
      valuePtr = 0;
      v79 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (v79)
      {
        v10 = v79;
        v80 = *(v8 + 432);
        if (v80 <= 1634755431)
        {
          if (v80 > 1634743399)
          {
            if (v80 == 1634743400 || v80 == 1634743416)
            {
              v34 = 875836534;
              goto LABEL_30;
            }
          }

          else
          {
            if (v80 == 1634742376)
            {
              v34 = 1278226488;
              goto LABEL_30;
            }

            if (v80 == 1634742888)
            {
              v34 = 875704438;
              goto LABEL_30;
            }
          }
        }

        else
        {
          if ((v80 - 1634755432) <= 0xB && ((1 << (v80 - 104)) & 0x8C1) != 0)
          {
            v34 = 875704950;
            goto LABEL_30;
          }

          if (v80 == 1634759272 || v80 == 1634759278)
          {
            goto LABEL_48;
          }
        }

        CFRelease(v79);
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (result)
        {
          ProResDecoder_CopyProperty();
          return 0;
        }

        return result;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        return 4294954392;
      }

LABEL_50:
      v52 = *(v8 + 708);
      *buf = 67109378;
      v172 = v52;
      v173 = 2080;
      v174 = "ProResDecoder_CopyProperty";
      v37 = MEMORY[0x277D86220];
      v38 = "AppleProResHW (0x%x): %s():  CFArrayCreateMutable failed!";
      goto LABEL_51;
    }

    if (CFEqual(a2, *MEMORY[0x277CE26E0]))
    {
      CFRetain(*(v8 + 424));
      result = 0;
      v131 = *(v8 + 424);
LABEL_159:
      *a4 = v131;
      return result;
    }

    if (CFEqual(a2, *MEMORY[0x277CE2648]))
    {
      result = 0;
      v165 = MEMORY[0x277CBED10];
LABEL_158:
      v131 = *v165;
      goto LABEL_159;
    }

    if (CFEqual(a2, *MEMORY[0x277CE2710]))
    {
LABEL_143:
      result = 0;
      v165 = MEMORY[0x277CBED28];
      goto LABEL_158;
    }

    if (CFEqual(a2, *MEMORY[0x277CE26B8]))
    {
      result = 0;
      if (*(v8 + 692))
      {
        v165 = MEMORY[0x277CBED28];
      }

      else
      {
        v165 = MEMORY[0x277CBED10];
      }

      goto LABEL_158;
    }

    if (CFEqual(a2, *MEMORY[0x277CE2690]))
    {
      result = 0;
      v166 = *(v8 + 696);
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CE26A0]))
      {
        if (CFEqual(a2, *MEMORY[0x277CE2650]))
        {
          goto LABEL_143;
        }

        if (CFEqual(a2, *MEMORY[0x277CE2688]))
        {
          *buf = 53;
          v167 = buf;
          v168 = a3;
          v169 = kCFNumberSInt32Type;
        }

        else
        {
          if (!CFEqual(a2, @"ProResHW_CheckValue"))
          {
            result = CFEqual(a2, @"ProResHW_TestSettings");
            if (!result)
            {
              return result;
            }

            result = 0;
            v166 = *(v8 + 600);
            goto LABEL_155;
          }

          v167 = (v8 + 512);
          v168 = a3;
          v169 = kCFNumberSInt64Type;
        }

        v131 = CFNumberCreate(v168, v169, v167);
        result = 0;
        goto LABEL_159;
      }

      result = 0;
      v166 = *(v8 + 472);
    }

LABEL_155:
    if (v166)
    {
      v165 = MEMORY[0x277CBED28];
    }

    else
    {
      v165 = MEMORY[0x277CBED10];
    }

    goto LABEL_158;
  }

  valuePtr = 0;
  v23 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!v23)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 4294954392;
    }

    goto LABEL_50;
  }

  v10 = v23;
  v24 = *(v8 + 432);
  if (v24 <= 1634755431)
  {
    if (v24 > 1634743399)
    {
      if (v24 == 1634743400 || v24 == 1634743416)
      {
        if (*(v8 + 452) == 32)
        {
          valuePtr = 1983144248;
          v104 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v104);
          CFRelease(v104);
          if (*(v8 + 600) == 1)
          {
            valuePtr = 645280824;
            v105 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v105);
            CFRelease(v105);
          }

          valuePtr = 2016698739;
          v106 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v106);
          CFRelease(v106);
          if (*(v8 + 600) == 1)
          {
            valuePtr = 645411955;
            v107 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v107);
            CFRelease(v107);
          }

          valuePtr = 1949589875;
          v108 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v108);
          CFRelease(v108);
          if (*(v8 + 600) == 1)
          {
            valuePtr = 645149811;
            v109 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v109);
            CFRelease(v109);
          }

          valuePtr = 1932812659;
          v110 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v110);
          CFRelease(v110);
          if (*(v8 + 600) == 1)
          {
            valuePtr = 645084275;
            v111 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v111);
            CFRelease(v111);
          }

          valuePtr = 875836534;
          v112 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v112);
          CFRelease(v112);
          valuePtr = 641234484;
          v113 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v113);
          CFRelease(v113);
          valuePtr = 2016687156;
          v114 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v114);
          CFRelease(v114);
          valuePtr = 645428788;
          v115 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v115);
          CFRelease(v115);
          valuePtr = 1953903668;
          v116 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v116);
          CFRelease(v116);
          valuePtr = 645166644;
          v117 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v117);
          CFRelease(v117);
          valuePtr = 1937126452;
          v118 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v118);
          CFRelease(v118);
          v119 = 30260;
        }

        else
        {
          valuePtr = 875836534;
          v139 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v139);
          CFRelease(v139);
          valuePtr = 641234484;
          v140 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v140);
          CFRelease(v140);
          valuePtr = 2016687156;
          v141 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v141);
          CFRelease(v141);
          valuePtr = 645428788;
          v142 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v142);
          CFRelease(v142);
          valuePtr = 1953903668;
          v143 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v143);
          CFRelease(v143);
          valuePtr = 645166644;
          v144 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v144);
          CFRelease(v144);
          valuePtr = 1937126452;
          v145 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v145);
          CFRelease(v145);
          valuePtr = 645101108;
          v146 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v146);
          CFRelease(v146);
          valuePtr = 1983144248;
          v147 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v147);
          CFRelease(v147);
          if (*(v8 + 600) == 1)
          {
            valuePtr = 645280824;
            v148 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v148);
            CFRelease(v148);
          }

          valuePtr = 2016698739;
          v149 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v149);
          CFRelease(v149);
          if (*(v8 + 600) == 1)
          {
            valuePtr = 645411955;
            v150 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v150);
            CFRelease(v150);
          }

          valuePtr = 1949589875;
          v151 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v151);
          CFRelease(v151);
          if (*(v8 + 600) == 1)
          {
            valuePtr = 645149811;
            v152 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            CFArrayAppendValue(v10, v152);
            CFRelease(v152);
          }

          valuePtr = 1932812659;
          v153 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v153);
          CFRelease(v153);
          if (*(v8 + 600) != 1)
          {
            goto LABEL_33;
          }

          v119 = 13427;
        }

        v34 = v119 | 0x26730000;
        goto LABEL_30;
      }
    }

    else
    {
      if (v24 == 1634742376)
      {
        valuePtr = 1278226488;
        v132 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v132);
        CFRelease(v132);
        valuePtr = 642527288;
        v133 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v133);
        CFRelease(v133);
        valuePtr = 1278226736;
        v134 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v134);
        CFRelease(v134);
        valuePtr = 642527536;
        v135 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v135);
        CFRelease(v135);
        valuePtr = 1278226738;
        v136 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v136);
        CFRelease(v136);
        valuePtr = 642527538;
        v137 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v137);
        CFRelease(v137);
        valuePtr = 1278226742;
        v138 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v138);
        CFRelease(v138);
        v34 = 642527542;
        goto LABEL_30;
      }

      if (v24 == 1634742888)
      {
        if (*(v8 + 557) == 1)
        {
          valuePtr = 2084075056;
          v68 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v68);
          CFRelease(v68);
          valuePtr = 758674992;
          v69 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v69);
          CFRelease(v69);
        }

        valuePtr = 875704438;
        v70 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v70);
        CFRelease(v70);
        valuePtr = 641234480;
        v71 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v71);
        CFRelease(v71);
        if (*(v8 + 557) == 1)
        {
          valuePtr = 796423728;
          v72 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v72);
          CFRelease(v72);
          valuePtr = 762869296;
          v73 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v73);
          CFRelease(v73);
        }

        valuePtr = 2016686640;
        v74 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v74);
        CFRelease(v74);
        valuePtr = 645428784;
        v75 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v75);
        CFRelease(v75);
        valuePtr = 1953903152;
        v76 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v76);
        CFRelease(v76);
        valuePtr = 645166640;
        v77 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v77);
        CFRelease(v77);
        valuePtr = 1937125936;
        v78 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v78);
        CFRelease(v78);
        v34 = 645101104;
        goto LABEL_30;
      }
    }
  }

  else
  {
    if ((v24 - 1634755432) <= 0xB && ((1 << (v24 - 104)) & 0x8C1) != 0)
    {
      valuePtr = 875704950;
      v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFArrayAppendValue(v10, v25);
      CFRelease(v25);
      valuePtr = 641234482;
      v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFArrayAppendValue(v10, v26);
      CFRelease(v26);
      if (*(v8 + 557) == 1)
      {
        valuePtr = 796423730;
        v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v27);
        CFRelease(v27);
        valuePtr = 762869298;
        v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v28);
        CFRelease(v28);
      }

      valuePtr = 2016686642;
      v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFArrayAppendValue(v10, v29);
      CFRelease(v29);
      valuePtr = 645428786;
      v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFArrayAppendValue(v10, v30);
      CFRelease(v30);
      valuePtr = 1953903154;
      v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFArrayAppendValue(v10, v31);
      CFRelease(v31);
      valuePtr = 645166642;
      v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFArrayAppendValue(v10, v32);
      CFRelease(v32);
      valuePtr = 1937125938;
      v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFArrayAppendValue(v10, v33);
      CFRelease(v33);
      v21 = 645101108;
      goto LABEL_29;
    }

    if (v24 == 1634759272 || v24 == 1634759278)
    {
      if (*(v8 + 520))
      {
        valuePtr = 1651520304;
        v103 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v10, v103);
        CFRelease(v103);
        v34 = 1651521076;
      }

      else
      {
        if (*(v8 + 554) == 1)
        {
          valuePtr = 1919378232;
          v154 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v154);
          CFRelease(v154);
          valuePtr = 1735549752;
          v155 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v155);
          CFRelease(v155);
          valuePtr = 1734501176;
          v156 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v156);
          CFRelease(v156);
          valuePtr = 1650942776;
          v157 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v157);
          CFRelease(v157);
          valuePtr = 1919381552;
          v158 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v158);
          CFRelease(v158);
          valuePtr = 1735553072;
          v159 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v159);
          CFRelease(v159);
          valuePtr = 1734504496;
          v160 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v160);
          CFRelease(v160);
          valuePtr = 1650946096;
          v161 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v161);
          CFRelease(v161);
          valuePtr = 1650946098;
          v162 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v162);
          CFRelease(v162);
          valuePtr = 1651798066;
          v163 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v163);
          CFRelease(v163);
          valuePtr = 1651519798;
          v164 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v10, v164);
          CFRelease(v164);
        }

        v34 = 1647392369;
      }

      goto LABEL_30;
    }
  }

  CFRelease(v23);
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ProResDecoder_CopyProperty();
    return 0;
  }

  return result;
}

uint64_t ProResDecoder_SetProperty(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_SetProperty();
    }

    return 4294954394;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_SetProperty();
    }

    return 4294954385;
  }

  v6 = DerivedStorage;
  CFStringGetCString(a2, buffer, 100, 0);
  v7 = *(v6 + 416);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_SetProperty();
    }

    return 4294954396;
  }

  if (!CFDictionaryContainsKey(v7, a2))
  {
    return 4294954396;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26C8]))
  {
    LODWORD(valuePtr) = 0;
    v26 = 0;
    if (a3)
    {
      v8 = 3758097090;
      Value = CFDictionaryGetValue(a3, *MEMORY[0x277CE2770]);
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      v10 = CFDictionaryGetValue(a3, *MEMORY[0x277CE2768]);
      CFNumberGetValue(v10, kCFNumberSInt32Type, &v26);
      v11 = valuePtr;
      if (!valuePtr || (v12 = v26) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_SetProperty();
        }

        goto LABEL_82;
      }

      v13 = *(v6 + 476) / valuePtr;
      if (v13 != (*(v6 + 480) / v26))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_SetProperty();
        }

        goto LABEL_82;
      }

      if (v13 != 8.0 && v13 != 2.0 && v13 != 4.0)
      {
LABEL_82:
        if (cf)
        {
          CFRelease(cf);
        }

        return v8;
      }

      if (v13 == 4.0)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }

      if (v13 == 2.0)
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
      v11 = *(v6 + 476);
      LODWORD(valuePtr) = v11;
      v12 = *(v6 + 480);
      v26 = v12;
    }

    *(v6 + 520) = v14;
    v15 = v11;
    *(v6 + 528) = v11;
    *(v6 + 536) = v12;
    if (*v6 == 1)
    {
LABEL_81:
      v8 = 0;
      goto LABEL_82;
    }

    v16 = ((v11 + 15) & 0xFFFFFFF0) - v11;
    v17 = ((v12 + 15) & 0xFFFFFFF0) - v12;
    v18 = *(v6 + 444);
    if (v18)
    {
      if (v18 != 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_SetProperty();
        }

        v8 = 4294954394;
        goto LABEL_82;
      }

      createPixelBufferAttributesDictionary(&cf, v11, v12, v16, v17, 1380013906, 1, 0, *(v6 + 600), (v6 + 552));
      goto LABEL_80;
    }

    v21 = *(v6 + 432);
    if (v21 <= 1634743415)
    {
      if (v21 == 1634742376)
      {
        createPixelBufferAttributesDictionary(&cf, v11, v12, v16, v17, 875573280, 0, 0, *(v6 + 600), (v6 + 552));
        goto LABEL_80;
      }

      if (v21 == 1634742888)
      {
        createPixelBufferAttributesDictionary(&cf, v11, v12, v16, v17, 875704352, 0, 0, *(v6 + 600), (v6 + 552));
        goto LABEL_80;
      }

      v23 = 13416;
    }

    else
    {
      if ((v21 - 1634755432) <= 0xB && ((1 << (v21 - 104)) & 0x8C1) != 0)
      {
        createPixelBufferAttributesDictionary(&cf, v11, v12, v16, v17, 875704864, 0, 0, *(v6 + 600), (v6 + 552));
LABEL_80:
        VTDecoderSessionSetPixelBufferAttributes();
        goto LABEL_81;
      }

      if (v21 == 1634759276)
      {
        createPixelBufferAttributesDictionary(&cf, v11, v12, v16, v17, 1634759276, 0, 0, *(v6 + 600), (v6 + 552));
        goto LABEL_80;
      }

      v23 = 13432;
    }

    if (v21 != (v23 | 0x61700000))
    {
      v8 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_SetProperty();
      }

      goto LABEL_82;
    }

    createPixelBufferAttributesDictionary(&cf, v15, v12, v16, v17, 875836448, 0, 0, *(v6 + 600), (v6 + 552));
    goto LABEL_80;
  }

  if (CFEqual(a2, @"ProResHW_CheckValue"))
  {
    if (a3)
    {
      valuePtr = 0;
      CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
      v8 = 0;
      *(v6 + 512) = valuePtr;
    }

    else
    {
      v8 = 0;
      *(v6 + 512) = 0;
    }
  }

  else if (CFEqual(a2, @"ProResHW_TestSettings"))
  {
    v8 = 0;
    if (a3)
    {
      *(v6 + 600) = CFEqual(a3, *MEMORY[0x277CBED28]) != 0;
    }

    else
    {
      *(v6 + 600) = 0;
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CE26B8]))
  {
    v8 = 0;
    if (a3)
    {
      v22 = CFEqual(a3, *MEMORY[0x277CBED28]) != 0;
    }

    else
    {
      v22 = 1;
    }

    *(v6 + 692) = v22;
  }

  else if (CFEqual(a2, *MEMORY[0x277CE2690]))
  {
    v8 = 0;
    if (a3)
    {
      *(v6 + 696) = CFEqual(a3, *MEMORY[0x277CBED28]) != 0;
    }

    else
    {
      *(v6 + 696) = 0;
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CE26A0]))
  {
    v8 = 0;
    if (a3)
    {
      *(v6 + 472) = CFBooleanGetValue(a3) != 0;
    }

    else
    {
      *(v6 + 472) = 0;
    }
  }

  else
  {
    return 4294954395;
  }

  return v8;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void ProResDecoder_WaitForAsynchronousFrames(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    pthread_mutex_lock((DerivedStorage + 160));
    gettimeofday(&v11, 0);
    v4 = 1200;
    if (*(v3 + 600) == 1)
    {
      v5 = atomic_load((v3 + 152));
      v4 = 1200 * v5;
    }

    v12.tv_sec = v4 + v11.tv_sec;
    v12.tv_nsec = 1000 * v11.tv_usec;
    if (atomic_load((v3 + 152)))
    {
      do
      {
        v7 = pthread_cond_timedwait((v3 + 224), (v3 + 160), &v12);
        if (atomic_load((v3 + 152)))
        {
          v9 = v7 == 0;
        }

        else
        {
          v9 = 0;
        }
      }

      while (v9);
      v10 = v7;
      pthread_mutex_unlock((v3 + 160));
      if (v10)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_WaitForAsynchronousFrames();
        }
      }
    }

    else
    {

      pthread_mutex_unlock((v3 + 160));
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResDecoder_WaitForAsynchronousFrames();
  }
}

uint64_t ProResDecoder_StartSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  outputStructCnt = 24;
  cf = 0;
  if (!a1 || !a2 || !a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    v12 = 4294954394;
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = *(DerivedStorage + 708);
  kdebug_trace();
  pthread_mutex_init((DerivedStorage + 280), 0);
  pthread_cond_init((DerivedStorage + 344), 0);
  *(DerivedStorage + 272) = 1;
  pthread_mutex_init((DerivedStorage + 160), 0);
  pthread_cond_init((DerivedStorage + 224), 0);
  atomic_store(0, (DerivedStorage + 152));
  *DerivedStorage = a2;
  if (*(DerivedStorage + 432) != CMFormatDescriptionGetMediaSubType(a3))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    v12 = 4294954578;
    goto LABEL_19;
  }

  FigFormatDescriptionRelease();
  *(DerivedStorage + 400) = FigFormatDescriptionRetain();
  *(DerivedStorage + 504) = 0x400000000008;
  Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
  v7 = Dimensions;
  v8 = HIDWORD(Dimensions);
  if (*(DerivedStorage + 444) == 1)
  {
    v9 = 16;
  }

  else
  {
    v9 = 8;
  }

  NumSlices = getNumSlices(Dimensions, SHIDWORD(Dimensions), v9);
  v11 = NumSlices;
  if (NumSlices < 9 || NumSlices > *(DerivedStorage + 504) << 15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = *(DerivedStorage + 504) << 15;
      *buf = 67110914;
      v34 = v25;
      v35 = 0x8200000048D0400;
      v36 = "ProResDecoder_StartSession";
      v37 = 1024;
      v38 = v7;
      v39 = 1024;
      LODWORD(v40) = v8;
      WORD2(v40) = 1024;
      *(&v40 + 6) = v11;
      WORD5(v40) = 1024;
      HIDWORD(v40) = 9;
      LOWORD(v41) = 1024;
      *(&v41 + 2) = v15;
      _os_log_error_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ERROR AppleProResHW (0x%x): %d: %s(): %d x %d results in maxSlices %d Under %d or Over %d\n", buf, 0x36u);
    }

    v12 = 4294954386;
    goto LABEL_19;
  }

  if ((v7 - 65537) <= 0xFFFF000E)
  {
    v12 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    goto LABEL_19;
  }

  if ((v8 - 65537) <= 0xFFFF000E)
  {
    v12 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    goto LABEL_19;
  }

  v14 = v8 * v7;
  if ((v8 * v7) >= 0x10000001)
  {
    v12 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    goto LABEL_19;
  }

  *(DerivedStorage + 476) = v7;
  *(DerivedStorage + 480) = v8;
  *(DerivedStorage + 492) = ((v7 + 15) & 0x3FFF0) - v7;
  *(DerivedStorage + 496) = ((v8 + 15) & 0x3FFF0) - v8;
  *(DerivedStorage + 520) = 0;
  setBitstreamDepthFromFormatExtensions((DerivedStorage + 400), (DerivedStorage + 452));
  if ((v14 >> 10 < 0x7E9) | *(DerivedStorage + 696) & 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  *(DerivedStorage + 468) = v16;
  inputStruct[0] = *(DerivedStorage + 444);
  inputStruct[1] = v16;
  v29 = 0xFFFFFFFFLL;
  v30 = *(DerivedStorage + 708);
  if (IOConnectCallStructMethod(*(DerivedStorage + 392), 0, inputStruct, 0x14uLL, &outputStruct, &outputStructCnt))
  {
    v12 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    goto LABEL_19;
  }

  v24 = (DerivedStorage + 552);
  *(DerivedStorage + 552) = outputStruct;
  *(DerivedStorage + 568) = v27;
  if (v14 <= 0x870000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  *(DerivedStorage + 460) = v17;
  if (v14 > 0x870000)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  CreateFrameInfoQueue(DerivedStorage + 104, *(DerivedStorage + 552) << v18);
  *buf = *(DerivedStorage + 392);
  LOBYTE(v37) = 0;
  HIBYTE(v37) = *(DerivedStorage + 89);
  *&v40 = DerivedStorage + 104;
  *(&v40 + 1) = DerivedStorage + 152;
  v41 = DerivedStorage + 160;
  v42 = DerivedStorage + 224;
  v43 = DerivedStorage + 272;
  v44 = DerivedStorage + 280;
  v45 = DerivedStorage + 344;
  v35 = *DerivedStorage;
  v47 = 0;
  v46 = (*(DerivedStorage + 468) & 0xFFFFFFFE) == 2;
  v48 = *(DerivedStorage + 552);
  if (v35 == 1)
  {
    v47 = DerivedStorage + 576;
  }

  ProResFrameReceiver = CreateProResFrameReceiver((DerivedStorage + 96), buf, (DerivedStorage + 16), (DerivedStorage + 80), *(DerivedStorage + 444), *(DerivedStorage + 708));
  if (ProResFrameReceiver)
  {
    v12 = ProResFrameReceiver;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    goto LABEL_19;
  }

  v20 = *(DerivedStorage + 444);
  if (!v20)
  {
    *(DerivedStorage + 448) = 3;
    v21 = *(DerivedStorage + 432);
    if (v21 <= 1634743415)
    {
      if (v21 != 1634742376)
      {
        if (v21 == 1634742888)
        {
          createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 875704352, 0, 0, *(DerivedStorage + 600), v24);
          v22 = 1;
          goto LABEL_66;
        }

        v23 = 13416;
LABEL_62:
        if (v21 == (v23 | 0x61700000))
        {
          createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 875836448, 0, *(DerivedStorage + 452) == 32, *(DerivedStorage + 600), v24);
          v22 = 3;
          goto LABEL_66;
        }

LABEL_73:
        v12 = 3758097084;
        *(DerivedStorage + 448) = 8;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_StartSession();
        }

        goto LABEL_19;
      }

      createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 875573280, 0, 0, *(DerivedStorage + 600), v24);
    }

    else
    {
      if ((v21 - 1634755432) <= 0xB && ((1 << (v21 - 104)) & 0x8C1) != 0)
      {
        createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 875704864, 0, 0, *(DerivedStorage + 600), v24);
        v22 = 2;
LABEL_66:
        *(DerivedStorage + 440) = v22;
        goto LABEL_70;
      }

      if (v21 != 1634759276)
      {
        v23 = 13432;
        goto LABEL_62;
      }

      if (*(DerivedStorage + 555) != 1)
      {
        goto LABEL_73;
      }

      *(DerivedStorage + 448) = 1;
      createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 1634759276, 0, 0, *(DerivedStorage + 600), v24);
    }

    *(DerivedStorage + 440) = 0;
    goto LABEL_70;
  }

  if (v20 == 1)
  {
    *(DerivedStorage + 448) = 0;
    createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 1380013856, 1, 0, *(DerivedStorage + 600), v24);
LABEL_70:
    if (a2 != 1)
    {
      VTDecoderSessionSetPixelBufferAttributes();
    }

    createSuggestedQualityOfServiceTiers(*(DerivedStorage + 432), *(DerivedStorage + 476), *(DerivedStorage + 480), (DerivedStorage + 424));
    v12 = 0;
    goto LABEL_19;
  }

  v12 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResDecoder_StartSession();
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  kdebug_trace();
  return v12;
}

uint64_t ProResDecoder_DecodeFrame(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, char a4, _DWORD *a5)
{
  v153 = *MEMORY[0x277D85DE8];
  texture = 0;
  cf = 0;
  blockBufferOut = 0;
  dataPointerOut = 0;
  v152 = 0;
  v151 = 0u;
  *__p = 0u;
  v149 = 0u;
  v148 = 0u;
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  *v141 = 0u;
  v139 = 0;
  v138 = 0;
  v140 = 0;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  *v122 = 0u;
  inputStruct = 0u;
  memset(v121, 0, sizeof(v121));
  v119 = 0;
  memset(v118, 0, sizeof(v118));
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v113 = 0;
  v111 = 0u;
  v112 = 0u;
  v110 = **&MEMORY[0x277CC08F0];
  v109 = v110;
  v108 = 24;
  FormatDescription = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  CMSampleBufferGetOutputDuration(&v106, a3);
  v9 = (DerivedStorage + 604);
  *(DerivedStorage + 604) = v106;
  if ((*(DerivedStorage + 616) & 0x1D) == 1)
  {
    if ((*(DerivedStorage + 640) & 0x1D) == 1)
    {
      CMSampleBufferGetDecodeTimeStamp(&v106, a3);
      v10 = DerivedStorage + 628;
      v110 = v106;
      lhs = v106;
      rhs = *(DerivedStorage + 628);
      CMTimeSubtract(&v106, &lhs, &rhs);
      *v9 = *&v106.value;
      *(DerivedStorage + 620) = v106.epoch;
      *(DerivedStorage + 628) = *&v110.value;
      epoch = v110.epoch;
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&v106, a3);
      v109 = v106;
      lhs = v106;
      v10 = DerivedStorage + 652;
      rhs = *(DerivedStorage + 652);
      CMTimeSubtract(&v106, &lhs, &rhs);
      *v9 = *&v106.value;
      *(DerivedStorage + 620) = v106.epoch;
      *(DerivedStorage + 652) = *&v109.value;
      epoch = v109.epoch;
    }

    *(v10 + 16) = epoch;
    if (*v9 < 1)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = *(DerivedStorage + 612) / *v9;
    }

    *(DerivedStorage + 680) = v12;
  }

  else
  {
    v12 = *(DerivedStorage + 680);
  }

  v13 = (v12 + 0.5);
  if (v13 - 1025 < 0xFFFFFC00)
  {
    v13 = 1;
  }

  LODWORD(v126) = v13;
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  v16 = (DerivedStorage + 708);
  *(DerivedStorage + 544) = DataLength;
  if (!DataBuffer)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame();
    }

    goto LABEL_25;
  }

  if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, DataLength))
  {
    blockBufferOut = DataBuffer;
    CFRetain(DataBuffer);
  }

  else
  {
    CMBlockBufferCreateContiguous(*MEMORY[0x277CBECE8], DataBuffer, *MEMORY[0x277CBECE8], 0, 0, *(DerivedStorage + 544), 2u, &blockBufferOut);
  }

  CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut);
  if (*(DerivedStorage + 544) <= 7uLL)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame();
    }

LABEL_21:
    v17 = 0;
    IOSurface = 0;
LABEL_26:
    if (*DerivedStorage != 1)
    {
      ProResDecoder_WaitForAsynchronousFrames(a1, *v16);
      VTDecoderSessionEmitDecodedFrame();
    }

    if (texture)
    {
      CVPixelBufferRelease(texture);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v17)
    {
      bzero(v17, 0x320uLL);
    }

    VTDecoderSessionCleanUpAfterDecode();
    goto LABEL_35;
  }

  FrameSize = getFrameSize(dataPointerOut);
  if (FrameSize > *(DerivedStorage + 544))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame();
    }

LABEL_25:
    v17 = 0;
    IOSurface = 0;
    goto LABEL_26;
  }

  v21 = dataPointerOut;
  if ((*(DerivedStorage + 432) | 0x10) == 0x61703478)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(a3);
    setBitstreamDepthFromFormatExtensions(&FormatDescription, &v108);
    v22 = v108 != 32;
  }

  else
  {
    v22 = 1;
  }

  if (FrameSize <= 0x13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame();
    }

    goto LABEL_21;
  }

  v97 = (v21 + 8);
  v23 = parseFrameHeader(v141, v21 + 4, v22, *(DerivedStorage + 444), *(DerivedStorage + 708));
  if (v23)
  {
    if (v23 != -536870191)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      goto LABEL_21;
    }

    *(DerivedStorage + 704) = 1;
  }

  if (LOWORD(v141[2]) <= 0xFu)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame();
    }

    goto LABEL_25;
  }

  if (HIWORD(v141[2]) <= 0xFu)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame();
    }

    goto LABEL_25;
  }

  v122[0] = LOWORD(v141[2]);
  v122[1] = HIWORD(v141[2]);
  if (*(DerivedStorage + 444))
  {
    if (BYTE1(v142) >= 4u && (*(DerivedStorage + 565) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      goto LABEL_21;
    }

    *(DerivedStorage + 688) = 0;
    ProResDecoder_ParseMetadataExtension(v141, &__p[1], v97, FrameSize, 0, *(DerivedStorage + 500), *(DerivedStorage + 708));
    if (ProResDecoder_GetLargestDCQSS(v141, v97, &dataPointerOut[FrameSize], *v16))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      v17 = 0;
      IOSurface = 0;
      goto LABEL_26;
    }

    DWORD2(v121[0]) = 0;
    BYTE12(v121[0]) = 0;
    HIDWORD(v125) = BYTE1(v142);
    BYTE6(v121[0]) = 0;
    HIBYTE(v121[0]) = *(DerivedStorage + 600) ^ 1;
    ProResDecoder_GetSubFramePictureSliceInfo(LOWORD(v141[2]), HIWORD(v141[2]), 1 << ((v21[79] >> 1) & 7), 0x8000u, &v114, 0);
    v25 = 0;
    v26 = (v21 + 8);
  }

  else
  {
    *(DerivedStorage + 688) = HIBYTE(v141[3]);
    if (LOWORD(v141[0]) + 8 > FrameSize)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      goto LABEL_21;
    }

    v24 = v97 + LOWORD(v141[0]);
    ProResDecoder_ParsePictureHeader(&v138, v24);
    if (v24 + HIDWORD(v138) - v97 > FrameSize)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      goto LABEL_21;
    }

    if (ProResDecoder_GetYCbCrNumSlices(v141, &v138, 0) > *(DerivedStorage + 504) << 15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      goto LABEL_21;
    }

    BYTE5(v121[0]) = 0;
    v32 = BYTE1(v141[3]);
    if (BYTE1(v141[3]))
    {
      v33 = v24 + HIDWORD(v138);
      if (v33 - v21 > FrameSize)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame();
        }

        goto LABEL_21;
      }

      ProResDecoder_ParsePictureHeader(&v139 + 4, v33);
      if (v33 + v140 - v97 > FrameSize)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame();
        }

        goto LABEL_21;
      }

      if (ProResDecoder_GetYCbCrNumSlices(v141, &v139 + 4, 1) > *(DerivedStorage + 508))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame();
        }

        goto LABEL_21;
      }

      BYTE5(v121[0]) = BYTE2(v139) != BYTE6(v140);
      if (BYTE2(v139) != BYTE6(v140))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame();
        }

        goto LABEL_21;
      }

      v32 = BYTE1(v141[3]);
    }

    BYTE2(v121[0]) = v32;
    BYTE3(v121[0]) = v32 == 2;
    v51 = LOBYTE(v141[3]);
    DWORD1(v121[1]) = LOBYTE(v141[3]);
    if (!*(DerivedStorage + 500) && *(DerivedStorage + 600) == 1)
    {
      if (BYTE3(v142))
      {
        v56 = *(DerivedStorage + 440);
        if ((v56 & 0xFFFFFFFE) == 2)
        {
          if (*(DerivedStorage + 520))
          {
            v57 = *(DerivedStorage + 528);
            v58 = *(DerivedStorage + 536);
            v59 = ((v57 + 15) & 0xFFFFFFF0) - v57;
            v60 = ((v58 + 15) & 0xFFFFFFF0) - v58;
          }

          else
          {
            v57 = *(DerivedStorage + 476);
            v58 = *(DerivedStorage + 480);
            v59 = *(DerivedStorage + 492);
            v60 = *(DerivedStorage + 496);
          }

          v106.value = 0;
          if (v56 == 2)
          {
            v89 = 875704864;
          }

          else
          {
            v89 = 875836448;
          }

          createPixelBufferAttributesDictionary(&v106, v57, v58, v59, v60, v89, *(DerivedStorage + 444), 0, 1, (DerivedStorage + 552));
          VTDecoderSessionSetPixelBufferAttributes();
          CFRelease(v106.value);
          v51 = LOBYTE(v141[3]);
        }
      }
    }

    if (*(DerivedStorage + 440) != v51)
    {
      if (*(DerivedStorage + 520))
      {
        v52 = *(DerivedStorage + 528);
        v53 = *(DerivedStorage + 536);
        v54 = ((v52 + 15) & 0xFFFFFFF0) - v52;
        v55 = ((v53 + 15) & 0xFFFFFFF0) - v53;
      }

      else
      {
        v52 = *(DerivedStorage + 476);
        v53 = *(DerivedStorage + 480);
        v54 = *(DerivedStorage + 492);
        v55 = *(DerivedStorage + 496);
      }

      v106.value = 0;
      if (v51 == 3)
      {
        createPixelBufferAttributesDictionary(&v106, v52, v53, v54, v55, 875836448, *(DerivedStorage + 444), 0, *(DerivedStorage + 600), (DerivedStorage + 552));
        v61 = 3;
      }

      else
      {
        if (v51 != 2)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame();
          }

          v17 = 0;
          IOSurface = 0;
          goto LABEL_26;
        }

        createPixelBufferAttributesDictionary(&v106, v52, v53, v54, v55, 875704864, *(DerivedStorage + 444), 0, *(DerivedStorage + 600), (DerivedStorage + 552));
        v61 = 2;
      }

      *(DerivedStorage + 440) = v61;
      VTDecoderSessionSetPixelBufferAttributes();
      CFRelease(v106.value);
    }

    if ((*(DerivedStorage + 432) | 0x10) == 0x61703478 && *(DerivedStorage + 452) != v108)
    {
      FigFormatDescriptionRelease();
      *(DerivedStorage + 400) = FigFormatDescriptionRetain();
      if (*(DerivedStorage + 520))
      {
        v62 = *(DerivedStorage + 528);
        v63 = *(DerivedStorage + 536);
        v64 = ((v62 + 15) & 0xFFFFFFF0) - v62;
        v65 = ((v63 + 15) & 0xFFFFFFF0) - v63;
      }

      else
      {
        v62 = *(DerivedStorage + 476);
        v63 = *(DerivedStorage + 480);
        v64 = *(DerivedStorage + 492);
        v65 = *(DerivedStorage + 496);
      }

      v106.value = 0;
      createPixelBufferAttributesDictionary(&v106, v62, v63, v64, v65, 875836448, *(DerivedStorage + 444), v108 == 32, *(DerivedStorage + 600), (DerivedStorage + 552));
      *(DerivedStorage + 452) = v108;
      VTDecoderSessionSetPixelBufferAttributes();
      CFRelease(v106.value);
    }

    ProResDecoder_GetSubFrameSliceInfo(v141, v97, &v138, &v114);
    v25 = &v138;
    v26 = (v21 + 8);
  }

  ProResDecoder_GetSubFrameInfo(v141, v25, v26, FrameSize, &v114);
  kdebug_trace();
  VTDecoderSessionCreatePixelBuffer();
  kdebug_trace();
  *(DerivedStorage + 528) = CVPixelBufferGetWidth(texture);
  *(DerivedStorage + 536) = CVPixelBufferGetHeight(texture);
  *(DerivedStorage + 436) = CVPixelBufferGetPixelFormatType(texture);
  PlaneCount = CVPixelBufferGetPlaneCount(texture);
  IOSurface = CVPixelBufferGetIOSurface(texture);
  *&v125 = IOSurface;
  DWORD2(v124) = IOSurfaceGetID(IOSurface);
  IOSurfaceGetPixelFormat(IOSurface);
  v98 = (DerivedStorage + 436);
  v27 = APR_ImgFmt_4CC(*(DerivedStorage + 436));
  if (!v27)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame();
    }

    goto LABEL_188;
  }

  if (*(DerivedStorage + 432) == 1634759276)
  {
    *(DerivedStorage + 697) = 1;
  }

  if (*(DerivedStorage + 444))
  {
    v132[6] = v147;
    v132[7] = v148;
    v132[8] = v149;
    v132[2] = v143;
    v132[3] = v144;
    v132[4] = v145;
    v132[5] = v146;
    v132[0] = *v141;
    v132[1] = v142;
    v133 = __p[0];
    v134 = 0;
    v135 = 0;
    v136 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v134, __p[1], v151, v151 - __p[1]);
    v137 = v152;
    SetRAWAttachments(v132, texture, *(DerivedStorage + 520), v27[1], *(DerivedStorage + 708), v28, v29);
    if (v134)
    {
      v135 = v134;
      operator delete(v134);
    }

    v30 = *v98;
    if (*v98 == 1651520304 || v30 == 1651521076)
    {
      if (!*(DerivedStorage + 520))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame();
        }

        goto LABEL_107;
      }

      v31 = 1;
    }

    else
    {
      v31 = *(DerivedStorage + 520) != 0;
    }

    if (v31 && PlaneCount || v30 == 1647392369 && PlaneCount != 4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

LABEL_107:
      v17 = 0;
      goto LABEL_26;
    }

    v39 = v27;
    if (v30 == 1651521076 || v30 == 1651520304)
    {
      v40 = 1;
      if (*(DerivedStorage + 561) != 1)
      {
        goto LABEL_121;
      }

      BYTE4(v121[0]) = 1;
    }

    v40 = 0;
LABEL_121:
    if (*(DerivedStorage + 554) != 1)
    {
      v94 = 0;
LABEL_153:
      v37 = v39;
      goto LABEL_154;
    }

    v41 = v40;
    if (v30 > 1734501175)
    {
      if (v30 > 1735553071)
      {
        if (v30 == 1735553072)
        {
          goto LABEL_224;
        }

        if (v30 != 1919378232)
        {
          v42 = 1919381552;
LABEL_223:
          if (v30 == v42)
          {
            goto LABEL_224;
          }

          goto LABEL_311;
        }

        goto LABEL_229;
      }

      if (v30 == 1734501176)
      {
        goto LABEL_229;
      }

      if (v30 == 1734504496)
      {
        goto LABEL_224;
      }

      v50 = 1735549752;
    }

    else
    {
      if (v30 <= 1651519797)
      {
        if (v30 != 1650942776)
        {
          if (v30 != 1650946096)
          {
            v42 = 1650946098;
            goto LABEL_223;
          }

LABEL_224:
          if (PlaneCount)
          {
            v31 = 1;
          }

          if (v31)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame();
            }

            goto LABEL_107;
          }

          v88 = HIDWORD(v125);
          if (v30 == 1919381552 && HIDWORD(v125))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame();
            }

            goto LABEL_107;
          }

          if (v30 == 1735553072 && HIDWORD(v125) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame();
            }

            goto LABEL_107;
          }

          if (v30 == 1734504496 && HIDWORD(v125) != 2)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame();
            }

            goto LABEL_107;
          }

          if (v30 == 1650946096 && HIDWORD(v125) != 3)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame();
            }

            goto LABEL_107;
          }

          if (v30 == 1650946098 && HIDWORD(v125) != 3)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame();
            }

            goto LABEL_107;
          }

          if (v30 == 1651798066 && HIDWORD(v125) >= 4)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame();
            }

            goto LABEL_107;
          }

          *(&v121[1] + 12) = 0x100000001;
          goto LABEL_347;
        }

LABEL_229:
        if (PlaneCount)
        {
          v31 = 1;
        }

        if (v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame();
          }

          goto LABEL_107;
        }

        v88 = HIDWORD(v125);
        if (v30 == 1919378232 && HIDWORD(v125))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame();
          }

          goto LABEL_107;
        }

        if (v30 == 1735549752 && HIDWORD(v125) != 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame();
          }

          goto LABEL_107;
        }

        if (v30 == 1734501176 && HIDWORD(v125) != 2)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame();
          }

          goto LABEL_107;
        }

        if (v30 == 1650942776 && HIDWORD(v125) != 3)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame();
          }

          goto LABEL_107;
        }

        if (v30 == 1652056888 && HIDWORD(v125) >= 4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame();
          }

          goto LABEL_107;
        }

        *&v121[2] = 0x200000001;
        goto LABEL_347;
      }

      if (v30 == 1651519798)
      {
        if (PlaneCount)
        {
          v31 = 1;
        }

        if (v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame();
          }

          goto LABEL_107;
        }

        v88 = HIDWORD(v125);
        if (HIDWORD(v125) >= 4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame();
          }

          goto LABEL_107;
        }

        LODWORD(v121[2]) = 1;
        goto LABEL_347;
      }

      if (v30 == 1651798066)
      {
        goto LABEL_224;
      }

      v50 = 1652056888;
    }

    if (v30 != v50)
    {
LABEL_311:
      v88 = HIDWORD(v125);
LABEL_347:
      v94 = 0;
      DWORD2(v121[2]) = v88;
      v40 = v41;
      goto LABEL_153;
    }

    goto LABEL_229;
  }

  CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
  BYTE13(v121[0]) = CompressionTypeOfPlane != 0;
  v35 = BYTE3(v142);
  v36 = *(v27 + 33);
  if (BYTE3(v142))
  {
    if (*(v27 + 33))
    {
      *(DerivedStorage + 448) = 3;
      DWORD2(v121[0]) = 3;
      BYTE12(v121[0]) = v36 != 1;
      if (*(DerivedStorage + 562))
      {
        v37 = v27;
        v94 = 0;
      }

      else
      {
        v37 = v27;
        v46 = v35 == 1 && v36 == 2 && CompressionTypeOfPlane == 0;
        v94 = v46;
      }

      goto LABEL_146;
    }

    if (*(DerivedStorage + 697) == 1 && !LOBYTE(v141[3]) && *(DerivedStorage + 555) == 1)
    {
      v37 = v27;
      v94 = 0;
      *(DerivedStorage + 448) = 1;
      DWORD2(v121[0]) = 1;
      v38 = v35 == 1;
      goto LABEL_131;
    }

LABEL_135:
    v37 = v27;
    v94 = 0;
    *(DerivedStorage + 448) = 2;
    DWORD2(v121[0]) = 2;
    BYTE12(v121[0]) = 0;
    goto LABEL_146;
  }

  if (!*(v27 + 33) || *(DerivedStorage + 562) != 1 || (a4 & 1) != 0 && !CompressionTypeOfPlane)
  {
    goto LABEL_135;
  }

  v37 = v27;
  v94 = 0;
  *(DerivedStorage + 448) = 3;
  DWORD2(v121[0]) = 3;
  v38 = v36 == 1;
LABEL_131:
  v43 = !v38;
  BYTE12(v121[0]) = v43;
LABEL_146:
  v40 = 0;
  if (*(DerivedStorage + 557) == 1 && CompressionTypeOfPlane)
  {
    v40 = 0;
    DWORD1(v121[2]) = *(v37 + 40);
    LODWORD(v121[2]) = DWORD1(v121[2]);
    HIDWORD(v121[1]) = 0;
  }

LABEL_154:
  v47 = *(v37 + 4) - 8;
  if (v47 < 9 && ((0x115u >> v47) & 1) != 0)
  {
    DWORD2(v121[1]) = dword_277819E48[v47];
  }

  else if (!*(DerivedStorage + 448) && !*(DerivedStorage + 520) && DWORD2(v121[1]) != 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame();
    }

    goto LABEL_188;
  }

  BYTE7(v121[0]) = 1;
  LODWORD(v121[1]) = *(DerivedStorage + 520);
  if (ProResDecoder_CheckDecodeCmd(v121, v141, *(DerivedStorage + 448), (DerivedStorage + 552), v37, *(DerivedStorage + 708)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame();
    }

LABEL_188:
    v17 = 0;
    goto LABEL_26;
  }

  v92 = v40;
  extraRowsOnTop = 0;
  extraColumnsOnLeft = 0;
  CVPixelBufferGetExtendedPixels(texture, &extraColumnsOnLeft, 0, &extraRowsOnTop, 0);
  *&v122[2] = extraColumnsOnLeft;
  if (*(DerivedStorage + 520))
  {
    *&v123 = extraRowsOnTop;
  }

  else
  {
    if (extraColumnsOnLeft + v122[0] > *(DerivedStorage + 528))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      goto LABEL_188;
    }

    *&v123 = extraRowsOnTop;
    if (extraRowsOnTop + v122[1] > *(DerivedStorage + 536))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      goto LABEL_188;
    }
  }

  if (!*(DerivedStorage + 408))
  {
    ProResDecoder_GetInputMaxSize(v122[0], v122[1], *(DerivedStorage + 432), BYTE3(v142), (DerivedStorage + 456), *(DerivedStorage + 708));
    LODWORD(v49) = *(DerivedStorage + 456);
    *(DerivedStorage + 456) = ((v49 * 1.5) / DWORD1(v114) + 127) & 0xFFFFFF80;
    if (CVDataBufferPoolCreate() || !*(DerivedStorage + 408))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      goto LABEL_188;
    }
  }

  v48 = v115;
  if (*(DerivedStorage + 456) < v115)
  {
    ProResDecoder_WaitForAsynchronousFrames(a1, *v16);
    CVDataBufferPoolFlush();
    CFRelease(*(DerivedStorage + 408));
    *(DerivedStorage + 408) = 0;
    *(DerivedStorage + 456) = ((v48 * 1.5) + 127) & 0xFFFFFF80;
    if (CVDataBufferPoolCreate() || !*(DerivedStorage + 408))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      goto LABEL_188;
    }
  }

  if (*(DerivedStorage + 448) == 2 && CVPixelBufferGetPlaneCount(texture) == 3 && (BYTE13(v121[0]) & 1) == 0)
  {
    CVPixelBufferLockBaseAddress(texture, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(texture, 2uLL);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(texture, 2uLL);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(texture, 2uLL);
    memset(BaseAddressOfPlane, 255, BytesPerRowOfPlane * HeightOfPlane);
    CVPixelBufferUnlockBaseAddress(texture, 0);
  }

  DWORD2(v125) = 3;
  *&v111 = *(DerivedStorage + 120);
  HIDWORD(v111) = *(DerivedStorage + 460);
  *&v112 = DerivedStorage + 272;
  *(&v112 + 1) = DerivedStorage + 280;
  v113 = DerivedStorage + 344;
  if (DWORD1(v114))
  {
    v69 = DWORD1(v114);
    if ((a4 & 4) != 0)
    {
      v70 = 0;
    }

    else
    {
      v70 = 3;
    }

    v90 = v70;
    v91 = a4 & 1;
    v96 = v118 + 1;
    *v99 = 0;
    while (1)
    {
      v71 = DWORD2(v114);
      if (!(*(DerivedStorage + 500) | DWORD2(v114)))
      {
        v72 = DWORD2(v114);
        v73 = *(DerivedStorage + 480) * *(DerivedStorage + 476);
        v74 = *(DerivedStorage + 696);
        if (v74)
        {
          v75 = 1;
        }

        else
        {
          v75 = 3;
        }

        v76 = v90;
        if (!*(DerivedStorage + 692))
        {
          v76 = v75;
        }

        *(DerivedStorage + 464) = v76;
        v77 = v73 >> 10;
        if (v69 <= 1 && v77 >= 0x7E9)
        {
          v79 = v74;
        }

        else
        {
          v79 = 1;
        }

        if (v79)
        {
          v80 = 1;
        }

        else
        {
          v80 = 3;
        }

        *(DerivedStorage + 468) = v80;
        v81 = *(DerivedStorage + 96);
        if (v81)
        {
          ProResFrameReceiver::SetOutOfOrderFrameProcessing(v81, v79 ^ 1);
        }

        v71 = v72;
        if ((v79 & 1) == 0)
        {
          v82 = *(DerivedStorage + 460) * *(DerivedStorage + 552);
          *(DerivedStorage + 460) = v82;
          HIDWORD(v111) = v82;
        }
      }

      *(&v126 + 4) = *(DerivedStorage + 464);
      v93 = __PAIR64__(v69, v71);
      DWORD2(v111) = *(DerivedStorage + 500) + v71;
      EmptySpotInFrameInfoArray = GetEmptySpotInFrameInfoArray(&v111, *(DerivedStorage + 708));
      if (EmptySpotInFrameInfoArray == -1)
      {
        break;
      }

      v84 = EmptySpotInFrameInfoArray;
      v17 = *(DerivedStorage + 120) + 800 * EmptySpotInFrameInfoArray;
      if (ProResDecoder_prepareInputFrame(DerivedStorage, &v114))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame();
        }

        goto LABEL_26;
      }

      *(v17 + 4) = *(DerivedStorage + 448);
      *(v17 + 24) = v91;
      *(v17 + 32) = *(DerivedStorage + 512);
      *(v17 + 16) = a2;
      v85 = texture;
      *(v17 + 40) = cf;
      *(v17 + 48) = v85;
      *(v17 + 28) = FrameSize;
      *(v17 + 56) = v93;
      LODWORD(v85) = *(DerivedStorage + 500);
      *(v17 + 8) = v85;
      *(v17 + 64) = v94;
      *(v17 + 65) = v92;
      *&inputStruct = __PAIR64__(v84, v85);
      LOWORD(v121[0]) = v85;
      v122[1] = *v96;
      *(&inputStruct + 1) = v93;
      DWORD2(v114) = v93 + 1;
      atomic_fetch_add((DerivedStorage + 152), 1u);
      if (!*v99)
      {
        kdebug_trace();
      }

      v86 = IOConnectCallStructMethod(*(DerivedStorage + 392), 2u, &inputStruct, 0xA8uLL, 0, 0);
      if (!*v99)
      {
        kdebug_trace();
      }

      if (v86)
      {
        atomic_fetch_add((DerivedStorage + 152), 0xFFFFFFFF);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame();
        }

        goto LABEL_26;
      }

      v87 = *v96;
      v96 += 10;
      *&v123 = v123 + (v87 >> *(DerivedStorage + 520));
      cf = 0;
      v69 = DWORD1(v114);
      if (++*v99 >= DWORD1(v114))
      {
        goto LABEL_275;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame();
    }

    v17 = 0;
    goto LABEL_26;
  }

  v91 = a4 & 1;
LABEL_275:
  ++*(DerivedStorage + 500);
  if (v91)
  {
    *a5 |= 1u;
  }

  else
  {
    ProResDecoder_WaitForAsynchronousFrames(a1, *v16);
  }

LABEL_35:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v151 != __p[1])
  {
    *&v151 = __p[1];
  }

  IOSurfaceGetWidth(IOSurface);
  IOSurfaceGetHeight(IOSurface);
  kdebug_trace();
  if (__p[1])
  {
    *&v151 = __p[1];
    operator delete(__p[1]);
  }

  return 0;
}

void sub_277798878(_Unwind_Exception *a1)
{
  v2 = STACK[0x4D8];
  if (STACK[0x4D8])
  {
    STACK[0x4E0] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t ProResDecoder_CopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 416);
    if (v5)
    {
      CFRetain(v5);
      result = 0;
      *a2 = *(v4 + 416);
    }

    else
    {
      *a2 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v4 + 708);
        v8[0] = 67109634;
        v8[1] = v7;
        v9 = 1024;
        v10 = 2836;
        v11 = 2080;
        v12 = "ProResDecoder_CopySupportedPropertyDictionary";
        _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): AppleProResHW property dictionary is NULL - decoder configuration may be incomplete\n", v8, 0x18u);
      }

      return 4294954392;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CopySupportedPropertyDictionary();
    }

    return 4294954385;
  }

  return result;
}

uint64_t ProResDecoder_CanAcceptFormatDescription(uint64_t a1, CMVideoFormatDescriptionRef videoDesc)
{
  v17 = videoDesc;
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CanAcceptFormatDescription();
    }

    goto LABEL_12;
  }

  v5 = DerivedStorage;
  if (CMFormatDescriptionEqual(*(DerivedStorage + 400), videoDesc))
  {
LABEL_12:
    LOBYTE(v12) = 1;
    return v12 & 1;
  }

  if (*(v5 + 476) != Dimensions.width || *(v5 + 480) != Dimensions.height)
  {
LABEL_26:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(*(v5 + 400));
  v7 = CMFormatDescriptionGetMediaSubType(videoDesc);
  if ((MediaSubType & 0xFFFFFFEF) == 0x61703468 && (v7 & 0xFFFFFFEF) == 0x61703468)
  {
    v16 = 0;
    setBitstreamDepthFromFormatExtensions(&v17, &v16);
    FigFormatDescriptionRelease();
    *(v5 + 400) = FigFormatDescriptionRetain();
    if (*(v5 + 452) != v16)
    {
      if (*(v5 + 520))
      {
        v8 = *(v5 + 528);
        v9 = *(v5 + 536);
        v10 = ((v8 + 15) & 0xFFFFFFF0) - v8;
        v11 = ((v9 + 15) & 0xFFFFFFF0) - v9;
      }

      else
      {
        v8 = *(v5 + 476);
        v9 = *(v5 + 480);
        v10 = *(v5 + 492);
        v11 = *(v5 + 496);
      }

      cf = 0;
      createPixelBufferAttributesDictionary(&cf, v8, v9, v10, v11, 875836448, *(v5 + 444), v16 == 32, *(v5 + 600), (v5 + 552));
      *(v5 + 452) = v16;
      VTDecoderSessionSetPixelBufferAttributes();
      CFRelease(cf);
    }

    goto LABEL_12;
  }

  if (MediaSubType - 1634755432 <= 0xB && ((1 << (MediaSubType - 104)) & 0x8C1) != 0)
  {
    if (v7 - 1634755432 < 0xC)
    {
      v12 = 0x8C1u >> (v7 - 104);
      return v12 & 1;
    }

    goto LABEL_26;
  }

  if (MediaSubType != 1634759272 && MediaSubType != 1634759278)
  {
    goto LABEL_26;
  }

  LOBYTE(v12) = v7 == 1634759278 || v7 == 1634759272;
  return v12 & 1;
}

void createSuggestedQualityOfServiceTiers(int a1, unsigned int a2, unsigned int a3, const __CFArray **a4)
{
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v29 = a3;
  valuePtr = a2;
  v10 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
  v12 = *MEMORY[0x277CE2770];
  CFDictionaryAddValue(v10, *MEMORY[0x277CE2770], v11);
  CFRelease(v11);
  v13 = CFNumberCreate(v8, kCFNumberSInt32Type, &v29);
  v14 = *MEMORY[0x277CE2768];
  CFDictionaryAddValue(v10, *MEMORY[0x277CE2768], v13);
  CFRelease(v13);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v10);
  if (a1 <= 1634755431)
  {
    if (a1 > 1634743399)
    {
      if (a1 != 1634743400)
      {
        v15 = 13432;
        goto LABEL_11;
      }
    }

    else if (a1 != 1634742376)
    {
      v15 = 12904;
      goto LABEL_11;
    }

LABEL_12:
    v29 = a3 >> 1;
    valuePtr = a2 >> 1;
    v16 = MEMORY[0x277CBF138];
    v17 = MEMORY[0x277CBF150];
    v18 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v28 = a4;
    v19 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v18, v12, v19);
    CFRelease(v19);
    v20 = CFNumberCreate(v8, kCFNumberSInt32Type, &v29);
    CFDictionaryAddValue(v18, v14, v20);
    CFRelease(v20);
    CFArrayAppendValue(Mutable, v18);
    CFRelease(v18);
    v29 = a3 >> 2;
    valuePtr = a2 >> 2;
    v21 = CFDictionaryCreateMutable(v8, 0, v16, v17);
    v22 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v21, v12, v22);
    CFRelease(v22);
    v23 = CFNumberCreate(v8, kCFNumberSInt32Type, &v29);
    CFDictionaryAddValue(v21, v14, v23);
    CFRelease(v23);
    CFArrayAppendValue(Mutable, v21);
    CFRelease(v21);
    v29 = a3 >> 3;
    valuePtr = a2 >> 3;
    v24 = CFDictionaryCreateMutable(v8, 0, v16, v17);
    v25 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v24, v12, v25);
    CFRelease(v25);
    v26 = CFNumberCreate(v8, kCFNumberSInt32Type, &v29);
    CFDictionaryAddValue(v24, v14, v26);
    CFRelease(v26);
    CFArrayAppendValue(Mutable, v24);
    v27 = v24;
    a4 = v28;
    CFRelease(v27);
    goto LABEL_13;
  }

  if ((a1 - 1634755432) <= 0xB && ((1 << (a1 - 104)) & 0x8C1) != 0 || a1 == 1634759278)
  {
    goto LABEL_12;
  }

  v15 = 29288;
LABEL_11:
  if (a1 == (v15 | 0x61700000))
  {
    goto LABEL_12;
  }

LABEL_13:
  *a4 = Mutable;
}

uint64_t ProResDecoder_ParsePictureHeader(uint64_t result, uint64_t a2)
{
  *result = *a2 >> 3;
  *(result + 4) = bswap32(*(a2 + 1));
  *(result + 8) = bswap32(*(a2 + 5)) >> 16;
  *(result + 10) = (*(a2 + 7) >> 4) & 3;
  return result;
}

uint64_t ProResDecoder_GetYCbCrNumSlices(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 13);
  v5 = *(a1 + 10);
  if (*(a1 + 13))
  {
    if (a3 || v4 != 1)
    {
      if (v4 == 2 && a3 == 1)
      {
        v7 = v5 + 1;
      }

      else
      {
        v7 = *(a1 + 10);
      }

      v5 = v7 >> 1;
    }

    else
    {
      v5 = (v5 + 1) >> 1;
    }
  }

  return getNumSlices(*(a1 + 8), v5, (1 << *(a2 + 10)));
}

uint64_t ProResDecoder_GetSubFrameSliceInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 10);
  if (!a3)
  {
    v8 = 1 << ((*(a2 + 71) >> 1) & 7);
    goto LABEL_6;
  }

  v8 = 1 << *(a3 + 10);
  if (!*(a1 + 13))
  {
LABEL_6:
    v11 = *(a1 + 8);
    v12 = v8;
    v13 = 0x8000;
    v14 = a4;
    v15 = 0;
    goto LABEL_7;
  }

  v9 = v7 >> 1;
  result = ProResDecoder_GetSubFramePictureSliceInfo(*(a1 + 8), v7 >> 1, 1 << *(a3 + 10), 0x4000u, a4, 0);
  if (*(a4 + 4) < 2u)
  {
    return result;
  }

  v11 = v6;
  v7 = v9;
  v12 = v8;
  v13 = 0x4000;
  v14 = a4;
  v15 = 1;
LABEL_7:

  return ProResDecoder_GetSubFramePictureSliceInfo(v11, v7, v12, v13, v14, v15);
}

unsigned __int16 *ProResDecoder_GetSubFrameInfo(unsigned __int16 *result, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = *(a5 + 4);
  if (v5 == 1)
  {
    *a5 = 1;
    *(a5 + 16) = a4;
    *(a5 + 68) = result[5];
    *(a5 + 72) = a4;
  }

  else
  {
    v6 = *result;
    v32 = a3 + v6;
    v33 = 0;
    v30 = v6;
    v31 = 0;
    if (a2)
    {
      *(a5 + 20) = v6;
      v7 = *a2;
      v8 = v7 + v6;
      v30 = v7 + v6;
      v32 = a3 + v6 + v7;
      if (*(result + 13))
      {
        v9 = *(a2 + 1) + v6;
        *(a5 + 24) = v9;
        v10 = a2[12];
        v11 = (v9 + v10);
        v31 = v11;
        v33 = a3 + v11;
        LODWORD(v6) = v8 + v10;
        v12 = 2;
      }

      else
      {
        v12 = 1;
        LODWORD(v6) = v7 + v6;
      }
    }

    else
    {
      v12 = 1;
    }

    v29 = 0;
    *(a5 + 16) = 0;
    if (v5)
    {
      v13 = 0;
      v14 = 0;
      v15 = v6 + 8;
      v16 = a5 + 36;
      result = &v30;
      do
      {
        v17 = 0;
        v18 = v16 + 40 * v13;
        *(v18 + 36) = v15;
        v19 = v15;
        do
        {
          v20 = *(&v29 + v17);
          v21 = (v18 + 16 * v17);
          v22 = *v21;
          *(&v29 + v17) = *v21 + v20;
          v23 = 2 * v20;
          if (v20 >= v22 + v20)
          {
            v24 = 0;
          }

          else
          {
            v24 = 0;
            v25 = (*(&v32 + v17) + v23);
            v26 = v22;
            do
            {
              v27 = *v25++;
              v24 += bswap32(v27) >> 16;
              --v26;
            }

            while (v26);
          }

          v28 = *(&v30 + v17);
          v21[3] = v24;
          v21[1] = v28 + v23;
          v19 += v24 + 2 * v22;
          *(v18 + 36) = v19;
          if (v13)
          {
            v21[2] = *(v18 - 40 + 16 * v17 + 12) + *(v18 - 40 + 16 * v17 + 8);
          }

          else
          {
            *(v16 + 16 * v17 + 8) = v28 + 2 * *(a5 + 28 + 4 * v17);
          }

          ++v17;
        }

        while (v17 != v12);
        if (v19 > v14)
        {
          *(a5 + 16) = v19;
          v14 = v19;
        }

        ++v13;
      }

      while (v13 != v5);
    }

    *a5 = 1;
  }

  return result;
}

uint64_t ProResDecoder_GetLargestDCQSS(unsigned __int16 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (a2 + v4 > a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_GetLargestDCQSS();
    }

    return 4294954387;
  }

  v5 = (a1[4] + 15) >> 4;
  v6 = *(a1 + 70);
  v7 = v5 & ~(-1 << v6);
  if (v7 >= 0x10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_GetLargestDCQSS();
    }

    return 4294954387;
  }

  v8 = ((a1[5] + 15) >> 4) * (dword_277819E08[v7] + (v5 >> v6));
  v9 = a2 + v4 + 2 * v8;
  if (v9 > a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_GetLargestDCQSS();
    }

    return 4294954387;
  }

  v10 = 0;
  if (v8)
  {
    v11 = v4 + a2 + 1;
    while (v11 <= a3 && v9 + 1 <= a3)
    {
      v12 = __rev16(*(v11 - 1));
      if (v10 <= *(v9 + 1))
      {
        v10 = *(v9 + 1);
      }

      v9 += v12;
      v11 += 2;
      if (!--v8)
      {
        goto LABEL_17;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_GetLargestDCQSS();
    }

    return 4294954387;
  }

LABEL_17:
  v13 = 0;
  *(a1 + 18) = v10 * *(a1 + 71);
  return v13;
}

uint64_t ProResDecoder_CheckDecodeCmd(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  if ((a3 - 1) >= 3)
  {
    if (!a3)
    {
      return a3;
    }

    v7 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  v6 = *(a1 + 8);
  if (v6 == 1)
  {
    if (a2[19])
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  if (v6 != 3)
  {
    goto LABEL_11;
  }

  if ((a4[10] & 1) == 0 && !a2[19])
  {
LABEL_26:
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  if (!*(a5 + 33))
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = *(a1 + 12);
  if (v8 == 1 && v6 != 1 && *(a5 + 33) != 2)
  {
LABEL_14:
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  if (*(a1 + 5) == 1 && !a2[13])
  {
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  v9 = a2[13];
  if (!*(a1 + 3))
  {
    if (v9 != 2)
    {
      goto LABEL_20;
    }

LABEL_29:
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  if (v9 != 2)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (*(a1 + 5) && *(a1 + 16))
  {
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  if (*(a1 + 13) == 1 && *(a1 + 16))
  {
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  if (*(a1 + 20) == a2[12])
  {
    if (a4[3] == 1)
    {
      if (v6 == 1)
      {
        if ((((*(a5 + 4) == 8) ^ v8) & 1) == 0)
        {
          v7 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_CheckDecodeCmd();
          }

          return v7;
        }

        if (a2[12] || !a2[19])
        {
          v7 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_CheckDecodeCmd();
          }

          return v7;
        }
      }

      else if (!a2[12] && a2[19])
      {
        v7 = 3758097084;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_CheckDecodeCmd();
        }

        return v7;
      }
    }

    else if (v6 == 1)
    {
      v7 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_CheckDecodeCmd();
      }

      return v7;
    }

    if (a4[5] != 1)
    {
      return 0;
    }

    v10 = *(a1 + 36);
    if (v10 == *(a1 + 32))
    {
      v11 = *(a1 + 24);
      if (v10 == 2 && !v11)
      {
        v7 = 3758097090;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_CheckDecodeCmd();
        }

        return v7;
      }

      if (v10 == 3 && v11 == 1)
      {
        v7 = 3758097090;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_CheckDecodeCmd();
        }

        return v7;
      }

      if (*(a1 + 28))
      {
        v7 = 3758097090;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_CheckDecodeCmd();
        }

        return v7;
      }

      return 0;
    }

    v7 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }
  }

  else
  {
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }
  }

  return v7;
}

void ProResDecoder_GetInputMaxSize(uint64_t result, int a2, int a3, int a4, unsigned int *a5, uint64_t a6)
{
  if (a3 == 1634759278 || a3 == 1634759272)
  {
    v8 = 16386 * ((result + 255) >> 8) * ((a2 + 15) >> 4) + 160;
LABEL_7:
    *a5 = v8;
    return;
  }

  *v13 = 0;
  v10 = a2 * result;
  if (!GetCompressedFrameSize(a3, a2 * result, 1.0, 1.125, &v13[1], v13, 0, a6))
  {
    if (a4)
    {
      v8 = v13[1] + (v10 << (a4 == 2));
    }

    else
    {
      LODWORD(v12) = v13[1];
      v8 = (v12 * 1.1);
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResDecoder_GetInputMaxSize();
  }
}

uint64_t ProResDecoder_prepareInputFrame(unsigned int *a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    kdebug_trace();
  }

  CVDataBufferPoolCreateDataBuffer();
  if (!*(a2 + 8))
  {
    kdebug_trace();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResDecoder_prepareInputFrame();
  }

  return 3758097085;
}

uint64_t ProResDecoder_GetSubFramePictureSliceInfo(int a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v9 = (a2 + 15) >> 4;
  result = numSlicesPerRow(a3, (a1 + 15) >> 4);
  v11 = result * v9;
  if (result * v9 <= a4)
  {
    *(a5 + 4) = 1;
  }

  else
  {
    v12 = (a4 / result) & 0xFFFFFFFC;
    v13 = v12 * result;
    v14 = (v11 - 1 + v13) / v13;
    *(a5 + 4) = v14;
    if (!__CFADD__(v11 - 1, v12 * result))
    {
      v15 = 0;
      v16 = a5 + 36;
      v17 = 16 * v12;
      v18 = result * v9;
      do
      {
        v19 = v18 - v13;
        if (v18 <= v13)
        {
          *(v16 + 16 * a6) = v18;
          v20 = 16 * v18 / result;
        }

        else
        {
          *(v16 + 16 * a6) = v13;
          v20 = v17;
        }

        *(v16 + 32) += v20;
        ++v15;
        v16 += 40;
        v18 = v19;
      }

      while (v15 < v14);
    }
  }

  *(a5 + 4 * a6 + 28) = v11;
  return result;
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_277799FCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

char *getResolutionTier(int a1, int a2, char *a3)
{
  v3 = a2 * a1;
  if ((a2 * a1) > 0xE1000)
  {
    if (v3 >> 10 > 0x7E8)
    {
      if (v3 > 0x1FE000)
      {
        if (v3 >= 0x240001)
        {
          if (v3 >= 0x7E9000)
          {
            if (v3 == 8294400)
            {
              a3[2] = 0;
              v6 = 19252;
            }

            else
            {
              if (v3 < 0x1FA4001)
              {
                v4 = 4929596;
                goto LABEL_11;
              }

              if (v3 >= 0x21C0001)
              {
                v4 = 4929598;
                goto LABEL_11;
              }

              a3[2] = 0;
              v6 = 19256;
            }

            *a3 = v6;
            return a3;
          }

          v4 = 4928572;
        }

        else
        {
          a3[4] = 0;
          v4 = 1261583676;
        }
      }

      else
      {
        *(a3 + 2) = 112;
        v4 = 808988721;
      }
    }

    else
    {
      *(a3 + 3) = 7352376;
      v4 = 942682428;
    }
  }

  else
  {
    *(a3 + 3) = 7352370;
    v4 = 842480956;
  }

LABEL_11:
  *a3 = v4;
  return a3;
}

void reportEncodeSessionInfo(int a1, int a2, int a3, int a4, int a5, char a6, char a7, int a8, int a9, int a10, int a11, char a12, int a13, int a14, char a15, char a16, uint64_t a17)
{
  v19 = a3;
  v20 = a5;
  v21 = a1;
  v22 = a2;
  v29 = a7;
  v23 = a4;
  v24 = a13;
  v30 = a6;
  v31 = a15;
  v32 = a16;
  if (*(a17 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a17, *(a17 + 8));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *a17;
    __p.__r_.__value_.__r.__words[2] = *(a17 + 16);
  }

  v25 = a10;
  v26 = a11;
  v33 = a12;
  v27 = a8;
  v28 = a9;
  analytics_send_event_lazy();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27779A318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t ___Z23reportEncodeSessionInfojjjjjhbjjjjbjjbbNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  string[0] = HIBYTE(v3);
  string[1] = BYTE2(v3);
  string[2] = BYTE1(v3);
  string[3] = v3;
  string[4] = 0;
  v7[0] = HIBYTE(v4);
  v7[1] = BYTE2(v4);
  v7[2] = BYTE1(v4);
  v7[3] = v4;
  v7[4] = 0;
  xpc_dictionary_set_string(v2, "sessionType", "ProResEncoder");
  xpc_dictionary_set_string(v2, "codecType", string);
  getResolutionTier(*(a1 + 64), *(a1 + 68), v9);
  xpc_dictionary_set_string(v2, "resolution", v9);
  xpc_dictionary_set_uint64(v2, "bitDepth", *(a1 + 72));
  xpc_dictionary_set_BOOL(v2, "doubleEncode", *(a1 + 96));
  xpc_dictionary_set_string(v2, "pixelFormat", v7);
  xpc_dictionary_set_uint64(v2, "framesProcessed", *(a1 + 76));
  xpc_dictionary_set_uint64(v2, "frameRateCode", *(a1 + 97));
  xpc_dictionary_set_BOOL(v2, "hardwareError", *(a1 + 98));
  xpc_dictionary_set_BOOL(v2, "nonCompliant", *(a1 + 99));
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  xpc_dictionary_set_string(v2, "realTime_maximizePowerEfficiency", v5);
  xpc_dictionary_set_uint64(v2, "percentFramesOverTarget", *(a1 + 80));
  xpc_dictionary_set_uint64(v2, "avgTargetOvershootPercent", *(a1 + 84));
  if (*(a1 + 96) == 1)
  {
    xpc_dictionary_set_BOOL(v2, "logCapture", *(a1 + 100));
    xpc_dictionary_set_uint64(v2, "DEFramePercentage", *(a1 + 88));
    xpc_dictionary_set_uint64(v2, "SkipP2Toggled", *(a1 + 92));
  }

  return v2;
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void reportDecodeSessionInfo(int a1, int a2, int a3, int a4, int a5, char a6, int a7, uint64_t a8, char a9, char a10, uint64_t a11)
{
  v12 = a3;
  v13 = a4;
  v14 = a1;
  v15 = a2;
  v16 = a5;
  v17 = a7;
  v18 = a6;
  v19 = a9;
  v20 = a10;
  if (*(a11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a11, *(a11 + 8));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *a11;
    __p.__r_.__value_.__r.__words[2] = *(a11 + 16);
  }

  analytics_send_event_lazy();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27779A65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t ___Z23reportDecodeSessionInfojjjjjhjjbbNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  string[0] = HIBYTE(v3);
  string[1] = BYTE2(v3);
  string[2] = BYTE1(v3);
  string[3] = v3;
  string[4] = 0;
  v7[0] = HIBYTE(v4);
  v7[1] = BYTE2(v4);
  v7[2] = BYTE1(v4);
  v7[3] = v4;
  v7[4] = 0;
  xpc_dictionary_set_string(v2, "sessionType", "ProResDecoder");
  xpc_dictionary_set_string(v2, "codecType", string);
  getResolutionTier(*(a1 + 64), *(a1 + 68), v9);
  xpc_dictionary_set_string(v2, "resolution", v9);
  xpc_dictionary_set_uint64(v2, "bitDepth", *(a1 + 72));
  xpc_dictionary_set_string(v2, "pixelFormat", v7);
  xpc_dictionary_set_uint64(v2, "framesProcessed", *(a1 + 76));
  xpc_dictionary_set_uint64(v2, "frameRateCode", *(a1 + 80));
  xpc_dictionary_set_BOOL(v2, "hardwareError", *(a1 + 81));
  xpc_dictionary_set_BOOL(v2, "nonCompliant", *(a1 + 82));
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  xpc_dictionary_set_string(v2, "realTime_maximizePowerEfficiency", v5);
  return v2;
}

uint64_t ProResFrameReceiver::MakeCurrentThreadTimeConstraintThread(ProResFrameReceiver *this)
{
  mach_timebase_info(&info);
  LODWORD(v2) = info.numer;
  LODWORD(v1) = info.denom;
  *policy_info = vmovn_s64(vcvtq_u64_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64(v1 / v2 * 1000000000.0), 0), xmmword_277819E90)));
  v8 = policy_info[0];
  v9 = 1;
  v3 = pthread_self();
  v4 = pthread_mach_thread_np(v3);
  return thread_policy_set(v4, 2u, policy_info, 4u);
}

void ProResFrameReceiver::ProResFrameReceiver(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = *a2;
  *(a1 + 120) = *(a2 + 88);
  *(a1 + 56) = *(a2 + 32);
  *(a1 + 96) = *(a2 + 64);
  *(a1 + 112) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 40);
  *(a1 + 88) = *(a2 + 56);
  *(a1 + 130) = 0;
  *(a1 + 66) = *(a2 + 25);
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 129) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 240) = *(a2 + 128);
  *(a1 + 256) = *(a2 + 144);
  *(a1 + 264) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 312) = a4;
  *(a1 + 316) = a3;
  *(a1 + 192) = 0;
  *(a1 + 132) = 4 * *(a2 + 120);
  *(a1 + 208) = *(a2 + 96);
  operator new[]();
}

void ProResFrameReceiver::~ProResFrameReceiver(ThreadPool **this)
{
  if (*this)
  {
    ProResFrameReceiver::RemoveIODispatcherFromRunLoop(this);
  }

  v2 = this[29];
  if (v2)
  {
    ProResHWAnalyzer::~ProResHWAnalyzer(v2);
    MEMORY[0x277CAF790]();
    this[29] = 0;
  }

  v3 = this[27];
  if (v3)
  {
    freeProResFrame(v3);
    this[27] = 0;
  }

  v4 = this[28];
  if (v4)
  {
    freeProResFrame(v4);
    this[28] = 0;
  }

  v5 = this[34];
  if (v5)
  {
    MEMORY[0x277CAF770](v5, 0x1000C80BDFB0063);
    this[34] = 0;
    *(this + 70) = 0;
  }

  v6 = this[25];
  if (v6)
  {
    MEMORY[0x277CAF770](v6, 0x1020C80E121CA55);
    this[25] = 0;
  }

  v7 = this[17];
  if (v7)
  {
    ThreadPool::~ThreadPool(v7);
    MEMORY[0x277CAF790]();
  }
}

void ProResFrameReceiver::RemoveIODispatcherFromRunLoop(ProResFrameReceiver *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRunLoopRemoveSource(*this, v2, *MEMORY[0x277CBF058]);
    CFRelease(*(this + 1));
    *(this + 1) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(this + 3));
    *(this + 3) = 0;
  }

  v4 = *(this + 4);
  if (v4)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], v4, 1u, -1);
    *(this + 4) = 0;
  }
}

void freeProResFrame(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x277CAF770](v2, 0x1000C8077774924);
  }

  v3 = a1[7];
  if (v3)
  {
    MEMORY[0x277CAF770](v3, 0x1000C80BDFB0063);
  }

  v4 = a1[40];
  if (v4)
  {
    MEMORY[0x277CAF770](v4, 0x1000C8077774924);
  }

  v5 = a1[41];
  if (v5)
  {
    MEMORY[0x277CAF770](v5, 0x1000C8077774924);
  }

  v6 = a1[42];
  if (v6)
  {
    MEMORY[0x277CAF770](v6, 0x1000C8077774924);
  }

  v7 = a1[43];
  if (v7)
  {
    MEMORY[0x277CAF770](v7, 0x1000C80BDFB0063);
  }

  v8 = a1[44];
  if (v8)
  {
    MEMORY[0x277CAF770](v8, 0x1000C80BDFB0063);
  }

  free(a1);
}

uint64_t ProResFrameReceiver::InitializeDoubleEncode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 284) >= a2)
  {
    return 1;
  }

  v3 = a2;
  *(a1 + 264) = 0;
  v5 = *(a1 + 232);
  if (v5)
  {
    ProResHWAnalyzer::~ProResHWAnalyzer(v5);
    MEMORY[0x277CAF790]();
    *(a1 + 232) = 0;
  }

  v6 = *(a1 + 216);
  if (v6)
  {
    freeProResFrame(v6);
    *(a1 + 216) = 0;
  }

  v7 = *(a1 + 224);
  if (v7)
  {
    freeProResFrame(v7);
    *(a1 + 224) = 0;
  }

  v8 = *(a1 + 272);
  if (v8)
  {
    MEMORY[0x277CAF770](v8, 0x1000C80BDFB0063, a3);
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
  }

  if (v3 < 0x4651)
  {
    operator new[]();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResFrameReceiver::InitializeDoubleEncode();
  }

  v9 = *(a1 + 232);
  if (v9)
  {
    ProResHWAnalyzer::~ProResHWAnalyzer(v9);
    MEMORY[0x277CAF790]();
    *(a1 + 232) = 0;
  }

  v10 = *(a1 + 216);
  if (v10)
  {
    freeProResFrame(v10);
    *(a1 + 216) = 0;
  }

  v11 = *(a1 + 224);
  if (v11)
  {
    freeProResFrame(v11);
    *(a1 + 224) = 0;
  }

  result = *(a1 + 272);
  if (result)
  {
    MEMORY[0x277CAF770](result, 0x1000C80BDFB0063);
    result = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
  }

  return result;
}

void *allocateProResFrame(unsigned int a1)
{
  if (malloc_type_calloc(0x168uLL, 1uLL, 0x10100406F847EBDuLL))
  {
    operator new[]();
  }

  return 0;
}

uint64_t ProResFrameReceiver::RegisterCallback(ProResFrameReceiver *this)
{
  v16 = *MEMORY[0x277D85DE8];
  inputStruct[0] = ProResFrameReceiver::FrameDone;
  inputStruct[1] = this;
  *reference = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = IOConnectCallAsyncMethod(*(this + 8), 1u, *(this + 4), reference, 8u, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v3 = *(this + 78);
      *buf = 67109634;
      v7 = v3;
      v8 = 2080;
      v9 = "RegisterCallback";
      v10 = 1024;
      v11 = v2;
      _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): IOConnectCallAsyncMethod failed -> Dispatcher cannot be installed err 0x%x\n", buf, 0x18u);
    }

    ProResFrameReceiver::RemoveIODispatcherFromRunLoop(this);
  }

  return v2;
}

void ProResFrameReceiver::FrameDone(ProResFrameReceiver *this, void *a2, int32x4_t *a3, unint64_t *a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0uLL;
  v17 = 0;
  if (a3)
  {
    v8 = a4;
    v10 = a3->i32[0];
    v11 = a3->u32[2];
    v12 = a3[1].i32[0];
    v15 = a3[1].i64[1];
    v13 = a3[2].i32[0];
    v14 = a3[2].i32[2];
    if (v8 >= 8)
    {
      v16 = vuzp1q_s32(a3[3], a3[4]);
      v17 = a3[5].i64[0];
    }

    ProResFrameReceiver::ProcessFrameDone(this, v11, v10, v12, v13, &v15, v14);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResFrameReceiver::FrameDone();
  }
}

uint64_t ProResFrameReceiver::Setup(mach_port_t *this)
{
  Current = CFRunLoopGetCurrent();
  *this = Current;
  if (!Current)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::Setup();
    }

    return 3758097085;
  }

  v3 = ProResFrameReceiver::AddIODispatcherToRunLoop(this);
  if (v3)
  {
    v4 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::Setup();
    }

    return v4;
  }

  if (*(this + 64) == 1)
  {
    setpriority(3, 0, 4096);
  }

  else
  {
    ProResFrameReceiver::MakeCurrentThreadTimeConstraintThread(v3);
  }

  return ProResFrameReceiver::RegisterCallback(this);
}

uint64_t ProResFrameReceiver::AddIODispatcherToRunLoop(mach_port_t *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!IOCreateReceivePort(0x39u, this + 4))
  {
    buf.version = 1;
    buf.info = this;
    memset(&buf.retain, 0, 24);
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], this[4], MEMORY[0x277CD27F0], &buf, 0);
    *(this + 3) = v5;
    if (v5)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(v4, v5, 0);
      *(this + 1) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*this, RunLoopSource, *MEMORY[0x277CBF058]);
        return 0;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = this[78];
        v10 = 67109378;
        v11 = v8;
        v12 = 2080;
        v13 = "AddIODispatcherToRunLoop";
        _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: CFMachPortCreateRunLoopSource failed -> Dispatcher cannot be installed\n", &v10, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v7 = this[78];
        v10 = 67109634;
        v11 = v7;
        v12 = 2080;
        v13 = "AddIODispatcherToRunLoop";
        v14 = 2048;
        v15 = 0;
        _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: CFMachPortCreateWithPort failed m_CFAsyncPort %p\n", &v10, 0x1Cu);
      }

      *(this + 3) = 0;
    }

    ProResFrameReceiver::RemoveIODispatcherFromRunLoop(this);
    return 3758097085;
  }

  v2 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = this[78];
    LODWORD(buf.version) = 67109378;
    HIDWORD(buf.version) = v3;
    LOWORD(buf.info) = 2080;
    *(&buf.info + 2) = "AddIODispatcherToRunLoop";
    _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: IOCreateReceivePort failed -> Dispatcher cannot be installed\n", &buf, 0x12u);
  }

  return v2;
}

uint64_t ProResFrameReceiver::ChangeBackgroundPolicy(uint64_t this, int a2)
{
  if (*(this + 64) != a2)
  {
    *(this + 64) = a2;
  }

  return this;
}

uint64_t stitchCallback(unsigned __int8 *a1, size_t offsetIntoDestination, size_t dataLength, CMBlockBufferRef *a4)
{
  v4 = CMBlockBufferReplaceDataBytes(a1, *a4, offsetIntoDestination, dataLength);
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    stitchCallback();
  }

  return v4;
}

uint64_t ProResFrameReceiver::EmitPendingFrames(ProResFrameReceiver *this)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(this + 48);
  v2 = *(this + 25) + 32 * (v1 % *(this + 33));
  v3 = 1;
  if (*v2 == 1)
  {
    v5 = (this + 312);
    v6 = MEMORY[0x277D86220];
    while (*(v2 + 4) == v1)
    {
      v7 = *(v2 + 16);
      v8 = *(v2 + 8);
      if (v7 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = *v5;
        v10 = *(v8 + 56);
        *buf = 67109890;
        v20 = v9;
        v21 = 2080;
        v22 = "EmitPendingFrames";
        v23 = 1024;
        v24 = v7;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_277780000, v6, OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Emit to client status=0x%x for subFrameId=%d \n", buf, 0x1Eu);
      }

      v11 = *(v2 + 24);
      if (*(v8 + 4) > 3)
      {
        ProResFrameReceiver::EmitEncodedFrame(this, v8, v11, v1, v7);
        v14 = *(v2 + 24);
        if (v14)
        {
          CFRelease(v14);
        }

        v15 = *(v8 + 72);
        if (v15)
        {
          CVPixelBufferRelease(v15);
        }

        v16 = *(v8 + 80);
        if (v16)
        {
          CFRelease(v16);
        }
      }

      else
      {
        ProResFrameReceiver::EmitDecodedFrame(this, v8, v11, v1, v7, 0);
        v12 = *(v2 + 24);
        if (v12)
        {
          CVPixelBufferRelease(v12);
        }

        v13 = *(v8 + 40);
        if (v13)
        {
          CFRelease(v13);
        }

        VTDecoderSessionCleanUpAfterDecode();
      }

      ++*(this + 48);
      pthread_mutex_lock(*(this + 13));
      bzero(v8, 0x320uLL);
      **(this + 12) = 1;
      pthread_cond_signal(*(this + 14));
      pthread_mutex_unlock(*(this + 13));
      atomic_fetch_add(*(this + 9), 0xFFFFFFFF);
      pthread_mutex_lock(*(this + 10));
      if (!atomic_load(*(this + 9)))
      {
        pthread_cond_signal(*(this + 11));
      }

      pthread_mutex_unlock(*(this + 10));
      *v2 = 0u;
      *(v2 + 16) = 0u;
      v1 = *(this + 48);
      v2 = *(this + 25) + 32 * (v1 % *(this + 33));
      if ((*v2 & 1) == 0)
      {
        return 1;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::EmitPendingFrames();
    }

    return 0;
  }

  return v3;
}