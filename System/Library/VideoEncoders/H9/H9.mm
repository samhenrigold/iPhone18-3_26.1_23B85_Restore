int *AVE_MCTF_SMap_FindMap(int *result, int a2)
{
  if (result)
  {
    v3 = *result++;
    v2 = v3;
    if (v3 < 1)
    {
      return 0;
    }

    else
    {
      while (*result != a2)
      {
        result += 24;
        if (!--v2)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t AVE_MCTF_SMap_FindRange(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      result += 12 * a2 + 12;
    }
  }

  return result;
}

uint64_t AVE_MCTF_SMap_GetStrengthLevel(uint64_t result, int a2, _DWORD *a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 8) <= a2)
    {
      return 4294966296;
    }

    else
    {
      result = 0;
      *a3 = *(v3 + 12 * a2 + 20);
    }
  }

  return result;
}

uint64_t AVE_MCTF_SMap_Parse(char *a1, _DWORD *a2)
{
  v2 = 4294966295;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a2 + 1;
    v6 = a2 + 4;
    do
    {
      v7 = 0;
      v5[24 * v4 + 1] = 1;
      do
      {
        *&v6[v7] = -NAN;
        v7 += 3;
      }

      while (v7 != 21);
      ++v4;
      v6 += 24;
    }

    while (v4 != 5);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v2 = 0;
    v11 = 1;
    v12 = -1;
    v13 = 0x7FFFFFFF;
    while (1)
    {
      while (1)
      {
        v14 = *a1;
        if (v14 <= 0x54)
        {
          break;
        }

        if (*a1 <= 0x6Bu)
        {
          if (v14 == 85)
          {
            goto LABEL_29;
          }

          if (v14 == 99)
          {
LABEL_31:
            v12 = 0;
            goto LABEL_38;
          }

          if (v14 != 105)
          {
            goto LABEL_36;
          }

LABEL_26:
          ++a1;
          v12 = 1;
        }

        else if (*a1 > 0x73u)
        {
          if (v14 == 116)
          {
            goto LABEL_32;
          }

          if (v14 != 117)
          {
            goto LABEL_36;
          }

LABEL_29:
          ++a1;
          v12 = 4;
        }

        else
        {
          if (v14 == 108)
          {
            goto LABEL_30;
          }

          if (v14 != 115)
          {
            goto LABEL_36;
          }

LABEL_33:
          ++a1;
          v12 = 5;
        }
      }

      if (*a1 > 0x4Bu)
      {
        switch(v14)
        {
          case 'L':
LABEL_30:
            ++a1;
            v12 = 3;
            break;
          case 'S':
            goto LABEL_33;
          case 'T':
LABEL_32:
            ++a1;
            v12 = 2;
            break;
          default:
            goto LABEL_36;
        }
      }

      else
      {
        if (*a1 > 0x42u)
        {
          if (v14 == 67)
          {
            goto LABEL_31;
          }

          if (v14 != 73)
          {
            goto LABEL_36;
          }

          goto LABEL_26;
        }

        if (v14 == 32)
        {
          goto LABEL_38;
        }

        if (!*a1)
        {
          return v2;
        }

LABEL_36:
        if (v14 - 48 < 0xA || (v14 & 0xFFFFFFDF) - 65 <= 0x19)
        {
          __endptr = 0;
          v15 = strtol(a1, &__endptr, 0);
          if (v12 > 2)
          {
            if (v12 == 3)
            {
              v10 = v15;
            }

            else if (v12 == 4)
            {
              v13 = v15;
            }

            else if (v9 > 4 || (v16 = &v5[24 * v9], v17 = v16[2], v17 > 6))
            {
              if (AVE_Log_CheckLevel(0x10u, 4))
              {
                v20 = AVE_Log_CheckConsole(0x10u);
                CurrTime = AVE_GetCurrTime();
                LevelStr = AVE_Log_GetLevelStr(4);
                if (v20)
                {
                  if (v9 > 4)
                  {
                    v23 = -1;
                  }

                  else
                  {
                    v23 = v5[24 * v9 + 2];
                  }

                  printf("%lld %d AVE %s: %s:%d Invalid bounds %d %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_SMap_Parse", 266, v9, v23);
                  CurrTime = AVE_GetCurrTime();
                  LevelStr = AVE_Log_GetLevelStr(4);
                  if (v9 > 4)
                  {
                    v24 = -1;
                  }

                  else
                  {
                    v24 = v5[24 * v9 + 2];
                  }
                }

                else if (v9 > 4)
                {
                  v24 = -1;
                }

                else
                {
                  v24 = v5[24 * v9 + 2];
                }

                syslog(3, "%lld %d AVE %s: %s:%d Invalid bounds %d %d", CurrTime, 16, LevelStr, "AVE_MCTF_SMap_Parse", 266, v9, v24);
              }

              v2 = 4294966278;
            }

            else
            {
              *v16 = v8;
              v16[1] = v11;
              v18 = &v16[3 * v17];
              v18[3] = v10;
              v18[4] = v13;
              v18[5] = v15;
              v19 = v17 + 1;
              v16[2] = v19;
              if (*a2 <= v9)
              {
                *a2 = v9 + 1;
              }

              v10 = 0;
              if (v19 == 7)
              {
                v8 = 0;
                v11 = 1;
              }

              v13 = 0x7FFFFFFF;
            }
          }

          else if (v12)
          {
            if (v12 == 1)
            {
              if (v9 != v15)
              {
                v11 = 1;
                v10 = 0;
                v13 = 0x7FFFFFFF;
              }

              v9 = v15;
            }

            else if (v12 == 2)
            {
              v11 = v15;
            }
          }

          else
          {
            v8 = v15;
          }

          a1 = __endptr;
        }

        else
        {
LABEL_38:
          ++a1;
        }
      }
    }
  }

  return v2;
}

uint64_t AVE_MCTF_SMap_Print(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  v7 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v8 = *(a1 + 8);
    if (v8 >= 1)
    {
      v9 = 0;
      if (v8 >= 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = v8;
      }

      v11 = (a1 + 12);
      do
      {
        if (AVE_Log_CheckLevel(a2, v7))
        {
          v12 = AVE_Log_CheckConsole(a2);
          if (a3 < 0)
          {
            if ((-a3 & 0x20) != 0)
            {
              v16 = 0;
            }

            else
            {
              v16 = v12;
            }

            if (v16 == 1)
            {
              printf("\t[%p %s rI:%d/%d L:%d U:%d S:%d]\n", v11, a4, v9, *(a1 + 8), *v11, v11[1], v11[2]);
            }

            syslog(3, "\t[%p %s rI:%d/%d L:%d U:%d S:%d]", v11);
          }

          else
          {
            v13 = v12 ^ 1;
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(v7);
            if (((v13 | ((a3 & 0x20) >> 5)) & 1) == 0)
            {
              printf("%lld %d AVE %s: \t[%p %s rI:%d/%d L:%d U:%d S:%d]\n", CurrTime, a2, LevelStr, v11, a4, v9, *(a1 + 8), *v11, v11[1], v11[2]);
              CurrTime = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(v7);
            }

            syslog(3, "%lld %d AVE %s: \t[%p %s rI:%d/%d L:%d U:%d S:%d]", CurrTime, a2);
          }
        }

        ++v9;
        v11 += 3;
      }

      while (v10 != v9);
    }
  }

  return 0;
}

int *AVE_DevCap_Throughput_Find(int *a1, int a2, uint64_t a3)
{
  v5 = *a1;
  v3 = a1 + 2;
  v4 = v5;
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    while (1)
    {
      v7 = &v3[8 * v6];
      if (v7[1] == a2)
      {
        break;
      }

      if (++v6 >= v4)
      {
        return v7;
      }
    }

    ++v6;
  }

  while (*(v7 + 1) >= a3 && v6 < v4);
  return v7;
}

void AVE_SEI::AVE_SEI(AVE_SEI *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0u;
  *(this + 4) = 0u;
  *(this + 3) = 0u;
  AVE_DLList_Init(this + 48, a2);
}

uint64_t AVE_SEI::Uninit(AVE_SEI *this)
{
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v2 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu\n", CurrTime, 211, LevelStr, "AVE_SEI", "Uninit", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu", CurrTime);
  }

  if (*(this + 5))
  {
    while (!AVE_DLList_Empty(this + 6))
    {
      v5 = AVE_DLList_Front(this + 6);
      if (AVE_Log_CheckLevel(0xD3u, 5))
      {
        v6 = AVE_Log_CheckConsole(0xD3u);
        v7 = AVE_GetCurrTime();
        v8 = AVE_Log_GetLevelStr(5);
        v9 = v5[3];
        v10 = *this;
        if (v6)
        {
          printf("%lld %d AVE %s: %s::%s SEI Frame # %lld not used before destruction of SEI manager %llu\n", v7, 211, v8, "AVE_SEI", "Uninit", v5[3], v10);
          v7 = AVE_GetCurrTime();
          v8 = AVE_Log_GetLevelStr(5);
          v9 = v5[3];
          v10 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s SEI Frame # %lld not used before destruction of SEI manager %llu", v7, 211, v8, "AVE_SEI", "Uninit", v9, v10);
      }

      AVE_SEI::RemoveFrame(this, v5);
    }

    v11 = *(this + 5);
    if (v11)
    {
      AVE_BlkPool::~AVE_BlkPool(v11);
      MEMORY[0x29C24E920]();
    }

    *(this + 5) = 0;
  }

  v12 = *(this + 4);
  if (v12)
  {
    AVE_Mutex_Destroy(v12);
    *(this + 4) = 0;
  }

  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v13 = AVE_Log_CheckConsole(0xD3u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(6);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %d\n", v14, 211, v15, "AVE_SEI", "Uninit", this, *this, 0);
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %d", v14, 211);
  }

  return 0;
}

uint64_t AVE_SEI::Init(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  LODWORD(v8) = a4;
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x\n", CurrTime, 211, LevelStr, "AVE_SEI", "Init", a1, a2, a3, v8, a5, a6);
      v15 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x", v15, 211, v50, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x", CurrTime, 211, LevelStr, "AVE_SEI");
    }
  }

  *a1 = a2;
  if ((v8 & 0x80000000) != 0)
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v17 = AVE_Log_CheckConsole(0xD3u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d\n", v18, 211, v19, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, v8);
        v20 = AVE_GetCurrTime();
        v16 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d", v20, 211, v21, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, v8);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d", v18, 211, v19, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, v8);
        v16 = 4;
      }
    }

    v26 = 4294966295;
  }

  else
  {
    if (v8)
    {
      v8 = (v8 + 1);
    }

    else if (AVE_Log_CheckLevel(0xD3u, 6))
    {
      v22 = AVE_Log_CheckConsole(0xD3u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d\n", v23, 211, v24, "AVE_SEI", "Init", 95, a1, *a1, 49);
        v25 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d", v25, 211, v51);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d", v23, 211, v24);
      }

      v8 = 49;
    }

    else
    {
      v8 = 49;
    }

    a1[1] = a3;
    v27 = operator new(0x48uLL, MEMORY[0x29EDC9418]);
    if (v27)
    {
      v29 = v27;
      AVE_BlkPool::AVE_BlkPool(v27, v28);
      v30 = AVE_BlkPool::Create(v29, 0, v8, 248, 0, 0);
      if (v30)
      {
        v26 = v30;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v31 = AVE_Log_CheckConsole(0xD3u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d\n", v32, 211, v33, "AVE_SEI", "Init", 112, "ret == 0", a1, *a1, v8, v26);
            v34 = AVE_GetCurrTime();
            v52 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d", v34, 211, v52, "AVE_SEI");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d", v32, 211, v33, "AVE_SEI");
          }
        }
      }

      else
      {
        a1[5] = v29;
        *(a1 + 6) = v8;
        v40 = AVE_Mutex_Create();
        if (v40)
        {
          v26 = 0;
          a1[4] = v40;
          v16 = 6;
          *(a1 + 4) = a6;
          *(a1 + 5) = a5;
          goto LABEL_39;
        }

        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v41 = AVE_Log_CheckConsole(0xD3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d\n", v42, 211, v43, "AVE_SEI", "Init", 120, "pMutex != __null", a1, *a1, 0);
            v44 = AVE_GetCurrTime();
            v53 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d", v44, 211, v53, "AVE_SEI");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d", v42, 211, v43, "AVE_SEI");
          }
        }

        v26 = 4294966293;
      }

      AVE_BlkPool::~AVE_BlkPool(v29);
      MEMORY[0x29C24E920]();
      v16 = 4;
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v35 = AVE_Log_CheckConsole(0xD3u);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        if (v35)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d\n", v36, 211, v37, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
          v38 = AVE_GetCurrTime();
          v16 = 4;
          v39 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d", v38, 211, v39, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d", v36, 211, v37, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
          v16 = 4;
        }
      }

      v26 = 4294966293;
    }
  }

LABEL_39:
  if (AVE_Log_CheckLevel(0xD3u, v16))
  {
    v45 = AVE_Log_CheckConsole(0xD3u);
    v46 = AVE_GetCurrTime();
    v47 = AVE_Log_GetLevelStr(v16);
    if (v45)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d\n", v46, 211, v47, "AVE_SEI", "Init", a1, a2, a3, v8, a5, a6, v26);
      v48 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d", v48, 211, v54, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d", v46, 211, v47, "AVE_SEI");
    }
  }

  return v26;
}

uint64_t AVE_SEI::RemoveFrame(AVE_BlkPool **a1, uint64_t *a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "RemoveFrame", a1, *a1, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p", CurrTime, 211);
  }

  AVE_DLList_Erase(a2);
  v7 = a2[27];
  if (v7)
  {
    CFRelease(v7);
  }

  a2[30] = 0;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v8 = AVE_BlkPool::Free(a1[5], a2);
  if (v8)
  {
    v9 = 4;
  }

  else
  {
    v9 = 7;
  }

  if (AVE_Log_CheckLevel(0xD3u, v9))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(v9);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d\n", v11, 211, v12, "AVE_SEI", "RemoveFrame", a1, *a1, a2, v8);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(v9);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d", v13, 211, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d", v11, 211, v12);
    }
  }

  return v8;
}

uint64_t AVE_SEI::SetSEIBits(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetSEIBits", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx", CurrTime, 211);
  }

  AVE_Mutex_Lock(*(this + 4));
  *(this + 1) = a2;
  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d\n", v8, 211, v9, "AVE_SEI", "SetSEIBits", this, *this, a2, 0);
      v10 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d", v10, 211, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d", v8, 211, v9);
    }
  }

  return 0;
}

uint64_t AVE_SEI::DeleteFrame(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "DeleteFrame", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", CurrTime, 211);
  }

  v7 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindFrame(this, a2);
  if (Frame)
  {
    v7 = AVE_SEI::RemoveFrame(this, Frame);
  }

  AVE_Mutex_Unlock(*(this + 4));
  if (v7)
  {
    v9 = 4;
  }

  else
  {
    v9 = 7;
  }

  if (AVE_Log_CheckLevel(0xD3u, v9))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(v9);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v11, 211, v12, "AVE_SEI", "DeleteFrame", this, *this, a2, v7);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(v9);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v13, 211, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v11, 211, v12);
    }
  }

  return v7;
}

void *AVE_SEI::FindFrame(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v5 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "FindFrame", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", CurrTime, 211);
  }

  v8 = AVE_DLList_Begin(this + 48, v4);
  if (v8 != AVE_DLList_End(this + 48, v9))
  {
    while (!AVE_Log_CheckLevel(0xD3u, 8))
    {
LABEL_17:
      if (v8[3] == a2)
      {
        goto LABEL_20;
      }

      v8 = AVE_DLList_Next(v8, v10);
      if (v8 == AVE_DLList_End(this + 48, v18))
      {
        goto LABEL_19;
      }
    }

    v11 = AVE_Log_CheckConsole(0xD3u);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(8);
    if (v11)
    {
      if (v8)
      {
        v14 = v8[3];
        v15 = v8[4];
      }

      else
      {
        v14 = -1;
        v15 = -1;
      }

      printf("%lld %d AVE %s: %s::%s node: %p num: %lld, bits: 0x%016llx\n", v12, 211, v13, "AVE_SEI", "FindFrame", v8, v14, v15);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(8);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else if (!v8)
    {
LABEL_15:
      v16 = -1;
      v17 = -1;
      goto LABEL_16;
    }

    v16 = v8[3];
    v17 = v8[4];
LABEL_16:
    syslog(3, "%lld %d AVE %s: %s::%s node: %p num: %lld, bits: 0x%016llx", v12, 211, v13, "AVE_SEI", "FindFrame", v8, v16, v17);
    goto LABEL_17;
  }

LABEL_19:
  v8 = 0;
LABEL_20:
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v19 = AVE_Log_CheckConsole(0xD3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p\n", v20, 211, v21, "AVE_SEI", "FindFrame", this, *this, a2, v8);
      v22 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p", v22, 211, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p", v20, 211, v21);
    }
  }

  return v8;
}

uint64_t AVE_SEI::Generate(AVE_SEI *this, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, int *a6)
{
  v91 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "Generate", this, *this, a2, a3, a4, a5);
      v15 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d", v15, 211, v84, "AVE_SEI", "Generate");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d", CurrTime, 211, LevelStr, "AVE_SEI", "Generate");
    }
  }

  if (a4 && (a5 & 0x80000000) == 0 && a6)
  {
    *a6 = 0;
    AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindFrame(this, a2);
    if (Frame)
    {
      v17 = Frame;
      v18 = *(this + 1) & a3 & Frame[4];
      if (v18)
      {
        v91 = 0;
        v19 = AVE_SEI::GenerateISPMetadataNALU(this, a4, (a5 - *a6), Frame, v18, &v91);
        if (v19)
        {
          v20 = v19;
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
LABEL_24:
            AVE_Mutex_Unlock(*(this + 4));
            v24 = 4;
            goto LABEL_80;
          }

          v21 = AVE_Log_CheckConsole(0xD3u);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          if (v21)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 345, "ret == 0", this, *this, v20);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
          }

LABEL_23:
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v22, 211, v23, "AVE_SEI");
          goto LABEL_24;
        }

        if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
        {
          v31 = AVE_Log_CheckConsole(0xD3u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(7);
          if (v31)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes\n", v32, 211, v33, "AVE_SEI", "Generate", 349, this, *this, v91);
            v34 = AVE_GetCurrTime();
            v85 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes", v34, 211, v85);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes", v32, 211, v33);
          }
        }

        v35 = v91;
        v36 = *a6 + v91;
        *a6 = v36;
        v37 = &a4[v35];
        if (*(this + 5) == 2)
        {
          v91 = 0;
          v38 = AVE_SEI::GenerateTimingInfoMetadata(this, v37, (a5 - v36), v17, v18, &v91);
          if (v38)
          {
            v20 = v38;
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_24;
            }

            v39 = AVE_Log_CheckConsole(0xD3u);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
            if (v39)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 361, "ret == 0", this, *this, v20);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(4);
            }

            goto LABEL_23;
          }

          if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
          {
            v40 = AVE_Log_CheckConsole(0xD3u);
            v87 = AVE_GetCurrTime();
            v41 = AVE_Log_GetLevelStr(7);
            if (v40)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes\n", v87, 211, v41, "AVE_SEI", "Generate", 366, this, *this, v91);
              v42 = AVE_GetCurrTime();
              v43 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes", v42, 211, v43);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes", v87, 211, v41);
            }
          }

          v44 = v91;
          v45 = *a6 + v91;
          *a6 = v45;
          v46 = &v37[v44];
          v91 = 0;
          v47 = AVE_SEI::GenerateContentColorVolumeNALU(this, v46, (a5 - v45), v17, v18, &v91);
          if (v47)
          {
            v20 = v47;
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_24;
            }

            v48 = AVE_Log_CheckConsole(0xD3u);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
            if (v48)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 376, "ret == 0", this, *this, v20);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(4);
            }

            goto LABEL_23;
          }

          if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
          {
            v49 = AVE_Log_CheckConsole(0xD3u);
            v88 = AVE_GetCurrTime();
            v50 = AVE_Log_GetLevelStr(7);
            if (v49)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes\n", v88, 211, v50, "AVE_SEI", "Generate", 381, this, *this, v91);
              v51 = AVE_GetCurrTime();
              v52 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes", v51, 211, v52);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes", v88, 211, v50);
            }
          }

          v53 = v91;
          v54 = *a6 + v91;
          *a6 = v54;
          v55 = &v46[v53];
          v91 = 0;
          v56 = AVE_SEI::GenerateAmbientViewingEnvironmentNALU(this, v55, (a5 - v54), v17, v18, &v91);
          if (v56)
          {
            v20 = v56;
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_24;
            }

            v57 = AVE_Log_CheckConsole(0xD3u);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
            if (v57)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 390, "ret == 0", this, *this, v20);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(4);
            }

            goto LABEL_23;
          }

          if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
          {
            v58 = AVE_Log_CheckConsole(0xD3u);
            v89 = AVE_GetCurrTime();
            v59 = AVE_Log_GetLevelStr(7);
            if (v58)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes\n", v89, 211, v59, "AVE_SEI", "Generate", 396, this, *this, v91);
              v60 = AVE_GetCurrTime();
              v61 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes", v60, 211, v61);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes", v89, 211, v59);
            }
          }

          v62 = v91;
          v36 = *a6 + v91;
          *a6 = v36;
          v37 = &v55[v62];
        }

        v91 = 0;
        v63 = AVE_SEI::GenerateLuxLevelNALU(this, v37, (a5 - v36), v17, v18, &v91);
        if (v63)
        {
          v20 = v63;
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
            goto LABEL_24;
          }

          v64 = AVE_Log_CheckConsole(0xD3u);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          if (v64)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 407, "ret == 0", this, *this, v20);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
          }

          goto LABEL_23;
        }

        if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
        {
          v65 = AVE_Log_CheckConsole(0xD3u);
          v90 = AVE_GetCurrTime();
          v66 = AVE_Log_GetLevelStr(7);
          if (v65)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes\n", v90, 211, v66, "AVE_SEI", "Generate", 411, this, *this, v91);
            v67 = AVE_GetCurrTime();
            v68 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes", v67, 211, v68);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes", v90, 211, v66);
          }
        }

        v69 = v91;
        v70 = *a6 + v91;
        *a6 = v70;
        v91 = 0;
        v71 = AVE_SEI::GenerateUnregisteredSEINALU(this, &v37[v69], a5 - v70, v17, v18, &v91);
        if (v71)
        {
          v20 = v71;
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
            goto LABEL_24;
          }

          v72 = AVE_Log_CheckConsole(0xD3u);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          if (v72)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 421, "ret == 0", this, *this, v20);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
          }

          goto LABEL_23;
        }

        if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
        {
          v73 = AVE_Log_CheckConsole(0xD3u);
          v74 = AVE_GetCurrTime();
          v75 = AVE_Log_GetLevelStr(7);
          if (v73)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes\n", v74, 211, v75, "AVE_SEI", "Generate", 425, this, *this, v91);
            v76 = AVE_GetCurrTime();
            v86 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes", v76, 211, v86);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes", v74, 211, v75);
          }
        }

        *a6 += v91;
      }
    }

    AVE_Mutex_Unlock(*(this + 4));
    v20 = 0;
    v24 = 7;
  }

  else
  {
    v24 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v25 = AVE_Log_CheckConsole(0xD3u);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      v28 = *this;
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d\n", v26, 211, v27, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", this, v28, a6, a4, a5);
        v29 = AVE_GetCurrTime();
        v24 = 4;
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d", v29, 211, v30, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", this, *this, a6, a4, a5);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d", v26, 211, v27, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", this, v28, a6, a4, a5);
        v24 = 4;
      }
    }

    v20 = 4294966295;
  }

LABEL_80:
  if (AVE_Log_CheckLevel(0xD3u, v24))
  {
    v77 = AVE_Log_CheckConsole(0xD3u);
    v78 = AVE_GetCurrTime();
    v79 = AVE_Log_GetLevelStr(v24);
    v80 = *this;
    if (v77)
    {
      if (a6)
      {
        v81 = *a6;
      }

      else
      {
        v81 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %p %d %d\n", v78, 211, v79, "AVE_SEI", "Generate", this, v80, a2, a3, a4, v81, v20);
      v78 = AVE_GetCurrTime();
      v79 = AVE_Log_GetLevelStr(v24);
      v80 = *this;
      if (a6)
      {
        v82 = *a6;
      }

      else
      {
        v82 = -1;
      }
    }

    else if (a6)
    {
      v82 = *a6;
    }

    else
    {
      v82 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %p %d %d", v78, 211, v79, "AVE_SEI", "Generate", this, v80, a2, a3, a4, v82, v20);
  }

  return v20;
}

uint64_t AVE_SEI::GenerateISPMetadataNALU(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = a3;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateISPMetadataNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateISPMetadataNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 1) == 0)
  {
    goto LABEL_19;
  }

  BytePtr = CFDataGetBytePtr(*(a4 + 216));
  Length = CFDataGetLength(*(a4 + 216));
  v20 = AVE_SEI_WriteSEIISPMetadata(a2, v9, BytePtr, Length, *(a4 + 24), *(a1 + 5), a1[2] & 1, a6);
  if (!v20)
  {
    if ((a1[2] & 2) != 0)
    {
      v21 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v21 = 0;
LABEL_20:
    v22 = 7;
    goto LABEL_21;
  }

  v21 = v20;
  v22 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v23 = AVE_Log_CheckConsole(0xD3u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d\n", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v26 = AVE_GetCurrTime();
      v22 = 4;
      v27 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v26, 211, v27, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v22 = 4;
    }
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v22))
  {
    v28 = AVE_Log_CheckConsole(0xD3u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(v22);
    v31 = *a1;
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v29, 211, v30, "AVE_SEI", "GenerateISPMetadataNALU", a1, v31, a2, a4, *(a4 + 24), a5, a6, v21);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(v22);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v32, 211, v33, "AVE_SEI", "GenerateISPMetadataNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v29, 211, v30, "AVE_SEI", "GenerateISPMetadataNALU", a1, v31);
    }
  }

  return v21;
}

uint64_t AVE_SEI::GenerateTimingInfoMetadata(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v9 = a3;
  v65 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15, a2, v9, a4, *(a4 + 24), a5, a6);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p", v16, 211, v17, "AVE_SEI", "GenerateTimingInfoMetadata", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15);
    }
  }

  *a6 = 0;
  v18 = a1[1] & *(a4 + 32);
  v19 = v18 & a5;
  if ((v18 & a5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v22 = AVE_SEI_WriteAccessUnitDelimiter(a2, v9, *(a4 + 24), *(a1 + 5), *(a4 + 224), &v65);
  if (v22)
  {
    v20 = v22;
    v21 = 4;
    if (!AVE_Log_CheckLevel(0xD3u, 4))
    {
      goto LABEL_43;
    }

    v23 = AVE_Log_CheckConsole(0xD3u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      v26 = AVE_GetCurrTime();
      v21 = 4;
      v27 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v26, 211, v27, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      goto LABEL_43;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
    goto LABEL_20;
  }

  v28 = v65;
  if ((a1[2] & 2) != 0)
  {
    *a2 = bswap32(v65 - 4);
  }

  v29 = *a6 + v28;
  *a6 = v29;
  a2 += v28;
  v65 = 0;
  if ((v19 & 4) != 0)
  {
    v30 = AVE_SEI_WriteActiveParameterSets(a2, v9 - v29, *(a4 + 228), *(a4 + 24), *(a1 + 5), &v65);
    if (v30)
    {
      v20 = v30;
      v21 = 4;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v31 = AVE_Log_CheckConsole(0xD3u);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      if (v31)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v32, 211, v33, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
        v34 = AVE_GetCurrTime();
        v21 = 4;
        v35 = AVE_Log_GetLevelStr(4);
        v63 = *a1;
        v64 = v20;
        v62 = a1;
        v36 = 2136;
LABEL_32:
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v34, 211, v35, "AVE_SEI", "GenerateTimingInfoMetadata", v36, "ret == 0", v62, v63, v64);
        goto LABEL_43;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v32, 211, v33, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
      goto LABEL_20;
    }

    v37 = v65;
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v65 - 4);
    }

    v29 = *a6 + v37;
    *a6 = v29;
    a2 += v37;
    v65 = 0;
  }

  if ((v19 & 8) != 0)
  {
    v44 = AVE_SEI_WritePictureTiming(a2, v9 - v29, *(a4 + 24), *(a1 + 5), *(a4 + 232) != 0, *(a4 + 236), *(a4 + 224), *(a4 + 240), &v65);
    if (v44)
    {
      v20 = v44;
      v21 = 4;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v45 = AVE_Log_CheckConsole(0xD3u);
      v46 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(4);
      if (v45)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v46, 211, v47, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
        v34 = AVE_GetCurrTime();
        v21 = 4;
        v35 = AVE_Log_GetLevelStr(4);
        v63 = *a1;
        v64 = v20;
        v62 = a1;
        v36 = 2160;
        goto LABEL_32;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v46, 211, v47, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
LABEL_20:
      v21 = 4;
      goto LABEL_43;
    }

    v48 = v65;
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v65 - 4);
    }

    v49 = *a6 + v48;
    *a6 = v49;
    a2 += v48;
    v65 = 0;
    if ((v19 & 0x10) == 0)
    {
LABEL_6:
      v20 = 0;
LABEL_7:
      v21 = 7;
      goto LABEL_43;
    }

    v50 = AVE_SEI_WriteBufferingPeriod(a2, v9 - v49, *(a4 + 24), *(a4 + 228), *(a1 + 5), &v65);
    if (!v50)
    {
      v61 = v65;
      if ((a1[2] & 2) != 0)
      {
        *a2 = bswap32(v65 - 4);
      }

      v20 = 0;
      *a6 += v61;
      a2 += v61;
      goto LABEL_7;
    }

    v20 = v50;
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v51 = AVE_Log_CheckConsole(0xD3u);
      v52 = AVE_GetCurrTime();
      v53 = AVE_Log_GetLevelStr(4);
      if (v51)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v52, 211, v53, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
        v34 = AVE_GetCurrTime();
        v21 = 4;
        v35 = AVE_Log_GetLevelStr(4);
        v63 = *a1;
        v64 = v20;
        v62 = a1;
        v36 = 2178;
        goto LABEL_32;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v52, 211, v53, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
      goto LABEL_20;
    }
  }

  else
  {
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v38 = AVE_Log_CheckConsole(0xD3u);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      v41 = *(a4 + 24);
      if (v38)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed\n", v39, 211, v40, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v41);
        v42 = AVE_GetCurrTime();
        v21 = 4;
        v43 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed", v42, 211, v43, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, *(a4 + 24));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed", v39, 211, v40, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v41);
        v21 = 4;
      }
    }

    v20 = 4294966296;
  }

LABEL_43:
  if (AVE_Log_CheckLevel(0xD3u, v21))
  {
    v54 = AVE_Log_CheckConsole(0xD3u);
    v55 = AVE_GetCurrTime();
    v56 = AVE_Log_GetLevelStr(v21);
    v57 = *a1;
    if (v54)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d\n", v55, 211, v56, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v57, a2, a4, *(a4 + 24), a5, a6, v20);
      v58 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(v21);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d", v58, 211, v59, "AVE_SEI", "GenerateTimingInfoMetadata", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d", v55, 211, v56, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v57);
    }
  }

  return v20;
}

uint64_t AVE_SEI::GenerateContentColorVolumeNALU(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = a3;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x20) == 0)
  {
    goto LABEL_19;
  }

  v18 = AVE_SEI_WriteContentColorVolume(a2, v9, *(a1 + 5), a6);
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      v19 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
LABEL_20:
    v20 = 7;
    goto LABEL_21;
  }

  v19 = v18;
  v20 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v24 = AVE_GetCurrTime();
      v20 = 4;
      v25 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v24, 211, v25, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v20))
  {
    v26 = AVE_Log_CheckConsole(0xD3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(v20);
    v29 = *a1;
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v29, a2, a4, *(a4 + 24), a5, a6, v19);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v20);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d", v30, 211, v31, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v29);
    }
  }

  return v19;
}

uint64_t AVE_SEI::GenerateAmbientViewingEnvironmentNALU(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v9 = a3;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x40) == 0)
  {
    goto LABEL_20;
  }

  v34 = 0;
  v18 = AVE_SEI_WriteAmbientViewingEnvironment(a2, v9, (a4 + 148), *(a1 + 5), &v34);
  v19 = v34;
  *a6 = v34;
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v19 - 4);
    }

LABEL_20:
    v20 = 0;
    v25 = 7;
    goto LABEL_23;
  }

  v20 = v18;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", 2237, "ret == 0", a1, *a1, v20);
      v24 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v24, 211, v33, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI");
    }
  }

  v25 = 4;
LABEL_23:
  if (AVE_Log_CheckLevel(0xD3u, v25))
  {
    v26 = AVE_Log_CheckConsole(0xD3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(v25);
    v29 = *a1;
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29, a2, a4, *(a4 + 24), a5, a6, v20);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v30, 211, v31, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29);
    }
  }

  return v20;
}

uint64_t AVE_SEI::GenerateLuxLevelNALU(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = a3;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x80) == 0)
  {
    goto LABEL_19;
  }

  v18 = AVE_SEI_WriteLuxLevel(a2, v9, *(a4 + 24), *(a4 + 60), *(a1 + 5), 1, a6);
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      v19 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
LABEL_20:
    v20 = 7;
    goto LABEL_21;
  }

  v19 = v18;
  v20 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v24 = AVE_GetCurrTime();
      v20 = 4;
      v25 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v24, 211, v25, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v20))
  {
    v26 = AVE_Log_CheckConsole(0xD3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(v20);
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateLuxLevelNALU", a1, *a1, a4, *(a4 + 24), a5, a6, v19);
      v29 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v20);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d", v29, 211, v31, "AVE_SEI", "GenerateLuxLevelNALU", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateLuxLevelNALU", a1);
    }
  }

  return v19;
}

uint64_t AVE_SEI::GenerateUnregisteredSEINALU(uint64_t *a1, unsigned __int8 *a2, int a3, void *a4, uint64_t a5, int *a6)
{
  v177 = *MEMORY[0x29EDCA608];
  *v176 = xmmword_295650730;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = *a1;
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", v14, 211, v15, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
    }
  }

  *a6 = 0;
  v16 = a4[4] & a1[1];
  if ((a5 & v16 & 0x3FF00000000) == 0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v27 = AVE_Log_CheckConsole(0xD3u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      v30 = *a1;
      if (v27)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early\n", v28, 211, v29, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v30);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early", v31, 211, v32, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, *a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early", v28, 211, v29, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v30);
      }
    }

    goto LABEL_21;
  }

  v17 = v16 & a5;
  v18 = AVE_SEI::EstimateUnregisteredSEIMessageSizes(a1, a4, v16 & a5);
  if (v18 < 1)
  {
LABEL_21:
    v23 = 0;
    goto LABEL_46;
  }

  v19 = v18;
  v20 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v20)
  {
    v21 = v20;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v20, a2, a3, 0);
    v22 = AVE_SyntaxWriter::WriteStartCode(v21);
    if (v22)
    {
      v23 = v22;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v24 = AVE_Log_CheckConsole(0xD3u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
          v25 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
      }

      goto LABEL_41;
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v36 = AVE_Log_CheckConsole(0xD3u);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(8);
      v39 = *(v21 + 3);
      if (v36)
      {
        printf("%lld %d AVE %s: %s::%s:%d start code %p (%d)\n", v37, 211, v38, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + v39), v39);
        v40 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v40, 211, v41, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v37, 211, v38, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + v39), v39);
      }
    }

    v42 = *(a1 + 5);
    if (v42 == 2)
    {
      HEVCHeaderStart = AVE_SEI_GenerateHEVCHeaderStart(39, v21);
      if (HEVCHeaderStart)
      {
        v23 = HEVCHeaderStart;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v44 = v21;
          v49 = AVE_Log_CheckConsole(0xD3u);
          v50 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(4);
          if (v49)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v50, 211, v51, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
            v50 = AVE_GetCurrTime();
            v51 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v50, 211, v51, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
          goto LABEL_74;
        }

LABEL_41:
        v52 = 0;
        v53 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      if (v42 != 1)
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v61 = AVE_Log_CheckConsole(0xD3u);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(4);
          v64 = *(a1 + 5);
          if (v61)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL\n", v62, 211, v63, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v64);
            v65 = AVE_GetCurrTime();
            v66 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v65, 211, v66, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, *(a1 + 5));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v62, 211, v63, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v64);
          }
        }

        v52 = 0;
        v53 = 0;
        v23 = 4294966295;
        goto LABEL_42;
      }

      AVCHeaderStart = AVE_SEI_GenerateAVCHeaderStart(v21);
      if (AVCHeaderStart)
      {
        v23 = AVCHeaderStart;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v44 = v21;
          v45 = AVE_Log_CheckConsole(0xD3u);
          v46 = AVE_GetCurrTime();
          v47 = AVE_Log_GetLevelStr(4);
          if (v45)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v46, 211, v47, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
            v46 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v46, 211, v47, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
LABEL_74:
          v52 = 0;
          v53 = 0;
          v21 = v44;
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v67 = AVE_Log_CheckConsole(0xD3u);
      v68 = AVE_GetCurrTime();
      v69 = AVE_Log_GetLevelStr(8);
      v70 = *a1;
      v71 = *(v21 + 3);
      if (v67)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)\n", v68, 211, v69, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v70, (*(v21 + 4) + v71), v71);
        v72 = AVE_GetCurrTime();
        v73 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v72, 211, v73, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, *a1, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v68, 211, v69, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v70, (*(v21 + 4) + v71), v71);
      }
    }

    AVE_SyntaxWriter::WriteU(v21, 5u, 8);
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v74 = AVE_Log_CheckConsole(0xD3u);
      v75 = AVE_GetCurrTime();
      v76 = AVE_Log_GetLevelStr(8);
      v77 = *a1;
      v78 = *(v21 + 3);
      if (v74)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)\n", v75, 211, v76, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v77, (*(v21 + 4) + v78), v78);
        v79 = AVE_GetCurrTime();
        v80 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v79, 211, v80, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, *a1, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v75, 211, v76, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v77, (*(v21 + 4) + v78), v78);
      }
    }

    v81 = malloc_type_malloc(v19, 0x100004077774924uLL);
    if (!v81)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v85 = AVE_Log_CheckConsole(0xD3u);
        v86 = AVE_GetCurrTime();
        v87 = AVE_Log_GetLevelStr(4);
        v88 = *a1;
        if (v85)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.\n", v86, 211, v87, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v88);
          v89 = AVE_GetCurrTime();
          v90 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v89, 211, v90, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v86, 211, v87, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v88);
        }
      }

      v52 = 0;
      v53 = 0;
      v23 = 4294966293;
      goto LABEL_42;
    }

    v171 = v21;
    v172 = v81;
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v82 = AVE_Log_CheckConsole(0xD3u);
      v83 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(8);
      if (v82)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer\n", v83, 211, v84, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
        v83 = AVE_GetCurrTime();
        v84 = AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer", v83, 211, v84, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
    }

    v91 = 0;
    v92 = &off_2A1C82C38;
    v93 = 10;
    v94 = v172;
    do
    {
      if ((v17 >> *(v92 - 2)))
      {
        v175 = 0;
        (*v92)(a4, v94, v19, &v175);
        v94 += v175;
        v19 = (v19 - v175);
        v91 += v175;
      }

      v92 += 2;
      --v93;
    }

    while (v93);
    v170 = v91 + v91 / 2 + 17;
    v52 = malloc_type_malloc(v170, 0x100004077774924uLL);
    if (v52)
    {
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v95 = AVE_Log_CheckConsole(0xD3u);
        v96 = AVE_GetCurrTime();
        v97 = AVE_Log_GetLevelStr(8);
        if (v95)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer\n", v96, 211, v97, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v170);
          v96 = AVE_GetCurrTime();
          v97 = AVE_Log_GetLevelStr(8);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer", v96, 211, v97, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v170);
      }

      v104 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
      if (v104)
      {
        v105 = v104;
        AVE_SyntaxWriter::AVE_SyntaxWriter(v104, v52, v170, 1);
        v169 = v105;
        v23 = AVE_SyntaxWriter::WriteBytes(v105, v176, 0x10u);
        if (v23)
        {
          if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v106 = AVE_Log_CheckConsole(0xD3u);
            v107 = AVE_GetCurrTime();
            v108 = AVE_Log_GetLevelStr(4);
            if (v106)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v107, 211, v108, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
              v107 = AVE_GetCurrTime();
              v108 = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v107, 211, v108, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
          }
        }

        else
        {
          v23 = AVE_SyntaxWriter::WriteBytes(v105, v172, v91);
          if (v23)
          {
            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v112 = AVE_Log_CheckConsole(0xD3u);
              v113 = AVE_GetCurrTime();
              v114 = AVE_Log_GetLevelStr(4);
              if (v112)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v113, 211, v114, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
                v113 = AVE_GetCurrTime();
                v114 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v113, 211, v114, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
            }
          }

          else
          {
            v116 = *(v105 + 3);
            v115 = *(v169 + 4);
            if (v115 >= 0)
            {
              v117 = *(v169 + 4);
            }

            else
            {
              v117 = v115 + 7;
            }

            v168 = *(v171 + 3);
            v118 = v116 - (v117 >> 3);
            if (AVE_Log_CheckLevel(0xD3u, 8))
            {
              v119 = AVE_Log_CheckConsole(0xD3u);
              v120 = AVE_GetCurrTime();
              v121 = AVE_Log_GetLevelStr(8);
              v122 = *a1;
              v123 = *(v171 + 3);
              if (v119)
              {
                printf("%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)\n", v120, 211, v121, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v122, v116 - (v117 >> 3), (*(v171 + 4) + v123), v123);
                v124 = AVE_GetCurrTime();
                v125 = AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v124, 211, v125, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, *a1, v118, (*(v171 + 4) + *(v171 + 3)), *(v171 + 3));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v120, 211, v121, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v122, v116 - (v117 >> 3), (*(v171 + 4) + v123), v123);
              }
            }

            v23 = AVE_SEI_WritePayloadSize(v118, v171);
            if (v23)
            {
              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v126 = AVE_Log_CheckConsole(0xD3u);
                v127 = AVE_GetCurrTime();
                v128 = AVE_Log_GetLevelStr(4);
                if (v126)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v127, 211, v128, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
                  v127 = AVE_GetCurrTime();
                  v128 = AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v127, 211, v128, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
              }
            }

            else
            {
              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v129 = AVE_Log_CheckConsole(0xD3u);
                v130 = AVE_GetCurrTime();
                v131 = AVE_Log_GetLevelStr(8);
                v132 = *a1;
                v133 = *(v171 + 3);
                if (v129)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)\n", v130, 211, v131, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v132, v133 - v168, (*(v171 + 4) + v133), v133);
                  v134 = AVE_GetCurrTime();
                  v135 = AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v134, 211, v135, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, *a1, *(v171 + 3) - v168, (*(v171 + 4) + *(v171 + 3)), *(v171 + 3));
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v130, 211, v131, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v132, v133 - v168, (*(v171 + 4) + v133), v133);
                }
              }

              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v136 = AVE_Log_CheckConsole(0xD3u);
                v137 = AVE_GetCurrTime();
                v138 = AVE_Log_GetLevelStr(8);
                v139 = *(v169 + 3);
                if (v136)
                {
                  printf("%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d\n", v137, 211, v138, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v139, v170, *(v171 + 3), a3);
                  v140 = AVE_GetCurrTime();
                  v141 = AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v140, 211, v141, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, *(v169 + 3), v170, *(v171 + 3), a3);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v137, 211, v138, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v139, v170, *(v171 + 3), a3);
                }
              }

              v23 = AVE_SyntaxWriter::CopyFromSyntaxWriter(v171, v169);
              if (v23)
              {
                if (AVE_Log_CheckLevel(0xD3u, 4))
                {
                  v142 = AVE_Log_CheckConsole(0xD3u);
                  v143 = AVE_GetCurrTime();
                  v144 = AVE_Log_GetLevelStr(4);
                  if (v142)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d\n", v143, 211, v144, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                    v143 = AVE_GetCurrTime();
                    v144 = AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d", v143, 211, v144, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                }
              }

              else
              {
                if (AVE_Log_CheckLevel(0xD3u, 8))
                {
                  v145 = AVE_Log_CheckConsole(0xD3u);
                  v146 = AVE_GetCurrTime();
                  v147 = AVE_Log_GetLevelStr(8);
                  v148 = *a1;
                  v149 = *(v171 + 3);
                  if (v145)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)\n", v146, 211, v147, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v148, (*(v171 + 4) + v149), v149);
                    v150 = AVE_GetCurrTime();
                    v151 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v150, 211, v151, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, *a1, (*(v171 + 4) + *(v171 + 3)), *(v171 + 3));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v146, 211, v147, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v148, (*(v171 + 4) + v149), v149);
                  }
                }

                v23 = AVE_SyntaxWriter::AlignToByte(v171);
                if (v23)
                {
                  if (AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    v152 = AVE_Log_CheckConsole(0xD3u);
                    v153 = AVE_GetCurrTime();
                    v154 = AVE_Log_GetLevelStr(4);
                    if (v152)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v153, 211, v154, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                      v153 = AVE_GetCurrTime();
                      v154 = AVE_Log_GetLevelStr(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v153, 211, v154, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                  }
                }

                else
                {
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v155 = AVE_Log_CheckConsole(0xD3u);
                    v156 = AVE_GetCurrTime();
                    v157 = AVE_Log_GetLevelStr(8);
                    v158 = *a1;
                    v159 = *(v171 + 3);
                    if (v155)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)\n", v156, 211, v157, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v158, (*(v171 + 4) + v159), v159);
                      v160 = AVE_GetCurrTime();
                      v161 = AVE_Log_GetLevelStr(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v160, 211, v161, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, *a1, (*(v171 + 4) + *(v171 + 3)), *(v171 + 3));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v156, 211, v157, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v158, (*(v171 + 4) + v159), v159);
                    }
                  }

                  *a6 = *(v171 + 3);
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v162 = AVE_Log_CheckConsole(0xD3u);
                    v163 = AVE_GetCurrTime();
                    v164 = AVE_Log_GetLevelStr(8);
                    v165 = *a6;
                    if (v162)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d\n", v163, 211, v164, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v165);
                      v166 = AVE_GetCurrTime();
                      v167 = AVE_Log_GetLevelStr(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v166, 211, v167, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, *a6);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v163, 211, v164, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v165);
                    }
                  }

                  v23 = 0;
                  if ((a1[2] & 2) != 0)
                  {
                    *a2 = bswap32(*a6 - 4);
                  }
                }
              }
            }
          }
        }

        v21 = v171;
        v53 = v172;
        (*(*v169 + 8))(v169);
        goto LABEL_42;
      }

      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v109 = AVE_Log_CheckConsole(0xD3u);
        v110 = AVE_GetCurrTime();
        v111 = AVE_Log_GetLevelStr(4);
        if (v109)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v110, 211, v111, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
          v110 = AVE_GetCurrTime();
          v111 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v110, 211, v111, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v98 = AVE_Log_CheckConsole(0xD3u);
        v99 = AVE_GetCurrTime();
        v100 = AVE_Log_GetLevelStr(4);
        v101 = *a1;
        if (v98)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed\n", v99, 211, v100, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v101);
          v102 = AVE_GetCurrTime();
          v103 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v102, 211, v103, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v99, 211, v100, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v101);
        }
      }

      v52 = 0;
    }

    v23 = 4294966293;
    v21 = v171;
    v53 = v172;
LABEL_42:
    (*(*v21 + 8))(v21);
    if (v52)
    {
      free(v52);
    }

    if (v53)
    {
      free(v53);
    }

    goto LABEL_46;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v33 = AVE_Log_CheckConsole(0xD3u);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(4);
    if (v33)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v34, 211, v35, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
      v34 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v34, 211, v35, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
  }

  v23 = 4294966293;
LABEL_46:
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v54 = AVE_Log_CheckConsole(0xD3u);
    v55 = AVE_GetCurrTime();
    v56 = AVE_Log_GetLevelStr(7);
    v57 = *a1;
    if (v54)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d\n", v55, 211, v56, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v57, a2, a3, a4, a5, a6, *a6, v23);
      v58 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v58, 211, v59, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6, *a6, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v55, 211, v56, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v57, a2, a3, a4, a5, a6, *a6, v23);
    }
  }

  return v23;
}

uint64_t AVE_SEI::SetISPMetadata(AVE_SEI *this, uint64_t a2, const __CFDictionary *a3)
{
  error = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetISPMetadata", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v36);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
    }
  }

  if (a3 && (v10 = CFGetTypeID(a3), v10 == CFDictionaryGetTypeID()))
  {
    v11 = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], a3, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v11)
    {
      v12 = v11;
      v13 = AVE_Mutex_Lock(*(this + 4));
      Frame = AVE_SEI::FindOrCreateFrame(this, a2);
      if (Frame)
      {
        Frame[4] |= 1uLL;
        Frame[27] = v12;
        AVE_Mutex_Unlock(*(this + 4));
        if (!v13)
        {
          v15 = 7;
          goto LABEL_19;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v27 = AVE_Log_CheckConsole(0xD3u);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetISPMetadata", 496, "pPFData != __null", this, *this, a2);
            v30 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v30, 211, v39, "AVE_SEI");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
          }
        }

        AVE_Mutex_Unlock(*(this + 4));
        v13 = 4294966296;
      }

      CFRelease(v12);
    }

    else
    {
      if (error)
      {
        Domain = CFErrorGetDomain(error);
        if (Domain)
        {
          CStringPtr = CFStringGetCStringPtr(Domain, 0);
        }

        else
        {
          CStringPtr = 0;
        }

        Code = CFErrorGetCode(error);
      }

      else
      {
        CStringPtr = 0;
        Code = 0;
      }

      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v32 = AVE_Log_CheckConsole(0xD3u);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        if (v32)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p\n", v33, 211, v34, "AVE_SEI", "SetISPMetadata", 487, "false", this, *this, a2, CStringPtr, Code, a3);
          v35 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p", v35, 211, v40, "AVE_SEI", "SetISPMetadata", 487, "false");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p", v33, 211, v34, "AVE_SEI", "SetISPMetadata", 487, "false");
        }
      }

      v13 = 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 5))
    {
      v16 = AVE_Log_CheckConsole(0xD3u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(5);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping\n", v17, 211, v18, "AVE_SEI", "SetISPMetadata", 464, "pISPMetadata != NULL && CFGetTypeID(pISPMetadata) == CFDictionaryGetTypeID()", this, *this, a3, a2);
        v19 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping", v19, 211, v37, "AVE_SEI", "SetISPMetadata");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping", v17, 211, v18, "AVE_SEI", "SetISPMetadata");
      }
    }

    v13 = 4294966295;
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  v15 = 4;
LABEL_19:
  if (AVE_Log_CheckLevel(0xD3u, v15))
  {
    v20 = AVE_Log_CheckConsole(0xD3u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(v15);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v21, 211, v22, "AVE_SEI", "SetISPMetadata", this, *this, a2, a3, v13);
      v23 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(v15);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v23, 211, v38, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v21, 211, v22, "AVE_SEI");
    }
  }

  return v13;
}

void *AVE_SEI::FindOrCreateFrame(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "FindOrCreateFrame", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", CurrTime, 211);
  }

  Frame = AVE_SEI::FindFrame(this, a2);
  if (Frame)
  {
    v7 = 0;
LABEL_8:
    v8 = 8;
    goto LABEL_11;
  }

  v7 = AVE_SEI::CreateFrame(this, a2, &Frame);
  if (!v7)
  {
    goto LABEL_8;
  }

  Frame = 0;
  v8 = 4;
LABEL_11:
  if (AVE_Log_CheckLevel(0xD3u, v8))
  {
    v9 = AVE_Log_CheckConsole(0xD3u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(v8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p\n", v10, 211, v11, "AVE_SEI", "FindOrCreateFrame", this, *this, a2, v7, Frame);
      v12 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(v8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p", v12, 211, v14, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p", v10, 211, v11, "AVE_SEI");
    }
  }

  return Frame;
}

uint64_t AVE_SEI::SetContentColorVolume(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetContentColorVolume", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", CurrTime, 211);
  }

  v7 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x20uLL;
    AVE_Mutex_Unlock(*(this + 4));
    if (v7)
    {
      v9 = 4;
    }

    else
    {
      v9 = 7;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v10 = AVE_Log_CheckConsole(0xD3u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v11, 211, v12, "AVE_SEI", "SetContentColorVolume", 539, "pPFData != __null", this, *this, a2);
        v13 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v13, 211, v19, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v11, 211, v12, "AVE_SEI");
      }
    }

    AVE_Mutex_Unlock(*(this + 4));
    v9 = 4;
    v7 = 4294966296;
  }

  if (AVE_Log_CheckLevel(0xD3u, v9))
  {
    v14 = AVE_Log_CheckConsole(0xD3u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(v9);
    if (v14)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v15, 211, v16, "AVE_SEI", "SetContentColorVolume", this, *this, a2, v7);
      v17 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(v9);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v17, 211, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v15, 211, v16);
    }
  }

  return v7;
}

uint64_t AVE_SEI::SetLuxLevel(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetLuxLevel", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
    }
  }

  if (a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring\n", v14, 211, v15, "AVE_SEI", "SetLuxLevel", 569, "luxLevel > 0", a3);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring", v16, 211);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring", v14, 211);
      }
    }

LABEL_16:
    v10 = 0;
    v12 = 7;
    goto LABEL_19;
  }

  v10 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x80uLL;
    *(Frame + 15) = a3;
    AVE_Mutex_Unlock(*(this + 4));
    if (v10)
    {
      v12 = 4;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v18, 211, v19, "AVE_SEI", "SetLuxLevel", 577, "pPFData != __null", this, *this, a2);
      v20 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v27, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v19, "AVE_SEI");
    }
  }

  AVE_Mutex_Unlock(*(this + 4));
  v12 = 4;
  v10 = 4294966296;
LABEL_19:
  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(v12);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v22, 211, v23, "AVE_SEI", "SetLuxLevel", this, *this, a2, v10);
      v24 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v24, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v22, 211, v23);
    }
  }

  return v10;
}

uint64_t AVE_SEI::SetAmbientViewingEnvironment(AVE_SEI *this, uint64_t a2, const __CFData *a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetAmbientViewingEnvironment", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
    }
  }

  if (!a3)
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping", v15, 211, v16);
LABEL_23:
        v13 = 4;
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetAmbientViewingEnvironment", 610, "pViewingEnvironment != __null", this, *this);
      v17 = AVE_GetCurrTime();
      v13 = 4;
      v33 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping", v17, 211, v33);
    }

LABEL_24:
    v11 = 4294966295;
    goto LABEL_25;
  }

  Length = CFDataGetLength(a3);
  if (Length != 8)
  {
    v18 = Length;
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v19 = AVE_Log_CheckConsole(0xD3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld\n", v20, 211, v21, "AVE_SEI", "SetAmbientViewingEnvironment", 617, "dataLength == 8", this, *this, v18);
        v22 = AVE_GetCurrTime();
        v13 = 4;
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld", v22, 211, v34, "AVE_SEI");
        goto LABEL_24;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld", v20, 211, v21, "AVE_SEI");
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v11 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x40uLL;
    v37.location = 0;
    v37.length = 8;
    CFDataGetBytes(a3, v37, Frame + 148);
    AVE_Mutex_Unlock(*(this + 4));
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xD3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v24, 211, v25, "AVE_SEI", "SetAmbientViewingEnvironment", 624, "pPFData != __null", this, *this, a2);
        v26 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v26, 211, v35, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v24, 211, v25, "AVE_SEI");
      }
    }

    AVE_Mutex_Unlock(*(this + 4));
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_25:
  if (AVE_Log_CheckLevel(0xD3u, v13))
  {
    v27 = AVE_Log_CheckConsole(0xD3u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v13);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v28, 211, v29, "AVE_SEI", "SetAmbientViewingEnvironment", this, *this, a2, a3, v11);
      v30 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v30, 211, v36, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v28, 211, v29, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t AVE_SEI::SetExposureTime(AVE_SEI *this, uint64_t a2, double a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetExposureTime", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f", CurrTime, 211);
  }

  if (a3 <= 0.0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v12 = AVE_Log_CheckConsole(0xD3u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | exposure time %f invalid, ignoring\n", v13, 211, v14, "AVE_SEI", "SetExposureTime", 657, "fExposureTime > 0", a3);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | exposure time %f invalid, ignoring", v13);
    }

LABEL_18:
    v9 = 0;
    v11 = 7;
    goto LABEL_21;
  }

  v9 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x100000000uLL;
    Frame[8] = a3;
    AVE_Mutex_Unlock(*(this + 4));
    if (v9)
    {
      v11 = 4;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v15 = AVE_Log_CheckConsole(0xD3u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v16, 211, v17, "AVE_SEI", "SetExposureTime", 664, "pPFData != __null", this, *this, a2);
      v18 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v24, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI");
    }
  }

  AVE_Mutex_Unlock(*(this + 4));
  v11 = 4;
  v9 = 4294966296;
LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v11))
  {
    v19 = AVE_Log_CheckConsole(0xD3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(v11);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d\n", v20, 211, v21, "AVE_SEI", "SetExposureTime", this, *this, a2, a3, v9);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v22, 211, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v20, 211, v21);
    }
  }

  return v9;
}

uint64_t AVE_SEI::SetSNR(AVE_SEI *this, uint64_t a2, double a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetSNR", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f", CurrTime, 211);
  }

  if (a3 <= 0.0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v12 = AVE_Log_CheckConsole(0xD3u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | SNR value %f invalid, ignoring\n", v13, 211, v14, "AVE_SEI", "SetSNR", 695, "fSNR > 0", a3);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | SNR value %f invalid, ignoring", v13);
    }

LABEL_18:
    v9 = 0;
    v11 = 7;
    goto LABEL_21;
  }

  v9 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x200000000uLL;
    Frame[9] = a3;
    AVE_Mutex_Unlock(*(this + 4));
    if (v9)
    {
      v11 = 4;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v15 = AVE_Log_CheckConsole(0xD3u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v16, 211, v17, "AVE_SEI", "SetSNR", 702, "pPFData != __null", this, *this, a2);
      v18 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v24, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI");
    }
  }

  AVE_Mutex_Unlock(*(this + 4));
  v11 = 4;
  v9 = 4294966296;
LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v11))
  {
    v19 = AVE_Log_CheckConsole(0xD3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(v11);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d\n", v20, 211, v21, "AVE_SEI", "SetSNR", this, *this, a2, a3, v9);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v22, 211, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v20, 211, v21);
    }
  }

  return v9;
}

uint64_t AVE_SEI::SetRCMode(void **a1, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetRCMode", a1, *a1, a2, a3);
      v9 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
    }
  }

  if (a3 < 0)
  {
    v12 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d\n", v14, 211, v15, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
        v16 = AVE_GetCurrTime();
        v12 = 4;
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d", v16, 211, v17, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d", v14, 211, v15, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = AVE_Mutex_Lock(a1[4]);
    Frame = AVE_SEI::FindOrCreateFrame(a1, a2);
    if (Frame)
    {
      Frame[4] |= 0x400000000uLL;
      *(Frame + 20) = a3;
      AVE_Mutex_Unlock(a1[4]);
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v18 = AVE_Log_CheckConsole(0xD3u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetRCMode", 740, "pPFData != __null", a1, *a1, a2);
          v21 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v28, "AVE_SEI");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
        }
      }

      AVE_Mutex_Unlock(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v22 = AVE_Log_CheckConsole(0xD3u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v12);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v23, 211, v24, "AVE_SEI", "SetRCMode", a1, *a1, a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v23, 211, v24);
    }
  }

  return v10;
}

uint64_t AVE_SEI::SetThroughputMode(void **a1, uint64_t a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetThroughputMode", a1, *a1, a2, a3);
      v9 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
    }
  }

  if (a3 >= 8)
  {
    v12 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d\n", v14, 211, v15, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
        v16 = AVE_GetCurrTime();
        v12 = 4;
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d", v16, 211, v17, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d", v14, 211, v15, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = AVE_Mutex_Lock(a1[4]);
    Frame = AVE_SEI::FindOrCreateFrame(a1, a2);
    if (Frame)
    {
      Frame[4] |= 0x800000000uLL;
      *(Frame + 21) = a3;
      AVE_Mutex_Unlock(a1[4]);
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v18 = AVE_Log_CheckConsole(0xD3u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetThroughputMode", 779, "pPFData != __null", a1, *a1, a2);
          v21 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v28, "AVE_SEI");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
        }
      }

      AVE_Mutex_Unlock(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v22 = AVE_Log_CheckConsole(0xD3u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v12);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v23, 211, v24, "AVE_SEI", "SetThroughputMode", a1, *a1, a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v23, 211, v24);
    }
  }

  return v10;
}

uint64_t AVE_SEI::SetBitrate(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetBitrate", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
    }
  }

  if (a3 <= 0)
  {
    v12 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d\n", v14, 211, v15, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", this, *this, a3);
        v16 = AVE_GetCurrTime();
        v12 = 4;
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d", v16, 211, v17, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", this, *this, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d", v14, 211, v15, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", this, *this, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindOrCreateFrame(this, a2);
    if (Frame)
    {
      Frame[4] |= 0x1000000000uLL;
      *(Frame + 22) = a3;
      AVE_Mutex_Unlock(*(this + 4));
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v18 = AVE_Log_CheckConsole(0xD3u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetBitrate", 816, "pPFData != __null", this, *this, a2);
          v21 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v28, "AVE_SEI");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
        }
      }

      AVE_Mutex_Unlock(*(this + 4));
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v22 = AVE_Log_CheckConsole(0xD3u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v12);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v23, 211, v24, "AVE_SEI", "SetBitrate", this, *this, a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v23, 211, v24);
    }
  }

  return v10;
}

uint64_t AVE_SEI::SetLookAheadInfo(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetLookAheadInfo", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
    }
  }

  v10 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x20000000000uLL;
    *(Frame + 23) = a3;
    AVE_Mutex_Unlock(*(this + 4));
    if (v10)
    {
      v12 = 4;
    }

    else
    {
      v12 = 7;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetLookAheadInfo", 850, "pPFData != __null", this, *this, a2);
        v16 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v23, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI");
      }
    }

    AVE_Mutex_Unlock(*(this + 4));
    v12 = 4;
    v10 = 4294966296;
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(v12);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v18, 211, v19, "AVE_SEI", "SetLookAheadInfo", this, *this, a2, a3, v10);
      v20 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v20, 211, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v18, 211, v19);
    }
  }

  return v10;
}

uint64_t AVE_SEI::SetPTS(AVE_SEI *this, uint64_t a2, int a3, uint64_t a4)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v8 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetPTS", this, *this, a2, a3, a4);
      v11 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld", v11, 211, v28, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld", CurrTime, 211, LevelStr, "AVE_SEI");
    }
  }

  if (a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v15 = AVE_Log_CheckConsole(0xD3u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | timescale invalid, skipping\n", v16, 211, v17, "AVE_SEI", "SetPTS", 883, "iTimescale > 0");
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | timescale invalid, skipping", v16);
    }

LABEL_17:
    v12 = 0;
    v14 = 7;
    goto LABEL_20;
  }

  v12 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x2000000000uLL;
    *(Frame + 26) = a3;
    Frame[12] = a4;
    AVE_Mutex_Unlock(*(this + 4));
    if (v12)
    {
      v14 = 4;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v18 = AVE_Log_CheckConsole(0xD3u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetPTS", 890, "pPFData != __null", this, *this, a2);
      v21 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v29, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
    }
  }

  AVE_Mutex_Unlock(*(this + 4));
  v14 = 4;
  v12 = 4294966296;
LABEL_20:
  if (AVE_Log_CheckLevel(0xD3u, v14))
  {
    v22 = AVE_Log_CheckConsole(0xD3u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v14);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d\n", v23, 211, v24, "AVE_SEI", "SetPTS", this, *this, a2, a3, a4, v12);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v14);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d", v25, 211, v26, "AVE_SEI", "SetPTS");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d", v23, 211, v24, "AVE_SEI", "SetPTS");
    }
  }

  return v12;
}

uint64_t AVE_SEI::SetMasteringDisplayColorVolume(AVE_SEI *this, uint64_t a2, const __CFData *a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetMasteringDisplayColorVolume", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
    }
  }

  if (!a3)
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping", v15, 211, v16);
LABEL_23:
        v13 = 4;
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetMasteringDisplayColorVolume", 923, "pColorVolumeData != __null", this, *this);
      v17 = AVE_GetCurrTime();
      v13 = 4;
      v33 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping", v17, 211, v33);
    }

LABEL_24:
    v11 = 4294966295;
    goto LABEL_25;
  }

  Length = CFDataGetLength(a3);
  if (Length != 24)
  {
    v18 = Length;
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v19 = AVE_Log_CheckConsole(0xD3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld\n", v20, 211, v21, "AVE_SEI", "SetMasteringDisplayColorVolume", 930, "dataLength == 24", this, *this, v18);
        v22 = AVE_GetCurrTime();
        v13 = 4;
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld", v22, 211, v34, "AVE_SEI");
        goto LABEL_24;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld", v20, 211, v21, "AVE_SEI");
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v11 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x100uLL;
    v37.location = 0;
    v37.length = 24;
    CFDataGetBytes(a3, v37, Frame + 120);
    AVE_Mutex_Unlock(*(this + 4));
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xD3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v24, 211, v25, "AVE_SEI", "SetMasteringDisplayColorVolume", 937, "pPFData != __null", this, *this, a2);
        v26 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v26, 211, v35, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v24, 211, v25, "AVE_SEI");
      }
    }

    AVE_Mutex_Unlock(*(this + 4));
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_25:
  if (AVE_Log_CheckLevel(0xD3u, v13))
  {
    v27 = AVE_Log_CheckConsole(0xD3u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v13);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v28, 211, v29, "AVE_SEI", "SetMasteringDisplayColorVolume", this, *this, a2, a3, v11);
      v30 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v30, 211, v36, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v28, 211, v29, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t AVE_SEI::SetContentLightLevelInfo(AVE_SEI *this, uint64_t a2, const __CFData *a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetContentLightLevelInfo", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
    }
  }

  if (!a3)
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping", v15, 211, v16);
LABEL_23:
        v13 = 4;
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetContentLightLevelInfo", 971, "pLightLevelData != __null", this, *this);
      v17 = AVE_GetCurrTime();
      v13 = 4;
      v33 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping", v17, 211, v33);
    }

LABEL_24:
    v11 = 4294966295;
    goto LABEL_25;
  }

  Length = CFDataGetLength(a3);
  if (Length != 4)
  {
    v18 = Length;
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v19 = AVE_Log_CheckConsole(0xD3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld\n", v20, 211, v21, "AVE_SEI", "SetContentLightLevelInfo", 977, "dataLength == 4", this, *this, v18);
        v22 = AVE_GetCurrTime();
        v13 = 4;
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld", v22, 211, v34, "AVE_SEI");
        goto LABEL_24;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld", v20, 211, v21, "AVE_SEI");
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v11 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x200uLL;
    v37.location = 0;
    v37.length = 4;
    CFDataGetBytes(a3, v37, Frame + 144);
    AVE_Mutex_Unlock(*(this + 4));
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xD3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v24, 211, v25, "AVE_SEI", "SetContentLightLevelInfo", 984, "pPFData != __null", this, *this, a2);
        v26 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v26, 211, v35, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v24, 211, v25, "AVE_SEI");
      }
    }

    AVE_Mutex_Unlock(*(this + 4));
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_25:
  if (AVE_Log_CheckLevel(0xD3u, v13))
  {
    v27 = AVE_Log_CheckConsole(0xD3u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v13);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v28, 211, v29, "AVE_SEI", "SetContentLightLevelInfo", this, *this, a2, a3, v11);
      v30 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v30, 211, v36, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v28, 211, v29, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t AVE_SEI::SetMCTFTag(AVE_SEI *this, uint64_t a2, double a3, double a4, double a5, double a6, double a7, int a8, int a9, int a10)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v20 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetMCTFTag", this, *this, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v23 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d", v23, 211, v37, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d", CurrTime, 211, LevelStr, "AVE_SEI");
    }
  }

  AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    v25 = 0;
    *(Frame + 4) |= 0x4000000000uLL;
    Frame[20] = a3;
    Frame[21] = a4;
    Frame[22] = a5;
    Frame[23] = a6;
    Frame[24] = a7;
    *(Frame + 50) = a8;
    *(Frame + 51) = a9;
    *(Frame + 52) = a10;
    v26 = 7;
    goto LABEL_12;
  }

  v26 = 4;
  if (!AVE_Log_CheckLevel(0xD3u, 4))
  {
    goto LABEL_10;
  }

  v27 = AVE_Log_CheckConsole(0xD3u);
  v28 = AVE_GetCurrTime();
  v29 = AVE_Log_GetLevelStr(4);
  if (v27)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", this, *this, a2);
    v30 = AVE_GetCurrTime();
    v26 = 4;
    v31 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v30, 211, v31, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", this, *this, a2);
LABEL_10:
    v25 = 4294966296;
    goto LABEL_12;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", this, *this, a2);
  v25 = 4294966296;
  v26 = 4;
LABEL_12:
  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, v26))
  {
    v32 = AVE_Log_CheckConsole(0xD3u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(v26);
    if (v32)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d\n", v33, 211, v34, "AVE_SEI", "SetMCTFTag", this, *this, a2, a3, a4, a5, a6, a7, a8, a9, a10, v25);
      v35 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(v26);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d", v35, 211, v38, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d", v33, 211, v34, "AVE_SEI");
    }
  }

  return v25;
}

uint64_t AVE_SEI::SetSessionID(AVE_SEI *this, uint64_t a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetSessionID", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu", v9, 211, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu", CurrTime, 211, LevelStr);
    }
  }

  AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    v11 = 0;
    Frame[4] |= 0x8000000000uLL;
    Frame[5] = a3;
    v12 = 7;
    goto LABEL_12;
  }

  v12 = 4;
  if (!AVE_Log_CheckLevel(0xD3u, 4))
  {
    goto LABEL_10;
  }

  v13 = AVE_Log_CheckConsole(0xD3u);
  v14 = AVE_GetCurrTime();
  v15 = AVE_Log_GetLevelStr(4);
  if (v13)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", this, *this, a2);
    v16 = AVE_GetCurrTime();
    v12 = 4;
    v17 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", this, *this, a2);
LABEL_10:
    v11 = 4294966296;
    goto LABEL_12;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", this, *this, a2);
  v11 = 4294966296;
  v12 = 4;
LABEL_12:
  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v18 = AVE_Log_CheckConsole(0xD3u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(v12);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d\n", v19, 211, v20, "AVE_SEI", "SetSessionID", this, *this, a2, a3, v11);
      v21 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d", v21, 211, v24, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d", v19, 211, v20, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t AVE_SEI::SetDriverVersion(AVE_SEI *this, uint64_t a2)
{
  v31 = 0;
  v30 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %llu\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetDriverVersion", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu", CurrTime, 211);
  }

  v7 = sscanf("905.5.3", "%d.%d.%d", &v31 + 4, &v31, &v30);
  if (v7 == 3)
  {
    AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindOrCreateFrame(this, a2);
    if (Frame)
    {
      Frame[4] |= 0x10000000000uLL;
      v9 = v31;
      *(Frame + 12) = HIDWORD(v31);
      *(Frame + 13) = v9;
      *(Frame + 14) = v30;
      AVE_Mutex_Unlock(*(this + 4));
      v10 = 0;
      v11 = 7;
      goto LABEL_20;
    }

    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v19 = AVE_Log_CheckConsole(0xD3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetDriverVersion", 1113, "pPFData != __null", this, *this, a2);
        v22 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v22, 211, v28, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }
    }

    AVE_Mutex_Unlock(*(this + 4));
    goto LABEL_18;
  }

  v12 = v7;
  v11 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v13 = AVE_Log_CheckConsole(0xD3u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    v16 = *this;
    if (!v13)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d", v14, 211, v15, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", this, v16, "905.5.3", v12, HIDWORD(v31), v31, v30);
LABEL_18:
      v11 = 4;
      goto LABEL_19;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d\n", v14, 211, v15, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", this, v16, "905.5.3", v12, HIDWORD(v31), v31, v30);
    v17 = AVE_GetCurrTime();
    v11 = 4;
    v18 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d", v17, 211, v18, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", this, *this, "905.5.3", v12, HIDWORD(v31), v31, v30);
  }

LABEL_19:
  v10 = 4294966296;
LABEL_20:
  if (AVE_Log_CheckLevel(0xD3u, v11))
  {
    v23 = AVE_Log_CheckConsole(0xD3u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(v11);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %llu %d\n", v24, 211, v25, "AVE_SEI", "SetDriverVersion", this, *this, a2, v10);
      v26 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %d", v26, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %d", v24, 211, v25);
    }
  }

  return v10;
}

uint64_t AVE_SEI::SetActiveParameterSets(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetActiveParameterSets", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", v9, 211, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", CurrTime, 211, LevelStr);
    }
  }

  AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    v11 = 0;
    Frame[4] |= 4uLL;
    *(Frame + 57) = a3;
    v12 = 7;
    goto LABEL_12;
  }

  v12 = 4;
  if (!AVE_Log_CheckLevel(0xD3u, 4))
  {
    goto LABEL_10;
  }

  v13 = AVE_Log_CheckConsole(0xD3u);
  v14 = AVE_GetCurrTime();
  v15 = AVE_Log_GetLevelStr(4);
  if (v13)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", this, *this, a2);
    v16 = AVE_GetCurrTime();
    v12 = 4;
    v17 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", this, *this, a2);
LABEL_10:
    v11 = 4294966296;
    goto LABEL_12;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", this, *this, a2);
  v11 = 4294966296;
  v12 = 4;
LABEL_12:
  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v18 = AVE_Log_CheckConsole(0xD3u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(v12);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v19, 211, v20, "AVE_SEI", "SetActiveParameterSets", this, *this, a2, a3, v11);
      v21 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v21, 211, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v19, 211, v20);
    }
  }

  return v11;
}

uint64_t AVE_SEI::SetPictureTiming(void **a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6);
      v15 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d", v15, 211, v34, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d", CurrTime, 211, LevelStr, "AVE_SEI");
    }
  }

  if (a3 >= 4)
  {
    v18 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v19 = AVE_Log_CheckConsole(0xD3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d\n", v20, 211, v21, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
        v22 = AVE_GetCurrTime();
        v18 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d", v22, 211, v23, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d", v20, 211, v21, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
        v18 = 4;
      }
    }

    v17 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(a1[4]);
    Frame = AVE_SEI::FindOrCreateFrame(a1, a2);
    if (Frame)
    {
      Frame[4] |= 0xAuLL;
      *(Frame + 58) = a4;
      *(Frame + 59) = a5;
      *(Frame + 56) = a3;
      *(Frame + 60) = a6;
      AVE_Mutex_Unlock(a1[4]);
      v17 = 0;
      v18 = 7;
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v24 = AVE_Log_CheckConsole(0xD3u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v25, 211, v26, "AVE_SEI", "SetPictureTiming", 1192, "pPFData != __null", a1, *a1, a2);
          v27 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v27, 211, v35, "AVE_SEI");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v25, 211, v26, "AVE_SEI");
        }
      }

      AVE_Mutex_Unlock(a1[4]);
      v18 = 4;
      v17 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v18))
  {
    v28 = AVE_Log_CheckConsole(0xD3u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(v18);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d\n", v29, 211, v30, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6, v17);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v18);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d", v31, 211, v32, "AVE_SEI", "SetPictureTiming");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d", v29, 211, v30, "AVE_SEI", "SetPictureTiming");
    }
  }

  return v17;
}

uint64_t AVE_SEI::SetBufferingPeriod(AVE_SEI *this, uint64_t a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetBufferingPeriod", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", v9, 211, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", CurrTime, 211, LevelStr);
    }
  }

  if (a3 >= 0x10)
  {
    v12 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u\n", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", this, *this, a3);
        v16 = AVE_GetCurrTime();
        v12 = 4;
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u", v16, 211, v17, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", this, *this, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", this, *this, a3);
        v12 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindOrCreateFrame(this, a2);
    if (Frame)
    {
      Frame[4] |= 0x10uLL;
      *(Frame + 57) = a3;
      AVE_Mutex_Unlock(*(this + 4));
      v11 = 0;
      v12 = 7;
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v18 = AVE_Log_CheckConsole(0xD3u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetBufferingPeriod", 1236, "pPFData != __null", this, *this, a2);
          v21 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v28, "AVE_SEI");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
        }
      }

      AVE_Mutex_Unlock(*(this + 4));
      v12 = 4;
      v11 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v22 = AVE_Log_CheckConsole(0xD3u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v12);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v23, 211, v24, "AVE_SEI", "SetBufferingPeriod", this, *this, a2, a3, v11);
      v25 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v25, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v23, 211, v24);
    }
  }

  return v11;
}

uint64_t AVE_SEI::CreateFrame(AVE_BlkPool **a1, uint64_t a2, unint64_t *a3)
{
  v33 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
    }
  }

  v10 = AVE_BlkPool::Alloc(a1[5], &v33, 0);
  if (v10)
  {
    if (v10 == -1007)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v11 = AVE_Log_CheckConsole(0xD3u);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?\n", v12, 211, v13, "AVE_SEI", "CreateFrame", 1351, a1, *a1);
          v12 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?", v12, 211);
      }

      AVE_SEI::PrintAllPFData(a1, 5);
    }

    else if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v19 = AVE_Log_CheckConsole(0xD3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d\n", v20, 211, v21, "AVE_SEI", "CreateFrame", 1360, "ret == 0", a1, *a1, a2, v10);
        v22 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d", v22, 211, v31, "AVE_SEI", "CreateFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d", v20, 211, v21, "AVE_SEI", "CreateFrame");
      }
    }
  }

  else
  {
    v14 = v33;
    *v33 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
    *(v14 + 128) = 0u;
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
    *(v14 + 176) = 0u;
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
    *(v14 + 224) = 0u;
    *(v14 + 240) = 0;
    AVE_DLList_PushBack((a1 + 6), v14);
    *(v14 + 24) = a2;
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v15 = AVE_Log_CheckConsole(0xD3u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p\n", v16, 211, v17, "AVE_SEI", "CreateFrame", 1369, a1, *a1, a2, v14);
        v18 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p", v18, 211, v30, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p", v16, 211, v17, "AVE_SEI");
      }
    }

    if (a3)
    {
      *a3 = v14;
    }
  }

  if (v10)
  {
    v23 = 4;
  }

  else
  {
    v23 = 7;
  }

  if (AVE_Log_CheckLevel(0xD3u, v23))
  {
    v24 = AVE_Log_CheckConsole(0xD3u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v23);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v25, 211, v26, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v23);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v27, 211, v32, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v25, 211, v26, "AVE_SEI");
    }
  }

  return v10;
}

uint64_t AVE_SEI::PrintAllPFData(AVE_SEI *this, uint64_t a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  memset(v10, 0, sizeof(v10));
  AVE_SNPrintf(v10, 32, "%p %llu", this, *this);
  for (i = AVE_DLList_Begin(this + 48, v4); ; i = AVE_DLList_Next(v7, v8))
  {
    v7 = i;
    if (i == AVE_DLList_End(this + 48, v6))
    {
      break;
    }

    AVE_SEI_PrintPFData(v7, v2, v10);
  }

  return 0;
}

void *AVE_SEI::EstimateSEISize(AVE_SEI *this, uint64_t a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateSEISize", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx", v9, 211, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx", CurrTime, 211, LevelStr);
    }
  }

  AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindFrame(this, a2);
  v11 = Frame;
  if (Frame)
  {
    if ((*(this + 1) & a3 & Frame[4]) != 0)
    {
      v12 = AVE_SEI::EstimateUnregisteredSEIMessageSizes(this, Frame, a3);
      if (v12 < 1)
      {
        v17 = 0;
        v18 = 1;
      }

      else
      {
        v13 = v12 - 509;
        if (v12 < 0x1FD)
        {
          v13 = 0;
        }

        v14 = (v13 + 254) / 0xFFu + 2;
        if (v12 >= 0xFF)
        {
          v15 = v14;
        }

        else
        {
          v15 = 1;
        }

        v16 = v15 + v12;
        v17 = v16 + 16;
        v18 = v16 + 24;
      }

      v19 = AVE_SEI::EstimateRegisteredSEINALUSizes(this, v11, a3);
      v11 = v18 + AVE_SEI::EstimateISPMetadataSEITagSize(this, v11) + (v19 & ~(v19 >> 31)) + (v19 & ~(v19 >> 31)) + v17 + (((v19 & ~(v19 >> 31)) + v17) >> 1);
    }

    else
    {
      v11 = 0;
    }
  }

  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v20 = AVE_Log_CheckConsole(0xD3u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d\n", v21, 211, v22, "AVE_SEI", "EstimateSEISize", this, *this, a2, a3, v11);
      v23 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d", v23, 211, v26, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d", v21, 211, v22, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t AVE_SEI::EstimateUnregisteredSEIMessageSizes(uint64_t *a1, void *a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v9 = *a1;
    if (v6)
    {
      if (a2)
      {
        v10 = a2[3];
      }

      else
      {
        v10 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, v9, a2, v10, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *a1;
      if (a2)
      {
        v11 = a2[3];
      }

      else
      {
        v11 = -1;
      }
    }

    else if (a2)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, v9, a2, v11, a3);
  }

  v12 = a1[1] & a2[4] & a3;
  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v13 = AVE_Log_CheckConsole(0xD3u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(8);
    if (v13)
    {
      printf("%lld %d AVE %s: Active bits for frame %lld: 0x%016llx\n", v14, 211, v15, a2[3], v12);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: Active bits for frame %lld: 0x%016llx", v14, 211, v15, a2[3], v12);
  }

  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v16 = AVE_Log_CheckConsole(0xD3u);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(8);
    v19 = a2[4];
    if (v16)
    {
      printf("%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx\n", v17, 211, v18, a1[1], v19);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx", v20, 211, v21, a1[1], a2[4]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx", v17, 211, v18, a1[1], v19);
    }
  }

  if (v12)
  {
    if ((v12 & 0x400000000) != 0)
    {
      v22 = 5;
    }

    else
    {
      v22 = 0;
    }

    if ((v12 & 0x800000000) != 0)
    {
      v22 += 5;
    }

    if ((v12 & 0x1000000000) != 0)
    {
      v22 += 5;
    }

    if ((v12 & 0x20000000000) != 0)
    {
      v22 += 5;
    }

    if ((v12 & 0x100000000) != 0)
    {
      v22 += 9;
    }

    if ((v12 & 0x200000000) != 0)
    {
      v22 += 9;
    }

    if ((v12 & 0x2000000000) != 0)
    {
      v22 += 13;
    }

    if ((v12 & 0x4000000000) != 0)
    {
      v22 += 15;
    }

    if ((v12 & 0x8000000000) != 0)
    {
      v22 += 9;
    }

    if ((v12 & 0x10000000000) != 0)
    {
      v23 = v22 + 5;
    }

    else
    {
      v23 = v22;
    }
  }

  else
  {
    v23 = 0;
  }

  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v24 = AVE_Log_CheckConsole(0xD3u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v25, 211, v26, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, *a1, a2, a2[3], a3, v23);
      v27 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v27, 211, v29, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v25, 211, v26, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes");
    }
  }

  return v23;
}

uint64_t AVE_SEI::EstimateRegisteredSEINALUSizes(uint64_t *a1, void *a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v9 = *a1;
    if (v6)
    {
      if (a2)
      {
        v10 = a2[3];
      }

      else
      {
        v10 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, v9, a2, v10, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *a1;
      if (a2)
      {
        v11 = a2[3];
      }

      else
      {
        v11 = -1;
      }
    }

    else if (a2)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, v9, a2, v11, a3);
  }

  v12 = a1[1] & a2[4] & a3;
  if (v12)
  {
    if ((v12 & 0x20) != 0)
    {
      v13 = 34;
    }

    else
    {
      v13 = 0;
    }

    if ((v12 & 2) != 0)
    {
      v13 += 56;
    }

    v14 = v13 + ((v12 >> 2) & 0x10);
    if ((v12 & 0x80) != 0)
    {
      v14 += 33;
    }

    v15 = v14 + ((v12 >> 3) & 0x20);
    if ((v12 & 0x200) != 0)
    {
      v16 = v15 + 12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0;
  }

  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, *a1, a2, a2[3], a3, v16);
      v20 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v20, 211, v22, "AVE_SEI", "EstimateRegisteredSEINALUSizes");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes");
    }
  }

  return v16;
}

uint64_t AVE_SEI::EstimateISPMetadataSEITagSize(uint64_t *a1, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v7 = *a1;
    if (v4)
    {
      if (a2)
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, v7, a2, v8);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v7 = *a1;
      if (a2)
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = -1;
      }
    }

    else if (a2)
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, v7, a2, v9);
  }

  if (a1[1] & *(a2 + 32))
  {
    Length = CFDataGetLength(*(a2 + 216));
    v11 = Length;
    v12 = Length - 509;
    if (Length < 0x1FD)
    {
      v12 = 0;
    }

    v13 = (v12 + 254) / 0xFFu + 2;
    if (Length >= 255)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = (Length + Length / 2 + v14 + 513);
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v16 = AVE_Log_CheckConsole(0xD3u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(8);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d\n", v17, 211, v18, "AVE_SEI", "EstimateISPMetadataSEITagSize", 1687, a1, *a1, v11, v15);
        v19 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d", v19, 211, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d", v17, 211, v18);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v20 = AVE_Log_CheckConsole(0xD3u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d\n", v21, 211, v22, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, *a1, a2, *(a2 + 24), v15);
      v23 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d", v23, 211, v26, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d", v21, 211, v22, "AVE_SEI");
    }
  }

  return v15;
}

void AVE_SEI_PrintPFData(uint64_t a1, int a2, const char *a3)
{
  v4 = a2;
  v146 = *MEMORY[0x29EDCA608];
  v6 = a2;
  if (AVE_Log_CheckLevel(0xD3u, a2))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v7 && (-v4 & 0x20) == 0)
      {
        printf("%s Frame #%lld Bits 0x%016llx\n", a3, *(a1 + 24), *(a1 + 32));
      }

      syslog(3, "%s Frame #%lld Bits 0x%016llx", a3, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v8 = v4 & 0x20;
      v9 = v7 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v6);
      v12 = *(a1 + 32);
      if ((v9 | (v8 >> 5)))
      {
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", CurrTime, 211, LevelStr, a3, *(a1 + 24), v12);
      }

      else
      {
        printf("%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx\n", CurrTime, 211, LevelStr, a3, *(a1 + 24), v12);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(v6);
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", v13, 211, v14, a3, *(a1 + 24), *(a1 + 32));
      }

      v4 = a2;
    }
  }

  v142 = a3;
  if (*(a1 + 32))
  {
    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v15 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if (v15 && (-v4 & 0x20) == 0)
        {
          printf("%s ISP Metadata: %p\n", a3, *(a1 + 216));
        }

        syslog(3, "%s ISP Metadata: %p", a3, *(a1 + 216));
      }

      else
      {
        v16 = v4 & 0x20;
        v17 = v15 ^ 1;
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(v6);
        v20 = *(a1 + 216);
        if ((v17 | (v16 >> 5)))
        {
          syslog(3, "%lld %d AVE %s: %s ISP Metadata: %p", v18, 211, v19, a3, v20);
        }

        else
        {
          printf("%lld %d AVE %s: %s ISP Metadata: %p\n", v18, 211, v19, a3, v20);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(v6);
          syslog(3, "%lld %d AVE %s: %s ISP Metadata: %p", v21, 211, v22, a3, *(a1 + 216));
        }

        v4 = a2;
      }
    }

    v23 = *(a1 + 216);
    if (v23)
    {
      BytePtr = CFDataGetBytePtr(v23);
      if (BytePtr)
      {
        v25 = BytePtr;
        v145 = 0;
        memset(v144, 0, sizeof(v144));
        Length = CFDataGetLength(*(a1 + 216));
        v27 = Length;
        if (Length >= 1)
        {
          v28 = 0;
          v29 = Length & 0x7FFFFFFF;
          v140 = Length;
          do
          {
            v30 = 0;
            v31 = v28;
            do
            {
              if (v31 >= v29)
              {
                break;
              }

              AVE_SNPrintf(v144 + v30, 4, "%02x ", v25[v31]);
              v30 += 3;
              ++v31;
            }

            while (v30 != 96);
            if (AVE_Log_CheckLevel(0xD3u, v6))
            {
              v32 = AVE_Log_CheckConsole(0xD3u);
              if (a2 < 0)
              {
                if ((-a2 & 0x20) != 0)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v32;
                }

                if ((v28 | 0x1F) >= v27)
                {
                  v38 = v27;
                }

                else
                {
                  v38 = v28 | 0x1F;
                }

                if (v37 == 1)
                {
                  printf("%s ISPData[%d-%d] %s\n", a3, v28, v38, v144);
                }

                syslog(3, "%s ISPData[%d-%d] %s", a3, v28, v38, v144);
              }

              else
              {
                v33 = v27;
                v34 = v32 ^ 1;
                v35 = AVE_GetCurrTime();
                v36 = AVE_Log_GetLevelStr(v6);
                if ((v28 | 0x1F) < v27)
                {
                  v33 = v28 | 0x1F;
                }

                if ((v34 | ((a2 & 0x20) >> 5)))
                {
                  a3 = v142;
                }

                else
                {
                  a3 = v142;
                  printf("%lld %d AVE %s: %s ISPData[%d-%d] %s\n", v35, 211, v36, v142, v28, v33, v144);
                  v35 = AVE_GetCurrTime();
                  v36 = AVE_Log_GetLevelStr(v6);
                }

                syslog(3, "%lld %d AVE %s: %s ISPData[%d-%d] %s", v35, 211, v36, v142, v28, v33, v144);
                v27 = v140;
              }
            }

            v28 += 32;
          }

          while (v28 < v27);
        }

        v4 = a2;
      }
    }
  }

  if ((*(a1 + 32) & 4) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v39 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v39 && (-v4 & 0x20) == 0)
      {
        printf("%s Active Parameter Sets %d\n", a3, *(a1 + 228));
      }

      syslog(3, "%s Active Parameter Sets %d");
    }

    else
    {
      v40 = v39 ^ 1;
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(v6);
      if (((v40 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Active Parameter Sets %d\n", v41, 211, v42, a3, *(a1 + 228));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Active Parameter Sets %d");
    }
  }

  if ((*(a1 + 32) & 8) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v43 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v43 && (-v4 & 0x20) == 0)
      {
        printf("%s Picture Timing %d %d %d %d %d\n", a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
      }

      syslog(3, "%s Picture Timing %d %d %d %d %d");
    }

    else
    {
      v44 = v43 ^ 1;
      v45 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(v6);
      if (((v44 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Picture Timing %d %d %d %d %d\n", v45, 211, v46, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
        v45 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Picture Timing %d %d %d %d %d", v45, 211, v46, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
    }
  }

  if ((*(a1 + 32) & 0x10) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v47 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v47 && (-v4 & 0x20) == 0)
      {
        printf("%s Buffering Period %d\n", a3, *(a1 + 228));
      }

      syslog(3, "%s Buffering Period %d");
    }

    else
    {
      v48 = v47 ^ 1;
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(v6);
      if (((v48 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Buffering Period %d\n", v49, 211, v50, a3, *(a1 + 228));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Buffering Period %d");
    }
  }

  if ((*(a1 + 32) & 0x20) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v51 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v51 && (-v4 & 0x20) == 0)
      {
        printf("%s Content Color Volume bit is set\n", a3);
      }

      syslog(3, "%s Content Color Volume bit is set");
    }

    else
    {
      v52 = v51 ^ 1;
      v53 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(v6);
      if (((v52 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Color Volume bit is set\n", v53, 211, v54, a3);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Color Volume bit is set");
    }
  }

  if ((*(a1 + 32) & 0x40) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v55 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v55 && (-v4 & 0x20) == 0)
      {
        printf("%s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
      }

      syslog(3, "%s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", a3, *(a1 + 148));
    }

    else
    {
      v56 = v55 ^ 1;
      v57 = AVE_GetCurrTime();
      v58 = AVE_Log_GetLevelStr(v6);
      if (((v56 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", v57, 211, v58, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
        v57 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", v57, 211, v58, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
    }
  }

  if ((*(a1 + 32) & 0x80) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v59 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v59 && (-v4 & 0x20) == 0)
      {
        printf("%s Lux Level %d\n", a3, *(a1 + 60));
      }

      syslog(3, "%s Lux Level %d");
    }

    else
    {
      v60 = v59 ^ 1;
      v61 = AVE_GetCurrTime();
      v62 = AVE_Log_GetLevelStr(v6);
      if (((v60 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Lux Level %d\n", v61, 211, v62, a3, *(a1 + 60));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Lux Level %d");
    }
  }

  if ((*(a1 + 36) & 1) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v63 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v63 && (-v4 & 0x20) == 0)
      {
        printf("%s Exposure Time %f\n", a3, *(a1 + 64));
      }

      syslog(3, "%s Exposure Time %f");
    }

    else
    {
      v64 = v63 ^ 1;
      v65 = AVE_GetCurrTime();
      v66 = AVE_Log_GetLevelStr(v6);
      if (((v64 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Exposure Time %f\n", v65, 211, v66, a3, *(a1 + 64));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Exposure Time %f");
    }
  }

  if ((*(a1 + 36) & 2) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v67 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v67 && (-v4 & 0x20) == 0)
      {
        printf("%s SNR %f\n", a3, *(a1 + 72));
      }

      syslog(3, "%s SNR %f");
    }

    else
    {
      v68 = v67 ^ 1;
      v69 = AVE_GetCurrTime();
      v70 = AVE_Log_GetLevelStr(v6);
      if (((v68 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s SNR %f\n", v69, 211, v70, a3, *(a1 + 72));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s SNR %f");
    }
  }

  if ((*(a1 + 36) & 4) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v71 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v71 && (-v4 & 0x20) == 0)
      {
        printf("%s RC %d\n", a3, *(a1 + 80));
      }

      syslog(3, "%s RC %d");
    }

    else
    {
      v72 = v71 ^ 1;
      v73 = AVE_GetCurrTime();
      v74 = AVE_Log_GetLevelStr(v6);
      if (((v72 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s RC %d\n", v73, 211, v74, a3, *(a1 + 80));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s RC %d");
    }
  }

  if ((*(a1 + 36) & 8) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v75 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v75 && (-v4 & 0x20) == 0)
      {
        printf("%s Throughput Mode %d\n", a3, *(a1 + 84));
      }

      syslog(3, "%s Throughput Mode %d");
    }

    else
    {
      v76 = v75 ^ 1;
      v77 = AVE_GetCurrTime();
      v78 = AVE_Log_GetLevelStr(v6);
      if (((v76 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Throughput Mode %d\n", v77, 211, v78, a3, *(a1 + 84));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Throughput Mode %d");
    }
  }

  if ((*(a1 + 36) & 0x10) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v79 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v79 && (-v4 & 0x20) == 0)
      {
        printf("%s Bitrate %d\n", a3, *(a1 + 88));
      }

      syslog(3, "%s Bitrate %d");
    }

    else
    {
      v80 = v79 ^ 1;
      v81 = AVE_GetCurrTime();
      v82 = AVE_Log_GetLevelStr(v6);
      if (((v80 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Bitrate %d\n", v81, 211, v82, a3, *(a1 + 88));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Bitrate %d");
    }
  }

  if ((*(a1 + 36) & 0x20) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v83 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v83 && (-v4 & 0x20) == 0)
      {
        printf("%s Timecode %d %lld\n", a3, *(a1 + 104), *(a1 + 96));
      }

      syslog(3, "%s Timecode %d %lld");
    }

    else
    {
      v84 = v83 ^ 1;
      v85 = AVE_GetCurrTime();
      v86 = AVE_Log_GetLevelStr(v6);
      if (((v84 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Timecode %d %lld\n", v85, 211, v86, a3, *(a1 + 104), *(a1 + 96));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Timecode %d %lld");
    }
  }

  if (*(a1 + 33))
  {
    v87 = 0;
    *v141 = -v4;
    v88 = (a1 + 123);
    do
    {
      if (AVE_Log_CheckLevel(0xD3u, v6))
      {
        v89 = AVE_Log_CheckConsole(0xD3u);
        if (v4 < 0)
        {
          if ((v141[0] & 0x20) != 0)
          {
            v99 = 0;
          }

          else
          {
            v99 = v89;
          }

          v100 = *(v88 - 3);
          v101 = *(v88 - 2);
          v102 = *(v88 - 1);
          v103 = *v88;
          if (v99 == 1)
          {
            printf("%s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, v87, v100, v101, *(v88 - 1), v103);
            v100 = *(v88 - 3);
            v101 = *(v88 - 2);
            v102 = *(v88 - 1);
            v103 = *v88;
          }

          syslog(3, "%s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", a3, v87, v100, v101, v102, v103);
        }

        else
        {
          v90 = v4 & 0x20;
          v91 = v89 ^ 1;
          v92 = AVE_GetCurrTime();
          v93 = AVE_Log_GetLevelStr(v6);
          v94 = *(v88 - 3);
          v95 = *(v88 - 2);
          v96 = *v88;
          if ((v91 | (v90 >> 5)))
          {
            a3 = v142;
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v92, 211, v93, v142, v87, v94, v95, *(v88 - 1), v96);
          }

          else
          {
            a3 = v142;
            printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x\n", v92, 211, v93, v142, v87, v94, v95, *(v88 - 1), v96);
            v97 = AVE_GetCurrTime();
            v98 = AVE_Log_GetLevelStr(v6);
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v97, 211, v98, v142, v87, *(v88 - 3), *(v88 - 2), *(v88 - 1), *v88);
          }

          v4 = a2;
        }
      }

      ++v87;
      v88 += 4;
    }

    while (v87 != 3);
    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v104 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if ((v141[0] & 0x20) != 0)
        {
          v108 = 0;
        }

        else
        {
          v108 = v104;
        }

        if (v108 == 1)
        {
          printf("%s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
        }

        syslog(3, "%s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v105 = v104 ^ 1;
        v106 = AVE_GetCurrTime();
        v107 = AVE_Log_GetLevelStr(v6);
        if (((v105 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x\n", v106, 211, v107, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
          v106 = AVE_GetCurrTime();
          v107 = AVE_Log_GetLevelStr(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x", v106, 211, v107, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v109 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if ((v141[0] & 0x20) != 0)
        {
          v113 = 0;
        }

        else
        {
          v113 = v109;
        }

        if (v113 == 1)
        {
          printf("%s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
        }

        syslog(3, "%s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v110 = v109 ^ 1;
        v111 = AVE_GetCurrTime();
        v112 = AVE_Log_GetLevelStr(v6);
        if (((v110 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v111, 211, v112, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
          v111 = AVE_GetCurrTime();
          v112 = AVE_Log_GetLevelStr(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v111, 211, v112, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v114 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if ((v141[0] & 0x20) != 0)
        {
          v118 = 0;
        }

        else
        {
          v118 = v114;
        }

        if (v118 == 1)
        {
          printf("%s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
        }

        syslog(3, "%s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v115 = v114 ^ 1;
        v116 = AVE_GetCurrTime();
        v117 = AVE_Log_GetLevelStr(v6);
        if (((v115 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v116, 211, v117, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
          v116 = AVE_GetCurrTime();
          v117 = AVE_Log_GetLevelStr(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v116, 211, v117, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
      }
    }
  }

  if ((*(a1 + 33) & 2) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v119 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v119 && (-v4 & 0x20) == 0)
      {
        printf("%s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
      }

      syslog(3, "%s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x");
    }

    else
    {
      v120 = v119 ^ 1;
      v121 = AVE_GetCurrTime();
      v122 = AVE_Log_GetLevelStr(v6);
      if (((v120 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", v121, 211, v122, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
        v121 = AVE_GetCurrTime();
        v122 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x", v121, 211, v122, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
    }
  }

  if ((*(a1 + 36) & 0x40) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v123 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v123 && (-v4 & 0x20) == 0)
      {
        printf("%s MCTF %f %f %f %f %f %d %d %d\n", a3, *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 204), *(a1 + 208));
      }

      syslog(3, "%s MCTF %f %f %f %f %f %d %d %d");
    }

    else
    {
      v124 = v123 ^ 1;
      v125 = AVE_GetCurrTime();
      v126 = AVE_Log_GetLevelStr(v6);
      if (((v124 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s MCTF %f %f %f %f %f %d %d %d\n", v125, 211, v126, a3, *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 204), *(a1 + 208));
        v125 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s MCTF %f %f %f %f %f %d %d %d", v125);
    }
  }

  if ((*(a1 + 36) & 0x80) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v127 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v127 && (-v4 & 0x20) == 0)
      {
        printf("%s Session ID %llu\n", a3, *(a1 + 40));
      }

      syslog(3, "%s Session ID %llu");
    }

    else
    {
      v128 = v127 ^ 1;
      v129 = AVE_GetCurrTime();
      v130 = AVE_Log_GetLevelStr(v6);
      if (((v128 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Session ID %llu\n", v129, 211, v130, a3, *(a1 + 40));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Session ID %llu");
    }
  }

  if ((*(a1 + 37) & 1) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v131 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v131 && (-v4 & 0x20) == 0)
      {
        printf("%s Driver Version %d.%d.%d\n", a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
      }

      syslog(3, "%s Driver Version %d.%d.%d");
    }

    else
    {
      v132 = v131 ^ 1;
      v133 = AVE_GetCurrTime();
      v134 = AVE_Log_GetLevelStr(v6);
      if (((v132 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Driver Version %d.%d.%d\n", v133, 211, v134, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
        v133 = AVE_GetCurrTime();
        v134 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Driver Version %d.%d.%d", v133, 211, v134, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
    }
  }

  if ((*(a1 + 37) & 2) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v135 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v135 && (-v4 & 0x20) == 0)
      {
        printf("%s LookAhead Frame Count %d\n", a3, *(a1 + 92));
      }

      syslog(3, "%s LookAhead Frame Count %d");
    }

    else
    {
      v136 = v4 & 0x20;
      v137 = v135 ^ 1;
      v138 = AVE_GetCurrTime();
      v139 = AVE_Log_GetLevelStr(v6);
      if (((v137 | (v136 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s LookAhead Frame Count %d\n", v138, 211, v139, a3, *(a1 + 92));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s LookAhead Frame Count %d");
    }
  }
}

uint64_t AVE_SEI_WritePayloadSize(int a1, AVE_SyntaxWriter *this)
{
  v3 = a1;
  if (a1 < 255)
  {
    v5 = a1;
LABEL_7:

    return AVE_SyntaxWriter::WriteU(this, v5, 8);
  }

  else
  {
    while (1)
    {
      result = AVE_SyntaxWriter::WriteU(this, 0xFFu, 8);
      if (result)
      {
        break;
      }

      v5 = v3 - 255;
      v6 = v3 <= 509;
      v3 -= 255;
      if (v6)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t AVE_SEI_StartNALU(uint64_t a1, int a2, unsigned int a3, const char *a4)
{
  v8 = AVE_SyntaxWriter::WriteStartCode(a1);
  if (!v8)
  {
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v14 = AVE_Log_CheckConsole(0xD3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s start code %p (%d)\n", CurrTime, 211, LevelStr, "AVE_SEI_StartNALU", 112, a4, (*(a1 + 32) + *(a1 + 12)), *(a1 + 12));
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s start code %p (%d)", CurrTime, 211);
    }

    if (a2 == 2)
    {
      v20 = AVE_SyntaxWriter::WriteU(a1, 0x4E01u, 16);
      if (v20)
      {
        v9 = v20;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          return v9;
        }

        v21 = AVE_Log_CheckConsole(0xD3u);
        v11 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (!v21)
        {
          goto LABEL_9;
        }

        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v22, "AVE_SEI_StartNALU", 123, "(ret) == 0", *(a1 + 32), v9);
        goto LABEL_35;
      }
    }

    else
    {
      if (a2 != 1)
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v23 = AVE_Log_CheckConsole(0xD3u);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p\n", v24, 211, v25, "AVE_SEI_StartNALU", 128, "false", a4, a2, *(a1 + 32));
            v26 = AVE_GetCurrTime();
            v38 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p", v26, 211, v38);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p", v24, 211, v25);
          }
        }

        return 4294966295;
      }

      v17 = AVE_SyntaxWriter::WriteU(a1, 6u, 8);
      if (v17)
      {
        v9 = v17;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          return v9;
        }

        v18 = AVE_Log_CheckConsole(0xD3u);
        v11 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (!v18)
        {
          goto LABEL_9;
        }

        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v19, "AVE_SEI_StartNALU", 119, "(ret) == 0", *(a1 + 32), v9);
        goto LABEL_35;
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v27 = AVE_Log_CheckConsole(0xD3u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(8);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s nal_unit_type %p (%d)\n", v28, 211, v29, "AVE_SEI_StartNALU", 133, a4, (*(a1 + 32) + *(a1 + 12)), *(a1 + 12));
        v28 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s nal_unit_type %p (%d)", v28, 211);
    }

    v30 = AVE_SyntaxWriter::WriteU(a1, a3, 8);
    if (!v30)
    {
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v35 = AVE_Log_CheckConsole(0xD3u);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(8);
        if (v35)
        {
          printf("%lld %d AVE %s: %s:%d %s payloadType %p (%d)\n", v36, 211, v37, "AVE_SEI_StartNALU", 140, a4, (*(a1 + 32) + *(a1 + 12)), *(a1 + 12));
          v36 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(8);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s payloadType %p (%d)", v36, 211);
      }

      return 0;
    }

    v9 = v30;
    if (!AVE_Log_CheckLevel(0xD3u, 4))
    {
      return v9;
    }

    v31 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(4);
    if (!v31)
    {
      goto LABEL_9;
    }

    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v32, "AVE_SEI_StartNALU", 137, "(ret) == 0", *(a1 + 32), v9);
LABEL_35:
    v33 = AVE_GetCurrTime();
    AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v33, 211);
    return v9;
  }

  v9 = v8;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v12, "AVE_SEI_StartNALU", 109, "(ret) == 0", *(a1 + 32), v9);
      v13 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v13, 211);
      return v9;
    }

LABEL_9:
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v11, 211);
  }

  return v9;
}

uint64_t AVE_SEI_WriteAmbientViewingEnvironment(unsigned __int8 *a1, int a2, const unsigned __int8 *a3, int a4, int *a5)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteAmbientViewingEnvironment", a1, a2, a3, a4, a5);
      v10 = AVE_GetCurrTime();
      v58 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %p", v10, 211, v58);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %p", CurrTime, 211, LevelStr);
    }
  }

  if (!a3 || !a1 || !a5)
  {
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v22 = AVE_Log_CheckConsole(0xD3u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v22)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p", v23, 211, v24);
        goto LABEL_27;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p\n", v23, 211, v24, "AVE_SEI_WriteAmbientViewingEnvironment", 222, "pBuf != __null && pBytesWritten != __null && pViewingEnv != __null", a1, a3, a5);
      v25 = AVE_GetCurrTime();
      v21 = 4;
      v59 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p", v25, 211, v59);
    }

LABEL_28:
    v16 = 4294966295;
    goto LABEL_29;
  }

  if (a4 != 2)
  {
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xD3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v27, 211, v28, "AVE_SEI_WriteAmbientViewingEnvironment", 226, "encType == AVE_EncType_HEVC", a4, a1);
        v29 = AVE_GetCurrTime();
        v21 = 4;
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v29, 211);
        goto LABEL_28;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v27, 211);
LABEL_27:
      v21 = 4;
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v11 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v11)
  {
    v12 = v11;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v11);
    v13 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v14 = v13;
    if (v13)
    {
      AVE_SyntaxWriter::AVE_SyntaxWriter(v13, a1, a2, 0);
    }

    *a5 = 0;
    started = AVE_SEI_StartNALU(v14, 2, 0x94u, "AVE_SEI_WriteAmbientViewingEnvironment");
    if (started)
    {
      v16 = started;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_52;
      }

      v17 = AVE_Log_CheckConsole(0xD3u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v19, "AVE_SEI_WriteAmbientViewingEnvironment", 240, "(ret) == 0", a1, v16);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
LABEL_38:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
        goto LABEL_52;
      }
    }

    else
    {
      v40 = AVE_SyntaxWriter::WriteBytes(v12, a3, 8u);
      if (v40)
      {
        v16 = v40;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_52;
        }

        v41 = AVE_Log_CheckConsole(0xD3u);
        v18 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
        if (v41)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v42, "AVE_SEI_WriteAmbientViewingEnvironment", 245, "(ret) == 0", a1, v16);
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_38;
        }
      }

      else if (*(v12 + 2) && (v43 = AVE_SyntaxWriter::AlignToByte(v12), v43))
      {
        v16 = v43;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_52;
        }

        v44 = AVE_Log_CheckConsole(0xD3u);
        v18 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v45, "AVE_SEI_WriteAmbientViewingEnvironment", 251, "(ret) == 0", a1, v16);
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_38;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD3u, 8))
        {
          v46 = AVE_Log_CheckConsole(0xD3u);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(8);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v47, 211, v48, "AVE_SEI_WriteAmbientViewingEnvironment", 254, *(v12 + 2) + 8 * *(v12 + 3), *(v12 + 3));
            v47 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(8);
          }

          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v47);
        }

        v49 = AVE_SEI_FinishNALU(v12, v14, "AVE_SEI_WriteAmbientViewingEnvironment");
        if (!v49)
        {
          *a5 = *(v14 + 3);
          if (AVE_Log_CheckLevel(0xD3u, 7))
          {
            v52 = AVE_Log_CheckConsole(0xD3u);
            v53 = AVE_GetCurrTime();
            v54 = AVE_Log_GetLevelStr(7);
            v55 = *a5;
            if (v52)
            {
              printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v53, 211, v54, "AVE_SEI_WriteAmbientViewingEnvironment", 260, v55);
              v56 = AVE_GetCurrTime();
              v57 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v56, 211, v57, "AVE_SEI_WriteAmbientViewingEnvironment", 260, *a5);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v53, 211, v54, "AVE_SEI_WriteAmbientViewingEnvironment", 260, v55);
            }
          }

          v16 = 0;
          goto LABEL_52;
        }

        v16 = v49;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
LABEL_52:
          (*(*v12 + 8))(v12);
          (*(*v14 + 8))(v14);
          if (v16)
          {
            v21 = 4;
          }

          else
          {
            v21 = 7;
          }

          goto LABEL_29;
        }

        v50 = AVE_Log_CheckConsole(0xD3u);
        v18 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v51, "AVE_SEI_WriteAmbientViewingEnvironment", 257, "(ret) == 0", a1, v16);
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_38;
        }
      }
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v18, 211);
    goto LABEL_52;
  }

  v21 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v30 = AVE_Log_CheckConsole(0xD3u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(4);
    if (v30)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
      v33 = AVE_GetCurrTime();
      v21 = 4;
      v34 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v33, 211, v34, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v31, 211, v32, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
      v21 = 4;
    }
  }

  v16 = 4294966293;
LABEL_29:
  if (AVE_Log_CheckLevel(0xD3u, v21))
  {
    v35 = AVE_Log_CheckConsole(0xD3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(v21);
    if (v35)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %p %d\n", v36, 211, v37, "AVE_SEI_WriteAmbientViewingEnvironment", a1, a2, a3, a4, a5, v16);
      v38 = AVE_GetCurrTime();
      v60 = AVE_Log_GetLevelStr(v21);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %p %d", v38, 211, v60, "AVE_SEI_WriteAmbientViewingEnvironment");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %p %d", v36, 211, v37, "AVE_SEI_WriteAmbientViewingEnvironment");
    }
  }

  return v16;
}

uint64_t AVE_SEI_FinishNALU(const AVE_SyntaxWriter *a1, AVE_SyntaxWriter *a2, const char *a3)
{
  v6 = *(a1 + 3) - *(a1 + 4) / 8;
  v7 = *(a2 + 3);
  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v8 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)\n", CurrTime, 211, LevelStr, "AVE_SEI_FinishNALU", 171, a3, v6, (*(a2 + 4) + *(a2 + 3)), *(a2 + 3));
      v11 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)", v11, 211, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)", CurrTime, 211, LevelStr);
    }
  }

  v12 = AVE_SEI_WritePayloadSize(v6, a2);
  if (!v12)
  {
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v18 = AVE_Log_CheckConsole(0xD3u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(8);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)\n", v19, 211, v20, "AVE_SEI_FinishNALU", 179, a3, *(a2 + 3) - v7, (*(a2 + 4) + *(a2 + 3)), *(a2 + 3));
        v21 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)", v21, 211, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)", v19, 211, v20);
      }
    }

    v22 = AVE_SyntaxWriter::CopyFromSyntaxWriter(a2, a1);
    if (v22)
    {
      v13 = v22;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        return v13;
      }

      v23 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v23)
      {
        goto LABEL_28;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v15, 211, v24, "AVE_SEI_FinishNALU", 183, "(ret) == 0", *(a2 + 4), v13);
    }

    else
    {
      v25 = AVE_SyntaxWriter::AlignToByte(a2);
      if (!v25)
      {
        if (AVE_Log_CheckLevel(0xD3u, 8))
        {
          v29 = AVE_Log_CheckConsole(0xD3u);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(8);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)\n", v30, 211, v31, "AVE_SEI_FinishNALU", 191, a3, (*(a2 + 4) + *(a2 + 3)), *(a2 + 3));
            v30 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(8);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)", v30, 211);
        }

        return 0;
      }

      v13 = v25;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        return v13;
      }

      v26 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (!v26)
      {
        goto LABEL_28;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v15, 211, v27, "AVE_SEI_FinishNALU", 187, "(ret) == 0", *(a2 + 4), v13);
    }

    v28 = AVE_GetCurrTime();
    AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211);
    return v13;
  }

  v13 = v12;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v14 = AVE_Log_CheckConsole(0xD3u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v15, 211, v16, "AVE_SEI_FinishNALU", 174, "(ret) == 0", *(a2 + 4), v13);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v17, 211);
      return v13;
    }

LABEL_28:
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v15, 211);
  }

  return v13;
}

uint64_t AVE_SEI_WriteContentColorVolume(unsigned __int8 *a1, int a2, int a3, int *a4)
{
  v119[3] = *MEMORY[0x29EDCA608];
  memset(v119, 0, 24);
  v118[0] = xmmword_295650740;
  v118[1] = xmmword_295650750;
  v118[2] = xmmword_295650760;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4);
  }

  if (!a1 || !a4)
  {
    v10 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v11 = AVE_Log_CheckConsole(0xD3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v12, 211, v13, "AVE_SEI_WriteContentColorVolume", 319, "pBuf != __null && pBytesWritten != __null", a1, a4);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v12, 211, v13, "AVE_SEI_WriteContentColorVolume", 319, "pBuf != __null && pBytesWritten != __null", a1, a4);
      goto LABEL_41;
    }

LABEL_42:
    v26 = 4294966295;
    goto LABEL_43;
  }

  if (a3 != 2)
  {
    v10 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
LABEL_41:
      v10 = 4;
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(8);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d ccv primaries\n", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d ccv primaries", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
  }

  v17 = 0;
  v116 = vdupq_n_s64(0x40E86A0000000000uLL);
  do
  {
    v117 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v118[v17], v116)));
    v119[v17] = v117;
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v18 = AVE_Log_CheckConsole(0xD3u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(7);
      if (v18)
      {
        printf("%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)\n", v19, 211, v20, v17, v117.i32[0], v117.i32[1]);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)", v19, 211, v20, v17, v117.i32[0], v117.i32[1]);
    }

    ++v17;
  }

  while (v17 != 3);
  v21 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v21)
  {
    v22 = v21;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v21);
    v23 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v24 = v23;
    if (v23)
    {
      AVE_SyntaxWriter::AVE_SyntaxWriter(v23, a1, a2, 0);
      started = AVE_SEI_StartNALU(v24, 2, 0x95u, "AVE_SEI_WriteContentColorVolume");
      if (started)
      {
        v26 = started;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v27 = AVE_Log_CheckConsole(0xD3u);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
            v28 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
        }
      }

      else
      {
        v42 = AVE_SyntaxWriter::WriteBit(v22, 0);
        if (v42)
        {
          v26 = v42;
          if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v43 = AVE_Log_CheckConsole(0xD3u);
            v44 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(4);
            if (v43)
            {
              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v44, 211, v45, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
              v44 = AVE_GetCurrTime();
              v45 = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v44, 211, v45, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
          }
        }

        else
        {
          v46 = AVE_SyntaxWriter::WriteBit(v22, 1);
          if (v46)
          {
            v26 = v46;
            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v47 = AVE_Log_CheckConsole(0xD3u);
              v48 = AVE_GetCurrTime();
              v49 = AVE_Log_GetLevelStr(4);
              if (v47)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v48, 211, v49, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
                v48 = AVE_GetCurrTime();
                v49 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v48, 211, v49, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
            }
          }

          else
          {
            v50 = AVE_SyntaxWriter::WriteBit(v22, 1);
            if (v50)
            {
              v26 = v50;
              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v51 = AVE_Log_CheckConsole(0xD3u);
                v52 = AVE_GetCurrTime();
                v53 = AVE_Log_GetLevelStr(4);
                if (v51)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v52, 211, v53, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
                  v52 = AVE_GetCurrTime();
                  v53 = AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v52, 211, v53, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
              }
            }

            else
            {
              v54 = AVE_SyntaxWriter::WriteBit(v22, 1);
              if (v54)
              {
                v26 = v54;
                if (AVE_Log_CheckLevel(0xD3u, 4))
                {
                  v55 = AVE_Log_CheckConsole(0xD3u);
                  v56 = AVE_GetCurrTime();
                  v57 = AVE_Log_GetLevelStr(4);
                  if (v55)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v56, 211, v57, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                    v56 = AVE_GetCurrTime();
                    v57 = AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v56, 211, v57, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                }
              }

              else
              {
                v58 = AVE_SyntaxWriter::WriteBit(v22, 1);
                if (v58)
                {
                  v26 = v58;
                  if (AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    v59 = AVE_Log_CheckConsole(0xD3u);
                    v60 = AVE_GetCurrTime();
                    v61 = AVE_Log_GetLevelStr(4);
                    if (v59)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v60, 211, v61, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                      v60 = AVE_GetCurrTime();
                      v61 = AVE_Log_GetLevelStr(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v60, 211, v61, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                  }
                }

                else
                {
                  v62 = AVE_SyntaxWriter::WriteBit(v22, 1);
                  if (v62)
                  {
                    v26 = v62;
                    if (AVE_Log_CheckLevel(0xD3u, 4))
                    {
                      v63 = AVE_Log_CheckConsole(0xD3u);
                      v64 = AVE_GetCurrTime();
                      v65 = AVE_Log_GetLevelStr(4);
                      if (v63)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v64, 211, v65, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                        v64 = AVE_GetCurrTime();
                        v65 = AVE_Log_GetLevelStr(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v64, 211, v65, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                    }
                  }

                  else
                  {
                    v66 = AVE_SyntaxWriter::WriteU(v22, 0, 2);
                    if (v66)
                    {
                      v26 = v66;
                      if (AVE_Log_CheckLevel(0xD3u, 4))
                      {
                        v67 = AVE_Log_CheckConsole(0xD3u);
                        v68 = AVE_GetCurrTime();
                        v69 = AVE_Log_GetLevelStr(4);
                        if (v67)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v68, 211, v69, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                          v68 = AVE_GetCurrTime();
                          v69 = AVE_Log_GetLevelStr(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v68, 211, v69, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                      }
                    }

                    else
                    {
                      v70 = v119 + 1;
                      v71 = 3;
                      while (1)
                      {
                        v72 = AVE_SyntaxWriter::WriteI(v22, *(v70 - 1), 32);
                        if (v72)
                        {
                          break;
                        }

                        v73 = AVE_SyntaxWriter::WriteI(v22, *v70, 32);
                        if (v73)
                        {
                          v26 = v73;
                          if (AVE_Log_CheckLevel(0xD3u, 4))
                          {
                            v81 = AVE_Log_CheckConsole(0xD3u);
                            v82 = AVE_GetCurrTime();
                            v83 = AVE_Log_GetLevelStr(4);
                            if (v81)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v82, 211, v83, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                              v82 = AVE_GetCurrTime();
                              v83 = AVE_Log_GetLevelStr(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v82, 211, v83, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                          }

                          goto LABEL_62;
                        }

                        v70 += 2;
                        if (!--v71)
                        {
                          v74 = AVE_SyntaxWriter::WriteU(v22, 0, 32);
                          if (v74)
                          {
                            v26 = v74;
                            if (AVE_Log_CheckLevel(0xD3u, 4))
                            {
                              v75 = AVE_Log_CheckConsole(0xD3u);
                              v76 = AVE_GetCurrTime();
                              v77 = AVE_Log_GetLevelStr(4);
                              if (v75)
                              {
                                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v76, 211, v77, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                                v76 = AVE_GetCurrTime();
                                v77 = AVE_Log_GetLevelStr(4);
                              }

                              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v76, 211, v77, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                            }
                          }

                          else
                          {
                            v84 = AVE_SyntaxWriter::WriteU(v22, 0xF4240u, 32);
                            if (v84)
                            {
                              v26 = v84;
                              if (AVE_Log_CheckLevel(0xD3u, 4))
                              {
                                v85 = AVE_Log_CheckConsole(0xD3u);
                                v86 = AVE_GetCurrTime();
                                v87 = AVE_Log_GetLevelStr(4);
                                if (v85)
                                {
                                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v86, 211, v87, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                                  v86 = AVE_GetCurrTime();
                                  v87 = AVE_Log_GetLevelStr(4);
                                }

                                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v86, 211, v87, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                              }
                            }

                            else
                            {
                              v88 = AVE_SyntaxWriter::WriteU(v22, 0x186A0u, 32);
                              if (v88)
                              {
                                v26 = v88;
                                if (AVE_Log_CheckLevel(0xD3u, 4))
                                {
                                  v89 = AVE_Log_CheckConsole(0xD3u);
                                  v90 = AVE_GetCurrTime();
                                  v91 = AVE_Log_GetLevelStr(4);
                                  if (v89)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v90, 211, v91, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                    v90 = AVE_GetCurrTime();
                                    v91 = AVE_Log_GetLevelStr(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v90, 211, v91, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                }
                              }

                              else if (*(v22 + 2) && (v92 = AVE_SyntaxWriter::AlignToByte(v22), v92))
                              {
                                v26 = v92;
                                if (AVE_Log_CheckLevel(0xD3u, 4))
                                {
                                  v93 = AVE_Log_CheckConsole(0xD3u);
                                  v94 = AVE_GetCurrTime();
                                  v95 = AVE_Log_GetLevelStr(4);
                                  if (v93)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v94, 211, v95, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                    v94 = AVE_GetCurrTime();
                                    v95 = AVE_Log_GetLevelStr(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v94, 211, v95, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                }
                              }

                              else
                              {
                                if (AVE_Log_CheckLevel(0xD3u, 8))
                                {
                                  v96 = AVE_Log_CheckConsole(0xD3u);
                                  v97 = AVE_GetCurrTime();
                                  v98 = AVE_Log_GetLevelStr(8);
                                  v99 = *(v22 + 3);
                                  if (v96)
                                  {
                                    printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v97, 211, v98, "AVE_SEI_WriteContentColorVolume", 410, *(v22 + 2) + 8 * v99, v99);
                                    v100 = AVE_GetCurrTime();
                                    v101 = AVE_Log_GetLevelStr(8);
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v100, 211, v101, "AVE_SEI_WriteContentColorVolume", 410, *(v22 + 2) + 8 * *(v22 + 3), *(v22 + 3));
                                  }

                                  else
                                  {
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v97, 211, v98, "AVE_SEI_WriteContentColorVolume", 410, *(v22 + 2) + 8 * v99, v99);
                                  }
                                }

                                v102 = AVE_SEI_FinishNALU(v22, v24, "AVE_SEI_WriteContentColorVolume");
                                if (v102)
                                {
                                  v26 = v102;
                                  if (AVE_Log_CheckLevel(0xD3u, 4))
                                  {
                                    v103 = AVE_Log_CheckConsole(0xD3u);
                                    v104 = AVE_GetCurrTime();
                                    v105 = AVE_Log_GetLevelStr(4);
                                    if (v103)
                                    {
                                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v104, 211, v105, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                      v104 = AVE_GetCurrTime();
                                      v105 = AVE_Log_GetLevelStr(4);
                                    }

                                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v104, 211, v105, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                  }
                                }

                                else
                                {
                                  *a4 = *(v24 + 3);
                                  if (AVE_Log_CheckLevel(0xD3u, 7))
                                  {
                                    v106 = AVE_Log_CheckConsole(0xD3u);
                                    v107 = AVE_GetCurrTime();
                                    v108 = AVE_Log_GetLevelStr(7);
                                    v109 = *a4;
                                    if (v106)
                                    {
                                      printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v107, 211, v108, "AVE_SEI_WriteContentColorVolume", 416, v109);
                                      v110 = AVE_GetCurrTime();
                                      v111 = AVE_Log_GetLevelStr(7);
                                      syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v110, 211, v111, "AVE_SEI_WriteContentColorVolume", 416, *a4);
                                    }

                                    else
                                    {
                                      syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v107, 211, v108, "AVE_SEI_WriteContentColorVolume", 416, v109);
                                    }
                                  }

                                  v26 = 0;
                                }
                              }
                            }
                          }

                          goto LABEL_62;
                        }
                      }

                      v26 = v72;
                      if (AVE_Log_CheckLevel(0xD3u, 4))
                      {
                        v78 = AVE_Log_CheckConsole(0xD3u);
                        v79 = AVE_GetCurrTime();
                        v80 = AVE_Log_GetLevelStr(4);
                        if (v78)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v79, 211, v80, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
                          v79 = AVE_GetCurrTime();
                          v80 = AVE_Log_GetLevelStr(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v79, 211, v80, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
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

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v39 = AVE_Log_CheckConsole(0xD3u);
        v40 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v40, 211, v41, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
          v40 = AVE_GetCurrTime();
          v41 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v40, 211, v41, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
      }

      v26 = 4294966293;
    }

LABEL_62:
    (*(*v22 + 8))(v22);
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    if (v26)
    {
      v10 = 4;
    }

    else
    {
      v10 = 7;
    }
  }

  else
  {
    v10 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
      v10 = 4;
    }

    v26 = 4294966293;
  }

LABEL_43:
  if (AVE_Log_CheckLevel(0xD3u, v10))
  {
    v33 = AVE_Log_CheckConsole(0xD3u);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(v10);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(v10);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v36, 211, v37, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
    }
  }

  return v26;
}

uint64_t AVE_SEI_WriteExposureTime(unsigned __int8 *a1, double a2)
{
  v3 = AVE_Double2FixedPoint(a2);
  *a1 = 0;
  *(a1 + 1) = bswap64(v3);
  return 9;
}

uint64_t AVE_SEI_WriteSNR(unsigned __int8 *a1, double a2)
{
  v3 = AVE_Double2FixedPoint(a2);
  *a1 = 4;
  *(a1 + 1) = bswap64(v3);
  return 9;
}

uint64_t AVE_SEI_WriteRC(uint64_t a1, unsigned int a2)
{
  *a1 = 1;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteThroughputMode(uint64_t a1, unsigned int a2)
{
  *a1 = 3;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteBitrate(unsigned __int8 *a1, unsigned int a2)
{
  *a1 = 2;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteLookAheadInfo(unsigned __int8 *a1, unsigned int a2)
{
  *a1 = 13;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteTimecode(unsigned __int8 *a1, unsigned int a2, unint64_t a3)
{
  *a1 = 9;
  *(a1 + 1) = bswap32(a2);
  *(a1 + 5) = bswap64(a3);
  return 13;
}

uint64_t AVE_SEI_WriteMCTF(unsigned __int8 *a1, double a2, double a3, double a4, double a5, double a6, char a7, unsigned __int8 a8, char a9)
{
  v9 = 0;
  if (a2 <= 0.0 || a3 <= 0.0 || a4 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    if (a5 > 0.0)
    {
      v9 = (a2 * a3 * a4 / (a5 * 16777216.0));
      v10 = 32;
    }
  }

  *a1 = 1380865034;
  a1[4] = a8;
  if (v9 >= 0xFF)
  {
    LOBYTE(v9) = -1;
  }

  a1[5] = v9;
  a1[6] = v10 | (a7 << 6) | a9 & 0x1F;
  *(a1 + 7) = bswap64(AVE_Double2FixedPoint(a6));
  return 15;
}

uint64_t AVE_SEI_WriteSessionID(unsigned __int8 *a1, unint64_t a2)
{
  *a1 = 11;
  *(a1 + 1) = bswap64(a2);
  return 9;
}

uint64_t AVE_SEI_WriteDriverVersion(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4)
{
  *a1 = 12;
  *(a1 + 1) = __rev16(a2);
  a1[3] = a3;
  a1[4] = a4;
  return 5;
}

uint64_t AVE_SEI_WriteSEIISPMetadata(unsigned __int8 *a1, int a2, const unsigned __int8 *a3, int a4, uint64_t a5, int a6, _BOOL4 a7, int *a8)
{
  v93 = *MEMORY[0x29EDCA608];
  *v92 = xmmword_295650770;
  *v91 = 1635018093;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p", v13, 211, v14, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  if (!a1 || !a3 || !a8)
  {
    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p\n", v31, 211, v32, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p", v33, 211, v34, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
LABEL_41:
        v29 = 4;
        goto LABEL_42;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p", v31, 211, v32, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
    }

LABEL_42:
    v23 = 4294966293;
    goto LABEL_43;
  }

  if ((a6 - 1) < 2)
  {
    v15 = a4 + a4 / 2 + 1;
    v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
    if (v16)
    {
      v17 = v16;
      v18 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
      if (v18)
      {
        v19 = v18;
        AVE_SyntaxWriter::AVE_SyntaxWriter(v18, v17, v15, a7);
        v20 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
        v21 = v20;
        if (v20)
        {
          AVE_SyntaxWriter::AVE_SyntaxWriter(v20, a1, a2, 0);
          started = AVE_SEI_StartNALU(v21, a6, 5u, "AVE_SEI_WriteSEIISPMetadata");
          if (started)
          {
            v23 = started;
            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v24 = AVE_Log_CheckConsole(0xD3u);
              v25 = AVE_GetCurrTime();
              v26 = AVE_Log_GetLevelStr(4);
              if (v24)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v25, 211, v26, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
                v27 = AVE_GetCurrTime();
                v28 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v27, 211, v28, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v25, 211, v26, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
              }
            }
          }

          else
          {
            v23 = AVE_SyntaxWriter::WriteBytes(v19, v92, 0x10u);
            if (v23)
            {
              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v55 = AVE_Log_CheckConsole(0xD3u);
                v56 = AVE_GetCurrTime();
                v57 = AVE_Log_GetLevelStr(4);
                if (v55)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v56, 211, v57, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                  v58 = AVE_GetCurrTime();
                  v59 = AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v58, 211, v59, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v56, 211, v57, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                }
              }
            }

            else
            {
              v23 = AVE_SyntaxWriter::WriteBytes(v19, v91, 4u);
              if (v23)
              {
                if (AVE_Log_CheckLevel(0xD3u, 4))
                {
                  v64 = AVE_Log_CheckConsole(0xD3u);
                  v65 = AVE_GetCurrTime();
                  v66 = AVE_Log_GetLevelStr(4);
                  if (v64)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v65, 211, v66, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                    v67 = AVE_GetCurrTime();
                    v68 = AVE_Log_GetLevelStr(4);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v67, 211, v68, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v65, 211, v66, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                  }
                }
              }

              else
              {
                v23 = AVE_SyntaxWriter::WriteBytes(v19, a3, a4);
                if (v23)
                {
                  if (AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    v69 = AVE_Log_CheckConsole(0xD3u);
                    v70 = AVE_GetCurrTime();
                    v71 = AVE_Log_GetLevelStr(4);
                    if (v69)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v70, 211, v71, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                      v72 = AVE_GetCurrTime();
                      v73 = AVE_Log_GetLevelStr(4);
                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v72, 211, v73, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v70, 211, v71, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                    }
                  }
                }

                else
                {
                  v23 = AVE_SEI_FinishNALU(v19, v21, "AVE_SEI_WriteSEIISPMetadata");
                  if (v23)
                  {
                    if (AVE_Log_CheckLevel(0xD3u, 4))
                    {
                      v74 = AVE_Log_CheckConsole(0xD3u);
                      v75 = AVE_GetCurrTime();
                      v76 = AVE_Log_GetLevelStr(4);
                      if (v74)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v75, 211, v76, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                        v77 = AVE_GetCurrTime();
                        v78 = AVE_Log_GetLevelStr(4);
                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v77, 211, v78, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v75, 211, v76, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                      }
                    }
                  }

                  else
                  {
                    *a8 = *(v21 + 3);
                    if (AVE_Log_CheckLevel(0xD3u, 7))
                    {
                      v79 = AVE_Log_CheckConsole(0xD3u);
                      v80 = AVE_GetCurrTime();
                      v81 = AVE_Log_GetLevelStr(7);
                      v82 = *a8;
                      if (v79)
                      {
                        printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v80, 211, v81, "AVE_SEI_WriteSEIISPMetadata", 889, v82);
                        v83 = AVE_GetCurrTime();
                        v84 = AVE_Log_GetLevelStr(7);
                        syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v83, 211, v84, "AVE_SEI_WriteSEIISPMetadata", 889, *a8);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v80, 211, v81, "AVE_SEI_WriteSEIISPMetadata", 889, v82);
                      }
                    }

                    v23 = 0;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v50 = AVE_Log_CheckConsole(0xD3u);
            v51 = AVE_GetCurrTime();
            v52 = AVE_Log_GetLevelStr(4);
            if (v50)
            {
              printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v51, 211, v52, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
              v53 = AVE_GetCurrTime();
              v54 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v53, 211, v54, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v51, 211, v52, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
            }
          }

          v23 = 4294966293;
        }

        (*(*v19 + 8))(v19);
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }

        free(v17);
        if (v23)
        {
          v29 = 4;
        }

        else
        {
          v29 = 7;
        }

        goto LABEL_43;
      }

      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v45 = AVE_Log_CheckConsole(0xD3u);
        v46 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v46, 211, v47, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
          v48 = AVE_GetCurrTime();
          v49 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v48, 211, v49, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v46, 211, v47, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
        }
      }

      free(v17);
      goto LABEL_41;
    }

    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v40 = AVE_Log_CheckConsole(0xD3u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p\n", v41, 211, v42, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
        v43 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p", v43, 211, v44, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
        goto LABEL_41;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p", v41, 211, v42, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
    }

    goto LABEL_42;
  }

  v29 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v35 = AVE_Log_CheckConsole(0xD3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v36, 211, v37, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v38, 211, v39, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
      v29 = 4;
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v36, 211, v37, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
    }
  }

  v23 = 4294966295;
LABEL_43:
  if (AVE_Log_CheckLevel(0xD3u, v29))
  {
    v60 = AVE_Log_CheckConsole(0xD3u);
    v61 = AVE_GetCurrTime();
    v62 = AVE_Log_GetLevelStr(v29);
    if (v60)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %lld %d %d %p %d\n", v61, 211, v62, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8, v23);
      v61 = AVE_GetCurrTime();
      v62 = AVE_Log_GetLevelStr(v29);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %lld %d %d %p %d", v61, 211, v62, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8, v23);
  }

  return v23;
}

uint64_t AVE_SEI_WriteLuxLevel(unsigned __int8 *a1, int a2, uint64_t a3, unsigned int a4, int a5, int a6, int *a7)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteLuxLevel", a1, a2, a3, a4, a5, a6, a7);
      v15 = AVE_GetCurrTime();
      v67 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p", v15, 211, v67, "AVE_SEI_WriteLuxLevel");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteLuxLevel");
    }
  }

  if (!a1 || !a7)
  {
    v25 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xD3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (!v26)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v27, 211);
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v27, 211, v28, "AVE_SEI_WriteLuxLevel", 947, "pBuf != __null && pSEISize != __null", a1, a7);
      v29 = AVE_GetCurrTime();
      v25 = 4;
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v29, 211);
    }

LABEL_26:
    v21 = 4294966295;
    goto LABEL_27;
  }

  if ((a5 - 1) >= 2)
  {
    v25 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v31, 211, v32, "AVE_SEI_WriteLuxLevel", 951, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a5, a1);
        v33 = AVE_GetCurrTime();
        v25 = 4;
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v33, 211);
        goto LABEL_26;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v31, 211);
LABEL_25:
      v25 = 4;
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v16 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v16)
  {
    v17 = v16;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v16);
    v18 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v19 = v18;
    if (!v18)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v45 = a6;
        v46 = AVE_Log_CheckConsole(0xD3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v47, 211, v48, "AVE_SEI_WriteLuxLevel", 961, "pcSyntaxWriter_NALU != __null", a1);
          v49 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v49);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v47);
        }

        v21 = 4294966293;
        a6 = v45;
      }

      else
      {
        v21 = 4294966293;
      }

      goto LABEL_56;
    }

    AVE_SyntaxWriter::AVE_SyntaxWriter(v18, a1, a2, 0);
    started = AVE_SEI_StartNALU(v19, a5, 4u, "AVE_SEI_WriteLuxLevel");
    if (started)
    {
      v21 = started;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v22 = AVE_Log_CheckConsole(0xD3u);
        v72 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v23, "AVE_SEI_WriteLuxLevel", 965, "(ret) == 0", a1, v21);
          v24 = AVE_GetCurrTime();
          v70 = a1;
          v71 = v21;
          v69 = 965;
          v68 = AVE_Log_GetLevelStr(4);
LABEL_50:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v24, 211, v68, "AVE_SEI_WriteLuxLevel", v69, "(ret) == 0", v70, v71);
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    else
    {
      AVE_SyntaxWriter::WriteU(v17, 0xB5u, 8);
      AVE_SyntaxWriter::WriteU(v17, 0xBEEFu, 16);
      AVE_SyntaxWriter::WriteU(v17, 0x55AAu, 16);
      AVE_SyntaxWriter::WriteU(v17, a4, 32);
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v50 = a6;
        v51 = AVE_Log_CheckConsole(0xD3u);
        v52 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(8);
        v54 = *(v17 + 3);
        if (v51)
        {
          printf("%lld %d AVE %s: %s:%d payloadSize EPB %d\n", v52, 211, v53, "AVE_SEI_WriteLuxLevel", 980, v54);
          v55 = AVE_GetCurrTime();
          v56 = AVE_Log_GetLevelStr(8);
          syslog(3, "%lld %d AVE %s: %s:%d payloadSize EPB %d", v55, 211, v56, "AVE_SEI_WriteLuxLevel", 980, *(v17 + 3));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d payloadSize EPB %d", v52, 211, v53, "AVE_SEI_WriteLuxLevel", 980, v54);
        }

        a6 = v50;
      }

      v57 = AVE_SEI_FinishNALU(v17, v19, "AVE_SEI_WriteLuxLevel");
      if (!v57)
      {
        *a7 = *(v19 + 3);
        if (AVE_Log_CheckLevel(0xD3u, 7))
        {
          v60 = a6;
          v61 = AVE_Log_CheckConsole(0xD3u);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(7);
          v64 = *a7;
          if (v61)
          {
            printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v62, 211, v63, "AVE_SEI_WriteLuxLevel", 987, v64);
            v65 = AVE_GetCurrTime();
            v66 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v65, 211, v66, "AVE_SEI_WriteLuxLevel", 987, *a7);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v62, 211, v63, "AVE_SEI_WriteLuxLevel", 987, v64);
          }

          a6 = v60;
          v21 = 0;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_56;
      }

      v21 = v57;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v58 = AVE_Log_CheckConsole(0xD3u);
        v72 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v59, "AVE_SEI_WriteLuxLevel", 984, "(ret) == 0", a1, v21);
          v24 = AVE_GetCurrTime();
          v70 = a1;
          v71 = v21;
          v69 = 984;
          v68 = AVE_Log_GetLevelStr(4);
          goto LABEL_50;
        }

LABEL_55:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v72, 211);
      }
    }

LABEL_56:
    (*(*v17 + 8))(v17);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    if (v21)
    {
      v25 = 4;
    }

    else
    {
      v25 = 7;
    }

    goto LABEL_27;
  }

  v25 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v34 = AVE_Log_CheckConsole(0xD3u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v35, 211, v36, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
      v37 = AVE_GetCurrTime();
      v25 = 4;
      v38 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v37, 211, v38, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v35, 211, v36, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
      v25 = 4;
    }
  }

  v21 = 4294966293;
LABEL_27:
  if (AVE_Log_CheckLevel(0xD3u, v25))
  {
    v39 = AVE_Log_CheckConsole(0xD3u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(v25);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d\n", v40, 211, v41, "AVE_SEI_WriteLuxLevel", a1, a2, a3, a4, a5, a6, a7, v21);
      v42 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d", v42, 211, v43, "AVE_SEI_WriteLuxLevel", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d", v40, 211, v41, "AVE_SEI_WriteLuxLevel", a1);
    }
  }

  return v21;
}

uint64_t AVE_SEI_WriteAccessUnitDelimiter(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5, _DWORD *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v8 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteAccessUnitDelimiter", a1, a2, a3, a4, a5, a6);
      v11 = AVE_GetCurrTime();
      v85 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", v11, 211, v85);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", CurrTime, 211, LevelStr);
    }
  }

  if (a1 && a6)
  {
    v12 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    if (v12)
    {
      v13 = v12;
      AVE_SyntaxWriter::AVE_SyntaxWriter(v12);
      v14 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
      v15 = v14;
      if (v14)
      {
        AVE_SyntaxWriter::AVE_SyntaxWriter(v14, a1, a2, 0);
        v16 = AVE_SyntaxWriter::WriteStartCode(v15);
        if (!v16)
        {
          if (AVE_Log_CheckLevel(0xD3u, 8))
          {
            v37 = AVE_Log_CheckConsole(0xD3u);
            v38 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(8);
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d nal_unit_type %p (%d)\n", v38, 211, v39, "AVE_SEI_WriteAccessUnitDelimiter", 1050, (*(v15 + 4) + *(v15 + 3)), *(v15 + 3));
              v40 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: %s:%d nal_unit_type %p (%d)", v40);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d nal_unit_type %p (%d)", v38);
            }
          }

          if (a4 == 2)
          {
            v41 = AVE_SyntaxWriter::WriteU(v15, 0x4601u, 16);
            if (v41)
            {
              v17 = v41;
              if (!AVE_Log_CheckLevel(0xD3u, 4))
              {
                goto LABEL_48;
              }

              v18 = a5;
              v42 = AVE_Log_CheckConsole(0xD3u);
              v20 = AVE_GetCurrTime();
              v43 = AVE_Log_GetLevelStr(4);
              if (v42)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v43, "AVE_SEI_WriteAccessUnitDelimiter", 1055, "(ret) == 0", a1, v17);
                v22 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
                goto LABEL_13;
              }

LABEL_31:
              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
              goto LABEL_33;
            }

            if (AVE_Log_CheckLevel(0xD3u, 8))
            {
              v48 = AVE_Log_CheckConsole(0xD3u);
              v49 = AVE_GetCurrTime();
              v50 = AVE_Log_GetLevelStr(8);
              v51 = *(v15 + 4) + *(v15 + 3);
              v52 = *(v51 - 2);
              v53 = *(v51 - 1);
              if (v48)
              {
                printf("%lld %d AVE %s: %s:%d NUT %0x %0x\n", v49, 211, v50, "AVE_SEI_WriteAccessUnitDelimiter", 1059, v52, v53);
                v54 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: %s:%d NUT %0x %0x", v54);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d NUT %0x %0x", v49);
              }
            }

            if ((a5 - 1) < 3)
            {
              v60 = AVE_SyntaxWriter::WriteU(v13, a5 - 1, 3);
              if (v60)
              {
                v17 = v60;
                if (!AVE_Log_CheckLevel(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v61 = AVE_Log_CheckConsole(0xD3u);
                v20 = AVE_GetCurrTime();
                v62 = AVE_Log_GetLevelStr(4);
                if (v61)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v62, "AVE_SEI_WriteAccessUnitDelimiter", 1089, "(ret) == 0", a1, v17);
                  v22 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  goto LABEL_13;
                }
              }

              else if (*(v13 + 2) && (v67 = AVE_SyntaxWriter::AlignToByte(v13), v67))
              {
                v17 = v67;
                if (!AVE_Log_CheckLevel(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v68 = AVE_Log_CheckConsole(0xD3u);
                v20 = AVE_GetCurrTime();
                v69 = AVE_Log_GetLevelStr(4);
                if (v68)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v69, "AVE_SEI_WriteAccessUnitDelimiter", 1095, "(ret) == 0", a1, v17);
                  v22 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  goto LABEL_13;
                }
              }

              else
              {
                if (AVE_Log_CheckLevel(0xD3u, 8))
                {
                  v70 = AVE_Log_CheckConsole(0xD3u);
                  v71 = AVE_GetCurrTime();
                  v72 = AVE_Log_GetLevelStr(8);
                  if (v70)
                  {
                    printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v71, 211, v72, "AVE_SEI_WriteAccessUnitDelimiter", 1099, *(v13 + 2) + 8 * *(v13 + 3), (*(v13 + 2) + 8 * *(v13 + 3)) >> 3);
                    v73 = AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v73);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v71);
                  }
                }

                v74 = AVE_SyntaxWriter::CopyFromSyntaxWriter(v15, v13);
                if (!v74)
                {
                  v17 = AVE_SyntaxWriter::AlignToByte(v15);
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v77 = a5;
                    v78 = AVE_Log_CheckConsole(0xD3u);
                    v79 = AVE_GetCurrTime();
                    v80 = AVE_Log_GetLevelStr(8);
                    if (v78)
                    {
                      printf("%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)\n", v79, 211, v80, "AVE_SEI_WriteAccessUnitDelimiter", 1109, (*(v15 + 4) + *(v15 + 3)), *(v15 + 3));
                      v81 = AVE_GetCurrTime();
                      AVE_Log_GetLevelStr(8);
                      syslog(3, "%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)", v81);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)", v79);
                    }

                    a5 = v77;
                  }

                  *a6 = *(v15 + 3);
                  if (!AVE_Log_CheckLevel(0xD3u, 7))
                  {
                    goto LABEL_48;
                  }

                  v18 = a5;
                  v82 = AVE_Log_CheckConsole(0xD3u);
                  v83 = AVE_GetCurrTime();
                  v84 = AVE_Log_GetLevelStr(7);
                  if (v82)
                  {
                    printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v83, 211, v84, "AVE_SEI_WriteAccessUnitDelimiter", 1112, *a6);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(7);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d");
                  goto LABEL_33;
                }

                v17 = v74;
                if (!AVE_Log_CheckLevel(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v75 = AVE_Log_CheckConsole(0xD3u);
                v20 = AVE_GetCurrTime();
                v76 = AVE_Log_GetLevelStr(4);
                if (v75)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v76, "AVE_SEI_WriteAccessUnitDelimiter", 1103, "(ret) == 0", a1, v17);
                  v22 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  goto LABEL_13;
                }
              }

              goto LABEL_31;
            }

            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v63 = AVE_Log_CheckConsole(0xD3u);
              v64 = AVE_GetCurrTime();
              v65 = AVE_Log_GetLevelStr(4);
              if (v63)
              {
                printf("%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p\n", v64, 211, v65, "AVE_SEI_WriteAccessUnitDelimiter", 1084, "false", a5, a1);
                v66 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p", v66, 211);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p", v64, 211);
              }

              v17 = 4294966295;
              goto LABEL_48;
            }
          }

          else if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v44 = AVE_Log_CheckConsole(0xD3u);
            v45 = AVE_GetCurrTime();
            v46 = AVE_Log_GetLevelStr(4);
            if (v44)
            {
              printf("%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p\n", v45, 211, v46, "AVE_SEI_WriteAccessUnitDelimiter", 1064, "false", a4, a1);
              v47 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p", v47, 211);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p", v45, 211);
            }
          }

          v17 = 4294966295;
          goto LABEL_48;
        }

        v17 = v16;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v18 = a5;
          v19 = AVE_Log_CheckConsole(0xD3u);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          if (v19)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v21, "AVE_SEI_WriteAccessUnitDelimiter", 1047, "(ret) == 0", a1, v17);
            v22 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
LABEL_13:
            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v22, 211);
LABEL_33:
            a5 = v18;
            goto LABEL_48;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v18 = a5;
          v34 = AVE_Log_CheckConsole(0xD3u);
          v35 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v35, 211, v36, "AVE_SEI_WriteAccessUnitDelimiter", 1043, "pcSyntaxWriter_NALU != __null", a1);
            v35 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v35);
          v17 = 4294966293;
          goto LABEL_33;
        }

        v17 = 4294966293;
      }

LABEL_48:
      (*(*v13 + 8))(v13);
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      if (v17)
      {
        v23 = 4;
      }

      else
      {
        v23 = 7;
      }

      goto LABEL_53;
    }

    v23 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v29 = AVE_Log_CheckConsole(0xD3u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v30, 211, v31, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
        v32 = AVE_GetCurrTime();
        v23 = 4;
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v32, 211, v33, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v30, 211, v31, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
        v23 = 4;
      }
    }

    v17 = 4294966293;
  }

  else
  {
    v23 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v24 = AVE_Log_CheckConsole(0xD3u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v25, 211, v26, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
        v27 = AVE_GetCurrTime();
        v23 = 4;
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v27, 211, v28, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v25, 211, v26, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
        v23 = 4;
      }
    }

    v17 = 4294966295;
  }

LABEL_53:
  if (AVE_Log_CheckLevel(0xD3u, v23))
  {
    v55 = AVE_Log_CheckConsole(0xD3u);
    v56 = AVE_GetCurrTime();
    v57 = AVE_Log_GetLevelStr(v23);
    if (v55)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d\n", v56, 211, v57, "AVE_SEI_WriteAccessUnitDelimiter", a1, a2, a3, a4, a5, a6, v17);
      v58 = AVE_GetCurrTime();
      v86 = AVE_Log_GetLevelStr(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v58, 211, v86, "AVE_SEI_WriteAccessUnitDelimiter");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v56, 211, v57, "AVE_SEI_WriteAccessUnitDelimiter");
    }
  }

  return v17;
}

uint64_t AVE_SEI_WriteActiveParameterSets(unsigned __int8 *a1, int a2, int a3, uint64_t a4, int a5, int *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %lld %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteActiveParameterSets", a1, a2, a3, a4, a5, a6);
      v13 = AVE_GetCurrTime();
      v72 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %d %p", v13, 211, v72, "AVE_SEI_WriteActiveParameterSets");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteActiveParameterSets");
    }
  }

  if (!a1 || !a6)
  {
    v22 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xD3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v24, 211);
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v24, 211, v25, "AVE_SEI_WriteActiveParameterSets", 1166, "pBuf != __null && pSEISize != __null", a1, a6);
      v26 = AVE_GetCurrTime();
      v22 = 4;
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v26, 211);
    }

LABEL_26:
    v36 = 4294966295;
    goto LABEL_27;
  }

  if (a5 != 2)
  {
    v22 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v27 = AVE_Log_CheckConsole(0xD3u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v28, 211, v29, "AVE_SEI_WriteActiveParameterSets", 1169, "encType == AVE_EncType_HEVC", a5, a1);
        v30 = AVE_GetCurrTime();
        v22 = 4;
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v30, 211);
        goto LABEL_26;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v28, 211);
LABEL_25:
      v22 = 4;
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v14 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v14)
  {
    v15 = v14;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v14);
    v16 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v17 = v16;
    if (!v16)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v43 = AVE_Log_CheckConsole(0xD3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v44, 211, v45, "AVE_SEI_WriteActiveParameterSets", 1177, "pcSyntaxWriter_NALU != __null", a1);
          v44 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v44);
      }

      started = 4294966293;
      goto LABEL_76;
    }

    AVE_SyntaxWriter::AVE_SyntaxWriter(v16, a1, a2, 0);
    started = AVE_SEI_StartNALU(v17, 2, 0x81u, "AVE_SEI_WriteActiveParameterSets");
    if (started)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v18 = AVE_Log_CheckConsole(0xD3u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v20, "AVE_SEI_WriteActiveParameterSets", 1181, "(ret) == 0", a1, started);
          v21 = AVE_GetCurrTime();
          v75 = a1;
          v77 = started;
          v74 = 1181;
          v73 = AVE_Log_GetLevelStr(4);
LABEL_65:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v21, 211, v73, "AVE_SEI_WriteActiveParameterSets", v74, "(ret) == 0", v75, v77);
          goto LABEL_76;
        }

LABEL_75:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v19, 211);
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    started = AVE_SyntaxWriter::WriteU(v15, 0, 4);
    if (started)
    {
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_76;
      }

      v46 = AVE_Log_CheckConsole(0xD3u);
      v19 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(4);
      if (!v46)
      {
        goto LABEL_75;
      }

      v79 = v17;
      v48 = started;
      v78 = started;
      v49 = a1;
      v76 = a1;
      v80 = a5;
      v50 = a3;
      v51 = 1185;
    }

    else
    {
      started = AVE_SyntaxWriter::WriteBit(v15, 1);
      if (started)
      {
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_76;
        }

        v52 = AVE_Log_CheckConsole(0xD3u);
        v19 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        if (!v52)
        {
          goto LABEL_75;
        }

        v79 = v17;
        v48 = started;
        v78 = started;
        v49 = a1;
        v76 = a1;
        v80 = a5;
        v50 = a3;
        v51 = 1187;
      }

      else
      {
        started = AVE_SyntaxWriter::WriteBit(v15, 1);
        if (started)
        {
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
            goto LABEL_76;
          }

          v53 = AVE_Log_CheckConsole(0xD3u);
          v19 = AVE_GetCurrTime();
          v47 = AVE_Log_GetLevelStr(4);
          if (!v53)
          {
            goto LABEL_75;
          }

          v79 = v17;
          v48 = started;
          v78 = started;
          v49 = a1;
          v76 = a1;
          v80 = a5;
          v50 = a3;
          v51 = 1189;
        }

        else
        {
          started = AVE_SyntaxWriter::WriteUE(v15, 0);
          if (started)
          {
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_76;
            }

            v54 = AVE_Log_CheckConsole(0xD3u);
            v19 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            if (!v54)
            {
              goto LABEL_75;
            }

            v79 = v17;
            v48 = started;
            v78 = started;
            v49 = a1;
            v76 = a1;
            v80 = a5;
            v50 = a3;
            v51 = 1191;
          }

          else
          {
            started = AVE_SyntaxWriter::WriteUE(v15, a3);
            if (!started)
            {
              if (*(v15 + 2))
              {
                started = AVE_SyntaxWriter::AlignToByte(v15);
                if (started)
                {
                  if (!AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    goto LABEL_76;
                  }

                  v56 = AVE_Log_CheckConsole(0xD3u);
                  v19 = AVE_GetCurrTime();
                  v57 = AVE_Log_GetLevelStr(4);
                  if (v56)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v57, "AVE_SEI_WriteActiveParameterSets", 1199, "(ret) == 0", a1, started);
                    v58 = AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(4);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v58, 211);
                    goto LABEL_76;
                  }

                  goto LABEL_75;
                }
              }

              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v59 = AVE_Log_CheckConsole(0xD3u);
                v60 = AVE_GetCurrTime();
                v61 = AVE_Log_GetLevelStr(8);
                if (v59)
                {
                  printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v60, 211, v61, "AVE_SEI_WriteActiveParameterSets", 1203, *(v15 + 2) + 8 * *(v15 + 3), (*(v15 + 2) + 8 * *(v15 + 3)) >> 3);
                  v62 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v62);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v60);
                }
              }

              started = AVE_SEI_FinishNALU(v15, v17, "AVE_SEI_WriteActiveParameterSets");
              if (!started)
              {
                *a6 = *(v17 + 3);
                if (AVE_Log_CheckLevel(0xD3u, 7))
                {
                  v66 = AVE_Log_CheckConsole(0xD3u);
                  v67 = AVE_GetCurrTime();
                  v68 = AVE_Log_GetLevelStr(7);
                  v69 = *a6;
                  if (v66)
                  {
                    printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v67, 211, v68, "AVE_SEI_WriteActiveParameterSets", 1209, v69);
                    v70 = AVE_GetCurrTime();
                    v71 = AVE_Log_GetLevelStr(7);
                    syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v70, 211, v71, "AVE_SEI_WriteActiveParameterSets", 1209, *a6);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v67, 211, v68, "AVE_SEI_WriteActiveParameterSets", 1209, v69);
                  }
                }

                started = 0;
                goto LABEL_76;
              }

              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v63 = AVE_Log_CheckConsole(0xD3u);
                v19 = AVE_GetCurrTime();
                v64 = AVE_Log_GetLevelStr(4);
                if (v63)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v64, "AVE_SEI_WriteActiveParameterSets", 1206, "(ret) == 0", a1, started);
                  v65 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v65, 211);
                  goto LABEL_76;
                }

                goto LABEL_75;
              }

LABEL_76:
              (*(*v15 + 8))(v15);
              if (v17)
              {
                (*(*v17 + 8))(v17);
              }

              v36 = started;
              if (started)
              {
                v22 = 4;
              }

              else
              {
                v22 = 7;
              }

              goto LABEL_27;
            }

            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_76;
            }

            v55 = AVE_Log_CheckConsole(0xD3u);
            v19 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            if (!v55)
            {
              goto LABEL_75;
            }

            v79 = v17;
            v48 = started;
            v78 = started;
            v49 = a1;
            v76 = a1;
            v80 = a5;
            v50 = a3;
            v51 = 1193;
          }
        }
      }
    }

    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v47, "AVE_SEI_WriteActiveParameterSets", v51, "(ret) == 0", v76, v78);
    v21 = AVE_GetCurrTime();
    v75 = v49;
    v77 = v48;
    v74 = v51;
    a3 = v50;
    v17 = v79;
    a5 = v80;
    v73 = AVE_Log_GetLevelStr(4);
    goto LABEL_65;
  }

  v22 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v31 = AVE_Log_CheckConsole(0xD3u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v32, 211, v33, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
      v34 = AVE_GetCurrTime();
      v22 = 4;
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v34, 211, v35, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v32, 211, v33, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
      v22 = 4;
    }
  }

  v36 = 4294966293;
LABEL_27:
  if (AVE_Log_CheckLevel(0xD3u, v22))
  {
    v37 = AVE_Log_CheckConsole(0xD3u);
    v38 = AVE_GetCurrTime();
    v39 = AVE_Log_GetLevelStr(v22);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d\n", v38, 211, v39, "AVE_SEI_WriteActiveParameterSets", a1, a2, a3, a4, a5, a6, v36);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(v22);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d", v40, 211, v41, "AVE_SEI_WriteActiveParameterSets", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d", v38, 211, v39, "AVE_SEI_WriteActiveParameterSets", a1);
    }
  }

  return v36;
}

uint64_t AVE_SEI_WritePictureTiming(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int *a9)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v13 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WritePictureTiming", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v16 = AVE_GetCurrTime();
      v89 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p", v16, 211, v89, "AVE_SEI_WritePictureTiming", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WritePictureTiming", a1);
    }
  }

  if (!a1 || !a9)
  {
    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (!v30)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v31, 211);
        goto LABEL_34;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v31, 211, v32, "AVE_SEI_WritePictureTiming", 1267, "pBuf != __null && pSEISize != __null", a1, a9);
      v33 = AVE_GetCurrTime();
      v29 = 4;
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v33, 211);
    }

LABEL_35:
    v24 = 4294966295;
    goto LABEL_36;
  }

  if (a4 != 2)
  {
    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v34 = AVE_Log_CheckConsole(0xD3u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v35, 211, v36, "AVE_SEI_WritePictureTiming", 1270, "encType == AVE_EncType_HEVC", a4, a1);
        v37 = AVE_GetCurrTime();
        v29 = 4;
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v37, 211);
        goto LABEL_35;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v35, 211);
LABEL_34:
      v29 = 4;
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v17 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v17)
  {
    v18 = v17;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v17);
    v19 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v20 = v19;
    if (!v19)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v48 = AVE_Log_CheckConsole(0xD3u);
        v49 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(4);
        if (v48)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v49, 211, v50, "AVE_SEI_WritePictureTiming", 1279, "pcSyntaxWriter_NALU != __null", a1);
          v51 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v51);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v49);
        }
      }

      v24 = 4294966293;
      goto LABEL_74;
    }

    AVE_SyntaxWriter::AVE_SyntaxWriter(v19, a1, a2, 0);
    if (AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded == AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::LastBufferingPeriodFrame)
    {
      v21 = 0;
    }

    else
    {
      v21 = AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded + ~AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::LastBufferingPeriodFrame;
    }

    if (a5)
    {
      v22 = a6 - AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded + 2;
    }

    else
    {
      v22 = 0;
    }

    if (a7 == 1 || a8 == 21)
    {
      AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::LastBufferingPeriodFrame = AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded;
    }

    ++AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded;
    started = AVE_SEI_StartNALU(v20, 2, 1u, "AVE_SEI_WritePictureTiming");
    if (started)
    {
      v24 = started;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v25 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v26, 211, v27, "AVE_SEI_WritePictureTiming", 1304, "(ret) == 0", a1, v24);
          v28 = AVE_GetCurrTime();
          v93 = a1;
          v94 = v24;
          v92 = 1304;
          v90 = AVE_Log_GetLevelStr(4);
LABEL_63:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211, v90, "AVE_SEI_WritePictureTiming", v92, "(ret) == 0", v93, v94);
          goto LABEL_74;
        }

LABEL_73:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v26, 211);
      }

LABEL_74:
      (*(*v18 + 8))(v18);
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }

      if (v24)
      {
        v29 = 4;
      }

      else
      {
        v29 = 7;
      }

      goto LABEL_36;
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v52 = v21;
      v53 = AVE_Log_CheckConsole(0xD3u);
      v54 = AVE_GetCurrTime();
      v55 = AVE_Log_GetLevelStr(8);
      if (v53)
      {
        printf("%lld %d AVE %s: %s:%d payloadType %p (%d)\n", v54, 211, v55, "AVE_SEI_WritePictureTiming", 1308, (*(v20 + 4) + *(v20 + 3)), *(v20 + 3));
        v56 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d payloadType %p (%d)", v56);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d payloadType %p (%d)", v54);
      }

      v21 = v52;
    }

    v57 = AVE_SyntaxWriter::WriteU(v18, v21, 24);
    if (v57)
    {
      v24 = v57;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_74;
      }

      v58 = AVE_Log_CheckConsole(0xD3u);
      v26 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(4);
      if (!v58)
      {
        goto LABEL_73;
      }

      v60 = v26;
      v61 = v24;
      v62 = a1;
      v63 = a8;
      v64 = a4;
      v65 = a7;
      v66 = 1312;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v60, 211, v59, "AVE_SEI_WritePictureTiming", 1312, "(ret) == 0", a1, v24);
    }

    else
    {
      v67 = AVE_SyntaxWriter::WriteU(v18, v22, 24);
      if (v67)
      {
        v24 = v67;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v68 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v69 = AVE_Log_GetLevelStr(4);
        if (!v68)
        {
          goto LABEL_73;
        }

        v70 = v26;
        v61 = v24;
        v62 = a1;
        v63 = a8;
        v64 = a4;
        v65 = a7;
        v66 = 1314;
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v70, 211, v69, "AVE_SEI_WritePictureTiming", 1314, "(ret) == 0", a1, v24);
      }

      else if (*(v18 + 2) && (v71 = AVE_SyntaxWriter::AlignToByte(v18), v71))
      {
        v24 = v71;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v72 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v73 = AVE_Log_GetLevelStr(4);
        if (!v72)
        {
          goto LABEL_73;
        }

        v74 = v26;
        v61 = v24;
        v62 = a1;
        v63 = a8;
        v64 = a4;
        v65 = a7;
        v66 = 1320;
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v74, 211, v73, "AVE_SEI_WritePictureTiming", 1320, "(ret) == 0", a1, v24);
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD3u, 8))
        {
          v75 = AVE_Log_CheckConsole(0xD3u);
          v76 = AVE_GetCurrTime();
          v77 = AVE_Log_GetLevelStr(8);
          if (v75)
          {
            printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v76, 211, v77, "AVE_SEI_WritePictureTiming", 1324, *(v18 + 2) + 8 * *(v18 + 3), (*(v18 + 2) + 8 * *(v18 + 3)) >> 3);
            v78 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v78);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v76);
          }
        }

        v79 = AVE_SEI_FinishNALU(v18, v20, "AVE_SEI_WritePictureTiming");
        if (!v79)
        {
          *a9 = *(v20 + 3);
          if (AVE_Log_CheckLevel(0xD3u, 7))
          {
            v83 = AVE_Log_CheckConsole(0xD3u);
            v84 = AVE_GetCurrTime();
            v85 = AVE_Log_GetLevelStr(7);
            v86 = *a9;
            if (v83)
            {
              printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v84, 211, v85, "AVE_SEI_WritePictureTiming", 1330, v86);
              v87 = AVE_GetCurrTime();
              v88 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v87, 211, v88, "AVE_SEI_WritePictureTiming", 1330, *a9);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v84, 211, v85, "AVE_SEI_WritePictureTiming", 1330, v86);
            }
          }

          v24 = 0;
          goto LABEL_74;
        }

        v24 = v79;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v80 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v81 = AVE_Log_GetLevelStr(4);
        if (!v80)
        {
          goto LABEL_73;
        }

        v82 = v26;
        v61 = v24;
        v62 = a1;
        v63 = a8;
        v64 = a4;
        v65 = a7;
        v66 = 1327;
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v82, 211, v81, "AVE_SEI_WritePictureTiming", 1327, "(ret) == 0", a1, v24);
      }
    }

    v28 = AVE_GetCurrTime();
    v93 = v62;
    v94 = v61;
    v92 = v66;
    a7 = v65;
    a4 = v64;
    a8 = v63;
    v90 = AVE_Log_GetLevelStr(4);
    goto LABEL_63;
  }

  v29 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v38 = AVE_Log_CheckConsole(0xD3u);
    v39 = AVE_GetCurrTime();
    v40 = AVE_Log_GetLevelStr(4);
    if (v38)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v39, 211, v40, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
      v41 = AVE_GetCurrTime();
      v29 = 4;
      v42 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v41, 211, v42, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v39, 211, v40, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
      v29 = 4;
    }
  }

  v24 = 4294966293;
LABEL_36:
  if (AVE_Log_CheckLevel(0xD3u, v29))
  {
    v43 = AVE_Log_CheckConsole(0xD3u);
    v44 = AVE_GetCurrTime();
    v45 = AVE_Log_GetLevelStr(v29);
    if (v43)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d\n", v44, 211, v45, "AVE_SEI_WritePictureTiming", a1, a3, a4, a5, a6, a7, a8, a9, v24);
      v46 = AVE_GetCurrTime();
      v91 = AVE_Log_GetLevelStr(v29);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d", v46, 211, v91, "AVE_SEI_WritePictureTiming", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d", v44, 211, v45, "AVE_SEI_WritePictureTiming", a1);
    }
  }

  return v24;
}