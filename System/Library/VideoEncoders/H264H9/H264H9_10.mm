uint64_t AVE_Time_Gen(int a1, uint64_t a2)
{
  v2 = 4294966296;
  if (a1 && a2)
  {
    if (14400000 % a1)
    {
      v3 = a1;
    }

    else
    {
      v3 = 14400000;
    }

    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = (v3 * (*a2 + v4 / a1) / v4);
    }

    else
    {
      v5 = 0;
    }

    v2 = 0;
    *a2 = v5;
    *(a2 + 8) = v3;
  }

  return v2;
}

pthread_mutex_t *AVE_Mutex_Create(void)
{
  v0 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  v1 = v0;
  if (v0)
  {
    *&v0->__opaque[24] = 0u;
    *&v0->__opaque[40] = 0u;
    *&v0->__sig = 0u;
    *&v0->__opaque[8] = 0u;
    if (pthread_mutex_init(v0, 0))
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t AVE_Mutex_Destroy(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_destroy(a1))
  {
    v2 = 4294966296;
  }

  else
  {
    v2 = 0;
  }

  free(a1);
  return v2;
}

uint64_t AVE_ComposeFilePath(const char *a1, const char *a2, const char *a3, char *a4, uint64_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  *v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0;
  if (!a4)
  {
    return 4294966295;
  }

  *a4 = 0;
  setlocale(0, &unk_2954B8F4E);
  time(&v16);
  v10 = localtime(&v16);
  strftime(v17, 0x2DuLL, "%Y-%m-%d_%H-%M-%S", v10);
  v11 = "/var/mobile/Media/DCIM/";
  if (a1)
  {
    v11 = a1;
  }

  if (a2 | a3)
  {
    v12 = "_";
  }

  else
  {
    v12 = &unk_2954B8F4E;
  }

  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = &unk_2954B8F4E;
  }

  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = &unk_2954B8F4E;
  }

  AVE_SNPrintf(a4, a5, "%s%s%s%s%s", v11, v17, v12, v13, v14);
  return 0;
}

void AVE_BlkPool::AVE_BlkPool(AVE_BlkPool *this, uint64_t a2)
{
  *(this + 12) = 0;
  *(this + 4) = 0;
  AVE_DLList_Init(this + 32, a2);
  *(this + 16) = 0;
}

uint64_t AVE_BlkPool::Destroy(AVE_BlkPool *this)
{
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "Destroy", this);
      v5 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v5, 56, v19, "AVE_BlkPool", "Destroy", this);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", CurrTime, 56, LevelStr, "AVE_BlkPool", "Destroy", this);
    }
  }

  do
  {
    v6 = AVE_DLList_Back(this + 4);
    if (!v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = v6;
    AVE_DLList_PopBack(this + 4);
    v8 = AVE_BlkBuf_Destroy(v7);
  }

  while (!v8);
  v9 = v8;
  if (AVE_Log_CheckLevel(0x38u, 5))
  {
    v10 = AVE_Log_CheckConsole(0x38u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(5);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v11, 56, v12, "AVE_BlkPool", "Destroy", 285, this, v7, v9);
      v13 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v13, 56, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v11, 56, v12);
    }
  }

LABEL_12:
  v14 = *(this + 3);
  if (v14)
  {
    v9 = AVE_Mutex_Destroy(v14) + v9;
    *(this + 3) = 0;
  }

  *this = 0;
  *(this + 16) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v15 = AVE_Log_CheckConsole(0x38u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v16, 56, v17, "AVE_BlkPool", "Destroy", this, v9);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v16);
  }

  return v9;
}

uint64_t AVE_BlkPool::Create(AVE_BlkPool *this, int a2, int a3, int a4, unsigned int a5, int a6)
{
  v41 = 0;
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v11 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "Create", this, a2, a3, a4, a5, a6);
      v14 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d", v14, 56, v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d", CurrTime, 56, LevelStr);
    }
  }

  if (a3 < 1 || a4 < 1 || a5 > 0x40 || a5 && ((a5 + 127) & a5) != 0)
  {
    if (AVE_Log_CheckLevel(0x38u, 4))
    {
      v15 = AVE_Log_CheckConsole(0x38u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d\n", v16, 56, v17, "AVE_BlkPool", "Create", 75, "num > 0 && size > 0 && alignment >= 0 && alignment <= 64 && (alignment == 0 || (alignment & (alignment - 1)) == 0)", this, a2, a3, a4, a5, a6);
        v18 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d", v18, 56, v36, "AVE_BlkPool", "Create");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d", v16, 56, v17, "AVE_BlkPool", "Create");
      }
    }

    v20 = 4294966295;
    goto LABEL_17;
  }

  if ((a2 & 1) == 0)
  {
    v19 = 0;
    goto LABEL_23;
  }

  v19 = AVE_Mutex_Create();
  if (v19)
  {
LABEL_23:
    v20 = AVE_BlkBuf_Create(a3, a4, a5, &v41);
    if (v20)
    {
      if (AVE_Log_CheckLevel(0x38u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x38u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p\n", v27, 56, v28, "AVE_BlkPool", "Create", 88, "ret == 0", this, a2, a3, a4, a5, &v41);
          v39 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p", v39, 56, v29, "AVE_BlkPool", "Create");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p", v27, 56, v28, "AVE_BlkPool", "Create");
        }
      }

      if (v19)
      {
        AVE_Mutex_Destroy(v19);
      }
    }

    else
    {
      v30 = v41;
      *this = a2;
      *(this + 1) = a3;
      *(this + 2) = a4;
      *(this + 3) = a5;
      *(this + 4) = a6;
      *(this + 3) = v19;
      AVE_DLList_PushBack(this + 32, v30);
    }

    goto LABEL_17;
  }

  if (AVE_Log_CheckLevel(0x38u, 4))
  {
    v31 = AVE_Log_CheckConsole(0x38u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d\n", v32, 56, v33, "AVE_BlkPool", "Create", 82, "pMutex != __null", this, a2, a3, a4, a5, a6);
      v34 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d", v34, 56, v38, "AVE_BlkPool", "Create");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d", v32, 56, v33, "AVE_BlkPool", "Create");
    }
  }

  v20 = 4294966293;
LABEL_17:
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v21 = AVE_Log_CheckConsole(0x38u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d\n", v22, 56, v23, "AVE_BlkPool", "Create", this, a2, a3, a4, a5, a6, v20);
      v24 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d", v24, 56, v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d", v22, 56, v23);
    }
  }

  return v20;
}

uint64_t AVE_BlkPool::CreateWithMem(AVE_BlkPool *this, int a2, const void *a3, int a4, int a5, int a6, unsigned int a7)
{
  v44[0] = 0;
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v12 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "CreateWithMem", this, a2, a3, a4, a5, a6, a7);
      v15 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d", v15, 56, v38, "AVE_BlkPool");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d", CurrTime, 56, LevelStr, "AVE_BlkPool");
    }
  }

  if (a4 < 1 || a5 < 1 || a6 < 1 || a7 > 0x40 || a7 && ((a7 + 127) & a7) != 0)
  {
    if (AVE_Log_CheckLevel(0x38u, 4))
    {
      v16 = AVE_Log_CheckConsole(0x38u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d\n", v17, 56, v18, "AVE_BlkPool", "CreateWithMem", 146, "msize > 0 && num > 0 && size > 0 && alignment >= 0 && alignment <= 64 && (alignment == 0 || (alignment & (alignment - 1)) == 0)", this, a2, a3, a4, a5, a6, a7);
        v19 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d", v19, 56, v39, "AVE_BlkPool", "CreateWithMem", 146);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d", v17, 56, v18, "AVE_BlkPool", "CreateWithMem", 146);
      }
    }

    v21 = 4294966295;
    goto LABEL_18;
  }

  if ((a2 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_24;
  }

  v20 = AVE_Mutex_Create();
  if (v20)
  {
LABEL_24:
    v21 = AVE_BlkBuf_CreateWithMem(a3, a4, a5, a6, a7, v44);
    if (v21)
    {
      if (AVE_Log_CheckLevel(0x38u, 4))
      {
        v29 = a6;
        v30 = AVE_Log_CheckConsole(0x38u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p\n", v31, 56, v32, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0", this, a2, a3, a4, a5, v29, a7, v44);
          v41 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          a6 = v29;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p", v41, 56, v33, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0");
        }

        else
        {
          a6 = v29;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p", v31, 56, v32, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0");
        }
      }

      if (v20)
      {
        AVE_Mutex_Destroy(v20);
      }
    }

    else
    {
      *this = a2;
      *(this + 1) = a5;
      *(this + 2) = a6;
      *(this + 3) = a7;
      *(this + 4) = 0;
      *(this + 3) = v20;
      AVE_DLList_PushBack(this + 32, v44[0]);
    }

    goto LABEL_18;
  }

  if (AVE_Log_CheckLevel(0x38u, 4))
  {
    v34 = AVE_Log_CheckConsole(0x38u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d\n", v35, 56, v36, "AVE_BlkPool", "CreateWithMem", 153, "pMutex != __null", this, a2, a3, a4, a5, a6, a7);
      v37 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d", v37, 56, v40, "AVE_BlkPool", "CreateWithMem", 153);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d", v35, 56, v36, "AVE_BlkPool", "CreateWithMem", 153);
    }
  }

  v21 = 4294966293;
LABEL_18:
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v22 = a6;
    v23 = AVE_Log_CheckConsole(0x38u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(6);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d\n", v24, 56, v25, "AVE_BlkPool", "CreateWithMem", this, a2, a3, a4, a5, v22, a7, v21);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d", v26, 56, v27, "AVE_BlkPool", "CreateWithMem");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d", v24, 56, v25, "AVE_BlkPool", "CreateWithMem");
    }
  }

  return v21;
}

uint64_t AVE_GetAbsTime(void)
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 1000;
}

unsigned int *AVE_DevCap_FindSearchRangeMode(int a1, int a2, int a3, int a4)
{
  result = AVE_DevCap_FindSearchRange(a1, a2, a3);
  if (result)
  {

    return AVE_DevCap_SearchRange_Find(result, a4);
  }

  return result;
}

uint64_t AVE_DevCap_FindPixelPerf(int a1, int a2, int a3, int a4, int a5, int a6)
{
  result = AVE_DevCap_FindPerf(a1, a2, a3);
  if (result)
  {
    result = AVE_DevCap_Perf_Find(result, a4, a5, a6);
    if (result)
    {
      return *(result + 16);
    }
  }

  return result;
}

int *AVE_Enc_FindThroughputMode(int a1, int a2, int a3, int a4, uint64_t a5)
{
  result = AVE_DevCap_FindThroughput(a1, a2, a3);
  if (result)
  {
    result = AVE_DevCap_Throughput_Find(result, a4, a5);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t AVE_Enc_DecideThroughputMode(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, int a12, int a13)
{
  if (a1)
  {
    v20 = a13;
    v21 = 1;
    v22 = a1;
  }

  else if (a8 < 0)
  {
    if (a2)
    {
      v20 = a13;
      v21 = 7;
      v22 = a2;
    }

    else
    {
      v22 = 3;
      if (a9 == 1)
      {
        v20 = a13;
        v21 = 8;
      }

      else
      {
        v20 = a13;
        if (((a13 + 15) >> 4) * ((a12 + 15) >> 4) <= 3600)
        {
          v22 = 1;
        }

        else
        {
          v22 = 3;
        }

        v21 = 9;
      }
    }
  }

  else
  {
    v20 = a13;
    if (a8)
    {
      if (a10)
      {
        v21 = 5;
        if (a10 < 0)
        {
          v22 = 5;
        }

        else
        {
          ThroughputMode = AVE_Enc_FindThroughputMode(a3, a5, a6, a7, a11);
          if (ThroughputMode <= 5)
          {
            v22 = 5;
          }

          else
          {
            v22 = ThroughputMode;
          }

          v21 = 6;
        }
      }

      else
      {
        if (a4 > 29)
        {
          v21 = 3;
        }

        else
        {
          v21 = 4;
        }

        if (a4 <= 29)
        {
          v22 = 5;
        }

        else
        {
          v22 = 7;
        }
      }
    }

    else
    {
      v22 = 3;
      v21 = 2;
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v30 = a3;
    v23 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d\n", CurrTime, 16, LevelStr, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30, a4, a5, a6, a7, a8, a9, a10, a11, a12, v20, v21, v22);
      v29 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d", v29, 16, v27, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d", CurrTime, 16, LevelStr, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30);
    }
  }

  return v22;
}

uint64_t AVE_Enc_DecideInputQueueMaxCnt(int a1, int a2, int a3, int a4, int a5)
{
  if (a5 < 0)
  {
    v10 = 24;
  }

  else
  {
    v10 = 48;
  }

  if (a5 >= 0)
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  v12 = a5 + 24;
  if (a5 >= 0)
  {
    v13 = 12;
  }

  else
  {
    v12 = 24;
    v13 = 2;
  }

  if (a4 == 1)
  {
    v10 = v12;
    v11 = v13;
  }

  if (a3 == 1)
  {
    v14 = v10;
  }

  else
  {
    v14 = 24;
  }

  if (a3 == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = 5;
  }

  if (a2 == 2)
  {
    v16 = 24;
  }

  else
  {
    v16 = v14;
  }

  if (a2 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15;
  }

  if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v18 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d\n", CurrTime, 16, LevelStr, "AVE_Enc_DecideInputQueueMaxCnt", 494, a1, a2, a3, a4, a5, v16, v17);
      v21 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d", v21, 16, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d", CurrTime, 16, LevelStr);
    }
  }

  return v16;
}

uint64_t AVE_VUI_AddAllColorPrimToCFArray(CFMutableArrayRef theArray)
{
  for (i = 0; i != 6; ++i)
  {
    CFArrayAppendValue(theArray, gsc_psaAVE_ColorPrimaries_Supported[i]);
  }

  return 0;
}

uint64_t AVE_VUI_AddAllTransCharToCFArray(CFMutableArrayRef theArray)
{
  for (i = 0; i != 8; ++i)
  {
    CFArrayAppendValue(theArray, gsc_psaAVE_TransferCharacteristics_Supported[i]);
  }

  CFArrayAppendValue(theArray, *MEMORY[0x29EDB9648]);
  return 0;
}

uint64_t AVE_VUI_AddAllMatrixCoeffToCFArray(CFMutableArrayRef theArray)
{
  for (i = 0; i != 6; ++i)
  {
    CFArrayAppendValue(theArray, gsc_psaAVE_MatrixCoefficients_Supported[i]);
  }

  return 0;
}

void _GLOBAL__sub_I_AVE_VUI_Helper_Lib_cpp()
{
  v0 = *MEMORY[0x29EDB95B0];
  gsc_psaAVE_ColorPrimaries_Supported[0] = *MEMORY[0x29EDB95C0];
  unk_2A189B640 = v0;
  v1 = *MEMORY[0x29EDB95B8];
  qword_2A189B648 = *MEMORY[0x29EDB95D0];
  unk_2A189B650 = v1;
  v2 = *MEMORY[0x29EDB95A8];
  qword_2A189B658 = *MEMORY[0x29EDB95C8];
  unk_2A189B660 = v2;
  v3 = *MEMORY[0x29EDB9630];
  gsc_psaAVE_TransferCharacteristics_Supported[0] = *MEMORY[0x29EDB9620];
  unk_2A189B5D0 = v3;
  v4 = *MEMORY[0x29EDB9650];
  qword_2A189B5D8 = *MEMORY[0x29EDB9628];
  unk_2A189B5E0 = v4;
  v5 = *MEMORY[0x29EDB9638];
  qword_2A189B5E8 = *MEMORY[0x29EDB9610];
  unk_2A189B5F0 = v5;
  v6 = *MEMORY[0x29EDB9618];
  qword_2A189B5F8 = *MEMORY[0x29EDB9640];
  unk_2A189B600 = v6;
  v7 = *MEMORY[0x29EDB9678];
  gsc_psaAVE_MatrixCoefficients_Supported[0] = *MEMORY[0x29EDB9680];
  unk_2A189B610 = v7;
  v8 = *MEMORY[0x29EDB9688];
  qword_2A189B618 = *MEMORY[0x29EDB9670];
  unk_2A189B620 = v8;
  v9 = *MEMORY[0x29EDB9668];
  qword_2A189B628 = *MEMORY[0x29EDB9660];
  unk_2A189B630 = v9;
}

uint64_t AVE_CreateUSurface(uint64_t a1, const char *a2, IOSurfaceID a3, unint64_t a4, AVE_USurface **a5)
{
  if (a3 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 64, "SID != 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 64);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 64);
    }
  }

  return 4294966295;
}

uint64_t AVE_CreateUSurface(uint64_t a1, const char *a2, int a3, __IOSurface **a4, AVE_USurface **a5)
{
  if (a3 >= 1 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 122, "size > 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 122);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 122);
    }
  }

  return 4294966295;
}

uint64_t AVE_CreateInUSurfaces(const void *a1, uint64_t a2, const void *a3)
{
  if (a1 && a3)
  {
    return 0;
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v7 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", CurrTime, 76, LevelStr, "AVE_CreateInUSurfaces", 219, "pSInfoSet != __null && pSet != __null", a1, a2, a3);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v10, 76, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", CurrTime, 76, LevelStr);
    }
  }

  AVE_DestroyInUSurfaces(a3);
  return 4294966295;
}

uint64_t AVE_DestroyInUSurfaces(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v2 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", CurrTime, 76, LevelStr, "AVE_DestroyInUSurfaces", 245, "pSet != __null", 0);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", CurrTime);
  }

  return 4294966295;
}

uint64_t AVE_CheckQP(int a1, int a2)
{
  if (-6 * a2 + 48 <= a1 && a1 <= 51)
  {
    return 0;
  }

  else
  {
    return 4294966278;
  }
}

uint64_t AVE_CheckQPRange(int *a1, int a2)
{
  v2 = -6 * a2 + 48;
  v3 = a1[1];
  if (v2 <= *a1 && *a1 <= 51)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1018;
  }

  if (v2 <= v3 && v3 <= 51)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1018;
  }

  return (v7 + v5);
}

uint64_t AVE_SearchRange_Make(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v4 = AVE_CFDict_AddSInt32(@"MotionEstimationModeID", *a1, a2);
    if (!v4)
    {
      v13 = AVE_CFDict_AddSInt32(@"MotionEstimationHorizontalSearchRange", a1[1], a2);
      if (v13)
      {
        v5 = v13;
        if (!AVE_Log_CheckLevel(0x36u, 4))
        {
          return v5;
        }

        v14 = AVE_Log_CheckConsole(0x36u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v14)
        {
          goto LABEL_29;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 82, "ret == 0", a1, a2, v5);
      }

      else
      {
        v15 = AVE_CFDict_AddSInt32(@"MotionEstimationVerticalSearchRange", a1[2], a2);
        if (v15)
        {
          v5 = v15;
          if (!AVE_Log_CheckLevel(0x36u, 4))
          {
            return v5;
          }

          v16 = AVE_Log_CheckConsole(0x36u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (!v16)
          {
            goto LABEL_29;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 87, "ret == 0", a1, a2, v5);
        }

        else
        {
          v5 = AVE_CFDict_AddSInt32(@"MotionEstimationCacheMode", a1[3], a2);
          if (!v5 || !AVE_Log_CheckLevel(0x36u, 4))
          {
            return v5;
          }

          v17 = AVE_Log_CheckConsole(0x36u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (!v17)
          {
            goto LABEL_29;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 92, "ret == 0", a1, a2, v5);
        }
      }

      v9 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      goto LABEL_28;
    }

    v5 = v4;
    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v6 = AVE_Log_CheckConsole(0x36u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v6)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 77, "ret == 0", a1, a2, v5);
        v9 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
LABEL_28:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d", v9, 54, v19);
        return v5;
      }

LABEL_29:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d", CurrTime, 54, LevelStr);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x36u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 54, v12, "AVE_SearchRange_Make", 72, "pEntry != __null && pDict != __null", a1, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 54);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t AVE_SearchRange_MakeArray(int *a1, int a2, __CFArray *a3)
{
  if (a1 && a2 >= 1 && a3)
  {
    v6 = 0;
    v7 = MEMORY[0x29EDB9010];
    v8 = MEMORY[0x29EDB9020];
    for (i = a1; ; i += 4)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, v7, v8);
      if (!Mutable)
      {
        break;
      }

      v11 = Mutable;
      v12 = AVE_SearchRange_Make(i, Mutable);
      if (v12)
      {
        v13 = v12;
        CFRelease(v11);
        return v13;
      }

      CFArrayAppendValue(a3, v11);
      CFRelease(v11);
      if (a2 == ++v6)
      {
        return 0;
      }
    }

    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x36u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_MakeArray", 168, "pDict != __null", a1, a2, a3, v6);
        v21 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d", v21, 54, v24, "AVE_SearchRange_MakeArray");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d", CurrTime, 54, LevelStr, "AVE_SearchRange_MakeArray");
      }
    }

    return 4294966293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x36u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v15, 54, v16, "AVE_SearchRange_MakeArray", 160, "pEntry != __null && num > 0 && pArray != __null", a1, a2, a3);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v17, 54, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v15, 54, v16);
      }
    }

    return 4294966295;
  }
}

uint64_t htpc_decompress_plane(uint64_t result, const unsigned __int8 *a2, _BYTE *a3, int a4, int a5, int a6, int a7, unsigned int a8, char a9, unsigned int a10)
{
  v50 = result;
  v89 = *MEMORY[0x29EDCA608];
  v79 = 4;
  v80 = a6;
  v44 = 1;
  v81 = 1 << (a6 - 1);
  v82 = 0x1000000001;
  v83 = 0u;
  v84 = 0u;
  v72 = 4;
  v73 = a6;
  v74 = v81;
  v75 = 0x1000000001;
  if (a6 <= 8)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v46 = v10;
  v76 = 0uLL;
  v77 = 0uLL;
  v65 = 4;
  v66 = a6;
  v67 = 1 << (a6 - 1);
  v68 = 0x1000000001;
  v69 = 0uLL;
  v70 = 0uLL;
  if (a5 >= 1)
  {
    v43 = 0;
    v55 = 0;
    v11 = a6 != 8;
    if (a6 == 8)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (a7)
    {
      v13 = 8;
    }

    else
    {
      v13 = 16;
    }

    v14 = -1 << a6;
    if (a7)
    {
      v11 = v12;
    }

    v15 = a8 >> v11;
    if (a7)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    v42 = 16 * v15;
    v62 = v13;
    v48 = 2 * v13;
    v49 = v16;
    if (a7)
    {
      v17 = 8;
    }

    else
    {
      v17 = 4;
    }

    v45 = v17;
    v18 = ~v14;
    v53 = 2 * v15;
    v54 = v15;
    v41 = 8 * v15;
    v47 = ~v14;
    do
    {
      if (a4 >= 1)
      {
        v19 = 0;
        v20 = v43;
        v21 = v44;
        do
        {
          v22 = *(v50 + (v55 >> 3 >> a9) * a10 + 4 * ((v19 >> v49 << a9) + (~(-1 << a9) & (v55 >> 3))));
          v23 = &a2[v22 & 0xFFFFFFF];
          v86 = v23;
          v87 = 0;
          v85 = 0;
          if (v22 >> 28)
          {
            result = htpc_entropy::dec_symbols(&v85, v46, v45, v88, 128, 16);
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            do
            {
              v25 -= a6;
              HIDWORD(v85) = v25;
              if (v25 < 0)
              {
                do
                {
                  v27 = v23 + 1;
                  v86 = v23 + 1;
                  v26 = *v23 | (v26 << 8);
                  v25 += 8;
                  v85 = __PAIR64__(v25, v26);
                  ++v23;
                }

                while (v25 >= 8);
              }

              else
              {
                v27 = v23;
              }

              v88[v24++] = (v26 >> v25) & v18;
              v23 = v27;
            }

            while (v24 != 128);
          }

          v28 = 0;
          v29 = 0;
          v57 = v20;
          v52 = v21;
          v30 = v21;
          do
          {
            v31 = 0;
            v56 = v30;
            do
            {
              v33 = (v29 | v55) < a5 && v19 + v31 < a4;
              v34 = &v88[v28];
              v35 = *v34;
              v36 = v22 >> 28;
              if (a7)
              {
                if (v36)
                {
                  result = htpc_codec<8,8>::dec_sample(v71, v29, v31, v35);
                  LOWORD(v35) = result;
                }

                if (v33)
                {
                  v37 = v30 - 1;
                  if (a6 == 8)
                  {
                    a3[v37] = v35;
                  }

                  else
                  {
                    *&a3[2 * v37] = v35;
                  }
                }

                v39 = v34[1];
                if (v36)
                {
                  result = htpc_codec<8,8>::dec_sample(v64, v29, v31, v39);
                  LOWORD(v39) = result;
                }

                if (v33)
                {
                  if (a6 == 8)
                  {
                    a3[v30] = v39;
                  }

                  else
                  {
                    *&a3[2 * v30] = v39;
                  }
                }

                v40 = 2;
              }

              else
              {
                if (v36)
                {
                  result = htpc_codec<16,8>::dec_sample(v78, v29, v31, v35);
                  LOWORD(v35) = result;
                }

                if (v33)
                {
                  v38 = (v57 + v31);
                  if (a6 == 8)
                  {
                    a3[v38] = v35;
                  }

                  else
                  {
                    *&a3[2 * v38] = v35;
                  }
                }

                v40 = 1;
              }

              v28 += v40;
              ++v31;
              v30 += 2;
            }

            while (v62 != v31);
            v29 = (v29 + 1);
            v30 = v56 + v53;
            v57 += v54;
          }

          while (v29 != 8);
          v19 += v62;
          v18 = v47;
          v21 = v52 + v48;
          v20 += v62;
        }

        while (v19 < a4);
      }

      v44 += v42;
      v43 += v41;
      v55 += 8;
    }

    while (v55 < a5);
  }

  return result;
}

uint64_t htpc_entropy::get_bits(htpc_entropy *this, int a2)
{
  v2 = *this;
  v3 = *(this + 1) - a2;
  *(this + 1) = v3;
  if (v3 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
    do
    {
      v7 = v6 + 1;
      *(this + 1) = v6 + 1;
      if (v5 && v6 >= v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = *v6;
      }

      v2 = v8 | (v2 << 8);
      v4 = v3 + 8;
      *this = v2;
      *(this + 1) = v3 + 8;
      v6 = v7;
      v9 = v3 < -8;
      v3 += 8;
    }

    while (v9);
  }

  else
  {
    v4 = v3;
  }

  return (v2 >> v4) & ~(-1 << a2);
}

uint64_t htpc_entropy::dec_symbols(htpc_entropy *this, int a2, int a3, int *a4, int a5, int a6)
{
  if (*(this + 1))
  {
    htpc_entropy::dec_symbols();
  }

  v8 = *(this + 1);
  v33 = a5 - 1;
  if (a5 >= 1)
  {
    v10 = a3;
    v30 = *(this + 1);
    v11 = 0;
    v12 = 0;
    v13 = a6 + 1;
    v35 = -a3;
    v36 = a3;
    v31 = a6 + 1;
    do
    {
      v14 = htpc_entropy::get_bits(this, a2) + 2;
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if (v10 >= 1)
      {
        v16 = 0;
        v17 = v14 > v13;
        if (v11 <= a5)
        {
          v18 = a5;
        }

        else
        {
          v18 = v11;
        }

        v19 = (v18 - v11);
        v20 = &a4[v11];
        do
        {
          if (v19 == v16)
          {
            break;
          }

          *v20 = htpc_entropy::get_bits(this, v15);
          if ((~v16 & 3) == 0)
          {
            if (v17 || (v21 = *(this + 2)) != 0 && *(this + 1) > v21)
            {
              v17 = 0;
              *(v20 - 1) = 0;
              *(v20 - 3) = 0;
            }

            else
            {
              v17 = 0;
            }
          }

          ++v16;
          ++v20;
        }

        while (v36 != v16);
        v22 = 0;
        v10 = a3;
        v23 = v33;
        v13 = v31;
        v24 = v35;
        do
        {
          v25 = v11 + v22;
          if (v11 + v22 >= a5)
          {
            break;
          }

          if (v12)
          {
            v26 = v22 + v11;
            if ((v22 + v11 + a3 + a3 * (a4[v26] & 0x1F)) >= a5)
            {
              v27 = v23 - v11;
            }

            else
            {
              v27 = a3 + a3 * (a4[v26] & 0x1F);
            }

            a4[v26] = 0;
            if (v27)
            {
              bzero(&a4[v22 + 1 + v11], 4 * v27);
              v11 += v27;
              v25 = v22 + v11;
            }

            v24 = v35;
          }

          if (a4[v25] == 1)
          {
            v12 = 0;
            v28 = v24 + v22 == -2 || a3 == 1;
            if (v28 && v25 + 2 < a5)
            {
              a4[v25] = 0;
              v12 = 1;
            }
          }

          else
          {
            v12 = 0;
          }

          ++v22;
          --v23;
        }

        while (v24 + v22);
      }

      v11 += v10;
    }

    while (v11 < a5);
    LODWORD(v8) = v30;
    if (*(this + 1) >= 8)
    {
      htpc_entropy::dec_symbols();
    }
  }

  *(this + 1) = 0;
  return (*(this + 2) - v8);
}

uint64_t htpc_codec<16,8>::dec_sample(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  if (a1[131])
  {
    v8 = htpc_codec<16,8>::pred_mmap(a1, a2, a3);
  }

  else
  {
    v9 = a1 + 130;
    if (a2 >= 1)
    {
      v9 = &a1[16 * (a2 - 1) + a3];
    }

    if (a3 >= 1)
    {
      v9 = &a1[16 * a2 + (a3 - 1)];
    }

    v8 = *v9;
    a1[133] = *v9;
  }

  v10 = a4 >> 1;
  if (a4)
  {
    v10 = -v10;
  }

  a1[139] = v10;
  v11 = v8 + v10;
  if (v11 < 0 || v11 >> a1[129])
  {
    a1[140] = 1;
  }

  result = v11 & ~(-1 << a1[132]);
  a1[16 * v6 + v5] = result;
  return result;
}

uint64_t htpc_codec<8,8>::dec_sample(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  if (a1[67])
  {
    v8 = htpc_codec<8,8>::pred_mmap(a1, a2, a3);
  }

  else
  {
    v9 = a1 + 66;
    if (a2 >= 1)
    {
      v9 = &a1[8 * (a2 - 1) + a3];
    }

    if (a3 >= 1)
    {
      v9 = &a1[8 * a2 + (a3 - 1)];
    }

    v8 = *v9;
    a1[69] = *v9;
  }

  v10 = a4 >> 1;
  if (a4)
  {
    v10 = -v10;
  }

  a1[75] = v10;
  v11 = v8 + v10;
  if (v11 < 0 || v11 >> a1[65])
  {
    a1[76] = 1;
  }

  result = v11 & ~(-1 << a1[68]);
  a1[8 * v6 + v5] = result;
  return result;
}

uint64_t htpc_codec<16,8>::pred_mmap(_DWORD *a1, int a2, int a3)
{
  if (a2)
  {
    if (a3 % a1[128])
    {
      v3 = a1[138] + a1[139];
      a1[138] = v3;
      v4 = a1[136];
      v5 = a1[137];
    }

    else
    {
      if (a3 <= 0)
      {
        v9 = (a2 - 2);
        v10 = (a2 - 1);
        if (a2 <= 1)
        {
          v10 = v10;
          v9 = v10;
        }

        v5 = a1[16 * v9 + a3];
        a1[134] = v5;
        v8 = &a1[16 * v10 + a3];
      }

      else
      {
        v8 = &a1[16 * a2 + (a3 - 1)];
        v5 = *(v8 - 16);
        a1[134] = v5;
      }

      v11 = *v8;
      a1[133] = *v8;
      v3 = v11 - v5;
      if (v11 >= v5)
      {
        v4 = v5;
      }

      else
      {
        v4 = v11;
      }

      a1[136] = v4;
      if (v11 > v5)
      {
        v5 = v11;
      }

      a1[137] = v5;
      a1[138] = v3;
    }

    v12 = a1[16 * a2 - 16 + a3];
    a1[135] = v12;
    if (v12 < v4)
    {
      v4 = v12;
    }

    a1[136] = v4;
    if (v12 > v5)
    {
      v5 = v12;
    }

    a1[137] = v5;
    v13 = v3 + v12;
    if (v13 < v5)
    {
      v5 = v13;
    }

    if (v13 >= v4)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6 = &a1[a3 - 1];
    if (a3 <= 0)
    {
      v6 = a1 + 130;
    }

    v7 = *v6;
    a1[133] = v7;
  }

  return v7;
}

uint64_t htpc_codec<8,8>::pred_mmap(_DWORD *a1, int a2, int a3)
{
  if (a2)
  {
    if (a3 % a1[64])
    {
      v3 = a1[74] + a1[75];
      a1[74] = v3;
      v4 = a1[72];
      v5 = a1[73];
    }

    else
    {
      if (a3 <= 0)
      {
        v9 = (a2 - 2);
        v10 = (a2 - 1);
        if (a2 <= 1)
        {
          v10 = v10;
          v9 = v10;
        }

        v5 = a1[8 * v9 + a3];
        a1[70] = v5;
        v8 = &a1[8 * v10 + a3];
      }

      else
      {
        v8 = &a1[8 * a2 + a3 - 1];
        v5 = *(v8 - 8);
        a1[70] = v5;
      }

      v11 = *v8;
      a1[69] = *v8;
      v3 = v11 - v5;
      if (v11 >= v5)
      {
        v4 = v5;
      }

      else
      {
        v4 = v11;
      }

      a1[72] = v4;
      if (v11 > v5)
      {
        v5 = v11;
      }

      a1[73] = v5;
      a1[74] = v3;
    }

    v12 = a1[8 * a2 - 8 + a3];
    a1[71] = v12;
    if (v12 < v4)
    {
      v4 = v12;
    }

    a1[72] = v4;
    if (v12 > v5)
    {
      v5 = v12;
    }

    a1[73] = v5;
    v13 = v3 + v12;
    if (v13 < v5)
    {
      v5 = v13;
    }

    if (v13 >= v4)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6 = &a1[a3 - 1];
    if (a3 <= 0)
    {
      v6 = a1 + 66;
    }

    v7 = *v6;
    a1[69] = v7;
  }

  return v7;
}

BOOL interchange_compression::check_valid_lossy_level(interchange_compression *this, unsigned int a2)
{
  v2 = this - 1;
  result = 0;
  if (a2 || v2 >= 2)
  {
    v3 = a2 == 6 || a2 == 8;
    v4 = v3;
    if (this != 2 || !v4)
    {
      v5 = a2 != 25 && a2 - 9 >= 2;
      v6 = !v5;
      if ((this != 3 || !v6) && (a2 > 0x1A || ((1 << a2) & 0x4C00000) == 0 || v2 >= 2))
      {
        return 1;
      }
    }
  }

  return result;
}

interchange_compression::decompressor *interchange_decompress_plane(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, interchange_compression *a11)
{
  v114 = *MEMORY[0x29EDCA608];
  if (a7)
  {
    v11 = 16;
  }

  else
  {
    v11 = 32;
  }

  v105 = v11;
  if ((a6 | 2) != 0xA)
  {
    interchange_decompress_plane();
  }

  if (a7)
  {
    v15 = 8;
  }

  else
  {
    v15 = 1;
  }

  if (a7)
  {
    v16 = 10;
  }

  else
  {
    v16 = 3;
  }

  if (a7)
  {
    v17 = 4;
  }

  else
  {
    v17 = 5;
  }

  v93 = v17;
  if (a6 == 8)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  v19 = (a10 + a5);
  v20 = &interchange_compression::lossy_parameters[28 * v18];
  v88 = v20[a11 + 4];
  result = interchange_compression::decompressor::decompressor(v112, v18, a11, 0);
  memset(v113, 0, sizeof(v113));
  if (v19)
  {
    v96 = 0;
    v22 = (a9 + a4);
    v23 = (v105 - 1 + HIDWORD(a9) + v22) >> v93;
    v24 = (v105 - 1 + HIDWORD(a10) + v19) >> v93;
    v25 = 32 - __clz(v24 - 1);
    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = 32 - __clz(v23 - 1);
    if (v23 < 2)
    {
      v27 = 0;
    }

    if (v27 >= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    v29 = 5;
    if (a7)
    {
      v29 = 3;
    }

    v85 = v29;
    v86 = 2 * v28;
    v77 = v20 + 8;
    v78 = &interchange_compression::memory_parameters[11 * v18];
    v82 = vdupq_n_s64(v28 - 1);
    v81 = (v28 + 1) & 0x7E;
    v80 = -a9 - a4 * a10;
    v79 = -(2 * a4 * a10 + 2 * a9);
    v30 = vdupq_n_s64(1uLL);
    v31 = vdupq_n_s64(2uLL);
    v83 = v31;
    v84 = v30;
    v87 = v28;
    v101 = v19;
    do
    {
      if (v22)
      {
        v32 = 0;
        v33 = v96 >> v93;
        v92 = v33 * ((v105 - 1 + HIDWORD(a9) + v22) >> v93);
        v104 = ~(-1 << v78[7]);
        v103 = v77[a11];
        v34 = vdupq_n_s64(v33);
        v35 = v79;
        v36 = v80;
        v91 = v34;
        do
        {
          v37 = v32 >> v93;
          if (v28)
          {
            v38 = vdupq_n_s64(v37);
            v39 = 0uLL;
            v40 = v81;
            v41 = xmmword_2954EBA50;
            do
            {
              v42 = v39;
              v43 = v41;
              v44 = vnegq_s64(v41);
              v45 = vaddq_s64(v43, v43);
              v39 = vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(vshlq_u64(v38, v44), v30), v45), vshlq_u64(vandq_s8(vshlq_u64(v34, v44), v30), vorrq_s8(v45, v30))), v42);
              v41 = vaddq_s64(v41, v31);
              v40 -= 2;
            }

            while (v40);
            v46 = vbslq_s8(vcgtq_u64(v43, v82), v42, v39);
            v47 = vorr_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
          }

          else
          {
            v47 = 0;
          }

          v48 = 0;
          v49 = (a2 + (v37 + v92) * v88);
          v50 = (a1 + ((*&v47 | ((v37 | (v96 >> v93)) >> v28 << v86)) << v85));
          v94 = v36;
          v95 = v35;
          v97 = v32;
          do
          {
            v51 = 0;
            v100 = v48;
            v52 = v96 + v48;
            v53 = v32;
            v99 = v35;
            v54 = v35;
            v98 = v36;
            v55 = v36;
            do
            {
              v108 = v54;
              v109 = v51;
              v110 = v50;
              v56 = v53;
              v57 = *v50;
              v107 = v57 & 0xF0;
              if (*v50)
              {
                v58 = (v57 & v104) + 1;
              }

              else
              {
                v58 = 0;
              }

              v106 = v58;
              v111 = v49;
              v59 = v55;
              interchange_compression::decompressor::decompress(v112, v49, v57, v113);
              v60 = v59;
              LODWORD(v19) = v101;
              v61 = &v113[0][0][1];
              v62 = 0;
              v63 = v108;
              v64 = v60;
              do
              {
                v66 = v62 + v52 >= a10 && v62 + v52 < v101;
                v67 = v56;
                v68 = v63;
                v69 = v64;
                v70 = v61;
                v71 = 8;
                do
                {
                  v73 = v67 >= a9 && v67 < v22;
                  result = (v66 & v73);
                  if (result == 1)
                  {
                    result = *(v70 - 1);
                    if (a7)
                    {
                      v74 = v68 + 1;
                      if (a6 == 8)
                      {
                        *(a3 + v68) = result;
                        result = *v70;
                        *(a3 + v74) = result;
                      }

                      else
                      {
                        *(a3 + 2 * v68) = result;
                        result = *v70;
                        *(a3 + 2 * v74) = result;
                      }
                    }

                    else if (a6 == 8)
                    {
                      *(a3 + v69) = result;
                    }

                    else
                    {
                      *(a3 + 2 * v69) = result;
                    }
                  }

                  v70 += 4;
                  ++v69;
                  v68 += 2;
                  ++v67;
                  --v71;
                }

                while (v71);
                ++v62;
                v61 += 32;
                v64 += a4;
                v63 += 2 * a4;
              }

              while (v62 != 4);
              if (v107 != 240 || a11 == 0)
              {
                v76 = v106;
              }

              else
              {
                v76 = v103;
              }

              v49 = &v111[v76];
              v50 = v110 + 1;
              v51 = v109 + 8;
              v55 = v60 + 8;
              v54 = v108 + 16;
              v53 = v56 + 8;
            }

            while (v109 + 8 < v105);
            v48 = v100 + 4;
            v36 = v98 + 4 * a4;
            v35 = v99 + 8 * a4;
            v32 = v97;
          }

          while (v100 + 4 < v105);
          v32 = v97 + v105;
          v36 = v94 + v105;
          v35 = v95 + 2 * v105;
          LODWORD(v28) = v87;
          v31 = v83;
          v30 = v84;
          v34 = v91;
        }

        while (v97 + v105 < v22);
      }

      v80 += v105 * a4;
      v79 += 2 * v105 * a4;
      v96 += v105;
    }

    while (v96 < v19);
  }

  return result;
}

uint64_t interchange_compression::decompressor::decompress(interchange_compression::decompressor *this, const unsigned __int8 *a2, unsigned int a3, unsigned int (*a4)[4][8][4])
{
  v213 = *MEMORY[0x29EDCA608];
  v8 = interchange_compression::memory_parameters[11 * *(this + 85) + 7];
  if ((*(this + 87) - 1) <= 2)
  {
    subblock_size = interchange_compression::decompressor::get_subblock_size(this, a3);
    v10 = *(this + 85);
    if (subblock_size > interchange_compression::lossy_parameters[28 * v10 + 8 + *(this + 87)] || subblock_size < interchange_compression::decompressor::get_subblock_size(this, LOBYTE(interchange_compression::memory_parameters[11 * v10 + 8])))
    {
      goto LABEL_215;
    }

    if ((~a3 & 0xF0) == 0)
    {
      v12 = *(this + 87);
      if ((v12 - 1) <= 2)
      {
        v13 = 0;
        v14 = vdupq_n_s32(a3);
        v15 = *(this + 85);
        v175 = interchange_compression::lossy_parameters[28 * v15 + 8 + v12] >> 2;
        *v14.i8 = vand_s8(vmovn_s32(vtstq_s32(v14, xmmword_2954FC130)), 0x1000100010001);
        v190 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
        v173 = a2;
        v174 = a4;
        while (1)
        {
          memset(v191, 0, sizeof(v191));
          v16 = *(this + 87);
          v17 = *(this + 88);
          v189 = v17;
          v176 = v13;
          if (*(&v190 + v13) != 1)
          {
            break;
          }

          v18 = 0;
          v19 = interchange_compression::lossy_parameters[28 * v15 + 8 + v16] >> 2;
          v207 = &a2[v13 * v175];
          v206 = v19;
          v210 = 1;
          v209 = 0;
          v208 = 8 * v19;
          v20 = &interchange_compression::format_table + 52 * v15;
          v179 = v20 + 12;
          v182 = *(v20 + 2);
          v21 = v17 & 0xFFFFFFFE;
          v177 = &interchange_compression::lossy_parameters[28 * v15 + 12 + 4 * v16];
          v22 = v191;
          do
          {
            v186 = v18;
            v24 = v177;
            v23 = v179;
            v184 = v22;
            v25 = v182;
            if (v182)
            {
              do
              {
                v27 = *v24++;
                v26 = v27;
                v29 = *v23;
                v23 += 4;
                v28 = v29;
                v30 = -1 << v29;
                if (v29 == 32)
                {
                  v31 = -1;
                }

                else
                {
                  v31 = ~v30;
                }

                v32 = 1 << (v28 - 1);
                v33 = (bit_pack::unpack(v205, v28 - v26) << v26) & v31;
                v35 = v21 != 2 || v33 != v32;
                if (v33 >> v26 == v31 >> v26)
                {
                  v36 = v31;
                }

                else
                {
                  v36 = ((1 << (v26 - 1)) - ((v33 >> v26) & 1)) | v33;
                }

                if (!v35 || v33 == 0)
                {
                  v38 = v33;
                }

                else
                {
                  v38 = v36;
                }

                if (!v26)
                {
                  v38 = v33;
                }

                if (v189 != 1)
                {
                  v33 = v38;
                }

                if (v21 == 2)
                {
                  v39 = v32;
                }

                else
                {
                  v39 = 0;
                }

                *v22++ = v33 ^ v39;
                v25 = (v25 - 1);
              }

              while (v25);
            }

            v18 = v186 + 1;
            v22 = v184 + 4;
          }

          while (v186 != 7);
LABEL_175:
          v137 = 0;
          v138 = v191;
          a2 = v173;
          do
          {
            if (*(this + 85) == 27)
            {
              v15 = 27;
            }

            else
            {
              v139 = 0;
              v140 = vdupq_n_s32(v137 + 8 * v176);
              v141.i64[0] = 0x100000001;
              v141.i64[1] = 0x100000001;
              v142 = vshlq_u32(vandq_s8(vshlq_u32(v140, xmmword_2954FC100), v141), xmmword_2954FC110);
              v143 = vshlq_u32(vandq_s8(vshlq_u32(v140, xmmword_2954FC120), v141), xmmword_2954FC110);
              v144 = (*v174)[(vorr_s8(*v143.i8, *&vextq_s8(v143, v143, 8uLL)).u32[0] | v143.i32[1])][vorr_s8(*v142.i8, *&vextq_s8(v142, v142, 8uLL)).u32[0] | v142.i32[1]];
              do
              {
                v144[v139] = *(v138 + v139);
                ++v139;
                v15 = *(this + 85);
              }

              while (v139 < *(&interchange_compression::format_table + 13 * v15 + 2));
            }

            ++v137;
            ++v138;
          }

          while (v137 != 8);
          v13 = v176 + 1;
          if (v176 == 3)
          {
            return 1;
          }
        }

        v40 = (&interchange_compression::format_table + 52 * v15);
        v41 = v40[2];
        v180 = v40;
        v183 = v41;
        v42 = (v40 + 3);
        v172 = *(this + 87);
        LODWORD(v40) = interchange_compression::lossy_parameters[28 * v15 + 8 + v16];
        v207 = &a2[v13 * v175];
        LODWORD(v40) = 2 * v40;
        v206 = (v40 >> 3) & 0x7FFFFFF;
        v210 = 1;
        v209 = 0;
        v185 = v40;
        v208 = v40 & 0x3FFFFFF8;
        v178 = v42;
        if (!v41)
        {
          v187 = 0;
LABEL_84:
          *v202 = 0;
          v203 = 0;
          memset(v201, 0, sizeof(v201));
          v200[0] = interchange_compression::get_id(v180[3], v11);
          v200[1] = interchange_compression::get_id(v180[4], v68);
          v200[2] = interchange_compression::get_id(v180[5], v69);
          v200[3] = interchange_compression::get_id(v180[6], v70);
          interchange_compression::derive_sharing(v183, v200, v212, v202, v201, v71);
          v198 = 0;
          v199 = 0;
          v196 = 0;
          v197 = 0;
          if (v183)
          {
            v72 = 0;
            do
            {
              v73 = *&v178[v72];
              id = interchange_compression::get_id(v73, v11);
              v75 = v212[v72 / 4];
              v76 = &interchange_compression::dq_consts[80 * id + 5 * v75];
              v77 = interchange_compression::dq_lossy_level[3 * id + v172 - 1];
              v78 = *(v76 + 5);
              *(&v198 + v72) = v77 + *(v76 + 4);
              *(&v196 + v72) = v78 + v77;
              interchange_compression::adjust_level(id, v75, v202[v72 / 4], v201[v72 / 4], (&v198 + v72), (&v196 + v72), v79);
              v80 = *(&v198 + v72);
              if (v73 < v80)
              {
                v80 = v73;
              }

              *(&v198 + v72) = v80;
              if (v78)
              {
                v81 = v73;
              }

              else
              {
                v81 = 0;
              }

              if (v81 >= *(&v196 + v72))
              {
                v81 = *(&v196 + v72);
              }

              *(&v196 + v72) = v81;
              v72 += 4;
            }

            while (4 * v183 != v72);
          }

          if (v15 == 19 && v212[3] == 1 && v201[3] - HIDWORD(v203) <= 1)
          {
            v198 = 0;
            v199 = 0;
            v196 = 0;
            v197 = 0;
          }

          v195[0] = 0;
          v195[1] = 0;
          v82 = v183;
          v83 = v187;
          if (v183)
          {
            v84 = v195;
            v85 = v211;
            v86 = &v198;
            v87 = v212;
            v88 = v178;
            do
            {
              v89 = *v87++;
              if (v89 || (*v88 - 8) > 4)
              {
                v90 = *v86;
                *v84 = bit_pack::unpack(v205, *v86) << (*v88 - v90);
                v83 += v90;
              }

              else
              {
                *v84 = *v85;
              }

              ++v84;
              ++v85;
              v88 += 4;
              ++v86;
              --v82;
            }

            while (v82);
            v193 = 0;
            v194 = 0;
            v91 = &v193;
            v92 = &v196;
            v93 = v183;
            v94 = v185;
            do
            {
              v95 = *v92;
              v92 = (v92 + 4);
              if (v95)
              {
                v96 = bit_pack::get(v205, v209, 3u);
                v209 += 3;
                *v91 = v96;
                v83 += 3;
              }

              v91 = (v91 + 4);
              --v93;
            }

            while (v93);
          }

          else
          {
            v193 = 0;
            v194 = 0;
            v94 = v185;
          }

          v97 = (v94 & 0x3FFFFFFE) - v83;
          v98 = v97 / 7;
          v99 = v209 + v97 - 7 * (v97 / 7);
          v209 = v99;
          v100 = v208;
          if (v99 > v208)
          {
            interchange_compression::decompressor::decompress();
          }

          v101 = 0;
          v102 = v192;
          memset(v192, 0, sizeof(v192));
          v103 = v183;
          do
          {
            v104 = 0;
            if (v103)
            {
              v105 = &v196;
              v106 = v102;
              do
              {
                v108 = *v105++;
                v107 = v108;
                if (v108)
                {
                  *v106 = bit_pack::unpack(v205, v107);
                  v104 += v107;
                }

                v106 += 7;
                --v103;
              }

              while (v103);
              if (v104 > v98)
              {
                interchange_compression::decompressor::decompress();
              }

              v99 = v209;
              v100 = v208;
              v103 = v183;
            }

            v99 += v98 - v104;
            v209 = v99;
            if (v99 > v100)
            {
              interchange_compression::decompressor::decompress();
            }

            ++v101;
            ++v102;
          }

          while (v101 != 7);
          if (v103)
          {
            v109 = 0;
            v110 = v191;
            do
            {
              v111 = *&v178[4 * v109];
              v112 = interchange_compression::get_id(v111, v11);
              v113 = 0;
              v114 = 0;
              v115 = interchange_compression::dq_consts[80 * v112 + 1 + 5 * v212[v109]];
              v116 = *(&v196 + v109);
              v117 = v115 >> v116;
              if (v115 >> v116 <= 1)
              {
                v117 = 1;
              }

              if (v117 >> 1 >= (1 << (v111 - *(&v198 + v109))) >> 1)
              {
                v118 = (1 << (v111 - *(&v198 + v109))) >> 1;
              }

              else
              {
                v118 = v117 >> 1;
              }

              v119 = *(v195 + v109);
              v120 = (1 << (v111 - 1));
              v121 = ~(-1 << v116);
              v122 = v115 + v119;
              v123 = 1 << v111;
              v11 = (1 << v111) - 1;
              if (!v119)
              {
                v118 = 0;
              }

              if (v111 == 16)
              {
                v124 = 31744;
              }

              else
              {
                v124 = 2139095040;
              }

              if (v111 == 16)
              {
                v125 = 64512;
              }

              else
              {
                v125 = 4286578688;
              }

              if (v111 == 16)
              {
                v126 = 32256;
              }

              else
              {
                v126 = 2143289344;
              }

              v127 = 4290772992;
              if (v111 == 16)
              {
                v127 = 65024;
              }

              v188 = v127;
              v181 = v110;
              v128 = v110;
              do
              {
                if (v116)
                {
                  if (v113 == *(&v193 + v109))
                  {
                    v129 = v118;
                    v130 = v119 == v120;
                  }

                  else
                  {
                    v131 = v192[7 * v109 + v114];
                    v130 = (v120 - v119) / v117 == v131;
                    if (v131 > v121)
                    {
                      interchange_compression::decompressor::decompress();
                    }

                    if (v131 | v119)
                    {
                      if (v122 < v123 || (v129 = v123 - 1, v131 != v121))
                      {
                        v129 = (v117 >> 1) + v117 * v131;
                      }
                    }

                    else
                    {
                      v129 = 0;
                    }

                    ++v114;
                  }
                }

                else
                {
                  v129 = 0;
                  v130 = v117 > v120 - v119;
                }

                v132 = v129 + v119;
                v133 = v132;
                if (v189 == 1)
                {
                  if (v132 < v124 || (v133 = (v124 - 1), v132 >= v126))
                  {
                    if (v132 < v126 || (v133 = v120, v132 >= v120))
                    {
                      if (v132 < v188 && v132 >= v125)
                      {
                        v133 = (v125 - 1);
                      }

                      else
                      {
                        v133 = v132;
                      }
                    }
                  }
                }

                if (v133 >= v123)
                {
                  v135 = v123 - 1;
                }

                else
                {
                  v135 = v133;
                }

                if (v130)
                {
                  v136 = 0;
                }

                else
                {
                  v136 = v135 ^ v120;
                }

                if ((v189 & 0xFFFFFFFE) != 2)
                {
                  v136 = v135;
                }

                *v128 = v136;
                v128 += 4;
                ++v113;
              }

              while (v113 != 8);
              ++v109;
              v110 = (v181 + 4);
            }

            while (v109 != v183);
          }

          goto LABEL_175;
        }

        v43 = 0;
        v44 = v204;
        v45 = v42;
        v46 = v42;
        do
        {
          v48 = *v45;
          v45 += 4;
          v47 = v48;
          if (v48 == 2)
          {
            v49 = 1;
          }

          else if ((v47 - 8) >= 5)
          {
            v49 = 4;
            if (v47 != 16 && v47 != 32)
            {
              interchange_compression::decompressor::decompress();
            }
          }

          else
          {
            v49 = 3;
          }

          *v44++ = bit_pack::unpack(v205, v49);
          v43 += v49;
          --v41;
        }

        while (v41);
        v187 = v43;
        v50 = 0;
        v51 = v212;
        v52 = v46;
        v53 = v211;
        v54 = v204;
        v55 = v183;
        while (1)
        {
          v57 = *v52++;
          v56 = v57;
          if (v57 == 2)
          {
            v58 = *v54;
            *v53 = 0;
            v59 = v58 & 1;
            v60 = v51;
          }

          else
          {
            v61 = v56 - 8 < 5 || v56 == 16;
            if (!v61 && v56 != 32)
            {
              interchange_compression::decompressor::decompress();
            }

            v62 = *v54;
            if (((v56 & 0xFFFFFFFD) == 8 || v56 == 12) && v62 == 0)
            {
              v65 = bit_pack::get(v205, v209, 2u);
              v209 += 2;
              v187 += 2;
              *v53 = 0;
              v59 = v65 & 3;
              v66 = v53;
              v60 = v51;
            }

            else
            {
              v60 = &v212[v50];
              *v53 = 0;
              if (v56 >= 0x10)
              {
                v59 = v62 & 0xF;
                goto LABEL_50;
              }

              v59 = 0;
              v66 = &v211[v50];
            }

            v67 = v62 & 7;
            *v60 = v67;
            if ((v56 & 0xD) == 8)
            {
              if ((v62 & 7) != 0)
              {
                v59 = v67 + 2;
              }

              else
              {
                if (v59 > 1)
                {
                  if (v59 == 2)
                  {
                    v59 = 1;
                  }

                  else
                  {
                    v59 = 2;
                  }

                  goto LABEL_50;
                }

                if (!v59)
                {
LABEL_79:
                  *v66 = 0;
                  goto LABEL_50;
                }

                v59 = 0;
                *v66 = ~(-1 << v56);
              }
            }

            else
            {
              if (v56 != 12)
              {
                goto LABEL_51;
              }

              if ((v62 & 7) != 0)
              {
                v59 = v67 + 3;
              }

              else if (!v59)
              {
                goto LABEL_79;
              }
            }
          }

LABEL_50:
          *v60 = v59;
LABEL_51:
          ++v50;
          ++v51;
          ++v53;
          ++v54;
          if (!--v55)
          {
            goto LABEL_84;
          }
        }
      }
    }
  }

  v145 = *(this + 85);
  v146 = &interchange_compression::memory_parameters[11 * v145];
  if (v146[8] == a3)
  {
    v147 = (a3 & ~(-1 << v146[7])) + 1;
    v207 = a2;
    v206 = v147 << (v145 == 26);
    v210 = 1;
    v209 = 0;
    v208 = 8 * v206;
    if (v145 == 27)
    {
      v148 = 27;
    }

    else
    {
      v157 = 0;
      do
      {
        (*a4)[0][0][v157] = bit_pack::unpack(v205, *(&interchange_compression::format_table + 13 * v145 + v157 + 3));
        ++v157;
        v145 = *(this + 85);
      }

      while (v157 < *(&interchange_compression::format_table + 13 * v145 + 2));
      v148 = *(this + 85);
    }

    v158 = 0;
    for (i = 0; i != 4; ++i)
    {
      v160 = 0;
      v161 = v158;
      do
      {
        if (v148 == 27)
        {
          v148 = 27;
        }

        else
        {
          v162 = 0;
          v163 = a4;
          do
          {
            *((*v163)[0][0] + v161) = *v163;
            ++v162;
            v148 = *(this + 85);
            v163 = (v163 + 4);
          }

          while (v162 < *(&interchange_compression::format_table + 13 * v148 + 2));
        }

        ++v160;
        v161 += 16;
      }

      while (v160 != 8);
      v158 += 128;
    }

    return 1;
  }

  if (v146[9] == a3)
  {
    v149 = 0;
    v150 = interchange_compression::memory_parameters[11 * v145 + 5];
    v207 = a2;
    v206 = v150;
    v210 = 1;
    v209 = 0;
    v208 = 8 * v150;
    do
    {
      if (v145 != 27)
      {
        v151 = 0;
        v152 = vdupq_n_s32(v149);
        v153.i64[0] = 0x100000001;
        v153.i64[1] = 0x100000001;
        v154 = vshlq_u32(vandq_s8(vshlq_u32(v152, xmmword_2954FC120), v153), xmmword_2954FC110);
        v155 = vshlq_u32(vandq_s8(vshlq_u32(v152, xmmword_2954FC100), v153), xmmword_2954FC110);
        v156 = (*a4)[(vorr_s8(*v154.i8, *&vextq_s8(v154, v154, 8uLL)).u32[0] | v154.i32[1])][vorr_s8(*v155.i8, *&vextq_s8(v155, v155, 8uLL)).u32[0] | v155.i32[1]];
        do
        {
          v156[v151] = bit_pack::unpack(v205, *(&interchange_compression::format_table + 13 * v145 + v151 + 3));
          ++v151;
          v145 = *(this + 85);
        }

        while (v151 < *(&interchange_compression::format_table + 13 * v145 + 2));
      }

      ++v149;
    }

    while (v149 != 32);
    if (*(this + 87))
    {
      interchange_compression::decompressor::decompress();
    }

    return 1;
  }

  if (v146[10] == a3)
  {
    for (j = 0; j != 32; ++j)
    {
      v166 = vdupq_n_s32(j);
      v167.i64[0] = 0x100000001;
      v167.i64[1] = 0x100000001;
      v168 = vshlq_u32(vandq_s8(vshlq_u32(v166, xmmword_2954FC120), v167), xmmword_2954FC110);
      v169 = vshlq_u32(vandq_s8(vshlq_u32(v166, xmmword_2954FC100), v167), xmmword_2954FC110);
      interchange_compression::format_info::unpack_pixel((&interchange_compression::format_table + 52 * v145), a2, (*a4)[(vorr_s8(*v168.i8, *&vextq_s8(v168, v168, 8uLL)).u32[0] | v168.i32[1])][vorr_s8(*v169.i8, *&vextq_s8(v169, v169, 8uLL)).u32[0] | v169.i32[1]]);
      v145 = *(this + 85);
      a2 += *(&interchange_compression::format_table + 13 * v145 + 1);
    }

    if (*(this + 87))
    {
      interchange_compression::decompressor::decompress();
    }

    return 1;
  }

  v170 = ((a3 & ~(-1 << v8)) + 1) << (v145 == 26);
  v171 = interchange_compression::memory_parameters[11 * v145 + 5];
  v207 = a2;
  if (v171 >= v170)
  {
    v171 = v170;
  }

  v206 = v171;
  v210 = 1;
  v209 = 0;
  v208 = 8 * v171;
  if (interchange_compression::decompressor::unpack_header(this, a2, a3, v205))
  {
    interchange_compression::decompressor::decompress_pixels(this, a2, a3, v205, a4);
    interchange_compression::decompressor::decorrelate(this, a4);
    return 1;
  }

LABEL_215:
  interchange_compression::decompressor::fill_subblock_error_color(this, a4);
  return 0;
}

uint64_t interchange_compression::header::set(interchange_compression::header *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6 = a3 + 4 * a2;
  result = interchange_compression::header::get_size(this, a2, a3);
  v8 = this + 12 * v6;
  *(v8 + 1) = result;
  v9 = v8 + 4;
  if (a4 >> result)
  {
    interchange_compression::header::set();
  }

  *(v9 + 1) = a4;
  *(v9 + 2) = 1;
  return result;
}

uint64_t interchange_compression::header::get_size(interchange_compression::header *this)
{
  v2 = *this;
  v3 = interchange_compression::header::header_layout_table[15 * *this + 14];
  for (i = 3; i != 7; ++i)
  {
    if (v2 == 27)
    {
      v2 = 27;
    }

    else
    {
      v5 = 0;
      do
      {
        v3 = interchange_compression::header::get_size(this, i, v5++) + v3;
        v2 = *this;
      }

      while (v5 < *(&interchange_compression::format_table + 13 * *this + 2));
    }
  }

  return v3;
}

uint64_t interchange_compression::header::get_size(interchange_compression::header *this, unsigned int a2, unsigned int a3)
{
  if (a2 <= 1)
  {
    return interchange_compression::header::header_layout_table[15 * *this + 1 + 4 * a2 + a3];
  }

  if (a2 == 4)
  {
    v4 = this + 4;
    if (!*(this + 3 * a3 + 3))
    {
      interchange_compression::header::get_size();
    }

    if (!*&v4[12 * a3 + 56])
    {
      interchange_compression::header::get_size();
    }

    if ((v4[12 * a3 + 4] & 8) != 0)
    {
      return (*&v4[12 * a3 + 52] + 1);
    }

    return 0;
  }

  if (a2 != 3)
  {
    if (a2 == 2)
    {
      return *(&interchange_compression::format_table + 13 * *this + a3 + 3);
    }

    if (a2 - 5 > 1)
    {
      interchange_compression::header::get_size();
    }

    if (!*(this + 3 * a3 + 3))
    {
      interchange_compression::header::get_size();
    }

    if ((*(this + 3 * a3 + 2) & 3) == 2)
    {
      return *(&interchange_compression::format_table + 13 * *this + a3 + 3) >> 1;
    }

    return 0;
  }

  if (!*(this + 3 * a3 + 3))
  {
    interchange_compression::header::get_size();
  }

  if ((*(this + 12 * a3 + 8) & 4) == 0)
  {
    return 0;
  }

  if (*(&interchange_compression::format_table + 13 * *this + a3 + 3) == 32)
  {
    return 16;
  }

  else
  {
    return 8;
  }
}

uint64_t interchange_compression::get_id(interchange_compression *this, uint64_t a2)
{
  if (this <= 11)
  {
    if (this == 8)
    {
      return 0;
    }

    if (this == 10)
    {
      return 1;
    }
  }

  else
  {
    switch(this)
    {
      case 0xC:
        return 2;
      case 0x10:
        return 3;
      case 0x20:
        return 4;
    }
  }

  if (this == 2)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if ((this | 2) != 2)
  {
    interchange_compression::get_id(this);
  }

  return v2;
}

uint64_t interchange_compression::derive_sharing(uint64_t this, uint64_t a2, unsigned int *a3, unsigned int *a4, int (*a5)[4], int (*a6)[4])
{
  v6 = *(a2 + 12);
  if (v6 == 5)
  {
    v7 = a3[3];
    if (v7 >= 2)
    {
      interchange_compression::derive_sharing();
    }

    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 5;
    }

    a3[3] = v8;
    *(a2 + 12) = 1;
  }

  if (!this)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -1;
  do
  {
    v14 = a3[v9];
    if (v14 > v12 || v9 == 1 && v14 == v12)
    {
      v12 = a3[v9];
      v11 = v9;
    }

    if (v14 < v13)
    {
      v13 = a3[v9];
      v10 = v9;
    }

    v15 = interchange_compression::dq_consts[80 * *(a2 + 4 * v9) + 3 + 5 * v14];
    (*a5)[v9] = v15;
    a4[v9++] = v15;
  }

  while (this != v9);
  if (this != 1)
  {
LABEL_19:
    v16 = (v11 + 1) % 3u;
    if (v16 == v10)
    {
      v16 = (v11 + 2) % 3u;
    }

    v17 = a3[v16];
    v18 = a3[6 - (v11 + v10) - v16];
    v19 = v17 > v18;
    if (v17 <= v18)
    {
      v20 = v16;
    }

    else
    {
      v20 = 6 - (v11 + v10) - v16;
    }

    if (!v19)
    {
      v16 = 6 - (v11 + v10) - v16;
    }

    v21 = a3[v11];
    v22 = a3[v10];
    if (this == 2)
    {
      if (v21 == v22 || a4[v10] < 1)
      {
LABEL_47:
        if (v6 == 5)
        {
          *(a2 + 12) = 5;
          a3[3] = a3[3] != 5;
          if (a4[3] >= 1)
          {
            interchange_compression::derive_sharing();
          }
        }

        return this;
      }

      (*a5)[v10] = 0;
      v23 = a4[v10];
      v24 = (*a5)[v11];
      goto LABEL_30;
    }

    v26 = a3[v20];
    if (v21 - v26 <= 1 && v22 <= 1)
    {
      (*a5)[v10] = 0;
      v31 = 1431655766 * a4[v10];
      (*a5)[v20] += HIDWORD(v31) + (v31 >> 63);
      v32 = 1431655766 * (a4[v10] + 1);
      (*a5)[v16] += HIDWORD(v32) + (v32 >> 63);
      v33 = 1431655766 * (a4[v10] + 2);
      v34 = HIDWORD(v33) + (v33 >> 63);
      v35 = (*a5)[v11];
LABEL_45:
      v25 = v34 + v35;
      goto LABEL_46;
    }

    v28 = a3[v16];
    if (v21 - v28 <= 1 && v22 <= 1)
    {
      (*a5)[v10] = 0;
      v36 = a4[v20] & (a4[v20] >> 31);
      (*a5)[v20] = v36;
      (*a5)[v16] += (a4[v10] - v36 + a4[v20]) / 2;
      v25 = (*a5)[v11] + (a4[v10] + a4[v20] - (*a5)[v20] + 1) / 2;
      goto LABEL_46;
    }

    if (v28 - v22 > 1)
    {
      if (v28 - v22 != 2)
      {
        goto LABEL_57;
      }

      v30 = a4[v11];
    }

    else
    {
      v30 = a4[v11];
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      this = a4[v16];
      if (this > 0)
      {
LABEL_54:
        v37 = 0;
        (*a5)[v10] = 0;
        (*a5)[v20] = 0;
        if ((a4[v20] + a4[v10]) >= 6)
        {
          v37 = a4[v16];
        }

        (*a5)[v16] = v37;
        v34 = a4[v10] - v37 + a4[v20];
        v35 = a4[v16] + (*a5)[v11];
        goto LABEL_45;
      }
    }

    if (v30 <= -2 && a4[v16] >= 1)
    {
      goto LABEL_54;
    }

LABEL_57:
    if (!v22 || a4[v10] < 1 || a4[v20] < 1 || (a4[v16] & 0x80000000) != 0 || a4[v11] > -2)
    {
      if (v21 != v22 && a4[v10] >= 1)
      {
        (*a5)[v10] = 0;
        (*a5)[v11] += a4[v10];
      }

      if (v28 != v26 && a4[v20] >= 1)
      {
        (*a5)[v20] = 0;
        (*a5)[v16] += a4[v20];
      }

      goto LABEL_47;
    }

    (*a5)[v10] = 0;
    (*a5)[v20] = 0;
    (*a5)[v16] = a4[v16];
    v24 = a4[v20];
    v23 = a4[v10] + (*a5)[v11];
LABEL_30:
    v25 = v24 + v23;
LABEL_46:
    (*a5)[v11] = v25;
    goto LABEL_47;
  }

  return this;
}

uint64_t interchange_compression::adjust_level(uint64_t this, int a2, int a3, int a4, _DWORD *a5, unsigned int *a6, unsigned int *a7)
{
  v7 = a4 - a3;
  if (a4 - a3 < 0)
  {
    v8 = &interchange_compression::dq_consts[80 * this + 5 * a2];
    if (*(v8 + 7) < a3 - a4)
    {
      --*a6;
      if (!*(v8 + 8))
      {
        v7 = -1;
        goto LABEL_4;
      }
    }
  }

  else if (a4 != a3)
  {
    *a6 += v7;
LABEL_4:
    *a5 += v7;
  }

  return this;
}

interchange_compression::decompressor *interchange_compression::decompressor::decompressor(interchange_compression::decompressor *this, unsigned int a2, interchange_compression *a3, unsigned int a4)
{
  *this = a2;
  if (interchange_compression::header::header_layout_table[15 * a2] != a2)
  {
    interchange_compression::decompressor::decompressor();
  }

  v5 = a3;
  *(this + 4) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 85) = a2;
  *(this + 87) = a3;
  *(this + 88) = a4;
  if (!interchange_compression::check_valid_lossy_level(a3, a2))
  {
    interchange_compression::decompressor::decompressor();
  }

  if (v5 && a4 >= 4)
  {
    interchange_compression::decompressor::decompressor();
  }

  *(this + 86) = *(&interchange_compression::format_table + 52 * a2 + 48);
  return this;
}

uint64_t interchange_compression::decompressor::get_subblock_size(interchange_compression::decompressor *this, unsigned int a2)
{
  if (a2 >= 0xF0)
  {
    v2 = *(this + 87);
    if ((v2 - 1) <= 2)
    {
      return interchange_compression::lossy_parameters[28 * *(this + 85) + 8 + v2];
    }
  }

  v4 = *(this + 85);
  v5 = &interchange_compression::memory_parameters[11 * v4];
  if (v5[8] == a2)
  {
    return ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  }

  if (v5[9] == a2)
  {
    return v5[5];
  }

  if (!a2)
  {
    return 0;
  }

  v6 = ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  v7 = interchange_compression::memory_parameters[11 * v4 + 5];
  if (v7 >= v6)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t interchange_compression::decompressor::fill_subblock_error_color(uint64_t this, unsigned int (*a2)[4][8][4])
{
  v2 = 0;
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  do
  {
    v4 = *(this + 340);
    if (v4 != 27)
    {
      v5 = 0;
      v6 = vdupq_n_s32(v2);
      v7 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_2954FC120), v3), xmmword_2954FC110);
      v8 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_2954FC100), v3), xmmword_2954FC110);
      v9 = (*a2)[(vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)).u32[0] | v7.i32[1])][vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)).u32[0] | v8.i32[1]];
      do
      {
        if (v5 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = ~(-1 << *(&interchange_compression::format_table + 13 * v4 + v5 + 3));
        }

        v9[v5++] = v10;
        v4 = *(this + 340);
      }

      while (v5 < *(&interchange_compression::format_table + 13 * v4 + 2));
    }

    ++v2;
  }

  while (v2 != 32);
  return this;
}

uint64_t bit_pack::unpack(bit_pack *this, unsigned int a2)
{
  if (a2 >= 0x21)
  {
    bit_pack::unpack();
  }

  result = bit_pack::get(this, *(this + 135), a2);
  *(this + 135) += a2;
  return result;
}

void *interchange_compression::format_info::unpack_pixel(interchange_compression::format_info *this, const unsigned __int8 *a2, unsigned int *a3)
{
  __dst[2] = *MEMORY[0x29EDCA608];
  __dst[0] = 0;
  __dst[1] = 0;
  result = memcpy(__dst, a2, *(this + 1));
  if (*(this + 2))
  {
    v6 = 0;
    v7 = (this + 28);
    do
    {
      v8 = -1 << *(v7 - 4);
      v9 = *v7++;
      a3[v6++] = (*(__dst + ((v9 >> 3) & 0x1FFFFFF8)) >> v9) & ~v8;
    }

    while (v6 < *(this + 2));
  }

  return result;
}

BOOL interchange_compression::decompressor::unpack_header(interchange_compression::decompressor *this, const unsigned __int8 *a2, unsigned int a3, bit_pack *a4)
{
  v4 = *(this + 85);
  v5 = interchange_compression::memory_parameters[11 * v4 + 7];
  v6 = 8 - v5;
  v7 = &interchange_compression::header::header_layout_table[15 * v4];
  v8 = v7[1];
  v9 = v8 - (8 - v5);
  if (v8 <= 8 - v5)
  {
    interchange_compression::decompressor::unpack_header();
  }

  v11 = *(a4 + 128);
  v12 = v6 + 8 * v11;
  if (v12 < v7[14])
  {
    return 0;
  }

  v15 = v5 - 8;
  v16 = (a3 >> v5) & ~(-1 << v6);
  v17 = 8 * v11;
  v18 = bit_pack::unpack(a4, v9);
  *(this + 4) = 0u;
  v19 = this + 4;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  interchange_compression::header::set(this, 0, 0, (v18 << v6) | v16);
  for (i = 1; i != 28; ++i)
  {
    if (i == 12)
    {
      if (v12 < interchange_compression::header::get_size(this))
      {
        return 0;
      }
    }

    else
    {
      if (i != 8)
      {
        v21 = i >> 2;
        if (i >> 2 == 6)
        {
          continue;
        }

        goto LABEL_11;
      }

      bit_pack::unpack(a4, interchange_compression::header::header_layout_table[15 * *(this + 85) + 13] + v15 - *(a4 + 135));
    }

    v21 = i >> 2;
LABEL_11:
    size = interchange_compression::header::get_size(this, v21, i & 3);
    v23 = bit_pack::unpack(a4, size);
    interchange_compression::header::set(this, v21, i & 3, v23);
    if (v21 == 5)
    {
      v24 = interchange_compression::header::get_size(this, 6u, i & 3);
      v25 = bit_pack::unpack(a4, v24);
      interchange_compression::header::set(this, 6u, i & 3, v25);
    }
  }

  v26 = interchange_compression::header::get_size(this);
  bit_pack::unpack(a4, v26 + v15 - *(a4 + 135));
  v27 = *(this + 85);
  if (v27 == 21)
  {
    if (!*(this + 6))
    {
      interchange_compression::decompressor::unpack_header();
    }

    if (!*(this + 9))
    {
      interchange_compression::decompressor::unpack_header();
    }

    v28 = *(this + 5);
    if ((v28 & 0x10) != 0)
    {
      v29 = *(this + 8);
      *(this + 86) = 2;
      interchange_compression::header::set(this, 0, 1u, v28 & 0xFFFFFFEF | (16 * ((v29 >> 4) & 1)));
      interchange_compression::header::set(this, 0, 2u, v29 & 0xFFFFFFEF);
      v27 = *(this + 85);
    }

    else
    {
      v27 = 21;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = &interchange_compression::format_table + 52 * v27;
  LODWORD(v33) = *(v32 + 2);
  if (v33 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v33;
  }

  v34 = v32 + 12;
  do
  {
    if (v27 != 27)
    {
      v35 = 0;
      v36 = this + 12;
      v37 = this + 12;
      do
      {
        v38 = *v37;
        v37 += 12;
        if (!v38)
        {
          interchange_compression::decompressor::unpack_header();
        }

        v39 = *(v36 - 4);
        if ((v39 & 4) != 0)
        {
          if (!*&v19[12 * (v35 + 12) + 8])
          {
            interchange_compression::decompressor::unpack_header();
          }

          v40 = *&v19[12 * (v35 + 12) + 4];
        }

        else
        {
          v40 = 0;
        }

        if ((~v39 & 3) != 0)
        {
          if (!*&v19[12 * (v35 + 4) + 8])
          {
            interchange_compression::decompressor::unpack_header();
          }

          v42 = *&v34[4 * v35];
          if (v42 == 32)
          {
            v43 = 2;
          }

          else
          {
            v43 = 1;
          }

          v44 = v40 >> (v30 << v43);
          if (v42 == 32)
          {
            v45 = 15;
          }

          else
          {
            v45 = 3;
          }

          v41 = *&v19[12 * (v35 + 4) + 4] - (v44 & v45) + 1;
          if (v41 > v42)
          {
            return 0;
          }
        }

        else
        {
          v41 = 0;
        }

        v31 += interchange_compression::NUM_PIXELS_REGION[v30] * v41;
        ++v35;
        v36 = v37;
      }

      while (v33 != v35);
    }

    ++v30;
  }

  while (v30 != 4);
  if (v27 == 26)
  {
    v46 = 15;
  }

  else
  {
    v46 = 7;
  }

  if (((*(a4 + 135) + v31 + v46) & ~v46) != v17)
  {
    return 0;
  }

  return interchange_compression::header::error_check(this) == 0;
}

uint64_t interchange_compression::decompressor::decompress_pixels(uint64_t this, const unsigned __int8 *a2, unsigned int a3, bit_pack *a4, unsigned int (*a5)[4][8][4])
{
  v5 = 0;
  v6 = 0;
  v90 = *MEMORY[0x29EDCA608];
  v7 = this + 4;
  v77 = (this + 12);
  v8 = 0uLL;
  v82 = a5;
  v88 = this;
  do
  {
    v9 = 0;
    v76 = v5;
    v86 = v5 >> 2 << 6;
    v79 = (*a5)[2 * (v6 & 1)] + v86;
    v81 = 4 * (v5 >> 2);
    v89[6] = v8;
    v89[7] = v8;
    v89[4] = v8;
    v89[5] = v8;
    v89[2] = v8;
    v89[3] = v8;
    v89[0] = v8;
    v89[1] = v8;
    if (interchange_compression::NUM_PIXELS_REGION[v6] <= 1u)
    {
      v10 = 1;
    }

    else
    {
      v10 = interchange_compression::NUM_PIXELS_REGION[v6];
    }

    v11 = *(this + 340);
    v12 = v11;
    v84 = v10;
    do
    {
      if (v12 == 27)
      {
        v13 = v9 + 1;
      }

      else
      {
        v14 = 0;
        v13 = v9 + 1;
        v15 = v89;
        v16 = v77;
        v17 = &unk_2954FD8EC;
        v18 = v77;
        do
        {
          v19 = *v18;
          v18 += 3;
          if (!v19)
          {
            interchange_compression::decompressor::unpack_header();
          }

          v20 = *(v16 - 4);
          if ((v20 & 4) != 0)
          {
            if (!*(v7 + 12 * (v14 + 12) + 8))
            {
              interchange_compression::decompressor::unpack_header();
            }

            v21 = *(v7 + 12 * (v14 + 12) + 4);
          }

          else
          {
            v21 = 0;
          }

          v22 = v20 & 3;
          if (v22 == 3)
          {
            v23 = 0;
          }

          else
          {
            if (!*(v7 + 12 * (v14 + 4) + 8))
            {
              interchange_compression::decompressor::unpack_header();
            }

            v24 = v17[13 * v12] == 32;
            if (v17[13 * v12] == 32)
            {
              v25 = 2;
            }

            else
            {
              v25 = 1;
            }

            v26 = v21 >> (v6 << v25);
            if (v24)
            {
              v27 = 15;
            }

            else
            {
              v27 = 3;
            }

            v23 = *(v7 + 12 * (v14 + 4) + 4) - (v26 & v27) + 1;
          }

          v28 = bit_pack::unpack(a4, v23);
          if (v23 >= 0x21)
          {
            interchange_compression::decompressor::decompress_pixels();
          }

          if (v22 == 1)
          {
            v29 = 0;
          }

          else
          {
            v29 = 7;
          }

          if (v9 != 6)
          {
            v29 = v9 + 1;
          }

          if (v6)
          {
            v29 = v9;
          }

          v30 = vdupq_n_s32(v29);
          v31.i64[0] = 0x100000001;
          v31.i64[1] = 0x100000001;
          v32 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_2954FC120), v31), xmmword_2954FC110);
          v33 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_2954FC100), v31), xmmword_2954FC110);
          LODWORD(v15[4 * (vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)).u32[0] | v32.i32[1]) + (vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)).u32[0] | v33.i32[1])]) = v28 << -v23 >> -v23;
          ++v14;
          v12 = *(v88 + 340);
          ++v17;
          v15 = (v15 + 4);
          v16 = v18;
          v8 = 0uLL;
        }

        while (v14 < *(&interchange_compression::format_table + 13 * v12 + 2));
        v11 = *(v88 + 340);
        a5 = v82;
        this = v88;
        v10 = v84;
      }

      v9 = v13;
    }

    while (v13 != v10);
    v34 = v86;
    if (v11 != 27)
    {
      v35 = 0;
      v36 = (2 * v6) & 2;
      v78 = v89;
      do
      {
        if (!*(v7 + 12 * v35 + 8))
        {
          interchange_compression::decompressor::unpack_header();
        }

        v37 = v35;
        v38 = *(v7 + 12 * v35 + 4);
        if ((v38 & 4) != 0)
        {
          if (!*(v7 + 12 * (v35 + 12) + 8))
          {
            interchange_compression::decompressor::unpack_header();
          }

          v39 = *(v7 + 12 * (v35 + 12) + 4);
        }

        else
        {
          v39 = 0;
        }

        v40 = *(v7 + 12 * v35 + 4);
        v41 = *(&interchange_compression::format_table + 13 * v11 + v37 + 3) == 32;
        if (*(&interchange_compression::format_table + 13 * v11 + v37 + 3) == 32)
        {
          v42 = 2;
        }

        else
        {
          v42 = 1;
        }

        v43 = v39 >> (v6 << v42);
        if (v41)
        {
          v44 = 15;
        }

        else
        {
          v44 = 3;
        }

        v45 = v43 & v44;
        v46 = v38 & 3;
        if (v46 == 3)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          if (!*(v7 + 12 * (v37 + 4) + 8))
          {
            interchange_compression::decompressor::unpack_header();
          }

          v47 = *(v7 + 12 * (v37 + 4) + 4) - v45 + 1;
          if ((v38 & 1 | 2) == 2)
          {
            v48 = 0;
          }

          else
          {
            v48 = 3;
          }

          v49 = (v38 & 1 | 2) != 2;
        }

        v85 = (v7 + 12 * (v37 + 8) + 8);
        if (!*v85)
        {
          interchange_compression::decompressor::unpack_header();
        }

        v50 = 0;
        v51 = v7 + 12 * (v37 + 8);
        v53 = *(v51 + 4);
        v52 = (v51 + 4);
        (*a5)[v49][v48][v37] = v53;
        v54 = (v45 == 0) & (v40 >> 3);
        v55 = v7 + 12 * (v37 + 16);
        v56 = v7 + 12 * (v37 + 20);
        v57 = v7 + 12 * (v37 + 24);
        v58 = 1;
        do
        {
          v59 = 0;
          v60 = 0;
          v80 = v58;
          v61 = -v50;
          v83 = v50 | v36;
          v62 = &v78[4 * v50];
          v63 = v6 & 1 ^ v50 ^ 1;
          v64 = &v79[128 * v50];
          v65 = v63 | v36;
          v66 = 3;
          v67 = &v89[4 * v63];
          do
          {
            if (v61 != v36 || v34 + v59 * 16)
            {
              if (v54)
              {
                if (!*(v55 + 8))
                {
                  interchange_compression::decompressor::unpack_header();
                }

                v68 = *(v55 + 4);
              }

              else
              {
                v68 = 0;
              }

              if (v47 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              v69 = v68 << (-v47 & 0x1F) >> (-v47 & 0x1F);
              if (v46 > 1)
              {
                if (v46 == 2)
                {
                  if (!*(v56 + 8))
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  v70 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
                  if (v70 >= 0x42)
                  {
                    interchange_compression::decompressor::decompress_pixels();
                  }

                  if (!*(v57 + 8))
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  if (!*v85)
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  if (v70 >= 0x21)
                  {
                    interchange_compression::decompressor::decompress_pixels();
                  }

                  this = v88;
                  a5 = v82;
                  v71 = *v52 - v69 + LODWORD(v62[v59]) + ((*(v57 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * v83 + ((*(v56 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * (v81 + v60);
                  v34 = v86;
LABEL_79:
                  v72 = ((v71 & ~(-1 << v70)) << -v70) >> -v70;
                }

                else
                {
                  v72 = (*a5)[0][0][v37];
                }

                *&v64[v59 * 16] = v72;
                goto LABEL_87;
              }

              if (!v46)
              {
                if (!*v85)
                {
                  interchange_compression::decompressor::unpack_header();
                }

                v70 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
                if (v70 >= 0x21)
                {
                  interchange_compression::decompressor::decompress_pixels();
                }

                v71 = *v52 - v69 + LODWORD(v62[v59]);
                goto LABEL_79;
              }

              v73 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
              if (v73 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              if (v6 >= 2)
              {
                v74 = v60;
              }

              else
              {
                v74 = v66;
              }

              v75 = v74 | (2 * v6) & 4;
              v34 = v86;
              (*a5)[v65][v75][v37] = ((((*a5)[dword_2954FDE90[16 * v65 + 1 + 2 * v75]][dword_2954FDE90[16 * v65 + 2 * v75]][v37] - v69 + *(&v67[v74] + v37)) & ~(-1 << v73)) << -v73) >> -v73;
            }

LABEL_87:
            ++v60;
            --v66;
            ++v59;
          }

          while (v59 != 4);
          v58 = 0;
          v50 = 1;
        }

        while ((v80 & 1) != 0);
        v35 = v37 + 1;
        v11 = *(this + 340);
        v78 = (v78 + 4);
        v79 += 4;
      }

      while ((v37 + 1) < *(&interchange_compression::format_table + 13 * v11 + 2));
    }

    ++v6;
    v5 = v76 + 2;
  }

  while (v6 != 4);
  return this;
}

_DWORD *interchange_compression::decompressor::decorrelate(_DWORD *this, unsigned int (*a2)[4][8][4])
{
  v2 = 0;
  v3 = this[85];
  v4 = a2;
  do
  {
    v5 = 0;
    v6 = v4;
    v7 = v3;
    do
    {
      if (v7 != 27)
      {
        v8 = 0;
        v9 = this + 3;
        v10 = v6;
        v11 = &unk_2954FD8EC;
        do
        {
          if (!*v9)
          {
            interchange_compression::decompressor::unpack_header();
          }

          if ((*(v9 - 1) & 0x10) != 0)
          {
            v12 = this[86];
            if (v8 != v12)
            {
              v13 = v11[13 * v7];
              if (v13 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              *v10 = (((((*a2)[v2][v5][v12] >> (*(&interchange_compression::format_table + 13 * v7 + v12 + 3) - v13)) + *v10) & ~(-1 << v13)) << -v13) >> -v13;
              v3 = this[85];
            }
          }

          *v10++ &= ~(-1 << v11[13 * v3]);
          ++v8;
          v3 = this[85];
          ++v11;
          v9 += 3;
          v7 = v3;
        }

        while (v8 < *(&interchange_compression::format_table + 13 * v3 + 2));
      }

      ++v5;
      v6 = (v6 + 16);
    }

    while (v5 != 8);
    ++v2;
    v4 = (v4 + 128);
  }

  while (v2 != 4);
  return this;
}

uint64_t bit_pack::get(bit_pack *this, unsigned int a2, unsigned int a3)
{
  if (a3 >= 0x21)
  {
    bit_pack::get();
  }

  v3 = a2;
  v4 = *(this + 134);
  if (a3 + a2 > v4)
  {
    printf("read overflow:  read bit=%d size=%d, total=%d\n", a2, a3, v4);
    __assert_rtn("get", "interchange_bit_pack.h", 85, "0");
  }

  v5 = *(this + 128);
  __dst = 0;
  v6 = 520;
  if (*(this + 544))
  {
    v6 = 528;
  }

  v7 = *(this + v6);
  LODWORD(v8) = v5 - (a2 >> 3);
  if (v8 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v8;
  }

  v9 = -1 << a3;
  memcpy(&__dst, (v7 + (a2 >> 3)), v8);
  return (__dst >> (v3 & 7)) & ~v9;
}

uint64_t interchange_compression::header::error_check(interchange_compression::header *this)
{
  v1 = this + 4;
  v2 = *this;
  if (!*(this + 3 * *(&interchange_compression::format_table + 52 * *this + 48) + 3))
  {
    interchange_compression::decompressor::unpack_header();
  }

  if (v2 == 21)
  {
    result = 0;
  }

  else
  {
    result = (v1[12 * *(&interchange_compression::format_table + 52 * *this + 48) + 4] >> 4) & 1;
  }

  if (v2 != 27)
  {
    v5 = 0;
    v6 = &interchange_compression::format_table + 52 * v2;
    LODWORD(v7) = *(v6 + 2);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    v8 = this + 12;
    v9 = this + 12;
    do
    {
      v10 = *v9;
      v9 += 12;
      if (!v10)
      {
        interchange_compression::decompressor::unpack_header();
      }

      v11 = *(v8 - 4);
      if ((v11 & 3u) - 1 >= 2)
      {
        v12 = result;
      }

      else
      {
        v12 = result | 2;
      }

      if ((v11 & 0x10) == 0)
      {
        v12 = result;
      }

      if ((v2 > 0x16 || ((1 << v2) & 0x4000C3) == 0) && (v11 & 3) == 2)
      {
        v12 |= 4u;
      }

      v13 = v11 & 3;
      if (v13 == 3)
      {
        if (!*&v1[12 * (v5 + 4) + 8])
        {
          interchange_compression::decompressor::unpack_header();
        }

        if (v11 & 4 | *&v1[12 * (v5 + 4) + 4])
        {
          v12 |= 0x10u;
        }
      }

      else
      {
        v14 = v12 | 8;
        if (v2 != 26)
        {
          v14 = v12;
        }

        if (v13 == 1)
        {
          v12 = v14;
        }
      }

      if (!*&v1[12 * (v5 + 4) + 8])
      {
        interchange_compression::decompressor::unpack_header();
      }

      if ((*&v1[12 * (v5 + 4) + 4] + 1) <= *&v6[4 * v5 + 12])
      {
        result = v12;
      }

      else
      {
        result = v12 | 0x20;
      }

      ++v5;
      v8 = v9;
    }

    while (v7 != v5);
  }

  return result;
}

void htpc_entropy::dec_symbols()
{
  __assert_rtn("dec_symbols", "htpc_entropy.h", 155, "bb_avail == 0");
}

{
  __assert_rtn("dec_symbols", "htpc_entropy.h", 190, "bb_avail < 8");
}

void interchange_compression::decompressor::decompress()
{
  __assert_rtn("decompress", "interchange_decompressor.h", 212, "lossy_level == 0");
}

{
  __assert_rtn("decompress", "interchange_decompressor.h", 203, "lossy_level == 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 901, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 911, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1013, "pixel_unpacked <= legal_pixel_size");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1063, "delta_quant <= ((1ull << delta_bits[c]) - 1)");
}

{
  __assert_rtn("skip", "interchange_bit_pack.h", 103, "read_ptr <= size_bits()");
}

void interchange_compression::header::get_size()
{
  __assert_rtn("get_size", "interchange_header.h", 133, "fields[field_id(BITS, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 132, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 127, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 142, "0");
}

{
  __assert_rtn("get_size", "interchange_header.h", 138, "fields[field_id(MODE, comp)].init");
}

void interchange_compression::derive_sharing()
{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 357, "start_level[3] <= 0");
}

{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 270, "mode[3] == 0 || mode[3] == 1");
}

void interchange_compression::decompressor::decompressor()
{
  __assert_rtn("set_format", "interchange_header.h", 205, "header_layout_table[id].format == id");
}

{
  __assert_rtn("decompressor", "interchange_decompressor.h", 40, "check_valid_lossy_level(lossy_level, format)");
}

{
  __assert_rtn("decompressor", "interchange_decompressor.h", 41, "lossy_level == 0 || comp_type < COMP_TYPE_INVALID");
}

void interchange_compression::decompressor::unpack_header()
{
  __assert_rtn("unpack_header", "interchange_decompressor.h", 238, "header::header_layout_table[format].field_size[0] > shift");
}

{
  __assert_rtn("get", "interchange_header.h", 104, "fields[field_id(s, comp)].init");
}

void interchange_compression::decompressor::decompress_pixels()
{
  __assert_rtn("sign_extend", "interchange_constants.h", 90, "width <= 32");
}

{
  __assert_rtn("wrap_to_range", "interchange_constants.h", 85, "width <= 32");
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}