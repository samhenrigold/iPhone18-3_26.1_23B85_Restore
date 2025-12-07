uint64_t GncS04_74UpdateScheduler(void)
{
  v23 = *MEMORY[0x29EDCA608];
  if (g_GncSFGClientData[0])
  {
    if (AgpsFsmStopTimer(8522758) && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncS04_74UpdateScheduler", 1545);
      LbsOsaTrace_WriteLog(8u, __str, v1, 2, 1);
    }

    g_GncSFGClientData[0] = 0;
  }

  v2 = 0;
  v3 = 0x7FFFFFFF;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &g_GncSFGClientData[52 * v2 + 330916];
    if (*v6)
    {
      if (*v6 <= 2u && *&g_GncSFGClientData[52 * v2 + 330936] != 0)
      {
        if (g_GncSFGClientData[52 * v2 + 330920] - 1 >= 2)
        {
          if (g_GncSFGClientData[52 * v2 + 330920] && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v16 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GncS04_27GetUpdateReportInt", 770, v6[4]);
            v15 = 2;
            goto LABEL_24;
          }
        }

        else
        {
          v8 = *&g_GncSFGClientData[52 * v2 + 330924];
          v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v8;
          v10 = v9 + 30;
          v11 = *(v6 + 3) + *(v6 + 7);
          v12 = v11 - v9 - 30;
          if (v12 <= 30)
          {
            v12 = 30;
          }

          if (v10 >= v11)
          {
            v12 = 30;
          }

          if (v12 < v3)
          {
            v3 = v12;
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v13 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ID,%u,StartTm,%u,RespTime,%u,MinPosTime,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GncS04_27GetUpdateReportInt", *(v6 + 1), *(v6 + 3), *(v6 + 7), v3);
            v15 = 5;
LABEL_24:
            LbsOsaTrace_WriteLog(8u, __str, v14, v15, 1);
          }
        }
      }
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  if (v3 == 0x7FFFFFFF)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FGSess timer Not Req\n");
      goto LABEL_34;
    }
  }

  else
  {
    if (AgpsFsmStartTimer(8522758, v3))
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 87, "GncS04_74UpdateScheduler", 1544, v3);
      v21 = 2;
    }

    else
    {
      g_GncSFGClientData[0] = 1;
      result = LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Scheduler timer,%u\n");
LABEL_34:
      v20 = v18;
      v21 = 5;
    }

    return LbsOsaTrace_WriteLog(8u, __str, v20, v21, 1);
  }

  return result;
}

uint64_t GncS04_73FGPosTimerExpiry(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FG timer Expired\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 68, "GncS04_73FGPosTimerExpiry");
    LbsOsaTrace_WriteLog(8u, __str, v1, 5, 1);
  }

  g_GncSFGClientData[0] = 0;
  return GncS04_72SendUpdates(0);
}

uint64_t GncS04_75HandleStopPos(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v53 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_75HandleStopPos");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (v1)
  {
    v4 = *(v1 + 12);
    if (word_2A191DBDE == v4)
    {
      v5 = 0;
    }

    else
    {
      if (word_2A191DC12 != v4)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionNotFound ID,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 87, "GncS04_75HandleStopPos", 2052, v4);
          LbsOsaTrace_WriteLog(8u, __str, v26, 2, 1);
        }

        GncS04_21SendStopPosResp(1, v4);
        return 0;
      }

      v5 = 1;
    }

    v9 = g_GncSConfig;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0);
    if ((IsLoggingAllowed & 1) != 0 || (v9 & 0x200) != 0)
    {
      bzero(v52, 0x400uLL);
      v21 = mach_continuous_time();
      v50 = snprintf(v52, 0x400uLL, "$PDPST,%u,%u", (*&g_MacClockTicksToMsRelation * v21), v4);
      if (HswUtil_AddNmeaCS(v52, 0x400u, &v50))
      {
        if (IsLoggingAllowed)
        {
          LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, v52, v50);
        }

        if ((v9 & 0x200) != 0)
        {
          GncS04_07SndDbgNmea(v52, v50);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 69, "GncS04_09SndStopPosNmea", 772, v50);
        LbsOsaTrace_WriteLog(8u, __str, v28, 0, 1);
      }
    }

    v11 = &g_GncSFGClientData[52 * v5 + 330916];
    v12 = *v11;
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionNotActive ID,%u,State,%hhu\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 87, "GncS04_75HandleStopPos", 2050, v4, *v11);
          LbsOsaTrace_WriteLog(8u, __str, v31, 2, 1);
        }

        v32 = *&g_GncSFGClientData[52 * v5 + 330918];
        __str[8] = 0;
        *__str = 0;
        memset(&__str[20], 0, 27);
        __str[12] = 1;
        *&__str[14] = v32;
        __str[16] = 0;
        GncS03_07PosEventUpdate(__str);
        GncS04_05DeRegClient(v5);
        GncS04_21SendStopPosResp(0, v4);
LABEL_51:
        v34 = 0;
        v35 = 1;
        do
        {
          v36 = v35;
          v37 = &g_GncSFGClientData[132 * v34];
          if (*(v37 + 15) == v4 && v37[28] == 1)
          {
            *(v37 + 28) = 0;
            *(v37 + 36) = 0xFFFFFFFF00000000;
            *(v37 + 52) = 0;
            *(v37 + 44) = 0;
            *(v37 + 15) = 7;
            *(v37 + 8) = 0;
            *(v37 + 9) = 0;
            *(v37 + 78) = 0;
            *(v37 + 43) = -1;
            *(v37 + 88) = xmmword_299761FA0;
            *(v37 + 13) = 0;
            *(v37 + 28) = -1;
            *(v37 + 58) = 255;
            *(v37 + 118) = -1;
            *(v37 + 125) = -1;
            *(v37 + 129) = 0;
            v37[131] = 0;
            *(v37 + 132) = -1;
            *(v37 + 140) = 0x7FFFFFFFLL;
            *(v37 + 37) = -65536;
            *(v37 + 19) = -COERCE_DOUBLE(0x8000000080000000);
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v38 = mach_continuous_time();
              v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GadCacheFreed ID,%u,Idx,%u\n", (*&g_MacClockTicksToMsRelation * v38), "GNC", 73, "GncS04_75HandleStopPos", v4, v34);
              LbsOsaTrace_WriteLog(8u, __str, v39, 4, 1);
            }
          }

          v35 = 0;
          v34 = 1;
        }

        while ((v36 & 1) != 0);
        v40 = 0;
        v41 = 1;
        do
        {
          v42 = v41;
          v43 = &g_GncSFGClientData[165312 * v40];
          if (*(v43 + 147) == v4 && v43[292] == 1)
          {
            bzero(__str, 0x285C0uLL);
            s_GncS_CacheMeasData::s_GncS_CacheMeasData(__str);
            memcpy(v43 + 292, __str, 0x285C0uLL);
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v44 = mach_continuous_time();
              v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasCacheFreed ID,%u,Idx,%u\n", (*&g_MacClockTicksToMsRelation * v44), "GNC", 73, "GncS04_75HandleStopPos", v4, v40);
              LbsOsaTrace_WriteLog(8u, __str, v45, 4, 1);
            }
          }

          v41 = 0;
          v40 = 1;
        }

        while ((v42 & 1) != 0);
        if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v46 = mach_continuous_time();
          v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InstanceCount,%u\n", (*&g_MacClockTicksToMsRelation * v46), "GNC", 68, "GncS04_75HandleStopPos", byte_2A18CCF50);
          v8 = 5;
          goto LABEL_65;
        }

        return 0;
      }

      if (v12 == 3)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          goto LABEL_51;
        }

        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StopAckPending ID,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 73, "GncS04_75HandleStopPos", v4);
        v24 = 4;
LABEL_41:
        LbsOsaTrace_WriteLog(8u, __str, v23, v24, 1);
        goto LABEL_51;
      }
    }

    else
    {
      if (!*v11)
      {
        goto LABEL_51;
      }

      if (v12 == 1)
      {
        v13 = *&g_GncSFGClientData[52 * v5 + 330918];
        __str[8] = 0;
        *__str = 0;
        memset(&__str[20], 0, 27);
        __str[12] = 1;
        *&__str[14] = v13;
        __str[16] = 0;
        GncS03_07PosEventUpdate(__str);
        if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Stopped ID,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 77, "GncS04_75HandleStopPos", 2058, v4);
          LbsOsaTrace_WriteLog(8u, __str, v15, 3, 1);
        }

        if (byte_2A18CCF48 == 1)
        {
          if (AgpsFsmStopTimer(8523270) && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v16 = mach_continuous_time();
            v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GncS04_75HandleStopPos", 1545);
            LbsOsaTrace_WriteLog(8u, __str, v17, 2, 1);
          }

          byte_2A18CCF48 = 0;
        }

        *v11 = 3;
        if (AgpsFsmStartTimer(8523270, 0x258u))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v18 = mach_continuous_time();
            v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "GncS04_75HandleStopPos", 1544, 600);
            v20 = 2;
LABEL_47:
            LbsOsaTrace_WriteLog(8u, __str, v19, v20, 1);
          }
        }

        else
        {
          byte_2A18CCF48 = 1;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v33 = mach_continuous_time();
            v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessStopAck Timer,%u\n", (*&g_MacClockTicksToMsRelation * v33), "GNC", 68, "GncS04_75HandleStopPos", 600);
            v20 = 5;
            goto LABEL_47;
          }
        }

        if (byte_2A191DBDC - 1 >= 2 && byte_2A191DC10 - 1 >= 2)
        {
          if (g_GncSFGClientData[0] == 1)
          {
            if (AgpsFsmStopTimer(8522758) && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v48 = mach_continuous_time();
              v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v48), "GNC", 87, "GncS04_75HandleStopPos", 1545);
              LbsOsaTrace_WriteLog(8u, __str, v49, 2, 1);
            }

            g_GncSFGClientData[0] = 0;
          }
        }

        else
        {
          GncS04_74UpdateScheduler();
        }

        goto LABEL_51;
      }
    }

    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_51;
    }

    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 87, "GncS04_75HandleStopPos", 770);
    v24 = 2;
    goto LABEL_41;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncS04_75HandleStopPos", 517);
    v8 = 0;
LABEL_65:
    LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
  }

  return 0;
}

void GncS04_21SendStopPosResp(int a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncS04_21SendStopPosResp", 424, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 6) = a2;
    v4[14] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_RSP =>GNM ID,%hu,Code,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS04_21SendStopPosResp", a2, a1);
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(130, 128, 8519940, v5);
  }
}

uint64_t GncS04_05DeRegClient(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!byte_2A18CCF50)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InstanceCount,%u\n");
    return LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
  }

  if (a1 >= 2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

LABEL_12:
    bzero(__str, 0x410uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handle,%u\n", v7);
    return LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
  }

  v4 = &g_GncSFGClientData[52 * a1 + 330916];
  if (!*v4)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  --byte_2A18CCF50;
  result = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InstanceCount,%u,DeRegSessionID,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncS04_05DeRegClient", byte_2A18CCF50, *&g_GncSFGClientData[52 * a1 + 330918]);
    result = LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
  }

  *&g_GncSFGClientData[52 * a1 + 330963] = 0;
  *&g_GncSFGClientData[52 * a1 + 330932] = 0u;
  *&g_GncSFGClientData[52 * a1 + 330948] = 0u;
  *v4 = 0u;
  return result;
}

uint64_t GncS04_76HandleStartPos(uint64_t a1)
{
  v100 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_START_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_76HandleStartPos");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = *(a1 + 12);
    if (word_2A191DBDE == v5)
    {
      v6 = 0;
      goto LABEL_10;
    }

    v6 = 1;
    if (word_2A191DC12 == v5)
    {
LABEL_10:
      v10 = &g_GncSFGClientData[52 * v6 + 330916];
      if (*(a1 + 14))
      {
        if (*(a1 + 14))
        {
          v11 = *(a1 + 32);
          if (*(a1 + 15) == 2 && v11 > *(a1 + 36))
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixInterval,%u,ResponseTime,%u\n", v12);
LABEL_47:
              v27 = 1;
              LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
LABEL_107:
              v30 = *(a1 + 12);
              v31 = v27;
              goto LABEL_108;
            }

            goto LABEL_48;
          }

          if (v11 - 1 <= 0x62)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixInterval,%u,MinSupportedInt,%u\n", v18);
              goto LABEL_47;
            }

LABEL_48:
            v27 = 1;
            goto LABEL_107;
          }
        }

        if ((*(a1 + 14) & 2) != 0 && v10[4])
        {
          v19 = *(a1 + 36);
          if (!v19)
          {
            v19 = 1000;
          }

          *(v10 + 7) = v19;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v10 + 7));
            v22 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v21, 4, 1);
          }

          else
          {
            v22 = 1;
          }
        }

        else
        {
          v22 = 0;
        }

        if (*(a1 + 14))
        {
          v23 = 1000;
          if (*(a1 + 32))
          {
            if (v10[4] == 1)
            {
              v23 = 1000;
            }

            else
            {
              v23 = *(a1 + 32);
            }
          }

          *(v10 + 6) = v23;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated FixInterval,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v10 + 6));
            v22 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v25, 4, 1);
          }

          else
          {
            v22 = 1;
          }
        }

        if ((*(a1 + 14) & 4) != 0)
        {
          v32 = *(a1 + 48);
          if (v10[32] != v32)
          {
            v10[32] = v32;
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v33 = mach_continuous_time();
              v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated PosOutput,%u\n", (*&g_MacClockTicksToMsRelation * v33), "GNC", 73, "GncS04_32HandleSessionModifyReq", v10[32]);
              v22 = 1;
              LbsOsaTrace_WriteLog(8u, __str, v34, 4, 1);
            }

            else
            {
              v22 = 1;
            }
          }
        }

        if ((*(a1 + 14) & 8) != 0)
        {
          v40 = *(a1 + 50);
          if (v10[33] != v40)
          {
            v10[33] = v40;
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v41 = mach_continuous_time();
              v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated ConstMask,%u\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 73, "GncS04_32HandleSessionModifyReq", v10[33]);
              v22 = 1;
              LbsOsaTrace_WriteLog(8u, __str, v42, 4, 1);
            }

            else
            {
              v22 = 1;
            }
          }
        }

        if ((*(a1 + 14) & 0x10) == 0)
        {
LABEL_84:
          if ((*(a1 + 14) & 0x20) != 0)
          {
            v46 = *(a1 + 44);
            if (*(v10 + 17) != v46)
            {
              *(v10 + 17) = v46;
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v47 = mach_continuous_time();
                v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated HorAcc,%u\n", (*&g_MacClockTicksToMsRelation * v47), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v10 + 17));
                v22 = 1;
                LbsOsaTrace_WriteLog(8u, __str, v48, 4, 1);
              }

              else
              {
                v22 = 1;
              }
            }
          }

          v49 = *(a1 + 14);
          if ((v49 & 0x40) != 0)
          {
            v50 = *(a1 + 46);
            if (*(v10 + 18) != v50)
            {
              *(v10 + 18) = v50;
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v51 = mach_continuous_time();
                v52 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated VertAcc,%u\n", (*&g_MacClockTicksToMsRelation * v51), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v10 + 18));
                v22 = 1;
                LbsOsaTrace_WriteLog(8u, __str, v52, 4, 1);
              }

              else
              {
                v22 = 1;
              }
            }

            v49 = *(a1 + 14);
          }

          if ((v49 & 0x80) == 0)
          {
            goto LABEL_102;
          }

          v53 = *(a1 + 40);
          if (*(v10 + 11) == v53 || !*(a1 + 15))
          {
            goto LABEL_102;
          }

          *(v10 + 11) = v53;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v54 = mach_continuous_time();
            v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated AgeLimit,%u\n", (*&g_MacClockTicksToMsRelation * v54), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v10 + 11));
            LbsOsaTrace_WriteLog(8u, __str, v55, 4, 1);
          }

          if (*(v10 + 11) && !v10[48])
          {
            v62 = GncS04_71CheckAgeLimitCond(v4);
            *(v10 + 2) = v4;
            *(v10 + 10) = v4;
            if (v62)
            {
              goto LABEL_103;
            }
          }

          else
          {
LABEL_102:
            *(v10 + 2) = v4;
            *(v10 + 10) = v4;
            if (v22)
            {
LABEL_103:
              if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v56 = mach_continuous_time();
                v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionUpdted\n", (*&g_MacClockTicksToMsRelation * v56), "GNC", 77, "GncS04_32HandleSessionModifyReq", 2059);
                LbsOsaTrace_WriteLog(8u, __str, v57, 3, 1);
              }

              GncS04_20SendUpdateToGncpe(v10);
              GncS04_74UpdateScheduler();
            }
          }

          GncS04_08SndStartPosNmea(v10);
          v27 = 255;
          goto LABEL_107;
        }

        v43 = *(a1 + 28);
        if (*(a1 + 28))
        {
          if (!v10[4])
          {
LABEL_81:
            *(v10 + 5) = v43;
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v44 = mach_continuous_time();
              v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated NumReports,%d\n", (*&g_MacClockTicksToMsRelation * v44), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v10 + 5));
              v22 = 1;
              LbsOsaTrace_WriteLog(8u, __str, v45, 4, 1);
            }

            else
            {
              v22 = 1;
            }

            goto LABEL_84;
          }
        }

        else if (!v10[4])
        {
          v43 = -1;
          goto LABEL_81;
        }

        v43 = 1;
        goto LABEL_81;
      }

      if (*v10 != 2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ID,%u,ReqRcvd,%u\n", v26);
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartAckPending ID,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "GncS04_76HandleStartPos", 2053, *(a1 + 12));
        v9 = 4;
        goto LABEL_8;
      }

      return 0;
    }

    if (byte_2A191DC10)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    if (byte_2A191DBDC)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16 >= 2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_52:
        LbsOsaTrace_WriteLog(8u, __str, v17, 2, 1);
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    if (byte_2A18CCF50 >= 2u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v97 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InstanceCount,%u,Max,%lu\n", v97);
        goto LABEL_52;
      }

LABEL_53:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 87, "GncS04_76HandleStartPos", 2049);
        LbsOsaTrace_WriteLog(8u, __str, v29, 2, 1);
      }

      v30 = *(a1 + 12);
      v31 = 0;
      goto LABEL_108;
    }

    ++byte_2A18CCF50;
    v35 = &g_GncSFGClientData[52 * v16 + 330916];
    *v35 = 1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v36 = mach_continuous_time();
      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InstanceCount,%u\n", (*&g_MacClockTicksToMsRelation * v36), "GNC", 73, "GncS04_76HandleStartPos", byte_2A18CCF50);
      LbsOsaTrace_WriteLog(8u, __str, v37, 4, 1);
    }

    if (*(a1 + 14))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
LABEL_67:
        GncS04_05DeRegClient(v16);
        v30 = *(a1 + 12);
        v31 = 1;
LABEL_108:
        GncS04_22SendStartPosResp(v31, v30);
        return 0;
      }

      bzero(__str, 0x410uLL);
      v38 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u,ReqType,%u\n", v38);
LABEL_66:
      LbsOsaTrace_WriteLog(8u, __str, v39, 2, 1);
      goto LABEL_67;
    }

    if (!*(a1 + 48))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_67;
      }

      bzero(__str, 0x410uLL);
      v98 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OutputType,%u\n", v98);
      goto LABEL_66;
    }

    v59 = *(a1 + 24);
    v60 = *(a1 + 15);
    if (v59)
    {
      if (*(a1 + 15))
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          goto LABEL_67;
        }

        bzero(__str, 0x410uLL);
        v61 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessType,%hhu,StopTime,%u\n", v61);
        goto LABEL_66;
      }

      if (v59 <= *(a1 + 20))
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          goto LABEL_67;
        }

        bzero(__str, 0x410uLL);
        v67 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartTime,%u,StopTime,%u\n", v67);
        goto LABEL_66;
      }

      v63 = 0;
    }

    else
    {
      v63 = *(a1 + 15);
      if (v60 == 2)
      {
        v64 = *(a1 + 32);
        if (v64 > *(a1 + 36))
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            goto LABEL_67;
          }

          bzero(__str, 0x410uLL);
          v65 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixInterval,%u,ResponseTime,%u\n", v65);
          goto LABEL_66;
        }

        v66 = 0;
LABEL_130:
        if (v64 - 1 <= 0x62)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            goto LABEL_67;
          }

          bzero(__str, 0x410uLL);
          v68 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixInterval,%u,MinSupportedInt,%u\n", v68);
          goto LABEL_66;
        }

        v69 = !v66;
        if (!*(a1 + 40))
        {
          v69 = 1;
        }

        if ((v69 & 1) == 0)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v70 = mach_continuous_time();
            v71 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AgeLimit,%u,SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v70), "GNC", 87, "GncS04_23ChkStartPosParams", 515, *(a1 + 40), *(a1 + 15));
            LbsOsaTrace_WriteLog(8u, __str, v71, 2, 1);
          }

          *(a1 + 40) = 0;
          v60 = *(a1 + 15);
        }

        v72 = *(a1 + 16);
        if (v72 && !v60)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v73 = mach_continuous_time();
            v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WaitToTimeout,%u,SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v73), "GNC", 87, "GncS04_23ChkStartPosParams", 515, *(a1 + 16), *(a1 + 15));
            LbsOsaTrace_WriteLog(8u, __str, v74, 2, 1);
          }

          v72 = 0;
          *(a1 + 16) = 0;
          v60 = *(a1 + 15);
        }

        *&g_GncSFGClientData[52 * v16 + 330918] = *(a1 + 12);
        *&g_GncSFGClientData[52 * v16 + 330924] = v4;
        *&g_GncSFGClientData[52 * v16 + 330956] = v4;
        g_GncSFGClientData[52 * v16 + 330920] = v60;
        v75 = 1000 * *(a1 + 20);
        *&g_GncSFGClientData[52 * v16 + 330928] = v75;
        v76 = *(a1 + 28);
        if (*(a1 + 28))
        {
          if (!v60)
          {
LABEL_149:
            *&g_GncSFGClientData[52 * v16 + 330936] = v76;
            v77 = *(a1 + 32);
            if (v60 == 1 || v77 == 0)
            {
              v77 = 1000;
            }

            *&g_GncSFGClientData[52 * v16 + 330940] = v77;
            v79 = *(a1 + 24);
            if (v79)
            {
              if (!v60)
              {
                v80 = 1000 * v79;
                v81 = 16;
LABEL_162:
                *&v35[v81] = v80;
LABEL_163:
                g_GncSFGClientData[52 * v16 + 330966] = *(a1 + 54);
                g_GncSFGClientData[52 * v16 + 330948] = *(a1 + 48);
                g_GncSFGClientData[52 * v16 + 330949] = *(a1 + 50);
                *&g_GncSFGClientData[52 * v16 + 330950] = *(a1 + 44);
                *&g_GncSFGClientData[52 * v16 + 330960] = *(a1 + 40);
                g_GncSFGClientData[52 * v16 + 330964] = v72;
                g_GncSFGClientData[52 * v16 + 330965] = *(a1 + 49) != 0;
                if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v84 = mach_continuous_time();
                  v85 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ID,%u,Type,%hhu,NumFix,%d,FixInt,%u,Age,%u,PrefFtaMeasTime,%u,StartTm,%u,StopTm,%u\n", (*&g_MacClockTicksToMsRelation * v84), "GNC", 77, "GncS04_24StoreSessParams", 2057, *&g_GncSFGClientData[52 * v16 + 330918], g_GncSFGClientData[52 * v16 + 330920], *&g_GncSFGClientData[52 * v16 + 330936], *&g_GncSFGClientData[52 * v16 + 330940], *&g_GncSFGClientData[52 * v16 + 330960], g_GncSFGClientData[52 * v16 + 330966], *&g_GncSFGClientData[52 * v16 + 330928], *&g_GncSFGClientData[52 * v16 + 330932]);
                  LbsOsaTrace_WriteLog(8u, __str, v85, 3, 1);
                }

                if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v86 = mach_continuous_time();
                  v87 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespTime,%u,HAcc,%u,VAcc,%u,Output,%u,ConstMask,%u,WaitTO,%u\n", (*&g_MacClockTicksToMsRelation * v86), "GNC", 77, "GncS04_24StoreSessParams", 2057, *&g_GncSFGClientData[52 * v16 + 330944], *&g_GncSFGClientData[52 * v16 + 330950], *&g_GncSFGClientData[52 * v16 + 330952], g_GncSFGClientData[52 * v16 + 330948], g_GncSFGClientData[52 * v16 + 330949], g_GncSFGClientData[52 * v16 + 330964]);
                  LbsOsaTrace_WriteLog(8u, __str, v87, 3, 1);
                }

                if (*&g_GncSFGClientData[52 * v16 + 330960] && !g_GncSFGClientData[52 * v16 + 330964])
                {
                  v88 = GncS04_71CheckAgeLimitCond(v4);
                }

                else
                {
                  v88 = 1;
                }

                if (g_GncSFGClientData[52 * v16 + 330920] && g_GncSFGClientData[52 * v16 + 330965] == 1)
                {
                  GncS04_26InitCache(v16);
                }

                if (!v88)
                {
                  return 0;
                }

                *v35 = 2;
                if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v89 = mach_continuous_time();
                  v90 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StartAckPending ID,%u\n", (*&g_MacClockTicksToMsRelation * v89), "GNC", 73, "GncS04_76HandleStartPos", *&g_GncSFGClientData[52 * v16 + 330918]);
                  LbsOsaTrace_WriteLog(8u, __str, v90, 4, 1);
                }

                if (byte_2A18CCF40 == 1)
                {
                  if (AgpsFsmStopTimer(8523014) && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v91 = mach_continuous_time();
                    v92 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v91), "GNC", 87, "GncS04_76HandleStartPos", 1545);
                    LbsOsaTrace_WriteLog(8u, __str, v92, 2, 1);
                  }

                  byte_2A18CCF40 = 0;
                }

                if (AgpsFsmStartTimer(8523014, 0x3E8u))
                {
                  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v93 = mach_continuous_time();
                    v94 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v93), "GNC", 87, "GncS04_76HandleStartPos", 1544, 1000);
                    v95 = 2;
LABEL_187:
                    LbsOsaTrace_WriteLog(8u, __str, v94, v95, 1);
                  }
                }

                else
                {
                  byte_2A18CCF40 = 1;
                  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v96 = mach_continuous_time();
                    v94 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessStartAck Timer,%u\n", (*&g_MacClockTicksToMsRelation * v96), "GNC", 68, "GncS04_76HandleStartPos", 1000);
                    v95 = 5;
                    goto LABEL_187;
                  }
                }

                GncS04_20SendUpdateToGncpe(&g_GncSFGClientData[52 * v16 + 330916]);
                GncS04_74UpdateScheduler();
                GncS04_08SndStartPosNmea(&g_GncSFGClientData[52 * v16 + 330916]);
                return 0;
              }
            }

            else if (!v60)
            {
              goto LABEL_163;
            }

            v82 = *(a1 + 36);
            v83 = v82 + v75;
            if (v82)
            {
              v80 = v83;
            }

            else
            {
              v80 = 1000;
            }

            v81 = 28;
            goto LABEL_162;
          }
        }

        else if (!v60)
        {
          v76 = -1;
          goto LABEL_149;
        }

        v76 = 1;
        goto LABEL_149;
      }
    }

    v64 = *(a1 + 32);
    v66 = v63 == 0;
    goto LABEL_130;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncS04_76HandleStartPos", 517);
    v9 = 0;
LABEL_8:
    LbsOsaTrace_WriteLog(8u, __str, v8, v9, 1);
  }

  return 0;
}

uint64_t GncS04_26InitCache(uint64_t result)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((g_GncSFGClientData[52 * result + 330948] & 2) != 0)
  {
    v3 = &byte_2A18CCF54;
    if (byte_2A18CCF54 == 1)
    {
      v3 = &byte_2A18CCFD8;
      if (byte_2A18CCFD8 == 1)
      {
        result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
        if ((result & 1) == 0)
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GadCache NA\n");
        goto LABEL_11;
      }
    }

    v6 = *&g_GncSFGClientData[52 * result + 330918];
    *v3 = 1;
    *(v3 + 1) = v6;
    *(v3 + 1) = 0xFFFFFFFF00000000;
    *(v3 + 2) = 0;
    *(v3 + 3) = 0;
    *(v3 + 8) = 7;
    *(v3 + 50) = 0;
    *(v3 + 36) = 0;
    *(v3 + 44) = 0;
    *(v3 + 29) = -1;
    *(v3 + 60) = xmmword_299761FA0;
    *(v3 + 19) = 0;
    *(v3 + 20) = 0;
    *(v3 + 21) = -1;
    *(v3 + 44) = 255;
    *(v3 + 97) = -1;
    *(v3 + 90) = -1;
    v3[103] = 0;
    *(v3 + 101) = 0;
    *(v3 + 13) = -1;
    *(v3 + 14) = 0x7FFFFFFFLL;
    *(v3 + 30) = -65536;
    *(v3 + 124) = -COERCE_DOUBLE(0x8000000080000000);
    result = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GadCacheUsed ID,%u\n");
LABEL_16:
    v4 = v7;
    v5 = 4;
    return LbsOsaTrace_WriteLog(8u, __str, v4, v5, 1);
  }

  if ((g_GncSFGClientData[52 * result + 330948] & 4) == 0)
  {
    return result;
  }

  v1 = &byte_2A18CD05C;
  if (byte_2A18CD05C != 1 || (v1 = &byte_2A18F561C, byte_2A18F561C != 1))
  {
    *v1 = 1;
    *(v1 + 1) = 0;
    v8 = *&g_GncSFGClientData[52 * result + 330918];
    *(v1 + 165284) = 0;
    v1[165292] = 127;
    *(v1 + 1) = v8;
    v1[165309] = 0;
    *(v1 + 165293) = 0u;
    result = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasCacheUsed ID,%u\n");
    goto LABEL_16;
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
  if ((result & 1) == 0)
  {
    return result;
  }

  bzero(__str, 0x410uLL);
  mach_continuous_time();
  v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasCache NA\n");
LABEL_11:
  v4 = v2;
  v5 = 2;
  return LbsOsaTrace_WriteLog(8u, __str, v4, v5, 1);
}

uint64_t GncS04_78HandlePosEstimateReq(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v22[745] = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NO_COST_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_78HandlePosEstimateReq");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (v1)
  {
    v4 = gnssOsa_Calloc("GncS04_78HandlePosEstimateReq", 2891, 1, 0x20uLL);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = gnssOsa_Calloc("GncS04_78HandlePosEstimateReq", 2897, 1, 0x1738uLL);
    *(v5 + 3) = v6;
    if (!v6)
    {
      free(v5);
      return 0;
    }

    *__str = 0;
    v22[0] = 0;
    *(v22 + 7) = 0;
    *(&v22[2] + 4) = 0;
    *(&v22[1] + 4) = 0;
    WORD2(v22[3]) = 0;
    memset(&v22[4], 0, 262);
    bzero(&v22[37], 0x28CuLL);
    for (i = 0; i != 384; i += 3)
    {
      v8 = &__str[i];
      *(v8 + 478) = 0;
      v8[958] = *(&v22[118] + i + 6) & 0xE0;
    }

    *(&v22[194] + 4) = 0u;
    *(&v22[196] + 4) = 0u;
    *(&v22[190] + 4) = 0u;
    *(&v22[192] + 4) = 0u;
    *(&v22[186] + 4) = 0u;
    *(&v22[188] + 4) = 0u;
    *(&v22[182] + 4) = 0u;
    *(&v22[184] + 4) = 0u;
    *(&v22[178] + 4) = 0u;
    *(&v22[180] + 4) = 0u;
    *(&v22[174] + 4) = 0u;
    *(&v22[176] + 4) = 0u;
    *(&v22[170] + 4) = 0u;
    *(&v22[172] + 4) = 0u;
    *(&v22[166] + 4) = 0u;
    *(&v22[168] + 4) = 0u;
    bzero(&v22[199], 0x1109uLL);
    GncP_GetNavData(__str);
    if (WORD2(v22[1]) > 0x7BBu)
    {
      v14 = *__str;
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v14;
      *(v5 + 4) = *__str;
      *(v5 + 5) = v15;
      if (v15 < 0x5265C00)
      {
        v5[12] = 1;
        memcpy(*(v5 + 3), v22, 0x1738uLL);
        goto LABEL_20;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(v20, 0x410uLL);
        v16 = mach_continuous_time();
        v10 = snprintf(v20, 0x40FuLL, "%10u %s%c %s: #%04hx PosAge,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 73, "GncS04_78HandlePosEstimateReq", 772, *(v5 + 5));
        v11 = 4;
        goto LABEL_17;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(v20, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(v20, 0x40FuLL, "%10u %s%c %s: InvalidNav\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncS04_78HandlePosEstimateReq");
      v11 = 2;
LABEL_17:
      LbsOsaTrace_WriteLog(8u, v20, v10, v11, 1);
    }

    v5[12] = 0;
LABEL_20:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(v20, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(v20, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NO_COST_POS_RSP =>GNM Valid,%u,Age,%u,PosTime,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 73, "GncS04_78HandlePosEstimateReq", v5[12], *(v5 + 5), *(v5 + 4));
      LbsOsaTrace_WriteLog(8u, v20, v18, 4, 1);
    }

    AgpsSendFsmMsg(130, 128, 8521220, v5);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncS04_78HandlePosEstimateReq", 517);
    LbsOsaTrace_WriteLog(8u, __str, v13, 0, 1);
  }

  return 0;
}

uint64_t GncS04_80HandleCfgUpdtInd(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = *(a1 + 12);
    if (v1)
    {
      LOWORD(g_GncSConfig) = *(a1 + 14);
    }

    if ((v1 & 2) != 0)
    {
      HIWORD(g_GncSConfig) = *(a1 + 16);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CFG_UPDT_IND NmeaMask,%u,MEUpdtRate,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_80HandleCfgUpdtInd", g_GncSConfig, HIWORD(g_GncSConfig));
      v4 = 4;
LABEL_10:
      LbsOsaTrace_WriteLog(8u, __str, v3, v4, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncS04_80HandleCfgUpdtInd", 517);
    v4 = 0;
    goto LABEL_10;
  }

  return 0;
}

uint64_t GncS04_82HandlePosEvntResp(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncS04_82HandlePosEvntResp", 517);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
      return 0;
    }

    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT_RSP Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_82HandlePosEvntResp", *(a1 + 12));
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 12);
  if (v4 <= 4)
  {
    if (*(a1 + 12) > 2u)
    {
      if (v4 != 3)
      {
        if (v4 != 4)
        {
          goto LABEL_28;
        }

LABEL_24:
        v9 = 2;
LABEL_26:
        GncS04_31ChkSendPendingStopAck(v9);
        return 0;
      }
    }

    else if (v4 != 1)
    {
      if (v4 == 2)
      {
        return 0;
      }

      goto LABEL_28;
    }

    v9 = 255;
    goto LABEL_26;
  }

  if (*(a1 + 12) <= 6u)
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {
        goto LABEL_22;
      }

LABEL_28:
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        return 0;
      }

      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncS04_82HandlePosEvntResp", 770, *(a1 + 12));
      v8 = 2;
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (v4 != 7)
  {
    if (v4 != 8)
    {
      if (v4 == 9)
      {
        v5 = 0;
LABEL_23:
        GncS04_35ChkSendPendingStartAck(v5);
        return 0;
      }

      goto LABEL_28;
    }

LABEL_22:
    v5 = 255;
    goto LABEL_23;
  }

  return 0;
}

void GncS04_99DeInitFGClientInstance(void)
{
  if (g_GncSFGClientData[0] == 1)
  {
    AgpsFsmStopTimer(8522758);
  }

  if (byte_2A18CCF48 == 1)
  {
    AgpsFsmStopTimer(8523270);
  }

  if (byte_2A18CCF40 == 1)
  {

    AgpsFsmStopTimer(8523014);
  }
}

void s_GncS_CacheMeasData::s_GncS_CacheMeasData(s_GncS_CacheMeasData *this)
{
  v1 = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0xFFFFFFFF00000000;
  *(this + 12) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 28) = -NAN;
  *(this + 18) = -1;
  *(this + 10) = 0;
  *(this + 22) = 0;
  do
  {
    v2 = this + v1;
    v2[46] = -1;
    *(v2 + 47) = 0;
    v2[55] = 0;
    v1 += 10;
  }

  while (v1 != 640);
  v3 = 0;
  *(this + 86) = 0xFFFFFFFF00000000;
  *(this + 696) = -1;
  *(this + 700) = -1;
  *(this + 708) = 0x7FFFFFFFLL;
  *(this + 716) = 0;
  *(this + 359) = -1;
  *(this + 90) = -COERCE_DOUBLE(0x8000000080000000);
  *(this + 728) = 0;
  for (i = 44; i != 164524; i += 10280)
  {
    v5 = this + i + 688;
    *v5 = 0;
    v5[4] = 0;
    v6 = v3;
    for (j = 8; j != 10280; j += 1284)
    {
      v8 = &v5[j];
      *v8 = 0;
      v8[2] = 0;
      v9 = v6;
      v10 = 1280;
      do
      {
        v11 = this + v9;
        v11[744] = -1;
        *(v11 + 188) = 0;
        *(v11 + 378) = 0;
        *(v11 + 190) = 0;
        v11[749] = 0;
        *(this + v9 + 745) = 0;
        v9 += 20;
        v10 -= 20;
      }

      while (v10);
      v6 += 1284;
    }

    v3 += 10280;
  }

  *(this + 165212) = 0;
  *(this + 20652) = 0x700000000;
  *(this + 165224) = 0u;
  *(this + 165238) = 0;
  *(this + 82623) = -1;
  *(this + 165248) = 0;
  *(this + 41313) = 0;
  *(this + 20657) = -1;
  *(this + 41316) = 0;
  *(this + 41317) = 0;
  *(this + 41318) = -1;
  *(this + 165276) = -1;
  *(this + 165278) = -1;
  *(this + 82641) = -1;
  *(this + 165284) = 0;
  *(this + 165292) = 127;
  *(this + 82647) = 0;
  *(this + 41324) = 0;
  *(this + 165300) = 0;
  *(this + 41326) = 0;
  *(this + 82654) = 0;
}

uint64_t Gnm10_00InitReq(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_INIT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_00InitReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (v1)
  {
    off_2A19268F8 = 0;
    *&qword_2A19268D8 = 0u;
    *&off_2A19268E8 = 0u;
    *&g_GnmCBs = 0u;
    g_NmeaMask = 0;
    Gnm30_00InitConfig();
    qword_2A1939EE8 = 0;
    unk_2A1939EF0 = 0;
    qword_2A1939EF8 = 0;
    g_GnmInstances[0] = 0;
    *g_HWStatus = 0;
    *&v4 = 0x400000004;
    *(&v4 + 1) = 0x400000004;
    *&qword_2A1920A90 = v4;
    unk_2A1920AA0 = 0u;
    *&dword_2A1920AB0 = 0u;
    unk_2A1920AC0 = 0u;
    unk_2A1920AD0 = 0u;
    *(&xmmword_2A1920ADC + 4) = 0u;
    *algn_2A1920AF0 = 0u;
    *&dword_2A1920B00 = 0u;
    unk_2A1920B10 = 0u;
    unk_2A1920B20 = 0u;
    *(&xmmword_2A1920B2C + 4) = 0u;
    byte_2A1920B40 = 0;
    g_HalStatusInfo = 0;
    g_AssistReq = 0xFFFFFFFF00000000;
    g_ClearGnssReq = 0;
    bzero(__str, 0x1748uLL);
    for (i = 0; i != 384; i += 3)
    {
      v6 = &__str[i];
      *(v6 + 482) = 0;
      v6[966] = __str[i + 966] & 0xE0;
    }

    memset(&__str[1348], 0, 256);
    bzero(&__str[1608], 0x1100uLL);
    memcpy(&g_PosEstimate, __str, 0x1748uLL);
    qword_2A19397B8 = 0;
    unk_2A19397C0 = 0;
    g_Gnm_NVStoreCntxt = 0;
    *(&dword_2A19397C6 + 1) = 0;
    g_SbState = 234881279;
    g_PowerRepEnbStatus = 0;
    g_XOTimerStatus = 0;
    g_PrevUsedLtl = 0;
    bzero(&g_LTLDataPPM, 0x5E2uLL);
    g_AgeingTimeGpsSeconds = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm10_00InitReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  return 0;
}

void *Gnm10_01DeinitReq(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_DEINIT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_01DeinitReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    g_IsHwInit = 0;
    Gnm02_24AbortAllNafSessions(7);
    Gnm02_26AbortAllAssistSessions();
    v4 = 2u;
    do
    {
      v5 = *&g_GnmInstances[v4];
      if (v5)
      {
        Gnm02_21DeleteInstn(v5);
      }

      v4 += 2;
    }

    while (v4 != 8);
    g_GnmInstances[0] = 0;
    Gnm53_71DeInitializeXOParams();
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmState,Active/Reset->Init\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 77, "Gnm10_01DeinitReq", 261);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 3, 1);
    }

    return &a_GnmInitState;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm10_01DeinitReq", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 0, 1);
    }

    return 0;
  }
}

uint64_t Gnm10_04PositioningReq(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_REG_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_04PositioningReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = 0;
    v5 = *(a1 + 54);
    v6 = 1;
    do
    {
      v7 = *&g_GnmInstances[2 * v4 + 2];
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          if (*(v7 + 2) == 2 && (*(v8 + 8) & 1) != 0)
          {
            break;
          }
        }
      }

      v6 = v4++ < 2;
    }

    while (v4 != 3);
    if (v6 || Gnm02_39GetEarlyStartInstn())
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 77, "Gnm10_04PositioningReq", 1025);
        LbsOsaTrace_WriteLog(0xBu, __str, v10, 3, 1);
      }

      v11 = *(a1 + 12);
      v12 = v5 & 2;
      v13 = 9;
LABEL_15:
      Gnm11_00ApiStatusCB(v13, 1, v11, v12);
      v14 = *(a1 + 64);
      if (v14)
      {
        free(v14);
      }

      *(a1 + 64) = 0;
      return 0;
    }

    if ((dword_2A192081C & 0x800) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 77, "Gnm10_04PositioningReq", 1027);
        LbsOsaTrace_WriteLog(0xBu, __str, v19, 3, 1);
      }

      v11 = *(a1 + 12);
      v12 = v5 & 2;
      v13 = 7;
      goto LABEL_15;
    }

    v20 = Gnm02_13ReqNewNafInstn(*(a1 + 12), "GNM_REG_POS_REQ");
    if (!v20 || (v21 = v20, (v22 = *(v20 + 1)) == 0) || *(v20 + 2) != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v24), "GNM", 87, "Gnm10_04PositioningReq", 2052);
        LbsOsaTrace_WriteLog(0xBu, __str, v25, 2, 1);
      }

      v11 = *(a1 + 12);
      v12 = v5 & 2;
      v13 = 3;
      goto LABEL_15;
    }

    v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v22->i8[4] = *(a1 + 54);
    v22[9] = *(a1 + 64);
    v22[1].i8[0] = *(a1 + 48);
    v22[1].i32[1] = v23;
    v22[5].i32[0] = v23;
    v22[2] = vmul_s32(*(a1 + 36), vdup_n_s32(0x3E8u));
    v22[3].i32[0] = *(a1 + 32);
    v22[3].i32[1] = *(a1 + 24);
    v22[4].i32[1] = v23;
    v22[5].i16[2] = *(a1 + 44);
    v22[6].i16[2] = *(a1 + 50);
    v22[6].i16[3] = *(a1 + 52);
    v22[4].i32[0] = *(a1 + 28);
    v22[7] = *(a1 + 16);
    v22[8].i8[0] = *(a1 + 56);
    if (!Gnm10_27SendPosStart(v21))
    {
      Gnm11_00ApiStatusCB(11, 1, *(a1 + 12), v5 & 2);
      Gnm02_21DeleteInstn(v21);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 69, "Gnm10_04PositioningReq", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v16, 0, 1);
    }

    Gnm11_00ApiStatusCB(11, 0, 0, 0);
  }

  return 0;
}

BOOL Gnm10_27SendPosStart(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = gnssOsa_Calloc("Gnm10_27SendPosStart", 636, 1, 0x38uLL);
  v5 = v3;
  if (v3)
  {
    v3[6] = *a1;
    v3[7] = 0;
    if ((*(v2 + 4) & 2) != 0)
    {
      v3[14] = *(v2 + 44);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessType\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm10_27SendPosStart", 770);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
    }

    LODWORD(v4) = *(v2 + 16);
    *&v8 = v4 * 0.001;
    *(v5 + 5) = *&v8;
    LODWORD(v8) = *(v2 + 20);
    *(v5 + 6) = (v8 * 0.001);
    *(v5 + 8) = *(v2 + 24);
    v5[22] = *(v2 + 52);
    v5[23] = *(v2 + 54);
    *(v5 + 48) = *(v2 + 8);
    *(v5 + 50) = 55;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionId,%u,StartTime,%u,StopTime,%u,NoOfRep,%u,FixInt,%u RespTime,%u,HorAcc,%u,VerAcc,%u,PosOutput,%u,ConstRep,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm10_27SendPosStart", v5[6], *(v5 + 5), *(v5 + 6), v5[14], *(v5 + 8), *(v5 + 9), v5[22], v5[23], *(v5 + 48), *(v5 + 50));
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_START_POS_REQ =>GNCS Id,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm10_27SendPosStart", v5[6]);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    AgpsSendFsmMsg(128, 130, 8519680, v5);
  }

  return v5 != 0;
}

uint64_t Gnm10_05DiscardPosReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_REG_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_05DiscardPosReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm11_00ApiStatusCB(4, 1, *(a1 + 12), *(a1 + 54) & 2);
    v4 = *(a1 + 64);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm10_05DiscardPosReq", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 0, 1);
    }

    Gnm11_00ApiStatusCB(11, 0, 0, 0);
  }

  return 0;
}

uint64_t Gnm10_06StopPosnReq(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_STOP_POSN_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_06StopPosnReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm10_06StopPosnReq", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 0, 1);
    }

    v8 = 11;
    goto LABEL_14;
  }

  InstnFromNafId = Gnm02_32GetInstnFromNafId(*(a1 + 12));
  if (!InstnFromNafId)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm10_06StopPosnReq", 2052);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
    }

    v8 = 3;
LABEL_14:
    Gnm11_00ApiStatusCB(v8, 0, 0, 1);
    return 0;
  }

  v5 = InstnFromNafId;
  if ((*(*(InstnFromNafId + 8) + 4) & 7) == 0 || !Gnm02_23StopNafSession(InstnFromNafId))
  {
    Gnm11_00ApiStatusCB(11, 1, *(a1 + 12), 1);
    Gnm02_21DeleteInstn(v5);
  }

  return 0;
}

uint64_t Gnm10_08HandleClearGnss(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_CLEAR_GNSS_CACHE\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_08HandleClearGnss");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    if ((v4 - 0x400000) <= 0xFFC00000)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeleteFields,0x%X\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm10_08HandleClearGnss", 770, v4);
        LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
      }

      v7 = 1;
      goto LABEL_15;
    }

    if (byte_2A1938EB9 != 1)
    {
      byte_2A1938EB9 = 1;
      Gnm17_12SendClearNv(v4);
      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PrevReqOngoing\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm10_08HandleClearGnss", 1028);
      v10 = 2;
      goto LABEL_13;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm10_08HandleClearGnss", 517);
    v10 = 0;
LABEL_13:
    LbsOsaTrace_WriteLog(0xBu, __str, v9, v10, 1);
  }

  v7 = 11;
LABEL_15:
  Gnm11_00ApiStatusCB(v7, 0, 0, 16);
  return 0;
}

uint64_t Gnm10_09DisableGnss(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_DISABLE_GNSS\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_09DisableGnss");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm02_24AbortAllNafSessions(7);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm10_09DisableGnss", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t Gnm10_10RegisterGnmCBs(void *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_REG_CALLBACKS\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_10RegisterGnmCBs");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (a1[2])
    {
      g_GnmCBs = a1[2];
    }

    if (a1[3])
    {
      qword_2A19268D8 = a1[3];
    }

    if (a1[4])
    {
      off_2A19268F0 = a1[4];
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm10_10RegisterGnmCBs", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t Gnm10_13StopFwActivityRsp(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_13StopFwActivityRsp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm10_13StopFwActivityRsp", 517);
    v10 = 0;
LABEL_19:
    LbsOsaTrace_WriteLog(0xBu, __str, v9, v10, 1);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Activity,%hhu,Resp,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm10_13StopFwActivityRsp", *(a1 + 12), *(a1 + 13));
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  v6 = *(a1 + 12);
  if (v6 == 3)
  {
    Gnm37_13HandleSbStopFwActResp(*(a1 + 13));
    return 0;
  }

  if (v6 != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ActivityType,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm10_13StopFwActivityRsp", 770, *(a1 + 12));
    v10 = 2;
    goto LABEL_19;
  }

  if (HIBYTE(dword_2A19397C6) == 1)
  {
    if (*(a1 + 13))
    {
      v7 = byte_2A19397CA;
    }

    else
    {
      v7 = 11;
    }

    Gnm11_00ApiStatusCB(v7, 0, 0, 17);
  }

  byte_2A19397CA = 0;
  dword_2A19397C6 = 0;
  return 0;
}

uint64_t Gnm10_14InjectLTL(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_INJECT_LTL\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_14InjectLTL");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm10_14InjectLTL", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
    }

    v6 = 11;
    goto LABEL_10;
  }

  if (g_BootMode != 2)
  {
    v6 = 2;
LABEL_10:
    Gnm11_00ApiStatusCB(v6, 0, 0, 17);
    return 0;
  }

  HIWORD(dword_2A19397C6) = 256;
  LOBYTE(dword_2A19397C6) = 1;
  Gnm10_29SendFwActivity(1, 1);
  Gnm29_01RestoreVarMENv(0);
  return 0;
}

uint64_t Gnm10_29SendFwActivity(char a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    result = gnssOsa_Calloc("Gnm10_29SendFwActivity", 712, 1, 0x10uLL);
    if (!result)
    {
      return result;
    }

    v4 = result;
    *(result + 12) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_START_FW_ACTIVE_IND =>GNCP Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm10_29SendFwActivity", v4[12]);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
    }

    v7 = 8392195;
  }

  else
  {
    result = gnssOsa_Calloc("Gnm10_29SendFwActivity", 729, 1, 0x10uLL);
    if (!result)
    {
      return result;
    }

    v4 = result;
    *(result + 12) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_REQ =>GNC Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm10_29SendFwActivity", v4[12]);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }

    v7 = 8392448;
  }

  AgpsSendFsmMsg(128, 134, v7, v4);
  return 1;
}

uint64_t Gnm10_15NmeaUpdateReq(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_REG_NMEA_UPDATES\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_15NmeaUpdateReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = 517;
LABEL_13:
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v11, "GNM", 69, "Gnm10_15NmeaUpdateReq", v12);
    LbsOsaTrace_WriteLog(0xBu, __str, v13, 0, 1);
    return 0;
  }

  v4 = gnssOsa_Calloc("Gnm10_15NmeaUpdateReq", 527, 1, 0x10uLL);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = 1537;
    goto LABEL_13;
  }

  v5 = v4;
  v6 = *(a1 + 16);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
  if (v6)
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Registering\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm10_15NmeaUpdateReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }

    off_2A19268E0 = *(a1 + 16);
    v5[12] = 1;
    v10 = *(a1 + 24);
  }

  else
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Deregistering\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm10_15NmeaUpdateReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
    }

    v10 = 0;
    off_2A19268E0 = 0;
    v5[12] = 0;
  }

  *(v5 + 7) = v10;
  g_NmeaMask = v10;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_REQ =>GNCP\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm10_15NmeaUpdateReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
  }

  AgpsSendFsmMsg(128, 134, 8786688, v5);
  return 0;
}

uint64_t Gnm10_25SendZxMsg(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SEND_ZX_MES\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_25SendZxMsg");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm10_25SendZxMsg", 517);
    v9 = 0;
LABEL_13:
    LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm10_25SendZxMsg", 770);
    v9 = 2;
    goto LABEL_13;
  }

  v5 = *(a1 + 24);
  v6 = v4[2];
  if (v5 < 7 || v6 != 86)
  {
    goto LABEL_15;
  }

  if (v4[3] != 110)
  {
    v6 = 86;
LABEL_15:
    Gnm07_01Send(v6, v4[4], v4, v5);
    goto LABEL_16;
  }

  Gnm06_04SendTruthPos(*(a1 + 16), *(a1 + 24));
LABEL_16:
  v11 = *(a1 + 16);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 16) = 0;
  return 0;
}

uint64_t Gnm10_26DiscardZxMsg(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SEND_ZX_MES\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_26DiscardZxMsg");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
      *(a1 + 16) = 0;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm10_26DiscardZxMsg", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 0, 1);
  }

  return 0;
}

BOOL Gnm10_28StopPositioning(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm10_28StopPositioning", 686, 1, 0x10uLL);
  v3 = v2;
  if (v2)
  {
    v2[6] = *a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_REQ =>GNCS Id,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm10_28StopPositioning", v3[6]);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 130, 8519936, v3);
  }

  return v3 != 0;
}

BOOL Gnm10_31SendMEWakeRsp(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm10_31SendMEWakeRsp", 755, 1, 0x10uLL);
  v3 = v2;
  if (v2)
  {
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_RSP =>GNCP Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm10_31SendMEWakeRsp", a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 134, 8392708, v3);
  }

  return v3 != 0;
}

_BYTE *NK_Set_Fix_Type(_BYTE *result, double *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int *a8, double a9, double a10, int a11, char a12, int a13, int a14, _BYTE *a15, _DWORD *a16, unsigned int *a17, _DWORD *a18, int *a19, int *a20)
{
  v20 = *a8;
  if (v20 > 8)
  {
    v21 = 100000000.0;
  }

  else
  {
    v21 = dbl_299761FB0[v20];
  }

  v22 = sqrt(a2[5] + a2[6]);
  v23 = sqrt(a2[8] + a2[9]);
  v24 = 1000 * a11 / a5;
  v25 = sqrt(v21);
  if (!a13 || (v26 = *a17, *a17 >= v24))
  {
    v29 = 0;
    v30 = 0;
    v28 = 0;
    LOBYTE(v27) = 0;
    *(a4 + 20) = 0;
    goto LABEL_31;
  }

  if (*(a4 + 16) > v26)
  {
    v27 = *(a3 + 40) == 2 || *(a3 + 60) == 2 || *(a3 + 64) == 2 || *(a3 + 68) == 2 || *(a3 + 72) == 2 || *(a3 + 76) == 2 || *(a3 + 80) == 2;
    v28 = (*(a3 + 84) == 2 || *(a3 + 88) == 2) && (v20 - 3) < 6;
    v30 = a9 < 1000000.0 && *(a3 + 48) == 2 || *(a3 + 28) == 2 || v27;
LABEL_27:
    v29 = v23 < v25 + ((v26 * a5 / 0x1F4) & 0xFFFFFE) && v22 < 400.0;
    ++*(a4 + 20);
    goto LABEL_31;
  }

  if ((v20 - 4) > 4)
  {
    v29 = 0;
    v30 = 0;
    v28 = 0;
    LOBYTE(v27) = 0;
    goto LABEL_31;
  }

  LOBYTE(v27) = 0;
  v28 = 0;
  v30 = 0;
  v29 = 0;
  if (*(a3 + 2) <= 1u)
  {
    goto LABEL_27;
  }

LABEL_31:
  v32 = *(a3 + 52);
  v31 = *(a3 + 56);
  v33 = *(a3 + 48);
  v35 = a10 < 500000.0 && v32 == 2;
  *a19 = 0;
  v36 = result[5];
  if (v36 != 1 || (*a4 & 1) != 0)
  {
    v37 = 1;
LABEL_40:
    if (*a17 < 0x1869F)
    {
      ++*a17;
    }

    *a16 = 0;
    if (v36)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    if ((v38 & v29) == 1 && *a17 <= v24 && *(a3 + 2) <= 1u)
    {
      *a19 = 1;
    }

    goto LABEL_93;
  }

  if (v22 >= 400.0 && (a6 > 0x7CF || (*a15 & 1) != 0 || v22 >= 1000.0))
  {
    v39 = a12 ^ 1;
    v37 = 1;
    if (a6 < 0x186A0)
    {
      v39 = 0;
    }

    if ((v39 & 1) != 0 || !*a15)
    {
      goto LABEL_40;
    }
  }

  v40 = *(a3 + 28);
  if (a14 > 8 || (v41 = v40 == 1, result[4] == 1))
  {
    if (v40 == 1)
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }
  }

  if (((v30 | v35) & 1) != 0 || (v45 = *(a3 + 1), v44 = 5, 5 - v41 > v45) && (4 - v41 > v45 || (a9 < 160000.0 ? (v46 = v33 == 1) : (v46 = 0), !v46 ? (v47 = 0) : (v47 = 1), v32 == 1 ? (v48 = a10 < 160000.0) : (v48 = 0), (v44 = 5, !v48) && (v47 & 1) == 0)))
  {
    v42 = v31 == 2 || v35;
    if ((v30 & 1) != 0 || (v22 < 400.0 ? (v43 = v42 == 0) : (v43 = 1), v43 || (v44 = 4, 4 - v41 > *(a3 + 1))))
    {
      if ((v20 > 1) | v30 & 1)
      {
        if (v33 == 1)
        {
LABEL_155:
          v37 = 2;
LABEL_156:
          *a19 = v37;
          v37 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v60 = *(a3 + 1);
        if (2 - v41 > v60)
        {
          v37 = 2;
        }

        else
        {
          v37 = 3;
        }

        if (2 - v41 <= v60 || v33 == 1)
        {
          goto LABEL_156;
        }
      }

      if (*(a3 + 84) == 1 && (*(a3 + 60) == 1 || *(a3 + 64) == 1 || *(a3 + 68) == 1 || *(a3 + 72) == 1 || *(a3 + 76) == 1 || *(a3 + 80) == 1))
      {
        goto LABEL_155;
      }

      if (*(a3 + 88) == 1)
      {
        if (*(a3 + 60) == 1 || *(a3 + 64) == 1 || *(a3 + 68) == 1 || *(a3 + 72) == 1 || *(a3 + 76) == 1)
        {
          goto LABEL_155;
        }

        if (*(a3 + 80) == 1)
        {
          v37 = 2;
        }

        else
        {
          v37 = 1;
        }

        if (*(a3 + 80) == 1 || v29)
        {
          goto LABEL_156;
        }
      }

      else if (v29)
      {
        v37 = 1;
        goto LABEL_156;
      }

      v37 = 1;
      if (1 - v41 > *(a3 + 1) || ((v30 | v28) & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_156;
    }
  }

  *a19 = v44;
  if (*a16 < 0x1869Fu)
  {
    ++*a16;
  }

  *a17 = 0;
  *a18 = 0;
  if (!a13 && *a16 >= 3u)
  {
    *a16 = 2;
  }

LABEL_93:
  if (*a15 == 1)
  {
    if (*a16 > 4u)
    {
      goto LABEL_95;
    }

    v49 = 1;
    if (a6 > 0x12B || !v36 || v22 >= 400.0)
    {
      goto LABEL_97;
    }

    if (*(a3 + 1) >= 6u)
    {
LABEL_95:
      v49 = 0;
      *a15 = 0;
    }

    else
    {
      v49 = 1;
    }
  }

  else
  {
    v49 = 0;
  }

LABEL_97:
  *a20 = 0;
  if ((v20 - 5) >= 4)
  {
    v50 = 30;
  }

  else
  {
    v50 = 100;
  }

  if (result[8] == 1 && (*a4 & 1) == 0 && ((v49 & 1) != 0 || v50 > a7 && v23 < v25))
  {
    v51 = *(a3 + 40);
    v52 = v51 == 1;
    v53 = v31 == 2 || v27;
    if (v53)
    {
      v54 = v31 != 2 || v27;
      if ((v54 & 1) == 0 && (v52 ^ 3u) <= *(a3 + 5))
      {
        v55 = 4;
LABEL_166:
        *a20 = v55;
        return result;
      }
    }

    else
    {
      v56 = *(a3 + 5);
      if (v51 == 1)
      {
        v57 = 3;
      }

      else
      {
        v57 = 4;
      }

      if (v57 <= v56 || (v52 ^ 3u) <= v56 && v31 == 1)
      {
        v55 = 5;
        goto LABEL_166;
      }
    }

    v58 = v20 > 1 || v27;
    if ((v58 & 1) == 0)
    {
      v59 = v51 == 1 ? 1 : 2;
      if (v59 <= *(a3 + 5))
      {
        v55 = 3;
        goto LABEL_166;
      }
    }

    if (*(a3 + 68) == 1)
    {
      v55 = 2;
      goto LABEL_166;
    }

    if (*(a3 + 60) == 1)
    {
      v55 = 2;
    }

    else
    {
      v55 = 1;
    }

    if (*(a3 + 60) == 1 || v29)
    {
      goto LABEL_166;
    }

    v61 = v53 ^ 1;
    if ((v51 != 1) > *(a3 + 5))
    {
      v61 = 1;
    }

    if ((v61 & 1) == 0)
    {
      v55 = 1;
      goto LABEL_166;
    }
  }

  return result;
}

double *NK_Correct_State(double *result, _BYTE *a2, double *a3)
{
  if (*a2 == 1)
  {
    a3[14] = a3[14] + *result * -0.00000000333564095;
  }

  if (a2[1] == 1)
  {
    a3[15] = a3[15] + result[1] * -0.00000000333564095;
  }

  if (a2[2] == 1)
  {
    a3[16] = a3[16] + result[2] * -0.00000000333564095;
  }

  if (a2[3] == 1)
  {
    a3[17] = a3[17] + result[3] * -0.00000000333564095;
  }

  if (a2[5] == 1 && a2[6] == 1 && a2[7] == 1)
  {
    for (i = 0; i != 3; ++i)
    {
      a3[i + 5] = a3[i + 5] - result[i + 5];
    }
  }

  if (a2[8] == 1 && a2[9] == 1 && a2[10] == 1)
  {
    v4 = a3 + 8;
    v5 = a3[4];
    for (j = 8; j != 11; ++j)
    {
      *v4 = *v4 - result[j];
      v4[3] = -result[j] / v5;
      ++v4;
    }
  }

  if (a2[4] == 1)
  {
    a3[21] = a3[21] - result[4];
  }

  return result;
}

uint64_t DW_Parity_Encode(unsigned int a1, int a2)
{
  v2 = 0;
  v3 = a1 & 0xFFFFFF3F;
  if ((a2 & 0xFFFFFFF7) != 1)
  {
    v3 = a1;
  }

  v4 = 1;
  do
  {
    v5 = Parity_Table[v2] & v3 ^ ((Parity_Table[v2] & v3) >> 16);
    v3 |= ((0x6996u >> ((v5 ^ BYTE1(v5) ^ ((v5 ^ (v5 >> 8)) >> 4)) & 0xF) << 31) >> 31) & v4;
    v4 *= 2;
    ++v2;
  }

  while (v2 != 6);
  if ((a2 & 0xFFFFFFF7) == 1)
  {
    v3 ^= Forced_Parity[v3 & 3];
  }

  if ((v3 & 0x40000000) != 0)
  {
    return v3 ^ 0x3FFFFFC0;
  }

  else
  {
    return v3;
  }
}

void GNB_Debug_Flush_Check(void)
{
  v0 = qword_2A1938EF8 - qword_2A1938EF0;
  if (dword_2A1938EE8 - g_CB_GDbg > 0)
  {
    v0 = 0;
  }

  if ((v0 + dword_2A1938EE8 - g_CB_GDbg) <= 0x1FF)
  {

    GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
  }
}

void GNB_Debug_BlockMove(char *__src, int a2)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = a2;
    v4 = g_CB_GDbg;
    v5 = qword_2A1938EF8;
    v6 = qword_2A1938EF8 - qword_2A1938EF0;
    if (dword_2A1938EE8 - g_CB_GDbg > 0)
    {
      v6 = 0;
    }

    if (v6 + dword_2A1938EE8 - g_CB_GDbg <= a2)
    {
      GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
      v10 = g_CB_GDbg;
      v11 = qword_2A1938EF8;
      v12 = qword_2A1938EF8 - qword_2A1938EF0;
      if (dword_2A1938EE8 - g_CB_GDbg > 0)
      {
        v12 = 0;
      }

      v13 = v12 + dword_2A1938EE8 - g_CB_GDbg;
      if (v2 > 1023)
      {
        if (v13 == 1024)
        {
          do
          {
            v16 = 1023;
            do
            {
              v17 = v16;
              v18 = v16-- != 0;
            }

            while (v18 && __src[v17] != 10);
            v19 = v16 + 2;
            if (v17)
            {
              v20 = v19;
            }

            else
            {
              v20 = 1024;
            }

            v21 = GN_GPS_Write_GNB_Debug(v20, __src);
            if (!v21)
            {
              LbsOsaTrace_PrintAsciiBuf(0, 4u, 1, "<OVERFLOW>\n", 12);
              goto LABEL_12;
            }

            __src += v21;
            v2 -= v21;
          }

          while (v2 > 1023);
          if (v2 >= 1)
          {
            v22 = qword_2A1938EF8;
            v23 = g_CB_GDbg;
            do
            {
              v24 = v22 - v23;
              if (v2 >= v24)
              {
                v25 = v24;
              }

              else
              {
                v25 = v2;
              }

              memcpy(v23, __src, v25);
              v23 = (g_CB_GDbg + v25);
              g_CB_GDbg = v23;
              v22 = qword_2A1938EF8;
              if (v23 >= qword_2A1938EF8)
              {
                v23 = qword_2A1938EF0;
                g_CB_GDbg = qword_2A1938EF0;
              }

              __src += v25;
              v9 = __OFSUB__(v2, v25);
              v2 -= v25;
            }

            while (!((v2 < 0) ^ v9 | (v2 == 0)));
          }
        }
      }

      else if (v13 > v2)
      {
        do
        {
          v14 = v11 - v10;
          if (v2 >= v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = v2;
          }

          memcpy(v10, __src, v15);
          v10 = (g_CB_GDbg + v15);
          g_CB_GDbg = v10;
          v11 = qword_2A1938EF8;
          if (v10 >= qword_2A1938EF8)
          {
            v10 = qword_2A1938EF0;
            g_CB_GDbg = qword_2A1938EF0;
          }

          __src += v15;
          v9 = __OFSUB__(v2, v15);
          v2 -= v15;
        }

        while (!((v2 < 0) ^ v9 | (v2 == 0)));
      }
    }

    else
    {
      do
      {
        v7 = v5 - v4;
        if (v2 >= v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = v2;
        }

        memcpy(v4, __src, v8);
        v4 = (g_CB_GDbg + v8);
        g_CB_GDbg = v4;
        v5 = qword_2A1938EF8;
        if (v4 >= qword_2A1938EF8)
        {
          v4 = qword_2A1938EF0;
          g_CB_GDbg = qword_2A1938EF0;
        }

        __src += v8;
        v9 = __OFSUB__(v2, v8);
        v2 -= v8;
      }

      while (!((v2 < 0) ^ v9 | (v2 == 0)));
    }

LABEL_12:

    GNB_Debug_Flush_Check();
  }
}

uint64_t FPE_ApplyNewMeas(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int64x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = *MEMORY[0x29EDCA608];
  v11 = &a4[5491].i8[8];
  if (a1 > 10)
  {
    if (a1 <= 12)
    {
      v12 = &a4[132878].u8[1];
      if (a1 == 11)
      {
        g_p_CB_LCD_SA_Dbg = a6;
        g_TCU = a4[5492].i64;
        g_FPE_LogSeverity = *(a3 + 4);
        g_DBfd = a7;
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v24 = g_TCU ? *(g_TCU + 8) : 0.0;
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "FPE_Init", 230, v23, v24, "Welcome to SA Diagnostic Log");
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v30 = *(g_TCU + 8);
            }

            else
            {
              v30 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "FPE_Init", 232, v29, v30, "Init process started");
          }
        }

        if (*a2 != 12)
        {
          if (g_FPE_LogSeverity)
          {
            v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v32 = *(g_TCU + 8);
            }

            else
            {
              v32 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f error, FPE version does not match. fpeVersion->fpeVersion =%d, FPE_HEADER_VERSION=%d", "FPE_Init", 237, v31, v32, *a2, 12);
          }

          g_FPE_AssertFlag = 1;
        }

        a4[132947].i64[0] = 0;
        a4[132945] = 0u;
        a4[132946] = 0u;
        a4[132944] = 0u;
        bzero(a4, 0x2074FAuLL);
        a4[132932].i64[0] = 0xC08F380000000000;
        a4[132942] = 0u;
        a4[132943].i16[4] = *(a3 + 4);
        Init = ExtMeasExtract_Init(&a4[1].i64[1]);
        if (Init)
        {
          a4[5496] = 0u;
          a4[5497] = 0u;
          a4[5494] = 0u;
          a4[5495] = 0u;
          a4[5492] = 0u;
          a4[5493] = 0u;
          *(v11 + 2) = 0xC08F380000000000;
          *(v11 + 17) = -999;
          *(v11 + 40) = vdupq_n_s64(0xC08F380000000000);
          *(v11 + 8) = 0x7FF8000000000000;
          a4[5496] = 0u;
          *(v11 + 11) = 0xC08F380000000000;
          *(v11 + 13) = 0;
          v11[112] = 0;
          if (MGen_Init(a4 + 5499))
          {
            Init = KfirController_Init(a4[5607].i64);
            if (Init)
            {
              LOBYTE(Init) = MeasSyncher_Init(a4[5607].i64);
            }
          }

          else
          {
            LOBYTE(Init) = 0;
          }
        }

        else
        {
          v11[112] = 0;
        }

        g_FPE_AssertFlag = 0;
        a4[132943].i8[0] = Init;
        *&v64 = 1;
        v34 = &v64;
        v35 = 0;
        v36 = 8;
      }

      else
      {
        HIDWORD(v15) = -1775253149 * *&a4[5492].i64[1] + 28633112;
        LODWORD(v15) = HIDWORD(v15);
        if ((v15 >> 2) <= 0xDA740C && (g_FPE_LogSeverity & 8) != 0)
        {
          v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v17 = *(g_TCU + 8);
          }

          else
          {
            v17 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f fpeLogVer=%u peLibVer=%s", "FPE_ApplyNewMeas", 372, v16, v17, *a2, a2 + 2);
        }

        FpeEnabler_UpdateFlags(a4[132929].i8, 12, a2);
        bzero(a8, 0x3F8uLL);
        v37 = &unk_2A14BE000;
        if (a4[132932].i8[8] == 1)
        {
          LOBYTE(v64) = 0;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v38 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v39 = *(g_TCU + 8);
            }

            else
            {
              v39 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "FpeManager_PositionGeneration", 549, v38, v39, "FpeMan: starting PositionGeneration");
          }

          v40 = (MGen_generateMeas(a4[5492].i8, &a4[1].i32[2], v11[112], a4[5499].i64, a4[5607].i64) & 0xFFFFFFFD) != 0;
          KfirController_ProcessMeas(a4[5607].i64, &v64, a5);
          updated = FpeEnabler_UpdateStopFlags(a4[132929].i64, v40);
          v42 = updated;
          v43 = g_FPE_AssertFlag;
          v44 = v64;
          if ((g_FPE_AssertFlag & 1) != 0 || (updated & 1) != 0 || !v64)
          {
            if ((g_FPE_LogSeverity & 4) != 0)
            {
              v46 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v45 = &unk_2A14BE000;
              if (g_TCU)
              {
                v47 = *(g_TCU + 8);
              }

              else
              {
                v47 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Trigering Internal Reset: [AssertFlag=%u FPEnStop=%u kfirOkFlag=%u]", "FPE_ApplyNewMeas", 402, v46, v47, g_FPE_AssertFlag, v42, v44);
              v43 = g_FPE_AssertFlag;
            }

            else
            {
              v45 = &unk_2A14BE000;
            }

            FusionManager_InternalReset(a4, (v11 + 112), (v42 | v43) & 1, (v44 & 1) == 0);
            *(a8 + 24) = 0;
            v45[2616] = 0;
          }

          v37 = &unk_2A14BE000;
        }

        else
        {
          FpeManager_FlushInFIFOs(a4);
          if (a4[132938].i8[0] == 1)
          {
            ExtMeasExtract_extractData(&a4[1].i64[1], 3u, &a4[132932].u64[1] + 4);
          }

          if (a4[132938].i8[1] == 1)
          {
            ExtMeasExtract_extractData(&a4[1].i64[1], 4u, a4[132934].i64 + 4);
          }

          if (a4[132938].i8[2] == 1)
          {
            ExtMeasExtract_extractData(&a4[1].i64[1], 6u, &a4[132933].u64[1]);
          }
        }

        KfirController_GetPosition(a4[5607].i64, a4[5492].i64, a5, a8);
        *(a8 + 392) = a4[132942].i8[12];
        *(a8 + 400) = a4[132942].i8[13];
        a4[132942].i16[6] = 0;
        *(a8 + 376) = a4[132942].i8[14];
        *(a8 + 384) = a4[132942].i8[15];
        if (a4[132932].i8[8] == 1)
        {
          memset(v71, 0, sizeof(v71));
          v50 = 0.0;
          v51 = 0.0;
          v52 = 0.0;
          v53 = 0.0;
          v54 = 0.0;
          if (*v12 == 1)
          {
            Transpose_Mat(3);
            Sub_Mat(3, a4[5594].i32, 3, v71, 3, v71);
            v54 = Norma_Vec(3, v71);
            v69 = 0u;
            v70 = 0u;
            InsUtil_ECEF2Geo_Iterative(a4[5594].i64, &v69, 6378137.0);
            v55 = *(a8 + 208);
            v56 = *(&v70 + 1);
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v64 = 0u;
            Mult_Mat_Mat(9);
            Mult_Mat_Mat(9);
            v57 = Norma_Vec(3, a4[5596].i32);
            v58 = sqrt(*&v65 * *&v65 + *(&v64 + 1) * *(&v64 + 1));
            v59 = Norma_Vec(9, &v64);
            if (v59 <= 1.0e-30)
            {
              v60 = NAN;
            }

            else
            {
              v62 = 0u;
              v63 = 0u;
              Mult_Mat_scalar(1.0 / v59, 9, &v64, 3, &v62);
              v60 = atan2(*&v63, *(&v62 + 1)) * 57.2957795;
            }

            v53 = v55 - v56;
            v52 = *(a8 + 240) - v57;
            v51 = *(a8 + 248) - v58;
            v50 = *(a8 + 256) - v60;
          }

          if ((g_FPE_LogSeverity & 0x200) != 0)
          {
            LC_LOG_NMEA_GENERIC("%s,SOLN,%d,%d,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f", "$PFPEX", *v12, a4[132878].u8[2], *(a8 + 240), *(a8 + 248), *(a8 + 256), *(a8 + 40), *(a8 + 48), *(a8 + 64), *(a8 + 96), *(a8 + 104), *(a8 + 120), *(a8 + 80), *(a8 + 88), *(a8 + 136), *(a8 + 144), *(a8 + 152), v54, v53, v52, v51, v50);
          }
        }

        KFP_ResetStatistics(a4[13693].i64);
        if (v37[2616] == 1)
        {
          *(a8 + 24) = 0;
        }

        else if (*(a8 + 24))
        {
          a4[132943].i8[1] = 1;
        }

        LOBYTE(v64) = 0;
        LOBYTE(v71[0]) = 0;
        FpeEnabler_UpdateState(a4[132929].i8, &v64, v71);
        if (LOBYTE(v71[0]) == 1)
        {
          FusionManager_InternalReset(a4, (v11 + 112), 1, 0);
        }

        v34 = a8;
        v35 = 1;
        v36 = 1016;
      }

      FpeManager_printFpeSoln(v34, v35, v36);
      return FPE_InterfaceLogger(a1, a2);
    }

    if (a1 == 13)
    {
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v26 = *(g_TCU + 8);
        }

        else
        {
          v26 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f ReInit", "FPE_ApplyNewMeas", 350, v25, v26);
      }

      FpeEnabler_UpdateFlags(a4[132929].i8, 13, a2);
      LOBYTE(v64) = 0;
      LOBYTE(v71[0]) = 0;
      FpeEnabler_UpdateState(a4[132929].i8, &v64, v71);
      if (LOBYTE(v71[0]) == 1)
      {
        FusionManager_InternalReset(a4, &a4[5498].i64[1], 1, 0);
      }

      return FPE_InterfaceLogger(a1, a2);
    }

    if (a1 != 14)
    {
      goto LABEL_28;
    }
  }

  else if ((a1 - 4) >= 3 && a1 != 2)
  {
LABEL_28:
    FpeEnabler_UpdateFlags(a4[132929].i8, a1, a2);
    if (Cyc_Record_Count_Free(a4[5484].i64[a1], v11[112]))
    {
      ExtMeasExtract_extractData(&a4[1].i64[1], a1, a2);
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v28 = *(g_TCU + 8);
        }

        else
        {
          v28 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f MeasExt CRB full of type %d. Triggering reset!", "FPE_ApplyNewMeas", 519, v27, v28, a1);
      }

      g_FPE_AssertFlag = 1;
    }

    if (a1 == 10)
    {
      goto LABEL_82;
    }

    return FPE_InterfaceLogger(a1, a2);
  }

  FpeEnabler_UpdateFlags(a4[132929].i8, a1, a2);
  if (a1 == 10)
  {
LABEL_82:
    *v11 = *a2;
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v48 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v49 = *(g_TCU + 8);
      }

      else
      {
        v49 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %f EPOCH: TOW_Stat=%d OS_TIME=%d TTICK=%d TOW=%.15f WEEK_NUM=%d", "FPE_SendGnssEpochTimesToLog", 192, v48, v49, *(v11 + 2) + (604800 * *(v11 + 20)), *(a2 + 4), *a2, *(a2 + 1), *(a2 + 1), a2[11]);
    }

    return FPE_InterfaceLogger(a1, a2);
  }

  if (a1 == 5)
  {
    v18 = *a2;
    if (*a2)
    {
      v19 = a4[131166].u32[2];
      if (v19)
      {
        v20 = &a4[131696].i64[1];
        v21 = a4 + 17927;
        do
        {
          if (*v20 != 0.0)
          {
            v21->i32[0] = v18;
          }

          v21 += 7342;
          ++v20;
          --v19;
        }

        while (v19);
      }

      *(v11 + 460) = v18;
    }
  }

  return FPE_InterfaceLogger(a1, a2);
}

char **FpeManager_printFpeSoln(char **result, int a2, int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v16 = a3;
  v17 = a2;
  if ((g_FPE_LogSeverity & 0x100) != 0)
  {
    v3 = result;
    if (result)
    {
      LODWORD(v4) = a3;
      v5 = g_p_CB_LCD_SA_Dbg;
      if (g_p_CB_LCD_SA_Dbg)
      {
        v6 = *g_p_CB_LCD_SA_Dbg;
        v7 = 36;
        v8 = 1u;
        do
        {
          *v5 = v6 + 1;
          *v6 = v7;
          v6 = *v5;
          if (*v5 >= *(v5 + 24))
          {
            v6 = *(v5 + 16);
            *v5 = v6;
          }

          v7 = aSolnData[v8++];
        }

        while (v8 != 12);
        LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
        v5 = g_p_CB_LCD_SA_Dbg;
        v9 = g_p_CB_LCD_SA_Dbg;
      }

      else
      {
        v9 = 0;
      }

      for (i = 0; i != 4; ++i)
      {
        if (v9)
        {
          sprintf_02x(v9, *(&v16 + i));
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v5 = g_p_CB_LCD_SA_Dbg;
          v9 = g_p_CB_LCD_SA_Dbg;
        }
      }

      v13 = 0;
      v14 = v5;
      do
      {
        if (v14)
        {
          sprintf_02x(v14, *(&v17 + v13));
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v5 = g_p_CB_LCD_SA_Dbg;
          v14 = g_p_CB_LCD_SA_Dbg;
        }

        ++v13;
      }

      while (v13 != 4);
      v4 = v4;
      result = v5;
      do
      {
        if (result)
        {
          sprintf_02x(result, *v3);
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v5 = g_p_CB_LCD_SA_Dbg;
          result = g_p_CB_LCD_SA_Dbg;
        }

        v3 = (v3 + 1);
        --v4;
      }

      while (v4);
      if (v5)
      {
        v15 = (*v5)++;
        *v15 = 10;
        if (*v5 >= *(v5 + 24))
        {
          *v5 = *(v5 + 16);
        }
      }
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v11 = *(g_TCU + 8);
        }

        else
        {
          v11 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input FpeSolution is equal to nullptr!", "FpeManager_printFpeSoln", 614, v10, v11);
      }

      g_FPE_AssertFlag = 1;
    }
  }

  return result;
}

uint64_t FusionManager_InternalReset(uint64_t result, uint64_t a2, int a3, int a4)
{
  v7 = result;
  if ((g_FPE_LogSeverity & 0x10) != 0)
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

    result = LC_LOG_SEVERITY_GENERIC("INF:[%s() #%d] TT = %d, %0.3f FPE starting Internal Reset! (fpeErr=%u,peErr=%u)", "FusionManager_InternalReset", 283, v8, v9, a3, a4);
  }

  if (a3)
  {
    *(v7 + 2127089) = 0;
    FpeManager_FlushInFIFOs(v7);
    v10 = MGen_Init((a2 + 8));
    *(v7 + 87936) = 0u;
    *(v7 + 87952) = 0u;
    *(v7 + 87904) = 0u;
    *(v7 + 87920) = 0u;
    *(v7 + 87872) = 0u;
    *(v7 + 87888) = 0u;
    *(v7 + 87880) = 0xC08F380000000000;
    *(v7 + 87898) = -999;
    *(v7 + 87904) = vdupq_n_s64(0xC08F380000000000);
    *(v7 + 87928) = 0x7FF8000000000000;
    *(v7 + 87936) = 0u;
    *(v7 + 87952) = 0xC08F380000000000;
    *(v7 + 87968) = 0;
    if (v10)
    {
      *(a2 + 1752) = *(a2 + 1736);
      *(a2 + 1821) = 0;
      *(a2 + 1848) = *(a2 + 1832);
      *(a2 + 1917) = 0;
      *(a2 + 1944) = *(a2 + 1928);
      *(a2 + 2013) = 0;
      *(a2 + 2040) = *(a2 + 2024);
      *(a2 + 2109) = 0;
      *(a2 + 2136) = *(a2 + 2120);
      *(a2 + 2205) = 0;
      *(a2 + 2232) = *(a2 + 2216);
      *(a2 + 131096) = 0;
      *(a2 + 131100) = 0;
      *(a2 + 131104) = 0;
      v11 = 1;
      *(a2 + 2301) = 0;
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v13 = *(g_TCU + 8);
        }

        else
        {
          v13 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f internal reset error! (one module was not successful)", "FusionManager_InternalReset", 302, v12, v13);
      }

      v11 = 0;
      g_FPE_AssertFlag = 1;
    }

    *(v7 + 2127088) = v11;
  }

  else if (!a4)
  {
    return result;
  }

  result = KfirController_Init(a2 + 1736);
  if ((result & 1) == 0)
  {
    if (g_FPE_LogSeverity)
    {
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v15 = *(g_TCU + 8);
      }

      else
      {
        v15 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f internal reset error! (KfirController was not successful)", "FusionManager_InternalReset", 313, v14, v15);
    }

    g_FPE_AssertFlag = 1;
  }

  return result;
}

uint64_t FpeManager_FlushInFIFOs(uint64_t a1)
{
  for (i = 0; i != 15; ++i)
  {
    result = isMeasDataType(i);
    if (result)
    {
      result = ExtMeasExtract_FlushMemory(a1 + 24, *(a1 + 87976), i);
    }
  }

  return result;
}

uint64_t lsim03_01SendPosnApiStatus(int a1, int a2, int a3, int a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim03_01SendPosnApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if ((a2 - 1) > 1)
  {
    if ((a2 - 3) > 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "lsim03_01SendPosnApiStatus", 515, a1, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
      }

LABEL_18:
      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
      if (!result)
      {
        return result;
      }

      goto LABEL_19;
    }

    v14 = gnssOsa_Calloc("lsim03_01SendPosnApiStatus", 204, 1, 0x285A0uLL);
    if (v14)
    {
      v11 = v14;
      v14[1] = a4;
      v14[2] = a3;
      *v14 = a1;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>PospCB,Api,%u,Status,%u,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 77, "lsim03_01SendPosnApiStatus", a4, a3, a1, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v16, 3, 1);
      }

      GNS_ExecutePospCallback(4, 165280, v11);
      goto LABEL_13;
    }
  }

  else
  {
    v10 = gnssOsa_Calloc("lsim03_01SendPosnApiStatus", 181, 1, 0x285A0uLL);
    if (v10)
    {
      v11 = v10;
      v10[1] = a4;
      v10[2] = a3;
      *v10 = a1;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>CpCB,Api,%u,Status,%u,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 77, "lsim03_01SendPosnApiStatus", a4, a3, a1, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 3, 1);
      }

      GNS_ExecuteCpCb();
LABEL_13:
      free(v11);
      goto LABEL_18;
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  if (!result)
  {
    return result;
  }

LABEL_19:
  bzero(__str, 0x410uLL);
  v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v20, "LSM", 73, "lsim03_01SendPosnApiStatus");
  return LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
}

_BYTE *lsim03_11PrintAidRequestParams(void *a1, const char *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1 && a1[1])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v6 = a1[1];
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2] == 0;
      v10 = 78;
      if (v9)
      {
        v11 = 78;
      }

      else
      {
        v11 = 89;
      }

      if (v8)
      {
        v12 = 89;
      }

      else
      {
        v12 = 78;
      }

      if (v7)
      {
        v10 = 89;
      }

      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LSIMAR,%s,RefTime,%c,RefPos,%c,Iono,%c\n", v5, "LSM", 73, "lsim03_11PrintAidRequestParams", a2, v10, v12, v11);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    v14 = a1[1];
    if (v14[3] == 1)
    {
      result = a1[2];
      if (result)
      {
        result = lsim03_05TraceArPerConstel(result, "GPS ");
        v14 = a1[1];
      }
    }

    if (v14[4] == 1)
    {
      result = a1[3];
      if (result)
      {
        result = lsim03_05TraceArPerConstel(result, "GLON");
        v14 = a1[1];
      }
    }

    if (v14[7] == 1)
    {
      result = a1[6];
      if (result)
      {
        result = lsim03_05TraceArPerConstel(result, "BDS ");
        v14 = a1[1];
      }
    }

    if (v14[5] == 1)
    {
      result = a1[4];
      if (result)
      {
        result = lsim03_05TraceArPerConstel(result, "QZSS");
        v14 = a1[1];
      }
    }

    if (v14[6] == 1)
    {
      result = a1[5];
      if (result)
      {
        return lsim03_05TraceArPerConstel(result, "SBAS");
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AidReqParams\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "lsim03_11PrintAidRequestParams", 513);
      return LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }
  }

  return result;
}

uint64_t lsim03_05TraceArPerConstel(_BYTE *a1, const char *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (a1[11])
    {
      v6 = 89;
    }

    else
    {
      v6 = 78;
    }

    if (a1[9])
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    if (a1[10])
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    if (a1[5])
    {
      v9 = 89;
    }

    else
    {
      v9 = 78;
    }

    if (a1[12])
    {
      v10 = 89;
    }

    else
    {
      v10 = 78;
    }

    if (a1[4])
    {
      v11 = 89;
    }

    else
    {
      v11 = 78;
    }

    if (a1[8])
    {
      v12 = 89;
    }

    else
    {
      v12 = 78;
    }

    if (a1[7])
    {
      v13 = 89;
    }

    else
    {
      v13 = 78;
    }

    if (a1[6])
    {
      v14 = 89;
    }

    else
    {
      v14 = 78;
    }

    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s:  LSIMAR,%s,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimeM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v5, "LSM", 73, "lsim03_05TraceArPerConstel", a2, v14, v13, v12, v11, v10, v9, v8, v7, v6);
    v16 = 4;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ArList\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 87, "lsim03_05TraceArPerConstel", 513);
    v16 = 2;
  }

  return LbsOsaTrace_WriteLog(0xCu, __str, v15, v16, 1);
}

uint64_t lsim03_12UpdateAidReqParams(char *a1, void *a2, int a3, int a4)
{
  v37 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim03_12UpdateAidReqParams");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (!a2 || (v10 = a2[1]) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AidReqParams\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim03_12UpdateAidReqParams", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v25, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 0;
    }

    goto LABEL_40;
  }

  v11 = *a1;
  if (*a1)
  {
    if ((*a1 & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_44:
    v10[1] = 0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10[2] = 0;
  if ((v11 & 2) == 0)
  {
    goto LABEL_44;
  }

LABEL_7:
  if ((v11 & 4) == 0)
  {
LABEL_8:
    *v10 = 0;
  }

LABEL_9:
  if (v10[3] == 1)
  {
    v12 = a2[2];
    if (v12)
    {
      lsim03_06UpdateAllowedArForConstel(*(a1 + 1), v12, v10 + 3);
      v10 = a2[1];
    }
  }

  if (v10[4] == 1)
  {
    v13 = a2[3];
    if (v13)
    {
      lsim03_06UpdateAllowedArForConstel(*(a1 + 2), v13, v10 + 4);
      v10 = a2[1];
    }
  }

  if (v10[5] == 1)
  {
    v14 = a2[4];
    if (v14)
    {
      lsim03_06UpdateAllowedArForConstel(*(a1 + 5), v14, v10 + 5);
      v10 = a2[1];
    }
  }

  if (v10[6] == 1)
  {
    v15 = a2[5];
    if (v15)
    {
      lsim03_06UpdateAllowedArForConstel(*(a1 + 4), v15, v10 + 6);
      v10 = a2[1];
    }
  }

  v17 = v10[7];
  v16 = v10 + 7;
  if (v17 == 1)
  {
    v18 = a2[6];
    if (v18)
    {
      lsim03_06UpdateAllowedArForConstel(*(a1 + 3), v18, v16);
    }
  }

  if ((~a3 & 0x21) != 0 && (a3 & 3) != 3)
  {
    goto LABEL_30;
  }

  v19 = a2[2];
  if (!v19)
  {
    v19 = gnssOsa_Calloc("lsim03_12UpdateAidReqParams", 939, 1, 0xD8uLL);
    a2[2] = v19;
    if (v19)
    {
      *(a2[1] + 3) = 1;
      goto LABEL_29;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 0;
    }

LABEL_40:
    bzero(__str, 0x410uLL);
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v26, "LSM", 73, "lsim03_12UpdateAidReqParams");
    LbsOsaTrace_WriteLog(0xCu, __str, v27, 4, 1);
    return 0;
  }

LABEL_29:
  v19[4] = 1;
LABEL_30:
  if (a4)
  {
    lsim02_45CheckWithDeliveredAssistance(a2);
  }

  v20 = a2[1];
  if (v20[1] & 1) != 0 || (*v20 & 1) != 0 || v20[3] == 1 && (v29 = a2[2]) != 0 && ((v29[5] & 1) != 0 || (v29[6] & 1) != 0 || (v29[10] & 1) != 0 || (v29[9] & 1) != 0 || (v29[7] & 1) != 0 || (v29[8] & 1) != 0 || (v29[4] & 1) != 0 || (v29[12]) || v20[4] == 1 && (v30 = a2[3]) != 0 && ((v30[5] & 1) != 0 || (v30[6] & 1) != 0 || (v30[10] & 1) != 0 || (v30[9] & 1) != 0 || (v30[7] & 1) != 0 || (v30[8] & 1) != 0 || (v30[4] & 1) != 0 || (v30[12]) || v20[5] == 1 && (v31 = a2[4]) != 0 && ((v31[5] & 1) != 0 || (v31[6] & 1) != 0 || (v31[10] & 1) != 0 || (v31[9] & 1) != 0 || (v31[7] & 1) != 0 || (v31[8] & 1) != 0 || (v31[4] & 1) != 0 || (v31[12]) || v20[6] == 1 && (v32 = a2[5]) != 0 && ((v32[5] & 1) != 0 || (v32[6] & 1) != 0 || (v32[10] & 1) != 0 || (v32[9] & 1) != 0 || (v32[7] & 1) != 0 || (v32[8] & 1) != 0 || (v32[4] & 1) != 0 || (v32[12]) || v20[7] == 1 && (v33 = a2[6]) != 0 && ((v33[5] & 1) != 0 || (v33[6] & 1) != 0 || (v33[10] & 1) != 0 || (v33[9] & 1) != 0 || (v33[7] & 1) != 0 || (v33[8] & 1) != 0 || (v33[4] & 1) != 0 || (v33[12] & 1) != 0 || v33[11] == 1))
  {
    lsim03_11PrintAidRequestParams(a2, "POSITIONING AFTER MASKS");
    v21 = 1;
  }

  else
  {
    v21 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v34 = mach_continuous_time();
      v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AR NOT NEEDED AFTER MASKS\n", (*&g_MacClockTicksToMsRelation * v34), "LSM", 73, "lsim03_12UpdateAidReqParams");
      LbsOsaTrace_WriteLog(0xCu, __str, v35, 4, 1);
      v21 = 0;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim03_12UpdateAidReqParams");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  return v21;
}

uint64_t lsim03_06UpdateAllowedArForConstel(__int16 a1, _BYTE *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_06UpdateAllowedArForConstel");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelFlag\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "lsim03_06UpdateAllowedArForConstel", 513);
    v11 = 2;
    return LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
  }

  if ((a1 & 8) != 0)
  {
    if ((a1 & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    a2[6] = 0;
    if ((a1 & 0x10) != 0)
    {
LABEL_6:
      if ((a1 & 0x20) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_32;
    }
  }

  a2[4] = 0;
  if ((a1 & 0x20) != 0)
  {
LABEL_7:
    if ((a1 & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  a2[7] = 0;
  if ((a1 & 0x40) != 0)
  {
LABEL_8:
    if ((a1 & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  a2[8] = 0;
  if ((a1 & 0x80) != 0)
  {
LABEL_9:
    if ((a1 & 0x400) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  a2[5] = 0;
  if ((a1 & 0x400) != 0)
  {
LABEL_10:
    if ((a1 & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  a2[9] = 0;
  if ((a1 & 0x200) != 0)
  {
LABEL_11:
    if ((a1 & 0x800) != 0)
    {
      goto LABEL_12;
    }

LABEL_37:
    a2[11] = 0;
    if ((a1 & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_36:
  a2[10] = 0;
  if ((a1 & 0x800) == 0)
  {
    goto LABEL_37;
  }

LABEL_12:
  if ((a1 & 0x100) == 0)
  {
LABEL_13:
    a2[12] = 0;
  }

LABEL_14:
  if ((a2[5] & 1) == 0 && (a2[6] & 1) == 0 && (a2[10] & 1) == 0 && (a2[9] & 1) == 0 && (a2[7] & 1) == 0 && (a2[8] & 1) == 0 && (a2[4] & 1) == 0 && (a2[11] & 1) == 0 && (a2[12] & 1) == 0)
  {
    *a3 = 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim03_06UpdateAllowedArForConstel");
    v11 = 4;
    return LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
  }

  return result;
}

uint64_t lsim03_13SendLocInfoReq(int a1, uint64_t a2, int a3, char a4)
{
  v37 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim03_13SendLocInfoReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if ((a3 - 1) >= 4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src,%u,SId,%u\n", v13);
      goto LABEL_30;
    }

LABEL_31:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim03_13SendLocInfoReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
    }

    return 0;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocInfoReq Src,%u,SId,%u\n", v14);
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if ((*a2 - 1) >= 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocType,%u,Src,%u,SId,%u\n", v15, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v10 = *(a2 + 16);
  if ((v10 - 1) >= 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosRepType,%u,Src,%u,SId,%u\n", v16, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (*(a2 + 6) <= -2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HorAcc,%u,Src,%u,SId,%u\n", v17, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (*(a2 + 8) <= -2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VertAcc,%u,Src,%u,SId,%u\n", v18, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (*(a2 + 7) - 255 >= 0xFFFFFF66)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HorAccConf,%u,Src,%u,SId,%u\n", v19, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (*(a2 + 9) - 255 >= 0xFFFFFF66)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VertAccConf,%u,Src,%u,SId,%u\n", v20, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if ((*(a2 + 12) - 7200001) < 0xFF9226E7)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespTime,%u,Src,%u,SId,%u\n", v11, "LSM");
LABEL_30:
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 0, 1);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v25 = *(a2 + 24);
  if (v25 && (v25 - 7200001) < 0xFF9226E7)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EarlyRespTime,%u,Src,%u,SId,%u\n", v26, "LSM");
    goto LABEL_30;
  }

  if (*(a2 + 20) && (*a2 == 1 || v10 != 1))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AgeLimit,%u,PosReportType,%u,LocInfoType,%u,Src,%u,SId,%u\n", v29, "LSM", 69);
    goto LABEL_30;
  }

  if (*(a2 + 32) >= 0x20u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocShapeTypes,%X,Src,%u,SId,%u\n", v27, "LSM");
    goto LABEL_30;
  }

  if (*(a2 + 28) >= 0x10u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VelReqType,%X,Src,%u,SId,%u\n", v28, "LSM");
    goto LABEL_30;
  }

  if (*(a2 + 36) <= 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v35 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssIDMask,%X,Src,%u,SId,%u\n", v35, "LSM");
    goto LABEL_30;
  }

  v30 = gnssOsa_Calloc("lsim03_13SendLocInfoReq", 1256, 1, 0x40uLL);
  *(v30 + 3) = a1;
  *(v30 + 14) = a3;
  v23 = 1;
  v30[60] = a4;
  v31 = *(a2 + 31);
  v32 = *(a2 + 16);
  *(v30 + 1) = *a2;
  *(v30 + 2) = v32;
  *(v30 + 47) = v31;
  AgpsSendFsmMsg(131, 131, 8623616, v30);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v33 = mach_continuous_time();
    v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "LSM", 73, "lsim03_13SendLocInfoReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v34, 4, 1);
  }

  return v23;
}

BOOL lsim03_14SendAbortInd(int a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_14SendAbortInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = gnssOsa_Calloc("lsim03_14SendAbortInd", 1282, 1, 0x14uLL);
  v7 = v6;
  if (v6)
  {
    v6[3] = a1;
    v6[4] = a2;
    AgpsSendFsmMsg(131, 131, 8623363, v6);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim03_14SendAbortInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }
  }

  return v7 != 0;
}

uint64_t lsim03_16AbortInd(int a1, int a2, _BOOL4 a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v30 = a3;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_16AbortInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v29 = 0;
  if ((a2 - 3) < 2)
  {
    if (g_GnsPospCallback)
    {
      v8 = 1;
      v9 = 2;
      goto LABEL_9;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v27 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx POSP,SId,%u\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 87, "lsim03_16AbortInd", 258, a1);
    v22 = 2;
LABEL_30:
    LbsOsaTrace_WriteLog(0xCu, __str, v21, v22, 1);
    goto LABEL_31;
  }

  if ((a2 - 1) > 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 69, "lsim03_16AbortInd", 515, a2);
    v22 = 0;
    goto LABEL_30;
  }

  if (!g_GnsCpCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP,SId,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim03_16AbortInd", 258, a1);
    v26 = 2;
    return LbsOsaTrace_WriteLog(0xCu, __str, v25, v26, 1);
  }

  v8 = 2;
  v9 = 1;
LABEL_9:
  if (!lsim11_07GnmGetSessionFromNativeId(a1, v8, &v29))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 69, "lsim03_16AbortInd", 2052, a1, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 0, 1);
    }

    if (a3)
    {
      lsim03_01SendPosnApiStatus(a1, a2, 4, v9);
    }

LABEL_31:
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_32;
  }

  v10 = gnssOsa_Calloc("lsim03_16AbortInd", 1356, 1, 0x10uLL);
  if (v10)
  {
    v11 = v10;
    if (!a3 && (lsim11_03GnmUpdateSession(v29, &v30) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionUpdateFailed GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "lsim03_16AbortInd", v29);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
    }

    v11[3] = v29;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SId,%u,GnmSId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 77, "lsim03_16AbortInd", a1, v29, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 3, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_ABORT_REQ =>GNM,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim03_16AbortInd", v29);
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    AgpsSendFsmMsg(131, 128, 8591616, v11);
    lsim03_09ResetAidReqData();
    goto LABEL_31;
  }

  if (a3)
  {
    lsim03_01SendPosnApiStatus(a1, a2, 6, v9);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  if (result)
  {
LABEL_32:
    bzero(__str, 0x410uLL);
    v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v28, "LSM", 73, "lsim03_16AbortInd");
    v26 = 4;
    return LbsOsaTrace_WriteLog(0xCu, __str, v25, v26, 1);
  }

  return result;
}

uint64_t lsim03_09ResetAidReqData(void)
{
  v4 = *MEMORY[0x29EDCA608];
  g_lsimAsstReqOsTimeMs = 0;
  memset_s(&g_lsimAsstDelivered, 0x20uLL, 0, 0x20uLL);
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstReqData Cleared\n", (*&g_MacClockTicksToMsRelation * v1), "LSM", 77, "lsim03_09ResetAidReqData");
    return LbsOsaTrace_WriteLog(0xCu, __str, v2, 3, 1);
  }

  return result;
}

uint64_t lsim03_17GnssMeasResultInd(int a1, const void *a2, int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_17GnssMeasResultInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = gnssOsa_Calloc("lsim03_17GnssMeasResultInd", 1416, 1, 0x285A0uLL);
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      memcpy(v8, a2, 0x2859CuLL);
    }

    else
    {
      v8[170] = 9;
      v8[8] = 9;
      *(v8 + 4) = 1;
    }

    *v9 = a1;
    if (a3 == 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:MEAS =>PospCB,SId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 77, "lsim03_17GnssMeasResultInd", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 3, 1);
      }

      GNS_ExecutePospCallback(1, 165276, v9);
    }

    else if (a3 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:MEAS =>CpCB,SId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 77, "lsim03_17GnssMeasResultInd", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 3, 1);
      }

      GNS_ExecuteCpCb();
    }

    free(v9);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "lsim03_17GnssMeasResultInd");
    return LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
  }

  return result;
}

uint64_t lsim03_18GnssPosnResultInd(int a1, __int128 *a2, int a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_18GnssPosnResultInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = gnssOsa_Calloc("lsim03_18GnssPosnResultInd", 1460, 1, 0x285A0uLL);
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[3];
      v8[2] = a2[2];
      v8[3] = v12;
      *v8 = v10;
      v8[1] = v11;
      v13 = a2[4];
      v14 = a2[5];
      v15 = a2[6];
      *(v8 + 14) = *(a2 + 14);
      v8[5] = v14;
      v8[6] = v15;
      v8[4] = v13;
    }

    else
    {
      *(v8 + 5) = 9;
      *(v8 + 4) = 1;
    }

    *v8 = a1;
    if (a3 == 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:POSN =>PospCB,SId,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 77, "lsim03_18GnssPosnResultInd", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v19, 3, 1);
      }

      GNS_ExecutePospCallback(2, 120, v9);
    }

    else if (a3 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:POSN =>CpCB,SId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 77, "lsim03_18GnssPosnResultInd", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 3, 1);
      }

      GNS_ExecuteCpCb();
    }

    free(v9);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim03_18GnssPosnResultInd");
    return LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
  }

  return result;
}

uint64_t lsim03_19HandleGnssAbortCnf(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_19HandleGnssAbortCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v14 = 0;
  v13 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_ABORT_CNF,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_19HandleGnssAbortCnf", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (lsim11_05GnmGetSessionInfo(*(a1 + 12), &v13, 0, 0, 0, &v14))
  {
    if (lsim11_13GnmAsyncRspNeeded(*(a1 + 12)))
    {
      v6 = *(a1 + 16);
      if (v14 == 1)
      {
        lsim03_01SendPosnApiStatus(v13, 1, v6, 1);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CP,SId,%u,GnmSId,%u\n", v11);
LABEL_12:
          LbsOsaTrace_WriteLog(0xCu, __str, v7, 5, 1);
        }
      }

      else
      {
        lsim03_01SendPosnApiStatus(v13, 3, v6, 2);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPL,SId,%u,GnmSId,%u\n", v12);
          goto LABEL_12;
        }
      }
    }

    lsim11_04GnmResetSession(*(a1 + 12));
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim03_19HandleGnssAbortCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  return 0;
}

uint64_t lsim03_31HandleGnssMsrResultInd(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_31HandleGnssMsrResultInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v11 = 0;
  v10 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_MSR_RESULT_IND,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_31HandleGnssMsrResultInd", *(a1 + 165288));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (lsim11_05GnmGetSessionInfo(*(a1 + 165288), &v10, 0, 0, 0, &v11))
  {
    v6 = v11 ? 1 : 3;
    lsim03_17GnssMeasResultInd(v10, (a1 + 12), v6);
    if (*(a1 + 16) == 1)
    {
      lsim11_04GnmResetSession(*(a1 + 165288));
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim03_31HandleGnssMsrResultInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  return 0;
}

uint64_t lsim03_32HandleGnssMsAssistedCnf(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_32HandleGnssMsAssistedCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v14 = 0;
  v13 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSA_GNSS_CNF,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_32HandleGnssMsAssistedCnf", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (lsim11_05GnmGetSessionInfo(*(a1 + 12), &v13, 0, 0, 0, &v14))
  {
    if (v14 == 1)
    {
      v6 = 1;
      v7 = 0;
    }

    else
    {
      v6 = 3;
      v7 = 1;
    }

    lsim03_01SendPosnApiStatus(v13, v6, *(a1 + 16), v7);
    if (*(a1 + 16) != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim03_32HandleGnssMsAssistedCnf", 2049, *(a1 + 12));
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
      }

      lsim11_04GnmResetSession(*(a1 + 12));
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim03_32HandleGnssMsAssistedCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  return 0;
}

uint64_t lsim03_33HandleGnssPosInd(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_33HandleGnssPosInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v11 = 0;
  v10 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_POS_IND,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_33HandleGnssPosInd", *(a1 + 132));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (lsim11_05GnmGetSessionInfo(*(a1 + 132), &v10, 0, 0, 0, &v11))
  {
    v6 = v11 ? 1 : 3;
    lsim03_18GnssPosnResultInd(v10, (a1 + 12), v6);
    if (*(a1 + 16))
    {
      lsim11_04GnmResetSession(*(a1 + 132));
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim03_33HandleGnssPosInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  return 0;
}

uint64_t lsim03_34HandleGnssAidRequInd(uint64_t a1)
{
  v121 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_34HandleGnssAidRequInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v119 = 0;
  v117 = 0;
  v118 = -1;
  v116 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_AID_REQ_IND,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_34HandleGnssAidRequInd", *(a1 + 72));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!lsim11_05GnmGetSessionInfo(*(a1 + 72), &v118, &v117, 0, &v116, &v119))
  {
    goto LABEL_74;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LastAsstReqTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_04CheckAsstReqStatus", g_lsimAsstReqOsTimeMs);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = g_lsimAsstReqOsTimeMs;
  if (g_lsimAsstReqOsTimeMs && (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v8 <= 0x2710)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_74;
    }

    bzero(__str, 0x410uLL);
    v114 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LastReq,%ums,Threshold,%ums\n", v114);
    goto LABEL_73;
  }

  __s[0] = 0;
  *&__s[2] = 0;
  *&__s[10] = 0;
  memset_s(__s, 0xEuLL, 0, 0xEuLL);
  lsim03_11PrintAidRequestParams((a1 + 16), "POSITIONING BEFORE MASKS");
  if (v117 == 2)
  {
    v9 = &qword_2A19267F6;
    goto LABEL_16;
  }

  if (v117 == 1)
  {
    v9 = &g_LsimPltConfig;
LABEL_16:
    *__s = *v9;
    *&__s[6] = *(v9 + 6);
    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v82 = mach_continuous_time();
    v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosMethod,%u,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v82), "LSM", 87, "lsim03_34HandleGnssAidRequInd", 515, v117, *(a1 + 72));
    LbsOsaTrace_WriteLog(0xCu, __str, v83, 2, 1);
  }

LABEL_17:
  v11 = v119;
  if (!lsim03_12UpdateAidReqParams(__s, (a1 + 16), v116, 1))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_74;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AidReq Cleared,GnmSId,%u\n");
    goto LABEL_73;
  }

  g_lsimAsstReqOsTimeMs = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v12 = v118;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim03_03GnssAidRequest");
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
  }

  if (!*(a1 + 24))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v84 = mach_continuous_time();
      v85 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssAidReq\n", (*&g_MacClockTicksToMsRelation * v84), "LSM", 87, "lsim03_03GnssAidRequest", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v85, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_72;
    }

    goto LABEL_74;
  }

  v15 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 374, 1, 0x285A0uLL);
  if (!v15)
  {
    goto LABEL_71;
  }

  v16 = v15;
  *v15 = v12;
  v17 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 384, 1, 8uLL);
  v16[1] = v17;
  if (!v17)
  {
LABEL_70:
    free(v16);
LABEL_71:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  *v17 = **(a1 + 24);
  v18 = *(a1 + 24);
  if (v18[3] == 1 && *(a1 + 32))
  {
    v19 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 399, 1, 0xD8uLL);
    v16[2] = v19;
    if (!v19)
    {
      v103 = v16[1];
      if (!v103)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    v20 = *(a1 + 32);
    v21 = *(v20 + 16);
    *v19 = *v20;
    *(v19 + 1) = v21;
    v22 = *(v20 + 32);
    v23 = *(v20 + 48);
    v24 = *(v20 + 80);
    *(v19 + 4) = *(v20 + 64);
    *(v19 + 5) = v24;
    *(v19 + 2) = v22;
    *(v19 + 3) = v23;
    v25 = *(v20 + 96);
    v26 = *(v20 + 112);
    v27 = *(v20 + 144);
    *(v19 + 8) = *(v20 + 128);
    *(v19 + 9) = v27;
    *(v19 + 6) = v25;
    *(v19 + 7) = v26;
    v28 = *(v20 + 160);
    v29 = *(v20 + 176);
    v30 = *(v20 + 192);
    *(v19 + 206) = *(v20 + 206);
    *(v19 + 11) = v29;
    *(v19 + 12) = v30;
    *(v19 + 10) = v28;
    v18 = *(a1 + 24);
  }

  if (v18[4] == 1 && *(a1 + 40))
  {
    v31 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 414, 1, 0xD8uLL);
    v16[3] = v31;
    if (!v31)
    {
      v104 = v16[1];
      if (v104)
      {
        free(v104);
      }

      v16[1] = 0;
      v103 = v16[2];
      if (!v103)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    v32 = *(a1 + 40);
    v33 = *(v32 + 16);
    *v31 = *v32;
    *(v31 + 1) = v33;
    v34 = *(v32 + 32);
    v35 = *(v32 + 48);
    v36 = *(v32 + 80);
    *(v31 + 4) = *(v32 + 64);
    *(v31 + 5) = v36;
    *(v31 + 2) = v34;
    *(v31 + 3) = v35;
    v37 = *(v32 + 96);
    v38 = *(v32 + 112);
    v39 = *(v32 + 144);
    *(v31 + 8) = *(v32 + 128);
    *(v31 + 9) = v39;
    *(v31 + 6) = v37;
    *(v31 + 7) = v38;
    v40 = *(v32 + 160);
    v41 = *(v32 + 176);
    v42 = *(v32 + 192);
    *(v31 + 206) = *(v32 + 206);
    *(v31 + 11) = v41;
    *(v31 + 12) = v42;
    *(v31 + 10) = v40;
    v18 = *(a1 + 24);
  }

  if (v18[6] == 1 && *(a1 + 56))
  {
    v43 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 430, 1, 0xD8uLL);
    v16[5] = v43;
    if (!v43)
    {
      v105 = v16[1];
      if (v105)
      {
        free(v105);
      }

      v16[1] = 0;
      v106 = v16[2];
      if (v106)
      {
        free(v106);
      }

      v16[2] = 0;
      v103 = v16[3];
      if (!v103)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    v44 = *(a1 + 56);
    v45 = *(v44 + 16);
    *v43 = *v44;
    *(v43 + 1) = v45;
    v46 = *(v44 + 32);
    v47 = *(v44 + 48);
    v48 = *(v44 + 80);
    *(v43 + 4) = *(v44 + 64);
    *(v43 + 5) = v48;
    *(v43 + 2) = v46;
    *(v43 + 3) = v47;
    v49 = *(v44 + 96);
    v50 = *(v44 + 112);
    v51 = *(v44 + 144);
    *(v43 + 8) = *(v44 + 128);
    *(v43 + 9) = v51;
    *(v43 + 6) = v49;
    *(v43 + 7) = v50;
    v52 = *(v44 + 160);
    v53 = *(v44 + 176);
    v54 = *(v44 + 192);
    *(v43 + 206) = *(v44 + 206);
    *(v43 + 11) = v53;
    *(v43 + 12) = v54;
    *(v43 + 10) = v52;
    v18 = *(a1 + 24);
  }

  if (v18[5] == 1 && *(a1 + 48))
  {
    v55 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 447, 1, 0xD8uLL);
    v16[4] = v55;
    if (v55)
    {
      v56 = *(a1 + 48);
      v57 = *(v56 + 16);
      *v55 = *v56;
      *(v55 + 1) = v57;
      v58 = *(v56 + 32);
      v59 = *(v56 + 48);
      v60 = *(v56 + 80);
      *(v55 + 4) = *(v56 + 64);
      *(v55 + 5) = v60;
      *(v55 + 2) = v58;
      *(v55 + 3) = v59;
      v61 = *(v56 + 96);
      v62 = *(v56 + 112);
      v63 = *(v56 + 144);
      *(v55 + 8) = *(v56 + 128);
      *(v55 + 9) = v63;
      *(v55 + 6) = v61;
      *(v55 + 7) = v62;
      v64 = *(v56 + 160);
      v65 = *(v56 + 176);
      v66 = *(v56 + 192);
      *(v55 + 206) = *(v56 + 206);
      *(v55 + 11) = v65;
      *(v55 + 12) = v66;
      *(v55 + 10) = v64;
      v18 = *(a1 + 24);
      goto LABEL_39;
    }

    v107 = v16[1];
    if (v107)
    {
      free(v107);
    }

    v16[1] = 0;
    v108 = v16[2];
    if (v108)
    {
      free(v108);
    }

    v16[2] = 0;
    v109 = v16[3];
    if (v109)
    {
      free(v109);
    }

    v16[3] = 0;
    v103 = v16[5];
    if (!v103)
    {
      goto LABEL_91;
    }

LABEL_90:
    free(v103);
    goto LABEL_91;
  }

LABEL_39:
  if (v18[7] != 1 || !*(a1 + 64))
  {
    goto LABEL_43;
  }

  v67 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 467, 1, 0xD8uLL);
  v16[6] = v67;
  if (v67)
  {
    v68 = *(a1 + 64);
    v69 = *(v68 + 16);
    *v67 = *v68;
    *(v67 + 1) = v69;
    v70 = *(v68 + 32);
    v71 = *(v68 + 48);
    v72 = *(v68 + 80);
    *(v67 + 4) = *(v68 + 64);
    *(v67 + 5) = v72;
    *(v67 + 2) = v70;
    *(v67 + 3) = v71;
    v73 = *(v68 + 96);
    v74 = *(v68 + 112);
    v75 = *(v68 + 144);
    *(v67 + 8) = *(v68 + 128);
    *(v67 + 9) = v75;
    *(v67 + 6) = v73;
    *(v67 + 7) = v74;
    v76 = *(v68 + 160);
    v77 = *(v68 + 176);
    v78 = *(v68 + 192);
    *(v67 + 206) = *(v68 + 206);
    *(v67 + 11) = v77;
    *(v67 + 12) = v78;
    *(v67 + 10) = v76;
LABEL_43:
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (v11)
    {
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v80 = mach_continuous_time();
        v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:AIDREQ =>CpCB,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v80), "LSM", 73, "lsim03_03GnssAidRequest", v12, 1);
        LbsOsaTrace_WriteLog(0xCu, __str, v81, 4, 1);
      }

      GNS_ExecuteCpCb();
    }

    else
    {
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v86 = mach_continuous_time();
        v87 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:AIDREQ =>PospCB,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v86), "LSM", 73, "lsim03_03GnssAidRequest", v12, 3);
        LbsOsaTrace_WriteLog(0xCu, __str, v87, 4, 1);
      }

      GNS_ExecutePospCallback(3, 56, v16);
    }

    v88 = v16[1];
    if (v88)
    {
      free(v88);
    }

    v16[1] = 0;
    v89 = v16[2];
    if (v89)
    {
      free(v89);
    }

    v16[2] = 0;
    v90 = v16[3];
    if (v90)
    {
      free(v90);
    }

    v16[3] = 0;
    v91 = v16[5];
    if (v91)
    {
      free(v91);
    }

    v16[5] = 0;
    v92 = v16[4];
    if (v92)
    {
      free(v92);
    }

    v16[4] = 0;
    v93 = v16[6];
    if (v93)
    {
      free(v93);
    }

    goto LABEL_70;
  }

  v110 = v16[1];
  if (v110)
  {
    free(v110);
  }

  v16[1] = 0;
  v111 = v16[2];
  if (v111)
  {
    free(v111);
  }

  v16[2] = 0;
  v112 = v16[3];
  if (v112)
  {
    free(v112);
  }

  v16[3] = 0;
  v113 = v16[5];
  if (v113)
  {
    free(v113);
  }

  v16[5] = 0;
  v103 = v16[4];
  if (v103)
  {
    goto LABEL_90;
  }

LABEL_91:
  free(v16);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
LABEL_72:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n");
LABEL_73:
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

LABEL_74:
  v94 = *(a1 + 24);
  if (v94)
  {
    free(v94);
  }

  *(a1 + 24) = 0;
  v95 = *(a1 + 32);
  if (v95)
  {
    free(v95);
  }

  *(a1 + 32) = 0;
  v96 = *(a1 + 40);
  if (v96)
  {
    free(v96);
  }

  *(a1 + 40) = 0;
  v97 = *(a1 + 48);
  if (v97)
  {
    free(v97);
  }

  *(a1 + 48) = 0;
  v98 = *(a1 + 56);
  if (v98)
  {
    free(v98);
  }

  *(a1 + 56) = 0;
  v99 = *(a1 + 64);
  if (v99)
  {
    free(v99);
  }

  *(a1 + 64) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v100 = mach_continuous_time();
    v101 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v100), "LSM", 73, "lsim03_34HandleGnssAidRequInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v101, 4, 1);
  }

  return 0;
}

uint64_t lsim03_35HandleGnssMsBasedCnf(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v13 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_35HandleGnssMsBasedCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSB_GNSS_CNF,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_35HandleGnssMsBasedCnf", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (lsim11_05GnmGetSessionInfo(*(a1 + 12), &v13, 0, 0, 0, &v14))
  {
    if (v14 == 1)
    {
      v6 = 1;
      v7 = 0;
    }

    else
    {
      v6 = 3;
      v7 = 1;
    }

    lsim03_01SendPosnApiStatus(v13, v6, *(a1 + 16), v7);
    if (*(a1 + 16) != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim03_35HandleGnssMsBasedCnf", 2049, *(a1 + 12));
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
      }

      lsim11_04GnmResetSession(*(a1 + 12));
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim03_35HandleGnssMsBasedCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  return 0;
}

uint64_t lsim03_36HandleAbortInd(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_36HandleAbortInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_ABORT_IND,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_36HandleAbortInd", *(a1 + 12), *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  lsim03_16AbortInd(*(a1 + 12), *(a1 + 16), 1);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_36HandleAbortInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  return 0;
}

uint64_t lsim03_37HandleLocInfoReq(uint64_t a1)
{
  v62 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_37HandleLocInfoReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_LOC_INFO_REQ,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_37HandleLocInfoReq", *(a1 + 12), *(a1 + 56));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LOCREQ:SId,%u,Src,%u,Emer,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 77, "lsim03_37HandleLocInfoReq", *(a1 + 12), *(a1 + 56), *(a1 + 60));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LOCREQ:GEN,PosM,%u,VelMask,%X,ShapeMask,%X,GnssId,%X,BlockAidReq,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 77, "lsim03_37HandleLocInfoReq", *(a1 + 16), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 53));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LOCREQ:QOS,NumRep,%u,HorAcc,%u,HorAccConf,%u,VertAcc,%u,VertAccConf,%u,RspTime,%u,RepType,%u,AgeLimit,%u,EarlyRspTime,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 77, "lsim03_37HandleLocInfoReq", *(a1 + 20), *(a1 + 22), *(a1 + 23), *(a1 + 24), *(a1 + 25), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40));
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 3, 1);
  }

  v12 = *(a1 + 12);
  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v59 = 0;
  if ((v13 - 3) >= 2)
  {
    if ((v13 - 1) > 1)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
      {
        goto LABEL_71;
      }

      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 69, "lsim03_02LocInfoReqInd", 515, v12, v13);
      v31 = 0;
    }

    else
    {
      if (g_GnsCpCallback)
      {
        v15 = 0;
        v16 = 2;
        v17 = 255;
        goto LABEL_17;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        goto LABEL_71;
      }

      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP,SId,%u\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 87, "lsim03_02LocInfoReqInd", 258, v12);
      v31 = 2;
    }

LABEL_35:
    LbsOsaTrace_WriteLog(0xCu, __str, v30, v31, 1);
    goto LABEL_71;
  }

  if (g_GnsPospCallback)
  {
    v16 = 1;
    v17 = 4;
    v15 = 1;
LABEL_17:
    v18 = *(a1 + 16);
    if ((v18 - 1) >= 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocInfoType,%u,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim03_02LocInfoReqInd", 515, *(a1 + 16), v12, v13);
        LbsOsaTrace_WriteLog(0xCu, __str, v25, 2, 1);
      }

      v26 = v12;
      v27 = v13;
      v28 = 2;
    }

    else
    {
      if ((v14 & 1) != 0 || (~dword_2A18CCEB4 & 0x81) == 0)
      {
        SessionFromNativeId = lsim11_07GnmGetSessionFromNativeId(v12, v16, &v59);
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
        if (SessionFromNativeId)
        {
          if (IsLoggingAllowed)
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%d\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim03_02LocInfoReqInd", 2053, v59);
            LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
          }

          v23 = lsim03_07SendRequestToGnm(v59, v14, (a1 + 16));
          goto LABEL_68;
        }

        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v36), "LSM", 73, "lsim03_08HandleEmerPriority");
          LbsOsaTrace_WriteLog(0xCu, __str, v37, 4, 1);
        }

        v60 = 2;
        if ((v14 & 1) == 0 && ((lsim04_03CheckEmergencySessions(2) & 1) != 0 || lsim04_03CheckEmergencySessions(1)))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v43 = mach_continuous_time();
            v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SType,%u,SId,%u\n", (*&g_MacClockTicksToMsRelation * v43), "LSM", 87, "lsim03_08HandleEmerPriority", 1025, v16, v12);
            LbsOsaTrace_WriteLog(0xCu, __str, v44, 2, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v45 = mach_continuous_time();
            v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v45), "LSM", 73, "lsim03_08HandleEmerPriority");
            LbsOsaTrace_WriteLog(0xCu, __str, v46, 4, 1);
          }

          v23 = 10;
          goto LABEL_68;
        }

        if ((lsim11_02GnmCreateSession(v12, v16, v18, v14, 1, *(a1 + 52), &v60) & 1) == 0)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v47 = mach_continuous_time();
            v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SType,%u,SId,%u\n", (*&g_MacClockTicksToMsRelation * v47), "LSM", 87, "lsim03_08HandleEmerPriority", 2049, v16, v12);
            LbsOsaTrace_WriteLog(0xCu, __str, v48, 2, 1);
          }

          v23 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v49 = mach_continuous_time();
            v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v49), "LSM", 73, "lsim03_08HandleEmerPriority");
            LbsOsaTrace_WriteLog(0xCu, __str, v50, 4, 1);
            v23 = 0;
          }

          goto LABEL_68;
        }

        v38 = lsim03_07SendRequestToGnm(v60, v14, (a1 + 16));
        if (v38 == 1)
        {
          if (v14)
          {
            lsim23_02GnmStopEarlyStartSession(0);
            lsim04_02CloseOtherCpNiSessions(255, &v60);
            lsim05_43CloseOtherPospSessions(255, &v60);
            lsim05_42CloseSuplSessions(v17, 0);
          }

          if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
          {
            v23 = 1;
            goto LABEL_68;
          }

          bzero(__str, 0x410uLL);
          v39 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v39), "LSM", 73, "lsim03_08HandleEmerPriority");
          v23 = 1;
        }

        else
        {
          v23 = v38;
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v51 = mach_continuous_time();
            v52 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SType,%u,CpGnmRequest,SId,%u\n", (*&g_MacClockTicksToMsRelation * v51), "LSM", 87, "lsim03_08HandleEmerPriority", 2049, v16, v12);
            LbsOsaTrace_WriteLog(0xCu, __str, v52, 2, 1);
          }

          if (!lsim11_04GnmResetSession(v60) && LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v53 = mach_continuous_time();
            v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SType,%u,CpGnmRequest,SId,%u\n", (*&g_MacClockTicksToMsRelation * v53), "LSM", 87, "lsim03_08HandleEmerPriority", 2050, v16, v12);
            LbsOsaTrace_WriteLog(0xCu, __str, v54, 2, 1);
          }

          if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
          {
            goto LABEL_68;
          }

          bzero(__str, 0x410uLL);
          v55 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v55), "LSM", 73, "lsim03_08HandleEmerPriority");
        }

        LbsOsaTrace_WriteLog(0xCu, __str, v40, 4, 1);
LABEL_68:
        if (v23 == 1)
        {
          goto LABEL_71;
        }

        v26 = v12;
        v27 = v13;
        v28 = v23;
        goto LABEL_70;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v41 = mach_continuous_time();
        v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v41), "LSM", 87, "lsim03_02LocInfoReqInd", 1027, v12, v13);
        LbsOsaTrace_WriteLog(0xCu, __str, v42, 2, 1);
      }

      v26 = v12;
      v27 = v13;
      v28 = 3;
    }

LABEL_70:
    lsim03_01SendPosnApiStatus(v26, v27, v28, v15);
    goto LABEL_71;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v33 = mach_continuous_time();
    v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx POSP,SId,%u\n", (*&g_MacClockTicksToMsRelation * v33), "LSM", 87, "lsim03_02LocInfoReqInd", 258, v12);
    LbsOsaTrace_WriteLog(0xCu, __str, v34, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v35 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v35), "LSM", 73, "lsim03_02LocInfoReqInd");
    v31 = 4;
    goto LABEL_35;
  }

LABEL_71:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v56 = mach_continuous_time();
    v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v56), "LSM", 73, "lsim03_37HandleLocInfoReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v57, 4, 1);
  }

  return 0;
}

uint64_t lsim03_38HandleClearGnssInd(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_38HandleClearGnssInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 69, "lsim03_38HandleClearGnssInd", 517);
    v8 = 0;
    goto LABEL_12;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_CLEAR_DATA_IND,Mask,0x%X\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_38HandleClearGnssInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if ((*(a1 + 12) & 0x7087F) != 0)
  {
    lsim03_09ResetAidReqData();
    goto LABEL_13;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClearNotNeeded\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim03_38HandleClearGnssInd");
    v8 = 4;
LABEL_12:
    LbsOsaTrace_WriteLog(0xCu, __str, v7, v8, 1);
  }

LABEL_13:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim03_38HandleClearGnssInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  return 0;
}

uint64_t lsim03_07SendRequestToGnm(int a1, char a2, __int128 *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  if (*(a3 + 4) == 2 && (dword_2A18CCEB4 & 0x40000) != 0)
  {
    *(a3 + 4) = 1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Overriding Periodic, GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 87, "lsim03_07SendRequestToGnm", a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 2, 1);
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstAvail,%u,GnssID,%u,LocInfoType,%u,VelTypeMask,%X,LocShapeMask,%X\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 68, "lsim03_07SendRequestToGnm", *(a3 + 37), *(a3 + 36), *a3, *(a3 + 7), *(a3 + 8));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HorAccConf,%u,HorAcc,%u,PosRepType,%u,RepAmt,%u,RespTime,%u,VertAccConf,%u,VertAcc,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 68, "lsim03_07SendRequestToGnm", *(a3 + 7), *(a3 + 6), *(a3 + 4), *(a3 + 2), *(a3 + 3), *(a3 + 9), *(a3 + 8));
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 5, 1);
  }

  if ((*a3 - 2) >= 2)
  {
    if (*a3 != 1)
    {
      return 1;
    }

    v19 = gnssOsa_Calloc("lsim03_07SendRequestToGnm", 690, 1, 0x3CuLL);
    if (v19)
    {
      v13 = v19;
      *(v19 + 3) = a1;
      v19[16] = a2;
      v20 = *a3;
      v21 = a3[1];
      *(v19 + 51) = *(a3 + 31);
      *(v19 + 36) = v21;
      *(v19 + 20) = v20;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSA_GNSS_REQ =>GNM,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim03_07SendRequestToGnm", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
      }

      v18 = 8595968;
      goto LABEL_19;
    }
  }

  else
  {
    v12 = gnssOsa_Calloc("lsim03_07SendRequestToGnm", 669, 1, 0x3CuLL);
    if (v12)
    {
      v13 = v12;
      *(v12 + 3) = a1;
      v12[16] = a2;
      v14 = *a3;
      v15 = a3[1];
      *(v12 + 51) = *(a3 + 31);
      *(v12 + 36) = v15;
      *(v12 + 20) = v14;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSB_GNSS_REQ =>GNM,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim03_07SendRequestToGnm", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
      }

      v18 = 8595712;
LABEL_19:
      AgpsSendFsmMsg(131, 128, v18, v13);
      return 1;
    }
  }

  return 6;
}

double BDS_EphInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 16);
  *(a2 + 10) = *(a1 + 20);
  *(a2 + 11) = *(a1 + 21);
  *(a2 + 13) = *(a1 + 18);
  *(a2 + 16) = vrev64_s32(vshl_n_s32(*(a1 + 8), 3uLL));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4.i64[0] = v2;
  v4.i64[1] = SHIDWORD(v2);
  *&v5.f64[0] = *&vcvtq_f64_s64(v4);
  v4.i64[0] = v2;
  v4.i64[1] = HIDWORD(v2);
  v5.f64[1] = vcvtq_f64_u64(v4).f64[1];
  *(a2 + 24) = vmulq_f64(v5, xmmword_2997616F0);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v6.f64[0] = *&vcvtq_f64_u64(v4);
  v4.i64[0] = v3;
  v4.i64[1] = SHIDWORD(v3);
  v6.f64[1] = vcvtq_f64_s64(*&v4).f64[1];
  *(a2 + 40) = vmulq_f64(v6, xmmword_299761700);
  v6.f64[0] = *(a1 + 40);
  v4.i64[0] = SLODWORD(v6.f64[0]);
  v4.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 56) = vmulq_f64(vcvtq_f64_s64(v4), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v7 = *(a1 + 56);
  v8.f64[0] = *(a1 + 48);
  v8.f64[1] = *(a1 + 52);
  v5.f64[0] = *(a1 + 50);
  *(a2 + 72) = vmulq_f64(v8, vdupq_n_s64(0x3D5921FB54442D28uLL));
  v5.f64[1] = v7;
  *(a2 + 88) = vmulq_f64(v5, xmmword_299762020);
  v6.f64[0] = *(a1 + 60);
  v4.i64[0] = SLODWORD(v6.f64[0]);
  v4.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 104) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299762030);
  v6.f64[0] = *(a1 + 68);
  v4.i64[0] = SLODWORD(v6.f64[0]);
  v4.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 120) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299762040);
  v6.f64[0] = *(a1 + 76);
  v4.i64[0] = SLODWORD(v6.f64[0]);
  v4.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 136) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299762050);
  v6.f64[0] = *(a1 + 84);
  v6.f64[1] = *(a1 + 88);
  *(a2 + 152) = vmulq_f64(v6, xmmword_299762060);
  result = *(a1 + 90) * 0.1;
  v8.f64[0] = *(a1 + 92) * 0.1;
  *(a2 + 168) = result;
  *(a2 + 176) = v8.f64[0];
  return result;
}

_WORD *GPS_To_UTC_Time(_WORD *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, __int16 a8, double a9, double a10)
{
  for (i = 0.0005 - a10 + a9; i >= 604800.0; ++a8)
  {
    i = i + -604800.0;
  }

  while (i < 0.0)
  {
    i = i + 604800.0;
    --a8;
  }

  v11 = i;
  v12 = (i - i) * 1000.0;
  v13 = v12;
  if (v12 < -2147483650.0)
  {
    LOWORD(v13) = 0;
  }

  if (v12 <= 2147483650.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  *a7 = v14;
  v15 = v11 / 86400;
  v16 = v11 % 86400;
  *a4 = v16 / 3600;
  v16 %= 3600;
  *a5 = v16 / 60;
  *a6 = v16 % 60;
  v17 = v15 - a8 + 8 * a8;
  v18 = v17 + 6;
  if (v17 < 1456)
  {
    LOWORD(v20) = 1980;
  }

  else
  {
    if (v18 >= 0xB6A)
    {
      v18 = 2922;
    }

    v19 = v17 - v18 + 1466;
    v18 = v17 - 1461 * (v19 / 0x5B5) - 1455;
    v20 = 4 * (v19 / 0x5B5) + 1984;
  }

  if (v18 >= 367)
  {
    do
    {
      if ((v20 & 3) != 0)
      {
        v21 = -365;
      }

      else
      {
        v21 = -366;
      }

      v18 += v21;
      LOWORD(v20) = v20 + 1;
    }

    while (v18 > 0x16E);
  }

  v22 = 0;
  if ((v20 & 3) != 0)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v20;
  }

  if ((v20 & 3) != 0)
  {
    v24 = 1;
  }

  else
  {
    v24 = 366;
  }

  if (v18 == 366)
  {
    LOWORD(v20) = v23;
  }

  else
  {
    v24 = v18;
  }

  *result = v20;
  while (1)
  {
    v25 = Days_in_Month[v22];
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if ((v27 < 0) ^ v26 | (v27 == 0))
    {
      *a3 = v24;
      v28 = v22 + 1;
      goto LABEL_40;
    }

    if (v22 == 1 && (v20 & 3) == 0)
    {
      break;
    }

LABEL_36:
    ++v22;
    v24 = v27;
    if (v22 == 12)
    {
      return result;
    }
  }

  if (v27 >= 2)
  {
    --v27;
    goto LABEL_36;
  }

  *a3 = 29;
  v28 = 2;
LABEL_40:
  *a2 = v28;
  return result;
}

_WORD *GPS_To_UTC_DOY(int *a1, __int16 a2, double a3, double a4)
{
  v20 = *MEMORY[0x29EDCA608];
  *v19 = 0;
  v18 = 0;
  result = GPS_To_UTC_Time(&v19[1], v19, &v18, &v17, &v16, &v15, &v14, a2, a3, a4);
  HIDWORD(v7) = -1030792151 * v19[1];
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 2;
  LODWORD(v7) = HIDWORD(v7);
  if ((v7 >> 4) < 0xA3D70B || v6 > 0x28F5C28)
  {
    v9 = 32;
  }

  else
  {
    v9 = 31;
  }

  if ((v19[1] & 3) != 0)
  {
    v10 = 31;
  }

  else
  {
    v10 = v9;
  }

  if (v19[0] - 13 >= 0xFFFFFFF4)
  {
    if (v19[0] > 6u)
    {
      if (v19[0] > 9u)
      {
        if (v19[0] == 10)
        {
          v13 = 242;
        }

        else if (v19[0] == 11)
        {
          v13 = 273;
        }

        else
        {
          v13 = 303;
        }
      }

      else if (v19[0] == 7)
      {
        v13 = 150;
      }

      else if (v19[0] == 8)
      {
        v13 = 181;
      }

      else
      {
        v13 = 212;
      }
    }

    else if (v19[0] > 3u)
    {
      if (v19[0] == 4)
      {
        v13 = 59;
      }

      else if (v19[0] == 5)
      {
        v13 = 89;
      }

      else
      {
        v13 = 120;
      }
    }

    else
    {
      if (v19[0] == 1)
      {
        v12 = 0;
        goto LABEL_36;
      }

      if (v19[0] == 2)
      {
        v12 = 31;
LABEL_36:
        v11 = v12 + v18;
        goto LABEL_37;
      }

      v13 = 28;
    }

    v12 = v13 + v10;
    goto LABEL_36;
  }

  v11 = -1;
LABEL_37:
  *a1 = v11;
  return result;
}

char **ds_NK_Crude_Apx_Pos(char **result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v92 = *MEMORY[0x29EDCA608];
  v6 = a3 + 27088;
  if (*(a3 + 27089) <= 2u && *v6 != 1)
  {
    return result;
  }

  v7 = *(a2 + 24) + 604800 * *(a2 + 18) - *(a3 + 264);
  v8 = v7 >= 0 ? *(a2 + 24) + 604800 * *(a2 + 18) - *(a3 + 264) : *(a3 + 264) - (*(a2 + 24) + 604800 * *(a2 + 18));
  v9 = *(a2 + 960) == 1 && v8 >= 0xA;
  if (v9 && *v6 != 1)
  {
    return result;
  }

  v10 = (a3 + 8272);
  v11 = *result;
  if (g_Enable_Nav_Debug >= 3u)
  {
    v12 = 0;
    v13 = 67;
    do
    {
      *result = v11 + 1;
      *v11 = v13;
      v11 = *result;
      if (*result >= result[3])
      {
        v11 = result[2];
        *result = v11;
      }

      v13 = aCapSrch[++v12];
    }

    while (v12 != 8);
    sprintf_5d(result, gDebug);
    sprintf_5d(v5, DWORD1(gDebug));
    sprintf_5d(v5, xmmword_2A1938F80);
    sprintf_5d(v5, DWORD1(xmmword_2A1938F80));
    sprintf_5d(v5, DWORD2(xmmword_2A1938F80));
    v14 = 0;
    v15 = *v5;
    v16 = 32;
    do
    {
      *v5 = v15 + 1;
      *v15 = v16;
      v15 = *v5;
      if (*v5 >= v5[3])
      {
        v15 = v5[2];
        *v5 = v15;
      }

      v16 = aEll[++v14];
    }

    while (v14 != 4);
    sprintf_7f(v5, (*&xmmword_2A1938F58 * 180.0 * 100.0 / 3.14159265), 3);
    sprintf_7f(v5, (*(&xmmword_2A1938F58 + 1) * 180.0 * 100.0 / 3.14159265), 3);
    sprintf_7d(v5, (*&xmmword_2A1938F40 / 1000.0));
    sprintf_7d(v5, (*(&xmmword_2A1938F40 + 1) / 1000.0));
    sprintf_4d(v5, *&qword_2A1938F50);
    v17 = 0;
    v18 = *v5;
    v19 = 32;
    do
    {
      *v5 = v18 + 1;
      *v18 = v19;
      v18 = *v5;
      if (*v5 >= v5[3])
      {
        v18 = v5[2];
        *v5 = v18;
      }

      v19 = aLsq[++v17];
    }

    while (v17 != 4);
    sprintf_2d(v5, dword_2A1938F6C);
    sprintf_2d(v5, dword_2A1938F68);
    sprintf_2d(v5, byte_2A1938F7D);
    sprintf_2d(v5, byte_2A1938F7E);
    v20 = *v5;
    v21 = 32;
    v22 = 1u;
    do
    {
      *v5 = v20 + 1;
      *v20 = v21;
      v20 = *v5;
      if (*v5 >= v5[3])
      {
        v20 = v5[2];
        *v5 = v20;
      }

      v21 = aIter[v22++];
    }

    while (v22 != 6);
    sprintf_3d(v5, byte_2A1938F70);
    sprintf_3d(v5, byte_2A1938F71);
    sprintf_3d(v5, byte_2A1938F72);
    v23 = *v5;
    v24 = 32;
    v25 = 1u;
    do
    {
      *v5 = v23 + 1;
      *v23 = v24;
      v23 = *v5;
      if (*v5 >= v5[3])
      {
        v23 = v5[2];
        *v5 = v23;
      }

      v24 = aSrchprls[v25++];
    }

    while (v25 != 10);
    sprintf_2d(v5, byte_2A1938F73);
    sprintf_4d(v5, byte_2A1938F74);
    sprintf_2d(v5, byte_2A1938F7C);
    v26 = (*v5)++;
    *v26 = 32;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    if (dword_2A1938F78 >= 0)
    {
      v27 = dword_2A1938F78;
    }

    else
    {
      v27 = -dword_2A1938F78;
    }

    sprintf1da(v5, v27, v91, 0, dword_2A1938F78 >> 31);
    v28 = (*v5)++;
    *v28 = 10;
    v29 = *v5;
    if (*v5 >= v5[3])
    {
      v29 = v5[2];
    }

    v30 = 67;
    v31 = 1u;
    do
    {
      *v5 = v29 + 1;
      *v29 = v30;
      v29 = *v5;
      if (*v5 >= v5[3])
      {
        v29 = v5[2];
        *v5 = v29;
      }

      v30 = aCapVv[v31++];
    }

    while (v31 != 7);
    v32 = dword_2A1938F90;
    if (dword_2A1938F90 >= 9999)
    {
      v32 = 9999;
    }

    if (v32 <= -9999)
    {
      v33 = 4294957297;
    }

    else
    {
      v33 = v32;
    }

    sprintf_5d(v5, v33);
    v34 = dword_2A1938F98;
    if (dword_2A1938F98 >= 9999)
    {
      v34 = 9999;
    }

    if (v34 <= -9999)
    {
      v35 = 4294957297;
    }

    else
    {
      v35 = v34;
    }

    sprintf_5d(v5, v35);
    v36 = *v5;
    v37 = 32;
    v38 = 1u;
    do
    {
      *v5 = v36 + 1;
      *v36 = v37;
      v36 = *v5;
      if (*v5 >= v5[3])
      {
        v36 = v5[2];
        *v5 = v36;
      }

      v37 = aHv[v38++];
    }

    while (v38 != 4);
    v39 = HIDWORD(xmmword_2A1938F80);
    if (SHIDWORD(xmmword_2A1938F80) >= 9999)
    {
      v39 = 9999;
    }

    if (v39 <= -9999)
    {
      v40 = 4294957297;
    }

    else
    {
      v40 = v39;
    }

    sprintf_5d(v5, v40);
    v41 = dword_2A1938F94;
    if (dword_2A1938F94 >= 9999)
    {
      v41 = 9999;
    }

    if (v41 <= -9999)
    {
      v42 = 4294957297;
    }

    else
    {
      v42 = v41;
    }

    sprintf_5d(v5, v42);
    v43 = 0;
    v44 = *v5;
    v45 = 32;
    do
    {
      *v5 = v44 + 1;
      *v44 = v45;
      v44 = *v5;
      if (*v5 >= v5[3])
      {
        v44 = v5[2];
        *v5 = v44;
      }

      v45 = aA_0[++v43];
    }

    while (v43 != 2);
    v46 = dword_2A1938F9C;
    if (dword_2A1938F9C >= 9999)
    {
      v46 = 9999;
    }

    if (v46 <= -9999)
    {
      v47 = 4294957297;
    }

    else
    {
      v47 = v46;
    }

    sprintf_5d(v5, v47);
    v48 = *v5;
    v49 = 32;
    v50 = 1u;
    do
    {
      *v5 = v48 + 1;
      *v48 = v49;
      v48 = *v5;
      if (*v5 >= v5[3])
      {
        v48 = v5[2];
        *v5 = v48;
      }

      v49 = aR2[v50++];
    }

    while (v50 != 4);
    v51 = dword_2A1938F38;
    if (dword_2A1938F38 >= 9999)
    {
      v51 = 9999;
    }

    if (v51 <= -9999)
    {
      v52 = 4294957297;
    }

    else
    {
      v52 = v51;
    }

    sprintf_5d(v5, v52);
    v53 = (*v5)++;
    *v53 = 10;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    xmmword_2A1938F80 = 0u;
    *&dword_2A1938F90 = 0u;
    *(&xmmword_2A1938F58 + 8) = 0u;
    *&byte_2A1938F70 = 0u;
    xmmword_2A1938F40 = 0u;
    *&qword_2A1938F50 = 0u;
    gDebug = 0u;
    unk_2A1938F30 = 0u;
    v11 = *v5;
    if (g_Enable_Nav_Debug >= 3u)
    {
      v54 = 67;
      v55 = 1u;
      do
      {
        *v5 = v11 + 1;
        *v11 = v54;
        v11 = *v5;
        if (*v5 >= v5[3])
        {
          v11 = v5[2];
          *v5 = v11;
        }

        v54 = aCapSv[v55++];
      }

      while (v55 != 7);
      sprintf_2d(v5, *(v6 + 4));
      sprintf_2d(v5, *(v6 + 5));
      sprintf_2d(v5, *(v6 + 6));
      sprintf_2d(v5, *(v6 + 7));
      v56 = (*v5)++;
      *v56 = 32;
      v57 = *v5;
      if (*v5 >= v5[3])
      {
        v57 = v5[2];
      }

      *v5 = v57 + 1;
      *v57 = 10;
      v11 = *v5;
      if (*v5 >= v5[3])
      {
        v11 = v5[2];
      }
    }
  }

  v58 = 0;
  v59 = 67;
  do
  {
    *v5 = v11 + 1;
    *v11 = v59;
    v11 = *v5;
    if (*v5 >= v5[3])
    {
      v11 = v5[2];
      *v5 = v11;
    }

    v59 = aCap[++v58];
  }

  while (v58 != 4);
  v60 = "fail";
  if (*(v6 + 16))
  {
    v60 = "pass";
  }

  v61 = *v60;
  if (*v60)
  {
    v62 = (v60 + 1);
    do
    {
      *v5 = v11 + 1;
      *v11 = v61;
      v11 = *v5;
      if (*v5 >= v5[3])
      {
        v11 = v5[2];
        *v5 = v11;
      }

      v63 = *v62++;
      v61 = v63;
    }

    while (v63);
  }

  v64 = 0;
  v65 = 32;
  do
  {
    *v5 = v11 + 1;
    *v11 = v65;
    v11 = *v5;
    if (*v5 >= v5[3])
    {
      v11 = v5[2];
      *v5 = v11;
    }

    v65 = aSv_0[++v64];
  }

  while (v64 != 4);
  sprintf_3d(v5, *(v6 + 1));
  v66 = *v5;
  v67 = 32;
  v68 = 1u;
  do
  {
    *v5 = v66 + 1;
    *v66 = v67;
    v66 = *v5;
    if (*v5 >= v5[3])
    {
      v66 = v5[2];
      *v5 = v66;
    }

    v67 = aMs[v68++];
  }

  while (v68 != 6);
  sprintf_5d(v5, *(v6 + 2));
  v70 = *(v6 + 8);
  v69 = *(v6 + 12);
  if (*(v6 + 8))
  {
    v72 = ((5729 * v70) >> 15);
    v71 = ((5729 * v69) >> 15);
    v73 = vcvtd_n_f64_s32(v69, 0xFuLL) - *(a3 + 27040);
    v74 = *(a3 + 27056);
    v75 = __sincos_stret(vcvtd_n_f64_s32(v70, 0xFuLL));
    v76 = v75.__cosval * *(a3 + 27064);
    v77 = cos(v73) * v76 + v74 * v75.__sinval;
    if (fabs(v77) < 1.0)
    {
      v78 = (acos(v77) * 6378.137);
      goto LABEL_121;
    }
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v78 = 0;
LABEL_121:
  sprintf_7f(v5, v72, 3);
  sprintf_7f(v5, v71, 3);
  sprintf_6d(v5, v78);
  v79 = *v5;
  for (i = 5; i > 1; --i)
  {
    *v5 = v79 + 1;
    *v79 = 32;
    v79 = *v5;
    if (*v5 >= v5[3])
    {
      v79 = v5[2];
      *v5 = v79;
    }
  }

  if (*(a2 + 12) >= 4 && (v81 = *(v6 + 1), v81 >= 3))
  {
    v83 = "BAD ";
    if (v78 < 151)
    {
      v83 = "GOOD";
    }

    v84 = "bad ";
    if (v78 < 901)
    {
      v84 = "good";
    }

    if (v81 == 3)
    {
      v82 = v84;
    }

    else
    {
      v82 = v83;
    }

    if (*(v6 + 16) != 1)
    {
      v82 = "FAIL";
    }
  }

  else
  {
    v82 = "SKIP";
  }

  v85 = *v82;
  if (*v82)
  {
    v86 = (v82 + 1);
    do
    {
      *v5 = v79 + 1;
      *v79 = v85;
      v79 = *v5;
      if (*v5 >= v5[3])
      {
        v79 = v5[2];
        *v5 = v79;
      }

      v87 = *v86++;
      v85 = v87;
    }

    while (v87);
  }

  if (v7 >= 99)
  {
    v88 = 99;
  }

  else
  {
    v88 = v7;
  }

  if (v88 <= -99)
  {
    v89 = 4294967197;
  }

  else
  {
    v89 = v88;
  }

  sprintf_5d(v5, v89);
  sprintf_3d(v5, *v10);
  result = sprintf1da(v5, v10[1], v91, 0, 0);
  v90 = (*v5)++;
  *v90 = 10;
  if (*v5 >= v5[3])
  {
    *v5 = v5[2];
  }

  return result;
}

void WGS84_ECEF2Geo(long double *a1, double *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v3 * v3 + v4 * v4;
  v7 = v5 * v5 * 2.45817226e-14;
  v9 = 3;
  v10 = 0.00669437999;
  do
  {
    v8 = v7 * 0.99330562;
    v10 = v10 - (v10 * -0.0000896294469 + v10 * v10 * (v6 * 2.45817226e-14 + v7 * 0.99330562 + -0.0000448147235 + (v8 + v8) * v10 + v8 * (v10 * v10)) + -0.0000448147235) / ((v6 * 2.45817226e-14 + v7 * 0.99330562 + -0.0000448147235 + v6 * 2.45817226e-14 + v7 * 0.99330562 + -0.0000448147235) * v10 + v7 * 0.99330562 * 4.0 * (v10 * v10) * ((v8 + v8) * 3.0 + v10) + -0.0000896294469);
    --v9;
  }

  while (v9);
  v11 = v10 + 1.0;
  if (fabs(v4) >= 0.001 || fabs(v3) >= 0.001)
  {
    a2[1] = atan2(v3, v4);
  }

  else
  {
    a2[1] = 0.0;
    v12 = 0.0;
    if (fabs(v5) < 0.001)
    {
      goto LABEL_9;
    }
  }

  v12 = atan2(v5 * v11, sqrt(v6));
LABEL_9:
  *a2 = v12;
  a2[2] = (v10 * -148.379032 + 1.0) * sqrt(v7 + v6 * 2.45817226e-14 / (v11 * v11)) * 6378137.0;
}

uint64_t LcsLinkedList::Remove(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (v2)
    {
      *(result + 16) = *(v2 + 8);
      *(v2 + 8) = 0;
    }
  }

  else
  {
    do
    {
      v4 = v2;
      v2 = *(v2 + 8);
      if (v2)
      {
        v5 = v2 == a2;
      }

      else
      {
        v5 = 1;
      }
    }

    while (!v5);
    if (v2)
    {
      *(v4 + 8) = *(v2 + 8);
    }
  }

  if (a2)
  {
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t GncP11_01ConvertGnssID(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) >= 6)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    v1 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_01ConvertGnssID", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      return 0;
    }
  }

  else
  {
    return a1;
  }

  return v1;
}

uint64_t GncP11_02ConvertAGnssID(uint64_t result)
{
  v1 = result;
  v6 = *MEMORY[0x29EDCA608];
  if (((result - 1) > 0x3F || ((1 << (result - 1)) & 0x800000008000808BLL) == 0) && result != 128)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AGNSSId,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP11_02ConvertAGnssID", 770, v1);
      LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
      return 0;
    }
  }

  return result;
}

uint64_t GncP11_03ConvertGnssIDToGn(uint64_t result)
{
  v1 = result;
  v6 = *MEMORY[0x29EDCA608];
  if ((result - 1) > 0x3F || ((1 << (result - 1)) & 0x800000008000800BLL) == 0)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Input,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP11_03ConvertGnssIDToGn", 770, v1);
      LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
      return 0;
    }
  }

  return result;
}

uint64_t GncP11_05ConvertGnssSignalID(uint64_t result)
{
  v1 = result;
  v6 = *MEMORY[0x29EDCA608];
  if (((result - 17) > 0x30 || ((1 << (result - 17)) & 0x1000F001F000FLL) == 0) && ((result - 81) > 0x14 || ((1 << (result - 81)) & 0x1F0007) == 0))
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SignalID,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP11_05ConvertGnssSignalID", 770, v1);
      LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
      return 0;
    }
  }

  return result;
}

uint64_t GncP11_15PopulateGnssAssist(uint64_t result, uint64_t a2, char a3, char a4, char a5, char a6)
{
  *result = 1;
  *(result + 1) = a4;
  *(result + 2) = a5;
  *(result + 3) = a6;
  *(result + 23) = 0;
  *(result + 20) = a3;
  *(result + 24) = *(a2 + 10);
  *(result + 16) = *(a2 + 4);
  *(result + 21) = *(a2 + 8);
  *(result + 30) = *(a2 + 14);
  *(result + 28) = *(a2 + 16);
  *(result + 32) = *(a2 + 17);
  LODWORD(v6) = *(a2 + 18);
  *(result + 33) = v6;
  *(result + 8) = *(a2 + 168);
  if (v6)
  {
    if (v6 >= 0x30)
    {
      v6 = 48;
    }

    else
    {
      v6 = v6;
    }

    v7 = (a2 + 19);
    v8 = (a2 + 68);
    v9 = (result + 36);
    do
    {
      v10 = *v7++;
      *(v9 - 2) = v10;
      v11 = *v8++;
      *v9 = v11;
      v9 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t GncP11_23ConvertUsrState(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 >= 6)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UsrState,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_23ConvertUsrState", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      return 0;
    }
  }

  else
  {
    return a1;
  }

  return v2;
}

uint64_t GncP11_24ConvertGnssContent(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 >= 5)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssCntnt,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_24ConvertGnssContent", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      return 0;
    }
  }

  else
  {
    return a1;
  }

  return v2;
}

uint64_t GncP11_25ConvertReliab(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 >= 5)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_25ConvertReliab", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      return 0;
    }
  }

  else
  {
    return a1;
  }

  return v2;
}

BOOL GncP11_30CheckUtcValidity(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v7 = 0;
  v14 = *MEMORY[0x29EDCA608];
  if (a3 && a4 <= 0x17 && a5 <= 0x3B && a6 <= 0x3C && a7 <= 0x3E7)
  {
    if (a2 <= 0xC)
    {
      if (((1 << a2) & 0x15AA) != 0)
      {
        return a3 <= 0x1F;
      }

      if (((1 << a2) & 0xA50) != 0)
      {
        return a3 <= 0x1E;
      }

      if (a2 == 2)
      {
        if ((a1 & 3) == 0)
        {
          HIDWORD(v9) = -1030792151 * a1;
          LODWORD(v9) = -1030792151 * a1;
          if ((v9 >> 2) > 0x28F5C28 || a1 == 400 * ((10737419 * a1) >> 32))
          {
            return a3 <= 0x1D;
          }
        }

        return a3 <= 0x1C;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Month,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP11_30CheckUtcValidity", 770, a2);
      LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
    }

    return 0;
  }

  return v7;
}

uint64_t GncP11_32ConvertEstimatedTech(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 >= 4)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EstimTech,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_32ConvertEstimatedTech", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      return 0;
    }
  }

  else
  {
    return a1;
  }

  return v2;
}

double GLON_RealAlm2RefState(__int16 a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[3] = *MEMORY[0x29EDCA608];
  *(a5 + 172) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  if (a3 >= 1)
  {
    v10 = -1;
  }

  else
  {
    v10 = 86399;
  }

  *(a5 + 80) = 0uLL;
  *(a5 + 96) = 0uLL;
  *(a5 + 48) = 0uLL;
  *(a5 + 64) = 0uLL;
  *(a5 + 32) = 0uLL;
  *a5 = 0uLL;
  *(a5 + 16) = 0uLL;
  GLON_RealAlm2ECEF(v18, v16.f64, a4, (v10 + a3), (a2 - (a3 < 1)));
  GLON_RealAlm2ECEF(a5, (a5 + 24), a4, a3, a2);
  *(a5 + 48) = vsubq_f64(*(a5 + 24), v16);
  *(a5 + 64) = *(a5 + 40) - v17;
  *(a5 + 96) = -*(a4 + 72);
  *(a5 + 104) = 0;
  *(a5 + 168) = a3;
  *(a5 + 172) = a2;
  *(a5 + 174) = a1;
  *(a5 + 184) = 2;
  *(a5 + 166) = 123;
  *(a5 + 180) = *(a4 + 10);
  *(a5 + 176) = 2;
  v11 = a2 - *(a4 + 8);
  v12 = v11 + 1461;
  if (v11 >= -730)
  {
    v12 = a2 - *(a4 + 8);
  }

  if (v11 <= 730)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11 - 1461;
  }

  if (v13 < 0)
  {
    v13 = -v13;
  }

  if (v13 >= 0x281)
  {
    v14 = 65500;
  }

  else
  {
    v14 = 100 * v13 + 1500;
  }

  result = (v14 * v14);
  *(a5 + 112) = result;
  return result;
}

void DD_Assist_GPS_Data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v8 = 0;
  v109 = *MEMORY[0x29EDCA608];
  v94 = result + 224;
  v98 = result + 192;
  v9 = a4 + 104;
  v97 = a2 - 241;
  v10 = a4 + 7016;
  v96 = a4 + 104;
  do
  {
    if (*(v6 + v8) > 0xA5u || *(*(a4 + 48) + v8) == 1 && (v97 - *(v9 + 108 * v8)) > 0xFFFFF806)
    {
      goto LABEL_37;
    }

    v107 = 0u;
    memset(v108, 0, 28);
    v106 = 0u;
    v104 = 0u;
    memset(v105, 0, sizeof(v105));
    if (!Core_Get_GPS_Eph((v8 + 1), a2, &v104))
    {
      goto LABEL_9;
    }

    v11 = *(a4 + 48);
    if (*(v11 + v8) == 1)
    {
      v12 = (v9 + 108 * v8);
      if (v104 <= *v12 && a2 - *v12 >= -1800)
      {
LABEL_9:
        *(*(a4 + 8) + 20 * v8 + 8) = 0;
LABEL_10:
        v6 = a3;
        goto LABEL_37;
      }

      v13 = DWORD2(v104);
      if (v104 - *v12 <= 10799 && Is_GPS_BinEph_Real(v12) && !Is_GPS_BinEph_Real(&v104))
      {
        *v12 = a2;
        v9 = v96;
        goto LABEL_10;
      }
    }

    else
    {
      v13 = DWORD2(v104);
    }

    v14 = (0xE4FE7F3uLL >> ((v13 >> 2) & 0x1F)) & 1;
    v15 = *a4;
    if (*(*a4 + v8))
    {
      v9 = v96;
    }

    else
    {
      v9 = v96;
      if (v14)
      {
        v16 = *(a4 + 64);
        if (*(v16 + v8) != 1)
        {
          goto LABEL_25;
        }

        v17 = (v10 + 44 * v8);
        v18 = 0xE4FE7F3uLL >> (v17[5] & 0x1F);
        v19 = *v17;
        if ((v18 & 1) != 0 || v19 + 3600 <= a2)
        {
          if (v19 + 100 < a2)
          {
            *(*(a4 + 24) + v8) = 0;
            *(v16 + v8) = 0;
            *(v98 + v8) = -1;
            v11 = *(a4 + 48);
            v15 = *a4;
          }

LABEL_25:
          LOBYTE(v14) = 1;
          goto LABEL_26;
        }

        LOBYTE(v14) = 0;
      }
    }

LABEL_26:
    v20 = v9 + 108 * v8;
    v21 = v108[0];
    *(v20 + 64) = v107;
    *(v20 + 80) = v21;
    *(v20 + 92) = *(v108 + 12);
    v22 = v105[0];
    *v20 = v104;
    *(v20 + 16) = v22;
    v23 = v106;
    *(v20 + 32) = v105[1];
    *(v20 + 48) = v23;
    *(*(a4 + 16) + v8) = 1;
    *(v11 + v8) = 1;
    v24 = v14 & 1;
    *(v15 + v8) = v24;
    if (v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    v26 = *(a4 + 8) + 20 * v8;
    v27 = (v26 + 12);
    v28 = (v26 + 8);
    if (*(v20 + 4) == 5)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    *v29 = v25;
    if (a2 >= 1)
    {
      *(*(a4 + 72) + v8) = 1;
      Core_Save_GPS_Eph((v8 + 1), 0, v20);
      v15 = *a4;
    }

    v30 = 0;
    LODWORD(v31) = 0;
    v32 = p_NV;
    v33 = v15[1];
    *(p_NV + 92) = *v15;
    *(v32 + 108) = v33;
    v34 = 55665;
    v6 = a3;
    do
    {
      v35 = *(v32 + 88 + v30) ^ BYTE1(v34);
      v34 = 52845 * (v34 + v35) + 22719;
      v31 = (v31 + v35);
      ++v30;
    }

    while (v30 != 40);
    *(v32 + 80) = v31;
    v36 = result + 6 * v8;
    *v36 = 16777472;
    *(v36 + 4) = 256;
    *(v94 + 2 * v8) = 256;
LABEL_37:
    ++v8;
  }

  while (v8 != 32);
  if (a2 >= 1)
  {
    v37 = 0;
    v38 = a4 + 3560;
    do
    {
      if (*(*a4 + v37) == 1 && (*(*(a5 + 896) + v37) & 1) == 0 && *(v6 + v37) <= 0xA5u && (*(*(a4 + 56) + v37) != 1 || a2 - *(v38 + 108 * v37) >= 241))
      {
        v107 = 0u;
        memset(v108, 0, 28);
        v106 = 0u;
        v104 = 0u;
        memset(v105, 0, sizeof(v105));
        GPS_BinEph = EE_Get_GPS_BinEph((v37 + 1), a2, &v104);
        v40 = *(a4 + 56);
        if (!GPS_BinEph || (v41 = v104, *(v40 + v37) == 1) && v104 <= *(v38 + 108 * v37))
        {
          *(v40 + v37) = 0;
        }

        else
        {
          v42 = v105[0];
          v43 = (v38 + 108 * v37);
          *v43 = v104;
          v43[1] = v42;
          *(v43 + 92) = *(v108 + 12);
          v44 = v108[0];
          v43[4] = v107;
          v43[5] = v44;
          v45 = v106;
          v43[2] = v105[1];
          v43[3] = v45;
          *(*(a4 + 16) + v37) = 1;
          *(v40 + v37) = 1;
          v46 = result + 6 * v37;
          *v46 = 16777472;
          *(v46 + 4) = 256;
          memset(v103, 0, sizeof(v103));
          v102 = 0u;
          v101 = 0u;
          v100[0] = v41;
          v100[1] = DWORD1(v104);
          LOBYTE(v101) = BYTE8(v104);
          v47 = 21;
          v48 = 11;
          *(&v101 + 1) = *(&v104 + 9);
          v49 = v105 + 8;
          *(v94 + 2 * v37) = 256;
          do
          {
            v50 = v100 + v48;
            *v50 = *v49;
            *(v50 + 1) = *(v49 + 1);
            v49 += 4;
            --v47;
            v48 += 3;
          }

          while (v47 > 1);
          Debug_Log_GPS_Eph(2, (v37 + 1), v100);
        }
      }

      ++v37;
    }

    while (v37 != 32);
  }

  v51 = 0;
  v52 = 192;
  v104 = 0u;
  memset(v105, 0, 28);
  while (2)
  {
    if (*(*(a4 + 64) + v51) != 1 || a2 - *(v10 + 44 * v51) >= 1801)
    {
      *(&v104 | 0xC) = 0u;
      *((&v104 | 0xC) + 0x10) = 0u;
      if (Core_Get_GPS_Alm((v51 + 1), a2, &v104))
      {
        v53 = *(a4 + 64);
        if (*(v53 + v51) != 1 || v104 > *(v10 + 44 * v51))
        {
          v54 = (0xE4FE7F3uLL >> (BYTE4(v105[0]) & 0x1F)) & 1;
          v55 = *a4;
          if ((*(*a4 + v51) & 1) == 0 && v54)
          {
            v56 = *(a4 + 48);
            if (*(v56 + v51) == 1)
            {
              v57 = (v96 + 108 * v51);
              v58 = 0xE4FE7F3uLL >> ((v57[2] >> 2) & 0x1F);
              v59 = *v57;
              if ((v58 & 1) == 0 && v59 + 3600 > a2)
              {
                LOBYTE(v54) = 0;
                goto LABEL_68;
              }

              if (v59 + 100 < a2)
              {
                *(*(a4 + 16) + v51) = 0;
                *(v56 + v51) = 0;
                v60 = result + 6 * v51;
                *v60 = 16777472;
                *(v60 + 4) = 256;
                *(v94 + 2 * v51) = 256;
              }
            }

            LOBYTE(v54) = 1;
          }

LABEL_68:
          v61 = (v10 + 44 * v51);
          v62 = v105[0];
          *v61 = v104;
          v61[1] = v62;
          *(v61 + 28) = *(v105 + 12);
          *(*(a4 + 24) + v51) = 1;
          *(v53 + v51) = 1;
          *(v55 + v51) = v54;
          if (a2 >= 1)
          {
            v63 = 0;
            LODWORD(v64) = 0;
            v65 = p_NV;
            v66 = p_NV + 56 * v51;
            v67 = *v61;
            v68 = v61[1];
            *(v66 + 220) = *(v61 + 28);
            *(v66 + 192) = v67;
            *(v66 + 208) = v68;
            v69 = v65 + v52;
            v70 = 55665;
            do
            {
              v71 = *(v69 + v63) ^ BYTE1(v70);
              v70 = 52845 * (v70 + v71) + 22719;
              v64 = (v64 + v71);
              ++v63;
            }

            while (v63 != 48);
            *(v66 + 184) = v64;
            v55 = *a4;
          }

          v72 = 0;
          LODWORD(v73) = 0;
          v74 = p_NV;
          v75 = v55[1];
          *(p_NV + 92) = *v55;
          *(v74 + 108) = v75;
          v76 = 55665;
          do
          {
            v77 = *(v74 + 88 + v72) ^ BYTE1(v76);
            v76 = 52845 * (v76 + v77) + 22719;
            v73 = (v73 + v77);
            ++v72;
          }

          while (v72 != 40);
          *(v74 + 80) = v73;
          *(v98 + v51) = -1;
        }
      }
    }

    ++v51;
    v52 += 56;
    if (v51 != 32)
    {
      continue;
    }

    break;
  }

  v104 = 0uLL;
  if ((*(a4 + 8428) - 4) > 2 || a2 - *(a4 + 8424) >= 1801)
  {
    GPS_Klob = Core_Get_GPS_Klob(a2, &v104);
    v79 = *(a4 + 8428);
    if (GPS_Klob)
    {
      if ((v79 - 4) > 2 || v104 > *(a4 + 8424))
      {
        *(a4 + 8424) = v104;
        if (a2 >= 1 && *(a4 + 8428) != 3)
        {
          v80 = 0;
          LODWORD(v81) = 0;
          v82 = p_NV;
          v83 = p_NV + 136;
          *(p_NV + 136) = v104;
          v84 = 55665;
          do
          {
            v85 = *(v83 + v80) ^ BYTE1(v84);
            v84 = 52845 * (v84 + v85) + 22719;
            v81 = (v81 + v85);
            ++v80;
          }

          while (v80 != 16);
          *(v82 + 128) = v81;
        }
      }
    }

    else if (a2 >= 901 && !v79)
    {
      *(a4 + 8424) = a2 - 900;
      *(a4 + 8432) = 0xFAFF0427FFFF0205;
      *(a4 + 8428) = 1;
      EvLog("DD_Assist_GPS_Ion:  Iono Model missing, default used.");
    }
  }

  v104 = 0uLL;
  *&v105[0] = 0;
  v86 = (a4 + 8440);
  if (((*(a4 + 8444) - 4) > 2 || a2 - *v86 >= 1801) && Core_Get_GPS_UTC(a2, &v104) && ((*(a4 + 8444) - 4) > 2 || v104 > *v86))
  {
    *v86 = v104;
    *(a4 + 8456) = *&v105[0];
    if (a2 >= 1 && *(a4 + 8444) != 3)
    {
      v87 = 0;
      LODWORD(v88) = 0;
      v89 = p_NV;
      v90 = p_NV + 160;
      *(p_NV + 160) = v104;
      *(v89 + 176) = *&v105[0];
      v91 = 55665;
      do
      {
        v92 = *(v90 + v87) ^ BYTE1(v91);
        v91 = 52845 * (v91 + v92) + 22719;
        v88 = (v88 + v92);
        ++v87;
      }

      while (v87 != 24);
      *(v89 + 152) = v88;
    }
  }
}

uint64_t gps_find_session_info(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = sessionInfoTable;
  if (sessionInfoTable)
  {
    while (*v1 != a1)
    {
      v1 = *(v1 + 192);
      if (!v1)
      {
        return v1;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionId,%u,sessionProtocol,%u,posProtocol,%u,v_Emergency,%u,isMsrPosReqRcvd,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 73, "gps_find_session_info", *v1, *(v1 + 4), *(v1 + 8), *(v1 + 14), *(v1 + 16));
      LbsOsaTrace_WriteLog(0x13u, __str, v3, 4, 1);
    }
  }

  return v1;
}

_OWORD *gps_create_session_info_ext(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "gps_create_session_info_ext");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v4 = operator new(0xC8uLL, MEMORY[0x29EDC9418]);
  v5 = v4;
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_11;
    }

    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 69, "gps_create_session_info_ext", 1537);
    v14 = 0;
    goto LABEL_10;
  }

  v6 = *(a1 + 176);
  v4[10] = *(a1 + 160);
  v4[11] = v6;
  *(v4 + 24) = *(a1 + 192);
  v7 = *(a1 + 112);
  v4[6] = *(a1 + 96);
  v4[7] = v7;
  v8 = *(a1 + 144);
  v4[8] = *(a1 + 128);
  v4[9] = v8;
  v9 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v9;
  v10 = *(a1 + 80);
  v4[4] = *(a1 + 64);
  v4[5] = v10;
  v11 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v11;
  if (sessionInfoTable)
  {
    *(v4 + 24) = sessionInfoTable;
  }

  sessionInfoTable = v4;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,SessionProtocol,%u,posProtocol,%u,v_Emergency,%u\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 65, "gps_create_session_info_ext", *v5, *(v5 + 4), *(v5 + 2), *(v5 + 14));
    v14 = 1;
LABEL_10:
    LbsOsaTrace_WriteLog(0x13u, __str, v13, v14, 1);
  }

LABEL_11:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 68, "gps_create_session_info_ext");
    LbsOsaTrace_WriteLog(0x13u, __str, v17, 5, 1);
  }

  return v5;
}

uint64_t gps_delete_session_info(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "gps_delete_session_info");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v4 = sessionInfoTable;
  if (sessionInfoTable)
  {
    if (*sessionInfoTable == a1)
    {
      v5 = 0;
LABEL_9:
      if (v5)
      {
        v7 = (v5 + 192);
      }

      else
      {
        v7 = &sessionInfoTable;
      }

      *v7 = *(v4 + 192);
      MEMORY[0x29C29EB20]();
    }

    else
    {
      v6 = sessionInfoTable;
      while (1)
      {
        v4 = *(v6 + 192);
        if (!v4)
        {
          break;
        }

        v5 = v6;
        v6 = *(v6 + 192);
        if (*v4 == a1)
        {
          goto LABEL_9;
        }
      }
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 68, "gps_delete_session_info");
    return LbsOsaTrace_WriteLog(0x13u, __str, v10, 5, 1);
  }

  return result;
}

uint64_t gps_delete_all_sessions(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 68, "gps_delete_all_sessions");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 5, 1);
  }

  for (i = sessionInfoTable; sessionInfoTable; i = sessionInfoTable)
  {
    sessionInfoTable = *(i + 192);
    HandlePPDUStopSession(i);
    MEMORY[0x29C29EB20](i, 0x1020C407D934135);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "gps_delete_all_sessions");
    return LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  return result;
}

uint64_t find_wlan_session_info(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = sessionInfoTable;
  if (!sessionInfoTable)
  {
    return 0xFFFFFFFFLL;
  }

  while (*(v0 + 188) != 1)
  {
    v0 = *(v0 + 24);
    if (!v0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WLAN SessionId,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 73, "find_wlan_session_info", *v0);
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 4, 1);
  }

  return *v0;
}

void SUPL_Message_Handler(SuplProvider *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = SUPL_Queue;
  while (SUPL_Queue)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      SUPL_Queue = *(v1 + 8);
      *v2 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      SUPL_Queue = 0;
      qword_2A14BEA08 = 0;
    }

    v3 = *(v1 + 16);
    if (v3 > 5)
    {
      if (*(v1 + 16) > 8u)
      {
        switch(v3)
        {
          case 9u:
            SUPL_Recieve_LPP_Pos_Rsp(*(v1 + 96));
            break;
          case 0xAu:
            SUPL_Recieve_LPP_Cap_Rsp(*(v1 + 104));
            break;
          case 0xBu:
            SUPL_process_Abort_In(v1);
            break;
          default:
LABEL_34:
            if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v7 = mach_continuous_time();
              v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL Event\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "SUPL_Message_Handler", 770);
              LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
            }

            break;
        }
      }

      else
      {
        switch(v3)
        {
          case 6u:
            LcsTimer::OnTimer(*(v1 + 20));
            break;
          case 7u:
            SUPL_HandleECIDParams(v1);
            break;
          case 8u:
            SUPL_Recieve_LPP_Ad_Rsp(*(v1 + 88));
            break;
          default:
            goto LABEL_34;
        }
      }
    }

    else if (*(v1 + 16) > 2u)
    {
      switch(v3)
      {
        case 3u:
          v4 = *(v1 + 20);
          Instance = SuplProvider::GetInstance(a1);
          if (Instance)
          {
            v6 = Instance + 8;
          }

          else
          {
            v6 = 0;
          }

          (*(*v6 + 24))(v6, v4, v1 + 64);
          break;
        case 4u:
          SUPL_Process_AidResponse(v1);
          break;
        case 5u:
          SUPL_Process_posResponse(v1);
          break;
        default:
          goto LABEL_34;
      }
    }

    else if (*(v1 + 16))
    {
      if (v3 == 1)
      {
        SUPL_Handle_Comms_Close(v1);
      }

      else
      {
        SUPL_Handle_PUSH_Received(v1);
      }
    }

    else
    {
      SUPL_Handle_Comms_Open(v1);
    }

    SUPL_Message_Free(v1);
    v1 = SUPL_Queue;
  }
}

void SUPL_Handle_Comms_Open(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(v12, 109, "SUPL_Handle_Comms_Open");
  if (a1)
  {
    v2 = *(a1 + 20);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 73, "SUPL_Handle_Comms_Open", *(a1 + 24));
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v5, 4, 1);
    }

    if (!v2)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SUPL_Handle_Comms_Open", 770);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
      }
    }

    Instance = SuplProvider::GetInstance(IsLoggingAllowed);
    if (Instance)
    {
      v9 = Instance + 8;
    }

    else
    {
      v9 = 0;
    }

    (*(*v9 + 8))(v9, v2, *(a1 + 28));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 69, "SUPL_Handle_Comms_Open", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v11, 0, 1);
  }

  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(v12);
}

void sub_299706214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(va);
  _Unwind_Resume(a1);
}

void SUPL_Handle_Comms_Close(LcsSuplGlueLayer *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  Instance = LcsSuplGlueLayer::GetInstance(a1);
  if (!Instance)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_12:
    v7 = v9;
    v8 = 0;
LABEL_13:
    LbsOsaTrace_WriteLog(0x12u, __str, v7, v8, 1);
    return;
  }

  v3 = *(a1 + 5);
  if (!v3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n");
    goto LABEL_12;
  }

  v4 = Instance;
  v5 = *(Instance + 5);
  if (!v5)
  {
LABEL_6:
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 5u, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No session exist with SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 68, "SUPL_Handle_Comms_Close", v3);
    v8 = 5;
    goto LABEL_13;
  }

  while (*v5 != v3)
  {
    v5 = *(v5 + 8);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v10 = SuplProvider::GetInstance(Instance);
  if (v10)
  {
    v11 = v10 + 8;
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 16))(v11, v3, *(a1 + 7));

  LcsSuplGlueLayer::DeleteSessionInfo(v4, v3);
}

void SUPL_Handle_PUSH_Received(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = a1;
    v2 = *(a1 + 5);
    if (v2)
    {
      __p = 0;
      v9 = 0;
      v10 = 0;
      if (&__p != (a1 + 5))
      {
        a1 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a1[5], a1[6], a1[6] - a1[5]);
      }

      Instance = SuplUtils::GetInstance(a1);
      SuplUtils::ProcessSuplMtlrMessage(Instance, *(v1 + 32), &__p, v2);
      if (__p)
      {
        v9 = __p;
        operator delete(__p);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(&__p, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SUPL_Handle_PUSH_Received", 770);
      LbsOsaTrace_WriteLog(0x12u, &__p, v7, 0, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(&__p, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "SUPL_Handle_PUSH_Received", 513);
    LbsOsaTrace_WriteLog(0x12u, &__p, v5, 0, 1);
  }
}

SimUtils *SUPL_HandleECIDParams(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 && *(a1 + 128))
  {
    result = SimUtils::GetInstance(a1);
    if (result)
    {
      updated = SimUtils::UpdateLocationIdInfo(result, *(a1 + 32), *(a1 + 128));
      Instance = SuplUtils::GetInstance(updated);

      return SuplUtils::ProcessWaitingSuplInits(Instance);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Either SuplMessage or locationIDInfo is NULL\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "SUPL_HandleECIDParams", 770);
      return LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }
  }

  return result;
}

void SUPL_Recieve_LPP_Ad_Rsp(_DWORD *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: sessionID,%u\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 73, "SUPL_Recieve_LPP_Ad_Rsp", *a1);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v4, 4, 1);
    }

    Instance = SuplLppProvider::GetInstance(IsLoggingAllowed);
    SuplLppProvider::SetLppAdPayload(Instance, a1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SUPL_Recieve_LPP_Ad_Rsp", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
  }
}

void SUPL_Recieve_LPP_Pos_Rsp(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: sessionID,%u\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 73, "SUPL_Recieve_LPP_Pos_Rsp", *(a1 + 28));
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v4, 4, 1);
    }

    Instance = SuplLppProvider::GetInstance(IsLoggingAllowed);
    v6 = SuplPosPayloadHandler::GetInstance(Instance);
    SuplPosPayloadHandler::HandleLppPosResponseFromStack(v6, a1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "SUPL_Recieve_LPP_Pos_Rsp", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
  }
}

void SUPL_Recieve_LPP_Cap_Rsp(_DWORD *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: sessionID,%u\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 73, "SUPL_Recieve_LPP_Cap_Rsp", *a1);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v4, 4, 1);
    }

    Instance = SuplLppProvider::GetInstance(IsLoggingAllowed);
    SuplLppProvider::SetLppCapPayload(Instance, a1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SUPL_Recieve_LPP_Cap_Rsp", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
  }
}

void **SUPL_Process_AidResponse(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    return LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
  }

  v2 = *(a1 + 20);
  if (!v2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n");
    return LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
  }

  if (!*(a1 + 120))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AID Rsp\n");
    return LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
  }

  Instance = SuplProvider::GetInstance(a1);
  v4 = (*(*Instance + 8))(Instance, v2, **(a1 + 120));
  v5 = SuplUtils::GetInstance(v4);
  v6 = *(*(a1 + 120) + 8);

  return SuplUtils::StoreLastKnownPositionFix(v5, v6);
}

void SUPL_Process_posResponse(uint64_t *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a1 && (v1 = a1, (v2 = a1[14]) != 0))
  {
    if (*(v2 + 24) == 3)
    {
      v3 = *(a1 + 5);
      if (v3)
      {
        __p = 0;
        v12 = 0;
        v13 = 0;
        v14 = -1;
        v16 = 0;
        v15 = v3;
        if (&__p != v2)
        {
          a1 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *v2, *(v2 + 8), *(v2 + 8) - *v2);
          v2 = v1[14];
        }

        v16 = *(v2 + 32);
        v14 = *(v2 + 28) != 2;
        Instance = SuplProvider::GetInstance(a1);
        (*(*Instance + 16))(Instance, &__p);
        if (__p)
        {
          v12 = __p;
          operator delete(__p);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(&__p, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "SUPL_Process_posResponse", 770);
        LbsOsaTrace_WriteLog(0x12u, &__p, v10, 0, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(&__p, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx posRspContentType\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "SUPL_Process_posResponse", 770);
      LbsOsaTrace_WriteLog(0x12u, &__p, v8, 0, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(&__p, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx Either SuplMessage or ppduResponseMsg is NULL\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "SUPL_Process_posResponse", 770);
    LbsOsaTrace_WriteLog(0x12u, &__p, v6, 0, 1);
  }
}

void sub_299707180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***SUPL_process_Abort_In(SuplProvider *a1))(void, void, char *, void)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 5);
  if (v1)
  {
    __str[0] = 1;
    v6 = v1;
    result = SuplProvider::GetInstance(a1);
    if (result)
    {
      return (**result)(result, 0, __str, 0);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "SUPL_process_Abort_In", 770);
      return LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
    }
  }

  return result;
}

char **KFP_printMeas(char **result)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((g_FPE_LogSeverity & 0x80) != 0)
  {
    v1 = result;
    if (result)
    {
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v3 = *(g_TCU + 8);
        }

        else
        {
          v3 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: nonSyncedFields = {KfirInputMeas:[%6.12f %d]}", "KFP_printMeas", 177, v2, v3, *v1, *(v1 + 2));
      }

      v6 = g_p_CB_LCD_SA_Dbg;
      if (g_p_CB_LCD_SA_Dbg)
      {
        v7 = *g_p_CB_LCD_SA_Dbg;
        v8 = 36;
        v9 = 1u;
        do
        {
          *v6 = v7 + 1;
          *v7 = v8;
          v7 = *v6;
          if (*v6 >= *(v6 + 24))
          {
            v7 = *(v6 + 16);
            *v6 = v7;
          }

          v8 = aKfiData[v9++];
        }

        while (v9 != 11);
        LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
        v6 = g_p_CB_LCD_SA_Dbg;
      }

      v10 = 0;
      v17 = 216;
      v11 = v6;
      do
      {
        if (v11)
        {
          sprintf_02x(v11, *(&v17 + v10));
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v6 = g_p_CB_LCD_SA_Dbg;
          v11 = g_p_CB_LCD_SA_Dbg;
        }

        ++v10;
      }

      while (v10 != 4);
      v12 = 0;
      v16 = *(v1 + 2);
      v13 = v6;
      do
      {
        if (v13)
        {
          sprintf_02x(v13, *(&v16 + v12));
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v6 = g_p_CB_LCD_SA_Dbg;
          v13 = g_p_CB_LCD_SA_Dbg;
        }

        ++v12;
      }

      while (v12 != 4);
      v14 = 0;
      result = v6;
      do
      {
        if (result)
        {
          sprintf_02x(result, *(v1 + v14));
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v6 = g_p_CB_LCD_SA_Dbg;
          result = g_p_CB_LCD_SA_Dbg;
        }

        ++v14;
      }

      while (v14 != 216);
      if (v6)
      {
        v15 = (*v6)++;
        *v15 = 10;
        if (*v6 >= *(v6 + 24))
        {
          *v6 = *(v6 + 16);
        }
      }
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v5 = *(g_TCU + 8);
        }

        else
        {
          v5 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input meas is equal to nullptr!", "KFP_printMeas", 172, v4, v5);
      }

      g_FPE_AssertFlag = 1;
    }
  }

  return result;
}

void KFP_runLeveler(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v2;
  v5 = v1;
  v76 = *MEMORY[0x29EDCA608];
  v6 = v1 + 1889392;
  v7 = *(v2 + 8);
  if (v7 == 6 || v7 == 0)
  {
    LVLR_Run(v1 + 1889376, v2, v3);
  }

  if (*v6 == 1 && *(v4 + 8) == 2 && *(v4 + 208) == 1)
  {
    v64 = 0;
    v9 = (v5 + 1879576);
    memset(v63, 0, sizeof(v63));
    Set_Mat_Const(1, *(v5 + 1879576), 0x20, v63, *(v4 + 128));
    Copy_SubMat_to_Mat(1.0, 32, v63, 27, 0, 1024, (v5 + 1879584));
    v10 = (v4 + 80);
    v56 = (v4 + 16);
    Set_Mat_Const(1, *(v5 + 1879576), 0x20, v63, *(v4 + 80));
    Copy_SubMat_to_Mat(1.0, 32, v63, 28, 0, 1024, (v5 + 1879584));
    *&v60[0] = 0;
    if (R8_EQ((v4 + 80), v60) || (*&v72[0] = 0, R8_EQ((v4 + 88), v72)))
    {
      v11 = *v9;
      v12 = 0.0;
    }

    else
    {
      v11 = *v9;
      v12 = *(v4 + 88) - *v10;
    }

    Set_Mat_Const(1, v11, 0x20, v63, v12);
    Copy_SubMat_to_Mat(1.0, 32, v63, 29, 0, 1024, (v5 + 1879584));
    *&v60[0] = 0;
    if (R8_EQ((v4 + 80), v60) || (*&v72[0] = 0, R8_EQ((v4 + 96), v72)))
    {
      v13 = *v9;
      v14 = 0.0;
    }

    else
    {
      v13 = *v9;
      v14 = *(v4 + 96) - *v10;
    }

    Set_Mat_Const(1, v13, 0x20, v63, v14);
    Copy_SubMat_to_Mat(1.0, 32, v63, 31, 0, 1024, (v5 + 1879584));
    v15 = *v4;
    v75 = 0;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    memset(v72, 0, sizeof(v72));
    LVLR_GetLevelerOutputs(v5 + 1889376, v72, 0);
    v16 = *(&v74 + 1);
    v17 = v75;
    memset(v71, 0, sizeof(v71));
    Copy_Mat(3, v72, 3, v71);
    v70 = 0;
    v69 = 0u;
    memset(v68, 0, sizeof(v68));
    Copy_Mat(3, v73, 6, v68);
    Set_Mat_Size(6, v68, 4, 1);
    LODWORD(v18) = v73[2];
    *&v69 = v18;
    memset(v67, 0, sizeof(v67));
    Copy_Mat(3, &v73[2] + 2, 3, v67);
    memset(v66, 0, sizeof(v66));
    InsUtil_ECEF2Geo_Iterative(v56, v66, 6378137.0);
    memset(v65, 0, sizeof(v65));
    CreateC_e_n(v66, v65);
    bzero(v63, 0x2008uLL);
    Copy_Mat(1024, (v5 + 1890000), 0x400, v63);
    memset(v62, 0, sizeof(v62));
    Copy_SubMat_from_Mat(1.0, 1024, (v5 + 1890000), 0, 0, 3, 3, 9, v62);
    Mult_MatT_Mat(9);
    Mult_Mat_Mat(9);
    Copy_SubMat_to_Mat(1.0, 9, v62, 0, 0, 1024, v63);
    Copy_SubMat_from_Mat(1.0, 1024, (v5 + 1890000), 18, 18, 3, 3, 9, v62);
    Mult_MatT_Mat(9);
    Mult_Mat_Mat(9);
    Copy_SubMat_to_Mat(1.0, 9, v62, 18, 18, 1024, v63);
    v19 = v5 + 1890008;
    v55 = v6;
    v20 = *(v6 + 612);
    v21 = *(v5 + 1890008 + 8 * (28 * v20 + 28));
    v22 = *(v4 + 104);
    if (v21 < v22)
    {
      v21 = *(v4 + 104);
    }

    v23 = DWORD1(v63[0]);
    *(v63 + (28 * DWORD1(v63[0]) + 28) + 1) = v21;
    *&v60[0] = 0;
    if (!R8_EQ((v4 + 80), v60))
    {
      *&v58 = 0;
      if (!R8_EQ((v4 + 88), &v58))
      {
        v24 = *(v19 + 8 * (29 * v20 + 29));
        if (v24 < v22 + *(v4 + 112))
        {
          v24 = v22 + *(v4 + 112);
        }

        *(v63 + (29 * v23 + 29) + 1) = v24;
      }
    }

    v25 = *(v19 + 8 * (30 * v20 + 30));
    if (v25 < v22)
    {
      v25 = v22;
    }

    *(v63 + (30 * v23 + 30) + 1) = v25;
    *&v60[0] = 0;
    if (!R8_EQ((v4 + 80), v60))
    {
      *&v58 = 0;
      if (!R8_EQ((v4 + 96), &v58))
      {
        v26 = *(v19 + 8 * (31 * v20 + 31));
        if (v26 < v22 + *(v4 + 120))
        {
          v26 = v22 + *(v4 + 120);
        }

        *(v63 + (31 * v23 + 31) + 1) = v26;
      }
    }

    v57 = v4;
    if (All_Mat_Greater_Than(0.0, 3, v67))
    {
      Set_Mat_Const(3, 3u, 9, v62, 0.0);
      Copy_Vec_to_Mat_diag(3, v67, 0, 0, 1, 1, 9, v62);
      Copy_SubMat_to_Mat(1.0, 9, v62, 12, 12, 1024, v63);
    }

    if (*v9)
    {
      v27 = 0;
      v28 = 0;
      v29 = 252056;
      v30 = 302344;
      v31 = 1887792;
      v32 = 67400;
      do
      {
        v33 = *(v5 + v31);
        v61 = 0;
        memset(v60, 0, sizeof(v60));
        Copy_SubMat_from_Mat(1.0, 1024, (v5 + 1879584), 0, v28, *(v5 + 1879584), 1, 32, v60);
        v58 = 0u;
        v59 = 0u;
        Set_Mat_Size(3, &v58, 1, 3);
        *(&v58 + 1) = v16;
        *&v59 = v17;
        *(&v59 + 1) = v33;
        KF_initKFafterLeveling(v5 + v27 + 24, v60, v63, &v58, v71, v56, (v57 + 48), v68, v15);
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v34 = mach_continuous_time();
          v35 = g_TCU ? *(g_TCU + 8) : 0.0;
          _X20 = v5 + v29;
          _X8 = v5 + v29 + 648;
          __asm { PRFM            #0, [X8] }

          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Attitude_State[deg] for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_initPosAfterLeveling", 393, (*&g_MacClockTicksToMsRelation * v34), v35, v28, *(v5 + v27 + 17760), *(v5 + v27 + 17768), *(v5 + v27 + 17776));
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v42 = mach_continuous_time();
            v43 = g_TCU ? *(g_TCU + 8) : 0.0;
            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Attitude_Rate_State[deg/s]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_initPosAfterLeveling", 400, (*&g_MacClockTicksToMsRelation * v42), v43, v28, *(v5 + v27 + 17792), *(v5 + v27 + 17800), *(v5 + v27 + 17808));
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v44 = mach_continuous_time();
              v45 = g_TCU ? *(g_TCU + 8) : 0.0;
              _X9 = v5 + v30;
              __asm { PRFM            #0, [X9] }

              LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CCH_Values_And_Lever_Arm: for Filter Index %d  =  {%lf, %lf}", "KFP_initPosAfterLeveling", 406, (*&g_MacClockTicksToMsRelation * v44), v45, v28, *(v5 + v32), *(v5 + v27 + 17744));
              if ((g_FPE_LogSeverity & 8) != 0)
              {
                v48 = mach_continuous_time();
                v49 = g_TCU ? *(g_TCU + 8) : 0.0;
                __asm { PRFM            #0, [X20] }

                LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Accel_Bias[m/samp_period^2]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_initPosAfterLeveling", 413, (*&g_MacClockTicksToMsRelation * v48), v49, v28, *(v5 + v27 + 17112), *(v5 + v27 + 17120), *(v5 + v27 + 17128));
                if ((g_FPE_LogSeverity & 8) != 0)
                {
                  v51 = mach_continuous_time();
                  if (g_TCU)
                  {
                    v52 = *(g_TCU + 8);
                  }

                  else
                  {
                    v52 = 0.0;
                  }

                  LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Gyro_Bias[deg/samp_period]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_initPosAfterLeveling", 420, (*&g_MacClockTicksToMsRelation * v51), v52, v28, *(v5 + v27 + 17144) * 57.2957795, *(v5 + v27 + 17152) * 57.2957795, *(v5 + v27 + 17160) * 57.2957795);
                }
              }
            }
          }
        }

        ++v28;
        v29 += 117472;
        v30 += 117472;
        v31 += 8;
        v27 += 117472;
        v32 += 117472;
      }

      while (v28 < *v9);
    }

    *(v5 + 8) = *v57;
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v53 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v54 = *(g_TCU + 8);
      }

      else
      {
        v54 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f KF_SM: Init After leveling", "KFP_runLeveler", 465, v53, v54);
    }

    *(v5 + 1898496) = *v5;
    *(v55 + 600) = 4;
  }
}

uint64_t KFP_runMeas(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v211 = *MEMORY[0x29EDCA608];
  if (*a2 < *a1)
  {
    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v6 = *(g_TCU + 8);
      }

      else
      {
        v6 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Ignoring meas type #%d measurements from the past (%0.2f) at time: %0.2f", "KFP_runMeas", 699, v5, v6, *(v3 + 2), *v3, *v4);
    }

    return 1;
  }

  v7 = (a1 + 1879576);
  if (!*(a1 + 1879576))
  {
    return 1;
  }

  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = (a1 + 1888048);
  v12 = a1 + 1888056;
  v124 = a1 + 24;
  v114 = a1 + 1888592;
  v115 = a1 + 1888328;
  v116 = a3 + 17520;
  v113 = vdupq_n_s64(0x40F86A0000000000uLL);
  v122 = (a1 + 1888048);
  v125 = a1 + 1888056;
  v117 = (a1 + 1879576);
  while (1)
  {
    if (*(v12 + 8 * v9) == 0.0)
    {
      goto LABEL_145;
    }

    v156 = 0;
    memset(v155, 0, sizeof(v155));
    v154 = 0;
    memset(v153, 0, sizeof(v153));
    v152 = *(v3 + 2);
    v10 |= v11[486] == 3;
    v13 = v124 + 117472 * v9;
    v14 = KF_ApplySingleMeas(v13);
    v15 = v14;
    v16 = v11[486];
    if (v16 == 3)
    {
      if (v14)
      {
        v12 = v125;
        if (*(v3 + 2) != 4)
        {
          goto LABEL_121;
        }

        goto LABEL_119;
      }

      Shift_Left_Vec(*v4, 32, v4 + 474550, 0x20, v4 + 474550);
      v207 = 0;
      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      v191 = 0u;
      v192 = 0u;
      Diff_Vec(32, v4 + 474550, 0x20, &v191);
      v23 = Max_Vec(32, &v191, 0);
      v190 = 0;
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v24 = *(v4 + 474550) - 4;
      v174 = 0u;
      v175 = 0u;
      Copy_SubMat_from_Mat(1.0, 32, v4 + 474550, v24, 0, 4, 1, 32, &v174);
      v173 = 0;
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      Diff_Vec(32, &v174, 0x20, &v157);
      v25 = Max_Vec(32, &v157, 0);
      if (v23 > 60.0)
      {
        v30 = v124 + 117472 * v9;
        v11 = v122;
        v27 = v124;
        if (v25 <= 60.0)
        {
          v42 = v124 + 117472 * v122[67];
          v43 = *v4 + 15.0;
          Set_Mat_Const(0x20, 1u, 0x20, (v42 + 67384), 10.0);
          *(v42 + 67648) = v43;
          v11 = v122;
          KF_softResetCmd(v124 + 117472 * v122[67], 0, 10.0);
          v44 = g_FPE_LogSeverity;
          if ((g_FPE_LogSeverity & 4) != 0)
          {
            v45 = mach_continuous_time();
            if (g_TCU)
            {
              v46 = *(g_TCU + 8);
            }

            else
            {
              v46 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f KFP requests Soft Reset (AllStates) during RUN mode, time=%f", "KFP_UpdateBankState", 617, (*&g_MacClockTicksToMsRelation * v45), v46, *v4);
            v44 = g_FPE_LogSeverity;
          }

          if ((v44 & 0x200) != 0)
          {
            LC_LOG_NMEA_GENERIC("%s,CCHA,%d", "$PFPEX", 3);
          }

          v56 = (v124 + 117472 * v122[67]);
          v56[23] = 0;
          v56[24] = 0;
          v56[22] = 0;
          KF_softResetCmd(v56, 3, 0.0);
        }

        else
        {
          v31 = v122[67];
          v32 = *v4 - *(v124 + 117472 * v31 + 48744);
          if (v32 < 0.0)
          {
            v32 = -v32;
          }

          if (v32 <= 80.0)
          {
            v49 = (v124 + 117472 * v31);
            v49[22] = 0;
            v49[23] = 0;
            v49[24] = 0;
            KF_softResetCmd(v49, 3, 0.0);
            v50 = v124 + 117472 * v122[67];
            v51 = *v4;
            *(v50 + 67560) = v113;
            *(v50 + 67576) = 0x40F86A0000000000;
            *(v50 + 67648) = v51 + 30.0;
            *(v50 + 48744) = v51;
            v52 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 4) != 0)
            {
              v53 = mach_continuous_time();
              if (g_TCU)
              {
                v54 = *(g_TCU + 8);
              }

              else
              {
                v54 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f KFP requests Soft Reset (Unmount) during RUN mode, time=%f", "KFP_UpdateBankState", 651, (*&g_MacClockTicksToMsRelation * v53), v54, *v4);
              v52 = g_FPE_LogSeverity;
            }

            if ((v52 & 0x200) != 0)
            {
              v55 = 4;
              goto LABEL_56;
            }
          }

          else if ((g_FPE_LogSeverity & 4) != 0)
          {
            v33 = mach_continuous_time();
            if (g_TCU)
            {
              v34 = *(g_TCU + 8);
            }

            else
            {
              v34 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f KFP Divergence detected during run, time=%f", "KFP_UpdateBankState", 659, (*&g_MacClockTicksToMsRelation * v33), v34, *v4);
          }
        }
      }

      else
      {
        v26 = g_FPE_LogSeverity;
        v11 = v122;
        v27 = v124;
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          v28 = mach_continuous_time();
          if (g_TCU)
          {
            v29 = *(g_TCU + 8);
          }

          else
          {
            v29 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f KFP requests Internal Reset during RUN mode, time=%f", "KFP_UpdateBankState", 600, (*&g_MacClockTicksToMsRelation * v28), v29, *v4);
          v26 = g_FPE_LogSeverity;
        }

        v30 = v124 + 117472 * v9;
        if ((v26 & 0x200) != 0)
        {
          v55 = 2;
LABEL_56:
          LC_LOG_NMEA_GENERIC("%s,CCHA,%d", "$PFPEX", v55);
        }
      }

      KF_softResetCmd(v27 + 117472 * v11[67], 0, 10.0);
      CCH_initStates((v27 + 117472 * v11[67] + 48760));
      v57 = (v27 + 117472 * v11[67] + 34376);
      *v57 = 0u;
      v57[1] = 0u;
      v57[2] = 0u;
      v57[3] = 0u;
      v57[4] = 0u;
      v57[5] = 0u;
      v57[6] = 0u;
      v57[7] = 0u;
      v57[8] = 0u;
      v57[9] = 0u;
      v57[10] = 0u;
      *(v57 + 169) = 0u;
      v13 = v30;
      if (v23 <= 60.0)
      {
        return 0;
      }

      goto LABEL_88;
    }

    if (v16 == 2)
    {
      break;
    }

LABEL_89:
    if (*(v3 + 2) != 4)
    {
      v12 = v125;
      goto LABEL_120;
    }

    v12 = v125;
    if (v16 == 2 && (g_FPE_LogSeverity & 8) != 0)
    {
      v72 = mach_continuous_time();
      v73 = g_TCU ? *(g_TCU + 8) : 0.0;
      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Attitude_State[deg] for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_runMeas", 755, (*&g_MacClockTicksToMsRelation * v72), v73, v9, *(v13 + 17736), *(v13 + 17744), *(v13 + 17752));
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v74 = mach_continuous_time();
        v75 = g_TCU ? *(g_TCU + 8) : 0.0;
        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Attitude_Rate_State[deg/s]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_runMeas", 762, (*&g_MacClockTicksToMsRelation * v74), v75, v9, *(v13 + 17768), *(v13 + 17776), *(v13 + 17784));
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v76 = mach_continuous_time();
          v77 = g_TCU ? *(g_TCU + 8) : 0.0;
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CCH_Values_And_Lever_Arm: for Filter Index %d  =  {%lf, %lf}", "KFP_runMeas", 768, (*&g_MacClockTicksToMsRelation * v76), v77, v9, *(v13 + 67376), *(v13 + 17720));
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v78 = mach_continuous_time();
            v79 = g_TCU ? *(g_TCU + 8) : 0.0;
            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Accel_Bias[m/samp_period^2]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_runMeas", 775, (*&g_MacClockTicksToMsRelation * v78), v79, v9, *(v13 + 17088), *(v13 + 17096), *(v13 + 17104));
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v80 = mach_continuous_time();
              if (g_TCU)
              {
                v81 = *(g_TCU + 8);
              }

              else
              {
                v81 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Gyro_Bias[deg/samp_period]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_runMeas", 782, (*&g_MacClockTicksToMsRelation * v80), v81, v9, *(v13 + 17120) * 57.2957795, *(v13 + 17128) * 57.2957795, *(v13 + 17136) * 57.2957795);
            }
          }
        }
      }
    }

LABEL_119:
    *(v13 + 117464) = *v3;
    v16 = v11[486];
LABEL_120:
    if ((v16 & 0xFFFFFFFE) == 2)
    {
LABEL_121:
      v82 = v11[67];
      if ((v82 & 0x80000000) == 0 && v9 == v82 && v152 == 3 && *(v8 + 17512))
      {
        v120 = v10;
        v121 = v9;
        v83 = 0;
        v84 = 0;
        v131 = (v13 + 17008);
        v130 = (v13 + 16944);
        v129 = v13 + 8;
        v148 = v148 & 0xFFFFFFFF00000000 | 3;
        v147 = v147 & 0xFFFFFFFF00000000 | 3;
        v145 = v145 & 0xFFFFFFFF00000000 | 3;
        v146 = v146 & 0xFFFFFFFF00000000 | 3;
        v144 = v144 & 0xFFFFFFFF00000000 | 3;
        v133 = v133 & 0xFFFFFFFF00000000 | 3;
        v134 = v134 & 0xFFFFFFFF00000000 | 3;
        v135 = v135 & 0xFFFFFFFF00000000 | 3;
        v136 = v136 & 0xFFFFFFFF00000000 | 3;
        v137 = v137 & 0xFFFFFFFF00000000 | 3;
        v138 = v138 & 0xFFFFFFFF00000000 | 3;
        v139 = v139 & 0xFFFFFFFF00000000 | 3;
        v140 = v140 & 0xFFFFFFFF00000000 | 3;
        v141 = v141 & 0xFFFFFFFF00000000 | 3;
        v142 = v142 & 0xFFFFFFFF00000000 | 3;
        v143 = v143 & 0xFFFFFFFF00000000 | 3;
        v85 = 17552;
        v86 = 17520;
        v87 = 6608;
        v88 = v116;
        v132 = v13;
        do
        {
          v191 = 0u;
          v192 = 0u;
          v174 = 0u;
          v175 = 0u;
          Set_Mat_Const(3, 1u, v148, &v191, 0.0);
          Set_Mat_Const(3, 1u, v147, &v174, 0.0);
          Sub_Mat(v146, v131, v145, (v88 + 48), v144, &v191);
          Sub_Mat(v141, v130, v137, (v88 + 80), v133, &v174);
          Transpose_Mat(v134);
          Transpose_Mat(v136);
          v150 = Dot_Vec_Vec(v139, v88, v140, &v191);
          v89 = Dot_Vec_Vec(v142, v88, v143, &v174);
          v90.f64[0] = *(v13 + 232);
          v91 = (v8 + 4 * v84);
          v92 = v91[148];
          if (((v92 - 1) & 0xFFFFFFFB) != 0)
          {
            v90.f64[0] = v90.f64[0] + *(v129 + 8 * (v92 + 27));
          }

          v93 = *(v13 + 224);
          v94 = v8 + v86;
          v95 = (v8 + v85);
          v90.f64[1] = v93;
          v96.f64[0] = v150;
          v96.f64[1] = v89;
          *(v8 + v85 + 96) = vaddq_f64(vsubq_f64(v90, *(v8 + v86 + 112)), vaddq_f64(v96, *(v8 + v85)));
          if (g_TCU)
          {
            v97 = *(v8 + 392) + *(g_TCU + 64);
          }

          else
          {
            v97 = 0.0;
          }

          v98 = v8 + 8 * v84;
          if (v97 - *(v98 + 8) > 0.5 && (g_FPE_LogSeverity & 8) != 0)
          {
            v126 = mach_continuous_time();
            if (g_TCU)
            {
              v99 = *(g_TCU + 8);
            }

            else
            {
              v99 = 0.0;
            }

            v100 = *&g_MacClockTicksToMsRelation;
            v101 = *(v98 + 8);
            v151 = v91[148];
            v128 = v91[100];
            v102 = *(v98 + 2808);
            v103 = v91[258];
            v127 = v91[258] == 0;
            if (v103 >= 0x1D)
            {
              gn_report_assertion_failure("SV_Meas_Edit_Char");
              v104 = 120;
            }

            else
            {
              v104 = dword_2997621C8[v103];
            }

            v105 = *(a3 + v83 + 8384);
            v106 = *(a3 + v87);
            v107 = *(a3 + v87) == 0;
            if (v106 >= 0x1D)
            {
              v123 = v104;
              gn_report_assertion_failure("SV_Meas_Edit_Char");
              v104 = v123;
              v108 = 120;
            }

            else
            {
              v108 = dword_2997621C8[v106];
            }

            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f SVLine  %6.1f   %6.1f   %d  %d    %6.1f %d%c    %6.1f %d%c    %6.1f    %6.1f    %6.1f    %6.1f    %6.1f    %6.1f", "KFP_runMeas", 879, (v100 * v126), v99, v97, v101, v151, v128, v102, v127, v104, v105, v107, v108, sqrt(*(a3 + v83 + 4824)), sqrt(*(a3 + v83 + 10400)), *v95, v95[12], *(v94 + 40), *(v94 + 136));
          }

          ++v84;
          v8 = a3;
          v88 += 144;
          v83 += 8;
          v87 += 4;
          v86 += 144;
          v85 += 144;
          v13 = v132;
        }

        while (v84 < *(a3 + 17512));
        v3 = a2;
        v4 = a1;
        v7 = v117;
        v9 = v121;
        v10 = v120;
        v11 = v122;
        v12 = v125;
      }
    }

LABEL_145:
    if (++v9 >= *v7)
    {
      return 1;
    }
  }

  *&v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v191 = 0u;
  Mat_Eq_Scalar(1.0, 6, v155, 6, &v191);
  *&v177 = 0;
  v175 = 0u;
  v176 = 0u;
  v174 = 0u;
  Mat_Eq_Scalar(0.0, 6, v155, 6, &v174);
  if (*v4 - v4[1] > 10.0)
  {
    v17 = v174;
    if (v174)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0.0;
      do
      {
        v21 = v18;
        v22 = DWORD1(v174);
        if (DWORD1(v174))
        {
          do
          {
            v20 = v20 + *(&v174 + ++v21);
            --v22;
          }

          while (v22);
        }

        ++v19;
        v18 += DWORD1(v174);
      }

      while (v19 != v174);
      v17 = v20 > 0.0;
    }

    if (v191)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0.0;
      do
      {
        v38 = v35;
        v39 = DWORD1(v191);
        if (DWORD1(v191))
        {
          do
          {
            v37 = v37 + *(&v191 + ++v38);
            --v39;
          }

          while (v39);
        }

        ++v36;
        v35 += DWORD1(v191);
      }

      while (v36 != v191);
      v17 |= v37 > 0.0;
    }

    if (v152 & 0xFFFFFFF7) == 1 && (v17)
    {
      *&v160 = 0;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v210 = 0;
      memset(v209, 0, sizeof(v209));
      memset(v208, 0, 56);
      if (v152 == 1)
      {
        v41 = 10.0;
        v40 = 1.0;
      }

      else if (v152 == 9)
      {
        v40 = 10.0;
        v41 = 100.0;
      }

      else
      {
        if (g_FPE_LogSeverity)
        {
          v47 = mach_continuous_time();
          if (g_TCU)
          {
            v48 = *(g_TCU + 8);
          }

          else
          {
            v48 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f meas type input is not legal in this context", "KFP_UpdateBankState", 539, (*&g_MacClockTicksToMsRelation * v47), v48);
        }

        g_FPE_AssertFlag = 1;
        v40 = 0.0;
        v41 = 0.0;
      }

      Min_Mat_Scalar(v41, 6, v153, 6, &v157);
      Max_Mat_Scalar(-v41, 6, &v157, 6, v209);
      ElMult_Mat_Mat(6, v209, 6, v209, 6, v208);
      if (LODWORD(v208[0]))
      {
        v58 = 0;
        v59 = 0;
        v60 = 0.0;
        do
        {
          v61 = v58;
          v62 = HIDWORD(v208[0]);
          if (HIDWORD(v208[0]))
          {
            do
            {
              v60 = v60 + *&v208[++v61];
              --v62;
            }

            while (v62);
          }

          ++v59;
          v58 += HIDWORD(v208[0]);
        }

        while (v59 != LODWORD(v208[0]));
      }

      else
      {
        v60 = 0.0;
      }

      *(v115 + 8 * v9) = *(v115 + 8 * v9) - v40 * v60;
      *(v114 + 8 * v9) = *(v114 + 8 * v9) + 1.0;
    }
  }

  v11 = v122;
  if ((v15 & 1) == 0)
  {
    *(v125 + 8 * v9) = 0;
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v63 = mach_continuous_time();
      if (g_TCU)
      {
        v64 = *(g_TCU + 8);
      }

      else
      {
        v64 = 0.0;
      }

      v65 = *v122;
      if (*v122)
      {
        v66 = 0;
        v67 = 0;
        v68 = v122[1];
        v69 = 0.0;
        do
        {
          v70 = v66;
          v71 = v122[1];
          if (v68)
          {
            do
            {
              v69 = v69 + *(v125 + 8 * v70++);
              --v71;
            }

            while (v71);
          }

          ++v67;
          v66 += v68;
        }

        while (v67 != v65);
        v65 = v69;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Killing KF#%d by CCH (%d remains)", "KFP_UpdateBankState", 562, (*&g_MacClockTicksToMsRelation * v63), v64, v9, v65);
    }
  }

  if (Any_Mat_Greater_Than(0.0, 32, v122))
  {
LABEL_88:
    v16 = v11[486];
    goto LABEL_89;
  }

  v110 = g_FPE_LogSeverity;
  if ((g_FPE_LogSeverity & 4) != 0)
  {
    v111 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v112 = *(g_TCU + 8);
    }

    else
    {
      v112 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f KFP requests Internal Reset during CVG mode, because no kalmans left, time=%f", "KFP_UpdateBankState", 572, v111, v112, *v4);
    v110 = g_FPE_LogSeverity;
  }

  if ((v110 & 0x200) != 0)
  {
    LC_LOG_NMEA_GENERIC("%s,CCHA,%d", "$PFPEX", 1);
  }

  return 0;
}

void KFP_createOutputFromKFPool(uint64_t a1, int *a2, double a3)
{
  v69[33] = *MEMORY[0x29EDCA608];
  v6 = (a1 + 1898472);
  v7 = (a1 + 1888048);
  v8 = *(a1 + 1889992);
  if (v8 == 4 || v8 == 2)
  {
    v10 = Any_Mat_Greater_Than(1000.0, 32, (a1 + 1888584));
    v62 = 0;
    memset(v69, 0, 264);
    v11 = 0.0;
    Mat_Greater_than_Scalar(0.0, 32, (a1 + 1888584), 0x20, v69);
    ElMult_Mat_Mat(32, v7, 32, (a1 + 1888584), 0x20, v69);
    v68 = 0;
    memset(v67, 0, sizeof(v67));
    ElDiv_Mat_Mat_Cond(32, (a1 + 1888320), 32, (a1 + 1888584), 32, v69, 0x20, v67);
    if (!LODWORD(v69[0]))
    {
      goto LABEL_12;
    }

    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v12;
      v15 = HIDWORD(v69[0]);
      if (HIDWORD(v69[0]))
      {
        do
        {
          v11 = v11 + *&v69[++v14];
          --v15;
        }

        while (v15);
      }

      ++v13;
      v12 += HIDWORD(v69[0]);
    }

    while (v13 != LODWORD(v69[0]));
    if (v11 != 0.0)
    {
      Max_Vec_Cond(32, v67, 32, v69, &v62);
      v18 = v17;
      v19 = v7[67];
      v20 = v62;
      if ((v19 & 0x80000000) == 0 && v19 != v62 && (g_FPE_LogSeverity & 8) != 0)
      {
        v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v22 = *(g_TCU + 8);
        }

        else
        {
          v22 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Chosen filter changed from %d to %d", "KFP_UpdateChosenOne", 962, v21, v22, v7[67], v62);
        v20 = v62;
      }

      v7[67] = v20;
      memset(v66, 0, 264);
      Mat_Greater_than_Scalar(1000.0, 32, (a1 + 1888584), 0x20, v66);
      v23 = v66[0];
      if (LODWORD(v66[0]))
      {
        v24 = 0;
        v25 = 0;
        v26 = 0.0;
        do
        {
          v27 = v24;
          v28 = HIDWORD(v66[0]);
          if (HIDWORD(v66[0]))
          {
            do
            {
              v26 = v26 + *&v66[++v27];
              --v28;
            }

            while (v28);
          }

          ++v25;
          v24 += HIDWORD(v66[0]);
        }

        while (v25 != LODWORD(v66[0]));
        v23 = v26 != 0;
      }

      memset(v65, 0, 264);
      if (*a1 - *(a1 + 8) <= 60.0 || v23 == 0)
      {
        Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, v65, 0.0);
      }

      else
      {
        v64 = 0;
        if (v10)
        {
          v30 = -2.22e-16;
        }

        else
        {
          v30 = 1.0;
        }

        memset(v63, 0, sizeof(v63));
        Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, v63, v18);
        Sub_Mat(32, v63, 32, v67, 0x20, v63);
        Mat_Greater_than_Scalar(v30, 32, v63, 0x20, v63);
        ElMult_Mat_Mat(32, v63, 32, v69, 0x20, v63);
        Copy_Mat(32, v63, 0x20, v65);
        v31 = v7[67];
        if (v31 < 0 || v31 >= *(a1 + 1879576))
        {
          if (g_FPE_LogSeverity)
          {
            v32 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v33 = *(g_TCU + 8);
            }

            else
            {
              v33 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f chosenOne = %d is not legal. prevent memory corruption!", "KFP_UpdateChosenOne", 1001, v32, v33, v7[67]);
          }

          v31 = 0;
          g_FPE_AssertFlag = 1;
          v7[67] = 0;
        }

        v65[v31 + 1] = 0;
      }

      Set_Mat_Const_Cond(0.0, 32, v65, 0x20, v7);
    }

    else
    {
LABEL_12:
      First_NonZero_in_Vector_Starting_At = Find_First_NonZero_in_Vector_Starting_At(32, v7, 0);
      v7[67] = First_NonZero_in_Vector_Starting_At < 0 ? 0 : First_NonZero_in_Vector_Starting_At;
    }

    v34 = *v7;
    if (*v7)
    {
      v35 = 0;
      v36 = 0;
      v37 = v7[1];
      v38 = 0.0;
      do
      {
        v39 = v35;
        v40 = v7[1];
        if (v37)
        {
          do
          {
            v38 = v38 + *(a1 + 1888056 + 8 * v39++);
            --v40;
          }

          while (v40);
        }

        ++v36;
        v35 += v37;
      }

      while (v36 != v34);
      v34 = v38;
    }

    v7[66] = v34;
    if (v10)
    {
      *(a1 + 117472 * v7[67] + 34392) = 0;
      if (v34 < 0xA)
      {
        if (v34 == 1)
        {
          v7[486] = 3;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            mach_continuous_time();
            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f KF_SM: Finished Convergence. Chosen filter %d");
          }
        }
      }

      else
      {
        v41 = a1 + 1888056;
        while (1)
        {
          Min_Vec_Cond(32, v67, 32, v7, &v62);
          *(v41 + 8 * v62) = 0;
          if (!*v7)
          {
            break;
          }

          v42 = 0;
          v43 = 0;
          v44 = v7[1];
          v45 = 0.0;
          do
          {
            v46 = v42;
            v47 = v7[1];
            if (v44)
            {
              do
              {
                v45 = v45 + *(v41 + 8 * v46++);
                --v47;
              }

              while (v47);
            }

            ++v43;
            v42 += v44;
          }

          while (v43 != *v7);
          v7[66] = v45;
          if (v45 <= 9)
          {
            goto LABEL_67;
          }
        }

        v7[66] = 0;
LABEL_67:
        v7[486] = 2;
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          mach_continuous_time();
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f KF_SM: Reduced number of filters to %d. Chosen filter: %d");
        }
      }

      *(v6 + 4) = *a1;
    }
  }

  bzero(a2, 0x23E8uLL);
  if ((v7[486] - 2) > 2)
  {
    Set_Mat_Const(1, 3u, 3, a2, NAN);
    Set_Mat_Const(1, 3u, 3, a2 + 8, NAN);
    *(a2 + 10) = 0x7FF8000000000000;
    Set_Mat_Const(3, 3u, 9, a2 + 2154, NAN);
    Set_Mat_Const(3, 3u, 9, a2 + 22, NAN);
    Set_Mat_Const(3, 3u, 9, a2 + 42, NAN);
    Set_Mat_Const(3, 3u, 9, a2 + 2114, NAN);
    Set_Mat_Const(3, 3u, 9, a2 + 2134, NAN);
    Set_Mat_Const(5, 5u, 0x24, a2 + 2174, NAN);
    Set_Mat_Const(5, 1u, 6, a2 + 2248, NAN);
    Set_Mat_Const(0x20, 0x20u, 0x400, a2 + 62, NAN);
    v48 = 0;
    v56 = 0;
    v55 = -1;
  }

  else
  {
    KF_prepOutput(a1 + 117472 * v7[67] + 24, a2, a3);
    v48 = *v7;
    if (*v7)
    {
      v49 = 0;
      v50 = 0;
      v51 = v7[1];
      v52 = 0.0;
      do
      {
        v53 = v49;
        v54 = v7[1];
        if (v51)
        {
          do
          {
            v52 = v52 + *(a1 + 1888056 + 8 * v53++);
            --v54;
          }

          while (v54);
        }

        ++v50;
        v49 += v51;
      }

      while (v50 != v48);
      v48 = v52;
    }

    v55 = v7[67];
    v56 = v48 < 0xB;
  }

  a2[2262] = v48;
  a2[2263] = v55;
  *(a2 + 8452) = v56;
  v57 = *v6 ^ 1;
  *(a2 + 8453) = v57;
  v58 = *(a2 + 8448);
  v59 = v56 & v57;
  if (v58 != 1)
  {
    v59 = 0;
  }

  *(a2 + 8448) = v59;
  if (v58 != v59 && (g_FPE_LogSeverity & 8) != 0)
  {
    v60 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v61 = *(g_TCU + 8);
    }

    else
    {
      v61 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Valid Out = %d, [pos,head,extrp,mount,filt,outage] = [%d,%d,%d,%d,%d,%d]", "KFP_createOutputFromKFPool", 1136, v60, v61, *(a2 + 8448), *(a2 + 8449), *(a2 + 8450), *(a2 + 8451), *(a2 + 8454), *(a2 + 8452), *(a2 + 8453));
  }
}

uint64_t KFP_run(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a3)
  {
    return 1;
  }

  v8 = (a1 + 1898468);
  v9 = (a1 + 1888048);
  if (a3 != 1)
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f numOfMeas is greater than 1 (%d), which is unsupported", "KFP_run", 1166, v10, v11, a3);
    }

    g_FPE_AssertFlag = 1;
  }

  KFP_printMeas(a2);
  v12 = *(a2 + 8);
  if (v12 == 2)
  {
    v13 = *(v8 + 5);
    v14 = -1.0;
    v15 = -1.0;
    if (v13 >= 0.0)
    {
      v15 = *a1 - v13;
      if (v15 >= 99.0)
      {
        v15 = 99.0;
      }
    }

    v16 = *(v8 + 7);
    if (v16 >= 0.0)
    {
      v14 = *a1 - v16;
      if (v14 >= 99.0)
      {
        v14 = 99.0;
      }
    }

    v17 = *(v8 + 9);
    if (v17 >= 0.0)
    {
      v19 = *a1 - v17;
      if (v19 >= 99.0)
      {
        v19 = 99.0;
      }
    }

    else
    {
      v18 = v9[67];
      v19 = -1.0;
      if ((v18 & 0x80000000) == 0)
      {
        v20 = *(a1 + 8 * v18 + 1888592);
LABEL_22:
        if ((g_FPE_LogSeverity & 0x200) != 0)
        {
          v21 = *v9;
          if (*v9)
          {
            v22 = 0;
            v23 = 0;
            v24 = v9[1];
            v25 = 0.0;
            do
            {
              v26 = v22;
              v27 = v9[1];
              if (v24)
              {
                do
                {
                  v25 = v25 + *(a1 + 1888056 + 8 * v26++);
                  --v27;
                }

                while (v27);
              }

              ++v23;
              v22 += v24;
            }

            while (v23 != v21);
            v21 = v25;
          }

          LC_LOG_NMEA_GENERIC("%s,KFB,%.3f,%.1f,%.1f,%.1f,%.1f,%d,%d", "$PFPEX", *a1, v15, v14, v20, v19, v9[67], v21);
        }

        *a1 = *a2;
        *(v8 + 16) = *(a2 + 208);
        v12 = *(a2 + 8);
        goto LABEL_31;
      }
    }

    v20 = -1.0;
    goto LABEL_22;
  }

LABEL_31:
  if (v12 != 3)
  {
    goto LABEL_81;
  }

  v28 = *(a2 + 16);
  v29 = *(a1 + 1879576);
  if (v29)
  {
    v30 = (a1 + 40560);
    v31 = (v9 + 2);
    do
    {
      if (*v31 != 0.0)
      {
        *v30 = v28;
      }

      v30 += 29368;
      ++v31;
      --v29;
    }

    while (v29);
  }

  v32 = v8[3];
  if (v28)
  {
    if (v32 && (g_FPE_LogSeverity & 8) != 0)
    {
      v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v34 = *(g_TCU + 8);
      }

      else
      {
        v34 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f SvOutageSM: end of outage after %u sec", "KFP_runSVOSM", 1552, v33, v34, v8[3]);
    }

    v35 = 0;
  }

  else
  {
    v35 = v32 + 1;
  }

  v8[3] = v35;
  v36 = *v8;
  if (*v8 == 2)
  {
    if (*(v8 + 16) != 1 || v35)
    {
      v8[2] = 0;
      v40 = g_FPE_LogSeverity;
    }

    else
    {
      v39 = v8[2] + 1;
      v8[2] = v39;
      v40 = g_FPE_LogSeverity;
      if (v39 >= 5)
      {
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v41 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v42 = *(g_TCU + 8);
          }

          else
          {
            v42 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f SvOutageSM: validCount=%u - all ok now", "KFP_runSVOSM", 1598, v41, v42, v8[2]);
        }

        goto LABEL_79;
      }
    }

    if ((v40 & 8) != 0)
    {
      v45 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v46 = *(g_TCU + 8);
      }

      else
      {
        v46 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f SvOutageSM: validCount=%u - waiting", "KFP_runSVOSM", 1603, v45, v46, v8[2]);
    }

    goto LABEL_80;
  }

  if (v36 != 1)
  {
    if (v36)
    {
      if (g_FPE_LogSeverity)
      {
        v43 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v44 = *(g_TCU + 8);
        }

        else
        {
          v44 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f SV Outage State %u is not supported!", "KFP_runSVOSM", 1608, v43, v44, *v8);
      }

      g_FPE_AssertFlag = 1;
    }

    else if (v35)
    {
      *v8 = 1;
    }

    goto LABEL_80;
  }

  if (v35)
  {
    if (v35 >= 0x28)
    {
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v38 = *(g_TCU + 8);
        }

        else
        {
          v38 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f SvOutageSM: reached maxOutageDR - invalidate output", "KFP_runSVOSM", 1580, v37, v38);
      }

      *v8 = 2;
      v8[2] = 0;
    }

    goto LABEL_80;
  }

LABEL_79:
  *v8 = 0;
LABEL_80:
  *(v8 + 4) = *v8 == 2;
LABEL_81:
  v47 = v9[486];
  if (v47 <= 1)
  {
    if (!v47)
    {
      v48 = 1;
      if (*(a1 + 16) == 1)
      {
        v9[486] = 1;
        KFP_runLeveler(a1);
        *(v8 + 5) = *a2;
      }

      return v48;
    }

    if (v47 == 1)
    {
      KFP_runLeveler(a1);
      return 1;
    }

LABEL_98:
    if (g_FPE_LogSeverity)
    {
      v50 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v51 = *(g_TCU + 8);
      }

      else
      {
        v51 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f KF BANK wrong state", "KFP_run", 1217, v50, v51);
    }

    v48 = 1;
    g_FPE_AssertFlag = 1;
    return v48;
  }

  if (v47 != 2 && v47 != 3)
  {
    if (v47 == 4)
    {
      if (*(a2 + 8) != 1)
      {
        v48 = KFP_runMeas(a1, a2, a4);
        if (*(a2 + 8) == 4)
        {
          v9[486] = 2;
        }

        return v48;
      }

      return 1;
    }

    goto LABEL_98;
  }

  return KFP_runMeas(a1, a2, a4);
}

const char *KFP_init(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v16[0] = 0u;
  v4 = a1 + 1898464;
  v17 = 0;
  v5 = a1 + 1888312;
  memset(&v16[2], 0, 176);
  DWORD2(v16[0]) = 12;
  v16[1] = 0x4088480000000000uLL;
  KFP_printMeas(v16);
  if ((*v4 & 1) == 0)
  {
    *v4 = 1;
    *(a1 + 16) = *a2;
    Copy_Mat(1024, (a2 + 8936), 0x400, (a1 + 1890000));
    *(a1 + 1879576) = *(a2 + 4);
    Copy_Mat(1024, (a2 + 8), 0x400, (a1 + 1879584));
    Copy_Mat(32, (a2 + 8208), 0x20, (a1 + 1887784));
    Mult_Mat_scalar(0.0174532925, 32, (a1 + 1887784), 0x20, (a1 + 1887784));
  }

  *(v5 + 1680) = 0;
  *a1 = vdupq_n_s64(0xC0C3878000000000);
  Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, (a1 + 1888048), 1.0);
  Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, (a1 + 1888320), 0.0);
  Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, (a1 + 1888584), 0.0);
  Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, (a1 + 1888848), 0.0);
  Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, (a1 + 1889112), 0.037);
  *v5 = 0xFFFFFFFF00000010;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v4 + 24) = _Q0;
  *(v4 + 40) = 0xBFF0000000000000;
  LVLR_Init(a1 + 1889376);
  if (*(a1 + 1879576))
  {
    v11 = 0;
    v12 = a1 + 24;
    do
    {
      KF_initializeKalmanFilterCarMode(v12, a2 + 8480, v11++);
      v12 += 117472;
    }

    while (v11 < *(a1 + 1879576));
  }

  result = Set_Mat_Const(6, 1u, 0x20, (a1 + 1898200), -9999.0);
  *(v4 + 4) = 0;
  *(v4 + 8) = 0;
  *(a1 + 1898476) = 0;
  *(a1 + 1898484) = 0;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v15 = *(g_TCU + 8);
    }

    else
    {
      v15 = 0.0;
    }

    return LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f init KFB", "KFP_init", 1290, v14, v15);
  }

  return result;
}

void KFP_setDefaultConfig(int *a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = a1 + 2048;
  bzero(a1, 0x42F0uLL);
  v26[0] = xmmword_299762120;
  v26[1] = unk_299762130;
  v26[2] = xmmword_299762140;
  v27 = 0x3F50624DD2F1A9FCLL;
  v24[0] = xmmword_299762158;
  v24[1] = unk_299762168;
  v24[2] = xmmword_299762178;
  v25 = 0x3E45798EE2308C3ALL;
  v22[0] = xmmword_299762190;
  v22[1] = unk_2997621A0;
  v23 = 0x3F947AE147AE147BLL;
  v22[2] = xmmword_2997621B0;
  Copy_Mat(6, v26, 6, a1 + 2120);
  Copy_Mat(6, v24, 6, a1 + 2134);
  Copy_Mat(6, v22, 6, a1 + 2148);
  Set_Mat_Const(0x20, 1u, 0x20, a1 + 2168, 0.0);
  *(a1 + 1107) = 0x3FF0000000000000;
  a1[2162] = 32;
  *(v2 + 460) = 0;
  *(a1 + 8653) = 16843009;
  *(v2 + 465) = 0;
  *(a1 + 1083) = 0x4024000000000000;
  *a1 = 1;
  a1[1] = 16;
  *(a1 + 1059) = 0x4014000000000000;
  Set_Mat_Size(0x20, a1 + 2052, 1, 16);
  v3 = 0;
  v4 = 0x100000000;
  v18 = vdupq_n_s64(0x4036800000000000uLL);
  v17 = vdupq_n_s64(0x4076800000000000uLL);
  do
  {
    v5.i64[0] = v4.u32[0];
    v5.i64[1] = v4.u32[1];
    __x = vmlaq_f64(0, v18, vcvtq_f64_u64(v5));
    v20 = fmod(__x.f64[1], 360.0);
    v6.f64[0] = fmod(__x.f64[0], 360.0);
    v6.f64[1] = v20;
    *&a1[v3 + 2054] = vbslq_s8(vcltzq_f64(v6), vaddq_f64(v6, v17), v6);
    v4 = vadd_s32(v4, 0x200000002);
    v3 += 4;
  }

  while (v3 != 32);
  Set_Mat_Size(0x400, a1 + 2, 32, 16);
  for (i = 0; i != 16; ++i)
  {
    Copy_SubMat_to_Mat(1.0, 32, a1 + 2168, 0, i, 1024, a1 + 2);
  }

  memset(v21, 0, 264);
  v8 = 0.0;
  Set_Mat_Const(1, 0x20u, 0x20, v21, 0.0);
  __asm { FMOV            V0.2D, #0.25 }

  *(v21 + 8) = _Q0;
  *(&v21[1] + 8) = xmmword_2997620D0;
  __asm { FMOV            V1.2D, #2.25 }

  *(&v21[2] + 8) = _Q1;
  *(&v21[3] + 8) = vdupq_n_s64(0x4099000000000000uLL);
  *(&v21[4] + 8) = xmmword_2997620E0;
  *(&v21[5] + 8) = _Q0;
  *(&v21[6] + 8) = vdupq_n_s64(0x3F7F5C28F5C28F5BuLL);
  *(&v21[7] + 8) = xmmword_2997620F0;
  *(&v21[8] + 8) = *(&v21[3] + 8);
  *(&v21[9] + 8) = _Q0;
  *(&v21[10] + 8) = xmmword_299762100;
  __asm { FMOV            V0.2D, #10.0 }

  *(&v21[11] + 8) = _Q0;
  *(&v21[12] + 8) = _Q1;
  *(&v21[13] + 8) = xmmword_299762110;
  *(&v21[14] + 8) = vdupq_n_s64(0x4059000000000000uLL);
  *(&v21[15] + 8) = *(&v21[14] + 8);
  Set_Mat_Const(0x20, 0x20u, 0x400, a1 + 2234, 0.0);
  Copy_Vec_to_Mat_diag(32, v21, 0, 0, 1, 1, 1024, a1 + 2234);
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v8 = *(g_TCU + 8);
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f KFP_INIT_CFG:  bankSize=%d, firstYaw=%f, deltaAngle=%f, lastYaw=%f", "KFP_setDefaultConfig", 1400, v16, v8, 16, *(a1 + 1027), 22.5, *(a1 + 1042));
  }
}

uint64_t KFP_ResetStatistics(uint64_t result)
{
  v1 = result;
  v64 = *MEMORY[0x29EDCA608];
  v2 = *(result + 1888316);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = result + 24;
    v4 = result + 24 + 117472 * v2;
    v5 = *(v4 + 17192);
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    InsUtil_mat2quat(v4 + 16832, &v60);
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    InsUtil_mat2quat(v3 + 117472 * *(v1 + 1888316) + 16672, &v56);
    v54 = 0u;
    v55 = 0u;
    Copy_Mat(3, (v3 + 117472 * *(v1 + 1888316) + 16944), 3, &v54);
    v52 = 0u;
    v53 = 0u;
    Copy_SubMat_from_Mat(1.0, 32, (v3 + 117472 * *(v1 + 1888316)), 21, 0, 3, 1, 3, &v52);
    v51 = 0.0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    Set_Mat_Size(6, &v48, 6, 1);
    Copy_SubMat_to_Mat(1.0, 3, (v3 + 117472 * *(v1 + 1888316) + 17080), 0, 0, 6, &v48);
    Copy_SubMat_to_Mat(1.0, 3, (v3 + 117472 * *(v1 + 1888316) + 17112), 3, 0, 6, &v48);
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    Copy_SubMat_from_Mat(1.0, 32, (v3 + 117472 * *(v1 + 1888316)), 27, 0, 4, 1, 6, &v44);
    if ((g_FPE_LogSeverity & 0x200) != 0)
    {
      LC_LOG_NMEA_GENERIC("%s,KFX,%.3f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.1f,%.1f,%.1f,%.2f,%.2f,%.2f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.1f,%.1f,%.1f,%.1f", "$PFPEX", v5, *(&v60 + 1), *&v61, *(&v61 + 1), *&v62, *(&v56 + 1), *&v57, *(&v57 + 1), *&v58, *(&v54 + 1), *&v55, *(&v55 + 1), *(&v52 + 1), *&v53, *(&v53 + 1), *(&v48 + 1), *&v49, *(&v49 + 1), *&v50, *(&v50 + 1), v51, *(&v44 + 1), *&v45, *(&v45 + 1), *&v46);
    }

    memset(v43, 0, sizeof(v43));
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 0, 0, 3, 3, 9, v43);
    v42 = 0.0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    CovMatToVec(v43, &v39, 1.0);
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 3, 3, 3, 3, 9, v43);
    v38 = 0.0;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    CovMatToVec(v43, &v35, 1.0);
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 6, 6, 3, 3, 9, v43);
    v34 = 0.0;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    CovMatToVec(v43, &v31, 1.0);
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 9, 9, 3, 3, 9, v43);
    v30 = 0.0;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    CovMatToVec(v43, &v27, 100.0);
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 12, 12, 3, 3, 9, v43);
    v26 = 0.0;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    CovMatToVec(v43, &v23, 1000.0);
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 21, 21, 3, 3, 9, v43);
    v22 = 0.0;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    CovMatToVec(v43, &v19, 1.0);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    Copy_Mat_diag_to_Vec(1024, (v3 + 117472 * *(v1 + 1888316) + 264), 0x1Bu, 4, 6, &v15);
    Sqrt_Mat(6, &v15, 6, &v15);
    if ((g_FPE_LogSeverity & 0x200) != 0)
    {
      v14 = *(v4 + 117352);
      v6 = *(v4 + 117360);
      v7 = *(v4 + 117376);
      v8 = *(v4 + 117384);
      v9 = *(v4 + 117328);
      v10 = *(v4 + 117336);
      LC_LOG_NMEA_GENERIC("%s,KFP1,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f", "$PFPEX", *(&v31 + 1), *&v32, *(&v32 + 1), *&v33, *(&v33 + 1), v34, *(&v35 + 1), *&v36, *(&v36 + 1), *&v37, *(&v37 + 1), v38, *(&v39 + 1), *&v40, *(&v40 + 1), *&v41, *(&v41 + 1), v42, *(&v19 + 1), *&v20, *(&v20 + 1), *&v21, *(&v21 + 1), v22);
      if ((g_FPE_LogSeverity & 0x200) != 0)
      {
        LC_LOG_NMEA_GENERIC("%s,KFP2,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.3f,%.2f,%.2f,%.2f,%d,%d,%d", "$PFPEX", *(&v27 + 1), *&v28, *(&v28 + 1), *&v29, *(&v29 + 1), v30, *(&v23 + 1), *&v24, *(&v24 + 1), *&v25, *(&v25 + 1), v26, *(&v15 + 1), *&v16, *(&v16 + 1), *&v17, v6 + v14, v8 + v7, v10 + v9);
      }
    }

    result = CCH_logLastFeatures((v3 + 117472 * *(v1 + 1888316) + 48760));
  }

  v11 = *(v1 + 1879576);
  if (v11)
  {
    v12 = 0;
    v13 = v1 + 24;
    do
    {
      if (*(v1 + 1888056 + 8 * v12) != 0.0)
      {
        result = KF_ResetStatistics(v13);
        v11 = *(v1 + 1879576);
      }

      ++v12;
      v13 += 117472;
    }

    while (v12 < v11);
  }

  return result;
}

uint64_t Decode_BDS_2nd_Health_SF(uint64_t result, unsigned __int16 *a2)
{
  v2 = *(result + 4);
  *a2 = ((*result & 3) << 7) | (v2 >> 15) & 0x7F;
  a2[1] = (v2 >> 6) & 0x1FF;
  v3 = 8 * (v2 & 0x3F);
  v4 = *(result + 8);
  v5 = *(result + 12);
  a2[2] = v3 & 0xFFF8 | (v4 >> 10) & 7;
  a2[3] = (v4 >> 10) & 0x1FF;
  a2[4] = (v4 >> 1) & 0x1FF;
  a2[5] = ((v4 & 1) << 8) | (v5 >> 14);
  a2[6] = (v5 >> 5) & 0x1FF;
  v6 = 16 * (v5 & 0x1F);
  v7 = *(result + 16);
  v8 = *(result + 20);
  a2[7] = v6 & 0xFFF0 | (v7 >> 18) & 0xF;
  a2[8] = (v7 >> 9) & 0x1FF;
  a2[9] = v7 & 0x1FF;
  a2[10] = (v8 >> 13) & 0x1FF;
  return result;
}

uint64_t lsim02_22HandleGpsRefTimeInd(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_22HandleGpsRefTimeInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_REFTIME_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_22HandleGpsRefTimeInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSRFT,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_22HandleGpsRefTimeInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSRFT,Tow,%u,TowUnc,%u,RefDCTime,%d,Wk,%u,RCTUnc,%u,NumTowA,%u,OsTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_22HandleGpsRefTimeInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 144));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (*(a1 + 44))
  {
    v10 = 0;
    v11 = (a1 + 50);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSTOWA,SvId,%u,Spoof,%u,Alert,%u,TlmRes,%u,TlmWord,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim02_22HandleGpsRefTimeInd", *(v11 - 4), *(v11 - 3), *(v11 - 2), *(v11 - 1), *v11);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      ++v10;
      v11 += 3;
    }

    while (v10 < *(a1 + 44));
  }

  if (*(a1 + 16) == 7)
  {
    v14 = *(a1 + 24);
    v15 = *(a1 + 36);
    v16 = *(a1 + 28);
    v17 = gnssOsa_Calloc("lsim02_15SendGnmOsRefTime", 266, 1, 0x14uLL);
    if (v17)
    {
      v18 = v17;
      *(v17 + 3) = v14;
      *(v17 + 8) = v15;
      *(v17 + 9) = v16;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_REF_OS_TIME_IND =>GNM\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim02_15SendGnmOsRefTime");
        LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
      }

      AgpsSendFsmMsg(131, 128, 8604931, v18);
    }
  }

  v21 = *(a1 + 16);
  v22 = gnssOsa_Calloc("lsim02_05RefTimeInd", 301, 1, 0x90uLL);
  if (v22)
  {
    v23 = v22;
    v24 = *(a1 + 24);
    v25 = *(a1 + 40);
    v26 = *(a1 + 56);
    *(v22 + 60) = *(a1 + 72);
    *(v22 + 44) = v26;
    *(v22 + 28) = v25;
    *(v22 + 12) = v24;
    v27 = *(a1 + 88);
    v28 = *(a1 + 104);
    v29 = *(a1 + 120);
    *(v22 + 120) = *(a1 + 132);
    *(v22 + 108) = v29;
    *(v22 + 92) = v28;
    *(v22 + 76) = v27;
    *(v22 + 34) = v21;
    *(v22 + 35) = -1;
    if ((v21 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(0, 4);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_RTIME_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "lsim02_05RefTimeInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8585987, v23);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 73, "lsim02_22HandleGpsRefTimeInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
  }

  return 0;
}

uint64_t lsim02_23HandleGpsNavModelInd(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_23HandleGpsNavModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_NAVMODEL_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_23HandleGpsNavModelInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSEPH,SId,%u,NumSv,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_23HandleGpsNavModelInd", *(a1 + 12), *(a1 + 20));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:NavModelList\n");
LABEL_20:
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    goto LABEL_22;
  }

  v9 = *(a1 + 20);
  if (!*(a1 + 20))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:NumSvs\n");
    goto LABEL_20;
  }

  v10 = *(a1 + 16);
  v11 = gnssOsa_Calloc("lsim02_06NavModelElmInd", 344, 1, 0x20uLL);
  if (v11)
  {
    v12 = v11;
    v11[3] = v10;
    v11[7] = -1;
    *(v11 + 24) = v9;
    v13 = gnssOsa_Calloc("lsim02_06NavModelElmInd", 355, v9, 0x54uLL);
    *(v12 + 2) = v13;
    if (v13)
    {
      memcpy_s("lsim02_06NavModelElmInd", 366, v13, 84 * v9, v8, (84 * v9));
      if ((v10 - 1) <= 3)
      {
        lsim02_02UpdateAsstBitmask(1, 32);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_NAVM_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "lsim02_06NavModelElmInd");
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8586243, v12);
    }

    else
    {
      free(v12);
    }
  }

LABEL_22:
  v17 = *(a1 + 24);
  if (v17)
  {
    if (!*(a1 + 20))
    {
      goto LABEL_33;
    }

    v18 = 0;
    v19 = 80;
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = *(a1 + 24) + v19;
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSEPH,SvId,%u,CodeL2,%u,URA,%u,SvH,%u,L2PFlag,%u,Iodc,%u,Toc,%u,R1,%u,R2,%u,R3,%u,R4,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "lsim02_23HandleGpsNavModelInd", *(v21 - 80), *(v21 - 79), *(v21 - 78), *(v21 - 77), *(v21 - 76), *(v21 - 74), *(v21 - 72), *(v21 - 68), *(v21 - 64), *(v21 - 60), *(v21 - 56));
        LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = *(a1 + 24) + v19;
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSEPH,Tgd,%d,Af2,%d,Af1,%d,Af0,%d,Crs,%d,DN,%d,Mo,%d,Cuc,%d,Cus,%d,e,%u,Powerhalf,%u\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "lsim02_23HandleGpsNavModelInd", *(v24 - 52), *(v24 - 51), *(v24 - 50), *(v24 - 48), *(v24 - 44), *(v24 - 42), *(v24 - 40), *(v24 - 36), *(v24 - 34), *(v24 - 32), *(v24 - 28));
        LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = (*(a1 + 24) + v19);
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSEPH,Toe,%u,FitF,%u,AODO,%u,Cic,%d,Cis,%d,OmegaA0,%d,Io,%d,Idot,%d,Crc,%d,W,%d,OmegaAdot,%d\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 73, "lsim02_23HandleGpsNavModelInd", *(v27 - 12), *(v27 - 22), *(v27 - 21), *(v27 - 10), *(v27 - 9), *(v27 - 4), *(v27 - 3), *(v27 - 4), *(v27 - 3), *(v27 - 1), *v27);
        LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
      }

      ++v18;
      v19 += 84;
    }

    while (v18 < *(a1 + 20));
    v17 = *(a1 + 24);
    if (v17)
    {
LABEL_33:
      free(v17);
    }

    *(a1 + 24) = 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 73, "lsim02_23HandleGpsNavModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v30, 4, 1);
  }

  return 0;
}

uint64_t lsim02_24HandleGpsAcqAsstInd(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_ACQASST_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSACQ,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSACQ GEN,Tow,%u,TowUnc,%u,RefDCTime,%d,TimeUnc,%u,NrOfSats,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (*(a1 + 40))
  {
    v10 = 0;
    v11 = (a1 + 53);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSACQ,SvId,%u,D1,%u,D0,%d,Uncert,%u,Phase,%u,C_Phase,%u,BitNum,%u,Window,%u,Azimuth,%u,Elev,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd", *(v11 - 11), *(v11 - 10), *(v11 - 9), *(v11 - 7), *(v11 - 6), *(v11 - 5), *(v11 - 3), *(v11 - 2), *(v11 - 1), *v11);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      ++v10;
      v11 += 12;
    }

    while (v10 < *(a1 + 40));
  }

  v14 = *(a1 + 16);
  v15 = gnssOsa_Calloc("lsim02_07AcquisAssistInd", 397, 1, 0xE8uLL);
  if (v15)
  {
    v16 = v15;
    v17 = *(a1 + 24);
    *(v15 + 28) = *(a1 + 40);
    *(v15 + 12) = v17;
    v18 = *(a1 + 56);
    v19 = *(a1 + 72);
    v20 = *(a1 + 88);
    *(v15 + 92) = *(a1 + 104);
    *(v15 + 76) = v20;
    *(v15 + 60) = v19;
    *(v15 + 44) = v18;
    v21 = *(a1 + 120);
    v22 = *(a1 + 136);
    v23 = *(a1 + 152);
    *(v15 + 156) = *(a1 + 168);
    *(v15 + 140) = v23;
    *(v15 + 124) = v22;
    *(v15 + 108) = v21;
    v24 = *(a1 + 184);
    v25 = *(a1 + 200);
    v26 = *(a1 + 216);
    *(v15 + 110) = *(a1 + 232);
    *(v15 + 204) = v26;
    *(v15 + 188) = v25;
    *(v15 + 172) = v24;
    *(v15 + 56) = v14;
    *(v15 + 57) = -1;
    if ((v14 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(1, 64);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_ACQ_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 73, "lsim02_07AcquisAssistInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8586499, v16);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v30, 4, 1);
  }

  return 0;
}

uint64_t lsim02_25HandleGpsAlmInd(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_25HandleGpsAlmInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_ALMANAC_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_25HandleGpsAlmInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSALM,SId,%u,NumSv,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_25HandleGpsAlmInd", *(a1 + 12), *(a1 + 20));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AlmanacList\n");
LABEL_23:
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 2, 1);
    goto LABEL_27;
  }

  v9 = *(a1 + 20);
  if (!*(a1 + 20))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:NumSvs\n");
    goto LABEL_23;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = gnssOsa_Calloc("lsim02_08AlmanacElm", 442, 1, 0x30uLL);
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = v12;
  v12[3] = 0;
  *(v12 + 9) = v11;
  *(v12 + 10) = -1;
  *(v12 + 32) = v9;
  v14 = gnssOsa_Calloc("lsim02_08AlmanacElm", 454, v9, 0x24uLL);
  v13[2] = v14;
  if (!v14)
  {
    goto LABEL_26;
  }

  memcpy_s("lsim02_08AlmanacElm", 465, v14, 36 * v9, v8, (36 * v9));
  if ((v11 - 1) <= 3)
  {
    lsim02_02UpdateAsstBitmask(1, 8);
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  v15 = gnssOsa_Calloc("lsim02_08AlmanacElm", 477, v9, 0x2EuLL);
  v13[3] = v15;
  if (!v15)
  {
    v19 = v13[2];
    if (v19)
    {
      free(v19);
    }

LABEL_26:
    free(v13);
    goto LABEL_27;
  }

  memcpy_s("lsim02_08AlmanacElm", 489, v15, 46 * v9, v10, (46 * v9));
LABEL_16:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_ALMANAC_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim02_08AlmanacElm");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  AgpsSendFsmMsg(131, 134, 8586755, v13);
LABEL_27:
  v20 = *(a1 + 24);
  if (v20)
  {
    if (!*(a1 + 20))
    {
      goto LABEL_34;
    }

    v21 = 0;
    v22 = 32;
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = (*(a1 + 24) + v22);
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSALM,SvId,%u,DId,%u,WNA,%u,E,%u,Toa,%u,SVh,%u,Deltai,%d,Asqrt,%u,Omega0,%d,Omega,%d,M0,%d,OmegaDot,%d,AF0,%d,AF1,%d\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "lsim02_25HandleGpsAlmInd", *(v24 - 32), *(v24 - 31), *(v24 - 30), *(v24 - 14), *(v24 - 26), *(v24 - 25), *(v24 - 12), *(v24 - 5), *(v24 - 4), *(v24 - 3), *(v24 - 2), *(v24 - 2), *(v24 - 1), *v24);
        LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
      }

      ++v21;
      v22 += 36;
    }

    while (v21 < *(a1 + 20));
    v20 = *(a1 + 24);
    if (v20)
    {
LABEL_34:
      free(v20);
    }

    *(a1 + 24) = 0;
  }

  v26 = *(a1 + 32);
  if (v26)
  {
    if (!*(a1 + 20))
    {
      goto LABEL_43;
    }

    v27 = 0;
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSALM,SvGHealth,%u\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 73, "lsim02_25HandleGpsAlmInd", *(*(a1 + 32) + v27));
        LbsOsaTrace_WriteLog(0xCu, __str, v29, 4, 1);
      }

      ++v27;
    }

    while (v27 < *(a1 + 20));
    v26 = *(a1 + 32);
    if (v26)
    {
LABEL_43:
      free(v26);
    }

    *(a1 + 32) = 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v30 = mach_continuous_time();
    v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "lsim02_25HandleGpsAlmInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
  }

  return 0;
}

uint64_t lsim02_27HandleGpsIonoModelInd(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_27HandleGpsIonoModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_IONOMODEL_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_27HandleGpsIonoModelInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSIONO,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_27HandleGpsIonoModelInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSIONO,A0,%d,A1,%d,A2,%d,A3,%d,B0,%d,B1,%d,B2,%d,B3,%d\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_27HandleGpsIonoModelInd", *(a1 + 21), *(a1 + 22), *(a1 + 23), *(a1 + 24), *(a1 + 25), *(a1 + 26), *(a1 + 27), *(a1 + 28));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = *(a1 + 16);
  v11 = gnssOsa_Calloc("lsim02_09IonoModelInd", 512, 1, 0x20uLL);
  if (v11)
  {
    v12 = v11;
    *(v11 + 2) = *(a1 + 21);
    *(v11 + 6) = v10;
    *(v11 + 7) = -1;
    *(v11 + 3) = 1;
    if ((v10 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_IONO_MODEL_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim02_09IonoModelInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8587779, v12);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "lsim02_27HandleGpsIonoModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
  }

  return 0;
}

uint64_t lsim02_28HandleGpsUtcModelInd(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_28HandleGpsUtcModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_UTCMODEL_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_28HandleGpsUtcModelInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSUTC,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_28HandleGpsUtcModelInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSUTC, A1,%d,A0,%d,Tot,%u,WnT,%u,TLs,%d,WnLsf,%u,Dn,%d,TLsf,%d\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_28HandleGpsUtcModelInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 33), *(a1 + 34), *(a1 + 35), *(a1 + 36), *(a1 + 37));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = *(a1 + 16);
  v11 = gnssOsa_Calloc("lsim02_10UtcModelInd", 552, 1, 0x28uLL);
  if (v11)
  {
    v12 = v11;
    v13 = *(a1 + 24);
    *(v11 + 22) = *(a1 + 30);
    *(v11 + 2) = v13;
    *(v11 + 8) = v10;
    *(v11 + 9) = -1;
    *(v11 + 3) = 1;
    if ((v10 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(1, 16);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_UTC_MODEL_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "lsim02_10UtcModelInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8588035, v12);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim02_28HandleGpsUtcModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  return 0;
}

uint64_t lsim02_29HandleGpsRtiInd(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_29HandleGpsRtiInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_BADSVLIST_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_29HandleGpsRtiInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSRTI,SId,%u,NrOfSats,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_29HandleGpsRtiInd", *(a1 + 12), *(a1 + 21));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = (a1 + 21);
  if (*(a1 + 21))
  {
    v9 = 0;
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSRTI,BadSatId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim02_29HandleGpsRtiInd", *(a1 + 22 + v9));
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
      }

      ++v9;
    }

    while (v9 < *v8);
  }

  v12 = *(a1 + 16);
  v13 = gnssOsa_Calloc("lsim02_11RtIntegrityInd", 591, 1, 0x28uLL);
  if (v13)
  {
    v14 = v13;
    v15 = *v8;
    v13[28] = v8[16];
    *(v13 + 12) = v15;
    *(v13 + 8) = v12;
    *(v13 + 9) = -1;
    if ((v12 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(1, 128);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_RTI_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim02_11RtIntegrityInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8587011, v14);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "lsim02_29HandleGpsRtiInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
  }

  return 0;
}

uint64_t lsim02_30HandleGnssRefTimeInd(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_30HandleGnssRefTimeInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GNSS_REFTIME_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_30HandleGnssRefTimeInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRFT,SId,%u,GnssId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_30HandleGnssRefTimeInd", *(a1 + 12), *(a1 + 20));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRFT,DayNum,%u,ToD,%u,ToDFracMs,%u,NLeapSec,%u,TimeUnc,%u,NumCells,%u,RefDCTime,%d,OsTimeMs,%u,NumTowA,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_30HandleGnssRefTimeInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), *(a1 + 36), *(a1 + 38), *(a1 + 40), *(a1 + 44), *(a1 + 48));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (*(a1 + 48))
  {
    v10 = 0;
    v11 = (a1 + 54);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSTOWA,SvId,%u,Spoof,%u,Alert,%u,TlmRes,%u,TlmWord,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim02_30HandleGnssRefTimeInd", *(v11 - 4), *(v11 - 3), *(v11 - 2), *(v11 - 1), *v11);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      ++v10;
      v11 += 3;
    }

    while (v10 < *(a1 + 48));
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 20);
  v16 = gnssOsa_Calloc("lsim02_12GnssRefTimeInd", 630, 1, 0x1B4uLL);
  if (v16)
  {
    v17 = v16;
    v16[108] = -1;
    memcpy(v16 + 3, (a1 + 24), 0x19AuLL);
    v17[107] = v14;
    v17[106] = v15;
    if ((v14 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(0, 4);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:Tod,%u,DayNum,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 68, "lsim02_12GnssRefTimeInd", v17[4], *(v17 + 6));
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 5, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RTIME_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "lsim02_12GnssRefTimeInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8588803, v17);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim02_30HandleGnssRefTimeInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  return 0;
}

uint64_t lsim02_31HandleGnssTimeModelInd(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_31HandleGnssTimeModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GNSS_TIMEMODEL_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_31HandleGnssTimeModelInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSTM,SId,%u,GNSSIDFrom,%u,NumTM,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_31HandleGnssTimeModelInd", *(a1 + 12), *(a1 + 24), *(a1 + 28));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (*(a1 + 28))
  {
    v8 = 0;
    v9 = (a1 + 54);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSTM,RefTime,%u,TA0,%d,TA1,%d,TA2,%d,GNSSIDTo,%u,WeekNum,%u,DeltaT,%d\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim02_31HandleGnssTimeModelInd", *(v9 - 11), *(v9 - 9), *(v9 - 7), *(v9 - 10), *(v9 - 3), *(v9 - 1), *v9);
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
      }

      ++v8;
      v9 += 12;
    }

    while (v8 < *(a1 + 28));
  }

  v12 = *(a1 + 16);
  v13 = gnssOsa_Calloc("lsim02_15GnssTimeModelInd", 750, 1, 0xDCuLL);
  if (v13)
  {
    v14 = v13;
    *(v13 + 12) = *(a1 + 24);
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    *(v13 + 76) = *(a1 + 88);
    *(v13 + 60) = v17;
    *(v13 + 44) = v16;
    *(v13 + 28) = v15;
    v18 = *(a1 + 104);
    v19 = *(a1 + 120);
    v20 = *(a1 + 136);
    *(v13 + 140) = *(a1 + 152);
    *(v13 + 124) = v20;
    *(v13 + 108) = v19;
    *(v13 + 92) = v18;
    v21 = *(a1 + 168);
    v22 = *(a1 + 184);
    v23 = *(a1 + 200);
    *(v13 + 204) = *(a1 + 216);
    *(v13 + 188) = v23;
    *(v13 + 172) = v22;
    *(v13 + 156) = v21;
    *(v13 + 53) = v12;
    *(v13 + 54) = -1;
    if ((v12 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(*(a1 + 24), 256);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_TIME_MODEL_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 73, "lsim02_15GnssTimeModelInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8589571, v14);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 73, "lsim02_31HandleGnssTimeModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v27, 4, 1);
  }

  return 0;
}

uint64_t lsim02_32HandleGnssRtiInd(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_32HandleGnssRtiInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GNSS_BADSVLIST_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_32HandleGnssRtiInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRTI,SId,%u,NumBadSv,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_32HandleGnssRtiInd", *(a1 + 12), *(a1 + 24));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = (a1 + 24);
  if (*(a1 + 24))
  {
    v9 = 0;
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRTI,GnssId,%u,BadSv,%u,SigId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim02_32HandleGnssRtiInd", *(a1 + 4 * v9 + 28), *(a1 + v9 + 284), *(a1 + v9 + 348));
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
      }

      ++v9;
    }

    while (v9 < *v8);
  }

  v12 = *(a1 + 16);
  v13 = gnssOsa_Calloc("lsim02_13GnssRtIntegrityInd", 671, 1, 0x198uLL);
  if (v13)
  {
    v14 = v13;
    memcpy(v13 + 12, v8, 0x184uLL);
    *(v14 + 100) = v12;
    *(v14 + 101) = -1;
    if ((v12 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(32, 128);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RTI_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "lsim02_13GnssRtIntegrityInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8589059, v14);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim02_32HandleGnssRtiInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

  return 0;
}

uint64_t lsim02_33HandleGnssAcqAsstInd(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GNSS_ACQASST_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSACQ,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSACQ GEN,Tod,%u,Tow,%u,TimeId,%u,Conf,%u,NumAA,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 37));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (*(a1 + 37))
  {
    v10 = 0;
    v11 = (a1 + 60);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSACQ,SvId,%d,GnssId,%u,SigID,%u,D0,%d,D1,%u,DUnc,%u,CPhase,%d,Int_Phase,%u,Window,%u,Azimuth,%d,Elev,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd", *(v11 - 20), *(v11 - 4), *(v11 - 12), *(v11 - 5), *(v11 - 8), *(v11 - 7), *(v11 - 3), *(v11 - 4), *(v11 - 3), *(v11 - 1), *v11);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      ++v10;
      v11 += 24;
    }

    while (v10 < *(a1 + 37));
  }

  v14 = *(a1 + 16);
  v15 = gnssOsa_Calloc("lsim02_14GnssAcquisAssistInd", 712, 1, 0x624uLL);
  if (v15)
  {
    v16 = v15;
    memcpy(v15 + 12, (a1 + 24), 0x610uLL);
    *(v16 + 391) = v14;
    *(v16 + 392) = -1;
    if ((v14 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(32, 64);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_ACQ_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim02_14GnssAcquisAssistInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8589315, v16);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
  }

  return 0;
}

uint64_t lsim02_34HandleGnssRefPosInd(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_34HandleGnssRefPosInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GNSS_REFPOS_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_34HandleGnssRefPosInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRFP,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_34HandleGnssRefPosInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRFP,OsTimeMs,%u,Stat,%u,FType,%u,SType,%u,LatSign,%u,Lat,%u,Long,%d,AltDir,%u,Alt,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_34HandleGnssRefPosInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 60), *(a1 + 52));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRFP,UncSemiMaj,%u,UncSMin,%u,AxisBrng,%u,AltUnc,%u,Conf,%u,IncAngle,%u,OffAngle,%u,Radius,%u,Trust,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim02_34HandleGnssRefPosInd", *(a1 + 54), *(a1 + 55), *(a1 + 56), *(a1 + 64), *(a1 + 65), *(a1 + 66), *(a1 + 67), *(a1 + 68), *(a1 + 72));
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  v12 = *(a1 + 16);
  v13 = gnssOsa_Calloc("lsim02_03GnssRefPositionInd", 217, 1, 0x48uLL);
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 24);
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    *(v13 + 28) = *(a1 + 40);
    *(v13 + 44) = v16;
    *(v13 + 12) = v15;
    *(v13 + 15) = v17;
    *(v13 + 16) = v12;
    *(v13 + 17) = -1;
    v18 = *(v13 + 9);
    v19 = v18 & 0x7FFFFF;
    v20 = (v18 & 0x800000) == 0;
    v21 = v18 | 0xFF000000;
    if (v20)
    {
      v21 = v19;
    }

    *(v13 + 8) &= 0x7FFFFFu;
    *(v13 + 9) = v21;
    if ((v12 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(0, 2);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RPOS_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim02_03GnssRefPositionInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8585475, v14);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 73, "lsim02_34HandleGnssRefPosInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
  }

  return 0;
}

uint64_t GNS_AsstGpsRefTime(int a1, unsigned int a2, __int128 *a3, char a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstGpsRefTime");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (!a3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:RefTime\n");
    goto LABEL_18;
  }

  if (a2 > 7 || ((1 << a2) & 0xDE) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", v24);
LABEL_18:
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 2, 1);
LABEL_19:
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (*a3 >= 0x240C8400u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsTow,%u\n", v22);
    goto LABEL_18;
  }

  if (*(a3 + 6) >= 0x2000u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsWkNum,%u\n", v23);
    goto LABEL_18;
  }

  v11 = gnssOsa_Calloc("GNS_AsstGpsRefTime", 1190, 1, 0x94uLL);
  v12 = v11;
  if (v11)
  {
    *(v11 + 3) = a1;
    *(v11 + 4) = a2;
    v11[20] = a4;
    v13 = *a3;
    v14 = a3[1];
    v15 = a3[2];
    *(v11 + 72) = a3[3];
    *(v11 + 56) = v15;
    *(v11 + 40) = v14;
    *(v11 + 24) = v13;
    v16 = a3[4];
    v17 = a3[5];
    v18 = a3[6];
    *(v11 + 132) = *(a3 + 108);
    *(v11 + 120) = v18;
    *(v11 + 104) = v17;
    *(v11 + 88) = v16;
    AgpsSendFsmMsg(131, 131, 8629763, v11);
    v12 = 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, v12);
  if (result)
  {
LABEL_20:
    bzero(__str, 0x410uLL);
    v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v20, "LSM", 73, "GNS_AsstGpsRefTime");
    return LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
  }

  return result;
}

uint64_t GNS_AsstGpsNavModel(int a1, int a2, int a3, const void *a4, char a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_AsstGpsNavModel");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  if (a3 && a4)
  {
    if ((a2 - 1) < 4)
    {
      v12 = gnssOsa_Calloc("GNS_AsstGpsNavModel", 1271, 1, 0x20uLL);
      if (v12)
      {
        v13 = v12;
        v12[3] = a1;
        v12[4] = a2;
        *(v12 + 21) = a5;
        *(v12 + 20) = a3;
        v14 = gnssOsa_Calloc("GNS_AsstGpsNavModel", 1285, a3, 0x54uLL);
        *(v13 + 3) = v14;
        if (v14)
        {
          memcpy_s("GNS_AsstGpsNavModel", 1296, v14, 84 * a3, a4, (84 * a3));
          AgpsSendFsmMsg(131, 131, 8624643, v13);
          result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          free(v13);
          result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
          if (!result)
          {
            return result;
          }
        }
      }

      else
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
        if (!result)
        {
          return result;
        }
      }

      goto LABEL_21;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "GNS_AsstGpsNavModel", 515, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (result)
    {
LABEL_21:
      bzero(__str, 0x410uLL);
      v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v20, "LSM", 73, "GNS_AsstGpsNavModel");
      return LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:NavModelElm NumSv,%d\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GNS_AsstGpsNavModel", 513, a3);
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (result)
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t GNS_AsstGpsAcqAsst(int a1, int a2, __int128 *a3, char a4)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstGpsAcqAsst");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (a3 && *(a3 + 16))
  {
    if ((a2 - 1) >= 4)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v25), "LSM", 87, "GNS_AsstGpsAcqAsst", 515, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v26, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = gnssOsa_Calloc("GNS_AsstGpsAcqAsst", 1362, 1, 0xECuLL);
      v11 = v10;
      if (v10)
      {
        *(v10 + 3) = a1;
        *(v10 + 4) = a2;
        v10[20] = a4;
        v12 = *a3;
        *(v10 + 40) = a3[1];
        *(v10 + 24) = v12;
        v13 = a3[2];
        v14 = a3[3];
        v15 = a3[4];
        *(v10 + 104) = a3[5];
        *(v10 + 88) = v15;
        *(v10 + 72) = v14;
        *(v10 + 56) = v13;
        v16 = a3[6];
        v17 = a3[7];
        v18 = a3[8];
        *(v10 + 168) = a3[9];
        *(v10 + 152) = v18;
        *(v10 + 136) = v17;
        *(v10 + 120) = v16;
        v19 = a3[10];
        v20 = a3[11];
        v21 = a3[12];
        *(v10 + 116) = *(a3 + 104);
        *(v10 + 216) = v21;
        *(v10 + 200) = v20;
        *(v10 + 184) = v19;
        AgpsSendFsmMsg(131, 131, 8624899, v10);
        v11 = 0;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, v11);
      if (result)
      {
LABEL_17:
        bzero(__str, 0x410uLL);
        v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v27, "LSM", 73, "GNS_AsstGpsAcqAsst");
        return LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsAcqAsst\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 87, "GNS_AsstGpsAcqAsst", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (result)
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t GNS_AsstGpsIonoModel(int a1, int a2, void *a3, char a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstGpsIonoModel");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (a3)
  {
    if ((a2 - 1) >= 4)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_AsstGpsIonoModel", 515, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = gnssOsa_Calloc("GNS_AsstGpsIonoModel", 1557, 1, 0x20uLL);
      v11 = v10;
      if (v10)
      {
        *(v10 + 3) = a1;
        *(v10 + 4) = a2;
        v10[20] = a4;
        *(v10 + 21) = *a3;
        AgpsSendFsmMsg(131, 131, 8625667, v10);
        v11 = 0;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, v11);
      if (result)
      {
LABEL_16:
        bzero(__str, 0x410uLL);
        v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v17, "LSM", 73, "GNS_AsstGpsIonoModel");
        return LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsIonoModel\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "GNS_AsstGpsIonoModel", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (result)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t GNS_AsstGpsUtcModel(int a1, int a2, uint64_t *a3, char a4)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstGpsUtcModel");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (a3)
  {
    if ((a2 - 1) >= 4)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GNS_AsstGpsUtcModel", 515, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = gnssOsa_Calloc("GNS_AsstGpsUtcModel", 1632, 1, 0x28uLL);
      v11 = v10;
      if (v10)
      {
        *(v10 + 3) = a1;
        *(v10 + 4) = a2;
        v10[20] = a4;
        v12 = *a3;
        *(v10 + 30) = *(a3 + 6);
        *(v10 + 3) = v12;
        AgpsSendFsmMsg(131, 131, 8625923, v10);
        v11 = 0;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, v11);
      if (result)
      {
LABEL_16:
        bzero(__str, 0x410uLL);
        v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v18, "LSM", 73, "GNS_AsstGpsUtcModel");
        return LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsUtcModel\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "GNS_AsstGpsUtcModel", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (result)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t GNS_AsstGpsRti(int a1, int a2, __int128 *a3, char a4)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstGpsRti");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (a3 && *a3)
  {
    if ((a2 - 1) >= 4)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GNS_AsstGpsRti", 515, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = gnssOsa_Calloc("GNS_AsstGpsRti", 1707, 1, 0x28uLL);
      v11 = v10;
      if (v10)
      {
        *(v10 + 3) = a1;
        *(v10 + 4) = a2;
        v10[20] = a4;
        v12 = *a3;
        v10[37] = *(a3 + 16);
        *(v10 + 21) = v12;
        AgpsSendFsmMsg(131, 131, 8626179, v10);
        v11 = 0;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, v11);
      if (result)
      {
LABEL_17:
        bzero(__str, 0x410uLL);
        v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v18, "LSM", 73, "GNS_AsstGpsRti");
        return LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsRti\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "GNS_AsstGpsRti", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (result)
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t GNS_AsstRefPos(int a1, unsigned int a2, __int128 *a3, char a4)
{
  v31 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstRefPos");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (!a3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:RefPos\n");
    goto LABEL_38;
  }

  if (a2 > 7)
  {
    goto LABEL_24;
  }

  if (((1 << a2) & 0xD4) != 0)
  {
    goto LABEL_6;
  }

  if (a2 != 1)
  {
    if (a2 == 3)
    {
      if (g_LsimEcallOngoing)
      {
        a2 = 4;
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:Updating SUPL to SUPL_ECALL\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GNS_AsstRefPos");
          a2 = 4;
          LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
        }
      }

      else
      {
        a2 = 3;
      }

      goto LABEL_6;
    }

LABEL_24:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", v27);
    goto LABEL_38;
  }

  if (g_LsimEcallOngoing)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:Updating CP to CP_ECALL\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GNS_AsstRefPos");
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
    }

    a2 = 2;
  }

  else
  {
    a2 = 1;
  }

LABEL_6:
  if (*(a3 + 12) >= 5u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:Trust,%u\n", v25);
    goto LABEL_38;
  }

  v10 = *(a3 + 41);
  if (!*(a3 + 41) || v10 != 255 && v10 >= 0x65)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:Confidence,%u\n", v24);
    goto LABEL_38;
  }

  if (*(a3 + 30) <= -2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:UncSemiMajor,%u\n", v26);
    goto LABEL_38;
  }

  if (*(a3 + 31) <= -2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:UncSemiMinor,%d\n", v28);
    goto LABEL_38;
  }

  if (*(a3 + 40) <= -2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:UncAlt,%d\n", v29);
LABEL_38:
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
LABEL_39:
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_40;
  }

  v19 = gnssOsa_Calloc("GNS_AsstRefPos", 2276, 1, 0x4CuLL);
  v20 = v19;
  if (v19)
  {
    v21 = *a3;
    v22 = a3[1];
    v23 = a3[2];
    *(v19 + 18) = *(a3 + 12);
    *(v19 + 56) = v23;
    *(v19 + 40) = v22;
    *(v19 + 24) = v21;
    *(v19 + 3) = a1;
    *(v19 + 4) = a2;
    v19[20] = a4;
    AgpsSendFsmMsg(131, 131, 8629251, v19);
    v20 = 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, v20);
  if (result)
  {
LABEL_40:
    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v17, "LSM", 73, "GNS_AsstRefPos");
    return LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

  return result;
}

uint64_t lsim02_61HandleServerErrInd(_DWORD *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_61HandleServerErrInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SVR_ERR_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_61HandleServerErrInd", a1[4]);
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:SId,%d,Cause,%d\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_61HandleServerErrInd", a1[3], a1[6]);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a1[6] > 4u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:SvrErrCause,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim02_61HandleServerErrInd", 515, a1[6]);
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_9;
    }
  }

  else
  {
    qword_2A14BEA20 = -1;
    *&dword_2A14BEA28 = -1;
    g_lsimAsstDelivered = -1;
    dword_2A14BEA30 = -1;
    dword_2A14BEA34 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
LABEL_9:
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_61HandleServerErrInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }
  }

  return 0;
}

uint64_t lsim02_45CheckWithDeliveredAssistance(void *a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_45CheckWithDeliveredAssistance");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (g_lsimAsstDelivered)
    {
      v5 = 89;
    }

    else
    {
      v5 = 78;
    }

    if ((g_lsimAsstDelivered & 2) != 0)
    {
      v6 = 89;
    }

    else
    {
      v6 = 78;
    }

    if ((g_lsimAsstDelivered & 4) != 0)
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:LSIMDA,LastUpdateOsTimeMs,%u,RefTime,%c,RefPos,%c,Iono,%c\n", v4, "LSM", 73, "lsim02_44TraceDeliveredAssistance", dword_2A14BEA34, v7, v6, v5);
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  lsim02_47TraceDelvAsstForConstel(SWORD2(g_lsimAsstDelivered), "GPS ");
  lsim02_47TraceDelvAsstForConstel(qword_2A14BEA20, "GLON");
  lsim02_47TraceDelvAsstForConstel(dword_2A14BEA28, "BDS ");
  lsim02_47TraceDelvAsstForConstel(SWORD2(qword_2A14BEA20), "GAL ");
  lsim02_47TraceDelvAsstForConstel(dword_2A14BEA30, "QZSS");
  lsim02_47TraceDelvAsstForConstel(dword_2A14BEA2C, "SBAS");
  if (!a1 || !a1[1])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AidReqParam\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 87, "lsim02_45CheckWithDeliveredAssistance", 513);
    v21 = 2;
    return LbsOsaTrace_WriteLog(0xCu, __str, v20, v21, 1);
  }

  result = lsim02_01DeliveredAsstCheckNeeded();
  if (!result)
  {
    return result;
  }

  v10 = g_lsimAsstDelivered;
  v11 = a1[1];
  if ((g_lsimAsstDelivered & 1) == 0)
  {
    if ((g_lsimAsstDelivered & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_43:
    v11[1] = 0;
    if ((v10 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v11[2] = 0;
  if ((v10 & 2) != 0)
  {
    goto LABEL_43;
  }

LABEL_19:
  if ((v10 & 4) != 0)
  {
LABEL_20:
    *v11 = 0;
  }

LABEL_21:
  if (v11[3] == 1)
  {
    v12 = a1[2];
    if (v12)
    {
      lsim02_46UpdateAidReqMask(SWORD2(g_lsimAsstDelivered), v12, v11 + 3);
      *(a1[2] + 11) = 0;
      v11 = a1[1];
    }
  }

  if (v11[4] == 1)
  {
    v13 = a1[3];
    if (v13)
    {
      lsim02_46UpdateAidReqMask(qword_2A14BEA20, v13, v11 + 4);
      *(a1[3] + 11) = 0;
      v11 = a1[1];
    }
  }

  if (v11[5] == 1)
  {
    v14 = a1[4];
    if (v14)
    {
      lsim02_46UpdateAidReqMask(dword_2A14BEA30, v14, v11 + 5);
      *(a1[4] + 11) = 0;
      v11 = a1[1];
    }
  }

  if (v11[6] == 1)
  {
    v15 = a1[5];
    if (v15)
    {
      lsim02_46UpdateAidReqMask(dword_2A14BEA2C, v15, v11 + 6);
      *(a1[5] + 11) = 0;
      v11 = a1[1];
    }
  }

  v17 = v11[7];
  v16 = v11 + 7;
  if (v17 == 1)
  {
    v18 = a1[6];
    if (v18)
    {
      lsim02_46UpdateAidReqMask(dword_2A14BEA28, v18, v16);
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim02_45CheckWithDeliveredAssistance");
    v21 = 4;
    return LbsOsaTrace_WriteLog(0xCu, __str, v20, v21, 1);
  }

  return result;
}

uint64_t lsim02_01DeliveredAsstCheckNeeded(void)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:LastDelAsstTime,%ums\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 68, "lsim02_01DeliveredAsstCheckNeeded", dword_2A14BEA34);
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 5, 1);
  }

  v2 = dword_2A14BEA34;
  if (!dword_2A14BEA34)
  {
    return 1;
  }

  v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v2;
  if (v3 >> 4 < 0x271)
  {
    return 1;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:LastUpdate,%ums,Threshold,%ums\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_01DeliveredAsstCheckNeeded", v3, 10000);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    return 0;
  }

  return result;
}

uint64_t lsim02_46UpdateAidReqMask(__int16 a1, _BYTE *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_46UpdateAidReqMask");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:ReqFlag\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "lsim02_46UpdateAidReqMask", 513);
    v11 = 2;
    return LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
  }

  if ((a1 & 8) != 0)
  {
    a2[6] = 0;
    if ((a1 & 0x20) == 0)
    {
LABEL_6:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_32;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_6;
  }

  a2[7] = 0;
  if ((a1 & 0x10) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  a2[4] = 0;
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  a2[8] = 0;
  if ((a1 & 0x200) == 0)
  {
LABEL_9:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  a2[10] = 0;
  if ((a1 & 0x400) == 0)
  {
LABEL_10:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  a2[9] = 0;
  if ((a1 & 0x80) == 0)
  {
LABEL_11:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

LABEL_37:
    a2[12] = 0;
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_36:
  a2[5] = 0;
  if ((a1 & 0x100) != 0)
  {
    goto LABEL_37;
  }

LABEL_12:
  if ((a1 & 0x800) != 0)
  {
LABEL_13:
    a2[11] = 0;
  }

LABEL_14:
  if ((a2[5] & 1) == 0 && (a2[6] & 1) == 0 && (a2[10] & 1) == 0 && (a2[9] & 1) == 0 && (a2[7] & 1) == 0 && (a2[8] & 1) == 0 && (a2[4] & 1) == 0 && (a2[11] & 1) == 0 && (a2[12] & 1) == 0)
  {
    *a3 = 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim02_46UpdateAidReqMask");
    v11 = 4;
    return LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
  }

  return result;
}

uint64_t GNS_AsstServerError(int a1, int a2, unsigned int a3, char a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstServerError");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if ((a2 - 1) >= 4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", v16);
LABEL_11:
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
    goto LABEL_12;
  }

  if (a3 >= 5)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:Cause,%u\n", v17);
    goto LABEL_11;
  }

  v10 = gnssOsa_Calloc("GNS_AsstServerError", 2607, 1, 0x1CuLL);
  v11 = v10;
  if (v10)
  {
    v10[3] = a1;
    v10[4] = a2;
    *(v10 + 20) = a4;
    v10[6] = a3;
    AgpsSendFsmMsg(131, 131, 8633347, v10);
LABEL_12:
    v11 = 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, v11);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GNS_AsstServerError");
    return LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  return result;
}

unint64_t lsim02_02UpdateAsstBitmask(int a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = a2 & 7;
  if ((a2 & 7) != 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_8;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:Common AsstBitmask,%u\n");
    goto LABEL_7;
  }

  if ((a2 & 0x1F8) != 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_8;
    }

    bzero(__str, 0x410uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:Constel,%u,AsstBitmask,%u\n", v9);
LABEL_7:
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
LABEL_8:
    if ((lsim02_01DeliveredAsstCheckNeeded() & 1) == 0)
    {
      memset_s(&g_lsimAsstDelivered, 0x20uLL, 0, 0x20uLL);
    }

    if (v4)
    {
      v6 = &g_lsimAsstDelivered;
LABEL_12:
      *v6 |= a2;
      result = mach_continuous_time();
      dword_2A14BEA34 = (*&g_MacClockTicksToMsRelation * result);
      return result;
    }

    if (a1 > 15)
    {
      switch(a1)
      {
        case 16:
          v6 = &dword_2A14BEA30;
          goto LABEL_12;
        case 32:
          v6 = &qword_2A14BEA20;
          goto LABEL_12;
        case 64:
          v6 = &dword_2A14BEA28;
          goto LABEL_12;
      }
    }

    else
    {
      switch(a1)
      {
        case 1:
          v6 = &g_lsimAsstDelivered + 1;
          goto LABEL_12;
        case 2:
          v6 = &qword_2A14BEA20 + 1;
          goto LABEL_12;
        case 4:
          v6 = &dword_2A14BEA2C;
          goto LABEL_12;
      }
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GnssID,%u\n", v11);
      return LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
    }

    return result;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstBitmask,%u\n", v10);
    return LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
  }

  return result;
}

uint64_t lsim02_47TraceDelvAsstForConstel(__int16 a1, const char *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v6 = 89;
    if ((a1 & 0x800) != 0)
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    if ((a1 & 0x400) != 0)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    v20 = v8;
    v21 = v7;
    if ((a1 & 0x200) != 0)
    {
      v9 = 89;
    }

    else
    {
      v9 = 78;
    }

    if ((a1 & 0x80) != 0)
    {
      v10 = 89;
    }

    else
    {
      v10 = 78;
    }

    v18 = v10;
    v19 = v9;
    if ((a1 & 0x100) != 0)
    {
      v11 = 89;
    }

    else
    {
      v11 = 78;
    }

    if ((a1 & 0x10) != 0)
    {
      v12 = 89;
    }

    else
    {
      v12 = 78;
    }

    v16 = v12;
    v17 = v11;
    if ((a1 & 0x40) != 0)
    {
      v13 = 89;
    }

    else
    {
      v13 = 78;
    }

    if ((a1 & 0x20) != 0)
    {
      v14 = 89;
    }

    else
    {
      v14 = 78;
    }

    if ((a1 & 8) == 0)
    {
      v6 = 78;
    }

    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:LSIMDA,%s,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimeM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v5, "LSM", 73, "lsim02_47TraceDelvAsstForConstel", a2, v6, v14, v13, v16, v17, v18, v19, v20, v21);
    return LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  return result;
}

uint64_t EE_Get_GPS_BinEph(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a1;
  v28 = *MEMORY[0x29EDCA608];
  strcpy(v27, "GN_EE_Get_GPS_Eph_El: ");
  if ((a1 + 53) > 0xF5u || (a1 - 33) > 0xDFu)
  {
    result = GN_EE_Get_GPS_Eph_El(a1, (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), a2 - 604800 * (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), &v17);
    if (result)
    {
      v8[2] = v18;
      v9 = v19;
      v10 = v20;
      v11 = v21;
      v12 = v22;
      v13 = v23;
      v14 = v24;
      v15 = v25;
      v16 = v26;
      v6 = *(p_api + 48);
      if (*(v6 + 5) == 1 && *v6 >= 3)
      {
        v7 = *(v6 + 24) + 604800 * *(v6 + 16);
      }

      else
      {
        v7 = 0;
      }

      v8[0] = v7;
      v8[1] = 6;
      if (g_Enable_Event_Log >= 4u)
      {
        EvLog_GPS_IntEph(v27, v4, v8);
      }

      result = Is_GPS_IntEph_Valid(v27, v4, v8);
      if (result)
      {
        GPS_EphInt2Bin(v8, a3);
        return 1;
      }
    }
  }

  else
  {
    EvCrt_v("EE_Get_GLON_GPS_BinEph:  FAILED:  SV = %d, Out of range !", a1);
    return 0;
  }

  return result;
}

uint64_t EE_Set_GPS_BinEph(int a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  memset(v7, 0, 42);
  *(&v7[2] + 12) = 0u;
  *(&v7[3] + 12) = 0u;
  if ((a1 + 53) > 0xF5u || (a1 - 33) > 0xDFu)
  {
    GPS_EphBin2Int(a2, v7);
    v3 = LODWORD(v7[0]) - 16 * WORD1(v7[1]);
    LOWORD(v4) = v7[1];
    if (!LOWORD(v7[1]))
    {
      if (v3 < 619012800)
      {
        return 0;
      }

      LOWORD(v7[1]) = (v3 + 302400) / 604800;
      v4 = (v3 + 302400) / 604800;
    }

    v5 = (v3 + 302400) / 604800 - 512;
    if (v5 > v4)
    {
      do
      {
        LOWORD(v4) = v4 + 1024;
      }

      while (v5 > v4);
      LOWORD(v7[1]) = v4;
    }

    if (g_Enable_Event_Log >= 4u)
    {
      EvLog_GPS_IntEph("GN_EE_Set_GPS_Eph_El: ", a1, v7);
    }
  }

  else
  {
    EvCrt_v("EE_Set_GPS_Eph_El:  FAILED  SV = %d, Out of range !", a1);
  }

  return 0;
}

uint64_t EE_Get_GLON_GPS_BinEph(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1;
  v28 = *MEMORY[0x29EDCA608];
  strcpy(v27, "GN_EE_Get_GLON_GPS_Eph_El: ");
  if ((a1 - 25) > 0xE7u)
  {
    result = GN_EE_Get_GLON_GPS_Eph_El(a1, (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), a2 - 604800 * (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), &v17);
    if (result)
    {
      v8[2] = v18;
      v9 = v19;
      v10 = v20;
      v11 = v21;
      v12 = v22;
      v13 = v23;
      v14 = v24;
      v15 = v25;
      v16 = v26;
      v6 = *(p_api + 48);
      if (*(v6 + 5) == 1 && *v6 >= 3)
      {
        v7 = *(v6 + 24) + 604800 * *(v6 + 16);
      }

      else
      {
        v7 = 0;
      }

      v8[0] = v7;
      v8[1] = 6;
      if (g_Enable_Event_Log >= 4u)
      {
        EvLog_GPS_IntEph(v27, v3, v8);
      }

      result = Is_GPS_IntEph_Valid(v27, v3, v8);
      if (result)
      {
        GPS_EphInt2Bin(v8, a3);
        return 1;
      }
    }
  }

  else
  {
    EvCrt_v("EE_Get_GLON_GPS_BinEph:  FAILED:  SV = %d < %d || > %d, Out of range !", a1, 1, 24);
    return 0;
  }

  return result;
}

uint64_t EE_Get_GAL_IntEph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x29EDCA608];
  if ((a1 - 37) <= 0xDBu)
  {
    EvCrt_v("EE_Get_GAL_IntEph:  FAILED:  SV = %d, Out of range !", a2, a3);
    return 0;
  }

  if (a2 < 619315200)
  {
    return 0;
  }

  result = GN_EE_Get_GAL_Eph_El(a1, (a2 / 0x93A80 - 1024), a2 % 0x93A80, &v19);
  if (!result)
  {
    return result;
  }

  if (g_Enable_Event_Log >= 4u)
  {
    EvLog_GN_EE_GAL_Eph_El("GN_EE_Get_GAL_Eph_El: ", &v19);
  }

  v7 = BYTE6(v19) - 37;
  v8 = v7 < 0xFFFFFFDC;
  if (v7 <= 0xFFFFFFDB)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  SVid = %d, Out of range !", BYTE6(v19));
  }

  if (v19 > 0x93A7F)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  WeekNo = %d >= 604800, Out of range !", v19);
    v8 = 1;
  }

  if (WORD2(v19) >= 0x1000u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  WeekNo = %d >= 4096, Out of range !", WORD2(v19));
    v8 = 1;
  }

  v9 = BYTE6(v19);
  if (BYTE6(v19) >= 0x41u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  SVid = %d > 2^6, Out of range !", BYTE6(v19));
    v9 = BYTE6(v19);
    v8 = 1;
  }

  if (v9 >= 0x25)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  SVid = %d > 36, Unrealistic value !", v9);
    v8 = 1;
  }

  if (v27 >> 5 >= 0x13Bu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  toc = %d > 10079, Out of range !", v27);
    v8 = 1;
  }

  if (HIWORD(v20) >> 5 >= 0x13Bu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  toe = %d > 10079, Out of range !", HIWORD(v20));
    v8 = 1;
  }

  if (v20 >= 0x400u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  IODnav = %d > 1023, Out of range !", v20);
    v8 = 1;
  }

  v10 = 0.03;
  v11 = 0.25;
  if (((BYTE6(v19) - 14) & 0xFB) == 0)
  {
    v10 = 0.25;
  }

  LODWORD(v11) = DWORD1(v21);
  v12 = v11 * 1.16415322e-10;
  if (v12 > v10)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  e = %g  > %g, Unrealistic value !", v12, v10);
    v8 = 1;
  }

  v13 = vcvtd_n_f64_u32(DWORD2(v21), 0x13uLL);
  if (v13 < 4800.0)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  sqrtA = %g  < %g, Unrealistic value !", v13, 4800.0);
    v8 = 1;
  }

  if (v13 > 5800.0)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  sqrtA = %g  > %g, Unrealistic value !", v13, 5800.0);
    v8 = 1;
  }

  if ((v23 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  OmegaDot = %d < -2^23 || >= 2^23, Out of range !");
LABEL_39:
    v8 = 1;
    goto LABEL_40;
  }

  v14 = v23 * 3.57157734e-13;
  if (v14 < -0.00000198862815)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  OmegaDot = %e  < %e rad/s, Unrealistic value !");
    goto LABEL_39;
  }

  if (v14 > 0.0)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  OmegaDot = %e  > %e rad/s, Unrealistic value !");
    goto LABEL_39;
  }

LABEL_40:
  if (((v24 - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  IDOT = %d < -2^13 || >= 2^13, Out of range !", v24);
    v8 = 1;
  }

  if (v25 - 0x40000000 >= 0)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  af0 = %d < -2^30 || >= 2^30, Out of range !", v25);
    v8 = 1;
  }

  if ((HIDWORD(v25) - 0x100000) >> 21 != 2047)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  af1 = %d < -2^20 || >= 2^20, Out of range !", HIDWORD(v25));
    v8 = 1;
  }

  if (((v26 - 32) >> 6) <= 0x3FEu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  af2 = %d < -2^5 || >= 2^5, Out of range !", v26);
    v8 = 1;
  }

  if (((v28 - 512) >> 10) <= 0x3Eu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  bgdE1E5b = %d < -2^9 || >= 2^9, Out of range !", v28);
    v8 = 1;
  }

  if (((HIWORD(v28) - 512) >> 10) <= 0x3Eu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  bgdE1E5a = %d < -2^9 || >= 2^9, Out of range !", SHIWORD(v28));
    v8 = 1;
  }

  if (v29 >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  Model_ID = %d < 0 || > 1, Out of range !", v29);
    v8 = 1;
  }

  if (BYTE1(v29) >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E5a_Nav_DVS = %d < 0 || > 1, Out of range !", BYTE1(v29));
    v8 = 1;
  }

  if (BYTE2(v29) >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:   E5b_Nav_DVS = %d < 0 || > 1, Out of range !", BYTE2(v29));
    v8 = 1;
  }

  if (HIBYTE(v29) >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E1B_Nav_DVS = %d < 0 || > 1, Out of range !", HIBYTE(v29));
    v8 = 1;
  }

  if (v30 >= 4u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E5a_Sig_HS = %d < 0 || > 3, Out of range !", v30);
    v8 = 1;
  }

  v15 = v31;
  if (v31 > 3u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E5b_Sig_HS = %d < 0 || > 3, Out of range !", v31);
    if (v32 < 4u)
    {
      return 0;
    }

LABEL_66:
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E1B_Sig_HS = %d < 0 || > 1, Out of range !", v5, v6);
    return 0;
  }

  v16 = v32;
  if (v32 > 3u)
  {
    goto LABEL_66;
  }

  if (v8)
  {
    return 0;
  }

  v17 = *(p_api + 48);
  if (*(v17 + 5) == 1 && *v17 >= 3)
  {
    v18 = 604800 * *(v17 + 16) + *(v17 + 24);
  }

  else
  {
    v18 = 0;
  }

  *a3 = v18;
  *(a3 + 4) = 6;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  *(a3 + 20) = v21;
  *(a3 + 36) = v22;
  *(a3 + 44) = v23;
  *(a3 + 48) = v24;
  *(a3 + 74) = v27;
  *(a3 + 64) = v25;
  *(a3 + 72) = v26;
  *(a3 + 76) = v28;
  *(a3 + 80) = v29;
  *(a3 + 84) = v30;
  *(a3 + 85) = v15;
  result = 1;
  *(a3 + 86) = v16;
  return result;
}

uint64_t EE_Set_GAL_IntEph(int a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a1 - 37) > 0xFFFFFFDB)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 20);
    v6 = *(a2 + 36);
    v7 = *(a2 + 44);
    v8 = *(a2 + 48);
    v11 = *(a2 + 74);
    v9 = *(a2 + 64);
    v10 = *(a2 + 72);
    v12 = *(a2 + 76);
    v13 = *(a2 + 80);
    v14 = *(a2 + 84);
    v15 = *(a2 + 85);
    if (g_Enable_Event_Log >= 4u)
    {
      EvLog_GN_EE_GAL_Eph_El("GN_EE_Set_GAL_Eph_El: ", &v3);
    }
  }

  else
  {
    EvCrt_v("EE_Set_GAL_Eph_El:  FAILED  SV = %d, Out of range !", a1);
  }

  return 0;
}

uint64_t EE_Get_BDS_IntEph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x29EDCA608];
  if ((a1 - 38) <= 0xDAu)
  {
    EvCrt_v("EE_Get_BDS_IntEph:  FAILED:  SV = %d, Out of range !", a2, a3);
    return 0;
  }

  if (a2 < 820713600)
  {
    return 0;
  }

  v5 = a2 % 0x93A80;
  if (a2 % 0x93A80 < 0xE)
  {
    v6 = -1357;
  }

  else
  {
    v6 = -1356;
  }

  if (v5 < 0xE)
  {
    v5 = (a2 % 0x93A80) | 0x93A80;
  }

  result = GN_EE_Get_BDS_Eph_El(a1, (v6 + a2 / 0x93A80), v5 - 14, v20);
  if (result)
  {
    if (g_Enable_Event_Log >= 4u)
    {
      EvLog_GN_EE_BDS_Eph_El("GN_EE_Get_BDS_Eph_El: ", v20);
    }

    v10 = BYTE2(v23) - 38;
    v11 = v10 < 0xFFFFFFDB;
    if (v10 <= 0xFFFFFFDA)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  SVid = %d, Out of range !", BYTE2(v23));
    }

    if (v20[0] >= 0x2000)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  WeekNo = %d > 8191, Out of range !", v20[0]);
      v11 = 1;
    }

    if (v21 > 0x1274F)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  toc = %d > 75599, Out of range !", v21);
      v11 = 1;
    }

    if (v22 > 0x1274F)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  toe = %d > 75599, Out of range !", v22);
      v11 = 1;
    }

    if (v23 >= 0x20u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  AODE = %d > 31, Out of range !", v23);
      v11 = 1;
    }

    if (BYTE1(v23) >= 0x20u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  AODC = %d > 31, Out of range !", BYTE1(v23));
      v11 = 1;
    }

    if (BYTE2(v23) >= 0x26u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  SVid = %d > 37, Out of range !", BYTE2(v23));
      v11 = 1;
    }

    if (HIBYTE(v23) >= 0x10u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  URAI = %d > 15, Out of range !", HIBYTE(v23));
      v11 = 1;
    }

    if (v24 >= 2u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  SatH1 = %d > 15, Out of range !", v24);
      v11 = 1;
    }

    if (((v27 - 0x2000) >> 14) <= 2u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  IDOT = %d < -2^13 || >= 2^13, Out of range !", v27);
      v11 = 1;
    }

    if ((v30 - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Cuc = %d < -2^17 || >= 2^17, Out of range !", v30);
      v11 = 1;
    }

    if ((DWORD1(v30) - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Cus = %d < -2^17 || >= 2^17, Out of range !", DWORD1(v30));
      v11 = 1;
    }

    if ((DWORD2(v30) - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Crc = %d < -2^17 || >= 2^17, Out of range !", DWORD2(v30));
      v11 = 1;
    }

    if ((HIDWORD(v30) - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Crs = %d < -2^17 || >= 2^17, Out of range !", HIDWORD(v30));
      v11 = 1;
    }

    if ((v31 - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Cic = %d < -2^17 || >= 2^17, Out of range !", v31);
      v11 = 1;
    }

    if ((DWORD1(v31) - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Cis = %d < -2^17 || >= 2^17, Out of range !", DWORD1(v31));
      v11 = 1;
    }

    if ((DWORD2(v31) - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  af0 = %d < -2^23 || >= 2^23, Out of range !", DWORD2(v31));
      v11 = 1;
    }

    if ((HIDWORD(v31) - 0x200000) >> 22 != 1023)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  af1 = %d < -2^21 || >= 2^23, Out of range !", HIDWORD(v31));
      v11 = 1;
    }

    if (((v32 - 1024) >> 11) <= 0x1Eu)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  af2 = %d < -2^10 || >= 2^10, Out of range !", v32);
      v11 = 1;
    }

    v12 = v33;
    if (((v33 - 512) >> 10) < 0x3Fu)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  TGD1 = %d < -2^9 || >= 2^9, Out of range !", v33);
      if (((v34 - 512) >> 10) > 0x3Eu)
      {
        return 0;
      }

LABEL_57:
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  TGD2 = %d < -2^9 || >= 2^9, Out of range !", v7, v8);
      return 0;
    }

    v13 = v34;
    if (((v34 - 512) >> 10) < 0x3Fu)
    {
      goto LABEL_57;
    }

    if (v11)
    {
      return 0;
    }

    v14 = *(p_api + 48);
    if (*(v14 + 5) == 1 && *v14 >= 3)
    {
      v9 = *(v14 + 24);
      v15 = v9 + 604800 * *(v14 + 16);
    }

    else
    {
      v15 = 0;
    }

    *a3 = v15;
    *(a3 + 4) = 6;
    *(a3 + 16) = v20[0];
    *(a3 + 22) = v24;
    LODWORD(v9) = v23;
    v16 = vmovl_u8(*&v9);
    *(a3 + 18) = v23;
    *(a3 + 24) = v25;
    *(a3 + 40) = v26;
    *(a3 + 52) = v29;
    *(a3 + 48) = v27;
    *(a3 + 50) = v28;
    v17 = v31;
    *(a3 + 56) = v30;
    v18 = v22;
    *(a3 + 8) = v21;
    *(a3 + 12) = v18;
    *(a3 + 72) = v17;
    *(a3 + 88) = v32;
    *(a3 + 90) = v12;
    *(a3 + 92) = v13;
    if (v16.u8[4] > 5u)
    {
      v19 = 0x7FFFFFF;
    }

    else
    {
      v19 = -1;
    }

    *(a3 + 96) = v19;
    return 1;
  }

  return result;
}

uint64_t EE_Set_BDS_IntEph(int a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if ((a1 - 38) > 0xFFFFFFDA)
  {
    v8 = *(a2 + 16);
    v12 = *(a2 + 22);
    v2 = *(a2 + 18);
    v13 = *(a2 + 24);
    v14 = *(a2 + 40);
    v3 = *(a2 + 52);
    v15 = *(a2 + 48);
    v16 = v3;
    v4 = *(a2 + 56);
    v5 = *(a2 + 8);
    v10 = *(a2 + 12);
    v11 = v2;
    v9 = v5;
    v6 = *(a2 + 72);
    v17 = v4;
    v18 = v6;
    v19 = *(a2 + 88);
    v20 = *(a2 + 90);
    if (g_Enable_Event_Log >= 4u)
    {
      EvLog_GN_EE_BDS_Eph_El("GN_EE_Set_BDS_Eph_El: ", &v8);
    }
  }

  else
  {
    EvCrt_v("EE_Set_BDS_Eph_El:  FAILED  SV = %d, Out of range !", a1);
  }

  return 0;
}

uint64_t GNS_Initialize(void)
{
  if (g_GnsInit)
  {
    return 1;
  }

  gnssDataMgt_Init();
  result = AgpsSpawnFsm(&g_AgpsFsmTable, 8);
  g_GnsInit = result;
  return result;
}

uint64_t GNS_ProductionInitialize(int a1, uint64_t a2, uint64_t (*a3)(void, void, __n128))
{
  v3 = 0;
  if (a2 && a3)
  {
    if ((g_GnsInit & 1) != 0 || !AgpsSpawnFsm(&g_AgpsProdFsmTable, 2))
    {
      return 0;
    }

    else
    {
      gnssDataMgtProduction_Init(a3);
      v3 = 1;
      Hal_StartConn(a1, 1, a2);
      g_GnsInit = 1;
    }
  }

  return v3;
}

uint64_t GNS_ProductionDeInitialize(void)
{
  if (g_GnsInit != 1)
  {
    return 0;
  }

  v0 = AgpsShutdownAllFsm();
  g_GnsInit = 0;
  usleep(0x186A0u);
  return v0;
}

uint64_t SuplVersionNegotiation::GetInstance(SuplVersionNegotiation *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if (SuplVersionNegotiation::GetInstance(void)::pred_suplVersionNegotiation != -1)
  {
    dispatch_once(&SuplVersionNegotiation::GetInstance(void)::pred_suplVersionNegotiation, &__block_literal_global_8);
  }

  result = SuplVersionNegotiation::m_supl_version_negotiation;
  if (!SuplVersionNegotiation::m_supl_version_negotiation)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SuplVersionNegotiation.cpp", 44, "false && Memory allocation failure");
  }

  return result;
}

_DWORD *___ZN22SuplVersionNegotiation11GetInstanceEv_block_invoke()
{
  result = operator new(4uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = 196352;
  }

  SuplVersionNegotiation::m_supl_version_negotiation = result;
  return result;
}

BOOL SuplVersionNegotiation::Instance::NegotiateNetInitiated(SuplVersionNegotiation::Instance *this, unsigned int a2)
{
  v3 = this;
  Instance = SuplVersionNegotiation::GetInstance(this);
  result = 0;
  v6 = atomic_load((Instance + 1));
  v7 = v6 == 255;
  v8 = 1;
  if (v7)
  {
    v8 = 2;
  }

  v9 = atomic_load((Instance + v8));
  if (v3 >= a2 && a2 <= 2 && v9 <= 2)
  {
    v10 = atomic_load((Instance + 3));
    if ((v10 & 1) == 0)
    {
      return v9 == v3;
    }

    if (v3 > 2)
    {
      if (v9 < a2)
      {
        return 0;
      }

      atomic_store(v9, (Instance + 1));
    }

    else
    {
      atomic_store(v3, (Instance + 1));
    }

    return 1;
  }

  return result;
}

unsigned __int8 *SuplVersionNegotiation::Instance::Reset(SuplVersionNegotiation::Instance *this)
{
  v10 = *MEMORY[0x29EDCA608];
  result = SuplVersionNegotiation::GetInstance(this);
  v2 = atomic_load(result + 1);
  v3 = v2 == 255;
  v4 = 1;
  if (v3)
  {
    v4 = 2;
  }

  v5 = atomic_load(&result[v4]);
  if (v5 > 2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "Reset", 770);
      return LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }
  }

  else
  {
    v6 = atomic_load(result + 3);
    if (v6)
    {
      atomic_store(2u, result + 2);
    }

    atomic_store(0xFFu, result + 1);
  }

  return result;
}

BOOL NK_Crude_Apx_Pos_Core(uint64_t a1)
{
  v4 = MEMORY[0x2A1C7C4A8](a1);
  v503 = v6;
  v504 = v5;
  v505 = v7;
  v520 = v8;
  v538 = v9;
  v11 = v10;
  v556 = v12;
  v510 = v4;
  v667[48] = *MEMORY[0x29EDCA608];
  v562 = 0uLL;
  *&v563 = 0.0;
  __x = 0uLL;
  v572 = 0.0;
  v570 = 0;
  v568 = 0u;
  v569 = 0u;
  v509 = 0u;
  v13 = &unk_2A1928000;
  v14 = byte_2A1939000;
  if (g_Enable_Event_Log >= 2u)
  {
    v509 = vdupq_n_s32((*&g_MacClockTicksToMsRelation * mach_continuous_time()));
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = &(*v510)[2];
  do
  {
    if (v11[v15] == 3)
    {
      ++v17;
    }

    if (*(v18 - 2) && *(v18 - 1) && *v18)
    {
      ++v16;
    }

    ++v15;
    v18 += 3;
  }

  while (v15 != 48);
  v541 = v11;
  v502 = v16;
  v19 = Centroid_SV_Pos(v510, 0x30u, v576);
  if (v19)
  {
    *&v576[24] = 0;
    v577 = 0uLL;
    v573 = *v576;
    v574 = *&v576[16];
    v575 = 0uLL;
  }

  else
  {
    v574 = 0u;
    v575 = 0u;
    v573 = 0u;
  }

  v506 = v509;
  if (g_Enable_Event_Log >= 2u)
  {
    v20 = mach_continuous_time();
    v21 = v509;
    v21.i32[1] = (*&g_MacClockTicksToMsRelation * v20);
    v506 = v21;
  }

  v22 = 0uLL;
  xmmword_2A1938F80 = 0u;
  *&dword_2A1938F90 = 0u;
  *(&xmmword_2A1938F58 + 8) = 0u;
  *&byte_2A1938F70 = 0u;
  xmmword_2A1938F40 = 0u;
  *&qword_2A1938F50 = 0u;
  if (v17 > 2)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  gDebug = 0uLL;
  unk_2A1938F30 = 0uLL;
  if (v23 != 1)
  {
    if (!v19)
    {
      v67 = 0;
      goto LABEL_222;
    }

    goto LABEL_139;
  }

  byte_2A1938F7E = 1;
  *v565 = *v576;
  v566 = *&v576[16];
  v567 = v577;
  bzero(v581, 0xA80uLL);
  v25 = 0;
  v26 = 0;
  v632 = 0;
  memset(v628, 0, sizeof(v628));
  memset(v629, 0, 345);
  v634 = 0;
  v631 = 0;
  v633 = 0;
  v645 = 0u;
  v646 = 0u;
  v647 = 0u;
  v648 = 0u;
  v649 = 0u;
  v650 = 0u;
  v651 = 0u;
  v652 = 0u;
  v653 = 0u;
  v654 = 0u;
  v655 = 0u;
  v656 = 0u;
  v637 = 1;
  v639 = &v623;
  v638 = &v578;
  v640 = v667;
  v641 = &v618;
  v642 = &v604;
  v636 = 0xFFFFFFFF00000000;
  v644 = 0u;
  v643 = 0u;
  v635 = 1;
  v630 = 0;
  dword_2A1938F68 = 0;
  memset(v579, 0, sizeof(v579));
  v578 = 0u;
  v603 = 0.0;
  v602 = 0u;
  v601 = 0u;
  v27 = &(*v510)[2];
  v28 = -1;
  v29 = 592;
  memset(__b, 0, sizeof(__b));
  do
  {
    v667[v25] = 1.0;
    if (v541[v25] == 3 && *(v27 - 2) && *(v27 - 1) && *v27)
    {
      *(&v579[-1] + v25) = 1;
      *(v628[0].f64 + v29) = 1;
      ++v26;
      *(v556 + v25) = 1;
    }

    else if (v28 == -1)
    {
      HIDWORD(v636) = v25;
      v28 = v25;
    }

    ++v25;
    v29 += 4;
    v27 += 3;
  }

  while (v25 != 48);
  *(&v633 + 3) = -1;
  LODWORD(v633) = -16645888;
  v30 = 3;
  HIBYTE(v633) = 3;
  if (v26)
  {
    BYTE3(v633) = 3;
    v30 = 4;
    HIBYTE(v633) = 4;
  }

  LODWORD(v634) = 2;
  if (v26 < 3)
  {
LABEL_102:
    v82 = 0;
    goto LABEL_118;
  }

  v31 = 0;
  v32 = 0.0;
  while (2)
  {
    v33 = *v576;
    v34 = *&v576[8];
    *v606 = *v576;
    v35 = *&v576[16];
    *&v606[16] = *&v576[16];
    ECEF2Geo(v606, &WGS84_Datum, v598);
    v36 = *&v598[2];
    v37 = -6.28318531;
    if (*&v598[2] >= 3.14159265 || (v37 = 6.28318531, *&v598[2] < -3.14159265))
    {
      v36 = *&v598[2] + v37;
      *&v598[2] = *&v598[2] + v37;
    }

    v38 = __sincos_stret(*v598);
    v39 = __sincos_stret(v36);
    v40 = 0;
    *__b = -(v38.__sinval * v39.__cosval);
    *(__b + 1) = -(v38.__sinval * v39.__sinval);
    *&__b[1] = v38.__cosval;
    *(&__b[1] + 1) = -v39.__sinval;
    v601 = *&v39.__cosval;
    *&v602 = -(v38.__cosval * v39.__cosval);
    *(&v602 + 1) = -(v38.__cosval * v39.__sinval);
    v603 = -v38.__sinval;
    v41 = &(*v510)[2];
    v42 = &v581[2];
    do
    {
      if (*(v638 + v40) != 1)
      {
        goto LABEL_50;
      }

      v43 = *(v41 - 1);
      v44.i64[0] = v43;
      v44.i64[1] = SHIDWORD(v43);
      *v592 = vcvtq_f64_s64(v44);
      v593 = *v41;
      v594.f64[0] = v33;
      v594.f64[1] = v34;
      v595 = v35;
      v45 = Comp_SVrange_Sag_Corr(v596, v564, &v594, v592);
      *(v42 - 1) = *v596;
      *v42 = v597;
      v46 = *(v556 + v40);
      v47 = 0.0;
      if (v46 > 2)
      {
        if (v46 != 5)
        {
          if (v46 == 4)
          {
            LOBYTE(v48) = BYTE5(v633);
            if (SBYTE5(v633) < 1)
            {
              goto LABEL_49;
            }

LABEL_48:
            v47 = *&v576[8 * v48];
            goto LABEL_49;
          }

          if (v46 != 3)
          {
            goto LABEL_49;
          }
        }

LABEL_46:
        v48 = SBYTE3(v633);
        goto LABEL_47;
      }

      if (v46 == 1)
      {
        goto LABEL_46;
      }

      if (v46 != 2)
      {
        goto LABEL_49;
      }

      v48 = SBYTE4(v633);
LABEL_47:
      if (v48 > 0)
      {
        goto LABEL_48;
      }

LABEL_49:
      v639[v40] = v520[v40] - v45 - v47;
LABEL_50:
      ++v40;
      v42 += 7;
      v41 += 3;
    }

    while (v40 != 48);
    if (v26 > 4)
    {
      HIDWORD(v636) = -1;
    }

    else
    {
      v49 = SHIDWORD(v636);
      *(v638 + SHIDWORD(v636)) = 1;
      v50 = v639;
      v596[0] = 0;
      LODWORD(v594.f64[0]) = 0;
      v592[0] = 0;
      v564[0] = 0;
      *v606 = v33;
      *&v606[8] = v34;
      *&v606[16] = v35;
      ECEF2Geo(v606, &WGS84_Datum, v598);
      v52 = *&v598[2];
      v53 = -6.28318531;
      if (*&v598[2] >= 3.14159265 || (v53 = 6.28318531, *&v598[2] < -3.14159265))
      {
        v52 = *&v598[2] + v53;
        *&v598[2] = *&v598[2] + v53;
      }

      v54 = &v581[7 * v49];
      LODWORD(v51) = vcvtd_n_s64_f64(*v598, 0xFuLL);
      v55 = Taylor_sin_cos(v51, v596, &v594);
      LODWORD(v55) = vcvtd_n_s64_f64(v52, 0xFuLL);
      Taylor_sin_cos(v55, v592, v564);
      v56 = vcvtd_n_f64_s32(v592[0] * LODWORD(v594.f64[0]), 0x1EuLL);
      v57 = vcvtd_n_f64_s32(v596[0], 0xFuLL);
      *v54 = vcvtd_n_f64_s32(LODWORD(v594.f64[0]) * v564[0], 0x1EuLL);
      v54[1] = v56;
      v54[2] = v57;
      v50[v49] = v599;
      if (v26 == 4)
      {
        v640[SHIDWORD(v636)] = 1000000.0;
      }
    }

    v58 = NK_Least_Squares_Core(v581, __b, v30, 0, 0, &v658, &v664, &v580, v628);
    v59 = 0;
    v60 = 0.0;
    do
    {
      v61 = *(&v633 + v59);
      if ((v61 & 0x8000000000000000) == 0)
      {
        v62 = v628[0].f64[v61];
        *&v576[8 * v61] = *&v576[8 * v61] + v62;
        v60 = v60 + v62 * v62;
      }

      ++v59;
    }

    while (v59 != 7);
    v63 = v60 - v32 <= 2500.0 || v31 == 0;
    v64 = v63;
    v65 = v64 & v58;
    ++byte_2A1938F70;
    if (v65 == 1)
    {
      v66 = v31 + 1;
      if (v31 > 8)
      {
        goto LABEL_78;
      }

      ++v31;
      v32 = v60;
      if (v60 <= 10000.0)
      {
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  v66 = v31;
LABEL_78:
  if (v66 > 9)
  {
    v68 = v65;
  }

  else
  {
    v68 = 0;
  }

  if (v60 > 90000.0)
  {
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  v70 = v69 ^ 1;
  if ((v69 & 1) != 0 || v65 != 1)
  {
    if (v69)
    {
      v71 = 1;
    }

    else
    {
      v71 = 2;
    }

    dword_2A1938F68 = v71;
  }

  v72 = v65 & v70;
  v13 = &unk_2A1928000;
  if (SHIDWORD(v636) >= 1)
  {
    *(&v579[-1] + HIDWORD(v636)) = 0;
  }

  if (!v72)
  {
    goto LABEL_102;
  }

  v73 = 0;
  v74 = v633;
  v75 = &v576[8 * v633];
  while (1)
  {
    if (*(&v579[-1] + v73) == 1)
    {
      v76 = v510[v73];
      v77.i64[0] = *v76;
      v77.i64[1] = HIDWORD(*v76);
      *v598 = vcvtq_f64_s64(v77);
      v599 = v76[2];
      v78 = 2;
      do
      {
        *&v606[8 * v78] = *&v598[2 * v78] - v75[v78];
        v79 = v78-- + 1;
      }

      while (v79 > 1);
      v80 = 0;
      v81 = 0.0;
      do
      {
        v81 = v81 + v75[v80] * *&v606[v80 * 8];
        ++v80;
      }

      while (v80 != 3);
      if (v81 < 0.0)
      {
        v82 = 0;
        v85 = &unk_2A1938000;
        v86 = 3;
        goto LABEL_117;
      }
    }

    if (v73 >= 0x2F)
    {
      break;
    }

    ++v73;
  }

  v83 = 0;
  v84 = 0.0;
  do
  {
    if (*(&v579[-1] + v83) == 1)
    {
      v84 = v84 + *&v618.i64[v83] * *&v618.i64[v83];
    }

    ++v83;
  }

  while (v83 != 48);
  if (v84 <= 225000000.0)
  {
    *v598 = *v75;
    v87 = 8 * v74 + 16;
    v599 = *&v576[v87];
    ECEF2Geo(v598, &WGS84_Datum, &__x);
    v88 = v572;
    dword_2A1938F9C = v572;
    v89 = __sincos_stret(*__x.i64);
    v90 = __sincos_stret(*&__x.i64[1]);
    *v606 = -(v89.__sinval * v90.__cosval);
    *&v606[8] = -(v89.__sinval * v90.__sinval);
    *&v606[16] = v89.__cosval;
    *&v606[24] = -v90.__sinval;
    v607 = *&v90.__cosval;
    *v608.i64 = -(v89.__cosval * v90.__cosval);
    *&v608.i64[1] = -(v89.__cosval * v90.__sinval);
    *v609.i64 = -v89.__sinval;
    Comp_NEDvar_UDU(v629, HIBYTE(v633), v74, v606, &v628[3].f64[v74 + 1]);
    v91 = *(&v628[3].f64[1] + v87);
    if (v91 < 100000000.0)
    {
      v92 = U4sqrt(v91);
      if (-500 - 1000 * v92 < v88 && 1000 * v92 + 18000 > v88)
      {
        v82 = 1;
        goto LABEL_118;
      }
    }

    v82 = 0;
    v85 = &unk_2A1938000;
    v86 = 5;
  }

  else
  {
    v82 = 0;
    v85 = &unk_2A1938000;
    v86 = 4;
  }

LABEL_117:
  v85[986] = v86;
LABEL_118:
  if (g_Enable_Event_Log >= 2u)
  {
    v94 = mach_continuous_time();
    v95 = v506;
    v95.i32[2] = (*&g_MacClockTicksToMsRelation * v94);
    v506 = v95;
  }

  if (v82)
  {
    v96 = CompVelDoLs(v510, v504, v505, v576, &v568, v24);
  }

  else
  {
    v96 = 0;
  }

  if (g_Enable_Event_Log >= 2u)
  {
    v97 = mach_continuous_time();
    v98 = v506;
    v98.i32[3] = (*&g_MacClockTicksToMsRelation * v97);
    v506 = v98;
  }

  if (v96)
  {
    v99 = __sincos_stret(*__x.i64);
    v100 = __sincos_stret(*&__x.i64[1]);
    v101 = 0;
    v581[0] = -(v99.__sinval * v100.__cosval);
    v581[1] = -(v99.__sinval * v100.__sinval);
    v102 = &v581[2];
    v581[2] = v99.__cosval;
    v581[3] = -v100.__sinval;
    v582 = *&v100.__cosval;
    *&v583 = -(v99.__cosval * v100.__cosval);
    *(&v583 + 1) = -(v99.__cosval * v100.__sinval);
    *&v584 = -v99.__sinval;
    v103 = v568;
    v104 = *&v569;
    do
    {
      v105 = *(v102 - 1) * *(&v103 + 1) + *(v102 - 2) * *&v103;
      v106 = *v102;
      v102 += 3;
      v628[0].f64[v101++] = v105 + v106 * v104;
    }

    while (v101 != 3);
    v107 = v628[0].f64[1] * v628[0].f64[1] + v628[0].f64[0] * v628[0].f64[0];
    v108 = fabs(v628[1].f64[0]);
    v109 = v108 < 10.0 && v107 < 4556.25;
    HIDWORD(xmmword_2A1938F80) = sqrt(v107);
    dword_2A1938F90 = v108;
    if (!v109)
    {
      dword_2A1938F68 = 6;
    }
  }

  else
  {
    v109 = 0;
  }

  if (g_Enable_Event_Log >= 2u)
  {
    v110 = mach_continuous_time();
    v111 = v509;
    v111.i32[0] = (*&g_MacClockTicksToMsRelation * v110);
    v509 = v111;
  }

  if (v109)
  {
    *v503 = __x;
    v112 = 1;
    byte_2A1938F7D = 1;
    goto LABEL_630;
  }

  *v576 = *v565;
  *&v576[16] = v566;
  v577 = v567;
  v22 = 0uLL;
  v568 = 0u;
  v569 = 0u;
  v570 = 0;
  v572 = 0.0;
  __x = 0uLL;
  dword_2A1938F6C = dword_2A1938F68;
LABEL_139:
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v614 = 0;
  v613 = v22;
  v612 = v22;
  v611 = v22;
  v610 = v22;
  v609 = v22;
  v608 = v22;
  v607 = v22;
  v616 = &v604;
  v617 = __b;
  v116 = &(*v504)[2];
  v615 = -1;
  v117 = &(*v510)[2];
  *&v606[16] = v22;
  *v606 = v22;
  while (2)
  {
    v118 = *v117;
    if (*(v117 - 1))
    {
      v119 = *(v117 - 1);
LABEL_144:
      v120 = *(v117 - 2);
      v117 += 3;
      v121 = &v628[0].f64[v113];
      *v121 = v120;
      v121[1] = v119;
      v122 = v118;
      v121[2] = v118;
      v123 = *(v116 - 2);
      v667[v115] = v505[v115];
      v124 = v123;
      v125 = &v623.i64[v113];
      v126 = v119 * v119 + v120 * v120;
      v127 = *(v116 - 1);
      v128 = v126 + v122 * v122;
      v129 = *v116;
      *&v618.i64[v115++] = v128;
      *v125 = v124;
      v125[1] = v127;
      v125[2] = v129;
      v114 += 8;
      v113 += 3;
      v116 += 3;
      if (v115 == 48)
      {
        memset_pattern16(__b, &unk_2997622C0, 0x180uLL);
LABEL_146:
        v553 = 0;
        goto LABEL_147;
      }

      continue;
    }

    break;
  }

  v119 = 0.0;
  if (v118)
  {
    goto LABEL_144;
  }

  v553 = v115 == 0;
  if (!v115)
  {
    v615 = 0;
    goto LABEL_517;
  }

  memset_pattern16(__b, &unk_2997622C0, v114);
  if (v115 >= 0x30)
  {
    goto LABEL_146;
  }

  v615 = v115;
  if (v115 == 5)
  {
    v553 = 0;
    *(&v601 + 1) = 0x3FF9000000000000;
    LODWORD(v115) = 5;
    goto LABEL_147;
  }

  if (v115 == 4)
  {
    v553 = 0;
    *&v601 = 0x3F647AE147AE147CLL;
    LODWORD(v115) = 4;
    goto LABEL_147;
  }

  if (v115 != 3)
  {
    if (v115 > 7)
    {
      v553 = 0;
      v424 = 0x4039000000000000;
      goto LABEL_518;
    }

LABEL_517:
    v424 = 0x4019000000000000;
LABEL_518:
    *(__b + v115) = v424;
    goto LABEL_147;
  }

  v553 = 0;
  *(&__b[1] + 1) = 0x3F647AE147AE147CLL;
  LODWORD(v115) = 3;
LABEL_147:
  v664 = *v576;
  *&v665 = *&v576[16];
  WGS84_ECEF2Geo(v664.f64, __x.i64);
  v130 = 0;
  *&v576[8] = __x;
  *v576 = 0x415854A640000000;
  *&v576[24] = 0;
  do
  {
    v131 = *v576;
    v132 = __sincos_stret(*&v576[8]);
    v133 = __sincos_stret(*&v576[16]);
    *v658.i64 = v132.__cosval * v133.__cosval;
    *&v658.i64[1] = v132.__cosval * v133.__sinval;
    v659.i64[0] = *&v132.__sinval;
    *&v659.i64[1] = -(v132.__sinval * v133.__cosval);
    *v660.i64 = -(v132.__sinval * v133.__sinval);
    v660.i64[1] = *&v132.__cosval;
    v661 = -(v132.__cosval * v133.__sinval);
    v662 = v132.__cosval * v133.__cosval;
    v663 = 0;
    if (!v553)
    {
      v134 = 0;
      v135 = -v131;
      v136 = v628;
      v137 = &v623;
      v138 = *&v576[24];
      do
      {
        v139 = 0;
        v140 = 0.0;
        v141 = &v659.i64[1];
        v142 = 0.0;
        v143 = 0.0;
        v144 = 0.0;
        v145 = 0.0;
        v146 = 0.0;
        v147 = 0.0;
        do
        {
          v148 = *(v141 - 3);
          v149 = *&v137->i64[v139];
          v147 = v147 + v148 * v149;
          v145 = v145 + *v141 * v149;
          v150 = v141[3];
          v143 = v143 + v150 * v149;
          v151 = v136->f64[v139];
          v146 = v146 + v148 * v151;
          v144 = v144 + *v141 * v151;
          v142 = v142 + v150 * v151;
          v140 = v140 + v151 * v149;
          ++v139;
          ++v141;
        }

        while (v139 != 3);
        v152 = *&v618.i64[v134] + v131 * v131 + v131 * -2.0 * v146;
        v153 = sqrt(v152);
        v154 = v152 * v153;
        v155 = 1.0 / v153;
        v156 = -(v140 - v147 * v131);
        v157 = v156 / v154;
        v158 = -((v131 - v146) * v157 + -v147 * v155);
        v159 = &v581[3 * v134];
        v160 = -(v157 * v131);
        *v159 = v158;
        v159[1] = -(v144 * v160 + v155 * v135 * v145);
        v159[2] = -(v142 * v160 + v155 * v135 * v143);
        v604.f64[v134] = v667[v134] - (v138 - v156 * v155);
        ++v134;
        v136 = (v136 + 24);
        v137 = (v137 + 24);
      }

      while (v134 != v115);
    }

    v161 = v615;
    if ((v615 & 0x80000000) == 0)
    {
      v162 = &v581[3 * v615];
      v162[1] = 0.0;
      v162[2] = 0.0;
      *v162 = -1.0;
      v604.f64[v161] = -(v131 + sqrt((v132.__cosval * v132.__cosval + v132.__sinval * v132.__sinval * 0.986656055) / (v132.__cosval * v132.__cosval + v132.__sinval * v132.__sinval * 0.99330562)) * -6378137.0);
    }

    v163 = CAP_LSQ4_Core(v581, v115, v606);
    v164 = 0;
    ++byte_2A1938F71;
    v165 = 0.0;
    do
    {
      v166 = *&v606[8 * v164];
      v167 = *&v576[8 * v164] + v166;
      *&v576[8 * v164] = v167;
      if ((v164 - 1) > 1)
      {
        v165 = v165 + v166 * v166;
      }

      else
      {
        if (v167 > 3.14159265)
        {
          do
          {
            v167 = v167 + -6.28318531;
          }

          while (v167 > 3.14159265);
          *&v576[8 * v164] = v167;
        }

        if (v167 < -3.14159265)
        {
          do
          {
            v167 = v167 + 6.28318531;
          }

          while (v167 < -3.14159265);
          *&v576[8 * v164] = v167;
        }

        v165 = v165 + v166 * v166 * 1.0e10;
      }

      ++v164;
    }

    while (v164 != 4);
    if (v165 > 40000.0)
    {
      v168 = v163;
    }

    else
    {
      v168 = 0;
    }

    v169 = v168 != 1 || v130++ >= 0xE;
  }

  while (!v169);
  if (v163)
  {
    v170 = 0.0;
    v13 = &unk_2A1928000;
    v14 = byte_2A1939000;
    if (!v553)
    {
      v171 = &v604;
      v172 = v115;
      do
      {
        v173 = v171->f64[0];
        v171 = (v171 + 8);
        v170 = v170 + v173 * v173;
        --v172;
      }

      while (v172);
    }

    if (v170 / v115 > 10000.0)
    {
      v174 = 4;
      goto LABEL_181;
    }

    v175 = 1;
  }

  else
  {
    v174 = 2;
    v13 = &unk_2A1928000;
    v14 = byte_2A1939000;
LABEL_181:
    v175 = 0;
    dword_2A1938F68 = v174;
  }

  __x = *&v576[8];
  v572 = 0.0;
  Geo2ECEF(&__x, &WGS84_Datum, &v664);
  *v576 = v664;
  *&v576[16] = v665;
  if (v115 && v175)
  {
    v176 = 0;
    v177 = v628;
    while (1)
    {
      v178 = 2;
      do
      {
        *&v658.i64[v178] = v177->f64[v178] - *&v576[8 * v178];
        v179 = v178-- + 1;
      }

      while (v179 > 1);
      v180 = 0;
      v181 = 0.0;
      do
      {
        v181 = v181 + *&v576[v180 * 8] * *&v658.i64[v180];
        ++v180;
      }

      while (v180 != 3);
      v182 = 0.0;
      v183 = &v576[16];
      for (i = 4; i > 1; --i)
      {
        v185 = *v183--;
        v182 = v182 + v185 * v185;
      }

      v186 = v181 / sqrt(v182);
      if (v186 < 0.0)
      {
        v187 = 0.0;
        v188 = 2;
        do
        {
          v187 = v187 + *&v658.i64[v188] * *&v658.i64[v188];
          v189 = v188-- + 1;
        }

        while (v189 > 1);
        if (v186 / sqrt(v187) < -0.087155743)
        {
          break;
        }
      }

      ++v176;
      v177 = (v177 + 24);
      if (v176 == v115)
      {
        goto LABEL_205;
      }
    }

    dword_2A1938F68 = 3;
LABEL_221:
    v67 = 0;
    __x = 0uLL;
    v1 = 0.0;
    v2 = 0.0;
    v3 = 0.0;
    v572 = 0.0;
  }

  else
  {
    if (!v175)
    {
      goto LABEL_221;
    }

LABEL_205:
    v190 = 1;
    v191 = 6;
    v192 = 2;
    v193 = 6;
    v194 = 1;
    do
    {
      v195 = v194 + v194 * v194;
      v196 = v194 + (v195 >> 1);
      v197 = v195 >> 1;
      v198 = v191;
      v199 = v193;
      v200 = v192;
      v201 = v190;
      v202 = v194;
      do
      {
        if (v194 == v202)
        {
          v203 = *&v607.i64[v196];
          v204 = (v202 + v202 * v202) >> 1;
        }

        else
        {
          v204 = (v202 + v202 * v202) >> 1;
          v205 = v194 + v204;
          if (v194 >= v202)
          {
            v205 = v197 + v202;
          }

          v203 = *&v607.i64[v202 + v204] * *&v607.i64[v205];
        }

        v206 = v202 - 1;
        v207 = v198;
        v208 = v199;
        v209 = v200;
        v210 = v201;
        do
        {
          v211 = v210 + 1;
          v212 = (v210 + 2) * (v210 + 1);
          v213 = *&v607.i64[v209 + (v207 >> 1)] * *&v607.i64[v194 + (v212 >> 1)];
          v214 = v202 + (v212 >> 1);
          if (v211 <= v202)
          {
            v214 = v211 + v204;
          }

          v203 = v203 + v213 * *&v607.i64[v214];
          ++v209;
          v207 += v208;
          v208 += 2;
          v210 = v211;
        }

        while (v211 < 3);
        *&v658.i64[2 * v194 - 2 + v206] = v203;
        *&v658.i64[2 * v206 - 1 + v194] = v203;
        ++v201;
        ++v200;
        v198 += v199;
        v199 += 2;
        v63 = v202 == 2;
        v202 = 2;
      }

      while (!v63);
      ++v192;
      ++v190;
      v191 += v193;
      v193 += 2;
      v194 = 2;
    }

    while (v192 != 4);
    v215 = cos(*__x.i64);
    v1 = *v658.i64 * 4.06806316e13;
    v2 = *&v659.i64[1] * (v215 * v215 * 4.06806316e13);
    v3 = fabs(v215) * 4.06806316e13 * *&v658.i64[1];
    v67 = 1;
  }

LABEL_222:
  if (v13[547] >= 2u)
  {
    v216 = mach_continuous_time();
    v217 = v509;
    v217.i32[1] = (*(v14 + 200) * v216);
    v509 = v217;
  }

  if (!v67)
  {
    *v576 = v573;
    *&v576[16] = v574;
    v577 = v575;
LABEL_274:
    v251 = 0;
    v578 = xmmword_2997622A0;
    v252 = v576;
    do
    {
      v581[0] = 0.0;
      v253 = R8_EQ(v252, v581);
      if (v251 > 3)
      {
        break;
      }

      ++v251;
      ++v252;
    }

    while (v253);
    v254 = 0;
    v255 = 0;
    v256 = 0;
    v590 = 0u;
    v591 = 0u;
    v588 = 0u;
    v589 = 0u;
    v586 = 0u;
    v587 = 0u;
    v584 = 0u;
    v585 = 0u;
    v582 = 0u;
    v583 = 0u;
    memset(v581, 0, sizeof(v581));
    memset(__b, 0, 20);
    v664 = 0uLL;
    v257 = v510;
    v258 = &(*v510)[2];
    LODWORD(v665) = 0;
    do
    {
      if (*(v258 - 2) && *(v258 - 1) && *v258)
      {
        v259 = (v256 + 1);
        if (v256 <= 4)
        {
          v255 |= *(v556 + v254) == 2;
        }
      }

      else
      {
        v259 = v256;
      }

      ++v254;
      v258 += 3;
      v256 = v259;
    }

    while (v254 != 48);
    if (v259 < 1)
    {
      goto LABEL_311;
    }

    v260 = 0;
    v261 = 0;
    v262 = 0;
    v263 = 1;
    v264 = v259;
    while (1)
    {
      v265 = v541[v260];
      if (v265 == 1)
      {
        break;
      }

      if (v265 == 2)
      {
        v268 = *v541;
        if (v268 == 3)
        {
          goto LABEL_295;
        }

        if (v268 == 2)
        {
          v268 = 6;
LABEL_295:
          *(v581 + v260) = v268;
        }

        ++v261;
LABEL_304:
        if (v260 >= 5)
        {
          goto LABEL_309;
        }

LABEL_307:
        v267 = 5;
        v266 = 2;
LABEL_308:
        *(__b + v260) = v266;
        v263 *= v267;
        goto LABEL_309;
      }

      if (v265 == 3)
      {
        ++v262;
        *(v581 + v260) = 0;
        if (v260 < 5)
        {
          v266 = 0;
          v267 = 1;
          goto LABEL_308;
        }
      }

      else
      {
        *(v581 + v260) = 22;
        if (v260 <= 4)
        {
          goto LABEL_307;
        }
      }

LABEL_309:
      if (v259 == ++v260)
      {
        if (v259 < 4)
        {
LABEL_311:
          v272 = 0;
          v273 = byte_2A1939000;
          goto LABEL_608;
        }

        if (v259 >= 5)
        {
          v274 = 5;
        }

        else
        {
          v274 = v259;
        }

        v275 = v262 + v261 >= v274 || v253;
        v530 = v259;
        v528 = v263;
        v532 = v262;
        v550 = v274;
        if (v275)
        {
          memset(v606, 0, 20);
        }

        else
        {
          v400 = 0;
          *v623.i8 = vmovn_s64(vcvtq_s64_f64(*v576));
          v623.i32[2] = *&v576[16];
          do
          {
            *(v628[0].f64 + v400 * 4) = v623.i32[v400] / 1000;
            ++v400;
          }

          while (v400 != 3);
          v401 = 0;
          v402 = 0;
          v403 = 1;
          v404 = v510;
          do
          {
            v405 = 0;
            v406 = 0;
            do
            {
              v407 = (*v404)[v405] / 1000 - *(v628[0].f64 + v405 * 4);
              v406 += v407 * v407;
              ++v405;
            }

            while (v405 != 3);
            v408 = v520[v401] / -1000;
            v409 = U4sqrt(v406);
            if (!v401)
            {
              *v606 = 0;
              v402 = v408 + v409;
            }

            v410 = *(v581 + v401);
            if (v410 < 1)
            {
              v411 = 0;
            }

            else
            {
              v411 = (437 * (v408 + v409 - v402) + 65550) >> 17;
              if (v411 >= 0)
              {
                v412 = (437 * (v408 + v409 - v402) + 65550) >> 17;
              }

              else
              {
                v412 = -v411;
              }

              v403 &= v412 <= v410;
            }

            *&v606[4 * v401++] = v411;
            ++v404;
          }

          while (v401 != v550);
          if (v403)
          {
            if (g_Enable_Event_Log >= 2u)
            {
              EvLog_VecI4("SearchPrLs: CheckFit    OK , msCorr_Fit: ", v550, v606);
            }

            v413 = 0;
            v414 = 0;
            do
            {
              v415 = *&v606[4 * v413];
              if (v415 >= 0)
              {
                v416 = *&v606[4 * v413];
              }

              else
              {
                v416 = -v415;
              }

              v417 = *(__b + v413);
              v418 = v416 + v417;
              v419 = *(v581 + v413);
              if (v418 > v419)
              {
                v420 = v417 - v419;
                v421 = v419 - v417;
                if (v415 > 0)
                {
                  v420 = v421;
                }

                *&v606[4 * v413] = v420;
                v414 = 1;
              }

              ++v413;
            }

            while (v550 != v413);
            v257 = v510;
            v274 = v550;
            if ((v414 & (g_Enable_Event_Log > 1u)) == 1)
            {
              EvLog_VecI4("SearchPrLs: CheckFit    OK ADJ , msCorr_Fit: ", v550, v606);
            }
          }

          else
          {
            v274 = v550;
            if (g_Enable_Event_Log >= 2u)
            {
              EvLog_VecI4("SearchPrLs: CheckFit   FAIL , Unused msCorr_Fit: ", v550, v606);
            }

            memset(v606, 0, 20);
            v257 = v510;
          }
        }

        v548 = (v274 - 1);
        v425 = v274;
        v426 = &v628[1];
        v427 = &(*v257)[2];
        do
        {
          v428 = *(v427 - 1);
          v429.i64[0] = v428;
          v429.i64[1] = SHIDWORD(v428);
          v426[-1] = vcvtq_f64_s64(v429);
          v430 = *v427;
          v427 += 3;
          v426->f64[0] = v430;
          v426 = (v426 + 24);
          --v425;
        }

        while (v425);
        v658 = 0uLL;
        v659.i32[0] = 0;
        if (v262 <= 0)
        {
          v435 = v262;
        }

        else
        {
          if (v262 >= v274)
          {
            LODWORD(v431) = v274;
          }

          else
          {
            LODWORD(v431) = v262;
          }

          if (v431 <= 1)
          {
            v431 = 1;
          }

          else
          {
            v431 = v431;
          }

          v432 = v667;
          v433 = v520;
          do
          {
            v434 = *v433++;
            *v432++ = v434;
            --v431;
          }

          while (v431);
          v435 = v262;
        }

        v561 = 0;
        v436 = 0;
        v540 = v274 - 1;
        v535 = &v657[v274];
        v537 = v274 - v435;
        v531 = __b[0];
        v437 = *&v576[24];
        while (2)
        {
          v555 = v436;
          v598[0] = 0;
          v596[0] = 0;
          if (v262 < v274)
          {
            v438 = &v658.i32[v435];
            v439 = &v606[4 * v435];
            v440 = &v664 + v435;
            v441 = &v520[v435];
            v442 = &v667[v435];
            v443 = v537;
            do
            {
              v445 = *v438++;
              v444 = v445;
              v446 = *v439++;
              v447 = v446 + v444;
              *v440++ = v447;
              v448 = *v441++;
              *v442++ = (v448 + 299792 * v447);
              --v443;
            }

            while (v443);
          }

          ++v561;
          v619.i64[1] = v437;
          v618 = *v576;
          v619.i64[0] = *&v576[16];
          if (!CompPr_LSQ4(v628, v667, v274, v618.i64, v598, v596, v604.f64))
          {
            v465 = 0;
            goto LABEL_572;
          }

          if (v259 >= 6)
          {
            v449 = 0;
            v450 = 0;
            v451 = *v618.i64;
            v565[0] = *v618.i64 / 1000;
            v565[1] = *&v618.i64[1] / 1000;
            v565[2] = *v619.i64 / 1000;
            do
            {
              v452 = (*v257)[v449] / 1000 - v565[v449];
              v450 += v452 * v452;
              ++v449;
            }

            while (v449 != 3);
            v259 = 0;
            v453 = *v520 / 1000 - U4sqrt(v450);
            do
            {
              v454 = 0;
              v455 = 0;
              v457 = *(v581 + v259);
              do
              {
                v458 = (*v257)[v454] / 1000 - v565[v454];
                v455 += v458 * v458;
                ++v454;
              }

              while (v454 != 3);
              v456 = v520[v259];
              v459 = v453 + v456 / -1000 + U4sqrt(v455);
              if (v459 < 0)
              {
                v459 = -v459;
              }

              if (v459 < 0x97)
              {
                v462 = 0;
              }

              else
              {
                v460 = v459 - 450;
                if (v459 < 0x1C2)
                {
                  v460 = 0;
                }

                v461 = (v460 + 299) / 0x12Cu;
                v459 = v459 - 300 * v461 - 300;
                v462 = v461 + 1;
              }

              if (v459 < 0)
              {
                v459 = -v459;
              }

              v464 = v462 > v457 || v459 > 0xF;
              if (++v259 >= v264)
              {
                break;
              }

              ++v257;
            }

            while (!v464);
            if (v464)
            {
              EvLog_v("SearchPrLs:  BAD %d %d %d  %g %g %g   ClkB %g   ResSq %d", v259, v561, v528, v604.f64[0] * 57.2957795, v604.f64[1] * 57.2957795, v605, v451, v596[0]);
              v465 = 0;
              v257 = v510;
              LODWORD(v259) = v530;
              v262 = v532;
              goto LABEL_571;
            }

            LODWORD(v259) = v530;
            v262 = v532;
          }

          v466 = v596[0];
          if (v596[0] <= 0x57E3)
          {
            dword_2A1938F78 = v596[0];
            if (g_Enable_Event_Log >= 2u)
            {
              EvLog_v("SearchPrLs: GOOD %d %d %d  %g %g %g   ClkB %g  ResSq %d", v550, v561, v528, v604.f64[0] * 57.2957795, v604.f64[1] * 57.2957795, v605, *v618.i64, v596[0]);
              EvLog_VecI4("SearchPrLs: GOOD msCorr", v550, &v664);
            }

            __x = v604;
            v572 = v605;
            v465 = 1;
            v257 = v510;
LABEL_571:
            LODWORD(v274) = v550;
LABEL_572:
            v467 = v598[0];
            v658.i32[v548] = (v658.i32[v548] < 1) - v658.i32[v548];
            if (v548 > v262)
            {
              v468 = v540;
              v469 = v658.i32[v540];
              v470 = v535;
              do
              {
                if (v469 <= *(__b + v468))
                {
                  break;
                }

                --v468;
                v469 = (*v470 < 1) - *v470;
                *v470-- = v469;
              }

              while (v468 > v435);
            }

            v436 = v467 + v555;
            if (v262)
            {
              if (v262 >= v274)
              {
                goto LABEL_595;
              }

              v471 = v658.i32[v435];
              v472 = *(__b + v435);
            }

            else
            {
              v471 = v658.i32[0];
              v472 = v531;
            }

            if (v465 & 1 | (v471 > v472) || v436 > 149)
            {
LABEL_595:
              if (v465)
              {
                v272 = 1;
                v13 = &unk_2A1928000;
                v273 = byte_2A1939000;
              }

              else
              {
                if (v259 == 4)
                {
                  v475 = 22500;
                }

                else
                {
                  v475 = 250000 * v274;
                }

                dword_2A1938F78 = v578;
                v13 = &unk_2A1928000;
                v273 = byte_2A1939000;
                if (v578 >= v475)
                {
                  if (g_Enable_Event_Log >= 2u)
                  {
                    v477 = v436;
                    EvLog_v("SearchPrLs: FAIL %d %d %d", v561, v528, v436);
                    LOBYTE(v436) = v477;
                  }

                  v272 = 0;
                }

                else
                {
                  __x = v623;
                  v572 = v624[0];
                  if (g_Enable_Event_Log >= 2u)
                  {
                    v499 = v274;
                    v476 = v436;
                    EvLog_v("SearchPrLs:   OK %d %d %d  %g %g %g   ClkB %g  ResSq %d", v499, v561, v528, *__x.i64 * 57.2957795, *&__x.i64[1] * 57.2957795, v572, *v618.i64, v578);
                    LOBYTE(v436) = v476;
                  }

                  v272 = 1;
                }
              }

              byte_2A1938F7C = v255 & 1;
              byte_2A1938F73 = v272;
              byte_2A1938F74 = v436;
              goto LABEL_608;
            }

            continue;
          }

          break;
        }

        if (v596[0] < v578)
        {
          v473 = 0;
          goto LABEL_589;
        }

        if (v596[0] < DWORD1(v578))
        {
          v473 = 1;
          goto LABEL_589;
        }

        if (v596[0] >= DWORD2(v578))
        {
          if (v596[0] < HIDWORD(v578))
          {
            v473 = 3;
            goto LABEL_590;
          }
        }

        else
        {
          v473 = 2;
LABEL_589:
          memmove(&v624[3 * v473 + 1], &v623 + 24 * v473, 24 * (v473 ^ 3));
          memmove(((&v578 | (4 * v473)) + 4), (&v578 | (4 * v473)), 4 * (v473 ^ 3));
          v262 = v532;
LABEL_590:
          v474 = &v623.i64[3 * v473];
          *v474 = v604;
          v474[2] = v605;
          *(&v578 | (4 * v473)) = v466;
          if (g_Enable_Event_Log >= 2u)
          {
            LODWORD(v274) = v550;
            EvLog_v("SearchPrLs: WAIT %d %d %d  %g %g %g   ClkB %g  ResSq %d", v550, v561, v528, v604.f64[0] * 57.2957795, v604.f64[1] * 57.2957795, v605, *v618.i64, v578);
            EvLog_VecI4("SearchPrLs: WAIT msCorr", v550, &v664);
            v465 = 0;
            v257 = v510;
            goto LABEL_572;
          }
        }

        v465 = 0;
        v257 = v510;
        LODWORD(v274) = v550;
        goto LABEL_572;
      }
    }

    v269 = *v541;
    if (v269 == 2)
    {
      v270 = 14;
    }

    else
    {
      v270 = 22;
    }

    if (v269 == 3)
    {
      v271 = 11;
    }

    else
    {
      v271 = v270;
    }

    *(v581 + v260) = v271;
    goto LABEL_304;
  }

  Comp_ErrorEllipse(v1, v2, v3, &v562, &v562 + 1, &v563);
  xmmword_2A1938F58 = __x;
  if (v502 >= 5)
  {
    v218 = 5;
  }

  else
  {
    v218 = v502;
  }

  if (v218 <= 3)
  {
    v218 = 3;
  }

  v219 = vmulq_n_f64(v562, User_Velocity_Compensation[v218 - 3]);
  v562 = v219;
  v220 = 0.00000320473867 * v219.f64[0];
  v221 = v219.f64[1];
  v222 = vmuld_lane_f64(0.00000320473867 * v219.f64[0], v219, 1);
  if (v502 >= 8)
  {
    v223 = v222 * 0.0016;
    v224 = 2.0;
    if (v222 * 0.0016 <= 2500.0 && v223 * 4.0 >= 2500.0)
    {
      v224 = sqrt(2500.0 / v223);
    }

    v219.f64[0] = v219.f64[0] * v224;
    *&v562 = v219.f64[0];
    v225 = v219.f64[1] * v224;
    goto LABEL_238;
  }

  v225 = 200000.0;
  if (v219.f64[0] < 200000.0)
  {
    *&v562 = 0x41086A0000000000;
    v225 = 200000.0;
    v219.f64[0] = 200000.0;
    goto LABEL_238;
  }

  if (v219.f64[1] < 200000.0 && v222 < 1562500.0)
  {
    if (v220 * 200000.0 > 1562500.0)
    {
      v225 = 1562500.0 / v220;
    }

LABEL_238:
    *(&v562 + 1) = v225;
    v221 = v225;
  }

  if (v221 * (v219.f64[0] * 3.14159265) * 0.000001 > 1562500.0)
  {
    goto LABEL_274;
  }

  *v549 = __x;
  v557 = v219.f64[0];
  v578 = 0uLL;
  *&v579[0] = 0;
  v226 = *&v563;
  bzero(&v623, 0x220uLL);
  v227 = 0;
  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v228 = -83886080;
  do
  {
    v229 = &v623.i8[v227];
    *v229 = 0;
    *(v229 + 2) = v228;
    *(v229 + 3) = v228;
    v227 += 68;
    v228 += 0x10000;
  }

  while (v227 != 544);
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v233 = 0;
  v234 = v581;
  v235 = v628;
  v236 = v510;
  do
  {
    v237 = v510[v230];
    if (*v237)
    {
      if (*(v237 + 4))
      {
        v237 = *(v237 + 8);
        if (v237)
        {
          for (j = 0; j != 3; ++j)
          {
            v239 = (*v236)[j];
            if (v239 > 0)
            {
              v240 = 500;
            }

            else
            {
              v240 = -500;
            }

            *(v235->f64 + j) = (v240 + v239) / 1000;
            v234[j] = v239;
          }

          v241 = 274877907 * (v520[v230] + 500);
          *(__b + v230) = (v241 >> 38) + (v241 >> 63);
          if (*(v538 + 4 * v230) == 1)
          {
            ++v232;
            v237 = 250000;
          }

          else
          {
            v237 = 2250000;
          }

          v231 += v237;
          ++v233;
        }
      }
    }

    ++v230;
    v234 += 3;
    v235 = (v235 + 12);
    ++v236;
  }

  while (v230 != 48);
  v242 = v226 * 0.0174532925;
  v554 = v233;
  if (v233 >= 1)
  {
    v243 = 0;
    while (1)
    {
      v244 = v541[v243];
      if (v244 == 1)
      {
        break;
      }

      if (v244 == 3)
      {
        v246 = 0;
        goto LABEL_267;
      }

      if (v244 != 2)
      {
        break;
      }

      v245 = *v541;
      if (v245 == 3)
      {
        v246 = 2;
        goto LABEL_267;
      }

      if (v245 == 2)
      {
        v246 = 4;
LABEL_267:
        *(v664.f64 + v243) = v246;
      }

      if (v233 == ++v243)
      {
        goto LABEL_269;
      }
    }

    v246 = 22;
    goto LABEL_267;
  }

LABEL_269:
  v500 = v232;
  v501 = v231;
  *&v578 = vmovn_s64(vcvtq_n_s64_f64(*v549, 0xFuLL));
  v247 = v578;
  if (v578 < 0)
  {
    v247 = -v578;
  }

  LODWORD(v237) = vcvtd_n_s64_f64(v242, 0xFuLL);
  DWORD2(v578) = ((40839 * (v247 >> 1)) >> 14) + 6335439;
  HIDWORD(v578) = v237;
  Taylor_sin_cos(v237, v579, v579 + 1);
  v248 = HIDWORD(v578);
  v534 = v233;
  if (v242 < 0.785398163 || v242 > 2.35619449)
  {
    v249 = -v242;
    v248 = (HIDWORD(v578) - 51472);
    v250 = v221;
  }

  else
  {
    v249 = 1.57079633 - v242;
    v250 = v557;
    v557 = v221;
  }

  Taylor_sin_cos(v248, v579, v579 + 1);
  v276 = v557 * v557 / (v250 * v250);
  v277 = tan(v249);
  v278 = v277 * v277 + v276;
  v279 = (v250 * sqrt(v278));
  *v280.i64 = cos(v249);
  if (v279 >= 1)
  {
    v282 = 0;
    v508 = (25000.0 / fabs(*v280.i64));
    v507 = v279 - v508;
    v514 = SDWORD2(v578) >> 6;
    v515 = v579[0];
    v512 = v233 - 1;
    v511 = v628 + 12 * v233 - 4;
    v283 = v557 * v557 * v278;
    v284 = DWORD1(v579[0]);
    v513 = DWORD1(v579[0]);
    v285 = v578;
    v527 = DWORD2(xmmword_2A1938F80);
    v529 = DWORD1(xmmword_2A1938F80);
    v525 = xmmword_2A1938F80;
    v523 = DWORD1(gDebug);
    v524 = 225 * v233;
    v551 = gDebug;
    v516 = v279;
    do
    {
      v286 = v282;
      v287 = v283 + -(v286 * v286) * v276;
      if (v287 < 0.0)
      {
        v287 = 0.0;
      }

      v288 = (v277 * (1.0 / v278) * v286);
      v289 = (1.0 / v278 * sqrt(v287));
      v518 = v282;
      v519 = -v282;
      v290 = 1;
      v517 = v289;
      while (1)
      {
        v596[0] = 0;
        LODWORD(v594.f64[0]) = 0;
        v522 = v290;
        if (v290 == 2)
        {
          v288 = -v288;
        }

        v291 = v289;
        v292 = v289 - v288;
        v293 = v288;
        v294 = v519;
        if (v290 != 2)
        {
          v294 = v282;
        }

        v295 = v292 >> 9;
        v296 = (v294 + (v277 * v292)) >> 9;
        v297 = v285 + 8 * ((v284 * (v292 >> 9) - v296 * v515) / v514);
        LODWORD(v298) = 102944 - v297;
        if (v297 <= 51472)
        {
          LODWORD(v298) = v285 + 8 * ((v284 * (v292 >> 9) - v296 * v515) / v514);
        }

        v298 = v297 >= -51472 ? v298 : (-102944 - v297);
        v299 = v298 >= 0 ? v298 : -v298;
        if (v299 >> 8 > 0xC8)
        {
          break;
        }

        v521 = v293;
        v300 = -v291 - v293;
        v558 = v294 + (v277 * v300);
        v526 = v298;
        Taylor_sin_cos(v298, v596, &v594);
        v301 = LODWORD(v594.f64[0]);
        v536 = LODWORD(v594.f64[0]);
        if (SLODWORD(v594.f64[0]) < 0)
        {
          v301 = -LODWORD(v594.f64[0]);
        }

        v546 = ((99658 * v301) >> 15) * (((17965 * v299) >> 23) | 0x8000);
        v302 = 8 * ((v515 * v295 + v296 * v284) / (v546 >> 15));
        LODWORD(v303) = HIDWORD(v285) + v302;
        v304 = (v515 * (v300 >> 9) + (v558 >> 9) * v284) / (v546 >> 15);
        v305 = HIDWORD(v285) + 8 * v304;
        v306 = v302 <= 8 * v304;
        if (v302 <= 8 * v304)
        {
          v307 = HIDWORD(v285) + 8 * v304;
        }

        else
        {
          v307 = HIDWORD(v285) + v302;
        }

        if (v306)
        {
          v303 = v303;
        }

        else
        {
          v303 = v305;
        }

        v308 = 102944;
        v309 = 4294864352;
        v310 = v534;
        if (v307 - v303 <= 205887)
        {
          if (v303 >= -205887)
          {
            if (v307 <= 205886)
            {
              v308 = v307;
              v309 = v303;
            }

            else
            {
              v308 = v307 % 0x3243Fu;
              v309 = v303 - 205887 * (v307 / 0x3243Fu);
            }
          }

          else
          {
            v309 = 205887 * (-v303 / 0x3243Fu) + v303;
            v308 = v307 - v303 - -v303 % 0x3243Fu;
          }
        }

        v311 = v596[0];
        v312 = 0x18EA2312 / U4sqrt(~(4 * v311 * v311 / 0x95));
        if (v534 >= 1)
        {
          v313 = ((v312 - ((112313 * v312 + 0x1000000) >> 24)) * v311) >> 15;
          v314 = v511;
          v315 = v512;
          do
          {
            v316 = *v314;
            v314 -= 3;
            v618.i32[v315] = (v316 - v313) * v311;
            *(v667 + v315) = (v316 - v313) * (v316 - v313);
            v317 = v315-- + 1;
          }

          while (v317 > 1);
        }

        if (v309 <= v308)
        {
          v543 = v297 - 51473;
          v533 = (v312 * v536 + 0x8000) >> 15;
          v542 = 0x30D40000 / (v546 >> 9);
          v539 = v308 - v542;
          v544 = v308;
          while (1)
          {
            v565[0] = 0;
            v598[0] = 0;
            v660 = 0u;
            v318 = 205887;
            v659 = 0u;
            v658 = 0u;
            if (v309 < -102944 || (v318 = -205887, v319 = v309, v309 > 102943))
            {
              v319 = (v318 + v309);
            }

            if (v543 < 0xFFFE6DDF)
            {
              if ((v319 & 0x80000000) != 0)
              {
                v319 = (v319 + 102944);
              }

              else
              {
                v319 = (v319 - 102944);
              }
            }

            v545 = v319;
            Taylor_sin_cos(v319, v565, v598);
            if (v310 < 1)
            {
              v337 = 0;
              v338 = 0;
LABEL_385:
              v339 = v309;
              v340 = 0;
              v341 = 0;
              v342 = 1000000 * v337;
              v343 = v624;
              while (1)
              {
                v344 = HIBYTE(v623.i32[17 * v341 + 2]);
                if (v310 < 1 || v344 > 0xFA)
                {
                  break;
                }

                v345 = 0;
                do
                {
                  v346 = *(v343 + v345);
                  v347 = v658.u8[v345++];
                }

                while (v345 < v534 && v346 == v347);
                if (v346 == v347)
                {
                  goto LABEL_396;
                }

                ++v341;
                v343 = (v343 + 68);
                v340 += 68;
                if (v341 == 8)
                {
                  goto LABEL_405;
                }
              }

              if (v344 >= 0xFB)
              {
                goto LABEL_405;
              }

LABEL_396:
              if ((v341 & 0x80000000) == 0)
              {
                v348 = &v623.i8[68 * (v341 & 0x7FFFFFFF)];
                v349 = *(v348 + 2);
                if (v342 < v349)
                {
                  v349 = v342;
                }

                *(v348 + 2) = v349 >> 1;
                if (v341)
                {
                  v350 = &v623;
                  v351 = v544;
                  do
                  {
                    if (*(v348 + 2) < v350->i32[2])
                    {
                      v352 = *(v348 + 3);
                      v607 = *(v348 + 2);
                      v608 = v352;
                      v609.i32[0] = *(v348 + 16);
                      v353 = *v348;
                      *&v606[16] = *(v348 + 1);
                      *v606 = v353;
                      memmove(v350[4].i64 + 4, v350, v340);
                      v354 = v608;
                      v350[2] = v607;
                      v350[3] = v354;
                      v350[4].i32[0] = v609.i32[0];
                      v280 = *&v606[16];
                      v281 = *v606;
                      *v350 = *v606;
                      v350[1] = v280;
                    }

                    v350 = (v350 + 68);
                    v340 -= 68;
                  }

                  while (v340);
                }

                else
                {
                  v351 = v544;
                }

                LODWORD(v309) = v339;
                goto LABEL_427;
              }

LABEL_405:
              v355 = 0;
              v356 = &v623;
              v357 = 476;
              LODWORD(v309) = v339;
              while (v342 >= v356->i32[2])
              {
                v356 = (v356 + 68);
                ++v355;
                v357 -= 68;
                if (v355 == 8)
                {
                  goto LABEL_424;
                }
              }

              if (v357)
              {
                v358 = v338;
                memmove(v356[4].i64 + 4, v356, v357 & 0xFFFFFFFC);
                v338 = v358;
              }

              else
              {
                v355 = 7;
              }

              v362 = (&v623 + 68 * v355);
              v362->i32[0] = v526;
              v362->i32[1] = v545;
              v362->i32[2] = v342;
              v281 = v659;
              v362[1] = v658;
              v362[2] = v281;
              v280 = v660;
              v362[3] = v660;
              v362[4].i32[0] = v338;
LABEL_424:
              v351 = v544;
              goto LABEL_427;
            }

            v547 = v309;
            v320 = 0;
            v321 = 0;
            v322 = 0;
            v559 = (v598[0] * v533) >> 15;
            v323 = (v565[0] * v533) >> 15;
            v324 = (v598[0] * v536) >> 15;
            v325 = (v565[0] * v536) >> 15;
            v326 = v628[0].f64 + 1;
            do
            {
              v327 = *(v326 - 1) - v559;
              v328 = *v326 - v323;
              v329 = v618.i32[v320] + v327 * v324 + v328 * v325;
              v330 = U4sqrt(v327 * v327 + v328 * v328 + *(v667 + v320));
              if (v329 < 0 && v329 / v330 <= -2857)
              {
                DWORD1(gDebug) = ++v523;
                v310 = v534;
                goto LABEL_413;
              }

              if (!v320)
              {
                v321 = LODWORD(__b[0]) - v330;
              }

              v331 = *(__b + v320) - v330 - v321;
              v332 = *(v664.f64 + v320);
              if (*(v664.f64 + v320))
              {
                v333 = (437 * v331 + 65550) >> 17;
                if (v333 >= 0)
                {
                  v334 = (437 * v331 + 65550) >> 17;
                }

                else
                {
                  v334 = -v333;
                }

                v658.i8[v320] = v333;
                if (v334 > v332)
                {
                  DWORD2(xmmword_2A1938F80) = ++v527;
LABEL_412:
                  v310 = v534;
LABEL_413:
                  v351 = v544;
                  LODWORD(v309) = v547;
                  goto LABEL_427;
                }

                v331 -= (613975 * v333) >> 11;
              }

              *(v604.f64 + v320) = v331;
              if (v331 >= 0)
              {
                v335 = v331;
              }

              else
              {
                v335 = -v331;
              }

              if (v335 >= 0x1A)
              {
                DWORD1(xmmword_2A1938F80) = ++v529;
                goto LABEL_412;
              }

              v326 += 3;
              v322 += v331;
              ++v320;
            }

            while (v554 != v320);
            v310 = v534;
            if (v534 >= 15)
            {
              v336 = v322 / v534;
            }

            else
            {
              v336 = (v322 * num_SV_Div_Table[v534]) >> 15;
            }

            v337 = 0;
            v338 = v336 + v321;
            v359 = &v604;
            v360 = v554;
            v351 = v544;
            LODWORD(v309) = v547;
            do
            {
              v361 = LODWORD(v359->f64[0]);
              v359 = (v359 + 4);
              v337 += (v361 - v336) * (v361 - v336);
              if (v337 > v524)
              {
                LODWORD(xmmword_2A1938F80) = ++v525;
                goto LABEL_427;
              }

              --v360;
            }

            while (v360);
            if (v337 <= 0x1072)
            {
              goto LABEL_385;
            }

LABEL_427:
            ++v551;
            v363 = v539;
            if (v309 < v539)
            {
              v363 = v309;
            }

            if (v309 >= v351)
            {
              v363 = v309;
            }

            v309 = v363 + v542;
            if (v309 > v351)
            {
              LODWORD(gDebug) = v551;
              break;
            }
          }
        }

        v364 = v516;
        v289 = v517;
        v282 = v518;
        v284 = v513;
        if (v518)
        {
          v290 = v522 + 1;
          v288 = v521;
          if (v522 < 2)
          {
            continue;
          }
        }

        goto LABEL_437;
      }

      EvLog_d("SearchEllipse: Stop Candidate search near the poles - ", v298);
      v527 = DWORD2(xmmword_2A1938F80);
      v529 = DWORD1(xmmword_2A1938F80);
      v525 = xmmword_2A1938F80;
      v364 = v516;
      v282 = v516;
      v523 = DWORD1(gDebug);
      v551 = gDebug;
LABEL_437:
      v365 = v507;
      if (v282 < v507)
      {
        v365 = v282;
      }

      if (v282 >= v364)
      {
        v365 = v282;
      }

      v282 = v365 + v508;
    }

    while (v365 + v508 < v364);
  }

  if (v623.i32[2] < 0xFB000000)
  {
    v366 = 0;
    v367 = v624;
    v280 = vdupq_n_s64(0x3F00000000000000uLL);
    *v552 = v280;
    do
    {
      v368 = &v623.i8[68 * v366];
      v369 = *(v368 + 2);
      if (v369 >= 0xFB000000)
      {
        break;
      }

      v565[0] = 0;
      v370.i64[0] = *v368;
      v370.i64[1] = HIDWORD(*v368);
      v560 = vcvtq_f64_s64(v370);
      v604 = vmulq_f64(v560, *v552);
      v605 = 0.0;
      Geo2ECEF(&v604, &WGS84_Datum, v606);
      v371 = 1000 * *(v368 + 16);
      v618 = *v606;
      *&v619.i64[1] = v371;
      v619.i64[0] = *&v606[16];
      EvLog_v("SearchEllipse: Best Points: %d  %g %g  %u", v534, 0.00174852843 * v560.f64[0], vmuld_lane_f64(0.00174852843, v560, 1), v369);
      if (v534 >= 1)
      {
        v372 = v667;
        v373 = v520;
        v374 = v367;
        v375 = v554;
        do
        {
          v377 = *v373++;
          v376 = v377;
          v378 = *v374;
          v374 = (v374 + 1);
          *v372++ = (v376 - 299792 * v378);
          --v375;
        }

        while (v375);
      }

      if (CompPr_LSQ4(v581, v667, v534, v618.i64, v658.i32, v565, v604.f64))
      {
        v280 = vcvtq_n_s64_f64(v604, 0xFuLL);
        *v280.i8 = vmovn_s64(v280);
        *v368 = v280.i64[0];
        v379 = v565[0];
        *(v368 + 2) = v565[0];
        if (g_Enable_Event_Log >= 2u)
        {
          EvLog_v("SearchEllipse: LSQ Upd %d %d   ResSq %d", v280.i32[0], v280.i32[1], v379);
        }
      }

      else
      {
        *(v368 + 2) = -83886080;
        if (g_Enable_Event_Log >= 3u)
        {
          EvLog("SearchEllipse: ERROR DID NOT CONVERGE!");
        }
      }

      ++v366;
      v367 = (v367 + 68);
    }

    while (v366 != 8);
  }

  v380 = 0;
  v381 = &v627;
  v382 = -7;
  v13 = &unk_2A1928000;
  v273 = byte_2A1939000;
  do
  {
    if (v380 > 6)
    {
      v385 = v380;
    }

    else
    {
      v383 = v381;
      v384 = v382;
      v385 = v380;
      do
      {
        v386 = *v383;
        v383 += 17;
        if (v386 < v623.i32[17 * v385 + 2])
        {
          v385 = v384 + 8;
        }

        v169 = __CFADD__(v384++, 1);
      }

      while (!v169);
    }

    if (v380 != v385)
    {
      v387 = &v623.i8[68 * v380];
      v388 = *(v387 + 3);
      v620 = *(v387 + 2);
      v621 = v388;
      v622 = *(v387 + 16);
      v389 = *v387;
      v619 = *(v387 + 1);
      v618 = v389;
      v390 = &v623.i8[68 * v385];
      *v387 = *v390;
      v392 = *(v390 + 2);
      v391 = *(v390 + 3);
      v393 = *(v390 + 1);
      *(v387 + 16) = *(v390 + 16);
      *(v387 + 2) = v392;
      *(v387 + 3) = v391;
      *(v387 + 1) = v393;
      *(v390 + 16) = v622;
      v394 = v621;
      *(v390 + 2) = v620;
      *(v390 + 3) = v394;
      v280 = v618;
      v281 = v619;
      *v390 = v618;
      *(v390 + 1) = v281;
    }

    ++v380;
    ++v382;
    v381 += 17;
  }

  while (v380 != 8);
  for (k = 0; k != 136; k += 17)
  {
    if (v623.i32[k + 2] >= 0xFB000000)
    {
      break;
    }

    EvLog_v("SearchEllipse: Best Points Upd: %d  %g %g  %u", v534, v623.i32[k] * 0.00174852843, v623.i32[k + 1] * 0.00174852843, v623.i32[k + 2]);
  }

  v396 = v623.u32[2];
  if (v627 < 0xFB000000 && v534 <= 4)
  {
    v398 = v501;
    if (v534 == v500 && (v399 = 10000 * v534, v623.i32[2] < (10000 * v534)))
    {
      if (v623.i32[2] >= (1089 * v534))
      {
        v399 = 90000 * v534;
      }
    }

    else
    {
      v399 = 1000000 * v534;
    }

    if (v627 < v399 + v623.i32[2])
    {
      EvLog_v("Ellipse Candidate INVALID as not better than the next: 0 %g %g %d   %d %g %g  %d   %d", v623.i32[0] * 0.00174852843, v623.i32[1] * 0.00174852843, v623.i32[2], 1, v625 * 0.00174852843, v626 * 0.00174852843, v627, v534);
      v396 = -83886080;
    }
  }

  else
  {
    v398 = v501;
  }

  v422 = 16000000 * v534;
  if (v534 <= 5)
  {
    v422 = 0;
  }

  v280.i32[0] = v396;
  v281.i32[0] = v398 + v422;
  dword_2A1938F38 = v396 / v534;
  v423.i64[0] = v623.i32[0];
  v423.i64[1] = v623.i32[1];
  v272 = v396 < v398 + v422;
  __x = vandq_s8(vmulq_f64(vcvtq_f64_s64(v423), vdupq_n_s64(0x3F00000000000000uLL)), vdupq_lane_s32(*&vcgtq_u32(v281, v280), 0));
  v572 = 0.0;
LABEL_608:
  if (v13[547] >= 2u)
  {
    v478 = mach_continuous_time();
    v479 = v509;
    v479.i32[2] = (*(v273 + 200) * v478);
    v509 = v479;
  }

  if (v272)
  {
    Geo2ECEF(&__x, &WGS84_Datum, v628);
    *v576 = v628[0];
    *&v576[16] = v628[1].f64[0];
    v481 = CompVelDoLs(v510, v504, v505, v576, &v568, v480);
  }

  else
  {
    v481 = 0;
  }

  if (v13[547] >= 2u)
  {
    v482 = mach_continuous_time();
    v483 = v509;
    v483.i32[3] = (*(v273 + 200) * v482);
    v509 = v483;
  }

  v484 = __x.i64[0];
  if (v481)
  {
    v485 = __sincos_stret(*__x.i64);
    v486 = __x.i64[1];
    v487 = __sincos_stret(*&__x.i64[1]);
    v488 = 0;
    v581[0] = -(v485.__sinval * v487.__cosval);
    v581[1] = -(v485.__sinval * v487.__sinval);
    v489 = &v581[2];
    v581[2] = v485.__cosval;
    v581[3] = -v487.__sinval;
    v582 = *&v487.__cosval;
    *&v583 = -(v485.__cosval * v487.__cosval);
    *(&v583 + 1) = -(v485.__cosval * v487.__sinval);
    *&v584 = -v485.__sinval;
    v490 = v568;
    v491 = *&v569;
    do
    {
      v492 = *(v489 - 1) * *(&v490 + 1) + *(v489 - 2) * *&v490;
      v493 = *v489;
      v489 += 3;
      *&v623.i64[v488++] = v492 + v493 * v491;
    }

    while (v488 != 3);
    v494 = *&v623.i64[1] * *&v623.i64[1] + *v623.i64 * *v623.i64;
    if (v502 >= 5)
    {
      v495 = 5;
    }

    else
    {
      v495 = v502;
    }

    if (v495 <= 3)
    {
      v495 = 3;
    }

    v496 = fabs(v624[0]);
    if (v496 < 10.0)
    {
      v497 = User_Velocity_Compensation[v495 - 3] * 1.5;
      v112 = v494 < v497 * v497;
    }

    else
    {
      v112 = 0;
    }

    dword_2A1938F94 = sqrt(v494);
    dword_2A1938F98 = v496;
    if (!v112)
    {
      dword_2A1938F68 = 6;
    }
  }

  else
  {
    v112 = 0;
    v486 = __x.i64[1];
  }

  v503->i64[0] = v484;
  v503->i64[1] = v486;
  xmmword_2A1938F40 = v562;
  qword_2A1938F50 = v563;
LABEL_630:
  if (v13[547] >= 3u)
  {
    EvLog_v("CAP Time Waypoints %u %d %d %d %d %d %d %d", v506.i32[0], v506.i32[1] - v506.i32[0], v506.i32[2] - v506.i32[0], v506.i32[3] - v506.i32[0], v509.i32[0] - v506.i32[0], v509.i32[1] - v506.i32[0], v509.i32[2] - v506.i32[0], v509.i32[3] - v506.i32[0]);
  }

  return v112;
}

uint64_t CompVelDoLs(int (*a1)[3], __int16 (*a2)[3], __int16 *a3, double *a4, BOOL a5, double *a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1);
  v8 = v7;
  v10 = v9;
  v81 = v11;
  v13 = v12;
  v14 = v6;
  v128 = *MEMORY[0x29EDCA608];
  bzero(v124, 0xA80uLL);
  v15 = 0;
  v16 = 0;
  v88[59] = 0;
  v89 = 0;
  memset(v88, 0, 457);
  v91 = 0;
  v90 = 0;
  v92 = 0;
  v93 = 0;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v94 = 2;
  v96 = &v87;
  v95 = v85;
  v97 = v86;
  v98 = &v84;
  v99 = &v83;
  v88[58] = 0;
  v88[54] = 0;
  v101 = 0u;
  v100 = 0u;
  dword_2A1938F68 = 0;
  memset(v85, 0, sizeof(v85));
  v117 = 0.0;
  v116 = 0u;
  v115 = 0u;
  v17 = (v14 + 8);
  v18 = -1;
  memset(v114, 0, sizeof(v114));
  do
  {
    v86[v15] = 0x3FF0000000000000;
    if (*(v17 - 2) && *(v17 - 1) && *v17)
    {
      v85[v15] = 1;
      ++v16;
    }

    else if (v18 == -1)
    {
      v18 = v15;
    }

    ++v15;
    v17 += 3;
  }

  while (v15 != 48);
  HIDWORD(v93) = v18;
  if (v16 < 3)
  {
    return 0;
  }

  if (v18 != -1)
  {
    v20 = &v124[7 * v18];
    v126[0] = 0;
    LODWORD(v118) = 0;
    *v82 = 0;
    v121 = *v10;
    v122 = *(v10 + 2);
    ECEF2Geo(&v121, &WGS84_Datum, &v119);
    v21 = v120;
    if (v120 >= 3.14159265)
    {
      v22 = -6.28318531;
    }

    else
    {
      if (v120 >= -3.14159265)
      {
LABEL_17:
        v23 = v119;
        v24 = __sincos_stret(v119);
        v25 = __sincos_stret(v21);
        v114[0] = -(v24.__sinval * v25.__cosval);
        v114[1] = -(v24.__sinval * v25.__sinval);
        v114[2] = v24.__cosval;
        v114[3] = -v25.__sinval;
        v115 = *&v25.__cosval;
        *&v116 = -(v24.__cosval * v25.__cosval);
        *(&v116 + 1) = -(v24.__cosval * v25.__sinval);
        v117 = -v24.__sinval;
        LODWORD(v26) = vcvtd_n_s64_f64(v23, 0xFuLL);
        v27 = Taylor_sin_cos(v26, v126, &v118);
        LODWORD(v27) = vcvtd_n_s64_f64(v21, 0xFuLL);
        Taylor_sin_cos(v27, &v82[1], v82);
        v28 = vcvtd_n_f64_s32(v82[1] * v118, 0x1EuLL);
        *v20 = vcvtd_n_f64_s32(v118 * v82[0], 0x1EuLL);
        v20[1] = v28;
        v20[2] = vcvtd_n_f64_s32(v126[0], 0xFuLL);
        goto LABEL_18;
      }

      v22 = 6.28318531;
    }

    v21 = v120 + v22;
    v120 = v120 + v22;
    goto LABEL_17;
  }

LABEL_18:
  v29 = 0;
  *(&v90 + 3) = -1;
  LODWORD(v90) = 50462976;
  HIBYTE(v90) = 4;
  LODWORD(v91) = 1;
  v80 = v14;
  v30 = (v14 + 4);
  v31 = 0.0;
  do
  {
    v32 = v29;
    v33 = v30;
    v34 = v96;
    v35 = (v13 + 4);
    v36 = v81;
    v37 = v96;
    for (i = 2; i != 338; i += 7)
    {
      v39 = *(v33 - 1);
      v40 = v33[1];
      if (*(v33 - 1))
      {
        v41 = *v33;
      }

      else
      {
        v41 = 0.0;
        if (!v40)
        {
          break;
        }
      }

      v33 += 3;
      v42 = v39 - *v10;
      v43 = v41 - *(v10 + 1);
      v44 = v40 - *(v10 + 2);
      v45 = 1.0 / sqrt(v43 * v43 + v42 * v42 + v44 * v44);
      v46 = *v36++;
      *v37++ = v46 * 0.190293673 - v45 * (v43 * -(v8[1] - *(v35 - 1) * 0.190293673) + v42 * -(*v8 - *(v35 - 2) * 0.190293673) + v44 * -(v8[2] - *v35 * 0.190293673)) - v8[3];
      *&v123[i * 8] = v42 * v45;
      v47 = &v124[i];
      *(v47 - 1) = v43 * v45;
      *v47 = v44 * v45;
      v35 += 3;
    }

    if (v16 <= 4)
    {
      v48 = 0;
      v49 = SHIDWORD(v93);
      v95[SHIDWORD(v93)] = 1;
      v50 = *v8;
      v51 = v8[1];
      v52 = v8[2];
      v53 = &v114[2];
      do
      {
        v54 = *(v53 - 1) * v51 + *(v53 - 2) * v50;
        v55 = *v53;
        v53 += 3;
        *&v126[v48] = v54 + v55 * v52;
        v48 += 2;
      }

      while (v48 != 6);
      v34[v49] = -v127;
    }

    v56 = NK_Least_Squares_Core(v124, v114, 4, 0, 0, &v121, &v119, &v118, v88);
    v57 = 0;
    v58 = 0.0;
    do
    {
      v59 = *(&v90 + v57);
      if ((v59 & 0x8000000000000000) == 0)
      {
        v60 = *&v88[v59];
        v8[v59] = v8[v59] + v60;
        v58 = v58 + v60 * v60;
      }

      ++v57;
    }

    while (v57 != 7);
    v62 = v58 <= v31 || v32 == 0;
    ++byte_2A1938F72;
    if (!v62 || !v56)
    {
      if (v32 > 9)
      {
        v79 = 1;
      }

      else
      {
        v79 = 2;
      }

      v63 = &unk_2A1938000;
      goto LABEL_62;
    }

    if (v32 > 8)
    {
      break;
    }

    v29 = v32 + 1;
    v31 = v58;
  }

  while (v58 > 1.0);
  v63 = &unk_2A1938000;
  if (v32 > 8)
  {
    v79 = 1;
    goto LABEL_62;
  }

  v64 = 0;
  v65 = v96;
  v66 = &v125;
  v67 = (v80 + 8);
  v68 = (v13 + 4);
  do
  {
    v69 = *(v67 - 2);
    v70 = *v67;
    if (*(v67 - 1))
    {
      v71 = *(v67 - 1);
    }

    else
    {
      v71 = 0.0;
      if (!v70)
      {
        break;
      }
    }

    v67 += 3;
    v72 = v69 - *v10;
    v73 = v71 - *(v10 + 1);
    v74 = v70 - *(v10 + 2);
    v75 = 1.0 / sqrt(v73 * v73 + v72 * v72 + v74 * v74);
    v65[v64] = v81[v64] * 0.190293673 - v75 * (v73 * -(v8[1] - *(v68 - 1) * 0.190293673) + v72 * -(*v8 - *(v68 - 2) * 0.190293673) + v74 * -(v8[2] - *v68 * 0.190293673)) - v8[3];
    *(v66 - 2) = v72 * v75;
    *(v66 - 1) = v73 * v75;
    *v66 = v74 * v75;
    v66 += 7;
    ++v64;
    v68 += 3;
  }

  while (v64 != 48);
  v76 = 0;
  v77 = 0.0;
  do
  {
    if (v85[v76] == 1)
    {
      v77 = v77 + v65[v76] * v65[v76];
    }

    ++v76;
  }

  while (v76 != 48);
  v78 = v16 * 4.0;
  if (v16 >= 5)
  {
    v78 = 400.0;
  }

  if (v77 > v78)
  {
    v79 = 4;
LABEL_62:
    result = 0;
    v63[986] = v79;
    return result;
  }

  return 1;
}

uint64_t CAP_LSQ4_Core(uint64_t a1, int a2, uint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  *(a3 + 32) = 0x426D1A94A2000000;
  v4 = a3 + 32;
  *(a3 + 40) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 48) = 0x426D1A94A2000000;
  *(a3 + 72) = 0x426D1A94A2000000;
  *(a3 + 104) = 0x426D1A94A2000000;
  v5 = a2 + (*(a3 + 152) >= 0);
  if (v5 >= 1)
  {
    v6 = 0;
    v15 = 0;
    v7 = (a1 + 16);
    do
    {
      if (v6 == *(a3 + 152))
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0;
      }

      v19 = vnegq_f64(*(v7 - 2));
      v9 = *v7;
      v7 += 3;
      v20 = -v9;
      v21 = v8;
      v10 = *(a3 + 168);
      v22 = *(*(a3 + 160) + 8 * v6);
      umeas(v4, 4u, *(v10 + 8 * v6++), v19.f64, v18, v17, &v15, 1.0e20);
    }

    while (v5 != v6);
  }

  ud2var(v4, 4u, 1, 4u, v16);
  if (v16[0] > 1000000000.0)
  {
    return 0;
  }

  v12 = 1;
  while (v12 != 4)
  {
    v13 = v16[v12++];
    if (v13 > 1000000000.0)
    {
      if ((v12 - 2) < 3)
      {
        return 0;
      }

      break;
    }
  }

  v14 = *(a3 + 128);
  *a3 = *(a3 + 112);
  *(a3 + 16) = v14;
  return 1;
}

uint64_t CompPr_LSQ4(double (*a1)[3], double *a2, unsigned int a3, double *a4, int *a5, unsigned int *a6, double *a7)
{
  v8 = a3;
  v113 = *MEMORY[0x29EDCA608];
  v103 = 0;
  memset(v102, 0, sizeof(v102));
  memset(v101, 0, sizeof(v101));
  v105 = v100;
  v106 = __b;
  v104 = -1;
  dword_2A1938F68 = 0;
  memset(v107, 0, sizeof(v107));
  v108 = 0u;
  v109 = 0u;
  v11 = a3;
  v110 = 0.0;
  if (a3 < 1)
  {
    v14 = a3;
    __b[a3] = 5.0;
    v104 = a3;
  }

  else
  {
    memset_pattern16(__b, &unk_29972AEE0, 8 * a3);
    v12 = 5.0;
    if (v8 < 5 || (v12 = 25.0, v8 < 9))
    {
      __b[v11] = v12;
      v104 = v8;
    }

    v13 = 0;
    v14 = v8;
    v15 = *a4;
    v16 = a4[2];
    v17 = a4[3];
    do
    {
      v18 = &(*a1)[3 * v13];
      v19 = *v18;
      v20 = vsubq_f64(*v18, v15);
      *v98 = v20;
      v21 = v18[1].f64[0] - v16;
      *&v98[16] = v21;
      v22 = 0.0;
      v23 = 2;
      do
      {
        v22 = v22 + *&v98[8 * v23] * *&v98[8 * v23];
        v24 = v23-- + 1;
      }

      while (v24 > 1);
      v25 = 0;
      v26 = &v111[3 * v13];
      v27 = sqrt(v22);
      *v26 = vdivq_f64(v20, vdupq_lane_s64(*&v27, 0));
      v26[1].f64[0] = v21 / v27;
      v28 = vmulq_f64(v19, xmmword_29975D2A0);
      *v112 = vextq_s8(v28, v28, 8uLL);
      *&v112[16] = 0;
      v29 = 0.0;
      do
      {
        v29 = v29 + *&v112[v25] * *&v98[v25];
        v25 += 8;
      }

      while (v25 != 24);
      v100[v13] = a2[v13] - (v27 + v29 * -0.00000000333564095) - v17;
      ++v13;
    }

    while (v13 != v11);
  }

  v30 = 0;
  v94 = 0;
  v31 = v14 * 25.0;
  v32 = 0.0;
  v92 = vdupq_n_s64(0x4202A05F20000000uLL);
  v91 = v8;
  while (1)
  {
    v95 = v30;
    v33 = v104;
    if ((v104 & 0x80000000) == 0)
    {
      v34 = v105;
      *v96 = 0;
      *v97 = 0;
      *v98 = *a4;
      *&v98[16] = a4[2];
      ECEF2Geo(v98, &WGS84_Datum, v112);
      v36 = *&v112[8];
      v37 = -6.28318531;
      v93 = v34;
      if (*&v112[8] >= 3.14159265 || (v37 = 6.28318531, *&v112[8] < -3.14159265))
      {
        v36 = *&v112[8] + v37;
        *&v112[8] = *&v112[8] + v37;
      }

      v38 = &v111[3 * v33];
      LODWORD(v35) = vcvtd_n_s64_f64(*v112, 0xFuLL);
      v39 = Taylor_sin_cos(v35, &v97[1], v97);
      LODWORD(v39) = vcvtd_n_s64_f64(v36, 0xFuLL);
      Taylor_sin_cos(v39, &v96[1], v96);
      v40 = vcvtd_n_f64_s32(v96[1] * v97[0], 0x1EuLL);
      *v38 = vcvtd_n_f64_s32(v97[0] * v96[0], 0x1EuLL);
      v38[1] = v40;
      v38[2] = vcvtd_n_f64_s32(v97[1], 0xFuLL);
      v93[v33] = *&v112[16];
      v8 = v91;
    }

    if ((CAP_LSQ4_Core(v111, v8, v101) & 1) == 0)
    {
      result = 0;
      *a5 = v95 + 1;
      dword_2A1938F68 = 2;
      return result;
    }

    v41 = v101[0].f64[0];
    v42 = *(v101 + 8);
    v43.f64[0] = v101[1].f64[1];
    v43.f64[1] = v101[0].f64[0];
    if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(v43, v92), vcgtq_f64(*(v101 + 8), v92)))))
    {
      EvLog_v("CompPR_LSQ4: StateVec Innovation Out Of Range! %f %f %f %f", v101[1].f64[1], v101[0].f64[0], v101[0].f64[1], v101[1].f64[0]);
      return 0;
    }

    v44 = v101[1].f64[1] + a4[3];
    a4[3] = v44;
    v45 = v41 + *a4;
    *a4 = v45;
    v46 = vaddq_f64(v42, *(a4 + 1));
    *(a4 + 1) = v46;
    if (v8 < 1)
    {
      v60 = 0.0;
    }

    else
    {
      v47 = 0;
      do
      {
        v48 = &(*a1)[3 * v47];
        v49 = *v48;
        v50 = *v48 - v45;
        *v98 = v50;
        v51 = *(v48 + 1);
        v52 = vsubq_f64(v51, v46);
        *&v98[8] = v52;
        v53 = 0.0;
        v54 = 2;
        do
        {
          v53 = v53 + *&v98[8 * v54] * *&v98[8 * v54];
          v55 = v54-- + 1;
        }

        while (v55 > 1);
        v56 = 0;
        v57 = &v111[3 * v47];
        v58 = sqrt(v53);
        *v57 = v50 / v58;
        *(v57 + 1) = vdivq_f64(v52, vdupq_lane_s64(*&v58, 0));
        v51.f64[1] = v49;
        *v112 = vmulq_f64(v51, xmmword_2997622B0);
        *&v112[16] = 0;
        v59 = 0.0;
        do
        {
          v59 = v59 + *&v112[v56] * *&v98[v56];
          v56 += 8;
        }

        while (v56 != 24);
        v100[v47] = a2[v47] - (v58 + v59 * -0.00000000333564095) - v44;
        ++v47;
      }

      while (v47 != v11);
      v60 = 0.0;
      v61 = v100;
      v62 = v11;
      do
      {
        v63 = *v61++;
        v60 = v60 + v63 * v63;
        --v62;
      }

      while (v62);
    }

    if (v95)
    {
      break;
    }

LABEL_43:
    v67 = v95 + 1;
    if (v95 <= 3)
    {
      v30 = v95 + 1;
      v32 = v60;
      if (v94 != 2)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

  if (v60 >= v31 && v60 * 8.0 <= v32)
  {
    if (v60 * 128.0 > v32)
    {
      if (v94 == 1)
      {
        v65 = 2;
      }

      else
      {
        v65 = 1;
      }

      v94 = v65;
    }

    goto LABEL_43;
  }

  v67 = v95 + 1;
LABEL_48:
  *a5 = v67;
  *v112 = v45;
  *&v112[8] = v46;
  ECEF2Geo(v112, &WGS84_Datum, a7);
  v68 = a7[1];
  if (v68 >= 3.14159265)
  {
    v69 = -6.28318531;
LABEL_52:
    v68 = v68 + v69;
    a7[1] = v68;
  }

  else if (v68 < -3.14159265)
  {
    v69 = 6.28318531;
    goto LABEL_52;
  }

  v70 = __sincos_stret(*a7);
  v71 = __sincos_stret(v68);
  v107[0] = -(v70.__sinval * v71.__cosval);
  v107[1] = -(v70.__sinval * v71.__sinval);
  v107[2] = v70.__cosval;
  v107[3] = -v71.__sinval;
  v108 = *&v71.__cosval;
  *&v109 = -(v70.__cosval * v71.__cosval);
  *(&v109 + 1) = -(v70.__cosval * v71.__sinval);
  v110 = -v70.__sinval;
  if (v8 < 1)
  {
    v80 = 1;
  }

  else
  {
    v72 = 0;
    do
    {
      v73 = 2;
      do
      {
        *&v98[8 * v73] = (*a1)[v73] - a4[v73];
        v74 = v73-- + 1;
      }

      while (v74 > 1);
      v75 = -(v70.__cosval * v71.__sinval) * *&v98[8] + -(v70.__cosval * v71.__cosval) * *v98 + -v70.__sinval * *&v98[16];
      if (v75 <= 0.0)
      {
        v80 = 1;
      }

      else
      {
        v76 = 0.0;
        v77 = &v98[16];
        for (i = 4; i > 1; --i)
        {
          v79 = *v77--;
          v76 = v76 + v79 * v79;
        }

        v80 = -v75 / sqrt(v76) >= -0.087155743;
      }

      ++v72;
      ++a1;
    }

    while (v80 && v72 < v11);
  }

  v82 = v60 <= 225000000.0 && v80;
  if (v8 <= 5 && v82)
  {
    Comp_NEDvar_UDU(v102, 4u, 0, v107, v98);
    if (*&v98[16] < 100000000.0)
    {
      v83 = a7[2];
      v84 = 1000 * U4sqrt(*&v98[16]);
      if (v84 <= 500)
      {
        v84 = 500;
      }

      v85 = -500 - v84;
      v86 = v84 + 18000;
      if (v85 < v83 && v86 > v83)
      {
        goto LABEL_81;
      }
    }
  }

  else if (v82)
  {
LABEL_81:
    *a6 = v60;
    return 1;
  }

  return 0;
}

void *GNSS_Init_p_list(gnss::GnssAdaptDevice *a1)
{
  g_GN_GPS_Data_p_list = 0u;
  *&qword_2A1926970 = 0u;
  xmmword_2A1926980 = 0u;
  *&qword_2A1926990 = 0u;
  xmmword_2A19269A0 = 0u;
  *&qword_2A19269B0 = 0u;
  xmmword_2A19269C0 = 0u;
  *&qword_2A19269D0 = 0u;
  xmmword_2A19269E0 = 0u;
  unk_2A19269F0 = 0u;
  xmmword_2A1926A00 = 0u;
  unk_2A1926A10 = 0u;
  xmmword_2A1926A20 = 0u;
  xmmword_2A1926A30 = 0u;
  xmmword_2A1926A40 = 0u;
  xmmword_2A1926A50 = 0u;
  *(&g_GN_GPS_Data_p_list + 1) = &unk_2A19720A0;
  qword_2A1926910 = &g_DB_Raw_Meas;
  qword_2A1926918 = &g_DB_SV_Subframes;
  unk_2A1926920 = &g_DB_SV_AzEl;
  qword_2A1926928 = &g_DB_Acq_Aid_Table;
  xmmword_2A1926A60 = 0u;
  xmmword_2A1926A70 = 0u;
  qword_2A1926930 = &g_DB_Time_Sync;
  qword_2A1926938 = &g_DB_SV_Nav_Mess;
  *&xmmword_2A1926940 = &unk_2A19725C8;
  *(&xmmword_2A1926940 + 1) = &xmmword_2A197C6F8;
  qword_2A1926950 = &g_DB_GNSS_Soln;
  unk_2A1926958 = &g_DB_Nav_Soln;
  xmmword_2A1926A80 = 0u;
  *&xmmword_2A1926960 = &g_DB_SV_State_Table;
  *(&xmmword_2A1926960 + 1) = &g_DB_Track_Meas;
  qword_2A1926970 = &g_DB_Sensor;
  if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(a1))
  {
    if (!_MergedGlobals_9)
    {
      _MergedGlobals_9 = malloc_type_malloc(0x2068uLL, 0x10000405140872EuLL);
    }

    if (!qword_2A1972070)
    {
      qword_2A1972070 = malloc_type_malloc(0x128uLL, 0x10300408C5C66BBuLL);
    }

    if (!qword_2A1972078)
    {
      qword_2A1972078 = malloc_type_malloc(0x6CuLL, 0x100004024435D43uLL);
    }

    if (!qword_2A1972080)
    {
      qword_2A1972080 = malloc_type_malloc(0x3F8uLL, 0x10000402D7176F6uLL);
    }

    v1 = qword_2A1972088;
    if (!qword_2A1972088)
    {
      v1 = malloc_type_malloc(0x2804uLL, 0x10000407E7A484BuLL);
      qword_2A1972088 = v1;
    }
  }

  else
  {
    v1 = qword_2A1972088;
  }

  qword_2A1926978 = _MergedGlobals_9;
  xmmword_2A1926980 = *&qword_2A1972070;
  qword_2A1926990 = qword_2A1972080;
  unk_2A1926998 = v1;
  *&xmmword_2A19269A0 = g_G5K_ME_SD;
  *(&xmmword_2A19269A0 + 1) = &g_SV_Gen_Meas_SD;
  qword_2A19269B0 = &g_Nav_Kalman_SD;
  unk_2A19269B8 = &g_SV_Data_Decode_SD;
  *&xmmword_2A19269C0 = &xmmword_2A1972304;
  *(&xmmword_2A19269C0 + 1) = &unk_2A1972148;
  v2 = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v1);
  v3 = qword_2A1972090;
  if (v2 && !qword_2A1972090)
  {
    v3 = malloc_type_malloc(0x207538uLL, 0x1030040D565750FuLL);
    qword_2A1972090 = v3;
  }

  qword_2A19269D0 = v3;
  *algn_2A19269D8 = &g_Fused_Nav_SD;
  *(&xmmword_2A19269E0 + 1) = &g_Nav_Kalman_WD;
  unk_2A19269F0 = &xmmword_2A1972180;
  qword_2A19269F8 = &unk_2A19720B4;
  v4 = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v3);
  v5 = qword_2A1972098;
  if (v4 && !qword_2A1972098)
  {
    v5 = malloc_type_malloc(0x5F70uLL, 0x10000404055741BuLL);
    qword_2A1972098 = v5;
  }

  *(&xmmword_2A1926A00 + 1) = v5;
  unk_2A1926A10 = &g_Fused_Nav_WD;
  qword_2A1926A18 = &g_GNSS_Debug_Data;
  *&xmmword_2A1926A20 = &g_GN_GNSS_IntVersion;
  *(&xmmword_2A1926A20 + 1) = &unk_2A19721D8;
  *&xmmword_2A1926A30 = &g_GN_GNSS_Nav_Data;
  *(&xmmword_2A1926A30 + 1) = &g_GN_GNSS_Dbg_Data;
  *&xmmword_2A1926A40 = &g_NV_Ram;
  *(&xmmword_2A1926A40 + 1) = &g_NA_Ram;
  *&xmmword_2A1926A50 = &unk_2A1972240;
  qword_2A19720D8 = &g_CBuff_Meas;
  unk_2A19720E0 = &g_CBuff_Meas + 6144;
  qword_2A19720C8 = &g_CBuff_Meas;
  unk_2A19720D0 = &g_CBuff_Meas;
  qword_2A19720F8 = &g_CBuff_Ctrl;
  unk_2A1972100 = getVersionString::a_Version;
  qword_2A19720F0 = &g_CBuff_Ctrl;
  qword_2A19720E8 = &g_CBuff_Ctrl;
  *(&xmmword_2A1926A50 + 1) = &qword_2A19720C8;
  *&xmmword_2A1926A60 = &qword_2A19720E8;
  qword_2A1972118 = &g_CBuff_NMEA;
  unk_2A1972120 = &g_CBuff_NMEA + 14336;
  qword_2A1972110 = &g_CBuff_NMEA;
  qword_2A1972108 = &g_CBuff_NMEA;
  qword_2A1938ED0 = &g_CBuff_NDbg;
  qword_2A1938ED8 = &g_CBuff_Meas;
  g_CB_NDbg = &g_CBuff_NDbg;
  *&dword_2A1938EC8 = &g_CBuff_NDbg;
  *(&xmmword_2A1926A60 + 1) = &qword_2A1972108;
  *&xmmword_2A1926A70 = &g_CB_NDbg;
  qword_2A1938EF0 = &unk_2A1972C28;
  qword_2A1938EF8 = &g_Nav_Kalman_SD;
  g_CB_ELog = &unk_2A1972828;
  *&dword_2A1938F08 = &unk_2A1972828;
  qword_2A1938F10 = &unk_2A1972828;
  qword_2A1938F18 = &unk_2A1972C28;
  g_CB_GDbg = &unk_2A1972C28;
  *&dword_2A1938EE8 = &unk_2A1972C28;
  *(&xmmword_2A1926A70 + 1) = &g_CB_ELog;
  *&xmmword_2A1926A80 = &g_CB_GDbg;
  qword_2A1972128 = &_MergedGlobals_51;
  qword_2A1972138 = &_MergedGlobals_51;
  unk_2A1972140 = &xmmword_2A197C6F8;
  qword_2A1972130 = &_MergedGlobals_51;
  *(&xmmword_2A1926A80 + 1) = &qword_2A1972128;
  LODWORD(g_GN_GPS_Data_p_list) = 2;
  p_api = &g_GN_GPS_Data_p_list;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;

  return memcpy(&unk_2A1972438, &g_GN_GPS_Data_p_list, 0x190uLL);
}

void *GNSS_Clear_DataAreas(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v193 = *MEMORY[0x29EDCA608];
  bzero(v192, 0x2C78uLL);
  for (i = 0; i != 160; i += 20)
  {
    v2 = v192 + i;
    v2[540] = 0;
    *(v2 + 68) = 0;
    *(&v192[34] + i + 7) = 0;
  }

  for (j = 0; j != 2688; j += 56)
  {
    v4 = v192 + j;
    *(v4 + 88) = 0;
    *(v4 + 356) = 0;
    *(&v192[44] + j + 12) = 0;
    *(v4 + 362) = 0;
    v5 = (&v192[45] + j + 8);
    *(v4 + 94) = 0;
    *(v4 + 372) = 0;
    *v5 = 0uLL;
  }

  for (k = 3392; k != 5120; k += 36)
  {
    v7 = v192 + k;
    v7[32] = 0;
    *v7 = 0uLL;
    *(v7 + 1) = 0uLL;
  }

  v8 = -960;
  do
  {
    v9 = v192 + v8;
    *(v9 + 3048) = 0;
    *(v9 + 380) = 0uLL;
    v8 += 20;
  }

  while (v8);
  v10 = 0xFFFFFFFFFFFFF80;
  do
  {
    *&v192[v10 + 508] = 0;
    *(&v192[v10 + 508] + 6) = 0;
    ++v10;
  }

  while (v10 * 16);
  v11 = 2688;
  v12 = &v192[511] + 4;
  do
  {
    *(v12 - 13) = 0;
    *v12 = 0;
    v12 += 56;
    v11 -= 56;
  }

  while (v11);
  WORD4(v192[697]) = 0;
  HIDWORD(v192[702]) = 0;
  LOBYTE(v192[703]) = 0;
  *(&v192[698] + 12) = 0u;
  *(&v192[699] + 12) = 0u;
  *(&v192[700] + 12) = 0u;
  *(&v192[701] + 10) = 0u;
  HIDWORD(v192[703]) = 0;
  *(&v192[703] + 7) = 0;
  DWORD1(v192[703]) = 0;
  memset(&v192[676], 0, 343);
  *(&v192[698] + 2) = 0;
  *(&v192[697] + 12) = 0;
  memcpy(g_G5K_ME_SD, v192, 0x2C78uLL);
  qword_2A1951B90 = g_G5K_ME_SD;
  bzero(&g_SV_Gen_Meas_SD, 0x8E0uLL);
  bzero(v192, 0x35A4uLL);
  v13 = &v192[350] + 4;
  v14 = 392;
  do
  {
    *(v13 - 3) = 0;
    *(v13 - 8) = 0;
    *(v13 - 3) = 0;
    *(v13 - 8) = 0;
    *(v13 - 1) = 0;
    *v13 = 0;
    v13 += 28;
    v14 -= 28;
  }

  while (v14);
  *(&v192[398] + 15) = 0u;
  *(&v192[397] + 4) = 0u;
  *(&v192[398] + 4) = 0u;
  *(&v192[395] + 4) = 0u;
  *(&v192[396] + 4) = 0u;
  *(&v192[393] + 4) = 0u;
  *(&v192[394] + 4) = 0u;
  *(&v192[391] + 4) = 0u;
  *(&v192[392] + 4) = 0u;
  *(&v192[389] + 4) = 0u;
  *(&v192[390] + 4) = 0u;
  *(&v192[387] + 4) = 0u;
  *(&v192[388] + 4) = 0u;
  *(&v192[385] + 4) = 0u;
  *(&v192[386] + 4) = 0u;
  *(&v192[383] + 4) = 0u;
  *(&v192[384] + 4) = 0u;
  *(&v192[381] + 4) = 0u;
  *(&v192[382] + 4) = 0u;
  *(&v192[379] + 4) = 0u;
  *(&v192[380] + 4) = 0u;
  *(&v192[377] + 4) = 0u;
  *(&v192[378] + 4) = 0u;
  *(&v192[375] + 4) = 0u;
  *(&v192[376] + 4) = 0u;
  *(&v192[373] + 4) = 0u;
  *(&v192[374] + 4) = 0u;
  memset(&v192[400], 0, 93);
  memset(&v192[406], 0, 86);
  bzero(&v192[411] + 8, 0x193DuLL);
  bzero(&v192[815] + 6, 0x2ACuLL);
  bzero(&v192[858] + 4, 0x10DCuLL);
  memcpy(&g_SV_Data_Decode_SD, v192, 0x4680uLL);
  bzero(v192, 0x69F0uLL);
  s_Nav_Kalman_SD::s_Nav_Kalman_SD(v192);
  g_Nav_Kalman_SD = v192[0];
  dword_2A1973038 = v192[1];
  unk_2A197303C = *(&v192[1] + 4);
  memcpy(&unk_2A1973044, &v192[1] + 12, 0x69D0uLL);
  xmmword_2A1972304 = 0u;
  unk_2A1972314 = 0u;
  xmmword_2A1972324 = 0u;
  unk_2A1972334 = 0u;
  xmmword_2A1972344 = 0u;
  unk_2A1972354 = 0u;
  xmmword_2A1972364 = 0u;
  unk_2A1972374 = 0u;
  xmmword_2A1972384 = 0u;
  unk_2A1972394 = 0u;
  xmmword_2A19723A4 = 0u;
  unk_2A19723B4 = 0u;
  xmmword_2A19723C4 = 0u;
  unk_2A19723D4 = 0u;
  xmmword_2A19723E4 = 0u;
  unk_2A19723F4 = 0u;
  xmmword_2A1972404 = 0u;
  unk_2A1972414 = 0u;
  xmmword_2A1972424 = 0u;
  *(&xmmword_2A1972424 + 15) = 0;
  byte_2A1972178 = 0;
  unk_2A1972168 = 0u;
  unk_2A1972158 = 0u;
  unk_2A1972148 = 0u;
  if (qword_2A1972090)
  {
    bzero(qword_2A1972090, 0x207538uLL);
  }

  memset(v186, 0, 288);
  memset(v192, 0, 408);
  memset(v164, 0, 24);
  memset(v188, 0, 27);
  memset(__src, 0, 288);
  memset(v187, 0, 408);
  memset(v161, 0, 24);
  memset(v158, 0, 24);
  memset(v163, 0, 22);
  g_Fused_Nav_SD = v163[0];
  *(&g_Fused_Nav_SD + 14) = 0;
  word_2A1954EA6 = 0;
  byte_2A1954EA8 = 0;
  memcpy(&unk_2A1954EA9, v186, 0x120uLL);
  xmmword_2A1954FC9 = 0u;
  unk_2A1954FD9 = 0u;
  xmmword_2A1954FE9 = 0u;
  unk_2A1954FF9 = 0u;
  xmmword_2A1955009 = 0u;
  unk_2A1955019 = 0u;
  xmmword_2A1955029 = 0u;
  unk_2A1955039 = 0u;
  xmmword_2A1955049 = 0u;
  unk_2A1955059 = 0u;
  xmmword_2A1955069 = 0u;
  unk_2A1955079 = 0u;
  xmmword_2A1955089 = 0u;
  unk_2A1955099 = 0u;
  xmmword_2A19550A9 = 0u;
  byte_2A19550B9 = 0;
  memcpy(&unk_2A19550BA, v192, 0x198uLL);
  xmmword_2A1955252 = 0u;
  qword_2A1955262 = 0;
  xmmword_2A195526A = 0u;
  qword_2A195527A = 0;
  xmmword_2A1955282 = 0u;
  *(&xmmword_2A1955282 + 11) = 0u;
  byte_2A195529D = 0;
  word_2A195529E = 0;
  byte_2A19552A0 = 0;
  memcpy(&unk_2A19552A1, __src, 0x120uLL);
  xmmword_2A19553C1 = 0u;
  unk_2A19553D1 = 0u;
  xmmword_2A19553E1 = 0u;
  unk_2A19553F1 = 0u;
  xmmword_2A1955401 = 0u;
  unk_2A1955411 = 0u;
  xmmword_2A1955421 = 0u;
  unk_2A1955431 = 0u;
  xmmword_2A1955441 = 0u;
  unk_2A1955451 = 0u;
  xmmword_2A1955461 = 0u;
  unk_2A1955471 = 0u;
  xmmword_2A1955481 = 0u;
  unk_2A1955491 = 0u;
  xmmword_2A19554A1 = 0u;
  byte_2A19554B1 = 0;
  memcpy(&unk_2A19554B2, v187, 0x198uLL);
  xmmword_2A195564A = 0u;
  qword_2A195565A = 0;
  xmmword_2A1955662 = 0u;
  qword_2A1955672 = 0;
  xmmword_2A195567A = 0u;
  unk_2A195568A = 0u;
  xmmword_2A195569A = 0u;
  unk_2A19556AA = 0u;
  xmmword_2A19556BA = 0u;
  unk_2A19556CA = 0u;
  xmmword_2A19556DA = 0u;
  unk_2A19556EA = 0u;
  *algn_2A1972190 = 0u;
  xmmword_2A1972180 = 0u;
  byte_2A19721D0 = 0;
  xmmword_2A19721A0 = 0u;
  unk_2A19721B0 = 0u;
  xmmword_2A19721C0 = 0u;
  memset(v191, 0, sizeof(v191));
  v190 = 0u;
  memset(v189, 0, 491);
  memset(&v188[547], 0, 25);
  memset(&v188[515], 0, 119);
  memset(&v188[467], 0, 179);
  memset(&v188[435], 0, 113);
  bzero(v188, 0x6CBuLL);
  bzero(v187, 0x15C8uLL);
  bzero(v186, 0x15C8uLL);
  bzero(v192, 0x2258uLL);
  memset(v185, 0, sizeof(v185));
  LOWORD(v184) = 0;
  BYTE2(v184) = 0;
  memset(v183, 0, 56);
  LOWORD(v182) = 0;
  BYTE2(v182) = 0;
  memset(v181, 0, 56);
  BYTE2(v180) = 0;
  LOWORD(v180) = 0;
  memset(v179, 0, 56);
  BYTE2(v178) = 0;
  LOWORD(v178) = 0;
  memset(v177, 0, sizeof(v177));
  BYTE2(v176) = 0;
  LOWORD(v176) = 0;
  memset(v175, 0, 56);
  BYTE2(v174) = 0;
  LOWORD(v174) = 0;
  memset(&v173[15], 0, 104);
  memset(&v173[14] + 4, 0, 12);
  memset(&v173[10], 0, 53);
  memset(&v173[9] + 4, 0, 12);
  memset(&v173[5], 0, 53);
  memset(&v173[4] + 4, 0, 12);
  memset(v173, 0, 61);
  BYTE2(v172) = 0;
  LOWORD(v172) = 0;
  memset(v171, 0, 56);
  BYTE2(v170) = 0;
  LOWORD(v170) = 0;
  memset(&v169[7], 0, 56);
  memset(&v169[6] + 4, 0, 12);
  memset(&v169[2], 0, 61);
  memset(v169, 0, 31);
  v168 = 0u;
  v167 = 0u;
  v166 = 0u;
  BYTE2(v165) = 0;
  LOWORD(v165) = 0;
  memset(&v164[37], 0, 112);
  memset(&v164[36] + 4, 0, 12);
  memset(&v164[29], 0, 102);
  memset(v164, 0, 455);
  memset(&v163[13], 0, 12);
  memset(v163, 0, 199);
  memset(&v162[2] + 4, 0, 51);
  BYTE2(v162[0]) = 0;
  LOWORD(v162[0]) = 0;
  *&v161[3] = 0;
  *v161 = 0;
  memset(v158, 0, sizeof(v158));
  *(__src + 3) = 0;
  __src[0] = 0;
  v190 = 0uLL;
  *v191 = 0;
  memset(&v191[8], 0, 73);
  *(&v189[29] + 11) = 0u;
  *(&v189[29] + 2) = 0u;
  *(&v189[28] + 2) = 0u;
  *(&v189[27] + 2) = 0u;
  *(&v189[26] + 2) = 0u;
  *(&v189[25] + 2) = 0u;
  *(&v189[24] + 2) = 0u;
  *(&v189[23] + 2) = 0u;
  *(&v189[22] + 2) = 0u;
  *(&v189[21] + 2) = 0u;
  *(&v189[20] + 2) = 0u;
  *(&v189[19] + 2) = 0u;
  *(&v189[18] + 2) = 0u;
  *(&v189[17] + 2) = 0u;
  *(&v189[16] + 2) = 0u;
  *(&v189[15] + 2) = 0u;
  *(&v189[14] + 2) = 0u;
  *(&v189[13] + 2) = 0u;
  *(&v189[12] + 2) = 0u;
  *(&v189[11] + 2) = 0u;
  *(&v189[10] + 2) = 0u;
  *(&v189[9] + 2) = 0u;
  *(&v189[8] + 2) = 0u;
  *(&v189[7] + 2) = 0u;
  *(&v189[6] + 2) = 0u;
  *(&v189[5] + 2) = 0u;
  *(&v189[4] + 2) = 0u;
  *(&v189[3] + 2) = 0u;
  *(&v189[2] + 2) = 0u;
  *(&v189[1] + 2) = 0u;
  *(v189 + 2) = 0u;
  memset(&v188[548], 0, 21);
  memset(&v188[516], 0, 115);
  *(&v184 + 3) = 0;
  *(&v184 + 1) = 0;
  *(&v182 + 3) = 0;
  *(&v182 + 1) = 0;
  *(&v180 + 3) = 0;
  *(&v180 + 1) = 0;
  *(&v178 + 1) = 0;
  *(&v178 + 3) = 0;
  *(&v176 + 1) = 0;
  *(&v176 + 3) = 0;
  *(&v174 + 3) = 0;
  *(&v174 + 1) = 0;
  *(&v172 + 3) = 0;
  *(&v172 + 1) = 0;
  *(&v170 + 1) = 0;
  *(&v170 + 3) = 0;
  *(&v165 + 3) = 0;
  *(&v165 + 1) = 0;
  memset(&v162[5] + 7, 0, 25);
  memset(&v188[467] + 2, 0, 177);
  memset(&v188[435] + 3, 0, 96);
  *(&v188[459] + 1) = 0u;
  bzero(&v188[1] + 2, 0x6C5uLL);
  bzero(v187 + 3, 0x15C5uLL);
  bzero(&v186[3], 0x15C5uLL);
  bzero(v192 + 3, 0x2255uLL);
  memset(&v185[1], 0, 19);
  memset(v183 + 3, 0, 48);
  *&v183[3] = 0;
  memset(v181 + 3, 0, 48);
  *&v181[3] = 0;
  memset(v179 + 3, 0, 48);
  *&v179[3] = 0;
  memset(v177 + 3, 0, 96);
  v177[6] = 0u;
  memset(v175 + 3, 0, 53);
  memset(&v173[18] + 3, 0, 48);
  *&v173[21] = 0;
  memset(&v173[16] + 15, 0, 17);
  memset(&v173[15] + 7, 0, 17);
  memset(&v173[10] + 4, 0, 49);
  memset(&v173[5] + 4, 0, 49);
  memset(v173 + 4, 0, 57);
  memset(v171 + 3, 0, 53);
  memset(&v169[7] + 3, 0, 53);
  memset(&v169[2] + 4, 0, 57);
  memset(&v164[37] + 3, 0, 109);
  memset(&v164[29] + 4, 0, 98);
  *(&v164[28] + 5) = 0;
  *(&v164[27] + 5) = 0u;
  *(&v164[26] + 5) = 0u;
  *(&v164[25] + 5) = 0u;
  *(&v164[24] + 5) = 0u;
  *(&v164[23] + 5) = 0u;
  *(&v164[22] + 5) = 0u;
  *(&v164[21] + 5) = 0u;
  *(&v164[20] + 5) = 0u;
  *(&v164[19] + 5) = 0u;
  *(&v164[18] + 5) = 0u;
  *(&v164[17] + 5) = 0u;
  *(&v164[16] + 5) = 0u;
  *(&v164[15] + 5) = 0u;
  *(&v164[14] + 5) = 0u;
  *(&v164[13] + 5) = 0u;
  *(&v164[12] + 5) = 0u;
  *(&v164[11] + 5) = 0u;
  *(&v164[10] + 5) = 0u;
  *(&v164[9] + 5) = 0u;
  *(&v164[8] + 5) = 0u;
  *(&v164[7] + 5) = 0u;
  *(&v164[6] + 5) = 0u;
  *(&v164[5] + 5) = 0u;
  *(&v164[4] + 5) = 0u;
  *(&v164[3] + 5) = 0u;
  *(&v164[2] + 5) = 0u;
  *(&v164[1] + 5) = 0u;
  *(v164 + 5) = 0u;
  WORD5(v163[13]) = 0;
  *(&v163[13] + 2) = 0;
  memset(v163 + 2, 0, 197);
  memset(v162 + 3, 0, 33);
  memset(&v161[7], 0, 402);
  v159 = 0uLL;
  v160 = 0;
  bzero(&__src[1] + 3, 0x1491uLL);
  xmmword_2A193BEB0 = *&v191[48];
  unk_2A193BEC0 = *&v191[64];
  dword_2A193BED0 = *&v191[80];
  g_Nav_Kalman_WD = v190;
  *&dword_2A193BE80 = *v191;
  xmmword_2A193BE90 = *&v191[16];
  unk_2A193BEA0 = *&v191[32];
  *&dword_2A193BED4 = 0;
  word_2A193BEDC = 0;
  memcpy(algn_2A193BEDE, v189, 0x1EBuLL);
  dword_2A193C0C9 = 0;
  *(&dword_2A193C0C9 + 3) = 0;
  qword_2A193C0D0 = 0;
  dword_2A193C0D8 = -1;
  xmmword_2A193C0DC = *&v188[547];
  *(&xmmword_2A193C0DC + 9) = *(&v188[549] + 1);
  byte_2A193C0F5 = 0;
  word_2A193C0F6 = 0;
  dword_2A193C0F8 = 0;
  xmmword_2A193C11C = *&v188[523];
  unk_2A193C12C = *&v188[527];
  xmmword_2A193C0FC = *&v188[515];
  *algn_2A193C10C = *&v188[519];
  *(&xmmword_2A193C160 + 11) = *(&v188[542] + 3);
  xmmword_2A193C14C = *&v188[535];
  unk_2A193C15C = *&v188[539];
  xmmword_2A193C13C = *&v188[531];
  *(&qword_2A193C173 + 7) = 0;
  qword_2A193C173 = 0;
  *(&xmmword_2A193C190 + 14) = *&v188[475];
  unk_2A193C1AE = *&v188[479];
  xmmword_2A193C17E = *&v188[467];
  *algn_2A193C18E = *&v188[471];
  *(&xmmword_2A193C1D0 + 14) = *&v188[491];
  unk_2A193C1EE = *&v188[495];
  *(&xmmword_2A193C1B0 + 14) = *&v188[483];
  unk_2A193C1CE = *&v188[487];
  unk_2A193C22D = *(&v188[510] + 3);
  xmmword_2A193C20E = *&v188[503];
  unk_2A193C21E = *&v188[507];
  *(&xmmword_2A193C1F0 + 14) = *&v188[499];
  xmmword_2A193C271 = *&v188[451];
  unk_2A193C281 = *&v188[455];
  xmmword_2A193C291 = *&v188[459];
  byte_2A193C2A1 = v188[463];
  unk_2A193C231 = *&v188[435];
  unk_2A193C241 = *&v188[439];
  xmmword_2A193C251 = *&v188[443];
  unk_2A193C261 = *&v188[447];
  memcpy(&unk_2A193C2A2, v188, 0x6CBuLL);
  memcpy(&unk_2A193C96D, v187, 0x15C8uLL);
  memcpy(&g_Nav_Kalman_WD + 8389, v186, 0x15C8uLL);
  memcpy(&g_Nav_Kalman_WD + 13965, v192, 0x2258uLL);
  v15 = &g_Nav_Kalman_WD + 22757;
  *v15 = *v185;
  *(v15 + 4) = *&v185[16];
  *(&g_Nav_Kalman_WD + 22777) = v184;
  v16 = &g_Nav_Kalman_WD + 22793;
  v17 = v183[1];
  *v16 = v183[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v183[2];
  *(v16 + 6) = *&v183[3];
  *(&g_Nav_Kalman_WD + 22849) = v182;
  v18 = &g_Nav_Kalman_WD + 22865;
  v19 = v181[0];
  v20 = v181[1];
  v21 = v181[2];
  *(v18 + 6) = *&v181[3];
  *(v18 + 1) = v20;
  *(v18 + 2) = v21;
  *v18 = v19;
  *(&g_Nav_Kalman_WD + 22921) = v180;
  v22 = &g_Nav_Kalman_WD + 22937;
  *(v22 + 6) = *&v179[3];
  v23 = v179[2];
  v24 = v179[0];
  *(v22 + 1) = v179[1];
  *(v22 + 2) = v23;
  *v22 = v24;
  *(&g_Nav_Kalman_WD + 22993) = v178;
  v25 = (&g_Nav_Kalman_WD + 23009);
  v26 = v177[1];
  *v25 = v177[0];
  v25[1] = v26;
  v27 = v177[2];
  v28 = v177[3];
  v29 = v177[6];
  v30 = v177[4];
  v25[5] = v177[5];
  v25[6] = v29;
  v25[3] = v28;
  v25[4] = v30;
  v25[2] = v27;
  *(&g_Nav_Kalman_WD + 23121) = v176;
  v31 = &g_Nav_Kalman_WD + 23137;
  v32 = v175[0];
  v33 = v175[1];
  v34 = v175[2];
  *(v31 + 6) = *&v175[3];
  *(v31 + 1) = v33;
  *(v31 + 2) = v34;
  *v31 = v32;
  *(&g_Nav_Kalman_WD + 23193) = v174;
  v35 = &g_Nav_Kalman_WD + 23209;
  v36 = v173[18];
  v37 = v173[19];
  v38 = v173[20];
  *(v35 + 6) = *&v173[21];
  *(v35 + 1) = v37;
  *(v35 + 2) = v38;
  *v35 = v36;
  v39 = &g_Nav_Kalman_WD + 23265;
  v39[2] = 0;
  *(&g_Nav_Kalman_WD + 5817) = 0;
  *v39 = 0;
  *(&g_Nav_Kalman_WD + 23272) = 0;
  v40 = &g_Nav_Kalman_WD + 23273;
  v41 = *(&v173[16] + 8);
  *(v40 + 2) = *(&v173[17] + 1);
  *v40 = v41;
  v42 = &g_Nav_Kalman_WD + 23297;
  v43 = v173[15];
  *(v42 + 2) = *&v173[16];
  *v42 = v43;
  v44 = &g_Nav_Kalman_WD + 23321;
  v45 = *(&v173[14] + 4);
  *(v44 + 2) = HIDWORD(v173[14]);
  *v44 = v45;
  v46 = &g_Nav_Kalman_WD + 23333;
  v46[2] = 0;
  *(&g_Nav_Kalman_WD + 5834) = 0;
  *v46 = 0;
  v47 = &g_Nav_Kalman_WD + 23340;
  v48 = v173[10];
  v49 = v173[11];
  v50 = v173[12];
  *(v47 + 45) = *(&v173[12] + 13);
  *(v47 + 1) = v49;
  *(v47 + 2) = v50;
  *v47 = v48;
  v51 = &g_Nav_Kalman_WD + 23393;
  v52 = *(&v173[9] + 4);
  *(v51 + 2) = HIDWORD(v173[9]);
  *v51 = v52;
  v53 = &g_Nav_Kalman_WD + 23405;
  v53[2] = 0;
  *v53 = 0;
  *(&g_Nav_Kalman_WD + 5852) = 0;
  v54 = &g_Nav_Kalman_WD + 23412;
  v55 = v173[5];
  v56 = v173[6];
  v57 = v173[7];
  *(v54 + 45) = *(&v173[7] + 13);
  *(v54 + 1) = v56;
  *(v54 + 2) = v57;
  *v54 = v55;
  v58 = &g_Nav_Kalman_WD + 23465;
  v59 = *(&v173[4] + 4);
  *(v58 + 2) = HIDWORD(v173[4]);
  *v58 = v59;
  v60 = &g_Nav_Kalman_WD + 23477;
  v60[2] = 0;
  *v60 = 0;
  *(&g_Nav_Kalman_WD + 5870) = 0;
  v61 = (&g_Nav_Kalman_WD + 23484);
  v62 = v173[0];
  v63 = v173[1];
  v64 = v173[2];
  *(v61 + 45) = *(&v173[2] + 13);
  v61[1] = v63;
  v61[2] = v64;
  *v61 = v62;
  *(&g_Nav_Kalman_WD + 23545) = v172;
  v65 = &g_Nav_Kalman_WD + 23561;
  v66 = v171[0];
  v67 = v171[1];
  v68 = v171[2];
  *(v65 + 6) = *&v171[3];
  *(v65 + 1) = v67;
  *(v65 + 2) = v68;
  *(&g_Nav_Kalman_WD + 23617) = v170;
  *v65 = v66;
  v69 = &g_Nav_Kalman_WD + 23633;
  v70 = v169[7];
  v71 = v169[8];
  v72 = v169[9];
  *(v69 + 6) = *&v169[10];
  *(v69 + 1) = v71;
  *(v69 + 2) = v72;
  *v69 = v70;
  v73 = &g_Nav_Kalman_WD + 23689;
  v74 = *(&v169[6] + 4);
  *(v73 + 2) = HIDWORD(v169[6]);
  *v73 = v74;
  v75 = &g_Nav_Kalman_WD + 23701;
  v75[2] = 0;
  *v75 = 0;
  *(&g_Nav_Kalman_WD + 5926) = 0;
  v76 = (&g_Nav_Kalman_WD + 23708);
  v77 = v169[2];
  v78 = v169[3];
  v79 = v169[4];
  *(v76 + 45) = *(&v169[4] + 13);
  v76[1] = v78;
  v76[2] = v79;
  *v76 = v77;
  v80 = (&g_Nav_Kalman_WD + 23769);
  v81 = v166;
  v82 = v167;
  *(v80 + 63) = *(v169 + 15);
  v83 = v168;
  v84 = v169[0];
  *(&g_Nav_Kalman_WD + 23848) = 0;
  v80[2] = v83;
  v80[3] = v84;
  *(&g_Nav_Kalman_WD + 23849) = v165;
  *v80 = v81;
  v80[1] = v82;
  v85 = (&g_Nav_Kalman_WD + 23865);
  v86 = v164[38];
  *v85 = v164[37];
  v85[1] = v86;
  v87 = v164[39];
  v88 = v164[40];
  v89 = v164[43];
  v90 = v164[41];
  v85[5] = v164[42];
  v85[6] = v89;
  v85[3] = v88;
  v85[4] = v90;
  v85[2] = v87;
  v91 = &g_Nav_Kalman_WD + 23977;
  v92 = *(&v164[36] + 4);
  *(v91 + 2) = HIDWORD(v164[36]);
  *v91 = v92;
  v93 = &g_Nav_Kalman_WD + 23989;
  v93[2] = 0;
  *v93 = 0;
  *(&g_Nav_Kalman_WD + 5998) = 0;
  v94 = &g_Nav_Kalman_WD + 23996;
  v95 = v164[30];
  *v94 = v164[29];
  *(v94 + 1) = v95;
  v96 = v164[31];
  v97 = v164[32];
  v98 = v164[33];
  v99 = v164[34];
  *(v94 + 94) = *(&v164[34] + 14);
  *(v94 + 4) = v98;
  *(v94 + 5) = v99;
  *(v94 + 2) = v96;
  *(v94 + 3) = v97;
  v100 = &g_Nav_Kalman_WD + 24098;
  v100[32] = 0;
  *v100 = 0u;
  *(v100 + 1) = 0u;
  memcpy(&g_Nav_Kalman_WD + 24131, v164, 0x1C7uLL);
  v101 = &g_Nav_Kalman_WD + 24586;
  *v101 = *&v163[13];
  *(v101 + 2) = DWORD2(v163[13]);
  v102 = &g_Nav_Kalman_WD + 24598;
  v103 = v163[11];
  *(v102 + 10) = v163[10];
  *(v102 + 11) = v103;
  *(v102 + 191) = *(&v163[11] + 15);
  v104 = v163[7];
  *(v102 + 6) = v163[6];
  *(v102 + 7) = v104;
  v105 = v163[9];
  *(v102 + 8) = v163[8];
  *(v102 + 9) = v105;
  v106 = v163[3];
  *(v102 + 2) = v163[2];
  *(v102 + 3) = v106;
  v107 = v163[5];
  *(v102 + 4) = v163[4];
  *(v102 + 5) = v107;
  v108 = v163[1];
  *v102 = v163[0];
  *(v102 + 1) = v108;
  v109 = (&g_Nav_Kalman_WD + 24797);
  v110 = *(&v162[3] + 4);
  v111 = *(&v162[5] + 4);
  v109[2] = *(&v162[4] + 4);
  v109[3] = v111;
  *(v109 + 60) = v162[6];
  *v109 = *(&v162[2] + 4);
  v109[1] = v110;
  v112 = &g_Nav_Kalman_WD + 24873;
  *v112 = 0;
  v112[2] = 0;
  *(&g_Nav_Kalman_WD + 24876) = 0;
  v113 = &g_Nav_Kalman_WD + 24877;
  *v113 = 0;
  v113[2] = 0;
  *(&g_Nav_Kalman_WD + 6220) = 0;
  *(&g_Nav_Kalman_WD + 24884) = 0;
  v114 = &g_Nav_Kalman_WD + 24885;
  *v114 = 0;
  v114[2] = 0;
  *(&g_Nav_Kalman_WD + 6222) = 0;
  *(&g_Nav_Kalman_WD + 24892) = 0;
  v115 = &g_Nav_Kalman_WD + 24893;
  *v115 = 0;
  v115[2] = 0;
  *(&g_Nav_Kalman_WD + 6224) = 0;
  *(&g_Nav_Kalman_WD + 24900) = 0;
  v116 = &g_Nav_Kalman_WD + 24901;
  *v116 = 0;
  v116[2] = 0;
  *(&g_Nav_Kalman_WD + 6226) = 0;
  *(&g_Nav_Kalman_WD + 24908) = 0;
  v117 = &g_Nav_Kalman_WD + 24909;
  v117[2] = 0;
  *v117 = 0;
  *(&g_Nav_Kalman_WD + 6228) = 0;
  *(&g_Nav_Kalman_WD + 24916) = 0;
  v118 = &g_Nav_Kalman_WD + 24917;
  v118[2] = 0;
  *v118 = 0;
  *(&g_Nav_Kalman_WD + 6230) = 0;
  *(&g_Nav_Kalman_WD + 24924) = 0;
  v119 = &g_Nav_Kalman_WD + 24925;
  v119[2] = 0;
  *v119 = 0;
  *(&g_Nav_Kalman_WD + 6232) = 0;
  *(&g_Nav_Kalman_WD + 24932) = 0;
  v120 = &g_Nav_Kalman_WD + 24933;
  v120[2] = 0;
  *v120 = 0;
  *(&g_Nav_Kalman_WD + 6234) = 0;
  *(&g_Nav_Kalman_WD + 24940) = 0;
  v121 = &g_Nav_Kalman_WD + 24941;
  v121[2] = 0;
  *v121 = 0;
  *(&g_Nav_Kalman_WD + 6236) = 0;
  *(&g_Nav_Kalman_WD + 24948) = 0;
  v122 = &g_Nav_Kalman_WD + 24949;
  v122[2] = 0;
  *v122 = 0;
  *(&g_Nav_Kalman_WD + 6238) = 0;
  *(&g_Nav_Kalman_WD + 24956) = 0;
  v123 = &g_Nav_Kalman_WD + 24957;
  v123[2] = 0;
  *v123 = 0;
  *(&g_Nav_Kalman_WD + 6240) = 0;
  *(&g_Nav_Kalman_WD + 24964) = 0;
  v124 = &g_Nav_Kalman_WD + 24965;
  v124[2] = 0;
  *v124 = 0;
  *(&g_Nav_Kalman_WD + 6242) = 0;
  *(&g_Nav_Kalman_WD + 24972) = 0;
  v125 = &g_Nav_Kalman_WD + 24973;
  v125[2] = 0;
  *v125 = 0;
  *(&g_Nav_Kalman_WD + 6244) = 0;
  *(&g_Nav_Kalman_WD + 24980) = 0;
  v126 = &g_Nav_Kalman_WD + 24981;
  v126[2] = 0;
  *v126 = 0;
  *(&g_Nav_Kalman_WD + 6246) = 0;
  *(&g_Nav_Kalman_WD + 24988) = 0;
  v127 = &g_Nav_Kalman_WD + 24989;
  v127[2] = 0;
  *v127 = 0;
  *(&g_Nav_Kalman_WD + 6248) = 0;
  *(&g_Nav_Kalman_WD + 24996) = 0;
  v128 = &g_Nav_Kalman_WD + 24997;
  v128[2] = 0;
  *v128 = 0;
  *(&g_Nav_Kalman_WD + 6250) = 0;
  *(&g_Nav_Kalman_WD + 25004) = 0;
  v129 = &g_Nav_Kalman_WD + 25005;
  v129[2] = 0;
  *v129 = 0;
  *(&g_Nav_Kalman_WD + 6252) = 0;
  *(&g_Nav_Kalman_WD + 25012) = 0;
  v130 = &g_Nav_Kalman_WD + 25013;
  v130[2] = 0;
  *v130 = 0;
  *(&g_Nav_Kalman_WD + 6254) = 0;
  *(&g_Nav_Kalman_WD + 25020) = 0;
  v131 = &g_Nav_Kalman_WD + 25021;
  v131[2] = 0;
  *v131 = 0;
  *(&g_Nav_Kalman_WD + 6256) = 0;
  *(&g_Nav_Kalman_WD + 25028) = 0;
  v132 = &g_Nav_Kalman_WD + 25029;
  v132[2] = 0;
  *v132 = 0;
  *(&g_Nav_Kalman_WD + 6258) = 0;
  *(&g_Nav_Kalman_WD + 25036) = 0;
  v133 = &g_Nav_Kalman_WD + 25037;
  v133[2] = 0;
  *v133 = 0;
  *(&g_Nav_Kalman_WD + 6260) = 0;
  *(&g_Nav_Kalman_WD + 25044) = 0;
  v134 = &g_Nav_Kalman_WD + 25045;
  v134[2] = 0;
  *v134 = 0;
  *(&g_Nav_Kalman_WD + 6262) = 0;
  *(&g_Nav_Kalman_WD + 25052) = 0;
  v135 = &g_Nav_Kalman_WD + 25053;
  v135[2] = 0;
  *v135 = 0;
  *(&g_Nav_Kalman_WD + 6264) = 0;
  *(&g_Nav_Kalman_WD + 25060) = 0;
  v136 = &g_Nav_Kalman_WD + 25061;
  v136[2] = 0;
  *v136 = 0;
  *(&g_Nav_Kalman_WD + 6266) = 0;
  *(&g_Nav_Kalman_WD + 25068) = 0;
  v137 = &g_Nav_Kalman_WD + 25069;
  v137[2] = 0;
  *v137 = 0;
  *(&g_Nav_Kalman_WD + 6268) = 0;
  *(&g_Nav_Kalman_WD + 25076) = 0;
  v138 = &g_Nav_Kalman_WD + 25077;
  v138[2] = 0;
  *v138 = 0;
  *(&g_Nav_Kalman_WD + 6270) = 0;
  *(&g_Nav_Kalman_WD + 25084) = 0;
  v139 = &g_Nav_Kalman_WD + 25085;
  v139[2] = 0;
  *v139 = 0;
  *(&g_Nav_Kalman_WD + 6272) = 0;
  *(&g_Nav_Kalman_WD + 25092) = 0;
  v140 = &g_Nav_Kalman_WD + 25093;
  v140[2] = 0;
  *v140 = 0;
  *(&g_Nav_Kalman_WD + 6274) = 0;
  *(&g_Nav_Kalman_WD + 25100) = 0;
  v141 = &g_Nav_Kalman_WD + 25101;
  v141[2] = 0;
  *v141 = 0;
  *(&g_Nav_Kalman_WD + 6276) = 0;
  *(&g_Nav_Kalman_WD + 25108) = 0;
  v142 = &g_Nav_Kalman_WD + 25109;
  v142[2] = 0;
  *v142 = 0;
  *(&g_Nav_Kalman_WD + 6278) = 0;
  *(&g_Nav_Kalman_WD + 25116) = 0;
  v143 = &g_Nav_Kalman_WD + 25117;
  v143[2] = 0;
  *v143 = 0;
  *(&g_Nav_Kalman_WD + 6280) = 0;
  *(&g_Nav_Kalman_WD + 25124) = 0;
  v144 = &g_Nav_Kalman_WD + 25125;
  v144[2] = 0;
  *v144 = 0;
  *(&g_Nav_Kalman_WD + 6282) = 0;
  *(&g_Nav_Kalman_WD + 25132) = 0;
  v145 = &g_Nav_Kalman_WD + 25133;
  v145[2] = 0;
  *v145 = 0;
  *(&g_Nav_Kalman_WD + 6284) = 0;
  *(&g_Nav_Kalman_WD + 25140) = 0;
  v146 = &g_Nav_Kalman_WD + 25141;
  v147 = v162[0];
  v148 = v162[1];
  *(v146 + 8) = v162[2];
  *v146 = v147;
  *(v146 + 1) = v148;
  memcpy(&g_Nav_Kalman_WD + 25177, v161, 0x199uLL);
  v149 = &g_Nav_Kalman_WD + 25586;
  *v149 = 0;
  *(v149 + 2) = 0;
  qword_2A1942268 = 0;
  xmmword_2A1942270 = v159;
  *(&dword_2A193BE80 + 12800) = v160;
  memcpy(&g_Nav_Kalman_WD + 25618, v158, 0x142uLL);
  *(&g_Nav_Kalman_WD + 6485) = 0;
  v150 = &g_Nav_Kalman_WD + 25944;
  *(v150 + 2) = 0u;
  *(v150 + 3) = 0u;
  v150[64] = 0;
  *v150 = 0u;
  *(v150 + 1) = 0u;
  v151 = (&g_Nav_Kalman_WD + 26009);
  *v151 = 0;
  *(v151 + 3) = 0;
  qword_2A1942410 = 0;
  *(&g_Nav_Kalman_WD + 26024) = 0;
  v152 = (&g_Nav_Kalman_WD + 26025);
  *(v152 + 3) = 0;
  *v152 = 0;
  qword_2A1942420 = 0;
  v153 = &g_Nav_Kalman_WD + 26040;
  v153[64] = 0;
  *(v153 + 2) = 0u;
  *(v153 + 3) = 0u;
  *v153 = 0u;
  *(v153 + 1) = 0u;
  v154 = (&g_Nav_Kalman_WD + 26105);
  *(v154 + 3) = 0;
  *v154 = 0;
  qword_2A1942470 = 0;
  *(&g_Nav_Kalman_WD + 26120) = 0;
  memcpy(&g_Nav_Kalman_WD + 26121, __src, 0x1498uLL);
  v155 = (&g_Nav_Kalman_WD + 31393);
  *v155 = 0;
  *(&g_Nav_Kalman_WD + 31400) = xmmword_299762350;
  *(&g_Nav_Kalman_WD + 31416) = xmmword_299762360;
  *(v155 + 3) = 0;
  qword_2A1943938 = 0;
  byte_2A19720C4 = 0;
  unk_2A19720BC = 0;
  unk_2A19720B4 = 0;
  if (qword_2A1972098)
  {
    bzero(qword_2A1972098, 0x5F70uLL);
  }

  memset(v186, 0, 275);
  memset(v192, 0, 408);
  memset(v189, 0, 24);
  memset(v164, 0, 24);
  memset(v188, 0, 22);
  memset(__src, 0, 288);
  memset(v187, 0, 584);
  memset(v161, 0, 33);
  memset(v158, 0, 24);
  memset(v163, 0, 22);
  g_Fused_Nav_WD = v163[0];
  *(&g_Fused_Nav_WD + 14) = *(v163 + 14);
  word_2A195469E = 0;
  byte_2A19546A0 = 0;
  memcpy(&unk_2A19546A1, v186, 0x120uLL);
  xmmword_2A19547C1 = 0u;
  unk_2A19547D1 = 0u;
  xmmword_2A19547E1 = 0u;
  unk_2A19547F1 = 0u;
  xmmword_2A1954801 = 0u;
  unk_2A1954811 = 0u;
  xmmword_2A1954821 = 0u;
  unk_2A1954831 = 0u;
  xmmword_2A1954841 = 0u;
  unk_2A1954851 = 0u;
  xmmword_2A1954861 = 0u;
  unk_2A1954871 = 0u;
  xmmword_2A1954881 = 0u;
  unk_2A1954891 = 0u;
  xmmword_2A19548A1 = 0u;
  byte_2A19548B1 = 0;
  memcpy(&unk_2A19548B2, v192, 0x198uLL);
  xmmword_2A1954A4A = v189[0];
  qword_2A1954A5A = *&v189[1];
  xmmword_2A1954A62 = v164[0];
  qword_2A1954A72 = *&v164[1];
  xmmword_2A1954A7A = *v188;
  *(&xmmword_2A1954A7A + 11) = *(&v188[2] + 3);
  byte_2A1954A95 = 0;
  word_2A1954A96 = 0;
  byte_2A1954A98 = 0;
  memcpy(&unk_2A1954A99, __src, 0x120uLL);
  xmmword_2A1954BB9 = 0u;
  unk_2A1954BC9 = 0u;
  xmmword_2A1954BD9 = 0u;
  unk_2A1954BE9 = 0u;
  xmmword_2A1954BF9 = 0u;
  unk_2A1954C09 = 0u;
  xmmword_2A1954C19 = 0u;
  unk_2A1954C29 = 0u;
  xmmword_2A1954C39 = 0u;
  unk_2A1954C49 = 0u;
  xmmword_2A1954C59 = 0u;
  unk_2A1954C69 = 0u;
  xmmword_2A1954C79 = 0u;
  unk_2A1954C89 = 0u;
  xmmword_2A1954C99 = 0u;
  byte_2A1954CA9 = 0;
  memcpy(&unk_2A1954CAA, v187, 0x198uLL);
  xmmword_2A1954E42 = *v161;
  qword_2A1954E52 = *&v161[16];
  xmmword_2A1954E5A = *v158;
  qword_2A1954E6A = *&v158[16];
  qword_2A1954E7A = 0;
  unk_2A1954E82 = 0;
  qword_2A1954E72 = 0;
  qword_2A1954E88 = 0;
  DWORD1(v187[38]) = 0;
  *(&v187[42] + 1) = 0;
  memset(v189, 0, 33);
  memset(v186, 0, 322);
  memset(v164, 0, 33);
  memset(__src, 0, 322);
  *v161 = 0;
  *&v161[3] = 0;
  memset(v188, 0, 322);
  LODWORD(v192[0]) = 0;
  *(v192 + 3) = 0;
  *(&v187[40] + 8) = 0u;
  *(&v187[41] + 8) = 0u;
  *(&v187[38] + 8) = 0u;
  *(&v187[39] + 8) = 0u;
  *(&v187[37] + 4) = 0u;
  *(&v187[36] + 8) = 0u;
  memset(v187, 0, 408);
  *&v161[7] = 0;
  bzero(v192 + 7, 0x324uLL);
  memcpy(&g_GNSS_Debug_Data, v187, 0x2B0uLL);
  xmmword_2A1951030 = 0u;
  unk_2A1951040 = 0u;
  xmmword_2A1951050 = 0u;
  unk_2A1951060 = 0u;
  xmmword_2A1951070 = 0u;
  unk_2A1951080 = 0u;
  unk_2A1951089 = 0u;
  xmmword_2A1951099 = v189[0];
  unk_2A19510A9 = v189[1];
  byte_2A19510B9 = v189[2];
  memcpy(&unk_2A19510BA, v186, 0x142uLL);
  xmmword_2A19511FC = 0u;
  unk_2A195120C = 0u;
  xmmword_2A195121C = 0u;
  unk_2A195122C = 0u;
  xmmword_2A195123C = 0u;
  unk_2A195124C = 0u;
  xmmword_2A195125C = 0u;
  unk_2A195126C = 0u;
  xmmword_2A195127C = 0u;
  unk_2A195128C = 0u;
  xmmword_2A195129C = 0u;
  *(&xmmword_2A195129C + 13) = 0;
  xmmword_2A19512B1 = v164[0];
  unk_2A19512C1 = v164[1];
  byte_2A19512D1 = v164[2];
  memcpy(&unk_2A19512D2, __src, 0x142uLL);
  xmmword_2A1951414 = 0u;
  unk_2A1951424 = 0u;
  xmmword_2A1951434 = 0u;
  unk_2A1951444 = 0u;
  xmmword_2A1951454 = 0u;
  unk_2A1951464 = 0u;
  xmmword_2A1951474 = 0u;
  unk_2A1951484 = 0u;
  xmmword_2A1951494 = 0u;
  unk_2A19514A4 = 0u;
  xmmword_2A19514B4 = 0u;
  *(&xmmword_2A19514B4 + 13) = 0;
  xmmword_2A19514C9 = *v161;
  unk_2A19514D9 = *&v161[16];
  byte_2A19514E9 = v161[32];
  memcpy(&unk_2A19514EA, v188, 0x142uLL);
  xmmword_2A195162C = 0u;
  unk_2A195163C = 0u;
  xmmword_2A195164C = 0u;
  unk_2A195165C = 0u;
  xmmword_2A195166C = 0u;
  unk_2A195167C = 0u;
  xmmword_2A195168C = 0u;
  unk_2A195169C = 0u;
  xmmword_2A19516AC = 0u;
  unk_2A19516BC = 0u;
  xmmword_2A19516CC = 0u;
  *(&xmmword_2A19516CC + 13) = 0;
  return memcpy(&unk_2A19516E1, v192, 0x32BuLL);
}

void GNSS_Log_p_list_Ptr_Mismatch(const char *a1, const void *a2, const void *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a2 != a3)
  {
    v4 = v18;
    v16 = v18;
    v17 = &v19;
    v15[1] = v18;
    v5 = 69;
    v6 = 1u;
    do
    {
      v15[0] = v4 + 1;
      *v4 = v5;
      v4 = v15[0];
      if (v15[0] >= v17)
      {
        v4 = v16;
        v15[0] = v16;
      }

      v5 = aErrorPListCorr[v6++];
    }

    while (v6 != 30);
    v7 = *a1;
    if (*a1)
    {
      v8 = a1 + 1;
      do
      {
        v15[0] = v4 + 1;
        *v4 = v7;
        v4 = v15[0];
        if (v15[0] >= v17)
        {
          v4 = v16;
          v15[0] = v16;
        }

        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    v10 = 0;
    v11 = 58;
    do
    {
      v15[0] = v4 + 1;
      *v4 = v11;
      v4 = v15[0];
      if (v15[0] >= v17)
      {
        v4 = v16;
        v15[0] = v16;
      }

      v11 = asc_2997CB0A0[++v10];
    }

    while (v10 != 2);
    sprintf_p(v15, a2);
    v12 = 0;
    v13 = 32;
    v14 = v15[0];
    do
    {
      v15[0] = v14 + 1;
      *v14 = v13;
      v14 = v15[0];
      if (v15[0] >= v17)
      {
        v14 = v16;
        v15[0] = v16;
      }

      v13 = asc_2997CB0A3[++v12];
    }

    while (v12 != 4);
    sprintf_p(v15, a3);
    *v15[0] = 0;
    EvCrt_v("%s", v18);
  }
}

char **GNSS_Validate_p_list(char **result, const char *a2)
{
  v3 = result;
  v5 = *MEMORY[0x29EDCA608];
  if (*(result + 1) != xmmword_2A1972440 || result[3] != qword_2A1972450 || *(result + 2) != xmmword_2A1972458 || result[6] != qword_2A1972468 || result[7] != qword_2A1972470 || *(result + 4) != xmmword_2A1972478 || *(result + 5) != xmmword_2A1972488 || result[12] != qword_2A1972498 || result[13] != qword_2A19724A0 || result[14] != qword_2A19724A8 || *(result + 15) != xmmword_2A19724B0 || result[17] != qword_2A19724C0 || result[18] != xmmword_2A19724C8 || result[20] != qword_2A19724D8 || result[21] != qword_2A19724E0 || result[22] != qword_2A19724E8 || result[23] != qword_2A19724F0 || *(result + 12) != xmmword_2A19724F8 || result[26] != qword_2A1972508 || result[27] != qword_2A1972510 || result[29] != qword_2A1972520 || result[30] != qword_2A1972528 || result[31] != qword_2A1972530 || result[33] != qword_2A1972540 || result[34] != qword_2A1972548 || result[35] != qword_2A1972550 || *(result + 18) != xmmword_2A1972558 || result[38] != qword_2A1972568 || result[39] != qword_2A1972570 || *(result + 20) != xmmword_2A1972578 || result[42] != qword_2A1972588 || result[43] != qword_2A1972590 || *(result + 22) != xmmword_2A1972598 || result[46] != qword_2A19725A8 || result[47] != qword_2A19725B0 || *(result + 24) != xmmword_2A19725B8)
  {
    GNSS_Log_p_list_Ptr_Mismatch("DBtt", result[1], xmmword_2A1972440);
    GNSS_Log_p_list_Ptr_Mismatch("DBrm", v3[2], *(&xmmword_2A1972440 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("DBsf", v3[3], qword_2A1972450);
    GNSS_Log_p_list_Ptr_Mismatch("DBae", v3[4], xmmword_2A1972458);
    GNSS_Log_p_list_Ptr_Mismatch("DBaa", v3[5], *(&xmmword_2A1972458 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("DBts", v3[6], qword_2A1972468);
    GNSS_Log_p_list_Ptr_Mismatch("DBnm", v3[7], qword_2A1972470);
    GNSS_Log_p_list_Ptr_Mismatch("DBcr", v3[8], xmmword_2A1972478);
    GNSS_Log_p_list_Ptr_Mismatch("DBss", v3[9], *(&xmmword_2A1972478 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("DBgs", v3[10], xmmword_2A1972488);
    GNSS_Log_p_list_Ptr_Mismatch("DBns", v3[11], *(&xmmword_2A1972488 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("DBst", v3[12], qword_2A1972498);
    GNSS_Log_p_list_Ptr_Mismatch("DBtm", v3[13], qword_2A19724A0);
    GNSS_Log_p_list_Ptr_Mismatch("DBsn", v3[14], qword_2A19724A8);
    GNSS_Log_p_list_Ptr_Mismatch("DBsa", v3[16], *(&xmmword_2A19724B0 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("DBsi", v3[15], xmmword_2A19724B0);
    GNSS_Log_p_list_Ptr_Mismatch("DBsc", v3[17], qword_2A19724C0);
    GNSS_Log_p_list_Ptr_Mismatch("DBsa", v3[18], xmmword_2A19724C8);
    GNSS_Log_p_list_Ptr_Mismatch("MEsd", v3[20], qword_2A19724D8);
    GNSS_Log_p_list_Ptr_Mismatch("GMsd", v3[21], qword_2A19724E0);
    GNSS_Log_p_list_Ptr_Mismatch("NKsd", v3[22], qword_2A19724E8);
    GNSS_Log_p_list_Ptr_Mismatch("DDsd", v3[23], qword_2A19724F0);
    GNSS_Log_p_list_Ptr_Mismatch("STsd", v3[24], xmmword_2A19724F8);
    GNSS_Log_p_list_Ptr_Mismatch("PPsd", v3[25], *(&xmmword_2A19724F8 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("SAsd", v3[26], qword_2A1972508);
    GNSS_Log_p_list_Ptr_Mismatch("FNsd", v3[27], qword_2A1972510);
    GNSS_Log_p_list_Ptr_Mismatch("NKwd", v3[29], qword_2A1972520);
    GNSS_Log_p_list_Ptr_Mismatch("DDwd", v3[30], qword_2A1972528);
    GNSS_Log_p_list_Ptr_Mismatch("STwd", v3[31], qword_2A1972530);
    GNSS_Log_p_list_Ptr_Mismatch("SAwd", v3[33], qword_2A1972540);
    GNSS_Log_p_list_Ptr_Mismatch("FNwd", v3[34], qword_2A1972548);
    GNSS_Log_p_list_Ptr_Mismatch("GNdd", v3[35], qword_2A1972550);
    GNSS_Log_p_list_Ptr_Mismatch("Vers", v3[36], xmmword_2A1972558);
    GNSS_Log_p_list_Ptr_Mismatch("GNcf", v3[37], *(&xmmword_2A1972558 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("GNnd", v3[38], qword_2A1972568);
    GNSS_Log_p_list_Ptr_Mismatch("GNdd", v3[39], qword_2A1972570);
    GNSS_Log_p_list_Ptr_Mismatch("NVrm", v3[40], xmmword_2A1972578);
    GNSS_Log_p_list_Ptr_Mismatch("NArm", v3[41], *(&xmmword_2A1972578 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("NVrs", v3[42], qword_2A1972588);
    GNSS_Log_p_list_Ptr_Mismatch("Meas", v3[43], qword_2A1972590);
    GNSS_Log_p_list_Ptr_Mismatch("Ctrl", v3[44], xmmword_2A1972598);
    GNSS_Log_p_list_Ptr_Mismatch("NMEA", v3[45], *(&xmmword_2A1972598 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("NDbg", v3[46], qword_2A19725A8);
    GNSS_Log_p_list_Ptr_Mismatch("ELog", v3[47], qword_2A19725B0);
    GNSS_Log_p_list_Ptr_Mismatch("GDbg", v3[48], xmmword_2A19725B8);
    strlcpy(__dst, a2, 0x69uLL);
    strlcat(__dst, ": p_list DB corrupted!", 0x80uLL);
    return gn_report_assertion_failure(__dst);
  }

  return result;
}

void _GLOBAL__sub_I_GNSS_Core_Data_cpp()
{
  g_GN_GPS_Data_p_list = 0u;
  *&qword_2A1926910 = 0u;
  unk_2A1926920 = 0u;
  *&qword_2A1926930 = 0u;
  xmmword_2A1926940 = 0u;
  *&qword_2A1926950 = 0u;
  xmmword_2A1926960 = 0u;
  *&qword_2A1926970 = 0u;
  xmmword_2A1926980 = 0u;
  *&qword_2A1926990 = 0u;
  xmmword_2A19269A0 = 0u;
  *&qword_2A19269B0 = 0u;
  xmmword_2A19269C0 = 0u;
  *algn_2A19269D8 = 0u;
  *(&xmmword_2A19269E0 + 8) = 0u;
  *&qword_2A19269F8 = 0u;
  unk_2A1926A10 = 0u;
  xmmword_2A1926A20 = 0u;
  xmmword_2A1926A30 = 0u;
  xmmword_2A1926A40 = 0u;
  xmmword_2A1926A50 = 0u;
  xmmword_2A1926A60 = 0u;
  v0 = &g_DB_SV_Subframes;
  xmmword_2A1926A70 = 0u;
  xmmword_2A1926A80 = 0u;
  v1 = 2688;
  do
  {
    *v0 = 0;
    *(v0 + 52) = 0;
    v0 += 14;
    v1 -= 56;
  }

  while (v1);
  qword_2A19645C0 = 0;
  *algn_2A19645C8 = 0;
  qword_2A19645D0 = 0;
  g_DB_Acq_Aid_Table = 0u;
  unk_2A197AA28 = 0u;
  unk_2A197AA35 = 0u;
  qword_2A197AA48 = 0x200000000;
  dword_2A197AA50 = 5;
  v2 = &xmmword_2A197AA5C;
  v3 = 3936;
  do
  {
    *(v2 - 2) = 0;
    *(v2 - 4) = 0;
    *v2 = 0uLL;
    v2[1] = 0uLL;
    *(v2 + 29) = 0;
    v2 += 3;
    v3 -= 48;
  }

  while (v3);
  qword_2A197C2F0 = 0;
  bzero(&unk_2A197B9B4, 0x85DuLL);
  *(&xmmword_2A197C244 + 9) = 0u;
  xmmword_2A197C244 = 0u;
  xmmword_2A197C234 = 0u;
  xmmword_2A197C224 = 0u;
  xmmword_2A197C214 = 0u;
  xmmword_2A197C260 = 0u;
  *algn_2A197C270 = 0u;
  xmmword_2A197C280 = 0u;
  unk_2A197C290 = 0u;
  xmmword_2A197C2A0 = 0u;
  unk_2A197C2B0 = 0u;
  xmmword_2A197C2C0 = 0u;
  unk_2A197C2D0 = 0u;
  unk_2A197C2DF = 0u;
  xmmword_2A197C6F8 = 0u;
  *(&xmmword_2A197C6F8 + 13) = 0;
  qword_2A197C720 = 0;
  dword_2A197C728 = 0;
  *&algn_2A197C708[8] = 0u;
  unk_2A197C72C = 0x500000002;
  dword_2A197C73C = 0;
  word_2A197C740 = 0;
  dword_2A197CAF8 = 0;
  word_2A197CAFC = 0;
  dword_2A197C734 = 0;
  *(&dword_2A197C734 + 3) = 0;
  xmmword_2A197C748 = 0u;
  unk_2A197C758 = 0u;
  xmmword_2A197C768 = 0u;
  unk_2A197C778 = 0u;
  xmmword_2A197C788 = 0u;
  unk_2A197C798 = 0u;
  xmmword_2A197C7A8 = 0u;
  unk_2A197C7B8 = 0u;
  xmmword_2A197C7C8 = 0u;
  unk_2A197C7D8 = 0u;
  xmmword_2A197C7E8 = 0u;
  unk_2A197C7F8 = 0u;
  xmmword_2A197C808 = 0u;
  unk_2A197C818 = 0u;
  xmmword_2A197C828 = 0u;
  unk_2A197C838 = 0u;
  xmmword_2A197C848 = 0u;
  unk_2A197C858 = 0u;
  xmmword_2A197C868 = 0u;
  unk_2A197C878 = 0u;
  xmmword_2A197C888 = 0u;
  *(&xmmword_2A197C888 + 15) = 0u;
  word_2A197C988 = 0;
  xmmword_2A197C968 = 0u;
  unk_2A197C978 = 0u;
  xmmword_2A197C948 = 0u;
  unk_2A197C958 = 0u;
  xmmword_2A197C928 = 0u;
  unk_2A197C938 = 0u;
  xmmword_2A197C908 = 0u;
  unk_2A197C918 = 0u;
  xmmword_2A197C8E8 = 0u;
  unk_2A197C8F8 = 0u;
  xmmword_2A197C8C8 = 0u;
  unk_2A197C8D8 = 0u;
  xmmword_2A197C8A8 = 0u;
  unk_2A197C8B8 = 0u;
  xmmword_2A197C990 = 0u;
  unk_2A197C9A0 = 0u;
  xmmword_2A197C9B0 = 0u;
  unk_2A197C9C0 = 0u;
  xmmword_2A197C9D0 = 0u;
  unk_2A197C9E0 = 0u;
  xmmword_2A197C9F0 = 0u;
  unk_2A197CA00 = 0u;
  xmmword_2A197CA10 = 0u;
  unk_2A197CA20 = 0u;
  xmmword_2A197CA30 = 0u;
  unk_2A197CA40 = 0u;
  xmmword_2A197CA50 = 0u;
  unk_2A197CA60 = 0u;
  word_2A197CA70 = 0;
  unk_2A197CAE7 = 0u;
  xmmword_2A197CAC8 = 0u;
  unk_2A197CAD8 = 0u;
  xmmword_2A197CAA8 = 0u;
  unk_2A197CAB8 = 0u;
  xmmword_2A197CA88 = 0u;
  unk_2A197CA98 = 0u;
  xmmword_2A197CA78 = 0u;
  word_2A197CB10 = 0;
  xmmword_2A197CB00 = 0u;
  xmmword_2A197CB44 = 0u;
  unk_2A197CB54 = 0u;
  xmmword_2A197CB24 = 0u;
  unk_2A197CB34 = 0u;
  xmmword_2A197CB14 = 0u;
  word_2A197CB64 = 1;
  byte_2A197CB66 = 1;
  qword_2A197CBFC = 0;
  word_2A197CBF7 = 0;
  xmmword_2A197CBD7 = 0u;
  unk_2A197CBE7 = 0u;
  xmmword_2A197CBB7 = 0u;
  unk_2A197CBC7 = 0u;
  xmmword_2A197CB97 = 0u;
  unk_2A197CBA7 = 0u;
  xmmword_2A197CB77 = 0u;
  unk_2A197CB87 = 0u;
  xmmword_2A197CB67 = 0u;
  dword_2A197CC38 = 0;
  xmmword_2A197CC28 = 0u;
  xmmword_2A197CC18 = 0u;
  g_DB_GNSS_Soln = 0;
  unk_2A197A21C = 0u;
  unk_2A197A22C = 0x500000002;
  word_2A197A24E = 0;
  dword_2A197A250 = 0;
  dword_2A197A2CC = 0;
  byte_2A197A2D0 = 0;
  *&algn_2A197A2D1[1] = 0;
  *(&xmmword_2A197A238 + 13) = 0;
  xmmword_2A197A238 = 0u;
  xmmword_2A197A258 = 0u;
  unk_2A197A268 = 0u;
  xmmword_2A197A278 = 0u;
  unk_2A197A288 = 0u;
  xmmword_2A197A298 = 0u;
  unk_2A197A2A8 = 0u;
  xmmword_2A197A2B8 = 0u;
  *(&xmmword_2A197A2B8 + 15) = 0;
  byte_2A197A3EC = 0;
  dword_2A197A3F0 = 0;
  byte_2A197A3F4 = 0;
  dword_2A197A3F8 = 0;
  byte_2A197A3FC = 0;
  dword_2A197A400 = 0;
  byte_2A197A404 = 0;
  dword_2A197A408 = 0;
  byte_2A197A40C = 0;
  dword_2A197A410 = 0;
  byte_2A197A414 = 0;
  dword_2A197A418 = 0;
  byte_2A197A41C = 0;
  dword_2A197A420 = 0;
  byte_2A197A424 = 0;
  dword_2A197A428 = 0;
  byte_2A197A42C = 0;
  dword_2A197A430 = 0;
  byte_2A197A434 = 0;
  dword_2A197A438 = 0;
  byte_2A197A43C = 0;
  dword_2A197A440 = 0;
  byte_2A197A444 = 0;
  dword_2A197A448 = 0;
  byte_2A197A44C = 0;
  dword_2A197A450 = 0;
  byte_2A197A454 = 0;
  dword_2A197A458 = 0;
  byte_2A197A45C = 0;
  dword_2A197A460 = 0;
  byte_2A197A464 = 0;
  dword_2A197A468 = 0;
  byte_2A197A46C = 0;
  dword_2A197A470 = 0;
  byte_2A197A474 = 0;
  dword_2A197A478 = 0;
  byte_2A197A47C = 0;
  dword_2A197A480 = 0;
  byte_2A197A484 = 0;
  dword_2A197A488 = 0;
  byte_2A197A48C = 0;
  dword_2A197A490 = 0;
  byte_2A197A494 = 0;
  dword_2A197A498 = 0;
  byte_2A197A49C = 0;
  dword_2A197A4A0 = 0;
  byte_2A197A4A4 = 0;
  dword_2A197A4A8 = 0;
  byte_2A197A4AC = 0;
  dword_2A197A4B0 = 0;
  byte_2A197A4B4 = 0;
  dword_2A197A4B8 = 0;
  byte_2A197A4BC = 0;
  dword_2A197A4C0 = 0;
  byte_2A197A4C4 = 0;
  dword_2A197A4C8 = 0;
  byte_2A197A4CC = 0;
  dword_2A197A4D0 = 0;
  byte_2A197A4D4 = 0;
  dword_2A197A4D8 = 0;
  byte_2A197A4DC = 0;
  dword_2A197A4E0 = 0;
  byte_2A197A4E4 = 0;
  dword_2A197A4E8 = 0;
  byte_2A197A4EC = 0;
  dword_2A197A4F0 = 0;
  byte_2A197A4F4 = 0;
  dword_2A197A4F8 = 0;
  xmmword_2A197A2D8 = 0u;
  xmmword_2A197CC08 = 0u;
  xmmword_2A197A3A0 = 0u;
  unk_2A197A3D9 = 0u;
  xmmword_2A197A3C0 = 0u;
  unk_2A197A3D0 = 0u;
  xmmword_2A197A3B0 = 0u;
  word_2A197A9F8 = 0;
  xmmword_2A197A9E8 = 0u;
  xmmword_2A197AA00 = 0u;
  word_2A197AA10 = 0;
  unk_2A197A2E8 = 0u;
  unk_2A197A2F8 = 0u;
  unk_2A197A308 = 0u;
  unk_2A197A318 = 0u;
  unk_2A197A328 = 0u;
  unk_2A197A338 = 0u;
  unk_2A197A348 = 0u;
  unk_2A197A358 = 0u;
  unk_2A197A368 = 0u;
  unk_2A197A378 = 0u;
  unk_2A197A388 = 0u;
  unk_2A197A395 = 0;
  bzero(&unk_2A197A500, 0x4E2uLL);
  g_DB_Nav_Soln = 0;
  unk_2A1979A1C = 0u;
  unk_2A1979A2C = 0x500000002;
  word_2A1979A4E = 0;
  dword_2A1979A50 = 0;
  dword_2A1979ACC = 0;
  byte_2A1979AD0 = 0;
  *&algn_2A1979AD1[1] = 0;
  xmmword_2A1979A38 = 0u;
  *(&xmmword_2A1979A38 + 13) = 0;
  xmmword_2A1979A58 = 0u;
  unk_2A1979A68 = 0u;
  xmmword_2A1979A78 = 0u;
  unk_2A1979A88 = 0u;
  xmmword_2A1979A98 = 0u;
  unk_2A1979AA8 = 0u;
  xmmword_2A1979AB8 = 0u;
  *(&xmmword_2A1979AB8 + 15) = 0;
  byte_2A1979BEC = 0;
  dword_2A1979BF0 = 0;
  byte_2A1979BF4 = 0;
  dword_2A1979BF8 = 0;
  byte_2A1979BFC = 0;
  dword_2A1979C00 = 0;
  byte_2A1979C04 = 0;
  dword_2A1979C08 = 0;
  byte_2A1979C0C = 0;
  dword_2A1979C10 = 0;
  byte_2A1979C14 = 0;
  dword_2A1979C18 = 0;
  byte_2A1979C1C = 0;
  dword_2A1979C20 = 0;
  byte_2A1979C24 = 0;
  dword_2A1979C28 = 0;
  byte_2A1979C2C = 0;
  dword_2A1979C30 = 0;
  byte_2A1979C34 = 0;
  dword_2A1979C38 = 0;
  byte_2A1979C3C = 0;
  dword_2A1979C40 = 0;
  byte_2A1979C44 = 0;
  dword_2A1979C48 = 0;
  byte_2A1979C4C = 0;
  dword_2A1979C50 = 0;
  byte_2A1979C54 = 0;
  dword_2A1979C58 = 0;
  byte_2A1979C5C = 0;
  dword_2A1979C60 = 0;
  byte_2A1979C64 = 0;
  dword_2A1979C68 = 0;
  byte_2A1979C6C = 0;
  dword_2A1979C70 = 0;
  byte_2A1979C74 = 0;
  dword_2A1979C78 = 0;
  byte_2A1979C7C = 0;
  dword_2A1979C80 = 0;
  byte_2A1979C84 = 0;
  dword_2A1979C88 = 0;
  byte_2A1979C8C = 0;
  dword_2A1979C90 = 0;
  byte_2A1979C94 = 0;
  dword_2A1979C98 = 0;
  byte_2A1979C9C = 0;
  dword_2A1979CA0 = 0;
  byte_2A1979CA4 = 0;
  dword_2A1979CA8 = 0;
  byte_2A1979CAC = 0;
  dword_2A1979CB0 = 0;
  byte_2A1979CB4 = 0;
  dword_2A1979CB8 = 0;
  byte_2A1979CBC = 0;
  dword_2A1979CC0 = 0;
  byte_2A1979CC4 = 0;
  dword_2A1979CC8 = 0;
  byte_2A1979CCC = 0;
  dword_2A1979CD0 = 0;
  byte_2A1979CD4 = 0;
  dword_2A1979CD8 = 0;
  byte_2A1979CDC = 0;
  dword_2A1979CE0 = 0;
  byte_2A1979CE4 = 0;
  dword_2A1979CE8 = 0;
  byte_2A1979CEC = 0;
  dword_2A1979CF0 = 0;
  byte_2A1979CF4 = 0;
  dword_2A1979CF8 = 0;
  xmmword_2A1979AD8 = 0u;
  unk_2A1979BD0 = 0u;
  unk_2A1979BC0 = 0u;
  unk_2A1979BB0 = 0u;
  unk_2A1979BA0 = 0u;
  unk_2A1979BD9 = 0u;
  xmmword_2A197A1E8 = 0u;
  word_2A197A1F8 = 0;
  word_2A197A210 = 0;
  xmmword_2A197A200 = 0u;
  xmmword_2A1979AE8 = 0u;
  unk_2A1979AF8 = 0u;
  xmmword_2A1979B08 = 0u;
  unk_2A1979B18 = 0u;
  xmmword_2A1979B28 = 0u;
  unk_2A1979B38 = 0u;
  xmmword_2A1979B48 = 0u;
  unk_2A1979B58 = 0u;
  xmmword_2A1979B68 = 0u;
  unk_2A1979B78 = 0u;
  xmmword_2A1979B88 = 0u;
  *(&xmmword_2A1979B88 + 13) = 0;
  bzero(&unk_2A1979D00, 0x4E2uLL);
  qword_2A1956458 = 0;
  unk_2A1956460 = 0;
  word_2A1956468 = 0;
  qword_2A19564B8 = 0;
  unk_2A19564C0 = 0;
  word_2A19564C8 = 0;
  qword_2A1956518 = 0;
  unk_2A1956520 = 0;
  word_2A1956528 = 0;
  dword_2A1951BE4 = 0;
  word_2A1951BE8 = 0;
  dword_2A1951C00 = 0;
  byte_2A1951C04 = 0;
  dword_2A1951C28 = 0;
  g_G5K_ME_SD[0] = 0u;
  unk_2A1951A20 = 0u;
  xmmword_2A1951A30 = 0u;
  unk_2A1951A40 = 0u;
  xmmword_2A1951A50 = 0u;
  unk_2A1951A60 = 0u;
  xmmword_2A1951A70 = 0u;
  unk_2A1951A80 = 0u;
  xmmword_2A1951A90 = 0u;
  unk_2A1951AA0 = 0u;
  xmmword_2A1951AB0 = 0u;
  unk_2A1951AC0 = 0u;
  xmmword_2A1951AD0 = 0u;
  unk_2A1951AE0 = 0u;
  xmmword_2A1951AF0 = 0u;
  unk_2A1951B00 = 0u;
  xmmword_2A1951B10 = 0u;
  unk_2A1951B20 = 0u;
  xmmword_2A1951B30 = 0u;
  unk_2A1951B40 = 0u;
  xmmword_2A1951B50 = 0u;
  unk_2A1951B60 = 0u;
  xmmword_2A1951B70 = 0u;
  unk_2A1951B80 = 0u;
  unk_2A1951B89 = 0u;
  qword_2A1951BA2 = 0;
  qword_2A1951B9A = 0;
  *(&qword_2A1951BAA + 7) = 0;
  qword_2A1951BAA = 0;
  qword_2A1951BBC = 0;
  *(&qword_2A1951BBC + 5) = 0;
  qword_2A1951BD4 = 0;
  qword_2A1951BCC = 0;
  *(&qword_2A1951BD4 + 6) = 0;
  qword_2A1951BF4 = 0;
  qword_2A1951BEC = 0;
  *(&qword_2A1951BF4 + 7) = 0;
  qword_2A1951C18 = 0;
  *(&qword_2A1951C18 + 5) = 0;
  v4 = &qword_2A1951C30;
  v5 = 160;
  qword_2A1951C08 = 0;
  unk_2A1951C10 = 0;
  do
  {
    *(v4 - 4) = 0;
    *v4 = 0;
    *(v4 + 7) = 0;
    v4 = (v4 + 20);
    v5 -= 20;
  }

  while (v5);
  for (i = 0; i != 2688; i += 56)
  {
    v7 = g_G5K_ME_SD + i;
    *(v7 + 88) = 0;
    *(v7 + 356) = 0;
    *(&g_G5K_ME_SD[44] + i + 12) = 0;
    *(v7 + 362) = 0;
    v8 = (&g_G5K_ME_SD[45] + i + 8);
    *(v7 + 94) = 0;
    *(v7 + 372) = 0;
    *v8 = 0uLL;
  }

  for (j = 0; j != 1728; j += 36)
  {
    v10 = g_G5K_ME_SD + j;
    v10[3424] = 0;
    *(v10 + 213) = 0uLL;
    *(v10 + 212) = 0uLL;
  }

  for (k = 0; k != 960; k += 20)
  {
    v12 = g_G5K_ME_SD + k;
    *(v12 + 641) = 0;
    *(v12 + 640) = 0;
    *(v12 + 2568) = 0;
  }

  for (m = 0; m != 128; ++m)
  {
    *&g_G5K_ME_SD[m + 380] = 0;
    *(&g_G5K_ME_SD[m + 380] + 6) = 0;
  }

  v14 = &byte_2A1953A04;
  v15 = 2688;
  do
  {
    *(v14 - 13) = 0;
    *v14 = 0;
    v14 += 56;
    v15 -= 56;
  }

  while (v15);
  word_2A19545A8 = 0;
  dword_2A19545FC = 0;
  byte_2A1954600 = 0;
  xmmword_2A19545BC = 0u;
  unk_2A19545CC = 0u;
  xmmword_2A19545DC = 0u;
  *(&xmmword_2A19545DC + 14) = 0u;
  dword_2A195460C = 0;
  dword_2A1954604 = 0;
  *(&dword_2A1954604 + 3) = 0;
  xmmword_2A1954450 = 0u;
  unk_2A1954460 = 0u;
  xmmword_2A1954470 = 0u;
  unk_2A1954480 = 0u;
  xmmword_2A1954490 = 0u;
  unk_2A19544A0 = 0u;
  xmmword_2A19544B0 = 0u;
  unk_2A19544C0 = 0u;
  xmmword_2A19544D0 = 0u;
  unk_2A19544E0 = 0u;
  xmmword_2A19544F0 = 0u;
  unk_2A1954500 = 0u;
  xmmword_2A1954510 = 0u;
  unk_2A1954520 = 0u;
  xmmword_2A1954530 = 0u;
  unk_2A1954540 = 0u;
  xmmword_2A1954550 = 0u;
  unk_2A1954560 = 0u;
  xmmword_2A1954570 = 0u;
  unk_2A1954580 = 0u;
  xmmword_2A1954590 = 0u;
  *(&xmmword_2A1954590 + 15) = 0;
  *(&qword_2A19545AC + 6) = 0;
  qword_2A19545AC = 0;
  s_Nav_Kalman_SD::s_Nav_Kalman_SD(&g_Nav_Kalman_SD);
  dword_2A193BED4 = 0;
  byte_2A193BED8 = 0;
  *&algn_2A193BED9[1] = 0;
  qword_2A193C0D0 = 0;
  g_Nav_Kalman_WD = 0u;
  dword_2A193BE80 = 0;
  *&algn_2A193BE84[4] = 0u;
  *(&xmmword_2A193BE90 + 8) = 0u;
  unk_2A193BEA8 = 0u;
  *(&xmmword_2A193BEB0 + 8) = 0u;
  unk_2A193BEC1 = 0u;
  xmmword_2A193BEE0 = 0u;
  unk_2A193BEF0 = 0u;
  xmmword_2A193BF00 = 0u;
  unk_2A193BF10 = 0u;
  xmmword_2A193BF20 = 0u;
  unk_2A193BF30 = 0u;
  xmmword_2A193BF40 = 0u;
  unk_2A193BF50 = 0u;
  xmmword_2A193BF60 = 0u;
  unk_2A193BF70 = 0u;
  xmmword_2A193BF80 = 0u;
  unk_2A193BF90 = 0u;
  xmmword_2A193BFA0 = 0u;
  unk_2A193BFB0 = 0u;
  xmmword_2A193BFC0 = 0u;
  unk_2A193BFD0 = 0u;
  xmmword_2A193BFE0 = 0u;
  unk_2A193BFF0 = 0u;
  xmmword_2A193C000 = 0u;
  unk_2A193C010 = 0u;
  xmmword_2A193C020 = 0u;
  unk_2A193C030 = 0u;
  xmmword_2A193C040 = 0u;
  unk_2A193C050 = 0u;
  xmmword_2A193C060 = 0u;
  unk_2A193C070 = 0u;
  xmmword_2A193C080 = 0u;
  unk_2A193C090 = 0u;
  xmmword_2A193C0A0 = 0u;
  unk_2A193C0B0 = 0u;
  xmmword_2A193C0B9 = 0u;
  dword_2A193C0D8 = -1;
  word_2A193C0F6 = 0;
  dword_2A193C0F8 = 0;
  *(&qword_2A193C173 + 1) = 0;
  BYTE5(qword_2A193C173) = 0;
  *(&qword_2A193C173 + 7) = 0;
  *(&xmmword_2A193C0DC + 4) = 0u;
  unk_2A193C0ED = 0;
  *(&xmmword_2A193C0FC + 4) = 0u;
  unk_2A193C110 = 0u;
  *(&xmmword_2A193C11C + 4) = 0u;
  unk_2A193C130 = 0u;
  *(&xmmword_2A193C13C + 4) = 0u;
  *(&xmmword_2A193C14C + 4) = 0u;
  xmmword_2A193C160 = 0u;
  *(&xmmword_2A193C160 + 15) = 0;
  v16 = (&g_Nav_Kalman_WD + 22780);
  *(v16 + 5) = 0;
  *v16 = 0;
  v17 = (&g_Nav_Kalman_WD + 22852);
  *(v17 + 5) = 0;
  *v17 = 0;
  v18 = (&g_Nav_Kalman_WD + 22924);
  *v18 = 0;
  *(v18 + 5) = 0;
  v19 = (&g_Nav_Kalman_WD + 22996);
  *v19 = 0;
  *(v19 + 5) = 0;
  v20 = (&g_Nav_Kalman_WD + 23124);
  *v20 = 0;
  *(v20 + 5) = 0;
  *(&g_Nav_Kalman_WD + 5817) = 0;
  *(&g_Nav_Kalman_WD + 23272) = 0;
  v21 = (&g_Nav_Kalman_WD + 23196);
  *v21 = 0;
  *(v21 + 5) = 0;
  *(&g_Nav_Kalman_WD + 5834) = 0;
  v22 = &g_Nav_Kalman_WD + 23324;
  *v22 = 0;
  v22[8] = 0;
  *(&g_Nav_Kalman_WD + 5852) = 0;
  v23 = &g_Nav_Kalman_WD + 23396;
  v23[8] = 0;
  *v23 = 0;
  *(&g_Nav_Kalman_WD + 5870) = 0;
  v24 = &g_Nav_Kalman_WD + 23468;
  v24[8] = 0;
  *v24 = 0;
  v25 = (&g_Nav_Kalman_WD + 23548);
  *(v25 + 5) = 0;
  *v25 = 0;
  v26 = (&g_Nav_Kalman_WD + 23620);
  *(v26 + 5) = 0;
  *v26 = 0;
  *(&g_Nav_Kalman_WD + 5926) = 0;
  v27 = &g_Nav_Kalman_WD + 23692;
  v27[8] = 0;
  *v27 = 0;
  *(&g_Nav_Kalman_WD + 23848) = 0;
  v28 = (&g_Nav_Kalman_WD + 23852);
  *v28 = 0;
  *(v28 + 5) = 0;
  *(&g_Nav_Kalman_WD + 5998) = 0;
  *(&g_Nav_Kalman_WD + 24100) = 0;
  v29 = &g_Nav_Kalman_WD + 23980;
  v29[8] = 0;
  *v29 = 0;
  *(&xmmword_2A1941C92 + 14) = 0u;
  *(&g_Nav_Kalman_WD + 24127) = 0;
  *(&g_Nav_Kalman_WD + 24876) = 0;
  *(&g_Nav_Kalman_WD + 6220) = 0;
  *(&g_Nav_Kalman_WD + 24884) = 0;
  *(&g_Nav_Kalman_WD + 6222) = 0;
  *(&g_Nav_Kalman_WD + 24892) = 0;
  *(&g_Nav_Kalman_WD + 6224) = 0;
  *(&g_Nav_Kalman_WD + 24900) = 0;
  *(&g_Nav_Kalman_WD + 6226) = 0;
  *(&g_Nav_Kalman_WD + 24908) = 0;
  *(&g_Nav_Kalman_WD + 6228) = 0;
  *(&g_Nav_Kalman_WD + 24916) = 0;
  *(&g_Nav_Kalman_WD + 6230) = 0;
  *(&g_Nav_Kalman_WD + 24924) = 0;
  *(&g_Nav_Kalman_WD + 6232) = 0;
  *(&g_Nav_Kalman_WD + 24932) = 0;
  *(&g_Nav_Kalman_WD + 6234) = 0;
  *(&g_Nav_Kalman_WD + 24940) = 0;
  *(&g_Nav_Kalman_WD + 6236) = 0;
  *(&g_Nav_Kalman_WD + 24948) = 0;
  *(&g_Nav_Kalman_WD + 6238) = 0;
  *(&g_Nav_Kalman_WD + 24956) = 0;
  *(&g_Nav_Kalman_WD + 6240) = 0;
  *(&g_Nav_Kalman_WD + 24964) = 0;
  *(&g_Nav_Kalman_WD + 6242) = 0;
  *(&g_Nav_Kalman_WD + 24972) = 0;
  *(&g_Nav_Kalman_WD + 6244) = 0;
  *(&g_Nav_Kalman_WD + 24980) = 0;
  *(&g_Nav_Kalman_WD + 6246) = 0;
  *(&g_Nav_Kalman_WD + 24988) = 0;
  *(&g_Nav_Kalman_WD + 6248) = 0;
  *(&g_Nav_Kalman_WD + 24996) = 0;
  *(&g_Nav_Kalman_WD + 6250) = 0;
  *(&g_Nav_Kalman_WD + 25004) = 0;
  *(&g_Nav_Kalman_WD + 6252) = 0;
  *(&g_Nav_Kalman_WD + 25012) = 0;
  *(&g_Nav_Kalman_WD + 6254) = 0;
  *(&g_Nav_Kalman_WD + 25020) = 0;
  *(&g_Nav_Kalman_WD + 6256) = 0;
  *(&g_Nav_Kalman_WD + 25028) = 0;
  *(&g_Nav_Kalman_WD + 6258) = 0;
  *(&g_Nav_Kalman_WD + 25036) = 0;
  *(&g_Nav_Kalman_WD + 6260) = 0;
  *(&g_Nav_Kalman_WD + 25044) = 0;
  *(&g_Nav_Kalman_WD + 6262) = 0;
  *(&g_Nav_Kalman_WD + 25052) = 0;
  *(&g_Nav_Kalman_WD + 6264) = 0;
  *(&g_Nav_Kalman_WD + 25060) = 0;
  *(&g_Nav_Kalman_WD + 6266) = 0;
  *(&g_Nav_Kalman_WD + 25068) = 0;
  *(&g_Nav_Kalman_WD + 6268) = 0;
  *(&g_Nav_Kalman_WD + 25076) = 0;
  *(&g_Nav_Kalman_WD + 6270) = 0;
  *(&g_Nav_Kalman_WD + 25084) = 0;
  *(&g_Nav_Kalman_WD + 6272) = 0;
  *(&g_Nav_Kalman_WD + 25092) = 0;
  *(&g_Nav_Kalman_WD + 6274) = 0;
  *(&g_Nav_Kalman_WD + 25100) = 0;
  *(&g_Nav_Kalman_WD + 6276) = 0;
  *(&g_Nav_Kalman_WD + 25108) = 0;
  *(&g_Nav_Kalman_WD + 6278) = 0;
  *(&g_Nav_Kalman_WD + 25116) = 0;
  *(&g_Nav_Kalman_WD + 6280) = 0;
  *(&g_Nav_Kalman_WD + 25124) = 0;
  *(&g_Nav_Kalman_WD + 6282) = 0;
  *(&g_Nav_Kalman_WD + 25132) = 0;
  *(&g_Nav_Kalman_WD + 6284) = 0;
  *(&g_Nav_Kalman_WD + 25140) = 0;
  *(&g_Nav_Kalman_WD + 24857) = 0u;
  xmmword_2A1941F80 = 0u;
  unk_2A1941F70 = 0u;
  xmmword_2A1941F60 = 0u;
  *(&xmmword_2A1941F4D + 3) = 0u;
  *(&g_Nav_Kalman_WD + 6398) = 0;
  *(&g_Nav_Kalman_WD + 12798) = 0;
  *(&g_Nav_Kalman_WD + 26024) = 0;
  qword_2A1942410 = 0;
  v30 = &g_Nav_Kalman_WD + 25944;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 2) = 0u;
  *(v30 + 3) = 0u;
  v30[64] = 0;
  qword_2A1942470 = 0;
  *(&g_Nav_Kalman_WD + 26120) = 0;
  *(&g_Nav_Kalman_WD + 6508) = 0;
  *(&g_Nav_Kalman_WD + 25924) = 0u;
  v31 = &g_Nav_Kalman_WD + 26040;
  v31[64] = 0;
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = (&g_Nav_Kalman_WD + 25624);
  v32[17] = 0u;
  v32[18] = 0u;
  v32[15] = 0u;
  v32[16] = 0u;
  v32[13] = 0u;
  v32[14] = 0u;
  v32[11] = 0u;
  v32[12] = 0u;
  v32[9] = 0u;
  v32[10] = 0u;
  v32[7] = 0u;
  v32[8] = 0u;
  v32[5] = 0u;
  v32[6] = 0u;
  v32[3] = 0u;
  v32[4] = 0u;
  v32[1] = 0u;
  v32[2] = 0u;
  *v32 = 0u;
  byte_2A193C230 = 0;
  *(&xmmword_2A193C20E + 2) = 0u;
  unk_2A193C220 = 0u;
  xmmword_2A193C1F0 = 0u;
  unk_2A193C200 = 0u;
  xmmword_2A193C1D0 = 0u;
  unk_2A193C1E0 = 0u;
  xmmword_2A193C1B0 = 0u;
  unk_2A193C1C0 = 0u;
  xmmword_2A193C190 = 0u;
  unk_2A193C1A0 = 0u;
  *(&xmmword_2A193C17E + 2) = 0u;
  unk_2A193C234 = 0u;
  unk_2A193C244 = 0u;
  *(&xmmword_2A193C251 + 3) = 0u;
  unk_2A193C264 = 0u;
  *(&xmmword_2A193C271 + 3) = 0u;
  unk_2A193C284 = 0u;
  *(&xmmword_2A193C291 + 1) = 0u;
  bzero(&unk_2A193C2A8, 0x6C5uLL);
  bzero(&unk_2A193C970, 0x15C5uLL);
  bzero(&g_Nav_Kalman_WD + 8392, 0x15C5uLL);
  bzero(&g_Nav_Kalman_WD + 873, 0x2255uLL);
  v33 = &g_Nav_Kalman_WD + 22758;
  *(v33 + 15) = 0;
  *v33 = 0u;
  v34 = &g_Nav_Kalman_WD + 22796;
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 2) = 0u;
  *(v34 + 45) = 0;
  v35 = &g_Nav_Kalman_WD + 22868;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *(v35 + 45) = 0;
  v36 = &g_Nav_Kalman_WD + 22940;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 2) = 0u;
  *(v36 + 45) = 0;
  v37 = (&g_Nav_Kalman_WD + 23012);
  *v37 = 0u;
  v37[1] = 0u;
  v37[2] = 0u;
  v37[3] = 0u;
  v37[4] = 0u;
  v37[5] = 0u;
  *(v37 + 93) = 0u;
  v38 = &g_Nav_Kalman_WD + 23140;
  *(v38 + 45) = 0;
  *(v38 + 1) = 0u;
  *(v38 + 2) = 0u;
  *v38 = 0u;
  v39 = &g_Nav_Kalman_WD + 23212;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  *(v39 + 2) = 0u;
  *(v39 + 45) = 0;
  *(&xmmword_2A1941959 + 7) = 0u;
  *(&dword_2A193BE80 + 23280) = 0;
  v40 = &g_Nav_Kalman_WD + 23304;
  *v40 = 0u;
  v40[16] = 0;
  *(&xmmword_2A194199C + 4) = 0u;
  *(&xmmword_2A19419AC + 4) = 0u;
  xmmword_2A19419C0 = 0u;
  *(&unk_2A193BEA0 + 23344) = 0;
  v41 = &g_Nav_Kalman_WD + 23416;
  *v41 = 0u;
  *(v41 + 1) = 0u;
  *(v41 + 2) = 0u;
  v41[48] = 0;
  *(&g_Nav_Kalman_WD + 23529) = 0u;
  xmmword_2A1941A50 = 0u;
  *(&xmmword_2A1941A3C + 4) = 0u;
  *(&xmmword_2A1941A2C + 4) = 0u;
  v42 = &g_Nav_Kalman_WD + 23564;
  *(v42 + 45) = 0;
  *(v42 + 1) = 0u;
  *(v42 + 2) = 0u;
  *v42 = 0u;
  v43 = &g_Nav_Kalman_WD + 23636;
  *(v43 + 45) = 0;
  *(v43 + 1) = 0u;
  *(v43 + 2) = 0u;
  *v43 = 0u;
  *(&g_Nav_Kalman_WD + 23753) = 0u;
  xmmword_2A1941B30 = 0u;
  *(&xmmword_2A1941B1C + 4) = 0u;
  *(&xmmword_2A1941B0C + 4) = 0u;
  v44 = (&g_Nav_Kalman_WD + 23868);
  *(v44 + 93) = 0u;
  v44[4] = 0u;
  v44[5] = 0u;
  v44[2] = 0u;
  v44[3] = 0u;
  *v44 = 0u;
  v44[1] = 0u;
  *(&dword_2A193BED0 + 12000) = 0;
  xmmword_2A1941C80 = 0u;
  unk_2A1941C70 = 0u;
  xmmword_2A1941C60 = 0u;
  unk_2A1941C50 = 0u;
  xmmword_2A1941C40 = 0u;
  *(&xmmword_2A1941C2C + 4) = 0u;
  v45 = &g_Nav_Kalman_WD + 24136;
  *(v45 + 224) = 0;
  *(v45 + 26) = 0u;
  *(v45 + 27) = 0u;
  *(v45 + 24) = 0u;
  *(v45 + 25) = 0u;
  *(v45 + 22) = 0u;
  *(v45 + 23) = 0u;
  *(v45 + 20) = 0u;
  *(v45 + 21) = 0u;
  *(v45 + 18) = 0u;
  *(v45 + 19) = 0u;
  *(v45 + 16) = 0u;
  *(v45 + 17) = 0u;
  *(v45 + 14) = 0u;
  *(v45 + 15) = 0u;
  *(v45 + 12) = 0u;
  *(v45 + 13) = 0u;
  *(v45 + 10) = 0u;
  *(v45 + 11) = 0u;
  *(v45 + 8) = 0u;
  *(v45 + 9) = 0u;
  *(v45 + 6) = 0u;
  *(v45 + 7) = 0u;
  *(v45 + 4) = 0u;
  *(v45 + 5) = 0u;
  *(v45 + 2) = 0u;
  *(v45 + 3) = 0u;
  *v45 = 0u;
  *(v45 + 1) = 0u;
  v46 = &g_Nav_Kalman_WD + 24588;
  *(v46 + 4) = 0;
  *v46 = 0;
  v47 = &g_Nav_Kalman_WD + 24600;
  *v47 = 0u;
  *(v47 + 1) = 0u;
  *(v47 + 2) = 0u;
  *(v47 + 3) = 0u;
  *(v47 + 4) = 0u;
  *(v47 + 5) = 0u;
  *(v47 + 6) = 0u;
  *(v47 + 7) = 0u;
  *(v47 + 8) = 0u;
  *(v47 + 9) = 0u;
  *(v47 + 10) = 0u;
  *(v47 + 11) = 0u;
  *(v47 + 189) = 0;
  v48 = &g_Nav_Kalman_WD + 25144;
  *v48 = 0u;
  *(v48 + 1) = 0u;
  v48[32] = 0;
  *(&xmmword_2A193C000 + 12592) = 0;
  xmmword_2A1942250 = 0u;
  xmmword_2A1942240 = 0u;
  xmmword_2A1942230 = 0u;
  xmmword_2A1942220 = 0u;
  xmmword_2A1942210 = 0u;
  xmmword_2A1942200 = 0u;
  xmmword_2A19421F0 = 0u;
  xmmword_2A19421E0 = 0u;
  xmmword_2A19421D0 = 0u;
  xmmword_2A19421C0 = 0u;
  xmmword_2A19421B0 = 0u;
  xmmword_2A19421A0 = 0u;
  xmmword_2A1942190 = 0u;
  xmmword_2A1942180 = 0u;
  xmmword_2A1942170 = 0u;
  xmmword_2A1942160 = 0u;
  xmmword_2A1942150 = 0u;
  xmmword_2A1942140 = 0u;
  xmmword_2A1942130 = 0u;
  xmmword_2A1942120 = 0u;
  xmmword_2A1942110 = 0u;
  xmmword_2A1942100 = 0u;
  xmmword_2A19420F0 = 0u;
  xmmword_2A19420E0 = 0u;
  xmmword_2A19420D0 = 0u;
  *(&dword_2A193BE80 + 12800) = 0;
  xmmword_2A1942270 = 0u;
  bzero(&g_Nav_Kalman_WD + 1633, 0x1491uLL);
  *(&g_Nav_Kalman_WD + 31400) = xmmword_299762350;
  *(&g_Nav_Kalman_WD + 31416) = xmmword_299762360;
  *(&g_Nav_Kalman_WD + 7858) = 0;
  *(&g_Nav_Kalman_WD + 31436) = 0;
  *(&g_Nav_Kalman_WD + 31437) = 0;
  s_NA_Ram::s_NA_Ram(&g_NA_Ram);
  *&qword_2A19724E8 = 0u;
  xmmword_2A19724F8 = 0u;
  xmmword_2A19724C8 = 0u;
  *&qword_2A19724D8 = 0u;
  *&qword_2A19724A8 = 0u;
  *(&xmmword_2A19724B0 + 8) = 0u;
  xmmword_2A1972488 = 0u;
  *&qword_2A1972498 = 0u;
  *&qword_2A1972468 = 0u;
  xmmword_2A1972478 = 0u;
  *(&xmmword_2A1972440 + 8) = 0u;
  xmmword_2A1972458 = 0u;
  unk_2A1972438 = 0u;
  *&qword_2A1972510 = 0u;
  *&qword_2A1972520 = 0u;
  *&qword_2A1972530 = 0u;
  *&qword_2A1972548 = 0u;
  xmmword_2A1972558 = 0u;
  *&qword_2A1972568 = 0u;
  xmmword_2A1972578 = 0u;
  *&qword_2A1972588 = 0u;
  xmmword_2A1972598 = 0u;
  *&qword_2A19725A8 = 0u;
  xmmword_2A19725B8 = 0u;
}

double Inc_Local_Time(int a1, int a2, double *a3, __int16 *a4)
{
  v4 = 1000 * a2;
  v5 = *a3 * 1000.0;
  v6 = -0.5;
  if (v5 > 0.0)
  {
    v6 = 0.5;
  }

  v7 = v5 + v6;
  if (v7 <= 2147483650.0)
  {
    if (v7 >= -2147483650.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x80000000;
    }
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  v9 = v8 + a1;
  if (v9 >= v4)
  {
    v10 = *a4;
    do
    {
      v9 -= v4;
      ++v10;
    }

    while (v9 >= v4);
    *a4 = v10;
  }

  if (v9 < 0)
  {
    v11 = *a4;
    do
    {
      v9 += v4;
      --v11;
    }

    while (v9 < 0);
    *a4 = v11;
  }

  result = v9 * 0.001;
  *a3 = result;
  return result;
}

uint64_t lsim07_01HandleFtaApiStatus(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim07_01HandleFtaApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (g_GnsFtaCallback)
  {
    v4 = gnssOsa_Calloc("lsim07_01HandleFtaApiStatus", 65, 1, 0xCuLL);
    if (v4)
    {
      v5 = v4;
      *v4 = *(a1 + 12);
      v4[1] = 0;
      v4[2] = *(a1 + 16);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>FtaCB,Id,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim07_01HandleFtaApiStatus", *v5, v5[2]);
        LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
      }

      g_GnsFtaCallback(0, 12, v5);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        goto LABEL_12;
      }

      return 0;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:FTA\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim07_01HandleFtaApiStatus", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
LABEL_12:
    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v10, "LSM", 73, "lsim07_01HandleFtaApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  return 0;
}

uint64_t (*lsim07_02FtaCbInit(uint64_t (*result)(void, void, void)))(void, void, void)
{
  v1 = result;
  v7 = *MEMORY[0x29EDCA608];
  if (result)
  {
    goto LABEL_2;
  }

  if (g_GnsFtaCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim07_02FtaCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
    }

LABEL_2:
    g_GnsFtaCallback = v1;
    return result;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 87, "lsim07_02FtaCbInit", 513);
    return LbsOsaTrace_WriteLog(0xCu, __str, v5, 2, 1);
  }

  return result;
}

uint64_t GNS_FtaInitialize(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_FtaInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_FtaInitialize", 113, 1, 0x18uLL);
  if (!v4)
  {
    return 6;
  }

  v4[3] = 11;
  *(v4 + 2) = a1;
  AgpsSendFsmMsg(131, 131, 8635139, v4);
  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v5 = mach_continuous_time();
  v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 73, "GNS_FtaInitialize");
  v7 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
  return v7;
}

uint64_t GNS_FtaPulseInd(uint64_t a1, __int128 *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_FtaPulseInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:FTA,PulseTime,Id,%u\n", v24);
    goto LABEL_11;
  }

  if (*(a2 + 4) >= 2u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:FTA,TrgSrc,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "GNS_FtaPulseInd", 515, *(a2 + 4), a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

    goto LABEL_17;
  }

  if ((*(a2 + 3) + 1) <= 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v25 = *(a2 + 3);
    v26 = a1;
    v7 = "%10u %s%c %s: #%04hx ASST:FTA,PulseUncUs,%u,Id,%u\n";
LABEL_8:
    v8 = snprintf(__str, 0x40FuLL, v7, v6, "LSM", 87, "GNS_FtaPulseInd", 515, v25, v26);
LABEL_11:
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
    goto LABEL_12;
  }

  if (*(a2 + 1) >= 0x93A80u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
LABEL_12:
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        return 2;
      }

LABEL_17:
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "LSM", 73, "GNS_FtaPulseInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
      return 2;
    }

    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v25 = *(a2 + 1);
    v26 = a1;
    v7 = "%10u %s%c %s: #%04hx ASST:FTA,GpsTowSec,%u,Id,%u\n";
    goto LABEL_8;
  }

  v15 = gnssOsa_Calloc("GNS_FtaPulseInd", 194, 1, 0x28uLL);
  if (v15)
  {
    v16 = v15;
    v17 = *a2;
    *(v15 + 28) = *(a2 + 2);
    *(v15 + 12) = v17;
    *(v15 + 9) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_FTA_PULSE_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "GNS_FtaPulseInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8595203, v16);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "GNS_FtaPulseInd");
      v13 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GNS_FtaPulseInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
    }

    return 6;
  }

  return v13;
}

void GLON_Alm_Calc_ECEF_PosVel(double *a1, double *a2, double *a3, int a4)
{
  v8 = a1[4];
  if (v8 > 3.14159265)
  {
    do
    {
      v8 = v8 + -6.28318531;
    }

    while (v8 > 3.14159265);
    a1[4] = v8;
  }

  if (v8 < -3.14159265)
  {
    do
    {
      v8 = v8 + 6.28318531;
    }

    while (v8 < -3.14159265);
    a1[4] = v8;
  }

  v9 = a1[1];
  v10 = v8;
  do
  {
    v11 = v10;
    v10 = v8 + v9 * sin(v10);
  }

  while (vabdd_f64(v11, v10) > 2.22044605e-15);
  v12 = sqrt(1.0 - v9 * v9);
  v13 = __sincos_stret(v10);
  v14 = atan2(v12 * v13.__sinval, v13.__cosval - v9);
  v15 = v14 + a1[5];
  v16 = (1.0 - v9 * v13.__cosval) * *a1;
  v17 = sqrt(398600.44 / *a1);
  v18 = __sincos_stret(v14);
  v19 = v18.__sinval * (v9 * v17) / v12;
  v20 = (v9 * v18.__cosval + 1.0) * v17 / v12;
  v21 = __sincos_stret(v15);
  v22 = __sincos_stret(a1[2]);
  v23 = __sincos_stret(a1[3]);
  v24 = -(v21.__sinval * v22.__sinval) * v23.__cosval + v21.__cosval * v22.__cosval;
  v25 = v21.__sinval * v22.__cosval * v23.__cosval + v21.__cosval * v22.__sinval;
  *a2 = v16 * v24;
  a2[1] = v16 * v25;
  a2[2] = v16 * v21.__sinval * v23.__sinval;
  v26 = a2 + 2;
  *a3 = v19 * v24 - v20 * (v21.__cosval * v22.__sinval * v23.__cosval + v21.__sinval * v22.__cosval);
  a3[1] = v19 * v25 - v20 * (-(v21.__cosval * v22.__cosval) * v23.__cosval + v21.__sinval * v22.__sinval);
  a3[2] = v23.__sinval * (v21.__cosval * v20) + v21.__sinval * v19 * v23.__sinval;
  v27 = __sincos_stret((a4 % 86400 - 10800) * 0.00007292115);
  v28 = a2[1];
  v29 = v27.__sinval * v28 + *a2 * v27.__cosval;
  v30 = v27.__cosval * v28 - *a2 * v27.__sinval;
  *a2 = v29;
  a2[1] = v30;
  v31 = a3[1];
  v32 = v27.__cosval * v31 - *a3 * v27.__sinval;
  *a3 = v27.__sinval * v31 + *a3 * v27.__cosval + v30 * 0.00007292115;
  a3[1] = v32 + v29 * -0.00007292115;
  for (i = 4; i > 1; --i)
  {
    *v26 = *v26 * 1000.0;
    --v26;
  }

  v34 = a3 + 2;
  for (j = 4; j > 1; --j)
  {
    *v34 = *v34 * 1000.0;
    --v34;
  }
}

uint64_t gnss::GnssAdaptDevice::injectAssistancePosition(uint64_t a1, char a2, int a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v36 = *MEMORY[0x29EDCA608];
  if (*(a7 + 24))
  {
    v25 = *a6;
    v26 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice24injectAssistancePositionEddbdddddNS_11ReliabilityEyNS_18PositionAssistTypeERKNS_20PositionAssistOriginENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_19;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v31, a7);
    *&v31[4] = a8;
    *&v31[5] = a9;
    v34 = a2;
    *&v31[6] = a10;
    *&v31[7] = a11;
    *&v31[8] = a12;
    *&v31[9] = a13;
    *&v31[10] = a14;
    v32 = a3;
    v33 = a5;
    v31[11] = a4;
    v31[12] = v25;
    dispatch_async(v26, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v28 = mach_continuous_time();
      v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "injectAssistancePosition", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice24injectAssistancePositionEddbdddddNS_11ReliabilityEyNS_18PositionAssistTypeERKNS_20PositionAssistOriginENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v91 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectAssistancePosition_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if ((*(v2 + 88) & 1) == 0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v89, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v89, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v89);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "injectAssistancePosition_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "injectAssistancePosition_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
    }

    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = 70;
    if (*(a1 + 152))
    {
      v6 = 84;
    }

    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%f,Long,%f,Alt,%f,AltValid,%c,VUncert,%f,SemiMajHUnc,%f,SemiMinHUnc,%f,SemiMajAzmHUnc,%f,MachContTimeNs,%llu,Rel,%d,PosType,%u,mHash,%llu\n", v5, "ADP", 77, "injectAssistancePosition_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88), v6, *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 144), *(a1 + 148), *(a1 + 136));
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 3, 1);
  }

  v8 = *(a1 + 72);
  if (fabs(v8) > 90.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v88, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v88, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v88);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lat,%f\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "injectAssistancePosition_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }

    return result;
  }

  v18 = *(a1 + 80);
  if (fabs(v18) > 180.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v87, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v87, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v87);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Long,%f\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 80));
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "injectAssistancePosition_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
    }

    return result;
  }

  v23 = *(a1 + 152);
  if (v23 == 1 && fabs(*(a1 + 88)) > 100000.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v86, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v86, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v86);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Height,%f\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 88));
      LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "injectAssistancePosition_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
    }

    return result;
  }

  if (*(a1 + 96) < 0.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v85, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v85, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v85);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v28 = mach_continuous_time();
      v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VUnc,%f\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 96));
      LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 68, "injectAssistancePosition_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v31, 5, 1);
    }

    return result;
  }

  v32 = *(a1 + 104);
  if (v32 < 0.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v84, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v84, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v84);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v33 = mach_continuous_time();
      v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SemiMajHUnc,%f\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 104));
      LbsOsaTrace_WriteLog(0x18u, __str, v34, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v35 = mach_continuous_time();
      v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 68, "injectAssistancePosition_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v36, 5, 1);
    }

    return result;
  }

  v37 = *(a1 + 112);
  if (v37 < 0.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v83, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v83, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v83);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v38 = mach_continuous_time();
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SemiMinHUnc,%f\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 112));
      LbsOsaTrace_WriteLog(0x18u, __str, v39, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v40 = mach_continuous_time();
      v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 68, "injectAssistancePosition_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v41, 5, 1);
    }

    return result;
  }

  v42 = *(a1 + 120);
  if (v42 < 0.0 || v42 > 360.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v82, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v82, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v82);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v46 = mach_continuous_time();
      v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SemiMajAzmHUnc,%f\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 120));
      LbsOsaTrace_WriteLog(0x18u, __str, v47, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v48 = mach_continuous_time();
      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 68, "injectAssistancePosition_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v49, 5, 1);
    }

    return result;
  }

  v74 = *(a1 + 96);
  v75 = 0x700000000;
  v76 = 0;
  if (fabs(v18 + 180.0) < 2.22044605e-16)
  {
    v18 = v18 + 360.0;
  }

  *(&v67 + 1) = v8;
  v68 = v18;
  v43 = *(a1 + 88);
  v72 = v23;
  v73 = v43;
  v69 = v32;
  v70 = v37;
  if (v42 <= 180.0)
  {
    v44 = v42;
  }

  else
  {
    v44 = v42 + -360.0;
  }

  v71 = v44;
  LODWORD(v67) = (*(a1 + 128) + 500000) / 0xF4240uLL;
  v45 = *(a1 + 144);
  if (v45 <= 24)
  {
    if (v45)
    {
      if (v45 != 10)
      {
        goto LABEL_81;
      }

      v45 = 1;
    }
  }

  else
  {
    switch(v45)
    {
      case 25:
        v45 = 2;
        break;
      case 50:
        v45 = 3;
        break;
      case 75:
        v45 = 4;
        break;
      default:
LABEL_81:
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v81, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v81, "injectAssistancePosition_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v81);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v63 = mach_continuous_time();
          v64 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rel,%u\n", (*&g_MacClockTicksToMsRelation * v63), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 144));
          LbsOsaTrace_WriteLog(0x18u, __str, v64, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v65 = mach_continuous_time();
          v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v65), "ADP", 68, "injectAssistancePosition_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v66, 5, 1);
        }

        return result;
    }
  }

  LODWORD(v75) = v45;
  if (*(a1 + 148) >= 3u)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v80, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v80, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v80);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v57 = mach_continuous_time();
      v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosType,%u\n", (*&g_MacClockTicksToMsRelation * v57), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 148));
      LbsOsaTrace_WriteLog(0x18u, __str, v58, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v59 = mach_continuous_time();
      v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v59), "ADP", 68, "injectAssistancePosition_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v60, 5, 1);
    }
  }

  else
  {
    v77 = *(a1 + 148);
    v76 = *(a1 + 136);
    v50 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v79, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v50, v79);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v79);
    v51 = GNS_EaWgs84RefPos(v50, &v67);
    if (v51 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v53 = 70;
        if (v72)
        {
          v53 = 84;
        }

        v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%f,Long,%f,Ht,%f,HtPresent,%c,RmsHeight,%f,RmsSemiMaj,%f,RmsSemiMin,%f,RmsSemiMajBrg,%hd,SrcHash,%llu\n", v52, "ADP", 68, "injectAssistancePosition_block_invoke", *(&v67 + 1), v68, v73, v53, v74, v69, v70, v71, v76);
        LbsOsaTrace_WriteLog(0x18u, __str, v54, 5, 1);
      }

      *(v2 + 176) = 1;
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
LABEL_72:
        bzero(__str, 0x410uLL);
        v55 = mach_continuous_time();
        v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v55), "ADP", 68, "injectAssistancePosition_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v56, 5, 1);
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v78, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v51, v78, "injectAssistancePosition_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v78);
      gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v50);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v61 = mach_continuous_time();
        v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaWgs84RefPos,%u\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 69, "injectAssistancePosition_block_invoke", 257, v51);
        LbsOsaTrace_WriteLog(0x18u, __str, v62, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        goto LABEL_72;
      }
    }
  }

  return result;
}

uint64_t gnss::GnssAdaptDevice::injectAssistanceTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v8 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20injectAssistanceTimeEyyyNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_25_5;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a5);
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = a4;
    dispatch_async(v8, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "injectAssistanceTime", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice20injectAssistanceTimeEyyyNSt3__18functionIFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v42 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectAssistanceTime_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GpsTimeNS,%llu,UncNS,%llu,MachContTimeNs,%llu\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "injectAssistanceTime_block_invoke", a1[9], a1[10], a1[11]);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = a1[10];
    if (v7)
    {
      v8 = 0;
      DWORD2(v35) = 0x7FFFFFFF;
      v36 = -1;
      v37 = 0;
      do
      {
        v9 = &v35 + v8;
        v9[22] = -1;
        *(v9 + 23) = 0;
        v9[27] = 0;
        v8 += 6;
      }

      while (v8 != 96);
      v10 = a1[9];
      WORD6(v35) = v10 / 0x2260FF9290000;
      v11 = v10 % 0x2260FF9290000;
      if (v11 < 0xF424000000000)
      {
        LODWORD(v35) = v11 / 0xF4240;
        if (v7 < 0xF42400000)
        {
          if (v7 > 0xF423F)
          {
            WORD2(v35) = v7 / 0xF4240;
          }

          else
          {
            WORD2(v35) = 1;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v27 = mach_continuous_time();
              v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RefTimeUncMs < 1ms\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 73, "injectAssistanceTime_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v28, 4, 1);
            }
          }
        }

        else
        {
          WORD2(v35) = -1;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v25 = mach_continuous_time();
            v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RefTimeUncMs > 65535ms\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 73, "injectAssistanceTime_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v26, 4, 1);
          }
        }

        v38 = (a1[11] + 500000) / 0xF4240uLL;
        GNS_AsstGpsRefTime(0, 7u, &v35, 0);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Wk,%u,Tow,%u,TowUnc,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "injectAssistanceTime_block_invoke", WORD6(v35), v35, WORD2(v35));
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, (a1 + 5));
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, 1, v33, "injectAssistanceTime_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "injectAssistanceTime_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, (a1 + 5));
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v34, "injectAssistanceTime_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Calc GpsTow invalid\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "injectAssistanceTime_block_invoke", 515);
          LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "injectAssistanceTime_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v39, (a1 + 5));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v39, "injectAssistanceTime_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v39);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RefTimeUnc\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "injectAssistanceTime_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "injectAssistanceTime_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v40, (a1 + 5));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v40, "injectAssistanceTime_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v40);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "injectAssistanceTime_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "injectAssistanceTime_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
    }
  }

  return result;
}

void sub_29971F408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceAlongTrackVelocity(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v8 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice31setAssistanceAlongTrackVelocityEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_32_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
    v13[4] = a2;
    *&v13[5] = a4;
    *&v13[6] = a5;
    dispatch_async(v8, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setAssistanceAlongTrackVelocity", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice31setAssistanceAlongTrackVelocityEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,VAlongTrack,%f,VAlongTrackUnc,%f\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceAlongTrackVelocity_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = *(a1 + 80);
    if (v7 > 100.0 || v7 < 0.0 || (v8 = *(a1 + 88), v8 <= 0.0))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v31, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v31, "setAssistanceAlongTrackVelocity_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VAlongTrack,%f\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "setAssistanceAlongTrackVelocity_block_invoke", 514, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
      }
    }

    else
    {
      v9 = (*(a1 + 72) + 500000) / 0xF4240uLL;
      LODWORD(v27) = v9;
      *(&v27 + 1) = v7;
      v28 = v8;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsTimeMs,%u,Vel,%f,RmsVel,%f\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke", v9, v7, v8);
        LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
      }

      v12 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v12, v30);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
      v13 = GNS_EaAlongTrackVel(v12, &v27);
      if (v13 == 1)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
LABEL_13:
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v13, v29, "setAssistanceAlongTrackVelocity_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v12);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LongTrackVel,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "setAssistanceAlongTrackVelocity_block_invoke", 257, v13);
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v32, "setAssistanceAlongTrackVelocity_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "setAssistanceAlongTrackVelocity_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
    }
  }

  return result;
}

void sub_29971FCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceDem(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v8 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice16setAssistanceDemEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_40_1;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
    v13[4] = a2;
    *&v13[5] = a4;
    *&v13[6] = a5;
    dispatch_async(v8, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setAssistanceDem", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice16setAssistanceDemEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceDem_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,EllipAlt,%f,AltUnc,%f\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceDem_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = *(a1 + 80);
    if (v7 > 9000.0 || v7 < -500.0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v36, "setAssistanceDem_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EllipAlt,%f\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "setAssistanceDem_block_invoke", 514, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "setAssistanceDem_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v25, 5, 1);
      }
    }

    else
    {
      v8 = *(a1 + 88);
      if (v8 <= 0.0 || v8 > 9000.0)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v35, "setAssistanceDem_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AltUnc,%f\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "setAssistanceDem_block_invoke", 514, *(a1 + 88));
          LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "setAssistanceDem_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v29, 5, 1);
        }
      }

      else
      {
        v32 = 0;
        LODWORD(v30) = (*(a1 + 72) + 500000) / 0xF4240uLL;
        *(&v30 + 1) = v7;
        v31 = v8;
        v9 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v9, v34);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
        v10 = GNS_EaAltitude(v9, &v30);
        if (v10 != 1)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v10, v33, "setAssistanceDem_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
          gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v9);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v11 = mach_continuous_time();
            v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaAltitude,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setAssistanceDem_block_invoke", 257, v10);
            LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
          }
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsTimeMs,%u,Alt,%f,RmsAlt,%f\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setAssistanceDem_block_invoke", v30, *(&v30 + 1), v31);
          LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setAssistanceDem_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v37, "setAssistanceDem_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setAssistanceDem_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setAssistanceDem_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
    }
  }

  return result;
}

void sub_299720628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceMapVector(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15)
{
  v41 = *MEMORY[0x29EDCA608];
  if (*(a15 + 24))
  {
    v28 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice22setAssistanceMapVectorEyddbddddbbbbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_50_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a15);
    v33[4] = a2;
    *&v33[5] = a9;
    *&v33[6] = a10;
    v34 = a3;
    *&v33[7] = a11;
    *&v33[8] = a12;
    *&v33[9] = a13;
    *&v33[10] = a14;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    v39 = a8;
    dispatch_async(v28, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "setAssistanceMapVector", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice22setAssistanceMapVectorEyddbddddbbbbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceMapVector_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (*(a1 + 133))
      {
        v6 = 84;
      }

      else
      {
        v6 = 70;
      }

      if (*(a1 + 132))
      {
        v7 = 84;
      }

      else
      {
        v7 = 70;
      }

      if (*(a1 + 131))
      {
        v8 = 84;
      }

      else
      {
        v8 = 70;
      }

      if (*(a1 + 130))
      {
        v9 = 84;
      }

      else
      {
        v9 = 70;
      }

      if (*(a1 + 129))
      {
        v10 = 84;
      }

      else
      {
        v10 = 70;
      }

      if (*(a1 + 128))
      {
        v11 = 84;
      }

      else
      {
        v11 = 70;
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,SegStartLat,%f,SegStartLong,%f,AltValid,%c,SegStartAltWgs84,%f,SegLenM,%f,SegDirDeg,%f,SegWidM,%f,Freeway,%c,Railway,%c,OneWayRoad,%c,Tunnel,%c,Bridge,%c\n", v5, "ADP", 77, "setAssistanceMapVector_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88), v11, *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), v10, v9, v8, v7, v6);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 3, 1);
    }

    v13 = *(a1 + 80);
    if (fabs(v13) <= 90.0)
    {
      v23 = *(a1 + 88);
      if (fabs(v23) <= 180.0)
      {
        v28 = *(a1 + 128);
        if (v28 == 1 && fabs(*(a1 + 96)) > 100000.0)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v78, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v78, "setAssistanceMapVector_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v78);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v29 = mach_continuous_time();
            v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Alt,%f\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 96));
            LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v31 = mach_continuous_time();
            v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "setAssistanceMapVector_block_invoke");
            return LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
          }
        }

        else
        {
          v33 = *(a1 + 104);
          if (v33 <= 100000.0)
          {
            v38 = *(a1 + 112);
            if (v38 < 0.0 || v38 > 360.0)
            {
              std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v76, a1 + 40);
              gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v76, "setAssistanceMapVector_block_invoke");
              std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v76);
              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v44 = mach_continuous_time();
                v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dir,%f\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 112));
                LbsOsaTrace_WriteLog(0x18u, __str, v45, 0, 1);
              }

              result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
              if (result)
              {
                bzero(__str, 0x410uLL);
                v46 = mach_continuous_time();
                v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 68, "setAssistanceMapVector_block_invoke");
                return LbsOsaTrace_WriteLog(0x18u, __str, v47, 5, 1);
              }
            }

            else
            {
              v39 = *(a1 + 120);
              if (v39 <= 100000.0)
              {
                v48 = (*(a1 + 72) + 500000) / 0xF4240uLL;
                v65 = v48;
                if (fabs(v23 + 180.0) >= 2.22044605e-16)
                {
                  v49 = v23;
                }

                else
                {
                  v49 = v23 + 360.0;
                }

                v66 = v13;
                v67 = v49;
                v50 = *(a1 + 96);
                v68 = v50;
                v69 = v28;
                v70 = v38;
                v71 = v33;
                v72 = v39;
                LODWORD(v23) = *(a1 + 129);
                v51 = vmovl_u8(*&v23).u64[0];
                v52 = vext_s8(v51, v51, 6uLL);
                v73 = vuzp1_s8(v52, v52).u32[0];
                v53 = *(a1 + 133);
                v74 = *(a1 + 133);
                v54 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
                std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v64, a1 + 40);
                gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v54, v64);
                std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v64);
                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v55 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
                  v56 = 70;
                  if (v28)
                  {
                    v56 = 84;
                  }

                  v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsTimeMs,%u,StartLat,%f,StartLong,%f,StartAlt,%f,HtAvail,%c,Dir,%f,Len,%f,Width,%f,Bridge,%d\n", v55, "ADP", 68, "setAssistanceMapVector_block_invoke", v48, v13, v49, v50, v56, v38, v33, v39, v53);
                  LbsOsaTrace_WriteLog(0x18u, __str, v57, 5, 1);
                }

                v58 = GNS_EaMapVectorSeg(v54, &v65);
                if (v58 != 1)
                {
                  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v63, a1 + 40);
                  gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v58, v63, "setAssistanceMapVector_block_invoke");
                  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v63);
                  gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v54);
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v59 = mach_continuous_time();
                    v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaMapVectorSeg,%u\n", (*&g_MacClockTicksToMsRelation * v59), "ADP", 69, "setAssistanceMapVector_block_invoke", 257, v58);
                    LbsOsaTrace_WriteLog(0x18u, __str, v60, 0, 1);
                  }
                }

                result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
                if (result)
                {
                  bzero(__str, 0x410uLL);
                  v61 = mach_continuous_time();
                  v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 68, "setAssistanceMapVector_block_invoke");
                  return LbsOsaTrace_WriteLog(0x18u, __str, v62, 5, 1);
                }
              }

              else
              {
                std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v75, a1 + 40);
                gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v75, "setAssistanceMapVector_block_invoke");
                std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v75);
                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v40 = mach_continuous_time();
                  v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Width,%f\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 120));
                  LbsOsaTrace_WriteLog(0x18u, __str, v41, 0, 1);
                }

                result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
                if (result)
                {
                  bzero(__str, 0x410uLL);
                  v42 = mach_continuous_time();
                  v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v42), "ADP", 68, "setAssistanceMapVector_block_invoke");
                  return LbsOsaTrace_WriteLog(0x18u, __str, v43, 5, 1);
                }
              }
            }
          }

          else
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v77, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v77, "setAssistanceMapVector_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v77);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v34 = mach_continuous_time();
              v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%f\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 104));
              LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v36 = mach_continuous_time();
              v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "setAssistanceMapVector_block_invoke");
              return LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
            }
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v79, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v79, "setAssistanceMapVector_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v79);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Long,%f\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 88));
          LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "setAssistanceMapVector_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v80, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v80, "setAssistanceMapVector_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v80);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lat,%f\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "setAssistanceMapVector_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v81, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v81, "setAssistanceMapVector_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v81);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setAssistanceMapVector_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "setAssistanceMapVector_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
    }
  }

  return result;
}

uint64_t gnss::GnssAdaptDevice::setAssistanceMotionActivityContext(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v20 = *MEMORY[0x29EDCA608];
  if (*(a6 + 24))
  {
    v10 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice34setAssistanceMotionActivityContextEyNS_21MotionActivityContextENS_11MovingStateENS_11ReliabilityENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_59_1;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a6);
    v15[4] = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    dispatch_async(v10, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setAssistanceMotionActivityContext", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice34setAssistanceMotionActivityContextEyNS_21MotionActivityContextENS_11MovingStateENS_11ReliabilityENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,Ctxt,%u,MovState,%u,Rel,%u\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceMotionActivityContext_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 84), *(a1 + 88));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = (*(a1 + 72) + 500000) / 0xF4240uLL;
    LODWORD(v39) = v7;
    v37 = v7;
    v8 = *(a1 + 80);
    if (v8 >= 9)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Context,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 515, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v46, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v46, "setAssistanceMotionActivityContext_block_invoke");
      v18 = v46;
      return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
    }

    v9 = dword_299762370[v8];
    HIDWORD(v39) = v9;
    v10 = *(a1 + 88);
    if (v10 <= 24)
    {
      if (!v10)
      {
        goto LABEL_26;
      }

      if (v10 == 10)
      {
LABEL_11:
        v10 = 1;
LABEL_26:
        v40 = v10;
        v38 = v10;
        v21 = *(a1 + 84);
        if (v21 < 4)
        {
          HIDWORD(v37) = *(a1 + 84);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ActCtx,%u,MovState,%u,Rel,%u,TimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke", v9, v21, v10, v7);
            LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
          }

          v24 = GNS_EaUsrActCtxt(++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key, &v39);
          if (v24 == 1)
          {
            v25 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v42, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v25, v42);
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v42);
            v26 = GNS_EaDevMovState(v25, &v37);
            if (v26 != 1)
            {
              std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v41, a1 + 40);
              gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v26, v41, "setAssistanceMotionActivityContext_block_invoke");
              std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v41);
              gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v25);
              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v27 = mach_continuous_time();
                v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaDevMovState,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 257, v26);
                LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
              }
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v29 = mach_continuous_time();
              v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
              return LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
            }
          }

          else
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v43, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v24, v43, "setAssistanceMotionActivityContext_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v43);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v33 = mach_continuous_time();
              v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaUsrActCtxt,%u\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 257, v24);
              LbsOsaTrace_WriteLog(0x18u, __str, v34, 0, 1);
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v35 = mach_continuous_time();
              v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
              return LbsOsaTrace_WriteLog(0x18u, __str, v36, 5, 1);
            }
          }

          return result;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Moving State,%u\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 515, *(a1 + 84));
          LbsOsaTrace_WriteLog(0x18u, __str, v32, 0, 1);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v44, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v44, "setAssistanceMotionActivityContext_block_invoke");
        v18 = v44;
        return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
      }
    }

    else
    {
      switch(v10)
      {
        case 75:
          v10 = 3;
          goto LABEL_26;
        case 50:
          v10 = 2;
          goto LABEL_26;
        case 25:
          goto LABEL_11;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rel,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 515, *(a1 + 88));
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v45, "setAssistanceMotionActivityContext_block_invoke");
    v18 = v45;
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v47, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v47, "setAssistanceMotionActivityContext_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v47);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 1302);
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
    return LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
  }

  return result;
}

void sub_29972216C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceMountState(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice23setAssistanceMountStateEyNS_16DeviceMountStateENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_66;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a4);
    v11[4] = a2;
    v12 = a3;
    dispatch_async(v6, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setAssistanceMountState", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice23setAssistanceMountStateEyNS_16DeviceMountStateENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceMountState_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,MtState,%u\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceMountState_block_invoke", *(a1 + 72), *(a1 + 80));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    LODWORD(v25) = (*(a1 + 72) + 500000) / 0xF4240uLL;
    v7 = *(a1 + 80);
    if (v7 >= 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MountState,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setAssistanceMountState_block_invoke", 515, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v29, "setAssistanceMountState_block_invoke");
      return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
    }

    else
    {
      v8 = dword_299762394[v7];
      v9 = dword_2997623A0[v7];
      HIDWORD(v25) = v8;
      v26 = v9;
      v10 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v10, v28);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
      v11 = GNS_EaFixedInVehicle(v10, &v25);
      if (v11 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsTimeMs,%u,FivInd,%u\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setAssistanceMountState_block_invoke", v25, HIDWORD(v25));
          LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
LABEL_23:
          bzero(__str, 0x410uLL);
          v23 = mach_continuous_time();
          v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "setAssistanceMountState_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v11, v27, "setAssistanceMountState_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v10);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v21 = mach_continuous_time();
          v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixedInVeh,%u\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "setAssistanceMountState_block_invoke", 257, v11);
          LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v30, "setAssistanceMountState_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "setAssistanceMountState_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "setAssistanceMountState_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
    }
  }

  return result;
}

void sub_2997229A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceSignalEnvironment(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice30setAssistanceSignalEnvironmentENS_21SignalEnvironmentTypeENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_73_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    v9[8] = a2;
    dispatch_async(v4, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setAssistanceSignalEnvironment", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice30setAssistanceSignalEnvironmentENS_21SignalEnvironmentTypeENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SigEnv,%u\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceSignalEnvironment_block_invoke", *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = *(a1 + 72);
    if (v7 >= 7)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigEnv,%u\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "setAssistanceSignalEnvironment_block_invoke", 515, *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v26, "setAssistanceSignalEnvironment_block_invoke");
      return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    }

    else
    {
      v8 = dword_2997623AC[v7];
      v9 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v9, v25);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
      v10 = GNS_EaSigEnvSev(v9, v8);
      if (v10 != 1)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v10, v24, "setAssistanceSignalEnvironment_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v9);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigEnvSev,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setAssistanceSignalEnvironment_block_invoke", 257, v10);
          LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SESInd,%d\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke", v8);
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v27, "setAssistanceSignalEnvironment_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setAssistanceSignalEnvironment_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
    }
  }

  return result;
}

void sub_2997230F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceSpeedConstraint(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v10 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice28setAssistanceSpeedConstraintEydddNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_80;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
    v15[4] = a2;
    *&v15[5] = a4;
    *&v15[6] = a5;
    *&v15[7] = a6;
    dispatch_async(v10, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setAssistanceSpeedConstraint", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice28setAssistanceSpeedConstraintEydddNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,DurSec,%f,SpeedLwrBound,%f,SpeedUprBound,%f\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceSpeedConstraint_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = *(a1 + 80);
    if (v7 > 86400.0 || (v8 = *(a1 + 88), v8 < 0.0) || (v18 = *(a1 + 96), v18 < v8) || v18 < 0.0 || v18 > 100.0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MachContiTimeNs,%llu,Dur,%f,SpeedLwrBound,%f,SpeedUprBound,%f\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setAssistanceSpeedConstraint_block_invoke", 514, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
        LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v33, "setAssistanceSpeedConstraint_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
      }
    }

    else
    {
      v19 = (v7 * 1000.0);
      v20 = (*(a1 + 72) + 500000) / 0xF4240uLL;
      *&v29 = __PAIR64__(v19, v20);
      *(&v29 + 1) = v8;
      v30 = v18;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsTimeMs,%u,DurMs,%d,SpeedL,%f,SpeedU,%f\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke", v20, v19, v8, v18);
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
      }

      v23 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v23, v32);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32);
      v24 = GNS_EaSpeedConstraint(v23, &v29);
      if (v24 == 1)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
LABEL_24:
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v31, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v24, v31, "setAssistanceSpeedConstraint_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v23);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v27 = mach_continuous_time();
          v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SpeedConstraint,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "setAssistanceSpeedConstraint_block_invoke", 257, v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v34, "setAssistanceSpeedConstraint_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setAssistanceSpeedConstraint_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
    }
  }

  return result;
}

void sub_2997239F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::startTimeTransferSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!*(a3 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (*(a4 + 24))
  {
    v6 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice24startTimeTransferSessionENSt3__18functionIFvNS_6ResultENS_16TimeTransferDataEEEENS2_IFvS3_EEES8__block_invoke;
    block[3] = &__block_descriptor_tmp_85;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v11, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a3);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a4);
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
    return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v11);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
  if (result)
  {
LABEL_7:
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "startTimeTransferSession", 513);
    return LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
  }

  return result;
}

void sub_299723C5C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice24startTimeTransferSessionENSt3__18functionIFvNS_6ResultENS_16TimeTransferDataEEEENS2_IFvS3_EEES8__block_invoke(uint64_t a1)
{
  v40[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "startTimeTransferSession_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    if (*(v2 + 88))
    {
      if (*(v2 + 92) == 1)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 72);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v35, "startTimeTransferSession_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMark\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "startTimeTransferSession_block_invoke", 2056);
          LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "startTimeTransferSession_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](__str, a1 + 40);
        v18 = v2 + 440;
        if (__str != (v2 + 440))
        {
          v19 = v39;
          v20 = *(v2 + 464);
          if (v39 == __str)
          {
            if (v20 == v18)
            {
              (*(*v39 + 24))();
              (*(*v39 + 32))(v39);
              v39 = 0;
              (*(**(v2 + 464) + 24))(*(v2 + 464), __str);
              (*(**(v2 + 464) + 32))(*(v2 + 464));
              *(v2 + 464) = 0;
              v39 = __str;
              (*(v40[0] + 24))(v40, v2 + 440);
              (*(v40[0] + 32))(v40);
            }

            else
            {
              (*(*v39 + 24))();
              (*(*v39 + 32))(v39);
              v39 = *(v2 + 464);
            }

            *(v2 + 464) = v18;
          }

          else if (v20 == v18)
          {
            (*(*v20 + 24))(*(v2 + 464), __str);
            (*(**(v2 + 464) + 32))(*(v2 + 464));
            *(v2 + 464) = v39;
            v39 = __str;
          }

          else
          {
            v39 = *(v2 + 464);
            *(v2 + 464) = v19;
          }
        }

        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](__str);
        v33 = 0;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 104);
        gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0x12u, v32);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32);
        started = Gnm_StartTimeMarkSesion(gnss::GnssAdaptDevice::Ga03_03GnssTimeMarkDataCallBack);
        if (started)
        {
          v22 = *(v2 + 464);
          *(v2 + 464) = 0;
          if (v22 == v18)
          {
            (*(*v22 + 32))(v22);
          }

          else if (v22)
          {
            (*(*v22 + 40))(v22);
          }

          gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, started, 0x12u);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v27 = mach_continuous_time();
            v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMark,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "startTimeTransferSession_block_invoke", 2049, started);
            LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v29 = mach_continuous_time();
            v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "startTimeTransferSession_block_invoke");
            return LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
          }
        }

        else
        {
          *(v2 + 92) = 1;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v31, a1 + 72);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v31, "startTimeTransferSession_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Started\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 77, "startTimeTransferSession_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v24, 3, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v25 = mach_continuous_time();
            v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "startTimeTransferSession_block_invoke");
            return LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 72);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v36, "startTimeTransferSession_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "startTimeTransferSession_block_invoke", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "startTimeTransferSession_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v37, "startTimeTransferSession_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "startTimeTransferSession_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "startTimeTransferSession_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void sub_299724660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::Ga03_03GnssTimeMarkDataCallBack(gnss::GnssAdaptDevice *a1, char *a2)
{
  v3 = a1;
  v35 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v5 = DeviceInstance;
    memset(&v34[4], 0, 17);
    if (a2)
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = *(a2 + 1);
      *v34 = *(a2 + 4);
      *&v34[13] = *(a2 + 17);
      *v17 = *(a2 + 25);
      *&v17[3] = *(a2 + 7);
      v9 = *(a2 + 4);
      v10 = *(a2 + 10);
      v11 = a2[44];
      v12 = a2[45];
      v13 = *(a2 + 23);
    }

    else
    {
      v9 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMarkData\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      v13 = 0;
      v11 = 0;
      v10 = 0;
      v8 = 0;
      v6 = 0;
      v3 = 11;
    }

    v16 = *(v5 + 288);
    *__str = MEMORY[0x29EDCA5F8];
    v19 = 0x40000000;
    v20 = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke;
    v21 = &__block_descriptor_tmp_117;
    v22 = v5;
    v33 = v3;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    *v26 = *v34;
    *&v26[13] = *&v34[13];
    *v27 = *v17;
    *&v27[3] = *&v17[3];
    v28 = v9;
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v13;
    dispatch_async(v16, __str);
  }
}

uint64_t __copy_helper_block_e8_40c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE104c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 104, a2 + 104);
}

void sub_29972495C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE104c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 104);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::stopTimeTransferSession(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24))
  {
    v2 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice23stopTimeTransferSessionENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_88;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a2);
    dispatch_async(v2, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "stopTimeTransferSession", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice23stopTimeTransferSessionENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  *(v1 + 92) = 0;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v3, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v1, 1, v3, "stopTimeTransferSession_block_invoke");
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v3);
}

void sub_299724BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::Ga03_00RegisterGnsEaStatusResponse(gnss::GnssAdaptDevice *a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v25 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v6 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Type,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse", v4);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
    }

    if (!a3)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        return;
      }

      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgData,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga03_01HandleGnsEaStatusResponse", 770, v4);
      v12 = 0;
      goto LABEL_10;
    }

    v9 = a3[1];
    if (v9 == 3)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        return;
      }

      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Resp rcvd for E_gnsEA_DATA_UAC\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse");
      v12 = 4;
LABEL_10:
      LbsOsaTrace_WriteLog(0x18u, __str, v11, v12, 1);
      return;
    }

    v14 = *a3;
    v15 = a3[2];
    v16 = *(v6 + 288);
    *__str = MEMORY[0x29EDCA5F8];
    v18 = 0x40000000;
    v19 = ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke;
    v20 = &__block_descriptor_tmp_98_1;
    v21 = v6;
    v22 = v14;
    v23 = v9;
    v24 = v15;
    dispatch_async(v16, __str);
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v31 = 0;
  v2 = *(v1 + 264);
  if (!v2)
  {
    goto LABEL_34;
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

    std::function<void ()(gnss::Result)>::operator=(v30, v13 + 40);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer((v1 + 256), v6);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6 + 40);
    operator delete(v6);
    if (v31)
    {
      v16 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v1, *(a1 + 48));
      if (*(a1 + 44) == 1)
      {
        if (*(a1 + 48) == 1)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ExtPosAssist Accepted\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v18, 4, 1);
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v21 = mach_continuous_time();
          v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ExtPosAssist Rejected\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v22, 4, 1);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Ea Type,%u,ID,%u\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse_block_invoke", *(a1 + 44), *(a1 + 40));
        LbsOsaTrace_WriteLog(0x18u, __str, v24, 4, 1);
      }

      v25 = *(v1 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke_2;
      block[3] = &__block_descriptor_tmp_97;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, v30);
      v28[8] = v16;
      dispatch_async(v25, block);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx API type,%u ID,%d\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 87, "Ga03_01HandleGnsEaStatusResponse_block_invoke", 770, *(a1 + 44), *(a1 + 40));
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 2, 1);
    }
  }

  else
  {
LABEL_34:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnsStatusRespLut Hdl\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 87, "Ga03_01HandleGnsEaStatusResponse_block_invoke", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 2, 1);
    }
  }

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v76, v2 + 440);
  if (v77)
  {
    if (*(a1 + 88))
    {
      v3 = *(v2 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2;
      block[3] = &__block_descriptor_tmp_101;
      std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v66, v76);
      v66[32] = 0;
      v67 = 0;
      v68 = -1082130432;
      v69 = 0;
      v70 = 0;
      v71 = -1;
      v72 = 0u;
      v73 = 0u;
      v74 = 0;
      dispatch_async(v3, block);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status Unavailable\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
      }

      v6 = v66;
    }

    else
    {
      if (*(a1 + 40) == 1)
      {
        v9 = (*(a1 + 48) * 1000000.0) + 604800000000000 * *(a1 + 42);
        v10 = *(a1 + 56) * 1000000.0;
        v11 = v10 <= 3.40282347e38;
        v12 = v10;
        if (v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = 3.4028e38;
        }

        v14 = 1;
      }

      else
      {
        v9 = 0;
        v14 = 0;
        v13 = -1.0;
      }

      v15 = 1000000 * *(a1 + 80);
      v16 = *(a1 + 72);
      if (v16 <= 2147483650.0)
      {
        if (v16 <= 0.0)
        {
          v21 = -0.5;
        }

        else
        {
          v21 = 0.5;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: UTCCorr %.9f,LeapSec,%d\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga03_02HandleTimeMarkDataCallback_block_invoke", v16, (v16 + v21));
          LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
        }

        v24 = v16 - v16;
        if (v24 > 0.0000005 && v24 < 0.9999995 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UtcCorr beyond 500ns from seconds boundary,%.9f\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 87, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770, v16);
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 2, 1);
        }

        if (*(a1 + 64) == 1)
        {
          v27 = *(a1 + 40);
        }

        else
        {
          v27 = 0;
        }

        v28 = *(a1 + 84);
        if (v28 >= 6)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v29 = mach_continuous_time();
            v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Invalid TimeMark Qual\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 73, "Ga03_02HandleTimeMarkDataCallback_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v30, 4, 1);
          }

          v28 = 0;
        }

        v31 = *(a1 + 86);
        if ((v31 & 8) != 0 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v32 = mach_continuous_time();
          v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Constel E_GNM_GNSSID_MODGPS\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770);
          LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
        }

        v34 = v27 & 1;
        v35 = v31 & 0x11 | (8 * ((v31 >> 1) & 1)) | (v31 >> 4) & 6;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v37 = 70;
          if (v34)
          {
            v38 = 84;
          }

          else
          {
            v38 = 70;
          }

          if (v14)
          {
            v37 = 84;
          }

          v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WkValid,%c,TimeNs,%llu,TimeUncNs,%f,ClkNs,%llu,LeapSecValid,%c,LeapSec,%d,Qual,%u,ConstUsed,%u\n", v36, "ADP", 73, "Ga03_02HandleTimeMarkDataCallback_block_invoke", v37, v9, v13, v15, v38, (v16 + v21), v28, v35);
          LbsOsaTrace_WriteLog(0x18u, __str, v39, 4, 1);
        }

        v40 = *(v2 + 296);
        v18 = v42;
        v42[0] = MEMORY[0x29EDCA5F8];
        v42[1] = 1174405120;
        v42[2] = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2_113;
        v42[3] = &__block_descriptor_tmp_116;
        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v43, v76);
        v43[32] = v14;
        v44 = v9;
        v45 = v13;
        v46 = v34;
        v47 = (v16 + v21);
        v49 = 0;
        v50 = 0;
        v48 = v15;
        v51 = v28;
        v52 = v35;
        v53 = 0;
        v54 = 0;
        dispatch_async(v40, v42);
      }

      else
      {
        v17 = *(v2 + 296);
        v18 = v55;
        v55[0] = MEMORY[0x29EDCA5F8];
        v55[1] = 1174405120;
        v55[2] = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2_103;
        v55[3] = &__block_descriptor_tmp_106_0;
        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v56, v76);
        v56[32] = v14;
        v57 = v9;
        v58 = v13;
        v59 = 0;
        v60 = 0;
        v62 = 0u;
        v63 = 0u;
        v61 = v15;
        v64 = 0;
        dispatch_async(v17, v55);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTCorr,%.9f \n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770, v16);
          LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
        }
      }

      v6 = v18 + 4;
    }

    std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v6);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeTransferDataCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v76);
}

uint64_t std::function<void ()(gnss::Result,gnss::TimeTransferData)>::operator()(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t __copy_helper_block_e8_32c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v1);
}

uint64_t std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void NK_Reflection_Rejection_Ped(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = *MEMORY[0x29EDCA608];
  v4 = a3 + 0x2000;
  if (*(a4 + 968))
  {
    if (*(a3 + 11048))
    {
      if (!*(a4 + 600) && *(a3 + 11432) <= 6.0 && (*(a3 + 20) - 4) >= 5 && *(a4 + 977) > 0xEu)
      {
        if (!*(a1 + 248) || (v10 = *(a1 + 80), v10 >= -10.0) && v10 <= 70.0 && fabs(*(a1 + 120)) <= 0.3)
        {
          v7 = (a3 + 11644);
          if ((*(a3 + 11644) & 1) == 0)
          {
            *(a3 + 11644) = 1;
            bzero((a3 + 11872), 0x3A80uLL);
            *(a3 + 11870) = -1;
            *&v11 = -1;
            *(&v11 + 1) = -1;
            *(a3 + 11838) = v11;
            *(a3 + 11854) = v11;
            *(a3 + 11806) = v11;
            *(a3 + 11822) = v11;
            *(a3 + 11774) = v11;
            *(a3 + 11790) = v11;
            *(a3 + 11742) = v11;
            *(a3 + 11758) = v11;
            *(a3 + 11710) = v11;
            *(a3 + 11726) = v11;
            *(a3 + 11678) = v11;
            *(a3 + 11694) = v11;
            *(a3 + 11646) = v11;
            *(a3 + 11662) = v11;
          }

          v12 = 0;
          v91 = 0;
          *&v13 = -1;
          *(&v13 + 1) = -1;
          v96[1] = v13;
          v96[2] = v13;
          v96[0] = v13;
          v92 = a3 + 11646;
          v94 = a3 + 11824;
          v90 = a3 + 2088;
          v93 = a4 + 26304;
          while (1)
          {
            v14 = *(a2 + 76 + 4 * v12);
            if (Is_Legal(v14) && v14 != 6)
            {
              v16 = v14 != 4 || BYTE2(v14) >= 5u;
              if (v16 && *(a4 + 2864 + v12) == 1 && *(a4 + 8440 + v12) == 1 && *(a4 + 49 + v12) == 1)
              {
                if (*(a4 + 26208 + v12) == 1 && *(a4 + 26160 + v12) == 1)
                {
                  v17 = GNSS_Id_To_Num_Prn_Idx(v14);
                  LODWORD(v18) = *(v92 + v17);
                  if (v18 == 255)
                  {
                    v19 = *(v4 + 3453);
                    if (v19 == 48)
                    {
                      EvLog("NK_Reflection_Rejection_Ped: No space");
LABEL_56:
                      if (v91 < 4)
                      {
                        goto LABEL_8;
                      }

                      VecMedian8(v95, v91);
                      v27 = 0;
                      v28 = a3 + 11872;
                      v29 = a2 + 1232;
                      v31 = -v30;
                      v32 = a3 + 11904;
                      v33 = a3 + 12104;
                      v34 = a3 + 11900;
                      v35 = (a3 + 12112);
                      v36 = a3 + 11646;
                      v37 = v94;
                      while (2)
                      {
                        v38 = *(v37 + v27);
                        if (v38 == 255)
                        {
                          goto LABEL_86;
                        }

                        v39 = *(v96 + v27);
                        if (v39 == 255)
                        {
                          v48 = v28 + 312 * v27;
                          if (*v48 >= 1 && (v49 = *(v48 + 4)) != 0 && *(v48 + 32 + 4 * (*v48 - 1)) && (v50 = *a4, (10 * *(a1 + 948) + 300000 + *(v48 + 32)) > *a4))
                          {
                            *(v48 + 24) = *(v48 + 24) + v31 * ((v50 - v49) * 0.001);
                            *(v48 + 4) = v50;
                          }

                          else
                          {
                            *(v48 + 304) = 0;
                            *(v48 + 272) = 0uLL;
                            *(v48 + 288) = 0uLL;
                            *(v48 + 240) = 0uLL;
                            *(v48 + 256) = 0uLL;
                            *(v48 + 208) = 0uLL;
                            *(v48 + 224) = 0uLL;
                            *(v48 + 176) = 0uLL;
                            *(v48 + 192) = 0uLL;
                            *(v48 + 144) = 0uLL;
                            *(v48 + 160) = 0uLL;
                            *(v48 + 112) = 0uLL;
                            *(v48 + 128) = 0uLL;
                            *(v48 + 80) = 0uLL;
                            *(v48 + 96) = 0uLL;
                            *(v48 + 48) = 0uLL;
                            *(v48 + 64) = 0uLL;
                            *(v48 + 16) = 0uLL;
                            *(v48 + 32) = 0uLL;
                            *v48 = 0uLL;
                            *(v36 + v38) = -1;
                            *(v37 + v27) = -1;
                            --*(v4 + 3453);
                          }

                          goto LABEL_86;
                        }

                        v40 = (v28 + 312 * v27);
                        v41 = *v40;
                        if (!v41)
                        {
                          *(v40 + 38) = 0;
                          *(v40 + 17) = 0uLL;
                          *(v40 + 18) = 0uLL;
                          *(v40 + 15) = 0uLL;
                          *(v40 + 16) = 0uLL;
                          *(v40 + 13) = 0uLL;
                          *(v40 + 14) = 0uLL;
                          *(v40 + 11) = 0uLL;
                          *(v40 + 12) = 0uLL;
                          *(v40 + 9) = 0uLL;
                          *(v40 + 10) = 0uLL;
                          *(v40 + 7) = 0uLL;
                          *(v40 + 8) = 0uLL;
                          *(v40 + 5) = 0uLL;
                          *(v40 + 6) = 0uLL;
                          *(v40 + 3) = 0uLL;
                          *(v40 + 4) = 0uLL;
                          *(v40 + 1) = 0uLL;
                          *(v40 + 2) = 0uLL;
                          *v40 = 0uLL;
                          v46 = *a4;
                          *v40 = 1;
                          v40[1] = v46;
                          v47 = a4 + 26304;
LABEL_70:
                          *(v40 + 1) = *(v47 + 8 * v39);
                          v40[8] = v46;
                          *(v40 + 9) = 0;
                          *(v40 + 2) = *(v29 + 8 * v39);
                          goto LABEL_86;
                        }

                        v42 = v41 - 1;
                        v43 = *a4;
                        v44 = v40[v42 + 8];
                        v45 = *a4 - v44;
                        if (v45 > 300000)
                        {
                          *(v40 + 38) = 0;
                          *(v40 + 17) = 0uLL;
                          *(v40 + 18) = 0uLL;
                          *(v40 + 15) = 0uLL;
                          *(v40 + 16) = 0uLL;
                          *(v40 + 13) = 0uLL;
                          *(v40 + 14) = 0uLL;
                          *(v40 + 11) = 0uLL;
                          *(v40 + 12) = 0uLL;
                          *(v40 + 9) = 0uLL;
                          *(v40 + 10) = 0uLL;
                          *(v40 + 7) = 0uLL;
                          *(v40 + 8) = 0uLL;
                          *(v40 + 5) = 0uLL;
                          *(v40 + 6) = 0uLL;
                          *(v40 + 3) = 0uLL;
                          *(v40 + 4) = 0uLL;
                          *(v40 + 1) = 0uLL;
                          *(v40 + 2) = 0uLL;
                          *v40 = 0uLL;
                          v46 = *a4;
                          *v40 = 1;
                          v40[1] = v46;
                          v47 = a4 + 26304;
                          v37 = v94;
                          goto LABEL_70;
                        }

                        v51 = *(v40 + 2);
                        if (vabdd_f64(*(v29 + 8 * v39), v51) > 149896.229)
                        {
                          *(v40 + 38) = 0;
                          *(v40 + 17) = 0uLL;
                          *(v40 + 18) = 0uLL;
                          *(v40 + 15) = 0uLL;
                          *(v40 + 16) = 0uLL;
                          *(v40 + 13) = 0uLL;
                          *(v40 + 14) = 0uLL;
                          *(v40 + 11) = 0uLL;
                          *(v40 + 12) = 0uLL;
                          *(v40 + 9) = 0uLL;
                          *(v40 + 10) = 0uLL;
                          *(v40 + 7) = 0uLL;
                          *(v40 + 8) = 0uLL;
                          *(v40 + 5) = 0uLL;
                          *(v40 + 6) = 0uLL;
                          *(v40 + 3) = 0uLL;
                          *(v40 + 4) = 0uLL;
                          *(v40 + 1) = 0uLL;
                          *(v40 + 2) = 0uLL;
                          *v40 = 0uLL;
                          goto LABEL_85;
                        }

                        v52 = v40[1];
                        v53 = *(v40 + 3) + v31 * ((v43 - v52) * 0.001);
                        *(v40 + 3) = v53;
                        v54 = 1.5;
                        v55 = 0.15;
                        if (*(v4 + 2970) == 1)
                        {
                          v55 = 0.15;
                          if (*(a3 + 11432) > 1.5)
                          {
                            if (*(a4 + 24712) >= 0.15)
                            {
                              v55 = *(a4 + 24712);
                            }

                            else
                            {
                              v55 = 0.15;
                            }

                            v54 = *(a3 + 11432);
                          }
                        }

                        v56 = v45;
                        v57 = v45 * 0.001;
                        v58 = v57 * ((*(v40 + 1) + *(v93 + 8 * v39)) * 0.5);
                        v59 = *(v90 + 40 * v39 + 16);
                        v60 = v57 * (v55 * 3.0 + v59 * v54);
                        v61 = *(v29 + 8 * v39);
                        v62 = v61 - (v51 + v53 + v58 + v60 + 50.0);
                        v63 = v62 < 1000.0 && v62 > 0.0;
                        if (v63)
                        {
                          v63 = 1;
                          v36 = a3 + 11646;
LABEL_84:
                          v40[1] = v43;
                          *(a4 + 3056 + 4 * v39) = v63;
                          ++*(a4 + 2812);
                          *(a4 + 2960 + v39) = 0;
                          --*(a4 + 2811);
                          *(a4 + 8632 + 4 * v39) = v63;
                          ++*(a4 + 8388);
                          *(a4 + 8536 + v39) = 0;
                          --*(a4 + 8387);
LABEL_85:
                          v37 = v94;
LABEL_86:
                          ++v27;
                          v32 += 312;
                          v33 += 312;
                          v34 += 312;
                          v35 += 39;
                          if (v27 == 48)
                          {
                            return;
                          }

                          continue;
                        }

                        break;
                      }

                      if (v41 <= 1)
                      {
                        v36 = a3 + 11646;
                      }

                      else
                      {
                        v64 = 0;
                        v65 = v41 - 1;
                        while (*(v32 + 4 * v64) < v43 - 10 * *(a1 + 948))
                        {
                          ++v64;
                          --v65;
                          if (v41 == v64)
                          {
                            goto LABEL_104;
                          }
                        }

                        v67 = 1.0;
                        v68 = v51;
                        if (v42 > v64)
                        {
                          v69 = v41 - v64;
                          v70 = 0.0;
                          v68 = v51;
                          v71 = v51;
                          v72 = (v33 + 8 * v42);
                          do
                          {
                            v70 = v70 + *(v72 - 10) + *v72;
                            v71 = v71 - *(v72 - 20);
                            v68 = v70 + v68 + v71;
                            --v72;
                            --v65;
                          }

                          while (v65);
                          v67 = v69;
                        }

                        v73 = v61 - (50.0 / v67 + v60 + v58 + v53 + v68 / v67 + 20.0);
                        if (v73 < 1000.0 && v73 > 0.0)
                        {
                          v63 = 2;
                        }

LABEL_104:
                        if (v52 != v44)
                        {
                          v36 = a3 + 11646;
                          if (v63)
                          {
                            goto LABEL_84;
                          }

                          goto LABEL_113;
                        }

                        v36 = a3 + 11646;
                        if (v63)
                        {
                          goto LABEL_84;
                        }

                        if (v41 > 5)
                        {
                          v75 = fmax(v55, 0.75) * 3.0;
                          v76 = v53 + v58;
                          v77 = v51 + v53 + v58 - v61;
                          v78 = v77 * v56;
                          v79 = v56 * v56;
                          v80 = (v34 + 4 * v42);
                          v81 = (v33 + 8 * v42);
                          v82 = 1;
                          v83 = v51;
                          do
                          {
                            v84 = *v80--;
                            v85 = (v43 - v84);
                            v76 = v76 + *(v81 - 10) + *v81;
                            v83 = v83 - *(v81 - 20);
                            v86 = v76 + v83 - v61;
                            ++v82;
                            v56 = v56 + v85;
                            v79 = v79 + v85 * v85;
                            v77 = v77 + v86;
                            v78 = v78 + v86 * v85;
                            --v81;
                          }

                          while (v41 != v82);
                          v87 = v41 * v79 - v56 * v56;
                          if (v87 > 0.0 && (v77 * -v56 + v41 * v78) * -1000.0 / v87 > v75 + v59 * v54)
                          {
                            v63 = 3;
                            goto LABEL_84;
                          }

LABEL_113:
                          if (v41 == 10)
                          {
                            v88 = 0;
                            v89 = v35;
                            do
                            {
                              *(v32 + v88) = *(v32 + v88 + 4);
                              *(v89 - 21) = *(v89 - 20);
                              *(v89 - 11) = *(v89 - 10);
                              *(v89 - 1) = *v89;
                              v88 += 4;
                              ++v89;
                            }

                            while (v88 != 36);
                            v43 = *a4;
                            v61 = *(v29 + 8 * v39);
                            LODWORD(v41) = 9;
                          }
                        }
                      }

                      *v40 = v41 + 1;
                      v40[1] = v43;
                      v40[v41 + 8] = v43;
                      v66 = &v40[2 * v41];
                      *(v66 + 9) = v61 - v51;
                      *(v40 + 2) = *(v29 + 8 * v39);
                      *(v66 + 19) = *(v40 + 3);
                      *(v66 + 29) = v58;
                      *(v40 + 3) = 0;
                      v37 = v94;
                      *(v40 + 1) = *(v93 + 8 * v39);
                      goto LABEL_86;
                    }

                    v18 = 0;
                    while (*(v94 + v18) != 255)
                    {
                      if (++v18 == 48)
                      {
                        EvCrt_v("NK_Reflection_Rejection_Ped: CODING ERROR");
                        goto LABEL_8;
                      }
                    }

                    *(v94 + v18) = v17;
                    *(v92 + v17) = v18;
                    *(v4 + 3453) = v19 + 1;
                  }

                  *(v96 + v18) = v12;
                  if (*(a2 + 604 + v12) >= 0x13u && *(v90 + 40 * v12) >= 45)
                  {
                    v20 = *(v93 + 8 * v12) + *(a2 + 1616 + 8 * v12) * 0.190293673;
                    v21 = v91;
                    if (v91)
                    {
                      if (v91 < 1)
                      {
LABEL_48:
                        v21 = v91;
                        v95[v91] = v20;
                      }

                      else
                      {
                        v22 = 0;
                        v23 = v91;
                        while (v20 >= v95[v22])
                        {
                          if (v91 == ++v22)
                          {
                            goto LABEL_48;
                          }
                        }

                        if (v91 > v22)
                        {
                          v24 = &v95[v91];
                          v25 = v24;
                          do
                          {
                            --v23;
                            v26 = *(v25-- - 1);
                            *v24 = v26;
                            v24 = v25;
                          }

                          while (v23 > v22);
                        }

                        v95[v22] = v20;
                        v21 = v91;
                      }
                    }

                    else
                    {
                      v95[0] = *(v93 + 8 * v12) + *(a2 + 1616 + 8 * v12) * 0.190293673;
                    }

                    v91 = v21 + 1;
                  }
                }

                else
                {
                  EvLog("NK_Reflection_Rejection_Ped: No SAPE data");
                }
              }
            }

            if (++v12 == 48)
            {
              goto LABEL_56;
            }
          }
        }
      }
    }
  }

  v7 = (a3 + 11644);
LABEL_8:
  *v7 = 0;
}

uint64_t MeasSyncher_Init(uint64_t a1)
{
  v1 = 0;
  *(a1 + 80) = 75600;
  v2 = a1 + 76176;
  *(a1 + 56) = a1 + 576;
  *(a1 + 64) = a1 + 76176;
  *a1 = a1 + 576;
  *(a1 + 72) = 0x15E000000D8;
  do
  {
    *(a1 + 8 * v1 + 8) = a1 + 576;
    *(a1 + v1++ + 84) = 0;
  }

  while (v1 != 6);
  v3 = 0;
  *(a1 + 96) = v2;
  v4 = a1 + 119376;
  *(a1 + 152) = v2;
  *(a1 + 160) = a1 + 119376;
  *(a1 + 168) = 0xC8000000D8;
  *(a1 + 176) = 43200;
  do
  {
    *(a1 + 8 * v3 + 104) = v2;
    *(a1 + v3++ + 180) = 0;
  }

  while (v3 != 6);
  v5 = 0;
  *(a1 + 192) = v4;
  v6 = a1 + 121536;
  *(a1 + 248) = v4;
  *(a1 + 256) = a1 + 121536;
  *(a1 + 264) = 0xA000000D8;
  *(a1 + 272) = 2160;
  do
  {
    *(a1 + 8 * v5 + 200) = v4;
    *(a1 + v5++ + 276) = 0;
  }

  while (v5 != 6);
  v7 = 0;
  v8 = a1 + 123696;
  *(a1 + 344) = v6;
  *(a1 + 352) = a1 + 123696;
  *(a1 + 288) = v6;
  *(a1 + 360) = 0xA000000D8;
  *(a1 + 368) = 2160;
  do
  {
    *(a1 + 8 * v7 + 296) = v6;
    *(a1 + v7++ + 372) = 0;
  }

  while (v7 != 6);
  v9 = 0;
  v10 = a1 + 125856;
  *(a1 + 440) = v8;
  *(a1 + 448) = a1 + 125856;
  *(a1 + 384) = v8;
  *(a1 + 456) = 0xA000000D8;
  *(a1 + 464) = 2160;
  do
  {
    *(a1 + 8 * v9 + 392) = v8;
    *(a1 + v9++ + 468) = 0;
  }

  while (v9 != 6);
  v11 = 0;
  *(a1 + 536) = v10;
  *(a1 + 544) = a1 + 128016;
  *(a1 + 480) = v10;
  *(a1 + 552) = 0xA000000D8;
  *(a1 + 560) = 2160;
  do
  {
    *(a1 + 8 * v11 + 488) = v10;
    *(a1 + v11++ + 564) = 0;
  }

  while (v11 != 6);
  *(a1 + 128024) = a1;
  *(a1 + 128016) = a1 + 96;
  *(a1 + 128032) = a1 + 192;
  *(a1 + 128040) = a1 + 288;
  *(a1 + 128056) = a1 + 384;
  *(a1 + 128048) = a1 + 480;
  *(a1 + 129360) = 0;
  *(a1 + 129364) = 0;
  *(a1 + 129368) = 0;
  return 1;
}

BOOL MeasSyncher_applyNewRecord(unsigned int a1, _DWORD *a2, uint64_t a3)
{
  v6 = a2[2];
  if (a1 >= 7)
  {
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f fifo type not in range", "MeasSyncher_applyNewRecord", 209, v8, v9);
    }

    g_FPE_AssertFlag = 1;
  }

  else
  {
    v7 = v6 - 5;
    if (a1 == 1 && v7 <= 0xFFFFFFFB)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for GNSS FIFO");
      }

LABEL_37:
      g_FPE_AssertFlag = 1;
      goto LABEL_38;
    }

    if (!a1 && v6)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for SENSORS FIFO");
      }

      goto LABEL_37;
    }

    if (a1 == 2)
    {
      if (v7 < 4 || v6 == 12)
      {
        goto LABEL_38;
      }

      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for CTX FIFO");
      }

      goto LABEL_37;
    }

    if (a1 == 3 && (v6 - 13) <= 0xFFFFFFFD)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for DEM FIFO");
      }

      goto LABEL_37;
    }
  }

  if (a1 == 4)
  {
    if (v6 != 10 && v6 != 12)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for MAP FIFO");
      }

      goto LABEL_37;
    }
  }

  else if (a1 == 5 && v6 != 9 && v6 != 12)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for EXT_POSITION FIFO");
    }

    goto LABEL_37;
  }

LABEL_38:
  v11 = *(a3 + 8 * a1 + 128016);
  v12 = Cyc_Record_Count_Free(v11, 1u);
  if (v12)
  {
    Cyc_Record_Write(v11, a2);
  }

  return v12 != 0;
}

uint64_t readNextSample(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 129360;
  if (*(a1 + 129360 + a2))
  {
    return 1;
  }

  v5 = a2;
  v6 = *(a1 + 8 * a2 + 128016);
  v3 = 1;
  if (Cyc_Record_IsEmpty(v6, 1u))
  {
    return 0;
  }

  Cyc_Record_Read(v6, 1u, (a1 + 216 * v5 + 128064));
  *(v2 + v5) = 1;
  return v3;
}

BOOL MeasSyncher_getNextRecord(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v5 = 0;
  v6 = a1 + 126976;
  do
  {
    v5 |= readNextSample(a1, v4++) ^ 1;
  }

  while (v4 != 6);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(v6 + 1088);
    v10 = (v6 + 1088);
    do
    {
      v11 = *v10;
      v10 += 27;
      v12 = v11;
      if (v11 < v9)
      {
        v9 = v12;
        v8 = v7;
      }

      ++v7;
    }

    while (v7 != 6);
    v13 = v6 + 1088 + 216 * v8;
    v14 = *(v13 + 16);
    *a2 = *v13;
    *(a2 + 1) = v14;
    v15 = *(v13 + 32);
    v16 = *(v13 + 48);
    v17 = *(v13 + 80);
    *(a2 + 4) = *(v13 + 64);
    *(a2 + 5) = v17;
    *(a2 + 2) = v15;
    *(a2 + 3) = v16;
    v18 = *(v13 + 96);
    v19 = *(v13 + 112);
    v20 = *(v13 + 144);
    *(a2 + 8) = *(v13 + 128);
    *(a2 + 9) = v20;
    *(a2 + 6) = v18;
    *(a2 + 7) = v19;
    v21 = *(v13 + 160);
    v22 = *(v13 + 176);
    v23 = *(v13 + 192);
    a2[26] = *(v13 + 208);
    *(a2 + 11) = v22;
    *(a2 + 12) = v23;
    *(a2 + 10) = v21;
    *(a1 + v8 + 129360) = 0;
    v24 = *a2;
    if (*a2 < *(v6 + 2392))
    {
      if (g_FPE_LogSeverity)
      {
        v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v26 = *(g_TCU + 8);
        }

        else
        {
          v26 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f measurement from the past in MeasSyncher: measToReadTime=%f, lastRecordTime=%f", "MeasSyncher_getNextRecord", 330, v25, v26, v9, *(v6 + 2392));
        v24 = *a2;
      }

      g_FPE_AssertFlag = 1;
    }

    *(v6 + 2392) = v24;
  }

  return (v5 & 1) == 0;
}

char **SV_Gen_Meas_Update_Wrapper(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v2 = 0;
  v32[198] = *MEMORY[0x29EDCA608];
  do
  {
    v3 = &__dst[v2];
    v3[32] = 0;
    *v3 = 0uLL;
    *(v3 + 1) = 0uLL;
    v2 += 36;
  }

  while (v2 != 1728);
  for (i = 0; i != 2688; i += 56)
  {
    v5 = &__dst[i];
    *(v5 + 216) = 0;
    *(v5 + 868) = 0;
    *&__dst[i + 1740] = 0;
    *(v5 + 874) = 0;
    v6 = &__dst[i + 1752];
    *(v5 + 222) = 0;
    *(v5 + 884) = 0;
    *v6 = 0uLL;
  }

  v12 = 0;
  v11 = 0;
  v7 = v13;
  v8 = 2304;
  do
  {
    *(v7 - 2) = 0;
    *(v7 - 4) = 0;
    *v7 = 0uLL;
    *(v7 + 1) = 0uLL;
    *(v7 + 29) = 0;
    v7 += 12;
    v8 -= 48;
  }

  while (v8);
  v13[574] = 0;
  v14 = 0;
  v17 = 0;
  v15 = 0u;
  v16 = 0;
  v18 = 0u;
  v19 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  bzero(v32, 0x630uLL);
  GNSS_Validate_p_list(v1, "SV_Gen_Meas_Update_Wrapper: Entry");
  *(v1 + 224) = __dst;
  SV_Gen_Meas(*(v1 + 168), __dst, *(v1 + 280), *(v1 + 80), *(v1 + 16), *(v1 + 72), *(v1 + 40), *(v1 + 56), *(v1 + 48), *(v1 + 104), *(v1 + 64));
  *(v1 + 224) = 0;
  return GNSS_Validate_p_list(v1, "SV_Gen_Meas_Update_Wrapper:  Exit");
}

uint64_t Gnm30_00InitConfig(void)
{
  Gnm33_10InitTraceCfg();
  dword_2A193B808 = 0;
  *&byte_2A193B6E0[200] = 0u;
  *&byte_2A193B6E0[184] = 0u;
  *&byte_2A193B6E0[168] = 0u;
  *&byte_2A193B6E0[152] = 0u;
  *&byte_2A193B6E0[136] = 0u;
  *&byte_2A193B6E0[120] = 0u;
  *&byte_2A193B6E0[104] = 0u;
  *&byte_2A193B6E0[88] = 0u;
  *&byte_2A193B6E0[72] = 0u;
  *&byte_2A193B6E0[56] = 0u;
  *&byte_2A193B6E0[40] = 0u;
  *&byte_2A193B6E0[24] = 0u;
  *&byte_2A193B6E0[8] = 0u;
  *&dword_2A193B6D8 = 0u;
  *&dword_2A193B6C8 = 0u;
  unk_2A193B6B8 = 0u;
  xmmword_2A193B7E8 = 0u;
  *&qword_2A193B7F8 = 0u;
  unk_2A193B7C8 = 0u;
  *(&qword_2A193B7D6 + 2) = 0u;
  xmmword_2A193B7B8 = 0u;
  g_PltfmConfig = 0x332E352E322E76;
  *&dword_2A193B6BC = 0x50004000000727;
  dword_2A193B6D8 = 131073796;
  WORD2(qword_2A193B6C0) = 64;
  LODWORD(qword_2A193B6CC) = 36700192;
  WORD2(qword_2A193B6CC) = 32;
  word_2A193B7D4 = 140;
  Gnm32_00PrintPltfmCfg("INITIALIZED DEFAULT VALUE");
  LOBYTE(qword_2A1920C38) = 2;
  dword_2A1920C34 = 33686018;
  Gnm34_00PrintTaTraceCfg("INITIALIZED DEFAULT VALUE");

  return Gnm31_10InitUserCfg();
}

uint64_t Gnm30_10GetConfig(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_GET_CONFIG\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm30_10GetConfig");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm30_10GetConfig", 517);
    v8 = 0;
LABEL_18:
    LbsOsaTrace_WriteLog(0xBu, __str, v7, v8, 1);
    return 0;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_17;
  }

  v5 = *(a1 + 16);
  if (v5 == 3)
  {
    Gnm33_16GetTraceCfg(*(a1 + 12), v4);
    return 0;
  }

  if (v5 == 2)
  {
    Gnm32_14GetPltfmCfg(*(a1 + 12), v4);
    return 0;
  }

  if (v5 != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConfigType,%hhu\n", v11);
LABEL_17:
    v7 = v9;
    v8 = 2;
    goto LABEL_18;
  }

  Gnm31_14GetUserCfg(*(a1 + 12), v4);
  return 0;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[](void *__p, const std::nothrow_t *a2)
{
    ;
  }
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

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2A1C76650](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C753C8](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}