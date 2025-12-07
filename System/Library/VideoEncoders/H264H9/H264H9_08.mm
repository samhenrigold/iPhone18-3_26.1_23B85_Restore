uint64_t AVE_DW_RetrieveMCTF(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v4 = 0;
  v3 = 0.0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  if (!AVE_DW_GetInt32(0, "AVE_MCTFStrengthLevel", &v4))
  {
    *(a1 + 1044) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFStrengthDelta", &v4))
  {
    *(a1 + 1048) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFTogglePeriod", &v4))
  {
    *(a1 + 1052) = v4;
  }

  if (!AVE_DW_GetDouble(0, "AVE_MCTFISPGainThreshold", &v3))
  {
    *(a1 + 1056) = v3;
  }

  if (!AVE_DW_GetDouble(0, "AVE_MCTFISPGain1RefThreshold", &v3))
  {
    *(a1 + 1072) = v3;
  }

  if (!AVE_DW_GetDouble(0, "AVE_MCTFISPGain2RefThreshold", &v3))
  {
    *(a1 + 1064) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFOnToOffPerfThreshold", &v4))
  {
    *(a1 + 1080) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFOffToOnPerfThreshold", &v4))
  {
    *(a1 + 1084) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFMaxNextRefNum", &v4))
  {
    *(a1 + 1088) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFRampUpFrameNum", &v4))
  {
    *(a1 + 1092) = v4;
  }

  result = AVE_DW_GetStr(0, "AVE_MCTF_SMap", v5, 512);
  if (!result)
  {
    return AVE_MCTF_SMap_Parse(v5, (a1 + 1096));
  }

  return result;
}

uint64_t AVE_DW_Retrieve(uint64_t a1)
{
  v4 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_DWMode", &v4))
  {
    *(a1 + 4) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DefaultCfg", &v4))
  {
    *(a1 + 8) = v4;
  }

  AVE_DW_RetrieveFeature(a1);
  AVE_DW_RetrievePerf(a1);
  AVE_DW_RetrieveDump(a1);
  AVE_DW_RetrieveLog(a1 + 552);
  AVE_DW_RetrieveAlg(a1);
  AVE_DW_RetrieveHw(a1);
  AVE_DW_RetrieveMCTF(a1);
  if (!AVE_DW_GetInt32(0, "AVE_Usage", &v4))
  {
    *(a1 + 1580) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_PropertyMode", &v4))
  {
    *(a1 + 1584) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_TotalFrameCount", &v4))
  {
    *(a1 + 1588) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_CmdTimeOutMode", &v4))
  {
    *(a1 + 1592) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SchedPolicy", &v4))
  {
    *(a1 + 1596) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_OutputBufNum", &v4))
  {
    *(a1 + 1600) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_OutputBufSize", &v4))
  {
    *(a1 + 1604) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SNR", &v4))
  {
    *(a1 + 1608) = v4;
  }

  Int32 = AVE_DW_GetInt32(0, "AVE_TimeStats_MaxCnt", &v4);
  if (!Int32)
  {
    *(a1 + 1612) = v4;
  }

  AVE_DW_RetrieveDeprecatedKeys(a1);
  return Int32;
}

uint64_t AVE_DW_Init(void)
{
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v0 = AVE_Log_CheckConsole(0x2Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", CurrTime, 44, LevelStr, "AVE_DW_Init");
      v3 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Init");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", CurrTime, 44, LevelStr, "AVE_DW_Init");
    }
  }

  AVE_DW_Cfg_Init(gs_sAVE_DW_Cfg);
  v4 = AVE_DW_Retrieve(gs_sAVE_DW_Cfg);
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v5 = AVE_Log_CheckConsole(0x2Cu);
    v6 = AVE_GetCurrTime();
    v7 = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Init", v4);
      v8 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Init", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Init", v4);
    }
  }

  return v4;
}

uint64_t AVE_DW_Uninit(void)
{
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v0 = AVE_Log_CheckConsole(0x2Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", CurrTime, 44, LevelStr, "AVE_DW_Uninit");
      v3 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Uninit");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", CurrTime, 44, LevelStr, "AVE_DW_Uninit");
    }
  }

  v4 = AVE_DW_Cfg_Uninit();
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v5 = AVE_Log_CheckConsole(0x2Cu);
    v6 = AVE_GetCurrTime();
    v7 = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Uninit", v4);
      v8 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Uninit", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Uninit", v4);
    }
  }

  return v4;
}

uint64_t AVE_EdgeReplication_FillPlaneRight(__CVBuffer *a1, unsigned int a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v5 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  CVPixelBufferGetHeightOfPlane(a1, a2);
  CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v5);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966296;
}

uint64_t AVE_EdgeReplication_FillPlaneBottom(__CVBuffer *a1, unsigned int a2, int a3, uint64_t a4)
{
  v17 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, 0, 0, &extraRowsOnTop, &v17);
  if (a2)
  {
    if (*(a4 + 12))
    {
      v11 = *(a4 + 20) >> 1;
      v17 >>= v11;
      extraRowsOnTop >>= v11;
    }

    else
    {
      v17 = 0;
    }
  }

  v12 = &BaseAddressOfPlane[(extraRowsOnTop + HeightOfPlane - 1) * BytesPerRowOfPlane];
  v13 = &v12[BytesPerRowOfPlane];
  if (a3)
  {
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        memcpy(v13, v12, BytesPerRowOfPlane);
        v13 += BytesPerRowOfPlane;
        v12 -= BytesPerRowOfPlane;
      }
    }
  }

  else if (v17)
  {
    for (j = 0; j < v17; ++j)
    {
      memcpy(v13, v12, BytesPerRowOfPlane);
      v13 += BytesPerRowOfPlane;
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t AVE_DRL_Retrieve(CFArrayRef theArray, char *a2)
{
  v15 = 0;
  v16 = 0.0;
  if (theArray && a2)
  {
    *(a2 + 4) = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    Count = CFArrayGetCount(theArray);
    v5 = Count >> 1;
    if (Count >> 1 >= 1)
    {
      v6 = 0;
      v7 = (a2 + 16);
      v8 = (Count >> 1);
      do
      {
        if (AVE_CFArray_GetFloat64(theArray, v6, &v16))
        {
          result = AVE_CFArray_GetSInt64(theArray, v6, &v15);
          if (result)
          {
            return result;
          }

          v10 = v15;
        }

        else
        {
          v10 = v16;
        }

        *(v7 - 1) = v10;
        if (AVE_CFArray_GetFloat64(theArray, (v6 + 1), &v16))
        {
          result = AVE_CFArray_GetSInt64(theArray, (v6 + 1), &v15);
          if (result)
          {
            return result;
          }

          v11 = v15;
        }

        else
        {
          v11 = v16;
        }

        *v7 = v11;
        v7 += 2;
        v6 = (v6 + 2);
        --v8;
      }

      while (v8);
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x35u, 4))
    {
      v12 = AVE_Log_CheckConsole(0x35u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 53, LevelStr, "AVE_DRL_Retrieve", 28, "pArray != __null && pDRL != __null", theArray, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 53);
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_DRL_Make(int *a1, __CFArray *a2)
{
  if (a1 && a2)
  {
    if (*a1 < 1)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      for (i = (a1 + 4); ; i += 2)
      {
        v6 = AVE_CFArray_AddFloat64(*(i - 1), a2);
        result = AVE_CFArray_AddFloat64(*i, a2) + v6;
        if (result)
        {
          break;
        }

        if (++v4 >= *a1)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x35u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x35u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 53, LevelStr, "AVE_DRL_Make", 95, "pDRL != __null && pArray != __null", a1, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 53);
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_FmtConv_PlaneInterchange2Linear(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, interchange_compression *a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v13) = a8;
  interchange_decompress_plane(a1, a2, a12, a3, a4, a5, a6 & a7, a9, a10, a11, v13);
  return 0;
}

uint64_t AVE_FmtConv_PlaneChromaPacked2Linear(unsigned __int8 *a1, int a2, unsigned int a3, int a4, char a5, int a6, int a7, unsigned __int8 *a8)
{
  v8 = a2;
  LODWORD(v10) = 2 * a2 / 3;
  v11 = 2 * a2 % 3;
  if ((a5 & 1) == 0)
  {
    if (a3 < 1)
    {
      return 0;
    }

    v27 = 0;
    v28 = a7 * a3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v29 = a6;
    v30 = a1;
    v31 = a3;
    while (1)
    {
      v32 = &a8[v27 * a7];
      if (v8 < 2)
      {
        v42 = 0;
        v35 = 0;
        v34 = 0;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        LODWORD(v35) = 0;
        do
        {
          v36 = *&v30[4 * v33];
          v37 = v36 & 0x3FF;
          if (v33)
          {
            v41 = v34 + v28;
            *&v32[2 * v41] = v37;
            v39 = 2;
            v40 = 1;
            v38 = v35;
          }

          else
          {
            *&v32[2 * v35] = v37;
            v38 = v34 + v28;
            v39 = 1;
            v40 = 2;
            v41 = v35;
          }

          *&v32[2 * v38] = (v36 >> 10) & 0x3FF;
          *&v32[2 * v41 + 2] = (v36 >> 20) & 0x3FF;
          v35 = (v35 + v40);
          v34 += v39;
          ++v33;
        }

        while (v10 != v33);
        v42 = v10;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      v43 = *&a1[4 * v42 + v27 * v29];
      v44 = v43 & 0x3FF;
      if (v42)
      {
        *&v32[2 * v34 + 2 * v28] = v44;
        if (v11 == 2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *&v32[2 * v35] = v44;
        if (v11 == 2)
        {
          v35 = v34 + v28;
LABEL_35:
          *&v32[2 * v35] = (v43 >> 10) & 0x3FF;
        }
      }

LABEL_36:
      ++v27;
      v30 += v29;
      if (v27 == v31)
      {
        return 0;
      }
    }
  }

  if (a3 >= 1)
  {
    v12 = 0;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    v47 = 2 * (2 * a2 % 3 - 1);
    v14 = a6;
    v15 = a7;
    v16 = a8 + 4;
    v17 = a1;
    v18 = a3;
    do
    {
      if (v8 < 2)
      {
        v23 = 0;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v19 = v13;
        v20 = v17;
        v21 = v16;
        do
        {
          v22 = *v20;
          v20 += 4;
          *(v21 - 2) = v22 & 0x3FF;
          *(v21 - 1) = (v22 >> 10) & 0x3FF;
          *v21 = (v22 >> 20) & 0x3FF;
          v21 += 6;
          --v19;
        }

        while (v19);
        v23 = v13;
        if (v11)
        {
LABEL_13:
          v24 = *&a1[4 * v23 + v12 * v14];
          __src[0] = v24 & 0x3FF;
          __src[1] = (v24 >> 10) & 0x3FF;
          __src[2] = (v24 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            v25 = a8;
            v26 = v15;
            memcpy(&a8[6 * v23 + v12 * a7], __src, v47 + 2);
            v15 = v26;
            a8 = v25;
            v8 = a2;
          }
        }
      }

      ++v12;
      v16 += v15;
      v17 += v14;
    }

    while (v12 != v18);
  }

  return 0;
}

uint64_t AVE_FmtConv_PlaneLumaPacked2Linear(unsigned __int8 *a1, int a2, unsigned int a3, int a4, int a5, int a6, unsigned __int8 *a7)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = (a2 / 3);
    v11 = a2 % 3;
    v23 = 2 * (a2 % 3 - 1);
    v12 = a5;
    v13 = a3;
    v14 = a7 + 4;
    v15 = a1;
    do
    {
      if (a2 < 3)
      {
        v20 = 0;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = v10;
        v17 = v15;
        v18 = v14;
        do
        {
          v19 = *v17;
          v17 += 4;
          *(v18 - 2) = v19 & 0x3FF;
          *(v18 - 1) = (v19 >> 10) & 0x3FF;
          *v18 = (v19 >> 20) & 0x3FF;
          v18 += 6;
          --v16;
        }

        while (v16);
        v20 = v10;
        if (v11)
        {
LABEL_9:
          v21 = *&a1[4 * v20 + v9 * v12];
          __src[0] = v21 & 0x3FF;
          __src[1] = (v21 >> 10) & 0x3FF;
          __src[2] = (v21 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            memcpy(&a7[6 * v20 + v9 * a6], __src, v23 + 2);
          }
        }
      }

      ++v9;
      v14 += a6;
      v15 += v12;
    }

    while (v9 != v13);
  }

  return 0;
}

uint64_t AVE_FmtConv_PlanePacked2Linear(unsigned __int8 *a1, int a2, unsigned int a3, int a4, int a5, char a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a5)
  {
    AVE_FmtConv_PlaneChromaPacked2Linear(a1, a2, a3, a4, a6, a7, a8, a9);
  }

  else
  {
    AVE_FmtConv_PlaneLumaPacked2Linear(a1, a2, a3, a4, a7, a8, a9);
  }

  return 0;
}

uint64_t AVE_UC_Verify(void)
{
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v0 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", CurrTime, 35, LevelStr, "AVE_UC_Verify");
      v3 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 35, v18, "AVE_UC_Verify");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", CurrTime, 35, LevelStr, "AVE_UC_Verify");
    }
  }

  v4 = IOServiceMatching("AppleAVE2Driver");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v4);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v7 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x23u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | can not find matched driver\n", v9, 35, v10, "AVE_UC_Verify", 26, "pService != 0");
        v11 = AVE_GetCurrTime();
        v7 = 4;
        v12 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver", v11, 35, v12, "AVE_UC_Verify", 26, "pService != 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver", v9, 35, v10, "AVE_UC_Verify", 26, "pService != 0");
        v7 = 4;
      }
    }

    v6 = 4294966291;
  }

  if (AVE_Log_CheckLevel(0x23u, v7))
  {
    v13 = AVE_Log_CheckConsole(0x23u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(v7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v14, 35, v15, "AVE_UC_Verify", v6);
      v16 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(v7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v16, 35, v19, "AVE_UC_Verify", v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v14, 35, v15, "AVE_UC_Verify", v6);
    }
  }

  return v6;
}

uint64_t AVE_UC_Create(uint32_t a1, void *a2)
{
  connect = 0;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v4 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", CurrTime, 35, LevelStr, "AVE_UC_Create", a1, a2);
      v7 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v7, 35, v34, "AVE_UC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", CurrTime, 35, LevelStr, "AVE_UC_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = IOServiceMatching("AppleAVE2Driver");
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      kdebug_trace();
      v11 = IOServiceOpen(v10, *MEMORY[0x29EDCA6B0], a1, &connect);
      v12 = AVE_IOReturn2RetCode(v11);
      kdebug_trace();
      if (v12)
      {
        if (AVE_Log_CheckLevel(0x23u, 4))
        {
          v13 = AVE_Log_CheckConsole(0x23u);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d\n", v14, 35, v15, "AVE_UC_Create", 77, "ret == 0", a1, a2, v11, v12);
            v16 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d", v16, 35, v35);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d", v14, 35, v15);
          }
        }
      }

      else
      {
        *a2 = connect;
      }

      IOObjectRelease(v10);
      if (v12)
      {
        v28 = connect == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (v12)
        {
          v17 = 4;
        }

        else
        {
          v17 = 6;
        }
      }

      else
      {
        IOServiceClose(connect);
        connect = 0;
        v17 = 4;
      }
    }

    else
    {
      v17 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v23 = AVE_Log_CheckConsole(0x23u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p\n", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v26 = AVE_GetCurrTime();
          v17 = 4;
          v27 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p", v26, 35, v27, "AVE_UC_Create", 67, "pService != 0", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v17 = 4;
        }
      }

      v12 = 4294966291;
    }
  }

  else
  {
    v17 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x23u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v21 = AVE_GetCurrTime();
        v17 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v21, 35, v22, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v17 = 4;
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v17))
  {
    v29 = AVE_Log_CheckConsole(0x23u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v17);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v30, 35, v31, "AVE_UC_Create", a1, a2, v12);
      v32 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v17);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v30);
    }
  }

  return v12;
}

uint64_t AVE_UC_Destroy(void *a1)
{
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 35, LevelStr, "AVE_UC_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 35, v22, "AVE_UC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 35, LevelStr, "AVE_UC_Destroy", a1);
    }
  }

  if (a1)
  {
    kdebug_trace();
    v6 = IOServiceClose(a1);
    v7 = AVE_IOReturn2RetCode(v6);
    if (v7)
    {
      v8 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v9 = AVE_Log_CheckConsole(0x23u);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d\n", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v12 = AVE_GetCurrTime();
          v8 = 4;
          v13 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d", v12, 35, v13, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v8 = 4;
        }
      }
    }

    else
    {
      kdebug_trace();
      a1 = 0;
      v8 = 6;
    }
  }

  else
  {
    v8 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x23u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 35, v16, "AVE_UC_Destroy", 121, "pUC != __null", 0);
        v15 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    a1 = 0;
    v7 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v8))
  {
    v17 = AVE_Log_CheckConsole(0x23u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(v8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
      v20 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(v8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 35, v23, "AVE_UC_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t AVE_UC_Open(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 40;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Open", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 1u, a2, 0x7A0uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x\n", v13, 35, v14, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v9);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x", v15, 35, v16, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v9);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x", v13, 35, v14, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v9);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x27)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Open", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Close(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Close", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 2u, a2, 0x28uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Close", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Config(const void *a1, const void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x29EDCA608];
  v38 = 0u;
  v39 = 0u;
  *reference = 0u;
  v37 = 0u;
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v8 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Config", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", CurrTime, 35);
  }

  if (a1 && a2 && a3 && a4)
  {
    kdebug_trace();
    v11 = IOConnectCallAsyncMethod(a1, 3u, a2, reference, 8u, 0, 0, a3, 0x38uLL, 0, 0, a4, &outputStructCnt);
    v12 = AVE_IOReturn2RetCode(v11);
    kdebug_trace();
    if (v12)
    {
      v13 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v14 = AVE_Log_CheckConsole(0x23u);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d\n", v15, 35, v16, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v11, v12);
          v17 = AVE_GetCurrTime();
          v13 = 4;
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d", v17, 35, v18, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v11, v12);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v11, v12);
          v13 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v13 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v29 = AVE_Log_CheckConsole(0x23u);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v30, 35, v31, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v32 = AVE_GetCurrTime();
          v13 = 4;
          v33 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v30, 35, v31, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v13 = 4;
        }
      }

      v12 = 4294966281;
    }

    else
    {
      v12 = 0;
      v13 = 6;
    }
  }

  else
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v19 = AVE_Log_CheckConsole(0x23u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 35, v21, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v22 = AVE_GetCurrTime();
        v13 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 35, v23, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 35, v21, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v13 = 4;
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v13))
  {
    v24 = AVE_Log_CheckConsole(0x23u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v13);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v25, 35, v26, "AVE_UC_Config", a1, a2, a3, a4, v12);
      v27 = AVE_GetCurrTime();
      outputCnt = AVE_Log_GetLevelStr(v13);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v27, 35, outputCnt);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v25, 35, v26);
    }
  }

  return v12;
}

uint64_t AVE_UC_Prepare(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Prepare", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 4u, a2, 0x1A0A0uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Prepare", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Start(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 336;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Start", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 5u, a2, 0x1A0B0uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x14F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Start", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Stop(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Stop", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 6u, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Stop", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Reset(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Reset", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 0xAu, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Reset", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_WtPred_RetrieveArray(CFDictionaryRef theDict, int a2, int *a3)
{
  if (a2 <= 4 && theDict && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"WeightData_WeightFlagArray");
    v7 = CFDictionaryGetValue(theDict, @"WeightData_Weight");
    v8 = CFDictionaryGetValue(theDict, @"WeightData_Weight");
    v9 = v8;
    v52 = Value;
    if (Value && v7 && v8)
    {
      Count = CFArrayGetCount(Value);
      v11 = CFArrayGetCount(v7);
      v12 = CFArrayGetCount(v9);
      if (a2 < 1)
      {
        return 0;
      }

      else
      {
        v51 = 0;
        v13 = 0;
        v46 = v11;
        v47 = Count;
        if (Count >= v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = Count;
        }

        v45 = v12;
        if (v14 >= v12)
        {
          v14 = v12;
        }

        v15 = a3 + 11;
        v16 = a3 + 3;
        v50 = v14;
        v48 = a2;
        v17 = a3 + 50;
        while (2)
        {
          v18 = 0;
          v49 = v17;
          do
          {
            v54[0] = 0;
            v53 = 0;
            v19 = v51 + v18;
            if (v51 + v18 >= v50)
            {
              if (AVE_Log_CheckLevel(0xD7u, 4))
              {
                v35 = AVE_Log_CheckConsole(0xD7u);
                CurrTime = AVE_GetCurrTime();
                LevelStr = AVE_Log_GetLevelStr(4);
                if (v35)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Wrong WP array size %d %d %d %d\n", CurrTime, 215, LevelStr, "AVE_WtPred_RetrieveArray", 56, "arrayIdx < iFlagCnt && arrayIdx < iWeightCnt && arrayIdx < iOffsetCnt", v47, v46, v45, v19);
                  CurrTime = AVE_GetCurrTime();
                  v43 = v45;
                  v44 = v51 + v18;
                  v41 = v47;
                  v42 = v46;
                  v40 = AVE_Log_GetLevelStr(4);
                }

                else
                {
                  v43 = v45;
                  v44 = v51 + v18;
                  v41 = v47;
                  v42 = v46;
                  v40 = LevelStr;
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong WP array size %d %d %d %d", CurrTime, 215, v40, "AVE_WtPred_RetrieveArray", 56, "arrayIdx < iFlagCnt && arrayIdx < iWeightCnt && arrayIdx < iOffsetCnt", v41, v42, v43, v44);
              }

              return 4294966295;
            }

            result = AVE_CFArray_GetChar(v52, v51 + v18, v54);
            if (result)
            {
              return result;
            }

            if (v18)
            {
              v15[v13] = v54[0];
              result = AVE_CFArray_GetSInt32(v7, v19, &v53);
              if (result)
              {
                return result;
              }

              v21 = v15[v13] ? v53 : 1 << a3[1];
              *(v17 - 16) = v21;
              v17[24] = (-1 << a3[1]) + v21;
              result = AVE_CFArray_GetSInt32(v9, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v15[v13])
              {
                v24 = v53;
              }

              else
              {
                v24 = 0;
              }

              *v17 = v24;
              v25 = v24 + (*(v17 - 16) << 7 >> a3[1]) - 128;
              if (v25 <= -512)
              {
                v25 = -512;
              }

              if (v25 >= 511)
              {
                v25 = 511;
              }

              v17[40] = v25;
            }

            else
            {
              v16[v13] = v54[0];
              result = AVE_CFArray_GetSInt32(v7, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v16[v13])
              {
                v22 = v53;
                v23 = *a3;
              }

              else
              {
                v23 = *a3;
                v22 = 1 << *a3;
              }

              a3[v13 + 19] = v22;
              a3[v13 + 67] = (-1 << v23) + v22;
              result = AVE_CFArray_GetSInt32(v9, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v16[v13])
              {
                v26 = v53;
              }

              else
              {
                v26 = 0;
              }

              a3[v13 + 27] = v26;
            }

            ++v18;
            ++v17;
          }

          while (v18 != 3);
          result = 0;
          ++v13;
          v51 += 3;
          v17 = v49 + 2;
          if (v13 != v48)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD7u, 4))
      {
        v31 = AVE_Log_CheckConsole(0xD7u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p\n", v32, 215, v33, "AVE_WtPred_RetrieveArray", 39, "pFlagArray != __null && pWeightArray != __null && pOffsetArray != __null", Value, v7, v9);
          v34 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p", v34, 215, v39);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p", v32, 215, v33);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v27 = AVE_Log_CheckConsole(0xD7u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v28, 215, v29, "AVE_WtPred_RetrieveArray", 30, "pDict != __null && pInfo != __null && iFrameCount <= 4", theDict, a3, a2);
        v30 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v30, 215, v38);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v28, 215, v29);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_WtPred_GetInfo(CFDictionaryRef theDict, int a2, _OWORD *a3)
{
  if (!theDict || !a3)
  {
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v12 = AVE_Log_CheckConsole(0xD7u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 215, LevelStr, "AVE_WtPred_GetInfo", 246, "pDict != __null && pInfo != __null", theDict, a3);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 215);
    }

    return 4294966295;
  }

  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  *(a3 + 412) = 0u;
  Value = CFDictionaryGetValue(theDict, @"WeightedPredictionInfo");
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v15 = AVE_Log_CheckConsole(0xD7u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get dictionary %p %p\n", v16, 215, v17, "AVE_WtPred_GetInfo", 254, "pWPInfoDict != __null", theDict, 0);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get dictionary %p %p", v16, 215);
    }

    return 4294966288;
  }

  v7 = Value;
  if (AVE_Log_CheckLevel(0x1Du, 6))
  {
    v8 = AVE_Log_CheckConsole(0x1Du);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(6);
    if (v8)
    {
      printf("%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found \n", v9, 29, v10);
      v11 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found ", v11, 29, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found ", v9, 29, v10);
    }
  }

  SInt32 = AVE_CFDict_GetSInt32(v7, @"WeightData_LumaLog2WeightDenom", a3);
  if (SInt32)
  {
    v18 = SInt32;
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD7u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v21, 215, v22, "AVE_WtPred_GetInfo", 261, "ret == 0", v7, a3, v18);
        v23 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
LABEL_26:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v23, 215, v28);
        return v18;
      }

      goto LABEL_33;
    }

    return v18;
  }

  v24 = AVE_CFDict_GetSInt32(v7, @"WeightData_ChromaLog2WeightDenom", a3 + 1);
  if (v24)
  {
    v18 = v24;
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v25 = AVE_Log_CheckConsole(0xD7u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v21, 215, v22, "AVE_WtPred_GetInfo", 266, "ret == 0", v7, a3, v18);
        v23 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        goto LABEL_26;
      }

LABEL_33:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v21, 215, v22);
    }

    return v18;
  }

  return AVE_WtPred_RetrieveArray(v7, a2, a3);
}

uint64_t AVE_WtPred_PrintInfo(_DWORD *a1, unsigned int a2, int a3, const char *a4, int a5)
{
  v111 = *MEMORY[0x29EDCA608];
  memset(v110, 0, sizeof(v110));
  if (!a1)
  {
    return 4294966295;
  }

  AVE_ComposePosStr(a4, a5, v110, 32);
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v8 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (v8 && (-a3 & 0x20) == 0)
      {
        printf("WP %s luma_log2_weight_denom = %d\n", v110, *a1);
      }

      syslog(3, "WP %s luma_log2_weight_denom = %d");
    }

    else
    {
      v9 = v8 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(a3);
      if (((v9 | ((a3 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: WP %s luma_log2_weight_denom = %d\n", CurrTime, a2, LevelStr, v110, *a1);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(a3);
      }

      syslog(3, "%lld %d AVE %s: WP %s luma_log2_weight_denom = %d");
    }
  }

  if (AVE_Log_CheckLevel(a2, a3))
  {
    v13 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (v13 && (-a3 & 0x20) == 0)
      {
        printf("WP %s chroma_log2_weight_denom = %d\n", v110, a1[1]);
      }

      syslog(3, "WP %s chroma_log2_weight_denom = %d");
    }

    else
    {
      v14 = v13 ^ 1;
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(a3);
      if (((v14 | ((a3 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: WP %s chroma_log2_weight_denom = %d\n", v15, a2, v16, v110, a1[1]);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(a3);
      }

      syslog(3, "%lld %d AVE %s: WP %s chroma_log2_weight_denom = %d");
    }
  }

  if (AVE_Log_CheckLevel(a2, a3))
  {
    v17 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (v17 && (-a3 & 0x20) == 0)
      {
        printf("WP %s delta_chroma_log2_weight_denom = %d\n", v110, a1[2]);
      }

      syslog(3, "WP %s delta_chroma_log2_weight_denom = %d");
    }

    else
    {
      v18 = v17 ^ 1;
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(a3);
      if (((v18 | ((a3 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: WP %s delta_chroma_log2_weight_denom = %d\n", v19, a2, v20, v110, a1[2]);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(a3);
      }

      syslog(3, "%lld %d AVE %s: WP %s delta_chroma_log2_weight_denom = %d");
    }
  }

  v21 = 0;
  v103 = a1 + 3;
  v108 = -a3;
  v22 = a1 + 27;
  v23 = a1 + 67;
  v104 = a1 + 51;
  v101 = a1 + 11;
  v24 = a1 + 27;
  v109 = a1 + 67;
  v102 = a1 + 19;
  do
  {
    v105 = v21;
    if (AVE_Log_CheckLevel(a2, a3))
    {
      v25 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if ((v108 & 0x20) != 0)
        {
          v32 = 0;
        }

        else
        {
          v32 = v25;
        }

        if (v32 == 1)
        {
          printf("WP %s luma_weight_l0_flag[%d] = %d\n", v110, v105, v103[v105]);
        }

        syslog(3, "WP %s luma_weight_l0_flag[%d] = %d", v110, v105, v103[v105]);
      }

      else
      {
        v26 = v25 ^ 1;
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(a3);
        v29 = v103[v105];
        if ((v26 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d", v27, a2, v28, v110, v105, v29);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d\n", v27, a2, v28, v110, v105, v29);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(a3);
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d", v30, a2, v31, v110, v105, v103[v105]);
        }

        v22 = v24;
      }
    }

    if (AVE_Log_CheckLevel(a2, a3))
    {
      v33 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if ((v108 & 0x20) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = v33;
        }

        if (v39 == 1)
        {
          printf("WP %s luma_weight_l0[%d] = %d\n", v110, v105, v102[v105]);
        }

        syslog(3, "WP %s luma_weight_l0[%d] = %d", v110, v105, v102[v105]);
      }

      else
      {
        v34 = v33 ^ 1;
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(a3);
        v37 = v102[v105];
        if ((v34 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d", v35, a2, v36, v110, v105, v37);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d\n", v35, a2, v36, v110, v105, v37);
          v106 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(a3);
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d", v106, a2, v38, v110, v105, v102[v105]);
        }

        v22 = v24;
      }
    }

    if (AVE_Log_CheckLevel(a2, a3))
    {
      v40 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if ((v108 & 0x20) != 0)
        {
          v47 = 0;
        }

        else
        {
          v47 = v40;
        }

        if (v47 == 1)
        {
          printf("WP %s luma_offset_l0[%d] = %d\n", v110, v105, v22[v105]);
        }

        syslog(3, "WP %s luma_offset_l0[%d] = %d", v110, v105, v22[v105]);
      }

      else
      {
        v41 = v40 ^ 1;
        v42 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(a3);
        v44 = v22[v105];
        if ((v41 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d", v42, a2, v43, v110, v105, v44);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d\n", v42, a2, v43, v110, v105, v44);
          v45 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(a3);
          syslog(3, "%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d", v45, a2, v46, v110, v105, v22[v105]);
        }

        v23 = v109;
      }
    }

    if (AVE_Log_CheckLevel(a2, a3))
    {
      v48 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if ((v108 & 0x20) != 0)
        {
          v55 = 0;
        }

        else
        {
          v55 = v48;
        }

        if (v55 == 1)
        {
          printf("WP %s delta_luma_weight_l0[%d] = %d\n", v110, v105, v23[v105]);
        }

        syslog(3, "WP %s delta_luma_weight_l0[%d] = %d", v110, v105, v23[v105]);
      }

      else
      {
        v49 = v48 ^ 1;
        v50 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(a3);
        v52 = v23[v105];
        if ((v49 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d", v50, a2, v51, v110, v105, v52);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d\n", v50, a2, v51, v110, v105, v52);
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(a3);
          syslog(3, "%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d", v53, a2, v54, v110, v105, v23[v105]);
        }

        v22 = v24;
      }
    }

    if (AVE_Log_CheckLevel(a2, a3))
    {
      v56 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if ((v108 & 0x20) != 0)
        {
          v62 = 0;
        }

        else
        {
          v62 = v56;
        }

        if (v62 == 1)
        {
          printf("WP %s chroma_weight_l0_flag[%d] = %d\n", v110, v105, v101[v105]);
        }

        syslog(3, "WP %s chroma_weight_l0_flag[%d] = %d", v110, v105, v101[v105]);
      }

      else
      {
        v57 = v56 ^ 1;
        v58 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(a3);
        v60 = v101[v105];
        if ((v57 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d", v58, a2, v59, v110, v105, v60);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d\n", v58, a2, v59, v110, v105, v60);
          v107 = AVE_GetCurrTime();
          v61 = AVE_Log_GetLevelStr(a3);
          syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d", v107, a2, v61, v110, v105, v101[v105]);
        }

        v22 = v24;
      }
    }

    v63 = 0;
    v64 = v104;
    do
    {
      if (AVE_Log_CheckLevel(a2, a3))
      {
        v65 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v108 & 0x20) != 0)
          {
            v72 = 0;
          }

          else
          {
            v72 = v65;
          }

          v73 = *(v64 - 16);
          if (v72 == 1)
          {
            printf("WP %s chroma_weight_l0[%d][%d] = %d\n", v110, v105, v63, v73);
            syslog(3, "WP %s chroma_weight_l0[%d][%d] = %d", v110, v105, v63, *(v64 - 16));
          }

          else
          {
            syslog(3, "WP %s chroma_weight_l0[%d][%d] = %d", v110, v105, v63, v73);
          }
        }

        else
        {
          v66 = v65 ^ 1;
          v67 = AVE_GetCurrTime();
          v68 = AVE_Log_GetLevelStr(a3);
          v69 = *(v64 - 16);
          if ((v66 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d", v67, a2, v68, v110, v105, v63, v69);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d\n", v67, a2, v68, v110, v105, v63, v69);
            v70 = AVE_GetCurrTime();
            v71 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d", v70, a2, v71, v110, v105, v63, *(v64 - 16));
          }

          v22 = v24;
          v23 = v109;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v74 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v108 & 0x20) != 0)
          {
            v81 = 0;
          }

          else
          {
            v81 = v74;
          }

          v82 = *v64;
          if (v81 == 1)
          {
            printf("WP %s chroma_offset_l0[%d][%d] = %d\n", v110, v105, v63, v82);
            syslog(3, "WP %s chroma_offset_l0[%d][%d] = %d", v110, v105, v63, *v64);
          }

          else
          {
            syslog(3, "WP %s chroma_offset_l0[%d][%d] = %d", v110, v105, v63, v82);
          }
        }

        else
        {
          v75 = v74 ^ 1;
          v76 = AVE_GetCurrTime();
          v77 = AVE_Log_GetLevelStr(a3);
          v78 = *v64;
          if ((v75 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d", v76, a2, v77, v110, v105, v63, v78);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d\n", v76, a2, v77, v110, v105, v63, v78);
            v79 = AVE_GetCurrTime();
            v80 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d", v79, a2, v80, v110, v105, v63, *v64);
          }

          v22 = v24;
          v23 = v109;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v83 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v108 & 0x20) != 0)
          {
            v90 = 0;
          }

          else
          {
            v90 = v83;
          }

          v91 = v64[24];
          if (v90 == 1)
          {
            printf("WP %s delta_chroma_weight_l0[%d][%d] = %d\n", v110, v105, v63, v91);
            syslog(3, "WP %s delta_chroma_weight_l0[%d][%d] = %d", v110, v105, v63, v64[24]);
          }

          else
          {
            syslog(3, "WP %s delta_chroma_weight_l0[%d][%d] = %d", v110, v105, v63, v91);
          }
        }

        else
        {
          v84 = v83 ^ 1;
          v85 = AVE_GetCurrTime();
          v86 = AVE_Log_GetLevelStr(a3);
          v87 = v64[24];
          if ((v84 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d", v85, a2, v86, v110, v105, v63, v87);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d\n", v85, a2, v86, v110, v105, v63, v87);
            v88 = AVE_GetCurrTime();
            v89 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d", v88, a2, v89, v110, v105, v63, v64[24]);
          }

          v22 = v24;
          v23 = v109;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v92 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v108 & 0x20) != 0)
          {
            v99 = 0;
          }

          else
          {
            v99 = v92;
          }

          v100 = v64[40];
          if (v99 == 1)
          {
            printf("WP %s delta_chroma_offset_l0[%d][%d] = %d\n", v110, v105, v63, v100);
            syslog(3, "WP %s delta_chroma_offset_l0[%d][%d] = %d", v110, v105, v63, v64[40]);
          }

          else
          {
            syslog(3, "WP %s delta_chroma_offset_l0[%d][%d] = %d", v110, v105, v63, v100);
          }
        }

        else
        {
          v93 = v92 ^ 1;
          v94 = AVE_GetCurrTime();
          v95 = AVE_Log_GetLevelStr(a3);
          v96 = v64[40];
          if ((v93 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d", v94, a2, v95, v110, v105, v63, v96);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d\n", v94, a2, v95, v110, v105, v63, v96);
            v97 = AVE_GetCurrTime();
            v98 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d", v97, a2, v98, v110, v105, v63, v64[40]);
          }

          v22 = v24;
          v23 = v109;
        }
      }

      ++v63;
      ++v64;
    }

    while (v63 != 2);
    v21 = v105 + 1;
    v104 += 2;
  }

  while (v105 != 3);
  return 0;
}

uint64_t AVE_RC_DecideVBVMaxBitRate(int a1, int a2, int *a3)
{
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %p", CurrTime);
  }

  if (a3)
  {
    if (a1 > 0)
    {
      v9 = 1;
      v10 = a1;
LABEL_15:
      *a3 = v10;
      if (AVE_Log_CheckLevel(0xE3u, 8))
      {
        v14 = AVE_Log_CheckConsole(0xE3u);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(8);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %d %d %d %d %d\n", v15, 227, v16, "AVE_RC_DecideVBVMaxBitRate", 259, a1, a2, *a3, v9, 0);
          v15 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(8);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d", v15, 227);
      }

      v17 = 0;
      goto LABEL_23;
    }

    if (a2 > 0)
    {
      v9 = 2;
      v10 = a2;
      goto LABEL_15;
    }

    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xE3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p\n", v24, 227, v25, "AVE_RC_DecideVBVMaxBitRate", 253, "0", a1, a2, a3);
        v24 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p", v24, 227);
    }

    v17 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v11 = AVE_Log_CheckConsole(0xE3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p\n", v12, 227, v13, "AVE_RC_DecideVBVMaxBitRate", 237, "piVBVMaxBitRate != __null", a1, a2, 0);
        v12 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p", v12, 227);
    }

    v17 = 4294966295;
  }

LABEL_23:
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v18 = AVE_Log_CheckConsole(0xE3u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(7);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %d\n", v19, 227, v20, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3, v17);
      v21 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v21, 227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v19, 227);
    }
  }

  return v17;
}

uint64_t AVE_RC_DecideVBVBufferSize(double a1, double a2, double a3, uint64_t a4, double *a5)
{
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = ((a1 - a1) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a2 - a2) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a3 - a3) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVBufferSize", a1, v14, a2, v16, a3, v18, a4, a5);
      v19 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", v19, 227, v57, "AVE_RC_DecideVBVBufferSize");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVBufferSize");
    }
  }

  if (a5)
  {
    if ((a4 & 0x80000000) != 0)
    {
      v20 = 10;
    }

    else
    {
      v20 = 20;
    }

    v21 = 2.5;
    if ((a4 & 0x80000000) == 0)
    {
      v21 = 1.0;
    }

    if (a3 <= 0.0)
    {
      v22 = v20;
    }

    else
    {
      v22 = 4;
    }

    if (a3 > 0.0)
    {
      v21 = a3;
    }

    if (a2 <= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 2;
    }

    if (a2 > 0.0)
    {
      v21 = a2;
    }

    if (a1 <= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    if (a1 > 0.0)
    {
      v21 = a1;
    }

    *a5 = v21;
    if (AVE_Log_CheckLevel(0xE3u, 8))
    {
      v25 = AVE_Log_CheckConsole(0xE3u);
      v60 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(8);
      v27 = ((a1 - a1) * 1000.0);
      v28 = ((a2 - a2) * 1000.0);
      if (v27 >= 0)
      {
        v29 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v29 = -v27;
      }

      if (v28 >= 0)
      {
        v30 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v30 = -v28;
      }

      v31 = ((a3 - a3) * 1000.0);
      if (v31 >= 0)
      {
        v32 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v32 = -v31;
      }

      v33 = *a5;
      v34 = ((*a5 - v33) * 1000.0);
      if (v34 < 0)
      {
        v34 = -v34;
      }

      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a1, v29, a2, v30, a3, v32, a4, v33, v34, v24, 0);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v35, 227, v36, "AVE_RC_DecideVBVBufferSize", 332, a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a1);
      }
    }

    v47 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v37 = AVE_Log_CheckConsole(0xE3u);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      v40 = ((a1 - a1) * 1000.0);
      if (v40 >= 0)
      {
        v41 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v41 = -v40;
      }

      v42 = ((a2 - a2) * 1000.0);
      if (v42 >= 0)
      {
        v43 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v43 = -v42;
      }

      v44 = ((a3 - a3) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294, "pfVBVBufferSize != __null", a1, v41, a2, v43, a3, v45, a4, 0);
        v46 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v46, 227, v58, "AVE_RC_DecideVBVBufferSize", 294);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294);
      }
    }

    v47 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v48 = AVE_Log_CheckConsole(0xE3u);
    v49 = AVE_GetCurrTime();
    v50 = AVE_Log_GetLevelStr(7);
    v51 = ((a1 - a1) * 1000.0);
    if (v51 >= 0)
    {
      v52 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v52 = -v51;
    }

    v53 = ((a2 - a2) * 1000.0);
    if (v53 >= 0)
    {
      v54 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v54 = -v53;
    }

    if (v48)
    {
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a1, v52, a2, v54, a2, v54, a4, a5, v47);
      v55 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v55, 227, v59, "AVE_RC_DecideVBVBufferSize", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a1);
    }
  }

  return v47;
}

uint64_t AVE_RC_DecideVBVInitialDelay(double a1, double a2, double a3, double a4, uint64_t a5, double *a6)
{
  v6 = a6;
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v11 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = ((a1 - a1) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a2 - a2) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a3 - a3) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    v19 = ((a4 - a4) * 1000.0);
    if (v19 >= 0)
    {
      v20 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v20 = -v19;
    }

    v6 = a6;
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVInitialDelay", a1, v14, a2, v16, a3, v18, a4, v20, a5, a6);
      v67 = AVE_GetCurrTime();
      v63 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v67, 227, v63, "AVE_RC_DecideVBVInitialDelay", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVInitialDelay", a1);
    }
  }

  if (v6)
  {
    if (a1 >= 0.0)
    {
      v21 = 1;
      v22 = a1;
    }

    else if (a2 >= 0.0)
    {
      v21 = 2;
      v22 = a2;
    }

    else if (a3 >= 0.0)
    {
      v21 = 4;
      v22 = a3 * a4 / 100.0;
    }

    else
    {
      if ((a5 & 0x80000000) != 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = 20;
      }

      v22 = 2.25;
      if ((a5 & 0x80000000) == 0)
      {
        v22 = 0.5;
      }
    }

    *v6 = v22;
    if (AVE_Log_CheckLevel(0xE3u, 8))
    {
      v36 = AVE_Log_CheckConsole(0xE3u);
      v68 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(8);
      v38 = ((a1 - a1) * 1000.0);
      if (v38 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = -v38;
      }

      v40 = ((a2 - a2) * 1000.0);
      v41 = ((a3 - a3) * 1000.0);
      if (v40 >= 0)
      {
        v42 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v42 = -v40;
      }

      if (v41 >= 0)
      {
        v43 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v43 = -v41;
      }

      v44 = ((a4 - a4) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      v46 = *v6;
      v47 = ((*v6 - v46) * 1000.0);
      if (v47 < 0)
      {
        v47 = -v47;
      }

      if (v36)
      {
        v48 = v39;
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a1, v39, a2, v42, a3, v43, a4, v45, a5, v46, v47, v21, 0);
        v69 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v69, 227, v49, "AVE_RC_DecideVBVInitialDelay", 409, a1, v48);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a1, v39);
      }
    }

    v35 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xE3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      v26 = ((a1 - a1) * 1000.0);
      if (v26 >= 0)
      {
        v27 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v27 = -v26;
      }

      v28 = ((a2 - a2) * 1000.0);
      if (v28 >= 0)
      {
        v29 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v29 = -v28;
      }

      v30 = ((a3 - a3) * 1000.0);
      if (v30 >= 0)
      {
        v31 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v31 = -v30;
      }

      v32 = ((a4 - a4) * 1000.0);
      if (v32 >= 0)
      {
        v33 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v33 = -v32;
      }

      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null", a1, v27, a2, v29, a3, v31, a4, v33, a5, 0);
        v34 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v34, 227, v64, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }
    }

    v35 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v50 = AVE_Log_CheckConsole(0xE3u);
    v51 = AVE_GetCurrTime();
    v52 = AVE_Log_GetLevelStr(7);
    v53 = ((a1 - a1) * 1000.0);
    if (v53 >= 0)
    {
      v54 = v53;
    }

    else
    {
      v54 = -v53;
    }

    v55 = ((a2 - a2) * 1000.0);
    if (v55 >= 0)
    {
      v56 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v56 = -v55;
    }

    v57 = ((a3 - a3) * 1000.0);
    if (v57 >= 0)
    {
      v58 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v58 = -v57;
    }

    v59 = ((a4 - a4) * 1000.0);
    if (v59 >= 0)
    {
      v60 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v60 = -v59;
    }

    if (v50)
    {
      v65 = v54;
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a1, v54, a2, v56, a3, v58, a4, v60, a5, a6, v35);
      v70 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v70, 227, v61, "AVE_RC_DecideVBVInitialDelay", a1, v65);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a1, v54);
    }
  }

  return v35;
}

uint64_t AVE_PIP_RetrieveEntry(const void *a1, _DWORD *a2)
{
  memset(&rect, 0, sizeof(rect));
  if (!a1 || !a2)
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v11 = AVE_Log_CheckConsole(0x32u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 50, LevelStr, "AVE_PIP_RetrieveEntry", 28, "pDict != __null && psEntry != __null", a1, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 50);
    }

    return 4294966295;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      v17 = CFGetTypeID(a1);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %p %ld\n", v15, 30, v16, "AVE_PIP_RetrieveEntry", 33, "CFDictionaryGetTypeID() == CFGetTypeID(pDict)", a1, a2, v17);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        v41 = a2;
        v42 = CFGetTypeID(a1);
      }

      else
      {
        v41 = a2;
        v42 = v17;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %p %ld", v15, 30, v16, "AVE_PIP_RetrieveEntry", 33, "CFDictionaryGetTypeID() == CFGetTypeID(pDict)", a1, v41, v42);
    }

    return 4294965293;
  }

  Value = CFDictionaryGetValue(a1, @"Rectangle");
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v19 = AVE_Log_CheckConsole(0x32u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVE_kVTCompressionPictureInPictureRegion_Rectangle %p %p\n", v20, 50, v21, "AVE_PIP_RetrieveEntry", 39, "pRect != __null", a1, a2);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVE_kVTCompressionPictureInPictureRegion_Rectangle %p %p", v20, 50);
    }

    return 4294966288;
  }

  v6 = Value;
  v7 = CFDictionaryGetTypeID();
  if (v7 != CFGetTypeID(v6))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      v25 = CFGetTypeID(v6);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %p %p %ld\n", v23, 30, v24, "AVE_PIP_RetrieveEntry", 44, "CFDictionaryGetTypeID() == CFGetTypeID(pRect)", a1, a2, v6, v25);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        CFGetTypeID(v6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %p %p %ld", v23, 30, v24, "AVE_PIP_RetrieveEntry");
    }

    return 4294965293;
  }

  if (CGRectMakeWithDictionaryRepresentation(v6, &rect))
  {
    *a2 = vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(rect.origin)), vcvtq_s64_f64(vrndaq_f64(rect.size)));
    if (AVE_Log_CheckLevel(0x32u, 8))
    {
      v8 = AVE_Log_CheckConsole(0x32u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(8);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d PIP Rect(%d %d %dx%d)\n", v9, 50, v10, "AVE_PIP_RetrieveEntry", 55, *a2, a2[1], a2[2], a2[3]);
        v9 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d PIP Rect(%d %d %dx%d)", v9, 50);
    }

    SInt32 = AVE_CFDict_GetSInt32(a1, @"BorderTop", a2 + 6);
    if (!SInt32)
    {
      v35 = AVE_CFDict_GetSInt32(a1, @"BorderLeft", a2 + 4);
      if (v35)
      {
        v18 = v35;
        if (!AVE_Log_CheckLevel(0x32u, 4))
        {
          return v18;
        }

        v36 = AVE_Log_CheckConsole(0x32u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (!v36)
        {
          goto LABEL_62;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 66, "ret == 0", a1, a2, v18);
      }

      else
      {
        v37 = AVE_CFDict_GetSInt32(a1, @"BorderRight", a2 + 5);
        if (v37)
        {
          v18 = v37;
          if (!AVE_Log_CheckLevel(0x32u, 4))
          {
            return v18;
          }

          v38 = AVE_Log_CheckConsole(0x32u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (!v38)
          {
            goto LABEL_62;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 71, "ret == 0", a1, a2, v18);
        }

        else
        {
          v18 = AVE_CFDict_GetSInt32(a1, @"BorderBottom", a2 + 7);
          if (!v18 || !AVE_Log_CheckLevel(0x32u, 4))
          {
            return v18;
          }

          v39 = AVE_Log_CheckConsole(0x32u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (!v39)
          {
            goto LABEL_62;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 76, "ret == 0", a1, a2, v18);
        }
      }

      v34 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      goto LABEL_61;
    }

    v18 = SInt32;
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v31 = AVE_Log_CheckConsole(0x32u);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      if (v31)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 61, "ret == 0", a1, a2, v18);
        v34 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
LABEL_61:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v34, 50, v40);
        return v18;
      }

LABEL_62:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v32, 50, v33);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v26 = AVE_Log_CheckConsole(0x32u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get PIP Rect value %p %p\n", v27, 50, v28, "AVE_PIP_RetrieveEntry", 48, "res", a1, a2);
        v27 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get PIP Rect value %p %p", v27, 50);
    }

    return 4294966296;
  }

  return v18;
}

uint64_t AVE_PIP_Print(unsigned int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(v15, 0, sizeof(v15));
  AVE_ComposePosStr(a4, a5, v15, 32);
  v8 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v9 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (!v9 || (-a3 & 0x20) != 0)
      {
        syslog(3, "PIP %s | %d %d %d %d | %d %d %d %d", v15, *a1);
      }

      else
      {
        printf("PIP %s | %d %d %d %d | %d %d %d %d\n", v15, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
        syslog(3, "PIP %s | %d %d %d %d | %d %d %d %d", v15, *a1);
      }
    }

    else
    {
      v10 = a3 & 0x20;
      v11 = v9 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v8);
      if (((v11 | (v10 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: PIP %s | %d %d %d %d | %d %d %d %d\n", CurrTime, a2, LevelStr, v15, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v8);
      }

      syslog(3, "%lld %d AVE %s: PIP %s | %d %d %d %d | %d %d %d %d", CurrTime, a2, LevelStr);
    }
  }

  return 0;
}

uint64_t AVE_PIP_PrintInfo(int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (*a1 >= 1)
  {
    v10 = 0;
    v11 = (a1 + 1);
    do
    {
      AVE_PIP_Print(v11, a2, a3, a4, a5);
      ++v10;
      v11 += 8;
    }

    while (v10 < *a1);
  }

  return 0;
}

uint64_t AVE_DRL_Print(double *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v40 = *MEMORY[0x29EDCA608];
  memset(v39, 0, sizeof(v39));
  AVE_ComposePosStr(a4, a5, v39, 32);
  v8 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v9 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (!v9 || (-a3 & 0x20) != 0)
      {
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v39, a1, *a1);
      }

      else
      {
        v26 = a1[1];
        v27 = a1[2];
        v28 = v26;
        v29 = ((v26 - v26) * 1000.0);
        v30 = v27;
        v31 = ((v27 - v27) * 1000.0);
        v32 = a1[3];
        v33 = a1[4];
        v34 = v32;
        v35 = v32 - v32;
        if (v29 < 0)
        {
          v29 = -v29;
        }

        if (v31 < 0)
        {
          v31 = -v31;
        }

        v36 = (v35 * 1000.0);
        if (v36 < 0)
        {
          v36 = -v36;
        }

        v37 = ((v33 - v33) * 1000.0);
        if (v37 < 0)
        {
          v37 = -v37;
        }

        printf("DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", v39, a1, *a1, v28, v29, v30, v31, v34, v36, v33, v37);
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v39, a1, *a1);
      }
    }

    else
    {
      v10 = a3 & 0x20;
      v11 = v9 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v8);
      v14 = a1[1];
      v15 = a1[2];
      v16 = v14;
      v17 = ((v14 - v14) * 1000.0);
      v18 = v15;
      v19 = ((v15 - v15) * 1000.0);
      v20 = a1[3];
      v21 = a1[4];
      v22 = v20;
      v23 = v20 - v20;
      if (v17 < 0)
      {
        v17 = -v17;
      }

      if (v19 < 0)
      {
        v19 = -v19;
      }

      v24 = (v23 * 1000.0);
      if (v24 < 0)
      {
        v24 = -v24;
      }

      v25 = ((v21 - v21) * 1000.0);
      if (v25 < 0)
      {
        v25 = -v25;
      }

      if (((v11 | (v10 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", CurrTime, a2, LevelStr, v39, a1, *a1, v16, v17, v18, v19, v22, v24, v21, v25);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v8);
      }

      syslog(3, "%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", CurrTime, a2, LevelStr, v39);
    }
  }

  return 0;
}

uint64_t AVE_Enc_Preset_Find_Bitrate(int a1, int a2, int *a3)
{
  if (a3)
  {
    v5 = a2 * a1;
    if (a2 * a1 >= 1)
    {
      v6 = a2 * a1;
    }

    else
    {
      v6 = 2073600;
    }

    if (v5 < 0)
    {
      v12 = 0;
      v11 = 0;
      v8 = 0;
      LODWORD(v9) = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = &dword_2954ED9A8;
      while (1)
      {
        v11 = v7;
        v12 = *(v10 - 1);
        if (v5 == v7)
        {
          v8 = *(v10 - 1);
        }

        if (v9 == 6)
        {
          break;
        }

        v13 = *v10;
        v10 += 2;
        v7 = v13;
        ++v9;
        if (v5 < v13)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v9) = 7;
    }

LABEL_18:
    if (v12 < 1)
    {
      v12 = 0;
    }

    else
    {
      if (v9 >= 6)
      {
        LODWORD(v9) = 6;
      }

      if (!v8)
      {
        v8 = gsc_saAVE_Enc_Preset_Set[2 * v9 + 1];
      }

      v17 = __OFSUB__(v8, v12);
      v18 = v8 - v12;
      if (!((v18 < 0) ^ v17 | (v18 == 0)))
      {
        v12 = ((v6 - v11) * v18 / (gsc_saAVE_Enc_Preset_Set[2 * v9] - v11) + v12);
      }
    }

    result = 0;
    *a3 = v12;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p\n", CurrTime, 30, LevelStr, "AVE_Enc_Preset_Find_Bitrate", 85, "pBitrate != __null", a1, a2, 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p", CurrTime, 30);
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Enc_CreateOnePresetDict(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, int a7, int a8, int *a9, __CFDictionary *a10)
{
  if (a9)
  {
    v15 = a6 < 1;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && a1 != 0 && a5 != 0 && a10 != 0)
  {
    if (*a9 < 1)
    {
      return 0;
    }

    v20 = 0;
    v21 = a8;
    for (i = (a9 + 12); ; i += 4)
    {
      v23 = *(i - 2);
      if (!AVE_Prop_FindPropertyEntry(a5, a6, a3, a7 | 0x30000u, a1, a2, v23))
      {
        Str = AVE_CFStr_GetStr(v23, 0, 0);
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v37 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(5);
          if (!Str)
          {
            Str = &unk_2954B8F4E;
          }

          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d\n", CurrTime, 30, LevelStr, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v23, Str, v20);
            v39 = AVE_GetCurrTime();
            v36 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d", v39, 30, v36, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d", CurrTime, 30, LevelStr, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6);
          }
        }

        return 4294966288;
      }

      v24 = *(i - 2);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
          AVE_CFDict_AddBool(v23, *i != 0, a10);
          goto LABEL_30;
        }

        if (v24 == 2)
        {
          v27 = *i;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v24)
        {
          case 3:
            AVE_CFDict_AddDouble(v23, *i, a10);
            break;
          case 5:
            v27 = *i * v21;
LABEL_27:
            v26 = v27;
            v25 = v23;
LABEL_28:
            AVE_CFDict_AddSInt32(v25, v26, a10);
            break;
          case 4:
            v25 = v23;
            v26 = a8;
            goto LABEL_28;
        }
      }

LABEL_30:
      if (++v20 >= *a9)
      {
        return 0;
      }
    }
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v29 = AVE_Log_CheckConsole(0x1Eu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p\n", v30, 30, v31, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v32 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p", v32, 30, v35, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p", v30, 30, v31, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3);
    }
  }

  return 4294966295;
}

uint64_t AVE_Enc_CreatePresetDict(const void *a1, uint64_t a2, uint64_t a3, const __CFAllocator *a4, const void *a5, uint64_t a6, int a7, int a8, int a9, void *a10)
{
  v14 = a1;
  v15 = a10;
  v71[0] = 0;
  if (a6 >= 1 && a1 && a5 && a10)
  {
    Bitrate = AVE_Enc_Preset_Find_Bitrate(a8, a9, v71);
    v66 = a2;
    if (Bitrate)
    {
      v17 = Bitrate;
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d\n", CurrTime, 30, LevelStr, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3, a4, a5, a6, a7, a8, a9, a10, v71[0], v17);
          v21 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d", v21, 30, v57, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d", CurrTime, 30, LevelStr, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3);
        }
      }
    }

    else
    {
      v26 = 0;
      v67 = 0;
      v27 = &gsc_saEnc_Preset_Set;
      v64 = a4;
      while (1)
      {
        Mutable = CFDictionaryCreateMutable(a4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (!Mutable)
        {
          break;
        }

        v29 = Mutable;
        v30 = *v27;
        if (*v27 >= 11)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v48 = AVE_Log_CheckConsole(0x1Eu);
            v49 = AVE_GetCurrTime();
            v50 = AVE_Log_GetLevelStr(4);
            if (v48)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d\n", v49, 30, v50, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v26, v30);
              v51 = AVE_GetCurrTime();
              v60 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d", v51, 30, v60, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d", v49, 30, v50, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3);
            }
          }

          CFRelease(v29);
          return 4294966295;
        }

        v31 = *(v27 + 2);
        if (AVE_Enc_CreateOnePresetDict(v14, a2, a3, a4, a5, a6, a7, v71[0], v27, Mutable))
        {
          ++v67;
          if (AVE_Log_CheckLevel(0x1Eu, 5))
          {
            v32 = v14;
            v33 = AVE_Log_CheckConsole(0x1Eu);
            v65 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(5);
            v35 = *(v27 + 1);
            if (v33)
            {
              v36 = v15;
              v62 = v15;
              a2 = v66;
              v37 = v32;
              printf("%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s\n", v65, 30, v34, "AVE_Enc_CreatePresetDict", 291, v32, v66, a3, v64, a5, a6, a7, v71[0], v62, v29, v26, v31, v35);
              v38 = AVE_GetCurrTime();
              v39 = AVE_Log_GetLevelStr(5);
              v63 = v35;
              v14 = v37;
              v15 = v36;
              a4 = v64;
              syslog(3, "%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s", v38, 30, v39, "AVE_Enc_CreatePresetDict", 291, v14, v66, a3, v64, a5, a6, a7, v71[0], v15, v29, v26, v31, v63);
            }

            else
            {
              a2 = v66;
              v14 = v32;
              syslog(3, "%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s", v65, 30, v34, "AVE_Enc_CreatePresetDict", 291, v32, v66, a3, a4, a5, a6, a7, v71[0], v15, v29, v26, v31, *(v27 + 1));
            }
          }
        }

        else
        {
          CFDictionarySetValue(v15, v31, v29);
        }

        CFRelease(v29);
        ++v26;
        v27 += 86;
        if (v26 == 3)
        {
          if (v67 >= 3)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v52 = AVE_Log_CheckConsole(0x1Eu);
              v53 = AVE_GetCurrTime();
              v54 = AVE_Log_GetLevelStr(4);
              if (v52)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d\n", v53, 30, v54, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v67, 3, 0);
                v55 = AVE_GetCurrTime();
                v61 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d", v55, 30, v61, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d", v53, 30, v54, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4);
              }
            }

            return 4294966296;
          }

          else
          {
            if (AVE_Log_CheckLevel(0x1Eu, 7))
            {
              v40 = AVE_Log_CheckConsole(0x1Eu);
              v41 = AVE_GetCurrTime();
              v42 = AVE_Log_GetLevelStr(7);
              if (v40)
              {
                printf("%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d\n", v41, 30, v42, v14, v66, v15, 3, v67);
                v43 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d", v43);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d", v41);
              }
            }

            return 0;
          }
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v44 = AVE_Log_CheckConsole(0x1Eu);
        v45 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d\n", v45, 30, v46, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v26);
          v47 = AVE_GetCurrTime();
          v59 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d", v47, 30, v59, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d", v45, 30, v46, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p\n", v23, 30, v24, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2, a3, a4, a5, a6, a7, a8, a9, a10);
        v25 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p", v25, 30, v58, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p", v23, 30, v24, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2);
      }
    }

    return 4294966295;
  }

  return v17;
}

void *AVE_FwStats_PrintDiff(void *result, char *a2, int *a3, int a4)
{
  if (result && a2)
  {
    if (a3)
    {
      v7 = result;
      v8 = *a3;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", result[1] - *result) + v8;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[65] - v7[2]) + v8;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[3] - v7[2]) + v8;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[5] - v7[3]) + v8;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[30] - v7[4]) + v8;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[58] - v7[31]) + v8;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[26] - v7[24]) + v8;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[51] - v7[25]) + v8;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[62] - v7[52]) + v8;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[29] - v7[27]) + v8;
      LODWORD(v8) = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[54] - v7[28]) + v8;
      result = AVE_SNPrintf(&a2[v8], (a4 - v8), "%lld,", v7[64] - v7[55]);
      *a3 = result + v8;
    }
  }

  return result;
}

uint64_t AVE_FwStats_PrintSet(uint64_t result, char *a2, int *a3, int a4)
{
  if (result && a2 && a3)
  {
    v7 = result;
    v8 = 0;
    v9 = *a3;
    do
    {
      result = AVE_SNPrintf(&a2[v9], (a4 - v9), "%lld,", *(v7 + v8));
      v9 = *a3 + result;
      *a3 = v9;
      v8 += 8;
    }

    while (v8 != 544);
  }

  return result;
}

void AVE_PixelBuf_AppendAttr_PixelFmtByProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __CFArray *a7)
{
  v7 = 0;
  AVE_PixelFmt_GetNumOfTypes();
  operator new[]();
}

uint64_t AVE_PixelBuf_AppendAttr_IOSurface(int a1, int *a2, __CFDictionary *a3)
{
  v5 = AVE_PixelFmt_FindByType(a1);
  if (!v5)
  {
    return 4294966296;
  }

  if ((*(v5 + 6) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v7 = MEMORY[0x29EDB9010];
  v8 = MEMORY[0x29EDB9020];
  v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = CFDictionaryCreateMutable(0, 0, v7, v8);
  v11 = v10;
  if (Mutable)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v10 != 0)
  {
    v19 = *MEMORY[0x29EDBB188];
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB188], 1, v9);
    AVE_CFDict_AddSInt32(v19, 1, v11);
    v20 = MEMORY[0x29EDBB190];
    if (*a2 >= 1)
    {
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB190], *a2, v9);
    }

    v21 = a2[2];
    v22 = MEMORY[0x29EDBB198];
    if (v21 >= 1)
    {
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB198], v21, v9);
    }

    v23 = a2[4];
    if (v23 >= 1)
    {
      AVE_CFDict_AddSInt32(*v20, v23, v11);
    }

    v24 = a2[6];
    if (v24 >= 1)
    {
      AVE_CFDict_AddSInt32(*v22, v24, v11);
    }

    CFArrayAppendValue(Mutable, v9);
    CFArrayAppendValue(Mutable, v11);
    CFDictionarySetValue(a3, *MEMORY[0x29EDB9758], Mutable);
    CFRelease(v9);
    CFRelease(v11);
    CFRelease(Mutable);
    return 0;
  }

  if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v14 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_AppendAttr_IOSurface", 211, "pArray != __null && pDict0 != __null && pDict1 != __null", Mutable, v9, v11);
      v17 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", v17, 63, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", CurrTime, 63, LevelStr);
    }
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_CreateAttrDictFromProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, int a9, unsigned int a10, int a11, int a12, int *a13, __CFDictionary **a14)
{
  AVE_DevID2Type(a1);
  if (CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      AVE_PixelBuf_AppendAttr_PixelFmtByProfile(a1, a2, a3, a4, a5, a10, Mutable);
    }

    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v23 = AVE_Log_CheckConsole(0x3Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateAttrDictFromProfile", 304, "pTempArray != __null", a1, a2, a3, a4, a5, a10, 0);
        v25 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d", v25, 63, v29, "AVE_PixelBuf_CreateAttrDictFromProfile");
        return 4294966293;
      }

      v37 = a5;
      v38 = a10;
      v35 = a3;
      v36 = a4;
      v33 = a1;
      v34 = a2;
      v31 = 304;
      v32 = "pTempArray != __null";
      v30 = LevelStr;
      v26 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d";
LABEL_12:
      syslog(3, v26, CurrTime, 63, v30, "AVE_PixelBuf_CreateAttrDictFromProfile", v31, v32, v33, v34, v35, v36, v37, v38, 0);
    }
  }

  else if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v19 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(4);
    if (!v19)
    {
      v37 = a5;
      v38 = a10;
      v35 = a3;
      v36 = a4;
      v33 = a1;
      v34 = a2;
      v31 = 298;
      v32 = "pDict != __null";
      v30 = v21;
      v26 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d";
      goto LABEL_12;
    }

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d\n", CurrTime, 63, v21, "AVE_PixelBuf_CreateAttrDictFromProfile", 298, "pDict != __null", a1, a2, a3, a4, a5, a10, 0);
    v22 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d", v22, 63, v28, "AVE_PixelBuf_CreateAttrDictFromProfile");
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_CreateAttrDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned int a9, int a10, int *a11, __CFDictionary **a12)
{
  AVE_DevID2Type(a1);
  if (CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      AVE_PixelBuf_AppendAttr_PixelFmt(a1, a2, a3, a4, a9, Mutable);
    }

    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x3Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateAttrDict", 435, "pTempArray != __null", a1, a2, a3, a4, a9, 0);
        v23 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d", v23, 63, v27);
        return 4294966293;
      }

      v35 = a9;
      v33 = a3;
      v34 = a4;
      v31 = a1;
      v32 = a2;
      v29 = 435;
      v30 = "pTempArray != __null";
      v28 = LevelStr;
      v24 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d";
LABEL_12:
      syslog(3, v24, CurrTime, 63, v28, "AVE_PixelBuf_CreateAttrDict", v29, v30, v31, v32, v33, v34, v35, 0);
    }
  }

  else if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v17 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (!v17)
    {
      v35 = a9;
      v33 = a3;
      v34 = a4;
      v31 = a1;
      v32 = a2;
      v29 = 429;
      v30 = "pDict != __null";
      v28 = v19;
      v24 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d";
      goto LABEL_12;
    }

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d\n", CurrTime, 63, v19, "AVE_PixelBuf_CreateAttrDict", 429, "pDict != __null", a1, a2, a3, a4, a9, 0);
    v20 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d", v20, 63, v26);
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_CreatePool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, signed int a7, signed int a8, unsigned int a9, CVPixelBufferPoolRef *poolOut)
{
  v36 = *MEMORY[0x29EDCA608];
  pixelBufferAttributes = 0;
  memset(v35, 0, sizeof(v35));
  v32 = a8;
  v33 = a7;
  AVE_Enc_AlignDimension(a1, a2, a4, &v33, &v32);
  v18 = AVE_PixelBuf_CreateAttrDict(a1, a2, a3, a4, a5, a6, v33, v32, a9, 1, v35, &pixelBufferAttributes);
  if (v18)
  {
    v19 = v18;
    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x3Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreatePool", 557, "ret == 0", a1, a2, a3, a4, a7, a8, a9, v19);
        v23 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", v23, 63, v30, "AVE_PixelBuf_CreatePool");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreatePool");
      }
    }
  }

  else
  {
    v24 = pixelBufferAttributes;
    v19 = CVPixelBufferPoolCreate(0, 0, pixelBufferAttributes, poolOut);
    if (!v19)
    {
      goto LABEL_15;
    }

    if (!AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v19 = 4294966296;
      goto LABEL_15;
    }

    v25 = AVE_Log_CheckConsole(0x3Fu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d\n", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562, "res == kCVReturnSuccess", a1, a2, a3, a4, a7, a8, a9, v19, 0);
      v28 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v28, 63, v31, "AVE_PixelBuf_CreatePool", 562);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562);
    }

    v19 = 4294966296;
  }

  v24 = pixelBufferAttributes;
LABEL_15:
  if (v24)
  {
    CFRelease(v24);
  }

  return v19;
}

uint64_t AVE_PixelBuf_CreateSurfacePool(__CVPixelBufferPool **a1, __CVPixelBufferPool **a2, __CVPixelBufferPool **a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB96F0], a2, Mutable);
    if (v8)
    {
      v9 = v8;
      if (AVE_Log_CheckLevel(0x3Fu, 4))
      {
        v10 = AVE_Log_CheckConsole(0x3Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateSurfacePool", 603, "ret == 0", a2, a1, a2, a3, v9);
          v13 = AVE_GetCurrTime();
          v76 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", v13, 63, v76, "AVE_PixelBuf_CreateSurfacePool");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateSurfacePool");
        }
      }

LABEL_39:
      v48 = v7;
LABEL_56:
      CFRelease(v48);
      return v9;
    }

    v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!v18)
    {
      if (AVE_Log_CheckLevel(0x3Fu, 4))
      {
        v28 = AVE_Log_CheckConsole(0x3Fu);
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v29, 63, v30, "AVE_PixelBuf_CreateSurfacePool", 610, "pDictBufAttr != __null", a1, a2, a3, 0);
          v31 = AVE_GetCurrTime();
          v78 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v31, 63, v78);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v29, 63, v30);
        }
      }

      v9 = 4294966293;
      goto LABEL_39;
    }

    v19 = v18;
    v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v20)
    {
      v21 = v20;
      v22 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB128], a1, v20);
      if (v22)
      {
        v9 = v22;
        if (AVE_Log_CheckLevel(0x3Fu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x3Fu);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d\n", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool", 620, "ret == 0", a1, a1, a2, a3, v9);
            v26 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d", v26, 63, v27, "AVE_PixelBuf_CreateSurfacePool");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool");
          }
        }

        CFRelease(v21);
        goto LABEL_55;
      }

      CFDictionaryAddValue(v19, *MEMORY[0x29EDB96D0], v21);
      CFRelease(v21);
      v38 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      if (v38)
      {
        v39 = v38;
        v40 = 0;
        do
        {
          v41 = AVE_CFArray_AddSInt32(AVE_PixelBuf_AppendAttr_CacheMode(__CFArray *)::s_iaCacheMode[v40], v39);
          if (v41)
          {
            v42 = 1;
          }

          else
          {
            v42 = v40 == 5;
          }

          ++v40;
        }

        while (!v42);
        v43 = v41;
        if (v41)
        {
          if (AVE_Log_CheckLevel(0x3Fu, 4))
          {
            v44 = AVE_Log_CheckConsole(0x3Fu);
            v45 = AVE_GetCurrTime();
            v46 = AVE_Log_GetLevelStr(4);
            if (v44)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d\n", v45, 63, v46, "AVE_PixelBuf_CreateSurfacePool", 632, "ret == 0", a1, a2, a3, v43);
              v47 = AVE_GetCurrTime();
              v80 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d", v47, 63, v80);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d", v45, 63, v46);
            }
          }

          CFRelease(v39);
          goto LABEL_54;
        }

        CFDictionaryAddValue(v19, *MEMORY[0x29EDB96A0], v39);
        CFRelease(v39);
        v53 = AVE_CFDict_AddBool(*MEMORY[0x29EDB96D8], *MEMORY[0x29EDB8F00] != 0, v19);
        if (v53)
        {
          v54 = v53;
          if (!AVE_Log_CheckLevel(0x3Fu, 4))
          {
            goto LABEL_54;
          }

          v55 = AVE_Log_CheckConsole(0x3Fu);
          v56 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
          if (!v55)
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool");
            goto LABEL_54;
          }

          v58 = a1;
          printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d\n", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool", 642, "ret == 0", 1, a1, a2, a3, v54);
          v36 = AVE_GetCurrTime();
          v103 = a3;
          v106 = v54;
          v95 = v58;
          v99 = a2;
          v91 = 1;
          v85 = 642;
          v89 = "ret == 0";
          v79 = AVE_Log_GetLevelStr(4);
          v37 = "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d";
          goto LABEL_25;
        }

        v60 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB9750], 2, v19);
        v9 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB96C8], 2, v19) + v60;
        if (v9)
        {
          if (!AVE_Log_CheckLevel(0x3Fu, 4))
          {
            goto LABEL_55;
          }

          v61 = AVE_Log_CheckConsole(0x3Fu);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(4);
          if (v61)
          {
            v64 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d\n", v62, 63, v63, "AVE_PixelBuf_CreateSurfacePool", 649, "ret == 0", 2, 2, a1, a2, a3, v9);
            v65 = AVE_GetCurrTime();
            v107 = a3;
            v109 = v9;
            v101 = v64;
            v104 = a2;
            v93 = 2;
            v97 = 2;
            v87 = 649;
            v82 = AVE_Log_GetLevelStr(4);
            v66 = "%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d";
LABEL_68:
            syslog(3, v66, v65, 63, v82, "AVE_PixelBuf_CreateSurfacePool", v87, "ret == 0", v93, v97, v101, v104, v107, v109);
            goto LABEL_55;
          }

          v108 = a3;
          v109 = v9;
          v102 = a1;
          v105 = a2;
          v94 = 2;
          v98 = 2;
          v88 = 649;
          v83 = v63;
          v71 = "%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d";
        }

        else
        {
          v67 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB96E0], 875704422, v19);
          if (!v67)
          {
            v9 = CVPixelBufferPoolCreate(0, v7, v19, a3);
            if (v9)
            {
              if (AVE_Log_CheckLevel(0x3Fu, 4))
              {
                v72 = AVE_Log_CheckConsole(0x3Fu);
                v73 = AVE_GetCurrTime();
                v74 = AVE_Log_GetLevelStr(4);
                if (v72)
                {
                  printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d\n", v73, 63, v74, "AVE_PixelBuf_CreateSurfacePool", 658, "ret == kCVReturnSuccess", a1, a2, a3, v9);
                  v75 = AVE_GetCurrTime();
                  v84 = AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d", v75, 63, v84);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d", v73, 63, v74);
                }
              }

              v9 = 4294966296;
            }

            goto LABEL_55;
          }

          v9 = v67;
          if (!AVE_Log_CheckLevel(0x3Fu, 4))
          {
LABEL_55:
            CFRelease(v7);
            v48 = v19;
            goto LABEL_56;
          }

          v68 = AVE_Log_CheckConsole(0x3Fu);
          v62 = AVE_GetCurrTime();
          v69 = AVE_Log_GetLevelStr(4);
          if (v68)
          {
            v70 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d\n", v62, 63, v69, "AVE_PixelBuf_CreateSurfacePool", 653, "ret == 0", 875704422, a1, a2, a3, v9);
            v65 = AVE_GetCurrTime();
            v104 = a3;
            v107 = v9;
            v97 = v70;
            v101 = a2;
            v93 = 875704422;
            v87 = 653;
            v82 = AVE_Log_GetLevelStr(4);
            v66 = "%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d";
            goto LABEL_68;
          }

          v105 = a3;
          v108 = v9;
          v98 = a1;
          v102 = a2;
          v94 = 875704422;
          v88 = 653;
          v83 = v69;
          v71 = "%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d";
        }

        syslog(3, v71, v62, 63, v83, "AVE_PixelBuf_CreateSurfacePool", v88, "ret == 0", v94, v98, v102, v105, v108, v109);
        goto LABEL_55;
      }

      if (!AVE_Log_CheckLevel(0x3Fu, 4))
      {
        goto LABEL_54;
      }

      v50 = AVE_Log_CheckConsole(0x3Fu);
      v33 = AVE_GetCurrTime();
      v51 = AVE_Log_GetLevelStr(4);
      if (v50)
      {
        v52 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d\n", v33, 63, v51, "AVE_PixelBuf_CreateSurfacePool", 629, "pTempArray != __null", a1, a2, a3, 0);
        v36 = AVE_GetCurrTime();
        v99 = a3;
        v103 = 0;
        v91 = v52;
        v95 = a2;
        v85 = 629;
        v89 = "pTempArray != __null";
        v79 = AVE_Log_GetLevelStr(4);
        v37 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d";
        goto LABEL_25;
      }

      v100 = a3;
      v92 = a1;
      v96 = a2;
      v86 = 629;
      v90 = "pTempArray != __null";
      v81 = v51;
      v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d";
    }

    else
    {
      if (!AVE_Log_CheckLevel(0x3Fu, 4))
      {
LABEL_54:
        v9 = 4294966293;
        goto LABEL_55;
      }

      v32 = AVE_Log_CheckConsole(0x3Fu);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        v35 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v33, 63, v34, "AVE_PixelBuf_CreateSurfacePool", 615, "pTempDict != __null", a1, a2, a3, 0);
        v36 = AVE_GetCurrTime();
        v99 = a3;
        v103 = 0;
        v91 = v35;
        v95 = a2;
        v85 = 615;
        v89 = "pTempDict != __null";
        v79 = AVE_Log_GetLevelStr(4);
        v37 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d";
LABEL_25:
        syslog(3, v37, v36, 63, v79, "AVE_PixelBuf_CreateSurfacePool", v85, v89, v91, v95, v99, v103, v106);
        goto LABEL_54;
      }

      v100 = a3;
      v92 = a1;
      v96 = a2;
      v86 = 615;
      v90 = "pTempDict != __null";
      v81 = v34;
      v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d";
    }

    syslog(3, v49, v33, 63, v81, "AVE_PixelBuf_CreateSurfacePool", v86, v90, v92, v96, v100, 0);
    goto LABEL_54;
  }

  if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v14 = AVE_Log_CheckConsole(0x3Fu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v15, 63, v16, "AVE_PixelBuf_CreateSurfacePool", 598, "pDictPoolAttr != __null", a1, a2, a3, 0);
      v17 = AVE_GetCurrTime();
      v77 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v17, 63, v77);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v15, 63, v16);
    }
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_Copy(__CVBuffer *a1, __CVBuffer *a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  if (PlaneCount >= 1)
  {
    v5 = 0;
    v6 = PlaneCount & 0x7FFFFFFF;
    do
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v5);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v5);
      v9 = CVPixelBufferGetBaseAddressOfPlane(a2, v5);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v5);
      v11 = CVPixelBufferGetBytesPerRowOfPlane(a2, v5);
      if (HeightOfPlane >= 1)
      {
        if (BytesPerRowOfPlane >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = BytesPerRowOfPlane;
        }

        v13 = v12;
        v14 = v11;
        do
        {
          memcpy(v9, BaseAddressOfPlane, v13);
          BaseAddressOfPlane += BytesPerRowOfPlane;
          v9 += v14;
          --HeightOfPlane;
        }

        while (HeightOfPlane);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return 0;
}

uint64_t AVE_PixelBuf_DumpLinear(__CVBuffer *a1, _DWORD *a2, FILE *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v24 = a2[1];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v7 = extraColumnsOnRight;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v9 = extraRowsOnBottom + HeightOfPlane;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a2[3])
  {
    v11 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v21 = WidthOfPlane;
    v12 = v7;
    v13 = (extraColumnsOnRight >> (a2[4] >> 1)) + v11;
    v14 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    v15 = (extraRowsOnBottom >> (a2[5] >> 1)) + v14;
    LODWORD(v17) = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v16 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
    v22 = 2 * v13;
    v7 = v12;
    WidthOfPlane = v21;
    v17 = v17;
  }

  else
  {
    v22 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
  }

  if (v9 >= 1)
  {
    v18 = (v7 + WidthOfPlane) << (v24 == 10);
    do
    {
      fwrite(BaseAddressOfPlane, 1uLL, v18, a3);
      BaseAddressOfPlane += BytesPerRowOfPlane;
      --v9;
    }

    while (v9);
  }

  if (a2[3])
  {
    v19 = v15 < 1;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    do
    {
      fwrite(v16, 1uLL, v22 << (v24 == 10), a3);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t AVE_PixelBuf_DumpPacked(__CVBuffer *a1, int *a2, FILE *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v6 = a2[1];
  v8 = v6 + 7;
  v7 = v6 < -7;
  v9 = v6 + 14;
  if (!v7)
  {
    v9 = v8;
  }

  v10 = v9 >> 3;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v12 = extraColumnsOnRight + WidthOfPlane;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v14 = extraRowsOnBottom + HeightOfPlane;
  CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a2[3])
  {
    v15 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v16 = (extraColumnsOnRight >> (a2[4] >> 1)) + v15;
    v17 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    v18 = (extraRowsOnBottom >> (a2[5] >> 1)) + v17;
    CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  if (v12 * v10 * v14 + 2 * v10 * v16 * v18)
  {
    operator new[]();
  }

  if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v19 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_DumpPacked", 862, "frameSize != 0", a1, a2, a3);
      v22 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", v22, 63, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", CurrTime, 63, LevelStr);
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966295;
}

void AVE_PixelBuf_DumpHTPC(__CVBuffer *a1, int *a2, FILE *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  CVPixelBufferGetWidthOfPlane(a1, 0);
  CVPixelBufferGetHeightOfPlane(a1, 0);
  IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
  IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  if (a2[3])
  {
    CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
    IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  }

  operator new[]();
}

void AVE_PixelBuf_DumpInterchange(__CVBuffer *a1, int *a2, FILE *a3)
{
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraColumnsOnRight[0] = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  CVPixelBufferGetWidthOfPlane(a1, 0);
  CVPixelBufferGetHeightOfPlane(a1, 0);
  IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  IOSurfaceGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane();
  IOSurfaceGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane();
  if (a2[3])
  {
    CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
    IOSurfaceGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane();
    IOSurfaceGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane();
  }

  operator new[]();
}

uint64_t AVE_PixelBuf_Dump(CVPixelBufferRef pixelBuffer, int a2, __sFILE *a3)
{
  if (pixelBuffer && a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v7 = AVE_PixelFmt_FindByType(PixelFormatType);
    if (v7)
    {
      v8 = v7;
      v9 = *(v7 + 6);
      result = 4294966295;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          AVE_PixelBuf_DumpHTPC(pixelBuffer, v8, a3);
        }

        if (v9 == 3)
        {
          AVE_PixelBuf_DumpInterchange(pixelBuffer, v8, a3);
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {

          return AVE_PixelBuf_DumpPacked(pixelBuffer, v8, a3);
        }
      }

      else
      {
        AVE_PixelBuf_DumpLinear(pixelBuffer, v8, a3);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Fu, 4))
      {
        v15 = AVE_Log_CheckConsole(0x3Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_Dump", 1120, "pPixelFmt != __null", pixelBuffer, a2, a3, PixelFormatType);
          v18 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x", v18, 63, v20, "AVE_PixelBuf_Dump");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x", CurrTime, 63, LevelStr, "AVE_PixelBuf_Dump");
        }
      }

      return 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x3Fu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 63, v13, "AVE_PixelBuf_Dump", 1112, "pPixelBuf != __null && pFile != __null", pixelBuffer, a2, a3);
        v14 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 63, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 63, v13);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_PixelBuf_Transfer(__CVBuffer *a1, __CVBuffer *a2)
{
  pixelTransferSessionOut = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = VTPixelTransferSessionCreate(*MEMORY[0x29EDB8ED8], &pixelTransferSessionOut);
      if (v4)
      {
        v5 = v4;
        if (AVE_Log_CheckLevel(0x3Fu, 4))
        {
          v6 = AVE_Log_CheckConsole(0x3Fu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_Transfer", 2010, "ret == noErr", v5);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d", CurrTime);
        }
      }

      else
      {
        v5 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, a2);
        if (v5 && AVE_Log_CheckLevel(0x3Fu, 4))
        {
          v15 = AVE_Log_CheckConsole(0x3Fu);
          v16 = AVE_GetCurrTime();
          v17 = AVE_Log_GetLevelStr(4);
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d\n", v16, 63, v17, "AVE_PixelBuf_Transfer", 2014, "ret == noErr", v5);
            v16 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d", v16);
        }
      }

      goto LABEL_25;
    }

    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x3Fu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | pDst is NULL\n", v13, 63, v14, "AVE_PixelBuf_Transfer", 2006, "pDst != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pDst is NULL");
    }
  }

  else
  {
    if (!AVE_Log_CheckLevel(0x3Fu, 4))
    {
      return 4294966295;
    }

    v9 = AVE_Log_CheckConsole(0x3Fu);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | pSrc is NULL\n", v10, 63, v11, "AVE_PixelBuf_Transfer", 2004, "pSrc != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | pSrc is NULL");
  }

  v5 = 4294966295;
LABEL_25:
  if (pixelTransferSessionOut)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
  }

  return v5;
}

void AVE_DAL::AVE_DAL(AVE_DAL *this)
{
  *(this + 16) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

uint64_t AVE_DAL::Uninit(pthread_mutex_t **this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "Uninit", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v5 = AVE_DAL::TearDownIPC(this);
  v6 = this[6];
  if (v6)
  {
    v5 = AVE_Mutex_Destroy(v6);
    this[6] = 0;
  }

  v7 = this[1];
  if (v7)
  {
    v5 = AVE_Mutex_Destroy(v7);
    this[1] = 0;
  }

  if (v5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 6;
  }

  if (AVE_Log_CheckLevel(0x24u, v8))
  {
    v9 = AVE_Log_CheckConsole(0x24u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(v8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v10, 36, v11, "AVE_DAL", "Uninit", this, *this, v5);
      v10 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v10, 36);
  }

  return v5;
}

uint64_t AVE_DAL::Init(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "Init", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v5 = AVE_Mutex_Create();
  if (v5)
  {
    v6 = v5;
    v7 = AVE_Mutex_Create();
    if (v7)
    {
      *(this + 1) = v6;
      *(this + 6) = v7;
    }

    else if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v11 = AVE_Log_CheckConsole(0x24u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld\n", v12, 36, v13, "AVE_DAL", "Init", 102, "pThreadMutex != __null", this, *this);
        v14 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld", v14, 36, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld", v12, 36, v13);
      }
    }
  }

  else if (AVE_Log_CheckLevel(0x24u, 4))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to create mutex %p %lld\n", v9, 36, v10, "AVE_DAL", "Init", 98, "pMutex != __null", this, *this);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mutex %p %lld", v9, 36, v10);
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v15 = AVE_Log_CheckConsole(0x24u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v16, 36, v17, "AVE_DAL", "Init", this, *this, 0);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v16, 36);
  }

  return 0;
}

uint64_t AVE_DAL::TearDownIPC(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "TearDownIPC", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  AVE_DAL::DestroyRecvThread(this);
  v5 = AVE_DAL::DestroyPool(this);
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 6;
  }

  if (AVE_Log_CheckLevel(0x24u, v6))
  {
    v7 = AVE_Log_CheckConsole(0x24u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(v6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 36, v9, "AVE_DAL", "TearDownIPC", this, *this, v5);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 36);
  }

  return v5;
}

uint64_t AVE_DAL::CreatePool(AVE_DAL *this, int a2, int a3)
{
  v20 = 0;
  if (a2 < 1 || a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x24u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "CreatePool", 178, "num > 0 && size > 0", this, *this, a2, a3);
        v10 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v10, 36, v18, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", CurrTime, 36, LevelStr, "AVE_DAL");
      }
    }

    v6 = 4294966295;
  }

  else
  {
    if (*(this + 4))
    {
      return 0;
    }

    SurfaceCfg = AVE_GetSurfaceCfg(3);
    v12 = AVE_CreateUSurface(*this, 0, a3 * a2, SurfaceCfg[1], &v20);
    if (!v12)
    {
      operator new();
    }

    v6 = v12;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v13 = AVE_Log_CheckConsole(0x24u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d\n", v14, 36, v15, "AVE_DAL", "CreatePool", 190, "ret == 0", this, *this, *SurfaceCfg, SurfaceCfg[1], a2, a3, v6);
        v16 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d", v16, 36, v19, "AVE_DAL", "CreatePool", 190, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d", v14, 36, v15, "AVE_DAL", "CreatePool", 190, "ret == 0");
      }
    }
  }

  if (v20)
  {
    AVE_DestroyUSurface(v20);
  }

  return v6;
}

uint64_t AVE_DAL::DestroyPool(AVE_DAL *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = AVE_BlkPool::Destroy(v2);
    if (v3 && AVE_Log_CheckLevel(0x24u, 4))
    {
      v4 = AVE_Log_CheckConsole(0x24u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "DestroyPool", 243, this, *this, *(this + 4), v3);
        v7 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %d", v7, 36, v11, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %d", CurrTime, 36, LevelStr, "AVE_DAL");
      }
    }

    v8 = *(this + 4);
    if (v8)
    {
      AVE_BlkPool::~AVE_BlkPool(v8);
      MEMORY[0x29C24DA40]();
    }

    *(this + 4) = 0;
  }

  else
  {
    v3 = 0;
  }

  v9 = *(this + 3);
  if (v9)
  {
    v3 = AVE_DestroyUSurface(v9);
    *(this + 3) = 0;
  }

  *(this + 2) = 0;
  return v3;
}

uint64_t AVE_DAL::SetUpIPC(AVE_DAL *this, uint64_t a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetUpIPC", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d", CurrTime, 36);
  }

  if (a2 < 1 || a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v15 = AVE_Log_CheckConsole(0x24u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v16, 36, v17, "AVE_DAL", "SetUpIPC", 277, "num > 0 && size > 0", this, *this, a2, a3);
        v18 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v18, 36, v29, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v16, 36, v17, "AVE_DAL");
      }
    }

    RecvThread = 4294966295;
    goto LABEL_26;
  }

  Pool = AVE_DAL::CreatePool(this, a2, a3);
  if (Pool)
  {
    RecvThread = Pool;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v11 = AVE_Log_CheckConsole(0x24u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d\n", v12, 36, v13, "AVE_DAL", "SetUpIPC", 282, "ret == 0", this, *this, a2, a3, RecvThread);
        v14 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d", v14, 36, v28, "AVE_DAL", "SetUpIPC");
        goto LABEL_26;
      }

      v36 = a3;
      v37 = RecvThread;
      v34 = *this;
      v35 = a2;
      v33 = this;
      v32 = 282;
      v30 = v13;
      v21 = "%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d";
LABEL_25:
      syslog(3, v21, v12, 36, v30, "AVE_DAL", "SetUpIPC", v32, "ret == 0", v33, v34, v35, v36, v37);
    }
  }

  else
  {
    RecvThread = AVE_DAL::CreateRecvThread(this);
    if (!RecvThread)
    {
      v22 = 6;
      goto LABEL_27;
    }

    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v19 = AVE_Log_CheckConsole(0x24u);
      v12 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d %d\n", v12, 36, v20, "AVE_DAL", "SetUpIPC", 286, "ret == 0", this, *this, a2, a3, RecvThread);
        v12 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
      }

      v36 = a3;
      v37 = RecvThread;
      v34 = *this;
      v35 = a2;
      v33 = this;
      v32 = 286;
      v30 = v20;
      v21 = "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d %d";
      goto LABEL_25;
    }
  }

LABEL_26:
  AVE_DAL::DestroyRecvThread(this);
  AVE_DAL::DestroyPool(this);
  v22 = 4;
LABEL_27:
  if (AVE_Log_CheckLevel(0x24u, v22))
  {
    v23 = AVE_Log_CheckConsole(0x24u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(v22);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v24, 36, v25, "AVE_DAL", "SetUpIPC", this, *this, a2, a3, RecvThread);
      v26 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v22);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v26, 36, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v24, 36, v25);
    }
  }

  return RecvThread;
}

uint64_t AVE_DAL::CreateRecvThread(AVE_DAL *this)
{
  v57 = *MEMORY[0x29EDCA608];
  memset(&v56, 0, sizeof(v56));
  object = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "CreateRecvThread", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 9))
  {
    goto LABEL_7;
  }

  v52 = this;
  LODWORD(v53) = 0;
  object = voucher_copy();
  v7 = pthread_attr_init(&v56);
  if (v7)
  {
    v8 = v7;
    v6 = 4;
    if (!AVE_Log_CheckLevel(0x24u, 4))
    {
LABEL_21:
      v5 = 4294966296;
      goto LABEL_31;
    }

    v9 = AVE_Log_CheckConsole(0x24u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d\n", v10, 36, v11, "AVE_DAL", "CreateRecvThread", 1635, "res == 0", this, *this, v8, 0);
      v12 = AVE_GetCurrTime();
      v6 = 4;
      v49 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d", v12, 36, v49, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d", v10, 36, v11, "AVE_DAL");
    goto LABEL_29;
  }

  v13 = pthread_attr_getschedparam(&v56, &v55);
  if (v13)
  {
    v14 = v13;
    v6 = 4;
    if (!AVE_Log_CheckLevel(0x24u, 4))
    {
      goto LABEL_21;
    }

    v15 = AVE_Log_CheckConsole(0x24u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d\n", v16, 36, v17, "AVE_DAL", "CreateRecvThread", 1639, "res == 0", this, *this, v14, 0);
      v18 = AVE_GetCurrTime();
      v6 = 4;
      v50 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d", v18, 36, v50, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d", v16, 36, v17, "AVE_DAL");
    goto LABEL_29;
  }

  v55.sched_priority = 47;
  v19 = pthread_attr_setschedparam(&v56, &v55);
  if (v19)
  {
    v20 = v19;
    v6 = 4;
    if (!AVE_Log_CheckLevel(0x24u, 4))
    {
      goto LABEL_21;
    }

    v21 = AVE_Log_CheckConsole(0x24u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d\n", v22, 36, v23, "AVE_DAL", "CreateRecvThread", 1645, "res == 0", this, *this, v20, 0);
      v24 = AVE_GetCurrTime();
      v6 = 4;
      v51 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d", v24, 36, v51, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d", v22, 36, v23, "AVE_DAL");
LABEL_29:
    v5 = 4294966296;
LABEL_30:
    v6 = 4;
    goto LABEL_31;
  }

  v25 = pthread_create(this + 9, &v56, AVE_DAL::RecvThread, &v52);
  if (v25)
  {
    v26 = v25;
    v6 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v27 = AVE_Log_CheckConsole(0x24u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      v30 = *this;
      if (!v27)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d", v28, 36, v29, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", this, v30, v26, 0);
        v5 = 4294966292;
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d\n", v28, 36, v29, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", this, v30, v26, 0);
      v31 = AVE_GetCurrTime();
      v6 = 4;
      v32 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d", v31, 36, v32, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", this, *this, v26, 0);
    }

    v5 = 4294966292;
    goto LABEL_31;
  }

  if (v53)
  {
    v37 = 0;
  }

  else
  {
    v38 = 0;
    do
    {
      v37 = v38 + 1;
      HIDWORD(v39) = 652835029 * (v38 + 1);
      LODWORD(v39) = HIDWORD(v39);
      if ((v39 >> 2) <= 0x83126E && AVE_Log_CheckLevel(0x24u, 5))
      {
        v40 = AVE_Log_CheckConsole(0x24u);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(5);
        if (v40)
        {
          printf("%lld %d AVE %s: %s::%s:%d long thread creation time %p %lld %d\n", v41, 36, v42, "AVE_DAL", "CreateRecvThread", 1658, this, *this, v38 + 1);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(5);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d long thread creation time %p %lld %d", v41, 36, v42, "AVE_DAL", "CreateRecvThread", 1658, this, *this, v38 + 1);
      }

      usleep(0x3E8u);
      if (v38 > 0xBB6)
      {
        break;
      }

      ++v38;
    }

    while (!v53);
  }

  if (v53)
  {
LABEL_7:
    v5 = 0;
    v6 = 6;
    goto LABEL_31;
  }

  v6 = 4;
  if (AVE_Log_CheckLevel(0x24u, 4))
  {
    v43 = AVE_Log_CheckConsole(0x24u);
    v44 = AVE_GetCurrTime();
    v45 = AVE_Log_GetLevelStr(4);
    v46 = *this;
    if (!v43)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d", v44, 36, v45, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", this, v46, v37, 0);
      v5 = 4294966279;
      goto LABEL_30;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d\n", v44, 36, v45, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", this, v46, v37, 0);
    v47 = AVE_GetCurrTime();
    v6 = 4;
    v48 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d", v47, 36, v48, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", this, *this, v37, 0);
  }

  v5 = 4294966279;
LABEL_31:
  if (object != -1)
  {
    os_release(object);
  }

  pthread_attr_destroy(&v56);
  if (AVE_Log_CheckLevel(0x24u, v6))
  {
    v33 = AVE_Log_CheckConsole(0x24u);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(v6);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v34, 36, v35, "AVE_DAL", "CreateRecvThread", this, *this, v5);
      v34 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v34, 36);
  }

  return v5;
}

uint64_t AVE_DAL::DestroyRecvThread(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "DestroyRecvThread", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 9))
  {
    AVE_DAL::TerminateRunLoop(this);
    pthread_join(*(this + 9), 0);
    *(this + 9) = 0;
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v5 = AVE_Log_CheckConsole(0x24u);
    v6 = AVE_GetCurrTime();
    v7 = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v6, 36, v7, "AVE_DAL", "DestroyRecvThread", this, *this, 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v6, 36);
  }

  return 0;
}

uint64_t AVE_DAL::SetCallback(AVE_DAL *this, int (*a2)(void *, int, int, int, int), void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetCallback", this, *this, *(this + 5), a2, a3);
      v9 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v23, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = 0;
    *(this + 15) = a2;
    *(this + 16) = a3;
    v11 = 6;
    goto LABEL_13;
  }

  v11 = 4;
  if (!AVE_Log_CheckLevel(0x24u, 4))
  {
    goto LABEL_11;
  }

  v12 = AVE_Log_CheckConsole(0x24u);
  v13 = AVE_GetCurrTime();
  v14 = AVE_Log_GetLevelStr(4);
  v15 = *this;
  if (v12)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v13, 36, v14, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", this, v15, a2, a3);
    v16 = AVE_GetCurrTime();
    v11 = 4;
    v17 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v16, 36, v17, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", this, *this, a2, a3);
LABEL_11:
    v10 = 4294966295;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v13, 36, v14, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", this, v15, a2, a3);
  v10 = 4294966295;
  v11 = 4;
LABEL_13:
  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v18 = AVE_Log_CheckConsole(0x24u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(v11);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v19, 36, v20, "AVE_DAL", "SetCallback", this, *this, *(this + 5), a2, a3, v10);
      v21 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v21, 36, v24, "AVE_DAL", "SetCallback");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v19, 36, v20, "AVE_DAL", "SetCallback");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UpdatePriorityPolicy(AVE_DAL *this, int a2, int a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "UpdatePriorityPolicy", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d", CurrTime, 36);
  }

  if ((a3 | a2) < 0)
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x24u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      v17 = *this;
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v15, 36, v16, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", this, v17, a2, a3);
        v12 = 4294966295;
        v13 = 4;
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v15, 36, v16, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", this, v17, a2, a3);
      v18 = AVE_GetCurrTime();
      v13 = 4;
      v19 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v18, 36, v19, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", this, *this, a2, a3);
    }

    v12 = 4294966295;
    goto LABEL_25;
  }

  AVE_Mutex_Lock(*(this + 6));
  if (a3 <= 59)
  {
    v9 = 33;
  }

  else
  {
    v9 = 15;
  }

  if (a3 <= 119)
  {
    v10 = v9;
  }

  else
  {
    v10 = 8;
  }

  if (a3 <= 239)
  {
    v11 = v10;
  }

  else
  {
    v11 = 4;
  }

  if (v11 != *(this + 15) || *(this + 14) != a2)
  {
    *(this + 14) = a2;
    *(this + 15) = v11;
    ++*(this + 16);
  }

  AVE_Mutex_Unlock(*(this + 6));
  v12 = 0;
  v13 = 6;
LABEL_25:
  if (AVE_Log_CheckLevel(0x24u, v13))
  {
    v20 = AVE_Log_CheckConsole(0x24u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(v13);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v21, 36, v22, "AVE_DAL", "UpdatePriorityPolicy", this, *this, a2, a3, v12);
      v23 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v23, 36, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v21, 36, v22);
    }
  }

  return v12;
}

uint64_t AVE_DAL::UCCreate(uint64_t *a1, uint32_t a2)
{
  v26 = 0;
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v4 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCCreate", a1, *a1, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d", CurrTime, 36);
  }

  if (a2 - 1 >= 5)
  {
    v8 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v15 = AVE_Log_CheckConsole(0x24u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d\n", v16, 36, v17, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
        v18 = AVE_GetCurrTime();
        v8 = 4;
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d", v18, 36, v19, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d", v16, 36, v17, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
        v8 = 4;
      }
    }

    v7 = 4294966295;
  }

  else
  {
    v7 = AVE_UC_Create(a2, &v26);
    if (v7)
    {
      v8 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v9 = AVE_Log_CheckConsole(0x24u);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        v12 = *a1;
        if (v9)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d\n", v10, 36, v11, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, v12, a2, v7);
          v13 = AVE_GetCurrTime();
          v8 = 4;
          v14 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d", v13, 36, v14, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, *a1, a2, v7);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d", v10, 36, v11, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, v12, a2, v7);
          v8 = 4;
        }
      }
    }

    else
    {
      a1[5] = v26;
      v8 = 6;
    }
  }

  if (AVE_Log_CheckLevel(0x24u, v8))
  {
    v20 = AVE_Log_CheckConsole(0x24u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(v8);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v21, 36, v22, "AVE_DAL", "UCCreate", a1, *a1, a2, a1[5], v7);
      v23 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(v8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v23, 36, v25, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v21, 36, v22, "AVE_DAL");
    }
  }

  return v7;
}

uint64_t AVE_DAL::UCDestroy(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCDestroy", this, *this, *(this + 5));
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", CurrTime, 36);
  }

  v5 = *(this + 5);
  if (v5 && (v6 = AVE_UC_Destroy(v5), *(this + 5) = 0, v6))
  {
    v7 = v6;
    v8 = 4;
  }

  else
  {
    v7 = 0;
    v8 = 6;
  }

  if (AVE_Log_CheckLevel(0x24u, v8))
  {
    v9 = AVE_Log_CheckConsole(0x24u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(v8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v10, 36, v11, "AVE_DAL", "UCDestroy", this, *this, *(this + 5), v7);
      v12 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(v8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v12, 36, v14);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v10, 36, v11);
    }
  }

  return v7;
}

uint64_t AVE_DAL::UCOpen(const void **a1, char *a2, const void **a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCOpen", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v30, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    AVE_StrNCpy(a2 + 40, "905.5.3", 16);
    v10 = AVE_DW_Get();
    memcpy(a2 + 56, v10, 0x650uLL);
    *(a2 + 209) = 0;
    AVE_Log_Load(a2 + 209, (a2 + 1680));
    v11 = AVE_UC_Open(a1[5], a2, a3);
    if (v11)
    {
      v12 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v13 = AVE_Log_CheckConsole(0x24u);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        v16 = *a1;
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d\n", v14, 36, v15, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, v16, a2, a3, v11);
          v17 = AVE_GetCurrTime();
          v12 = 4;
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d", v17, 36, v18, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, *a1, a2, a3, v11);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d", v14, 36, v15, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, v16, a2, a3, v11);
          v12 = 4;
        }
      }
    }

    else
    {
      *a1 = *a3;
      v12 = 6;
    }
  }

  else
  {
    v12 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v19 = AVE_Log_CheckConsole(0x24u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      v22 = *a1;
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v20, 36, v21, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, v22, a2, a3);
        v23 = AVE_GetCurrTime();
        v12 = 4;
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v23, 36, v24, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v20, 36, v21, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, v22, a2, a3);
        v12 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v12))
  {
    v25 = AVE_Log_CheckConsole(0x24u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(v12);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v26, 36, v27, "AVE_DAL", "UCOpen", a1, *a1, a1[5], a2, a3, v11);
      v28 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v28, 36, v31, "AVE_DAL", "UCOpen");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v26, 36, v27, "AVE_DAL", "UCOpen");
    }
  }

  return v11;
}

uint64_t AVE_DAL::UCClose(const void **a1, void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCClose", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Close(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCClose", 758, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCClose", 758, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCClose", 758, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCClose", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCClose");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCClose");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UCPrepare(const void **a1, void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCPrepare", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Prepare(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCPrepare", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCPrepare");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCPrepare");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UCStart(uint64_t *a1, _DWORD *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCStart", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    a2[10] = AVE_USurface::GetID(a1[3]);
    v10 = AVE_UC_Start(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCStart", 833, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCStart", 833, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCStart", 833, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      a2[10] = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCStart", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCStart");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCStart");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UCStop(const void **a1, void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCStop", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Stop(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCStop", 873, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCStop", 873, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCStop", 873, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCStop", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCStop");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCStop");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UCReset(const void **a1, void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCReset", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Reset(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCReset", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCReset");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCReset");
    }
  }

  return v10;
}

uint64_t AVE_DAL::AdjustThreadPolicy(AVE_DAL *this, int a2, int a3)
{
  if (a2)
  {
    result = setpriority(3, 0, 4096);
    if (result)
    {
      v7 = result;
      result = AVE_Log_CheckLevel(0x24u, 5);
      if (result)
      {
        v8 = AVE_Log_CheckConsole(0x24u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(5);
        if (v8)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "AdjustThreadPolicy", 1254, this, *this, a2, a3, v7, 0);
          v11 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v11, 36, v33, "AVE_DAL");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", CurrTime, 36, LevelStr, "AVE_DAL");
        }

        return 0;
      }
    }
  }

  else
  {
    info = 0;
    mach_timebase_info(&info);
    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = 33;
    }

    LODWORD(v13) = info.numer;
    LODWORD(v12) = info.denom;
    __asm { FMOV            V2.2D, #3.0 }

    _Q2.f64[0] = v14;
    *policy_info = vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(_Q2, v12 / v13 * 1000000.0)));
    v37 = policy_info[0];
    v38 = 1;
    v20 = setpriority(3, 0, 0);
    if (v20)
    {
      v21 = v20;
      if (AVE_Log_CheckLevel(0x24u, 5))
      {
        v22 = AVE_Log_CheckConsole(0x24u);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(5);
        if (v22)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d\n", v23, 36, v24, "AVE_DAL", "AdjustThreadPolicy", 1238, this, *this, 0, v14, v21, 0);
          v25 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v25, 36, v34, "AVE_DAL");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v23, 36, v24, "AVE_DAL");
        }
      }
    }

    v26 = pthread_self();
    v27 = pthread_mach_thread_np(v26);
    result = thread_policy_set(v27, 2u, policy_info, 4u);
    if (result)
    {
      v28 = result;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v29 = AVE_Log_CheckConsole(0x24u);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d\n", v30, 36, v31, "AVE_DAL", "AdjustThreadPolicy", 1246, "res == 0", this, *this, 0, v14, v28, 0);
          v32 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d", v32, 36, v35, "AVE_DAL", "AdjustThreadPolicy");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d", v30, 36, v31, "AVE_DAL", "AdjustThreadPolicy");
        }
      }

      return 4294966296;
    }
  }

  return result;
}

uint64_t AVE_DAL::AddRunLoopSource(AVE_DAL *this)
{
  recvPort = 0;
  memset(&context, 0, sizeof(context));
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "AddRunLoopSource", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v5 = IOCreateReceivePort(0x39u, &recvPort);
  if (v5)
  {
    v6 = v5;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x24u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d\n", v8, 36, v9, "AVE_DAL", "AddRunLoopSource", 1318, "res == 0", this, *this, v6, 0);
        v10 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d", v10, 36, v24, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d", v8, 36, v9, "AVE_DAL");
      }
    }

    v14 = 4294966292;
  }

  else
  {
    context.version = 1;
    context.info = this;
    memset(&context.retain, 0, 24);
    v11 = CFMachPortCreateWithPort(0, recvPort, MEMORY[0x29EDBB0D0], &context, 0);
    if (v11)
    {
      v12 = v11;
      RunLoopSource = CFMachPortCreateRunLoopSource(0, v11, 0);
      CFRunLoopAddSource(*(this + 10), RunLoopSource, *MEMORY[0x29EDB8FC0]);
      v14 = 0;
      *(this + 22) = recvPort;
      *(this + 12) = v12;
      *(this + 13) = RunLoopSource;
      v15 = 7;
      goto LABEL_17;
    }

    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v20 = AVE_Log_CheckConsole(0x24u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d\n", v21, 36, v22, "AVE_DAL", "AddRunLoopSource", 1332, "pAsyncPort != __null", this, *this, recvPort, 0);
        v23 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d", v23, 36, v25, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d", v21, 36, v22, "AVE_DAL");
      }
    }

    v14 = 4294966293;
  }

  if (recvPort)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], recvPort, 1u, -1);
    recvPort = 0;
  }

  v15 = 4;
LABEL_17:
  if (AVE_Log_CheckLevel(0x24u, v15))
  {
    v16 = AVE_Log_CheckConsole(0x24u);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(v15);
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v17, 36, v18, "AVE_DAL", "AddRunLoopSource", this, *this, v14);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v15);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v17, 36);
  }

  return v14;
}

uint64_t AVE_DAL::DelRunLoopSource(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "DelRunLoopSource", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v5 = *(this + 13);
  if (v5)
  {
    CFRunLoopRemoveSource(*(this + 10), v5, *MEMORY[0x29EDB8FC0]);
    CFRelease(*(this + 13));
    *(this + 13) = 0;
  }

  v6 = *(this + 12);
  if (v6)
  {
    CFMachPortInvalidate(v6);
    CFRelease(*(this + 12));
    *(this + 12) = 0;
  }

  v7 = *(this + 22);
  if (v7)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], v7, 1u, -1);
    *(this + 22) = 0;
  }

  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v9, 36, v10, "AVE_DAL", "DelRunLoopSource", this, *this, 0);
      v9 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v9, 36);
  }

  return 0;
}

uint64_t AVE_DAL::SetUpRunLoop(AVE_DAL *this)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetUpRunLoop", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 10))
  {
    v5 = 0;
LABEL_8:
    v6 = 6;
    goto LABEL_30;
  }

  Current = CFRunLoopGetCurrent();
  *(this + 10) = Current;
  if (!Current)
  {
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v13 = AVE_Log_CheckConsole(0x24u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d\n", v14, 36, v15, "AVE_DAL", "SetUpRunLoop", 1439, "m_pcRunLoop != __null", this, *this, 0);
        v16 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d", v16, 36, v26, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d", v14, 36, v15, "AVE_DAL");
      }
    }

    v5 = 4294966296;
    goto LABEL_27;
  }

  CFRetain(Current);
  v8 = AVE_DAL::AddRunLoopSource(this);
  if (v8)
  {
    v5 = v8;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v9 = AVE_Log_CheckConsole(0x24u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d\n", v10, 36, v11, "AVE_DAL", "SetUpRunLoop", 1445, "ret == 0", this, *this, v5);
        v12 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d", v12, 36, v25, "AVE_DAL");
        goto LABEL_27;
      }

      v31 = *this;
      v32 = v5;
      v30 = this;
      v29 = 1445;
      v28 = v11;
      v20 = "%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d";
LABEL_26:
      syslog(3, v20, v10, 36, v28, "AVE_DAL", "SetUpRunLoop", v29, "ret == 0", v30, v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  else
  {
    *&v35 = *this;
    *(&v37 + 1) = AVE_DAL::UCRecv;
    v38 = this;
    v5 = AVE_UC_Config(*(this + 5), *(this + 22), &v35, &v33);
    if (!v5)
    {
      *(this + 28) = 1;
      goto LABEL_8;
    }

    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v10 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d\n", v10, 36, v18, "AVE_DAL", "SetUpRunLoop", 1453, "ret == 0", this, *this, v5);
        v19 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d", v19, 36, v27, "AVE_DAL");
        goto LABEL_27;
      }

      v31 = *this;
      v32 = v5;
      v30 = this;
      v29 = 1453;
      v28 = v18;
      v20 = "%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d";
      goto LABEL_26;
    }
  }

LABEL_27:
  if (*(this + 10))
  {
    AVE_DAL::DelRunLoopSource(this);
    CFRelease(*(this + 10));
    *(this + 10) = 0;
  }

  v6 = 4;
LABEL_30:
  if (AVE_Log_CheckLevel(0x24u, v6))
  {
    v21 = AVE_Log_CheckConsole(0x24u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(v6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v22, 36, v23, "AVE_DAL", "SetUpRunLoop", this, *this, v5);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v22, 36);
  }

  return v5;
}

uint64_t AVE_DAL::TearDownRunLoop(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "TearDownRunLoop", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 10))
  {
    *(this + 28) = 0;
    AVE_DAL::DelRunLoopSource(this);
    CFRelease(*(this + 10));
    *(this + 10) = 0;
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v5 = AVE_Log_CheckConsole(0x24u);
    v6 = AVE_GetCurrTime();
    v7 = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v6, 36, v7, "AVE_DAL", "TearDownRunLoop", this, *this, 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v6, 36);
  }

  return 0;
}

uint64_t AVE_DAL::TerminateRunLoop(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "TerminateRunLoop", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v5 = *(this + 10);
  if (v5)
  {
    CFRunLoopStop(v5);
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v7, 36, v8, "AVE_DAL", "TerminateRunLoop", this, *this, 0);
      v7 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v7, 36);
  }

  return 0;
}

void AVE_DAL::RecvThread(AVE_DAL *this, void *a2)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v3 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "RecvThread", this);
      v6 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v6, 36, v33, "AVE_DAL", "RecvThread", this);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", CurrTime, 36, LevelStr, "AVE_DAL", "RecvThread", this);
    }
  }

  if (this)
  {
    v13 = *this;
    if (*this)
    {
      os_retain(*(this + 2));
      v19 = voucher_adopt();
      pthread_setname_np("AVE_UCRecv");
      v20 = AVE_DAL::AdjustThreadPolicy(v13, 0, 0);
      if (v20)
      {
        v21 = v20;
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v22 = AVE_Log_CheckConsole(0x24u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v23, 36, v24, "AVE_DAL", "RecvThread", 1572, "ret == 0", v13, *v13, v21);
            v23 = AVE_GetCurrTime();
            v24 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v23, 36, v24, "AVE_DAL");
        }
      }

      else
      {
        v21 = AVE_DAL::SetUpRunLoop(v13);
        if (v21)
        {
          if (AVE_Log_CheckLevel(0x24u, 4))
          {
            v25 = AVE_Log_CheckConsole(0x24u);
            v26 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            if (v25)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d\n", v26, 36, v27, "AVE_DAL", "RecvThread", 1576, "ret == 0", v13, *v13, v21);
              v28 = AVE_GetCurrTime();
              v34 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d", v28, 36, v34, "AVE_DAL");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d", v26, 36, v27, "AVE_DAL");
            }
          }
        }

        else
        {
          *(this + 2) = 1;
          CFRunLoopRun();
          AVE_DAL::TearDownRunLoop(v13);
        }
      }

      if (v19 != -1)
      {
        v29 = voucher_adopt();
        os_release(v29);
      }

      if (v21)
      {
        v7 = 4;
      }

      else
      {
        v7 = 7;
      }
    }

    else
    {
      v7 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v14 = AVE_Log_CheckConsole(0x24u);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong class %p\n", v15, 36, v16, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v17 = AVE_GetCurrTime();
          v7 = 4;
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v17, 36, v18, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v15, 36, v16, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v7 = 4;
        }
      }

      v21 = -1015;
    }
  }

  else
  {
    v7 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x24u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p\n", v9, 36, v10, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v11 = AVE_GetCurrTime();
        v7 = 4;
        v12 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v11, 36, v12, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v9, 36, v10, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v7 = 4;
      }
    }

    v21 = -1001;
  }

  if (AVE_Log_CheckLevel(0x24u, v7))
  {
    v30 = AVE_Log_CheckConsole(0x24u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(v7);
    if (v30)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v31, 36, v32, "AVE_DAL", "RecvThread", this, v21);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v31, 36, v32, "AVE_DAL", "RecvThread", this, v21);
  }

  pthread_exit(0);
}

void *AVE_DLList_Init_Node(void *result, uint64_t a2)
{
  if (!result)
  {
    AVE_DLList_Init_Node_cold_1();
  }

  *result = result;
  result[1] = result;
  result[2] = 0;
  return result;
}

uint64_t AVE_DLList_Init(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    AVE_DLList_Init_cold_1();
  }

  *result = result;
  *(result + 8) = result;
  *(result + 24) = 0;
  *(result + 16) = result;
  return result;
}

uint64_t AVE_DLList_Prev(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    AVE_DLList_Prev_cold_1();
  }

  return *a1;
}

uint64_t AVE_DLList_Next(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    AVE_DLList_Next_cold_1();
  }

  return *(a1 + 8);
}

uint64_t AVE_DLList_Back(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Back_cold_1();
  }

  if (AVE_DLList_Empty(a1))
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

BOOL AVE_DLList_PopBack(void **a1)
{
  if (!a1)
  {
    AVE_DLList_PopBack_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_PopBack_cold_2();
  }

  if (!a1[1])
  {
    AVE_DLList_PopBack_cold_1();
  }

  result = AVE_DLList_Empty(a1);
  if (!result)
  {
    v3 = *a1;
    v4 = **a1;
    *a1 = v4;
    v4[1] = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 6);
  }

  return result;
}

uint64_t AVE_DLList_REnd(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    AVE_DLList_REnd_cold_1();
  }

  return result;
}

uint64_t AVE_DLB_ParseCfg(char *a1, int *a2)
{
  if (!a1)
  {
    return 4294966288;
  }

  v3 = a1;
  v4 = 0;
  v5 = a2 + 2;
  v6 = 0xFFFFFFFFLL;
  v7 = a2 + 2;
  while (1)
  {
    result = *v3;
    if (*v3 <= 0x53u)
    {
      if (*v3 <= 0x4Cu)
      {
        if (*v3 <= 0x43u)
        {
          if (result == 32)
          {
            goto LABEL_59;
          }

          if (!*v3)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (result == 68)
          {
            goto LABEL_31;
          }

          if (result == 71)
          {
LABEL_32:
            v4 = 4;
            goto LABEL_59;
          }
        }
      }

      else if (*v3 > 0x4Fu)
      {
        if (result == 80)
        {
          goto LABEL_34;
        }

        if (result == 83)
        {
LABEL_30:
          v4 = 6;
          goto LABEL_59;
        }
      }

      else
      {
        if (result == 77)
        {
          goto LABEL_24;
        }

        if (result == 78)
        {
LABEL_33:
          v4 = 3;
          goto LABEL_59;
        }
      }
    }

    else if (*v3 > 0x6Du)
    {
      if (*v3 > 0x72u)
      {
        if (result == 115)
        {
          goto LABEL_30;
        }

        if (result == 116)
        {
LABEL_27:
          v4 = 1;
          goto LABEL_59;
        }
      }

      else
      {
        if (result == 110)
        {
          goto LABEL_33;
        }

        if (result == 112)
        {
LABEL_34:
          v4 = 5;
          goto LABEL_59;
        }
      }
    }

    else if (*v3 > 0x66u)
    {
      if (result == 103)
      {
        goto LABEL_32;
      }

      if (result == 109)
      {
LABEL_24:
        v4 = 2;
        goto LABEL_59;
      }
    }

    else
    {
      if (result == 84)
      {
        goto LABEL_27;
      }

      if (result == 100)
      {
LABEL_31:
        v4 = 0;
        goto LABEL_59;
      }
    }

    if ((result - 48) > 9)
    {
      result = 4294966296;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      return 4294966288;
    }

    v9 = atoi(v3);
    v10 = v9;
    if (v4 <= 1)
    {
      if (v4)
      {
        v10 = v6 & ~(v6 >> 31);
        *v7 = v9 != 0;
        goto LABEL_57;
      }

      if (v9 > 5)
      {
        result = 4294966290;
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

        return 4294966288;
      }

      v7 = &v5[12 * v9];
    }

    else
    {
      switch(v4)
      {
        case 2:
          v10 = v6 & ~(v6 >> 31);
          v7[1] = v9 != 0;
          break;
        case 3:
          if ((v9 - 5) < 0xFFFFFFFC)
          {
LABEL_67:
            result = 4294966278;
LABEL_68:
            if ((v6 & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            return 4294966288;
          }

          v7[2] = v9;
          v10 = v6 & ~(v6 >> 31);
          break;
        case 4:
          if (v9 > 3)
          {
            goto LABEL_67;
          }

          v11 = v7[3];
          v12 = &v7[2 * v11];
          v12[4] = v9;
          v12[5] = 1;
          v7[3] = v11 + 1;
          v10 = v6 & ~(v6 >> 31);
          break;
        default:
          v13 = v7[3];
          if (v13 < 1)
          {
LABEL_61:
            result = 4294966274;
            if ((v6 & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            return 4294966288;
          }

          v14 = v7 + 5;
          while (*(v14 - 1) != v9)
          {
            v14 += 2;
            if (!--v13)
            {
              goto LABEL_61;
            }
          }

          *v14 = v4 != 5;
          v10 = v6;
          break;
      }
    }

LABEL_57:
    result = strchr(v3, 32);
    if (!result)
    {
      break;
    }

    v3 = result;
    v6 = v10;
LABEL_59:
    ++v3;
  }

  LODWORD(v6) = v10;
  if ((v10 & 0x80000000) != 0)
  {
    return 4294966288;
  }

LABEL_69:
  v15 = *a2;
  if (*a2 <= v6 + 1)
  {
    v15 = v6 + 1;
  }

  *a2 = v15;
  return result;
}

uint64_t AVE_ISP_RetrieveMetadata(CFDictionaryRef theDict, double *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v19 = 0;
  *v20 = 0u;
  v21 = 0u;
  if (theDict && a2)
  {
    a2[10] = 0.0;
    *a2 = 0uLL;
    *(a2 + 4) = 0uLL;
    *(a2 + 3) = 0uLL;
    *(a2 + 2) = 0uLL;
    *(a2 + 1) = 0uLL;
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC06B0], a2);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC0618], a2 + 1);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC04D0], a2 + 2);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC0368], a2 + 3);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC0758], a2 + 4);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC0770], a2 + 5);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC0760], a2 + 6);
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDC06E0], a2 + 16);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC06B8], a2 + 7);
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDC05C0], a2 + 17);
    if (AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDC0728], a2 + 18) == -1008)
    {
      *(a2 + 18) = -1;
    }

    Bool = AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDC0730], &v19);
    v5 = v19;
    if (Bool == -1008)
    {
      v5 = -1;
    }

    *(a2 + 19) = v5;
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDC0630]);
    if (Value)
    {
      Str = AVE_CFStr_GetStr(Value, v20, 0x20u);
      if (Str)
      {
        v8 = Str;
        v9 = &dword_29EDCC0B0;
        v10 = 5;
        while (strcmp(v8, *(v9 - 1)))
        {
          v9 += 4;
          if (!--v10)
          {
            v11 = 0;
            goto LABEL_21;
          }
        }

        v11 = *v9;
LABEL_21:
        *(a2 + 20) = v11;
        if (AVE_Log_CheckLevel(0x37u, 6))
        {
          v16 = AVE_Log_CheckConsole(0x37u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(6);
          if (v16)
          {
            printf("%lld %d AVE %s: %s:%d SF: %f Port: %s %d\n", CurrTime, 55, LevelStr, "AVE_ISP_RetrieveMetadata", 120, a2[7], v8, v11);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
          }

          syslog(3, "%lld %d AVE %s: %s:%d SF: %f Port: %s %d", CurrTime);
        }
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x37u, 4))
    {
      v12 = AVE_Log_CheckConsole(0x37u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 55, v14, "AVE_ISP_RetrieveMetadata", 73, "pDict != __null && pData != __null", theDict, a2);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 55);
    }

    return 4294966295;
  }

  return Bool;
}

uint64_t AVE_ISP_CheckMetadata(__CVBuffer *a1)
{
  if (a1)
  {
    v1 = AVE_ISP_CopyCFMetadata(a1);
    v2 = 4294966288;
    if (v1)
    {
      v3 = v1;
      if (CFDictionaryContainsKey(v1, *MEMORY[0x29EDC06E0]))
      {
        v2 = 0;
      }

      else
      {
        v2 = 4294966288;
      }

      CFRelease(v3);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x37u, 4))
    {
      v4 = AVE_Log_CheckConsole(0x37u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", CurrTime, 55, LevelStr, "AVE_ISP_CheckMetadata", 206, "pImgBuf != __null", 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", CurrTime);
    }

    return 4294966295;
  }

  return v2;
}

const void *AVE_ISP_CopyCFMetadata(__CVBuffer *a1)
{
  v1 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, *MEMORY[0x29EDBFF98]);
  v4 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v2);
  return v4;
}

uint64_t AVE_ISP_GetMetadata(__CVBuffer *a1, double *a2)
{
  if (a1 && a2)
  {
    v4 = AVE_ISP_CopyCFMetadata(a1);
    if (v4)
    {
      v5 = v4;
      Metadata = AVE_ISP_RetrieveMetadata(v4, a2);
      CFRelease(v5);
      return Metadata;
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x37u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x37u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 55, LevelStr, "AVE_ISP_GetMetadata", 240, "pImgBuf != __null && pData != __null", a1, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 55);
    }

    return 4294966295;
  }
}

uint64_t AVE_Log_UpdateConf(unsigned int a1, int a2)
{
  if (a1 > 0xFF)
  {
    return 4294966295;
  }

  if (a2)
  {
    v4 = a2;
    v5 = a1;
    v6 = a2;
  }

  else
  {
    v4 = 0;
    v5 = a1;
    v6 = *(&gs_sAVE_Log_Default + a1);
  }

  gs_sAVE_Log[v5] = v6;
  if ((byte_2A189AC78 & 0xFu) >= 7)
  {
    v7 = byte_2A189AC78;
    CurrTime = AVE_GetCurrTime();
    if ((v7 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %d 0x%x\n", CurrTime, 64, "VERB", "AVE_Log_UpdateConf", 116, a1, v4);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %d 0x%x", CurrTime, 64, "VERB", "AVE_Log_UpdateConf", 116, a1, v4);
  }

  return 0;
}

uint64_t AVE_Log_CheckConsole(unsigned int a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 <= 0xFF)
  {
    return (gs_sAVE_Log[a1] >> 4) & 1;
  }

  return 0;
}

void *AVE_Log_GetLevelStr(int a1)
{
  if (a1 >= 0)
  {
    LOBYTE(v1) = a1;
  }

  else
  {
    v1 = -a1;
  }

  v2 = v1 & 0xF;
  if (v2 > 8)
  {
    return &unk_2954B8F4E;
  }

  else
  {
    return *(&gsc_piaAVE_Log_LevelStr + v2);
  }
}

uint64_t AVE_Log_Init(void)
{
  if (!gs_iAVE_Timestamp)
  {
    *&v0 = 0x505050505050505;
    *(&v0 + 1) = 0x505050505050505;
    xmmword_2A189AB50 = v0;
    unk_2A189AB60 = v0;
    xmmword_2A189AC10 = v0;
    unk_2A189AC20 = v0;
    xmmword_2A189ABF0 = v0;
    unk_2A189AC00 = v0;
    xmmword_2A189ABD0 = v0;
    unk_2A189ABE0 = v0;
    xmmword_2A189ABB0 = v0;
    unk_2A189ABC0 = v0;
    xmmword_2A189AB90 = v0;
    unk_2A189ABA0 = v0;
    xmmword_2A189AB70 = v0;
    unk_2A189AB80 = v0;
    gs_sAVE_Log_Default = v0;
    unk_2A189AB40 = v0;
    BYTE4(gs_sAVE_Log_Default) = 6;
    BYTE12(xmmword_2A189AB50) = 6;
    byte_2A189AB6D = 6;
    *(&gs_sAVE_Log_Default + 11) = 1542;
    BYTE5(xmmword_2A189AB90) = 6;
    BYTE1(xmmword_2A189AB70) = 6;
    dword_2A189AC34 = 20000;
    dword_2A189AC30 = 25;
    AVE_MemCpyV2V(gs_sAVE_Log, &gs_sAVE_Log_Default, 256);
    dword_2A189AD3C = dword_2A189AC34;
    dword_2A189AD38 = dword_2A189AC30;
    gs_iAVE_Timestamp = 1;
  }

  return 0;
}

uint64_t AVE_Log_UpdateConsole(int a1)
{
  if ((byte_2A189AC78 & 0xEu) > 5)
  {
    v2 = byte_2A189AC78;
    CurrTime = AVE_GetCurrTime();
    if ((v2 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter %d\n", CurrTime, 64, "INFO", "AVE_Log_UpdateConsole", a1);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d", CurrTime, 64, "INFO", "AVE_Log_UpdateConsole", a1);
  }

  for (i = 0; i != 256; ++i)
  {
    gs_sAVE_Log[i] = gs_sAVE_Log[i] & 0xEF | (16 * ((gs_sAVE_Log[i] & 0xF) <= a1));
  }

  gs_iAVE_Timestamp = AVE_GetAbsTime();
  AVE_Log_Print();
  if ((byte_2A189AC78 & 0xEu) >= 6)
  {
    v5 = byte_2A189AC78;
    v6 = AVE_GetCurrTime();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit %d %d\n", v6, 64, "INFO", "AVE_Log_UpdateConsole", a1, 0);
      v6 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d", v6, 64, "INFO", "AVE_Log_UpdateConsole", a1, 0);
  }

  return 0;
}

void AVE_Log_Print()
{
  if ((byte_2A189AC78 & 0xFu) >= 7)
  {
    v0 = byte_2A189AC78;
    CurrTime = AVE_GetCurrTime();
    if ((v0 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %llu\n", CurrTime, 64, "VERB", "AVE_Log_Print", 85, gs_iAVE_Timestamp);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %llu", CurrTime, 64, "VERB", "AVE_Log_Print", 85, gs_iAVE_Timestamp);
  }

  for (i = 0; i != 256; ++i)
  {
    if ((byte_2A189AC78 & 0xFu) >= 7)
    {
      v3 = byte_2A189AC78;
      v4 = AVE_GetCurrTime();
      v5 = gs_sAVE_Log[i];
      if ((v3 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: Log Cfg: %3d = 0x%02x\n", v4, 64, "VERB", i, v5);
        v4 = AVE_GetCurrTime();
        v5 = gs_sAVE_Log[i];
      }

      syslog(3, "%lld %d AVE %s: Log Cfg: %3d = 0x%02x", v4, 64, "VERB", i, v5);
    }
  }

  if ((byte_2A189AC78 & 0xFu) >= 7)
  {
    v6 = byte_2A189AC78;
    v7 = AVE_GetCurrTime();
    if ((v6 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: Log Cfg: %d (us) %d%%\n", v7, 64, "VERB", dword_2A189AD3C, dword_2A189AD38);
      v7 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: Log Cfg: %d (us) %d%%", v7, 64, "VERB", dword_2A189AD3C, dword_2A189AD38);
  }
}

uint64_t AVE_Log_Load(void *a1, uint64_t a2)
{
  result = 4294966295;
  if (a1)
  {
    if (a2)
    {
      *a1 = gs_iAVE_Timestamp;
      AVE_MemCpyV2V(a2, gs_sAVE_Log, 256);
      result = 0;
      *(a2 + 256) = dword_2A189AD38;
      *(a2 + 260) = dword_2A189AD3C;
    }
  }

  return result;
}

uint64_t AVE_Log_PresetConf(unsigned __int8 *a1, int a2, int a3)
{
  for (i = 5; i != 256; ++i)
  {
    v7 = i >> 3;
    if (v7 >= a2)
    {
      break;
    }

    if ((a1[v7] >> (i & 7)))
    {
      AVE_Log_UpdateConf(i, a3);
    }
  }

  return 0;
}

uint64_t AVE_Log_PresetCfg(unsigned int a1, unint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  *v15 = 0u;
  v16 = 0u;
  if ((byte_2A189AC78 & 0xEu) >= 6)
  {
    v5 = byte_2A189AC78;
    CurrTime = AVE_GetCurrTime();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter 0x%x 0x%llx\n", CurrTime, 64, "INFO", "AVE_Log_PresetCfg", a1, a2);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Enter 0x%x 0x%llx", CurrTime, 64, "INFO", "AVE_Log_PresetCfg", a1, a2);
  }

  v7 = (a1 >> 2) & 0x3FFFFFC0;
  v8 = v7 - 64;
  if (a2)
  {
    for (i = 0; i != 64; ++i)
    {
      if ((v8 | i) > 255)
      {
        break;
      }

      v15[(v8 | i) / 8] |= ((a2 >> i) & 1) << ((v8 | i) - (v2 & 0xF8));
    }

    AVE_Log_PresetConf(v15, 32, a1);
  }

  else
  {
    v10 = 320 - v7;
    if ((v8 - 192) >= 0xFFFFFFFFFFFFFF00)
    {
      v11 = 64;
    }

    else
    {
      v11 = v10;
    }

    AVE_MemCpyV2V(&gs_sAVE_Log[v8], &gs_sAVE_Log_Default + v8, v11);
  }

  if ((a1 & 0xFFFFFEFF) != 0)
  {
    gs_iAVE_Timestamp = AVE_GetAbsTime();
  }

  AVE_Log_Print();
  if ((byte_2A189AC78 & 0xEu) >= 6)
  {
    v12 = byte_2A189AC78;
    v13 = AVE_GetCurrTime();
    if ((v12 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit 0x%x 0x%llx %d\n", v13, 64, "INFO", "AVE_Log_PresetCfg", a1, a2, 0);
      v13 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Exit 0x%x 0x%llx %d", v13, 64, "INFO", "AVE_Log_PresetCfg", a1, a2, 0);
  }

  return 0;
}

uint64_t AVE_Log_ReadCfg(const char *a1)
{
  v78 = *MEMORY[0x29EDCA608];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  *v66 = 0u;
  v67 = 0u;
  memset(&v65, 0, sizeof(v65));
  v64 = 0;
  v63 = 0;
  gsc_piaAVE_Log_DefaultCfgFilePath[0] = 0;
  qword_2A189AB18 = 0;
  if (a1)
  {
    gsc_piaAVE_Log_DefaultCfgFilePath[0] = a1;
  }

  TemporayPath = AVE_GetTemporayPath(v66, 192);
  if (TemporayPath >= 1)
  {
    AVE_SNPrintf(&v66[TemporayPath], (192 - TemporayPath), "%s", "ave_log.cfg");
    qword_2A189AB18 = v66;
  }

  for (i = 0; i != 4; ++i)
  {
    v3 = gsc_piaAVE_Log_DefaultCfgFilePath[i];
    if (!v3)
    {
      continue;
    }

    if (stat(gsc_piaAVE_Log_DefaultCfgFilePath[i], &v65))
    {
      if ((byte_2A189AC78 & 8) != 0)
      {
        v4 = byte_2A189AC78;
        CurrTime = AVE_GetCurrTime();
        if ((v4 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file doesn't exist at %s\n", CurrTime, 64, "DBG", "AVE_Log_ReadCfg", 650, v3);
          AVE_GetCurrTime();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file doesn't exist at %s");
      }

      continue;
    }

    if ((byte_2A189AC78 & 8) != 0)
    {
      v6 = byte_2A189AC78;
      v7 = AVE_GetCurrTime();
      if ((v6 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file is at %s\n", v7, 64, "DBG", "AVE_Log_ReadCfg", 654, v3);
        v7 = AVE_GetCurrTime();
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file is at %s", v7, 64, "DBG", "AVE_Log_ReadCfg", 654, v3);
    }

    v8 = v65.st_mtimespec.tv_nsec / 1000 + 1000000 * v65.st_mtimespec.tv_sec;
    if (v8 == gs_iAVE_Timestamp && gs_iAVE_Timestamp)
    {
      if ((byte_2A189AC78 & 8) != 0)
      {
        v9 = byte_2A189AC78;
        v10 = AVE_GetCurrTime();
        if ((v9 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file has been updated %s %llu\n", v10, 64, "DBG", "AVE_Log_ReadCfg", 662, v3, gs_iAVE_Timestamp);
          v10 = AVE_GetCurrTime();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file has been updated %s %llu", v10, 64, "DBG", "AVE_Log_ReadCfg", 662, v3, gs_iAVE_Timestamp);
      }

      continue;
    }

    v11 = fopen(v3, "r");
    if (v11)
    {
      v21 = v11;
      v22 = malloc_type_malloc(0x108uLL, 0x10000400BDB4DB4uLL);
      if (v22)
      {
        v23 = v22;
        *(v22 + 32) = 0;
        *(v22 + 14) = 0u;
        *(v22 + 15) = 0u;
        *(v22 + 12) = 0u;
        *(v22 + 13) = 0u;
        *(v22 + 10) = 0u;
        *(v22 + 11) = 0u;
        *(v22 + 8) = 0u;
        *(v22 + 9) = 0u;
        *(v22 + 6) = 0u;
        *(v22 + 7) = 0u;
        *(v22 + 4) = 0u;
        *(v22 + 5) = 0u;
        *(v22 + 2) = 0u;
        *(v22 + 3) = 0u;
        *v22 = 0u;
        *(v22 + 1) = 0u;
        if ((byte_2A189AC78 & 0xFu) >= 5)
        {
          v24 = byte_2A189AC78;
          v25 = AVE_GetCurrTime();
          if ((v24 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d used log config file is at %s %llu\n", v25, 64, "WARN", "AVE_Log_ReadCfg", 690, v3, v8);
            v25 = AVE_GetCurrTime();
          }

          syslog(3, "%lld %d AVE %s: %s:%d used log config file is at %s %llu", v25, 64, "WARN", "AVE_Log_ReadCfg", 690, v3, v8);
        }

        gs_iAVE_Timestamp = v8;
        v28 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
        if (v28)
        {
          v29 = v28;
          *(v28 + 14) = 0u;
          *(v28 + 15) = 0u;
          *(v28 + 12) = 0u;
          *(v28 + 13) = 0u;
          *(v28 + 10) = 0u;
          *(v28 + 11) = 0u;
          *(v28 + 8) = 0u;
          *(v28 + 9) = 0u;
          *(v28 + 6) = 0u;
          *(v28 + 7) = 0u;
          *(v28 + 4) = 0u;
          *(v28 + 5) = 0u;
          *(v28 + 2) = 0u;
          *(v28 + 3) = 0u;
          *v28 = 0u;
          *(v28 + 1) = 0u;
          v62 = 0;
          v30 = fgetln(v21, &v62);
          if (v30)
          {
            v31 = v30;
            v32 = v23 + 64;
            v33 = v23 + 65;
            v34 = 1;
            while (1)
            {
              v35 = *v31;
              v36 = v35 > 0x23;
              v37 = (1 << v35) & 0x800002400;
              if (!v36 && v37 != 0)
              {
                goto LABEL_55;
              }

              if (v62 >= 0x100)
              {
                if ((byte_2A189AC78 & 0xFu) >= 5)
                {
                  v39 = byte_2A189AC78;
                  v40 = AVE_GetCurrTime();
                  if ((v39 & 0x10) != 0)
                  {
                    printf("%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld\n", v40, 64, "WARN", "AVE_Log_ReadCfg", 732, v3, v34);
                    v40 = AVE_GetCurrTime();
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld", v40, 64, "WARN", "AVE_Log_ReadCfg", 732, v3, v34);
                }

                goto LABEL_55;
              }

              AVE_StrNCpy(v29, v31, v62 + 1);
              LODWORD(v64) = 15;
              v63 = 0;
              if (sscanf(v29, "LOG_ID_%d=%d%c", &v64 + 4, &v64, &v63) >= 2)
              {
                v41 = v64;
                if ((v63 & 0xDF) == 0x43)
                {
                  v41 = v64 | 0x10;
                }

                *(v23 + SHIDWORD(v64)) = v41;
                goto LABEL_55;
              }

              if (sscanf(v29, "THRESHOLD=%d", v32) != 1)
              {
                break;
              }

              v42 = &dword_2A189AC30;
              if (*v32)
              {
                v42 = v32;
              }

              dword_2A189AD38 = *v42;
              if ((byte_2A189AC78 & 0xFu) < 7)
              {
                goto LABEL_55;
              }

              v43 = v32;
              v44 = byte_2A189AC78;
              v45 = AVE_GetCurrTime();
              v61 = v43;
              if ((v44 & 0x10) == 0)
              {
                syslog(3, "%lld %d AVE %s: %s:%d Read threshold %d");
LABEL_82:
                v32 = v61;
                goto LABEL_55;
              }

              printf("%lld %d AVE %s: %s:%d Read threshold %d\n", v45, 64, "VERB", "AVE_Log_ReadCfg", 757, *v43);
              v49 = AVE_GetCurrTime();
              syslog(3, "%lld %d AVE %s: %s:%d Read threshold %d", v49, 64, "VERB", "AVE_Log_ReadCfg", 757, *v43);
              v32 = v43;
LABEL_55:
              v62 = 0;
              v31 = fgetln(v21, &v62);
              ++v34;
              if (!v31)
              {
                goto LABEL_83;
              }
            }

            if (sscanf(v29, "INTERVAL=%d", v33) != 1)
            {
              goto LABEL_55;
            }

            v46 = &dword_2A189AC34;
            if (*v33)
            {
              v46 = v23 + 65;
            }

            dword_2A189AD3C = *v46;
            if ((byte_2A189AC78 & 0xFu) < 7)
            {
              goto LABEL_55;
            }

            v61 = v32;
            v47 = byte_2A189AC78;
            v48 = AVE_GetCurrTime();
            if ((v47 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d Read interval %d (us)\n", v48, 64, "VERB", "AVE_Log_ReadCfg", 764, *v33);
              AVE_GetCurrTime();
            }

            syslog(3, "%lld %d AVE %s: %s:%d Read interval %d (us)");
            goto LABEL_82;
          }

LABEL_83:
          if (ferror(v21))
          {
            if ((byte_2A189AC78 & 0xC) != 0)
            {
              v50 = byte_2A189AC78;
              v51 = AVE_GetCurrTime();
              v52 = __error();
              v53 = strerror(*v52);
              if ((v50 & 0x10) != 0)
              {
                printf("%lld %d AVE %s: %s:%d error while reading config file: %s\n", v51, 64, "ERR", "AVE_Log_ReadCfg", 713, v53);
                v58 = AVE_GetCurrTime();
                v59 = __error();
                v60 = strerror(*v59);
                syslog(3, "%lld %d AVE %s: %s:%d error while reading config file: %s", v58, 64, "ERR", "AVE_Log_ReadCfg", 713, v60);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d error while reading config file: %s", v51, 64, "ERR", "AVE_Log_ReadCfg", 713, v53);
              }
            }

            v19 = 4294966284;
          }

          else
          {
            for (j = 0; j != 256; ++j)
            {
              v57 = v23 + j;
              if (!*(v23 + j))
              {
                v57 = v23;
              }

              AVE_Log_UpdateConf(j, *v57);
            }

            AVE_Log_Print();
            v19 = 0;
          }

          free(v29);
        }

        else
        {
          if ((byte_2A189AC78 & 0xC) != 0)
          {
            v54 = byte_2A189AC78;
            v55 = AVE_GetCurrTime();
            if ((v54 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader\n", v55, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
              v55 = AVE_GetCurrTime();
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader", v55, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
          }

          v19 = 4294966293;
        }

        free(v23);
      }

      else
      {
        if ((byte_2A189AC78 & 0xC) != 0)
        {
          v26 = byte_2A189AC78;
          v27 = AVE_GetCurrTime();
          if ((v26 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config\n", v27, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
            v27 = AVE_GetCurrTime();
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config", v27, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
        }

        v19 = 4294966293;
      }

      fclose(v21);
      return v19;
    }

    if ((byte_2A189AC78 & 8) != 0)
    {
      v12 = byte_2A189AC78;
      v13 = AVE_GetCurrTime();
      v14 = __error();
      v15 = strerror(*v14);
      if ((v12 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s\n", v13, 64, "DBG", "AVE_Log_ReadCfg", 673, v3, v15);
        v13 = AVE_GetCurrTime();
        v16 = __error();
        strerror(*v16);
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s", v13);
    }
  }

  if ((byte_2A189AC78 & 8) != 0)
  {
    v17 = byte_2A189AC78;
    v18 = AVE_GetCurrTime();
    if ((v17 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d cannot find available config file\n", v18, 64, "DBG", "AVE_Log_ReadCfg", 679);
      v18 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s:%d cannot find available config file", v18, 64, "DBG", "AVE_Log_ReadCfg", 679);
  }

  return 4294966288;
}

uint64_t AVE_Log_Config(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 44))
    {
      v2 = (result + 44);
    }

    else
    {
      v2 = 0;
    }

    result = AVE_Log_ReadCfg(v2);
    v3 = 256;
    for (i = 2; i != 10; i += 2)
    {
      if ((*v1 & v3) != 0)
      {
        AVE_Log_PresetCfg(v3 + 7, *&v1[i]);
        result = 0;
      }

      v3 += 256;
    }

    v5 = v1[10];
    if (v5)
    {
      AVE_Log_UpdateConsole(v5);
      return 0;
    }
  }

  return result;
}

uint64_t AVE_Dump_Create(uint64_t a1, void *a2)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v4 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %lld %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Create", a1, a2);
      v7 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", v7, 61, v20, "AVE_Dump_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", CurrTime, 61, LevelStr, "AVE_Dump_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = malloc_type_malloc(0xF0uLL, 0x1020040FC94C6CFuLL);
    if (v8)
    {
      v9 = 0;
      *(v8 + 29) = 0;
      *(v8 + 216) = 0u;
      *(v8 + 200) = 0u;
      *(v8 + 184) = 0u;
      *(v8 + 168) = 0u;
      *(v8 + 152) = 0u;
      *(v8 + 136) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 8) = 0u;
      *v8 = a1;
      *a2 = v8;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Du, 4))
      {
        v13 = AVE_Log_CheckConsole(0x3Du);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p\n", v14, 61, v15, "AVE_Dump_Create", 89, "pDump != __null", a1, a2);
          v14 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p", v14, 61);
      }

      v9 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v10 = AVE_Log_CheckConsole(0x3Du);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p\n", v11, 61, v12, "AVE_Dump_Create", 85, "ppDump != __null", a1, 0);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v16 = AVE_Log_CheckConsole(0x3Du);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %lld %p %d\n", v17, 61, v18, "AVE_Dump_Create", a1, a2, v9);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %lld %p %d", v17);
  }

  return v9;
}

uint64_t AVE_Dump_Destroy(void *a1)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v2 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v11, "AVE_Dump_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 61, LevelStr, "AVE_Dump_Destroy", a1);
    }
  }

  if (a1)
  {
    free(a1);
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
      v9 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v9, 61, v12, "AVE_Dump_Destroy", 0, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
    }
  }

  return 0;
}

uint64_t AVE_Dump_ComposeFilePath(uint64_t a1, unsigned int a2, int a3, const char *a4, char *a5, uint64_t a6)
{
  v30 = *MEMORY[0x29EDCA608];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  v12 = AVE_SNPrintf(v22, 128, "%lld-%s-%dx%d-%s-%d", *a1, *(&gc_piaAVE_ClientType + *(a1 + 16)), *(a1 + 24), *(a1 + 28), gc_piaAVE_ChromaFmt[*(a1 + 32)], *(a1 + 36));
  v13 = v12;
  if ((a3 & 0x80000000) == 0)
  {
    v13 = AVE_SNPrintf(&v22[v12], (128 - v12), "-MP%d", a3) + v12;
  }

  if (*(a1 + 16) == 1)
  {
    v13 += AVE_SNPrintf(&v22[v13], (128 - v13), "-%s-%d", *(&gc_piaAVE_EncType + *(a1 + 20)), *(a1 + 44));
  }

  v14 = pthread_self();
  v15 = rand();
  v16 = &gsc_saAVE_DumpInfo[12 * a2];
  v17 = AVE_SNPrintf(&v22[v13], (128 - v13), "-%lu-%d-%s", v14, v15 % 10000, *v16);
  if (a2 == 1)
  {
    v18 = *(a1 + 16);
    if (v18 == 1)
    {
      v19 = &v16[*(a1 + 20)];
    }

    else
    {
      v19 = &v16[v18 + 2];
    }

    goto LABEL_12;
  }

  if (((*(a1 + 12) >> a2) & 1) == 0 || (v20 = v16[2]) == 0)
  {
    v19 = (v16 + 1);
LABEL_12:
    v20 = *v19;
  }

  AVE_SNPrintf(&v22[v13 + v17], (128 - (v13 + v17)), ".%s", v20);
  return AVE_ComposeFilePath(a4, 0, v22, a5, a6);
}

uint64_t AVE_Dump_OpenFiles(_DWORD *a1, const char *a2)
{
  v44 = *MEMORY[0x29EDCA608];
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
  *__filename = 0u;
  v29 = 0u;
  if (a1[10] >= 1)
  {
    v2 = a2;
    v4 = 0;
    v27 = 0;
    for (i = a1 + 12; ; i += 24)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if ((a1[2] & (1 << v7)) != 0 && !*&i[2 * v7])
        {
          if (a1[10] <= 1)
          {
            v8 = -1;
          }

          else
          {
            v8 = v4;
          }

          v27 = AVE_Dump_ComposeFilePath(a1, v7, v8, v2, __filename, 256);
          v9 = (a1[3] & (1 << v7)) != 0 && v6 == 36;
          v10 = 8;
          if (v9)
          {
            v10 = 9;
          }

          v11 = (&gsc_saAVE_DumpInfo[v6])[v10];
          v12 = fopen(__filename, v11);
          *&i[2 * v7] = v12;
          if (v12)
          {
            if (!AVE_Log_CheckLevel(0x3Du, 6))
            {
              goto LABEL_26;
            }

            v13 = AVE_Log_CheckConsole(0x3Du);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(6);
            if (v13)
            {
              printf("%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s\n", CurrTime, 61, LevelStr, "AVE_Dump_OpenFiles", 262, a1, *a1, v4, v7, __filename, v11);
              v16 = AVE_GetCurrTime();
              v24 = AVE_Log_GetLevelStr(6);
              v22 = v16;
            }

            else
            {
              v24 = LevelStr;
              v22 = CurrTime;
            }

            syslog(3, "%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s", v22, 61, v24, "AVE_Dump_OpenFiles");
          }

          else
          {
            if (!AVE_Log_CheckLevel(0x3Du, 4))
            {
              goto LABEL_26;
            }

            v17 = AVE_Log_CheckConsole(0x3Du);
            v18 = AVE_GetCurrTime();
            v19 = AVE_Log_GetLevelStr(4);
            if (v17)
            {
              printf("%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s\n", v18, 61, v19, "AVE_Dump_OpenFiles", 257, a1, *a1, v4, v7, __filename, v11);
              v20 = AVE_GetCurrTime();
              v25 = AVE_Log_GetLevelStr(4);
              v23 = v20;
            }

            else
            {
              v25 = v19;
              v23 = v18;
            }

            syslog(3, "%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s", v23, 61, v25, "AVE_Dump_OpenFiles");
          }

          v2 = a2;
        }

LABEL_26:
        ++v7;
        v6 += 12;
      }

      while (v6 != 144);
      if (++v4 >= a1[10])
      {
        return v27;
      }
    }
  }

  return 0;
}