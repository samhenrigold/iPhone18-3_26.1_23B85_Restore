void Gnm_HalStopCnf(int a1, _DWORD *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_HalStopCnf");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a2)
  {
    if ((a1 - 1) < 3)
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        return;
      }

      bzero(__str, 0x3C6uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = 1028;
      goto LABEL_17;
    }

    if (a1 != 4)
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        return;
      }

      bzero(__str, 0x3C6uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = 515;
LABEL_17:
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CBType,%u\n", v5, "GNM", 87, "Gnm_HalStopCnf", v6, a1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 4)
      {
        return;
      }

      goto LABEL_18;
    }

    v8 = gnssOsa_Calloc("Gnm_HalStopCnf", 933, 1, 0x10uLL);
    if (v8)
    {
      v8[12] = *a2 == 6;
      AgpsSendFsmMsg(128, 128, 8393217, v8);
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
LABEL_18:
      bzero(__str, 0x3C6uLL);
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v9, "GNM", 73, "Gnm_HalStopCnf");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm_HalStopCnf", 513);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      goto LABEL_18;
    }
  }
}

uint64_t Hal22_InitializeConn(void)
{
  v11 = *MEMORY[0x29EDCA608];
  if (gp_Comm && (*(*gp_Comm + 72))(gp_Comm))
  {
    if (!Hal_SetReadCbAsync(Hal02_AsyncReadCb))
    {
      return 0xFFFFFFFFLL;
    }

    if (g_LbsOsaTrace_Config < 4)
    {
      v1 = 1;
    }

    else
    {
      bzero(__str, 0x3C6uLL);
      v0 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Read Cb set\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal22_InitializeConn");
      v1 = 1;
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  else
  {
    v1 = 0;
  }

  if (Hal_CommsItfInitialize())
  {
    if (gnssOsa_SemInit(&g_HandleAckSem, 0))
    {
      if ((v1 & 1) == 0)
      {
        if (gnssOsa_CreateThread("Hal22_InitializeConn", 79, &g_HalRdrThrd, 0, Hal02_07ChipRead, 0, 0, 0, 99))
        {
          goto LABEL_16;
        }

        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v3 = __error();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RdrThrd err,%d\n", v2, "HAL", 69, "Hal22_InitializeConn", 1554, *v3);
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }

        if (gnssOsa_DeinitCountingSem(&g_HandleAckSem))
        {
          goto LABEL_16;
        }

        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v5 = __error();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v4, "HAL", 69, "Hal22_InitializeConn", 1540, *v5);
          gnssOsa_PrintLog(__str, 1, 1, 0);
LABEL_16:
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v6 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RdrThrd ON\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal22_InitializeConn");
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }
        }
      }

      return 0;
    }

    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = __error();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v8, "HAL", 69, "Hal22_InitializeConn", 1539, *v9);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t Hal22_DeInitializeConn(void)
{
  v7 = *MEMORY[0x29EDCA608];
  Hal_CommsItfDeInitialize();
  if (pthread_join(g_HalRdrThrd, 0))
  {
    v0 = g_LbsOsaTrace_Config == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    bzero(__str, 0x3C6uLL);
    v1 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v2 = __error();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RdrThrd err,%d\n", v1, "HAL", 69, "Hal22_DeInitializeConn", 1555, *v2);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  if (!gnssOsa_DeinitCountingSem(&g_HandleAckSem) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = __error();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v3, "HAL", 69, "Hal22_DeInitializeConn", 1540, *v4);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  result = Hal02_DeInitParser();
  g_HalState = 1;
  return result;
}

uint64_t Hal22_ZxSendToChip(unsigned __int8 *a1, size_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a2 > 0x1000)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx inpLen\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 87, "Hal22_ZxSendToChip", 514);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return -1;
  }

  v3 = a2;
  if (((*(*gp_Logger + 72))(gp_Logger) & 1) != 0 && a1[2] != 77)
  {
    GnssDbgMgr_WriteLog(v3, a1);
  }

  if (g_IsSPIEnabled)
  {
    v5 = 4;
  }

  else
  {
    v5 = 64;
  }

  v6 = (v5 + 0x1FFF) & v3;
  if (v6)
  {
    v7 = v5 - v6 + v3;
    v8 = gnssOsa_Calloc("Hal22_ZxSendToChip", 143, 1, v7);
    if (!v8)
    {
      return -1;
    }

    v9 = v8;
    v17 = v6;
    memcpy_s("Hal22_ZxSendToChip", 147, v8, v7, a1, v3);
    v3 = v7;
    a1 = v9;
  }

  else
  {
    v17 = 0;
    v7 = v3;
  }

  for (i = 0; i < 3; i += (v13 >> 31) + 1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (g_IsSPIEnabled)
      {
        v12 = "SPI";
      }

      else
      {
        v12 = "PCIe";
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s:write,size %u,zx%c%c%c 0x%x 0x%x\n", v11, "HAL", 73, "Hal22_ZxSendToChip", v12, v3, a1[2], a1[3], a1[4], a1[5], a1[6]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v13 = Hal_CommsItfWriteData(a1, v3);
    if (v13 == v3)
    {
      if (v17 && a1)
      {
        free(a1);
      }

      return v7;
    }
  }

  v14 = v13;
  if (v17 && a1)
  {
    free(a1);
  }

  v7 = v14;
  if (v14 == -1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Hw transport fail\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "Hal22_ZxSendToChip", 1282);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    if (g_HalCallbacks)
    {
      g_HalCallbacks(7);
    }

    return -1;
  }

  return v7;
}

BOOL Hal_WakeUpGNSS(void)
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = 1;
  DebugFeaturesBitmask = Ga05_GetDebugFeaturesBitmask();
  v2 = 0;
  while (1)
  {
    if ((DebugFeaturesBitmask & 0x2000) != 0)
    {
      Hal35_Set_SPI_InUse(0);
    }

    else
    {
      Hal35_Set_SPI_InUse(1);
      if (!Hal35_BaseBandSPMI_GNSSWake())
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v3 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SPMI driver not ready\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 87, "Hal_WakeUpGNSS");
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        usleep(0x4C4B40u);
        goto LABEL_11;
      }

      usleep(0x30D40u);
    }

    if (!Hal15_ReadHwRevision(77))
    {
      break;
    }

LABEL_11:
    v0 = v2++ < 9;
    if (v2 == 10)
    {
      return 0;
    }
  }

  Hal35_Set_SPI_InUse(1);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = "NOC";
    if ((DebugFeaturesBitmask & 0x2000) == 0)
    {
      v5 = "SPMI";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS wake,%s\n", v4, "HAL", 73, "Hal_WakeUpGNSS", v5);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return v0;
}

uint64_t Hal22_GetHwRevision(int *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  result = Hal15_ReadHwRevision(80);
  if (result)
  {
    v3 = 4;
LABEL_7:
    *a1 = v3;
    return result;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CP\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal22_GetHwRevision", 1285);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  result = Hal15_ReadHwRevision(77);
  if (result)
  {
    v3 = 5;
    goto LABEL_7;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ME\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal22_GetHwRevision", 1285);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return 0;
}

void GncP19_04MEResetTimerExpiry(void)
{
  v2 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Gnss BBReset NoResp\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP19_04MEResetTimerExpiry", 1305);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }
}

uint64_t GncP19_05HandleHWStatusInd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_HW_STATUS_IND Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP19_05HandleHWStatusInd", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = *(a1 + 12);
    if (v5 == 2)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HW Reset ongoing\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP19_05HandleHWStatusInd");
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      v6 = 3;
    }

    else if (v5 == 1)
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }

    GncP16_28UpdateStateResetStatus(v6, a2, a3);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP19_05HandleHWStatusInd", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

double *NK_Decay_Speed(double *result, int a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = 1000 * result;
  v5 = *(a4 + 27120);
  if (v5 * a2 > 1000 * result)
  {
    v7 = *(a3 + 328);
    if (result && v5 <= 0x3E7 && v7 > 0.001)
    {
      v8 = 1.0 - (v5 * a2 - 1000 * result) * (v5 * a2 - 1000 * result) / ((v5 * a2 + v4) * (v5 * a2 + v4));
      v9 = *(a4 + 27112);
      if (v9)
      {
        v8 = v8 / (1.0 - (v9 * a2 - v4) * (v9 * a2 - v4) / ((v9 * a2 + v4) * (v9 * a2 + v4)));
      }

      v10 = v8 * v8;
      *(a4 + 27112) = v5;
      v11 = (a3 + 88);
      for (i = 4; i > 1; --i)
      {
        *v11 = v10 * *v11;
        --v11;
      }

      v7 = *(a3 + 328);
      v13 = *(a4 + 304) - v7 * v10;
    }

    else
    {
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      v13 = *(a4 + 304);
    }

    if (v7 > *(a4 + 112))
    {
      v14 = 0;
      v15 = v13 * v13 * 0.0555555556;
      v16 = (a3 + 240);
      v17 = 3;
      v18 = 0uLL;
      do
      {
        v22 = 0;
        v21[2] = v18;
        v21[3] = v18;
        v21[0] = v18;
        v21[1] = v18;
        v23 = *(v16 - 1);
        v24 = *v16;
        if (v17 == 1)
        {
          v15 = v15 * *(a4 + 128);
        }

        v19 = 0;
        v20 = 0;
        if (v15 > 0.0)
        {
          result = rnk1_core((a4 + 352), 0xCu, v15, v21, &v20);
          v18 = 0uLL;
          v19 = v20 != 0;
        }

        v14 += v19;
        v16 += 3;
        --v17;
      }

      while (v17);
      if (v14)
      {
        *(a4 + 140) = 11;
        *(a4 + 136) = 1;
      }
    }
  }

  return result;
}

void GncP03_10SndNewUpdtSM(void)
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP03_10SndNewUpdtSM", 52, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_UPDT_POS_AVAL_IND =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP03_10SndNewUpdtSM");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 130, 8657155, v1);
  }
}

void GncP03_13SendStopFWActResp(unsigned __int8 a1, unsigned __int8 a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncP03_13SendStopFWActResp", 71, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    v4[12] = a2;
    v4[13] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_RSP =>GNM Activity,%hhu,Status,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP03_13SendStopFWActResp", v5[12], v5[13]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 128, 8652804, v5);
  }
}

void GncP03_SendGNSSSleepRequest(int a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (g_DeRegGnssCount >= 4u)
  {
    snprintf(v7, 0x3B6uLL, "ASSERT: %s %d Max Attempts De-Register GNSS", "GncP03_SendGNSSSleepRequest", 103);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 69, "GncP03_SendGNSSSleepRequest", v7);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GncP03_SendGNSSSleepRequest", "gncpe03Tx.cpp", 104, "false && De-Register GNSS Failed");
  }

  if (Hal_GNSS_SessionStop(a1))
  {
    ++g_DeRegGnssCount;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SleepTO,%u,ExpSleepDur,%u,Attempt,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP03_SendGNSSSleepRequest", a1, a2, g_DeRegGnssCount);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }
}

uint64_t Encode_SVid_STE(int a1, unsigned int a2, char *a3)
{
  v3 = a2 + 100;
  if (a1 == 7)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 7)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a1 == 6)
  {
    v6 = 7;
  }

  else
  {
    v3 = v4;
    v6 = v5;
  }

  v7 = a2 + 128;
  if (a1 == 5)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (a1 == 5)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (a1 == 4)
  {
    v10 = 6;
  }

  else
  {
    v7 = v8;
    v10 = v9;
  }

  if (a1 <= 5)
  {
    v3 = v7;
    v6 = v10;
  }

  v11 = a2 + 8;
  v12 = a2 + 64;
  if (a1 == 3)
  {
    v13 = 5;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (a1 == 2)
  {
    v14 = 4;
  }

  else
  {
    v11 = v12;
    v14 = v13;
  }

  if (a1 == 1)
  {
    v11 = a2;
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = a1 <= 3;
  if (a1 <= 3)
  {
    result = v11;
  }

  else
  {
    result = v3;
  }

  if (v16)
  {
    v18 = v15;
  }

  else
  {
    v18 = v6;
  }

  if (a3)
  {
    *a3 = v18;
  }

  return result;
}

uint64_t Decode_SVid_STE(uint64_t a1, int a2, int *a3)
{
  *a3 = 0;
  if (a2 == 1 && (a1 - 1) <= 0x1Fu)
  {
    v3 = 1;
LABEL_10:
    *a3 = v3;
    return a1;
  }

  if (a2 == 2 && (a1 - 120) <= 0x26u)
  {
    v3 = 7;
    goto LABEL_10;
  }

  if (a2 == 3 && (a1 + 63) <= 9u)
  {
    v3 = 5;
    goto LABEL_10;
  }

  if (a2 == 4 && (a1 - 1) <= 0xDu)
  {
    *a3 = 2;
    return (a1 - 8);
  }

  else if (a2 == 5 && (a1 - 65) <= 0x23u)
  {
    *a3 = 3;
    return (a1 - 64);
  }

  else if (a2 == 6 && (a1 + 127) <= 0x3Eu)
  {
    *a3 = 4;
    return (a1 - 128);
  }

  else
  {
    v4 = 0;
    if (a2 == 7 && (a1 - 101) <= 0xDu)
    {
      *a3 = 6;
      return (a1 - 100);
    }
  }

  return v4;
}

void GNSS_HL_Data_Bases_Clear(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v54 = *MEMORY[0x29EDCA608];
  memset(__src, 0, 22);
  *(&__src[3] + 7) = 0u;
  *(&__src[2] + 6) = 0u;
  v2 = *(v1 + 48);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v2 + 65) = *(&__src[3] + 7);
  *(v2 + 50) = *&__src[2];
  *(v2 + 34) = *__src;
  *(v2 + 128) = 0;
  *(v2 + 113) = 0u;
  *(v2 + 97) = 0u;
  *(v2 + 81) = 0u;
  bzero(__src, 0x46B0uLL);
  v3 = 0x1FFFFFFFFFFFFBBELL;
  do
  {
    LODWORD(__src[v3 + 1172]) = 0;
    v4 = &__src[v3 + 1173];
    *v4 = 0uLL;
    v4[1] = 0uLL;
    v3 += 5;
  }

  while (v3 * 8);
  v5 = &__src[1173];
  v6 = 8720;
  do
  {
    *(v5 - 2) = 0;
    *v5 = 0uLL;
    v5[1] = 0uLL;
    v5 = (v5 + 40);
    v6 -= 40;
  }

  while (v6);
  memcpy(*(v1 + 32), __src, 0x46B0uLL);
  bzero(__src, 0x2280uLL);
  *(&__src[7] + 4) = 0x500000002;
  v7 = &__src[9];
  v8 = 5904;
  do
  {
    *v7 = 0;
    *(v7 + 4) = 0;
    v7[1] = 0;
    v7[2] = 0;
    *(v7 + 24) = 0;
    *(v7 + 34) = 0;
    *(v7 + 26) = 0;
    *(v7 + 42) = 0;
    v7 += 6;
    v8 -= 48;
  }

  while (v8);
  bzero(&__src[747], 0xA3DuLL);
  memset(&__src[1075], 0, 73);
  memset(&__src[1085], 0, 146);
  v9 = *(v1 + 40);
  *v9 = *__src;
  *(v9 + 44) = *(&__src[5] + 4);
  *(v9 + 32) = *&__src[4];
  *(v9 + 16) = *&__src[2];
  *(v9 + 60) = *(&__src[7] + 4);
  memcpy((v9 + 68), &__src[8] + 4, 0x2236uLL);
  bzero(*(v1 + 64), 0x440uLL);
  memset(v50, 0, sizeof(v50));
  memset(__src, 0, 280);
  v10 = *(v1 + 72);
  *v10 = 0x200000000;
  *(v10 + 194) = *&v50[128];
  *(v10 + 210) = *&v50[144];
  *(v10 + 226) = *&v50[160];
  *(v10 + 236) = *&v50[170];
  *(v10 + 130) = *&v50[64];
  *(v10 + 146) = *&v50[80];
  *(v10 + 162) = *&v50[96];
  *(v10 + 178) = *&v50[112];
  *(v10 + 66) = *v50;
  *(v10 + 82) = *&v50[16];
  *(v10 + 98) = *&v50[32];
  memset(v53, 0, sizeof(v53));
  memset(v52, 0, sizeof(v52));
  memset(&__src[7798], 0, 136);
  *(v10 + 13) = 0;
  *(v10 + 8) = 0;
  *(v10 + 21) = 257;
  *(v10 + 23) = 1;
  *(v10 + 48) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 24) = 0;
  *(v10 + 52) = 0x500000002;
  *(v10 + 60) = 0;
  *(v10 + 64) = 0;
  *(v10 + 114) = *&v50[48];
  *(v10 + 252) = 0u;
  v10 += 252;
  *(v10 + 464) = 0u;
  *(v10 + 480) = 0u;
  *(v10 + 432) = 0u;
  *(v10 + 448) = 0u;
  *(v10 + 400) = 0u;
  *(v10 + 416) = 0u;
  *(v10 + 368) = 0u;
  *(v10 + 384) = 0u;
  *(v10 + 336) = 0u;
  *(v10 + 352) = 0u;
  *(v10 + 304) = 0u;
  *(v10 + 320) = 0u;
  *(v10 + 272) = 0u;
  *(v10 + 288) = 0u;
  *(v10 + 240) = 0u;
  *(v10 + 256) = 0u;
  *(v10 + 208) = 0u;
  *(v10 + 224) = 0u;
  *(v10 + 176) = 0u;
  *(v10 + 192) = 0u;
  *(v10 + 144) = 0u;
  *(v10 + 160) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 128) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 494) = 0u;
  memcpy((v10 + 510), __src, 0x118uLL);
  memcpy((v10 + 790), v53, 0x118uLL);
  memcpy((v10 + 1070), v52, 0x118uLL);
  v11 = *&__src[7812];
  *(v10 + 1446) = *&__src[7810];
  *(v10 + 1462) = v11;
  *(v10 + 1478) = __src[7814];
  v12 = *&__src[7804];
  *(v10 + 1382) = *&__src[7802];
  *(v10 + 1398) = v12;
  v13 = *&__src[7808];
  *(v10 + 1414) = *&__src[7806];
  *(v10 + 1430) = v13;
  v14 = *&__src[7800];
  *(v10 + 1350) = *&__src[7798];
  *(v10 + 1366) = v14;
  *(v10 + 1598) = 0;
  *(v10 + 1566) = 0u;
  *(v10 + 1582) = 0u;
  *(v10 + 1534) = 0u;
  *(v10 + 1550) = 0u;
  *(v10 + 1502) = 0u;
  *(v10 + 1518) = 0u;
  *(v10 + 1486) = 0u;
  *(v10 + 1600) = 1;
  *(v10 + 1601) = 0u;
  *(v10 + 1617) = 0u;
  *(v10 + 1633) = 0u;
  *(v10 + 1649) = 0u;
  *(v10 + 1665) = 0u;
  *(v10 + 1681) = 0u;
  *(v10 + 1697) = 0u;
  *(v10 + 1713) = 0u;
  *(v10 + 1729) = 0u;
  *(v10 + 1745) = 0u;
  *(v10 + 1761) = 0u;
  *(v10 + 1777) = 0u;
  *(v10 + 1793) = 0u;
  *(v10 + 1809) = 0u;
  *(v10 + 1825) = 0u;
  *(v10 + 1841) = 0u;
  *(v10 + 1857) = 0u;
  *(v10 + 1873) = 0u;
  *(v10 + 1889) = 0;
  bzero(__src, 0x93C0uLL);
  for (i = 0; i != 4728; i += 24)
  {
    v16 = &__src[i];
    *(v16 + 175) = 0uLL;
    v16[9] = 0uLL;
    v16[10] = 0uLL;
    v16[7] = 0uLL;
    v16[8] = 0uLL;
    v16[5] = 0uLL;
    v16[6] = 0uLL;
    v16[3] = 0uLL;
    v16[4] = 0uLL;
    v16[1] = 0uLL;
    v16[2] = 0uLL;
    *v16 = 0uLL;
  }

  memset(&__src[4728], 0, 24);
  memcpy(*(v1 + 88), __src, 0x93D8uLL);
  bzero(__src, 0x2E30uLL);
  v17 = 0x1FFFFFFFFFFFFC80;
  do
  {
    v18 = &__src[v17];
    v18[901] = 0;
    *(v18 + 7220) = 0;
    *(v18 + 3608) = 0;
    v18[907] = 0;
    *(v18 + 452) = 0uLL;
    *(&__src[v17 + 905] + 6) = 0;
    v17 += 7;
  }

  while (v17 * 8);
  v19 = &__src[905];
  v20 = 4608;
  do
  {
    *(v19 - 2) = 0;
    *(v19 - 3) = 0;
    *(v19 - 2) = 0;
    *(v19 - 4) = 0;
    *(v19 - 11) = 0;
    v19 = (v19 + 36);
    v20 -= 36;
  }

  while (v20);
  LOWORD(__src[1477]) = 0;
  HIDWORD(__src[1477]) = 0;
  memcpy(*(v1 + 16), __src, 0x2E30uLL);
  bzero(__src, 0x3E00uLL);
  v21 = -15872;
  do
  {
    v22 = (__src + v21);
    v22[998] = 0uLL;
    v22[997] = 0uLL;
    v22[996] = 0uLL;
    v22[995] = 0uLL;
    v22[994] = 0uLL;
    v22[993] = 0uLL;
    v22[992] = 0uLL;
    *(&__src[1997] + v21 + 1) = 0uLL;
    v21 += 124;
  }

  while (v21);
  memset(&__src[1984], 0, 28);
  memcpy(*(v1 + 24), __src, 0x3E1CuLL);
  bzero(__src, 0xF3B0uLL);
  for (j = 120; j != 3832; j += 116)
  {
    v24 = __src + j;
    *(v24 + 111) = 0;
    *(v24 + 5) = 0uLL;
    *(v24 + 6) = 0uLL;
    *(v24 + 3) = 0uLL;
    *(v24 + 4) = 0uLL;
    *(v24 + 1) = 0uLL;
    *(v24 + 2) = 0uLL;
    *v24 = 0uLL;
  }

  do
  {
    v25 = __src + j;
    *(v25 + 111) = 0;
    *(v25 + 5) = 0uLL;
    *(v25 + 6) = 0uLL;
    *(v25 + 3) = 0uLL;
    *(v25 + 4) = 0uLL;
    *(v25 + 1) = 0uLL;
    *(v25 + 2) = 0uLL;
    j += 116;
    *v25 = 0uLL;
  }

  while (j != 7544);
  bzero(&__src[943], 0x5A6uLL);
  memset(&__src[1124], 0, 34);
  memset(&__src[1129], 0, 120);
  v26 = -1160;
  do
  {
    v27 = &__src[1289] + v26;
    *(v27 + 111) = 0;
    *(v27 + 5) = 0uLL;
    *(v27 + 6) = 0uLL;
    *(v27 + 3) = 0uLL;
    *(v27 + 4) = 0uLL;
    *(v27 + 1) = 0uLL;
    *(v27 + 2) = 0uLL;
    *v27 = 0uLL;
    v26 += 116;
  }

  while (v26);
  v28 = -1160;
  do
  {
    v29 = (__src + v28);
    v29[723] = 0uLL;
    v29[722] = 0uLL;
    v29[721] = 0uLL;
    v29[720] = 0uLL;
    v29[719] = 0uLL;
    v29[718] = 0uLL;
    v29[717] = 0uLL;
    *(&__src[1447] + v28 + 7) = 0;
    v28 += 116;
  }

  while (v28);
  v30 = 0x1FFFFFFFFFFFFF40;
  memset(&__src[1434], 0, 456);
  do
  {
    v31 = &__src[v30 + 1683];
    *(v31 + 46) = 0uLL;
    v31[1] = 0uLL;
    v31[2] = 0uLL;
    *v31 = 0uLL;
    v30 += 8;
  }

  while (v30 * 8);
  v32 = -2784;
  do
  {
    v33 = &__src[2031] + v32;
    *(v33 + 111) = 0;
    *(v33 + 5) = 0uLL;
    *(v33 + 6) = 0uLL;
    *(v33 + 3) = 0uLL;
    *(v33 + 4) = 0uLL;
    *(v33 + 1) = 0uLL;
    *(v33 + 2) = 0uLL;
    *v33 = 0uLL;
    v32 += 116;
  }

  while (v32);
  v34 = (&__src[2032] + 4);
  v35 = 864;
  do
  {
    *(v34 - 12) = 0;
    *(v34 - 2) = 0;
    v34[1] = 0;
    v34[2] = 0;
    *v34 = 0;
    v34 = (v34 + 36);
    v35 -= 36;
  }

  while (v35);
  __src[2139] = 0;
  LOWORD(__src[2140]) = 0;
  HIDWORD(__src[2140]) = 0;
  LOBYTE(__src[2141]) = 0;
  HIDWORD(__src[2141]) = 0;
  LOBYTE(__src[2142]) = 0;
  memset(&__src[2143], 0, 49);
  bzero(&__src[2150], 0x1ABCuLL);
  for (k = 0; k != 1296; k += 36)
  {
    v37 = &__src[3005] + k + 4;
    *(v37 + 31) = 0;
    *v37 = 0uLL;
    *(v37 + 1) = 0uLL;
  }

  *(&__src[3168] + 2) = 0;
  *(&__src[3167] + 4) = 0;
  memset(&__src[3170], 0, 30);
  memset(&__src[3174], 0, 120);
  v38 = &__src[3189];
  v39 = 9576;
  do
  {
    *v38 = 0;
    v38[1] = 0;
    *(v38 + 8) = 0;
    *(v38 + 20) = 0uLL;
    *(v38 + 36) = 0uLL;
    *(v38 + 52) = 0uLL;
    *(v38 + 68) = 0uLL;
    *(v38 + 82) = 0uLL;
    *(v38 + 100) = 0uLL;
    *(v38 + 116) = 0uLL;
    *(v38 + 132) = 0uLL;
    v38 += 19;
    v39 -= 152;
  }

  while (v39);
  v40 = &__src[4386];
  v41 = 9576;
  do
  {
    *v40 = 0;
    v40[1] = 0;
    *(v40 + 8) = 0;
    *(v40 + 20) = 0uLL;
    *(v40 + 36) = 0uLL;
    *(v40 + 52) = 0uLL;
    *(v40 + 68) = 0uLL;
    *(v40 + 82) = 0uLL;
    *(v40 + 100) = 0uLL;
    *(v40 + 116) = 0uLL;
    *(v40 + 132) = 0uLL;
    v40 += 19;
    v41 -= 152;
  }

  while (v41);
  for (m = 0; m != 2772; m += 44)
  {
    v43 = (&__src[5583] + m);
    *(v43 + 27) = 0uLL;
    *v43 = 0uLL;
    v43[1] = 0uLL;
  }

  *(&__src[5929] + 4) = 0;
  WORD2(__src[5930]) = 0;
  WORD2(__src[5932]) = 0;
  __src[5931] = 0;
  *(&__src[5931] + 7) = 0;
  __src[5933] = 0;
  LOWORD(__src[5934]) = 0;
  LOWORD(__src[5936]) = 0;
  *(&__src[5934] + 4) = 0;
  *(&__src[5935] + 3) = 0;
  __src[5937] = 0;
  LOWORD(__src[5938]) = 0;
  *(&__src[5938] + 4) = 0u;
  *(&__src[5940] + 4) = 0u;
  *(&__src[5942] + 2) = 0;
  bzero(&__src[5943] + 4, 0x8E4uLL);
  for (n = 0; n != 728; n += 52)
  {
    v45 = &__src[6229] + n + 6;
    *(v45 - 1) = 0;
    *(&__src[6229] + n + 6) = 0;
    *(v45 + 1) = 0;
    *(v45 + 6) = 0;
    *(v45 + 5) = 0;
    *(v45 - 14) = 0;
    *(v45 - 7) = 0;
    *(v45 + 22) = 0;
    *(v45 + 14) = 0;
    *(v45 + 27) = 0;
  }

  *(&__src[6320] + 6) = 0;
  __src[6319] = 0;
  *(&__src[6319] + 5) = 0;
  memset(&__src[6322], 0, 38);
  __src[7797] = 0;
  bzero(&__src[6327], 0x2DEDuLL);
  memcpy(*(v1 + 56), __src, 0xF3B0uLL);
  memset(v53, 0, 24);
  memset(v52, 0, 24);
  memset(__src, 0, 30);
  v46 = *(v1 + 80);
  *v46 = 0;
  *(v46 + 8) = 0;
  *(v46 + 13) = 0;
  *(v46 + 24) = 0x500000002;
  *(v46 + 32) = *__src;
  *(v46 + 46) = *(&__src[1] + 6);
  bzero((v46 + 62), 0xEBCuLL);
  *(v46 + 3834) = *v53;
  *(v46 + 3850) = *&v53[16];
  *(v46 + 3858) = *v52;
  *(v46 + 3874) = *&v52[16];
  memset(v53, 0, 35);
  memset(v52, 0, 27);
  LOWORD(__src[0]) = 0;
  BYTE2(__src[0]) = 0;
  bzero(__src + 3, 0x2700uLL);
  v47 = *(v1 + 96);
  v48 = *&v53[16];
  *(v47 + 26) = *v53;
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v47 + 24) = 0;
  *(v47 + 16) = 0;
  *(v47 + 42) = v48;
  *(v47 + 57) = *&v53[31];
  *(v47 + 61) = 0;
  *(v47 + 62) = 0;
  *(v47 + 66) = *v52;
  *(v47 + 77) = *&v52[11];
  memcpy((v47 + 93), __src, 0x2703uLL);
  bzero(*(v1 + 104), 0xD7D8uLL);
  bzero(*(v1 + 232), 0x18E0uLL);
  v49 = *(v1 + 240);

  bzero(v49, 0x878uLL);
}

uint64_t GNSS_HL_Data_Bases_Init(void *a1)
{
  *(a1[1] + 16) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  Init_DB_SV_Nav_Mess(a1[7]);
  v2 = a1[1];
  v3 = a1[6];
  *v3 = 0;
  *(v3 + 4) = 0;
  *(v3 + 16) = 0;
  v4 = *(v2 + 16);
  *(v3 + 24) = *v2;
  *(v3 + 28) = v4;
  *(v3 + 8) = *(v2 + 24);
  *(v3 + 32) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *(v3 + 68) = -1;
  *(v3 + 64) = -1;
  *(v3 + 82) = 0;
  *(v3 + 108) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 70) = 0;
  *(v3 + 77) = 0;
  *(v3 + 128) = *v2;
  Init_DB_SV_AzEl(a1[4]);
  Init_DB_Sys_Status(a1[9]);
  Init_DB_Nav_Soln(a1[6], a1[9], a1[10]);
  Init_DB_Acq_Aid_Table(a1[10], a1[7], a1[5]);
  v5 = a1[13];

  return Init_DB_Sensor(v5);
}

uint64_t GNSS_HL_Data_Bases_Init_NV(void *a1)
{
  *(a1[1] + 16) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  Init_DB_SV_Nav_Mess_NV(a1[7]);
  Init_DB_Time_Sync_NV(a1[1], a1[6], a1[2]);
  Init_DB_SV_AzEl(a1[4]);
  Init_DB_Sys_Status_NV(a1[6], a1[9]);
  Init_DB_Nav_Soln(a1[6], a1[9], a1[10]);
  Init_DB_Acq_Aid_Table(a1[10], a1[7], a1[5]);
  v2 = a1[13];

  return Init_DB_Sensor(v2);
}

double GNSS_HL_Data_Bases_TimeSynch(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  v4 = a1[1];
  v5 = a1[10];
  if (v3[6])
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBts TTick not 0");
  }

  if (!v3[7])
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBts OS_Time_ms = 0");
  }

  if (!*v4)
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBtt TTick = 0");
  }

  v6 = v4[4];
  if (!v6)
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBtt OS_Time_ms = 0");
    v6 = v4[4];
  }

  v7 = v3[7];
  if (v6 < v7)
  {
    EvLog_nd("GNSS_HL_Data_Bases_TimeSynch: WARNING - DBtt behind DBts", 2, a3, v6, v7);
    v7 = v3[7];
  }

  v8 = v3[6];
  v9 = *(v3 + 1);
  v10 = *v3;
  if (v10 < 1)
  {
    v12 = *v4;
    v11 = v4[4];
    v13 = v12;
  }

  else
  {
    v11 = v4[4];
    v12 = *v4;
    v13 = (v7 - v11 + v12);
  }

  v3[6] = v13;
  v3[7] = v11;
  v14 = *(v4 + 3);
  *(v3 + 1) = v14;
  EvLog_v("GNSS_HL_Data_Bases_TimeSynch: DBts %d %g %u %u %U  orig %u %u %U  DBns %u %u %U  DBtt %u %u %u %U", v10, *(v3 + 5), v13, v11, v14, v8, v7, v9, *(v5 + 32), *(v5 + 36), *(v5 + 40), v12, v11, v14, v4[3], v16);
  if (!*(v5 + 32))
  {
    result = *(v3 + 3);
    *(v5 + 32) = result;
    *(v5 + 40) = *(v3 + 1);
  }

  return result;
}

void GM_Set_MSec_TOW_NSSS(uint64_t a1, uint64_t a2, double *a3, int *a4, double a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(a2 + 4) == 1)
  {
    v9 = *(a1 + 16);
    *v19 = *a1;
    v20 = v9;
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
    GM_Aid_NSSS_Meas(a2, 0, v19);
    v10 = *a3;
    v11 = vcvtd_n_f64_u32(*(a2 + 16), 1uLL) + Comp_Sig_TOT(*v19, *&v19[2], v19[4], *a3, a5) * 1000.0;
    v12 = -0.5;
    if (v11 <= 0.0)
    {
      v13 = -0.5;
    }

    else
    {
      v13 = 0.5;
    }

    v14 = v11 + v13;
    if (v14 <= 2147483650.0)
    {
      if (v14 >= -2147483650.0)
      {
        v15 = v14 * 0.001;
      }

      else
      {
        v15 = -2147483.65;
      }
    }

    else
    {
      v15 = 2147483.65;
    }

    v16 = (v15 - v10) * 1000.0;
    if (v16 > 0.0)
    {
      v12 = 0.5;
    }

    v17 = v16 + v12;
    if (v17 <= 2147483650.0)
    {
      if (v17 >= -2147483650.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x80000000;
      }
    }

    else
    {
      v18 = 0x7FFFFFFF;
    }

    *a4 = v18;
    *a3 = v15;
  }
}

double SV_Data_Decode_Update_Wrapper(const void **a1)
{
  GNSS_Validate_p_list(a1, "SV_Data_Decode_Update_Wrapper: Entry");
  SV_Data_Decode(a1[18], a1[23], a1[3], a1[9], a1[4], a1[6], a1[7], a1[8]);

  return GNSS_Validate_p_list(a1, "SV_Data_Decode_Update_Wrapper:  Exit");
}

void gnssTest::GnssAdaptDeviceTest::~GnssAdaptDeviceTest(gnssTest::GnssAdaptDeviceTest *this)
{
  v9 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F2A1B8;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Destructor\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 73, "~GnssAdaptDeviceTest");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](this + 24);
}

{

  gnssTest::GnssAdaptDeviceTest::~GnssAdaptDeviceTest(this);
}

{
  gnssTest::GnssAdaptDeviceTest::~GnssAdaptDeviceTest(this);

  JUMPOUT(0x29C296280);
}

void sub_298FB5EFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void gnssTest::GnssAdaptDeviceTest::periodic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {

    std::function<void ()(gnss::Result)>::operator()(a4, 7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "periodic", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void gnssTest::GnssAdaptDeviceTest::recordIQ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {

    std::function<void ()(gnss::Result)>::operator()(a5, 7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "recordIQ", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void gnssTest::GnssAdaptDeviceTest::commLoopback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {

    std::function<void ()(gnss::Result)>::operator()(a5, 7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "commLoopback", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void gnssTest::GnssAdaptDeviceTest::cw(uint64_t a1, int a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v21 = *MEMORY[0x29EDCA608];
  if (*(a7 + 24))
  {
    v14 = *(a1 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest2cwEiN4gnss4BandENS_7SubbandEdiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_5;
    block[4] = a1;
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](v17, a6);
    v19 = a3;
    v18[8] = a2;
    v18[9] = a4;
    *&v17[4] = a8;
    v18[10] = a5;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, a7);
    dispatch_async(v14, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v17);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "cw", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest2cwEiN4gnss4BandENS_7SubbandEdiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (*(a1 + 64))
  {
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](v8, a1 + 40);
    v3 = v2 + 24;
    if (v8 != (v2 + 24))
    {
      v4 = v9;
      v5 = *(v2 + 48);
      if (v9 == v8)
      {
        if (v5 == v3)
        {
          (*(*v9 + 24))();
          (*(*v9 + 32))(v9);
          v9 = 0;
          (*(**(v2 + 48) + 24))(*(v2 + 48), v8);
          (*(**(v2 + 48) + 32))(*(v2 + 48));
          *(v2 + 48) = 0;
          v9 = v8;
          (*(v10[0] + 24))(v10, v2 + 24);
          (*(v10[0] + 32))(v10);
        }

        else
        {
          (*(*v9 + 24))();
          (*(*v9 + 32))(v9);
          v9 = *(v2 + 48);
        }

        *(v2 + 48) = v3;
      }

      else if (v5 == v3)
      {
        (*(*v5 + 24))(*(v2 + 48), v8);
        (*(**(v2 + 48) + 32))(*(v2 + 48));
        *(v2 + 48) = v9;
        v9 = v8;
      }

      else
      {
        v9 = *(v2 + 48);
        *(v2 + 48) = v4;
      }
    }

    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v8);
  }

  if (HalFactory_RunCWTest(*(a1 + 112), *(a1 + 124), *(a1 + 72), *(a1 + 116), *(a1 + 120), v2))
  {
    v6 = 1;
  }

  else
  {
    v6 = 8;
  }

  return std::function<void ()(gnss::Result)>::operator()(a1 + 80, v6);
}

void sub_298FB6794(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c84_ZTSNSt3__18functionIFvNS_6vectorIN8gnssTest13RfMeasurementENS_9allocatorIS3_EEEEEEE80c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 80);

  return std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnssTest::GnssAdaptDeviceTest::modulated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a7 + 24))
  {

    std::function<void ()(gnss::Result)>::operator()(a7, 7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "modulated", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void gnssTest::GnssAdaptDeviceTest::powerMode(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a1 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest9powerModeENS_9PowerModeENSt3__18functionIFvN4gnss6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_5_0;
    v6[8] = a2;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "powerMode", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest9powerModeENS_9PowerModeENSt3__18functionIFvN4gnss6ResultEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if ((v2 - 1) >= 3)
  {
    v3 = v2 == 4;
  }

  else
  {
    std::function<void ()(gnss::Result)>::operator()(a1 + 32, 7);
    v3 = 0;
  }

  if (HalFactory_PowerMode(v3))
  {
    v4 = 1;
  }

  else
  {
    v4 = 8;
  }

  return std::function<void ()(gnss::Result)>::operator()(a1 + 32, v4);
}

void gnssTest::GnssAdaptDeviceTest::apSignalGpio(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {

    std::function<void ()(gnss::Result)>::operator()(a3, 7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "apSignalGpio", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void gnssTest::GnssAdaptDeviceTest::timeMarkGpio(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a1 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest12timeMarkGpioEiNSt3__18functionIFvN4gnss6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_8_0;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "timeMarkGpio", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest12timeMarkGpioEiNSt3__18functionIFvN4gnss6ResultEEEE_block_invoke(uint64_t a1)
{
  if (HalFactory_TriggerTSync())
  {
    v2 = 1;
  }

  else
  {
    v2 = 8;
  }

  return std::function<void ()(gnss::Result)>::operator()(a1 + 32, v2);
}

void gnssTest::GnssAdaptDeviceTest::commPing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v5 = *(a1 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest8commPingEiNSt3__18functionIFvRKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEESA_EEENS2_IFvN4gnss6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_10;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a4);
    std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](v9, a3);
    dispatch_async(v5, block);
    std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v9);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "commPing", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN8gnssTest19GnssAdaptDeviceTest8commPingEiNSt3__18functionIFvRKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEESA_EEENS2_IFvN4gnss6ResultEEEE_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  if (HalFactory_ComsPing(v5))
  {
    std::function<void ()(gnss::Result)>::operator()(a1 + 32, 1);
    v4 = 2;
    strcpy(__p, "NA");
    v2 = *(a1 + 88);
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v2 + 48))(v2, v5, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::function<void ()(gnss::Result)>::operator()(a1 + 32, 8);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_298FB70E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_32c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE64c89_ZTSNSt3__18functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEE(uint64_t a1)
{
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](a1 + 64);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 32);
}

void gnssTest::GnssAdaptDeviceTest::setNmeaHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {

    std::function<void ()(gnss::Result)>::operator()(a4, 7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setNmeaHandler", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void gnssTest::GnssAdaptDeviceTest::setConfigTestContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {

    std::function<void ()(gnss::Result)>::operator()(a3, 7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "setConfigTestContext", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

uint64_t newGnssDeviceTest(uint64_t *a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    operator new();
  }

  return 0;
}

void sub_298FB764C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  if (v14)
  {
    (*(*v14 + 8))(v14, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  if (a11.n128_u64[1])
  {
    (*(*a11.n128_u64[1] + 8))(a11.n128_u64[1], a2, a3, a4, a5, a6, a7, a8);
  }

  if (a11.n128_u64[0])
  {
    (*(*a11.n128_u64[0] + 8))(a11.n128_u64[0], a2, a3, a4, a5, a6, a7, a8, a11, a10);
  }

  if (a12.n128_u64[1])
  {
    (*(*a12.n128_u64[1] + 8))(a12.n128_u64[1], a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12.n128_u64[0])
  {
    (*(*a12.n128_u64[0] + 8))(a12.n128_u64[0], a2, a3, a4, a5, a6, a7, a8, a12, a10);
  }

  MEMORY[0x29C296280](v12, v13, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void GM_Cross_Check_Meas_Aiding(uint64_t a1)
{
  v2 = 0;
  v50 = a1 + 0x4000;
  v3 = -4608;
  v4 = 11796;
  v5 = 18012;
  v6 = 11792;
  v7 = 11806;
  v8 = 11828;
  do
  {
    if (*(a1 + v4) != 1)
    {
      goto LABEL_56;
    }

    if (*(a1 + v5) < 10)
    {
      goto LABEL_56;
    }

    v9 = *(a1 + v7);
    if (v9 < 2)
    {
      goto LABEL_56;
    }

    v10 = a1 + v3;
    v11 = *(a1 + v3 + 4616);
    if ((~v11 & 0x300) == 0)
    {
      v12 = 1;
      v13 = 1;
      goto LABEL_12;
    }

    if ((v11 & 0x200) != 0)
    {
      v13 = 1;
LABEL_11:
      v12 = 3;
LABEL_12:
      if (v9 == 2)
      {
        v14 = v12 + 2;
      }

      else
      {
        v14 = v12;
      }

      goto LABEL_15;
    }

    v13 = 0;
    if ((v11 & 0x100) != 0)
    {
      goto LABEL_11;
    }

    v14 = 0x7FFF;
LABEL_15:
    v15 = a1 + v6;
    v16 = a1 + v2;
    if (v13)
    {
      v17 = *(v16 + 4608) - *(v15 + 28);
      v18 = v17 + 57600 * ((28800 - v17) / 0xE100u);
      if (v17 > -28801)
      {
        v18 = *(v16 + 4608) - *(v15 + 28);
      }

      if (v17 >= 28800)
      {
        v19 = (v17 + 28800) % 0xE100u - 28800;
      }

      else
      {
        v19 = v18;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + v8);
    v21 = *(v15 + 32) - *(v50 + 1624);
    v22 = *(v16 + 4616);
    v48 = *(v16 + 4612);
    v49 = v21;
    v23 = v48 - v21;
    v24 = __OFSUB__(v22, v20);
    v26 = v22 - v20;
    v25 = (v26 < 0) ^ v24 | (v26 == 0);
    if (v26 >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = -v26;
    }

    v28 = (655421 * (v27 + 3276)) >> 32;
    v29 = v28 & (v26 >> 31);
    if (v25)
    {
      v30 = -v29;
    }

    else
    {
      v30 = v28;
    }

    v31 = v30 + 10 * v23 + 15345000 * v19;
    if (v31 < 0)
    {
      v32 = -5115;
    }

    else
    {
      v32 = 5115;
    }

    v33 = (v32 + v31) / 10230;
    v47 = v13;
    if (!v13)
    {
      v33 %= 20;
    }

    v34 = v31 % 10230;
    v35 = v34 + 10230;
    if (v34 >= -5114)
    {
      v35 = v34;
    }

    if (v34 <= 5115)
    {
      v36 = v35;
    }

    else
    {
      v36 = v34 - 10230;
    }

    v37 = v33 + 20;
    if (v33 >= -9)
    {
      v37 = v33;
    }

    if (v33 <= 10)
    {
      v38 = v37;
    }

    else
    {
      v38 = v33 - 20;
    }

    if (v36 >= 0)
    {
      v39 = v36;
    }

    else
    {
      v39 = -v36;
    }

    if (v39 > *(a1 + v8 - 10))
    {
      v46 = v14;
      v45 = *(a1 + v8 - 10);
      GNSS_SV_Str = Get_GNSS_SV_Str(*(v10 + 4608));
      EvLog_v("GMCCMA: PR MAX chips:  %s  dT %d  d_Chips %d (%d - %d)  SR %d", GNSS_SV_Str, *(v50 + 1592) - *(a1 + v6), v36, v48, v49, v45);
      v14 = v46;
      v10 = a1 + v3;
    }

    if (v38 >= 0)
    {
      v41 = v38;
    }

    else
    {
      v41 = -v38;
    }

    if (v41 > v14 && g_Logging_Cfg >= 4)
    {
      v43 = v14;
      v44 = Get_GNSS_SV_Str(*(v10 + 4608));
      EvLog_v("GMCCMA: PR MAX ms:  %s  dT %d  d_ms %d (%d - %d)chips  Unc_ms %d  SF_Sync %d", v44, *(v50 + 1592) - *(a1 + v6), v38, v48, v49, v43, v47);
    }

LABEL_56:
    v2 += 56;
    v5 += 4;
    v6 += 48;
    v7 += 48;
    v8 += 48;
    v4 += 48;
    v3 += 36;
  }

  while (v3);
}

void NK_SV_PR_LvsE_Check(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *&v51[2526] = *MEMORY[0x29EDCA608];
  v4 = a4 + 6771;
  v5 = a4[6771];
  if (v5 >= 2 && *(a3 + 20) <= 3u && *(a1 + 60) >= 5)
  {
    v9 = a4 + 36579;
    v10 = a4 + 21675;
    bzero(v49, 0xA00uLL);
    v11 = 0;
    do
    {
      v12 = &v49[v11];
      v11 += 20;
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 15) = 0;
    }

    while (v11 != 2560);
    v13 = 0;
    LODWORD(v14) = 0;
    v15 = 0;
    v16 = a4 + 7080;
    v17 = (a3 + 1944);
    v18 = (a2 + 98);
    v19 = -1024;
    do
    {
      if (v16[v13] == 1 && a4[v13 + 57] == 1)
      {
        v20 = *&v16[v19 + 6016];
        if (fabs(v20) < 2000.0)
        {
          v21 = &v49[20 * v14];
          *v21 = v13;
          v21[1] = *v18 + 1000 * *(v18 - 2);
          if (v20 <= 0.0)
          {
            v22 = -0.5;
          }

          else
          {
            v22 = 0.5;
          }

          v23 = v20 + v22;
          if (v23 <= 2147483650.0)
          {
            if (v23 >= -2147483650.0)
            {
              v24 = v23;
            }

            else
            {
              LOWORD(v24) = 0;
            }
          }

          else
          {
            LOWORD(v24) = -1;
          }

          v21[2] = v24;
          v21[3] = vcvtd_n_s64_f64(*v17, 0xCuLL);
          v21[4] = vcvtd_n_s64_f64(v17[640], 0xCuLL);
          LODWORD(v14) = v14 + 1;
          v25 = *&v49[20 * v14 + 4];
          if (v25 < 0)
          {
            v25 = -v25;
          }

          if (v25 < 0x64)
          {
            ++v15;
          }
        }
      }

      ++v13;
      v17 += 5;
      v18 += 4;
      v19 += 8;
    }

    while (v19);
    if (v14 >= 2 && v15 >= v14 >> 1)
    {
      v26 = 0;
      v27 = v51;
      v28 = 1;
      v14 = v14;
      do
      {
        v29 = v26 + 1;
        if (v26 + 1 < v14)
        {
          v30 = &v49[20 * v26];
          v31 = v30[1];
          v32 = v27;
          v33 = v28;
          do
          {
            if (v31 != *(v32 - 6))
            {
              v34 = v30[3] - *(v32 - 4);
              v35 = v30[4] - *(v32 - 3);
              if (v35 > 12867)
              {
                v35 -= 25734;
              }

              if (v35 < -12866)
              {
                v35 += 25734;
              }

              if (v34 >= 0)
              {
                v36 = v30[3] - *(v32 - 4);
              }

              else
              {
                v36 = *(v32 - 4) - v30[3];
              }

              if (v35 >= 0)
              {
                v37 = v35;
              }

              else
              {
                v37 = -v35;
              }

              if (v36 <= 0x9C6 && v37 <= 0x9C6)
              {
                v38 = ((v30[2] - *(v32 - 5)) * (((4096 - ((v35 / 2 * (v35 / 2)) >> 13)) * (4096 - ((v34 / 2 * (v34 / 2)) >> 13))) >> 12)) >> 12;
                v30[7] += v38;
                ++v30[5];
                *v32 -= v38;
                ++*(v32 - 2);
                v39 = v26;
                if (v38 < -100 || (v39 = v33, v38 >= 101))
                {
                  ++*&v49[20 * v39 + 12];
                }
              }
            }

            ++v33;
            v32 += 10;
          }

          while (v14 != v33);
        }

        ++v28;
        v27 += 20;
        ++v26;
      }

      while (v29 != v14);
      v40 = 0;
      v41 = v50;
      v42 = v14;
      do
      {
        v43 = *(v41 - 4);
        if (*(v41 - 4))
        {
          v44 = *(v41 - 2) / v43;
          *(v41 - 1) = v44;
          if (v43 < 2 * *(v41 - 3) || v43 >= 3 && v44 <= -61)
          {
            *v41 = 1;
            ++v40;
          }
        }

        v41 += 20;
        --v42;
      }

      while (v42);
      if (v5 <= 2 * v40)
      {
        EvCrt_v("NK_SV_PR_Lvs_E_Check:  Warning:  Too many PR's look Late, %d out of %d, ignoring", v40, v5);
      }

      else
      {
        v45 = a4 + 21984;
        v46 = a4 + 36888;
        v47 = v50;
        do
        {
          if (*(v47 - 4) && *v47 == 1)
          {
            v48 = *(v47 - 9);
            v16[v48] = 0;
            *&a4[4 * v48 + 7336] = 1;
            ++v4[1];
            *v4 = --v5;
            if (v45[v48] == 1)
            {
              v45[v48] = 0;
              *&a4[4 * v48 + 22240] = 1;
              --*v10;
              ++v10[1];
            }

            if (v46[v48] == 1)
            {
              v46[v48] = 0;
              *&a4[4 * v48 + 37144] = 1;
              --*v9;
              ++v9[1];
            }
          }

          v47 += 20;
          --v14;
        }

        while (v14);
      }
    }
  }
}

uint64_t GLON_Calc_State_Table_Eph(__int16 a1, __int16 a2, int a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v33 = *MEMORY[0x29EDCA608];
  v9 = *(a4 + 12) / 900;
  if (*(a5 + 176) == 1 && *(a5 + 166) == v9)
  {
    v10 = *(a5 + 168);
  }

  else
  {
    *(a5 + 175) = 0u;
    *(a5 + 144) = 0u;
    *(a5 + 160) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    *a5 = *(a4 + 24);
    *(a5 + 8) = *(a4 + 48);
    *(a5 + 16) = *(a4 + 72);
    *(a5 + 24) = *(a4 + 32);
    *(a5 + 32) = *(a4 + 56);
    *(a5 + 40) = *(a4 + 80);
    *(a5 + 48) = *(a4 + 40);
    *(a5 + 56) = *(a4 + 64);
    *(a5 + 64) = *(a4 + 88);
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    *(a5 + 72) = 0;
    v10 = *(a4 + 12);
    *(a5 + 168) = v10;
    *(a5 + 172) = *(a4 + 126);
    *(a5 + 166) = v9;
    v11 = *(a4 + 4);
    *(a5 + 176) = 1;
    *(a5 + 180) = v11;
    *(a5 + 184) = 2;
    *(a5 + 188) = *(a4 + 20);
    *(a5 + 112) = gloURA_table[*(a4 + 125)];
  }

  v12 = 0;
  *v28 = 0;
  v29 = 0.0;
  v30[0] = a5;
  v30[1] = (a5 + 24);
  v31 = (a5 + 48);
  v32 = v10;
  v27 = 0.0;
  do
  {
    v13 = a3 - v32 + 86400;
    if (a3 - v32 >= -43200)
    {
      v13 = a3 - v32;
    }

    if (a3 - v32 <= 43199)
    {
      v14 = v13;
    }

    else
    {
      v14 = a3 - v32 - 86400;
    }

    if (v14 <= -120)
    {
      v15 = -120;
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 120)
    {
      v16 = 120;
    }

    else
    {
      v16 = v15;
    }

    *(a5 + 48) = *(a4 + 40);
    *(a5 + 56) = *(a4 + 64);
    *(a5 + 64) = *(a4 + 88);
    if (v14)
    {
      GLON_RungeKutta4(v30, v16);
      ++v12;
    }

    else
    {
      GLON_RK_CalcAccel(v30, v31);
    }

    if (v16 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = -v16;
    }
  }

  while (v17 > 0x3C);
  *a6 += v12;
  *(a5 + 168) = a3;
  *(a5 + 172) = a2;
  *(a5 + 174) = a1;
  API_Get_UTC_Cor(1, &v29);
  result = Glon_To_GPS_Time(*(a5 + 174), *(a5 + 172), *(a5 + 168), v29, &v28[1], v28, &v27);
  *(a5 + 160) = v27;
  *(a5 + 164) = LOWORD(v28[0]) + (LOWORD(v28[1]) << 10);
  v19 = a3 - *(a4 + 12);
  v20 = v19 + 86400;
  if (v19 >= -43200)
  {
    v20 = a3 - *(a4 + 12);
  }

  if (v19 <= 43199)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19 - 86400;
  }

  v22 = *(a4 + 104);
  *(a5 + 96) = -(*(a4 + 96) + v22 * v21);
  if ((v21 & 0x80000000) != 0)
  {
    v21 = -v21;
  }

  if (v21 >= 0x385)
  {
    v23 = v21 * 0.000277777778 * (v21 * 0.000277777778 * (v21 * 0.000277777778)) * 7.33333333 + v21 * 0.000277777778 * (v21 * 0.000277777778) * -2.0;
    *(a5 + 112) = gloURA_table[*(a4 + 125)] + v23 * v23;
  }

  *(a5 + 104) = v22;
  return result;
}

uint64_t NK_Set_TOW_Status(uint64_t result, uint64_t a2)
{
  if (*(a2 + 60000) != 1 || (v2 = *(a2 + 60040), v2 > 900.0) || *(result + 27136) || *(a2 + 6771) || *(result + 136) != 1)
  {
    v7 = *(a2 + 61528);
    if (v7 >= *(a2 + 61536))
    {
      v7 = *(a2 + 61536);
    }

    v8 = *(a2 + 61544);
    if (v7 < v8)
    {
      v8 = v7;
    }

    v9 = *(result + 27136);
    if (v9 || (v10 = 0.0, *(a2 + 20) >= 9))
    {
      v10 = v8 * 1.11265006e-17;
    }

    if ((*(a2 + 24) & 1) == 0)
    {
      v10 = v10 + *(a2 + 61568) * 0.000001;
    }

    v11 = sqrt(v10);
    if (v11 <= 200.0)
    {
      v14 = v11 * 1000000.0;
      v15 = -0.5;
      if (v14 > 0.0)
      {
        v15 = 0.5;
      }

      v16 = v14 + v15;
      if (v16 <= 2147483650.0)
      {
        if (v16 >= -2147483650.0)
        {
          v13 = v16;
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

      v17 = 11;
      while (g_TOW_Stat_Upgrade_us_Sigma_Table[v17] < v13)
      {
        if (--v17 <= 1u)
        {
          v12 = 1;
          goto LABEL_33;
        }
      }

      v12 = v17;
    }

    else
    {
      v12 = 0;
      v13 = 0x7FFFFFFF;
    }

LABEL_33:
    v18 = *(a2 + 20);
    if (v18 < v12)
    {
      v19 = *(a2 + 60072) == 1 && *(a2 + 60112) < 900000000.0;
      if (v12 == 11)
      {
        if ((*(result + 136) & 1) != 0 || *(a2 + 62096) > 30000.0 && !v19)
        {
          v12 = 9;
        }

        else
        {
          v12 = 11;
        }
      }

      *(a2 + 20) = v12;
      v18 = v12;
    }

    if (v9 && (*(result + 136) & 1) == 0)
    {
      v20 = 1;
      while (g_TOW_Stat_Degrade_us_Sigma_Table[v20] >= v13)
      {
        if (++v20 == 12)
        {
          LODWORD(v20) = 0;
          break;
        }
      }

      if (v18 != 11 || v13 <= 1700)
      {
        v22 = 11;
      }

      else
      {
        v22 = 10;
      }

      if (v13 < 3001)
      {
        LODWORD(v20) = v22;
      }

      if (v18 > v20)
      {
        *(a2 + 20) = v20;
        v18 = v20;
      }
    }
  }

  else
  {
    *(a2 + 1542) = *(a2 + 59982);
    v3 = *(a2 + 59984);
    v4 = -0.5;
    if (v3 * 1000.0 > 0.0)
    {
      v4 = 0.5;
    }

    v5 = v3 * 1000.0 + v4;
    if (v5 <= 2147483650.0)
    {
      if (v5 >= -2147483650.0)
      {
        v6 = v5 * 0.001;
      }

      else
      {
        v6 = -2147483.65;
      }
    }

    else
    {
      v6 = 2147483.65;
    }

    *(a2 + 1528) = v6;
    if (*(a2 + 60072) == 1)
    {
      *(a2 + 1632) = v6 - v3;
      *(a2 + 62032) = fmin(sqrt(*(a2 + 60112)), 9999000.0);
    }

    *(a2 + 62040) = fmin(sqrt(v2) * 299792.458, 9999000.0);
    if (v2 <= 0.0225)
    {
      v18 = 11;
    }

    else if (v2 <= 0.5625)
    {
      v18 = 10;
    }

    else if (v2 <= 9.0)
    {
      v18 = 9;
    }

    else if (v2 <= 100.0)
    {
      v18 = 8;
    }

    else
    {
      v18 = 7;
    }

    *(a2 + 20) = v18;
  }

  *(a2 + 1536) = v18;
  return result;
}

void NK_Bit_Sync_Check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a2 + 241) & 1) == 0 && *(a3 + 20) == 11 && *(a3 + 62096) < 149896.229)
  {
    v7 = 0;
    v8 = (a3 + 6771);
    v9 = a3 + 12072;
    v10 = a3 + 7080;
    v18 = a2 + 14208;
    v11 = a4 + 576;
    v12 = a1 + 1760;
    do
    {
      if (*(v10 + v7) == 1 && (~*(a1 + 2 * v7 + 992) & 0x300) == 0 && fabs(*(v9 + 8 * v7)) > 149896.229 && *(a3 + v7 + 57) == 1)
      {
        *(v10 + v7) = 0;
        *(v10 + 4 * v7 + 256) = 13;
        --*v8;
        ++*(a3 + 6772);
        *(v18 + v7) = 0;
        *(a4 + v7 + 448) = 11;
        *(v11 + 4 * v7) = *a3;
        GNSS_SV_Str = Get_GNSS_SV_Str(*(a1 + 4 * v7 + 96));
        v14 = *(v9 + 8 * v7);
        if (v14 <= 0.0)
        {
          v15 = -0.5;
        }

        else
        {
          v15 = 0.5;
        }

        v16 = v14 + v15;
        if (v16 <= 2147483650.0)
        {
          if (v16 >= -2147483650.0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 0x80000000;
          }
        }

        else
        {
          v17 = 0x7FFFFFFF;
        }

        EvCrt_v("ChanReset %d : NKBSC  %s  Exact_SF_Sync   PR_Res %d  SNR %d", v7, GNSS_SV_Str, v17, *(v12 + v7));
      }

      ++v7;
    }

    while (v7 != 128);
  }
}

void NK_Comp_ith_PR_Res(unsigned int a1, int a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v74[1] = *MEMORY[0x29EDCA608];
  v22 = a7 + 4096;
  v23 = a5 + 4 * a1;
  v24 = a1;
  v27 = *(v23 + 96);
  v26 = (v23 + 96);
  v25 = v27;
  v28 = 1632;
  if (v27 == 4)
  {
    v28 = 1648;
  }

  v34 = v25 == 2;
  v29 = 1640;
  if (!v34)
  {
    v29 = v28;
  }

  v30 = *(a7 + v29);
  v31 = *(v26 + 1);
  v32 = v31 > 0xF;
  v33 = (1 << v31) & 0xDD77;
  v34 = v32 || v33 == 0;
  if (v34)
  {
    v30 = v30 + *(a7 + 1656);
  }

  v35 = a8 + (v30 - *(a3 + 56)) * 299792458.0;
  v36 = a7 + 51608;
  *(a7 + 51608 + 8 * a1) = v35;
  v37 = *(a3 + 72);
  v38 = a7 + 11048;
  *(a7 + 11048 + 8 * a1) = v37;
  if (*(a7 + 6769))
  {
    v39 = 0.0;
    v40 = 0.01;
  }

  else
  {
    v41 = *(a6 + 1712);
    v40 = 0.0;
    v39 = 0.0;
    if (v41 > 0.0)
    {
      v42 = *(a6 + 1704);
      if (v42 == 2)
      {
        v50 = a4;
        v51 = Trop_Elev_MapF(a4);
        a4 = v50;
        v39 = v41 * v51;
        v40 = v41 * v51 * 0.15;
      }

      else if (v42 == 1)
      {
        v43 = a4[4];
        if (v43 <= 4.0)
        {
          v74[0] = 0.0;
          v52 = a4;
          v53 = R8_EQ(a4 + 2, v74);
          v48 = v52;
          v54 = 1.0;
          if (!v53)
          {
            v54 = 1.001 / sqrt(v52[1] * v52[1] + 0.002001);
          }

          v39 = v41 * v54;
        }

        else
        {
          v44 = *(a6 + 1720);
          v72 = a4;
          Trop_Niell_MappingFunc::Get_Dry_MappingFunc_OF((a6 + 1848), v43, a9, a10, a2);
          v46 = v44 * v45;
          v47 = *(a6 + 1728);
          Trop_Niell_MappingFunc::Get_Wet_MappingFunc_OF((a6 + 1848), v72[4], a10, a2);
          v48 = v72;
          v39 = v46 + v47 * v49;
        }

        v74[0] = 0.0;
        v55 = v48;
        if (R8_EQ(v48 + 2, v74))
        {
          v40 = 0.12;
        }

        else
        {
          v40 = 1.001 / sqrt(v55[1] * v55[1] + 0.002001) * 0.12;
        }

        a4 = v55;
      }

      v35 = v39 + *(v36 + 8 * v24);
      *(v36 + 8 * v24) = v35;
      v37 = *(v38 + 8 * v24);
    }
  }

  v56 = v37 + v40 * v40;
  *(v38 + 8 * v24) = v56;
  v57 = (a7 + 8 * v24);
  v57[9697] = v39;
  *(a7 + v24 + 6952) = 1;
  ++*(v22 + 2674);
  if (*(a7 + v24 + 6824) == 1)
  {
    v58 = v35 - *(a5 + 8 * v24 + 3424);
    *(a7 + 12072 + 8 * v24) = v58;
    v59 = *(a7 + 24 * v24 + 7976) + *(a7 + 24 * v24 + 7984);
    if (*(a7 + v24 + 2416) == 1)
    {
      v60 = v58 - v57[334];
      v61 = v59 + v57[462];
    }

    else
    {
      v62 = v56 + a12;
      *(v38 + 8 * v24) = v62;
      v61 = v62 + v59;
      v60 = v58 + a11;
    }

    *(a7 + 12072 + 8 * v24) = v60;
    *(a7 + 17448 + 8 * v24) = v61;
    if (*(a3 + 120) == 1)
    {
      *(a7 + v24 + 64008) = 1;
      v63 = -(a11 - *(a3 + 56) * 299792458.0);
      v57[9313] = v63;
      if (*(a6 + 1712) > 0.0)
      {
        v63 = v63 - v39;
      }

      v57[9313] = v63 + a13;
    }

    if (fabs(v60) < 600000000.0 && v61 < 600000000.0)
    {
      *(a7 + v24 + 7080) = 1;
      ++*(v22 + 2675);
    }

    v57[1765] = v60;
    v57[1637] = v60;
  }

  if ((*(a7 + 52632 + v24) & 1) == 0)
  {
    v64 = *(a6 + 18056 + 8 * v24);
    v65 = a11 - *(a6 + 19080 + 8 * v24);
    if (vabdd_f64(v39, v64) > 0.03)
    {
      v66 = v39 - v64;
      *(a7 + 52632 + v24) = 1;
      v67 = a4;
      GNSS_SV_Str = Get_GNSS_SV_Str(*v26);
      EvLog_v("NK_Comp_ith_PR_Res:  Tropo Delay Model Step, DR_Res inhibited:  %d  %s  El %d  dTropo  %f(%f - %f)", a1, GNSS_SV_Str, *v67, v66, v39, *(a6 + 18056 + 8 * v24));
      a4 = v67;
    }

    if (fabs(v65) > 0.03)
    {
      v69 = a4;
      v70 = Get_GNSS_SV_Str(*v26);
      EvLog_v("NK_Comp_ith_PR_Res:  Iono Delay Model Step:  %d  %s  El %d  dIono %f(%f - %f)", a1, v70, *v69, v65, a11, *(a6 + 19080 + 8 * v24));
    }
  }

  v71 = a6 + 8 * v24;
  *(v71 + 18056) = v39;
  *(v71 + 19080) = a11;
}

uint64_t Decode_GPS_AS_SV_Config_Subframe(uint64_t result, unsigned __int8 *a2)
{
  v2 = 0;
  *a2 = *(result + 8) >> 12;
  a2[1] = *(result + 9) & 0xF;
  a2[2] = *(result + 8) >> 4;
  a2[3] = *(result + 8) & 0xF;
  v3 = result + 12;
  v4 = a2 + 9;
  do
  {
    *(v4 - 5) = (*(v3 + v2) >> 20) & 0xF;
    *(v4 - 4) = *(v3 + v2 + 2) & 0xF;
    *(v4 - 3) = *(v3 + v2) >> 12;
    *(v4 - 2) = *(v3 + v2 + 1) & 0xF;
    *(v4 - 1) = *(v3 + v2) >> 4;
    *v4 = *(v3 + v2) & 0xF;
    v4 += 6;
    v2 += 4;
  }

  while (v2 != 16);
  a2[28] = (*(result + 28) >> 20) & 0xF;
  a2[29] = *(result + 30) & 0xF;
  a2[30] = *(result + 28) >> 12;
  a2[31] = *(result + 29) & 0xF;
  return result;
}

uint64_t GN_AGLON_Set_Eph(uint64_t a1, uint64_t a2)
{
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Eph"))
  {
    return 0;
  }

  EvLog_d("GN_AGLON_Set_Eph: ", a1);
  if ((a1 - 25) <= 0xFFFFFFE7)
  {
    EvCrt_v("GN_AGLON_Set_Eph: FAILED: SV = %d <%d or >%d, Out of range!", a1, 1, 24);
    return 0;
  }

  v5 = *(p_api + 48);
  if (*(v5 + 16) == 1 && *v5 >= 3)
  {
    v6 = *(v5 + 40) + 604800 * *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = p_NA;
  v8 = (a1 - 1);
  v9 = p_NA + (v8 << 6) + 24272;
  if (*(a2 + 56))
  {
    v10 = 5;
  }

  else
  {
    v10 = 3;
  }

  *v9 = v6;
  *(v9 + 4) = v10;
  v11 = *(a2 + 4);
  if ((*(a2 + 4) - 7) < 0xF2u)
  {
    v11 = 2139062143;
  }

  *(v9 + 8) = v11;
  v12 = *(a2 + 40);
  v13 = *(a2 + 24);
  *(v9 + 12) = *(a2 + 8);
  *(v9 + 28) = v13;
  *(v9 + 44) = v12;
  *(v9 + 60) = 4095;
  if (*(a2 + 56))
  {
    v14 = 5;
  }

  else
  {
    v14 = 3;
  }

  *(v9 + 4) = v14;
  v4 = 1;
  *(v7 + v8 + 96) = 1;
  Debug_Log_GLO_Eph(1, a1, v9);
  return v4;
}

uint64_t GN_AGLON_Set_Alm(uint64_t a1, uint64_t a2)
{
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Alm"))
  {
    return 0;
  }

  EvLog_d("GN_AGLON_Set_Alm: ", a1);
  if ((a1 - 25) <= 0xFFFFFFE7)
  {
    EvCrt_v("GN_AGLON_Set_Alm: FAILED: SV = %d <%d or >%d, Out of range!", a1, 1, 24);
    return 0;
  }

  v5 = *(p_api + 48);
  if (*(v5 + 16) == 1 && *v5 >= 3)
  {
    v6 = *(v5 + 40) + 604800 * *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = p_NA;
  v8 = (a1 - 1);
  v9 = p_NA + 36 * v8 + 25808;
  *(p_NA + 36 * v8 + 25816) = *(a2 + 4);
  if (*(a2 + 32))
  {
    v10 = 5;
  }

  else
  {
    v10 = 3;
  }

  *v9 = v6;
  *(v9 + 4) = v10;
  v11 = *(a2 + 24);
  *(v9 + 12) = *(a2 + 8);
  *(v9 + 28) = v11;
  v4 = 1;
  *(v7 + v8 + 120) = 1;
  Debug_Log_GLO_Alm(1, a1, v9);
  return v4;
}

uint64_t GN_AGLON_Set_Chan_Num(uint64_t a1, uint64_t a2)
{
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Chan_Num"))
  {
    return 0;
  }

  EvLog_nd("GN_AGLON_Set_Chan_Num: ", 2, v4, a1, a2);
  if ((a1 - 25) <= 0xE7u)
  {
    EvCrt_v("GN_AGLON_Set_Chan_Num: FAILED: SV = %d <%d or >%d, Out of range!");
    return 0;
  }

  if ((a2 - 7) <= 0xF1u)
  {
    EvCrt_v("GN_AGLON_Set_Chan_Num: FAILED: gloChanNum = %d <-7 or >+6, Out of range!");
    return 0;
  }

  *(*(p_api + 56) + 4 * (a1 - 1) + 17328) = a2;
  v7 = p_NA;
  v8 = (a1 - 1);
  *(p_NA + (v8 << 6) + 24280) = a2;
  if ((*(v7 + 145) & 1) == 0)
  {
    *(v7 + 26708) = 0x7F7F7F7F7F7F7F7FLL;
    *(v7 + 26716) = 0x7F7F7F7F7F7F7F7FLL;
    *(v7 + 26700) = 0x7F7F7F7F7F7F7F7FLL;
  }

  v5 = 1;
  *(v7 + 145) = 1;
  *(v7 + v8 + 26700) = a2;
  Debug_Log_AGLON_ChanNum(a1, a2);
  return v5;
}

uint64_t GN_AGLON_Set_Clk1(unsigned __int16 *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Clk1"))
  {
    return 0;
  }

  v3 = *a1;
  if ((v3 - 1462) <= 0xFFFFFA4A)
  {
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloNA = %d <1 or >%d, Out of range!");
    return 0;
  }

  v4 = *(a1 + 1);
  if ((v4 - 645) <= 0xFFFFFAF6)
  {
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauC = %d <-644 or >644, Unrealistic value!");
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 >= 0x20)
  {
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloN4 = %d >31, Out of range!");
    return 0;
  }

  v6 = *(a1 + 3);
  if ((v6 - 0x200000) >> 22 != 1023)
  {
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauGPS = %d <-2^21 or >2^21, Out of range!");
    return 0;
  }

  if ((v6 - 323) <= 0xFFFFFD7A)
  {
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauGPS = %d <-322 or >322, Unrealistic value!");
    return 0;
  }

  v9 = *(p_api + 48);
  if (*(v9 + 16) == 1 && *v9 >= 3)
  {
    v10 = *(v9 + 40) + 604800 * *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = p_NA;
  v12 = p_NA + 24576;
  *(p_NA + 26672) = v10;
  *(v12 + 2104) = v3;
  *(v12 + 2108) = v4;
  *(v12 + 2112) = v5;
  *(v12 + 2116) = v6;
  v13 = *(a1 + 16);
  *(v12 + 2120) = v13;
  v14 = *(a1 + 17);
  if (*(a1 + 17))
  {
    v15 = 5;
  }

  else
  {
    v15 = 3;
  }

  *(v12 + 2100) = v15;
  v7 = 1;
  *(v11 + 144) = 1;
  EvLog_nd("GN_AGLON_Set_Clk1: ", 6, v2, v3, v4, v5, v6, v13, v14);
  return v7;
}

void NK_SV_Meas_IVar(int a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, double a6)
{
  v26 = a3;
  v10 = 0;
  v27[13] = *MEMORY[0x29EDCA608];
  v11 = a5 + 312;
  v12 = a5 + 440;
  v13 = a5 + 10680;
  v14 = a5 + 11704;
  v15 = a4 - 1;
  do
  {
    if (*(v11 + v10) == 1)
    {
      NK_Obs_Equ_SV(a1, *(v12 + v10), *(a2 + 4 * v10), (v26 + 56 * v10), v27, a6);
      v16 = *(v13 + 8 * v10) + *a4 * v27[0] * v27[0];
      v17 = 1;
      v18 = 2;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = v27[v19 - 1];
        v22 = v27;
        v23 = v18;
        v24 = v17;
        do
        {
          v25 = *v22++;
          v21 = v21 + v25 * v15[v23++];
          --v24;
        }

        while (v24);
        v20 += v19;
        v16 = v16 + v21 * v21 * v15[v20];
        v18 += v19;
        ++v17;
        ++v19;
      }

      while (v19 != 13);
      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      *(v14 + 8 * v10) = v16;
    }

    ++v10;
  }

  while (v10 != 128);
}

char **sprintf_1u(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) == 0)
  {
    return sprintf1da(a1, a2, v3, 0, 0);
  }

  return sprintf_10u(a1, a2);
}

char **sprintf_1X(char **a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  if (v4)
  {
    sprintf_1x(a1, v4);

    return sprintf_08x(a1, a2);
  }

  else
  {

    return sprintf_1x(a1, a2);
  }
}

char **sprintf_1U(char **a1, unint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((a2 / 0x3B9ACA00))
  {
    v3 = a2 % 0x3B9ACA00;
    sprintf_1u(a1, a2 / 0x3B9ACA00);
    return digit10(a1, v3, v5, 0, 0);
  }

  else
  {

    return sprintf_1u(a1, a2);
  }
}

char **sprintf_10U(char **a1, unint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((a2 / 0x3B9ACA00))
  {
    v3 = a2 % 0x3B9ACA00;
    sprintf_1u(a1, a2 / 0x3B9ACA00);
    return digit10(a1, v3, v5, 0, 0);
  }

  else
  {

    return sprintf_10u(a1, a2);
  }
}

char **sprintf_19U(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 / 0x3B9ACA00;
  if ((a2 / 0x3B9ACA00))
  {
    sprintf_10u(a1, a2 / 0x3B9ACA00);

    return sprintf_09d(a1, (v2 - 1000000000 * v4));
  }

  else
  {
    v6 = *a1;
    v7 = 32;
    v8 = 1u;
    do
    {
      *a1 = v6 + 1;
      *v6 = v7;
      v6 = *a1;
      if (*a1 >= *(a1 + 24))
      {
        v6 = *(a1 + 16);
        *a1 = v6;
      }

      v7 = str_27[v8++];
    }

    while (v8 != 10);

    return sprintf_10u(a1, a2);
  }
}

char **sprintf_1D(char **a1, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = a2 / 1000000000;
  if (a2 / 1000000000)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    if (v3 >= 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = (a2 / -1000000000);
    }

    sprintf1da(a1, v5, v8, 0, v3 >> 31);

    return sprintf_09d(a1, v4 % 0x3B9ACA00);
  }

  else
  {
    if ((a2 & 0x80000000) == 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = -a2;
    }

    return sprintf1da(a1, v7, v8, 0, (a2 >> 31) & 1);
  }
}

char **sprintf_10D(char **a1, uint64_t a2, __n128 a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = a2 / 1000000000;
  if (a2 / 1000000000)
  {
    if (a2 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = -a2;
    }

    if (v4 >= 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = (a2 / -1000000000);
    }

    sprintf1da(a1, v6, v8, 0, v4 >> 31);

    return sprintf_09d(a1, v5 % 0x3B9ACA00);
  }

  else
  {

    return sprintf_10d(a1, a2);
  }
}

char **sprintf_11D(char **a1, uint64_t a2, __n128 a3)
{
  if (a2 / 1000000000)
  {
    if (a2 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    sprintf_2d(a1, (a2 / 1000000000));

    return sprintf_09d(a1, v4 % 0x3B9ACA00);
  }

  else
  {
    if (a2 >= -999999999)
    {
      v6 = (*a1)++;
      *v6 = 32;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }
    }

    return sprintf_10d(a1, a2);
  }
}

char **sprintf_sp1d(char **a1, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if ((a2 & 0x80000000) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  return sprintf1da(a1, v3, v5, 0, a2 >> 31);
}

char **sprintf_sp11d(char **a1, uint64_t a2, __n128 a3)
{
  v3 = (*a1)++;
  *v3 = 32;
  v4 = *a1;
  if (*a1 >= a1[3])
  {
    v4 = a1[2];
    *a1 = v4;
  }

  if (a2 >= -999999999)
  {
    *a1 = v4 + 1;
    *v4 = 32;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }
  }

  return sprintf_10d(a1, a2);
}

char **sprintf_sp1u(char **a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if ((a2 & 0x80000000) == 0)
  {
    return sprintf1da(a1, a2, v4, 0, 0);
  }

  return sprintf_1u(a1, a2);
}

char **sprintf_sp10U(char **a1, uint64_t a2, __n128 a3)
{
  v3 = (*a1)++;
  *v3 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (a2 < 0)
  {

    return sprintf_10U(a1, a2);
  }

  else
  {

    return sprintf_10D(a1, a2, a3);
  }
}

uint64_t sprintf_11f9(char **a1, double a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (fabs(a2) >= 1.0)
  {
    v7 = dbl_299051A30[a2 < 0.0] + a2;
    v8 = v7;
    v9 = v7 - v7;
    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    if (v8 >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = -v8;
    }

    sprintf1da(a1, v11, v16, 0, v8 >> 31);
    v12 = (*a1)++;
    *v12 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v13 = v10 * 1000000000.0;
    if (v10 * 1000000000.0 <= 2147483650.0)
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
      v14 = 0x7FFFFFFFLL;
    }

    return sprintf_09d(a1, v14);
  }

  else
  {
    v3 = a2 * 1000000000.0;
    v4 = -0.5;
    if (v3 > 0.0)
    {
      v4 = 0.5;
    }

    v5 = v3 + v4;
    if (v5 <= 2147483650.0)
    {
      if (v5 >= -2147483650.0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0x80000000;
      }
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    return sprintf_10f9(a1, v6);
  }
}

uint64_t sprintf_12f3(char **a1, double a2)
{
  if (fabs(a2) >= 100000.0)
  {
    v10 = dbl_299051A40[a2 < 0.0] + a2;
    v11 = v10;
    v12 = v10 - v11;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    sprintf_8d(a1, v11);
    v14 = (*a1)++;
    *v14 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v15 = v13 * 1000.0;
    if (v13 * 1000.0 <= 2147483650.0)
    {
      if (v15 >= -2147483650.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFFLL;
    }

    return sprintf_03d(a1, v16);
  }

  else
  {
    v3 = 0;
    v4 = *a1;
    v5 = 32;
    do
    {
      *a1 = v4 + 1;
      *v4 = v5;
      v4 = *a1;
      if (*a1 >= a1[3])
      {
        v4 = a1[2];
        *a1 = v4;
      }

      v5 = str_1_21[++v3];
    }

    while (v3 != 2);
    v6 = a2 * 1000.0;
    v7 = -0.5;
    if (v6 > 0.0)
    {
      v7 = 0.5;
    }

    v8 = v6 + v7;
    if (v8 <= 2147483650.0)
    {
      if (v8 >= -2147483650.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x80000000;
      }
    }

    else
    {
      v9 = 0x7FFFFFFFLL;
    }

    return sprintf_9f(a1, v9, 4);
  }
}

uint64_t sprintf_14f3(char **a1, __n128 a2)
{
  if (fabs(a2.n128_f64[0]) >= 100000.0)
  {
    v10 = dbl_299051A40[a2.n128_f64[0] < 0.0] + a2.n128_f64[0];
    v11 = v10;
    v12 = v10 - v11;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    sprintf_10d(a1, v11);
    v14 = (*a1)++;
    *v14 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v15 = v13 * 1000.0;
    if (v13 * 1000.0 <= 2147483650.0)
    {
      if (v15 >= -2147483650.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFFLL;
    }

    return sprintf_03d(a1, v16);
  }

  else
  {
    v3 = 0;
    v4 = *a1;
    v5 = 32;
    do
    {
      *a1 = v4 + 1;
      *v4 = v5;
      v4 = *a1;
      if (*a1 >= a1[3])
      {
        v4 = a1[2];
        *a1 = v4;
      }

      v5 = str_3_8[++v3];
    }

    while (v3 != 4);
    v6 = a2.n128_f64[0] * 1000.0;
    v7 = -0.5;
    if (v6 > 0.0)
    {
      v7 = 0.5;
    }

    v8 = v6 + v7;
    if (v8 <= 2147483650.0)
    {
      if (v8 >= -2147483650.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x80000000;
      }
    }

    else
    {
      v9 = 0x7FFFFFFFLL;
    }

    return sprintf_9f(a1, v9, 4);
  }
}

uint64_t sprintf_p(uint64_t result, unint64_t a2)
{
  v2 = 0;
  v11 = *MEMORY[0x29EDCA608];
  v3 = *result;
  v4 = 48;
  do
  {
    *result = v3 + 1;
    *v3 = v4;
    v3 = *result;
    if (*result >= *(result + 24))
    {
      v3 = *(result + 16);
      *result = v3;
    }

    v4 = str_7_9[++v2];
  }

  while (v2 != 2);
  for (i = 15; i != -1; --i)
  {
    v10[i - 1] = __const__Z9sprintf_pP10Cyc_bufferPKv_dec2HexChar[a2 & 0xF];
    a2 >>= 4;
  }

  v10[15] = 0;
  v6 = v9;
  if (v9)
  {
    v7 = v10;
    do
    {
      *result = v3 + 1;
      *v3 = v6;
      v3 = *result;
      if (*result >= *(result + 24))
      {
        v3 = *(result + 16);
        *result = v3;
      }

      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  return result;
}

unint64_t Get_PETestMode(void)
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = (Ga05_GetDebugFeaturesBitmask() >> 42) & 0x3F;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TestMode,%u\n", (*&g_MacClockTicksToMsRelation * v1), "OSA", 73, "Get_PETestMode", v0);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return v0;
}

unint64_t Get_TestConfigurationSleepTimeoutSeconds(void)
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = (Ga05_GetDebugFeaturesBitmask() >> 32) & 0x3FF;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SleepTO (gpsd),%u\n", (*&g_MacClockTicksToMsRelation * v1), "OSA", 73, "Get_TestConfigurationSleepTimeoutSeconds", v0);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return v0;
}

double Horiz_Diff_Sqd(double *a1, const double *a2)
{
  v4 = *a1;
  v5 = __sincos_stret(*a1);
  v6 = 1.0 / sqrt(v5.__sinval * v5.__sinval * -0.00669437999 + 1.0);
  v7 = a1[2];
  v8 = v5.__cosval * (v7 + v6 * 6378137.0);
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  v9 = (v4 - *a2) * (v7 + v6 * (v6 * v6) * 6335439.33);
  return (a1[1] - a2[1]) * v8 * ((a1[1] - a2[1]) * v8) + v9 * v9;
}

uint64_t GN_ANVIC_Set_Eph_El(unsigned __int8 *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ANVIC_Set_Eph_El"))
  {
    return 0;
  }

  if (g_Logging_Cfg < 5)
  {
    EvLog_d("GN_ANVIC_Set_Eph_El: ", *a1);
  }

  else
  {
    EvLog_ANVIC_Eph_El(a1);
  }

  v2 = *a1 - 15;
  v3 = v2 < 0xFFFFFFF2;
  if (v2 <= 0xFFFFFFF1)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  SVid = %d, Out of range !", *a1);
  }

  if (a1[1] >= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  Alert_Flag = %d > 1, Out of range !", a1[1]);
    v3 = 1;
  }

  if (a1[2] >= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  L5_Health_Flag = %d > 1, Out of range !", a1[2]);
    v3 = 1;
  }

  if (a1[3] >= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  S_Health_Flag = %d > 1, Out of range !", a1[3]);
    v3 = 1;
  }

  if ((a1[5] - 16) <= 0xE0u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  URAI = %d > 1, Out of range !", a1[5]);
    v3 = 1;
  }

  if (*(a1 + 3) >= 0x1000u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  WeekNo = %d > 4095 Out of range !", *(a1 + 3));
    v3 = 1;
  }

  if (*(a1 + 4) >= 0x93A8u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  toc = %d > 37799, Out of range !", *(a1 + 4));
    v3 = 1;
  }

  if (*(a1 + 5) >= 0x93A8u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  toe = %d > 37799, Out of range !", *(a1 + 5));
    v3 = 1;
  }

  if ((*(a1 + 3) - 0x2000000) >> 26 != 63)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  af0 = %d < -2^25 || >= 2^25, Out of range !", *(a1 + 3));
    v3 = 1;
  }

  if (a1[19] >= 7u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  Fit_hours = %d > 6, Out of range !", a1[19]);
    v3 = 1;
  }

  if (((*(a1 + 11) - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  i_dot = %d < -2^13 || >= 2^13, Out of range !", *(a1 + 11));
    v3 = 1;
  }

  if ((*(a1 + 12) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  delta_N = %d < -2^23 || >= 2^23, Out of range !", *(a1 + 12));
    v3 = 1;
  }

  if ((*(a1 + 13) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  Omega_dot = %d < -2^23 || >= 2^23, Out of range !", *(a1 + 13));
    v3 = 1;
  }

  v4 = vcvtd_n_f64_u32(*(a1 + 6), 0x13uLL);
  if (v4 >= *"")
  {
    if (v4 <= 6700.0)
    {
      goto LABEL_36;
    }

    EvCrt_v("GN_ANVIC_Set_Eph_El: FAILED: sqrt_A = %g > %g, Unrealistic value!");
  }

  else
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El: FAILED: sqrt_A = %g < %g, Unrealistic value!");
  }

  v3 = 1;
LABEL_36:
  LODWORD(v4) = *(a1 + 7);
  v5 = *&v4 * 1.16415322e-10;
  if (v5 > 0.03)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El: FAILED: e = %g > %g, Unrealistic value!", v5, 0.03);
    v3 = 1;
  }

  v6 = *(a1 + 13);
  v7 = v6 * 3.57157734e-13;
  if (v7 < -0.00000198862815)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El: FAILED: Omega_dot = %e < %e, Unrealistic value!");
    return 0;
  }

  if (v7 > 0.000000314159265)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El: FAILED: Omega_dot = %e > %e, Unrealistic value!");
    return 0;
  }

  if (v3)
  {
    return 0;
  }

  v10 = p_NA;
  LODWORD(v7) = *a1;
  v11 = vmovl_u8(*&v7).u8[0] - 1;
  v12 = p_NA + 76 * v11;
  v13 = v12 + 22480;
  *(v12 + 22488) = *a1;
  *(v12 + 22492) = *(a1 + 4);
  *(v12 + 22500) = *(a1 + 3);
  *(v12 + 22504) = *(a1 + 8);
  *(v12 + 22506) = a1[18];
  v14 = a1[19];
  if (v14 >= 4)
  {
    LOBYTE(v14) = 4;
  }

  *(v12 + 22507) = v14;
  *(v12 + 22508) = *(a1 + 10);
  *(v12 + 22510) = *(a1 + 11);
  *(v12 + 22512) = *(a1 + 24);
  *(v12 + 22528) = *(a1 + 5);
  *(v12 + 22536) = *(a1 + 12);
  *(v12 + 22540) = v6;
  *(v12 + 22544) = *(a1 + 7);
  *(v12 + 22552) = *(a1 + 16);
  if (a1[68])
  {
    v15 = 5;
  }

  else
  {
    v15 = 3;
  }

  *(v12 + 22484) = v15;
  v16 = *(p_api + 48);
  if (*(v16 + 16) == 1 && *v16 >= 3)
  {
    v17 = *(v16 + 40) + 604800 * *(v16 + 32);
  }

  else
  {
    v17 = 0;
  }

  *v13 = v17;
  v8 = 1;
  *(v10 + v11 + 348) = 1;
  Debug_Log_NVC_Eph(1, v13);
  *(v13 + 14) = Complete_NVIC_WeekNo(*(v13 + 14));
  return v8;
}

uint64_t GN_ANVIC_Set_Alm_El(unsigned __int8 *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ANVIC_Set_Alm_El"))
  {
    return 0;
  }

  EvLog_d("GN_ANVIC_Set_Alm_El: ", *a1);
  v2 = *a1 - 15;
  v3 = v2 < 0xFFFFFFF2;
  if (v2 <= 0xFFFFFFF1)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: SVid = %d < 1 or >%d, Out of range!", *a1, 14);
  }

  if (a1[1] >= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: L5_Health_Flag = %d > 1, Out of range!", a1[1]);
    v3 = 1;
  }

  if (a1[2] >= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: S_Health_Flag = %d > 1, Out of range!", a1[2]);
    v3 = 1;
  }

  if (*(a1 + 2) >= 0x1000u)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: WNa = %d  > 4095, Out of range!", *(a1 + 2));
    v3 = 1;
  }

  if (*(a1 + 3) >= 0x93A8u)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: toa = %d > 37799, Out of range!", *(a1 + 3));
    v3 = 1;
  }

  if ((*(a1 + 3) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: i0 = %d <-2^23 or >=2^23, Out of range!", *(a1 + 3));
    v3 = 1;
  }

  if (HIBYTE(*(a1 + 5)))
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: sqrt_A = %d >=2^24, Out of range!", *(a1 + 5));
    v3 = 1;
  }

  if ((*(a1 + 6) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: Omega0 = %d <-2^23 or >=2^23, Out of range!", *(a1 + 6));
    v3 = 1;
  }

  if ((*(a1 + 7) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: w = %d <-2^23 or >=2^23, Out of range!", *(a1 + 7));
    v3 = 1;
  }

  if ((*(a1 + 8) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: M0 = %d <-2^23 or >=2^23, Out of range!", *(a1 + 8));
    v3 = 1;
  }

  if (((*(a1 + 18) - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: af0 = %d <-2^10 or >=2^10, Out of range!", *(a1 + 18));
    v3 = 1;
  }

  if (((*(a1 + 19) - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: af1 = %d <-2^10 or >=2^10, Out of range!", *(a1 + 19));
    v3 = 1;
  }

  v4 = vcvtd_n_f64_u32(*(a1 + 4), 0x15uLL);
  if (v4 > 0.03)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: e = %g > %g, Unrealistic value!", v4, 0.03);
    v3 = 1;
  }

  v5 = *(a1 + 8) * 1.14290475e-11;
  if (v5 >= -0.00000198862815)
  {
    if (v5 <= 0.000000314159265)
    {
      goto LABEL_33;
    }

    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: Omega_dot = %g > %g, Unrealistic value!");
  }

  else
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: Omega_dot = %g < %g, Unrealistic value!");
  }

  v3 = 1;
LABEL_33:
  v6 = *(a1 + 5);
  v7 = vcvtd_n_f64_u32(v6, 0xBuLL);
  if (v7 < *"")
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: sqrt_A = %g < %g, Unrealistic value!");
    return 0;
  }

  if (v7 > 6700.0)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: sqrt_A = %g > %g, Unrealistic value!");
    return 0;
  }

  if (v3)
  {
    return 0;
  }

  v10 = *a1;
  v11 = p_NA;
  v12 = v10 - 1;
  v13 = p_NA + 52 * (v10 - 1);
  v14 = v13 + 23544;
  *(v13 + 23552) = v10;
  *(v13 + 23553) = *(a1 + 1);
  *(v13 + 23556) = *(a1 + 2);
  *(v13 + 23558) = *(a1 + 6);
  *(v13 + 23564) = *(a1 + 3);
  *(v13 + 23568) = *(a1 + 8);
  *(v13 + 23572) = v6;
  *(v13 + 23576) = *(a1 + 3);
  *(v13 + 23584) = *(a1 + 8);
  *(v13 + 23588) = *(a1 + 18);
  *(v13 + 23590) = *(a1 + 19);
  *(v13 + 23592) = a1[40];
  v15 = *(p_api + 48);
  if (*(v15 + 16) == 1 && *v15 >= 3)
  {
    v16 = *(v15 + 40) + 604800 * *(v15 + 32);
  }

  else
  {
    v16 = 0;
  }

  if (a1[41])
  {
    v17 = 5;
  }

  else
  {
    v17 = 3;
  }

  *v14 = v16;
  *(v13 + 23548) = v17;
  v8 = 1;
  *(v11 + v12 + 362) = 1;
  Debug_Log_NVC_Alm(1, v14);
  *(v14 + 12) = Complete_NVIC_WeekNo(*(v14 + 12));
  return v8;
}

void NK_Comp_Sol_Acc(uint64_t a1, uint64_t a2)
{
  v96 = *MEMORY[0x29EDCA608];
  v4 = a2 + 60072;
  ECEF2FSD_RotM((a2 + 1736), *(a1 + 27280) * 0.0174532925, v88);
  v82 = 0;
  memset_pattern16((a2 + 61432), &unk_299051AA0, 0x60uLL);
  memset_pattern16((a2 + 61528), &unk_299051AA0, 0x60uLL);
  memset_pattern16((a2 + 61624), &unk_299051A90, 0x60uLL);
  *(v4 + 1648) = 0;
  if ((*(a1 + 136) & 1) == 0)
  {
    v5 = (a2 + 52760);
    if (*(a2 + 52760) <= 1.05)
    {
      v6 = *(a2 + 52768);
      if (v6 <= 1.05)
      {
        goto LABEL_8;
      }

      *(a1 + 152) = 0;
    }

    else
    {
      *(a1 + 152) = 0;
      *(a1 + 180) = 1;
      v6 = *(a2 + 52768);
    }

    if (v6 > 1.05)
    {
      *(a1 + 181) = 1;
    }

LABEL_8:
    ud2var(a1 + 976, 0xCu, 1, 1u, (a2 + 61432));
    *&v89 = 0;
    if (R8_EQ((a2 + 1632), &v89) && *(a2 + 61432) > 1.0e18)
    {
      *(a2 + 61432) = 0x43ABC16D674EC800;
    }

    v7 = *v5;
    if (*v5 > 1.05)
    {
      *&v89 = 0;
      if (!R8_EQ((a2 + 1632), &v89) && *(a2 + 1872) != 1)
      {
        v8 = (v7 + -1.0) * 0.25 * *(a2 + 61432);
        Apply_Q_Boost(v8, 0, 1u, (a1 + 976), &v82, &v89);
        *(a2 + 61432) = v8 + *(a2 + 61432);
        *(a1 + 216) = v8;
        EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 3:  ClkBias %g  post_QB[0] %g", sqrt(v8), *v5);
      }
    }

    *(v4 + 1456) = *(v4 + 1360) + *(a1 + 15488);
    v9 = (v4 + 1368);
    ud2var(a1 + 976, 0xCu, 2, 1u, (v4 + 1368));
    *v86 = 0;
    if (R8_EQ((a2 + 1640), v86) && *v9 > 1.0e18)
    {
      *v9 = 1.0e18;
    }

    v10 = *v5;
    if (*v5 > 1.05)
    {
      *v86 = 0;
      if (!R8_EQ((a2 + 1640), v86) && *(a2 + 1872) != 1)
      {
        v11 = (v10 + -1.0) * 0.25 * *v9;
        Apply_Q_Boost(v11, 1u, 1u, (a1 + 976), &v82, &v89);
        *v9 = v11 + *v9;
        if (*(a1 + 216) < v11)
        {
          *(a1 + 216) = v11;
        }

        EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 3:  ClkGLON %g  post_QB[0] %g", sqrt(v11), *v5);
      }
    }

    *(v4 + 1464) = *(v4 + 1368) + *(a1 + 15488);
    v12 = (v4 + 1376);
    ud2var(a1 + 976, 0xCu, 3, 1u, (v4 + 1376));
    *v86 = 0;
    if (R8_EQ((a2 + 1648), v86) && *v12 > 1.0e18)
    {
      *v12 = 1.0e18;
    }

    v13 = *v5;
    if (*v5 > 1.05)
    {
      *v86 = 0;
      if (!R8_EQ((a2 + 1648), v86) && *(a2 + 1872) != 1)
      {
        v14 = (v13 + -1.0) * 0.25 * *v12;
        Apply_Q_Boost(v14, 2u, 1u, (a1 + 976), &v82, &v89);
        *v12 = v14 + *v12;
        if (*(a1 + 216) < v14)
        {
          *(a1 + 216) = v14;
        }

        EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 3:  ClkBDS %g  post_QB[0] %g", sqrt(v14), *v5);
      }
    }

    *(v4 + 1472) = *(v4 + 1376) + *(a1 + 15488);
    v15 = (v4 + 1384);
    ud2var(a1 + 976, 0xCu, 4, 1u, (v4 + 1384));
    *v86 = 0;
    if (R8_EQ((a2 + 1656), v86) && *v15 > 1.0e18)
    {
      *v15 = 1.0e18;
    }

    v16 = *v5;
    if (*v5 > 1.05)
    {
      *v86 = 0;
      if (!R8_EQ((a2 + 1656), v86) && *(a2 + 1872) != 1)
      {
        v17 = (v16 + -1.0) * 0.25 * *v15;
        Apply_Q_Boost(v17, 3u, 1u, (a1 + 976), &v82, &v89);
        *v15 = v17 + *v15;
        if (*(a1 + 216) < v17)
        {
          *(a1 + 216) = v17;
        }

        EvLog_v("Q-Boost 3 ClkL5L1 %g  post_QB[0] %g", sqrt(v17), *v5);
      }
    }

    *(v4 + 1480) = *(v4 + 1384) + *(a1 + 15488) * 0.0001;
    v18 = (v4 + 1392);
    ud2var(a1 + 976, 0xCu, 5, 1u, (v4 + 1392));
    v19 = *(a2 + 52768);
    if (v19 > 1.05 && *(a2 + 1872) != 1)
    {
      v20 = (v19 + -1.0) * 0.25 * *v18;
      Apply_Q_Boost(v20, 4u, 1u, (a1 + 976), &v82, &v89);
      *v18 = v20 + *v18;
      *(a1 + 224) = v20;
      EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 4:  ClkD %g  post_QB[1] %g", sqrt(v20), *(a2 + 52768));
    }

    v21 = 0.01;
    *(v4 + 1488) = *(v4 + 1392) + *(a2 + 1552) * 0.01;
    ud2var(a1 + 976, 0xCu, 6, 1u, (v4 + 1400));
    v22 = *(v4 + 1400);
    *(v4 + 1496) = v22;
    v23 = *v5;
    if (*v5 > 1.05 && *(a2 + 20) <= 10 && *(a2 + 1872) != 1)
    {
      v24 = v22 * (v23 + -1.0 + v23 + -1.0);
      Apply_Q_Boost(v24, 5u, 1u, (a1 + 976), &v82, &v89);
      *(v4 + 1400) = v24 + *(v4 + 1400);
      *(a1 + 216) = v24 + *(a1 + 216);
      EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 3:  dT_Sync %g  post_QB[0] %g", sqrt(v24), *v5);
      v23 = *v5;
    }

    if (v23 > 1.05 && *(a2 + 1872) != 1)
    {
      v78 = (v4 + 1376);
      v79 = (v4 + 1368);
      v80 = v4;
      v25 = 61480;
      Comp_NEDvar_UDU(a1 + 976, 0xCu, 6, (a2 + 1736), (a2 + 61480));
      v26 = 0;
      v27 = 0;
      v28 = v82;
      do
      {
        v29 = (*v5 + -1.0) * *(a2 + v25);
        if (v27 == 48)
        {
          v29 = v29 * *(a1 + 128);
        }

        v90 = 0u;
        v91 = 0u;
        v89 = 0u;
        v92 = *(a2 + v27 + 1736);
        v93 = *(a2 + v27 + 1752);
        v86[0] = 0;
        if (v29 > 0.0)
        {
          rnk1_core((a1 + 976), 9u, v29, &v89, v86);
          if (v86[0])
          {
            ++v28;
          }
        }

        *(a1 + 216) = v29 + *(a1 + 216);
        EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 3:  Pos %d %g  post_QB[0] %g", v26, sqrt(v29), *v5);
        v27 += 24;
        ++v26;
        v25 += 8;
      }

      while (v27 != 72);
      v82 = v28;
      v9 = v79;
      v4 = v80;
      v12 = v78;
    }

    if ((*(a1 + 29) & 1) == 0)
    {
      if (*(v4 + 144) == 1 && *(v4 + 216) <= 400000000.0 || *(v4 + 2050) >= 3u)
      {
        *(a1 + 29) = 1;
      }

      else
      {
        v30 = *(a2 + 61432);
        if (v30 < 40000.0 && (*v4 & 1) == 0)
        {
          v31 = 40000.0 - v30;
          Apply_Q_Boost(40000.0 - v30, 0, 1u, (a1 + 976), &v82, &v89);
          *(a2 + 61432) = v31;
          *(a2 + 61528) = v31 + *(a1 + 15488);
          DbgLog_v(1, "NK_Comp_Sol_Acc: GPS Clock Bias var boosted %g", v31);
        }

        v32 = *v9;
        if (*v9 < 40000.0 && (*v4 & 1) == 0)
        {
          v33 = 40000.0 - v32;
          Apply_Q_Boost(40000.0 - v32, 1u, 1u, (a1 + 976), &v82, &v89);
          *(v4 + 1368) = v33;
          *(v4 + 1464) = v33 + *(a1 + 15488);
          DbgLog_v(1, "NK_Comp_Sol_Acc: Glonass Clock Bias var boosted %g", v33);
        }

        v34 = *v12;
        if (*v12 < 40000.0 && (*v4 & 1) == 0)
        {
          v35 = 40000.0 - v34;
          Apply_Q_Boost(40000.0 - v34, 2u, 1u, (a1 + 976), &v82, &v89);
          *(v4 + 1376) = v35;
          *(v4 + 1472) = v35 + *(a1 + 15488);
          DbgLog_v(1, "NK_Comp_Sol_Acc: Beidou Clock Bias var boosted %g", v35);
        }

        for (i = 0; i != 3; ++i)
        {
          *v86 = 0;
          ud2var(a1 + 976, 0xCu, i + 7, 1u, v86);
          if (*v86 < 40000.0)
          {
            v37 = 40000.0 - *v86;
            Apply_Q_Boost(40000.0 - *v86, i + 6, 1u, (a1 + 976), &v82, &v89);
            DbgLog_v(1, "NK_Comp_Sol_Acc: Pos var boosted %d %g", i, v37);
          }
        }
      }
    }

    Comp_NEDvar_UDU(a1 + 976, 0xCu, 6, (a2 + 1736), (a2 + 61480));
    *(v4 + 1648) = v38;
    Comp_NEDvar_UDU(a1 + 976, 0xCu, 6, v88, (a2 + 61776));
    *(a2 + 61776) = vsqrtq_f64(*(a2 + 61776));
    *(v4 + 1720) = sqrt(*(v4 + 1720));
    Comp_NEDvar_UDU(a1 + 976, 0xCu, 9, v88, (v4 + 1728));
    *(v4 + 1728) = vsqrtq_f64(*(v4 + 1728));
    *(v4 + 1744) = sqrt(*(v4 + 1744));
    *(v4 + 1648) = *(v4 + 1648) + *(a1 + 15520);
    v39 = (a1 + 15496);
    v40 = (v4 + 1504);
    v41 = 3;
    do
    {
      v42 = *v39++;
      *v40 = *(v40 - 12) + v42;
      ++v40;
      --v41;
    }

    while (v41);
    if (*(a2 + 52768) > 1.05 && *(a2 + 1872) != 1)
    {
      v81 = v4;
      v43 = 61504;
      Comp_NEDvar_UDU(a1 + 976, 0xCu, 9, (a2 + 1736), (a2 + 61504));
      v44 = 0;
      v45 = 0;
      v46 = v82;
      do
      {
        v47 = (*(a2 + 52768) + -1.0) * *(a2 + v43);
        if (v45 == 48)
        {
          v47 = v47 * *(a1 + 128);
        }

        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        v90 = 0u;
        v89 = 0u;
        v94 = *(a2 + v45 + 1736);
        v95 = *(a2 + v45 + 1752);
        v86[0] = 0;
        if (v47 > 0.0)
        {
          rnk1_core((a1 + 976), 0xCu, v47, &v89, v86);
          if (v86[0])
          {
            ++v46;
          }
        }

        *(a1 + 224) = v47 + *(a1 + 224);
        EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 4:  Vel %d %g  post_QB[1] %g", v44, sqrt(v47), *(a2 + 52768));
        v45 += 24;
        ++v44;
        v43 += 8;
      }

      while (v45 != 72);
      v82 = v46;
      v4 = v81;
    }

    Comp_NEDvar_UDU(a1 + 976, 0xCu, 9, (a2 + 1736), (a2 + 61504));
    memset(v86, 0, sizeof(v86));
    v87 = 0.0;
    if (*(a1 + 27116) >= 4u)
    {
      v48 = *(a2 + 1552);
      if (v48 > 0.0)
      {
        v49 = 0;
        v83 = 0.0;
        v84 = 0.0;
        v85 = 0.0;
        do
        {
          *(&v83 + v49) = -*(a2 + 62624 + v49) / v48;
          v49 += 8;
        }

        while (v49 != 24);
        v50 = 0;
        v51 = v83;
        v52 = v84;
        v53 = (a2 + 1752);
        v54 = v85;
        do
        {
          v55 = *(v53 - 1) * v52 + *(v53 - 2) * v51;
          v56 = *v53;
          v53 += 3;
          *&v86[v50] = v55 + v56 * v54;
          v50 += 2;
        }

        while (v50 != 6);
LABEL_118:
        v71 = 0;
        v72 = a2 + 61504;
        do
        {
          v73 = *(v72 + v71 * 4) + v48 * (*&v86[v71] * 0.5) * (v48 * (*&v86[v71] * 0.5));
          *(v72 + v71 * 4) = v73;
          *(a2 + 61600 + v71 * 4) = v73 + v48 * 0.0001;
          v71 += 2;
        }

        while (v71 != 6);
        if (v82)
        {
          *(a1 + 136) = 1;
          *(a1 + 140) = 23;
          memset_pattern16((a2 + 61432), &unk_299051AA0, 0x60uLL);
          memset_pattern16((a2 + 61528), &unk_299051AA0, 0x60uLL);
          *(v4 + 1648) = 0;
        }

        goto LABEL_122;
      }
    }

    v57 = *(a1 + 20);
    if (v57 <= 4)
    {
      if (v57 > 2)
      {
        if (v57 == 3)
        {
          __asm { FMOV            V0.2D, #2.0 }

          *v86 = _Q0;
          v64 = 4.0;
        }

        else
        {
          __asm { FMOV            V0.2D, #3.0 }

          *v86 = _Q0;
          v64 = 9.0;
          v21 = 0.00694444444;
        }

        goto LABEL_117;
      }

      v58 = 0.0;
      if (v57 < 2)
      {
LABEL_114:
        *v86 = sqrt(v58);
        *&v86[2] = *v86;
        v64 = 1000000.0;
        if (v57 < 2)
        {
          v64 = 0.0;
        }

        v21 = 1.0;
        goto LABEL_117;
      }

      if (v57 == 2)
      {
        __asm { FMOV            V0.2D, #0.5 }

        *v86 = _Q0;
        v64 = 0.25;
        v21 = 0.0204081633;
LABEL_117:
        v87 = sqrt(v64 * v21);
        v48 = *(a2 + 1552);
        goto LABEL_118;
      }

LABEL_113:
      v58 = 1000000.0;
      goto LABEL_114;
    }

    if (v57 > 6)
    {
      if (v57 != 7)
      {
        if (v57 == 8)
        {
          *v86 = vdupq_n_s64(0x408F400000000000uLL);
          v21 = 1.0;
          v64 = 1000000.0;
          goto LABEL_117;
        }

        goto LABEL_113;
      }

      __asm { FMOV            V0.2D, #20.0 }

      *v86 = _Q0;
      v21 = 1.0;
      *&v66 = 400.0;
    }

    else
    {
      if (v57 == 5)
      {
        __asm { FMOV            V0.2D, #5.0 }

        *v86 = _Q0;
        v64 = 25.0;
        v21 = 0.0625;
        goto LABEL_117;
      }

      __asm { FMOV            V0.2D, #10.0 }

      *v86 = _Q0;
      v21 = 0.25;
      *&v66 = 100.0;
    }

    v64 = *&v66;
    goto LABEL_117;
  }

LABEL_122:
  v74 = 12;
  for (j = (a2 + 61624); *(j - 24) > 0.0; ++j)
  {
    *j = sqrt(*(j - 12));
    if (!--v74)
    {
      return;
    }
  }

  *(a1 + 136) = 1;
  *(a1 + 140) = 91;
  memset_pattern16((a2 + 61432), &unk_299051AA0, 0x60uLL);
  memset_pattern16((a2 + 61528), &unk_299051AA0, 0x60uLL);
  v76 = 0;
  v77 = vdupq_n_s64(0x41634325C0000000uLL);
  do
  {
    *(a2 + 61624 + v76) = v77;
    v76 += 16;
  }

  while (v76 != 96);
  *(v4 + 1648) = 0;
}

void NK_Add_Nominal_PN(uint64_t a1, uint64_t a2, int a3, float64x2_t *a4, double *a5, uint64_t a6, double *a7)
{
  v95 = *MEMORY[0x29EDCA608];
  v86 = 0;
  memset(v85, 0, sizeof(v85));
  ECEF2FSD_RotM((a2 + 224), *(a1 + 27280) * 0.0174532925, v85);
  __asm { FMOV            V0.2D, #1.0 }

  v87 = _Q0;
  v18 = *(a2 + 40);
  if (v18 < 0.0)
  {
    return;
  }

  v80 = a7;
  v19 = v18 * v18;
  *&v88 = 0x3FF0000000000000;
  v20 = a4[1].f64[1];
  v21 = v18 * (CP_Noise_dT_Sync[*(a2 + 24)] + a4[2].f64[0] + v18 * v18 * v20 * 0.0833333333);
  v22 = v21;
  if (a3)
  {
    v22 = v21 + a4[1].f64[0];
  }

  v23 = 0;
  v84 = 0;
  v83 = v18;
  if (v22 > 0.0)
  {
    rnk1_core(a5, 1u, v22, &v88, &v84);
    v18 = v83;
    v20 = a4[1].f64[1];
    v21 = v83 * (CP_Noise_dT_Sync[*(a2 + 24)] + a4[2].f64[0] + v19 * v20 * 0.0833333333);
    v23 = v84 != 0;
  }

  *&v88 = 0;
  *(&v88 + 1) = 0x3FF0000000000000;
  v24 = v21;
  if (a3)
  {
    v24 = v21 + a4[1].f64[0];
  }

  v84 = 0;
  if (v24 > 0.0)
  {
    rnk1_core(a5, 2u, v24, &v88, &v84);
    v18 = v83;
    v20 = a4[1].f64[1];
    v21 = v83 * (CP_Noise_dT_Sync[*(a2 + 24)] + a4[2].f64[0] + v19 * v20 * 0.0833333333);
    v25 = v23 ? 2 : 1;
    if (v84)
    {
      v23 = v25;
    }
  }

  v88 = 0uLL;
  *&v89 = 0x3FF0000000000000;
  if (a3)
  {
    v21 = v21 + a4[1].f64[0];
  }

  v26 = 0;
  v84 = 0;
  v27 = sqrt(v18);
  if (v21 > 0.0)
  {
    rnk1_core(a5, 3u, v21, &v88, &v84);
    v18 = v83;
    v20 = a4[1].f64[1];
    v26 = v84 != 0;
  }

  v28 = 0;
  *(&v89 + 1) = 0;
  *&v88 = v18 * v27 * 0.5;
  *(&v88 + 1) = *&v88;
  *&v89 = *&v88;
  *&v90 = v27;
  v84 = 0;
  if (v20 > 0.0)
  {
    rnk1_core(a5, 5u, v20, &v88, &v84);
    v18 = v83;
    v28 = v84 != 0;
  }

  v82 = v19 * 0.5;
  v29 = (a2 + 112);
  v30 = 0.0;
  for (i = 4; i > 1; --i)
  {
    v32 = *v29--;
    v30 = v30 + v32 * v32;
  }

  v33 = sqrt(v30);
  a4->f64[0] = v33;
  v34 = a4[5].f64[0];
  if (v33 > v34)
  {
    _NF = 1;
  }

  else
  {
    v34 = v33;
    _NF = v33 < 1.0;
  }

  if (_NF)
  {
    if (v34 >= 1.0)
    {
      v33 = v34;
    }

    else
    {
      v33 = 1.0;
    }

    a4->f64[0] = v33;
  }

  v36 = 0;
  v37 = v23 + v26 + v28;
  v38 = v33 * a4->f64[1];
  *&v88 = v19 * 0.5;
  *(&v88 + 1) = v19 * 0.5;
  v89 = *&v82;
  *&v90 = v18;
  v84 = 0;
  if (v38 > 0.0)
  {
    rnk1_core(a5, 5u, v38, &v88, &v84);
    v18 = v83;
    v36 = v84 != 0;
  }

  v39 = 0;
  v40 = v37 + v36;
  v88 = 0uLL;
  *&v89 = 0;
  *(&v89 + 1) = 0x3FF0000000000000;
  v41 = v18 * a4[2].f64[1];
  v84 = 0;
  if (v41 > 0.0)
  {
    rnk1_core(a5, 4u, v41, &v88, &v84);
    v18 = v83;
    v39 = v84 != 0;
  }

  v42 = v40 + v39;
  v43 = *(a1 + 20);
  v44 = *(a1 + 24);
  if (v43 != v44)
  {
    if (v43 <= 2)
    {
      if (v43)
      {
        if (v43 == 1)
        {
          if (!v44)
          {
            goto LABEL_67;
          }
        }

        else if (v43 != 2 || v44 <= 1)
        {
          goto LABEL_67;
        }
      }
    }

    else if (v43 > 4)
    {
      if (v43 == 5)
      {
        if ((v44 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_67;
        }
      }

      else if (v43 != 6 || v44 != 7)
      {
        goto LABEL_67;
      }
    }

    else if (v43 == 3)
    {
      if (v44 <= 2)
      {
        goto LABEL_67;
      }
    }

    else if (v44 - 5 >= 3)
    {
      goto LABEL_67;
    }

    if (*(a1 + 27720))
    {
      v45 = *(a1 + 148);
      if (v45 >= *(a1 + 152))
      {
        v45 = *(a1 + 152);
      }

      if (v45)
      {
        if (v43 < 2)
        {
          goto LABEL_67;
        }

        v46 = *(a1 + 27120);
        if (v46 <= 0x78 && ((v43 - 3) > 5 || v46 <= 0x1E && ((v43 - 4) > 4 || v46 < 0xB)))
        {
          goto LABEL_67;
        }
      }

      v47 = 0;
    }

    else
    {
      v48 = *(a1 + 148);
      if (v48 >= *(a1 + 152))
      {
        v48 = *(a1 + 152);
      }

      if (*(a1 + 27568) > (5 * v48))
      {
        goto LABEL_67;
      }

      v47 = 1;
    }

    *(a1 + 27720) = v47;
  }

LABEL_67:
  if (*(a1 + 27720) != 1 || (v49 = *(a2 + 336), v49 > 4.0) || *(a1 + 27249) == 1)
  {
    v50 = a4[3];
    if (*(a1 + 27249) == 1)
    {
      v50 = vaddq_f64(v50, a4[4]);
    }

    v51 = 0;
    v52 = v50.f64[1];
    v53 = &v87;
    v54 = 0uLL;
    v81 = v50.f64[0];
    do
    {
      v88 = v54;
      v89 = v54;
      v55 = *(a2 + v51 + 224);
      v90 = v54;
      v91 = v55;
      v92 = *(a2 + v51 + 240);
      v56 = v52;
      if (v51 != 48)
      {
        v56 = v50.f64[0] * *v53;
      }

      v57 = 0;
      v58 = v18 * (v56 + CP_Noise_dT_Sync[*(a2 + 24)]);
      v84 = 0;
      if (v58 > 0.0)
      {
        rnk1_core(a5, 9u, v58, &v88, &v84);
        v54 = 0uLL;
        v50.f64[0] = v81;
        v18 = v83;
        v57 = v84 != 0;
      }

      v42 += v57;
      ++v53;
      v51 += 24;
    }

    while (v51 != 72);
    v49 = *(a2 + 336);
  }

  if (v49 > 16.0)
  {
    v59 = fabs(*(a1 + 27288));
    if (v59 > 2.0)
    {
      v60 = v18 * v49;
      v61 = __sincos_stret(v59 * 0.0174532925);
      v62 = v60 * v61.__sinval;
      v63 = 1.0;
      if (v49 < 23.0)
      {
        v63 = (v49 + -16.0) / 7.0;
      }

      v18 = v83;
      v64 = v60 * (1.0 - v61.__cosval) * v63 * (v60 * (1.0 - v61.__cosval) * v63);
      v65 = v62 * v63 * (v62 * v63);
      v66 = v85;
      v67 = 1;
      v68 = 0uLL;
      do
      {
        v69 = 0;
        v70 = v67;
        v88 = v68;
        v89 = v68;
        v71 = *v66;
        v90 = v68;
        v91 = v71;
        v92 = v66[2];
        if (v67)
        {
          v72 = v64;
        }

        else
        {
          v72 = v65;
        }

        v84 = 0;
        if (v72 > 0.0)
        {
          rnk1_core((a1 + 352), 9u, v72, &v88, &v84);
          v68 = 0uLL;
          v18 = v83;
          v69 = v84 != 0;
        }

        v67 = 0;
        v42 += v69;
        v66 = &v85[1] + 1;
      }

      while ((v70 & 1) != 0);
    }
  }

  v73 = 0;
  v74 = &v87;
  v75 = 0uLL;
  do
  {
    v88 = v75;
    v89 = v75;
    v76 = *(a2 + v73 + 224);
    v90 = v75;
    v91 = vmulq_n_f64(v76, v82);
    v77 = *(a2 + v73 + 240);
    v92 = v82 * v77;
    v93 = vmulq_n_f64(v76, v18);
    v94 = v18 * v77;
    if (v73 == 48)
    {
      v78 = a4[5].f64[1];
    }

    else
    {
      v78 = a4[5].f64[0] * *v74;
    }

    v79 = 0;
    v84 = 0;
    if (v78 > 0.0)
    {
      rnk1_core(a5, 0xCu, v78, &v88, &v84);
      v75 = 0uLL;
      v18 = v83;
      v79 = v84 != 0;
    }

    v42 += v79;
    ++v74;
    v73 += 24;
  }

  while (v73 != 72);
  if (v42)
  {
    gn_report_assertion_failure("Rank 1 update fail");
    *(a6 + 4) = 21;
    *a6 = 1;
  }

  else
  {
    ud2var(a5, 0xCu, 1, 0xCu, v80);
    Comp_NEDvar_UDU(a5, 0xCu, 6, (a2 + 224), v80 + 6);

    Comp_NEDvar_UDU(a5, 0xCu, 9, (a2 + 224), v80 + 9);
  }
}

uint64_t NK_Init_Cov_Mat(int a1, unsigned int a2, int a3, _BYTE *a4, uint64_t a5, unsigned __int8 *a6, _OWORD *a7, uint64_t a8, double a9, uint64_t a10, int64x2_t *a11, uint64_t a12)
{
  v13 = a1 ^ 1 | *a6;
  if (v13 == 1)
  {
    if (*a6)
    {
      v20 = vdupq_n_s64(0x4163125300000000uLL);
      *a11 = v20;
      a11[1] = v20;
      a11[2] = v20;
      a11[3] = v20;
    }

    a7[6] = 0u;
    a7[7] = 0u;
    a7[4] = 0u;
    a7[5] = 0u;
    a7[2] = 0u;
    a7[3] = 0u;
    *a7 = 0u;
    a7[1] = 0u;
    *a8 = -1;
    v21 = vdupq_n_s64(0x416312D000000000uLL);
    *(a8 + 40) = v21;
    *(a8 + 56) = v21;
    *(a8 + 88) = -1;
    *a10 = -1;
    *(a10 + 40) = v21;
    *(a10 + 56) = v21;
    *(a10 + 88) = -1;
    bzero((a5 + 8), 0x268uLL);
    v22 = ClkBiasOrigVar[a3];
    *a12 = v22;
    *a5 = v22;
    *(a12 + 8) = *a12;
    *(a5 + 16) = *a5;
    *(a12 + 16) = *a12;
    *(a5 + 40) = *a5;
    v23 = DT_SyncOrigVar[a3];
    *(a12 + 40) = v23;
    *(a5 + 160) = v23;
    *(a12 + 24) = 0x4022000000000000;
    *(a5 + 72) = 0x4022000000000000;
    v24 = a9 * 99930819.3 * (a9 * 99930819.3);
    *(a12 + 32) = v24;
    *(a5 + 112) = v24;
    if (a1)
    {
      v25 = 0x4222A05F20000000;
      if (*a4)
      {
        v25 = 0x4341C37937E08000;
      }
    }

    else
    {
      v25 = 0x4341C37937E08000;
    }

    *(a12 + 56) = v25;
    *(a12 + 64) = v25;
    *(a12 + 48) = v25;
    *(a5 + 352) = v25;
    *(a5 + 280) = v25;
    *(a5 + 216) = v25;
    if (a2 > 8)
    {
      v26 = 0x4197D78400000000;
    }

    else
    {
      v26 = qword_299051BE0[a2 & 0xF];
    }

    *(a12 + 80) = v26;
    *(a12 + 88) = v26;
    *(a12 + 72) = v26;
    *(a5 + 616) = v26;
    *(a5 + 520) = v26;
    *(a5 + 432) = v26;
    *a6 = 0;
    v27 = *(a6 + 2) + 1;
    *(a6 + 3) = 0;
    *(a6 + 4) = 0;
    *(a6 + 2) = v27;
    *(a6 + 6) = -1;
  }

  else
  {
    ++*(a6 + 3);
  }

  return v13;
}

void SV_Data_Decode(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = *MEMORY[0x29EDCA608];
  v15 = *(a6 + 24);
  if (*(a6 + 16) == 1 && *a6 >= 3)
  {
    v16 = *(a6 + 40) + 604800 * *(a6 + 32);
    v67 = v16;
    v17 = a3[3968] - v15;
    if (v17 > 0 || (v17 = a3[3969] - v15, v17 > 0) || (v17 = a3[3970] - v15, v17 > 0) || (v17 = a3[3971] - v15, v17 > 0) || (v17 = a3[3972] - v15, v17 >= 1))
    {
      v16 += v17 / 0x3E8u;
      v67 = v16;
    }
  }

  else
  {
    v16 = 0;
    v67 = 0;
  }

  if (*(a6 + 76) < 1)
  {
    v22 = 0;
  }

  else
  {
    v18 = a3[3969] - v15;
    if (v18 < 1)
    {
      v18 = 1000;
    }

    v19 = *(a6 + 88) + v18 * 0.001;
    v20 = -0.5;
    if (v19 > 0.0)
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
  }

  *(a2 + 64) = v22;
  DD_Delete_Bad_GPS_Data(a1, (a1 + 224), (a1 + 192), a7);
  DD_Delete_Inhib_GPS_Data(*(a4 + 488), a1, (a1 + 224), (a1 + 192), a7);
  DD_Delete_Bad_QZSS_Data((a1 + 3648), (a1 + 3718), (a1 + 3708), a7);
  DD_Delete_Inhib_QZSS_Data(*(a4 + 504), (a1 + 3648), (a1 + 3718), (a1 + 3708), a7);
  DD_Delete_Bad_GLON_Data(a1, a7);
  DD_Delete_Inhib_GLON_Data(*(a4 + 496), a1, a7);
  DD_Delete_Bad_BDS_Data(a7);
  DD_Delete_Inhib_BDS_Data(*(a4 + 520), a7);
  DD_Delete_Bad_GAL_Data(a1, a7);
  DD_Delete_Inhib_GAL_Data(*(a4 + 528), a1, a7);
  DD_Delete_Bad_NVIC_Data(a7);
  DD_Delete_Inhib_NVIC_Data(*(a4 + 816), a7);
  if (*(a4 + 1853) == 1 && v16 >= 1)
  {
    v23 = *(a4 + 1752);
    if (v23 >= 1 && v16 - v23 <= 604799)
    {
      v24 = a3 + 30;
      v25 = 128;
      do
      {
        *v24 = 0;
        v24 += 124;
        --v25;
      }

      while (v25);
    }
  }

  v26 = 0;
  v27 = (a2 + 20);
  *(a2 + 9) = 0;
  do
  {
    v28 = v26;
    v29 = &a3[31 * v26];
    if (*(v29 + 120) != 1)
    {
      goto LABEL_80;
    }

    v30 = *v29;
    *(a2 + 4) = *v29;
    if (v30 <= 3u)
    {
      if (v30 == 1)
      {
LABEL_47:
        v33 = &a3[31 * v28];
        v35 = *(v33 + 4);
        v34 = v33 + 1;
        if (v35 != 1)
        {
          goto LABEL_80;
        }

        if (*(v34 + 2) <= 5u && *(v34 + 2))
        {
          v36 = *(v34 + 2);
          v37 = *(v34 + 6);
          *(a2 + 52) = *(v34 + 5);
          *v27 = v36;
          *(a2 + 36) = v37;
          *(a2 + 60) = *(v34 + 2);
          if (v30 == 5)
          {
            if (*(a4 + 16) == 1 && (*(a4 + 37) & 1) == 0)
            {
              v50 = BYTE2(v30) - 193;
              if ((*(*(a4 + 504) + v50) & 1) == 0)
              {
                *(a2 + 8) = v50;
                DD_Proc_QZSS_Data(a1, a2, a6, &v67, a7);
              }
            }
          }

          else if (v30 == 1 && *(a4 + 14) == 1 && (*(a4 + 35) & 1) == 0)
          {
            v38 = BYTE2(v30) - 1;
            if ((*(*(a4 + 488) + v38) & 1) == 0)
            {
              *(a2 + 8) = v38;
              DD_Proc_GPS_Data(a1, a2, a6, &v67, a7);
            }
          }
        }
      }

      else
      {
        if (v30 != 2)
        {
          if (v30 == 3)
          {
            v31 = *(v29 + 1);
            v32 = BYTE2(v30) - 1;
            *(a2 + 8) = BYTE2(v30) - 1;
            if (*(v29 + 4) == 1)
            {
              if (*(a4 + 19) == 1 && (*(*(a4 + 528) + BYTE2(v30) - 1) & 1) == 0 && (*(a4 + 40) & 1) == 0 && *(v29 + 6) == 1)
              {
                if (*(v29 + 7))
                {
                  EvLog("SV_Data_Decode:  Galileo E1B I/NAV Alert Page decoding is not supported yet.");
                }

                else
                {
                  v59 = *(v29 + 22);
                  *(a2 + 74) = *(v29 + 7);
                  *(a2 + 68) = v59;
                  *(a2 + 82) = *(v29 + 4);
                  DD_Proc_GAL_INAV_Data((a2 + 68), v32, v31, a2, &v67, a1, a8, a6, a7);
                }
              }

              *(v29 + 4) = 0;
            }
          }

          goto LABEL_80;
        }

        v47 = &a3[31 * v28];
        v48 = *(v47 + 4);
        v34 = v47 + 1;
        if (v48 != 1)
        {
          goto LABEL_80;
        }

        if (*(v34 + 2) == 1 && *(a4 + 15) == 1 && (*(a4 + 36) & 1) == 0 && ((v51 = *(v34 + 1), v52 = *(a7 + 17424 + 4 * (v51 + 7)), v52 == 2139062143) || (*(*(a4 + 496) + v52 - 1) & 1) == 0))
        {
          *(a2 + 62) = v51;
          *v27 = 0u;
          *(a2 + 36) = 0u;
          *(a2 + 52) = 0;
          v53 = *(v34 + 1);
          *(a2 + 28) = v34[3];
          *v27 = v53;
          *(a2 + 16) = *(v34 + 3);
          if ((v51 + 7) <= 0xDu)
          {
            DD_Proc_GLON_Data(a1, a2, a4, a6, &v67, a7);
          }
        }

        else if (g_Logging_Cfg >= 6)
        {
          EvLog_v("SV_Data_Decode:  Glonass String Parity Fail %d  %x %x %x");
        }
      }

LABEL_79:
      *v34 = 0;
      goto LABEL_80;
    }

    if (v30 > 5u)
    {
      if (v30 != 6)
      {
        if (v30 == 7)
        {
          EvLog("SV_Data_Decode: SBAS Data decoding is NOT Supported.");
        }

        goto LABEL_80;
      }

      v41 = &a3[31 * v28];
      v42 = *(v41 + 4);
      v34 = v41 + 1;
      if (v42 != 1)
      {
        goto LABEL_80;
      }

      if (*(a4 + 20) == 1 && (*(a4 + 41) & 1) == 0 && (*(*(a4 + 816) + BYTE2(v30) - 1) & 1) == 0)
      {
        if (*(v34 + 7))
        {
          v43 = 0;
          *(a2 + 52) = 0;
          v44 = v34 + 2;
          *v27 = 0u;
          *(a2 + 36) = 0u;
          do
          {
            v45 = 0;
            v46 = 0;
            do
            {
              v46 = *(v44 + v45++) | (v46 << 8);
            }

            while (v45 != 4);
            *(v27 + v43++) = v46;
            ++v44;
          }

          while (v43 != 9);
          *(a2 + 56) = *(v34 + 44) << 24;
          *(a2 + 86) = *(v34 + 7);
          *(a2 + 8) = BYTE2(v30) - 1;
          *(a2 + 12) = *(v34 + 2);
          *(a2 + 200) = *(v34 + 1);
          DD_Proc_NVIC_Data(a1, a2, a6, &v67, a7);
        }

        else if (g_Logging_Cfg >= 6)
        {
          EvLog_v("SV_Data_Decode:  NavIC L5 checksum failed");
        }
      }

      goto LABEL_79;
    }

    if (v30 == 4)
    {
      v39 = &a3[31 * v28];
      v40 = *(v39 + 4);
      v34 = v39 + 1;
      if (v40 != 1)
      {
        goto LABEL_80;
      }

      if (*(a4 + 18) == 1 && (*(a4 + 39) & 1) == 0 && (*(*(a4 + 520) + BYTE2(v30) - 1) & 1) == 0)
      {
        if (*(v34 + 3))
        {
          *(a2 + 87) = *(v34 + 1);
          v54 = *(v34 + 5);
          v55 = *(v34 + 9);
          v56 = *(v34 + 13);
          *(a2 + 146) = *(v34 + 63);
          *(a2 + 135) = v56;
          *(a2 + 119) = v55;
          *(a2 + 103) = v54;
          v57 = *(v34 + 79);
          v58 = *(v34 + 95);
          *(a2 + 194) = *(v34 + 111);
          *(a2 + 178) = v58;
          *(a2 + 162) = v57;
          *(a2 + 85) = *(v34 + 1);
          *(a2 + 199) = *(v34 + 112);
          *(a2 + 8) = BYTE2(v30) - 1;
          DD_Proc_BDS_Data(a1, a2, a4, a6, &v67, a7);
        }

        else if (g_Logging_Cfg >= 6)
        {
          EvLog_v("SV_Data_Decode:  BeiDou B1C SF1 checksum failed", v61, v62, v63, v64);
        }
      }

      goto LABEL_79;
    }

    if (v30 == 5)
    {
      goto LABEL_47;
    }

LABEL_80:
    v49 = *(a2 + 9) + 1;
    v26 = v49;
    *(a2 + 9) = v49;
  }

  while ((v49 & 0x80) == 0);
  DD_Save_New_GPS_Eph(v67, (a1 + 288), (a1 + 3552), (a1 + 192), a7);
  DD_Save_New_QZSS_Eph(v67, (a1 + 3740), (a1 + 4760), (a1 + 3708), a7);
  DD_Save_New_GLON_Eph(v67, *(a6 + 76), *(a2 + 64), a7, a1);
  DD_Save_New_GLON_Alm(v67, a7, a1);
  DD_Save_New_GAL_INAV_Eph(v67, a1, a7);
  DD_Save_New_BDS_Eph(v67, a7, a1);
  if (!*(a7 + 62368))
  {
    v66 = 0;
    API_Get_Next_Leap_Second((a7 + 62368), (a7 + 62372), &v66);
    if ((v66 - 1) <= 0x7FFFFFFD)
    {
      API_Get_UTC_Cor(0, (a7 + 62376));
    }
  }

  DD_Check_Age_GPS_Data(v67, a1, (a1 + 224), (a1 + 192), a7);
  DD_Check_Age_QZSS_Data(v67, (a1 + 3648), (a1 + 3718), (a1 + 3708), a7);
  DD_Check_Age_GLON_Data(a6, a7, v60);
  DD_Check_GLON_Strings(*(a6 + 76), *(a2 + 64), a1, a7);
  DD_LS_Delete_EphAlm_Str(*(a7 + 62368), a6, a1);
  DD_Check_Age_BDS_Data(v67, a7);
  if (DD_Check_Age_GAL_Data(v67, a7))
  {
    DD_Delete_Bad_GAL_Data(a1, a7);
  }

  DD_Check_Age_NVIC_Data(v67, a7);
  if (*(a4 + 14) == 1)
  {
    DD_Assist_GPS_Data(a1, v67, a7, a4);
  }

  if (*(a4 + 16) == 1)
  {
    DD_Assist_QZSS_Data(a1, v67, a7, a4);
  }

  if (*(a4 + 15) == 1)
  {
    DD_Assist_GLON_Data(v67, a5, a7, a4);
  }

  if (*(a4 + 18) == 1)
  {
    DD_Assist_BDS_Data(v67, a5, a7, a4);
  }

  if (*(a4 + 19) == 1)
  {
    DD_Assist_GAL_Data(a1, v67, a5, a7, a4);
  }

  if (*(a4 + 20) == 1)
  {
    DD_Assist_NVIC_Data(v67, a5, a7, a4);
  }
}

void GncP16_01StopStateHndlrTimer(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (byte_2A13EC504 == 1)
  {
    if (AgpsFsmStopTimer(8656390))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v0 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP16_01StopStateHndlrTimer", 1545);
        v1 = 2;
LABEL_7:
        gnssOsa_PrintLog(__str, v1, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: State,%hhu,TimerStarted,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "GncP16_01StopStateHndlrTimer", g_GncPStateInfo, dword_2A13EC508);
      v1 = 5;
      goto LABEL_7;
    }

    byte_2A13EC504 = 0;
    dword_2A13EC508 = 0;
  }
}

void GncP16_02StartStateHndlrTimer(unsigned int a1)
{
  v5 = *MEMORY[0x29EDCA608];
  GncP16_01StopStateHndlrTimer();
  if (AgpsFsmStartTimer(8656390, a1))
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP16_02StartStateHndlrTimer", 1544, a1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    byte_2A13EC504 = 0;
  }

  else
  {
    byte_2A13EC504 = 1;
    dword_2A13EC508 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: State,%hhu,DueTime,%ums\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP16_02StartStateHndlrTimer", g_GncPStateInfo, a1);
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }
}

void GncP16_11StartME(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  GncP02_13ClearMEBuf();
  LOBYTE(g_GncPStateInfo) = 6;
  v2 = gnssOsa_Calloc("GncP16_09SendWakeMEReqtoGnm", 183, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ =>GNM GNSS FW NV restore,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_09SendWakeMEReqtoGnm", a1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 128, 8653056, v3);
  }

  v5 = 0;
  v6 = 0;
  v7 = -1;
  v8 = 1;
  do
  {
    while (1)
    {
      v9 = v8;
      v10 = &g_GncPCntxtInfo + 36 * v5;
      if (v10[8] != 1 || v10[4] != 1)
      {
        break;
      }

      v8 = 0;
      if (*(v10 + 6) < v7)
      {
        v7 = *(v10 + 6);
      }

      v5 = 1;
      v6 = 1;
      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v8 = 0;
    v5 = 1;
  }

  while ((v9 & 1) != 0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (v7 <= 0x3E7)
  {
    HSW_SetFixInterval(v7);
    goto LABEL_18;
  }

LABEL_17:
  HSW_SetFixInterval(200);
  BYTE5(g_GncPStateInfo) = 1;
LABEL_18:
  GN_GPS_WakeUp();
  dword_2A13EC4FC = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  byte_2A13EC4F8 = 1;
  byte_2A13EC4F0 = 0;
  GncP16_01StopStateHndlrTimer();
}

void GncP16_13CheckStopME(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = mach_continuous_time();
  if (BYTE2(g_GncPStateInfo) && (BYTE3(g_GncPStateInfo) & 1) == 0)
  {
    LOBYTE(g_GncPStateInfo) = 9;
  }

  v4 = byte_2A13EC4F0 | BYTE1(g_GncPStateInfo);
  if (BYTE6(g_GncPStateInfo) == 1)
  {
    v4 |= ((*&g_MacClockTicksToMsRelation * v2) - HIDWORD(g_GncPStateInfo)) >> 3 < 0x271;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FG,%u,BG,%u,FA,%u,FW,%u,LastAsstTick,%u,LastSleepTick,%u,MEOn,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP16_13CheckStopME", BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), HIDWORD(g_GncPStateInfo), dword_2A13EC4F4, v4 & 1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if ((v4 & 1) == 0)
  {
    GncP16_10StopME(0, a1, v3);
  }
}

void GncP16_10StopME(char a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    SleepTimeout = 0;
  }

  else
  {
    SleepTimeout = HSW_GetSleepTimeout();
  }

  GN_GPS_Sleep(SleepTimeout, a2, a3);
  if (g_GncPStateInfo == 9)
  {
    GncP16_01StopStateHndlrTimer();
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: State,%hhu,PE Sleep not ME\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP16_10StopME", g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  else
  {
    GncP03_SendGNSSSleepRequest(SleepTimeout, a2);
    if (SleepTimeout)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    LOBYTE(g_GncPStateInfo) = v6;
    GncP16_02StartStateHndlrTimer(0x3E8u);
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME to Sleep,%u,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 77, "GncP16_10StopME", SleepTimeout, a2);
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }

    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    dword_2A13EC4F4 = v8;
    byte_2A13EC4F0 = 1;
    if (byte_2A13EC4F8 == 1)
    {
      Ga05_UpdateBDSConsistencyStats(dword_2A13EC7B8, unk_2A13EC7BC, v8 - dword_2A13EC4FC, dword_2A13EC794);
    }

    byte_2A13EC4F8 = 0;
  }
}

uint64_t GncP16_15CheckStopMEClearReq(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FG,%u,FA,%u,SA,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncP16_15CheckStopMEClearReq", BYTE3(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v4 = 0;
  if ((BYTE1(g_GncPStateInfo) & 1) == 0 && !BYTE2(g_GncPStateInfo))
  {
    if (BYTE3(g_GncPStateInfo))
    {
      return 0;
    }

    else
    {
      v4 = 1;
      GncP16_10StopME(1, 0, a3);
      LOBYTE(g_GncPStateInfo) = 11;
    }
  }

  return v4;
}

void GncP16_16NewSessUpdtMEFixInt(void)
{
  v0 = 0;
  v1 = 0;
  v2 = -1;
  v3 = 1;
  do
  {
    while (1)
    {
      v4 = v3;
      v5 = &g_GncPCntxtInfo + 36 * v0;
      if (v5[8] != 1 || v5[4] != 1)
      {
        break;
      }

      v3 = 0;
      if (*(v5 + 6) < v2)
      {
        v2 = *(v5 + 6);
      }

      v0 = 1;
      v1 = 1;
      if ((v4 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = 0;
    v0 = 1;
  }

  while ((v4 & 1) != 0);
  if ((v1 & 1) == 0)
  {
    return;
  }

LABEL_11:
  if (v2 <= 0x3E7)
  {
    if (BYTE5(g_GncPStateInfo) == 1)
    {
      if (v2 < word_2A13C3B66)
      {
        HSW_SetFixInterval(v2);
        BYTE5(g_GncPStateInfo) = 0;
      }
    }

    else
    {

      HSW_SetFixInterval(v2);
    }
  }
}

void GncP16_17HandleInvalidState(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu,FA,%u,SA,%u,FG,%u,BG,%u,QFI,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 69, "GncP16_17HandleInvalidState", 260, g_GncPStateInfo, BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE5(g_GncPStateInfo));
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  snprintf(v2, 0x64uLL, "ASSERT: GNCState %d", g_GncPStateInfo);
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v1), "OSA", 69, "GncP16_17HandleInvalidState", v2);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  gnssOsa_FlushLog();
  __assert_rtn("GncP16_17HandleInvalidState", "gncpe16StateHndlr.cpp", 485, "false && Invalid State");
}

void GncP16_21ChkFWActRspPend(unsigned __int8 *result)
{
  v1 = result;
  if (BYTE7(g_GncPStateInfo) == 1)
  {
    GncP03_13SendStopFWActResp(result, 1u);
    BYTE7(g_GncPStateInfo) = 0;
  }

  if (BYTE8(g_GncPStateInfo) == 1)
  {
    GncP03_13SendStopFWActResp(v1, 3u);
    BYTE8(g_GncPStateInfo) = 0;
  }
}

void GncP16_23UpdateStateFGSession(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = g_GncPStateInfo;
  BYTE3(g_GncPStateInfo) = a1;
  if (a1)
  {
    BYTE6(g_GncPStateInfo) = 0;
  }

  if (g_GncPStateInfo <= 6u)
  {
    if (g_GncPStateInfo <= 2u)
    {
      if (g_GncPStateInfo != 1)
      {
LABEL_17:
        if (a1)
        {
          GncP16_11StartME(1);
        }

        goto LABEL_25;
      }

      goto LABEL_19;
    }

    if (g_GncPStateInfo - 5 < 2)
    {
      goto LABEL_25;
    }

    if (g_GncPStateInfo == 3)
    {
LABEL_19:
      if (a1)
      {
        LOBYTE(g_GncPStateInfo) = 5;
      }

      goto LABEL_25;
    }

    if (g_GncPStateInfo == 4)
    {
      goto LABEL_17;
    }

LABEL_33:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP16_23UpdateStateFGSession", 262, g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    GncP16_17HandleInvalidState();
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_11:
    if (g_GncPStateInfo == 7)
    {
      if (GncP16_12IsAwakeFGStateReq())
      {
        GncP16_16NewSessUpdtMEFixInt();
      }

      else
      {
        GncP16_13CheckStopME(0);
      }

      goto LABEL_25;
    }

    goto LABEL_33;
  }

  if (((1 << g_GncPStateInfo) & 0x1CC00) != 0)
  {
    goto LABEL_25;
  }

  if (g_GncPStateInfo != 8)
  {
    if (g_GncPStateInfo == 9)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    LOBYTE(g_GncPStateInfo) = 7;
    GncP16_16NewSessUpdtMEFixInt();
    GncP16_01StopStateHndlrTimer();
    if ((byte_2A13EC504 & 1) == 0)
    {
      GncP16_02StartStateHndlrTimer(0x5DCu);
    }
  }

LABEL_25:
  if (v1 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v4 = 78;
    if (BYTE3(g_GncPStateInfo))
    {
      v4 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,FGSessActive,%c\n", v3, "GNC", 73, "GncP16_23UpdateStateFGSession", 261, v1, g_GncPStateInfo, v4);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

BOOL GncP16_12IsAwakeFGStateReq(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = 1;
  if ((BYTE3(g_GncPStateInfo) & 1) == 0 && (BYTE1(g_GncPStateInfo) & 1) == 0)
  {
    if (BYTE6(g_GncPStateInfo) != 1 || (v3 = HIDWORD(g_GncPStateInfo), (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v3 > 0x1388))
    {
      v0 = 0;
    }
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FG,%u,BG,%u,FA,%u,FW,%u,LastAsstTick,%u,LastSleepTick,%u,Ret,%u\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP16_12IsAwakeFGStateReq", BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), HIDWORD(g_GncPStateInfo), dword_2A13EC4F4, v0);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return v0;
}

void GncP16_04RestartMEWdt(void)
{
  GncP16_01StopStateHndlrTimer();
  if ((byte_2A13EC504 & 1) == 0)
  {

    GncP16_02StartStateHndlrTimer(0x5DCu);
  }
}

void GncP16_25UpdateStateTimerExpiry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = g_GncPStateInfo;
  byte_2A13EC504 = 0;
  switch(g_GncPStateInfo)
  {
    case 0:
      GncP16_10StopME(1, 0, a3);
      break;
    case 1:
    case 3:
    case 5:
    case 11:
    case 16:
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NoAck State,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", 1298, g_GncPStateInfo);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      GncP04_21SendClearGnssAck(0);
      GncP04_19SendPosEvntResp(4);
      GncP16_21ChkFWActRspPend(0);
      dword_2A13EC4F4 = 0;
      byte_2A13EC4F0 = 0;
      if ((g_GncPStateInfo & 0xFD) == 1)
      {
        v5 = 4;
      }

      else
      {
        v5 = 0;
      }

      Hal_GnssBaseBandReset(v5);
      break;
    case 2:
      LOBYTE(g_GncPStateInfo) = 4;
      dword_2A13EC4F4 = 0;
      byte_2A13EC4F0 = 0;
      break;
    case 4:
    case 6:
    case 9:
    case 10:
    case 15:
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimerExp NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_25UpdateStateTimerExpiry", g_GncPStateInfo);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      break;
    case 7:
    case 8:
    case 14:
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: No ME data, LastReadMEData,%u, WDTExpiryCounter,%d\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", g_GncPMeData, byte_2A13EC500);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      if (byte_2A13EC500 == 6)
      {
        byte_2A13EC500 = 0;
        Hal_GnssBaseBandReset(3);
      }

      else
      {
        GncP16_01StopStateHndlrTimer();
        if ((byte_2A13EC504 & 1) == 0)
        {
          GncP16_02StartStateHndlrTimer(0x5DCu);
        }
      }

      ++byte_2A13EC500;
      break;
    default:
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", 262, g_GncPStateInfo);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      GncP16_17HandleInvalidState();
  }

  if (v3 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP16_25UpdateStateTimerExpiry", 261, v3, g_GncPStateInfo);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

void GncP16_26UpdateStateMEDataRcvd(void)
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = g_GncPStateInfo;
  v1 = g_GncPStateInfo;
  if (BYTE5(g_GncPStateInfo) == 1)
  {
    if (byte_2A13EC4F8 == 1)
    {
      v2 = dword_2A13EC4FC;
      if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v2 < 0x61A9)
      {
        v4 = dword_2A13EC4FC;
        if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v4 < 0x1389 || word_2A13C3B66 != 200)
        {
          goto LABEL_9;
        }

        v3 = 500;
      }

      else
      {
        BYTE5(g_GncPStateInfo) = 0;
        v3 = 1000;
      }

      HSW_SetFixInterval(v3);
    }

LABEL_9:
    v1 = g_GncPStateInfo;
  }

  if (v1 <= 7)
  {
    if (v1 <= 3)
    {
      if (v1 != 2)
      {
        goto LABEL_20;
      }

      goto LABEL_48;
    }

    if (v1 <= 5)
    {
      if (v1 != 4)
      {
LABEL_20:
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v6 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MEData NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP16_26UpdateStateMEDataRcvd", g_GncPStateInfo);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        goto LABEL_49;
      }

LABEL_48:
      GncP16_13CheckStopME(0);
      goto LABEL_49;
    }

    if (v1 != 6)
    {
      if (!GncP16_12IsAwakeFGStateReq())
      {
        GncP16_13CheckStopME(0);
      }

      byte_2A13EC500 = 0;
      GncP16_01StopStateHndlrTimer();
      if (byte_2A13EC504)
      {
        goto LABEL_49;
      }

LABEL_44:
      GncP16_02StartStateHndlrTimer(0x5DCu);
      goto LABEL_49;
    }

    LOBYTE(g_GncPStateInfo) = 7;
    GncP04_19SendPosEvntResp(8);
LABEL_43:
    GncP16_01StopStateHndlrTimer();
    if (byte_2A13EC504)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  if (v1 > 10)
  {
    if ((v1 - 14) >= 3 && v1 != 11)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP16_26UpdateStateMEDataRcvd", 262, g_GncPStateInfo);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      GncP16_17HandleInvalidState();
    }

    goto LABEL_20;
  }

  if (v1 == 8)
  {
    HSW_SetFixInterval(1000);
    if (!GncP16_12IsAwakeFGStateReq())
    {
      if (BYTE4(g_GncPStateInfo))
      {
        GncP16_04RestartMEWdt();
        goto LABEL_49;
      }

      GncP16_01StopStateHndlrTimer();
      goto LABEL_48;
    }

    LOBYTE(g_GncPStateInfo) = 7;
    goto LABEL_43;
  }

  if (v1 == 9)
  {
    if (BYTE2(g_GncPStateInfo))
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (qword_2A1454210)
  {
    if (*qword_2A1454210)
    {
      if (byte_2A13EC4F0 != 1 || (v7 = dword_2A13EC4F4, (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v7 >= 0xC9))
      {
        GncP16_01StopStateHndlrTimer();
        GncP16_10StopME(1, 0, v8);
        if ((BYTE3(g_GncPStateInfo) & 1) != 0 || (BYTE4(g_GncPStateInfo) & 1) != 0 || BYTE2(g_GncPStateInfo))
        {
          LOBYTE(g_GncPStateInfo) = 11;
        }
      }
    }
  }

LABEL_49:
  if (v0 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncP16_26UpdateStateMEDataRcvd", 261, v0, g_GncPStateInfo);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

void GncP16_27UpdateStateClearNVReqRcvd(const char *__src, size_t __n, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = g_GncPStateInfo;
  if (g_GncPStateInfo > 0x10u)
  {
    goto LABEL_18;
  }

  if (((1 << g_GncPStateInfo) & 0x1083F) != 0)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: state added %hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_27UpdateStateClearNVReqRcvd", g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    goto LABEL_5;
  }

  if (((1 << g_GncPStateInfo) & 0xC640) != 0)
  {
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_10;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ClearNV NotHandled in State,%hhu\n");
    goto LABEL_9;
  }

  if (((1 << g_GncPStateInfo) & 0x180) == 0)
  {
LABEL_18:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP16_27UpdateStateClearNVReqRcvd", 262, g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    GncP16_17HandleInvalidState();
  }

  if (GncP16_15CheckStopMEClearReq(__src, __n, a3))
  {
LABEL_5:
    GncP16_06ClearNVStore(__src, __n);
    goto LABEL_10;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ClearNV NotHandled GPS running State,%hhu\n");
LABEL_9:
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

LABEL_10:
  if (v3 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,Reset,%s\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP16_27UpdateStateClearNVReqRcvd", 261, v3, g_GncPStateInfo, __src);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

void GncP16_06ClearNVStore(const char *__src, size_t __n)
{
  v5 = *MEMORY[0x29EDCA608];
  if (__n <= 0xF)
  {
    v2 = qword_2A1454220;
    if (qword_2A1454220)
    {
      *v3 = 0;
      v4 = 0;
      strncpy_s(v3, 0x10u, __src, __n);
      GN_GPS_Clear_NV_Data(v2, v3);
      bzero(g_GncP_PEUpdate, 0x1900uLL);
    }
  }
}

void GncP16_28UpdateStateResetStatus(int a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = g_GncPStateInfo;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: State,%hhu,Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP16_28UpdateStateResetStatus", g_GncPStateInfo, a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        if (g_GncPStateInfo != 15 || g_LbsOsaTrace_Config == 0)
        {
          goto LABEL_30;
        }

        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HW Error\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "GncP16_28UpdateStateResetStatus", 1308);
        v9 = 1;
LABEL_28:
        gnssOsa_PrintLog(__str, v9, 1, 0);
        goto LABEL_30;
      }

      if (a1 != 5)
      {
LABEL_19:
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_30;
        }

        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP16_28UpdateStateResetStatus", 770, a1);
        v9 = 2;
        goto LABEL_28;
      }

      if (!g_GncPStateInfo)
      {
        GncP16_10StopME(1, 0, a3);
        goto LABEL_30;
      }

      if (g_GncPStateInfo != 15)
      {
        goto LABEL_30;
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HW Ready\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_28UpdateStateResetStatus", 1307);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

LABEL_22:
      GncP16_11StartME(1);
      goto LABEL_30;
    }

    v7 = 15;
LABEL_18:
    LOBYTE(g_GncPStateInfo) = v7;
    GncP04_19SendPosEvntResp(5);
    goto LABEL_30;
  }

  if (!a1)
  {
    v7 = 14;
    goto LABEL_18;
  }

  if (a1 == 1)
  {
    if (g_GncPStateInfo != 14)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  if (a1 != 2)
  {
    goto LABEL_19;
  }

  if (g_GncPStateInfo == 14)
  {
    LOBYTE(g_GncPStateInfo) = 15;
  }

LABEL_30:
  if (v4 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 73, "GncP16_28UpdateStateResetStatus", 261, v4, g_GncPStateInfo, a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

void GncP16_31UpdateStateMEPowerState(unsigned int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = g_GncPStateInfo;
  g_DeRegGnssCount = 0;
  if (g_GncPStateInfo <= 2u)
  {
    if (!g_GncPStateInfo)
    {
      goto LABEL_4;
    }

    if (g_GncPStateInfo == 1)
    {
      if ((a1 & 0xFFFFFFFB) == 3)
      {
        LOBYTE(g_GncPStateInfo) = 2;
        dword_2A13EC4F4 = 0;
        byte_2A13EC4F0 = 0;
        GncP16_01StopStateHndlrTimer();
        SleepTimeout = HSW_GetSleepTimeout();
        if (SleepTimeout)
        {
          GncP16_02StartStateHndlrTimer(1000 * SleepTimeout);
        }

        goto LABEL_34;
      }

      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_34;
      }

      bzero(__str, 0x3C6uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Expected,SLEEP,MEResp,%hhu\n", v10);
LABEL_33:
      v4 = 2;
LABEL_6:
      gnssOsa_PrintLog(__str, v4, 1, 0);
      goto LABEL_34;
    }

    if (g_GncPStateInfo == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_23:
    if (g_GncPStateInfo == 3)
    {
      if (a1 <= 7 && ((1 << a1) & 0xB0) != 0)
      {
        LOBYTE(g_GncPStateInfo) = 4;
        dword_2A13EC4F4 = 0;
        byte_2A13EC4F0 = 0;
        GncP16_01StopStateHndlrTimer();
        goto LABEL_34;
      }

      goto LABEL_29;
    }

LABEL_44:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP16_31UpdateStateMEPowerState", 262, g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    GncP16_17HandleInvalidState();
  }

  if (((1 << g_GncPStateInfo) & 0xC7D0) != 0)
  {
LABEL_4:
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_34;
    }

    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MEPowerState,%hhu NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncP16_31UpdateStateMEPowerState", a1, g_GncPStateInfo);
    v4 = 4;
    goto LABEL_6;
  }

  if (((1 << g_GncPStateInfo) & 0x820) == 0)
  {
    if (g_GncPStateInfo == 16)
    {
      if (a1 <= 7 && ((1 << a1) & 0xB8) != 0)
      {
        GncP04_19SendPosEvntResp(3);
        GncP16_21ChkFWActRspPend(1);
        GncP04_21SendClearGnssAck(1);
        dword_2A13EC4F4 = 0;
        byte_2A13EC4F0 = 0;
        v5 = 0;
        goto LABEL_22;
      }

LABEL_29:
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_34;
      }

      bzero(__str, 0x3C6uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Expected,COMA,MEResp,%hhu\n", v11);
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  if (a1 <= 7 && ((1 << a1) & 0xB8) != 0)
  {
    GncP04_19SendPosEvntResp(3);
    GncP16_21ChkFWActRspPend(1);
    GncP04_21SendClearGnssAck(1);
    dword_2A13EC4F4 = 0;
    byte_2A13EC4F0 = 0;
    v5 = 1;
LABEL_22:
    GncP16_11StartME(v5);
    goto LABEL_34;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Expected,SLEEP COMA,MEResp,%hhu\n", v12);
    goto LABEL_33;
  }

LABEL_34:
  if (v2 != g_GncPStateInfo)
  {
    if (g_GncPStateInfo == 4 || g_GncPStateInfo == 2)
    {
      GncP04_21SendClearGnssAck(1);
      GncP16_21ChkFWActRspPend(1);
      GncP04_19SendPosEvntResp(3);
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,MEPowerState,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP16_31UpdateStateMEPowerState", 261, v2, g_GncPStateInfo, a1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }
}

void GncP16_33HandleFwActiveReq(int a1, int a2)
{
  v3 = a1;
  v12 = *MEMORY[0x29EDCA608];
  v4 = g_GncPStateInfo;
  v5 = g_GncPStateInfo;
  switch(a2)
  {
    case 3:
      if (a1)
      {
        v6 = BYTE2(g_GncPStateInfo) | 4;
      }

      else
      {
        v6 = BYTE2(g_GncPStateInfo) & 0xFB;
      }

      goto LABEL_15;
    case 2:
      if (a1)
      {
        v6 = BYTE2(g_GncPStateInfo) | 2;
      }

      else
      {
        v6 = BYTE2(g_GncPStateInfo) & 0xFD;
      }

      goto LABEL_15;
    case 1:
      if (a1)
      {
        v6 = BYTE2(g_GncPStateInfo) | 1;
      }

      else
      {
        v6 = BYTE2(g_GncPStateInfo) & 0xFE;
      }

LABEL_15:
      BYTE2(g_GncPStateInfo) = v6;
      goto LABEL_16;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP16_33HandleFwActiveReq", 770);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    v5 = g_GncPStateInfo;
  }

LABEL_16:
  if (v5 > 6)
  {
    if (v5 > 0x10)
    {
      goto LABEL_39;
    }

    if (((1 << v5) & 0x1CC00) != 0)
    {
      goto LABEL_45;
    }

    if (v5 == 8)
    {
      if (BYTE2(g_GncPStateInfo))
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (v5 == 9)
    {
      if (BYTE2(g_GncPStateInfo))
      {
        goto LABEL_45;
      }

      if ((a2 & 0xFFFFFFFD) == 1)
      {
        LOBYTE(g_GncPStateInfo) = 7;
      }
    }

    else
    {
LABEL_39:
      if (v5 != 7)
      {
        goto LABEL_56;
      }

      if (BYTE2(g_GncPStateInfo) || GncP16_12IsAwakeFGStateReq())
      {
        goto LABEL_45;
      }
    }

LABEL_44:
    GncP16_13CheckStopME(0);
    goto LABEL_45;
  }

  if (v5 > 2)
  {
    if ((v5 - 5) < 2)
    {
      goto LABEL_45;
    }

    if (v5 == 3)
    {
      goto LABEL_33;
    }

    if (v5 == 4)
    {
LABEL_31:
      if (!BYTE2(g_GncPStateInfo))
      {
        goto LABEL_45;
      }

      v8 = 9;
LABEL_35:
      LOBYTE(g_GncPStateInfo) = v8;
      goto LABEL_45;
    }

LABEL_56:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP16_33HandleFwActiveReq", 262, g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    GncP16_17HandleInvalidState();
  }

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_31;
    }

LABEL_33:
    if (!BYTE2(g_GncPStateInfo))
    {
      goto LABEL_45;
    }

    v8 = 5;
    goto LABEL_35;
  }

  if (BYTE2(g_GncPStateInfo))
  {
    LOBYTE(g_GncPStateInfo) = 9;
    if (a2 == 2)
    {
      goto LABEL_44;
    }
  }

LABEL_45:
  if (v4 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,FWAct,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP16_33HandleFwActiveReq", 261, v4, g_GncPStateInfo, BYTE2(g_GncPStateInfo));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if ((v3 & 1) == 0)
  {
    if ((g_GncPStateInfo & 0xFD) == 1)
    {
      if (a2 == 3)
      {
        BYTE8(g_GncPStateInfo) = 1;
        return;
      }

      if (a2 == 1)
      {
        BYTE7(g_GncPStateInfo) = 1;
        return;
      }
    }

    GncP03_13SendStopFWActResp(1u, a2);
  }
}

BOOL GncP16_34HandleRestartAcq(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = g_GncPStateInfo;
  if (g_GncPStateInfo > 0x10u)
  {
    goto LABEL_18;
  }

  if (((1 << g_GncPStateInfo) & 0xCE7F) != 0)
  {
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_8;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NotHandled State,%hhu\n");
    goto LABEL_5;
  }

  if (((1 << g_GncPStateInfo) & 0x180) != 0)
  {
    GncP16_10StopME(1, 0, a3);
    LOBYTE(g_GncPStateInfo) = 16;
    goto LABEL_8;
  }

  if (g_GncPStateInfo != 16)
  {
LABEL_18:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP16_34HandleRestartAcq", 262, g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    GncP16_17HandleInvalidState();
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", v9);
LABEL_5:
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

LABEL_8:
  v4 = g_GncPStateInfo;
  if (v3 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_34HandleRestartAcq", 261, v3, g_GncPStateInfo);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return v3 != v4;
}

void GncP16_51MEPowerStateInd(unsigned __int8 a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncP16_51MEPowerStateInd", 1327, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_POWER_STATE_IND =>GNCP Stat,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_51MEPowerStateInd", v3[12]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8655107, v3);
  }
}

uint64_t GncP16_52HandleMEPowerStateInd(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_POWER_STATE_IND Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_52HandleMEPowerStateInd", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    GncP16_31UpdateStateMEPowerState(*(a1 + 12));
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP16_52HandleMEPowerStateInd", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t GncP16_54HandleMEWakeResp(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_RSP Resp,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_54HandleMEWakeResp", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (*(a1 + 12))
    {
      if (g_GncPStateInfo == 6)
      {
        LOBYTE(g_GncPStateInfo) = 7;
        GncP04_19SendPosEvntResp(8);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v3 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncP16_54HandleMEWakeResp", 261, 6, g_GncPStateInfo);
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }

        GncP16_01StopStateHndlrTimer();
        if ((byte_2A13EC504 & 1) == 0)
        {
          GncP16_02StartStateHndlrTimer(0x5DCu);
        }
      }
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MEWake Error,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP16_54HandleMEWakeResp", *(a1 + 12));
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      GncP04_19SendPosEvntResp(9);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP16_54HandleMEWakeResp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t GncP16_55HandleStartFwActiveInd(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_START_FW_ACTIVE_IND Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_55HandleStartFwActiveInd", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    GncP16_33HandleFwActiveReq(1, *(a1 + 12));
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP16_55HandleStartFwActiveInd", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t GncP16_56HandleStopFwActiveReq(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_REQ Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_56HandleStopFwActiveReq", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    GncP16_33HandleFwActiveReq(0, *(a1 + 12));
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP16_56HandleStopFwActiveReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void GncP16_99DeInitStateHndlr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (g_GncPStateInfo - 7 <= 1)
  {
    GncP16_10StopME(1, 0, a3);
  }

  if (byte_2A13EC504 == 1)
  {

    AgpsFsmStopTimer(8656390);
  }
}

uint64_t NK_Tunnel_Assist(uint64_t a1, float64x2_t *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v23 = 0u;
  *v24 = 0u;
  v4 = &a2[3763].f64[1];
  memset(v22, 0, sizeof(v22));
  if ((Core_Get_ExtA_TunnelEP(30000, v22) & 1) == 0)
  {
    result = 0;
    v4[2188] = 0;
    return result;
  }

  v5 = a1 + 24576;
  v4[2188] = 1;
  v6 = v22[0];
  *(v4 + 550) = HIDWORD(a2->f64[0]) - LODWORD(v22[0]);
  if ((*(a1 + 27250) & 1) == 0)
  {
    result = 0;
    v8 = 38;
    goto LABEL_7;
  }

  if (v6 == *(a1 + 27200))
  {
    result = 0;
    v8 = 39;
LABEL_7:
    *(v4 + 548) = v8;
    return result;
  }

  if (BYTE3(a2[423].f64[0]) < 3u)
  {
    result = 0;
    v8 = 40;
    goto LABEL_7;
  }

  LOWORD(v9) = WORD4(v23);
  v11 = *(&v22[1] + 1);
  v10 = *&v23;
  if (!WORD4(v23))
  {
    if (vabdd_f64(*(&v22[1] + 1), *&v23) >= 1.0)
    {
      LOWORD(v9) = 0;
    }

    else
    {
      v11 = *(&v22[1] + 1) + *(&v22[1] + 1);
      v10 = *&v23 * 0.5;
      v9 = *(a1 + 27328);
      if (v9 > 179)
      {
        LOWORD(v9) = v9 - 180;
      }
    }
  }

  v12 = v9;
  v13 = BYTE10(v23);
  v14 = v24[0];
  v15 = v24[1];
  v20 = *(v22 + 8);
  v21 = v10;
  EvLog_v("NK_Tunnel_Assist: Applying %d LL %g %g %d %d %d H %d %f %d", v6, *(v22 + 1), *&v22[1], v11, v10, v9, BYTE10(v23), v24[0], v24[1]);
  *v4 = 1;
  *(v4 + 4) = 0x300000001;
  *(v4 + 3) = 0;
  v4[16] = 0;
  v16 = LODWORD(a2->f64[0]);
  *(v4 + 5) = LODWORD(a2->f64[0]);
  v17.f64[0] = v21;
  a2[3765] = vmulq_f64(v20, vdupq_n_s64(0x3F91DF46A2529D44uLL));
  *(v4 + 6) = v11 * v11;
  v17.f64[1] = v12;
  v18.f64[0] = v21;
  v18.f64[1] = 0.0174532925;
  v19 = vmulq_f64(v17, v18);
  a2[3767] = v19;
  *(v4 + 9) = v11 * v11;
  *(v4 + 10) = *&v19.f64[0];
  *(v4 + 13) = 0x4039000000000000;
  if (v13 == 1)
  {
    v4[128] = 1;
    *(v4 + 132) = 0x200000001;
    *(v4 + 35) = 0;
    v4[144] = 0;
    *(v4 + 37) = v16;
    *(v4 + 19) = v14;
    *(v4 + 20) = v15 * v15;
    *(v4 + 21) = v15 * v15;
    *(v4 + 23) = 0x4039000000000000;
  }

  *(v5 + 2624) = v6;
  return 1;
}

double GLON_RK_CalcAccel(double **a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = **a1;
  v5 = (*a1)[2] * (*a1)[2];
  v6 = 1.0 / sqrt(v4 * v4 + (*a1)[1] * (*a1)[1] + v5);
  v7 = v6 * v6;
  v8 = v6 * (v6 * v6) * -3.9860044e14;
  v9 = v7 * 6.60628282e10;
  v10 = 1.0 - (v7 + v7 * 4.0) * v5;
  v11 = v10 + 2.0;
  v12 = v8 * (v9 * v10 + 1.0) + 0.00000000531749412;
  v13 = a1[2];
  *a2 = *v13 + v3[1] * 0.0001458423 + v4 * v12;
  a2[1] = v13[1] + *v3 * -0.0001458423 + v2[1] * v12;
  result = v13[2] + v2[2] * (v8 * (v9 * v11 + 1.0));
  a2[2] = result;
  return result;
}

void GLON_RungeKutta4(double **a1, unsigned int a2)
{
  v57 = *MEMORY[0x29EDCA608];
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  *&v37[16] = 0u;
  v38 = 0u;
  v36 = 0u;
  *v37 = 0u;
  v5 = *a1;
  v4 = a1[1];
  v6 = **a1;
  *v37 = (*a1)[2];
  v36 = v6;
  v7 = *(v4 + 2);
  *&v37[8] = *v4;
  *&v37[24] = v7;
  v8 = a1[2];
  v9 = *v8;
  v39 = *(v8 + 2);
  v38 = v9;
  v10 = *(v8 + 2);
  v53 = *v8;
  v48 = v9;
  v56 = 0;
  v30[0] = &v50;
  v30[1] = &v51 + 1;
  v30[2] = &v53;
  v28[0] = &v45;
  v28[1] = &v46 + 1;
  v31 = 0;
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v28[2] = &v48;
  v26[0] = &v40;
  v26[1] = &v41 + 1;
  v26[2] = &v43;
  v24[0] = &v36;
  v24[1] = &v37[8];
  v24[2] = &v38;
  v54 = v10;
  v49 = v39;
  v43 = v9;
  v44 = v39;
  *(a1 + 6) += a2;
  GLON_RK_CalcAccel(v24, v35);
  *(&v55[1] + 8) = *&v37[8];
  *(&v55[2] + 1) = *&v37[24];
  v11 = a2;
  v12 = vcvtd_n_f64_s32(a2, 1uLL);
  for (i = 5; i != 2; --i)
  {
    v14 = (&v50 + i * 8);
    *(v14 - 3) = v35[i] + v12 * *(v55 + i * 8);
    *v14 = *&v37[i * 8 - 16] + v12 * v34[i];
  }

  GLON_RK_CalcAccel(v30, v34);
  for (j = 5; j != 2; --j)
  {
    v16 = (&v45 + j * 8);
    *(v16 - 3) = v35[j] + v12 * *(&v50 + j * 8);
    *v16 = *&v37[j * 8 - 16] + v12 * v33[j];
  }

  GLON_RK_CalcAccel(v28, v33);
  for (k = 5; k != 2; --k)
  {
    v18 = (&v40 + k * 8);
    *(v18 - 3) = v35[k] + v11 * *(&v45 + k * 8);
    *v18 = *&v37[k * 8 - 16] + v11 * v32[k];
  }

  GLON_RK_CalcAccel(v26, v32);
  v19 = *&v55[2];
  *v5 = *&v36 + v11 * 0.166666667 * (*(&v41 + 1) + *(&v55[1] + 1) + (*(&v51 + 1) + *(&v46 + 1)) * 2.0);
  v5[1] = *(&v36 + 1) + v11 * 0.166666667 * (*&v42 + v19 + (*&v52 + *&v47) * 2.0);
  v5[2] = *v37 + v11 * 0.166666667 * (*(&v42 + 1) + *(&v55[2] + 1) + (*(&v52 + 1) + *(&v47 + 1)) * 2.0);
  v20 = v34[1];
  v21 = v33[1];
  v22 = v35[1];
  v23 = v32[1];
  *v4 = *&v37[8] + v11 * 0.166666667 * (v32[0] + v35[0] + (v34[0] + v33[0]) * 2.0);
  v4[1] = *&v37[16] + v11 * 0.166666667 * (v23 + v22 + (v20 + v21) * 2.0);
  v4[2] = *&v37[24] + v11 * 0.166666667 * (v32[2] + v35[2] + (v34[2] + v33[2]) * 2.0);
  GLON_RK_CalcAccel(a1, v8);
}

void NK_Heading(uint64_t result, int *a2, unsigned int a3)
{
  v4 = a2 + 19952;
  v5 = a2 + 15260;
  v6 = result + 24576;
  v7 = *(result + 27250);
  if (*(result + 27250))
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.5;
  }

  v9 = *(a2 + 232);
  *(a2 + 9978) = v9;
  if (*(result + 27120) <= *(result + 16) && a2[468] == 1)
  {
    v11 = *(result + 148);
    if (v11 >= *(result + 152))
    {
      v11 = *(result + 152);
    }

    if (v11 >= *(result + 156))
    {
      v11 = *(result + 156);
    }

    if (v11 >= 0xB)
    {
      *(result + 27288) = 0;
      v12 = *(result + 27204);
      if (v12 == 3)
      {
        a2[19960] = 2;
        v13 = *(result + 27276);
        *(result + 27304) = *(a2 + 213);
        *(result + 27312) = *(a2 + 214);
        *(result + 27320) = 1;
        if (!v13)
        {
          *(result + 27276) = 1;
        }

        goto LABEL_98;
      }

      v19 = *(a2 + 228) * *(a2 + 228);
      v20 = *(a2 + 227) * *(a2 + 227);
      if (v19 < 0.000001 && v20 < 0.000001)
      {
        v20 = 0.000001;
        v19 = 0.000001;
      }

      v21 = fmin(sqrt(57.2957795 / (v20 + v19) * ((*(a2 + 7700) * v19 + *(a2 + 7701) * v20) * (57.2957795 / (v20 + v19)))), 180.0);
      *(a2 + 9977) = v21;
      Comp_Track8(a2 + 227);
      *v4 = v22;
      if (v21 < 30.0)
      {
        v23 = v7;
      }

      else
      {
        v23 = 0;
      }

      if (((a3 < 6) & v23) != 0)
      {
        v24 = 2.0;
      }

      else
      {
        v24 = 4.0;
      }

      v25 = v22 - v9;
      if (v22 - v9 >= 180.0)
      {
        v26 = -360.0;
      }

      else
      {
        if (v25 >= -180.0)
        {
LABEL_30:
          v27 = *(a2 + 231);
          if (*(v5 + 1308) != 1 || a3 <= 5 && (*(v5 + 1181) & 1) == 0)
          {
            if (v27 > v24 && v21 < 60.0)
            {
              *(result + 27280) = v22;
              v29 = 3;
              goto LABEL_89;
            }

            if (v12 == 2 && v7 && fabs(v25) > 90.0 && v21 > 45.0)
            {
              *(result + 27280) = v9;
              *(v4 + 3) = 0;
              v29 = 6;
              v22 = v9;
              goto LABEL_89;
            }

            if (v27 > 4.0 && v21 >= 60.0)
            {
              v30 = 1.0 / (v21 / 60.0 * (v21 / 60.0));
              *(v4 + 3) = v30;
              v22 = v9 + v30 * v25;
              *(result + 27280) = v22;
              v31 = 360.0;
              if (v22 >= 360.0)
              {
                v31 = -360.0;
              }

              else if (v22 >= 0.0)
              {
                goto LABEL_71;
              }

              v22 = v22 + v31;
              *(result + 27280) = v22;
LABEL_71:
              v29 = 4;
              goto LABEL_89;
            }

            if (v27 > v8)
            {
              v34 = 1.0;
              if (v21 > 10.0)
              {
                v35 = v21 > 40.0 || v27 <= 1.0;
                if (v35)
                {
                  v34 = fmin(0.93 / fmax(fabs(v25), 2.22044605e-16) + 0.07, 0.25);
                }

                else
                {
                  v34 = 0.25 / (v21 / 40.0);
                }
              }

              *(v4 + 3) = v34;
              v22 = v9 + v34 * v25;
              *(result + 27280) = v22;
              v41 = 360.0;
              if (v22 >= 360.0)
              {
                v41 = -360.0;
              }

              else if (v22 >= 0.0)
              {
                goto LABEL_88;
              }

              v22 = v22 + v41;
              *(result + 27280) = v22;
LABEL_88:
              v29 = 5;
              goto LABEL_89;
            }

            v38 = v22 - *(v5 + 311);
            if (v38 >= 180.0)
            {
              v39 = -360.0;
            }

            else
            {
              if (v38 >= -180.0)
              {
                goto LABEL_74;
              }

              v39 = 360.0;
            }

            v38 = v38 + v39;
LABEL_74:
            if (a3 - 5 >= 3 && *(v5 + 1084) >= 8u && v21 < 10.0 && *(v5 + 2776) == 1 && fabs(v38) < 10.0 && *(v5 + 289) < 0.1)
            {
              v29 = 3;
              v40 = 1.0;
            }

            else
            {
              v29 = 6;
              v40 = 0.0;
              v22 = v9;
            }

            *(result + 27280) = v22;
            *(v4 + 3) = v40;
            goto LABEL_89;
          }

          v32 = v22 - *v5;
          if (v32 >= 180.0)
          {
            v33 = -360.0;
          }

          else
          {
            if (v32 >= -180.0)
            {
LABEL_61:
              if (v27 >= v24)
              {
                v37 = fabs(v32);
                v35 = v37 <= 45.0;
                v36 = 15.0 / v37;
                if (v35)
                {
                  v36 = 0.0;
                }
              }

              else
              {
                v36 = v27 * 0.1;
              }

              v22 = *v5 + v36 * v32;
              *(result + 27280) = v22;
              *(v4 + 3) = v36;
              v29 = 7;
LABEL_89:
              v4[8] = v29;
              *(v6 + 2700) = 3;
              v42 = *a2;
              *(v6 + 2720) = *a2;
              if (v21 < 10.0 && *(v5 + 1085) >= 6u)
              {
                *(result + 27328) = v22;
                *(v6 + 2760) = v42;
              }

              v43 = v22 - v9;
              *(result + 27288) = v43;
              if (v43 >= 180.0)
              {
                v44 = -360.0;
              }

              else
              {
                if (v43 >= -180.0)
                {
LABEL_97:
                  *(result + 27304) = *(a2 + 213);
                  *(result + 27312) = *(a2 + 214);
                  *(v6 + 2744) = 1;
LABEL_98:
                  *(a2 + 232) = *(result + 27280);
                  return;
                }

                v44 = 360.0;
              }

              *(result + 27288) = v43 + v44;
              goto LABEL_97;
            }

            v33 = 360.0;
          }

          v32 = v32 + v33;
          goto LABEL_61;
        }

        v26 = 360.0;
      }

      v25 = v25 + v26;
      goto LABEL_30;
    }
  }

  Comp_Track8(a2 + 227);
  *(a2 + 232) = v14;
  v15 = *(a2 + 228) * *(a2 + 228);
  v16 = *(a2 + 227) * *(a2 + 227);
  if (v15 < 0.000001 && v16 < 0.000001)
  {
    v16 = 0.000001;
    v15 = 0.000001;
  }

  v17 = sqrt(57.2957795 / (v16 + v15) * ((*(v5 + 70) * v15 + *(v5 + 71) * v16) * (57.2957795 / (v16 + v15))));
  *v4 = v14;
  *(v4 + 1) = fmin(v17, 180.0);
  v4[8] = 1;
}

uint64_t Kep_Check_Almanac(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (a1 - 255 > v2)
  {
    do
    {
      v2 += 256;
    }

    while (a1 - 255 > v2);
    *(a2 + 16) = v2;
  }

  v3 = *(a2 + 20);
  if (v3 <= 604799)
  {
    v4 = v3 >> 31;
  }

  else
  {
    v4 = 2;
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  v7 = v5 & 0xFFFFFFFE;
  if ((v5 & 0xFFFFFFFE) == 6 || (v8 = 4800.0, v5 == 4) && (v6 - 59) <= 0xCAu)
  {
    v8 = *"";
  }

  if (v5 == 5)
  {
    goto LABEL_14;
  }

  if (v5 == 4)
  {
    if ((v6 - 6) < 0x35)
    {
LABEL_14:
      v9 = *(a2 + 72);
      if (v9 < v8)
      {
        v4 |= 4u;
      }

      if (v9 > 7000.0)
      {
        v4 |= 8u;
      }

LABEL_18:
      v10 = 0.1;
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v7 == 6)
  {
LABEL_28:
    v13 = 6700.0;
    goto LABEL_32;
  }

  v13 = 5800.0;
LABEL_32:
  v14 = *(a2 + 72);
  if (v14 < v8)
  {
    v4 |= 4u;
  }

  if (v14 > v13)
  {
    v4 |= 8u;
  }

  if (v5 == 3)
  {
    v17 = 0.03;
    if (((v6 - 14) & 0xFB) == 0)
    {
      v17 = 0.25;
    }

    v18 = *(a2 + 40);
    v19 = v4 | 0x10;
    if (v18 >= 0.0)
    {
      v19 = v4;
    }

    if (v18 <= v17)
    {
      v4 = v19;
    }

    else
    {
      v4 = v19 | 0x20;
    }

    v12 = 0.0;
    goto LABEL_53;
  }

  if (v5 == 4)
  {
    if ((v6 - 6) >= 0x35)
    {
      v15 = *(a2 + 40);
      v16 = v4 | 0x10;
      if (v15 >= 0.0)
      {
        v16 = v4;
      }

      if (v15 <= 0.03)
      {
        v4 = v16;
      }

      else
      {
        v4 = v16 | 0x20;
      }

      goto LABEL_44;
    }

    goto LABEL_18;
  }

  v10 = 0.03;
LABEL_19:
  v11 = *(a2 + 40);
  if (v11 < 0.0)
  {
    v4 |= 0x10u;
  }

  if (v11 > v10)
  {
    v4 |= 0x20u;
  }

  v12 = 0.000000314159265;
  if (v5 != 5)
  {
    if (v5 == 4)
    {
      if ((v6 - 6) < 0x35)
      {
        goto LABEL_53;
      }

LABEL_44:
      v12 = 0.000000314159265;
      goto LABEL_53;
    }

    v12 = 0.0;
    if (v7 == 6)
    {
      goto LABEL_44;
    }
  }

LABEL_53:
  v20 = *(a2 + 56);
  v21 = v4 | 0x40;
  if (v20 >= -0.00000198862815)
  {
    v21 = v4;
  }

  if (v20 <= v12)
  {
    return v21;
  }

  else
  {
    return v21 | 0x80;
  }
}

void GLON_Alm_Calc_Corrns(uint64_t a1, double *a2, double a3, double a4, double a5)
{
  v9 = a2[5] + 43200.0;
  v10 = a2[7];
  v11 = __sincos_stret(a2[8]);
  v30 = v10 * v11.__sinval;
  v28 = v10 * v11.__cosval;
  v12 = a2[4] + 1.09955743;
  v13 = __sincos_stret(a4);
  v14 = __sincos_stret(a4 + a4);
  v15 = __sincos_stret(a4 * 3.0);
  v16 = __sincos_stret(a4 * 4.0);
  v17 = __sincos_stret(v12);
  v18 = v17.__sinval * v17.__sinval * -1.5 + 1.0;
  v19.f64[0] = 6378.136 / a3 * (6378.136 / a3);
  v20 = v19.f64[0] * 0.00162393863 * v18;
  v21 = v19.f64[0] * -0.000405984656 * (v17.__sinval * v17.__sinval);
  v22.f64[0] = v13.__sinval * (v28 * 3.5) + 6.28318531 / v9 * a5 + v30 * -2.5 * v13.__cosval + v14.__sinval * -0.5;
  v22.f64[1] = v14.__cosval + v13.__sinval * v30 - v28 * v13.__cosval;
  v23 = vmlaq_f64(vmlaq_f64(v22, v15, vmulq_n_f64(xmmword_299051CC0, v28)), vextq_s8(v15, v15, 8uLL), vmulq_n_f64(xmmword_299051CD0, v30));
  v24 = v19.f64[0] * 0.00324787725 * v18;
  v25 = v19.f64[0] * 0.00162393863 * (v17.__cosval * v17.__cosval);
  *a1 = (v19.f64[0] * 0.00162393863 * (v17.__sinval * v17.__sinval) * (v14.__cosval + v13.__cosval * (v28 * -0.5) + v30 * 0.5 * v13.__sinval + v28 * 3.5 * v15.__cosval + v30 * 3.5 * v15.__sinval) + v24 * (v13.__sinval * v30 + v28 * v13.__cosval)) * a3;
  *(a1 + 8) = v21 * (v13.__sinval + v15.__sinval * -2.33333333 + v28 * 5.0 * v14.__sinval + v28 * -8.5 * v16.__sinval + v30 * 8.5 * v16.__cosval + v30 * v14.__cosval) + v20 * (v13.__sinval + 6.28318531 / v9 * v28 * a5 + v28 * 1.5 * v14.__sinval - v30 * 1.5 * v14.__cosval) + v25 * (v14.__sinval * (v28 * -0.5) + 6.28318531 / v9 * v28 * a5);
  v19.f64[1] = v19.f64[0] * 0.000811969313;
  v26 = &qword_299051C90;
  *&v27.f64[0] = *&vld1q_dup_f64(v26);
  *(a1 + 16) = v21 * (v30 * -5.0 * v14.__sinval - (v13.__cosval - v15.__cosval * -2.33333333) + v28 * -8.5 * v16.__cosval - v30 * 8.5 * v16.__sinval + v28 * v14.__cosval) + v20 * (v13.__cosval + -(v30 * (6.28318531 / v9)) * a5 + v28 * 1.5 * v14.__cosval + v30 * 1.5 * v14.__sinval) + v25 * (v14.__sinval * (v30 * 0.5) + -(v30 * (6.28318531 / v9)) * a5);
  v27.f64[1] = v17.__sinval;
  *(a1 + 24) = vmulq_f64(vmulq_n_f64(vmulq_f64(v19, v27), v17.__cosval), v23);
  *(a1 + 40) = v19.f64[0] * 0.00487181588 * (v17.__sinval * v17.__sinval) * (v13.__sinval * (v28 * -0.291666667) + v30 * -0.291666667 * v13.__cosval + v30 * -0.680555556 * v15.__cosval + v28 * 0.680555556 * v15.__sinval + v14.__sinval * 0.25) + v24 * (v13.__sinval * (v28 * 1.75) + 6.28318531 / v9 * a5 + v30 * -1.75 * v13.__cosval) + v25 * v23.f64[0];
}

double Pre_Positioning_Update_Wrapper(const void **a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  memset(v8, 0, sizeof(v8));
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v9 = 0x200000000;
  v10 = 5;
  v13 = 0;
  *(v12 + 5) = 0;
  v11 = 0;
  v12[0] = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  GNSS_Validate_p_list(a1, "Pre_Positioning_Update_Wrapper: Entry");
  a1[25] = v3;
  Pre_Positioning(a1[20], v3, a1[9], a1[10], a1[8], a1[7], a1[11], a1[12], a1[14], a1[5], a1[4]);
  a1[25] = 0;
  return GNSS_Validate_p_list(a1, "Pre_Positioning_Update_Wrapper:  Exit");
}

_DWORD *NK_Set_Aid_Data(_DWORD *result, int *a2, uint64_t a3)
{
  if (*(a2 + 1864) != 1)
  {
    v3 = result[5] < 5u;
    v4 = dbl_299050620;
    goto LABEL_6;
  }

  if (!result[6784] || a2[5] < 8)
  {
    v3 = result[5] < 5u;
    v4 = &unk_299051CF0;
LABEL_6:
    *(a3 + 8) = v4[v3];
    *(a3 + 32) = 0x4163125300000000;
    v5 = 9999000.0;
    goto LABEL_7;
  }

  if (result[6779] && a2[15481] >= 5 && *(a2 + 7751) < 400.0 && *(a2 + 7752) < 400.0)
  {
    *a3 = *(a2 + 215);
    *(a3 + 16) = *a2;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 7752);
  *(a3 + 8) = v7;
  v8 = result[5];
  v9 = dbl_299051CE0[v8 > 4];
  if (v7 > v9)
  {
    *(a3 + 8) = v9;
  }

  if (v6 && a2[15482] >= 4 && ((v10 = *(a2 + 7759), v8 > 8) ? (v11 = 500000.0) : (v11 = dbl_299051D08[v8]), v10 < v11))
  {
    v12 = *(a2 + 230);
    v13 = *a2;
    *(a3 + 40) = *a2;
    *(a3 + 24) = v12;
    *(a3 + 32) = v10;
    v5 = *(a2 + 7760);
    if (v5 < 5.0 && a2[15553] != 2 && v8 <= 4 && a2[15554] != 2 && *(a2 + 231) > 0.3)
    {
      *(a3 + 48) = *(a2 + 232);
      *(a3 + 64) = v13;
    }
  }

  else
  {
    *(a3 + 32) = *(a2 + 7759);
    v5 = *(a2 + 7760);
  }

LABEL_7:
  *(a3 + 56) = v5;
  return result;
}

uint64_t Comp_PrePos(unsigned int a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6, double *a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, long double a18, double *a19, double a20, double a21, char a22, char *a23, uint64_t a24, int a25, uint64_t a26)
{
  v32 = a2;
  v114 = *MEMORY[0x29EDCA608];
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  memset(v104, 0, sizeof(v104));
  v112[0] = 0;
  *(v112 + 3) = 0;
  v102 = 0;
  memset(v101, 0, sizeof(v101));
  memset(v100, 0, sizeof(v100));
  v103[0] = 0;
  *(v103 + 3) = 0;
  v40 = Comp_CurrState(0x258u, a2, a3, v104, a18, a20);
  result = 0;
  if (v40)
  {
    v92 = a16;
    v93 = a15;
    v94 = Comp_SVrange_Sag_Corr(&v113, v99, a4, &v104[1]);
    v42 = Trop_Elev_MapF(a7);
    v98 = 0.0;
    if (!a22 || (Get_SH_Ionospheric_Delay(a4->f64, v104, a24, &v98, a18, 1575420000.0) & 1) == 0)
    {
      v98 = GPS_Klob_Iono_Delay(a19, a6, a7, a23, a18);
    }

    v43 = v42 * a21;
    if (v112[0] == 2 || (v44 = 1.0, v112[0] == 6))
    {
      GPS_L1_Iono_Scale_factor();
    }

    v45 = v44 * v98;
    v97 = v44 * v98;
    v46 = v44 * v98 + v43 + v94 + (a9 - *(&v106 + 1)) * 299792458.0;
    if (fabs(v46) >= 2130706430.0)
    {
      return 0;
    }

    else
    {
      v47 = 0;
      *(a26 + 8) = v46;
      v48 = 0.0;
      do
      {
        v48 = v48 + v113.f64[v47] * *(&v105 + v47 * 8);
        ++v47;
      }

      while (v47 != 3);
      v49 = 0;
      v50 = *&v107;
      *(a26 + 48) = (v48 + *&v107 * -299792458.0) * -5.25503547;
      do
      {
        v99[v49 + 2] = *(&v106 + v49) - *(a5 + 16 + 8 * v49);
        v51 = v49 + 3;
        --v49;
      }

      while (v51 > 1);
      v91 = a13;
      v52 = 0;
      v53 = 0.0;
      do
      {
        v53 = v53 + v113.f64[v52] * v99[v52];
        ++v52;
      }

      while (v52 != 3);
      v54 = 0;
      *(a26 + 24) = (v53 + (a10 - v50) * 299792458.0) * -5.25503547;
      v55 = 0.0;
      do
      {
        v55 = v55 + v113.f64[v54] * *(&v105 + v54 * 8);
        ++v54;
      }

      while (v54 != 3);
      result = Comp_CurrState(0x25Du, v32, a3, v100, a18 + 1.0, a20);
      if (result)
      {
        v89 = Comp_SVrange_Sag_Corr(&v113, v99, a4, &v100[0].f64[1]);
        v56 = 0;
        v57 = 0.0;
        do
        {
          v57 = v57 + v113.f64[v56] * *(v101 + v56 * 8);
          ++v56;
        }

        while (v56 != 3);
        v90 = (v55 - v57) / 0.190293673;
        *(a26 + 40) = v90;
        v58 = a7[4];
        if (v58 >= 30.0)
        {
          v61 = v91;
          if (v58 <= 60.0)
          {
            v59 = a7[1] * a7[1];
            v60 = 1.0 - v59;
          }

          else
          {
            v60 = a7[2] * a7[2];
            v59 = 1.0 - v60;
          }
        }

        else
        {
          v59 = a7[1] * a7[1];
          v60 = 1.0 - v59;
          v61 = v91;
        }

        if ((a25 - 1) > 4)
        {
          v62 = 3025.0;
        }

        else
        {
          v62 = dbl_299051DC0[a25 - 1];
        }

        if (a14 * a14 + v61 * v61 >= v62)
        {
          if (v61 > 10000.0)
          {
            if (v61 <= 100000.0)
            {
              if (v61 <= 50000.0)
              {
                v63 = dbl_299051DB0[v61 > 25000.0];
              }

              else
              {
                v63 = 2000.0;
              }
            }

            else
            {
              v63 = 60000.0;
            }

            a14 = v63 + a14;
          }

          v62 = a14 * (v59 * a14) + v60 * v61 * v61;
        }

        v64 = *(&v107 + 1);
        v65 = v62 + *(&v107 + 1);
        v99[0] = 0.0;
        if (R8_EQ(&v97, v99))
        {
          v66 = 25.0 / (a7[2] * a7[2] * -0.9 + 1.0);
        }

        else
        {
          v66 = v45 * 0.2 * (v45 * 0.2);
        }

        v67 = v65 + v66 + v43 * 0.1 * (v43 * 0.1);
        if (a1 < 1)
        {
          v71 = v67 + 4.0e12;
          v70 = a1;
        }

        else
        {
          v68 = (v94 - v89) * (v94 - v89);
          if (v68 <= 0x2710)
          {
            v68 = 10000;
          }

          v69 = v68;
          v70 = a1;
          v71 = v67 + v69 * g_TOW_Stat_Var95_Table[a1];
        }

        *(a26 + 4) = fmin(sqrt(v71) * 3.0, 4278190080.0);
        v72 = a11 + a10 * g_TOW_stat_Sigma_m_Table[v70];
        v73 = v71 + v72 * v72;
        v74.f64[0] = v73 + a12 * a12 - a11 * a11;
        v74.f64[1] = v73;
        v75 = vsqrtq_f64(v74);
        __asm { FMOV            V2.2D, #3.0 }

        *(a26 + 12) = vmovn_s64(vcvtq_u64_f64(vminnmq_f64(vmulq_f64(v75, _Q2), vdupq_n_s64(0x41EFE00000000000uLL))));
        v81 = v60 * v92 * v92 + v93 * v93 + v59 * a17 * a17 + 4.0;
        if (v81 < 5.0)
        {
          v81 = 5.0;
        }

        if (a1 < 1)
        {
          v83 = 9941543.2;
        }

        else
        {
          v82 = v90 * v90;
          if (v90 * v90 < 0.0025)
          {
            v82 = 0.0025;
          }

          v83 = v82 * ((v64 * 0.0625 + v91 * v91) * 0.000001 + g_TOW_Stat_Var95_Table[v70]);
        }

        v84 = sqrt(v81 + v83);
        if (v84 < 1400000000.0)
        {
          v85 = (v84 * 3.0) + 1;
        }

        else
        {
          v85 = -16777216;
        }

        *(a26 + 32) = v85;
        v86 = sqrt(v83);
        if (v86 < 1400000000.0)
        {
          v87 = (v86 * 3.0) + 1;
        }

        else
        {
          v87 = -16777216;
        }

        *(a26 + 56) = v87;
        *(a26 + 60) = a8;
        if (a8)
        {
          v88 = (*&v109 - *&v110) * 299792458.0;
          *(a26 + 64) = v88;
          if (v112[0] != 6)
          {
            *(a26 + 64) = v88 + v98 * 0.793270321;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

void GLON_Alm_Last_Asc_Pass(double *a1, double *a2, int a3, uint64_t a4, double a5, double a6)
{
  v8 = *(a4 + 40) + 43200.0;
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  v11 = *(a4 + 32) + 1.09955743;
  v12 = *(a4 + 48);
  v13 = 1.0 - *(a4 + 56) * *(a4 + 56);
  v14 = a3 - *(a4 + 8);
  if (v14 < -730)
  {
    v14 += 1461;
  }

  if (v14 > 730)
  {
    v14 -= 1461;
  }

  v15 = floor((a5 - v9 + (86400 * v14)) / v8);
  v16 = v9 + v8 * v15 + v12 * (v15 * v15);
  v17 = floor(v16 / 86400.0);
  v18 = ceil(v16 / 86400.0);
  if (v16 / 86400.0 < 0.0)
  {
    v17 = v18;
  }

  v19 = -86400.0;
  v20 = v16 + v17 * -86400.0;
  *a1 = v20;
  v21 = a5 - v20;
  if (v21 < 0.0 || (v19 = 86400.0, v21 >= 86400.0))
  {
    *a1 = v20 + v19;
  }

    ;
  }

  *a2 = i;
  if (i < -3.14159265)
  {
    do
    {
      i = i + 6.28318531;
    }

    while (i < -3.14159265);
    *a2 = i;
  }
}

uint64_t GM_Get_Min_SNR(uint64_t a1, int a2)
{
  v2 = (a2 - 1);
  if (a2 - 1 < 0)
  {
    return 10;
  }

  else
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = (a1 + 36 * v2 + 4);
    do
    {
      if (Is_Legal(*(v5 - 1)) && (*(v5 + 2) & 8) != 0 && *v5 > v3)
      {
        v3 = *v5;
      }

      v5 -= 36;
    }

    while (v4-- > 1);
    if (v3 <= 0x21u)
    {
      return 10;
    }

    else
    {
      return (v3 - 23);
    }
  }
}

uint64_t Centroid_SV_Pos(int (*a1)[3], unsigned int a2, double *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = &(*a1)[2];
  v9 = a2;
  do
  {
    v10 = *(v8 - 1);
    v11 = *v8;
    if (!*(v8 - 1))
    {
      if (!v11)
      {
        goto LABEL_7;
      }

      v10 = 0;
    }

    v7 += *(v8 - 2);
    v5 += v10;
    v4 += v11;
    ++v6;
LABEL_7:
    v8 += 3;
    --v9;
  }

  while (v9);
  v18[1] = v5;
  v18[2] = v4;
  v18[0] = v7;
  if (!v6)
  {
    return 0;
  }

  for (i = 0; i != 3; ++i)
  {
    v16.f64[i] = 1.0 / v6 * v18[i];
  }

  ECEF2Geo(&v16, &WGS84_Datum, v14);
  v15 = 0;
  Geo2ECEF(v14, &WGS84_Datum, &v16);
  *a3 = v16;
  *(a3 + 2) = v17;
  return 1;
}

void *Init_DB_Nav_Soln(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  memset(&__src[3], 0, 123);
  memset(&__src[12], 0, 160);
  v6 = *(a2 + 1712);
  v7 = *(a2 + 1720);
  v22 = 0.0;
  v21 = 0;
  v8 = Core_Load_Clk_L5L1(&v21, &v22);
  v9 = v22;
  if (v8)
  {
    v10 = 999999;
    *(a2 + 2032) = v22 * 299792458.0;
    v11 = v21;
    *(a2 + 2040) = v21;
    if (*(a1 + 16) == 1 && *a1 >= 1)
    {
      v10 = *(a1 + 40) - v11 + 604800 * *(a1 + 32);
    }

    EvLog_v("Init_DB_Nav_Soln:  Recovered (L5-L1) delta Clock bias from NV:  %f m   age %d s", v9 * 299792458.0, v10);
  }

  v12 = *(a1 + 48);
  __src[1].f64[0] = *(a1 + 40);
  __src[0].f64[0] = *(a1 + 24);
  __src[0].f64[1] = *(a1 + 8);
  LODWORD(__src[1].f64[1]) = *a1;
  BYTE4(__src[1].f64[1]) = *(a1 + 16);
  HIWORD(__src[1].f64[1]) = *(a1 + 32);
  LODWORD(__src[2].f64[0]) = LODWORD(__src[0].f64[0]);
  __src[2].f64[1] = 0.0;
  __src[7].f64[1] = v12;
  __src[9].f64[0] = v9;
  __src[9].f64[1] = v6;
  *(a1 + 56) = v6;
  HIDWORD(__src[10].f64[1]) = *(a1 + 76);
  LOBYTE(__src[11].f64[0]) = *(a1 + 80);
  *(__src[11].f64 + 2) = *(a1 + 82);
  __src[11].f64[1] = *(a1 + 88);
  __src[10].f64[0] = 0.0;
  v13 = *(a2 + 52);
  if (v13 >= 2)
  {
    if (v13 >= 5)
    {
      v16 = 0x4163125300000000;
      v15 = 9999000.0;
      v14 = 9999000.0;
    }

    else
    {
      v14 = 20.0;
      v15 = 3.0;
      v16 = 0x4033C624DD2F1AA0;
    }
  }

  else
  {
    v14 = 3.0;
    v15 = 1.0;
    v16 = 0x40069FBE76C8B439;
  }

  memset(&__src[12], 0, 24);
  Geo2ECEF(&__src[12], &WGS84_Datum, &__src[3]);
  NK_Transform_State(__src);
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  result = memcpy((a3 + 32), __src, 0x160uLL);
  v18 = vdupq_n_s64(0x4163125300000000uLL);
  *(a3 + 832) = v18;
  *(a3 + 848) = v18;
  *(a3 + 864) = v18;
  *(a3 + 880) = 0x4163125300000000;
  *(a3 + 888) = v16;
  *(a3 + 896) = v15;
  *(a3 + 904) = v14;
  *(a3 + 912) = 0x408F380000000000;
  *(a3 + 920) = v7 * 99930819.3;
  *(a3 + 928) = v18;
  *(a3 + 944) = 0;
  v19 = vdupq_n_s64(0x4058FF5C28F5C28FuLL);
  *(a3 + 768) = v19;
  *(a3 + 784) = v19;
  *(a3 + 800) = v19;
  *(a3 + 816) = xmmword_299051E90;
  v20 = *(a3 + 352);
  *(a3 + 952) = *(a3 + 336);
  *(a3 + 968) = v20;
  *(a3 + 984) = *(a3 + 368);
  return result;
}

uint64_t *phiu(uint64_t *result, int a2, unsigned int a3, uint64_t a4, const double *a5, unsigned int a6, double *a7, int a8)
{
  if (a3)
  {
    v8 = a3;
    v9 = result;
    v10 = a7;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (a6 >= 2)
  {
    v12 = (a6 - 1) * a2;
    v13 = (a6 - 1) * a8;
    v14 = ((a6 + a6 * a6) >> 1) - a6;
    v15 = 1 - a6;
    do
    {
      v16 = a6 - 1;
      if (a3)
      {
        v17 = 0;
        v18 = a6 - 1;
        do
        {
          v19 = 0.0;
          v20 = a4;
          if (a6 <= a4)
          {
            v19 = *&result[v12 + v17];
            v20 = v18;
          }

          if (v20)
          {
            v21 = v20;
            v22 = v14;
            v23 = v17;
            do
            {
              v19 = v19 + *&result[v23] * a5[v22];
              v23 += a2;
              ++v22;
              --v21;
            }

            while (v21);
          }

          a7[v17++ + v13] = v19;
          v18 = v20;
        }

        while (v17 != a3);
      }

      v12 -= a2;
      v13 -= a8;
      v14 += v15++;
      --a6;
    }

    while (v16 > 1);
  }

  return result;
}

void DD_Assist_GLON_Data(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = 0;
  v86 = *MEMORY[0x29EDCA608];
  v70 = a3 + 2048;
  v7 = a3 + 1491;
  v8 = a1 - 241;
  v9 = a3 + 2031;
  v72 = a3 + 2166;
  do
  {
    if (*(a3[2146] + v6) == 1 && (v8 - LODWORD(v7[8 * v6])) > 0xFFFFF806)
    {
      goto LABEL_30;
    }

    memset(v82, 0, 62);
    if (!Core_Get_GLON_Eph((v6 + 1), a1, v82))
    {
      goto LABEL_30;
    }

    if (*(a3[2146] + v6) == 1)
    {
      v10 = v7[8 * v6];
      if (SLODWORD(v82[0]) <= v10 && a1 - v10 > -1801)
      {
        goto LABEL_30;
      }
    }

    v11 = (WORD2(v82[2]) & 0x800) == 0;
    v12 = a3[1489];
    if ((*(v12 + v6) & 1) == 0 && (WORD2(v82[2]) & 0x800) == 0)
    {
      v13 = a3[2148];
      if (*(v13 + v6) != 1)
      {
        goto LABEL_16;
      }

      v14 = v9 + 36 * v6;
      v15 = *v14;
      if ((v14[15] & 4) != 0 || v15 + 3600 <= a1)
      {
        if (v15 + 100 < a1)
        {
          *(a3[2144] + v6) = 0;
          *(v13 + v6) = 0;
        }

LABEL_16:
        v11 = 1;
        goto LABEL_17;
      }

      v11 = 0;
    }

LABEL_17:
    v16 = &v7[8 * v6];
    v17 = v82[3];
    *(v16 + 2) = v82[2];
    *(v16 + 3) = v17;
    v18 = v82[1];
    *v16 = v82[0];
    *(v16 + 1) = v18;
    *(a3[2143] + v6) = 1;
    *(a3[2146] + v6) = 1;
    v19 = v11;
    *(v12 + v6) = v19;
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    v21 = a3[1490] + 20 * v6;
    v22 = (v21 + 12);
    v23 = (v21 + 8);
    if (*(v16 + 1) == 5)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    *v24 = v20;
    if (DWORD2(v82[0]) != 2139062143)
    {
      *(v72 + v6) = DWORD2(v82[0]);
    }

    if (a1 >= 1)
    {
      *(a3[2150] + v6) = 1;
      Core_Save_GLON_Eph((v6 + 1), 0, v16);
      v12 = a3[1489];
    }

    v25 = 0;
    LODWORD(v26) = 0;
    v27 = p_NV;
    v28 = p_NV + 29172;
    v29 = *(v12 + 16);
    *(p_NV + 29172) = *v12;
    *(v28 + 16) = v29;
    v30 = 55665;
    do
    {
      v31 = *(v27 + 29168 + v25) ^ BYTE1(v30);
      v30 = 52845 * (v30 + v31) + 22719;
      v26 = (v26 + v31);
      ++v25;
    }

    while (v25 != 32);
    *(v27 + 29160) = v26;
LABEL_30:
    ++v6;
  }

  while (v6 != 24);
  v32 = a4;
  if (a1 >= 1)
  {
    v33 = 0;
    v34 = a3 + 1683;
    do
    {
      if (*(a3[1489] + v33) == 1 && (*(*(v32 + 1616) + v33) & 1) == 0 && *(a2 + 32 + v33) <= 0xA5u && (*(a3[2147] + v33) != 1 || a1 - *(v34 + 29 * v33) >= 241))
      {
        v84 = 0u;
        memset(v85, 0, 19);
        v83 = 0u;
        memset(v82, 0, sizeof(v82));
        GLON_GPS_BinEph = EE_Get_GLON_GPS_BinEph((v33 + 1), a1, v82);
        v36 = a3[2147];
        if (!GLON_GPS_BinEph || (v37 = v82[0], *(v36 + v33) == 1) && SLODWORD(v82[0]) <= *(v34 + 29 * v33))
        {
          *(v36 + v33) = 0;
        }

        else
        {
          v38 = v34 + 116 * v33;
          *(v38 + 28) = *&v85[16];
          v39 = *v85;
          v40 = v82[1];
          *v38 = v82[0];
          *(v38 + 1) = v40;
          v41 = v82[3];
          *(v38 + 2) = v82[2];
          *(v38 + 3) = v41;
          v42 = v83;
          *(v38 + 5) = v84;
          *(v38 + 6) = v39;
          *(v38 + 4) = v42;
          *(a3[2143] + v33) = 1;
          *(a3[2147] + v33) = 1;
          *v79 = 0u;
          v78 = 0u;
          v77 = 0u;
          v76 = 0u;
          *&v75 = __PAIR64__(DWORD1(v82[0]), v37);
          LOBYTE(v76) = BYTE8(v82[0]);
          *(&v76 + 1) = *(v82 + 9);
          v43 = 21;
          v44 = 11;
          v45 = &v82[1] + 8;
          do
          {
            v46 = &v75 + v44;
            *v46 = *v45;
            *(v46 + 1) = *(v45 + 1);
            v45 += 4;
            --v43;
            v44 += 3;
          }

          while (v43 > 1);
          *&v79[15] = *&v85[12];
          v80 = *&v85[14];
          v81 = v85[18];
          Debug_Log_GPS_Eph(2, (v33 + 101), &v75);
        }

        v32 = a4;
      }

      ++v33;
    }

    while (v33 != 24);
  }

  v47 = 0;
  *&v82[0] = 0;
  WORD4(v82[0]) = 0;
  memset(v82 + 12, 0, 24);
  while (*(a3[2148] + v47) == 1 && a1 - *(v9 + 9 * v47) <= 1800)
  {
    v48 = v47 + 1;
LABEL_68:
    v47 = v48;
    if (v48 == 24)
    {
      goto LABEL_69;
    }
  }

  v48 = v47 + 1;
  if (!Core_Get_GLON_Alm((v47 + 1), a1, v82) || *(a3[2148] + v47) == 1 && SLODWORD(v82[0]) <= *(v9 + 9 * v47))
  {
    goto LABEL_68;
  }

  if (a1 < 1)
  {
    goto LABEL_60;
  }

  *v74 = 0;
  v75 = 0.0;
  API_Get_UTC_Cor(1, &v75);
  GPS_To_Glon_Time(0, a1 / 0x93A80, (a1 % 0x93A80), v75, v74, &v74[1], &v73);
  v49 = v74[1] - WORD4(v82[0]);
  v50 = v49 + 1461;
  if (v49 >= -730)
  {
    v50 = v74[1] - WORD4(v82[0]);
  }

  v51 = v49 <= 729 ? v50 : v49 - 1461;
  if ((v51 + 7) < 0x1D)
  {
LABEL_60:
    v52 = v9 + 36 * v47;
    v53 = v82[1];
    *v52 = v82[0];
    *(v52 + 1) = v53;
    *(v52 + 8) = v82[2];
    *(a3[2144] + v47) = 1;
    *(a3[2148] + v47) = 1;
    DD_GLON_Alm_Set_Health_Frq(v82, a3);
    if (g_Logging_Cfg >= 6)
    {
      EvLog_v("DD_Assist_GLON_Alm:  Received Alm for SV %d ", v47 + 1);
    }

    if (a1 >= 1)
    {
      Core_Save_GLON_Alm((v47 + 1), 0, (v9 + 36 * v47));
    }

    v54 = 0;
    LODWORD(v55) = 0;
    v56 = a3[1489];
    v57 = p_NV;
    v58 = p_NV + 29172;
    v59 = *(v56 + 16);
    *(p_NV + 29172) = *v56;
    *(v58 + 16) = v59;
    v60 = 55665;
    do
    {
      v61 = *(v57 + 29168 + v54) ^ BYTE1(v60);
      v60 = 52845 * (v60 + v61) + 22719;
      v55 = (v55 + v61);
      ++v54;
    }

    while (v54 != 32);
    *(v57 + 29160) = v55;
    goto LABEL_68;
  }

  EvLog_v("DD_Assist_GLON_Alm: Rejected! SV %d DayNo too old or new %d", v47 + 1, v51);
LABEL_69:
  *&v82[0] = 0;
  WORD4(v82[0]) = 0;
  HIDWORD(v82[0]) = 0;
  LOBYTE(v82[1]) = 0;
  DWORD1(v82[1]) = 0;
  BYTE8(v82[1]) = 0;
  if (Core_Get_GLON_Clk1(a1, v82))
  {
    v62 = *(v70 + 182);
    if (*(v70 + 808) != 1 || SLODWORD(v82[0]) > v62)
    {
      EvLog_v("DD_Assist_GLON_Clk1:  New Clk1:  Source %d > %d  or  GPS_secs %d > %d , TauGPS %d %d", DWORD1(v82[0]), *(v70 + 183), LODWORD(v82[0]), v62, DWORD1(v82[1]), *(v70 + 187));
      *(v70 + 91) = v82[0];
      *(v70 + 740) = *(v82 + 12);
      *(v70 + 808) = 1;
      if (a1 >= 1)
      {
        v63 = 0;
        LODWORD(v64) = 0;
        v65 = p_NV;
        v66 = p_NV + 29208;
        *(p_NV + 29208) = v82[0];
        *(v66 + 12) = *(v82 + 12);
        v67 = 55665;
        do
        {
          v68 = *(v66 + v63) ^ BYTE1(v67);
          v67 = 52845 * (v67 + v68) + 22719;
          v64 = (v64 + v68);
          ++v63;
        }

        while (v63 != 32);
        *(v65 + 29200) = v64;
      }
    }
  }
}

BOOL NK_Least_Squares_Core(double *a1, double (*a2)[3], uint64_t a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v10 = a3;
  v12 = a1;
  v117 = *MEMORY[0x29EDCA608];
  _MergedGlobals_4[0] = 0;
  *a8 = -1;
  v108 = a4;
  if (a4)
  {
    v114 = -1;
    v115 = -1;
    v13 = (*(a9 + 494) & 0x80000000) == 0 && *(a9 + 500) == 1;
  }

  else
  {
    v13 = 0;
    xmmword_2A145C561 = 0u;
    unk_2A145C571 = 0u;
    xmmword_2A145C541 = 0u;
    unk_2A145C551 = 0u;
    xmmword_2A145C521 = 0u;
    unk_2A145C531 = 0u;
    xmmword_2A145C501 = 0u;
    unk_2A145C511 = 0u;
    v114 = -1;
    v115 = -1;
    *(a9 + 400) = 0u;
    *(a9 + 416) = 0u;
    *(a9 + 432) = 0;
  }

  v14 = NK_Least_Squares_Update(a1, a3, 1, v13, v116, a9);
  v15 = v14;
  if (!v14)
  {
    return v15;
  }

  __n = 8 * v10;
  if (__n > 0x38)
  {
    __assert_rtn("NK_Least_Squares_Core", "NK_Least_Squares_Check.cpp", 226, "(sizeof(p_Lsq_Intl->dX)) >= (NumStates*sizeof(p_Lsq_Intl->ACovMat[0]))");
  }

  v93 = v14;
  v94 = a2;
  v16 = 0;
  v103 = 0;
  v98 = v13 - v10;
  v107 = (a9 + 112);
  __src = (a9 + 112 + 8 * ((v10 + v10 * v10) / 2));
  if ((a5 & 0xFFFFFFFE) == 6)
  {
    v17 = -10.0;
  }

  else
  {
    v17 = -30.0;
  }

  v109 = v10;
  v110 = a9 + 592;
  v102 = 1;
  v106 = v12;
  while (2)
  {
    if (*(a9 + 408) <= 0.0)
    {
      v18 = v98;
    }

    else
    {
      v18 = v98 + 1;
    }

    memcpy(a9, __src, __n);
    v19 = 0;
    v20 = (v16 + 1);
    v105 = v16;
    v16 = (v16 - 1);
    v100 = v20;
    v21 = v20 - 1;
    v22 = 0.0;
    v23 = 0.0;
    do
    {
      v24 = *(a9 + 576);
      if (v24)
      {
        *(v24 + 8 * v19) = 0;
      }

      if (v16 <= 1 && (v25 = v21, v26 = &v114 + 1, *(*(a9 + 520) + v19)))
      {
        while (1)
        {
          v27 = *v26++;
          if (v19 == v27)
          {
            break;
          }

          if (!--v25)
          {
            goto LABEL_22;
          }
        }

        v28 = 0;
      }

      else
      {
LABEL_22:
        if (!*(*(a9 + 520) + v19))
        {
          goto LABEL_36;
        }

        v28 = 1;
      }

      v29 = (v110 + 4 * v19);
      a5 = a5 & 0xFFFFFFFF00000000 | *(a9 + 496);
      NK_Least_Obs_Equ_SV(v19 != *(a9 + 512), *(a9 + 488), a5, *v29, *(a9 + 516), &v12[7 * v19], v116, *(*(a9 + 528) + 8 * v19));
      v30 = 0.0;
      if (v10)
      {
        v31 = v116;
        v32 = a9;
        v33 = v109;
        do
        {
          v34 = *v31++;
          v35 = v34;
          v36 = *v32++;
          v30 = v30 + v35 * v36;
          --v33;
        }

        while (v33);
      }

      v37 = *(*(a9 + 528) + 8 * v19) - v30;
      v38 = *(a9 + 544);
      *(v38 + 8 * v19) = v37;
      if (v28)
      {
        v39 = *(*(a9 + 536) + 8 * v19);
        v22 = v22 + 1.0 / v39;
        v23 = v23 + v37 * v37 * (1.0 / v39);
        ++v18;
        if (v108)
        {
          v40 = *(a9 + 576);
          if (v40)
          {
            v41 = v10;
            v42 = *(a9 + 568);
            *(v42 + 8 * v19) = v39;
            *(*(a9 + 584) + 8 * v19) = *(v38 + 8 * v19);
            v113[0] = 0.0;
            v43 = v41;
            invtst(v107, v116, v41, 0.0, 0.0, 1.0e20, v113);
            v44 = fabs(v113[0]);
            v45 = *(v42 + 8 * v19) - v44;
            *(v40 + 8 * v19) = v45;
            if (v45 <= 0.0)
            {
              if (v45 < -0.005)
              {
                GNSS_SV_Str = Get_GNSS_SV_Str(*v29);
                EvLog_v("NK_Least_Squares_Core:  %d  %s  Suspect Post Res Var:  DOF %d   %f %f %f  Res %f", v19, GNSS_SV_Str, v18, sqrt(*(*(a9 + 576) + 8 * v19)), sqrt(*(*(a9 + 568) + 8 * v19)), sqrt(v44), *(*(a9 + 584) + 8 * v19));
                v40 = *(a9 + 576);
              }

              *(v40 + 8 * v19) = 0;
            }

            v10 = v43;
            v12 = v106;
          }
        }
      }

LABEL_36:
      ++v19;
    }

    while (v19 != 128);
    v47 = 0.0;
    if (v22 > 0.0)
    {
      v47 = sqrt(v23 / v22);
    }

    **(a9 + 552) = v47;
    v48 = *(a9 + 560);
    LODWORD(v49) = v105;
    if (!v48)
    {
      goto LABEL_142;
    }

    if (v18 < 1)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = v23 / v18;
    }

    *v48 = v50;
    if (v105 > 2 || (v108 & 1) == 0)
    {
      goto LABEL_138;
    }

    v52 = v105 > 1 || v18 < 2;
    v53 = v50 < 0.2 || v52;
    if (v53 != 1)
    {
      if (!v105)
      {
        xmmword_2A145C5E1 = 0u;
        unk_2A145C5F1 = 0u;
        xmmword_2A145C5C1 = 0u;
        unk_2A145C5D1 = 0u;
        xmmword_2A145C5A1 = 0u;
        unk_2A145C5B1 = 0u;
        xmmword_2A145C581 = 0u;
        unk_2A145C591 = 0u;
      }

      goto LABEL_58;
    }

    if (v105 > 0)
    {
LABEL_58:
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = *(a9 + 576);
      v58 = -1;
      v59 = 0.0;
      v60 = 0.0;
      v61 = -1;
      do
      {
        v62 = *(v57 + 8 * v56);
        if (v62 <= 0.0)
        {
          if (_MergedGlobals_4[v56 + 129] == 1)
          {
            v73 = Get_GNSS_SV_Str(*(v110 + 4 * v56));
            EvCrt_v("MeasurementToBeRejected:  %s  ERROR outlier_tested TRUE", v73);
            goto LABEL_93;
          }
        }

        else
        {
          v63 = *(*(a9 + 568) + 8 * v56);
          if (v63 < 0.01)
          {
            ++v54;
          }

          v64 = v62 / v63;
          if (v62 / v63 < 0.01)
          {
            v65 = 1;
          }

          else
          {
            v65 = v53;
          }

          if (v65)
          {
            if (v64 < 0.005 && (_MergedGlobals_4[v56 + 129] & 1) != 0)
            {
              v75 = Get_GNSS_SV_Str(*(v110 + 4 * v56));
              EvLog_v("MeasurementToBeRejected:  %s  AddBack %f", v75, v64);
LABEL_93:
              v61 = -1;
              v74 = 1;
              goto LABEL_112;
            }
          }

          else
          {
            v66 = v63 < 0.01;
            v67 = *(*(a9 + 584) + 8 * v56);
            v68 = v66;
            v69 = v67 * v67 / v62;
            if (v69 <= 4.0)
            {
              v68 = 0;
            }

            v55 += v68;
            if (v69 > v59)
            {
              v58 = v56;
              v59 = v69;
            }

            if (v67 < v17 && v69 > v60)
            {
              v61 = v56;
              v60 = v69;
            }

            _MergedGlobals_4[v56 + 129] = 1;
          }
        }

        ++v56;
      }

      while (v56 != 128);
      if (*(a9 + 504) != 1 || *(a9 + 500) > 1u || (v61 & 0x80000000) != 0)
      {
        if (v58 < 0)
        {
          v74 = 0;
          v61 = v58;
          goto LABEL_112;
        }

        v61 = v58;
      }

      else
      {
        EvLog_v("MeasurementToBeRejected:  MaxPosit %f %d", v60, v61);
        v59 = 999.9;
      }

      v70 = *(a7 + v61) ^ 1;
      v71 = *(a6 + v61);
      if (v71 > 0x10)
      {
        if (v71 < 0x21)
        {
          v72 = GaussCritVal[v70] + (GaussCritVal[(v70 + 1)] - GaussCritVal[v70]) * (v71 - 16) / 17.0;
        }

        else
        {
          v72 = GaussCritVal[(v70 + 1)];
        }
      }

      else
      {
        v72 = GaussCritVal[v70];
      }

      if (v59 >= v72)
      {
        v77 = _MergedGlobals_4[v61 + 1];
        Get_GNSS_SV_Str(*(v110 + 4 * v61));
        if (v77 == 1)
        {
          EvCrt_v("MeasurementToBeRejected:  %s  Overridden %d: Gss MaxRatio %d %g %d");
        }

        else
        {
          EvCrt_v("MeasurementToBeRejected:  %s  %d: Gss MaxRatio %d %g %d");
        }
      }

      else
      {
        if (v18 <= 6)
        {
          v76 = v18 - 2;
          if (v71 > 0xC)
          {
            if (v71 < 0x24)
            {
              v72 = TauCritVal[3 * v76 + v70] + (TauCritVal[3 * v76 + (v70 + 1)] - TauCritVal[3 * v76 + v70]) * (v71 - 12) / 24.0;
            }

            else
            {
              v72 = TauCritVal[3 * v76 + (v70 + 1)];
            }
          }

          else
          {
            v72 = TauCritVal[3 * v76 + v70];
          }
        }

        if (v59 < v72 * **(a9 + 560))
        {
          v74 = 0;
          v61 = -1;
          goto LABEL_112;
        }

        v78 = _MergedGlobals_4[v61 + 1];
        v79 = Get_GNSS_SV_Str(*(v110 + 4 * v61));
        if (v78 == 1)
        {
          EvCrt_v("MeasurementToBeRejected:  %s  Overridden %d: Tau MaxRatio %d %g %g %g %d %d");
        }

        else
        {
          EvLog_v("MeasurementToBeRejected:  %s  %d: Tau MaxRatio %d %g %g %g %d %d", v79, *(a9 + 504), v61, v59, **(a9 + 560), v72, v18, *(a6 + v61));
        }
      }

      if ((_MergedGlobals_4[v61 + 129] & 1) == 0)
      {
        v80 = Get_GNSS_SV_Str(*(v110 + 4 * v61));
        EvCrt_v("MeasurementToBeRejected:  %s  ERROR outlier_tested FALSE", v80);
      }

      v74 = 0;
      _MergedGlobals_4[v61 + 129] = 0;
LABEL_112:
      if (v102)
      {
        v81 = v55;
      }

      else
      {
        v81 = v103;
      }

      v82 = HIDWORD(v103);
      if (v102)
      {
        v82 = v54;
      }

      v103 = __PAIR64__(v82, v81);
      v49 = v105;
      if (v105 > 1)
      {
        v12 = v106;
        if ((v74 & 1) == 0)
        {
          goto LABEL_142;
        }

        v84 = *(a9 + 536);
      }

      else
      {
        *(a8 + v105) = v61;
        if ((v61 & 0x80000000) == 0)
        {
          v83 = 1;
        }

        else
        {
          v83 = v74;
        }

        v12 = v106;
        if ((v83 & 1) == 0)
        {
          goto LABEL_138;
        }

        v84 = *(a9 + 536);
        if ((v74 & 1) == 0)
        {
          v85 = v105;
          v86 = v61;
          v87 = -*(v84 + 8 * v61);
          v16 = v105;
          v88 = v101;
          v49 = v100;
LABEL_127:
          v101 = v88 & 0xFFFFFFFF00000000 | *(a9 + 496);
          NK_Least_Obs_Equ_SV(v61 != *(a9 + 512), *(a9 + 488), *(a9 + 496), *(v110 + 4 * v86), *(a9 + 516), &v12[7 * v86], v116, *(*(a9 + 528) + 8 * v86));
          v111 = 0.0;
          umeas(v107, v10, v87, v116, v113, v112, &v111, 1.0e20);
          if (v74)
          {
            *(&v114 + v49) = -1;
            *(a8 + v85) = -1;
          }

          else
          {
            *(&v114 + v49) = *(a8 + v85);
            v16 = v49;
          }

          v102 = 0;
          v108 = v74 ^ 1;
          continue;
        }
      }

      v85 = v16;
      v87 = *(v84 + 8 * *(a8 + v16));
      EvLog_v("MeasurementToBeRejected:  Add back %d ", *(a8 + v16));
      v61 = *(a8 + v16);
      v86 = v61;
      v88 = v101;
      goto LABEL_127;
    }

    break;
  }

  if (v102)
  {
    v89 = 0;
  }

  else
  {
    v89 = v103;
  }

  v90 = HIDWORD(v103);
  if (v102)
  {
    v90 = 0;
  }

  v103 = __PAIR64__(v90, v89);
  *(a8 + v105) = -1;
LABEL_138:
  if (!v49 && (HIDWORD(v103) - 1) <= 1 && v103 == HIDWORD(v103))
  {
    _MergedGlobals_4[0] = 1;
  }

LABEL_142:
  if (*(a9 + 491) >= 1)
  {
    ud2var(v107, v10, *(a9 + 491) + 1, 1u, (a9 + 8 * *(a9 + 491) + 56));
  }

  v15 = v93;
  if (*(a9 + 492) >= 1)
  {
    ud2var(v107, v10, *(a9 + 492) + 1, 1u, (a9 + 8 * *(a9 + 492) + 56));
  }

  if (*(a9 + 493) >= 1)
  {
    ud2var(v107, v10, *(a9 + 493) + 1, 1u, (a9 + 8 * *(a9 + 493) + 56));
  }

  v91 = *(a9 + 488);
  if ((v91 & 0x8000000000000000) == 0)
  {
    Comp_NEDvar_UDU(v107, v10, *(a9 + 488), v94, (a9 + 8 * v91 + 56));
  }

  if ((*(a9 + 494) & 0x80000000) == 0)
  {
    ud2var(v107, v10, *(a9 + 494) + 1, 1u, (a9 + 8 * *(a9 + 494) + 56));
  }

  return v15;
}