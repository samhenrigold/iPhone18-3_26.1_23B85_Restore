void _VCNetworkConditionMonitor_triggerNetworkConditionCallback(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = MEMORY[0x1E1289F20](a1 + 24);
  if (v4)
  {
    v5 = v4;
    if (*(a1 + 125))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a1 + 123);
    }

    (*(a1 + 16))(v4, *(a1 + 124), v6 & 1, a2);
    CFRelease(v5);
  }

  else
  {
    _VCNetworkConditionMonitor_triggerNetworkConditionCallback_cold_1();
  }

  valuePtr = 0;
  v7 = *(a1 + 122);
  if (v7 != 1)
  {
    if (*(a1 + 123) == 1)
    {
      v7 = 2;
    }

    else if (*(a1 + 121) == 1 && *(a1 + 126) == 1)
    {
      v7 = 4;
    }

    else if (*(a1 + 120) == 1)
    {
      v7 = 3;
    }

    else
    {
      if (*(a1 + 125) != 1)
      {
        goto LABEL_17;
      }

      v7 = 5;
    }
  }

  valuePtr = v7;
LABEL_17:
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NetworkQualityStatus", v10);
  reportingGenericEvent();
  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t VCNetworkConditionMonitor_SetWiFiChannelQualityScore(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNetworkConditionMonitor_SetWiFiChannelQualityScore_block_invoke;
    block[3] = &__block_descriptor_tmp_6;
    v5 = a2;
    block[4] = a1;
    dispatch_async(v2, block);
    return 0;
  }

  else
  {
    VCNetworkConditionMonitor_SetWiFiChannelQualityScore_cold_1();
    return v6;
  }
}

uint64_t VCNetworkConditionMonitor_SetCellSignalStrengthBars(uint64_t a1, char a2, char a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNetworkConditionMonitor_SetCellSignalStrengthBars_block_invoke;
    block[3] = &__block_descriptor_tmp_7;
    v6 = a2;
    block[4] = a1;
    v7 = a3;
    dispatch_async(v3, block);
    return 0;
  }

  else
  {
    VCNetworkConditionMonitor_SetCellSignalStrengthBars_cold_1();
    return v8;
  }
}

uint64_t VCNetworkConditionMonitor_SetRemoteNetworkQuality(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNetworkConditionMonitor_SetRemoteNetworkQuality_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = a1;
    v5 = a2;
    dispatch_async(v2, block);
    return 0;
  }

  else
  {
    VCNetworkConditionMonitor_SetRemoteNetworkQuality_cold_1();
    return v6;
  }
}

uint64_t VCNetworkConditionMonitor_SetIsLocalActiveOnCellular(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNetworkConditionMonitor_SetIsLocalActiveOnCellular_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = a1;
    v5 = a2;
    dispatch_async(v2, block);
    return 0;
  }

  else
  {
    VCNetworkConditionMonitor_SetIsLocalActiveOnCellular_cold_1();
    return v6;
  }
}

double _VCNetworkConditionMonitor_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void _VCNetworkConditionMonitor_Finalize(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 128) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global_11);
    v4 = *(a1 + 32);

    dispatch_release(v4);
  }
}

void OUTLINED_FUNCTION_8_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x1Cu);
}

double VCRedundancyControllerVideo_ConvertRedundancyPercentageToRatio(unsigned int a1)
{
  result = 3.0;
  if (a1 <= 0x12C)
  {
    return a1 / 100.0;
  }

  return result;
}

void VCMediaKeyIndex_Release(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

void *VCMediaKeyIndex_ReleaseAndCopyNewValue(const void **a1, void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  result = [a2 copy];
  *a1 = result;
  return result;
}

uint64_t VCMediaKeyIndex_UniquePrefixBytes(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && (v4 = a3, a3))
  {
    bzero(a2, a3);
    objc_sync_enter(a1);
    memcpy(a2, (a1 + 8), v4);
    objc_sync_exit(a1);
  }

  else
  {
    VCMediaKeyIndex_UniquePrefixBytes_cold_1(&v7);
    return v7;
  }

  return v4;
}

const char *VCMediaKeyIndex_Description(void *a1)
{
  v1 = [a1 description];

  return CFStringGetCStringPtr(v1, 0x8000100u);
}

VCMediaKeyIndex *VCMediaKeyIndex_CreateMediaKeyIndexWithUUIDString(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a1];
  v2 = [VCMediaKeyIndex alloc];

  return [(VCMediaKeyIndex *)v2 initWithNSUUID:v1];
}

void StallModeTracePrint_(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v19[1] = *MEMORY[0x1E69E9840];
  if (g_fpStallModeDump)
  {
    v19[0] = 0;
    memset(v18, 170, sizeof(v18));
    gettimeofday(v18, 0);
    va_copy(&v18[16], va);
    vasprintf(v19, a5, va);
    if (v19[0])
    {
      v17.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v17.tm_mon = v10;
      *&v17.tm_isdst = v10;
      *&v17.tm_sec = v10;
      localtime_r(v18, &v17);
      v11 = g_fpStallModeDump;
      tm_min = v17.tm_min;
      tm_hour = v17.tm_hour;
      tm_sec = v17.tm_sec;
      v15 = *&v18[8];
      v16 = VRTraceErrorLogLevelToCSTR();
      VRLogfilePrint(v11, "%02d:%02d:%02d.%06d <%s> %s: %s\n", tm_hour, tm_min, tm_sec, v15, v16, a2, v19[0]);
      free(v19[0]);
    }
  }
}

uint64_t initialBitrateTierFromLearntBitrateWithCellTech(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((a3 - 5) > 4)
    {
      v6 = @"S";
    }

    else
    {
      v6 = *(&off_1E85F5038 + (a3 - 5));
    }
  }

  else
  {
    v6 = @"W";
  }

  v7 = g_adwTxRateTiers[a6];
  if (a4)
  {
    if ((a5 - 5) > 4)
    {
      v8 = @"S";
    }

    else
    {
      v8 = *(&off_1E85F5038 + (a5 - 5));
    }
  }

  else
  {
    v8 = @"W";
  }

  v9 = CFStringCreateWithFormat(0, 0, @"%@:%@", v6, v8);
  LearntBitrateForSegment = reportingGetLearntBitrateForSegment();
  CFRelease(v9);
  LODWORD(v11) = 38;
  while (1)
  {
    v11 = (v11 - 1);
    if (g_adwTxRateTiers[v11] <= LearntBitrateForSegment)
    {
      break;
    }

    if (v11 <= 1)
    {
      v11 = 0;
      break;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    v14 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v17 = v12;
        v18 = 2080;
        v19 = "initialBitrateTierFromLearntBitrateWithCellTech";
        v20 = 1024;
        v21 = 1160;
        v22 = 2112;
        v23 = v9;
        v24 = 1024;
        v25 = LearntBitrateForSegment;
        v26 = 1024;
        v27 = v11;
        v28 = 1024;
        v29 = v7;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AdaptiveLearning(AFRC): Setting up initial bitrate for segment %@ - learnt target bitrate %d, selected tier %d, default bitrate %d", buf, 0x38u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      v17 = v12;
      v18 = 2080;
      v19 = "initialBitrateTierFromLearntBitrateWithCellTech";
      v20 = 1024;
      v21 = 1160;
      v22 = 2112;
      v23 = v9;
      v24 = 1024;
      v25 = LearntBitrateForSegment;
      v26 = 1024;
      v27 = v11;
      v28 = 1024;
      v29 = v7;
      _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d AdaptiveLearning(AFRC): Setting up initial bitrate for segment %@ - learnt target bitrate %d, selected tier %d, default bitrate %d", buf, 0x38u);
    }
  }

  return v11;
}

uint64_t AFRCCreateHandle(uint64_t *a1, uint64_t a2, const void *a3, int *a4)
{
  v115 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(1uLL, 0x2680uLL, 0x10E00404730A826uLL);
  if (v8)
  {
    v9 = v8;
    v10 = (v8 + 1024);
    v8[351] = a2;
    ErrorLogLevelForModule = MediaQueue_SetAudioFECLevel(a2, 1.0);
    *(v9 + 2736) = 0x3FF0000000000000;
    __asm { FMOV            V0.2D, #1.0 }

    *(v9 + 2720) = _Q0;
    *(v9 + 2700) = 0u;
    if ((*(a4 + 54) & 1) == 0)
    {
      *v9 = a3;
      if (a3)
      {
        ErrorLogLevelForModule = CFRetain(a3);
      }

      else
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 7)
        {
          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
          if (ErrorLogLevelForModule)
          {
            *buf = 136315650;
            *&buf[4] = v18;
            v105 = 2080;
            v106 = "AFRCCreateHandle";
            v107 = 1024;
            v108 = 1189;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCCreateHandle: RTCReportingAgent is nil", buf, 0x1Cu);
          }
        }
      }
    }

    v20 = *a4;
    *(v9 + 2928) = *a4;
    v21 = a4[1];
    *(v9 + 2932) = v21;
    v22 = a4[2];
    *(v9 + 2936) = v22;
    v23 = a4[3];
    *(v9 + 2940) = v23;
    v24 = a4[4];
    *(v9 + 9696) = v24;
    v25 = a4[5];
    *(v9 + 2944) = v25;
    *(v9 + 2632) = a4[8];
    v10[1509] = a4[10] != 0;
    *(v9 + 2696) = a4[11] != 0;
    *(v9 + 2824) = a4[12];
    *(v10 + 823) = *(a4 + 26);
    v10[1660] = *(a4 + 55);
    v26 = 0.5;
    if (v25)
    {
      v26 = 1.0;
    }

    *(v9 + 2456) = v26;
    if (v20)
    {
      if (v22 == 2)
      {
LABEL_18:
        *(v9 + 2948) = 1;
        goto LABEL_20;
      }

      if (v22 != 7)
      {
        if (v22 != 4)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      *(v9 + 2952) = 1;
    }

LABEL_20:
    v10[1508] = 0;
    if (v24)
    {
      v27 = 0;
      v28 = 3;
      *(v9 + 28) = 3;
      *(v9 + 36) = 3;
      *(v9 + 2464) = 0x4000000000000000;
      *(v9 + 2456) = 0x3FF0000000000000;
      goto LABEL_30;
    }

    if (!*(v9 + 2948))
    {
      if (*(v9 + 2952))
      {
        v28 = 5;
        *(v9 + 28) = 5;
        *(v9 + 36) = 5;
        v29 = 0x3FF0000000000000;
        goto LABEL_28;
      }

      if (!v21 || v23 != 4 && v23 != 2)
      {
        ErrorLogLevelForModule = initialBitrateTierFromLearntBitrateWithCellTech(a3, v20 != 0, v22, v21 != 0, v23, 10);
        *(v9 + 28) = ErrorLogLevelForModule;
        *(v9 + 32) = ErrorLogLevelForModule;
        *(v9 + 36) = 10;
        *(v9 + 2464) = 0x3FF0000000000000;
        v28 = ErrorLogLevelForModule;
        goto LABEL_29;
      }
    }

    v28 = 3;
    *(v9 + 28) = 3;
    *(v9 + 36) = 3;
    v29 = 0x4000000000000000;
LABEL_28:
    *(v9 + 2464) = v29;
LABEL_29:
    *(v9 + 40) = 0;
    v27 = 1;
LABEL_30:
    *(v9 + 2480) = v27;
    v30 = g_adwTxRateTiers[v28];
    *(v9 + 44) = v30;
    *(v9 + 9816) = v30;
    *(v9 + 9808) = micro(ErrorLogLevelForModule, v12);
    v10[1608] = 0;
    *(v9 + 20) = vdup_n_s32(0x927C0u);
    *(v9 + 1400) = 0x100000001;
    *(v9 + 1396) = 5;
    *(v9 + 80) = xmmword_1DBD45C30;
    *(v9 + 96) = 0x3FC3333333333333;
    *(v9 + 104) = micro(v31, v32);
    *(v9 + 68) = -1;
    v33 = ConfigureAFRCDefaults(v9);
    *(v9 + 9576) = 0x3FF0000000000000;
    v10[1432] = -1;
    *(v9 + 152) = 0;
    *(v9 + 2504) = 0;
    *(v9 + 2520) = 0;
    *(v9 + 2512) = 0;
    *(v9 + 2632) = 2;
    *(v9 + 9704) = 0;
    *(v9 + 9712) = 0;
    *(v9 + 140) = 0;
    v35 = micro(v33, v34);
    *(v9 + 9672) = v35;
    *(v9 + 9680) = v35;
    v36 = RateMonitorCreateWithHistoryLength(300);
    *(v9 + 9768) = v36;
    RateMonitorConfigureWithThresholds(v36, 228000.0, 0.1, 0.15, 0.5);
    RateMonitorStart(*(v9 + 9768));
    *(v9 + 9796) = 0;
    v37 = RateMonitorCreateWithHistoryLength(300);
    *(v9 + 9784) = v37;
    RateMonitorConfigureWithThresholds(v37, 0.0, 0.1, 0.1, 0.5);
    RateMonitorStart(*(v9 + 9784));
    *(v9 + 688) = 0;
    pthread_mutex_init((v9 + 280), 0);
    pthread_mutex_init((v9 + 2560), 0);
    pthread_mutex_init((v9 + 2744), 0);
    pthread_mutex_init((v9 + 2864), 0);
    Handle = CreateHandle();
    *a1 = Handle;
    if (Handle == 0xFFFFFFFFLL)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          AFRCCreateHandle_cold_3();
        }
      }

      pthread_mutex_destroy((v9 + 280));
      pthread_mutex_destroy((v9 + 2560));
      pthread_mutex_destroy((v9 + 2744));
      pthread_mutex_destroy((v9 + 2864));
      free(v9);
      return 2149646341;
    }

    else
    {
      reportingRegisterPeriodicTask();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v41 = "YES";
          v42 = *(v9 + 2936);
          if (*(v9 + 2928))
          {
            v43 = "YES";
          }

          else
          {
            v43 = "NO";
          }

          v44 = *(v9 + 2940);
          if (!*(v9 + 2932))
          {
            v41 = "NO";
          }

          *buf = 136316674;
          *&buf[4] = v39;
          v105 = 2080;
          v106 = "AFRCCreateHandle";
          v107 = 1024;
          v108 = 1503;
          v109 = 2080;
          *v110 = v43;
          *&v110[8] = 1024;
          LODWORD(v111) = v42;
          WORD2(v111) = 2080;
          *(&v111 + 6) = v41;
          HIWORD(v111) = 1024;
          *v112 = v44;
          _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCCreateHandle (CellTech local[%s:%d] remote[%s:%d]).", buf, 0x3Cu);
        }
      }

      v46 = a4[6];
      v45 = a4[7];
      v47 = a4[9];
      *(v9 + 2816) = v46;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v48 = VRTraceErrorLogLevelToCSTR();
        v49 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v50 = "enabled";
          *buf = 136315906;
          *&buf[4] = v48;
          v105 = 2080;
          v106 = "AFRCLog_OpenLogs";
          if (!v46)
          {
            v50 = "disabled";
          }

          v107 = 1024;
          v108 = 823;
          v109 = 2080;
          *v110 = v50;
          _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ### AFRC log %s", buf, 0x26u);
        }
      }

      if (v45 && (memset(buf, 170, sizeof(buf)), __sprintf_chk(buf, 0, 0xCuLL, "%010u", *(v9 + 2824)), v51 = VRLogfileAlloc(0, buf, "AFRC", ".afrcdump", "com.apple.VideoConference.AFRClog", 9), *(v9 + 2832) = v51, VRLogfilePrintSync(v51, "STime\t\tdTime/ETxTS\tOWRD\tNOWRD\tNOWRDS\tNOWRDA\tUp\tRTT\tPLR/FEC\tRRx\tMBL\tLRx\tBR/TR\tMQIn: A/V\tMQOut: A/V\tABRL\tQD\tBDL\tTxAT\tMODE\tTxSTATE\tAudio:PL/Rate\n"), VRLogfilePrintSync(*(v9 + 2832), "connection #: %d.\n", *(v9 + 2632)), *(v9 + 2832)))
      {
        v52 = *(v9 + 2824);
        if (AFRCLog_OpenStallModeLog_once != -1)
        {
          AFRCCreateHandle_cold_1();
        }

        pthread_mutex_lock(&g_fpStallModeDumpOpenCloseLock);
        VRLogfileFree(&g_fpStallModeDump);
        memset(buf, 170, sizeof(buf));
        __sprintf_chk(buf, 0, 0xCuLL, "%010u", v52);
        g_fpStallModeDump = VRLogfileAlloc(0, buf, "AFRC", ".stalldump", "com.apple.VideoConference.StallModeDump", 32);
        pthread_mutex_unlock(&g_fpStallModeDumpOpenCloseLock);
        memset(buf, 170, sizeof(buf));
        __sprintf_chk(buf, 0, 0xCuLL, "%010u", *(v9 + 2824));
        v53 = VRLogfileAlloc(0, buf, "AFRC", ".fbdump", "com.apple.VideoConference.AFRClogFB", 32);
        *(v9 + 2840) = v53;
        VRLogfilePrintSync(v53, "MyTxTS\tDelay\tRecvKb\tBLoss\tAudioRecvPkt\tVideoRecvPkt\tYrTxTS\tOWRD\n");
        AFRCLog_OpenBBLog(v9, v47, 0);
        v54 = 1;
      }

      else
      {
        v54 = 0;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v55 = VRTraceErrorLogLevelToCSTR();
        v56 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v57 = "disabled";
          *buf = 136315906;
          *&buf[4] = v55;
          v105 = 2080;
          v106 = "AFRCLog_OpenLogs";
          if (v54)
          {
            v57 = "enabled";
          }

          v107 = 1024;
          v108 = 834;
          v109 = 2080;
          *v110 = v57;
          _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ### AFRC dump %s", buf, 0x26u);
        }
      }

      *(v9 + 672) = 0;
      *(v9 + 968) = 0;
      *(v9 + 980) = 0;
      *(v9 + 984) = 0;
      *(v9 + 992) = 0;
      *(v9 + 976) = 0;
      *(v9 + 1120) = 0;
      *(v9 + 928) = 0;
      *(v9 + 912) = 0u;
      *(v9 + 936) = 0;
      *(v9 + 960) = 0;
      *(v9 + 944) = 0u;
      *(v9 + 1040) = 0;
      *(v9 + 1104) = 1;
      *(v9 + 1128) = 0;
      *(v9 + 1132) = 0;
      *(v9 + 1136) = 0;
      *(v9 + 1144) = 0;
      *(v9 + 1148) = 0u;
      *(v9 + 1196) = 0u;
      *(v9 + 1184) = 0u;
      *(v9 + 1168) = 0u;
      *(v9 + 1216) = 0u;
      *(v9 + 1232) = 0u;
      keyExistsAndHasValidFormat = 0;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BWEstEnableNewEstSenderSide", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        _ZF = AppIntegerValue == 0;
      }

      else
      {
        _ZF = 0;
      }

      v60 = !_ZF;
      *(v9 + 724) = v60;
      v61 = CFPreferencesGetAppIntegerValue(@"BWEstEnableNewEstRecvrSide", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v62 = v61 == 0;
      }

      else
      {
        v62 = 0;
      }

      v63 = !v62;
      *(v9 + 725) = v63;
      v64 = CFPreferencesGetAppIntegerValue(@"BWEstProbeInterval", @"com.apple.VideoConference", &keyExistsAndHasValidFormat) / 1000000.0;
      if (!keyExistsAndHasValidFormat)
      {
        v64 = 0.666;
      }

      *(v9 + 864) = v64;
      v65 = CFPreferencesGetAppIntegerValue(@"BWEstLogType", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v66 = v65;
      }

      else
      {
        v66 = 0;
      }

      *(v9 + 1112) = v66;
      v67 = CFPreferencesGetAppIntegerValue(@"BWEstLogLevel", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v68 = v67;
      }

      else
      {
        v68 = 0;
      }

      g_iBWEstLogLevel = v68;
      v69 = CFPreferencesGetAppIntegerValue(@"BWEstDemoLogInterval", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v70 = v69;
      }

      else
      {
        v70 = 1000000;
      }

      *(v9 + 1116) = v70;
      v71 = CFPreferencesGetAppIntegerValue(@"HackUploadBW", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v72 = v71 == 0;
      }

      else
      {
        v72 = 1;
      }

      v73 = !v72;
      *(v9 + 1037) = v73;
      v74 = CFPreferencesGetAppIntegerValue(@"V1BWE", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v75 = v74 == 0;
      }

      else
      {
        v75 = 1;
      }

      v76 = !v75;
      *(v9 + 1036) = v76;
      v77 = VRTraceGetErrorLogLevelForModule();
      v78 = MEMORY[0x1E6986640];
      if (v77 > 7)
      {
        v79 = VRTraceErrorLogLevelToCSTR();
        v80 = *MEMORY[0x1E6986650];
        v81 = *MEMORY[0x1E6986650];
        if (*v78 == 1)
        {
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            v82 = *(v9 + 1037);
            v83 = *(v9 + 1036);
            *buf = 136316162;
            *&buf[4] = v79;
            v105 = 2080;
            v106 = "BWEstConfigureDefaults";
            v107 = 1024;
            v108 = 5830;
            v109 = 1024;
            *v110 = v82;
            *&v110[4] = 1024;
            *&v110[6] = v83;
            _os_log_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d HackUploadBW: %d  V1BWE: %d ", buf, 0x28u);
          }
        }

        else if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          v96 = *(v9 + 1037);
          v97 = *(v9 + 1036);
          *buf = 136316162;
          *&buf[4] = v79;
          v105 = 2080;
          v106 = "BWEstConfigureDefaults";
          v107 = 1024;
          v108 = 5830;
          v109 = 1024;
          *v110 = v96;
          *&v110[4] = 1024;
          *&v110[6] = v97;
          _os_log_debug_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d HackUploadBW: %d  V1BWE: %d ", buf, 0x28u);
        }
      }

      *(v9 + 720) = 0;
      *(v9 + 1248) = (*MEMORY[0x1E6986638] | g_iBWEstLogLevel) != 0;
      Throttling_AFRC_Init((v9 + 872));
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v84 = VRTraceErrorLogLevelToCSTR();
        v85 = *MEMORY[0x1E6986650];
        v86 = *MEMORY[0x1E6986650];
        if (*v78 == 1)
        {
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            v87 = *(v9 + 725);
            v88 = *(v9 + 724);
            v89 = *(v9 + 864);
            v90 = *(v9 + 1116);
            v91 = *(v9 + 1112);
            *buf = 136317186;
            *&buf[4] = v84;
            v105 = 2080;
            v106 = "BWEstInit";
            v107 = 1024;
            v108 = 5939;
            v109 = 1024;
            *v110 = v87;
            *&v110[4] = 1024;
            *&v110[6] = v88;
            LOWORD(v111) = 2048;
            *(&v111 + 2) = v89;
            WORD5(v111) = 1024;
            HIDWORD(v111) = v90;
            *v112 = 1024;
            *&v112[2] = v91;
            v113 = 1024;
            v114 = g_iBWEstLogLevel;
            _os_log_impl(&dword_1DB56E000, v85, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ////^^^^ Initial BWEstEnableNewst_Recvr/_Sender %d/%d  \t BWEstProbeInterval: %f  BWEstDemoLogInterval: %d  BWEstLogType: %d  BWEstLogLevel: %x \n", buf, 0x44u);
          }
        }

        else if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
        {
          v98 = *(v9 + 725);
          v99 = *(v9 + 724);
          v100 = *(v9 + 864);
          v101 = *(v9 + 1116);
          v102 = *(v9 + 1112);
          *buf = 136317186;
          *&buf[4] = v84;
          v105 = 2080;
          v106 = "BWEstInit";
          v107 = 1024;
          v108 = 5939;
          v109 = 1024;
          *v110 = v98;
          *&v110[4] = 1024;
          *&v110[6] = v99;
          LOWORD(v111) = 2048;
          *(&v111 + 2) = v100;
          WORD5(v111) = 1024;
          HIDWORD(v111) = v101;
          *v112 = 1024;
          *&v112[2] = v102;
          v113 = 1024;
          v114 = g_iBWEstLogLevel;
          _os_log_debug_impl(&dword_1DB56E000, v85, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d ////^^^^ Initial BWEstEnableNewst_Recvr/_Sender %d/%d  \t BWEstProbeInterval: %f  BWEstDemoLogInterval: %d  BWEstLogType: %d  BWEstLogLevel: %x \n", buf, 0x44u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v92 = VRTraceErrorLogLevelToCSTR();
        v93 = *MEMORY[0x1E6986650];
        v94 = *MEMORY[0x1E6986650];
        if (*v78 == 1)
        {
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v92;
            v105 = 2080;
            v106 = "BWEstInit";
            v107 = 1024;
            v108 = 5940;
            v109 = 2048;
            *v110 = v9;
            _os_log_impl(&dword_1DB56E000, v93, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ///////////////////////AFRCCreateHandle startAFRC//////////////////////// %p", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          AFRCCreateHandle_cold_2();
        }
      }

      if ((*(v9 + 1037) & 1) != 0 || *(v9 + 1036) == 1)
      {
        v17 = 0;
        *(v9 + 1024) = 0;
        *(v9 + 1032) = 0;
        *(v9 + 1016) = 0;
        *(v9 + 1000) = 0u;
      }

      else
      {
        return 0;
      }
    }

    return v17;
  }

  v17 = 2149646339;
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AFRCCreateHandle_cold_5();
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      AFRCCreateHandle_cold_4();
    }
  }

  return v17;
}

BOOL ConfigureAFRCDefaults(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  ForcedCapBitrate = VCTestMonitorManager_GetForcedCapBitrate();
  *(a1 + 72) = VCDefaults_GetIntValueForKey(@"forcedTxCap", ForcedCapBitrate);
  ForcedTargetBitrate = VCTestMonitorManager_GetForcedTargetBitrate();
  *(a1 + 68) = VCDefaults_GetIntValueForKey(@"forcedTxRate", ForcedTargetBitrate);
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"forcedPLRForAudioFEC100", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  v5 = -1.0;
  v6 = -1.0;
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppIntegerValue / 100.0;
  }

  v7 = CFPreferencesGetAppIntegerValue(@"forcedPLRForAudioFEC150", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = v7 / 100.0;
  }

  v8 = CFPreferencesGetAppIntegerValue(@"forcedPLRForAudioFEC200", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v9 = v8 / 100.0;
  }

  else
  {
    v9 = -1.0;
  }

  if (v6 > 0.0 && v5 > 0.0 && v9 > 0.0 && v5 >= v6 && v9 >= v5 && v9 <= 1.0)
  {
    *(a1 + 80) = v6;
    *(a1 + 88) = v5;
    *(a1 + 96) = v9;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v24 = v10;
        v25 = 2080;
        v26 = "ConfigureAFRCDefaults";
        v27 = 1024;
        v28 = 5771;
        v29 = 2048;
        v30 = v6;
        v31 = 2048;
        v32 = v5;
        v33 = 2048;
        v34 = v9;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Forcing Audio FEC Level 100,150,200 at PLR:(%.2f, %.2f, %.2f) from defaults", buf, 0x3Au);
      }
    }
  }

  v12 = *(a1 + 72);
  if (v12 >= 10000)
  {
    *(a1 + 20) = v12;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 20);
        *buf = 136315906;
        v24 = v13;
        v25 = 2080;
        v26 = "ConfigureAFRCDefaults";
        v27 = 1024;
        v28 = 5775;
        v29 = 1024;
        LODWORD(v30) = v15;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Forcing AFRC TxCap to %u from defaults", buf, 0x22u);
      }
    }
  }

  v16 = *(a1 + 68);
  if ((v16 & 0x80000000) == 0)
  {
    *(a1 + 44) = v16;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 44);
        *buf = 136315906;
        v24 = v17;
        v25 = 2080;
        v26 = "ConfigureAFRCDefaults";
        v27 = 1024;
        v28 = 5779;
        v29 = 1024;
        LODWORD(v30) = v19;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Forcing AFRC TxRate to %u from defaults", buf, 0x22u);
      }
    }
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"rateControlAllowVideoStop", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    AppBooleanValue = *(a1 + 9839);
  }

  *(a1 + 9836) = (*(a1 + 2948) | AppBooleanValue) != 0;
  result = VCDefaults_GetBoolValueForKey(@"rateControlAllowBurstyLossRampDown", *(a1 + 9838));
  *(a1 + 9837) = result;
  return result;
}

uint64_t __AFRCCreateHandle_block_invoke(uint64_t a1, __CFDictionary *a2)
{
  result = CheckInHandleDebug();
  if (result)
  {
    v5 = result;
    if (a2)
    {
      v6 = *MEMORY[0x1E695E480];
      v7 = *(result + 240);
      if (v7)
      {
        v7 = (*(result + 192) / v7);
      }

      v8 = CFStringCreateWithFormat(v6, 0, @"%u", v7);
      CFDictionaryAddValue(a2, @"PLR", v8);
      CFRelease(v8);
      v9 = *(v5 + 240);
      if (v9)
      {
        v9 = (*(v5 + 200) / v9);
      }

      v10 = CFStringCreateWithFormat(v6, 0, @"%u", v9);
      CFDictionaryAddValue(a2, @"VPLR", v10);
      CFRelease(v10);
      v11 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 52));
      CFDictionaryAddValue(a2, @"RTT", v11);
      CFRelease(v11);
      v12 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 44) / 0x3E8uLL);
      CFDictionaryAddValue(a2, @"TTxR", v12);
      CFRelease(v12);
      v13 = CFStringCreateWithFormat(v6, 0, @"%u", (*(v5 + 680) / 1000.0));
      CFDictionaryAddValue(a2, @"DBE", v13);
      CFRelease(v13);
      if (*(v5 + 1037) == 1)
      {
        v14 = (*(v5 + 1000) / 1000.0);
      }

      else
      {
        v14 = *(v5 + 252);
      }

      v20 = CFStringCreateWithFormat(v6, 0, @"%u", v14);
      CFDictionaryAddValue(a2, @"UBE", v20);
      CFRelease(v20);
      v21 = (*(v5 + 672) / 1000.0);
      v22 = *(v5 + 9824);
      if (v22 && v21 && v22 / v21 > 2.0 && v22 - v21 >= 0x2EF)
      {
        ++*(v5 + 9828);
      }

      *(v5 + 9824) = v21;
      v23 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 9828));
      CFDictionaryAddValue(a2, @"SBWD", v23);
      CFRelease(v23);
      v24 = *(v5 + 9832);
      if (*(v5 + 9820) == 1)
      {
        v24 = (v24 + 1);
        *(v5 + 9832) = v24;
      }

      *(v5 + 9820) = 0;
      v25 = CFStringCreateWithFormat(v6, 0, @"%u", v24);
      CFDictionaryAddValue(a2, @"RDMBL", v25);
      CFRelease(v25);
      v26 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 2980));
      CFDictionaryAddValue(a2, @"BbD", v26);
      CFRelease(v26);
      v27 = CFStringCreateWithFormat(v6, 0, @"%u", (*(v5 + 3036) + *(v5 + 3032)));
      CFDictionaryAddValue(a2, @"BbQ", v27);
      CFRelease(v27);
      v28 = CFStringCreateWithFormat(v6, 0, @"%d", *(v5 + 3031));
      CFDictionaryAddValue(a2, @"BTPw", v28);
      CFRelease(v28);
      LODWORD(v29) = *(v5 + 2968);
      v30 = CFStringCreateWithFormat(v6, 0, @"%5.1f", v29 / 1000.0);
      CFDictionaryAddValue(a2, @"BbTx", v30);
      CFRelease(v30);
      LODWORD(v31) = *(v5 + 2964);
      v32 = CFStringCreateWithFormat(v6, 0, @"%5.1f", v31 / 1000.0);
      CFDictionaryAddValue(a2, @"InTxR", v32);
      CFRelease(v32);
      v33 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 9616));
      CFDictionaryAddValue(a2, @"VPF", v33);
      CFRelease(v33);
      v34 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 9620));
      CFDictionaryAddValue(a2, @"APF", v34);
      CFRelease(v34);
      v35 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 268));
      CFDictionaryAddValue(a2, @"APRR", v35);
      CFRelease(v35);
      v36 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 272));
      CFDictionaryAddValue(a2, @"VPRR", v36);
      CFRelease(v36);
      v37 = *(v5 + 240);
      if (v37)
      {
        v37 = *(v5 + 224) / v37;
      }

      v38 = CFStringCreateWithFormat(v6, 0, @"%u", v37);
      CFDictionaryAddValue(a2, @"OVSBR", v38);
      CFRelease(v38);
      v39 = *(v5 + 240);
      if (v39)
      {
        v39 = *(v5 + 228) / v39;
      }

      v40 = CFStringCreateWithFormat(v6, 0, @"%u", v39);
      CFDictionaryAddValue(a2, @"UNSBR", v40);
      CFRelease(v40);
      v41 = *(v5 + 240);
      if (v41)
      {
        v41 = *(v5 + 232) / v41;
      }

      v42 = CFStringCreateWithFormat(v6, 0, @"%u", v41);
      CFDictionaryAddValue(a2, @"OVBWE", v42);
      CFRelease(v42);
      v43 = *(v5 + 240);
      if (v43)
      {
        v43 = *(v5 + 236) / v43;
      }

      v44 = CFStringCreateWithFormat(v6, 0, @"%u", v43);
      CFDictionaryAddValue(a2, @"UNBWE", v44);
      CFRelease(v44);
      v45 = *(v5 + 240);
      if (v45)
      {
        v45 = (*(v5 + 208) / v45);
      }

      v46 = CFStringCreateWithFormat(v6, 0, @"%u", v45);
      CFDictionaryAddValue(a2, @"WRRTT", v46);
      CFRelease(v46);
      v47 = *(v5 + 240);
      if (v47)
      {
        v47 = (*(v5 + 216) / v47);
      }

      v48 = CFStringCreateWithFormat(v6, 0, @"%u", v47);
      CFDictionaryAddValue(a2, @"WRBPL", v48);
      CFRelease(v48);
      pthread_mutex_lock((*(a1 + 40) + 2560));
      v49 = *(v5 + 2652);
      if (v49)
      {
        v50 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 2636) / v49);
        CFDictionaryAddValue(a2, @"RxPC", v50);
        CFRelease(v50);
        v51 = (*(v5 + 2640) / *(v5 + 2652));
      }

      else
      {
        v52 = CFStringCreateWithFormat(v6, 0, @"%u", 0);
        CFDictionaryAddValue(a2, @"RxPC", v52);
        CFRelease(v52);
        v51 = 0;
      }

      v53 = CFStringCreateWithFormat(v6, 0, @"%u", v51);
      CFDictionaryAddValue(a2, @"RxSC", v53);
      CFRelease(v53);
      if (v49)
      {
        v54 = CFStringCreateWithFormat(v6, 0, @"%u", (*(v5 + 2644) / *(v5 + 2652)));
        CFDictionaryAddValue(a2, @"TxPC", v54);
        CFRelease(v54);
        v55 = (*(v5 + 2644) / *(v5 + 2652));
      }

      else
      {
        v56 = CFStringCreateWithFormat(v6, 0, @"%u", 0);
        CFDictionaryAddValue(a2, @"TxPC", v56);
        CFRelease(v56);
        v55 = 0;
      }

      v57 = CFStringCreateWithFormat(v6, 0, @"%u", v55);
      CFDictionaryAddValue(a2, @"TxSC", v57);
      CFRelease(v57);
      *(v5 + 2636) = 0;
      *(v5 + 2640) = 0;
      *(v5 + 2652) = 0;
      pthread_mutex_unlock((*(a1 + 40) + 2560));
      *(v5 + 192) = 0u;
      *(v5 + 208) = 0u;
      *(v5 + 224) = 0u;
      *(v5 + 240) = 0;
      *(v5 + 9608) = 0u;
    }

    else
    {
      v15 = vmlaq_f64(*(result + 192), vdupq_n_s64(0x40C3880000000000uLL), *(result + 176));
      v16 = *(result + 216);
      v17 = *(result + 208) + *(result + 56) * 1000.0;
      *(result + 192) = v15;
      *(result + 56) = 0;
      LODWORD(v15.f64[0]) = *(result + 64);
      *(result + 208) = v17;
      *(result + 216) = v16 + *&v15.f64[0];
      *(result + 64) = 0;
      if (!*(result + 2404))
      {
        v18 = 1000 * *(result + 252);
        v19 = *(result + 44);
        if (v19 >= v18)
        {
          *(result + 232) += (v19 - v18) / 0x3E8;
        }

        else
        {
          *(result + 236) += (v18 - v19) / 0x3E8;
        }

        v58 = *(*(a1 + 40) + 1392) + *(*(a1 + 40) + 1388);
        if (v58 >= v19)
        {
          *(result + 224) += (v58 - v19) / 0x3E8;
        }

        else
        {
          *(result + 228) += (v19 - v58) / 0x3E8;
        }
      }

      ++*(result + 240);
    }

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t AFRCUpdateOperatingMode(uint64_t a1, int a2, int a3, char a4)
{
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2149646338;
  }

  *(v7 + 2944) = a3;
  *(v7 + 9696) = a2;
  *(v7 + 9701) = a4;
  if (a2)
  {
    *(v7 + 40) = 0;
    *(v7 + 2464) = 0x4000000000000000;
    *(v7 + 2456) = 0x3FF0000000000000;
    *(v7 + 2480) = 0;
  }

  else
  {
    v9 = 2.0;
    if (!*(v7 + 2948))
    {
      v9 = 1.0;
      if (!*(v7 + 2952) && *(v7 + 2932) && ((*(v7 + 2940) - 2) & 0xFFFFFFFD) == 0)
      {
        v9 = 2.0;
      }
    }

    *(v7 + 2464) = v9;
    *(v7 + 40) = 0;
    *(v7 + 2480) = 1;
    if (*(v7 + 1400) != 1 && (*(v7 + 1396) & 2) == 0)
    {
      *(v7 + 1396) = 0x100000005;
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCCloseHandle(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149646338;
  }

  v2 = v1;
  CheckOutHandleDebug();
  v3 = reportingUnregisterPeriodicTask();
  if (*(v2 + 2832) || *(v2 + 2840) || *(v2 + 2848))
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v72 = v5;
    *&buf[80] = v5;
    v71 = v5;
    *&buf[48] = v5;
    *&buf[64] = v5;
    *&buf[16] = v5;
    *&buf[32] = v5;
    *buf = v5;
    v6 = micro(v3, v4);
    cStr = 0xAAAAAAAAAAAAAAAALL;
    VRLogfileGetTimestamp(buf, 0x80u);
    memset(v69, 170, 12);
    __sprintf_chk(v69, 0, 0xCuLL, "%010u", *(v2 + 2824));
    v7 = reportingGetUploadFlag() ? openLogDump(0, v69, 0, "AFRC-DashBoard.dump", 0, &cStr) : 0;
    VRLogfilePrintSync(*(v2 + 2832), "%s\t%8.3f\tEndOfFile\n", buf, v6);
    VRLogfileGetFilePointer(*(v2 + 2832));
    AFRCLog_TailFile(v7);
    VRLogfileFree((v2 + 2832));
    VRLogfilePrintSync(*(v2 + 2840), "%s\t%8.3f\tEndOfFile\n", buf, v6);
    VRLogfileGetFilePointer(*(v2 + 2840));
    AFRCLog_TailFile(v7);
    VRLogfileFree((v2 + 2840));
    VRLogfilePrintSync(*(v2 + 2848), "%s\t%8.3f\tEndOfFile\n", buf, v6);
    VRLogfileGetFilePointer(*(v2 + 2848));
    AFRCLog_TailFile(v7);
    VRLogfileFree((v2 + 2848));
    pthread_mutex_lock(&g_fpStallModeDumpOpenCloseLock);
    VRLogfileFree(&g_fpStallModeDump);
    pthread_mutex_unlock(&g_fpStallModeDumpOpenCloseLock);
    if (v7)
    {
      fclose(v7);
      v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
      reportingUploadFileWithName();
      if (v9)
      {
        CFRelease(v9);
      }

      free(cStr);
    }
  }

  RateMonitorDestroy(*(v2 + 9768));
  RateMonitorDestroy(*(v2 + 9784));
  if (*v2)
  {
    CFRelease(*v2);
  }

  pthread_mutex_destroy((v2 + 2864));
  pthread_mutex_destroy((v2 + 2560));
  pthread_mutex_destroy((v2 + 2744));
  pthread_mutex_destroy((v2 + 280));
  if (g_iBWEstLogLevel)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v11 = MEMORY[0x1E6986640];
    v12 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 8)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *v12;
      v15 = *v12;
      if (*v11 == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(v2 + 1128);
          v17 = *(v2 + 1136);
          v18 = *(v2 + 1132);
          v19 = *(v2 + 1140);
          v20 = *(v2 + 1148);
          v21 = *(v2 + 1144);
          v22 = *(v2 + 1152);
          v23 = *(v2 + 1160);
          *buf = 136317698;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = "BWEstUninit";
          *&buf[22] = 1024;
          *&buf[24] = 5966;
          *&buf[28] = 1024;
          *&buf[30] = v16;
          *&buf[34] = 1024;
          *&buf[36] = v17;
          *&buf[40] = 1024;
          *&buf[42] = v18;
          *&buf[46] = 1024;
          *&buf[48] = v19;
          *&buf[52] = 1024;
          *&buf[54] = v20;
          *&buf[58] = 1024;
          *&buf[60] = v21;
          *&buf[64] = 2048;
          *&buf[66] = v22 / v23;
          *&buf[74] = 1024;
          *&buf[76] = v23;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ////////////////// Loss event reports //////////////////////////\n///// Video: %d/%d   last seq#: %d \t\t Audio: %d/%d last seq#: %d\n///// Avg. BW: %f  \t  with %d reports\n///////////////////////////////////////////////////////\n", buf, 0x50u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        AFRCCloseHandle_cold_1();
      }
    }

    v24 = *(v2 + 1192);
    v25 = *(v2 + 1184);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v26 = v24 - v25;
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *v12;
      v29 = *v12;
      if (*v11 == 1)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(v2 + 1168);
          v31 = vcvtd_n_f64_s64(v30, 0xAuLL);
          v32 = *(v2 + 1136);
          v33 = (v30 / v32);
          v34 = (8 * v30) / v26;
          v35 = *(v2 + 1176);
          v36 = *(v2 + 1148);
          *buf = 136318466;
          *&buf[4] = v27;
          *&buf[12] = 2080;
          *&buf[14] = "BWEstUninit";
          *&buf[22] = 1024;
          *&buf[24] = 5975;
          *&buf[28] = 2048;
          *&buf[30] = v26;
          *&buf[38] = 2048;
          *&buf[40] = v31;
          *&buf[48] = 1024;
          *&buf[50] = v32;
          *&buf[54] = 1024;
          *&buf[56] = v33;
          *&buf[60] = 2048;
          *&buf[62] = v34;
          *&buf[70] = 2048;
          *&buf[72] = v32 / v26;
          *&buf[80] = 2048;
          *&buf[82] = vcvtd_n_f64_s64(v35, 0xAuLL);
          *&buf[90] = 1024;
          *&buf[92] = v36;
          LOWORD(v71) = 1024;
          *(&v71 + 2) = (v35 / v36);
          WORD3(v71) = 2048;
          *(&v71 + 1) = (8 * v35) / v26;
          LOWORD(v72) = 2048;
          *(&v72 + 2) = v36 / v26;
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d //////\n////// In %.1f seconds: Video: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n//////                  Audio: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n", buf, 0x7Au);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v52 = *(v2 + 1168);
        v53 = vcvtd_n_f64_s64(v52, 0xAuLL);
        v54 = *(v2 + 1136);
        v55 = (v52 / v54);
        v56 = (8 * v52) / v26;
        v57 = *(v2 + 1176);
        v58 = *(v2 + 1148);
        *buf = 136318466;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = "BWEstUninit";
        *&buf[22] = 1024;
        *&buf[24] = 5975;
        *&buf[28] = 2048;
        *&buf[30] = v26;
        *&buf[38] = 2048;
        *&buf[40] = v53;
        *&buf[48] = 1024;
        *&buf[50] = v54;
        *&buf[54] = 1024;
        *&buf[56] = v55;
        *&buf[60] = 2048;
        *&buf[62] = v56;
        *&buf[70] = 2048;
        *&buf[72] = v54 / v26;
        *&buf[80] = 2048;
        *&buf[82] = vcvtd_n_f64_s64(v57, 0xAuLL);
        *&buf[90] = 1024;
        *&buf[92] = v58;
        LOWORD(v71) = 1024;
        *(&v71 + 2) = (v57 / v58);
        WORD3(v71) = 2048;
        *(&v71 + 1) = (8 * v57) / v26;
        LOWORD(v72) = 2048;
        *(&v72 + 2) = v58 / v26;
        _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d //////\n////// In %.1f seconds: Video: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n//////                  Audio: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n", buf, 0x7Au);
      }
    }

    v37 = *(v2 + 1224);
    v38 = *(v2 + 1216);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v39 = v37 - v38;
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *v12;
      v42 = *v12;
      if (*v11 == 1)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(v2 + 1208);
          v44 = *(v2 + 1200) / v43;
          v45 = *(v2 + 1232);
          v46 = vcvtd_n_f64_s32(v45, 0xAuLL);
          v47 = *(v2 + 1236);
          v48 = (v45 / v47);
          v49 = (8 * v45) / v39;
          v50 = *(v2 + 1240);
          v51 = *(v2 + 1244);
          *buf = 136318978;
          *&buf[4] = v40;
          *&buf[12] = 2080;
          *&buf[14] = "BWEstUninit";
          *&buf[22] = 1024;
          *&buf[24] = 5987;
          *&buf[28] = 2048;
          *&buf[30] = v44;
          *&buf[38] = 1024;
          *&buf[40] = v43;
          *&buf[44] = 2048;
          *&buf[46] = v39;
          *&buf[54] = 2048;
          *&buf[56] = v46;
          *&buf[64] = 1024;
          *&buf[66] = v47;
          *&buf[70] = 1024;
          *&buf[72] = v48;
          *&buf[76] = 2048;
          *&buf[78] = v49;
          *&buf[86] = 2048;
          *&buf[88] = v47 / v39;
          LOWORD(v71) = 2048;
          *(&v71 + 2) = vcvtd_n_f64_s32(v50, 0xAuLL);
          WORD5(v71) = 1024;
          HIDWORD(v71) = v51;
          LOWORD(v72) = 1024;
          *(&v72 + 2) = (v50 / v51);
          WORD3(v72) = 2048;
          *(&v72 + 1) = (8 * v50) / v39;
          v73 = 2048;
          v74 = v51 / v39;
          _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d \n///// Avg. BW (ORG Scheme): %f  \t  with %d reports\n////// In %.1f seconds: Video: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n//////                  Audio: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n///////////////////////////////////////////////////////\n", buf, 0x8Au);
        }
      }

      else if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(v2 + 1208);
        v60 = *(v2 + 1200) / v59;
        v61 = *(v2 + 1232);
        v62 = vcvtd_n_f64_s32(v61, 0xAuLL);
        v63 = *(v2 + 1236);
        v64 = (v61 / v63);
        v65 = (8 * v61) / v39;
        v66 = *(v2 + 1240);
        v67 = *(v2 + 1244);
        *buf = 136318978;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = "BWEstUninit";
        *&buf[22] = 1024;
        *&buf[24] = 5987;
        *&buf[28] = 2048;
        *&buf[30] = v60;
        *&buf[38] = 1024;
        *&buf[40] = v59;
        *&buf[44] = 2048;
        *&buf[46] = v39;
        *&buf[54] = 2048;
        *&buf[56] = v62;
        *&buf[64] = 1024;
        *&buf[66] = v63;
        *&buf[70] = 1024;
        *&buf[72] = v64;
        *&buf[76] = 2048;
        *&buf[78] = v65;
        *&buf[86] = 2048;
        *&buf[88] = v63 / v39;
        LOWORD(v71) = 2048;
        *(&v71 + 2) = vcvtd_n_f64_s32(v66, 0xAuLL);
        WORD5(v71) = 1024;
        HIDWORD(v71) = v67;
        LOWORD(v72) = 1024;
        *(&v72 + 2) = (v66 / v67);
        WORD3(v72) = 2048;
        *(&v72 + 1) = (8 * v66) / v39;
        v73 = 2048;
        v74 = v67 / v39;
        _os_log_debug_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d \n///// Avg. BW (ORG Scheme): %f  \t  with %d reports\n////// In %.1f seconds: Video: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n//////                  Audio: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n///////////////////////////////////////////////////////\n", buf, 0x8Au);
      }
    }
  }

  VCPacketFilterGetCMBaseObject();
  free(v2);
  return 0;
}

uint64_t AFRCSetTxCap(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (!a2 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      AFRCSetTxCap_cold_1();
    }
  }

  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  v5 = *(v3 + 72);
  if (v5 >= 10000)
  {
    if (*(v3 + 2816))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315906;
          v19 = v6;
          v20 = 2080;
          v21 = "AFRCSetTxCap";
          v22 = 1024;
          v23 = 1594;
          v24 = 1024;
          v25 = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: Forcing AFRC TxCap to %u from defaults", &v18, 0x22u);
        }
      }
    }

    v2 = v5;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v4 + 20);
      v18 = 136316162;
      v19 = v8;
      v20 = 2080;
      v21 = "AFRCSetTxCap";
      v22 = 1024;
      v23 = 1597;
      v24 = 1024;
      v25 = v10;
      v26 = 1024;
      v27 = v2;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ### AFRCSetTxCap: (%u->%u)", &v18, 0x28u);
    }
  }

  pthread_mutex_lock((v4 + 2560));
  *(v4 + 20) = v2;
  *(v4 + 24) = v2;
  v11 = *(v4 + 28);
  v12 = g_adwTxRateTiers[v11];
  if (v12 <= v2)
  {
    v14 = *(v4 + 28);
  }

  else
  {
    v13 = *(v4 + 40);
    if (v11 >= v13)
    {
      v14 = *(v4 + 40);
    }

    else
    {
      v14 = *(v4 + 28);
    }

    if (v11 > v13)
    {
      v15 = v11;
      v16 = v11 - 1;
      while (1)
      {
        *(v4 + 28) = v16;
        v12 = g_adwTxRateTiers[v15 - 1];
        if (v12 <= v2)
        {
          break;
        }

        --v15;
        --v16;
        if (v15 <= v13)
        {
          goto LABEL_27;
        }
      }

      v14 = v16;
    }
  }

LABEL_27:
  *(v4 + 36) = v14;
  *(v4 + 44) = v12;
  pthread_mutex_unlock((v4 + 2560));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetLastEchoedMyTxTS(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  if (a2)
  {
    *a2 = *(v3 + 260);
  }

  CheckOutHandleDebug();
  return 0;
}

void UpdateRxEstimate(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, __n128 a6, __n128 a7, __n128 a8)
{
  v9 = a8.n128_f64[0];
  v10 = a3;
  v11 = a2;
  v12 = a7.n128_f64[0];
  v13 = a6.n128_f64[0];
  v66 = *MEMORY[0x1E69E9840];
  if (*(a1 + 316) == 1)
  {
    UpdateRxEstimate_v1(a1, a2, a3, a4, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0]);
    *(a1 + 224) = *(a1 + 280);
    return;
  }

  if (*(a1 + 317) == 1)
  {
    v54 = -1;
    UpdateRxEstimate_v1(a1, a2, a3, &v54, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0]);
  }

  v16 = *(a1 + 8);
  if (v16 == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = 3;
  }

  v18 = *(a1 + 224);
  if (v18 != 0.0)
  {
    if (!v11 || v10 <= 249)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        v33 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v54 = 136316418;
            v55 = v31;
            v56 = 2080;
            v57 = "UpdateRxEstimate";
            v58 = 1024;
            v59 = 1909;
            v60 = 1024;
            v61 = v10;
            v62 = 2048;
            v63 = v12;
            v64 = 1024;
            v65 = v11;
            _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d *!*!*!* UpdateRxEstimate: too short Seq; ------ dBWD: 0 (%d/%f/%d) ", &v54, 0x32u);
          }
        }

        else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v54 = 136316418;
          v55 = v31;
          v56 = 2080;
          v57 = "UpdateRxEstimate";
          v58 = 1024;
          v59 = 1909;
          v60 = 1024;
          v61 = v10;
          v62 = 2048;
          v63 = v12;
          v64 = 1024;
          v65 = v11;
          _os_log_debug_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d *!*!*!* UpdateRxEstimate: too short Seq; ------ dBWD: 0 (%d/%f/%d) ", &v54, 0x32u);
        }
      }

      return;
    }

    if (dbl_1DBD45C40[v16 == 2] <= v12)
    {
      *(a1 + 256) = 0;
    }

    else
    {
      v25 = *(a1 + 256);
      if (v25 < v17)
      {
        *(a1 + 256) = ++v25;
      }

      if (v25 < v17)
      {
        return;
      }
    }
  }

  if (v13 <= 0.0)
  {
    return;
  }

  v19 = 400000.0;
  if (a5)
  {
    v19 = 800000.0;
  }

  if (v16 != 2)
  {
    v19 = 5000000.0;
  }

  if (v19 >= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v19;
  }

  *(a1 + 432) = *(a1 + 432) + v13;
  ++*(a1 + 440);
  if (v16 == 2)
  {
    if ((*(a1 + 13) & 1) == 0)
    {
      v35 = v19 * 0.5;
      if (v20 <= v19 * 0.5)
      {
        v35 = v20;
      }

      v36 = v35 + *(a1 + 232);
      *(a1 + 232) = v36;
      v37 = *(a1 + 240);
      *(a1 + 240) = v37 + 1;
      if (v37 > 8 || v9 - *(a1 + 248) >= 7.0)
      {
        *(a1 + 13) = 1;
        *(a1 + 224) = v36 / (v37 + 1);
        *(a1 + 248) = 0;
        *(a1 + 240) = 0;
      }

      return;
    }

    v21 = 7.0;
    v22 = 10.0;
    v23 = 6;
    v24 = 100000.0;
  }

  else
  {
    if (v16 == 1)
    {
      v23 = 4;
    }

    else
    {
      v23 = 3;
    }

    v24 = 0.0;
    v22 = 4.0;
    if (v16 != 1)
    {
      v22 = 0.0;
    }

    v21 = v22;
  }

  v26 = v20 <= v18 * 0.5;
  if (v18 - v20 > 200000.0)
  {
    v26 = 1;
  }

  v27 = v20 - v18 > 200000.0 || v20 >= v18 * 1.5;
  v28 = v18 - v20 > v24 && v26;
  v29 = v20 - v18 > v24 && v27;
  if (v18 == 0.0)
  {
    v30 = 100000.0;
    if (v20 >= 100000.0)
    {
      v30 = v20;
    }

    *(a1 + 224) = v30;
    *a4 = 0;
    return;
  }

  if (!v28 && !v29)
  {
    if (v16 == 2)
    {
      v38 = *(a1 + 136);
      if (v38 >= 1)
      {
        v39 = (a1 + 16);
        do
        {
          v40 = *v39++;
          v18 = v40 * 0.05 + v18 * 0.95;
          --v38;
        }

        while (v38);
        *(a1 + 136) = 0;
      }

      v41 = v20 * 0.075;
      v42 = 0.925;
    }

    else
    {
      v41 = v20 * 0.1;
      v42 = 0.9;
    }

    *(a1 + 224) = v41 + v18 * v42;
    *(a1 + 240) = 0;
    *(a1 + 232) = 0;
    v45 = 1;
    goto LABEL_102;
  }

  if ((v16 - 1) > 1)
  {
    v34 = 0;
  }

  else
  {
    if (*(a1 + 240) < 0)
    {
      v22 = v21;
    }

    v34 = v9 - *(a1 + 248) < v22;
  }

  if (v28)
  {
    v43 = *(a1 + 240);
    if (v43 < 0)
    {
      v44 = v43 - 1;
    }

    else
    {
      *(a1 + 232) = 0;
      *(a1 + 248) = v9;
      v44 = -1;
    }

    *(a1 + 240) = v44;
    v48 = -10;
  }

  else
  {
    if (!v29)
    {
      goto LABEL_86;
    }

    v46 = *(a1 + 240);
    if (v46 <= 0)
    {
      *(a1 + 232) = 0;
      *(a1 + 248) = v9;
      v47 = 1;
    }

    else
    {
      v47 = v46 + 1;
    }

    *(a1 + 240) = v47;
    v48 = 10;
  }

  *a4 = v48;
LABEL_86:
  v49 = v20 + *(a1 + 232);
  *(a1 + 232) = v49;
  v50 = *(a1 + 240);
  if ((v50 & 0x80000000) != 0)
  {
    v50 = -v50;
  }

  if (*(a1 + 8) == 2)
  {
    v51 = *(a1 + 136);
    if (v51 <= 29)
    {
      *(a1 + 4 * v51 + 16) = v20;
      ++*(a1 + 136);
    }
  }

  if (v50 >= v23 && !v34)
  {
    if (*(a1 + 8) == 2)
    {
      v52 = v49 / v50;
      if ((*(a1 + 240) & 0x80000000) == 0)
      {
        v52 = v52 * 0.9 + v18 * 0.1;
      }
    }

    else
    {
      v52 = v49 / v50;
    }

    *(a1 + 224) = v52;
    *(a1 + 240) = 0;
    *(a1 + 232) = 0;
    if (*a4 == -10)
    {
      v53 = -100;
    }

    else
    {
      v53 = 200;
    }

    if (*a4 == 10)
    {
      v45 = 100;
    }

    else
    {
      v45 = v53;
    }

LABEL_102:
    *a4 = v45;
  }
}

uint64_t UpdateRxEstimate_v1(uint64_t result, int a2, int a3, int *a4, double a5, double a6, double a7)
{
  v8 = *(result + 280);
  if (v8 != 0.0)
  {
    if (!a2 || a3 < 250)
    {
      return result;
    }

    if (a6 >= 0.008)
    {
      *(result + 312) = 0;
    }

    else
    {
      v14 = *(result + 312);
      if (v14 <= 2)
      {
        *(result + 312) = v14 + 1;
        if (v14 != 2)
        {
          return result;
        }
      }
    }
  }

  if (a5 <= 0.0)
  {
    return result;
  }

  v9 = 2300000.0;
  if (a5 <= 2300000.0)
  {
    v9 = a5;
  }

  v10 = v9 <= v8 * 0.5;
  if (v8 - v9 > 200000.0)
  {
    v10 = 1;
  }

  v11 = v9 >= v8 * 1.5;
  if (v9 - v8 > 200000.0)
  {
    v11 = 1;
  }

  if (v8 == 0.0)
  {
    v12 = 0;
    v13 = 100000.0;
    if (v9 >= 100000.0)
    {
      v13 = v9;
    }

    *(result + 280) = v13;
    goto LABEL_43;
  }

  if (!v10 && !v11)
  {
    *(result + 280) = v9 * 0.1 + v8 * 0.9;
    *(result + 296) = 0;
    *(result + 288) = 0;
    v12 = 1;
LABEL_43:
    *a4 = v12;
    return result;
  }

  if (v10)
  {
    v15 = *(result + 296);
    if (v15 < 0)
    {
      v16 = v15 - 1;
    }

    else
    {
      *(result + 288) = 0;
      *(result + 304) = a7;
      v16 = -1;
    }

    *(result + 296) = v16;
    v19 = -10;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_34;
    }

    v17 = *(result + 296);
    if (v17 <= 0)
    {
      *(result + 288) = 0;
      *(result + 304) = a7;
      v18 = 1;
    }

    else
    {
      v18 = v17 + 1;
    }

    *(result + 296) = v18;
    v19 = 10;
  }

  *a4 = v19;
LABEL_34:
  v20 = v9 + *(result + 288);
  *(result + 288) = v20;
  v21 = *(result + 296);
  if (v21 < 0)
  {
    v21 = -v21;
  }

  if (v21 >= 3)
  {
    *(result + 280) = v20 / v21;
    *(result + 296) = 0;
    *(result + 288) = 0;
    if (*a4 == -10)
    {
      v22 = -100;
    }

    else
    {
      v22 = 200;
    }

    if (*a4 == 10)
    {
      v12 = 100;
    }

    else
    {
      v12 = v22;
    }

    goto LABEL_43;
  }

  return result;
}

uint64_t AFRCCalcRxEstimate(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8)
{
  v159 = *MEMORY[0x1E69E9840];
  v15 = CheckInHandleDebug();
  if (!v15)
  {
    return 2149646338;
  }

  v16 = v15;
  pthread_mutex_lock((v15 + 280));
  bzero(v141, 0x400uLL);
  v20 = *(v16 + 721);
  v21 = &kVCSessionPresentationInfoUIState;
  if (v20 == 1)
  {
    if ((*(v16 + 980) & 1) == 0)
    {
      v22 = a7 - 1;
      if (!a6)
      {
        v22 = a3;
      }

      *(v16 + 984) = v22;
      *(v16 + 1256) = a3 - 1;
      *(v16 + 1260) = a3 - 1;
      *(v16 + 1264) = a8;
      *(v16 + 1356) = 0;
      v17.n128_u64[1] = 0;
      *(v16 + 1272) = 0;
      *(v16 + 733) = 0;
      *(v16 + 968) = a8;
      *(v16 + 960) = 0;
      *(v16 + 856) = 0;
      *(v16 + 980) = 1;
    }

    v140 = a4;
    if (*(v16 + 1248) != 1)
    {
LABEL_47:
      v51 = *(v16 + 988);
      v52 = *(v16 + 992);
      if (a6 && *(v16 + 984) == a7)
      {
        v53 = *(v16 + 920);
        if (v53 < a8)
        {
          v53 = a8;
        }

        *(v16 + 920) = v53;
        *(v16 + 988) = v51 + a5;
        *(v16 + 992) = v52 + 1;
        *buf = -1;
        v54 = 0.0;
      }

      else
      {
        v55 = 0.0;
        if (v51)
        {
          v56 = *(v16 + 920) - *(v16 + 912);
          if (v51 >= 251)
          {
            v55 = (8 * v51) / v56;
          }
        }

        else
        {
          v56 = 0.0;
        }

        *(v16 + 984) = a3;
        *(v16 + 988) = 0;
        *(v16 + 912) = a8;
        *(v16 + 928) = a5;
        *(v16 + 920) = 0;
        *buf = -1;
        if (v55 <= 0.0)
        {
          v54 = v55;
        }

        else
        {
          *(v16 + 680) = v55;
          v17.n128_f64[0] = v55;
          v18.n128_f64[0] = v56;
          v19.n128_f64[0] = a8;
          UpdateRxEstimate(v16 + 720, v52, v51, buf, *(v16 + 9701), v17, v18, v19);
          v54 = v57;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v139 = a5;
            v58 = VRTraceErrorLogLevelToCSTR();
            v59 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v60 = *(v16 + 960);
              v61 = *(v16 + 944);
              *v156 = 136317698;
              *&v156[4] = v58;
              *&v156[12] = 2080;
              *&v156[14] = "AFRCCalcRxEstimate_New";
              *&v156[22] = 1024;
              *&v156[24] = 2309;
              *&v156[28] = 2048;
              *&v156[30] = a8;
              *&v156[38] = 2048;
              *&v156[40] = v54;
              *&v156[48] = 1024;
              *&v156[50] = *buf;
              *&v156[54] = 1024;
              *&v156[56] = v60;
              *&v156[60] = 2048;
              *&v156[62] = v56;
              *&v156[70] = 1024;
              *&v156[72] = v51;
              *&v156[76] = 1024;
              *&v156[78] = v52;
              *&v156[82] = 2048;
              *&v156[84] = v61;
              _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ArrivalTime:%.4f, BWD:%.2f, state:%d, divergeCount:%d prob_seq:[duration:%.4f, size:%d, count:%d], EstimatedBandwidth:%.2f", v156, 0x5Cu);
            }

            a5 = v139;
          }

          v21 = &kVCSessionPresentationInfoUIState;
        }
      }

      if (!*(v21 + 1014))
      {
        goto LABEL_93;
      }

      v62 = *(v16 + 1116);
      switch(v62)
      {
        case 0:
          goto LABEL_67;
        case -2:
          v65 = v140;
          v64 = a5;
          if (v54 != 0.0)
          {
            __sprintf_chk(v141, 0, 0x400uLL, "NEW AFRCCalcRxEstimate: [%d]  (%d %d)  //////\n");
            goto LABEL_70;
          }

          v141[0] = 0;
          break;
        case -3:
LABEL_67:
          v63 = *(v16 + 1384);
          *(v16 + 1384) = v63 + 1;
          v64 = a5;
          v65 = v140;
          __sprintf_chk(v141, 0, 0x400uLL, "NEW AFRCCalcRxEstimate [%d]: [%f] //////\n/////tp: %d  ts/arr: %d/%f \t seq: %d sz: %d \t Probe: %d/%d \t path: %d (%d)  BWD: %f/%f  Est: %f\n///// \t TS: %d  \t arrival: %f/%f \t total: %d/%d (%.1f ms) ref_size: %d\n", v63, *&a8, a2, a3, *&a8);
LABEL_70:
          v21 = &kVCSessionPresentationInfoUIState;
          break;
        default:
          v64 = a5;
          __sprintf_chk(v141, 0, 0x400uLL, "NEW AFRCCalcRxEstimate: [%d]  //////\n", *(v16 + 944));
          v21 = &kVCSessionPresentationInfoUIState;
          v65 = v140;
          break;
      }

      if (a2 == 1)
      {
        v66 = 1128;
      }

      else
      {
        v66 = 1140;
      }

      v67 = 1148;
      if (a2 == 1)
      {
        v67 = 1136;
      }

      v68 = *(v16 + v67);
      if (a2 == 1)
      {
        v69 = 1132;
      }

      else
      {
        v69 = 1144;
      }

      *(v16 + v67) = v68 + 1;
      if (*(v16 + v69) && v65 - *(v16 + v69) >= 2)
      {
        if (*(v16 + 1116) <= 0)
        {
          *&v70 = 0xAAAAAAAAAAAAAAAALL;
          *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v156[240] = v70;
          *&v156[224] = v70;
          *&v156[208] = v70;
          *&v156[192] = v70;
          *&v156[176] = v70;
          *&v156[160] = v70;
          *&v156[144] = v70;
          *&v156[128] = v70;
          *&v156[112] = v70;
          *&v156[96] = v70;
          *&v156[80] = v70;
          *&v156[64] = v70;
          *&v156[48] = v70;
          *&v156[32] = v70;
          *&v156[16] = v70;
          *v156 = v70;
          __sprintf_chk(v156, 0, 0x100uLL, "///// \t LOSS [%d/%d] @ %d: //////\n", *(v16 + v66), v68 + 1, v65);
          __strlcat_chk(v141, v156, 1024, 1024);
          v21 = &kVCSessionPresentationInfoUIState;
        }

        ++*(v16 + v66);
      }

      *(v16 + v69) = v65;
      if (*(v16 + 1184) == 0.0)
      {
        *(v16 + 1184) = a8;
      }

      *(v16 + 1192) = a8;
      a5 = v64;
      if (a2 == 1)
      {
        v71 = 1168;
      }

      else
      {
        if (a2)
        {
LABEL_93:
          v20 = *(v16 + 721);
          a4 = v140;
          goto LABEL_94;
        }

        v71 = 1176;
      }

      *(v16 + v71) += v64;
      goto LABEL_93;
    }

    v23 = *(v16 + 1256);
    if (v23 == a3 || v23 == *(v16 + 1260))
    {
LABEL_43:
      if (a2 == 1)
      {
        v50 = *(v16 + 1356);
        if (!v50)
        {
          *(v16 + 1360) = a8;
        }

        *(v16 + 1368) = a8;
        *(v16 + 1356) = v50 + a5;
        *(v16 + 1376) = a6;
        *(v16 + 1256) = a3;
      }

      goto LABEL_47;
    }

    v24 = *(v16 + 944);
    v25 = *(v16 + 1368) - *(v16 + 1360);
    v26 = 0.0;
    if (v24 > 0.0)
    {
      v26 = (8 * *(v16 + 1356)) / v24;
    }

    if (v26 > v25)
    {
      v25 = v26;
    }

    if (v25 >= 0.1)
    {
      v27 = *(v16 + 1272);
      if (v27 <= 14)
      {
        v28 = v16 + 2 * v27;
        *(v28 + 1280) = *(v16 + 1356);
        *(v28 + 1310) = (v25 * 1000.0);
        *(v16 + v27 + 1340) = *(v16 + 1376);
      }

      *(v16 + 1272) = v27 + 1;
    }

    ++*(v16 + 1276);
    if (a8 - *(v16 + 1264) <= 5.0)
    {
LABEL_42:
      *(v16 + 1260) = v23;
      *(v16 + 1356) = 0;
      goto LABEL_43;
    }

    v29 = *(v16 + 1272);
    if (v29 < 1)
    {
LABEL_41:
      *(v16 + 1276) = 0;
      *(v16 + 1264) = a8;
      goto LABEL_42;
    }

    v138 = a5;
    memset(v158, 170, 18);
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v157 = v30;
    *&v157[15] = v30;
    *&v156[241] = v30;
    *&v156[225] = v30;
    *&v156[209] = v30;
    *&v156[193] = v30;
    *&v156[177] = v30;
    *&v156[161] = v30;
    *&v156[145] = v30;
    *&v156[129] = v30;
    *&v156[113] = v30;
    *&v156[97] = v30;
    *&v156[81] = v30;
    *&v156[65] = v30;
    *&v156[49] = v30;
    *&v156[33] = v30;
    if (v29 >= 0xF)
    {
      v31 = 15;
    }

    else
    {
      v31 = v29;
    }

    *&v156[17] = v30;
    v32 = (v16 + 1280);
    v33 = (v16 + 1340);
    *&v156[1] = v30;
    v156[0] = 0;
    do
    {
      v34 = v32[15];
      v36 = *v32++;
      v35 = v36;
      if (*v33++)
      {
        v38 = 33;
      }

      else
      {
        v38 = 32;
      }

      __sprintf_chk(v158, 0, 0x12uLL, "%ums(%u)%c ", v34, v35, v38);
      __strlcat_chk(v156, v158, 288, 288);
      --v31;
    }

    while (v31);
    v39 = g_iBWEstLogLevel;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v39)
    {
      a5 = v138;
      if (ErrorLogLevelForModule < 8)
      {
        goto LABEL_40;
      }

      v41 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      v43 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v136 = *(v16 + 1272);
          v137 = *(v16 + 1276);
          *buf = 136316674;
          v143 = v41;
          v144 = 2080;
          v145 = "UpdateBigFrameReporter";
          v146 = 1024;
          v147 = 1670;
          v148 = 2048;
          v149 = a8;
          v150 = 1024;
          v151 = v136;
          v152 = 1024;
          v153 = v137;
          v154 = 2080;
          v155 = v156;
          _os_log_debug_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d \t\tBIG FRAME report at %.3f, %d/%d frames: %s", buf, 0x3Cu);
        }

        goto LABEL_40;
      }

      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
LABEL_40:
        *(v16 + 1272) = 0;
        v23 = *(v16 + 1256);
        v21 = &kVCSessionPresentationInfoUIState;
        goto LABEL_41;
      }

      v44 = *(v16 + 1272);
      v45 = *(v16 + 1276);
      *buf = 136316674;
      v143 = v41;
      v144 = 2080;
      v145 = "UpdateBigFrameReporter";
      v146 = 1024;
      v147 = 1670;
      v148 = 2048;
      v149 = a8;
      v150 = 1024;
      v151 = v44;
      v152 = 1024;
      v153 = v45;
      v154 = 2080;
      v155 = v156;
    }

    else
    {
      a5 = v138;
      if (ErrorLogLevelForModule < 7)
      {
        goto LABEL_40;
      }

      v47 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v48 = *(v16 + 1272);
      v49 = *(v16 + 1276);
      *buf = 136316674;
      v143 = v47;
      v144 = 2080;
      v145 = "UpdateBigFrameReporter";
      v146 = 1024;
      v147 = 1673;
      v148 = 2048;
      v149 = a8;
      v150 = 1024;
      v151 = v48;
      v152 = 1024;
      v153 = v49;
      v154 = 2080;
      v155 = v156;
    }

    _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d \t\tBIG FRAME report at %.3f, %d/%d frames: %s", buf, 0x3Cu);
    goto LABEL_40;
  }

LABEL_94:
  v72 = *(v16 + 936);
  if (v20)
  {
    v73 = *(v21 + 1014) == 0;
  }

  else
  {
    v73 = 0;
  }

  if (v73)
  {
    goto LABEL_224;
  }

  v74 = (v16 + 352);
  if (a2 == 1 && *(v16 + 704) == a3)
  {
    v75 = 0.0;
    v76 = 0;
    if ((a4 - *(v16 + 344)) <= 0x13u)
    {
      v77 = &v74[(a4 - *(v16 + 344))];
      *v77 = a8;
      *(v77 + 2) += a5;
    }

    goto LABEL_114;
  }

  v75 = 0.0;
  if (*(v16 + 360) < 1)
  {
    v76 = 0;
  }

  else
  {
    v76 = 0;
    v78 = (v16 + 376);
    v79 = 19;
    v80 = *(v16 + 352);
    v81 = (v16 + 376);
    do
    {
      v83 = *v81;
      v81 += 4;
      v82 = v83;
      if (v83 < 1)
      {
        break;
      }

      v76 += v82;
      if (*(v78 - 1) > v80)
      {
        v80 = *(v78 - 1);
      }

      v78 = v81;
      --v79;
    }

    while (v79);
    v84 = v80 - *(v16 + 352);
    if (v84 > 0.0 && v76 >= 251)
    {
      v75 = (8 * v76) / v84;
    }
  }

  *(v16 + 640) = 0u;
  *(v16 + 656) = 0u;
  *(v16 + 608) = 0u;
  *(v16 + 624) = 0u;
  *(v16 + 576) = 0u;
  *(v16 + 592) = 0u;
  *(v16 + 544) = 0u;
  *(v16 + 560) = 0u;
  *(v16 + 512) = 0u;
  *(v16 + 528) = 0u;
  *(v16 + 480) = 0u;
  *(v16 + 496) = 0u;
  *(v16 + 448) = 0u;
  *(v16 + 464) = 0u;
  *(v16 + 416) = 0u;
  *(v16 + 432) = 0u;
  *(v16 + 384) = 0u;
  *(v16 + 400) = 0u;
  *v74 = 0u;
  *(v16 + 368) = 0u;
  if (a2 == 1)
  {
    *(v16 + 352) = a8;
    *(v16 + 360) = a5;
    *(v16 + 348) = 1;
    *(v16 + 344) = a4;
LABEL_114:
    *(v16 + 704) = a3;
  }

  if (v75 <= 0.0)
  {
    if (!*(v21 + 1014))
    {
      goto LABEL_224;
    }

    v85 = a5;
    v89 = *(v16 + 708);
    v86 = -1;
    v88 = v75;
  }

  else
  {
    if (v72 == 0.0)
    {
      v85 = a5;
      v86 = 0;
      v87 = 100000.0;
      if (v75 >= 100000.0)
      {
        v87 = v75;
      }

      if (v75 <= 1000000.0)
      {
        v72 = v87;
      }

      else
      {
        v72 = 1000000.0;
      }

      v88 = v75;
    }

    else
    {
      v90 = v72 * 0.5;
      v91 = v72 * 1.5;
      if (v75 > v72 * 0.5 && v75 < v91)
      {
        v85 = a5;
        if (v72 <= 300000.0)
        {
          v96 = (v72 * 0.02 * 0.125);
          if (v96 <= 250)
          {
            v96 = 250;
          }
        }

        else
        {
          v96 = 750;
        }

        v97 = 1000000.0;
        if (v75 <= 1000000.0)
        {
          v97 = v75;
        }

        if (v76 <= v96)
        {
          v88 = v75;
        }

        else
        {
          v72 = v97 * 0.05 + v72 * 0.95;
          v88 = v97;
        }

        *(v16 + 708) = 0;
        *(v16 + 696) = 0;
        v86 = 1;
      }

      else
      {
        if (v75 > v90)
        {
          v95 = *(v16 + 708);
          v85 = a5;
          if (v75 >= v91)
          {
            if (v95 <= 0)
            {
              *(v16 + 696) = 0;
              v95 = 1;
              *(v16 + 708) = 1;
              *(v16 + 712) = a8;
            }

            else
            {
              *(v16 + 708) = ++v95;
            }

            v86 = 10;
            v94 = 1;
          }

          else
          {
            v94 = 0;
            v86 = -1;
          }
        }

        else
        {
          v85 = a5;
          v93 = *(v16 + 708);
          v94 = 0;
          if (v93 < 0)
          {
            v95 = v93 - 1;
            *(v16 + 708) = v95;
          }

          else
          {
            *(v16 + 696) = 0;
            v95 = -1;
            *(v16 + 708) = -1;
            *(v16 + 712) = a8;
          }

          v86 = -10;
        }

        if (v75 <= 1000000.0)
        {
          v88 = v75;
        }

        else
        {
          v88 = 1000000.0;
        }

        v98 = v88 + *(v16 + 696);
        *(v16 + 696) = v98;
        if (v95 < 0)
        {
          v95 = -v95;
        }

        v99 = a8 - *(v16 + 712);
        if (v99 <= 5.0)
        {
          if (v95 > 9 || v95 >= 5 && v99 > 3.0)
          {
            v72 = v98 / v95;
            *(v16 + 708) = 0;
            *(v16 + 696) = 0;
            if (v75 > v90)
            {
              v100 = 200;
            }

            else
            {
              v100 = -100;
            }

            if (v94)
            {
              v86 = 100;
            }

            else
            {
              v86 = v100;
            }
          }
        }

        else
        {
          *(v16 + 708) = 0;
          *(v16 + 696) = 0;
        }
      }
    }

    if (!*(v21 + 1014))
    {
      goto LABEL_224;
    }

    v89 = *(v16 + 708);
    *(v16 + 1200) = v75 + *(v16 + 1200);
    ++*(v16 + 1208);
  }

  if (*(v16 + 1216) == 0.0)
  {
    *(v16 + 1216) = a8;
  }

  *(v16 + 1224) = a8;
  if (a2 == 1)
  {
    v101 = 1236;
    v102 = 1232;
  }

  else
  {
    if (a2)
    {
      goto LABEL_175;
    }

    v101 = 1244;
    v102 = 1240;
  }

  *(v16 + v102) += v85;
  ++*(v16 + v101);
LABEL_175:
  v103 = *(v16 + 1116);
  if (v20)
  {
    if ((v103 + 3) >= 2)
    {
      if (v103 != -1)
      {
        if (!v103)
        {
          if (VRTraceGetErrorLogLevelForModule() < 8)
          {
            goto LABEL_224;
          }

          v104 = VRTraceErrorLogLevelToCSTR();
          v105 = *MEMORY[0x1E6986650];
          v106 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
            {
              v107 = *(v16 + 1384);
              *(v16 + 1384) = v107 + 1;
              *v156 = 136318722;
              *&v156[4] = v104;
              *&v156[12] = 2080;
              *&v156[14] = "AFRCCalcRxEstimate";
              *&v156[22] = 1024;
              *&v156[24] = 2598;
              *&v156[28] = 1024;
              *&v156[30] = v107;
              *&v156[34] = 1024;
              *&v156[36] = a2;
              *&v156[40] = 1024;
              *&v156[42] = a3;
              *&v156[46] = 2048;
              *&v156[48] = a8;
              *&v156[56] = 1024;
              *&v156[58] = a4;
              *&v156[62] = 1024;
              *&v156[64] = v85;
              *&v156[68] = 1024;
              *&v156[70] = v86;
              *&v156[74] = 1024;
              *&v156[76] = v89;
              *&v156[80] = 2048;
              *&v156[82] = v75;
              *&v156[90] = 2048;
              *&v156[92] = v88;
              *&v156[100] = 2048;
              *&v156[102] = v72;
              *&v156[110] = 2080;
              *&v156[112] = v141;
              v108 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\n/////tp: %d  ts/arr: %d/%f \t seq: %d sz: %d \t path: %d (%d)  BWD: %f/%f  Est: %f\n%s";
              v109 = v105;
              v110 = 120;
LABEL_200:
              _os_log_impl(&dword_1DB56E000, v109, OS_LOG_TYPE_DEFAULT, v108, v156, v110);
              goto LABEL_224;
            }

            goto LABEL_224;
          }

          if (!os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_224;
          }

          v135 = *(v16 + 1384);
          *(v16 + 1384) = v135 + 1;
          *v156 = 136318722;
          *&v156[4] = v104;
          *&v156[12] = 2080;
          *&v156[14] = "AFRCCalcRxEstimate";
          *&v156[22] = 1024;
          *&v156[24] = 2598;
          *&v156[28] = 1024;
          *&v156[30] = v135;
          *&v156[34] = 1024;
          *&v156[36] = a2;
          *&v156[40] = 1024;
          *&v156[42] = a3;
          *&v156[46] = 2048;
          *&v156[48] = a8;
          *&v156[56] = 1024;
          *&v156[58] = a4;
          *&v156[62] = 1024;
          *&v156[64] = v85;
          *&v156[68] = 1024;
          *&v156[70] = v86;
          *&v156[74] = 1024;
          *&v156[76] = v89;
          *&v156[80] = 2048;
          *&v156[82] = v75;
          *&v156[90] = 2048;
          *&v156[92] = v88;
          *&v156[100] = 2048;
          *&v156[102] = v72;
          *&v156[110] = 2080;
          *&v156[112] = v141;
          v128 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\n/////tp: %d  ts/arr: %d/%f \t seq: %d sz: %d \t path: %d (%d)  BWD: %f/%f  Est: %f\n%s";
          v129 = v105;
          v130 = 120;
LABEL_233:
          _os_log_debug_impl(&dword_1DB56E000, v129, OS_LOG_TYPE_DEBUG, v128, v156, v130);
          goto LABEL_224;
        }

        if (a8 - *(v16 + 1120) <= v103 / 1000000.0)
        {
          goto LABEL_224;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_223;
      }

      v125 = VRTraceErrorLogLevelToCSTR();
      v122 = *MEMORY[0x1E6986650];
      v126 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          *v156 = 136316162;
          *&v156[4] = v125;
          *&v156[12] = 2080;
          *&v156[14] = "AFRCCalcRxEstimate";
          *&v156[22] = 1024;
          *&v156[24] = 2613;
          *&v156[28] = 1024;
          *&v156[30] = v72;
          *&v156[34] = 2080;
          *&v156[36] = v141;
          v124 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\t\t%s";
          goto LABEL_212;
        }

        goto LABEL_223;
      }

      if (!os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_223;
      }

      *v156 = 136316162;
      *&v156[4] = v125;
      *&v156[12] = 2080;
      *&v156[14] = "AFRCCalcRxEstimate";
      *&v156[22] = 1024;
      *&v156[24] = 2613;
      *&v156[28] = 1024;
      *&v156[30] = v72;
      *&v156[34] = 2080;
      *&v156[36] = v141;
      v132 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\t\t%s";
      goto LABEL_235;
    }

    if (!v141[0] || VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_224;
    }

    v115 = VRTraceErrorLogLevelToCSTR();
    v112 = *MEMORY[0x1E6986650];
    v116 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_224;
      }

      *v156 = 136316162;
      *&v156[4] = v115;
      *&v156[12] = 2080;
      *&v156[14] = "AFRCCalcRxEstimate";
      *&v156[22] = 1024;
      *&v156[24] = 2606;
      *&v156[28] = 1024;
      *&v156[30] = v72;
      *&v156[34] = 2080;
      *&v156[36] = v141;
      v114 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
      goto LABEL_195;
    }

    if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_224;
    }

    *v156 = 136316162;
    *&v156[4] = v115;
    *&v156[12] = 2080;
    *&v156[14] = "AFRCCalcRxEstimate";
    *&v156[22] = 1024;
    *&v156[24] = 2606;
    *&v156[28] = 1024;
    *&v156[30] = v72;
    *&v156[34] = 2080;
    *&v156[36] = v141;
    v131 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
    goto LABEL_221;
  }

  if (v103)
  {
    if (v103 != -2 || !v141[0])
    {
      if (v103 != -1 && a8 - *(v16 + 1120) <= v103 / 1000000.0)
      {
        goto LABEL_224;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_223;
      }

      v121 = VRTraceErrorLogLevelToCSTR();
      v122 = *MEMORY[0x1E6986650];
      v123 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          *v156 = 136316162;
          *&v156[4] = v121;
          *&v156[12] = 2080;
          *&v156[14] = "AFRCCalcRxEstimate";
          *&v156[22] = 1024;
          *&v156[24] = 2644;
          *&v156[28] = 1024;
          *&v156[30] = v72;
          *&v156[34] = 2080;
          *&v156[36] = v141;
          v124 = "VCRC [%s] %s:%d \t\t\t\t AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
LABEL_212:
          _os_log_impl(&dword_1DB56E000, v122, OS_LOG_TYPE_DEFAULT, v124, v156, 0x2Cu);
        }

LABEL_223:
        *(v16 + 1120) = a8;
        goto LABEL_224;
      }

      if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_223;
      }

      *v156 = 136316162;
      *&v156[4] = v121;
      *&v156[12] = 2080;
      *&v156[14] = "AFRCCalcRxEstimate";
      *&v156[22] = 1024;
      *&v156[24] = 2644;
      *&v156[28] = 1024;
      *&v156[30] = v72;
      *&v156[34] = 2080;
      *&v156[36] = v141;
      v132 = "VCRC [%s] %s:%d \t\t\t\t AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
LABEL_235:
      _os_log_debug_impl(&dword_1DB56E000, v122, OS_LOG_TYPE_DEBUG, v132, v156, 0x2Cu);
      goto LABEL_223;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_224;
    }

    v111 = VRTraceErrorLogLevelToCSTR();
    v112 = *MEMORY[0x1E6986650];
    v113 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_224;
      }

      *v156 = 136316162;
      *&v156[4] = v111;
      *&v156[12] = 2080;
      *&v156[14] = "AFRCCalcRxEstimate";
      *&v156[22] = 1024;
      *&v156[24] = 2638;
      *&v156[28] = 1024;
      *&v156[30] = v72;
      *&v156[34] = 2080;
      *&v156[36] = v141;
      v114 = "VCRC [%s] %s:%d \t\t\t\t AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
LABEL_195:
      _os_log_impl(&dword_1DB56E000, v112, OS_LOG_TYPE_DEFAULT, v114, v156, 0x2Cu);
      goto LABEL_224;
    }

    if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_224;
    }

    *v156 = 136316162;
    *&v156[4] = v111;
    *&v156[12] = 2080;
    *&v156[14] = "AFRCCalcRxEstimate";
    *&v156[22] = 1024;
    *&v156[24] = 2638;
    *&v156[28] = 1024;
    *&v156[30] = v72;
    *&v156[34] = 2080;
    *&v156[36] = v141;
    v131 = "VCRC [%s] %s:%d \t\t\t\t AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
LABEL_221:
    _os_log_debug_impl(&dword_1DB56E000, v112, OS_LOG_TYPE_DEBUG, v131, v156, 0x2Cu);
    goto LABEL_224;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_224;
  }

  v117 = VRTraceErrorLogLevelToCSTR();
  v118 = *MEMORY[0x1E6986650];
  v119 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_224;
    }

    v127 = *(v16 + 1384);
    *(v16 + 1384) = v127 + 1;
    *v156 = 136318466;
    *&v156[4] = v117;
    *&v156[12] = 2080;
    *&v156[14] = "AFRCCalcRxEstimate";
    *&v156[22] = 1024;
    *&v156[24] = 2630;
    *&v156[28] = 1024;
    *&v156[30] = v127;
    *&v156[34] = 1024;
    *&v156[36] = a2;
    *&v156[40] = 1024;
    *&v156[42] = a3;
    *&v156[46] = 2048;
    *&v156[48] = a8;
    *&v156[56] = 1024;
    *&v156[58] = a4;
    *&v156[62] = 1024;
    *&v156[64] = v85;
    *&v156[68] = 1024;
    *&v156[70] = v86;
    *&v156[74] = 1024;
    *&v156[76] = v89;
    *&v156[80] = 2048;
    *&v156[82] = v75;
    *&v156[90] = 2048;
    *&v156[92] = v88;
    *&v156[100] = 2048;
    *&v156[102] = v72;
    v128 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\n/////tp: %d  ts/arr: %d/%f \t seq: %d sz: %d \t path: %d (%d)  BWD: %f/%f  Est: %f\n";
    v129 = v118;
    v130 = 110;
    goto LABEL_233;
  }

  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    v120 = *(v16 + 1384);
    *(v16 + 1384) = v120 + 1;
    *v156 = 136318466;
    *&v156[4] = v117;
    *&v156[12] = 2080;
    *&v156[14] = "AFRCCalcRxEstimate";
    *&v156[22] = 1024;
    *&v156[24] = 2630;
    *&v156[28] = 1024;
    *&v156[30] = v120;
    *&v156[34] = 1024;
    *&v156[36] = a2;
    *&v156[40] = 1024;
    *&v156[42] = a3;
    *&v156[46] = 2048;
    *&v156[48] = a8;
    *&v156[56] = 1024;
    *&v156[58] = a4;
    *&v156[62] = 1024;
    *&v156[64] = v85;
    *&v156[68] = 1024;
    *&v156[70] = v86;
    *&v156[74] = 1024;
    *&v156[76] = v89;
    *&v156[80] = 2048;
    *&v156[82] = v75;
    *&v156[90] = 2048;
    *&v156[92] = v88;
    *&v156[100] = 2048;
    *&v156[102] = v72;
    v108 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\n/////tp: %d  ts/arr: %d/%f \t seq: %d sz: %d \t path: %d (%d)  BWD: %f/%f  Est: %f\n";
    v109 = v118;
    v110 = 110;
    goto LABEL_200;
  }

LABEL_224:
  *(v16 + 936) = v72;
  if (*(v16 + 721) == 1)
  {
    v72 = *(v16 + 944);
  }

  *(v16 + 672) = v72;
  v133 = *(v16 + 1040);
  if (v133)
  {
    v134 = v133;
    if (v72 < v133)
    {
      v134 = v72;
    }

    *(v16 + 672) = v134;
  }

  pthread_mutex_unlock((v16 + 280));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetAudioBitRate(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  v5 = (v3 + 2700);
  pthread_mutex_lock((v3 + 2744));
  v6 = *(v4 + 2728);
  if (*(v4 + 2720) != v6)
  {
    *(v4 + 2720) = v6;
    MediaQueue_SetAudioFECLevel(*(v4 + 2808), v6);
  }

  *v5 = v5[1];
  pthread_mutex_unlock((v4 + 2744));
  VRLogfilePrintWithTimestamp(*(v4 + 2848), "New audio rate [%ukbps], fraction [%.2f], FEC [%.2f], RED[%u %u]\n", a2 / 1000, *(v4 + 9576), *(v4 + 2720), *(v4 + 2700), *(v4 + 2704));
  if (a2 >= 1)
  {
    *(v4 + 8) = a2;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetAudioPayload(uint64_t a1, int a2, int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  *(v5 + 12) = a2;
  *(v5 + 16) = a3;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetAudioPauseTime(uint64_t a1, void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  if (a2)
  {
    *a2 = *(v3 + 2664);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetAudioMaxPauseTimes(uint64_t a1, void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  if (a2)
  {
    *a2 = *(v3 + 2688);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCMarkSpecialAudioFlush(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v5 = v3;
  if (a2)
  {
    v6 = micro(v3, v4);
    *(v5 + 9840) = v6;
    pthread_mutex_lock((v5 + 2560));
    v7 = *(v5 + 2988) + 1;
    *(v5 + 2988) = v7;
    *(v5 + 2992) = v6;
    VRLogfilePrintWithTimestamp(*(v5 + 2848), "Add special audio flush(%u).\n", v7);
    pthread_mutex_unlock((v5 + 2560));
  }

  *(v5 + 9848) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetKeyFrameTimestamp(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v10 = *(v3 + 2496);
  *a2 = v10;
  if (*MEMORY[0x1E6986638] >= 5)
  {
    AFRCGetKeyFrameTimestamp_cold_1(v3, v10, v4, v5, v6, v7, v8, v9);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCMarkSpecialVideoFlush(uint64_t a1, int a2, __int16 a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  v7 = pthread_mutex_lock(v5 + 40);
  ++*&v6[46].__opaque[36];
  *&v6[46].__opaque[54] = a3;
  *&v6[46].__opaque[40] = micro(v7, v8);
  v9 = " for refresh frame";
  if (!a2)
  {
    v9 = "";
  }

  VRLogfilePrintWithTimestamp(*&v6[44].__opaque[24], "Add special video flush(%u)%s.\n", *&v6[46].__opaque[36], v9);
  pthread_mutex_unlock(v6 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCLogMQFlushedPackets(uint64_t a1, int a2, const char *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  VRLogfilePrintWithTimestamp(*(v5 + 2848), "MQ flushed %d video packets. [%.512s]\n", a2, a3);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetQualityIndication(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  if (a2)
  {
    *a2 = *(v3 + 9576) >= 1.0;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetAudioTxInfo(uint64_t a1, _DWORD *a2, int *a3, void *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, uint64_t a10)
{
  v17 = CheckInHandleDebug();
  if (!v17)
  {
    return 2149646338;
  }

  v18 = v17;
  if (a2)
  {
    if (!*(v17 + 2928) || (v19 = *(v17 + 48)) == 0)
    {
      v19 = *(v17 + 44);
    }

    *a2 = v19;
  }

  if (a3)
  {
    v20 = (*(v17 + 2728) * 100.0);
    if (v20 == 150)
    {
      v21 = 150;
    }

    else
    {
      v21 = 200;
    }

    if (v20 == 100)
    {
      v22 = 100;
    }

    else
    {
      v22 = v21;
    }

    *a3 = v22;
  }

  if (a4)
  {
    *a4 = *(v17 + 9576);
  }

  if (a5)
  {
    *a5 = *(v17 + 2708);
  }

  if (a6)
  {
    *a6 = *(v17 + 2712);
  }

  if (a7)
  {
    *a7 = *(v17 + 2680);
  }

  if (a8)
  {
    *a8 = *(v17 + 1404);
  }

  if (a9)
  {
    *a9 = *(v17 + 2656);
  }

  if (a10)
  {
    *a10 = 3;
    *(a10 + 24) = *(v17 + 176) * 100.0;
    *(a10 + 40) = *(v17 + 184) * 100.0;
    *(a10 + 48) = *(v17 + 256);
    *(a10 + 64) = *(v17 + 44);
    *(a10 + 56) = *(v17 + 2408);
    if (VCMediaControlInfo_IsLossStatsEnabled(*(v17 + 9852)))
    {
      *(a10 + 80) = *(v18 + 272);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetTxInfo(uint64_t a1, _DWORD *a2, void *a3, NSObject *a4, _DWORD *a5, void *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _BYTE *a11, _DWORD *a12)
{
  v134 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = CheckInHandleDebug();
  if (!ErrorLogLevelForModule)
  {
    return 2149646338;
  }

  v21 = ErrorLogLevelForModule;
  v111 = a8;
  v112 = a3;
  v22 = a10;
  v113 = a2;
  if (a9)
  {
    *a9 = 0;
    if (*(ErrorLogLevelForModule + 720) == 1)
    {
      v23 = *(ErrorLogLevelForModule + 864);
      v24 = micro(ErrorLogLevelForModule, v20);
      if (*(v21 + 1048) == 0.0)
      {
        *(v21 + 1048) = v24;
        *(v21 + 1056) = v24;
        *(v21 + 1088) = v24;
      }

      if (*(v21 + 1104) == 1)
      {
        if (*(v21 + 2404))
        {
          v25 = v24 - *(v21 + 2416) > 0.5;
        }

        else
        {
          v25 = 0;
        }

        v27 = 0;
        if ((*(v21 + 1396) & 1) != 0 && !v25)
        {
          v27 = g_adwTxRateTiers[*(v21 + 28) + 1] <= *(v21 + 20);
        }

        v28 = v24 - *(v21 + 1088);
        if (v28 < 3.0)
        {
          v27 = 1;
        }

        if (!v27 || v28 >= 10.0)
        {
          *(v21 + 1104) = 0;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v30 = VRTraceErrorLogLevelToCSTR();
            v31 = *MEMORY[0x1E6986650];
            v32 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v115 = v30;
                v116 = 2080;
                v117 = "BWEstCheckIfLargeFrameNeeded";
                v118 = 1024;
                v119 = 6160;
                _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Enabling LF", buf, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              AFRCGetTxInfo_cold_1(v30);
            }
          }
        }
      }

      ErrorLogLevelForModule = BWEstCalcLargeFrameSize(v21, 0);
      *(v21 + 1068) = ErrorLogLevelForModule;
      if ((*(v21 + 1104) & 1) == 0)
      {
        v33 = v24 - *(v21 + 1056);
        v34 = v24 - *(v21 + 1048) < v23 || v33 < v23 * 0.5;
        if (!v34)
        {
          if (*(v21 + 2404) && v24 - *(v21 + 2416) > 0.5)
          {
LABEL_231:
            v39 = *(v21 + 1068);
            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            if (ErrorLogLevelForModule >= 8)
            {
              v102 = VRTraceErrorLogLevelToCSTR();
              v103 = *MEMORY[0x1E6986650];
              loga = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                ErrorLogLevelForModule = os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT);
                if (ErrorLogLevelForModule)
                {
                  *buf = 136315906;
                  v115 = v102;
                  v116 = 2080;
                  v117 = "BWEstCheckIfLargeFrameNeeded";
                  v118 = 1024;
                  v119 = 6199;
                  v120 = 1024;
                  LODWORD(v121) = v39;
                  _os_log_impl(&dword_1DB56E000, loga, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ^^^^^ LARGE frame req'd of %d ", buf, 0x22u);
                }
              }

              else
              {
                ErrorLogLevelForModule = os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG);
                if (ErrorLogLevelForModule)
                {
                  AFRCGetTxInfo_cold_2();
                }
              }
            }

            goto LABEL_39;
          }

          if (v33 > v23 * 3.0)
          {
            *(v21 + 1068) = BWEstCalcLargeFrameSize(v21, 1u);
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v35 = VRTraceErrorLogLevelToCSTR();
              v36 = *MEMORY[0x1E6986650];
              v37 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = *(v21 + 1068);
                  *buf = 136316162;
                  v115 = v35;
                  v116 = 2080;
                  v117 = "BWEstCheckIfLargeFrameNeeded";
                  v118 = 1024;
                  v119 = 6189;
                  v120 = 2048;
                  v121 = *&v33;
                  v122 = 1024;
                  *v123 = v38;
                  _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ^ %.3f since last LF; CRITICAL: letting it go; size is %d ", buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                v104 = *(v21 + 1068);
                *buf = 136316162;
                v115 = v35;
                v116 = 2080;
                v117 = "BWEstCheckIfLargeFrameNeeded";
                v118 = 1024;
                v119 = 6189;
                v120 = 2048;
                v121 = *&v33;
                v122 = 1024;
                *v123 = v104;
                _os_log_debug_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d ^ %.3f since last LF; CRITICAL: letting it go; size is %d ", buf, 0x2Cu);
              }
            }

            goto LABEL_231;
          }
        }
      }

      v39 = 0;
LABEL_39:
      *(v21 + 1064) = v39;
      *a9 = v39;
      a2 = v113;
    }
  }

  if (a10 && *(v21 + 2928))
  {
    log = a4;
    v40 = (v21 + 9624);
    v41 = *(v21 + 2960);
    v42 = micro(ErrorLogLevelForModule, v20);
    pthread_mutex_lock((v21 + 2560));
    v108 = *(v21 + 1392);
    v44 = *(v21 + 3026);
    v45 = *(v21 + 9624);
    v46 = v45 != 255 && v44 != v45;
    if (v45 == 255 || v44 != v45)
    {
      reportingLog();
      LOBYTE(v44) = *(v21 + 3026);
    }

    *v40 = v44;
    v106 = a6;
    v107 = a7;
    v105 = a5;
    if (v46 && *(v21 + 9664))
    {
      *(v21 + 9664) = 0;
      *(v21 + 9688) = 0;
      *(v21 + 9680) = v42;
      if (v41)
      {
        if (*(v21 + 9692) && *(v21 + 9656) >= 1.0)
        {
          v48 = 8;
        }

        else
        {
          v48 = 9;
        }
      }

      else
      {
        if (*(v21 + 28) >= *(v21 + 9648) || *(v21 + 9572))
        {
          v48 = 0;
LABEL_103:
          *(v21 + 2968) = *(v21 + 9632);
          *(v21 + 2980) = *(v21 + 9640);
          *(v21 + 2480) = *(v21 + 9692);
          if ((v48 & v41 & 1) == 0)
          {
            *(v21 + 1400) = 6;
            v58 = *(v21 + 1404) + 1;
            *(v21 + 1404) = v58;
            *(v21 + 9568) = v58;
          }

          *(v21 + 36) = *(v21 + 28);
          v59 = *(v21 + 9648);
          *(v21 + 28) = v59;
          *(v21 + 44) = g_adwTxRateTiers[v59];
          *(v21 + 2956) = 0;
          v60 = *(v21 + 9656);
          if (*(v21 + 9576) >= v60 || (*(v21 + 9576) = v60, *(v21 + 9584) = v42, MediaQueue_SetAudioFraction(*(v21 + 2808), v60), VRTraceGetErrorLogLevelForModule() < 7))
          {
            v53 = 0;
            v54 = 0;
            v52 = 1;
            v57 = "Detected AS, restore state. ";
          }

          else
          {
            v61 = v46;
            v62 = v41;
            v63 = VRTraceErrorLogLevelToCSTR();
            v64 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v65 = *(v21 + 9656);
              v66 = *(v21 + 9576);
              *buf = 136316162;
              v115 = v63;
              v116 = 2080;
              v117 = "UpdateBBAction";
              v118 = 1024;
              v119 = 3261;
              v120 = 2048;
              v121 = v65;
              v122 = 2048;
              *v123 = v66;
              _os_log_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Audio fraction change [%.2f->%.2f].", buf, 0x30u);
            }

            v53 = 0;
            v54 = 0;
            v52 = 1;
            v57 = "Detected AS, restore state. ";
            v41 = v62;
            v46 = v61;
            v40 = (v21 + 9624);
          }

LABEL_111:
          if (*(v21 + 2472))
          {
            if ((v48 & 8) == 0)
            {
              goto LABEL_119;
            }
          }

          else if ((v48 & 8) == 0 || !*(v21 + 2476))
          {
            goto LABEL_119;
          }

          if ((v48 & 2) == 0 && v42 - *(v21 + 9592) > 0.1)
          {
            v48 |= 2u;
            *(v21 + 9592) = v42;
            v52 = 1;
          }

LABEL_119:
          if ((v48 & 8) != 0)
          {
            if (!*(v21 + 3032))
            {
              v48 &= 7u;
              if ((v48 & 2) == 0)
              {
LABEL_123:
                if (*(v21 + 3000))
                {
                  v48 |= 0x10u;
                  *(v21 + 3000) = 0;
                }

LABEL_129:
                if ((v53 | v54) == 1)
                {
                  v67 = v46;
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v68 = VRTraceErrorLogLevelToCSTR();
                    v69 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v70 = *(v21 + 9576);
                      v71 = "";
                      v72 = *(v21 + 2720);
                      v73 = *(v21 + 2700);
                      v74 = *(v21 + 2704);
                      if (v53)
                      {
                        v71 = "AWM";
                      }

                      if (v54)
                      {
                        v71 = "HWM";
                      }

                      *buf = 136317698;
                      v115 = v68;
                      v116 = 2080;
                      v117 = "UpdateBBAction";
                      v118 = 1024;
                      v119 = 3379;
                      v120 = 2080;
                      v121 = v71;
                      v122 = 1024;
                      *v123 = v108 / 0x3E8;
                      *&v123[4] = 2048;
                      *&v123[6] = v70;
                      v124 = 2048;
                      v125 = v72;
                      v126 = 1024;
                      v127 = v73;
                      v128 = 1024;
                      v129 = v74;
                      v130 = 1024;
                      v131 = v41;
                      v132 = 1024;
                      v133 = v48;
                      _os_log_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %s is hit, [audio:%u, factor:%.2f, FEC:%.2f, RED:%u, %u, %02X->%02X]", buf, 0x58u);
                    }
                  }
                }

                else
                {
                  v67 = v46;
                  if ((!v52 & ~v46) != 0)
                  {
                    goto LABEL_148;
                  }
                }

                v75 = "";
                v76 = "AWM is hit! ";
                if (!v53)
                {
                  v76 = "";
                }

                if (v54)
                {
                  v76 = "HWM is hit! ";
                }

                if (v67)
                {
                  v77 = v57;
                }

                else
                {
                  v77 = "";
                }

                if ((v48 & 0xA) != 0)
                {
                  v75 = ", ignore samples";
                }

                VRLogfilePrintWithTimestamp(*(v21 + 2848), "%s%sAudio[%u %.2f %.2f %u %u], Action[%02X->%02X(%u)]%s.\n", v76, v77, v108 / 0x3E8, *(v21 + 9576), *(v21 + 2720), *(v21 + 2700), *(v21 + 2704), *(v21 + 2960), v48, *(v21 + 2988), v75);
LABEL_148:
                v22 = a10;
                a5 = v105;
                a4 = log;
                a2 = v113;
                if (*(v21 + 2956))
                {
                  v78 = *(v21 + 28);
                  v79 = *(v21 + 40);
                  v80 = v78 - 1;
                  v81 = &g_adwTxRateTiers[v78];
                  v82 = *(v21 + 28);
                  while (1)
                  {
                    v83 = *v81--;
                    if (v83 <= *(v21 + 2968))
                    {
                      break;
                    }

                    --v82;
                    if (!*(v21 + 9696))
                    {
                      v34 = v80-- <= v79;
                      if (!v34)
                      {
                        continue;
                      }
                    }

                    if (v82 <= v79)
                    {
                      v82 = *(v21 + 40);
                    }

                    break;
                  }

                  if (v78 != v82)
                  {
                    *(v21 + 1400) = 3;
                    v84 = *(v21 + 1404) + 1;
                    *(v21 + 1404) = v84;
                    *(v21 + 36) = v78;
                    *(v21 + 28) = v82;
                    *(v21 + 44) = g_adwTxRateTiers[v82];
                    *(v21 + 9568) = v84;
                    *(v21 + 2484) = 1;
                    if (*(v21 + 2816))
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v85 = VRTraceErrorLogLevelToCSTR();
                        v86 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          v87 = *(v21 + 44);
                          *buf = 136315906;
                          v115 = v85;
                          v116 = 2080;
                          v117 = "RampDownTxRate";
                          v118 = 1024;
                          v119 = 3170;
                          v120 = 1024;
                          LODWORD(v121) = v87;
                          _os_log_impl(&dword_1DB56E000, v86, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: Congestion!!! TxRate v %u, Baseband.", buf, 0x22u);
                        }
                      }
                    }

                    VRLogfilePrint(*(v21 + 2832), "Congestion!!! TxRate v %u, Baseband.\n", *(v21 + 44));
                    VRLogfilePrintWithTimestamp(*(v21 + 2848), "Rate change [%u] (Ramp Down to %u, Baseband).\n", *(v21 + 9568), *(v21 + 44) / 0x3E8u);
                    a2 = v113;
                  }

                  v88 = *(v21 + 1396);
                  if (v88)
                  {
                    *(v21 + 1396) = v88 & 0xFFFFFFFE;
                    calculateInitialRampUpDeltas(v21, v43);
                    if (*(v21 + 2816))
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v89 = VRTraceErrorLogLevelToCSTR();
                        v90 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315906;
                          v115 = v89;
                          v116 = 2080;
                          v117 = "RampDownTxRate";
                          v118 = 1024;
                          v119 = 3179;
                          v120 = 2080;
                          v121 = "Initial Rampup done!";
                          _os_log_impl(&dword_1DB56E000, v90, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %s", buf, 0x26u);
                        }
                      }
                    }

                    VRLogfilePrint(*(v21 + 2832), "%s", "Initial Rampup done!\n");
                    VRLogfilePrintWithTimestamp(*(v21 + 2848), "%s", "Initial Rampup done!\n");
                    v88 = *(v21 + 1396);
                    a2 = v113;
                  }

                  if ((v88 & 4) != 0)
                  {
                    *(v21 + 1396) = v88 & 0xFFFFFFFB;
                  }

                  if (*(v21 + 1400) == 3)
                  {
                    v91 = *(v21 + 2552) + 1;
                    *(v21 + 2552) = v91;
                    v92 = *(v21 + 2544);
                    if (v92 == 0.0)
                    {
                      *(v21 + 2544) = v42;
                    }

                    else if (v42 - v92 >= 2.0)
                    {
                      *(v21 + 2552) = 0;
                      *(v21 + 2544) = 0;
                    }

                    else if (v91 >= 4)
                    {
                      *(v21 + 2408) = 1;
                    }
                  }

                  *(v21 + 2520) = v42;
                }

                if (v48)
                {
                  v93 = v40[212];
                  if (v93)
                  {
                    if (*(v21 + 2480))
                    {
                      *(v21 + 2480) = 0;
                      v94 = 1;
                      goto LABEL_188;
                    }

                    v94 = 1;
                    goto LABEL_187;
                  }

                  v48 &= ~1u;
                }

                if (*(v21 + 2480))
                {
                  v94 = 0;
                  goto LABEL_188;
                }

                v94 = 0;
                v93 = v40[212];
LABEL_187:
                v48 |= v93;
LABEL_188:
                v95 = *(v21 + 2960);
                if (!*(v21 + 2472) && (v48 & 1) == 0 && (v95 & 1) != 0)
                {
                  *(v21 + 1400) = 5;
                  v96 = *(v21 + 1404) + 1;
                  *(v21 + 1404) = v96;
                  *(v21 + 9568) = v96;
                }

                if (((v95 ^ v48) & 1) != 0 && v40[212] == 1)
                {
                  if (v48)
                  {
                    *(v21 + 1388) = 0;
                  }

                  v97 = "Resumed";
                  if (*(v21 + 2816))
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v98 = VRTraceErrorLogLevelToCSTR();
                      v99 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        if (v48)
                        {
                          v100 = "Stopped";
                        }

                        else
                        {
                          v100 = "Resumed";
                        }

                        *buf = 136315906;
                        v115 = v98;
                        v116 = 2080;
                        v117 = "UpdateBBAction";
                        v118 = 1024;
                        v119 = 3435;
                        v120 = 2080;
                        v121 = v100;
                        _os_log_impl(&dword_1DB56E000, v99, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: Video %s...", buf, 0x26u);
                      }
                    }
                  }

                  if (v48)
                  {
                    v97 = "Stopped";
                  }

                  VRLogfilePrint(*(v21 + 2832), "Video %s...\n", v97);
                  VRLogfilePrintWithTimestamp(*(v21 + 2848), "Video %s...\n", v97);
                  a4 = log;
                  a2 = v113;
                }

                *(v21 + 2476) = v94;
                *(v21 + 2960) = v48;
                pthread_mutex_unlock((v21 + 2560));
                a6 = v106;
                a7 = v107;
                goto LABEL_207;
              }

LABEL_126:
              if (*(v21 + 3032))
              {
                ++*(v21 + 2988);
                *(v21 + 2992) = v42;
              }

              else
              {
                v48 &= ~2u;
              }

              goto LABEL_129;
            }

            ++*(v21 + 2988);
            *(v21 + 2992) = v42;
          }

          if ((v48 & 2) == 0)
          {
            goto LABEL_123;
          }

          goto LABEL_126;
        }

        *(v21 + 9592) = v42;
        v48 = 10;
      }

      *(v21 + 9600) = v42;
      goto LABEL_103;
    }

    v49 = *(v21 + 2980);
    if (v49 < 0x7D1 || ((v50 = *(v21 + 2504), v50 != 0.0) ? (v51 = v42 - v50 <= 0.5) : (v51 = 1), v51))
    {
      if (!*(v21 + 2956))
      {
        if ((v41 & 1) != 0 && (*(v21 + 9576) < 1.0 || v42 - *(v21 + 9584) <= 2.0 || v42 - *(v21 + 9552) <= 2.0))
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v48 = 1;
        }

        else
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v48 = 0;
        }

        goto LABEL_99;
      }

      v48 = v41 & 1;
      if (v49 <= 0x1F3)
      {
        v52 = (v41 & 1) != 0 && (*(v21 + 9576) < 1.0 || v42 - *(v21 + 9584) <= 2.0 || v42 - *(v21 + 9552) <= 2.0);
        v54 = 0;
        *(v21 + 2956) = 0;
        v53 = 1;
        v48 = v52;
        goto LABEL_99;
      }

      v52 = 0;
      goto LABEL_98;
    }

    v55 = *(v21 + 2968);
    if (v55 >= v108)
    {
      if (v55 >= g_adwTxRateTiers[*(v21 + 40)])
      {
        if ((v41 & 1) == 0)
        {
          if (*(v21 + 3036) + *(v21 + 3032) > 2 * (v55 >> 3) && v42 - *(v21 + 9592) > 0.1)
          {
            v56 = (v21 + 9592);
            v48 = 2;
            goto LABEL_95;
          }

          v52 = 0;
          v48 = 0;
LABEL_97:
          if (!*(v21 + 2956))
          {
            v53 = 0;
            v54 = 1;
            *(v21 + 2956) = 1;
            goto LABEL_99;
          }

LABEL_98:
          v53 = 0;
          v54 = 0;
LABEL_99:
          v57 = "Missed AS. ";
          goto LABEL_111;
        }
      }

      else if ((v41 & 1) == 0)
      {
        v56 = (v21 + 9592);
        v48 = 3;
        goto LABEL_95;
      }
    }

    else
    {
      if ((v41 & 1) == 0)
      {
        *(v21 + 9592) = v42;
        v56 = (v21 + 9600);
        v48 = 11;
LABEL_95:
        *v56 = v42;
        v52 = 1;
        goto LABEL_97;
      }

      if (*(v21 + 3036) + *(v21 + 3032) > ((v108 >> 2) & 0x1FFFFFFF) && v42 - *(v21 + 9600) > 0.1)
      {
        v56 = (v21 + 9600);
        v48 = 9;
        goto LABEL_95;
      }
    }

    v52 = 0;
    v48 = 1;
    goto LABEL_97;
  }

LABEL_207:
  if (a2)
  {
    *a2 = *(v21 + 44);
  }

  if (v111)
  {
    *v111 = *(v21 + 1392);
  }

  if (v112)
  {
    *v112 = *(v21 + 2720);
  }

  if (a4)
  {
    LODWORD(a4->isa) = *(v21 + 2700);
  }

  if (a5)
  {
    *a5 = *(v21 + 2704);
  }

  if (a6)
  {
    *a6 = *(v21 + 2736);
  }

  if (a7)
  {
    *a7 = *(v21 + 1404);
  }

  if (v22)
  {
    *v22 = *(v21 + 2960);
  }

  v101 = Throttling_AFRC_IsInThrottlingMode((v21 + 872), *(v21 + 44));
  *(v21 + 884) = v101;
  if (a11)
  {
    *a11 = v101;
  }

  if (a12)
  {
    *a12 = *(v21 + 252);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCRecordMaxBurstyLoss(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 2864));
  if (*(v4 + 140) < a2)
  {
    *(v4 + 140) = a2;
  }

  pthread_mutex_unlock((v4 + 2864));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCRecordMaxAudioConsecutiveLoss(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 2864));
  if (*(v4 + 144) < a2)
  {
    *(v4 + 144) = a2;
  }

  pthread_mutex_unlock((v4 + 2864));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCUpdateVideoSendingBitrate(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  *(v3 + 1388) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCUpdateAudioSendingBitrate(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  *(v3 + 1392) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetFeedbackControlInfo(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  pthread_mutex_lock((v3 + 2864));
  if (a2)
  {
    v5 = *(v4 + 672) / 1000.0;
    v6 = *(v4 + 116);
    LOWORD(v20) = *(v4 + 112);
    WORD1(v20) = v5;
    v7 = *(v4 + 136);
    WORD2(v20) = *(v4 + 140);
    WORD5(v20) = *(v4 + 128);
    WORD3(v20) = v7;
    v8 = *(v4 + 164);
    HIDWORD(v20) = (*(v4 + 120) + v6) >> 3;
    LODWORD(v21) = v8;
    WORD4(v20) = *(v4 + 144);
    *(v4 + 140) = 0;
    *(v4 + 144) = 0;
    pthread_mutex_unlock((v4 + 2864));
    VCMediaControlInfoSetInfoUnserialized(a2, &v20, 0);
  }

  else
  {
    *(v4 + 140) = 0;
    *(v4 + 144) = 0;
    pthread_mutex_unlock((v4 + 2864));
  }

  VCRateControlGetBWEstimation(*(v4 + 9760), (v4 + 688));
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v4 + 688);
        v15 = *(v4 + 672) / 1000.0;
        *buf = 136316162;
        v24 = v11;
        v25 = 2080;
        v26 = "AFRCSetFeedbackControlInfo";
        v27 = 1024;
        v28 = 3621;
        v29 = 1024;
        v30 = v14 / 0x3E8;
        v31 = 1024;
        v32 = v15;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Bandwidth estimation new: %d, afrc:%d", buf, 0x28u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(v4 + 688);
      v19 = *(v4 + 672) / 1000.0;
      *buf = 136316162;
      v24 = v11;
      v25 = 2080;
      v26 = "AFRCSetFeedbackControlInfo";
      v27 = 1024;
      v28 = 3621;
      v29 = 1024;
      v30 = v18 / 0x3E8;
      v31 = 1024;
      v32 = v19;
      _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d Bandwidth estimation new: %d, afrc:%d", buf, 0x28u);
    }
  }

  v16 = *(v4 + 9796);
  if (v16)
  {
    LODWORD(v10) = *(v4 + 44);
    if (RateMonitorUpdateDataSamples(*(v4 + 9768), v10, v16))
    {
      if ((*(v4 + 9776) & 1) == 0)
      {
        reportingSymptom();
        *(v4 + 9776) = 1;
      }
    }
  }

  v17 = *(v4 + 688);
  if (v17 && RateMonitorUpdateDataSamples(*(v4 + 9784), *(v4 + 672), v17) && (*(v4 + 9792) & 1) == 0)
  {
    reportingSymptom();
    *(v4 + 9792) = 1;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetPeerArrivalTime(uint64_t a1, int a2, void *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  if (!a2)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 2864));
    *a3 = *(v6 + 152);
    pthread_mutex_unlock((v6 + 2864));
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGenerateFeedbackWithControlInfo(void *a1, int32x4_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 2149580801;
  }

  if (!a1)
  {
    return 0;
  }

  if (VCMediaControlInfoHasInfo(a1, 0))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    VCMediaControlInfoGetInfoUnserialized(a1, &v8, 0);
    a2->i32[0] = v8;
    a2->i32[2] = WORD1(v8);
    v4 = vmovl_u16(*(&v8 + 4));
    a2[1] = vuzp1q_s32(v4, vextq_s8(v4, v4, 0xCuLL));
    a2[2].i32[0] = v9;
  }

  if (VCMediaControlInfoHasInfo(a1, 1))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    VCMediaControlInfoGetInfoUnserialized(a1, &v8, 1);
    a2->i32[1] = DWORD1(v9);
    v5 = HIDWORD(v9);
    a2[2].i32[1] = WORD4(v9);
    a2[2].i32[2] = v5;
  }

  result = VCMediaControlInfoHasInfo(a1, 2);
  if (result)
  {
    LODWORD(v8) = -1431655766;
    VCMediaControlInfoGetInfo(a1, 2, &v8, 4, 0);
    result = 0;
    v7 = bswap32(v8);
  }

  else
  {
    v7 = -1;
  }

  a2[2].i32[3] = v7;
  return result;
}

uint64_t AFRCProcessVideoReceiveMetric(uint64_t a1, int a2, int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  pthread_mutex_lock((v5 + 2864));
  *(v6 + 132) = a2;
  *(v6 + 120) = a3;
  pthread_mutex_unlock((v6 + 2864));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCProcessFeedbackPacket(uint64_t a1, unsigned int *a2, int a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10)
{
  v97 = *MEMORY[0x1E69E9840];
  v19 = MicroToNTP(a8, a1, a2);
  v20 = NTPToMiddle32(v19);
  v21 = CheckInHandleDebug();
  if (!v21)
  {
    return 2149646338;
  }

  v22 = v21;
  v23 = (v21 + 268);
  pthread_mutex_lock((v21 + 2864));
  v24 = a2[9];
  *(v22 + 252) = a2[2];
  v25 = (v22 + 252);
  *(v22 + 128) = a4;
  *(v22 + 112) = v24;
  *(v22 + 116) = a5;
  *(v22 + 160) = a3;
  *(v22 + 136) = *(v22 + 132);
  *v23 = *(a2 + 3);
  *(v22 + 264) = a2[3];
  *(v22 + 276) = a2[4];
  pthread_mutex_unlock((v22 + 2864));
  pthread_mutex_lock((v22 + 2560));
  *(v22 + 152) = a8;
  pthread_mutex_unlock((v22 + 2560));
  Throttling_AFRC_OverrideRxEstimate(v22 + 872, (v22 + 252));
  v26 = a2[9];
  if (*(v22 + 168))
  {
    v27 = *(v22 + 172);
    if (v26 == v27 || (v26 - v27) >= 0x7FFFu)
    {
      goto LABEL_139;
    }

    if (a2[9] < v27)
    {
      v27 += 0x10000;
    }

    v26 |= v27 & 0xFFFF0000;
    *(v22 + 172) = v26;
  }

  else
  {
    *(v22 + 168) = 1;
    *(v22 + 172) = v26;
  }

  v29 = a2[1];
  if (v29)
  {
    v30 = (v20 >> 6);
    v31 = *a2;
    if (v30 < v31)
    {
      v30 |= 0x10000u;
    }

    v32 = v30 - v31;
    v33 = v32 >= v29;
    v34 = v32 - v29;
    if (v34 == 0 || !v33)
    {
      v34 = 1;
    }

    v35 = *(v22 + 52);
    if (v35)
    {
      v34 = (9 * v35 + v34) / 0xA;
    }

    *(v22 + 52) = v34;
  }

  else
  {
    v34 = *(v22 + 52);
    v31 = 0xFFFFFFFFLL;
  }

  *(v22 + 260) = v31;
  v36 = vcvtd_n_f64_u32(v34, 0xAuLL);
  v37 = *(v22 + 56);
  if (v37 <= v36)
  {
    v37 = v36;
  }

  *(v22 + 56) = v37;
  v38 = *(v22 + 64);
  if (v38 <= a2[4])
  {
    v38 = a2[4];
  }

  *(v22 + 64) = v38;
  v39 = RTPUnpackDouble(a2[10]);
  if (a9 >= 0.0)
  {
    *(v22 + 176) = a9;
  }

  if (a10 >= 0.0)
  {
    *(v22 + 184) = a10;
  }

  if (a6 != -1)
  {
    *(v22 + 248) = a6;
  }

  if (a7 != -1)
  {
    *(v22 + 256) = a7;
  }

  v40 = vcvtd_n_f64_u32(v26, 0xAuLL);
  VRLogfilePrint(*(v22 + 2840), "%04X\t%u\t%u\t%u\t%u\t%u\t%04X\t%u\n", *a2, a2[1], a2[3], a2[4], a2[6], a2[7], *(a2 + 18), a2[10]);
  updated = UpdateFECLevel(v22);
  v42 = a2[10] != 0xFFFF;
  v86 = -1431655766;
  v44 = micro(updated, v43);
  pthread_mutex_lock((v22 + 2560));
  if (!*(v22 + 2472))
  {
    if ((*(v22 + 1396) & 1) == 0 || *(v22 + 2948) || *(v22 + 2952) || *(v22 + 9696))
    {
      v45 = *(v22 + 28) + 1;
    }

    else
    {
      v71 = *(v22 + 28);
      if (g_adwTxRateTiers[v71 + 2] > *(v22 + 20))
      {
        v45 = v71 + 1;
      }

      else
      {
        v45 = v71 + 2;
      }
    }

    v46 = v45 <= 36 && g_adwTxRateTiers[v45] <= *(v22 + 20);
    v86 = v46;
    DetectCongestion(v22, v31, &v86, v42, v40, v39, v36);
    v48 = *(v22 + 1396);
    if ((v48 & 2) == 0)
    {
      if ((v48 & 9) != 0 && v86)
      {
        if (*(v22 + 2960))
        {
          v65 = *(v22 + 9576);
          if (v65 >= 1.0)
          {
            *(v22 + 2480) = 1;
          }

          else if (*(v22 + 9572) >= 1 && v44 - *(v22 + 9584) > 2.0)
          {
            v66 = fmin(v65 + v65, 1.0);
            *(v22 + 9576) = v66;
            *(v22 + 9584) = v44;
            MediaQueue_SetAudioFraction(*(v22 + 2808), v66);
            *(v22 + 9572) = 0;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v67 = VRTraceErrorLogLevelToCSTR();
              v68 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v69 = *(v22 + 9576);
                *buf = 136316162;
                v88 = v67;
                v89 = 2080;
                v90 = "DoRateControl";
                v91 = 1024;
                v92 = 4282;
                v93 = 2048;
                v94 = *&v65;
                v95 = 2048;
                v96 = v69;
                _os_log_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Audio fraction change [%.2f->%.2f].", buf, 0x30u);
              }
            }
          }

          v70 = *(v22 + 1396);
          if (v70)
          {
            *(v22 + 1396) = v70 & 0xFFFFFFFE;
            calculateInitialRampUpDeltas(v22, v47);
            v70 = *(v22 + 1396);
          }

          if ((v70 & 8) == 0)
          {
            goto LABEL_134;
          }
        }

        else
        {
          if ((v48 & 1) == 0)
          {
            if (*(v22 + 2944))
            {
              if (v45 <= 35 && *v25)
              {
                v49 = v45 - 36;
                v50 = &g_adwTxRateTiers[v45 + 1];
                while (*v50 < *(v22 + 20) && (*(v50 - 1) - *(v22 + 44)) >> 8 <= 0x7C && 1000 * *v25 > v50[1])
                {
                  ++v45;
                  ++v50;
                  v33 = __CFADD__(v49++, 1);
                  if (v33)
                  {
                    v45 = 36;
                    break;
                  }
                }
              }
            }

            else
            {
              if (!*(v22 + 2948) && !*(v22 + 2952) && !*(v22 + 9696) && v45 <= 35 && *(v22 + 2512) <= *(v22 + 2520))
              {
                v82 = *(v22 + 9572);
                v83 = v45 + 1;
                while (1)
                {
                  v84 = g_adwTxRateTiers[v83];
                  if (v84 >= *(v22 + 20))
                  {
                    break;
                  }

                  if (v84 - *(v22 + 44) > 0xFA00 || v82 <= 0)
                  {
                    break;
                  }

                  --v82;
                  ++v45;
                  ++v83;
                  v72 = 36;
                  if (v83 == 37)
                  {
                    goto LABEL_119;
                  }
                }
              }

              v72 = v45;
LABEL_119:
              *(v22 + 9572) = 0;
              v45 = v72;
            }
          }

          *(v22 + 36) = *(v22 + 28);
          *(v22 + 28) = v45;
          *(v22 + 44) = g_adwTxRateTiers[v45];
          *(v22 + 1400) = 2;
          v73 = *(v22 + 1404) + 1;
          *(v22 + 1404) = v73;
          *(v22 + 9568) = v73;
          *(v22 + 2552) = 0;
          *(v22 + 2544) = 0;
          if (*(v22 + 2816))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v74 = VRTraceErrorLogLevelToCSTR();
              v75 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v76 = *(v22 + 44);
                *buf = 136315906;
                v88 = v74;
                v89 = 2080;
                v90 = "DoRateControl";
                v91 = 1024;
                v92 = 4250;
                v93 = 1024;
                LODWORD(v94) = v76;
                _os_log_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: TxRate ^ %u", buf, 0x22u);
              }
            }
          }

          VRLogfilePrint(*(v22 + 2832), "TxRate ^ %u\n", *(v22 + 44));
          VRLogfilePrintWithTimestamp(*(v22 + 2848), "Rate change [%u] (Ramp Up to %u).\n", *(v22 + 9568), *(v22 + 44) / 0x3E8u);
          if (v45 > 35 || g_adwTxRateTiers[v45 + 1] >= *(v22 + 20))
          {
            v78 = *(v22 + 1396);
            if (v78)
            {
              *(v22 + 1396) = v78 & 0xFFFFFFFE;
              calculateInitialRampUpDeltas(v22, v77);
              if (*(v22 + 2816))
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v79 = VRTraceErrorLogLevelToCSTR();
                  v80 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    v88 = v79;
                    v89 = 2080;
                    v90 = "DoRateControl";
                    v91 = 1024;
                    v92 = 4260;
                    v93 = 2080;
                    v94 = "Initial Rampup Done!";
                    _os_log_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %s", buf, 0x26u);
                  }
                }
              }

              VRLogfilePrint(*(v22 + 2832), "%s", "Initial Rampup Done!\n");
              VRLogfilePrintWithTimestamp(*(v22 + 2848), "%s", "Initial Rampup Done!\n");
            }
          }

          v70 = *(v22 + 1396);
        }

        *(v22 + 1396) = v70 & 0xFFFFFFF7;
      }

LABEL_134:
      if (v44 - *(v22 + 104) > 3.0)
      {
        ConfigureAFRCDefaults(v22);
        *(v22 + 104) = v44;
      }

      v81 = *(v22 + 68);
      if ((v81 & 0x80000000) == 0)
      {
        *(v22 + 44) = v81;
      }

      goto LABEL_138;
    }

    v51 = *(v22 + 28);
    if (v51 <= 0)
    {
      *(v22 + 1396) = v48 & 0xFFFFFFED;
    }

    else
    {
      if ((v48 & 1) != 0 && !*(v22 + 9696))
      {
        if (v51 == *(v22 + 32))
        {
          v52 = -3;
        }

        else
        {
          v52 = -2;
        }
      }

      else
      {
        v52 = -1;
      }

      v53 = v52 + v51;
      if ((v48 & 0x10) == 0 && !*(v22 + 9696))
      {
        v53 = (__PAIR64__(v53, (*(v22 + 44) - g_adwTxRateTiers[v53]) >> 8) - 125) >> 32;
      }

      if (v53 <= *(v22 + 40))
      {
        v53 = *(v22 + 40);
      }

      *(v22 + 1396) = v48 & 0xFFFFFFED;
      if (v51 > v53)
      {
        *(v22 + 1400) = 3;
        v54 = *(v22 + 1404) + 1;
        *(v22 + 1404) = v54;
        *(v22 + 36) = v51;
        *(v22 + 28) = v53;
        *(v22 + 44) = g_adwTxRateTiers[v53];
        *(v22 + 9568) = v54;
        if (!v53 && *(v22 + 9696))
        {
          *(v22 + 2520) = v44;
        }

        if (*(v22 + 2816))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v55 = VRTraceErrorLogLevelToCSTR();
            v56 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v57 = *(v22 + 44);
              *buf = 136315906;
              v88 = v55;
              v89 = 2080;
              v90 = "DoRateControl";
              v91 = 1024;
              v92 = 4177;
              v93 = 1024;
              LODWORD(v94) = v57;
              _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: Congestion!!! TxRate v %u", buf, 0x22u);
            }
          }
        }

        VRLogfilePrint(*(v22 + 2832), "Congestion!!! TxRate v %u\n", *(v22 + 44));
        VRLogfilePrintWithTimestamp(*(v22 + 2848), "Rate change [%u] (Ramp Down to %u, AFRC).\n");
LABEL_83:
        *(v22 + 2512) = v44;
        v60 = *(v22 + 1396);
        if (v60)
        {
          *(v22 + 1396) = v60 & 0xFFFFFFFE;
          calculateInitialRampUpDeltas(v22, v47);
          if (*(v22 + 2816))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v61 = VRTraceErrorLogLevelToCSTR();
              v62 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v88 = v61;
                v89 = 2080;
                v90 = "DoRateControl";
                v91 = 1024;
                v92 = 4197;
                v93 = 2080;
                v94 = "Initial Rampup done!";
                _os_log_impl(&dword_1DB56E000, v62, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %s", buf, 0x26u);
              }
            }
          }

          VRLogfilePrint(*(v22 + 2832), "%s", "Initial Rampup done!\n");
          VRLogfilePrintWithTimestamp(*(v22 + 2848), "%s", "Initial Rampup Done!\n");
          v60 = *(v22 + 1396);
        }

        if ((v60 & 4) != 0)
        {
          *(v22 + 1396) = v60 & 0xFFFFFFFB;
        }

        if (*(v22 + 1400) == 3)
        {
          v63 = *(v22 + 2552) + 1;
          *(v22 + 2552) = v63;
          v64 = *(v22 + 2544);
          if (v64 == 0.0)
          {
            *(v22 + 2544) = v44;
          }

          else if (v44 - v64 >= 2.0)
          {
            *(v22 + 2552) = 0;
            *(v22 + 2544) = 0;
          }

          else if (v63 >= 4)
          {
            *(v22 + 2408) = 1;
          }
        }

        goto LABEL_134;
      }
    }

    if (*(v22 + 2480) && *(v22 + 9836) == 1)
    {
      *(v22 + 2480) = 0;
      if (*(v22 + 2816))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v58 = VRTraceErrorLogLevelToCSTR();
          v59 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v88 = v58;
            v89 = 2080;
            v90 = "DoRateControl";
            v91 = 1024;
            v92 = 4185;
            v93 = 2080;
            v94 = "Congestion!!! Pause video.";
            _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %s", buf, 0x26u);
          }
        }
      }

      VRLogfilePrint(*(v22 + 2832), "%s", "Congestion!!! Pause video.\n");
      VRLogfilePrintWithTimestamp(*(v22 + 2848), "%s");
    }

    goto LABEL_83;
  }

  DetectCongestion(v22, v31, &v86, 0, v40, v39, v36);
LABEL_138:
  pthread_mutex_unlock((v22 + 2560));
LABEL_139:
  CheckOutHandleDebug();
  return 0;
}

uint64_t UpdateFECLevel(uint64_t a1)
{
  pthread_mutex_lock((a1 + 2744));
  v2 = *(a1 + 2408);
  v3 = *(a1 + 176);
  v4 = *(a1 + 28);
  if (*(a1 + 9696))
  {
    if (v4 > 2)
    {
      goto LABEL_12;
    }
  }

  else if (v4 >= 8 && *(a1 + 9576) >= 1.0)
  {
LABEL_12:
    if (*(a1 + 2696) == 1)
    {
      v6 = *(a1 + 2700);
      v7 = fmin(v3 * 10.0, 10.0);
      v8 = *(a1 + 2704);
      v9 = *(a1 + 256);
      if (v9 + 1 > v7)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = v7;
      }

      if (v10 <= v6)
      {
        v10 = *(a1 + 2700);
      }

      if (v6 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = *(a1 + 2700);
      }

      if (v2)
      {
        v12 = v11;
      }

      else
      {
        v12 = v7;
      }

      if (v12 != v6)
      {
        *(a1 + 2708) = v12;
      }

      if (v10 != v8)
      {
        *(a1 + 2712) = v10;
      }
    }

    else
    {
      v13 = *(a1 + 2720);
      v14 = 1.0;
      if (v13 == 1.0)
      {
        if (!v2)
        {
          v14 = 1.5;
          if (v3 <= *(a1 + 88))
          {
            v14 = 2.0;
            if (v3 <= *(a1 + 96))
            {
              v14 = 1.0;
            }
          }
        }
      }

      else if (v13 == 1.5)
      {
        if (v3 <= *(a1 + 96))
        {
          v14 = 1.0;
          if (v3 >= *(a1 + 80))
          {
            v14 = 1.5;
          }
        }

        else
        {
          v14 = 2.0;
          if (v2)
          {
            v14 = 1.5;
          }
        }
      }

      else
      {
        v14 = 1.0;
        if (v3 >= *(a1 + 80))
        {
          if (v3 >= *(a1 + 88))
          {
            v14 = *(a1 + 2720);
          }

          else
          {
            v14 = 1.5;
          }
        }
      }

      if (v14 != v13)
      {
        *(a1 + 2728) = v14;
      }
    }

    goto LABEL_9;
  }

  if (*(a1 + 2720) != 1.0)
  {
    MediaQueue_SetAudioFECLevel(*(a1 + 2808), 1.0);
  }

  *(a1 + 2720) = 0x3FF0000000000000;
  *(a1 + 2700) = 0;
LABEL_9:

  return pthread_mutex_unlock((a1 + 2744));
}

uint64_t AFRCGetStat(uint64_t a1, double *a2, _DWORD *a3, _DWORD *a4, int *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v13 = CheckInHandleDebug();
  if (!v13)
  {
    return 2149646338;
  }

  if (a2)
  {
    v14 = *(v13 + 176);
    if ((*(v13 + 244) & 1) == 0)
    {
      v14 = v14 * *(v13 + 2720);
    }

    *a2 = v14;
  }

  if (a3)
  {
    *a3 = *(v13 + 256);
  }

  if (a4)
  {
    *a4 = *(v13 + 52);
  }

  if (a5)
  {
    v15 = *(v13 + 1412);
    v16 = 0xFFFF;
    v17 = __OFSUB__(v15, 1);
    v18 = v15 - 1;
    if (v18 < 0 == v17)
    {
      v19 = *(v13 + 8 * v18 + 1896);
      v20 = vcvtd_n_s64_f64(v19, 0xDuLL);
      if (v19 == 0.0)
      {
        v16 = 0xFFFF;
      }

      else
      {
        v16 = v20;
      }
    }

    *a5 = v16;
  }

  if (a8)
  {
    *a8 = *(v13 + 1400) == 3;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCRecordKeyFrame(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = CheckInHandleDebug();
  if (!v11)
  {
    return 2149646338;
  }

  v12 = v11;
  v13 = pthread_mutex_lock(v11 + 40);
  *&v12[38].__opaque[48] = a3;
  *&v12[38].__opaque[52] = a4;
  LODWORD(v12[39].__sig) = a5;
  if (a6)
  {
    *v12[39].__opaque = micro(v13, v14);
    v12[46].__opaque[52] = a2;
  }

  *&v12[46].__opaque[20] = *&v12->__opaque[36];
  pthread_mutex_unlock(v12 + 40);
  v15 = *&v12[44].__opaque[24];
  if (v15)
  {
    v50 = 0u;
    v51 = 0u;
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
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    if (a4 >= 102)
    {
      v16 = 102;
    }

    else
    {
      v16 = a4;
    }

    *v20 = 0uLL;
    v21 = 0uLL;
    if (a4 >= 1)
    {
      v17 = v20;
      do
      {
        sprintf(v17, "%04X ", a3);
        v17 += 5;
        ++a3;
        --v16;
      }

      while (v16);
      v15 = *&v12[44].__opaque[24];
    }

    v18 = "Key";
    if (!a6)
    {
      v18 = "Refresh";
    }

    VRLogfilePrintWithTimestamp(v15, "%s frame (%08X) is generated PT (%u), %d packets. [%s]\n", v18, a5, a2, a4, v20);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCMarkAdditionalFlushes(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  v5 = pthread_mutex_lock(v3 + 40);
  *&v4[46].__opaque[36] += a2;
  *&v4[46].__opaque[40] = micro(v5, v6);
  VRLogfilePrintWithTimestamp(*&v4[44].__opaque[24], "Add additional flush(%u).\n", *&v4[46].__opaque[36]);
  pthread_mutex_unlock(v4 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCCancelFlush(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149646338;
  }

  v2 = v1;
  v3 = pthread_mutex_lock(v1 + 40);
  v5 = micro(v3, v4);
  v6 = *&v2[46].__opaque[36] - 1;
  *&v2[46].__opaque[36] = v6;
  if (v6)
  {
    *v2[149].__opaque = 0;
    *&v2[149].__opaque[8] = v5;
    v7 = "";
    *&v2[149].__opaque[28] = 0;
  }

  else
  {
    v7 = ", taking new samples";
  }

  *&v2[46].__opaque[40] = v5;
  VRLogfilePrintWithTimestamp(*&v2[44].__opaque[24], "Pending baseband flush (%u) is cancelled%s.\n", v6, v7);
  pthread_mutex_unlock(v2 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCProcessBasebandNotification(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  __dst[756] = *MEMORY[0x1E69E9840];
  v5 = 2149646370;
  if (v3 >= 8)
  {
    v6 = v4;
    v7 = v3;
    v8 = v2;
    v9 = v1;
    memcpy(__dst, &unk_1DBD45CE8, 0x17A0uLL);
    WORD2(__dst[0]) = bswap32(*(v8 + 6)) >> 16;
    v10 = bswap32(*(v8 + 4)) >> 16;
    if (v10 == 51966)
    {
      if (v7 >= 0x24)
      {
        LODWORD(__dst[0]) = 1;
        __dst[1] = v6;
        LOWORD(__dst[2]) = *(v8 + 12);
        BYTE2(__dst[2]) = *(v8 + 13);
        WORD2(__dst[2]) = bswap32(*(v8 + 14)) >> 16;
        HIWORD(__dst[2]) = *(v8 + 16);
        *&__dst[3] = vrev32q_s8(*(v8 + 20));
        return AFRCUpdateBBNote(v9, __dst);
      }
    }

    else if (v10 == 57005)
    {
      if (v7 >= 0x10)
      {
        LODWORD(__dst[0]) = 2;
        __dst[1] = v6;
        LOWORD(__dst[2]) = bswap32(*(v8 + 12)) >> 16;
        v11 = *(v8 + 14);
        WORD1(__dst[2]) = __rev16(v11);
        if (v11 != 0xFFFF)
        {
          v34 = v9;
          v12 = 0;
          v13 = &__dst[3] + 2;
          v14 = 16;
          while (1)
          {
            v15 = v14 + 3;
            v16 = v7 - (v14 + 3);
            if (v7 < v14 + 3)
            {
              break;
            }

            v17 = &__dst[2] + 1004 * v12 + 6;
            *v17 = *(v8 + v14);
            v18 = bswap32(*(v8 + 1 + v14));
            v19 = HIWORD(v18);
            *(v17 + 1) = HIWORD(v18);
            v20 = v16 / 2;
            if (v16 / 2 < HIWORD(v18))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v21 = VRTraceErrorLogLevelToCSTR();
                v22 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v31 = *(v17 + 1);
                  *buf = 136316418;
                  v36 = v21;
                  v37 = 2080;
                  v38 = "AFRCProcessBasebandNotification";
                  v39 = 1024;
                  v40 = 4988;
                  v41 = 1024;
                  v42 = 4988;
                  v43 = 1024;
                  v44 = v20;
                  v45 = 1024;
                  v46 = v31;
                  _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/MediaQueue/AFRC.c:%d: Bad ACK, #dropped SN doesn't match(%d != %u).", buf, 0x2Eu);
                }
              }

              *(v17 + 1) = v20;
              LOWORD(v19) = v20;
            }

            if (v19 >= 0x1F5u)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v23 = VRTraceErrorLogLevelToCSTR();
                v24 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316418;
                  v36 = v23;
                  v37 = 2080;
                  v38 = "AFRCProcessBasebandNotification";
                  v39 = 1024;
                  v40 = 4993;
                  v41 = 1024;
                  v42 = 4993;
                  v43 = 1024;
                  v44 = 57005;
                  v45 = 1024;
                  v46 = 500;
                  _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/MediaQueue/AFRC.c:%d: Bad ACK, #dropped SN exceeds limit(%d > %d).", buf, 0x2Eu);
                }
              }

              *(v17 + 1) = 500;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v25 = VRTraceErrorLogLevelToCSTR();
              v26 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v27 = *(v17 + 1);
                v28 = *v17;
                *buf = 136316162;
                v36 = v25;
                v37 = 2080;
                v38 = "AFRCProcessBasebandNotification";
                v39 = 1024;
                v40 = 4997;
                v41 = 1024;
                v42 = v27;
                v43 = 1024;
                v44 = v28;
                _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Baseband dropped %u packet(s) for PT %u.", buf, 0x28u);
              }
            }

            v29 = *(v17 + 1);
            if (*(v17 + 1))
            {
              v30 = 0;
              do
              {
                *&v13[2 * v30] = bswap32(*(v8 + v15)) >> 16;
                v15 += 2;
                ++v30;
              }

              while (v30 < v29);
            }

            ++v12;
            v13 += 1004;
            v14 = v15;
            if (v12 == 6)
            {
              ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
              if (ErrorLogLevelForModule >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  AFRCProcessBasebandNotification_cold_1();
                }
              }

              LOWORD(v12) = 6;
              break;
            }
          }

          v9 = v34;
          WORD2(__dst[2]) = v12;
        }

        return AFRCUpdateBBNote(v9, __dst);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t AFRCUpdateBBNote(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v135 = *MEMORY[0x1E69E9840];
  v103 = 0;
  v3 = micro(a1, a2);
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2149646338;
  }

  v5 = v4;
  pthread_mutex_lock(v4 + 40);
  if (!*(v5 + 2928))
  {
    goto LABEL_164;
  }

  v101 = v5;
  if (*v2 == 2)
  {
    v6 = *(v5 + 2988) - 1;
    *(v5 + 2988) = v6;
    if (v6)
    {
      *(v5 + 9544) = 0;
      *(v5 + 9552) = v3;
      *(v5 + 9572) = 0;
    }

    *(v5 + 2992) = v3;
    if (*(v2 + 18) >= 1 && *(v2 + 20))
    {
      v7 = 0;
      v8 = *(v2 + 16);
      v9 = *(v5 + 3004);
      v10 = (v2 + 24);
      do
      {
        v11 = *v10;
        if (*(v10 - 2) == v9)
        {
          *(v5 + 9616) += v11;
          if (v8 > *(v5 + 3006))
          {
            if (v11)
            {
              *(v5 + 3000) = 1;
            }

            break;
          }
        }

        else
        {
          *(v5 + 9620) += v11;
        }

        v10 += 502;
        ++v7;
      }

      while (v7 < *(v2 + 20));
    }

    if (!*(v5 + 2848))
    {
      goto LABEL_59;
    }

    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v134[6] = v30;
    v134[7] = v30;
    v134[4] = v30;
    v134[5] = v30;
    v134[2] = v30;
    v134[3] = v30;
    v134[0] = v30;
    v134[1] = v30;
    VRLogfileGetTimestamp(v134, 0x80u);
    if (*(v2 + 18) <= 0)
    {
      *(v2 + 20) = 1;
      *(v2 + 22) = 0;
      *(v2 + 24) = 0;
    }

    else if (!*(v2 + 20))
    {
LABEL_57:
      if (*(v5 + 3000))
      {
        VRLogfilePrint(*(v5 + 2848), "%s Request video refresh for PT (%u).\n", v134, *(v5 + 3004));
      }

LABEL_59:
      pthread_mutex_unlock((v5 + 2560));
      if (*(v5 + 2680) && *(v2 + 20))
      {
        v38 = 0;
        v39 = *(v2 + 16);
        v40 = (v2 + 26);
        do
        {
          MediaQueue_BBFlushAcked(*(v5 + 2808), *(v40 - 1), v40, v39);
          ++v38;
          v40 += 502;
        }

        while (v38 < *(v2 + 20));
      }

      goto LABEL_69;
    }

    v31 = 0;
    v102 = v2 + 22;
    v32 = (v2 + 26);
    v100 = v2;
    do
    {
      if (*(v2 + 18))
      {
        if (*(v2 + 18) == 0xFFFF)
        {
          VRLogfilePrint(*(v5 + 2848), "%s TID[%04X] Drop ACK reported a failure%s\n");
        }

        else
        {
          v33 = *(v102 + 1004 * v31 + 2);
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v105 = 0u;
          memset(buf, 0, sizeof(buf));
          if (v33)
          {
            if (v33 >= 0x66)
            {
              v34 = 102;
            }

            else
            {
              v34 = v33;
            }

            v35 = buf;
            v36 = v32;
            do
            {
              v37 = *v36++;
              sprintf(v35, "%04X ", v37);
              v35 += 5;
              --v34;
            }

            while (v34);
            *(v35 - 1) = 0;
            v2 = v100;
            v5 = v101;
          }

          VRLogfilePrint(*(v5 + 2848), "%s TID[%04X] Drop ACK for PT %u: %2u packets dropped [%s]%s\n");
        }
      }

      else
      {
        VRLogfilePrint(*(v5 + 2848), "%s TID[%04X] Drop ACK, no packet dropped%s\n");
      }

      ++v31;
      v32 += 502;
    }

    while (v31 < *(v2 + 20));
    goto LABEL_57;
  }

  if (!*(v5 + 9568))
  {
    v16 = 0;
    goto LABEL_24;
  }

  *buf = -1;
  LODWORD(v134[0]) = -1431655766;
  MediaQueue_GetTimeRateChanged(*(v5 + 2808), buf, v134);
  if (*(v5 + 2476))
  {
    v13 = v134[0];
    v14 = *(v5 + 9568);
    goto LABEL_19;
  }

  v13 = v134[0];
  v14 = *(v5 + 9568);
  if (!*(v5 + 2472) && LODWORD(v134[0]) < v14)
  {
LABEL_164:
    if (CalculateBasebandRate(v5, v2, &v103 + 1, &v103, 0))
    {
LABEL_67:
      memcpy((v5 + 3008), v2, 0x17A0uLL);
      UpdateAudioTxInfo(v5, v41, v42, v43, v44, v45, v46, v47);
      VRLogfilePrintWithTimestamp(*(v5 + 2848), "%2u%2u%2u%2u%2u %6u\t%6u\t%u\t%u %4u\t%4u\t%4u\t%4u\t%4u\t%4d\t%.4f\t%.4f\t%4u %.2f %c(%1d,%1d) %1d %4d\n", *(v2 + 4), *(v2 + 16), *(v2 + 18), *(v2 + 20), *(v2 + 22), *(v2 + 24), *(v2 + 28), *(v2 + 32));
      goto LABEL_68;
    }

    goto LABEL_32;
  }

LABEL_19:
  if (v13 >= v14)
  {
    v15 = *buf;
  }

  else
  {
    LODWORD(v134[0]) = v14;
    *buf = v3;
    v13 = v14;
    v15 = v3;
  }

  VRLogfilePrintWithTimestamp(*(v5 + 2848), "Rate change done, [%.6f %u>=%d %u%s], taking new samples.\n", v15, v13, v14, *(v5 + 44) / 0x3E8u, *(&g_apszStMode + *(v5 + 1400)));
  v17 = *buf;
  *(v5 + 9560) = *buf;
  *(v5 + 9552) = v17;
  *(v5 + 9568) = 0;
  *(v5 + 9544) = 0;
  v16 = 1;
LABEL_24:
  if (CalculateBasebandRate(v5, v2, &v103 + 1, &v103, v16))
  {
    v25 = (*(v5 + 2980) - *(v5 + 2984)) & ~((*(v5 + 2980) - *(v5 + 2984)) >> 31);
    if (*(v5 + 2988))
    {
      VRLogfilePrintWithTimestamp(*(v5 + 2848), "Still trying to flush baseband with flush counter: %d. Stop ramp-up and possibly decrease audio fraction based on BBAvgTxRate: %d\n", *(v5 + 2988), *(v5 + 2968));
      if (v3 - *(v5 + 2992) <= 3.0 || *(v5 + 2980))
      {
        goto LABEL_66;
      }

      v26 = (v5 + 2992);
      VRLogfilePrintWithTimestamp(*(v5 + 2848), "Flush counter: %d stuck for more than %d seconds. And baseband shows TxRate:%d, TxDelay:%d. Reset the flush counter.\n", *(v5 + 2988), 3, *(v5 + 2968), 0);
      *(v5 + 2988) = 0;
LABEL_65:
      *v26 = v3;
LABEL_66:
      RampDownAudio(v5, v3);
      *(v5 + 9544) = 0;
      goto LABEL_67;
    }

    if (!*(v5 + 2968))
    {
      v26 = (v5 + 2992);
      goto LABEL_65;
    }

    v27 = *(v5 + 9544);
    if (v27 > 14)
    {
      memmove((v5 + 9304), (v5 + 9312), 0x70uLL);
      v48 = *(v5 + 9428);
      *(v5 + 9440) = *(v5 + 9444);
      *(v5 + 9424) = v48;
      *(v5 + 9456) = *(v5 + 9460);
      *(v5 + 9472) = *(v5 + 9476);
      v49 = *(v5 + 9504);
      *(v5 + 9484) = *(v5 + 9488);
      *(v5 + 9500) = v49;
      *(v5 + 9516) = *(v5 + 9520);
      *(v5 + 9532) = *(v5 + 9536);
      *(v5 + 9416) = *(v2 + 8);
      *(v5 + 9480) = v25;
      v28 = *(v5 + 2980);
      *(v5 + 9540) = v28;
      v29 = *(v5 + 9544);
    }

    else
    {
      *(v5 + 8 * v27 + 9304) = *(v2 + 8);
      *(v5 + 4 * v27 + 9424) = v25;
      v28 = *(v5 + 2980);
      *(v5 + 4 * *(v5 + 9544) + 9484) = v28;
      v29 = *(v5 + 9544) + 1;
      *(v5 + 9544) = v29;
    }

    if (v29 < 4)
    {
      goto LABEL_67;
    }

    v50 = (v29 - 4);
    if (v29 != 4)
    {
      while (*(v5 + 9304 + 8 * (v29 - 1)) - *(v5 + 9304 + 8 * v50) < 0.5)
      {
        v88 = v50-- <= 1;
        if (v88)
        {
          LODWORD(v50) = 0;
          break;
        }
      }
    }

    v51 = v29 - v50;
    if (v51 < 1)
    {
      v68 = 0.0;
      v69 = 0.0;
      v70 = 0.0;
    }

    else
    {
      v52 = v50 + (v51 >> 1);
      v53 = v51 + 1;
      v54 = (v5 + 8 * v52 + 9304);
      v55 = (v5 + 4 * v52 + 9484);
      v56 = (v5 + 4 * v50 + 9484);
      v57 = (v5 + 8 * v50 + 9304);
      v58 = 0.0;
      v59 = 0.0;
      v60 = 0.0;
      v61 = 0.0;
      v62 = 0.0;
      v63 = 0.0;
      v64 = v53 >> 1;
      do
      {
        v63 = v63 + *(v56 - 15);
        v62 = v62 + *(v55 - 15);
        v65 = *v57++;
        v61 = v61 + v65;
        v66 = *v54++;
        v60 = v60 + v66;
        LODWORD(v66) = *v56++;
        *&v67 = *&v66;
        v59 = v59 + *&v66;
        LODWORD(v66) = *v55++;
        LODWORD(v67) = LODWORD(v66);
        v58 = v58 + v67;
        --v64;
      }

      while (v64);
      v68 = (v62 - v63) * 0.001;
      v69 = v60 - v61;
      v70 = (v58 - v59) * 0.001;
    }

    v71 = v68 / v69 * 0.5;
    v72 = v70 / v69 * 0.5;
    if ((*(v5 + 1396) & 4) != 0)
    {
      LODWORD(v75) = *(v5 + 28);
      v80 = *(v5 + 36);
      if (v75 <= v80)
      {
        v73 = *(v5 + 40);
        v78 = *(v5 + 9696);
        v82 = v75 - 1;
        v83 = &g_adwTxRateTiers[v75];
        v79 = 0.12;
        v80 = *(v5 + 28);
        while (1)
        {
          v84 = *v83--;
          if (v84 <= *(v5 + 2968))
          {
            break;
          }

          --v80;
          if (!v78)
          {
            v88 = v82-- <= v73;
            if (!v88)
            {
              continue;
            }
          }

LABEL_99:
          if (v80 <= v73)
          {
            v80 = v73;
          }

          break;
        }
      }

      else
      {
        v78 = *(v5 + 9696);
        v79 = 0.12;
      }
    }

    else
    {
      v73 = *(v5 + 40);
      if (*(v5 + 2968) >= *(v5 + 44))
      {
        v74 = *(v5 + 44);
      }

      else
      {
        v74 = *(v5 + 2968);
      }

      v75 = *(v5 + 28);
      v76 = v75 - 1;
      v77 = &g_adwTxRateTiers[v75];
      v78 = *(v5 + 9696);
      v79 = 0.2;
      v80 = *(v5 + 28);
      while (1)
      {
        v81 = *v77--;
        if (v81 <= v74)
        {
          break;
        }

        --v80;
        if (!v78)
        {
          v88 = v76-- <= v73;
          if (!v88)
          {
            continue;
          }
        }

        goto LABEL_99;
      }
    }

    v85 = v71 > v79;
    if (v72 > 0.4)
    {
      v85 = 1;
    }

    if (v78)
    {
      if (v28 <= 0x320 || !v85)
      {
        goto LABEL_141;
      }

      if (v75 == v80)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (v85 || *(v5 + 2472))
      {
        if (v28 < 0x321)
        {
          goto LABEL_141;
        }
      }

      else if ((*(v5 + 2960) & 1) == 0 || v28 <= 0x320)
      {
        goto LABEL_141;
      }

      v87 = *(v5 + 2504);
      v88 = v87 == 0.0 || v3 - v87 <= 0.5;
      if (v88)
      {
LABEL_141:
        if (v71 >= 0.2)
        {
          *(v5 + 9552) = *(v2 + 8);
        }

        *(v5 + 9572) = 0;
        if (*(v5 + 9576) >= 1.0)
        {
          if (v71 >= 0.1)
          {
            goto LABEL_67;
          }

          if (*(v5 + 2980) > 0x1F3u)
          {
            goto LABEL_67;
          }

          v98 = *(v5 + 20);
          if (*(v5 + 44) >= v98)
          {
            goto LABEL_67;
          }

          v99 = *(v2 + 8);
          if (v99 - *(v5 + 9552) <= 0.5 || v99 - *(v5 + 9560) <= 0.5 || v99 - *(v5 + 9584) <= 0.5)
          {
            goto LABEL_67;
          }

          if (!*(v5 + 9696))
          {
            if (*(v5 + 2960))
            {
              v97 = 1;
            }

            else
            {
              v97 = 2;
            }

            goto LABEL_149;
          }

          if (v98 < g_adwTxRateTiers[*(v5 + 28) + 1])
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v71 >= 0.1)
          {
            goto LABEL_67;
          }

          if (*(v5 + 2980) > 0x1F3u)
          {
            goto LABEL_67;
          }

          v96 = *(v2 + 8);
          if (v96 - *(v5 + 9584) <= 2.0 || v96 - *(v5 + 9552) <= 2.0)
          {
            goto LABEL_67;
          }
        }

        v97 = 1;
LABEL_149:
        *(v5 + 9572) = v97;
        goto LABEL_67;
      }

      if (v75 == v80)
      {
        RampDownAudio(v5, v3);
        *(v5 + 2520) = v3;
LABEL_123:
        v91 = *(v5 + 1396);
        if (v91)
        {
          *(v5 + 1396) = v91 & 0xFFFFFFFE;
          calculateInitialRampUpDeltas(v5, v18);
          if (*(v5 + 2816))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v92 = VRTraceErrorLogLevelToCSTR();
              v93 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                *&buf[4] = v92;
                *&buf[12] = 2080;
                *&buf[14] = "AFRCUpdateBBNote";
                *&buf[22] = 1024;
                *&buf[24] = 5308;
                *&buf[28] = 2080;
                *&buf[30] = "Initial Rampup done!";
                _os_log_impl(&dword_1DB56E000, v93, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %s", buf, 0x26u);
              }
            }
          }

          VRLogfilePrint(*(v5 + 2832), "%s", "Initial Rampup done!\n");
          VRLogfilePrintWithTimestamp(*(v5 + 2848), "%s", "Initial Rampup done!\n");
          v91 = *(v5 + 1396);
        }

        if ((v91 & 4) != 0)
        {
          *(v5 + 1396) = v91 & 0xFFFFFFFB;
        }

        if (*(v5 + 1400) == 3)
        {
          v94 = *(v5 + 2552) + 1;
          *(v5 + 2552) = v94;
          v95 = *(v5 + 2544);
          if (v95 == 0.0)
          {
            *(v5 + 2544) = v3;
          }

          else if (v3 - v95 >= 2.0)
          {
            *(v5 + 2552) = 0;
            *(v5 + 2544) = 0;
          }

          else if (v94 >= 4)
          {
            *(v5 + 2408) = 1;
          }
        }

        goto LABEL_141;
      }
    }

    if ((v80 & 0x80000000) == 0 || v3 - *(v5 + 2520) > 3.0)
    {
      *(v5 + 1400) = 3;
      v89 = *(v5 + 1404) + 1;
      *(v5 + 1404) = v89;
      *(v5 + 36) = v75;
      *(v5 + 28) = v80;
      v90 = g_adwTxRateTiers[v80];
      *(v5 + 44) = v90;
      *(v5 + 9568) = v89;
      *(v5 + 2484) = 1;
      *(v5 + 2520) = v3;
      VRLogfilePrint(*(v5 + 2832), "Congestion!!! TxRate v %u, BaseBand.\n", v90);
      VRLogfilePrintWithTimestamp(*(v5 + 2848), "Rate change [%u] (Ramp Down to %u, Baseband).\n", *(v5 + 9568), *(v5 + 44) / 0x3E8u);
    }

    UpdateFECLevel(v5);
    goto LABEL_123;
  }

LABEL_32:
  UpdateAudioTxInfo(v5, v18, v19, v20, v21, v22, v23, v24);
  VRLogfilePrintWithTimestamp(*(v5 + 2848), "%2u%2u%2u%2u%2u %6u\t%6u\t%u\t%u [Bogus notification, discard]\n", *(v2 + 4), *(v2 + 16));
LABEL_68:
  pthread_mutex_unlock((v5 + 2560));
LABEL_69:
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetReceiveQueueSize(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 2864));
  *(v4 + 164) = a2;
  pthread_mutex_unlock((v4 + 2864));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetVideoPaused(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock(v3 + 40);
  v5 = *&v4[38].__opaque[32];
  if (!a2 && v5 && (v4[46].__opaque[8] & 1) == 0)
  {
    *&v4[21].__opaque[48] = 5;
    v6 = *&v4[21].__opaque[52] + 1;
    *&v4[21].__opaque[52] = v6;
    *&v4[149].__opaque[24] = v6;
  }

  if (v5 != a2)
  {
    if (a2)
    {
      *&v4[21].__opaque[36] = 0;
    }

    if (LODWORD(v4[44].__sig))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if (a2)
          {
            v9 = "Paused";
          }

          else
          {
            v9 = "Unpaused";
          }

          *buf = 136315906;
          v13 = v7;
          v14 = 2080;
          v15 = "AFRCSetVideoPaused";
          v16 = 1024;
          v17 = 5455;
          v18 = 2080;
          v19 = v9;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: Video %s...", buf, 0x26u);
        }
      }
    }

    if (a2)
    {
      v10 = "Paused";
    }

    else
    {
      v10 = "Unpaused";
    }

    VRLogfilePrint(*&v4[44].__opaque[8], "Video %s...\n", v10);
    VRLogfilePrintWithTimestamp(*&v4[44].__opaque[24], "Rate change [%u] (%s), new rate %ukbps...\n", *&v4[149].__opaque[24], v10, *&v4->__opaque[36] / 0x3E8u);
  }

  *&v4[38].__opaque[32] = a2;
  pthread_mutex_unlock(v4 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetAudioPaused(uint64_t a1, int a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  v7 = pthread_mutex_lock(v5 + 40);
  if (a3)
  {
    LODWORD(v6[41].__sig) = a2;
  }

  else
  {
    if (!a2 && HIDWORD(v6[41].__sig))
    {
      *&v6[2].__opaque[16] = micro(v7, v8);
    }

    HIDWORD(v6[41].__sig) = a2;
  }

  pthread_mutex_unlock(v6 + 40);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316162;
      v13 = v10;
      v14 = 2080;
      v15 = "AFRCSetAudioPaused";
      v16 = 1024;
      v17 = 5488;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = a2;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCSetAudioPaused: local? %d, audio paused? %d", &v12, 0x28u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetAudioSilent(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  *(v3 + 9700) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetPLCalc(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  *(v3 + 244) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCUpdateCellTech(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v13 = CheckInHandleDebug();
  if (!v13)
  {
    return 2149646338;
  }

  v14 = v13;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317186;
      v24 = v22;
      v25 = 2080;
      v26 = "AFRCUpdateCellTech";
      v27 = 1024;
      v28 = 5532;
      v29 = 2080;
      v30 = CelltechToStr();
      v31 = 2080;
      v32 = CelltechToStr();
      v33 = 2080;
      v34 = CelltechToStr();
      v35 = 2080;
      v36 = CelltechToStr();
      v37 = 1024;
      v38 = a6;
      v39 = 1024;
      v40 = a7;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCUpdateCellTech: iLocalCellTech: %s -> %s  iRemoteCellTech: %s -> %s  fEnableRRx: %d  didHandover: %d", buf, 0x50u);
    }
  }

  *(v14 + 2936) = v11;
  *(v14 + 2940) = v9;
  pthread_mutex_lock((v14 + 2560));
  *(v14 + 2688) = 0;
  if (*(v14 + 2928) != v12)
  {
    *(v14 + 2960) = 0;
    *(v14 + 2476) = 0;
    *(v14 + 9576) = 0x3FF0000000000000;
    *(v14 + 9056) = 0;
    if (!*(v14 + 9696))
    {
      *(v14 + 2480) = 1;
    }
  }

  *(v14 + 2928) = v12;
  *(v14 + 2932) = v10;
  if (v12)
  {
    v16 = *(v14 + 2936);
    v18 = v11 == 4 || v16 == 2;
    *(v14 + 2948) = v18;
    *(v14 + 2952) = v16 == 7;
  }

  if (*(v14 + 9696))
  {
    *(v14 + 2464) = 0x4000000000000000;
    *(v14 + 2944) = a6;
    v19 = 1.0;
  }

  else
  {
    v21 = 2.0;
    if (!*(v14 + 2948))
    {
      v21 = 1.0;
    }

    *(v14 + 2464) = v21;
    *(v14 + 2944) = a6;
    v19 = 0.5;
    if (a6)
    {
      v19 = 1.0;
    }
  }

  *(v14 + 2456) = v19;
  pthread_mutex_unlock((v14 + 2560));
  if (!*(v14 + 9696))
  {
    BWEUpdateSenderRecvrEnabledStates(v14);
    BWEUpdateFilterType(v14);
  }

  CheckOutHandleDebug();
  return 0;
}

void BWEUpdateSenderRecvrEnabledStates(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2928))
  {
    IsLTEOrNewer = NetworkUtils_IsLTEOrNewer(*(a1 + 2936));
  }

  else
  {
    IsLTEOrNewer = 1;
  }

  *(a1 + 720) = *(a1 + 722) & IsLTEOrNewer;
  if (*(a1 + 2932))
  {
    v3 = NetworkUtils_IsLTEOrNewer(*(a1 + 2940));
    v4 = *(a1 + 723);
    *(a1 + 721) = v4;
    if (v4 == 1 && (v3 & 1) == 0)
    {
      BWEstResetRecvrBWState(a1, 0);
    }
  }

  else
  {
    *(a1 + 721) = *(a1 + 723);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 720);
      v8 = *(a1 + 721);
      v9 = 136316674;
      v10 = v5;
      v11 = 2080;
      v12 = "BWEUpdateSenderRecvrEnabledStates";
      v13 = 1024;
      v14 = 6316;
      v15 = 1024;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      v19 = 2080;
      v20 = CelltechToStr();
      v21 = 2080;
      v22 = CelltechToStr();
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ////^^^^ BWEUpdateSenderRecvrEnabledStates: Sender/Recvr %d/%d iLocalCellTech: %s  iRemoteCellTech: %s", &v9, 0x3Cu);
    }
  }
}

void BWEUpdateFilterType(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2928) && !NetworkUtils_IsLTEOrNewer(*(a1 + 2936)) || *(a1 + 2932) && !NetworkUtils_IsLTEOrNewer(*(a1 + 2940)))
  {
    v2 = 2;
  }

  else
  {
    if ((!*(a1 + 2928) || (NetworkUtils_IsLTEOrNewer(*(a1 + 2936)) & 1) == 0) && *(a1 + 2932))
    {
      NetworkUtils_IsLTEOrNewer(*(a1 + 2940));
    }

    v2 = 1;
  }

  *(a1 + 728) = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 728);
      if (v5 > 3)
      {
        v6 = "UNEXPECTED";
      }

      else
      {
        v6 = off_1E85F5060[v5];
      }

      v7 = *(a1 + 2928);
      v8 = CelltechToStr();
      v9 = *(a1 + 2932);
      v10 = CelltechToStr();
      v11 = *(a1 + 732);
      v12 = 136317442;
      v13 = v3;
      v14 = 2080;
      v15 = "BWEUpdateFilterType";
      v16 = 1024;
      v17 = 6281;
      v18 = 1024;
      v19 = v5;
      v20 = 2080;
      v21 = v6;
      v22 = 1024;
      v23 = v7;
      v24 = 2080;
      v25 = v8;
      v26 = 1024;
      v27 = v9;
      v28 = 2080;
      v29 = v10;
      v30 = 1024;
      v31 = v11;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d BWEst FilterType: %d/%s <-- ImOnCellular: %d/%s  RemoteOnCellular: %d/%s  PeerIsOnIOS: %d ", &v12, 0x52u);
    }
  }
}

uint64_t AFRCUpdateRateTier(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock(v3 + 40);
  HIDWORD(v4[153].__sig) = a2;
  pthread_mutex_unlock(v4 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCProcessWCMSetCallConfig(uint64_t a1, unsigned int a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  pthread_mutex_lock(v5 + 40);
  if (!a2)
  {
    a2 = *&v6->__opaque[16];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *&v6->__opaque[12];
      v10 = *&v6->__opaque[16];
      v18 = 136316674;
      v19 = v7;
      v20 = 2080;
      v21 = "AFRCProcessWCMSetCallConfig";
      v22 = 1024;
      v23 = 5637;
      v24 = 1024;
      v25 = v9;
      v26 = 1024;
      v27 = a2;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ProcessWCMSetCallConfig: (%u->%u), interference: (%u), clientTxCap: %u", &v18, 0x34u);
    }
  }

  *&v6->__opaque[12] = a2;
  v11 = *&v6->__opaque[20];
  v12 = g_adwTxRateTiers[v11];
  if (v12 <= a2)
  {
    v14 = *&v6->__opaque[20];
  }

  else
  {
    v13 = *&v6->__opaque[32];
    if (v11 >= v13)
    {
      v14 = *&v6->__opaque[32];
    }

    else
    {
      v14 = *&v6->__opaque[20];
    }

    if (v11 > v13)
    {
      v15 = v11;
      v16 = v11 - 1;
      while (1)
      {
        *&v6->__opaque[20] = v16;
        v12 = g_adwTxRateTiers[v15 - 1];
        if (v12 <= a2)
        {
          break;
        }

        --v15;
        --v16;
        if (v15 <= v13)
        {
          goto LABEL_19;
        }
      }

      v14 = v16;
    }
  }

LABEL_19:
  *&v6->__opaque[28] = v14;
  *&v6->__opaque[36] = v12;
  pthread_mutex_unlock(v6 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCProcessWCMGetCallConfig(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v6 + 20);
      v10 = *(v6 + 44);
      v12 = 136316162;
      v13 = v7;
      v14 = 2080;
      v15 = "AFRCProcessWCMGetCallConfig";
      v16 = 1024;
      v17 = 5660;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ProcessWCMGetCallConfig: (TxCap %u, TxRate %u).", &v12, 0x28u);
    }
  }

  if (a2)
  {
    *a2 = *(v6 + 20);
  }

  if (a3)
  {
    *a3 = *(v6 + 44);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCMarkNetworkChange(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149646338;
  }

  VRLogfilePrintWithTimestamp(*(v1 + 2832), "%s", "network state changed.\n");
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCAddBBDump(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149646338;
  }

  v2 = v1;
  AFRCLog_OpenBBLog(v1, *(v1 + 2832) != 0, 1);
  if (*(v2 + 2848) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "AFRCAddBBDump";
      v10 = 1024;
      v11 = 5699;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ### Add BB dump for AFRC", &v6, 0x1Cu);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

FILE **AFRCLog_OpenBBLog(FILE **result, int a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = result;
    v5 = result[356];
    if (!v5)
    {
      memset(v6, 170, 12);
      __sprintf_chk(v6, 0, 0xCuLL, "%010u", *(v4 + 2824));
      v5 = VRLogfileAlloc(0, v6, "AFRC", ".bbdump", "com.apple.VideoConference.AFRClogBB", 32);
      *(v4 + 2848) = v5;
    }

    if (a3)
    {
      return VRLogfilePrintSync(v5, "STime\t\tATime\t\tV-R-A-F-T\tQD\tQD2\tXmitB\tLTxTS\tIBR\tABRS\tABRL\tBDS\tBDL\tBDCD\tNBDCD\tND\tHT\tTR\tAF\n");
    }

    else
    {
      return VRLogfilePrintSync(v5, "STime\t\tV-R-A-F-T\tQD\tQD2\tXmitB\tLTxTS\tIBR\tIBR_OLD\tABRS\tABRL\tBDS\tBDCD\tNBDCD\tND\tTR\tAF\n");
    }
  }

  return result;
}

uint64_t AFRCMarkResetCS(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149646338;
  }

  v2 = v1;
  pthread_mutex_lock(v1 + 40);
  *&v2[41].__opaque[24] = 0;
  pthread_mutex_unlock(v2 + 40);
  VRLogfilePrintWithTimestamp(*&v2[44].__opaque[8], "%s", "reset connection stats.\n");
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetConnectionNumber(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock(v3 + 40);
  v5 = *v4[41].__opaque;
  if (v5 != a2)
  {
    *v4[41].__opaque = a2;
    *&v4[41].__opaque[24] = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v10 = v6;
        v11 = 2080;
        v12 = "AFRCSetConnectionNumber";
        v13 = 1024;
        v14 = 5739;
        v15 = 1024;
        v16 = v5;
        v17 = 1024;
        v18 = a2;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCSetConnectionNumber (%d->%d)", buf, 0x28u);
      }
    }
  }

  pthread_mutex_unlock(v4 + 40);
  VRLogfilePrintWithTimestamp(*&v4[44].__opaque[8], "connection #: (%d->%d).\n", v5, a2);
  CheckOutHandleDebug();
  return 0;
}

void BWEstResetRecvrBWState(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1 + 672) = 0;
  *(a1 + 968) = 0;
  *(a1 + 980) = 0;
  *(a1 + 984) = 0;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0;
  *(a1 + 952) = 0;
  *(a1 + 944) = 0;
  *(a1 + 960) = 0;
  if (a2)
  {
    *(a1 + 1040) = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "BWEstResetRecvrBWState";
      v8 = 1024;
      v9 = 5870;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d BWEstResetRecvrBWState", &v4, 0x1Cu);
    }
  }
}

uint64_t AFRCSetBWEstMode(uint64_t a1, int a2, unsigned __int8 a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  if (a2)
  {
    *(v5 + 722) = *(v5 + 724);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v19 = v6[722];
          v20 = v6[723];
          v21 = 136316162;
          v22 = v7;
          v23 = 2080;
          v24 = "AFRCSetBWEstMode";
          v25 = 1024;
          v26 = 6522;
          v27 = 1024;
          v28 = v19;
          v29 = 1024;
          v30 = v20;
          _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d ////^^^^ AFRCSetBWEstMode: Sender/Recvr (master) %d/%d ", &v21, 0x28u);
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v6[722];
        v11 = v6[723];
        v21 = 136316162;
        v22 = v7;
        v23 = 2080;
        v24 = "AFRCSetBWEstMode";
        v25 = 1024;
        v26 = 6522;
        v27 = 1024;
        v28 = v10;
        v29 = 1024;
        v30 = v11;
        v12 = "VCRC [%s] %s:%d ////^^^^ AFRCSetBWEstMode: Sender/Recvr (master) %d/%d ";
        v13 = v8;
        v14 = 40;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v21, v14);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    v18 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        AFRCSetBWEstMode_cold_1(v16);
      }

      goto LABEL_17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = v16;
      v23 = 2080;
      v24 = "AFRCSetBWEstMode";
      v25 = 1024;
      v26 = 6525;
      v12 = "VCRC [%s] %s:%d ////^^^^ AFRCSetBWEstMode: FALLING TO BW-EST BACKWARD COMPATIBLITY MODE";
      v13 = v17;
      v14 = 28;
      goto LABEL_12;
    }
  }

LABEL_17:
  BWEUpdateSenderRecvrEnabledStates(v6);
  v6[732] = a3;
  BWEUpdateFilterType(v6);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetSendersLogState(uint64_t a1, BOOL *a2, BOOL *a3)
{
  if (!CheckInHandleDebug())
  {
    return 2149646338;
  }

  v5 = g_iBWEstLogLevel;
  *a2 = g_iBWEstLogLevel > 6;
  *a3 = v5 > 0;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetSenderRecvrModes(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  *a2 = *(v5 + 720);
  *a3 = *(v5 + 721);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetBWECap(uint64_t a1, unsigned int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  if (a2)
  {
    for (i = 0; i != 38; ++i)
    {
      if (g_adwTxRateTiers[i] >= a2)
      {
        break;
      }
    }

    if (i >= 0x24)
    {
      LODWORD(i) = 36;
    }

    v6 = g_adwTxRateTiers[(i + 1)];
  }

  else
  {
    v6 = 0;
  }

  *(v3 + 1040) = v6;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v4 + 1040);
        v13 = 136316162;
        v14 = v8;
        v15 = 2080;
        v16 = "AFRCSetBWECap";
        v17 = 1024;
        v18 = 6597;
        v19 = 1024;
        v20 = a2;
        v21 = 1024;
        v22 = v11;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCSetBWECap newBitrateCap: %d -> dwFakeBitrateCap: %d  ", &v13, 0x28u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(v4 + 1040);
      v13 = 136316162;
      v14 = v8;
      v15 = 2080;
      v16 = "AFRCSetBWECap";
      v17 = 1024;
      v18 = 6597;
      v19 = 1024;
      v20 = a2;
      v21 = 1024;
      v22 = v12;
      _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d AFRCSetBWECap newBitrateCap: %d -> dwFakeBitrateCap: %d  ", &v13, 0x28u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetWrmMetrics(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 2149580801;
  }

  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = *(v3 + 252);
  a2[50] = *(v3 + 9696);
  a2[51] = v4;
  a2[52] = *(v3 + 44) / 0x3E8u;
  v5 = *(v3 + 2928);
  a2[54] = (*(v3 + 176) * 100.0);
  a2[55] = v5;
  if (*(v3 + 2472))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v3 + 2476) != 0;
  }

  a2[56] = v6;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetStatisticsCollector(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2149580801;
  }

  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  *(v3 + 9760) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCLog_TailFile(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = v2;
    if (v2)
    {
      v6 = v4;
      v7 = result;
      fprintf(result, "========== Start logging from File %d ==========\n", v3);
      memset(__b, 170, sizeof(__b));
      v8 = (1500 * v6);
      v9 = MEMORY[0x1E128BE00](v5);
      if (v9 <= v8)
      {
        v11 = v9;
        result = fseek(v5, 0, 0);
        v8 = v11;
LABEL_9:
        if (v8 >= 1)
        {
          do
          {
            result = fread(__b, 1uLL, 0x1000uLL, v5);
            if (!result)
            {
              break;
            }

            v12 = result;
            result = fwrite(__b, 1uLL, result, v7);
            v10 = v8 <= v12;
            v8 -= v12;
          }

          while (!v10);
        }
      }

      else
      {
        result = fseek(v5, -v8, 2);
        while (1)
        {
          v10 = v8-- < 1;
          if (v10)
          {
            break;
          }

          result = fgetc(v5);
          if (result == 10)
          {
            goto LABEL_9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t calculateInitialRampUpDeltas(uint64_t result, uint64_t a2)
{
  if ((*(result + 9800) & 1) == 0)
  {
    v2 = result;
    micro(result, a2);
    result = reportingAdaptiveLearningStats();
    *(v2 + 9800) = 1;
  }

  return result;
}

void DetectCongestion(uint64_t a1, uint64_t a2, int *a3, int a4, double a5, double a6, double a7)
{
  v10 = a2;
  v179 = *MEMORY[0x1E69E9840];
  v14 = micro(a1, a2);
  v15 = *(a1 + 1392) + *(a1 + 1388);
  if (!a4 || (v16 = v14, v17 = *(a1 + 1412), v17 >= 1) && a5 - *(a1 + 8 * (v17 - 1) + 1416) < 0.01)
  {
    *a3 = 0;
    v18 = 0.0;
    v19 = -1.0;
    v20 = 0.0;
LABEL_5:
    v21 = *a3;
    if (*(a1 + 2816))
    {
      v22 = *(a1 + 2820);
      *(a1 + 2820) = v22 + 1;
      if ((v22 & 0xF) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v25 = v19;
          if (v19 == -1.0)
          {
            v25 = *(a1 + 2448);
          }

          if (v21)
          {
            v26 = 79;
          }

          else
          {
            v26 = 88;
          }

          v27 = *(a1 + 176) * 100.0;
          v28 = *(a1 + 184) * 100.0;
          v29 = *(a1 + 2700);
          v30 = *(a1 + 2704);
          v32 = *(a1 + 252);
          v31 = *(a1 + 256);
          v33 = *(a1 + 44) / 0x3E8u;
          v34 = *(&g_apszStMode + *(a1 + 1400));
          v35 = *(a1 + 2968) / 0x3E8u;
          v36 = *(a1 + 3036) + *(a1 + 3032);
          v37 = *(a1 + 2980);
          v38 = " UAT";
          if (!*(a1 + 3026))
          {
            v38 = " LAT";
          }

          if (*(a1 + 2472))
          {
            v39 = " _";
          }

          else if (*(a1 + 2476))
          {
            v39 = " -";
          }

          else if (*(a1 + 2404))
          {
            v39 = " <";
          }

          else if (*(a1 + 2400))
          {
            v39 = " >";
          }

          else
          {
            v39 = "";
          }

          *buf = 136321282;
          *&buf[4] = v23;
          v142 = 2080;
          v143 = "AFRCLog_PrintCongestionFullInfo";
          v144 = 1024;
          v145 = 1018;
          v146 = 2048;
          *v147 = a5;
          *&v147[8] = 1024;
          *v148 = v10;
          *&v148[4] = 2048;
          *&v148[6] = a6;
          v149 = 2048;
          v150 = v20;
          v151 = 2048;
          *v152 = v18;
          *&v152[8] = 2048;
          *v153 = v25;
          *&v153[8] = 1024;
          *v154 = v26;
          *&v154[4] = 1024;
          *&v154[6] = (a7 * 1000.0);
          v155 = 2048;
          *v156 = v27;
          *&v156[8] = 2048;
          v157 = v28;
          *v158 = 1024;
          *&v158[2] = v29;
          LOWORD(v159) = 1024;
          *(&v159 + 2) = v30;
          HIWORD(v159) = 1024;
          v160 = v32;
          v161 = 1024;
          v162 = v31;
          v163 = 1024;
          v164 = v15 / 0x3E8;
          v165 = 1024;
          v166 = v33;
          v167 = 2080;
          v168 = v34;
          v169 = 1024;
          v170 = v35;
          v171 = 1024;
          v172 = v36;
          v173 = 1024;
          v174 = v37;
          v175 = 2080;
          v176 = v38;
          v177 = 2080;
          v178 = v39;
          _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %8.3f/%04X: %.4f %.4f %.4f %.4f %c RTT:%u PLR:%4.1f@%.1f %u %u RRx:%u MBL:%d %3u/%3u%s\tBB: %u\t%u\t%u\t%s%s", buf, 0xC8u);
        }
      }
    }

    if (*(a1 + 2832))
    {
      v140 = 0.0;
      *buf = 0;
      v138 = 0;
      v139 = 0;
      MediaQueue_RetrieveAudioVideoRates(*(a1 + 2808), buf, &v140, &v139, &v138);
      if (v19 == -1.0)
      {
        v19 = *(a1 + 2448);
      }

      if (v21)
      {
        v137 = 79;
      }

      else
      {
        v137 = 88;
      }

      VRLogfilePrintWithTimestamp(*(a1 + 2832), "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.1f@%.1f\tRRx:%u\tMBL:%d %u\t%3u/%3u\t %3u:%3u/%3u  %3u:%3u/%3u CS: %1d %3u %3u BB: %u\t%u\t%u\t%s%s%s\t%d\t%d/%d\n", *&a5, v10, *&a6, *&v20, *&v18, *&v19, v137, (a7 * 1000.0), *(a1 + 176) * 100.0, *(a1 + 184) * 100.0, *(a1 + 252), *(a1 + 256));
    }

    return;
  }

  v40 = *(a1 + 2464) * 30.0;
  v41 = v40;
  if (v17 >= v40)
  {
    if (v17 <= v41)
    {
      memmove((a1 + 1416), (a1 + 1424), 8 * v41 - 8);
      memmove((a1 + 1896), (a1 + 1904), 8 * (*(a1 + 2464) * 30.0) - 8);
      *(a1 + 1416 + 8 * (*(a1 + 2464) * 30.0) - 8) = a5;
      v40 = *(a1 + 2464) * 30.0;
      *(a1 + 1896 + 8 * v40 - 8) = a6;
    }

    else
    {
      v43 = v17 - v41 + 1;
      memmove((a1 + 1416), (a1 + 1416 + 8 * v43), 8 * v41 - 8);
      memmove((a1 + 1896), (a1 + 1896 + 8 * v43), 8 * (*(a1 + 2464) * 30.0) - 8);
      *(a1 + 1416 + 8 * (*(a1 + 2464) * 30.0) - 8) = a5;
      *(a1 + 1896 + 8 * (*(a1 + 2464) * 30.0) - 8) = a6;
      v40 = *(a1 + 2464) * 30.0;
      *(a1 + 1412) = v40;
    }
  }

  else
  {
    v42 = a1 + 8 * v17;
    *(v42 + 1416) = a5;
    *(v42 + 1896) = a6;
    *(a1 + 1412) = v17 + 1;
    *(a1 + 2384) = a5;
    *(a1 + 2392) = a5;
  }

  LODWORD(v40) = *(a1 + 44);
  v44 = *&v40 * 0.75;
  if (v44 <= v15 || (v45 = *(a1 + 28), v45 <= *(a1 + 40)))
  {
    if (*(a1 + 2404))
    {
      v44 = v16 - *(a1 + 2416);
      if (v44 > 1.0 && (*(a1 + 2960) & 1) == 0)
      {
        if (*(a1 + 1400) != 3)
        {
          *(a1 + 1400) = 4;
          ++*(a1 + 1404);
          if (*(a1 + 2816))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v46 = VRTraceErrorLogLevelToCSTR();
              v47 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v48 = *(a1 + 1404);
                *buf = 136315906;
                *&buf[4] = v46;
                v142 = 2080;
                v143 = "DetectCongestion";
                v144 = 1024;
                v145 = 3720;
                v146 = 1024;
                *v147 = v48;
                _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: [%u] Rate was limited", buf, 0x22u);
              }
            }
          }

          VRLogfilePrint(*(a1 + 2832), "[%u] Rate was limited\n", *(a1 + 1404));
          VRLogfilePrintWithTimestamp(*(a1 + 2848), "Rate is limited(%ukbps).\n", *(a1 + 44) / 0x3E8u);
        }

        *(a1 + 2384) = a5;
        *(a1 + 2392) = a5;
      }

      *(a1 + 2404) = 0;
    }
  }

  else if (v45 < 7 || !*(a1 + 9696))
  {
    *a3 = 0;
    if (!*(a1 + 2404))
    {
      *(a1 + 2416) = v16;
    }

    *(a1 + 2404) = 1;
  }

  LODWORD(v44) = *(a1 + 44);
  if (*&v44 * 1.25 >= v15)
  {
    if (!*(a1 + 2400))
    {
      goto LABEL_46;
    }

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  *(a1 + 2400) = v49;
LABEL_46:
  if (!*(a1 + 1400))
  {
    goto LABEL_73;
  }

  v140 = NAN;
  LODWORD(v139) = -1431655766;
  if (*(a1 + 1408) != *(a1 + 1404))
  {
    TimeRateChanged = MediaQueue_GetTimeRateChanged(*(a1 + 2808), &v140, &v139);
    if (v139 < *(a1 + 1404) || (v52 = MicroToNTP(v140, TimeRateChanged, v51), v53 = NTPToMiddle32(v52), v10 == -1) || (v10 - (v53 >> 6)) > 0x7FFEu)
    {
      *(a1 + 2424) = 0;
    }

    else
    {
      v54 = a5 + 1.0;
      if (!*(a1 + 2948))
      {
        v54 = a5;
      }

      *(a1 + 2432) = v54;
      *(a1 + 2424) = 1;
      *(a1 + 1408) = *(a1 + 1404);
      *(a1 + 2484) = 0;
      v55 = (v53 >> 6);
      if (*(a1 + 2816))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v56 = VRTraceErrorLogLevelToCSTR();
          v57 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            *&buf[4] = v56;
            v142 = 2080;
            v143 = "DetectCongestion";
            v144 = 1024;
            v145 = 3776;
            v146 = 1024;
            *v147 = v139;
            *&v147[4] = 1024;
            *&v147[6] = v10;
            *v148 = 1024;
            *&v148[2] = v55;
            _os_log_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: [%u] Stabilized (TxTS %u >= %u FB). now collecting samples...", buf, 0x2Eu);
          }
        }
      }

      VRLogfilePrint(*(a1 + 2832), "[%u] Stabilized (TxTS %u >= %u FB). now collecting samples...\n", v139, v10, v55);
      VRLogfilePrintWithTimestamp(*(a1 + 2848), "Rate(%ukbps) stabilized.\n", *(a1 + 44) / 0x3E8u);
    }
  }

  v58 = *(a1 + 2424);
  if (v58 >= 1)
  {
    v59 = *(a1 + 2464);
    v60 = vcvtd_n_s64_f64(v59, 2uLL);
    if (a5 - *(a1 + 2432) >= v59 * 0.5 && v58 >= v60)
    {
      if (*(a1 + 2816))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v62 = VRTraceErrorLogLevelToCSTR();
          v63 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v64 = *(a1 + 1404);
            v65 = *(a1 + 2424);
            *buf = 136316418;
            *&buf[4] = v62;
            v142 = 2080;
            v143 = "DetectCongestion";
            v144 = 1024;
            v145 = 3797;
            v146 = 1024;
            *v147 = v64;
            *&v147[4] = 1024;
            *&v147[6] = v65;
            *v148 = 1024;
            *&v148[2] = v10;
            _os_log_impl(&dword_1DB56E000, v63, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: [%u] Collected %d samples (TxTS %u)", buf, 0x2Eu);
          }
        }
      }

      VRLogfilePrint(*(a1 + 2832), "[%u] Collected %d samples (TxTS %u)\n", *(a1 + 1404), *(a1 + 2424), v10);
      VRLogfilePrintWithTimestamp(*(a1 + 2848), "AFRC collected %d samples.\n", *(a1 + 2424));
      *(a1 + 2424) = 0;
      *(a1 + 1400) = 0;
      goto LABEL_73;
    }

    *(a1 + 2424) = v58 + 1;
  }

  if (*(a1 + 1400))
  {
    *a3 = 0;
  }

LABEL_73:
  if (*(a1 + 2408) && *(a1 + 1400) != 3 && a5 - *(a1 + 2432) > 2.0)
  {
    *(a1 + 2408) = 0;
  }

  v66 = *(a1 + 1412);
  v67 = *(a1 + 2464);
  v68 = vcvtd_n_s64_f64(v67, 2uLL);
  v69 = v66 - v68;
  if (v66 >= v68)
  {
    v83 = a1 + 1416;
    v84 = a1 + 1416 + 8 * v66;
    v85 = a1 + 8 * v69;
    v86 = v69;
    if (v69 >= 1)
    {
      v87 = (v85 + 1416);
      v86 = v69;
      while (*(v84 - 8) - *v87 <= v67 * 0.5)
      {
        --v87;
        v88 = __OFSUB__(v86--, 1);
        if ((v86 < 0) ^ v88 | (v86 == 0))
        {
          v86 = 0;
          break;
        }
      }
    }

    v89 = *(a1 + 1396);
    if ((v89 & 1) == 0 || (v20 = 0.0, *(v84 - 8) - *(v83 + 8 * v86) >= 0.2))
    {
      v90 = v66 - v86;
      if (v66 - v86 < 1)
      {
        v101 = NAN;
      }

      else
      {
        v91 = v86 + (v90 >> 1);
        v92 = (v90 + 1) >> 1;
        v93 = (a1 + 8 * v91 + 1416);
        v94 = (a1 + 8 * v86 + 1416);
        v95 = 0.0;
        v96 = 0.0;
        v97 = 0.0;
        v98 = 0.0;
        do
        {
          v98 = v98 + v94[60];
          v97 = v97 + v93[60];
          v99 = *v94++;
          v96 = v96 + v99;
          v100 = *v93++;
          v95 = v95 + v100;
          --v92;
        }

        while (v92);
        v101 = (v97 - v98) / (v95 - v96);
      }

      v20 = v67 * 0.5 * v101;
    }

    if (v69 >= 1)
    {
      v102 = (v85 + 1416);
      while (*(v84 - 8) - *v102 <= v67 * 0.25)
      {
        --v102;
        v88 = __OFSUB__(v69--, 1);
        if ((v69 < 0) ^ v88 | (v69 == 0))
        {
          v69 = 0;
          break;
        }
      }
    }

    if ((v89 & 1) == 0 || (v18 = 0.0, *(v84 - 8) - *(v83 + 8 * v69) >= 0.2))
    {
      v103 = v66 - v69;
      if (v66 - v69 < 1)
      {
        v114 = NAN;
      }

      else
      {
        v104 = v69 + (v103 >> 1);
        v105 = (v103 + 1) >> 1;
        v106 = (a1 + 8 * v104 + 1416);
        v107 = (a1 + 8 * v69 + 1416);
        v108 = 0.0;
        v109 = 0.0;
        v110 = 0.0;
        v111 = 0.0;
        do
        {
          v111 = v111 + v107[60];
          v110 = v110 + v106[60];
          v112 = *v107++;
          v109 = v109 + v112;
          v113 = *v106++;
          v108 = v108 + v113;
          --v105;
        }

        while (v105);
        v114 = (v110 - v111) / (v108 - v109);
      }

      v18 = v67 * 0.25 * v114;
      if (a6 > 0.0 && v18 == 0.0)
      {
        v115 = *(a1 + 2376);
        if (v115 == 0.0)
        {
          *(a1 + 2376) = a5;
        }

        else if (a5 - v115 > 2.0)
        {
          *(a1 + 1396) = v89 | 2;
          *(a1 + 2384) = a5;
          *(a1 + 2392) = a5;
          *(a1 + 2448) = 0;
          *(a1 + 2376) = 0;
          *a3 = 0;
          v66 = *(a1 + 1412);
        }
      }

      else
      {
        *(a1 + 2376) = 0;
      }
    }

    v116 = *(a1 + 2448) + v20 * (*(v83 + 8 * v66 - 8) - *(v83 + 8 * v66 - 16)) / (v67 * 0.5);
    if (v116 < 0.0)
    {
      v116 = 0.0;
    }

    *(a1 + 2448) = v116;
    if (a6 > 2.0 || v20 > 0.001 || a6 > 0.0 && v18 == 0.0)
    {
      *a3 = 0;
    }

    v117 = *(a1 + 1396);
    v118 = 0.0;
    if ((v117 & 4) != 0)
    {
      v119 = *(a1 + 2404);
      if (v18 <= 0.0)
      {
        goto LABEL_133;
      }

      v120 = v67 * *(&xmmword_1DBD45520 + (v119 != 0));
      if (v20 <= v120)
      {
        goto LABEL_133;
      }

      if (*(a1 + 2440) <= v120 || v119 != 0)
      {
        goto LABEL_133;
      }

      v118 = v20;
      if (!*(a1 + 2484))
      {
        v117 |= 2u;
        *(a1 + 1396) = v117;
        *(a1 + 2384) = a5;
        *(a1 + 2392) = a5;
        *(a1 + 2448) = 0;
        v116 = 0.0;
LABEL_133:
        v118 = v20;
      }
    }

    *(a1 + 2440) = v118;
    v122 = *(a1 + 1400);
    if (v122 && v122 != 3)
    {
      v19 = -1.0;
      if (!*(a1 + 2424))
      {
LABEL_150:
        if (a6 <= 0.0)
        {
          v128 = *(a1 + 2536);
        }

        else
        {
          *(a1 + 2536) = a5;
          v128 = a5;
        }

        if (v128 > 0.0)
        {
          v129 = a5 - v128;
          if (v129 > 1.0)
          {
            *(a1 + 2448) = 0;
            *(a1 + 2536) = a5;
            VRLogfilePrint(*(a1 + 2832), "OWRD has been 0 for %f seconds, reset NOWRDAcc\n", v129);
          }
        }

        if (*(a1 + 2948) && *(a1 + 2448) > *(a1 + 2464) * 0.1 * 0.5)
        {
          *a3 = 0;
        }

        if (*(a1 + 9696) && *(a1 + 9700) == 1 && (*(a1 + 1396) & 1) == 0)
        {
          *a3 = 0;
        }

        v130 = *(a1 + 252);
        v131 = *(a1 + 28);
        if (!v130 || (v131 >= 35 ? (v132 = 35) : (v132 = *(a1 + 28)), v133 = &g_adwTxRateTiers[v132 + 1], 1000 * v130 < (*v133 + (v133[1] - *v133) * 0.25)))
        {
          *(a1 + 2384) = a5;
        }

        if (v131 >= 36)
        {
          v134 = 36;
        }

        else
        {
          v134 = v131;
        }

        v135 = *(a1 + 2944);
        if (!v135 || *(a1 + 2928) || !v130 || 1000 * v130 > (*(a1 + 44) + (g_adwTxRateTiers[v134 + 1] - *(a1 + 44)) * 0.25))
        {
          *(a1 + 2392) = a5;
        }

        v136 = *(a1 + 1396);
        if ((v136 & 2) == 0 && a5 - *(a1 + 2392) > 2.0)
        {
          v136 |= 0x12u;
          *(a1 + 1396) = v136;
          *(a1 + 2384) = a5;
          *(a1 + 2392) = a5;
          *(a1 + 2448) = 0;
        }

        if (*(a1 + 9837) == 1 && *(a1 + 256) >= 7u && v131 >= 13 && *(a1 + 276))
        {
          v136 |= 2u;
          *(a1 + 1396) = v136;
          *(a1 + 2384) = a5;
          *(a1 + 2392) = a5;
          *(a1 + 2448) = 0;
          *(a1 + 9820) = 1;
        }

        if ((v136 & 3) == 0 && (!*(a1 + 2928) || *(a1 + 9572) >= 1))
        {
          if ((v136 & 4) != 0)
          {
            if (!*(a1 + 1400) && a5 - *(a1 + 2432) > *(a1 + 2456) + *(a1 + 2456))
            {
              *(a1 + 1396) = v136 & 0xFFFFFFF8;
            }
          }

          else if (*a3 && (!v135 || (*(a1 + 2960) & 1) != 0 || a5 - *(a1 + 2384) > (*(a1 + 2464) + *(a1 + 2464)) * *(a1 + 2456)))
          {
            *(a1 + 1396) = v136 | 0xC;
            *(a1 + 2384) = a5;
            *(a1 + 2392) = a5;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      v19 = -1.0;
    }

    if (v118 <= v20 && !*(a1 + 2484))
    {
      v123 = (v117 & 4) != 0 && !*(a1 + 2404) ? 0.1 : 0.15;
      v124 = v67 * v123;
      if (v116 > v124)
      {
        v125 = *(a1 + 28);
        v126 = *(a1 + 40);
        if (v125 > v126)
        {
          *(a1 + 1396) = v117 | 2;
          *(a1 + 2384) = a5;
          *(a1 + 2392) = a5;
          if (!*(a1 + 2948) || v125 > v126 + 1)
          {
            v127 = v116 - v124;
            *(a1 + 2448) = v127;
            if (v127 < 0.0)
            {
              *(a1 + 2448) = 0;
            }
          }

          v19 = v116;
        }
      }
    }

    goto LABEL_150;
  }

  *a3 = 0;
  if (*(a1 + 2816))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v70 = VRTraceErrorLogLevelToCSTR();
      v71 = *MEMORY[0x1E6986650];
      v72 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (v72)
      {
        v74 = micro(v72, v73);
        v75 = *(a1 + 1412);
        v76 = *(a1 + 176);
        v77 = *(a1 + 184);
        v78 = *(a1 + 2700);
        v79 = *(a1 + 2704);
        v80 = *(a1 + 252);
        v81 = *(a1 + 256);
        v82 = *(&g_apszStMode + *(a1 + 1400));
        *buf = 136318978;
        *&buf[4] = v70;
        v142 = 2080;
        v143 = "AFRCLog_PrintCongestionInfo";
        v144 = 1024;
        v145 = 938;
        v146 = 2048;
        *v147 = v74;
        *&v147[8] = 2048;
        *v148 = a5;
        *&v148[8] = 1024;
        *&v148[10] = v10;
        v149 = 2048;
        v150 = a6;
        v151 = 1024;
        *v152 = v75;
        *&v152[4] = 1024;
        *&v152[6] = v15;
        *v153 = 2048;
        *&v153[2] = v76;
        *v154 = 2048;
        *&v154[2] = v77;
        v155 = 1024;
        *v156 = v78;
        *&v156[4] = 1024;
        *&v156[6] = v79;
        LOWORD(v157) = 1024;
        *(&v157 + 2) = v80;
        HIWORD(v157) = 1024;
        *v158 = v81;
        *&v158[4] = 2080;
        v159 = v82;
        _os_log_impl(&dword_1DB56E000, v71, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %8.3f %.3f/%04X %.4f(%d) %u %.4f %.4f %u %u %u %u%s", buf, 0x82u);
      }
    }
  }

  if (*(a1 + 2832))
  {
    v140 = 0.0;
    *buf = 0;
    v138 = 0;
    v139 = 0;
    MediaQueue_RetrieveAudioVideoRates(*(a1 + 2808), buf, &v140, &v139, &v138);
    VRLogfilePrintWithTimestamp(*(a1 + 2832), "%8.3f\t%8.3f/%04X:\t%.4f(%d)\t\t\t\tRTT:%-4u\tPLR:%4.1f@%.1f\t%2u\t%2u\tRRx:%u\tMBL:%u\t%3u/%3u\t %3u:%3u/%3u  %3u:%3u/%3u\tBB: %u\t%u\t%u\t%s%s\n", *&v16, *&a5, v10, *&a6, *(a1 + 1412), (a7 * 1000.0), *(a1 + 176) * 100.0, *(a1 + 184) * 100.0);
  }
}

uint64_t CalculateBasebandRate(_DWORD *a1, uint64_t a2, unsigned int *a3, unsigned int *a4, int a5)
{
  v9 = a1;
  v10 = (*(a2 + 36) - a1[761]) * 0.001;
  v11 = *(a2 + 32) - a1[760];
  v12 = v11 & ~(v11 >> 31);
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    if (v10 == 0.0)
    {
      return 0;
    }

    v13 = ((8 * v12) / v10);
  }

  v14 = v12 - ((*(a2 + 28) - a1[759]) & ~((*(a2 + 28) - a1[759]) >> 31));
  if (v14 >= 1)
  {
    if (v10 != 0.0)
    {
      v15 = ((8 * (v14 & ~(v14 >> 31))) / v10);
      goto LABEL_9;
    }

    return 0;
  }

  v15 = 0;
LABEL_9:
  if (!a1[732])
  {
    goto LABEL_17;
  }

  v16 = a1 + 745;
  v17 = micro(a1, a2);
  if (v9[349])
  {
    *(v9 + 9664) = 0;
    goto LABEL_16;
  }

  if (*(v9 + 9664))
  {
    if (v17 - *(v9 + 1209) > 3.0)
    {
      *(v9 + 9664) = 0;
      v9[2422] = 0;
      v18 = *(v9 + 354);
      v19 = "Get Out of Antenna Imbalance Mode!\n";
LABEL_14:
      VRLogfilePrint(v18, "%s", v19);
      VRLogfilePrintWithTimestamp(*(v9 + 356), "%s", v19);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (v15 >= 0x3E8)
  {
LABEL_16:
    *&v20 = *(v9 + 371);
    v9[2412] = v9[7];
    *(&v20 + 1) = *v16;
    *(v9 + 602) = v20;
    *(v9 + 1207) = *(v9 + 1197);
    v9[2422] = 0;
    v9[2423] = v9[620];
    goto LABEL_17;
  }

  v39 = v9[2422] + 1;
  v9[2422] = v39;
  if (v39 >= 5 && v17 - *(v9 + 1210) > 3.0)
  {
    *(v9 + 9664) = 1;
    *(v9 + 1209) = v17;
    v18 = *(v9 + 354);
    v19 = "Get Into of Antenna Imbalance Mode!\n";
    goto LABEL_14;
  }

LABEL_17:
  if (v10 <= 0.005 && v10 != 0.0)
  {
    return 0;
  }

  *a3 = v15;
  *a4 = v13;
  v9[741] = v15;
  v9[744] = v9[742];
  v22 = v9[2264];
  if (v22 > 14)
  {
    a1 = memmove(v9 + 2266, v9 + 2268, 0x70uLL);
    v24 = *(v9 + 2297);
    *(v9 + 575) = *(v9 + 2301);
    *(v9 + 574) = v24;
    *(v9 + 576) = *(v9 + 2305);
    *(v9 + 1154) = *(v9 + 2309);
    v25 = *(v9 + 579);
    *(v9 + 2311) = *(v9 + 578);
    *(v9 + 2315) = v25;
    *(v9 + 2319) = *(v9 + 580);
    *(v9 + 2323) = *(v9 + 1162);
    *(v9 + 1147) = *(a2 + 8);
    v9[2310] = *(a2 + 32);
    v9[2325] = *(a2 + 28);
    v23 = v9[2264];
  }

  else
  {
    *&v9[2 * v22 + 2266] = *(a2 + 8);
    v9[v22 + 2296] = *(a2 + 32);
    v9[v9[2264] + 2311] = *(a2 + 28);
    v23 = v9[2264] + 1;
    v9[2264] = v23;
  }

  if (v23 >= 2)
  {
    v26 = v23 - 1;
    v27 = v23;
    v28 = *&v9[2 * (v23 - 1) + 2266];
    while (v27 >= 2)
    {
      v29 = v27 - 1;
      v30 = v28 - *&v9[2 * v27-- + 2264];
      if (v30 >= 0.5)
      {
        goto LABEL_30;
      }
    }

    v29 = 0;
LABEL_30:
    v32 = v9[v26 + 2296] - v9[v29 + 2296];
    v33 = v9[v26 + 2311] - v9[v29 + 2311];
    v34 = v28 - *&v9[2 * v29 + 2266];
    v31 = ((8 * (((v32 & ~(v32 >> 31)) - (v33 & ~(v33 >> 31))) & ~(((v32 & ~(v32 >> 31)) - (v33 & ~(v33 >> 31))) >> 31))) / v34);
    HIDWORD(v35) = 1069757235;
    if (v34 < 0.15 && v31 - 1 >= v9[11])
    {
      v31 = v9[11];
    }

    v9[742] = v31;
    if (a5 && v31)
    {
      v36 = v9[11];
      if (v36 >= v31)
      {
        v36 = v31;
      }

      v9[743] = v36;
    }

    else
    {
      LODWORD(v35) = v9[743];
      v36 = (v31 * 0.025 + v35 * 0.975);
      v9[743] = v36;
      if (!v31)
      {
        if (!(*(a2 + 24) + *(a2 + 28)))
        {
          v31 = 0;
          goto LABEL_44;
        }

        if (v34 >= 0.5 && *(v9 + 313) > 0.0)
        {
          v40 = v9[745];
          if (v40 <= 0x7D1)
          {
            v40 = 2001;
          }

          v9[745] = v40;
        }

        v31 = 0;
        if (!v36)
        {
          v38 = v9[745];
          if (v38 <= 0x7D1)
          {
            v38 = 2001;
          }

          goto LABEL_43;
        }

        v37 = *(a2 + 28) + *(a2 + 24);
LABEL_42:
        v38 = ((8000 * v37) / v36);
LABEL_43:
        v9[746] = v38;
        goto LABEL_44;
      }
    }

    if (!v9[744])
    {
      v9[743] = v31;
      v36 = v31;
    }

    v9[745] = ((8000 * (*(a2 + 28) + *(a2 + 24))) / v31);
    v37 = *(a2 + 28) + *(a2 + 24);
    goto LABEL_42;
  }

  v31 = v9[11];
  v9[742] = v31;
  v9[743] = v31;
LABEL_44:
  if (v31 >= v9[2] || !(*(a2 + 24) + *(a2 + 28)) && !(v9[758] + v9[759]) || (v9[740] & 1) == 0)
  {
    *(v9 + 316) = micro(a1, a2);
  }

  return 1;
}

uint64_t RampDownAudio(uint64_t result, double a2)
{
  v2 = result;
  if (*(result + 2472) || (*(result + 2960)) && a2 - *(result + 2528) >= 2.0)
  {
    v3 = 0.333333333;
    if (*(result + 9576) > 0.333333333)
    {
      v4 = *(result + 2968);
      v5 = 0.666666667;
      if (v4 >> 5 >= 0x271)
      {
        v5 = 1.0;
      }

      if (v4 >> 3 >= 0x753)
      {
        v3 = v5;
      }

      *(result + 9576) = v3;
      *(result + 2528) = a2;
      *(result + 9584) = a2;
      MediaQueue_SetAudioFraction(*(result + 2808), v3);

      return UpdateFECLevel(v2);
    }
  }

  return result;
}

void UpdateAudioTxInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 9576);
  if (v9 >= 1.0)
  {
    v10 = *(a1 + 44);
  }

  else if (v9 == 0.333333333)
  {
    v10 = 12000;
  }

  else
  {
    v10 = 16000;
  }

  *(a1 + 48) = v10;
  v11 = *(a1 + 1392);
  v12 = *(a1 + 2968);
  v13 = *(a1 + 3036) + *(a1 + 3032);
  v14 = 8 * v13;
  v15 = *(a1 + 2680);
  if (v15)
  {
    v16 = *(a1 + 9848);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v11;
    }

    v20 = micro(a1, a2);
    if (v17 * 1.5 <= v12 || (v20 - *(a1 + 9840) >= 0.25 ? (v21 = v12 >= v17) : (v21 = 0), v21 ? (v22 = v14 > 2 * v12) : (v22 = 1), !v22))
    {
      *(a1 + 2680) = 0;
      v23 = micro(v18, v19) - *(a1 + 2672);
      *(a1 + 2664) = *(a1 + 2664) + v23;
      if (v23 <= *(a1 + 2688))
      {
        v23 = *(a1 + 2688);
      }

      *(a1 + 2688) = v23;
    }
  }

  else
  {
    if (v10 >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v10;
    }

    if (v12 < v17 && v13 > ((v11 >> 2) & 0x1FFFFFFF))
    {
      *(a1 + 2672) = micro(a1, a2);
      *(a1 + 2680) = 1;
    }
  }

  v25 = *(a1 + 2680);
  if (v25 | v15 && *MEMORY[0x1E6986638] >= 5)
  {
    StallModeTracePrint_(5, "VCRC", a3, a4, " fAudioPaused: %d BBAvgTxRate: %10d txTarget: %10d (%d)   QDepth_bits: %10d ", a6, a7, a8, v25, *(a1 + 2968), v17, v11, v14);
    LODWORD(v25) = *(a1 + 2680);
  }

  if ((v15 != 0) == (v25 == 0) && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 2680);
      v29 = *(a1 + 2968);
      *buf = 136316930;
      v31 = v26;
      v32 = 2080;
      v33 = "UpdateAudioTxInfo";
      v34 = 1024;
      v35 = 3033;
      v36 = 1024;
      v37 = v28;
      v38 = 1024;
      v39 = v29;
      v40 = 1024;
      v41 = v17;
      v42 = 1024;
      v43 = v11;
      v44 = 1024;
      v45 = v14;
      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d  fAudioPaused: %d BBAvgTxRate: %10d txTarget: %10d (%d)   QDepth_bits: %10d ", buf, 0x3Au);
    }
  }
}

uint64_t BWEstCalcLargeFrameSize(uint64_t a1, unsigned __int8 a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = 0.1;
  if ((*(a1 + 1104) | a2))
  {
    v4 = 0.05;
  }

  v5 = (v4 * ((*(a1 + 44) - *(a1 + 1392)) >> 3));
  v3 = 5 * *(a1 + 252);
  v6 = (v3 >> 1) & 0x1FFFFFFF;
  if (v5 >= (20 * *(a1 + 252)) >> 3)
  {
    v7 = (v3 >> 1) & 0x1FFFFFFF;
  }

  else
  {
    v7 = (v4 * ((*(a1 + 44) - *(a1 + 1392)) >> 3));
  }

  if (v7 <= 0x101)
  {
    v8 = 257;
  }

  else
  {
    v8 = v7;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 252);
        v18 = 136316674;
        v19 = v9;
        v20 = 2080;
        v21 = "setCapOnLF";
        v22 = 1024;
        v23 = 6011;
        v24 = 1024;
        v25 = v8;
        v26 = 1024;
        v27 = v6;
        v28 = 1024;
        v29 = v5;
        v30 = 1024;
        v31 = v12;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ^^^^^ LARGE frame req'd of %d (%d, %d, R %d)", &v18, 0x34u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 252);
      v18 = 136316674;
      v19 = v9;
      v20 = 2080;
      v21 = "setCapOnLF";
      v22 = 1024;
      v23 = 6011;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = v6;
      v28 = 1024;
      v29 = v5;
      v30 = 1024;
      v31 = v17;
      _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d ^^^^^ LARGE frame req'd of %d (%d, %d, R %d)", &v18, 0x34u);
    }
  }

  if (v7 < 0xABE)
  {
    if (v7 < 0x6D6)
    {
      if (v7 < 0x1F4)
      {
        if (v7 <= 0x112)
        {
          v14 = 257;
        }

        else
        {
          v14 = v8;
        }

        v13 = 1;
      }

      else
      {
        v15 = v8 >> 1;
        if (v8 >> 1 <= 0x100)
        {
          v15 = 256;
        }

        v14 = v15 + 1;
        v13 = 2;
      }
    }

    else
    {
      v14 = v8 / 3u + 1;
      v13 = 3;
    }
  }

  else
  {
    v13 = 2;
    do
    {
      ++v13;
    }

    while (v8 / v13 > 0x564);
    v14 = v8 / v13 + 1;
  }

  *(a1 + 1076) = v14;
  *(a1 + 1080) = v13;
  return v14 * v13;
}

uint64_t MediaQueue_CreateHandle(uint64_t *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x6400uLL, 0x102004011FBE5E6uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 2) = 1;
    *(v4 + 186) = 1;
    *(v4 + 432) = 257;
    *(v4 + 109) = 0x3FF0000000000000;
    *(v4 + 220) = 1;
    *(v4 + 111) = 0x3FF0000000000000;
    *(v4 + 112) = 0x3FF0000000000000;
    *(v4 + 117) = a2;
    v4[208] = 0;
    *(v4 + 920) = 0u;
    *(v4 + 3193) = 0x7FF8000000000000;
    *(v4 + 91) = 0;
    pthread_mutex_init((v4 + 24), 0);
    pthread_mutex_init((v5 + 144), 0);
    pthread_mutex_init((v5 + 248), 0);
    pthread_mutex_init((v5 + 312), 0);
    pthread_mutex_init((v5 + 392), 0);
    pthread_cond_init((v5 + 456), 0);
    pthread_mutex_init((v5 + 512), 0);
    pthread_mutex_init((v5 + 752), 0);
    pthread_cond_init((v5 + 816), 0);
    *(v5 + 592) = 0;
    *(v5 + 584) = 0;
    *(v5 + 600) = 0;
    *(v5 + 604) = 0;
    *(v5 + 612) = 0;
    *(v5 + 616) = 0u;
    Throttling_MediaQueue_Init(v5 + 632);
    Handle = CreateHandle();
    v7 = 0;
    *a1 = Handle;
    if (Handle == 0xFFFFFFFFLL)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          MediaQueue_CreateHandle_cold_1();
        }
      }

      pthread_mutex_destroy((v5 + 24));
      pthread_mutex_destroy((v5 + 144));
      pthread_mutex_destroy((v5 + 248));
      pthread_mutex_destroy((v5 + 312));
      pthread_mutex_destroy((v5 + 392));
      pthread_cond_destroy((v5 + 456));
      pthread_mutex_destroy((v5 + 512));
      pthread_mutex_destroy((v5 + 752));
      pthread_cond_destroy((v5 + 816));
      ActiveProbing_Uninit(v5);
      free(v5);
      return 2149580802;
    }
  }

  else
  {
    v7 = 2149580803;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        MediaQueue_CreateHandle_cold_2();
      }
    }
  }

  return v7;
}

void ActiveProbing_Uninit(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 392));
  v2 = *(a1 + 592);
  if (v2)
  {
    do
    {
      v3 = v2[196];
      VCMediaControlInfoDispose(v2[198]);
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 592) = 0;
  pthread_mutex_unlock((a1 + 392));
  if (*(a1 + 613) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 616);
        v8 = *(a1 + 620);
        v9 = 136316162;
        v10 = v4;
        v11 = 2080;
        v12 = "ActiveProbing_Uninit";
        v13 = 1024;
        v14 = 1436;
        v15 = 1024;
        v16 = v7;
        v17 = 1024;
        v18 = v8;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ^^^^^^ \t\tActiveProbing_Uninit  V/A packets sent: %d/%d", &v9, 0x28u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ActiveProbing_Uninit_cold_1();
    }
  }

  Throttling_MediaQueue_Uninit(a1 + 632, (a1 + 392));
}

uint64_t MediaQueue_CloseHandle(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149580802;
  }

  v2 = v1;
  _MediaQueue_Stop(v1);
  CheckOutHandleDebug();
  SetCellularAudioStallState_Internal(v2, 0, 1, v3, v4, v5, v6, v7);
  v8 = *(v2 + 728);
  if (v8)
  {
    IOObjectRelease(v8);
    *(v2 + 728) = 0;
  }

  pthread_mutex_lock((v2 + 312));
  v9 = *(v2 + 376);
  if (v9)
  {
    do
    {
      v10 = v9[196];
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  pthread_mutex_unlock((v2 + 312));
  pthread_mutex_lock((v2 + 392));
  v11 = *(v2 + 504);
  if (v11)
  {
    do
    {
      v12 = v11[196];
      VCMediaControlInfoDispose(v11[198]);
      free(v11);
      v11 = v12;
    }

    while (v12);
  }

  pthread_mutex_unlock((v2 + 392));
  pthread_mutex_lock((v2 + 512));
  v13 = *(v2 + 576);
  if (v13)
  {
    do
    {
      v14 = v13[2];
      free(v13);
      v13 = v14;
    }

    while (v14);
  }

  pthread_mutex_unlock((v2 + 512));
  ActiveProbing_Uninit(v2);
  pthread_mutex_destroy((v2 + 24));
  pthread_mutex_destroy((v2 + 144));
  pthread_mutex_destroy((v2 + 248));
  pthread_mutex_destroy((v2 + 312));
  pthread_mutex_destroy((v2 + 392));
  pthread_cond_destroy((v2 + 456));
  pthread_mutex_destroy((v2 + 512));
  pthread_mutex_destroy((v2 + 752));
  pthread_cond_destroy((v2 + 816));
  free(v2);
  return 0;
}

uint64_t _MediaQueue_Stop(uint64_t a1)
{
  pthread_mutex_lock((a1 + 752));
  if (*(a1 + 732))
  {
    *(a1 + 732) = 0;
    *(a1 + 744) = 0;
    pthread_cond_signal((a1 + 816));
  }

  pthread_mutex_unlock((a1 + 752));
  pthread_mutex_lock((a1 + 392));
  *(a1 + 8) = 0;
  pthread_cond_broadcast((a1 + 456));
  pthread_mutex_unlock((a1 + 392));
  result = *a1;
  if (*a1)
  {
    result = FigThreadJoin();
    *a1 = 0;
  }

  return result;
}

uint64_t SetCellularAudioStallState_Internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = a1 + 24576;
  v11 = MEMORY[0x1E6986638];
  if (*MEMORY[0x1E6986638] >= 5)
  {
    SetCellularAudioStallState_Internal_cold_1(a2, a1, a3, a4, a5, a6, a7, a8);
  }

  v12 = pthread_mutex_lock((a1 + 392));
  if (*(v10 + 976) != v8)
  {
    v21 = micro(v12, v13);
    if (v8)
    {
      *(a1 + 25568) = 0u;
      *(a1 + 25560) = v21;
      *(v10 + 1008) = 0;
      *(v10 + 1012) = 1;
      *(v10 + 1016) = 0;
    }

    else
    {
      if (*(v10 + 977) == 1)
      {
        if (*(v10 + 976) == 1)
        {
          drainOldPackets(a1, v21 + -1.0, v14, v15, v16, v17, v18, v19, v20);
        }

        dropWaitingPkts(a1, *(a1 + 25576), v15, v16, v17, v18, v19, v20);
        *(a1 + 25576) = 0;
        pushOutQueuedAudioPkts(a1, 1, v22, v23, v24, v25, v26, v27);
        *(v10 + 977) = 0;
      }

      else
      {
        v28 = drainOldPackets(a1, v21, v14, v15, v16, v17, v18, v19, v20);
      }

      *(a1 + 25568) = 0;
      *(v10 + 1012) = 0;
      *(v10 + 1016) = 0;
      if (*v11 >= 5)
      {
        SetCellularAudioStallState_Internal_cold_2(v28, v29, v30, v31, v32, v33, v34, v35, v37);
      }
    }

    *(v10 + 976) = v8;
  }

  return pthread_mutex_unlock((a1 + 392));
}

uint64_t MediaQueue_Start(uint64_t a1)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v1 = 2149580820;
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2149580802;
  }

  if (*v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        MediaQueue_Start_cold_1();
      }
    }
  }

  else
  {
    v3 = *MEMORY[0x1E69631F8];
    keys[0] = *MEMORY[0x1E69631F0];
    keys[1] = v3;
    v4 = *MEMORY[0x1E695E4C0];
    values[0] = @"com.apple.avconference.mediaqueue.sendproc";
    values[1] = v4;
    v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = FigThreadCreate();
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      v1 = v6 | 0xA0200000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          MediaQueue_Start_cold_2();
        }
      }
    }

    else
    {
      v1 = 0;
    }

    CheckOutHandleDebug();
  }

  return v1;
}

uint64_t MediaQueueSendProc(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v2 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v39 = v3;
      v40 = 2080;
      v41 = "MediaQueueSendProc";
      v42 = 1024;
      v43 = 381;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaQueueSendProc Thread start...", buf, 0x1Cu);
    }
  }

  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return -2145386494;
  }

  v6 = v5;
  v7 = (v5 + 504);
  while (1)
  {
    pthread_mutex_lock((v6 + 392));
    while (1)
    {
      v8 = *v7;
      if (*v7)
      {
        break;
      }

      if (!*(v6 + 8))
      {
        goto LABEL_27;
      }

      pthread_cond_wait((v6 + 456), (v6 + 392));
    }

    if (!*(v6 + 8))
    {
      break;
    }

    v9 = v7;
    v10 = *v7;
    if (*(v8 + 1576))
    {
LABEL_15:
      v9 = v7;
    }

    else
    {
      while (*(v10 + 1516))
      {
        v11 = *(v10 + 1568);
        if (v11)
        {
          v9 = (v10 + 1568);
          v10 = *(v10 + 1568);
          if ((*(v11 + 1576) & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      v8 = v10;
    }

    *v9 = *(v8 + 1568);
    *(v8 + 1568) = 0;
    --*(v6 + 624);
    pthread_mutex_unlock((v6 + 392));
    if (*(v6 + 613) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *v2;
      v14 = *v2;
      if (*MEMORY[0x1E6986640] == 1)
      {
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          v17 = micro(v15, v16);
          v18 = *(v8 + 1516);
          v19 = bswap32(*(v8 + 1508));
          v20 = bswap32(*(v8 + 1506));
          v21 = *v8;
          v22 = *(v6 + 624);
          v23 = *(v6 + 628);
          v24 = *(v8 + 1576);
          *buf = 136317698;
          v39 = v12;
          v40 = 2080;
          v41 = "MediaQueueSendProc";
          v42 = 1024;
          v43 = 446;
          v44 = 2048;
          v45 = v17;
          v46 = 1024;
          v47 = v18;
          v48 = 1024;
          v49 = v19;
          v50 = 1024;
          v51 = HIWORD(v20);
          v52 = 1024;
          v53 = v21;
          v54 = 1024;
          v55 = v22;
          v56 = 1024;
          v57 = v23;
          v58 = 1024;
          v59 = v24;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SENDPROC: ^^^^^^ @%.3f\t\tMP %d  %d/%d/%d  QLen: %d/%d  Probe: %d\n", buf, 0x50u);
        }
      }

      else
      {
        v25 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        if (v25)
        {
          v27 = micro(v25, v26);
          v28 = *(v8 + 1516);
          v29 = bswap32(*(v8 + 1508));
          v30 = bswap32(*(v8 + 1506));
          v31 = *v8;
          v32 = *(v6 + 624);
          v33 = *(v6 + 628);
          v34 = *(v8 + 1576);
          *buf = 136317698;
          v39 = v12;
          v40 = 2080;
          v41 = "MediaQueueSendProc";
          v42 = 1024;
          v43 = 446;
          v44 = 2048;
          v45 = v27;
          v46 = 1024;
          v47 = v28;
          v48 = 1024;
          v49 = v29;
          v50 = 1024;
          v51 = HIWORD(v30);
          v52 = 1024;
          v53 = v31;
          v54 = 1024;
          v55 = v32;
          v56 = 1024;
          v57 = v33;
          v58 = 1024;
          v59 = v34;
          _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SENDPROC: ^^^^^^ @%.3f\t\tMP %d  %d/%d/%d  QLen: %d/%d  Probe: %d\n", buf, 0x50u);
        }
      }
    }

    pthread_mutex_lock((v6 + 752));
    if (*(v8 + 1516) <= 1u)
    {
      MediaQueue_SendPacket(v6, v8);
    }

    pthread_mutex_unlock((v6 + 752));
    MediaQueue_Free(v6, v8);
  }

LABEL_27:
  pthread_mutex_unlock((v6 + 392));
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v39 = v35;
      v40 = 2080;
      v41 = "MediaQueueSendProc";
      v42 = 1024;
      v43 = 491;
      _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaQueueSendProc Thread end...", buf, 0x1Cu);
    }
  }

  CheckOutHandleDebug();
  return 0;
}