double Gnm15_09UpdateNmeaData(char *a1, unsigned int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NmeaLen,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm15_09UpdateNmeaData", a2);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NmeaData\n");
LABEL_15:
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
    return result;
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NmeaLen\n");
    goto LABEL_15;
  }

  if (!off_2A19268E0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_15;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NmeaCB Succ\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm15_09UpdateNmeaData");
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  off_2A19268E0(0, a1, a2, v6);
  return result;
}

uint64_t Gnm15_10HandleGncSNmeaData(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NMEA_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_10HandleGncSNmeaData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm15_09UpdateNmeaData(*(a1 + 16), *(a1 + 12));
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm15_10HandleGncSNmeaData", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 0, 1);
  }

  return 0;
}

uint64_t Gnm15_11HandleNavData(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NAV_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_11HandleNavData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 18);
    v6 = *(a1 + 16);
    v7 = *(a1 + 19);
    v8 = *(a1 + 24);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v10 = 78;
      if (v7)
      {
        v10 = 89;
      }

      v25 = v10;
      v11 = 70;
      if (v5)
      {
        v11 = 84;
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time,%u,Final,%c,SessId,%u,Valid,%c\n", v9, "GNM", 73, "Gnm15_11HandleNavData", v4, v11, v6, v25);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    if (v7 && !v8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NavData\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm15_11HandleNavData", 513);
        v15 = 2;
LABEL_16:
        LbsOsaTrace_WriteLog(0xBu, __str, v14, v15, 1);
        return 0;
      }

      return 0;
    }

    if ((dword_2A1920828 & 1) == 0 && (*(v8 + 296) & 1) == 0)
    {
      v17 = *(v8 + 32);
      if (v17 < 10.0)
      {
        Gnm53_13SetReferenceTime((*(v8 + 40) + (604800 * *(v8 + 28))), (v17 * 1000.0), *(v8 + 4), 2);
      }
    }

    InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v6);
    if (InstnFromInstnId)
    {
      v19 = InstnFromInstnId;
      v20 = *(InstnFromInstnId + 1);
      if (v20)
      {
        if (*(InstnFromInstnId + 2) == 1)
        {
          if ((*(v20 + 4) & 2) != 0)
          {
            Gnm11_01UpdateNavData(InstnFromInstnId, v8, v5, v7, v4);
            if (v5)
            {
              Gnm02_23StopNafSession(v19);
              Gnm02_21DeleteInstn(v19);
            }
          }

          goto LABEL_34;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", v24);
          goto LABEL_33;
        }

LABEL_34:
        v22 = *(a1 + 24);
        if (v22)
        {
          free(v22);
        }

        *(a1 + 24) = 0;
        return 0;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        goto LABEL_34;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnInfo\n");
    }

    else
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        goto LABEL_34;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
    }

LABEL_33:
    LbsOsaTrace_WriteLog(0xBu, __str, v21, 2, 1);
    goto LABEL_34;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 69, "Gnm15_11HandleNavData", 517);
    v15 = 0;
    goto LABEL_16;
  }

  return 0;
}

uint64_t Gnm15_12HandleGncPNmeaData(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_12HandleGncPNmeaData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm15_09UpdateNmeaData(*(a1 + 16), *(a1 + 12));
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm15_12HandleGncPNmeaData", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 0, 1);
  }

  return 0;
}

uint64_t Gnm15_13HandleGadData(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_GAD_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_13HandleGadData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 16);
    v6 = *(a1 + 18);
    v7 = *(a1 + 19);
    v8 = *(a1 + 24);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v10 = 78;
      if (v7)
      {
        v11 = 89;
      }

      else
      {
        v11 = 78;
      }

      if (v6)
      {
        v10 = 89;
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time,%u,Final,%c,SessId,%u,Valid,%c\n", v9, "GNM", 73, "Gnm15_13HandleGadData", v4, v10, v5, v11);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    if (v7 && !v8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GadData\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm15_13HandleGadData", 513);
        v15 = 2;
LABEL_17:
        LbsOsaTrace_WriteLog(0xBu, __str, v14, v15, 1);
        return 0;
      }

      return 0;
    }

    InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v5);
    if (InstnFromInstnId)
    {
      v18 = InstnFromInstnId;
      v19 = *(InstnFromInstnId + 1);
      if (v19)
      {
        if (*(InstnFromInstnId + 2) == 2)
        {
          *(v8 + 28) = Gnm05_22PopulateGnssShapeType(v8 + 16, *(v19 + 16));
          *(v8 + 68) = Gnm05_23PopulateGnssVelocityType(v8 + 72, *(v19 + 12));
        }

        Gnm13_09SendAsstGadData(v18, v8, v6);
        goto LABEL_28;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType\n");
        goto LABEL_27;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
LABEL_27:
      LbsOsaTrace_WriteLog(0xBu, __str, v20, 2, 1);
    }

LABEL_28:
    v21 = *(a1 + 24);
    if (v21)
    {
      free(v21);
    }

    *(a1 + 24) = 0;
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 69, "Gnm15_13HandleGadData", 517);
    v15 = 0;
    goto LABEL_17;
  }

  return 0;
}

uint64_t Gnm15_14Handle3GPPMeas(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_3GPPMEAS_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_14Handle3GPPMeas");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 16);
    v6 = *(a1 + 18);
    v7 = *(a1 + 19);
    v8 = *(a1 + 24);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v10 = 78;
      if (v7)
      {
        v11 = 89;
      }

      else
      {
        v11 = 78;
      }

      if (v6)
      {
        v10 = 89;
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time,%u,Final,%c,SessId,%u,Valid,%c\n", v9, "GNM", 73, "Gnm15_14Handle3GPPMeas", v4, v10, v5, v11);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    if (v7 && !v8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx 3gppMeas\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm15_14Handle3GPPMeas", 513);
        v15 = 2;
LABEL_17:
        LbsOsaTrace_WriteLog(0xBu, __str, v14, v15, 1);
        return 0;
      }

      return 0;
    }

    InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v5);
    if (InstnFromInstnId)
    {
      if (*(InstnFromInstnId + 1))
      {
        Gnm13_11SendAsstGnssMeas(InstnFromInstnId, v8, v6);
LABEL_26:
        v19 = *(a1 + 24);
        if (v19)
        {
          free(v19);
        }

        *(a1 + 24) = 0;
        return 0;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        goto LABEL_26;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType\n");
    }

    else
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        goto LABEL_26;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
    }

    LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
    goto LABEL_26;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 69, "Gnm15_14Handle3GPPMeas", 517);
    v15 = 0;
    goto LABEL_17;
  }

  return 0;
}

uint64_t Gnm15_15HandleRawMeasData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_RAWMEAS_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_15HandleRawMeasData");
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
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm15_15HandleRawMeasData", 517);
    v9 = 0;
LABEL_24:
    LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
    return 0;
  }

  if (!*(a1 + 24))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Meas\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm15_15HandleRawMeasData", 513);
    v9 = 2;
    goto LABEL_24;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RawMeasData SessId,%u,UpdtTime,%u,FinaUpdt,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm15_15HandleRawMeasData", *(a1 + 16), *(a1 + 12), *(a1 + 18));
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(*(a1 + 16));
  if (InstnFromInstnId && *(InstnFromInstnId + 1) && *(InstnFromInstnId + 2) == 1)
  {
    Gnm11_04SendAppMeasData(InstnFromInstnId, *(a1 + 12), *(a1 + 24), *(a1 + 18));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm15_15HandleRawMeasData", 2052);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 2, 1);
  }

  v12 = *(a1 + 24);
  if (v12[31])
  {
    free(v12[31]);
    v12 = *(a1 + 24);
  }

  v12[31] = 0;
  if (v12[9])
  {
    free(v12[9]);
    v12 = *(a1 + 24);
  }

  v12[9] = 0;
  if (v12[33])
  {
    free(v12[33]);
    v12 = *(a1 + 24);
  }

  free(v12);
  *(a1 + 24) = 0;
  return 0;
}

uint64_t Gnm15_16HandleTruthPosRsp(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v32 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_VAL_TRUTH_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_16HandleTruthPosRsp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (v1)
  {
    memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
    v15 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    memset(v29, 0, sizeof(v29));
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
    qmemcpy(v16, "VNP", sizeof(v16));
    __s[7] = 116;
    if (*(v1 + 12))
    {
      v4 = 32;
    }

    else
    {
      v4 = 71;
    }

    __s[0] = v4;
    PlcGnssHw = Gnm03_64GetPlcGnssHw();
    plc00_05EncodeMsg(2, v16, __s, __str, 2048, &v15, &v20, PlcGnssHw);
    if (v20)
    {
      if (IsLoggingAllowed == 1)
      {
        if (plc00_15GetExtErrAsString(&v20, v18, 0x104uLL) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(v17, 0x410uLL);
          v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v7 = snprintf(v17, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,Err,%s\n", v6, "GNM");
LABEL_17:
          v10 = v17;
          v11 = v7;
          v12 = 2;
          goto LABEL_18;
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(v17, 0x410uLL);
        v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v7 = snprintf(v17, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u\n", v13);
        goto LABEL_17;
      }
    }

    else
    {
      Gnm06_01HandleTmZXData(__str, v15);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm15_16HandleTruthPosRsp", 517);
    v10 = __str;
    v11 = v9;
    v12 = 0;
LABEL_18:
    LbsOsaTrace_WriteLog(0xBu, v10, v11, v12, 1);
  }

  return 0;
}

uint64_t Fused_Nav_Update(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(__src, 0, sizeof(__src));
  memset(v21, 0, sizeof(v21));
  memset(&v20[79], 0, 48);
  memset(v20, 0, 315);
  memset(v19, 0, sizeof(v19));
  v23 = 0;
  memset(v24, 0, 14);
  *a2 = 0u;
  *(a2 + 14) = *(&v24[1] + 2);
  *(a2 + 11) = 0;
  a2[24] = 0;
  memcpy(a2 + 25, __src, 0x120uLL);
  *(a2 + 313) = 0u;
  *(a2 + 329) = 0u;
  *(a2 + 345) = 0u;
  *(a2 + 361) = 0u;
  *(a2 + 377) = 0u;
  *(a2 + 393) = 0u;
  *(a2 + 409) = 0u;
  *(a2 + 425) = 0u;
  *(a2 + 441) = 0u;
  *(a2 + 457) = 0u;
  *(a2 + 473) = 0u;
  *(a2 + 489) = 0u;
  *(a2 + 505) = 0u;
  *(a2 + 521) = 0u;
  *(a2 + 537) = 0u;
  a2[553] = 0;
  memcpy(a2 + 554, v21, 0x198uLL);
  *(a2 + 962) = *&v20[85];
  *(a2 + 978) = *&v20[89];
  *(a2 + 986) = *&v20[79];
  *(a2 + 1002) = *&v20[83];
  *(a2 + 1010) = *&v20[72];
  *(a2 + 1021) = *(&v20[74] + 3);
  a2[1037] = 0;
  *(a2 + 519) = 0;
  a2[1040] = 0;
  memcpy(a2 + 1041, v20, 0x120uLL);
  *(a2 + 1329) = 0u;
  *(a2 + 1345) = 0u;
  *(a2 + 1361) = 0u;
  *(a2 + 1377) = 0u;
  *(a2 + 1393) = 0u;
  *(a2 + 1409) = 0u;
  *(a2 + 1425) = 0u;
  *(a2 + 1441) = 0u;
  *(a2 + 1457) = 0u;
  *(a2 + 1473) = 0u;
  *(a2 + 1489) = 0u;
  *(a2 + 1505) = 0u;
  *(a2 + 1521) = 0u;
  *(a2 + 1537) = 0u;
  *(a2 + 1553) = 0u;
  a2[1569] = 0;
  memcpy(a2 + 1570, v19, 0x198uLL);
  *(a2 + 1978) = 0u;
  *(a2 + 1994) = 0;
  *(a2 + 2002) = 0u;
  *(a2 + 2018) = 0;
  *(a2 + 2034) = 0;
  *(a2 + 2042) = 0;
  *(a2 + 2026) = 0;
  *(a2 + 256) = 0;
  memcpy(a7, a6, 0x800uLL);
  if (*(a3 + 46) == 1)
  {
    FN_GNSS_To_Nav_Soln(a6, a2);
    memcpy((a1 + 1016), a1, 0x3F8uLL);
    v15 = memcpy(a1, a2, 0x3F8uLL);
    v16 = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v15);
    if (v16)
    {
      v16 = FN_SA_FPE_To_Nav_Soln(a4, (a2 + 1016));
    }

    if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v16) && FN_Fuse_With_SA_FPE(a2, a1, a5))
    {
      FN_Publish_Fused_Soln(a1, a7);
      *(a7 + 944) = *(a7 + 344);
      *(a7 + 960) = *(a7 + 360);
      v17 = 3;
      do
      {
        *(a7 + 920) = *(a7 + 320);
        a7 += 8;
        --v17;
      }

      while (v17);
    }
  }

  return 1;
}

void *GetStaticLppPrivate(void)
{
  {
    _LPP_PRIVATE::_LPP_PRIVATE(&GetStaticLppPrivate(void)::lpp_prv);
  }

  return &GetStaticLppPrivate(void)::lpp_prv;
}

void _LPP_PRIVATE::_LPP_PRIVATE(_LPP_PRIVATE *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 7) = 1;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 6) = -1;
  *(this + 28) = 0;
  memset_s(this + 18, 6uLL, 0, 6uLL);
}

void lpp_process_downlink_message(unsigned __int8 *a1, char a2)
{
  v4 = lpp_session_detect(a1);
  if (v4 || (v4 = lpp_session_create(a1, a2)) != 0)
  {
    v5 = *(v4 + 6);

    v5();
  }

  else
  {

    ms_report_exception(2, 16423, 62, "lpp_process_downlink_message");
  }
}

void lpp_reset(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  GetStaticLppPrivate();
  if (byte_2A1938FC9 == 2)
  {
    GetStaticLppPrivate();
    v2 = *qword_2A1938FD0;
    if (*qword_2A1938FD0)
    {
      v3 = 0;
      do
      {
        while (1)
        {
          v4 = v2;
          v2 = *v2;
          if (a1)
          {
            if (a1 == 1)
            {
              break;
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v5 = mach_continuous_time();
              v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 87, "lpp_reset", 770, a1);
              LbsOsaTrace_WriteLog(0x13u, __str, v6, 2, 1);
            }

            if (v3 != 1)
            {
              break;
            }
          }

          lpp_session_delete(v4);
          v3 = 1;
          if (!v2)
          {
            return;
          }
        }

        v3 = 0;
      }

      while (v2);
    }
  }
}

void lpp_send_up_uplink_message(uint64_t a1, int a2, unsigned int *a3, char a4)
{
  if (a1 && a3)
  {
    if (a2)
    {
      ms_report_exception(2, 16424, 149, "lpp_send_up_uplink_message");
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = gnssOsa_Calloc("posp_alloc", 18, 1, *a3);
      memcpy_s("lpp_send_up_uplink_message", 142, v8, *a3, *(a3 + 1), *a3);
      v9 = *a3;
    }

    v10 = *(a1 + 4);

    send_supl_pos_ind(v10, a2, v9, v8, a4);
  }
}

void lpp_control_loc_info_rsp(uint64_t a1)
{
  v2 = lpp_session_detect(*a1);
  if (v2)
  {
    if (**(a1 + 8) == 1)
    {
      v3 = *(v2 + 18);
      if (v3 == 256)
      {
        i = 0;
      }

      else
      {
        for (i = *v2[5]; i; i = *i)
        {
          if (*(i + 16) == *(v2 + 17) && *(i + 20) == v3)
          {
            break;
          }
        }
      }

      v7 = *(v2 + 20);
      if (v7 != 256)
      {
        v8 = *v2[5];
        if (v8)
        {
          while (*(v8 + 16) != *(v2 + 19) || *(v8 + 20) != v7)
          {
            v8 = *v8;
            if (!v8)
            {
              goto LABEL_15;
            }
          }

          i = v8;
          goto LABEL_16;
        }
      }

LABEL_15:
      if (i)
      {
LABEL_16:
        SendStatusReport(*(i + 32), 2, 0, 0, 0, 255);
        v9 = *(a1 + 8);

        lpp_transaction_act(i, 7u, v9);
        return;
      }
    }

    v5 = 16425;
    v6 = 193;
  }

  else
  {
    v5 = 16426;
    v6 = 169;
  }

  ms_report_exception(2, v5, v6, "lpp_control_loc_info_rsp");
}

double lpp_state_control(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  GetStaticLppPrivate();
  if (byte_2A1938FC9 == 2)
  {
    if (a1 != 1)
    {
      return result;
    }

    GetStaticLppPrivate();
    if (*qword_2A1938FD0)
    {
      return result;
    }

    GetStaticLppPrivate();
    byte_2A1938FC9 = 1;
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    GetStaticLppPrivate();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP Current State,Active,Next State,%u\n");
    goto LABEL_18;
  }

  if (byte_2A1938FC9 == 1)
  {
    if (a1 == 1)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IDLE state\n");
      goto LABEL_21;
    }

    if (a1)
    {
      return result;
    }

    GetStaticLppPrivate();
    byte_2A1938FC9 = 2;
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    GetStaticLppPrivate();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP Current State,Idle,Next State,%u\n");
LABEL_18:
    v5 = v4;
    v6 = 5;
LABEL_22:
    LbsOsaTrace_WriteLog(0x13u, __str, v5, v6, 1);
    return result;
  }

  if (byte_2A1938FC9)
  {
    return result;
  }

  if (a1 < 2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Inactive State\n");
LABEL_21:
    v5 = v3;
    v6 = 2;
    goto LABEL_22;
  }

  if (a1 == 2)
  {
    GetStaticLppPrivate();
    byte_2A1938FC9 = 1;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      GetStaticLppPrivate();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP Current State,Inactive,Next State,%u\n");
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t Hal24_PatchDnldBright(int *a1)
{
  v47 = *MEMORY[0x29EDCA608];
  v2 = mach_continuous_time();
  v3 = *&g_MacClockTicksToMsRelation;
  ChiBuffers = Hal19_GetChiBuffers();
  if (ChiBuffers)
  {
    return ChiBuffers;
  }

  Hal08_SetGizar2AvaialbleBuffers(g_ChipBuffersResp);
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: fw BufferSize,%u\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal24_PatchDnldBright", g_ChipBuffersResp);
    LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
  }

  v7 = Hal08_FastPatchDnld(0, 80, 111);
  if (v7 == -3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Cnf\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 65, "Hal24_PatchDnldBright", 1288);
      LbsOsaTrace_WriteLog(0xDu, __str, v15, 1, 1);
    }

    *a1 = 19;
    return 4294967293;
  }

  ChiBuffers = v7;
  if (v7)
  {
    v16 = 19;
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Cnf\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 73, "Hal24_PatchDnldBright", 1287);
    LbsOsaTrace_WriteLog(0xDu, __str, v9, 4, 1);
  }

  v10 = Hal08_FastPatchDnld(0, 80, 112);
  if (v10 == -3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 1u, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CPPtc\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 65, "Hal24_PatchDnldBright", 1288);
    v13 = 1;
    goto LABEL_18;
  }

  ChiBuffers = v10;
  if (v10)
  {
    v16 = 4;
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CPPtc\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 73, "Hal24_PatchDnldBright", 1287);
    v13 = 4;
LABEL_18:
    LbsOsaTrace_WriteLog(0xDu, __str, v12, v13, 1);
  }

LABEL_19:
  v18 = Hal08_FastPatchDnld(0, 80, 102);
  if (v18 == -3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 1u, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CPSsf\n", (*&g_MacClockTicksToMsRelation * v22), "HAL", 65, "Hal24_PatchDnldBright", 1288);
    v21 = 1;
    goto LABEL_26;
  }

  ChiBuffers = v18;
  if (v18)
  {
    v16 = 7;
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CPSsf\n", (*&g_MacClockTicksToMsRelation * v19), "HAL", 73, "Hal24_PatchDnldBright", 1287);
    v21 = 4;
LABEL_26:
    LbsOsaTrace_WriteLog(0xDu, __str, v20, v21, 1);
  }

LABEL_27:
  v23 = Hal17_SoftReset(80, 32);
  if (v23)
  {
    ChiBuffers = v23;
    *a1 = 14;
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP\n");
LABEL_30:
      LbsOsaTrace_WriteLog(0xDu, __str, v24, 0, 1);
      return ChiBuffers;
    }

    return ChiBuffers;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP\n", (*&g_MacClockTicksToMsRelation * v26), "HAL", 73, "Hal24_PatchDnldBright", 1289);
    LbsOsaTrace_WriteLog(0xDu, __str, v27, 4, 1);
  }

  usleep(0x4E20u);
  v28 = Hal08_FastPatchDnld(0, 77, 102);
  if (v28 != -3)
  {
    ChiBuffers = v28;
    if (!v28)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
      {
        goto LABEL_43;
      }

      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MESsf\n", (*&g_MacClockTicksToMsRelation * v29), "HAL", 73, "Hal24_PatchDnldBright", 1287);
      v31 = 4;
      goto LABEL_42;
    }

    v16 = 8;
LABEL_32:
    *a1 = v16;
    return ChiBuffers;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 1u, 0, 0))
  {
    goto LABEL_43;
  }

  bzero(__str, 0x410uLL);
  v32 = mach_continuous_time();
  v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MESsf\n", (*&g_MacClockTicksToMsRelation * v32), "HAL", 65, "Hal24_PatchDnldBright", 1288);
  v31 = 1;
LABEL_42:
  LbsOsaTrace_WriteLog(0xDu, __str, v30, v31, 1);
LABEL_43:
  v33 = Hal08_FastPatchDnld(0, 77, 112);
  if (v33 == -3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 1u, 0, 0))
    {
      goto LABEL_51;
    }

    bzero(__str, 0x410uLL);
    v37 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME\n", (*&g_MacClockTicksToMsRelation * v37), "HAL", 65, "Hal24_PatchDnldBright", 1288);
    v36 = 1;
    goto LABEL_50;
  }

  ChiBuffers = v33;
  if (v33)
  {
    v16 = 5;
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME\n", (*&g_MacClockTicksToMsRelation * v34), "HAL", 73, "Hal24_PatchDnldBright", 1287);
    v36 = 4;
LABEL_50:
    LbsOsaTrace_WriteLog(0xDu, __str, v35, v36, 1);
  }

LABEL_51:
  v38 = Hal17_SoftReset(77, 32);
  if (v38)
  {
    ChiBuffers = v38;
    v16 = 15;
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v39 = mach_continuous_time();
    v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME\n", (*&g_MacClockTicksToMsRelation * v39), "HAL", 73, "Hal24_PatchDnldBright", 1289);
    LbsOsaTrace_WriteLog(0xDu, __str, v40, 4, 1);
  }

  v41 = Hal11_WaitCalibComplete();
  if (v41)
  {
    ChiBuffers = v41;
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return ChiBuffers;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Calib\n");
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v42 = mach_continuous_time();
    v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: calib complete\n", (*&g_MacClockTicksToMsRelation * v42), "HAL", 73, "Hal24_PatchDnldBright");
    LbsOsaTrace_WriteLog(0xDu, __str, v43, 4, 1);
  }

  g_HalState = 0;
  ChiBuffers = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v44 = mach_continuous_time();
    v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bright init,starttick %u ms\n", (*&g_MacClockTicksToMsRelation * v44), "HAL", 65, "Hal24_PatchDnldBright", (v3 * v2));
    LbsOsaTrace_WriteLog(0xDu, __str, v45, 1, 1);
    return 0;
  }

  return ChiBuffers;
}

void HAL24_BrightStackDumpHandler(unsigned __int8 *a1, unsigned int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2 <= 0xB1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v20);
LABEL_11:
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
      return;
    }

    return;
  }

  if (a1)
  {
    v5 = a1[4];
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0);
    if (v5 == 77)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME\n");
    }

    else if (v5 == 80)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CP\n");
    }

    else
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Stackdump unk\n");
    }

    LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
LABEL_17:
    v8 = *(a1 + 4);
    switch(v8)
    {
      case 3:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "HAL24_BrightStackDumpHandler", 1299);
          v15 = 1;
          LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
        }

        else
        {
          v15 = 1;
        }

LABEL_31:
        StackDumpString = Hal11_GetStackDumpString(a1[11], a1[10]);
        GnssDbgMgr_HandleStackDump(a2, a1, v15, StackDumpString);
        if (v15 && *(a1 + 5) != -4087)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v18 = mach_continuous_time();
            v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "HAL", 65, "HAL24_BrightStackDumpHandler", 1306);
            LbsOsaTrace_WriteLog(0xDu, __str, v19, 1, 1);
          }

          if (g_HalCallbacks)
          {
            g_HalCallbacks(6, v17);
          }
        }

        return;
      case 2:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 69, "HAL24_BrightStackDumpHandler", 1300);
          v12 = 0;
LABEL_29:
          LbsOsaTrace_WriteLog(0xDu, __str, v11, v12, 1);
        }

        break;
      case 1:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx %usec\n", v21);
LABEL_28:
          v11 = v9;
          v12 = 4;
          goto LABEL_29;
        }

        break;
      default:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Unk\n");
          goto LABEL_28;
        }

        break;
    }

    v15 = 0;
    goto LABEL_31;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx aResp\n");
    goto LABEL_11;
  }
}

char **GNSS_GNB_Debug_Ctl(char **result)
{
  if (result)
  {
    if (g_Enable_GNB_Debug)
    {
      v1 = result;
      **result = 0;
      v3 = *result;
      v2 = result[1];
      if (v2 != *result)
      {
        v4 = *result;
        if (v2 > *result)
        {
          v4 = result[3];
        }

        v5 = v4 - v2;
        if (v4 == v2)
        {
          if (v2 < result[3])
          {
            goto LABEL_13;
          }

          v2 = result[2];
          result[1] = v2;
        }

        else
        {
          result = GN_GPS_Write_GNB_Debug((v4 - v2), v2);
          v2 = &v1[1][result];
          v1[1] = v2;
          if (v2 < v1[3])
          {
            goto LABEL_13;
          }

          v2 = v1[2];
          v1[1] = v2;
          if (result != v5)
          {
            goto LABEL_13;
          }

          v3 = *v1;
        }

        result = GN_GPS_Write_GNB_Debug((v3 - v2), v2);
        v2 = &v1[1][result];
        v1[1] = v2;
LABEL_13:
        if (v2 == *v1)
        {
          v6 = v1[2];
          *v1 = v6;
          v1[1] = v6;
        }
      }
    }
  }

  return result;
}

void NK_Define_Meas_Innov_Sat_Thresh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 11480);
  if (v5 > 50.0)
  {
    v5 = 50.0;
  }

  v31 = 1.0 / v5;
  v6 = __sincos_stret(*(a1 + 952) * 0.0174532925);
  v7 = 0;
  v8 = (a2 + 2104);
  v9 = -384;
  v10 = 2960;
  v11 = 14112;
  v12 = 8536;
  v13 = 0.5;
  v14 = "Any_SV_Meas_Edit";
  do
  {
    if (*(a2 + 11032) > *(a2 + 16) || *(a1 + 968) != 1)
    {
      goto LABEL_22;
    }

    v15 = *(a2 + 140);
    if (v15 >= *(a2 + 144))
    {
      v15 = *(a2 + 144);
    }

    if (v15 >= *(a2 + 148))
    {
      v15 = *(a2 + 148);
    }

    if (v15 >= 0xB)
    {
      if ((*(a1 + v10) & 1) != 0 || (*(a1 + v12) & 1) != 0 || (v16 = 0.0, v17 = 0.0, v18 = 0.0, *(a1 + v11) == 1))
      {
        v19 = v8[240];
        v20 = v8[239];
        v18 = *v8 * (v6.__sinval * v20 + v6.__cosval * v19);
        v17 = *v8 * (v6.__cosval * v20 + -v6.__sinval * v19);
        v16 = 0.0;
        if (*(a1 + v10))
        {
          v21 = *(a1 + v7 + 3056);
          if ((v21 - 1) >= 0x1D)
          {
            if (v21)
            {
              v30 = v14;
              EvCrt_Illegal_Default(v14, 166);
              v14 = v30;
              v13 = 0.5;
            }

            else
            {
              v16 = v18 * v13 * 9.8 * (v18 * v13 * 9.8);
            }
          }
        }
      }

      *(a1 + v9 + 6368) = v16;
      v22 = 0.0;
      v23 = 0.0;
      if (*(a1 + v12) == 1)
      {
        v24 = *(a1 + v7 + 8632);
        if ((v24 - 1) >= 0x1D)
        {
          if (v24)
          {
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
            v14 = "Any_SV_Meas_Edit";
            v13 = 0.5;
            v23 = 0.0;
          }

          else
          {
            v28 = fmin(v31 * (*(a3 + 320) * *(a3 + 320)), 9.8);
            v23 = v18 * 9.8 * (v18 * 9.8) + v17 * v28 * (v17 * v28);
          }
        }
      }

      *(a1 + v9 + 11944) = v23;
      if (*(a1 + v11) == 1)
      {
        v25 = *(a1 + v7 + 14208);
        if ((v25 - 1) >= 0x1D)
        {
          if (v25)
          {
            v29 = v14;
            EvCrt_Illegal_Default(v14, 166);
            v14 = v29;
            v13 = 0.5;
          }

          else
          {
            v26 = v17 * fmin(v31 * (*(a3 + 320) * *(a3 + 320)), 9.8);
            v22 = v18 * 9.8 * (v18 * 9.8) + v26 * v26;
          }
        }
      }
    }

    else
    {
LABEL_22:
      v27 = a1 + v9;
      *(v27 + 6368) = 0x412E82F0051EB852;
      *(v27 + 11944) = 0x412E82F0051EB852;
      v22 = 999800.01;
    }

    *(a1 + v9 + 17520) = v22;
    v7 += 4;
    ++v10;
    v9 += 8;
    v8 += 5;
    ++v11;
    ++v12;
  }

  while (v7 != 192);
}

double *NK_SV_Meas_Innov_Sat(double *a1, int a2, int a3, uint64_t a4, double *a5, double a6)
{
  v9 = 0;
  v24[1] = *MEMORY[0x29EDCA608];
  v10 = a4 + 2024;
  v11 = a2;
  v12 = *(a4 + 2024 + 8 * a2);
  v13 = 0.0;
  do
  {
    v13 = v13 + a1[v9] * a5[v9 + 66];
    ++v9;
  }

  while (v9 != 11);
  v24[0] = 0.0;
  v14 = v12 - v13;
  v15 = *(a4 + 4040 + 8 * a2);
  result = invtst(a5, a1, 0xBu, v15 - *(a4 + 24 * a2 + 496), 0.0, a6, v24);
  v17 = cMIS_SatThresh_Sigma[a3 - 1];
  v18 = v17 * v17 * v24[0];
  v19 = a4 + 8 * v11;
  if (v18 <= *(v19 + 3176))
  {
    v18 = *(v19 + 3176);
  }

  *(v19 + 3176) = v18;
  if (v14 * v14 > v18)
  {
    v20 = sqrt(v18);
    if (v14 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v14;
    }

    v22 = -v20;
    if (v21 > v22)
    {
      v22 = v21;
    }

    *(a4 + v11 + 3560) = 1;
    *(v10 + 8 * v11) = v12 - (v14 - v22);
    v23 = v14 * 0.5 * (v14 * 0.5);
    if (v15 > v23)
    {
      v23 = v15;
    }

    *(a4 + 4040 + 8 * v11) = v23;
  }

  return result;
}

uint64_t Gnm11_00ApiStatusCB(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_GnmCBs)
  {
    v7 = result;
    if (result)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v10 = 78;
        if (a2)
        {
          v10 = 89;
        }

        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Result,%hhu,HandleValid,%c,Handle,%u,ApiType,%hhu\n", v9, "GNM", 87, "Gnm11_00ApiStatusCB", v7, v10, a3, a4);
        v12 = 2;
LABEL_11:
        LbsOsaTrace_WriteLog(0xBu, __str, v11, v12, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v14 = 78;
      if (a2)
      {
        v14 = 89;
      }

      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Result,%hhu,HandleValid,%c,Handle,%u,ApiType,%hhu\n", v13, "GNM", 73, "Gnm11_00ApiStatusCB", 0, v14, a3, a4);
      v12 = 4;
      goto LABEL_11;
    }

    return g_GnmCBs(v7, a2, a3, a4, v8);
  }

  return result;
}

uint64_t Gnm11_01UpdateNavData(uint64_t result, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = *(result + 8);
  if (*(v5 + 64) == 1 && (v5[2] & 1) != 0)
  {
    v6 = *(v5 + 7);
    if (v6)
    {
      if (a4)
      {
        Gnm05_31PrintNavSoln(a2);
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NavData Succ sent NAFId,%u,NavStatus,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm11_01UpdateNavData", *v5, a3);
          LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
        }

        v12 = *v5;
        *__str = a2;
        v17 = 0;
        v18 = 2;
        v19 = a3;
        result = v6(0, v12, __str);
        if (v5[9] == v5[3] && *(a2 + 288))
        {
          v5[9] = a5;
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NavData Err sent NAFId,%u,NavStatus,%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm11_01UpdateNavData", *v5, a3);
          LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
        }

        v15 = *v5;
        *__str = 0;
        v17 = 0;
        v18 = 0;
        v19 = a3;
        result = v6(6, v15, __str);
      }

      v5[10] = a5;
      if ((v5[1] & 2) != 0)
      {
        ++v5[12];
      }
    }
  }

  return result;
}

double Gnm11_04SendAppMeasData(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v4 = *(a1 + 8);
    if ((v4[1] & 2) != 0 && *(v4 + 64) == 1 && (v4[2] & 8) != 0)
    {
      v5 = *(v4 + 7);
      if (v5)
      {
        v7 = *v4;
        *__str = 0;
        v12 = a3;
        v13 = 4;
        v14 = a4;
        v5(0, v7, __str);
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Meas Succ sent NAFId,%u,NavStatus,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm11_04SendAppMeasData", *v4, a4);
          LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
        }
      }
    }
  }

  return result;
}

uint64_t Gnm11_07StartPosResp(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *v2;
  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StartPosReqResp Success NafId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm11_07StartPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    return Gnm11_00ApiStatusCB(0, 1, v3, v2[1] & 2);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StartPosReqResp Error NafId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm11_07StartPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
    }

    Gnm11_00ApiStatusCB(11, 1, *v2, v2[1] & 2);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Delete NAF Session NAFId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm11_07StartPosResp", *v2);
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    Gnm02_23StopNafSession(a1);
    return Gnm02_21DeleteInstn(a1);
  }
}

void Gnm11_08StopPosResp(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = **(a1 + 8);
  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success NafId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm11_08StopPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    if (Gnm02_21DeleteInstn(a1))
    {
      v6 = 0;
    }

    else
    {
      v6 = 11;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StopPosReqResp Error NafId,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm11_08StopPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    }

    Gnm02_21DeleteInstn(a1);
    v6 = 11;
  }

  Gnm11_00ApiStatusCB(v6, 1, v3, 1);
  if (!HIWORD(g_GnmInstances[0]))
  {
    g_XOTimerStatus = 0;
    g_PrevUsedLtl = 0;
    bzero(&g_LTLDataPPM, 0x5E2uLL);
    g_AgeingTimeGpsSeconds = 0;
  }
}

void Gnm33_09GetModuleLogCfg(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = 0;
  v8 = 0;
  if (!LbsOsaTrace_GetModuleConfig(&v7, a1))
  {
    a2[1] = 0;
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  a2[1] = v8;
  v3 = v7;
  if (v7 == 1)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (!v7 || !LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    goto LABEL_7;
  }

  bzero(__str, 0x410uLL);
  v4 = mach_continuous_time();
  v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dest,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm33_01GetGnmDestnType", 770, v3);
  v6 = 1;
  LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
LABEL_8:
  *a2 = v6;
}

double Gnm33_10InitTraceCfg(void)
{
  v60 = *MEMORY[0x29EDCA608];
  v59 = 0;
  v55 = 0;
  v56 = 0;
  v58 = 0x332E352E322E76;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:%s Version,%s\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm33_00PrintTraceConfig", "INITIALIZED", &v58);
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 4, 1);
  }

  v3 = g_LbsOsaTrace_Config;
  v2 = dword_2A19396BC;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = 89;
    if (!v3)
    {
      v5 = 78;
    }

    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG: FlowTraces,%c\n", v4, "GNM", 73, "Gnm33_00PrintTraceConfig", v5);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v8 = 78;
    if (v2 == 1)
    {
      v8 = 89;
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG: PrivateOnly,%c\n", v7, "GNM", 73, "Gnm33_00PrintTraceConfig", v8);
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  LbsOsaTrace_GetModuleConfig(&v55, 0);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:GNB Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 1u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:NMA Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 2u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:PEN Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 3u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:PEE Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 4u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:MEC Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v19, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 5u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:GZR Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v21, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 6u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:CEX Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v23, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 7u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SEN Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v25, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 8u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:GNC Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v27, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 9u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SLG Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v29, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0xAu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v30 = mach_continuous_time();
    v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SLP Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v31, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0xBu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:GNM Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v32), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v33, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0xCu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:LSM Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v35, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0xDu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v36 = mach_continuous_time();
    v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:HAL Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v36), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v37, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0xEu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v38 = mach_continuous_time();
    v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:OSA Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v38), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v39, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0xFu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v40 = mach_continuous_time();
    v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SRV Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v40), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v41, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0x10u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v42 = mach_continuous_time();
    v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:AML Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v42), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v43, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0x11u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v44 = mach_continuous_time();
    v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:OP1 Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v44), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v45, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0x12u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v46 = mach_continuous_time();
    v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SPL Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v46), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v47, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0x13u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v48 = mach_continuous_time();
    v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:PSP Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v48), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v49, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0x14u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v50 = mach_continuous_time();
    v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:MEI Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v50), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v51, 4, 1);
  }

  v55 = 0;
  v56 = 0;
  LbsOsaTrace_GetModuleConfig(&v55, 0x15u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v53 = mach_continuous_time();
    v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SLC Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v53), "GNM", 73, "Gnm33_00PrintTraceConfig", v55, v56);
    LbsOsaTrace_WriteLog(0xBu, __str, v54, 4, 1);
  }

  return result;
}

uint64_t Gnm33_16GetTraceCfg(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _BYTE *, __n128))
{
  v31 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x270uLL, 0, 0x270uLL);
  __s[0] = g_LbsOsaTrace_Config;
  __s[1] = dword_2A19396BC;
  Gnm33_09GetModuleLogCfg(0, v9);
  Gnm33_09GetModuleLogCfg(1, v10);
  Gnm33_09GetModuleLogCfg(2, v11);
  Gnm33_09GetModuleLogCfg(3, v12);
  Gnm33_09GetModuleLogCfg(4, v13);
  Gnm33_09GetModuleLogCfg(5, v14);
  Gnm33_09GetModuleLogCfg(6, v15);
  Gnm33_09GetModuleLogCfg(7, v16);
  Gnm33_09GetModuleLogCfg(8, v17);
  Gnm33_09GetModuleLogCfg(9, v18);
  Gnm33_09GetModuleLogCfg(10, v19);
  Gnm33_09GetModuleLogCfg(11, v20);
  Gnm33_09GetModuleLogCfg(12, v21);
  Gnm33_09GetModuleLogCfg(13, v22);
  Gnm33_09GetModuleLogCfg(14, v23);
  Gnm33_09GetModuleLogCfg(15, v24);
  Gnm33_09GetModuleLogCfg(16, v25);
  Gnm33_09GetModuleLogCfg(17, v26);
  Gnm33_09GetModuleLogCfg(18, v27);
  Gnm33_09GetModuleLogCfg(19, v28);
  Gnm33_09GetModuleLogCfg(20, v29);
  Gnm33_09GetModuleLogCfg(21, v30);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GetCfgCB returned TraceCfg\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm33_16GetTraceCfg");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  return (a2)(a1, 3, __s);
}

double gnss::GnssAdaptDevice::startEmergencyPreemptiveSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!*(a3 + 24))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (*(a4 + 24))
  {
    v5 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice31startEmergencyPreemptiveSessionEyNSt3__18functionIFvNS_6ResultEEEES5__block_invoke;
    block[3] = &__block_descriptor_tmp_16;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a4);
    dispatch_async(v5, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
LABEL_7:
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "startEmergencyPreemptiveSession", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice31startEmergencyPreemptiveSessionEyNSt3__18functionIFvNS_6ResultEEEES5__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "startEmergencyPreemptiveSession_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM req active\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 87, "startEmergencyPreemptiveSession_block_invoke", 2056);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 2, 1);
    }

    std::function<void ()(gnss::Result)>::operator=((v2 + 600), a1 + 40);
    std::function<void ()(gnss::Result)>::operator=((v2 + 632), a1 + 72);
    v7 = GNS_EcallStart(0);
    if (v7 == 1)
    {
      *(v2 + 176) = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EcallStart invoked\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 73, "startEmergencyPreemptiveSession_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "startEmergencyPreemptiveSession_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EcallStart,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "startEmergencyPreemptiveSession_block_invoke", 257, v7);
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
      }

      v19 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v2, v7);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, v19, v22, "startEmergencyPreemptiveSession_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
      std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 600);
      std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 632);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "startEmergencyPreemptiveSession_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v23, "startEmergencyPreemptiveSession_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "startEmergencyPreemptiveSession_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "startEmergencyPreemptiveSession_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
    }
  }

  return result;
}

void sub_2996857B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::stopEmergencyPreemptiveSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!*(a2 + 24))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice30stopEmergencyPreemptiveSessionENSt3__18functionIFvNS_6ResultEEEES5__block_invoke;
    block[3] = &__block_descriptor_tmp_12_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
LABEL_7:
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "stopEmergencyPreemptiveSession", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice30stopEmergencyPreemptiveSessionENSt3__18functionIFvNS_6ResultEEEES5__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "stopEmergencyPreemptiveSession_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    std::function<void ()(gnss::Result)>::operator=((v2 + 664), a1 + 40);
    std::function<void ()(gnss::Result)>::operator=((v2 + 696), a1 + 72);
    v5 = GNS_EcallStop(0);
    if (v5 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EcallStop invoked\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 73, "stopEmergencyPreemptiveSession_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v7, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "stopEmergencyPreemptiveSession_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EcallStop,%u\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "stopEmergencyPreemptiveSession_block_invoke", 257, v5);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
      }

      v17 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v2, v5);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, v17, v20, "stopEmergencyPreemptiveSession_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
      std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 664);
      std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 696);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "stopEmergencyPreemptiveSession_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v21, "stopEmergencyPreemptiveSession_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "stopEmergencyPreemptiveSession_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "stopEmergencyPreemptiveSession_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  return result;
}

void sub_299685EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::setEmergencySessionSummaryReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32setEmergencySessionSummaryReportENSt3__18functionIFNS_6ResultERKNS_9Emergency13SummaryReportEEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_14_0;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setEmergencySessionSummaryReport", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice32setEmergencySessionSummaryReportENSt3__18functionIFNS_6ResultERKNS_9Emergency13SummaryReportEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setEmergencySessionSummaryReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (!*(a1 + 64) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SummaryReport\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setEmergencySessionSummaryReport_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](__str, a1 + 40);
  v7 = v2 + 728;
  if (__str != (v2 + 728))
  {
    v8 = v15;
    v9 = *(v2 + 752);
    if (v15 == __str)
    {
      if (v9 == v7)
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = 0;
        (*(**(v2 + 752) + 24))(*(v2 + 752), __str);
        (*(**(v2 + 752) + 32))(*(v2 + 752));
        *(v2 + 752) = 0;
        v15 = __str;
        (*(v16[0] + 24))(v16, v2 + 728);
        (*(v16[0] + 32))(v16);
      }

      else
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = *(v2 + 752);
      }

      *(v2 + 752) = v7;
    }

    else if (v9 == v7)
    {
      (*(*v9 + 24))(*(v2 + 752), __str);
      (*(**(v2 + 752) + 32))(*(v2 + 752));
      *(v2 + 752) = v15;
      v15 = __str;
    }

    else
    {
      v15 = *(v2 + 752);
      *(v2 + 752) = v8;
    }
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](__str);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a1 + 72);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v13, "setEmergencySessionSummaryReport_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setEmergencySessionSummaryReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
  }

  return result;
}

void sub_2996864C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c71_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency13SummaryReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](a1 + 40);
}

double gnss::GnssAdaptDevice::setEmergencyPositionReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26setEmergencyPositionReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane14PositionReportEEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_16_0;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setEmergencyPositionReport", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice26setEmergencyPositionReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane14PositionReportEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setEmergencyPositionReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](__str, a1 + 40);
    v5 = v2 + 760;
    if (__str != (v2 + 760))
    {
      v6 = v18;
      v7 = *(v2 + 784);
      if (v18 == __str)
      {
        if (v7 == v5)
        {
          (*(*v18 + 24))();
          (*(*v18 + 32))(v18);
          v18 = 0;
          (*(**(v2 + 784) + 24))(*(v2 + 784), __str);
          (*(**(v2 + 784) + 32))(*(v2 + 784));
          *(v2 + 784) = 0;
          v18 = __str;
          (*(v19[0] + 24))(v19, v2 + 760);
          (*(v19[0] + 32))(v19);
        }

        else
        {
          (*(*v18 + 24))();
          (*(*v18 + 32))(v18);
          v18 = *(v2 + 784);
        }

        *(v2 + 784) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 784), __str);
        (*(**(v2 + 784) + 32))(*(v2 + 784));
        *(v2 + 784) = v18;
        v18 = __str;
      }

      else
      {
        v18 = *(v2 + 784);
        *(v2 + 784) = v6;
      }
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v15, "setEmergencyPositionReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setEmergencyPositionReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v16, "setEmergencyPositionReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx e911 PosReport\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setEmergencyPositionReport_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setEmergencyPositionReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  return result;
}

void sub_299686C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c79_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane14PositionReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](a1 + 40);
}

double gnss::GnssAdaptDevice::setEmergencyMeasurementReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice29setEmergencyMeasurementReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane17MeasurementReportEEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_18_0;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setEmergencyMeasurementReport", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice29setEmergencyMeasurementReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane17MeasurementReportEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setEmergencyMeasurementReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](__str, a1 + 40);
    v5 = v2 + 824;
    if (__str != (v2 + 824))
    {
      v6 = v18;
      v7 = *(v2 + 848);
      if (v18 == __str)
      {
        if (v7 == v5)
        {
          (*(*v18 + 24))();
          (*(*v18 + 32))(v18);
          v18 = 0;
          (*(**(v2 + 848) + 24))(*(v2 + 848), __str);
          (*(**(v2 + 848) + 32))(*(v2 + 848));
          *(v2 + 848) = 0;
          v18 = __str;
          (*(v19[0] + 24))(v19, v2 + 824);
          (*(v19[0] + 32))(v19);
        }

        else
        {
          (*(*v18 + 24))();
          (*(*v18 + 32))(v18);
          v18 = *(v2 + 848);
        }

        *(v2 + 848) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 848), __str);
        (*(**(v2 + 848) + 32))(*(v2 + 848));
        *(v2 + 848) = v18;
        v18 = __str;
      }

      else
      {
        v18 = *(v2 + 848);
        *(v2 + 848) = v6;
      }
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v15, "setEmergencyMeasurementReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setEmergencyMeasurementReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v16, "setEmergencyMeasurementReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx e911 MeasReport\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setEmergencyMeasurementReport_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setEmergencyMeasurementReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  return result;
}

void sub_29968742C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c82_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane17MeasurementReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](a1 + 40);
}

double gnss::GnssAdaptDevice::setEmergencyMeasurementWithEstimateReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice41setEmergencyMeasurementWithEstimateReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane29MeasurementReportWithEstimateEEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_20_0;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setEmergencyMeasurementWithEstimateReport", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice41setEmergencyMeasurementWithEstimateReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane29MeasurementReportWithEstimateEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setEmergencyMeasurementWithEstimateReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](__str, a1 + 40);
    v5 = v2 + 856;
    if (__str != (v2 + 856))
    {
      v6 = v18;
      v7 = *(v2 + 880);
      if (v18 == __str)
      {
        if (v7 == v5)
        {
          (*(*v18 + 24))();
          (*(*v18 + 32))(v18);
          v18 = 0;
          (*(**(v2 + 880) + 24))(*(v2 + 880), __str);
          (*(**(v2 + 880) + 32))(*(v2 + 880));
          *(v2 + 880) = 0;
          v18 = __str;
          (*(v19[0] + 24))(v19, v2 + 856);
          (*(v19[0] + 32))(v19);
        }

        else
        {
          (*(*v18 + 24))();
          (*(*v18 + 32))(v18);
          v18 = *(v2 + 880);
        }

        *(v2 + 880) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 880), __str);
        (*(**(v2 + 880) + 32))(*(v2 + 880));
        *(v2 + 880) = v18;
        v18 = __str;
      }

      else
      {
        v18 = *(v2 + 880);
        *(v2 + 880) = v6;
      }
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v15, "setEmergencyMeasurementWithEstimateReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setEmergencyMeasurementWithEstimateReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v16, "setEmergencyMeasurementWithEstimateReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx e911 MeasReportWithEstimate\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setEmergencyMeasurementWithEstimateReport_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setEmergencyMeasurementWithEstimateReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  return result;
}

void sub_299687BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c94_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane29MeasurementReportWithEstimateEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::startEmergencyPositionRequest(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = a2[1];
    v19 = *a2;
    *v20 = v6;
    *&v20[12] = *(a2 + 28);
    v14 = *a3;
    v15 = *(a3 + 2);
    v7 = mach_continuous_time();
    v8 = *&g_MacClockTicksToMsRelation;
    v9 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice29startEmergencyPositionRequestERKNS_9Emergency6Cplane15PositionRequestERKNS2_7ContextENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_49_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a4);
    v17[2] = v14;
    v18 = v15;
    v21 = (v8 * v7);
    dispatch_async(v9, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "startEmergencyPositionRequest");
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
    }

    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "startEmergencyPositionRequest", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice29startEmergencyPositionRequestERKNS_9Emergency6Cplane15PositionRequestERKNS2_7ContextENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v132 = *MEMORY[0x29EDCA608];
  v2 = *(v1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "startEmergencyPositionRequest_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v130, v2 + 760);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v128, v2 + 824);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v126, v2 + 856);
  if (*(v2 + 89) == 1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM req active\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 87, "startEmergencyPositionRequest_block_invoke", 2056);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 2, 1);
  }

  if (v131 || *(v1 + 100) != 1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v1 + 91))
      {
        v11 = 84;
      }

      else
      {
        v11 = 70;
      }

      if (*(v1 + 90))
      {
        v12 = 84;
      }

      else
      {
        v12 = 70;
      }

      if (*(v1 + 89))
      {
        v13 = 84;
      }

      else
      {
        v13 = 70;
      }

      if (*(v1 + 88))
      {
        v14 = 84;
      }

      else
      {
        v14 = 70;
      }

      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: include1xMsb,%c,optimizeGnssMeasWith1xMsb,%c,optimizeAfltMeasWith1xMsb,%c,useCdmaTimeForMeas,%c\n", v10, "ADP", 73, "startEmergencyPositionRequest_block_invoke", v14, v13, v12, v11);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v15, 4, 1);
    }

    if (!v129 && !*(v1 + 100) && (*(v1 + 88) & 1) == 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v124, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v124, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v124);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeasReportCb\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 258);
        LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (!v127 && !*(v1 + 100) && *(v1 + 88) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v123, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v123, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v123);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeasRepwithEstimate\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 258);
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if ((*(v2 + 88) & 1) == 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v122, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v122, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v122);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v24, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (*(v1 + 96))
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Periodic Sessions\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 87, "startEmergencyPositionRequest_block_invoke", 515);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v19, 2, 1);
      }
    }

    v20 = *(v1 + 100);
    if (v20 == -1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v121, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v121, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v121);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Methodtype\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v26, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (*(v1 + 104) - 1 >= 0x80)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v120, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v120, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v120);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 514, *(v1 + 104));
        LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if ((*(v1 + 124) & 1) == 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v119, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v119, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v119);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Id should be GPS only\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    v29 = *(v1 + 132);
    if (v29 == -1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v118, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v118, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v118);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (*(v1 + 106) < 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v117, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v117, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v117);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v36 = mach_continuous_time();
        v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HAcc\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 514);
        LbsOsaTrace_WriteLog(0x18u, __str, v37, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (*(v1 + 116))
    {
      if (*(v1 + 113) < 0)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v116, v1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v116, "startEmergencyPositionRequest_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v116);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v42 = mach_continuous_time();
          v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VAcc\n", (*&g_MacClockTicksToMsRelation * v42), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v43, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          goto LABEL_94;
        }

        goto LABEL_205;
      }

      if (*(v1 + 114) >= 0x65u)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v115, v1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v115, "startEmergencyPositionRequest_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v115);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VConf\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          goto LABEL_94;
        }

        goto LABEL_205;
      }
    }

    if (*(v1 + 112) >= 0x65u)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v114, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v114, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v114);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v38 = mach_continuous_time();
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HConf\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 514);
        LbsOsaTrace_WriteLog(0x18u, __str, v39, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (*(v1 + 126) && (*(v1 + 126) & 0xB7) == 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v113, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v113, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v113);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v40 = mach_continuous_time();
        v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ShapeType Not Supported, %u\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 515, *(v1 + 126));
        LbsOsaTrace_WriteLog(0x18u, __str, v41, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (v29 == 3)
    {
      HalExtensions = gnss::GnssAdaptDevice::getHalExtensions(v2);
      *(v2 + 112) = (*(*HalExtensions + 144))(HalExtensions);
      gnss::GnssAdaptDevice::Ga10_07FTAssistanceRequest(v2);
      v20 = *(v1 + 100);
    }

    if (!v20 && *(v1 + 132) != 3)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v112, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 5, v112, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v112);
      gnss::Emergency::Cplane::MeasurementReport::MeasurementReport(__str);
      *&__str[12] = *(v1 + 132);
      *__str = -9;
      __str[4] |= 4u;
      *&__str[8] = 0;
      *&__str[1392] = 0;
      v63 = *(v2 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice29startEmergencyPositionRequestERKNS_9Emergency6Cplane15PositionRequestERKNS2_7ContextENSt3__18functionIFvNS_6ResultEEEE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_35_0;
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v109, v128);
      memcpy(v110, __str, sizeof(v110));
      dispatch_async(v63, block);
      gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v2, *(v1 + 136), 0, 22);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(v107, 0x410uLL);
        v64 = mach_continuous_time();
        v65 = snprintf(v107, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v64), "ADP", 68, "startEmergencyPositionRequest_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, v107, v65, 5, 1);
      }

      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v109);
      goto LABEL_205;
    }

    if (!gnss::GnssAdaptDevice::Ga10_11SetGuardTimeOut(IsLoggingAllowed) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v47 = mach_continuous_time();
      v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetGuardTimeOut\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v48, 0, 1);
    }

    v49 = LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0);
    if (v49)
    {
      bzero(__str, 0x410uLL);
      v50 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v1 + 72))
      {
        v51 = 84;
      }

      else
      {
        v51 = 70;
      }

      if (*(v1 + 73))
      {
        v52 = 84;
      }

      else
      {
        v52 = 70;
      }

      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EarlyReturn,%c,HeloEnabled,%c\n", v50, "ADP", 73, "startEmergencyPositionRequest_block_invoke", v52, v51);
      v49 = LbsOsaTrace_WriteLog(0x18u, __str, v53, 4, 1);
    }

    if (*(v1 + 132) == 3)
    {
      v54 = 0;
    }

    else
    {
      v54 = *(v1 + 73);
    }

    if (!gnss::GnssAdaptDevice::Ga10_12SetEarlyReturn(v49, v54 & 1) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v55 = mach_continuous_time();
      v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetEarlyReturn\n", (*&g_MacClockTicksToMsRelation * v55), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v56, 0, 1);
    }

    *&v107[0] = 0xFFFFFFFF00000000;
    memset(v107 + 12, 0, 27);
    *(v107 + 6) = -1;
    v57 = *(v1 + 100);
    if (v57 > 0)
    {
      if (v57 == 1)
      {
        LODWORD(v107[0]) = 2;
        v58 = LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0);
        if (v58)
        {
          bzero(__str, 0x410uLL);
          v70 = mach_continuous_time();
          v71 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MSB e911 Session\n", (*&g_MacClockTicksToMsRelation * v70), "ADP", 73, "startEmergencyPositionRequest_block_invoke");
          v58 = LbsOsaTrace_WriteLog(0x18u, __str, v71, 4, 1);
        }
      }

      else
      {
        if (v57 != 2)
        {
LABEL_130:
          v58 = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
          if (v58)
          {
            bzero(__str, 0x410uLL);
            v66 = mach_continuous_time();
            v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Method Type,%u\n", (*&g_MacClockTicksToMsRelation * v66), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 515, *(v1 + 100));
            v58 = LbsOsaTrace_WriteLog(0x18u, __str, v67, 0, 1);
          }

          goto LABEL_136;
        }

        LODWORD(v107[0]) = 3;
        v58 = LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0);
        if (v58)
        {
          bzero(__str, 0x410uLL);
          v61 = mach_continuous_time();
          v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Standalone e911 Session\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 73, "startEmergencyPositionRequest_block_invoke");
          v58 = LbsOsaTrace_WriteLog(0x18u, __str, v62, 4, 1);
        }
      }
    }

    else
    {
      if (v57 != -1)
      {
        if (!v57)
        {
          LODWORD(v107[0]) = 1;
          if (*(v1 + 132) == 3)
          {
            BYTE6(v107[2]) = *(v1 + 91);
          }

          v58 = LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0);
          if (v58)
          {
            bzero(__str, 0x410uLL);
            v59 = mach_continuous_time();
            v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MSA e911 Session\n", (*&g_MacClockTicksToMsRelation * v59), "ADP", 73, "startEmergencyPositionRequest_block_invoke");
            v58 = LbsOsaTrace_WriteLog(0x18u, __str, v60, 4, 1);
          }

          goto LABEL_136;
        }

        goto LABEL_130;
      }

      v58 = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
      if (v58)
      {
        bzero(__str, 0x410uLL);
        v68 = mach_continuous_time();
        v69 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType\n", (*&g_MacClockTicksToMsRelation * v68), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 262);
        v58 = LbsOsaTrace_WriteLog(0x18u, __str, v69, 0, 1);
      }
    }

LABEL_136:
    if (*(v1 + 106))
    {
      BYTE6(v107[0]) = *(v1 + 106);
    }

    if (*(v1 + 112))
    {
      BYTE7(v107[0]) = *(v1 + 112);
    }

    if (*(v1 + 116))
    {
      if (*(v1 + 113))
      {
        BYTE8(v107[0]) = *(v1 + 113);
      }

      if (*(v1 + 114))
      {
        BYTE9(v107[0]) = *(v1 + 114);
      }
    }

    if (!gnss::GnssAdaptDevice::Ga10_30SetTargetE911VertAccM(v58, *(v1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v72 = mach_continuous_time();
      v73 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetTargetE911VertAccM\n", (*&g_MacClockTicksToMsRelation * v72), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v73, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v74 = mach_continuous_time();
      v75 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HAcc,%u,VAcc,%u,HConf,%u,VConf,%u\n", (*&g_MacClockTicksToMsRelation * v74), "ADP", 73, "startEmergencyPositionRequest_block_invoke", BYTE6(v107[0]), BYTE8(v107[0]), BYTE7(v107[0]), BYTE9(v107[0]));
      LbsOsaTrace_WriteLog(0x18u, __str, v75, 4, 1);
    }

    if (*(v1 + 108) == 1)
    {
      v76 = *(v1 + 127);
      if (*(v1 + 127))
      {
        if ((v76 & 0xF) == 0)
        {
          goto LABEL_156;
        }

        v77 = HIDWORD(v107[1]) | v76;
      }

      else
      {
        v77 = 8;
      }

      HIDWORD(v107[1]) = v77;
    }

LABEL_156:
    v78 = *(v1 + 126);
    if (v78)
    {
      LODWORD(v107[2]) |= 1u;
      if ((v78 & 2) == 0)
      {
LABEL_158:
        if ((v78 & 4) == 0)
        {
          goto LABEL_159;
        }

        goto LABEL_182;
      }
    }

    else if ((*(v1 + 126) & 2) == 0)
    {
      goto LABEL_158;
    }

    LODWORD(v107[2]) |= 2u;
    if ((v78 & 4) == 0)
    {
LABEL_159:
      if ((v78 & 0x10) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_183;
    }

LABEL_182:
    LODWORD(v107[2]) |= 4u;
    if ((v78 & 0x10) == 0)
    {
LABEL_160:
      if ((v78 & 0x20) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_161;
    }

LABEL_183:
    LODWORD(v107[2]) |= 8u;
    if ((v78 & 0x20) == 0)
    {
LABEL_162:
      HIDWORD(v107[0]) = 1000 * *(v1 + 104);
      BYTE5(v107[2]) = *(v1 + 120) == 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v79 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v80 = 70;
        if (*(v1 + 72))
        {
          v80 = 84;
        }

        v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType,%u,Vel,%u,RespTimeMs,%u,Allowed,%u,VerReq,%u,posProtocol,%d,SessId,%u,HeloEnabled,%c\n", v79, "ADP", 73, "startEmergencyPositionRequest_block_invoke", LODWORD(v107[2]), HIDWORD(v107[1]), HIDWORD(v107[0]), BYTE5(v107[2]), *(v1 + 116), *(v1 + 132), *(v1 + 136), v80);
        LbsOsaTrace_WriteLog(0x18u, __str, v81, 4, 1);
      }

      WORD2(v107[0]) = 1;
      if (*(v1 + 100) == 1)
      {
        v82 = 3;
      }

      else
      {
        v82 = 1;
      }

      *(&v107[1] + 4) = 0;
      LODWORD(v107[1]) = v82;
      BYTE4(v107[2]) = 1;
      *__str = *(v1 + 136);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](&__str[8], v1 + 40);
      std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::function<void ()(gnss::Result)>>>(v2 + 208, __str, __str);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&__str[8]);
      if (GNS_CpLocReq(*(v1 + 136), v107, 1) != 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v92 = mach_continuous_time();
          v93 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpLocReq,%u\n", (*&g_MacClockTicksToMsRelation * v92), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 257, 2);
          LbsOsaTrace_WriteLog(0x18u, __str, v93, 0, 1);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v106, v1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v106, "startEmergencyPositionRequest_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v106);
        v94 = *(v2 + 216);
        if (v94)
        {
          v95 = *(v1 + 136);
          v96 = v2 + 216;
          do
          {
            v97 = *(v94 + 32);
            v98 = v97 >= v95;
            v99 = v97 < v95;
            if (v98)
            {
              v96 = v94;
            }

            v94 = *(v94 + 8 * v99);
          }

          while (v94);
          if (v96 != v2 + 216 && v95 >= *(v96 + 32))
          {
            std::map<unsigned int,std::function<void ()(gnss::Result)>>::erase[abi:ne200100]((v2 + 208), v96);
          }
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v100 = mach_continuous_time();
          v101 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v100), "ADP", 68, "startEmergencyPositionRequest_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v101, 5, 1);
        }

        goto LABEL_205;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v83 = mach_continuous_time();
        v84 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CpLocReq success\n", (*&g_MacClockTicksToMsRelation * v83), "ADP", 73, "startEmergencyPositionRequest_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v84, 4, 1);
      }

      __str[60] = 0;
      *&__str[64] = -1;
      *&__str[68] = 0;
      *&__str[72] = xmmword_2997286D0;
      memset(&__str[88], 0, 22);
      *&__str[110] = -1;
      __str[112] = 0;
      *&__str[116] = 0;
      *&__str[120] = -1;
      *&__str[128] = 0;
      *&__str[136] = -1;
      __str[140] = -1;
      *&__str[156] = -1;
      *&__str[142] = -1;
      *&__str[149] = -1;
      *&__str[164] = 0x7FFFFFFFLL;
      __str[172] = 0;
      *&__str[174] = -1;
      *&__str[176] = -COERCE_DOUBLE(0x8000000080000000);
      *&__str[184] = 0;
      *__str = v107[0];
      *&__str[16] = v107[1];
      *&__str[31] = *(&v107[1] + 15);
      v85 = *(v1 + 136);
      v86 = *(v1 + 132);
      *&__str[40] = *(v1 + 140);
      *&__str[44] = v86;
      __str[48] = *(v1 + 72);
      *&__str[56] = -1;
      *&__str[52] = v85;
      *&__str[192] = *(v1 + 89);
      v87 = *(v2 + 128);
      *(v2 + 120) = *(v1 + 88);
      v88 = 0x7D6343EB1A1F58D1 * ((*(v2 + 136) - v87) >> 2);
      if (*(v2 + 136) != v87)
      {
        if (v88 <= 1)
        {
          v89 = 1;
        }

        else
        {
          v89 = 0x7D6343EB1A1F58D1 * ((*(v2 + 136) - v87) >> 2);
        }

        if (*(v87 + 52) == v85)
        {
          v90 = 0;
LABEL_178:
          if (v90 < v88)
          {
            v91 = v87 + 196 * v90;
            __str[60] = *(v91 + 60);
            *(v91 + 144) = *&__str[144];
            *(v91 + 160) = *&__str[160];
            *(v91 + 176) = *&__str[176];
            *(v91 + 192) = *&__str[192];
            *(v91 + 80) = *&__str[80];
            *(v91 + 96) = *&__str[96];
            *(v91 + 112) = *&__str[112];
            *(v91 + 128) = *&__str[128];
            *(v91 + 16) = *&__str[16];
            *(v91 + 32) = *&__str[32];
            *(v91 + 64) = *&__str[64];
            *v91 = *__str;
            *(v91 + 48) = *&__str[48];
          }

          goto LABEL_204;
        }

        v90 = 0;
        v102 = (v87 + 248);
        v103 = v89 - 1;
        while (v103 != v90)
        {
          v104 = *v102;
          v102 += 49;
          ++v90;
          if (v104 == v85)
          {
            if (v90 < v88)
            {
              goto LABEL_178;
            }

            break;
          }
        }
      }

      if (v88 <= 3)
      {
        std::vector<gnss::AgnssSummaryReport>::push_back[abi:ne200100](v2 + 128, __str);
      }

LABEL_204:
      *(v2 + 1024) = 1;
      goto LABEL_205;
    }

LABEL_161:
    LODWORD(v107[2]) |= 0x10u;
    goto LABEL_162;
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v125, v1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v125, "startEmergencyPositionRequest_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v125);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosnReportCb\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
LABEL_94:
    bzero(__str, 0x410uLL);
    v44 = mach_continuous_time();
    v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 68, "startEmergencyPositionRequest_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v45, 5, 1);
  }

LABEL_205:
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v126);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v128);
  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v130);
}

void sub_29968A19C(_Unwind_Exception *a1)
{
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v1 - 152);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v1 - 120);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v1 - 88);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::Ga10_07FTAssistanceRequest(gnss::GnssAdaptDevice *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga10_07FTAssistanceRequest");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  v4 = *(this + 36);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN4gnss15GnssAdaptDevice26Ga10_07FTAssistanceRequestEv_block_invoke;
  block[3] = &__block_descriptor_tmp_249;
  block[4] = this;
  dispatch_async(v4, block);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga10_07FTAssistanceRequest");
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice29startEmergencyPositionRequestERKNS_9Emergency6Cplane15PositionRequestERKNS2_7ContextENSt3__18functionIFvNS_6ResultEEEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);
  v3 = a1 + 64;
  v4 = *(a1 + 56);

  return v2(v4, v3);
}

uint64_t __copy_helper_block_e8_32c82_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane17MeasurementReportEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c82_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane17MeasurementReportEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v1);
}

uint64_t gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  v179 = *MEMORY[0x29EDCA608];
  v110 = 0xFFFFFFFF00000000;
  v111 = -1;
  memset(&v112[2], 0, 27);
  v114 = 0xFFFFFFFF00000000;
  v115 = 0;
  v118 = -1;
  v119 = 0;
  v122 = -1;
  LOWORD(v123) = 0;
  v124 = xmmword_2997286D0;
  memset(v125, 0, sizeof(v125));
  v126 = -1;
  v127 = 0;
  v131 = -1;
  v130 = 0;
  v132 = 0;
  v133 = -1;
  v134 = -1;
  v138 = -1;
  *&v135[8] = -1;
  *&v135[1] = -1;
  v139 = 0x7FFFFFFFLL;
  LOBYTE(v140) = 0;
  HIWORD(v140) = -1;
  v141 = -COERCE_DOUBLE(0x8000000080000000);
  v142 = 0;
  v143 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga10_05SendSessionSummaryReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  v10 = *(a1 + 128);
  v11 = *(a1 + 136);
  if (a3)
  {
    if (v11 != v10)
    {
      v12 = 0x7D6343EB1A1F58D1 * ((v11 - v10) >> 2);
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 0x7D6343EB1A1F58D1 * ((v11 - v10) >> 2);
      }

      if (*(v10 + 56) == v6)
      {
        v14 = 0;
LABEL_10:
        if (v14 < v12)
        {
          v15 = v10 + 196 * v14;
          v16 = *v15;
          v154 = *(v15 + 4);
          v155 = *(v15 + 8);
          *__str = *(v15 + 10);
          *&__str[13] = *(v15 + 23);
          v17 = *(v15 + 39);
          v18 = *(v15 + 48);
          v152 = *(v15 + 49);
          v153 = *(v15 + 51);
          v19 = *(v15 + 60);
          v20 = *(v15 + 61);
          v151 = *(v15 + 63);
          v150 = v20;
          v21 = *(v15 + 64);
          v22 = *(v15 + 68);
          *v174 = *(v15 + 88);
          *&v174[14] = *(v15 + 102);
          v23 = *(v15 + 110);
          v24 = *(v15 + 112);
          v148 = *(v15 + 113);
          v149 = *(v15 + 115);
          v25 = *(v15 + 116);
          v26 = *(v15 + 120);
          v27 = *(v15 + 136);
          v28 = *(v15 + 140);
          v178 = *(v15 + 149);
          v177 = *(v15 + 141);
          v147 = *(v15 + 155);
          v146 = *(v15 + 153);
          v29 = *(v15 + 156);
          v30 = *(v15 + 172);
          v109 = *(v15 + 192);
          v108 = *(v15 + 184);
          v110 = __PAIR64__(v154, v16);
          v31 = *(v15 + 176);
          v32 = *(v15 + 164);
          v33 = *(v15 + 128);
          v34 = *(v15 + 72);
          v35 = *(v15 + 52);
          v36 = *(v15 + 40);
          v111 = v155;
          *v112 = *__str;
          *&v112[13] = *&__str[13];
          v113 = v17;
          v114 = v36;
          v115 = v18;
          v117 = v153;
          v116 = v152;
          v118 = v35;
          v119 = v19;
          v121 = v151;
          v120 = v150;
          v122 = v21;
          v123 = v22;
          v124 = v34;
          *&v125[14] = *&v174[14];
          *v125 = *v174;
          v126 = v23;
          v127 = v24;
          v129 = v149;
          v128 = v148;
          v131 = v26;
          v132 = v33;
          v130 = v25;
          v133 = v27;
          v134 = v28;
          *&v135[8] = v178;
          *v135 = v177;
          v137 = v147;
          v136 = v146;
          v138 = v29;
          v139 = v32;
          v140 = v30;
          v141 = v31;
          v143 = v109;
          v105 = 2;
          v142 = v108;
          goto LABEL_20;
        }
      }

      else
      {
        v14 = 0;
        v37 = (v10 + 252);
        v38 = v13 - 1;
        while (v38 != v14)
        {
          v39 = *v37;
          v37 += 49;
          ++v14;
          if (v39 == v6)
          {
            if (v14 < v12)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }
    }

    v105 = 2;
    goto LABEL_19;
  }

  v105 = 1;
  if ((gnss::GnssAdaptDevice::Ga11_23GetCPSession(v10, v11, v6, &v110) & 1) == 0)
  {
LABEL_19:
    LODWORD(v118) = v6;
  }

LABEL_20:
  v40 = -1.0;
  if (HIDWORD(v124) == 1)
  {
    if (*&v125[12] >> 23)
    {
      v42 = 1.79769313e308;
    }

    else
    {
      v41 = vcvtd_n_f64_u32(90 * *&v125[12], 0x17uLL);
      if (*&v125[8] == 2)
      {
        v42 = -((90 * *&v125[12]) * 0.00000011920929);
      }

      else
      {
        v42 = v41;
      }
    }

    v46 = *&v125[16];
    if ((*&v125[16] + 0x800000) >> 24)
    {
      v45 = 1.79769313e308;
    }

    else
    {
      if ((*&v125[16] & 0x800000) != 0)
      {
        v46 = *&v125[16] | 0xFF000000;
      }

      v45 = v46 * 360.0 * 0.0000000596046448;
    }

    v47 = *&v125[20];
    if (v130 == 2)
    {
      v47 = -v47;
    }

    if (*&v125[20] < 0)
    {
      v43 = 1.79769313e308;
    }

    else
    {
      v43 = v47;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v48 = mach_continuous_time();
      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%.7lf,Long,%.7lf,Alt,%.2lf\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 68, "Ga10_05SendSessionSummaryReport", v42, v45, v43);
      LbsOsaTrace_WriteLog(0x18u, __str, v49, 5, 1);
    }

    v44 = -1.0;
    v50 = -1.0;
    if (v126 != 255)
    {
      v50 = (pow(1.1, v126) + -1.0) * 10.0;
    }

    v104 = v50;
    if (v131 != 255)
    {
      v44 = (pow(1.025, v131) + -1.0) * 45.0;
    }

    LODWORD(v4) = v142;
    if ((((v123 & 0x8000) != 0) & v115) != 0)
    {
      v51 = BYTE1(v123) & 1 | 2;
    }

    else
    {
      v51 = BYTE1(v123) & 1;
    }

    if ((a3 & (v110 == 1)) != 0)
    {
      v51 |= 4u;
    }

    v103 = v51;
    v52 = DWORD1(v124);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v53 = mach_continuous_time();
      v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AchievedHUnc,%f,AchievedVUnc,%f\n", (*&g_MacClockTicksToMsRelation * v53), "ADP", 68, "Ga10_05SendSessionSummaryReport", v104, v44);
      LbsOsaTrace_WriteLog(0x18u, __str, v54, 5, 1);
    }

    v102 = (v52 >> 3) & 0x18 | v52 & 0x20004 | (v52 >> 19) & 0xE0 | (v52 >> 5) & 0x300 | (((v52 >> 8) & 7) << 10) & 0xFFFFDFFF | (((v52 >> 12) & 1) << 13) | (v52 >> 1) & 0xC000 | (v52 >> 2) & 0x10000 | (v52 >> 10) & 0x1C0000 | (v52 << 10) & 0x200000 | (__rbit32(v52) >> 30);
    v101 = *&v4 / 1000.0;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v55 = mach_continuous_time();
      v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Ttff,%f,TechSrc,%d,AssistUsed,%llu\n", (*&g_MacClockTicksToMsRelation * v55), "ADP", 73, "Ga10_05SendSessionSummaryReport", v101, v103, v102);
      LbsOsaTrace_WriteLog(0x18u, __str, v56, 4, 1);
    }
  }

  else
  {
    v102 = 0;
    v103 = 0;
    v43 = 1.79769313e308;
    v101 = -1.0;
    v44 = -1.0;
    v104 = -1.0;
    v45 = 1.79769313e308;
    v42 = 1.79769313e308;
  }

  v57 = v110;
  if ((v110 - 1) < 2)
  {
    v60 = v45;
  }

  else
  {
    v58 = v110;
    v59 = -1.0;
    v4 = -1.0;
    if (!v110)
    {
      goto LABEL_81;
    }

    if (v110 == 3)
    {
      v60 = v45;
      v57 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v61 = mach_continuous_time();
        v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocInfoType,%u\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 87, "Ga10_05SendSessionSummaryReport", 770, v110);
        LbsOsaTrace_WriteLog(0x18u, __str, v62, 2, 1);
      }

      v60 = v45;
      v57 = 0;
    }
  }

  LODWORD(v4) = *&v112[2];
  v59 = -1.0;
  if (BYTE6(v110) != 255)
  {
    v59 = (pow(1.1, BYTE6(v110)) + -1.0) * 10.0;
  }

  v63 = *&v4;
  if (v111 != 255)
  {
    v40 = (pow(1.025, v111) + -1.0) * 45.0;
  }

  v58 = *&v112[6];
  v4 = v63 / 1000.0;
  if (*&v112[6] <= 1)
  {
    if (*&v112[6])
    {
      v64 = *&v112[6] == 1;
      goto LABEL_69;
    }

LABEL_80:
    v45 = v60;
    goto LABEL_81;
  }

  if (*&v112[6] == 2)
  {
    if (a3)
    {
      v58 = 4;
    }

    else
    {
      v58 = 2;
    }

    goto LABEL_80;
  }

  v64 = *&v112[6] == 3;
LABEL_69:
  v45 = v60;
  if (v64)
  {
    if (a3)
    {
      v58 = 3;
    }

    else
    {
      v58 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v66 = mach_continuous_time();
      v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RepType,%u\n", (*&g_MacClockTicksToMsRelation * v66), "ADP", 69, "Ga10_05SendSessionSummaryReport", 770, *&v112[6]);
      LbsOsaTrace_WriteLog(0x18u, __str, v67, 0, 1);
    }

    v58 = 0;
  }

LABEL_81:
  v68 = HIDWORD(v114) + 1;
  if ((HIDWORD(v114) + 1) >= 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v69 = mach_continuous_time();
      v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v69), "ADP", 69, "Ga10_05SendSessionSummaryReport", 515, HIDWORD(v114));
      LbsOsaTrace_WriteLog(0x18u, __str, v70, 0, 1);
    }

    v68 = 0;
  }

  v71 = 0;
  switch(a4)
  {
    case 0:
    case 1:
    case 6:
    case 15:
    case 16:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
      break;
    case 2:
      v71 = 1;
      break;
    case 3:
      v71 = 2;
      break;
    case 4:
      v71 = 3;
      break;
    case 5:
    case 8:
      v71 = 5;
      break;
    case 7:
      v71 = 7;
      break;
    case 9:
    case 14:
      v71 = 6;
      break;
    case 10:
    case 11:
      v71 = 8;
      break;
    case 12:
    case 13:
      v71 = 9;
      break;
    case 17:
      v71 = 10;
      break;
    case 18:
    case 19:
      if (v119)
      {
        v71 = 12;
      }

      else
      {
        v71 = 11;
      }

      break;
    case 20:
    case 21:
      v71 = 12;
      break;
    case 22:
    case 23:
      v71 = 13;
      break;
    case 24:
      v71 = 14;
      break;
    case 25:
    case 26:
      v71 = 15;
      break;
    case 27:
    case 28:
      v71 = 16;
      break;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v99 = mach_continuous_time();
        v100 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU Sess Code,%u\n", (*&g_MacClockTicksToMsRelation * v99), "ADP", 69, "Ga10_05SendSessionSummaryReport", 515, a4);
        LbsOsaTrace_WriteLog(0x18u, __str, v100, 0, 1);
      }

      v71 = 0;
      break;
  }

  v72 = v115;
  v73 = *(a1 + 176);
  *(a1 + 176) = 0;
  GnssSpoofingFlag = gnss::GnssAdaptDevice::Ga06_18GetGnssSpoofingFlag(a1, v124);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](v174, a1 + 728);
  v106 = a1;
  if (v175)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v75 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v76 = 70;
      if (v73)
      {
        v77 = 84;
      }

      else
      {
        v77 = 70;
      }

      if (v72)
      {
        v76 = 84;
      }

      v78 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionId, %u, MethodType,%u,SessionType,%u,ProtoType,%u,ReqRspTime,%f,ReqHAcc,%f,ReqVAcc,%f,PosReqType,%u,ErrCode,%u,HeloEnabled,%c,HeloInjected,%c, SpoofingFlag,%llu\n", v75, "ADP", 73, "Ga10_05SendSessionSummaryReport", v6, v57, v105, v68, v4, v59, v40, v58, v71, v76, v77, GnssSpoofingFlag);
      LbsOsaTrace_WriteLog(0x18u, __str, v78, 4, 1);
    }

    v79 = *(a1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice31Ga10_05SendSessionSummaryReportEjb18e_gnsPPDU_SessCode_block_invoke;
    block[3] = &__block_descriptor_tmp_245;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](v157, v174);
    *&v157[4] = v42;
    *&v157[5] = v45;
    *&v157[6] = v43;
    *&v157[7] = v104;
    *&v157[8] = v44;
    *&v157[9] = v101;
    v158 = v103;
    v159 = v57;
    v160 = v105;
    v161 = v68;
    v162 = v4;
    v163 = v59;
    v164 = v40;
    v165 = v58;
    v166 = v71;
    v167 = v72;
    v168 = v73;
    v170 = v145;
    v169 = v144;
    v171 = v102;
    v172 = GnssSpoofingFlag;
    v173 = v6;
    dispatch_async(v79, block);
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v157);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v80 = mach_continuous_time();
    v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SummaryRep\n", (*&g_MacClockTicksToMsRelation * v80), "ADP", 69, "Ga10_05SendSessionSummaryReport", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v81, 0, 1);
  }

  v83 = *(a1 + 128);
  v82 = *(a1 + 136);
  v84 = 0x7D6343EB1A1F58D1 * ((v82 - v83) >> 2);
  if (a3)
  {
    if (v82 == v83)
    {
      goto LABEL_121;
    }

    if (v84 <= 1)
    {
      v85 = 1;
    }

    else
    {
      v85 = 0x7D6343EB1A1F58D1 * ((v82 - v83) >> 2);
    }

    if (*(v83 + 14) != v6)
    {
      v86 = 0;
      v87 = (v83 + 252);
      v88 = v85 - 1;
      while (v88 != v86)
      {
        v89 = *v87;
        v87 += 49;
        ++v86;
        if (v89 == v6)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_121;
    }

    goto LABEL_112;
  }

  if (v82 == v83)
  {
    goto LABEL_121;
  }

  if (v84 <= 1)
  {
    v90 = 1;
  }

  else
  {
    v90 = 0x7D6343EB1A1F58D1 * ((v82 - v83) >> 2);
  }

  if (*(v83 + 13) == v6)
  {
LABEL_112:
    v86 = 0;
LABEL_113:
    if (v86 < v84)
    {
      v91 = &v83[196 * v86];
      v92 = v82 - (v91 + 196);
      if (v82 != v91 + 196)
      {
        memmove(&v83[196 * v86], v91 + 196, v92 - 2);
      }

      *(v106 + 136) = &v91[v92];
    }

    goto LABEL_121;
  }

  v86 = 0;
  v93 = (v83 + 248);
  v94 = v90 - 1;
  while (v94 != v86)
  {
    v95 = *v93;
    v93 += 49;
    ++v86;
    if (v95 == v6)
    {
LABEL_120:
      if (v86 < v84)
      {
        goto LABEL_113;
      }

      break;
    }
  }

LABEL_121:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v96 = mach_continuous_time();
    v97 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v96), "ADP", 68, "Ga10_05SendSessionSummaryReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v97, 5, 1);
  }

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v174);
}

BOOL gnss::GnssAdaptDevice::Ga10_11SetGuardTimeOut(gnss::GnssAdaptDevice *this)
{
  v10 = *MEMORY[0x29EDCA608];
  bzero(v8, 0x230uLL);
  v8[0] = 512;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GaurdTimeOut,%f\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 68, "Ga10_11SetGuardTimeOut", 2.0);
    LbsOsaTrace_WriteLog(0x18u, __str, v2, 5, 1);
  }

  v9 = 2000;
  v3 = Gnm_SetPlatformConfig(v8);
  if (v3 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx setPfmCfg,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga10_11SetGuardTimeOut", 257, v3);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  return v3 == 0;
}

BOOL gnss::GnssAdaptDevice::Ga10_12SetEarlyReturn(gnss::GnssAdaptDevice *this, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga10_12SetEarlyReturn");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  bzero(v17, 0x268uLL);
  v5 = 0;
  v17[6] = 2;
  v18 = 0;
  v20[0] = 0;
  v19 = 0;
  *(v20 + 7) = 0;
  v21[0] = 0;
  *(v21 + 5) = 0;
  do
  {
    v6 = v16 + v5;
    v6[62] = 0;
    *(&v21[33] + v5 + 7) = 0;
    *(v6 + 161) = -1;
    v5 += 262;
  }

  while (v5 != 524);
  v22 = 0;
  v23[2] = 0;
  *(v23 + 7) = 0;
  v23[0] = 0;
  if (a2)
  {
    v7 = 4096;
  }

  else
  {
    v7 = 0;
  }

  v16[0] = 4096;
  v16[1] = v7;
  v8 = Gnm_SetUserConfig(v16);
  if (v8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetUsrCfg,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "Ga10_12SetEarlyReturn", 257, v8);
    v11 = 0;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SetUserConfig success\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "Ga10_12SetEarlyReturn");
    v11 = 5;
  }

  LbsOsaTrace_WriteLog(0x18u, __str, v10, v11, 1);
LABEL_14:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "Ga10_12SetEarlyReturn");
    LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
  }

  return v8 == 0;
}

BOOL gnss::GnssAdaptDevice::Ga10_30SetTargetE911VertAccM(gnss::GnssAdaptDevice *this, double a2)
{
  v28 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga10_30SetTargetE911VertAccM");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  bzero(v17, 0x270uLL);
  v5 = 0;
  v19 = 2;
  v20 = 0;
  v22[0] = 0;
  v21 = 0;
  *(v22 + 7) = 0;
  v23[0] = 0;
  *(v23 + 5) = 0;
  do
  {
    v6 = &v17[v5];
    v6[62] = 0;
    *(&v23[33] + v5 + 7) = 0;
    *(v6 + 161) = -1;
    v5 += 262;
  }

  while (v5 != 524);
  v24 = 0;
  v26 = 0.0;
  *(v25 + 7) = 0;
  v25[0] = 0;
  v18 = 4096;
  if (a2 == -1.0)
  {
    a2 = 0.0;
  }

  else
  {
    v26 = a2;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: targetE911VerticalAccM,%f\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga10_30SetTargetE911VertAccM", a2);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
  }

  v9 = Gnm_SetUserConfig(v17);
  if (v9)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetUsrCfg,%u\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "Ga10_30SetTargetE911VertAccM", 257, v9);
    v12 = 0;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SetUserConfig success\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "Ga10_30SetTargetE911VertAccM");
    v12 = 5;
  }

  LbsOsaTrace_WriteLog(0x18u, __str, v11, v12, 1);
LABEL_16:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga10_30SetTargetE911VertAccM");
    LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
  }

  return v9 == 0;
}

void std::map<unsigned int,std::function<void ()(gnss::Result)>>::erase[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer(a1, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 5));

  operator delete(a2);
}

double gnss::GnssAdaptDevice::stopEmergencyPositionRequest(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice28stopEmergencyPositionRequestEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_55;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    v9[8] = a2;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "stopEmergencyPositionRequest", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice28stopEmergencyPositionRequestEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v42[129] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "stopEmergencyPositionRequest_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    v6 = *(v2 + 128);
    v5 = *(v2 + 136);
    v7 = v5 - v6;
    if (v5 != v6)
    {
      v8 = *(a1 + 72);
      v9 = 0x7D6343EB1A1F58D1 * (v7 >> 2);
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      if (*(v6 + 52) == v8)
      {
LABEL_9:
        *__str = *(a1 + 72);
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v42, a1 + 40);
        std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::function<void ()(gnss::Result)>>>(v2 + 208, __str, __str);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v42);
        if (GNS_CpLocAbort(*(a1 + 72)) == 1)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v11 = mach_continuous_time();
            v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CpLocAbort success\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "stopEmergencyPositionRequest_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v12, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v14 = mach_continuous_time();
            v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "stopEmergencyPositionRequest_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
          }
        }

        else
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v28 = mach_continuous_time();
            v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpLocAbort,%u\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "stopEmergencyPositionRequest_block_invoke", 257, 2);
            LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v38, "stopEmergencyPositionRequest_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
          v30 = *(v2 + 216);
          if (v30)
          {
            v31 = *(a1 + 72);
            v32 = v2 + 216;
            do
            {
              v33 = *(v30 + 32);
              v34 = v33 >= v31;
              v35 = v33 < v31;
              if (v34)
              {
                v32 = v30;
              }

              v30 = *(v30 + 8 * v35);
            }

            while (v30);
            if (v32 != v2 + 216 && v31 >= *(v32 + 32))
            {
              std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer((v2 + 208), v32);
              std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32 + 40);
              operator delete(v32);
            }
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v36 = mach_continuous_time();
            v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "stopEmergencyPositionRequest_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
          }
        }

        return result;
      }

      v20 = 0;
      v21 = (v6 + 248);
      v22 = v10 - 1;
      while (v22 != v20)
      {
        v23 = *v21;
        v21 += 49;
        ++v20;
        if (v23 == v8)
        {
          if (v20 < v9)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v39, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v39, "stopEmergencyPositionRequest_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v39);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessId,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 87, "stopEmergencyPositionRequest_block_invoke", 2052, *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v25, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "stopEmergencyPositionRequest_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v40, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v40, "stopEmergencyPositionRequest_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v40);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "stopEmergencyPositionRequest_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "stopEmergencyPositionRequest_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
    }
  }

  return result;
}

void sub_29968C774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::setNwAssistanceNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice27setNwAssistanceNeededReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane22AssistanceNeededReportEEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_57;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setNwAssistanceNeededReport", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice27setNwAssistanceNeededReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane22AssistanceNeededReportEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceNeededReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](__str, a1 + 40);
    v5 = v2 + 792;
    if (__str != (v2 + 792))
    {
      v6 = v18;
      v7 = *(v2 + 816);
      if (v18 == __str)
      {
        if (v7 == v5)
        {
          (*(*v18 + 24))();
          (*(*v18 + 32))(v18);
          v18 = 0;
          (*(**(v2 + 816) + 24))(*(v2 + 816), __str);
          (*(**(v2 + 816) + 32))(*(v2 + 816));
          *(v2 + 816) = 0;
          v18 = __str;
          (*(v19[0] + 24))(v19, v2 + 792);
          (*(v19[0] + 32))(v19);
        }

        else
        {
          (*(*v18 + 24))();
          (*(*v18 + 32))(v18);
          v18 = *(v2 + 816);
        }

        *(v2 + 816) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 816), __str);
        (*(**(v2 + 816) + 32))(*(v2 + 816));
        *(v2 + 816) = v18;
        v18 = __str;
      }

      else
      {
        v18 = *(v2 + 816);
        *(v2 + 816) = v6;
      }
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v15, "setNwAssistanceNeededReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setNwAssistanceNeededReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v16, "setNwAssistanceNeededReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AssistReport\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setNwAssistanceNeededReport_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setNwAssistanceNeededReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  return result;
}

void sub_29968CE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](a1 + 40);
}

double gnss::GnssAdaptDevice::setNwAssistanceGpsRefTime(uint64_t a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    memcpy(__dst, a2, 0x118uLL);
    v5 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice25setNwAssistanceGpsRefTimeERKNS_9Emergency6Cplane16GpsReferenceTimeENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_70_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    memcpy(v11, __dst, sizeof(v11));
    dispatch_async(v5, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__dst, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__dst, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setNwAssistanceGpsRefTime", 513);
    LbsOsaTrace_WriteLog(0x18u, __dst, v8, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice25setNwAssistanceGpsRefTimeERKNS_9Emergency6Cplane16GpsReferenceTimeENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 72) < 0x240C8400u)
    {
      if (*(a1 + 76) < 0x400u)
      {
        if (*(a1 + 79) < 0x11u)
        {
          v22 = 0;
          v59 = 0;
          memset(v58, 0, sizeof(v58));
          v57 = 0u;
          do
          {
            v23 = &v56 + v22;
            v23[22] = -1;
            *(v23 + 23) = 0;
            v23[27] = 0;
            v22 += 6;
          }

          while (v22 != 96);
          LOWORD(v57) = -1;
          DWORD1(v57) = -1;
          HIDWORD(v57) = -1;
          v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v60 = v24;
          v25 = *(a1 + 72);
          v56 = v25;
          v26 = *(a1 + 78);
          if (v26 == 255)
          {
            v27 = 0xFFFF;
          }

          else
          {
            v27 = ((pow(1.18, v26) + -1.0) * 0.0022 * 0.000333333333);
            LOWORD(v57) = v27;
          }

          v28 = *(a1 + 76);
          WORD4(v57) = v28;
          v29 = *(a1 + 336);
          if (*(a1 + 336) && v29 < 8)
          {
            v28 += v29 << 10;
            WORD4(v57) = v28;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Week,%u,Tow,%u,TowUnc,%u,OsTime,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 73, "setNwAssistanceGpsRefTime_block_invoke", v28, v25, v27, v24);
            LbsOsaTrace_WriteLog(0x18u, __str, v31, 4, 1);
          }

          if (*(a1 + 79))
          {
            v32 = 0;
            v33 = 0;
            v34 = (a1 + 80);
            do
            {
              v35 = *(v34 + 2);
              if (v35 > 0x1F)
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v43 = mach_continuous_time();
                  v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx satId,%u rejected\n", (*&g_MacClockTicksToMsRelation * v43), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514, *(v34 + 2));
                  LbsOsaTrace_WriteLog(0x18u, __str, v44, 0, 1);
                }
              }

              else
              {
                v36 = *(v34 + 12);
                if (v36 > 3)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v45 = mach_continuous_time();
                    v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Tlm of satId,%u\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514, *(v34 + 2));
                    LbsOsaTrace_WriteLog(0x18u, __str, v46, 0, 1);
                  }
                }

                else
                {
                  v37 = v58 + 6 * v33 + 2;
                  v37[3] = v36;
                  v38 = *v34;
                  if (v38 >= 0x4000)
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v47 = mach_continuous_time();
                      v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Tlm Word of satId,%u\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514, *(v34 + 2));
                      LbsOsaTrace_WriteLog(0x18u, __str, v48, 0, 1);
                    }
                  }

                  else
                  {
                    *(v37 + 2) = v38;
                    *v37 = v35;
                    v39 = *(v34 + 1);
                    v40 = *(v34 + 2);
                    v37[1] = v39 != 0;
                    v37[2] = v40 != 0;
                    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v41 = mach_continuous_time();
                      v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SatId,%u,antiSpoof,%u,alert,%u,tlmReserved,%u,tlmMsg,%u\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 73, "setNwAssistanceGpsRefTime_block_invoke", v35, v39 != 0, v40 != 0, v36, v38);
                      LbsOsaTrace_WriteLog(0x18u, __str, v42, 4, 1);
                    }

                    ++v33;
                  }
                }
              }

              ++v32;
              v34 += 8;
            }

            while (v32 < *(a1 + 79));
          }

          else
          {
            v33 = 0;
          }

          LOBYTE(v58[0]) = v33;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v49 = mach_continuous_time();
            v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No of Tow Assist,%d\n", (*&g_MacClockTicksToMsRelation * v49), "ADP", 73, "setNwAssistanceGpsRefTime_block_invoke", v33);
            LbsOsaTrace_WriteLog(0x18u, __str, v50, 4, 1);
          }

          GNS_AsstGpsRefTime(*(a1 + 348), 1u, &v56, 0);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v51 = mach_continuous_time();
            v52 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstGpsRefTime success\n", (*&g_MacClockTicksToMsRelation * v51), "ADP", 73, "setNwAssistanceGpsRefTime_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v52, 4, 1);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v55, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v55, "setNwAssistanceGpsRefTime_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v55);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v53 = mach_continuous_time();
            v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v53), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v54, 5, 1);
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v61, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v61, "setNwAssistanceGpsRefTime_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v61);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v18 = mach_continuous_time();
            v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sat Count\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v62, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v62, "setNwAssistanceGpsRefTime_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v62);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WkNum\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v63, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v63, "setNwAssistanceGpsRefTime_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v63);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Tow\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514);
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v64, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v64, "setNwAssistanceGpsRefTime_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v64);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void sub_29968DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::setNwAssistanceRefPosition(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = a2[1];
    *__str = *a2;
    v11 = v3;
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26setNwAssistanceRefPositionERKNS_9Emergency6Cplane17ReferenceLocationENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_84_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    v9[2] = *__str;
    v9[3] = v11;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setNwAssistanceRefPosition", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice26setNwAssistanceRefPositionERKNS_9Emergency6Cplane17ReferenceLocationENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v89 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 72) == 9)
    {
      if (*(a1 + 74) < 0)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v85, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v85, "setNwAssistanceRefPosition_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v85);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Alt\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
        }
      }

      else if (*(a1 + 76) < 0x800000u)
      {
        if ((*(a1 + 80) + 0x800000) >> 24)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v83, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v83, "setNwAssistanceRefPosition_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v83);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Long\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v28 = mach_continuous_time();
            v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v29, 5, 1);
          }
        }

        else if (*(a1 + 85) < 0)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v82, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v82, "setNwAssistanceRefPosition_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v82);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SemiMajUnc\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v33, 5, 1);
          }
        }

        else if (*(a1 + 86) < 0)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v81, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v81, "setNwAssistanceRefPosition_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v81);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v34 = mach_continuous_time();
            v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SemiMinUnc\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v36 = mach_continuous_time();
            v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
          }
        }

        else if (*(a1 + 87) < 0x5Au)
        {
          if (*(a1 + 88) < 0)
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v79, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v79, "setNwAssistanceRefPosition_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v79);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v54 = mach_continuous_time();
              v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AltUnc\n", (*&g_MacClockTicksToMsRelation * v54), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
              LbsOsaTrace_WriteLog(0x18u, __str, v55, 0, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v56 = mach_continuous_time();
              v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v56), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v57, 5, 1);
            }
          }

          else if (*(a1 + 89) - 1 >= 0x64)
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v78, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v78, "setNwAssistanceRefPosition_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v78);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v58 = mach_continuous_time();
              v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Conf\n", (*&g_MacClockTicksToMsRelation * v58), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
              LbsOsaTrace_WriteLog(0x18u, __str, v59, 0, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v60 = mach_continuous_time();
              v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v60), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v61, 5, 1);
            }
          }

          else
          {
            LODWORD(v63) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            DWORD1(v63) = 1;
            v74 = -1;
            v75 = -1;
            v76 = 0x4FFFFFFFFLL;
            if (*(a1 + 73))
            {
              v38 = 2;
            }

            else
            {
              v38 = 1;
            }

            v39 = *(a1 + 74);
            v67 = *(a1 + 74);
            v40 = *(a1 + 76);
            v41 = *(a1 + 80);
            v62 = v38;
            v64 = v38;
            v65 = v40;
            v66 = v41;
            if (*(a1 + 84))
            {
              v42 = 2;
            }

            else
            {
              v42 = 1;
            }

            v71 = v42;
            v43 = *(a1 + 85);
            v68 = *(a1 + 85);
            v44 = *(a1 + 86);
            v69 = *(a1 + 86);
            v45 = 2 * *(a1 + 87);
            v70 = v45;
            v46 = *(a1 + 88);
            v72 = *(a1 + 88);
            v47 = *(a1 + 89);
            v73 = *(a1 + 89);
            *(&v63 + 1) = 0x1000000002;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
            {
              bzero(__str, 0x410uLL);
              v48 = mach_continuous_time();
              v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%u,Long,%d,Hemisphere,%u,Alt,%u,SemiMajUnc,%u,SemiMinUnc,%u,MajAxis,%u,AltUnc,%u,Conf,%u\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 68, "setNwAssistanceRefPosition_block_invoke", v40, v41, v62, v39, v43, v44, v45, v46, v47);
              LbsOsaTrace_WriteLog(0x18u, __str, v49, 5, 1);
            }

            GNS_AsstRefPos(*(a1 + 100), 2u, &v63, 0);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v50 = mach_continuous_time();
              v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstGpsRefPos success\n", (*&g_MacClockTicksToMsRelation * v50), "ADP", 73, "setNwAssistanceRefPosition_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v51, 4, 1);
            }

            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v77, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v77, "setNwAssistanceRefPosition_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v77);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v52 = mach_continuous_time();
              v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v52), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v53, 5, 1);
            }
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v80, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v80, "setNwAssistanceRefPosition_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v80);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MajAxis\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v25, 5, 1);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v84, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v84, "setNwAssistanceRefPosition_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v84);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lat\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v86, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v86, "setNwAssistanceRefPosition_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v86);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ShapeType not Ellipsoid pt with alt & Unc\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v87, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v87, "setNwAssistanceRefPosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v87);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

double gnss::GnssAdaptDevice::setNwAssistanceGpsEphemeris(uint64_t a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    memcpy(__dst, a2, sizeof(__dst));
    v5 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice27setNwAssistanceGpsEphemerisERKNS_9Emergency6Cplane18GpsNavigationModelENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_109;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    memcpy(v11, __dst, sizeof(v11));
    dispatch_async(v5, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__dst, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__dst, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setNwAssistanceGpsEphemeris", 513);
    LbsOsaTrace_WriteLog(0x18u, __dst, v8, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice27setNwAssistanceGpsEphemerisERKNS_9Emergency6Cplane18GpsNavigationModelENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 72) < 0x11u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Eph Count,%u\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke", *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 4, 1);
      }

      if (!*(a1 + 72))
      {
        goto LABEL_78;
      }

      v66 = 0;
      v16 = 0;
      v17 = a1 + 84;
      do
      {
        v18 = *(v17 + 48);
        if (v18 > 0x3F)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatID,%u\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, *(v17 + 48));
            LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
          }
        }

        else
        {
          v69 = 0;
          v68 = 0;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0;
          v67 = v18;
          if (*(v17 + 53) > 3u)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v28 = mach_continuous_time();
              v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId CACode,%u\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
              LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
            }
          }

          else
          {
            LOBYTE(v68) = *(v17 + 53);
            if (*(v17 + 49) >= 0x10u)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v30 = mach_continuous_time();
                v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId URA Eph,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
              }
            }

            else
            {
              BYTE1(v68) = *(v17 + 49);
              if (*(v17 + 50) >= 0x40u)
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v32 = mach_continuous_time();
                  v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SVHealth,%d\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                  LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
                }
              }

              else
              {
                BYTE2(v68) = *(v17 + 50);
                if (*(v17 + 56) >= 2u)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v34 = mach_continuous_time();
                    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId L2 PCode,%d\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                    LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
                  }
                }

                else
                {
                  HIBYTE(v68) = *(v17 + 56);
                  if (*(v17 + 24) >= 0x400u)
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v36 = mach_continuous_time();
                      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SaId IODC,%u\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                      LbsOsaTrace_WriteLog(0x18u, __str, v37, 0, 1);
                    }
                  }

                  else
                  {
                    LOWORD(v69) = *(v17 + 24);
                    if (*(v17 + 26) >= 0x93A8u)
                    {
                      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v38 = mach_continuous_time();
                        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId TOC,%u\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                        LbsOsaTrace_WriteLog(0x18u, __str, v39, 0, 1);
                      }
                    }

                    else
                    {
                      HIWORD(v69) = *(v17 + 26);
                      if (*(v17 + 72) >= 0x800000u)
                      {
                        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v40 = mach_continuous_time();
                          v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatdId 1st Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                          LbsOsaTrace_WriteLog(0x18u, __str, v41, 0, 1);
                        }
                      }

                      else
                      {
                        LODWORD(v70) = *(v17 + 72);
                        if (HIBYTE(*(v17 + 76)))
                        {
                          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                          {
                            bzero(__str, 0x410uLL);
                            v42 = mach_continuous_time();
                            v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId 2nd Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v42), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                            LbsOsaTrace_WriteLog(0x18u, __str, v43, 0, 1);
                          }
                        }

                        else
                        {
                          DWORD1(v70) = *(v17 + 76);
                          if (HIBYTE(*(v17 + 80)))
                          {
                            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v44 = mach_continuous_time();
                              v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId 3rd Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                              LbsOsaTrace_WriteLog(0x18u, __str, v45, 0, 1);
                            }
                          }

                          else
                          {
                            DWORD2(v70) = *(v17 + 80);
                            if (*(v17 + 84) >= 0x10000u)
                            {
                              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                              {
                                bzero(__str, 0x410uLL);
                                v46 = mach_continuous_time();
                                v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId 4th Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                                LbsOsaTrace_WriteLog(0x18u, __str, v47, 0, 1);
                              }
                            }

                            else
                            {
                              HIDWORD(v70) = *(v17 + 84);
                              if ((*(v17 - 8) + 0x200000) >= 0x400000)
                              {
                                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                {
                                  bzero(__str, 0x410uLL);
                                  v48 = mach_continuous_time();
                                  v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId SatCk Eph,%u\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                                  LbsOsaTrace_WriteLog(0x18u, __str, v49, 0, 1);
                                }
                              }

                              else
                              {
                                DWORD1(v71) = *(v17 - 8);
                                if (*(v17 + 38) >= 0x93A8u)
                                {
                                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                  {
                                    bzero(__str, 0x410uLL);
                                    v50 = mach_continuous_time();
                                    v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId RefTime Eph,%u\n", (*&g_MacClockTicksToMsRelation * v50), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                                    LbsOsaTrace_WriteLog(0x18u, __str, v51, 0, 1);
                                  }
                                }

                                else
                                {
                                  WORD6(v72) = *(v17 + 38);
                                  if (*(v17 + 64) >= 2u)
                                  {
                                    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                    {
                                      bzero(__str, 0x410uLL);
                                      v52 = mach_continuous_time();
                                      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId EphFitInt,%u\n", (*&g_MacClockTicksToMsRelation * v52), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                                      LbsOsaTrace_WriteLog(0x18u, __str, v53, 0, 1);
                                    }
                                  }

                                  else
                                  {
                                    BYTE14(v72) = *(v17 + 64);
                                    if (*(v17 + 68) >= 0x20u)
                                    {
                                      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                      {
                                        bzero(__str, 0x410uLL);
                                        v54 = mach_continuous_time();
                                        v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId Age Offset Eph,%u\n", (*&g_MacClockTicksToMsRelation * v54), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                                        LbsOsaTrace_WriteLog(0x18u, __str, v55, 0, 1);
                                      }
                                    }

                                    else
                                    {
                                      HIBYTE(v72) = *(v17 + 68);
                                      if (*(v17 + 46) - 57344 >= 0xFFFF4000)
                                      {
                                        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                        {
                                          bzero(__str, 0x410uLL);
                                          v56 = mach_continuous_time();
                                          v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId Rate of Incli Angle Eph,%u\n", (*&g_MacClockTicksToMsRelation * v56), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                                          LbsOsaTrace_WriteLog(0x18u, __str, v57, 0, 1);
                                        }
                                      }

                                      else
                                      {
                                        WORD6(v73) = *(v17 + 46);
                                        v19 = *(v17 + 20);
                                        if ((v19 + 0x800000) >> 24)
                                        {
                                          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                          {
                                            bzero(__str, 0x410uLL);
                                            v58 = mach_continuous_time();
                                            v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId Long of AscNode Orbit Plane at Weekly Epoch Eph,%u\n", (*&g_MacClockTicksToMsRelation * v58), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v67);
                                            LbsOsaTrace_WriteLog(0x18u, __str, v59, 0, 1);
                                          }
                                        }

                                        else
                                        {
                                          v20 = *(v17 + 8);
                                          *(&v72 + 4) = *v17;
                                          LOBYTE(v71) = *(v17 + 60);
                                          BYTE1(v71) = *(v17 + 51);
                                          WORD1(v71) = *(v17 + 28);
                                          v21 = *(v17 - 4);
                                          DWORD2(v71) = *(v17 + 30);
                                          HIDWORD(v71) = v21;
                                          LODWORD(v72) = *(v17 + 34);
                                          LODWORD(v73) = *(v17 + 40);
                                          *(&v73 + 4) = v20;
                                          HIWORD(v73) = *(v17 + 44);
                                          v74 = __PAIR64__(v19, *(v17 + 16));
                                          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
                                          {
                                            bzero(__str, 0x410uLL);
                                            v22 = mach_continuous_time();
                                            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: satId,%u,ephemCodeOnL2,%u,ephemUra,%u,ephemSvHealth,%u,ephemL2PFlag,%u,ephemIodc,%u,ephemToc,%u,reserved1,%u,reserved2,%u,reserved3,%u,reserved4,%u,ephemTgd,%u,ephemAf2,%u,ephemAf1,%u,ephemAf0,%d,ephemCrs,%u,ephemDeltaN,%u,ephemM0,%d,ephemCuc,%u,ephemCus,%u,ephemE,%u,ephemAPowerHalf,%u,toe,%u,ephemFitFlag,%u,ephemAODO,%u,ephemCic,%u,ephemCis,%u,ephemOmegaA0,%d,ephemI0,%d,ephemIdot,%u,ephemCrc,%u,ephemW,%d,ephemOmegaDot,%d\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke", v67, v68, BYTE1(v68), BYTE2(v68), HIBYTE(v68), v69, HIWORD(v69), v70, DWORD1(v70), DWORD2(v70), HIDWORD(v70), v71, SBYTE1(v71), SWORD1(v71), DWORD1(v71), SWORD4(v71), SWORD5(v71), HIDWORD(v71), v72, SWORD1(v72), DWORD1(v72), DWORD2(v72), WORD6(v72), BYTE14(v72), HIBYTE(v72), v73, SWORD1(v73), DWORD1(v73), DWORD2(v73), SWORD6(v73), SHIWORD(v73), v74, HIDWORD(v74));
                                            LbsOsaTrace_WriteLog(0x18u, __str, v23, 4, 1);
                                          }

                                          GNS_AsstGpsNavModel(*(a1 + 1620), 1, 1, &v67, 0);
                                          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
                                          {
                                            bzero(__str, 0x410uLL);
                                            v24 = mach_continuous_time();
                                            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstGpsNavModel invoked\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke");
                                            LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
                                          }

                                          ++v66;
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
                    }
                  }
                }
              }
            }
          }
        }

        ++v16;
        v17 += 96;
      }

      while (v16 < *(a1 + 72));
      if (v66)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v60 = mach_continuous_time();
          v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Eph Count,%u\n", (*&g_MacClockTicksToMsRelation * v60), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke", v66);
          LbsOsaTrace_WriteLog(0x18u, __str, v61, 4, 1);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v76, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v76, "setNwAssistanceGpsEphemeris_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v76);
      }

      else
      {
LABEL_78:
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v75, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v75, "setNwAssistanceGpsEphemeris_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v75);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v62 = mach_continuous_time();
          v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Eph Count 0\n", (*&g_MacClockTicksToMsRelation * v62), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 515);
          LbsOsaTrace_WriteLog(0x18u, __str, v63, 0, 1);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v64 = mach_continuous_time();
        v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v64), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v65, 5, 1);
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v77, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v77, "setNwAssistanceGpsEphemeris_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v77);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Eph Count\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514);
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v78, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v78, "setNwAssistanceGpsEphemeris_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v78);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void gnss::GnssAdaptDevice::Ga10_00ProcessGPSMeasurements(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*(a1 + 16))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS Meas Avlbl\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 73, "Ga10_00ProcessGPSMeasurements");
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 4, 1);
    }

    v8 = HIDWORD(a3);
    v9 = *(a1 + 37);
    *(a2 + 7) = v9;
    *a2 = *(a1 + 20);
    *(a2 + 4) = 0;
    *(a2 + 6) = -1;
    v10 = *(a1 + 28);
    if (v10 != 255)
    {
      *(a2 + 6) = v10;
      if (v8 == 2)
      {
        v11 = ((pow(1.18, v10) + -1.0) * 0.0022 / 3000.0 * 3000.0);
        *(a2 + 6) = (log(v11 + v11 + 1.0) / 0.131028262);
      }
    }

    *(a2 + 392) = 0;
    if (v9)
    {
      v12 = 0;
      v13 = (a1 + 47);
      v14 = (a2 + 28);
      do
      {
        *(v14 - 14) = *(v13 - 9) + (v8 == 3);
        *(v14 - 13) = *(v13 - 8);
        *(v14 - 12) = *v13;
        v15 = *(v13 - 7);
        if (v8 == 2)
        {
          *&v16 = v15 * 0.951;
          *(v14 - 10) = *&v16;
          *v14 = 0;
          *(a2 + 444) = 0;
          v17 = *(v13 - 3);
          LOWORD(v16) = *(v13 - 5);
          v18 = v16;
          if (v17 != 1024)
          {
            v18 = vcvtd_n_f64_u32(v17, 0xAuLL) + v18;
          }

          *(v14 - 1) = vcvtd_n_u64_f64(v18 / 1023.0, 0x15uLL);
        }

        else
        {
          *(v14 - 10) = v15;
          *(v14 - 18) = *(v13 - 5);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WholeChips,%u,FracChips,%u\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "Ga10_18AdjustGpsChipsforMeasurements", *(v14 - 9), *(v14 - 8));
            LbsOsaTrace_WriteLog(0x18u, __str, v21, 4, 1);
          }

          LOWORD(v19) = *(v14 - 9);
          v22 = (vcvts_n_f32_u32(*(v14 - 8), 0xAuLL) + v19) + -8.47922697;
          if (v22 >= 1023.0)
          {
            v22 = v22 + -1023.0;
          }

          if (v22 < 0.0)
          {
            v22 = v22 + 1023.0;
          }

          *(v14 - 9) = v22;
          *(v14 - 8) = vcvtd_n_s64_f64(v22 - v22, 0xAuLL);
        }

        v23 = *(v13 - 1);
        if (v23 <= 4)
        {
          *(v14 - 2) = v23;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasSent Dop,%d,wholeChips,%u,fracChips,%u,satId,%u,cnR,%u,RmsErr,%u,MultiPath,%u,codePh,%u,intCodePh,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "Ga10_00ProcessGPSMeasurements", *(v14 - 10), *(v14 - 9), *(v14 - 8), *(v14 - 14), *(v14 - 13), *(v14 - 12), *(v14 - 2), *(v14 - 1), *v14);
          LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
        }

        if (v12 > 0xE)
        {
          break;
        }

        v13 += 10;
        ++v12;
        v14 += 24;
      }

      while (v12 < *(a1 + 37));
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v27 = 70;
      if (*(a1 + 36))
      {
        v27 = 84;
      }

      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: gpsTow,%u,gpsWeek,%u,gpsTimeUnc,%u,MeasGpsTowFromFta,%c\n", v26, "ADP", 73, "Ga10_00ProcessGPSMeasurements", *a2, *(a2 + 4), *(a2 + 6), v27);
      LbsOsaTrace_WriteLog(0x18u, __str, v28, 4, 1);
    }
  }
}

uint64_t gnss::GnssAdaptDevice::Ga10_01SendMeasurementsReport(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v193 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(v188, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga10_01SendMeasurementsReport");
    LbsOsaTrace_WriteLog(0x18u, v188, v6, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v189, v4 + 824);
  *(v4 + 1024) = 0;
  if (*(v4 + 120) == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(v188, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate");
      LbsOsaTrace_WriteLog(0x18u, v188, v8, 5, 1);
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v191, v4 + 856);
    if (!v192)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v31 = mach_continuous_time();
        v32 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx MeasRepwithEstimate\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 258);
        LbsOsaTrace_WriteLog(0x18u, v188, v32, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v33 = mach_continuous_time();
        v34 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate");
        LbsOsaTrace_WriteLog(0x18u, v188, v34, 5, 1);
      }

      goto LABEL_161;
    }

    v9 = 0;
    LODWORD(v190[0]) = 0;
    BYTE4(v190[0]) = 0;
    *(&v190[1] + 4) = -1;
    *(&v190[2] + 4) = -1;
    do
    {
      v10 = &v190[v9];
      *(v10 + 14) = 0x7FFF;
      *(v10 + 30) = -1;
      *(v10 + 33) = -1;
      v10[5] = 0xFFFFFFFF00000004;
      v9 += 3;
      *(v10 + 48) = -1;
    }

    while (v9 != 48);
    v190[52] = -1;
    LODWORD(v190[53]) = 33619967;
    WORD2(v190[53]) = -1;
    HIDWORD(v190[56]) = -1;
    LOBYTE(v190[57]) = -1;
    memset(&v190[54], 255, 17);
    BYTE4(v190[57]) = -1;
    *(&v190[58] + 7) = -1;
    v190[58] = -1;
    v11 = (&v190[59] + 4);
    LODWORD(v190[61]) = -1;
    *(&v190[59] + 4) = -1;
    *(&v190[60] + 3) = -1;
    BYTE4(v190[61]) = 0;
    *(&v190[61] + 6) = -1;
    BYTE2(v190[62]) = -1;
    BYTE4(v190[62]) = 0;
    LODWORD(v190[63]) = -1;
    WORD2(v190[63]) = -1;
    LOBYTE(v190[64]) = 0;
    WORD1(v190[64]) = -1;
    BYTE4(v190[64]) = -1;
    LODWORD(v190[65]) = 0;
    BYTE4(v190[65]) = 0;
    HIDWORD(v190[51]) = 0;
    LODWORD(v190[1]) = 0;
    if (!v3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v41 = mach_continuous_time();
        v42 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx Meas with Estimate Rep\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 513);
        LbsOsaTrace_WriteLog(0x18u, v188, v42, 0, 1);
      }

      LODWORD(v190[0]) = -2;
      v43 = *(v4 + 296);
      *__str = MEMORY[0x29EDCA5F8];
      v183 = 1174405120;
      v184 = ___ZN4gnss15GnssAdaptDevice41Ga10_28SendMeasurementsReportWithEstimateEPK15s_gnsCP_MeasRes_block_invoke;
      v185 = &__block_descriptor_tmp_125;
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v186, v191);
      memcpy(v187, v190, sizeof(v187));
      dispatch_async(v43, __str);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v44 = mach_continuous_time();
        v45 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate");
        LbsOsaTrace_WriteLog(0x18u, v188, v45, 5, 1);
      }

LABEL_160:
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v186);
LABEL_161:
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v191);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v136 = mach_continuous_time();
        v137 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v136), "ADP", 68, "Ga10_01SendMeasurementsReport");
        LbsOsaTrace_WriteLog(0x18u, v188, v137, 5, 1);
      }

      return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v189);
    }

    v12 = *v3;
    LODWORD(v190[0]) = 0;
    LODWORD(v190[2]) = v12;
    BYTE4(v190[65]) = *(v3 + 36);
    v139 = 0xFFFFFFFF00000000;
    v140 = -1;
    v141 = 0;
    memset(v143, 0, sizeof(v143));
    v142 = 0;
    v144 = 0xFFFFFFFF00000000;
    v145 = 0;
    v146 = -1;
    v147 = 0;
    v148 = -1;
    v149 = 0;
    v150 = xmmword_2997286D0;
    v151 = 0;
    memset(v152, 0, sizeof(v152));
    v153 = -1;
    v154 = 0;
    v155 = 0;
    v156 = -1;
    v157 = 0;
    v158 = -1;
    v159 = -1;
    *&v160[7] = -1;
    *(&v160[3] + 1) = -1;
    *v160 = -1;
    *&v160[11] = 0x7FFFFFFFLL;
    v161 = 0;
    v162 = -1;
    v163 = -COERCE_DOUBLE(0x8000000080000000);
    v164 = 0;
    v165 = 0;
    if (gnss::GnssAdaptDevice::Ga11_23GetCPSession(*(v4 + 128), *(v4 + 136), v12, &v139))
    {
      HIDWORD(v190[1]) = HIDWORD(v144);
      v13 = HIBYTE(v165);
      if (HIBYTE(v165) != 1)
      {
        v13 = 2;
      }

      LODWORD(v190[65]) = v13;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(v188, 0x410uLL);
      v46 = mach_continuous_time();
      v47 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 2052, LODWORD(v190[2]));
      LbsOsaTrace_WriteLog(0x18u, v188, v47, 0, 1);
    }

    if ((v165 & 1) == 0)
    {
      if (v3[8] == 1)
      {
        if (v3[4])
        {
          BYTE4(v190[0]) |= 1u;
          gnss::GnssAdaptDevice::Ga10_00ProcessGPSMeasurements(v3, &v190[2] + 4, v190[1]);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v75 = mach_continuous_time();
        v76 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx Not enough Satellites,Err status,%u\n", (*&g_MacClockTicksToMsRelation * v75), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 769, *(v3 + 32));
        LbsOsaTrace_WriteLog(0x18u, v188, v76, 0, 1);
      }
    }

    if (v3[41303] != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v57 = mach_continuous_time();
        v58 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx Not enough Satellites,Err status,%u\n", (*&g_MacClockTicksToMsRelation * v57), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 769, *(v3 + 165212));
        LbsOsaTrace_WriteLog(0x18u, v188, v58, 0, 1);
      }

      goto LABEL_135;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(v188, 0x410uLL);
      v48 = mach_continuous_time();
      v49 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: DBH Pos Avlbl\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 73, "Ga10_28SendMeasurementsReportWithEstimate");
      LbsOsaTrace_WriteLog(0x18u, v188, v49, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
    {
      bzero(v188, 0x410uLL);
      v50 = mach_continuous_time();
      v51 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: GAD Lat,%u,Long,%d,Sign of Lat,%u,Altitude,%u,Alt Unc,%u, Semi Major,%u, SemiMinor,%u,AxisBearing,%u,Dir of Alt,%u,ShapeType,%u,VelocityType,%u\n", (*&g_MacClockTicksToMsRelation * v50), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate", v3[41307], v3[41308], v3[41306], *(v3 + 82618), *(v3 + 165248), *(v3 + 165238), *(v3 + 165239), *(v3 + 165240), v3[41311], v3[41305], v3[41315]);
      LbsOsaTrace_WriteLog(0x18u, v188, v51, 5, 1);
    }

    BYTE4(v190[0]) |= 2u;
    v52 = v3[41307];
    if (v52 >> 23)
    {
      v56.f64[0] = INFINITY;
    }

    else
    {
      v53 = 90 * v52;
      v54 = vcvtd_n_f64_u32(v53, 0x17uLL);
      v55 = -(v53 * 0.00000011920929);
      if (v3[41306] != 2)
      {
        v55 = v54;
      }

      v56.f64[0] = v55 * 33554432.0;
    }

    v70 = v3[41308];
    if ((v70 + 0x800000) >> 24)
    {
      v71 = INFINITY;
    }

    else
    {
      if ((v70 & 0x800000) != 0)
      {
        v70 |= 0xFF000000;
      }

      v71 = v70 * 360.0 * 0.0000000596046448 * 67108864.0;
    }

    v56.f64[1] = v71;
    *&v56.f64[0] = vand_s8(vmovn_s64(vcvtq_s64_f64(vdivq_f64(v56, xmmword_299760F90))), 0x3FFFFFF01FFFFFFLL);
    *(&v190[59] + 4) = *&v56.f64[0];
    LOBYTE(v56.f64[0]) = *(v3 + 165240);
    v56.f64[0] = *&v56.f64[0] / 11.25;
    BYTE4(v190[60]) = v56.f64[0];
    v73 = v3[41305];
    if (v73 == 16 || v73 == 8)
    {
      if (v3[41311] == 2)
      {
        v74 = *(v3 + 82618);
        if (v74 >= 0x1F5)
        {
          LOBYTE(v190[64]) = 0;
          goto LABEL_98;
        }

        LOBYTE(v190[64]) = 1;
        v77 = 500 - v74;
      }

      else
      {
        LOBYTE(v190[64]) = 1;
        v77 = *(v3 + 82618) + 500;
      }

      WORD1(v190[64]) = v77;
      LOBYTE(v56.f64[0]) = *(v3 + 165248);
      v78 = pow(1.025, *&v56.f64[0]);
      BYTE4(v190[64]) = gnss::GnssAdaptDevice::Ga10_27GetCDMAKValueForUncertanity(((v78 + -1.0) * 45.0));
    }

LABEL_98:
    v79 = *(v3 + 165238);
    v80 = &loc_299728000;
    if (v79 != 255)
    {
      v11 = ((pow(1.1, v79) + -1.0) * 10.0);
    }

    v81 = *(v3 + 165239);
    if (v81 != 255)
    {
      v80 = ((pow(1.1, v81) + -1.0) * 10.0);
    }

    BYTE5(v190[60]) = gnss::GnssAdaptDevice::Ga10_27GetCDMAKValueForUncertanity(v11);
    BYTE6(v190[60]) = gnss::GnssAdaptDevice::Ga10_27GetCDMAKValueForUncertanity(v80);
    v82 = v3[41304];
    if (v82 == 1)
    {
      LODWORD(v190[61]) = 0;
    }

    else if (v82 == 2)
    {
      LODWORD(v190[61]) = 1;
    }

    else
    {
      LODWORD(v190[61]) = -1;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v83 = mach_continuous_time();
        v84 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx Fix Type,%u\n", (*&g_MacClockTicksToMsRelation * v83), "ADP", 87, "Ga10_28SendMeasurementsReportWithEstimate", 515, v3[41304]);
        LbsOsaTrace_WriteLog(0x18u, v188, v84, 2, 1);
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
    {
      bzero(v188, 0x410uLL);
      v86 = mach_continuous_time();
      v87 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: 3GPP2 Lat,%u,Long,%d,Altitude,%u,Alt Unc,%u, locUncA,%u, locUncP,%u,AxisBearing,%u,Alt included,%u\n", (*&g_MacClockTicksToMsRelation * v86), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate", HIDWORD(v190[59]), LODWORD(v190[60]), WORD1(v190[64]), BYTE4(v190[64]), BYTE5(v190[60]), BYTE6(v190[60]), BYTE4(v190[60]), LOBYTE(v190[64]));
      LbsOsaTrace_WriteLog(0x18u, v188, v87, 5, 1);
    }

    v88 = v3[41315];
    if (v88 <= 1)
    {
      if (!v88)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(v188, 0x410uLL);
          v103 = mach_continuous_time();
          v104 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: VelInfo not avlbl\n", (*&g_MacClockTicksToMsRelation * v103), "ADP", 73, "Ga10_28SendMeasurementsReportWithEstimate");
          LbsOsaTrace_WriteLog(0x18u, v188, v104, 4, 1);
        }

        goto LABEL_135;
      }

      if (v88 != 1)
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v88 == 2)
      {
LABEL_114:
        LOWORD(v85) = *(v3 + 82632);
        BYTE4(v190[61]) = 1;
        LOWORD(v190[62]) = (v85 * 360.0 / 1023.0);
        v89 = *(v3 + 82633);
        v90 = vcvtd_n_s64_f64(v89 * 0.277778, 2uLL);
        if (v89 == 0xFFFF)
        {
          v91 = -1;
        }

        else
        {
          v91 = v90;
        }

        HIWORD(v190[61]) = v91;
        v92 = *(v3 + 82635);
        if (v92 == 0xFFFF)
        {
          v93 = -1;
        }

        else
        {
          v93 = (v92 * 0.277778 + v92 * 0.277778);
        }

        BYTE2(v190[62]) = v93;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
        {
          bzero(v188, 0x410uLL);
          v94 = mach_continuous_time();
          v95 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: GAD : Bearing,%u,HSpeed,%u,VSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v94), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate", *(v3 + 82632), *(v3 + 82633), *(v3 + 82635));
          LbsOsaTrace_WriteLog(0x18u, v188, v95, 5, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
        {
          bzero(v188, 0x410uLL);
          v96 = mach_continuous_time();
          v97 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: 3GPP2 : Bearing,%u,HSpeed,%u,VSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v96), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate", LOWORD(v190[62]), HIWORD(v190[61]), BYTE2(v190[62]));
          LbsOsaTrace_WriteLog(0x18u, v188, v97, 5, 1);
        }

LABEL_135:
        v107 = *(v4 + 296);
        *__str = MEMORY[0x29EDCA5F8];
        v183 = 1174405120;
        v184 = ___ZN4gnss15GnssAdaptDevice41Ga10_28SendMeasurementsReportWithEstimateEPK15s_gnsCP_MeasRes_block_invoke_136;
        v185 = &__block_descriptor_tmp_140;
        std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v186, v191);
        memcpy(v187, v190, sizeof(v187));
        dispatch_async(v107, __str);
        *&v108 = 0;
        v109 = v3[41303];
        *v166 = 0xFFFFFFFF00000000;
        if (v109 == 9)
        {
          v110 = 3;
        }

        else
        {
          v110 = 19;
        }

        *&v166[8] = -1;
        *&v166[12] = 0;
        *(&v108 + 1) = 0;
        if (v109 == 1)
        {
          v111 = 2;
        }

        else
        {
          v111 = v110;
        }

        *&v166[20] = v108;
        *&v166[35] = 0;
        *&v166[40] = 0xFFFFFFFF00000000;
        LOBYTE(v167) = 0;
        *(&v167 + 4) = -1;
        BYTE12(v167) = 0;
        *&v173[12] = -1;
        *&v173[4] = -1;
        v173[8] = -1;
        *&v173[20] = 0x7FFFFFFFLL;
        v173[28] = 0;
        *&v173[30] = -1;
        *&v174 = -COERCE_DOUBLE(0x8000000080000000);
        v175 = 0;
        HIDWORD(v174) = 0;
        if (gnss::GnssAdaptDevice::Ga11_23GetCPSession(*(v4 + 128), *(v4 + 136), *v3, v166))
        {
          LODWORD(v168) = *v3;
          BYTE4(v168) = *(v3 + 4);
          BYTE5(v168) = *(v3 + 165204);
          *(&v168 + 1) = *(v3 + 1);
          v112 = *(v3 + 41306);
          v169 = *(v3 + 41302);
          v170 = v112;
          v171 = *(v3 + 41310);
          v113 = v3[41315];
          LODWORD(v172) = v3[41314];
          DWORD1(v172) = v113;
          *(&v172 + 1) = *(v3 + 20658);
          *v173 = v3[41318];
          v114 = *&v166[40];
          DWORD2(v174) = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v114;
          v115 = *v3;
          v116 = *(v4 + 128);
          v117 = *(v4 + 136) - v116;
          if (v117)
          {
            v118 = v117 >> 2;
            v119 = 0x7D6343EB1A1F58D1 * v118;
            if ((0x7D6343EB1A1F58D1 * v118) <= 1)
            {
              v120 = 1;
            }

            else
            {
              v120 = 0x7D6343EB1A1F58D1 * v118;
            }

            if (*(v116 + 52) == v115)
            {
              v121 = 0;
LABEL_148:
              if (v121 < v119)
              {
                v122 = v167;
                v123 = v116 + 196 * v121;
                *(v123 + 32) = *&v166[32];
                *(v123 + 48) = v122;
                v124 = v171;
                *(v123 + 96) = v170;
                *(v123 + 112) = v124;
                v125 = v169;
                *(v123 + 64) = v168;
                *(v123 + 80) = v125;
                *(v123 + 192) = v175;
                v126 = v174;
                *(v123 + 160) = *&v173[16];
                *(v123 + 176) = v126;
                v127 = *v173;
                *(v123 + 128) = v172;
                *(v123 + 144) = v127;
                v128 = *&v166[16];
                *v123 = *v166;
                *(v123 + 16) = v128;
                v115 = *v3;
              }
            }

            else
            {
              v121 = 0;
              v131 = (v116 + 248);
              v132 = v120 - 1;
              while (v132 != v121)
              {
                v133 = *v131;
                v131 += 49;
                ++v121;
                if (v133 == v115)
                {
                  if (v121 < v119)
                  {
                    goto LABEL_148;
                  }

                  break;
                }
              }
            }
          }

          gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v4, v115, 0, v111);
        }

        else
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(v188, 0x410uLL);
            v129 = mach_continuous_time();
            v130 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v129), "ADP", 69, "Ga10_29InvokeDBHSummaryReport", 2052, *v3);
            LbsOsaTrace_WriteLog(0x18u, v188, v130, 0, 1);
          }

          gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v4, *v3, 0, v111);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(v188, 0x410uLL);
          v134 = mach_continuous_time();
          v135 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v134), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate");
          LbsOsaTrace_WriteLog(0x18u, v188, v135, 5, 1);
        }

        goto LABEL_160;
      }

      if (v88 != 4)
      {
        if (v88 == 8)
        {
          goto LABEL_114;
        }

LABEL_133:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(v188, 0x410uLL);
          v105 = mach_continuous_time();
          v106 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx Velocity type,%u\n", (*&g_MacClockTicksToMsRelation * v105), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 515, v3[41315]);
          LbsOsaTrace_WriteLog(0x18u, v188, v106, 0, 1);
        }

        goto LABEL_135;
      }
    }

    BYTE4(v190[61]) = 1;
    LOWORD(v85) = *(v3 + 82632);
    LOWORD(v190[62]) = (v85 * 360.0 / 1023.0);
    v98 = *(v3 + 82633);
    v99 = vcvtd_n_s64_f64(v98 * 0.277778, 2uLL);
    if (v98 == 0xFFFF)
    {
      v100 = -1;
    }

    else
    {
      v100 = v99;
    }

    HIWORD(v190[61]) = v100;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
    {
      bzero(v188, 0x410uLL);
      v101 = mach_continuous_time();
      v102 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Bearing,%u,HSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v101), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate", LOWORD(v190[62]), HIWORD(v190[61]));
      LbsOsaTrace_WriteLog(0x18u, v188, v102, 5, 1);
    }

    goto LABEL_135;
  }

  if (v189[3])
  {
    v14 = 0;
    LODWORD(v188[0]) = 0;
    BYTE4(v188[0]) = 0;
    memset(&v188[1], 255, 20);
    do
    {
      v15 = &v188[v14];
      *(v15 + 14) = 0x7FFF;
      *(v15 + 30) = -1;
      *(v15 + 33) = -1;
      v15[5] = 0xFFFFFFFF00000004;
      v14 += 3;
      *(v15 + 48) = -1;
    }

    while (v14 != 48);
    v16 = 0;
    HIDWORD(v188[51]) = 0;
    v188[52] = -1;
    LODWORD(v188[53]) = 33619967;
    WORD2(v188[53]) = -1;
    HIDWORD(v188[56]) = -1;
    *(&v188[58] + 7) = -1;
    LODWORD(v188[60]) = 4;
    LOBYTE(v188[57]) = -1;
    memset(&v188[54], 255, 17);
    BYTE4(v188[57]) = -1;
    v188[58] = -1;
    *(&v188[60] + 4) = -1;
    LODWORD(v188[62]) = 0;
    HIDWORD(v188[65]) = -1;
    v188[66] = -1;
    memset(&v188[63], 255, 18);
    LOBYTE(v188[67]) = -1;
    HIDWORD(v188[68]) = -1;
    v188[69] = -1;
    *(&v188[67] + 2) = -1;
    LOWORD(v188[70]) = -1;
    HIDWORD(v188[70]) = -1;
    LOWORD(v188[71]) = -1;
    LODWORD(v188[74]) = -1;
    *(&v188[71] + 4) = -1;
    *(&v188[72] + 4) = -1;
    WORD2(v188[73]) = -1;
    WORD2(v188[74]) = -129;
    LODWORD(v188[75]) = -1;
    LOBYTE(v188[76]) = -1;
    HIDWORD(v188[76]) = 5;
    LOWORD(v188[77]) = -1;
    BYTE2(v188[77]) = -1;
    do
    {
      v17 = &v188[v16];
      *(v17 + 155) = -32769;
      *(v17 + 624) = -1;
      *(&v188[v16 + 78] + 4) = 0xFF00000004;
      *(v17 + 318) = -1;
      *(v17 + 160) = -1;
      v16 += 3;
    }

    while (v16 != 96);
    BYTE4(v188[174]) = 0;
    LODWORD(v188[174]) = -1;
    LODWORD(v188[1]) = 0;
    if (!v3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v35 = mach_continuous_time();
        v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MSA Rep\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 69, "Ga10_01SendMeasurementsReport", 513);
        LbsOsaTrace_WriteLog(0x18u, __str, v36, 0, 1);
      }

      LODWORD(v188[0]) = -2;
      v37 = *(v4 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice29Ga10_01SendMeasurementsReportEPK15s_gnsCP_MeasRes_block_invoke;
      block[3] = &__block_descriptor_tmp_117_0;
      v38 = v180;
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v180, v189);
      memcpy(v181, v188, sizeof(v181));
      dispatch_async(v37, block);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v39 = mach_continuous_time();
        v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 68, "Ga10_01SendMeasurementsReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v40, 5, 1);
      }

      goto LABEL_81;
    }

    v18 = *v3;
    LODWORD(v188[2]) = *v3;
    v19 = *(v4 + 128);
    v20 = *(v4 + 136) - v19;
    if (v20)
    {
      v21 = 0x7D6343EB1A1F58D1 * (v20 >> 2);
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      if (*(v19 + 52) == v18)
      {
        v23 = 0;
LABEL_26:
        if (v23 < v21)
        {
          v24 = v19 + 196 * v23;
          v26 = *(v24 + 40);
          v25 = *(v24 + 44);
          *(*(v4 + 128) + 196 * v23 + 184) = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v26;
LABEL_67:
          HIDWORD(v188[1]) = v25;
          LODWORD(v188[174]) = 0;
          if (v3[8] == 1)
          {
            if (v3[4])
            {
              BYTE4(v188[0]) = 1;
              BYTE4(v188[174]) = *(v3 + 36);
              gnss::GnssAdaptDevice::Ga10_00ProcessGPSMeasurements(v3, &v188[2] + 4, v188[1]);
            }
          }

          else
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v62 = mach_continuous_time();
              v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Not enough Satellites,Err status,%u\n", (*&g_MacClockTicksToMsRelation * v62), "ADP", 69, "Ga10_01SendMeasurementsReport", 769, *(v3 + 32));
              LbsOsaTrace_WriteLog(0x18u, __str, v63, 0, 1);
            }

            LODWORD(v188[0]) = -4;
            BYTE4(v188[0]) |= 4u;
          }

          v64 = *(v4 + 296);
          v176[0] = MEMORY[0x29EDCA5F8];
          v176[1] = 1174405120;
          v176[2] = ___ZN4gnss15GnssAdaptDevice29Ga10_01SendMeasurementsReportEPK15s_gnsCP_MeasRes_block_invoke_119;
          v176[3] = &__block_descriptor_tmp_123;
          v38 = v177;
          std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v177, v189);
          memcpy(v178, v188, sizeof(v178));
          dispatch_async(v64, v176);
          v65 = v3[8];
          if (v65 == 9)
          {
            v66 = 3;
          }

          else
          {
            v66 = 18;
          }

          if (v65 == 1)
          {
            v67 = 2;
          }

          else
          {
            v67 = v66;
          }

          gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v4, LODWORD(v188[2]), 0, v67);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v68 = mach_continuous_time();
            v69 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v68), "ADP", 68, "Ga10_01SendMeasurementsReport");
            LbsOsaTrace_WriteLog(0x18u, __str, v69, 5, 1);
          }

LABEL_81:
          std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v38);
          return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v189);
        }
      }

      else
      {
        v23 = 0;
        v59 = (v19 + 248);
        v60 = v22 - 1;
        while (v60 != v23)
        {
          v61 = *v59;
          v59 += 49;
          ++v23;
          if (v61 == v18)
          {
            if (v23 < v21)
            {
              goto LABEL_26;
            }

            break;
          }
        }
      }
    }

    v25 = -1;
    goto LABEL_67;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(v188, 0x410uLL);
    v27 = mach_continuous_time();
    v28 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx MeasRep\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "Ga10_01SendMeasurementsReport", 258);
    LbsOsaTrace_WriteLog(0x18u, v188, v28, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(v188, 0x410uLL);
    v29 = mach_continuous_time();
    v30 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga10_01SendMeasurementsReport");
    LbsOsaTrace_WriteLog(0x18u, v188, v30, 5, 1);
  }

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v189);
}

void sub_29969259C(_Unwind_Exception *a1)
{
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v1 - 136);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](&STACK[0x16F8]);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice29Ga10_01SendMeasurementsReportEPK15s_gnsCP_MeasRes_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);
  v3 = a1 + 64;
  v4 = *(a1 + 56);

  return v2(v4, v3);
}

double ___ZN4gnss15GnssAdaptDevice29Ga10_01SendMeasurementsReportEPK15s_gnsCP_MeasRes_block_invoke_119(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = (*(*v1 + 48))(*(a1 + 56), a1 + 64);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasRep Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga10_01SendMeasurementsReport_block_invoke", v2);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 4, 1);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice41Ga10_28SendMeasurementsReportWithEstimateEPK15s_gnsCP_MeasRes_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);
  v3 = a1 + 64;
  v4 = *(a1 + 56);

  return v2(v4, v3);
}

uint64_t __copy_helper_block_e8_32c94_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane29MeasurementReportWithEstimateEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c94_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane29MeasurementReportWithEstimateEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v1);
}

uint64_t gnss::GnssAdaptDevice::Ga11_23GetCPSession(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a2 != a1)
  {
    v4 = 0x7D6343EB1A1F58D1 * ((a2 - a1) >> 2);
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 0x7D6343EB1A1F58D1 * ((a2 - a1) >> 2);
    }

    if (*(a1 + 52) == a3)
    {
      v6 = 0;
LABEL_7:
      if (v6 < v4)
      {
        v7 = a1 + 196 * v6;
        v41 = *(v7 + 4);
        v42 = *(v7 + 8);
        *v46 = *(v7 + 10);
        *&v46[13] = *(v7 + 23);
        v8 = *(v7 + 39);
        v9 = *(v7 + 48);
        v39 = *(v7 + 49);
        v40 = *(v7 + 51);
        v10 = *(v7 + 60);
        v38 = *(v7 + 63);
        v37 = *(v7 + 61);
        v11 = *(v7 + 64);
        v12 = *(v7 + 68);
        *v45 = *(v7 + 88);
        *&v45[14] = *(v7 + 102);
        v13 = *(v7 + 110);
        v14 = *(v7 + 112);
        v35 = *(v7 + 113);
        v36 = *(v7 + 115);
        v15 = *(v7 + 116);
        v16 = *(v7 + 120);
        v17 = *(v7 + 136);
        v18 = *(v7 + 140);
        v44 = *(v7 + 149);
        v43 = *(v7 + 141);
        v34 = *(v7 + 155);
        v33 = *(v7 + 153);
        v19 = *(v7 + 156);
        v20 = *(v7 + 172);
        v32 = *(v7 + 192);
        v31 = *(v7 + 184);
        *a4 = *v7;
        v21 = *(v7 + 176);
        v22 = *(v7 + 164);
        v23 = *(v7 + 128);
        v24 = *(v7 + 72);
        v25 = *(v7 + 52);
        v26 = *(v7 + 40);
        *(a4 + 8) = v42;
        *(a4 + 4) = v41;
        *(a4 + 10) = *v46;
        *(a4 + 23) = *&v46[13];
        *(a4 + 39) = v8;
        *(a4 + 40) = v26;
        *(a4 + 48) = v9;
        *(a4 + 51) = v40;
        *(a4 + 49) = v39;
        *(a4 + 52) = v25;
        *(a4 + 60) = v10;
        *(a4 + 63) = v38;
        *(a4 + 61) = v37;
        *(a4 + 64) = v11;
        *(a4 + 68) = v12;
        *(a4 + 72) = v24;
        *(a4 + 102) = *&v45[14];
        *(a4 + 88) = *v45;
        *(a4 + 110) = v13;
        *(a4 + 112) = v14;
        *(a4 + 115) = v36;
        *(a4 + 113) = v35;
        *(a4 + 116) = v15;
        *(a4 + 120) = v16;
        *(a4 + 128) = v23;
        *(a4 + 136) = v17;
        *(a4 + 140) = v18;
        *(a4 + 149) = v44;
        *(a4 + 141) = v43;
        *(a4 + 155) = v34;
        *(a4 + 153) = v33;
        *(a4 + 156) = v19;
        *(a4 + 164) = v22;
        *(a4 + 172) = v20;
        *(a4 + 176) = v21;
        *(a4 + 192) = v32;
        result = 1;
        *(a4 + 184) = v31;
        return result;
      }
    }

    else
    {
      v6 = 0;
      v28 = (a1 + 248);
      v29 = v5 - 1;
      while (v29 != v6)
      {
        v30 = *v28;
        v28 += 49;
        ++v6;
        if (v30 == a3)
        {
          if (v6 < v4)
          {
            goto LABEL_7;
          }

          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t gnss::GnssAdaptDevice::Ga10_27GetCDMAKValueForUncertanity(gnss::GnssAdaptDevice *this)
{
  v1 = this;
  v2 = 0;
  v8 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v3 = dbl_299760FE0[v2];
    if (v3 > this)
    {
      break;
    }

    if (++v2 == 30)
    {
      LOBYTE(v2) = 31;
      return v2;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GADUncInMts,%u,CDMAK,%d,PosUncMts,%f\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga10_27GetCDMAKValueForUncertanity", v1, v2, v3);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 4, 1);
  }

  return v2;
}

double ___ZN4gnss15GnssAdaptDevice41Ga10_28SendMeasurementsReportWithEstimateEPK15s_gnsCP_MeasRes_block_invoke_136(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = (*(*v1 + 48))(*(a1 + 56), a1 + 64);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasRepWithEstimate Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga10_28SendMeasurementsReportWithEstimate_block_invoke", v2);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 4, 1);
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c79_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane14PositionReportEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c79_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane14PositionReportEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v1);
}

uint64_t gnss::GnssAdaptDevice::Ga10_17InvokePVTMCbForE911(uint64_t a1, int *a2)
{
  v47 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v45, a1 + 312);
  if (a2)
  {
    if (v46)
    {
      v4 = *(a2 + 76);
      v5 = a2[18];
      v6 = *(a2 + 7);
      v7 = a2[13];
      v8 = *(a2 + 48);
      v9 = *(a2 + 23);
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[27];
      v13 = *(a2 + 23);
      v14 = *(a1 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice26Ga10_17InvokePVTMCbForE911EPK15s_gnsCP_PosnRes_block_invoke;
      block[3] = &__block_descriptor_tmp_306;
      block[4] = a1;
      v24[8] = v10;
      v24[9] = v11;
      v15 = *(a2 + 2);
      *&v26[14] = *(a2 + 38);
      v16 = *(a2 + 6);
      v25 = v15;
      *v26 = v16;
      v27 = v9;
      v28 = v8;
      v17 = *(a2 + 49);
      v30 = *(a2 + 51);
      v29 = v17;
      v31 = v7;
      v32 = v6;
      v33 = *(a2 + 8);
      v34 = v5;
      v35 = v4;
      v36 = *(a2 + 77);
      v37 = *(a2 + 85);
      v38 = *(a2 + 89);
      v39 = *(a2 + 91);
      v40 = v13;
      v41 = *(a2 + 25);
      v42 = v12;
      v43 = *(a2 + 14);
      std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v24, v45);
      dispatch_async(v14, block);
      std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v24);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM Cb\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 87, "Ga10_17InvokePVTMCbForE911", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 2, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx p_GnsPosnFix\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga10_17InvokePVTMCbForE911", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
  }

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v45);
}

double ___ZN4gnss15GnssAdaptDevice25Ga10_02SendPositionReportEPK15s_gnsCP_PosnRes_block_invoke_172(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v1 + 48))(*(a1 + 56), a1 + 64) == 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fw Accepted MSB Rep\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga10_02SendPositionReport_block_invoke");
    v5 = 4;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Fw MSB Rep\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga10_02SendPositionReport_block_invoke", 770);
    v5 = 0;
  }

  LbsOsaTrace_WriteLog(0x18u, __str, v4, v5, 1);
  return result;
}

double ___ZN4gnss15GnssAdaptDevice23Ga10_03SendAidingReportEP14s_gnsCP_AidReq_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v1 + 48))(*(a1 + 56), a1 + 64) == 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FWAccepted AidReq\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga10_03SendAidingReport_block_invoke");
    v5 = 4;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FW rejected AidReq\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga10_03SendAidingReport_block_invoke", 515);
    v5 = 0;
  }

  LbsOsaTrace_WriteLog(0x18u, __str, v4, v5, 1);
  return result;
}

uint64_t __copy_helper_block_e8_32c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);

  return gnss::GnssAdaptDevice::Ga10_01SendMeasurementsReport(v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v13, v1 + 760);
  v12 = 0;
  if (v14)
  {
    *&__src[1] = -1;
    WORD4(__src[1]) = 0;
    BYTE10(__src[1]) = -1;
    *(&__src[1] + 12) = -1;
    *(&__src[2] + 3) = -1;
    *(&__src[2] + 12) = 0xFFFFFFFF00000004;
    WORD2(__src[3]) = -1;
    BYTE6(__src[3]) = -1;
    DWORD2(__src[3]) = -1;
    WORD6(__src[3]) = 0;
    *&__src[4] = -NAN;
    DWORD2(__src[4]) = 0x7FFFFFFF;
    BYTE12(__src[4]) = -1;
    __src[5] = xmmword_299760FA0;
    *&__src[6] = 0xFFFFFFFF7FFFFFFFLL;
    *(&__src[6] + 7) = -1;
    *(&__src[6] + 12) = 0x8000000080000000;
    WORD4(__src[7]) = -1;
    DWORD1(__src[7]) = -1;
    *&v2 = 0x8000000080000000;
    *(&v2 + 1) = 0x8000000080000000;
    *(&__src[7] + 12) = v2;
    WORD6(__src[8]) = -1;
    LOBYTE(__src[9]) = -1;
    memset_pattern16(&__src[9] + 4, &unk_299760FD0, 0x78uLL);
    BYTE12(__src[16]) = -1;
    LODWORD(__src[17]) = 255;
    *(&__src[18] + 4) = -1;
    *(&__src[17] + 4) = -1;
    *(&__src[17] + 11) = -1;
    HIDWORD(__src[18]) = 0;
    *&__src[19] = 0;
    *&__src[0] = 4294967294;
    *(&__src[0] + 1) = 0xFFFFFFFF00000000;
    v3 = *(v1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_3;
    block[3] = &__block_descriptor_tmp_188;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v8, v13);
    memcpy(v9, __src, sizeof(v9));
    dispatch_async(v3, block);
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v8);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__src, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__src, 0x40FuLL, "%10u %s%c %s: #%04hx PosRep\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse_block_invoke_2", 258);
    LbsOsaTrace_WriteLog(0x18u, __src, v5, 0, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v11);
  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v13);
}

void sub_29969387C(_Unwind_Exception *a1)
{
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v1 - 120);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v1 - 88);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);
  v3 = a1 + 64;
  v4 = *(a1 + 56);

  return v2(v4, v3);
}

double ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_190(uint64_t a1)
{
  __src[237] = *MEMORY[0x29EDCA608];
  if (*(a1 + 64))
  {
    v2 = *(a1 + 32);
    LODWORD(__src[0]) = 0;
    BYTE4(__src[0]) = 0;
    __src[1] = -1;
    LODWORD(__src[2]) = -1;
    WORD2(__src[2]) = 0;
    *(&__src[2] + 6) = -1;
    BYTE2(__src[3]) = -1;
    *(&__src[3] + 3) = 0;
    *(&__src[4] + 1) = 0;
    BYTE1(__src[5]) = -1;
    *(&__src[5] + 2) = 0;
    __src[6] = 0;
    v3 = &__src[14] + 4;
    v4 = &__src[33];
    LOBYTE(__src[7]) = -1;
    v5 = 44;
    BYTE4(__src[7]) = 0;
    do
    {
      v6 = &__src[7] + v5 + 4;
      *v6 = 5;
      *(v6 + 2) = 0;
      v6[6] = -1;
      v7 = v3;
      v8 = 120;
      do
      {
        *(v7 - 4) = -1;
        *v7 = -1;
        v7 += 2;
        v8 -= 8;
      }

      while (v8);
      *(v6 + 32) = -1;
      *(v6 + 66) = -1;
      *(v6 + 134) = -256;
      *(v6 + 138) = 0;
      *(v6 + 18) = 0;
      *(v6 + 38) = -1;
      v9 = v4;
      v10 = 60;
      v6[156] = -1;
      do
      {
        *(v9 - 2) = -1;
        *v9 = -1;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      *(v6 + 218) = -1;
      v5 += 224;
      v3 += 224;
      v4 += 28;
    }

    while (v5 != 1836);
    __src[1] = 0xFFFFFFFF00000000;
    LODWORD(__src[0]) = -2;
    v11 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2_192;
    block[3] = &__block_descriptor_tmp_195;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v16, a1 + 40);
    memcpy(v17, __src, sizeof(v17));
    dispatch_async(v11, block);
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v16);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__src, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__src, 0x40FuLL, "%10u %s%c %s: #%04hx AidRep\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __src, v14, 0, 1);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2_192(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);
  v3 = a1 + 64;
  v4 = *(a1 + 56);

  return v2(v4, v3);
}

uint64_t __copy_helper_block_e8_40c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_40c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_199(uint64_t a1)
{
  v1 = *(a1 + 32);

  return gnss::GnssAdaptDevice::Ga10_01SendMeasurementsReport(v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2_201(uint64_t a1)
{
  v149 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga10_02SendPositionReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v146, v2 + 760);
  if (!v147)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosRep\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga10_02SendPositionReport", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "Ga10_02SendPositionReport");
      LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
    }

    return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v146);
  }

  *__src = 0;
  *&__src[16] = -1;
  *&__src[24] = 0;
  __src[26] = -1;
  *&__src[28] = -1;
  *&__src[35] = -1;
  *&__src[44] = 0xFFFFFFFF00000004;
  *&__src[52] = -1;
  __src[54] = -1;
  v5 = -1;
  *&__src[56] = -1;
  *&__src[60] = 0;
  *&__src[64] = -NAN;
  *&__src[72] = 0x7FFFFFFF;
  __src[76] = -1;
  *&__src[80] = xmmword_299760FA0;
  *&__src[96] = 0xFFFFFFFF7FFFFFFFLL;
  *&__src[103] = -1;
  *&__src[108] = 0x8000000080000000;
  *&__src[116] = -1;
  *&__src[120] = -1;
  *&v6 = 0x8000000080000000;
  *(&v6 + 1) = 0x8000000080000000;
  *&__src[124] = v6;
  *&__src[140] = -1;
  __src[144] = -1;
  memset_pattern16(&__src[148], &unk_299760FD0, 0x78uLL);
  __src[268] = -1;
  *&__src[272] = 255;
  *&__src[292] = -1;
  *&__src[276] = -1;
  *&__src[283] = -1;
  *&__src[300] = 0;
  *&__src[304] = 0;
  *&__src[8] = 0xFFFFFFFF00000000;
  v7 = *(v2 + 128);
  v8 = *(v2 + 136) - v7;
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = 0x7D6343EB1A1F58D1 * (v8 >> 2);
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    if (*(v7 + 52) == v9)
    {
      v12 = 0;
LABEL_10:
      if (v12 < v10)
      {
        v5 = *(v7 + 196 * v12 + 44);
        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
      v17 = (v7 + 248);
      v18 = v11 - 1;
      while (v18 != v12)
      {
        v19 = *v17;
        v17 += 49;
        ++v12;
        if (v19 == v9)
        {
          if (v12 < v10)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    v5 = -1;
  }

LABEL_21:
  *&__src[12] = v5;
  if (*(a1 + 60) == 1)
  {
    gnss::GnssAdaptDevice::Ga10_17InvokePVTMCbForE911(v2, (a1 + 40));
  }

  if (!*(a1 + 44))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v28 = mach_continuous_time();
      v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "Ga10_02SendPositionReport");
      LbsOsaTrace_WriteLog(0x18u, __str, v29, 5, 1);
    }

    return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v146);
  }

  *(v2 + 1024) = 0;
  *&__src[16] = *(a1 + 40);
  if (*(a1 + 60) != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Not enough Satellites,Err status,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "Ga10_02SendPositionReport", 769, *(a1 + 60));
      LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
    }

    *__src = -4;
    *&__src[4] |= 8u;
    goto LABEL_172;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Pos Avlbl\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "Ga10_02SendPositionReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v21, 4, 1);
  }

  *&__src[20] = *(a1 + 124);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS ToW,%u\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 73, "Ga10_02SendPositionReport", *&__src[20]);
    LbsOsaTrace_WriteLog(0x18u, __str, v23, 4, 1);
  }

  if (*(a1 + 128) != 255)
  {
    __src[26] = *(a1 + 128);
  }

  if (*&__src[12] == 2 && *(a1 + 144) == 1)
  {
    v24 = *(a1 + 132);
    *&__src[32] = 1;
    *&__src[36] = v24;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS ToD,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 73, "Ga10_02SendPositionReport", *&__src[36]);
      LbsOsaTrace_WriteLog(0x18u, __str, v26, 4, 1);
    }

    if (*(a1 + 136) != 0xFFFF)
    {
      *&__src[40] = *(a1 + 136);
    }

    if (*(a1 + 138) != 255)
    {
      __src[42] = *(a1 + 138);
    }
  }

  v27 = *(a1 + 64);
  if (v27 == 2)
  {
    *&__src[28] = 1;
  }

  else if (v27 == 1)
  {
    *&__src[28] = 0;
  }

  else
  {
    *&__src[28] = -1;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Fix Type,%u\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 87, "Ga10_02SendPositionReport", 515, *(a1 + 64));
      LbsOsaTrace_WriteLog(0x18u, __str, v33, 2, 1);
    }
  }

  v34 = *(a1 + 68);
  if (v34 <= 3)
  {
    switch(v34)
    {
      case 0:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v54 = mach_continuous_time();
          v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Not avlbl\n", (*&g_MacClockTicksToMsRelation * v54), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v55, 4, 1);
        }

        goto LABEL_103;
      case 1:
        v72 = *(a1 + 72);
        v71 = *(a1 + 76);
        *&__src[64] = 0;
        *&__src[124] = v71;
        if (v72 == 2)
        {
          *&__src[124] = v71 | 0x800000;
        }

        *&__src[128] = *(a1 + 80);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v73 = mach_continuous_time();
          v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid Pt\n", (*&g_MacClockTicksToMsRelation * v73), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v74, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v75 = mach_continuous_time();
          v76 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d\n", (*&g_MacClockTicksToMsRelation * v75), "ADP", 68, "Ga10_02SendPositionReport", *&__src[124], *&__src[128]);
          LbsOsaTrace_WriteLog(0x18u, __str, v76, 5, 1);
        }

        goto LABEL_103;
      case 2:
        v43 = *(a1 + 72);
        v42 = *(a1 + 76);
        *&__src[64] = 1;
        *&__src[68] = v42;
        if (v43 == 2)
        {
          *&__src[68] = v42 | 0x800000;
        }

        *&__src[72] = *(a1 + 80);
        __src[76] = *(a1 + 86);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v44 = mach_continuous_time();
          v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid Pt Uncert Circle\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v45, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v46 = mach_continuous_time();
          v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d,UncRad,%u\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 68, "Ga10_02SendPositionReport", *&__src[68], *&__src[72], __src[76]);
          LbsOsaTrace_WriteLog(0x18u, __str, v47, 5, 1);
        }

        goto LABEL_103;
    }

LABEL_81:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v56 = mach_continuous_time();
      v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape type,%u\n", (*&g_MacClockTicksToMsRelation * v56), "ADP", 69, "Ga10_02SendPositionReport", 515, *(a1 + 68));
      LbsOsaTrace_WriteLog(0x18u, __str, v57, 0, 1);
    }

    goto LABEL_103;
  }

  if (v34 > 15)
  {
    if (v34 == 16)
    {
      v65 = *(a1 + 72);
      v64 = *(a1 + 76);
      *&__src[64] = 9;
      *&__src[92] = v64;
      if (v65 == 2)
      {
        *&__src[92] = v64 | 0x800000;
      }

      *&__src[96] = *(a1 + 80);
      *&__src[102] = *(a1 + 86);
      __src[104] = *(a1 + 88) >> (*&__src[12] == 1);
      __src[106] = *(a1 + 97);
      v66 = *(a1 + 84);
      *&__src[100] = v66;
      if (*(a1 + 92) == 2)
      {
        *&__src[100] = v66 | 0x8000;
      }

      __src[105] = *(a1 + 96);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v67 = mach_continuous_time();
        v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid pt Alt & Unc Eclipse\n", (*&g_MacClockTicksToMsRelation * v67), "ADP", 73, "Ga10_02SendPositionReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v68, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v69 = mach_continuous_time();
        v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d,SemiMajAxis,%u,SemiMinAxis,%u,OrientAngle,%u,Conf,%u,Alt,%u,UncAlt,%u\n", (*&g_MacClockTicksToMsRelation * v69), "ADP", 68, "Ga10_02SendPositionReport", *&__src[92], *&__src[96], __src[102], __src[103], __src[104], __src[106], *&__src[100], __src[105]);
        LbsOsaTrace_WriteLog(0x18u, __str, v70, 5, 1);
      }

      goto LABEL_103;
    }

    if (v34 == 32)
    {
      v49 = *(a1 + 72);
      v48 = *(a1 + 76);
      *&__src[64] = 10;
      *&__src[108] = v48;
      if (v49 == 2)
      {
        *&__src[108] = v48 | 0x800000;
      }

      *&__src[112] = *(a1 + 80);
      *&__src[116] = *(a1 + 100);
      __src[120] = *(a1 + 98);
      __src[119] = *(a1 + 99);
      __src[118] = *(a1 + 86);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v50 = mach_continuous_time();
        v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid Arc\n", (*&g_MacClockTicksToMsRelation * v50), "ADP", 73, "Ga10_02SendPositionReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v51, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v52 = mach_continuous_time();
        v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d,InnerRad,%u,IncludedAngle,%u,offsetAngle,%u,UncRad,%u\n", (*&g_MacClockTicksToMsRelation * v52), "ADP", 68, "Ga10_02SendPositionReport", *&__src[108], *&__src[112], *&__src[116], __src[120], __src[119], __src[118]);
        LbsOsaTrace_WriteLog(0x18u, __str, v53, 5, 1);
      }

      goto LABEL_103;
    }

    goto LABEL_81;
  }

  if (v34 != 4)
  {
    if (v34 == 8)
    {
      v36 = *(a1 + 72);
      v35 = *(a1 + 76);
      *&__src[64] = 8;
      *&__src[132] = v35;
      if (v36 == 2)
      {
        *&__src[132] = v35 | 0x800000;
      }

      *&__src[136] = *(a1 + 80);
      v37 = *(a1 + 84);
      *&__src[140] = v37;
      if (*(a1 + 92) == 2)
      {
        *&__src[140] = v37 | 0x8000;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v38 = mach_continuous_time();
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid Pt Alt\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 73, "Ga10_02SendPositionReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v39, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v40 = mach_continuous_time();
        v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d,Alt,%u\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 68, "Ga10_02SendPositionReport", *&__src[132], *&__src[136], *&__src[140]);
        LbsOsaTrace_WriteLog(0x18u, __str, v41, 5, 1);
      }

      goto LABEL_103;
    }

    goto LABEL_81;
  }

  v59 = *(a1 + 72);
  v58 = *(a1 + 76);
  *&__src[64] = 3;
  *&__src[80] = v58;
  if (v59 == 2)
  {
    *&__src[80] = v58 | 0x800000;
  }

  *&__src[84] = *(a1 + 80);
  *&__src[88] = *(a1 + 86);
  __src[90] = *(a1 + 88) >> (*&__src[12] == 1);
  __src[91] = *(a1 + 97);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v60 = mach_continuous_time();
    v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid Pt Unc Elipse\n", (*&g_MacClockTicksToMsRelation * v60), "ADP", 73, "Ga10_02SendPositionReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v61, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v62 = mach_continuous_time();
    v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d,SemiMajAxis,%u,SemiMinAxis,%u,OrientAngle,%u,Conf,%u\n", (*&g_MacClockTicksToMsRelation * v62), "ADP", 68, "Ga10_02SendPositionReport", *&__src[80], *&__src[84], __src[88], __src[89], __src[90], __src[91]);
    LbsOsaTrace_WriteLog(0x18u, __str, v63, 5, 1);
  }

LABEL_103:
  v77 = *(a1 + 108);
  if (v77 <= 1)
  {
    if (v77)
    {
      if (v77 != 1)
      {
LABEL_141:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v96 = mach_continuous_time();
          v97 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Velocity type,%u\n", (*&g_MacClockTicksToMsRelation * v96), "ADP", 69, "Ga10_02SendPositionReport", 515, *(a1 + 108));
          LbsOsaTrace_WriteLog(0x18u, __str, v97, 0, 1);
        }

        goto LABEL_143;
      }

      *&__src[276] = *(a1 + 112);
      *&__src[272] = 0;
      *&__src[4] |= 4u;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v82 = mach_continuous_time();
        v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Vel Estimate is Hor\n", (*&g_MacClockTicksToMsRelation * v82), "ADP", 73, "Ga10_02SendPositionReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v83, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v84 = mach_continuous_time();
        v85 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bearing,%u,HSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v84), "ADP", 68, "Ga10_02SendPositionReport", *&__src[276], *&__src[278]);
        LbsOsaTrace_WriteLog(0x18u, __str, v85, 5, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v94 = mach_continuous_time();
      v95 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: VelInfo not avlbl\n", (*&g_MacClockTicksToMsRelation * v94), "ADP", 73, "Ga10_02SendPositionReport");
      LbsOsaTrace_WriteLog(0x18u, __str, v95, 4, 1);
    }
  }

  else
  {
    switch(v77)
    {
      case 2:
        *&__src[272] = 1;
        *&__src[280] = *(a1 + 112);
        if (*(a1 + 118) <= 0xFFu)
        {
          __src[284] = *(a1 + 118);
        }

        if (*(a1 + 116) != 255)
        {
          __src[285] = *(a1 + 116);
        }

        *&__src[4] |= 4u;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v86 = mach_continuous_time();
          v87 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Vel Estimate is Hor with Ver\n", (*&g_MacClockTicksToMsRelation * v86), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v87, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v88 = mach_continuous_time();
          v89 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bearing,%u,HSpeed,%u,VSpeed,%u,VSpeedDir,%u\n", (*&g_MacClockTicksToMsRelation * v88), "ADP", 68, "Ga10_02SendPositionReport", *&__src[280], *&__src[282], __src[284], __src[285]);
          LbsOsaTrace_WriteLog(0x18u, __str, v89, 5, 1);
        }

        break;
      case 4:
        *&__src[272] = 2;
        *&__src[286] = *(a1 + 112);
        if (*(a1 + 120) <= 0xFFu)
        {
          __src[290] = *(a1 + 120);
        }

        *&__src[4] |= 4u;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v90 = mach_continuous_time();
          v91 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Vel Estimate is Hor with Unc\n", (*&g_MacClockTicksToMsRelation * v90), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v91, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v92 = mach_continuous_time();
          v93 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bearing,%u,HSpeed,%u,UncSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v92), "ADP", 68, "Ga10_02SendPositionReport", *&__src[286], *&__src[288], __src[290]);
          LbsOsaTrace_WriteLog(0x18u, __str, v93, 5, 1);
        }

        break;
      case 8:
        *&__src[272] = 3;
        *&__src[292] = *(a1 + 112);
        if (*(a1 + 118) <= 0xFFu)
        {
          __src[296] = *(a1 + 118);
        }

        if (*(a1 + 116) != 255)
        {
          __src[297] = *(a1 + 116);
        }

        if (*(a1 + 120) <= 0xFFu)
        {
          __src[298] = *(a1 + 120);
        }

        if (*(a1 + 122) <= 0xFFu)
        {
          __src[299] = *(a1 + 122);
        }

        *&__src[4] |= 4u;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v78 = mach_continuous_time();
          v79 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Vel Estimate is Hor with Ver and Uncert\n", (*&g_MacClockTicksToMsRelation * v78), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v79, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v80 = mach_continuous_time();
          v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bearing,%u,HSpeed,%u,VSpeed,%u,VSpeedDir,%u,HUncSpeed,%u,VUncSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v80), "ADP", 68, "Ga10_02SendPositionReport", *&__src[292], *&__src[294], __src[296], __src[297], __src[298], __src[299]);
          LbsOsaTrace_WriteLog(0x18u, __str, v81, 5, 1);
        }

        break;
      default:
        goto LABEL_141;
    }
  }

LABEL_143:
  v98 = *(a1 + 45);
  if (v98)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v99 = mach_continuous_time();
      v100 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS Fix\n", (*&g_MacClockTicksToMsRelation * v99), "ADP", 73, "Ga10_02SendPositionReport");
      LbsOsaTrace_WriteLog(0x18u, __str, v100, 4, 1);
    }

    *&__src[300] |= 1u;
    *&__src[4] |= 1u;
    v98 = *(a1 + 45);
  }

  if ((v98 & 0x80) == 0)
  {
    goto LABEL_170;
  }

  v101 = *(v2 + 128);
  v102 = *(v2 + 136) - v101;
  if (!v102)
  {
    goto LABEL_160;
  }

  v103 = *(a1 + 40);
  v104 = 0x7D6343EB1A1F58D1 * (v102 >> 2);
  if (v104 <= 1)
  {
    v105 = 1;
  }

  else
  {
    v105 = v104;
  }

  if (*(v101 + 52) != v103)
  {
    v106 = 0;
    v108 = (v101 + 248);
    v109 = v105 - 1;
    while (v109 != v106)
    {
      v110 = *v108;
      v108 += 49;
      ++v106;
      if (v110 == v103)
      {
        if (v106 < v104)
        {
          goto LABEL_154;
        }

        goto LABEL_160;
      }
    }

    goto LABEL_160;
  }

  v106 = 0;
LABEL_154:
  if (v106 >= v104)
  {
LABEL_160:
    v107 = 0;
    goto LABEL_161;
  }

  v107 = *(v101 + 196 * v106 + 48);
LABEL_161:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v111 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (v107)
    {
      v112 = 84;
    }

    else
    {
      v112 = 70;
    }

    v113 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HELO enabled,%c\n", v111, "ADP", 73, "Ga10_02SendPositionReport", v112);
    LbsOsaTrace_WriteLog(0x18u, __str, v113, 4, 1);
  }

  if (v107)
  {
    *&__src[300] |= 2u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v114 = mach_continuous_time();
      v115 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HELO Fix\n", (*&g_MacClockTicksToMsRelation * v114), "ADP", 73, "Ga10_02SendPositionReport");
      LbsOsaTrace_WriteLog(0x18u, __str, v115, 4, 1);
    }
  }

  *&__src[4] |= 0x10u;
LABEL_170:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v116 = mach_continuous_time();
    v117 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssMask,%u,RspType,%u\n", (*&g_MacClockTicksToMsRelation * v116), "ADP", 73, "Ga10_02SendPositionReport", *(a1 + 45), *&__src[4]);
    LbsOsaTrace_WriteLog(0x18u, __str, v117, 4, 1);
  }

LABEL_172:
  *&__src[304] = gnss::GnssAdaptDevice::Ga06_18GetGnssSpoofingFlag(v2, *(a1 + 48));
  v118 = *(v2 + 296);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice25Ga10_02SendPositionReportEPK15s_gnsCP_PosnRes_block_invoke_172;
  block[3] = &__block_descriptor_tmp_177;
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v143, v146);
  memcpy(v144, __src, sizeof(v144));
  dispatch_async(v118, block);
  v119 = *(v2 + 128);
  v120 = *(v2 + 136) - v119;
  if (v120)
  {
    v121 = 0x7D6343EB1A1F58D1 * (v120 >> 2);
    if (v121 <= 1)
    {
      v122 = 1;
    }

    else
    {
      v122 = v121;
    }

    if (*(v119 + 52) == *&__src[16])
    {
      v123 = 0;
LABEL_178:
      if (v123 < v121)
      {
        v124 = *(v119 + 196 * v123 + 40);
        v125 = mach_continuous_time();
        v126 = *(v2 + 128) + 196 * v123;
        *(v126 + 184) = (*&g_MacClockTicksToMsRelation * v125) - v124;
        v127 = *(a1 + 40);
        v128 = *(a1 + 56);
        v129 = *(a1 + 88);
        *(v126 + 96) = *(a1 + 72);
        *(v126 + 112) = v129;
        *(v126 + 64) = v127;
        *(v126 + 80) = v128;
        v130 = *(a1 + 104);
        v131 = *(a1 + 120);
        v132 = *(a1 + 136);
        *(v126 + 176) = *(a1 + 152);
        *(v126 + 144) = v131;
        *(v126 + 160) = v132;
        *(v126 + 128) = v130;
      }

      v133 = *(a1 + 60);
      if (v133 == 9)
      {
        v134 = 3;
      }

      else
      {
        v134 = 19;
      }

      if (v133 == 1)
      {
        v135 = 2;
      }

      else
      {
        v135 = v134;
      }

      gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v2, *(a1 + 40), 0, v135);
    }

    else
    {
      v123 = 0;
      v139 = (v119 + 248);
      v140 = v122 - 1;
      while (v140 != v123)
      {
        v141 = *v139;
        v139 += 49;
        ++v123;
        if (v141 == *&__src[16])
        {
          if (v123 < v121)
          {
            goto LABEL_178;
          }

          break;
        }
      }
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v136 = mach_continuous_time();
    v137 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v136), "ADP", 68, "Ga10_02SendPositionReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v137, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v143);
  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v146);
}

void ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_3_203(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v61 = *MEMORY[0x29EDCA608];
  v2 = *(v1 + 40);
  v3 = *(*(*(v1 + 32) + 8) + 24);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga10_03SendAidingReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v59, (v2 + 99));
  if (v60)
  {
    LODWORD(__src[0]) = 0;
    BYTE4(__src[0]) = 0;
    __src[1] = -1;
    LODWORD(__src[2]) = -1;
    WORD2(__src[2]) = 0;
    *(&__src[2] + 6) = -1;
    BYTE2(__src[3]) = -1;
    *(&__src[3] + 3) = 0;
    *(&__src[4] + 1) = 0;
    BYTE1(__src[5]) = -1;
    *(&__src[5] + 2) = 0;
    __src[6] = 0;
    v6 = &__src[14] + 4;
    v7 = &__src[33];
    LOBYTE(__src[7]) = -1;
    v8 = 44;
    BYTE4(__src[7]) = 0;
    do
    {
      v9 = &__src[7] + v8 + 4;
      *v9 = 5;
      *(v9 + 2) = 0;
      v9[6] = -1;
      v10 = v6;
      v11 = 120;
      do
      {
        *(v10 - 4) = -1;
        *v10 = -1;
        v10 += 2;
        v11 -= 8;
      }

      while (v11);
      *(v9 + 32) = -1;
      *(v9 + 66) = -1;
      *(v9 + 134) = -256;
      *(v9 + 138) = 0;
      *(v9 + 18) = 0;
      *(v9 + 38) = -1;
      v12 = v7;
      v13 = 60;
      v9[156] = -1;
      do
      {
        *(v12 - 2) = -1;
        *v12 = -1;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      *(v9 + 218) = -1;
      v8 += 224;
      v6 += 224;
      v7 += 28;
    }

    while (v8 != 1836);
    LODWORD(__src[1]) = 0;
    if (!v3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Aid Rep\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "Ga10_03SendAidingReport", 513);
        LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
      }

      goto LABEL_35;
    }

    v14 = *v3;
    LODWORD(__src[2]) = *v3;
    v15 = v2[16];
    v16 = v2[17] - v15;
    if (v16)
    {
      v17 = 0x7D6343EB1A1F58D1 * (v16 >> 2);
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      if (*(v15 + 52) == v14)
      {
        v19 = 0;
LABEL_17:
        if (v19 < v17)
        {
          v20 = v15 + 196 * v19;
          v21 = *(v20 + 44);
          *(v20 + 60) = 1;
LABEL_30:
          HIDWORD(__src[1]) = v21;
          v31 = *(v3 + 1);
          if (v31)
          {
            LODWORD(__src[0]) = -8;
            if (*v31 == 1)
            {
              v32 = 64;
              WORD2(__src[2]) = 64;
              BYTE4(__src[0]) = 1;
            }

            else
            {
              v32 = 0;
            }

            if (v31[1] == 1)
            {
              v32 |= 0x20u;
              WORD2(__src[2]) = v32;
              BYTE4(__src[0]) = 1;
            }

            if (v31[2] == 1)
            {
              v32 |= 4u;
              WORD2(__src[2]) = v32;
              BYTE4(__src[0]) = 1;
            }

            if (v31[3] == 1)
            {
              v35 = *(v3 + 2);
              if (v35)
              {
                if (*(v35 + 7) == 1)
                {
                  v32 |= 8u;
                  WORD2(__src[2]) = v32;
                  if (v21 == 2)
                  {
                    v36 = *(v35 + 16);
                  }

                  else
                  {
                    v36 = *(v35 + 16) & 0x3FF;
                  }

                  HIWORD(__src[2]) = v36;
                  LOBYTE(__src[3]) = *(v35 + 18);
                  if (*(v35 + 20))
                  {
                    v37 = (v35 + 21);
                    v38 = &__src[3] + 2;
                    v39 = (v35 + 86);
                    v40 = *(v35 + 20) - 1;
                    if (v40 >= 0xE)
                    {
                      v40 = 14;
                    }

                    v41 = v40 + 1;
                    do
                    {
                      v42 = *v37++;
                      *v38 = v42;
                      v43 = *v39;
                      v39 += 2;
                      v38[15] = v43;
                      ++v38;
                      --v41;
                    }

                    while (v41);
                    v44 = v40 + 1;
                  }

                  else
                  {
                    v44 = 0;
                  }

                  BYTE1(__src[3]) = v44;
                  LOBYTE(__src[7]) = *(v35 + 19);
                  BYTE4(__src[0]) = 1;
                }

                if (*(v35 + 6) == 1)
                {
                  v32 |= 1u;
                  WORD2(__src[2]) = v32;
                  BYTE4(__src[0]) = 1;
                }

                if (*(v35 + 4) == 1)
                {
                  v32 |= 2u;
                  WORD2(__src[2]) = v32;
                  BYTE4(__src[0]) = 1;
                }

                if (*(v35 + 8) == 1)
                {
                  v32 |= 0x80u;
                  WORD2(__src[2]) = v32;
                  BYTE4(__src[0]) = 1;
                }
              }
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v45 = mach_continuous_time();
              v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AidReqMask,%u\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 73, "Ga10_03SendAidingReport", v32);
              LbsOsaTrace_WriteLog(0x18u, __str, v46, 4, 1);
            }

            goto LABEL_63;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v33 = mach_continuous_time();
            v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Common Aid Rep\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 69, "Ga10_03SendAidingReport", 515);
            LbsOsaTrace_WriteLog(0x18u, __str, v34, 0, 1);
          }

LABEL_35:
          LODWORD(__src[0]) = -2;
LABEL_63:
          v47 = v2[37];
          *__str = MEMORY[0x29EDCA5F8];
          v53 = 1174405120;
          v54 = ___ZN4gnss15GnssAdaptDevice23Ga10_03SendAidingReportEP14s_gnsCP_AidReq_block_invoke;
          v55 = &__block_descriptor_tmp_184;
          std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v56, v59);
          memcpy(v57, __src, sizeof(v57));
          dispatch_async(v47, __str);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(v51, 0x410uLL);
            v48 = mach_continuous_time();
            v49 = snprintf(v51, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 68, "Ga10_03SendAidingReport");
            LbsOsaTrace_WriteLog(0x18u, v51, v49, 5, 1);
          }

          std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v56);
          goto LABEL_66;
        }
      }

      else
      {
        v19 = 0;
        v28 = (v15 + 248);
        v29 = v18 - 1;
        while (v29 != v19)
        {
          v30 = *v28;
          v28 += 49;
          ++v19;
          if (v30 == v14)
          {
            if (v19 < v17)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }
    }

    v21 = -1;
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Aid Req\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "Ga10_03SendAidingReport", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "Ga10_03SendAidingReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v25, 5, 1);
  }

LABEL_66:
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v59);
  v50 = *(*(*(v1 + 32) + 8) + 24);
  if (v50[2])
  {
    free(v50[2]);
    *(*(*(*(v1 + 32) + 8) + 24) + 16) = 0;
    v50 = *(*(*(v1 + 32) + 8) + 24);
  }

  if (!v50[1] || (free(v50[1]), *(*(*(*(v1 + 32) + 8) + 24) + 8) = 0, (v50 = *(*(*(v1 + 32) + 8) + 24)) != 0))
  {
    free(v50);
    *(*(*(v1 + 32) + 8) + 24) = 0;
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_4(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Api,%u,status,%u,id,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga10_00HandleGnsCpStatusResponse_block_invoke_4", *(a1 + 44), *(a1 + 48), *(a1 + 40));
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 4, 1);
  }

  if (*(a1 + 44) > 1u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS CP API\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse_block_invoke_4", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }

    v5 = 7;
  }

  else
  {
    v5 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v2, *(a1 + 48));
  }

  v29 = 0;
  v8 = v2 + 216;
  v9 = *(v2 + 216);
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = *(a1 + 40);
  v11 = v2 + 216;
  v12 = *(v2 + 216);
  do
  {
    v13 = *(v12 + 32);
    v14 = v13 >= v10;
    v15 = v13 < v10;
    if (v14)
    {
      v11 = v12;
    }

    v12 = *(v12 + 8 * v15);
  }

  while (v12);
  if (v11 != v8 && v10 >= *(v11 + 32))
  {
    v18 = v2 + 216;
    do
    {
      v19 = *(v9 + 32);
      v14 = v19 >= v10;
      v20 = v19 < v10;
      if (v14)
      {
        v18 = v9;
      }

      v9 = *(v9 + 8 * v20);
    }

    while (v9);
    if (v18 == v8 || v10 < *(v18 + 32))
    {
      v18 = v2 + 216;
    }

    std::function<void ()(gnss::Result)>::operator=(v28, v18 + 40);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer((v2 + 208), v11);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11 + 40);
    operator delete(v11);
  }

  else
  {
LABEL_41:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx sessionID,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse_block_invoke_4", 770, *(a1 + 40));
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }
  }

  if (v29)
  {
    v21 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_5;
    block[3] = &__block_descriptor_tmp_208;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, v28);
    v27[8] = v5;
    dispatch_async(v21, block);
    v22 = *(a1 + 44);
    if (v22)
    {
      if (v22 != 1 || v5 != 1)
      {
        goto LABEL_37;
      }
    }

    else if (v5 != 2 && v5 != 8)
    {
      goto LABEL_37;
    }

    gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v2, *(a1 + 40), 0, 3);
LABEL_37:
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LutHdl Resp\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse_block_invoke", 770);
    LbsOsaTrace_WriteLog(0x18u, __str, v24, 0, 1);
  }

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
}

void sub_299696814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

double gnss::GnssAdaptDevice::Ga10_05CPECallAsyncEventCB(int a1, unsigned int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga10_05CPECallAsyncEventCB");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(IsLoggingAllowed);
  if (DeviceInstance)
  {
    v8 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Api,%u,status,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "Ga10_06HandleCPEcallAsyncEventCB", a1, a2);
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    }

    v11 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v8, a2);
    if (a1 == 1)
    {
      if (a2 == 4)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11;
      }

      v13 = *(v8 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v21 = 0x40000000;
      v22 = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_221;
      v23 = &__block_descriptor_tmp_231;
      v24 = v8;
      v25 = v14;
      goto LABEL_13;
    }

    if (!a1)
    {
      v12 = *(v8 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v21 = 0x40000000;
      v22 = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke;
      v23 = &__block_descriptor_tmp_220;
      v24 = v8;
      v25 = v11;
      v13 = v12;
LABEL_13:
      dispatch_async(v13, __str);
      goto LABEL_14;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS Ecall API,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga10_06HandleCPEcallAsyncEventCB", 515, a1);
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
    }
  }

LABEL_14:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "Ga10_05CPECallAsyncEventCB");
    LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke(uint64_t a1)
{
  v19[4] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, v2 + 600);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, v2 + 632);
  if (v18)
  {
    v3 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2;
    block[3] = &__block_descriptor_tmp_213;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, v17);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, v19);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 600);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartRespOnAccepted\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga10_06HandleCPEcallAsyncEventCB_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  if (v19[3])
  {
    v6 = *(v2 + 296);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_215;
    v10[3] = &__block_descriptor_tmp_218;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, v17);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, v19);
    v12[8] = *(a1 + 40);
    dispatch_async(v6, v10);
    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 632);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartRespOnCompleted\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga10_06HandleCPEcallAsyncEventCB_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
}

void sub_299696EEC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2 - 136);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2(uint64_t a1)
{
  v1 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v1, 1);
}

uint64_t __destroy_helper_block_e8_32c23_ZTSN4gnss10s_StatusCBE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 64);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 32);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_215(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = a1 + 64;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_221(uint64_t a1)
{
  v19[4] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, v2 + 664);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, v2 + 696);
  if (v18)
  {
    v3 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_3;
    block[3] = &__block_descriptor_tmp_224;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, v17);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, v19);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 664);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopRespOnAccepted\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga10_06HandleCPEcallAsyncEventCB_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  if (v19[3])
  {
    v6 = *(v2 + 296);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_226;
    v10[3] = &__block_descriptor_tmp_229;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, v17);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, v19);
    v12[8] = *(a1 + 40);
    dispatch_async(v6, v10);
    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 696);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopRespOnCompleted\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga10_06HandleCPEcallAsyncEventCB_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
}

void sub_2996973C8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2 - 136);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_3(uint64_t a1)
{
  v1 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v1, 1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_226(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = a1 + 64;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

double ___ZN4gnss15GnssAdaptDevice31Ga10_05SendSessionSummaryReportEjb18e_gnsPPDU_SessCode_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = (*(*v1 + 48))(*(a1 + 56), a1 + 64);
  if (v2 == 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SummaryRep sent to FW\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga10_05SendSessionSummaryReport_block_invoke");
    v6 = 4;
  }

  else
  {
    v7 = v2;
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SummaryRep,%u\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga10_05SendSessionSummaryReport_block_invoke", 257, v7);
    v6 = 0;
  }

  LbsOsaTrace_WriteLog(0x18u, __str, v5, v6, 1);
  return result;
}