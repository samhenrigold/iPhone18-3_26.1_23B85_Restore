uint64_t AgpsStopAllActiveTimers(void)
{
  v11 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("AgpsStopAllActiveTimers", 373, &g_TimerCriticSection))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v1 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v1, "OSA", 69, "AgpsStopAllActiveTimers", 1550);
    return LbsOsaTrace_WriteLog(0xEu, __str, v2, 0, 1);
  }

  v3 = &dword_2A1920560;
  v4 = 10;
  do
  {
    if (*(v3 + 4) == 1 && *v3 != -1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Id,%llx\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 73, "AgpsStopAllActiveTimers", *(v3 - 1));
        LbsOsaTrace_WriteLog(0xEu, __str, v6, 4, 1);
      }

      if ((gnssOsa_StopTimer("AgpsStopAllActiveTimers", 0x180u, *v3) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handle,%x\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 87, "AgpsStopAllActiveTimers", 1545, *v3);
        LbsOsaTrace_WriteLog(0xEu, __str, v8, 2, 1);
      }

      *(v3 + 4) = 0;
      *(v3 - 1) = 0;
      *v3 = -1;
    }

    v3 += 4;
    --v4;
  }

  while (v4);
  result = gnssOsa_MacExitCriticalSection("AgpsStopAllActiveTimers", 392, &g_TimerCriticSection);
  if (result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v9, "OSA", 69, "AgpsStopAllActiveTimers", 1551);
      return LbsOsaTrace_WriteLog(0xEu, __str, v2, 0, 1);
    }
  }

  return result;
}

uint64_t AgpsShutdownAllFsm(void)
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = g_NumProcess;
  g_NumProcess = 0;
  if (!v0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Completed\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 73, "AgpsShutdownAllFsm");
      v5 = 1;
      LbsOsaTrace_WriteLog(0xEu, __str, v9, 4, 1);
      return v5;
    }

    return 1;
  }

  if (v0 >= 1)
  {
    v1 = v0 + 1;
    v2 = 168 * v0;
    do
    {
      if (*(pg_AgpsFsmTable + v2 - 164))
      {
        if (AgpsFsmExecDeInitCallbacks(pg_AgpsFsmTable + v2 - 168))
        {
          AgpsDeinitFsm(pg_AgpsFsmTable + v2 - 168);
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v3 = mach_continuous_time();
          v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Failed PId,%x\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsShutdownAllFsm", *(pg_AgpsFsmTable + v2 - 164));
          LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
        }
      }

      --v1;
      v2 -= 168;
    }

    while (v1 > 1);
  }

  AgpsStopAllActiveTimers();
  if (!gnssOsa_MacDeinitCriticalSection("AgpsShutdownAllFsm", 429, &g_TimerCriticSection))
  {
    gnssOsa_flushNv();
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Completed\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 73, "AgpsShutdownAllFsm");
      LbsOsaTrace_WriteLog(0xEu, __str, v11, 4, 1);
    }

    gnssOsa_Deinit();
    return 1;
  }

  v5 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "AgpsShutdownAllFsm", 1553);
    LbsOsaTrace_WriteLog(0xEu, __str, v7, 0, 1);
    return 0;
  }

  return v5;
}

void AgpsSendFsmMsg(int a1, int a2, int a3, _BYTE *a4)
{
  v33 = *MEMORY[0x29EDCA608];
  a4[1] = a2;
  *a4 = a1;
  *(a4 + 1) = a3;
  a4[8] = 1;
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Src,%x,Dest,%x,Op,%x\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 68, "AgpsSendFsmMsg", a1, a2, a3);
    LbsOsaTrace_WriteLog(0xEu, __str, v9, 5, 1);
  }

  v10 = 0;
  do
  {
    v11 = v10;
    v12 = *(pg_AgpsFsmTable + 168 * v10++ + 4);
    if (v12)
    {
      v13 = v12 == a2;
    }

    else
    {
      v13 = 1;
    }
  }

  while (!v13);
  if (!v12)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src,%x,Dest,%x,Op,%x\n", (*&g_MacClockTicksToMsRelation * v27), "OSA", 69, "AgpsSendFsmMsg", 515, a1, a2, a3);
      LbsOsaTrace_WriteLog(0xEu, __str, v28, 0, 1);
    }

    snprintf(v31, 0x400uLL, "ASSERT: %s %d FSM : Invalid ProcessId,Src,%x,Dest,%x,Op,%x", "AgpsSendFsmMsg", 511, a1, a2, a3);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v29), "OSA", 69, "AgpsSendFsmMsg", v31);
      LbsOsaTrace_WriteLog(0xEu, __str, v30, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("AgpsSendFsmMsg", "agpsfsm.cpp", 512, "false && AgpsSendFsmMsg Invalid Process Id 0");
  }

  v14 = pg_AgpsFsmTable + 168 * v11;
  if (*(v14 + 104))
  {
    if (*v14 != 174 || *(v14 + 160) != 22)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Guard bytes\n", (*&g_MacClockTicksToMsRelation * v23), "OSA", 69, "AgpsSendFsmMsg", 770);
        LbsOsaTrace_WriteLog(0xEu, __str, v24, 0, 1);
      }

      snprintf(v31, 0x400uLL, "ASSERT: %s %d FSM : Guard Bytes Overwritten,Src,%x,Dest,%x,Op,%x", "AgpsSendFsmMsg", 476, a1, a2, a3);
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v25), "OSA", 69, "AgpsSendFsmMsg", v31);
        LbsOsaTrace_WriteLog(0xEu, __str, v26, 0, 1);
      }

      gnssOsa_FlushLog();
      __assert_rtn("AgpsSendFsmMsg", "agpsfsm.cpp", 477, "false && AgpsSendFsmMsg Guard Bytes Overwritten");
    }

    AgpsEnQueueFsmMsg(a4, v14);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src,%x,Dest,%x,Op,%x\n", (*&g_MacClockTicksToMsRelation * v15), "OSA", 73, "AgpsSendFsmMsg", 521, a1, a2, a3);
      LbsOsaTrace_WriteLog(0xEu, __str, v16, 4, 1);
    }

    v17 = 0;
    do
    {
      v18 = v17;
      v19 = *(pg_AgpsFsmTable + 168 * v17++ + 4);
      if (v19)
      {
        v20 = v19 == a1;
      }

      else
      {
        v20 = 1;
      }
    }

    while (!v20);
    v21 = *(pg_AgpsFsmTable + 168 * v18 + 152);
    if (v19)
    {
      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v21(a4);
    }

    free(a4);
  }
}

void AgpsFsmMarkTimerExpMsgInvalid(int a1)
{
  v2 = pthread_self();
  v3 = pg_AgpsFsmTable;
  v4 = *(pg_AgpsFsmTable + 4);
  if (*(pg_AgpsFsmTable + 4))
  {
    v5 = *(pg_AgpsFsmTable + 4);
    if (*(pg_AgpsFsmTable + 104) != v2)
    {
      v6 = 0;
      do
      {
        v7 = pg_AgpsFsmTable + 168 * ++v6;
        v5 = *(v7 + 4);
      }

      while (*(v7 + 4) && *(v7 + 104) != v2);
    }

    if (g_NumProcess >= 1)
    {
      v8 = 1;
      while (v4 != v5 || !*(v3 + 104))
      {
        v4 = *(v3 + 172);
        if (*(v3 + 172))
        {
          v9 = v8 >= g_NumProcess;
        }

        else
        {
          v9 = 1;
        }

        ++v8;
        v3 += 168;
        if (v9)
        {
          return;
        }
      }

      gnssOsa_MarkFsmMsgInvalid(a1, v3);
    }
  }
}

uint64_t AgpsFsmStartTimer(int a1, unsigned int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!gnssOsa_MacEnterCriticalSection("AgpsFsmStartTimer", 576, &g_TimerCriticSection))
  {
    v6 = 10;
    v7 = &vg_OsaTimers;
    do
    {
      if (*v7 == a1 && *(v7 + 12) == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Already started Id,%x\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 87, "AgpsFsmStartTimer", 1544, a1);
          LbsOsaTrace_WriteLog(0xEu, __str, v14, 2, 1);
        }

        if (!gnssOsa_MacExitCriticalSection("AgpsFsmStartTimer", 589, &g_TimerCriticSection))
        {
          return 5;
        }

        goto LABEL_24;
      }

      v7 += 2;
      --v6;
    }

    while (v6);
    AgpsFsmMarkTimerExpMsgInvalid(a1);
    v8 = &dword_2A1920560;
    v9 = 10;
    while ((v8[1] & 1) != 0)
    {
      v8 += 4;
      if (!--v9)
      {
        if (!gnssOsa_MacExitCriticalSection("AgpsFsmStartTimer", 625, &g_TimerCriticSection))
        {
          snprintf(v21, 0x400uLL, "ASSERT: %s %d TMC : Max timer count reached", "AgpsFsmStartTimer", 634);
          if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v19 = mach_continuous_time();
            v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v19), "OSA", 69, "AgpsFsmStartTimer", v21);
            LbsOsaTrace_WriteLog(0xEu, __str, v20, 0, 1);
          }

          gnssOsa_FlushLog();
          __assert_rtn("AgpsFsmStartTimer", "agpsfsm.cpp", 635, "false && Max timer count reached");
        }

        goto LABEL_24;
      }
    }

    *(v8 - 1) = a1;
    if (gnssOsa_StartTimer("AgpsFsmStartTimer", 610, v8, AgpsFsmTimerRoutine, v8 - 2, a2))
    {
      *(v8 + 4) = 1;
      v10 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Id,%x,Handle,%x,DueTime,%ums\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 73, "AgpsFsmStartTimer", a1, *v8, a2);
        LbsOsaTrace_WriteLog(0xEu, __str, v12, 4, 1);
        v10 = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Id,%x,DueTime,%ums\n", (*&g_MacClockTicksToMsRelation * v15), "OSA", 87, "AgpsFsmStartTimer", 1544, a1, a2);
        LbsOsaTrace_WriteLog(0xEu, __str, v16, 2, 1);
      }

      v10 = 3;
    }

    if (!gnssOsa_MacExitCriticalSection("AgpsFsmStartTimer", 625, &g_TimerCriticSection))
    {
      return v10;
    }

LABEL_24:
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      return 2;
    }

    bzero(__str, 0x410uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1551;
    goto LABEL_26;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1550;
LABEL_26:
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v4, "OSA", 69, "AgpsFsmStartTimer", v5);
    LbsOsaTrace_WriteLog(0xEu, __str, v17, 0, 1);
  }

  return 2;
}

uint64_t AgpsFsmStopTimer(int a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Id,%x\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 68, "AgpsFsmStopTimer", a1);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 5, 1);
  }

  if (!gnssOsa_MacEnterCriticalSection("AgpsFsmStopTimer", 650, &g_TimerCriticSection))
  {
    v6 = 10;
    v7 = &dword_2A1920560;
    while (*(v7 - 1) != a1 || *(v7 + 4) != 1 || *v7 == -1)
    {
      v7 += 4;
      if (!--v6)
      {
        if (!gnssOsa_MacExitCriticalSection("AgpsFsmStopTimer", 677, &g_TimerCriticSection))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Not Started or already Expired Id,%x\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 68, "AgpsFsmStopTimer", 1545, a1);
            LbsOsaTrace_WriteLog(0xEu, __str, v9, 5, 1);
          }

          AgpsFsmMarkTimerExpMsgInvalid(a1);
          return 4;
        }

        goto LABEL_22;
      }
    }

    if (gnssOsa_StopTimer("AgpsFsmStopTimer", 0x296u, *v7))
    {
      v10 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Id,%x,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 73, "AgpsFsmStopTimer", a1, *v7);
        LbsOsaTrace_WriteLog(0xEu, __str, v12, 4, 1);
        v10 = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Id,%x,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 87, "AgpsFsmStopTimer", 1545, a1, *v7);
        LbsOsaTrace_WriteLog(0xEu, __str, v14, 2, 1);
      }

      v10 = 7;
    }

    *(v7 + 4) = 0;
    *(v7 - 1) = 0;
    *v7 = -1;
    if (!gnssOsa_MacExitCriticalSection("AgpsFsmStopTimer", 677, &g_TimerCriticSection))
    {
      return v10;
    }

LABEL_22:
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      return 2;
    }

    bzero(__str, 0x410uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1551;
    goto LABEL_24;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1550;
LABEL_24:
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v4, "OSA", 69, "AgpsFsmStopTimer", v5);
    LbsOsaTrace_WriteLog(0xEu, __str, v15, 0, 1);
  }

  return 2;
}

uint64_t ud2var(uint64_t result, unsigned int a2, int a3, unsigned int a4, double *a5)
{
  v5 = result - 8;
  v6 = a3 + 1;
  v7 = ((a3 + 1) * a3) >> 1;
  *a5 = *(result - 8 + 8 * v7);
  if (a3 + 1 <= a2)
  {
    v8 = a3 + v7;
    v9 = 1;
    do
    {
      v7 += v6;
      v10 = *(v5 + 8 * v7);
      v11 = v9 + 1;
      v12 = a4;
      if (v9 + 1 <= a4)
      {
        a5[v11 - 1] = v10;
        v12 = v9;
      }

      if (v12)
      {
        if (v12 + 1 > 2)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = 2;
        }

        v14 = v13 - 1;
        v15 = v8;
        v16 = a5;
        do
        {
          *v16 = *v16 + v10 * *(v5 + 8 * v15) * *(v5 + 8 * v15);
          ++v16;
          ++v15;
          --v14;
        }

        while (v14);
      }

      v8 += v6++;
      v9 = v11;
    }

    while (v6 <= a2);
  }

  return result;
}

char **GLON_State_Update_Init(char **result, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a2 + 60) && *(a2 + 64) == 1)
  {
    *(result + 152) = 0;
    GLON_Immediate_Updates(result, a2, a3, a4);

    return GLON_Leap_Second_Updates(a2, a3, a4);
  }

  return result;
}

void GLON_Immediate_Updates(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v46 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24) + 7.0;
  if (v6 <= 0.0)
  {
    v7 = -0.5;
  }

  else
  {
    v7 = 0.5;
  }

  v8 = v6 + v7;
  if (v8 >= -2147483650.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x80000000;
  }

  if (v8 <= 2147483650.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(a2 + 72) + 7.0;
  if (v11 <= 0.0)
  {
    v12 = -0.5;
  }

  else
  {
    v12 = 0.5;
  }

  v13 = v11 + v12;
  if (v13 <= 2147483650.0)
  {
    if (v13 >= -2147483650.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0x80000000;
    }
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = 0;
  v16 = *(a2 + 68);
  if (v14 > 86399)
  {
    ++v16;
  }

  v38 = v16;
  v39 = *(a2 + 66);
  if (v14 > 86399)
  {
    v14 -= 86400;
  }

  v37 = v14;
  if (v10 <= 604799)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 - 604800;
  }

  if (v10 > 604799)
  {
    ++v5;
  }

  v35 = v5;
  v18 = v5;
  v34 = a4 + 28608;
  v19 = a4 + 6144;
  v20 = 15360;
  v21 = 15352;
  v22 = 12760;
  v23 = 1403;
  do
  {
    if (*(a3[1401] + v15) == 1 && *(a3[2035] + v15) == 1 && (*(a3[2039] + v15) & 1) != 0)
    {
      goto LABEL_57;
    }

    v24 = v17 - *(v19 + 160) + 604800 * (v18 - *(v19 + 164));
    if (v24 >= 0)
    {
      v25 = v17 - *(v19 + 160) + 604800 * (v18 - *(v19 + 164));
    }

    else
    {
      v25 = -v24;
    }

    v26 = *(v19 + 184);
    v27 = *(a3[2034] + v15);
    if (v26 == 2)
    {
      v28 = *(a3[2036] + v15);
      if (v25 <= 0xC8)
      {
        v28 = 0;
      }

      if (*(a3[1401] + v15))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v26 != 1)
      {
        if (v26)
        {
          v28 = 0;
          if (!*(a3[1401] + v15))
          {
            goto LABEL_57;
          }
        }

        else
        {
          v28 = *(a3[2036] + v15);
          if (!*(a3[1401] + v15))
          {
            goto LABEL_57;
          }
        }

LABEL_48:
        if (v27)
        {
          v29 = *(result + 304);
          if (v29 > 299)
          {
            EvLog_nd("GLON_StUd:  Delay ImmUd ", 2, a3, v15 + 33, v29);
          }

          else
          {
            v41 = 0;
            *v42 = 0;
            *&v42[5] = 0;
            memset(&v42[16], 0, 64);
            v43 = 0u;
            v44 = 0u;
            v45 = 0;
            memset(v40, 0, 62);
            GLON_EphBin2Int(&a3[v23], v40, 0);
            GLON_EphInt2Real(v40, &v41);
            GLON_Calc_State_Table_Eph(v39, v38, v37, &v41, v19, (result + 304));
            if (*(a3[2035] + v15) == 1 && !GLON_Cross_Check_SVRS_vs_EE(v39, v38, v37, v19, a3 + v22))
            {
              *(a3[2041] + v15) = 1;
              *(v19 + 184) = 0;
              *(a3[2034] + v15) = 0;
              *(a3[2033] + v15) = 1;
            }

            else
            {
              *(v19 + 160) = v17;
              *(v19 + 164) = v35;
              *(v34 + v15) = 0;
            }
          }
        }

        else if (v28)
        {
          *v42 = 0;
          v41 = 0;
          memset(&v42[8], 0, 67);
          v40[0] = 0uLL;
          *(&v40[1] + 5) = 0;
          *&v40[1] = 0;
          *(&v40[1] + 14) = 0;
          BYTE6(v40[2]) = 0;
          GLON_AlmBin2Int(a3 + v21, v40);
          v41 = *&v40[0];
          *&v42[2] = WORD5(v40[0]);
          v30.i64[0] = SHIDWORD(v40[0]);
          v30.i64[1] = SLODWORD(v40[1]);
          *&v31.f64[0] = *&vcvtq_f64_s64(v30);
          v30.i64[0] = HIDWORD(v40[0]);
          v30.i64[1] = LODWORD(v40[1]);
          v31.f64[1] = vcvtq_f64_u64(*&v30).f64[1];
          v32 = vmulq_f64(v31, xmmword_2997616C0);
          v30.i64[0] = SDWORD1(v40[1]);
          v30.i64[1] = SDWORD2(v40[1]);
          v33 = vmulq_f64(vcvtq_f64_s64(v30), xmmword_2997616D0);
          *&v42[8] = v32;
          *&v42[24] = v33;
          v32.f64[0] = SBYTE12(v40[1]);
          LOWORD(v33.f64[0]) = HIWORD(v40[1]);
          v32.f64[1] = *&v33.f64[0];
          *&v42[40] = vmulq_f64(v32, xmmword_2997616E0);
          *&v42[56] = SLOWORD(v40[2]) * 0.0000958737992;
          *&v42[64] = vcvtd_n_f64_s32(SWORD1(v40[2]), 0x12uLL);
          *&v42[72] = WORD2(v40[2]);
          v42[74] = BYTE6(v40[2]);
          *v42 = *(a3 + v20);
          if (*v42)
          {
            GLON_RealAlm2RefState(v39, v38, v37, &v41, v19);
            *(v19 + 160) = v17;
            *(v19 + 164) = v35;
            *(v34 + v15) = 0;
          }
        }

        goto LABEL_57;
      }

      v28 = 0;
      if (v25 <= 7)
      {
        v27 = 0;
      }

      if (*(a3[1401] + v15))
      {
        goto LABEL_48;
      }
    }

LABEL_57:
    ++v15;
    v20 += 36;
    v21 += 36;
    v22 += 108;
    v23 += 8;
    v19 += 192;
  }

  while (v15 != 24);
}

char **GLON_Leap_Second_Updates(char **result, int *a2, uint64_t a3)
{
  v3 = a2 + 9216;
  v4 = a2[9863];
  if (v4 >= 1 && *(result + 5) == 1 && *result >= 1)
  {
    v5 = *(result + 3);
    v6 = -0.5;
    if (v5 > 0.0)
    {
      v6 = 0.5;
    }

    v7 = v5 + v6;
    if (v7 <= 2147483650.0)
    {
      v8 = v7 >= -2147483650.0 ? v7 : 0x80000000;
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (v4 - 604800 * *(result + 8) - v8 >= 0xFF100F01)
    {
      v9 = 0;
      v10 = a2 + 2806;
      v11 = a2 + 3838;
      v12 = a3 + 28608;
      for (i = a3 + 6304; ; i += 192)
      {
        v15 = *v10;
        v10 += 16;
        v14 = v15;
        if (v15 >= 1 && v14 <= v3[647] && *(i + 24) == 1)
        {
          v16 = 1;
        }

        else
        {
          if (*v11 < 1 || *v11 > v3[647] || *(i + 24) != 2)
          {
            goto LABEL_28;
          }

          v16 = 2;
        }

        if ((*(v12 + v9) & 1) == 0)
        {
          break;
        }

LABEL_28:
        ++v9;
        v11 += 9;
        if (v9 == 24)
        {
          return result;
        }
      }

      v17 = *(v3 + 2592);
      v18 = *i - v17;
      *i = v18;
      if (v18 < 0)
      {
        v19 = -1;
        v20 = 604800;
      }

      else
      {
        if (v18 <= 0x93A80)
        {
LABEL_27:
          *(v12 + v9) = 1;
          result = EvLog_nd("GLON_Leap_Second_Updates:  Adj Ref Time, Slot %d  E/A %d  SP %d ", 3, a3, v9 + 1, v16, v17);
          goto LABEL_28;
        }

        v19 = 1;
        v20 = -604800;
      }

      *i = v20 + v18;
      *(i + 4) += v19;
      goto LABEL_27;
    }
  }

  return result;
}

char **GLON_State_Update(char **result, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v60 = *MEMORY[0x29EDCA608];
  if (!*(a3 + 60) || *(a3 + 64) != 1)
  {
    return result;
  }

  v9 = result;
  v10 = 0;
  v11 = a6 + 6144;
  do
  {
    v12 = *(v11 + 184);
    if (v12 == 2)
    {
      v13 = *(a4 + 2036);
    }

    else
    {
      if (v12 != 1 || (*(*(a4 + 2034) + v10) & 1) != 0)
      {
        goto LABEL_11;
      }

      v13 = *(a4 + 2035);
    }

    if ((*(v13 + v10) & 1) == 0)
    {
      *(v11 + 172) = 0uLL;
      *(v11 + 144) = 0uLL;
      *(v11 + 160) = 0uLL;
      *(v11 + 112) = 0uLL;
      *(v11 + 128) = 0uLL;
      *(v11 + 80) = 0uLL;
      *(v11 + 96) = 0uLL;
      *(v11 + 48) = 0uLL;
      *(v11 + 64) = 0uLL;
      *(v11 + 16) = 0uLL;
      *(v11 + 32) = 0uLL;
      *v11 = 0uLL;
    }

LABEL_11:
    ++v10;
    v11 += 192;
  }

  while (v10 != 24);
  *(result + 152) = 0;
  GLON_Immediate_Updates(result, a3, a4, a6);
  v14 = *(a3 + 24) + 7.0;
  if (v14 <= 0.0)
  {
    v15 = -0.5;
  }

  else
  {
    v15 = 0.5;
  }

  v16 = v14 + v15;
  if (v16 >= -2147483650.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x80000000;
  }

  if (v16 <= 2147483650.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x7FFFFFFF;
  }

  v19 = *(a3 + 72) + 7.0;
  if (v19 <= 0.0)
  {
    v20 = -0.5;
  }

  else
  {
    v20 = 0.5;
  }

  v21 = v19 + v20;
  if (v21 <= 2147483650.0)
  {
    if (v21 >= -2147483650.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0x80000000;
    }
  }

  else
  {
    v22 = 0x7FFFFFFF;
  }

  v23 = 0;
  v24 = *(a3 + 16);
  v25 = *(a3 + 66);
  v26 = v18 > 604799;
  v27 = (a6 + 6312);
  v28 = 0x7FFFFFFF;
  v29 = 0xFFFFFFFFLL;
  v30 = 0xFFFFFFFFLL;
  v31 = 0x7FFFFFFFLL;
  while (2)
  {
    if (v27[4])
    {
      v32 = *(v27 + 2);
      if (v28 > v32)
      {
        v33 = *v27;
        goto LABEL_33;
      }

      if (v28 == v32)
      {
        v33 = *v27;
        if (v33 < v31)
        {
LABEL_33:
          v30 = (v23 + 32);
          v29 = v23;
          v31 = v33;
          v28 = *(v27 + 2);
        }
      }
    }

    v23 = (v23 + 1);
    v27 += 48;
    if (v23 != 24)
    {
      continue;
    }

    break;
  }

  if (v22 <= 86399)
  {
    v34 = v22;
  }

  else
  {
    v34 = (v22 - 86400);
  }

  if (v18 <= 604799)
  {
    v35 = v18;
  }

  else
  {
    v35 = v18 - 604800;
  }

  if (v29 == -1)
  {
    return GLON_Leap_Second_Updates(a3, a4, a6);
  }

  if (v30 > 0x94 || v29 >= 0x18)
  {
    EvLog_nd("GLON_StUd:  Bad Glo Idx ", 2, v31, v30, v29);
    return GLON_Leap_Second_Updates(a3, a4, a6);
  }

  v36 = v29;
  if (*(*(a4 + 1401) + v29) != 1)
  {
    goto LABEL_58;
  }

  if (*(*(a4 + 2035) + v29) == 1 && (*(*(a4 + 2039) + v29) & 1) != 0)
  {
    return GLON_Leap_Second_Updates(a3, a4, a6);
  }

  v37 = (*(a3 + 68) + (v22 > 86399));
  v38 = v24 + v26;
  if (*(*(a4 + 2034) + v29) != 1)
  {
    if (*(*(a4 + 2036) + v29) == 1)
    {
      v43 = (*(a3 + 68) + (v22 > 86399));
      v52 = v24 + v26;
      v53[0] = 0uLL;
      *(&v53[1] + 5) = 0;
      *&v53[1] = 0;
      *(&v53[1] + 14) = 0;
      BYTE6(v53[2]) = 0;
      GLON_AlmBin2Int(&a4[9 * v29 + 3838], v53);
      v54 = *&v53[0];
      v44.i64[0] = SHIDWORD(v53[0]);
      v44.i64[1] = SLODWORD(v53[1]);
      *&v45.f64[0] = *&vcvtq_f64_s64(v44);
      v44.i64[0] = HIDWORD(v53[0]);
      v44.i64[1] = LODWORD(v53[1]);
      v45.f64[1] = vcvtq_f64_u64(*&v44).f64[1];
      v44.i64[0] = SDWORD1(v53[1]);
      v44.i64[1] = SDWORD2(v53[1]);
      v46.f64[0] = SBYTE12(v53[1]);
      LOWORD(v47) = HIWORD(v53[1]);
      v46.f64[1] = v47;
      *&v55[2] = WORD5(v53[0]);
      *&v55[8] = vmulq_f64(v45, xmmword_2997616C0);
      *&v55[24] = vmulq_f64(vcvtq_f64_s64(v44), xmmword_2997616D0);
      *&v55[40] = vmulq_f64(v46, xmmword_2997616E0);
      *&v55[56] = SLOWORD(v53[2]) * 0.0000958737992;
      *&v56 = vcvtd_n_f64_s32(SWORD1(v53[2]), 0x12uLL);
      WORD4(v56) = WORD2(v53[2]);
      BYTE10(v56) = BYTE6(v53[2]);
      *v55 = a4[9 * v36 + 3840];
      if (!*v55)
      {
        return GLON_Leap_Second_Updates(a3, a4, a6);
      }

      v48 = a6 + 192 * v30;
      GLON_RealAlm2RefState(v25, v43, v34, &v54, v48);
      *(v48 + 160) = v35;
      *(v48 + 164) = v52;
      goto LABEL_59;
    }

LABEL_58:
    v49 = (a6 + 192 * v30);
    *(v49 + 172) = 0u;
    v49[9] = 0u;
    v49[10] = 0u;
    v49[7] = 0u;
    v49[8] = 0u;
    v49[5] = 0u;
    v49[6] = 0u;
    v49[3] = 0u;
    v49[4] = 0u;
    v49[1] = 0u;
    v49[2] = 0u;
    *v49 = 0u;
LABEL_59:
    *(a6 + v36 + 28608) = 0;
    return GLON_Leap_Second_Updates(a3, a4, a6);
  }

  v39 = *(v9 + 152);
  if (v39 > 299)
  {
    EvLog_nd("GLON_StUd:  Delay SchUd ", 2, v31, (v30 + 1), v39);
  }

  else
  {
    v51 = v38;
    v54 = 0;
    *v55 = 0;
    *&v55[5] = 0;
    memset(&v55[16], 0, 48);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
    memset(v53, 0, 62);
    v40 = v37;
    GLON_EphBin2Int(&a4[16 * v29 + 2806], v53, 0);
    GLON_EphInt2Real(v53, &v54);
    v50 = v30;
    v41 = a6 + 192 * v30;
    GLON_Calc_State_Table_Eph(v25, v40, v34, &v54, v41, v9 + 152);
    if (*(*(a4 + 2035) + v36) != 1 || GLON_Cross_Check_SVRS_vs_EE(v25, v40, v34, v41, &a4[27 * v36 + 3190]))
    {
      v42 = a6 + 192 * v50;
      *(v42 + 160) = v35;
      *(v42 + 164) = v51;
      goto LABEL_59;
    }

    *(*(a4 + 2041) + v36) = 1;
    *(a6 + 192 * v50 + 184) = 0;
    *(*(a4 + 2034) + v36) = 0;
    *(*(a4 + 2033) + v36) = 1;
  }

  return GLON_Leap_Second_Updates(a3, a4, a6);
}

BOOL GLON_Cross_Check_SVRS_vs_EE(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x29EDCA608];
  v19 = 0.0;
  API_Get_UTC_Cor(1, &v19);
  v18 = 0;
  v17 = 0.0;
  v16 = 0;
  Glon_To_GPS_Time(a1, a2, a3, v19, &v16, &v18, &v17);
  v10 = v18 + (v16 << 10);
  v11 = -0.5;
  if (v17 > 0.0)
  {
    v11 = 0.5;
  }

  v12 = v17 + v11;
  if (v17 + v11 <= 2147483650.0)
  {
    if (v12 >= -2147483650.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x80000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  memset(v22, 0, 28);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  Get_GPS_Kep_Ephemeris(*(a4 + 176), *(a4 + 180), a5, v22);
  v14 = Kep_Check_Ephemeris(v10, v13, v22);
  if (!ST_Check_Eph_Kep_Err("GLON_Cross_Check_SVRS_vs_EE", v14, v22))
  {
    return 1;
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  Kep_Calc_SV_Ref_State(1, v10, v13, v22, v20);
  return ST_Cross_Check_SVRS_vs_SVRS(a4, v20);
}

const char *Hal11_GetStackDumpString(int a1, int a2)
{
  v2 = a2 | (a1 << 8);
  if (v2 > 6146)
  {
    if (v2 <= 32769)
    {
      if (v2 > 11263)
      {
        if (v2 > 13311)
        {
          if (v2 == 13312)
          {
            return "Misaligned_Data_Access";
          }

          if (v2 == 32769)
          {
            return "Read_AUX_Bus_BadAddress";
          }
        }

        else
        {
          if (v2 == 11264)
          {
            return "Divide_Zero";
          }

          if (v2 == 12288)
          {
            return "Data_Cache_Consistency";
          }
        }
      }

      else if (v2 > 7168)
      {
        if (v2 == 7169)
        {
          return "Disabled_Extension";
        }

        if (v2 == 7170)
        {
          return "Action_Point_Hit_Inst";
        }
      }

      else
      {
        if (v2 == 6147)
        {
          return "Data_TLB_Protection_Violation_OR_Mem_RMW";
        }

        if (v2 == 7168)
        {
          return "Privilege_Violation";
        }
      }
    }

    else if (v2 <= 32779)
    {
      if (v2 > 32776)
      {
        if (v2 == 32777)
        {
          return "Write_AUX_Bus_BadAddress";
        }

        if (v2 == 32778)
        {
          return "Write_Security_Breach";
        }
      }

      else
      {
        if (v2 == 32770)
        {
          return "Read_Security_Breach";
        }

        if (v2 == 32772)
        {
          return "Read_AUX_BusTimeout";
        }
      }
    }

    else if (v2 <= 61446)
    {
      if (v2 == 32780)
      {
        return "Write_AUX_BusTimeout";
      }

      if (v2 == 61446)
      {
        return "FP_Invalid";
      }
    }

    else
    {
      switch(v2)
      {
        case 61447:
          return "FP_Divide_Zero";
        case 61448:
          return "FP_Overflow";
        case 61449:
          return "FP_QNaN";
      }
    }

    return "UnknownExcp";
  }

  if (v2 > 3076)
  {
    if (v2 <= 5121)
    {
      if (v2 > 4095)
      {
        if (v2 == 4096)
        {
          return "Inst_Fetch_TLB_Miss";
        }

        if (v2 == 5121)
        {
          return "Data_TLCB_LD_LLOCK";
        }
      }

      else
      {
        if (v2 == 3077)
        {
          return "Data_Flush_Mem";
        }

        if (v2 == 3078)
        {
          return "Inst_Fetch_Mem";
        }
      }
    }

    else
    {
      if (v2 > 6143)
      {
        if (v2 == 6144)
        {
          return "Inst_Fetch_Protection_Violation";
        }

        if (v2 == 6145)
        {
          return "Mem_Read";
        }

        return "Data_TLB_Violation_OR_Mem_Write";
      }

      if (v2 == 5122)
      {
        return "Data_TLCB_ST_SCOND";
      }

      if (v2 == 5123)
      {
        return "Data_TLCB_EX";
      }
    }

    return "UnknownExcp";
  }

  if (v2 <= 3072)
  {
    if (v2 > 2048)
    {
      if (v2 == 2049)
      {
        return "Illegal_Inst_Seq";
      }

      if (v2 == 3072)
      {
        return "Double_Fault";
      }
    }

    else
    {
      if (v2 == 1024)
      {
        return "Extern_Mem";
      }

      if (v2 == 2048)
      {
        return "Illegal_Inst";
      }
    }

    return "UnknownExcp";
  }

  if (v2 > 3074)
  {
    if (v2 == 3075)
    {
      return "Fatal_Cache";
    }

    else
    {
      return "Kernel_data_Mem";
    }
  }

  else if (v2 == 3073)
  {
    return "Overlapping_TLB_Entries";
  }

  else
  {
    return "Fatal_TLB";
  }
}

uint64_t Hal11_HandleEvent(int a1, unsigned __int8 *a2, unsigned int a3)
{
  v43 = *MEMORY[0x29EDCA608];
  if (a1 <= 77)
  {
    if (a1 == 75)
    {
      return 1;
    }

    if (a1 == 76)
    {
      Hal26_HandleLowPowerMsg(a2, a3);
      return 1;
    }

    goto LABEL_19;
  }

  if (a1 != 78)
  {
    if (a1 == 87)
    {
      if (a3 != 16)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StackDump Rsp Len,%hu\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 87, "Hal11_HandleEvent", 783, a3);
        v8 = 1;
        v9 = v18;
        v10 = 2;
LABEL_40:
        LbsOsaTrace_WriteLog(0xDu, __str, v9, v10, 1);
        return v8;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%hhu\n");
LABEL_18:
      v8 = 1;
      v9 = v7;
      v10 = 4;
      goto LABEL_40;
    }

    if (a1 == 84)
    {
      if (!a2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
          goto LABEL_39;
        }

        return 1;
      }

      if (!a3)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
          goto LABEL_39;
        }

        return 1;
      }

      if (a3 <= 0xB)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v41 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v41);
LABEL_39:
          v8 = 1;
          v9 = v6;
          v10 = 0;
          goto LABEL_40;
        }

        return 1;
      }

      v19 = a2[8];
      if (v19 > 0x4C)
      {
        if (a2[8] > 0x56u)
        {
          if (v19 == 87)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v35 = mach_continuous_time();
              v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MECpu\n", (*&g_MacClockTicksToMsRelation * v35), "HAL", 69, "Hal11_HandleStatusMsg", 1300);
              LbsOsaTrace_WriteLog(0xDu, __str, v36, 0, 1);
            }

            Hal_CommsItfUpdateStatus(0);
            v26 = 2;
            goto LABEL_80;
          }

          if (v19 == 119)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v29 = mach_continuous_time();
              v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpCpu\n", (*&g_MacClockTicksToMsRelation * v29), "HAL", 69, "Hal11_HandleStatusMsg", 1300);
              LbsOsaTrace_WriteLog(0xDu, __str, v30, 0, 1);
            }

            Hal_CommsItfUpdateStatus(0);
            v26 = 3;
            goto LABEL_80;
          }
        }

        else
        {
          if (v19 == 77)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v31 = mach_continuous_time();
              v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MESlp Event\n", (*&g_MacClockTicksToMsRelation * v31), "HAL", 73, "Hal11_HandleStatusMsg");
              LbsOsaTrace_WriteLog(0xDu, __str, v32, 4, 1);
            }

            v26 = 8;
            goto LABEL_80;
          }

          if (v19 == 84)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v24 = mach_continuous_time();
              v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v24), "HAL", 69, "Hal11_HandleStatusMsg", 1320);
              LbsOsaTrace_WriteLog(0xDu, __str, v25, 0, 1);
            }

            v26 = 9;
            goto LABEL_80;
          }
        }

        goto LABEL_78;
      }

      if (a2[8] > 0x46u)
      {
        if (v19 == 71)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v33 = mach_continuous_time();
            v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v33), "HAL", 69, "Hal11_HandleStatusMsg", 1302);
            LbsOsaTrace_WriteLog(0xDu, __str, v34, 0, 1);
          }

          Hal_CommsItfUpdateStatus(0);
          v26 = 4;
          goto LABEL_80;
        }

        if (v19 == 72)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v27 = mach_continuous_time();
            v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWErr\n", (*&g_MacClockTicksToMsRelation * v27), "HAL", 69, "Hal11_HandleStatusMsg", 1302);
            LbsOsaTrace_WriteLog(0xDu, __str, v28, 0, 1);
          }

          Hal_CommsItfUpdateStatus(0);
          v26 = 5;
          goto LABEL_80;
        }

LABEL_78:
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
        v26 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v38 = mach_continuous_time();
          v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgId,%c,len,%u\n", (*&g_MacClockTicksToMsRelation * v38), "HAL", 69, "Hal11_HandleStatusMsg", 515, a2[8], a3);
          LbsOsaTrace_WriteLog(0xDu, __str, v39, 0, 1);
          v26 = 0;
        }

LABEL_80:
        if (g_HalCallbacks)
        {
          g_HalCallbacks(v26, v23);
        }

        return 1;
      }

      if (v19 != 32)
      {
        if (v19 == 65)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CalibComplete\n", (*&g_MacClockTicksToMsRelation * v20), "HAL", 73, "Hal11_HandleCalibCompleteStatus");
            LbsOsaTrace_WriteLog(0xDu, __str, v21, 4, 1);
          }

          if (!gnssOsa_SemRelease(g_HandleAckSem) && LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            __error();
            v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v22);
            goto LABEL_39;
          }

          return 1;
        }

        goto LABEL_78;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HWStatusOK\n");
      goto LABEL_18;
    }

LABEL_19:
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MId,%u\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 68, "Hal11_HandleEvent", 770, a1);
      v13 = 5;
LABEL_31:
      LbsOsaTrace_WriteLog(0xDu, __str, v12, v13, 1);
      return 0;
    }

    return 0;
  }

  if (dword_2A191DCD0 == 2472)
  {
    HAL34_SunshineStackDumpHandler(a2, a3);
    return 1;
  }

  if (dword_2A191DCD4 == 4)
  {
    v14 = dword_2A191DCD0 == 3431 && xmmword_2A191DCC0 == 2;
    if (v14 && DWORD1(xmmword_2A191DCC0) == 1)
    {
      HAL24_BrightStackDumpHandler(a2, a3);
      return 1;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "HAL", 87, "Hal11_StackDumpHandler", 264);
    v13 = 2;
    goto LABEL_31;
  }

  return 0;
}

uint64_t Hal11_WaitCalibComplete(void)
{
  v6 = *MEMORY[0x29EDCA608];
  result = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1388u);
  if (result)
  {
    if (result == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v1 = mach_continuous_time();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 69, "Hal11_WaitCalibComplete", 1543);
        v3 = 0;
LABEL_7:
        LbsOsaTrace_WriteLog(0xDu, __str, v2, v3, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 87, "Hal11_WaitCalibComplete", 1543);
      v3 = 2;
      goto LABEL_7;
    }

    return 4294967287;
  }

  return result;
}

uint64_t Trace_GN_SUPL_Connect_Ind_In(int a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 == 7)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SSL Error Handle,%u\n", v9);
  }

  else
  {
    if (a2 == 6)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Connect success for ReqId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 65, "Trace_GN_SUPL_Connect_Ind_In", a1);
      v6 = 1;
      return LbsOsaTrace_WriteLog(0x12u, __str, v5, v6, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handle,%u,Status,%u\n", v8);
  }

  v5 = v7;
  v6 = 0;
  return LbsOsaTrace_WriteLog(0x12u, __str, v5, v6, 1);
}

void Trace_GN_SUPL_Push_Delivery_In(unsigned int *a1, unsigned int a2, unsigned __int8 *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a1 && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handle\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "Trace_GN_SUPL_Push_Delivery_In", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
  }

  if (a3)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 3u, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = (*&g_MacClockTicksToMsRelation * v8);
      LcsUtils::GetInstance(v8);
      v10 = mach_continuous_time();
      std::to_string(&v16, (*&g_MacClockTicksToMsRelation * v10));
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v16;
      }

      else
      {
        v11 = v16.__r_.__value_.__r.__words[0];
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Push_Delivery_In time stamp,%s,PDU_Size,%u\n", v9, "SPL", 77, "Trace_GN_SUPL_Push_Delivery_In", v11, a2);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v12, 3, 1);
    }

    Instance = LcsUtils::GetInstance(IsLoggingAllowed);
    LcsUtils::TraceBuffer(Instance, a3, a2);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDU\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "Trace_GN_SUPL_Push_Delivery_In", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
  }
}

uint64_t Trace_GN_SUPL_AidRequest_In(int a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 73, "Trace_GN_SUPL_AidRequest_In", a1);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 4, 1);
  }

  result = Trace_GN_SUPL_AidReqData(a2);
  if (a3)
  {
    return Trace_GN_SUPL_Pos_data(a3);
  }

  return result;
}

uint64_t Trace_GN_SUPL_AidReqData(uint64_t a1)
{
  v42 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Aid Req\n", (*&g_MacClockTicksToMsRelation * v23), "SPL", 69, "Trace_GN_SUPL_AidReqData", 513);
    v25 = 0;
    return LbsOsaTrace_WriteLog(0x12u, __str, v24, v25, 1);
  }

  if (*(a1 + 8))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v3 = *(a1 + 8);
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[3];
    v8 = v3[4];
    v9 = v3[5];
    v10 = v3[6];
    v11 = v3[7] == 0;
    v12 = 70;
    if (v11)
    {
      v13 = 70;
    }

    else
    {
      v13 = 84;
    }

    if (v10)
    {
      v14 = 84;
    }

    else
    {
      v14 = 70;
    }

    if (v9)
    {
      v15 = 84;
    }

    else
    {
      v15 = 70;
    }

    if (v8)
    {
      v16 = 84;
    }

    else
    {
      v16 = 70;
    }

    if (v7)
    {
      v17 = 84;
    }

    else
    {
      v17 = 70;
    }

    if (v6)
    {
      v18 = 84;
    }

    else
    {
      v18 = 70;
    }

    if (v5)
    {
      v19 = 84;
    }

    else
    {
      v19 = 70;
    }

    if (v4)
    {
      v12 = 84;
    }

    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RefTime,%c,RefPos,%c,Iono,%c,Agps,%c,Aglon,%c,Aqzss,%c,Asbas,%c,Abds,%c\n", v2, "SPL", 73, "Trace_GN_SUPL_AidReqData", v12, v19, v18, v17, v16, v15, v14, v13);
    v21 = 4;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 2u, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Generic Assistance data is NULL\n", (*&g_MacClockTicksToMsRelation * v26), "SPL", 87, "Trace_GN_SUPL_AidReqData", 515);
    v21 = 2;
  }

  LbsOsaTrace_WriteLog(0x12u, __str, v20, v21, 1);
LABEL_33:
  v27 = *(a1 + 16);
  if (!v27)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v40 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS Assistance Requirements List is NULL\n", (*&g_MacClockTicksToMsRelation * v40), "SPL", 73, "Trace_GN_SUPL_AidReqData");
    v25 = 4;
    return LbsOsaTrace_WriteLog(0x12u, __str, v24, v25, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v28 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (v27[10])
    {
      v29 = 84;
    }

    else
    {
      v29 = 70;
    }

    if (v27[9])
    {
      v30 = 84;
    }

    else
    {
      v30 = 70;
    }

    if (v27[8])
    {
      v31 = 84;
    }

    else
    {
      v31 = 70;
    }

    if (v27[7])
    {
      v32 = 84;
    }

    else
    {
      v32 = 70;
    }

    if (v27[6])
    {
      v33 = 84;
    }

    else
    {
      v33 = 70;
    }

    if (v27[5])
    {
      v34 = 84;
    }

    else
    {
      v34 = 70;
    }

    if (v27[4])
    {
      v35 = 84;
    }

    else
    {
      v35 = 70;
    }

    v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Constellation,%s,Utc,%c,Rti,%c,Alm,%c,Eph,%c,RefMeas,%c,DataBits,%c,Aux,%c\n", v28, "SPL", 65, "Trace_GN_SUPL_AidReqData_AssistReq", "GPS", v35, v34, v33, v32, v31, v30, v29);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v36, 1, 1);
  }

  if (v27[20])
  {
    v37 = 0;
    do
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v38 = mach_continuous_time();
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: satid,%u,IODE,%u\n", (*&g_MacClockTicksToMsRelation * v38), "SPL", 73, "Trace_GN_SUPL_AidReqData_AssistReq", v27[v37 + 21], *&v27[2 * v37 + 86]);
        result = LbsOsaTrace_WriteLog(0x12u, __str, v39, 4, 1);
      }

      ++v37;
    }

    while (v37 < v27[20]);
  }

  return result;
}

uint64_t Trace_GN_SUPL_Pos_data(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Last Known Position\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "Trace_GN_SUPL_Pos_data", 513);
    v11 = 0;
    return LbsOsaTrace_WriteLog(0x12u, __str, v10, v11, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FixStat,%u,FixType,%u,ShapeType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 73, "Trace_GN_SUPL_Pos_data", *(a1 + 4), *(a1 + 8), *(a1 + 12));
    LbsOsaTrace_WriteLog(0x12u, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Sign of Lat,%u,lat,%u,long,%d,Alt,%u,UnMjraxis,%u,UnMnraxis,%u,Bearing Uncer,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 73, "Trace_GN_SUPL_Pos_data", *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 30), *(a1 + 31), *(a1 + 32));
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Dr of Al,%u,Alt Uncer,%u,Pos Conf,%u,Incl Angle,%u,offset Angle,%u,Inr Rad,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 73, "Trace_GN_SUPL_Pos_data", *(a1 + 36), *(a1 + 40), *(a1 + 41), *(a1 + 42), *(a1 + 43), *(a1 + 44));
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Year,%u,Month,%u,Days,%u,Hr,%u,Min,%u,Sec,%u,MillSec,%u\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 73, "Trace_GN_SUPL_Pos_data", *(a1 + 52), *(a1 + 54), *(a1 + 56), *(a1 + 58), *(a1 + 60), *(a1 + 62), *(a1 + 64));
    v11 = 4;
    return LbsOsaTrace_WriteLog(0x12u, __str, v10, v11, 1);
  }

  return result;
}

void Trace_GN_SUPL_PDU_Delivery_In(int a1, unsigned int a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 3u, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = (*&g_MacClockTicksToMsRelation * v7);
      LcsUtils::GetInstance(v7);
      v9 = mach_continuous_time();
      std::to_string(&v15, (*&g_MacClockTicksToMsRelation * v9));
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v15;
      }

      else
      {
        v10 = v15.__r_.__value_.__r.__words[0];
      }

      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PDU_Delivery_In time stamp,%s,PDU_Size,%u,Handle,%u\n", v8, "SPL", 77, "Trace_GN_SUPL_PDU_Delivery_In", v10, a2, a1);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v11, 3, 1);
    }

    Instance = LcsUtils::GetInstance(IsLoggingAllowed);
    LcsUtils::TraceBuffer(Instance, a3, a2);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handle,%u\n", (*&g_MacClockTicksToMsRelation * v13), "SPL", 69, "Trace_GN_SUPL_PDU_Delivery_In", 513, a1);
    LbsOsaTrace_WriteLog(0x12u, __str, v14, 0, 1);
  }
}

uint64_t Trace_GN_SUPL_LocationId(uint64_t a1)
{
  v77 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Location ID\n");
LABEL_82:
    v61 = v12;
    v62 = 0;
    return LbsOsaTrace_WriteLog(0x12u, __str, v61, v62, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CellInfoStatus,%u,CellInfoType,%u,SimId,%u\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 73, "Trace_GN_SUPL_LocationId", *a1, *(a1 + 4), *(a1 + 8));
    LbsOsaTrace_WriteLog(0x12u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 4);
  v74 = a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v30 = mach_continuous_time();
        v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: refMCC,%u,refMNC,%u,refUC,%u,refLAC,%u,MeasResCount,%u,cellParamsID,%u\n", (*&g_MacClockTicksToMsRelation * v30), "SPL", 73, "Trace_GN_SUPL_LocationId", *(a1 + 12), *(a1 + 14), *(a1 + 20), *(a1 + 16), *(a1 + 28), *(a1 + 26));
        LbsOsaTrace_WriteLog(0x12u, __str, v31, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TDD uarfcn_Nt,%u\n", (*&g_MacClockTicksToMsRelation * v32), "SPL", 73, "Trace_GN_SUPL_LocationId", *(a1 + 24));
        LbsOsaTrace_WriteLog(0x12u, __str, v33, 4, 1);
      }

      if (*(a1 + 28))
      {
        v34 = 0;
        v72 = a1 + 32;
        v35 = a1 + 45;
        do
        {
          v36 = (v72 + 772 * v34);
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v37 = mach_continuous_time();
            v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell neighbor,%zu,RSSI,%u,numberOfCells,%u\n", (*&g_MacClockTicksToMsRelation * v37), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, *(v36 + 2), *(v36 + 3));
            LbsOsaTrace_WriteLog(0x12u, __str, v38, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v39 = mach_continuous_time();
            v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell neighbor,%zu,TDD uarfcn_Nt,%u\n", (*&g_MacClockTicksToMsRelation * v39), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, *v36);
            LbsOsaTrace_WriteLog(0x12u, __str, v40, 4, 1);
          }

          v73 = v35;
          if (*(v36 + 3))
          {
            v41 = 0;
            do
            {
              v42 = &v36[12 * v41 + 2];
              if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
              {
                bzero(__str, 0x410uLL);
                v43 = mach_continuous_time();
                v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell neighbor,%zu,cellno,%zu,cellIdentity,%u\n", (*&g_MacClockTicksToMsRelation * v43), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, v41, *v42);
                LbsOsaTrace_WriteLog(0x12u, __str, v44, 4, 1);
              }

              if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
              {
                bzero(__str, 0x410uLL);
                v45 = mach_continuous_time();
                v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,cellno,%zu TDD cellParametersID,%u,TGSN,%u,pathloss,%u,RSCP,%u,timeSlotCount,%u\n", (*&g_MacClockTicksToMsRelation * v45), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, v41, *(v42 + 4), *(v42 + 5), *(v42 + 7), *(v42 + 6), *(v42 + 8));
                LbsOsaTrace_WriteLog(0x12u, __str, v46, 4, 1);
              }

              if (*(v42 + 8))
              {
                v47 = 0;
                do
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
                  {
                    bzero(__str, 0x410uLL);
                    v48 = mach_continuous_time();
                    v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,cellno,%zu,timeslotindex,%zu,timeSlotISCP,%u\n", (*&g_MacClockTicksToMsRelation * v48), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, v41, v47, *(v35 + v47));
                    LbsOsaTrace_WriteLog(0x12u, __str, v49, 4, 1);
                  }

                  ++v47;
                }

                while (v47 < *(v42 + 8));
              }

              else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
              {
                bzero(__str, 0x410uLL);
                v50 = mach_continuous_time();
                v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,cellno,%zu TDD No Timeslot information\n", (*&g_MacClockTicksToMsRelation * v50), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, v41);
                LbsOsaTrace_WriteLog(0x12u, __str, v51, 4, 1);
              }

              ++v41;
              v35 += 24;
            }

            while (v41 < *(v36 + 3));
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v52 = mach_continuous_time();
            v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell neighbor,%zu No list of cells\n", (*&g_MacClockTicksToMsRelation * v52), "SPL", 73, "Trace_GN_SUPL_LocationId", v34);
            LbsOsaTrace_WriteLog(0x12u, __str, v53, 4, 1);
          }

          ++v34;
          v35 = v73 + 772;
        }

        while (v34 < v74[28]);
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v63 = mach_continuous_time();
        v64 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell  no Neighbor cell information available\n", (*&g_MacClockTicksToMsRelation * v63), "SPL", 73, "Trace_GN_SUPL_LocationId");
        LbsOsaTrace_WriteLog(0x12u, __str, v64, 4, 1);
      }

      if ((v74[6208] & 1) == 0)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 2u, 0, 0);
        if (!result)
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        v67 = mach_continuous_time();
        v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Timing Advance\n", (*&g_MacClockTicksToMsRelation * v67), "SPL", 87, "Trace_GN_SUPL_LocationId", 770);
        v62 = 2;
        return LbsOsaTrace_WriteLog(0x12u, __str, v61, v62, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v65 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaTimingAdvance tA,%u,tARes,%u,chipRate,%u\n", v65);
      goto LABEL_97;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: lteCell mcc,%u,mnc,%u,cellIdentity,%u,TrackingAreaCode,%u,PhysicalCellID,%u,tA,%u,RSRP,%u,RSRQ,%u,EARFCN,%u,NMRCount,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 73, "Trace_GN_SUPL_LocationId", *(a1 + 12), *(a1 + 14), *(a1 + 16), *(a1 + 24), *(a1 + 20), *(a1 + 36), *(a1 + 28), *(a1 + 29), *(a1 + 32), *(a1 + 38));
          LbsOsaTrace_WriteLog(0x12u, __str, v6, 4, 1);
        }

        if (*(a1 + 38))
        {
          v7 = 0;
          v8 = (a1 + 56);
          do
          {
            result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v10 = mach_continuous_time();
              v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: lteCell neighbor,%zu,cgiInfo mcc,%u,mnc,%u,cellIdentity,%u,physicalCellId,%u,EARFCN,%u,RSRP,%u,RSRQ,%u\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 73, "Trace_GN_SUPL_LocationId", v7, *(v8 - 8), *(v8 - 7), *(v8 - 3), *(v8 - 4), *v8, *(v8 - 6), *(v8 - 5));
              result = LbsOsaTrace_WriteLog(0x12u, __str, v11, 4, 1);
            }

            ++v7;
            v8 += 5;
          }

          while (v7 < *(a1 + 38));
          return result;
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
        if (!result)
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        v68 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v54 = "%10u %s%c %s: No neighbor cells for LTE\n";
        goto LABEL_96;
      }

      goto LABEL_80;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v68 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v54 = "%10u %s%c %s: cdmaCell not supported\n";
LABEL_96:
    v66 = snprintf(__str, 0x40FuLL, v54, v68, "SPL", 73, "Trace_GN_SUPL_LocationId", v69, v70, v71);
LABEL_97:
    v61 = v66;
    v62 = 4;
    return LbsOsaTrace_WriteLog(0x12u, __str, v61, v62, 1);
  }

  if (v4 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v55 = mach_continuous_time();
      v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GSM Cell refMCC,%u,refMNC,%u,refLAC,%u,refCI,%u,tA,%u,numberOfNeighbors,%u\n", (*&g_MacClockTicksToMsRelation * v55), "SPL", 73, "Trace_GN_SUPL_LocationId", *(a1 + 12), *(a1 + 14), *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 26));
      LbsOsaTrace_WriteLog(0x12u, __str, v56, 4, 1);
    }

    if (!*(a1 + 26))
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v68 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v54 = "%10u %s%c %s: No GSM neigbour list\n";
      goto LABEL_96;
    }

    v57 = 0;
    v58 = (a1 + 31);
    do
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v59 = mach_continuous_time();
        v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: gsmCell NMR Element,%zu,aRFCN,%u,bSIC,%u,rxLev,%u\n", (*&g_MacClockTicksToMsRelation * v59), "SPL", 73, "Trace_GN_SUPL_LocationId", v57, *(v58 - 3), *(v58 - 1), *v58);
        result = LbsOsaTrace_WriteLog(0x12u, __str, v60, 4, 1);
      }

      ++v57;
      v58 += 4;
    }

    while (v57 < *(a1 + 26));
  }

  else
  {
    if (v4 != 2)
    {
LABEL_80:
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfo Type\n");
      goto LABEL_82;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WCDMA Cell refMCC,%u,refMNC,%u,refUC,%u,refLAC,%u,PSC,%u,MeasResCount,%u,UarfcnDl,%u,UarfcnUl,%u\n", (*&g_MacClockTicksToMsRelation * v13), "SPL", 73, "Trace_GN_SUPL_LocationId", *(a1 + 12), *(a1 + 14), *(a1 + 20), *(a1 + 16), *(a1 + 28), *(a1 + 30), *(a1 + 24), *(a1 + 26));
      LbsOsaTrace_WriteLog(0x12u, __str, v14, 4, 1);
    }

    if (!*(a1 + 30))
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v68 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v54 = "%10u %s%c %s: wcdmaCell: no Neighbor cell information available\n";
      goto LABEL_96;
    }

    v15 = 0;
    v75 = a1 + 32;
    v16 = (a1 + 48);
    do
    {
      v17 = (v75 + 392 * v15);
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WCDMA neighbor,%zu,RSSI,%u,numberOfCells,%u\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 73, "Trace_GN_SUPL_LocationId", v15, *(v17 + 4), *(v17 + 5));
        LbsOsaTrace_WriteLog(0x12u, __str, v19, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,uarfcn_UL,%u,uarfcn_DL,%u\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 73, "Trace_GN_SUPL_LocationId", v15, v17[1], *v17);
        LbsOsaTrace_WriteLog(0x12u, __str, v21, 4, 1);
      }

      if (*(v17 + 5))
      {
        v22 = 0;
        v23 = v16;
        do
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,cellno,%zu,cellIdentity,%u\n", (*&g_MacClockTicksToMsRelation * v24), "SPL", 73, "Trace_GN_SUPL_LocationId", v15, v22, *(v23 - 2));
            LbsOsaTrace_WriteLog(0x12u, __str, v25, 4, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,cellno,%zu,PrimaryScramblingCode,%u,cpich_Ec_N0,%u,RSCP,%u,pathloss,%u\n", (*&g_MacClockTicksToMsRelation * v26), "SPL", 73, "Trace_GN_SUPL_LocationId", v15, v22, *(v23 - 2), *(v23 - 2), *(v23 - 1), *v23);
            result = LbsOsaTrace_WriteLog(0x12u, __str, v27, 4, 1);
          }

          ++v22;
          v23 += 12;
        }

        while (v22 < *(v17 + 5));
      }

      else
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell neighbor,%zu No list of cells\n", (*&g_MacClockTicksToMsRelation * v28), "SPL", 73, "Trace_GN_SUPL_LocationId", v15);
          result = LbsOsaTrace_WriteLog(0x12u, __str, v29, 4, 1);
        }
      }

      ++v15;
      v16 += 392;
    }

    while (v15 < v74[30]);
  }

  return result;
}

uint64_t Trace_GN_SUPL_TimerExpiry_In(int a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerId,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 65, "Trace_GN_SUPL_TimerExpiry_In", a1, a2);
    return LbsOsaTrace_WriteLog(0x12u, __str, v6, 1, 1);
  }

  return result;
}

void Trace_GN_SUPL_PPDU_Delivery_In(int a1, unsigned int a2, const unsigned __int8 *a3, int a4, int a5, int a6, int a7)
{
  v21 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u,PDU Size,%u,PDU Content Type,%u,Pos Protocol Type,%u,EncStatus,%u, isLastPos, %u\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 65, "Trace_GN_SUPL_PPDU_Delivery_In", a1, a2, a4, a5, a6, a7);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v16, 1, 1);
  }

  if (a3)
  {
    Instance = LcsUtils::GetInstance(IsLoggingAllowed);
    LcsUtils::TraceBuffer(Instance, a3, a2);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 69, "Trace_GN_SUPL_PPDU_Delivery_In", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v19, 0, 1);
  }
}

uint64_t Trace_GN_SUPL_Set_Config(unsigned __int16 *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "Trace_GN_SUPL_Set_Config", 513);
    v8 = 0;
    return LbsOsaTrace_WriteLog(0x12u, __str, v7, v8, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: UT1,%u,UT2,%u,UT3,%u,PrefPosMthd,%u\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 65, "Trace_GN_SUPL_Set_Config", *a1, a1[1], a1[2], *(a1 + 2));
    LbsOsaTrace_WriteLog(0x12u, __str, v3, 1, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v6 = 70;
    if (*(a1 + 14))
    {
      v6 = 84;
    }

    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: sessionTimeout,%u,DisableMSA,%c\n", v5, "SPL", 65, "Trace_GN_SUPL_Set_Config", a1[6], v6);
    v8 = 1;
    return LbsOsaTrace_WriteLog(0x12u, __str, v7, v8, 1);
  }

  return result;
}

uint64_t Trace_GN_SUPL_Extd_Set_Config(_BYTE *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (a1[2])
    {
      v4 = 84;
    }

    else
    {
      v4 = 70;
    }

    if (a1[1])
    {
      v5 = 84;
    }

    else
    {
      v5 = 70;
    }

    if (*a1)
    {
      v6 = 84;
    }

    else
    {
      v6 = 70;
    }

    if (a1[7])
    {
      v7 = 84;
    }

    else
    {
      v7 = 70;
    }

    if (a1[6])
    {
      v8 = 84;
    }

    else
    {
      v8 = 70;
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP Support,%c,SHA1 Overeride,%c,MSA,%c,MSB,%c,AUTO,%c\n", v3, "SPL", 65, "Trace_GN_SUPL_Extd_Set_Config", v8, v7, v6, v5, v4);
    v10 = 1;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "Trace_GN_SUPL_Extd_Set_Config", 513);
    v10 = 0;
  }

  return LbsOsaTrace_WriteLog(0x12u, __str, v9, v10, 1);
}

uint64_t Trace_gnsDC_SlpInfo(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = *(a1 + 260);
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
        if (!result)
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV4,%s,Port,%u\n", v11);
        goto LABEL_20;
      }

      if (v1 == 3)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
        if (!result)
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV6,%s,Port,%u\n", v8);
        goto LABEL_20;
      }
    }

    else
    {
      if (!v1)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (!result)
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Address Type,%u\n", v10);
        goto LABEL_17;
      }

      if (v1 == 1)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
        if (!result)
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FQDN,%s,Port,%u\n", v7);
LABEL_20:
        v5 = v3;
        v6 = 1;
        return LbsOsaTrace_WriteLog(0x12u, __str, v5, v6, 1);
      }
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Address Type,%u\n", v9);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
  }

LABEL_17:
  v5 = v4;
  v6 = 0;
  return LbsOsaTrace_WriteLog(0x12u, __str, v5, v6, 1);
}

uint64_t Trace_GN_SUPL_SetIdParams(uint64_t result)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "Trace_GN_SUPL_SetIdParams", 513);
    v5 = 0;
    return LbsOsaTrace_WriteLog(0x12u, __str, v4, v5, 1);
  }

  v1 = result;
  v2 = *(result + 23);
  if (v2 < 0)
  {
    v2 = *(result + 8);
  }

  if (v2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v1 + 23) < 0)
      {
        v1 = *v1;
      }

      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IMSI,%s\n", v3, "SPL", 73, "Trace_GN_SUPL_SetIdParams", v1);
      v5 = 4;
      return LbsOsaTrace_WriteLog(0x12u, __str, v4, v5, 1);
    }
  }

  return result;
}

uint64_t Trace_GN_SUPL_Abort(int a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u, AbortType,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 65, "Trace_GN_SUPL_Abort", a1, a2);
    return LbsOsaTrace_WriteLog(0x12u, __str, v6, 1, 1);
  }

  return result;
}

uint64_t Trace_GN_SUPL_AidRequest_Out(int a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = (*&g_MacClockTicksToMsRelation * v9);
    LcsUtils::GetInstance(v9);
    v11 = mach_continuous_time();
    std::to_string(&v14, (*&g_MacClockTicksToMsRelation * v11));
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v14;
    }

    else
    {
      v12 = v14.__r_.__value_.__r.__words[0];
    }

    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: time stamp,%s,Handle,%u,Timeout,%u,PosMethod%u,AllowedGnssMask,%u\n", v10, "SPL", 65, "Trace_GN_SUPL_AidRequest_Out", v12, a1, a2, a3, a4);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    return LbsOsaTrace_WriteLog(0x12u, __str, v13, 1, 1);
  }

  return result;
}

uint64_t Trace_GN_SUPL_Connect_Req_Parms(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 260);
  if (v1 > 1)
  {
    if (v1 == 3)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV6,%s,Port,%u\n", v10);
      goto LABEL_17;
    }

    if (v1 == 2)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV4,%s,Port,%u\n", v8);
      goto LABEL_17;
    }
  }

  else
  {
    if (!v1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IP Type is DFLT\n");
      goto LABEL_14;
    }

    if (v1 == 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FQDN,%s,Port,%u\n", v7);
LABEL_17:
      v5 = v3;
      v6 = 1;
      return LbsOsaTrace_WriteLog(0x12u, __str, v5, v6, 1);
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
  if (!result)
  {
    return result;
  }

  bzero(__str, 0x410uLL);
  v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IP Type,%u\n", v9);
LABEL_14:
  v5 = v4;
  v6 = 0;
  return LbsOsaTrace_WriteLog(0x12u, __str, v5, v6, 1);
}

uint64_t Trace_GN_SUPL_Disconnect_Req_Out(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 65, "Trace_GN_SUPL_Disconnect_Req_Out", a1);
    return LbsOsaTrace_WriteLog(0x12u, __str, v4, 1, 1);
  }

  return result;
}

void Trace_GN_SUPL_PDU_Delivery_Out(int a1, unsigned int a2, unsigned __int8 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 3u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = (*&g_MacClockTicksToMsRelation * v7);
    LcsUtils::GetInstance(v7);
    v9 = mach_continuous_time();
    std::to_string(&v13, (*&g_MacClockTicksToMsRelation * v9));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13.__r_.__value_.__r.__words[0];
    }

    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PDU_Delivery_Out time stamp,%s,request_id,%u,buflen,%u\n", v8, "SPL", 77, "Trace_GN_SUPL_PDU_Delivery_Out", v10, a1, a2);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v11, 3, 1);
  }

  Instance = LcsUtils::GetInstance(IsLoggingAllowed);
  LcsUtils::TraceBuffer(Instance, a3, a2);
}

uint64_t Trace_GN_SUPL_Position_Resp_Out(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v8 = 70;
    if (a4)
    {
      v8 = 84;
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u,NiSession,%c\n", v7, "SPL", 65, "Trace_GN_SUPL_Position_Resp_Out", a1, v8);
    LbsOsaTrace_WriteLog(0x12u, __str, v9, 1, 1);
  }

  return Trace_GN_SUPL_Pos_data(a3);
}

uint64_t Trace_GN_SUPL_TimerStart_Out(int a1, int a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerID,%u,Type,%u,DurationMs,%u\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 65, "Trace_GN_SUPL_TimerStart_Out", a1, a2, a3);
    return LbsOsaTrace_WriteLog(0x12u, __str, v8, 1, 1);
  }

  return result;
}

uint64_t Trace_GN_SUPL_TimerStop_Out(int a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerID,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 65, "Trace_GN_SUPL_TimerStop_Out", a1, a2);
    return LbsOsaTrace_WriteLog(0x12u, __str, v6, 1, 1);
  }

  return result;
}

uint64_t Trace_GN_SUPL_PPDU_Decode_Out(int a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v21 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = (*&g_MacClockTicksToMsRelation * v12);
    LcsUtils::GetInstance(v12);
    v14 = mach_continuous_time();
    std::to_string(&v19, (*&g_MacClockTicksToMsRelation * v14));
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v19;
    }

    else
    {
      v15 = v19.__r_.__value_.__r.__words[0];
    }

    v16 = 70;
    if (a6)
    {
      v17 = 84;
    }

    else
    {
      v17 = 70;
    }

    if (a5)
    {
      v16 = 84;
    }

    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PPDU_Decode_Out time stamp,%s,Handle,%u,PDU_Size,%u,PduType,%u,LoggingDisabled,%c,Emergency,%c\n", v13, "SPL", 65, "Trace_GN_SUPL_PPDU_Decode_Out", v15, a1, a2, a4, v16, v17);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    return LbsOsaTrace_WriteLog(0x12u, __str, v18, 1, 1);
  }

  return result;
}

uint64_t Trace_GN_SUPL_PPDU_SessionEnd_Out(int a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = (*&g_MacClockTicksToMsRelation * v5);
    LcsUtils::GetInstance(v5);
    v7 = mach_continuous_time();
    std::to_string(&v10, (*&g_MacClockTicksToMsRelation * v7));
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: time stamp,%s,PpduHandle,%u,status,%u\n", v6, "SPL", 65, "Trace_GN_SUPL_PPDU_SessionEnd_Out", v8, a1, a2);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    return LbsOsaTrace_WriteLog(0x12u, __str, v9, 1, 1);
  }

  return result;
}

uint64_t Trace_GN_SUPL_PPDU_PduRequest_Out(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = (*&g_MacClockTicksToMsRelation * v11);
    LcsUtils::GetInstance(v11);
    v13 = mach_continuous_time();
    std::to_string(&v17, (*&g_MacClockTicksToMsRelation * v13));
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v17;
    }

    else
    {
      v14 = v17.__r_.__value_.__r.__words[0];
    }

    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: time stamp,%s,Handle,%u,ProtocolType,%u,ReqPduType,%u\n", v12, "SPL", 65, "Trace_GN_SUPL_PPDU_PduRequest_Out", v14, a1, a2, a3);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    LbsOsaTrace_WriteLog(0x12u, __str, v15, 1, 1);
  }

  Trace_GN_SUPL_AidReqData(a4);
  return Trace_GN_SUPL_LocationId(a6);
}

uint64_t Trace_gnsSUPL_SlpInfo(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_17;
  }

  v1 = *(a1 + 256);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV6,%s\n");
      goto LABEL_20;
    }

    if (v1 == 3)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FQDN,%s\n");
      goto LABEL_20;
    }
  }

  else
  {
    if (!v1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!result)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (v1 == 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV4,%s\n");
LABEL_20:
      v6 = v3;
      v7 = 4;
      return LbsOsaTrace_WriteLog(0x12u, __str, v6, v7, 1);
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
  if (!result)
  {
    return result;
  }

LABEL_16:
  bzero(__str, 0x410uLL);
  v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Address Type,%u\n", v5);
LABEL_17:
  v6 = v4;
  v7 = 0;
  return LbsOsaTrace_WriteLog(0x12u, __str, v6, v7, 1);
}

uint64_t Trace_GN_SUPL_SuplInitInfo(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (*(a1 + 808))
    {
      v3 = 84;
    }

    else
    {
      v3 = 70;
    }

    if (*(a1 + 5))
    {
      v4 = 84;
    }

    else
    {
      v4 = 70;
    }

    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ProxyMode,%c,Ver,%u,%u,%u,PosMethod,%u,ecall,%u,NotifyType,%u,posTech,%u\n", v2, "SPL", 65, "Trace_GN_SUPL_SuplInitInfo", v4, *(a1 + 6), *(a1 + 7), *(a1 + 8), *(a1 + 12), v3, *(a1 + 812), *(a1 + 816));
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 1, 1);
  }

  if (*(a1 + 272))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: v_SlpId\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 65, "Trace_GN_SUPL_SuplInitInfo");
      LbsOsaTrace_WriteLog(0x12u, __str, v7, 1, 1);
    }

    Trace_gnsSUPL_SlpInfo(a1 + 16);
  }

  if (*(a1 + 536))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: E_Slp\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 65, "Trace_GN_SUPL_SuplInitInfo");
      LbsOsaTrace_WriteLog(0x12u, __str, v9, 1, 1);
    }

    Trace_gnsSUPL_SlpInfo(a1 + 280);
  }

  if (*(a1 + 800))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: p_Slp\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 65, "Trace_GN_SUPL_SuplInitInfo");
      LbsOsaTrace_WriteLog(0x12u, __str, v11, 1, 1);
    }

    Trace_gnsSUPL_SlpInfo(a1 + 544);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v13 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v14 = 70;
    if (*(a1 + 817))
    {
      v14 = 84;
    }

    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: QoP valid,%c,horacc,%u,veracc,%u,maxLocAge,%u,delay,%u\n", v13, "SPL", 65, "Trace_GN_SUPL_SuplInitInfo", v14, *(a1 + 820), *(a1 + 821), *(a1 + 824), *(a1 + 828));
    return LbsOsaTrace_WriteLog(0x12u, __str, v15, 1, 1);
  }

  return result;
}

double GAL_EphInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = 60 * *(a1 + 18);
  v2 = *(a1 + 20);
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  *&v4.f64[0] = *&vcvtq_f64_s64(v3);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4.f64[1] = vcvtq_f64_u64(v3).f64[1];
  *(a2 + 24) = vmulq_f64(v4, xmmword_2997616F0);
  v5 = *(a1 + 28);
  v3.i64[0] = v5;
  v3.i64[1] = HIDWORD(v5);
  *&v4.f64[0] = *&vcvtq_f64_u64(v3);
  v3.i64[0] = v5;
  v3.i64[1] = SHIDWORD(v5);
  v4.f64[1] = vcvtq_f64_s64(*&v3).f64[1];
  *(a2 + 40) = vmulq_f64(v4, xmmword_299761700);
  v6 = *(a1 + 36);
  v3.i64[0] = v6;
  v3.i64[1] = SHIDWORD(v6);
  *(a2 + 56) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v7.f64[0] = *(a1 + 44);
  v7.f64[1] = *(a1 + 48);
  *(a2 + 72) = vmulq_f64(v7, vdupq_n_s64(0x3D5921FB54442D28uLL));
  v8 = vmovl_s16(*(a1 + 50));
  v3.i64[0] = v8.i32[2];
  v3.i64[1] = v8.i32[3];
  v9 = vcvtq_f64_s64(v3);
  v3.i64[0] = v8.i32[0];
  v3.i64[1] = v8.i32[1];
  *(a2 + 104) = vmulq_f64(v9, xmmword_299761720);
  *(a2 + 88) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_299761710);
  v9.f64[0] = vcvtd_n_f64_s32(*(a1 + 60), 0x1DuLL);
  *(a2 + 120) = vcvtd_n_f64_s32(*(a1 + 58), 5uLL);
  *(a2 + 128) = v9.f64[0];
  *(a2 + 136) = vcvtd_n_f64_s32(*(a1 + 62), 0x1DuLL);
  *(a2 + 144) = 60 * *(a1 + 74);
  v8.i64[0] = *(a1 + 64);
  v3.i64[0] = v8.i32[0];
  v3.i64[1] = v8.i32[1];
  *(a2 + 152) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_299761730);
  v9.f64[0] = vcvtd_n_f64_s32(*(a1 + 76), 0x20uLL);
  *(a2 + 168) = *(a1 + 72) * 1.73472348e-18;
  *(a2 + 176) = v9.f64[0];
  result = vcvtd_n_f64_s32(*(a1 + 78), 0x20uLL);
  *(a2 + 184) = result;
  *(a2 + 194) = *(a1 + 16);
  *(a2 + 197) = *(a1 + 82);
  *(a2 + 198) = *(a1 + 83);
  *(a2 + 200) = *(a1 + 85);
  *(a2 + 201) = *(a1 + 86);
  return result;
}

char **Nav_Kalman_Update_Wrapper(char **a1)
{
  GNSS_Validate_p_list(a1, "Nav_Kalman_Update_Wrapper: Entry");
  Nav_Kalman_Update(a1[22], a1[29], a1[35], a1[13], a1[4], a1[12], a1[7], a1[5], a1[10], a1[9], a1[8], a1[6], a1[15]);

  return GNSS_Validate_p_list(a1, "Nav_Kalman_Update_Wrapper:  Exit");
}

void Gnm29_01RestoreVarMENv(int a1)
{
  *&v15[2036] = *MEMORY[0x29EDCA608];
  bzero(&__s, 0x7FCuLL);
  memset_s(&__s, 0x7FCuLL, 0, 0x7FCuLL);
  __s = -256;
  v13 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:PrefLtlTable,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm29_01RestoreVarMENv", a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:GOOH Occured\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm29_01RestoreVarMENv");
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
    }

    if (g_PrevUsedLtl == 1)
    {
      g_PrevUsedLtl = 0;
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
      {
        goto LABEL_12;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Swapped from Initial To Learned LTL\n");
    }

    else
    {
      g_PrevUsedLtl = 1;
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
      {
        goto LABEL_12;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Swapped from Learned To Initial LTL\n");
    }

    LbsOsaTrace_WriteLog(0xBu, __str, v6, 3, 1);
  }

LABEL_12:
  if ((Gnm53_43ComposeMeWakeMsg(v15) & 1) == 0)
  {
    if (!Gnm53_25ComputeCalibVarMENv())
    {
      if (g_BootMode != 2)
      {
        Gnm53_31SendCalibReq();
        return;
      }

      Gnm53_24ComputeDefaultVarMENv();
    }

    if ((Gnm53_43ComposeMeWakeMsg(v15) & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Sending error\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm29_01RestoreVarMENv");
        LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
      }

      v14 = 0;
    }
  }

  Gnm26_04SendXRestoreVariableMeNv(&__s);
  ++BYTE2(dword_2A19397C6);
  LOBYTE(dword_2A19397C6) = 0;
  if (AgpsFsmStartTimer(8400390, 0xFAu))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm29_01RestoreVarMENv", 1544);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
    }

    BYTE1(dword_2A19397C6) = 0;
  }

  else
  {
    BYTE1(dword_2A19397C6) = 1;
  }
}

void *Gnm29_02HandleMeNvRestoreAck(unsigned __int8 *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1[1])
  {
    v2 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm29_02HandleMeNvRestoreAck", a1[1]);
      LbsOsaTrace_WriteLog(0xBu, __str, v4, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = Gnm25_18CheckRestoreStatus(*a1, "LTL:Var ME");
  }

  if (BYTE1(dword_2A19397C6) == 1)
  {
    if (AgpsFsmStopTimer(8400390) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm29_02HandleMeNvRestoreAck", 1545);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
    }

    BYTE1(dword_2A19397C6) = 0;
  }

  if (v2)
  {
    Gnm10_31SendMEWakeRsp(1);
    Gnm10_29SendFwActivity(1, 0);
    return 0;
  }

  if (BYTE2(dword_2A19397C6) <= 2u)
  {
    Gnm29_01RestoreVarMENv(0);
    return 0;
  }

  byte_2A19397CA = 0;
  dword_2A19397C6 = 0;
  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v10, 0x400uLL, "ASSERT: %s %d MWL : LTL restore failed after max attempts", "Gnm29_02HandleMeNvRestoreAck", 233);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "Gnm29_02HandleMeNvRestoreAck", v10);
      LbsOsaTrace_WriteLog(0xEu, __str, v9, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm29_02HandleMeNvRestoreAck", "gnm29NvMeZx.cpp", 234, "false && LTL restore failed after max attempts");
  }

  Gnm03_60BaseBandResetReq(6);
  return &a_GnmResetState;
}

uint64_t Gnm29_03HandleVarMeRestoreNoAck(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_VAR_ME_NV_RESTORE_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm29_03HandleVarMeRestoreNoAck");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (BYTE1(dword_2A19397C6) == 1)
    {
      BYTE1(dword_2A19397C6) = 0;
      if (BYTE2(dword_2A19397C6) > 2u)
      {
        byte_2A19397CA = 0;
        dword_2A19397C6 = 0;
        snprintf(v9, 0x400uLL, "ASSERT: %s %d MWL : LTL restore timeout after max attempts", "Gnm29_03HandleVarMeRestoreNoAck", 279);
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v7 = mach_continuous_time();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "Gnm29_03HandleVarMeRestoreNoAck", v9);
          LbsOsaTrace_WriteLog(0xEu, __str, v8, 0, 1);
        }

        gnssOsa_FlushLog();
        __assert_rtn("Gnm29_03HandleVarMeRestoreNoAck", "gnm29NvMeZx.cpp", 280, "false && LTL restore timeout after max attempts");
      }

      Gnm29_01RestoreVarMENv(0);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm29_03HandleVarMeRestoreNoAck", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t Gnm29_04BackupMeNv(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Len,%ubytes\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm29_04BackupMeNv", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  __dst = 0;
  memcpy_s("Gnm29_04BackupMeNv", 299, &__dst, 2u, (a1 + 8), 2uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:MENType,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm29_04BackupMeNv", __dst);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if ((~__dst & 3) != 0)
  {
    goto LABEL_20;
  }

  if ((__dst & 0x40) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:STLDivBit set by ME\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm29_04BackupMeNv");
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
    }

    if (g_StlDivergenceIndicator)
    {
      goto LABEL_17;
    }

    if ((dword_2A192081C & 0x10000) != 0)
    {
LABEL_16:
      if (g_IsExtClock != 1)
      {
        result = Gnm53_64CopyLearntLTL((a1 + 10), (*(a1 + 4) - 2));
        if (!result)
        {
          return result;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:STLDivBit considered by HSW\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm29_04BackupMeNv");
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
    }

    Gnm53_56SetStlDivInd();
  }

  if ((g_StlDivergenceIndicator & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  bzero(&g_LTLDataPPM, 0x5E2uLL);
  g_AgeingTimeGpsSeconds = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:XO Learnings Dropped\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm29_04BackupMeNv");
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 2, 1);
  }

LABEL_20:
  if ((__dst & 0x1C) == 0)
  {
    return 1;
  }

  result = Gnm53_44BackupLearntMENv((a1 + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t Hal_Init(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_Init");
    LbsOsaTrace_WriteLog(0xDu, __str, v1, 4, 1);
  }

  g_HalCallbacks = 0;
  off_2A19268B0 = 0;
  result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 73, "Hal_Init");
    return LbsOsaTrace_WriteLog(0xDu, __str, v4, 4, 1);
  }

  return result;
}

uint64_t Hal_DeInit(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_DeInit");
    LbsOsaTrace_WriteLog(0xDu, __str, v1, 4, 1);
  }

  result = gnssOsa_Calloc("Hal_DeInit", 71, 1, 0x18uLL);
  if (result)
  {
    *(result + 16) = 0;
    AgpsSendFsmMsg(129, 129, 8454656, result);
    g_HalCallbacks = 0;
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 73, "Hal_DeInit");
      return LbsOsaTrace_WriteLog(0xDu, __str, v4, 4, 1);
    }
  }

  return result;
}

void Hal_DestMissingHandler(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (*(a1 + 4) == 8455424)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal_DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
  }
}

uint64_t Hal00_03DefaultMsgHandler()
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 69, "Hal00_03DefaultMsgHandler", 519);
    LbsOsaTrace_WriteLog(0xDu, __str, v1, 0, 1);
  }

  return 0;
}

void Hal_SetConfigurations(__int128 *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = gnssOsa_Calloc("Hal_SetConfigurations", 122, 1, 0x108uLL);
    if (v2)
    {
      v3 = v2;
      v4 = *a1;
      v5 = a1[1];
      v6 = a1[2];
      *(v2 + 60) = a1[3];
      *(v2 + 44) = v6;
      *(v2 + 28) = v5;
      *(v2 + 12) = v4;
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      *(v2 + 124) = a1[7];
      *(v2 + 108) = v9;
      *(v2 + 92) = v8;
      *(v2 + 76) = v7;
      v10 = a1[8];
      v11 = a1[9];
      v12 = a1[10];
      *(v2 + 188) = a1[11];
      *(v2 + 172) = v12;
      *(v2 + 156) = v11;
      *(v2 + 140) = v10;
      v13 = a1[12];
      v14 = a1[13];
      v15 = a1[14];
      *(v2 + 248) = *(a1 + 236);
      *(v2 + 236) = v15;
      *(v2 + 220) = v14;
      *(v2 + 204) = v13;
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HAL_SET_CFG_MSG\n", (*&g_MacClockTicksToMsRelation * v16), "HAL", 73, "Hal_SetConfigurations");
        LbsOsaTrace_WriteLog(0xDu, __str, v17, 4, 1);
      }

      AgpsSendFsmMsg(129, 129, 8457728, v3);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx pltcnf\n", (*&g_MacClockTicksToMsRelation * v18), "HAL", 73, "Hal_SetConfigurations", 513);
    LbsOsaTrace_WriteLog(0xDu, __str, v19, 4, 1);
  }
}

uint64_t Hal_StartConn(int a1, char a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal_StartConn");
    LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
  }

  if (!a3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "Hal_StartConn", 516);
    v11 = 0;
    return LbsOsaTrace_WriteLog(0xDu, __str, v10, v11, 1);
  }

  result = gnssOsa_Calloc("Hal_StartConn", 157, 1, 0x20uLL);
  if (result)
  {
    *(result + 16) = a3;
    *(result + 24) = a1;
    *(result + 28) = a2;
    AgpsSendFsmMsg(129, 129, 8454144, result);
    if ((a2 & 1) == 0)
    {
      GnssDbgMgr_SetPlatform(a1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 73, "Hal_StartConn");
      v11 = 4;
      return LbsOsaTrace_WriteLog(0xDu, __str, v10, v11, 1);
    }
  }

  return result;
}

uint64_t Hal_StopConn(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_StopConn");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  result = gnssOsa_Calloc("Hal_StopConn", 191, 1, 0x18uLL);
  if (result)
  {
    *(result + 16) = a1;
    AgpsSendFsmMsg(129, 129, 8454656, result);
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal_StopConn");
      return LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
    }
  }

  return result;
}

void Hal00_06ReadBufNtf(size_t a1, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
LABEL_12:
    LbsOsaTrace_WriteLog(0xDu, __str, v7, 2, 1);
    return;
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_12;
  }

  v4 = gnssOsa_Calloc("Hal00_06ReadBufNtf", 232, 1, 0x20uLL);
  if (v4)
  {
    v5 = v4;
    v6 = gnssOsa_Calloc("Hal00_06ReadBufNtf", 238, 1, a1);
    v5[2] = v6;
    if (v6)
    {
      memcpy_s("Hal00_06ReadBufNtf", 245, v6, a1, a2, a1);
      *(v5 + 12) = a1;

      AgpsSendFsmMsg(129, 129, 8455424, v5);
    }

    else
    {

      free(v5);
    }
  }
}

void Hal_GnssBaseBandReset(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = gnssOsa_Calloc("Hal_GnssBaseBandReset", 284, 1, 0x18uLL);
    if (v2)
    {
      v2[2] = a1;

      AgpsSendFsmMsg(129, 129, 8454912, v2);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 69, "Hal_GnssBaseBandReset", 516);
    LbsOsaTrace_WriteLog(0xDu, __str, v4, 0, 1);
  }
}

void Hal_SetPowerReportStatus(char a1, uint64_t a2)
{
  v4 = gnssOsa_Calloc("Hal_SetPowerReportStatus", 305, 1, 0x18uLL);
  if (v4)
  {
    v4[2] = a2;
    *(v4 + 12) = a1;

    AgpsSendFsmMsg(129, 129, 8457216, v4);
  }
}

void Hal_NotifyMEInActiveStat(void (*a1)(BOOL))
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_NotifyMEInActiveStat");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = gnssOsa_Calloc("Hal_NotifyMEInActiveStat", 330, 1, 0xCuLL);
    if (v4)
    {
      off_2A19268B0 = a1;
      AgpsSendFsmMsg(129, 129, 8456448, v4);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal_NotifyMEInActiveStat", 516);
    LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
  }
}

uint64_t Hal_TriggerTimeMarkPulse(void (*a1)(unsigned int, BOOL))
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_TriggerTimeMarkPulse");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (a1)
  {
    result = gnssOsa_Calloc("Hal_TriggerTimeMarkPulse", 355, 1, 0x18uLL);
    if (result)
    {
      *(result + 16) = a1;
      AgpsSendFsmMsg(129, 129, 8457472, result);
      return 1;
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 87, "Hal_TriggerTimeMarkPulse", 516);
      LbsOsaTrace_WriteLog(0xDu, __str, v6, 2, 1);
      return 0;
    }
  }

  return result;
}

uint64_t AscToU1(uint64_t result, unsigned __int8 *a2)
{
  *a2 = 0;
  if (result)
  {
    v2 = *result;
    if ((v2 - 48) > 9)
    {
      if ((v2 - 65) > 5 && (v2 - 97) > 5)
      {
        return 0;
      }

      v3 = 16 * v2 - 112;
    }

    else
    {
      v3 = 16 * v2;
    }

    *a2 = v3;
    v4 = *(result + 1);
    v5 = v4 - 48;
    if ((v4 - 48) < 0xA)
    {
LABEL_12:
      *a2 = v5 + v3;
      return 1;
    }

    if ((v4 - 65) <= 5)
    {
      v5 = v4 - 55;
      goto LABEL_12;
    }

    if ((v4 - 97) <= 5)
    {
      v5 = v4 - 87;
      goto LABEL_12;
    }

    return 0;
  }

  return result;
}

uint64_t GM_Adjust_AAD(unsigned int a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v33 = *MEMORY[0x29EDCA608];
  if (((a2 & a1 & 0x80000000) != 0) != v5 || (a1 & 0x80000000) == 0 && !*(a5 + 48 * a1 + 4) || (a2 & 0x80000000) == 0 && !*(a5 + 48 * a2 + 4))
  {
    return 0;
  }

  if ((a1 & 0x80000000) != 0)
  {
    v21 = a3 + 56 * a2;
    v22 = *(v21 + 16);
    v31[0] = *v21;
    v31[1] = v22;
    v31[2] = *(v21 + 32);
    v32 = *(v21 + 48);
    v23 = a5 + 48 * a2;
    GM_Aid_NSSS_Meas(v23, 0, v31);
    v24 = vsub_s32(*&v31[0], *(v23 + 28));
    v20 = (v24.i32[1] + 1534500 * v24.i32[0]);
  }

  else
  {
    v8 = (a3 + 56 * a1);
    v9 = a5 + 48 * a1;
    v11 = *v8;
    v10 = v8[1];
    v12 = *(v9 + 28);
    v13 = *(v9 + 32);
    v14 = *v8 - v12;
    if (v14 >= 201601)
    {
      if (v14 >= 0x93A80)
      {
        v14 = 604800;
      }

      v15 = v12 + 403200 * ((~(v12 + v14) + v11 + 403200) / 0x62700u);
      v14 = v11 - 403200 - v15;
      v12 = v15 + 403200;
      *(v9 + 28) = v12;
    }

    v16 = v10 - v13;
    if (v14 <= -201601)
    {
      v17 = -604800 - v14;
      if (v14 > 0xFFF6C580)
      {
        v17 = 0;
      }

      v18 = ((__PAIR64__(v17, v14) - 4294362496u) >> 32) / 0x62700;
      if (v14 < 0xFFF6C580)
      {
        ++v18;
      }

      v19 = 403200 * v18;
      v14 += 403200 + v19;
      *(v9 + 28) = v12 - 403200 - v19;
    }

    v20 = (v16 + 1534500 * v14);
  }

  if (v20 >= 0)
  {
    v25 = v20;
  }

  else
  {
    v25 = -v20;
  }

  v26 = (a4 - 1);
  if (a4 - 1 >= 0 && v25 >= 6)
  {
    v27 = v26 + 1;
    v28 = (a5 + 48 * v26 + 28);
    do
    {
      if (*(v28 - 24) == 1)
      {
        Inc_CA_Chips(v20, v28 + 1, v28);
      }

      v28 -= 12;
    }

    while (v27-- > 1);
  }

  return v20;
}

uint64_t Kep_Check_Ephemeris(int a1, int a2, int *a3)
{
  v3 = a3[2];
  v4 = *(a3 + 9);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      if (v4 != 1356)
      {
        goto LABEL_21;
      }
    }

    else if (v3 != 5 || v4 != 0)
    {
      goto LABEL_21;
    }
  }

  else if (v3 == 1)
  {
    if (*(a3 + 9))
    {
      goto LABEL_21;
    }
  }

  else if (v3 != 3 || v4 != 1024)
  {
    goto LABEL_21;
  }

  *(a3 + 9) = a1;
  v6 = a2 - a3[5];
  if (v6 <= 302399)
  {
    LOWORD(v4) = a1;
    if (v6 >= -302400)
    {
      goto LABEL_21;
    }

    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  LOWORD(v4) = v7 + a1;
  *(a3 + 9) = v7 + a1;
LABEL_21:
  if (a1 - 512 <= v4)
  {
    v8 = v4;
  }

  else
  {
    do
    {
      LOWORD(v4) = v4 + 1024;
    }

    while (a1 - 512 > v4);
    v8 = v4;
    *(a3 + 9) = v4;
  }

  v9 = -604800;
  v10 = a3[5];
  v11 = v10 + 604800 * v8;
  v12 = a2 + 604800 * a1 - v11;
  if (v12 <= 302399)
  {
    if (v12 >= -302400)
    {
      goto LABEL_30;
    }

    v13 = -1;
    v14 = -604800;
    v9 = 604800;
  }

  else
  {
    v13 = 1;
    v14 = 604800;
  }

  *(a3 + 9) = v13 + v4;
  v11 += v14;
  v12 += v9;
LABEL_30:
  v15 = *a3;
  if (*a3)
  {
    v16 = v11 - v15;
    if (v16 < 0)
    {
      v16 = -v16;
    }

    v15 = v16 > 0xA8C0;
  }

  if (v12 >= 0)
  {
    v17 = v12;
  }

  else
  {
    v17 = -v12;
  }

  if (!*(a3 + 14) && v17 > 0x2A30 || *(a3 + 14) == 1 && v17 >= 0x3F49)
  {
    v15 |= 2u;
  }

  v18 = *(a3 + 12);
  if (v3 == 6 || (v19 = 4800.0, v3 == 4) && v18 <= 5)
  {
    v19 = 6300.0;
  }

  v20 = a3[6];
  v21 = 0.000000314159265;
  v22 = 7000.0;
  v23 = 0.1;
  if (v3 != 5 && (v3 != 4 || v18 <= 5))
  {
    v26 = v3 == 4 && *(a3 + 12) < 6u || v3 == 6;
    v27 = ((v18 - 14) & 0xFB) == 0 && v3 == 3;
    v23 = 0.25;
    if (!v27)
    {
      v23 = 0.03;
    }

    v22 = 6700.0;
    if (!v26)
    {
      v22 = 5800.0;
    }

    v21 = 0.000000314159265;
    if (!v26)
    {
      v21 = 0.0;
    }
  }

  v28 = *(a3 + 21);
  if (v10 <= 604799)
  {
    v29 = v15 | (4 * (v10 >> 31));
  }

  else
  {
    v29 = v15 | (4 * (v10 >> 31)) | 8;
  }

  v30 = v29 | (16 * (v20 >> 31));
  if (v20 <= 604799)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 | 0x20;
  }

  if (v28 < v19)
  {
    v31 |= 0x40u;
  }

  if (v28 > v22)
  {
    v31 |= 0x80u;
  }

  v32 = *(a3 + 25);
  v33 = *(a3 + 26);
  if (v32 < 0.0)
  {
    v31 |= 0x100u;
  }

  if (v32 > v23)
  {
    v31 |= 0x200u;
  }

  if (v33 < -0.00000198862815)
  {
    v31 |= 0x400u;
  }

  if (v33 <= v21)
  {
    return v31;
  }

  else
  {
    return v31 | 0x800;
  }
}

uint64_t SBAS_Set_StateTable(uint64_t a1, uint64_t a2, int *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = &unk_2A192ECF0;
  v6 = 10;
  v7 = "SBAS_Set_StateTable:  Replacing Eph,  SV %3d  IOD %3d";
  while (v5[46] != 1 || *(v5 + 180) != a1)
  {
    v5 += 48;
    if (!--v6)
    {
      v5 = &unk_2A192ECF0;
      v8 = 10;
      v7 = "SBAS_Set_StateTable:  New Eph,  SV %3d  IOD %3d";
      while (v5[46])
      {
        v5 += 48;
        if (!--v8)
        {
          return 0;
        }
      }

      break;
    }
  }

  EvLog_v(v7, a1, a2);
  *(v12[0].n128_u64 + 5) = 0;
  v12[0].n128_u64[0] = 0;
  v12[1] = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  SBAS_EphInt2Real(a3, v12);
  SBAS_Eph2RefState(v12, a1, word_2A1928458, *&qword_2A1928460, v5);
  *v10 = vmovn_s64(vcvtq_s64_f64(v13));
  v11 = *&v14;
  if ((Core_Save_SBAS_Apx(a1, 0, *a3, v10) & 1) == 0)
  {
    EvCrt_v("SBAS_Set_StateTable:  Core_Save_SBAS_Apx() Failed,  SV %3d", a1);
  }

  return 1;
}

void NK_Range_Chip_Check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 233) & 1) != 0 || *(a3 + 968) != 1 || *(a3 + 24752) >= 48.8420427 || *(a3 + 12) != 11)
  {
    return;
  }

  v7 = 0;
  v30 = 0;
  v8 = 0;
  memset(v31, 0, sizeof(v31));
  v9 = (a1 + 76);
  v27 = a1 + 604;
  v10 = 4832;
  do
  {
    v11 = *(a3 + v10);
    v12 = a3 + v7;
    if (fabs(v11) <= 586.104512)
    {
      v8 += *(v12 + 2960);
      goto LABEL_27;
    }

    if (*(v12 + 2960))
    {
      v13 = a1 + 2 * v7;
      v14 = (*(v13 + 316) >> 12) - 1;
      v15 = 10 * *(v13 + 844);
      v16 = v15 >> v14;
      v17 = *(a3 + v10 + 2016);
      if (v17 < 21469.9062 && v16 >= 6)
      {
        *(v31 + v7) = 1;
        v29 = v9[2];
        v28 = *v9;
        v19 = GNSS_Id_To_Num_Prn_Idx(*v9);
        v20 = *(a3 + v10);
        if (v20 <= 0.0)
        {
          v21 = -0.5;
        }

        else
        {
          v21 = 0.5;
        }

        v22 = v20 + v21;
        if (v22 <= 2147483650.0)
        {
          if (v22 >= -2147483650.0)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0x80000000;
          }
        }

        else
        {
          v23 = 0x7FFFFFFF;
        }

        ++v30;
        EvCrt_v("Potential ChanReset %d : NKRCC %d %d %d Bad Chip, Resid %d Integ %d CodeLock %d LoopCl %d SNR %d", v7, v29, v28, v19, v23, 1 << v14, v15, v16, *(v27 + v7));
        goto LABEL_27;
      }
    }

    else
    {
      v17 = *(a3 + v10 + 2016);
    }

    v24 = v11 * 0.5 * (v11 * 0.5);
    if (v17 > v24)
    {
      v24 = v17;
    }

    *(a3 + v10 + 2016) = v24;
LABEL_27:
    ++v7;
    v9 += 4;
    v10 += 8;
  }

  while (v7 != 48);
  if (v30 >= 1)
  {
    if (v30 > 4)
    {
      EvCrt_v("Skipping above ChanResets:  %d large & %d small (probably clock bias adjustment)", v30, v8);
    }

    else
    {
      EvCrt_v("Applying above ChanResets to %d channels, with %d not reset", v30, v8);
      for (i = 0; i != 48; ++i)
      {
        if (*(v31 + i) == 1)
        {
          *(a3 + i + 2960) = 0;
          *(a3 + 3056 + 4 * i) = 13;
          ++*(a3 + 2812);
          *(a2 + 6696 + i) = 0;
          *(a4 + i + 365) |= 1u;
          *(a4 + 416 + 4 * i) = *a3;
        }
      }
    }
  }
}

uint64_t NK_Comp_PR_DO_Res(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v144 = *MEMORY[0x29EDCA608];
  *(a7 + 1247) = 0u;
  *(a7 + 1246) = 0u;
  *(a7 + 1245) = 0u;
  *(a7 + 1244) = 0u;
  v113 = (a3 + 24372);
  *(a7 + 1243) = 0u;
  v12 = a7 + 5683;
  *(a7 + 1242) = 0u;
  *(a7 + 1241) = 0u;
  *(a7 + 1240) = 0u;
  *(a7 + 1239) = 0u;
  *(a7 + 1238) = 0u;
  *(a7 + 1237) = 0u;
  *(a7 + 1236) = 0u;
  *(a7 + 1235) = 0u;
  *(a7 + 1234) = 0u;
  *(a7 + 1233) = 0u;
  *(a7 + 1232) = 0u;
  *(a7 + 1231) = 0u;
  *(a7 + 1230) = 0u;
  *(a7 + 1229) = 0u;
  *(a7 + 1228) = 0u;
  *(a7 + 1227) = 0u;
  *(a7 + 1226) = 0u;
  *(a7 + 1225) = 0u;
  *(a7 + 1224) = 0u;
  *(a7 + 349) = 0u;
  *(a7 + 348) = 0u;
  *(a7 + 347) = 0u;
  *(a7 + 346) = 0u;
  *(a7 + 345) = 0u;
  *(a7 + 344) = 0u;
  *(a7 + 343) = 0u;
  *(a7 + 342) = 0u;
  *(a7 + 341) = 0u;
  *(a7 + 340) = 0u;
  *(a7 + 339) = 0u;
  *(a7 + 338) = 0u;
  *(a7 + 337) = 0u;
  *(a7 + 336) = 0u;
  *(a7 + 335) = 0u;
  *(a7 + 334) = 0u;
  *(a7 + 333) = 0u;
  *(a7 + 332) = 0u;
  *(a7 + 331) = 0u;
  *(a7 + 330) = 0u;
  *(a7 + 329) = 0u;
  *(a7 + 328) = 0u;
  *(a7 + 327) = 0u;
  *(a7 + 326) = 0u;
  *(a7 + 2786) = 0u;
  *(a7 + 2790) = 0u;
  *(a7 + 2778) = 0u;
  *(a7 + 2782) = 0u;
  *(a7 + 2770) = 0u;
  *(a7 + 2774) = 0u;
  *(a7 + 2762) = 0u;
  *(a7 + 2766) = 0u;
  *(a7 + 2754) = 0u;
  *(a7 + 2758) = 0u;
  *(a7 + 2746) = 0u;
  *(a7 + 2750) = 0u;
  *(a7 + 2738) = 0u;
  *(a7 + 2742) = 0u;
  *(a7 + 2730) = 0u;
  *(a7 + 2734) = 0u;
  *(a7 + 2722) = 0u;
  *(a7 + 2726) = 0u;
  *(a7 + 2714) = 0u;
  *(a7 + 2718) = 0u;
  *(a7 + 2706) = 0u;
  *(a7 + 2710) = 0u;
  *(a7 + 2698) = 0u;
  *(a7 + 2702) = 0u;
  v94 = a7 + 5683;
  if (*(a4 + 1132) != 1 || *(a7 + 24948) != 1)
  {
    goto LABEL_6;
  }

  if (*v12 >= 0xCu)
  {
    EvCrt_Illegal_Default("NK_Comp_PR_DO_Res", 144);
LABEL_6:
    LOBYTE(v108) = 0;
    goto LABEL_7;
  }

  v108 = 0xF4u >> *v12;
LABEL_7:
  if ((*(a6 + 30) & 1) == 0)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(a1 + 76 + 4 * v16);
      v18 = !Is_Legal(v17) || v17 == 3;
      if (!v18 && *(a7 + v16 + 2864) == 1)
      {
        break;
      }

      if (++v16 == 48)
      {
        goto LABEL_22;
      }
    }

    *(a6 + 30) = 1;
  }

  if ((*v113 - 2) > 4)
  {
LABEL_22:
    *(a7 + 76) = 0;
    a7[154] = -1;
  }

  else
  {
    if (*(v113 + 20) - *(a7 + 9) >= 0)
    {
      v13 = -((*(v113 + 20) - *(a7 + 9)) & 0x3F);
    }

    else
    {
      v13 = (*(a7 + 9) - *(v113 + 20)) & 0x3F;
    }

    if (v13 > 31)
    {
      v13 -= 64;
    }

    v14 = v113[9];
    v15 = *(a3 + 24392) + *(a3 + 24400) * (*(a7 + 3) - v14 + 604800 * v13);
    *(a7 + 76) = v15;
    a7[154] = v14;
    *(a6 + 7304) = v15 * 299792458.0;
  }

  v19 = 0;
  v127 = 0.0;
  v20 = (a6 + 1504);
  *(a6 + 1496) = 0;
  *(a6 + 1512) = 0;
  *(a6 + 1504) = 0;
  v21 = *(a7 + 102) - *(a7 + 103);
  v126 = 0;
  if (*(a7 + 644) == 1)
  {
    GPS_To_UTC_DOY(&v126, *(a7 + 323), *(a7 + 79), *(a3 + 39464));
    v19 = v126;
  }

  v22 = *(a7 + 100) * 57.2957795;
  v107 = v19;
  if (UNB_TropModel::Get_Zenith_Delays_Meter((a6 + 1520), v21, v22, v19, (a6 + 1504), (a6 + 1512)))
  {
    v23 = *v20 + *(a6 + 1512);
  }

  else
  {
    v24 = v21 * 0.001;
    if (v21 * 0.001 <= 1.0)
    {
      v23 = v24 * -0.3248 + 2.4644043 + v24 * 0.0223957 * v24;
    }

    else if (v24 <= 9.0)
    {
      v23 = (0.375 - exp((1.0 - v24) * 0.1226)) * -2.2838 + 0.732;
    }

    else
    {
      v23 = exp((v24 + -9.0) * -0.1424) * 0.7374;
    }

    *v20 = v23;
  }

  *(a6 + 1496) = v23;
  v119 = *(a6 + 1697);
  v25 = *(a6 + 1696) + v119;
  v118 = v25;
  if (v25 > 0x2Fu)
  {
    v25 = 0;
  }

  *(a6 + 1697) = v25;
  v139 = 0;
  v140 = 0;
  memset(v133, 0, sizeof(v133));
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  memset(v138, 0, 30);
  result = VecSortDscU1(a1 + 604, 0x30u, v141);
  v27 = 0;
  v28 = a1 + 76;
  v29 = v142;
  v111 = a1 + 1232;
  *(a7 + 31345) = *v141;
  *(a7 + 31361) = v29;
  v123 = a6 + 7360;
  *(a7 + 31377) = v143;
  v121 = a6 + 7552;
  v122 = a6 + 7744;
  v120 = a6 + 7840;
  v115 = a7 + 4992;
  v117 = a6 + 5928;
  v95 = a6 + 6120;
  v103 = a6 + 6696;
  v96 = a6 + 6312;
  v30 = a7 + 4884;
  v116 = a6 + 7888;
  v31 = -0.9;
  *&v32 = 90000.0;
  v33 = 0.16;
  v34 = -299792458.0;
  v35 = 0.001;
  v36 = 1.0;
  v110 = a1;
  v106 = a6 + 4008;
  v112 = a6 + 1704;
  v98 = a5 + 1960;
  v99 = a5 + 178;
  v100 = a5;
  v97 = a5 + 536;
  v37 = a7 + 728;
  v104 = a1 + 1616;
  v105 = a6 + 2088;
  v93 = a1 + 2000;
  do
  {
    v38 = v141[v27];
    v39 = (v28 + 4 * v38);
    if (*v39 == 6)
    {
      goto LABEL_66;
    }

    v41 = v38 >= v119 && v38 < v118;
    result = Is_Legal(*v39);
    if (!result || *(a7 + v38 + 2864) != 1 || (*(a7 + v38 + 12738) & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v42 = (a2 + 192 * *(a7 + v38 + 12738));
    v43 = v42[9];
    v128[8] = v42[8];
    v128[9] = v43;
    v44 = v42[11];
    v129 = v42[10];
    v130 = v44;
    v45 = v42[5];
    v128[4] = v42[4];
    v128[5] = v45;
    v46 = v42[7];
    v128[6] = v42[6];
    v128[7] = v46;
    v47 = v42[1];
    v128[0] = *v42;
    v128[1] = v47;
    v48 = v42[3];
    v128[2] = v42[2];
    v128[3] = v48;
    if (DWORD2(v130) == 2)
    {
      if (*(a6 + 5) != 1)
      {
        goto LABEL_63;
      }

      v49 = *(a7 + 9);
      if (v49 - SWORD2(v129) > 2 || !*(a6 + 11048) && a7[241] < 2)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (DWORD2(v130) != 1)
      {
        goto LABEL_63;
      }

      LOWORD(v49) = *(a7 + 9);
    }

    result = Comp_CurrState(0x258u, v49, v128, v133, *(a7 + 3), *(v111 + 8 * v38));
    if (DWORD2(v130) != 1)
    {
      if (!result)
      {
        goto LABEL_63;
      }

LABEL_59:
      v125 = 0.0;
      if (*v39 == *(v123 + 4 * v38) && WORD6(v138[1]) == *(v122 + 2 * v38) && DWORD2(v138[1]) == *(v121 + 4 * v38))
      {
        v50 = *(v120 + v38) ^ 1;
      }

      else
      {
        v50 = 1;
      }

      *(v115 + v38) = v50 & 1;
      v109 = Comp_SVrange_Sag_Corr(&v131, &v125, (a7 + 166), &v133[0].f64[1]);
      v51 = 0;
      v52 = v131;
      v53 = (a7 + 212);
      v54 = v132;
      do
      {
        v55 = *(v53 - 1) * v52.f64[1] + *(v53 - 2) * v52.f64[0];
        v56 = *v53;
        v53 += 3;
        *(v128 + v51) = v55 + v56 * v54;
        v51 += 8;
      }

      while (v51 != 24);
      AzEl_SinCos(v128, v106 + 40 * v38, v105 + 40 * v38);
      v90 = v106 + 40 * v38;
      v101 = v105 + 40 * v38;
      AzEl_RadDeg(v90, v101);
      *(v117 + 4 * v38) = *a7;
      v57 = (v112 + 8 * v38);
      v91 = v57;
      if (((*(v115 + v38) | v41) & 1) != 0 || !*(a6 + 11048))
      {
        v58 = v105 + 40 * v38;
      }

      else
      {
        *&v124 = 0;
        if (!R8_EQ(v57, &v124) || (v58 = v105 + 40 * v38, !*(a3 + 8428)))
        {
LABEL_83:
          *&v124 = 0;
          if (R8_EQ(v91, &v124))
          {
            v64 = v105 + 40 * v38;
            v65 = 25.0 / (v36 + *(v101 + 16) * v31 * *(v101 + 16));
            v66 = 0.0;
            v67 = v107;
          }

          else
          {
            v66 = *v91;
            v65 = *v91 * 0.25 * (*v91 * 0.25);
            v67 = v107;
            v64 = v105 + 40 * v38;
          }

          if (*v39 == 3 && *(a6 + 30) == 1)
          {
            v68 = *v113;
            v69 = *&v32;
            if ((*v113 - 2) <= 4)
            {
              *(&v135 + 1) = *(&v135 + 1) - *(a7 + 76);
              v69 = 100.0;
              if (v68 != 2)
              {
                v69 = 2.25;
              }
            }

            *(a6 + 7312) = v69;
            *(&v136 + 1) = v69 + *(&v136 + 1);
          }

          NK_Comp_ith_PR_Res(v38, v67, v133, v64, v110, a6, a7, v109, v21, v22, v66, v65, v125);
          if (*(a7 + v38 + 26208) == 1)
          {
            v70 = &a7[6 * v38 + 6672];
            *v70 = *(v133 + 8);
            v70[1].f64[0] = v133[1].f64[1];
            v71 = &a7[6 * v38 + 6960];
            *v71 = v134;
            *(v71 + 16) = v135;
            v72 = v136;
            *&a7[2 * v38 + 7248] = *(&v135 + 1);
            *&a7[2 * v38 + 7344] = v72;
            *&a7[2 * v38 + 7440] = *(&v136 + 1);
          }

          if (*(v37 + v38) == 1)
          {
            v73 = *a7;
            v74 = *&a7[2 * v38 + 1112] + (*&a7[6 * v38 + 824] + *&a7[6 * v38 + 826]) * v33 * *(a6 + 10888);
            if (*(v103 + v38) == 1 && *v39 == *(v123 + 4 * v38) && ((v75 = v73 - *(v95 + 4 * v38), v76 = *(v96 + 8 * v38), v76 < v74) ? (v77 = v75 <= 59999) : (v77 = 0), v77))
            {
              v74 = v76 + (v75 / 1000);
            }

            else
            {
              *(v103 + v38) = 1;
              *(v95 + 4 * v38) = v73;
            }

            *(v96 + 8 * v38) = v74;
          }

          if (v108)
          {
            *&v92 = v35;
            v102 = v34;
            v78 = v21;
            v79 = v22;
            v80 = v33;
            v81 = v32;
            v82 = v31;
            v83 = (v93 + 8 * v38);
            v84 = *v83;
            *(v30 + v38) = 1;
            v85 = *(v104 + 8 * v38);
            if (*v94 == 7)
            {
              v86 = 52.0;
            }

            else
            {
              v86 = 32.0;
            }

            *&v124 = 0;
            if (R8_EQ(v83, &v124))
            {
              *(v30 + v38) = 0;
              EvLog_v("NK_Comp_PR_DO_Meas: Ignore 0.0 AD for SV: %d, Constell: %d");
            }

            else if (fabs(v85 - v84) <= v86)
            {
              v85 = v84;
            }

            else
            {
              *(v30 + v38) = 0;
              EvLog_v("NK_Comp_PR_DO_Meas: DO-AD = %d Hz ! (%d %d %d)");
            }

            v31 = v82;
            v32 = v81;
            result = NK_Comp_ith_DO_Res(v38, v131.f64, v133, a7, &v127, v85);
            v33 = v80;
            v22 = v79;
            v21 = v78;
            v34 = v102;
            v35 = *&v92;
            v36 = 1.0;
            if (*(v30 + v38) == 1 && *(a7 + v38 + 8536) == 1)
            {
              *(a7 + v38 + 8584) = 1;
              *&a7[2 * v38 + 3106] = *&a7[2 * v38 + 3106] * 0.5;
            }
          }

          else
          {
            result = NK_Comp_ith_DO_Res(v38, v131.f64, v133, a7, &v127, *(v104 + 8 * v38));
          }

          v87 = &a7[14 * v38 + 5008];
          *v87 = v131;
          *(v87 + 16) = v132;
          if ((*(v115 + v38) & 1) == 0)
          {
            for (i = 0; i != -6; i -= 2)
            {
              *&a7[14 * v38 + 5018 + i] = *(a6 + 8712 + 24 * v38 + i * 4) - *(&v132 + i * 4);
            }
          }

          *(v87 + 48) = (v127 + *(a7 + 95) * v34) * v35;
          *(v123 + 4 * v38) = *v39;
          *(v122 + 2 * v38) = WORD6(v138[1]);
          *(v121 + 4 * v38) = DWORD2(v138[1]);
          *(v120 + v38) = 1;
          *(v116 + 8 * v38) = v109;
          v89 = a6 + 8696 + 24 * v38;
          *(v89 + 16) = v132;
          *v89 = v131;
          goto LABEL_64;
        }
      }

      v59 = v58;
      v60 = GNSS_Id_To_Num_Prn_Idx(*v39);
      *(v99 + 2 * v60) = *v90;
      *(v100 + v60) = *v59;
      *(v98 + 8 * v60) = *(v90 + 24);
      *(v97 + 8 * v60) = *(v59 + 24);
      *(v112 + 8 * v38) = 0;
      if (*(a7 + 960) == 1 && *v59 >= 1 && *(a3 + 8428))
      {
        v124 = *(a3 + 8424);
        v61 = GPS_Klob_Iono_Delay(a7 + 100, v90, v59, &v124, *(a7 + 3));
        *(v112 + 8 * v38) = v61;
        v62 = *(v39 + 1);
        v63 = 1.0;
        if (v62 <= 0xF)
        {
          v63 = g_GPS_L1_Iono_SF_Table[v62];
        }

        *(v112 + 8 * v38) = v61 * v63;
      }

      goto LABEL_83;
    }

    *(a7 + v38 + 49) = 1;
    if (result)
    {
      goto LABEL_59;
    }

LABEL_63:
    *(v123 + 4 * v38) = 0;
    *(v122 + 2 * v38) = 0;
    *(v121 + 4 * v38) = 0;
    *(v120 + v38) = 0;
    *(v116 + 8 * v38) = 0;
    *(v117 + 4 * v38) = 0;
LABEL_64:
    if ((*(v37 + v38) & 1) == 0)
    {
      *(v115 + v38) = 1;
    }

LABEL_66:
    ++v27;
  }

  while (v27 != 48);
  return result;
}

uint64_t SuplSession::SuplSession(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_2A1F8AB90;
  *(a1 + 24) = 0u;
  v8 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  ASN1T_SessionID::ASN1T_SessionID((a1 + 64));
  *(a1 + 380) = -1;
  *(a1 + 384) = -1;
  *(a1 + 396) = 0;
  *(a1 + 388) = 0;
  *(a1 + 401) = 0;
  *(a1 + 443) = 0;
  *(a1 + 450) = 0;
  *(a1 + 432) = 0x200000100000101;
  *(a1 + 440) = 0;
  *(a1 + 442) = 0;
  *(a1 + 520) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 376) = a3;
  v9 = *a4;
  *(a1 + 388) = *(a4 + 2);
  *(a1 + 380) = v9;
  *(a1 + 416) = 0;
  *(a1 + 532) = a2;
  *(a1 + 24) = a1;
  SuplSessionVer2::FillSetCapabilities(v8, a1 + 432, a2);
  *(a1 + 8) = a3;
  v10 = SuplSessionVer2::RequestLppCapPayLoad(v8, a2);
  *(a1 + 528) = 0;
  *(SuplUtils::GetInstance(v10) + 272) = a2;
  *(a1 + 424) = 0;
  return a1;
}

void sub_2996D847C(_Unwind_Exception *exception_object)
{
  v1[3] = 0;
  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v1[2] = 0;
  _Unwind_Resume(exception_object);
}

void SuplSession::~SuplSession(SuplSession *this)
{
  *this = &unk_2A1F8AB90;
  Instance = SuplUtils::GetInstance(this);
  if (Instance)
  {
    SuplUtils::DeleteSuplInitRecd(Instance, *(this + 94));
  }

  LcsTimer::Release((this + 392));
  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 52) = 0;
  v4 = *(this + 53);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 53) = 0;
  v5 = *(this + 62);
  if (v5)
  {
    *(this + 63) = v5;
    operator delete(v5);
  }

  v6 = *(this + 59);
  if (v6)
  {
    *(this + 60) = v6;
    operator delete(v6);
  }

  v7 = *(this + 44);
  if (v7)
  {
    *(this + 45) = v7;
    operator delete(v7);
  }

  v8 = *(this + 41);
  if (v8)
  {
    *(this + 42) = v8;
    operator delete(v8);
  }

  v9 = *(this + 38);
  if (v9)
  {
    *(this + 39) = v9;
    operator delete(v9);
  }

  v10 = *(this + 33);
  if (v10)
  {
    *(this + 34) = v10;
    operator delete(v10);
  }

  ASN1T_SETId::U::~U((this + 88));
  *(this + 3) = 0;
  v11 = *(this + 4);
  if (v11)
  {
    *(this + 5) = v11;
    operator delete(v11);
  }

  *(this + 2) = 0;
}

{

  SuplSession::~SuplSession(this);
}

{
  SuplSession::~SuplSession(this);

  JUMPOUT(0x29C29EB20);
}

void sub_2996D8624(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t SuplSession::InitializeResources(SuplSession *this)
{
  if (*(this + 380) >= 2u)
  {
    v2 = *(this + 94);
    v3 = *(SuplUtils::GetInstance(this) + 24);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 11000;
    }

    LcsTimer::Init(this + 98, v2, 0, v4, 0);
  }

  return 0;
}

void SuplSession::ProcessSuplRequest(SuplSession *this)
{
  v30 = *MEMORY[0x29EDCA608];
  Instance = SuplUtils::GetInstance(this);
  if (Instance)
  {
    v3 = *(this + 380);
    if (*(this + 380))
    {
      if (v3 == 1)
      {
        v7 = *(this + 52);
        if (v7)
        {
          goto LABEL_15;
        }

        v8 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
        v9 = v8;
        if (v8)
        {
          SuplState::SuplState(v8);
          *v9 = &unk_2A1F88940;
        }

        SuplSession::SetSuplStateObject(this, v9);
        v7 = *(this + 52);
        if (v7)
        {
LABEL_15:
          SuplState::UpdateState(v7, 7, this);
          v10 = *(this + 52);

          SuplEndRecd::TerminateSession(v10, 0, 3);
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v24), "SPL", 69, "ProcessSuplRequest", 1537);
          LbsOsaTrace_WriteLog(0x12u, __str, v25, 0, 1);
        }
      }

      else if (v3 == 3)
      {
        v4 = *(Instance + 16);
        if (!v4)
        {
          goto LABEL_28;
        }

        while (*v4 != *(this + 94))
        {
          v4 = *(v4 + 8);
          if (!v4)
          {
            goto LABEL_28;
          }
        }

        v16 = *(v4 + 16);
        if (v16 && !*(v16 + 17))
        {
          SuplUtils::FillSetCapabilities(Instance, this + 432, *(*(v16 + 40) + 5), *(this + 133));
        }

        else
        {
LABEL_28:
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 69, "ProcessSuplRequest", 513);
            LbsOsaTrace_WriteLog(0x12u, __str, v18, 0, 1);
          }
        }

        v19 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
        v20 = v19;
        if (v19)
        {
          SuplState::SuplState(v19);
          *v20 = &unk_2A1F88940;
        }

        SuplSession::SetSuplStateObject(this, v20);
        v21 = *(this + 52);
        if (v21)
        {
          SuplState::UpdateState(v21, 0, this);
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "ProcessSuplRequest", 1537);
          LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
        }
      }

      else
      {
        v13 = *(this + 52);

        SuplSessionVer2::ProcessSuplRequest((this + 24), this + 380, v13, this + 432);
      }
    }

    else
    {
      v11 = *(this + 52);
      if (v11)
      {
        SuplState::UpdateState(v11, 7, this);
        v12 = *(this + 52);
        *(v12[5] + 432) = 18;
        *(v12[5] + 1) = 1;
        std::vector<unsigned char>::vector[abi:ne200100](__str, 3000);
        v26[0] = __str;
        v26[1] = 0;
        v27 = 0;
        SuplEndRecd::SetSessionIdPresent(v12);
        (*(*v12 + 32))(v12, v26);
        SuplEndRecd::TerminateSession(v12, 0, 3);
        if (*__str)
        {
          v29 = *__str;
          operator delete(*__str);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "ProcessSuplRequest", 1028);
        LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
      }
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "ProcessSuplRequest", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
  }
}

SuplUtils *SuplSession::UpdateTimer(SuplUtils *result, int a2)
{
  v2 = result;
  if (a2 == 6)
  {
    if (*(result + 408) != 1)
    {
      return result;
    }

    v3 = *(SuplUtils::GetInstance(result) + 32);
    v4 = v3 == 0;
    v5 = 10000;
    goto LABEL_7;
  }

  if (a2 == 4)
  {
    if (*(result + 408) != 1)
    {
      return result;
    }

    v3 = *(SuplUtils::GetInstance(result) + 28);
    v4 = v3 == 0;
    v5 = 11000;
LABEL_7:
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    LcsTimer::SetTimeout((v2 + 392), v6);

    return LcsTimer::Start((v2 + 392));
  }

  v7 = (result + 392);

  return LcsTimer::Stop(v7);
}

uint64_t SuplSession::ConnectInd(LcsSuplGlueLayer *a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  Instance = LcsSuplGlueLayer::GetInstance(a1);
  LcsSuplGlueLayer::SendSuplConnectionStatus(Instance, *(a1 + 94), a2);
  if (a2 == 6)
  {
    v5 = *(*SuplSession::GetSuplStateObject(a1) + 16);

    return v5();
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "ConnectInd", 514);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    }

    v21 = -1;
    v20 = -17;
    *__str = -1;
    memset(v23, 0, sizeof(v23));
    v24 = -1;
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v26[0] = 0;
    *(v26 + 3) = 0;
    v10 = SuplProvider::GetInstance(IsLoggingAllowed);
    v11 = *(a1 + 94);
    v12 = LcsSuplGlueLayer::GetInstance(v10);
    v13 = (**v12)(v12, &v20, __str, v11);
    *(v10 + 6) = *(v10 + 5);
    v14 = SuplPosPayloadHandler::GetInstance(v13);
    v15 = (a1 + 376);
    v16 = *(a1 + 94);
    v17 = LcsSuplGlueLayer::GetInstance(v14);
    (*(*v17 + 8))(v17, v16, a2, 0);
    v18 = SuplPosPayloadHandler::ResetLppParams(v14);
    v19 = SuplProvider::GetInstance(v18);
    return SuplProvider::Disconnect(v19, *v15);
  }
}

uint64_t SuplSession::GetSuplStateObject(SuplSession *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!*(this + 52))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 69, "GetSuplStateObject", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v3, 0, 1);
    }

    v4 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
    if (v4)
    {
      v5 = v4;
      SuplState::SuplState(v4);
      *v5 = &unk_2A1F88940;
      *(this + 52) = v5;
    }

    else
    {
      *(this + 52) = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "GetSuplStateObject", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
      }
    }
  }

  return *(this + 52);
}

uint64_t SuplSession::DisconnectInd(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 376);
  v4 = *(a1 + 416);
  if (v4 && *(v4 + 16) != 7)
  {
    SuplState::UpdateState(v4, 7, a1);
    v4 = SuplEndRecd::TerminateSession(*(a1 + 416), -1, a2);
  }

  Instance = SuplProvider::GetInstance(v4);

  return SuplProvider::Disconnect(Instance, v3);
}

_DWORD *SuplSession::ReceiveDataInd(_DWORD *result, void *a2)
{
  if (*a2 != a2[1])
  {
    v2 = result;
    v3 = LcsTimer::Stop((result + 98));
    *(SuplUtils::GetInstance(v3) + 272) = *(v2 + 133);
    v4 = *(*SuplSession::GetSuplStateObject(v2) + 40);

    return v4();
  }

  return result;
}

void SuplSession::OnTimerEvent(SuplSession *this)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(this + 52))
  {
    if (*(this + 396) != 1 && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 69, "OnTimerEvent", 1028);
      LbsOsaTrace_WriteLog(0x12u, __str, v3, 0, 1);
    }

    *(this + 396) = 0;
    std::vector<unsigned char>::vector[abi:ne200100](__str, 3000);
    v7[0] = __str;
    v7[1] = 0;
    v8 = 0;
    updated = SuplState::UpdateState(*(this + 52), 7, this);
    (*(**(this + 52) + 32))(*(this + 52), v7, updated);
    SuplEndRecd::TerminateSession(*(this + 52), -8, 17);
    if (*__str)
    {
      v10 = *__str;
      operator delete(*__str);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "OnTimerEvent", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
  }
}

uint64_t SuplSession::SetSuplStateObject(SuplSession *this, SuplState *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    result = *(this + 53);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v5 = *(this + 52);
    *(this + 52) = a2;
    *(this + 53) = v5;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SetSuplStateObject", 515);
      return LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
    }
  }

  return result;
}

uint64_t SuplSession::GetSuplInitRecd(SuplSession *this)
{
  v2 = *(SuplUtils::GetInstance(this) + 16);
  if (!v2)
  {
    return 0;
  }

  while (*v2 != *(this + 94))
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 16);
}

uint64_t SuplSession::SetAidMask(SuplSession *this, SuplAsstDataNeededInfo *a2)
{
  *(this + 228) = *a2;
  *(this + 58) = *(a2 + 1);
  if ((this + 456) != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 59, *(a2 + 2), *(a2 + 3), *(a2 + 3) - *(a2 + 2));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 62, *(a2 + 5), *(a2 + 6), *(a2 + 6) - *(a2 + 5));
  }

  *(this + 520) = *(a2 + 64);

  return SuplSessionVer2::RequestLppAdPayLoad((this + 24));
}

uint64_t SuplSession::ProcessAbortRequest(SuplSession *this, int a2)
{
  __p[130] = *MEMORY[0x29EDCA608];
  v4 = *(this + 52);
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
  v6 = v5;
  if (v5)
  {
    SuplState::SuplState(v5);
    *v6 = &unk_2A1F88940;
  }

  SuplSession::SetSuplStateObject(this, v6);
  v4 = *(this + 52);
  if (v4)
  {
LABEL_5:
    SuplState::UpdateState(v4, 7, this);
    v7 = *(this + 52);
    if (!a2)
    {
      *(v7[5] + 432) = 18;
      *(v7[5] + 1) = 1;
      std::vector<unsigned char>::vector[abi:ne200100](__p, 3000);
      v17[0] = __p;
      v17[1] = 0;
      v18 = 0;
      SuplEndRecd::SetSessionIdPresent(v7);
      (*(*v7 + 32))(v7, v17);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    return SuplEndRecd::TerminateSession(v7, 0, 3);
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__p, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 69, "ProcessAbortRequest", 1537);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __p, v11, 0, 1);
    }

    Instance = SuplPosPayloadHandler::GetInstance(IsLoggingAllowed);
    v13 = *(this + 94);
    v14 = LcsSuplGlueLayer::GetInstance(Instance);
    (*(*v14 + 8))(v14, v13, 3, 0);
    v15 = SuplPosPayloadHandler::ResetLppParams(Instance);
    v16 = SuplProvider::GetInstance(v15);
    return SuplProvider::Disconnect(v16, *(this + 94));
  }
}

void NK_Validate_Cor(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned int a6, char *a7, _BYTE *a8, uint64_t a9, _WORD *a10, uint64_t a11, uint64_t a12, double *a13, double *a14, uint64_t a15, uint64_t a16, _DWORD *a17, _DWORD *a18, _DWORD *a19, _DWORD *a20, unsigned int *a21, uint64_t a22)
{
  v102 = *MEMORY[0x29EDCA608];
  *(a15 + 7) = 0;
  *a15 = 0;
  v23 = *(a12 + 16);
  *a16 = *a12;
  *(a16 + 16) = v23;
  v24 = *(a12 + 32);
  v25 = *(a12 + 48);
  v26 = *(a12 + 64);
  *(a16 + 80) = *(a12 + 80);
  *(a16 + 48) = v25;
  *(a16 + 64) = v26;
  *(a16 + 32) = v24;
  v27 = (a4 + 16);
  for (i = 40; i != 64; i += 8)
  {
    v29 = *(v27 - 1) * *(a12 + 48) + *(v27 - 2) * *(a12 + 40);
    v30 = *v27;
    v27 += 3;
    *(a16 + i) = v29 + v30 * *(a12 + 56);
  }

  v31 = (a4 + 16);
  do
  {
    v32 = *(v31 - 1) * *(a12 + 72) + *(v31 - 2) * *(a12 + 64);
    v33 = *v31;
    v31 += 3;
    *(a16 + i) = v32 + v33 * *(a12 + 80);
    i += 8;
  }

  while (i != 88);
  for (j = 0; j != 11; ++j)
  {
    v95[j] = *(a16 + j * 8) * *(a16 + j * 8);
    v90.f64[j] = *(a3 + j * 8) * 16.0;
  }

  v35 = vdupq_n_s64(0x40C3880000000000uLL);
  v36 = vmaxnmq_f64(v90, v35);
  v37 = vmaxnmq_f64(v91, xmmword_299761780);
  v90 = v36;
  v91 = v37;
  v38 = vmaxnmq_f64(v92, v35);
  v92 = v38;
  v39 = vmaxnmq_f64(v93, xmmword_299761780);
  v93 = v39;
  v40 = vmaxnmq_f64(v94, vdupq_n_s64(0x4079000000000000uLL));
  v94 = v40;
  v41 = fabs(*(a16 + 32));
  *a17 = v41;
  v42 = 0.0;
  v43 = 7;
  do
  {
    v42 = v42 + *(a16 + 8 * v43) * *(a16 + 8 * v43);
    v44 = v43 - 4;
    --v43;
  }

  while (v44 > 1);
  *a18 = sqrt(v42);
  v45 = 0.0;
  *a19 = sqrt(*(a16 + 48) * *(a16 + 48) + 0.0 + *(a16 + 40) * *(a16 + 40));
  *a20 = fabs(*(a16 + 56));
  v46 = 10;
  do
  {
    v45 = v45 + *(a16 + 8 * v46) * *(a16 + 8 * v46);
    v47 = v46 - 7;
    --v46;
  }

  while (v47 > 1);
  *a21 = sqrt(v45);
  if (*a9)
  {
    goto LABEL_156;
  }

  if (*a7)
  {
    v48 = 1;
    v49 = 1;
  }

  else
  {
    v49 = a13[1] >= 5.0;
    v48 = a13[2] >= 5.0;
    if (*a13 < 5.0 && (*a2 >= 100000000.0 || v95[0] >= v36.f64[0]))
    {
      goto LABEL_25;
    }
  }

  if (*(a1 + 7) || *(a1 + 28) == 1 || *(a1 + 32) == 2 || fabs(*a16) < fmin(*a13, 5.0))
  {
    *a15 = 1;
  }

LABEL_25:
  if (v49 || (a2[1] < 100000000.0 ? (v51 = v95[1] < v36.f64[1]) : (v51 = 0), v51))
  {
    if (*(a1 + 12) || *(a1 + 28) == 1 || *(a1 + 32) == 2 || fabs(*(a16 + 8)) < fmin(a13[1], 5.0))
    {
      *(a15 + 1) = 1;
    }
  }

  if (v48 || (a2[2] < 100000000.0 ? (v52 = v95[2] < v37.f64[0]) : (v52 = 0), v52))
  {
    if (*(a1 + 17) || *(a1 + 28) == 1 || *(a1 + 36) == 2 || fabs(*(a16 + 16)) < fmin(a13[2], 5.0))
    {
      *(a15 + 2) = 1;
    }
  }

  v53 = *a7;
  if ((*a7 & 1) == 0 && (a2[3] >= 900.0 || v95[3] >= v37.f64[1]))
  {
    v53 = 0;
    goto LABEL_84;
  }

  if (*(a1 + 5) || *(a1 + 40) == 1 || fabs(*(a16 + 24)) < fmin(a13[3], 0.5))
  {
    *(a15 + 3) = 1;
    v53 = *a7;
  }

  if ((v53 & 1) == 0)
  {
LABEL_84:
    if (a2[5] >= 100000000.0 || a2[6] >= 100000000.0 || a2[7] >= 100000000.0 || v96 >= v38.f64[0] || v97 >= v38.f64[1] || v98 >= v39.f64[0])
    {
      goto LABEL_90;
    }
  }

  v54 = *(a1 + 48);
  v55 = *(a1 + 52);
  if (v54 == 1)
  {
    v56 = 1;
  }

  else
  {
    v56 = 3;
  }

  v57 = v56 - (v55 == 1);
  v58 = *(a1 + 2);
  if (v57 <= v58 || v96 < a14[5] && v97 < a14[6] && v98 < a14[7])
  {
    goto LABEL_82;
  }

  if (v54)
  {
    v59 = v58 + 2;
  }

  else
  {
    v59 = *(a1 + 2);
  }

  if (v55)
  {
    ++v59;
  }

  if (*(a1 + 28))
  {
    ++v59;
  }

  if (*(a1 + 60) || *(a1 + 64))
  {
    ++v59;
  }

  if (*(a1 + 68) || *(a1 + 76))
  {
    ++v59;
  }

  if (*(a1 + 72) || *(a1 + 80))
  {
    ++v59;
  }

  if (*(a1 + 84) || *(a1 + 88))
  {
    ++v59;
  }

  if (v59 >= 3)
  {
LABEL_82:
    *(a15 + 5) = 1;
    v53 = *a7;
  }

LABEL_90:
  if ((v53 & 1) == 0)
  {
    v64 = *a5;
    v65 = v64 > 8 ? 100000000.0 : dbl_299761798[v64];
    if (a2[8] >= v65)
    {
      goto LABEL_142;
    }

    v66 = v64 > 8 ? 100000000.0 : dbl_299761798[v64];
    if (a2[9] >= v66)
    {
      goto LABEL_142;
    }

    v70 = v64 > 8 ? 100000000.0 : dbl_299761798[v64];
    if (a2[10] >= v70 || v99 >= v39.f64[1] || v100 >= v40.f64[0] || v101 >= v40.f64[1])
    {
      goto LABEL_142;
    }
  }

  v60 = *(a1 + 56);
  if (v60 == 1)
  {
    v61 = 2;
  }

  else
  {
    v61 = 3;
  }

  v62 = *(a1 + 5);
  if (v61 <= v62 || v99 < a14[8] && v100 < a14[9] && v101 < a14[10])
  {
    goto LABEL_126;
  }

  if (v62 >= 2 && *(a15 + 3) == 1)
  {
    v63 = (v62 - 1);
  }

  else
  {
    v63 = 0;
  }

  if (v60)
  {
    v67 = v63 + 1;
  }

  else
  {
    v67 = v63;
  }

  if (*(a1 + 40))
  {
    ++v67;
  }

  if (*(a1 + 60) || *(a1 + 64))
  {
    ++v67;
  }

  if (*(a1 + 68) || *(a1 + 76))
  {
    ++v67;
  }

  if (*(a1 + 72) || *(a1 + 80))
  {
    ++v67;
  }

  if (*(a1 + 84) || *(a1 + 88))
  {
    ++v67;
  }

  if (v67 > 2)
  {
LABEL_126:
    v68 = 1;
    v69 = 8;
LABEL_127:
    *(a15 + v69) = v68;
    goto LABEL_142;
  }

  if (!*(a1 + 2) && *(a1 + 48) != 1 && *(a1 + 52) != 1 && *(a1 + 28) != 1)
  {
    v68 = 0;
    v69 = 5;
    goto LABEL_127;
  }

LABEL_142:
  if ((*(a1 + 24) - 1) < 2)
  {
    goto LABEL_143;
  }

  if (*(a1 + 2) >= 3u && ((*a15 & 1) != 0 || (*(a15 + 1) & 1) != 0 || *(a15 + 2) == 1) && *(a15 + 5) == 1 && a2[4] < 250000.0)
  {
    v71 = 0;
    v72 = 0.0;
    do
    {
      v72 = v72 + a2[v71 + 5];
      ++v71;
    }

    while (v71 != 3);
    if (v72 < 250000.0)
    {
      goto LABEL_143;
    }
  }

  if ((*a7 & 1) == 0 && a2[4] < 100.0 && v41 < a13[4])
  {
LABEL_143:
    *(a15 + 4) = 1;
  }

LABEL_156:
  if (*a18 >= 0xC351u && *(a15 + 5) == 1 && (*a7 & 1) == 0)
  {
    v73 = 0;
    *(a15 + 7) = 0;
    *a15 = 0;
    *a9 = 1;
    *(a9 + 4) = 96;
    *a8 = 0;
    *a7 = 1;
    do
    {
      a13[v73] = 10098990.0;
      a14[v73] = 1.00979801e14;
      *(a22 + v73++) = 0;
    }

    while (v73 != 11);
    v89 = a5;
    v74 = a8;
    v75 = 0;
    *(a11 + 412) = 1;
    *&v76 = 0x101010101010101;
    *(&v76 + 1) = 0x101010101010101;
    *(a11 + 380) = v76;
    *(a11 + 396) = v76;
    *(a11 + 364) = v76;
    v77 = vdupq_n_s32(a6);
    do
    {
      *(a11 + 416 + v75) = v77;
      v75 += 16;
    }

    while (v75 != 192);
    EvCrt_v("ChanReset ALL : NKVC %d %d", *a18, *a21);
    a8 = v74;
    a5 = v89;
  }

  if (*a7 == 1 && *a18 >= 0x927C01u && *(a15 + 5) == 1)
  {
    v78 = 9600000.0 / *a18;
    *a12 = vmulq_n_f64(*a12, v78);
    *(a12 + 16) = v78 * *(a12 + 16);
    v79 = 7;
    do
    {
      *(a12 + 8 * v79) = v78 * *(a12 + 8 * v79);
      v80 = v79 - 4;
      --v79;
    }

    while (v80 > 1);
    v81 = 0;
    *(a15 + 3) = 0x10000;
    *a15 = 257;
    *(a15 + 2) = 1;
    v82 = *(a12 + 16);
    *a16 = *a12;
    *(a16 + 16) = v82;
    v83 = *(a12 + 32);
    v84 = *(a12 + 48);
    v85 = *(a12 + 64);
    *(a16 + 80) = *(a12 + 80);
    *(a16 + 48) = v84;
    *(a16 + 64) = v85;
    *(a16 + 32) = v83;
    *a8 = 0;
    do
    {
      a13[v81] = 10098990.0;
      a14[v81++] = 1.00979801e14;
    }

    while (v81 != 11);
  }

  if (*a5 >= 5u)
  {
    v86 = 1200;
  }

  else
  {
    v86 = 600;
  }

  if (*(a15 + 3) == 1 && fabs(*(a12 + 24)) > 15000.0 || (v87 = *(a15 + 8), v87 == 1) && *a21 > v86)
  {
    LOBYTE(v87) = 0;
    *(a15 + 3) = 0;
    *(a15 + 8) = 0;
    if (*a10 <= 2u)
    {
      LOBYTE(v87) = 0;
      *a10 = 3;
    }
  }

  if (*a18 >= 0x1D4C1u)
  {
    LOBYTE(v87) = 0;
    *(a15 + 3) = 0;
    *(a15 + 8) = 0;
  }

  v88 = *(a15 + 5);
  *(a15 + 6) = v88;
  *(a15 + 7) = v88;
  *(a15 + 9) = v87;
  *(a15 + 10) = v87;
}

void Apply_Q_Boost(double a1, unsigned int a2, unsigned int a3, double *a4, unsigned int *a5, double *a6)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a3 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3;
  }

  do
  {
    bzero(a6, 8 * a2);
    a6[a2++] = 1.0;
    v12 = 0;
    if (a1 > 0.0)
    {
      rnk1_core(a4, a2, a1, a6, &v12);
      if (v12)
      {
        ++*a5;
      }
    }

    --v11;
  }

  while (v11);
}

void Hal_GpioNotification()
{
  v5 = *MEMORY[0x29EDCA608];
  if ((g_HwProduct - 5) >= 0xFFFFFFFC)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No UartLp,Incorrect ntf\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 87, "Hal_GpioNotification");
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 2, 1);
    }
  }

  else
  {
    v0 = g_GpioNotifCB;
    if (g_IsProdMode == 1 && g_GpioNotifCB != 0)
    {

      v0();
    }
  }
}

uint64_t Hal25_SetGetLowPowerStatus(int a1, char a2, unsigned __int8 *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a3 && (a1 & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    return LbsOsaTrace_WriteLog(0xDu, __str, v7, 0, 1);
  }

  if (gnssOsa_MacEnterCriticalSection("Hal25_SetGetLowPowerStatus", 624, &stru_2A1972028))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (a1)
  {
    _MergedGlobals_8 = a2;
  }

  else
  {
    *a3 = _MergedGlobals_8;
  }

  result = gnssOsa_MacExitCriticalSection("Hal25_SetGetLowPowerStatus", 638, &stru_2A1972028);
  if (result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
LABEL_13:
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UartLPState\n");
      return LbsOsaTrace_WriteLog(0xDu, __str, v7, 0, 1);
    }
  }

  return result;
}

uint64_t Hal_CommsItfInitialize(void)
{
  v27 = *MEMORY[0x29EDCA608];
  if ((g_HwProduct - 5) > 0xFFFFFFFB)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 73, "Hal_CommsInitPcie");
      LbsOsaTrace_WriteLog(0xDu, __str, v11, 4, 1);
    }

    if (!gp_Comm)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx comm obj\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 69, "Hal_CommsInitPcie", 513);
      LbsOsaTrace_WriteLog(0xDu, __str, v18, 0, 1);
      return 0;
    }

    if (Hal25_OpenTtyPort())
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 73, "Hal_CommsInitPcie");
        LbsOsaTrace_WriteLog(0xDu, __str, v13, 4, 1);
      }

      return 1;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx open port\n", (*&g_MacClockTicksToMsRelation * v19), "HAL", 69, "Hal_CommsInitPcie", 1293);
      LbsOsaTrace_WriteLog(0xDu, __str, v20, 0, 1);
      return 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_CommsInitUart");
      LbsOsaTrace_WriteLog(0xDu, __str, v1, 4, 1);
    }

    if (!gp_Gpio)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gpio obj\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "Hal_CommsInitUart", 513);
      LbsOsaTrace_WriteLog(0xDu, __str, v16, 0, 1);
      return 0;
    }

    if (!gp_Comm)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx comm obj\n", (*&g_MacClockTicksToMsRelation * v21), "HAL", 69, "Hal_CommsInitUart", 513);
      LbsOsaTrace_WriteLog(0xDu, __str, v22, 0, 1);
      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: \n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal25_ResetChip");
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
    }

    (*(*gp_Gpio + 16))(gp_Gpio);
    usleep(0x2710u);
    (*(*gp_Gpio + 24))(gp_Gpio);
    usleep(0x2710u);
    if (Hal25_OpenTtyPort())
    {
      if (g_IsProdMode == 1)
      {
        v25[0] = &unk_2A1F8ABE8;
        v25[1] = Hal_GpioNotification;
        v25[3] = v25;
        (*(*gp_Gpio + 56))(gp_Gpio, v25);
        std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](v25);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = *&g_MacClockTicksToMsRelation;
        v6 = (*(*gp_Comm + 136))(gp_Comm);
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: commTimeout,%fsec\n", (v5 * v4), "HAL", 73, "Hal_CommsInitUart", v6);
        LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 73, "Hal_CommsInitUart");
        LbsOsaTrace_WriteLog(0xDu, __str, v9, 4, 1);
      }

      return 1;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx open port\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 69, "Hal_CommsInitUart", 1293);
      LbsOsaTrace_WriteLog(0xDu, __str, v24, 0, 1);
      return 0;
    }
  }

  return result;
}

void sub_2996DB0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Hal_CommsItfUpdateStatus(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 <= 1)
  {
    if (!a1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Nonfunctional\n");
      goto LABEL_14;
    }

    if (a1 == 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Gnss-functional\n");
LABEL_14:
      v5 = v3;
      v6 = 5;
      return LbsOsaTrace_WriteLog(0xDu, __str, v5, v6, 1);
    }

    goto LABEL_10;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LowPower\n");
      goto LABEL_14;
    }

LABEL_10:
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: default,%u\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 87, "Hal_CommsItfUpdateStatus", a1);
    v6 = 2;
    return LbsOsaTrace_WriteLog(0xDu, __str, v5, v6, 1);
  }

  if (!(*(*gp_Comm + 120))(gp_Comm))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: enterLowPowerMode fail\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 69, "Hal_CommsItfUpdateStatus");
      LbsOsaTrace_WriteLog(0xDu, __str, v9, 0, 1);
    }

    snprintf(v12, 0x400uLL, "ASSERT: %s %d UARTLP: Gnss::Comm::enterLowPowerMode returned false", "Hal_CommsItfUpdateStatus", 250);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 69, "Hal_CommsItfUpdateStatus", v12);
      LbsOsaTrace_WriteLog(0xEu, __str, v11, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Hal_CommsItfUpdateStatus", "hal25IosAdapt.cpp", 251, "false && Enter low power failed (RTS pull high)");
  }

  Hal25_SetGetLowPowerStatus(1, 2, 0);
  result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Sending LP ACK, enterLowPowerMode\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 73, "Hal_CommsItfUpdateStatus");
    v6 = 4;
    return LbsOsaTrace_WriteLog(0xDu, __str, v5, v6, 1);
  }

  return result;
}

uint64_t Hal_CommsItfDeInitialize(void)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((g_HwProduct - 5) > 0xFFFFFFFB)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 73, "Hal_CommsDeInitPcie");
      LbsOsaTrace_WriteLog(0xDu, __str, v10, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Skipping GnssPort close\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 73, "Hal_CommsDeInitPcie");
      LbsOsaTrace_WriteLog(0xDu, __str, v12, 4, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 73, "Hal_CommsDeInitPcie");
      return LbsOsaTrace_WriteLog(0xDu, __str, v14, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_CommsDeinitUart");
      LbsOsaTrace_WriteLog(0xDu, __str, v1, 4, 1);
    }

    (*(*gp_Gpio + 16))(gp_Gpio);
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssEn low\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_CommsDeinitUart");
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
    }

    (*(*gp_Comm + 24))(gp_Comm);
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssPort close\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal_CommsDeinitUart");
      LbsOsaTrace_WriteLog(0xDu, __str, v5, 4, 1);
    }

    v18 = 0;
    v16 = 0;
    (*(*gp_Gpio + 56))(gp_Gpio, v15);
    std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](v15);
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal_CommsDeinitUart");
      LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
    }

    return std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](v17);
  }

  return result;
}

void sub_2996DBA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Hal_CommsItfWriteData(unsigned __int8 *a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = g_HwProduct - 5;
  v5 = (*(*gp_Comm + 32))(gp_Comm);
  if (v4 <= 0xFFFFFFFB)
  {
    if (v5)
    {
      if ((*(*gp_Comm + 96))(gp_Comm, a1, a2))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Writesuccess,%u\n", v6, "HAL", 68, "Hal_CommsItfWriteDataUart", a2);
LABEL_10:
          LbsOsaTrace_WriteLog(0xDu, __str, v7, 5, 1);
          return a2;
        }

        return a2;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        goto LABEL_18;
      }

      return 0xFFFFFFFFLL;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return 0xFFFFFFFFLL;
    }

LABEL_14:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Port\n");
LABEL_19:
    LbsOsaTrace_WriteLog(0xDu, __str, v9, 0, 1);
    return 0xFFFFFFFFLL;
  }

  if ((v5 & 1) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_14;
  }

  if (((*(*gp_Comm + 96))(gp_Comm, a1, a2) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
LABEL_18:
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_19;
    }

    return 0xFFFFFFFFLL;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Writesuccess,%u\n", v8, "HAL", 68, "Hal_CommsItfWriteDataPcie", a2);
    goto LABEL_10;
  }

  return a2;
}

uint64_t Hal_CommsItfReadData(unsigned __int8 *a1, unsigned int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (((*(*gp_Comm + 32))(gp_Comm) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Port\n");
LABEL_9:
      LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
    }

    return 0xFFFFFFFFLL;
  }

  v4 = (*(*gp_Comm + 56))(gp_Comm, a1, a2);
  if (v4 < 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_9;
    }

    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: read,%zd\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 68, "Hal_CommsItfReadData", v5);
    LbsOsaTrace_WriteLog(0xDu, __str, v7, 5, 1);
  }

  return v5;
}

uint64_t Hal_SetReadCbAsync(void (*a1)(unsigned __int8 *, unsigned int))
{
  v10[4] = *MEMORY[0x29EDCA608];
  if (!a1 || !gp_Comm)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: failed\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal_SetReadCbAsync");
    LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
    return 0;
  }

  v10[0] = &unk_2A1F8AC98;
  v10[1] = a1;
  v10[3] = v10;
  v1 = (*(*gp_Comm + 80))(gp_Comm, v10);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v10);
  if (!v1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: read cb set failed\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "Hal_SetReadCbAsync");
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: read via cb\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_SetReadCbAsync");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  return 1;
}

uint64_t Hal25_TriggerTimeMarkStrobe(unsigned int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: \n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal25_TriggerTimeMarkStrobe");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if ((g_HwProduct - 5) <= 0xFFFFFFFB)
  {
    if (gp_Gpio)
    {
      (*(*gp_Gpio + 48))(__str);
      v4 = *__str;
      v5 = v12;
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TM trigger via gpio interface\n");
LABEL_10:
        LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gpio obj\n");
LABEL_20:
    LbsOsaTrace_WriteLog(0xDu, __str, v10, 0, 1);
    return 0;
  }

  if (!gp_Comm)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx comm obj\n");
    goto LABEL_20;
  }

  (*(*gp_Comm + 144))(__str);
  v4 = *__str;
  v5 = v12;
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TM trigger via comm interface\n");
    goto LABEL_10;
  }

LABEL_11:
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time LB,%llu,UB,%llu\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 68, "Hal25_TriggerTimeMarkStrobe", v4, v5);
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 5, 1);
  }

  if (a1)
  {
    *a1 = (((v5 + v4) >> 1) / 1000000.0 + 0.5);
  }

  return 1;
}

uint64_t Hal25_OpenTtyPort(void)
{
  if (!(*(*gp_Comm + 16))(gp_Comm))
  {
    return 0;
  }

  v0 = *(*gp_Comm + 112);

  return v0();
}

void std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::~__func()
{
  ;
}

{

  JUMPOUT(0x29C29EB20);
}

uint64_t std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F8ABE8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::destroy_deallocate(void *__p)
{

  operator delete(__p);
}

uint64_t std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;

  return v2(v3);
}

uint64_t std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::~__func()
{
  ;
}

{

  JUMPOUT(0x29C29EB20);
}

uint64_t std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F8AC98;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::destroy_deallocate(void *__p)
{

  operator delete(__p);
}

uint64_t std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a3;

  return v3(v4, v5);
}

uint64_t std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void gnss::GnssAdaptDevice::injectAssistanceFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v8 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20injectAssistanceFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS_16SvPositionSourceENS1_8functionIFvONS_24DecodedExtendedEphemerisEEEENS8_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_18;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a5);
    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v13, a4);
    __p = 0;
    v15 = 0;
    v16 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v6, v7, v7 - v6);
    dispatch_async(v8, block);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v13);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
    if (v6)
    {
      operator delete(v6);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "injectAssistanceFile", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice20injectAssistanceFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS_16SvPositionSourceENS1_8functionIFvONS_24DecodedExtendedEphemerisEEEENS8_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v40[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectAssistanceFile_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](__str, a1 + 72);
    v5 = v2 + 344;
    if (__str != (v2 + 344))
    {
      v6 = v39;
      v7 = *(v2 + 368);
      if (v39 == __str)
      {
        if (v7 == v5)
        {
          (*(*v39 + 24))();
          (*(*v39 + 32))(v39);
          v39 = 0;
          (*(**(v2 + 368) + 24))(*(v2 + 368), __str);
          (*(**(v2 + 368) + 32))(*(v2 + 368));
          *(v2 + 368) = 0;
          v39 = __str;
          (*(v40[0] + 24))(v40, v2 + 344);
          (*(v40[0] + 32))(v40);
        }

        else
        {
          (*(*v39 + 24))();
          (*(*v39 + 32))(v39);
          v39 = *(v2 + 368);
        }

        *(v2 + 368) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 368), __str);
        (*(**(v2 + 368) + 32))(*(v2 + 368));
        *(v2 + 368) = v39;
        v39 = __str;
      }

      else
      {
        v39 = *(v2 + 368);
        *(v2 + 368) = v6;
      }
    }

    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](__str);
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    if (v13 == v14)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v36, "injectAssistanceFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Prediction\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "injectAssistanceFile_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "injectAssistanceFile_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
      }
    }

    else if ((v14 - v13 - 427673) >= 0xFFFFFFFFFFF979E7)
    {
      v23 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v23, v34);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
      v24 = GNS_EeInjectOrbitData(v23, *(a1 + 104), *(a1 + 112) - *(a1 + 104));
      if (v24 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EESize,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 73, "injectAssistanceFile_block_invoke", *(a1 + 112) - *(a1 + 104));
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 4, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v27 = mach_continuous_time();
          v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 68, "injectAssistanceFile_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v28, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v24, v33, "injectAssistanceFile_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v23);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EeInjectOrbitData Resp,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "injectAssistanceFile_block_invoke", 257, v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "injectAssistanceFile_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v35, "injectAssistanceFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx File size,%u\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "injectAssistanceFile_block_invoke", 515, *(a1 + 112) - *(a1 + 104));
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "injectAssistanceFile_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v37, "injectAssistanceFile_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "injectAssistanceFile_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "injectAssistanceFile_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  return result;
}

void sub_2996DDB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *__copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a1 + 5), a2 + 40);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100]((a1 + 9), a2 + 72);
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 13, *(a2 + 104), *(a2 + 112), *(a2 + 112) - *(a2 + 104));
}

void sub_2996DDC3C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::injectRtiFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v7 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice13injectRtiFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS1_8functionIFvONS_10DecodedRtiEEEENS7_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_13_1;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a4);
    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v12, a3);
    __p = 0;
    v14 = 0;
    v15 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v5, v6, v6 - v5);
    dispatch_async(v7, block);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v12);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    if (v5)
    {
      operator delete(v5);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "injectRtiFile", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice13injectRtiFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS1_8functionIFvONS_10DecodedRtiEEEENS7_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v40[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectRtiFile_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](__str, a1 + 72);
    v5 = v2 + 376;
    if (__str != (v2 + 376))
    {
      v6 = v39;
      v7 = *(v2 + 400);
      if (v39 == __str)
      {
        if (v7 == v5)
        {
          (*(*v39 + 24))();
          (*(*v39 + 32))(v39);
          v39 = 0;
          (*(**(v2 + 400) + 24))(*(v2 + 400), __str);
          (*(**(v2 + 400) + 32))(*(v2 + 400));
          *(v2 + 400) = 0;
          v39 = __str;
          (*(v40[0] + 24))(v40, v2 + 376);
          (*(v40[0] + 32))(v40);
        }

        else
        {
          (*(*v39 + 24))();
          (*(*v39 + 32))(v39);
          v39 = *(v2 + 400);
        }

        *(v2 + 400) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 400), __str);
        (*(**(v2 + 400) + 32))(*(v2 + 400));
        *(v2 + 400) = v39;
        v39 = __str;
      }

      else
      {
        v39 = *(v2 + 400);
        *(v2 + 400) = v6;
      }
    }

    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](__str);
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    if (v13 == v14)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v36, "injectRtiFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FileStore\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "injectRtiFile_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "injectRtiFile_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
      }
    }

    else if (v14 - v13 == 160)
    {
      v15 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v15, v34);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
      v16 = GNS_EeInjectRtiData(v15, *(a1 + 104), *(a1 + 112) - *(a1 + 104));
      if (v16 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RtiSize,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "injectRtiFile_block_invoke", *(a1 + 112) - *(a1 + 104));
          LbsOsaTrace_WriteLog(0x18u, __str, v18, 4, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "injectRtiFile_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v16, v33, "injectRtiFile_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v15);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EEInjectRti,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "injectRtiFile_block_invoke", 257, v16);
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "injectRtiFile_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v35, "injectRtiFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Size,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "injectRtiFile_block_invoke", 515, *(a1 + 112) - *(a1 + 104));
        LbsOsaTrace_WriteLog(0x18u, __str, v26, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 68, "injectRtiFile_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v28, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v37, "injectRtiFile_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "injectRtiFile_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "injectRtiFile_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  return result;
}

void sub_2996DE86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *__copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a1 + 5), a2 + 40);
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100]((a1 + 9), a2 + 72);
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 13, *(a2 + 104), *(a2 + 112), *(a2 + 112) - *(a2 + 104));
}

void sub_2996DE950(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::Ga04_00RegisterGnsEeStatusResponse(gnss::GnssAdaptDevice *a1, uint64_t a2, __int128 *a3)
{
  v4 = a1;
  v24 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    if (a3)
    {
      v6 = DeviceInstance;
      v7 = *(a3 + 16);
      v13 = *a3;
      *v14 = *(a3 + 17);
      *&v14[15] = *(a3 + 4);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Api,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse", *(a3 + 1), *(a3 + 2));
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 4, 1);
      }

      v10 = *(v6 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v16 = 0x40000000;
      v17 = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke;
      v18 = &__block_descriptor_tmp_30;
      v19 = v6;
      v20 = v13;
      v21 = v7;
      *v22 = *v14;
      *&v22[15] = *&v14[15];
      v23 = v4;
      dispatch_async(v10, __str);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EeMsgData\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga04_01HandleGnsEeStatusResponse", 513);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v52 = 0;
  v2 = *(v1 + 264);
  if (!v2)
  {
    goto LABEL_43;
  }

  v4 = v1 + 264;
  v5 = *(a1 + 40);
  v6 = v1 + 264;
  v7 = *(v1 + 264);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 != v4 && v5 >= *(v6 + 32))
  {
    v13 = v1 + 264;
    do
    {
      v14 = *(v2 + 32);
      v9 = v14 >= v5;
      v15 = v14 < v5;
      if (v9)
      {
        v13 = v2;
      }

      v2 = *(v2 + 8 * v15);
    }

    while (v2);
    if (v13 == v4 || v5 < *(v13 + 32))
    {
      v13 = v1 + 264;
    }

    std::function<void ()(gnss::Result)>::operator=(v51, v13 + 40);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer((v1 + 256), v6);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6 + 40);
    operator delete(v6);
    if (v52)
    {
      v16 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v1, *(a1 + 48));
      v17 = *(a1 + 44);
      if (v17)
      {
        if (v17 == 1)
        {
          if (*(v1 + 368))
          {
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v49, v1 + 344);
            v35 = 0;
            v36 = &v35;
            v37 = 0x4802000000;
            v38 = __Block_byref_object_copy__4;
            v39 = __Block_byref_object_dispose__4;
            LOBYTE(v40) = 0;
            v42 = *(a1 + 56);
            v41 = *(a1 + 64);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v24 = mach_continuous_time();
              v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ORB Data StartGpsSecs,%llu,EndGpsSecs,%llu\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse_block_invoke", v36[6], v36[7]);
              LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
            }

            v26 = *(v1 + 296);
            v47[0] = MEMORY[0x29EDCA5F8];
            v47[1] = 1174405120;
            v47[2] = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2;
            v47[3] = &unk_2A1F8ADA0;
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v48, v49);
            v47[4] = &v35;
            dispatch_async(v26, v47);
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v48);
            _Block_object_dispose(&v35, 8);
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v49);
          }
        }

        else if (v17 == 2)
        {
          if (*(v1 + 400))
          {
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v49, v1 + 376);
            v35 = 0;
            v36 = &v35;
            v37 = 0x3802000000;
            v38 = __Block_byref_object_copy__21_0;
            LOBYTE(v41) = *(a1 + 56);
            v18 = *(a1 + 64);
            v39 = __Block_byref_object_dispose__22_0;
            v40 = v18;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v19 = mach_continuous_time();
              v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RTI Data StartGpsSecs,%llu\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse_block_invoke", v36[5]);
              LbsOsaTrace_WriteLog(0x18u, __str, v20, 4, 1);
            }

            v21 = *(v1 + 296);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 1174405120;
            block[2] = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_24;
            block[3] = &unk_2A1F8ADD8;
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v46, v49);
            block[4] = &v35;
            dispatch_async(v21, block);
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v46);
            _Block_object_dispose(&v35, 8);
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v49);
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ApiState,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 87, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 262, *(a1 + 44));
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 2, 1);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ApiType\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
      }

      v31 = *(v1 + 296);
      v43[0] = MEMORY[0x29EDCA5F8];
      v43[1] = 1174405120;
      v43[2] = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_27;
      v43[3] = &__block_descriptor_tmp_28_0;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v44, v51);
      v44[8] = v16;
      dispatch_async(v31, v43);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Ee Type,%u,ID,%u\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse_block_invoke", *(a1 + 80), *(a1 + 44));
        LbsOsaTrace_WriteLog(0x18u, __str, v33, 4, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v44);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lut Hdl NULL\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 87, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 516);
      LbsOsaTrace_WriteLog(0x18u, __str, v23, 2, 1);
    }
  }

  else
  {
LABEL_43:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lut Hdl\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }
  }

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v51);
}

void sub_2996DF380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  _Block_object_dispose(&a16, 8);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v51 - 104);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);

  return v2();
}

uint64_t __copy_helper_block_e8_40c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_40c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v1);
}

uint64_t __Block_byref_object_copy__21_0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_24(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);

  return v2();
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_40c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_27(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

uint64_t std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t DD_Delete_Bad_BDS_Data(uint64_t result, uint64_t a2, void *a3)
{
  v3 = 0;
  v4 = a3 + 3065;
  v5 = a3 + 3990;
  v6 = 12952;
  v7 = 15024;
  do
  {
    v8 = a3[3056];
    if (*(v8 + v3) == 1)
    {
      *(result + 2 * v3) = 255;
      *(v8 + v3) = 0;
      *(a3[3054] + v3) = 0;
      *(a3[3058] + v3) = 0;
      *(v4 + 24) = 0;
      *(v4 + 4) = 0uLL;
      *(v4 + 5) = 0uLL;
      *(v4 + 2) = 0uLL;
      *(v4 + 3) = 0uLL;
      *v4 = 0uLL;
      *(v4 + 1) = 0uLL;
      *(a3[3064] + v3) = 0;
      *(a3[3061] + v3) = 1;
      v9 = p_NV + v7;
      *(v9 - 8) = 0xFFFFFFFFLL;
      *v9 = 0uLL;
      *(v9 + 16) = 0uLL;
      *(v9 + 32) = 0uLL;
      *(v9 + 48) = 0uLL;
      *(v9 + 64) = 0uLL;
      *(v9 + 80) = 0uLL;
      *(v9 + 96) = 0;
    }

    if (*(a3[3057] + v3) == 1)
    {
      *(a2 + v3) = -1;
      *(a3[3057] + v3) = 0;
      *(a3[3055] + v3) = 0;
      *(a3[3060] + v3) = 0;
      *(v5 + 28) = 0uLL;
      *v5 = 0uLL;
      v5[1] = 0uLL;
      *(a3[3064] + v3) = 0;
      v10 = (p_NV + v6);
      *(v10 - 1) = 0xFFFFFFFFLL;
      *v10 = 0uLL;
      v10[1] = 0uLL;
      *(v10 + 28) = 0uLL;
    }

    ++v3;
    v6 += 56;
    v7 += 112;
    v5 = (v5 + 44);
    v4 = (v4 + 100);
  }

  while (v3 != 37);
  return result;
}

uint64_t DD_Delete_Inhib_BDS_Data(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v5 = a4 + 28220;
  v6 = a4 + 3990;
  v7 = 15024;
  v8 = 12952;
  do
  {
    if (*(result + v4) == 1)
    {
      *(a2 + 2 * v4) = 255;
      *(a4[3056] + v4) = 0;
      *(a4[3054] + v4) = 0;
      *(a4[3058] + v4) = 0;
      v9 = v5 - 3700;
      *(v9 + 24) = 0;
      *(v9 + 4) = 0uLL;
      *(v9 + 5) = 0uLL;
      *(v9 + 2) = 0uLL;
      *(v9 + 3) = 0uLL;
      *v9 = 0uLL;
      *(v9 + 1) = 0uLL;
      *(a4[3059] + v4) = 0;
      *(v5 + 24) = 0;
      *(v5 + 4) = 0uLL;
      *(v5 + 5) = 0uLL;
      *(v5 + 2) = 0uLL;
      *(v5 + 3) = 0uLL;
      *v5 = 0uLL;
      *(v5 + 1) = 0uLL;
      *(a4[3064] + v4) = 0;
      *(a4[3061] + v4) = 1;
      v10 = p_NV + v7;
      *(v10 - 8) = 0xFFFFFFFFLL;
      *v10 = 0uLL;
      *(v10 + 16) = 0uLL;
      *(v10 + 32) = 0uLL;
      *(v10 + 48) = 0uLL;
      *(v10 + 64) = 0uLL;
      *(v10 + 80) = 0uLL;
      *(v10 + 96) = 0;
      *(a3 + v4) = -1;
      *(a4[3057] + v4) = 0;
      *(a4[3055] + v4) = 0;
      *(a4[3060] + v4) = 0;
      *(v6 + 28) = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      v11 = (p_NV + v8);
      *(v11 - 1) = 0xFFFFFFFFLL;
      *v11 = 0uLL;
      v11[1] = 0uLL;
      *(v11 + 28) = 0uLL;
    }

    ++v4;
    v7 += 112;
    v8 += 56;
    v6 = (v6 + 44);
    v5 += 100;
  }

  while (v4 != 37);
  return result;
}

uint64_t DD_Check_Age_BDS_Data(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 1)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v25 = (a5 + 33548);
  v10 = result + 900;
  if (result <= 0x15180)
  {
    v11 = 86400;
  }

  else
  {
    v11 = result;
  }

  v12 = v11 - 86400;
  v13 = *(a5 + 24464);
  v28 = (result - a2 / 0x3E8) & ~((result - a2 / 0x3E8) >> 31);
  v14 = 24520;
  do
  {
    if (*(v13 + v7) != 1)
    {
      goto LABEL_17;
    }

    v15 = *(a5 + v14);
    if (v15 < v12 && v15 >= 1)
    {
LABEL_15:
      v9 = 1;
      *(*(a5 + 24448) + v7) = 1;
      goto LABEL_17;
    }

    if (v15)
    {
      if (v15 > v10)
      {
        ++v8;
        if ((*(a5 + 39302) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      *(a5 + v14) = v28;
    }

LABEL_17:
    ++v7;
    v14 += 100;
  }

  while (v7 != 37);
  v26 = a3;
  if (v8 >= 1)
  {
    EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future EPH, %d", v8);
    if (*(a5 + 39302) == 1)
    {
      EvLog("DD_Check_Age_BDS_Data:  Skip Future Check");
    }
  }

  v17 = 0;
  v18 = 0;
  if (v6 <= 15724800)
  {
    v19 = 15724800;
  }

  else
  {
    v19 = v6;
  }

  v20 = v19 - 15724800;
  v21 = 31920;
  do
  {
    if (*(*(a5 + 24480) + v17) == 1)
    {
      v22 = *(a5 + v21);
      if (v22 >= v20 || v22 < 1)
      {
        if (v22)
        {
          if (v22 > v10)
          {
            ++v18;
            EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future ALM, SV %d age %d thresh %d %d %d", v17 + 1, (v6 - v22) / 604800, 0, v25, v26);
            if ((*(a5 + 39302) & 1) == 0)
            {
              v9 = 1;
              *(*(a5 + 24456) + v17) = 1;
            }
          }
        }

        else
        {
          *(a5 + v21) = v28;
        }
      }

      else
      {
        v9 = 1;
        *(*(a5 + 24456) + v17) = 1;
        EvLog_v("DD_Check_Age_BDS_Data:  Deleting Old ALM, SV %d age %d thresh %d %d %d", v17 + 1, (v6 - v22) / 604800, (v6 - v20) / 604800, v25, v26);
      }
    }

    ++v17;
    v21 += 44;
  }

  while (v17 != 37);
  if (v18 >= 1)
  {
    EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future ALM, %d", v18);
    if (*(a5 + 39302) == 1)
    {
      EvLog("DD_Check_Age_BDS_Data:  Skip Future Check");
    }
  }

  if (v25[1])
  {
    v24 = *v25;
    if (*v25 >= v20 || v24 < 1)
    {
      if (v24)
      {
        if (v24 > v10)
        {
          EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future BGTO, %d %d", *v25, v10);
          if ((*(a5 + 39302) & 1) == 0)
          {
            goto LABEL_43;
          }

          EvLog("DD_Check_Age_BDS_Data:  Skip Future Check");
        }
      }

      else
      {
        *v25 = v28;
      }
    }

    else
    {
LABEL_43:
      *v25 = 0;
      *(v25 + 1) = 0;
      v25[4] = 0;
    }
  }

  result = v26;
  if (v9)
  {

    return DD_Delete_Bad_BDS_Data(v26, a4, a5);
  }

  return result;
}

void DD_Proc_BDS_Data(int *a1, uint64_t a2, uint64_t a3, int *a4, void *a5)
{
  if (*(a2 + 6) >= 6u)
  {
    v5 = *(a2 + 56);
    v6 = *(a2 + 16);
    if (v5)
    {
      v7 = (v6 >> 8) & 7;
      if ((v7 - 1) >= 5)
      {
        goto LABEL_10;
      }

      *(a2 + 12) = v7;
      if (v5 == 1023)
      {

        DD_Proc_BDS_D1_Data(a1, a2, a3, a4, a5);
      }
    }

    else
    {
      if ((v6 & 0x3FF8000) == 0x3890000)
      {
        v7 = 0;
LABEL_10:
        EvLog_v("DD_BDS_Data:  Bad SF Num %d", v7);
        return;
      }

      EvCrt_v("DD_BDS_Data:  Preamble Fail");
    }
  }
}

void DD_Proc_BDS_D1_Data(int *a1, uint64_t a2, uint64_t a3, int *a4, void *a5)
{
  v54 = *MEMORY[0x29EDCA608];
  v10 = *(a2 + 12);
  if (*(a2 + 12) && *a3 >= 4)
  {
    v11 = *(a3 + 24) + -14.0;
    if (v11 < 0.0)
    {
      v11 = v11 + 604800.0;
    }

    v12 = -0.5;
    if (v11 > 0.0)
    {
      v12 = 0.5;
    }

    v13 = v11 + v12;
    v14 = 7.0;
    if (v13 <= 2147483650.0)
    {
      v14 = -8.0;
      if (v13 >= -2147483650.0)
      {
        v14 = (v13 % 30);
      }
    }

    v15 = v14 * 0.166666667 + 4.5;
    if (v10 != (v15 - 5 * ((((103 * v15) & 0x8000) != 0) + (((103 * v15) >> 8) >> 1)) + 1))
    {
      EvCrt_v("DD_Proc_BDS_D1_Data:  SF Num Error %d %d", *(a2 + 12), (v15 - 5 * ((((103 * v15) & 0x8000) != 0) + (((103 * v15) >> 8) >> 1)) + 1));
      v10 = 0;
      *(a2 + 12) = 0;
    }
  }

  v16 = *(a2 + 56);
  if ((v16 & 2) != 0)
  {
    v17 = v10 >= 4 ? (*(a2 + 20) >> 2) & 0x7F : 0;
    *(a2 + 13) = v17;
    v18 = *(a2 + 8);
    if (v18 <= 0x24)
    {
      if (v10 <= 3)
      {
        v19 = (v10 - 1);
        if (v19 < 3)
        {
          if (v18 <= 4)
          {
            EvLog_v("DD_BDS_D1_Eph_SF:  bad SV, SV %d ");
            return;
          }

          if ((~v16 & 3) != 0)
          {
            if (*a3 < 6)
            {
              goto LABEL_43;
            }

            v21 = *(a3 + 24) + -14.0;
            if (v21 < 0.0)
            {
              v21 = v21 + 604800.0;
            }

            v20 = 6 * (v21 % 6);
          }

          else
          {
            v20 = (*(a2 + 16) << 12) | (*(a2 + 20) >> 10) & 0xFFF;
            if (v20 == 0xFFFF)
            {
LABEL_43:
              if ((~v16 & 0xC) != 0 || v10 != 1)
              {
                EvLog_v("DD_BDS_D1_Eph_SF:  bad Eph IOD, IOD %d  TOW sts %d  Wd[0,1] %x %x ");
                return;
              }

              v22 = (9544372 * ((*(a2 + 28) >> 14) & 0xFE | ((*(a2 + 24) & 0x1FFu) << 8))) >> 32;
LABEL_46:
              v50 = v18 + 1;
              v44 = v22 + 1;
              if (*(a1 + v18 + 3254) != (v22 + 1))
              {
                v23 = &a1[27 * (v18 - 5) + 1646];
                *(v23 + 23) = 0u;
                *(v23 + 4) = 0u;
                *(v23 + 5) = 0u;
                *(v23 + 2) = 0u;
                *(v23 + 3) = 0u;
                *v23 = 0u;
                *(v23 + 1) = 0u;
                v24 = a1 + 6 * (v18 - 5);
                *(v24 + 5022) = 0;
                *(v24 + 2510) = 0;
                *(v24 + 2558) = 0;
                *(v24 + 5118) = 0;
                *(a1 + v18 + 12972) = 0;
                *(a1 + v18 + 3254) = v22 + 1;
              }

              v25 = &a1[27 * (v18 - 5) + 9 * v19];
              v53 = *(v25 + 6616);
              v26 = *(v25 + 6600);
              v46 = v25 + 6584;
              v51 = *(v25 + 6584);
              v52 = v26;
              v27 = a1 + 6 * (v18 - 5);
              v45 = (v27 + 10040);
              v28 = *&v27[2 * v19 + 10040];
              v29 = v27 + 10232;
              v48 = v10 - 1;
              v49 = a1;
              v47 = (v27 + 10232);
              if (*&v27[2 * v19 + 10040])
              {
                v30 = 0;
                v31 = *&v29[2 * v19];
                v32 = &D1_MaskToSubFrCheck + 36 * v19;
                v33 = &a1[27 * (v18 - 5) + 1646 + 9 * v19];
                v34 = a2 + 20;
                do
                {
                  v35 = v30 + 1;
                  v36 = 1 << (v30 + 1);
                  if ((v36 & v16) != 0)
                  {
                    v37 = *(v34 + 4 * v30);
                    if ((v36 & v28) != 0)
                    {
                      v38 = *(v33 + 4 * v30);
                      v39 = v36 & v31;
                      if ((*&v32[4 * v30] & (v38 ^ v37)) != 0)
                      {
                        if (!v39)
                        {
                          *(&v51 + v30) = v37;
                        }

                        EvLog_v("DD_BDS_D1_Eph_SF:  Diff SF Words, SV %d  SF %d  Wd %d 0x%x 0x%x  CrosChked? %d  SFmsk 0x%x 0x%x", v50, v10, v30 + 1, v37, v38, v39 != 0, v16, v28);
                      }

                      else if (!v39)
                      {
                        v31 |= (1 << (v30 + 1));
                      }
                    }

                    else
                    {
                      *(&v51 + v30) = v37;
                      v28 |= (1 << (v30 + 1));
                    }
                  }

                  v30 = v35;
                }

                while (v35 != 9);
              }

              else
              {
                LOWORD(v31) = 0;
                v40 = *(a2 + 36);
                v51 = *(a2 + 20);
                v52 = v40;
                v53 = *(a2 + 52);
                LOWORD(v28) = v16 & 0x3FE;
              }

              if (v10 == 1 && (v31 & 0x39E) != 0x39E && (v28 & 2) != 0 && (v51 & 0x200) != 0)
              {
                if (*(a5[3052] + v18) == 1)
                {
                  EvLog_v("DD_BDS_D1_Eph_SF:  EPH H->U, SV %d  IOD %d", v50, v44);
                  *(a5[3052] + v18) = 0;
                }

                *(a5[3053] + 20 * v18) = 2;
              }

              v41 = v52;
              *v46 = v51;
              *(v46 + 16) = v41;
              *(v46 + 32) = v53;
              v45[v48] = v28;
              v47[v48] = v31;
              if ((~*v45 & 0x39E) == 0 && (~v45[1] & 0x3FE) == 0 && (~v45[2] & 0x3FE) == 0)
              {
                if ((~*v47 & 0x39E) != 0 || (~v47[1] & 0x3FE) != 0 || (~v47[2] & 0x3FE) != 0)
                {
                  v42 = v49 + v18;
                  v43 = 1;
                }

                else
                {
                  v42 = v49 + v18;
                  v43 = 2;
                }

                v42[12972] = v43;
              }

              return;
            }
          }

          LODWORD(v22) = v20 / 0xE10;
          if (v10 >= 2 && v20 % 0xE10 >= 0xDF2 && (~*(a1 + 3 * (v18 - 5) + 5020) & 0x39E) != 0)
          {
            return;
          }

          goto LABEL_46;
        }

        if (!v10)
        {

          EvLog("DD_Proc_BDS_D1_Data:  Bad SF Num!");
          return;
        }

LABEL_32:
        EvLog_v("DD_Proc_BDS_D1_Data:  Bad SF Num %d");
        return;
      }

      if (v10 != 4)
      {
        if (v10 != 5)
        {
          goto LABEL_32;
        }

        if (v17 - 25 <= 0xFFFFFFE7)
        {
          EvLog_v("DD_Proc_BDS_D1_Data:  Bad SF5 Pg %d  SV %d");
          return;
        }

        if (v17 <= 0x18 && ((1 << v17) & 0x1000180) != 0)
        {
          if ((~v16 & 0x3FE) == 0 && (*(a5[3058] + v18) != 1 || *(a5 + 100 * *(a2 + 8) + 24542) != 1))
          {

            DD_Proc_BDS_Health_Subframe(a4, a2, a5, a1);
          }

          return;
        }

        if ((~v16 & 0x3FE) != 0 || v17 > 6)
        {
          return;
        }

        goto LABEL_70;
      }

      if (v17 - 25 <= 0xFFFFFFE7)
      {
        EvLog_v("DD_Proc_BDS_D1_Data:  Bad SF4 Pg %d  SV %d");
        return;
      }

      if ((~v16 & 0x3FE) == 0)
      {
LABEL_70:

        DD_Check_BDS_Alm_AmEpID(a2, a5);
      }
    }
  }
}

void DD_Check_BDS_Alm_AmEpID(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 33568;
  v4 = *(a1 + 8);
  v5 = *(a2 + 33568 + v4);
  if ((*(a1 + 52) & 3) == 3)
  {
    if (v5 < 0)
    {
      EvLog_v("DD_Check_BDS_Alm_AmEpID: PRN %d AmEpID change from %d to 11", *(a1 + 8), 3);
      v4 = *(a1 + 8);
      v6 = 1;
    }

    else
    {
      if (v5 > 1)
      {
        return;
      }

      v6 = v5 + 1;
    }

    goto LABEL_8;
  }

  if (v5 >= 1)
  {
    EvLog_v("DD_Check_BDS_Alm_AmEpID: PRN %d AmEpID change from 11 to %d", *(a1 + 8), *(a1 + 52) & 3);
    v4 = *(a1 + 8);
    v6 = -1;
LABEL_8:
    *(v3 + v4) = v6;
    return;
  }

  if (v5 >= -1)
  {
    *(v3 + v4) = v5 - 1;
  }
}

int *DD_Proc_BDS_Health_Subframe(int *result, uint64_t a2, void *a3, int *a4)
{
  v50 = result;
  v55 = *MEMORY[0x29EDCA608];
  v7 = *(a2 + 13);
  memset(v54, 0, 37);
  v8 = *(a2 + 8);
  if (v8 >= 5)
  {
    if (v7 == 7)
    {
LABEL_24:
      if ((~*(a2 + 56) & 0x3FE) != 0)
      {
        return result;
      }

      v14 = *(a2 + 36);
      __b[0] = *(a2 + 20);
      __b[1] = v14;
      v53 = *(a2 + 52);
      memset_pattern16(v51, &unk_299761940, 0x26uLL);
      Decode_BDS_1st_Health_SF(__b, v51);
      for (i = 0; i != 19; ++i)
      {
        if (Decode_BDS_Alm_Health_Sts(*&v51[2 * i]) >= 4)
        {
          *(v54 + i) = 1;
        }
      }

      __n_4 = 0;
      v10 = 0;
      v11 = 19;
      goto LABEL_30;
    }

    if (v7 == 8)
    {
      goto LABEL_17;
    }

    if (v7 != 24)
    {
      return result;
    }

LABEL_9:
    if ((~*(a2 + 56) & 0x3FE) != 0 || *(a3 + v8 + 33568) < 2 || (*(a2 + 44) & 0x18000) != 0x8000)
    {
      return result;
    }

    *v51 = *(a2 + 20);
    *&v51[12] = *(a2 + 32);
    memset_pattern16(__b, &unk_299761940, 0x1AuLL);
    Decode_BDS_3rd_Health_SF(v51, __b);
    for (j = 0; j != 7; ++j)
    {
      if (Decode_BDS_Alm_Health_Sts(*(__b + j)) >= 4)
      {
        *(&v54[1] + j + 14) = 1;
      }
    }

    v10 = 30;
    v11 = 7;
    v12 = 2;
    goto LABEL_23;
  }

  if (v7 == 116)
  {
    goto LABEL_9;
  }

  if (v7 != 36)
  {
    if (v7 != 35)
    {
      return result;
    }

    goto LABEL_24;
  }

LABEL_17:
  if ((~*(a2 + 56) & 0xFE) != 0)
  {
    return result;
  }

  *v51 = *(a2 + 20);
  *&v51[16] = *(a2 + 36);
  memset_pattern16(__b, &unk_299761940, 0x16uLL);
  Decode_BDS_2nd_Health_SF(v51, __b);
  for (k = 0; k != 11; ++k)
  {
    if (Decode_BDS_Alm_Health_Sts(*(__b + k)) >= 4)
    {
      *(&v54[1] + k + 3) = 1;
    }
  }

  v10 = 19;
  v11 = 11;
  v12 = 1;
LABEL_23:
  __n_4 = v12;
LABEL_30:
  __n = v11;
  v16 = v10 + v11;
  v17 = v10;
  v18 = 56 * v10 + 12952;
  v19 = v17;
  do
  {
    if (*(a3[3060] + v19) == 1 && (*(v54 + v19) & 1) == 0)
    {
      v20 = a3 + 44 * v19 + 31920;
      if (v20[42] == 1)
      {
        v21 = 0;
        LODWORD(v22) = 0;
        v20[42] = 0;
        v23 = p_NV;
        v24 = p_NV + 56 * v19 + 12944;
        v25 = *v20;
        v26 = *(v20 + 1);
        *(v24 + 36) = *(v20 + 28);
        *(v24 + 24) = v26;
        *(v24 + 8) = v25;
        v27 = v23 + v18;
        v28 = 55665;
        do
        {
          v29 = *(v27 + v21) ^ BYTE1(v28);
          v28 = 52845 * (v28 + v29) + 22719;
          v22 = (v22 + v29);
          ++v21;
        }

        while (v21 != 48);
        *v24 = v22;
      }
    }

    ++v19;
    v18 += 56;
  }

  while (v19 < v16);
  v48 = a4;
  v49 = a4 + 1627;
  v30 = 20 * v17 + 4;
  v31 = a3 + 100 * v17 + 24520;
  v32 = a3 + 11 * v17 + 7980;
  v33 = v17;
  do
  {
    if (*(a3[3052] + v33))
    {
      v34 = a3[3058];
    }

    else
    {
      v34 = a3[3058];
      if (*(v54 + v33) == 1)
      {
        if (*(v34 + v33) == 1 && v31[22] == 1 && *v31 + 3600 > *v50)
        {
          *(v54 + v33) = 0;
        }

        else
        {
          v35 = a3[3060];
          if (*(v35 + v33) == 1 && *v32 + 100 < *v50)
          {
            *(a3[3055] + v33) = 0;
            *(v35 + v33) = 0;
            *(v49 + v33 - 52) = -1;
            v34 = a3[3058];
            if ((*(v34 + v33) & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else if (!*(v34 + v33))
          {
            goto LABEL_54;
          }

          if (v31[22] == 1 && *v31 + 100 < *v50)
          {
            *(a3[3054] + v33) = 0;
            *(v34 + v33) = 0;
            *(v49 + v33) = 255;
          }
        }
      }
    }

LABEL_54:
    if (*(v34 + v33) == 1 && *(a3[3052] + v33) == 1 && (*(v54 + v33) & 1) == 0)
    {
      EvLog_v("BDS_Health_SF:  ALM H->U, SV %d  SF5_PG7_wd[0-1] %x %x", v33 + 1, *(a2 + 16), *(a2 + 20));
    }

    if (*(v54 + v33))
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    *(a3[3053] + v30) = v36;
    ++v33;
    v30 += 20;
    v31 += 100;
    v32 += 11;
  }

  while (v33 < v16);
  result = memcpy((a3[3052] + v17), v54 + v17, __n);
  v48[__n_4 + 1624] = *v50;
  if (v48[1624] >= 1 && v48[1625] >= 1 && v48[1626] >= 1)
  {
    v37 = 0;
    LODWORD(v38) = 0;
    v39 = a3[3052];
    v40 = p_NV;
    v41 = p_NV + 12868;
    v42 = *(v39 + 29);
    v43 = *(v39 + 16);
    *(p_NV + 12868) = *v39;
    *(v41 + 16) = v43;
    *(v41 + 29) = v42;
    v44 = 55665;
    do
    {
      v45 = *(v40 + 12864 + v37) ^ BYTE1(v44);
      v44 = 52845 * (v44 + v45) + 22719;
      v38 = (v38 + v45);
      ++v37;
    }

    while (v37 != 48);
    *(v40 + 12856) = v38;
  }

  return result;
}

BOOL DD_Save_New_BDS_D1_Eph(int a1, void *a2, uint64_t a3)
{
  v60 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = 0;
    v49 = a3 + 6584;
    v48 = a3 + 10040;
    v47 = a3 + 10232;
    if (a1 % 604800 >= 14)
    {
      v5 = -14;
    }

    else
    {
      v5 = 604786;
    }

    v45 = a1;
    v46 = a1 % 604800 + v5 + 3600;
    v6 = a2 + 25020;
    v7 = a3 + 6518;
    v8 = a2 + 32182;
    v9 = a3 + 12977;
    v10 = 100;
    v11 = 0uLL;
    while (1)
    {
      if (!*(v9 + v4) || *(v9 + v4) == 1 && (*(a2[3058] + v4 + 5) & 1) != 0)
      {
        goto LABEL_17;
      }

      if ((v4 + 6) <= 5)
      {
        v12 = -1;
      }

      else
      {
        v12 = -6;
      }

      v13 = v12 + v4 + 6;
      v55 = 0;
      memset(v50, 0, 23);
      v51 = v11;
      v52 = v11;
      v53 = v11;
      *v54 = v11;
      *&v54[14] = 0;
      v14 = *(v7 + 2 * v4);
      if (v14 == 255)
      {
        goto LABEL_15;
      }

      v15 = v46 - 3600 * v14 + (v46 - 3600 * v14 < 0 ? 0x93A80 : 0);
      if (v15 >= 3661)
      {
        break;
      }

      v57 = 1;
      v56 = 257;
      v19 = (v49 + 108 * v13);
      v20 = v19[5];
      v58[4] = v19[4];
      v59[0] = v20;
      *(v59 + 12) = *(v19 + 92);
      v21 = v19[1];
      v58[0] = *v19;
      v58[1] = v21;
      v22 = v19[3];
      v58[2] = v19[2];
      v58[3] = v22;
      BDS_D1_EphBin2Int(&v56, v58, v50);
      BYTE4(v50[2]) = v4 + 6;
      v50[0] = v45 | 0x400000000;
      if (*(v9 + v4) <= 1u)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0x7FFFFFF;
      }

      v55 = v23;
      v24 = v4 + 6;
      v25 = SLOWORD(v50[2]) < 3073;
      if (SLOWORD(v50[2]) >= 3073)
      {
        EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  WeekNo = %d > 3072, Out of range !", v4 + 6, SLOWORD(v50[2]));
        v24 = BYTE4(v50[2]);
      }

      if (HIDWORD(v50[1]) >= 0x12751)
      {
        EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  toe = %d > 604800 s, Out of range !", v24, 8 * HIDWORD(v50[1]));
        v25 = 0;
        v24 = BYTE4(v50[2]);
      }

      if (DWORD1(v51) >= 0x1999999B)
      {
        EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  e = %g > 0.05 ", v24, DWORD1(v51) * 1.16415322e-10);
        v25 = 0;
        v24 = BYTE4(v50[2]);
      }

      v11 = 0uLL;
      if ((v24 - 1) <= 4u)
      {
        if ((DWORD2(v51) + 777519103) <= 0xF3F7FFFE)
        {
          EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  sqrtA = %g, Out of [6709 .. 6324 m^0.5]", v24, vcvtd_n_f64_u32(DWORD2(v51), 0x13uLL));
          v25 = 0;
          v24 = BYTE4(v50[2]);
        }

        if ((v52 - 119304648) < 0xF1C71C71)
        {
          EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  i0 = %f, Out of [-10 .. 10 deg]", v24, v52 * 0.0000000838190317);
          v25 = 0;
          v24 = BYTE4(v50[2]);
        }

        v11 = 0uLL;
      }

      if ((v24 - 6) <= 0x1Fu)
      {
        if ((DWORD2(v51) + 777519103) <= 0xCDAFFFFE)
        {
          EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  sqrtA = %g, Out of [5099 .. 6324 m^0.5]", v24, vcvtd_n_f64_u32(DWORD2(v51), 0x13uLL));
          v11 = 0uLL;
          v25 = 0;
        }

        if ((v52 - 775480207) < 0xF1C71C71)
        {
          EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  i0 = %f, Out of [45 .. 65 deg]", BYTE4(v50[2]), v52 * 0.0000000838190317);
          goto LABEL_65;
        }
      }

      if (v25)
      {
        if (*(a2[3058] + v4 + 5) != 1)
        {
          goto LABEL_45;
        }

        v26 = *(v6 + 2);
        if (LODWORD(v50[1]) != v26 && g_Enable_Event_Log >= 6u)
        {
          EvLog_v("DD_Val_BDS_Eph:  New Eph SV %d %d %d %d", BYTE4(v50[2]), HIDWORD(v50[1]), v6[18], v6[19]);
          v11 = 0uLL;
LABEL_45:
          v27 = 6504;
          if ((v4 - 14) < 0xB)
          {
            v27 = 6500;
          }

          v28 = 6496;
          if ((v4 + 5) >= 0x13)
          {
            v28 = v27;
          }

          v29 = *(a3 + v28);
          v30 = a2[3052];
          if (v29 < 1 || *(v30 + v4 + 5) | BYTE6(v50[2]))
          {
LABEL_51:
            v31 = BYTE6(v50[2]);
            *(v30 + v4 + 5) = BYTE6(v50[2]) == 0;
            if (v31)
            {
              goto LABEL_52;
            }

LABEL_59:
            v32 = 1;
          }

          else
          {
            if ((*v8 & 1) != 0 || v29 + 3600 <= v45)
            {
              v33 = a2[3060] + v4;
              if (*(v33 + 5) != 1 || v29 + 100 >= v45)
              {
                goto LABEL_51;
              }

              *(a2[3055] + v4 + 5) = 0;
              *(v33 + 5) = 0;
              *(v7 + v4 - 57) = -1;
              *(a2[3052] + v4 + 5) = 1;
              goto LABEL_59;
            }

            *(v30 + v4 + 5) = 0;
LABEL_52:
            v32 = 2;
          }

          *(a2[3053] + v10) = v32;
          if (*(a2[3058] + v4 + 5) == 1 && BYTE6(v50[2]))
          {
            v6[22] = BYTE6(v50[2]);
          }

          if (v45 < 1)
          {
            goto LABEL_16;
          }

          *(a2[3061] + v4 + 5) = 1;
          Core_Save_BDS_Eph((v4 + 6), 0, v6);
LABEL_65:
          v11 = 0uLL;
          goto LABEL_16;
        }

        if (LODWORD(v50[1]) != v26)
        {
          goto LABEL_45;
        }
      }

LABEL_16:
      *(v9 + v4) = 0;
LABEL_17:
      ++v4;
      v6 += 100;
      v10 += 20;
      v8 += 44;
      if (v4 == 32)
      {
        v34 = 0;
        LODWORD(v35) = 0;
        v36 = a2[3052];
        v37 = p_NV;
        v38 = p_NV + 12868;
        v39 = *(v36 + 29);
        v40 = *(v36 + 16);
        *(p_NV + 12868) = *v36;
        *(v38 + 16) = v40;
        *(v38 + 29) = v39;
        v41 = 55665;
        do
        {
          v42 = *(v37 + 12864 + v34) ^ BYTE1(v41);
          v41 = 52845 * (v41 + v42) + 22719;
          v35 = (v35 + v42);
          ++v34;
        }

        while (v34 != 48);
        *(v37 + 12856) = v35;
        a1 = v45;
        return a1 != 0;
      }
    }

    EvLog_v("DD_Save_New_BDS_D1_Eph:  Old SF in SD, SV %d, IOD %d  Age %d  ", v4 + 6, *(v7 + 2 * v4), v15);
    v11 = 0uLL;
LABEL_15:
    v16 = (v49 + 108 * v13);
    *(v16 + 92) = v11;
    v16[4] = v11;
    v16[5] = v11;
    v16[2] = v11;
    v16[3] = v11;
    *v16 = v11;
    v16[1] = v11;
    v17 = v48 + 6 * v13;
    *(v17 + 4) = 0;
    *v17 = 0;
    v18 = v47 + 6 * v13;
    *v18 = 0;
    *(v18 + 4) = 0;
    goto LABEL_16;
  }

  return a1 != 0;
}

uint64_t Sen_Aug_FPE_ReInit(int64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  g_p_CB_LCD_SA_Dbg = a3;
  g_TCU = a1[5492].i64;
  g_FPE_LogSeverity = *(a2 + 4);
  g_DBfd = a4;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v9 = *(g_TCU + 8);
    }

    else
    {
      v9 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f ReInit function was called", "Sen_Aug_FPE_ReInit", 153, v8, v9);
  }

  v15 = *(a2 + 55);
  v16 = *(a2 + 71);
  v17 = *(a2 + 87);
  v18 = *(a2 + 103);
  v12 = *(a2 + 7);
  v13 = *(a2 + 23);
  v14 = *(a2 + 39);
  v11 = 12;
  return FPE_ApplyNewMeas(13, &v11, a2, a1, 0, a3, a4, 0);
}

uint64_t Sen_Aug_FPE_Update(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int64x2_t *a5, _DWORD *a6, uint64_t a7, _DWORD *a8, uint64_t a9)
{
  v38[3] = *MEMORY[0x29EDCA608];
  bzero(a6, 0x5F70uLL);
  *a6 = *(a2 + 4);
  *(a6 + 49) = *(a2 + 8);
  v30 = a4;
  SA_Interface_Logger(a2, a5, a1, a3, a4, a7);
  *a8 = 0;
  FPE_ApplyNewMeas(10, a2, a3, a5, a6, a7, a8, a9);
  v17 = 0;
  v38[0] = a1 + 240;
  v38[1] = a1 + 336;
  v38[2] = a1 + 432;
  do
  {
    memset(__dst, 0, 32);
    v18 = v38[v17];
    v19 = Cyc_Record_Count_Occupied(v18, 1u);
    v31 = dword_29976195C[v17];
    if ((a5[132943].i8[1] & 1) == 0)
    {
      v20 = v19;
      v21 = v19 - v31;
      if (v19 > v31)
      {
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v22 = mach_continuous_time();
          if (g_TCU)
          {
            v23 = *(g_TCU + 8);
          }

          else
          {
            v23 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f num new samples is large, and limited to maximum, numNewSamples = %d", "FpeAdapter_extractSensorData", 267, (*&g_MacClockTicksToMsRelation * v22), v23, v20);
        }

        do
        {
          Cyc_Record_Read(v18, 1u, __dst);
          --v21;
        }

        while (v21);
      }
    }

    if (v31 < Cyc_Record_Count_Occupied(v18, 1u))
    {
      if (g_FPE_LogSeverity)
      {
        v24 = mach_continuous_time();
        if (g_TCU)
        {
          v25 = *(g_TCU + 8);
        }

        else
        {
          v25 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f num new samples is bigger than max allowed = %d.measTypeTble[i]=%d", "FpeAdapter_extractSensorData", 280, (*&g_MacClockTicksToMsRelation * v24), v25, v31, dword_299761950[v17]);
      }

      g_FPE_AssertFlag = 1;
    }

    v26 = 0;
    if ((Cyc_Record_IsEmpty(v18, 1u) & 1) == 0)
    {
      do
      {
        Cyc_Record_Read(v18, 1u, __dst);
        FPE_ApplyNewMeas(dword_299761950[v17], __dst, a3, a5, a6, a7, a8, a9);
        ++v26;
      }

      while (!Cyc_Record_IsEmpty(v18, 1u));
    }

    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v27 = mach_continuous_time();
      if (g_TCU)
      {
        v28 = *(g_TCU + 8);
      }

      else
      {
        v28 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f \tNum new_Samples =%d for measType = %d", "FpeAdapter_extractSensorData", 301, (*&g_MacClockTicksToMsRelation * v27), v28, v26, dword_299761950[v17]);
    }

    ++v17;
  }

  while (v17 != 3);
  FpeAdapter_extractAssistMeasData(0, a5, v30, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(1, a5, v30, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(2, a5, v30, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(4, a5, v30, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(5, a5, v30, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(10, a5, v30, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(3, a5, v30, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(11, a5, v30, a3, a5, a6, a7, a8, a9);
  *__dst = 12;
  v34 = *(a3 + 55);
  v35 = *(a3 + 71);
  v36 = *(a3 + 87);
  v37 = *(a3 + 103);
  *&__dst[2] = *(a3 + 7);
  *&__dst[18] = *(a3 + 23);
  v33 = *(a3 + 39);
  return FPE_ApplyNewMeas(12, __dst, a3, a5, a6, a7, a8, a9);
}