char **G5K_ME_enc_n(char **a1, int a2, __int16 a3)
{
  *&v7[142] = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  v4 = v7;
  result = STEU_Encode(a1, 110, &v5, &v4);
  if (v4 - &v5 != 6)
  {
    return gn_report_assertion_failure("ME_enc_n: Wrong Length!");
  }

  return result;
}

uint64_t GncS02_09UpdatedPosAval(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_UPDT_POS_AVAL_IND\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncS02_09UpdatedPosAval");
      LbsOsaTrace_WriteLog(8u, __str, v2, 4, 1);
    }

    GncS04_72SendUpdates(1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncS02_09UpdatedPosAval", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  return 0;
}

uint64_t GncS02_21FGSchedTimExp(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_FG_SCHED_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_21FGSchedTimExp");
      LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
    }

    GncS04_73FGPosTimerExpiry();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncS02_21FGSchedTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  return 0;
}

uint64_t GncS02_22SessStopAckTimExp(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_SESS_STOP_ACK_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_22SessStopAckTimExp");
      LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
    }

    GncS04_33SessStopAckTimrExpiry();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncS02_22SessStopAckTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  return 0;
}

uint64_t GncS02_23SessStartAckTimExp(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_SESS_START_ACK_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_23SessStartAckTimExp");
      LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
    }

    GncS04_36SessStartAckTimrExp();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncS02_23SessStartAckTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  return 0;
}

uint64_t xofScvs_Init(void)
{
  v4 = *MEMORY[0x29EDCA608];
  g_XofBceParseState = 0;
  g_XofEeParseState = 0;
  g_RtiParseState = 0;
  g_Header = 0u;
  unk_2A1926828 = 0u;
  xmmword_2A1926838 = 0u;
  unk_2A1926848 = 0u;
  xmmword_2A1926858 = 0u;
  unk_2A1926868 = 0u;
  xmmword_2A1926878 = 0u;
  *&dword_2A1926888 = 0u;
  g_PayLoad = 0u;
  unk_2A1920D00 = 0u;
  xmmword_2A1920D10 = 0u;
  *&dword_2A1920D20 = 0u;
  xmmword_2A1920D30 = 0u;
  *&dword_2A1920D40 = 0u;
  xmmword_2A1920D50 = 0u;
  *&qword_2A1920D60 = 0u;
  xmmword_2A1920D70 = 0u;
  *&qword_2A1920D80 = 0u;
  xmmword_2A1920D90 = 0u;
  *&qword_2A1920DA0 = 0u;
  xmmword_2A1920DB0 = 0u;
  *&qword_2A1920DC0 = 0u;
  xmmword_2A1920DD0 = 0u;
  unk_2A1920DE0 = 0u;
  xmmword_2A1920DF0 = 0u;
  unk_2A1920E00 = 0u;
  xmmword_2A1920E10 = 0u;
  *&qword_2A1920E20 = 0u;
  xmmword_2A1920E30 = 0u;
  xmmword_2A1920CC8 = 0u;
  unk_2A1920CD8 = 0u;
  xmmword_2A1920CA8 = 0u;
  unk_2A1920CB8 = 0u;
  xmmword_2A1920C88 = 0u;
  unk_2A1920C98 = 0u;
  xmmword_2A1920C68 = 0u;
  unk_2A1920C78 = 0u;
  g_RtiRawData = 0u;
  unk_2A1920C58 = 0u;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GCP ORB MjrVer,%u,MinVer,%u RTI MjrVer,%u,MinVer,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "xofScvs_Init", 0, 2, 5, 1, 3);
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

  return 1;
}

uint64_t xofSvcs_Deinit(void)
{
  g_XofBceParseState = 0;
  g_XofEeParseState = 0;
  g_RtiParseState = 0;
  if (qword_2A1920D60)
  {
    free(qword_2A1920D60);
  }

  qword_2A1920D60 = 0;
  if (qword_2A1920D68)
  {
    free(qword_2A1920D68);
  }

  qword_2A1920D68 = 0;
  if (xmmword_2A1920D70)
  {
    free(xmmword_2A1920D70);
  }

  *&xmmword_2A1920D70 = 0;
  if (*(&xmmword_2A1920D70 + 1))
  {
    free(*(&xmmword_2A1920D70 + 1));
  }

  *(&xmmword_2A1920D70 + 1) = 0;
  if (qword_2A1920D80)
  {
    free(qword_2A1920D80);
  }

  qword_2A1920D80 = 0;
  if (qword_2A1920D88)
  {
    free(qword_2A1920D88);
  }

  qword_2A1920D88 = 0;
  if (xmmword_2A1920D90)
  {
    free(xmmword_2A1920D90);
  }

  *&xmmword_2A1920D90 = 0;
  if (*(&xmmword_2A1920D90 + 1))
  {
    free(*(&xmmword_2A1920D90 + 1));
  }

  *(&xmmword_2A1920D90 + 1) = 0;
  if (qword_2A1920DA0)
  {
    free(qword_2A1920DA0);
  }

  qword_2A1920DA0 = 0;
  if (qword_2A1920DA8)
  {
    free(qword_2A1920DA8);
  }

  qword_2A1920DA8 = 0;
  if (xmmword_2A1920DB0)
  {
    free(xmmword_2A1920DB0);
  }

  *&xmmword_2A1920DB0 = 0;
  if (*(&xmmword_2A1920DB0 + 1))
  {
    free(*(&xmmword_2A1920DB0 + 1));
  }

  *(&xmmword_2A1920DB0 + 1) = 0;
  if (qword_2A1920DC0)
  {
    free(qword_2A1920DC0);
  }

  qword_2A1920DC0 = 0;
  if (qword_2A1920DC8)
  {
    free(qword_2A1920DC8);
  }

  qword_2A1920DC8 = 0;
  if (xmmword_2A1920DD0)
  {
    free(xmmword_2A1920DD0);
  }

  *&xmmword_2A1920DD0 = 0;
  if (*(&xmmword_2A1920DD0 + 1))
  {
    free(*(&xmmword_2A1920DD0 + 1));
  }

  xmmword_2A1926878 = 0u;
  *&dword_2A1926888 = 0u;
  xmmword_2A1926858 = 0u;
  unk_2A1926868 = 0u;
  xmmword_2A1926838 = 0u;
  unk_2A1926848 = 0u;
  g_Header = 0u;
  unk_2A1926828 = 0u;
  g_PayLoad = 0u;
  unk_2A1920D00 = 0u;
  xmmword_2A1920D10 = 0u;
  *&dword_2A1920D20 = 0u;
  xmmword_2A1920D30 = 0u;
  *&dword_2A1920D40 = 0u;
  xmmword_2A1920D50 = 0u;
  *&qword_2A1920D60 = 0u;
  xmmword_2A1920D70 = 0u;
  *&qword_2A1920D80 = 0u;
  xmmword_2A1920D90 = 0u;
  *&qword_2A1920DA0 = 0u;
  xmmword_2A1920DB0 = 0u;
  *&qword_2A1920DC0 = 0u;
  xmmword_2A1920DD0 = 0u;
  unk_2A1920DE0 = 0u;
  xmmword_2A1920DF0 = 0u;
  unk_2A1920E00 = 0u;
  xmmword_2A1920E10 = 0u;
  *&qword_2A1920E20 = 0u;
  xmmword_2A1920E30 = 0u;
  xmmword_2A1920CC8 = 0u;
  unk_2A1920CD8 = 0u;
  xmmword_2A1920CA8 = 0u;
  unk_2A1920CB8 = 0u;
  xmmword_2A1920C88 = 0u;
  unk_2A1920C98 = 0u;
  xmmword_2A1920C68 = 0u;
  unk_2A1920C78 = 0u;
  g_RtiRawData = 0u;
  unk_2A1920C58 = 0u;
  return 1;
}

uint64_t xofScvs_InjectOrbitData(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofScvs_InjectOrbitData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 - 427673) < 0xFFF979E7 || !a1 || !a3)
  {
    v9 = 8;
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return v9;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataLen,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofScvs_InjectOrbitData", 515, a2);
    v9 = 8;
LABEL_17:
    v15 = v13;
    v16 = 0;
LABEL_18:
    LbsOsaTrace_WriteLog(8u, __str, v15, v16, 1);
    return v9;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = xofSvcs00_19ParseHeader(a1, a2);
  if (v8 != 1)
  {
    v9 = v8;
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return v9;
    }

    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Header parse failed XOF cache not updated,RetVal,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 69, "xofScvs_InjectOrbitData", 770, v9);
    goto LABEL_17;
  }

  memcpy_s("xofScvs_InjectOrbitData", 136, &g_Header, 0x80u, a1, 0x80uLL);
  v23 = 0;
  v9 = xofSvcs00_20ParsePayLoad(a1, a2, 0x80u, &v23);
  if (v9 == 1 && v23 == dword_2A1926888)
  {
    g_XofEeParseState = 1;
    g_XofBceParseState = 1;
    *a3 = 1;
    v10 = HIDWORD(g_Header) + 604800 * WORD5(g_Header);
    *(a3 + 8) = v10;
    if (byte_2A192682C | byte_2A192682A)
    {
      v11 = byte_2A192682D * byte_2A192682C;
      if (v11 <= 4)
      {
        LODWORD(v11) = 4;
      }

      *(a3 + 16) = v10 + 3600 * v11;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx \n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 69, "xofScvs_InjectOrbitData", 770);
      LbsOsaTrace_WriteLog(8u, __str, v21, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 68, "xofScvs_InjectOrbitData");
      v16 = 5;
      goto LABEL_18;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Payload parse failed,RetVal,%u,ProcessedPayloadBytes,%u,Header.PayloadLen,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "xofScvs_InjectOrbitData", 770, v9, v23, dword_2A1926888);
      LbsOsaTrace_WriteLog(8u, __str, v18, 0, 1);
    }

    g_XofEeParseState = 2;
    g_XofBceParseState = 2;
  }

  return v9;
}

uint64_t xofScvs_InjectRtiData(signed __int8 *a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofScvs_InjectRtiData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if (a2 != 160 || !a1 || !a3)
  {
    v9 = 8;
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return v9;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataLen,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "xofScvs_InjectRtiData", 515, a2);
    v9 = 8;
LABEL_13:
    v11 = v14;
    v12 = 0;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = xofSvcs00_10ParseRtiData(a1, 160);
  if (v8 != 1)
  {
    v9 = v8;
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return v9;
    }

    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Parse failed,Rti cache not updated,RetVal,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 69, "xofScvs_InjectRtiData", 770, v9);
    goto LABEL_13;
  }

  memcpy_s("xofScvs_InjectRtiData", 216, &g_RtiRawData, 0xA0u, a1, 0xA0uLL);
  v9 = 1;
  g_RtiParseState = 1;
  *a3 = 1;
  *(a3 + 8) = DWORD1(g_RtiRawData) + 604800 * WORD1(g_RtiRawData);
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v9 = 1;
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 68, "xofScvs_InjectRtiData");
    v12 = 5;
LABEL_14:
    LbsOsaTrace_WriteLog(8u, __str, v11, v12, 1);
  }

  return v9;
}

uint64_t xofSvcs_GetIonoModel(void *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetIonoModel");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      memcpy_s("xofSvcs_GetIonoModel", 249, a1, 8u, &g_PayLoad, 8uLL);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = 1;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetIonoModel");
      v7 = 5;
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "xofSvcs_GetIonoModel", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    if (g_XofBceParseState)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v5 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IonoModel\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "xofSvcs_GetIonoModel", 513);
      v7 = 0;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

  return v5;
}

uint64_t xofSvcs_GetGpsUTCModel(void *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGpsUTCModel");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      memcpy_s("xofSvcs_GetGpsUTCModel", 274, a1, 0x14u, &g_PayLoad + 8, 0x14uLL);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = 1;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetGpsUTCModel");
      v7 = 5;
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "xofSvcs_GetGpsUTCModel", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    if (g_XofBceParseState)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v5 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpsUtcModel\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "xofSvcs_GetGpsUTCModel", 513);
      v7 = 0;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

  return v5;
}

uint64_t xofSvcs_GetGloChanMap(int a1, unsigned __int8 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetGloChanMap");
    LbsOsaTrace_WriteLog(8u, __str, v5, 5, 1);
  }

  if ((a1 - 25) >= 0xFFFFFFE8 && a2)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A192686B && !byte_2A1926869 && !byte_2A192686A)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 6;
        }

LABEL_10:
        bzero(__str, 0x410uLL);
        v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v6, "GNC", 68, "xofSvcs_GetGloChanMap");
        LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
        return 6;
      }

      memcpy_s("xofSvcs_GetGloChanMap", 309, a2, 2u, &g_PayLoad + 2 * (a1 - 1) + 240, 2uLL);
      if (*a2 == a1)
      {
        v18 = a2[1];
        if (v18 == 99)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v19 = mach_continuous_time();
            v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SV,%u,ChanNum not known,%d\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 73, "xofSvcs_GetGloChanMap", 0, *a2, a2[1]);
            LbsOsaTrace_WriteLog(8u, __str, v20, 4, 1);
          }

          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            return 6;
          }

          goto LABEL_10;
        }

        if ((v18 - 7) > 0xF1)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            return 1;
          }

          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 68, "xofSvcs_GetGloChanMap");
          v8 = 1;
          goto LABEL_16;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          goto LABEL_34;
        }

        bzero(__str, 0x410uLL);
        v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,ChanNum,%d\n", v23);
      }

      else
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          goto LABEL_34;
        }

        bzero(__str, 0x410uLL);
        v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqSvId,%u,XofSvId,%u\n", v21);
      }

      LbsOsaTrace_WriteLog(8u, __str, v22, 2, 1);
LABEL_34:
      v8 = 8;
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        return v8;
      }

      goto LABEL_15;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetGloChanMap", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetGloChanMap");
      LbsOsaTrace_WriteLog(8u, __str, v16, 5, 1);
    }

    if (g_XofBceParseState)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GloChanMap,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGloChanMap", 515, a1);
      LbsOsaTrace_WriteLog(8u, __str, v10, 0, 1);
    }

    v8 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
LABEL_15:
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "GNC", 68, "xofSvcs_GetGloChanMap");
LABEL_16:
      LbsOsaTrace_WriteLog(8u, __str, v12, 5, 1);
    }
  }

  return v8;
}

uint64_t xofSvcs_GetTimeModel(int a1, void *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetTimeModel");
    LbsOsaTrace_WriteLog(8u, __str, v5, 5, 1);
  }

  if (a2)
  {
    if (g_XofBceParseState == 1)
    {
      if (a1 <= 3)
      {
        if (a1 != 2)
        {
          if (a1 == 3)
          {
            if (!byte_2A1926849 && !byte_2A192684A && !byte_2A192684B)
            {
              return 6;
            }

            if (!dword_2A1920D20 && !dword_2A1920D24 && !byte_2A1920D28)
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                mach_continuous_time();
                v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Qzss,TA0,0,TA1,0,TA2,0\n");
                goto LABEL_53;
              }

              return 6;
            }

            v15 = &xmmword_2A1920D10 + 12;
            v16 = 404;
            goto LABEL_63;
          }

          goto LABEL_56;
        }

        if (!BYTE1(xmmword_2A1926838) && __PAIR16__(BYTE2(xmmword_2A1926838), 0) == BYTE3(xmmword_2A1926838))
        {
          return 6;
        }

        if (!xmmword_2A1920D10 && !BYTE8(xmmword_2A1920D10))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            mach_continuous_time();
            v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sbas,TA0,0,TA1,0,TA2,0\n");
            goto LABEL_53;
          }

          return 6;
        }

        v15 = &unk_2A1920D0C;
        v16 = 381;
      }

      else
      {
        switch(a1)
        {
          case 4:
            if (!BYTE1(xmmword_2A1926858) && __PAIR16__(BYTE2(xmmword_2A1926858), 0) == BYTE3(xmmword_2A1926858))
            {
              return 6;
            }

            if (!xmmword_2A1920D30 && !BYTE8(xmmword_2A1920D30))
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                mach_continuous_time();
                v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gal,TA0,0,TA1,0,TA2,0\n");
                goto LABEL_53;
              }

              return 6;
            }

            v15 = &unk_2A1920D2C;
            v16 = 427;
            break;
          case 5:
            if (!byte_2A1926869 && !byte_2A192686A && !byte_2A192686B)
            {
              return 6;
            }

            if (!dword_2A1920D40 && !dword_2A1920D44 && !byte_2A1920D48)
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                mach_continuous_time();
                v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Glo,TA0,0,TA1,0,TA2,0\n");
                goto LABEL_53;
              }

              return 6;
            }

            v15 = &xmmword_2A1920D30 + 12;
            v16 = 450;
            break;
          case 6:
            if (!BYTE1(xmmword_2A1926878) && __PAIR16__(BYTE2(xmmword_2A1926878), 0) == BYTE3(xmmword_2A1926878))
            {
              return 6;
            }

            if (!xmmword_2A1920D50 && !BYTE8(xmmword_2A1920D50))
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                mach_continuous_time();
                v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Bds,TA0,0,TA1,0,TA2,0\n");
LABEL_53:
                LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
                return 6;
              }

              return 6;
            }

            v15 = &unk_2A1920D4C;
            v16 = 473;
            break;
          default:
LABEL_56:
            v7 = 8;
            if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
            {
              return v7;
            }

            bzero(__str, 0x410uLL);
            v14 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "xofSvcs_GetTimeModel", 515, a1);
            v10 = 2;
            goto LABEL_17;
        }
      }

LABEL_63:
      memcpy_s("xofSvcs_GetTimeModel", v16, a2, 0x10u, v15, 0x10uLL);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v7 = 1;
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 68, "xofSvcs_GetTimeModel");
      v10 = 5;
      goto LABEL_17;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "xofSvcs_GetTimeModel", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
    }

    if (g_XofBceParseState)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v7 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "xofSvcs_GetTimeModel", 515, a1);
      v10 = 0;
LABEL_17:
      LbsOsaTrace_WriteLog(8u, __str, v9, v10, 1);
    }
  }

  return v7;
}

uint64_t xofSvcs_GetGpsSvOrbData(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofSvcs_GetGpsSvOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 - 33) >= 0xE0u && a3)
  {
    if (g_XofEeParseState == 1)
    {
      if (*(&xmmword_2A1920DB0 + 1) && xofSvcs01_02GetExtEphSvIndex(1, a2, a1, &v20) == 1)
      {
        memcpy_s("xofSvcs_GetGpsSvOrbData", 645, a3, 0x40u, (*(&xmmword_2A1920DB0 + 1) + (v20 << 6)), 0x40uLL);
        if (*a3 == a2)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            return 1;
          }

          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = 1;
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "xofSvcs_GetGpsSvOrbData");
          v11 = 5;
          goto LABEL_13;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Req Svid,%u,Resp Svid,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 69, "xofSvcs_GetGpsSvOrbData", 770, a2, *a3);
          v17 = 0;
          goto LABEL_21;
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,WeekN,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetGpsSvOrbData", 769, a2, a1, HIDWORD(a1));
        v17 = 5;
LABEL_21:
        LbsOsaTrace_WriteLog(8u, __str, v16, v17, 1);
      }

      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetGpsSvOrbData", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (g_XofEeParseState)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpsExtEphData,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs_GetGpsSvOrbData", 515, a2);
      v11 = 0;
LABEL_13:
      LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
    }
  }

  return v9;
}

uint64_t xofSvcs01_02GetExtEphSvIndex(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = a2;
  v7 = a1;
  v36 = *MEMORY[0x29EDCA608];
  v34 = 0;
  if (!xofSvcs00_23GetEeNumSats(a1) || (xofSvcs00_02SvIncluded(v7, v6) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u,SvId,%u\n", v12, "GNC", 68, "xofSvcs01_02GetExtEphSvIndex", 769, v7, v6);
LABEL_22:
      v22 = v13;
      v23 = 5;
LABEL_23:
      LbsOsaTrace_WriteLog(8u, __str, v22, v23, 1);
    }

    return 6;
  }

  if (!xofSvcs00_23GetEeNumSats(v7))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u\n", v33);
    goto LABEL_11;
  }

  v8 = HIDWORD(g_Header) + 604800 * WORD5(g_Header);
  v9 = HIDWORD(a3) + 604800 * a3;
  if (v9 < v8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartTime,%llu,ReqTime,%llu,ConstellType,%u\n", v10, "GNC", 87);
LABEL_16:
    v15 = v11;
    v16 = 2;
    goto LABEL_19;
  }

  BlckLen = xofSvcs00_24GetBlckLen(v7);
  if (!BlckLen)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 69, "xofSvcs01_01GetExtEphBlockNum", 515, v7);
    v16 = 0;
    goto LABEL_19;
  }

  v18 = (v9 - v8) / (3600 * BlckLen);
  if (v18 >= 0x2B)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqTime,%llu,ConstellType,%u,BlockNum,%llu\n", v19, "GNC", 87);
    goto LABEL_16;
  }

  if (v18 >= xofSvcs00_25GetEeNumBlks(v7))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
LABEL_20:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u,SvId,%u\n", v21, "GNC", 68, "xofSvcs01_02GetExtEphSvIndex", 769, v7, v6);
        goto LABEL_22;
      }

      return 6;
    }

    bzero(__str, 0x410uLL);
    v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqTime,%llu,ConstellType,%u,BlockNum,%llu\n", v28, "GNC", 68);
LABEL_11:
    v15 = v14;
    v16 = 5;
LABEL_19:
    LbsOsaTrace_WriteLog(8u, __str, v15, v16, 1);
    goto LABEL_20;
  }

  if (!XofSvcs00_03GetSvIndexCrr(v7, v6, &v34))
  {
    goto LABEL_20;
  }

  StartSv = xofSvcs02_04GetStartSv(v7);
  if (StartSv)
  {
    v26 = v6 - StartSv - v34 + xofSvcs00_23GetEeNumSats(v7) * v18;
    *a4 = v26;
    EeNumSats = xofSvcs00_23GetEeNumSats(v7);
    if (v26 < xofSvcs00_25GetEeNumBlks(v7) * EeNumSats)
    {
      return 1;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return 6;
    }

    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvIndex,%u\n", (*&g_MacClockTicksToMsRelation * v32), "GNC", 69, "xofSvcs01_02GetExtEphSvIndex", 772, *a4);
    v23 = 0;
    goto LABEL_23;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v30 = mach_continuous_time();
    v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 69, "xofSvcs01_02GetExtEphSvIndex", 515, v7);
    LbsOsaTrace_WriteLog(8u, __str, v31, 0, 1);
    return 0;
  }

  return result;
}

uint64_t xofSvcs_GetGloSvOrbData(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofSvcs_GetGloSvOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 - 25) >= 0xE8u && a3)
  {
    if (g_XofEeParseState == 1)
    {
      if (xmmword_2A1920DD0 && xofSvcs01_02GetExtEphSvIndex(5, a2, a1, &v20) == 1)
      {
        memcpy_s("xofSvcs_GetGloSvOrbData", 687, a3, 0x40u, (xmmword_2A1920DD0 + (v20 << 6)), 0x40uLL);
        if (*a3 == a2)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            return 1;
          }

          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = 1;
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "xofSvcs_GetGloSvOrbData");
          v11 = 5;
          goto LABEL_13;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Req SvId,%u,Resp Svid,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 69, "xofSvcs_GetGloSvOrbData", 770, a2, *a3);
          v17 = 0;
          goto LABEL_21;
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,WeekN,%u,Tow%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetGloSvOrbData", 769, a2, a1, HIDWORD(a1));
        v17 = 5;
LABEL_21:
        LbsOsaTrace_WriteLog(8u, __str, v16, v17, 1);
      }

      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetGloSvOrbData", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (g_XofEeParseState)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GloExtEphData,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs_GetGloSvOrbData", 515, a2);
      v11 = 0;
LABEL_13:
      LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
    }
  }

  return v9;
}

uint64_t xofSvcs_GetQzssSvOrbData(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofSvcs_GetQzssSvOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 + 53) >= 0xF6u && a3)
  {
    if (g_XofEeParseState == 1)
    {
      if (qword_2A1920DC0 && xofSvcs01_02GetExtEphSvIndex(3, a2, a1, &v20) == 1)
      {
        memcpy_s("xofSvcs_GetQzssSvOrbData", 729, a3, 0x40u, (qword_2A1920DC0 + (v20 << 6)), 0x40uLL);
        if (*a3 == a2)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            return 1;
          }

          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = 1;
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "xofSvcs_GetQzssSvOrbData");
          v11 = 5;
          goto LABEL_13;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Req SvId,%u,Resp SvId,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "xofSvcs_GetQzssSvOrbData", 770, a2, *a3);
          LbsOsaTrace_WriteLog(8u, __str, v18, 0, 1);
        }

        memset_s(a3, 0x40uLL, 0, 0x40uLL);
      }

      else
      {
        v9 = 0;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return v9;
        }

        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,WeekNo,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetQzssSvOrbData", 769, a2, a1, HIDWORD(a1));
        LbsOsaTrace_WriteLog(8u, __str, v16, 5, 1);
      }

      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetQzssSvOrbData", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (g_XofEeParseState)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QzssExtEphData,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs_GetQzssSvOrbData", 513, a2);
      v11 = 0;
LABEL_13:
      LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
    }
  }

  return v9;
}

uint64_t xofSvcs_GetGalSvOrbData(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofSvcs_GetGalSvOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 - 37) >= 0xDCu && a3)
  {
    if (g_XofEeParseState == 1)
    {
      v20 = 0;
      if (qword_2A1920DC8 && xofSvcs01_02GetExtEphSvIndex(4, a2, a1, &v20) == 1)
      {
        memcpy_s("xofSvcs_GetGalSvOrbData", 773, a3, 0x44u, (qword_2A1920DC8 + 68 * v20), 0x44uLL);
        if (*a3 == a2)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            return 1;
          }

          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = 1;
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "xofSvcs_GetGalSvOrbData");
          v11 = 5;
          goto LABEL_13;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Req SvId,%u,Resp SvId,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "xofSvcs_GetGalSvOrbData", 770, a2, *a3);
          LbsOsaTrace_WriteLog(8u, __str, v18, 0, 1);
        }

        memset_s(a3, 0x44uLL, 0, 0x44uLL);
      }

      else
      {
        v9 = 0;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return v9;
        }

        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,WeekNo,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetGalSvOrbData", 769, a2, a1, HIDWORD(a1));
        LbsOsaTrace_WriteLog(8u, __str, v16, 5, 1);
      }

      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetGalSvOrbData", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (g_XofEeParseState)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GalExtEphData,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs_GetGalSvOrbData", 513, a2);
      v11 = 0;
LABEL_13:
      LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
    }
  }

  return v9;
}

uint64_t xofSvcs_GetBdsSvOrbData(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofSvcs_GetBdsSvOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 - 38) >= 0xDBu && a3)
  {
    if (g_XofEeParseState == 1)
    {
      if (*(&xmmword_2A1920DD0 + 1) && xofSvcs01_02GetExtEphSvIndex(6, a2, a1, &v20) == 1)
      {
        memcpy_s("xofSvcs_GetBdsSvOrbData", 817, a3, 0x54u, (*(&xmmword_2A1920DD0 + 1) + 84 * v20), 0x54uLL);
        if (*a3 == a2)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            return 1;
          }

          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = 1;
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "xofSvcs_GetBdsSvOrbData");
          v11 = 5;
          goto LABEL_13;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Req SvId,%u,Resp SvId,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "xofSvcs_GetBdsSvOrbData", 770, a2, *a3);
          LbsOsaTrace_WriteLog(8u, __str, v18, 0, 1);
        }

        memset_s(a3, 0x54uLL, 0, 0x54uLL);
      }

      else
      {
        v9 = 0;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return v9;
        }

        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,WeekNo,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetBdsSvOrbData", 769, a2, a1, HIDWORD(a1));
        LbsOsaTrace_WriteLog(8u, __str, v16, 5, 1);
      }

      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetBdsSvOrbData", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (g_XofEeParseState)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BdsExtEphData,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs_GetBdsSvOrbData", 513, a2);
      v11 = 0;
LABEL_13:
      LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
    }
  }

  return v9;
}

uint64_t xofSvcs_GetRtiData(int a1, int *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetRtiData");
    LbsOsaTrace_WriteLog(8u, __str, v5, 5, 1);
  }

  if (a2)
  {
    if (g_RtiParseState)
    {
      *a2 = a1;
      if (a1 > 3)
      {
        switch(a1)
        {
          case 4:
            v6 = &unk_2A1920C98;
            v7 = a2 + 1;
            v8 = 875;
            goto LABEL_27;
          case 5:
            v6 = (&xmmword_2A1920CA8 + 8);
            v7 = a2 + 1;
            v8 = 870;
            goto LABEL_27;
          case 6:
            v6 = &xmmword_2A1920CC8;
            v7 = a2 + 1;
            v8 = 881;
            goto LABEL_27;
        }
      }

      else
      {
        switch(a1)
        {
          case 1:
            v6 = (&g_RtiRawData + 8);
            v7 = a2 + 1;
            v8 = 855;
            goto LABEL_27;
          case 2:
            v6 = &xmmword_2A1920C68;
            v7 = a2 + 1;
            v8 = 860;
            goto LABEL_27;
          case 3:
            v6 = &unk_2A1920C80;
            v7 = a2 + 1;
            v8 = 865;
LABEL_27:
            memcpy_s("xofSvcs_GetRtiData", v8, v7, 0x18u, v6, 0x18uLL);
            if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
            {
              return 1;
            }

            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v9 = 1;
            v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 68, "xofSvcs_GetRtiData");
            v12 = 5;
            goto LABEL_29;
        }
      }

      v9 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Constel,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 69, "xofSvcs_GetRtiData", 514, a1);
        LbsOsaTrace_WriteLog(8u, __str, v16, 0, 1);
        return 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetRtiData", 769, g_RtiParseState);
        LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
      }

      if (g_RtiParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiData,ConstellType,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 69, "xofSvcs_GetRtiData", 515, a1);
      v12 = 0;
LABEL_29:
      LbsOsaTrace_WriteLog(8u, __str, v11, v12, 1);
    }
  }

  return v9;
}

uint64_t xofSvcs_GetGpsAlmData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGpsAlmData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A1926829)
      {
        return 6;
      }

      if (qword_2A1920D60)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGpsAlmData", 933, byte_2A1926829, 0x20uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          return 7;
        }

        memcpy_s("xofSvcs_GetGpsAlmData", 941, v4, 32 * byte_2A1926829, qword_2A1920D60, 32 * byte_2A1926829);
        *a1 = byte_2A1926829;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGpsAlmData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Alm data\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGpsAlmData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      return 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGpsAlmData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpsAlmData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGpsAlmData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

  return v6;
}

uint64_t xofSvcs_GetQzssAlmData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetQzssAlmData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A1926849)
      {
        return 6;
      }

      if (qword_2A1920D68)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetQzssAlmData", 982, byte_2A1926849, 0x20uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          return 7;
        }

        memcpy_s("xofSvcs_GetQzssAlmData", 990, v4, 32 * byte_2A1926849, qword_2A1920D68, 32 * byte_2A1926849);
        *a1 = byte_2A1926849;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetQzssAlmData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Qzss Alm data\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetQzssAlmData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      return 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetQzssAlmData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QzssAlmData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetQzssAlmData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

  return v6;
}

uint64_t xofSvcs_ClrOrbData(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 68, "xofSvcs_ClrOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v1, 5, 1);
  }

  g_XofEeParseState = 0;
  g_XofBceParseState = 0;
  if (qword_2A1920D60)
  {
    free(qword_2A1920D60);
  }

  qword_2A1920D60 = 0;
  if (qword_2A1920D68)
  {
    free(qword_2A1920D68);
  }

  qword_2A1920D68 = 0;
  if (xmmword_2A1920D70)
  {
    free(xmmword_2A1920D70);
  }

  *&xmmword_2A1920D70 = 0;
  if (*(&xmmword_2A1920D70 + 1))
  {
    free(*(&xmmword_2A1920D70 + 1));
  }

  *(&xmmword_2A1920D70 + 1) = 0;
  if (qword_2A1920D80)
  {
    free(qword_2A1920D80);
  }

  qword_2A1920D80 = 0;
  if (qword_2A1920D88)
  {
    free(qword_2A1920D88);
  }

  qword_2A1920D88 = 0;
  if (xmmword_2A1920D90)
  {
    free(xmmword_2A1920D90);
  }

  *&xmmword_2A1920D90 = 0;
  if (*(&xmmword_2A1920D90 + 1))
  {
    free(*(&xmmword_2A1920D90 + 1));
  }

  *(&xmmword_2A1920D90 + 1) = 0;
  if (qword_2A1920DA0)
  {
    free(qword_2A1920DA0);
  }

  qword_2A1920DA0 = 0;
  if (qword_2A1920DA8)
  {
    free(qword_2A1920DA8);
  }

  qword_2A1920DA8 = 0;
  if (xmmword_2A1920DB0)
  {
    free(xmmword_2A1920DB0);
  }

  *&xmmword_2A1920DB0 = 0;
  if (*(&xmmword_2A1920DB0 + 1))
  {
    free(*(&xmmword_2A1920DB0 + 1));
  }

  *(&xmmword_2A1920DB0 + 1) = 0;
  if (qword_2A1920DC0)
  {
    free(qword_2A1920DC0);
  }

  qword_2A1920DC0 = 0;
  if (qword_2A1920DC8)
  {
    free(qword_2A1920DC8);
  }

  qword_2A1920DC8 = 0;
  if (xmmword_2A1920DD0)
  {
    free(xmmword_2A1920DD0);
  }

  *&xmmword_2A1920DD0 = 0;
  if (*(&xmmword_2A1920DD0 + 1))
  {
    free(*(&xmmword_2A1920DD0 + 1));
  }

  xmmword_2A1926878 = 0u;
  *&dword_2A1926888 = 0u;
  xmmword_2A1926858 = 0u;
  unk_2A1926868 = 0u;
  xmmword_2A1926838 = 0u;
  unk_2A1926848 = 0u;
  g_Header = 0u;
  unk_2A1926828 = 0u;
  g_PayLoad = 0u;
  unk_2A1920D00 = 0u;
  xmmword_2A1920D10 = 0u;
  *&dword_2A1920D20 = 0u;
  xmmword_2A1920D30 = 0u;
  *&dword_2A1920D40 = 0u;
  xmmword_2A1920D50 = 0u;
  *&qword_2A1920D60 = 0u;
  xmmword_2A1920D70 = 0u;
  *&qword_2A1920D80 = 0u;
  xmmword_2A1920D90 = 0u;
  *&qword_2A1920DA0 = 0u;
  xmmword_2A1920DB0 = 0u;
  *&qword_2A1920DC0 = 0u;
  xmmword_2A1920DD0 = 0u;
  unk_2A1920DE0 = 0u;
  xmmword_2A1920DF0 = 0u;
  unk_2A1920E00 = 0u;
  xmmword_2A1920E10 = 0u;
  *&qword_2A1920E20 = 0u;
  xmmword_2A1920E30 = 0u;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Orb data\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "xofSvcs_ClrOrbData", 0);
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_ClrOrbData");
    return LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
  }

  return result;
}

uint64_t xofSvcs_ClrRtiData(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 68, "xofSvcs_ClrRtiData");
    LbsOsaTrace_WriteLog(8u, __str, v1, 5, 1);
  }

  xmmword_2A1920CC8 = 0u;
  unk_2A1920CD8 = 0u;
  xmmword_2A1920CA8 = 0u;
  unk_2A1920CB8 = 0u;
  xmmword_2A1920C88 = 0u;
  unk_2A1920C98 = 0u;
  xmmword_2A1920C68 = 0u;
  unk_2A1920C78 = 0u;
  g_RtiRawData = 0u;
  unk_2A1920C58 = 0u;
  g_RtiParseState = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rti data\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "xofSvcs_ClrRtiData", 0);
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_ClrRtiData");
    return LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
  }

  return result;
}

uint64_t xofSvcs_ClrBceOrbData(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 68, "xofSvcs_ClrBceOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v1, 5, 1);
  }

  if (qword_2A1920D60)
  {
    free(qword_2A1920D60);
  }

  qword_2A1920D60 = 0;
  if (qword_2A1920D68)
  {
    free(qword_2A1920D68);
  }

  qword_2A1920D68 = 0;
  if (xmmword_2A1920D70)
  {
    free(xmmword_2A1920D70);
  }

  *&xmmword_2A1920D70 = 0;
  if (*(&xmmword_2A1920D70 + 1))
  {
    free(*(&xmmword_2A1920D70 + 1));
  }

  *(&xmmword_2A1920D70 + 1) = 0;
  if (qword_2A1920D80)
  {
    free(qword_2A1920D80);
  }

  qword_2A1920D80 = 0;
  if (qword_2A1920D88)
  {
    free(qword_2A1920D88);
  }

  qword_2A1920D88 = 0;
  if (xmmword_2A1920D90)
  {
    free(xmmword_2A1920D90);
  }

  *&xmmword_2A1920D90 = 0;
  if (*(&xmmword_2A1920D90 + 1))
  {
    free(*(&xmmword_2A1920D90 + 1));
  }

  *(&xmmword_2A1920D90 + 1) = 0;
  if (qword_2A1920DA0)
  {
    free(qword_2A1920DA0);
  }

  qword_2A1920DA0 = 0;
  if (qword_2A1920DA8)
  {
    free(qword_2A1920DA8);
  }

  qword_2A1920DA8 = 0;
  if (xmmword_2A1920DB0)
  {
    free(xmmword_2A1920DB0);
  }

  *&xmmword_2A1920DB0 = 0;
  g_PayLoad = 0u;
  unk_2A1920D00 = 0u;
  xmmword_2A1920D10 = 0u;
  *&dword_2A1920D20 = 0u;
  xmmword_2A1920D30 = 0u;
  *(&xmmword_2A1920D30 + 12) = 0u;
  memset_s(&unk_2A1920DE0, 0x30uLL, 0, 0x30uLL);
  g_XofBceParseState = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BCE data\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "xofSvcs_ClrBceOrbData", 0);
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_ClrBceOrbData");
    return LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
  }

  return result;
}

uint64_t xofSvcs_GetGloAlmData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGloAlmData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A1926869)
      {
        return 6;
      }

      if (xmmword_2A1920D70)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGloAlmData", 1125, byte_2A1926869, 0x24uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          return 7;
        }

        memcpy_s("xofSvcs_GetGloAlmData", 1133, v4, 36 * byte_2A1926869, xmmword_2A1920D70, 36 * byte_2A1926869);
        *a1 = byte_2A1926869;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGloAlmData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLONASS Alm data\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGloAlmData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      return 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGloAlmData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GloAlmData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGloAlmData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

  return v6;
}

uint64_t xofSvcs_GetGalAlmData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGalAlmData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!BYTE1(xmmword_2A1926858))
      {
        return 6;
      }

      if (*(&xmmword_2A1920D70 + 1))
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGalAlmData", 1173, BYTE1(xmmword_2A1926858), 0x1CuLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          return 7;
        }

        memcpy_s("xofSvcs_GetGalAlmData", 1181, v4, 28 * BYTE1(xmmword_2A1926858), *(&xmmword_2A1920D70 + 1), 28 * BYTE1(xmmword_2A1926858));
        *a1 = BYTE1(xmmword_2A1926858);
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGalAlmData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GAL Alm data\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGalAlmData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      return 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGalAlmData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GalAlmData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGalAlmData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

  return v6;
}

uint64_t xofSvcs_GetGpsBrdCstEphData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGpsBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A192682A)
      {
        return 6;
      }

      if (qword_2A1920D88)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGpsBrdCstEphData", 1272, byte_2A192682A, 0x40uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          return 7;
        }

        memcpy_s("xofSvcs_GetGpsBrdCstEphData", 1280, v4, byte_2A192682A << 6, qword_2A1920D88, byte_2A192682A << 6);
        *a1 = byte_2A192682A;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGpsBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGpsBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      return 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGpsBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpsBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGpsBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

  return v6;
}

uint64_t xofSvcs_GetQzssBrdCstEphData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetQzssBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A192684A)
      {
        return 6;
      }

      if (*(&xmmword_2A1920D90 + 1))
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetQzssBrdCstEphData", 1321, byte_2A192684A, 0x40uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          return 7;
        }

        memcpy_s("xofSvcs_GetQzssBrdCstEphData", 1329, v4, byte_2A192684A << 6, *(&xmmword_2A1920D90 + 1), byte_2A192684A << 6);
        *a1 = byte_2A192684A;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetQzssBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Qzss BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetQzssBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      return 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetQzssBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QzssBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetQzssBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

  return v6;
}

uint64_t xofSvcs_GetGloBrdCstEphData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGloBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A192686A)
      {
        return 6;
      }

      if (qword_2A1920DA8)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGloBrdCstEphData", 1369, byte_2A192686A, 0x2CuLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          return 7;
        }

        memcpy_s("xofSvcs_GetGloBrdCstEphData", 1377, v4, 44 * byte_2A192686A, qword_2A1920DA8, 44 * byte_2A192686A);
        *a1 = byte_2A192686A;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGloBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLONASS BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGloBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      return 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGloBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GloBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGloBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

  return v6;
}

uint64_t xofSvcs_GetGalBrdCstEphData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGalBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!BYTE2(xmmword_2A1926858))
      {
        return 6;
      }

      if (qword_2A1920DA0)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGalBrdCstEphData", 1417, BYTE2(xmmword_2A1926858), 0x44uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          return 7;
        }

        memcpy_s("xofSvcs_GetGalBrdCstEphData", 1425, v4, 68 * BYTE2(xmmword_2A1926858), qword_2A1920DA0, 68 * BYTE2(xmmword_2A1926858));
        *a1 = BYTE2(xmmword_2A1926858);
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGalBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GAL BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGalBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      return 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGalBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GalBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGalBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

  return v6;
}

uint64_t xofSvcs_GetBdsBrdCstEphData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetBdsBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!BYTE2(xmmword_2A1926878))
      {
        return 6;
      }

      if (xmmword_2A1920DB0)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetBdsBrdCstEphData", 1466, BYTE2(xmmword_2A1926878), 0x54uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          return 7;
        }

        memcpy_s("xofSvcs_GetBdsBrdCstEphData", 1474, v4, 84 * BYTE2(xmmword_2A1926878), xmmword_2A1920DB0, 84 * BYTE2(xmmword_2A1926878));
        *a1 = BYTE2(xmmword_2A1926878);
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetBdsBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BDS BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetBdsBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      return 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetBdsBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BdsBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetBdsBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

  return v6;
}

uint64_t xofSvcs_GetSbasBrdCstEphData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetSbasBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!BYTE2(xmmword_2A1926838))
      {
        return 6;
      }

      if (xmmword_2A1920D90)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetSbasBrdCstEphData", 1515, BYTE2(xmmword_2A1926838), 0x28uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          return 7;
        }

        memcpy_s("xofSvcs_GetSbasBrdCstEphData", 1523, v4, 40 * BYTE2(xmmword_2A1926838), xmmword_2A1920D90, 40 * BYTE2(xmmword_2A1926838));
        *a1 = BYTE2(xmmword_2A1926838);
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetSbasBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SBAS BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetSbasBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      return 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetSbasBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SbasBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetSbasBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

  return v6;
}

uint64_t xofSvcs_GetBlockLen(uint64_t a1)
{
  v1 = a1;
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetBlockLen");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (g_XofEeParseState == 1)
  {
    BlckLen = xofSvcs00_24GetBlckLen(v1);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetBlockLen");
      LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
    }
  }

  else
  {
    BlckLen = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "xofSvcs_GetBlockLen", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
      return 0;
    }
  }

  return BlckLen;
}

uint64_t xofSvcs_GetXofInjctTime(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetXofInjctTime");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      *a1 = WORD1(g_Header);
      *(a1 + 4) = DWORD1(g_Header);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = 1;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetXofInjctTime");
      v7 = 5;
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "xofSvcs_GetXofInjctTime", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    return 9;
  }

  else
  {
    v5 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofInjctTime\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "xofSvcs_GetXofInjctTime", 513);
      v7 = 2;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

  return v5;
}

uint64_t xofSvcs_GetRtiInjctTime(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetRtiInjctTime");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_RtiParseState)
    {
      *a1 = WORD1(g_RtiRawData);
      *(a1 + 4) = DWORD1(g_RtiRawData);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = 1;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetRtiInjctTime");
      v7 = 5;
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiParseState,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "xofSvcs_GetRtiInjctTime", 769, g_RtiParseState);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    return 9;
  }

  else
  {
    v5 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiInjctTime\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "xofSvcs_GetRtiInjctTime", 513);
      v7 = 2;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

  return v5;
}

uint64_t xofSvcs_GetXofEEStartTime(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetXofEEStartTime");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      *a1 = WORD5(g_Header);
      *(a1 + 4) = HIDWORD(g_Header);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = 1;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetXofEEStartTime");
      v7 = 5;
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "xofSvcs_GetXofEEStartTime", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    return 6;
  }

  else
  {
    v5 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeStartTime\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "xofSvcs_GetXofEEStartTime", 513);
      v7 = 2;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

  return v5;
}

uint64_t xofSvcs_GetXofBrdSvBitMask(int a1, uint64_t *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetXofBrdSvBitMask");
    LbsOsaTrace_WriteLog(8u, __str, v5, 5, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BrdSvBitMask\n");
    goto LABEL_13;
  }

  if (g_XofBceParseState != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "xofSvcs_GetXofBrdSvBitMask", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      return 6;
    }

    goto LABEL_39;
  }

  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        if (BYTE6(xmmword_2A1926858))
        {
          v6 = qword_2A1920E28;
          goto LABEL_35;
        }

        goto LABEL_38;
      case 5:
        if (byte_2A192686E)
        {
          v6 = xmmword_2A1920E30;
          goto LABEL_35;
        }

        goto LABEL_38;
      case 6:
        if (BYTE6(xmmword_2A1926878))
        {
          v6 = *(&xmmword_2A1920E30 + 1);
          goto LABEL_35;
        }

LABEL_38:
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          return 6;
        }

LABEL_39:
        bzero(__str, 0x410uLL);
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v14, "GNC", 68, "xofSvcs_GetXofBrdSvBitMask");
        LbsOsaTrace_WriteLog(8u, __str, v15, 5, 1);
        return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        if (byte_2A192682E)
        {
          v6 = xmmword_2A1920E10;
          goto LABEL_35;
        }

        goto LABEL_38;
      case 2:
        if (BYTE6(xmmword_2A1926838))
        {
          v6 = *(&xmmword_2A1920E10 + 1);
          goto LABEL_35;
        }

        goto LABEL_38;
      case 3:
        if (byte_2A192684E)
        {
          v6 = qword_2A1920E20;
LABEL_35:
          *a2 = v6;
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            return 1;
          }

          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "xofSvcs_GetXofBrdSvBitMask");
          v8 = 1;
          goto LABEL_37;
        }

        goto LABEL_38;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", v17);
LABEL_13:
    LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
  }

LABEL_14:
  v8 = 8;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "xofSvcs_GetXofBrdSvBitMask");
LABEL_37:
    LbsOsaTrace_WriteLog(8u, __str, v10, 5, 1);
  }

  return v8;
}

void GncP26_05HandlePowerRepMsg(unsigned __int8 *a1, _DWORD *a2)
{
  v139 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Rx ZX%c%c%c\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP26_05HandlePowerRepMsg", *a1, a1[1], a1[2]);
    LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
  }

  PlcHwType = GncP05_62GetPlcHwType();
  if (((1 << PlcHwType) & 0x35) != 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v136 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PoweRep GCPU,HwType,%hhu\n", v136);
    goto LABEL_6;
  }

  if (PlcHwType == 1)
  {
    v10 = a1[2];
    if (v10 == 77)
    {
      if (a2[1])
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Strt,%u,MeasInt,%u,ActInt,%u,RunTm,%u,BBTick,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 73, "GncP26_01MePowerRptV1", *a2, a2[1], a2[2], a2[5], a2[24]);
          LbsOsaTrace_WriteLog(8u, __str, v16, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SlpTm,%u,CpuTm,%u,SrchTm,%u,TrkTm,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 73, "GncP26_01MePowerRptV1", a2[7], a2[8], a2[10], a2[11]);
          LbsOsaTrace_WriteLog(8u, __str, v18, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClkFrq,%u,SE,%u,TEAcc,%u,TETde,%u,QE,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 73, "GncP26_01MePowerRptV1", a2[13], a2[14], a2[15], a2[16], a2[17]);
          LbsOsaTrace_WriteLog(8u, __str, v20, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v21 = mach_continuous_time();
          v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RF,%u,PreBnd,%u,AGC,%u,Notch,%u,Scan,%u\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 73, "GncP26_01MePowerRptV1", *(a2 + 36), *(a2 + 74), *(a2 + 75), *(a2 + 38), *(a2 + 39));
          LbsOsaTrace_WriteLog(8u, __str, v22, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PME,%u,Viterbi,%u,Dspi,%u,Dwb,%u,Spur,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 73, "GncP26_01MePowerRptV1", *(a2 + 42), *(a2 + 43), *(a2 + 44), *(a2 + 45), *(a2 + 46));
          LbsOsaTrace_WriteLog(8u, __str, v25, 4, 1);
        }

        LODWORD(v23) = a2[1];
        *&v26 = v23;
        v27 = *(a2 + 7);
        v28.i64[0] = v27;
        v28.i64[1] = HIDWORD(v27);
        v29 = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v28), xmmword_299729250), vdupq_lane_s64(v26, 0));
        v30 = vextq_s8(v29, v29, 8uLL);
        *&qword_2A1971718 = v30;
        v30.i32[0] = a2[17];
        v31 = 0x3F7CCCCCCCCCCCCDLL;
        LOWORD(v31) = *(a2 + 38);
        v32 = 0x3FC47AE147AE147BLL;
        *&qword_2A1971710 = v31 * 0.16 / *&v26;
        LOWORD(v32) = *(a2 + 39);
        v33 = 0x4010666666666666;
        *&qword_2A1971708 = v32 * 4.1 / *&v26;
        LOWORD(v33) = *(a2 + 42);
        v34 = 0x3FE947AE147AE148;
        LOWORD(v34) = *(a2 + 43);
        v35 = 0x3FD3333333333333;
        *&qword_2A19716F8 = v34 * 0.3 / *&v26;
        *&qword_2A1971700 = v33 * 0.79 / *&v26;
        LOWORD(v35) = *(a2 + 46);
        HIDWORD(v36) = 1071770501;
        *&qword_2A19716E8 = v30.u64[0] * 0.00703125 / *&v26;
        *&qword_2A19716F0 = v35 * 0.56 / *&v26;
        LODWORD(v36) = a2[8];
        HIDWORD(v37) = 1075485081;
        *&qword_2A19716E0 = v36 * 6.65 / *&v26;
        LODWORD(v37) = a2[2];
        *&qword_2A1971728 = v37 * 6.7 / *&v26;
        v38 = *&qword_2A19716E0 + *&qword_2A19716F0 + *&qword_2A19716F8 + *&qword_2A1971700 + *&qword_2A1971708 + *&qword_2A1971710 + *&qword_2A19716E8 + *&v29.i64[1] + *v29.i64 + *&qword_2A1971728;
        v39 = *(a2 + 74);
        if (*(a2 + 74))
        {
          v40 = 0;
          do
          {
            v40 += v39 & 1;
            v41 = v39 > 1;
            v39 >>= 1;
          }

          while (v41);
          v42 = v40;
          if (v40 >= 3u)
          {
            v43 = 9.2;
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v124 = mach_continuous_time();
              v125 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumConst,%u\n", (*&g_MacClockTicksToMsRelation * v124), "GNC", 73, "GncP26_01MePowerRptV1", v42);
              LbsOsaTrace_WriteLog(8u, __str, v125, 4, 1);
            }
          }

          else
          {
            v43 = dbl_299729318[v40];
          }
        }

        else
        {
          v42 = 0;
          v43 = 0.0;
        }

        v126 = v38 + v43;
        v128 = a2[1];
        v127 = a2[2];
        *&qword_2A19716D8 = v127 * 15.5 / v128;
        *&qword_2A1971760 = v126 / 1.1 + *&qword_2A19716D8 * 1.25;
        dword_2A1971754 = a2[24];
        unk_2A1971758 = v128;
        dword_2A197175C = v127;
        dword_2A19716C0 = a2[7];
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v129 = mach_continuous_time();
          v130 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IdleCur,%.2f,MECPU,%.2f,SE,%.2f,TEACC,%.2f,QE,%.2f\n", (*&g_MacClockTicksToMsRelation * v129), "GNC", 73, "GncP26_01MePowerRptV1", *&qword_2A1971728, *&qword_2A19716E0, *&qword_2A1971720, *&qword_2A1971718, *&qword_2A19716E8);
          LbsOsaTrace_WriteLog(8u, __str, v130, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v131 = mach_continuous_time();
          v132 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Notch,%.2f,Scan,%.2f,PME,%.2f,Viterbi,%.2f,Spur,%.2f\n", (*&g_MacClockTicksToMsRelation * v131), "GNC", 73, "GncP26_01MePowerRptV1", *&qword_2A1971710, *&qword_2A1971708, *&qword_2A1971700, *&qword_2A19716F8, *&qword_2A19716F0);
          LbsOsaTrace_WriteLog(8u, __str, v132, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v133 = mach_continuous_time();
          v134 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RF,%.2f,NumConst,%u,Band,%.2f\n", (*&g_MacClockTicksToMsRelation * v133), "GNC", 73, "GncP26_01MePowerRptV1", *&qword_2A19716D8, v42, v43);
          LbsOsaTrace_WriteLog(8u, __str, v134, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v135 = mach_continuous_time();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MENonRf,%f,TotMEPow,%f\n", (*&g_MacClockTicksToMsRelation * v135), "GNC", 73, "GncP26_01MePowerRptV1", v126, *&qword_2A1971760);
          v9 = 4;
          goto LABEL_7;
        }

        return;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        return;
      }

      goto LABEL_71;
    }

    if (v10 == 80)
    {
      if (dword_2A1971754)
      {
        v11 = a2[1];
        if (v11)
        {
          if (a2[2] <= v11)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v96 = mach_continuous_time();
              v97 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Strt,%u,MeasInt,%u,ActInt,%u,ClkFrq,%u,Tsk1,%u\n", (*&g_MacClockTicksToMsRelation * v96), "GNC", 73, "GncP26_02CpPowerRptV1", *a2, a2[1], a2[2], *(a2 + 6), a2[4]);
              LbsOsaTrace_WriteLog(8u, __str, v97, 4, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v98 = mach_continuous_time();
              v99 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Tsk2,%u,Tsk3,%u,Tsk4,%u,Tsk5,%u\n", (*&g_MacClockTicksToMsRelation * v98), "GNC", 73, "GncP26_02CpPowerRptV1", a2[5], a2[6], a2[7], a2[8]);
              LbsOsaTrace_WriteLog(8u, __str, v99, 4, 1);
            }

            v101 = a2[1];
            v100 = a2[2];
            v102 = v100 / v101 * 2.5;
            v103 = (v101 - v100) / v101 * 0.64;
            v104 = (v102 + v103) / 1.1;
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v105 = mach_continuous_time();
              v106 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CPCPU ActCur,%f,IdlCur,%f,Pow,%f\n", (*&g_MacClockTicksToMsRelation * v105), "GNC", 73, "GncP26_02CpPowerRptV1", v102, v103, (v102 + v103) / 1.1);
              LbsOsaTrace_WriteLog(8u, __str, v106, 4, 1);
            }

            v107 = gnssOsa_Calloc("GncP26_02CpPowerRptV1", 422, 1, 0x20uLL);
            if (v107)
            {
              v108 = v107;
              *(v107 + 3) = dword_2A1971754;
              v109 = unk_2A1971758;
              *(v107 + 2) = unk_2A1971758;
              v110 = v104 + *&qword_2A1971760;
              v107[3] = v104 + *&qword_2A1971760;
              word_2A19716C4 = *(a2 + 6);
              *&dword_2A19716C8 = *(a2 + 1);
              *&qword_2A1971730 = v110 / 0.85;
              *&qword_2A1971738 = v110 / 0.85 * v109 * 0.001;
              *&qword_2A1971740 = v110 / 0.85 / 3.7;
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v111 = mach_continuous_time();
                v112 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_POW_REP_IND =>GNM Tick,%u,MeasInt,%u,ActInt,%u,Pow,%f\n", (*&g_MacClockTicksToMsRelation * v111), "GNC", 73, "GncP26_02CpPowerRptV1", *(v108 + 3), *(v108 + 4), *(v108 + 5), v108[3]);
                LbsOsaTrace_WriteLog(8u, __str, v112, 4, 1);
              }

              AgpsSendFsmMsg(134, 128, 8786179, v108);
              GncP26_06SndNmeaDebugPowerMsg();
            }
          }

          else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            goto LABEL_23;
          }

          return;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          return;
        }

LABEL_71:
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeasIntMs,0\n");
        goto LABEL_6;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        return;
      }

LABEL_58:
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NO ME Power Report\n");
      goto LABEL_6;
    }

LABEL_24:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v137 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ZXOP Extn,%u\n", v137);
      goto LABEL_6;
    }

    return;
  }

  v12 = a1[2];
  if (v12 == 77)
  {
    if (!a2[1])
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        return;
      }

      goto LABEL_71;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v44 = mach_continuous_time();
      v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Strt,%u,MeasInt,%u,ActInt,%u,RunTm,%u,BBTick,%u\n", (*&g_MacClockTicksToMsRelation * v44), "GNC", 73, "GncP26_04MePowerRptV2", *a2, a2[1], a2[2], a2[5], a2[24]);
      LbsOsaTrace_WriteLog(8u, __str, v45, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v46 = mach_continuous_time();
      v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SlpTm,%u,CpuTm,%u,SrchTm,%u,TrkTm,%u\n", (*&g_MacClockTicksToMsRelation * v46), "GNC", 73, "GncP26_04MePowerRptV2", a2[7], a2[8], a2[10], a2[11]);
      LbsOsaTrace_WriteLog(8u, __str, v47, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v48 = mach_continuous_time();
      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClkFrq,%u,SE,%u,TEAcc,%u,TETde,%u,QE,%u\n", (*&g_MacClockTicksToMsRelation * v48), "GNC", 73, "GncP26_04MePowerRptV2", a2[13], a2[14], a2[15], a2[16], a2[17]);
      LbsOsaTrace_WriteLog(8u, __str, v49, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v50 = mach_continuous_time();
      v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RF,%u,PreBnd,%u,AGC,%u,Notch,%u,Scan,%u\n", (*&g_MacClockTicksToMsRelation * v50), "GNC", 73, "GncP26_04MePowerRptV2", *(a2 + 36), *(a2 + 74), *(a2 + 75), *(a2 + 38), *(a2 + 39));
      LbsOsaTrace_WriteLog(8u, __str, v51, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v54 = mach_continuous_time();
      v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PME,%u,Viterbi,%u,Dspi,%u,Dwb,%u,Spur,%u\n", (*&g_MacClockTicksToMsRelation * v54), "GNC", 73, "GncP26_04MePowerRptV2", *(a2 + 42), *(a2 + 43), *(a2 + 44), *(a2 + 45), *(a2 + 46));
      LbsOsaTrace_WriteLog(8u, __str, v55, 4, 1);
    }

    LODWORD(v52) = a2[1];
    *&v56 = v52;
    v57 = *(a2 + 7);
    v58.i64[0] = v57;
    v58.i64[1] = HIDWORD(v57);
    v59 = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v58), xmmword_299729240), vdupq_lane_s64(v56, 0));
    v60 = vextq_s8(v59, v59, 8uLL);
    *&qword_2A1971718 = v60;
    v60.i16[0] = *(a2 + 38);
    v61 = 0x3FC1EB851EB851ECLL;
    *&qword_2A1971710 = v60.u64[0] * 0.14 / *&v56;
    LOWORD(v61) = *(a2 + 39);
    *&qword_2A1971708 = v61 * 3.6 / *&v56;
    v62 = vcvtd_n_f64_u32(*(a2 + 42), 2uLL) / *&v56;
    LOWORD(v53) = *(a2 + 43);
    *&v63 = v53 * 0.3;
    v64 = *&v63 / *&v56;
    LOWORD(v63) = *(a2 + 46);
    *&v65 = v63 * 0.45;
    v66 = *&v65 / *&v56;
    qword_2A19716F8 = *&v64;
    qword_2A1971700 = *&v62;
    *&qword_2A19716F0 = *&v65 / *&v56;
    LODWORD(v65) = a2[8];
    *&v67 = v65 * 11.2;
    v68 = *&v67 / *&v56;
    *&qword_2A19716E0 = *&v67 / *&v56;
    LODWORD(v67) = a2[2];
    *&qword_2A1971728 = v67 * 2.4 / *&v56;
    v69 = v62 + *&qword_2A1971708 + *&qword_2A1971710 + *&v59.i64[1] + *v59.i64 + *&qword_2A1971728;
    v70 = *(a2 + 74);
    v71 = ((v70 >> 1) & 1) + (v70 & 1) + ((v70 & 4) >> 2);
    v72 = ((v70 >> 4) & 1) + ((v70 >> 5) & 1);
    if (v71 >= 3)
    {
      v73 = 8.2;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v74 = mach_continuous_time();
        v75 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumL1Const,%u\n", (*&g_MacClockTicksToMsRelation * v74), "GNC", 73, "GncP26_04MePowerRptV2", ((v70 >> 1) & 1) + (v70 & 1) + ((v70 & 4) >> 2));
        LbsOsaTrace_WriteLog(8u, __str, v75, 4, 1);
      }
    }

    else
    {
      v73 = dbl_299729330[v71];
    }

    v76 = v64 + v69;
    if (v72)
    {
      if (v72 == 1)
      {
        v77 = 6.5;
      }

      else
      {
        v77 = 7.8;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v78 = mach_continuous_time();
          v79 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumL5Const,%u\n", (*&g_MacClockTicksToMsRelation * v78), "GNC", 73, "GncP26_04MePowerRptV2", v72);
          LbsOsaTrace_WriteLog(8u, __str, v79, 4, 1);
        }
      }
    }

    else
    {
      v77 = 0.0;
    }

    v80 = a2[2];
    v81 = a2[1];
    if ((v70 & 4) != 0)
    {
      v82 = v80 * 12.1 / v81;
    }

    else
    {
      v82 = (11 * v80 / v81);
    }

    if (v72)
    {
      v83 = (5 * v80 / v81);
    }

    else
    {
      v83 = 0.0;
    }

    v84 = vcvtd_n_f64_u32(v80, 1uLL) / v81;
    v85 = v68 + v66 + v76 + v73 + v77;
    v86 = v82 + v83;
    *&qword_2A19716D8 = v84 + v86;
    *&qword_2A1971760 = v86 * 1.15 + v85 * 0.9 + v84 * 1.8;
    dword_2A1971754 = a2[24];
    unk_2A1971758 = v81;
    dword_2A197175C = v80;
    dword_2A19716C0 = a2[7];
    g_PowerMeas = 1000 * (*a2 / 0x249F000u);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v87 = mach_continuous_time();
      v88 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StartTmMs,%u,IdleCur,%.2f,MECPU,%.2f,SE,%.2f,TEACC,%.2f\n", (*&g_MacClockTicksToMsRelation * v87), "GNC", 73, "GncP26_04MePowerRptV2", g_PowerMeas, *&qword_2A1971728, *&qword_2A19716E0, *&qword_2A1971720, *&qword_2A1971718);
      LbsOsaTrace_WriteLog(8u, __str, v88, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v89 = mach_continuous_time();
      v90 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Notch,%.2f,Scan,%.2f,PME,%.2f,Viterbi,%.2f,Spur,%.2f\n", (*&g_MacClockTicksToMsRelation * v89), "GNC", 73, "GncP26_04MePowerRptV2", *&qword_2A1971710, *&qword_2A1971708, *&qword_2A1971700, *&qword_2A19716F8, *&qword_2A19716F0);
      LbsOsaTrace_WriteLog(8u, __str, v90, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v91 = mach_continuous_time();
      v92 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RF,%.2f,NumConst,%u,NumL5Const,%u,BdsUsed,%u,PreBand,%.2f,PreBandL5,%.2f\n", (*&g_MacClockTicksToMsRelation * v91), "GNC", 73, "GncP26_04MePowerRptV2", *&qword_2A19716D8, v71, v72, (v70 >> 2) & 1, v73, v77);
      LbsOsaTrace_WriteLog(8u, __str, v92, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v93 = mach_continuous_time();
      v94 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MENonRf,%f,TotMEPow,%f\n", (*&g_MacClockTicksToMsRelation * v93), "GNC", 73, "GncP26_04MePowerRptV2", v85, *&qword_2A1971760);
      LbsOsaTrace_WriteLog(8u, __str, v94, 4, 1);
    }

    v95 = g_PowerMeas - dword_2A19716BC;
LABEL_108:
    if (v95 <= 0x31)
    {
      GncP26_07SndPowerRptV2();
    }

    return;
  }

  if (v12 != 80)
  {
    goto LABEL_24;
  }

  if (!dword_2A1971754)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      return;
    }

    goto LABEL_58;
  }

  v13 = a2[1];
  if (!v13)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      return;
    }

    goto LABEL_71;
  }

  if (a2[2] <= v13)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v113 = mach_continuous_time();
      v114 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Strt,%u,MeasInt,%u,ActInt,%u,ClkFrq,%u,Tsk1,%u\n", (*&g_MacClockTicksToMsRelation * v113), "GNC", 73, "GncP26_03CpPowerRptV2", *a2, a2[1], a2[2], *(a2 + 6), a2[4]);
      LbsOsaTrace_WriteLog(8u, __str, v114, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v115 = mach_continuous_time();
      v116 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Tsk2,%u,Tsk3,%u,Tsk4,%u,Tsk5,%u,Tsk6,%u\n", (*&g_MacClockTicksToMsRelation * v115), "GNC", 73, "GncP26_03CpPowerRptV2", a2[5], a2[6], a2[7], a2[8], a2[9]);
      LbsOsaTrace_WriteLog(8u, __str, v116, 4, 1);
    }

    v118 = a2[1];
    v117 = a2[2];
    v119 = 1.0 / v118;
    v120 = v119 * v117 * 2.2;
    v121 = v119 * (v118 - v117) * 0.64;
    *&qword_2A19716D0 = (v120 + v121) * 0.9;
    word_2A19716C4 = *(a2 + 6);
    dword_2A19716C8 = v118;
    unk_2A19716CC = v117;
    dword_2A19716BC = 1000 * (*a2 / 0x249F000u);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v122 = mach_continuous_time();
      v123 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CPCPU StartTmMs,%u,ActCur,%f,IdlCur,%f,Pow,%f\n", (*&g_MacClockTicksToMsRelation * v122), "GNC", 73, "GncP26_03CpPowerRptV2", dword_2A19716BC, v120, v121, *&qword_2A19716D0);
      LbsOsaTrace_WriteLog(8u, __str, v123, 4, 1);
    }

    v95 = dword_2A19716BC - g_PowerMeas;
    goto LABEL_108;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
LABEL_23:
    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Strt,%u,MeasInt,%u,ActInt,%u\n", v14, "GNC");
LABEL_6:
    v8 = v7;
    v9 = 2;
LABEL_7:
    LbsOsaTrace_WriteLog(8u, __str, v8, v9, 1);
  }
}

void GncP26_06SndNmeaDebugPowerMsg(void)
{
  v21 = *MEMORY[0x29EDCA608];
  v0 = g_GncPCntxtInfo;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0);
  if ((IsLoggingAllowed & 1) != 0 || (v0 & 0x200) != 0)
  {
    bzero(__str, 0x400uLL);
    v18 = snprintf(__str, 0x400uLL, "$PDPMT,%u,%u,%u,%u", dword_2A1971754, unk_2A1971758, dword_2A197175C, dword_2A19716C0);
    if (!HswUtil_AddNmeaCS(__str, 0x400u, &v18))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        return;
      }

      bzero(v19, 0x410uLL);
      v4 = mach_continuous_time();
      v16 = v18;
      v15 = (*&g_MacClockTicksToMsRelation * v4);
      v3 = "%10u %s%c %s: #%04hx BytesWritten,%u\n";
      goto LABEL_9;
    }

    v2 = v18;
    if (v18 >= 0x400u)
    {
LABEL_5:
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        return;
      }

      bzero(v19, 0x410uLL);
      v16 = v2;
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = "%10u %s%c %s: #%04hx NmeaLen,%u\n";
LABEL_9:
      v5 = snprintf(v19, 0x40FuLL, v3, v15, "GNC", 69, "GncP26_06SndNmeaDebugPowerMsg", 772, v16, v17);
LABEL_10:
      LbsOsaTrace_WriteLog(8u, v19, v5, 0, 1);
      return;
    }

    v18 = snprintf(&__str[v18], 1024 - v18, "$PDPMC,%u,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f", dword_2A1971754, *&qword_2A1971728, *&qword_2A1971720, *&qword_2A1971718, *&qword_2A1971710, *&qword_2A1971708, *&qword_2A1971700, *&qword_2A19716F8, *&qword_2A19716F0, *&qword_2A19716E8, *&qword_2A19716E0, *&qword_2A19716D8);
    if (!HswUtil_AddNmeaCS(&__str[v2], 1024 - v2, &v18))
    {
      goto LABEL_33;
    }

    v2 = (v18 + v2);
    if (v2 >= 0x400)
    {
      goto LABEL_5;
    }

    v18 = snprintf(&__str[v2], (1024 - v2), "$PDPGT,%u,%u,%u,%u,%u", dword_2A1971754, dword_2A19716C8, unk_2A19716CC, dword_2A19716C8 - unk_2A19716CC, word_2A19716C4);
    if (!HswUtil_AddNmeaCS(&__str[v2], 1024 - v2, &v18))
    {
      goto LABEL_33;
    }

    v2 = (v18 + v2);
    if (v2 >= 0x400)
    {
      goto LABEL_5;
    }

    v18 = snprintf(&__str[v2], (1024 - v2), "$PDPTM,%u,%u,%u,%.3f,%.3f,%.3f", dword_2A1971754, unk_2A1971758, dword_2A197175C, *&qword_2A1971740, *&qword_2A1971730, *&qword_2A1971738);
    if (HswUtil_AddNmeaCS(&__str[v2], 1024 - v2, &v18))
    {
      v6 = v18 + v2;
      v7 = (v18 + v2);
      if (v7 < 0x401)
      {
        v8 = IsLoggingAllowed;
      }

      else
      {
        v8 = 0;
      }

      if (v8 == 1)
      {
        LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, __str, v7);
      }

      if ((v0 & 0x200) != 0)
      {
        v9 = gnssOsa_Calloc("GncP26_06SndNmeaDebugPowerMsg", 218, 1, 0x18uLL);
        if (v9)
        {
          v10 = v9;
          v11 = gnssOsa_Calloc("GncP26_06SndNmeaDebugPowerMsg", 227, (v6 + 1), 1uLL);
          v10[2] = v11;
          if (v11)
          {
            memcpy_s("GncP26_06SndNmeaDebugPowerMsg", 234, v11, (v6 + 1), __str, v6);
            *(v10 + 6) = v6;
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
            {
              bzero(v19, 0x410uLL);
              v12 = mach_continuous_time();
              v13 = snprintf(v19, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_IND =>GNM Len,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 73, "GncP26_06SndNmeaDebugPowerMsg", *(v10 + 6));
              LbsOsaTrace_WriteLog(8u, v19, v13, 4, 1);
            }

            AgpsSendFsmMsg(134, 128, 8786691, v10);
          }

          else
          {
            free(v10);
          }
        }
      }
    }

    else
    {
LABEL_33:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(v19, 0x410uLL);
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v5 = snprintf(v19, 0x40FuLL, "%10u %s%c %s: #%04hx NmeaLen,%u,BytesWritten,%u\n", v14);
        goto LABEL_10;
      }
    }
  }
}

void GncP26_07SndPowerRptV2(void)
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP26_07SndPowerRptV2", 253, 1, 0x20uLL);
  if (v0)
  {
    v1 = v0;
    *(v0 + 3) = dword_2A1971754;
    v2 = unk_2A1971758;
    v3 = *&qword_2A1971760 + *&qword_2A19716D0;
    *(v0 + 2) = unk_2A1971758;
    v0[3] = v3;
    *&qword_2A1971730 = v3 / 0.85;
    *&qword_2A1971738 = v3 / 0.85 * v2 * 0.001;
    *&qword_2A1971740 = v3 / 0.85 / 3.7;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_POW_REP_IND =>GNM Tick,%u,MeasInt,%u,ActInt,%u,Pow,%f\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP26_07SndPowerRptV2", *(v1 + 3), *(v1 + 4), *(v1 + 5), v1[3]);
      LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(134, 128, 8786179, v1);
    GncP26_06SndNmeaDebugPowerMsg();
  }
}

__int128 *GM_Prop_AAD(__int128 *result, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = (a2 - 1);
  if (a2 - 1 >= 0)
  {
    v4 = result;
    v5 = v3 + 1;
    v6 = a3 + 48 * v3;
    do
    {
      if (*(v6 + 8))
      {
        if (*(v6 + 4) == 1)
        {
          v7 = *(v6 + 16);
          v9[0] = *v6;
          v9[1] = v7;
          v9[2] = *(v6 + 32);
          *v6 = v4;
          result = Comp_Cur_Acq_Aid(v9, v6);
        }
      }

      v6 -= 48;
    }

    while (v5-- > 1);
  }

  return result;
}

double Nav_Kalman_Update_Init(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v19 = *MEMORY[0x29EDCA608];
  v7 = (v1 + 11528);
  bzero(v17, 0x69F0uLL);
  s_Nav_Kalman_SD::s_Nav_Kalman_SD(v17);
  *v6 = *v17;
  *(v6 + 20) = *&v17[5];
  memcpy((v6 + 28), v18, 0x69D0uLL);
  *v6 = 167849989;
  *(v6 + 4) = 284;
  *(v6 + 8) = 0x10001000105DCLL;
  *(v6 + 16) = 655366;
  v8 = *(v3 + 52);
  *(v6 + 20) = v8;
  v9 = *(v3 + 56);
  *(v6 + 24) = v9;
  v17[0] = v8;
  v17[1] = v9;
  NK_Set_Dynamics(v17, v6 + 32);
  *(v6 + 128) = 1;
  *(v6 + 132) = 1;
  *(v6 + 152) = -1;
  *(v6 + 11161) = 1;
  *(v6 + 11136) = -1;
  *(v6 + 11440) = -1;
  *(v6 + 11480) = 0x416312D000000000;
  v10 = vdupq_n_s64(0x416312D000000000uLL);
  *(v6 + 11488) = v10;
  *(v6 + 11504) = 0x416312D000000000;
  *v7 = -1;
  *(v6 + 11536) = -1;
  *(v6 + 11576) = 0x416312D000000000;
  *(v6 + 11584) = v10;
  *(v6 + 11600) = 0x416312D000000000;
  v7[96] = -1;
  *(v6 + 272) = *(v5 + 224);
  v11 = dbl_299728600[*(v3 + 52) < 5u];
  *(v6 + 280) = v11;
  if (*(v5 + 19) == 1)
  {
    *(v6 + 280) = v11 * 0.5;
  }

  *(v6 + 328) = 0x4163125300000000;
  *(v6 + 304) = 0x4163125300000000;
  *(v6 + 1696) = 1;
  *(v6 + 7172) = 18;
  *(v6 + 233) = 513;
  *(v6 + 236) = 5;
  *(v6 + 27032) = 0;
  *(v6 + 27048) = 0;
  *(v6 + 27040) = 0;
  Geo2ECEF(v6 + 27032, &WGS84_Datum, (v6 + 27008));
  v12 = __sincos_stret(*(v6 + 27032));
  *(v6 + 27056) = v12;
  v13 = 1.0 / sqrt(v12.__sinval * v12.__sinval * -0.00669437999 + 1.0);
  v14 = *(v6 + 27048);
  v15 = v12.__cosval * (v14 + v13 * 6378137.0);
  if (v15 < 1.0)
  {
    v15 = 1.0;
  }

  *(v6 + 27080) = v15;
  result = v14 + v13 * (v13 * v13) * 6335439.33;
  *(v6 + 27072) = result;
  return result;
}

int *NK_Set_Dynamics(int *result, uint64_t a2)
{
  *a2 = xmmword_2997293A0;
  *(a2 + 16) = xmmword_2997293B0;
  *(a2 + 32) = 0x3F978D4FDF3B645ALL;
  v2 = *result;
  if (*result <= 4)
  {
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v4 = 4.0;
        v5 = 0.01;
      }

      else
      {
        if (v2 != 4)
        {
          goto LABEL_22;
        }

        v4 = 9.0;
        v5 = 0.00694444444;
      }

      v6 = 0.100489;
      goto LABEL_21;
    }

    v3 = 0;
    if (v2 < 2)
    {
LABEL_23:
      v6 = 1.0e10;
      if (v2 < 2)
      {
        v6 = 0.0;
      }

      *(a2 + 40) = v3;
      *(a2 + 48) = v6;
      *(a2 + 56) = 0x3FF0000000000000;
      v13 = 1000000.0;
      if (v2 < 2)
      {
        v13 = 0.0;
      }

      goto LABEL_27;
    }

    if (v2 == 2)
    {
      v4 = 0.25;
      v5 = 0.0204081633;
      v6 = 0.04;
LABEL_21:
      *(a2 + 40) = v6;
      *(a2 + 48) = v6;
      *(a2 + 56) = 0x3FF0000000000000;
      *(a2 + 72) = v4;
      *(a2 + 88) = v5;
LABEL_31:
      *(a2 + 80) = v5 * v4;
      *(a2 + 64) = v5;
      *(a2 + 48) = v6 * 0.5;
      return result;
    }

LABEL_22:
    v3 = 0x4202A05F20000000;
    goto LABEL_23;
  }

  if (v2 > 6)
  {
    if (v2 == 7)
    {
      v6 = 25.0;
      v13 = 400.0;
    }

    else
    {
      if (v2 != 8)
      {
        goto LABEL_22;
      }

      v13 = 1000000.0;
      v6 = 1.0e10;
    }

    *(a2 + 40) = v6;
    *(a2 + 48) = v6;
    *(a2 + 56) = 0x3FF0000000000000;
LABEL_27:
    *(a2 + 72) = v13;
    *(a2 + 88) = 0x3FF0000000000000;
    v4 = 0.0;
    v5 = 1.0;
    if (v2 < 2)
    {
      goto LABEL_31;
    }

    if (v2 != 7)
    {
      if (v2 == 8)
      {
        *(a2 + 80) = 0x412E848000000000;
        *(a2 + 64) = 0x3FF0000000000000;
        *(a2 + 24) = xmmword_2997293C0;
        return result;
      }

      v14 = 1000000.0;
      goto LABEL_35;
    }

    v12 = 0x4079000000000000;
    goto LABEL_33;
  }

  if (v2 != 5)
  {
    if (v2 == 6)
    {
      __asm { FMOV            V0.2D, #1.0 }

      *(a2 + 40) = _Q0;
      *(a2 + 56) = 0x3FF0000000000000;
      v12 = 0x4059000000000000;
      *(a2 + 72) = 0x4059000000000000;
      *(a2 + 88) = 0x3FD0000000000000;
      v5 = 0.25;
LABEL_33:
      v14 = *&v12;
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  *(a2 + 40) = vdupq_n_s64(0x3FB9B9A5A89B951DuLL);
  *(a2 + 56) = 0x3FF0000000000000;
  *(a2 + 72) = 0x4039000000000000;
  *(a2 + 88) = 0x3FB0000000000000;
  v14 = 25.0;
  v5 = 0.0625;
LABEL_35:
  *(a2 + 80) = v5 * v14;
  *(a2 + 64) = v5;
  return result;
}

uint64_t NK_Set_XO_PN(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = xmmword_2997293D0;
  if (*(result + 248))
  {
    *(a2 + 24) = xmmword_2997293E0;
    v2 = *(result + 80);
    if ((v2 - 71) <= 0xFFFFFFAE)
    {
      if ((v2 - 101) >= 0xFFFFFF73)
      {
        if ((v2 - 96) >= 0xFFFFFF7D)
        {
          if ((v2 - 91) >= 0xFFFFFF87)
          {
            if ((v2 - 86) >= 0xFFFFFF91)
            {
              if ((v2 - 81) >= 0xFFFFFF9B)
              {
                v4 = vdup_n_s32((v2 - 76) < 0xFFFFFFA5);
                v5.i64[0] = v4.u32[0];
                v5.i64[1] = v4.u32[1];
                v3 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL)), xmmword_299729450, xmmword_299729440);
              }

              else
              {
                v3 = xmmword_299729430;
              }
            }

            else
            {
              v3 = xmmword_299729420;
            }
          }

          else
          {
            v3 = xmmword_299729410;
          }
        }

        else
        {
          v3 = xmmword_299729400;
        }
      }

      else
      {
        v3 = xmmword_2997293F0;
      }

      *(a2 + 24) = v3;
    }
  }

  return result;
}

void s_Nav_Kalman_SD::s_Nav_Kalman_SD(s_Nav_Kalman_SD *this)
{
  *(this + 4) = 0;
  v2 = this + 26920;
  *this = 0u;
  v3 = this + 8288;
  *(this + 20) = 0x500000002;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 132) = 0;
  *(this + 140) = 0u;
  *(this + 10) = 0u;
  *(this + 173) = 0;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 84) = 0;
  *(this + 20) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 128) = 0;
  *(this + 230) = 0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  bzero(this + 344, 0x498uLL);
  v4 = 0;
  *(this + 1528) = 0u;
  *(this + 97) = 0u;
  *(this + 380) = 1;
  *(this + 386) = 0;
  *(this + 1548) = 0;
  *(this + 98) = 0u;
  *(this + 99) = 0u;
  *(this + 100) = 0u;
  *(this + 1616) = 0;
  *(this + 408) = 1;
  *(this + 203) = 0;
  *(this + 1640) = 0u;
  *(this + 1656) = 0u;
  *(this + 1672) = 0u;
  *(this + 1687) = 0;
  *(this + 848) = 0;
  *(this + 2056) = 0u;
  *(this + 2072) = 0u;
  *(this + 2024) = 0u;
  *(this + 2040) = 0u;
  *(this + 1992) = 0u;
  *(this + 2008) = 0u;
  *(this + 1960) = 0u;
  *(this + 1976) = 0u;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 1896) = 0u;
  *(this + 1912) = 0u;
  *(this + 1864) = 0u;
  *(this + 1880) = 0u;
  *(this + 1832) = 0u;
  *(this + 1848) = 0u;
  *(this + 1800) = 0u;
  *(this + 1816) = 0u;
  *(this + 1768) = 0u;
  *(this + 1784) = 0u;
  *(this + 1736) = 0u;
  *(this + 1752) = 0u;
  *(this + 1704) = 0u;
  *(this + 1720) = 0u;
  do
  {
    v5 = this + v4;
    *(v5 + 522) = 0;
    *(v5 + 131) = 0uLL;
    *(v5 + 132) = 0uLL;
    v4 += 40;
  }

  while (v4 != 1920);
  for (i = 0; i != 1920; i += 40)
  {
    v7 = this + i;
    *(v7 + 1002) = 0;
    *(v7 + 251) = 0uLL;
    *(v7 + 252) = 0uLL;
  }

  *(this + 898) = 0;
  *(this + 1798) = 0;
  *(this + 900) = 0;
  *(this + 1802) = 0;
  bzero(this + 5928, 0x4E4uLL);
  *(this + 458) = 0u;
  *(this + 457) = 0u;
  *(this + 456) = 0u;
  *(this + 455) = 0u;
  *(this + 454) = 0u;
  *(this + 453) = 0u;
  *(this + 452) = 0u;
  *(this + 451) = 0u;
  *(this + 1836) = -1;
  *(this + 1035) = 0;
  *v3 = 0;
  *(this + 1391) = 0;
  *(this + 2784) = 0;
  *(this + 1405) = 0;
  *(this + 2812) = 0;
  *(this + 1440) = 0;
  v3[3240] = 0;
  *(this + 11448) = 0u;
  *(this + 11464) = 0u;
  *(this + 11480) = 0u;
  *(this + 11496) = 0u;
  *(this + 11512) = 0;
  *(this + 1452) = 0;
  v3[3336] = 0;
  *(this + 2884) = 0;
  *(this + 11544) = 0u;
  *(this + 11560) = 0u;
  *(this + 11576) = 0u;
  *(this + 11592) = 0u;
  *(this + 11608) = 0;
  v3[3344] = 0;
  *v2 = 0;
  *(v2 + 76) = 0;
  *(v2 + 188) = 0;
  bzero(this + 7348, 0x39FuLL);
  bzero(this + 8296, 0xAA6uLL);
  *(this + 2764) = 0;
  *(this + 690) = 0u;
  *(this + 689) = 0u;
  *(this + 1383) = 0;
  *(this + 692) = 0u;
  *(this + 11088) = 0;
  *(this + 11092) = 0u;
  *(this + 11108) = 0u;
  *(this + 11144) = 0u;
  *(this + 11159) = 0;
  *(this + 11164) = 0u;
  *(this + 11178) = 0;
  *(this + 11204) = 0;
  *(this + 11188) = 0u;
  *(this + 701) = 0u;
  *(this + 11232) = 0;
  *(this + 11256) = 0u;
  *(this + 11272) = 0u;
  *(this + 11288) = 0u;
  *(this + 11304) = 0u;
  *(this + 11320) = 0u;
  *(this + 11336) = 0u;
  *(this + 11352) = 0u;
  *(this + 11368) = 0u;
  *(this + 11384) = 0u;
  *(this + 11400) = 0u;
  *(this + 11416) = 0u;
  *(this + 11428) = 0u;
  bzero(this + 11636, 0x3B6CuLL);
  *(this + 26992) = 0;
  *(this + 1686) = 0u;
  *(this + 1685) = 0u;
  *(this + 1684) = 0u;
  *(this + 1683) = 0u;
  *(this + 1688) = 0u;
  *(this + 1689) = 0u;
  *(this + 1690) = 0u;
  *(this + 1691) = 0u;
  *(this + 1692) = 0u;
  *(this + 1693) = 0u;
  *(this + 27104) = 0;
}

_BYTE *BDS_D1_EphBin2Int(_BYTE *result, int *a2, uint64_t a3)
{
  if (*result)
  {
    v3 = *a2;
    v4 = a2[1];
    *(a3 + 22) = (*a2 & 0x200) != 0;
    *(a3 + 19) = (v3 >> 4) & 0x1F;
    *(a3 + 21) = v3 & 0xF;
    *(a3 + 16) = (v4 >> 9) & 0x1FFF;
    *(a3 + 8) = ((v4 & 0x1FF) << 8) | (a2[2] >> 14);
    v5 = a2[2];
    *(a3 + 90) = ((4 * v5) >> 15) & 0xFC00 | (v5 >> 4) & 0x3FF;
    if ((v5 & 8) != 0)
    {
      v6 = *(a2 + 7) & 0x3F | ((v5 & 0xF) << 6) | 0xFC00;
    }

    else
    {
      v6 = *(a2 + 7) & 0x3F | ((v5 & 0xF) << 6);
    }

    *(a3 + 92) = v6;
    if ((a2[6] & 0x40) != 0)
    {
      v7 = ((a2[6] & 0x7F) << 17) | (a2[7] >> 5) & 0x1FFFF | 0xFF000000;
    }

    else
    {
      v7 = ((a2[6] & 0x7F) << 17) | (a2[7] >> 5) & 0x1FFFF;
    }

    *(a3 + 80) = v7;
    if ((a2[7] & 0x10) != 0)
    {
      v8 = ((a2[7] & 0x1F) << 17) | (a2[8] >> 5) & 0x1FFFF | 0xFFC00000;
    }

    else
    {
      v8 = ((a2[7] & 0x1F) << 17) | (a2[8] >> 5) & 0x1FFFF;
    }

    *(a3 + 84) = v8;
    *(a3 + 88) = ((a2[6] >> 2) >> 15) & 0xF800 | (a2[6] >> 7) & 0x7FF;
    *(a3 + 18) = a2[8] & 0x1F;
  }

  if (result[1])
  {
    v9 = a2[10];
    *(a3 + 50) = (*(a2 + 18) << 6) | BYTE2(v9) & 0x3F;
    v10 = (4 * v9) | (a2[11] >> 20) & 3;
    if ((v9 & 0x8000) != 0)
    {
      v10 |= 0xFFFC0000;
    }

    *(a3 + 56) = v10;
    *(a3 + 24) = (a2[11] << 12) | (a2[12] >> 10) & 0xFFF;
    *(a3 + 28) = a2[13] & 0x3FFFFF | (a2[12] << 22);
    *(a3 + 60) = (a2[14] << 10 >> 31) & 0xFFFC0000 | (a2[14] >> 4) & 0x3FFFF;
    if ((a2[14] & 8) != 0)
    {
      v11 = ((a2[14] & 0xF) << 14) | (a2[15] >> 8) & 0x3FFF | 0xFFFC0000;
    }

    else
    {
      v11 = ((a2[14] & 0xF) << 14) | (a2[15] >> 8) & 0x3FFF;
    }

    *(a3 + 64) = v11;
    if ((a2[15] & 0x80) != 0)
    {
      v12 = (a2[15] << 10) | (a2[16] >> 12) & 0x3FF | 0xFFFC0000;
    }

    else
    {
      v12 = (a2[15] << 10) | (a2[16] >> 12) & 0x3FF;
    }

    *(a3 + 68) = v12;
    *(a3 + 32) = (a2[16] << 20) | (a2[17] >> 2) & 0xFFFFF;
  }

  if (result[2])
  {
    if (result[1])
    {
      v13 = vand_s8(vshl_u32(*(a2 + 17), 0x50000000FLL), 0x7FE000018000);
      *(a3 + 12) = vorr_s8(vdup_lane_s32(v13, 1), v13).u32[0] | (a2[19] >> 17) & 0x1F;
    }

    *(a3 + 40) = (a2[19] << 15) | (a2[20] >> 7) & 0x7FFF;
    if ((a2[20] & 0x40) != 0)
    {
      v14 = ((a2[20] & 0x7F) << 11) | (a2[21] >> 11) & 0x7FF | 0xFFFC0000;
    }

    else
    {
      v14 = ((a2[20] & 0x7F) << 11) | (a2[21] >> 11) & 0x7FF;
    }

    *(a3 + 72) = v14;
    if ((a2[21] & 0x400) != 0)
    {
      v15 = ((a2[21] & 0x7FF) << 13) | (a2[22] >> 9) & 0x1FFF | 0xFF000000;
    }

    else
    {
      v15 = ((a2[21] & 0x7FF) << 13) | (a2[22] >> 9) & 0x1FFF;
    }

    *(a3 + 52) = v15;
    if ((a2[22] & 0x100) != 0)
    {
      v16 = ((a2[22] & 0x1FF) << 9) | (a2[23] >> 13) & 0x1FF | 0xFFFC0000;
    }

    else
    {
      v16 = ((a2[22] & 0x1FF) << 9) | (a2[23] >> 13) & 0x1FF;
    }

    *(a3 + 76) = v16;
    v17 = a2[23];
    v18 = a2[24];
    if ((v17 & 0x1000) != 0)
    {
      v19 = (2 * (v17 & 0x1FFF)) | (v18 >> 21) & 1 | 0xC000;
    }

    else
    {
      v19 = (2 * (v17 & 0x1FFF)) | (v18 >> 21) & 1;
    }

    *(a3 + 48) = v19;
    *(a3 + 36) = (v18 << 11) | (a2[25] >> 11) & 0x7FF;
    *(a3 + 44) = (a2[25] << 21) | (a2[26] >> 1) & 0x1FFFFF;
  }

  return result;
}

uint64_t STEU_Checksum_OK(char *a1)
{
  v1 = 0;
  v9 = *MEMORY[0x29EDCA608];
  v2 = a1[1];
  v3 = 3;
  do
  {
    if (!v2)
    {
      return 0;
    }

    v4 = a1[v3 - 1];
    if (v4 == 10 || v4 == 13)
    {
      return 0;
    }

    v1 += v2;
    ++v3;
    v2 = v4;
  }

  while (v4 != 125);
  v7 = 0;
  v8[0] = a1[v3 - 1];
  v8[1] = a1[v3];
  result = AscToU1(v8, &v7);
  if (result)
  {
    return v7 == v1;
  }

  return result;
}

uint64_t Comp_NEDvar_UDU(uint64_t result, unsigned int a2, int a3, double (*a4)[3], double *a5)
{
  v5 = 0;
  v38[9] = *MEMORY[0x29EDCA608];
  v6 = a3;
  do
  {
    v7 = v6++;
    v8 = (v7 * v7 + v7) >> 1;
    v9 = (v5 + a3);
    v10 = (v9 * v9 + v9) >> 1;
    v11 = &v38[3 * v5];
    v12 = v5;
    v13 = v6;
    do
    {
      v14 = (v12 + a3);
      if (v5 == v12)
      {
        v15 = *(result + 8 * (v10 + (v5 + a3)));
        v16 = v14 + 1;
      }

      else
      {
        v16 = v14 + 1;
        v17 = v9 + (((v14 + 1) * v14) >> 1);
        if (v9 >= v14)
        {
          v17 = v10 + v14;
        }

        v15 = *(result + 8 * (v14 + ((v16 * v14) >> 1))) * *(result + 8 * v17);
      }

      v18 = v13;
      *&v11[v12] = v15;
      if (a2 > v16)
      {
        v19 = v13;
        v20 = v13 * v13 + v13;
        v21 = 2 * v18 + 2;
        v22 = v18 + ((v16 * v7) >> 1);
        do
        {
          v23 = v19 + (v20 >> 1);
          v24 = v19 + v19 * v19;
          v25 = v8 + v19;
          if (v19 > v9)
          {
            v25 = v9 + (v24 >> 1);
          }

          v26 = v19 > v14;
          v27 = v19 + 1;
          v28 = v14 + (v24 >> 1);
          if (!v26)
          {
            v28 = v22;
          }

          v15 = v15 + *(result + 8 * v23) * *(result + 8 * v25) * *(result + 8 * v28);
          ++v22;
          v20 += v21;
          v21 += 2;
          v19 = v27;
        }

        while (v27 < a2);
        *&v11[v12] = v15;
      }

      *&v38[3 * v12++ + v5] = v15;
      v13 = v18 + 1;
      ++v7;
    }

    while (v12 != 3);
    ++v5;
  }

  while (v5 != 3);
  v29 = 0;
  v30 = 0.0;
  v31 = a4;
  do
  {
    v32 = 0;
    v33 = v38;
    v34 = 0.0;
    do
    {
      v35 = 0;
      v36 = 0.0;
      do
      {
        v36 = v36 + *&v33[v35] * (*v31)[v35];
        ++v35;
      }

      while (v35 != 3);
      if (!v29)
      {
        v30 = v30 + v36 * (*a4)[v32 + 3];
      }

      v34 = v34 + v36 * (*a4)[3 * v29 + v32++];
      v33 += 3;
    }

    while (v32 != 3);
    a5[v29++] = v34;
    ++v31;
  }

  while (v29 != 3);
  for (i = 0; i != 3; ++i)
  {
    if (a5[i] <= 0.00000001)
    {
      a5[i] = 0.00000001;
    }
  }

  return result;
}

uint64_t GM_Get_Best_NSSS(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = (a4 - 1);
  if (a4 - 1 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = (a1 + 36 * v4 + 8);
  v8 = (a2 + 48 * v4 + 12);
  v9 = 0xFFFFFFFFLL;
  do
  {
    if (Is_Legal(*(v7 - 2)))
    {
      v10 = *(v7 - 4);
      if (v10 >= a3 && (*v7 & 8) != 0 && (*v7 & 0x300) != 0x300 && *(v8 - 8) == 1 && v8[3] == 1)
      {
        v12 = v10 + 6 * *v8;
        if (v12 <= v6)
        {
          v9 = v9;
        }

        else
        {
          v6 = v12;
          v9 = v4;
        }
      }
    }

    v7 -= 18;
    v8 -= 48;
  }

  while (v4-- > 0);
  return v9;
}

uint64_t GncP27_30PopulateRawMeas(uint64_t a1, unsigned __int16 *a2)
{
  v80 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 64);
  if (*(a1 + 64))
  {
    if (v4 >= 0x101)
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigMeas Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *(a1 + 64));
        LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
        return 0;
      }

      return result;
    }

    result = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 403, v4, 0xB0uLL);
    *(a2 + 9) = result;
    if (!result)
    {
      return result;
    }
  }

  v8 = *(a1 + 51432);
  if (*(a1 + 51432))
  {
    if (v8 >= 0x101)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvUsg Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *(a1 + 51432));
        LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
      }

      goto LABEL_15;
    }

    v11 = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 421, v8, 0x68uLL);
    *(a2 + 31) = v11;
    if (!v11)
    {
LABEL_15:
      v15 = *(a2 + 9);
      if (v15)
      {
        free(v15);
      }

      result = 0;
      *(a2 + 9) = 0;
      return result;
    }
  }

  v12 = *(a1 + 78064);
  if (*(a1 + 78064))
  {
    if (v12 >= 0x101)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvUsg Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *(a1 + 78064));
        LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
      }

      goto LABEL_60;
    }

    v16 = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 441, v12, 0x138uLL);
    *(a2 + 33) = v16;
    if (!v16)
    {
LABEL_60:
      v72 = *(a2 + 9);
      if (v72)
      {
        free(v72);
      }

      *(a2 + 9) = 0;
      v73 = *(a2 + 31);
      if (v73)
      {
        free(v73);
      }

      result = 0;
      *(a2 + 31) = 0;
      return result;
    }
  }

  *a2 = *a1;
  *(a2 + 4) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 24);
  *(a2 + 20) = *(a1 + 40);
  *(a2 + 14) = *(a1 + 56);
  v17 = *(a1 + 64);
  a2[32] = v17;
  v78 = a2;
  if (v17)
  {
    v18 = 0;
    v19 = a1 + 270;
    v20 = 172;
    do
    {
      v21 = *(a2 + 9);
      v22 = v21 + v20;
      *(v21 + v20 - 172) = *(v19 - 198);
      *(v22 - 170) = GncP07_01PopulateSigId(*(v19 - 194));
      *(v22 - 169) = GncP07_09PopulateConstellId(*(v19 - 190));
      *(v22 - 168) = *(v19 - 186);
      *(v22 - 164) = *(v19 - 182);
      *(v22 - 148) = *(v19 - 166);
      *(v22 - 140) = *(v19 - 158);
      *(v22 - 132) = *(v19 - 150);
      *(v22 - 116) = *(v19 - 134);
      *(v22 - 108) = *(v19 - 118);
      *(v22 - 100) = *(v19 - 110);
      *(v22 - 98) = *(v19 - 108);
      *(v22 - 92) = *(v19 - 102);
      *(v22 - 76) = *(v19 - 86);
      *(v22 - 60) = GncP07_02PopulateMeasMdl(*(v19 - 70));
      *(v22 - 59) = GncP07_02PopulateMeasMdl(*(v19 - 66));
      *(v22 - 58) = *(v19 - 62);
      *(v22 - 54) = *(v19 - 58);
      *(v22 - 52) = *(v19 - 54);
      v23 = *(v19 - 46);
      if (v23 == 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      *(v22 - 44) = v25;
      *(v22 - 36) = *(v19 - 38);
      *(v22 - 20) = *(v19 - 22);
      v26 = *(v19 - 6);
      if (v26 >= 3)
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
        LOBYTE(v27) = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MPath,%u\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 87, "GncP07_04PopulateMPath", 770, v26);
          LbsOsaTrace_WriteLog(8u, __str, v30, 2, 1);
          LOBYTE(v27) = 0;
        }
      }

      else
      {
        v27 = *(v19 - 6);
      }

      v31 = v21 + v20;
      *(v31 - 4) = v27;
      *(v31 - 2) = *(v19 - 2);
      a2 = v78;
      if (v18 > 0xFE)
      {
        break;
      }

      v19 += 200;
      ++v18;
      v20 += 176;
    }

    while (v18 < v78[32]);
  }

  *(a2 + 20) = *(a1 + 51272);
  *(a2 + 84) = *(a1 + 51276);
  *(a2 + 43) = *(a1 + 51278);
  *(a2 + 94) = *(a1 + 51286);
  *(a2 + 18) = *(a1 + 51336);
  *(a2 + 25) = *(a1 + 51392);
  *(a2 + 13) = *(a1 + 51400);
  *(a2 + 14) = *(a1 + 51416);
  a2[45] = *(a1 + 51282);
  *(a2 + 92) = *(a1 + 51284);
  *(a2 + 93) = *(a1 + 51285);
  a2[48] = *(a1 + 51288);
  *(a2 + 25) = *(a1 + 51292);
  *(a2 + 52) = *(a1 + 51296);
  *(a2 + 15) = *(a1 + 51312);
  a2[64] = *(a1 + 51320);
  *(a2 + 130) = *(a1 + 51322);
  *(a2 + 17) = *(a1 + 51328);
  a2[76] = *(a1 + 51344);
  *(a2 + 39) = *(a1 + 51348);
  *(a2 + 10) = *(a1 + 51352);
  a2[88] = *(a1 + 51368);
  *(a2 + 45) = *(a1 + 51372);
  *(a2 + 92) = *(a1 + 51376);
  v32 = *(a1 + 51432);
  a2[120] = v32;
  if (v32)
  {
    v33 = 0;
    v34 = 0;
    v35 = a1 + 51440;
    v36 = a1 + 51464;
    do
    {
      v37 = *(a2 + 31);
      *(v37 + v33) = *(v35 + v33);
      v38 = *(a1 + 51444 + v33);
      if (v38 >= 5)
      {
        v40 = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
        LOBYTE(v39) = 0;
        if (v40)
        {
          bzero(__str, 0x410uLL);
          v41 = mach_continuous_time();
          v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Glon SlotSrc,%u\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 87, "GncP07_05PopulateGLOSloNSrc", 770, v38);
          LbsOsaTrace_WriteLog(8u, __str, v42, 2, 1);
          LOBYTE(v39) = 0;
        }
      }

      else
      {
        v39 = *(a1 + 51444 + v33);
      }

      v43 = v37 + v33;
      *(v43 + 2) = v39;
      *(v43 + 8) = *(a1 + 51448 + v33);
      v44 = *(v36 + v33);
      if (v44 >= 5)
      {
        v46 = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
        LOBYTE(v45) = 0;
        if (v46)
        {
          bzero(__str, 0x410uLL);
          v47 = mach_continuous_time();
          v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SVtimeSrc,%u\n", (*&g_MacClockTicksToMsRelation * v47), "GNC", 87, "GncP07_06PopulateSVTimeSrc", 770, v44);
          LbsOsaTrace_WriteLog(8u, __str, v48, 2, 1);
          LOBYTE(v45) = 0;
        }
      }

      else
      {
        v45 = *(v36 + v33);
      }

      v49 = v37 + v33;
      *(v49 + 24) = v45;
      *(v49 + 25) = *(v35 + v33 + 28);
      *(v49 + 32) = *(a1 + v33 + 51472);
      *(v49 + 48) = *(a1 + v33 + 51488);
      *(v49 + 64) = *(a1 + v33 + 51504);
      *(v49 + 80) = *(a1 + v33 + 51520);
      *(v49 + 96) = *(a1 + 51536 + v33);
      a2 = v78;
      if (v34 > 0xFE)
      {
        break;
      }

      ++v34;
      v33 += 104;
    }

    while (v34 < v78[120]);
  }

  v50 = *(a1 + 78064);
  a2[128] = v50;
  if (!v50)
  {
    return 1;
  }

  v51 = 0;
  v74 = a1 + 78072;
  v52 = a1 + 78268;
  v76 = (a1 + 78352);
  v77 = 0;
  v53 = (a1 + 78168);
  v54 = 48;
  do
  {
    v55 = v74 + 344 * v51;
    v75 = *(a2 + 33);
    v56 = v75 + 312 * v51;
    *v56 = GncP07_09PopulateConstellId(*v55);
    *(v56 + 2) = *(v55 + 4);
    *(v56 + 4) = *(v55 + 6);
    *(v56 + 144) = *(v55 + 144);
    *(v56 + 160) = GncP07_07PopulateHIState(*(v55 + 160));
    *(v56 + 161) = GncP07_07PopulateHIState(*(v55 + 164));
    *(v56 + 162) = GncP07_07PopulateHIState(*(v55 + 168));
    *(v56 + 163) = GncP07_07PopulateHIState(*(v55 + 172));
    *(v56 + 164) = GncP07_07PopulateHIState(*(v55 + 176));
    *(v56 + 168) = *(v55 + 184);
    v57 = *(v55 + 192);
    *(v56 + 176) = v57;
    if (v57)
    {
      v58 = 0;
      v59 = v76;
      v60 = v75 + v77;
      v61 = 184;
      do
      {
        *(v60 + v58 + 178) = GncP07_01PopulateSigId(*(v52 + 4 * v58));
        v62 = (v60 + v61);
        *v62 = *(v59 - 8);
        v62[4] = *(v59 - 4);
        v62[8] = *v59;
        v62[12] = v59[4];
        if (v58 > 2)
        {
          break;
        }

        ++v58;
        v61 += 8;
        ++v59;
      }

      while (v58 < *(v56 + 176));
    }

    v63 = *(v55 + 8);
    if (v63 >= 5)
    {
      v65 = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
      LOBYTE(v64) = 0;
      if (v65)
      {
        bzero(__str, 0x410uLL);
        v66 = mach_continuous_time();
        v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SVPosSrc,%u\n", (*&g_MacClockTicksToMsRelation * v66), "GNC", 87, "GncP07_08PopulateSvPosSrc", 770, v63);
        LbsOsaTrace_WriteLog(8u, __str, v67, 2, 1);
        LOBYTE(v64) = 0;
      }
    }

    else
    {
      v64 = *(v55 + 8);
    }

    *(v56 + 8) = v64;
    *(v56 + 16) = *(v55 + 16);
    *(v56 + 120) = *(v55 + 120);
    *(v56 + 136) = *(v55 + 136);
    v68 = (v75 + v54);
    v69 = v53;
    v70 = 3;
    do
    {
      *(v68 - 3) = *(v69 - 9);
      *v68 = *(v69 - 6);
      v68[3] = *(v69 - 3);
      v71 = *v69++;
      v68[6] = v71;
      ++v68;
      --v70;
    }

    while (v70);
    result = 1;
    a2 = v78;
    if (v51 > 0xFE)
    {
      break;
    }

    ++v51;
    v52 += 344;
    v76 += 43;
    v77 += 312;
    v54 += 312;
    v53 += 43;
  }

  while (v51 < v78[128]);
  return result;
}

uint64_t GncP07_01PopulateSigId(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 >= 0xA)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP07_01PopulateSigId", 770, a1);
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

uint64_t GncP07_09PopulateConstellId(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 >= 7)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP07_09PopulateConstellId", 770, a1);
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

uint64_t GncP07_02PopulateMeasMdl(unsigned int a1)
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
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeasModel,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP07_02PopulateMeasMdl", 770, a1);
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

uint64_t GncP07_07PopulateHIState(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 >= 3)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HIState,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP07_07PopulateHIState", 770, a1);
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

BOOL R8_EQ(const double *a1, const double *a2)
{
  v2 = *a1;
  v3 = *a1 | 0x8000000000000000;
  if (*a1 < 0)
  {
    v3 = -v2;
  }

  v4 = *a2;
  v5 = *a2 | 0x8000000000000000;
  if (*a2 < 0)
  {
    v5 = -v4;
  }

  v6 = ~v2 & 0x7FF0000000000000;
  v7 = v2 & 0xFFFFFFFFFFFFFLL;
  v8 = ~v4 & 0x7FF0000000000000;
  v9 = v4 & 0xFFFFFFFFFFFFFLL;
  v10 = v5 - v3;
  v11 = v3 >= v5;
  v12 = v3 - v5;
  if (!v11)
  {
    v12 = v10;
  }

  v13 = v12 < 4;
  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9 == 0;
  }

  if (!v14)
  {
    v13 = 0;
  }

  if (v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = v7 == 0;
  }

  return v15 && v13;
}

uint64_t posp_HandlePospInitMsg()
{
  v6 = *MEMORY[0x29EDCA608];
  if (GNS_PospInitialize(pos_protocol_PospCallback) && GNS_PpduInitialize(pos_protocol_PpduCallback))
  {
    RRLP_Bridge_init();
    LPP_Bridge_init();
    posp_TimerInit();
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 69, "posp_HandlePospInitMsg", 258);
      LbsOsaTrace_WriteLog(0x13u, __str, v1, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx POSP Initialization failed\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 69, "posp_HandlePospInitMsg", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v3, 0, 1);
    }
  }

  return 0;
}

uint64_t posp_HandlePospReqMsg(uint64_t a1)
{
  v66 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 16);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "posp_HandlePospReqMsg");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v4 = *v1;
  if (*v1 > 1)
  {
    switch(v4)
    {
      case 4:
LABEL_59:
        HandlePPDUSessionEND(v1 + 2);
        goto LABEL_68;
      case 3:
        v7 = *(v1 + 12);
        if (v7)
        {
          v5 = *(v7 + 16);
LABEL_14:
          v6 = 76;
LABEL_15:
          v8 = *&v1[v6];
          if (v8 > 1)
          {
            if (v8 == 3)
            {
              v9 = 2;
LABEL_34:
              v15 = *(v1 + 3);
              if (v15 != 1)
              {
                if (v15)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v19 = mach_continuous_time();
                    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Session Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 69, "ConvertSessionType", 770, v15);
                    v18 = 0;
                    goto LABEL_40;
                  }
                }

                else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v16 = mach_continuous_time();
                  v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unknown Session Protocol\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 87, "ConvertSessionType", 770);
                  v18 = 2;
LABEL_40:
                  LbsOsaTrace_WriteLog(0x13u, __str, v17, v18, 1);
                }
              }

              session_info = gps_find_session_info(*(v1 + 2));
              if (session_info)
              {
                *(session_info + 8) = v9;
                *session_info = *(v1 + 2);
                *(session_info + 4) = 1;
                *(session_info + 14) = v1[17];
                if (*v1 == 3)
                {
                  *(session_info + 15) = v5;
                }

                if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
                {
                  goto LABEL_54;
                }

                bzero(__str, 0x410uLL);
                v21 = mach_continuous_time();
                v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Session exists with Handle,%u\n", (*&g_MacClockTicksToMsRelation * v21), "PSP", 73, "GeneratePPDUSession", *(v1 + 2));
                v23 = 4;
                goto LABEL_53;
              }

              v42 = -1;
              memset(&v33[2], 0, 27);
              v47 = 0;
              memset(v48, 0, sizeof(v48));
              *&v32[1] = -1;
              v24 = v1[17];
              if (*v1 == 3)
              {
                v25 = v5;
              }

              else
              {
                v25 = -1;
              }

              *__str = *(v1 + 2);
              v35 = 1;
              v36 = v9;
              v37 = 0;
              v38 = v24;
              v39 = v25;
              v40 = 0;
              v41 = 0xFFFFFFFF00000000;
              *v43 = *v33;
              *&v43[13] = *&v33[13];
              v44 = 0xFFFFFFFF00000000;
              v45 = 0;
              v46 = xmmword_2997286D0;
              v49 = -1;
              v50 = 0;
              v51 = 0;
              v52 = -1;
              v53 = 0;
              v54 = -1;
              v55 = -1;
              v57 = -1;
              v56 = *v32;
              v58 = -1;
              v59 = 0x7FFFFFFFLL;
              v60 = 0;
              v61 = -1;
              v62 = -COERCE_DOUBLE(0x8000000080000000);
              v63 = 0;
              v64 = 0;
              v65 = 0;
              if (gps_create_session_info_ext(__str) || !LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                goto LABEL_54;
              }

              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Create Session\n");
LABEL_52:
              v22 = v13;
              v23 = 0;
LABEL_53:
              LbsOsaTrace_WriteLog(0x13u, __str, v22, v23, 1);
              goto LABEL_54;
            }

            if (v8 == 2)
            {
              v9 = 1;
              goto LABEL_34;
            }
          }

          else
          {
            if (!v8)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                mach_continuous_time();
                v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol is Unknown\n");
                goto LABEL_31;
              }

LABEL_32:
              v9 = 0;
              goto LABEL_34;
            }

            if (v8 == 1)
            {
              goto LABEL_32;
            }
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", v31);
LABEL_31:
            LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
            goto LABEL_32;
          }

          goto LABEL_32;
        }

        break;
      case 2:
        break;
      default:
        goto LABEL_22;
    }

    v5 = 0;
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_63;
  }

  if (v4 == 1)
  {
    v5 = 0;
    v6 = 96;
    goto LABEL_15;
  }

LABEL_22:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU msgType,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "GeneratePPDUSession", 770, *v1);
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
  }

  v12 = *v1;
  if ((*v1 | 4) != 4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
LABEL_54:
      v12 = *v1;
      goto LABEL_55;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU Session Info\n");
    goto LABEL_52;
  }

LABEL_55:
  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        HandlePPDUSessionData(v1 + 2);
        goto LABEL_68;
      }

      goto LABEL_66;
    }

LABEL_63:
    HandlePPDUCapUpdate(v1 + 2);
    goto LABEL_68;
  }

  switch(v12)
  {
    case 2:
      HandlePPDUCapReq((v1 + 8));
      goto LABEL_68;
    case 3:
      HandlePPDUAssistDataReq((v1 + 8));
      goto LABEL_68;
    case 4:
      goto LABEL_59;
  }

LABEL_66:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgType,%u\n", (*&g_MacClockTicksToMsRelation * v26), "PSP", 69, "posp_HandlePospReqMsg", 770, *v1);
    LbsOsaTrace_WriteLog(0x13u, __str, v27, 0, 1);
  }

LABEL_68:
  MEMORY[0x29C29EB20](v1, 0x1032C4083C19586);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "PSP", 68, "posp_HandlePospReqMsg");
    LbsOsaTrace_WriteLog(0x13u, __str, v29, 5, 1);
  }

  return 0;
}

uint64_t posp_HandlePospRspMsg(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: msgType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "PSP", 65, "posp_HandlePospRspMsg", *v2);
    LbsOsaTrace_WriteLog(0x13u, __str, v4, 1, 1);
  }

  session_info = gps_find_session_info(*(a1 + 24));
  if (session_info)
  {
    v6 = session_info;
    v7 = *v2;
    if ((*v2 - 1) >= 2)
    {
      if (v7 == 3)
      {
        goto LABEL_25;
      }

      if (v7 != 4)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgType,%u\n", v23);
          goto LABEL_19;
        }

LABEL_28:
        MEMORY[0x29C29EB20](v2, 0x1022C406FC2E6EELL);
        return 0;
      }

      if (v2[3] != 1)
      {
LABEL_26:
        send_api_status(v2 + 2, *(session_info + 8), *(session_info + 12), *(session_info + 5));
        goto LABEL_28;
      }
    }

    if (*(session_info + 16))
    {
      if (v7 <= 2)
      {
        if (v7 != 1)
        {
          send_position_response(v2 + 2, *(session_info + 8), *(session_info + 12), *(session_info + 5));
          v15 = *(v2 + 2);
          v16 = *(v2 + 6);
          v17 = *(v2 + 14);
          *(v6 + 96) = *(v2 + 10);
          *(v6 + 112) = v17;
          *(v6 + 64) = v15;
          *(v6 + 80) = v16;
          v18 = *(v2 + 18);
          v19 = *(v2 + 22);
          v20 = *(v2 + 26);
          *(v6 + 176) = *(v2 + 15);
          *(v6 + 144) = v19;
          *(v6 + 160) = v20;
          *(v6 + 128) = v18;
          v21 = *(v6 + 60);
          *(v6 + 184) = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v21;
          goto LABEL_28;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MSA not enabled\n");
LABEL_19:
          LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if (v7 == 3)
      {
LABEL_25:
        send_assistance_req(v2 + 2, *(session_info + 8));
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    MEMORY[0x29C29EB20](v2, 0x1022C406FC2E6EELL);
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No Msr Pos Req\n", (*&g_MacClockTicksToMsRelation * v11), "PSP", 69, "posp_HandlePospRspMsg", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v12, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "PSP", 68, "posp_HandlePospRspMsg");
      LbsOsaTrace_WriteLog(0x13u, __str, v14, 5, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "posp_HandlePospRspMsg", 2052, *(a1 + 24));
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    }

    if (v2)
    {
      goto LABEL_28;
    }
  }

  return 0;
}

uint64_t posp_HandleWlanMsg(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: msgType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 65, "posp_HandleWlanMsg", *(a1 + 13));
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 1, 1);
  }

  v4 = *(a1 + 13);
  switch(v4)
  {
    case 4:
      HandleWlanCbInit(*(a1 + 16));
      break;
    case 6:
      send_wlan_meas(*(a1 + 16));
      break;
    case 5:
      v5 = *(a1 + 16);
      HandleWlanCapUpdate(v5);
      if (v5)
      {
        free(v5);
      }

      break;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgType,%u\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 69, "posp_HandleWlanMsg", 770, *(a1 + 13));
        LbsOsaTrace_WriteLog(0x13u, __str, v7, 0, 1);
      }

      break;
  }

  return 0;
}

uint64_t posp_HandlePospShutdownMsg()
{
  gps_delete_all_sessions();
  RRLP_Bridge_de_init();
  LPP_Bridge_de_init();
  posp_TimerDeInit();
  GNS_PospInitialize(0);
  GNS_PpduInitialize(0);
  return 0;
}

uint64_t posp_HandlePospTimerMsg(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "posp_HandlePospTimerMsg");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  posp_TimerExpiry(*(a1 + 4));
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "posp_HandlePospTimerMsg");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  return 0;
}

uint64_t POSP_0IgnoreMessage()
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 69, "POSP_0IgnoreMessage", 519);
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 0, 1);
  }

  return 0;
}

uint64_t SuplPospPostMessage(unsigned __int8 *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplPospPostMessage");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v4 = gnssOsa_Calloc("SuplPospPostMessage", 99, 1, 0x20uLL);
  if (a1 && v4)
  {
    v5 = *a1;
    v4[12] = v5;
    v4[13] = a1[1];
    *(v4 + 6) = *(a1 + 4);
    *(v4 + 2) = *(a1 + 1);
    AgpsSendFsmMsg(133, 133, v5, v4);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0);
    v7 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 68, "SuplPospPostMessage");
      LbsOsaTrace_WriteLog(0x13u, __str, v9, 5, 1);
      return 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msg is NULL or memory allocation failed\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "SuplPospPostMessage", 513);
      LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
    }

    return -1;
  }

  return v7;
}

uint64_t POSP0_00Init(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: POSP Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 73, "SuplPospInitialize");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 4, 1);
  }

  *__str = 1792;
  v4 = 0;
  v5 = 0;
  return SuplPospPostMessage(__str);
}

uint64_t POSP0_01DeInit(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: POSP De-Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 73, "SuplPospShutDown");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 4, 1);
  }

  *__str = 1796;
  v4 = 0;
  v5 = 0;
  return SuplPospPostMessage(__str);
}

double POSP0_02DestMissingHandler(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v3), "PSP", 73, "POSP0_02DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(0x13u, __str, v4, 4, 1);
  }

  if ((*(a1 + 4) - 1) > 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 73, "POSP0_02DestMissingHandler", *(a1 + 4));
      LbsOsaTrace_WriteLog(0x13u, __str, v7, 4, 1);
    }
  }

  else
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      free(v5);
    }

    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t Core_Get_TM_FSP_Time(unsigned int *a1, unsigned int *a2)
{
  *a1 = 0;
  *a2 = 0;
  if (*p_NA != 1)
  {
    return 0;
  }

  v4 = *(p_NA + 400);
  v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v6 = p_NA;
  v7 = *(p_NA + 404);
  v8 = **(p_api + 8) - v7;
  if (v5 - v4 > 0xDBBA0 || (v8 - 900001) < 0xFFF230D7)
  {
    EvCrt_v("Core_Get_TM_FSP_Time: WARNING: Deleted OS_Time %u Age %d TTick %u Age %d ms", *(p_NA + 400), v5 - v4, v7, v8);
    result = 0;
    v11 = p_NA;
    *p_NA = 0;
    *(v11 + 400) = 0;
    return result;
  }

  if ((*p_NA & 1) == 0)
  {
    return 0;
  }

  *a1 = *(p_NA + 400);
  *a2 = *(v6 + 404);
  return 1;
}

uint64_t Core_Get_Ref_Time(int a1, double *a2, __int16 *a3, double *a4)
{
  v4 = p_NA;
  if (*(p_NA + 2) != 1)
  {
    return 0;
  }

  v5 = a1 - *(p_NA + 412);
  if ((v5 - 900001) >= 0xFFF238A7)
  {
    *a2 = *(p_NA + 416);
    *a3 = *(v4 + 424);
    *a4 = *(v4 + 432);
    v8 = v5;
    Inc_GPS_TOW(v5 * 0.001, a2, a3);
    *a4 = *a4 + v8 * 0.00000001;
    return 1;
  }

  else
  {
    result = 0;
    *(p_NA + 2) = 0;
  }

  return result;
}

uint64_t Core_Get_Glon_Ref_Time(int a1, unsigned __int16 *a2, __int16 *a3, double *a4, double *a5)
{
  v5 = p_NA;
  if (*(p_NA + 3) != 1)
  {
    return 0;
  }

  v6 = a1 - *(p_NA + 440);
  if ((v6 - 900001) >= 0xFFF238A7)
  {
    *a2 = *(p_NA + 444);
    *a3 = *(v5 + 446);
    *a4 = *(v5 + 448);
    *a5 = *(v5 + 456);
    v9 = v6;
    Inc_Glon_TOD(v6 * 0.001, a4, a3, a2);
    *a5 = *a5 + v9 * 0.00000001;
    return 1;
  }

  else
  {
    result = 0;
    *(p_NA + 3) = 0;
  }

  return result;
}

uint64_t Core_Get_UTC_Ref_Time(int a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, unsigned __int16 *a8, double *a9)
{
  v24 = *MEMORY[0x29EDCA608];
  v9 = p_NA;
  if (*(p_NA + 4) != 1)
  {
    return 0;
  }

  v10 = a1 - *(p_NA + 464);
  if ((v10 - 900001) >= 0xFFF238A7)
  {
    v23 = 0;
    v22 = 0.0;
    *a2 = *(p_NA + 468);
    *a3 = *(v9 + 470);
    *a4 = *(v9 + 472);
    *a5 = *(v9 + 474);
    *a6 = *(v9 + 476);
    *a7 = *(v9 + 478);
    v19 = *(v9 + 480);
    *a8 = v19;
    *a9 = *(v9 + 488);
    UTC_To_GPS_Time(&v23, &v22, *a2, *a3, *a4, *a5, *a6, *a7, 0.0, v19);
    v20 = v10 * 0.001 + v22;
    v22 = v20;
    v21 = v23;
    if (v20 >= 604800.0)
    {
      do
      {
        v20 = v20 + -604800.0;
        ++v21;
      }

      while (v20 >= 604800.0);
      v22 = v20;
      v23 = v21;
    }

    if (v20 < 0.0)
    {
      do
      {
        v20 = v20 + 604800.0;
        --v21;
      }

      while (v20 < 0.0);
      v22 = v20;
      v23 = v21;
    }

    GPS_To_UTC_Time(a2, a3, a4, a5, a6, a7, a8, v21, v20, 0.0);
    *a9 = *a9 + v10 * 0.00000001;
    return 1;
  }

  else
  {
    result = 0;
    *(p_NA + 4) = 0;
  }

  return result;
}

BOOL Get_FSP_Time(unsigned int a1, __int16 *a2, double *a3, double *a4, unsigned __int8 *a5)
{
  v37 = *MEMORY[0x29EDCA608];
  if (*(p_NA + 5) != 1)
  {
    return 0;
  }

  *v36 = 0;
  v35 = 0;
  v34 = 0;
  result = API_Get_FS_Pulse_TTick(&v35, &v34, &v36[1], v36);
  if (!result)
  {
    return result;
  }

  v11 = v36[1];
  v12 = (v36[1] - v35) + v34 * -0.0000152587891;
  if (fabs(v12) > 60000.0)
  {
    EvCrt_v("Get_FSP_Time:  ERROR:  fabs(DeltaTTick) = fabs(%g) > %d", (v36[1] - v35) + v34 * -0.0000152587891, 60000);
    return 0;
  }

  v33 = v35;
  v13 = *(p_api + 88);
  v14 = *(v13 + 888) / 299792458.0;
  v32 = v34;
  if (v14 > 0.000001)
  {
    EvLog("Get_FSP_Time:  Neglecting Clock Drift in FSP Time propogation!");
    v15 = 0.0;
    v14 = 0.000001;
  }

  else
  {
    v15 = *(v13 + 168);
  }

  v16 = 0;
  v17 = v36[0];
  v18 = v36[0] - v12;
  v19 = p_NA;
  v20 = p_NA + 520;
  v21 = 1;
  while (1)
  {
    v22 = v21;
    if (*(v19 + 5 + v16) == 1 && *(v20 + 8 * v16) > 0.0)
    {
      v23 = *(v19 + 512 + 2 * v16);
      *a3 = *(v19 + 496 + 8 * v16);
      v24 = *(v20 + 8 * v16);
      *a2 = v23;
      v25 = v24 * v24;
      *a4 = v25;
      v26 = *(v19 + 552 + 4 * v16);
      if (!*(v19 + 7))
      {
        break;
      }

      if (v26 >= v18 - 500 && v26 <= v18 + 400)
      {
        break;
      }
    }

    v21 = 0;
    v16 = 1;
    if ((v22 & 1) == 0)
    {
      v28 = "Get_FSP_Time:  WARNING:  No pulse found !";
LABEL_19:
      EvLog(v28);
      return 0;
    }
  }

  v29 = a1 - v11;
  if (a1 == v11)
  {
    v30 = v17;
  }

  else
  {
    if (a1 < v11)
    {
      v28 = "Get_FSP_Time:  ReqTTick earlier than FSP FS_DBTT_TTick !";
      goto LABEL_19;
    }

    v30 = v17;
    v12 = v12 + v29;
  }

  v31 = (1.0 - v15) * (v12 * 0.001);
  *a4 = v25 + v14 * v31 * (v14 * v31);
  Inc_GPS_TOW(v31, a3, a2);
  EvLog_v("Get_FSP_Time:  %d %d %d %d %d %d %g %d %g %d %d %g %g", a1, v16, v33, v32, v30, v18, *(p_NA + 8 * v16 + 496), v26, v31, *a2, *a3, *a3 - *a3, *a4 * 1000000.0 * 1000000.0);
  *a5 = 2;
  return 1;
}

uint64_t Core_Get_GPS_TimePos(uint64_t a1, _BYTE *a2, char *a3, int *a4, _BYTE *a5, double *a6, double *a7, uint64_t a8, double *a9, double *a10)
{
  v15 = a1;
  v26[3] = *MEMORY[0x29EDCA608];
  v23 = 0;
  v20 = 0.0;
  *a2 = 0;
  *a3 = 0;
  *a9 = 0.0;
  *a10 = 0.0;
  *a7 = 0.0;
  *a5 = 0;
  if (Get_FSP_Time(a1, &v23, a6, &v20, &v24))
  {
    *a7 = sqrt(v20) * 3.0;
    *a2 = 1;
  }

  v25 = 0;
  v21 = 0.0;
  v19 = 0;
  if (Core_Get_Pos_LLH(v15, 150000, 1, v22, a8, v26, &v21, &v25, &v24, &v19, a4))
  {
    v16 = v25;
    if (v25 == 1)
    {
      *a9 = sqrt(v26[0]) * 3.0;
      *a10 = sqrt(v21) * 3.0;
      *a3 = v16;
    }
  }

  if (*a2)
  {
    v17 = 1;
  }

  else
  {
    v17 = *a3;
  }

  return v17 & 1;
}

uint64_t Core_Get_Pos_LLH(int a1, int a2, int a3, int *a4, uint64_t a5, uint64_t a6, double *a7, _BYTE *a8, _BYTE *a9, int *a10, int *a11)
{
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  v14 = p_NA;
  v15 = 367;
  v16 = 21000;
  do
  {
    if (*(v14 + v15) == 1)
    {
      v17 = *(p_api + 8);
      v18 = *v17;
      if (*v17)
      {
        v18 = *(v14 + v16) + v18 - v17[4];
      }

      v19 = a1 - v18;
      if (a1 - v18 <= -3001)
      {
        EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_LLH [i]", a1 - v18, a1, v18);
        v14 = p_NA;
        v19 = 999999000;
      }

      if (v19 > a2)
      {
        *(v14 + v15) = 0;
      }
    }

    ++v15;
    v16 += 80;
  }

  while (v15 != 373);
  if (*(v14 + 12))
  {
    v20 = *(p_api + 8);
    if (*v20)
    {
      v21 = *(v14 + 728) + *v20 - v20[4];
    }

    else
    {
      v21 = 0;
    }

    v22 = a1 - v21;
    if (a1 - v21 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_LLH [E911]", a1 - v21, a1, v21);
      v14 = p_NA;
      v22 = 999999000;
    }

    if (v22 > a2)
    {
      *(v14 + 12) = 0;
    }
  }

  if (*(v14 + 10) != 1)
  {
    return 0;
  }

  v23 = *(p_api + 8);
  if (*v23)
  {
    v24 = *(v14 + 608) + *v23 - v23[4];
  }

  else
  {
    v24 = 0;
  }

  v26 = a1 - v24;
  if (a1 - v24 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_LLH [0]", a1 - v24, a1, v24);
    v26 = 999999000;
  }

  if (v26 > a2)
  {
    result = 0;
    *(p_NA + 10) = 0;
    return result;
  }

  *a4 = v24;
  v27 = p_NA;
  v28 = *(p_NA + 632);
  *a5 = *(p_NA + 616);
  *(a5 + 16) = v28;
  v29 = *(v27 + 656);
  *a6 = *(v27 + 640);
  *(a6 + 16) = v29;
  *a7 = *(v27 + 688);
  *a8 = *(v27 + 11);
  *a9 = *(v27 + 720);
  v30 = *(v27 + 704);
  *a10 = v30;
  v31 = *(v27 + 696);
  if ((v31 - 1) <= 3)
  {
    *a11 = v31;
    goto LABEL_30;
  }

  *a11 = 0;
  EvCrt_Illegal_Default("Core_Get_Pos_LLH", 965);
  v32 = p_NA;
  v33 = *(p_NA + 696);
  v30 = *a10;
  *a11 = v33;
  if (!v33)
  {
    if (v30 <= 3)
    {
      if (v30 > 1)
      {
        if (v30 != 2)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (!v30)
        {
          v30 = 1;
          goto LABEL_48;
        }

        if (v30 != 1)
        {
LABEL_66:
          EvLog("Core_Get_Pos_LLH: Warning, Un-defined Ref Position Source");
          *a11 = 1;
          v30 = *a10;
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (v30 > 5)
      {
        if (v30 != 6)
        {
          if (v30 == 7 || v30 == 8)
          {
            *a11 = 2;
            goto LABEL_58;
          }

          goto LABEL_66;
        }

        goto LABEL_46;
      }

      if (v30 == 4)
      {
LABEL_46:
        v30 = 3;
        goto LABEL_48;
      }
    }

    v30 = 4;
LABEL_48:
    *a11 = v30;
LABEL_49:
    if (*(v32 + 11) == 1)
    {
      v34 = 0x412E848000000000;
      if (*a7 > 1000000.0 || (v34 = 0x4059000000000000, *a7 < 100.0))
      {
        *a7 = v34;
      }
    }

    if (*(v32 + 10) == 1 && *(a6 + 8) < 250000.0)
    {
      v35 = *a6;
      *(a6 + 8) = *a6;
      if (v35 < 250000.0)
      {
        *a6 = vdupq_n_s64(0x410E848000000000uLL);
      }

      *(a6 + 16) = 0;
    }

    goto LABEL_58;
  }

LABEL_30:
  if ((v30 - 7) >= 2)
  {
    v32 = p_NA;
    goto LABEL_49;
  }

LABEL_58:
  v36 = *a6;
  v37 = *(a6 + 8);
  if (*a6 < v37)
  {
    *(a6 + 8) = v36;
    *(a6 + 16) = 0;
    v37 = v36;
  }

  if (a3)
  {
    v38 = v26 * 0.015 * (v26 * 0.015);
    if (v37 < v38)
    {
      *(a6 + 8) = v36;
      if (v36 < v38)
      {
        *a6 = v38;
        *(a6 + 8) = v38;
      }

      *(a6 + 16) = 0;
    }
  }

  return 1;
}

uint64_t Core_Set_Clk_Drift(char **a1, double *a2, uint64_t a3)
{
  EvLog_nd(a1, 3, a3, *a2, a2[1], *(a2 + 4));
  v4 = p_NA;
  *(p_NA + 560) = *a2;
  v5 = a2[1];
  v6 = *(a2 + 4);
  *(v4 + 568) = v5 * 0.000000001;
  *(v4 + 576) = v6 * 0.000000001 * (v6 * 0.000000001);
  *(v4 + 584) = 2;
  *(v4 + 8) = 1;
  if (fabs(v5) > 30000.0)
  {
    *(v4 + 8) = 0;
    EvCrt_v("%s FAILED: Calibration = %g >30ppm, Out of range!");
    return 0;
  }

  if (v6 - 10001 <= 0xFFFFD8EF)
  {
    *(v4 + 8) = 0;
    EvCrt_v("%s FAILED: RMS_ppb = %g ==0ppm or >10ppm, Out of range!");
    return 0;
  }

  return 1;
}

uint64_t Core_Get_Clk_Drift(int a1, int a2, unsigned int *a3, double *a4, double *a5, unsigned __int8 *a6)
{
  if (*(p_NA + 8) != 1)
  {
    return 0;
  }

  if (*(p_NA + 307) == 1 && *(p_NA + 19248) == 10)
  {
    EvLog("Core_Get_Clk_Drift: Ext Freq Assist skipped in Airborne mode");
    return 0;
  }

  v12 = *(p_api + 8);
  if (*v12)
  {
    v13 = *(p_NA + 560) + *v12 - v12[4];
  }

  else
  {
    v13 = 0;
  }

  v14 = a1 - v13;
  if (a1 - v13 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Clk_Drift", a1 - v13, a1, v13);
    v14 = 999999000;
  }

  if (v14 / 1000 <= a2)
  {
    *a3 = v13;
    v15 = p_NA;
    *a4 = *(p_NA + 568);
    *a5 = *(v15 + 576);
    *a6 = *(v15 + 584);
    v16 = 9.0e-16;
    if (*a5 < 9.0e-16 || (v16 = *a5, *a5 < 2.77777778e-14))
    {
      if (v14 > 899999)
      {
        *a5 = 2.77777778e-14;
      }

      else
      {
        *a5 = v16 + (2.77777778e-14 - v16) * (-((900 - v14 / 1000) * 0.00111111111 * ((900 - v14 / 1000) * 0.00111111111)) * ((900 - v14 / 1000) * 0.00111111111) + 1.0);
      }
    }

    return 1;
  }

  else
  {
    result = 0;
    *(p_NA + 8) = 0;
  }

  return result;
}

uint64_t Core_Get_Pos_H(int a1, int a2, double *a3, double *a4)
{
  v4 = p_NA;
  if (*(p_NA + 11) != 1)
  {
    return 0;
  }

  v8 = *(p_api + 8);
  v9 = *v8;
  if (*v8)
  {
    v9 = *(p_NA + 608) + v9 - v8[4];
  }

  v10 = a1 - v9;
  if (a1 - v9 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_H", a1 - v9, a1, v9);
    v4 = p_NA;
    v10 = 999999000;
  }

  if (v10 <= a2)
  {
    *a3 = *(v4 + 632);
    *a4 = *(v4 + 688);
    return 1;
  }

  else
  {
    result = 0;
    *(v4 + 11) = 0;
  }

  return result;
}

uint64_t Core_Get_Pos_E911(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 12) != 1)
  {
    return 0;
  }

  v3 = *(p_NA + 728);
  if (a1 - v3 > -3001)
  {
    if (a1 - v3 < 150001)
    {
      v5 = (p_NA + 728);
      *a2 = *(p_NA + 728);
      v6 = v5[1];
      v7 = v5[2];
      v8 = v5[4];
      a2[3] = v5[3];
      a2[4] = v8;
      a2[1] = v6;
      a2[2] = v7;
      return 1;
    }
  }

  else
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_E911", a1 - v3, a1, v3);
    v2 = p_NA;
  }

  result = 0;
  *(v2 + 12) = 0;
  return result;
}

uint64_t Core_Get_Static_Status(unsigned __int8 *a1)
{
  if (*(p_NA + 299) != 1)
  {
    return 0;
  }

  v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v3 = p_NA;
  v4 = *(p_NA + 19152);
  v5 = v2 - v4;
  if (v5 > -3001)
  {
    if (v5 < 2001)
    {
      *a1 = *(p_NA + 19156);
      return 1;
    }
  }

  else
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Static_Status", v2 - v4, v2, v4);
    v3 = p_NA;
  }

  result = 0;
  *(v3 + 299) = 0;
  return result;
}

uint64_t Core_Get_Ped_Status(_DWORD *a1, _BYTE *a2)
{
  if (*(p_NA + 300) != 1)
  {
    return 0;
  }

  v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v5 = p_NA;
  v6 = *(p_NA + 19160);
  v7 = v4 - v6;
  if (v7 > -3001)
  {
    if (v7 < 2001)
    {
      *a1 = *(p_NA + 19164);
      *a2 = *(v5 + 19168);
      return 1;
    }
  }

  else
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Ped_Status", v4 - v6, v4, v6);
    v5 = p_NA;
  }

  result = 0;
  *(v5 + 300) = 0;
  return result;
}

uint64_t Core_Get_ExtA_DMS(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 301) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 19172);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_DMS", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 305) = 0;
    *(v2 + 301) = 0;
    return result;
  }

  if (v7 >= 43200001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 19172);
  *(a2 + 8) = *(p_NA + 19180);
  *a2 = v9;
  return 1;
}

uint64_t Core_Get_ExtA_UAC(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 307) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 19244);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_UAC", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 311) = 0;
    *(v2 + 307) = 0;
    return result;
  }

  if (v7 >= 43200001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 19244);
  *(a2 + 8) = *(p_NA + 19252);
  *a2 = v9;
  return 1;
}

uint64_t Core_Get_ExtA_FIV_Ind(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 313) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 19316);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_FIV_Ind", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 317) = 0;
    *(v2 + 313) = 0;
    return result;
  }

  if (v7 >= 43200001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 19316);
  *(a2 + 8) = *(p_NA + 19324);
  *a2 = v9;
  return 1;
}

uint64_t Core_Get_ExtA_Alt(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 325) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 19416);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_Alt", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 329) = 0;
    *(v2 + 325) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 19432);
  *a2 = *(p_NA + 19416);
  a2[1] = v9;
  return 1;
}

uint64_t Core_Get_ExtA_MapV(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 331) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 19608);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_MapV", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 335) = 0;
    *(v2 + 331) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = p_NA;
  *a2 = *(p_NA + 19608);
  v11 = *(v9 + 19640);
  v10 = *(v9 + 19656);
  v12 = *(v9 + 19624);
  *(a2 + 64) = *(v9 + 19672);
  *(a2 + 32) = v11;
  *(a2 + 48) = v10;
  *(a2 + 16) = v12;
  return 1;
}

uint64_t Core_Get_ExtA_SpdC(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 337) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 20040);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_SpdC", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 341) = 0;
    *(v2 + 337) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 20056);
  *a2 = *(p_NA + 20040);
  *(a2 + 16) = v9;
  return 1;
}

uint64_t Core_Get_ExtA_AT_Vel(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 343) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 20184);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_AT_Vel", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 347) = 0;
    *(v2 + 343) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 20200);
  *a2 = *(p_NA + 20184);
  *(a2 + 16) = v9;
  return 1;
}

uint64_t Core_Get_ExtA_V_Vel(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 349) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 20328);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_V_Vel", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 353) = 0;
    *(v2 + 349) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 20344);
  *a2 = *(p_NA + 20328);
  *(a2 + 16) = v9;
  return 1;
}

uint64_t Core_Get_ExtA_Heading(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 355) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 20472);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_Heading", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 359) = 0;
    *(v2 + 355) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 20488);
  *a2 = *(p_NA + 20472);
  *(a2 + 16) = v9;
  return 1;
}

uint64_t Core_Get_ExtA_TunnelEP(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 361) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 20616);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_TunnelEP", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 365) = 0;
    *(v2 + 361) = 0;
    return result;
  }

  if (v7 >= 30001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 20664);
  v11 = *(p_NA + 20616);
  v10 = *(p_NA + 20632);
  a2[2] = *(p_NA + 20648);
  a2[3] = v9;
  *a2 = v11;
  a2[1] = v10;
  return 1;
}

uint64_t Core_Get_Speed(int a1, unsigned int *a2, double *a3, double *a4, double *a5)
{
  v5 = p_NA;
  if (*(p_NA + 373) != 1)
  {
    return 0;
  }

  v6 = *(p_api + 8);
  if (*v6)
  {
    v7 = *(p_NA + 21480) + *v6 - v6[4];
  }

  else
  {
    v7 = 0;
  }

  if (a1 - v7 > -3001)
  {
    if (a1 - v7 < 3001)
    {
      *a2 = v7;
      *a3 = *(v5 + 21488);
      *a4 = *(v5 + 21496);
      *a5 = 0.0;
      return 1;
    }
  }

  else
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Speed", a1 - v7, a1, v7);
    v5 = p_NA;
  }

  result = 0;
  *(v5 + 373) = 0;
  return result;
}

uint64_t Core_Get_GSpeed(int a1, unsigned int *a2, double *a3, double *a4, double *a5)
{
  v5 = p_NA;
  if (*(p_NA + 374) != 1)
  {
    return 0;
  }

  v6 = *(p_api + 8);
  if (*v6)
  {
    v7 = *(p_NA + 21504) + *v6 - v6[4];
  }

  else
  {
    v7 = 0;
  }

  if (a1 - v7 > -3001)
  {
    if (a1 - v7 < 3001)
    {
      *a2 = v7;
      *a3 = *(v5 + 21512);
      *a4 = *(v5 + 21520);
      *a5 = 0.0;
      return 1;
    }
  }

  else
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "GSpeed", a1 - v7, a1, v7);
    v5 = p_NA;
  }

  result = 0;
  *(v5 + 374) = 0;
  return result;
}

uint64_t Core_Get_Track(int a1, unsigned int *a2, double *a3, double *a4, double *a5, double *a6)
{
  v6 = p_NA;
  if (*(p_NA + 375) != 1)
  {
    return 0;
  }

  v7 = *(p_api + 8);
  if (*v7)
  {
    v8 = *(p_NA + 21528) + *v7 - v7[4];
  }

  else
  {
    v8 = 0;
  }

  if (a1 - v8 > -3001)
  {
    if (a1 - v8 < 3001)
    {
      *a2 = v8;
      *a3 = *(v6 + 21544);
      *a4 = *(v6 + 21536);
      *a5 = *(v6 + 21552);
      *a6 = 0.0;
      return 1;
    }
  }

  else
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Track", a1 - v8, a1, v8);
    v6 = p_NA;
  }

  result = 0;
  *(v6 + 375) = 0;
  return result;
}

uint64_t Core_Get_GPS_Alm(int a1, int a2, uint64_t a3)
{
  if ((a1 - 33) < 0xFFFFFFE0)
  {
    return 0;
  }

  v4 = (a1 - 1);
  if (a2 >= 619315201 && *(p_NA + 47 + v4))
  {
    v5 = *(p_NA + 36 * v4 + 3152);
    if (a2 - v5 >= 15724801)
    {
      result = 0;
      *(p_NA + 47 + v4) = 0;
      return result;
    }
  }

  else
  {
    if (!*(p_NA + 47 + v4))
    {
      return 0;
    }

    v5 = *(p_NA + 36 * v4 + 3152);
  }

  v6 = p_NA + 36 * v4;
  v7 = *(v6 + 3156);
  *a3 = v5;
  *(a3 + 4) = v7;
  *(a3 + 8) = 0;
  *(a3 + 10) = *(v6 + 3160);
  v8 = (v6 + 3162);
  v9 = 9;
  v10 = 12;
  do
  {
    v11 = a3 + v10;
    *v11 = *v8;
    *(v11 + 1) = v8[1];
    *(v11 + 2) = v8[2];
    --v9;
    v10 += 4;
    v8 += 3;
  }

  while (v9 > 1);
  v12 = *a3;
  if (a2)
  {
    v13 = v12 < a2 + 50;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (v12)
  {
    v15 = v12 < 619315201;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t Core_Get_QZSS_Alm(int a1, int a2, uint64_t a3)
{
  if ((a1 - 203) < 0xFFFFFFF6)
  {
    return 0;
  }

  v4 = (a1 - 193);
  if (a2 >= 619315201 && *(p_NA + 89 + v4))
  {
    v5 = *(p_NA + 36 * v4 + 5024);
    if (a2 - v5 >= 15724801)
    {
      result = 0;
      *(p_NA + 89 + v4) = 0;
      return result;
    }
  }

  else
  {
    if (!*(p_NA + 89 + v4))
    {
      return 0;
    }

    v5 = *(p_NA + 36 * v4 + 5024);
  }

  v6 = p_NA + 36 * v4;
  v7 = *(v6 + 5028);
  *a3 = v5;
  *(a3 + 4) = v7;
  *(a3 + 8) = 0;
  *(a3 + 10) = *(v6 + 5032);
  v8 = (v6 + 5034);
  v9 = 9;
  v10 = 12;
  do
  {
    v11 = a3 + v10;
    *v11 = *v8;
    *(v11 + 1) = v8[1];
    *(v11 + 2) = v8[2];
    --v9;
    v10 += 4;
    v8 += 3;
  }

  while (v9 > 1);
  v12 = *a3;
  if (a2)
  {
    v13 = v12 < a2 + 50;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (v12)
  {
    v15 = v12 < 619315201;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

BOOL Core_Get_GLON_Alm(int a1, int a2, uint64_t a3)
{
  if ((a1 - 25) < 0xFFFFFFE8)
  {
    return 0;
  }

  v4 = (a1 - 1);
  if (a2 >= 619315201 && *(p_NA + 123 + v4))
  {
    if (a2 - *(p_NA + 36 * v4 + 16748) >= 15724801)
    {
      result = 0;
      *(p_NA + 123 + v4) = 0;
      return result;
    }
  }

  else if (!*(p_NA + 123 + v4))
  {
    return 0;
  }

  v5 = p_NA + 36 * v4 + 16748;
  v7 = *v5;
  v6 = *(v5 + 16);
  *(a3 + 32) = *(v5 + 32);
  *a3 = v7;
  *(a3 + 16) = v6;
  v8 = *a3;
  if (*a3 && v8 < 619315201)
  {
    return 0;
  }

  return !a2 || v8 < a2 + 50;
}

BOOL Core_Get_GAL_Alm(int a1, int a2, uint64_t a3)
{
  if ((a1 - 37) < 0xFFFFFFDC)
  {
    return 0;
  }

  v4 = (a1 - 1);
  if (a2 >= 619315201 && *(p_NA + 186 + v4))
  {
    if (a2 - *(p_NA + 36 * v4 + 8568) >= 15724801)
    {
      result = 0;
      *(p_NA + 186 + v4) = 0;
      return result;
    }
  }

  else if (!*(p_NA + 186 + v4))
  {
    return 0;
  }

  v5 = p_NA + 36 * v4;
  v7 = *(v5 + 8568);
  v6 = *(v5 + 8584);
  *(a3 + 32) = *(v5 + 8600);
  *a3 = v7;
  *(a3 + 16) = v6;
  v8 = *a3;
  if (*a3 && v8 < 619315201)
  {
    return 0;
  }

  return !a2 || v8 < a2 + 50;
}

BOOL Core_Get_BDS_Alm(int a1, int a2, _OWORD *a3)
{
  if ((a1 - 38) < 0xFFFFFFDB)
  {
    return 0;
  }

  v4 = (a1 - 1);
  if (a2 >= 619315201 && *(p_NA + 260 + v4))
  {
    if (a2 - *(p_NA + 44 * v4 + 13584) >= 15724801)
    {
      result = 0;
      *(p_NA + 260 + v4) = 0;
      return result;
    }
  }

  else if (!*(p_NA + 260 + v4))
  {
    return 0;
  }

  v5 = (p_NA + 44 * v4);
  v6 = v5[850];
  v7 = v5[849];
  *(a3 + 28) = *(v5 + 13612);
  *a3 = v7;
  a3[1] = v6;
  v8 = *a3;
  if (*a3 && v8 < 619315201)
  {
    return 0;
  }

  return !a2 || v8 < a2 + 50;
}

BOOL Core_Get_GPS_Eph(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if ((a1 - 33) < 0xFFFFFFE0)
  {
    return 0;
  }

  v6 = (a1 - 1);
  v7 = p_NA + 15;
  if (!a2 && !a3)
  {
    *(v7 + v6) = 0;
    EvLog_d("Core_Get_GPS_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  v9 = *(v7 + v6);
  if (a2 >= 619315201 && (v9 & 1) != 0)
  {
    v10 = *(p_NA + 72 * v6 + 848);
    if (v10 >= 619315201 && a2 - v10 > 21600)
    {
      EvLog_nd("Core_Get_GPS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v10);
      result = 0;
      *(p_NA + v6 + 15) = 0;
      return result;
    }

    v9 = 1;
  }

  result = 0;
  if (a3 && (v9 & 1) != 0)
  {
    UnCompact_GPS_BinEph(a3, p_NA + 72 * v6 + 848);
    v13 = a3[2];
    v14 = 16 * a3[7];
    v15 = a3[17];
    if ((v13 & 0xFFC000) != 0 || ((a3[9] | v15) & 3) != 0 || (a3[25] & 3) != 0)
    {
      v16 = *a3;
      if (v16 >= 1)
      {
        v17 = (v13 >> 14) & 0x3FF;
        do
        {
          v18 = v17;
          LOWORD(v17) = v17 + 1024;
        }

        while (v18 < *(*(p_api + 72) + 1026));
        v19 = 604800 * v18;
        v20 = v19 + v14 - v16;
        if (v16 >= 619315201 && v20 >= 618105601)
        {
          if (v20 >= 0x49C18B00)
          {
            v20 = 1237420800;
          }

          v20 = v20 - 1238630399 + (v14 + v19 - v16 - v20 + 619315199) % 0x24EA0000u;
        }

        if (v20 > -21601 || v14 >> 5 > 0x2A2)
        {
          v22 = v14 <= 0x8E620 || v20 <= 21600;
          LODWORD(v21) = v20 - 604800;
          if (v22)
          {
            v21 = v20;
          }

          else
          {
            v21 = v21;
          }
        }

        else
        {
          v21 = (v20 + 604800);
        }

        if (v21 >= 0)
        {
          v23 = v21;
        }

        else
        {
          v23 = -v21;
        }

        if (v23 >= 0x5461)
        {
          *(p_NA + v6 + 15) = 0;
          EvLog_nd("Core_Get_GPS_Eph:  (c) Deleted SV", 5, v12, a1, a2, v21, v14, v16);
        }
      }
    }

    if (a2 >= 1)
    {
      LODWORD(v24) = (a2 - v14) % 604800;
      if (v24 <= 302400)
      {
        v24 = v24;
      }

      else
      {
        v24 = (v24 - 604800);
      }

      v25 = v24 > 10800 && (v15 & 0x80) == 0;
      v26 = *a3;
      if (v25 || v24 >= 16201)
      {
        *(p_NA + v6 + 15) = 0;
        EvLog_nd("Core_Get_GPS_Eph:  (d) Deleted SV", 5, v12, a1, a2, v24, v14, v26);
        LODWORD(v26) = *a3;
      }

      if (!v26)
      {
        *a3 = a2;
      }
    }

    if (*(p_NA + v6 + 15) != 1)
    {
      return 0;
    }

    v28 = *a3;
    if (*a3)
    {
      if (v28 < 619315201)
      {
        return 0;
      }
    }

    if (a2 && v28 >= a2 + 300)
    {
      return 0;
    }

    if (v28)
    {
      v29 = v28 <= a2 - 7200;
    }

    else
    {
      v29 = 0;
    }

    return !v29;
  }

  return result;
}

BOOL Core_Get_QZSS_Eph(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if ((a1 - 203) < 0xFFFFFFF6)
  {
    return 0;
  }

  v6 = (a1 - 193);
  v7 = p_NA + 79;
  if (!a2 && !a3)
  {
    *(v7 + v6) = 0;
    EvLog_d("Core_Get_QZSS_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  v9 = *(v7 + v6);
  if (a2 >= 619315201 && (v9 & 1) != 0)
  {
    v10 = *(p_NA + 72 * v6 + 4304);
    if (v10 >= 619315201 && a2 - v10 > 21600)
    {
      EvLog_nd("Core_Get_QZSS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v10);
      result = 0;
      *(p_NA + v6 + 79) = 0;
      return result;
    }

    v9 = 1;
  }

  result = 0;
  if (a3 && (v9 & 1) != 0)
  {
    UnCompact_GPS_BinEph(a3, p_NA + 72 * v6 + 4304);
    v13 = a3[2];
    v14 = 16 * a3[7];
    v15 = a3[17];
    if ((v13 & 0xFFC000) != 0 || ((a3[9] | v15) & 3) != 0 || (a3[25] & 3) != 0)
    {
      v16 = *a3;
      if (v16 >= 1)
      {
        v17 = (v13 >> 14) & 0x3FF;
        do
        {
          v18 = v17;
          LOWORD(v17) = v17 + 1024;
        }

        while (v18 < *(*(p_api + 72) + 1026));
        v19 = 604800 * v18;
        v20 = v19 + v14 - v16;
        if (v16 >= 619315201 && v20 >= 618105601)
        {
          if (v20 >= 0x49C18B00)
          {
            v20 = 1237420800;
          }

          v20 = v20 - 1238630399 + (v14 + v19 - v16 - v20 + 619315199) % 0x24EA0000u;
        }

        if (v20 > -21601 || v14 >> 5 > 0x2A2)
        {
          v22 = v14 <= 0x8E620 || v20 <= 21600;
          LODWORD(v21) = v20 - 604800;
          if (v22)
          {
            v21 = v20;
          }

          else
          {
            v21 = v21;
          }
        }

        else
        {
          v21 = (v20 + 604800);
        }

        if (v21 >= 0)
        {
          v23 = v21;
        }

        else
        {
          v23 = -v21;
        }

        if (v23 >= 0x5461)
        {
          *(p_NA + v6 + 79) = 0;
          EvLog_nd("Core_Get_QZSS_Eph:  (c) Deleted SV", 5, v12, a1, a2, v21, v14, v16);
        }
      }
    }

    if (a2 >= 1)
    {
      LODWORD(v24) = (a2 - v14) % 604800;
      if (v24 <= 302400)
      {
        v24 = v24;
      }

      else
      {
        v24 = (v24 - 604800);
      }

      v25 = v24 > 10800 && (v15 & 0x80) == 0;
      v26 = *a3;
      if (v25 || v24 >= 16201)
      {
        *(p_NA + v6 + 79) = 0;
        EvLog_nd("Core_Get_QZSS_Eph:  (d) Deleted SV", 5, v12, a1, a2, v24, v14, v26);
        LODWORD(v26) = *a3;
      }

      if (!v26)
      {
        *a3 = a2;
      }
    }

    if (*(p_NA + v6 + 79) != 1)
    {
      return 0;
    }

    v28 = *a3;
    if (*a3)
    {
      if (v28 < 619315201)
      {
        return 0;
      }
    }

    if (a2 && v28 >= a2 + 300)
    {
      return 0;
    }

    if (v28)
    {
      v29 = v28 <= a2 - 7200;
    }

    else
    {
      v29 = 0;
    }

    return !v29;
  }

  return result;
}

BOOL Core_Get_GAL_Eph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 - 37) < 0xFFFFFFDC)
  {
    return 0;
  }

  v4 = a2;
  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 150;
  if (!a2 && !a3)
  {
    *(v8 + v6) = 0;
    EvLog_d("Core_Get_GAL_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  if (a2 >= 619315201 && (*(v8 + v6) & 1) != 0)
  {
    v9 = *(p_NA + 88 * v6 + 5400);
    if (v9 >= 619315201 && a2 - v9 >= 14401)
    {
      EvLog_nd("Core_Get_GAL_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      *(p_NA + v6 + 150) = 0;
    }

    v11 = 60 * *(v7 + 88 * v6 + 5418);
    v12 = v4 % 0x93A80 - v11;
    LODWORD(v13) = v12 + 604800;
    if (v12 >= -302400)
    {
      LODWORD(v13) = v4 % 0x93A80 - v11;
    }

    if (v12 <= 302399)
    {
      v13 = v13;
    }

    else
    {
      v13 = (v12 - 604800);
    }

    if (v13 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    if (v14 >= 0x3841)
    {
      *(v7 + v6 + 150) = 0;
      EvLog_nd("Core_Get_GAL_Eph:  (c) Deleted SV", 4, a3, a1, v13, v4 % 0x93A80, v11);
    }
  }

  if (!a3)
  {
    return 0;
  }

  v15 = p_NA + 150;
  if (*(p_NA + 150 + v6) != 1)
  {
    return 0;
  }

  v16 = p_NA + 88 * v6;
  v17 = *(v16 + 5416);
  *a3 = *(v16 + 5400);
  *(a3 + 16) = v17;
  v18 = *(v16 + 5432);
  v19 = *(v16 + 5448);
  v20 = *(v16 + 5464);
  *(a3 + 80) = *(v16 + 5480);
  *(a3 + 48) = v19;
  *(a3 + 64) = v20;
  *(a3 + 32) = v18;
  v21 = *a3;
  if (v4 >= 1 && !v21)
  {
    *a3 = v4;
    v21 = v4;
  }

  if (*(v15 + v6) != 1 || v21 && v21 < 619315201 || v4 && v21 >= (v4 + 300))
  {
    return 0;
  }

  if (v21)
  {
    v23 = v21 <= (v4 - 1800);
  }

  else
  {
    v23 = 0;
  }

  return !v23;
}

BOOL Core_Get_BDS_Eph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 - 38) < 0xFFFFFFDB)
  {
    return 0;
  }

  v4 = a2;
  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 223;
  if (!a2 && !a3)
  {
    *(v8 + v6) = 0;
    EvLog_d("Core_Get_BDS_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  if (a2 >= 619315201 && (*(v8 + v6) & 1) != 0)
  {
    v9 = *(p_NA + 100 * v6 + 9884);
    if (v9 >= 619315201 && a2 - v9 >= 14401)
    {
      EvLog_nd("Core_Get_BDS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      *(p_NA + v6 + 223) = 0;
    }

    v11 = *(v7 + 100 * v6 + 9896);
    v12 = v4 % 0x93A80 - 8 * v11;
    LODWORD(v13) = v12 + 604800;
    if (v12 >= -302400)
    {
      LODWORD(v13) = v4 % 0x93A80 - 8 * v11;
    }

    if (v12 <= 302399)
    {
      v13 = v13;
    }

    else
    {
      v13 = (v12 - 604800);
    }

    if (v13 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    if (v14 >= 0x3841)
    {
      *(v7 + v6 + 223) = 0;
      EvLog_nd("Core_Get_BDS_Eph:  (c) Deleted SV", 4, a3, a1, v13, v4 % 0x93A80, (8 * v11));
    }
  }

  if (!a3)
  {
    return 0;
  }

  v15 = p_NA + 223;
  if (*(p_NA + 223 + v6) != 1)
  {
    return 0;
  }

  v16 = p_NA + 100 * v6;
  v17 = *(v16 + 9916);
  v18 = *(v16 + 9884);
  *(a3 + 16) = *(v16 + 9900);
  *(a3 + 32) = v17;
  *a3 = v18;
  v19 = *(v16 + 9932);
  v20 = *(v16 + 9948);
  v21 = *(v16 + 9964);
  *(a3 + 96) = *(v16 + 9980);
  *(a3 + 64) = v20;
  *(a3 + 80) = v21;
  *(a3 + 48) = v19;
  v22 = *a3;
  if (v4 >= 1 && !v22)
  {
    *a3 = v4;
    v22 = v4;
  }

  if (*(v15 + v6) != 1 || v22 && v22 < 619315201 || v4 && v22 >= (v4 + 300))
  {
    return 0;
  }

  if (v22)
  {
    v24 = v22 <= (v4 - 1800);
  }

  else
  {
    v24 = 0;
  }

  return !v24;
}

BOOL Core_Get_GLON_Eph(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if ((a1 - 25) < 0xFFFFFFE8)
  {
    return 0;
  }

  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 99;
  if (!a2 && !a3)
  {
    *(v8 + v6) = 0;
    EvLog_d("Core_Get_GLON_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  if (a2 >= 619315201 && (*(v8 + v6) & 1) != 0)
  {
    v9 = *(p_NA + (v6 << 6) + 15212);
    if (v9 >= 619315201 && a2 - v9 >= 9901)
    {
      EvLog_nd("Core_Get_GLON_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      v11 = p_NA + v6;
      *(v11 + 99) = 0;
      *(v11 + 17640) = 127;
    }

    v12 = 900 * (*(v7 + (v6 << 6) + 15238) & 0x7Fu);
    v13 = (a2 + 10800) % 0x15180u - v12;
    v14 = v13 + 86400;
    if (v13 >= -43200)
    {
      v14 = (a2 + 10800) % 0x15180u - v12;
    }

    if (v13 > 43199)
    {
      v14 = v13 - 86400;
    }

    if (v14 < 0)
    {
      v14 = -v14;
    }

    if (v14 >= 0x26AD)
    {
      *(v7 + v6 + 99) = 0;
      EvLog_nd("Core_Get_GLON_Eph:  (c) Deleted SV", 4, a3, a1, a2, (a2 + 10800) % 0x15180u, v12);
      v7 = p_NA;
      *(p_NA + v6 + 17640) = 127;
    }
  }

  if (!a3)
  {
    return 0;
  }

  v15 = v7 + 99;
  if (*(v7 + 99 + v6) != 1)
  {
    return 0;
  }

  v16 = (v7 + (v6 << 6) + 15212);
  v17 = v16[3];
  v19 = *v16;
  v18 = v16[1];
  a3[2] = v16[2];
  a3[3] = v17;
  *a3 = v19;
  a3[1] = v18;
  v20 = *a3;
  if (a2 >= 1 && !v20)
  {
    *a3 = a2;
    v20 = a2;
  }

  if (*(v15 + v6) != 1 || v20 && v20 < 619315201 || a2 && v20 >= a2 + 300)
  {
    return 0;
  }

  if (v20)
  {
    v22 = v20 <= a2 - 1800;
  }

  else
  {
    v22 = 0;
  }

  return !v22;
}

uint64_t Core_Get_GLON_Clk1(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 147) != 1)
  {
    return 0;
  }

  v3 = p_NA + 17612;
  v4 = *(p_NA + 17612);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 >= 1209601)
  {
    result = 0;
    *(v2 + 147) = 0;
    return result;
  }

LABEL_8:
  if (v4)
  {
    v6 = v4 < 619315201;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = *v3;
    *(a2 + 12) = *(v3 + 12);
    *a2 = v7;
    return 1;
  }

  return 0;
}

uint64_t Core_Get_GPS_Klob(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 13) != 1)
  {
    return 0;
  }

  v3 = (p_NA + 808);
  v4 = *(p_NA + 808);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 >= 1209601)
  {
    result = 0;
    *(v2 + 13) = 0;
    return result;
  }

LABEL_8:
  if (v4)
  {
    v6 = v4 < 619315201;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    *a2 = *v3;
    return 1;
  }

  return 0;
}

uint64_t Core_Get_GPS_UTC(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 14) != 1)
  {
    return 0;
  }

  v3 = p_NA + 824;
  v4 = *(p_NA + 824);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 >= 1209601)
  {
    result = 0;
    *(v2 + 14) = 0;
    return result;
  }

LABEL_8:
  if (v4)
  {
    v6 = v4 < 619315201;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = *v3;
    *(a2 + 16) = *(v3 + 16);
    *a2 = v7;
    return 1;
  }

  return 0;
}

uint64_t Core_Get_GAL_GGTO(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 149) != 1)
  {
    return 0;
  }

  v3 = *(p_NA + 5384);
  if (a1 < 619315201 || v3)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = a1 - 900;
    *(p_NA + 5384) = a1 - 900;
  }

  if (a1 - v3 >= 1209601)
  {
    result = 0;
    *(v2 + 149) = 0;
    return result;
  }

LABEL_8:
  if (v3)
  {
    v5 = v3 < 619315201;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    *a2 = *(v2 + 5384);
    return 1;
  }

  return 0;
}

uint64_t Core_Get_BDS_BGTO(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 222) != 1)
  {
    return 0;
  }

  v3 = (p_NA + 9864);
  v4 = *(p_NA + 9864);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 >= 1209601)
  {
    result = 0;
    *(v2 + 222) = 0;
    return result;
  }

LABEL_8:
  if (v4)
  {
    v6 = v4 < 619315201;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = *v3;
    *(a2 + 16) = v3[4];
    *a2 = v7;
    return 1;
  }

  return 0;
}

uint64_t Core_Get_AGNSS_AcqAss(_DWORD *a1, _BYTE *a2, uint64_t a3)
{
  v3 = p_NA;
  if (*(p_NA + 297) != 1)
  {
    return 0;
  }

  v7 = *(p_api + 48);
  if (*(v7 + 5) == 1 && *v7 >= 3)
  {
    v8 = *(v7 + 24) + 604800 * *(v7 + 16);
    if (v8 >= 619315201)
    {
      v9 = *(p_NA + 17664);
      v10 = 1000 * (v8 % 0x93A80u);
      if (v10 - v9 - 180001 <= 0xFFFCCBAE)
      {
        *(p_NA + 297) = 0;
        EvCrt_v("Core_Get_AGPS_AcqAss:  AcqAss Invalidated,  d_ITOW = %d =(%d - %d)", v10 - v9, v10, v9);
        v3 = p_NA;
        *(p_NA + 148) = 0;
        if ((*(v3 + 297) & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  LOBYTE(v11) = *(v3 + 17672);
  if (v11)
  {
    v12 = 0;
    v11 = 0;
    v13 = 17676;
    do
    {
      v14 = (v3 + v13);
      if (*(v3 + v13) != 4)
      {
        v15 = a3 + 28 * v11;
        v16 = *(v14 + 12);
        *v15 = *v14;
        *(v15 + 12) = v16;
        if (*v15 == 2)
        {
          v17 = v3 + 17676 + 28 * v11;
          v18 = *(v17 + 2);
          v19 = *(*(p_api + 56) + 4 * (v18 - 1) + 16336);
          if (v19 != 2139062143)
          {
            *(v17 + 3) = v19;
            *(v15 + 3) = v19;
LABEL_17:
            if ((v18 - 1) <= 0x17 && (v19 + 7) <= 0xDu)
            {
              v21 = v19;
              v22 = *(p_api + 56);
              v23 = v22 + 4 * (v21 + 7);
              *(v23 + 16432) = v18;
              *(v23 + 16488) = 3;
              *(v22 + 4 * (v18 - 1) + 16336) = v21;
            }

            ++v11;
            v3 = p_NA;
            goto LABEL_23;
          }

          if (*(v3 + 148) == 1)
          {
            v19 = *(v3 + v18 - 1 + 17640);
            if (v19 != 127)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          ++v11;
        }
      }

LABEL_23:
      ++v12;
      v13 += 28;
    }

    while (v12 < *(v3 + 17672));
  }

  *a2 = v11;
  *a1 = *(v3 + 17664);
  return 1;
}

uint64_t Core_Get_GPS_TOWAss(unsigned int *__b)
{
  v2 = *(p_api + 48);
  if (*(v2 + 5) == 1 && *v2 >= 3)
  {
    v3 = *(v2 + 24) + 604800 * *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = p_NA;
  if (*(p_NA + 298) == 1 && (v3 < 619315201 || (v5 = *(p_NA + 19020), v6 = 1000 * (v3 % 0x93A80u), v6 - v5 - 180001 > 0xFFFD0646) || (*(p_NA + 298) = 0, EvCrt_v("Core_Get_GPS_TOWAss:  TOW_Assist Invalidated,  d_ITOW = %d =(%d - %d)", v6 - v5, 1000 * (v3 % 0x93A80u), v5), v4 = p_NA, (*(p_NA + 298) & 1) != 0)))
  {
    v7 = v4[1189];
    v8 = v4[1190];
    v9 = v4[1192];
    *(__b + 2) = v4[1191];
    *(__b + 3) = v9;
    *__b = v7;
    *(__b + 1) = v8;
    v10 = v4[1193];
    v11 = v4[1194];
    v12 = v4[1196];
    *(__b + 6) = v4[1195];
    *(__b + 7) = v12;
    *(__b + 4) = v10;
    *(__b + 5) = v11;
  }

  else
  {
    if ((v3 - 681909601) >= 0x1869F && (v3 - 758719201) >= 0x1869F && (v3 - 790368801) >= 0x1869F)
    {
      result = 0;
      *__b = 0;
      return result;
    }

    memset_pattern16(__b, &unk_2997294B0, 0x80uLL);
  }

  return 1;
}

void s_NA_Ram::s_NA_Ram(s_NA_Ram *this)
{
  *(this + 89) = 0;
  v2 = this + 17612;
  *(this + 720) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 410) = 0u;
  *(this + 240) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 27) = 0u;
  *(this + 61) = 0;
  *(this + 31) = 0u;
  *(this + 128) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 548) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0;
  *(this + 37) = 0u;
  *(this + 152) = 0;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 692) = 0u;
  *(this + 105) = 0;
  v3 = 848;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  do
  {
    v4 = this + v3;
    *(v4 + 63) = 0;
    *(v4 + 2) = 0uLL;
    *(v4 + 3) = 0uLL;
    v3 += 72;
    *v4 = 0uLL;
    *(v4 + 1) = 0uLL;
  }

  while (v3 != 3152);
  do
  {
    v5 = this + v3;
    *(v5 + 16) = 0;
    *v5 = 0uLL;
    *(v5 + 1) = 0uLL;
    v3 += 36;
  }

  while (v3 != 4304);
  v6 = -720;
  do
  {
    v7 = (this + v6);
    v7[317] = 0uLL;
    v7[316] = 0uLL;
    v7[315] = 0uLL;
    v7[314] = 0uLL;
    *(this + v6 + 5087) = 0;
    v6 += 72;
  }

  while (v6);
  v8 = -360;
  do
  {
    *(this + v8 + 5416) = 0;
    v9 = (this + v8 + 5384);
    *v9 = 0uLL;
    v9[1] = 0uLL;
    v8 += 36;
  }

  while (v8);
  *(this + 673) = 0;
  *(this + 5390) = 0;
  v10 = -3168;
  do
  {
    v11 = this + v10 + 8568;
    *(v11 + 79) = 0;
    *(v11 + 3) = 0uLL;
    *(v11 + 4) = 0uLL;
    *(v11 + 1) = 0uLL;
    *(v11 + 2) = 0uLL;
    *v11 = 0uLL;
    v10 += 88;
  }

  while (v10);
  v12 = -1296;
  do
  {
    v13 = this + v12 + 9864;
    *(v13 + 31) = 0;
    *v13 = 0uLL;
    *(v13 + 1) = 0uLL;
    v12 += 36;
  }

  while (v12);
  *(this + 9864) = 0u;
  *(this + 2470) = 0;
  v14 = -3700;
  do
  {
    v15 = this + v14;
    *(v15 + 3420) = 0;
    v16 = this + v14 + 13608;
    *(v15 + 849) = 0uLL;
    *(this + v14 + 13599) = 0;
    *v16 = 0uLL;
    *(v16 + 1) = 0uLL;
    *(v16 + 2) = 0uLL;
    *(v16 + 3) = 0uLL;
    *(v16 + 62) = 0;
    v14 += 100;
  }

  while (v14);
  bzero(this + 13584, 0x65CuLL);
  for (i = 0; i != 1536; i += 64)
  {
    v18 = (this + i + 15212);
    *(v18 + 46) = 0uLL;
    v18[1] = 0uLL;
    v18[2] = 0uLL;
    *v18 = 0uLL;
  }

  v19 = (this + 16760);
  v20 = 864;
  do
  {
    *(v19 - 12) = 0;
    *(v19 - 2) = 0;
    v19[1] = 0;
    v19[2] = 0;
    *v19 = 0;
    v19 = (v19 + 36);
    v20 -= 36;
  }

  while (v20);
  *v2 = 0;
  *(v2 + 4) = 0;
  *(v2 + 3) = 0;
  v2[16] = 0;
  *(v2 + 5) = 0;
  *(this + 17640) = 0u;
  *(this + 17656) = 0u;
  *(this + 17672) = 0;
  v21 = this + 17676;
  v22 = 1344;
  v2[24] = 0;
  do
  {
    *(v21 + 5) = 0;
    *(v21 + 6) = 0;
    *v21 = 0;
    *(v21 + 1) = 0;
    *(v21 + 8) = 0;
    v21 += 28;
    v22 -= 28;
  }

  while (v22);
  *(v2 + 967) = 0;
  *(this + 19020) = 0u;
  *(this + 19036) = 0u;
  *(this + 19052) = 0u;
  *(this + 19068) = 0u;
  *(this + 19084) = 0u;
  *(this + 19100) = 0u;
  *(this + 19116) = 0u;
  *(this + 19132) = 0u;
  *(this + 19141) = 0u;
  *(this + 2395) = 0;
  *(this + 19168) = 0;
  *(this + 1343) = 0u;
  *(this + 5376) = 0;
  *(this + 21512) = 0u;
  *(this + 5382) = 0;
  *(this + 2694) = 0;
  *(this + 1346) = 0u;
}

__n128 SBAS_Eph2RefState(__n128 *a1, char a2, __int16 a3, int a4, uint64_t a5)
{
  *(a5 + 176) = 0;
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
  *(a5 + 180) = a2;
  *(a5 + 184) = 1;
  *(a5 + 176) = 6;
  *(a5 + 112) = 0x4083880000000000;
  v8 = a1->n128_u32[2];
  v9 = ldiv(a4, 86400);
  if ((LODWORD(v9.rem) - v8) >= -43200)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if ((LODWORD(v9.rem) - v8) > 43199)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v8 + 86400 * (v11 + LODWORD(v9.quot));
  v13 = v12 - 604800;
  if (v12 > 0x93A7F)
  {
    v14 = a3 + 1;
  }

  else
  {
    v13 = v12;
    v14 = a3;
  }

  v15 = v12 >= 0;
  if (v12 < 0)
  {
    v16 = v12 + 604800;
  }

  else
  {
    v16 = v13;
  }

  if (v15)
  {
    v17 = v14;
  }

  else
  {
    v17 = a3 - 1;
  }

  *(a5 + 160) = v16;
  *(a5 + 164) = v17;
  *a5 = a1[2].n128_u64[0];
  *(a5 + 8) = a1[2].n128_u64[1];
  *(a5 + 16) = a1[3].n128_u64[0];
  *(a5 + 24) = a1[3].n128_u64[1];
  *(a5 + 32) = a1[4].n128_u64[0];
  *(a5 + 40) = a1[4].n128_u64[1];
  *(a5 + 48) = a1[5].n128_u64[0];
  *(a5 + 56) = a1[5].n128_u64[1];
  *(a5 + 64) = a1[6].n128_u64[0];
  result = a1[1];
  *(a5 + 96) = result;
  return result;
}

void ds_Intermittent(char **a1, unsigned int a2, double *a3)
{
  v6 = 0;
  *&v41[99] = *MEMORY[0x29EDCA608];
  v7 = *a1;
  v8 = 84;
  do
  {
    *a1 = v7 + 1;
    *v7 = v8;
    v7 = *a1;
    if (*a1 >= a1[3])
    {
      v7 = a1[2];
      *a1 = v7;
    }

    v8 = aTsx[++v6];
  }

  while (v6 != 4);
  sprintf_5d(a1, *(a3 + 124));
  sprintf_sgR8(a1, a3[10]);
  sprintf_sgR8(a1, a3[11]);
  sprintf_sgR8(a1, a3[12]);
  sprintf_sgR8(a1, a3[13]);
  sprintf_sgR8(a1, a3[14]);
  sprintf_sgR8(a1, a3[15]);
  sprintf_sgR8(a1, a3[16]);
  sprintf_sgR8(a1, a3[18]);
  sprintf_sgR8(a1, a3[19]);
  sprintf_sgR8(a1, a3[20]);
  sprintf_sgR8(a1, a3[21]);
  sprintf_sgR8(a1, a3[22]);
  sprintf_sgR8(a1, a3[23]);
  sprintf_sgR8(a1, a3[24]);
  sprintf_sgR8(a1, a3[25]);
  sprintf_sgR8(a1, a3[26]);
  sprintf_sgR8(a1, a3[27]);
  sprintf_sgR8(a1, a3[28]);
  sprintf_sgR8(a1, a3[29]);
  sprintf_sgR8(a1, a3[30]);
  v9 = (*a1)++;
  *v9 = 10;
  v10 = *a1;
  if (*a1 >= a1[3])
  {
    v10 = a1[2];
  }

  v11 = "INT";
  if (a2 == 11)
  {
    v11 = "Int";
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = (v11 + 1);
    do
    {
      *a1 = v10 + 1;
      *v10 = v12;
      v10 = *a1;
      if (*a1 >= a1[3])
      {
        v10 = a1[2];
        *a1 = v10;
      }

      v14 = *v13++;
      v12 = v14;
    }

    while (v14);
  }

  v15 = &ch_GNSS_Exe_States[20 * a2 + 1];
  v16 = 32;
  do
  {
    *a1 = v10 + 1;
    *v10 = v16;
    v10 = *a1;
    if (*a1 >= a1[3])
    {
      v10 = a1[2];
      *a1 = v10;
    }

    v17 = *v15++;
    v16 = v17;
  }

  while (v17);
  v18 = **(p_api + 8);
  *a1 = v10 + 1;
  *v10 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf_10u(a1, v18);
  if (a2 <= 0xB)
  {
    if (((1 << a2) & 0xA48) != 0)
    {
      sprintf_5d(a1, *(a3 + 237));
      v19 = *a1;
      v20 = &ch_Oper_Mode[6 * *a3 + 1];
      v21 = 32;
      do
      {
        *a1 = v19 + 1;
        *v19 = v21;
        v19 = *a1;
        if (*a1 >= a1[3])
        {
          v19 = a1[2];
          *a1 = v19;
        }

        v22 = *v20++;
        v21 = v22;
      }

      while (v22);
      sprintf_ACC(a1, a3[*a3 + 120]);
      v23 = (*a1)++;
      *v23 = 32;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_ACC(a1, a3[*a3 + 122]);
      v24 = *a1;
      v25 = &ch_Sens_Mode[4 * *(a3 + 1) + 1];
      v26 = 32;
      do
      {
        *a1 = v24 + 1;
        *v24 = v26;
        v24 = *a1;
        if (*a1 >= a1[3])
        {
          v24 = a1[2];
          *a1 = v24;
        }

        v27 = *v25++;
        v26 = v27;
      }

      while (v27);
      v28 = &ch_Sens_Mode[4 * *(a3 + 2) + 1];
      v29 = 32;
      do
      {
        *a1 = v24 + 1;
        *v24 = v29;
        v24 = *a1;
        if (*a1 >= a1[3])
        {
          v24 = a1[2];
          *a1 = v24;
        }

        v30 = *v28++;
        v29 = v30;
      }

      while (v30);
      v31 = &ch_Power_Mode[4 * *(a3 + 4) + 1];
      v32 = 32;
      do
      {
        *a1 = v24 + 1;
        *v24 = v32;
        v24 = *a1;
        if (*a1 >= a1[3])
        {
          v24 = a1[2];
          *a1 = v24;
        }

        v33 = *v31++;
        v32 = v33;
      }

      while (v33);
      sprintf_sp1d(a1, *(a3 + 17));
      sprintf_sp1d(a1, *(a3 + 72));
      sprintf_sp1d(a1, *(a3 + 73));
      sprintf_sp1d(a1, *(a3 + 6));
      sprintf_sp1d(a1, *(a3 + 28));
      sprintf_4d(a1, *(a3 + 250));
      sprintf_4d(a1, *(a3 + 251));
    }

    else if (a2 == 2)
    {
      GN_GPS_Get_LibVersion(&v40);
      v35 = *a1;
      for (i = 5; i > 1; --i)
      {
        *a1 = v35 + 1;
        *v35 = 32;
        v35 = *a1;
        if (*a1 >= a1[3])
        {
          v35 = a1[2];
          *a1 = v35;
        }
      }

      v37 = v40;
      if (v40)
      {
        v38 = v41;
        do
        {
          *a1 = v35 + 1;
          *v35 = v37;
          v35 = *a1;
          if (*a1 >= a1[3])
          {
            v35 = a1[2];
            *a1 = v35;
          }

          v39 = *v38++;
          v37 = v39;
        }

        while (v39);
      }
    }
  }

  v34 = (*a1)++;
  *v34 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }
}

BOOL Is_Legal(int a1)
{
  result = 0;
  if (BYTE2(a1) && a1 & 0xFF00FFFF | (BYTE2(a1) << 16))
  {
    v3 = BYTE2(a1) < 0x26u;
    v4 = BYTE2(a1) - 193 < 0xA;
    v5 = BYTE2(a1) - 120 < 0x27;
    if (a1 != 6)
    {
      v5 = 0;
    }

    if (a1 != 5)
    {
      v4 = v5;
    }

    if (a1 != 4)
    {
      v3 = v4;
    }

    v6 = BYTE2(a1) < 0x25u;
    if (a1 != 3)
    {
      v6 = 0;
    }

    if (a1 == 2)
    {
      v6 = BYTE2(a1) < 0x19u;
    }

    if (a1 == 1)
    {
      v6 = BYTE2(a1) < 0x21u;
    }

    if (a1 <= 3u)
    {
      return v6;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t PP_Acq_Ass_Update_AA(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v8 = 0;
  *&v106[1324] = *MEMORY[0x29EDCA608];
  do
  {
    v9 = &v105[v8];
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *v9 = 0;
    *(v9 + 1) = 0;
    v8 += 28;
    *(v9 + 8) = 0;
  }

  while (v8 != 1344);
  v10 = 0;
  *(a2 + 5008) = 0;
  *(a2 + 300) = -1;
  v11 = a2 + 304;
  do
  {
    v12 = (v11 + v10);
    *(v12 + 29) = 0uLL;
    *v12 = 0uLL;
    v12[1] = 0uLL;
    v10 += 48;
  }

  while (v10 != 3936);
  v99 = 0;
  v98 = 0;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *(a2 + 4240) = v13;
  *(a2 + 4256) = v13;
  *(a2 + 4272) = v13;
  *(a2 + 4288) = v13;
  *(a2 + 4304) = v13;
  *(a2 + 4320) = v13;
  *(a2 + 4336) = v13;
  *(a2 + 4352) = v13;
  *(a2 + 4368) = v13;
  *(a2 + 4384) = v13;
  *(a2 + 4400) = v13;
  *(a2 + 4416) = -1;
  *(a2 + 4594) = -25187;
  *&v13 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v13 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  *(a2 + 4418) = v13;
  *(a2 + 4434) = v13;
  *(a2 + 4450) = v13;
  *(a2 + 4466) = v13;
  *(a2 + 4482) = v13;
  *(a2 + 4498) = v13;
  *(a2 + 4514) = v13;
  *(a2 + 4530) = v13;
  *(a2 + 4546) = v13;
  *(a2 + 4562) = v13;
  *(a2 + 4578) = v13;
  memset_pattern16((a2 + 4596), &unk_299728F50, 0x164uLL);
  *(a2 + 4952) = 0;
  AGNSS_AcqAss = Core_Get_AGNSS_AcqAss(&v99, &v98, v105);
  result = 0;
  if (AGNSS_AcqAss)
  {
    v17 = *(a1 + 16);
    v18 = *(a2 + 284);
    if (v18 == 11)
    {
      v19 = (a2 + 192);
    }

    else
    {
      v19 = (&TOW_stat_Sigma_m_Table + 8 * v18);
    }

    v20 = *v19;
    if (*v19 > 300.0)
    {
      v96 = 0;
      v100 = 0.0;
      v95 = 0.0;
      if (Get_FSP_Time(*(a2 + 176), &v96, &v100, &v95, &v97))
      {
        v21 = sqrt(v95) * 299792458.0;
        if (v21 < v20)
        {
          v20 = v21;
          v17 = v100;
        }
      }
    }

    *(a2 + 5008) = v20;
    *(a2 + 5000) = v17;
    if (v20 > 1500000000.0)
    {
      EvLog_v("PP_Acq_Ass_Update_AA:  Exit:  TOW_Sigma_m = %g,  Too high!", v20);
      return 0;
    }

    v94 = a2 + 4240;
    v22 = -0.5;
    if (v17 * 1000.0 > 0.0)
    {
      v22 = 0.5;
    }

    v23 = v17 * 1000.0 + v22;
    v93 = a4;
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
      v24 = 0x7FFFFFFF;
    }

    *(a2 + 300) = v24;
    v25 = v98;
    if (v98)
    {
      v26 = 0;
      v27 = v24 - v99;
      if (v24 - v99 >= 0)
      {
        v28 = v24 - v99;
      }

      else
      {
        v28 = v99 - v24;
      }

      v29 = v28 / 0x1F40;
      v30 = v106;
      v31 = a2 + 304;
      do
      {
        v104 = 0;
        v103 = 0u;
        v102 = 0u;
        v32 = *(v30 - 5);
        if (v32)
        {
          v33 = *(a2 + 176);
          LODWORD(v100) = v33 - v27;
          BYTE4(v100) = 1;
          v101 = v32;
          LOWORD(v102) = 257;
          v34 = 154;
          if (v32 <= 3u)
          {
            if (v32 == 2)
            {
              v34 = 146;
            }

            else if (v32 == 3)
            {
              v34 = 174;
            }

            else
            {
              v34 = 154;
            }
          }

          else if (v32 == 4)
          {
            if ((v32 & 0xFF0000u) <= 0xA0000)
            {
              v34 = 258;
            }

            else
            {
              v34 = 162;
            }
          }

          else if (v32 == 5 || v32 == 6)
          {
            v34 = 258;
          }

          WORD2(v102) = v34;
          HIWORD(v102) = *(v30 - 2);
          *&v103 = *v30;
          *(&v102 + 6) = vext_s8(*(v30 - 12), *(v30 - 12), 2uLL);
          *v31 = v33;
          Comp_Cur_Acq_Aid(&v100, v31);
          v35 = *(v31 + 18) + v29;
          *(v31 + 18) = v35;
          v36 = v27 * v35 / 3079450 + *(v31 + 26);
          if (v36 > 500)
          {
            LOWORD(v36) = 512;
          }

          *(v31 + 26) = v36;
          v37 = GNSS_Id_To_Num_Prn_Idx(*(v31 + 8));
          *(a2 + 4418 + v37) = *(v30 - 15);
          *(a2 + 4596 + 2 * v37) = *(v30 - 7);
          *(v94 + v37) = v26;
          v25 = v98;
        }

        ++v26;
        v30 = (v30 + 28);
        v31 += 48;
      }

      while (v26 < v25);
    }

    v38 = *a3;
    if (*v93 != v38)
    {
      EvCrt_nd("PP_Acq_Ass_Update_AA:  Error:  Database time-tag miss-match ", 2, v14, *v93, v38);
      return 1;
    }

    v39 = 0;
    v90 = 0;
    v91 = 0;
    v40 = 0;
    v41 = 0;
    v92 = 0;
    v42 = v93 + 1365;
    v43 = (v93 + 11);
    v44 = 0xFFFF;
    do
    {
      v45 = *(v42 - 5);
      if (Is_Legal(v45) && *(v42 - 6) >= 0xAu && *v42 && ((v46 = &a3[v39], v45 != 4) ? (v47 = LOBYTE(a3[v39 + 19]) == v45) : (v47 = 0), v47 && (*(v46 + 78) == BYTE2(v45) || v45 == 2 && HIBYTE(a3[v39 + 19]) == HIBYTE(v45)) && a3[v39 + 103] >= 10 && (v48 = *(v94 + GNSS_Id_To_Num_Prn_Idx(v46[19])), (v48 & 0x8000000000000000) == 0)))
      {
        v49 = v11 + 48 * v48;
        v50 = (100 * (*(v42 - 1) & 0x300)) | *(v42 - 6);
        if (v50 <= v40 || *(v49 + 24) >> 4 > 0x3FEu)
        {
          v50 = v40;
        }

        else
        {
          v51 = *(v43 - 3) - *(v49 + 28);
          if (v51 >= 0)
          {
            v52 = *(v43 - 3) - *(v49 + 28);
          }

          else
          {
            v52 = *(v49 + 28) - *(v43 - 3);
          }

          if (v52 <= 0x62)
          {
            LODWORD(v90) = *(v43 - 2) + 1534500 * v51 - *(v49 + 32);
          }

          HIDWORD(v90) = *(v42 - 1) & 0x300;
        }

        v53 = (*(v43 - 2) - *(v49 + 32)) % 1023;
        if (v44 == 0xFFFF)
        {
          v44 = (*(v43 - 2) - *(v49 + 32)) % 1023;
        }

        v54 = v53 - v44;
        if (v53 - v44 >= 513)
        {
          if (v54 >= 0x5FF)
          {
            v54 = 1535;
          }

          v55 = 1023 * ((v53 - v44 - v54 + 1022) / 0x3FFu);
          v56 = v53 - 1023;
          v53 = v53 - 1023 - v55;
          v54 = v56 - v44 - v55;
        }

        if (v54 <= -513)
        {
          v57 = -1535 - v54;
          if (v54 > 0xFFFFFA01)
          {
            v57 = 0;
          }

          v58 = __CFADD__(v54, 1535);
          v59 = ((__PAIR64__(v57, v54) - 4294965761u) >> 32) / 0x3FF;
          if (!v58)
          {
            ++v59;
          }

          v53 = v53 - v59 + (v59 << 10) + 1023;
        }

        ++v41;
        LODWORD(v91) = v91 + (*v43 >> 8) - *(v49 + 22);
        HIDWORD(v91) += v53;
        LODWORD(v92) = v92 + *(v49 + 18);
        HIDWORD(v92) += *(v49 + 26);
      }

      else
      {
        v50 = v40;
      }

      ++v39;
      v42 += 18;
      v43 += 14;
      v40 = v50;
    }

    while (v39 != 48);
    HIDWORD(v61) = HIDWORD(v90);
    LODWORD(v61) = HIDWORD(v90);
    v60 = v61 >> 8;
    if (v60 < 2)
    {
      v63 = 0;
      v62 = v90;
    }

    else
    {
      v62 = v90;
      if (v60 == 3)
      {
        v63 = 1;
      }

      else
      {
        if (v60 != 2)
        {
          EvCrt_Illegal_Default("PP_Acq_Ass_Update_AA", 434);
          v63 = 0;
          v60 = 0;
          goto LABEL_94;
        }

        v63 = 0;
      }

      v60 = 1;
    }

    if (*(a2 + 200) <= 900.0)
    {
      goto LABEL_99;
    }

LABEL_94:
    if (*(a2 + 258) < 0x13Bu)
    {
      v64 = 1;
      goto LABEL_100;
    }

    if (*(p_NA + 8) == 1)
    {
      v64 = (sqrt(*(p_NA + 576)) * 1000000000.0) < 0x32;
    }

    else
    {
LABEL_99:
      v64 = 0;
    }

LABEL_100:
    if (v41 < 1)
    {
      if (*(a2 + 256) >= 0x73u)
      {
        v75 = 115;
      }

      else
      {
        v75 = *(a2 + 256);
      }

      if (v64)
      {
        v74 = v75;
      }

      else
      {
        v74 = *(a2 + 256);
      }

      v76 = *(a2 + 72) * 1575420000.0;
      v77 = -0.5;
      if (v76 > 0.0)
      {
        v77 = 0.5;
      }

      v78 = v76 + v77;
      if (v78 <= 2147483650.0)
      {
        if (v78 >= -2147483650.0)
        {
          v79 = v78;
        }

        else
        {
          v79 = 0x80000000;
        }
      }

      else
      {
        v79 = 0x7FFFFFFF;
      }

      *(a2 + 4952) = -v79;
    }

    else
    {
      *(a2 + 4952) = v91 / v41;
      v65 = SHIDWORD(v91) / v41;
      if (SHIDWORD(v91) / v41 <= 1022)
      {
        v66 = 1022;
      }

      else
      {
        v66 = SHIDWORD(v91) / v41;
      }

      v67 = 1023 * (((2149582851u * v66) >> 32) >> 9);
      v68 = v65 - v67;
      if ((v65 - v67) <= -1023)
      {
        if (v68 <= 0xFFFFF803)
        {
          v69 = -2045;
        }

        else
        {
          v69 = v65 - v67;
        }

        v70 = v69 + v67;
        v47 = v70 == v65;
        v71 = (v70 - v65 - (v70 != v65)) / 0x3FF;
        if (!v47)
        {
          ++v71;
        }

        v68 = v68 - v71 + (v71 << 10) + 1023;
      }

      if (v62 <= 0)
      {
        v63 = 0;
      }

      if (v63 == 1)
      {
        if (v62 > v68)
        {
          v72 = 512;
        }

        else
        {
          v72 = -512;
        }

        v68 += 1023 * ((v72 + v62 - v68) / 1023);
      }

      *(a2 + 4956) = v68;
      if (v41 == 1 && v64)
      {
        v74 = v92 + *(a2 + 260) + (*(a2 + 260) >> 2);
      }

      else
      {
        v74 = v92 / v41 + *(a2 + 260) + *(a2 + 260) / v41;
      }

      v80 = SHIDWORD(v92) / v41;
      if (SHIDWORD(v92) / v41 <= (v20 * 0.0102370821))
      {
        goto LABEL_148;
      }
    }

    v81 = *(a2 + 64) * 1023000.0;
    v82 = -0.5;
    if (v81 > 0.0)
    {
      v82 = 0.5;
    }

    v83 = v81 + v82;
    if (v83 <= 2147483650.0)
    {
      if (v83 >= -2147483650.0)
      {
        v84 = v83;
      }

      else
      {
        v84 = 0x80000000;
      }
    }

    else
    {
      v84 = 0x7FFFFFFF;
    }

    *(a2 + 4956) = -v84;
    v80 = (v20 * 0.0102370821);
LABEL_148:
    v85 = 0;
    if (v20 >= 299792.458)
    {
      v86 = v60;
    }

    else
    {
      v86 = 2;
    }

    do
    {
      if (*(a2 + v85 + 312) && *(a2 + v85 + 308) == 1)
      {
        v87 = a2 + v85;
        *(a2 + v85 + 326) += *(a2 + 4952);
        v88 = v74 + *(a2 + v85 + 322);
        if (v88 >= 0xFFFF)
        {
          LOWORD(v88) = -1;
        }

        *(v87 + 322) = v88;
        Inc_CA_Chips(*(a2 + 4956), (v87 + 336), (v87 + 332));
        v89 = v80 + (*(v87 + 328) >> 4);
        if (v89 > 500)
        {
          LOWORD(v89) = 512;
        }

        *(v87 + 330) = v89;
        if (v86 > *(v87 + 318))
        {
          *(v87 + 318) = v86;
        }
      }

      v85 += 48;
    }

    while (v85 != 3936);
    return 1;
  }

  return result;
}