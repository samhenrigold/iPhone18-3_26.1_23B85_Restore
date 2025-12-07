uint64_t FpeAdapter_extractAssistMeasData(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = result;
  if (result < 0xC && ((0xC3Fu >> result) & 1) != 0)
  {
    v16 = dword_299761A28[result];
    v17 = dword_299761A58[result];
    v18 = **&a3[qword_2997619C8[result]];
    v19 = *&a3[qword_299761968[result]];
    v20 = v18 - *(a2 + 2 * result);
    if ((a5[132943].i8[1] & 1) == 0)
    {
      if (result == 10)
      {
        v28 = *a3;
        if (v28 < v20)
        {
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v47 = **&a3[qword_2997619C8[result]];
            v29 = a2;
            v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v31 = *(g_TCU + 8);
            }

            else
            {
              v31 = 0.0;
            }

            result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f num new Ext_Pos samples is large, and limited to maximum, numNewSamples = %d", "FpeAdapter_extractAssistMeasData", 425, v30, v31, v28);
            a2 = v29;
            v18 = v47;
            v16 = 80;
          }

          v22 = (v19 + (v28 - 1) * v16);
          v21 = v28;
          if (!v28)
          {
            goto LABEL_38;
          }

LABEL_29:
          v49 = v18;
          v45 = a2;
          v39 = v9;
          v35 = -v16;
          v42 = v21;
          v36 = v21;
          do
          {
            result = FPE_ApplyNewMeas(v17, v22, a4, a5, a6, a7, a8, a9);
            v22 = (v22 + v35);
            --v36;
          }

          while (v36);
          v9 = v39;
          a2 = v45;
          v18 = v49;
          if (v42 >= 0x21)
          {
            if (g_FPE_LogSeverity)
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

              result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f FPE_MAX_ASSIST_IN_EPOCH = %d, but %d new samples were sent to FPE Manager", "FpeAdapter_extractAssistMeasData", 465, v37, v38, 32, v42);
              a2 = v45;
              v18 = v49;
            }

            g_FPE_AssertFlag = 1;
          }

LABEL_38:
          *(a2 + 2 * v9) = v18;
          return result;
        }
      }

      v32 = a3[1];
      if (v32 < v20)
      {
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v41 = dword_299761A28[result];
          v44 = a2;
          v48 = **&a3[qword_2997619C8[result]];
          v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v34 = *(g_TCU + 8);
          }

          else
          {
            v34 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f num new ExtA samples is large, and limited to maximum, numNewSamples = %d", "FpeAdapter_extractAssistMeasData", 430, v33, v34, v32);
          v20 = v32;
          v16 = v41;
          a2 = v44;
          v18 = v48;
        }

        else
        {
          v20 = a3[1];
        }
      }
    }

    v21 = v20;
    v22 = (v19 + (v20 - 1) * v16);
    if (!v9 && v20 > a3[1])
    {
      if (g_FPE_LogSeverity)
      {
        v23 = v20;
        v40 = v16;
        v43 = a2;
        v46 = v18;
        v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v25 = *(g_TCU + 8);
        }

        else
        {
          v25 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f numNewSamples = %d, (counter delta) of DMS assistance is bigger than PE array size = %d", "FpeAdapter_extractAssistMeasData", 441, v24, v25, v23, a3[1]);
        v21 = v23;
        v16 = v40;
        a2 = v43;
        v18 = v46;
      }

      g_FPE_AssertFlag = 1;
    }

    if (!v21)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (g_FPE_LogSeverity)
  {
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v27 = *(g_TCU + 8);
    }

    else
    {
      v27 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f meas type %d is not supported ", "FpeAdapter_extractAssistMeasData", 409, v26, v27, v9);
  }

  g_FPE_AssertFlag = 1;
  return result;
}

uint64_t NK_Check_TOW_Adjust(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    if (*(result + 128) == 1)
    {
      *(a2 + 792) = 0;
    }

    else
    {
      if (v2 >= 0)
      {
        v3 = *(a2 + 40);
      }

      else
      {
        v3 = -v2;
      }

      v4 = *(a2 + 640);
      if (v4 >= 3 && v3 >= TOW_stat_DeltaTOW_Limit[v4] || (v5 = *(a2 + 12), v5 >= 3) && v3 >= TOW_stat_DeltaTOW_Limit[v5])
      {
        *(a2 + 792) = 0;
        *(result + 132) = 24;
        *(result + 128) = 1;
        *(a2 + 640) = v4 - 1;
      }

      else
      {
        *(a2 + 792) = *(a2 + 792) - v2;
      }
    }
  }

  return result;
}

void Gnm13_00SendGnssReqCnf(int a1, int a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a3 == 2)
  {
    v10 = gnssOsa_Calloc("Gnm13_00SendGnssReqCnf", 82, 1, 0x14uLL);
    if (!v10)
    {
      return;
    }

    v6 = v10;
    *(v10 + 3) = a2;
    *(v10 + 4) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSA_GNSS_CNF =>LSIM AssistId,%u,Result,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm13_00SendGnssReqCnf", a2, a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    v9 = 8596481;
    goto LABEL_11;
  }

  if (a3 == 4)
  {
    v5 = gnssOsa_Calloc("Gnm13_00SendGnssReqCnf", 61, 1, 0x14uLL);
    if (!v5)
    {
      return;
    }

    v6 = v5;
    *(v5 + 3) = a2;
    *(v5 + 4) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSB_GNSS_CNF =>LSIM AssistId,%u,Result,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm13_00SendGnssReqCnf", a2, a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
    }

    v9 = 8597249;
LABEL_11:
    AgpsSendFsmMsg(128, 131, v9, v6);
    return;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqType\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm13_00SendGnssReqCnf", 515);
    LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
  }
}

uint64_t Gnm13_01EarlyRespCriteriaMet(uint64_t result)
{
  v9 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    if (*(result + 7) == 4 && ((v2 = *(result + 24), v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v2, v4 = *(v1 + 44), v3 < v4) ? (v5 = v3 + 1000 > v4) : (v5 = 0), v5))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ElapsedTime,%ums,EarlyRespTime,%ums,SafetyMargin,%ums\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm13_01EarlyRespCriteriaMet", v3, *(v1 + 44), 1000);
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
      }

      *(v1 + 44) = v3;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void Gnm13_02SendMsbGnssResp(_DWORD *a1, __int128 *a2, char a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("Gnm13_02SendMsbGnssResp", 152, 1, 0x88uLL);
  if (v6)
  {
    v7 = v6;
    *(v6 + 33) = *a1;
    v6[16] = a3;
    if (a2)
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      *(v6 + 60) = a2[3];
      *(v6 + 44) = v10;
      *(v6 + 28) = v9;
      *(v6 + 12) = v8;
      v11 = a2[4];
      v12 = a2[5];
      v13 = a2[6];
      *(v6 + 124) = *(a2 + 14);
      *(v6 + 108) = v13;
      *(v6 + 92) = v12;
      *(v6 + 76) = v11;
      Gnm05_32PrintGadData(a2);
    }

    else
    {
      *(v6 + 8) = 7;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_POS_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm13_02SendMsbGnssResp");
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8596995, v7);
  }
}

void Gnm13_03SendAbortCnf(int a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("Gnm13_03SendAbortCnf", 188, 1, 0x14uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 3) = a1;
    *(v4 + 4) = a2;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_ABORT_CNF =>LSIM\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm13_03SendAbortCnf");
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8591873, v5);
  }
}

void Gnm13_04SendGnssPosAidReq(int a1, _BYTE *a2, int a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("Gnm13_04SendGnssPosAidReq", 215, 1, 0x50uLL);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v6[18] = a1;
  if (a2)
  {
    if (Gnm05_25PopulateGnssAidReq(a2, v6 + 2, a3))
    {
LABEL_4:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_AID_REQ_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm13_04SendGnssPosAidReq");
        LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
      }

      AgpsSendFsmMsg(128, 131, 8596739, v7);
      return;
    }
  }

  else if (Gnm05_27PopulateDefaultGnssAidReq(v6 + 2, a3))
  {
    goto LABEL_4;
  }

  v10 = *(v7 + 3);
  if (v10)
  {
    free(v10);
  }

  *(v7 + 3) = 0;
  v11 = *(v7 + 4);
  if (v11)
  {
    free(v11);
  }

  *(v7 + 4) = 0;
  v12 = *(v7 + 5);
  if (v12)
  {
    free(v12);
  }

  *(v7 + 5) = 0;
  v13 = *(v7 + 6);
  if (v13)
  {
    free(v13);
  }

  *(v7 + 6) = 0;
  v14 = *(v7 + 7);
  if (v14)
  {
    free(v14);
  }

  *(v7 + 7) = 0;
  v15 = *(v7 + 8);
  if (v15)
  {
    free(v15);
  }

  free(v7);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aid not required\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm13_04SendGnssPosAidReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
  }
}

void Gnm13_05AssistHandleAssistStatus(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = *(a1 + 8);
    v6 = *(v5 + 6);
    v7 = *(v5 + 58) == 0;
    v8 = 78;
    if (!v7)
    {
      v8 = 89;
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ReqType,%u,AssistAllwd,%c\n", v4, "GNM", 73, "Gnm13_05AssistHandleAssistStatus", v6, v8);
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  v10 = *(a1 + 8);
  if (*(v10 + 58) == 1 && (*(v10 + 6) & 0x10) != 0)
  {
    Gnm13_04SendGnssPosAidReq(*v10, a2, *(v10 + 20));
  }
}

void Gnm13_07SendAidStatusCnf(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v17 = *MEMORY[0x29EDCA608];
  __dst[0] = 0;
  *&__dst[8] = 0;
  *&__dst[4] = 0;
  *&__dst[16] = 0;
  *&__dst[23] = 0;
  memset(&__dst[28], 0, 18);
  memset(&__dst[48], 0, 262);
  bzero(&__dst[312], 0x28CuLL);
  for (i = 0; i != 384; i += 3)
  {
    v3 = &__dst[i];
    *(v3 + 482) = 0;
    v3[966] = __dst[i + 966] & 0xE0;
  }

  memset(&__dst[1348], 0, 256);
  bzero(&__dst[1608], 0x1100uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = 78;
    if (BYTE1(g_AssistReq))
    {
      v6 = 89;
    }

    else
    {
      v6 = 78;
    }

    if (g_AssistReq)
    {
      v5 = 89;
    }

    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AssistStatusCnf ExtReq,%c,IntReq,%c\n", v4, "GNM", 73, "Gnm13_07SendAidStatusCnf", v5, v6);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  if (g_AssistReq == 1)
  {
    v8 = gnssOsa_Calloc("Gnm13_07SendAidStatusCnf", 300, 1, 0xA0uLL);
    if (v8)
    {
      v9 = v8;
      if (v1)
      {
        if (AgpsFsmStopTimer(8399366) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm13_07SendAidStatusCnf", 1545);
          LbsOsaTrace_WriteLog(0xBu, __str, v11, 2, 1);
        }

        v12 = Gnm05_25PopulateGnssAidReq(v1, v9 + 2, 255);
      }

      else
      {
        v12 = Gnm05_27PopulateDefaultGnssAidReq(v8 + 2, 33);
      }

      *(v9 + 72) = v12;
      *(v9 + 152) = 0;
      if (g_PosEstimate == 1)
      {
        memcpy(__dst, &g_PosEstimate, sizeof(__dst));
        Gnm05_43ConvertNavToGpsGad((v9 + 10), v9 + 132, &__dst[16], *&__dst[4]);
        *(v9 + 152) = *(v9 + 21) == 1;
      }

      *(v9 + 19) = HIDWORD(g_AssistReq);
      HIDWORD(g_AssistReq) = -1;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_CNF =>LSIM\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 73, "Gnm13_07SendAidStatusCnf");
        LbsOsaTrace_WriteLog(0xBu, __str, v14, 4, 1);
      }

      AgpsSendFsmMsg(128, 131, 8591361, v9);
      LOBYTE(g_AssistReq) = 0;
    }
  }
}

void Gnm13_08SendErrAssistStatus(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_AssistReq == 1)
  {
    v0 = gnssOsa_Calloc("Gnm13_08SendErrAssistStatus", 363, 1, 0xA0uLL);
    if (v0)
    {
      v1 = v0;
      v0[72] = 0;
      v0[152] = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_CNF =>LSIM\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm13_08SendErrAssistStatus");
        LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
      }

      AgpsSendFsmMsg(128, 131, 8591361, v1);
      LOBYTE(g_AssistReq) = 0;
    }
  }
}

uint64_t Gnm13_09SendAsstGadData(uint64_t result, __int128 *a2, int a3)
{
  v4 = result;
  v14 = *MEMORY[0x29EDCA608];
  v5 = *(result + 2);
  if (v5 == 3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GADPos ignored Ecall pre-emptive sess\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm13_09SendAsstGadData");
      result = LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    if (a3)
    {
      return Gnm10_28StopPositioning(v4);
    }
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_11;
    }

    v6 = *(result + 8);
    v7 = *(v6 + 6);
    if ((v7 & 0x10) != 0)
    {
      if (!*(v6 + 44) || (a3 & 1) != 0 || (result = Gnm13_01EarlyRespCriteriaMet(*(result + 8)), result))
      {
        Gnm13_02SendMsbGnssResp(v6, a2, a3);
        result = mach_continuous_time();
        *(v6 + 52) = (*&g_MacClockTicksToMsRelation * result);
      }
    }

    if (a3)
    {
      Gnm10_28StopPositioning(v4);
      result = Gnm02_21DeleteInstn(v4);
    }

    if ((v7 & 0x10) == 0)
    {
LABEL_11:
      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm13_09SendAsstGadData", 2052);
        return LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
      }
    }
  }

  return result;
}

void Gnm13_10SendMsaGnssResp(_DWORD *a1, const void *a2, char a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("Gnm13_10SendMsaGnssResp", 461, 1, 0x285ACuLL);
  if (v6)
  {
    v7 = v6;
    v6[41322] = *a1;
    if (a2)
    {
      Gnm05_35PrintMeas(a2);
      memcpy(v7 + 12, a2, 0x2859CuLL);
    }

    else
    {
      v6[173] = 7;
      v6[11] = 7;
    }

    v7[16] = a3;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_MSR_RESULT_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm13_10SendMsaGnssResp");
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8596227, v7);
  }
}

unint64_t Gnm13_11SendAsstGnssMeas(unint64_t result, const void *a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(result + 2) == 2)
  {
    v5 = result;
    v6 = *(result + 8);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ReqType,%u,AllwdGnss,%x\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm13_11SendAsstGnssMeas", *(v6 + 6), *(v6 + 20));
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
    }

    if (!*(v6 + 44) || (a3 & 1) != 0 || (result = Gnm13_01EarlyRespCriteriaMet(v6), result))
    {
      Gnm13_10SendMsaGnssResp(v6, a2, a3);
      result = mach_continuous_time();
      *(v6 + 52) = (*&g_MacClockTicksToMsRelation * result);
    }

    if (a3)
    {
      Gnm10_28StopPositioning(v5);
      return Gnm02_21DeleteInstn(v5);
    }
  }

  return result;
}

void Gnm13_13HandleAssistStatus(_BYTE *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v3 = 78;
    if (BYTE1(g_AssistReq))
    {
      v4 = 89;
    }

    else
    {
      v4 = 78;
    }

    if (g_AssistReq)
    {
      v3 = 89;
    }

    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AssistStatus ExtRequest,%c,IntRequest,%c\n", v2, "GNM", 73, "Gnm13_13HandleAssistStatus", v3, v4);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (BYTE1(g_AssistReq) == 1)
  {
    BYTE1(g_AssistReq) = 0;
    if (a1)
    {
      if (AgpsFsmStopTimer(8399366) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm13_13HandleAssistStatus", 1545);
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
      }

      InstnAssistReq = Gnm02_37GetInstnAssistReq();
      if (InstnAssistReq)
      {
        v9 = InstnAssistReq;
        v10 = *(InstnAssistReq + 2);
        if (v10 == 2)
        {
          *(*(InstnAssistReq + 8) + 59) = 0;
          Gnm13_05AssistHandleAssistStatus(InstnAssistReq, a1);
        }

        else if (v10 == 1)
        {
          *(*(InstnAssistReq + 8) + 5) = 0;
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm13_13HandleAssistStatus", 2052, *(v9 + 2));
          LbsOsaTrace_WriteLog(0xBu, __str, v12, 2, 1);
        }
      }
    }
  }
}

void Gnm13_15StartPosResp(unsigned __int16 *a1, int a2)
{
  v2 = a2;
  v23 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  v5 = *v4;
  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success AssistId,%u,InstId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm13_15StartPosResp", v5, *a1);
      v8 = 1;
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fail AssistId,%u,InstId,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm13_15StartPosResp", v5, *a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
      v8 = 0;
    }
  }

  if ((*(v4 + 6) & 4) != 0)
  {
    Gnm13_00SendGnssReqCnf(v8, *v4, 4);
    goto LABEL_13;
  }

  if ((*(v4 + 6) & 2) != 0)
  {
    Gnm13_00SendGnssReqCnf(v8, *v4, 2);
    if (v2)
    {
      goto LABEL_14;
    }

LABEL_20:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Clearing Assist Session AssistId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm13_15StartPosResp", *v4);
      LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
    }

    Gnm02_21DeleteInstn(a1);
    return;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
LABEL_13:
    if (v2)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  bzero(__str, 0x410uLL);
  v11 = mach_continuous_time();
  v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqType,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm13_15StartPosResp", 770, *(v4 + 6));
  LbsOsaTrace_WriteLog(0xBu, __str, v12, 2, 1);
  if ((v2 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (v4[17])
  {
    return;
  }

  v13 = *(a1 + 1);
  if (!v13)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnInfo\n");
    goto LABEL_36;
  }

  v14 = *(a1 + 2);
  if (v14 != 1)
  {
    if (v14 == 2)
    {
      v15 = 59;
      goto LABEL_27;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", v21);
LABEL_36:
    LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
    return;
  }

  v15 = 5;
LABEL_27:
  *(v13 + v15) = 1;
  if ((g_AssistReq & 0x100) == 0 && (g_AssistReq & 1) == 0)
  {
    if (AgpsFsmStartTimer(8399366, 0x1388u) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 87, "Gnm13_14HandleIntlAssistStatusReq", 1544);
      LbsOsaTrace_WriteLog(0xBu, __str, v20, 2, 1);
    }

    Gnm17_13SendPollAssistStatus();
  }

  BYTE1(g_AssistReq) = 1;
}

void Gnm13_16StopPosResp(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = **(a1 + 8);
  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success AssistId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm13_16StopPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    v6 = Gnm02_21DeleteInstn(a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Error AssistId,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm13_16StopPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    }

    Gnm02_21DeleteInstn(a1);
    v6 = 0;
  }

  Gnm13_03SendAbortCnf(v3, v6);
}

void Gnm13_17SendClearCacheInd(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm13_17SendClearCacheInd", 738, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    *(v2 + 3) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_CLEAR_DATA_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm13_17SendClearCacheInd");
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8604675, v3);
  }
}

uint64_t DD_Delete_Bad_QZSS_Data(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v5 = a4 + 1076;
  v6 = a4 + 1346;
  v7 = (a1 + 4);
  v8 = 5848;
  v9 = 6408;
  result = 0xFFFFFFFFLL;
  do
  {
    v11 = a4[1067];
    if (*(v11 + v4) == 1)
    {
      *(v7 - 1) = 16777472;
      *v7 = 256;
      *(a2 + 2 * v4) = 256;
      *(v11 + v4) = 0;
      *(a4[1065] + v4) = 0;
      *(a4[1069] + v4) = 0;
      *(v5 + 92) = 0uLL;
      v5[4] = 0uLL;
      v5[5] = 0uLL;
      v5[2] = 0uLL;
      v5[3] = 0uLL;
      *v5 = 0uLL;
      v5[1] = 0uLL;
      *(a4[1075] + v4) = 0;
      *(a4[1072] + v4) = 1;
      v12 = (p_NV + v9);
      *(v12 - 1) = 0xFFFFFFFFLL;
      *v12 = 0uLL;
      v12[1] = 0uLL;
      v12[2] = 0uLL;
      v12[3] = 0uLL;
      v12[4] = 0uLL;
      v12[5] = 0uLL;
      *(v12 + 92) = 0uLL;
    }

    if (*(a4[1068] + v4) == 1)
    {
      *(a3 + v4) = -1;
      *(a4[1068] + v4) = 0;
      *(a4[1066] + v4) = 0;
      *(a4[1071] + v4) = 0;
      *(v6 + 28) = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      *(a4[1075] + v4) = 0;
      v13 = (p_NV + v8);
      *(v13 - 1) = 0xFFFFFFFFLL;
      *v13 = 0uLL;
      v13[1] = 0uLL;
      *(v13 + 28) = 0uLL;
    }

    ++v4;
    v8 += 56;
    v9 += 120;
    v6 = (v6 + 44);
    v5 = (v5 + 108);
    v7 += 3;
  }

  while (v4 != 10);
  return result;
}

uint64_t DD_Delete_Inhib_QZSS_Data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v6 = a5 + 1076;
  v7 = a5 + 1346;
  v8 = a2 + 2;
  v9 = 6408;
  v10 = 5848;
  do
  {
    if (*(result + v5) == 1)
    {
      *(v8 - 2) = 16777472;
      *(v8 + 2) = 256;
      *(a3 + 2 * v5) = 256;
      *(a5[1067] + v5) = 0;
      *(a5[1065] + v5) = 0;
      *(a5[1069] + v5) = 0;
      *(v6 + 92) = 0uLL;
      v6[4] = 0uLL;
      v6[5] = 0uLL;
      v6[2] = 0uLL;
      v6[3] = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      *(a5[1070] + v5) = 0;
      *(v6 + 1172) = 0uLL;
      *(v6 + 1144) = 0uLL;
      *(v6 + 1160) = 0uLL;
      *(v6 + 1112) = 0uLL;
      *(v6 + 1128) = 0uLL;
      *(v6 + 1080) = 0uLL;
      *(v6 + 1096) = 0uLL;
      *(a5[1075] + v5) = 0;
      *(a5[1072] + v5) = 1;
      v11 = (p_NV + v9);
      *(v11 - 1) = 0xFFFFFFFFLL;
      *v11 = 0uLL;
      v11[1] = 0uLL;
      v11[2] = 0uLL;
      v11[3] = 0uLL;
      v11[4] = 0uLL;
      v11[5] = 0uLL;
      *(v11 + 92) = 0uLL;
      *(a4 + v5) = -1;
      *(a5[1068] + v5) = 0;
      *(a5[1066] + v5) = 0;
      *(a5[1071] + v5) = 0;
      *(v7 + 28) = 0uLL;
      *v7 = 0uLL;
      v7[1] = 0uLL;
      v12 = (p_NV + v10);
      *(v12 - 1) = 0xFFFFFFFFLL;
      *v12 = 0uLL;
      v12[1] = 0uLL;
      *(v12 + 28) = 0uLL;
    }

    ++v5;
    v9 += 120;
    v10 += 56;
    v7 = (v7 + 44);
    v6 = (v6 + 108);
    v8 += 6;
  }

  while (v5 != 10);
  return result;
}

uint64_t DD_Check_Age_QZSS_Data(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result < 1)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = result + 900;
  if (result <= 0x15180)
  {
    v12 = 86400;
  }

  else
  {
    v12 = result;
  }

  v13 = v12 - 86400;
  v14 = *(a6 + 8552);
  v28 = (result - a2 / 0x3E8) & ~((result - a2 / 0x3E8) >> 31);
  v15 = 8608;
  do
  {
    if (*(v14 + v8) != 1)
    {
      goto LABEL_17;
    }

    v16 = *(a6 + v15);
    if (v16 < v13 && v16 >= 1)
    {
LABEL_15:
      v10 = 1;
      *(*(a6 + 8536) + v8) = 1;
      goto LABEL_17;
    }

    if (v16)
    {
      if (v16 > v11)
      {
        v9 = (v9 + 1);
        if ((*(a6 + 39302) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      *(a6 + v15) = v28;
    }

LABEL_17:
    ++v8;
    v15 += 108;
  }

  while (v8 != 10);
  if (v9 >= 1)
  {
    EvLog_nd("DD_Check_Age_QZSS_Data: Deleting EPH since in the future", 1, a3, v9);
    if (*(a6 + 39302) == 1)
    {
      EvLog("DD_Check_Age_QZSS_Data: Skipping since SkipFutureCheck set");
    }
  }

  v18 = 0;
  v19 = 0;
  if (v7 <= 15724800)
  {
    v20 = 15724800;
  }

  else
  {
    v20 = v7;
  }

  v21 = v20 - 15724800;
  v22 = 10768;
  do
  {
    if (*(*(a6 + 8568) + v18) == 1)
    {
      v23 = *(a6 + v22);
      if (v23 >= v21 || v23 < 1)
      {
        if (v23)
        {
          if (v23 > v11)
          {
            v19 = (v19 + 1);
            EvLog_v("DD_Check_Age_QZSS_Data: Future almanac deleted SV %d age %d thresh %d", v18 + 193, (v7 - v23) / 604800, 0);
            if ((*(a6 + 39302) & 1) == 0)
            {
              v10 = 1;
              *(*(a6 + 8544) + v18) = 1;
            }
          }
        }

        else
        {
          *(a6 + v22) = v28;
        }
      }

      else
      {
        v10 = 1;
        *(*(a6 + 8544) + v18) = 1;
        EvLog_v("DD_Check_Age_QZSS_Data: Old almanac deleted SV %d age %d thresh %d", v18 + 193, (v7 - v23) / 604800, (v7 - v21) / 604800);
      }
    }

    ++v18;
    v22 += 44;
  }

  while (v18 != 10);
  if (v19 >= 1)
  {
    EvLog_nd("DD_Check_Age_QZSS_Data: Deleting ALM since in the future", 1, a3, v19);
    if (*(a6 + 39302) == 1)
    {
      EvLog("DD_Check_Age_QZSS_Data: Skipping since SkipFutureCheck set");
    }
  }

  result = a3;
  if (v10)
  {

    return DD_Delete_Bad_QZSS_Data(a3, a4, a5, a6);
  }

  return result;
}

void DD_Proc_QZSS_Data(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5, void *a6)
{
  v9 = a2;
  v171 = *MEMORY[0x29EDCA608];
  *v148 = 0;
  v10 = *(a2 + 8);
  v143 = a6 + 1076;
  if (!*(a6 + 27 * v10 + 2178))
  {
    *(a6[1075] + v10) = 0;
  }

  v11 = *(a2 + 56);
  if ((v11 & 1) == 0)
  {
    return;
  }

  v12 = (a2 + 16);
  if (*(a2 + 18) << 16 != 9109504)
  {
    return;
  }

  if ((v11 & 2) == 0)
  {
    v13 = (a2 + 12);
LABEL_7:
    v14 = 0;
    *v13 = 0;
    goto LABEL_18;
  }

  v15 = (*(a2 + 20) >> 2) & 7;
  *(a2 + 12) = (*(a2 + 20) >> 2) & 7;
  v13 = (a2 + 12);
  if (v15)
  {
    if (DD_Predict_Subframe_Number(a4, v148))
    {
      v14 = v15;
      v9 = a2;
      if (v15 != v148[0] && !*a3 && (*(a6[6] + v10) & 1) == 0)
      {
        if (v15 == 1 && v148[0] == 2)
        {
          v14 = 1;
        }

        else if (v15 == 2 && v148[0] == 3)
        {
          v14 = 2;
        }

        else
        {
          if (v15 != 3 || v148[0] != 4)
          {
            EvCrt_v("DD_Proc_QZSS_Data:  SV %2d Subframe Number Error - decoded %d  expected %d", v10 + 1, v15, v148[0]);
            v9 = a2;
            goto LABEL_7;
          }

          v14 = 3;
        }
      }
    }

    else
    {
      v9 = a2;
      v14 = v15;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_18:
  if (g_Enable_Event_Log >= 4u)
  {
    EvLog_nd("QZS Subf ", 4, v9, *(v9 + 6), v14, *(a4 + 24), *(a4 + 8));
    v16 = (a1 + 6 * *(a2 + 8));
    EvLog_nd("QZS Subf masks", 3, v17, v16[2318], v16[2319], v16[2320]);
    v9 = a2;
    v14 = *(a2 + 12);
  }

  if ((v14 - 1) >= 3)
  {
    if ((v14 - 4) >= 2)
    {
      if (v14)
      {

        EvCrt_Illegal_Default("DD_Proc_QZSS_Data", 949);
      }
    }

    else if ((~*(v9 + 56) & 0x3FE) == 0 && *(a4 + 5) == 1)
    {
      v18 = *(a4 + 16);
      if (v18 >= 1025)
      {
        v19 = *(v9 + 24);
        v20 = HIWORD(v19) & 0x3F;
        *(v9 + 13) = BYTE2(v19) & 0x3F;
        v21 = (v19 >> 22) & 3;
        *(v9 + 14) = v21;
        if (!v21)
        {
          v22 = (v20 - 1);
          if (v22 <= 0x1F)
          {
            v23 = v9;
            if (Decode_GPS_Check_Alm_TOA(v12, *(*a6 + v22), v18, (a1 + v22 + 192), (v9 + 10), &v148[1]))
            {
              v24 = *(v23 + 32);
              if ((v24 & 0x1F) == 0x1F || (v24 & 0x1F) == 3)
              {
                v24 &= 0xFFFFFFE0;
                *(v23 + 32) = v24;
              }

              if ((v24 & 0xE0) != 0)
              {
                *(v23 + 32) = v24 & 0xFFFFFF1F;
              }

              DD_Proc_GPS_Alm_Subframe(*(v23 + 13), *(v23 + 10), v12, *a5, a1, a1 + 224, a6);
              v9 = a2;
            }

            else
            {
              v9 = v23;
              if (v148[1])
              {
                v81 = *(v23 + 13);
                v82 = a6 + 44 * (v81 - 1);
                v83 = *(v82 + 1754);
                v84 = *a5;
                *(v82 + 1754) = *a5;
                if (!v83 && v84 >= 1)
                {
                  v85 = 0;
                  LODWORD(v86) = 0;
                  v87 = (v82 + 7016);
                  v88 = p_NV;
                  v89 = p_NV + 56 * (v81 - 1);
                  v90 = *v87;
                  v91 = v87[1];
                  *(v89 + 220) = *(v87 + 28);
                  *(v89 + 192) = v90;
                  *(v89 + 208) = v91;
                  v92 = v88 + 56 * v81 + 136;
                  v93 = 55665;
                  do
                  {
                    v94 = *(v92 + v85) ^ BYTE1(v93);
                    v93 = 52845 * (v93 + v94) + 22719;
                    v86 = (v86 + v94);
                    ++v85;
                  }

                  while (v85 != 48);
                  *(v89 + 184) = v86;
                }
              }
            }
          }

          v21 = *(v9 + 14);
        }

        if (v21 == 3)
        {
          v95 = *(v9 + 13);
          if ((v95 - 1) <= 9)
          {
            v96 = v9;
            if (Decode_GPS_Check_Alm_TOA(v12, *(a6[1063] + (v95 - 1)), v18, (a1 + (v95 - 1) + 3644), (v9 + 10), &v148[1]))
            {
              DD_Proc_QZSS_Alm_Subframe(*(v96 + 13), *(v96 + 10), v12, *a5, a1 + 3584, a1 + 3654, a6);
              v9 = v96;
            }

            else
            {
              v9 = v96;
              if (v148[1])
              {
                v97 = *(v96 + 13);
                v98 = a6 + 44 * v97;
                v99 = *(v98 + 2681);
                v100 = *a5;
                *(v98 + 2681) = *a5;
                if (!v99 && v100 >= 1)
                {
                  v102 = 0;
                  LODWORD(v103) = 0;
                  v104 = (v98 + 10724);
                  v105 = p_NV + 56 * (v97 - 64);
                  v106 = v105 - 4968;
                  v107 = *v104;
                  v108 = v104[1];
                  *(v106 + 36) = *(v104 + 28);
                  *(v106 + 24) = v108;
                  *(v106 + 8) = v107;
                  v109 = v105 - 4960;
                  v110 = 55665;
                  do
                  {
                    v111 = *(v109 + v102) ^ BYTE1(v110);
                    v110 = 52845 * (v110 + v111) + 22719;
                    v103 = (v103 + v111);
                    ++v102;
                  }

                  while (v102 != 48);
                  *v106 = v103;
                }
              }
            }
          }
        }

        v112 = *(v9 + 14);
        if (!*(v9 + 14))
        {
          if (*(v9 + 13) != 56)
          {
            return;
          }

          DD_Proc_GPS_ION_UTC_Subframe(*(v9 + 8), v12, *a5, v18, a6[1075], a6);
          v9 = a2;
          v112 = *(a2 + 14);
        }

        if (v112 == 3 && *(v9 + 13) == 51)
        {
          DD_Proc_QZSS_Health_Subframe(v12, *a5, a1 + 3584, a1 + 3654, a1 + 3644, a6);
          v113 = a6[1075];
          *(v113 + 8) = 0;
          *v113 = 0;
        }
      }
    }

    return;
  }

  *(v9 + 13) = 0;
  v25 = *(v9 + 8);
  v26 = *(v143 + 27 * v25 + 26);
  v139 = a6;
  v140 = a5;
  v137 = v14 - 1;
  v138 = v12;
  if (v26 == 0xFFFFFF || (*(a6[1063] + v25) & 1) == 0)
  {
    v132 = 0;
    v133 = (v26 == 0xFFFFFF) & *(a6[1063] + v25);
    v27 = *(v9 + 56);
  }

  else
  {
    v27 = *(v9 + 56);
    if (*(a6[1069] + v25) == 1)
    {
      v28 = 0;
      v29 = v143 + 108 * v25;
      do
      {
        v30 = 1 << (8 * v14 - 8 + v28);
        if ((v26 & v30) == 0 && ((v27 >> v28) & 1) != 0 && *(v9 + 24 + 4 * v28) == *&v29[4 * (8 * v14 - 8) + 8 + 4 * v28])
        {
          v26 |= v30;
          *(v29 + 26) = v26;
        }

        ++v28;
      }

      while (v28 != 8);
      v132 = v26 == 0xFFFFFF;
      v133 = 1;
    }

    else
    {
      v132 = 0;
      v133 = 1;
    }
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v134 = v14;
  v135 = a1 + 3676;
  v36 = v14 - 1;
  v136 = a1 + 4636;
  v37 = a1 + 4636 + 6 * v25;
  v141 = v25;
  v142 = v25 + 193;
  v38 = 32 * v14 + 96 * v25 + a1 + 3644;
  v39 = v9 + 24;
  do
  {
    v40 = 1 << (v31 + 2);
    v41 = (v40 & *(v37 + 2 * v36));
    if (v41)
    {
      ++v32;
    }

    if ((v40 & v27) != 0)
    {
      ++v33;
      v42 = v41 == 0;
    }

    else
    {
      v42 = 1;
    }

    if (!v42)
    {
      ++v34;
      v43 = *(v38 + 4 * v31);
      if (*(v39 + 4 * v31) != v43)
      {
        v44 = v35 + 1;
        v45 = v14;
        v46 = v36;
        v47 = v27;
        v48 = v34;
        v147 = v32;
        EvLog_v("GPS_Data_Decode: SV %d SF %d Diff Wd %d 0x%x 0x%x", v142, v14, v31 + 2, *(v39 + 4 * v31), v43);
        v32 = v147;
        v34 = v48;
        v35 = v44;
        v27 = v47;
        v36 = v46;
        v14 = v45;
        v9 = a2;
      }
    }

    ++v31;
  }

  while (v31 != 8);
  v49 = a1;
  v50 = a1 + 3584;
  v51 = v140;
  if (v35 >= 1)
  {
    if (v35 == 1 && v34 >= 4 && (v14 == 1 && (v27 & 0x3C4) != 0x3C4 || v14 >= 2 && (v27 & 0x3FC) != 0x3FC))
    {
      return;
    }

    v32 = 0;
    v52 = 2 * v14 - 2;
    *(v136 + 6 * v141 + v52) = 0;
    *(v50 + 6 * v141 + v52) = 256;
    v49 = a1;
  }

  if (v34 - v35 <= 1)
  {
    if (v33 >= v32)
    {
      *(v136 + 6 * v141 + 2 * (v134 - 1)) = v27;
      v63 = *(v9 + 40);
      v64 = (v135 + 96 * v141 + 32 * (v134 - 1));
      *v64 = *(v9 + 24);
      v64[1] = v63;
    }
  }

  else
  {
    v53 = 0;
    v54 = v136 + 6 * v141 + 2 * v14;
    v57 = *(v54 - 2);
    v55 = (v54 - 2);
    v56 = v57;
    v58 = v9 + 24;
    v59 = 32 * v14 + 96 * v141 + v49 + 3644;
    do
    {
      v60 = 1 << (v53 + 2);
      v61 = v60 & v56;
      if ((v60 & v27) != 0 && v61 == 0)
      {
        *(v59 + 4 * v53) = *(v58 + 4 * v53);
        v56 |= (1 << (v53 + 2));
        *v55 = v56;
      }

      else if ((v60 & v27) == 0 && v61)
      {
        *(v58 + 4 * v53) = *(v59 + 4 * v53);
        LODWORD(v27) = v27 | (1 << (v53 + 2));
      }

      ++v53;
    }

    while (v53 != 8);
  }

  if (v137 <= 2)
  {
    v65 = 0x90207u >> (8 * (v137 & 0x1F));
    if ((v27 >> (v65 & 0xF)))
    {
      v66 = BYTE2(v138[v65 & 0xF]);
      if ((v14 != 1 || (v27 & 0x3C4) == 0x3C4) && (v14 < 2 || (v27 & 0x3FC) == 0x3FC))
      {
        v67 = a1 + 3654;
        v68 = (v50 + 6 * v141);
        v69 = v68[v36];
        if (v66 != v69)
        {
          v68[v36] = v66;
        }

        v70 = v141;
        if (v66 != *(v67 + 2 * v141))
        {
          for (i = 0; i != 6; i += 2)
          {
            if (2 * v36 != i)
            {
              *(a1 + 6 * v141 + 4636 + i) = 0;
            }
          }

          v70 = v141;
          *(v67 + 2 * v141) = v66;
        }

        v72 = (v136 + 6 * v70);
        v73 = *v72;
        if ((~v73 & 0x3C4) != 0 || (~v72[1] & 0x3FC) != 0 || (~v72[2] & 0x3FC) != 0 || (v74 = *v68, v74 != v68[1]) || v74 != v68[2])
        {
LABEL_143:
          if ((~v73 & 0x3C4) != 0)
          {
            return;
          }

          if ((~v72[1] & 0x3FC) != 0)
          {
            return;
          }

          if ((~v72[2] & 0x3FC) != 0)
          {
            return;
          }

          v114 = *v68;
          if (v114 != v68[1] || v114 != v68[2])
          {
            return;
          }

          v115 = a1 + 4696;
          v116 = *(v135 + 96 * v141);
          if (v66 == v69)
          {
            v117 = v133;
            if ((0xE4FE7F3uLL >> ((v116 >> 2) & 0x1F)))
            {
              v118 = v133;
            }

            else
            {
              v118 = 1;
            }

            if (v118 == 1)
            {
              v119 = v141;
              v120 = *(v115 + v141) == 0;
            }

            else
            {
              v120 = 0;
              v119 = v141;
              *(v115 + v141) = 1;
            }
          }

          else
          {
            v120 = 0;
            v119 = v141;
            *(v115 + v141) = 1;
            v117 = v133;
          }

          *v72 = 0;
          v72[2] = 0;
          v121 = v117 ^ 1;
          if (((0xE4FE7F3uLL >> ((v116 >> 2) & 0x1F)) & 1) == 0)
          {
            v121 = 1;
          }

          if (v121)
          {
            goto LABEL_173;
          }

          v122 = (v116 >> 14) & 0x3FF;
          if (*(a4 + 5))
          {
            do
            {
              v123 = v122;
              v122 += 1024;
            }

            while (*(a4 + 16) - 512 > v123);
            v51 = v140;
            v119 = v141;
            v9 = a2;
            if (*(a4 + 16) == v123)
            {
              goto LABEL_173;
            }

            if (*a4 < 3)
            {
              goto LABEL_173;
            }

            v124 = *(a4 + 24);
            if ((v124 - 32) >= 0x93A41)
            {
              goto LABEL_173;
            }
          }

          else
          {
            v125 = *(*(p_api + 72) + 1026);
            if (v122 > v125)
            {
              LOWORD(v125) = v122;
            }

            v123 = ((v122 ^ 0x3FF) + v125) & 0xFC00 | v122;
            v124 = *(a4 + 24);
          }

          v126 = v123;
          v127 = DD_Submit_WeekNum((v119 - 63), v123, v139, v135, a4);
          v9 = a2;
          if (v127)
          {
            v128 = v124 + 604800 * v126;
            if (*a4 <= 2)
            {
              v128 = 0;
            }

            *v51 = v128;
            if (!v120)
            {
              return;
            }

LABEL_175:
            v129 = *(v9 + 8);
            v130 = (v143 + 108 * v129);
            v131 = *v130 != 0;
            *v130 = v128;
            if ((v131 & ~v132 & 1) == 0 && *v51 >= 1)
            {
              *(v139[1072] + v129) = 1;
              Core_Save_QZSS_Eph((v129 - 63), 0, v130);
            }

            return;
          }

LABEL_173:
          if (!v120)
          {
            return;
          }

          v128 = *v51;
          goto LABEL_175;
        }

        v75 = (v135 + 96 * v141);
        v76 = v75[3];
        v166 = v75[2];
        v167 = v76;
        v77 = v75[5];
        v168 = v75[4];
        v169 = v77;
        v78 = v75[1];
        v164 = *v75;
        v170 = 0;
        v163[0] = *v140;
        v163[1] = 4;
        v165 = v78;
        memset(v149, 0, sizeof(v149));
        v150 = 0;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v162 = 0;
        Get_GPS_Kep_Ephemeris(5, v141 - 63, v163, v149);
        v79 = Kep_Check_Ephemeris(*v140 / 604800, *v140 % 604800, v149);
        v80 = v79;
        if (!ST_Check_Eph_Kep_Err("DD_Proc_QZSS_Eph_Subframe", v79, v149))
        {
          if ((v80 & 0xC) != 0)
          {
            *v72 = 0;
          }

          if ((v80 & 0x3F0) != 0)
          {
            v72[1] = 0;
          }

          if ((v80 & 0xC00) != 0)
          {
            v72[2] = 0;
            v51 = v140;
LABEL_141:
            *(v139[1075] + v141) = 1;
            goto LABEL_142;
          }

          v51 = v140;
          if ((v80 & 0x3FC) != 0)
          {
            goto LABEL_141;
          }
        }

LABEL_142:
        v73 = *v72;
        v9 = a2;
        goto LABEL_143;
      }
    }
  }
}

BOOL DD_Proc_QZSS_Alm_Subframe(char a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v52 = *MEMORY[0x29EDCA608];
  v12 = ((*(a3 + 16) & 0xE0) == 0) & (0xE4FE7F3uLL >> *(a3 + 16));
  v13 = (a1 - 1);
  v14 = *(a7[1063] + v13);
  if (v14 == 1 && v12 == 0)
  {
    goto LABEL_9;
  }

  if (((v14 == 0) & v12) != 1)
  {
    goto LABEL_13;
  }

  v16 = a7[1069];
  if (*(v16 + v13) == 1)
  {
    v17 = a7 + 108 * (a1 - 1);
    v18 = *(v17 + 2152);
    if (((0xE4FE7F3uLL >> ((*(v17 + 2154) >> 2) & 0x1F)) & 1) == 0 && v18 + 3600 > a4)
    {
LABEL_9:
      LOBYTE(v12) = 0;
      goto LABEL_13;
    }

    if (v18 + 100 < a4)
    {
      *(a7[1065] + v13) = 0;
      *(v16 + v13) = 0;
      v19 = a5 + 6 * (a1 - 1);
      *v19 = 16777472;
      *(v19 + 4) = 256;
      *(a6 + 2 * v13) = 256;
    }
  }

  LOBYTE(v12) = 1;
LABEL_13:
  v49 = 0;
  v48 = a4;
  v50 = *(a3 + 8);
  v51 = *(a3 + 24);
  v43 = 0;
  memset(v42, 0, 15);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  Get_GPS_Kep_Almanac(&v48, v42);
  LODWORD(v42[1]) = 5;
  v20 = Kep_Check_Almanac(a4 / 604800, v42);
  if (v20)
  {
    *(a7[1075] + v13) = 1;
  }

  result = ST_Check_Alm_Kep_Err("DD_Proc_QZSS_Alm_Subframe:", v20, v42);
  if (result)
  {
    v22 = a7[1063];
    *(v22 + v13) = v12;
    v23 = a7 + 44 * v13;
    v24 = (v23 + 10768);
    *(v23 + 5389) = a2;
    v25 = *(a3 + 8);
    *(v23 + 10796) = *(a3 + 24);
    *(v23 + 10780) = v25;
    *(v23 + 2692) = a4;
    *(v23 + 2693) = 4;
    *(a7[1066] + v13) = 1;
    *(a7[1071] + v13) = 1;
    if (*(v22 + v13))
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    *(a7[1064] + 20 * v13 + 4) = v26;
    if (a4 >= 1)
    {
      v27 = 0;
      LODWORD(v28) = 0;
      v29 = p_NV + 56 * (a1 - 64);
      v30 = v29 - 4968;
      v31 = *v24;
      v32 = v24[1];
      *(v30 + 36) = *(v24 + 28);
      *(v30 + 24) = v32;
      *(v30 + 8) = v31;
      v33 = v29 - 4960;
      v34 = 55665;
      do
      {
        v35 = *(v33 + v27) ^ BYTE1(v34);
        v34 = 52845 * (v34 + v35) + 22719;
        v28 = (v28 + v35);
        ++v27;
      }

      while (v27 != 48);
      *v30 = v28;
      v22 = a7[1063];
    }

    v36 = 0;
    LODWORD(v37) = 0;
    v38 = p_NV;
    v39 = *(v22 + 8);
    *(p_NV + 5828) = *v22;
    *(v38 + 5836) = v39;
    v40 = 55665;
    do
    {
      v41 = *(v38 + 5824 + v36) ^ BYTE1(v40);
      v40 = 52845 * (v40 + v41) + 22719;
      v37 = (v37 + v41);
      ++v36;
    }

    while (v36 != 40);
    *(v38 + 5816) = v37;
  }

  return result;
}

unint64_t DD_Proc_QZSS_Health_Subframe(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = *MEMORY[0x29EDCA608];
  result = Decode_QZSS_Health_Subframe(a1, v29);
  v12 = 0;
  v13 = a6 + 1076;
  v14 = (a3 + 4);
  v15 = a6 + 2697;
  v16 = 4;
  do
  {
    if (*(a6[1063] + v12))
    {
      if (v29[v12])
      {
        goto LABEL_4;
      }
    }

    else if (v29[v12])
    {
      result = *v15;
      v18 = a6[1069];
      if (*(v18 + v12) != 1 || ((0xE4FE7F3uLL >> ((v13[2] >> 2) & 0x1F)) & 1) != 0 || *v13 + 3600 <= a2)
      {
        v19 = a6[1071];
        if (*(v19 + v12) != 1)
        {
          goto LABEL_19;
        }

        v20 = 0xE4FE7F3uLL >> (result & 0x1F);
        result = *(v15 - 5);
        if ((v20 & 1) != 0 || result + 3600 <= a2)
        {
          result = (result + 100);
          if (result >= a2)
          {
LABEL_19:
            if (*(v18 + v12))
            {
LABEL_20:
              if (*v13 + 100 < a2)
              {
                *(a6[1065] + v12) = 0;
                *(v18 + v12) = 0;
                *(v14 - 1) = 16777472;
                *v14 = 256;
                *(a4 + 2 * v12) = 256;
              }
            }
          }

          else
          {
            *(a6[1066] + v12) = 0;
            *(v19 + v12) = 0;
            *(a5 + v12) = -1;
            v18 = a6[1069];
            if (*(v18 + v12))
            {
              goto LABEL_20;
            }
          }

LABEL_4:
          v17 = 1;
          goto LABEL_14;
        }
      }

      v29[v12] = 0;
    }

    v17 = 2;
LABEL_14:
    *(a6[1064] + v16) = v17;
    ++v12;
    v16 += 20;
    v14 += 3;
    v15 += 11;
    v13 += 27;
  }

  while (v12 != 10);
  v21 = 0;
  LODWORD(v22) = 0;
  v23 = a6[1063];
  *v23 = *v29;
  *(v23 + 8) = v30;
  v24 = a6[1063];
  v25 = p_NV;
  v26 = *(v24 + 8);
  *(p_NV + 5828) = *v24;
  *(v25 + 5836) = v26;
  v27 = 55665;
  do
  {
    v28 = *(v25 + 5824 + v21) ^ BYTE1(v27);
    v27 = 52845 * (v27 + v28) + 22719;
    v22 = (v22 + v28);
    ++v21;
  }

  while (v21 != 40);
  *(v25 + 5816) = v22;
  return result;
}

uint64_t DD_Save_New_QZSS_Eph(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 + 1076;
  v12 = 10788;
  do
  {
    if (*(a3 + v10) != 1)
    {
      goto LABEL_19;
    }

    v13 = (a2 + v8);
    v14 = *(a2 + v8);
    if (!DD_Check_New_QZSS_Eph(v10, a2, a5))
    {
      *(a3 + v10) = 0;
      v13[4] = 0u;
      v13[5] = 0u;
      v13[2] = 0u;
      v13[3] = 0u;
      *v13 = 0u;
      v13[1] = 0u;
      goto LABEL_19;
    }

    v15 = (a5[1063] + v10);
    v16 = (0xE4FE7F3uLL >> ((v14 >> 2) & 0x1F)) & 1;
    if (!v16 || (*v15 & 1) != 0)
    {
      *v15 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = a5[1071];
      if (*(v17 + v10) == 1)
      {
        v18 = *(a5 + v12 - 20);
        if (((0xE4FE7F3uLL >> (*(a5 + v12) & 0x1F)) & 1) == 0 && v18 + 3600 > a1)
        {
          *v15 = 0;
LABEL_12:
          v19 = 2;
          goto LABEL_17;
        }

        if (v18 + 100 < a1)
        {
          *(a5[1066] + v10) = 0;
          *(v17 + v10) = 0;
          *(a4 + v10) = -1;
          v15 = (a5[1063] + v10);
        }
      }

      *v15 = 1;
    }

    v19 = 1;
LABEL_17:
    *(a5[1064] + v9) = v19;
    v20 = *v13;
    *(v11 + 3) = v13[1];
    *(v11 + 1) = v20;
    v21 = v13[2];
    v22 = v13[3];
    v23 = v13[4];
    *(v11 + 11) = v13[5];
    *(v11 + 9) = v23;
    *(v11 + 7) = v22;
    *(v11 + 5) = v21;
    *v11 = a1;
    *(v11 + 1) = 4;
    *(a5[1065] + v10) = 1;
    *(a5[1069] + v10) = 1;
    *(v11 + 26) = 0;
    *(a5[1074] + v10) = 0;
    *(a3 + v10) = 0;
    if (a1 >= 1)
    {
      *(a5[1072] + v10) = 1;
      Core_Save_QZSS_Eph((v10 - 63), 0, v11);
    }

LABEL_19:
    ++v10;
    v11 = (v11 + 108);
    v9 += 20;
    v12 += 44;
    v8 += 96;
  }

  while (v10 != 10);
  return 1;
}

BOOL DD_Check_New_QZSS_Eph(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(*(a3 + 8552) + a1);
  v4 = a3 + 108 * a1;
  v5 = *(v4 + 8664);
  v16 = *(v4 + 8648);
  v17 = v5;
  v6 = *(v4 + 8696);
  v18 = *(v4 + 8680);
  v19 = v6;
  v7 = *(v4 + 8632);
  v14 = *(v4 + 8616);
  v15 = v7;
  if (v3 != 1)
  {
    return 1;
  }

  v8 = a2 + 96 * a1;
  if (((*(v8 + 20) ^ DWORD1(v15)) & 0xFF0000) != 0)
  {
    return 1;
  }

  v10 = 0;
  v11 = *(v4 + 8712);
  v12 = 0uLL;
  do
  {
    v12 = vsubq_s32(v12, vmvnq_s8(vceqq_s32(*(&v14 + v10), *(v8 + v10))));
    v10 += 16;
  }

  while (v10 != 96);
  if (vaddvq_s32(v12))
  {
    v13 = v11 == 0xFFFFFF;
  }

  else
  {
    v13 = 0;
  }

  return !v13;
}

unsigned int *SA_Interface_Logger(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v224 = *MEMORY[0x29EDCA608];
  if ((g_FPE_LogSeverity & 0x20) != 0)
  {
    v8 = result;
    *(a2 + 2127104) = *(a2 + 2127104) + result[6];
    LCD_SA_Debug_Ctl(a6);
    v9 = *a6;
    v10 = 76;
    v11 = 1u;
    do
    {
      *a6 = v9 + 1;
      *v9 = v10;
      v9 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v9 = *(a6 + 16);
        *a6 = v9;
      }

      v10 = aLcdKfsol[v11++];
    }

    while (v11 != 12);
    v213 = a2;
    v221 = 0;
    v220 = 0;
    v222 = 0.0;
    v218 = *(v8 + 8);
    v219 = *(v8 + 18);
    v12 = &v220;
    ECEF2Geo(&v218, &WGS84_Datum, &v220);
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = *v12 * 57.2957795;
      v17 = -v16;
      if (v16 >= 0.0)
      {
        v17 = *v12 * 57.2957795;
      }

      v18 = v17;
      v19 = (v17 - v18) * 60.0;
      v20 = v19;
      v21 = (v19 - v20) * 60.0;
      sprintf_4d(a6, v18);
      sprintf_3d(a6, v20);
      if (v21 * 100000.0 <= 0.0)
      {
        v22 = -0.5;
      }

      else
      {
        v22 = 0.5;
      }

      v23 = v21 * 100000.0 + v22;
      if (v23 <= 2147483650.0)
      {
        if (v23 >= -2147483650.0)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0x80000000;
        }
      }

      else
      {
        v24 = 0x7FFFFFFFLL;
      }

      sprintf_8f(a6, v24, 6);
      v25 = &ch_NSEW + 8 * v13;
      if (*v12 < 0.0)
      {
        v25 += 4;
      }

      v26 = *v25;
      if (*v25)
      {
        v27 = *a6;
        v28 = v25 + 1;
        do
        {
          *a6 = v27 + 1;
          *v27 = v26;
          v27 = *a6;
          if (*a6 >= *(a6 + 24))
          {
            v27 = *(a6 + 16);
            *a6 = v27;
          }

          v29 = *v28++;
          v26 = v29;
        }

        while (v29);
      }

      v14 = 0;
      v12 = &v221;
      v13 = 1;
    }

    while ((v15 & 1) != 0);
    sprintf_13f3(a6, v222);
    sprintf_gR8(a6, *(v8 + 100));
    v30 = *a6;
    v31 = &ch_TOW_Status[10 * v8[4] + 1];
    v32 = 32;
    do
    {
      *a6 = v30 + 1;
      *v30 = v32;
      v30 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v30 = *(a6 + 16);
        *a6 = v30;
      }

      v33 = *v31++;
      v32 = v33;
    }

    while (v33);
    sprintf_13f3(a6, *(v8 + 12) + *(v213 + 2127104) * 299792.458);
    sprintf_13f3(a6, *(v8 + 13) + *(v213 + 2127104) * 299792.458);
    sprintf_13f3(a6, *(v8 + 14) + *(v213 + 2127104) * 299792.458);
    sprintf_13f3(a6, *(v8 + 15));
    v34 = *a6;
    v35 = 32;
    v36 = 1u;
    do
    {
      *a6 = v34 + 1;
      *v34 = v35;
      v34 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v34 = *(a6 + 16);
        *a6 = v34;
      }

      v35 = aPosEcef[v36++];
    }

    while (v36 != 11);
    sprintf_13f3(a6, *(v8 + 16));
    sprintf_13f3(a6, *(v8 + 17));
    sprintf_13f3(a6, *(v8 + 18));
    v37 = *a6;
    v38 = 32;
    v39 = 1u;
    do
    {
      *a6 = v37 + 1;
      *v37 = v38;
      v37 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v37 = *(a6 + 16);
        *a6 = v37;
      }

      v38 = aVelEcef[v39++];
    }

    while (v39 != 11);
    sprintf_13f3(a6, *(v8 + 19));
    sprintf_13f3(a6, *(v8 + 20));
    sprintf_13f3(a6, *(v8 + 21));
    v40 = 0;
    v41 = *a6;
    v42 = 32;
    do
    {
      *a6 = v41 + 1;
      *v41 = v42;
      v41 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v41 = *(a6 + 16);
        *a6 = v41;
      }

      v42 = aSlewedPeBias[++v40];
    }

    while (v40 != 16);
    sprintf_13f3(a6, *(v8 + 12));
    sprintf_13f3(a6, *(v8 + 13));
    sprintf_13f3(a6, *(v8 + 14));
    ud2cov(v8 + 32, v217, 0xBu);
    v43 = *a6;
    v44 = 32;
    v45 = 1u;
    do
    {
      *a6 = v43 + 1;
      *v43 = v44;
      v43 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v43 = *(a6 + 16);
        *a6 = v43;
      }

      v44 = aPosEcefVar[v45++];
    }

    while (v45 != 15);
    sprintf_sgR8(a6, v217[20]);
    sprintf_sgR8(a6, v217[27]);
    sprintf_sgR8(a6, v217[35]);
    sprintf_sgR8(a6, v217[26]);
    sprintf_sgR8(a6, v217[33]);
    sprintf_sgR8(a6, v217[34]);
    v46 = *a6;
    v47 = 32;
    v48 = 1u;
    do
    {
      *a6 = v46 + 1;
      *v46 = v47;
      v46 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v46 = *(a6 + 16);
        *a6 = v46;
      }

      v47 = aVelEcefVar[v48++];
    }

    while (v48 != 15);
    sprintf_sgR8(a6, v217[44]);
    sprintf_sgR8(a6, v217[54]);
    sprintf_sgR8(a6, v217[65]);
    sprintf_sgR8(a6, v217[53]);
    sprintf_sgR8(a6, v217[63]);
    sprintf_sgR8(a6, v217[64]);
    v49 = *a6;
    v50 = 32;
    v51 = 1u;
    do
    {
      *a6 = v49 + 1;
      *v49 = v50;
      v49 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v49 = *(a6 + 16);
        *a6 = v49;
      }

      v50 = aAcc_0[v51++];
    }

    while (v51 != 6);
    sprintf_ACC(a6, *(v8 + 22));
    sprintf_ACC(a6, *(v8 + 23));
    sprintf_ACC(a6, *(v8 + 24));
    sprintf_ACC(a6, *(v8 + 25));
    sprintf_ACC(a6, *(v8 + 26));
    sprintf_gR8(a6, *(v8 + 27));
    sprintf_ACC(a6, *(v8 + 28));
    sprintf_ACC(a6, *(v8 + 29));
    sprintf_ACC(a6, *(v8 + 30));
    sprintf_gR8(a6, *(v8 + 31));
    v52 = *a6;
    v53 = 32;
    v54 = 1u;
    do
    {
      *a6 = v52 + 1;
      *v52 = v53;
      v52 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v52 = *(a6 + 16);
        *a6 = v52;
      }

      v53 = aBiasVar[v54++];
    }

    while (v54 != 11);
    sprintf_sgR8(a6, v217[0]);
    sprintf_sgR8(a6, v217[2]);
    sprintf_sgR8(a6, v217[5]);
    sprintf_sgR8(a6, v217[9]);
    v55 = *a6;
    v56 = 32;
    v57 = 1u;
    do
    {
      *a6 = v55 + 1;
      *v55 = v56;
      v55 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v55 = *(a6 + 16);
        *a6 = v55;
      }

      v56 = aTimeSlewMs[v57++];
    }

    while (v57 != 15);
    sprintf_3d(a6, v8[6]);
    v58 = 0;
    v59 = *a6;
    v60 = 32;
    do
    {
      *a6 = v59 + 1;
      *v59 = v60;
      v59 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v59 = *(a6 + 16);
        *a6 = v59;
      }

      v60 = aAs[++v58];
    }

    while (v58 != 4);
    sprintf_3d(a6, *(v213 + 2127104));
    v61 = 0;
    v62 = *a6;
    v63 = 32;
    do
    {
      *a6 = v62 + 1;
      *v62 = v63;
      v62 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v62 = *(a6 + 16);
        *a6 = v62;
      }

      v63 = asc_29976B20A[++v61];
    }

    while (v61 != 2);
    sprintf_gR8(a6, *(v8 + 101));
    v64 = (*a6)++;
    *v64 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_gR8(a6, *(v8 + 102));
    v65 = (*a6)++;
    *v65 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_gR8(a6, *(v8 + 103));
    v67 = (*a6)++;
    *v67 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    LOBYTE(v66) = *(v8 + 1200);
    sprintf_gR8(a6, v66);
    v68 = (*a6)++;
    *v68 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_gR8(a6, *(v8 + 10));
    v69 = (*a6)++;
    *v69 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_gR8(a6, *(v8 + 11));
    v70 = (*a6)++;
    *v70 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    v71 = 4;
    do
    {
      sprintf_gR8(a6, 0.0);
      v73 = (*a6)++;
      *v73 = 32;
      if (*a6 >= *(a6 + 24))
      {
        *a6 = *(a6 + 16);
      }

      --v71;
    }

    while (v71);
    LOBYTE(v72) = *(v8 + 1201);
    sprintf_gR8(a6, v72);
    v74 = (*a6)++;
    *v74 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_3d(a6, v8[301]);
    v75 = (*a6)++;
    *v75 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_gR8(a6, 0.0);
    v76 = (*a6)++;
    *v76 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_gR8(a6, 0.0);
    v77 = (*a6)++;
    *v77 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_gR8(a6, 1.0);
    v78 = (*a6)++;
    *v78 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_2d(a6, *(v8 + 784));
    v79 = (*a6)++;
    *v79 = 32;
    v80 = *a6;
    if (*a6 >= *(a6 + 24))
    {
      v80 = *(a6 + 16);
    }

    *a6 = v80 + 1;
    *v80 = 10;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    LCD_SA_Debug_Ctl(a6);
    v81 = *a6;
    v82 = 76;
    v83 = 1u;
    do
    {
      *a6 = v81 + 1;
      *v81 = v82;
      v81 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v81 = *(a6 + 16);
        *a6 = v81;
      }

      v82 = aLcdGBgto[v83++];
    }

    while (v83 != 14);
    sprintf_2d(a6, *(v8 + 32));
    sprintf_gR8(a6, *(v8 + 5));
    sprintf_gR8(a6, *(v8 + 6));
    sprintf_2d(a6, *(v8 + 56));
    sprintf_gR8(a6, *(v8 + 8));
    sprintf_gR8(a6, *(v8 + 9));
    v84 = (*a6)++;
    *v84 = 10;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    for (i = 0; i != 48; ++i)
    {
      v86 = &v8[36 * i + 302];
      if (Is_Legal(*v86))
      {
        v87 = v86[7];
        v88 = v86[8];
        v89 = v86[9];
        v90 = *(v213 + 2127104);
        v91 = 76;
        v92 = 1u;
        v93 = *a6;
        do
        {
          *a6 = v93 + 1;
          *v93 = v91;
          v93 = *a6;
          if (*a6 >= *(a6 + 24))
          {
            v93 = *(a6 + 16);
            *a6 = v93;
          }

          v91 = aLcdSvmeas[v92++];
        }

        while (v92 != 14);
        v94 = *v86;
        if (v94 >= 7)
        {
          v95 = 42;
        }

        else
        {
          v95 = 0x53514245524758uLL >> (8 * v94);
        }

        *a6 = v93 + 1;
        *v93 = v95;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        v96 = v87 + v90 * 299792.458;
        sprintf_4d(a6, *(v86 + 2));
        sprintf_14f3(a6, v96);
        sprintf_14f3(a6, v88 / 0.190293673);
        v97 = 0;
        v98 = *a6;
        v99 = 32;
        do
        {
          *a6 = v98 + 1;
          *v98 = v99;
          v98 = *a6;
          if (*a6 >= *(a6 + 24))
          {
            v98 = *(a6 + 16);
            *a6 = v98;
          }

          v99 = asc_2997C321C[++v97];
        }

        while (v97 != 4);
        sprintf_gR8(a6, v89);
        v100 = 0;
        v101 = *a6;
        v102 = 32;
        do
        {
          *a6 = v101 + 1;
          *v101 = v102;
          v101 = *a6;
          if (*a6 >= *(a6 + 24))
          {
            v101 = *(a6 + 16);
            *a6 = v101;
          }

          v102 = asc_2997C321C[++v100];
        }

        while (v100 != 4);
        sprintf_14f3(a6, v86[10]);
        sprintf_14f3(a6, v86[11]);
        sprintf_gR8(a6, v86[12]);
        sprintf_3d(a6, *(v86 + 136));
        v103 = (*a6)++;
        *v103 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_3d(a6, *(v86 + 137));
        v104 = (*a6)++;
        *v104 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_3d(a6, *(v86 + 138));
        v105 = (*a6)++;
        *v105 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_3d(a6, v86[16]);
        v106 = (*a6)++;
        *v106 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_3d(a6, v86[15]);
        v107 = (*a6)++;
        *v107 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_14f3(a6, v86[1]);
        v108 = (*a6)++;
        *v108 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_14f3(a6, v86[2]);
        v109 = (*a6)++;
        *v109 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_14f3(a6, v86[3]);
        v110 = (*a6)++;
        *v110 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_14f3(a6, v86[4]);
        v111 = (*a6)++;
        *v111 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_14f3(a6, v86[5]);
        v112 = (*a6)++;
        *v112 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_14f3(a6, v86[6]);
        v113 = (*a6)++;
        *v113 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_gR8(a6, 0.0);
        v114 = (*a6)++;
        *v114 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_gR8(a6, 0.0);
        sprintf_2d(a6, *(v86 + 104));
        v115 = (*a6)++;
        *v115 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_2d(a6, *(v86 + 105));
        v116 = (*a6)++;
        *v116 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_2d(a6, *(v86 + 106));
        v117 = (*a6)++;
        *v117 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_2d(a6, *(v86 + 110));
        v118 = (*a6)++;
        *v118 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_2d(a6, *(v86 + 111));
        v119 = (*a6)++;
        *v119 = 32;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }

        sprintf_2d(a6, *(v86 + 112));
        v120 = (*a6)++;
        *v120 = 32;
        v121 = *a6;
        if (*a6 >= *(a6 + 24))
        {
          v121 = *(a6 + 16);
        }

        v122 = *(v86 + 107);
        if (v122)
        {
          *a6 = v121 + 1;
          *v121 = v122;
          v121 = *a6;
          if (*a6 >= *(a6 + 24))
          {
            v121 = *(a6 + 16);
          }
        }

        else
        {
          strcpy(v223, " 0");
          LOBYTE(v123) = 32;
          v124 = 1;
          do
          {
            *a6 = v121 + 1;
            *v121 = v123;
            v121 = *a6;
            if (*a6 >= *(a6 + 24))
            {
              v121 = *(a6 + 16);
              *a6 = v121;
            }

            v123 = *(v223 + v124++);
          }

          while (v123);
        }

        *a6 = v121 + 1;
        *v121 = 32;
        v125 = *a6;
        if (*a6 >= *(a6 + 24))
        {
          v125 = *(a6 + 16);
        }

        v126 = *(v86 + 108);
        if (v126)
        {
          *a6 = v125 + 1;
          *v125 = v126;
          v125 = *a6;
          if (*a6 >= *(a6 + 24))
          {
            v125 = *(a6 + 16);
          }
        }

        else
        {
          strcpy(v223, " 0");
          LOBYTE(v127) = 32;
          v128 = 1;
          do
          {
            *a6 = v125 + 1;
            *v125 = v127;
            v125 = *a6;
            if (*a6 >= *(a6 + 24))
            {
              v125 = *(a6 + 16);
              *a6 = v125;
            }

            v127 = *(v223 + v128++);
          }

          while (v127);
        }

        v129 = *(v86 + 109);
        if (v129)
        {
          *a6 = v125 + 1;
          *v125 = v129;
          v125 = *a6;
          if (*a6 >= *(a6 + 24))
          {
            v125 = *(a6 + 16);
          }
        }

        else
        {
          strcpy(v223, " 0");
          LOBYTE(v130) = 32;
          v131 = 1;
          do
          {
            *a6 = v125 + 1;
            *v125 = v130;
            v125 = *a6;
            if (*a6 >= *(a6 + 24))
            {
              v125 = *(a6 + 16);
              *a6 = v125;
            }

            v130 = *(v223 + v131++);
          }

          while (v130);
        }

        *a6 = v125 + 1;
        *v125 = 32;
        v132 = *a6;
        if (*a6 >= *(a6 + 24))
        {
          v132 = *(a6 + 16);
        }

        for (j = 0; j != 20; ++j)
        {
          strcpy(v223, "    0");
          LOBYTE(v134) = 32;
          v135 = 1;
          do
          {
            *a6 = v132 + 1;
            *v132 = v134;
            v132 = *a6;
            if (*a6 >= *(a6 + 24))
            {
              v132 = *(a6 + 16);
              *a6 = v132;
            }

            v134 = *(v223 + v135++);
          }

          while (v134);
          *a6 = v132 + 1;
          *v132 = 32;
          v132 = *a6;
          if (*a6 >= *(a6 + 24))
          {
            v132 = *(a6 + 16);
            *a6 = v132;
          }
        }

        v136 = 32;
        v137 = 1u;
        do
        {
          *a6 = v132 + 1;
          *v132 = v136;
          v132 = *a6;
          if (*a6 >= *(a6 + 24))
          {
            v132 = *(a6 + 16);
            *a6 = v132;
          }

          v136 = aSlewedPr[v137++];
        }

        while (v137 != 12);
        sprintf_14f3(a6, v87);
        v138 = (*a6)++;
        *v138 = 10;
        if (*a6 >= *(a6 + 24))
        {
          *a6 = *(a6 + 16);
        }
      }

      LCD_SA_Debug_Ctl(a6);
    }

    v139 = *a6;
    v140 = 76;
    v141 = 1u;
    do
    {
      *a6 = v139 + 1;
      *v139 = v140;
      v139 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v139 = *(a6 + 16);
        *a6 = v139;
      }

      v140 = aLcdEpoch[v141++];
    }

    while (v141 != 11);
    v142 = v8[1];
    *a6 = v139 + 1;
    *v139 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_10u(a6, v142);
    sprintf_12f3(a6, *(v8 + 1));
    v143 = (*a6)++;
    *v143 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    v223[0] = 0;
    *v215 = 0;
    *v216 = 0;
    *v214 = 0;
    GPS_To_UTC_Time(v216, &v216[1], v223, &v215[1], v215, &v214[1], v214, *(v8 + 11), *(v8 + 1), *(v8 + 99));
    sprintf_02d(a6, v215[1]);
    sprintf_02d(a6, v215[0]);
    sprintf_02d(a6, v214[1]);
    v144 = (*a6)++;
    *v144 = 46;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_03d(a6, v214[0]);
    v145 = (*a6)++;
    *v145 = 44;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_02d(a6, v223[0]);
    sprintf_02d(a6, v216[1]);
    sprintf_02d(a6, v216[0] - 2000);
    v146 = (*a6)++;
    *v146 = 32;
    v147 = *a6;
    if (*a6 >= *(a6 + 24))
    {
      v147 = *(a6 + 16);
    }

    v148 = *v8;
    *a6 = v147 + 1;
    *v147 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_10d(a6, v148);
    v149 = (*a6)++;
    *v149 = 10;
    v150 = *a6;
    if (*a6 >= *(a6 + 24))
    {
      v150 = *(a6 + 16);
    }

    v151 = 76;
    v152 = 1u;
    do
    {
      *a6 = v150 + 1;
      *v150 = v151;
      v150 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v150 = *(a6 + 16);
        *a6 = v150;
      }

      v151 = aLcdLsq[v152++];
    }

    while (v152 != 12);
    v153 = 0;
    v154 = v8 + 208;
    v155 = 1;
    do
    {
      v156 = v155;
      v157 = *&v154[2 * v153] * 57.2957795;
      v158 = -v157;
      if (v157 >= 0.0)
      {
        v158 = *&v154[2 * v153] * 57.2957795;
      }

      v159 = v158;
      v160 = (v158 - v159) * 60.0;
      v161 = v160;
      v162 = (v160 - v161) * 60.0;
      sprintf_4d(a6, v159);
      sprintf_3d(a6, v161);
      if (v162 * 100000.0 <= 0.0)
      {
        v163 = -0.5;
      }

      else
      {
        v163 = 0.5;
      }

      v164 = v162 * 100000.0 + v163;
      if (v164 <= 2147483650.0)
      {
        if (v164 >= -2147483650.0)
        {
          v165 = v164;
        }

        else
        {
          v165 = 0x80000000;
        }
      }

      else
      {
        v165 = 0x7FFFFFFFLL;
      }

      sprintf_8f(a6, v165, 6);
      v166 = &ch_NSEW + 8 * v153;
      if (*&v154[2 * v153] < 0.0)
      {
        v166 += 4;
      }

      v167 = *v166;
      if (*v166)
      {
        v168 = *a6;
        v169 = v166 + 1;
        do
        {
          *a6 = v168 + 1;
          *v168 = v167;
          v168 = *a6;
          if (*a6 >= *(a6 + 24))
          {
            v168 = *(a6 + 16);
            *a6 = v168;
          }

          v170 = *v169++;
          v167 = v170;
        }

        while (v170);
      }

      v155 = 0;
      v153 = 1;
    }

    while ((v156 & 1) != 0);
    sprintf_13f3(a6, *(v8 + 106));
    sprintf_gR8(a6, *(v8 + 100));
    v171 = *a6;
    v172 = 32;
    v173 = 1u;
    do
    {
      *a6 = v171 + 1;
      *v171 = v172;
      v171 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v171 = *(a6 + 16);
        *a6 = v171;
      }

      v172 = aLsqVel[v173++];
    }

    while (v173 != 10);
    sprintf_sgR8(a6, *(v8 + 107));
    sprintf_sgR8(a6, *(v8 + 108));
    sprintf_sgR8(a6, *(v8 + 109));
    v174 = *a6;
    v175 = 32;
    v176 = 1u;
    do
    {
      *a6 = v174 + 1;
      *v174 = v175;
      v174 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v174 = *(a6 + 16);
        *a6 = v174;
      }

      v175 = aLsqClkbGpsGloB[v176++];
    }

    while (v176 != 24);
    sprintf_sgR8(a6, *(v8 + 110));
    sprintf_sgR8(a6, *(v8 + 111));
    sprintf_sgR8(a6, *(v8 + 112));
    v177 = 0;
    v178 = *a6;
    v179 = 32;
    do
    {
      *a6 = v178 + 1;
      *v178 = v179;
      v178 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v178 = *(a6 + 16);
        *a6 = v178;
      }

      v179 = aLsqDt[++v177];
    }

    while (v177 != 8);
    sprintf_sgR8(a6, *(v8 + 113));
    v180 = 0;
    v181 = *a6;
    v182 = 32;
    do
    {
      *a6 = v181 + 1;
      *v181 = v182;
      v181 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v181 = *(a6 + 16);
        *a6 = v181;
      }

      v182 = aNumUsedPrDo[++v180];
    }

    while (v180 != 16);
    sprintf_02d(a6, *(v8 + 912));
    v183 = (*a6)++;
    *v183 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_02d(a6, *(v8 + 913));
    v184 = *a6;
    v185 = 32;
    v186 = 1u;
    do
    {
      *a6 = v184 + 1;
      *v184 = v185;
      v184 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v184 = *(a6 + 16);
        *a6 = v184;
      }

      v185 = aAccPos[v186++];
    }

    while (v186 != 10);
    for (k = 0; k != 14; k += 2)
    {
      sprintf_ACC(a6, *&v8[k + 230]);
      v188 = (*a6)++;
      *v188 = 32;
      v189 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v189 = *(a6 + 16);
        *a6 = v189;
      }
    }

    v190 = 32;
    v191 = 1u;
    do
    {
      *a6 = v189 + 1;
      *v189 = v190;
      v189 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v189 = *(a6 + 16);
        *a6 = v189;
      }

      v190 = aAccVel[v191++];
    }

    while (v191 != 10);
    for (m = 0; m != 8; m += 2)
    {
      sprintf_ACC(a6, *&v8[m + 244]);
      v193 = (*a6)++;
      *v193 = 32;
      v194 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v194 = *(a6 + 16);
        *a6 = v194;
      }
    }

    v195 = 32;
    v196 = 1u;
    do
    {
      *a6 = v194 + 1;
      *v194 = v195;
      v194 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v194 = *(a6 + 16);
        *a6 = v194;
      }

      v195 = aArpPos[v196++];
    }

    while (v196 != 10);
    sprintf_02d(a6, *(v8 + 1008));
    v197 = (*a6)++;
    *v197 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_02d(a6, *(v8 + 1009));
    v198 = (*a6)++;
    *v198 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_02d(a6, *(v8 + 1010));
    v199 = (*a6)++;
    *v199 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_02d(a6, *(v8 + 1011));
    v200 = (*a6)++;
    *v200 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_sgR8(a6, *(v8 + 127));
    sprintf_sgR8(a6, *(v8 + 128));
    sprintf_sgR8(a6, *(v8 + 129));
    sprintf_sgR8(a6, *(v8 + 130));
    sprintf_sgR8(a6, *(v8 + 131));
    sprintf_sgR8(a6, *(v8 + 132));
    sprintf_sgR8(a6, *(v8 + 133));
    sprintf_sgR8(a6, *(v8 + 134));
    sprintf_2d(a6, *(v8 + 1080));
    v201 = (*a6)++;
    *v201 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_sgR8(a6, *(v8 + 136));
    v202 = (*a6)++;
    *v202 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_2d(a6, *(v8 + 1096));
    v203 = *a6;
    v204 = 32;
    v205 = 1u;
    do
    {
      *a6 = v203 + 1;
      *v203 = v204;
      v203 = *a6;
      if (*a6 >= *(a6 + 24))
      {
        v203 = *(a6 + 16);
        *a6 = v203;
      }

      v204 = aArpVel[v205++];
    }

    while (v205 != 10);
    sprintf_02d(a6, *(v8 + 1104));
    v206 = (*a6)++;
    *v206 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_02d(a6, *(v8 + 1105));
    v207 = (*a6)++;
    *v207 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_02d(a6, *(v8 + 1106));
    v208 = (*a6)++;
    *v208 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_02d(a6, *(v8 + 1107));
    v209 = (*a6)++;
    *v209 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_sgR8(a6, *(v8 + 139));
    sprintf_sgR8(a6, *(v8 + 140));
    sprintf_sgR8(a6, *(v8 + 141));
    sprintf_sgR8(a6, *(v8 + 142));
    sprintf_sgR8(a6, *(v8 + 143));
    sprintf_sgR8(a6, *(v8 + 144));
    sprintf_sgR8(a6, *(v8 + 145));
    sprintf_sgR8(a6, *(v8 + 146));
    sprintf_2d(a6, *(v8 + 1176));
    v210 = (*a6)++;
    *v210 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_sgR8(a6, *(v8 + 148));
    v211 = (*a6)++;
    *v211 = 32;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    sprintf_2d(a6, *(v8 + 1192));
    v212 = (*a6)++;
    *v212 = 10;
    if (*a6 >= *(a6 + 24))
    {
      *a6 = *(a6 + 16);
    }

    return LCD_SA_Debug_Ctl(a6);
  }

  return result;
}

uint64_t Get_UTC_Leap_Second_For_GLON_Day_4yrBlk(int a1, int a2, double a3)
{
  if (a3 + -10800.0 < 0.0)
  {
    v3 = a2 < 2;
    if (a2 >= 2)
    {
      --a2;
    }

    else
    {
      a2 = 1461;
    }

    a1 -= v3;
  }

  v4 = a2 + 1461 * a1;
  v5 = &byte_299761B32;
  v6 = 8;
  while (v4 < *(v5 - 1) + 1461 * *(v5 - 4) || v4 >= *(v5 + 5) + 1461 * v5[8])
  {
    v5 += 12;
    if (!--v6)
    {
      return -99;
    }
  }

  return *v5;
}

uint64_t U4sqrt(unsigned int a1)
{
  v1 = (((a1 & 0xC0000000) != 0) << 15) | 0x4000;
  if (v1 * v1 <= a1)
  {
    v2 = (((a1 & 0xC0000000) != 0) << 15) | 0x4000;
  }

  else
  {
    v2 = ((a1 & 0xC0000000) != 0) << 15;
  }

  if ((v2 | 0x2000) * (v2 | 0x2000) <= a1)
  {
    v2 |= 0x2000u;
  }

  if ((v2 | 0x1000) * (v2 | 0x1000) <= a1)
  {
    v2 |= 0x1000u;
  }

  if ((v2 + 2048) * (v2 + 2048) <= a1)
  {
    v2 += 2048;
  }

  if ((v2 + 1024) * (v2 + 1024) <= a1)
  {
    v2 += 1024;
  }

  if ((v2 + 512) * (v2 + 512) <= a1)
  {
    v2 += 512;
  }

  if ((v2 + 256) * (v2 + 256) <= a1)
  {
    v2 += 256;
  }

  if ((v2 + 128) * (v2 + 128) <= a1)
  {
    v2 += 128;
  }

  if ((v2 + 64) * (v2 + 64) <= a1)
  {
    v2 += 64;
  }

  if ((v2 + 32) * (v2 + 32) <= a1)
  {
    v2 += 32;
  }

  if ((v2 + 16) * (v2 + 16) <= a1)
  {
    v2 += 16;
  }

  if ((v2 + 8) * (v2 + 8) <= a1)
  {
    v2 += 8;
  }

  if ((v2 + 4) * (v2 + 4) <= a1)
  {
    v2 += 4;
  }

  if ((v2 + 2) * (v2 + 2) <= a1)
  {
    v2 += 2;
  }

  if ((v2 + 1) * (v2 + 1) > a1)
  {
    return v2;
  }

  else
  {
    return v2 + 1;
  }
}

__n128 skewSimMat(uint64_t a1, int *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v5[0] = 0x300000003;
  v5[1] = 0;
  v2 = *(a1 + 24);
  *&v5[2] = -v2;
  *&v5[4] = v2;
  v5[5] = 0;
  v3 = *(a1 + 8);
  v5[3] = *(a1 + 16);
  v6 = vnegq_f64(v3);
  v7 = v3.f64[0];
  v8 = 0;
  Copy_Mat(9, v5, 9, a2);
  return result;
}

void CreateC_e_n(uint64_t a1, int *a2)
{
  v6[10] = *MEMORY[0x29EDCA608];
  v4 = __sincos_stret(*(a1 + 16));
  v5 = __sincos_stret(*(a1 + 8));
  v6[0] = 0x300000003;
  *&v6[1] = -(v4.__sinval * v5.__cosval);
  *&v6[2] = -(v4.__sinval * v5.__sinval);
  v6[3] = *&v4.__cosval;
  *&v6[4] = -v5.__sinval;
  v6[5] = *&v5.__cosval;
  v6[6] = 0;
  *&v6[7] = -(v4.__cosval * v5.__cosval);
  *&v6[8] = -(v4.__cosval * v5.__sinval);
  *&v6[9] = -v4.__sinval;
  Copy_Mat(9, v6, 9, a2);
}

double CreateG_0(uint64_t a1)
{
  v1 = sin(*(a1 + 16));
  v2 = v1 * v1;
  v3 = v1 * v1 * -0.00669437999 + 1.0;
  if (v3 < 0.0)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "CreateG_0", 122, v4, v5, v2 * -0.00669437999 + 1.0);
    }

    g_FPE_AssertFlag = 1;
    v3 = 1.0;
  }

  v6 = sqrt(v3);
  if (fabs(v6) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "CreateG_0", 124, v7, v8, v6, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v6 = 1.0;
  }

  return (v2 * 0.001931853 + 1.0) * 9.78032534 / v6;
}

const char *extractOfromC_b_n(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 4);
  v5 = *(a1 + 8 + 8 * ((2 * v4) | 1u));
  v6 = *(a1 + 8 + 8 * (2 * v4 + 2));
  v7 = *(a1 + 8 + 8 * (2 * v4));
  if (fabs(v7) > 1.0)
  {
    if (g_FPE_LogSeverity)
    {
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to asin number %f that is abs larger than 1.0", "extractOfromC_b_n", 162, v9, v10, v7);
      v4 = *(a1 + 4);
    }

    g_FPE_AssertFlag = 1;
    v7 = 1.0;
  }

  v11 = atan2(v5, v6);
  v12 = asin(v7);
  v13 = atan2(v3[v4], *v3);

  return VecSet_3x1(3, a2, v11, -v12, v13);
}

const char *extractOfromC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8 + 8 * (v4 + 2));
  v6 = *(a1 + 8 + 8 * (2 * v4 + 2));
  v7 = *(a1 + 24);
  if (fabs(v7) > 1.0)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to asin number %f that is abs larger than 1.0", "extractOfromC", 182, v8, v9, v7);
    }

    g_FPE_AssertFlag = 1;
    v7 = 1.0;
  }

  v10 = atan2(v5, v6);
  v11 = asin(v7);
  v12 = atan2(*(a1 + 16), *(a1 + 8));

  return VecSet_3x1(3, a2, v10, -v11, v12);
}

void CreateC_b_n(double *a1, int *a2)
{
  v7[10] = *MEMORY[0x29EDCA608];
  v4 = __sincos_stret(a1[1]);
  v5 = __sincos_stret(a1[2]);
  v6 = __sincos_stret(a1[3]);
  v7[0] = 0x300000003;
  *&v7[1] = v5.__cosval * v6.__cosval;
  *&v7[2] = v4.__sinval * v5.__sinval * v6.__cosval - v4.__cosval * v6.__sinval;
  *&v7[3] = v4.__cosval * v5.__sinval * v6.__cosval + v4.__sinval * v6.__sinval;
  *&v7[4] = v5.__cosval * v6.__sinval;
  *&v7[5] = v4.__sinval * v5.__sinval * v6.__sinval + v4.__cosval * v6.__cosval;
  *&v7[6] = v4.__cosval * v5.__sinval * v6.__sinval - v4.__sinval * v6.__cosval;
  *&v7[7] = -v5.__sinval;
  *&v7[8] = v4.__sinval * v5.__cosval;
  *&v7[9] = v4.__cosval * v5.__cosval;
  Copy_Mat(9, v7, 9, a2);
}

double InsUtil_ECEF2Geo_Iterative(double *a1, uint64_t a2, double a3)
{
  v3 = a3;
  v4 = 0;
  v5 = a1[3];
  v29 = a1[1];
  v30 = a1[2];
  v6 = sqrt(v30 * v30 + v29 * v29);
  do
  {
    v32 = v4;
    v7 = v3;
    v8 = 1.57079633;
    v9 = v3 * 0.99330562 - v3;
    v10 = 0.0;
    v11 = -1;
    do
    {
      v12 = v6 + v9 * cos(v10);
      if (fabs(v12) <= 1.0e-30)
      {
        if (g_FPE_LogSeverity)
        {
          v13 = mach_continuous_time();
          if (g_TCU)
          {
            v14 = *(g_TCU + 8);
          }

          else
          {
            v14 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "InsUtil_ECEF2Geo_Iterative", 289, (*&g_MacClockTicksToMsRelation * v13), v14, v12, 1.0e-30);
        }

        g_FPE_AssertFlag = 1;
        v12 = 1.0;
      }

      ++v11;
      v10 = atan(v5 / v12);
      v15 = v10 - v8;
      if (v10 - v8 < 0.0)
      {
        v15 = -v15;
      }

      v16 = v15 < 1.0e-13 || v11 >= 0xE;
      v8 = v10;
    }

    while (!v16);
    ++v4;
    v3 = calcRe(v10);
    v17 = v7 - v3;
    if (v7 - v3 < 0.0)
    {
      v17 = -v17;
    }
  }

  while (v17 >= 1.0e-13 && v32 < 0xB);
  v19 = atan2(v30, v29);
  v20 = cos(v10);
  if (fabs(v20) <= 1.0e-30)
  {
    v21 = v32;
    if (g_FPE_LogSeverity)
    {
      v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v23 = *(g_TCU + 8);
      }

      else
      {
        v23 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "InsUtil_ECEF2Geo_Iterative", 317, v22, v23, v20, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v20 = 1.0;
  }

  else
  {
    v21 = v32;
  }

  VecSet_3x1(3, a2, v19, v10, v6 / v20 - v7);
  if ((v21 > 0xA || v11 >= 0xE) && (g_FPE_LogSeverity & 4) != 0)
  {
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v25 = *(g_TCU + 8);
    }

    else
    {
      v25 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Exit due to loop limit k1,k2 = %d,%d when running with args: [pOut,Ro]=ECEF2Geo([%f %f %f],%f)", "InsUtil_ECEF2Geo_Iterative", 327, v24, v25, v4, v11 + 1, a1[1], a1[2], a1[3], a3);
  }

  return v3;
}

double calcRe(long double a1)
{
  v1 = sin(a1);
  v2 = v1 * v1 * -0.00669437999 + 1.0;
  if (v2 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v4 = *(g_TCU + 8);
      }

      else
      {
        v4 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "calcRe", 588, v3, v4, v2);
    }

    g_FPE_AssertFlag = 1;
    v2 = 1.0;
  }

  v5 = sqrt(v2);
  if (fabs(v5) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
    {
      v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v7 = *(g_TCU + 8);
      }

      else
      {
        v7 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "calcRe", 590, v6, v7, v5, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v5 = 1.0;
  }

  return 6378137.0 / v5;
}

const char *InsUtil_Geo2ECEF_Iterative(double *a1, uint64_t a2)
{
  v3 = a1[1] * 0.0174532925;
  v4 = a1[2] * 0.0174532925;
  v5 = a1[3];
  v6 = calcRe(v3);
  v7 = __sincos_stret(v3);
  v8 = __sincos_stret(v4);

  return VecSet_3x1(3, a2, v8.__cosval * (v7.__cosval * (v5 + v6)), v8.__sinval * (v7.__cosval * (v5 + v6)), v7.__sinval * (v5 + v6 * 0.99330562));
}

void createC_e_map(int *a1, int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v19 = *MEMORY[0x29EDCA608];
  memset(v18, 0, sizeof(v18));
  if (a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = v18;
  }

  Sub_Mat(3, a2, 3, a1, 3, v5);
  v6 = Norma_Vec(3, v5);
  if (fabs(v6) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "createC_e_map", 391, v7, v8, v6, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v6 = 1.0;
  }

  memset(v17, 0, sizeof(v17));
  Mult_Mat_scalar(1.0 / v6, 3, v5, 3, v17);
  memset(v16, 0, sizeof(v16));
  Mult_Mat_Mat(9);
  v9 = Norma_Vec(9, v16);
  if (fabs(v9) <= 1.0e-30)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "createC_e_map", 402, v10, v11, v9, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v9 = 1.0;
  }

  Mult_Mat_scalar(1.0 / v9, 9, v16, 9, v16);
  v14 = 0u;
  v15 = 0u;
  Set_Mat_Const(3, 1u, 3, &v14, 0.0);
  *(&v15 + 1) = 0x3FF0000000000000;
  memset(v13, 0, sizeof(v13));
  Cross_Vec_Vec(9, v16, 3, &v14, 3, v13);
  Mult_Mat_scalar(-1.0, 3, v13, 3, v13);
  memset(v12, 0, sizeof(v12));
  Set_Mat_Size(9, v12, 3, 3);
  Copy_SubMat_to_Mat(1.0, 9, v16, 0, 0, 9, v12);
  Copy_SubMat_to_Mat(1.0, 3, v13, 0, 1, 9, v12);
  Copy_SubMat_to_Mat(1.0, 3, &v14, 0, 2, 9, v12);
  Transpose_Mat(9);
  Mult_Mat_Mat(9);
}

const char *calcElipseParams(double *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, double *a6, uint64_t a7, int *a8)
{
  v31 = *MEMORY[0x29EDCA608];
  InsUtil_ECEF2Geo_Iterative(a1, a4, 6378137.0);
  CreateC_e_n(a4, a8);
  Mult_Mat_Mat(9);
  Mult_Mat_MatT(9);
  memset(v30, 0, sizeof(v30));
  Transpose_Mat(9);
  Add_Mat(9, a3, 9, v30, 9, a3);
  Mult_Mat_scalar(0.5, 9, a3, 9, a3);
  memset(v29, 0, sizeof(v29));
  Copy_Mat(9, a3, 9, v29);
  Copy_SubMat_from_Mat(1.0, 9, a3, 0, 0, 2, 2, 9, v29);
  memset(v28, 0, sizeof(v28));
  Eig2x2(9, v29, 9, a7, 9, v28);
  v14 = *(v28 + (DWORD1(v28[0]) + 1) + 1);
  if (v14 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "calcElipseParams", 463, v15, v16, v14);
    }

    g_FPE_AssertFlag = 1;
    v14 = 1.0;
  }

  v17 = *(v28 + 1);
  if (*(v28 + 1) < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v19 = *(g_TCU + 8);
      }

      else
      {
        v19 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "calcElipseParams", 466, v18, v19, v17);
    }

    g_FPE_AssertFlag = 1;
    v17 = 1.0;
  }

  v20 = *&a3[2 * (2 * a3[1] + 2) + 2];
  if (v20 < 0.0)
  {
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "calcElipseParams", 469, v21, v22, v20);
    }

    g_FPE_AssertFlag = 1;
    v20 = 1.0;
  }

  v23 = sqrt(v17);
  *a6 = sqrt(v20);
  v24 = sqrt(v14);
  v25 = atan2(*(a7 + 8 + 8 * *(a7 + 4)), *(a7 + 8));
  if (v25 < 0.0)
  {
    v25 = v25 + 3.14159265;
  }

  v26 = v25 * 57.2957795;
  result = Set_Mat_Size(3, a5, 1, 3);
  *(a5 + 8) = v23;
  *(a5 + 16) = v24;
  *(a5 + 24) = v26;
  return result;
}

const char *InsUtil_mat2quat(uint64_t a1, uint64_t a2)
{
  result = Set_Mat_Const(4, 1u, 6, a2, 0.0);
  v5 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(a1 + 4);
  v8 = *(a1 + 8 + 8 * (v7 + 1));
  v9 = 2 * v7;
  v10 = *(a1 + 8 + 8 * (2 * v7 + 2));
  v11 = v6 + 1.0 + v8 + v10;
  if (v11 > 0.1)
  {
    v12 = sqrt(v11) * 0.5;
    *(a2 + 8) = v12;
    v13 = v12 * 4.0;
    *(a2 + 16) = (*(v5 + 8 * (v7 + 2)) - *(v5 + 8 * (v9 | 1))) / v13;
    *(a2 + 24) = (*(v5 + 8 * v9) - *(a1 + 24)) / v13;
    v14 = *(a1 + 16) - *(v5 + 8 * v7);
LABEL_8:
    *(a2 + 32) = v14 / v13;
    return result;
  }

  v15 = v6 + 1.0 - v8 - v10;
  if (v15 > 0.1)
  {
    v16 = sqrt(v15) * 0.5;
    *(a2 + 16) = v16;
    v13 = v16 * 4.0;
    *(a2 + 8) = (*(v5 + 8 * (v7 + 2)) - *(v5 + 8 * (v9 | 1))) / v13;
    *(a2 + 24) = (*(v5 + 8 * v7) + *(a1 + 16)) / v13;
    v17 = *(v5 + 8 * v9);
    v18 = *(a1 + 24);
LABEL_7:
    v14 = v17 + v18;
    goto LABEL_8;
  }

  v19 = 1.0 - v6;
  v20 = v19 + v8 - v10;
  if (v20 > 0.1)
  {
    v21 = sqrt(v20) * 0.5;
    *(a2 + 24) = v21;
    v13 = v21 * 4.0;
    *(a2 + 8) = -(*(a1 + 24) - *(v5 + 8 * v9)) / v13;
    *(a2 + 16) = (*(a1 + 16) + *(v5 + 8 * v7)) / v13;
    v17 = *(v5 + 8 * (v7 + 2));
    v18 = *(v5 + 8 * (v9 | 1));
    goto LABEL_7;
  }

  v22 = v19 - v8 + v10;
  if (v22 <= 0.1)
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

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f not a stable rotation matrix", "InsUtil_mat2quat", 542, v25, v26);
    }

    g_FPE_AssertFlag = 1;
  }

  else
  {
    v23 = sqrt(v22) * 0.5;
    *(a2 + 32) = v23;
    v24 = v23 * 4.0;
    *(a2 + 8) = -(*(v5 + 8 * v7) - *(a1 + 16)) / v24;
    *(a2 + 16) = (*(a1 + 24) + *(v5 + 8 * v9)) / v24;
    *(a2 + 24) = (*(v5 + 8 * (v7 + 2)) + *(v5 + 8 * (v9 | 1))) / v24;
  }

  return result;
}

double InsUtil_quat2mat(double *a1, int *a2)
{
  v2 = a2;
  Set_Mat_Const(3, 3u, 9, a2, 0.0);
  *(v2 + 1) = a1[2] * a1[2] + a1[1] * a1[1] - a1[3] * a1[3] - a1[4] * a1[4];
  v2 += 2;
  v4 = *(v2 - 1);
  *&v2[2 * (v4 + 1)] = a1[1] * a1[1] - a1[2] * a1[2] + a1[3] * a1[3] - a1[4] * a1[4];
  *&v2[2 * (2 * v4 + 2)] = a1[1] * a1[1] - a1[2] * a1[2] - a1[3] * a1[3] + a1[4] * a1[4];
  v5 = a1[4] * a1[1] + a1[2] * a1[3];
  *(v2 + 1) = v5 + v5;
  v6 = a1[2] * a1[3] - a1[4] * a1[1];
  *&v2[2 * v4] = v6 + v6;
  v7 = a1[2] * a1[4] - a1[3] * a1[1];
  *(v2 + 2) = v7 + v7;
  v8 = a1[3] * a1[1] + a1[2] * a1[4];
  *&v2[2 * (2 * v4)] = v8 + v8;
  v9 = a1[2] * a1[1] + a1[3] * a1[4];
  *&v2[2 * (v4 + 2)] = v9 + v9;
  v10 = a1[3] * a1[4] - a1[2] * a1[1];
  result = v10 + v10;
  *&v2[2 * ((2 * v4) | 1)] = result;
  return result;
}

const char *CovMatToVec(uint64_t a1, uint64_t a2, double a3)
{
  result = Set_Mat_Size(6, a2, 6, 1);
  v7 = a1 + 8;
  v8 = *(a1 + 8);
  if (v8 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "CovMatToVec", 642, v9, v10, v8);
    }

    g_FPE_AssertFlag = 1;
    v8 = 1.0;
  }

  v11 = *(a1 + 4);
  v12 = *(v7 + 8 * (v11 + 1));
  if (v12 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v14 = *(g_TCU + 8);
      }

      else
      {
        v14 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "CovMatToVec", 645, v13, v14, v12);
      v11 = *(a1 + 4);
    }

    g_FPE_AssertFlag = 1;
    v12 = 1.0;
  }

  v15 = sqrt(v8);
  v16 = *(v7 + 8 * (2 * v11 + 2));
  v17 = sqrt(v12);
  if (v16 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v19 = *(g_TCU + 8);
      }

      else
      {
        v19 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "CovMatToVec", 648, v18, v19, v16);
    }

    g_FPE_AssertFlag = 1;
    v16 = 1.0;
  }

  v20 = sqrt(v16);
  *(a2 + 8) = v15 * a3;
  *(a2 + 16) = v17 * a3;
  *(a2 + 24) = v20 * a3;
  v21 = v15 * v17;
  if (fabs(v15 * v17) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
    {
      v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v23 = *(g_TCU + 8);
      }

      else
      {
        v23 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "CovMatToVec", 657, v22, v23, v15 * v17, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v21 = 1.0;
  }

  *(a2 + 32) = *(a1 + 16) / v21;
  v24 = v15 * v20;
  if (fabs(v24) <= 1.0e-30)
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

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "CovMatToVec", 660, v25, v26, v24, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v24 = 1.0;
  }

  *(a2 + 40) = *(a1 + 24) / v24;
  v27 = v17 * v20;
  if (fabs(v27) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
    {
      v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v29 = *(g_TCU + 8);
      }

      else
      {
        v29 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "CovMatToVec", 663, v28, v29, v27, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v27 = 1.0;
  }

  *(a2 + 48) = *(v7 + 8 * (*(a1 + 4) + 2)) / v27;
  return result;
}

double distLLA(double *a1, double *a2, double *a3)
{
  v6 = a1[1] * 0.0174532925;
  v7 = a2[1] * 0.0174532925;
  v8 = a2[2] * 0.0174532925 - a1[2] * 0.0174532925;
  v9 = sin((v7 - v6) * 0.5);
  v10 = cos(v6);
  v11 = v10 * cos(v7);
  v12 = sin(v8 * 0.5);
  v13 = v11 * (v12 * v12) + v9 * v9;
  v14 = 1.0 - v13;
  if (v13 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "distLLA", 690, v15, v16, v13);
    }

    g_FPE_AssertFlag = 1;
    v13 = 1.0;
  }

  if (v14 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v18 = *(g_TCU + 8);
      }

      else
      {
        v18 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "distLLA", 691, v17, v18, v14);
    }

    g_FPE_AssertFlag = 1;
    v14 = 1.0;
  }

  v19 = atan2(sqrt(v13), sqrt(v14));
  *a3 = a1[3] - a2[3];
  return (v19 + v19) * 6371008.8;
}

uint64_t asn1PD_IPAddress_ipv4Address(uint64_t a1, void *a2)
{
  Asn1Coder::GetBitStringFromBuffer(a1, 0x20u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  return v3;
}

uint64_t asn1PD_IPAddress_ipv6Address(uint64_t a1, void *a2)
{
  Asn1Coder::GetBitStringFromBuffer(a1, 0x80u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  return v3;
}

uint64_t asn1PE_IPAddress(uint64_t a1, unsigned __int8 *a2)
{
  v4 = Asn1Coder::EncodeInteger(a1, 0, 1, *a2 - 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_3:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v9 = *a2;
  if (v9 == 2)
  {
    v10 = Asn1Coder::EncodeOctetString(a1, 0, 0, 16, a2 + 4, 1, 0);
    v5 = v10;
    if (!v10)
    {
      return v5;
    }

    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    goto LABEL_11;
  }

  if (v9 != 1)
  {
    SuplAsn1Logger::TraceError(0, *(a1 + 8), *(a1 + 12));
    return 0;
  }

  v10 = Asn1Coder::EncodeOctetString(a1, 0, 0, 4, a2 + 1, 1, 0);
  v5 = v10;
  if (v10)
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
LABEL_11:
    SuplAsn1Logger::TraceError(v10, v11, v12);
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_3;
  }

  return v5;
}

uint64_t asn1PD_IPAddress(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = 0;
  v4 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v10);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v9 = v10;
    *a2 = v10 + 1;
    if (v9 == 1)
    {
      v4 = asn1PD_IPAddress_ipv6Address(a1, (a2 + 32));
    }

    else
    {
      if (v9)
      {
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        v5 = 4;
        LODWORD(v4) = 4;
        goto LABEL_3;
      }

      v4 = asn1PD_IPAddress_ipv4Address(a1, (a2 + 8));
    }

    v5 = v4;
    if (!v4)
    {
      return v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

LABEL_3:
  SuplAsn1Logger::TraceError(v4, v6, v7);
  return v5;
}

uint64_t asn1PD_FQDN(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = 0;
  v3 = Asn1Coder::DecodeVisibleStringSubType(a1, 1, 0xFFu, &v6, a2, 0x40u, "-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 0);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_SLPAddress(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
  }

  else
  {
    v7 = Asn1Coder::EncodeInteger(a1, 0, 1, *a2 - 1);
    if (!v7)
    {
      v9 = *a2;
      switch(v9)
      {
        case 1:
          v4 = asn1PE_IPAddress(a1, a2 + 8);
          if (!v4)
          {
            return v4;
          }

          break;
        case 255:
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v4 = 1;
          LODWORD(v7) = 1;
          goto LABEL_5;
        case 2:
          v10 = Asn1Coder::EncodeVisibleStringSubType(a1, 1, 0xFFu, *(a2 + 18) - *(a2 + 16), a2 + 8, 64, "-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 0);
          v4 = v10;
          if (!v10)
          {
            return v4;
          }

          SuplAsn1Logger::TraceError(v10, *(a1 + 8), *(a1 + 12));
          break;
        default:
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v4 = 4;
          LODWORD(v7) = 4;
          goto LABEL_5;
      }

      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      LODWORD(v7) = v4;
      goto LABEL_5;
    }

    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
  }

LABEL_5:
  SuplAsn1Logger::TraceError(v7, v5, v6);
  return v4;
}

uint64_t asn1PD_SLPAddress(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
  }

  else if (BitFromBuffer)
  {
    Asn1Coder::SkipChoiceExtension(a1);
    v5 = v8;
    if (!v8)
    {
      return v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v11 = 0;
    v8 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v11);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      v10 = v11;
      *a2 = v11 + 1;
      if (v10 != 254)
      {
        if (v10 == 1)
        {
          v8 = asn1PD_FQDN(a1, (a2 + 64));
        }

        else
        {
          if (v10)
          {
            v6 = *(a1 + 8);
            v7 = *(a1 + 12);
            v5 = 4;
            LODWORD(v8) = 4;
            goto LABEL_3;
          }

          v8 = asn1PD_IPAddress(a1, a2 + 8);
        }

        v5 = v8;
        if (!v8)
        {
          return v5;
        }

        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        goto LABEL_3;
      }

      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      v5 = 1;
      LODWORD(v8) = 1;
    }
  }

LABEL_3:
  SuplAsn1Logger::TraceError(v8, v6, v7);
  return v5;
}

uint64_t asn1PE_SETId_msisdn(uint64_t a1, void *a2)
{
  v3 = Asn1Coder::EncodeOctetString(a1, 0, 0, 8, a2, 1, 1);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PD_SETId_msisdn(uint64_t a1, void *a2)
{
  Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, a2, 1);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  return v3;
}

uint64_t asn1PE_SETId_mdn(uint64_t a1, void *a2)
{
  v3 = Asn1Coder::EncodeOctetString(a1, 0, 0, 8, a2, 1, 0);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PD_SETId_mdn(uint64_t a1, void *a2)
{
  Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  return v3;
}

uint64_t asn1PE_SETId_min(uint64_t a1, void *a2)
{
  v3 = Asn1Coder::EncodeBitString(a1, 0, 0, 34, a2, 1);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PD_SETId_min(uint64_t a1, void *a2)
{
  Asn1Coder::GetBitStringFromBuffer(a1, 0x22u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  return v3;
}

uint64_t asn1PE_SETId_imsi(uint64_t a1, void *a2)
{
  v3 = Asn1Coder::EncodeOctetString(a1, 0, 0, 8, a2, 1, 1);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PD_SETId_imsi(uint64_t a1, void *a2)
{
  Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, a2, 1);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  return v3;
}

uint64_t asn1PE_SETId(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_24:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 5, *a2 - 1);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_24;
  }

  v8 = *a2;
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1u:
        v7 = asn1PE_SETId_msisdn(a1, a2 + 1);
        break;
      case 2u:
        v7 = asn1PE_SETId_mdn(a1, a2 + 4);
        break;
      case 3u:
        v7 = asn1PE_SETId_min(a1, a2 + 7);
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (*a2 > 5u)
  {
    if (v8 != 6)
    {
      if (v8 == 255)
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v4 = 1;
        LODWORD(v7) = 1;
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v7 = asn1PE_IPAddress(a1, a2 + 128);
  }

  else
  {
    if (v8 != 4)
    {
      if (v8 == 5)
      {
        v7 = Asn1Coder::EncodeVisibleString7(a1, 1, 1000, *(a2 + 28) - *(a2 + 26), a2 + 13, 0);
        goto LABEL_22;
      }

LABEL_18:
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      v4 = 4;
      LODWORD(v7) = 4;
      goto LABEL_24;
    }

    v7 = asn1PE_SETId_imsi(a1, a2 + 10);
  }

LABEL_22:
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_24;
  }

  return v4;
}

uint64_t asn1PD_SETId(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
  }

  else if (BitFromBuffer)
  {
    Asn1Coder::SkipChoiceExtension(a1);
    v5 = v8;
    if (!v8)
    {
      return v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v12 = 0;
    v8 = Asn1Coder::DecodeInteger(a1, 0, 5u, &v12);
    if (!v8)
    {
      v10 = v12;
      *a2 = v12 + 1;
      if (v10 <= 2)
      {
        if (v10)
        {
          if (v10 == 1)
          {
            v8 = asn1PD_SETId_mdn(a1, (a2 + 32));
          }

          else
          {
            v8 = asn1PD_SETId_min(a1, (a2 + 56));
          }
        }

        else
        {
          v8 = asn1PD_SETId_msisdn(a1, (a2 + 8));
        }
      }

      else if (v10 > 4)
      {
        if (v10 != 5)
        {
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
          if (v10 == 254)
          {
            v5 = 1;
            LODWORD(v8) = 1;
          }

          else
          {
            v5 = 4;
            LODWORD(v8) = 4;
          }

          goto LABEL_3;
        }

        v8 = asn1PD_IPAddress(a1, a2 + 128);
      }

      else if (v10 == 3)
      {
        v8 = asn1PD_SETId_imsi(a1, (a2 + 80));
      }

      else
      {
        v11 = 0;
        v8 = Asn1Coder::DecodeVisibleString7(a1, 1, 0x3E8u, &v11, (a2 + 104), 0);
      }

      v5 = v8;
      if (!v8)
      {
        return v5;
      }

      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

LABEL_3:
  SuplAsn1Logger::TraceError(v8, v6, v7);
  return v5;
}

uint64_t asn1PE_SlpSessionID_sessionID(uint64_t a1, void *a2)
{
  v3 = Asn1Coder::EncodeOctetString(a1, 0, 0, 4, a2, 1, 0);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PD_SlpSessionID_sessionID(uint64_t a1, void *a2)
{
  Asn1Coder::GetBitStringFromBuffer(a1, 0x20u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  return v3;
}

uint64_t asn1PE_SlpSessionID(uint64_t a1, uint64_t a2)
{
  v4 = asn1PE_SlpSessionID_sessionID(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v4 = asn1PE_SLPAddress(a1, (a2 + 24));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t asn1PD_SlpSessionID(uint64_t a1, void *a2)
{
  v4 = asn1PD_SlpSessionID_sessionID(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v4 = asn1PD_SLPAddress(a1, (a2 + 3));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t asn1PE_SetSessionID(uint64_t a1, unsigned __int8 *a2)
{
  v4 = Asn1Coder::EncodeInteger(a1, 0, 0xFFFF, *a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v4 = asn1PE_SETId(a1, a2 + 8);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t asn1PD_SetSessionID(uint64_t a1, _WORD *a2)
{
  v4 = Asn1Coder::DecodeInteger(a1, 0, 0xFFFFu, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v4 = asn1PD_SETId(a1, (a2 + 4));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

void ASN1T_SessionID::ASN1T_SessionID(ASN1T_SessionID *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 16) = -1;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 4) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](this + 25, 4);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 224) = -1;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 38) = 0;
  *this = 0;
}

uint64_t asn1PE_SessionID(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_5:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_5;
  }

  if (*a2)
  {
    v7 = asn1PE_SetSessionID(a1, a2 + 8);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_5;
    }
  }

  if (!a2[1])
  {
    return 0;
  }

  return asn1PE_SlpSessionID(a1, (a2 + 200));
}

uint64_t asn1PD_SessionID(uint64_t a1, uint64_t a2)
{
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_5:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  *(a2 + 1) = BitFromBuffer;
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_5;
  }

  if (*a2)
  {
    v7 = asn1PD_SetSessionID(a1, (a2 + 8));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_5;
    }

    BitFromBuffer = *(a2 + 1);
  }

  if (!BitFromBuffer)
  {
    return 0;
  }

  return asn1PD_SlpSessionID(a1, (a2 + 200));
}

double *Inc_GPS_TOW(double a1, double *result, __int16 *a3)
{
  v3 = *result + a1;
  *result = v3;
  if (v3 >= 604800.0)
  {
    v4 = *a3;
    do
    {
      v3 = v3 + -604800.0;
      ++v4;
    }

    while (v3 >= 604800.0);
    *result = v3;
    *a3 = v4;
  }

  if (v3 < 0.0)
  {
    v5 = *a3;
    do
    {
      v3 = v3 + 604800.0;
      --v5;
    }

    while (v3 < 0.0);
    *result = v3;
    *a3 = v5;
  }

  return result;
}

uint64_t NK_Sample_Track_Meas(int *a1, _DWORD *a2, double *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *a1;
  *a4 = *a1;
  v16 = v15 - *a2;
  if (v15 == *a2)
  {
    v16 = 1;
  }

  *(a4 + 8) = v16;
  *a2 = v15;
  v17 = a1[2];
  *(a4 + 4) = a1[1];
  *(a4 + 12) = v17;
  *(a4 + 16) = *(a1 + 12);
  *(a4 + 17) = *(a1 + 14);
  *(a4 + 48) = *(a1 + 13);
  *(a4 + 18) = *(a1 + 8);
  v18 = *(a1 + 3);
  *(a4 + 24) = v18;
  LODWORD(a8) = *(a4 + 8);
  v19 = *(a1 + 5);
  *(a4 + 32) = v18 - *a3 + *&a8 * -0.001;
  *a3 = v18;
  *(a4 + 100) = a1[12];
  *(a4 + 104) = *(a1 + 52);
  *(a4 + 106) = *(a1 + 27);
  *(a4 + 108) = *(a1 + 28);
  *(a4 + 40) = v19;
  *(a4 + 112) = *(a1 + 8);
  v20 = a1 + 843;
  do
  {
    v21 = &v20[4 * v8];
    if (*(v21 - 579))
    {
      ++v13;
      v12 += v20[v8];
      if (*(v21 - 243) >= 10)
      {
        ++v14;
        v22 = *(v21 - 579);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
LABEL_15:
            ++v11;
            goto LABEL_17;
          }

          if (v22 == 2)
          {
            ++v10;
          }
        }

        else
        {
          switch(v22)
          {
            case 5u:
              goto LABEL_15;
            case 4u:
              ++v9;
              break;
            case 3u:
              goto LABEL_15;
          }
        }
      }
    }

LABEL_17:
    --v8;
  }

  while (v8 != -48);
  if (v13)
  {
    *(a4 + 600) = v12 / v13;
  }

  *(a4 + 24782) = v11;
  *(a4 + 24787) = v10;
  *(a4 + 24792) = v9;
  return v14;
}

uint64_t Decode_GPS_Check_Alm_TOA(const unsigned int *a1, char a2, __int16 a3, unsigned __int8 *a4, __int16 *a5, BOOL *a6)
{
  *a6 = 0;
  v6 = *(a1 + 14);
  if (v6 > 0x93)
  {
    return 0;
  }

  v7 = a1[1] & 0xFFFF80;
  if (v7 > 0xC4DFEA)
  {
    return 0;
  }

  v9 = (v6 << 12) - ((3 * v7) >> 6);
  if (v9 <= 302399)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v9 < -302400)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  *a5 = v11 + a3;
  v12 = *a4;
  if (v12 < v6 || (v12 - v6) >= 74)
  {
    *a4 = v6;
    return 1;
  }

  else
  {
    if (v12 != v6)
    {
      return 0;
    }

    *a6 = 1;
    if (a2)
    {
      return 0;
    }

    return ((a1[4] & 0xE0) == 0) & (0xE4FE7F3uLL >> a1[4]);
  }
}

void NK_Comp_DR_Meas(unsigned int a1, int a2, unsigned __int16 *a3, double *a4, double *a5, unsigned __int16 *a6, int *a7, double *a8, double a9, _BYTE *a10, double *a11, _BYTE *a12)
{
  LODWORD(v18) = a1;
  v21 = a11;
  v33 = 8 * a1;
  bzero(a11, v33);
  if (a9 > 0.0)
  {
    v32 = a8;
    if (v18)
    {
      v18 = v18;
      v23 = (a9 * 100.0) + 1;
      v24 = a2 * 1575420.0;
      v25 = 1.0 / a9;
      v26 = a4;
      v31 = v23;
      do
      {
        if (*a7 <= 14)
        {
          *a12 = 1;
        }

        else if (v23 >= *a3 || (~*a6 & 0x300) != 0)
        {
          *a7 = 14;
        }

        else
        {
          *a12 = 1;
          v27 = v24 + *v26 - *a8;
          *v21 = v27 * 0.190293673;
          if (*a10 == 1)
          {
            v28 = *a5;
            v29 = *a5 + v27 * v25;
            if (fabs(v29) > 32.0)
            {
              *a7 = 14;
              v30 = *v26;
              *a12 = 0;
              EvLog_v("NK_Comp_DR_Meas: DR-DO = %d Hz ! (%d, %d, %d)", v29, v30, *a8, v28);
              v23 = v31;
            }
          }
        }

        ++a10;
        ++a5;
        ++v21;
        ++a8;
        ++v26;
        ++a12;
        ++a6;
        ++a3;
        ++a7;
        --v18;
      }

      while (v18);
    }

    memcpy(v32, a4, v33);
  }
}

BOOL Init_DB_Sys_Status(uint64_t a1)
{
  v2 = a1 + 253;
  *(a1 + 432) = a1 + 253;
  *(a1 + 440) = a1 + 285;
  *(a1 + 464) = a1 + 345;
  *(a1 + 472) = a1 + 309;
  *(a1 + 448) = a1 + 382;
  *(a1 + 456) = a1 + 392;
  v3 = a1 + 480;
  *(a1 + 664) = a1 + 480;
  *(a1 + 672) = a1 + 512;
  *(a1 + 680) = a1 + 609;
  *(a1 + 704) = a1 + 536;
  *(a1 + 696) = a1 + 572;
  *(a1 + 688) = a1 + 619;
  v4 = a1 + 712;
  *(a1 + 896) = a1 + 712;
  *(a1 + 904) = a1 + 744;
  *(a1 + 912) = a1 + 841;
  *(a1 + 936) = a1 + 768;
  *(a1 + 928) = a1 + 804;
  *(a1 + 920) = a1 + 851;
  *a1 = 0x200000000;
  *(a1 + 13) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 27) = 0x101010100000000;
  *(a1 + 34) = 16843009;
  *(a1 + 38) = 0;
  *(a1 + 46) = 1;
  if ((gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(a1) & 1) == 0)
  {
    *(a1 + 46) = 0;
  }

  *(a1 + 47) = 0;
  *(a1 + 48) = 0x200000000;
  *(a1 + 65) = 1024;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 1116) = xmmword_299761C60;
  *(a1 + 1132) = 1;
  *(a1 + 1134) = 1;
  *(a1 + 252) = 0;
  *(a1 + 944) = 0x3E800000000;
  *(a1 + 956) = 0;
  *(a1 + 960) = vdupq_n_s64(0x4060A00000000000uLL);
  *(a1 + 976) = vdupq_n_s64(0x4079000000000000uLL);
  *(a1 + 992) = xmmword_299761C70;
  *(a1 + 1012) = 16843009;
  *(a1 + 1015) = 16843009;
  *(a1 + 1019) = 256;
  *(a1 + 1021) = 1;
  *(a1 + 1024) = 126484480;
  *(a1 + 1028) = 1930;
  *(a1 + 1052) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  *(v4 + 176) = 0;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v3 + 176) = 0;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  *(a1 + 1022) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1184) = xmmword_299761CD0;
  *(a1 + 1168) = unk_299761CC0;
  *(a1 + 1152) = InterChanBias_GLON_L1OF[0];
  *(a1 + 1248) = xmmword_299761D10;
  *(a1 + 1232) = unk_299761D00;
  *(a1 + 1216) = xmmword_299761CF0;
  *(a1 + 1200) = unk_299761CE0;
  *(a1 + 1264) = xmmword_299761C80;
  EvLog_v("Init_ICB: Model %d", 0);
  *(a1 + 1288) = 0;
  *(a1 + 1296) = xmmword_299761C90;

  return Core_Load_Inhib_EE(v4, (a1 + 1040));
}

void Init_Set_Inter_Chan_Bias(uint64_t a1, unsigned int a2)
{
  if (a2 < 6)
  {
    if (*(a1 + 1022) != a2)
    {
      *(a1 + 1022) = a2;
      v2 = &InterChanBias_GLON_L1OF[7 * a2];
      *(a1 + 1200) = v2[3];
      *(a1 + 1216) = v2[4];
      *(a1 + 1232) = v2[5];
      *(a1 + 1248) = v2[6];
      *(a1 + 1152) = *v2;
      *(a1 + 1168) = v2[1];
      *(a1 + 1184) = v2[2];
      *(a1 + 1264) = InterChanBias_BDS_B1[a2];
      *(a1 + 1272) = 0x3FD51EB851EB851FLL;
      EvLog_v("Init_ICB: Model %d", a2);
    }
  }

  else
  {

    gn_report_assertion_failure("Init_ICB: Bad Model Id");
  }
}

double Init_DB_Sys_Status_NV(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v12[0] = 0.0;
  v11 = 0;
  v4 = Core_Load_Clk_Drift(&v11, v12);
  v5 = 0;
  v6 = 0.000004;
  if (!v4 || (v7 = v12[0], v12[0] == 0.0) || fabs(v12[0]) >= 0.000004)
  {
    v7 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0.000001;
    if (*(a1 + 5) == 1)
    {
      v8 = *(a1 + 16);
      if (v8 >= 1025 && *a1 >= 1)
      {
        v5 = *(a1 + 24) + 604800 * v8 - v11;
        if ((v5 - 31449600) >= 0xFE201BA8)
        {
          if (v5 < 1209601)
          {
            v6 = dbl_299761CA0[v5 < 900];
          }

          else
          {
            v5 -= 1209600;
            v10 = v5 * 0.0000000330687831;
            v6 = v10 * 0.0000035 + 0.0000005;
            v7 = v12[0] * (1.0 - v10);
          }
        }

        else
        {
          v7 = 0.0;
          v6 = 0.000004;
        }
      }
    }
  }

  *(a2 + 992) = v7;
  *(a2 + 1000) = v6;
  *(a2 + 1288) = v5;
  *(a2 + 1304) = v7 * 1000000.0;
  result = v6 * 1000000.0;
  *(a2 + 1296) = v6 * 1000000.0;
  return result;
}

int64x2_t MotionCtxGen_Init(uint64_t a1)
{
  *(a1 + 8) = 8;
  Set_Mat_Const(0, 0, 6, (a1 + 16), 0.0);
  Set_Mat_Const(0, 0, 6, (a1 + 72), 0.0);
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 248) = 12;
  *(a1 + 216) = result;
  *(a1 + 240) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 256) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 264) = 12;
  *(a1 + 384) = 0;
  return result;
}

uint64_t MotionCtxGen_Run(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v41 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 87744);
  v8 = *(a4 + 128032);
  v26 = 0;
  __dst = 0;
  v40 = 0;
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
  v27 = 0u;
  v22 = v7;
  if ((*(result + 472) & 1) == 0)
  {
    result = Cyc_Record_IsEmpty(v7, a2);
    if ((result & 1) == 0)
    {
      Cyc_Record_Read(v7, a2, &__dst);
      MotionCtxGen_inCntx2McST(&__dst, &v27, a5, 1);
      result = MotionCtxGen_UpdateState(v6, &v27, a2, a3, a5);
    }
  }

  if (*(v6 + 472) == 1)
  {
    MotionCtxGen_SetValidUntil(v6, a2, a3, a5);
    while (1)
    {
      result = Cyc_Record_Count_Free(v8, 1u);
      v10 = *(v6 + 216);
      v9 = *(v6 + 224);
      if (result < 2 || v9 > v10)
      {
        v12 = v22;
      }

      else
      {
        v12 = v22;
        do
        {
          if (v9 < *(v6 + 240))
          {
            if (g_FPE_LogSeverity)
            {
              v13 = mach_continuous_time();
              if (g_TCU)
              {
                v14 = *(g_TCU + 8);
              }

              else
              {
                v14 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f MOTC: run meas error: writing meas in the past", "MotionCtxGen_Run", 413, (*&g_MacClockTicksToMsRelation * v13), v14);
              v9 = *(v6 + 224);
            }

            g_FPE_AssertFlag = 1;
          }

          *(v6 + 240) = v9;
          *v6 = v9 + 0.003;
          v15 = *(v6 + 432);
          v37 = *(v6 + 416);
          v38 = v15;
          v39 = *(v6 + 448);
          v40 = *(v6 + 464);
          v16 = *(v6 + 368);
          v33 = *(v6 + 352);
          v34 = v16;
          v17 = *(v6 + 400);
          v35 = *(v6 + 384);
          v36 = v17;
          v18 = *(v6 + 304);
          v29 = *(v6 + 288);
          v30 = v18;
          v19 = *(v6 + 336);
          v31 = *(v6 + 320);
          v32 = v19;
          v20 = *(v6 + 272);
          *(&v27 + 1) = *(v6 + 264);
          v28 = v20;
          *&v27 = v9 + -0.003;
          Cyc_Record_Write(v8, &v27);
          Cyc_Record_Write(v8, v6);
          *(v6 + 224) = *(v6 + 224) + 0.5;
          v21 = *(v6 + 384) + -0.5;
          if (v21 < 0.0)
          {
            v21 = 0.0;
          }

          *(v6 + 384) = v21;
          *(v6 + 480) = *(v6 + 480) + 0.5;
          result = Cyc_Record_Count_Free(v8, 1u);
          v10 = *(v6 + 216);
          v9 = *(v6 + 224);
        }

        while (result >= 2 && v9 <= v10);
      }

      if (v9 <= v10)
      {
        break;
      }

      result = Cyc_Record_IsEmpty(v12, a2);
      if (result)
      {
        break;
      }

      Cyc_Record_Read(v12, a2, &__dst);
      MotionCtxGen_inCntx2McST(&__dst, &v27, a5, 1);
      MotionCtxGen_UpdateState(v6, &v27, a2, a3, a5);
    }
  }

  return result;
}

const char *MotionCtxGen_inCntx2McST(unsigned int *a1, double *a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  *(a2 + 2) = 13;
  v8 = a1[1];
  if (v8 == 1 || v8 == 2 && a1[2] == 3)
  {
    *(a2 + 2) = 6;
    v9 = 0.0;
    Set_Mat_Const(6, 1u, 6, a2 + 4, 0.0);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    Set_Mat_Const(3, 1u, 3, &v16, 0.5);
    Set_Mat_Const(3, 1u, 3, &v14, 0.005);
    Set_Mat_Size(6, a2 + 18, 6, 1);
    Copy_SubMat_to_Mat(1.0, 3, &v16, 0, 0, 6, a2 + 18);
    Copy_SubMat_to_Mat(1.0, 3, &v14, 3, 0, 6, a2 + 18);
    a2[16] = 0.0;
  }

  else
  {
    *(a2 + 2) = 5;
    Set_Mat_Const(4, 1u, 6, a2 + 4, 0.0);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    Set_Mat_Const(3, 1u, 3, &v16, 1.125);
    Set_Mat_Const(3, 1u, 3, &v14, 0.05625);
    Set_Mat_Size(6, a2 + 18, 4, 1);
    Copy_SubMat_to_Mat(1.0, 3, &v16, 0, 0, 6, a2 + 18);
    Copy_SubMat_to_Mat(1.0, 3, &v14, 3, 0, 6, a2 + 18);
    a2[16] = 0.0;
    v9 = 0.5;
  }

  *&v16 = 0;
  result = TCU_ConvertOStimeToTTICKtime(a3, *a1, &v16);
  v11 = *&v16;
  *a2 = *&v16 - v9;
  if ((g_FPE_LogSeverity & 8) != 0)
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

    result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MOTC: generating new meas. measType = %d, measTime = %f", "MotionCtxGen_inCntx2McST", 220, v12, v13, *(a2 + 2), *a2);
  }

  if (a4)
  {
    if ((g_FPE_LogSeverity & 0x200) != 0)
    {
      return LC_LOG_NMEA_GENERIC("%s,MOTC,%.3f,%d,%d,%.3f", "$PFPEX", *a2, a1[1], a1[2], *(a3 + 40) - v11);
    }
  }

  return result;
}

const char *MotionCtxGen_UpdateState(const char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 8);
  if (v5 != 13)
  {
    v8 = a3;
    v10 = result;
    *(result + 62) = v5;
    if (result[472])
    {
      if (*a2 > *(result + 28) + 0.5)
      {
        if (g_FPE_LogSeverity)
        {
          v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v12 = *(g_TCU + 8);
          }

          else
          {
            v12 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f MOTC: Update state error: measurement time too big", "MotionCtxGen_UpdateState", 340, v11, v12);
        }

        g_FPE_AssertFlag = 1;
      }
    }

    else
    {
      v13 = *(a5 + 40) + -1.0;
      *(result + 28) = v13;
      *(result + 29) = v13;
      *(result + 472) = 1;
    }

    result = MotionCtxGen_SetValidUntil(v10, v8, a4, a5);
    if (*(v10 + 66) == *(a2 + 8))
    {
      v14 = *(v10 + 48);
    }

    else
    {
      *(v10 + 60) = 0;
      v14 = 5.0;
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v16 = *(g_TCU + 8);
        }

        else
        {
          v16 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f -MOTC: t=%0.3f,type=%u", "MotionCtxGen_UpdateState", 356, v15, v16, *a2, *(v10 + 66));
      }
    }

    v17 = *(a2 + 96);
    v18 = *(a2 + 112);
    v19 = *(a2 + 144);
    *(v10 + 24) = *(a2 + 128);
    *(v10 + 25) = v19;
    v20 = *(a2 + 160);
    v21 = *(a2 + 176);
    v22 = *(a2 + 192);
    *(v10 + 58) = *(a2 + 208);
    *(v10 + 27) = v21;
    *(v10 + 28) = v22;
    *(v10 + 26) = v20;
    v23 = *(a2 + 16);
    *(v10 + 16) = *a2;
    *(v10 + 17) = v23;
    v24 = *(a2 + 32);
    v25 = *(a2 + 48);
    v26 = *(a2 + 80);
    *(v10 + 20) = *(a2 + 64);
    *(v10 + 21) = v26;
    *(v10 + 18) = v24;
    *(v10 + 19) = v25;
    *(v10 + 22) = v17;
    *(v10 + 23) = v18;
    *(v10 + 48) = v14;
  }

  return result;
}

uint64_t MotionCtxGen_SetValidUntil(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 87744);
  result = Cyc_Record_IsEmpty(v7, a2);
  if (result)
  {
    v9 = 0.7;
    if (*(a1 + 248) != 6)
    {
      v9 = 0.0;
    }

    v10 = *(a4 + 40);
    v11 = v10 - v9;
  }

  else
  {
    v20 = 0;
    __dst = 0;
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    Cyc_Record_Peek(v7, a2, 0, &__dst);
    result = MotionCtxGen_inCntx2McST(&__dst, v21, a4, 0);
    v11 = *v21;
    v10 = *(a4 + 40);
  }

  *(a1 + 216) = v11;
  v12 = *(a1 + 232);
  if (v12 != v10)
  {
    v13 = v10 - v12 + -1.0;
    v14 = -v13;
    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    if (v14 >= 0.2)
    {
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v18 = *(g_TCU + 8);
        }

        else
        {
          v18 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f MOTC: suspicious clock correction: %0.1fms - ignored", "MotionCtxGen_fixStateTime", 260, v17, v18, v13 * 1000.0);
      }
    }

    else
    {
      if (v14 > 2.22044605e-16 && (g_FPE_LogSeverity & 4) != 0)
      {
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v16 = *(g_TCU + 8);
        }

        else
        {
          v16 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f MOTC: clock correction by %0.1fms (%0.3f before)", "MotionCtxGen_fixStateTime", 252, v15, v16, v13 * 1000.0, *(a1 + 224));
      }

      *(a1 + 224) = v13 + *(a1 + 224);
    }

    *(a1 + 232) = v10;
  }

  return result;
}

float64_t NK_DeCor_Ext_Meas(uint64_t a1, uint64_t a2, float64x2_t a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v5 = a2 + 22776;
  if (*(a2 + 22992) == 1 && *(a2 + 23004) > 0 || *(a2 + 23120) == 1 && *(a2 + 23132) >= 1)
  {
    Comp_NEDvar_UDU(a1 + 344, 0xBu, 5, (a2 + 832), v33);
    Comp_ErrorEllipse(v33[0], v33[1], v6, &v30, &v31, &v32);
    if ((*(v5 + 216) & 1) == 0)
    {
      goto LABEL_25;
    }

    v7 = v30 * v30;
  }

  else
  {
    v7 = 0.0;
    if (!*(a2 + 22992))
    {
      goto LABEL_25;
    }
  }

  a3 = *(a2 + 23040);
  *(v5 + 288) = a3;
  v8 = *(v5 + 228);
  if (*(a2 + 968) || v8 > 0)
  {
    if (v8 < 1)
    {
      goto LABEL_25;
    }

    if (v8 == 2)
    {
      v10 = 1.5;
    }

    else
    {
      if (v8 != 1)
      {
LABEL_22:
        if (v7 >= 4.0 * a3.f64[0])
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v10 = 0.75;
    }

    if (v7 < v10 * a3.f64[0])
    {
      v11 = 90000.0;
LABEL_24:
      a3 = vmulq_n_f64(a3, v11);
      *(a2 + 23040) = a3;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (*(v5 + 224) != 4 && v7 < 4.0 * a3.f64[0])
  {
LABEL_23:
    v11 = 1.7;
    goto LABEL_24;
  }

LABEL_25:
  if (*(v5 + 344) != 1)
  {
    goto LABEL_36;
  }

  a3.f64[0] = *(a2 + 23152);
  *(a2 + 23160) = a3.f64[0];
  v12 = *(v5 + 356);
  if (v12 < 1)
  {
    goto LABEL_36;
  }

  if (v12 == 2)
  {
    v13 = 1.5;
LABEL_31:
    if (v34 < a3.f64[0] * v13)
    {
      v14 = 90000.0;
LABEL_35:
      a3.f64[0] = a3.f64[0] * v14;
      *(a2 + 23152) = a3.f64[0];
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  if (v12 == 1)
  {
    v13 = 0.75;
    goto LABEL_31;
  }

LABEL_33:
  if (v34 < a3.f64[0] * 4.0)
  {
    v14 = 1.7;
    goto LABEL_35;
  }

LABEL_36:
  if (*(v5 + 72) != 1)
  {
    goto LABEL_47;
  }

  a3.f64[0] = *(a2 + 22880);
  *(a2 + 22888) = a3.f64[0];
  v15 = *(v5 + 84);
  if (v15 < 1)
  {
    goto LABEL_47;
  }

  v16 = *(a2 + 24496);
  if (v15 == 2)
  {
    v17 = 1.5;
LABEL_42:
    if (v16 < a3.f64[0] * v17)
    {
      v18 = 900.0;
LABEL_46:
      a3.f64[0] = a3.f64[0] * v18;
      *(a2 + 22880) = a3.f64[0];
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v15 == 1)
  {
    v17 = 0.75;
    goto LABEL_42;
  }

LABEL_44:
  if (v16 < a3.f64[0] * 4.0)
  {
    v18 = 1.7;
    goto LABEL_46;
  }

LABEL_47:
  if (*(v5 + 144) != 1)
  {
    goto LABEL_61;
  }

  a3.f64[0] = *(a2 + 22952);
  *(a2 + 22960) = a3.f64[0];
  v19 = *(v5 + 156);
  if (v19 < 1)
  {
    goto LABEL_61;
  }

  if (v19 == 1)
  {
    v20 = *(a2 + 24520);
    v21 = 0.75;
  }

  else
  {
    v20 = *(a2 + 24520);
    if (v19 != 2)
    {
      goto LABEL_58;
    }

    v21 = 1.5;
  }

  if (v20 < a3.f64[0] * v21)
  {
    if (*(a1 + 11048) || *(a2 + 8387) || *(a2 + 13963))
    {
      v22 = 10000.0;
LABEL_60:
      a3.f64[0] = a3.f64[0] * v22;
      *(a2 + 22952) = a3.f64[0];
      goto LABEL_61;
    }

    v27 = 4.0;
    if (v19 == 1)
    {
      v27 = 1.0;
    }

    a3.f64[0] = -(v20 - a3.f64[0] * v27);
    v29 = 0;
    if (a3.f64[0] > 0.0)
    {
      Apply_Q_Boost(a3.f64[0], 3u, 1u, (a1 + 344), &v29, &v30);
    }

    goto LABEL_61;
  }

LABEL_58:
  if (v20 < a3.f64[0] * 4.0)
  {
    v22 = 1.7;
    goto LABEL_60;
  }

LABEL_61:
  if (*v5 != 1)
  {
    return a3.f64[0];
  }

  a3.f64[0] = *(a2 + 22808);
  *(a2 + 22816) = a3.f64[0];
  v23 = *(v5 + 12);
  if (v23 < 1)
  {
    return a3.f64[0];
  }

  v24 = *(a2 + 24528);
  if (v23 == 2)
  {
    v25 = 1.5;
LABEL_67:
    if (v24 < a3.f64[0] * v25)
    {
      v26 = 900.0;
LABEL_71:
      a3.f64[0] = a3.f64[0] * v26;
      *(a2 + 22808) = a3.f64[0];
      return a3.f64[0];
    }

    goto LABEL_69;
  }

  if (v23 == 1)
  {
    v25 = 0.75;
    goto LABEL_67;
  }

LABEL_69:
  if (v24 < a3.f64[0] * 4.0)
  {
    v26 = 1.7;
    goto LABEL_71;
  }

  return a3.f64[0];
}

double *invtst(double *a1, double *a2, unsigned int a3, double a4, double a5, double a6, double *a7)
{
  v8 = *a1;
  result = a1 - 1;
  v9 = a4 + v8 * *a2 * *a2;
  if (a3 >= 2)
  {
    if (a3 + 1 > 3)
    {
      v10 = a3 + 1;
    }

    else
    {
      v10 = 3;
    }

    v11 = 1;
    v12 = 2;
    v13 = 2;
    v14 = 1;
    do
    {
      v15 = a2[v13 - 1];
      v16 = a2;
      v17 = v12;
      v18 = v11;
      do
      {
        v19 = *v16++;
        v15 = v15 + v19 * result[v17++];
        --v18;
      }

      while (v18);
      v14 += v13;
      v9 = v9 + v15 * v15 * result[v14];
      v12 += v13;
      ++v11;
      ++v13;
    }

    while (v13 != v10);
  }

  if (a5 * a5 > v9 * a6)
  {
    v9 = -v9;
  }

  *a7 = v9;
  return result;
}

uint64_t Partial_Reset(uint64_t result, double *a2, double *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v14 = 0.0;
    v12 = 0.0;
    do
    {
      v8 = v7;
      v9 = a2[v7];
      if (v9 > 0.0)
      {
        v33 = 0;
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
        *(&v17 + v7) = 0x3FF0000000000000;
        result = ud2var(a3, v5, v6 + 1, 1u, &v14);
        v10 = v14;
        v11 = v14 * 100000000.0;
        if (v14 * 100000000.0 <= v9 * 1.01)
        {
          if (v9 - v14 > 0.0)
          {
            result = rnk1_core(a3, v6 + 1, v9 - v14, &v17, &v13);
          }
        }

        else
        {
          if (v11 > 0.0)
          {
            rnk1_core(a3, v6 + 1, v14 * 100000000.0, &v17, &v13);
            v9 = a2[v8];
          }

          v33 = 0;
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
          *(&v17 + v8) = 0x3FF0000000000000;
          result = umeas(a3, v5, v9 * ((v10 + v11) / (v10 + v11 - v9)), &v17, v16, v15, &v12, -1.0);
        }
      }

      v7 = v8 + 1;
      v6 = (v8 + 1);
    }

    while (v6 < v5);
  }

  return result;
}

_BYTE *LPP_init(void)
{
  v6 = *MEMORY[0x29EDCA608];
  StaticLppPrivate = GetStaticLppPrivate();
  memset_s(StaticLppPrivate + 18, 6uLL, 0, 6uLL);
  *(GetStaticLppPrivate() + 2) = 0;
  *(GetStaticLppPrivate() + 3) = 0;
  *GetStaticLppPrivate() = 0;
  *(GetStaticLppPrivate() + 1) = 0;
  *(GetStaticLppPrivate() + 1) = 0;
  *(GetStaticLppPrivate() + 28) = 0;
  *(GetStaticLppPrivate() + 6) = -1;
  v1 = operator new(0x10uLL, MEMORY[0x29EDC9418]);
  if (v1)
  {
    *v1 = 0;
    v1[1] = 0;
  }

  *(GetStaticLppPrivate() + 1) = v1;
  if (!*(GetStaticLppPrivate() + 1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "LPP_init", "LPP_init");
      LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("LPP_init", "lpp_if.cpp", 86, "false && Memory allocation failure");
  }

  result = GetStaticLppPrivate();
  *result = 1;
  return result;
}

uint64_t LPP_destroy(void)
{
  lpp_reset(0);
  v0 = *(GetStaticLppPrivate() + 1);
  if (v0)
  {
    MEMORY[0x29C29EB20](v0, 0x20C40A4A59CD2);
  }

  *(GetStaticLppPrivate() + 1) = 0;
  *(GetStaticLppPrivate() + 1) = 0;
  *(GetStaticLppPrivate() + 1) = 0;
  *GetStaticLppPrivate() = 0;
  *(GetStaticLppPrivate() + 28) = 0;
  *(GetStaticLppPrivate() + 16) = 0;
  *(GetStaticLppPrivate() + 6) = -1;
  v1 = GetStaticLppPrivate() + 2;

  return memset_s(v1, 6uLL, 0, 6uLL);
}

double lpp_t_classmark_ind(_BYTE *a1)
{
  if (!*GetStaticLppPrivate())
  {
    LPP_init();
  }

  if (*a1 == 1)
  {
    v2 = a1[10];
    if (v2 == 1)
    {
      v3 = (a1[11] == 1) | (4 * (a1[13] == 1)) | (2 * (a1[12] == 1));
    }

    else
    {
      v3 = 0;
    }

    *(GetStaticLppPrivate() + 2) = v2;
    *(GetStaticLppPrivate() + 3) = v3;
  }

  if (a1[1] == 1)
  {
    if (a1[19] == 1)
    {
      v4 = (a1[20] == 1) | (2 * (a1[22] == 1));
      v5 = 2 * (a1[23] == 1);
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v4 = 0;
      v5 = 0;
    }

    StaticLppPrivate = GetStaticLppPrivate();
    StaticLppPrivate[4] = v6;
    StaticLppPrivate[5] = v4;
    StaticLppPrivate[6] = v5;
  }

  if (a1[25] == 1)
  {
    v8 = a1[24] == 1;
    *(GetStaticLppPrivate() + 7) = v8;
  }

  return lpp_state_control(2u);
}

void lpp_t_supl_pos_trigger(int a1, char a2, size_t a3, const void *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(GetStaticLppPrivate() + 1) && *(GetStaticLppPrivate() + 16) == 1)
  {
    if (a4 && a3 >= 1)
    {
      __s[0] = -1;
      v10 = -1;
      memset_s(__s, 8uLL, 0, 8uLL);
      __s[0] = 1;
      v10 = a1;
      v8 = gnssOsa_Calloc("posp_alloc", 18, 1, a3 & 0x7FFFFFFF);
      memcpy_s("lpp_t_supl_pos_trigger", 213, v8, a3, a4, a3);
      lpp_process_downlink_message(__s, a2);
      if (v8)
      {
        free(v8);
      }

      return;
    }

    ms_report_exception(2, 16429, 219, "lpp_t_supl_pos_trigger");
    ms_report_exception(2, 16391, 220, "lpp_t_supl_pos_trigger");
  }

  send_supl_pos_ind(a1, 1, 0, 0, 0);
}

void lpp_handle_aid_req(int a1, char a2, int a3, __int128 *a4)
{
  v34 = *MEMORY[0x29EDCA608];
  LOBYTE(__s) = -1;
  HIDWORD(__s) = -1;
  memset_s(&__s, 8uLL, 0, 8uLL);
  LOBYTE(__s) = 1;
  HIDWORD(__s) = -1;
  v23 = 0;
  v24 = 0;
  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  v22 = 0;
  memset_s(v20, 0x30uLL, 0, 0x30uLL);
  if (!a4)
  {
LABEL_18:
    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_22:
    HIDWORD(__s) = a1;
    send_lpm_supl_ad_rsp(a1, 1, 0);
    ms_report_exception(2, 16430, 346, "lpp_handle_aid_req");
    goto LABEL_23;
  }

  v31[0] = 2;
  *&v32 = 0x8000000080000000;
  *(&v32 + 1) = 0xFFFF00007FFFFFFFLL;
  *v33 = 255;
  *&v33[8] = -1;
  v33[10] = -1;
  *&v33[2] = -1;
  v33[6] = -1;
  memset(&v33[11], 0, 32);
  v33[44] = 0;
  memset_s(v31, 0x44uLL, 0, 0x44uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aid Mask,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 68, "lpp_handle_aid_req", *(a4 + 6));
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 5, 1);
  }

  v10 = a4[1];
  v32 = *a4;
  *v33 = v10;
  *&v33[16] = a4[2];
  *&v33[29] = *(a4 + 45);
  if (a3 == 1)
  {
    LOBYTE(__s) = 1;
    HIDWORD(__s) = a1;
    v11 = lpp_session_detect(&__s);
    if (v11 || (v11 = lpp_session_create(&__s, a2)) != 0)
    {
      v12 = v11;
      memset_s(__str, 8uLL, 0, 8uLL);
      v13 = *(v12 + 24);
      *__str = 1;
      *&__str[4] = v13;
      v14 = **(v12 + 40);
      if (v14)
      {
        while (v14[4] != 1 || v14[5] != v13)
        {
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_12;
      }

LABEL_11:
      v14 = lpp_transaction_start(v12, __str, 6);
      if (v14)
      {
LABEL_12:
        *(v14 + 25) = 1;
        goto LABEL_14;
      }
    }

    ms_report_exception(2, 16425, 325, "lpp_handle_aid_req");
    goto LABEL_22;
  }

  v14 = __str;
  _LPP_TRANSACTION::_LPP_TRANSACTION(__str);
  memset_s(__str, 0x1E8uLL, 0, 0x1E8uLL);
LABEL_14:
  v29 = 0;
  v30 = 0;
  v26 = 0;
  v27 = 0;
  *__str = 0;
  v28 = 0;
  memset_s(__str, 0x30uLL, 0, 0x30uLL);
  if (lpp_transaction_process_request_assistance_data(v14, v31, __str) != 1)
  {
    goto LABEL_18;
  }

  v15 = v27;
  v21 = v27;
  *(v27 + 16) = 0;
  *(v15 + 32) = 0;
  v16 = encode_asn1_message(0, 0, &v23, 0, &v22, v15);
  if (a3)
  {
    if (!v16)
    {
      send_lpm_supl_ad_rsp(SHIDWORD(__s), 0, &v22);
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Aid Response message is not for SUPL\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 69, "lpp_handle_aid_req", 770);
    LbsOsaTrace_WriteLog(0x13u, __str, v18, 0, 1);
  }

LABEL_23:
  if (v21)
  {
    GenericFreeSort(v21, &ySDL_T_LASN_LPP_Message);
    if (v21)
    {
      free(v21);
    }
  }
}

void lpp_t_supl_lpp_caps_req(int a1, char a2)
{
  v25 = *MEMORY[0x29EDCA608];
  __src = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  LODWORD(size) = 0;
  LOBYTE(v12) = 1;
  HIDWORD(v12) = a1;
  if (*(GetStaticLppPrivate() + 16))
  {
    v4 = lpp_session_detect(&v12);
    if (v4)
    {
      v5 = v4;
      v17 = 0;
      v18 = 0;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v16 = 0;
    }

    else
    {
      v5 = lpp_session_create(&v12, a2);
      v17 = 0;
      v18 = 0;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v16 = 0;
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    v6 = *(v5 + 24);
    v11[0] = 1;
    v11[1] = v6;
    v7 = **(v5 + 5);
    if (v7)
    {
      while (*(v7 + 4) != 1 || *(v7 + 5) != v6)
      {
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

LABEL_12:
    v7 = lpp_transaction_start(v5, v11, 5);
    if (v7)
    {
LABEL_13:
      *(v7 + 25) = 1;
      if (lpp_transaction_process_provide_capabilities(v7, &v13) == 1)
      {
        v8 = v15;
        v21 = v15;
        *(v15 + 16) = 0;
        *(v8 + 32) = 0;
        LODWORD(size) = 0;
        if (encode_asn1_message(0, 0, &__src, 0, &size, v8))
        {
          ms_report_exception(2, 16422, 418, "lpp_t_supl_lpp_caps_req");
          v9 = 1;
          v10 = __src;
        }

        else
        {
          *(v5 + 84) = 1;
          v10 = gnssOsa_Calloc("posp_alloc", 18, 1, size);
          memcpy_s("lpp_t_supl_lpp_caps_req", 428, v10, size, __src, size);
          v9 = 0;
          __src = v10;
        }
      }

      else
      {
        v10 = 0;
        LODWORD(size) = 0;
        __src = 0;
        v9 = 1;
        v8 = v15;
      }

      send_supl_caps_rsp(SHIDWORD(v12), v9, size, v10);
      goto LABEL_20;
    }

LABEL_16:
    v8 = 0;
LABEL_20:
    GenericFreeSort(v8, &ySDL_T_LASN_LPP_Message);
    if (v15)
    {
      free(v15);
    }

    return;
  }

  send_supl_caps_rsp(a1, 1, 0, 0);
}

void lpp_t_supl_session_end_ind(int a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v2[0] = 1;
  v3 = a1;
  v1 = lpp_session_detect(v2);
  if (v1)
  {

    lpp_session_delete(v1);
  }
}

void lpp_t_lpi_pos_aid_req(__int128 *a1, char a2, uint64_t a3, int a4)
{
  v4 = BYTE4(a3);
  v16 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v12 = *a1;
  v13 = v5;
  *v14 = a1[2];
  *&v14[11] = *(a1 + 43);
  v15 = a2;
  if (a3 == 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aid Mask,%u\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "lpp_t_lpi_pos_aid_req", WORD6(v12));
      LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
    }

    v11[0] = 0;
    __str[0] = v4;
    v10 = a4;
    lpp_transaction_pos_aid_req(v11, __str);
  }

  else
  {

    ms_report_exception(2, 16420, 486, "lpp_t_lpi_pos_aid_req");
  }
}

void lpp_t_pos_loc_cnf(__int128 *a1, uint64_t a2, int a3, char a4)
{
  v35 = *MEMORY[0x29EDCA608];
  v7 = a1[5];
  v33 = a1[4];
  v34[0] = v7;
  *(v34 + 14) = *(a1 + 94);
  v8 = a1[1];
  v29 = *a1;
  v30 = v8;
  v9 = a1[3];
  v31 = a1[2];
  v32 = v9;
  v10 = *(a1 + 110);
  T_GNSS_POSITION_s::T_GNSS_POSITION_s(v12);
  v15 = 0;
  T_GPS_MEAS_s::T_GPS_MEAS_s(v16);
  v12[3] = v32;
  v12[4] = v33;
  *v13 = v34[0];
  *&v13[14] = *(v34 + 14);
  v12[0] = v29;
  v12[1] = v30;
  v16[44] = 2;
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v20 = 0xFFFF7FFFFFFFFFFFLL;
  v21 = -1;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 2;
  v11[0] = 1;
  v12[2] = v31;
  v14 = v10;
  v28 = a4;
  v26 = v10;
  lpm_t_handle_loc_info_rsp(v11, a2, a3);
}

void lpm_t_handle_loc_info_rsp(uint64_t a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x29EDCA608];
  __s[0] = -1;
  v16 = -1;
  memset_s(__s, 8uLL, 0, 8uLL);
  if ((a2 & 0xFFFFFFFFFFLL) == 0x100000002)
  {
    __s[0] = 1;
    v16 = a3;
  }

  else
  {
    ms_report_exception(2, 16420, 552, "lpm_t_handle_loc_info_rsp");
  }

  v17[0] = 0;
  v18 = -1;
  T_GNSS_POSITION_s::T_GNSS_POSITION_s(v19);
  LOBYTE(v21[0]) = 0;
  T_GPS_MEAS_s::T_GPS_MEAS_s((v21 + 8));
  LOWORD(v22) = 2;
  BYTE2(v22) = 0;
  *(&v22 + 1) = 0;
  *&v23 = -1;
  *(&v23 + 1) = 0xFFFF7FFFFFFFFFFFLL;
  *&v24 = -1;
  BYTE8(v24) = 0;
  WORD6(v24) = 0;
  LODWORD(v25) = 0;
  BYTE4(v25) = 0;
  v26 = 0;
  v27 = 2;
  v28 = 0;
  memset_s(v17, 0x128uLL, 0, 0x128uLL);
  v17[0] = 1;
  v18 = *a1;
  v26 = *(a1 + 272);
  if (v18 > 1u)
  {
    if (v18 == 2)
    {
      ms_report_exception(2, 16437, 569, "lpm_t_handle_loc_info_rsp");
LABEL_13:
      v10 = *(a1 + 56);
      v11 = *(a1 + 88);
      v19[4] = *(a1 + 72);
      v20[0] = v11;
      *(v20 + 15) = *(a1 + 103);
      v12 = *(a1 + 24);
      v19[0] = *(a1 + 8);
      v19[1] = v12;
      v19[2] = *(a1 + 40);
      v19[3] = v10;
      v28 = *(a1 + 280);
      goto LABEL_14;
    }

    if (v18 == 255)
    {
      ms_report_exception(2, 16438, 580, "lpm_t_handle_loc_info_rsp");
      return;
    }
  }

  else
  {
    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v6 = *(a1 + 232);
    v22 = *(a1 + 216);
    v23 = v6;
    v24 = *(a1 + 248);
    v25 = *(a1 + 264);
    v7 = *(a1 + 168);
    v21[2] = *(a1 + 152);
    v21[3] = v7;
    v8 = *(a1 + 200);
    v21[4] = *(a1 + 184);
    v21[5] = v8;
    v9 = *(a1 + 136);
    v21[0] = *(a1 + 120);
    v21[1] = v9;
  }

LABEL_14:
  v13 = 0;
  v14 = 0;
  memset_s(&v13, 0x10uLL, 0, 0x10uLL);
  v13 = __s;
  v14 = v17;
  lpp_control_loc_info_rsp(&v13);
}

void lpp_t_pos_meas_cnf(__int128 *a1, __int128 *a2, char a3, uint64_t a4, int a5, int a6)
{
  v33 = *MEMORY[0x29EDCA608];
  T_GNSS_POSITION_s::T_GNSS_POSITION_s(&v18);
  v19 = 0;
  T_GPS_MEAS_s::T_GPS_MEAS_s(&v20);
  LOWORD(v26) = 2;
  BYTE2(v26) = 0;
  *(&v26 + 1) = 0;
  *&v27 = -1;
  *(&v27 + 1) = 0xFFFF7FFFFFFFFFFFLL;
  *v28 = -1;
  v28[8] = 0;
  *&v28[12] = 0;
  *&v28[16] = 0;
  v28[20] = 0;
  v31 = 0;
  v30 = a6;
  v17[0] = 0;
  v29 = 0;
  if (a6)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Measurement result status,%u\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "lpp_t_pos_meas_cnf", 770, v30);
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    }
  }

  else
  {
    if (a3)
    {
      v19 |= 1u;
      v25 = *(a1 + 10);
      v14 = a1[4];
      v23 = a1[3];
      v24 = v14;
      v15 = a1[2];
      v21 = a1[1];
      v22 = v15;
      v20 = *a1;
      BYTE4(v21) = 0;
      BYTE12(v22) = 0;
    }

    if ((a3 & 2) != 0)
    {
      v19 |= 2u;
      v16 = a2[1];
      v26 = *a2;
      v27 = v16;
      *v28 = a2[2];
      *&v28[13] = *(a2 + 45);
    }
  }

  lpm_t_handle_loc_info_rsp(v17, a4, a5);
}

_BYTE *lpp_t_mm_lpm_status_ind(char a1, int a2, unint64_t a3)
{
  v3 = a3;
  v5 = a3 >> 16;
  v6 = HIDWORD(a3);
  *(GetStaticLppPrivate() + 16) = a1;
  *(GetStaticLppPrivate() + 6) = a2;
  *(GetStaticLppPrivate() + 9) = v3;
  *(GetStaticLppPrivate() + 10) = v5;
  result = GetStaticLppPrivate();
  result[22] = v6;
  return result;
}

void lpp_t_supl_ad_req(int a1, char a2, __int128 *a3, int a4)
{
  if (*(GetStaticLppPrivate() + 16) == 1 && (a3 || a4 != 0xFFFF))
  {
    lpp_handle_aid_req(a1, a2, 1, a3);
    if (a3)
    {
LABEL_5:

      JUMPOUT(0x29C29EB20);
    }
  }

  else
  {
    send_lpm_supl_ad_rsp(a1, 1, 0);
    if (a3)
    {
      goto LABEL_5;
    }
  }
}

void T_GPS_MEAS_s::T_GPS_MEAS_s(T_GPS_MEAS_s *this)
{
  *this = 0xFFFFLL;
  *(this + 4) = 255;
  *(this + 44) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  *(this + 36) = 255;
  *(this + 10) = 0;
  memset_s(this + 24, 0x14uLL, 0, 0x14uLL);
  memset_s(this + 48, 0x18uLL, 0, 0x18uLL);
}

uint64_t asn1PE_Ver(uint64_t a1, void *a2)
{
  v3 = Asn1Coder::EncodeBitString(a1, 0, 0, 64, a2, 1);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PD_Ver(uint64_t a1, void *a2)
{
  Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  return v3;
}

uint64_t asn1PE_StatusCode(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2 - 20;
  Asn1Coder::AddBitToBuffer(a1, v4 < 5);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_8:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    return v5;
  }

  v9 = *a2;
  if (v4 > 4)
  {
    v8 = Asn1Coder::EncodeInteger(a1, 0, 19, v9);
  }

  else
  {
    v8 = Asn1Coder::EncodeChoiceExtension(a1, (v9 - 20));
  }

  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_8;
  }

  return v5;
}

uint64_t asn1PD_StatusCode(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
LABEL_8:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    return v5;
  }

  v11 = 0;
  if (BitFromBuffer)
  {
    v5 = Asn1Coder::DecodeEnumerationExtension(a1, &v11);
    v9 = v11 + 20;
  }

  else
  {
    v5 = Asn1Coder::DecodeInteger(a1, 0, 0x13u, &v11);
    v9 = v11;
  }

  *a2 = v9;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
    goto LABEL_8;
  }

  return v5;
}

uint64_t Hal01_01HandleInitReq(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_INIT_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_01HandleInitReq");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  v28 = 3;
  if (a1)
  {
    g_IsFSMDeInit = 0;
    v4 = *(a1 + 24);
    g_HwProduct = v4;
    g_IsProdMode = *(a1 + 28);
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal01_01HandleInitReq", 1291);
      LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
    }

    v7 = gnssOsa_Calloc("Hal01_01HandleInitReq", 148, 1, 0xB8uLL);
    if (v7)
    {
      v8 = v7;
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssHw,%u\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 73, "Hal01_01HandleInitReq", v4);
        LbsOsaTrace_WriteLog(0xDu, __str, v10, 4, 1);
      }

      if (Hal22_InitializeConn())
      {
        goto LABEL_41;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 73, "Hal01_01HandleInitReq", 1313);
        LbsOsaTrace_WriteLog(0xDu, __str, v12, 4, 1);
      }

      if ((v4 - 1) >= 3)
      {
        if (v4 != 4 && v4)
        {
          goto LABEL_28;
        }

        if (Hal01_GetRevisionInfo(v8, *(a1 + 16), 0))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 73, "Hal01_01HandleInitReq", 1285);
            LbsOsaTrace_WriteLog(0xDu, __str, v18, 4, 1);
          }

          Hal08_InitPatchesCode();
          if (Hal24_PatchDnldBright(&v28))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v19 = mach_continuous_time();
              v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "HAL", 69, "Hal01_01HandleInitReq", 1293);
              LbsOsaTrace_WriteLog(0xDu, __str, v20, 0, 1);
            }

            *v8 = 1;
            *(v8 + 1) = v28;
            goto LABEL_40;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (Hal34_InitPciGnssDevice(&v28))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v13 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "Hal01_01HandleInitReq", 1293);
            LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
          }

          *v8 = 1;
          *(v8 + 1) = v28;
          (*(a1 + 16))(3, v8);
LABEL_28:
          if (*v8 != 2)
          {
            goto LABEL_40;
          }

LABEL_34:
          if (Hal01_GetRevisionInfo(v8, *(a1 + 16), 1))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v23 = mach_continuous_time();
              v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AfterInit\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 73, "Hal01_01HandleInitReq", 1285);
              v25 = 4;
LABEL_39:
              LbsOsaTrace_WriteLog(0xDu, __str, v24, v25, 1);
            }
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AfterInit\n", (*&g_MacClockTicksToMsRelation * v26), "HAL", 69, "Hal01_01HandleInitReq", 1286);
            v25 = 0;
            goto LABEL_39;
          }

LABEL_40:
          (*(a1 + 16))(3, v8);
          goto LABEL_41;
        }

        if (Hal01_GetRevisionInfo(v8, *(a1 + 16), 0))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v21), "HAL", 73, "Hal01_01HandleInitReq", 1285);
            LbsOsaTrace_WriteLog(0xDu, __str, v22, 4, 1);
          }

LABEL_33:
          *v8 = 2;
          *(v8 + 1) = v28;
          goto LABEL_34;
        }
      }

LABEL_41:
      free(v8);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "Hal01_01HandleInitReq", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v16, 0, 1);
  }

  return 0;
}

uint64_t Hal01_03WriteDataToChip(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_WRITE_DATA_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 68, "Hal01_03WriteDataToChip");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 5, 1);
  }

  if (g_IsFSMDeInit == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeInitState\n");
LABEL_12:
      LbsOsaTrace_WriteLog(0xDu, __str, v4, 0, 1);
    }
  }

  else if (a1)
  {
    Hal22_ZxSendToChip(*(a1 + 16), *(a1 + 24));
    v5 = *(a1 + 16);
    if (v5)
    {
      free(v5);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_12;
  }

  return 0;
}

uint64_t Hal01_02HandleDeInitReq(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_DEINIT_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_02HandleDeInitReq");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal01_02HandleDeInitReq");
    LbsOsaTrace_WriteLog(0xDu, __str, v5, 4, 1);
  }

  if (a1)
  {
    g_IsFSMDeInit = 1;
    v6 = gnssOsa_Calloc("Hal01_02HandleDeInitReq", 245, 1, 0xB8uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = 6;
      Hal22_DeInitializeConn();
      v8 = *(a1 + 16);
      if (v8)
      {
        v8(4, v7);
      }

      free(v7);
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 73, "Hal01_02HandleDeInitReq");
        v11 = 4;
LABEL_13:
        LbsOsaTrace_WriteLog(0xDu, __str, v10, v11, 1);
      }
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "Hal01_02HandleDeInitReq", 517);
    v11 = 0;
    goto LABEL_13;
  }

  return 0;
}

uint64_t Hal01_HandleGnssBBResetReq(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:E_HAL_GNSSBASEBAND_RESET_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_HandleGnssBBResetReq");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  v21 = 0;
  if (Hal22_GetHwRevisionAfterInit(&v21))
  {
    v4 = v21;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0);
    if (v4 == 16)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_13;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Cpcpu noComms\n");
    }

    else
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_13;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEcpu noComms\n");
    }

    v8 = v6;
    v9 = 2;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Awake CP/ME cpu\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 73, "Hal01_PingCpus");
    v9 = 4;
  }

  LbsOsaTrace_WriteLog(0xDu, __str, v8, v9, 1);
LABEL_13:
  if (a1)
  {
    if ((g_HwProduct - 1) >= 3)
    {
      if (g_HwProduct == 4 || !g_HwProduct)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Triggering GnssBB reset\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 73, "Hal01_HandleGnssBBResetReq");
          LbsOsaTrace_WriteLog(0xDu, __str, v15, 4, 1);
        }

        if (!Hal17_SoftReset(80, 115))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Triggering ME Soft Reset\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 73, "Hal01_HandleGnssBBResetReq");
        LbsOsaTrace_WriteLog(0xDu, __str, v11, 4, 1);
      }

      if (!Hal29_ReqGnssSoftReset())
      {
LABEL_29:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "HAL", 73, "Hal01_HandleGnssBBResetReq", 1304);
          LbsOsaTrace_WriteLog(0xDu, __str, v19, 4, 1);
        }

        (*(a1 + 16))(7);
        return 0;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "HAL", 69, "Hal01_HandleGnssBBResetReq", 1305);
      LbsOsaTrace_WriteLog(0xDu, __str, v17, 0, 1);
    }

    (*(a1 + 16))(8);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "Hal01_HandleGnssBBResetReq", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v13, 0, 1);
  }

  return 0;
}

uint64_t HAL01_09HandleLPEvent(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_LOW_POWER_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 68, "HAL01_09HandleLPEvent");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 68, "HAL01_09HandleLPEvent");
    LbsOsaTrace_WriteLog(0xDu, __str, v5, 5, 1);
  }

  if (g_IsFSMDeInit == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeInitState\n");
LABEL_13:
      v8 = v6;
      v9 = 0;
      goto LABEL_14;
    }
  }

  else if (a1)
  {
    Hal26_SendLPResponse(*(a1 + 12));
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 68, "HAL01_09HandleLPEvent");
      v9 = 5;
LABEL_14:
      LbsOsaTrace_WriteLog(0xDu, __str, v8, v9, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_13;
  }

  return 0;
}

uint64_t HAL01_09HandleLPAllowReq(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_LOW_POWER_ALLOW_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "HAL01_09HandleLPAllowReq");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx config UartLP NA \n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "HAL01_09HandleLPAllowReq", 264);
      LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
    }

    if (off_2A19268B0)
    {
      off_2A19268B0(0, v4);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "HAL01_09HandleLPAllowReq", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
  }

  return 0;
}

uint64_t Hal01_HandleSetPowerReport(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_SET_POWER_RPT_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_HandleSetPowerReport");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  __s[0] = 0;
  memset_s(__s, 0xB8uLL, 0, 0xB8uLL);
  __s[0] = 0;
  if (a1)
  {
    __s[0] = *(a1 + 12);
    if (Hal32_SetPowerReport(__s[0]))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (*(a1 + 12))
        {
          v5 = "En";
        }

        else
        {
          v5 = "Dis";
        }

        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Failed,%s\n", v4, "HAL", 69, "Hal01_HandleSetPowerReport", 257, v5);
        v7 = 0;
LABEL_17:
        LbsOsaTrace_WriteLog(0xDu, __str, v6, v7, 1);
      }
    }

    else
    {
      __s[0] |= 2u;
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (*(a1 + 12))
        {
          v11 = "En";
        }

        else
        {
          v11 = "Dis";
        }

        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success,%s\n", v10, "HAL", 73, "Hal01_HandleSetPowerReport", v11);
        v7 = 4;
        goto LABEL_17;
      }
    }

    (*(a1 + 16))(5, __s);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 69, "Hal01_HandleSetPowerReport", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v9, 0, 1);
  }

  return 0;
}

uint64_t Hal01_HandleTMPulseTrig(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_TRIG_TIMEMARK_PULSE_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_HandleTMPulseTrig");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_10:
    LbsOsaTrace_WriteLog(0xDu, __str, v5, 0, 1);
    return 0;
  }

  if (!*(a1 + 16))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMarkPulseCb\n");
    goto LABEL_10;
  }

  *__str = 0;
  v4 = Hal25_TriggerTimeMarkStrobe(__str);
  (*(a1 + 16))(*__str, v4);
  return 0;
}

uint64_t Hal01_HandleSetCfgReq(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = *(a1 + 16);
    g_PltHWSettings = *(a1 + 12);
    dword_2A1939D14 = v1;
    memmove(&unk_2A1939D18, (a1 + 20), 0xF4uLL);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 69, "Hal01_HandleSetCfgReq", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
  }

  return 0;
}

uint64_t Hal01_HandleStackDumpReq(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    HAL34_StackDumpReq(*(a1 + 12));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 69, "Hal01_HandleStackDumpReq", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
  }

  return 0;
}

BOOL Hal01_GetRevisionInfo(char *a1, void (*a2)(uint64_t, char *), int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v25 = 1;
  v6 = gnssOsa_Calloc("Hal01_GetRevisionInfo", 73, 1, 0xB8uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a3)
  {
    HwRevisionAfterInit = Hal22_GetHwRevisionAfterInit(&v25);
    v9 = 2;
  }

  else
  {
    HwRevisionAfterInit = Hal22_GetHwRevision(&v25);
    v9 = 1;
  }

  v10 = HwRevisionAfterInit == 0;
  if (HwRevisionAfterInit)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 69, "Hal01_GetRevisionInfo", 1286);
      LbsOsaTrace_WriteLog(0xDu, __str, v12, 0, 1);
    }

    v13 = v25;
    *a1 = 3;
    *(a1 + 1) = v13;
    v9 = 3;
    v14 = a1;
  }

  else
  {
    v15 = dword_2A191DCD0;
    *v7 = 4;
    *(v7 + 1) = v15;
    *(v7 + 8) = xmmword_2A191DCC0;
    v16 = unk_2A191DCD8;
    *(v7 + 10) = dword_2A191DCE8;
    *(v7 + 24) = v16;
    v17 = unk_2A191DD28;
    *(v7 + 30) = dword_2A191DD38;
    *(v7 + 104) = v17;
    v18 = *&qword_2A191DCEC;
    *(v7 + 15) = dword_2A191DCFC;
    *(v7 + 44) = v18;
    v19 = *algn_2A191DD3C;
    *(v7 + 35) = dword_2A191DD4C;
    *(v7 + 124) = v19;
    v20 = qword_2A191DD50;
    *(v7 + 76) = word_2A191DD58;
    *(v7 + 18) = v20;
    v21 = qword_2A191DD00;
    *(v7 + 36) = word_2A191DD08;
    *(v7 + 8) = v21;
    v22 = qword_2A191DD14;
    *(v7 + 46) = word_2A191DD1C;
    *(v7 + 84) = v22;
    v23 = unk_2A191DD64;
    *(v7 + 86) = word_2A191DD6C;
    *(v7 + 164) = v23;
    v14 = v7;
  }

  a2(v9, v14);
  free(v7);
  return v10;
}

void Geo2ECEF(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 16);
  v7 = __sincos_stret(*a1);
  v8 = *(a2 + 8) / sqrt(-(*(a2 + 24) * v7.__sinval) * v7.__sinval + 1.0);
  v9 = v7.__cosval * (v6 + v8);
  v10 = cos(*(a1 + 8)) * v9;
  a3->f64[0] = v10;
  v11 = sin(*(a1 + 8)) * v9;
  a3->f64[1] = v11;
  v12 = v7.__sinval * (v6 + v8 * *(a2 + 40));
  a3[1].f64[0] = v12;
  if (*a2)
  {
    v13.f64[0] = v10 - *(a2 + 48);
    a3->f64[0] = v13.f64[0];
    v14 = v11 - *(a2 + 56);
    a3->f64[1] = v14;
    v15 = v12 - *(a2 + 64);
    a3[1].f64[0] = v15;
    if (*(a2 + 2) == 1)
    {
      v16 = 0;
      v17 = (a2 + 88);
      do
      {
        v18 = v14 * *(v17 - 1) + *(v17 - 2) * v13.f64[0];
        v19 = *v17;
        v17 += 3;
        v20.f64[v16++] = v18 + v19 * v15;
      }

      while (v16 != 3);
      v13.f64[1] = v14;
      *a3 = vsubq_f64(v13, v20);
      a3[1].f64[0] = v15 - v21;
    }
  }
}

void *GncS04_00InitClientInstance(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v10 = *MEMORY[0x29EDCA608];
  bzero(__src, 0x50D0CuLL);
  for (i = 0; i != 264; i += 132)
  {
    v2 = &__src[i];
    v2[28] = 0;
    *(v2 + 15) = 0;
    *(v2 + 4) = 0;
    *(v2 + 10) = -1;
    *(v2 + 22) = 0;
    *(v2 + 3) = xmmword_2997286D0;
    *(v2 + 8) = 0;
    *(v2 + 9) = 0;
    *(v2 + 78) = 0;
    *(v2 + 43) = -1;
    v2[88] = 0;
    *(v2 + 23) = 0;
    *(v2 + 12) = -1;
    *(v2 + 13) = 0;
    *(v2 + 28) = -1;
    v2[116] = -1;
    *(v2 + 132) = -1;
    *(v2 + 125) = -1;
    *(v2 + 118) = -1;
    *(v2 + 140) = 0x7FFFFFFFLL;
    v2[148] = 0;
    *(v2 + 75) = -1;
    *(v2 + 19) = -COERCE_DOUBLE(0x8000000080000000);
  }

  v3 = &__src[292];
  v4 = 330624;
  do
  {
    s_GncS_CacheMeasData::s_GncS_CacheMeasData(v3);
    v3 = (v5 + 165312);
    v4 -= 165312;
  }

  while (v4);
  v6 = &__src[330916];
  v7 = 104;
  do
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    v6[4] = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = 0;
    *(v6 + 30) = 0;
    *(v6 + 5) = 0;
    *(v6 + 47) = 0;
    v6 += 52;
    v7 -= 52;
  }

  while (v7);
  result = memcpy(g_GncSFGClientData, __src, 0x50D0CuLL);
  g_GncSConfig = 65536000;
  return result;
}

void GncS04_07SndDbgNmea(char *a1, size_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncS04_07SndDbgNmea", 207, 1, 0x18uLL);
  if (v4)
  {
    v5 = v4;
    v6 = gnssOsa_Calloc("GncS04_07SndDbgNmea", 216, (a2 + 1), 1uLL);
    v5[2] = v6;
    if (v6)
    {
      memcpy_s("GncS04_07SndDbgNmea", 223, v6, (a2 + 1), a1, a2);
      *(v5 + 6) = a2;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NMEA_DATA_IND =>GNM Len,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncS04_07SndDbgNmea", *(v5 + 6));
        LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
      }

      AgpsSendFsmMsg(130, 128, 8521475, v5);
    }

    else
    {

      free(v5);
    }
  }
}

void GncS04_08SndStartPosNmea(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = g_GncSConfig;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0);
  if ((IsLoggingAllowed & 1) != 0 || (v2 & 0x200) != 0)
  {
    bzero(__str, 0x400uLL);
    v4 = mach_continuous_time();
    v7 = snprintf(__str, 0x400uLL, "$PDPSS,%u,%u,%u,%u,%d,%u,%u,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v4), *(a1 + 2), *(a1 + 4), *(a1 + 49), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 34), *(a1 + 36), *(a1 + 32));
    if (HswUtil_AddNmeaCS(__str, 0x400u, &v7))
    {
      if (IsLoggingAllowed)
      {
        LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, __str, v7);
      }

      if ((v2 & 0x200) != 0)
      {
        GncS04_07SndDbgNmea(__str, v7);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(v8, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(v8, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncS04_08SndStartPosNmea", 772, v7);
      LbsOsaTrace_WriteLog(8u, v8, v6, 0, 1);
    }
  }
}

void GncS04_20SendUpdateToGncpe(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  BYTE8(v4) = 0;
  *&v4 = 0;
  BYTE12(v4) = 1;
  HIWORD(v4) = *(a1 + 2);
  v5 = *(a1 + 32) & 0xF;
  v6 = *(a1 + 8);
  v15 = *(a1 + 50);
  v1 = *(a1 + 4);
  if (*(a1 + 4))
  {
    v1 = *(a1 + 28);
  }

  v2 = *(a1 + 12);
  v7 = v1;
  v8 = v2;
  v3 = *(a1 + 34);
  v9 = *(a1 + 24);
  v10 = v3;
  v11 = 0;
  v12 = *(a1 + 33);
  v13 = 1;
  v14 = *(a1 + 49);
  GncS03_07PosEventUpdate(&v4);
}

uint64_t GncS04_29GetRespUpdtStat(uint64_t a1, int a2, _BYTE *a3, BOOL *a4, _BYTE *a5)
{
  v38 = *MEMORY[0x29EDCA608];
  if (!a5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_18:
      LbsOsaTrace_WriteLog(8u, __str, v17, 2, 1);
    }

LABEL_19:
    v23 = 0;
    return v23 & 1;
  }

  if (*(a1 + 4) - 1 >= 2)
  {
    if (!*(a1 + 4))
    {
      v18 = *(a1 + 20) == 1;
      if (*(a1 + 16))
      {
        v19 = *(a1 + 8);
        v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v19;
        if (HIWORD(g_GncSConfig) + v20 + 30 > *(a1 + 16))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PeriodicSessStopTm,%u,TimeElapsed,%u\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 73, "GncS04_29GetRespUpdtStat", *(a1 + 16), v20);
            v18 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v22, 4, 1);
          }

          else
          {
            v18 = 1;
          }
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v23 = 1;
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Periodc ID,%u,Qual,%hhu,IsFinal,%u,SndUpdt,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 73, "GncS04_29GetRespUpdtStat", *(a1 + 2), a2, v18, 1);
        LbsOsaTrace_WriteLog(8u, __str, v35, 4, 1);
        v24 = 0;
        v30 = 0;
      }

      else
      {
        v24 = 0;
        v30 = 0;
        v23 = 1;
      }

      goto LABEL_30;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", v36);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v10 = *(a1 + 8);
  v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v10;
  if (a2 == 1 && !*(a1 + 48))
  {
    v24 = 0;
  }

  else
  {
    v12 = v11 + 30;
    if ((v11 + 30) < *(a1 + 28))
    {
      LatestUpdtOsTime = GncP_GetLatestUpdtOsTime();
      if (LatestUpdtOsTime)
      {
        v14 = LatestUpdtOsTime;
        v15 = mach_continuous_time();
        v16 = HIWORD(g_GncSConfig);
        if ((*&g_MacClockTicksToMsRelation * v15) - v14 <= HIWORD(g_GncSConfig))
        {
          v11 = v14 - *(a1 + 8);
          v12 = v11 + 30;
        }
      }

      else
      {
        v16 = HIWORD(g_GncSConfig);
      }

      v24 = (v12 + v16) > *(a1 + 28);
      v25 = v24;
      goto LABEL_25;
    }

    v24 = 1;
  }

  v25 = 1;
LABEL_25:
  v26 = *(a1 + 4);
  v27 = v26 == 1;
  v28 = v26 != 1;
  v29 = v27;
  LOBYTE(v18) = v29 | v25;
  v30 = v25 ^ 1;
  v23 = v28 | v25;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SS ID,%u,Qual,%hhu,IsFinal,%u,SndUpdt,%u,TimeElapsed,%u,RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 73, "GncS04_29GetRespUpdtStat", *(a1 + 2), a2, v18 & 1, v23 & 1, v11, *(a1 + 28));
    LbsOsaTrace_WriteLog(8u, __str, v32, 4, 1);
  }

LABEL_30:
  *a5 = v18 & 1;
  if (a3)
  {
    *a3 = v30;
  }

  if (a4)
  {
    *a4 = v24;
  }

  return v23 & 1;
}

void GncS04_33SessStopAckTimrExpiry(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if (byte_2A18CCF48 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NoResp from GNCP\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncS04_33SessStopAckTimrExpiry");
      LbsOsaTrace_WriteLog(8u, __str, v1, 2, 1);
    }

    byte_2A18CCF48 = 0;
    GncS04_31ChkSendPendingStopAck(0);
  }
}

uint64_t GncS04_31ChkSendPendingStopAck(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v8 = *MEMORY[0x29EDCA608];
  v3 = 1;
  do
  {
    v4 = v3;
    if (g_GncSFGClientData[52 * v2 + 330916] == 3)
    {
      GncS04_21SendStopPosResp(v1, *&g_GncSFGClientData[52 * v2 + 330918]);
      result = GncS04_05DeRegClient(v2);
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  if (byte_2A18CCF48)
  {
    result = AgpsFsmStopTimer(8523270);
    if (result)
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncS04_31ChkSendPendingStopAck", 1545);
        result = LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
      }
    }

    byte_2A18CCF48 = 0;
  }

  return result;
}

void GncS04_36SessStartAckTimrExp(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if (byte_2A18CCF40 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NoResp from GNCP\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncS04_36SessStartAckTimrExp");
      LbsOsaTrace_WriteLog(8u, __str, v1, 2, 1);
    }

    byte_2A18CCF40 = 0;
    GncS04_35ChkSendPendingStartAck(0);
  }
}

void GncS04_35ChkSendPendingStartAck(uint64_t result)
{
  v1 = result;
  v2 = 0;
  *&v12[251] = *MEMORY[0x29EDCA608];
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = &g_GncSFGClientData[52 * v2 + 330916];
    if (*v5 == 2)
    {
      GncS04_22SendStartPosResp(v1, *&g_GncSFGClientData[52 * v2 + 330918]);
      if (v1 == 255)
      {
        *v5 = 1;
      }

      else
      {
        v6 = *&g_GncSFGClientData[52 * v2 + 330918];
        __str[8] = 0;
        *__str = 0;
        v10 = 0;
        *v12 = 0;
        v11 = 0;
        *(&v12[1] + 3) = 0;
        __str[12] = 1;
        *&__str[14] = v6;
        __str[16] = 0;
        GncS03_07PosEventUpdate(__str);
        GncS04_05DeRegClient(v2);
      }
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  if (byte_2A18CCF40)
  {
    if (AgpsFsmStopTimer(8523014))
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncS04_35ChkSendPendingStartAck", 1545);
        LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
      }
    }

    byte_2A18CCF40 = 0;
  }
}

void GncS04_41SendNavData(__int16 a1, char a2, char a3, _DWORD *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = gnssOsa_Calloc("GncS04_41SendNavData", 1339, 1, 0x20uLL);
  if (v8)
  {
    v9 = v8;
    v10 = gnssOsa_Calloc("GncS04_41SendNavData", 1345, 1, 0x1738uLL);
    v9[3] = v10;
    if (v10)
    {
      *(v9 + 3) = *a4;
      *(v9 + 8) = a1;
      *(v9 + 18) = a2;
      *(v9 + 19) = a3;
      memcpy(v10, a4 + 2, 0x1738uLL);
      v11 = g_GncSConfig;
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0);
      if ((IsLoggingAllowed & 1) != 0 || (v11 & 0x200) != 0)
      {
        bzero(v20, 0x400uLL);
        v15 = v9[3];
        v18 = snprintf(v20, 0x400uLL, "$PDPPR,%u,%u,%u,%.9f,%.9f,%f,%.12f,%.12f,%u,%u,%u,%u,%u,%u", *(v9 + 3), *v15, *(v9 + 8), *(v15 + 104), *(v15 + 112), *(v15 + 128), *(v15 + 40), *(v15 + 32), *(v15 + 306), *(v15 + 307), *(v15 + 296), *(v15 + 304), *(v15 + 289), *(v15 + 300));
        if (HswUtil_AddNmeaCS(v20, 0x400u, &v18))
        {
          if (IsLoggingAllowed)
          {
            LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, v20, v18);
          }

          if ((v11 & 0x200) != 0)
          {
            GncS04_07SndDbgNmea(v20, v18);
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 69, "GncS04_40SndNavRespNmea", 772, v18);
          LbsOsaTrace_WriteLog(8u, __str, v17, 0, 1);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NAV_DATA_IND =>GNM ID,%u,OSTTick,%u,BBTick,%u,Valid,%u,VSF,%u,SVView,%u,SVUsed,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 73, "GncS04_41SendNavData", *(v9 + 8), *(v9 + 3), *v9[3], *(v9 + 19), *(v9[3] + 289), *(v9[3] + 306), *(v9[3] + 307));
        LbsOsaTrace_WriteLog(8u, __str, v14, 4, 1);
      }

      AgpsSendFsmMsg(130, 128, 8520707, v9);
    }

    else
    {

      free(v9);
    }
  }
}

uint64_t GncS04_42GetValidNavDataCopy(uint64_t a1, int a2, unsigned int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  GncP_GetNavData(a1);
  if (*(a1 + 20))
  {
    if ((*a1 - a2) >= 0x3E9)
    {
      v6 = a2 - *a1;
    }

    else
    {
      v6 = 0;
    }

    if (v6 <= HIWORD(g_GncSConfig) + 900)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v10 = 1;
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NavData PosDataAge,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GncS04_42GetValidNavDataCopy", v6);
        v13 = 5;
LABEL_14:
        LbsOsaTrace_WriteLog(8u, __str, v12, v13, 1);
        return v10;
      }
    }

    else
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
      if (v6 > a3)
      {
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NavData NA PosDataAge,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncS04_42GetValidNavDataCopy", v6);
          LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
        }

        return 0;
      }

      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NavData AllwdAge,%u,PosDataAge,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "GncS04_42GetValidNavDataCopy", a3, v6);
        v10 = 1;
        v12 = v15;
        v13 = 4;
        goto LABEL_14;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t GncS04_65PopulateMeasData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v52 = *MEMORY[0x29EDCA608];
  *(a4 + 12) = *(a2 + 12);
  *(a4 + 165204) = *(a2 + 165204);
  v7 = *(a2 + 165208);
  v8 = *(a2 + 165224);
  v9 = *(a2 + 165240);
  *(a4 + 165256) = *(a2 + 165256);
  *(a4 + 165224) = v8;
  *(a4 + 165240) = v9;
  *(a4 + 165208) = v7;
  *(a4 + 165260) = *(a2 + 165260);
  v10 = *(a2 + 165264);
  *(a4 + 165272) = *(a2 + 165272);
  *(a4 + 165264) = v10;
  *(a4 + 684) = *(a2 + 684);
  *(a4 + 688) = *(a2 + 688);
  *(a4 + 700) = *(a2 + 700);
  *(a4 + 710) = *(a2 + 710);
  *(a4 + 712) = *(a2 + 712);
  *(a4 + 692) = *(a3 + 12);
  *(a4 + 696) = *(a3 + 10);
  *(a4 + 698) = *(a3 + 8);
  *(a4 + 699) = *(a3 + 16);
  v11 = *(a3 + 20);
  *(a4 + 704) = v11;
  if (*(a2 + 720))
  {
    v13 = 0;
    if (*(a2 + 720) >= 0x10u)
    {
      v14 = 16;
    }

    else
    {
      v14 = *(a2 + 720);
    }

    v15 = (a2 + 736);
    while (1)
    {
      v16 = a2 + 724 + 10280 * v13;
      if (*v16 == v11)
      {
        if (*(v16 + 4))
        {
          break;
        }
      }

LABEL_21:
      ++v13;
      v15 += 10280;
      if (v13 == v14)
      {
        LOBYTE(v13) = v14;
        goto LABEL_33;
      }
    }

    v17 = 0;
    v18 = v16 + 8;
    if (*(v16 + 4) - 1 >= 7)
    {
      v19 = 7;
    }

    else
    {
      v19 = (*(v16 + 4) - 1);
    }

    v20 = (v19 + 1);
    v21 = v15;
    while (1)
    {
      v22 = v18 + 1284 * v17;
      if (*v22 == *(a3 + 24))
      {
        LODWORD(v22) = *(v22 + 2);
        if (v22)
        {
          break;
        }
      }

LABEL_20:
      ++v17;
      v21 += 1284;
      if (v17 == v20)
      {
        goto LABEL_21;
      }
    }

    v23 = 0;
    if (v22 >= 0x40)
    {
      v22 = 64;
    }

    else
    {
      v22 = v22;
    }

    v24 = v21;
    while (*v24 != *(a3 + 25))
    {
      ++v23;
      v24 += 20;
      if (v22 == v23)
      {
        goto LABEL_20;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Found SVId,%u,Idx,%u,SgnlIdx,%u,GnssIdx,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 73, "GncS04_64PopulateGnssSvMeas", *(a3 + 25), v23, v17, v13);
      LbsOsaTrace_WriteLog(8u, __str, v26, 4, 1);
    }

    *(a4 + 720) = 1;
    *(a4 + 724) = *v16;
    *(a4 + 728) = *(v16 + 4);
    v27 = v18 + 1284 * v17;
    *(a4 + 732) = *v27;
    *(a4 + 733) = *(v27 + 1);
    v28 = *v24;
    *(a4 + 752) = *(v24 + 4);
    *(a4 + 736) = v28;
    v29 = *(v27 + 2);
    if (*(v27 + 2))
    {
      v30 = 0;
      v31 = 0;
      do
      {
        if (v23)
        {
          v32 = a4 + 736 + 20 * ++v31;
          v33 = *v21;
          *(v32 + 16) = *(v21 + 4);
          *v32 = v33;
          v29 = *(v27 + 2);
        }

        if (v30 > 0x3E)
        {
          break;
        }

        ++v30;
        v21 += 20;
        --v23;
      }

      while (v30 < v29);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v34 = mach_continuous_time();
      v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssId,%u,NumSVMeas,%u,NumSgnl,%u,NumGnss,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 73, "GncS04_64PopulateGnssSvMeas", *(a4 + 724), *(a4 + 734), *(a4 + 728), *(a4 + 720));
      LbsOsaTrace_WriteLog(8u, __str, v35, 4, 1);
    }

LABEL_33:
    v6 = a1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v36 = *(a2 + 720);
  if (*(a2 + 720))
  {
    v37 = *(a4 + 720);
    if (v37 <= 0xF)
    {
      v38 = 0;
      v39 = (a2 + 724);
      v40 = a4 + 724;
      v41 = v13;
      do
      {
        if (v41 && (*v39 & *(v6 + 33)) != 0)
        {
          memcpy((v40 + 10280 * v37), v39, 0x2828uLL);
          ++*(a4 + 720);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v42 = mach_continuous_time();
            v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssId,%u,NumSVMeas,%u,NumSgnl,%u,NumGnss,%u,Idx,%u\n", (*&g_MacClockTicksToMsRelation * v42), "GNC", 73, "GncS04_64PopulateGnssSvMeas", *(v40 + 10280 * v37), *(v40 + 10280 * v37 + 10), *(a4 + 728), *(a4 + 720), v37);
            LbsOsaTrace_WriteLog(8u, __str, v43, 4, 1);
          }

          ++v37;
          v36 = *(a2 + 720);
        }

        if (v38 > 0xE)
        {
          break;
        }

        if (++v38 >= v36)
        {
          break;
        }

        v39 += 2570;
        --v41;
      }

      while (v37 < 0x10);
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v45 = mach_continuous_time();
    v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TotalGnss,%u,UsedGnss,%u,ConstMask,%u\n", (*&g_MacClockTicksToMsRelation * v45), "GNC", 73, "GncS04_64PopulateGnssSvMeas", *(a2 + 720), *(a4 + 720), *(v6 + 33));
    result = LbsOsaTrace_WriteLog(8u, __str, v46, 4, 1);
  }

  if (*(a4 + 720))
  {
    *(a4 + 16) |= 2u;
    v47 = 1;
  }

  else
  {
    v47 = 7;
  }

  *(a4 + 680) = v47;
  if ((*(v6 + 33) & 1) != 0 && *(a2 + 37))
  {
    memcpy((a4 + 20), (a2 + 20), 0x292uLL);
    *(a4 + 16) |= 1u;
    *(a4 + 32) = 1;
    result = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v48 = mach_continuous_time();
      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumGpsMeas,%u\n", (*&g_MacClockTicksToMsRelation * v48), "GNC", 73, "GncS04_65PopulateMeasData", *(a4 + 37));
      return LbsOsaTrace_WriteLog(8u, __str, v49, 4, 1);
    }
  }

  else
  {
    *(a4 + 32) = 7;
  }

  return result;
}

uint64_t GncS04_71CheckAgeLimitCond(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v88 = *MEMORY[0x29EDCA608];
  v51[0] = 0;
  *v52 = 0;
  *(&v52[1] + 3) = 0;
  *&v52[5] = 0;
  *&v52[3] = 0;
  v53 = 0;
  v68 = 0u;
  memset(v69, 0, sizeof(v69));
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  bzero(v70, 0x28CuLL);
  for (i = 0; i != 384; i += 3)
  {
    v6 = v51 + i;
    *(v6 + 478) = 0;
    v6[958] = v70[i + 654] & 0xE0;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v7 = &g_GncSFGClientData[52 * v3 + 330916];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  *&v70[1036] = 0u;
  v71 = 0u;
  bzero(&v86, 0x1109uLL);
  v8 = &g_GncSFGClientData[52 * v3 + 330948];
  if ((v7[32] & 0xC) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(v87, 0x410uLL);
      v43 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = snprintf(v87, 0x40FuLL, "%10u %s%c %s: AgeLimit NA ID,%u,PosOutput,%u\n", v43);
LABEL_29:
      v22 = 1;
      goto LABEL_30;
    }

    return 1;
  }

  if ((GncS04_42GetValidNavDataCopy(v51, v4, *(v7 + 11)) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(v87, 0x410uLL);
      mach_continuous_time();
      v9 = snprintf(v87, 0x40FuLL, "%10u %s%c %s: NavData NA ID,%u\n");
      goto LABEL_29;
    }

    return 1;
  }

  v10 = *(v7 + 11);
  if (*(v7 + 17))
  {
    v11 = *(v7 + 17);
  }

  else
  {
    v11 = 100;
  }

  if (*(v7 + 18))
  {
    v12 = *(v7 + 18);
  }

  else
  {
    v12 = 150;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(v87, 0x410uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = v51[0];
    v15 = mach_continuous_time();
    v16 = snprintf(v87, 0x40FuLL, "%10u %s%c %s: CurrPos Age,%u,VSF,%u,HAcc,%f,VAcc,%f\n", v13, "GNC", 73, "GncS04_70QualifyNavForAgeLimit", (*&g_MacClockTicksToMsRelation * v15) - v14, v69[17], *(&v64 + 1), *&v64);
    LbsOsaTrace_WriteLog(8u, v87, v16, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(v87, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(v87, 0x40FuLL, "%10u %s%c %s: SessReq Age,%u,HAcc,%u,VAcc,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 73, "GncS04_70QualifyNavForAgeLimit", v10, v11, v12);
    LbsOsaTrace_WriteLog(8u, v87, v18, 4, 1);
  }

  v19 = v51[0];
  if (!v51[0])
  {
    goto LABEL_24;
  }

  v20 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v21 = v20 - v19;
  if (v19 - v20 < 0x3E9)
  {
    v21 = 0;
  }

  if (v21 >= v10 || v69[17] != 1 || *(&v64 + 1) > v11 || *&v64 > v12)
  {
LABEL_24:
    v22 = 1;
    goto LABEL_25;
  }

  GncS04_22SendStartPosResp(255, *(v7 + 1));
  v24 = *v8;
  v22 = (*v8 & 1) == 0;
  if (*v8)
  {
    GncS04_41SendNavData(*(v7 + 1), 1, 1, v51);
    v24 = *v8;
  }

  if ((v24 & 2) != 0)
  {
    v25 = 0;
    v44 = 0;
    *v45 = -1;
    *&v45[4] = 0;
    *&v45[8] = xmmword_2997286D0;
    *&v45[24] = 0;
    *&v46 = 0;
    *(&v46 + 6) = 0;
    HIWORD(v46) = -1;
    LOBYTE(v47) = 0;
    DWORD1(v47) = 0;
    *(&v47 + 1) = -1;
    *v48 = 0;
    *&v48[8] = -1;
    *&v48[28] = -1;
    *&v48[14] = -1;
    *&v48[21] = -1;
    v48[12] = -1;
    *&v48[36] = 0x7FFFFFFFLL;
    v48[44] = 0;
    *&v48[46] = -1;
    v49 = -COERCE_DOUBLE(0x8000000080000000);
    do
    {
      v26 = &v45[v25 - 8];
      *(v26 + 34) = 0;
      *(v26 + 32) = 0;
      v26[132] = 0;
      v26[140] = -1;
      *(v26 + 71) = -1;
      *(v26 + 36) = -1;
      v26[148] = -1;
      v25 += 28;
      *(v26 + 38) = -1;
    }

    while (v25 != 56);
    v50 = 0;
    GncP_GetGADData(&v44);
    if (*&v45[20] != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(v87, 0x410uLL);
        v40 = mach_continuous_time();
        v41 = snprintf(v87, 0x40FuLL, "%10u %s%c %s: GADData NA ID,%u\n", (*&g_MacClockTicksToMsRelation * v40), "GNC", 73, "GncS04_71CheckAgeLimitCond", *(v7 + 1));
        LbsOsaTrace_WriteLog(8u, v87, v41, 4, 1);
      }

      return 1;
    }

    v27 = gnssOsa_Calloc("GncS04_71CheckAgeLimitCond", 2431, 1, 0x20uLL);
    if (v27)
    {
      v28 = v27;
      v29 = gnssOsa_Calloc("GncS04_71CheckAgeLimitCond", 2437, 1, 0x78uLL);
      v28[3] = v29;
      if (!v29)
      {
        free(v28);
        return 1;
      }

      v30 = HIDWORD(v44);
      *(v28 + 3) = v44;
      *(v28 + 8) = *(v7 + 1);
      *(v28 + 9) = 257;
      v31 = *v48;
      v32 = *&v48[32];
      v33 = *&v48[16];
      v29[14] = v49;
      *(v29 + 5) = v33;
      *(v29 + 6) = v32;
      *(v29 + 4) = v31;
      v34 = *v45;
      v35 = *&v45[16];
      v36 = v47;
      *(v29 + 2) = v46;
      *(v29 + 3) = v36;
      *v29 = v34;
      *(v29 + 1) = v35;
      v37 = v28[3];
      *v37 = *(v7 + 1);
      *(v37 + 4) = 1;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(v87, 0x410uLL);
        v38 = mach_continuous_time();
        v39 = snprintf(v87, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_GAD_IND =>GNM ID,%u,OSTTick,%u,BBTick,%u,Quality,%hhu\n", (*&g_MacClockTicksToMsRelation * v38), "GNC", 73, "GncS04_71CheckAgeLimitCond", *(v28 + 8), *(v28 + 3), v30, 1);
        LbsOsaTrace_WriteLog(8u, v87, v39, 4, 1);
      }

      AgpsSendFsmMsg(130, 128, 8520963, v28);
      v22 = 0;
      goto LABEL_25;
    }

    return 1;
  }

LABEL_25:
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(v87, 0x410uLL);
    v23 = mach_continuous_time();
    v9 = snprintf(v87, 0x40FuLL, "%10u %s%c %s: SendReqGncP,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 73, "GncS04_71CheckAgeLimitCond", v22);
LABEL_30:
    LbsOsaTrace_WriteLog(8u, v87, v9, 4, 1);
  }

  return v22;
}

void GncS04_22SendStartPosResp(int a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncS04_22SendStartPosResp", 447, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 6) = a2;
    v4[14] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_START_POS_RSP =>GNM ID,%hu,Code,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS04_22SendStartPosResp", a2, a1);
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(130, 128, 8519684, v5);
  }
}

uint64_t GncS04_72SendUpdates(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v238 = *MEMORY[0x29EDCA608];
  result = mach_continuous_time();
  v3 = 0;
  v207 = (*&g_MacClockTicksToMsRelation * result);
  v4 = 1;
  v204 = v1;
  do
  {
    v5 = v4;
    v6 = &g_GncSFGClientData[52 * v3 + 330916];
    if (*v6)
    {
      v7 = &g_GncSFGClientData[52 * v3 + 330916];
    }

    else
    {
      v7 = 0;
    }

    if (*v6 != 1)
    {
      goto LABEL_152;
    }

    v208 = v4;
    if (!*&g_GncSFGClientData[52 * v3 + 330936])
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
      v5 = v208;
      if (!result)
      {
        goto LABEL_152;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NoUpdt ID,%u,NumFix,0\n");
      goto LABEL_12;
    }

    if ((v207 - *&g_GncSFGClientData[52 * v3 + 330924] + 30) < *&g_GncSFGClientData[52 * v3 + 330928])
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
      v5 = v208;
      if (!result)
      {
        goto LABEL_152;
      }

      bzero(__str, 0x410uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NoUpdt ID,%u,Unsol,%c,TmElapsed,%u,StartUpdt,%u\n", v8, "GNC");
      goto LABEL_12;
    }

    if (v1)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        goto LABEL_20;
      }

      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updt Unsol ID,%u,Type,%hhu,PrevUpdt,%u\n", v12);
      goto LABEL_19;
    }

    v14 = g_GncSFGClientData[52 * v3 + 330920];
    result = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
    if (!v14)
    {
      v1 = v204;
      v5 = v208;
      if (!result)
      {
        goto LABEL_152;
      }

      bzero(__str, 0x410uLL);
      v68 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NoUpdt ID,%u,Type,%hhu,Unsol,N,PrevUpdt,%u\n", v68);
LABEL_12:
      v10 = v9;
      v11 = 4;
      goto LABEL_151;
    }

    v1 = v204;
    if (!result)
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updt ID,%u,Type,%hhu,Unsol,N,TmElapsed,%u,RespTime,%u\n", v15, "GNC");
LABEL_19:
    LbsOsaTrace_WriteLog(8u, __str, v13, 4, 1);
LABEL_20:
    v206 = &g_GncSFGClientData[52 * v3];
    if (v206[330948])
    {
      LOBYTE(v230) = 0;
      *__str = 0;
      *v214 = 0;
      *(&v214[1] + 3) = 0;
      memset(&v214[3], 0, 18);
      memset(&v214[8], 0, 262);
      bzero(&v214[74], 0x28CuLL);
      for (i = 0; i != 384; i += 3)
      {
        v17 = &__str[i];
        *(v17 + 478) = 0;
        v17[958] = *(&v214[237] + i + 2) & 0xE0;
      }

      memset(&v214[333], 0, 256);
      bzero(&v214[398], 0x1109uLL);
      ValidNavDataCopy = GncS04_42GetValidNavDataCopy(__str, v207, 0);
      v19 = ValidNavDataCopy;
      if (ValidNavDataCopy)
      {
        if (LOBYTE(v214[1488]))
        {
          if (LOBYTE(v214[1488]) >= 2u)
          {
            v20 = 2;
          }

          else
          {
            v20 = LOBYTE(v214[1488]);
          }

          v21 = &v214[1486] + 1;
          while (*(v21 - 1) != 1 || *v21 != *(v7 + 1))
          {
            v21 += 2;
            if (!--v20)
            {
              goto LABEL_34;
            }
          }

          v22 = *(v21 - 2);
        }

        else
        {
LABEL_34:
          v22 = 2;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(&v218, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(&v218, 0x40FuLL, "%10u %s%c %s: NavQual Missing ID,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 87, "GncS04_43UpdateNavSvData", *(v7 + 1));
            LbsOsaTrace_WriteLog(8u, &v218, v24, 2, 1);
          }
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(&v218, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(&v218, 0x40FuLL, "%10u %s%c %s: NavData NA ID,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 73, "GncS04_43UpdateNavSvData", *(v7 + 1));
          LbsOsaTrace_WriteLog(8u, &v218, v26, 4, 1);
        }

        v22 = 2;
      }

      RespUpdtStat = GncS04_29GetRespUpdtStat(v7, v22, 0, 0, &v230);
      if (RespUpdtStat)
      {
        GncS04_41SendNavData(*(v7 + 1), v230, v19, __str);
        if (*(v7 + 6) >> 3 >= 0x271u)
        {
          GncS03_08SessRespSentInd(v207, v214[0], *(v7 + 1), 0);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(&v218, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(&v218, 0x40FuLL, "%10u %s%c %s: NavData NoUpdt ID,%u\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 73, "GncS04_43UpdateNavSvData", *(v7 + 1));
        LbsOsaTrace_WriteLog(8u, &v218, v28, 4, 1);
      }

      if ((v206[330948] & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      LOBYTE(RespUpdtStat) = 0;
      if ((v206[330948] & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    v29 = 0;
    v230 = 0;
    LODWORD(v231[0]) = -1;
    WORD2(v231[0]) = 0;
    *(v231 + 8) = xmmword_2997286D0;
    *(&v231[1] + 1) = 0;
    *&v232 = 0;
    *(&v232 + 6) = 0;
    HIWORD(v232) = -1;
    LOBYTE(v233) = 0;
    DWORD1(v233) = 0;
    *(&v233 + 1) = -1;
    *&v234[0] = 0;
    DWORD2(v234[0]) = -1;
    BYTE12(v234[0]) = -1;
    *(&v234[1] + 12) = -1;
    *(v234 + 14) = -1;
    *(&v234[1] + 5) = -1;
    *(&v234[2] + 4) = 0x7FFFFFFFLL;
    BYTE12(v234[2]) = 0;
    HIWORD(v234[2]) = -1;
    v235 = -COERCE_DOUBLE(0x8000000080000000);
    do
    {
      v30 = &v230 + v29;
      *(v30 + 34) = 0;
      *(v30 + 32) = 0;
      v30[132] = 0;
      v30[140] = -1;
      *(v30 + 71) = -1;
      *(v30 + 36) = -1;
      v30[148] = -1;
      v29 += 28;
      *(v30 + 38) = -1;
    }

    while (v29 != 56);
    v237 = 0;
    v31 = *(v7 + 1);
    GncP_GetGADData(&v230);
    if (!v237)
    {
LABEL_55:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v35 = mach_continuous_time();
        v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GADQual Missing ID,%u\n", (*&g_MacClockTicksToMsRelation * v35), "GNC", 87, "GncS04_54UpdateGADData", *(v7 + 1));
        LbsOsaTrace_WriteLog(8u, __str, v36, 2, 1);
      }

      goto LABEL_57;
    }

    v32 = BYTE5(v231[0]);
    if (v237 >= 2u)
    {
      v33 = 2;
    }

    else
    {
      v33 = v237;
    }

    v34 = &v236;
    while (v34[1] != 1 || *(v34 + 1) != v31)
    {
      v34 += 28;
      if (!--v33)
      {
        goto LABEL_55;
      }
    }

    v83 = *v34;
    BYTE5(v231[0]) = v34[4];
    DWORD2(v234[2]) = *(v34 + 2);
    DWORD1(v234[1]) = *(v34 + 6);
    BYTE8(v234[1]) = v34[20];
    HIDWORD(v234[1]) = *(v34 + 4);
    LOWORD(v234[2]) = *(v34 + 7);
    BYTE2(v234[2]) = v34[12];
    v200 = v32;
    v84 = v32 != 0;
    LOBYTE(v211) = 0;
    v210 = 0;
    v198 = v83;
    v85 = GncS04_29GetRespUpdtStat(v7, v83, &v211, &v210 + 1, &v210);
    v86 = v85;
    if (v85)
    {
      v192 = v85;
      v87 = gnssOsa_Calloc("GncS04_54UpdateGADData", 1728, 1, 0x20uLL);
      if (!v87)
      {
        goto LABEL_57;
      }

      v195 = v87;
      v88 = gnssOsa_Calloc("GncS04_54UpdateGADData", 1734, 1, 0x78uLL);
      v89 = v195;
      v195[3] = v88;
      if (!v88)
      {
        free(v195);
        goto LABEL_57;
      }

      v190 = HIDWORD(v230);
      *(v195 + 3) = v230;
      v90 = *(v7 + 1);
      *(v195 + 8) = v90;
      v91 = v210;
      *(v195 + 18) = v210;
      *(v195 + 19) = v84;
      if (HIBYTE(v210) == 1)
      {
        v92 = 0;
        v93 = 1;
        while (1)
        {
          v94 = v93;
          v95 = &g_GncSFGClientData[132 * v92];
          if (*(v95 + 15) == v90 || (v95[28] & 1) != 0)
          {
            break;
          }

          v93 = 0;
          v92 = 1;
          if ((v94 & 1) == 0)
          {
            goto LABEL_173;
          }
        }

        if (v95[86] < BYTE14(v232) && (v95[87] < HIBYTE(v232) || v95[96] < BYTE8(v233)))
        {
          goto LABEL_170;
        }

        if ((!v200 || BYTE5(v231[0]) == 128) && *(v95 + 9))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v109 = mach_continuous_time();
            v110 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CurrData,%u,GnssUsed,%u,CacheBBTick,%u\n", (*&g_MacClockTicksToMsRelation * v109), "GNC", 73, "GncS04_50CheckGadCacheUse", v200 != 0, BYTE5(v231[0]), *(v95 + 9));
            LbsOsaTrace_WriteLog(8u, __str, v110, 4, 1);
          }

LABEL_170:
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v111 = mach_continuous_time();
            v112 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CachedGad Used\n", (*&g_MacClockTicksToMsRelation * v111), "GNC", 73, "GncS04_54UpdateGADData");
            LbsOsaTrace_WriteLog(8u, __str, v112, 4, 1);
          }

          v89 = v195;
          *(v195 + 19) = 1;
          *(v195 + 3) = *&g_GncSFGClientData[132 * v92 + 32];
          v190 = *(v95 + 9);
          v113 = v195[3];
          v114 = *(v95 + 104);
          v115 = *(v95 + 120);
          v116 = *(v95 + 136);
          *(v113 + 112) = *(v95 + 19);
          *(v113 + 80) = v115;
          *(v113 + 96) = v116;
          *(v113 + 64) = v114;
          v117 = *(v95 + 40);
          v118 = *(v95 + 56);
          v119 = *(v95 + 88);
          *(v113 + 32) = *(v95 + 72);
          *(v113 + 48) = v119;
          *v113 = v117;
          *(v113 + 16) = v118;
          v91 = v210;
          goto LABEL_174;
        }
      }

LABEL_173:
      v120 = v231[0];
      v121 = v231[1];
      v122 = v233;
      *(v88 + 2) = v232;
      *(v88 + 3) = v122;
      *v88 = v120;
      *(v88 + 1) = v121;
      v123 = v234[0];
      v124 = v234[1];
      v125 = v234[2];
      v88[14] = v235;
      *(v88 + 5) = v124;
      *(v88 + 6) = v125;
      *(v88 + 4) = v123;
LABEL_174:
      v126 = v89[3];
      *v126 = *(v7 + 1);
      *(v126 + 4) = v91;
      v127 = g_GncSConfig;
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0);
      if ((IsLoggingAllowed & 1) != 0 || (v127 & 0x200) != 0)
      {
        v189 = IsLoggingAllowed;
        bzero(&v218, 0x400uLL);
        v139 = v195[3];
        *v212 = snprintf(&v218, 0x400uLL, "$PDPGR,%u,%u,%u,%u,%u,%d,%u,%u,%u,%u,%u,%u", *(v195 + 3), v190, *(v195 + 8), *(v139 + 32), *(v139 + 36), *(v139 + 40), *(v139 + 44), v198, *(v139 + 92), *(v139 + 98), *(v139 + 5), *(v139 + 12));
        if (HswUtil_AddNmeaCS(&v218, 0x400u, v212))
        {
          if (v189)
          {
            LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, &v218, *v212);
          }

          if ((v127 & 0x200) != 0)
          {
            GncS04_07SndDbgNmea(&v218, *v212);
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v174 = mach_continuous_time();
          v175 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v174), "GNC", 69, "GncS04_53SndGadRespNmea", 772, *v212);
          LbsOsaTrace_WriteLog(8u, __str, v175, 0, 1);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v129 = mach_continuous_time();
        v130 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_GAD_IND =>GNM ID,%u,OSTTick,%u,BBTick,%u,Quality,%hhu,Valid,%u,Final,%u,GnssUsed,%u\n", (*&g_MacClockTicksToMsRelation * v129), "GNC", 73, "GncS04_54UpdateGADData", *(v195 + 8), *(v195 + 3), v190, v198, *(v195 + 19), v210, *(v195[3] + 5));
        LbsOsaTrace_WriteLog(8u, __str, v130, 4, 1);
      }

      AgpsSendFsmMsg(130, 128, 8520963, v195);
      v86 = v192;
      if (v210 == 1)
      {
        GncS03_08SessRespSentInd(v207, v190, *(v7 + 1), 1);
        v86 = v192;
      }
    }

    if (v211 == 1 && v200)
    {
      if (SBYTE5(v231[0]) == -128)
      {
        v131 = v86;
        v132 = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
        v86 = v131;
        if (v132)
        {
          bzero(__str, 0x410uLL);
          v133 = mach_continuous_time();
          v134 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Ignore BBTick,%u,GnssUsed,%u,HAccMaj,%u,HAccMin,%u,AltUnc,%u\n", (*&g_MacClockTicksToMsRelation * v133), "GNC", 73, "GncS04_51GadCacheUpdt", HIDWORD(v230), BYTE5(v231[0]), BYTE14(v232), HIBYTE(v232), BYTE8(v233));
          LbsOsaTrace_WriteLog(8u, __str, v134, 4, 1);
          v1 = v204;
          if (v131)
          {
            goto LABEL_249;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v135 = 0;
        v136 = 1;
        while (1)
        {
          v137 = v136;
          v138 = &g_GncSFGClientData[132 * v135];
          if (*(v138 + 15) == *(v7 + 1) && v138[28] == 1)
          {
            break;
          }

          v136 = 0;
          v135 = 1;
          if ((v137 & 1) == 0)
          {
            goto LABEL_248;
          }
        }

        v173 = HIDWORD(v230);
        if (HIDWORD(v230) != *(v138 + 9))
        {
          if (BYTE14(v232) > v138[86] || HIBYTE(v232) > v138[87] && BYTE8(v233) > v138[96])
          {
            if ((SBYTE5(v231[0]) & 0x80000000) == 0)
            {
              goto LABEL_248;
            }

            if (BYTE14(v232) > 0x27u)
            {
              goto LABEL_248;
            }

            if (BYTE8(v233) > 0xFu)
            {
              goto LABEL_248;
            }

            if (BYTE8(v233) > v138[96])
            {
              goto LABEL_248;
            }

            v138[96] = BYTE8(v233);
            *(v138 + 42) = WORD6(v232);
            *(v138 + 23) = DWORD1(v233);
            v194 = v86;
            v178 = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
            v86 = v194;
            if (!v178)
            {
              goto LABEL_248;
            }

            bzero(__str, 0x410uLL);
            v179 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v180 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GadCache Alt Updt Idx,%u,BBTick,%u,HAccMaj,%u,HAccMin,%u,AltUnc,%u\n", v179, "GNC");
          }

          else
          {
            *(v138 + 104) = v234[0];
            *(v138 + 120) = v234[1];
            *(v138 + 136) = v234[2];
            *(v138 + 19) = v235;
            *(v138 + 40) = v231[0];
            *(v138 + 56) = v231[1];
            *(v138 + 72) = v232;
            *(v138 + 88) = v233;
            *(v138 + 8) = v230;
            *(v138 + 9) = v173;
            v194 = v86;
            v183 = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
            v86 = v194;
            if (!v183)
            {
              goto LABEL_248;
            }

            bzero(__str, 0x410uLL);
            v184 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v180 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GadCache LLH Updt Idx,%u,BBTick,%u,HAccMaj,%u,HAccMin,%u,AltUnc,%u\n", v184, "GNC");
          }

          LbsOsaTrace_WriteLog(8u, __str, v180, 4, 1);
          v1 = v204;
          if ((v194 & 1) == 0)
          {
            goto LABEL_57;
          }

LABEL_249:
          LOBYTE(RespUpdtStat) = RespUpdtStat + 1;
          goto LABEL_57;
        }
      }
    }

LABEL_248:
    v1 = v204;
    if (v86)
    {
      goto LABEL_249;
    }

LABEL_57:
    if ((v206[330948] & 4) == 0)
    {
      v37 = RespUpdtStat;
      if ((v206[330948] & 8) != 0)
      {
        goto LABEL_87;
      }

      goto LABEL_107;
    }

    v38 = 0;
    *v212 = 0;
    v212[8] = 127;
    *&v212[10] = 0;
    *&v212[12] = 0;
    v212[16] = 0;
    *&v212[20] = 0;
    *&v212[24] = 0;
    LOBYTE(v214[0]) = 0;
    *__str = 0;
    v214[1] = -1;
    LOBYTE(v214[2]) = 0;
    *&v214[3] = 0;
    LOBYTE(v214[5]) = 0;
    *&v214[6] = 0x7FFFFFFFFFFFFFFFLL;
    LOWORD(v214[8]) = -1;
    v214[9] = 0;
    LOWORD(v214[10]) = 0;
    do
    {
      v39 = &__str[v38];
      v39[50] = -1;
      *(v39 + 51) = 0;
      v39[59] = 0;
      v38 += 10;
    }

    while (v38 != 640);
    v40 = 0;
    *&v214[171] = 0xFFFFFFFF00000000;
    LOBYTE(v214[173]) = -1;
    *&v214[174] = -1;
    *&v214[176] = 0x7FFFFFFFLL;
    LOBYTE(v214[178]) = 0;
    HIWORD(v214[178]) = -1;
    *&v214[179] = 0xFFFFFFFF7FFFFFFFLL;
    v41 = 11;
    LOBYTE(v214[181]) = 0;
    do
    {
      v42 = &v214[v41 + 171];
      *v42 = 0;
      *(v42 + 4) = 0;
      v43 = v40;
      for (j = 2; j != 2570; j += 321)
      {
        v45 = &v42[j];
        *v45 = 0;
        *(v45 + 2) = 0;
        v46 = v43;
        v47 = 1280;
        do
        {
          v48 = &__str[v46];
          v48[748] = -1;
          *(v48 + 189) = 0;
          *(v48 + 380) = 0;
          *(v48 + 191) = 0;
          v48[753] = 0;
          *(&v214[185] + v46 + 1) = 0;
          v46 += 20;
          v47 -= 20;
        }

        while (v47);
        v43 += 1284;
      }

      v41 += 2570;
      v40 += 10280;
    }

    while (v41 != 41131);
    LOBYTE(v214[41302]) = 0;
    *&v214[41303] = 0x700000000;
    *&v214[41305] = 0;
    *&v214[41307] = 0;
    *(&v214[41308] + 2) = 0;
    HIWORD(v214[41310]) = -1;
    LOBYTE(v214[41311]) = 0;
    v214[41312] = 0;
    *&v214[41313] = -1;
    *&v214[41315] = 0;
    v214[41317] = -1;
    LOBYTE(v214[41318]) = -1;
    *(&v214[41318] + 2) = -1;
    v49 = v216;
    v50 = 56;
    HIWORD(v214[41319]) = -1;
    do
    {
      *(v49 - 25) = 0;
      *(v49 - 17) = 127;
      *(v49 - 15) = 0;
      *(v49 - 13) = 0;
      *(v49 - 9) = 0;
      *(v49 - 5) = 0;
      *(v49 - 1) = 0;
      v49 += 28;
      v50 -= 28;
    }

    while (v50);
    v217 = 0;
    v51 = *(v7 + 10);
    if (v51 == *(v7 + 2))
    {
      v52 = 0;
    }

    else
    {
      v52 = v51;
    }

    GncP_GetMeasData(v52, __str, v7[50]);
    v53 = 0;
    v218 = 0;
    v219 = -1;
    v220 = 0;
    *v221 = xmmword_2997286D0;
    *&v221[16] = 0;
    *&v222 = 0;
    *(&v222 + 6) = 0;
    HIWORD(v222) = -1;
    LOBYTE(v223) = 0;
    DWORD1(v223) = 0;
    *(&v223 + 1) = -1;
    v224 = 0;
    v225[0] = -1;
    LOBYTE(v225[1]) = -1;
    *&v225[5] = -1;
    *(&v225[1] + 2) = -1;
    *(&v225[3] + 1) = -1;
    *&v225[7] = 0x7FFFFFFFLL;
    v226 = 0;
    v227 = -1;
    v228 = -COERCE_DOUBLE(0x8000000080000000);
    do
    {
      v54 = &v218 + v53;
      *(v54 + 34) = 0;
      *(v54 + 32) = 0;
      v54[132] = 0;
      v54[140] = -1;
      *(v54 + 71) = -1;
      *(v54 + 36) = -1;
      v54[148] = -1;
      v53 += 28;
      *(v54 + 38) = -1;
    }

    while (v53 != 56);
    v229 = 0;
    GncP_GetGADData(&v218);
    LOBYTE(v214[41302]) = HIBYTE(v220);
    *&v214[41303] = *&v221[8];
    *&v214[41307] = v222;
    *&v214[41311] = v223;
    *&v214[41315] = v224;
    *&v214[41317] = *v225;
    v214[41319] = v225[2];
    if (!v217)
    {
LABEL_83:
      v58 = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
      v59 = 0;
      if (!v58)
      {
        goto LABEL_86;
      }

      bzero(&v218, 0x410uLL);
      v60 = mach_continuous_time();
      v61 = snprintf(&v218, 0x40FuLL, "%10u %s%c %s: MeasQual Missing ID,%u\n", (*&g_MacClockTicksToMsRelation * v60), "GNC", 87, "GncS04_66UpdateMeasData", *(v7 + 1));
      LbsOsaTrace_WriteLog(8u, &v218, v61, 2, 1);
      goto LABEL_85;
    }

    v55 = LOBYTE(v214[181]);
    if (v217 >= 2u)
    {
      v56 = 2;
    }

    else
    {
      v56 = v217;
    }

    v57 = &v215;
    while (v57[1] != 1 || *(v57 + 1) != *(v7 + 1))
    {
      v57 += 28;
      if (!--v56)
      {
        goto LABEL_83;
      }
    }

    *v212 = *v57;
    *&v212[12] = *(v57 + 12);
    v96 = v57[8] <= 0x5Fu && *v57 == 255;
    v210 = 0;
    v201 = LOBYTE(v214[181]) != 0;
    v209 = 0;
    v97 = GncS04_29GetRespUpdtStat(v7, v96, &v210 + 1, &v210, &v209);
    v59 = v97;
    if (!v97)
    {
      goto LABEL_208;
    }

    v193 = v55;
    v196 = v97;
    v98 = gnssOsa_Calloc("GncS04_66UpdateMeasData", 2250, 1, 0x20uLL);
    if (!v98)
    {
      goto LABEL_85;
    }

    v199 = v98;
    v99 = gnssOsa_Calloc("GncS04_66UpdateMeasData", 2256, 1, 0x2859CuLL);
    v199[3] = v99;
    if (!v99)
    {
      free(v199);
LABEL_85:
      v59 = 0;
      goto LABEL_86;
    }

    v191 = *&__str[4];
    *(v199 + 3) = *__str;
    v100 = *(v7 + 1);
    *(v199 + 8) = v100;
    v101 = v209;
    *(v199 + 18) = v209;
    *(v199 + 19) = v201;
    *v99 = v100;
    v99[4] = v101;
    if (v210 != 1)
    {
      goto LABEL_201;
    }

    v102 = 0;
    v103 = 1;
    while (1)
    {
      v104 = v103;
      v105 = &g_GncSFGClientData[165312 * v102];
      v106 = v105 + 292;
      if (*(v105 + 147) == v100 || (*v106 & 1) != 0)
      {
        break;
      }

      v103 = 0;
      v102 = 1;
      if ((v104 & 1) == 0)
      {
        goto LABEL_201;
      }
    }

    if ((v140 = v105[165576], v202 = v212[0], v212[0] == v140) && v212[8] == v105[165584] || (v212[0] > v140 || v212[8] < v105[165584]) && (v193 || !*(v105 + 74)))
    {
LABEL_201:
      GncS04_65PopulateMeasData(v7, &v214[1], v212, v99);
      v202 = v212[0];
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(&v218, 0x410uLL);
        v185 = mach_continuous_time();
        v186 = snprintf(&v218, 0x40FuLL, "%10u %s%c %s: CachedMeas Used\n", (*&g_MacClockTicksToMsRelation * v185), "GNC", 73, "GncS04_66UpdateMeasData");
        LbsOsaTrace_WriteLog(8u, &v218, v186, 4, 1);
      }

      *(v199 + 19) = 1;
      GncS04_65PopulateMeasData(v7, (v106 + 8), (v106 + 165284), v199[3]);
      v191 = *&g_GncSFGClientData[165312 * v102 + 296];
    }

    v141 = v212[8];
    v142 = g_GncSConfig;
    v143 = LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0);
    v55 = v193;
    if ((v143 & 1) == 0 && (v142 & 0x200) == 0)
    {
      goto LABEL_204;
    }

    v188 = v143;
    bzero(&v230, 0x400uLL);
    v152 = v199[3];
    v153 = *(v152 + 720);
    if (!*(v152 + 720))
    {
      v159 = 0;
      v158 = 0;
      v157 = 0;
      v156 = 0;
      v155 = 0;
      goto LABEL_253;
    }

    v154 = 0;
    LOBYTE(v155) = 0;
    LOBYTE(v156) = 0;
    LOBYTE(v157) = 0;
    LOBYTE(v158) = 0;
    LOBYTE(v159) = 0;
    v160 = 0;
    v161 = (v152 + 734);
    do
    {
      v162 = v152 + 724 + 10280 * v154;
      v163 = *v162;
      if (*v162 == 1)
      {
        v164 = *(v162 + 4);
        if (!*(v162 + 4))
        {
          goto LABEL_245;
        }

        v165 = v161;
        do
        {
          LOBYTE(v155) = *v165 + v155;
          v165 += 1284;
          --v164;
        }

        while (v164);
      }

      if (v163 == 32)
      {
        if (!*(v162 + 4))
        {
          goto LABEL_245;
        }

        v166 = 0;
        do
        {
          v160 += v161[v166];
          v166 += 1284;
        }

        while (1284 * *(v162 + 4) != v166);
      }

      if (v163 == 2)
      {
        if (!*(v162 + 4))
        {
          goto LABEL_245;
        }

        v167 = 0;
        do
        {
          LOBYTE(v159) = v161[v167] + v159;
          v167 += 1284;
        }

        while (1284 * *(v162 + 4) != v167);
      }

      if (v163 == 64)
      {
        if (!*(v162 + 4))
        {
          goto LABEL_245;
        }

        v168 = 0;
        do
        {
          LOBYTE(v158) = v161[v168] + v158;
          v168 += 1284;
        }

        while (1284 * *(v162 + 4) != v168);
      }

      if (v163 == 16)
      {
        if (!*(v162 + 4))
        {
          goto LABEL_245;
        }

        v169 = 0;
        do
        {
          LOBYTE(v157) = v161[v169] + v157;
          v169 += 1284;
        }

        while (1284 * *(v162 + 4) != v169);
      }

      if (v163 == 4)
      {
        v170 = *(v162 + 4);
        if (*(v162 + 4))
        {
          v171 = 0;
          v172 = 1284 * v170;
          do
          {
            LOBYTE(v156) = v161[v171] + v156;
            v171 += 1284;
          }

          while (v172 != v171);
        }
      }

LABEL_245:
      ++v154;
      v161 += 10280;
    }

    while (v154 != v153);
    v155 = v155;
    LODWORD(v153) = v160;
    v159 = v159;
    v158 = v158;
    v157 = v157;
    v156 = v156;
LABEL_253:
    v211 = snprintf(&v230, 0x400uLL, "$PDPMR,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u", *(v199 + 3), v191, *(v199 + 8), *(v152 + 692), v141, v202, v155, v153, v159, v158, v157, v156, *(v152 + 12));
    if (HswUtil_AddNmeaCS(&v230, 0x400u, &v211))
    {
      if (v188)
      {
        LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, &v230, v211);
      }

      if ((v142 & 0x200) != 0)
      {
        GncS04_07SndDbgNmea(&v230, v211);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(&v218, 0x410uLL);
      v176 = mach_continuous_time();
      v177 = snprintf(&v218, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v176), "GNC", 69, "GncS04_60SndMeasRespNmea", 772, v211);
      LbsOsaTrace_WriteLog(8u, &v218, v177, 0, 1);
    }

LABEL_204:
    v1 = v204;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(&v218, 0x410uLL);
      v144 = mach_continuous_time();
      v145 = v199[3];
      v146 = snprintf(&v218, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_3GPPMEAS_DATA_IND =>GNM ID,%u,BBTick,%u,Valid,%u,Final,%u,Quality,%u,ToDUnc,%u,NumGnss,%u,NumGps,%u,GnssUsed,%u,PosStatus,%u,VelType,%u\n", (*&g_MacClockTicksToMsRelation * v144), "GNC", 73, "GncS04_66UpdateMeasData", *v145, v191, *(v199 + 19), v209, v202, v141, *(v145 + 720), *(v145 + 37), *(v145 + 165204), *(v145 + 165212), *(v145 + 165260));
      LbsOsaTrace_WriteLog(8u, &v218, v146, 4, 1);
    }

    AgpsSendFsmMsg(130, 128, 8520451, v199);
    v59 = v196;
    if (v209 == 1)
    {
      GncS03_08SessRespSentInd(v207, v191, *(v7 + 1), 1);
      v59 = v196;
    }

LABEL_208:
    if (HIBYTE(v210) == 1 && v55)
    {
      v147 = 0;
      v148 = 1;
      while (1)
      {
        v149 = v148;
        v150 = &g_GncSFGClientData[165312 * v147];
        if (*(v150 + 147) == *(v7 + 1))
        {
          v151 = v150 + 292;
          if (v150[292] == 1)
          {
            break;
          }
        }

        v148 = 0;
        v147 = 1;
        if ((v149 & 1) == 0)
        {
          goto LABEL_218;
        }
      }

      if (v212[0] < v150[165576] || v212[8] > v150[165584] || *&__str[4] == *(v150 + 74))
      {
LABEL_218:
        v1 = v204;
        goto LABEL_86;
      }

      v197 = v59;
      v203 = *&__str[4];
      memcpy(v150 + 300, &v214[1], 0x2859CuLL);
      *(v151 + 165284) = *v212;
      *(v151 + 165294) = *&v212[10];
      *(v151 + 1) = v203;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(&v218, 0x410uLL);
        v181 = mach_continuous_time();
        v182 = snprintf(&v218, 0x40FuLL, "%10u %s%c %s: MeasCache Idx,%u,BBTick,%u,Qual,%u,ToDUnc,%u\n", (*&g_MacClockTicksToMsRelation * v181), "GNC", 73, "GncS04_62MeasCacheUpdt", v147, *&__str[4], v151[165284], v151[165292]);
        LbsOsaTrace_WriteLog(8u, &v218, v182, 4, 1);
      }

      v1 = v204;
      v59 = v197;
    }

LABEL_86:
    v37 = RespUpdtStat + v59;
    if ((v206[330948] & 8) != 0)
    {
LABEL_87:
      if (!v1)
      {
        goto LABEL_107;
      }

      v62 = gnssOsa_Calloc("GncS04_37UpdateDetailedMeasData", 1239, 1, 0x110uLL);
      if (!v62)
      {
        goto LABEL_107;
      }

      v63 = v62;
      if (GncP_GetDetailedMeasData(v62))
      {
        LOBYTE(v218) = 0;
        GncS04_29GetRespUpdtStat(v7, 1, 0, 0, &v218);
        v64 = gnssOsa_Calloc("GncS04_37UpdateDetailedMeasData", 1263, 1, 0x20uLL);
        if (v64)
        {
          v65 = v64;
          v64[3] = v207;
          *(v64 + 8) = *(v7 + 1);
          *(v64 + 18) = v218;
          *(v64 + 3) = v63;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v66 = mach_continuous_time();
            v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_RAWMEAS_DATA_IND =>GNM ID,%d,OSTTick,%d,Final,%d,NumMeas,%u,NumUsed,%u\n", (*&g_MacClockTicksToMsRelation * v66), "GNC", 73, "GncS04_37UpdateDetailedMeasData", *(v65 + 8), v65[3], *(v65 + 18), v63[32], v63[120]);
            LbsOsaTrace_WriteLog(8u, __str, v67, 4, 1);
          }

          AgpsSendFsmMsg(130, 128, 8520195, v65);
          if (v206[330948] == 8)
          {
            ++v37;
          }

          v1 = v204;
          goto LABEL_107;
        }

        v108 = *(v63 + 9);
        if (v108)
        {
          free(v108);
        }

        *(v63 + 9) = 0;
        v72 = *(v63 + 31);
        v1 = v204;
        if (!v72)
        {
LABEL_104:
          *(v63 + 31) = 0;
          v73 = *(v63 + 33);
          if (v73)
          {
            free(v73);
          }

          free(v63);
          goto LABEL_107;
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v69 = mach_continuous_time();
          v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DetailMeas Updt NA ID,%u\n", (*&g_MacClockTicksToMsRelation * v69), "GNC", 87, "GncS04_37UpdateDetailedMeasData", *(v7 + 1));
          LbsOsaTrace_WriteLog(8u, __str, v70, 2, 1);
        }

        v71 = *(v63 + 9);
        if (v71)
        {
          free(v71);
        }

        *(v63 + 9) = 0;
        v72 = *(v63 + 31);
        if (!v72)
        {
          goto LABEL_104;
        }
      }

      free(v72);
      goto LABEL_104;
    }

LABEL_107:
    if (v37)
    {
      *(v7 + 10) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    }

    v74 = v7[4];
    if (v74 == 2)
    {
      v78 = *(v6 + 2);
      if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v78 < *(v7 + 7))
      {
        goto LABEL_149;
      }

      *(v6 + 5) = 0;
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        goto LABEL_149;
      }

      bzero(__str, 0x410uLL);
      v79 = mach_continuous_time();
      v80 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ID,%u,RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v79), "GNC", 73, "GncS04_30UpdateSessionParam", *(v7 + 1), *(v7 + 7));
      v81 = 4;
LABEL_126:
      LbsOsaTrace_WriteLog(8u, __str, v80, v81, 1);
      goto LABEL_149;
    }

    if (v74 == 1)
    {
      if (!v37)
      {
        *(v7 + 10) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        goto LABEL_149;
      }

LABEL_120:
      *(v6 + 5) = 0;
      goto LABEL_149;
    }

    if (v7[4])
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_149;
      }

      bzero(__str, 0x410uLL);
      v82 = mach_continuous_time();
      v80 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v82), "GNC", 87, "GncS04_30UpdateSessionParam", 770, v7[4]);
      v81 = 2;
      goto LABEL_126;
    }

    if (v37)
    {
      v75 = *(v6 + 5);
      if (v75 != -1)
      {
        *(v6 + 5) = v75 - 1;
      }
    }

    if (*(v7 + 4))
    {
      v76 = *(v6 + 2);
      v77 = mach_continuous_time();
      if (v37)
      {
        if ((*&g_MacClockTicksToMsRelation * v77) - v76 + HIWORD(g_GncSConfig) + 30 > *(v7 + 4))
        {
          goto LABEL_120;
        }
      }
    }

LABEL_149:
    result = LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0);
    v5 = v208;
    if (result)
    {
      bzero(__str, 0x410uLL);
      v107 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ID,%u,UpdtSnt,%u,PrevUpdt,%u,NumFix,%d\n", (*&g_MacClockTicksToMsRelation * v107), "GNC", 68, "GncS04_30UpdateSessionParam", *(v7 + 1), v37, *(v7 + 10), *(v6 + 5));
      v11 = 5;
LABEL_151:
      result = LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
      v5 = v208;
    }

LABEL_152:
    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  if ((byte_2A191DC10 - 3 >= 0xFFFFFFFE || byte_2A191DBDC - 3 >= 0xFFFFFFFE) && (v1 & 1) == 0)
  {
    return GncS04_74UpdateScheduler();
  }

  return result;
}