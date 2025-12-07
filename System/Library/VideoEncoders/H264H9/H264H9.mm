void AVE_DAL::UCRecv(AVE_DAL *this, void *a2, unsigned int *a3, unint64_t *a4)
{
  v4 = a4;
  v6 = a2;
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCRecv", this, v6, a3, v4);
      v11 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", v11, 36, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", CurrTime, 36, LevelStr);
    }
  }

  if (this && a3 && v4 > 0)
  {
    if (*(this + 28))
    {
      if (*(this + 15))
      {
        v12 = AVE_DAL::SetThreadPolicy(this);
        if (v12)
        {
          v13 = v12;
          if (AVE_Log_CheckLevel(0x24u, 4))
          {
            v14 = AVE_Log_CheckConsole(0x24u);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v15, 36, v16, "AVE_DAL", "UCRecv", 1184, "ret == 0", this, *this, v13);
              v17 = AVE_GetCurrTime();
              v44 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v17, 36, v44, "AVE_DAL");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v15, 36, v16, "AVE_DAL");
            }
          }

          v25 = 5;
        }

        else
        {
          v30 = AVE_IOReturn2RetCode(v6);
          v31 = *a3;
          v32 = a3[2];
          v33 = a3[4];
          if (AVE_Log_CheckLevel(0x24u, 8))
          {
            v34 = v6;
            v35 = AVE_Log_CheckConsole(0x24u);
            v36 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(8);
            if (v35)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d\n", v36, 36, v37, "AVE_DAL", "UCRecv", 1192, this, *this, v30, v31, v32, v33);
              v38 = AVE_GetCurrTime();
              v47 = AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d", v38, 36, v47, "AVE_DAL");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d", v36, 36, v37, "AVE_DAL");
            }

            v6 = v34;
          }

          v13 = (*(this + 15))(*(this + 16), v30, v31, v32, v33);
          if (v13)
          {
            v25 = 5;
          }

          else
          {
            v25 = 8;
          }
        }

        goto LABEL_34;
      }

      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x24u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p\n", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null", this, v6, a3, v4, *(this + 15), *(this + 16));
          v29 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p", v29, 36, v46, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null");
        }
      }
    }

    else if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x24u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d\n", v23, 36, v24, "AVE_DAL", "UCRecv", 1175, "pDAL->m_iThreadState != 0", this, v6, a3, v4, *(this + 28));
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d", v23, 36, v24, "AVE_DAL", "UCRecv");
    }

    v25 = 5;
    v13 = -1011;
    goto LABEL_34;
  }

  if (AVE_Log_CheckLevel(0x24u, 4))
  {
    v18 = AVE_Log_CheckConsole(0x24u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d\n", v19, 36, v20, "AVE_DAL", "UCRecv", 1169, "pCtx != __null && pArgs != __null && num > 0", this, v6, a3, v4);
      v21 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d", v21, 36, v45, "AVE_DAL", "UCRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d", v19, 36, v20, "AVE_DAL", "UCRecv");
    }
  }

  v25 = 5;
  v13 = -1001;
LABEL_34:
  if (AVE_Log_CheckLevel(0x24u, v25))
  {
    v39 = AVE_Log_CheckConsole(0x24u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(v25);
    if (v39)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d\n", v40, 36, v41, "AVE_DAL", "UCRecv", this, v6, a3, v4, v13);
      v42 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v42, 36, v48);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v40, 36, v41);
    }
  }
}

uint64_t AVE_DAL::SetThreadPolicy(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetThreadPolicy", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  AVE_Mutex_Lock(*(this + 6));
  if (*(this + 16) <= 0)
  {
    AVE_Mutex_Unlock(*(this + 6));
  }

  else
  {
    v5 = AVE_DAL::AdjustThreadPolicy(this, *(this + 14), *(this + 15));
    *(this + 16) = 0;
    AVE_Mutex_Unlock(*(this + 6));
    if (v5)
    {
      v6 = 4;
      goto LABEL_11;
    }
  }

  v5 = 0;
  v6 = 8;
LABEL_11:
  if (AVE_Log_CheckLevel(0x24u, v6))
  {
    v7 = AVE_Log_CheckConsole(0x24u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(v6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 36, v9, "AVE_DAL", "SetThreadPolicy", this, *this, v5);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 36);
  }

  return v5;
}

BOOL AVE_Log_CheckLevel(unsigned int a1, int a2)
{
  if (a2 >= 0)
  {
    LOBYTE(v2) = a2;
  }

  else
  {
    v2 = -a2;
  }

  return a1 < 5 || a1 <= 0xFF && (v2 & 0xFu) <= (gs_sAVE_Log[a1] & 0xFu);
}

uint64_t AVE_Mutex_Lock(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_lock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t AVE_Mutex_Unlock(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_unlock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t AVE_IOReturn2RetCode(int a1)
{
  v1 = &dword_2954FC00C;
  v2 = 26;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 4294966296;
    }
  }

  return *(v1 - 1);
}

void H264VideoEncoderFrameReceiver::FrameDone(H264VideoEncoderFrameReceiver *this, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = this + 137804;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v10 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d\n", CurrTime, 46, LevelStr, "FrameDone", a2, a3, a4, a5);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d", CurrTime);
  }

  if (!*(this + 3666) || !*(v9 + 1))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x2Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d\n", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(this + 3666), *(v9 + 1));
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(this + 3666), *(v9 + 1));
    }

    goto LABEL_348;
  }

  if (a2 != -1023)
  {
    if (!a2)
    {
      goto LABEL_22;
    }

    if (a2 != -1004)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v20 = AVE_Log_CheckConsole(3u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.\n", v21, 3, v22, "FrameDone", 3568, "result == 0");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.");
      }

      goto LABEL_348;
    }
  }

  if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v13 = AVE_Log_CheckConsole(0x2Eu);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources\n", v14, 46, v15);
      v16 = AVE_GetCurrTime();
      v331 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v16, 46, v331);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v14, 46, v15);
    }
  }

LABEL_22:
  v363 = (this + 137792);
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v23 = a5;
    v24 = AVE_Log_CheckConsole(0x2Eu);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(7);
    if (v24)
    {
      printf("%lld %d AVE %s: \nH264FrameRec: counter received = %d\n", v25, 46, v26, a4);
      v27 = AVE_GetCurrTime();
      v332 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v27, 46, v332, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v25, 46, v26, a4);
    }

    a5 = v23;
  }

  v368[0] = 0;
  AVE_DAL::Idx2Addr(*(this + 3666), a4, v368);
  v28 = v368[0];
  kdebug_trace();
  v367 = v28;
  v29 = *(v28 + 4);
  v364 = a5;
  v365 = a4;
  if (v29 <= 6)
  {
    if (v29 == 5)
    {
      if (a2 != -1023 && a2 != -1004)
      {
        v357 = a2;
        if (AVE_Log_CheckLevel(0x2Eu, 7))
        {
          v59 = AVE_Log_CheckConsole(0x2Eu);
          v60 = AVE_GetCurrTime();
          v61 = AVE_Log_GetLevelStr(7);
          if (v59)
          {
            printf("%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d\n", v60, 46, v61, "FrameDone", 3788, a4, *(v28 + 40));
            v60 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d", v60);
        }

        v356 = v9;
        v215 = 0;
        v216 = v28 + 2620;
        v217 = (this + 26712);
        do
        {
          v218 = *(v216 + 4 * v215);
          if (v218)
          {
            v219 = IOSurfaceLookup(v218);
            *v217 = v219;
            IOSurfaceLock(v219, 0, 0);
            *(v217 - 30) = IOSurfaceGetBaseAddress(*v217);
            *(this + v215 + 6738) = IOSurfaceGetAllocSize(*v217);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v220 = AVE_Log_CheckConsole(0x2Eu);
              v221 = AVE_GetCurrTime();
              v222 = AVE_Log_GetLevelStr(7);
              v223 = *(v216 + 4 * v215);
              v224 = *(v217 - 30);
              if (v220)
              {
                printf("%lld %d AVE %s: %s:%d CodedData %d %d %p %p\n", v221, 46, v222, "FrameDone", 3802, v215, v223, *v217, v224);
                v225 = AVE_GetCurrTime();
                v226 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d CodedData %d %d %p %p", v225, 46, v226, "FrameDone", 3802, v215, *(v216 + 4 * v215), *v217, *(v217 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d CodedData %d %d %p %p", v221, 46, v222, "FrameDone", 3802, v215, v223, *v217, v224);
              }
            }
          }

          ++v215;
          ++v217;
        }

        while (v215 != 30);
        v227 = (v367 + 2740);
        v228 = (this + 27312);
        v229 = -30;
        do
        {
          if (*v227)
          {
            v230 = IOSurfaceLookup(*v227);
            *v228 = v230;
            IOSurfaceLock(v230, 0, 0);
            *(v228 - 30) = IOSurfaceGetBaseAddress(*v228);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v231 = AVE_Log_CheckConsole(0x2Eu);
              v232 = AVE_GetCurrTime();
              v233 = AVE_Log_GetLevelStr(7);
              v234 = *v227;
              v235 = *(v228 - 30);
              if (v231)
              {
                printf("%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p\n", v232, 46, v233, "FrameDone", 3818, v229 + 30, v234, *v228, v235);
                v236 = AVE_GetCurrTime();
                v237 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p", v236, 46, v237, "FrameDone", 3818, v229 + 30, *v227, *v228, *(v228 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p", v232, 46, v233, "FrameDone", 3818, v229 + 30, v234, *v228, v235);
              }
            }
          }

          ++v228;
          ++v227;
          v238 = __CFADD__(v229++, 1);
        }

        while (!v238);
        v239 = (v367 + 2860);
        v240 = (this + 27792);
        v241 = -30;
        do
        {
          if (*v239)
          {
            v242 = IOSurfaceLookup(*v239);
            *v240 = v242;
            IOSurfaceLock(v242, 0, 0);
            *(v240 - 30) = IOSurfaceGetBaseAddress(*v240);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v243 = AVE_Log_CheckConsole(0x2Eu);
              v244 = AVE_GetCurrTime();
              v245 = AVE_Log_GetLevelStr(7);
              v246 = *v239;
              v247 = *(v240 - 30);
              if (v243)
              {
                printf("%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p\n", v244, 46, v245, "FrameDone", 3834, v241 + 30, v246, *v240, v247);
                v248 = AVE_GetCurrTime();
                v249 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p", v248, 46, v249, "FrameDone", 3834, v241 + 30, *v239, *v240, *(v240 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p", v244, 46, v245, "FrameDone", 3834, v241 + 30, v246, *v240, v247);
              }
            }
          }

          ++v240;
          ++v239;
          v238 = __CFADD__(v241++, 1);
        }

        while (!v238);
        v250 = (v367 + 2980);
        v251 = (this + 26032);
        v252 = -30;
        do
        {
          if (*v250)
          {
            v253 = IOSurfaceLookup(*v250);
            *v251 = v253;
            IOSurfaceLock(v253, 0, 0);
            *(v251 - 30) = IOSurfaceGetBaseAddress(*v251);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v254 = AVE_Log_CheckConsole(0x2Eu);
              v255 = AVE_GetCurrTime();
              v256 = AVE_Log_GetLevelStr(7);
              v257 = *v250;
              v258 = *(v251 - 30);
              if (v254)
              {
                printf("%lld %d AVE %s: %s:%d MBStats %d %d %p %p\n", v255, 46, v256, "FrameDone", 3850, v252 + 30, v257, *v251, v258);
                v259 = AVE_GetCurrTime();
                v260 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d MBStats %d %d %p %p", v259, 46, v260, "FrameDone", 3850, v252 + 30, *v250, *v251, *(v251 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d MBStats %d %d %p %p", v255, 46, v256, "FrameDone", 3850, v252 + 30, v257, *v251, v258);
              }
            }
          }

          ++v251;
          ++v250;
          v238 = __CFADD__(v252++, 1);
        }

        while (!v238);
        v261 = 0;
        v262 = v367 + 3100;
        do
        {
          v263 = *(v262 + 4 * v261);
          if (v263)
          {
            *(this + v261 + 6598) = v263;
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v264 = AVE_Log_CheckConsole(0x2Eu);
              v265 = AVE_GetCurrTime();
              v266 = AVE_Log_GetLevelStr(7);
              v267 = *(v262 + 4 * v261);
              if (v264)
              {
                printf("%lld %d AVE %s: %s:%d iaLFSResult %d %d\n", v265, 46, v266, "FrameDone", 3864, v261, v267);
                v268 = AVE_GetCurrTime();
                v269 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d iaLFSResult %d %d", v268, 46, v269, "FrameDone", 3864, v261, *(v262 + 4 * v261));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d iaLFSResult %d %d", v265, 46, v266, "FrameDone", 3864, v261, v267);
              }
            }
          }

          ++v261;
        }

        while (v261 != 10);
        v270 = 0;
        v271 = v367 + 3140;
        do
        {
          v272 = *(v271 + 4 * v270);
          if (v272)
          {
            *(this + v270 + 6608) = v272;
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v273 = AVE_Log_CheckConsole(0x2Eu);
              v274 = AVE_GetCurrTime();
              v275 = AVE_Log_GetLevelStr(7);
              v276 = *(v271 + 4 * v270);
              if (v273)
              {
                printf("%lld %d AVE %s: %s:%d iaLRSResult %d %d\n", v274, 46, v275, "FrameDone", 3876, v270, v276);
                v277 = AVE_GetCurrTime();
                v278 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d iaLRSResult %d %d", v277, 46, v278, "FrameDone", 3876, v270, *(v271 + 4 * v270));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d iaLRSResult %d %d", v274, 46, v275, "FrameDone", 3876, v270, v276);
              }
            }
          }

          ++v270;
        }

        while (v270 != 10);
        *(this + 9735) = *(v367 + 4624);
        v9 = v356;
        a2 = v357;
      }

      AVE_DAL::Free(*(this + 3666), v367);
      v362 = -1;
      goto LABEL_104;
    }

    v30 = a2;
    if (v29 == 6)
    {
      v39 = v9;
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v40 = AVE_Log_CheckConsole(0x2Eu);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(7);
        v43 = *(v9 + 12);
        if (v40)
        {
          printf("%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld \n", v41, 46, v42, *(v28 + 40), v43);
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v44, 46, v45, *(v28 + 40), *(v9 + 12));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v41, 46, v42, *(v28 + 40), v43);
        }
      }

      v86 = this + 26032;
      v87 = 30;
      do
      {
        if (*v86)
        {
          IOSurfaceUnlock(*v86, 0, 0);
          CFRelease(*v86);
          *v86 = 0;
        }

        v88 = *(v86 + 85);
        if (v88)
        {
          IOSurfaceUnlock(v88, 0, 0);
          CFRelease(*(v86 + 85));
          *(v86 + 85) = 0;
        }

        v89 = *(v86 + 160);
        if (v89)
        {
          IOSurfaceUnlock(v89, 0, 0);
          CFRelease(*(v86 + 160));
          *(v86 + 160) = 0;
        }

        v90 = *(v86 + 220);
        if (v90)
        {
          IOSurfaceUnlock(v90, 0, 0);
          CFRelease(*(v86 + 220));
          *(v86 + 220) = 0;
        }

        v86 += 8;
        --v87;
      }

      while (v87);
      AVE_DAL::Free(*(this + 3666), v367);
      v362 = -1;
      v9 = v39;
      goto LABEL_103;
    }

    goto LABEL_51;
  }

  v30 = a2;
  v31 = this + 25784;
  if (v29 == 10)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v46 = AVE_Log_CheckConsole(0x2Eu);
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(7);
      v49 = *(v28 + 40);
      if (v46)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d\n", v47, 46, v48, v49);
        v50 = AVE_GetCurrTime();
        v333 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v50, 46, v333, *(v28 + 40));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v47, 46, v48, v49);
      }
    }

    if (*v363)
    {
      AVE_MultiPass::FlushStats((this + 16), *v363, 0);
    }

    *v31 = 0;
    if (*(this + 3670))
    {
      FigFormatDescriptionRelease();
      *(this + 3670) = 0;
    }

    goto LABEL_62;
  }

  if (v29 == 8)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v51 = v30;
      v52 = AVE_Log_CheckConsole(0x2Eu);
      v53 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(7);
      v55 = *(v28 + 40);
      v56 = *(v9 + 12);
      if (v52)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld\n", v53, 46, v54, v55, v365, v56);
        v57 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v57, 46, v58, *(v28 + 40), v365, *(v9 + 12));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v53, 46, v54, v55, v365, v56);
      }

      v30 = v51;
    }

LABEL_62:
    AVE_DAL::Free(*(this + 3666), v28);
LABEL_63:
    v362 = -1;
LABEL_103:
    a2 = v30;
    goto LABEL_104;
  }

  if (v29 != 7)
  {
LABEL_51:
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v62 = AVE_Log_CheckConsole(0x2Eu);
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(4);
      v65 = *(v28 + 4);
      if (v62)
      {
        printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v63, 46, v64, v65);
        v66 = AVE_GetCurrTime();
        v334 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v66, 46, v334, *(v28 + 4));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v63, 46, v64, v65);
      }
    }

    goto LABEL_63;
  }

  v360 = a3;
  v32 = this + 38944;
  *(v28 + 33080) = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v33 = a5;
    v34 = a4;
    v35 = v30;
    v36 = AVE_Log_CheckConsole(0x2Eu);
    v37 = AVE_GetCurrTime();
    v38 = AVE_Log_GetLevelStr(7);
    if (v36)
    {
      printf("%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d\n", v37, 46, v38, *(v28 + 40), *(v28 + 2456), *(v9 + 12), v34);
      v37 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d", v37);
    v30 = v35;
    LODWORD(a4) = v34;
    a5 = v33;
    v32 = this + 38944;
  }

  if (!*(v28 + 40))
  {
    *(this + 3665) = *(v28 + 4608);
  }

  if (*(v32 + 77) >= 2u && *(v28 + 44) && *(this + 29277) == 1)
  {
    *(v28 + 2456) = 4;
  }

  v67 = *v9;
  if (*v9 == 5)
  {
    v76 = H264VideoEncoderFrameReceiver::SendOutputFrameDMV(this, v28);
    AVE_DAL::Free(*(this + 3666), v28);
    if (v76)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v77 = AVE_Log_CheckConsole(3u);
        v78 = AVE_GetCurrTime();
        v79 = AVE_Log_GetLevelStr(4);
        if (v77)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.\n", v78, 3, v79, "FrameDone", 3629, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.");
      }

      goto LABEL_344;
    }

LABEL_86:
    v362 = -1;
    a3 = v360;
    goto LABEL_103;
  }

  if (v67 == 4)
  {
    v72 = H264VideoEncoderFrameReceiver::SendFrameGGM(this, v28);
    AVE_DAL::Free(*(this + 3666), v28);
    if (v72)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v73 = AVE_Log_CheckConsole(0x2Eu);
        v74 = AVE_GetCurrTime();
        v75 = AVE_Log_GetLevelStr(4);
        if (v73)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done\n", v74, 46, v75, "FrameDone", 3620, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done");
      }

      goto LABEL_344;
    }

    goto LABEL_86;
  }

  if (v67 == 3)
  {
    v68 = H264VideoEncoderFrameReceiver::SendFrameMCTF(this, v28);
    AVE_DAL::Free(*(this + 3666), v28);
    if (v68)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v69 = AVE_Log_CheckConsole(3u);
        v70 = AVE_GetCurrTime();
        v71 = AVE_Log_GetLevelStr(4);
        if (v69)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.\n", v70, 3, v71, "FrameDone", 3613, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.");
      }

      goto LABEL_344;
    }

    goto LABEL_86;
  }

  v80 = *(v28 + 2456);
  if (v80 >= 4)
  {
    if (v80 == 4)
    {
      a2 = v30;
      if (AVE_Log_CheckLevel(0x2Eu, 5))
      {
        v287 = AVE_Log_CheckConsole(0x2Eu);
        v288 = AVE_GetCurrTime();
        v289 = AVE_Log_GetLevelStr(5);
        v290 = *(v28 + 40);
        v291 = *(v28 + 2456);
        if (v287)
        {
          printf("%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d\n", v288, 46, v289, v290, v291);
          v292 = AVE_GetCurrTime();
          v293 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v292, 46, v293, *(v28 + 40), *(v28 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v288, 46, v289, v290, v291);
        }
      }

      v104 = H264VideoEncoderFrameReceiver::DropFrame(this, v28);
      v297 = 0;
      v308 = 0;
      v319 = -1;
LABEL_367:
      v362 = v319;
      goto LABEL_368;
    }

    if (v80 != 6)
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        a2 = v30;
        v210 = AVE_Log_CheckConsole(0x2Eu);
        v211 = AVE_GetCurrTime();
        v212 = AVE_Log_GetLevelStr(4);
        v213 = *(v28 + 2456);
        if (v210)
        {
          printf("%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.\n", v211, 46, v212, v213);
          v214 = AVE_GetCurrTime();
          v342 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.", v214, 46, v342, *(v28 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.", v211, 46, v212, v213);
        }

        v297 = 0;
        v308 = 0;
        v104 = 0;
        v362 = -1;
      }

      else
      {
        v297 = 0;
        v308 = 0;
        v104 = 0;
        v362 = -1;
        a2 = v30;
      }

      goto LABEL_368;
    }
  }

  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v81 = v30;
    v82 = AVE_Log_CheckConsole(0x2Eu);
    v83 = AVE_GetCurrTime();
    v84 = AVE_Log_GetLevelStr(8);
    if (v82)
    {
      printf("%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d\n", v83, 46, v84, "AVE_FrameRecv", "FrameDone", 3645, *v9, *(v28 + 40), *(v28 + 2456), *(this + 3670), *v31, *(v32 + 126), *(v28 + 6081));
      v85 = AVE_GetCurrTime();
      v335 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d", v85, 46, v335, "AVE_FrameRecv", "FrameDone");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d", v83, 46, v84, "AVE_FrameRecv", "FrameDone");
    }

    v30 = v81;
    a5 = v364;
  }

  v279 = *(this + 3670);
  if (v279 || *v31 == 1)
  {
    a2 = v30;
    if (*(v32 + 126) == 2 && *(v28 + 6081) == 1)
    {
      if (v279)
      {
        FigFormatDescriptionRelease();
        *(this + 3670) = 0;
      }

      if (H264VideoEncoderFrameReceiver::SendPS(this, v28))
      {
        a3 = v360;
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v280 = a5;
          v281 = AVE_Log_CheckConsole(0x2Eu);
          v282 = AVE_GetCurrTime();
          v283 = AVE_Log_GetLevelStr(4);
          if (v281)
          {
            v284 = v367;
            v349 = v367;
            v285 = this;
            v346 = this;
            v286 = 3667;
LABEL_326:
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p\n", v282, 46, v283, "AVE_FrameRecv", "FrameDone", v286, "ret == 0", v346, v349);
            v282 = AVE_GetCurrTime();
            v347 = v285;
            v350 = v284;
            v345 = v286;
            a2 = v30;
            a3 = v360;
            v343 = AVE_Log_GetLevelStr(4);
            v295 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
LABEL_386:
            syslog(3, v295, v282, 46, v343, "AVE_FrameRecv", "FrameDone", v345, "ret == 0", v347, v350, v352);
            LODWORD(a5) = v280;
            goto LABEL_344;
          }

          v350 = v367;
          v347 = this;
          v330 = 3667;
          goto LABEL_385;
        }

        goto LABEL_344;
      }
    }
  }

  else
  {
    a2 = v30;
    if (*v9 == 1 && H264VideoEncoderFrameReceiver::SendPS(this, v28))
    {
      a3 = v360;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v280 = a5;
        v294 = AVE_Log_CheckConsole(0x2Eu);
        v282 = AVE_GetCurrTime();
        v283 = AVE_Log_GetLevelStr(4);
        if (v294)
        {
          v284 = v367;
          v349 = v367;
          v285 = this;
          v346 = this;
          v286 = 3675;
          goto LABEL_326;
        }

        v350 = v367;
        v347 = this;
        v330 = 3675;
LABEL_385:
        v345 = v330;
        v343 = v283;
        v295 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
        goto LABEL_386;
      }

LABEL_344:
      v312 = *(v367 + 2600);
      if (v312)
      {
        CVPixelBufferRelease(v312);
        *(v367 + 2600) = 0;
      }

      v313 = *(v367 + 2608);
      if (v313)
      {
        CVPixelBufferRelease(v313);
        *(v367 + 2608) = 0;
      }

      goto LABEL_348;
    }
  }

  v296 = *(v32 + 1) - 1;
  v297 = v296 == a5;
  if ((a5 & 0x80000000) != 0 || !*v32)
  {
    v304 = *v9;
    if (*v9 == 2)
    {
      if (H264VideoEncoderFrameReceiver::ProcessAndEmitLrmeStats(this, v367))
      {
        a3 = v360;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v305 = AVE_Log_CheckConsole(3u);
          v306 = AVE_GetCurrTime();
          v307 = AVE_Log_GetLevelStr(4);
          if (v305)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed\n", v306, 3, v307, "FrameDone", 3704, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            a3 = v360;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed");
        }

        goto LABEL_344;
      }

      v308 = 0;
      v319 = a5;
      v104 = 0;
    }

    else
    {
      if (*v32)
      {
        v308 = 0;
        v309 = a5;
        v104 = 0;
        v362 = v309;
LABEL_369:
        if (v304 == 1)
        {
          v322 = *(v32 + 219);
          v323 = AVE_GetCurrTime();
          AVE_TimeStats_AddEndTime(v322, 5u, v323);
        }

        a3 = v360;
        if (v104 && AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v324 = v9;
          v325 = a2;
          v326 = AVE_Log_CheckConsole(0x2Eu);
          v327 = AVE_GetCurrTime();
          v328 = AVE_Log_GetLevelStr(4);
          if (v326)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.\n", v327, 46, v328);
            v329 = AVE_GetCurrTime();
            v344 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v329, 46, v344);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v327, 46, v328);
          }

          a2 = v325;
          v9 = v324;
        }

        AVE_DAL::Free(*(this + 3666), v367);
        if (v297 || (v308 & 1) == 0)
        {
          goto LABEL_104;
        }

        if (!v308)
        {
          goto LABEL_121;
        }

        goto LABEL_379;
      }

      if (H264VideoEncoderFrameReceiver::CollectSlicesInfo(this, *(v367 + 3180), *(v367 + 44)))
      {
        a3 = v360;
        if (!AVE_Log_CheckLevel(0x2Eu, 4))
        {
          goto LABEL_344;
        }

        v280 = a5;
        v318 = AVE_Log_CheckConsole(0x2Eu);
        v282 = AVE_GetCurrTime();
        v299 = AVE_Log_GetLevelStr(4);
        if (v318)
        {
          v300 = v367;
          v351 = *(v367 + 3180);
          v353 = *(v367 + 44);
          v301 = this;
          v348 = this;
          v302 = 3716;
          goto LABEL_333;
        }

        v350 = *(v367 + 3180);
        v352 = *(v367 + 44);
        v347 = this;
        v320 = 3716;
LABEL_361:
        v345 = v320;
        v343 = v299;
        v295 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
        goto LABEL_386;
      }

      v370 = 0;
      *v368 = 0u;
      v369 = 0u;
      Connection::peekPacket(*(this + 3667), v368);
      v321 = H264VideoEncoderFrameReceiver::SendFrame(this, v367, v368, 0xFFFFFFFFLL);
      v319 = a5;
      v104 = v321;
      v308 = 0;
    }

    goto LABEL_367;
  }

  if (H264VideoEncoderFrameReceiver::CollectSlicesInfo(this, *(v367 + 3180), *(v367 + 44)))
  {
    a3 = v360;
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_344;
    }

    v280 = a5;
    v298 = AVE_Log_CheckConsole(0x2Eu);
    v282 = AVE_GetCurrTime();
    v299 = AVE_Log_GetLevelStr(4);
    if (v298)
    {
      v300 = v367;
      v351 = *(v367 + 3180);
      v353 = *(v367 + 44);
      v301 = this;
      v348 = this;
      v302 = 3692;
LABEL_333:
      printf("%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d\n", v282, 46, v299, "AVE_FrameRecv", "FrameDone", v302, "ret == 0", v348, v351, v353);
      v282 = AVE_GetCurrTime();
      v303 = AVE_Log_GetLevelStr(4);
      v350 = *(v300 + 3180);
      v352 = *(v300 + 44);
      v347 = v301;
      v345 = v302;
      a2 = v30;
      v343 = v303;
      a3 = v360;
      v295 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
      goto LABEL_386;
    }

    v350 = *(v367 + 3180);
    v352 = *(v367 + 44);
    v347 = this;
    v320 = 3692;
    goto LABEL_361;
  }

  v370 = 0;
  *v368 = 0u;
  v369 = 0u;
  Connection::peekPacket(*(this + 3667), v368);
  v310 = H264VideoEncoderFrameReceiver::SendFrame(this, v367, v368, a5);
  v311 = a5;
  v104 = v310;
  if (v296 == v311)
  {
    v297 = 1;
    v362 = v311;
    v308 = 1;
LABEL_368:
    v304 = *v9;
    goto LABEL_369;
  }

  v362 = v311;
  a3 = v360;
LABEL_379:
  if (*(v367 + 2456) != 4)
  {
LABEL_121:
    v105 = *(v367 + 4);
    if (v105 <= 6)
    {
      if (v105 == 5)
      {
        *v368 = 0u;
        v369 = 0u;
        LODWORD(a4) = v365;
        LODWORD(v368[0]) = v365;
        v370 = a2;
        v118 = Connection::writePacketBlock(*(this + 3668), v368);
        if (v104)
        {
          LODWORD(a5) = v364;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_344;
          }

          v119 = AVE_Log_CheckConsole(3u);
          v113 = AVE_GetCurrTime();
          v114 = AVE_Log_GetLevelStr(4);
          if (!v119)
          {
            goto LABEL_302;
          }

          v115 = 4018;
          goto LABEL_167;
        }

        if (!v118)
        {
          goto LABEL_174;
        }

        LODWORD(a5) = v364;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_344;
        }

        v129 = AVE_Log_CheckConsole(3u);
        v126 = AVE_GetCurrTime();
        v127 = AVE_Log_GetLevelStr(4);
        if (!v129)
        {
          goto LABEL_343;
        }

        v128 = 4019;
      }

      else
      {
        LODWORD(a4) = v365;
        if (v105 != 6)
        {
          goto LABEL_146;
        }

        *v368 = 0u;
        v369 = 0u;
        LODWORD(v368[0]) = v365;
        v370 = a2;
        v111 = Connection::writePacketBlock(*(this + 3668), v368);
        if (v104)
        {
          LODWORD(a5) = v364;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_344;
          }

          v112 = AVE_Log_CheckConsole(3u);
          v113 = AVE_GetCurrTime();
          v114 = AVE_Log_GetLevelStr(4);
          if (!v112)
          {
            goto LABEL_302;
          }

          v115 = 4034;
LABEL_167:
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.\n", v113, 3, v114, "FrameDone", v115, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_302;
        }

        if (!v111)
        {
          goto LABEL_174;
        }

        LODWORD(a5) = v364;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_344;
        }

        v130 = AVE_Log_CheckConsole(3u);
        v126 = AVE_GetCurrTime();
        v127 = AVE_Log_GetLevelStr(4);
        if (!v130)
        {
          goto LABEL_343;
        }

        v128 = 4035;
      }
    }

    else
    {
      LODWORD(a4) = v365;
      if (v105 == 7)
      {
        goto LABEL_174;
      }

      if (v105 != 10)
      {
        if (v105 == 8)
        {
          *v368 = 0u;
          v369 = 0u;
          LODWORD(v368[0]) = v365;
          v370 = a2;
          if (AVE_Log_CheckLevel(0x2Eu, 7))
          {
            v106 = AVE_Log_CheckConsole(0x2Eu);
            v107 = AVE_GetCurrTime();
            v108 = AVE_Log_GetLevelStr(7);
            if (v106)
            {
              printf("%lld %d AVE %s: H264FrameRec: writePacketBlock = %d\n", v107, 46, v108, v365);
              v109 = AVE_GetCurrTime();
              v110 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v109, 46, v110, v365);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v107, 46, v108, v365);
            }

            LODWORD(a4) = v365;
          }

          v131 = Connection::writePacketBlock(*(this + 3668), v368);
          if (v104)
          {
            LODWORD(a5) = v364;
            if (!AVE_Log_CheckLevel(3u, 4))
            {
              goto LABEL_344;
            }

            v132 = AVE_Log_CheckConsole(3u);
            v113 = AVE_GetCurrTime();
            v114 = AVE_Log_GetLevelStr(4);
            if (v132)
            {
              v115 = 4002;
              goto LABEL_167;
            }

LABEL_302:
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.");
            goto LABEL_344;
          }

          if (v131)
          {
            LODWORD(a5) = v364;
            if (!AVE_Log_CheckLevel(3u, 4))
            {
              goto LABEL_344;
            }

            v133 = AVE_Log_CheckConsole(3u);
            v126 = AVE_GetCurrTime();
            v127 = AVE_Log_GetLevelStr(4);
            if (v133)
            {
              v128 = 4003;
              goto LABEL_172;
            }

LABEL_343:
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread");
            goto LABEL_344;
          }

LABEL_174:
          LODWORD(a5) = v364;
          if ((AVE_DW_Get()[103] & 0x20) != 0)
          {
            v361 = a3;
            v134 = this + 139568;
            v135 = *(this + 2 * *(v367 + 40) + 17447);
            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v136 = AVE_Log_CheckConsole(0x2Eu);
              v137 = AVE_GetCurrTime();
              v138 = AVE_Log_GetLevelStr(8);
              if (v136)
              {
                printf("%lld %d AVE %s: \n", v137, 46, v138);
                v139 = AVE_GetCurrTime();
                v338 = AVE_Log_GetLevelStr(8);
                v134 = this + 139568;
                syslog(3, "%lld %d AVE %s: ", v139, 46, v338);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: ", v137, 46, v138);
              }
            }

            v140 = v135;
            v141 = *(v367 + 40) - 1;
            v355 = v9;
            v358 = a2;
            if (v141 < 0)
            {
              v151 = 0;
              LODWORD(v143) = 0;
              v152 = 0;
              *(v367 + 34744) = 0;
              v145 = 0.0;
            }

            else
            {
              v354 = *(v367 + 40);
              v142 = 0;
              LODWORD(v143) = 0;
              while (1)
              {
                v144 = &v134[16 * v141];
                v145 = (v140 - v144[1]) / *(v367 + 4616);
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v146 = AVE_Log_CheckConsole(0x2Eu);
                  v147 = AVE_GetCurrTime();
                  v148 = AVE_Log_GetLevelStr(8);
                  v149 = *(v367 + 40);
                  if (v146)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v147, 46, v148, v149, v141, v143, v145, v142);
                    v150 = AVE_GetCurrTime();
                    v134 = this + 139568;
                    v339 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v150, 46, v339, *(v367 + 40), v141, v143, v145, v142);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v147, 46, v148, v149, v141, v143, v145, v142);
                  }
                }

                v143 = *v144 + v143;
                if (v145 >= 0.1)
                {
                  break;
                }

                --v141;
                ++v142;
                if (v141 == -1)
                {
                  v151 = v354;
                  goto LABEL_190;
                }
              }

              v151 = v142 + 1;
LABEL_190:
              *(v367 + 34744) = v143;
              if (v145 == 0.0)
              {
                v152 = 0;
              }

              else
              {
                v152 = (v143 / v145);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v153 = AVE_Log_CheckConsole(0x2Eu);
              v154 = AVE_GetCurrTime();
              v155 = AVE_Log_GetLevelStr(8);
              if (v153)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d\n", v154, 46, v155, *(v367 + 40), v151, v143, v145, v152);
                v156 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d", v156);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d", v154);
              }
            }

            v157 = *(v367 + 40);
            v158 = v157 - 1;
            if (v157 - 1 < 0)
            {
              v160 = 0;
              LODWORD(v159) = 0;
              v168 = 0;
              *(v367 + 34752) = 0;
              v162 = 0.0;
            }

            else
            {
              LODWORD(v159) = 0;
              v160 = 1;
              while (1)
              {
                v161 = &v134[16 * v158];
                v162 = (v140 - v161[1]) / *(v367 + 4616);
                v159 = *v161 + v159;
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v163 = AVE_Log_CheckConsole(0x2Eu);
                  v164 = AVE_GetCurrTime();
                  v165 = AVE_Log_GetLevelStr(8);
                  v166 = *(v367 + 40);
                  if (v163)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v164, 46, v165, v166, v158, v159, v162, v160);
                    v167 = AVE_GetCurrTime();
                    v340 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v167, 46, v340, *(v367 + 40), v158, v159, v162, v160);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v164, 46, v165, v166, v158, v159, v162, v160);
                  }
                }

                if (v162 >= 0.5)
                {
                  break;
                }

                --v158;
                ++v160;
                if (v158 == -1)
                {
                  v160 = v157;
                  break;
                }
              }

              *(v367 + 34752) = v159;
              if (v162 == 0.0)
              {
                v168 = 0;
              }

              else
              {
                v168 = (v159 / v162);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v169 = AVE_Log_CheckConsole(0x2Eu);
              v170 = AVE_GetCurrTime();
              v171 = AVE_Log_GetLevelStr(8);
              if (v169)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v170, 46, v171, *(v367 + 40), v160, v159, v162, v168);
                v172 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v172);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v170);
              }
            }

            if (*(v367 + 40) - 1 <= 0)
            {
              v174 = 0;
              LODWORD(v173) = 0;
              v185 = 0;
              *(v367 + 34760) = 0;
              v177 = 0.0;
            }

            else
            {
              LODWORD(v173) = 0;
              v174 = 1;
              v359 = *(v367 + 40) - 1;
              v175 = v359;
              while (1)
              {
                v176 = &v134[16 * v175];
                v177 = (v140 - v176[1]) / *(v367 + 4616);
                v173 = *v176 + v173;
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v178 = AVE_Log_CheckConsole(0x2Eu);
                  v179 = AVE_GetCurrTime();
                  v180 = AVE_Log_GetLevelStr(8);
                  v181 = *(v367 + 40);
                  v182 = *v176;
                  if (v178)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d\n", v179, 46, v180, v181, v175, v173, v182, v177, v174);
                    v183 = AVE_GetCurrTime();
                    v184 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d", v183, 46, v184, *(v367 + 40), v175, v173, *v176, v177, v174);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d", v179, 46, v180, v181, v175, v173, v182, v177, v174);
                  }
                }

                if (v177 >= 1.0)
                {
                  break;
                }

                ++v174;
                if (!--v175)
                {
                  v174 = v359;
                  break;
                }
              }

              *(v367 + 34760) = v173;
              if (v177 == 0.0)
              {
                v185 = 0;
              }

              else
              {
                v185 = (v173 / v177);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v186 = AVE_Log_CheckConsole(0x2Eu);
              v187 = AVE_GetCurrTime();
              v188 = AVE_Log_GetLevelStr(8);
              if (v186)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######\n", v187, 46, v188, *(v367 + 40), v174, v173, v177, v185);
                v189 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######", v189);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######", v187);
              }
            }

            v190 = *(v367 + 40);
            v191 = v190 - 1;
            if (v190 - 1 < 0)
            {
              v193 = 0;
              LODWORD(v192) = 0;
              v202 = 0;
              *(v367 + 34768) = 0;
              v195 = 0.0;
              LODWORD(a4) = v365;
              v201 = v355;
            }

            else
            {
              LODWORD(v192) = 0;
              v193 = 1;
              LODWORD(a4) = v365;
              while (1)
              {
                v194 = &v134[16 * v191];
                v195 = (v140 - v194[1]) / *(v367 + 4616);
                v192 = *v194 + v192;
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v196 = AVE_Log_CheckConsole(0x2Eu);
                  v197 = AVE_GetCurrTime();
                  v198 = AVE_Log_GetLevelStr(8);
                  v199 = *(v367 + 40);
                  if (v196)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v197, 46, v198, v199, v191, v192, v195, v193);
                    v200 = AVE_GetCurrTime();
                    LODWORD(a4) = v365;
                    v341 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v200, 46, v341, *(v367 + 40), v191, v192, v195, v193);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v197, 46, v198, v199, v191, v192, v195, v193);
                  }
                }

                if (v195 >= 2.0)
                {
                  break;
                }

                --v191;
                ++v193;
                if (v191 == -1)
                {
                  v193 = v190;
                  break;
                }
              }

              *(v367 + 34768) = v192;
              v201 = v355;
              if (v195 == 0.0)
              {
                v202 = 0;
              }

              else
              {
                v202 = (v192 / v195);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v203 = AVE_Log_CheckConsole(0x2Eu);
              v204 = AVE_GetCurrTime();
              v205 = AVE_Log_GetLevelStr(8);
              if (v203)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v204, 46, v205, *(v367 + 40), v193, v192, v195, v202);
                v206 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v206);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v204);
              }
            }

            v207 = *(this + 9897);
            *(this + 137852) = (*(this + 29992) & 2) != 0;
            v208 = *(v201 + 1);
            *(this + 34461) = v207;
            *(this + 34462) = v208;
            *(this + 34460) = AVE_DW_Get()[104] & 0x20;
            *(this + 137853) = *(this + 38944);
            *(this + 34464) = v362;
            File = AVE_Dump_FindFile(*(this + 5088), 5u, *(v367 + 24));
            AVE_FrameStats_PrintStatFrame(this + 34460, v367, File);
            memcpy(this + 137864, (v367 + 33048), 0x698uLL);
            *(this + 8722) = *(v367 + 4608);
            a2 = v358;
            a3 = v361;
            LODWORD(a5) = v364;
          }

          goto LABEL_344;
        }

LABEL_146:
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v120 = AVE_Log_CheckConsole(0x2Eu);
          v121 = AVE_GetCurrTime();
          v122 = AVE_Log_GetLevelStr(4);
          v123 = *(v367 + 4);
          if (v120)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v121, 46, v122, v123);
            v124 = AVE_GetCurrTime();
            v337 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v124, 46, v337, *(v367 + 4));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v121, 46, v122, v123);
          }
        }

        goto LABEL_174;
      }

      *v368 = 0u;
      v369 = 0u;
      LODWORD(v368[0]) = v365;
      v370 = a2;
      v116 = Connection::writePacketBlock(*(this + 3668), v368);
      if (v104)
      {
        LODWORD(a5) = v364;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_344;
        }

        v117 = AVE_Log_CheckConsole(3u);
        v113 = AVE_GetCurrTime();
        v114 = AVE_Log_GetLevelStr(4);
        if (!v117)
        {
          goto LABEL_302;
        }

        v115 = 4050;
        goto LABEL_167;
      }

      if (!v116)
      {
        goto LABEL_174;
      }

      LODWORD(a5) = v364;
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_344;
      }

      v125 = AVE_Log_CheckConsole(3u);
      v126 = AVE_GetCurrTime();
      v127 = AVE_Log_GetLevelStr(4);
      if (!v125)
      {
        goto LABEL_343;
      }

      v128 = 4051;
    }

LABEL_172:
    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread\n", v126, 3, v127, "FrameDone", v128, "ret == 0");
    AVE_GetCurrTime();
    AVE_Log_GetLevelStr(4);
    goto LABEL_343;
  }

LABEL_104:
  a5 = *(this + 3667);
  pthread_mutex_lock(a5);
  do
  {
    v92 = *(a5 + 208);
    v91 = *(a5 + 216);
    if (v91 > v92)
    {
      v97 = v92 + 1;
      *(a5 + 208) = v97;
      v98 = v91 <= v97;
      v99 = v91 - v97;
      if (v98)
      {
        v99 = 0;
      }

      if (v99 < *(a5 + 200))
      {
        pthread_cond_signal((a5 + 112));
      }

      pthread_mutex_unlock(a5);
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v100 = AVE_Log_CheckConsole(0x2Eu);
        v101 = AVE_GetCurrTime();
        v102 = AVE_Log_GetLevelStr(7);
        if (v100)
        {
          printf("%lld %d AVE %s: H264FrameRec: readPacketBlock = %d\n", v101, 46, v102, v365);
          v103 = AVE_GetCurrTime();
          v336 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: readPacketBlock = %d", v103, 46, v336, v365);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: readPacketBlock = %d", v101, 46, v102, v365);
        }
      }

      v104 = 0;
      goto LABEL_121;
    }

    gettimeofday((a5 + 176), 0);
    v93 = 1000 * *(a5 + 184);
    *(a5 + 160) = *(a5 + 176) + 120;
    *(a5 + 168) = v93;
  }

  while (pthread_cond_timedwait((a5 + 64), a5, (a5 + 160)) != 60);
  pthread_mutex_unlock(a5);
  LODWORD(a5) = v364;
  if (AVE_Log_CheckLevel(3u, 4))
  {
    v94 = AVE_Log_CheckConsole(3u);
    v95 = AVE_GetCurrTime();
    v96 = AVE_Log_GetLevelStr(4);
    if (v94)
    {
      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d\n", v95, 3, v96, "FrameDone", 3978, "err == noErr", -1);
      v95 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d", v95);
  }

  LODWORD(a4) = v365;
  if (v367)
  {
    goto LABEL_344;
  }

LABEL_348:
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v314 = AVE_Log_CheckConsole(0x2Eu);
    v315 = AVE_GetCurrTime();
    v316 = AVE_Log_GetLevelStr(8);
    if (v314)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d\n", v315, 46, v316, "FrameDone", a2, a3, a4, a5);
      v317 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v317);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v315);
    }
  }
}

BOOL AVE_DLList_Empty(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Empty_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_Empty_cold_2();
  }

  v1 = a1[1];
  if (!v1)
  {
    AVE_DLList_Empty_cold_1();
  }

  return *a1 == a1 || v1 == a1;
}

uint64_t AVE_Session_AVC_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  theDict = v10;
  v119 = v9;
  v120 = v11;
  v121 = v12;
  v14 = v13;
  v117 = v15;
  v122 = v8;
  v162 = *MEMORY[0x29EDCA608];
  pixelBuffer = v13;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v137 = 0uLL;
  v16 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v17 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_Process", v122, v117, v14, v119, v120, v121, theDict);
      v20 = AVE_GetCurrTime();
      v111 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v20, 12, v111, "AVE_Session_AVC_Process", v122);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_Process", v122);
    }
  }

  if (v121 && v120 && v119 && v122 && pixelBuffer)
  {
    if (!*(v122 + 16468))
    {
      v35 = AVE_SEI::SetSEIBits(*(v122 + 16488), *(v122 + 1096));
      if (v35)
      {
        PerFrameData = v35;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v37 = AVE_Log_CheckConsole(3u);
          v38 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(4);
          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v38, 3, v39, "AVE_Session_AVC_Process", 5104, "ret == 0");
            v40 = AVE_GetCurrTime();
            v113 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v40, 3, v113, "AVE_Session_AVC_Process", 5104, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v38, 3, v39, "AVE_Session_AVC_Process", 5104, "ret == 0");
          }
        }

        goto LABEL_69;
      }

      v63 = *(v122 + 12000);
      v64 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v63, 5u, v64);
    }

    v21 = AVE_GetCurrTime();
    v140 = *v120;
    v141 = v120[2];
    v138 = *v121;
    v139 = v121[2];
    *&v137 = v140;
    DWORD2(v137) = DWORD2(v140);
    AVE_Time_Conv(0, &v137);
    if (AVE_Log_CheckLevel(0x33u, 7))
    {
      v22 = AVE_Log_CheckConsole(0x33u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      v25 = *(v122 + 56);
      v26 = *(v122 + 16468);
      v27 = *v120;
      v28 = *(v120 + 2);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v23, 51, v24, "AVE_Session_AVC_Process", 5124, v25, v26, v27, v28, *(v120 + 3), v120[2], v137, DWORD2(v137), *v121, *(v121 + 2), *(v121 + 3), v121[2]);
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v29, 51, v30, "AVE_Session_AVC_Process", 5124, *(v122 + 56), *(v122 + 16468), *v120, *(v120 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v23, 51, v24, "AVE_Session_AVC_Process", 5124, v25, v26, v27, v28);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v122 + 18080) = PixelFormatType;
    if (!*(v122 + 16468))
    {
      v150 = *(v122 + 1440);
      v43 = AVE_PixelFmt_FindByType(PixelFormatType);
      if (!v43)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v65 = AVE_Log_CheckConsole(3u);
          v66 = AVE_GetCurrTime();
          v67 = AVE_Log_GetLevelStr(4);
          if (v65)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v66, 3, v67, "AVE_Session_AVC_Process", 5141, "pPixelFmt != __null", v122, *(v122 + 56), *(v122 + 18080));
            v68 = AVE_GetCurrTime();
            v115 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v68, 3, v115);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v66, 3, v67);
          }
        }

        v41 = 0;
        goto LABEL_78;
      }

      if (*(v16 + 420))
      {
        v44 = (v16 + 105);
      }

      else
      {
        v44 = 0;
      }

      AVE_Dump_Init(*(v122 + 18064), v44, *(v122 + 64), *(v122 + 10772), v16[103], v16[104], &v150, 1, *(v43 + 3), *(v43 + 1), *(v122 + 1136));
    }

    AVE_Dump_WriteInput(*(v122 + 18064), -1, pixelBuffer);
    v45 = *(v122 + 16464);
    if (v45 != 30566)
    {
      if (v45 != 30567)
      {
        if (v45 != 30568)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v60 = AVE_Log_CheckConsole(3u);
            v61 = AVE_GetCurrTime();
            v62 = AVE_Log_GetLevelStr(4);
            if (v60)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v61, 3, v62, "AVE_Session_AVC_Process", 5280, "false", *(v122 + 16464));
              v61 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v61);
          }

          v41 = 0;
          goto LABEL_133;
        }

        v46 = AVE_AVC_VerifyImageBuffer(v122, &pixelBuffer, &v144, &v143, &v142 + 1, &v142, 0);
        if (v46)
        {
          v41 = v46;
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v47 = AVE_Log_CheckConsole(3u);
            v48 = AVE_GetCurrTime();
            v49 = AVE_Log_GetLevelStr(4);
            if (!v47)
            {
LABEL_77:
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
              goto LABEL_78;
            }

            v50 = 5160;
LABEL_44:
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v48, 3, v49, "AVE_Session_AVC_Process", v50, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        goto LABEL_94;
      }

      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v51 = 1;
      }

      else
      {
        v51 = 2;
      }

      *(v122 + 10804) = v51;
      AVE_UpdateCropParams(v122, pixelBuffer);
      v52 = AVE_AVC_VerifyImageBuffer(v122, &pixelBuffer, &v144, &v143, &v142 + 1, &v142, 1);
      if (v52)
      {
        v41 = v52;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v53 = AVE_Log_CheckConsole(3u);
          v48 = AVE_GetCurrTime();
          v49 = AVE_Log_GetLevelStr(4);
          if (!v53)
          {
            goto LABEL_77;
          }

          v50 = 5177;
          goto LABEL_44;
        }

LABEL_78:
        PerFrameData = -1002;
        goto LABEL_134;
      }

      AVE_SetEncoderBasedOnFirstFrame();
      v69 = AVE_ValidateEncoderParameters(v122);
      if (v69)
      {
        v41 = v69;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v70 = AVE_Log_CheckConsole(3u);
          v71 = AVE_GetCurrTime();
          v72 = AVE_Log_GetLevelStr(4);
          if (v70)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v71, 3, v72, "AVE_Session_AVC_Process", 5187, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_78;
      }

      AVE_PrepareSequenceHeader(v122, pixelBuffer);
      bzero(v156, 0x1058uLL);
      v150 = v122 + 672;
      v151 = v122 + 1440;
      v77 = *(v122 + 12000);
      v152 = v122 + 10752;
      v153 = v77;
      v78 = *(v122 + 18064);
      v155 = *(v122 + 16480);
      v154 = v78;
      v157 = v122 + 12008;
      v158 = v122 + 13724;
      v159 = v122 + 14108;
      memcpy(v160, (v122 + 16592), sizeof(v160));
      v161 = v21;
      v79 = AVE_USL_Drv_Start(*(v122 + 120), &v150, v122 + 128, *(v122 + 16), *(v122 + 112), *(v122 + 16472), *(v122 + 16496), v122 + 160, (v122 + 11772), (v122 + 11464));
      if (v79)
      {
        v41 = v79;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v80 = AVE_Log_CheckConsole(3u);
          v81 = AVE_GetCurrTime();
          v82 = AVE_Log_GetLevelStr(4);
          if (!v80)
          {
            goto LABEL_132;
          }

          v83 = 5212;
          goto LABEL_93;
        }

        goto LABEL_133;
      }

      goto LABEL_94;
    }

    if (AVE_ISP_CheckMetadata(pixelBuffer))
    {
      v54 = 1;
    }

    else
    {
      v54 = 2;
    }

    *(v122 + 10804) = v54;
    v55 = AVE_ManageSessionSettings(v122);
    if (!v55)
    {
      AVE_UpdateCropParams(v122, pixelBuffer);
      v73 = AVE_AVC_VerifyImageBuffer(v122, &pixelBuffer, &v144, &v143, &v142 + 1, &v142, 1);
      if (v73)
      {
        v41 = v73;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v74 = AVE_Log_CheckConsole(3u);
          v75 = AVE_GetCurrTime();
          v76 = AVE_Log_GetLevelStr(4);
          if (v74)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v75, 3, v76, "AVE_Session_AVC_Process", 5237, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
        }

        goto LABEL_133;
      }

      AVE_SetEncoderBasedOnFirstFrame();
      v84 = AVE_ValidateEncoderParameters(v122);
      if (v84)
      {
        v41 = v84;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v85 = AVE_Log_CheckConsole(3u);
          v86 = AVE_GetCurrTime();
          v87 = AVE_Log_GetLevelStr(4);
          if (v85)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v86, 3, v87, "AVE_Session_AVC_Process", 5247, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_133;
      }

      AVE_PrepareSequenceHeader(v122, pixelBuffer);
      bzero(v156, 0x1058uLL);
      v150 = v122 + 672;
      v151 = v122 + 1440;
      v88 = *(v122 + 12000);
      v152 = v122 + 10752;
      v153 = v88;
      v89 = *(v122 + 18064);
      v155 = *(v122 + 16480);
      v154 = v89;
      v157 = v122 + 12008;
      v158 = v122 + 13724;
      v159 = v122 + 14108;
      memcpy(v160, (v122 + 16592), sizeof(v160));
      v161 = v21;
      v90 = AVE_USL_Drv_Start(*(v122 + 120), &v150, v122 + 128, *(v122 + 16), *(v122 + 112), *(v122 + 16472), *(v122 + 16496), v122 + 160, (v122 + 11772), (v122 + 11464));
      if (v90)
      {
        v41 = v90;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v91 = AVE_Log_CheckConsole(3u);
          v81 = AVE_GetCurrTime();
          v82 = AVE_Log_GetLevelStr(4);
          if (!v91)
          {
LABEL_132:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
            goto LABEL_133;
          }

          v83 = 5272;
LABEL_93:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v81, 3, v82, "AVE_Session_AVC_Process", v83, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_132;
        }

LABEL_133:
        PerFrameData = -1000;
        goto LABEL_134;
      }

LABEL_94:
      *(v122 + 16464) = 30568;
      bzero(v147, 0x1738uLL);
      v123 = 0;
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      memset(v131, 0, sizeof(v131));
      v132 = 0u;
      memset(v133, 0, sizeof(v133));
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      memset(v124, 0, sizeof(v124));
      *v125 = 0u;
      v126 = 0;
      bzero(&v150, 0x4A40uLL);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"ResetRCState");
        if (Value)
        {
          if (CFEqual(Value, *MEMORY[0x29EDB8F00]))
          {
            v21 = AVE_GetCurrTime();
            v123 = v21;
            AVE_USL_Drv_Complete(*(v122 + 120), &v123);
          }
        }
      }

      *&v131[1] = v140;
      v132 = v138;
      v127[0] = v117;
      v127[1] = pixelBuffer;
      v131[3] = v141;
      v133[0] = v139;
      *&v133[1] = v137;
      *(&v134 + 1) = v147;
      *&v135 = v21;
      DWORD2(v135) = *(v122 + 16508);
      *&v134 = &v150;
      if (*(v122 + 10804) == 2)
      {
        AVE_ISP_GetMetadata(pixelBuffer, v124);
        AVE_Dump_WriteISPMetadata(*(v122 + 18064), *(v122 + 16508), *(v122 + 16468), v124);
      }

      v133[3] = v124;
      if ((*(v122 + 1337) & 2) != 0 && *(v122 + 76) >= 4 && !AVE_ANFD_GetInfo(theDict, v148))
      {
        memset(v146, 0, sizeof(v146));
        AVE_SNPrintf(v146, 32, "%llu %d %d", *(v122 + 56), *(v122 + 16468), v148[0]);
        AVE_ANFD_PrintInfo(v148, 47, 6, v146, 0);
        v149 = v149 & 0xFFFFFDFF | ((v148[0] > 0) << 9);
      }

      v93 = CMGetAttachment(pixelBuffer, *MEMORY[0x29EDBFF98], 0);
      if (v93)
      {
        AVE_SEI::SetISPMetadata(*(v122 + 16488), *(v122 + 16468), v93);
      }

      AVE_SEI::SetDriverVersion(*(v122 + 16488), *(v122 + 16468));
      AVE_SEI::SetSessionID(*(v122 + 16488), *(v122 + 16468), *(v122 + 56));
      AVE_SEI::SetExposureTime(*(v122 + 16488), *(v122 + 16468), *&v124[1]);
      AVE_SEI::SetSNR(*(v122 + 16488), *(v122 + 16468), *v124);
      AVE_SEI::SetLuxLevel(*(v122 + 16488), *(v122 + 16468), v125[1]);
      AVE_SEI::SetPTS(*(v122 + 16488), *(v122 + 16468), *(v120 + 2), *v120);
      PerFrameData = AVE_GetPerFrameData(v122, theDict, v147, &v150, v127);
      if (!*(v122 + 11476))
      {
        AVE_H264_UpdateSettingsBasedOnSNR(v122, &v150, *v133[3]);
      }

      if (*(v122 + 16508))
      {
        if (*(v122 + 16496))
        {
          v94 = AVE_H264MultipassDataFetch(v122, &v140, &v150);
          if (v94)
          {
            v41 = v94;
            if (AVE_Log_CheckLevel(3u, 4))
            {
              v95 = AVE_Log_CheckConsole(3u);
              v96 = AVE_GetCurrTime();
              v97 = AVE_Log_GetLevelStr(4);
              if (v95)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264MultipassDataFetch failed.\n", v96, 3, v97, "AVE_Session_AVC_Process", 5404, "err == noErr");
                AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264MultipassDataFetch failed.");
            }

            goto LABEL_133;
          }
        }
      }

      *(&v136 + 1) = *(v122 + 16468);
      if (v143)
      {
        v98 = pixelBuffer;
      }

      else
      {
        v98 = 0;
      }

      *(&v130 + 1) = v98;
      v99 = AVE_USL_Drv_Process(*(v122 + 120), v127);
      if (v99)
      {
        v41 = v99;
        if (v99 == -536870173)
        {
          v41 = 3758097123;
          if (AVE_Log_CheckLevel(0x10u, 5))
          {
            v100 = AVE_Log_CheckConsole(0x10u);
            v101 = AVE_GetCurrTime();
            v102 = AVE_Log_GetLevelStr(5);
            if (v100)
            {
              printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v101, 16, v102);
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(5);
            }

            syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
          }
        }

        else if (AVE_Log_CheckLevel(3u, 4))
        {
          v103 = AVE_Log_CheckConsole(3u);
          v104 = AVE_GetCurrTime();
          v105 = AVE_Log_GetLevelStr(4);
          if (v103)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v104, 3, v105, "AVE_Session_AVC_Process", 5429, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
        }

        goto LABEL_133;
      }

      if (!PerFrameData)
      {
        v41 = 0;
        ++*(v122 + 16468);
        goto LABEL_134;
      }

LABEL_69:
      v41 = 0;
      goto LABEL_134;
    }

    v41 = v55;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v56 = AVE_Log_CheckConsole(3u);
      v57 = AVE_GetCurrTime();
      v58 = AVE_Log_GetLevelStr(4);
      if (v56)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v57, 3, v58, "AVE_Session_AVC_Process", 5227, "err == 0");
        v59 = AVE_GetCurrTime();
        v114 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed", v59, 3, v114, "AVE_Session_AVC_Process", 5227, "err == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed", v57, 3, v58, "AVE_Session_AVC_Process", 5227, "err == 0");
      }
    }

    PerFrameData = v41;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v31 = AVE_Log_CheckConsole(0xCu);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      if (v31)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v32, 12, v33, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v122, v117, pixelBuffer, v119, v120, v121, theDict);
        v34 = AVE_GetCurrTime();
        v112 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v34, 12, v112, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v122);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v32, 12, v33, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v122);
      }
    }

    v41 = 0;
    PerFrameData = -1001;
  }

LABEL_134:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v106 = AVE_Log_CheckConsole(0xCu);
    v107 = AVE_GetCurrTime();
    v108 = AVE_Log_GetLevelStr(7);
    if (v106)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v107, 12, v108, "AVE_Session_AVC_Process", v122, v117, pixelBuffer, v119, v120, v121, theDict, PerFrameData);
      v109 = AVE_GetCurrTime();
      v116 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v109, 12, v116, "AVE_Session_AVC_Process", v122, v117);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v107, 12, v108, "AVE_Session_AVC_Process", v122, v117);
    }
  }

  return v41;
}

uint64_t AVE_Plugin_AVC_EncodeFrame(const void *a1, const void *a2, const void *a3, uint64_t *a4, void *a5, const void *a6, _DWORD *a7)
{
  v71[0] = 0;
  v71[1] = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  CurrTime = AVE_GetCurrTime();
  v64 = a7;
  if (AVE_Log_CheckLevel(0xBu, 8))
  {
    v15 = AVE_Log_CheckConsole(0xBu);
    v16 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    v18 = *a4;
    v19 = *(a4 + 2);
    v20 = *(a4 + 3);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld\n", v16, 11, LevelStr, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, v18, v19, v20, a4[2], *a5, *(a5 + 2), *(a5 + 3), a5[2], a6, a7, 0);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v21, 11, v22, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, *a4, *(a4 + 2), *(a4 + 3));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v16, 11, LevelStr, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, v18, v19, v20);
    }
  }

  v62 = a3;
  v63 = a1;
  if (a1 && a3)
  {
    v23 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v25 = DerivedStorage;
    if (DerivedStorage)
    {
      v26 = *a4;
      v69 = a4[1];
      v70 = a4[2];
      v65 = *a5;
      v66 = a5[1];
      v67 = a5[2];
      v68 = v26;
      AVE_Mutex_Lock(*DerivedStorage);
      v27 = *(v25 + 56);
      kdebug_trace();
      v29 = AVE_Session_AVC_Process(v25, a2, a3, v71, &v68, &v65, v23, v28);
      ++*(v25 + 48);
    }

    else if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v38 = AVE_Log_CheckConsole(0xBu);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      v41 = *a4;
      v42 = *(a4 + 2);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d\n", v39, 11, v40, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, v41, v42, *a5, *(a5 + 2), v23, v64, 0, 0);
        v59 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d", v59, 11, v43, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, *a4, *(a4 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d", v39, 11, v40, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, v41, v42);
      }

      v27 = 0;
      v29 = 4294966296;
    }

    else
    {
      v27 = 0;
      v29 = 4294966296;
    }

    v37 = a2;
    kdebug_trace();
    if (v64)
    {
      *v64 |= 1u;
    }

    AVE_Mutex_Unlock(*v25);
    a6 = v23;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v30 = AVE_Log_CheckConsole(0xBu);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      v33 = *a4;
      v34 = *(a4 + 2);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d\n", v31, 11, v32, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, a3, v33, v34, *a5, *(a5 + 2), a6, a7, 0, 0);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        v57 = a3;
        v37 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v35, 11, v36, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, v57, *a4, *(a4 + 2));
      }

      else
      {
        v58 = a3;
        v37 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v31, 11, v32, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, v58, v33, v34);
      }
    }

    else
    {
      v37 = a2;
    }

    v27 = 0;
    v29 = 4294966295;
  }

  v44 = AVE_GetCurrTime() - CurrTime;
  if (v44 >= 50000)
  {
    v45 = 5;
  }

  else
  {
    v45 = 8;
  }

  v46 = AVE_RetCode2OSStatus(v29);
  if (v29)
  {
    v47 = 4;
  }

  else
  {
    v47 = v45;
  }

  if (AVE_Log_CheckLevel(0xBu, v47))
  {
    v48 = AVE_Log_CheckConsole(0xBu);
    v60 = AVE_GetCurrTime();
    v49 = AVE_Log_GetLevelStr(v47);
    v50 = *a4;
    v51 = *(a4 + 2);
    v52 = *(a4 + 3);
    v53 = a4[2];
    v54 = *a5;
    if (v48)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d\n", v60, 11, v49, "AVE_Plugin_AVC_EncodeFrame", v63, v37, v62, v50, v51, v52, v53, v54, *(a5 + 2), *(a5 + 3), a5[2], a6, v64, v27, v44, v29, v46);
      v61 = AVE_GetCurrTime();
      v55 = AVE_Log_GetLevelStr(v47);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v61, 11, v55, "AVE_Plugin_AVC_EncodeFrame", v63, v37, v62, *a4, *(a4 + 2), *(a4 + 3), a4[2], *a5);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v60, 11, v49, "AVE_Plugin_AVC_EncodeFrame", v63, v37, v62, v50, v51, v52, v53, v54);
    }
  }

  return v46;
}

uint64_t AVE_AVC_VerifyImageBuffer(int32x2_t *a1, CVPixelBufferRef *a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, char a7)
{
  v59 = 0;
  v14 = a1 + 2056;
  v15 = &a1[1271] + 3;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  HIDWORD(v53) = PixelFormatType;
  v17 = v14[12].i32[0];
  if (!v17)
  {
    v17 = a1[180].i32[0];
  }

  v45 = v17;
  v18 = v14[12].i32[1];
  if (!v18)
  {
    v18 = a1[180].i32[1];
  }

  v46 = v18;
  v19 = a1[1346].i32[1];
  v47 = vrev64_s32(a1[8]);
  v48 = a1[89].i32[1];
  v49 = v19;
  v20 = a1[1361].i32[1];
  v50 = a1[1344].i32[0];
  v51 = v20;
  LODWORD(v53) = a1[1357].i32[1];
  BYTE4(v53) = a1[86].i32[1] > 0;
  DWORD2(v53) = a1[1350].i32[1];
  HIBYTE(v59) = a1[9].i32[1] > 11;
  if (v15[3013])
  {
    v52 = *(v15 + 3017);
  }

  if (v14[2].i32[1] && a1[1496].i32[1] != PixelFormatType)
  {
    kdebug_trace();
    v21 = AVE_ImageBuf_Transfer(&v45, a2, &a1[2071], a1[1496].u32[1]);
    kdebug_trace();
    if (v21)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v22 = AVE_Log_CheckConsole(3u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", CurrTime, 3, LevelStr, "AVE_AVC_VerifyImageBuffer", 2946, "err == noErr", *a2, HIDWORD(v53), a1[1496].i32[1], v21);
          v25 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v25, 3, v43);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", CurrTime, 3, LevelStr);
        }
      }

      return v21;
    }

    *a4 = 1;
  }

  v21 = AVE_VerifyImageBuffer(&v45, a2, &a1[2070]);
  if (v21)
  {
    return v21;
  }

  *a3 = v59;
  v27 = DWORD1(v57);
  *a5 = v57;
  *a6 = v27;
  if (a1[9].i32[1] < 12)
  {
    *(v15 + 351) = BYTE1(v59);
  }

  else
  {
    *(v15 + 351) = 0;
    if (v45 != a1[180].i32[0] || v46 != a1[180].i32[1])
    {
      v28 = 1;
      goto LABEL_22;
    }
  }

  v28 = BYTE2(v59);
LABEL_22:
  v15[679] = v28;
  v29 = DWORD1(v55);
  v15[33] = (DWORD1(v55) & 0xFFFFFFFE) == 2;
  if (v29 == 3)
  {
    v15[358] = BYTE12(v55);
  }

  if (a1[1344].i32[0] == 2)
  {
    a1[1358].i32[0] = DWORD2(v57);
    *(v15 + 697) = *(&v56 + 1);
    *(v15 + 705) = vuzp2q_s32(vextq_s8(v58, v58, 4uLL), v58);
    if (a7)
    {
      a1[1346].i32[0] = HIDWORD(v53);
LABEL_29:
      v31 = DWORD2(v54);
      v32 = v54;
      a1[1505].i32[1] = DWORD2(v54);
      a1[1273].i32[1] = v31;
      a1[1274].i32[0] = v32;
      *v15 = DWORD1(v55) != 1;
      v15[610] = 1;
      if (a1[1361].i32[1] == 37 && v31 == 3)
      {
        v15[685] = 1;
        *&a1[136] &= ~2uLL;
      }
    }
  }

  else if (a7)
  {
    v30 = HIDWORD(v53);
    a1[1346].i32[0] = HIDWORD(v53);
    if (!v14[2].i32[1])
    {
      v37 = a1[1506].i32[1] + 8;
      if (v37 <= a1[1507].i32[0] + 8)
      {
        v37 = a1[1507].i32[0] + 8;
      }

      updated = AVE_UpdatePixelBufferDict(a1[8].u32[1], a1[8].u32[0], a1[89].u32[1], 1, a1[1431].u32[1], a1[1432].u32[0], a1[180].u32[0], a1[180].u32[1], v37, v14->i32[0], v30 | 0x100000000, *&a1[2]);
      if (updated)
      {
        v39 = updated;
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v40 = AVE_Log_CheckConsole(0x1Eu);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(5);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d\n", v41, 30, v42, "AVE_AVC_VerifyImageBuffer", 3018, a1, *&a1[7], 0, v39);
            v41 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
          }

          syslog(3, "%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d", v41, 30);
        }
      }
    }

    goto LABEL_29;
  }

  if (v14[2].i32[1])
  {
    if (a1[1496].i32[1] == HIDWORD(v53))
    {
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v33 = AVE_Log_CheckConsole(0xCu);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x\n", v34, 12, v35, "AVE_AVC_VerifyImageBuffer", 3051, "false", *&a1[7], v14[2].i32[1], a1[1496].i32[1], HIDWORD(v53));
          v36 = AVE_GetCurrTime();
          v44 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x", v36, 12, v44);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x", v34, 12, v35);
        }
      }

      return 4294954394;
    }
  }

  else
  {
    v21 = 0;
    a1[1496].i32[1] = HIDWORD(v53);
  }

  return v21;
}

uint64_t AVE_VerifyImageBuffer(unsigned int *a1, const void **a2, CVPixelBufferPoolRef *a3)
{
  pixelBufferOut = 0;
  poolOut = 0;
  if (!a3 || !*a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v14 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", CurrTime, 3, LevelStr, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", CurrTime, 3, LevelStr, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
    }

    goto LABEL_42;
  }

  CVPixelBufferRetain(*a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  v7 = AVE_PixelFmt_FindByType(PixelFormatType);
  if (!v7)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v17 = AVE_Log_CheckConsole(3u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | pixel format is not supported %d\n", v18, 3, v19, "AVE_VerifyImageBuffer", 483, "pPixelFmt != __null", PixelFormatType);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pixel format is not supported %d", v18);
    }

    goto LABEL_42;
  }

  v8 = v7;
  v9 = AVE_EdgeReplication_DetermineMode(*a2, v7, a1[2], a1[6], *(a1 + 52), a1[14], a1[7], a1 + 8, a1[12]);
  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v10 = AVE_Log_CheckConsole(0x12u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d\n", v11, 18, v12, PixelFormatType, *(v8 + 4), *(v8 + 8), *(v8 + 12), *(v8 + 16), *(v8 + 20), *(v8 + 24), *(v8 + 28));
      v13 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d", v13, 18, v84);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d", v11, 18, v12);
    }
  }

  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v20 = AVE_Log_CheckConsole(0x12u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(7);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
    if (v20)
    {
      printf("%lld %d AVE %s: Pixel Buffer Width %d Height %d\n", v21, 18, v22, WidthOfPlane, HeightOfPlane);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
      v27 = CVPixelBufferGetWidthOfPlane(*a2, 0);
      v87 = CVPixelBufferGetHeightOfPlane(*a2, 0);
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v25, 18, v26, v27, v87);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v21, 18, v22, WidthOfPlane, HeightOfPlane);
    }
  }

  if ((v9 & 2) == 0)
  {
    AVE_ImgBuf_Verify(*a2, a1[2], a1[3], a1[4], a1[5], *a1, a1[1], *(a1 + 147));
  }

  v28 = *a3;
  if (!*a3)
  {
    v35 = CVPixelBufferGetWidthOfPlane(*a2, 0);
    v36 = CVPixelBufferGetHeightOfPlane(*a2, 0);
    v37 = AVE_PixelBuf_CreatePool(a1[2], a1[3], a1[4], a1[5], v35, v36, *a1, a1[1], PixelFormatType, &poolOut);
    if (v37)
    {
      v38 = v37;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v39 = AVE_Log_CheckConsole(3u);
        v40 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
        if (!v39)
        {
          v89 = v38;
          v88 = 511;
          v86 = v41;
          v83 = "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d";
          goto LABEL_74;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d\n", v40, 3, v41, "AVE_VerifyImageBuffer", 511, "rc == noErr", v38);
        v42 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d", v42);
      }

LABEL_43:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      if (poolOut)
      {
        CFRelease(poolOut);
        poolOut = 0;
      }

      goto LABEL_47;
    }

    v28 = *a3;
  }

  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = poolOut;
  }

  v30 = CVPixelBufferPoolCreatePixelBuffer(0, v29, &pixelBufferOut);
  if (v30)
  {
    v31 = v30;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d\n", v33, 3, v34, "AVE_VerifyImageBuffer", 517, "cvrc == kCVReturnSuccess", v31);
        v33 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d", v33);
    }

LABEL_42:
    v38 = 4294954394;
    goto LABEL_43;
  }

  v43 = AVE_PixelBuf_Copy(*a2, pixelBufferOut);
  if (v43)
  {
    v38 = v43;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v44 = AVE_Log_CheckConsole(3u);
      v40 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(4);
      if (v44)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d\n", v40, 3, v45, "AVE_VerifyImageBuffer", 521, "rc == noErr", *a2, pixelBufferOut, v38);
        v46 = AVE_GetCurrTime();
        v85 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d", v46, 3, v85);
        goto LABEL_43;
      }

      v90 = pixelBufferOut;
      v91 = v38;
      v89 = *a2;
      v88 = 521;
      v86 = v45;
      v83 = "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d";
LABEL_74:
      syslog(3, v83, v40, 3, v86, "AVE_VerifyImageBuffer", v88, "rc == noErr", v89, v90, v91);
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  CVPixelBufferRelease(*a2);
  v48 = pixelBufferOut;
  *a2 = pixelBufferOut;
  pixelBufferOut = 0;
  v49 = v9 & 2;
  AVE_EdgeReplication_Fill(v48, v9, v8);
  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v50 = AVE_Log_CheckConsole(0x12u);
    v94 = AVE_GetCurrTime();
    v51 = AVE_Log_GetLevelStr(7);
    v52 = a1[1];
    v92 = *a1;
    v53 = a1[2];
    v54 = a1[3];
    v55 = a1[4];
    v56 = a1[5];
    v57 = a1[6];
    if (v50)
    {
      printf("%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v94, 18, v51, "AVE_VerifyImageBuffer", 541, v92, v52, v53, v54, v55, v56, v57, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v95 = AVE_GetCurrTime();
      v93 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v95, 18, v93, "AVE_VerifyImageBuffer", 541, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v94, 18, v51, "AVE_VerifyImageBuffer", 541, v92, v52, v53, v54, v55, v56, v57);
    }

    v49 = v9 & 2;
  }

  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(*a2, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v58 = CVPixelBufferGetWidthOfPlane(*a2, 0);
  v59 = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v60 = extraColumnsOnLeft;
  v61 = extraColumnsOnRight;
  v62 = extraColumnsOnLeft + extraColumnsOnRight + v58;
  v63 = extraRowsOnTop;
  v64 = extraRowsOnBottom;
  v65 = extraRowsOnTop + extraRowsOnBottom + v59;
  v66 = *(v8 + 28);
  v67 = *(v8 + 16);
  *(a1 + 15) = *v8;
  *(a1 + 19) = v67;
  *(a1 + 22) = v66;
  a1[26] = v62;
  a1[27] = v65;
  a1[32] = v60;
  a1[33] = v61;
  a1[34] = v63;
  a1[35] = v64;
  a1[30] = CVPixelBufferGetBytesPerRowOfPlane(*a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a2, 1uLL);
  a1[31] = BytesPerRowOfPlane;
  if (*(v8 + 12))
  {
    v69 = BytesPerRowOfPlane;
  }

  else
  {
    v69 = 0;
  }

  a1[28] = a1[30];
  a1[29] = v69;
  v70 = v9 & 1;
  if ((v9 & 0x10) != 0)
  {
    v70 = 1;
  }

  *(a1 + 146) = v70;
  *(a1 + 144) = v49 >> 1;
  if ((~v9 & 0x500) != 0)
  {
    v71 = 0;
  }

  else
  {
    v71 = 5;
  }

  if ((~v9 & 0x50000) == 0)
  {
    v71 |= 0xAu;
  }

  *(a1 + 145) = v71;
  if (poolOut)
  {
    *a3 = poolOut;
  }

  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v72 = AVE_Log_CheckConsole(0x12u);
    v96 = AVE_GetCurrTime();
    v73 = AVE_Log_GetLevelStr(7);
    v74 = *a1;
    v75 = a1[1];
    v76 = a1[2];
    v77 = a1[3];
    v78 = a1[4];
    v79 = a1[5];
    v80 = a1[6];
    if (v72)
    {
      printf("%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v96, 18, v73, "AVE_VerifyImageBuffer", 616, v74, v75, v76, v77, v78, v79, v80, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v81 = AVE_GetCurrTime();
      v82 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v81, 18, v82, "AVE_VerifyImageBuffer", 616, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v96, 18, v73, "AVE_VerifyImageBuffer", 616, v74, v75, v76, v77, v78, v79, v80);
    }
  }

  v38 = 0;
LABEL_47:
  if ((a1[36] & 1) == 0)
  {
    CVPixelBufferRelease(*a2);
  }

  return v38;
}

const char *AVE_PixelFmt_FindByType(int a1)
{
  result = "v024\b";
  v3 = 86;
  while (*result != a1)
  {
    result += 44;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_EdgeReplication_DetermineMode(__CVBuffer *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, _DWORD *a8, int a9)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight[0] = 0;
  v16 = AVE_DevID2Type(a3);
  v17 = v16;
  v50 = v16;
  if (a4 == 2 && v16 < 12 || !a8[1] && !a8[3])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_67;
  }

  if (a9 != -1)
  {
    v18 = a9 + 3;
    goto LABEL_19;
  }

  if (!a5)
  {
    v18 = 2;
    goto LABEL_19;
  }

  v18 = 1;
  if (a6 != 2 || a7)
  {
LABEL_19:
    CVPixelBufferGetExtendedPixels(a1, 0, extraColumnsOnRight, 0, &extraRowsOnBottom);
    v28 = a2[6];
    if (v28)
    {
      v20 = 0;
      v29 = 1;
      if (v28 != 1 || !extraRowsOnBottom)
      {
LABEL_26:
        if (v17 < 12)
        {
          if (v17 < 4)
          {
            v21 = 0;
          }

          else
          {
            if (a8[1] == 8u >> (a2[4] >> 1))
            {
              v39 = 3328;
            }

            else
            {
              v39 = 0;
            }

            if (a8[3] == 8u >> (a2[5] >> 1))
            {
              v21 = v39 | 0x50000;
            }

            else
            {
              v21 = v39;
            }
          }
        }

        else
        {
          v32 = a8[1];
          v33 = a2[4] >> 1;
          if (v32 > (0xEu >> v33) || v32 < (2u >> v33))
          {
            v35 = 0;
          }

          else
          {
            v35 = 3328;
          }

          v36 = a8[3];
          v37 = a2[5] >> 1;
          if (v36 > (0xEu >> v37) || v36 < (2u >> v37))
          {
            v21 = v35;
          }

          else
          {
            v21 = v35 | 0x50000;
          }
        }

        v40 = 0;
        if (v18 <= 4)
        {
          if ((v18 - 1) >= 2)
          {
            if (v18)
            {
              if (v18 == 4)
              {
                v40 = v21 & 0xFF00;
              }

              goto LABEL_66;
            }

            if ((v21 & 0x70000) == 0)
            {
              if (v29)
              {
                v41 = 0;
              }

              else
              {
                v41 = v20;
              }

              v40 = v21 & 0xFF00 | v41;
              goto LABEL_66;
            }
          }

          goto LABEL_58;
        }

        switch(v18)
        {
          case 5:
            v40 = v21 & 0x70000;
            break;
          case 6:
            v40 = v20 | 2;
            if (v29)
            {
              v40 = 0;
            }

            break;
          case 7:
LABEL_58:
            v40 = v21 & 0x7FF00;
            break;
        }

LABEL_66:
        v19 = v40 | ((v40 & 0x10100) != 0);
        goto LABEL_67;
      }
    }

    else if (!extraRowsOnBottom)
    {
      v20 = 0;
      v29 = 1;
      goto LABEL_26;
    }

    v30 = a8[3];
    v31 = v30 != 0;
    v29 = v30 == 0;
    v20 = v31 << 16;
    goto LABEL_26;
  }

  v22 = a4;
  v23 = a6;
  v24 = a5;
  v25 = CVBufferCopyAttachment(a1, *MEMORY[0x29EDB96B8], 0);
  if (!v25)
  {
LABEL_17:
    v18 = 0;
    a5 = v24;
    a6 = v23;
    a4 = v22;
    a7 = 0;
    goto LABEL_19;
  }

  v26 = v25;
  if (CFEqual(v25, *MEMORY[0x29EDB8F00]))
  {
    v27 = v17 < 7;
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    CFRelease(v26);
    goto LABEL_17;
  }

  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 16;
  a5 = v24;
  a6 = v23;
  a4 = v22;
  a7 = 0;
LABEL_67:
  if (AVE_Log_CheckLevel(0x11u, 7))
  {
    v49 = a4;
    v42 = a5;
    v43 = AVE_Log_CheckConsole(0x11u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n\n", CurrTime, 17, LevelStr, "AVE_EdgeReplication_DetermineMode", 240, v50, v49, v42, a6, a7, a9, *a8, a8[1], a8[2], a8[3], LODWORD(extraColumnsOnRight[0]), extraRowsOnBottom, v18, v20, v21, v19);
      v48 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n", v48, 17, v46, "AVE_EdgeReplication_DetermineMode", 240, v50, v49, v42);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n", CurrTime, 17, LevelStr, "AVE_EdgeReplication_DetermineMode", 240, v50, v49, v42);
    }
  }

  return v19;
}

char *AVE_DevCap_Find(int a1)
{
  if (a1 >= 35)
  {
    return 0;
  }

  else
  {
    return &gsc_saAVE_DevCap[9 * a1];
  }
}

char *AVE_DevID2Type(int a1)
{
  result = AVE_DevCap_Find(a1);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

uint64_t AVE_GetPerFrameData(uint64_t a1, const __CFDictionary *a2, unint64_t *a3, int *a4, void *a5)
{
  v239 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v9 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_GetPerFrameData", a1, a2, a3, a4, a5);
      v12 = AVE_GetCurrTime();
      v209 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v12, 12, v209);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", CurrTime, 12, LevelStr);
    }
  }

  if (a4)
  {
    v13 = a1 + 16460;
    *(a3 + 216) = *(a1 + 1136);
    *(a3 + 212) = *(a1 + 1112);
    v14 = *(a1 + 1160);
    v15 = *(a1 + 1176);
    a3[113] = *(a1 + 1192);
    *(a3 + 109) = v14;
    *(a3 + 111) = v15;
    *(a1 + 16460) = 0;
    *(a3 + 28) = *(a1 + 688) & 2;
    *(a4 + 1362) = *(a1 + 10204);
    v16 = *(a1 + 16544);
    if (!v16)
    {
      v16 = *(a1 + 1440);
    }

    a4[140] = v16;
    v17 = *(a1 + 16548);
    if (!v17)
    {
      v17 = *(a1 + 1444);
    }

    a4[141] = v17;
    a4[342] = *(a1 + 10808);
    *a4 = 0;
    if ((*(a1 + 716) & 0x3C0) == 0)
    {
      *a3 &= ~4uLL;
LABEL_28:
      *(a4 + 3) = 0;
      *(a4 + 30) = 0;
      a5[8] = 0;
      *&v33 = -1;
      *(&v33 + 1) = -1;
      *(a4 + 17) = v33;
      *(a4 + 1392) = 0;
      *(a4 + 48) = 0;
      a4[13] = -1;
      *(a4 + 15) = 0;
      *(a4 + 5) = 0xFFFFFFF3FFFFFFFFLL;
      *(a4 + 21) = v33;
      *(a4 + 66) = 0;
      a4[343] = -1;
      a4[135] = -1;
      if (a2)
      {
        v232 = a4 + 132;
        if (AVE_Log_CheckLevel(0x1Du, 6))
        {
          v34 = AVE_Log_CheckConsole(0x1Du);
          v35 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(6);
          v37 = *(a1 + 16468);
          if (v34)
          {
            printf("%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d\n", v35, 29, v36, v37);
            v38 = AVE_GetCurrTime();
            v211 = AVE_Log_GetLevelStr(6);
            syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v38, 29, v211, *(a1 + 16468));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v35, 29, v36, v37);
          }
        }

        Value = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCED0]);
        v41 = MEMORY[0x29EDB8F00];
        if (Value && CFEqual(Value, *MEMORY[0x29EDB8F00]))
        {
          v42 = (*(a1 + 1240) & 0x100) != 0 ? 1 : 2;
          *a4 = v42;
          *(a3 + 230) |= 1u;
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v43 = AVE_Log_CheckConsole(0x1Du);
            v44 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(6);
            v46 = *(a3 + 230);
            if (v43)
            {
              printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v44, 29, v45, *a4, v46);
              v47 = AVE_GetCurrTime();
              v48 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v47, 29, v48, *a4, *(a3 + 230));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v44, 29, v45, *a4, v46);
            }
          }
        }

        v50 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEC8]);
        if (v50)
        {
          v51 = v50;
          TypeID = CFDataGetTypeID();
          if (TypeID == CFGetTypeID(v51))
          {
            *(a3 + 232) |= 0x10u;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v53 = AVE_Log_CheckConsole(0x1Du);
              v54 = AVE_GetCurrTime();
              v55 = AVE_Log_GetLevelStr(6);
              if (v53)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices\n", v54, 29, v55);
                v56 = AVE_GetCurrTime();
                v212 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v56, 29, v212);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v54, 29, v55);
              }
            }
          }
        }

        v57 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCED8]);
        if (v57)
        {
          if (CFEqual(v57, *v41))
          {
            *(a3 + 232) |= 0x10u;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v58 = AVE_Log_CheckConsole(0x1Du);
              v59 = AVE_GetCurrTime();
              v60 = AVE_Log_GetLevelStr(6);
              v61 = *(a3 + 232);
              if (v58)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x\n", v59, 29, v60, v61);
                v62 = AVE_GetCurrTime();
                v213 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v62, 29, v213, *(a3 + 232));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v59, 29, v60, v61);
              }
            }
          }
        }

        v63 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEF8]);
        if (v63)
        {
          if (CFEqual(v63, *v41))
          {
            *a3 |= 8uLL;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v64 = AVE_Log_CheckConsole(0x1Du);
              v65 = AVE_GetCurrTime();
              v66 = AVE_Log_GetLevelStr(6);
              v67 = *a3;
              if (v64)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx\n", v65, 29, v66, v67);
                v68 = AVE_GetCurrTime();
                v214 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v68, 29, v214, *a3);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v65, 29, v66, v67);
              }
            }
          }
        }

        v69 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF18]);
        a4[8] = 0;
        *(a4 + 3) = 0;
        *(a3 + 234) &= ~0x10000u;
        if (*(a1 + 1338))
        {
          v70 = v69;
          if (v69)
          {
            a4[8] = CFDataGetLength(v69);
            *(a4 + 3) = CFDataGetBytePtr(v70);
            *(a3 + 234) |= 0x10000u;
          }
        }

        v71 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF20]);
        if (v71)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v71, kCFNumberSInt32Type, &valuePtr);
          v72 = valuePtr;
          a4[2] = WORD1(valuePtr);
          a4[3] = v72;
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v73 = AVE_Log_CheckConsole(0x1Du);
            v74 = AVE_GetCurrTime();
            v75 = AVE_Log_GetLevelStr(6);
            v76 = a4[3];
            if (v73)
            {
              printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d\n", v74, 29, v75, a4[2], v76);
              v77 = AVE_GetCurrTime();
              v78 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v77, 29, v78, a4[2], a4[3]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v74, 29, v75, a4[2], v76);
            }
          }
        }

        v79 = CFDictionaryGetValue(a2, @"AttachDPB");
        if (v79 && CFEqual(v79, *v41))
        {
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v80 = AVE_Log_CheckConsole(0x1Du);
            v81 = AVE_GetCurrTime();
            v82 = AVE_Log_GetLevelStr(6);
            v83 = *(a1 + 16468);
            if (v80)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)\n", v81, 29, v82, v83);
              v84 = AVE_GetCurrTime();
              v215 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v84, 29, v215, *(a1 + 16468));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v81, 29, v82, v83);
            }
          }

          *(a4 + 36) = 1;
        }

        v85 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF08]);
        if (v85)
        {
          if (*(a1 + 16468))
          {
            v86 = v85;
            if (AVE_Log_CheckLevel(0x1Eu, 6))
            {
              v87 = AVE_Log_CheckConsole(0x1Eu);
              v88 = AVE_GetCurrTime();
              v89 = AVE_Log_GetLevelStr(6);
              v90 = *(a1 + 16468);
              if (v87)
              {
                printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)\n", v88, 30, v89, v90);
                v91 = AVE_GetCurrTime();
                v216 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v91, 30, v216, *(a1 + 16468));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v88, 30, v89, v90);
              }

              v13 = a1 + 16460;
            }

            *(a4 + 37) = 1;
            a5[8] = v86;
          }

          else
          {
            if (AVE_Log_CheckLevel(0x1Du, 5))
            {
              v92 = AVE_Log_CheckConsole(0x1Du);
              v93 = AVE_GetCurrTime();
              v94 = AVE_Log_GetLevelStr(5);
              if (v92)
              {
                printf("%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true\n", v93, 29, v94);
                v95 = AVE_GetCurrTime();
                v217 = AVE_Log_GetLevelStr(5);
                syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v95, 29, v217);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v93, 29, v94);
              }
            }

            if (AVE_Log_CheckLevel(0x1Du, 5))
            {
              v96 = AVE_Log_CheckConsole(0x1Du);
              v97 = AVE_GetCurrTime();
              v98 = AVE_Log_GetLevelStr(5);
              if (v96)
              {
                printf("%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag\n", v97, 29, v98);
                v99 = AVE_GetCurrTime();
                v218 = AVE_Log_GetLevelStr(5);
                syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v99, 29, v218);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v97, 29, v98);
              }
            }
          }
        }

        v100 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCE08]);
        if (v100)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v100, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr)
          {
            *a3 |= 0x10000uLL;
          }
        }

        v101 = CFDictionaryGetValue(a2, @"MarkCurrentFrameAsLTR");
        if (v101)
        {
          if (CFEqual(v101, *v41))
          {
            *(a4 + 48) = 1;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v102 = AVE_Log_CheckConsole(0x1Du);
              v103 = AVE_GetCurrTime();
              v104 = AVE_Log_GetLevelStr(6);
              if (v102)
              {
                printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE\n", v103, 29, v104);
                v105 = AVE_GetCurrTime();
                v219 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v105, 29, v219);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v103, 29, v104);
              }
            }
          }
        }

        v106 = CFDictionaryGetValue(a2, @"RVRADimension");
        if (v106)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v106, kCFNumberSInt32Type, &valuePtr);
          v107 = valuePtr;
          a4[15] = WORD1(valuePtr);
          a4[16] = v107;
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v108 = AVE_Log_CheckConsole(0x1Du);
            v109 = AVE_GetCurrTime();
            v110 = AVE_Log_GetLevelStr(6);
            v111 = a4[16];
            if (v108)
            {
              printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d\n", v109, 29, v110, a4[15], v111);
              v112 = AVE_GetCurrTime();
              v113 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v112, 29, v113, a4[15], a4[16]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v109, 29, v110, a4[15], v111);
            }
          }
        }

        v114 = CFDictionaryGetValue(a2, @"FrameNumForLTRToReplace");
        if (v114)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v114, kCFNumberSInt32Type, &valuePtr);
          a4[13] = valuePtr;
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v115 = AVE_Log_CheckConsole(0x1Du);
            v116 = AVE_GetCurrTime();
            v117 = AVE_Log_GetLevelStr(6);
            v118 = a4[13];
            if (v115)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)\n", v116, 29, v117, v118);
              v119 = AVE_GetCurrTime();
              v220 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v119, 29, v220, a4[13]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v116, 29, v117, v118);
            }
          }
        }

        v120 = CFDictionaryGetValue(a2, @"UserFrameType");
        if (v120)
        {
          LODWORD(valuePtr) = 5;
          CFNumberGetValue(v120, kCFNumberSInt32Type, &valuePtr);
          a4[10] = valuePtr;
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v121 = AVE_Log_CheckConsole(0x1Du);
            v122 = AVE_GetCurrTime();
            v123 = AVE_Log_GetLevelStr(6);
            v124 = a4[10];
            if (v121)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)\n", v122, 29, v123, v124);
              v125 = AVE_GetCurrTime();
              v221 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v125, 29, v221, a4[10]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v122, 29, v123, v124);
            }
          }
        }

        v126 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEF0]);
        if (v126)
        {
          v127 = v126;
          v128 = CFArrayGetTypeID();
          if (v128 == CFGetTypeID(v127))
          {
            LODWORD(valuePtr) = 4;
            AVE_Ref_RetrieveArray(v127, a4 + 17, &valuePtr);
            *(a4 + 56) = valuePtr;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v129 = AVE_Log_CheckConsole(0x1Du);
              v130 = AVE_GetCurrTime();
              v131 = AVE_Log_GetLevelStr(6);
              v132 = *(a4 + 56);
              if (v129)
              {
                printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d\n", v130, 29, v131, v132);
                v133 = AVE_GetCurrTime();
                v222 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v133, 29, v222, *(a4 + 56));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v130, 29, v131, v132);
              }
            }
          }
        }

        v134 = CFDictionaryGetValue(a2, @"SliceAlphaC0OffsetDiv2");
        if (v134)
        {
          CFNumberGetValue(v134, kCFNumberSInt32Type, v232);
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v135 = AVE_Log_CheckConsole(0x1Du);
            v136 = AVE_GetCurrTime();
            v137 = AVE_Log_GetLevelStr(6);
            v138 = *v232;
            if (v135)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)\n", v136, 29, v137, v138);
              v139 = AVE_GetCurrTime();
              v223 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)", v139, 29, v223, *v232);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)", v136, 29, v137, v138);
            }
          }
        }

        v140 = CFDictionaryGetValue(a2, @"SliceBetaOffsetDiv2");
        if (v140)
        {
          v141 = a4 + 133;
          CFNumberGetValue(v140, kCFNumberSInt32Type, a4 + 133);
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v142 = AVE_Log_CheckConsole(0x1Du);
            v143 = AVE_GetCurrTime();
            v144 = AVE_Log_GetLevelStr(6);
            v145 = *v141;
            if (v142)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)\n", v143, 29, v144, v145);
              v146 = AVE_GetCurrTime();
              v224 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v146, 29, v224, *v141);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v143, 29, v144, v145);
            }

            v41 = MEMORY[0x29EDB8F00];
          }
        }

        if ((*(a1 + 1296) & 1) != 0 && a4[10] == 1)
        {
          Info = AVE_WtPred_GetInfo(a2, *(a4 + 56), a4 + 25);
          if (!Info)
          {
            valuePtr = 0u;
            v238 = 0u;
            AVE_SNPrintf(&valuePtr, 32, "%llu %d", *(a1 + 56), *(v13 + 8));
            AVE_WtPred_PrintInfo(a4 + 25, 0xD7u, 6, &valuePtr, 0);
          }
        }

        else
        {
          Info = 0;
        }

        v147 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEC0]);
        if (v147)
        {
          if (CFEqual(v147, *v41))
          {
            *a3 |= 2uLL;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v148 = AVE_Log_CheckConsole(0x1Du);
              v149 = AVE_GetCurrTime();
              v150 = AVE_Log_GetLevelStr(6);
              if (v148)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE\n", v149, 29, v150);
                v151 = AVE_GetCurrTime();
                v225 = AVE_Log_GetLevelStr(6);
                v41 = MEMORY[0x29EDB8F00];
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v151, 29, v225);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v149, 29, v150);
              }
            }
          }
        }

        v152 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEE0]);
        if (v152)
        {
          v153 = a4 + 135;
          CFNumberGetValue(v152, kCFNumberSInt32Type, a4 + 135);
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v233 = Info;
            v154 = v13;
            v155 = AVE_Log_CheckConsole(0x1Du);
            v156 = AVE_GetCurrTime();
            v157 = AVE_Log_GetLevelStr(6);
            v158 = *v153;
            if (v155)
            {
              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)\n", v156, 29, v157, v158);
              v159 = AVE_GetCurrTime();
              v226 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v159, 29, v226, *v153);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v156, 29, v157, v158);
            }

            v13 = v154;
            Info = v233;
          }
        }

        v160 = a4 + 11;
        v161 = CFDictionaryGetValue(a2, @"POCLsb");
        if (v161)
        {
          v162 = a4 + 343;
          CFNumberGetValue(v161, kCFNumberSInt32Type, a4 + 343);
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v234 = Info;
            v163 = v13;
            v164 = AVE_Log_CheckConsole(0x1Du);
            v165 = AVE_GetCurrTime();
            v166 = AVE_Log_GetLevelStr(6);
            v167 = *v162;
            if (v164)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)\n", v165, 29, v166, v167);
              v168 = AVE_GetCurrTime();
              v227 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v168, 29, v227, *v162);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v165, 29, v166, v167);
            }

            v13 = v163;
            Info = v234;
          }
        }

        v169 = *MEMORY[0x29EDBCF10];
        v170 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF10]);
        if (v170)
        {
          CFNumberGetValue(v170, kCFNumberSInt32Type, a4 + 11);
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v171 = AVE_Log_CheckConsole(0x1Du);
            v172 = AVE_GetCurrTime();
            v173 = AVE_Log_GetLevelStr(6);
            v174 = *v160;
            if (v171)
            {
              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)\n", v172, 29, v173, v174);
              v175 = AVE_GetCurrTime();
              v228 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v175, 29, v228, *v160);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v172, 29, v173, v174);
            }
          }
        }

        else
        {
          v176 = CFDictionaryGetValue(a2, v169);
          if (v176)
          {
            v177 = v176;
            v178 = CFArrayGetTypeID();
            if (v178 == CFGetTypeID(v177))
            {
              v231 = v13;
              v235 = Info;
              Count = CFArrayGetCount(v177);
              LODWORD(valuePtr) = 0;
              if (Count >= 1)
              {
                v180 = Count;
                for (i = 0; i < v180; i = (i + 1))
                {
                  AVE_CFArray_GetSInt32(v177, i, &valuePtr);
                  if (!i)
                  {
                    *v160 = valuePtr;
                  }

                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v182 = AVE_Log_CheckConsole(0x1Du);
                    v183 = AVE_GetCurrTime();
                    v184 = AVE_Log_GetLevelStr(6);
                    if (v182)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)\n", v183, 29, v184, i, valuePtr);
                      v183 = AVE_GetCurrTime();
                      v184 = AVE_Log_GetLevelStr(6);
                    }

                    syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)", v183, 29, v184, i, valuePtr);
                    v41 = MEMORY[0x29EDB8F00];
                  }
                }
              }

              v13 = v231;
              Info = v235;
            }
          }
        }

        v185 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF00]);
        if (v185)
        {
          if (CFEqual(v185, *v41))
          {
            *(a4 + 1392) = 1;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v186 = AVE_Log_CheckConsole(0x1Du);
              v187 = AVE_GetCurrTime();
              v188 = AVE_Log_GetLevelStr(6);
              v189 = *(a4 + 1392);
              if (v186)
              {
                printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)\n", v187, 29, v188, v189);
                v190 = AVE_GetCurrTime();
                v229 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v190, 29, v229, *(a4 + 1392));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v187, 29, v188, v189);
              }
            }
          }
        }

        v191 = CFDictionaryGetValue(a2, @"ResetRCState");
        if (v191)
        {
          v192 = CFEqual(v191, *v41);
          *(a4 + 4) = v192 != 0;
          if (v192)
          {
            v193 = *(a1 + 1132);
            if (v193 == 1)
            {
              *a4 = 2;
              if (AVE_Log_CheckLevel(0x1Du, 6))
              {
                v197 = AVE_Log_CheckConsole(0x1Du);
                v198 = AVE_GetCurrTime();
                v199 = AVE_Log_GetLevelStr(6);
                if (v197)
                {
                  printf("%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR\n", v198, 29, v199, *(a4 + 4));
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(6);
                }

                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR");
              }
            }

            else if (v193 == 20)
            {
              *(a4 + 4) = 0;
              if (AVE_Log_CheckLevel(0x1Du, 5))
              {
                v194 = AVE_Log_CheckConsole(0x1Du);
                v195 = AVE_GetCurrTime();
                v196 = AVE_Log_GetLevelStr(5);
                if (v194)
                {
                  printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.\n", v195, 29, v196);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.");
              }
            }

            else
            {
              *(a4 + 4) = 0;
              if (AVE_Log_CheckLevel(0x1Du, 5))
              {
                v200 = AVE_Log_CheckConsole(0x1Du);
                v201 = AVE_GetCurrTime();
                v202 = AVE_Log_GetLevelStr(5);
                if (v200)
                {
                  printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.\n", v201, 29, v202);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.");
              }
            }
          }
        }

        v203 = a3 + 100;
        if ((*(a1 + 1337) & 4) != 0)
        {
          if (!AVE_PIP_GetInfo(a2, a3 + 200))
          {
            valuePtr = 0u;
            v238 = 0u;
            AVE_SNPrintf(&valuePtr, 32, "%llu %d %d", *(a1 + 56), *(v13 + 8), *v203);
            AVE_PIP_PrintInfo(a3 + 200, 50, 6, &valuePtr, 0);
          }
        }

        else
        {
          *v203 = 0;
        }
      }

      else
      {
        Info = 0;
      }

      goto LABEL_205;
    }

    if (*(a1 + 11810) == 1)
    {
      v18 = AVE_DW_Get()[263];
      if (v18 >= 1)
      {
        v19 = *(a1 + 16468);
        if (v19 <= 3)
        {
          v20 = *a3 | 4;
          *a3 = v20;
          *(a1 + 18088) |= 4uLL;
LABEL_22:
          if (*(a1 + 16468) <= 5u)
          {
            *a3 = v20 | 4;
          }

          if (AVE_Log_CheckLevel(0x10u, 8))
          {
            v26 = AVE_Log_CheckConsole(0x10u);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(8);
            v29 = *(a1 + 16468);
            v30 = *a3;
            if (v26)
            {
              printf("%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx\n", v27, 16, v28, v29, *(a5[17] + 72), v30);
              v31 = AVE_GetCurrTime();
              v32 = AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v31, 16, v32, *(a1 + 16468), *(a5[17] + 72), *a3);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v27, 16, v28, v29, *(a5[17] + 72), v30);
            }
          }

          goto LABEL_28;
        }

        v49 = v19 % v18;
        v20 = *(a1 + 18088);
        if (!v49)
        {
          v20 = (*a3 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v20 >> 2) & 1))) ^ 4;
          *a3 = v20;
          *(a1 + 18088) = v20;
          goto LABEL_22;
        }

LABEL_21:
        *a3 = v20;
        goto LABEL_22;
      }

      v25 = *a3;
      if (*(a5[17] + 72) > 254)
      {
        v20 = v25 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_21;
      }
    }

    else
    {
      v25 = *a3;
    }

    v20 = v25 | 4;
    goto LABEL_21;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v21 = AVE_Log_CheckConsole(0xCu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s:%d %s | PerFrameData = NULL\n", v22, 12, v23, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
      v24 = AVE_GetCurrTime();
      v210 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v24, 12, v210, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v22, 12, v23, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
    }
  }

  Info = 4294966295;
LABEL_205:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v204 = AVE_Log_CheckConsole(0xCu);
    v205 = AVE_GetCurrTime();
    v206 = AVE_Log_GetLevelStr(7);
    if (v204)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %d\n", v205, 12, v206, "AVE_GetPerFrameData", a1, a2, a3, a4, a5, Info);
      v207 = AVE_GetCurrTime();
      v230 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v207, 12, v230, "AVE_GetPerFrameData");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v205, 12, v206, "AVE_GetPerFrameData");
    }
  }

  return Info;
}

double AVE_Time_Conv(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0x80000000) == 0)
  {
    if (a2)
    {
      v3 = *(a2 + 8);
      if (v3 >= 1)
      {
        if (!a1)
        {
          v2 = 14400000;
        }

        result = v2 * *a2 / v3;
        *a2 = result;
        *(a2 + 8) = v2;
      }
    }
  }

  return result;
}

uint64_t AVE_Dump_WriteInput(_DWORD *a1, int a2, __CVBuffer *a3)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteInput", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", CurrTime);
  }

  if (a1)
  {
    v9 = *&a1[24 * (a2 > 0) + 12];
    if (v9)
    {
      if (a3)
      {
        v10 = AVE_PixelBuf_Dump(a3, a1[3] & 1, v9);
      }

      else
      {
        v10 = 4294966287;
      }
    }

    else
    {
      v10 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v11 = AVE_Log_CheckConsole(0x3Du);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 61, v13, "AVE_Dump_WriteInput", 533, "pDump != __null", 0, a2, a3);
        v14 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 61, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 61, v13);
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v15 = AVE_Log_CheckConsole(0x3Du);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v16, 61, v17, "AVE_Dump_WriteInput", a1, a2, a3, v10);
      v18 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v18, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v16, 61);
    }
  }

  return v10;
}

uint64_t H264VideoEncoderFrameReceiver::CollectSlicesInfo(H264VideoEncoderFrameReceiver *this, unsigned int a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v6 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %d %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %d %d", CurrTime);
  }

  if (a2 >= 0x1E)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d\n", v19, 46, v20, "AVE_FrameRecv", "CollectSlicesInfo", 521, "0 <= iPlaneNumber && iPlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", this, a2);
        v19 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v49 = v20;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d", v19, 46, v49);
    }

    goto LABEL_46;
  }

  if (a3 >= 2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x2Eu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d\n", v22, 46, v23, "AVE_FrameRecv", "CollectSlicesInfo", 524, "0 <= iLayerID && iLayerID < ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", this, a3);
        v22 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v50 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d", v22, 46, v50);
    }

    goto LABEL_46;
  }

  v9 = *(this + a2 + 3384);
  if (!v9)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x2Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d\n", v25, 46, v26, "AVE_FrameRecv", "CollectSlicesInfo", 528, "codedHeader != __null", this, a2);
        v27 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v27, 46, v51);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v25, 46, v26);
      }
    }

    goto LABEL_46;
  }

  v10 = (this + 28032);
  v11 = v9 + 12 * a3;
  v12 = this + 12 * a3;
  v13 = *(v11 + 144);
  v14 = v12 + 29084;
  *(v12 + 7273) = *(v11 + 152);
  *(v12 + 29084) = v13;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v15 = AVE_Log_CheckConsole(0x2Eu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d\n", v16, 46, v17, "AVE_FrameRecv", "CollectSlicesInfo", 531, a3, v14[7], *(v14 + 2));
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d", v16, 46);
  }

  *(this + 7270) = 3 * *(v9 + 140);
  memcpy(this + 28032, (v9 + 280), 0x204uLL);
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v28 = AVE_Log_CheckConsole(0x2Eu);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(7);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s:%d slice number %d\n", v29, 46, v30, "AVE_FrameRecv", "CollectSlicesInfo", 539, *v10);
      v29 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d slice number %d", v29);
  }

  if (*v10 > 0x20)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v41 = AVE_Log_CheckConsole(0x2Eu);
      v42 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(4);
      if (v41)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d\n", v42, 46, v43, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", this, *v10);
        v42 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d", v42, 46, v43, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", this, *v10);
    }

LABEL_46:
    v40 = 4294966295;
    goto LABEL_47;
  }

  if (*v10)
  {
    v31 = 0;
    v32 = (this + 28048);
    do
    {
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v33 = AVE_Log_CheckConsole(0x2Eu);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(7);
        v36 = *(v32 - 3);
        v37 = *(v32 - 2);
        v38 = *(v32 - 1);
        v39 = *v32;
        if (v33)
        {
          printf("%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d\n", v34, 46, v35, "AVE_FrameRecv", "CollectSlicesInfo", 548, v31, v36, v37, *(v32 - 1), v39);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(7);
          v36 = *(v32 - 3);
          v37 = *(v32 - 2);
          v38 = *(v32 - 1);
          v39 = *v32;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d", v34, 46, v35, "AVE_FrameRecv", "CollectSlicesInfo", 548, v31, v36, v37, v38, v39);
      }

      ++v31;
      v32 += 4;
    }

    while (v31 < *v10);
    v40 = 0;
  }

  else
  {
    v40 = 0;
  }

LABEL_47:
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v44 = AVE_Log_CheckConsole(0x2Eu);
    v45 = AVE_GetCurrTime();
    v46 = AVE_Log_GetLevelStr(7);
    if (v44)
    {
      printf("%lld %d AVE %s: %s::%s Exit %d %d %d\n", v45, 46, v46, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3, v40);
      v47 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v47);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v45);
    }
  }

  return v40;
}

uint64_t H264VideoEncoderFrameReceiver::Recv(H264VideoEncoderFrameReceiver *this, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v8 = a2;
  if (this)
  {
    H264VideoEncoderFrameReceiver::FrameDone(this, a2, a3, a4, a5);
    return 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d\n", CurrTime, 46, LevelStr, "Recv", 3528, "pCtx != __null", 0, v8, a3, v6, v5);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", v13, 46, v14);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", CurrTime, 46, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_DAL::Idx2Addr(AVE_DAL *this, uint64_t a2, unint64_t *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Idx2Addr", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", v9, 36, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", CurrTime, 36, LevelStr);
    }
  }

  if ((a2 & 0x80000000) != 0 || !a3)
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p\n", v18, 36, v19, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, v20, a2, a3);
        v21 = AVE_GetCurrTime();
        v16 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v21, 36, v22, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, *this, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v18, 36, v19, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, v20, a2, a3);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Idx2Addr(v10, a2, a3);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d\n", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443, "ret == 0", this, *this, a2, a3, v11);
            v15 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d", v15, 36, v35, "AVE_DAL", "Idx2Addr", 443);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443);
          }
        }

        AVE_Mutex_Unlock(*(this + 1));
        v16 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v23 = AVE_Log_CheckConsole(0x24u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = *this;
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v24, 36, v25, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v27 = AVE_GetCurrTime();
          v16 = 4;
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v27, 36, v28, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, *this, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v24, 36, v25, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v29 = AVE_Log_CheckConsole(0x24u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v16);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v30, 36, v31, "AVE_DAL", "Idx2Addr", this, *this, a2, a3, v11);
      v32 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v32, 36, v36, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v30, 36, v31, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t AVE_BlkPool::Idx2Addr(pthread_mutex_t **this, uint64_t a2, unint64_t *a3)
{
  v4 = a2;
  if (*this)
  {
    AVE_Mutex_Lock(this[3]);
  }

  if (*(this + 16))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = AVE_DLList_Front(this + 4);
    v6 = AVE_BlkBuf_Idx2Addr(v7, v4, a3);
  }

  if (*this)
  {
    AVE_Mutex_Unlock(this[3]);
  }

  return v6;
}

uint64_t AVE_DLList_Front(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Front_cold_1();
  }

  if (AVE_DLList_Empty(a1))
  {
    return 0;
  }

  else
  {
    return a1[1];
  }
}

uint64_t AVE_BlkBuf_Idx2Addr(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    return 4294966295;
  }

  result = 4294966295;
  if (a3)
  {
    if (*(a1 + 76) > a2)
    {
      result = 0;
      *a3 = *(a1 + 64) + *(a1 + 80) * a2;
    }
  }

  return result;
}

uint64_t Connection::peekPacket(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(a1);
  v4 = *(a1 + 208);
  if (*(a1 + 216) > v4)
  {
    v5 = *(a1 + 224) + 40 * (v4 % *(a1 + 192));
    v6 = *v5;
    v7 = *(v5 + 16);
    *(a2 + 32) = *(v5 + 32);
    *a2 = v6;
    *(a2 + 16) = v7;
  }

  return pthread_mutex_unlock(a1);
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

uint64_t AVE_DLList_Begin(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    AVE_DLList_Begin_cold_1();
  }

  return *(a1 + 8);
}

uint64_t AVE_DLList_End(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    AVE_DLList_End_cold_1();
  }

  return result;
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

uint64_t H264VideoEncoderFrameReceiver::DecideSEIBits(void *a1, uint64_t *a2, _DWORD *a3)
{
  v6 = a1 + 39468;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", CurrTime, 211, LevelStr, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3);
      v10 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v10, 211, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", CurrTime, 211, LevelStr);
    }
  }

  v11 = a3[614];
  if (v11)
  {
    v12 = v11 == 3;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || !a3[10])
  {
    if (a3[10])
    {
      v13 = 0x6B00000381;
    }

    else
    {
      v13 = 0x3FF000003E1;
    }

    v14 = 2;
    if (!a3[10])
    {
      v14 = 6;
    }
  }

  else
  {
    v13 = 0x6300000381;
    v14 = 2;
  }

  if (v6[156] == 1 && *v6 == 2)
  {
    v15 = v13 | v14;
    if (v11 == 3 || a3[7432] == 21)
    {
      v13 = v15 | 0x18;
    }

    else
    {
      v13 = v15 | 8;
    }
  }

  *a2 = v13;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v16 = AVE_Log_CheckConsole(0xD3u);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d\n", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3, v13, 0);
      v19 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d", v19, 211, v22, "AVE_FrameRecv", "DecideSEIBits");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits");
    }
  }

  return 0;
}

uint64_t H264VideoEncoderFrameReceiver::SendFrame(void *a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v739 = *MEMORY[0x29EDCA608];
  v6 = a1 + 17958;
  v7 = a1 + 17224;
  v8 = (a1 + 4868);
  v9 = a1 + 3369;
  dataLength = 0;
  v736 = 0;
  v735 = 0;
  cf = 0;
  v10 = *(a1 + 9737);
  bzero(v731, 0x948uLL);
  if (AVE_Log_CheckLevel(0x2Eu, 6))
  {
    v11 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d", CurrTime, 46, LevelStr, "AVE_FrameRecv");
  }

  if (!a2)
  {
    v722 = 3758097084;
    v721 = v9;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v23 = AVE_Log_CheckConsole(3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL");
        goto LABEL_44;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL\n", v24, 3, v25, "SendFrame", 2137, "Frame != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL");
    }

LABEL_24:
    v23 = 0;
LABEL_44:
    v49 = 0;
    v31 = 0;
    goto LABEL_45;
  }

  if (*(a2 + 3180) >= 0x1Eu)
  {
    v722 = 3758097084;
    v721 = v9;
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v23 = AVE_Log_CheckConsole(0x2Eu);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v26, 46);
        goto LABEL_44;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v26, 46, v27, "AVE_FrameRecv", "SendFrame", 2140, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v28, 46);
    }

    goto LABEL_24;
  }

  v14 = a4;
  if (!a1[3669])
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v43 = a2;
      v44 = AVE_Log_CheckConsole(0x2Eu);
      v45 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(7);
      if (v44)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v45, 46, v46);
        v47 = AVE_GetCurrTime();
        sampleSizeArrayf = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v47, 46, sampleSizeArrayf);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v45, 46, v46);
      }

      a2 = v43;
    }

    AVE_SEI::DeleteFrame(v6[4], *(a2 + 40));
    H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, a2, 0);
    return 0;
  }

  v701 = v10;
  v15 = *v8;
  v16 = a4 >= 0;
  v719 = a2;
  v720 = v7;
  v17 = a2;
  v709 = v8;
  v721 = v9;
  if ((*(v8 + 77) < 2u || *(a2 + 44)) && (v18 = *(v9 + 580), (v18 & 0x80000000) == 0) && v18 == *(a2 + 40) - 1 && a1[3639] && *(v9 + 542) >= 1)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 8))
    {
      v19 = AVE_Log_CheckConsole(0x2Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(8);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d\n", v20, 46, v21, "AVE_FrameRecv", "SendFrame", 2169, a1, v720[3], a1[3639], *(v9 + 542));
        v22 = AVE_GetCurrTime();
        sampleSizeArraye = AVE_Log_GetLevelStr(8);
        v17 = a2;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d", v22, 46, sampleSizeArraye, "AVE_FrameRecv");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d", v20, 46, v21, "AVE_FrameRecv");
      }
    }

    if (AVE_EncFrameInfo_AddBuf(a1[3639], *(v9 + 542), 1u, v731))
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v23 = AVE_Log_CheckConsole(0x2Eu);
        v200 = AVE_GetCurrTime();
        v201 = AVE_Log_GetLevelStr(4);
        v84 = v720;
        v202 = v720[3];
        v203 = *(v17 + 40);
        v204 = a1[3639];
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p\n", v200, 46, v201, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v202, v203, v204, *(v9 + 542), v731);
          v205 = AVE_GetCurrTime();
          v206 = AVE_Log_GetLevelStr(4);
          a2 = v17;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p", v205, 46, v206, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v720[3], *(v17 + 40), a1[3639], *(v9 + 542), v731);
          v23 = 0;
        }

        else
        {
          a2 = v17;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p", v200, 46, v201, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v202, v203, v204, *(v9 + 542), v731);
        }

        v49 = 0;
        v31 = 0;
        v722 = 0;
        goto LABEL_304;
      }

      v23 = 0;
      v49 = 0;
      v31 = 0;
      v722 = 0;
      a2 = v17;
LABEL_258:
      v7 = v720;
      goto LABEL_45;
    }

    v696 = *(v9 + 542);
    dataLength = v696;
    v23 = 1;
    v14 = a4;
  }

  else
  {
    v23 = 0;
    v696 = 0;
  }

  a2 = v17;
  v706 = v17 + 29688;
  v29 = v16 & v15;
  if (v14)
  {
    v30 = v16 & v15;
  }

  else
  {
    v30 = 0;
  }

  v714 = v23;
  v697 = v30;
  if (v30)
  {
    v31 = 0;
    v7 = v720;
  }

  else
  {
    AVE_SEI::SetRCMode(v6[4], *(v17 + 40), v721[719]);
    AVE_SEI::SetThroughputMode(v6[4], *(v17 + 40), v721[778]);
    AVE_SEI::SetBitrate(v6[4], *(v17 + 40), v721[720]);
    if ((*(a1 + 29819) & 0x80) != 0)
    {
      v48 = v721[718];
    }

    else
    {
      v48 = -1;
    }

    AVE_SEI::SetLookAheadInfo(v6[4], *(v17 + 40), v48);
    if (*(v8 + 131) == 2)
    {
      if (v721[758] <= 1)
      {
        v82 = v721[750] >= 3 && v721[751] > 2;
      }

      else
      {
        v82 = 1;
      }

      v93 = *(v17 + 2456);
      if (v93 > 6)
      {
        v94 = 0;
      }

      else
      {
        v94 = dword_2954EBA60[v93];
      }

      AVE_SEI::SetActiveParameterSets(v6[4], *(v17 + 40), *(a1 + 14459));
      AVE_SEI::SetPictureTiming(v6[4], *(v17 + 40), v94, v82, *(v17 + 2464), *(v17 + 29728));
      AVE_SEI::SetBufferingPeriod(v6[4], *(v17 + 40), *(a1 + 14459));
      v23 = v714;
    }

    AVE_SEI::SetContentColorVolume(v6[4], *(v17 + 40));
    AVE_SEI::SetMCTFTag(v6[4], *(v17 + 40), *(v17 + 4672), *(v17 + 4656), *(v17 + 4664), *(v17 + 4680), *(v17 + 4688), *(v17 + 4708), *(v17 + 4704), *(v17 + 6116));
    v95 = AVE_SEI::EstimateSEISize(v6[4], *(v17 + 40), -1);
    v31 = malloc_type_malloc(v95, 0x100004077774924uLL);
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v712 = v31;
      v96 = a3;
      v97 = AVE_Log_CheckConsole(0xD3u);
      v98 = AVE_GetCurrTime();
      v99 = AVE_Log_GetLevelStr(8);
      if (v97)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer\n", v98, 211, v99, "AVE_FrameRecv", "SendFrame", 2254, a1, v720[3], v95);
        v98 = AVE_GetCurrTime();
        v99 = AVE_Log_GetLevelStr(8);
        v23 = v714;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer", v98, 211, v99, "AVE_FrameRecv", "SendFrame", 2254, a1, v720[3], v95);
      a3 = v96;
      a2 = v719;
      v31 = v712;
    }

    v7 = v720;
    if (!v31)
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        v49 = 0;
        v31 = 0;
        v722 = 3758097085;
        goto LABEL_45;
      }

      v716 = a3;
      v106 = AVE_Log_CheckConsole(3u);
      v107 = AVE_GetCurrTime();
      v108 = AVE_Log_GetLevelStr(4);
      if (v106)
      {
        v109 = v95;
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d\n", v107, 3, v108, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v95);
        v110 = AVE_GetCurrTime();
        v111 = AVE_Log_GetLevelStr(4);
        a2 = v719;
        v7 = v720;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d", v110, 3, v111, "SendFrame", 2258, "pSEIBuffer != __null", *(v719 + 40), v109);
        v49 = 0;
        v31 = 0;
        v722 = 3758097085;
LABEL_121:
        a3 = v716;
        v23 = v714;
        goto LABEL_45;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d", v107, 3, v108, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v95);
      v49 = 0;
      v31 = 0;
      v722 = 3758097085;
      v23 = v714;
      goto LABEL_258;
    }

    v722 = H264VideoEncoderFrameReceiver::AddAllSEIs(a1, a2, v31, v95, v29, a4);
    if (v722)
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        v49 = 0;
        goto LABEL_45;
      }

      v100 = v720;
      v708 = v6;
      v101 = AVE_Log_CheckConsole(3u);
      v102 = AVE_GetCurrTime();
      v103 = AVE_Log_GetLevelStr(4);
      if (v101)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d\n", v102, 3, v103, "SendFrame", 2264, "err == 0", *(a2 + 40), v722);
        v104 = AVE_GetCurrTime();
        v105 = AVE_Log_GetLevelStr(4);
        v7 = v720;
        v23 = v714;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d", v104, 3, v105, "SendFrame", 2264, "err == 0", *(a2 + 40), v722);
        v49 = 0;
LABEL_228:
        v6 = v708;
        goto LABEL_45;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d", v102, 3, v103, "SendFrame", 2264, "err == 0", *(a2 + 40), v722);
      v49 = 0;
LABEL_128:
      v6 = v708;
      goto LABEL_313;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v112 = AVE_Log_CheckConsole(0x2Eu);
      v113 = AVE_GetCurrTime();
      v114 = AVE_Log_GetLevelStr(7);
      v115 = *(v720 + 8);
      if (v112)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer\n", v113, 46, v114, "AVE_FrameRecv", "SendFrame", 2267, a1, v720[3], v115);
        v116 = AVE_GetCurrTime();
        v117 = AVE_Log_GetLevelStr(7);
        v7 = v720;
        v23 = v714;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer", v116, 46, v117, "AVE_FrameRecv", "SendFrame", 2267, a1, v720[3], *(v720 + 8));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer", v113, 46, v114, "AVE_FrameRecv", "SendFrame", 2267, a1, v720[3], v115);
        v7 = v720;
      }
    }

    v133 = *(v7 + 8);
    if (v133 >= 1)
    {
      if (AVE_EncFrameInfo_AddBuf(v31, v133, 2u, v731))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v715 = a3;
          v134 = v7;
          v135 = AVE_Log_CheckConsole(0x2Eu);
          v136 = AVE_GetCurrTime();
          v137 = AVE_Log_GetLevelStr(4);
          v138 = v134[3];
          v139 = *(a2 + 40);
          if (!v135)
          {
            v100 = v134;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p", v136, 46, v137, "AVE_FrameRecv", "SendFrame", 2275, "ret == 0", a1, v138, v139, v31, *(v134 + 8), v731);
            v49 = 0;
            v722 = 0;
            goto LABEL_313;
          }

          v684 = *(v134 + 8);
          v89 = v6;
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p\n", v136, 46, v137, "AVE_FrameRecv", "SendFrame", 2275, "ret == 0", a1, v138, v139, v31, v684, v731);
          v90 = AVE_GetCurrTime();
          v140 = AVE_Log_GetLevelStr(4);
          v683 = *(v720 + 8);
          v687 = v731;
          v678 = *(a2 + 40);
          v681 = v31;
          v671 = a1;
          v674 = v720[3];
          v661 = 2275;
          v666 = "ret == 0";
          v23 = v714;
          v7 = v720;
          sampleSizeArray = v140;
          v92 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p";
LABEL_147:
          v6 = v89;
          syslog(3, v92, v90, 46, sampleSizeArray, "AVE_FrameRecv", "SendFrame", v661, v666, v671, v674, v678, v681, v683, v687);
LABEL_159:
          v49 = 0;
LABEL_160:
          v722 = 0;
LABEL_161:
          a3 = v715;
          goto LABEL_45;
        }

LABEL_148:
        v49 = 0;
        goto LABEL_149;
      }

      dataLength += *(v7 + 8);
    }

    v14 = a4;
  }

  allocator = v16 & v15;
  if ((v29 & 1) == 0)
  {
    v711 = v31;
    if (v721[270] >= 1)
    {
      v59 = 0;
      v60 = 0;
      memoryBlock = a1 + 7137;
      v61 = (a1 + 3503);
      v716 = a3;
      v707 = v6;
      while (1)
      {
        v62 = v61[6];
        if (v62 >= 1)
        {
          v63 = a1[*(a2 + 3180) + 3444];
          if (!v63)
          {
            if (!AVE_Log_CheckLevel(0x2Eu, 4))
            {
              goto LABEL_140;
            }

            v118 = AVE_Log_CheckConsole(0x2Eu);
            v119 = AVE_GetCurrTime();
            v120 = AVE_Log_GetLevelStr(4);
            v100 = v720;
            v121 = v720[3];
            v31 = v711;
            if (v118)
            {
              v7 = v720;
              printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v119, 46, v120, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v121, *(a2 + 3180), v60);
              v122 = AVE_GetCurrTime();
              v123 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v122, 46, v123, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v720[3], *(a2 + 3180), v60);
              v49 = 0;
              v722 = 0;
              goto LABEL_121;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v119, 46, v120, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v121, *(a2 + 3180), v60);
            v49 = 0;
            v722 = 0;
            a3 = v716;
LABEL_312:
            v23 = v714;
LABEL_313:
            v7 = v100;
            goto LABEL_45;
          }

          v64 = v61;
          v65 = a2;
          if (AVE_Log_CheckLevel(0x2Eu, 8))
          {
            v66 = AVE_Log_CheckConsole(0x2Eu);
            v67 = AVE_GetCurrTime();
            v68 = AVE_Log_GetLevelStr(8);
            v69 = v720[3];
            if (v66)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v67, 46, v68, "AVE_FrameRecv", "SendFrame", 2355, a1, v69, v60, (v63 + v59), v62);
              v70 = AVE_GetCurrTime();
              v71 = AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v70, 46, v71, "AVE_FrameRecv", "SendFrame", 2355, a1, v720[3], v60, (v63 + v59), v62);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v67, 46, v68, "AVE_FrameRecv", "SendFrame", 2355, a1, v69, v60, (v63 + v59), v62);
            }

            v65 = v719;
            v6 = v707;
          }

          if (AVE_EncFrameInfo_AddBuf((v63 + v59), v62, 3u, v731))
          {
            a2 = v65;
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v124 = (v63 + v59);
              v125 = AVE_Log_CheckConsole(0x2Eu);
              v126 = AVE_GetCurrTime();
              v127 = AVE_Log_GetLevelStr(4);
              v7 = v720;
              if (v125)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v126, 46, v127, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0", a1, v720[3], *(v65 + 40), v124, v62, v731);
                v126 = AVE_GetCurrTime();
                v127 = AVE_Log_GetLevelStr(4);
                v7 = v720;
                a2 = v65;
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v126, 46, v127, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0");
LABEL_315:
              v49 = 0;
              v722 = 0;
              a3 = v716;
LABEL_437:
              v23 = v714;
LABEL_438:
              v31 = v711;
              goto LABEL_45;
            }

LABEL_140:
            v49 = 0;
            v722 = 0;
            a3 = v716;
            v7 = v720;
            goto LABEL_437;
          }

          dataLength += v62;
          a2 = v65;
          v61 = v64;
        }

        v72 = v61[4];
        if (v72 < 1)
        {
          a3 = v716;
          v7 = v720;
        }

        else
        {
          v73 = a1[*(a2 + 3180) + 3309];
          if (!v73)
          {
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v128 = AVE_Log_CheckConsole(0x2Eu);
              v129 = AVE_GetCurrTime();
              v130 = AVE_Log_GetLevelStr(4);
              v7 = v720;
              v31 = v711;
              if (v128)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v129, 46, v130, "AVE_FrameRecv", "SendFrame", 2375, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v720[3], *(a2 + 3180), v60);
                v131 = AVE_GetCurrTime();
                v132 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v131, 46, v132, "AVE_FrameRecv");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v129, 46, v130, "AVE_FrameRecv");
              }

              v49 = 0;
              v722 = 0;
              a3 = v716;
              v23 = v714;
              goto LABEL_45;
            }

            goto LABEL_140;
          }

          v74 = (v73 + v61[3]);
          if (AVE_Log_CheckLevel(0x2Eu, 8))
          {
            v75 = v61;
            v76 = AVE_Log_CheckConsole(0x2Eu);
            v77 = AVE_GetCurrTime();
            v78 = AVE_Log_GetLevelStr(8);
            v79 = v720[3];
            if (v76)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v77, 46, v78, "AVE_FrameRecv", "SendFrame", 2377, a1, v79, v60, v74, v72);
              v80 = AVE_GetCurrTime();
              v81 = AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v80, 46, v81, "AVE_FrameRecv", "SendFrame", 2377, a1, v720[3], v60, v74, v72);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v77, 46, v78, "AVE_FrameRecv", "SendFrame", 2377, a1, v79, v60, v74, v72);
            }

            a2 = v719;
            v61 = v75;
          }

          if (AVE_EncFrameInfo_AddBuf(v74, v72, 3u, v731))
          {
            v141 = v720;
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v142 = AVE_Log_CheckConsole(0x2Eu);
              v143 = AVE_GetCurrTime();
              v144 = AVE_Log_GetLevelStr(4);
              v145 = v720[3];
              v146 = *(a2 + 40);
              if (v142)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v143, 46, v144, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v145, v146, v74, v72, v731);
                v147 = AVE_GetCurrTime();
                v148 = AVE_Log_GetLevelStr(4);
                v685 = v72;
                v688 = v731;
                v679 = *(a2 + 40);
                v682 = v74;
                v672 = a1;
                v675 = v720[3];
                v7 = v720;
                v662 = 2383;
                sampleSizeArraya = v148;
                v149 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p";
                goto LABEL_256;
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", v143, 46, v144, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v145, v146, v74, v72, v731);
            }

            v49 = 0;
            v722 = 0;
            a3 = v716;
            v23 = v714;
            v31 = v711;
            goto LABEL_320;
          }

          v7 = v720;
          if ((*(a2 + 9) & 1) != 0 && AVE_Crypto_AddInfo(dataLength, v72, memoryBlock))
          {
            if (!AVE_Log_CheckLevel(0x2Eu, 4))
            {
              goto LABEL_315;
            }

            v252 = AVE_Log_CheckConsole(0x2Eu);
            v253 = AVE_GetCurrTime();
            v254 = AVE_Log_GetLevelStr(4);
            if (!v252)
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v253, 46, v254, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0");
              goto LABEL_315;
            }

            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v253, 46, v254, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0", a1, v720[3], *(a2 + 40), v60, dataLength, v72, memoryBlock);
            v147 = AVE_GetCurrTime();
            v255 = AVE_Log_GetLevelStr(4);
            v688 = v72;
            v690 = a1 + 28548;
            v682 = v60;
            v685 = dataLength;
            v675 = v720[3];
            v679 = *(a2 + 40);
            v672 = a1;
            v6 = v707;
            v662 = 2391;
            v149 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p";
            sampleSizeArraya = v255;
LABEL_256:
            syslog(3, v149, v147, 46, sampleSizeArraya, "AVE_FrameRecv", "SendFrame", v662, "ret == 0", v672, v675, v679, v682, v685, v688, v690);
            goto LABEL_315;
          }

          dataLength += v72;
          LODWORD(v72) = v61[4];
          a3 = v716;
        }

        ++v60;
        v61 += 4;
        v59 += 1024;
        if (v60 >= v721[270])
        {
          goto LABEL_169;
        }
      }
    }

    LODWORD(v72) = 0;
    v61 = 0;
LABEL_169:
    v23 = v714;
    if (!dataLength)
    {
      goto LABEL_248;
    }

    goto LABEL_170;
  }

  v32 = &a1[2 * v14 + 3504] + 1;
  v33 = v32[3];
  if (v33 >= 1)
  {
    v34 = a1[*(a2 + 3180) + 3444];
    if (v34)
    {
      v715 = a3;
      v35 = (v34 + (v14 << 10));
      if (AVE_Log_CheckLevel(0x2Eu, 8))
      {
        v710 = v31;
        v36 = AVE_Log_CheckConsole(0x2Eu);
        v37 = v7;
        v38 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(8);
        if (v36)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v38, 46, v39, "AVE_FrameRecv", "SendFrame", 2297, a1, v37[3], a4, v35, v33);
          v40 = v35;
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(8);
          v23 = v714;
          blockBufferOut = v41;
          v35 = v40;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", blockBufferOut, 46, v42, "AVE_FrameRecv", "SendFrame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v38, 46, v39, "AVE_FrameRecv", "SendFrame");
        }

        v7 = v37;
        a2 = v719;
        v31 = v710;
      }

      if (AVE_EncFrameInfo_AddBuf(v35, v33, 3u, v731))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v708 = v6;
          v150 = AVE_Log_CheckConsole(0x2Eu);
          v151 = AVE_GetCurrTime();
          v152 = AVE_Log_GetLevelStr(4);
          if (v150)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v151, 46, v152, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0", a1, v7[3], *(a2 + 40), v35, v33, v731);
            v153 = AVE_GetCurrTime();
            sampleSizeArrayh = AVE_Log_GetLevelStr(4);
            v23 = v714;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v153, 46, sampleSizeArrayh, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v151, 46, v152, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0");
          }

          v49 = 0;
          v722 = 0;
          a3 = v715;
          goto LABEL_228;
        }

        goto LABEL_159;
      }

      dataLength += v33;
      goto LABEL_163;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v715 = a3;
      v84 = v7;
      v85 = AVE_Log_CheckConsole(0x2Eu);
      v86 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(4);
      v88 = v84[3];
      if (!v85)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v86, 46, v87, "AVE_FrameRecv", "SendFrame", 2295, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v88, *(a2 + 3180), a4);
        v49 = 0;
        v722 = 0;
LABEL_304:
        v7 = v84;
        goto LABEL_45;
      }

      v7 = v84;
      v89 = v6;
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v86, 46, v87, "AVE_FrameRecv", "SendFrame", 2295, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v88, *(a2 + 3180), a4);
      v90 = AVE_GetCurrTime();
      v91 = AVE_Log_GetLevelStr(4);
      v678 = *(a2 + 3180);
      v681 = a4;
      v671 = a1;
      v674 = v84[3];
      v661 = 2295;
      v666 = "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null";
      v23 = v714;
      sampleSizeArray = v91;
      v92 = "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d";
      goto LABEL_147;
    }

    goto LABEL_148;
  }

LABEL_163:
  v711 = v31;
  v154 = v32 + 1;
  v72 = v32[1];
  if (v72 < 1)
  {
    v61 = v32 + 1;
    goto LABEL_169;
  }

  v155 = a1[*(a2 + 3180) + 3309];
  if (!v155)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v195 = v23;
      v84 = v7;
      v196 = AVE_Log_CheckConsole(0x2Eu);
      v197 = AVE_GetCurrTime();
      v198 = AVE_Log_GetLevelStr(4);
      if (v196)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v197, 46, v198, "AVE_FrameRecv", "SendFrame", 2315, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v84[3], *(a2 + 3180), a4);
        v199 = AVE_GetCurrTime();
        v195 = v714;
        sampleSizeArrayj = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v199, 46, sampleSizeArrayj, "AVE_FrameRecv");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v197, 46, v198, "AVE_FrameRecv");
      }

      v49 = 0;
      v722 = 0;
      v31 = v711;
      v23 = v195;
      goto LABEL_304;
    }

    goto LABEL_322;
  }

  v156 = (v155 + *v32);
  v61 = v32 + 1;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v717 = a3;
    v157 = v7;
    v158 = AVE_Log_CheckConsole(0x2Eu);
    v159 = AVE_GetCurrTime();
    v160 = AVE_Log_GetLevelStr(8);
    if (v158)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v159, 46, v160, "AVE_FrameRecv", "SendFrame", 2317, a1, v157[3], a4, v156, v72);
      v161 = AVE_GetCurrTime();
      v61 = v154;
      sampleSizeArrayi = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v161, 46, sampleSizeArrayi, "AVE_FrameRecv", "SendFrame");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v159, 46, v160, "AVE_FrameRecv", "SendFrame");
    }

    a3 = v717;
    a2 = v719;
    v7 = v157;
    v23 = v714;
  }

  if (AVE_EncFrameInfo_AddBuf(v156, v72, 3u, v731))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v708 = v6;
      v237 = AVE_Log_CheckConsole(0x2Eu);
      v238 = AVE_GetCurrTime();
      v239 = AVE_Log_GetLevelStr(4);
      v240 = v7[3];
      v241 = *(a2 + 40);
      if (!v237)
      {
        v100 = v7;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", v238, 46, v239, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v240, v241, v156, v72, v731);
        v49 = 0;
        v722 = 0;
        v6 = v708;
        v31 = v711;
        goto LABEL_312;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v238, 46, v239, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v240, v241, v156, v72, v731);
      v242 = AVE_GetCurrTime();
      v243 = AVE_Log_GetLevelStr(4);
      v23 = v714;
      a2 = v719;
      blockBufferOuta = v242;
      v7 = v720;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", blockBufferOuta, 46, v243, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v720[3], *(v719 + 40), v156, v72, v731);
      v49 = 0;
      v722 = 0;
      goto LABEL_396;
    }

    goto LABEL_322;
  }

  if ((*(a2 + 9) & 1) != 0 && AVE_Crypto_AddInfo(dataLength, v72, a1 + 7137))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v708 = v6;
      v244 = AVE_Log_CheckConsole(0x2Eu);
      v245 = AVE_GetCurrTime();
      v246 = AVE_Log_GetLevelStr(4);
      if (v244)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v245, 46, v246, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0", a1, v7[3], *(a2 + 40), a4, dataLength, v72, a1 + 28548);
        v247 = AVE_GetCurrTime();
        sampleSizeArrayl = AVE_Log_GetLevelStr(4);
        blockBufferOutb = v247;
        a2 = v719;
        v7 = v720;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", blockBufferOutb, 46, sampleSizeArrayl, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v245, 46, v246, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0");
      }

      v49 = 0;
      v722 = 0;
      goto LABEL_436;
    }

LABEL_322:
    v49 = 0;
LABEL_323:
    v722 = 0;
    goto LABEL_438;
  }

  dataLength += v72;
  LODWORD(v72) = *v61;
  if (!dataLength)
  {
LABEL_248:
    v722 = 3758097084;
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v248 = AVE_Log_CheckConsole(0x2Eu);
      v249 = AVE_GetCurrTime();
      v250 = AVE_Log_GetLevelStr(4);
      if (v248)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size\n", v249, 46, v250, "AVE_FrameRecv", "SendFrame", 2402, "totalSize != 0", a1, v7[3], *(a2 + 40));
        v251 = AVE_GetCurrTime();
        v23 = v714;
        sampleSizeArraym = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size", v251, 46, sampleSizeArraym, "AVE_FrameRecv");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size", v249, 46, v250, "AVE_FrameRecv");
      }
    }

    v49 = 0;
    goto LABEL_438;
  }

LABEL_170:
  if (v701 - 1 == a4)
  {
    v162 = 0;
  }

  else
  {
    v162 = allocator;
  }

  if (v162)
  {
    v691 = v162;
    v715 = a3;
    v49 = 0;
    goto LABEL_175;
  }

  v188 = v721[532];
  if (!v188)
  {
    v691 = v162;
    v49 = 0;
    goto LABEL_202;
  }

  if (-1431655765 * v188 >= 0x55555556)
  {
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v189 = AVE_Log_CheckConsole(0x2Eu);
    v190 = AVE_GetCurrTime();
    v191 = AVE_Log_GetLevelStr(4);
    if (!v189)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d", v190, 46, v191, "AVE_FrameRecv");
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d\n", v190, 46, v191, "AVE_FrameRecv", "SendFrame", 2412, "m_numCABACzeroWordToBeInserted % 3 == 0", a1, v7[3], *(a2 + 40), v721[532]);
    v192 = AVE_GetCurrTime();
    v193 = AVE_Log_GetLevelStr(4);
    v677 = *(a2 + 40);
    v680 = v721[532];
    v673 = a1;
    v676 = v7[3];
    v663 = 2412;
    v667 = "m_numCABACzeroWordToBeInserted % 3 == 0";
    v23 = v714;
    sampleSizeArrayb = v193;
    v194 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d";
LABEL_188:
    syslog(3, v194, v192, 46, sampleSizeArrayb, "AVE_FrameRecv", "SendFrame", v663, v667, v673, v676, v677, v680);
    goto LABEL_322;
  }

  if (!v61)
  {
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v297 = AVE_Log_CheckConsole(0x2Eu);
    v298 = AVE_GetCurrTime();
    v299 = AVE_Log_GetLevelStr(4);
    if (!v297)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld", v298, 46, v299);
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld\n", v298, 46, v299, "AVE_FrameRecv", "SendFrame", 2414, "piLastOutputSliceSize != __null", a1, v7[3]);
    v192 = AVE_GetCurrTime();
    v300 = AVE_Log_GetLevelStr(4);
    v673 = a1;
    v676 = v7[3];
    v663 = 2414;
    v667 = "piLastOutputSliceSize != __null";
    v23 = v714;
    sampleSizeArrayb = v300;
    v194 = "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld";
    goto LABEL_188;
  }

  v691 = v162;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v700 = v61;
    v233 = AVE_Log_CheckConsole(0x2Eu);
    v234 = AVE_GetCurrTime();
    v235 = AVE_Log_GetLevelStr(8);
    if (v233)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld\n", v234, 46, v235, "AVE_FrameRecv", "SendFrame", 2417, a1, v7[3], v721[532], dataLength);
      v236 = AVE_GetCurrTime();
      sampleSizeArrayk = AVE_Log_GetLevelStr(8);
      v23 = v714;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld", v236, 46, sampleSizeArrayk, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld", v234, 46, v235, "AVE_FrameRecv");
    }

    v61 = v700;
  }

  v338 = malloc_type_malloc(v721[532], 0x100004077774924uLL);
  if (!v338)
  {
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v342 = AVE_Log_CheckConsole(0x2Eu);
    v343 = AVE_GetCurrTime();
    v344 = AVE_Log_GetLevelStr(4);
    if (!v342)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d", v343, 46, v344, "AVE_FrameRecv");
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d\n", v343, 46, v344, "AVE_FrameRecv", "SendFrame", 2423, "piCABACZeroWordInsertBuf != __null", a1, v7[3], *(a2 + 3180), v721[532]);
    v192 = AVE_GetCurrTime();
    v345 = AVE_Log_GetLevelStr(4);
    v677 = *(a2 + 3180);
    v680 = v721[532];
    v673 = a1;
    v676 = v7[3];
    v663 = 2423;
    v667 = "piCABACZeroWordInsertBuf != __null";
    v23 = v714;
    sampleSizeArrayb = v345;
    v194 = "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d";
    goto LABEL_188;
  }

  v49 = v338;
  if (v721[532])
  {
    v339 = 0;
    v340 = v338 + 2;
    do
    {
      *(v340 - 1) = 0;
      *v340 = 3;
      v340 += 3;
      v339 += 3;
      v341 = v721[532];
    }

    while (v339 < v341);
  }

  else
  {
    LODWORD(v341) = 0;
  }

  if (AVE_EncFrameInfo_AddBuf(v338, v341, 4u, v731))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v346 = v23;
      v347 = AVE_Log_CheckConsole(0x2Eu);
      v348 = a2;
      v349 = AVE_GetCurrTime();
      v350 = AVE_Log_GetLevelStr(4);
      v351 = v7[3];
      v352 = *(v348 + 40);
      if (!v347)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p", v349, 46, v350, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v351, v352, v49, v721[532], v731);
        v722 = 0;
        v31 = v711;
        a2 = v348;
        v23 = v346;
        goto LABEL_45;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p\n", v349, 46, v350, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v351, v352, v49, v721[532], v731);
      v353 = AVE_GetCurrTime();
      v354 = AVE_Log_GetLevelStr(4);
      v23 = v714;
      a2 = v719;
      v7 = v720;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p", v353, 46, v354, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v720[3], *(v719 + 40), v49, v721[532], v731);
      v722 = 0;
      goto LABEL_438;
    }

    goto LABEL_323;
  }

  v355 = v61;
  v356 = v7;
  v357 = v721;
  dataLength += v721[532];
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v358 = AVE_Log_CheckConsole(0x2Eu);
    v359 = AVE_GetCurrTime();
    v360 = AVE_Log_GetLevelStr(8);
    v361 = *v355;
    if (v358)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes\n", v359, 46, v360, "AVE_FrameRecv", "SendFrame", 2440, a1, v356[3], v361);
      v362 = AVE_GetCurrTime();
      v363 = AVE_Log_GetLevelStr(8);
      v23 = v714;
      v357 = v721;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes", v362, 46, v363, "AVE_FrameRecv", "SendFrame", 2440, a1, v356[3], *v355);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes", v359, 46, v360, "AVE_FrameRecv", "SendFrame", 2440, a1, v356[3], v361);
      v357 = v721;
    }
  }

  LODWORD(v72) = v357[532] + v72;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v409 = AVE_Log_CheckConsole(0x2Eu);
    v410 = AVE_GetCurrTime();
    v411 = AVE_Log_GetLevelStr(8);
    v412 = v356[3];
    v413 = *v355;
    if (v409)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes\n", v410, 46, v411, "AVE_FrameRecv", "SendFrame", 2444, a1, v412, v413);
      v414 = AVE_GetCurrTime();
      v415 = AVE_Log_GetLevelStr(8);
      v23 = v714;
      blockBufferOutc = v414;
      v61 = v355;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes", blockBufferOutc, 46, v415, "AVE_FrameRecv", "SendFrame", 2444, a1, v720[3], *v355);
      a2 = v719;
      goto LABEL_202;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes", v410, 46, v411, "AVE_FrameRecv", "SendFrame", 2444, a1, v412, v413);
    a2 = v719;
  }

  else
  {
    a2 = v719;
  }

  v61 = v355;
LABEL_202:
  v715 = a3;
  if (*(v709 + 77) >= 2u && !*(a2 + 44))
  {
LABEL_175:
    v698 = v61;
    if (v709[682] != 1)
    {
      goto LABEL_179;
    }

    v163 = v697;
    if (*(v709 + 299) < 1)
    {
      v163 = 1;
    }

    if (v163)
    {
      goto LABEL_179;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v228 = AVE_Log_CheckConsole(0x2Eu);
      v229 = AVE_GetCurrTime();
      v230 = AVE_Log_GetLevelStr(7);
      if (v228)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d\n", v229, 46, v230, "AVE_FrameRecv", "SendFrame", 2505, a1, v720[3], *(v719 + 40), a1 + 39627, *(v709 + 299));
        v231 = AVE_GetCurrTime();
        v232 = AVE_Log_GetLevelStr(7);
        v23 = v714;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v231, 46, v232, "AVE_FrameRecv", "SendFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v229, 46, v230, "AVE_FrameRecv", "SendFrame");
      }
    }

    v301 = a1 + 39627;
    if (AVE_EncFrameInfo_AddBuf(a1 + 39627, *(v709 + 299), 6u, v731))
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v302 = AVE_Log_CheckConsole(0x2Eu);
        v303 = AVE_GetCurrTime();
        v304 = AVE_Log_GetLevelStr(4);
        v305 = v720[3];
        v306 = *(v719 + 40);
        if (!v302)
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p", v303, 46, v304, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v305, v306, v301, *(v709 + 299), v731);
          v722 = 0;
          a3 = v715;
          v7 = v720;
          a2 = v719;
          v31 = v711;
          goto LABEL_45;
        }

        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p\n", v303, 46, v304, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v305, v306, v301, *(v709 + 299), v731);
        v307 = AVE_GetCurrTime();
        v308 = AVE_Log_GetLevelStr(4);
        v23 = v714;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p", v307, 46, v308, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v720[3], *(v719 + 40), v301, *(v709 + 299), v731);
        v722 = 0;
        a3 = v715;
        v7 = v720;
        a2 = v719;
        goto LABEL_438;
      }
    }

    else
    {
      dataLength += *(v709 + 299);
      if ((*(v719 + 9) & 1) == 0)
      {
        goto LABEL_179;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v309 = AVE_Log_CheckConsole(0x2Eu);
        v310 = AVE_GetCurrTime();
        v311 = AVE_Log_GetLevelStr(7);
        v312 = v720[3];
        v313 = *(v719 + 40);
        v314 = *(v709 + 299);
        if (v309)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d\n", v310, 46, v311, "AVE_FrameRecv", "SendFrame", 2519, a1, v312, v313, v301, dataLength, v314);
          v315 = AVE_GetCurrTime();
          v316 = AVE_Log_GetLevelStr(7);
          v23 = v714;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d", v315, 46, v316, "AVE_FrameRecv", "SendFrame", 2519, a1, v720[3], *(v719 + 40), v301, dataLength, *(v709 + 299));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d", v310, 46, v311, "AVE_FrameRecv", "SendFrame", 2519, a1, v312, v313, v301, dataLength, v314);
          v23 = v714;
        }
      }

      v397 = a1 + 28548;
      if (!AVE_Crypto_AddInfo(dataLength, 0, a1 + 7137))
      {
LABEL_179:
        v708 = v6;
        v164 = dataLength;
        v165 = v721[542];
        a2 = v719;
        AVE_Crypto_PrintInfo(a1 + 7137, 46, 8, 0, *(v719 + 40));
        v166 = a1 + 3384;
        v167 = a1[*(v719 + 3180) + 3384];
        if (v167)
        {
          v702 = (v719 + 40);
          v168 = v164 - v165;
          v169 = v167 + 45320;
          v170 = &a1[9 * *(v719 + 44) + 3641];
          *v170 = *v169;
          v171 = *(v169 + 16);
          v172 = *(v169 + 32);
          v173 = *(v169 + 48);
          v170[8] = *(v169 + 64);
          *(v170 + 2) = v172;
          *(v170 + 3) = v173;
          *(v170 + 1) = v171;
          v7 = v720;
          if (AVE_Log_CheckLevel(0x2Eu, 7))
          {
            v174 = v168;
            v175 = AVE_Log_CheckConsole(0x2Eu);
            v176 = AVE_GetCurrTime();
            v177 = AVE_Log_GetLevelStr(7);
            v178 = v720[3];
            v179 = *(v709 + 77);
            v181 = *(v719 + 40);
            v180 = *(v719 + 44);
            v182 = a1[3639];
            v183 = v721[542];
            v184 = v721[580];
            v185 = *(v721 + 2324);
            if (v175)
            {
              v168 = v174;
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld\n", v176, 46, v177, "AVE_FrameRecv", "SendFrame", 2540, a1, v178, v179, v180, v181, v182, v183, v184, v185, v174, dataLength);
              v186 = AVE_GetCurrTime();
              v187 = AVE_Log_GetLevelStr(7);
              v23 = v714;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld", v186, 46, v187, "AVE_FrameRecv", "SendFrame", 2540, a1, v720[3], *(v709 + 77), *(v719 + 44), *(v719 + 40), a1[3639], v721[542], v721[580], *(v721 + 2324), v174, dataLength);
              a2 = v719;
              v7 = v720;
            }

            else
            {
              v168 = v174;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld", v176, 46, v177, "AVE_FrameRecv", "SendFrame", 2540, a1, v178, v179, v180, v181, v182, v183, v184, v185, v174, dataLength);
              a2 = v719;
              v7 = v720;
              v23 = v714;
            }

            v166 = a1 + 3384;
          }

          a3 = v715;
          if (*(v709 + 77) < 2u || *(a2 + 44))
          {
            Buffer = H264VideoEncoderFrameReceiver::CreateBuffer(a1, dataLength, &cf, *(a2 + 2552));
            v257 = Buffer;
            v721[580] = -1;
            v258 = *(v709 + 77);
            if (v258 <= 1)
            {
              *(v721 + 2324) = 0;
            }

            if (Buffer)
            {
              goto LABEL_267;
            }

            if (AVE_Log_CheckLevel(3u, 4))
            {
              v266 = v168;
              v267 = AVE_Log_CheckConsole(3u);
              v268 = AVE_GetCurrTime();
              v269 = AVE_Log_GetLevelStr(4);
              if (v267)
              {
                printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld\n", v268, 3, v269, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v702, v266);
                v270 = AVE_GetCurrTime();
                v271 = AVE_Log_GetLevelStr(4);
                v23 = v714;
                syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld", v270, 3, v271, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v702, v266);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld", v268, 3, v269, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v702, v266);
              }

              v272 = 3758097085;
            }

            else
            {
              v272 = 3758097085;
            }

LABEL_395:
            v722 = v272;
            goto LABEL_396;
          }

          v287 = *v721;
          if (v168 > v287)
          {
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v288 = v168;
              v289 = AVE_Log_CheckConsole(0x2Eu);
              v290 = AVE_GetCurrTime();
              v291 = AVE_Log_GetLevelStr(4);
              v292 = v7[3];
              v293 = *(v709 + 77);
              v294 = *(a2 + 44);
              if (!v289)
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld", v290, 46, v291, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v292, v293, v294, *v721, v288);
                v722 = 4294954394;
                v6 = v708;
                v31 = v711;
                goto LABEL_161;
              }

              printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld\n", v290, 46, v291, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v292, v293, v294, *v721, v288);
              v295 = AVE_GetCurrTime();
              v296 = AVE_Log_GetLevelStr(4);
              v23 = v714;
              a3 = v715;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld", v295, 46, v296, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v7[3], *(v709 + 77), *(a2 + 44), *v721, v288);
              v722 = 4294954394;
LABEL_396:
              v6 = v708;
              goto LABEL_438;
            }

            v272 = 4294954394;
            goto LABEL_395;
          }

          v257 = a1[3639];
          if (v257 || (v257 = malloc_type_malloc(v287, 0x100004077774924uLL), (a1[3639] = v257) != 0))
          {
            v721[542] = v168;
            v721[580] = *(a2 + 40);
            v318 = *(a2 + 2456) == 3 || *(v706 + 40) == 21;
            *(v721 + 2324) = v318;
            v258 = *(v709 + 77);
LABEL_267:
            v724 = v168;
            v259 = v715;
            if (v258 >= 2)
            {
              *(v721 + 2325) = 0;
            }

            v260 = H264VideoEncoderFrameReceiver::CopyEncodedFrameIntoExternalBuffer(a1, v731, dataLength, v257);
            if (v260)
            {
              v261 = v260;
              if (AVE_Log_CheckLevel(0x2Eu, 4))
              {
                v262 = AVE_Log_CheckConsole(0x2Eu);
                v263 = AVE_GetCurrTime();
                v264 = AVE_Log_GetLevelStr(4);
                if (v262)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d\n", v263, 46, v264, "AVE_FrameRecv", "SendFrame", 2589, "ret == 0", v731, dataLength, v257, v261);
                  v265 = AVE_GetCurrTime();
                  v23 = v714;
                  sampleSizeArrayn = AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d", v265, 46, sampleSizeArrayn, "AVE_FrameRecv", "SendFrame");
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d", v263, 46, v264, "AVE_FrameRecv", "SendFrame");
                }

                v722 = 0;
                a2 = v719;
                a3 = v715;
                goto LABEL_351;
              }

              v722 = 0;
              a2 = v719;
              v7 = v720;
              v6 = v708;
              v31 = v711;
LABEL_310:
              a3 = v715;
              goto LABEL_45;
            }

            if (v698)
            {
              *v698 = v72;
            }

            if ((v691 & 1) == 0 && (*(v709 + 77) < 2u || *(v719 + 44)))
            {
              v273 = 0;
              v274 = 1;
              do
              {
                v275 = v274;
                v276 = a1 + 12 * v273 + 29084;
                if (*(v276 + 2) >= 1)
                {
                  *(v276 + 2) = 0;
                  *v276 = 0;
                }

                v274 = 0;
                v273 = 1;
              }

              while ((v275 & 1) != 0);
            }

            if (*v720)
            {
              v277 = v719;
              v278 = v166[*(v719 + 3180)];
              if (!v278)
              {
                v141 = v720;
                if (AVE_Log_CheckLevel(3u, 4))
                {
                  v368 = AVE_Log_CheckConsole(3u);
                  v369 = AVE_GetCurrTime();
                  v370 = AVE_Log_GetLevelStr(4);
                  v31 = v711;
                  if (v368)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v369, 3, v370, "SendFrame", 2616, "codedHeader != __null");
                    v371 = AVE_GetCurrTime();
                    sampleSizeArrayo = AVE_Log_GetLevelStr(4);
                    v23 = v714;
                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v371, 3, sampleSizeArrayo, "SendFrame", 2616, "codedHeader != __null");
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v369, 3, v370, "SendFrame", 2616, "codedHeader != __null");
                  }

                  v722 = 0;
                  a3 = v715;
                  v6 = v708;
                  goto LABEL_462;
                }

                v722 = 0;
                v6 = v708;
                v31 = v711;
                a2 = v719;
                v7 = v720;
                goto LABEL_310;
              }

              *(v720 + 8) = 0;
              v279 = *(v719 + 4560);
              *(v278 + 2000) = *(v719 + 4576);
              *(v278 + 1984) = v279;
              if (!*(v719 + 20))
              {
                v383 = H264VideoEncoderFrameReceiver::MultiPass_EnqueueStats(a1, (v278 + 1980));
                if (v383)
                {
                  v384 = v383;
                  memcpy((v719 + 31438), v383, 0x626uLL);
                  *(v720 + 8) = 1;
                  File = AVE_Dump_FindFile(*(v709 + 220), 4u, *(v719 + 20));
                  if (File)
                  {
                    v386 = File;
                    fseeko(File, 1574 * v384[11] + 264, 0);
                    fwrite(v384, 1uLL, 0x626uLL, v386);
                  }
                }

                else if (AVE_Log_CheckLevel(0xD8u, 6))
                {
                  v420 = AVE_Log_CheckConsole(0xD8u);
                  v421 = AVE_GetCurrTime();
                  v422 = AVE_Log_GetLevelStr(6);
                  v423 = *v702;
                  if (v420)
                  {
                    printf("%lld %d AVE %s:   F %d pMpStats NULL \n", v421, 216, v422, v423);
                    v424 = AVE_GetCurrTime();
                    sampleSizeArrays = AVE_Log_GetLevelStr(6);
                    syslog(3, "%lld %d AVE %s:   F %d pMpStats NULL ", v424, 216, sampleSizeArrays, *v702);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s:   F %d pMpStats NULL ", v421, 216, v422, v423);
                  }

                  v259 = v715;
                  v23 = v714;
                }
              }
            }

            memoryBlocka = v257;
            a2 = v719;
            if ((v691 & 1) == 0)
            {
              if (allocator)
              {
                v280 = a4;
              }

              else
              {
                v280 = 0;
              }

              H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v719, v280);
            }

            v7 = v720;
            v6 = v708;
            v281 = v709;
            if (v711)
            {
              free(v711);
            }

            v282 = vshr_n_u32(vadd_s32(a1[3767], 0xF0000000FLL), 4uLL);
            AVE_Dump_WriteMBStats(*(v709 + 220), *(v719 + 24), a1[*(v719 + 3180) + 3224], 432 * v282.i32[0] * v282.i32[1]);
            v283 = *(v719 + 23720);
            if (v283)
            {
              AVE_Dump_WriteRecon(*(v709 + 220), v283);
            }

            a3 = v259;
            if (*(v709 + 77) >= 2u && *(v719 + 44))
            {
              v284 = &a1[2 * *(v719 + 40) + 17446];
              v285 = HIDWORD(a1[2 * *(v719 + 40) + 17446]);
              v286 = v724;
              *v284 += 8 * v724;
              v284[1] = *(v719 + 4608);
              *(v284 + 1) = v285 + *(v706 + 44);
            }

            else
            {
              v286 = v724;
              v317 = &a1[2 * *(v719 + 40) + 17446];
              *v317 = 8 * v724;
              v317[1] = *(v719 + 4608);
              *(v317 + 1) = *(v706 + 44);
            }

            AVE_Dump_WriteOutput(*(v709 + 220), *(v719 + 24), &memoryBlocka[v696], v286);
            *(v706 + 3376) = AVE_GetCurrTime();
            if (a1[3669] != 1)
            {
              if (allocator)
              {
                v722 = 0;
LABEL_542:
                v31 = 0;
                *(v706 + 3368) = AVE_GetCurrTime();
                goto LABEL_45;
              }

              v713 = a1 + 3224;
              v364 = v720;
              sampleBufferOut = 0;
              v365 = memoryBlocka;
              if ((v709[508] & 1) == 0)
              {
                LODWORD(v406) = v731[0];
                if (v731[0] >= 1)
                {
                  v693 = v49;
                  v718 = a3;
                  v407 = v733;
                  v408 = v731[0];
                  while (*(v407 - 6) != 3)
                  {
                    v407 += 4;
                    if (!--v408)
                    {
                      goto LABEL_483;
                    }
                  }

                  v427 = *v407;
                  if (*v407)
                  {
                    v428 = v721 + 274;
                    v429 = 32;
                    while (1)
                    {
                      v430 = *v428 + *(v428 - 2);
                      if (!v430)
                      {
LABEL_482:
                        LODWORD(v406) = v731[0];
                        goto LABEL_483;
                      }

                      if (AVE_Log_CheckLevel(0x2Eu, 7))
                      {
                        v431 = AVE_Log_CheckConsole(0x2Eu);
                        v432 = AVE_GetCurrTime();
                        v433 = AVE_Log_GetLevelStr(7);
                        v434 = *v427;
                        if (v431)
                        {
                          printf("%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x\n", v432, 46, v433, "AVE_FrameRecv", "SendFrame", 2827, v430, v430 - 4, *(v719 + 3180), v434);
                          v435 = AVE_GetCurrTime();
                          v436 = AVE_Log_GetLevelStr(7);
                          syslog(3, "%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x", v435, 46, v436, "AVE_FrameRecv", "SendFrame", 2827, v430, v430 - 4, *(v719 + 3180), *v427);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x", v432, 46, v433, "AVE_FrameRecv", "SendFrame", 2827, v430, v430 - 4, *(v719 + 3180), v434);
                        }
                      }

                      if (*v427 != 0x1000000)
                      {
                        break;
                      }

                      v428 += 4;
                      *v427 = bswap32(v430 - 4);
                      v427 = (v427 + v430);
                      if (!--v429)
                      {
                        goto LABEL_482;
                      }
                    }

                    if (!AVE_Log_CheckLevel(3u, 4))
                    {
                      goto LABEL_698;
                    }

                    v462 = AVE_Log_CheckConsole(3u);
                    v463 = AVE_GetCurrTime();
                    v464 = AVE_Log_GetLevelStr(4);
                    if (!v462)
                    {
                      syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)", v463);
                      goto LABEL_698;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)\n", v463, 3, v464, "SendFrame", 2835, "*(uint32_t *)&pSliceAddr[0] == 0x01000000", *v427);
                    v465 = AVE_GetCurrTime();
                    v466 = AVE_Log_GetLevelStr(4);
                    v664 = "*(uint32_t *)&pSliceAddr[0] == 0x01000000";
                    v668 = *v427;
                    v660 = 2835;
                    sampleSizeArrayc = v466;
                    v467 = "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)";
LABEL_606:
                    syslog(3, v467, v465, 3, sampleSizeArrayc, "SendFrame", v660, v664, v668);
LABEL_698:
                    v722 = 3758097085;
                    goto LABEL_516;
                  }

LABEL_483:
                  a3 = v718;
                  a2 = v719;
                  v364 = v720;
                  v6 = v708;
                  v365 = memoryBlocka;
                  if (v406 >= 1)
                  {
                    v406 = v406;
                    v437 = v733;
                    v438 = v406;
                    while (*(v437 - 6) != 5)
                    {
                      v437 += 4;
                      if (!--v438)
                      {
                        goto LABEL_386;
                      }
                    }

                    v443 = *v437;
                    if (*v437)
                    {
                      if (*(v709 + 77) < 2u || *(v719 + 44))
                      {
                        v444 = 0;
                        v445 = &v732;
                        do
                        {
                          if (*(v445 - 4) == 5)
                          {
                            v444 += *v445;
                          }

                          v445 += 4;
                          --v406;
                        }

                        while (v406);
                        v446 = v444 - 4;
                        if (AVE_Log_CheckLevel(0x2Eu, 8))
                        {
                          v447 = AVE_Log_CheckConsole(0x2Eu);
                          v448 = AVE_GetCurrTime();
                          v449 = AVE_Log_GetLevelStr(8);
                          if (v447)
                          {
                            printf("%lld %d AVE %s: %s:%d %d %p 0x%x\n", v448, 46, v449, "SendFrame", 2861, v446, v443, *v443);
                            v450 = AVE_GetCurrTime();
                            AVE_Log_GetLevelStr(8);
                            syslog(3, "%lld %d AVE %s: %s:%d %d %p 0x%x", v450, 46);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s:%d %d %p 0x%x", v448, 46);
                          }
                        }

                        if (*v443 == 0x1000000)
                        {
                          *v443 = bswap32(v446);
                          a3 = v718;
                          a2 = v719;
                          v364 = v720;
                          v6 = v708;
                          v365 = memoryBlocka;
                          goto LABEL_386;
                        }

                        if (!AVE_Log_CheckLevel(3u, 4))
                        {
                          goto LABEL_698;
                        }

                        v529 = AVE_Log_CheckConsole(3u);
                        v530 = AVE_GetCurrTime();
                        v531 = AVE_Log_GetLevelStr(4);
                        if (!v529)
                        {
                          syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)", v530);
                          goto LABEL_698;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)\n", v530, 3, v531, "SendFrame", 2864, "*pFillerAddr == 0x01000000", *v443);
                        v465 = AVE_GetCurrTime();
                        v532 = AVE_Log_GetLevelStr(4);
                        v664 = "*pFillerAddr == 0x01000000";
                        v668 = *v443;
                        v660 = 2864;
                        sampleSizeArrayc = v532;
                        v467 = "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)";
                        goto LABEL_606;
                      }

                      goto LABEL_507;
                    }
                  }
                }
              }

LABEL_386:
              if (*(v709 + 77) >= 2u && !*(a2 + 44))
              {
LABEL_507:
                v693 = v49;
                v718 = a3;
                if (AVE_Log_CheckLevel(0x2Eu, 7))
                {
                  v451 = AVE_Log_CheckConsole(0x2Eu);
                  v452 = AVE_GetCurrTime();
                  v453 = AVE_Log_GetLevelStr(7);
                  if (v451)
                  {
                    printf("%lld %d AVE %s: BAIL for first layer\n", v452, 46, v453);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(7);
                  }

                  syslog(3, "%lld %d AVE %s: BAIL for first layer");
                }

                goto LABEL_515;
              }

              v366 = MEMORY[0x29EDB8ED8];
              if (*(v709 + 126) == 2)
              {
                v367 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x29EDB8ED8], v365, dataLength, a1[3664], 0, 0, dataLength, 1u, &cf);
                v722 = v367;
                if (v367)
                {
                  v7 = v364;
                  H264VideoEncoderFrameReceiver::Emit(v367, v364[3], *(v709 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
                  ++*a1;
                  ++a1[1];
                  goto LABEL_540;
                }
              }

              sampleTimingArray.duration.value = *(a2 + 4584);
              v387 = *(a2 + 4600);
              v388 = *(a2 + 4596);
              sampleTimingArray.duration.timescale = *(a2 + 4592);
              sampleTimingArray.duration.flags = v388;
              v389 = *(a2 + 4560);
              sampleTimingArray.duration.epoch = v387;
              sampleTimingArray.presentationTimeStamp.value = v389;
              v390 = *(a2 + 4576);
              v391 = *(a2 + 4572);
              sampleTimingArray.presentationTimeStamp.timescale = *(a2 + 4568);
              sampleTimingArray.presentationTimeStamp.flags = v391;
              v392 = a3[1];
              sampleTimingArray.presentationTimeStamp.epoch = v390;
              sampleTimingArray.decodeTimeStamp.value = v392;
              *&sampleTimingArray.decodeTimeStamp.timescale = a3[2];
              sampleTimingArray.decodeTimeStamp.epoch = a3[3];
              *&time1[0].value = *&sampleTimingArray.presentationTimeStamp.value;
              time1[0].epoch = v390;
              time2 = sampleTimingArray.decodeTimeStamp;
              if (!CMTimeCompare(time1, &time2) && !v721[750])
              {
                sampleTimingArray.decodeTimeStamp = **&MEMORY[0x29EDB9398];
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v393 = AVE_Log_CheckConsole(0x2Eu);
                  v394 = AVE_GetCurrTime();
                  v395 = AVE_Log_GetLevelStr(8);
                  if (v393)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID\n", v394, 46, v395);
                    v396 = AVE_GetCurrTime();
                    sampleSizeArrayq = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID", v396, 46, sampleSizeArrayq);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID", v394, 46, v395);
                  }

                  a2 = v719;
                  v364 = v720;
                  v6 = v708;
                }
              }

              if (AVE_Log_CheckLevel(0x33u, 7))
              {
                v468 = AVE_Log_CheckConsole(0x33u);
                v469 = AVE_GetCurrTime();
                v470 = AVE_Log_GetLevelStr(7);
                v471 = v364[3];
                v472 = *(a2 + 40);
                if (v468)
                {
                  printf("%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v469, 51, v470, "SendFrame", 2931, v471, v472, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value, sampleTimingArray.presentationTimeStamp.timescale, sampleTimingArray.presentationTimeStamp.flags, sampleTimingArray.presentationTimeStamp.epoch, *(a2 + 4608), *(a2 + 4616), sampleTimingArray.duration.value, sampleTimingArray.duration.timescale, sampleTimingArray.duration.flags, sampleTimingArray.duration.epoch);
                  v473 = AVE_GetCurrTime();
                  v474 = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v473, 51, v474, "SendFrame", 2931, v364[3], *(a2 + 40), sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v469, 51, v470, "SendFrame", 2931, v471, v472, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                v6 = v708;
              }

              allocatora = *v366;
              v475 = CMSampleBufferCreate(*v366, cf, 1u, 0, 0, a1[3670], 1, 1, &sampleTimingArray, 1, &dataLength, &sampleBufferOut);
              v476 = AVE_Log_CheckLevel(0x2Eu, 7);
              if (v476)
              {
                v477 = AVE_Log_CheckConsole(0x2Eu);
                v478 = AVE_GetCurrTime();
                v479 = AVE_Log_GetLevelStr(7);
                v480 = a1[3670];
                if (v477)
                {
                  printf("%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p\n", v478, 46, v479, v475, sampleBufferOut, v480);
                  v481 = AVE_GetCurrTime();
                  v482 = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p", v481, 46, v482, v475, sampleBufferOut, a1[3670]);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p", v478, 46, v479, v475, sampleBufferOut, v480);
                }
              }

              v722 = v475;
              if (v475)
              {
                v7 = v364;
                H264VideoEncoderFrameReceiver::Emit(v476, v364[3], *(v709 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
                ++*a1;
LABEL_539:
                ++a1[1];
LABEL_540:
                v23 = v714;
                if (sampleBufferOut)
                {
                  CFRelease(sampleBufferOut);
                }

                goto LABEL_542;
              }

              v693 = v49;
              v718 = a3;
              v483 = v721[758];
              v484 = *(a2 + 2456);
              v725 = (a2 + 4756);
              if (v484 == 3)
              {
                v485 = *(a2 + 6112);
              }

              else
              {
                if (*(v706 + 40) == 21)
                {
                  v486 = 1;
                }

                else if (*(v709 + 77) < 2u)
                {
                  v486 = 0;
                }

                else
                {
                  v486 = *(v721 + 2324);
                }

                if (v484 == 2)
                {
                  v485 = 1;
                }

                else
                {
                  v485 = *(a2 + 6112);
                  if ((v725[1356] & 1) == 0 && v483 >= 2)
                  {
                    v485 = v484 == 1 && *(v706 + 36) == v483 - 1;
                  }
                }

                if ((v486 & 1) == 0)
                {
                  v487 = 0;
                  v488 = 0;
                  v489 = v484 == 0;
LABEL_559:
                  if (AVE_Log_CheckLevel(0x2Eu, 7))
                  {
                    v490 = AVE_Log_CheckConsole(0x2Eu);
                    v491 = AVE_GetCurrTime();
                    v492 = AVE_Log_GetLevelStr(7);
                    v493 = *(v719 + 2456);
                    if (v490)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d\n", v491, 46, v492, v493, v488, v489);
                      v494 = AVE_GetCurrTime();
                      sampleSizeArrayv = AVE_Log_GetLevelStr(7);
                      syslog(3, "%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d", v494, 46, sampleSizeArrayv, *(v719 + 2456), v488, v489);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d", v491, 46, v492, v493, v488, v489);
                    }
                  }

                  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
                  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
                  if (!ValueAtIndex)
                  {
                    Mutable = AVE_Log_CheckLevel(0x2Eu, 4);
                    if (Mutable)
                    {
                      v506 = AVE_Log_CheckConsole(0x2Eu);
                      v507 = AVE_GetCurrTime();
                      v508 = AVE_Log_GetLevelStr(4);
                      if (v506)
                      {
                        printf("%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.\n", v507, 46, v508, "SendFrame", 3376);
                        v509 = AVE_GetCurrTime();
                        sampleSizeArrayw = AVE_Log_GetLevelStr(4);
                        syslog(3, "%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.", v509, 46, sampleSizeArrayw, "SendFrame", 3376);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.", v507, 46, v508, "SendFrame", 3376);
                      }
                    }

                    goto LABEL_644;
                  }

                  v497 = ValueAtIndex;
                  v498 = MEMORY[0x29EDB8F00];
                  if ((v487 & 1) == 0)
                  {
                    CFDictionarySetValue(ValueAtIndex, *MEMORY[0x29EDB9388], *MEMORY[0x29EDB8F00]);
                  }

                  v499 = MEMORY[0x29EDB8EF8];
                  if (v489)
                  {
                    v500 = MEMORY[0x29EDB8EF8];
                  }

                  else
                  {
                    v500 = v498;
                  }

                  CFDictionarySetValue(v497, *MEMORY[0x29EDB9358], *v500);
                  if (v485)
                  {
                    CFDictionarySetValue(v497, *MEMORY[0x29EDB9380], *v499);
                  }

                  if (AVE_Log_CheckLevel(0x2Eu, 7))
                  {
                    v501 = AVE_Log_CheckConsole(0x2Eu);
                    v502 = AVE_GetCurrTime();
                    v503 = AVE_Log_GetLevelStr(7);
                    if (v501)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d IsHierarchical %d\n", v502, 46, v503, "AVE_FrameRecv", "SendFrame", 2999, v721[758] > 1);
                      v504 = AVE_GetCurrTime();
                      AVE_Log_GetLevelStr(7);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v504);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v502);
                    }
                  }

                  Mutable = AVE_Log_CheckLevel(0x2Eu, 7);
                  if (Mutable)
                  {
                    v510 = AVE_Log_CheckConsole(0x2Eu);
                    v511 = AVE_GetCurrTime();
                    v512 = AVE_Log_GetLevelStr(7);
                    v513 = *(v719 + 40);
                    v514 = *(v706 + 40);
                    if (v510)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d\n", v511, 46, v512, v513, *(v719 + 2456), v514);
                      v515 = AVE_GetCurrTime();
                      v516 = AVE_Log_GetLevelStr(7);
                      syslog(3, "%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d", v515, 46, v516, *(v719 + 40), *(v719 + 2456), *(v706 + 40));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d", v511, 46, v512, v513, *(v719 + 2456), v514);
                    }
                  }

                  if (v483 >= 2)
                  {
                    memcpy(time1, a1 + 7176, 0x1ACuLL);
                    TemporalLevelInfoDictionary = H264VideoEncoderFrameReceiver::CreateTemporalLevelInfoDictionary(a1, time1, *(v706 + 36));
                    if (TemporalLevelInfoDictionary)
                    {
                      v518 = TemporalLevelInfoDictionary;
                      CFDictionarySetValue(v497, *MEMORY[0x29EDB9370], TemporalLevelInfoDictionary);
                      CFRelease(v518);
                    }

                    v519 = *MEMORY[0x29EDB8F00];
                    v520 = *v499;
                    if ((*(v706 + 40) & 0xFFFFFFFE) == 2)
                    {
                      v521 = *MEMORY[0x29EDB8F00];
                    }

                    else
                    {
                      v521 = *v499;
                    }

                    CFDictionarySetValue(v497, *MEMORY[0x29EDB9378], v521);
                    if ((*(v706 + 40) & 0xFFFFFFFE) == 4)
                    {
                      v522 = v519;
                    }

                    else
                    {
                      v522 = v520;
                    }

                    CFDictionarySetValue(v497, *MEMORY[0x29EDB9360], v522);
                  }

                  if (*(v709 + 131) == 2 && (*(v706 + 40) - 19) <= 2)
                  {
                    Mutable = CFNumberCreate(allocatora, kCFNumberSInt32Type, (v706 + 40));
                    if (Mutable)
                    {
                      v523 = Mutable;
                      if (AVE_Log_CheckLevel(0x2Eu, 7))
                      {
                        v524 = AVE_Log_CheckConsole(0x2Eu);
                        v525 = AVE_GetCurrTime();
                        v526 = AVE_Log_GetLevelStr(7);
                        v527 = *v702;
                        if (v524)
                        {
                          printf("%lld %d AVE %s: H264FrameRec: F %d NUT CRA\n", v525, 46, v526, v527);
                          v528 = AVE_GetCurrTime();
                          sampleSizeArrayx = AVE_Log_GetLevelStr(7);
                          syslog(3, "%lld %d AVE %s: H264FrameRec: F %d NUT CRA", v528, 46, sampleSizeArrayx, *v702);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: H264FrameRec: F %d NUT CRA", v525, 46, v526, v527);
                        }
                      }

                      CFDictionarySetValue(v497, *MEMORY[0x29EDB9368], v523);
                      CFRelease(v523);
                    }
                  }

                  if ((v721[760] & 2) != 0)
                  {
                    if (*v706 == 1)
                    {
                      Mutable = CFNumberCreate(allocatora, kCFNumberIntType, v702);
                      if (Mutable)
                      {
                        v533 = Mutable;
                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD158], Mutable);
                        CFRelease(v533);
                      }
                    }

                    if (*(v706 + 48) == 1 && *(v709 + 161) != 1)
                    {
                      CFDictionarySetValue(v497, *MEMORY[0x29EDBD150], *MEMORY[0x29EDB8F00]);
                    }
                  }

                  if ((*(a1 + 30147) & 8) == 0)
                  {
LABEL_619:
                    if (*(v720 + 4) >= 17 && (v721[615] & 0x3C0) != 0)
                    {
                      Mutable = CFNumberCreate(allocatora, kCFNumberSInt32Type, (v719 + 6116));
                      if (Mutable)
                      {
                        v534 = Mutable;
                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD160], Mutable);
                        CFRelease(v534);
                      }
                    }

                    if (*(v719 + 9))
                    {
                      v535 = AVE_Crypto_Make(a1 + 28548, v497);
                      bzero(a1 + 28548, 0x214uLL);
                      if (v535)
                      {
                        if (AVE_Log_CheckLevel(0x2Eu, 4))
                        {
                          v536 = AVE_Log_CheckConsole(0x2Eu);
                          v537 = AVE_GetCurrTime();
                          v538 = AVE_Log_GetLevelStr(4);
                          if (v536)
                          {
                            printf("%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d\n", v537, 46, v538, "AVE_FrameRecv", "SendFrame", 3116, "ret == 0", a1, v720[3], *(v719 + 8), v497, v535);
                            v539 = AVE_GetCurrTime();
                            sampleSizeArrayy = AVE_Log_GetLevelStr(4);
                            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d", v539, 46, sampleSizeArrayy, "AVE_FrameRecv", "SendFrame", 3116);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d", v537, 46, v538, "AVE_FrameRecv", "SendFrame", 3116);
                          }
                        }

LABEL_515:
                        v722 = 0;
LABEL_516:
                        v31 = 0;
LABEL_517:
                        a3 = v718;
                        a2 = v719;
                        v7 = v720;
                        v6 = v708;
                        v23 = v714;
                        v49 = v693;
                        goto LABEL_45;
                      }
                    }

                    v549 = *(v709 + 161);
                    if (v549 > 36)
                    {
                      if ((v549 - 37) >= 2 && v549 != 10000)
                      {
                        goto LABEL_644;
                      }

                      goto LABEL_640;
                    }

                    if (v549)
                    {
                      if (v549 != 1)
                      {
                        if (v549 != 20)
                        {
                          goto LABEL_644;
                        }

LABEL_640:
                        LODWORD(time1[0].value) = *(v706 + 172);
                        Mutable = CFNumberCreate(0, kCFNumberSInt32Type, time1);
                        if (Mutable)
                        {
                          v550 = Mutable;
                          v551 = *MEMORY[0x29EDBD148];
LABEL_642:
                          CFDictionarySetValue(v497, v551, v550);
LABEL_643:
                          CFRelease(v550);
                        }

LABEL_644:
                        if (*v720 && *(v720 + 8) == 1 && (Mutable = CFDataCreateMutable(allocatora, 0)) != 0)
                        {
                          v552 = Mutable;
                          CFDataAppendBytes(Mutable, (v719 + 31438), 1574);
                          if (AVE_Log_CheckLevel(0x2Eu, 7))
                          {
                            v553 = AVE_Log_CheckConsole(0x2Eu);
                            v554 = AVE_GetCurrTime();
                            v555 = AVE_Log_GetLevelStr(7);
                            v556 = *(v719 + 20);
                            if (v556 >= 2)
                            {
                              v556 = 2;
                            }

                            if (v553)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d\n", v554, 46, v555, v556);
                              v557 = AVE_GetCurrTime();
                              v558 = AVE_Log_GetLevelStr(7);
                              v559 = *(v719 + 20);
                              if (v559 >= 2)
                              {
                                v559 = 2;
                              }

                              syslog(3, "%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d", v557, 46, v558, v559);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d", v554, 46, v555, v556);
                            }
                          }

                          v586 = *(v706 + 1754);
                          v587 = *(v706 + 1770);
                          v588 = *(v706 + 1762);
                          if (AVE_Log_CheckLevel(0xD8u, 7))
                          {
                            v589 = AVE_Log_CheckConsole(0xD8u);
                            v590 = AVE_GetCurrTime();
                            v591 = AVE_Log_GetLevelStr(7);
                            if (v589)
                            {
                              printf("%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v590, 216, v591, *(v719 + 4560), *(v719 + 4568), *(v719 + 4572), *(v719 + 4576));
                              v592 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(7);
                              syslog(3, "%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v592);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v590);
                            }
                          }

                          time1[0].value = v586;
                          *&time1[0].timescale = v588;
                          time1[0].epoch = v587;
                          v722 = VTMultiPassStorageSetDataAtTimeStamp();
                          if (v722 && AVE_Log_CheckLevel(0x2Eu, 4))
                          {
                            v593 = AVE_Log_CheckConsole(0x2Eu);
                            v594 = AVE_GetCurrTime();
                            v595 = AVE_Log_GetLevelStr(4);
                            if (v593)
                            {
                              printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v594, 46, v595);
                              v596 = AVE_GetCurrTime();
                              sampleSizeArrayz = AVE_Log_GetLevelStr(4);
                              syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v596, 46, sampleSizeArrayz);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v594, 46, v595);
                            }
                          }

                          CFRelease(v552);
                        }

                        else
                        {
                          v722 = 0;
                        }

                        a2 = v719;
                        v7 = v720;
                        v560 = H264VideoEncoderFrameReceiver::Emit(Mutable, v720[3], *(v709 + 126), a1[3669], *(v719 + 2552), *(v719 + 40), 0, sampleBufferOut);
                        ++*a1;
                        a3 = v718;
                        v6 = v708;
                        v49 = v693;
                        if (!v560)
                        {
                          goto LABEL_540;
                        }

                        goto LABEL_539;
                      }

                      v573 = MEMORY[0x29EDB9000];
                      v574 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                      v575 = CFArrayCreateMutable(0, 0, v573);
                      v576 = (v706 + 68);
                      v577 = 4;
                      do
                      {
                        AVE_CFArray_AddSInt64(*v576, v574);
                        AVE_CFArray_AddSInt64(*(v576 - 4), v575);
                        ++v576;
                        --v577;
                      }

                      while (v577);
                      CFDictionarySetValue(v497, *MEMORY[0x29EDBD180], v574);
                      if (v574)
                      {
                        CFRelease(v574);
                      }

                      CFDictionarySetValue(v497, *MEMORY[0x29EDBD188], v575);
                      if (v575)
                      {
                        CFRelease(v575);
                      }

                      v578 = *(v709 + 131);
                      if (v578 == 2)
                      {
                        v597 = MEMORY[0x29EDB9000];
                        v598 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                        v599 = CFArrayCreateMutable(0, 0, v597);
                        v581 = CFArrayCreateMutable(0, 0, v597);
                        v600 = (v706 + 124);
                        v601 = 4;
                        do
                        {
                          AVE_CFArray_AddSInt64(*(v600 - 8), v598);
                          AVE_CFArray_AddSInt64(*(v600 - 4), v599);
                          v602 = *v600++;
                          AVE_CFArray_AddSInt64(v602, v581);
                          --v601;
                        }

                        while (v601);
                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD1A0], v598);
                        if (v598)
                        {
                          CFRelease(v598);
                        }

                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD198], v599);
                        if (v599)
                        {
                          CFRelease(v599);
                        }

                        v585 = @"NumberOfSkipped8x8Blocks";
                      }

                      else
                      {
                        if (v578 != 1)
                        {
                          v722 = 3758097084;
                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v616 = AVE_Log_CheckConsole(3u);
                            v617 = AVE_GetCurrTime();
                            v618 = AVE_Log_GetLevelStr(4);
                            if (v616)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.\n", v617, 3, v618, "SendFrame", 3247, "false", *(v709 + 131));
                              v619 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.", v619);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.", v617);
                            }
                          }

                          goto LABEL_516;
                        }

                        v579 = MEMORY[0x29EDB9000];
                        v580 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                        v581 = CFArrayCreateMutable(0, 0, v579);
                        v582 = (v706 + 124);
                        v583 = 4;
                        do
                        {
                          AVE_CFArray_AddSInt64(*(v582 - 8), v580);
                          v584 = *v582++;
                          AVE_CFArray_AddSInt64(v584, v581);
                          --v583;
                        }

                        while (v583);
                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD1A8], v580);
                        if (v580)
                        {
                          CFRelease(v580);
                        }

                        v585 = *MEMORY[0x29EDBD1B0];
                      }

                      CFDictionarySetValue(v497, v585, v581);
                      if (v581)
                      {
                        CFRelease(v581);
                      }

                      v603 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                      for (i = 0; i != 16; i += 4)
                      {
                        AVE_CFArray_AddSInt64(*(v719 + 29828 + i), v603);
                      }

                      if (v603)
                      {
                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD178], v603);
                        CFRelease(v603);
                      }

                      v605 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                      for (j = 0; j != 16; j += 4)
                      {
                        Mutable = AVE_CFArray_AddSInt64(*(v719 + 29844 + j), v605);
                      }

                      if (v605)
                      {
                        CFDictionarySetValue(v497, @"SliceDataLength", v605);
                        CFRelease(v605);
                      }

                      if (!v721[802] || *(v709 + 131) != 1)
                      {
LABEL_738:
                        if (*v725 == 1)
                        {
                          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                          if (Mutable)
                          {
                            v550 = Mutable;
                            if (!AVE_DPB_MakeSnapshot((v719 + 3184), Mutable))
                            {
                              CFDictionarySetValue(v497, *MEMORY[0x29EDBD1B8], v550);
                              v625 = *(v719 + 23728);
                              if ((v625 & 0x8000) != 0)
                              {
                                v626 = v708[3];
                                if (v626)
                                {
                                  AVE_VCP::ChromaFilter(v626, v550, *(v719 + 40), *(v719 + 4764));
                                  v625 = *(v719 + 23728);
                                }
                              }

                              if ((v625 & 0x10000) != 0)
                              {
                                v627 = v708[3];
                                if (v627)
                                {
                                  AVE_VCP::CalcChecksum(v627, v550, *v702, v497);
                                }
                              }
                            }

                            goto LABEL_643;
                          }
                        }

                        goto LABEL_644;
                      }

                      v607 = v713[*(v719 + 3180)];
                      if (v607)
                      {
                        v608 = v721[796];
                        v609 = v721[797];
                        Mutable = CFDataCreateMutable(allocatora, 0);
                        if (Mutable)
                        {
                          v610 = Mutable;
                          v611 = 432 * ((v608 + 15) >> 4) * ((v609 + 15) >> 4);
                          CFDataAppendBytes(Mutable, v607, v611);
                          if (AVE_Log_CheckLevel(0x2Eu, 7))
                          {
                            v612 = AVE_Log_CheckConsole(0x2Eu);
                            v613 = AVE_GetCurrTime();
                            v614 = AVE_Log_GetLevelStr(7);
                            if (v612)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out\n", v613, 46, v614, v611);
                              v615 = AVE_GetCurrTime();
                              sampleSizeArrayba = AVE_Log_GetLevelStr(7);
                              syslog(3, "%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out", v615, 46, sampleSizeArrayba, v611);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out", v613, 46, v614, v611);
                            }
                          }

                          CFDictionarySetValue(v497, @"MBStatistics", v610);
                          CFRelease(v610);
                        }

                        goto LABEL_738;
                      }

                      v722 = 3758097084;
                      if (!AVE_Log_CheckLevel(3u, 4))
                      {
                        goto LABEL_516;
                      }

                      v620 = AVE_Log_CheckConsole(3u);
                      v621 = AVE_GetCurrTime();
                      v622 = AVE_Log_GetLevelStr(4);
                      if (v620)
                      {
                        v623 = 3281;
LABEL_735:
                        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.\n", v621, 3, v622, "SendFrame", v623, "stat != __null");
                        AVE_GetCurrTime();
                        AVE_Log_GetLevelStr(4);
                      }
                    }

                    else
                    {
                      if (!v721[802] || *(v709 + 131) != 1 || *(v709 + 132) != 1)
                      {
                        goto LABEL_644;
                      }

                      v564 = v713[*(v719 + 3180)];
                      if (v564)
                      {
                        v565 = v721[796];
                        v566 = v721[797];
                        Mutable = CFDataCreateMutable(allocatora, 0);
                        if (!Mutable)
                        {
                          goto LABEL_644;
                        }

                        v550 = Mutable;
                        v567 = 432 * ((v565 + 15) >> 4) * ((v566 + 15) >> 4);
                        CFDataAppendBytes(Mutable, v564, v567);
                        if (AVE_Log_CheckLevel(0x2Eu, 7))
                        {
                          v568 = AVE_Log_CheckConsole(0x2Eu);
                          v569 = AVE_GetCurrTime();
                          v570 = AVE_Log_GetLevelStr(7);
                          if (v568)
                          {
                            printf("%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n\n", v569, 46, v570, *(v709 + 132), v567);
                            v571 = AVE_GetCurrTime();
                            v572 = AVE_Log_GetLevelStr(7);
                            syslog(3, "%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n", v571, 46, v572, *(v709 + 132), v567);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n", v569, 46, v570, *(v709 + 132), v567);
                          }
                        }

                        v551 = @"MBStatistics";
                        goto LABEL_642;
                      }

                      v722 = 3758097084;
                      if (!AVE_Log_CheckLevel(3u, 4))
                      {
                        goto LABEL_516;
                      }

                      v624 = AVE_Log_CheckConsole(3u);
                      v621 = AVE_GetCurrTime();
                      v622 = AVE_Log_GetLevelStr(4);
                      if (v624)
                      {
                        v623 = 3340;
                        goto LABEL_735;
                      }
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.");
                    goto LABEL_516;
                  }

                  v540 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  if (v540)
                  {
                    v541 = v540;
                    Dict = AVE_MSE_MakeDict(a1 + 3641, *(v709 + 77), v540);
                    if (!Dict)
                    {
                      CFDictionarySetValue(v497, @"QualityMetrics", v541);
                      CFRelease(v541);
                      goto LABEL_619;
                    }

                    v543 = Dict;
                    if (AVE_Log_CheckLevel(0x2Eu, 4))
                    {
                      v544 = AVE_Log_CheckConsole(0x2Eu);
                      v545 = AVE_GetCurrTime();
                      v546 = AVE_Log_GetLevelStr(4);
                      if (!v544)
                      {
                        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d", v545, 46);
                        goto LABEL_695;
                      }

                      printf("%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d\n", v545, 46, v546, "AVE_FrameRecv", "SendFrame", 3085, "ret == 0", v543);
                      v547 = AVE_GetCurrTime();
                      v669 = "ret == 0";
                      v670 = v543;
                      v665 = 3085;
                      sampleSizeArrayd = AVE_Log_GetLevelStr(4);
                      v548 = "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d";
                      goto LABEL_660;
                    }
                  }

                  else if (AVE_Log_CheckLevel(0x2Eu, 4))
                  {
                    v561 = AVE_Log_CheckConsole(0x2Eu);
                    v562 = AVE_GetCurrTime();
                    v563 = AVE_Log_GetLevelStr(4);
                    if (!v561)
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v562);
                      goto LABEL_695;
                    }

                    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v562, 46, v563, "AVE_FrameRecv", "SendFrame", 3081, "pMSEDict != __null");
                    v547 = AVE_GetCurrTime();
                    v665 = 3081;
                    v669 = "pMSEDict != __null";
                    sampleSizeArrayd = AVE_Log_GetLevelStr(4);
                    v548 = "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary";
LABEL_660:
                    syslog(3, v548, v547, 46, sampleSizeArrayd, "AVE_FrameRecv", "SendFrame", v665, v669, v670);
                  }

LABEL_695:
                  v31 = 0;
                  v722 = 4294966293;
                  goto LABEL_517;
                }
              }

              v487 = 1;
              v488 = 1;
              v489 = 1;
              goto LABEL_559;
            }

            if (!a1[3661] || !a1[3660])
            {
              if (AVE_Log_CheckLevel(0x2Eu, 7))
              {
                v379 = AVE_Log_CheckConsole(0x2Eu);
                v380 = AVE_GetCurrTime();
                v381 = AVE_Log_GetLevelStr(7);
                if (v379)
                {
                  printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v380, 46, v381);
                  v382 = AVE_GetCurrTime();
                  sampleSizeArrayp = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v382, 46, sampleSizeArrayp);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v380, 46, v381);
                }

                v722 = 0;
                v23 = v714;
              }

              else
              {
                v722 = 0;
              }

LABEL_495:
              H264VideoEncoderFrameReceiver::DeleteBuffer(a1, memoryBlocka);
              bzero(a1 + 28548, 0x214uLL);
              goto LABEL_542;
            }

            memset(time1, 0, 32);
            if (*(v709 + 77) < 2u || *(v719 + 44))
            {
              if (allocator)
              {
                v334 = 0;
                v335 = -1;
                v336 = -1;
                v337 = a4;
              }

              else
              {
                v335 = *(v719 + 4560);
                v336 = *(v719 + 4568);
                v337 = -1;
                v334 = *(v719 + 23720);
              }

              time1[0].value = *v702;
              *&time1[0].timescale = v337;
              time1[0].epoch = v335;
              time1[1].value = v336;
              *&time1[1].timescale = v334;
              if (*v720)
              {
                v425 = v286;
                v426 = v49;
                if (*(v720 + 8) == 1)
                {
                  if (!*(v719 + 20) && (v454 = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0)) != 0 && (v455 = v454, CFDataAppendBytes(v454, (v719 + 31438), 1574), v456 = *(v706 + 1770), sampleTimingArray.duration.value = *(v706 + 1754), *&sampleTimingArray.duration.timescale = *(v706 + 1762), sampleTimingArray.duration.epoch = v456, v457 = VTMultiPassStorageSetDataAtTimeStamp(), CFRelease(v455), v722 = v457, v457))
                  {
                    if (AVE_Log_CheckLevel(0x2Eu, 4))
                    {
                      v458 = AVE_Log_CheckConsole(0x2Eu);
                      v459 = AVE_GetCurrTime();
                      v460 = AVE_Log_GetLevelStr(4);
                      if (v458)
                      {
                        printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v459, 46, v460);
                        v461 = AVE_GetCurrTime();
                        sampleSizeArrayu = AVE_Log_GetLevelStr(4);
                        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v461, 46, sampleSizeArrayu);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v459, 46, v460);
                      }
                    }
                  }

                  else
                  {
                    v722 = 0;
                  }

                  a2 = v719;
                  v7 = v720;
                  v6 = v708;
                }

                else
                {
                  v722 = 0;
                }

                v49 = v426;
                v281 = v709;
              }

              else
              {
                v425 = v286;
                v722 = 0;
              }

              if (AVE_Log_CheckLevel(0x2Eu, 7))
              {
                v439 = AVE_Log_CheckConsole(0x2Eu);
                v440 = AVE_GetCurrTime();
                v441 = AVE_Log_GetLevelStr(7);
                if (v439)
                {
                  printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes\n", v440, 46, v441, memoryBlocka, v425);
                  v442 = AVE_GetCurrTime();
                  sampleSizeArrayt = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes", v442, 46, sampleSizeArrayt, memoryBlocka, v425);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes", v440, 46, v441, memoryBlocka, v425);
                }
              }

              kdebug_trace();
              (a1[3661])(a1[3660], memoryBlocka, dataLength, time1, *(v281 + 131));
              ++*a1;
              kdebug_trace();
              v23 = v714;
              goto LABEL_495;
            }

            v31 = 0;
LABEL_149:
            v722 = 0;
            goto LABEL_45;
          }

          if (!AVE_Log_CheckLevel(0x2Eu, 4))
          {
            v722 = 4294954394;
LABEL_351:
            v7 = v720;
            goto LABEL_396;
          }

          v416 = AVE_Log_CheckConsole(0x2Eu);
          v417 = AVE_GetCurrTime();
          v418 = AVE_Log_GetLevelStr(4);
          if (v416)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d\n", v417, 46, v418, "AVE_FrameRecv", "SendFrame", 2571, "m_sMVBuf.pBuf != __null", a1[3639], *v702);
            v419 = AVE_GetCurrTime();
            sampleSizeArrayr = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d", v419, 46, sampleSizeArrayr);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d", v417, 46, v418);
          }

          v722 = 4294954394;
          a2 = v719;
          a3 = v715;
LABEL_402:
          v7 = v720;
LABEL_436:
          v6 = v708;
          goto LABEL_437;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          v722 = 0;
          a3 = v715;
          v6 = v708;
          v31 = v711;
          goto LABEL_258;
        }

        v223 = AVE_Log_CheckConsole(3u);
        v224 = AVE_GetCurrTime();
        v225 = AVE_Log_GetLevelStr(4);
        v6 = v708;
        v31 = v711;
        if (v223)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v224, 3, v225, "SendFrame", 2536, "codedHeader != __null");
          v226 = AVE_GetCurrTime();
          v227 = AVE_Log_GetLevelStr(4);
          a2 = v719;
          v7 = v720;
          v23 = v714;
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v226, 3, v227, "SendFrame", 2536, "codedHeader != __null");
          goto LABEL_160;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v224, 3, v225, "SendFrame", 2536, "codedHeader != __null");
        v722 = 0;
        a3 = v715;
LABEL_430:
        a2 = v719;
        v7 = v720;
        goto LABEL_45;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v398 = v6;
        v399 = AVE_Log_CheckConsole(0x2Eu);
        v400 = AVE_GetCurrTime();
        v401 = AVE_Log_GetLevelStr(4);
        v402 = v720[3];
        v403 = *(v719 + 40);
        if (v399)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p\n", v400, 46, v401, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v402, v403, dataLength, v397);
          v404 = AVE_GetCurrTime();
          v405 = AVE_Log_GetLevelStr(4);
          v23 = v714;
          a2 = v719;
          v7 = v720;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p", v404, 46, v405, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v720[3], *(v719 + 40), dataLength, a1 + 28548);
          v722 = 0;
          a3 = v715;
          v6 = v398;
          goto LABEL_438;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p", v400, 46, v401, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v402, v403, dataLength, v397);
        v722 = 0;
        a3 = v715;
        v6 = v398;
        goto LABEL_429;
      }
    }

    v722 = 0;
    a3 = v715;
LABEL_429:
    v31 = v711;
    goto LABEL_430;
  }

  v708 = v6;
  v207 = 0;
  v208 = a1 + 29084;
  v209 = &v736;
  v210 = 1;
  v699 = v61;
  while (1)
  {
    v211 = v210;
    v212 = &v208[12 * v207];
    v213 = v212[7];
    if (v213 < 1 || *(v212 + 2) < 1)
    {
      goto LABEL_218;
    }

    if (!v61)
    {
      if (!AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v722 = 0;
        a3 = v715;
        v6 = v708;
        v23 = v714;
        goto LABEL_429;
      }

      v319 = AVE_Log_CheckConsole(0x2Eu);
      v320 = AVE_GetCurrTime();
      v321 = AVE_Log_GetLevelStr(4);
      v100 = v720;
      v23 = v714;
      v31 = v711;
      if (v319)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i\n", v320, 46, v321, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v720[3], v207);
        v322 = AVE_GetCurrTime();
        v323 = AVE_Log_GetLevelStr(4);
        v7 = v720;
        a2 = v719;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i", v322, 46, v323, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v720[3], v207);
        v722 = 0;
        a3 = v715;
        goto LABEL_228;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i", v320, 46, v321, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v720[3], v207);
      v722 = 0;
      a3 = v715;
      a2 = v719;
      goto LABEL_128;
    }

    v703 = *(v212 + 2);
    v723 = v210;
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v214 = AVE_Log_CheckConsole(0x2Eu);
      v692 = AVE_GetCurrTime();
      v215 = AVE_Log_GetLevelStr(7);
      v216 = v720[3];
      v217 = v212[7];
      if (v214)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld\n", v692, 46, v215, "AVE_FrameRecv", "SendFrame", 2467, a1, v216, v207, v217, *(v212 + 2), dataLength);
        v218 = AVE_GetCurrTime();
        v219 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld", v218, 46, v219, "AVE_FrameRecv", "SendFrame", 2467, a1, v720[3], v207, v212[7], *(v212 + 2), dataLength);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld", v692, 46, v215, "AVE_FrameRecv", "SendFrame", 2467, a1, v216, v207, v217, *(v212 + 2), dataLength);
      }

      v61 = v699;
    }

    v220 = v212[7];
    if (v220 >= 2)
    {
      if (AVE_EncFrameInfo_AddBuf(v212, v220 - 1, 5u, v731))
      {
        break;
      }
    }

    v221 = malloc_type_malloc(*(v212 + 2) + 1, 0x100004077774924uLL);
    *v209 = v221;
    if (!v221)
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v324 = AVE_Log_CheckConsole(0x2Eu);
        v325 = AVE_GetCurrTime();
        v326 = AVE_Log_GetLevelStr(4);
        v141 = v720;
        v31 = v711;
        if (v324)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d\n", v325, 46, v326, "AVE_FrameRecv", "SendFrame", 2483, "piFillerBuf[i] != __null", a1, v720[3], *(v719 + 3180), v207, *(v212 + 2));
          v327 = AVE_GetCurrTime();
          v328 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d", v327, 46, v328, "AVE_FrameRecv", "SendFrame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d", v325, 46, v326, "AVE_FrameRecv", "SendFrame");
        }

        v722 = 0;
        a3 = v715;
        v6 = v708;
        a2 = v719;
        v23 = v714;
        goto LABEL_320;
      }

      goto LABEL_401;
    }

    v222 = v221;
    memset(v221, 255, *(v212 + 2));
    v222[*(v212 + 2)] = 0x80;
    if (AVE_EncFrameInfo_AddBuf(v222, *(v212 + 2) + 1, 5u, v731))
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v329 = AVE_Log_CheckConsole(0x2Eu);
        v330 = AVE_GetCurrTime();
        v331 = AVE_Log_GetLevelStr(4);
        if (v329)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p\n", v330, 46, v331, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0", a1, v720[3], *(v719 + 40), v207, v222, *(v212 + 2), v731);
          v332 = AVE_GetCurrTime();
          v333 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p", v332, 46, v333, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p", v330, 46, v331, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0");
        }

        v722 = 0;
        a2 = v719;
        a3 = v715;
        v7 = v720;
        goto LABEL_436;
      }

      goto LABEL_401;
    }

    dataLength += (v703 + v213);
    v208 = a1 + 29084;
    v211 = v723;
LABEL_218:
    v210 = 0;
    v209 = &v735;
    v207 = 1;
    if ((v211 & 1) == 0)
    {
      v6 = v708;
      v23 = v714;
      goto LABEL_175;
    }
  }

  if (!AVE_Log_CheckLevel(0x2Eu, 4))
  {
LABEL_401:
    v722 = 0;
    a3 = v715;
    a2 = v719;
    goto LABEL_402;
  }

  v372 = AVE_Log_CheckConsole(0x2Eu);
  v373 = AVE_GetCurrTime();
  v374 = AVE_Log_GetLevelStr(4);
  v141 = v720;
  v375 = v720[3];
  v277 = v719;
  v376 = *(v719 + 40);
  if (v372)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p\n", v373, 46, v374, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v375, v376, v207, v212, v212[7], v731);
    v377 = AVE_GetCurrTime();
    v378 = AVE_Log_GetLevelStr(4);
    v689 = v212[7];
    v686 = v212;
    a2 = v719;
    v7 = v720;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p", v377, 46, v378, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v720[3], *(v719 + 40), v207, v686, v689, v731);
    v722 = 0;
    a3 = v715;
    goto LABEL_436;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p", v373, 46, v374, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v375, v376, v207, v212, v212[7], v731);
  v722 = 0;
  a3 = v715;
  v6 = v708;
  v23 = v714;
  v31 = v711;
LABEL_462:
  a2 = v277;
LABEL_320:
  v7 = v141;
LABEL_45:
  AVE_SEI::DeleteFrame(v6[4], *(a2 + 40));
  if (v31)
  {
    free(v31);
  }

  if (v23)
  {
    v721[542] = 0;
  }

  *(v6 + 4) = 0;
  if (*v6)
  {
    H264VideoEncoderFrameReceiver::DeleteBuffer(a1, *v6);
    *v6 = 0;
  }

  v50 = v6[1];
  if (v50)
  {
    CFRelease(v50);
    v6[1] = 0;
  }

  v51 = &v736;
  v52 = 1;
  v53 = v722;
  do
  {
    v54 = v52;
    if (*v51)
    {
      free(*v51);
      *v51 = 0;
    }

    v52 = 0;
    v51 = &v735;
  }

  while ((v54 & 1) != 0);
  if (v49)
  {
    free(v49);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v55 = AVE_Log_CheckConsole(0x2Eu);
    v56 = AVE_GetCurrTime();
    v57 = AVE_Log_GetLevelStr(7);
    if (v55)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d\n", v56, 46, v57, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4, v722);
      v58 = AVE_GetCurrTime();
      sampleSizeArrayg = AVE_Log_GetLevelStr(7);
      v53 = v722;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d", v58, 46, sampleSizeArrayg, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d", v56, 46, v57, "AVE_FrameRecv");
    }
  }

  return v53;
}

uint64_t AVE_SEI::SetRCMode(pthread_mutex_t **a1, uint64_t a2, int a3)
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

uint64_t AVE_SEI::SetThroughputMode(pthread_mutex_t **a1, uint64_t a2, unsigned int a3)
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