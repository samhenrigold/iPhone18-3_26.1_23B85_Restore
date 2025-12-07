void *GNSS_Nav_Debug_Screens(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[46];
    if (v2)
    {
      ds_NK_Summary(result);
      if (g_GN_GNSS_Nav_Debug_Port == 1)
      {
        g_GN_GNSS_Nav_Debug_Port = 0;
      }

      else
      {
        ds_NK_Crude_Apx_Pos(v2, v1[29], v1[22]);
      }

      ds_Intermittent(v2, *v1, v1[9]);

      return GNSS_Nav_Debug_Ctl(v2);
    }
  }

  return result;
}

void *GNSS_Nav_Debug_InitWrite(void *result)
{
  if (g_Enable_Nav_Debug)
  {
    v1 = result[46];
    if (g_GN_GNSS_Nav_Debug_Port == 1)
    {
      ds_Config(result[46], result[9], result[6], result[22]);
    }

    return ds_NK_Summary_FirstLine(v1);
  }

  return result;
}

uint64_t GNSS_Nav_Debug_Flush_Check(uint64_t result)
{
  v1 = *(result + 8) - *result;
  if (v1 <= 0)
  {
    v1 += *(result + 24) - *(result + 16);
  }

  if (v1 <= 0x2FF)
  {

    return GNSS_Nav_Debug_Ctl(result);
  }

  return result;
}

uint64_t *mapu(double *a1, int a2, unsigned int a3, uint64_t a4, const double *a5, unsigned int a6, double *a7, int a8, double *a9, double *a10)
{
  v15 = a9;
  v16 = *a9;
  result = phiu(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a6)
  {
    v18 = 0;
    if (a6 + 1 > 2)
    {
      v19 = a6 + 1;
    }

    else
    {
      v19 = 2;
    }

    v20 = 1;
    v21 = a9;
    do
    {
      v18 += v20;
      *v21++ = a5[v18 - 1];
      ++v20;
    }

    while (v19 != v20);
  }

  if (a3 >= 2)
  {
    v22 = a10 - 1;
    v23 = (a3 + a3 * a3) >> 1;
    if (a6 + 1 > 2)
    {
      v24 = a6 + 1;
    }

    else
    {
      v24 = 2;
    }

    v25 = a3;
    v26 = v24 - 1;
    v27 = a3 - 1;
    v28 = v24 - 1;
    do
    {
      v29 = v25 - 1;
      v30 = 0.0;
      if (a6)
      {
        v31 = a9;
        v32 = v26;
        LODWORD(result) = v25 - 1;
        do
        {
          v33 = *v31++;
          v34 = a7[result];
          v30 = v30 + v34 * (v33 * v34);
          a7[result] = v33 * v34;
          result = (result + a8);
          --v32;
        }

        while (v32);
      }

      if (v16 >= 0.0)
      {
        v22[v23--] = v30;
        LODWORD(v35) = 1;
        do
        {
          if (a6)
          {
            v36 = ~v35 + v25;
            v37 = 0.0;
            LODWORD(result) = v28;
            v38 = v27;
            do
            {
              v37 = v37 + a7[v36] * a7[v38];
              v36 += a8;
              v38 += a8;
              result = (result - 1);
            }

            while (result);
          }

          else
          {
            v37 = 0.0;
          }

          v22[v23] = v37;
          v35 = (v35 + 1);
          --v23;
        }

        while (v25 != v35);
      }

      else
      {
        v22[v25] = sqrt(v30);
      }

      --v27;
      --v25;
    }

    while (v29 > 1);
  }

  if (a6)
  {
    v39 = 0;
    if (a6 + 1 > 2)
    {
      v40 = a6 + 1;
    }

    else
    {
      v40 = 2;
    }

    v41 = v40 - 1;
    v42 = 0.0;
    do
    {
      v43 = *v15++;
      v42 = v42 + v43 * a7[v39] * a7[v39];
      v39 += a8;
      --v41;
    }

    while (v41);
  }

  else
  {
    v42 = 0.0;
  }

  v44 = sqrt(v42);
  if (v16 < 0.0)
  {
    v42 = v44;
  }

  *a10 = v42;
  return result;
}

uint64_t Hal32_SetPowerReport(int a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v20[0] = 0;
  qmemcpy(v18, "Bg ", sizeof(v18));
  v22 = 3;
  v23 = 0;
  plc00_10EncodeHdrPlCs(v18, v21, 12, 1u, 1, v20);
  v2 = v20[0];
  if (v20[0])
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Hdrerr,%u\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 69, "Hal32_SetPowerReport", 775, v2);
      LbsOsaTrace_WriteLog(0xDu, __str, v4, 0, 1);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v24 = a1;
    v25 = a1;
    v26 = 2560;
    g_HalState = 18;
    if (Hal22_ZxSendToChip(v21, 0xCuLL) <= 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "Hal32_SetPowerReport", 1282);
        LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
      }

      return 4294967289;
    }

    else
    {
      v6 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1C2u);
      if (v6 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v10 = "Dis";
          if (a1)
          {
            v10 = "En";
          }

          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx status,%s\n", v9, "HAL", 69, "Hal32_SetPowerReport", 1543, v10);
          LbsOsaTrace_WriteLog(0xDu, __str, v11, 0, 1);
        }

        return 4294967287;
      }

      else if (v6)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v13 = "Dis";
          if (a1)
          {
            v13 = "En";
          }

          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx status,%s\n", v12, "HAL", 69, "Hal32_SetPowerReport", 1541, v13);
          LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
        }

        return 4294967285;
      }

      else if (g_PowerReportStatus == 32)
      {
        return 0;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v16 = "Dis";
          if (a1)
          {
            v16 = "En";
          }

          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx status,%s err,%x\n", v15, "HAL", 69, "Hal32_SetPowerReport", 770, v16, g_PowerReportStatus);
          LbsOsaTrace_WriteLog(0xDu, __str, v17, 0, 1);
        }

        return 4294967288;
      }
    }
  }
}

double Hal32_HandlPowerReportRsp(unsigned __int8 *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v10 = 513;
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = "%10u %s%c %s: #%04hx data\n";
    goto LABEL_14;
  }

  if (a2 <= 0xC)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v10 = 515;
    v11 = a2;
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = "%10u %s%c %s: #%04hx len,%u\n";
    goto LABEL_14;
  }

  if (a1[2] != 66 || a1[3] != 71)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = a1[3];
    v13 = a1[4];
    v10 = 770;
    v11 = a1[2];
    v4 = "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDEx,%u\n";
    v9 = v7;
    goto LABEL_14;
  }

  g_PowerReportStatus = a1[8];
  if (!gnssOsa_SemRelease(g_HandleAckSem) && LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = 1542;
    v11 = *__error();
    v9 = v6;
    v4 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
LABEL_14:
    v8 = snprintf(__str, 0x40FuLL, v4, v9, "HAL", 69, "Hal32_HandlPowerReportRsp", v10, v11, v12, v13);
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
  }

  return result;
}

char **Sen_Aug_FPE_Update_Wrapper(uint64_t a1)
{
  GNSS_Validate_p_list(a1, "Sen_Aug_FPE_Update_Wrapper: Entry");
  Sen_Aug_FPE_Update(*(a1 + 112), *(a1 + 120), *(a1 + 136), *(a1 + 128), *(a1 + 208), *(a1 + 264), *(a1 + 392), *(a1 + 152), *(a1 + 144));

  return GNSS_Validate_p_list(a1, "Sen_Aug_FPE_Kalman_Wrapper: Exit");
}

void *gnssOsa_Calloc(const char *a1, int a2, int a3, size_t size)
{
  v16 = *MEMORY[0x29EDCA608];
  v7 = a3;
  result = malloc_type_calloc(a3, size, 0xC725420DuLL);
  if (!result)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = v7 * size;
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Size,%lu,Fn,%s,Line,%d\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "gnssOsa_Calloc", 1537, v10, a1, a2);
      LbsOsaTrace_WriteLog(0xEu, __str, v11, 0, 1);
    }

    else
    {
      v10 = v7 * size;
    }

    snprintf(v14, 0x400uLL, "Size,%lu,Fn,%s,Line,%d", v10, a1, a2);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 69, "gnssOsa_Calloc", v14);
      LbsOsaTrace_WriteLog(0xEu, __str, v13, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_Calloc", "agpsmacosa.cpp", 68, "false && Memory allocation failure");
  }

  return result;
}

uint64_t gnssOsa_FlushLog(void)
{
  result = gp_Logger;
  if (gp_Logger)
  {
    v1 = *(*gp_Logger + 48);

    return v1();
  }

  return result;
}

BOOL gnssOsa_SemAcquire(dispatch_semaphore_t dsema)
{
  v6 = *MEMORY[0x29EDCA608];
  if (dsema)
  {
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "gnssOsa_SemAcquire", 1541);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
  }

  return dsema != 0;
}

uint64_t gnssOsa_SemWaitTimeOut(NSObject *a1, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v3 = dispatch_time(0, 1000000 * a2);
    return dispatch_semaphore_wait(a1, v3) != 0;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 69, "gnssOsa_SemWaitTimeOut", 1543);
      LbsOsaTrace_WriteLog(0xEu, __str, v6, 0, 1);
    }

    return 2;
  }
}

uint64_t gnssOsa_ReleaseOSTimer(void)
{
  gnssOsa_MacEnterCriticalSection("gnssOsa_ReleaseOSTimer", 120, &g_MacTimerCriticSection);
  if (g_curTimeState == 1)
  {
    dispatch_suspend(g_timerHandler);
  }

  g_curTimeState = 0;

  return gnssOsa_MacExitCriticalSection("gnssOsa_ReleaseOSTimer", 132, &g_MacTimerCriticSection);
}

uint64_t gnssOsa_MacEnterCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTE invalid input");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v10, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(v10, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "gnssOsa_MacEnterCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v10, v7, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacEnterCriticalSection", "agpsmacosa.cpp", 749, "false && CRTE invalid input");
  }

  if (pthread_mutex_lock(a3))
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTE OS API Failed");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v10, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(v10, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_MacEnterCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v10, v9, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacEnterCriticalSection", "agpsmacosa.cpp", 754, "false && CRTE OS API Failed");
  }

  return 0;
}

uint64_t gnssOsa_MacExitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTX invalid input");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v10, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(v10, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "gnssOsa_MacExitCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v10, v7, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacExitCriticalSection", "agpsmacosa.cpp", 764, "false && CRTX invalid input");
  }

  if (pthread_mutex_unlock(a3))
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTX OS API Failed");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v10, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(v10, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_MacExitCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v10, v9, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacExitCriticalSection", "agpsmacosa.cpp", 768, "false && CRTX OS API Failed");
  }

  return 0;
}

uint64_t gnssOsa_OSTimerInit(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 1uLL, g_TimerQueue);
  g_timerHandler = v0;
  if (!v0)
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", "gnssOsa_OSTimerInit", 144, "TIMC TimerHandler");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v4, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(v4, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "gnssOsa_OSTimerInit", __str);
      LbsOsaTrace_WriteLog(0xEu, v4, v3, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_OSTimerInit", "agpsmacosa.cpp", 144, "false && TIMC TimerHandler");
  }

  dispatch_source_set_event_handler_f(v0, gnssOsa_TimerExpiryHandler);
  return 1;
}

uint64_t gnssOsa_TimerExpiryHandler(void *a1)
{
  v1 = 0;
  v15 = *MEMORY[0x29EDCA608];
  do
  {
    v2 = &__str[v1 + 1040];
    *v2 = 0;
    *(v2 + 1) = -1;
    *(v2 + 2) = 0;
    *(v2 + 6) = -1;
    v1 += 32;
    v2[28] = 0;
  }

  while (v1 != 640);
  gnssOsa_MacEnterCriticalSection("gnssOsa_TimerExpiryHandler", 250, &g_MacTimerContextCriticSection);
  v3 = 0;
  v4 = 0;
  v5 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
  do
  {
    v6 = &g_MacOsaTimers[4 * v4];
    if (*(v6 + 28) == 1 && v6[1] <= v5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerExpired Handle,%u,ExpiryNs,%llu\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 68, "gnssOsa_TimerExpiryHandler", *(v6 + 6), v6[1]);
        LbsOsaTrace_WriteLog(0xEu, __str, v8, 5, 1);
      }

      if (*v6)
      {
        v9 = &__str[32 * v3 + 1040];
        *v9 = *v6;
        *(v9 + 2) = v6[2];
        ++v3;
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 21) = 0;
        v6[2] = 0;
        v4 = -1;
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MacTimer\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 69, "gnssOsa_TimerExpiryHandler", 770);
        LbsOsaTrace_WriteLog(0xEu, __str, v11, 0, 1);
      }
    }

    ++v4;
  }

  while (v4 < 0x14u);
  gnssOsa_TimerHandler();
  result = gnssOsa_MacExitCriticalSection("gnssOsa_TimerExpiryHandler", 282, &g_MacTimerContextCriticSection);
  if (v3)
  {
    v13 = 0;
    do
    {
      result = (*&__str[32 * v13 + 1040])(*&__str[32 * v13 + 1056]);
      ++v13;
    }

    while (v3 > v13);
  }

  return result;
}

uint64_t gnssOsa_OSTimerDeInit(void)
{
  gnssOsa_MacEnterCriticalSection("gnssOsa_OSTimerDeInit", 152, &g_MacTimerCriticSection);
  v0 = g_timerHandler;
  if (!dispatch_source_testcancel(g_timerHandler))
  {
    dispatch_source_cancel(v0);
    v0 = g_timerHandler;
  }

  if ((g_curTimeState & 1) == 0)
  {
    dispatch_resume(v0);
    v0 = g_timerHandler;
  }

  dispatch_release(v0);
  g_timerHandler = 0;
  g_curTimeState = 0;
  gnssOsa_MacExitCriticalSection("gnssOsa_OSTimerDeInit", 174, &g_MacTimerCriticSection);
  return 1;
}

uint64_t gnssOsa_TriggerOSTimer(int64_t a1)
{
  gnssOsa_MacEnterCriticalSection("gnssOsa_TriggerOSTimer", 185, &g_MacTimerCriticSection);
  v2 = g_timerHandler;
  v3 = dispatch_time(0, a1);
  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  if ((g_curTimeState & 1) == 0)
  {
    dispatch_resume(g_timerHandler);
  }

  g_curTimeState = 1;
  gnssOsa_MacExitCriticalSection("gnssOsa_TriggerOSTimer", 199, &g_MacTimerCriticSection);
  return 1;
}

uint64_t gnssOsa_TimerHandler(void)
{
  v0 = -1;
  v1 = &byte_2A191FD34;
  v2 = 20;
  do
  {
    if (*v1 == 1 && *(v1 - 20) < v0)
    {
      v0 = *(v1 - 20);
    }

    v1 += 32;
    --v2;
  }

  while (v2);
  if (v0 == -1)
  {

    return gnssOsa_ReleaseOSTimer();
  }

  else
  {
    v3 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
    v4 = v0 >= v3;
    v5 = v0 - v3;
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    return gnssOsa_TriggerOSTimer(v6);
  }
}

BOOL gnssOsa_Init(void)
{
  v11 = *MEMORY[0x29EDCA608];
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  v2 = v0 / v1;
  *&g_MacClockTicksToMsRelation = v2 * 0.000001;
  g_MacClockTicksToNs = *&v2;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -7);
  if (!v3 && LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0))
  {
    bzero(&info, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(&info, 0x40FuLL, "%10u %s%c %s: #%04hx timer queueAttr\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 87, "gnssOsa_Init", 513);
    LbsOsaTrace_WriteLog(0xEu, &info, v5, 2, 1);
  }

  v6 = dispatch_queue_create("TimerQueue", v3);
  g_TimerQueue = v6;
  if (v6)
  {
    gnssOsa_InitCriticalSection("gnssOsa_Init", 328, &g_MacTimerCriticSection);
    gnssOsa_InitCriticalSection("gnssOsa_Init", 329, &g_MacTimerContextCriticSection);
    gnssOsa_OSTimerInit();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(&info, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(&info, 0x40FuLL, "%10u %s%c %s: #%04hx Queue creation failed\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_Init", 513);
    LbsOsaTrace_WriteLog(0xEu, &info, v8, 0, 1);
  }

  return v6 != 0;
}

uint64_t gnssOsa_InitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTC invalid input");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v10, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(v10, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "gnssOsa_InitCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v10, v7, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_InitCriticalSection", "agpsmacosa.cpp", 778, "false && CRTC invalid input");
  }

  if (pthread_mutex_init(a3, 0))
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTC OS API Failed");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v10, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(v10, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_InitCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v10, v9, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_InitCriticalSection", "agpsmacosa.cpp", 782, "false && CRTC OS API Failed");
  }

  return 0;
}

void gnssOsa_Deinit(void)
{
  gnssOsa_StopAllTimers();
  gnssOsa_OSTimerDeInit();
  gnssOsa_MacDeinitCriticalSection("gnssOsa_Deinit", 338, &g_MacTimerCriticSection);
  gnssOsa_MacDeinitCriticalSection("gnssOsa_Deinit", 339, &g_MacTimerContextCriticSection);
  if (g_TimerQueue)
  {
    dispatch_release(g_TimerQueue);
    g_TimerQueue = 0;
  }

  gp_Logger = 0;
}

uint64_t gnssOsa_StopAllTimers(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerStopAll\n", (*&g_MacClockTicksToMsRelation * v0), "OSA", 68, "gnssOsa_StopAllTimers");
    LbsOsaTrace_WriteLog(0xEu, __str, v1, 5, 1);
  }

  gnssOsa_MacEnterCriticalSection("gnssOsa_StopAllTimers", 445, &g_MacTimerContextCriticSection);
  for (i = 0; i != 80; i += 4)
  {
    v3 = &g_MacOsaTimers[i];
    *v3 = 0;
    v3[1] = 0;
    *(v3 + 21) = 0;
    v3[2] = 0;
  }

  gnssOsa_TimerHandler();
  gnssOsa_MacExitCriticalSection("gnssOsa_StopAllTimers", 458, &g_MacTimerContextCriticSection);
  return 1;
}

uint64_t gnssOsa_MacDeinitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(v12, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTD invalid input");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "gnssOsa_MacDeinitCriticalSection", v12);
      LbsOsaTrace_WriteLog(0xEu, __str, v10, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacDeinitCriticalSection", "agpsmacosa.cpp", 792, "false && CRTD invalid input");
  }

  result = pthread_mutex_destroy(a3);
  if (result)
  {
    v6 = result;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DeInit CriticalSec,errno,%d,%s,%d\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 73, "gnssOsa_MacDeinitCriticalSection", v6, a1, a2);
      LbsOsaTrace_WriteLog(0xEu, __str, v8, 4, 1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t gnssOsa_StartTimer(const char *a1, int a2, unsigned int *a3, void (*a4)(void *), void *a5, unsigned int a6)
{
  v27 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v7)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v26, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(v26, 0x40FuLL, "%10u %s%c %s: #%04hx MacTimer,ReqDurationMs,%u,%s,%d\n", (*&g_MacClockTicksToMsRelation * v18), "OSA", 69, "gnssOsa_StartTimer", 513, a6, a1, a2);
      LbsOsaTrace_WriteLog(0xEu, v26, v19, 0, 1);
    }
  }

  else
  {
    gnssOsa_MacEnterCriticalSection("gnssOsa_StartTimer", 359, &g_MacTimerContextCriticSection);
    v12 = &byte_2A191FD34;
    v13 = 20;
    while (*v12 == 1)
    {
      v12 += 32;
      if (!--v13)
      {
        gnssOsa_MacExitCriticalSection("gnssOsa_StartTimer", 372, &g_MacTimerContextCriticSection);
        snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", "gnssOsa_StartTimer", 377, "Timer not started as max timer count hit");
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(v26, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(v26, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 69, "gnssOsa_StartTimer", __str);
          LbsOsaTrace_WriteLog(0xEu, v26, v15, 0, 1);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_StartTimer", "agpsmacosa.cpp", 377, "false && Timer not started as max timer count hit");
      }
    }

    v20 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
    v21 = ++g_MacOsaTimerCount;
    *(v12 - 28) = a4;
    *(v12 - 12) = a5;
    *(v12 - 20) = v20 + 1000000 * a6;
    *(v12 - 1) = v21;
    *v12 = 1;
    *a3 = v21;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
    {
      bzero(v26, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(v26, 0x40FuLL, "%10u %s%c %s: TimerStarted,Handle,%u,DurationMs,%u,CurrNs,%llu,ExpiryNs,%llu\n", (*&g_MacClockTicksToMsRelation * v22), "OSA", 68, "gnssOsa_StartTimer", *(v12 - 1), a6, v20, *(v12 - 20));
      LbsOsaTrace_WriteLog(0xEu, v26, v23, 5, 1);
    }

    gnssOsa_TimerHandler();
    gnssOsa_MacExitCriticalSection("gnssOsa_StartTimer", 401, &g_MacTimerContextCriticSection);
  }

  return v8;
}

uint64_t gnssOsa_StopTimer(const char *a1, unsigned int a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  gnssOsa_MacEnterCriticalSection("gnssOsa_StopTimer", 414, &g_MacTimerContextCriticSection);
  v4 = g_MacOsaTimers;
  v5 = 20;
  while (*(v4 + 6) != a3)
  {
    v4 += 4;
    if (!--v5)
    {
      goto LABEL_8;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerStopped,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 68, "gnssOsa_StopTimer", a3);
    LbsOsaTrace_WriteLog(0xEu, __str, v7, 5, 1);
  }

  *v4 = 0;
  v4[1] = 0;
  *(v4 + 21) = 0;
  v4[2] = 0;
LABEL_8:
  gnssOsa_TimerHandler();
  gnssOsa_MacExitCriticalSection("gnssOsa_StopTimer", 432, &g_MacTimerContextCriticSection);
  return 1;
}

BOOL AgpsInitMsgQueue(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  gnssOsa_InitCriticalSection("AgpsInitMsgQueue", 486, (a1 + 24));
  v2 = gnssOsa_SemInit((a1 + 88), 0);
  if (v2)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitMsgQ\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsInitMsgQueue", 1539);
    LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
  }

  return v2;
}

BOOL gnssOsa_SemInit(dispatch_semaphore_s **a1, intptr_t value)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = dispatch_semaphore_create(value);
  *a1 = v3;
  if (!v3 && LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "gnssOsa_SemInit", 1539);
    LbsOsaTrace_WriteLog(0xEu, __str, v5, 0, 1);
  }

  return v3 != 0;
}

double AgpsDeinitMsgQueue(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 68, "AgpsDeinitMsgQueue");
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 5, 1);
  }

  gnssOsa_MacEnterCriticalSection("AgpsDeinitMsgQueue", 512, (a1 + 24));
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    v5 = i + 1;
    v6 = i[1];
    if (!v6)
    {
      v5 = (a1 + 16);
    }

    *v5 = 0;
    *(a1 + 8) = v6;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Event dropped Src,%u,Dest,%u,Event,%u\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 87, "AgpsDeinitMsgQueue", 770, **i, *(*i + 1), *(*i + 1));
      LbsOsaTrace_WriteLog(0xEu, __str, v8, 2, 1);
    }

    if (*i)
    {
      free(*i);
    }

    free(i);
  }

  gnssOsa_MacExitCriticalSection("AgpsDeinitMsgQueue", 549, (a1 + 24));
  if (gnssOsa_MacDeinitCriticalSection("AgpsDeinitMsgQueue", 556, (a1 + 24)) && LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "AgpsDeinitMsgQueue", 1553);
    LbsOsaTrace_WriteLog(0xEu, __str, v10, 0, 1);
  }

  if (!gnssOsa_DeinitCountingSem((a1 + 88)) && LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 69, "AgpsDeinitMsgQueue", 1540);
    LbsOsaTrace_WriteLog(0xEu, __str, v12, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 68, "AgpsDeinitMsgQueue");
    LbsOsaTrace_WriteLog(0xEu, __str, v15, 5, 1);
  }

  return result;
}

BOOL gnssOsa_DeinitCountingSem(dispatch_object_t *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1)
  {
    dispatch_release(*a1);
    *a1 = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "gnssOsa_DeinitCountingSem", 1540);
    LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
  }

  return v1 != 0;
}

unsigned __int8 *AgpsEnQueueFsmMsg(unsigned __int8 *result, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = result;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Src,%x,Dest,%x,EnQEvent,%x\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 68, "AgpsEnQueueFsmMsg", *v3, v3[1], *(v3 + 1));
      LbsOsaTrace_WriteLog(0xEu, __str, v5, 5, 1);
    }

    v6 = gnssOsa_Calloc("AgpsEnQueueFsmMsg", 582, 1, 0x10uLL);
    *v6 = v3;
    gnssOsa_MacEnterCriticalSection("AgpsEnQueueFsmMsg", 593, (a2 + 24));
    v7 = *(a2 + 16);
    if (v7)
    {
      *(v7 + 8) = v6;
      *(a2 + 16) = v6;
      v6[1] = 0;
      if (!gnssOsa_SemRelease(*(a2 + 88)))
      {
        *(v7 + 8) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      *(a2 + 8) = v6;
      *(a2 + 16) = v6;
      v6[1] = 0;
      if (!gnssOsa_SemRelease(*(a2 + 88)))
      {
LABEL_8:
        *(a2 + 16) = v7;
        free(v6);
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Msg,%x,ProcessId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "AgpsEnQueueFsmMsg", 1548, *(v3 + 1), *(a2 + 4));
          LbsOsaTrace_WriteLog(0xEu, __str, v9, 0, 1);
        }
      }
    }

    return gnssOsa_MacExitCriticalSection("AgpsEnQueueFsmMsg", 638, (a2 + 24));
  }

  return result;
}

BOOL gnssOsa_SemRelease(dispatch_semaphore_t dsema)
{
  v6 = *MEMORY[0x29EDCA608];
  if (dsema)
  {
    dispatch_semaphore_signal(dsema);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "gnssOsa_SemRelease", 1542);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
  }

  return dsema != 0;
}

unsigned __int8 *AgpsDeQueueFsmMsg(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!gnssOsa_SemAcquire(*(a1 + 88)) && LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "AgpsDeQueueFsmMsg", 1541);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
  }

  gnssOsa_MacEnterCriticalSection("AgpsDeQueueFsmMsg", 659, (a1 + 24));
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 + 1;
    v6 = v4[1];
    if (!v6)
    {
      v5 = (a1 + 16);
    }

    *v5 = 0;
    *(a1 + 8) = v6;
    gnssOsa_MacExitCriticalSection("AgpsDeQueueFsmMsg", 684, (a1 + 24));
    v7 = *v4;
    free(v4);
    if (v7 && LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Src,%x,Dest,%x,DeQEvent,%x\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 68, "AgpsDeQueueFsmMsg", *v7, v7[1], *(v7 + 1));
      LbsOsaTrace_WriteLog(0xEu, __str, v9, 5, 1);
    }
  }

  else
  {
    gnssOsa_MacExitCriticalSection("AgpsDeQueueFsmMsg", 684, (a1 + 24));
    return 0;
  }

  return v7;
}

void gnssOsa_MarkFsmMsgInvalid(int a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    gnssOsa_MacEnterCriticalSection("gnssOsa_MarkFsmMsgInvalid", 715, (a2 + 24));
    v4 = *(a2 + 8);
    if (v4)
    {
      while (*(*v4 + 4) != a1)
      {
        v4 = v4[1];
        if (!v4)
        {
          goto LABEL_10;
        }
      }

      *(*v4 + 8) = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 73, "gnssOsa_MarkFsmMsgInvalid", a1);
        LbsOsaTrace_WriteLog(0xEu, __str, v8, 4, 1);
      }
    }

LABEL_10:
    gnssOsa_MacExitCriticalSection("gnssOsa_MarkFsmMsgInvalid", 737, (a2 + 24));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FsmCtxt\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 87, "gnssOsa_MarkFsmMsgInvalid", 513);
    LbsOsaTrace_WriteLog(0xEu, __str, v6, 2, 1);
  }
}

void *memcpy_s(const char *a1, int a2, void *__dst, unsigned int a4, const void *__src, size_t __n)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!__dst || !__src)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Caller,%s,line,%d\n", v10, "OSA", 69, "memcpy_s", 513, a1, a2);
      goto LABEL_8;
    }

    return 0;
  }

  if (a4 < __n)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Caller,%s,line,%d\n", v8, "OSA", 69, "memcpy_s", 515, a1, a2);
LABEL_8:
      LbsOsaTrace_WriteLog(0xEu, __str, v9, 0, 1);
      return 0;
    }

    return 0;
  }

  return memcpy(__dst, __src, __n);
}

char *strncpy_s(char *a1, unsigned int a2, const char *__src, size_t __n)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!a1 || !__src)
  {
    return 0;
  }

  if (a2 < __n)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "strncpy_s", 515);
      LbsOsaTrace_WriteLog(0xEu, __str, v5, 0, 1);
    }

    return 0;
  }

  return strncpy(a1, __src, __n);
}

BOOL gnssOsa_CreateThread(const char *a1, int a2, _opaque_pthread_t **a3, unsigned int a4, void *(__cdecl *a5)(void *), void *a6, unsigned int a7, void *a8, int a9)
{
  v37 = *MEMORY[0x29EDCA608];
  memset(&v36, 0, sizeof(v36));
  if (a3)
  {
    if (a4)
    {
      if (pthread_attr_init(&v36))
      {
        snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Init failed");
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(v35, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v28), "OSA", 69, "gnssOsa_CreateThread", __str);
          LbsOsaTrace_WriteLog(0xEu, v35, v29, 0, 1);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1026, "false && THRD Init failed");
      }

      v15 = &v36;
      if (pthread_attr_setstacksize(&v36, a4))
      {
        snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Stack Size");
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(v35, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v16), "OSA", 69, "gnssOsa_CreateThread", __str);
          LbsOsaTrace_WriteLog(0xEu, v35, v17, 0, 1);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1030, "false && THRD Stack Size");
      }
    }

    else
    {
      v15 = 0;
    }

    if (pthread_create(a3, v15, a5, a6))
    {
      snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Create failed");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(v35, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v26), "OSA", 69, "gnssOsa_CreateThread", __str);
        LbsOsaTrace_WriteLog(0xEu, v35, v27, 0, 1);
      }

      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1037, "false && THRD Create failed");
    }

    v32 = 0;
    v33 = 0;
    if (pthread_getschedparam(*a3, &v32, &v33))
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1044, "false && THRD pthread_getschedparam failed");
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
    {
      bzero(v35, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: #%04hx Requester,%s,Handle,%p,Prio,%d,DesiredPrio,%d,Policy,%d\n", (*&g_MacClockTicksToMsRelation * v20), "OSA", 73, "gnssOsa_CreateThread", 1569, a1, a3, v33.sched_priority, v32, a9);
      LbsOsaTrace_WriteLog(0xEu, v35, v21, 4, 1);
    }

    if (a9 == 99)
    {
      v32 = 4;
      priority_max = sched_get_priority_max(4);
    }

    else
    {
      if (a9 != 1)
      {
LABEL_23:
        if (a4 && pthread_attr_destroy(v15))
        {
          snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Destroy failed");
          if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
          {
            bzero(v35, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v30), "OSA", 69, "gnssOsa_CreateThread", __str);
            LbsOsaTrace_WriteLog(0xEu, v35, v31, 0, 1);
          }

          gnssOsa_FlushLog();
          __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1074, "false && THRD Destroy failed");
        }

        return a3 != 0;
      }

      priority_max = sched_get_priority_min(v32);
    }

    if (priority_max == -1)
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1061, "false && sched_get_priority failed");
    }

    v33.sched_priority = priority_max;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
    {
      bzero(v35, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: #%04hx Updated Prio,%d,Policy,%d\n", (*&g_MacClockTicksToMsRelation * v23), "OSA", 73, "gnssOsa_CreateThread", 1569, v33.sched_priority, v32);
      LbsOsaTrace_WriteLog(0xEu, v35, v24, 4, 1);
    }

    if (pthread_setschedparam(*a3, v32, &v33))
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1067, "false && pthread_setschedparam failed");
    }

    goto LABEL_23;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(v35, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "OSA", 69, "gnssOsa_CreateThread", 513);
    LbsOsaTrace_WriteLog(0xEu, v35, v19, 0, 1);
  }

  return a3 != 0;
}

uint64_t gnssOsaSetConfigLogLevel(int a1, int a2)
{
  dword_2A19396BC = (a1 - 3) < 0xFFFFFFFE;
  if (a1 > 3)
  {
    if ((a1 - 4) < 2)
    {
      LbsOsaTrace_UpdateModuleConfig(0, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(1u, 1, 4);
      LbsOsaTrace_UpdateModuleConfig(2u, 1, 4);
      LbsOsaTrace_UpdateModuleConfig(3u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(4u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(5u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(6u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(7u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(8u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0xBu, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0xCu, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0xDu, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0xEu, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0x12u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0x13u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0x14u, 1, 7);
      v2 = 7;
      goto LABEL_8;
    }

    if (a1 == 6)
    {
      LbsOsaTrace_UpdateModuleConfig(0, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(1u, 1, 4);
      LbsOsaTrace_UpdateModuleConfig(2u, 1, 12);
      LbsOsaTrace_UpdateModuleConfig(3u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(4u, 1, 15);
      if (a2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 15;
      }

      LbsOsaTrace_UpdateModuleConfig(5u, 1, v9);
      LbsOsaTrace_UpdateModuleConfig(6u, 1, v9);
      LbsOsaTrace_UpdateModuleConfig(7u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(8u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0xBu, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0xCu, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0xDu, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0xEu, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0x12u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0x13u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0x14u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0x18u, 1, 15);
      v3 = 1;
      v4 = 8;
      goto LABEL_9;
    }
  }

  else
  {
    if ((a1 - 1) < 2)
    {
      LbsOsaTrace_UpdateModuleConfig(0, 0, 0);
      LbsOsaTrace_UpdateModuleConfig(1u, 0, 0);
      LbsOsaTrace_UpdateModuleConfig(2u, 0, 0);
      LbsOsaTrace_UpdateModuleConfig(3u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(4u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(5u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(6u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(7u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(8u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0xBu, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0xCu, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0xDu, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0xEu, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0x12u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0x13u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0x14u, 1, 1);
      v2 = 1;
LABEL_8:
      LbsOsaTrace_UpdateModuleConfig(0x18u, 1, v2);
      v3 = 0;
      v4 = 0;
LABEL_9:
      LbsOsaTrace_UpdateModuleConfig(0x19u, v3, v4);
      v5 = 1;
      v6 = 1;
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      LbsOsaTrace_UpdateModuleConfig(0, 0, 0);
      LbsOsaTrace_UpdateModuleConfig(1u, 1, 2);
      LbsOsaTrace_UpdateModuleConfig(2u, 0, 0);
      LbsOsaTrace_UpdateModuleConfig(3u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(4u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(5u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(6u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(7u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(8u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0xBu, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0xCu, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0xDu, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0xEu, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0x12u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0x13u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0x14u, 1, 3);
      v2 = 3;
      goto LABEL_8;
    }
  }

  LbsOsaTrace_UpdateModuleConfig(0, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(1u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(2u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(3u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(4u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(5u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(6u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(7u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(8u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0xBu, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0xCu, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0xDu, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0xEu, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0x12u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0x13u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0x14u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0x18u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0x19u, 0, 0);
  v5 = 0;
  v6 = 0;
LABEL_10:

  return LbsOsaTrace_UpdateModuleConfig(0x17u, v5, v6);
}

void gnssOsa_ReportExcp(const char *a1, unsigned __int8 *a2, unsigned int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1 && a2 && a3)
  {
    v6 = strlen(a1);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v12 = v6;
    if (v6)
    {
      memcpy(&__dst, a1, v6);
    }

    *(&__dst + v7) = 0;
    __p = 0;
    v9 = 0;
    v10 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a2, &a2[a3], a3);
    if (gp_Logger)
    {
      (*(*gp_Logger + 40))(gp_Logger, &__dst, &__p);
    }

    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_2995B51DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void gnssOsa_PrintLog(char *__s, int a2, int a3, unsigned int a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = gp_Logger;
  if (!gp_Logger)
  {
    return;
  }

  if (a3)
  {
    v8 = strlen(__s);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = a4;
    if (!a4)
    {
      return;
    }
  }

  v9 = 6;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v9 = 2;
      if (!a3)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (a2 != 1)
    {
      goto LABEL_20;
    }

LABEL_14:
    v9 = 4;
    goto LABEL_20;
  }

  if (a2 == 4)
  {
    v9 = 5;
    goto LABEL_20;
  }

  if (a2 == 3)
  {
    goto LABEL_14;
  }

  if (a2 != 2 || (v9 = 3, !a3))
  {
LABEL_20:
    v10 = *(*gp_Logger + 32);

    v10(v4, v9, __s, v8);
    return;
  }

LABEL_17:
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  v12 = v8;
  memcpy(&__p, __s, v8);
  *(&__p + v8) = 0;
  (*(*v4 + 16))(v4, v9, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
  }
}

void sub_2995B542C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double lpm_utils_linkedlist_destroy(void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {

    free(a1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx linklist is NULL\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 69, "lpm_utils_linkedlist_destroy", 1537);
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 0, 1);
  }

  return result;
}

uint64_t lpp_fill_in_bitstr_from_byte(_BYTE *a1, size_t size, unsigned int a3)
{
  if (!size)
  {
    return 0;
  }

  v4 = size;
  *a1 = size;
  a1[4] = 1;
  v6 = gnssOsa_Calloc("posp_alloc", 18, 1, size);
  v7 = 0;
  *(a1 + 1) = v6;
  v8 = -v4;
  v9 = v4 - 1;
  do
  {
    *(*(a1 + 1) + v7++) = (a3 >> v9--) & 1;
  }

  while (!__CFADD__(v8++, 1));
  return 1;
}

uint64_t lpp_fill_in_bitstr_from_ulong(unsigned int a1, size_t size, uint64_t a3)
{
  v4 = size;
  v6 = size;
  v7 = 1;
  v8 = gnssOsa_Calloc("posp_alloc", 18, 1, size);
  *(a3 + 8) = v8;
  if (!v8)
  {
    return 0;
  }

  *a3 = v4;
  *(a3 + 4) = 1;
  if (v4)
  {
    v9 = -v6;
    v10 = v4 - 1;
    do
    {
      *(*(a3 + 8) + v10) = a1 & 1;
      a1 >>= 1;
      --v10;
    }

    while (!__CFADD__(v9++, 1));
    return 1;
  }

  return v7;
}

double GAL_I_EphBin2Int(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(a1 + 8) & 0x3FF;
  *(a2 + 18) = *(a1 + 10) >> 2;
  v2 = *(a1 + 14);
  v3 = (*(a1 + 10) << 30) | (*(a1 + 12) << 14) | (v2 >> 2);
  v4 = *(a1 + 18);
  v5 = (v2 << 30) | (*(a1 + 16) << 14) | (v4 >> 2);
  *(a2 + 20) = v3;
  *(a2 + 24) = v5;
  v6 = *(a1 + 28) | (*(a1 + 26) << 16);
  *(a2 + 28) = (v4 << 30) | (*(a1 + 20) << 14) | (*(a1 + 22) >> 2);
  *(a2 + 32) = v6;
  v7 = *(a1 + 36) | (*(a1 + 34) << 16);
  *(a2 + 36) = *(a1 + 32) | (*(a1 + 30) << 16);
  *(a2 + 40) = v7;
  *(a2 + 48) = *(a1 + 38) >> 2;
  v8 = *(a1 + 44);
  *(a2 + 44) = (v8 | (*(a1 + 42) << 16)) >> 8;
  HIDWORD(v9) = v8;
  LODWORD(v9) = *(a1 + 46) << 16;
  *(a2 + 50) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 46);
  LODWORD(v9) = *(a1 + 48) << 16;
  *(a2 + 52) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 48);
  LODWORD(v9) = *(a1 + 50) << 16;
  *(a2 + 54) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 50);
  LODWORD(v9) = *(a1 + 52) << 16;
  *(a2 + 56) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 52);
  LODWORD(v9) = *(a1 + 54) << 16;
  *(a2 + 58) = v9 >> 24;
  *(a2 + 15) = *(a1 + 54);
  v10 = *(a1 + 58);
  *(a2 + 14) = v10 >> 10;
  HIDWORD(v9) = v10;
  LODWORD(v9) = *(a1 + 60) << 16;
  *(a2 + 60) = v9 >> 26;
  HIDWORD(v9) = *(a1 + 60);
  LODWORD(v9) = *(a1 + 62) << 16;
  *(a2 + 62) = v9 >> 26;
  *(a2 + 74) = (*(a1 + 64) >> 12) & 0xC00F | (16 * (*(a1 + 62) & 0x3FF));
  v11 = *(a1 + 68);
  v12 = *(a1 + 70);
  *(a2 + 64) = (2 * ((8 * *(a1 + 66)) | (*(a1 + 64) << 19) | (v11 >> 13))) >> 1;
  *(a2 + 68) = ((8 * v12) | (v11 << 19)) >> 11;
  *(a2 + 72) = v12 >> 2;
  *(a2 + 78) = ((*(a1 + 78) << 15) | (*(a1 + 76) << 31)) >> 22;
  *(a2 + 76) = ((*(a1 + 80) << 9) | (*(a1 + 78) << 25)) >> 22;
  v13 = *(a1 + 80);
  *(a2 + 85) = (v13 >> 11) & 3;
  *(a2 + 86) = (v13 >> 9) & 3;
  *(a2 + 82) = BYTE1(v13) & 1;
  *(a2 + 83) = (v13 & 0x80) != 0;
  *(a2 + 12) = (*(a1 + 82) >> 11) & 0xF01F | (32 * (v13 & 0x7F));
  *(a2 + 8) = (*(a1 + 84) >> 7) & 0xFFF001FF | ((*(a1 + 82) & 0x7FF) << 9);
  result = *a1;
  *a2 = *a1;
  return result;
}

void DEMGen_inpDEM2mST(double *a1, uint64_t a2, double *a3)
{
  *(a3 + 2) = 11;
  TCU_ConvertOStimeToTTICKtime(a2, *a1, a3);
  Set_Mat_Const(1, 1u, 6, a3 + 4, a1[1]);
  Set_Mat_Const(1, 1u, 6, a3 + 18, a1[2]);
  v6 = g_FPE_LogSeverity;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v8 = *(g_TCU + 8);
    }

    else
    {
      v8 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f -DEM: t=%0.3f,Alt=%0.1f,RMS_Alt=%0.1f", "DEMGen_inpDEM2mST", 85, v7, v8, *a3, a1[1], a1[2]);
    v6 = g_FPE_LogSeverity;
  }

  if ((v6 & 0x200) != 0)
  {
    LC_LOG_NMEA_GENERIC("%s,DEM,%.3f,%.1f,%.1f,%.3f", "$PFPEX", *a3, a1[1], a1[2], *(a2 + 40) - *a3);
  }
}

uint64_t DEMGen_run(double *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x29EDCA608];
  v8 = *(a3 + 87776);
  v9 = *(a4 + 128040);
  memset(__dst, 0, sizeof(__dst));
  v32 = 0;
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
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v10 = *(a5 + 40);
  result = Cyc_Record_Count_Free(v9, 1u);
  if (!result)
  {
    return result;
  }

  while (1)
  {
    result = Cyc_Record_IsEmpty(v8, a2);
    if (result)
    {
      break;
    }

    Cyc_Record_Read(v8, a2, __dst);
    DEMGen_inpDEM2mST(__dst, a5, &v19);
    v12 = *&v19;
    v13 = *a1;
    if (*&v19 < *a1)
    {
      if (*&v19 < v13 + -6.0)
      {
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          v14 = mach_continuous_time();
          if (g_TCU)
          {
            v15 = *(g_TCU + 8);
          }

          else
          {
            v15 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f DEM: ignoring measurement in the past! meas.time=%0.3f, prevTime=%0.3f (diff=%0.3f)", "DEMGen_run", 149, (*&g_MacClockTicksToMsRelation * v14), v15, *&v19, *a1, *a1 - *&v19);
        }

        goto LABEL_18;
      }

      if (*&v19 < v13 + -0.05 && (g_FPE_LogSeverity & 4) != 0)
      {
        v16 = mach_continuous_time();
        if (g_TCU)
        {
          v17 = *(g_TCU + 8);
        }

        else
        {
          v17 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f DEM: using measurement %0.3f sec in the past. meas.time=%0.3f, prevTime=%0.3f", "DEMGen_run", 161, (*&g_MacClockTicksToMsRelation * v16), v17, *a1 - *&v19, *&v19, *a1);
        v13 = *a1;
      }

      v12 = v13 + 0.001;
      *&v19 = v13 + 0.001;
    }

    *a1 = v12;
    Cyc_Record_Write(v9, &v19);
LABEL_18:
    result = Cyc_Record_Count_Free(v9, 1u);
    if (!result)
    {
      return result;
    }
  }

  DWORD2(v19) = 12;
  *&v19 = v10 + 0.001;
  *&v20 = 0x3FF0000000000000;
  if (v10 + 0.001 > *a1)
  {
    *a1 = v10 + 0.001;
    return Cyc_Record_Write(v9, &v19);
  }

  return result;
}

uint64_t XofSvcs02_02Crc32(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  if ((g_Crc32Table_Computed & 1) == 0)
  {
    for (i = 0; i != 256; ++i)
    {
      v4 = 0;
      v5 = i;
      do
      {
        if (v5)
        {
          v5 = (v5 >> 1) ^ 0xEDB88320;
        }

        else
        {
          v5 >>= 1;
        }
      }

      while (v4++ < 7);
      g_Crc32_RemTable[i] = v5;
    }

    g_Crc32Table_Computed = 1;
  }

  if (a3)
  {
    v7 = ~result;
    v8 = a3;
    do
    {
      v9 = *a2++;
      v7 = g_Crc32_RemTable[v7 ^ v9] ^ (v7 >> 8);
      --v8;
    }

    while (v8);
    return ~v7;
  }

  return result;
}

uint64_t xofSvcs02_03EndianConvert(unsigned __int8 *a1, unsigned int a2, signed __int8 *a3, unsigned int a4)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a4 && a2 && a1 && a3)
  {
    if (a2 < 2)
    {
      return 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = a2 - 1;
      while (1)
      {
        v9 += a1[v8];
        if (v9 >= a4)
        {
          result = LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0);
          if (!result)
          {
            return result;
          }

          bzero(__str, 0x410uLL);
          v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OffSet,%u,DataSize,%u\n", v18);
          goto LABEL_21;
        }

        v11 = a1[v8 + 1];
        if ((v11 - 9) < 0xFFFFFFF8)
        {
          break;
        }

        v12 = __src;
        v13 = a1[v8 + 1];
        do
        {
          *v12++ = a3[v9 - 1 + v13--];
        }

        while (v13);
        memcpy_s("xofSvcs02_04SingleEnConvert", 82, &a3[v9], v11, __src, v11);
        if (++v8 == v10)
        {
          return 1;
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Data,Size,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 69, "xofSvcs02_04SingleEnConvert", 513, v11);
        LbsOsaTrace_WriteLog(8u, __str, v21, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Endian conversion,MapIndex,%u,OffSet,%u\n", v22);
LABEL_21:
        v16 = v19;
        v17 = 5;
        goto LABEL_22;
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Data,StructSizeMap,MapSize,%u,DataSize,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 69, "xofSvcs02_03EndianConvert", 515, a2, a4);
      v17 = 0;
LABEL_22:
      LbsOsaTrace_WriteLog(8u, __str, v16, v17, 1);
      return 0;
    }
  }

  return result;
}

uint64_t xofSvcs02_04GetStartSv(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) >= 6)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    LOBYTE(v1) = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "xofSvcs02_04GetStartSv", 515, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
      LOBYTE(v1) = 0;
    }
  }

  else
  {
    return (0x10101C17801uLL >> (8 * (a1 - 1)));
  }

  return v1;
}

void DD_GLON_Alm_Set_Health_Frq(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0;
  v14 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = 0;
  GLON_AlmBin2Int(a1, &v13);
  v3 = BYTE3(v14) - 32;
  if (BYTE3(v14) <= 0x18u)
  {
    v3 = 2139062143;
  }

  if (BYTE3(v14) >= 7u)
  {
    v4 = v3;
  }

  else
  {
    v4 = BYTE3(v14);
  }

  v5 = BYTE2(v14);
  v6 = BYTE2(v14) - 1;
  if (v6 <= 0x17)
  {
    if (BYTE6(v16) == 1)
    {
      if (g_Enable_Event_Log > 1u)
      {
        v7 = *(a2 + v6 + 4084);
        if (v7 != 2139062143 && v7 != v4)
        {
          EvCrt_v("DD_GLON_Alm_Set_Health_Frq:  Error:  Ignoring apparent change of Frq Id of Slot %d from %d to %d %d %d", BYTE2(v14), v7, v4, 1, v17);
        }
      }

      if (*(a2 + v6 + 4084) == 2139062143 && v4 != 2139062143)
      {
        *(a2 + v6 + 4084) = v4;
      }

      v10 = a2[1401];
      if ((*(v10 + v6) & 1) == 0 && (*(a2[2034] + v6) & 1) == 0)
      {
        *(v10 + v6) = 1;
        EvLog_v("DD_GLON_Alm_Set_Health_Frq:  Health U->H Alm:  Slot %d  FrqId %d", BYTE2(v14), v4);
        *(a2[1402] + 20 * v6 + 4) = 1;
      }
    }

    else
    {
      v11 = a2[1401];
      if (*(v11 + v6) == 1)
      {
        *(v11 + v6) = 0;
        EvLog_v("DD_GLON_Alm_Set_Health_Frq:  Health H->U Alm:  Slot %d  FrqId %d", v5, v4);
        *(a2[1402] + 20 * v6 + 4) = 2;
      }

      if (*(a2 + v6 + 4084) == 2139062143 && v4 <= 6)
      {
        *(a2 + v6 + 4084) = v4;
      }
    }
  }
}

void DD_Proc_GLON_Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v134 = *MEMORY[0x29EDCA608];
  v8 = a2 + 16;
  v7 = *(a2 + 16);
  if ((v7 & 0x80000000) != 0)
  {
    if (g_Enable_Event_Log >= 2u)
    {
      v17 = *(a2 + 59);

      EvLog_d("DD_Proc_GLON_Data:  GLON MSB Zero test fail", v17);
    }
  }

  else
  {
    v11 = *(a2 + 58) + 7;
    v12 = a6 + 16432;
    v13 = *(a6 + 16432 + 4 * v11);
    v14 = v13 - 1;
    v15 = v7 >> 27;
    *(a2 + 59) = v15;
    if (!v15)
    {
      goto LABEL_3;
    }

    if (*(a4 + 60) >= 7)
    {
      v18 = *(a6 + 8444);
      if ((v18 - 2) < 5 || (v18 - 1) <= 5 && *(a4 + 64) == 1)
      {
        v19 = (*(a2 + 60) % 30);
        v20 = ((*(a2 + 60) % 30 + (((*(a2 + 60) % 30) & 0x80u) >> 7)) << 24) >> 25;
        if ((v19 + 1) < 3)
        {
          v20 = 15;
        }

        if (v20 != v7 >> 27 && !*a3 && (*(*(a6 + 48) + *(a2 + 8)) & 1) == 0 && ((v20 - 2) > 3u || v15 + 1 != v20))
        {
          if (g_Enable_Event_Log >= 2u)
          {
            v126 = a5;
            v22 = a6;
            EvCrt_nd("DD_Proc_GLON_Data:  Decoded Str No error", 3, a3, v15, v20, v19);
            a6 = v22;
            a5 = v126;
          }

          *(a2 + 59) = 0;
LABEL_3:
          v16 = *(a2 + 59);
          if ((v16 - 1) > 4)
          {
            if ((v16 - 6) <= 9)
            {
              if (v16)
              {
                v30 = (a1 + 6005);
                v31 = 14;
                do
                {
                  v32 = *v30;
                  if (v32 != v16 && v32 != 0)
                  {
                    *v30 = 0;
                  }

                  if (*(v30 - 1))
                  {
                    v34 = v16 - 1 == *(v30 - 1);
                  }

                  else
                  {
                    v34 = 1;
                  }

                  if (!v34)
                  {
                    *(v30 - 1) = 0;
                  }

                  v30 += 2;
                  --v31;
                }

                while (v31);
              }

              else
              {
                v23 = (a1 + 6005);
                v24 = 14;
                do
                {
                  v25 = *(v23 - 1);
                  if (v25 != v16 && v25 != 0)
                  {
                    *(v23 - 1) = 0;
                  }

                  *v23 = 0;
                  v23 += 2;
                  --v24;
                }

                while (v24);
                *(a1 + 6397) = 0;
              }
            }
          }

          else
          {
            *(a1 + 6028) = 0;
            *(a1 + 6020) = 0;
            *(a1 + 6004) = 0u;
            *(a1 + 6398) = 0;
            *(a1 + 6396) = 0;
          }

          v35 = *(a2 + 59);
          if ((v35 - 1) < 4)
          {
            if (v13 != 2139062143)
            {
              v36 = a6 + 11224 + (v14 << 6);
              if (*(v36 + 60) != 4095 && *(*(a6 + 11208) + v14) == 1 && *(*(a6 + 16272) + v14) == 1 && *(a2 + 60) % 1800 >= 30)
              {
                v37 = v8;
                v38 = a5;
                v128 = a6;
                DD_Proc_Glon_Eph_Bit_Validation(v13, v35, v37, a6);
                v39 = *(v36 + 60);
                DD_Proc_Glon_Eph_String(a1, a2, a4, v38);
                a6 = v128;
                if (v39 == 4095)
                {
                  v40 = *v38;
                  *v36 = *v38;
                  *(v36 + 4) = 4;
                  *(*(v128 + 16304) + v14) = 1;
                  if (*(a1 + v11 + 5508) >= 2u)
                  {
                    v41 = *(v128 + 16328);
                    *v41 = 0;
                    v41[1] = 0;
                    v41[2] = 0;
                  }

                  if (v40 >= 1)
                  {
                    v42 = 0;
                    LODWORD(v43) = 0;
                    v44 = p_NV + 72 * v13;
                    v45 = *v36;
                    v46 = *(v36 + 16);
                    v47 = *(v36 + 32);
                    *(v44 + 20376) = *(v36 + 48);
                    *(v44 + 20360) = v47;
                    *(v44 + 20344) = v46;
                    *(v44 + 20328) = v45;
                    v48 = 55665;
                    do
                    {
                      v49 = *(v44 + 20328 + v42) ^ BYTE1(v48);
                      v48 = 52845 * (v48 + v49) + 22719;
                      v43 = (v43 + v49);
                      ++v42;
                    }

                    while (v42 != 64);
                    *(v44 + 20320) = v43;
                  }
                }

                goto LABEL_96;
              }
            }

            v50 = a6;
            DD_Proc_Glon_Eph_String(a1, a2, a4, a5);
            goto LABEL_95;
          }

          if (v35 != 5)
          {
            if (!*(a2 + 59))
            {
              v50 = a6;
              EvLog_d("DD_Proc_GLON_Data:  Bad string", *(a2 + 9));
LABEL_95:
              a6 = v50;
              goto LABEL_96;
            }

            if (*(a4 + 60) < 3)
            {
              goto LABEL_96;
            }

            v66 = *(a2 + 16);
            v67 = (*(a2 + 60) - 2 * ((v66 >> 27) & 0xF) + 15) / 30 % 5 + 1;
            if (((((*(a2 + 60) - 2 * ((v66 >> 27) & 0xF) + 15) / 30 % 5) + 1) & 0x100) != 0)
            {
              goto LABEL_96;
            }

            v68 = (v66 >> 27) & 0xF;
            v69 = *(a2 + 58) + 7;
            if ((v66 >> 27))
            {
              v99 = (a1 + 6004 + 2 * v69);
              if (*v99 + 1 == v68 && *(a1 + v69 + 5972) == 1)
              {
                v100 = a1 + 24 * v69;
                v101 = *(v8 + 8);
                *(v100 + 6044) = *v8;
                *(v100 + 6052) = v101;
                if (!*(a1 + 6000))
                {
                  v102 = *(a2 + 60);
                  if (v102 >= 1)
                  {
                    *(a1 + 6000) = v102;
                  }
                }

                v99[1] = v68;
                *(a1 + v69 + 5986) = v67;
                *(a1 + 2 * v69 + 6369) = *(a2 + 15);
                ++*(a1 + 6397);
                *(a1 + 4 * v69 + 6400) = *a5;
                if (!*(a1 + 2 * v69 + 6368))
                {
                  ++*(a1 + 6398);
                }
              }

              else
              {
                if (g_Enable_Event_Log >= 6u)
                {
                  v103 = a6;
                  if (*(a1 + v69 + 5972) == 1)
                  {
                    EvLog_v("DD_Proc_Glon_Alm_String:  String numbers not consecutive, 1stStrId %d  2ndStrId %d  FrqId %d  FrmId %d  StrId %d  glonALM_Str1:  0x%x ");
                  }

                  else
                  {
                    EvLog_v("DD_Proc_Glon_Alm_String:  Clk1 not Ready, FrqId %d  FrmId %d  StrId %d  Clk1_Ready %d ");
                  }

                  a6 = v103;
                }

                if (*v99)
                {
                  *v99 = 0;
                }
              }

              goto LABEL_96;
            }

            if (v68 == 14 && ((*(a2 + 60) - 2 * ((v66 >> 27) & 0xF) + 15) / 30 % 5 + 1) == 5)
            {
              v70 = *(v12 + 4 * v69);
              if (v70 == 2139062143 || (*(*(a6 + 11208) + v70 - 1) & 1) == 0)
              {
                if (g_Enable_Event_Log >= 2u)
                {
                  v50 = a6;
                  EvLog_v("DD_Proc_Glon_Alm_String:  Rejected:  Clk2 String,  SlotNum %d  FrqId %d  FrmId %d  StrId %d  glonALM_Str1:  0x%x ", v70, *(a2 + 58), 5, 14, *(a1 + 24 * v69 + 6032));
                  goto LABEL_95;
                }

LABEL_96:
                v59 = 0;
                LODWORD(v60) = 0;
                v61 = *(a6 + 11208);
                v62 = p_NV;
                v63 = *(v61 + 16);
                *(p_NV + 19172) = *v61;
                *(v62 + 19188) = v63;
                v64 = 55665;
                do
                {
                  v65 = *(v62 + 19168 + v59) ^ BYTE1(v64);
                  v64 = 52845 * (v64 + v65) + 22719;
                  v60 = (v60 + v65);
                  ++v59;
                }

                while (v59 != 32);
                *(v62 + 19160) = v60;
                return;
              }

LABEL_177:
              v107 = a1 + 24 * v69;
              v108 = *v8;
              *(v107 + 6040) = *(v8 + 8);
              *(v107 + 6032) = v108;
              if (!*(a1 + 6000))
              {
                v109 = *(a2 + 60);
                if (v109 >= 1)
                {
                  *(a1 + 6000) = v109;
                }
              }

              v110 = a1 + 2 * v69;
              *(v110 + 6004) = v68;
              *(v110 + 6368) = *(a2 + 15);
              ++*(a1 + 6396);
              *(a1 + 4 * v69 + 6400) = *a5;
              goto LABEL_96;
            }

            if (((v66 >> 19) & 0x1F) - 25 >= 0xFFFFFFE8)
            {
              v69 = v69;
              goto LABEL_177;
            }

            if (g_Enable_Event_Log < 2u)
            {
              goto LABEL_96;
            }

            v124 = (v66 >> 27) & 0xF;
            v125 = *(a2 + 16);
            v122 = *(a2 + 58);
            v123 = ((*(a2 + 60) - 2 * ((v66 >> 27) & 0xF) + 15) / 30 % 5 + 1);
            v121 = (v66 >> 19) & 0x1F;
            v58 = "DD_Proc_Glon_Alm_String:  Rejected:  Invalid Slot %d  FrqId %d  FrmId %d  StrId %d  Word[0]: 0x%x ";
LABEL_94:
            v50 = a6;
            EvCrt_v(v58, v121, v122, v123, v124, v125);
            goto LABEL_95;
          }

          v51 = *(a2 + 20);
          v52 = *(a2 + 24);
          HIDWORD(v54) = *(a2 + 16);
          LODWORD(v54) = v51;
          v53 = v54 >> 16;
          v55 = HIWORD(HIDWORD(v54)) & 0x7FF;
          v56 = (v54 >> 16) & 0x7FFFFFFF;
          if (v53 < 0)
          {
            v53 = -v56;
          }

          if ((v51 & 0x200) != 0)
          {
            v57 = -((__PAIR64__(v51, v52) >> 20) & 0x1FFFFF);
          }

          else
          {
            v57 = (__PAIR64__(v51, v52) >> 20) & 0x3FFFFF;
          }

          if ((v55 - 1462) < 0xFFFFFA4B)
          {
            v121 = *(a2 + 58);
            v122 = HIWORD(*(a2 + 16)) & 0x7FF;
            v58 = "DD_Proc_Glon_Clk1_String:  Rejected:  FrqId %d  NA = %d  - Out of range [1..1461]";
            goto LABEL_94;
          }

          v71 = 0;
          v72 = a6 + 12288;
          v73 = *a5;
          v74 = (v51 >> 10) & 0x1F;
          v75 = (v52 >> 19) & 1;
          v76 = a1 + 5580;
          v77 = (a1 + 5600);
          v78 = 1;
          while (1)
          {
            if (v53 == *(v77 - 2) && v57 == *v77 && v74 - 2 < *(v77 - 4))
            {
              v79 = *(v77 - 6);
              v80 = __OFSUB__(v55, v79);
              v81 = v55 - v79;
              a3 = (v81 + 1461);
              if (v81 < 0 != v80)
              {
                v81 += 1461;
              }

              if (v81 <= 3)
              {
                break;
              }
            }

            v78 = v71 < 0xD;
            v77 += 7;
            if (++v71 == 14)
            {
              v78 = 0;
              v82 = *(a2 + 58) + 7;
              v83 = (v76 + 28 * v82);
              *v83 = v73;
              *(v83 + 1) = 0;
              *(v83 + 4) = v55;
              *(v83 + 3) = v53;
              *(v83 + 16) = v74;
              *(v83 + 5) = v57;
              *(v83 + 24) = v75;
              v84 = *(a2 + 15) == 0;
              goto LABEL_118;
            }
          }

          v82 = *(a2 + 58) + 7;
          v83 = (v76 + 28 * v82);
          *v83 = v73;
          *(v83 + 1) = 0;
          *(v83 + 4) = v55;
          *(v83 + 3) = v53;
          *(v83 + 16) = v74;
          *(v83 + 5) = v57;
          *(v83 + 24) = v75;
          v84 = 1;
LABEL_118:
          *(a1 + v82 + 5972) = v84;
          if ((*(a6 + 16296) & 1) != 0 || !v84)
          {
            if (!v78)
            {
              goto LABEL_149;
            }

            if (*(a6 + 16296))
            {
              if (*(a6 + 16232) >= v74)
              {
                goto LABEL_133;
              }

              v88 = *(a4 + 66) - v74;
              if (v88 < 0)
              {
                v88 = v74 - *(a4 + 66);
              }

              if (v88 >= 2)
              {
LABEL_133:
                if (*(a6 + 16224) > v55)
                {
                  goto LABEL_149;
                }

                v89 = *(a4 + 68) - v55;
                if (v89 < 0)
                {
                  v89 = v55 - *(a4 + 68);
                }

                if (v89 > 1)
                {
LABEL_149:
                  if (g_Enable_Event_Log >= 6u)
                  {
                    v50 = a6;
                    EvLog_nd("DD_Proc_Glon_Clk1_String:  Rejected: ", 6, a3, *(a6 + 16232), *(a6 + 16224), v74, v55, *(a4 + 66), *(a4 + 68));
                    goto LABEL_95;
                  }

                  goto LABEL_96;
                }
              }
            }

            v90 = *v83;
            *(a6 + 16228) = *(v83 + 12);
            *(a6 + 16216) = v90;
            *(a6 + 16216) = *a5;
            *(a6 + 16220) = 4;
          }

          else
          {
            v85 = *v83;
            *(a6 + 16228) = *(v83 + 12);
            *(a6 + 16216) = v85;
            *(a6 + 16216) = *a5;
            *(a6 + 16220) = 4;
            v86 = *(a6 + 16228);
            if (v86 < 0)
            {
              v86 = -v86;
            }

            if (v86 > 0x864)
            {
              goto LABEL_96;
            }

            v87 = *(a6 + 16236);
            if (v87 < 0)
            {
              v87 = -v87;
            }

            if (v87 >= 0x433)
            {
              goto LABEL_96;
            }
          }

          *(a6 + 16296) = 1;
          v91 = *(a4 + 68);
          v92 = (a6 + 16216);
          v93 = v91 - *(a6 + 16224);
          v94 = v93 + 1461;
          if (v93 >= -730)
          {
            v94 = v91 - *(a6 + 16224);
          }

          if (v93 <= 729)
          {
            v95 = v94;
          }

          else
          {
            v95 = v93 - 1461;
          }

          v96 = *(a4 + 64);
          if (v95 >= 0)
          {
            v97 = v95;
          }

          else
          {
            v97 = -v95;
          }

          v98 = *(a6 + 16232);
          if (v96 == 1 && v97 >= 2)
          {
            *(a4 + 66) = *(a6 + 16232);
            *(a4 + 64) = 0;
            goto LABEL_196;
          }

          if (v96)
          {
            v104 = *(a4 + 66);
            if (v98 != v104)
            {
              v105 = a6;
              v106 = a5;
              if (v104 + 1 == v98 && v91 == 1461)
              {
                EvLog_nd("DD_Proc_Glon_Clk1_String:  4yrBlockNo roll-over ", 2, a3, byte_2A1939000, *(a4 + 66), v98);
                *(a4 + 68) = 1;
              }

              else
              {
                EvCrt_nd("DD_Proc_Glon_Clk1_String:  WARNING:  4yrBlockNo miss-match ", 2, a3, byte_2A1939000, *(a4 + 66), v98);
              }

              *(a4 + 66) = *(v72 + 3944);
              a5 = v106;
              a6 = v105;
              if ((*(a4 + 64) & 1) == 0)
              {
                goto LABEL_196;
              }
            }
          }

          else
          {
            *(a4 + 66) = v98;
            if (v91 < 1)
            {
LABEL_196:
              v115 = 0;
              LODWORD(v116) = 0;
              *(a6 + 16216) = *a5;
              *(a6 + 16220) = 4;
              v117 = p_NV;
              v118 = *(v92 + 12);
              *(p_NV + 19208) = *v92;
              *(v117 + 19220) = v118;
              v119 = 55665;
              do
              {
                v120 = *(v117 + 19208 + v115) ^ BYTE1(v119);
                v119 = 52845 * (v119 + v120) + 22719;
                v116 = (v116 + v120);
                ++v115;
              }

              while (v115 != 32);
              *(v117 + 19200) = v116;
              goto LABEL_96;
            }

            *(a4 + 64) = 1;
          }

          if (*(a4 + 5) != 1 || !*a4)
          {
            v111 = a6;
            *v129 = 0;
            *v133 = 0;
            v132 = 0.0;
            v112 = a5;
            API_Get_UTC_Cor(1, v129);
            Glon_To_GPS_Time(*(a4 + 66), *(a4 + 68), *(a4 + 72), *v129, &v133[1], v133, &v132);
            DD_Submit_WeekNum(*(a2 + 58), v133[1], SLOWORD(v133[0]), a4, v132);
            a5 = v112;
            if (!*v112)
            {
              v113 = *(p_api + 48);
              if (*(v113 + 5) == 1 && *v113 >= 3)
              {
                v114 = *(v113 + 24) + 604800 * *(v113 + 16);
              }

              else
              {
                v114 = 0;
              }

              *v112 = v114;
            }

            a6 = v111;
          }

          goto LABEL_196;
        }
      }
    }

    if (v15 == 2)
    {
      if ((v7 & 0x4000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (v15 == 3)
    {
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v15 < 5 || ((v7 >> 27) & 1) == 0)
      {
        goto LABEL_3;
      }

      if ((*(a2 + 26) & 8) == 0)
      {
LABEL_38:
        if (v13 == 2139062143)
        {
          goto LABEL_3;
        }

        *(a1 + v11 + 4706) = 0;
        if ((*(*(a6 + 11208) + v14) & 1) != 0 || *(*(a6 + 16288) + v14) != 1)
        {
          goto LABEL_3;
        }

        v127 = a5;
        memset(v129, 0, sizeof(v129));
        v130 = 0;
        v131 = 0;
        v27 = a6;
        GLON_AlmBin2Int(a6 + 36 * v14 + 15352, v129);
        if (BYTE6(v130) == 1)
        {
          *(*(v27 + 11208) + v14) = 1;
          EvLog_v("DD_Proc_GLON_Data:  Health U->H Imm:  Slot %d  FrqId %d", v13, *(a2 + 59));
          *(*(v27 + 11216) + 20 * v14 + 4) = 1;
        }

        else
        {
          a6 = v27;
          if (g_Enable_Event_Log < 4u)
          {
LABEL_161:
            a5 = v127;
            goto LABEL_3;
          }

          EvLog_v("DD_Proc_GLON_Data:  Health U->U Imm:  Slot %d  FrqId %d", v13, *(a2 + 59));
        }

        a6 = v27;
        goto LABEL_161;
      }
    }

    if (!*(a2 + 15))
    {
      ++*(a1 + v11 + 4706);
    }

    if (v13 == 2139062143)
    {
      EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot ?  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d   (Ignored, no Slot)");
    }

    else
    {
      if (!*(a2 + 15) && *(a1 + 4706 + v11) >= 2u)
      {
        v28 = *(a6 + 11208);
        if (*(v28 + v14) == 1)
        {
          *(v28 + v14) = 0;
          v29 = a6;
          EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot %d  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d", v13, *(a2 + 58), *(a2 + 59), 0, *(a1 + 4706 + v11));
          a6 = v29;
          *(*(v29 + 11216) + 20 * v14) = 2;
        }
      }

      if (*(*(a6 + 11208) + v14) == 1)
      {
        EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot %d  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d  (Waiting Confirmation)");
      }
    }
  }
}

void DD_Proc_Glon_Eph_Bit_Validation(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 - 1);
  v5 = a2 - 1;
  if (v4 <= 0x17 && v5 <= 3)
  {
    v10 = 0;
    v11 = a4 + (v4 << 6) + 11224;
    v12 = 3 * v5;
    v14 = &MaskToStrCheck[3 * v5];
    v15 = 3 * a2 - 3;
    do
    {
      v16 = *(v11 + 60);
      if (((v16 >> (v15 + v10)) & 1) == 0)
      {
        v17 = *(a3 + 4 * v10);
        v18 = v14[v10];
        v13 = v11 + 4 * v12 + 12;
        if (((*(v13 + 4 * v10) ^ v17) & v18) != 0)
        {
          if (g_Enable_Event_Log >= 2u)
          {
            EvCrt_v("DD_Proc_Glon_Eph_Bit_Validation:  Fail SV %d  St %d  Wd %d  0x%x 0x%x 0x%x", a1, a2, v10, v17, *(v13 + 4 * v10), v18);
          }
        }

        else
        {
          *(v11 + 60) = v16 | (1 << (v12 + v10));
        }
      }

      ++v10;
    }

    while (v10 != 3);
  }
}

void DD_Proc_Glon_Eph_String(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v37[1] = *MEMORY[0x29EDCA608];
  v8 = (*(a2 + 58) + 7);
  v9 = (a1 + 4 * v8 + 4724);
  v10 = (*(a2 + 59) - 1);
  v11 = &v9[v10];
  if (v9[v10] && ((*(a1 + 48 * (*(a2 + 58) + 7) + 12 * (*(a2 + 59) - 1) + 4780) ^ *(a2 + 16)) & MaskToStrCheck[3 * *(a2 + 59) - 3]) == 0)
  {
    v13 = 0;
    do
    {
      v14 = v13;
      if (v13 == 2)
      {
        break;
      }

      v15 = MaskToStrCheck[3 * *(a2 + 59) - 2 + v13];
      v16 = *(48 * (*(a2 + 58) + 7) + 12 * (*(a2 + 59) - 1) + a1 + 4784 + 4 * v13) ^ *(a2 + 20 + 4 * v13);
      ++v13;
    }

    while ((v16 & v15) == 0);
    v12 = v14 > 1;
  }

  else
  {
    v12 = 0;
  }

  v17 = a1 + 48 * (*(a2 + 58) + 7) + 4780 + 12 * (*(a2 + 59) - 1);
  v18 = *(a2 + 16);
  *(v17 + 8) = *(a2 + 24);
  *v17 = v18;
  v19 = a1 + 4 * v8;
  *(v19 + v10 + 5452) = *(a2 + 15);
  *(v19 + 5524) = *a4;
  if (v12)
  {
    v20 = *v11 + 1;
  }

  else
  {
    v20 = 1;
  }

  *v11 = v20;
  if (!*(a1 + 4720))
  {
    v21 = *(a2 + 60);
    if (v21 >= 1)
    {
      *(a1 + 4720) = v21;
    }
  }

  v22 = *(a2 + 59);
  if (v22 == 1)
  {
    if ((*(a1 + 48 * v8 + 4782) & 0x180) == 0)
    {
      goto LABEL_42;
    }

    *v9 = 1;
    v22 = *(a2 + 59);
  }

  if (v22 != 4)
  {
    goto LABEL_42;
  }

  v23 = *(a1 + 4 * v8 + 4727);
  if (*(a1 + 4 * v8 + 4727))
  {
    v24 = (*(a1 + 48 * v8 + 4824) >> 21) & 0x1F;
    if ((v24 - 25) <= 0xFFFFFFE7)
    {
      *v9 = 0;
      EvCrt_v("DD_Proc_Glon_Eph_String:  WARNING:  FrqId %d  Illegal SlotId %d !", *(a2 + 58), v24);
      if (*(a2 + 59) != 4)
      {
        goto LABEL_42;
      }

      v23 = v9[3];
    }

    v26 = (a3 + 64);
    v25 = *(a3 + 64);
    if (v23 > 1)
    {
      goto LABEL_28;
    }

    if (*(a3 + 64))
    {
      goto LABEL_42;
    }
  }

  else
  {
    v26 = (a3 + 64);
    if (*(a3 + 64))
    {
      goto LABEL_42;
    }
  }

  if (*(a2 + 15))
  {
    goto LABEL_42;
  }

  v25 = 0;
LABEL_28:
  v27 = *(a3 + 68);
  HIDWORD(v28) = *(a1 + 48 * v8 + 4820);
  LODWORD(v28) = *(a1 + 48 * v8 + 4824);
  v29 = (v28 >> 26) & 0x7FF;
  *(a3 + 68) = v29;
  if (v25)
  {
    if (v27 != v29)
    {
      *v26 = 0;
      EvCrt_nd("DD_Proc_Glon_Eph_String:  WARNING:  DayNo miss-match", 3, a3, v29, v27, *(a2 + 58));
    }
  }

  else if (*(a3 + 66) >= 1)
  {
    *v26 = 1;
    EvLog_nd("DD_Proc_Glon_Eph_String:  New DayNo ", 2, a3, v29, *(a2 + 58));
  }

  if (*v26 == 1 && (*(a3 + 5) != 1 || !*a3))
  {
    *v36 = 0;
    v37[0] = 0.0;
    v35 = 0.0;
    API_Get_UTC_Cor(1, v37);
    Glon_To_GPS_Time(*(a3 + 66), *(a3 + 68), *(a3 + 72), v37[0], &v36[1], v36, &v35);
    DD_Submit_WeekNum(*(a2 + 58), v36[1], SLOWORD(v36[0]), a3, v35);
    if (!*a4)
    {
      v30 = *(p_api + 48);
      if (*(v30 + 5) == 1 && *v30 >= 3)
      {
        v31 = *(v30 + 24) + 604800 * *(v30 + 16);
      }

      else
      {
        v31 = 0;
      }

      *a4 = v31;
    }
  }

LABEL_42:
  v32 = *v9;
  if (*v9 && v9[1] && v9[2] && v9[3])
  {
    v33 = 0;
    *(a1 + 5508 + v8) = v32;
    do
    {
      v34 = *(v19 + 4725 + v33);
      if (v34 < v32)
      {
        *(a1 + 5508 + v8) = v34;
        v32 = v34;
      }

      ++v33;
    }

    while (v33 != 3);
  }
}

void DD_Save_New_GLON_Alm(int a1, void *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v113 = *MEMORY[0x29EDCA608];
  v4 = a3 + 4096;
  if (a3[6397] <= 1u && !a3[6398])
  {
    return;
  }

  v5 = 0;
  memset(v108, 0, sizeof(v108));
  v109 = 0;
  v110[0] = 0;
  *(v110 + 6) = 0;
  v107[0] = 0;
  *&v6 = 0x7F7F7F7F7F7F7F7FLL;
  *(&v6 + 1) = 0x7F7F7F7F7F7F7F7FLL;
  *(v107 + 6) = 0;
  v103 = a3 + 6004;
  v111[0] = v6;
  v111[1] = v6;
  v7 = a3 + 6005;
  v112 = 0x7F7F7F7F7F7F7F7FLL;
  v8 = 2139062143;
  v111[2] = v6;
  do
  {
    v9 = *(v7 - 1);
    if ((v9 - 6) <= 8 && *v7 == v9 + 1 && a3[v5 + 5972] == 1)
    {
      if (v8 == 2139062143)
      {
        v8 = v5;
      }

      else
      {
        v8 = v8;
      }

      *(v110 + v5) = 1;
    }

    ++v5;
    v7 += 2;
  }

  while (v5 != 14);
  v10 = byte_2A1939000;
  if (v8 == 2139062143)
  {
    if (g_Enable_Event_Log >= 6u)
    {
      EvLog("DD_Check_GLON_Alm: No any valid Freq Id Channels for Cross-Checking Almanacs");
    }

    goto LABEL_95;
  }

  v11 = 0;
  v12 = 0;
  *(v108 + v8) = 1;
  v13 = a3 + 5986;
  v100 = a3 + 6032;
  v97 = a3 + 4096;
  v98 = a3 + 6368;
  v96 = a3 + 6068;
  v95 = a3 + 6056;
  v14 = &unk_2A1928000;
  v15 = 1;
  v16 = &MaskToAlmCheck;
  while (v8 >= 13)
  {
    v40 = v15 - 1;
    LOBYTE(v20) = 1;
    v22 = v8;
    v17 = v8;
LABEL_42:
    if (v13[v17] != 5 || v103[2 * v17] != 14)
    {
      v41 = &v98[2 * v17];
      if (!*v41 && !v41[1])
      {
        if (v4[2301] == v20)
        {
          goto LABEL_72;
        }

        v42 = (*&v100[24 * v17] >> 19) & 0x1F;
        if ((v42 - 1) <= 0x17 && (*(a2[2036] + v42 - 1) & 1) == 0)
        {
LABEL_40:
          *(v107 + v40) = 1;
        }
      }
    }

    if (*(v107 + v40) == 1)
    {
      *(v111 + v40) = v8;
      ++v11;
    }

    if (v22 != v8)
    {
      v12 += v20;
      *(v108 + v22) = ++v15;
      v8 = v22;
      if (v12 <= v4[2301])
      {
        continue;
      }
    }

    v3 = a2;
    v10 = byte_2A1939000;
    if (v11 >= 1)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = a3;
      v48 = a3 + 5580;
      v49 = a1;
      do
      {
        if (*(v107 + v43) == 1)
        {
          v50 = *(v111 + v43);
          v51 = *&v48[28 * v50 + 8];
          if (v45)
          {
            v52 = v51 - v46 + 1461;
            if (v51 - v46 >= -730)
            {
              v52 = v51 - v46;
            }

            if (v51 - v46 <= 730)
            {
              v53 = v52;
            }

            else
            {
              v53 = v51 - v46 - 1461;
            }

            if (v53 <= 0)
            {
              v50 = v44;
            }

            else
            {
              v50 = v50;
            }

            if (v53 > 0)
            {
              v46 = v51;
            }
          }

          else
          {
            v45 = v43 + 1;
            v46 = *&v48[28 * v50 + 8];
          }
        }

        else
        {
          v50 = v44;
        }

        ++v43;
        v44 = v50;
      }

      while ((v15 + 1) - 1 != v43);
      goto LABEL_73;
    }

    goto LABEL_95;
  }

  v101 = v12;
  v102 = v11;
  v17 = v8;
  v18 = &v103[2 * v8];
  v99 = &v100[24 * v8];
  v104 = v8;
  v105 = v8 + 65;
  v19 = &v96[24 * v8];
  v20 = 1;
  v21 = v8;
  v22 = v8;
  v23 = &v95[24 * v8];
  do
  {
    v24 = v21++;
    if (*(v110 + v21) == 1 && *(v108 + v21) <= 0)
    {
      if (v13[v17] == 5 && *v18 == 14 && v13[v21] == 5 && v103[2 * v21] == 14)
      {
        if (((*&v100[24 * v21] ^ *v99) & 0x78000030) == 0)
        {
LABEL_36:
          *(v108 + v21) = v15;
          v20 = (v20 + 1);
          goto LABEL_20;
        }
      }

      else
      {
        v31 = v23;
        v32 = v16;
        v33 = v19;
        v34 = 3;
        v35 = v16;
        v36 = v23;
        while (1)
        {
          v38 = *v35++;
          v37 = v38;
          v39 = *v36;
          v36 += 4;
          if (((v39 ^ *(v33 - 9)) & v37) != 0 || ((*(v31 + 3) ^ *(v33 - 6)) & v32[3]) != 0)
          {
            break;
          }

          v33 += 4;
          v31 = v36;
          v32 = v35;
          if (!--v34)
          {
            goto LABEL_36;
          }
        }
      }

      if (v22 == v8)
      {
        v22 = v21;
      }

      else
      {
        v22 = v22;
      }

      if (v14[547] >= 6u)
      {
        v91 = v13[v17];
        v25 = v14;
        v26 = v16;
        v106 = v22;
        v8 = v17;
        v27 = v20;
        v28 = v19;
        v29 = v15;
        v30 = v18;
        EvLog_v("DD_Check_GLON_Alm:  Different Almanacs, FrqId_1 %d  FrqId_2 %d  FramId %d  StrId %d ", v105, v24 + 66, v91, *v18);
        v18 = v30;
        v15 = v29;
        v19 = v28;
        v20 = v27;
        v17 = v8;
        LODWORD(v8) = v104;
        v22 = v106;
        v16 = v26;
        v14 = v25;
      }
    }

LABEL_20:
    v23 += 24;
  }

  while (v21 != 13);
  v40 = v15 - 1;
  if (v20 < 2u)
  {
    v4 = v97;
    v12 = v101;
    v11 = v102;
    goto LABEL_42;
  }

  v4 = v97;
  v12 = v101;
  v11 = v102;
  if (v97[2301] != v20)
  {
    goto LABEL_40;
  }

LABEL_72:
  LODWORD(v50) = v8;
  v3 = a2;
  v10 = byte_2A1939000;
  v49 = a1;
  v47 = a3;
LABEL_73:
  v54 = v50;
  v55 = v13[v50];
  if (v55 == 5 && v103[2 * v50] == 14)
  {
    goto LABEL_77;
  }

  v56 = &v100[24 * v50];
  v57 = (*v56 >> 19) & 0x1F;
  if ((v57 - 25) <= 0xFFFFFFE7)
  {
    EvCrt_v("DD_Validate_GLON_Alm:  Rejected:  FrqCh %d   Slot Number %d - Out of range", v50 - 7, v57);
    goto LABEL_77;
  }

  v58 = (v57 - 1);
  v59 = v3[2036];
  if (*(v59 + v58) == 1)
  {
    v60 = *&v47[28 * v50 + 5588] - *(v3 + 18 * v58 + 7680);
    v61 = v60 - 1461;
    if (v60 <= 730)
    {
      v61 = *&v47[28 * v50 + 5588] - *(v3 + 18 * v58 + 7680);
    }

    v62 = v60 >= -730 ? v61 : v60 + 1461;
    if (v62 <= 0)
    {
      if (v49 >= 1 && !v62 && (v55 != 5 || v103[2 * v50] != 14 && v58 <= 0x17))
      {
        v81 = v3 + 36 * v58 + 15352;
        LODWORD(v82) = *v81;
        if (!*v81)
        {
          v83 = 0;
          *v81 = v49;
          *(v81 + 4) = 4;
          v84 = *(v10 + 183) + 48 * v57;
          v85 = (v84 + 19192);
          v86 = *(v81 + 32);
          v87 = *v81;
          *(v84 + 19216) = *(v81 + 16);
          *(v84 + 19200) = v87;
          *(v84 + 19232) = v86;
          v88 = v84 + 19200;
          v89 = 55665;
          do
          {
            v90 = *(v88 + v83) ^ BYTE1(v89);
            v89 = 52845 * (v89 + v90) + 22719;
            v82 = (v82 + v90);
            ++v83;
          }

          while (v83 != 40);
          *v85 = v82;
        }
      }

LABEL_77:
      if (v4[2301] == v4[2300])
      {
        goto LABEL_94;
      }

      goto LABEL_95;
    }
  }

  if (v55 != 5 || v103[2 * v50] != 14)
  {
    v63 = v3 + 36 * v58 + 15352;
    v64 = *v56;
    *(v63 + 28) = *(v56 + 2);
    *(v63 + 12) = v64;
    if (v14[547] >= 6u)
    {
      EvLog_v("DD_Save_New_GLON_Alm:  New Alm  Slot %d  FrqId %d  FramId %d  StrId %d  Suspect_Bits %d %d  Word[0] 0x%x  NA_Clk1 %d  NA_DBnmAlm  %d ", v57, v50 + 65, v13[v50], v103[2 * v50], v98[2 * v50], v98[2 * v50 + 1], *v56, *&v47[28 * v50 + 5588], *(v3 + 18 * v58 + 7680));
      v59 = v3[2036];
    }

    *(v3 + 18 * v58 + 7680) = *&v47[28 * v54 + 5588];
    *v63 = v49;
    *(v3 + 9 * v58 + 3839) = 4;
    *(v3[2032] + v58) = 1;
    *(v59 + v58) = 1;
    DD_GLON_Alm_Set_Health_Frq(v3 + 36 * v58 + 15352, v3);
    if (v49 >= 1)
    {
      v65 = 0;
      LODWORD(v66) = 0;
      v67 = *(v10 + 183) + 48 * v57;
      v68 = (v67 + 19192);
      v69 = *(v3 + 9 * v58 + 3846);
      v70 = *v63;
      *(v67 + 19216) = *(v3 + 36 * v58 + 15368);
      *(v67 + 19200) = v70;
      *(v67 + 19232) = v69;
      v71 = v67 + 19200;
      v72 = 55665;
      do
      {
        v73 = *(v71 + v65) ^ BYTE1(v72);
        v72 = 52845 * (v72 + v73) + 22719;
        v66 = (v66 + v73);
        ++v65;
      }

      while (v65 != 40);
      *v68 = v66;
    }
  }

LABEL_94:
  *v103 = 0;
  *(v103 + 1) = 0;
  *(v103 + 6) = 0;
  *(v103 + 2) = 0;
  v4[2302] = 0;
  *(v4 + 1150) = 0;
LABEL_95:
  v74 = 0;
  LODWORD(v75) = 0;
  v76 = v3[1401];
  v77 = *(v10 + 183);
  v78 = *(v76 + 16);
  *(v77 + 19172) = *v76;
  *(v77 + 19188) = v78;
  v79 = 55665;
  do
  {
    v80 = *(v77 + 19168 + v74) ^ BYTE1(v79);
    v79 = 52845 * (v79 + v80) + 22719;
    v75 = (v75 + v80);
    ++v74;
  }

  while (v74 != 32);
  *(v77 + 19160) = v75;
}

void DD_Save_New_GLON_Eph(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v114 = *MEMORY[0x29EDCA608];
  if (a1 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = (a1 + 10800) / 0x15180u;
    v11 = ((22967 * (v10 - 5839)) >> 25) + ((22967 * (v10 - 5839)) >> 31);
    v12 = v10 - 1461 * v11 - 5838;
    v13 = v11 + 1;
    v14 = 20400;
    do
    {
      if (*(*(a4 + 16272) + v8) == 1)
      {
        v15 = *(a4 + 16304);
        if ((*(v15 + v8) & 1) == 0)
        {
          v16 = 0;
          LODWORD(v17) = 0;
          v18 = a4 + 11224 + (v8 << 6);
          HIDWORD(v20) = *(v18 + 52);
          LODWORD(v20) = *(v18 + 56);
          v19 = v20 >> 26;
          if (!v7)
          {
            v6 = v12;
            v9 = (a1 + 10800) % 0x15180u;
          }

          v21 = v19 & 0x7FF;
          *(v15 + v8) = 1;
          if (v21 - v6 > 730)
          {
            v6 += 1461;
          }

          v22 = v9 - 900 * (*(v18 + 26) & 0x7F) + 86400 * (v6 - v21);
          *v18 = a1 - (v22 & ~(v22 >> 31));
          *(v18 + 4) = 4;
          v23 = p_NV;
          v24 = *v18;
          v25 = *(v18 + 16);
          v26 = *(v18 + 32);
          v27 = p_NV + 72 * v8;
          *(v27 + 20448) = *(v18 + 48);
          *(v27 + 20432) = v26;
          *(v27 + 20416) = v25;
          *(v27 + 20400) = v24;
          v28 = v23 + v14;
          v29 = 55665;
          do
          {
            v30 = *(v28 + v16) ^ BYTE1(v29);
            v29 = 52845 * (v29 + v30) + 22719;
            v17 = (v17 + v30);
            ++v16;
          }

          while (v16 != 64);
          if (!v7)
          {
            v7 = v13;
          }

          *(v27 + 20392) = v17;
        }
      }

      ++v8;
      v14 += 72;
    }

    while (v8 != 24);
  }

  v31 = 0;
  v32 = a5 + 5508;
  v102 = a5 + 4780;
  v101 = a5 + 5452;
  v103 = a4 + 16432;
  v100 = a4 + 16336;
  v99 = a4 + 16488;
  v94 = ((2 * (a3 / 1800)) | 1);
  v93 = a4 + 11224;
  v33 = a5 + 5453;
  v96 = vdupq_n_s64(0x3FDF400000000000uLL);
  v95 = vdupq_n_s64(0x3F4F400000000000uLL);
  do
  {
    if (!*(v32 + v31))
    {
      goto LABEL_60;
    }

    memset(&v108[1], 0, 46);
    v108[0] = 0u;
    v34 = (v102 + 48 * v31);
    v35 = v34[1];
    *(v108 + 12) = *v34;
    v105 = 0u;
    memset(v106, 0, 30);
    v104 = 0u;
    *(&v108[1] + 12) = v35;
    *(&v108[2] + 12) = v34[2];
    v36 = GLON_EphBin2Int(v108, &v104, *(&v108[2] + 12));
    v37 = 0;
    v38 = SBYTE12(v104);
    v39 = (v101 + 4 * v31);
    LOBYTE(v40) = *v39;
    do
    {
      if (*(v33 + v37) <= v40)
      {
        v40 = v40;
      }

      else
      {
        v40 = *(v33 + v37);
      }

      ++v37;
    }

    while (v37 != 3);
    v41 = (v38 - 1);
    if (*(v32 + v31) >= 2u)
    {
      goto LABEL_23;
    }

    if ((*(*(a4 + 16280) + v41) & 1) != 0 || (*(*(a4 + 16272) + v41) & 1) != 0 || v40)
    {
      if ((*(v103 + 4 * v31) == 2139062143 || *(v100 + 4 * v41) == 2139062143) && !v39[3])
      {
        *(v100 + 4 * v41) = v31 - 7;
        *(v103 + 4 * v31) = v38;
        *(v99 + 4 * v31) = 2;
      }

      goto LABEL_59;
    }

    if (*(v103 + 4 * v31) == 2139062143 || *(v100 + 4 * v41) == 2139062143)
    {
LABEL_23:
      *(v100 + 4 * v41) = v31 - 7;
      *(v103 + 4 * v31) = v38;
    }

    *(v99 + 4 * v31) = 2;
    if ((v38 - 25) <= 0xE7u)
    {
      if (g_Enable_Event_Log >= 2u)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  Invalid Out-of-range GLON Slot Num %d", v36);
      }

      goto LABEL_59;
    }

    if (a2 >= 4 && (*(a4 + 8444) - 1) <= 5 && v94 != BYTE13(v104))
    {
      if (g_Enable_Event_Log >= 2u)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  FAIL:  Tb check, R %d  est %d  dec %d", v36);
      }

      goto LABEL_59;
    }

    v42.i64[0] = SHIDWORD(v105);
    v42.i64[1] = v106[0];
    v112 = vmulq_f64(vcvtq_f64_s64(v42), v96);
    v113 = v106[1] * 0.48828125;
    v43 = 0.0;
    v44 = 2;
    do
    {
      v43 = v43 + v112.f64[v44] * v112.f64[v44];
      v45 = v44-- + 1;
    }

    while (v45 > 1);
    v46 = sqrt(v43);
    if (v46 < 25200000.0 || v46 > 25800000.0)
    {
      if (g_Enable_Event_Log >= 2u)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Pos check, R %d  Mag_Pos %g");
      }
    }

    else
    {
      v47.i64[0] = v106[2];
      v47.i64[1] = v106[3];
      v110 = vmulq_f64(vcvtq_f64_s64(v47), v95);
      v111 = v106[4] * 0.000953674316;
      v48 = 0.0;
      v49 = 2;
      do
      {
        v48 = v48 + v110.f64[v49] * v110.f64[v49];
        v50 = v49-- + 1;
      }

      while (v50 > 1);
      v51 = sqrt(v48);
      if (v51 >= 2720.0 && v51 <= 4000.0)
      {
        v109[0] = SLOBYTE(v106[5]) * 0.000000931322575;
        v109[1] = SBYTE1(v106[5]) * 0.000000931322575;
        v109[2] = SBYTE2(v106[5]) * 0.000000931322575;
        v52 = 0.0;
        v53 = 2;
        do
        {
          v52 = v52 + v109[v53] * v109[v53];
          v54 = v53-- + 1;
        }

        while (v54 > 1);
        v55 = sqrt(v52);
        if (v55 > 0.000009)
        {
          if (g_Enable_Event_Log >= 2u)
          {
            EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Acc check, R %d  Mag_Acc %g", v38, v55);
          }

          v56 = 0;
          *(*(a4 + 16328) + (v38 - 1)) = 1;
          goto LABEL_68;
        }

        if (v105 - 1462 <= 0xFFFFFA4A)
        {
          if (g_Enable_Event_Log >= 2u)
          {
            EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  Eph Nt check, R %d  Nt %d", v38, v105);
          }

          v56 = 0;
          goto LABEL_68;
        }

        if (*(*(a4 + 16272) + (v38 - 1)) != 1)
        {
          goto LABEL_81;
        }

        memset(v107, 0, 62);
        v91 = v93 + ((v38 - 1) << 6);
        GLON_EphBin2Int(v91, v107, 0);
        if (BYTE13(v104) != BYTE13(v107[0]) && g_Enable_Event_Log >= 6u)
        {
          EvLog_v("DD_Validate_GLON_Eph:  New Eph SV %d %d %d", SBYTE12(v104), BYTE13(v104), BYTE13(v107[0]));
          v56 = 0;
          goto LABEL_82;
        }

        if (BYTE13(v104) == BYTE13(v107[0]))
        {
          v66 = *(v91 + 60);
          if (v66 == 4095)
          {
            v56 = 1;
            goto LABEL_68;
          }

          if (g_Enable_Event_Log >= 2u)
          {
            EvLog_v("DD_Validate_GLON_Eph:  (Adopted) Eph Binary difference with same tb SV %d tb %d checked 0x%x", SBYTE12(v104), BYTE13(v104), v66);
          }

          v56 = 1;
        }

        else
        {
LABEL_81:
          v56 = 0;
        }

LABEL_82:
        v67 = (v93 + (v41 << 6));
        v68 = *v34;
        v69 = v34[1];
        *(v67 + 44) = v34[2];
        *(v67 + 28) = v69;
        *(v67 + 12) = v68;
        *v67 = a1;
        *(v67 + 1) = 4;
        if (*(v32 + v31) <= 1u)
        {
          v70 = 0;
        }

        else
        {
          v70 = 4095;
        }

        *(v67 + 30) = v70;
        *(*(a4 + 16272) + v41) = 1;
        *(*(a4 + 16320) + v41) = 0;
        *(v67 + 2) = v31 - 7;
        v71 = *(a4 + 11208);
        v72 = BYTE5(v105);
        if (*(v71 + v41) == 1)
        {
          v73 = "DD_GLON_Alm_Set_Health_Frq:  Health H->U Eph:  Slot %d  FrqId %d ";
          if ((BYTE5(v105) & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (BYTE5(v105))
          {
            v72 = 1;
LABEL_92:
            *(v71 + v41) = v72 ^ 1;
            if (v72)
            {
              v74 = 2;
            }

            else
            {
              v74 = 1;
            }

            *(*(a4 + 11216) + 20 * v41) = v74;
            if (a1 < 1)
            {
              goto LABEL_59;
            }

            v75 = 0;
            LODWORD(v76) = 0;
            *(*(a4 + 16304) + v41) = 1;
            v77 = p_NV + 72 * v38;
            v78 = *v67;
            v79 = v67[1];
            v80 = v67[2];
            *(v77 + 20376) = v67[3];
            *(v77 + 20360) = v80;
            *(v77 + 20344) = v79;
            *(v77 + 20328) = v78;
            v81 = 55665;
            do
            {
              v82 = *(v77 + 20328 + v75) ^ BYTE1(v81);
              v81 = 52845 * (v81 + v82) + 22719;
              v76 = (v76 + v82);
              ++v75;
            }

            while (v75 != 64);
            *(v77 + 20320) = v76;
LABEL_68:
            if (a1 >= 1)
            {
              if (v56)
              {
                v57 = (v93 + (v41 << 6));
                LODWORD(v58) = *v57;
                if (!*v57)
                {
                  v59 = 0;
                  *(*(a4 + 16304) + v41) = 1;
                  *v57 = a1;
                  *(v57 + 1) = 4;
                  v60 = p_NV + 72 * v38;
                  v61 = *v57;
                  v62 = v57[1];
                  v63 = v57[2];
                  *(v60 + 20376) = v57[3];
                  *(v60 + 20360) = v63;
                  *(v60 + 20344) = v62;
                  *(v60 + 20328) = v61;
                  v64 = 55665;
                  do
                  {
                    v65 = *(v60 + 20328 + v59) ^ BYTE1(v64);
                    v64 = 52845 * (v64 + v65) + 22719;
                    v58 = (v58 + v65);
                    ++v59;
                  }

                  while (v59 != 64);
                  *(v60 + 20320) = v58;
                }
              }
            }

            goto LABEL_59;
          }

          v73 = "DD_GLON_Alm_Set_Health_Frq:  Health U->H Eph:  Slot %d  FrqId %d ";
        }

        v92 = v56;
        EvLog_v(v73, v38);
        v67 = (v93 + (v41 << 6));
        v56 = v92;
        v72 = BYTE5(v105);
        v71 = *(a4 + 11208);
        goto LABEL_92;
      }

      if (g_Enable_Event_Log >= 2u)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Vel check, R %d  Vel_Mag %g");
      }
    }

    *(*(a4 + 16328) + (v38 - 1)) = 1;
LABEL_59:
    *(v32 + v31) = 0;
LABEL_60:
    ++v31;
    v33 += 4;
  }

  while (v31 != 14);
  v83 = 0;
  LODWORD(v84) = 0;
  v85 = *(a4 + 11208);
  v86 = p_NV;
  v87 = p_NV + 19172;
  v88 = *(v85 + 16);
  *(p_NV + 19172) = *v85;
  *(v87 + 16) = v88;
  v89 = 55665;
  do
  {
    v90 = *(v86 + 19168 + v83) ^ BYTE1(v89);
    v89 = 52845 * (v89 + v90) + 22719;
    v84 = (v84 + v90);
    ++v83;
  }

  while (v83 != 32);
  *(v86 + 19160) = v84;
}

void DD_Check_Age_GLON_Data(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 64) == 1 && *(a1 + 60) >= 2)
  {
    v5 = 0;
    v6 = (a2 + 1920);
    v7 = a2 + 1410;
    v8 = 19248;
    do
    {
      v9 = a2[2034];
      if (*(v9 + v5) == 1)
      {
        HIDWORD(v10) = *(v7 - 1);
        LODWORD(v10) = *v7;
        LODWORD(v11) = *(a1 + 72) - 900 * (*(v7 - 15) & 0x7F);
        v12 = (v10 >> 26) & 0x7FF;
        if (((v10 >> 26) & 0x7FF) != 0)
        {
          LODWORD(v11) = v11 + 86400 * (*(a1 + 68) - v12);
          if (v11 > 63115200)
          {
            LODWORD(v11) = v11 - 126230400;
          }

          if (v11 >= -63115200)
          {
            v11 = v11;
          }

          else
          {
            v11 = (v11 + 126230400);
          }
        }

        else
        {
          if (v11 < -43200)
          {
            LODWORD(v11) = v11 + 86400;
          }

          if (v11 <= 43199)
          {
            v11 = v11;
          }

          else
          {
            v11 = (v11 - 86400);
          }
        }

        if (v11 >= 0)
        {
          v13 = v11;
        }

        else
        {
          v13 = -v11;
        }

        if (v13 >= 0x26AD)
        {
          v14 = v7 - 14;
          *(v9 + v5) = 0;
          *(a2[2040] + v5) = 0;
          *(v14 + 46) = 0u;
          v14[1] = 0u;
          v14[2] = 0u;
          *v14 = 0u;
          *(a2[2033] + v5) = 1;
          *(a2[2041] + v5) = 0;
          if (g_Enable_Event_Log >= 2u)
          {
            EvLog_nd("DD_Check_Age_GLON_Data:  Delete ", 2, a3, v5 + 1, v11);
          }
        }
      }

      v15 = a2[2036];
      if (*(v15 + v5) == 1)
      {
        v16 = *(a1 + 68) - *v6;
        v17 = v16 + 1461;
        if (v16 >= -730)
        {
          v17 = *(a1 + 68) - *v6;
        }

        if (v16 <= 729)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16 - 1461;
        }

        if ((v18 - 183) <= 0xFFFFFF3A)
        {
          *(a2[2032] + v5) = 0;
          *(v15 + v5) = 0;
          *(v6 + 6) = 0;
          *(v6 - 4) = 0u;
          *(v6 + 4) = 0u;
          *(a2[2040] + v5) = 0;
          *(a2[2041] + v5) = 0;
          v19 = p_NV + v8;
          *(v19 - 8) = 0xFFFFFFFFLL;
          *v19 = 0u;
          *(v19 + 16) = 0u;
          *(v19 + 32) = 0;
          if (v18 <= 182)
          {
            EvLog_v("DD_Check_Age_GLON_Data:  Future Almanac deleted,  SV %d age %d");
          }

          else
          {
            EvLog_v("DD_Check_Age_GLON_Data:  Old Almanac deleted,  SV %d age %d");
          }
        }
      }

      ++v5;
      v8 += 48;
      v6 += 18;
      v7 += 16;
    }

    while (v5 != 24);
  }
}

uint64_t DD_Check_GLON_Strings(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result >= 3 && (*(a4 + 8444) - 1) <= 5)
  {
    if ((a2 % 30 + 1) >= 3)
    {
      v4 = ((a2 % 30 + (((a2 % 30) & 0x80u) >> 7)) << 24) >> 25;
    }

    else
    {
      v4 = 15;
    }

    v5 = *(a3 + 6000);
    v6 = a2 - v5;
    if (a2 < v5)
    {
      v6 = a2 - v5 + 86400;
    }

    v7 = v6 > 24;
    v8 = v5 >= 1 && v7;
    if (a2 < 1)
    {
      v8 = 0;
    }

    if (v4 == 2 && result != 3 || v8)
    {
      *(a3 + 6000) = 0u;
      *(a3 + 6016) = 0u;
    }

    if (a2 >= 1 && (v11 = *(a3 + 4720), v11 >= 1) && (v11 + 10) / 0x708u != (a2 + 10) / 0x708u || (a2 % 1800 >= 1771 ? (v12 = v4 == 10) : (v12 = 0), v12))
    {
      *(a3 + 5514) = 0;
      *(a3 + 5508) = 0;
      *(a3 + 4720) = 0u;
      *(a3 + 4736) = 0u;
      *(a3 + 4752) = 0u;
      *(a3 + 4764) = 0u;
    }
  }

  return result;
}

void DD_LS_Delete_EphAlm_Str(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 1 && *(a2 + 5) == 1 && *a2 >= 1)
  {
    v4 = *(a2 + 24);
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFF;
    }

    if ((a1 - 604800 * *(a2 + 16) - v7) >= 0xFFFFF1F1)
    {
      v8 = 0;
      v9 = a3 + 5524;
      v10 = a3 + 4724;
      v11 = a3 + 5508;
      v12 = a3 + 6400;
      v13 = a3 + 6032;
      v14 = a3 + 6004;
      v15 = (a3 + 6397);
      do
      {
        v16 = *(v9 + 4 * v8);
        if (v16 >= 1 && v16 <= a1)
        {
          *(v10 + 4 * v8) = 0;
          *(v11 + v8) = 0;
          *(v9 + 4 * v8) = 0;
          EvLog_v("DD_LS_Delete_EphAlm_Str:  Del Eph , Frq %2d ", v8 + 1);
        }

        v18 = *(v12 + 4 * v8);
        if (v18 >= 1 && v18 <= a1)
        {
          v20 = (v13 + 24 * v8);
          *v20 = 0;
          v20[1] = 0;
          v20[2] = 0;
          *(v14 + 2 * v8) = 0;
          *v15 = 0;
          *(v12 + 4 * v8++) = 0;
          EvLog_v("DD_LS_Delete_EphAlm_Str:  Del Alm , Frq %2d ", v8);
        }

        else
        {
          ++v8;
        }
      }

      while (v8 != 14);
    }
  }
}

void *DD_Delete_Bad_GLON_Data(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = a1 + 4724;
  v4 = a1 + 4780;
  v5 = a1 + 5452;
  v6 = a1 + 5508;
  v7 = a2 + 1403;
  v8 = 20400;
  result = &unk_2A1939000;
  do
  {
    v10 = a2[2033];
    if (*(v10 + v2) == 1)
    {
      v11 = *(a2 + v2 + 4084) + 7;
      if (v11 <= 0xD)
      {
        *(v3 + 4 * v11) = 0;
        v12 = (v4 + 48 * v11);
        *v12 = 0uLL;
        v12[1] = 0uLL;
        v12[2] = 0uLL;
        *(v5 + 4 * v11) = 0;
        *(v6 + v11) = 0;
        v10 = a2[2033];
      }

      *(v10 + v2) = 0;
      *(a2[2031] + v2) = 0;
      *(a2[2034] + v2) = 0;
      *(v7 + 46) = 0uLL;
      v7[1] = 0uLL;
      v7[2] = 0uLL;
      *v7 = 0uLL;
      *(a2[2041] + v2) = 0;
      *(a2[2038] + v2) = 1;
      v13 = (p_NV + v8);
      *(v13 - 1) = 0xFFFFFFFFLL;
      *v13 = 0uLL;
      v13[1] = 0uLL;
      v13[2] = 0uLL;
      *(v13 + 46) = 0uLL;
    }

    ++v2;
    v8 += 72;
    v7 += 4;
  }

  while (v2 != 24);
  return result;
}

uint64_t DD_Delete_Inhib_GLON_Data(uint64_t result, uint64_t a2, void *a3)
{
  v3 = 0;
  v4 = a2 + 4724;
  v5 = a2 + 4780;
  v6 = a2 + 5452;
  v7 = a2 + 5508;
  v8 = a3 + 1403;
  v9 = a3 + 1595;
  v10 = a3 + 1919;
  v11 = 20400;
  v12 = 19248;
  do
  {
    if (*(result + v3) == 1)
    {
      v13 = *(a3 + v3 + 4084) + 7;
      if (v13 <= 0xD)
      {
        *(v4 + 4 * v13) = 0;
        v14 = (v5 + 48 * v13);
        *v14 = 0uLL;
        v14[1] = 0uLL;
        v14[2] = 0uLL;
        *(v6 + 4 * v13) = 0;
        *(v7 + v13) = 0;
      }

      *(a3[2033] + v3) = 0;
      *(a3[2031] + v3) = 0;
      *(a3[2034] + v3) = 0;
      *(v8 + 46) = 0uLL;
      v8[1] = 0uLL;
      v8[2] = 0uLL;
      *v8 = 0uLL;
      *(a3[2035] + v3) = 0;
      *(v9 + 92) = 0uLL;
      v9[4] = 0uLL;
      v9[5] = 0uLL;
      v9[2] = 0uLL;
      v9[3] = 0uLL;
      *v9 = 0uLL;
      v9[1] = 0uLL;
      *(a3[2041] + v3) = 0;
      *(a3[2038] + v3) = 1;
      v15 = p_NV;
      v16 = (p_NV + v11);
      *v16 = 0uLL;
      v16[1] = 0uLL;
      v16[2] = 0uLL;
      *(v16 + 46) = 0uLL;
      *(a3[2032] + v3) = 0;
      *(v16 - 1) = 0xFFFFFFFFLL;
      *(a3[2036] + v3) = 0;
      *(v10 + 8) = 0;
      *v10 = 0uLL;
      *(v10 + 1) = 0uLL;
      v17 = v15 + v12;
      *(v17 - 8) = 0xFFFFFFFFLL;
      *v17 = 0uLL;
      *(v17 + 16) = 0uLL;
      *(v17 + 32) = 0;
    }

    ++v3;
    v11 += 72;
    v12 += 48;
    v10 = (v10 + 36);
    v9 = (v9 + 108);
    v8 += 4;
  }

  while (v3 != 24);
  return result;
}

char **DD_Submit_WeekNum(char **result, __int16 a2, uint64_t a3, int *a4, double a5)
{
  if (*(a4 + 5))
  {
    return result;
  }

  v7 = result;
  if (*a4)
  {
    v8 = a5;
    v9 = *(a4 + 3);
    v10 = v8 - v9;
    v11 = v10 + 604800;
    if (v10 <= -302401)
    {
      v12 = a3 - 1;
    }

    else
    {
      v12 = a3;
    }

    if (v10 > -302401)
    {
      v11 = v8 - v9;
    }

    if (v10 >= 302400)
    {
      v13 = a3 + 1;
    }

    else
    {
      v13 = v12;
    }

    if (v10 >= 302400)
    {
      v14 = v10 - 604800;
    }

    else
    {
      v14 = v11;
    }

    if ((v14 + 129599) >= 0x2A2FF)
    {
      v15 = ((v14 + 43200) / 86400);
      v16 = v9 + (86400 * v15);
      *(a4 + 3) = v16;
      if (g_Enable_Event_Log >= 2u)
      {
        result = EvLog_nd("DD_Submit_WeekNum(R): Day number set ", 3, a3, v15, v16, v8);
      }
    }

    v17 = v13 + (a2 << 10);
  }

  else
  {
    *(a4 + 3) = a5;
    v18 = a4[15];
    if (!v18 || (v18 >= 3 ? (v19 = 3) : (v19 = a4[15]), *a4 = v19, v18 <= 2))
    {
      if (a5 < 86370.0 || a5 >= 518370.0)
      {
        goto LABEL_27;
      }
    }

    v17 = a3 + (a2 << 10);
  }

  *(a4 + 8) = v17;
  *(a4 + 5) = 1;
LABEL_27:
  if (g_Enable_Event_Log >= 2u)
  {
    if (*(a4 + 8))
    {
      return EvLog_nd("DD_Submit_WeekNum(R): GPS Week No set from Glon SV", 4, a3, v7, *(a4 + 8), *(a4 + 3), *a4);
    }
  }

  return result;
}

uint64_t Inc_CA_Chips(uint64_t result, int *a2, int *a3)
{
  v3 = *a2 + result;
  for (*a2 = v3; *a2 > 1534499; v3 = *a2)
  {
    *a2 = v3 - 1534500;
    if (*a3 <= 403198)
    {
      v4 = 1;
    }

    else
    {
      v4 = -403199;
    }

    *a3 += v4;
  }

  if (v3 < 0)
  {
    do
    {
      *a2 = v3 + 1534500;
      if (*a3 < 1)
      {
        v5 = 403199;
      }

      else
      {
        v5 = -1;
      }

      *a3 += v5;
      v3 = *a2;
    }

    while (*a2 < 0);
  }

  return result;
}

void Nav_Kalman_Update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = MEMORY[0x2A1C7C4A8](a1);
  v354 = v15;
  v356 = v14;
  v357 = v16;
  v347 = v17;
  v348 = v18;
  v20 = v19;
  v21 = v13;
  v392 = *MEMORY[0x29EDCA608];
  v22 = *(v13 + 128);
  v353 = (v13 + 128);
  v23 = v19 + 5689;
  *(v13 + 169) = 0;
  v338 = v13 + 169;
  *(v13 + 173) = 0;
  v340 = v24;
  if (v22 == 1)
  {
    *a11 = 0;
  }

  else if (*a11 == 1)
  {
    *a11 = 0;
    *(v13 + 128) = 1;
    *(v13 + 132) = 77;
  }

  if (*(a10 + 65) >= 5u)
  {
    *(a10 + 65) = 0;
  }

  v390 = 0u;
  memset(v391, 0, sizeof(v391));
  memset(v389, 0, 491);
  memset(&v388[2188], 0, 25);
  memset(&v388[2060], 0, 119);
  memset(&v388[1868], 0, 179);
  memset(&v388[1740], 0, 113);
  bzero(v388, 0x6CBuLL);
  bzero(v387, 0x15C8uLL);
  bzero(v386, 0x15C8uLL);
  bzero(v385, 0x2258uLL);
  v384[0] = 0;
  LOWORD(v383) = 0;
  BYTE2(v383) = 0;
  memset(v382, 0, sizeof(v382));
  LOWORD(v381) = 0;
  BYTE2(v381) = 0;
  memset(v380, 0, 56);
  BYTE2(v379) = 0;
  LOWORD(v379) = 0;
  memset(v378, 0, 56);
  BYTE2(v377) = 0;
  LOWORD(v377) = 0;
  memset(v376, 0, sizeof(v376));
  BYTE2(v375) = 0;
  LOWORD(v375) = 0;
  memset(v374, 0, 56);
  BYTE2(v373) = 0;
  LOWORD(v373) = 0;
  memset(&v372[15], 0, 104);
  memset(&v372[14] + 4, 0, 12);
  memset(&v372[10], 0, 53);
  memset(&v372[9] + 4, 0, 12);
  memset(&v372[5], 0, 53);
  memset(&v372[4] + 4, 0, 12);
  memset(v372, 0, 61);
  BYTE2(v371) = 0;
  LOWORD(v371) = 0;
  memset(v370, 0, 56);
  BYTE2(v369) = 0;
  LOWORD(v369) = 0;
  memset(&v368[7], 0, 56);
  memset(&v368[6] + 4, 0, 12);
  memset(&v368[2], 0, 61);
  memset(v368, 0, 31);
  v367 = 0u;
  v366 = 0u;
  v365 = 0u;
  BYTE2(v364) = 0;
  LOWORD(v364) = 0;
  memset(&v363[37], 0, 112);
  memset(&v363[36] + 4, 0, 12);
  memset(&v363[29], 0, 102);
  memset(v363, 0, 455);
  memset(&v362[183], 0, 12);
  memset(&v362[103], 0, 311);
  memset(v362, 0, 409);
  memset(v359, 0, 294);
  *(__src + 3) = 0;
  LODWORD(__src[0]) = 0;
  v390 = 0uLL;
  *v391 = 0;
  memset(&v391[8], 0, 73);
  *(&v389[29] + 11) = 0u;
  *(&v389[29] + 2) = 0u;
  *(&v389[28] + 2) = 0u;
  *(&v389[27] + 2) = 0u;
  *(&v389[26] + 2) = 0u;
  *(&v389[25] + 2) = 0u;
  *(&v389[24] + 2) = 0u;
  *(&v389[23] + 2) = 0u;
  *(&v389[22] + 2) = 0u;
  *(&v389[21] + 2) = 0u;
  *(&v389[20] + 2) = 0u;
  *(&v389[19] + 2) = 0u;
  *(&v389[18] + 2) = 0u;
  *(&v389[17] + 2) = 0u;
  *(&v389[16] + 2) = 0u;
  *(&v389[15] + 2) = 0u;
  *(&v389[14] + 2) = 0u;
  *(&v389[13] + 2) = 0u;
  *(&v389[12] + 2) = 0u;
  *(&v389[11] + 2) = 0u;
  *(&v389[10] + 2) = 0u;
  *(&v389[9] + 2) = 0u;
  *(&v389[8] + 2) = 0u;
  *(&v389[7] + 2) = 0u;
  *(&v389[6] + 2) = 0u;
  *(&v389[5] + 2) = 0u;
  *(&v389[4] + 2) = 0u;
  *(&v389[3] + 2) = 0u;
  *(&v389[2] + 2) = 0u;
  *(&v389[1] + 2) = 0u;
  *(v389 + 2) = 0u;
  memset(&v388[2192], 0, 21);
  memset(&v388[2064], 0, 115);
  *(&v383 + 3) = 0;
  *(&v383 + 1) = 0;
  *(&v381 + 3) = 0;
  *(&v381 + 1) = 0;
  *(&v379 + 3) = 0;
  *(&v379 + 1) = 0;
  *(&v377 + 1) = 0;
  *(&v377 + 3) = 0;
  *(&v375 + 1) = 0;
  *(&v375 + 3) = 0;
  *(&v373 + 3) = 0;
  *(&v373 + 1) = 0;
  *(&v371 + 3) = 0;
  *(&v371 + 1) = 0;
  *(&v369 + 1) = 0;
  *(&v369 + 3) = 0;
  *(&v364 + 3) = 0;
  *(&v364 + 1) = 0;
  *(&v359[76] + 2) = 0u;
  *(&v359[73] + 2) = 0u;
  memset(&v388[1870], 0, 177);
  memset(&v388[1743], 0, 110);
  bzero(&v388[6], 0x6C5uLL);
  bzero(v387 + 3, 0x15C5uLL);
  bzero(v386 + 3, 0x15C5uLL);
  bzero(&v385[3], 0x2255uLL);
  *&v384[16] = 0;
  *&v384[9] = 0;
  *&v384[1] = 0;
  v360 = 0uLL;
  v361 = 0;
  bzero(__src + 7, 0x1491uLL);
  v25 = *&v391[64];
  *(v20 + 4) = *&v391[48];
  *(v20 + 5) = v25;
  v20[24] = *&v391[80];
  v26 = *v391;
  *v20 = v390;
  *(v20 + 1) = v26;
  v27 = *&v391[32];
  *(v20 + 2) = *&v391[16];
  *(v20 + 3) = v27;
  *(v20 + 25) = 0;
  *(v20 + 54) = 0;
  memcpy(v20 + 110, v389, 0x1EBuLL);
  *(v20 + 601) = 0;
  v20[151] = 0;
  *(v20 + 76) = 0;
  v20[154] = -1;
  *(v20 + 155) = *&v388[2188];
  *(v20 + 629) = *&v388[2197];
  *(v20 + 645) = 0;
  *(v20 + 323) = 0;
  v20[162] = 0;
  v28 = *&v388[2060];
  v29 = *&v388[2076];
  v30 = *&v388[2108];
  *(v20 + 171) = *&v388[2092];
  *(v20 + 175) = v30;
  *(v20 + 163) = v28;
  *(v20 + 167) = v29;
  v31 = *&v388[2124];
  v32 = *&v388[2140];
  v33 = *&v388[2156];
  *(v20 + 763) = *&v388[2171];
  *(v20 + 183) = v32;
  *(v20 + 187) = v33;
  *(v20 + 179) = v31;
  *(v20 + 778) = 0;
  *(v20 + 771) = 0;
  v34 = *&v388[1868];
  v35 = *&v388[1884];
  v36 = *&v388[1916];
  *(v20 + 814) = *&v388[1900];
  *(v20 + 830) = v36;
  *(v20 + 782) = v34;
  *(v20 + 798) = v35;
  v37 = *&v388[1932];
  v38 = *&v388[1948];
  v39 = *&v388[1980];
  *(v20 + 878) = *&v388[1964];
  *(v20 + 894) = v39;
  *(v20 + 846) = v37;
  *(v20 + 862) = v38;
  v40 = *&v388[1996];
  v41 = *&v388[2012];
  v42 = *&v388[2028];
  *(v20 + 957) = *&v388[2043];
  *(v20 + 926) = v41;
  *(v20 + 942) = v42;
  *(v20 + 910) = v40;
  v43 = *&v388[1820];
  *(v20 + 1025) = *&v388[1804];
  *(v20 + 1041) = v43;
  *(v20 + 1057) = *&v388[1836];
  *(v20 + 1073) = v388[1852];
  v44 = *&v388[1756];
  *(v20 + 961) = *&v388[1740];
  *(v20 + 977) = v44;
  v45 = *&v388[1788];
  *(v20 + 993) = *&v388[1772];
  *(v20 + 1009) = v45;
  memcpy(v20 + 1074, v388, 0x6CBuLL);
  memcpy(v20 + 2813, v387, 0x15C8uLL);
  memcpy(v20 + 8389, v386, 0x15C8uLL);
  memcpy(v20 + 13965, v385, 0x2258uLL);
  *(v20 + 22757) = *v384;
  *(v20 + 22773) = *&v384[16];
  *(v20 + 22777) = v383;
  v46 = *&v382[16];
  *(v20 + 22793) = *v382;
  *(v20 + 22809) = v46;
  *(v20 + 22825) = *&v382[32];
  *(v20 + 22841) = *&v382[48];
  *(v20 + 22849) = v381;
  v47 = v380[0];
  v48 = v380[1];
  v49 = v380[2];
  *(v20 + 22913) = *&v380[3];
  *(v20 + 22881) = v48;
  *(v20 + 22897) = v49;
  *(v20 + 22865) = v47;
  *(v20 + 22921) = v379;
  *(v20 + 22985) = *&v378[3];
  v50 = v378[2];
  v51 = v378[0];
  *(v20 + 22953) = v378[1];
  *(v20 + 22969) = v50;
  *(v20 + 22937) = v51;
  *(v20 + 22993) = v377;
  v52 = v376[1];
  *(v20 + 23009) = v376[0];
  *(v20 + 23025) = v52;
  v53 = v376[2];
  v54 = v376[3];
  v55 = v376[6];
  v56 = v376[4];
  *(v20 + 23089) = v376[5];
  *(v20 + 23105) = v55;
  *(v20 + 23057) = v54;
  *(v20 + 23073) = v56;
  *(v20 + 23041) = v53;
  *(v20 + 23121) = v375;
  v57 = v374[0];
  v58 = v374[1];
  v59 = v374[2];
  *(v20 + 23185) = *&v374[3];
  *(v20 + 23153) = v58;
  *(v20 + 23169) = v59;
  *(v20 + 23137) = v57;
  *(v20 + 23193) = v373;
  v60 = v372[18];
  v61 = v372[19];
  v62 = v372[20];
  *(v20 + 23257) = *&v372[21];
  *(v20 + 23225) = v61;
  *(v20 + 23241) = v62;
  *(v20 + 23209) = v60;
  *(v20 + 23267) = 0;
  *(v20 + 23265) = 0;
  v23[128] = 0;
  *(v23 + 516) = 0;
  v63 = *(&v372[16] + 8);
  *(v20 + 23289) = *(&v372[17] + 1);
  *(v20 + 23273) = v63;
  v64 = v372[15];
  *(v20 + 23313) = *&v372[16];
  *(v20 + 23297) = v64;
  v65 = *(&v372[14] + 4);
  *(v20 + 23329) = HIDWORD(v372[14]);
  *(v20 + 23321) = v65;
  *(v20 + 23335) = 0;
  *(v20 + 23333) = 0;
  v23[145] = 0;
  v66 = v372[10];
  v67 = v372[11];
  v68 = v372[12];
  *(v20 + 23385) = *(&v372[12] + 13);
  *(v20 + 5839) = v67;
  *(v20 + 5843) = v68;
  *(v20 + 5835) = v66;
  v69 = *(&v372[9] + 4);
  *(v20 + 23401) = HIDWORD(v372[9]);
  *(v20 + 23393) = v69;
  *(v20 + 23407) = 0;
  *(v20 + 23405) = 0;
  v23[163] = 0;
  v70 = v372[5];
  v71 = v372[6];
  v72 = v372[7];
  *(v20 + 23457) = *(&v372[7] + 13);
  *(v20 + 5857) = v71;
  *(v20 + 5861) = v72;
  *(v20 + 5853) = v70;
  v73 = *(&v372[4] + 4);
  *(v20 + 23473) = HIDWORD(v372[4]);
  *(v20 + 23465) = v73;
  *(v20 + 23479) = 0;
  *(v20 + 23477) = 0;
  v23[181] = 0;
  v74 = v372[0];
  v75 = v372[1];
  v76 = v372[2];
  *(v20 + 23529) = *(&v372[2] + 13);
  *(v20 + 5875) = v75;
  *(v20 + 5879) = v76;
  *(v20 + 5871) = v74;
  *(v20 + 23545) = v371;
  v77 = v370[0];
  v78 = v370[1];
  v79 = v370[2];
  *(v20 + 23609) = *&v370[3];
  *(v20 + 23577) = v78;
  *(v20 + 23593) = v79;
  *(v20 + 23617) = v369;
  *(v20 + 23561) = v77;
  v80 = v368[7];
  v81 = v368[8];
  v82 = v368[9];
  *(v20 + 23681) = *&v368[10];
  *(v20 + 23649) = v81;
  *(v20 + 23665) = v82;
  *(v20 + 23633) = v80;
  v83 = *(&v368[6] + 4);
  *(v20 + 23697) = HIDWORD(v368[6]);
  *(v20 + 23689) = v83;
  *(v20 + 23703) = 0;
  *(v20 + 23701) = 0;
  v23[237] = 0;
  v84 = v368[2];
  v85 = v368[3];
  v86 = v368[4];
  *(v20 + 23753) = *(&v368[4] + 13);
  *(v20 + 5931) = v85;
  *(v20 + 5935) = v86;
  *(v20 + 5927) = v84;
  v87 = v365;
  v88 = v366;
  *(v20 + 5958) = *(v368 + 15);
  v89 = v368[0];
  *(v20 + 23801) = v367;
  *(v20 + 23817) = v89;
  *(v20 + 23769) = v87;
  *(v20 + 23785) = v88;
  *(v23 + 1092) = 0;
  *(v20 + 23849) = v364;
  v90 = v363[38];
  *(v20 + 23865) = v363[37];
  *(v20 + 23881) = v90;
  v91 = v363[39];
  v92 = v363[40];
  v93 = v363[43];
  v94 = v363[41];
  *(v20 + 23945) = v363[42];
  *(v20 + 23961) = v93;
  *(v20 + 23913) = v92;
  *(v20 + 23929) = v94;
  *(v20 + 23897) = v91;
  v95 = *(&v363[36] + 4);
  *(v20 + 23985) = HIDWORD(v363[36]);
  *(v20 + 23977) = v95;
  *(v20 + 23991) = 0;
  *(v20 + 23989) = 0;
  v23[309] = 0;
  v96 = v363[30];
  *(v20 + 5999) = v363[29];
  *(v20 + 6003) = v96;
  v97 = v363[31];
  v98 = v363[32];
  v99 = v363[33];
  v100 = v363[34];
  *(v20 + 24090) = *(&v363[34] + 14);
  *(v20 + 6015) = v99;
  *(v20 + 6019) = v100;
  *(v20 + 6007) = v97;
  *(v20 + 6011) = v98;
  *(v20 + 24130) = 0;
  *(v20 + 24098) = 0u;
  *(v20 + 24114) = 0u;
  memcpy(v20 + 24131, v363, 0x1C7uLL);
  *(v20 + 24586) = *&v362[183];
  *(v20 + 24594) = v362[185];
  v101 = *&v362[175];
  *(v20 + 24758) = *&v362[171];
  *(v20 + 24774) = v101;
  *(v20 + 24789) = *(&v362[178] + 3);
  v102 = *&v362[159];
  *(v20 + 24694) = *&v362[155];
  *(v20 + 24710) = v102;
  v103 = *&v362[167];
  *(v20 + 24726) = *&v362[163];
  *(v20 + 24742) = v103;
  v104 = *&v362[143];
  *(v20 + 24630) = *&v362[139];
  *(v20 + 24646) = v104;
  v105 = *&v362[151];
  *(v20 + 24662) = *&v362[147];
  *(v20 + 24678) = v105;
  v106 = *&v362[135];
  *(v20 + 24598) = *&v362[131];
  *(v20 + 24614) = v106;
  v107 = *&v362[116];
  v108 = *&v362[124];
  *(v20 + 24829) = *&v362[120];
  *(v20 + 24845) = v108;
  *(v20 + 24857) = *&v362[127];
  *(v20 + 24797) = *&v362[112];
  *(v20 + 24813) = v107;
  *(v20 + 24873) = 0;
  *(v20 + 24875) = 0;
  *(v23 + 2120) = 0;
  *(v20 + 24877) = 0;
  *(v20 + 24879) = 0;
  v23[531] = 0;
  *(v23 + 2128) = 0;
  *(v20 + 24885) = 0;
  *(v20 + 24887) = 0;
  v23[533] = 0;
  *(v23 + 2136) = 0;
  *(v20 + 24893) = 0;
  *(v20 + 24895) = 0;
  v23[535] = 0;
  *(v23 + 2144) = 0;
  *(v20 + 24901) = 0;
  *(v20 + 24903) = 0;
  v23[537] = 0;
  *(v23 + 2152) = 0;
  *(v20 + 24911) = 0;
  *(v20 + 24909) = 0;
  v23[539] = 0;
  *(v23 + 2160) = 0;
  *(v20 + 24919) = 0;
  *(v20 + 24917) = 0;
  v23[541] = 0;
  *(v23 + 2168) = 0;
  *(v20 + 24927) = 0;
  *(v20 + 24925) = 0;
  v23[543] = 0;
  *(v23 + 2176) = 0;
  *(v20 + 24935) = 0;
  *(v20 + 24933) = 0;
  v23[545] = 0;
  *(v23 + 2184) = 0;
  *(v20 + 24943) = 0;
  *(v20 + 24941) = 0;
  v23[547] = 0;
  *(v23 + 2192) = 0;
  *(v20 + 24951) = 0;
  *(v20 + 24949) = 0;
  v23[549] = 0;
  *(v23 + 2200) = 0;
  *(v20 + 24959) = 0;
  *(v20 + 24957) = 0;
  v23[551] = 0;
  *(v23 + 2208) = 0;
  *(v20 + 24967) = 0;
  *(v20 + 24965) = 0;
  v23[553] = 0;
  *(v23 + 2216) = 0;
  *(v20 + 24975) = 0;
  *(v20 + 24973) = 0;
  v23[555] = 0;
  *(v23 + 2224) = 0;
  *(v20 + 24983) = 0;
  *(v20 + 24981) = 0;
  v23[557] = 0;
  *(v23 + 2232) = 0;
  *(v20 + 24991) = 0;
  *(v20 + 24989) = 0;
  v23[559] = 0;
  *(v23 + 2240) = 0;
  *(v20 + 24999) = 0;
  *(v20 + 24997) = 0;
  v23[561] = 0;
  *(v23 + 2248) = 0;
  *(v20 + 25007) = 0;
  *(v20 + 25005) = 0;
  v23[563] = 0;
  *(v23 + 2256) = 0;
  *(v20 + 25015) = 0;
  *(v20 + 25013) = 0;
  v23[565] = 0;
  *(v23 + 2264) = 0;
  *(v20 + 25023) = 0;
  *(v20 + 25021) = 0;
  v23[567] = 0;
  *(v23 + 2272) = 0;
  *(v20 + 25031) = 0;
  *(v20 + 25029) = 0;
  v23[569] = 0;
  *(v23 + 2280) = 0;
  *(v20 + 25039) = 0;
  *(v20 + 25037) = 0;
  v23[571] = 0;
  *(v23 + 2288) = 0;
  *(v20 + 25047) = 0;
  *(v20 + 25045) = 0;
  v23[573] = 0;
  *(v23 + 2296) = 0;
  *(v20 + 25055) = 0;
  *(v20 + 25053) = 0;
  v23[575] = 0;
  *(v23 + 2304) = 0;
  *(v20 + 25063) = 0;
  *(v20 + 25061) = 0;
  v23[577] = 0;
  *(v23 + 2312) = 0;
  *(v20 + 25071) = 0;
  *(v20 + 25069) = 0;
  v23[579] = 0;
  *(v23 + 2320) = 0;
  *(v20 + 25079) = 0;
  *(v20 + 25077) = 0;
  v23[581] = 0;
  *(v23 + 2328) = 0;
  *(v20 + 25087) = 0;
  *(v20 + 25085) = 0;
  v23[583] = 0;
  *(v23 + 2336) = 0;
  *(v20 + 25095) = 0;
  *(v20 + 25093) = 0;
  v23[585] = 0;
  *(v23 + 2344) = 0;
  *(v20 + 25103) = 0;
  *(v20 + 25101) = 0;
  v23[587] = 0;
  *(v23 + 2352) = 0;
  *(v20 + 25111) = 0;
  *(v20 + 25109) = 0;
  v23[589] = 0;
  *(v23 + 2360) = 0;
  *(v20 + 25119) = 0;
  *(v20 + 25117) = 0;
  v23[591] = 0;
  *(v23 + 2368) = 0;
  *(v20 + 25127) = 0;
  *(v20 + 25125) = 0;
  v23[593] = 0;
  *(v23 + 2376) = 0;
  *(v20 + 25135) = 0;
  *(v20 + 25133) = 0;
  v23[595] = 0;
  *(v23 + 2384) = 0;
  v109 = *&v362[103];
  v110 = *&v362[107];
  *(v20 + 25173) = v362[111];
  *(v20 + 25141) = v109;
  *(v20 + 25157) = v110;
  memcpy(v20 + 25177, v362, 0x199uLL);
  *(v20 + 25586) = 0;
  *(v20 + 12795) = 0;
  *(v20 + 3199) = 0;
  *(v20 + 1600) = v360;
  *(v20 + 12808) = v361;
  memcpy(v20 + 25618, v359, 0x142uLL);
  v23[796] = 0;
  *(v20 + 6494) = 0u;
  *(v20 + 6498) = 0u;
  *(v20 + 26008) = 0;
  *(v20 + 6486) = 0u;
  *(v20 + 6490) = 0u;
  *(v20 + 26009) = 0;
  v20[6503] = 0;
  *(v20 + 3252) = 0;
  *(v23 + 3268) = 0;
  v20[6507] = 0;
  *(v20 + 26025) = 0;
  *(v20 + 3254) = 0;
  *(v20 + 26104) = 0;
  *(v20 + 6518) = 0u;
  *(v20 + 6522) = 0u;
  *(v20 + 6510) = 0u;
  *(v20 + 6514) = 0u;
  v20[6527] = 0;
  *(v20 + 26105) = 0;
  *(v20 + 3264) = 0;
  *(v23 + 3364) = 0;
  memcpy(v20 + 26121, __src, 0x1498uLL);
  *(v20 + 31393) = 0;
  v20[7849] = 0;
  *(v20 + 3925) = 0;
  *(v20 + 1963) = vdupq_n_s64(0x4066800000000000uLL);
  *(v20 + 3928) = 0x3FF0000000000000;
  *(v20 + 3929) = 0;
  v23[597] = 0;
  *(v23 + 589) = 0u;
  *(v23 + 593) = 0u;
  *(v23 + 581) = 0u;
  *(v23 + 585) = 0u;
  *(v23 + 573) = 0u;
  *(v23 + 577) = 0u;
  *(v23 + 565) = 0u;
  *(v23 + 569) = 0u;
  *(v23 + 557) = 0u;
  *(v23 + 561) = 0u;
  *(v23 + 549) = 0u;
  *(v23 + 553) = 0u;
  *(v23 + 541) = 0u;
  *(v23 + 545) = 0u;
  *(v23 + 533) = 0u;
  *(v23 + 537) = 0u;
  *(v23 + 525) = 0u;
  *(v23 + 529) = 0u;
  *(v23 + 517) = 0u;
  *(v23 + 521) = 0u;
  *(v23 + 509) = 0u;
  *(v23 + 513) = 0u;
  v345 = (v23 + 505);
  *(v23 + 505) = 0u;
  *(v23 + 2020) = NK_Sample_Track_Meas(v356, (v21 + 7348), (v21 + 7352), v20, 0.0, v111, v112, v113);
  *(v356 + 40) = 0;
  *(v356 + 2848) = 0u;
  *(v356 + 2832) = 0u;
  *(v356 + 2816) = 0u;
  *(v356 + 2800) = 0u;
  *(v356 + 2784) = 0u;
  *(v356 + 2768) = 0u;
  memcpy(v20 + 156, (a9 + 32), 0x150uLL);
  v114 = *(a9 + 800);
  v115 = *(a9 + 816);
  v116 = *(a9 + 832);
  *(v20 + 1544) = *(a9 + 848);
  *(v20 + 1543) = v116;
  *(v20 + 1542) = v115;
  *(v20 + 1541) = v114;
  v117 = *(a9 + 864);
  v118 = *(a9 + 880);
  v119 = *(a9 + 896);
  *(v20 + 3096) = *(a9 + 912);
  *(v20 + 1547) = v119;
  *(v20 + 1546) = v118;
  *(v20 + 1545) = v117;
  *(v20 + 960) = *(a9 + 19);
  v20[241] = *(a9 + 12);
  v120 = *(a10 + 1320);
  *(v20 + 2840) = *(a10 + 1312);
  v20[5682] = v120;
  v121 = *(a10 + 1332);
  *(v20 + 5683) = *(a10 + 1324);
  v20[5685] = v121;
  v122 = *(a10 + 1344);
  *(v20 + 2843) = *(a10 + 1336);
  v20[5688] = v122;
  NK_Get_Ext_CTXT(v20[1], v20, v21, a10);
  v20[242] = *a10;
  v123 = *(a10 + 52);
  if (v123 == 2)
  {
    v124 = *(v21 + 20);
    v125 = v353;
    if (v124 - 2 <= 2)
    {
      if (*(v20 + 960) == 1)
      {
        if (v124 > 3 || v20[241] >= 2)
        {
          goto LABEL_27;
        }
      }

      else if (v124 > 3)
      {
        goto LABEL_27;
      }

      v126 = 4;
      goto LABEL_25;
    }

LABEL_20:
    if (v123 == v124)
    {
      goto LABEL_27;
    }

    *(v21 + 20) = v123;
    v127 = *(a10 + 56);
    *(v21 + 24) = v127;
    *v385 = v123;
    *&v385[4] = v127;
    goto LABEL_26;
  }

  v124 = *(v21 + 20);
  v125 = v353;
  if ((v123 - 5) > 3 || v124 - 5 > 3)
  {
    goto LABEL_20;
  }

  if (*(v20 + 960) != 1 || v20[241] <= 1)
  {
    if (v124 == 5)
    {
      v126 = 6;
    }

    else
    {
      if (v124 != 6)
      {
        goto LABEL_27;
      }

      v126 = 7;
    }

LABEL_25:
    *(v21 + 20) = v126;
    v128 = *(v21 + 24);
    *v385 = v126;
    *&v385[4] = v128;
LABEL_26:
    NK_Set_Dynamics(v385, v21 + 32);
  }

LABEL_27:
  NK_Set_XO_PN(a10, v21 + 32);
  if (!*(a9 + 48))
  {
    *(v21 + 128) = 1;
    *(v21 + 132) = 20;
  }

  if (*(v21 + 7) == 1)
  {
    *(v21 + 7) = 0;
    *(v21 + 128) = 1;
    v129 = 33;
LABEL_33:
    *(v21 + 132) = v129;
    goto LABEL_34;
  }

  if (*(v21 + 132) == 33)
  {
    v129 = 34;
    goto LABEL_33;
  }

LABEL_34:
  v130 = (v125 + 26864);
  NK_Check_TOW_Adjust(v21, v20);
  v131 = *(a10 + 948);
  v132 = *(v21 + 18);
  if (v131 * *(v21 + 11032) > (1000 * v132) && *(a9 + 344) > 0.0)
  {
    NK_Decay_Speed(v132, v131, (v20 + 156), v21);
  }

  NK_Predict_State(v20, v20 + 156);
  v133 = *(a9 + 208);
  if (fabs(v133) < 1.48352986)
  {
    v134 = __sincos_stret(v133);
    v135 = 1.0 / sqrt(v134.__sinval * v134.__sinval * -0.00669437999 + 1.0);
    v136 = v134.__cosval * (*(a9 + 224) + v135 * 6378137.0);
    if (v136 < 1.0)
    {
      v136 = 1.0;
    }

    *(v21 + 27080) = v136;
    *(v21 + 27072) = *(a9 + 224) + v135 * (v135 * v135) * 6335439.33;
  }

  v137 = *v20;
  v20[157] = v20[1];
  if ((*v130 & 1) == 0)
  {
    *v130 = 1;
    *(v125 + 26868) = v137;
  }

  NK_Get_Ext_Meas(v137, v20[2], a10, v20, v21);
  v138 = *(v23 + 236);
  v352 = (v23 + 59);
  v343 = v138 == 1 && v23[61] - 3 < 2;
  if (*(v21 + 20) <= 4u && (*(v21 + 233) != 1 || (v138 & 1) != 0 && *(v23 + 364) == 1 && v20[3] >= 4 && *(v20 + 2880) <= 6250000.0 && *(v20 + 2894) <= 250000.0))
  {
    *(v20 + 976) = 1;
  }

  v351 = (v125 + 8144);
  v139 = (v20 + 6164);
  if ((*(v20 + 960) != 1 || (*(v125 + 26960) & 1) != 0 || (v20[241] < 2 || *(v20 + 3086) > 30000.0 || !*(v21 + 11048)) && ((v343 & v138) != 1 || *(v20 + 2880) > 900000000.0)) && *(v20 + 17) == 1 && v20[3] >= 1)
  {
    NK_Crude_Apx_Pos(v356, v348, v21, v20, v357);
  }

  v337 = v125 + 26864;
  NK_Transform_State((v20 + 156));
  v140 = *(v20 + 960);
  *v385 = *(v21 + 20);
  if ((NK_Init_Cov_Mat(v140, v385, v20[3], v352, v21 + 344, v125, v21 + 11440, v21 + 11536, *(a10 + 1000), v139, (v20 + 6124)) & 1) == 0)
  {
    NK_Prop_Cov_Mat(*(v20 + 82), (v21 + 344));
    NK_Add_Nominal_PN(v21, (v20 + 156), *(v20 + 600), v21 + 32, (v21 + 344), v125, v20 + 3062);
    if (*(v21 + 128) == 1)
    {
      v141 = *(v20 + 960);
      *v385 = *(v21 + 20);
      NK_Init_Cov_Mat(v141, v385, v20[3], v352, v21 + 344, v125, v21 + 11440, v21 + 11536, *(a10 + 1000), v139, (v20 + 6124));
    }
  }

  v346 = (v20 + 6124);
  v344 = (v20 + 156);
  bzero(v20 + 270, 0x6C0uLL);
  NK_Comp_DR_Meas(0x30u, v20[11], (v356 + 1036), (v356 + 2384), (v356 + 1616), (v356 + 316), (v356 + 412), (v21 + 8312), *(v20 + 82), (v21 + 10424), v20 + 15, v20 + 14016);
  *v385 = *(v21 + 20);
  *(v23 + 1841) = NK_PrePro_SV_Meas(v385, v357 + 33605, v356, v348, v354, a10, v347, a11, v357, v21, v20);
  NK_Set_Environ_Severity(v356, a10, v21, v20);
  v142 = (v356 + 76);
  LOBYTE(v335) = *(a10 + 65);
  NK_Set_PR_Meas_Var(v356 + 76, (v20 + 716), v356 + 604, v356 + 700, v356 + 796, v356 + 844, v356 + 940, *(v20 + 118), v356 + 1036, v356 + 1132, v20 + 978, (v21 + 2088), v335, *(a10 + 60), 48, (v20 + 824));
  NK_Set_DO_Meas_Var(v356 + 76, (v20 + 2110), v356 + 604, v356 + 700, v356 + 796, v356 + 940, v356 + 1036, v356 + 412, v356 + 1132, v356 + 316, v20 + 978, 48, (v20 + 2218));
  NK_Set_DR_Meas_Var((v356 + 76), v20 + 14016, (v356 + 604), (v356 + 796), (v356 + 1036), 0x30u, (v20 + 3612));
  if (*(v125 + 10960) == 1 && *(v21 + 11040) <= 1u)
  {
    v143 = 0;
    v144 = (v20 + 826);
    v145 = (v356 + 76);
    do
    {
      if (*(v20 + v143 + 2864) == 1)
      {
        v146 = *v144;
        if (*v144 >= dbl_29972AEB0[*v145 == 2])
        {
          v146 = dbl_29972AEB0[*v145 == 2];
        }

        *v144 = v146;
      }

      ++v143;
      v144 += 3;
      v145 += 4;
    }

    while (v143 != 48);
  }

  v147 = v20[11];
  v148 = *(v21 + 10472) + v147 * 299792.458;
  *(v21 + 10472) = v148;
  v149 = *(v21 + 8280) + v147 * 299792.458;
  *(v21 + 8280) = v149;
  v150 = *(v21 + 8296) + v147 * 299792.458;
  *(v21 + 8296) = v150;
  v355 = (v356 + 76);
  v342 = v21 + 10480;
  Corr_Old_PR_Est(v142, *(v125 + 8144), *(v125 + 8146), *(v125 + 8160), *(v125 + 8145), 0x30u, (v21 + 7888), (v21 + 10480), *(v21 + 8304), v148, v149, v150, (v21 + 8696), (v21 + 9848), (v21 + 10040));
  NK_Comp_PR_DO_Res(v356, v348, v357, a10, v347, v21, v20);
  v151 = a9;
  if (__PAIR64__(*(v20 + 769), *(v20 + 768)) != 0x100000001 || (*(v20 + 770) & 1) == 0)
  {
    NK_Set_Constell_Clock_Bias(v142, v20, v357, *(v21 + 233), v21 + 344);
  }

  NK_Comp_DR_Res(v356, v21, v20);
  if ((*(v21 + 128) & 1) == 0)
  {
    NK_Add_SV_ARes_PN_ClkDrift(v21, v20, *(a10 + 120));
  }

  v349 = (v21 + 11032);
  v350 = (v20 + 2096);
  NK_Reflection_Rejection_Ped(a10, v356, v21, v20);
  NK_Reduce_Num_SV(v356, v21, v20, a11);
  NK_Dopp_Outlier(v356, v21, v20);
  NK_SV_Res_RTests_FDist(*(a10 + 60), v21, v20);
  *v385 = 0;
  *&v385[3472] = 0;
  v385[3480] = 0;
  memset(&v385[3400], 0, 65);
  *&v385[3568] = 0;
  v385[3576] = 0;
  *&v385[3488] = 0;
  memset(&v385[3496], 0, 65);
  bzero(&v385[8], 0xD3CuLL);
  memset(&v385[3584], 0, 24);
  NK_Least_Squares_Check(v356);
  NK_Least_Squares_Publish_Soln((v20 + 6404), v385);
  memcpy((v340 + 2432), &v385[8], 0x180uLL);
  memcpy((v340 + 2816), &v385[408], 0x180uLL);
  NK_Least_Squares_Cross_Check(v142, v21, v20, v385);
  if (*(v20 + 31344) == 1 && (*(v20 + 768) != 1 || *(v20 + 769) != 1 || (*(v20 + 770) & 1) == 0))
  {
    NK_Set_Constell_Clock_Bias(v142, v20, v357, *(v21 + 233), v21 + 344);
  }

  NK_Least_Squares_Check(v356);
  NK_Least_Squares_Publish_Soln(v340 + 288, v385);
  NK_Least_Squares_Check(v356);
  NK_Least_Squares_Publish_Soln(v340 + 824, v385);
  NK_Least_Squares_Check(v356);
  NK_Least_Squares_Publish_Soln(v340 + 1360, v385);
  NK_Least_Squares_Check(v356);
  NK_Least_Squares_Publish_Soln(v340 + 1896, v385);
  NK_SV_Meas_IVar(1, v142, (v20 + 5008), (v21 + 344), (v20 + 702), *(v20 + 82));
  NK_SV_Meas_IVar(2, v142, (v20 + 5008), (v21 + 344), v350, *(v20 + 82));
  NK_SV_Meas_IVar(3, v142, (v20 + 5008), (v21 + 344), (v20 + 3490), *(v20 + 82));
  NK_Bit_Sync_Check(v356, v21, v20, a11);
  NK_Range_Chip_Check(v356, v21, v20, a11);
  v152 = 0;
  v153 = v20 + 740;
  do
  {
    v154 = v20 + v152;
    if (*(v20 + v152 + 2960) == 1 && (v154[49] & 1) == 0)
    {
      v154[2960] = 0;
      --*(v20 + 2811);
    }

    ++v152;
  }

  while (v152 != 48);
  v156 = *(v21 + 20);
  v155 = *(v21 + 24);
  if (v156 == v155)
  {
    goto LABEL_117;
  }

  if (v156 > 2)
  {
    if (v156 > 4)
    {
      if (v156 == 5)
      {
        if ((v155 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_117;
        }
      }

      else if (v156 != 6 || v155 != 7)
      {
        goto LABEL_117;
      }
    }

    else if (v156 == 3)
    {
      if (v155 <= 2)
      {
        goto LABEL_117;
      }
    }

    else if (v155 - 5 >= 3)
    {
      goto LABEL_117;
    }

LABEL_110:
    if (*(v21 + 11032) <= *(v21 + 16) && v20[242] == 1)
    {
      v157 = *(v21 + 140);
      if (v157 >= *(v21 + 144))
      {
        v157 = *(v21 + 144);
      }

      if (v157 >= *(v21 + 148))
      {
        v157 = *(v21 + 148);
      }

      if (v157 > 0xA)
      {
        goto LABEL_118;
      }
    }

    goto LABEL_117;
  }

  if (!v156)
  {
    goto LABEL_110;
  }

  if (v156 != 1)
  {
    if (v156 != 2 || v155 <= 1)
    {
      goto LABEL_117;
    }

    goto LABEL_110;
  }

  if (v155)
  {
    goto LABEL_110;
  }

LABEL_117:
  NK_SV_Res_RTests(v356, v21, v20, a11);
LABEL_118:
  NK_SV_Res_RTests_Riskier_SVs(v356, v20);
  v158 = *(v20 + 960);
  *v385 = *(v21 + 20);
  NK_Check_Num_SV_Res(v158, v385, *(v21 + 2), *(v23 + 236), v23[61], *(v21 + 11048), (v20 + 702), (v20 + 3490), *(v20 + 2880), v350);
  v159 = 764;
  v160 = 4500;
  v161 = 14112;
  do
  {
    if (*(v20 + v161) != 1)
    {
      goto LABEL_122;
    }

    v162 = v20[v159];
    if (v162 - 1 < 0x1D)
    {
      goto LABEL_121;
    }

    if (v162)
    {
      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
LABEL_121:
      *&v20[v160] = *&v20[v160] + 1.0;
      *(v20 + v161 + 3840) = 1;
    }

LABEL_122:
    ++v159;
    v160 += 2;
    ++v161;
  }

  while (v159 != 812);
  v163 = v356;
  v164 = a10;
  if (*v353 & 1) != 0 || (NK_Add_SV_ARes_PN(*(a9 + 4), *(a9 + 17), v356, v21, v20, *(a10 + 60)), (*(v21 + 128)))
  {
    v165 = *(v20 + 960);
    *v385 = *(v21 + 20);
    NK_Init_Cov_Mat(v165, v385, v20[3], v352, v21 + 344, v353, v21 + 11440, v21 + 11536, *(a10 + 1000), v20 + 1541, v346);
  }

  if ((*(v21 + 6) & 1) == 0 && *(v20 + 2811) >= 6u && (*(v21 + 233) & 1) == 0 && v20[3] - 3 <= 2)
  {
    v166 = *(v20 + 3066) * 25.0;
    *(v20 + 3066) = v166;
    *(v21 + 456) = v166;
    EvLog("Nav_Kalman_Update: Freeing-up dT Synch ");
    v167 = *(v20 + 3062) * 25.0;
    *(v20 + 3062) = v167;
    *(v21 + 344) = v167;
    v168 = *(v20 + 3063) * 25.0;
    *(v20 + 3063) = v168;
    *(v21 + 360) = v168;
    v169 = *(v20 + 3064) * 25.0;
    *(v20 + 3064) = v169;
    *(v21 + 384) = v169;
  }

  NK_Get_Ext_Time(*v20, v20, v21);
  NK_DeCor_Ext_Meas(v21, v20, v170);
  v341 = NK_Tunnel_Assist(v21, v20);
  memcpy((v21 + 872), (v21 + 344), 0x210uLL);
  v171 = v21 + 1400;
  *(v21 + 1400) = 0u;
  *(v21 + 1416) = 0u;
  *(v21 + 1432) = 0u;
  *(v21 + 1448) = 0u;
  *(v21 + 1464) = 0u;
  *(v21 + 1480) = 0u;
  if (*(v23 + 20) == 1 && KFSt_Meas_Update(4u, 0xBu, (v23 + 5), (v21 + 872), (v21 + 10988), *(v20 + 99)))
  {
    v23[511] = v23[6];
  }

  v172 = *(v20 + 3066);
  if (v172 > 0.000000001 && (*(v20 + 3067) < 1600000000.0 && *(v20 + 3068) < 1600000000.0 && *(v20 + 3069) < 1600000000.0 || *v352 == 1 && *(v20 + 2880) < 1600000000.0) && ((v173 = 0.0001, *(v20 + 48) == 2) || (v20[4] & 1) != 0 || *(v23 + 20) == 1 && v23[6] == 1 && *(v20 + 2852) < 0.00000004) || *(v20 + 48) && v172 > 0.9 && (v173 = 1.0, (v20[240] & 1) != 0))
  {
    v174 = *(v20 + 99);
    __src[0] = 0.0;
    memset(&v387[6], 0, 168);
    memset(&v387[3], 0, 40);
    memset(v387, 0, 32);
    v387[2] = 0x3FF0000000000000uLL;
    *(&v387[5] + 1) = v174;
    umeas(v21 + 872, 0xBu, v173, v387, v385, v386, __src, 1.0e20);
    v23[511] = 2;
  }

  if (*(v23 + 92) != 1)
  {
    goto LABEL_169;
  }

  v336 = (v23 + 23);
  v339 = v21 + 1400;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = (v356 + 76);
  while (2)
  {
    if (*(v153 + v175) == 1)
    {
      v180 = *v179;
      if (v180 > 6)
      {
        goto LABEL_163;
      }

      if (((1 << v180) & 0x5A) != 0)
      {
        ++v176;
        goto LABEL_158;
      }

      if (v180 == 2)
      {
        v177 = (v177 + 1);
      }

      else
      {
        if (v180 == 5)
        {
          v178 = (v178 + 1);
          goto LABEL_158;
        }

LABEL_163:
        v181 = v21;
        v182 = v178;
        v183 = v153;
        v184 = v23;
        v185 = v177;
        EvCrt_Illegal_Default("Nav_Kalman_Update", 1211);
        v177 = v185;
        v23 = v184;
        v153 = v183;
        v178 = v182;
        v21 = v181;
      }
    }

LABEL_158:
    ++v175;
    v179 += 4;
    if (v175 != 48)
    {
      continue;
    }

    break;
  }

  if (!v176 && v177 | v178)
  {
    v163 = v356;
    v164 = a10;
    v171 = v339;
    if (v177)
    {
      v151 = a9;
      if ((KFSt_Meas_Update(1u, 0xBu, v336, (v21 + 872), (v21 + 10990), *(v20 + 93) * 299792458.0) & 1) == 0)
      {
        goto LABEL_169;
      }
    }

    else
    {
      v151 = a9;
      if (!v178 || !KFSt_Meas_Update(2u, 0xBu, v336, (v21 + 872), (v21 + 10990), *(v20 + 94) * 299792458.0))
      {
        goto LABEL_169;
      }
    }

LABEL_168:
    v23[512] = v23[24];
    goto LABEL_169;
  }

  v163 = v356;
  v151 = a9;
  v164 = a10;
  v171 = v339;
  if (KFSt_Meas_Update(0, 0xBu, v336, (v21 + 872), (v21 + 10990), *(v20 + 92) * 299792458.0))
  {
    goto LABEL_168;
  }

LABEL_169:
  if (*(v20 + 2811))
  {
    v186 = *v346;
    v187 = *v346 < 90000.0 && *(v20 + 3063) < 90000.0;
    v188 = !*(v21 + 11048) && (v197 = *(v23 + 2818), v197 >= 1) && (v198 = *(v23 + 2817), v198 >= 1) && v198 + v197 < 6;
    if (v187 || v188)
    {
      *(v23 + 508) = 2;
      v23[128] = 1;
      NK_IntConstel_TO_IntMeas(v21, v20, v357);
      v186 = *(v20 + 3062);
    }

    v189 = v186 < 90000.0 && *(v20 + 3064) < 90000.0;
    v190 = !*(v21 + 11048) && (v199 = *(v23 + 2820), v199 >= 1) && (v200 = *(v23 + 2817), v200 >= 1) && v200 + v199 < 6;
    if (v189 || v190)
    {
      *(v23 + 508) = 4;
      v23[128] = 4;
      NK_IntConstel_TO_IntMeas(v21, v20, v357);
    }

    if (*(v20 + 3063) < 90000.0 && *(v20 + 3064) < 90000.0)
    {
      *(v23 + 508) = 4;
      v23[128] = 5;
      NK_IntConstel_TO_IntMeas(v21, v20, v357);
    }
  }

  if (*(v23 + 164) == 1)
  {
    v191 = *(v20 + 95) * 299792458.0;
    v192 = *(v20 + 3065);
    if (v192 <= 80.8879661)
    {
      *(v23 + 164) = 0;
      *(v23 + 180) = 1;
      v193 = *(v20 + 2868);
      v194 = v192 + *(v20 + 2869);
      if ((v193 - v191) * (v193 - v191) > v194 * 9.0)
      {
        EvLog_v("Nav_Kalman_Update: WARNING: Ext ClkD %g incompatible with NK ClkD %g Unc %g", v193, v191, sqrt(v194));
      }
    }

    else if (KFSt_Meas_Update(3u, 0xBu, (v23 + 41), (v21 + 872), (v21 + 10998), v191))
    {
      v23[515] = v23[42];
    }
  }

  *(v23 + 1012) = NK_Map_Vector(v20, v21, v151);
  if (*(v23 + 236) == 1)
  {
    if (Horz_Meas_Update(5u, v20 + 100, v20 + 104, 0xBu, v352, v21 + 872, (v21 + 11000)))
    {
      v23[517] = v23[60];
      if (*(v23 + 2264) == 1 && *(v20 + 2880) < 160000.0)
      {
        *(v23 + 2272) = 1;
      }

      if (*(v23 + 2296) == 1 && *(v20 + 2880) < 160000.0)
      {
        *(v23 + 2304) = 1;
      }
    }

    else
    {
      v23[567] = 3;
      if (*(v23 + 2296) == 1)
      {
        v23[575] = 3;
      }

      if (v23[61] - 3 <= 1)
      {
        *(p_NA + 696) = 2;
      }

      v195 = *(v20 + 2886) * *(v20 + 2886) + *(v20 + 2885) * *(v20 + 2885);
      if (v195 > *(v20 + 2883))
      {
        v196 = p_NA;
        *(p_NA + 640) = v195;
        *(v196 + 648) = v195;
      }
    }
  }

  if (*(v23 + 364) == 1)
  {
    if (Vert_Meas_Update(5u, v20 + 104, 0xBu, (v23 + 91), (v21 + 872), (v21 + 11002), *(v20 + 102)))
    {
      v23[518] = v23[92];
      if ((v23[564] & 1) == 0 && *(v23 + 2280) == 1 && *(v20 + 2894) < 160000.0)
      {
        *(v23 + 2288) = 1;
      }
    }

    else if (*(v23 + 2256) == 1)
    {
      *(v23 + 2256) = 0;
      v23[563] = 3;
    }

    else if (v23[92] == 1)
    {
      v23[571] = 3;
    }
  }

  if (*v23 == 1)
  {
    *(v23 + 564) = 1;
    v23[142] = 1;
    v23[145] = *v20;
    *(v20 + 1459) = xmmword_29972AEC0;
    *(v20 + 2922) = 0x4022000000000000;
LABEL_226:
    if (Speed_Meas_Update(8u, v20 + 86, 0xBu, (v23 + 141), (v21 + 872), (v21 + 11010), 1.0))
    {
      v23[522] = v23[142];
    }
  }

  else if (v23[141])
  {
    goto LABEL_226;
  }

  if (*(v23 + 636) == 1 && *(v21 + 11116) != 3)
  {
    v201 = *(v20 + 3092);
    v202 = (v21 + 10496);
    v203 = 0.0;
    for (i = 4; i > 1; --i)
    {
      v205 = *v202--;
      v203 = v203 + v205 * v205;
    }

    if (v201 < 45.0 && *(v20 + 2927) > 0.75)
    {
      v206 = *(v20 + 118);
      if (v206 > 0.75 && *(v20 + 3226) > 0.75 && sqrt(v203) > 0.5)
      {
        v207 = cos(v201 * 0.0174532925);
        if (GSpeed_Meas_Update(8, v20 + 104, 0xBu, (v23 + 159), v21 + 872, (v21 + 11014), v206, *(v21 + 11192), 1.0, 1.0 / v207))
        {
          v23[524] = v23[160];
        }

        else if (*(v23 + 2336) == 1)
        {
          *(v23 + 2336) = 0;
          v23[583] = 3;
        }
      }
    }
  }

  if (*(v23 + 436) == 1)
  {
    if (Vert_Meas_Update(8u, v20 + 104, 0xBu, (v23 + 109), (v21 + 872), (v21 + 11004), -*(v20 + 116)))
    {
      v23[519] = v23[110];
    }

    else if (*(v23 + 2352) == 1)
    {
      *(v23 + 2352) = 0;
      v23[587] = 3;
    }
  }

  if (*(v23 + 708) == 1)
  {
    v208 = *(v20 + 119);
    *(v20 + 2938) = v208;
    if (Track_Meas_Update(8, v20 + 104, 0xBu, v23 + 708, v21 + 872, (v21 + 11018), v208, *(v20 + 118), 1.0))
    {
      v23[526] = v23[178];
    }

    else if (*(v23 + 2368) == 1)
    {
      *(v23 + 2368) = 0;
      v23[591] = 3;
    }
  }

  v210 = *(v21 + 20);
  v209 = *(v21 + 24);
  if (v210 != v209)
  {
    if (v210 <= 2)
    {
      if (!v210)
      {
        goto LABEL_277;
      }

      if (v210 == 1)
      {
        if (v209)
        {
          goto LABEL_277;
        }
      }

      else if (v210 == 2 && v209 > 1)
      {
        goto LABEL_277;
      }
    }

    else if (v210 > 4)
    {
      if (v210 == 5)
      {
        if ((v209 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_278;
        }

        goto LABEL_277;
      }

      if (v210 == 6 && v209 == 7)
      {
        goto LABEL_277;
      }
    }

    else
    {
      if (v210 == 3)
      {
        if (v209 <= 2)
        {
          goto LABEL_278;
        }
      }

      else if (v209 - 5 >= 3)
      {
        goto LABEL_278;
      }

LABEL_277:
      NK_Define_Meas_Innov_Sat_Thresh(v20, v21, v344);
    }
  }

LABEL_278:
  if (*v23 == 1 && v20[242] == 1)
  {
    v211 = 0x3FFFFFFFFFFFFFA0;
    v212 = 2864;
    v213 = 8440;
    v214 = 14016;
    do
    {
      if (*(v20 + v212) == 1)
      {
        v215 = &v20[v211];
        v216 = *&v20[v211 + 1304];
        if (fabs(v216) < 300.0)
        {
          v217 = v216 * 0.5 * (v216 * 0.5);
          if (*(v215 + 904) > v217)
          {
            v217 = *(v215 + 904);
          }

          *(v215 + 904) = v217;
        }
      }

      if (*(v20 + v214) == 1)
      {
        v218 = &v20[v211];
        v219 = *&v20[v211 + 4092];
        if (fabs(v219) < 20.0)
        {
          v220 = v219 * 0.5 * (v219 * 0.5);
          if (*(v218 + 2298) > v220)
          {
            v220 = *(v218 + 2298);
          }

          *(v218 + 2298) = v220;
        }
      }

      if (*(v20 + v213) == 1)
      {
        v221 = &v20[v211];
        v222 = *&v20[v211 + 2698];
        if (fabs(v222) < 20.0)
        {
          v223 = v222 * 0.5 * (v222 * 0.5);
          if (*(v221 + 1601) > v223)
          {
            v223 = *(v221 + 1601);
          }

          *(v221 + 1601) = v223;
        }
      }

      ++v213;
      ++v214;
      ++v212;
      v211 += 2;
    }

    while (v211 * 4);
  }

  v225 = *(v21 + 20);
  v224 = *(v21 + 24);
  if (v225 != v224)
  {
    if (v225 <= 2)
    {
      if (v225)
      {
        if (v225 == 1)
        {
          if (!v224)
          {
            goto LABEL_326;
          }
        }

        else if (v225 != 2 || v224 <= 1)
        {
          goto LABEL_326;
        }
      }

      goto LABEL_317;
    }

    if (v225 > 4)
    {
      if (v225 != 5)
      {
        if (v225 != 6 || v224 != 7)
        {
          goto LABEL_326;
        }

        goto LABEL_317;
      }

      if ((v224 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_317;
      }
    }

    else if (v225 == 3)
    {
      if (v224 > 2)
      {
        goto LABEL_317;
      }
    }

    else
    {
      if (v224 - 5 >= 3)
      {
        goto LABEL_326;
      }

LABEL_317:
      memset_pattern16(v20 + 2998, &unk_29972AEE0, 0x180uLL);
      memset_pattern16(v20 + 4392, &unk_29972AEE0, 0x180uLL);
      if ((*(v21 + 233) & 1) == 0 && *(v21 + 11032) <= *(v21 + 16) && v20[242] == 1)
      {
        v226 = *(v21 + 140);
        if (v226 >= *(v21 + 144))
        {
          v226 = *(v21 + 144);
        }

        if (v226 >= *(v21 + 148))
        {
          v226 = *(v21 + 148);
        }

        if (v226 >= 0xB)
        {
          NK_Meas_Outlier_Check(2, *(v20 + 48), 0, v350, (v20 + 3490));
          NK_Meas_ARP_Check(2u, v355, v350, v346, (v21 + 11536));
        }
      }
    }
  }

LABEL_326:
  if (*(v21 + 11032) > *(v21 + 16) || v20[242] != 1)
  {
    goto LABEL_334;
  }

  v227 = *(v21 + 140);
  if (v227 >= *(v21 + 144))
  {
    v227 = *(v21 + 144);
  }

  if (v227 >= *(v21 + 148))
  {
    v227 = *(v21 + 148);
  }

  if (v227 < 0xB || (v229 = *(v21 + 20), v228 = *(v21 + 24), v229 == v228))
  {
LABEL_334:
    v230 = 0;
    goto LABEL_335;
  }

  if (v229 <= 2)
  {
    if (v229)
    {
      if (v229 != 1)
      {
        if (v229 != 2)
        {
          goto LABEL_334;
        }

        v316 = v228 > 1;
        goto LABEL_642;
      }

      v230 = v228 != 0;
    }

    else
    {
      v230 = 1;
    }
  }

  else if (v229 > 4)
  {
    if (v229 == 5)
    {
      v319 = (v228 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v229 != 6)
      {
        goto LABEL_334;
      }

      v319 = v228 == 7;
    }

    v230 = v319;
  }

  else
  {
    if (v229 != 3)
    {
      v230 = v228 - 5 < 3;
      goto LABEL_335;
    }

    v316 = v228 > 2;
LABEL_642:
    v230 = v316;
  }

LABEL_335:
  NK_SV_Meas_Update(2, v355, (v20 + 5008), v20 + 49, v350, (v21 + 872), v230, v20 + 43, *(v20 + 82), (v20 + 6024));
  v232 = *(v21 + 20);
  v231 = *(v21 + 24);
  if (v232 != v231)
  {
    if (v232 <= 2)
    {
      if (v232)
      {
        if (v232 == 1)
        {
          if (!v231)
          {
            goto LABEL_368;
          }
        }

        else if (v232 != 2 || v231 <= 1)
        {
          goto LABEL_368;
        }
      }

      goto LABEL_359;
    }

    if (v232 > 4)
    {
      if (v232 != 5)
      {
        if (v232 != 6 || v231 != 7)
        {
          goto LABEL_368;
        }

        goto LABEL_359;
      }

      if ((v231 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_359;
      }
    }

    else if (v232 == 3)
    {
      if (v231 > 2)
      {
        goto LABEL_359;
      }
    }

    else
    {
      if (v231 - 5 >= 3)
      {
        goto LABEL_368;
      }

LABEL_359:
      if ((*(v21 + 233) & 1) == 0 && *(v21 + 11032) <= *(v21 + 16) && v20[242] == 1)
      {
        v233 = *(v21 + 140);
        if (v233 >= *(v21 + 144))
        {
          v233 = *(v21 + 144);
        }

        if (v233 >= *(v21 + 148))
        {
          v233 = *(v21 + 148);
        }

        if (v233 >= 0xB)
        {
          NK_Meas_ARP_Check(3u, v355, (v20 + 3490), v346, (v21 + 11536));
        }
      }
    }
  }

LABEL_368:
  if (*(v21 + 11032) > *(v21 + 16) || v20[242] != 1)
  {
    goto LABEL_376;
  }

  v234 = *(v21 + 140);
  if (v234 >= *(v21 + 144))
  {
    v234 = *(v21 + 144);
  }

  if (v234 >= *(v21 + 148))
  {
    v234 = *(v21 + 148);
  }

  if (v234 < 0xB || (v236 = *(v21 + 20), v235 = *(v21 + 24), v236 == v235))
  {
LABEL_376:
    v237 = 0;
    goto LABEL_377;
  }

  if (v236 <= 2)
  {
    if (v236)
    {
      if (v236 != 1)
      {
        if (v236 != 2)
        {
          goto LABEL_376;
        }

        v317 = v235 > 1;
        goto LABEL_646;
      }

      v237 = v235 != 0;
    }

    else
    {
      v237 = 1;
    }
  }

  else if (v236 > 4)
  {
    if (v236 == 5)
    {
      v320 = (v235 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v236 != 6)
      {
        goto LABEL_376;
      }

      v320 = v235 == 7;
    }

    v237 = v320;
  }

  else
  {
    if (v236 != 3)
    {
      v237 = v235 - 5 < 3;
      goto LABEL_377;
    }

    v317 = v235 > 2;
LABEL_646:
    v237 = v317;
  }

LABEL_377:
  NK_SV_Meas_Update(3, v355, (v20 + 5008), v20 + 49, (v20 + 3490), (v21 + 872), v237, v20 + 43, *(v20 + 82), (v20 + 6024));
  NK_Update_Intermediate_Residual(1, v355, v21, v20);
  v239 = *(v21 + 20);
  v238 = *(v21 + 24);
  if (v239 != v238)
  {
    if (v239 <= 2)
    {
      if (v239)
      {
        if (v239 == 1)
        {
          if (!v238)
          {
            goto LABEL_410;
          }
        }

        else if (v239 != 2 || v238 <= 1)
        {
          goto LABEL_410;
        }
      }

      goto LABEL_401;
    }

    if (v239 > 4)
    {
      if (v239 != 5)
      {
        if (v239 != 6 || v238 != 7)
        {
          goto LABEL_410;
        }

        goto LABEL_401;
      }

      if ((v238 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_401;
      }
    }

    else if (v239 == 3)
    {
      if (v238 > 2)
      {
        goto LABEL_401;
      }
    }

    else
    {
      if (v238 - 5 >= 3)
      {
        goto LABEL_410;
      }

LABEL_401:
      memset_pattern16(v20 + 1604, &unk_29972AEE0, 0x180uLL);
      if ((*(v21 + 233) & 1) == 0 && *(v21 + 11032) <= *(v21 + 16) && v20[242] == 1)
      {
        v240 = *(v21 + 140);
        if (v240 >= *(v21 + 144))
        {
          v240 = *(v21 + 144);
        }

        if (v240 >= *(v21 + 148))
        {
          v240 = *(v21 + 148);
        }

        if (v240 >= 0xB)
        {
          NK_Meas_Outlier_Check(1, *(v20 + 48), (v20 + 702), 0, 0);
          NK_Meas_ARP_Check(1u, v355, (v20 + 702), v346, (v21 + 11440));
        }
      }
    }
  }

LABEL_410:
  if (*(v21 + 11032) > *(v21 + 16) || v20[242] != 1)
  {
    goto LABEL_418;
  }

  v241 = *(v21 + 140);
  if (v241 >= *(v21 + 144))
  {
    v241 = *(v21 + 144);
  }

  if (v241 >= *(v21 + 148))
  {
    v241 = *(v21 + 148);
  }

  if (v241 < 0xB || (v243 = *(v21 + 20), v242 = *(v21 + 24), v243 == v242))
  {
LABEL_418:
    v244 = 0;
    goto LABEL_419;
  }

  if (v243 <= 2)
  {
    if (v243)
    {
      if (v243 != 1)
      {
        if (v243 != 2)
        {
          goto LABEL_418;
        }

        v318 = v242 > 1;
        goto LABEL_650;
      }

      v244 = v242 != 0;
    }

    else
    {
      v244 = 1;
    }
  }

  else if (v243 > 4)
  {
    if (v243 == 5)
    {
      v321 = (v242 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v243 != 6)
      {
        goto LABEL_418;
      }

      v321 = v242 == 7;
    }

    v244 = v321;
  }

  else
  {
    if (v243 != 3)
    {
      v244 = v242 - 5 < 3;
      goto LABEL_419;
    }

    v318 = v242 > 2;
LABEL_650:
    v244 = v318;
  }

LABEL_419:
  NK_SV_Meas_Update(1, v355, (v20 + 5008), v20 + 49, (v20 + 702), (v21 + 872), v244, v20 + 43, 0.0, (v20 + 6024));
  *(v23 + 2384) = *(v23 + 1341);
  NK_Reject_DO_For_Rejected_PR((v20 + 5008), v355, v21, v20);
  *(v20 + 1251) = 0u;
  v246 = *(v21 + 20);
  v245 = *(v21 + 24);
  if (v246 == v245)
  {
    goto LABEL_450;
  }

  if (v246 <= 2)
  {
    if (!v246)
    {
      goto LABEL_443;
    }

    if (v246 == 1)
    {
      if (!v245)
      {
        goto LABEL_450;
      }

      goto LABEL_443;
    }

    if (v246 == 2 && v245 > 1)
    {
      goto LABEL_443;
    }

    goto LABEL_450;
  }

  if (v246 > 4)
  {
    if (v246 == 5)
    {
      if ((v245 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_443;
      }
    }

    else if (v246 == 6 && v245 == 7)
    {
      goto LABEL_443;
    }

    goto LABEL_450;
  }

  if (v246 == 3)
  {
    if (v245 > 2)
    {
      goto LABEL_443;
    }

    goto LABEL_450;
  }

  if (v245 - 5 >= 3)
  {
    goto LABEL_450;
  }

LABEL_443:
  if (*(v21 + 11032) > *(v21 + 16) || v20[242] != 1)
  {
    goto LABEL_450;
  }

  v247 = *(v21 + 140);
  if (v247 >= *(v21 + 144))
  {
    v247 = *(v21 + 144);
  }

  if (v247 >= *(v21 + 148))
  {
    v247 = *(v21 + 148);
  }

  if (v247 <= 0xA)
  {
LABEL_450:
    NK_SV_Meas_Check(v163, v21, v20);
  }

  v248 = NK_SV_Meas_AP_Stats(1, v355, v21, v20);
  *(v23 + 2021) = v248;
  *(v23 + 2022) = 0;
  if (v248)
  {
    *(v23 + 2022) = v248 - 1;
    if (*(v23 + 2027) && *(v23 + 2032) && !v23[513])
    {
      *(v23 + 2022) = v248 - 2;
    }

    if ((*(v21 + 6) & 1) == 0)
    {
      *(v21 + 6) = 1;
    }
  }

  v249 = v341 | v343;
  if (*(v20 + 355) > 10000.0 && *v352 == 1 && v23[60] == 1 && !((*(v20 + 2883) >= 900000000.0) | v249 & 1))
  {
    *(v20 + 2883) = 0x41E2A05F20000000;
    v250 = vdupq_n_s64(0x41E2A05F20000000uLL);
    *(v20 + 1440) = v250;
    *(v20 + 2884) = 0x41E2A05F20000000;
    v251 = p_NA;
    *(p_NA + 640) = v250;
    if (*(v23 + 364) == 1)
    {
      v252 = dbl_29972AED0[*(v21 + 20) < 5u];
      if (*(v20 + 2895) < v252)
      {
        *(v20 + 2894) = v252;
        *(v20 + 2895) = v252;
        *(v251 + 688) = v252;
      }
    }

    if (v20[241] >= 2)
    {
      v20[241] = 1;
    }

    *(v21 + 128) = 1;
    *(v21 + 132) = 38;
  }

  if (v248 >= 3 && *v349 >= 0x1F && *(v20 + 977) >= 0x1Bu && !(v249 & 1 | ((*v352 & 1) == 0)) && v23[60] == 1)
  {
    *(p_NA + 10) = 0;
    *(v23 + 236) = 0;
    v23[567] = 20;
    *(v23 + 364) = 0;
    v23[571] = 20;
    if (v20[241] >= 2)
    {
      v20[241] = 1;
    }

    *(v21 + 128) = 1;
    *(v21 + 132) = 39;
  }

  v253 = NK_SV_Meas_AP_Stats(2, v355, v21, v20);
  *(v23 + 2023) = v253;
  *(v23 + 2025) = v253;
  v254 = NK_SV_Meas_AP_Stats(3, v355, v21, v20);
  *(v23 + 2024) = v254;
  *(v23 + 2025) = *(v23 + 2023) + v254;
  *(v23 + 2030) = *(v23 + 2029) + *(v23 + 2028);
  *(v23 + 2035) = *(v23 + 2034) + *(v23 + 2033);
  *(v23 + 2040) = *(v23 + 2039) + *(v23 + 2038);
  v255 = NK_VVel_Aiding_Required(v21, v20, (v23 + 197));
  *(v23 + 788) = v255;
  if (v255 && Vert_Meas_Update(8u, v20 + 104, 0xBu, (v23 + 197), (v21 + 872), (v21 + 11004), -*(v20 + 116)))
  {
    v23[519] = v23[198];
  }

  v256 = NK_AltP_Aiding_Required(v21, v20, (v23 + 215));
  *(v23 + 860) = v256;
  if (v256 && Vert_Meas_Update(5u, v20 + 104, 0xBu, (v23 + 215), (v21 + 872), (v21 + 11002), *(v20 + 102)))
  {
    v23[518] = v23[216];
  }

  *(v23 + 932) = 0;
  NK_Comp_DOPS(v21, v20);
  v257 = *v171;
  *(v20 + 1575) = *(v171 + 16);
  *(v20 + 1574) = v257;
  v258 = *(v171 + 32);
  v259 = *(v171 + 48);
  v260 = *(v171 + 64);
  *(v20 + 3158) = *(v171 + 80);
  *(v20 + 1578) = v260;
  *(v20 + 1577) = v259;
  *(v20 + 1576) = v258;
  NK_Comp_Sol_Acc(v21, v20);
  NK_Static_Filter(v21, v20, v164, v151);
  v261 = *v171;
  *(v20 + 1575) = *(v171 + 16);
  *(v20 + 1574) = v261;
  v262 = *(v171 + 32);
  v263 = *(v171 + 48);
  v264 = *(v171 + 64);
  *(v20 + 3158) = *(v171 + 80);
  *(v20 + 1578) = v264;
  *(v20 + 1577) = v263;
  *(v20 + 1576) = v262;
  *(v171 + 32) = 0u;
  *(v171 + 48) = 0u;
  *(v171 + 64) = 0u;
  *(v171 + 80) = 0;
  *v171 = 0u;
  *(v171 + 16) = 0u;
  *v385 = *(v21 + 20);
  NK_Validate_Cor(v345, v20 + 3017, v346, (v20 + 208), v385, *v20, (v21 + 233), v20 + 960, v353, (v21 + 236), a11, (v20 + 6296), v20 + 3039, v20 + 3028, v23 + 2410, (v20 + 6318), v20 + 6340, v23 + 652, v20 + 6342, v20 + 6343, v23 + 655, v21 + 6696);
  NK_ARP_Kalman(v355, v20, v21);
  if (*(v20 + 3017) > 1000000000.0)
  {
    *(v20 + 3148) = 0;
    *(v23 + 2410) = 0;
  }

  if (!*(v23 + 2032) && !v23[512] && *(v23 + 508) == 2 && !v23[128] || *(v20 + 3018) > 1000000000.0)
  {
    *(v20 + 3149) = 0;
    *(v23 + 2411) = 0;
  }

  if (!*(v23 + 2037) && !v23[512] && *(v23 + 508) == 4 && !v23[128] || *(v20 + 3019) > 1000000000.0)
  {
    *(v20 + 3150) = 0;
    *(v23 + 2412) = 0;
  }

  *v351 = *(v23 + 2410);
  v351[2] = *(v23 + 2411);
  v351[16] = *(v23 + 2412);
  v351[1] = *(v23 + 2415);
  *(v21 + 10472) = *(v20 + 3148);
  *(v21 + 8280) = *(v20 + 3149);
  *(v21 + 8296) = *(v20 + 3150);
  v265 = *(v20 + 6306);
  *(v342 + 16) = *(v20 + 3155);
  *v342 = v265;
  NK_Correct_State(v20 + 3148, v23 + 2410, v344);
  NK_Transform_State(v344);
  NK_Heading(v21, v20, *(a10 + 60));
  NK_DT_Synch_ProcNoise(v21, v20);
  v266 = *(v20 + 99);
  v267 = -0.5;
  if (v266 > 0.0)
  {
    v267 = 0.5;
  }

  v268 = v266 + v267;
  if (v268 > 2147483650.0)
  {
    v269 = 0x7FFFFFFF;
    goto LABEL_503;
  }

  if (v268 < -2147483650.0)
  {
    v269 = 0x80000000;
    goto LABEL_503;
  }

  v269 = v268;
  if (v268)
  {
LABEL_503:
    v270 = v269;
    v271 = v269 * 0.001;
    Inc_GPS_TOW(v271, v20 + 79, v20 + 323);
    *v385 = 0;
    if (!R8_EQ(v20 + 92, v385))
    {
      *(v20 + 92) = *(v20 + 92) + *(v20 + 95) * v271;
    }

    *v385 = 0;
    if (!R8_EQ(v20 + 93, v385))
    {
      *(v20 + 93) = *(v20 + 93) + *(v20 + 95) * v271;
    }

    *v385 = 0;
    if (!R8_EQ(v20 + 94, v385))
    {
      *(v20 + 94) = *(v20 + 94) + *(v20 + 95) * v271;
    }

    *(v20 + 99) = *(v20 + 99) - v270;
  }

  v272 = *(a10 + 948);
  v273 = v23[652];
  v274 = v23[655];
  *v385 = *(v21 + 20);
  v275 = (v21 + 11028);
  NK_Set_Fix_Type(v23 + 2410, v20 + 3028, v345, v353, v272, v273, v274, v385, *(v20 + 2880), *(v20 + 2894), *(v21 + 16), (v341 | v343) & 1, *(v21 + 11048), v20[3], (v21 + 233), (v21 + 11028), v349, (v21 + 11024), v20 + 6147, v20 + 6148);
  NK_Set_TTFF(v21, v20);
  NK_Check_State(v356 + 604, v21, v20);
  v276 = *(a10 + 1000);
  *v385 = *(a10 + 52);
  NK_Limited_Reset(v21, v20, v385, v276);
  if (*(v20 + 768) == 1)
  {
    v277 = a9;
  }

  else
  {
    v277 = a9;
    if (*(v23 + 2027) && (*v385 = 0, !R8_EQ(v20 + 3148, v385)))
    {
      *(v20 + 768) = 1;
    }

    else
    {
      *v385 = 0;
      if (R8_EQ(v20 + 3148, v385))
      {
        *&v387[0] = 0;
        if (!R8_EQ(v20 + 92, v387))
        {
          *(v20 + 92) = 0;
        }
      }
    }
  }

  if (*(v20 + 769) != 1)
  {
    if (*(v23 + 2032) && (*v385 = 0, !R8_EQ(v20 + 3149, v385)))
    {
      *(v20 + 769) = 1;
    }

    else
    {
      *v385 = 0;
      if (R8_EQ(v20 + 3149, v385))
      {
        *&v387[0] = 0;
        if (!R8_EQ(v20 + 93, v387))
        {
          *(v20 + 93) = 0;
        }
      }
    }
  }

  if (*(v20 + 770) != 1)
  {
    if (*(v23 + 2037) && (*v385 = 0, !R8_EQ(v20 + 3150, v385)))
    {
      *(v20 + 770) = 1;
    }

    else
    {
      *v385 = 0;
      if (R8_EQ(v20 + 3150, v385))
      {
        *&v387[0] = 0;
        if (!R8_EQ(v20 + 94, v387))
        {
          *(v20 + 94) = 0;
        }
      }
    }
  }

  *v385 = *(a10 + 52);
  NK_Final_Check(v21, v20, a10, a11, v356, v385, *(a10 + 992), *(a10 + 1000));
  NK_Set_Accuracy(*(a10 + 1064), v356 + 604, v21, v20);
  NK_Set_TOW_Status(v21, v20);
  if (*(v20 + 644) == 1)
  {
    v278 = v20[160];
    if (v278 >= 3 && (!R8_EQ(v20 + 79, v20 + 3) || v278 != v20[3]))
    {
      LODWORD(v387[0]) = 0;
      LODWORD(v386[0]) = 0;
      *v385 = 0;
      API_Get_UTC_Cor(1, v385);
      GPS_To_Glon_Time(0, *(v20 + 9), *(v20 + 79), *v385, v386, v387, v20 + 98);
      *(v20 + 389) = LOWORD(v386[0]);
      *(v20 + 390) = v387[0];
      *(v20 + 776) = 1;
      v279 = v20[160];
      if (v20[193] < v279 && (*(v357 + 8444) - 2) <= 4)
      {
        v20[193] = v279;
      }
    }
  }

  NK_Publish_Nav_Soln(v356, v20, v21, v277);
  if (*(v20 + 960) == 1)
  {
    *(v21 + 28) = 1;
  }

  NK_Validate_Fix(v21, v20, a10);
  *v277 = *(v23 + 1828);
  v280 = *(v23 + 1829);
  *(v277 + 1) = v280;
  *(v277 + 18) = *(v21 + 30);
  if (v280 == 1)
  {
    *(v21 + 11256) = *(v277 + 352);
    *(v21 + 11264) = *v20;
  }

  if (*v349)
  {
    v281 = *(v23 + 2393);
    v282 = a12;
    if (v281 <= 2)
    {
      ++*(v21 + 11036);
    }
  }

  else
  {
    *(v21 + 11036) = 0;
    v282 = a12;
  }

  if (*(v21 + 11256) < 10.0 || *(v21 + 11036) < 4u)
  {
    if (*v275 >= 0x10u)
    {
      v351[2816] = 0;
      *(v21 + 11092) = *v20;
      *(v21 + 11096) = *(v20 + 95) * 299792458.0;
      *(v21 + 11104) = *(v20 + 118);
    }
  }

  else
  {
    v351[2816] = 1;
  }

  v283 = v20[243];
  if (v283 && !*(a11 + 4))
  {
    *(a11 + 4) = v283;
  }

  *(v282 + 8) = *(v277 + 32);
  *(v282 + 16) = *(v277 + 54);
  *(v282 + 5) = *(v277 + 52);
  *(v282 + 24) = *(v277 + 40);
  *v282 = *(v277 + 48);
  v284 = *(v20 + 3017);
  v285 = *(v20 + 3018);
  v286 = v284 <= v285;
  v287 = v284 > v285;
  if (v284 > v285)
  {
    v284 = *(v20 + 3018);
  }

  v288 = v284 <= *(v20 + 3019);
  v319 = !v287 || !v288;
  v289 = 160;
  if (!v319)
  {
    v289 = 152;
  }

  v319 = !v288 || !v286;
  v290 = 144;
  if (v319)
  {
    v290 = v289;
  }

  *(v282 + 32) = *(v277 + v290);
  *(v282 + 66) = *(v277 + 186);
  *(v282 + 68) = *(v277 + 188);
  *(v282 + 64) = *(v277 + 184);
  *(v282 + 72) = *(v277 + 192);
  *(v282 + 60) = *(v277 + 180);
  *(v282 + 40) = *(v277 + 168);
  *(v282 + 4) = *(v20 + 16);
  v291 = *(v20 + 3088);
  if (v291 >= 9999000.0)
  {
    v293 = v20[3];
    if (v293 >= 0xC)
    {
      __assert_rtn("Generate_DollarG_Message", "Nav_Kalman_Update.cpp", 3126, "FALSE");
    }

    v292 = dword_29972AEF0[v293];
  }

  else
  {
    v292 = fmin(v291 * 0.00000333564095, 999999999.0);
  }

  v294 = g_CB_GDbg;
  v295 = 36;
  v296 = 1u;
  do
  {
    g_CB_GDbg = (v294 + 1);
    *v294 = v295;
    v294 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      v294 = qword_2A1938EF0;
      g_CB_GDbg = qword_2A1938EF0;
    }

    v295 = aG_0[v296++];
  }

  while (v296 != 4);
  sprintf_2d(&g_CB_GDbg, ((*(v20 + 79) + 0.0005) * 1000.0));
  v297 = g_CB_GDbg++;
  *v297 = 32;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  sprintf_1u(&g_CB_GDbg, v20[1]);
  v298 = g_CB_GDbg++;
  *v298 = 32;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  sprintf_2d(&g_CB_GDbg, v292);
  v299 = g_CB_GDbg++;
  *v299 = 32;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  sprintf_1u(&g_CB_GDbg, *v20);
  v300 = g_CB_GDbg++;
  *v300 = 10;
  v301 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v301 = qword_2A1938EF0;
    g_CB_GDbg = qword_2A1938EF0;
  }

  *v301 = 0;
  GNB_Debug_Flush_Check();
  if (!*(v21 + 144))
  {
    *(v21 + 175) = *v338;
    *(v21 + 179) = *(v338 + 4);
  }

  v302 = NK_Set_Aid_Data(v21, v20, v21 + 272);
  v303 = v20[160];
  if (v303 >= 1)
  {
    v302 = Core_Save_ApxTime(*(v20 + 644), v303, *(v20 + 323), v20[157], *(v20 + 79));
    v304 = *(v357 + 8444);
    if (v304 != 3 && (v304 - 7) >= 0xFFFFFFFB)
    {
      v305 = 0;
      LODWORD(v306) = 0;
      v307 = p_NV;
      v308 = *(v357 + 8456);
      v309 = p_NV + 160;
      *(p_NV + 160) = *(v357 + 8440);
      *(v307 + 176) = v308;
      v310 = 55665;
      do
      {
        v311 = *(v309 + v305) ^ BYTE1(v310);
        v310 = 52845 * (v310 + v311) + 22719;
        v306 = (v306 + v311);
        ++v305;
      }

      while (v305 != 24);
      *(v307 + 152) = v306;
    }
  }

  if (*(v282 + 5) == 1 && *(v282 + 16) >= 1717 && v20[160] >= 9 && *v20 != *(v337 + 4))
  {
    v312 = *(v20 + 79) * 1000.0;
    v313 = -0.5;
    if (v312 > 0.0)
    {
      v313 = 0.5;
    }

    v314 = v312 + v313;
    if (v314 <= 2147483650.0)
    {
      if (v314 >= -2147483650.0)
      {
        v315 = v314;
      }

      else
      {
        v315 = 0x80000000;
      }
    }

    else
    {
      v315 = 0x7FFFFFFF;
    }

    v322 = 0;
    LODWORD(v323) = 0;
    v324 = v315 - *v20;
    v325 = p_NV;
    v326 = p_NV + 22856;
    *(p_NV + 22856) = v324;
    *(v325 + 22860) = *v344;
    v327 = 55665;
    do
    {
      v328 = *(v326 + v322) ^ BYTE1(v327);
      v327 = 52845 * (v327 + v328) + 22719;
      v323 = (v323 + v328);
      ++v322;
    }

    while (v322 != 16);
    *(v325 + 22848) = v323;
  }

  v329 = v20[241];
  if (v329 == 3)
  {
    if (*v275 && v20[160] >= 3)
    {
      if (*(v20 + 3093) < 10.0)
      {
        v302 = Core_Save_Clk_Drift(1, *(v20 + 79) + 604800 * *(v20 + 323), *(v20 + 95));
        *(a10 + 992) = *(v20 + 95);
        v330 = *(a10 + 248) * 0.000000001;
        if (!*(a10 + 248))
        {
          v330 = 0.0000001;
        }

        *(a10 + 1000) = v330;
      }

      if (*(v20 + 3086) < 400.0)
      {
        *(v21 + 11056) = v20[156];
        v331 = *(v20 + 102);
        *(v21 + 11064) = *(v20 + 50);
        *(v21 + 11080) = v331;
      }
    }
  }

  else if (v329 <= 1)
  {
    if (*(a10 + 248))
    {
      *(a10 + 1000) = *(a10 + 248) * 0.000000001;
    }

    else if (*v349 >= 0x385)
    {
      *(a10 + 1000) = 0x3EA0C6F7A0B5ED8ELL;
    }
  }

  v332 = *(v20 + 2840);
  *(a10 + 1320) = v20[5682];
  *(a10 + 1312) = v332;
  v333 = *(v20 + 5683);
  *(a10 + 1332) = v20[5685];
  *(a10 + 1324) = v333;
  v334 = *(v20 + 2843);
  *(a10 + 1344) = v20[5688];
  *(a10 + 1336) = v334;
  if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v302))
  {
    NK_Set_Sens_Aug_GNSS_Input(v20, v21, a10, v356, v348, v347, v277, a13);
  }
}

void *plc03_01CodecUInt(void *result, uint64_t *a2, size_t __n, unsigned int *a4, uint64_t *a5, uint64_t a6, unsigned int *a7)
{
  v10 = result;
  v33 = *MEMORY[0x29EDCA608];
  __dst = 0;
  *a6 = 0;
  v11 = *(a2 + 4);
  *(a6 + 6) = v11;
  v12 = *(a5 + 4);
  v13 = *(a5 + 5);
  v14 = v13 - v12;
  if (v13 < v12 || v14 < __n)
  {
    if (result == 1)
    {
      v15 = 59;
    }

    else
    {
      v15 = 57;
    }

    goto LABEL_6;
  }

  v19 = *a2;
  v20 = *a5;
  if (__n == 2)
  {
    v31 = 2;
    memcpy_s("plc03_01CodecUInt", 158, (v20 + v12), v14, (v19 + v11), 2uLL);
    p_dst = &__dst;
    v22 = (v19 + v11);
    v23 = 159;
    v24 = 4;
    v25 = 2;
  }

  else if (__n == 1)
  {
    v31 = 1;
    memcpy_s("plc03_01CodecUInt", 151, (v20 + v12), v14, (v19 + v11), 1uLL);
    p_dst = &__dst;
    v22 = (v19 + v11);
    v23 = 152;
    v24 = 4;
    v25 = 1;
  }

  else
  {
    if ((__n - 3) > 1u)
    {
      v15 = 55;
LABEL_6:
      *a6 = v15;
LABEL_7:
      if (*(a6 + 144) == 1)
      {
        return snprintf((a6 + 16), 0x80uLL, "%c UINT B %d [%u %u] V %u", g_CodecChar[v10], __n, *a4, a4[1], __dst);
      }

      return result;
    }

    v30 = *a5;
    v31 = 4;
    if (result == 1)
    {
      memcpy_s("plc03_01CodecUInt", 174, &__dst, 4u, (v19 + v11), __n);
      v24 = *(a5 + 5) - *(a5 + 4);
      p_dst = (v30 + v12);
      v22 = &__dst;
      v23 = 175;
      v25 = 4;
    }

    else
    {
      memcpy_s("plc03_01CodecUInt", 183, &__dst, 4u, (v19 + v11), 4uLL);
      v24 = *(a5 + 5) - *(a5 + 4);
      p_dst = (v30 + v12);
      v22 = &__dst;
      v23 = 186;
      v25 = __n;
    }
  }

  result = memcpy_s("plc03_01CodecUInt", v23, p_dst, v24, v22, v25);
  if (*a6)
  {
    goto LABEL_7;
  }

  v26 = __dst;
  if (__dst >= *a4 && __dst <= a4[1])
  {
    v27 = 1;
  }

  else
  {
    v27 = 0;
    *a6 = 24;
  }

  v28 = v31;
  if (v10 == 1)
  {
    v29 = __n;
  }

  else
  {
    v29 = v31;
  }

  if (v10 != 1)
  {
    v28 = __n;
  }

  *(a2 + 4) += v29;
  *(a5 + 4) += v28;
  if (a7)
  {
    *a7 = v26;
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t plc03_06CodecFields(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v11 = result;
  v92 = *MEMORY[0x29EDCA608];
  v12 = *(a6 + 148);
  if (v12 >= 9)
  {
    *a6 = 54;
  }

  v13 = *(a6 + 4);
  *(a6 + 4) = 0;
  *(a6 + 148) = v12 + 1;
  if (a4)
  {
    if (result == 1)
    {
      v14 = 59;
    }

    else
    {
      v14 = 57;
    }

    v89 = v14;
    if (result == 1)
    {
      v15 = a5;
    }

    else
    {
      v15 = a2;
    }

    v90 = a6 + 8;
    while (1)
    {
      if (*a6)
      {
        goto LABEL_172;
      }

      v16 = *(a6 + 4);
      *(a6 + 4) = v16 + 1;
      if (v11 == 1)
      {
        v17 = *(a2 + 8);
        v18 = *a3;
        if (*(a2 + 10) - v17 >= *(a3 + 4) || (*a3 - 7) < 3)
        {
          goto LABEL_24;
        }

        *a6 = 20;
        *(a6 + 6) = v17;
        goto LABEL_141;
      }

      if (v11)
      {
        break;
      }

      v20 = *(a3 + 4);
      v21 = *(a5 + 8);
      v18 = *a3;
      if (*(a5 + 10) - v21 >= v20)
      {
        goto LABEL_24;
      }

      if (v18 == 7)
      {
        *(a6 + 4) = v16;
        goto LABEL_76;
      }

      *a6 = 57;
      *(a6 + 6) = v21;
LABEL_141:
      if (!--v8)
      {
        goto LABEL_171;
      }
    }

    v18 = *a3;
LABEL_24:
    if (v18 > 3)
    {
      if (v18 > 5)
      {
        if (v18 == 6)
        {
          v46 = *(v15 + 8);
          result = plc03_06CodecFields(v11, a2, *(a3 + 16), *(a3 + 11), a5, a6);
          if (!*a6 && *(v15 + 8) - v46 != *(a3 + 8) >> 4)
          {
            *a6 = 56;
            if (*(a6 + 144) == 1)
            {
              result = snprintf((a6 + 16), 0x80uLL, "%c S T %d != S %d\n", a4);
            }
          }

          goto LABEL_140;
        }

        if (v18 != 7)
        {
          if (v18 == 8)
          {
            v22 = *(a3 + 8);
            __n[2] = *(a3 + 10);
            __n[0] = 0;
            __n[1] = v22;
            if (v11 == 1)
            {
              v23 = *(a2 + 10) - *(a2 + 8);
              __n[0] = v23;
              result = plc01_02PutUInt32(v23, &__n[1], a5, a6);
              v24 = a5;
            }

            else
            {
              result = plc02_02GetUInt32(a2, &__n[1], __n, a6);
              v23 = __n[0];
              v24 = a2;
            }

            v55 = *(v24 + 8);
            if (v23 < *(a3 + 8) || v23 > *(a3 + 10))
            {
              *a6 = 24;
              if (*(a6 + 144) == 1)
              {
                result = snprintf((a6 + 16), 0x80uLL, "%c PLBS B 4 [%d %d] V %d", g_CodecChar[v11], *(a3 + 8), *(a3 + 10), v23);
                goto LABEL_94;
              }

LABEL_140:
              a3 += 24;
              goto LABEL_141;
            }

LABEL_94:
            if (*a6)
            {
              goto LABEL_140;
            }

            ++*(a6 + 4);
            v56 = *(a5 + 8);
            a4 = *(a5 + 10) - v56;
            if (a4 < LOWORD(__n[0]))
            {
LABEL_96:
              *a6 = v89;
              if (*(a6 + 144) == 1)
              {
                result = snprintf((a6 + 16), 0x80uLL, "%c PLBS SPACE %d < %d", a4);
              }

              goto LABEL_140;
            }

            result = memcpy_s("plc03_08CodecPayLoadByteStream", 1094, (*a5 + v56), a4, (*a2 + *(a2 + 8)), __n[0]);
            v67 = __n[0];
            *(a5 + 8) += LOWORD(__n[0]);
            *(a2 + 8) += v67;
            v34 = *(a3 + 10) + v55;
            if (v11 != 1)
            {
LABEL_77:
              *(a2 + 8) = v34;
              goto LABEL_140;
            }

LABEL_75:
            *(a5 + 8) = v34;
            goto LABEL_140;
          }

LABEL_78:
          *a6 = 52;
          if (*(a6 + 144) == 1)
          {
            result = snprintf((a6 + 16), 0x80uLL, "%c TYPE %d ERR\n", a4);
          }

          goto LABEL_140;
        }

        *(a6 + 4) = v16;
        LOWORD(v20) = *(a3 + 4);
        if (v11 != 1)
        {
LABEL_76:
          v34 = *(a2 + 8) + v20;
          goto LABEL_77;
        }

LABEL_74:
        v34 = *(a5 + 8) + v20;
        goto LABEL_75;
      }

      if (v18 == 4)
      {
        __n[0] = 0;
        *&__n[1] = 0xFFFFFFFF00000000;
        ++*(a6 + 148);
        result = plc03_01CodecUInt(v11, a2, *(a3 + 4), &__n[1], a5, a6, __n);
        if (!*a6)
        {
          v83 = v13;
          v47 = *(a3 + 11);
          v48 = *(v15 + 8);
          if (*(a3 + 11))
          {
            v49 = 0;
            v50 = __n[0];
            v51 = (*(a3 + 16) + 4);
            while (__n[0] != *(v51 - 2))
            {
              --v47;
              ++v49;
              v51 += 8;
              if (!v47)
              {
                goto LABEL_70;
              }
            }

            ++*(a6 + 4);
            v66 = *(v51 + 2);
            if (v66)
            {
              *a6 = 0;
              v82 = v48;
              result = plc03_06CodecFields(v11, a2, v66, *(v51 - 2), a5, a6);
              v48 = v82;
              if (*a6 || (v72 = *v51, v73 = (*(v15 + 8) - v82), v73 != v72) && ((*a6 = 56, (*(a6 + 144) & 1) == 0) || (result = snprintf((a6 + 16), 0x80uLL, "%c U %d T %d != S %d\n", g_CodecChar[v11], v50, v73, v72), v48 = v82, *a6)))
              {
                *(*(a6 + 148) + v90 - 1) = *(*(a6 + 148) + v90 - 1) & 0x3F | 0x80;
                *(*(a6 + 148) + v90 - 1) = *(*(a6 + 148) + v90 - 1) & 0xC0 | v49 & 0x3F;
              }
            }
          }

          else
          {
LABEL_70:
            *a6 = 24;
            if (*(a6 + 144) == 1)
            {
              v52 = v48;
              if (*(a3 + 4) == 1)
              {
                result = snprintf((a6 + 16), 0x80uLL, "%c UNION CHOICE %u('%c') INV");
              }

              else
              {
                result = snprintf((a6 + 16), 0x80uLL, "%c UNION CHOICE %u INV");
              }

              v48 = v52;
            }
          }

          *(v15 + 8) = v48 + (*(a3 + 8) >> 4);
          v13 = v83;
        }

        goto LABEL_139;
      }

      __n[0] = 0;
      ++*(a6 + 148);
      v35 = *(a3 + 10);
      v36 = *(a3 + 4);
      if ((*(a3 + 8) & 0xF) == v35 && !*(a3 + 4))
      {
        __n[0] = *(a3 + 10);
        goto LABEL_106;
      }

      if ((v36 - 1) <= 1)
      {
        __n[1] = *(a3 + 8) & 0xF;
        __n[2] = v35;
        result = plc03_01CodecUInt(v11, a2, v36, &__n[1], a5, a6, __n);
        goto LABEL_106;
      }

      *a6 = 55;
      if (*(a6 + 144) == 1)
      {
        result = snprintf((a6 + 16), 0x80uLL, "%c ARR B %d L [%d %d]", g_CodecChar[v11], v36, *(a3 + 8) & 0xF, *(a3 + 10));
LABEL_106:
        if (!*a6)
        {
          v85 = v13;
          if ((*(a3 + 8) & 0xF) != *(a3 + 10))
          {
            ++*(a6 + 4);
          }

          v81 = *(v15 + 8);
          if (__n[0])
          {
            v60 = 0;
            v61 = 0;
            v62 = *(a3 + 16);
            do
            {
              if (v60)
              {
                break;
              }

              v63 = *(v15 + 8);
              result = plc03_06CodecFields(v11, a2, v62, *(a3 + 11), a5, a6);
              v60 = *a6;
              if (!*a6)
              {
                v64 = *(v15 + 8) - v63;
                if (v64 == *(a3 + 8) >> 4)
                {
                  v60 = 0;
                  goto LABEL_114;
                }

                v60 = 56;
                *a6 = 56;
                if (*(a6 + 144) == 1)
                {
                  result = snprintf((a6 + 16), 0x80uLL, "%c A %d T %d != S %d\n", g_CodecChar[v11], v61, v64, *(a3 + 8) >> 4);
                  v60 = *a6;
                  if (!*a6)
                  {
                    goto LABEL_114;
                  }
                }
              }

              *(*(a6 + 148) + v90 - 1) = *(*(a6 + 148) + v90 - 1) & 0x3F | 0x40;
              *(*(a6 + 148) + v90 - 1) = *(*(a6 + 148) + v90 - 1) & 0xC0 | v61 & 0x3F;
LABEL_114:
              ++v61;
            }

            while (v61 < __n[0]);
          }

          v65 = v81 + ((*(a3 + 8) >> 4) * *(a3 + 10));
          if (v11 == 1)
          {
            v13 = v85;
            if (v65 >= *(a5 + 8))
            {
              *(a5 + 8) = v65;
              goto LABEL_139;
            }
          }

          else
          {
            v13 = v85;
            if (v65 >= *(a2 + 8))
            {
              *(a2 + 8) = v65;
              goto LABEL_139;
            }
          }

          *a6 = 50;
        }
      }

LABEL_139:
      --*(a6 + 148);
      goto LABEL_140;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        result = plc03_01CodecUInt(v11, a2, *(a3 + 4), (a3 + 8), a5, a6, 0);
        goto LABEL_140;
      }

      if (v18 != 1)
      {
        goto LABEL_78;
      }

      v25 = *(a3 + 4);
      __n[1] = 0;
      *a6 = 0;
      v26 = *(a2 + 8);
      *(a6 + 6) = v26;
      v27 = *(a5 + 8);
      v28 = *(a5 + 10);
      v29 = v89;
      a4 = v28 - v27;
      if (v28 < v27)
      {
        goto LABEL_36;
      }

      v29 = v89;
      if (a4 < v25)
      {
        goto LABEL_36;
      }

      v57 = *a2;
      v58 = *a5;
      v29 = 55;
      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v88 = *a5;
          if (v11 == 1)
          {
            memcpy_s("plc03_02CodecInt", 328, &__n[1], 4u, (v57 + v26), 3uLL);
            if ((__n[1] & 0x800000) != 0)
            {
              __n[1] |= 0xFF000000;
            }

            v68 = *(a5 + 10) - *(a5 + 8);
            v80 = 4;
            v69 = (v88 + v27);
            v70 = 334;
            v71 = 4;
          }

          else
          {
            v80 = 4;
            memcpy_s("plc03_02CodecInt", 339, &__n[1], 4u, (v57 + v26), 4uLL);
            v68 = *(a5 + 10) - *(a5 + 8);
            v69 = (v88 + v27);
            v70 = 340;
            v71 = 3;
          }

          result = memcpy_s("plc03_02CodecInt", v70, v69, v68, &__n[1], v71);
LABEL_156:
          if (!*a6)
          {
            if (__n[1] >= *(a3 + 8) && __n[1] <= *(a3 + 12))
            {
              LOWORD(v20) = v80;
              if (v11 == 1)
              {
                v76 = v25;
              }

              else
              {
                v76 = v80;
              }

              if (v11 != 1)
              {
                LOWORD(v20) = v25;
              }

              *(a2 + 8) += v76;
              goto LABEL_74;
            }

            *a6 = 24;
            v74 = v80;
            if (v11 == 1)
            {
              v75 = v25;
            }

            else
            {
              v75 = v80;
            }

            if (v11 != 1)
            {
              v74 = v25;
            }

            *(a2 + 8) += v75;
            *(a5 + 8) += v74;
          }

LABEL_37:
          if (*(a6 + 144) == 1)
          {
            result = snprintf((a6 + 16), 0x80uLL, "%c INT B %d [%d %d] V %d", a4);
          }

          goto LABEL_140;
        }

        if (v25 == 4)
        {
          v80 = 4;
          v86 = *a5;
          result = memcpy_s("plc03_02CodecInt", 347, (v58 + v27), a4, (v57 + v26), 4uLL);
          v59 = *(v86 + v27);
          goto LABEL_144;
        }
      }

      else
      {
        if (v25 == 1)
        {
          v80 = 1;
          v87 = *a5;
          result = memcpy_s("plc03_02CodecInt", 306, (v58 + v27), a4, (v57 + v26), 1uLL);
          v59 = *(v87 + v27);
          goto LABEL_144;
        }

        if (v25 == 2)
        {
          v80 = 2;
          v84 = *a5;
          result = memcpy_s("plc03_02CodecInt", 313, (v58 + v27), a4, (v57 + v26), 2uLL);
          v59 = *(v84 + v27);
LABEL_144:
          __n[1] = v59;
          goto LABEL_156;
        }
      }

LABEL_36:
      *a6 = v29;
      goto LABEL_37;
    }

    if (v18 == 2)
    {
      v37 = *(a3 + 4);
      *a6 = 0;
      v38 = *(a2 + 8);
      *(a6 + 6) = v38;
      if (v37 != 1)
      {
        *a6 = 55;
        if (*(a6 + 144) == 1)
        {
          result = snprintf((a6 + 16), 0x80uLL, "%c UINT LIST B %d != 1", a4);
        }

        goto LABEL_140;
      }

      v39 = *a5;
      v40 = *(a5 + 8);
      v41 = *(*a2 + v38);
      LOBYTE(__n[1]) = v41;
      if (!*(a3 + 8))
      {
        goto LABEL_98;
      }

      v42 = 0;
      do
      {
        v43 = *(*(a3 + 16) + v42++);
      }

      while (v42 < *(a3 + 8) && v41 != v43);
      if (v41 != v43)
      {
LABEL_98:
        *a6 = 24;
        if (*(a6 + 144) == 1)
        {
          result = snprintf((a6 + 16), 0x80uLL, "%c UINT LIST %u INV", a4);
        }

        goto LABEL_140;
      }

      v45 = *(a5 + 10);
      a4 = v45 - v40;
      if (v45 < v40 || a4 <= 0)
      {
        *a6 = v89;
        goto LABEL_140;
      }

      result = memcpy_s("plc03_10CodecUIntList", 1289, (v39 + v40), a4, &__n[1], 1uLL);
      ++*(a2 + 8);
      v34 = *(a5 + 8) + 1;
      goto LABEL_75;
    }

    v30 = *(a3 + 10);
    v31 = *(a3 + 8);
    if (v30 == v31)
    {
      result = memcpy_s("plc03_05CodecByteStream", 785, (*a5 + *(a5 + 8)), *(a5 + 10) - *(a5 + 8), (*a2 + *(a2 + 8)), v30);
      v32 = *(a5 + 8) + *(a3 + 10);
    }

    else
    {
      __n[0] = 0;
      __n[1] = v31;
      __n[2] = v30;
      result = plc03_01CodecUInt(v11, a2, *(a3 + 4), &__n[1], a5, a6, __n);
      if (*a6)
      {
        goto LABEL_140;
      }

      ++*(a6 + 4);
      v53 = *(a5 + 8);
      a4 = *(a5 + 10) - v53;
      if (a4 < LOWORD(__n[0]))
      {
        goto LABEL_96;
      }

      result = memcpy_s("plc03_05CodecByteStream", 822, (*a5 + v53), a4, (*a2 + *(a2 + 8)), __n[0]);
      v54 = *(a5 + 8);
      if (v11 == 1)
      {
        *(a5 + 8) = *(a3 + 10) + v54;
        v33 = __n[0];
        goto LABEL_43;
      }

      v32 = v54 + LOWORD(__n[0]);
    }

    *(a5 + 8) = v32;
    v33 = *(a3 + 10);
LABEL_43:
    v34 = *(a2 + 8) + v33;
    goto LABEL_77;
  }

LABEL_171:
  if (*a6)
  {
LABEL_172:
    v77 = *(a6 + 4) - 1;
    v78 = *(a6 + 148) + a6 + 8;
    *(v78 - 1) |= 0xC0u;
    v79 = *(a6 + 148) + a6 + 8;
    *(v79 - 1) = *(v79 - 1) & 0xC0 | v77 & 0x3F;
  }

  --*(a6 + 148);
  *(a6 + 4) = v13;
  return result;
}

uint64_t Get_Constell_Prn(unsigned int a1)
{
  if (a1 < 0x20)
  {
    return 1;
  }

  if (a1 < 0x38)
  {
    return 2;
  }

  if (a1 < 0x5C)
  {
    return 3;
  }

  if (a1 < 0x81)
  {
    return 4;
  }

  if (a1 < 0x8B)
  {
    return 5;
  }

  if (a1 < 0xB2)
  {
    return 6;
  }

  gn_report_assertion_failure("Get_Constell_Prn:");
  return 0;
}

uint64_t Get_Constell_Pos(unsigned int a1)
{
  if (a1 < 0x20)
  {
    return 1;
  }

  if (a1 < 0x38)
  {
    return 2;
  }

  if (a1 < 0x5C)
  {
    return 3;
  }

  if (a1 < 0x81)
  {
    return 4;
  }

  if (a1 < 0x8B)
  {
    return 5;
  }

  if (a1 < 0x95)
  {
    return 6;
  }

  gn_report_assertion_failure("Get_Constell_Pos:");
  return 0;
}

uint64_t LongPrnIdx_To_Prn(unsigned int a1, int *a2)
{
  v3 = __OFSUB__(a1, 31);
  result = a1 - 31;
  if ((result < 0) ^ v3 | (result == 0))
  {
    if (a2)
    {
      *a2 = 1;
    }

    return a1 + 1;
  }

  else if (a1 > 0x37)
  {
    result = a1 - 91;
    if (a1 > 0x5B)
    {
      if (a1 > 0x80)
      {
        if (a1 > 0x8A)
        {
          if (a1 > 0xB1)
          {
            if (a2)
            {
              *a2 = 0;
            }

            gn_report_assertion_failure("LPrn_2_Prn:");
            return 0;
          }

          else
          {
            if (a2)
            {
              *a2 = 6;
            }

            return a1 - 19;
          }
        }

        else
        {
          if (a2)
          {
            *a2 = 5;
          }

          return a1 + 64;
        }
      }

      else if (a2)
      {
        v5 = 4;
        goto LABEL_9;
      }
    }

    else
    {
      if (a2)
      {
        *a2 = 3;
      }

      return a1 - 55;
    }
  }

  else if (a2)
  {
    v5 = 2;
LABEL_9:
    *a2 = v5;
  }

  return result;
}

uint64_t LongPrnIdx_To_ShortPrnIdx(uint64_t result, _DWORD *a2)
{
  if ((result & 0x80000000) != 0)
  {
    if (a2)
    {
      result = 0;
      *a2 = 0;
      return result;
    }

    return 0;
  }

  if (result <= 0x1F)
  {
    if (a2)
    {
      *a2 = 1;
    }

    return result;
  }

  if (result <= 0x37)
  {
    if (a2)
    {
      *a2 = 2;
    }

    return (result - 32);
  }

  if (result <= 0x5B)
  {
    if (a2)
    {
      *a2 = 3;
    }

    return (result - 56);
  }

  if (result <= 0x80)
  {
    if (a2)
    {
      *a2 = 4;
    }

    return (result - 92);
  }

  if (result <= 0x8A)
  {
    if (a2)
    {
      *a2 = 5;
    }

    return (result - 129);
  }

  if (result > 0xB1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    gn_report_assertion_failure("LPrn_2_SPrn:");
    return 0;
  }

  if (a2)
  {
    *a2 = 6;
  }

  return (result - 139);
}

uint64_t GNSS_Id_To_Num_Prn_Idx(int a1)
{
  v1 = a1;
  v2 = a1;
  v3 = BYTE2(a1);
  if (!BYTE2(a1))
  {
    gn_report_assertion_failure("Id_2_NPrn: 0");
  }

  if ((v2 - 1) > 5)
  {
    v6 = 0;
    v7 = "Id_2_NPrn: 1";
    goto LABEL_9;
  }

  v4 = v3 - Prn_Offset[v1];
  v5 = Num_Prn[v2 - 1];
  v6 = (v4 + v5);
  if (v4 + v5 < 0)
  {
    v6 = 0;
    v7 = "Id_2_NPrn: 2";
    goto LABEL_9;
  }

  if (v6 >= 0xB2)
  {
    v6 = 177;
    v7 = "Id_2_NPrn: 3";
LABEL_9:
    gn_report_assertion_failure(v7);
  }

  return v6;
}

uint64_t Num_Prn_Idx_To_GNSS_Id(int a1)
{
  Constell_Prn = Get_Constell_Prn(a1);
  if (!Constell_Prn)
  {
    v5 = 0;
    v6 = "NPrn_2_Id: 1";
    goto LABEL_7;
  }

  v3 = Prn_Offset[Constell_Prn] + a1;
  v4 = Num_Prn[Constell_Prn - 1];
  v5 = (v3 - v4);
  if (v3 - v4 < 0)
  {
    v5 = 0;
    v6 = "NPrn_2_Id: 2";
    goto LABEL_7;
  }

  if (v5 >= 0x100)
  {
    v5 = 255;
    v6 = "NPrn_2_Id: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  return v5;
}

uint64_t GNSS_Id_To_Num_Pos_Idx(int a1)
{
  v1 = a1;
  v2 = a1;
  v3 = BYTE2(a1);
  if (!BYTE2(a1))
  {
    gn_report_assertion_failure("Id_2_NPos: 0");
  }

  if ((v2 - 1) > 5)
  {
    v6 = 0;
    v7 = "Id_2_NPos: 1";
    goto LABEL_9;
  }

  v4 = v3 - Prn_Offset[v1];
  v5 = Num_Pos[v2 - 1];
  v6 = (v4 + v5);
  if (v4 + v5 < 0)
  {
    v6 = 0;
    v7 = "Id_2_NPos: 2";
    goto LABEL_9;
  }

  if (v6 >= 0x95)
  {
    v6 = 148;
    v7 = "Id_2_NPos: 3";
LABEL_9:
    gn_report_assertion_failure(v7);
  }

  return v6;
}

uint64_t Num_Pos_Idx_To_GNSS_Id(int a1)
{
  Constell_Pos = Get_Constell_Pos(a1);
  if (!Constell_Pos)
  {
    v5 = 0;
    v6 = "NPos_2_Id: 1";
    goto LABEL_7;
  }

  v3 = Prn_Offset[Constell_Pos] + a1;
  v4 = Num_Pos[Constell_Pos - 1];
  v5 = (v3 - v4);
  if (v3 - v4 < 0)
  {
    v5 = 0;
    v6 = "NPos_2_Id: 2";
    goto LABEL_7;
  }

  if (v5 >= 0x100)
  {
    v5 = 255;
    v6 = "NPos_2_Id: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  return v5;
}

uint64_t GNSS_SVId_Constell_To_Num_Pos_Idx(int a1, int a2)
{
  if ((a2 - 1) > 5)
  {
    v4 = 0;
    v5 = "Id&C_2_NPos: 1";
    goto LABEL_7;
  }

  v2 = a1 - Prn_Offset[a2];
  v3 = Num_Pos[a2 - 1];
  v4 = (v2 + v3);
  if (v2 + v3 < 0)
  {
    v4 = 0;
    v5 = "Id&C_2_NPos: 2";
    goto LABEL_7;
  }

  if (v4 >= 0x95)
  {
    v4 = 148;
    v5 = "Id&C_2_NPos: 3";
LABEL_7:
    gn_report_assertion_failure(v5);
  }

  return v4;
}

uint64_t Num_Pos_Idx_To_Num_Prn_Idx(int a1)
{
  Constell_Pos = Get_Constell_Pos(a1);
  if (!Constell_Pos)
  {
    v5 = 0;
    v6 = "NPos_2_NPrn: 1";
    goto LABEL_7;
  }

  v3 = a1 - Num_Pos[Constell_Pos - 1];
  v4 = Num_Prn[Constell_Pos - 1];
  v5 = (v3 + v4);
  if (v3 + v4 < 0)
  {
    v5 = 0;
    v6 = "NPos_2_NPrn: 2";
    goto LABEL_7;
  }

  if (v5 >= 0xB2)
  {
    v5 = 177;
    v6 = "NPos_2_NPrn: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  return v5;
}

uint64_t Num_Prn_Idx_To_Num_Pos_Idx(int a1)
{
  Constell_Prn = Get_Constell_Prn(a1);
  if (!Constell_Prn)
  {
    v5 = 0;
    v6 = "NPrn_2_NPos: 1";
    goto LABEL_7;
  }

  v3 = a1 - Num_Prn[Constell_Prn - 1];
  v4 = Num_Pos[Constell_Prn - 1];
  v5 = (v3 + v4);
  if (v3 + v4 < 0)
  {
    v5 = 0;
    v6 = "NPrn_2_NPos: 2";
    goto LABEL_7;
  }

  if (v5 >= 0x95)
  {
    v5 = 148;
    v6 = "NPrn_2_NPos: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  return v5;
}

char **STEU_Encode(char **a1, char a2, unsigned __int8 *a3, unint64_t *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *a4;
  v6 = (*a4 - a3) % 3;
  if (v6)
  {
    if (v6 == 1)
    {
      *v5 = 0;
      v5 = (*a4 + 1);
      *a4 = v5;
    }

    *v5 = 0;
    ++*a4;
  }

  v7 = (*a1)++;
  *v7 = 123;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  *a1 = v8 + 1;
  *v8 = a2;
  v9 = *a1;
  if (*a1 >= a1[3])
  {
    v9 = a1[2];
    *a1 = v9;
  }

  v16[4] = 0;
  v10 = *a4;
  do
  {
    v11 = *a3;
    v12 = (v11 >> 2) + 48;
    v13 = a3[1];
    v16[1] = ((v13 >> 4) & 0xCF | (16 * (v11 & 3))) + 48;
    LOBYTE(v11) = a3[2];
    v16[2] = ((v11 >> 6) & 0xC3 | (4 * (v13 & 0xF))) + 48;
    v16[3] = (v11 & 0x3F) + 48;
    v14 = 1;
    do
    {
      *a1 = v9 + 1;
      *v9 = v12;
      v9 = *a1;
      if (*a1 >= a1[3])
      {
        v9 = a1[2];
        *a1 = v9;
      }

      v12 = v16[v14++];
    }

    while (v12);
    a3 += 3;
  }

  while (a3 < v10);
  *a4 = a3;

  return STEU_Add_Checksum_LF(a1, v8);
}

char **STEU_Add_Checksum_LF(uint64_t a1, char *a2)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    v7 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v6 = *a2++;
      v5 = v6;
      if (a2 >= *(a1 + 24))
      {
        a2 = *(a1 + 16);
      }

      v4 += v5;
    }

    while (a2 != v3);
    v7 = v4;
  }

  *a1 = v3 + 1;
  *v3 = 125;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  result = sprintf_02x(a1, v7);
  v9 = (*a1)++;
  *v9 = 10;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  return result;
}

char **STEU_Encode_c(char **a1, char a2, int a3, unsigned __int8 *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = (*a1)++;
  *v5 = 123;
  v6 = *a1;
  if (*a1 >= a1[3])
  {
    v6 = a1[2];
  }

  *a1 = v6 + 1;
  *v6 = 99;
  v7 = *a1;
  if (*a1 >= a1[3])
  {
    v7 = a1[2];
  }

  *a1 = v7 + 1;
  *v7 = a2;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
    *a1 = v8;
  }

  v15[4] = 0;
  v9 = &a4[a3];
  do
  {
    v10 = *a4;
    v11 = (v10 >> 2) + 48;
    v12 = a4[1];
    v15[1] = ((v12 >> 4) & 0xCF | (16 * (v10 & 3))) + 48;
    LOBYTE(v10) = a4[2];
    v15[2] = ((v10 >> 6) & 0xC3 | (4 * (v12 & 0xF))) + 48;
    v15[3] = (v10 & 0x3F) + 48;
    v13 = 1;
    do
    {
      *a1 = v8 + 1;
      *v8 = v11;
      v8 = *a1;
      if (*a1 >= a1[3])
      {
        v8 = a1[2];
        *a1 = v8;
      }

      v11 = v15[v13++];
    }

    while (v11);
    a4 += 3;
  }

  while (a4 < v9);

  return STEU_Add_Checksum_LF(a1, v6);
}

char **STEU_Encode_X(char **a1, char a2, unsigned __int8 *a3, unint64_t *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *a4;
  v6 = (*a4 - a3) % 3;
  if (v6)
  {
    if (v6 == 1)
    {
      *v5 = 0;
      v5 = (*a4 + 1);
      *a4 = v5;
    }

    *v5 = 0;
    ++*a4;
  }

  v7 = (*a1)++;
  *v7 = 123;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  *a1 = v8 + 1;
  *v8 = 88;
  v9 = *a1;
  if (*a1 >= a1[3])
  {
    v9 = a1[2];
  }

  *a1 = v9 + 1;
  *v9 = a2;
  v10 = *a1;
  if (*a1 >= a1[3])
  {
    v10 = a1[2];
    *a1 = v10;
  }

  v17[4] = 0;
  v11 = *a4;
  do
  {
    v12 = *a3;
    v13 = (v12 >> 2) + 48;
    v14 = a3[1];
    v17[1] = ((v14 >> 4) & 0xCF | (16 * (v12 & 3))) + 48;
    LOBYTE(v12) = a3[2];
    v17[2] = ((v12 >> 6) & 0xC3 | (4 * (v14 & 0xF))) + 48;
    v17[3] = (v12 & 0x3F) + 48;
    v15 = 1;
    do
    {
      *a1 = v10 + 1;
      *v10 = v13;
      v10 = *a1;
      if (*a1 >= a1[3])
      {
        v10 = a1[2];
        *a1 = v10;
      }

      v13 = v17[v15++];
    }

    while (v13);
    a3 += 3;
  }

  while (a3 < v11);
  *a4 = a3;

  return STEU_Add_Checksum_LF(a1, v8);
}

uint64_t Hal04_ComputeChecksum(unsigned __int8 *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
LABEL_10:
      LbsOsaTrace_WriteLog(0xDu, __str, v5, 0, 1);
    }

    return 0;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
      goto LABEL_10;
    }

    return 0;
  }

  v2 = 0;
  v3 = a2;
  do
  {
    v4 = *a1++;
    v2 += v4;
    --v3;
  }

  while (v3);
  return v2;
}

char *SUPL_Message_Init(void)
{
  result = operator new(0x90uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = 0;
    *(result + 1) = 0;
    result[16] = -1;
    *(result + 5) = -1;
    *(result + 12) = -1;
    *(result + 7) = 1;
    result[32] = -1;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    result[136] = -1;
  }

  return result;
}

double SUPL_Message_Free(void *a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = a1[15];
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = v3[5];
        if (v4)
        {
          v3[6] = v4;
          operator delete(v4);
        }

        v5 = v3[2];
        if (v5)
        {
          v3[3] = v5;
          operator delete(v5);
        }

        MEMORY[0x29C29EB20](v3, 0x1010C409FCE3EA6);
        v2 = a1[15];
      }

      *v2 = 0;
      v6 = v2[1];
      if (v6)
      {
        v7 = *(v6 + 192);
        if (v7)
        {
          *(v6 + 200) = v7;
          operator delete(v7);
        }

        MEMORY[0x29C29EB20](v6, 0x1020C40D4F58230);
        v2 = a1[15];
      }

      v2[1] = 0;
      MEMORY[0x29C29EB20]();
      a1[15] = 0;
    }

    v8 = a1[16];
    if (v8)
    {
      ASN1T_CellInfo::~ASN1T_CellInfo(v8);
      MEMORY[0x29C29EB20]();
    }

    a1[16] = 0;
    v9 = a1[11];
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        *(v9 + 16) = v10;
        operator delete(v10);
      }

      MEMORY[0x29C29EB20](v9, 0x1010C4039DDA56CLL);
    }

    a1[11] = 0;
    v11 = a1[13];
    if (v11)
    {
      v12 = *(v11 + 8);
      if (v12)
      {
        *(v11 + 16) = v12;
        operator delete(v12);
      }

      MEMORY[0x29C29EB20](v11, 0x1010C40D464F2E8);
    }

    a1[13] = 0;
    v13 = a1[12];
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        *(v13 + 8) = v14;
        operator delete(v14);
      }

      MEMORY[0x29C29EB20](v13, 0x1010C4005AEBDE9);
    }

    a1[12] = 0;
    v15 = a1[14];
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        *(v15 + 8) = v16;
        operator delete(v16);
      }

      MEMORY[0x29C29EB20](v15, 0x1010C407D6C095DLL);
    }

    a1[14] = 0;
    v17 = a1[8];
    if (v17)
    {
      a1[9] = v17;
      operator delete(v17);
    }

    v18 = a1[5];
    if (v18)
    {
      a1[6] = v18;
      operator delete(v18);
    }

    JUMPOUT(0x29C29EB20);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 69, "SUPL_Message_Free", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 0, 1);
  }

  return result;
}

void *GNSS_Write_NMEA(void *result)
{
  if (result)
  {
    v1 = result;
    v3 = *result;
    v2 = result[1];
    if (v2 != *result)
    {
      if (v2 > *result)
      {
        v3 = result[3];
      }

      v4 = v3 - v2;
      result = GN_GPS_Write_NMEA((v3 - v2), v2);
      v5 = result;
      if (g_Enable_Nav_Debug >= 0x101u)
      {
        result = GN_GPS_Write_Nav_Debug(result, v1[1]);
      }

      v6 = (v1[1] + v5);
      v1[1] = v6;
      if (v6 >= v1[3])
      {
        v6 = v1[2];
        v1[1] = v6;
        if (v5 == v4)
        {
          result = GN_GPS_Write_NMEA((*v1 - v6), v6);
          v7 = result;
          if (g_Enable_Nav_Debug >= 0x101u)
          {
            result = GN_GPS_Write_Nav_Debug(result, v1[1]);
          }

          v6 = (v1[1] + v7);
          v1[1] = v6;
        }
      }

      if (v6 == *v1)
      {
        v8 = v1[2];
        *v1 = v8;
        v1[1] = v8;
      }
    }
  }

  return result;
}

void NMEA_Encode(char **a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v951 = *MEMORY[0x29EDCA608];
  if (!a2 || !a1 || !a3)
  {
    return;
  }

  v5 = a4;
  v6 = a2;
  v7 = *a2;
  v948 = a3;
  if (v7 >= 1 && v7 <= ++_MergedGlobals_3)
  {
    v8 = (*a1)++;
    *v8 = 36;
    v9 = *a1;
    if (*a1 >= a1[3])
    {
      v9 = a1[2];
    }

    v10 = 71;
    v11 = 1u;
    v12 = v9;
    do
    {
      *a1 = v12 + 1;
      *v12 = v10;
      v12 = *a1;
      if (*a1 >= a1[3])
      {
        v12 = a1[2];
        *a1 = v12;
      }

      v10 = aGpgga[v11++];
    }

    while (v11 != 7);
    sprintf_HHMMSS(a1, a3);
    v13 = *(v948 + 296);
    v14 = *(v948 + 318) != 1 || v13 == 0;
    if (v14)
    {
      v15 = 0;
      v16 = *a1;
      v17 = 44;
      v5 = a4;
      do
      {
        *a1 = v16 + 1;
        *v16 = v17;
        v16 = *a1;
        if (*a1 >= a1[3])
        {
          v16 = a1[2];
          *a1 = v16;
        }

        v17 = a00MM[++v15];
      }

      while (v15 != 16);
    }

    else
    {
      sprintf_LatLon(a1, *(v948 + 96), *(v948 + 104));
      v18 = 0x323132313630uLL >> (8 * v13);
      if (v13 >= 6)
      {
        LOBYTE(v18) = 48;
      }

      v19 = (*a1)++;
      *v19 = v18;
      v20 = *a1;
      if (*a1 >= a1[3])
      {
        v20 = a1[2];
      }

      *a1 = v20 + 1;
      *v20 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v948 + 320), __dst, 0, 0);
      v21 = (*a1)++;
      *v21 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_DOP(a1, *(v948 + 264));
      v22 = (*a1)++;
      *v22 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v23 = *(v948 + 120) * 1000.0;
      v24 = -0.5;
      if (v23 > 0.0)
      {
        v24 = 0.5;
      }

      v25 = v23 + v24;
      if (v25 <= 2147483650.0)
      {
        if (v25 >= -2147483650.0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0x80000000;
        }
      }

      else
      {
        v26 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v26, 4);
      v27 = *a1;
      v28 = 44;
      v29 = 1u;
      do
      {
        *a1 = v27 + 1;
        *v27 = v28;
        v27 = *a1;
        if (*a1 >= a1[3])
        {
          v27 = a1[2];
          *a1 = v27;
        }

        v28 = aM[v29++];
      }

      while (v29 != 4);
      v30 = (*(v948 + 112) - *(v948 + 120)) * 1000.0;
      v31 = -0.5;
      if (v30 > 0.0)
      {
        v31 = 0.5;
      }

      v32 = v30 + v31;
      if (v32 <= 2147483650.0)
      {
        if (v32 >= -2147483650.0)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0x80000000;
        }
      }

      else
      {
        v33 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v33, 4);
      v34 = *a1;
      v35 = 44;
      v36 = 1u;
      do
      {
        *a1 = v34 + 1;
        *v34 = v35;
        v34 = *a1;
        if (*a1 >= a1[3])
        {
          v34 = a1[2];
          *a1 = v34;
        }

        v35 = aM[v36++];
      }

      while (v36 != 4);
      *a1 = v34 + 1;
      *v34 = 44;
      v5 = a4;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }
    }

    NMEA_Add_checksum(a1, v9);
    a3 = v948;
    _MergedGlobals_3 = 0;
  }

  v37 = v6[1];
  if (v37 >= 1 && v37 <= ++word_2A197178A)
  {
    v38 = (*a1)++;
    *v38 = 36;
    v39 = *a1;
    if (*a1 >= a1[3])
    {
      v39 = a1[2];
    }

    v40 = 71;
    v41 = 1u;
    v42 = v39;
    do
    {
      *a1 = v42 + 1;
      *v42 = v40;
      v42 = *a1;
      if (*a1 >= a1[3])
      {
        v42 = a1[2];
        *a1 = v42;
      }

      v40 = aGpgll[v41++];
    }

    while (v41 != 7);
    v43 = *(a3 + 296);
    if (*(a3 + 318) != 1 || v43 == 0)
    {
      v45 = 0;
      v46 = 44;
      v5 = a4;
      do
      {
        *a1 = v42 + 1;
        *v42 = v46;
        v42 = *a1;
        if (*a1 >= a1[3])
        {
          v42 = a1[2];
          *a1 = v42;
        }

        v46 = asc_29979FFDD[++v45];
      }

      while (v45 != 4);
      sprintf_HHMMSS(a1, a3);
      v47 = "V,N";
    }

    else
    {
      v48 = a3;
      sprintf_LatLon(a1, *(a3 + 96), *(a3 + 104));
      sprintf_HHMMSS(a1, v48);
      if (v43 > 5)
      {
        v47 = "V,N";
      }

      else
      {
        v47 = off_29EF51AF8[v43 - 1];
      }

      v5 = a4;
    }

    v49 = *v47;
    if (*v47)
    {
      v50 = *a1;
      v51 = (v47 + 1);
      do
      {
        *a1 = v50 + 1;
        *v50 = v49;
        v50 = *a1;
        if (*a1 >= a1[3])
        {
          v50 = a1[2];
          *a1 = v50;
        }

        v52 = *v51++;
        v49 = v52;
      }

      while (v52);
    }

    NMEA_Add_checksum(a1, v39);
    word_2A197178A = 0;
    a3 = v948;
  }

  v53 = v6[2];
  if (v53 >= 1 && v53 <= ++word_2A197178C)
  {
    v54 = *(a3 + 319);
    v929 = v6;
    if (*(a3 + 319))
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = a3 + 6088;
      while (1)
      {
        if (*(v61 + v55) != 1 || !*(a3 + v55 + 1732))
        {
          goto LABEL_104;
        }

        v62 = *(a3 + 4 * v55 + 324);
        if (v62 > 3)
        {
          switch(v62)
          {
            case 4:
              ++v58;
              break;
            case 5:
              ++v57;
              break;
            case 6:
              ++v56;
              break;
            default:
              goto LABEL_101;
          }
        }

        else if (v62 >= 2)
        {
          if (v62 == 2)
          {
            ++v60;
            goto LABEL_104;
          }

          if (v62 != 3)
          {
LABEL_101:
            EvCrt_Illegal_Default("NMEA_Encode_GSA", 658);
            a3 = v948;
            v54 = *(v948 + 319);
            goto LABEL_104;
          }

          ++v59;
        }

LABEL_104:
        if (++v55 >= v54)
        {
          v944 = v58 > 0;
          v939 = v60 > 0;
          BYTE4(v934) = v56 > 0;
          v937 = v59 > 0;
          LOBYTE(v934) = v57 > 0;
          goto LABEL_107;
        }
      }
    }

    v939 = 0;
    v937 = 0;
    v944 = 0;
    v934 = 0;
LABEL_107:
    v63 = 0;
    if (*(a3 + 316) == 1)
    {
      v64 = 77;
    }

    else
    {
      v64 = 65;
    }

    v946 = v64;
    v65 = *(a3 + 296);
    if (!*(a3 + 318))
    {
      v65 = 0;
    }

    v945 = v65;
    v66 = v65 & 0xFFFFFFFE;
    if (v66 == 2)
    {
      v67 = 50;
    }

    else
    {
      v67 = 49;
    }

    if (v66 == 4)
    {
      v68 = 51;
    }

    else
    {
      v68 = v67;
    }

    v69 = a3 + 6088;
    v70 = 1;
LABEL_119:
    v943 = v70;
    v71 = 1;
    while (v71 == 1 || v71 == 4 && v944)
    {
      v74 = (*a1)++;
      *v74 = 36;
      v73 = *a1;
      if (*a1 >= a1[3])
      {
        v73 = a1[2];
      }

      v75 = "GP";
      if ((v943 & 1) == 0)
      {
        goto LABEL_131;
      }

LABEL_132:
      v76 = *v75;
      v77 = v73;
      if (*v75)
      {
        v78 = (v75 + 1);
        v77 = v73;
        do
        {
          *a1 = v77 + 1;
          *v77 = v76;
          v77 = *a1;
          if (*a1 >= a1[3])
          {
            v77 = a1[2];
            *a1 = v77;
          }

          v79 = *v78++;
          v76 = v79;
        }

        while (v79);
      }

      v80 = 0;
      v81 = 71;
      do
      {
        *a1 = v77 + 1;
        *v77 = v81;
        v77 = *a1;
        if (*a1 >= a1[3])
        {
          v77 = a1[2];
          *a1 = v77;
        }

        v81 = aGsa[++v80];
      }

      while (v80 != 4);
      *a1 = v77 + 1;
      *v77 = v946;
      v82 = *a1;
      if (*a1 >= a1[3])
      {
        v82 = a1[2];
      }

      *a1 = v82 + 1;
      *v82 = 44;
      v83 = *a1;
      if (*a1 >= a1[3])
      {
        v83 = a1[2];
      }

      *a1 = v83 + 1;
      *v83 = v68;
      v84 = *a1;
      if (*a1 >= a1[3])
      {
        v84 = a1[2];
      }

      *a1 = v84 + 1;
      *v84 = 44;
      v85 = *a1;
      if (*a1 >= a1[3])
      {
        v85 = a1[2];
        *a1 = v85;
      }

      if (v945)
      {
        v86 = 0;
        v87 = 0;
        do
        {
          if (*(v69 + v86) == 1 && *(a3 + v86 + 1732) && v71 == *(a3 + 4 * v86 + 324))
          {
            ++v87;
            v88 = Encode_Nmea_Id(*(a3 + v86 + 1732), v71);
            sprintf_02d(a1, v88);
            v89 = (*a1)++;
            *v89 = 44;
            v85 = *a1;
            if (*a1 >= a1[3])
            {
              v85 = a1[2];
              *a1 = v85;
            }

            a3 = v948;
          }

          if (v86 > 0x7E)
          {
            break;
          }

          ++v86;
        }

        while (v87 != 12);
        if (v87 <= 11)
        {
          v90 = v87 - 12;
          do
          {
            *a1 = v85 + 1;
            *v85 = 44;
            v85 = *a1;
            if (*a1 >= a1[3])
            {
              v85 = a1[2];
              *a1 = v85;
            }

            v91 = __CFADD__(v90++, 1);
          }

          while (!v91);
        }

        sprintf_DOP(a1, *(a3 + 280));
        v92 = (*a1)++;
        *v92 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf_DOP(a1, *(v948 + 264));
        v93 = (*a1)++;
        *v93 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf_DOP(a1, *(v948 + 272));
      }

      else
      {
        for (i = 15; i > 1; --i)
        {
          *a1 = v85 + 1;
          *v85 = 44;
          v85 = *a1;
          if (*a1 >= a1[3])
          {
            v85 = a1[2];
            *a1 = v85;
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        goto LABEL_196;
      }

      v95 = (*a1)++;
      *v95 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      if (v71 <= 2)
      {
        if (!v71)
        {
          goto LABEL_190;
        }

        if (v71 != 1 && v71 != 2)
        {
LABEL_189:
          EvCrt_Illegal_Default("NMEA_Encode_GSA", 766);
LABEL_190:
          v97 = -1;
          v96 = 1;
          goto LABEL_192;
        }

LABEL_188:
        v96 = 0;
        v97 = v71;
        goto LABEL_192;
      }

      if (v71 > 4)
      {
        if (v71 == 5)
        {
          goto LABEL_188;
        }

        if (v71 != 6)
        {
          goto LABEL_189;
        }

        v96 = 0;
        v97 = 3;
      }

      else
      {
        v96 = 0;
        if (v71 == 3)
        {
          v97 = 4;
        }

        else
        {
          v97 = 1;
        }
      }

LABEL_192:
      if (v97 >= 0)
      {
        v98 = v97;
      }

      else
      {
        v98 = -v97;
      }

      sprintf1da(a1, v98, __dst, 0, v96);
LABEL_196:
      NMEA_Add_checksum(a1, v73);
      a3 = v948;
LABEL_197:
      if (++v71 == 7)
      {
        v70 = 0;
        v63 = 1;
        if ((v943 & 1) == 0)
        {
          word_2A197178C = 0;
          v6 = v929;
          v5 = a4;
          goto LABEL_200;
        }

        goto LABEL_119;
      }
    }

    if ((v63 & v939 & (v71 == 2)) == 0 && (v63 & v937 & (v71 == 3)) == 0 && ((v63 & BYTE4(v934)) & (v71 == 6)) == 0 && ((v63 & v934) & (v71 == 5)) != 1)
    {
      goto LABEL_197;
    }

    v72 = (*a1)++;
    *v72 = 36;
    v73 = *a1;
    if (*a1 >= a1[3])
    {
      v73 = a1[2];
    }

LABEL_131:
    v75 = "GN";
    goto LABEL_132;
  }

LABEL_200:
  v99 = v6[3];
  if (v99 >= 1 && v99 <= ++word_2A197178E)
  {
    v100 = (*a1)++;
    *v100 = 36;
    v101 = *a1;
    if (*a1 >= a1[3])
    {
      v101 = a1[2];
    }

    v102 = 0;
    v103 = 71;
    v104 = v101;
    do
    {
      *a1 = v104 + 1;
      *v104 = v103;
      v104 = *a1;
      if (*a1 >= a1[3])
      {
        v104 = a1[2];
        *a1 = v104;
      }

      v103 = aGn[++v102];
    }

    while (v102 != 2);
    v105 = 0;
    v106 = 71;
    do
    {
      *a1 = v104 + 1;
      *v104 = v106;
      v104 = *a1;
      if (*a1 >= a1[3])
      {
        v104 = a1[2];
        *a1 = v104;
      }

      v106 = aGst[++v105];
    }

    while (v105 != 4);
    sprintf_HHMMSS(a1, a3);
    v107 = v948;
    if (*(v948 + 320))
    {
      sprintf_AccEst(a1, *(v948 + 248));
      v107 = v948;
    }

    v108 = (*a1)++;
    *v108 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf_AccEst(a1, *(v107 + 200));
    v109 = (*a1)++;
    *v109 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf_AccEst(a1, *(v948 + 208));
    v110 = (*a1)++;
    *v110 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v111 = *(v948 + 216);
    if (v111 >= 0)
    {
      v112 = v111;
    }

    else
    {
      v112 = -v111;
    }

    sprintf1da(a1, v112, __dst, 0, v111 >> 31);
    v113 = (*a1)++;
    *v113 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf_AccEst(a1, *(v948 + 176));
    v114 = (*a1)++;
    *v114 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf_AccEst(a1, *(v948 + 184));
    v115 = (*a1)++;
    *v115 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf_AccEst(a1, *(v948 + 192));
    NMEA_Add_checksum(a1, v101);
    a3 = v948;
    word_2A197178E = 0;
    v5 = a4;
  }

  v116 = v6[4];
  if (v116 >= 1 && v116 <= ++word_2A1971790)
  {
    v947 = a3 + 324;
    memcpy(__dst, (a3 + 324), sizeof(__dst));
    a3 = v948;
    v117 = *(v948 + 319);
    v930 = v6;
    if (*(v948 + 319))
    {
      v932 = 0;
      v933 = 0;
      v935 = 0;
      v118 = (v948 + 1732);
      v119 = __dst;
      do
      {
        if (*v118++)
        {
          v121 = *v119;
          if (*v119 > 3)
          {
            if (v121 == 4)
            {
              *v119 = 1;
              ++v935;
            }

            else
            {
              v128 = HIDWORD(v932);
              if (v121 == 6)
              {
                v129 = HIDWORD(v932) + 1;
              }

              else
              {
                v129 = HIDWORD(v932);
              }

              v14 = v121 == 5;
              v130 = v932;
              if (v14)
              {
                v130 = v932 + 1;
              }

              else
              {
                v128 = v129;
              }

              v932 = __PAIR64__(v128, v130);
            }
          }

          else
          {
            v123 = v933;
            v122 = HIDWORD(v933);
            if (v121 == 3)
            {
              v124 = HIDWORD(v933) + 1;
            }

            else
            {
              v124 = HIDWORD(v933);
            }

            if (v121 == 2)
            {
              v125 = v933 + 1;
            }

            else
            {
              v125 = v933;
            }

            if (v121 == 2)
            {
              v124 = HIDWORD(v933);
            }

            v126 = v121 == 1;
            v127 = v935;
            if (v126)
            {
              v127 = v935 + 1;
            }

            else
            {
              v123 = v125;
            }

            LODWORD(v933) = v123;
            if (!v126)
            {
              v122 = v124;
            }

            HIDWORD(v933) = v122;
            v935 = v127;
          }
        }

        ++v119;
        --v117;
      }

      while (v117);
    }

    else
    {
      v935 = 0;
      v932 = 0;
      v933 = 0;
    }

    v131 = 0;
    v132 = v948 + 1732;
    while (1)
    {
      v133 = HIDWORD(v932);
      if (v131 == 3)
      {
        v134 = 6;
      }

      else
      {
        v133 = v932;
        v134 = 5;
      }

      if (v131 == 2)
      {
        v133 = HIDWORD(v933);
        v134 = 3;
      }

      v135 = v933;
      if (v131)
      {
        v136 = 2;
      }

      else
      {
        v135 = v935;
        v136 = 1;
      }

      if (v131 > 1)
      {
        v137 = v134;
      }

      else
      {
        v133 = v135;
        v137 = v136;
      }

      v940 = v133;
      v138 = __OFSUB__(v133, 1);
      v139 = v133 - 1;
      if (v139 < 0 == v138)
      {
        break;
      }

LABEL_386:
      if (++v131 == 5)
      {
        word_2A1971790 = 0;
        v6 = v930;
        v5 = a4;
        goto LABEL_388;
      }
    }

    v140 = 0;
    v141 = 0;
    v142 = v139 >> 2;
    v143 = v142 + 1;
    v144 = 1;
    v938 = v131;
    v936 = v142 + 1;
    while (1)
    {
      v145 = (*a1)++;
      *v145 = 36;
      v146 = *a1;
      if (*a1 >= a1[3])
      {
        v146 = a1[2];
      }

      v147 = "GN";
      if (v131 <= 4)
      {
        v147 = off_29EF51B20[v131];
      }

      v148 = *v147;
      v149 = v146;
      if (*v147)
      {
        v150 = (v147 + 1);
        v149 = v146;
        do
        {
          *a1 = v149 + 1;
          *v149 = v148;
          v149 = *a1;
          if (*a1 >= a1[3])
          {
            v149 = a1[2];
            *a1 = v149;
          }

          v151 = *v150++;
          v148 = v151;
        }

        while (v151);
      }

      v152 = 0;
      v153 = 71;
      do
      {
        *a1 = v149 + 1;
        *v149 = v153;
        v149 = *a1;
        if (*a1 >= a1[3])
        {
          v149 = a1[2];
          *a1 = v149;
        }

        v153 = aGsv[++v152];
      }

      while (v152 != 4);
      v941 = v146;
      sprintf1da(a1, v143, v950, 0, 0);
      v154 = (*a1)++;
      *v154 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, v144, v950, 0, 0);
      v155 = (*a1)++;
      *v155 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v942 = v144;
      sprintf_02d(a1, v940);
      if (v141 <= 127)
      {
        v156 = 0;
        v157 = v141 - 128;
        do
        {
          if (!*(v132 + v141) || __dst[v141] != v137)
          {
            ++v141;
            goto LABEL_339;
          }

          v140 = *(v948 + 836 + 4 * v141);
          v158 = (*a1)++;
          *v158 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          v159 = Encode_Nmea_Id(*(v132 + v141), *(v947 + 4 * v141));
          sprintf_02d(a1, v159);
          v160 = (*a1)++;
          *v160 = 44;
          v161 = *a1;
          if (*a1 >= a1[3])
          {
            v161 = a1[2];
            *a1 = v161;
          }

          v162 = *(v948 + 5064 + 8 * v141);
          if (v162 >= -5.0)
          {
            v165 = v162 * 10.0;
            if (v165 <= 0.0)
            {
              v166 = -0.5;
            }

            else
            {
              v166 = 0.5;
            }

            v167 = v165 + v166;
            if (v167 <= 2147483650.0)
            {
              if (v167 >= -2147483650.0)
              {
                v168 = v167;
              }

              else
              {
                v168 = 0x80000000;
              }
            }

            else
            {
              v168 = 0x7FFFFFFFLL;
            }

            sprintf_2f(a1, v168);
            v169 = (*a1)++;
            *v169 = 44;
            if (*a1 >= a1[3])
            {
              *a1 = a1[2];
            }

            v170 = *(v948 + 4040 + 8 * v141) * 10.0;
            if (v170 <= 0.0)
            {
              v171 = -0.5;
            }

            else
            {
              v171 = 0.5;
            }

            v172 = v170 + v171;
            if (v172 <= 2147483650.0)
            {
              if (v172 >= -2147483650.0)
              {
                v173 = v172;
              }

              else
              {
                v173 = 0x80000000;
              }
            }

            else
            {
              v173 = 0x7FFFFFFFLL;
            }

            sprintf_2f(a1, v173);
            v164 = a1;
          }

          else
          {
            *a1 = v161 + 1;
            *v161 = 44;
            v163 = *a1;
            v164 = a1 + 2;
            if (*a1 < a1[3])
            {
              goto LABEL_325;
            }
          }

          v163 = *v164;
LABEL_325:
          *a1 = v163 + 1;
          *v163 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          v174 = *(v948 + 1992 + 8 * v141);
          if (v174 > 0.0)
          {
            v175 = v174 * 10.0;
            if (v175 <= 0.0)
            {
              v176 = -0.5;
            }

            else
            {
              v176 = 0.5;
            }

            v177 = v175 + v176;
            if (v177 <= 2147483650.0)
            {
              if (v177 >= -2147483650.0)
              {
                v178 = v177;
              }

              else
              {
                v178 = 0x80000000;
              }
            }

            else
            {
              v178 = 0x7FFFFFFFLL;
            }

            sprintf_2f(a1, v178);
          }

          ++v141;
          if (v156 > 2)
          {
            break;
          }

          ++v156;
LABEL_339:
          v91 = __CFADD__(v157++, 1);
        }

        while (!v91);
      }

      v179 = (*a1)++;
      *v179 = 44;
      v180 = *a1;
      if (*a1 >= a1[3])
      {
        v180 = a1[2];
        *a1 = v180;
      }

      v181 = 49;
      if (v140 > 50)
      {
        break;
      }

      if (v140 > 32)
      {
        v182 = v942;
        if (v140 > 35)
        {
          if (v140 != 36)
          {
            if (v140 == 49)
            {
              goto LABEL_382;
            }

            if (v140 != 50)
            {
              goto LABEL_381;
            }
          }
        }

        else if (v140 != 34)
        {
          goto LABEL_382;
        }

        goto LABEL_372;
      }

      v182 = v942;
      if (v140 > 17)
      {
        if (v140 != 18)
        {
          if (v140 != 19)
          {
            if (v140 != 20)
            {
              goto LABEL_381;
            }

            goto LABEL_378;
          }

LABEL_379:
          v181 = 53;
          goto LABEL_382;
        }

LABEL_372:
        v181 = 51;
        goto LABEL_382;
      }

      if (v140)
      {
        if (v140 != 17)
        {
LABEL_381:
          EvCrt_Illegal_Default("NMEA_Encode_GSV", 1026);
          v180 = *a1;
          v181 = 48;
        }

LABEL_382:
        *a1 = v180 + 1;
        *v180 = v181;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }
      }

      NMEA_Add_checksum(a1, v941);
      v143 = v936;
      v14 = v182 == v936;
      v144 = (v182 + 1);
      a3 = v948;
      v131 = v938;
      if (v14)
      {
        goto LABEL_386;
      }
    }

    if (v140 <= 82)
    {
      v182 = v942;
      if (v140 <= 64)
      {
        if (v140 == 51)
        {
          goto LABEL_379;
        }

        if (v140 != 52)
        {
          goto LABEL_381;
        }

        goto LABEL_378;
      }

      if (v140 == 65 || v140 == 81)
      {
        goto LABEL_382;
      }

      if (v140 != 82)
      {
        goto LABEL_381;
      }
    }

    else
    {
      v182 = v942;
      if (v140 <= 98)
      {
        if (v140 == 83)
        {
          goto LABEL_372;
        }

        if (v140 != 97)
        {
          if (v140 != 98)
          {
            goto LABEL_381;
          }

          goto LABEL_382;
        }

LABEL_378:
        v181 = 55;
        goto LABEL_382;
      }

      if (v140 != 99)
      {
        if (v140 != 100)
        {
          if (v140 != 101)
          {
            goto LABEL_381;
          }

          goto LABEL_379;
        }

        goto LABEL_372;
      }
    }

    v181 = 50;
    goto LABEL_382;
  }

LABEL_388:
  v183 = v6[5];
  if (v183 >= 1 && v183 <= ++word_2A1971792)
  {
    v184 = (*a1)++;
    *v184 = 36;
    v185 = *a1;
    if (*a1 >= a1[3])
    {
      v185 = a1[2];
    }

    v186 = 71;
    v187 = 1u;
    v188 = v185;
    do
    {
      *a1 = v188 + 1;
      *v188 = v186;
      v188 = *a1;
      if (*a1 >= a1[3])
      {
        v188 = a1[2];
        *a1 = v188;
      }

      v186 = aGprmc[v187++];
    }

    while (v187 != 7);
    sprintf_HHMMSS(a1, a3);
    v189 = v948;
    if (*(v948 + 318))
    {
      v190 = *(v948 + 296);
    }

    else
    {
      v190 = 0;
    }

    if (v190)
    {
      if (v190 <= 0)
      {
        v191 = 86;
      }

      else
      {
        v191 = 65;
      }

      v192 = (*a1)++;
      *v192 = v191;
      v193 = *a1;
      if (*a1 >= a1[3])
      {
        v193 = a1[2];
      }

      *a1 = v193 + 1;
      *v193 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_LatLon(a1, *(v948 + 96), *(v948 + 104));
      v194 = *(v948 + 128) * 1.94279547 * 1000.0;
      v195 = -0.5;
      if (v194 > 0.0)
      {
        v195 = 0.5;
      }

      v196 = v194 + v195;
      if (v196 <= 2147483650.0)
      {
        if (v196 >= -2147483650.0)
        {
          v197 = v196;
        }

        else
        {
          v197 = 0x80000000;
        }
      }

      else
      {
        v197 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v197, 4);
      v201 = (*a1)++;
      *v201 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v202 = *(v948 + 136) * 10.0;
      v203 = -0.5;
      if (v202 > 0.0)
      {
        v203 = 0.5;
      }

      v204 = v202 + v203;
      if (v204 <= 2147483650.0)
      {
        if (v204 >= -2147483650.0)
        {
          v205 = v204;
        }

        else
        {
          v205 = 0x80000000;
        }
      }

      else
      {
        v205 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v205);
      v206 = (*a1)++;
      *v206 = 44;
      v199 = *a1;
      v189 = v948;
      if (*a1 >= a1[3])
      {
        v199 = a1[2];
        *a1 = v199;
      }
    }

    else
    {
      v198 = 0;
      v199 = *a1;
      v200 = 86;
      do
      {
        *a1 = v199 + 1;
        *v199 = v200;
        v199 = *a1;
        if (*a1 >= a1[3])
        {
          v199 = a1[2];
          *a1 = v199;
        }

        v200 = aV[++v198];
      }

      while (v198 != 8);
    }

    if (*(v189 + 9) == 1)
    {
      sprintf_02d(a1, *(v189 + 14));
      sprintf_02d(a1, *(v948 + 12));
      sprintf_02d(a1, *(v948 + 10) - 2000);
      v199 = *a1;
    }

    *a1 = v199 + 1;
    *v199 = 44;
    v207 = *a1;
    if (*a1 >= a1[3])
    {
      v207 = a1[2];
    }

    *a1 = v207 + 1;
    *v207 = 44;
    v208 = *a1;
    if (*a1 >= a1[3])
    {
      v208 = a1[2];
    }

    *a1 = v208 + 1;
    *v208 = 44;
    v209 = *a1;
    if (*a1 >= a1[3])
    {
      v209 = a1[2];
    }

    v210 = 0x44414441454EuLL >> (8 * v190);
    if (v190 >= 6)
    {
      LOBYTE(v210) = 78;
    }

    *a1 = v209 + 1;
    *v209 = v210;
    v211 = *a1;
    if (*a1 >= a1[3])
    {
      v211 = a1[2];
    }

    v212 = 0;
    v213 = 44;
    v5 = a4;
    do
    {
      *a1 = v211 + 1;
      *v211 = v213;
      v211 = *a1;
      if (*a1 >= a1[3])
      {
        v211 = a1[2];
        *a1 = v211;
      }

      v213 = aV_0[++v212];
    }

    while (v212 != 2);
    NMEA_Add_checksum(a1, v185);
    word_2A1971792 = 0;
    a3 = v948;
  }

  v214 = v6[6];
  if (v214 >= 1 && v214 <= ++word_2A1971794)
  {
    v215 = (*a1)++;
    *v215 = 36;
    v216 = *a1;
    if (*a1 >= a1[3])
    {
      v216 = a1[2];
    }

    v217 = 71;
    v218 = 1u;
    v219 = v216;
    do
    {
      *a1 = v219 + 1;
      *v219 = v217;
      v219 = *a1;
      if (*a1 >= a1[3])
      {
        v219 = a1[2];
        *a1 = v219;
      }

      v217 = aGpvtg[v218++];
    }

    while (v218 != 7);
    v220 = *(a3 + 296);
    if (*(a3 + 318) != 1 || v220 == 0)
    {
      v222 = 44;
      v223 = 1u;
      v5 = a4;
      do
      {
        *a1 = v219 + 1;
        *v219 = v222;
        v219 = *a1;
        if (*a1 >= a1[3])
        {
          v219 = a1[2];
          *a1 = v219;
        }

        v222 = aTMNKN[v223++];
      }

      while (v223 != 14);
      goto LABEL_514;
    }

    v224 = *(a3 + 136) * 10.0;
    v225 = -0.5;
    if (v224 > 0.0)
    {
      v225 = 0.5;
    }

    v226 = v224 + v225;
    if (v226 <= 2147483650.0)
    {
      if (v226 >= -2147483650.0)
      {
        v227 = v226;
      }

      else
      {
        v227 = 0x80000000;
      }
    }

    else
    {
      v227 = 0x7FFFFFFFLL;
    }

    sprintf_2f(a1, v227);
    v228 = *a1;
    v229 = 44;
    v230 = 1u;
    do
    {
      *a1 = v228 + 1;
      *v228 = v229;
      v228 = *a1;
      if (*a1 >= a1[3])
      {
        v228 = a1[2];
        *a1 = v228;
      }

      v229 = aT_1[v230++];
    }

    while (v230 != 4);
    v231 = 44;
    v232 = 1u;
    do
    {
      *a1 = v228 + 1;
      *v228 = v231;
      v228 = *a1;
      if (*a1 >= a1[3])
      {
        v228 = a1[2];
        *a1 = v228;
      }

      v231 = aM[v232++];
    }

    while (v232 != 4);
    v233 = *(v948 + 128) * 1.94279547 * 1000.0;
    v234 = -0.5;
    if (v233 > 0.0)
    {
      v234 = 0.5;
    }

    v235 = v233 + v234;
    if (v235 <= 2147483650.0)
    {
      if (v235 >= -2147483650.0)
      {
        v236 = v235;
      }

      else
      {
        v236 = 0x80000000;
      }
    }

    else
    {
      v236 = 0x7FFFFFFFLL;
    }

    sprintf_4f(a1, v236, 4);
    v237 = *a1;
    v238 = 44;
    v239 = 1u;
    do
    {
      *a1 = v237 + 1;
      *v237 = v238;
      v237 = *a1;
      if (*a1 >= a1[3])
      {
        v237 = a1[2];
        *a1 = v237;
      }

      v238 = aN_0[v239++];
    }

    while (v239 != 4);
    v240 = *(v948 + 128) * 3.6 * 1000.0;
    v241 = -0.5;
    if (v240 > 0.0)
    {
      v241 = 0.5;
    }

    v242 = v240 + v241;
    if (v242 <= 2147483650.0)
    {
      if (v242 >= -2147483650.0)
      {
        v243 = v242;
      }

      else
      {
        v243 = 0x80000000;
      }
    }

    else
    {
      v243 = 0x7FFFFFFFLL;
    }

    sprintf_4f(a1, v243, 4);
    v244 = *a1;
    v245 = 44;
    v246 = 1u;
    do
    {
      *a1 = v244 + 1;
      *v244 = v245;
      v244 = *a1;
      if (*a1 >= a1[3])
      {
        v244 = a1[2];
        *a1 = v244;
      }

      v245 = aK[v246++];
    }

    while (v246 != 4);
    if (v220 <= 2)
    {
      if (v220 != 1)
      {
        if (v220 == 2)
        {
          goto LABEL_506;
        }

LABEL_509:
        *a1 = v244 + 1;
        v247 = 78;
        goto LABEL_512;
      }

      *a1 = v244 + 1;
      v247 = 69;
    }

    else
    {
      if (v220 != 3 && v220 != 5)
      {
        if (v220 == 4)
        {
LABEL_506:
          *a1 = v244 + 1;
          v247 = 65;
          goto LABEL_512;
        }

        goto LABEL_509;
      }

      *a1 = v244 + 1;
      v247 = 68;
    }

LABEL_512:
    *v244 = v247;
    v5 = a4;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

LABEL_514:
    NMEA_Add_checksum(a1, v216);
    a3 = v948;
    word_2A1971794 = 0;
  }

  v248 = v6[7];
  if (v248 >= 1 && v248 <= ++word_2A1971796)
  {
    v249 = (*a1)++;
    *v249 = 36;
    v250 = *a1;
    if (*a1 >= a1[3])
    {
      v250 = a1[2];
    }

    v251 = 0;
    v252 = 71;
    v253 = v250;
    do
    {
      *a1 = v253 + 1;
      *v253 = v252;
      v253 = *a1;
      if (*a1 >= a1[3])
      {
        v253 = a1[2];
        *a1 = v253;
      }

      v252 = aGn[++v251];
    }

    while (v251 != 2);
    v254 = 0;
    v255 = 90;
    do
    {
      *a1 = v253 + 1;
      *v253 = v255;
      v253 = *a1;
      if (*a1 >= a1[3])
      {
        v253 = a1[2];
        *a1 = v253;
      }

      v255 = aZcd[++v254];
    }

    while (v254 != 4);
    v256 = v6;
    v257 = *(a3 + 4);
    v258 = v257 % 0x3E8;
    sprintf1da(a1, v257 / 0x3E8uLL, __dst, 0, 0);
    v259 = (*a1)++;
    *v259 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf_03d(a1, v258);
    v260 = 0;
    v261 = *a1;
    v262 = 44;
    v6 = v256;
    do
    {
      *a1 = v261 + 1;
      *v261 = v262;
      v261 = *a1;
      if (*a1 >= a1[3])
      {
        v261 = a1[2];
        *a1 = v261;
      }

      v262 = asc_2997A0088[++v260];
    }

    while (v260 != 2);
    NMEA_Add_checksum(a1, v250);
    word_2A1971796 = 0;
    a3 = v948;
  }

  v263 = v6[8];
  if (v263 >= 1 && v263 <= ++word_2A1971798)
  {
    v264 = (*a1)++;
    *v264 = 36;
    v265 = *a1;
    if (*a1 >= a1[3])
    {
      v265 = a1[2];
    }

    v266 = 0;
    v267 = 71;
    v268 = v265;
    do
    {
      *a1 = v268 + 1;
      *v268 = v267;
      v268 = *a1;
      if (*a1 >= a1[3])
      {
        v268 = a1[2];
        *a1 = v268;
      }

      v267 = aGn[++v266];
    }

    while (v266 != 2);
    v269 = 0;
    v270 = 90;
    do
    {
      *a1 = v268 + 1;
      *v268 = v270;
      v268 = *a1;
      if (*a1 >= a1[3])
      {
        v268 = a1[2];
        *a1 = v268;
      }

      v270 = aZda[++v269];
    }

    while (v269 != 4);
    sprintf_HHMMSS(a1, a3);
    if (*(v948 + 9) == 1)
    {
      sprintf_02d(a1, *(v948 + 14));
      v271 = (*a1)++;
      *v271 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_02d(a1, *(v948 + 12));
      v272 = (*a1)++;
      *v272 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_02d(a1, *(v948 + 10));
      v273 = *a1;
      v5 = a4;
    }

    else
    {
      v274 = 0;
      v273 = *a1;
      v275 = 44;
      do
      {
        *a1 = v273 + 1;
        *v273 = v275;
        v273 = *a1;
        if (*a1 >= a1[3])
        {
          v273 = a1[2];
          *a1 = v273;
        }

        v275 = asc_2997A0090[++v274];
      }

      while (v274 != 2);
    }

    v276 = 0;
    v277 = 44;
    do
    {
      *a1 = v273 + 1;
      *v273 = v277;
      v273 = *a1;
      if (*a1 >= a1[3])
      {
        v273 = a1[2];
        *a1 = v273;
      }

      v277 = asc_2997A0090[++v276];
    }

    while (v276 != 2);
    NMEA_Add_checksum(a1, v265);
    word_2A1971798 = 0;
    a3 = v948;
  }

  v278 = v6[9];
  if (v278 >= 1 && v278 <= ++word_2A197179A)
  {
    v279 = (*a1)++;
    *v279 = 36;
    v280 = *a1;
    if (*a1 >= a1[3])
    {
      v280 = a1[2];
    }

    v281 = 80;
    v282 = 1u;
    v283 = v280;
    do
    {
      *a1 = v283 + 1;
      *v283 = v281;
      v283 = *a1;
      if (*a1 >= a1[3])
      {
        v283 = a1[2];
        *a1 = v283;
      }

      v281 = aPdbga[v282++];
    }

    while (v282 != 7);
    v284 = a3;
    sprintf_HHMMSS(a1, a3);
    v285 = *(v284 + 292);
    if (v285 >= 0)
    {
      v286 = v285;
    }

    else
    {
      v286 = -v285;
    }

    sprintf1da(a1, v286, __dst, 0, v285 >> 31);
    v287 = (*a1)++;
    *v287 = 44;
    v288 = *a1;
    if (*a1 >= a1[3])
    {
      v288 = a1[2];
      *a1 = v288;
    }

    v289 = *(v948 + 296);
    if (v289)
    {
      if (v289 >= 0)
      {
        v290 = v289;
      }

      else
      {
        v290 = -v289;
      }

      sprintf1da(a1, v290, __dst, 0, v289 >> 31);
      v291 = (*a1)++;
      *v291 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v948 + 317), __dst, 0, 0);
      v292 = (*a1)++;
      *v292 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v948 + 318), __dst, 0, 0);
      v293 = (*a1)++;
      *v293 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 200));
      v294 = (*a1)++;
      *v294 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 208));
      v295 = (*a1)++;
      *v295 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v296 = *(v948 + 216);
      if (v296 >= 0)
      {
        v297 = v296;
      }

      else
      {
        v297 = -v296;
      }

      sprintf1da(a1, v297, __dst, 0, v296 >> 31);
      v298 = (*a1)++;
      *v298 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 192));
      v299 = (*a1)++;
      *v299 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 224));
      v300 = (*a1)++;
      *v300 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 232));
      v301 = (*a1)++;
      *v301 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 240));
      v302 = (*a1)++;
      *v302 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 152) * 1000.0);
      v303 = (*a1)++;
      *v303 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 160) * 1000000000.0);
      v304 = (*a1)++;
      *v304 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 168) * 1000000000.0);
      v305 = (*a1)++;
      *v305 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v306 = *(v948 + 144) * 1000.0;
      v307 = -0.5;
      if (v306 > 0.0)
      {
        v307 = 0.5;
      }

      v308 = v306 + v307;
      if (v308 <= 2147483650.0)
      {
        if (v308 >= -2147483650.0)
        {
          v309 = v308;
        }

        else
        {
          v309 = 0x80000000;
        }
      }

      else
      {
        v309 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v309, 4);
      v312 = (*a1)++;
      *v312 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v313 = *(v948 + 300);
      if (v313 >= 0)
      {
        v314 = v313;
      }

      else
      {
        v314 = -v313;
      }

      sprintf1da(a1, v314, __dst, 0, v313 >> 31);
      v315 = (*a1)++;
      *v315 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v316 = *(v948 + 304);
      if (v316 >= 0)
      {
        v317 = v316;
      }

      else
      {
        v317 = -v316;
      }

      sprintf1da(a1, v317, __dst, 0, v316 >> 31);
      v318 = (*a1)++;
      *v318 = 44;
      v319 = *a1;
      if (*a1 >= a1[3])
      {
        v319 = a1[2];
      }

      v320 = 0;
      v321 = 48;
      do
      {
        *a1 = v319 + 1;
        *v319 = v321;
        v319 = *a1;
        if (*a1 >= a1[3])
        {
          v319 = a1[2];
          *a1 = v319;
        }

        v321 = a0x_0[++v320];
      }

      while (v320 != 2);
      sprintf_08x(a1, *(v948 + 312));
      v322 = (*a1)++;
      *v322 = 44;
      v323 = *a1;
      if (*a1 >= a1[3])
      {
        v323 = a1[2];
      }

      v324 = 0;
      v325 = 48;
      do
      {
        *a1 = v323 + 1;
        *v323 = v325;
        v323 = *a1;
        if (*a1 >= a1[3])
        {
          v323 = a1[2];
          *a1 = v323;
        }

        v325 = a0x_0[++v324];
      }

      while (v324 != 2);
      sprintf_03x(a1, *(v948 + 288));
      v326 = (*a1)++;
      *v326 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v327 = *(v948 + 308);
      if (v327 >= 0)
      {
        v328 = v327;
      }

      else
      {
        v328 = -v327;
      }

      sprintf1da(a1, v328, __dst, 0, v327 >> 31);
    }

    else
    {
      v310 = 48;
      v311 = 1u;
      do
      {
        *a1 = v288 + 1;
        *v288 = v310;
        v288 = *a1;
        if (*a1 >= a1[3])
        {
          v288 = a1[2];
          *a1 = v288;
        }

        v310 = a0_1[v311++];
      }

      while (v311 != 15);
    }

    NMEA_Add_checksum(a1, v280);
    if (v5 && *v5 == *v948 && *(v5 + 4) == *(v948 + 4))
    {
      v329 = (*a1)++;
      *v329 = 36;
      v330 = *a1;
      if (*a1 >= a1[3])
      {
        v330 = a1[2];
      }

      v331 = 80;
      v332 = 1u;
      v333 = v330;
      do
      {
        *a1 = v333 + 1;
        *v333 = v331;
        v333 = *a1;
        if (*a1 >= a1[3])
        {
          v333 = a1[2];
          *a1 = v333;
        }

        v331 = aPdbgc[v332++];
      }

      while (v332 != 7);
      sprintf_HHMMSS(a1, v948);
      v334 = *a1;
      if (*(v5 + 8))
      {
        *a1 = v334 + 1;
        *v334 = 65;
        v335 = *a1;
        if (*a1 >= a1[3])
        {
          v335 = a1[2];
        }

        *a1 = v335 + 1;
        *v335 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 9), __dst, 0, 0);
        v336 = (*a1)++;
        *v336 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 10), __dst, 0, 0);
        v337 = (*a1)++;
        *v337 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf_3f(a1, (*(v5 + 12) / 10), 3);
        v338 = (*a1)++;
        *v338 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 16), __dst, 0, 0);
        v339 = (*a1)++;
        *v339 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 17), __dst, 0, 0);
        v340 = (*a1)++;
        *v340 = 44;
        v334 = *a1;
        if (*a1 >= a1[3])
        {
          v334 = a1[2];
        }
      }

      else
      {
        v341 = 78;
        v342 = 1u;
        do
        {
          *a1 = v334 + 1;
          *v334 = v341;
          v334 = *a1;
          if (*a1 >= a1[3])
          {
            v334 = a1[2];
            *a1 = v334;
          }

          v341 = aN_1[v342++];
        }

        while (v342 != 8);
      }

      if (*(v5 + 18))
      {
        *a1 = v334 + 1;
        *v334 = 65;
        v343 = *a1;
        if (*a1 >= a1[3])
        {
          v343 = a1[2];
        }

        *a1 = v343 + 1;
        *v343 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 19), __dst, 0, 0);
        v344 = (*a1)++;
        *v344 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 20), __dst, 0, 0);
        v345 = (*a1)++;
        *v345 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf_3f(a1, (*(v5 + 24) / 10), 3);
        v346 = (*a1)++;
        *v346 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 28), __dst, 0, 0);
        v347 = (*a1)++;
        *v347 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 29), __dst, 0, 0);
        v348 = (*a1)++;
        *v348 = 44;
        v334 = *a1;
        if (*a1 >= a1[3])
        {
          v334 = a1[2];
        }
      }

      else
      {
        v349 = 78;
        v350 = 1u;
        do
        {
          *a1 = v334 + 1;
          *v334 = v349;
          v334 = *a1;
          if (*a1 >= a1[3])
          {
            v334 = a1[2];
            *a1 = v334;
          }

          v349 = aN_1[v350++];
        }

        while (v350 != 8);
      }

      if (*(v5 + 30))
      {
        *a1 = v334 + 1;
        *v334 = 65;
        v351 = *a1;
        if (*a1 >= a1[3])
        {
          v351 = a1[2];
        }

        *a1 = v351 + 1;
        *v351 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 31), __dst, 0, 0);
        v352 = (*a1)++;
        *v352 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 32), __dst, 0, 0);
        v353 = (*a1)++;
        *v353 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf_3f(a1, (*(v5 + 36) / 10), 3);
        v354 = (*a1)++;
        *v354 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 40), __dst, 0, 0);
        v355 = (*a1)++;
        *v355 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 41), __dst, 0, 0);
      }

      else
      {
        v356 = 78;
        v357 = 1u;
        do
        {
          *a1 = v334 + 1;
          *v334 = v356;
          v334 = *a1;
          if (*a1 >= a1[3])
          {
            v334 = a1[2];
            *a1 = v334;
          }

          v356 = aN_2[v357++];
        }

        while (v357 != 7);
      }

      NMEA_Add_checksum(a1, v330);
      v358 = (*a1)++;
      *v358 = 36;
      v359 = *a1;
      if (*a1 >= a1[3])
      {
        v359 = a1[2];
      }

      v360 = 80;
      v361 = 1u;
      v362 = v359;
      do
      {
        *a1 = v362 + 1;
        *v362 = v360;
        v362 = *a1;
        if (*a1 >= a1[3])
        {
          v362 = a1[2];
          *a1 = v362;
        }

        v360 = aPdbgd[v361++];
      }

      while (v361 != 7);
      sprintf_HHMMSS(a1, v948);
      v363 = *a1;
      if (*(v5 + 42))
      {
        *a1 = v363 + 1;
        *v363 = 65;
        v364 = *a1;
        if (*a1 >= a1[3])
        {
          v364 = a1[2];
        }

        *a1 = v364 + 1;
        *v364 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 43), __dst, 0, 0);
        v365 = (*a1)++;
        *v365 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 44), __dst, 0, 0);
        v366 = (*a1)++;
        *v366 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf_3f(a1, (*(v5 + 48) / 10), 3);
        v367 = (*a1)++;
        *v367 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v368 = *(v5 + 56) * 100.0;
        v369 = -0.5;
        if (v368 > 0.0)
        {
          v369 = 0.5;
        }

        v370 = v368 + v369;
        if (v370 <= 2147483650.0)
        {
          if (v370 >= -2147483650.0)
          {
            v371 = v370;
          }

          else
          {
            v371 = 0x80000000;
          }
        }

        else
        {
          v371 = 0x7FFFFFFFLL;
        }

        sprintf_3f(a1, v371, 3);
        v374 = (*a1)++;
        *v374 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v375 = *(v5 + 64) * 100.0;
        v376 = -0.5;
        if (v375 > 0.0)
        {
          v376 = 0.5;
        }

        v377 = v375 + v376;
        if (v377 <= 2147483650.0)
        {
          if (v377 >= -2147483650.0)
          {
            v378 = v377;
          }

          else
          {
            v378 = 0x80000000;
          }
        }

        else
        {
          v378 = 0x7FFFFFFFLL;
        }

        sprintf_3f(a1, v378, 3);
        v379 = (*a1)++;
        *v379 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 72), __dst, 0, 0);
      }

      else
      {
        v372 = 78;
        v373 = 1u;
        do
        {
          *a1 = v363 + 1;
          *v363 = v372;
          v363 = *a1;
          if (*a1 >= a1[3])
          {
            v363 = a1[2];
            *a1 = v363;
          }

          v372 = aN_1[v373++];
        }

        while (v373 != 8);
      }

      NMEA_Add_checksum(a1, v359);
      v380 = (*a1)++;
      *v380 = 36;
      v381 = *a1;
      if (*a1 >= a1[3])
      {
        v381 = a1[2];
      }

      v382 = 80;
      v383 = 1u;
      v384 = v381;
      do
      {
        *a1 = v384 + 1;
        *v384 = v382;
        v384 = *a1;
        if (*a1 >= a1[3])
        {
          v384 = a1[2];
          *a1 = v384;
        }

        v382 = aPdbge[v383++];
      }

      while (v383 != 7);
      sprintf_HHMMSS(a1, v948);
      v385 = 0;
      v386 = *a1;
      v387 = 65;
      do
      {
        *a1 = v386 + 1;
        *v386 = v387;
        v386 = *a1;
        if (*a1 >= a1[3])
        {
          v386 = a1[2];
          *a1 = v386;
        }

        v387 = aA[++v385];
      }

      while (v385 != 2);
      sprintf1da(a1, *(v5 + 73), __dst, 0, 0);
      v388 = (*a1)++;
      *v388 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 74), __dst, 0, 0);
      v389 = (*a1)++;
      *v389 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 75), __dst, 0, 0);
      v390 = (*a1)++;
      *v390 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 76), __dst, 0, 0);
      v391 = (*a1)++;
      *v391 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 78), __dst, 0, 0);
      v392 = (*a1)++;
      *v392 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 80), __dst, 0, 0);
      v393 = (*a1)++;
      *v393 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 82), __dst, 0, 0);
      v394 = (*a1)++;
      *v394 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 83), __dst, 0, 0);
      v395 = (*a1)++;
      *v395 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 84), __dst, 0, 0);
      v396 = (*a1)++;
      *v396 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 85), __dst, 0, 0);
      v397 = (*a1)++;
      *v397 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v398 = *(v5 + 86);
      if (v398 >= 0)
      {
        v399 = v398;
      }

      else
      {
        v399 = -v398;
      }

      sprintf1da(a1, v399, __dst, 0, (v398 >> 7) & 1);
      v400 = (*a1)++;
      *v400 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 87), __dst, 0, 0);
      v401 = (*a1)++;
      *v401 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 88), __dst, 0, 0);
      v402 = (*a1)++;
      *v402 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 89), __dst, 0, 0);
      v403 = (*a1)++;
      *v403 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 90), __dst, 0, 0);
      v404 = (*a1)++;
      *v404 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 92), __dst, 0, 0);
      v405 = (*a1)++;
      *v405 = 44;
      v406 = *a1;
      if (*a1 >= a1[3])
      {
        v406 = a1[2];
      }

      v407 = 0;
      v408 = 82;
      do
      {
        *a1 = v406 + 1;
        *v406 = v408;
        v406 = *a1;
        if (*a1 >= a1[3])
        {
          v406 = a1[2];
          *a1 = v406;
        }

        v408 = aR[++v407];
      }

      while (v407 != 2);
      sprintf1da(a1, *(v5 + 94), __dst, 0, 0);
      v409 = (*a1)++;
      *v409 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 96), __dst, 0, 0);
      v410 = (*a1)++;
      *v410 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 98), __dst, 0, 0);
      v411 = (*a1)++;
      *v411 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 100), __dst, 0, 0);
      v412 = (*a1)++;
      *v412 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 101), __dst, 0, 0);
      v413 = (*a1)++;
      *v413 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 102), __dst, 0, 0);
      v414 = (*a1)++;
      *v414 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 103), __dst, 0, 0);
      v415 = (*a1)++;
      *v415 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 104), __dst, 0, 0);
      v416 = (*a1)++;
      *v416 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v417 = *(v5 + 112) * 10.0;
      v418 = -0.5;
      if (v417 > 0.0)
      {
        v418 = 0.5;
      }

      v419 = v417 + v418;
      if (v419 <= 2147483650.0)
      {
        if (v419 >= -2147483650.0)
        {
          v420 = v419;
        }

        else
        {
          v420 = 0x80000000;
        }
      }

      else
      {
        v420 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v420);
      v421 = (*a1)++;
      *v421 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v422 = *(v5 + 120) * 10.0;
      v423 = -0.5;
      if (v422 > 0.0)
      {
        v423 = 0.5;
      }

      v424 = v422 + v423;
      if (v424 <= 2147483650.0)
      {
        if (v424 >= -2147483650.0)
        {
          v425 = v424;
        }

        else
        {
          v425 = 0x80000000;
        }
      }

      else
      {
        v425 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v425);
      v426 = (*a1)++;
      *v426 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v427 = *(v5 + 128) * 10.0;
      v428 = -0.5;
      if (v427 > 0.0)
      {
        v428 = 0.5;
      }

      v429 = v427 + v428;
      if (v429 <= 2147483650.0)
      {
        if (v429 >= -2147483650.0)
        {
          v430 = v429;
        }

        else
        {
          v430 = 0x80000000;
        }
      }

      else
      {
        v430 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v430);
      v431 = (*a1)++;
      *v431 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v432 = *(v5 + 136) * 10.0;
      v433 = -0.5;
      if (v432 > 0.0)
      {
        v433 = 0.5;
      }

      v434 = v432 + v433;
      if (v434 <= 2147483650.0)
      {
        if (v434 >= -2147483650.0)
        {
          v435 = v434;
        }

        else
        {
          v435 = 0x80000000;
        }
      }

      else
      {
        v435 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v435);
      v436 = (*a1)++;
      *v436 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 144), __dst, 0, 0);
      v437 = (*a1)++;
      *v437 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 145), __dst, 0, 0);
      v438 = (*a1)++;
      *v438 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 146), __dst, 0, 0);
      v439 = (*a1)++;
      *v439 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 147), __dst, 0, 0);
      v440 = (*a1)++;
      *v440 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 148), __dst, 0, 0);
      v441 = (*a1)++;
      *v441 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 149), __dst, 0, 0);
      v442 = (*a1)++;
      *v442 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 150), __dst, 0, 0);
      v443 = (*a1)++;
      *v443 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 151), __dst, 0, 0);
      NMEA_Add_checksum(a1, v381);
      if (*(v5 + 152) == 1)
      {
        NMEA_Encode_PDBGE_Constell(a1, 1, v948, v5);
      }

      v444 = v948;
      if (*(v5 + 192) == 1)
      {
        NMEA_Encode_PDBGE_Constell(a1, 5, v948, v5);
        v444 = v948;
      }

      if (*(v5 + 232) == 1)
      {
        NMEA_Encode_PDBGE_Constell(a1, 2, v948, v5);
        v444 = v948;
      }

      if (*(v5 + 272) == 1)
      {
        NMEA_Encode_PDBGE_Constell(a1, 3, v948, v5);
        v444 = v948;
      }

      if (*(v5 + 312) == 1)
      {
        NMEA_Encode_PDBGE_Constell(a1, 4, v948, v5);
        v444 = v948;
      }

      if (*(v5 + 352) == 1)
      {
        NMEA_Encode_PDBGE_Constell(a1, 6, v948, v5);
        v444 = v948;
      }

      v445 = (*a1)++;
      *v445 = 36;
      v446 = *a1;
      if (*a1 >= a1[3])
      {
        v446 = a1[2];
      }

      v447 = 80;
      v448 = 1u;
      v449 = v446;
      do
      {
        *a1 = v449 + 1;
        *v449 = v447;
        v449 = *a1;
        if (*a1 >= a1[3])
        {
          v449 = a1[2];
          *a1 = v449;
        }

        v447 = aPdbgi[v448++];
      }

      while (v448 != 7);
      sprintf_HHMMSS(a1, v444);
      v450 = 0;
      v451 = *a1;
      v452 = 65;
      do
      {
        *a1 = v451 + 1;
        *v451 = v452;
        v451 = *a1;
        if (*a1 >= a1[3])
        {
          v451 = a1[2];
          *a1 = v451;
        }

        v452 = aA[++v450];
      }

      while (v450 != 2);
      v453 = *(v5 + 392);
      if (v453 >= 0)
      {
        v454 = v453;
      }

      else
      {
        v454 = -v453;
      }

      sprintf1da(a1, v454, __dst, 0, v453 >> 31);
      v455 = (*a1)++;
      *v455 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 396), __dst, 0, 0);
      v456 = (*a1)++;
      *v456 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 398), __dst, 0, 0);
      v457 = (*a1)++;
      *v457 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_2d(a1, *(v5 + 400));
      v458 = (*a1)++;
      *v458 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      for (j = 404; j != 410; ++j)
      {
        sprintf1da(a1, *(v5 + j), __dst, 0, 0);
      }

      v460 = (*a1)++;
      *v460 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 410), __dst, 0, 0);
      v461 = (*a1)++;
      *v461 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v462 = *(v5 + 416) * 10.0;
      v463 = -0.5;
      if (v462 > 0.0)
      {
        v463 = 0.5;
      }

      v464 = v462 + v463;
      if (v464 <= 2147483650.0)
      {
        if (v464 >= -2147483650.0)
        {
          v465 = v464;
        }

        else
        {
          v465 = 0x80000000;
        }
      }

      else
      {
        v465 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v465);
      v466 = (*a1)++;
      *v466 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v5 + 424));
      v467 = (*a1)++;
      *v467 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v5 + 432));
      v468 = (*a1)++;
      *v468 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v5 + 440));
      v469 = (*a1)++;
      *v469 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 448), __dst, 0, 0);
      v470 = (*a1)++;
      *v470 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 449), __dst, 0, 0);
      NMEA_Add_checksum(a1, v446);
      if (*(v5 + 456) == 1)
      {
        NMEA_Encode_PDBGI_Constell(a1, 1, v948, v5);
      }

      v471 = v948;
      if (*(v5 + 576) == 1)
      {
        NMEA_Encode_PDBGI_Constell(a1, 5, v948, v5);
        v471 = v948;
      }

      if (*(v5 + 696) == 1)
      {
        NMEA_Encode_PDBGI_Constell(a1, 2, v948, v5);
        v471 = v948;
      }

      if (*(v5 + 816) == 1)
      {
        NMEA_Encode_PDBGI_Constell(a1, 3, v948, v5);
        v471 = v948;
      }

      if (*(v5 + 936) == 1)
      {
        NMEA_Encode_PDBGI_Constell(a1, 4, v948, v5);
        v471 = v948;
      }

      if (*(v5 + 1056) == 1)
      {
        NMEA_Encode_PDBGI_Constell(a1, 6, v948, v5);
        v471 = v948;
      }

      v472 = (*a1)++;
      *v472 = 36;
      v473 = *a1;
      if (*a1 >= a1[3])
      {
        v473 = a1[2];
      }

      v474 = 80;
      v475 = 1u;
      v476 = v473;
      do
      {
        *a1 = v476 + 1;
        *v476 = v474;
        v476 = *a1;
        if (*a1 >= a1[3])
        {
          v476 = a1[2];
          *a1 = v476;
        }

        v474 = aPdbgm[v475++];
      }

      while (v475 != 7);
      sprintf_HHMMSS(a1, v471);
      v477 = *a1;
      if (*(v5 + 1176))
      {
        *a1 = v477 + 1;
        *v477 = 65;
        v478 = *a1;
        if (*a1 >= a1[3])
        {
          v478 = a1[2];
        }

        *a1 = v478 + 1;
        *v478 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1177), __dst, 0, 0);
        v479 = (*a1)++;
        *v479 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1178), __dst, 0, 0);
        v480 = (*a1)++;
        *v480 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf_3f(a1, (*(v5 + 1180) / 10), 3);
        v481 = (*a1)++;
        *v481 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1184), __dst, 0, 0);
        v482 = (*a1)++;
        *v482 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v483 = *(v5 + 1192) * 10.0;
        v484 = -0.5;
        if (v483 > 0.0)
        {
          v484 = 0.5;
        }

        v485 = v483 + v484;
        if (v485 <= 2147483650.0)
        {
          if (v485 >= -2147483650.0)
          {
            v486 = v485;
          }

          else
          {
            v486 = 0x80000000;
          }
        }

        else
        {
          v486 = 0x7FFFFFFFLL;
        }

        sprintf_2f(a1, v486);
        v489 = (*a1)++;
        *v489 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v490 = *(v5 + 1200) * 10.0;
        v491 = -0.5;
        if (v490 > 0.0)
        {
          v491 = 0.5;
        }

        v492 = v490 + v491;
        if (v492 <= 2147483650.0)
        {
          if (v492 >= -2147483650.0)
          {
            v493 = v492;
          }

          else
          {
            v493 = 0x80000000;
          }
        }

        else
        {
          v493 = 0x7FFFFFFFLL;
        }

        sprintf_2f(a1, v493);
        v494 = (*a1)++;
        *v494 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v495 = *(v5 + 1208) * 10.0;
        v496 = -0.5;
        if (v495 > 0.0)
        {
          v496 = 0.5;
        }

        v497 = v495 + v496;
        if (v497 <= 2147483650.0)
        {
          if (v497 >= -2147483650.0)
          {
            v498 = v497;
          }

          else
          {
            v498 = 0x80000000;
          }
        }

        else
        {
          v498 = 0x7FFFFFFFLL;
        }

        sprintf_2f(a1, v498);
        v499 = (*a1)++;
        *v499 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1216), __dst, 0, 0);
        v500 = (*a1)++;
        *v500 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1218), __dst, 0, 0);
        v501 = (*a1)++;
        *v501 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1220), __dst, 0, 0);
        v502 = (*a1)++;
        *v502 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1221), __dst, 0, 0);
        v503 = (*a1)++;
        *v503 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1222), __dst, 0, 0);
        v504 = (*a1)++;
        *v504 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1223), __dst, 0, 0);
        v505 = (*a1)++;
        *v505 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1224), __dst, 0, 0);
        v506 = (*a1)++;
        *v506 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1225), __dst, 0, 0);
      }

      else
      {
        v487 = 78;
        v488 = 1u;
        do
        {
          *a1 = v477 + 1;
          *v477 = v487;
          v477 = *a1;
          if (*a1 >= a1[3])
          {
            v477 = a1[2];
            *a1 = v477;
          }

          v487 = aN_3[v488++];
        }

        while (v488 != 15);
      }

      NMEA_Add_checksum(a1, v473);
      if (*(v5 + 1232) == 1)
      {
        NMEA_Encode_PDBGO(a1, 1, v948, v5);
      }

      v507 = v948;
      if (*(v5 + 1280) == 1)
      {
        NMEA_Encode_PDBGO(a1, 5, v948, v5);
        v507 = v948;
      }

      if (*(v5 + 1328) == 1)
      {
        NMEA_Encode_PDBGO(a1, 2, v948, v5);
        v507 = v948;
      }

      if (*(v5 + 1376) == 1)
      {
        NMEA_Encode_PDBGO(a1, 3, v948, v5);
        v507 = v948;
      }

      if (*(v5 + 1424) == 1)
      {
        NMEA_Encode_PDBGO(a1, 4, v948, v5);
        v507 = v948;
      }

      if (*(v5 + 1472) == 1)
      {
        NMEA_Encode_PDBGO(a1, 6, v948, v5);
        v507 = v948;
      }

      v508 = (*a1)++;
      *v508 = 36;
      v509 = *a1;
      if (*a1 >= a1[3])
      {
        v509 = a1[2];
      }

      v510 = 80;
      v511 = 1u;
      v512 = v509;
      do
      {
        *a1 = v512 + 1;
        *v512 = v510;
        v512 = *a1;
        if (*a1 >= a1[3])
        {
          v512 = a1[2];
          *a1 = v512;
        }

        v510 = aPdbgp[v511++];
      }

      while (v511 != 7);
      sprintf_HHMMSS(a1, v507);
      v513 = *a1;
      if (*(v5 + 1520))
      {
        *a1 = v513 + 1;
        *v513 = 65;
        v514 = *a1;
        if (*a1 >= a1[3])
        {
          v514 = a1[2];
        }

        *a1 = v514 + 1;
        *v514 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1521), __dst, 0, 0);
        v515 = (*a1)++;
        *v515 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1523), __dst, 0, 0);
        v516 = (*a1)++;
        *v516 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf_3f(a1, (*(v5 + 1524) / 10), 3);
        v517 = (*a1)++;
        *v517 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1528), __dst, 0, 0);
        v518 = (*a1)++;
        *v518 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1529), __dst, 0, 0);
        v519 = (*a1)++;
        *v519 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1530), __dst, 0, 0);
        v520 = (*a1)++;
        *v520 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v521 = *(v5 + 1536) * 10.0;
        v522 = -0.5;
        if (v521 > 0.0)
        {
          v522 = 0.5;
        }

        v523 = v521 + v522;
        if (v523 <= 2147483650.0)
        {
          if (v523 >= -2147483650.0)
          {
            v524 = v523;
          }

          else
          {
            v524 = 0x80000000;
          }
        }

        else
        {
          v524 = 0x7FFFFFFFLL;
        }

        sprintf_2f(a1, v524);
        v527 = (*a1)++;
        *v527 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v528 = *(v5 + 1544) * 10.0;
        v529 = -0.5;
        if (v528 > 0.0)
        {
          v529 = 0.5;
        }

        v530 = v528 + v529;
        if (v530 <= 2147483650.0)
        {
          if (v530 >= -2147483650.0)
          {
            v531 = v530;
          }

          else
          {
            v531 = 0x80000000;
          }
        }

        else
        {
          v531 = 0x7FFFFFFFLL;
        }

        sprintf_2f(a1, v531);
        v532 = (*a1)++;
        *v532 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v533 = *(v5 + 1552) * 10.0;
        v534 = -0.5;
        if (v533 > 0.0)
        {
          v534 = 0.5;
        }

        v535 = v533 + v534;
        if (v535 <= 2147483650.0)
        {
          if (v535 >= -2147483650.0)
          {
            v536 = v535;
          }

          else
          {
            v536 = 0x80000000;
          }
        }

        else
        {
          v536 = 0x7FFFFFFFLL;
        }

        sprintf_2f(a1, v536);
        v537 = (*a1)++;
        *v537 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v538 = *(v5 + 1560);
        if (v538 >= 0)
        {
          v539 = v538;
        }

        else
        {
          v539 = -v538;
        }

        sprintf1da(a1, v539, __dst, 0, v538 >> 31);
        v540 = (*a1)++;
        *v540 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v541 = *(v5 + 1564);
        if (v541 >= 0)
        {
          v542 = v541;
        }

        else
        {
          v542 = -v541;
        }

        sprintf1da(a1, v542, __dst, 0, v541 >> 31);
        v543 = (*a1)++;
        *v543 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1568), __dst, 0, 0);
        v544 = (*a1)++;
        *v544 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1570), __dst, 0, 0);
        v545 = (*a1)++;
        *v545 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1522), __dst, 0, 0);
      }

      else
      {
        v525 = 78;
        v526 = 1u;
        do
        {
          *a1 = v513 + 1;
          *v513 = v525;
          v513 = *a1;
          if (*a1 >= a1[3])
          {
            v513 = a1[2];
            *a1 = v513;
          }

          v525 = aN_3[v526++];
        }

        while (v526 != 15);
      }

      NMEA_Add_checksum(a1, v509);
      v546 = (*a1)++;
      *v546 = 36;
      v547 = *a1;
      if (*a1 >= a1[3])
      {
        v547 = a1[2];
      }

      v548 = 80;
      v549 = 1u;
      v550 = v547;
      do
      {
        *a1 = v550 + 1;
        *v550 = v548;
        v550 = *a1;
        if (*a1 >= a1[3])
        {
          v550 = a1[2];
          *a1 = v550;
        }

        v548 = aPdbgs[v549++];
      }

      while (v549 != 7);
      sprintf_HHMMSS(a1, v948);
      v551 = *a1;
      if (*(v5 + 1572))
      {
        *a1 = v551 + 1;
        *v551 = 65;
        v552 = *a1;
        if (*a1 >= a1[3])
        {
          v552 = a1[2];
        }

        *a1 = v552 + 1;
        *v552 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1573), __dst, 0, 0);
        v553 = (*a1)++;
        *v553 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1574), __dst, 0, 0);
        v554 = (*a1)++;
        *v554 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1575), __dst, 0, 0);
      }

      else
      {
        v555 = 0;
        v556 = 78;
        do
        {
          *a1 = v551 + 1;
          *v551 = v556;
          v551 = *a1;
          if (*a1 >= a1[3])
          {
            v551 = a1[2];
            *a1 = v551;
          }

          v556 = aN_4[++v555];
        }

        while (v555 != 4);
      }

      NMEA_Add_checksum(a1, v547);
      v557 = (*a1)++;
      *v557 = 36;
      v558 = *a1;
      if (*a1 >= a1[3])
      {
        v558 = a1[2];
      }

      v559 = 80;
      v560 = 1u;
      v561 = v558;
      do
      {
        *a1 = v561 + 1;
        *v561 = v559;
        v561 = *a1;
        if (*a1 >= a1[3])
        {
          v561 = a1[2];
          *a1 = v561;
        }

        v559 = aPdbgf[v560++];
      }

      while (v560 != 7);
      sprintf_HHMMSS(a1, v948);
      v562 = *a1;
      if (*(v5 + 1576))
      {
        *a1 = v562 + 1;
        *v562 = 65;
        v563 = *a1;
        if (*a1 >= a1[3])
        {
          v563 = a1[2];
        }

        *a1 = v563 + 1;
        *v563 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1577), __dst, 0, 0);
        v564 = (*a1)++;
        *v564 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1578), __dst, 0, 0);
        v565 = (*a1)++;
        *v565 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v566 = *(v5 + 1580);
        if (v566 >= 0)
        {
          v567 = v566;
        }

        else
        {
          v567 = -v566;
        }

        sprintf1da(a1, v567, __dst, 0, v566 >> 31);
        v568 = (*a1)++;
        *v568 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v569 = *(v5 + 1584) * 100.0;
        v570 = -0.5;
        if (v569 > 0.0)
        {
          v570 = 0.5;
        }

        v571 = v569 + v570;
        if (v571 <= 2147483650.0)
        {
          if (v571 >= -2147483650.0)
          {
            v572 = v571;
          }

          else
          {
            v572 = 0x80000000;
          }
        }

        else
        {
          v572 = 0x7FFFFFFFLL;
        }

        sprintf_3f(a1, v572, 3);
        v575 = (*a1)++;
        *v575 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v576 = *(v5 + 1592) * 100.0;
        v577 = -0.5;
        if (v576 > 0.0)
        {
          v577 = 0.5;
        }

        v578 = v576 + v577;
        if (v578 <= 2147483650.0)
        {
          if (v578 >= -2147483650.0)
          {
            v579 = v578;
          }

          else
          {
            v579 = 0x80000000;
          }
        }

        else
        {
          v579 = 0x7FFFFFFFLL;
        }

        sprintf_3f(a1, v579, 3);
      }

      else
      {
        v573 = 78;
        v574 = 1u;
        do
        {
          *a1 = v562 + 1;
          *v562 = v573;
          v562 = *a1;
          if (*a1 >= a1[3])
          {
            v562 = a1[2];
            *a1 = v562;
          }

          v573 = aN_2[v574++];
        }

        while (v574 != 7);
      }

      NMEA_Add_checksum(a1, v558);
      v580 = (*a1)++;
      *v580 = 36;
      v581 = *a1;
      if (*a1 >= a1[3])
      {
        v581 = a1[2];
      }

      v582 = 80;
      v583 = 1u;
      v584 = v581;
      do
      {
        *a1 = v584 + 1;
        *v584 = v582;
        v584 = *a1;
        if (*a1 >= a1[3])
        {
          v584 = a1[2];
          *a1 = v584;
        }

        v582 = aPdbgt[v583++];
      }

      while (v583 != 7);
      sprintf_HHMMSS(a1, v948);
      sprintf_1u(a1, *(v5 + 1672));
      v585 = (*a1)++;
      *v585 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_1u(a1, *(v5 + 1676));
      v586 = (*a1)++;
      *v586 = 44;
      v587 = *a1;
      if (*a1 >= a1[3])
      {
        v587 = a1[2];
        *a1 = v587;
      }

      if (*(v5 + 1680))
      {
        v588 = *(v5 + 1682);
        if (v588 >= 0)
        {
          v589 = v588;
        }

        else
        {
          v589 = -v588;
        }

        sprintf1da(a1, v589, __dst, 0, (v588 >> 15) & 1);
        v590 = (*a1)++;
        *v590 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v591 = *(v5 + 1688) * 1000.0;
        v592 = -0.5;
        if (v591 > 0.0)
        {
          v592 = 0.5;
        }

        v593 = v591 + v592;
        if (v593 <= 2147483650.0)
        {
          if (v593 >= -2147483650.0)
          {
            v594 = v593;
          }

          else
          {
            v594 = 0x80000000;
          }
        }

        else
        {
          v594 = 0x7FFFFFFFLL;
        }

        sprintf_4f(a1, v594, 4);
        v597 = (*a1)++;
        *v597 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v598 = *(v5 + 1696) * 1000.0;
        v599 = -0.5;
        if (v598 > 0.0)
        {
          v599 = 0.5;
        }

        v600 = v598 + v599;
        if (v600 <= 2147483650.0)
        {
          if (v600 >= -2147483650.0)
          {
            v601 = v600;
          }

          else
          {
            v601 = 0x80000000;
          }
        }

        else
        {
          v601 = 0x7FFFFFFFLL;
        }

        sprintf_4f(a1, v601, 4);
        v602 = (*a1)++;
        *v602 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf_1u(a1, *(v5 + 1704));
        v603 = (*a1)++;
        *v603 = 44;
        v587 = *a1;
        if (*a1 >= a1[3])
        {
          v587 = a1[2];
          *a1 = v587;
        }
      }

      else
      {
        v595 = 0;
        v596 = 44;
        do
        {
          *a1 = v587 + 1;
          *v587 = v596;
          v587 = *a1;
          if (*a1 >= a1[3])
          {
            v587 = a1[2];
            *a1 = v587;
          }

          v596 = asc_29979FFDD[++v595];
        }

        while (v595 != 4);
      }

      if (*(v5 + 1708))
      {
        v604 = *(v5 + 1712);
        if (v604 >= 0)
        {
          v605 = v604;
        }

        else
        {
          v605 = -v604;
        }

        sprintf1da(a1, v605, __dst, 0, v604 >> 31);
        v606 = (*a1)++;
        *v606 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf_1u(a1, *(v5 + 1716));
        v607 = (*a1)++;
        *v607 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }
      }

      else
      {
        v608 = 0;
        v609 = 44;
        do
        {
          *a1 = v587 + 1;
          *v587 = v609;
          v587 = *a1;
          if (*a1 >= a1[3])
          {
            v587 = a1[2];
            *a1 = v587;
          }

          v609 = asc_2997A0090[++v608];
        }

        while (v608 != 2);
      }

      sprintf1da(a1, *(v5 + 1720), __dst, 0, 0);
      v610 = (*a1)++;
      *v610 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 1721), __dst, 0, 0);
      v611 = (*a1)++;
      *v611 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v612 = *(v5 + 1728) * 1000.0;
      v613 = -0.5;
      if (v612 > 0.0)
      {
        v613 = 0.5;
      }

      v614 = v612 + v613;
      if (v614 <= 2147483650.0)
      {
        if (v614 >= -2147483650.0)
        {
          v615 = v614;
        }

        else
        {
          v615 = 0x80000000;
        }
      }

      else
      {
        v615 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v615, 4);
      v616 = (*a1)++;
      *v616 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v617 = *(v5 + 1736);
      if (v617 >= 0)
      {
        v618 = v617;
      }

      else
      {
        v618 = -v617;
      }

      sprintf1da(a1, v618, __dst, 0, (v617 >> 15) & 1);
      v619 = (*a1)++;
      *v619 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 1738), __dst, 0, 0);
      v620 = (*a1)++;
      *v620 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v621 = *(v5 + 1744) * 1000.0;
      v622 = -0.5;
      if (v621 > 0.0)
      {
        v622 = 0.5;
      }

      v623 = v621 + v622;
      if (v623 <= 2147483650.0)
      {
        if (v623 >= -2147483650.0)
        {
          v624 = v623;
        }

        else
        {
          v624 = 0x80000000;
        }
      }

      else
      {
        v624 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v624, 4);
      v625 = (*a1)++;
      *v625 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v626 = *(v5 + 1752);
      if (v626 >= 0)
      {
        v627 = v626;
      }

      else
      {
        v627 = -v626;
      }

      sprintf1da(a1, v627, __dst, 0, (v626 >> 15) & 1);
      v628 = (*a1)++;
      *v628 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v629 = *(v5 + 1754);
      if (v629 >= 0)
      {
        v630 = v629;
      }

      else
      {
        v630 = -v629;
      }

      sprintf1da(a1, v630, __dst, 0, (v629 >> 15) & 1);
      v631 = (*a1)++;
      *v631 = 44;
      v632 = *a1;
      if (*a1 >= a1[3])
      {
        v632 = a1[2];
        *a1 = v632;
      }

      if (*(v5 + 1756))
      {
        v633 = *(v5 + 1757);
        if (v633 >= 0)
        {
          v634 = v633;
        }

        else
        {
          v634 = -v633;
        }

        sprintf1da(a1, v634, __dst, 0, (v633 >> 7) & 1);
        v635 = (*a1)++;
        *v635 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v636 = *(v5 + 1758);
        if (v636 >= 0)
        {
          v637 = v636;
        }

        else
        {
          v637 = -v636;
        }

        sprintf1da(a1, v637, __dst, 0, (v636 >> 7) & 1);
        v638 = (*a1)++;
        *v638 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v639 = *(v5 + 1760);
        if (v639 >= 0)
        {
          v640 = v639;
        }

        else
        {
          v640 = -v639;
        }

        sprintf1da(a1, v640, __dst, 0, (v639 >> 15) & 1);
        v641 = (*a1)++;
        *v641 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v642 = *(v5 + 1762);
        if (v642 >= 0)
        {
          v643 = v642;
        }

        else
        {
          v643 = -v642;
        }

        sprintf1da(a1, v643, __dst, 0, (v642 >> 7) & 1);
        v644 = (*a1)++;
        *v644 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v645 = *(v5 + 1763);
        if (v645 >= 0)
        {
          v646 = v645;
        }

        else
        {
          v646 = -v645;
        }

        sprintf1da(a1, v646, __dst, 0, (v645 >> 7) & 1);
        v647 = (*a1)++;
        *v647 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v648 = *(v5 + 1764);
        if (v648 >= 0)
        {
          v649 = v648;
        }

        else
        {
          v649 = -v648;
        }

        sprintf1da(a1, v649, __dst, 0, (v648 >> 15) & 1);
        v650 = (*a1)++;
        *v650 = 44;
        v632 = *a1;
        if (*a1 >= a1[3])
        {
          v632 = a1[2];
          *a1 = v632;
        }
      }

      else
      {
        v651 = 44;
        v652 = 1u;
        do
        {
          *a1 = v632 + 1;
          *v632 = v651;
          v632 = *a1;
          if (*a1 >= a1[3])
          {
            v632 = a1[2];
            *a1 = v632;
          }

          v651 = asc_2997A00DD[v652++];
        }

        while (v652 != 7);
      }

      v653 = *(v5 + 1766);
      if (*(v5 + 1766))
      {
        if (v653 >= 0)
        {
          v654 = v653;
        }

        else
        {
          v654 = -v653;
        }

        sprintf1da(a1, v654, __dst, 0, (v653 >> 15) & 1);
        v632 = *a1;
      }

      *a1 = v632 + 1;
      *v632 = 44;
      v655 = *a1;
      if (*a1 >= a1[3])
      {
        v655 = a1[2];
        *a1 = v655;
      }

      v656 = *(v5 + 1768);
      if (*(v5 + 1768))
      {
        if (v656 >= 0)
        {
          v657 = v656;
        }

        else
        {
          v657 = -v656;
        }

        sprintf1da(a1, v657, __dst, 0, (v656 >> 15) & 1);
        v655 = *a1;
      }

      *a1 = v655 + 1;
      *v655 = 44;
      v658 = *a1;
      if (*a1 >= a1[3])
      {
        v658 = a1[2];
        *a1 = v658;
      }

      v659 = *(v5 + 1770);
      if (*(v5 + 1770))
      {
        if (v659 >= 0)
        {
          v660 = v659;
        }

        else
        {
          v660 = -v659;
        }

        sprintf1da(a1, v660, __dst, 0, (v659 >> 15) & 1);
        v658 = *a1;
      }

      *a1 = v658 + 1;
      *v658 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v661 = *(v5 + 1772);
      if (*(v5 + 1772))
      {
        if (v661 >= 0)
        {
          v662 = v661;
        }

        else
        {
          v662 = -v661;
        }

        sprintf1da(a1, v662, __dst, 0, (v661 >> 15) & 1);
      }

      NMEA_Add_checksum(a1, v581);
      v663 = (*a1)++;
      *v663 = 36;
      v664 = *a1;
      if (*a1 >= a1[3])
      {
        v664 = a1[2];
      }

      v665 = 80;
      v666 = 1u;
      v667 = v664;
      do
      {
        *a1 = v667 + 1;
        *v667 = v665;
        v667 = *a1;
        if (*a1 >= a1[3])
        {
          v667 = a1[2];
          *a1 = v667;
        }

        v665 = aPdbgv[v666++];
      }

      while (v666 != 7);
      sprintf_HHMMSS(a1, v948);
      v668 = *a1;
      if (*(v5 + 1600))
      {
        *a1 = v668 + 1;
        *v668 = 65;
        v669 = *a1;
        if (*a1 >= a1[3])
        {
          v669 = a1[2];
        }

        *a1 = v669 + 1;
        *v669 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1601), __dst, 0, 0);
        v670 = (*a1)++;
        *v670 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1602), __dst, 0, 0);
        v671 = (*a1)++;
        *v671 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v672 = *(v5 + 1608) * 100.0;
        v673 = -0.5;
        if (v672 > 0.0)
        {
          v673 = 0.5;
        }

        v674 = v672 + v673;
        if (v674 <= 2147483650.0)
        {
          if (v674 >= -2147483650.0)
          {
            v675 = v674;
          }

          else
          {
            v675 = 0x80000000;
          }
        }

        else
        {
          v675 = 0x7FFFFFFFLL;
        }

        sprintf_3f(a1, v675, 3);
        v678 = (*a1)++;
        *v678 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v679 = *(v5 + 1616) * 100.0;
        v680 = -0.5;
        if (v679 > 0.0)
        {
          v680 = 0.5;
        }

        v681 = v679 + v680;
        if (v681 <= 2147483650.0)
        {
          if (v681 >= -2147483650.0)
          {
            v682 = v681;
          }

          else
          {
            v682 = 0x80000000;
          }
        }

        else
        {
          v682 = 0x7FFFFFFFLL;
        }

        sprintf_3f(a1, v682, 3);
        v683 = (*a1)++;
        *v683 = 44;
        v668 = *a1;
        if (*a1 >= a1[3])
        {
          v668 = a1[2];
        }
      }

      else
      {
        v676 = 78;
        v677 = 1u;
        do
        {
          *a1 = v668 + 1;
          *v668 = v676;
          v668 = *a1;
          if (*a1 >= a1[3])
          {
            v668 = a1[2];
            *a1 = v668;
          }

          v676 = aN_2[v677++];
        }

        while (v677 != 7);
      }

      if (*(v5 + 1624))
      {
        *a1 = v668 + 1;
        *v668 = 65;
        v684 = *a1;
        if (*a1 >= a1[3])
        {
          v684 = a1[2];
        }

        *a1 = v684 + 1;
        *v684 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1625), __dst, 0, 0);
        v685 = (*a1)++;
        *v685 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1626), __dst, 0, 0);
        v686 = (*a1)++;
        *v686 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v687 = *(v5 + 1632) * 100.0;
        v688 = -0.5;
        if (v687 > 0.0)
        {
          v688 = 0.5;
        }

        v689 = v687 + v688;
        if (v689 <= 2147483650.0)
        {
          if (v689 >= -2147483650.0)
          {
            v690 = v689;
          }

          else
          {
            v690 = 0x80000000;
          }
        }

        else
        {
          v690 = 0x7FFFFFFFLL;
        }

        sprintf_3f(a1, v690, 3);
        v693 = (*a1)++;
        *v693 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v694 = *(v5 + 1640) * 100.0;
        v695 = -0.5;
        if (v694 > 0.0)
        {
          v695 = 0.5;
        }

        v696 = v694 + v695;
        if (v696 <= 2147483650.0)
        {
          if (v696 >= -2147483650.0)
          {
            v697 = v696;
          }

          else
          {
            v697 = 0x80000000;
          }
        }

        else
        {
          v697 = 0x7FFFFFFFLL;
        }

        sprintf_3f(a1, v697, 3);
        v698 = (*a1)++;
        *v698 = 44;
        v668 = *a1;
        if (*a1 >= a1[3])
        {
          v668 = a1[2];
        }
      }

      else
      {
        v691 = 78;
        v692 = 1u;
        do
        {
          *a1 = v668 + 1;
          *v668 = v691;
          v668 = *a1;
          if (*a1 >= a1[3])
          {
            v668 = a1[2];
            *a1 = v668;
          }

          v691 = aN_2[v692++];
        }

        while (v692 != 7);
      }

      if (*(v5 + 1648))
      {
        *a1 = v668 + 1;
        *v668 = 65;
        v699 = *a1;
        if (*a1 >= a1[3])
        {
          v699 = a1[2];
        }

        *a1 = v699 + 1;
        *v699 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1649), __dst, 0, 0);
        v700 = (*a1)++;
        *v700 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        sprintf1da(a1, *(v5 + 1650), __dst, 0, 0);
        v701 = (*a1)++;
        *v701 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v702 = *(v5 + 1656) * 100.0;
        v703 = -0.5;
        if (v702 > 0.0)
        {
          v703 = 0.5;
        }

        v704 = v702 + v703;
        if (v704 <= 2147483650.0)
        {
          if (v704 >= -2147483650.0)
          {
            v705 = v704;
          }

          else
          {
            v705 = 0x80000000;
          }
        }

        else
        {
          v705 = 0x7FFFFFFFLL;
        }

        sprintf_3f(a1, v705, 3);
        v708 = (*a1)++;
        *v708 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v709 = *(v5 + 1664) * 100.0;
        v710 = -0.5;
        if (v709 > 0.0)
        {
          v710 = 0.5;
        }

        v711 = v709 + v710;
        if (v711 <= 2147483650.0)
        {
          if (v711 >= -2147483650.0)
          {
            v712 = v711;
          }

          else
          {
            v712 = 0x80000000;
          }
        }

        else
        {
          v712 = 0x7FFFFFFFLL;
        }

        sprintf_3f(a1, v712, 3);
        v713 = (*a1)++;
        *v713 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }
      }

      else
      {
        v706 = 78;
        v707 = 1u;
        do
        {
          *a1 = v668 + 1;
          *v668 = v706;
          v668 = *a1;
          if (*a1 >= a1[3])
          {
            v668 = a1[2];
            *a1 = v668;
          }

          v706 = aN_5[v707++];
        }

        while (v707 != 6);
      }

      NMEA_Add_checksum(a1, v664);
      v714 = (*a1)++;
      *v714 = 36;
      v715 = *a1;
      if (*a1 >= a1[3])
      {
        v715 = a1[2];
      }

      v716 = 80;
      v717 = 1u;
      v718 = v715;
      do
      {
        *a1 = v718 + 1;
        *v718 = v716;
        v718 = *a1;
        if (*a1 >= a1[3])
        {
          v718 = a1[2];
          *a1 = v718;
        }

        v716 = aPdbgx[v717++];
      }

      while (v717 != 7);
      sprintf_HHMMSS(a1, v948);
      v719 = *(v5 + 1776) * 100.0;
      v720 = -0.5;
      if (v719 > 0.0)
      {
        v720 = 0.5;
      }

      v721 = v719 + v720;
      if (v721 <= 2147483650.0)
      {
        if (v721 >= -2147483650.0)
        {
          v722 = v721;
        }

        else
        {
          v722 = 0x80000000;
        }
      }

      else
      {
        v722 = 0x7FFFFFFFLL;
      }

      sprintf_3f(a1, v722, 3);
      v723 = (*a1)++;
      *v723 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v724 = *(v5 + 1784) * 100.0;
      v725 = -0.5;
      if (v724 > 0.0)
      {
        v725 = 0.5;
      }

      v726 = v724 + v725;
      if (v726 <= 2147483650.0)
      {
        if (v726 >= -2147483650.0)
        {
          v727 = v726;
        }

        else
        {
          v727 = 0x80000000;
        }
      }

      else
      {
        v727 = 0x7FFFFFFFLL;
      }

      sprintf_3f(a1, v727, 3);
      v728 = (*a1)++;
      *v728 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v729 = *(v5 + 1792) * 100.0;
      v730 = -0.5;
      if (v729 > 0.0)
      {
        v730 = 0.5;
      }

      v731 = v729 + v730;
      if (v731 <= 2147483650.0)
      {
        if (v731 >= -2147483650.0)
        {
          v732 = v731;
        }

        else
        {
          v732 = 0x80000000;
        }
      }

      else
      {
        v732 = 0x7FFFFFFFLL;
      }

      sprintf_3f(a1, v732, 3);
      v733 = (*a1)++;
      *v733 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v734 = *(v5 + 1800) * 100.0;
      v735 = -0.5;
      if (v734 > 0.0)
      {
        v735 = 0.5;
      }

      v736 = v734 + v735;
      if (v736 <= 2147483650.0)
      {
        if (v736 >= -2147483650.0)
        {
          v737 = v736;
        }

        else
        {
          v737 = 0x80000000;
        }
      }

      else
      {
        v737 = 0x7FFFFFFFLL;
      }

      sprintf_3f(a1, v737, 3);
      v738 = (*a1)++;
      *v738 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v739 = *(v5 + 1808) * 1000.0;
      v740 = -0.5;
      if (v739 > 0.0)
      {
        v740 = 0.5;
      }

      v741 = v739 + v740;
      if (v741 <= 2147483650.0)
      {
        if (v741 >= -2147483650.0)
        {
          v742 = v741;
        }

        else
        {
          v742 = 0x80000000;
        }
      }

      else
      {
        v742 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v742, 4);
      v743 = (*a1)++;
      *v743 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v744 = *(v5 + 1816) * 1000.0;
      v745 = -0.5;
      if (v744 > 0.0)
      {
        v745 = 0.5;
      }

      v746 = v744 + v745;
      if (v746 <= 2147483650.0)
      {
        if (v746 >= -2147483650.0)
        {
          v747 = v746;
        }

        else
        {
          v747 = 0x80000000;
        }
      }

      else
      {
        v747 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v747, 4);
      v748 = (*a1)++;
      *v748 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v749 = *(v5 + 1824) * 1000.0;
      v750 = -0.5;
      if (v749 > 0.0)
      {
        v750 = 0.5;
      }

      v751 = v749 + v750;
      if (v751 <= 2147483650.0)
      {
        if (v751 >= -2147483650.0)
        {
          v752 = v751;
        }

        else
        {
          v752 = 0x80000000;
        }
      }

      else
      {
        v752 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v752, 4);
      v753 = (*a1)++;
      *v753 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v754 = *(v5 + 1832) * 1000.0;
      v755 = -0.5;
      if (v754 > 0.0)
      {
        v755 = 0.5;
      }

      v756 = v754 + v755;
      if (v756 <= 2147483650.0)
      {
        if (v756 >= -2147483650.0)
        {
          v757 = v756;
        }

        else
        {
          v757 = 0x80000000;
        }
      }

      else
      {
        v757 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v757, 4);
      v758 = (*a1)++;
      *v758 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v759 = *(v5 + 1840) * 1000.0;
      v760 = -0.5;
      if (v759 > 0.0)
      {
        v760 = 0.5;
      }

      v761 = v759 + v760;
      if (v761 <= 2147483650.0)
      {
        if (v761 >= -2147483650.0)
        {
          v762 = v761;
        }

        else
        {
          v762 = 0x80000000;
        }
      }

      else
      {
        v762 = 0x7FFFFFFFLL;
      }

      sprintf_4f(a1, v762, 4);
      v763 = (*a1)++;
      *v763 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v764 = *(v5 + 1848) * 10.0;
      v765 = -0.5;
      if (v764 > 0.0)
      {
        v765 = 0.5;
      }

      v766 = v764 + v765;
      if (v766 <= 2147483650.0)
      {
        if (v766 >= -2147483650.0)
        {
          v767 = v766;
        }

        else
        {
          v767 = 0x80000000;
        }
      }

      else
      {
        v767 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v767);
      v768 = (*a1)++;
      *v768 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v769 = *(v5 + 1856) * 10.0;
      v770 = -0.5;
      if (v769 > 0.0)
      {
        v770 = 0.5;
      }

      v771 = v769 + v770;
      if (v771 <= 2147483650.0)
      {
        if (v771 >= -2147483650.0)
        {
          v772 = v771;
        }

        else
        {
          v772 = 0x80000000;
        }
      }

      else
      {
        v772 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v772);
      v773 = (*a1)++;
      *v773 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v774 = *(v5 + 1864) * 10.0;
      v775 = -0.5;
      if (v774 > 0.0)
      {
        v775 = 0.5;
      }

      v776 = v774 + v775;
      if (v776 <= 2147483650.0)
      {
        if (v776 >= -2147483650.0)
        {
          v777 = v776;
        }

        else
        {
          v777 = 0x80000000;
        }
      }

      else
      {
        v777 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v777);
      v778 = (*a1)++;
      *v778 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v779 = *(v5 + 1872) * 10.0;
      v780 = -0.5;
      if (v779 > 0.0)
      {
        v780 = 0.5;
      }

      v781 = v779 + v780;
      if (v781 <= 2147483650.0)
      {
        if (v781 >= -2147483650.0)
        {
          v782 = v781;
        }

        else
        {
          v782 = 0x80000000;
        }
      }

      else
      {
        v782 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v782);
      v783 = (*a1)++;
      *v783 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v784 = *(v5 + 1880) * 10.0;
      v785 = -0.5;
      if (v784 > 0.0)
      {
        v785 = 0.5;
      }

      v786 = v784 + v785;
      if (v786 <= 2147483650.0)
      {
        if (v786 >= -2147483650.0)
        {
          v787 = v786;
        }

        else
        {
          v787 = 0x80000000;
        }
      }

      else
      {
        v787 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v787);
      v788 = (*a1)++;
      *v788 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v789 = *(v5 + 1888) * 10.0;
      v790 = -0.5;
      if (v789 > 0.0)
      {
        v790 = 0.5;
      }

      v791 = v789 + v790;
      if (v791 <= 2147483650.0)
      {
        if (v791 >= -2147483650.0)
        {
          v792 = v791;
        }

        else
        {
          v792 = 0x80000000;
        }
      }

      else
      {
        v792 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v792);
      v793 = (*a1)++;
      *v793 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v794 = *(v5 + 1896) * 10.0;
      v795 = -0.5;
      if (v794 > 0.0)
      {
        v795 = 0.5;
      }

      v796 = v794 + v795;
      if (v796 <= 2147483650.0)
      {
        if (v796 >= -2147483650.0)
        {
          v797 = v796;
        }

        else
        {
          v797 = 0x80000000;
        }
      }

      else
      {
        v797 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v797);
      v798 = (*a1)++;
      *v798 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 1904), __dst, 0, 0);
      v799 = (*a1)++;
      *v799 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v800 = *(v5 + 1912) * 10.0;
      v801 = -0.5;
      if (v800 > 0.0)
      {
        v801 = 0.5;
      }

      v802 = v800 + v801;
      if (v802 <= 2147483650.0)
      {
        if (v802 >= -2147483650.0)
        {
          v803 = v802;
        }

        else
        {
          v803 = 0x80000000;
        }
      }

      else
      {
        v803 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v803);
      v804 = (*a1)++;
      *v804 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v805 = *(v5 + 1920) * 10.0;
      v806 = -0.5;
      if (v805 > 0.0)
      {
        v806 = 0.5;
      }

      v807 = v805 + v806;
      if (v807 <= 2147483650.0)
      {
        if (v807 >= -2147483650.0)
        {
          v808 = v807;
        }

        else
        {
          v808 = 0x80000000;
        }
      }

      else
      {
        v808 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v808);
      v809 = (*a1)++;
      *v809 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v810 = *(v5 + 1928) * 10.0;
      v811 = -0.5;
      if (v810 > 0.0)
      {
        v811 = 0.5;
      }

      v812 = v810 + v811;
      if (v812 <= 2147483650.0)
      {
        if (v812 >= -2147483650.0)
        {
          v813 = v812;
        }

        else
        {
          v813 = 0x80000000;
        }
      }

      else
      {
        v813 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v813);
      v814 = (*a1)++;
      *v814 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v815 = *(v5 + 1936) * 10.0;
      v816 = -0.5;
      if (v815 > 0.0)
      {
        v816 = 0.5;
      }

      v817 = v815 + v816;
      if (v817 <= 2147483650.0)
      {
        if (v817 >= -2147483650.0)
        {
          v818 = v817;
        }

        else
        {
          v818 = 0x80000000;
        }
      }

      else
      {
        v818 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v818);
      v819 = (*a1)++;
      *v819 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v820 = *(v948 + 48) * 1000000000.0 * 10.0;
      v821 = -0.5;
      if (v820 > 0.0)
      {
        v821 = 0.5;
      }

      v822 = v820 + v821;
      if (v822 <= 2147483650.0)
      {
        if (v822 >= -2147483650.0)
        {
          v823 = v822;
        }

        else
        {
          v823 = 0x80000000;
        }
      }

      else
      {
        v823 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v823);
      v824 = (*a1)++;
      *v824 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 160) * 1000000000.0);
      v825 = (*a1)++;
      *v825 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v826 = *(v948 + 56) * 1000000000.0 * 10.0;
      v827 = -0.5;
      if (v826 > 0.0)
      {
        v827 = 0.5;
      }

      v828 = v826 + v827;
      if (v828 <= 2147483650.0)
      {
        if (v828 >= -2147483650.0)
        {
          v829 = v828;
        }

        else
        {
          v829 = 0x80000000;
        }
      }

      else
      {
        v829 = 0x7FFFFFFFLL;
      }

      sprintf_2f(a1, v829);
      v830 = (*a1)++;
      *v830 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_AccEst(a1, *(v948 + 168) * 1000000000.0);
      NMEA_Add_checksum(a1, v715);
      v831 = (*a1)++;
      *v831 = 36;
      v832 = *a1;
      if (*a1 >= a1[3])
      {
        v832 = a1[2];
      }

      v833 = 80;
      v834 = 1u;
      v835 = v832;
      do
      {
        *a1 = v835 + 1;
        *v835 = v833;
        v835 = *a1;
        if (*a1 >= a1[3])
        {
          v835 = a1[2];
          *a1 = v835;
        }

        v833 = aPdbgy[v834++];
      }

      while (v834 != 7);
      sprintf_HHMMSS(a1, v948);
      sprintf1da(a1, *(v5 + 1944), __dst, 0, 0);
      v836 = (*a1)++;
      *v836 = 46;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 1946), __dst, 0, 0);
      v837 = (*a1)++;
      *v837 = 46;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_2d(a1, *(v5 + 1947));
      v838 = (*a1)++;
      *v838 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 1948), __dst, 0, 0);
      v839 = (*a1)++;
      *v839 = 46;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_2d(a1, *(v5 + 1950));
      v840 = (*a1)++;
      *v840 = 46;
      v841 = *a1;
      if (*a1 >= a1[3])
      {
        v841 = a1[2];
      }

      v842 = *(v5 + 1951);
      *a1 = v841 + 1;
      *v841 = v842;
      v843 = *a1;
      if (*a1 >= a1[3])
      {
        v843 = a1[2];
      }

      *a1 = v843 + 1;
      *v843 = 46;
      v844 = *a1;
      if (*a1 >= a1[3])
      {
        v844 = a1[2];
        *a1 = v844;
      }

      v845 = *(v5 + 1952);
      if (v845)
      {
        v846 = (v5 + 1953);
        do
        {
          *a1 = v844 + 1;
          *v844 = v845;
          v844 = *a1;
          if (*a1 >= a1[3])
          {
            v844 = a1[2];
            *a1 = v844;
          }

          v847 = *v846++;
          v845 = v847;
        }

        while (v847);
      }

      *a1 = v844 + 1;
      *v844 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v848 = *(v5 + 1960);
      if (v848 >= 0)
      {
        v849 = v848;
      }

      else
      {
        v849 = -v848;
      }

      sprintf1da(a1, v849, __dst, 0, v848 >> 31);
      v850 = (*a1)++;
      *v850 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v851 = *(v5 + 1964);
      if (v851 >= 0)
      {
        v852 = v851;
      }

      else
      {
        v852 = -v851;
      }

      sprintf1da(a1, v852, __dst, 0, v851 >> 31);
      v853 = (*a1)++;
      *v853 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 1968), __dst, 0, 0);
      v854 = (*a1)++;
      *v854 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 1969), __dst, 0, 0);
      v855 = (*a1)++;
      *v855 = 44;
      v856 = *a1;
      if (*a1 >= a1[3])
      {
        v856 = a1[2];
      }

      v857 = 0;
      v858 = 48;
      do
      {
        *a1 = v856 + 1;
        *v856 = v858;
        v856 = *a1;
        if (*a1 >= a1[3])
        {
          v856 = a1[2];
          *a1 = v856;
        }

        v858 = a0x_0[++v857];
      }

      while (v857 != 2);
      sprintf_1X(a1, *(v5 + 1970));
      v859 = (*a1)++;
      *v859 = 44;
      v860 = *a1;
      if (*a1 >= a1[3])
      {
        v860 = a1[2];
      }

      v861 = 0;
      v862 = 48;
      do
      {
        *a1 = v860 + 1;
        *v860 = v862;
        v860 = *a1;
        if (*a1 >= a1[3])
        {
          v860 = a1[2];
          *a1 = v860;
        }

        v862 = a0x_0[++v861];
      }

      while (v861 != 2);
      sprintf_1X(a1, *(v5 + 1971));
      v863 = (*a1)++;
      *v863 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf1da(a1, *(v5 + 1972), __dst, 0, 0);
      v864 = (*a1)++;
      *v864 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      nzet(a1, 0xAu, __dst, 0, 0, 0);
      v865 = (*a1)++;
      *v865 = 44;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      v866 = *(v5 + 1980) - *(v5 + 1976);
      if (v866 >= 0)
      {
        v867 = v866;
      }

      else
      {
        v867 = (*(v5 + 1976) - *(v5 + 1980));
      }

      sprintf1da(a1, v867, __dst, 0, v866 >> 31);
      for (k = 1984; k != 2020; k += 4)
      {
        v869 = (*a1)++;
        *v869 = 44;
        if (*a1 >= a1[3])
        {
          *a1 = a1[2];
        }

        v870 = *(a4 + k) - *(a4 + 1976);
        if (v870 >= 0)
        {
          v871 = v870;
        }

        else
        {
          v871 = (*(a4 + 1976) - *(a4 + k));
        }

        sprintf1da(a1, v871, __dst, 0, v870 >> 31);
      }

      NMEA_Add_checksum(a1, v832);
      v872 = a4;
      if ((*(a4 + 2023) & 1) != 0 || (*(a4 + 2076) & 1) != 0 || *(a4 + 2089) == 1)
      {
        v873 = (*a1)++;
        *v873 = 36;
        v874 = *a1;
        if (*a1 >= a1[3])
        {
          v874 = a1[2];
        }

        v875 = 80;
        v876 = 1u;
        v877 = v874;
        do
        {
          *a1 = v877 + 1;
          *v877 = v875;
          v877 = *a1;
          if (*a1 >= a1[3])
          {
            v877 = a1[2];
            *a1 = v877;
          }

          v875 = aPdbgg[v876++];
        }

        while (v876 != 7);
        sprintf_HHMMSS(a1, v948);
        if (*(a4 + 2089) == 1)
        {
          sprintf1da(a1, *(a4 + 2078), __dst, 0, 0);
          if (*(a4 + 2080) >= 0x63u)
          {
            v878 = 99;
          }

          else
          {
            v878 = *(a4 + 2080);
          }

          sprintf_02d(a1, v878);
          v879 = (*a1)++;
          *v879 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(a4 + 2082), __dst, 0, 0);
          if (*(a4 + 2084) >= 0x63u)
          {
            v880 = 99;
          }

          else
          {
            v880 = *(a4 + 2084);
          }

          sprintf_02d(a1, v880);
          v881 = (*a1)++;
          *v881 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          v872 = a4;
          sprintf1da(a1, *(a4 + 2086), __dst, 0, 0);
          if (*(a4 + 2086) >= 0x63u)
          {
            v882 = 99;
          }

          else
          {
            v882 = *(a4 + 2086);
          }

          sprintf_02d(a1, v882);
          v883 = (*a1)++;
          *v883 = 44;
          v884 = *a1;
          if (*a1 >= a1[3])
          {
            v884 = a1[2];
            *a1 = v884;
          }
        }

        else
        {
          v884 = *a1;
          v885 = 44;
          v886 = 1u;
          do
          {
            *a1 = v884 + 1;
            *v884 = v885;
            v884 = *a1;
            if (*a1 >= a1[3])
            {
              v884 = a1[2];
              *a1 = v884;
            }

            v885 = asc_2997A0153[v886++];
          }

          while (v886 != 4);
        }

        if (*(v872 + 2023) == 1)
        {
          v887 = 0;
          v888 = 66;
          do
          {
            *a1 = v884 + 1;
            *v884 = v888;
            v884 = *a1;
            if (*a1 >= a1[3])
            {
              v884 = a1[2];
              *a1 = v884;
            }

            v888 = aB[++v887];
          }

          while (v887 != 2);
          sprintf1da(a1, *(v872 + 2020), __dst, 0, 0);
          if (*(v872 + 2022) >= 0x63u)
          {
            v889 = 99;
          }

          else
          {
            v889 = *(v872 + 2022);
          }

          sprintf_02d(a1, v889);
        }

        else if (*(v872 + 2076) == 1)
        {
          v890 = 0;
          v891 = 69;
          do
          {
            *a1 = v884 + 1;
            *v884 = v891;
            v884 = *a1;
            if (*a1 >= a1[3])
            {
              v884 = a1[2];
              *a1 = v884;
            }

            v891 = aE_0[++v890];
          }

          while (v890 != 2);
          sprintf1da(a1, *(v872 + 2024), __dst, 0, 0);
          v892 = (*a1)++;
          *v892 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(v872 + 2025), __dst, 0, 0);
          v893 = (*a1)++;
          *v893 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(v872 + 2026), __dst, 0, 0);
          v894 = (*a1)++;
          *v894 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(v872 + 2028), __dst, 0, 0);
          v895 = (*a1)++;
          *v895 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(v872 + 2030), __dst, 0, 0);
          v896 = (*a1)++;
          *v896 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(v872 + 2032), __dst, 0, 0);
          v897 = (*a1)++;
          *v897 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(v872 + 2034), __dst, 0, 0);
          v898 = (*a1)++;
          *v898 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          if (*(v872 + 2056) >= 0x63u)
          {
            v899 = 99;
          }

          else
          {
            v899 = *(v872 + 2056);
          }

          sprintf_02d(a1, v899);
          if (*(v872 + 2057) >= 0x63u)
          {
            v900 = 99;
          }

          else
          {
            v900 = *(v872 + 2057);
          }

          sprintf_02d(a1, v900);
          if (*(v872 + 2058) >= 0x63u)
          {
            v901 = 99;
          }

          else
          {
            v901 = *(v872 + 2058);
          }

          sprintf_02d(a1, v901);
          if (*(v872 + 2059) >= 0x63u)
          {
            v902 = 99;
          }

          else
          {
            v902 = *(v872 + 2059);
          }

          sprintf_02d(a1, v902);
          if (*(v872 + 2060) >= 0x63u)
          {
            v903 = 99;
          }

          else
          {
            v903 = *(v872 + 2060);
          }

          sprintf_02d(a1, v903);
          v904 = (*a1)++;
          *v904 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(a4 + 2038), __dst, 0, 0);
          v905 = (*a1)++;
          *v905 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(a4 + 2042), __dst, 0, 0);
          v906 = (*a1)++;
          *v906 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(a4 + 2044), __dst, 0, 0);
          v907 = (*a1)++;
          *v907 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          if (*(a4 + 2062) >= 0x63u)
          {
            v908 = 99;
          }

          else
          {
            v908 = *(a4 + 2062);
          }

          sprintf_02d(a1, v908);
          if (*(a4 + 2064) >= 0x63u)
          {
            v909 = 99;
          }

          else
          {
            v909 = *(a4 + 2064);
          }

          sprintf_02d(a1, v909);
          if (*(a4 + 2065) >= 0x63u)
          {
            v910 = 99;
          }

          else
          {
            v910 = *(a4 + 2065);
          }

          sprintf_02d(a1, v910);
          v911 = (*a1)++;
          *v911 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          v872 = a4;
          sprintf1da(a1, *(a4 + 2048), __dst, 0, 0);
          v912 = (*a1)++;
          *v912 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(a4 + 2050), __dst, 0, 0);
          v913 = (*a1)++;
          *v913 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(a4 + 2052), __dst, 0, 0);
          v914 = (*a1)++;
          *v914 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          sprintf1da(a1, *(a4 + 2054), __dst, 0, 0);
          v915 = (*a1)++;
          *v915 = 44;
          if (*a1 >= a1[3])
          {
            *a1 = a1[2];
          }

          if (*(a4 + 2067) >= 0x63u)
          {
            v916 = 99;
          }

          else
          {
            v916 = *(a4 + 2067);
          }

          sprintf_02d(a1, v916);
          if (*(a4 + 2068) >= 0x63u)
          {
            v917 = 99;
          }

          else
          {
            v917 = *(a4 + 2068);
          }

          sprintf_02d(a1, v917);
          if (*(a4 + 2069) >= 0x63u)
          {
            v918 = 99;
          }

          else
          {
            v918 = *(a4 + 2069);
          }

          sprintf_02d(a1, v918);
          if (*(a4 + 2070) >= 0x63u)
          {
            v919 = 99;
          }

          else
          {
            v919 = *(a4 + 2070);
          }

          sprintf_02d(a1, v919);
          v920 = (*a1)++;
          *v920 = 44;
          v921 = *a1;
          if (*a1 >= a1[3])
          {
            v921 = a1[2];
          }

          v922 = 0;
          v923 = 48;
          do
          {
            *a1 = v921 + 1;
            *v921 = v923;
            v921 = *a1;
            if (*a1 >= a1[3])
            {
              v921 = a1[2];
              *a1 = v921;
            }

            v923 = a0x_0[++v922];
          }

          while (v922 != 2);
          sprintf_08x(a1, *(a4 + 2072));
        }

        NMEA_Add_checksum(a1, v874);
      }

      v924 = v948;
      if (*(v872 + 2208) == 1)
      {
        NMEA_Encode_PDBGR(a1, v948, v872);
        v924 = v948;
      }

      if (*(v872 + 2106) == 1)
      {
        NMEA_Encode_PDBGN(a1, v924, v872);
      }

      v925 = *(v872 + 2212);
      if (v925)
      {
        v926 = *a1;
        v927 = (v872 + 2213);
        do
        {
          *a1 = v926 + 1;
          *v926 = v925;
          v926 = *a1;
          if (*a1 >= a1[3])
          {
            v926 = a1[2];
            *a1 = v926;
          }

          v928 = *v927++;
          v925 = v928;
        }

        while (v928);
      }
    }

    word_2A197179A = 0;
  }
}